// sm 주가 정보 가져오기 https://www.google.com/finance/quote/041510:KOSDAQ?sa=X&ved=2ahUKEwijkvbwluiJAxV3s1YBHfVMH40Q3ecFegQIPxAX

const proxyUrl = "https://cors-anywhere.herokuapp.com/";
const targetUrl = "https://www.google.com/finance/quote/041510:KOSDAQ?sa=X&ved=2ahUKEwijkvbwluiJAxV3s1YBHfVMH40Q3ecFegQIPxAX";
const axios = require('axios');
const cheerio = require('cheerio');
const puppeteer = require('puppeteer');
const express = require('express');
const app = express();
const cors = require('cors');
const port = 3000;

app.use(cors());
app.use(express.static('public'));

//어제 대비 오른 투데이
(async () => {
  const browser = await puppeteer.launch();
  const page = await browser.newPage();
  await page.goto(targetUrl);
  const today = await page.$eval('span.P2Luy.Ez2Ioe.ZYVHBb', el => el.textContent);
  console.log('today : ', today);
  await browser.close();
})();


// 주가
// axios.get(targetUrl)
//   .then(Response => {
//     const $ = cheerio.load(Response.data);
//     const price = $('.fxKbKc').text();
//     console.log('price : ', price);
//   }).catch(error => {
//     console.log('error', error);
//   })



app.get('/get-price', async(req, res) => {
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

    res.json({finalPrice});
  }catch(error){
    console.log('Error');
    res.status(500).json({error : 'not found data'});
  }
});

app.listen(port, () => {
  console.log('server running');
})