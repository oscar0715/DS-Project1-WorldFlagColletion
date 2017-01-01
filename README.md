# DS-Project1-WorldFlagColletion
Web Application. You can get flag and flag description from all countries.

Netbeans + JSP + bootstrap

查看各个国家国旗的 Web Application

采用 MVC 模式：

1. Model 处理获取国旗的的逻辑
2. View 用 JSP 完成
    - index.jsp 页面中可以选择所有的国家，用户选择一个国家
    - showFlag.jsp 页面可以显示选中国家的国旗和国旗的介绍
3. Controller 中写 Servlet
    - doGet 接收用户的请求
