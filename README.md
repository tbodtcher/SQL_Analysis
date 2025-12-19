# SQL_Analysis
This is my final SQL project exploring a public dataset on a bike store's data. 

This database caught my interest because of the amount of data the the store had on their customers and sales. I thought it would be a great real world example of how I can use SQL to answer questions about how the business is doing, and how it could be better.

To start out, I took a look at the data in general, to see how they had things formatted, and what kind of information I was working with. 

After looking at some of the data, the first thing I noticed is that there is an employee ID associated with each sale (most likely the employee that helped the customer during the buying process). However, I noticed that there was no information on the order line that associated the employee ID to the actual employee. So for query #1 (if following along in the sql file), I wanted to find out which employee is associated with the most number of completed sales. 

After creating and running my first query, I found out that Marcelene Boyer was associated with the most sales, with 553 sales. That is a lot of sales! Luckily, we can see in the "Active" column that she is still with the company, so hopefully we will see those numbers continue to increase! What was interesting is that the employee associated with the second highest number of sales came from the same store as Marcelene (Store 2). With that knowledge, lets see if that store does better in general, or if they just have two star employees. 

Query #2 will be figuring out if store 2 has the most sales in the company. 

When creating my query, I noticed that the order details had the quantity purchased, the list price, and the discount given, but no final total for the order. So in my query I created a formula to apply the discount to the list price, multiply by the quantity purchased, and total the sales by store. After doing this, I found out that my theory was correct, and store 2 has signficantly more sales than any other stores. 

Moving on, I want to look at the inventory that this company carries. For query #3, I will focus on trying to find out what are the most popular brands and products are that the stores carry. 

For this query, I ended up breaking it up into two separate queries, one to find that brand that had the most products in stores, and the second one to find out which category of bicyles were the most popular. The results differed from each other, which was surprising to me. The brand with the most products in store was "Trek", with 135 different products, however, the category of bikes with the most products was for "Cruisers" which are made by the brand "Electra". This shows to me that Trek has a wide variety of bikes, but are high enough quality to have the most number of products offered. Electra must make very high quality, popular crusier bikes for the stores to carry that many in their stores. 

Now looking into Trek, I am curious to know some of their pricing and how it breaks down by category. 

Query #4 will focus on the pricing for Trek bikes. 

My query shows us that the minimum price for a bike is $149.99, the maximum price is $11,999.99, and the average price for the most popular bike is $2500.06. The difference in pricing is a lot more than I thought! However, this reaffirms what I said earlier - Trek offers a wide variety of bikes at different price ranges and for different activities. 

Query #5- For the last query of this project, I wanted to send out a customer appreciation gift to the top 5 customers from this dataset. I wrote a query to total up everyone's order totals and rank then from highest spender to lowest spender, and had the query show me the top 5 customers. These customers all have spent over $32,000 , so they all deserve a thank you gift! 

In summary, this dataset offered valuable insights into customer information, sales records, and inventory analysis. I was able to find out about the types of products that this company offers, and some of the financial aspects of this business. I feel confident that the information that I found in this dataset would be very valuable for this company to make data driven decisions to guide their future. 
