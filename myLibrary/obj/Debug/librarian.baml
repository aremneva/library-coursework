   M S B A M L   `   `   `  ����D  @myLibrary, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null%clr-namespace:myLibrary	myLibrary  5   	       myLibrary.librarian   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   )localclr-namespace:myLibrary     5   	   b ^MaterialDesignThemes.Wpf, Version=4.0.0.2422, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5	   	     � Title$  	librarian��5   	   $��446.361��6   $��769.677��6,      MaterialDesignBody#���   5
      $��Regular"�5      $��13(�5      &   System.Windows.Media.TextOptions   TextFormattingMode$ Ideal=�5         TextRenderingMode$
 Auto=�5        MaterialDesignPaper#���  5        MaterialDesignFont#���  5       � 	Resources 5        four �� Color 	 three��%Z   &	       &	 #     �� 5   
   $ 	#FF505E79��6'   �� 5   
   $ 	#FF5A796A��6(   5      .��5      � .+�5   
   �� -   5         ��Name$ myLib��5      $
��Left=�6   $	��110��6:   $��
10,-14,0,0q�6G   $	��Top=�6[   $	��215��6s   $��library.png��6   &   System.Windows.Controls.DataGrid  5   
   -   5          Name$ dataGrid��5      $
��Left=�6%   $	��257��6@   $��
20,101,0,0q�6M   $	��Top=�6y   $	��502��6�      VerticalGridLinesBrush �	#FF262626   HorizontalGridLinesBrush �	#FF262626��6a   �� 6�   �� 5   
   -   5        	 ��Name$	 tablesL��5      $
��Left=�6$   $��539,101,0,0q�6?   $	��Top=�6T   $	��183��6l   
 J� RenderTransformOrigin$
 0.514,0.848&�6�   $��34��6�   .@�5      �� -   5        $��l1��5      $��Выдать книгу��6%   �� 5      -   5        $��l2��5      $-��'Посмотреть должников��6%   �� 5      -   5        $��l3��5      $��
Книги��6%   �� 5      -   5        $��l4��5      $+��%Читательские билеты��6%   �� 5      -   5        $��delete��5      $!��Удалить запись��6)   5      �� 5   
   -	   5         ��Name$ username_Copy��5      $��User:��6'   $
��Left=�67   $��
618,20,0,0q�6R   $	��Top=�6f   $
 0.612,0.855&�6~   #���  6�   $��14(�6�   �� 5    
   -
   5         ��Name$
 save��5       $
��Save��6   $
��Left=�6.   $��589,260,0,0q�6I   $	��Top=�6^   $��84��6v   #���  6�   $��30��6�     Rounded#���  6�   
�������
�������$��20(�6�   $y�Hidden=�6	  6  �� 5!   
   -   5        $
 back��5!      $
��Exit��6   $
��Left=�6/   $��659,359,0,0q�6J   $	��Top=�6_   $��80��6w   $��34��6�   
�������
�������$��20(�6�   #���  6�   ���	#FFE9AAA56�   �� 5"   
   -   5        $ un��5"      $��username��6   $
��Left=�6/   $��
675,20,0,0q�6J   $	��Top=�6^   #���  6�   $
 0.136,-0.264&�6�   ��6v   Z� 6�   �� 5#   
   -   5         ��Name$ idBook��5#      )  #MaterialDesignThemes.Wpf.HintAssist   Hint$ 	idBook...��6"   $
��Left=�6N   $��23��6i   $��539,179,0,0q�6u    �� TextWrapping$
 Wrap=�6�   $	��Top=�6�   $	��183��6�   $y�Hidden=�6�   �� 5$   
   -   5        $ idCard��5$      $ idLibraryCard...��6#   $
��Left=�6U   $��23��6p   $��539,219,0,0q�6|   $
 Wrap=�6�   $	��Top=�6�   $	��183��6�   $y�Hidden=�6�   �� 5%   
   -   5        $ delIsd��5%      $ Enter id issue...��6"   $
��Left=�6U   $��23��6p   $��539,179,0,0q�6|   $
 Wrap=�6�   $	��Top=�6�   $	��183��6�   $y�Hidden=�6�   �� 5&   
   -   5        $
 delB��5&      $��Delete��6   $
��Left=�60   $��589,229,0,0q�6K   $	��Top=�6`   $��84��6x   ���	#FFE9AAA5#���  6�   
�������
�������$��26��6�   $y�Hidden=�6  5(      5)      