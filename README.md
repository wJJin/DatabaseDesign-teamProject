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
<br>

# Project Description
### Project purpose
호텔 예약 및 매출 관리 시스템을 만들고자 한다. 현재 호텔에 직접 방문하거나 전화를 걸어 객실을 예약하는 경우가 있다. 이는 관리자가 예약을 수기로 입력해야 하고 매출을 포함한 다양한 정보의 파악 및 관리를 어렵게 만든다. 또한, 수기로 운영되는 상황에서 여러 직원이 동시에 예약을 받는다면 객실이 중복예약 될 수 있어 경제적 손실 및 고객 경험 문제를 피할 수 없게 된다.<br>
위와 같은 문제를 해결하기 위해, 우리는 온라인 호텔 예약 및 매출 관리 시스템을 만들고자 한다. 우리의 시스템의 목적은 크게 회원 관리, 예약 관리, 매출 관리 세 가지이다.
1. 회원 관리를 통해 객실 변상 등 문제가 발생하면 투숙객 정보를 추적할 수 있다.
2. 예약을 전산화하면 고객이 원하는 날짜와 호텔에 객실이 남아있는지 확인할 수 있고 중복 예약을 막을 수 있다.
3. 예약이 데이터 베이스로 남아있어 호텔 관리자는 날짜별, 회원별, 객실별 매출을 파악하고 관리하기 용이해진다.
<br>

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
<br>

### SQL Workbench
<img src="https://user-images.githubusercontent.com/81296203/201728278-afdc0d24-895a-4f8a-b7de-5ee43655924d.png" height="400"/>

