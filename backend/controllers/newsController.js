const News = require('../models/newsModel');

// Controller function: Retrieve the ten most recent urgent news articles
exports.getRecentNews = async (req, res) => {
  try {
    const newsArticles = await News.getRecentNews();
    res.json(newsArticles);
  } catch (error) {
    console.error('Error retrieving recent news articles: ', error);
    res.status(500).json({ error: 'Error retrieving news articles' });
  }
};