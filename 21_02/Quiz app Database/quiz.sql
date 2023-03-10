
create table users(
    id int primary key auto_increment,
    name varchar(255) not null,
    email varchar(255) not null,
    password varchar(255) not null,
    login_time datetime,
    logout_time datetime
);

create table quiz(
    id int primary key auto_increment,
    description varchar(255) not null,
    category varchar(255) not null,
    foreign key (category) references category(category)
)

create table category(
    id int primary key auto_increment,
    category varchar(255) not null
)

create table user_score(
    id int primary key auto_increment,
    user_id int not null,
    quiz_id int not null,
    score int not null,
    foreign key (user_id) references users(id),
    foreign key (quiz_id) references quiz(id)
)

create table questions_answer(
    id int primary key auto_increment,
    question varchar(255) not null,
    answer varchar(255) not null,
    quiz_id int not null,
    foreign key (quiz_id) references quiz(id)

)

create table user_answer(
    id int primary key auto_increment,
    user_id int not null,
    question_id int not null,
    answer varchar(255) not null,
    foreign key (user_id) references users(id),
    foreign key (question_id) references questions_answer(id)
)

create table question_choice(
    id int primary key auto_increment,
    question_id int not null,
    choice varchar(255) not null,
    foreign key (question_id) references questions_answer(id)
)