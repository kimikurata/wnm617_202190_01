// https://www.json-generator.com/
// directions: 
// 1.- open https://www.json-generator.com/ and paste one of these templates creators: users, flowers or locations
// 2.- click on generate and copy the json 
// 3.- open https://konbert.com/convert paste the raw jason and click on upload. this is to convert json to sql 
// 4.- verify the table looks good, click on export go to sql tap and choose MySQL name the table as you named it on the actual database on phpMyAdmin
// 5.- hit export file and wait until it's ready (it takes a little)
// 6.- download the file 
// 7.- open the file and coppy evrithing from INSERT INTO track_flowers VALUES, all the way down
// 8.- go to godady-> my products -> manage web hostig -> oepn cPannel -> phpMyAdmin -> oepn the correct table or create one incase it's not there yet.
// 9.- go to the SQL tab
// 10.- Delete everything that is on the big text box area and Paste what you copy from the downloaded file.
// 11.- click on "GO" to insert the data in the table. don't forget to take a look to the data to make sure it's done correctly.



// USER V1

// [
//   '{{repeat(10)}}',
//   {
//     id:'{{index(1)}}',
//     name: '{{firstName()}} {{surname()}}', 
//     username: function(){
//     return 'user' + this.id;
//     },
//     email: function(){
//       return this.username + '@gmail.com';
//     },
//     password: 'md5(pass)',
//     img: function(tags){
//       return 'https://via.placeholder.com/400/'+tags.integer(700,999)+'/fff/?text=' + this.username;
//     },
//     date_create: '{{date(new Date(2020, 0, 1), new Date(), "YYYY-MM-dd hh:mm:ss")}}'
    
//   }
// ]


// USER V2 it pics random color between the following: "C3B7AD", "45567A", "F295A0", "85A5DD" for img

[
  '{{repeat(10)}}',
  {
    id:'{{index(1)}}',
    name: '{{firstName()}} {{surname()}}', 
    username: function(){
    return 'user' + this.id;
    },
    email: function(){
      return this.username + '@gmail.com';
    },
    password: 'md5(pass)',
    img: function(tags){
      return 'https://via.placeholder.com/400/'+tags.random("C3B7AD", "45567A", "F295A0", "85A5DD")+'/fff/?text=' + this.username;
    },
    date_create: '{{date(new Date(2020, 0, 1), new Date(), "YYYY-MM-dd hh:mm:ss")}}'
    
  }
]


// FLOWERS V1

// [
//   '{{repeat(50)}}',
//   {
//     id:'{{index(1)}}',
//     user_id: '{{integer(1, 10)}}',
    
//     name: '{{company()}}', 
    
//     type: '{{random("Tulip", "Rose", "Lily")}}',
    
//     color: '{{random("pink", "red", "white", "purple")}}',
    
//     img: function(tags){
//       return 'https://via.placeholder.com/400/'+tags.integer(700,999)+'/fff/?text=' + this.name;
//     },
//     date_create: '{{date(new Date(2020, 0, 1), new Date(), "YYYY-MM-dd hh:mm:ss")}}'
    
//   }
// ]




// FLOWERS v2  it pics random color between the following: "FFD391", "F09B9B", "E69B8C", "AEBCB9" for img

[
  '{{repeat(50)}}',
  {
    id:'{{index(1)}}',
    user_id: '{{integer(1, 10)}}',
    
    name: '{{company()}}', 
    
    type: '{{random("Tulip", "Rose", "Lily")}}',
    
    color: '{{random("pink", "red", "white", "purple")}}',
    
    img: function(tags){
      return 'https://via.placeholder.com/400/'+tags.random("FFD391", "F09B9B", "E69B8C", "AEBCB9")+'/fff/?text=' + this.name;
    },
    date_create: '{{date(new Date(2020, 0, 1), new Date(), "YYYY-MM-dd hh:mm:ss")}}'
    
  }
]



// // LOCATIONS V1

// [
//   '{{repeat(250)}}',
//   {
//     id:'{{index(1)}}',
//     flower_id: '{{integer(1, 10)}}',
//     lat: '{{floating(37.429667, 37.429667)}}',
//     lng: '{{floating(-122.168277, -122.168277)}}',
//     size: '{{random("small", "medium", "large")}}',
//     photo: 'https://via.placeholder.com/400/',
//     icon: 'https://via.placeholder.com/400/?text=ICON',
//     date_create: '{{date(new Date(2020, 0, 1), new Date(), "YYYY-MM-dd hh:mm:ss")}}'
    
//   }
// ]

// LOCATIONS V2 it pics random color between the following: "A8C6F8", "AA92E0", "CFF2F6", "798BD7" for img

[
  '{{repeat(250)}}',
  {
    id:'{{index(1)}}',
    flower_id: '{{integer(1, 50)}}',
    lat: '{{floating(37.391561, 37.284103)}}',
    lng: '{{floating(-121.960312, -121.844773)}}',
    size: '{{random("small", "medium", "large")}}',
    photo: function(tags){
      return 'https://via.placeholder.com/400/'+tags.random("A8C6F8", "AA92E0", "CFF2F6", "798BD7")+'/fff/?text=img';
    },
    icon: 'https://via.placeholder.com/400/?text=ICON',
    date_create: '{{date(new Date(2020, 0, 1), new Date(), "YYYY-MM-dd hh:mm:ss")}}'
    
  }
]


// ORIGINAL
[
  '{{repeat(5, 7)}}',
  {
    _id: '{{objectId()}}',
    index: '{{index()}}',
    guid: '{{guid()}}',
    isActive: '{{bool()}}',
    balance: '{{floating(1000, 4000, 2, "$0,0.00")}}',
    picture: 'http://placehold.it/32x32',
    age: '{{integer(20, 40)}}',
    eyeColor: '{{random("blue", "brown", "green")}}',
    name: '{{firstName()}} {{surname()}}',
    gender: '{{gender()}}',
    company: '{{company().toUpperCase()}}',
    email: '{{email()}}',
    phone: '+1 {{phone()}}',
    address: '{{integer(100, 999)}} {{street()}}, {{city()}}, {{state()}}, {{integer(100, 10000)}}',
    about: '{{lorem(1, "paragraphs")}}',
    registered: '{{date(new Date(2014, 0, 1), new Date(), "YYYY-MM-ddThh:mm:ss Z")}}',
    latitude: '{{floating(-90.000001, 90)}}',
    longitude: '{{floating(-180.000001, 180)}}',
    tags: [
      '{{repeat(7)}}',
      '{{lorem(1, "words")}}'
    ],
    friends: [
      '{{repeat(3)}}',
      {
        id: '{{index()}}',
        name: '{{firstName()}} {{surname()}}'
      }
    ],
    greeting: function (tags) {
      return 'Hello, ' + this.name + '! You have ' + tags.integer(1, 10) + ' unread messages.';
    },
    favoriteFruit: function (tags) {
      var fruits = ['apple', 'banana', 'strawberry'];
      return fruits[tags.integer(0, fruits.length - 1)];
    }
  }
]


{
  "notes":[
    "JSON FILES ALWAYS START WITH EITHER AN ARRAY [] or an onject {}",
    "JSON files cannot have comments, so put any comments in this array", 
    "Comas go between items in an array or object, but there should never be a tailing comma",
    "All propety names must be in quotation marks",
    "All string quotation marks must be bouble quotes",
    "Use a linter(code checkers) like jsonlint.com to check the json format"
  ]
}



// TRANSFORM JASON TO MY SQL DATA 
// https://konbert.com/convert




