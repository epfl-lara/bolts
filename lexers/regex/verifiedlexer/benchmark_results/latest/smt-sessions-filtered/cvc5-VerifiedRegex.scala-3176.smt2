; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!185674 () Bool)

(assert start!185674)

(assert (=> start!185674 true))

(declare-fun b!1859367 () Bool)

(assert (=> b!1859367 true))

(assert (=> b!1859367 true))

(assert (=> b!1859367 true))

(declare-fun b!1859376 () Bool)

(declare-fun e!1187429 () Bool)

(declare-datatypes ((List!20700 0))(
  ( (Nil!20620) (Cons!20620 (h!26021 (_ BitVec 16)) (t!172589 List!20700)) )
))
(declare-datatypes ((IArray!13639 0))(
  ( (IArray!13640 (innerList!6877 List!20700)) )
))
(declare-datatypes ((Conc!6817 0))(
  ( (Node!6817 (left!16553 Conc!6817) (right!16883 Conc!6817) (csize!13864 Int) (cheight!7028 Int)) (Leaf!9994 (xs!9693 IArray!13639) (csize!13865 Int)) (Empty!6817) )
))
(declare-datatypes ((BalanceConc!13564 0))(
  ( (BalanceConc!13565 (c!302764 Conc!6817)) )
))
(declare-fun x!372614 () BalanceConc!13564)

(declare-fun tp!529985 () Bool)

(declare-fun inv!27073 (Conc!6817) Bool)

(assert (=> b!1859376 (= e!1187429 (and (inv!27073 (c!302764 x!372614)) tp!529985))))

(declare-datatypes ((WhitespaceValueInjection!120 0))(
  ( (WhitespaceValueInjection!121) )
))
(declare-fun thiss!3128 () WhitespaceValueInjection!120)

(declare-fun inst!1138 () Bool)

(declare-fun inv!27074 (BalanceConc!13564) Bool)

(declare-fun list!8362 (BalanceConc!13564) List!20700)

(declare-datatypes ((TokenValue!3801 0))(
  ( (FloatLiteralValue!7602 (text!27052 List!20700)) (TokenValueExt!3800 (__x!12990 Int)) (Broken!19005 (value!115690 List!20700)) (Object!3880) (End!3801) (Def!3801) (Underscore!3801) (Match!3801) (Else!3801) (Error!3801) (Case!3801) (If!3801) (Extends!3801) (Abstract!3801) (Class!3801) (Val!3801) (DelimiterValue!7602 (del!3861 List!20700)) (KeywordValue!3807 (value!115691 List!20700)) (CommentValue!7602 (value!115692 List!20700)) (WhitespaceValue!7602 (value!115693 List!20700)) (IndentationValue!3801 (value!115694 List!20700)) (String!23684) (Int32!3801) (Broken!19006 (value!115695 List!20700)) (Boolean!3802) (Unit!35231) (OperatorValue!3804 (op!3861 List!20700)) (IdentifierValue!7602 (value!115696 List!20700)) (IdentifierValue!7603 (value!115697 List!20700)) (WhitespaceValue!7603 (value!115698 List!20700)) (True!7602) (False!7602) (Broken!19007 (value!115699 List!20700)) (Broken!19008 (value!115700 List!20700)) (True!7603) (RightBrace!3801) (RightBracket!3801) (Colon!3801) (Null!3801) (Comma!3801) (LeftBracket!3801) (False!7603) (LeftBrace!3801) (ImaginaryLiteralValue!3801 (text!27053 List!20700)) (StringLiteralValue!11403 (value!115701 List!20700)) (EOFValue!3801 (value!115702 List!20700)) (IdentValue!3801 (value!115703 List!20700)) (DelimiterValue!7603 (value!115704 List!20700)) (DedentValue!3801 (value!115705 List!20700)) (NewLineValue!3801 (value!115706 List!20700)) (IntegerValue!11403 (value!115707 (_ BitVec 32)) (text!27054 List!20700)) (IntegerValue!11404 (value!115708 Int) (text!27055 List!20700)) (Times!3801) (Or!3801) (Equal!3801) (Minus!3801) (Broken!19009 (value!115709 List!20700)) (And!3801) (Div!3801) (LessEqual!3801) (Mod!3801) (Concat!8863) (Not!3801) (Plus!3801) (SpaceValue!3801 (value!115710 List!20700)) (IntegerValue!11405 (value!115711 Int) (text!27056 List!20700)) (StringLiteralValue!11404 (text!27057 List!20700)) (FloatLiteralValue!7603 (text!27058 List!20700)) (BytesLiteralValue!3801 (value!115712 List!20700)) (CommentValue!7603 (value!115713 List!20700)) (StringLiteralValue!11405 (value!115714 List!20700)) (ErrorTokenValue!3801 (msg!3862 List!20700)) )
))
(declare-fun toCharacters!2 (WhitespaceValueInjection!120 TokenValue!3801) BalanceConc!13564)

(declare-fun toValue!9 (WhitespaceValueInjection!120 BalanceConc!13564) TokenValue!3801)

(assert (=> start!185674 (= inst!1138 (=> (and (inv!27074 x!372614) e!1187429) (= (list!8362 (toCharacters!2 thiss!3128 (toValue!9 thiss!3128 x!372614))) (list!8362 x!372614))))))

(assert (= start!185674 b!1859376))

(declare-fun m!2282805 () Bool)

(assert (=> b!1859376 m!2282805))

(declare-fun m!2282807 () Bool)

(assert (=> start!185674 m!2282807))

(declare-fun m!2282809 () Bool)

(assert (=> start!185674 m!2282809))

(declare-fun m!2282811 () Bool)

(assert (=> start!185674 m!2282811))

(declare-fun m!2282813 () Bool)

(assert (=> start!185674 m!2282813))

(assert (=> start!185674 m!2282811))

(assert (=> start!185674 m!2282813))

(declare-fun m!2282815 () Bool)

(assert (=> start!185674 m!2282815))

(declare-fun res!832736 () Bool)

(declare-fun e!1187430 () Bool)

(assert (=> b!1859367 (=> res!832736 e!1187430)))

(declare-fun x!372615 () BalanceConc!13564)

(declare-fun x!372616 () BalanceConc!13564)

(assert (=> b!1859367 (= res!832736 (not (= (list!8362 x!372615) (list!8362 x!372616))))))

(declare-fun inst!1139 () Bool)

(declare-fun e!1187431 () Bool)

(declare-fun e!1187432 () Bool)

(assert (=> b!1859367 (= inst!1139 (=> (and (inv!27074 x!372615) e!1187432 (inv!27074 x!372616) e!1187431) e!1187430))))

(declare-fun b!1859377 () Bool)

(assert (=> b!1859377 (= e!1187430 (= (toValue!9 thiss!3128 x!372615) (toValue!9 thiss!3128 x!372616)))))

(declare-fun b!1859378 () Bool)

(declare-fun tp!529987 () Bool)

(assert (=> b!1859378 (= e!1187432 (and (inv!27073 (c!302764 x!372615)) tp!529987))))

(declare-fun b!1859379 () Bool)

(declare-fun tp!529986 () Bool)

(assert (=> b!1859379 (= e!1187431 (and (inv!27073 (c!302764 x!372616)) tp!529986))))

(assert (= (and b!1859367 (not res!832736)) b!1859377))

(assert (= b!1859367 b!1859378))

(assert (= b!1859367 b!1859379))

(declare-fun m!2282817 () Bool)

(assert (=> b!1859367 m!2282817))

(declare-fun m!2282819 () Bool)

(assert (=> b!1859367 m!2282819))

(declare-fun m!2282821 () Bool)

(assert (=> b!1859367 m!2282821))

(declare-fun m!2282823 () Bool)

(assert (=> b!1859367 m!2282823))

(declare-fun m!2282825 () Bool)

(assert (=> b!1859377 m!2282825))

(declare-fun m!2282827 () Bool)

(assert (=> b!1859377 m!2282827))

(declare-fun m!2282829 () Bool)

(assert (=> b!1859378 m!2282829))

(declare-fun m!2282831 () Bool)

(assert (=> b!1859379 m!2282831))

(declare-fun bs!410804 () Bool)

(declare-fun neg-inst!1138 () Bool)

(declare-fun s!221548 () Bool)

(assert (= bs!410804 (and neg-inst!1138 s!221548)))

(assert (=> bs!410804 (=> true (= (list!8362 (toCharacters!2 thiss!3128 (toValue!9 thiss!3128 x!372614))) (list!8362 x!372614)))))

(assert (=> m!2282809 m!2282811))

(assert (=> m!2282809 m!2282813))

(assert (=> m!2282809 m!2282815))

(assert (=> m!2282809 s!221548))

(assert (=> m!2282811 s!221548))

(declare-fun bs!410805 () Bool)

(assert (= bs!410805 (and neg-inst!1138 start!185674)))

(assert (=> bs!410805 (= true inst!1138)))

(declare-fun bs!410806 () Bool)

(declare-fun neg-inst!1139 () Bool)

(declare-fun s!221550 () Bool)

(assert (= bs!410806 (and neg-inst!1139 s!221550)))

(declare-fun res!832737 () Bool)

(declare-fun e!1187433 () Bool)

(assert (=> bs!410806 (=> res!832737 e!1187433)))

(assert (=> bs!410806 (= res!832737 (not (= (list!8362 x!372616) (list!8362 x!372616))))))

(assert (=> bs!410806 (=> true e!1187433)))

(declare-fun b!1859380 () Bool)

(assert (=> b!1859380 (= e!1187433 (= (toValue!9 thiss!3128 x!372616) (toValue!9 thiss!3128 x!372616)))))

(assert (= (and bs!410806 (not res!832737)) b!1859380))

(assert (=> m!2282827 m!2282819))

(assert (=> m!2282827 m!2282819))

(assert (=> m!2282827 s!221550))

(assert (=> m!2282827 s!221550))

(declare-fun bs!410807 () Bool)

(declare-fun s!221552 () Bool)

(assert (= bs!410807 (and neg-inst!1139 s!221552)))

(declare-fun res!832738 () Bool)

(declare-fun e!1187434 () Bool)

(assert (=> bs!410807 (=> res!832738 e!1187434)))

(assert (=> bs!410807 (= res!832738 (not (= (list!8362 x!372616) (list!8362 x!372614))))))

(assert (=> bs!410807 (=> true e!1187434)))

(declare-fun b!1859381 () Bool)

(assert (=> b!1859381 (= e!1187434 (= (toValue!9 thiss!3128 x!372616) (toValue!9 thiss!3128 x!372614)))))

(assert (= (and bs!410807 (not res!832738)) b!1859381))

(declare-fun bs!410808 () Bool)

(assert (= bs!410808 (and m!2282809 m!2282827)))

(assert (=> bs!410808 m!2282819))

(assert (=> bs!410808 m!2282809))

(assert (=> bs!410808 s!221552))

(declare-fun bs!410809 () Bool)

(declare-fun s!221554 () Bool)

(assert (= bs!410809 (and neg-inst!1139 s!221554)))

(declare-fun res!832739 () Bool)

(declare-fun e!1187435 () Bool)

(assert (=> bs!410809 (=> res!832739 e!1187435)))

(assert (=> bs!410809 (= res!832739 (not (= (list!8362 x!372614) (list!8362 x!372614))))))

(assert (=> bs!410809 (=> true e!1187435)))

(declare-fun b!1859382 () Bool)

(assert (=> b!1859382 (= e!1187435 (= (toValue!9 thiss!3128 x!372614) (toValue!9 thiss!3128 x!372614)))))

(assert (= (and bs!410809 (not res!832739)) b!1859382))

(assert (=> m!2282809 s!221554))

(declare-fun bs!410810 () Bool)

(declare-fun s!221556 () Bool)

(assert (= bs!410810 (and neg-inst!1139 s!221556)))

(declare-fun res!832740 () Bool)

(declare-fun e!1187436 () Bool)

(assert (=> bs!410810 (=> res!832740 e!1187436)))

(assert (=> bs!410810 (= res!832740 (not (= (list!8362 x!372614) (list!8362 x!372616))))))

(assert (=> bs!410810 (=> true e!1187436)))

(declare-fun b!1859383 () Bool)

(assert (=> b!1859383 (= e!1187436 (= (toValue!9 thiss!3128 x!372614) (toValue!9 thiss!3128 x!372616)))))

(assert (= (and bs!410810 (not res!832740)) b!1859383))

(assert (=> bs!410808 m!2282809))

(assert (=> bs!410808 m!2282819))

(assert (=> bs!410808 s!221556))

(assert (=> m!2282809 s!221554))

(declare-fun bs!410811 () Bool)

(declare-fun s!221558 () Bool)

(assert (= bs!410811 (and neg-inst!1139 s!221558)))

(declare-fun res!832741 () Bool)

(declare-fun e!1187437 () Bool)

(assert (=> bs!410811 (=> res!832741 e!1187437)))

(assert (=> bs!410811 (= res!832741 (not (= (list!8362 x!372616) (list!8362 (toCharacters!2 thiss!3128 (toValue!9 thiss!3128 x!372614))))))))

(assert (=> bs!410811 (=> true e!1187437)))

(declare-fun b!1859384 () Bool)

(assert (=> b!1859384 (= e!1187437 (= (toValue!9 thiss!3128 x!372616) (toValue!9 thiss!3128 (toCharacters!2 thiss!3128 (toValue!9 thiss!3128 x!372614)))))))

(assert (= (and bs!410811 (not res!832741)) b!1859384))

(declare-fun bs!410812 () Bool)

(assert (= bs!410812 (and m!2282815 m!2282827)))

(assert (=> bs!410812 m!2282819))

(assert (=> bs!410812 m!2282815))

(assert (=> bs!410812 s!221558))

(declare-fun bs!410813 () Bool)

(declare-fun s!221560 () Bool)

(assert (= bs!410813 (and neg-inst!1139 s!221560)))

(declare-fun res!832742 () Bool)

(declare-fun e!1187438 () Bool)

(assert (=> bs!410813 (=> res!832742 e!1187438)))

(assert (=> bs!410813 (= res!832742 (not (= (list!8362 x!372614) (list!8362 (toCharacters!2 thiss!3128 (toValue!9 thiss!3128 x!372614))))))))

(assert (=> bs!410813 (=> true e!1187438)))

(declare-fun b!1859385 () Bool)

(assert (=> b!1859385 (= e!1187438 (= (toValue!9 thiss!3128 x!372614) (toValue!9 thiss!3128 (toCharacters!2 thiss!3128 (toValue!9 thiss!3128 x!372614)))))))

(assert (= (and bs!410813 (not res!832742)) b!1859385))

(declare-fun bs!410814 () Bool)

(assert (= bs!410814 (and m!2282815 m!2282809)))

(assert (=> bs!410814 m!2282809))

(assert (=> bs!410814 m!2282815))

(assert (=> bs!410814 s!221560))

(declare-fun bs!410815 () Bool)

(declare-fun s!221562 () Bool)

(assert (= bs!410815 (and neg-inst!1139 s!221562)))

(declare-fun res!832743 () Bool)

(declare-fun e!1187439 () Bool)

(assert (=> bs!410815 (=> res!832743 e!1187439)))

(assert (=> bs!410815 (= res!832743 (not (= (list!8362 (toCharacters!2 thiss!3128 (toValue!9 thiss!3128 x!372614))) (list!8362 (toCharacters!2 thiss!3128 (toValue!9 thiss!3128 x!372614))))))))

(assert (=> bs!410815 (=> true e!1187439)))

(declare-fun b!1859386 () Bool)

(assert (=> b!1859386 (= e!1187439 (= (toValue!9 thiss!3128 (toCharacters!2 thiss!3128 (toValue!9 thiss!3128 x!372614))) (toValue!9 thiss!3128 (toCharacters!2 thiss!3128 (toValue!9 thiss!3128 x!372614)))))))

(assert (= (and bs!410815 (not res!832743)) b!1859386))

(assert (=> m!2282815 s!221562))

(declare-fun bs!410816 () Bool)

(declare-fun s!221564 () Bool)

(assert (= bs!410816 (and neg-inst!1139 s!221564)))

(declare-fun res!832744 () Bool)

(declare-fun e!1187440 () Bool)

(assert (=> bs!410816 (=> res!832744 e!1187440)))

(assert (=> bs!410816 (= res!832744 (not (= (list!8362 (toCharacters!2 thiss!3128 (toValue!9 thiss!3128 x!372614))) (list!8362 x!372616))))))

(assert (=> bs!410816 (=> true e!1187440)))

(declare-fun b!1859387 () Bool)

(assert (=> b!1859387 (= e!1187440 (= (toValue!9 thiss!3128 (toCharacters!2 thiss!3128 (toValue!9 thiss!3128 x!372614))) (toValue!9 thiss!3128 x!372616)))))

(assert (= (and bs!410816 (not res!832744)) b!1859387))

(assert (=> bs!410812 m!2282815))

(assert (=> bs!410812 m!2282819))

(assert (=> bs!410812 s!221564))

(declare-fun bs!410817 () Bool)

(declare-fun s!221566 () Bool)

(assert (= bs!410817 (and neg-inst!1139 s!221566)))

(declare-fun res!832745 () Bool)

(declare-fun e!1187441 () Bool)

(assert (=> bs!410817 (=> res!832745 e!1187441)))

(assert (=> bs!410817 (= res!832745 (not (= (list!8362 (toCharacters!2 thiss!3128 (toValue!9 thiss!3128 x!372614))) (list!8362 x!372614))))))

(assert (=> bs!410817 (=> true e!1187441)))

(declare-fun b!1859388 () Bool)

(assert (=> b!1859388 (= e!1187441 (= (toValue!9 thiss!3128 (toCharacters!2 thiss!3128 (toValue!9 thiss!3128 x!372614))) (toValue!9 thiss!3128 x!372614)))))

(assert (= (and bs!410817 (not res!832745)) b!1859388))

(assert (=> bs!410814 m!2282815))

(assert (=> bs!410814 m!2282809))

(assert (=> bs!410814 s!221566))

(assert (=> m!2282815 s!221562))

(declare-fun bs!410818 () Bool)

(declare-fun s!221568 () Bool)

(assert (= bs!410818 (and neg-inst!1139 s!221568)))

(declare-fun res!832746 () Bool)

(declare-fun e!1187442 () Bool)

(assert (=> bs!410818 (=> res!832746 e!1187442)))

(assert (=> bs!410818 (= res!832746 (not (= (list!8362 (toCharacters!2 thiss!3128 (toValue!9 thiss!3128 x!372614))) (list!8362 x!372615))))))

(assert (=> bs!410818 (=> true e!1187442)))

(declare-fun b!1859389 () Bool)

(assert (=> b!1859389 (= e!1187442 (= (toValue!9 thiss!3128 (toCharacters!2 thiss!3128 (toValue!9 thiss!3128 x!372614))) (toValue!9 thiss!3128 x!372615)))))

(assert (= (and bs!410818 (not res!832746)) b!1859389))

(declare-fun bs!410819 () Bool)

(assert (= bs!410819 (and m!2282817 m!2282815)))

(assert (=> bs!410819 m!2282815))

(assert (=> bs!410819 m!2282817))

(assert (=> bs!410819 s!221568))

(declare-fun bs!410820 () Bool)

(declare-fun s!221570 () Bool)

(assert (= bs!410820 (and neg-inst!1139 s!221570)))

(declare-fun res!832747 () Bool)

(declare-fun e!1187443 () Bool)

(assert (=> bs!410820 (=> res!832747 e!1187443)))

(assert (=> bs!410820 (= res!832747 (not (= (list!8362 x!372616) (list!8362 x!372615))))))

(assert (=> bs!410820 (=> true e!1187443)))

(declare-fun b!1859390 () Bool)

(assert (=> b!1859390 (= e!1187443 (= (toValue!9 thiss!3128 x!372616) (toValue!9 thiss!3128 x!372615)))))

(assert (= (and bs!410820 (not res!832747)) b!1859390))

(declare-fun bs!410821 () Bool)

(assert (= bs!410821 (and m!2282817 m!2282827)))

(assert (=> bs!410821 m!2282819))

(assert (=> bs!410821 m!2282817))

(assert (=> bs!410821 s!221570))

(declare-fun bs!410822 () Bool)

(declare-fun s!221572 () Bool)

(assert (= bs!410822 (and neg-inst!1139 s!221572)))

(declare-fun res!832748 () Bool)

(declare-fun e!1187444 () Bool)

(assert (=> bs!410822 (=> res!832748 e!1187444)))

(assert (=> bs!410822 (= res!832748 (not (= (list!8362 x!372614) (list!8362 x!372615))))))

(assert (=> bs!410822 (=> true e!1187444)))

(declare-fun b!1859391 () Bool)

(assert (=> b!1859391 (= e!1187444 (= (toValue!9 thiss!3128 x!372614) (toValue!9 thiss!3128 x!372615)))))

(assert (= (and bs!410822 (not res!832748)) b!1859391))

(declare-fun bs!410823 () Bool)

(assert (= bs!410823 (and m!2282817 m!2282809)))

(assert (=> bs!410823 m!2282809))

(assert (=> bs!410823 m!2282817))

(assert (=> bs!410823 s!221572))

(declare-fun bs!410824 () Bool)

(declare-fun s!221574 () Bool)

(assert (= bs!410824 (and neg-inst!1139 s!221574)))

(declare-fun res!832749 () Bool)

(declare-fun e!1187445 () Bool)

(assert (=> bs!410824 (=> res!832749 e!1187445)))

(assert (=> bs!410824 (= res!832749 (not (= (list!8362 x!372615) (list!8362 x!372615))))))

(assert (=> bs!410824 (=> true e!1187445)))

(declare-fun b!1859392 () Bool)

(assert (=> b!1859392 (= e!1187445 (= (toValue!9 thiss!3128 x!372615) (toValue!9 thiss!3128 x!372615)))))

(assert (= (and bs!410824 (not res!832749)) b!1859392))

(assert (=> m!2282817 s!221574))

(declare-fun bs!410825 () Bool)

(declare-fun s!221576 () Bool)

(assert (= bs!410825 (and neg-inst!1139 s!221576)))

(declare-fun res!832750 () Bool)

(declare-fun e!1187446 () Bool)

(assert (=> bs!410825 (=> res!832750 e!1187446)))

(assert (=> bs!410825 (= res!832750 (not (= (list!8362 x!372615) (list!8362 (toCharacters!2 thiss!3128 (toValue!9 thiss!3128 x!372614))))))))

(assert (=> bs!410825 (=> true e!1187446)))

(declare-fun b!1859393 () Bool)

(assert (=> b!1859393 (= e!1187446 (= (toValue!9 thiss!3128 x!372615) (toValue!9 thiss!3128 (toCharacters!2 thiss!3128 (toValue!9 thiss!3128 x!372614)))))))

(assert (= (and bs!410825 (not res!832750)) b!1859393))

(assert (=> bs!410819 m!2282817))

(assert (=> bs!410819 m!2282815))

(assert (=> bs!410819 s!221576))

(declare-fun bs!410826 () Bool)

(declare-fun s!221578 () Bool)

(assert (= bs!410826 (and neg-inst!1139 s!221578)))

(declare-fun res!832751 () Bool)

(declare-fun e!1187447 () Bool)

(assert (=> bs!410826 (=> res!832751 e!1187447)))

(assert (=> bs!410826 (= res!832751 (not (= (list!8362 x!372615) (list!8362 x!372616))))))

(assert (=> bs!410826 (=> true e!1187447)))

(declare-fun b!1859394 () Bool)

(assert (=> b!1859394 (= e!1187447 (= (toValue!9 thiss!3128 x!372615) (toValue!9 thiss!3128 x!372616)))))

(assert (= (and bs!410826 (not res!832751)) b!1859394))

(assert (=> bs!410821 m!2282817))

(assert (=> bs!410821 m!2282819))

(assert (=> bs!410821 s!221578))

(declare-fun bs!410827 () Bool)

(declare-fun s!221580 () Bool)

(assert (= bs!410827 (and neg-inst!1139 s!221580)))

(declare-fun res!832752 () Bool)

(declare-fun e!1187448 () Bool)

(assert (=> bs!410827 (=> res!832752 e!1187448)))

(assert (=> bs!410827 (= res!832752 (not (= (list!8362 x!372615) (list!8362 x!372614))))))

(assert (=> bs!410827 (=> true e!1187448)))

(declare-fun b!1859395 () Bool)

(assert (=> b!1859395 (= e!1187448 (= (toValue!9 thiss!3128 x!372615) (toValue!9 thiss!3128 x!372614)))))

(assert (= (and bs!410827 (not res!832752)) b!1859395))

(assert (=> bs!410823 m!2282817))

(assert (=> bs!410823 m!2282809))

(assert (=> bs!410823 s!221580))

(assert (=> m!2282817 s!221574))

(assert (=> m!2282811 s!221554))

(declare-fun bs!410828 () Bool)

(assert (= bs!410828 (and m!2282811 m!2282827)))

(assert (=> bs!410828 s!221552))

(declare-fun bs!410829 () Bool)

(assert (= bs!410829 (and m!2282811 m!2282809)))

(assert (=> bs!410829 s!221554))

(declare-fun bs!410830 () Bool)

(assert (= bs!410830 (and m!2282811 m!2282817)))

(assert (=> bs!410830 s!221580))

(declare-fun bs!410831 () Bool)

(assert (= bs!410831 (and m!2282811 m!2282815)))

(assert (=> bs!410831 s!221566))

(assert (=> bs!410830 s!221572))

(assert (=> m!2282811 s!221554))

(assert (=> bs!410828 s!221556))

(assert (=> bs!410829 s!221554))

(assert (=> bs!410831 s!221560))

(assert (=> m!2282825 s!221574))

(declare-fun bs!410832 () Bool)

(assert (= bs!410832 (and m!2282825 m!2282827)))

(assert (=> bs!410832 s!221570))

(declare-fun bs!410833 () Bool)

(assert (= bs!410833 (and m!2282825 m!2282809 m!2282811)))

(assert (=> bs!410833 s!221572))

(declare-fun bs!410834 () Bool)

(assert (= bs!410834 (and m!2282825 m!2282817)))

(assert (=> bs!410834 s!221574))

(declare-fun bs!410835 () Bool)

(assert (= bs!410835 (and m!2282825 m!2282815)))

(assert (=> bs!410835 s!221568))

(assert (=> m!2282825 s!221574))

(assert (=> bs!410833 s!221580))

(assert (=> bs!410832 s!221578))

(assert (=> bs!410834 s!221574))

(assert (=> bs!410835 s!221576))

(declare-fun bs!410836 () Bool)

(assert (= bs!410836 (and m!2282819 m!2282827)))

(assert (=> bs!410836 s!221550))

(assert (=> m!2282819 s!221550))

(declare-fun bs!410837 () Bool)

(assert (= bs!410837 (and m!2282819 m!2282815)))

(assert (=> bs!410837 s!221564))

(declare-fun bs!410838 () Bool)

(assert (= bs!410838 (and m!2282819 m!2282809 m!2282811)))

(assert (=> bs!410838 s!221556))

(declare-fun bs!410839 () Bool)

(assert (= bs!410839 (and m!2282819 m!2282817 m!2282825)))

(assert (=> bs!410839 s!221578))

(assert (=> bs!410836 s!221550))

(assert (=> m!2282819 s!221550))

(assert (=> bs!410839 s!221570))

(assert (=> bs!410838 s!221552))

(assert (=> bs!410837 s!221558))

(declare-fun bs!410840 () Bool)

(assert (= bs!410840 (and neg-inst!1139 b!1859367)))

(assert (=> bs!410840 (= true inst!1139)))

(declare-fun res!832735 () Bool)

(declare-fun e!1187428 () Bool)

(assert (=> start!185674 (=> res!832735 e!1187428)))

(declare-fun lambda!73399 () Int)

(declare-fun Forall!967 (Int) Bool)

(assert (=> start!185674 (= res!832735 (not (Forall!967 lambda!73399)))))

(assert (=> start!185674 (= (Forall!967 lambda!73399) inst!1138)))

(assert (=> start!185674 (not e!1187428)))

(assert (=> start!185674 true))

(declare-fun lambda!73402 () Int)

(declare-fun Forall2!596 (Int) Bool)

(assert (=> b!1859367 (= e!1187428 (Forall2!596 lambda!73402))))

(assert (=> b!1859367 (= (Forall2!596 lambda!73402) inst!1139)))

(declare-fun lambda!73400 () Int)

(declare-fun lambda!73401 () Int)

(declare-fun semiInverseModEq!1497 (Int Int) Bool)

(assert (=> b!1859367 (= (semiInverseModEq!1497 lambda!73400 lambda!73401) (Forall!967 lambda!73399))))

(assert (= neg-inst!1138 inst!1138))

(assert (= (and start!185674 (not res!832735)) b!1859367))

(assert (= neg-inst!1139 inst!1139))

(declare-fun m!2282833 () Bool)

(assert (=> start!185674 m!2282833))

(assert (=> start!185674 m!2282833))

(declare-fun m!2282835 () Bool)

(assert (=> b!1859367 m!2282835))

(assert (=> b!1859367 m!2282835))

(declare-fun m!2282837 () Bool)

(assert (=> b!1859367 m!2282837))

(assert (=> b!1859367 m!2282833))

(push 1)

(assert (not bs!410827))

(assert (not b!1859384))

(assert (not bs!410806))

(assert (not b!1859389))

(assert (not b!1859367))

(assert (not b!1859381))

(assert (not b!1859380))

(assert (not bs!410809))

(assert (not bs!410816))

(assert (not bs!410810))

(assert (not bs!410824))

(assert (not bs!410825))

(assert (not b!1859385))

(assert (not b!1859387))

(assert (not b!1859391))

(assert (not b!1859383))

(assert (not bs!410820))

(assert (not b!1859394))

(assert (not bs!410818))

(assert (not bs!410804))

(assert (not bs!410807))

(assert (not bs!410826))

(assert (not b!1859393))

(assert (not b!1859376))

(assert (not start!185674))

(assert (not bs!410811))

(assert (not b!1859378))

(assert (not b!1859395))

(assert (not b!1859390))

(assert (not b!1859382))

(assert (not b!1859377))

(assert (not bs!410817))

(assert (not b!1859392))

(assert (not bs!410815))

(assert (not b!1859386))

(assert (not b!1859379))

(assert (not bs!410822))

(assert (not b!1859388))

(assert (not bs!410813))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!567309 () Bool)

(declare-fun efficientList!237 (BalanceConc!13564) List!20700)

(assert (=> d!567309 (= (toValue!9 thiss!3128 (toCharacters!2 thiss!3128 (toValue!9 thiss!3128 x!372614))) (WhitespaceValue!7602 (efficientList!237 (toCharacters!2 thiss!3128 (toValue!9 thiss!3128 x!372614)))))))

(declare-fun bs!410876 () Bool)

(assert (= bs!410876 d!567309))

(assert (=> bs!410876 m!2282813))

(declare-fun m!2282873 () Bool)

(assert (=> bs!410876 m!2282873))

(assert (=> b!1859386 d!567309))

(declare-fun d!567311 () Bool)

(declare-fun list!8364 (Conc!6817) List!20700)

(assert (=> d!567311 (= (list!8362 x!372615) (list!8364 (c!302764 x!372615)))))

(declare-fun bs!410877 () Bool)

(assert (= bs!410877 d!567311))

(declare-fun m!2282875 () Bool)

(assert (=> bs!410877 m!2282875))

(assert (=> bs!410825 d!567311))

(declare-fun d!567313 () Bool)

(assert (=> d!567313 (= (list!8362 (toCharacters!2 thiss!3128 (toValue!9 thiss!3128 x!372614))) (list!8364 (c!302764 (toCharacters!2 thiss!3128 (toValue!9 thiss!3128 x!372614)))))))

(declare-fun bs!410878 () Bool)

(assert (= bs!410878 d!567313))

(declare-fun m!2282877 () Bool)

(assert (=> bs!410878 m!2282877))

(assert (=> bs!410825 d!567313))

(declare-fun d!567315 () Bool)

(assert (=> d!567315 (= (toValue!9 thiss!3128 x!372614) (WhitespaceValue!7602 (efficientList!237 x!372614)))))

(declare-fun bs!410879 () Bool)

(assert (= bs!410879 d!567315))

(declare-fun m!2282879 () Bool)

(assert (=> bs!410879 m!2282879))

(assert (=> b!1859383 d!567315))

(declare-fun d!567317 () Bool)

(assert (=> d!567317 (= (toValue!9 thiss!3128 x!372616) (WhitespaceValue!7602 (efficientList!237 x!372616)))))

(declare-fun bs!410880 () Bool)

(assert (= bs!410880 d!567317))

(declare-fun m!2282881 () Bool)

(assert (=> bs!410880 m!2282881))

(assert (=> b!1859383 d!567317))

(declare-fun d!567319 () Bool)

(assert (=> d!567319 (= (list!8362 x!372616) (list!8364 (c!302764 x!372616)))))

(declare-fun bs!410881 () Bool)

(assert (= bs!410881 d!567319))

(declare-fun m!2282883 () Bool)

(assert (=> bs!410881 m!2282883))

(assert (=> bs!410806 d!567319))

(assert (=> bs!410820 d!567319))

(assert (=> bs!410820 d!567311))

(declare-fun d!567321 () Bool)

(assert (=> d!567321 (= (toValue!9 thiss!3128 x!372615) (WhitespaceValue!7602 (efficientList!237 x!372615)))))

(declare-fun bs!410882 () Bool)

(assert (= bs!410882 d!567321))

(declare-fun m!2282885 () Bool)

(assert (=> bs!410882 m!2282885))

(assert (=> b!1859393 d!567321))

(assert (=> b!1859393 d!567309))

(assert (=> b!1859380 d!567317))

(assert (=> b!1859390 d!567317))

(assert (=> b!1859390 d!567321))

(assert (=> bs!410816 d!567313))

(assert (=> bs!410816 d!567319))

(assert (=> bs!410818 d!567313))

(assert (=> bs!410818 d!567311))

(assert (=> b!1859382 d!567315))

(assert (=> bs!410815 d!567313))

(assert (=> b!1859389 d!567309))

(assert (=> b!1859389 d!567321))

(assert (=> b!1859392 d!567321))

(declare-fun d!567323 () Bool)

(assert (=> d!567323 (= (list!8362 x!372614) (list!8364 (c!302764 x!372614)))))

(declare-fun bs!410883 () Bool)

(assert (= bs!410883 d!567323))

(declare-fun m!2282887 () Bool)

(assert (=> bs!410883 m!2282887))

(assert (=> bs!410810 d!567323))

(assert (=> bs!410810 d!567319))

(assert (=> b!1859391 d!567315))

(assert (=> b!1859391 d!567321))

(assert (=> b!1859381 d!567317))

(assert (=> b!1859381 d!567315))

(assert (=> b!1859388 d!567309))

(assert (=> b!1859388 d!567315))

(assert (=> bs!410813 d!567323))

(assert (=> bs!410813 d!567313))

(assert (=> bs!410827 d!567311))

(assert (=> bs!410827 d!567323))

(assert (=> bs!410824 d!567311))

(assert (=> b!1859385 d!567315))

(assert (=> b!1859385 d!567309))

(assert (=> b!1859395 d!567321))

(assert (=> b!1859395 d!567315))

(assert (=> bs!410809 d!567323))

(assert (=> bs!410826 d!567311))

(assert (=> bs!410826 d!567319))

(assert (=> bs!410811 d!567319))

(assert (=> bs!410811 d!567313))

(assert (=> bs!410807 d!567319))

(assert (=> bs!410807 d!567323))

(assert (=> b!1859387 d!567309))

(assert (=> b!1859387 d!567317))

(assert (=> bs!410822 d!567323))

(assert (=> bs!410822 d!567311))

(assert (=> b!1859384 d!567317))

(assert (=> b!1859384 d!567309))

(assert (=> bs!410817 d!567313))

(assert (=> bs!410817 d!567323))

(assert (=> b!1859394 d!567321))

(assert (=> b!1859394 d!567317))

(declare-fun bs!410884 () Bool)

(assert (= bs!410884 (and m!2282827 b!1859380)))

(assert (=> bs!410884 m!2282827))

(assert (=> bs!410884 m!2282827))

(declare-fun bs!410885 () Bool)

(assert (= bs!410885 (and m!2282809 m!2282827 b!1859381)))

(assert (=> bs!410885 m!2282827))

(assert (=> bs!410885 m!2282811))

(declare-fun bs!410886 () Bool)

(assert (= bs!410886 (and m!2282809 b!1859382)))

(assert (=> bs!410886 m!2282811))

(assert (=> bs!410886 m!2282811))

(declare-fun bs!410887 () Bool)

(assert (= bs!410887 (and m!2282809 m!2282827 b!1859383)))

(assert (=> bs!410887 m!2282811))

(assert (=> bs!410887 m!2282827))

(declare-fun bs!410888 () Bool)

(assert (= bs!410888 (and m!2282815 m!2282827 b!1859384)))

(assert (=> bs!410888 m!2282827))

(declare-fun m!2282889 () Bool)

(assert (=> bs!410888 m!2282889))

(declare-fun bs!410889 () Bool)

(assert (= bs!410889 (and m!2282815 m!2282809 b!1859385)))

(assert (=> bs!410889 m!2282811))

(assert (=> bs!410889 m!2282889))

(declare-fun bs!410890 () Bool)

(assert (= bs!410890 (and m!2282815 b!1859386)))

(assert (=> bs!410890 m!2282889))

(assert (=> bs!410890 m!2282889))

(declare-fun bs!410891 () Bool)

(assert (= bs!410891 (and m!2282815 m!2282827 b!1859387)))

(assert (=> bs!410891 m!2282889))

(assert (=> bs!410891 m!2282827))

(declare-fun bs!410892 () Bool)

(assert (= bs!410892 (and m!2282815 m!2282809 b!1859388)))

(assert (=> bs!410892 m!2282889))

(assert (=> bs!410892 m!2282811))

(declare-fun bs!410893 () Bool)

(assert (= bs!410893 (and m!2282817 m!2282815 b!1859389)))

(assert (=> bs!410893 m!2282889))

(assert (=> bs!410893 m!2282825))

(declare-fun bs!410894 () Bool)

(assert (= bs!410894 (and m!2282817 m!2282827 b!1859390)))

(assert (=> bs!410894 m!2282827))

(assert (=> bs!410894 m!2282825))

(declare-fun bs!410895 () Bool)

(assert (= bs!410895 (and m!2282817 m!2282809 b!1859391)))

(assert (=> bs!410895 m!2282811))

(assert (=> bs!410895 m!2282825))

(declare-fun bs!410896 () Bool)

(assert (= bs!410896 (and m!2282817 b!1859392)))

(assert (=> bs!410896 m!2282825))

(assert (=> bs!410896 m!2282825))

(declare-fun bs!410897 () Bool)

(assert (= bs!410897 (and m!2282817 m!2282815 b!1859393)))

(assert (=> bs!410897 m!2282825))

(assert (=> bs!410897 m!2282889))

(declare-fun bs!410898 () Bool)

(assert (= bs!410898 (and m!2282817 m!2282827 b!1859394)))

(assert (=> bs!410898 m!2282825))

(assert (=> bs!410898 m!2282827))

(declare-fun bs!410899 () Bool)

(assert (= bs!410899 (and m!2282817 m!2282809 b!1859395)))

(assert (=> bs!410899 m!2282825))

(assert (=> bs!410899 m!2282811))

(push 1)

(assert (not d!567311))

(assert (not bs!410804))

(assert (not b!1859376))

(assert (not d!567313))

(assert (not b!1859367))

(assert (not d!567319))

(assert (not b!1859377))

(assert (not b!1859379))

(assert (not start!185674))

(assert (not d!567321))

(assert (not b!1859378))

(assert (not d!567317))

(assert (not d!567323))

(assert (not d!567309))

(assert (not d!567315))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!567341 () Bool)

(declare-fun lt!717545 () List!20700)

(assert (=> d!567341 (= lt!717545 (list!8362 (toCharacters!2 thiss!3128 (toValue!9 thiss!3128 x!372614))))))

(declare-fun efficientList!239 (Conc!6817 List!20700) List!20700)

(declare-fun efficientList$default$2!81 (Conc!6817) List!20700)

(assert (=> d!567341 (= lt!717545 (efficientList!239 (c!302764 (toCharacters!2 thiss!3128 (toValue!9 thiss!3128 x!372614))) (efficientList$default$2!81 (c!302764 (toCharacters!2 thiss!3128 (toValue!9 thiss!3128 x!372614))))))))

(assert (=> d!567341 (= (efficientList!237 (toCharacters!2 thiss!3128 (toValue!9 thiss!3128 x!372614))) lt!717545)))

(declare-fun bs!410924 () Bool)

(assert (= bs!410924 d!567341))

(assert (=> bs!410924 m!2282813))

(assert (=> bs!410924 m!2282815))

(declare-fun m!2282909 () Bool)

(assert (=> bs!410924 m!2282909))

(assert (=> bs!410924 m!2282909))

(declare-fun m!2282911 () Bool)

(assert (=> bs!410924 m!2282911))

(assert (=> d!567309 d!567341))

(declare-fun b!1859449 () Bool)

(declare-fun e!1187490 () List!20700)

(assert (=> b!1859449 (= e!1187490 Nil!20620)))

(declare-fun b!1859451 () Bool)

(declare-fun e!1187491 () List!20700)

(declare-fun list!8366 (IArray!13639) List!20700)

(assert (=> b!1859451 (= e!1187491 (list!8366 (xs!9693 (c!302764 x!372616))))))

(declare-fun b!1859450 () Bool)

(assert (=> b!1859450 (= e!1187490 e!1187491)))

(declare-fun c!302771 () Bool)

(assert (=> b!1859450 (= c!302771 (is-Leaf!9994 (c!302764 x!372616)))))

(declare-fun b!1859452 () Bool)

(declare-fun ++!5564 (List!20700 List!20700) List!20700)

(assert (=> b!1859452 (= e!1187491 (++!5564 (list!8364 (left!16553 (c!302764 x!372616))) (list!8364 (right!16883 (c!302764 x!372616)))))))

(declare-fun d!567343 () Bool)

(declare-fun c!302770 () Bool)

(assert (=> d!567343 (= c!302770 (is-Empty!6817 (c!302764 x!372616)))))

(assert (=> d!567343 (= (list!8364 (c!302764 x!372616)) e!1187490)))

(assert (= (and d!567343 c!302770) b!1859449))

(assert (= (and d!567343 (not c!302770)) b!1859450))

(assert (= (and b!1859450 c!302771) b!1859451))

(assert (= (and b!1859450 (not c!302771)) b!1859452))

(declare-fun m!2282913 () Bool)

(assert (=> b!1859451 m!2282913))

(declare-fun m!2282915 () Bool)

(assert (=> b!1859452 m!2282915))

(declare-fun m!2282917 () Bool)

(assert (=> b!1859452 m!2282917))

(assert (=> b!1859452 m!2282915))

(assert (=> b!1859452 m!2282917))

(declare-fun m!2282919 () Bool)

(assert (=> b!1859452 m!2282919))

(assert (=> d!567319 d!567343))

(declare-fun d!567345 () Bool)

(declare-fun lt!717546 () List!20700)

(assert (=> d!567345 (= lt!717546 (list!8362 x!372616))))

(assert (=> d!567345 (= lt!717546 (efficientList!239 (c!302764 x!372616) (efficientList$default$2!81 (c!302764 x!372616))))))

(assert (=> d!567345 (= (efficientList!237 x!372616) lt!717546)))

(declare-fun bs!410925 () Bool)

(assert (= bs!410925 d!567345))

(assert (=> bs!410925 m!2282819))

(declare-fun m!2282921 () Bool)

(assert (=> bs!410925 m!2282921))

(assert (=> bs!410925 m!2282921))

(declare-fun m!2282923 () Bool)

(assert (=> bs!410925 m!2282923))

(assert (=> d!567317 d!567345))

(declare-fun b!1859453 () Bool)

(declare-fun e!1187492 () List!20700)

(assert (=> b!1859453 (= e!1187492 Nil!20620)))

(declare-fun b!1859455 () Bool)

(declare-fun e!1187493 () List!20700)

(assert (=> b!1859455 (= e!1187493 (list!8366 (xs!9693 (c!302764 x!372615))))))

(declare-fun b!1859454 () Bool)

(assert (=> b!1859454 (= e!1187492 e!1187493)))

(declare-fun c!302773 () Bool)

(assert (=> b!1859454 (= c!302773 (is-Leaf!9994 (c!302764 x!372615)))))

(declare-fun b!1859456 () Bool)

(assert (=> b!1859456 (= e!1187493 (++!5564 (list!8364 (left!16553 (c!302764 x!372615))) (list!8364 (right!16883 (c!302764 x!372615)))))))

(declare-fun d!567347 () Bool)

(declare-fun c!302772 () Bool)

(assert (=> d!567347 (= c!302772 (is-Empty!6817 (c!302764 x!372615)))))

(assert (=> d!567347 (= (list!8364 (c!302764 x!372615)) e!1187492)))

(assert (= (and d!567347 c!302772) b!1859453))

(assert (= (and d!567347 (not c!302772)) b!1859454))

(assert (= (and b!1859454 c!302773) b!1859455))

(assert (= (and b!1859454 (not c!302773)) b!1859456))

(declare-fun m!2282925 () Bool)

(assert (=> b!1859455 m!2282925))

(declare-fun m!2282927 () Bool)

(assert (=> b!1859456 m!2282927))

(declare-fun m!2282929 () Bool)

(assert (=> b!1859456 m!2282929))

(assert (=> b!1859456 m!2282927))

(assert (=> b!1859456 m!2282929))

(declare-fun m!2282931 () Bool)

(assert (=> b!1859456 m!2282931))

(assert (=> d!567311 d!567347))

(declare-fun b!1859457 () Bool)

(declare-fun e!1187494 () List!20700)

(assert (=> b!1859457 (= e!1187494 Nil!20620)))

(declare-fun b!1859459 () Bool)

(declare-fun e!1187495 () List!20700)

(assert (=> b!1859459 (= e!1187495 (list!8366 (xs!9693 (c!302764 x!372614))))))

(declare-fun b!1859458 () Bool)

(assert (=> b!1859458 (= e!1187494 e!1187495)))

(declare-fun c!302775 () Bool)

(assert (=> b!1859458 (= c!302775 (is-Leaf!9994 (c!302764 x!372614)))))

(declare-fun b!1859460 () Bool)

(assert (=> b!1859460 (= e!1187495 (++!5564 (list!8364 (left!16553 (c!302764 x!372614))) (list!8364 (right!16883 (c!302764 x!372614)))))))

(declare-fun d!567349 () Bool)

(declare-fun c!302774 () Bool)

(assert (=> d!567349 (= c!302774 (is-Empty!6817 (c!302764 x!372614)))))

(assert (=> d!567349 (= (list!8364 (c!302764 x!372614)) e!1187494)))

(assert (= (and d!567349 c!302774) b!1859457))

(assert (= (and d!567349 (not c!302774)) b!1859458))

(assert (= (and b!1859458 c!302775) b!1859459))

(assert (= (and b!1859458 (not c!302775)) b!1859460))

(declare-fun m!2282933 () Bool)

(assert (=> b!1859459 m!2282933))

(declare-fun m!2282935 () Bool)

(assert (=> b!1859460 m!2282935))

(declare-fun m!2282937 () Bool)

(assert (=> b!1859460 m!2282937))

(assert (=> b!1859460 m!2282935))

(assert (=> b!1859460 m!2282937))

(declare-fun m!2282939 () Bool)

(assert (=> b!1859460 m!2282939))

(assert (=> d!567323 d!567349))

(declare-fun d!567351 () Bool)

(declare-fun lt!717547 () List!20700)

(assert (=> d!567351 (= lt!717547 (list!8362 x!372614))))

(assert (=> d!567351 (= lt!717547 (efficientList!239 (c!302764 x!372614) (efficientList$default$2!81 (c!302764 x!372614))))))

(assert (=> d!567351 (= (efficientList!237 x!372614) lt!717547)))

(declare-fun bs!410926 () Bool)

(assert (= bs!410926 d!567351))

(assert (=> bs!410926 m!2282809))

(declare-fun m!2282941 () Bool)

(assert (=> bs!410926 m!2282941))

(assert (=> bs!410926 m!2282941))

(declare-fun m!2282943 () Bool)

(assert (=> bs!410926 m!2282943))

(assert (=> d!567315 d!567351))

(declare-fun d!567353 () Bool)

(declare-fun lt!717548 () List!20700)

(assert (=> d!567353 (= lt!717548 (list!8362 x!372615))))

(assert (=> d!567353 (= lt!717548 (efficientList!239 (c!302764 x!372615) (efficientList$default$2!81 (c!302764 x!372615))))))

(assert (=> d!567353 (= (efficientList!237 x!372615) lt!717548)))

(declare-fun bs!410927 () Bool)

(assert (= bs!410927 d!567353))

(assert (=> bs!410927 m!2282817))

(declare-fun m!2282945 () Bool)

(assert (=> bs!410927 m!2282945))

(assert (=> bs!410927 m!2282945))

(declare-fun m!2282947 () Bool)

(assert (=> bs!410927 m!2282947))

(assert (=> d!567321 d!567353))

(declare-fun b!1859461 () Bool)

(declare-fun e!1187496 () List!20700)

(assert (=> b!1859461 (= e!1187496 Nil!20620)))

(declare-fun b!1859463 () Bool)

(declare-fun e!1187497 () List!20700)

(assert (=> b!1859463 (= e!1187497 (list!8366 (xs!9693 (c!302764 (toCharacters!2 thiss!3128 (toValue!9 thiss!3128 x!372614))))))))

(declare-fun b!1859462 () Bool)

(assert (=> b!1859462 (= e!1187496 e!1187497)))

(declare-fun c!302777 () Bool)

(assert (=> b!1859462 (= c!302777 (is-Leaf!9994 (c!302764 (toCharacters!2 thiss!3128 (toValue!9 thiss!3128 x!372614)))))))

(declare-fun b!1859464 () Bool)

(assert (=> b!1859464 (= e!1187497 (++!5564 (list!8364 (left!16553 (c!302764 (toCharacters!2 thiss!3128 (toValue!9 thiss!3128 x!372614))))) (list!8364 (right!16883 (c!302764 (toCharacters!2 thiss!3128 (toValue!9 thiss!3128 x!372614)))))))))

(declare-fun d!567355 () Bool)

(declare-fun c!302776 () Bool)

(assert (=> d!567355 (= c!302776 (is-Empty!6817 (c!302764 (toCharacters!2 thiss!3128 (toValue!9 thiss!3128 x!372614)))))))

(assert (=> d!567355 (= (list!8364 (c!302764 (toCharacters!2 thiss!3128 (toValue!9 thiss!3128 x!372614)))) e!1187496)))

(assert (= (and d!567355 c!302776) b!1859461))

(assert (= (and d!567355 (not c!302776)) b!1859462))

(assert (= (and b!1859462 c!302777) b!1859463))

(assert (= (and b!1859462 (not c!302777)) b!1859464))

(declare-fun m!2282949 () Bool)

(assert (=> b!1859463 m!2282949))

(declare-fun m!2282951 () Bool)

(assert (=> b!1859464 m!2282951))

(declare-fun m!2282953 () Bool)

(assert (=> b!1859464 m!2282953))

(assert (=> b!1859464 m!2282951))

(assert (=> b!1859464 m!2282953))

(declare-fun m!2282955 () Bool)

(assert (=> b!1859464 m!2282955))

(assert (=> d!567313 d!567355))

(push 1)

(assert (not d!567341))

(assert (not bs!410804))

(assert (not d!567353))

(assert (not b!1859376))

(assert (not b!1859367))

(assert (not d!567351))

(assert (not b!1859456))

(assert (not b!1859377))

(assert (not b!1859460))

(assert (not b!1859459))

(assert (not b!1859463))

(assert (not b!1859379))

(assert (not b!1859464))

(assert (not b!1859452))

(assert (not start!185674))

(assert (not b!1859451))

(assert (not b!1859378))

(assert (not d!567345))

(assert (not b!1859455))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(assert (=> d!567353 d!567311))

(declare-fun b!1859501 () Bool)

(declare-fun e!1187516 () List!20700)

(declare-fun lt!717569 () List!20700)

(assert (=> b!1859501 (= e!1187516 lt!717569)))

(declare-fun b!1859502 () Bool)

(declare-datatypes ((Unit!35233 0))(
  ( (Unit!35234) )
))
(declare-fun lt!717565 () Unit!35233)

(declare-fun lt!717566 () Unit!35233)

(assert (=> b!1859502 (= lt!717565 lt!717566)))

(declare-fun call!115663 () List!20700)

(declare-fun lt!717567 () List!20700)

(assert (=> b!1859502 (= (++!5564 (++!5564 lt!717567 lt!717569) (efficientList$default$2!81 (c!302764 x!372615))) (++!5564 lt!717567 call!115663))))

(declare-fun lemmaConcatAssociativity!1096 (List!20700 List!20700 List!20700) Unit!35233)

(assert (=> b!1859502 (= lt!717566 (lemmaConcatAssociativity!1096 lt!717567 lt!717569 (efficientList$default$2!81 (c!302764 x!372615))))))

(assert (=> b!1859502 (= lt!717569 (list!8364 (right!16883 (c!302764 x!372615))))))

(assert (=> b!1859502 (= lt!717567 (list!8364 (left!16553 (c!302764 x!372615))))))

(declare-fun e!1187518 () List!20700)

(assert (=> b!1859502 (= e!1187518 (efficientList!239 (left!16553 (c!302764 x!372615)) (efficientList!239 (right!16883 (c!302764 x!372615)) (efficientList$default$2!81 (c!302764 x!372615)))))))

(declare-fun bm!115658 () Bool)

(declare-fun c!302798 () Bool)

(declare-fun c!302796 () Bool)

(assert (=> bm!115658 (= c!302798 c!302796)))

(assert (=> bm!115658 (= call!115663 (++!5564 e!1187516 (efficientList$default$2!81 (c!302764 x!372615))))))

(declare-fun d!567363 () Bool)

(declare-fun lt!717568 () List!20700)

(assert (=> d!567363 (= lt!717568 (++!5564 (list!8364 (c!302764 x!372615)) (efficientList$default$2!81 (c!302764 x!372615))))))

(declare-fun e!1187517 () List!20700)

(assert (=> d!567363 (= lt!717568 e!1187517)))

(declare-fun c!302797 () Bool)

(assert (=> d!567363 (= c!302797 (is-Empty!6817 (c!302764 x!372615)))))

(assert (=> d!567363 (= (efficientList!239 (c!302764 x!372615) (efficientList$default$2!81 (c!302764 x!372615))) lt!717568)))

(declare-fun b!1859503 () Bool)

(assert (=> b!1859503 (= e!1187517 e!1187518)))

(assert (=> b!1859503 (= c!302796 (is-Leaf!9994 (c!302764 x!372615)))))

(declare-fun b!1859504 () Bool)

(declare-fun efficientList!241 (IArray!13639) List!20700)

(assert (=> b!1859504 (= e!1187516 (efficientList!241 (xs!9693 (c!302764 x!372615))))))

(declare-fun b!1859505 () Bool)

(assert (=> b!1859505 (= e!1187517 (efficientList$default$2!81 (c!302764 x!372615)))))

(declare-fun b!1859506 () Bool)

(assert (=> b!1859506 (= e!1187518 call!115663)))

(assert (= (and d!567363 c!302797) b!1859505))

(assert (= (and d!567363 (not c!302797)) b!1859503))

(assert (= (and b!1859503 c!302796) b!1859506))

(assert (= (and b!1859503 (not c!302796)) b!1859502))

(assert (= (or b!1859506 b!1859502) bm!115658))

(assert (= (and bm!115658 c!302798) b!1859504))

(assert (= (and bm!115658 (not c!302798)) b!1859501))

(assert (=> b!1859502 m!2282945))

(declare-fun m!2283005 () Bool)

(assert (=> b!1859502 m!2283005))

(assert (=> b!1859502 m!2282927))

(declare-fun m!2283007 () Bool)

(assert (=> b!1859502 m!2283007))

(declare-fun m!2283009 () Bool)

(assert (=> b!1859502 m!2283009))

(assert (=> b!1859502 m!2282945))

(declare-fun m!2283011 () Bool)

(assert (=> b!1859502 m!2283011))

(declare-fun m!2283013 () Bool)

(assert (=> b!1859502 m!2283013))

(declare-fun m!2283015 () Bool)

(assert (=> b!1859502 m!2283015))

(assert (=> b!1859502 m!2283009))

(assert (=> b!1859502 m!2282929))

(assert (=> b!1859502 m!2282945))

(assert (=> b!1859502 m!2283013))

(assert (=> bm!115658 m!2282945))

(declare-fun m!2283017 () Bool)

(assert (=> bm!115658 m!2283017))

(assert (=> d!567363 m!2282875))

(assert (=> d!567363 m!2282875))

(assert (=> d!567363 m!2282945))

(declare-fun m!2283019 () Bool)

(assert (=> d!567363 m!2283019))

(declare-fun m!2283021 () Bool)

(assert (=> b!1859504 m!2283021))

(assert (=> d!567353 d!567363))

(declare-fun d!567375 () Bool)

(assert (=> d!567375 (= (efficientList$default$2!81 (c!302764 x!372615)) Nil!20620)))

(assert (=> d!567353 d!567375))

(declare-fun d!567377 () Bool)

(declare-fun c!302801 () Bool)

(assert (=> d!567377 (= c!302801 (is-Node!6817 (c!302764 x!372616)))))

(declare-fun e!1187523 () Bool)

(assert (=> d!567377 (= (inv!27073 (c!302764 x!372616)) e!1187523)))

(declare-fun b!1859513 () Bool)

(declare-fun inv!27077 (Conc!6817) Bool)

(assert (=> b!1859513 (= e!1187523 (inv!27077 (c!302764 x!372616)))))

(declare-fun b!1859514 () Bool)

(declare-fun e!1187524 () Bool)

(assert (=> b!1859514 (= e!1187523 e!1187524)))

(declare-fun res!832793 () Bool)

(assert (=> b!1859514 (= res!832793 (not (is-Leaf!9994 (c!302764 x!372616))))))

(assert (=> b!1859514 (=> res!832793 e!1187524)))

(declare-fun b!1859515 () Bool)

(declare-fun inv!27078 (Conc!6817) Bool)

(assert (=> b!1859515 (= e!1187524 (inv!27078 (c!302764 x!372616)))))

(assert (= (and d!567377 c!302801) b!1859513))

(assert (= (and d!567377 (not c!302801)) b!1859514))

(assert (= (and b!1859514 (not res!832793)) b!1859515))

(declare-fun m!2283023 () Bool)

(assert (=> b!1859513 m!2283023))

(declare-fun m!2283025 () Bool)

(assert (=> b!1859515 m!2283025))

(assert (=> b!1859379 d!567377))

(declare-fun bs!410932 () Bool)

(declare-fun d!567379 () Bool)

(assert (= bs!410932 (and d!567379 start!185674)))

(declare-fun lambda!73423 () Int)

(assert (=> bs!410932 (not (= lambda!73423 lambda!73399))))

(assert (=> d!567379 true))

(declare-fun order!13239 () Int)

(declare-fun order!13237 () Int)

(declare-fun dynLambda!10203 (Int Int) Int)

(declare-fun dynLambda!10204 (Int Int) Int)

(assert (=> d!567379 (< (dynLambda!10203 order!13237 lambda!73400) (dynLambda!10204 order!13239 lambda!73423))))

(assert (=> d!567379 true))

(declare-fun order!13241 () Int)

(declare-fun dynLambda!10205 (Int Int) Int)

(assert (=> d!567379 (< (dynLambda!10205 order!13241 lambda!73401) (dynLambda!10204 order!13239 lambda!73423))))

(assert (=> d!567379 (= (semiInverseModEq!1497 lambda!73400 lambda!73401) (Forall!967 lambda!73423))))

(declare-fun bs!410933 () Bool)

(assert (= bs!410933 d!567379))

(declare-fun m!2283027 () Bool)

(assert (=> bs!410933 m!2283027))

(assert (=> b!1859367 d!567379))

(declare-fun d!567381 () Bool)

(declare-fun isBalanced!2125 (Conc!6817) Bool)

(assert (=> d!567381 (= (inv!27074 x!372615) (isBalanced!2125 (c!302764 x!372615)))))

(declare-fun bs!410934 () Bool)

(assert (= bs!410934 d!567381))

(declare-fun m!2283029 () Bool)

(assert (=> bs!410934 m!2283029))

(assert (=> b!1859367 d!567381))

(assert (=> b!1859367 d!567311))

(declare-fun d!567383 () Bool)

(assert (=> d!567383 (= (inv!27074 x!372616) (isBalanced!2125 (c!302764 x!372616)))))

(declare-fun bs!410935 () Bool)

(assert (= bs!410935 d!567383))

(declare-fun m!2283031 () Bool)

(assert (=> bs!410935 m!2283031))

(assert (=> b!1859367 d!567383))

(assert (=> b!1859367 d!567319))

(declare-fun d!567385 () Bool)

(declare-fun choose!11697 (Int) Bool)

(assert (=> d!567385 (= (Forall2!596 lambda!73402) (choose!11697 lambda!73402))))

(declare-fun bs!410936 () Bool)

(assert (= bs!410936 d!567385))

(declare-fun m!2283033 () Bool)

(assert (=> bs!410936 m!2283033))

(assert (=> b!1859367 d!567385))

(declare-fun d!567387 () Bool)

(declare-fun choose!11698 (Int) Bool)

(assert (=> d!567387 (= (Forall!967 lambda!73399) (choose!11698 lambda!73399))))

(declare-fun bs!410937 () Bool)

(assert (= bs!410937 d!567387))

(declare-fun m!2283035 () Bool)

(assert (=> bs!410937 m!2283035))

(assert (=> b!1859367 d!567387))

(assert (=> d!567341 d!567313))

(declare-fun b!1859520 () Bool)

(declare-fun e!1187525 () List!20700)

(declare-fun lt!717574 () List!20700)

(assert (=> b!1859520 (= e!1187525 lt!717574)))

(declare-fun b!1859521 () Bool)

(declare-fun lt!717570 () Unit!35233)

(declare-fun lt!717571 () Unit!35233)

(assert (=> b!1859521 (= lt!717570 lt!717571)))

(declare-fun call!115664 () List!20700)

(declare-fun lt!717572 () List!20700)

(assert (=> b!1859521 (= (++!5564 (++!5564 lt!717572 lt!717574) (efficientList$default$2!81 (c!302764 (toCharacters!2 thiss!3128 (toValue!9 thiss!3128 x!372614))))) (++!5564 lt!717572 call!115664))))

(assert (=> b!1859521 (= lt!717571 (lemmaConcatAssociativity!1096 lt!717572 lt!717574 (efficientList$default$2!81 (c!302764 (toCharacters!2 thiss!3128 (toValue!9 thiss!3128 x!372614))))))))

(assert (=> b!1859521 (= lt!717574 (list!8364 (right!16883 (c!302764 (toCharacters!2 thiss!3128 (toValue!9 thiss!3128 x!372614))))))))

(assert (=> b!1859521 (= lt!717572 (list!8364 (left!16553 (c!302764 (toCharacters!2 thiss!3128 (toValue!9 thiss!3128 x!372614))))))))

(declare-fun e!1187527 () List!20700)

(assert (=> b!1859521 (= e!1187527 (efficientList!239 (left!16553 (c!302764 (toCharacters!2 thiss!3128 (toValue!9 thiss!3128 x!372614)))) (efficientList!239 (right!16883 (c!302764 (toCharacters!2 thiss!3128 (toValue!9 thiss!3128 x!372614)))) (efficientList$default$2!81 (c!302764 (toCharacters!2 thiss!3128 (toValue!9 thiss!3128 x!372614)))))))))

(declare-fun bm!115659 () Bool)

(declare-fun c!302804 () Bool)

(declare-fun c!302802 () Bool)

(assert (=> bm!115659 (= c!302804 c!302802)))

(assert (=> bm!115659 (= call!115664 (++!5564 e!1187525 (efficientList$default$2!81 (c!302764 (toCharacters!2 thiss!3128 (toValue!9 thiss!3128 x!372614))))))))

(declare-fun d!567389 () Bool)

(declare-fun lt!717573 () List!20700)

(assert (=> d!567389 (= lt!717573 (++!5564 (list!8364 (c!302764 (toCharacters!2 thiss!3128 (toValue!9 thiss!3128 x!372614)))) (efficientList$default$2!81 (c!302764 (toCharacters!2 thiss!3128 (toValue!9 thiss!3128 x!372614))))))))

(declare-fun e!1187526 () List!20700)

(assert (=> d!567389 (= lt!717573 e!1187526)))

(declare-fun c!302803 () Bool)

(assert (=> d!567389 (= c!302803 (is-Empty!6817 (c!302764 (toCharacters!2 thiss!3128 (toValue!9 thiss!3128 x!372614)))))))

(assert (=> d!567389 (= (efficientList!239 (c!302764 (toCharacters!2 thiss!3128 (toValue!9 thiss!3128 x!372614))) (efficientList$default$2!81 (c!302764 (toCharacters!2 thiss!3128 (toValue!9 thiss!3128 x!372614))))) lt!717573)))

(declare-fun b!1859522 () Bool)

(assert (=> b!1859522 (= e!1187526 e!1187527)))

(assert (=> b!1859522 (= c!302802 (is-Leaf!9994 (c!302764 (toCharacters!2 thiss!3128 (toValue!9 thiss!3128 x!372614)))))))

(declare-fun b!1859523 () Bool)

(assert (=> b!1859523 (= e!1187525 (efficientList!241 (xs!9693 (c!302764 (toCharacters!2 thiss!3128 (toValue!9 thiss!3128 x!372614))))))))

(declare-fun b!1859524 () Bool)

(assert (=> b!1859524 (= e!1187526 (efficientList$default$2!81 (c!302764 (toCharacters!2 thiss!3128 (toValue!9 thiss!3128 x!372614)))))))

(declare-fun b!1859525 () Bool)

(assert (=> b!1859525 (= e!1187527 call!115664)))

(assert (= (and d!567389 c!302803) b!1859524))

(assert (= (and d!567389 (not c!302803)) b!1859522))

(assert (= (and b!1859522 c!302802) b!1859525))

(assert (= (and b!1859522 (not c!302802)) b!1859521))

(assert (= (or b!1859525 b!1859521) bm!115659))

(assert (= (and bm!115659 c!302804) b!1859523))

(assert (= (and bm!115659 (not c!302804)) b!1859520))

(assert (=> b!1859521 m!2282909))

(declare-fun m!2283037 () Bool)

(assert (=> b!1859521 m!2283037))

(assert (=> b!1859521 m!2282951))

(declare-fun m!2283039 () Bool)

(assert (=> b!1859521 m!2283039))

(declare-fun m!2283041 () Bool)

(assert (=> b!1859521 m!2283041))

(assert (=> b!1859521 m!2282909))

(declare-fun m!2283043 () Bool)

(assert (=> b!1859521 m!2283043))

(declare-fun m!2283045 () Bool)

(assert (=> b!1859521 m!2283045))

(declare-fun m!2283047 () Bool)

(assert (=> b!1859521 m!2283047))

(assert (=> b!1859521 m!2283041))

(assert (=> b!1859521 m!2282953))

(assert (=> b!1859521 m!2282909))

(assert (=> b!1859521 m!2283045))

(assert (=> bm!115659 m!2282909))

(declare-fun m!2283049 () Bool)

(assert (=> bm!115659 m!2283049))

(assert (=> d!567389 m!2282877))

(assert (=> d!567389 m!2282877))

(assert (=> d!567389 m!2282909))

(declare-fun m!2283051 () Bool)

(assert (=> d!567389 m!2283051))

(declare-fun m!2283053 () Bool)

(assert (=> b!1859523 m!2283053))

(assert (=> d!567341 d!567389))

(declare-fun d!567391 () Bool)

(assert (=> d!567391 (= (efficientList$default$2!81 (c!302764 (toCharacters!2 thiss!3128 (toValue!9 thiss!3128 x!372614)))) Nil!20620)))

(assert (=> d!567341 d!567391))

(assert (=> b!1859377 d!567321))

(assert (=> b!1859377 d!567317))

(assert (=> bs!410804 d!567313))

(declare-fun d!567393 () Bool)

(declare-fun c!302808 () Bool)

(assert (=> d!567393 (= c!302808 (is-WhitespaceValue!7602 (toValue!9 thiss!3128 x!372614)))))

(declare-fun e!1187530 () BalanceConc!13564)

(assert (=> d!567393 (= (toCharacters!2 thiss!3128 (toValue!9 thiss!3128 x!372614)) e!1187530)))

(declare-fun b!1859530 () Bool)

(declare-fun seqFromList!2620 (List!20700) BalanceConc!13564)

(assert (=> b!1859530 (= e!1187530 (seqFromList!2620 (value!115693 (toValue!9 thiss!3128 x!372614))))))

(declare-fun b!1859531 () Bool)

(assert (=> b!1859531 (= e!1187530 (BalanceConc!13565 Empty!6817))))

(assert (= (and d!567393 c!302808) b!1859530))

(assert (= (and d!567393 (not c!302808)) b!1859531))

(declare-fun m!2283055 () Bool)

(assert (=> b!1859530 m!2283055))

(assert (=> bs!410804 d!567393))

(assert (=> bs!410804 d!567315))

(assert (=> bs!410804 d!567323))

(declare-fun d!567395 () Bool)

(declare-fun c!302809 () Bool)

(assert (=> d!567395 (= c!302809 (is-Node!6817 (c!302764 x!372614)))))

(declare-fun e!1187531 () Bool)

(assert (=> d!567395 (= (inv!27073 (c!302764 x!372614)) e!1187531)))

(declare-fun b!1859532 () Bool)

(assert (=> b!1859532 (= e!1187531 (inv!27077 (c!302764 x!372614)))))

(declare-fun b!1859533 () Bool)

(declare-fun e!1187532 () Bool)

(assert (=> b!1859533 (= e!1187531 e!1187532)))

(declare-fun res!832794 () Bool)

(assert (=> b!1859533 (= res!832794 (not (is-Leaf!9994 (c!302764 x!372614))))))

(assert (=> b!1859533 (=> res!832794 e!1187532)))

(declare-fun b!1859534 () Bool)

(assert (=> b!1859534 (= e!1187532 (inv!27078 (c!302764 x!372614)))))

(assert (= (and d!567395 c!302809) b!1859532))

(assert (= (and d!567395 (not c!302809)) b!1859533))

(assert (= (and b!1859533 (not res!832794)) b!1859534))

(declare-fun m!2283057 () Bool)

(assert (=> b!1859532 m!2283057))

(declare-fun m!2283059 () Bool)

(assert (=> b!1859534 m!2283059))

(assert (=> b!1859376 d!567395))

(declare-fun d!567397 () Bool)

(declare-fun c!302810 () Bool)

(assert (=> d!567397 (= c!302810 (is-Node!6817 (c!302764 x!372615)))))

(declare-fun e!1187533 () Bool)

(assert (=> d!567397 (= (inv!27073 (c!302764 x!372615)) e!1187533)))

(declare-fun b!1859535 () Bool)

(assert (=> b!1859535 (= e!1187533 (inv!27077 (c!302764 x!372615)))))

(declare-fun b!1859536 () Bool)

(declare-fun e!1187534 () Bool)

(assert (=> b!1859536 (= e!1187533 e!1187534)))

(declare-fun res!832795 () Bool)

(assert (=> b!1859536 (= res!832795 (not (is-Leaf!9994 (c!302764 x!372615))))))

(assert (=> b!1859536 (=> res!832795 e!1187534)))

(declare-fun b!1859537 () Bool)

(assert (=> b!1859537 (= e!1187534 (inv!27078 (c!302764 x!372615)))))

(assert (= (and d!567397 c!302810) b!1859535))

(assert (= (and d!567397 (not c!302810)) b!1859536))

(assert (= (and b!1859536 (not res!832795)) b!1859537))

(declare-fun m!2283061 () Bool)

(assert (=> b!1859535 m!2283061))

(declare-fun m!2283063 () Bool)

(assert (=> b!1859537 m!2283063))

(assert (=> b!1859378 d!567397))

(assert (=> d!567345 d!567319))

(declare-fun b!1859538 () Bool)

(declare-fun e!1187535 () List!20700)

(declare-fun lt!717579 () List!20700)

(assert (=> b!1859538 (= e!1187535 lt!717579)))

(declare-fun b!1859539 () Bool)

(declare-fun lt!717575 () Unit!35233)

(declare-fun lt!717576 () Unit!35233)

(assert (=> b!1859539 (= lt!717575 lt!717576)))

(declare-fun call!115665 () List!20700)

(declare-fun lt!717577 () List!20700)

(assert (=> b!1859539 (= (++!5564 (++!5564 lt!717577 lt!717579) (efficientList$default$2!81 (c!302764 x!372616))) (++!5564 lt!717577 call!115665))))

(assert (=> b!1859539 (= lt!717576 (lemmaConcatAssociativity!1096 lt!717577 lt!717579 (efficientList$default$2!81 (c!302764 x!372616))))))

(assert (=> b!1859539 (= lt!717579 (list!8364 (right!16883 (c!302764 x!372616))))))

(assert (=> b!1859539 (= lt!717577 (list!8364 (left!16553 (c!302764 x!372616))))))

(declare-fun e!1187537 () List!20700)

(assert (=> b!1859539 (= e!1187537 (efficientList!239 (left!16553 (c!302764 x!372616)) (efficientList!239 (right!16883 (c!302764 x!372616)) (efficientList$default$2!81 (c!302764 x!372616)))))))

(declare-fun bm!115660 () Bool)

(declare-fun c!302813 () Bool)

(declare-fun c!302811 () Bool)

(assert (=> bm!115660 (= c!302813 c!302811)))

(assert (=> bm!115660 (= call!115665 (++!5564 e!1187535 (efficientList$default$2!81 (c!302764 x!372616))))))

(declare-fun d!567399 () Bool)

(declare-fun lt!717578 () List!20700)

(assert (=> d!567399 (= lt!717578 (++!5564 (list!8364 (c!302764 x!372616)) (efficientList$default$2!81 (c!302764 x!372616))))))

(declare-fun e!1187536 () List!20700)

(assert (=> d!567399 (= lt!717578 e!1187536)))

(declare-fun c!302812 () Bool)

(assert (=> d!567399 (= c!302812 (is-Empty!6817 (c!302764 x!372616)))))

(assert (=> d!567399 (= (efficientList!239 (c!302764 x!372616) (efficientList$default$2!81 (c!302764 x!372616))) lt!717578)))

(declare-fun b!1859540 () Bool)

(assert (=> b!1859540 (= e!1187536 e!1187537)))

(assert (=> b!1859540 (= c!302811 (is-Leaf!9994 (c!302764 x!372616)))))

(declare-fun b!1859541 () Bool)

(assert (=> b!1859541 (= e!1187535 (efficientList!241 (xs!9693 (c!302764 x!372616))))))

(declare-fun b!1859542 () Bool)

(assert (=> b!1859542 (= e!1187536 (efficientList$default$2!81 (c!302764 x!372616)))))

(declare-fun b!1859543 () Bool)

(assert (=> b!1859543 (= e!1187537 call!115665)))

(assert (= (and d!567399 c!302812) b!1859542))

(assert (= (and d!567399 (not c!302812)) b!1859540))

(assert (= (and b!1859540 c!302811) b!1859543))

(assert (= (and b!1859540 (not c!302811)) b!1859539))

(assert (= (or b!1859543 b!1859539) bm!115660))

(assert (= (and bm!115660 c!302813) b!1859541))

(assert (= (and bm!115660 (not c!302813)) b!1859538))

(assert (=> b!1859539 m!2282921))

(declare-fun m!2283065 () Bool)

(assert (=> b!1859539 m!2283065))

(assert (=> b!1859539 m!2282915))

(declare-fun m!2283067 () Bool)

(assert (=> b!1859539 m!2283067))

(declare-fun m!2283069 () Bool)

(assert (=> b!1859539 m!2283069))

(assert (=> b!1859539 m!2282921))

(declare-fun m!2283071 () Bool)

(assert (=> b!1859539 m!2283071))

(declare-fun m!2283073 () Bool)

(assert (=> b!1859539 m!2283073))

(declare-fun m!2283075 () Bool)

(assert (=> b!1859539 m!2283075))

(assert (=> b!1859539 m!2283069))

(assert (=> b!1859539 m!2282917))

(assert (=> b!1859539 m!2282921))

(assert (=> b!1859539 m!2283073))

(assert (=> bm!115660 m!2282921))

(declare-fun m!2283077 () Bool)

(assert (=> bm!115660 m!2283077))

(assert (=> d!567399 m!2282883))

(assert (=> d!567399 m!2282883))

(assert (=> d!567399 m!2282921))

(declare-fun m!2283079 () Bool)

(assert (=> d!567399 m!2283079))

(declare-fun m!2283081 () Bool)

(assert (=> b!1859541 m!2283081))

(assert (=> d!567345 d!567399))

(declare-fun d!567401 () Bool)

(assert (=> d!567401 (= (efficientList$default$2!81 (c!302764 x!372616)) Nil!20620)))

(assert (=> d!567345 d!567401))

(assert (=> d!567351 d!567323))

(declare-fun b!1859544 () Bool)

(declare-fun e!1187538 () List!20700)

(declare-fun lt!717584 () List!20700)

(assert (=> b!1859544 (= e!1187538 lt!717584)))

(declare-fun b!1859545 () Bool)

(declare-fun lt!717580 () Unit!35233)

(declare-fun lt!717581 () Unit!35233)

(assert (=> b!1859545 (= lt!717580 lt!717581)))

(declare-fun call!115666 () List!20700)

(declare-fun lt!717582 () List!20700)

(assert (=> b!1859545 (= (++!5564 (++!5564 lt!717582 lt!717584) (efficientList$default$2!81 (c!302764 x!372614))) (++!5564 lt!717582 call!115666))))

(assert (=> b!1859545 (= lt!717581 (lemmaConcatAssociativity!1096 lt!717582 lt!717584 (efficientList$default$2!81 (c!302764 x!372614))))))

(assert (=> b!1859545 (= lt!717584 (list!8364 (right!16883 (c!302764 x!372614))))))

(assert (=> b!1859545 (= lt!717582 (list!8364 (left!16553 (c!302764 x!372614))))))

(declare-fun e!1187540 () List!20700)

(assert (=> b!1859545 (= e!1187540 (efficientList!239 (left!16553 (c!302764 x!372614)) (efficientList!239 (right!16883 (c!302764 x!372614)) (efficientList$default$2!81 (c!302764 x!372614)))))))

(declare-fun bm!115661 () Bool)

(declare-fun c!302816 () Bool)

(declare-fun c!302814 () Bool)

(assert (=> bm!115661 (= c!302816 c!302814)))

(assert (=> bm!115661 (= call!115666 (++!5564 e!1187538 (efficientList$default$2!81 (c!302764 x!372614))))))

(declare-fun d!567403 () Bool)

(declare-fun lt!717583 () List!20700)

(assert (=> d!567403 (= lt!717583 (++!5564 (list!8364 (c!302764 x!372614)) (efficientList$default$2!81 (c!302764 x!372614))))))

(declare-fun e!1187539 () List!20700)

(assert (=> d!567403 (= lt!717583 e!1187539)))

(declare-fun c!302815 () Bool)

(assert (=> d!567403 (= c!302815 (is-Empty!6817 (c!302764 x!372614)))))

(assert (=> d!567403 (= (efficientList!239 (c!302764 x!372614) (efficientList$default$2!81 (c!302764 x!372614))) lt!717583)))

(declare-fun b!1859546 () Bool)

(assert (=> b!1859546 (= e!1187539 e!1187540)))

(assert (=> b!1859546 (= c!302814 (is-Leaf!9994 (c!302764 x!372614)))))

(declare-fun b!1859547 () Bool)

(assert (=> b!1859547 (= e!1187538 (efficientList!241 (xs!9693 (c!302764 x!372614))))))

(declare-fun b!1859548 () Bool)

(assert (=> b!1859548 (= e!1187539 (efficientList$default$2!81 (c!302764 x!372614)))))

(declare-fun b!1859549 () Bool)

(assert (=> b!1859549 (= e!1187540 call!115666)))

(assert (= (and d!567403 c!302815) b!1859548))

(assert (= (and d!567403 (not c!302815)) b!1859546))

(assert (= (and b!1859546 c!302814) b!1859549))

(assert (= (and b!1859546 (not c!302814)) b!1859545))

(assert (= (or b!1859549 b!1859545) bm!115661))

(assert (= (and bm!115661 c!302816) b!1859547))

(assert (= (and bm!115661 (not c!302816)) b!1859544))

(assert (=> b!1859545 m!2282941))

(declare-fun m!2283083 () Bool)

(assert (=> b!1859545 m!2283083))

(assert (=> b!1859545 m!2282935))

(declare-fun m!2283085 () Bool)

(assert (=> b!1859545 m!2283085))

(declare-fun m!2283087 () Bool)

(assert (=> b!1859545 m!2283087))

(assert (=> b!1859545 m!2282941))

(declare-fun m!2283089 () Bool)

(assert (=> b!1859545 m!2283089))

(declare-fun m!2283091 () Bool)

(assert (=> b!1859545 m!2283091))

(declare-fun m!2283093 () Bool)

(assert (=> b!1859545 m!2283093))

(assert (=> b!1859545 m!2283087))

(assert (=> b!1859545 m!2282937))

(assert (=> b!1859545 m!2282941))

(assert (=> b!1859545 m!2283091))

(assert (=> bm!115661 m!2282941))

(declare-fun m!2283095 () Bool)

(assert (=> bm!115661 m!2283095))

(assert (=> d!567403 m!2282887))

(assert (=> d!567403 m!2282887))

(assert (=> d!567403 m!2282941))

(declare-fun m!2283097 () Bool)

(assert (=> d!567403 m!2283097))

(declare-fun m!2283099 () Bool)

(assert (=> b!1859547 m!2283099))

(assert (=> d!567351 d!567403))

(declare-fun d!567405 () Bool)

(assert (=> d!567405 (= (efficientList$default$2!81 (c!302764 x!372614)) Nil!20620)))

(assert (=> d!567351 d!567405))

(assert (=> start!185674 d!567393))

(assert (=> start!185674 d!567315))

(declare-fun d!567407 () Bool)

(assert (=> d!567407 (= (inv!27074 x!372614) (isBalanced!2125 (c!302764 x!372614)))))

(declare-fun bs!410938 () Bool)

(assert (= bs!410938 d!567407))

(declare-fun m!2283101 () Bool)

(assert (=> bs!410938 m!2283101))

(assert (=> start!185674 d!567407))

(assert (=> start!185674 d!567387))

(assert (=> start!185674 d!567313))

(assert (=> start!185674 d!567323))

(declare-fun b!1859556 () Bool)

(declare-fun tp!530002 () Bool)

(declare-fun e!1187545 () Bool)

(declare-fun tp!530001 () Bool)

(assert (=> b!1859556 (= e!1187545 (and (inv!27073 (left!16553 (c!302764 x!372616))) tp!530001 (inv!27073 (right!16883 (c!302764 x!372616))) tp!530002))))

(declare-fun b!1859557 () Bool)

(declare-fun inv!27079 (IArray!13639) Bool)

(assert (=> b!1859557 (= e!1187545 (inv!27079 (xs!9693 (c!302764 x!372616))))))

(assert (=> b!1859379 (= tp!529986 (and (inv!27073 (c!302764 x!372616)) e!1187545))))

(assert (= (and b!1859379 (is-Node!6817 (c!302764 x!372616))) b!1859556))

(assert (= (and b!1859379 (is-Leaf!9994 (c!302764 x!372616))) b!1859557))

(declare-fun m!2283103 () Bool)

(assert (=> b!1859556 m!2283103))

(declare-fun m!2283105 () Bool)

(assert (=> b!1859556 m!2283105))

(declare-fun m!2283107 () Bool)

(assert (=> b!1859557 m!2283107))

(assert (=> b!1859379 m!2282831))

(declare-fun tp!530004 () Bool)

(declare-fun e!1187547 () Bool)

(declare-fun b!1859558 () Bool)

(declare-fun tp!530003 () Bool)

(assert (=> b!1859558 (= e!1187547 (and (inv!27073 (left!16553 (c!302764 x!372614))) tp!530003 (inv!27073 (right!16883 (c!302764 x!372614))) tp!530004))))

(declare-fun b!1859559 () Bool)

(assert (=> b!1859559 (= e!1187547 (inv!27079 (xs!9693 (c!302764 x!372614))))))

(assert (=> b!1859376 (= tp!529985 (and (inv!27073 (c!302764 x!372614)) e!1187547))))

(assert (= (and b!1859376 (is-Node!6817 (c!302764 x!372614))) b!1859558))

(assert (= (and b!1859376 (is-Leaf!9994 (c!302764 x!372614))) b!1859559))

(declare-fun m!2283109 () Bool)

(assert (=> b!1859558 m!2283109))

(declare-fun m!2283111 () Bool)

(assert (=> b!1859558 m!2283111))

(declare-fun m!2283113 () Bool)

(assert (=> b!1859559 m!2283113))

(assert (=> b!1859376 m!2282805))

(declare-fun tp!530005 () Bool)

(declare-fun e!1187549 () Bool)

(declare-fun b!1859560 () Bool)

(declare-fun tp!530006 () Bool)

(assert (=> b!1859560 (= e!1187549 (and (inv!27073 (left!16553 (c!302764 x!372615))) tp!530005 (inv!27073 (right!16883 (c!302764 x!372615))) tp!530006))))

(declare-fun b!1859561 () Bool)

(assert (=> b!1859561 (= e!1187549 (inv!27079 (xs!9693 (c!302764 x!372615))))))

(assert (=> b!1859378 (= tp!529987 (and (inv!27073 (c!302764 x!372615)) e!1187549))))

(assert (= (and b!1859378 (is-Node!6817 (c!302764 x!372615))) b!1859560))

(assert (= (and b!1859378 (is-Leaf!9994 (c!302764 x!372615))) b!1859561))

(declare-fun m!2283115 () Bool)

(assert (=> b!1859560 m!2283115))

(declare-fun m!2283117 () Bool)

(assert (=> b!1859560 m!2283117))

(declare-fun m!2283119 () Bool)

(assert (=> b!1859561 m!2283119))

(assert (=> b!1859378 m!2282829))

(push 1)

(assert (not d!567385))

(assert (not b!1859530))

(assert (not b!1859535))

(assert (not b!1859376))

(assert (not d!567403))

(assert (not b!1859541))

(assert (not b!1859456))

(assert (not bm!115661))

(assert (not b!1859523))

(assert (not b!1859379))

(assert (not d!567381))

(assert (not b!1859452))

(assert (not b!1859455))

(assert (not d!567383))

(assert (not b!1859556))

(assert (not b!1859559))

(assert (not b!1859545))

(assert (not b!1859532))

(assert (not b!1859561))

(assert (not bm!115660))

(assert (not b!1859534))

(assert (not bm!115659))

(assert (not b!1859502))

(assert (not b!1859513))

(assert (not b!1859521))

(assert (not b!1859504))

(assert (not d!567407))

(assert (not b!1859451))

(assert (not b!1859558))

(assert (not d!567399))

(assert (not b!1859378))

(assert (not d!567389))

(assert (not b!1859460))

(assert (not d!567363))

(assert (not b!1859547))

(assert (not bm!115658))

(assert (not b!1859459))

(assert (not b!1859539))

(assert (not b!1859537))

(assert (not b!1859557))

(assert (not d!567387))

(assert (not b!1859463))

(assert (not b!1859560))

(assert (not b!1859464))

(assert (not d!567379))

(assert (not b!1859515))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

