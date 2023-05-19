-- Create the News table
CREATE TABLE News (
  id INT AUTO_INCREMENT PRIMARY KEY,
  title VARCHAR(255) NOT NULL,
  content TEXT NOT NULL,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Insert twenty articles
INSERT INTO News (title, content) VALUES
  ('Artificial Intelligence Advancements', 'Artificial Intellegence is expanding, As there is a new science of Machine Teaching.'),
  ('Climate Change and Its Impact', 'Where is Climate Change going? The effects of Global Warming is destroying the planet.'),
  ('Space Exploration and Discoveries', 'The newly discovered galaxy is around 5 light years away.'),
  ('Blockchain Technology Revolution', 'Transforming industries with decentralized trust: the revolution of blockchain technology.'),
  ('Advancements in Medical Research', 'Breakthroughs in medical research driving innovation and improving healthcare outcomes for a healthier future'),
  ('Renewable Energy Sources', 'Harnessing natures power: Renewable energy sources revolutionizing sustainability and paving the way towards a cleaner and greener future.'),
  ('Cybersecurity Challenges and Solutions', 'Addressing digital threats: Cybersecurity challenges met with innovative solutions for safeguarding data and protecting digital infrastructure.'),
  ('The Future of Autonomous Vehicles', 'Driving towards a self-driving future: Autonomous vehicles revolutionizing transportation with enhanced safety, efficiency, and mobility.'),
  ('Impact of Social Media on Society', 'Social medias societal impact: Transforming communication, connectivity, and information sharing while presenting challenges and opportunities for individuals and communities.'),
  ('Exploring Virtual Reality Experiences', 'Immersive journeys in virtual realms: Discovering captivating experiences and limitless possibilities through the world of virtual reality.'),
  ('Art and Innovation in the Digital Age', 'Unleashing creativity in the digital era: Art and innovation merge, transforming traditional boundaries and inspiring groundbreaking expressions.'),
  ('Advancements in Genetic Engineering', 'Unlocking the potential of genetic engineering: Advancements driving breakthroughs in medicine, agriculture, and biotechnology for a brighter future.'),
  ('The Rise of E-commerce and Online Shopping', 'Transforming retail: The exponential rise of e-commerce and online shopping revolutionizing how we shop, connect, and experience commerce.'),
  ('Revolutionizing Education with Technology', 'Educational transformation through technology: Revolutionizing learning methods and expanding access to knowledge for a more inclusive and dynamic education.'),
  ('Big Data and Data Analytics', 'Unlocking insights at scale: Big data and data analytics revolutionize decision-making, innovation, and optimization across industries and sectors.');
