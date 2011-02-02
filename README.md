# Imstat

Ruby lib for checking user status in the instant messengers

### Getting it

	gem install imstat

### Using it
	
#### Getting Skype status

If you want to use Skype status you must be sure about support this feature in the skype profile (go to Tools->Options->Privacy->Allow my online status to be shown on the web)

##### Output

- "Online"
- "Offline"

##### Example

	Imstat::get_user_status(:messenger => :skype, :user => "echo") # => "Offline"

#### Getting ICQ status
 
##### Output

- "Online"
- "Offline"
- "N/A"
- "It's not a valid icq uin"

##### Example

	Imstat::get_user_status(:messenger => :icq, :user => "123456") # => "N/A"

#### Getting Yahoo status
 
##### Output

- "Online"
- "Offline"

##### Example

	Imstat::get_user_status(:messenger => :yahoo, :user => "cdfdsdfgsd") # => "Offline"

