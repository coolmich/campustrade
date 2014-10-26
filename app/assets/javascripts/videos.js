$(function(){
  $('#econ41button').on('click', function(){
    $('li').removeClass('active-li');
    $(this).parent().addClass('active-li');
    document.getElementById('youtube-video').innerHTML = '<iframe width="640" height="360" src="//www.youtube.com/embed/OleHnPjQHrE" frameborder="0" allowfullscreen></iframe>';
    $('.video-intro-container').show();
    $('.course-desc').show();
    document.getElementById('below-title').innerHTML = "Econ 4 video 1 会计账户介绍";
    document.getElementById('below-desc').innerHTML = "Introduction to the principle of accounting by learning the accounts and understand how to differentiate among asset, liabilities and owners equities. What is accounting and why should we learn accounting?"
    document.getElementById('below-summ').innerHTML = "1. 什么是会计？ 什么是金融市场？ 金融市场简介<br/>2. 会计账户介绍，名称解释，例子分析<br/>3. 复式会计记账方式（Debit=借； credit=贷） 有借必有贷，借贷必相等<br/>4. Differentiate what is permanent account and what is temporary account.";
    document.getElementById('video-intro-class-name').innerHTML = "Class Name: Econ4, Principle of Accounting (Basic Introduction)";
    document.getElementById('video-intro-moorgee').innerHTML = "Moorgee: Alex (冬菇弟弟) ";
    document.getElementById('video-intro-moorgee').setAttribute("data-original-title", "如果在讲课当中大家发现冬菇弟弟有任何出错的地方，请大家毫不留情的指出来，我一定会在下面的准备中努力提高，为大家准备更有质量的辅助视频，谢谢大家。");
  });
  $('#econ42button').on('click', function(){
    $('li').removeClass('active-li');
    $(this).parent().addClass('active-li');
    document.getElementById('youtube-video').innerHTML = '<iframe width="640" height="360" src="//www.youtube.com/embed/h-a6qOmkdl8" frameborder="0" allowfullscreen></iframe>';
    $('.video-intro-container').show();
    $('.course-desc').show();

    document.getElementById('below-title').innerHTML = "Econ4 Video 2: 会计分录方法";
    document.getElementById('below-desc').innerHTML = "Last course we introduced the assets, liabilities and owner’s equities. We are going to learn the basic transaction and do the general journal in the accounting. How to get As in the first mid term?";
    document.getElementById('below-summ').innerHTML = "1. 会计分录，会计账户复习回顾（请大家务必把会计账户背熟！！记住什么属于asset,什么属于liability）Asset=liabilities+owners’equities<br/>2. 会计transactions,具体做帐方式，案例分析<br/>3. 灵活运用第一节课的知识点（第一个期中考试重要考点cover";
    document.getElementById('video-intro-class-name').innerHTML = "Class Name: Econ4, Principle of Accounting (Basic Introduction)";
    document.getElementById('video-intro-moorgee').innerHTML = "Moorgee: Alex (冬菇弟弟) ";
    document.getElementById('video-intro-moorgee').setAttribute("data-original-title", "如果在讲课当中大家发现冬菇弟弟有任何出错的地方，请大家毫不留情的指出来，我一定会在下面的准备中努力提高，为大家准备更有质量的辅助视频，谢谢大家。");
  });
  $('#econ11button').on('click', function(){
    $('li').removeClass('active-li');
    $(this).parent().addClass('active-li');
    document.getElementById('youtube-video').innerHTML = '<iframe width="640" height="360" src="//www.youtube.com/embed/Ig-kghXrMRY" frameborder="0" allowfullscreen></iframe>';
    $('.video-intro-container').show();
    $('.course-desc').show();

    document.getElementById('below-title').innerHTML = "Econ1 Midterm1 讲解";
    document.getElementById('below-desc').innerHTML = "Midterm1 is coming --- and this video is for you to prepare.";
    document.getElementById('below-summ').innerHTML = "1. combined production possibility curve <br/>2. difference between demand and quantity demanded <br/>3. change in demand and supply <br/>4. price and quantity change relative to shift in demand and supply curve";
    document.getElementById('video-intro-class-name').innerHTML = "Class Name: Econ1, Principle of Microeconomics";
    document.getElementById('video-intro-moorgee').innerHTML = "讲师：慕秉晨";
    document.getElementById('video-intro-moorgee').setAttribute("data-original-title", "");
  });
  $('#econ31button').on('click', function(){
    $('li').removeClass('active-li');
    $(this).parent().addClass('active-li');
    document.getElementById('youtube-video').innerHTML = '<iframe width="640" height="360" src="//www.youtube.com/embed/hXkPxT7y5pI" frameborder="0" allowfullscreen></iframe>';
    $('.video-intro-container').show();
    $('.course-desc').show();

    document.getElementById('below-title').innerHTML = "Econ3 Midterm1 讲解";
    document.getElementById('below-desc').innerHTML = "Midterm1 is coming --- and this video is for you to prepare.";
    document.getElementById('below-summ').innerHTML = "Chapter 15: GDP<br/>Chapter 16: Inflation<br/>Chapter 17: Wages and Unemployment";
    document.getElementById('video-intro-class-name').innerHTML = "Class Name: Econ3, Principle of Macroeconomics";
    document.getElementById('video-intro-moorgee').innerHTML = "讲师：Kiki";
    document.getElementById('video-intro-moorgee').setAttribute("data-original-title", "");
  });
  $('#cse111button').on('click', function(){
    $('li').removeClass('active-li');
    $(this).parent().addClass('active-li');
    document.getElementById('youtube-video').innerHTML = '<iframe width="640" height="360" src="//www.youtube.com/embed/epsPY5FWq7s" frameborder="0" allowfullscreen></iframe>';
    $('.video-intro-container').show();
    $('.course-desc').show();

    document.getElementById('below-title').innerHTML = "CSE 11 Quiz2 讲解";
    document.getElementById('below-desc').innerHTML = "This tutorial provides a detailed explanation for CSE 11 Quiz 2. The version is 2013 Fall on Rick's CSE 11 website. Please check the quiz pdf version online.";
    document.getElementById('below-summ').innerHTML = "1. 数学与逻辑运算的顺序。<br/>2. De Morgan's Law<br/>3. ＝＝ 和 equals() 的区别<br/>4. local variables. ";
    document.getElementById('video-intro-class-name').innerHTML = "CSE 11";
    document.getElementById('video-intro-moorgee').innerHTML = "李雪阳";
    document.getElementById('video-intro-moorgee').setAttribute("data-original-title", "");
  });
});


