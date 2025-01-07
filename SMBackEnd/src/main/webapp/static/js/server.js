// sm 주가 정보 가져오기 https://www.google.com/finance/quote/041510:KOSDAQ?sa=X&ved=2ahUKEwijkvbwluiJAxV3s1YBHfVMH40Q3ecFegQIPxAX

const targetUrl = "https://www.google.com/finance/quote/041510:KOSDAQ?sa=X&ved=2ahUKEwijkvbwluiJAxV3s1YBHfVMH40Q3ecFegQIPxAX";
const axios = require('axios');
const cheerio = require('cheerio');
const puppeteer = require('puppeteer');
const express = require('express');
const app = express();
const cors = require('cors');
const port = 3000;

// 날짜
  function formatDate(date) {
    const day = String(date.getDate()).padStart(2, '0');
    const month = String(date.getMonth() + 1).padStart(2, '0'); 
    const year = String(date.getFullYear()).slice(2); 
    const hours = String(date.getHours()).padStart(2, '0');
    const minutes = String(date.getMinutes()).padStart(2, '0');
    
    return `${year}.${month}.${day} ${hours}:${minutes}`;
  }

app.use(cors());
app.use(express.static('public'));

const interval = 600000;

async function getStockData(){
  try{
    const response = await axios.get(targetUrl);
    const $ = cheerio.load(response.data);
    const price = $('.fxKbKc').text();
    console.log('priceee : ' ,price);

    const stringPrice = price.toString();
    const replacePrice = stringPrice.replace(/(\.0+)$/, '');
    console.log('replace : ',replacePrice);

    const finalPrice = replacePrice.replace(/[^\d,]/g, '');
    console.log('finalPrice : ',finalPrice);

    const browser = await puppeteer.launch();
    const page = await browser.newPage();
    await page.goto(targetUrl);

    const today = await page.$eval('span.P2Luy.Ebnabc.ZYVHBb', el => el.textContent);
    const replaceToday = today.replace(/[^\d,+-.]/g, '');
    const finalToday = replaceToday.replace(/(\.00)$/, '');
    console.log('today : ', today);
    console.log('replaceToday : ', replaceToday);
    console.log('fianlToday : ',finalToday);

    await browser.close();
    //날짜
    const currentTime = formatDate(new Date());
    console.log('currentTime:', currentTime);

    return {finalToday, finalPrice, currentTime};

  }catch(error){
    console.log('Error',error);
    return {error : 'cant get stock data'};
  }
}
//setInterval(async () => {
//  const stockData = await getStockData();
//  console.log('stock data', stockData);
//}, interval);

// 주가
 axios.get(targetUrl)
   .then(Response => {
     const $ = cheerio.load(Response.data);
     const price = $('.fxKbKc').text();
     console.log('price : ', price);
   }).catch(error => {
     console.log('error', error);
   })

app.get('/get-price', async(req, res) => {
  try{
    const stockData = await getStockData();
  console.log('stock data', stockData);
    res.json(stockData);
  }catch(error){
    console.log('Error');
    res.status(500).json({error : 'not found data'});
  }
});


app.listen(port, () => {
  console.log('server running');
});