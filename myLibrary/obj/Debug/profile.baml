   M S B A M L   `   `   `  ����D  @myLibrary, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null%clr-namespace:myLibrary	myLibrary  5   	       myLibrary.profile   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   )localclr-namespace:myLibrary     5   	   b ^MaterialDesignThemes.Wpf, Version=4.0.0.2422, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5	   	     � Title$  Мой профиль��5   	   $��435.067��6   $��524.8��6.      MaterialDesignBody#���   5
   	   $��Regular"�5      $��13(�5      &   System.Windows.Media.TextOptions   TextFormattingMode$ Ideal=�5         TextRenderingMode$
 Auto=�5        MaterialDesignPaper#���  5        MaterialDesignFont#���  5       � 	Resources 5        fo �� Color��%-   &	       �� 5   
   $ 	#FF505E79��6%   5      .��5      � $��
-3,0,3.4,0q�6   .+�5   
   �� -   5         ��Name$
 save��5      $
��Save��6    $
��Left=�6/   $��207,344,0,0q�6J   $	��Top=�6_   $	��118��6w   $��40��6�   
�������
�������  Rounded#���  6�    J� RenderTransformOrigin$ 1.625,-3.933&�6�   $��16(�6  #���  6$  �� 5   
   -   5         ��Name$ familia��5      )  #MaterialDesignThemes.Wpf.HintAssist   Hint$ Enter lastname...��6#   $
��Left=�6V   $��23��6q   $��107,106,0,0q�6}   	 �� TextWrapping$
	 Wrap=�6�   $	��Top=�6�   $	��148��6�   �� 5   
   -   5        $ nameUs��5      $ Enter name...��6"   $
��Left=�6Q   $��23��6l   $��107,162,0,0q�6x   $
	 Wrap=�6�   $	��Top=�6�   $	��148��6�   �� 5   
   -   5        $ otchestv��5      $ Enter patronymic...��6$   $
��Left=�6Y   $��23��6t   $��107,219,0,0q�6�   $
	 Wrap=�6�   $	��Top=�6�   $	��148��6�   �� 5   
   -   5        $ phone��5      $ Enter phone number...��6!   $
��Left=�6X   $��23��6s   $��
364,99,0,0q�6   $
	 Wrap=�6�   $	��Top=�6�   $	��138��6�   �� 5   
   -   5        $ passport��5      $ Enter password...��6$   $
��Left=�6W   $��23��6r   $��364,155,0,0q�6~   $
	 Wrap=�6�   $	��Top=�6�   $	��138��6�   �� 5   
   -   5        $ adress1��5      $ Enter adress...��6$   $
��Auto=�6U   $
��Left=�6�   $��23��6�   $��364,213,0,0q�6�   $
	 Wrap=�6�   $	��Top=�6�   $	��138��6�   �� 5   
   $��Фамилия:��6   $
��Left=�6#   $��
32,103,0,0q�6>   $	��Top=�6R   �� 5   
   $��Имя:��6   $
��Left=�6   $��
35,159,0,0q�6:   $	��Top=�6N   �� 5   
   $��Отчество:��6   $
��Left=�6$   $��
32,217,0,0q�6?   $	��Top=�6S   �� 5    
   $��Телефон:��6   $
��Left=�6#   $��
283,98,0,0q�6>   $	��Top=�6R   $��29��6j   �� 5!   
   $��Паспорт:��6   $
��Left=�6#   $��283,158,0,0q�6>   $	��Top=�6S   �� 5"   
   -   5        
 ��Name$
 adress��5"      $��Адрес:��6    $
��Left=�61   $��283,212,0,0q�6L   $	��Top=�6a   �� 5#   
   -	   5        $
 back��5#      $
��Back��6   $
��Left=�6/   $��428,355,0,0q�6J   $	��Top=�6_   $��80��6w   $��29��6�   
�������
�������$��20(�6�   #���  6�   ���	#FFE9AAA56�   �� 5$   
   -
   5         ��Name$ myLib��5$      $
��Left=�6   $	��107��6:   $��10,0,0,0q�6G   $	��Top=�6Y   $	��206��6q   $��library.png��6}   �� 5%   
   -   5        $
 username��5%      $��username��6"   $
��Left=�65   $��
409,40,0,0q�6P   $	��Top=�6d   $ 0.612,0.855&�6|   #���  6�   $��14(�6�   �� 5&   
   -   5        $
 username_Copy��5&      $��User:��6'   $
��Left=�67   $��
367,40,0,0q�6R   $	��Top=�6f   $ 0.612,0.855&�6~   #���  6�   $��14(�6�   �� 5'   
   $
��Left=�6   $��69��60   $��364,254,0,0q�6<   $	��Top=�6Q   $	��113��6i   .+�5(      �� $��Пол:��6   $��25��6#   	� 5)      -   5         	�Name$	 Fem��5)      $��Женский��6'   	� 5*      -   5        $
 Male��5*      $��Мужской��6(   5+      �� 5,   
   $ ��Дата рождения:��6   $
��Left=�6)   $��	0,274,0,0q�6D   $	��Top=�6W   $ 0.373,0.726&�6o   (  "System.Windows.Controls.DatePicker  5-   
   -   5          Name$ birth��5-      $ Choose date��6$   $
��Left=�6Q   $��107,273,0,0q�6l   $	��Top=�6�   $	��148��6�      DisplayDateStart$ 
1920-01-01X�6�   5/      50      