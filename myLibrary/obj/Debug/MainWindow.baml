   M S B A M L   `   `   `  ����D  @myLibrary, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null%clr-namespace:myLibrary	myLibrary  5   	       myLibrary.MainWindow   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   )localclr-namespace:myLibrary     5   	   b ^MaterialDesignThemes.Wpf, Version=4.0.0.2422, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5
   	     � Title$  	MyLibrary��5	   	   $��409.971��6   $��470.667��6,    � WindowStyle$ ThreeDBorderWindow=�6<      MaterialDesignBody#���   5      $��Regular"�5      $��13(�5      &   System.Windows.Media.TextOptions   TextFormattingMode$ Ideal=�5         TextRenderingMode$
 Auto=�5        MaterialDesignPaper#���  5        MaterialDesignFont#���  5       � 	Resources 5       	 first �� Color 
 second 	 third��%�   &	       &	 #     &	 F     �� 5   
   $ 	#FFC4AF8D��6(   �� 5   
   $ 	#FFE9AAA5��6)   �� 5   
   $ 	#FF505E79��6(   5      .��5      �  � Cursor$
 None��6   $��3,0,1,0q�6    � RowDefinitions 5   
   �� 5       � ColumnDefinitions 5   
   �� 5      .+�5   
   �� -   5        	 ��Name$	 login��5      $��Log in��6    $
��Left=�64   $��151,0,0,219q�6O   $��Bottom=�6d   $	��177��6   $��50��6�   #���  6�   
�������$��24(�6�   $��Arial)�6�     Rounded#���  6  
�������6&  �� 5   
   -   5        $	 SignIn��5      $��Sign in ��6!   $
��Left=�65   $��151,0,0,151q�6P   $��Bottom=�6e   $	��177��6�   $��50��6�   #���  6�   
�������$��24(�6�   $��Arial)�6�   #���  6�   
�������6(  �� 5    
   -   5        $
	 exit��5       $
��Exit��6   $
��Left=�6/   $��
167,0,0,19q�6J   $��Bottom=�6^   $	��145��6y   $��37��6�   #���  6�   
�������$��24(�6�   $��Arial)�6�   #���  6�   
�������6   �� 5!   
   -   5        
 ��Name$
 myLib��5!      $
��Left=�6   $	��187��6:   $��68,-40,0,233q�6G   $��Bottom=�6]   $	��348��6x   $��library.png��6�   �� 5"   
   -   5        $	 guest��5"      $��Catalog��6    $
��Left=�63   $��
151,0,0,80q�6N   $��Bottom=�6b   $	��177��6}   $��50��6�   #���  6�   
�������$��24(�6�   $��Arial)�6�   #���  6�   
�������6$  5$      5'      