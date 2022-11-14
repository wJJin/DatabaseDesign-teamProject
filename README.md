# DatabaseDesign-teamProject

한국외국어대학교 2022-2nd '데이터베이스 설계 및 응용' 수업 팀 프로젝트를 위한 레포지토리입니다.

### Team members
Thanks goes to these wonderful people ([emoji key](https://allcontributors.org/docs/en/emoji-key)):

<!-- ALL-CONTRIBUTORS-LIST:START - Do not remove or modify this section -->
<!-- prettier-ignore-start -->
<!-- markdownlint-disable -->

<table>
  <tr>
    <td align="center">
    <a href="https://github.com/wJJin">
    <img src="https://avatars.githubusercontent.com/u/81296203?v=4?s=100" width="100px;" alt=""/>
    <br />
    <sub>
    <b>WooJin Chung</b>
    </sub>
    </a>
    <br />
    </td>
        <td align="center">
    <a href="https://github.com/dabin3178">
    <img src="https://avatars.githubusercontent.com/u/83808068?v=4" width="100px;" alt=""/>
    <br />
    <sub>
    <b>DaBin Park</b>
    </sub>
    </a>
    <br />
    </td>
        <td align="center">
    <a href="https://github.com/klll2">
    <img src="https://avatars.githubusercontent.com/u/60285296?v=4" width="100px;" alt=""/>
    <br />
    <sub>
    <b>HanGyeol Im</b>
    </sub>
    </a>
    <br />
    </td>
        <td align="center">
    <a href="">
    <img src="" width="100px;" alt=""/>
    <br />
    <sub>
    <b>SeongWook Jeon</b>
    </sub>
    </a>
    <br />
    </td>
  </tr>
</table>

<!-- markdownlint-restore -->
<!-- prettier-ignore-end -->

<!-- ALL-CONTRIBUTORS-LIST:END -->

This project follows the [all-contributors](https://github.com/all-contributors/all-contributors) specification. Contributions of any kind welcome!

# Project Description

### ERD(only Entities)

<img src="https://user-images.githubusercontent.com/81296203/201529323-cd0f0995-ae6a-4542-a37f-d2a0b27cea5e.jpg" height="200"/>
<br>

```
# About Entity

Hotel(Hotel_ID, Hotel_name, Address, Phone_num, Fax_num)
Employee(Emp_ID, Emp_fname, Emp_lname, Hotel_ID, Job_title, Phone_num)
Room(Room_ID, Hotel_ID, Type_ID, Floor)
RoomType(Type_ID, Room_price, Max_capa, Num_of_Bed=s)
Booking_ID(Booking_ID, Res_ID, Room_ID)
Reservation(Res_ID, Gst_ID, Res_Date, Start_date, End_date, Num_of_Guests, Num_of_Rooms)
Guest(Gst_ID, Gst_fname, Gst_lname, Address, Phone_num, Email, Dob)
Bill(Bill_ID, Res_ID, Gst_ID, Total_price, Start_date, End_date, pay_date)
```
