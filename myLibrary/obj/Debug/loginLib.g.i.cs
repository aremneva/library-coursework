﻿#pragma checksum "..\..\loginLib.xaml" "{8829d00f-11b8-4213-878b-770e8597ac16}" "198BA850024D253C54EAC83293D52DB1D4FCAA36C49D32A94216B43FBAD3633C"
//------------------------------------------------------------------------------
// <auto-generated>
//     Этот код создан программой.
//     Исполняемая версия:4.0.30319.42000
//
//     Изменения в этом файле могут привести к неправильной работе и будут потеряны в случае
//     повторной генерации кода.
// </auto-generated>
//------------------------------------------------------------------------------

using System;
using System.Diagnostics;
using System.Windows;
using System.Windows.Automation;
using System.Windows.Controls;
using System.Windows.Controls.Primitives;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Ink;
using System.Windows.Input;
using System.Windows.Markup;
using System.Windows.Media;
using System.Windows.Media.Animation;
using System.Windows.Media.Effects;
using System.Windows.Media.Imaging;
using System.Windows.Media.Media3D;
using System.Windows.Media.TextFormatting;
using System.Windows.Navigation;
using System.Windows.Shapes;
using System.Windows.Shell;
using myLibrary;


namespace myLibrary {
    
    
    /// <summary>
    /// loginLib
    /// </summary>
    public partial class loginLib : System.Windows.Window, System.Windows.Markup.IComponentConnector {
        
        
        #line 18 "..\..\loginLib.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Button back;
        
        #line default
        #line hidden
        
        
        #line 26 "..\..\loginLib.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.DataGrid dataGrid;
        
        #line default
        #line hidden
        
        
        #line 27 "..\..\loginLib.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Button load;
        
        #line default
        #line hidden
        
        
        #line 35 "..\..\loginLib.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Label username;
        
        #line default
        #line hidden
        
        
        #line 36 "..\..\loginLib.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Label username_Copy;
        
        #line default
        #line hidden
        
        
        #line 37 "..\..\loginLib.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Image myLib;
        
        #line default
        #line hidden
        
        
        #line 38 "..\..\loginLib.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Label textBook;
        
        #line default
        #line hidden
        
        
        #line 39 "..\..\loginLib.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.TextBox searchBook;
        
        #line default
        #line hidden
        
        
        #line 40 "..\..\loginLib.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Button fine;
        
        #line default
        #line hidden
        
        
        #line 48 "..\..\loginLib.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Button srok;
        
        #line default
        #line hidden
        
        private bool _contentLoaded;
        
        /// <summary>
        /// InitializeComponent
        /// </summary>
        [System.Diagnostics.DebuggerNonUserCodeAttribute()]
        [System.CodeDom.Compiler.GeneratedCodeAttribute("PresentationBuildTasks", "4.0.0.0")]
        public void InitializeComponent() {
            if (_contentLoaded) {
                return;
            }
            _contentLoaded = true;
            System.Uri resourceLocater = new System.Uri("/myLibrary;component/loginlib.xaml", System.UriKind.Relative);
            
            #line 1 "..\..\loginLib.xaml"
            System.Windows.Application.LoadComponent(this, resourceLocater);
            
            #line default
            #line hidden
        }
        
        [System.Diagnostics.DebuggerNonUserCodeAttribute()]
        [System.CodeDom.Compiler.GeneratedCodeAttribute("PresentationBuildTasks", "4.0.0.0")]
        [System.ComponentModel.EditorBrowsableAttribute(System.ComponentModel.EditorBrowsableState.Never)]
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Design", "CA1033:InterfaceMethodsShouldBeCallableByChildTypes")]
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Maintainability", "CA1502:AvoidExcessiveComplexity")]
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1800:DoNotCastUnnecessarily")]
        void System.Windows.Markup.IComponentConnector.Connect(int connectionId, object target) {
            switch (connectionId)
            {
            case 1:
            this.back = ((System.Windows.Controls.Button)(target));
            
            #line 18 "..\..\loginLib.xaml"
            this.back.Click += new System.Windows.RoutedEventHandler(this.Back_Click);
            
            #line default
            #line hidden
            return;
            case 2:
            this.dataGrid = ((System.Windows.Controls.DataGrid)(target));
            return;
            case 3:
            this.load = ((System.Windows.Controls.Button)(target));
            
            #line 27 "..\..\loginLib.xaml"
            this.load.Click += new System.Windows.RoutedEventHandler(this.Load_Click);
            
            #line default
            #line hidden
            return;
            case 4:
            this.username = ((System.Windows.Controls.Label)(target));
            return;
            case 5:
            this.username_Copy = ((System.Windows.Controls.Label)(target));
            return;
            case 6:
            this.myLib = ((System.Windows.Controls.Image)(target));
            return;
            case 7:
            this.textBook = ((System.Windows.Controls.Label)(target));
            return;
            case 8:
            this.searchBook = ((System.Windows.Controls.TextBox)(target));
            return;
            case 9:
            this.fine = ((System.Windows.Controls.Button)(target));
            
            #line 40 "..\..\loginLib.xaml"
            this.fine.Click += new System.Windows.RoutedEventHandler(this.fine_Click);
            
            #line default
            #line hidden
            return;
            case 10:
            this.srok = ((System.Windows.Controls.Button)(target));
            
            #line 48 "..\..\loginLib.xaml"
            this.srok.Click += new System.Windows.RoutedEventHandler(this.srok_Click);
            
            #line default
            #line hidden
            return;
            }
            this._contentLoaded = true;
        }
    }
}

