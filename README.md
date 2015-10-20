<h2>Kaminari For Scrubs</h2>

Kaminari is an awesome gem that lets you modify the display of your page. More specifically it let's you print out a specific amount of objects. 

<h2>Install</h2>
Put this in your Gemfile:
<pre>gem 'kaminari'</pre>
Don't forget to bundle in the terminal afterwards!

<h2>Steps</h2>
First go to the controller that you are currently using to display information. Instead of printing all users, let's try ordering the users using <pre> User.order("however you want to order") </pre> So it'll look something like this:

<pre> @users = User.order("first_name").page(params[:page])</pre>

Next go to your index view or whatever page you are trying to display the information on. In the view type: 
<pre> <%= paginate @users %> </pre>

There are three scopes you are able to use:
1.The page scope
<pre>User.page(7)</pre>
This helps you grab the 6th page of users

2.The per scope
<pre>User.page(7).per(50)</pre>
Grabs the 6th page of users while populating 50 users on that page. Without <pre>per</pre> it defaults to 25.

3.The padding scope
Sometimes you're going to need to pad a number of records that is not a multiple of the page size.
<pre>User.page(7).per(50).padding(3)</pre>

Notes: 
per is a method defined on the page scope, while
padding is a method defined on the per scope.

