select chats.chat_id, chats.topic, user1.fullname as 'chatter1', user2.fullname as 'chatter2', messages.created_at, messages.text 
from chats
left join users user1 on chats.user1_id = user1.user_id
left join users user2 on chats.user2_id = user2.user_id
left join messages on chats.chat_id = messages.chat_id

order by messages.created_at desc;