CREATE TABLE `post` (
	`post_id` INT unsigned NOT NULL AUTO_INCREMENT,
	`author_id` INT unsigned,
	`headline` VARCHAR(64) NOT NULL,
	`content` TEXT NOT NULL,
	`created_at` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
	`updated_at` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
	PRIMARY KEY (`post_id`)
);

CREATE TABLE `author` (
	`author_id` INT unsigned NOT NULL AUTO_INCREMENT,
	`name` TEXT NOT NULL,
	`created_at` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
	`updated_at` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
	PRIMARY KEY (`author_id`)
);

insert into author (name) values ('Joe Schmoe');
insert into author (name) values ('Jane Doe');
insert into author (name) values ('Foo Barrington');


insert into post (author_id, headline, content) values (1, 'Big News', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. [click here](https://google.com) Nulla in facilisis nulla. Cras eleifend eleifend semper. Ut ultrices at risus vitae malesuada. Aliquam augue lorem, faucibus id consectetur tristique, accumsan vitae urna. Interdum et malesuada fames ac ante ipsum primis in faucibus. Curabitur rhoncus, leo vel sollicitudin hendrerit, mi ligula molestie turpis, at pulvinar quam erat sed urna. Suspendisse dictum eros pretium lacinia vehicula."
');
insert into post (author_id, headline, content) values (2, 'Announcement', 'Donec vulputate eget sapien ut mollis. Aliquam ex nisi, fringilla vitae dolor in, venenatis pellentesque diam. Integer ac pharetra lorem. Vivamus cursus id lacus eget auctor. Nunc sit amet urna scelerisque, pretium ligula eu, vulputate dolor. Quisque interdum ligula sit amet sem venenatis rhoncus. Morbi non turpis euismod, maximus dui a, suscipit nisi. Cras tincidunt egestas mi sit amet fringilla. Vivamus vitae ex eu lectus ultrices iaculis nec eget lacus. Aliquam nec dui vel magna lacinia fermentum. Nulla ut viverra lectus. Ut nec turpis sit amet sapien pulvinar fermentum ut nec odio. Proin felis arcu, scelerisque quis pulvinar vitae, finibus maximus neque. Quisque facilisis rhoncus quam, ac semper nisi gravida non."
');
insert into post (author_id, headline, content) values (3, 'Security Warning', 'Phasellus blandit, libero eget varius viverra, **neque tortor dapibus leo**, et hendrerit sem nisi at lectus. Quisque nisi diam, interdum vitae cursus quis, finibus at lectus. Donec non interdum diam. Donec ac augue eu mi vestibulum varius vitae vel elit. In hac habitasse platea dictumst. Sed odio sem, ornare in eros vitae, ultrices ullamcorper massa. Quisque euismod ante ac purus rhoncus malesuada. Nulla interdum mattis aliquam."
');
insert into post (author_id, headline, content) values (1, 'Event Dates', 'Nulla vel mattis justo. Praesent lacinia ultricies felis at egestas. [Check us out on social media!](https://facebook.com) Aenean venenatis purus sed leo semper, non gravida nibh auctor. Sed blandit semper est ut imperdiet. Curabitur blandit nisi quis enim aliquet, vel tempor lectus volutpat. Aenean eleifend, lectus eget volutpat faucibus, velit nisl sagittis tellus, ac maximus nisi nulla quis est. Suspendisse sed fringilla lorem. Sed ex mauris, finibus ac odio non, tempor pellentesque nisi. Sed id elit eu metus porttitor tempus vel quis leo. Cras varius arcu congue faucibus dapibus. Ut non malesuada arcu. Etiam interdum rhoncus ex, malesuada congue velit placerat sed."
');
insert into post (author_id, headline, content) values (2, 'Big News', 'Sed eu iaculis felis. Quisque molestie quam nec gravida ultricies. Nullam non tortor hendrerit lectus volutpat ultrices ac quis purus. Maecenas molestie facilisis mi luctus condimentum. Nunc et erat mauris. Fusce id nibh vel purus semper elementum. Nunc facilisis quis tellus tristique scelerisque. Suspendisse quis venenatis dui, nec dapibus dui. Suspendisse felis purus, rutrum id commodo non, finibus non augue. In hac habitasse platea dictumst. Nam vehicula, lectus non ultrices auctor, nisl erat tincidunt felis, et posuere felis tellus at odio. Mauris leo lectus, cursus vel metus a, aliquam condimentum mauris. In tellus sem, ultrices sed finibus a, laoreet id purus."
');
insert into post (author_id, headline, content) values (3, 'Announcement', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut vitae nibh congue, suscipit neque interdum, sagittis tellus. Nulla sed est odio. Pellentesque ligula felis, ultricies at felis eget, egestas ullamcorper lacus. Phasellus molestie sed est a ornare. Nunc et ligula at sapien feugiat pharetra non ut elit. Aliquam erat volutpat. Cras eu condimentum risus. Morbi feugiat elementum iaculis. Nullam nunc ante, congue non interdum in, ullamcorper id diam.
');
insert into post (author_id, headline, content) values (1, 'Security Warning', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut vitae nibh congue, suscipit neque interdum, sagittis tellus. Nulla sed est odio. Pellentesque ligula felis, ultricies at felis eget, egestas ullamcorper lacus. Phasellus molestie sed est a ornare. Nunc et ligula at sapien feugiat pharetra non ut elit. Aliquam erat volutpat. Cras eu condimentum risus. Morbi feugiat elementum iaculis. Nullam nunc ante, congue non interdum in, ullamcorper id diam.');
insert into post (author_id, headline, content) values (2, 'Event Dates', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut vitae nibh congue, suscipit neque interdum, sagittis tellus. Nulla sed est odio. Pellentesque ligula felis, ultricies at felis eget, egestas ullamcorper lacus. Phasellus molestie sed est a ornare. Nunc et ligula at sapien feugiat pharetra non ut elit. Aliquam erat volutpat. Cras eu condimentum risus. Morbi feugiat elementum iaculis. Nullam nunc ante, congue non interdum in, ullamcorper id diam.');
insert into post (author_id, headline, content) values (3, 'Big News', 'Nullam ac consectetur ex. Maecenas sollicitudin tempus enim, eu venenatis tellus elementum quis. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur placerat, lectus vitae tempus tristique, nunc dolor laoreet est, at faucibus orci erat sed arcu. Praesent condimentum enim non metus molestie, sed molestie risus porttitor. Proin vel augue erat. Vestibulum orci augue, gravida vitae nulla non, volutpat volutpat mauris. Donec egestas turpis tellus, nec malesuada metus sagittis vitae. Cras bibendum iaculis pulvinar.');
insert into post (author_id, headline, content) values (1, 'Announcement', 'Sed ultricies convallis cursus. Vestibulum vitae velit eget enim efficitur commodo sit amet vitae lectus. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec et vestibulum quam. Duis sodales augue dolor, non fringilla velit tristique posuere. Maecenas volutpat ullamcorper sapien, at iaculis felis commodo vel. Cras ac leo lorem. Phasellus sit amet orci laoreet, viverra diam ut, pulvinar urna. Ut tempus enim id viverra hendrerit. Duis ornare nunc id pharetra malesuada. Nam odio ligula, rutrum non volutpat at, consectetur ut diam. Quisque vitae rutrum eros. Sed eget dui sed arcu finibus fringilla iaculis sit amet est.');
insert into post (author_id, headline, content) values (2, 'Security Warning', 'Maecenas sed sapien condimentum, pellentesque est et, mollis mauris. Nam hendrerit porta pulvinar. Nunc luctus neque ac gravida vulputate. Pellentesque cursus, felis at iaculis pretium, dui nisi efficitur metus, eu placerat purus lorem quis nulla. Duis justo dolor, auctor ut aliquam at, ornare sed turpis. Morbi mattis posuere lorem, non aliquam nisi imperdiet vitae. Nunc nec posuere est. Integer porta dapibus semper. Quisque ut augue id justo accumsan semper quis vel dui. Praesent nisi ligula, hendrerit et pellentesque et, mollis ut orci. Fusce tortor nisl, sagittis in ante a, varius dignissim velit. Sed sed rhoncus sem, id pharetra tortor. In dolor sapien, facilisis et aliquet id, euismod iaculis velit. Nam in placerat lacus. Mauris consectetur ipsum sed libero sodales blandit.');
insert into post (author_id, headline, content) values (3, 'Event Dates', 'Mauris consectetur quis odio sit amet pharetra. Duis vel nibh eu nunc efficitur aliquam. Nam viverra nibh non velit facilisis aliquam. Suspendisse potenti. Morbi fermentum semper scelerisque. Mauris convallis quam viverra augue congue maximus. Aenean euismod nibh eu dictum varius. Etiam nec mauris vitae felis blandit varius a scelerisque mauris. Curabitur eu felis tristique, posuere libero at, elementum nisl. Nam vitae sollicitudin magna, id dapibus leo.');




