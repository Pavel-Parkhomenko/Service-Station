   M S B A M L   `   `   `  ����I  ECourseWorkSUBD, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullA%clr-namespace:CourseWorkSUBD.UserRoomCourseWorkSUBD.UserRoom  5   	   -    'CourseWorkSUBD.UserRoom.UserPrivateRoom   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   7local%clr-namespace:CourseWorkSUBD.UserRoom     5   	     � Title$  
MainWindow��5   	   $	��350��6   $	��550��6)   .��5	      � ���#FFCF40 � RowDefinitions 5
   
   �� 5      $	��65* �6   �� 5      $
��183* �6   �� 5      $��50 �6    � ColumnDefinitions 5   
   �� 5      $
��359* �6   �� 5      $
��183* �6   .+�5   
   ��  �� Orientation$ Vertical=�6   $��0��6,   $��10 0 0 0q�69   .+�5      �� $!��Личный кабинет��6   $��25(�6-   �� 5      $I��Cздесь вы также можете оплатить заказ��6   5      &   System.Windows.Controls.DataGrid  5   
   -   5          Name$ userDataGrid��5         AutoGenerateColumns$
 true��6)   $��1��6D      
IsReadOnly$
 True��6Q   $	��350��6c   $
��Left=�6o   $��10 0 0 0q�6�   $��2��6�      RowDetailsTemplate 5      �� 5      .R�5      �� $ 
Horizontal=�6!   .+�5      ��  ��Name$ userInfoOrder��6!   -   5        $ ��Дополнительно��5   8   6P   5      5      5       �� 5!   
   $!��Оставить отзыв��6   $��1��6*   $��Bottom=�6:   $��10 0 0 0q�6U   $��16��6g   �� 5"   
   $ Vertical=�6   $��1��6,   $��1��69   $��10 0 0 0q�6I   .+�5#      �� -   5        	 ��Name$	 textFeedback��5#      
 �� TextWrapping$

 Wrap=�6,   $	��163��6@   $��94��6L   $
��Left=�6X   �� 5$      -   5        $ butUpdateDataGrid��5$      $��Обновить��60   $��20��6C   $��	0,77,10,0q�6o   5%      �� 5&   
   $ Vertical=�6   $��2��6,   $��10 0 0 0q�69   .+�5'      �� $ 
Horizontal=�6   $��0 20 0 0q�62   .+�5(      �� -   5        $ saveUserRoom��5(      $��Сохранить��6/   $	��100��6C   
������ $
��Left=�6h   6�   �� 5)      -   5        $ exitUserRoom��5)      $��
Выход��60   $	��100��6@   
���  ��$
��Left=�6]   $��	150 0 0 0q�6x   6�   5*      5+      5,      5-      