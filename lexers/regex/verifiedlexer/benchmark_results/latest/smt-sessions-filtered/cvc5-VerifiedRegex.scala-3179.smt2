; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!185790 () Bool)

(assert start!185790)

(assert (=> start!185790 true))

(declare-fun b!1859873 () Bool)

(declare-fun e!1187769 () Bool)

(declare-datatypes ((List!20706 0))(
  ( (Nil!20626) (Cons!20626 (h!26027 (_ BitVec 16)) (t!172627 List!20706)) )
))
(declare-datatypes ((IArray!13651 0))(
  ( (IArray!13652 (innerList!6883 List!20706)) )
))
(declare-datatypes ((Conc!6823 0))(
  ( (Node!6823 (left!16570 Conc!6823) (right!16900 Conc!6823) (csize!13876 Int) (cheight!7034 Int)) (Leaf!10003 (xs!9699 IArray!13651) (csize!13877 Int)) (Empty!6823) )
))
(declare-datatypes ((BalanceConc!13576 0))(
  ( (BalanceConc!13577 (c!302873 Conc!6823)) )
))
(declare-fun x!373078 () BalanceConc!13576)

(declare-fun tp!530075 () Bool)

(declare-fun inv!27107 (Conc!6823) Bool)

(assert (=> b!1859873 (= e!1187769 (and (inv!27107 (c!302873 x!373078)) tp!530075))))

(declare-datatypes ((DelimiterValueInjection!8 0))(
  ( (DelimiterValueInjection!9) )
))
(declare-fun thiss!5194 () DelimiterValueInjection!8)

(declare-fun inst!1160 () Bool)

(declare-fun inv!27108 (BalanceConc!13576) Bool)

(declare-fun list!8374 (BalanceConc!13576) List!20706)

(declare-datatypes ((TokenValue!3807 0))(
  ( (FloatLiteralValue!7614 (text!27094 List!20706)) (TokenValueExt!3806 (__x!12996 Int)) (Broken!19035 (value!115849 List!20706)) (Object!3886) (End!3807) (Def!3807) (Underscore!3807) (Match!3807) (Else!3807) (Error!3807) (Case!3807) (If!3807) (Extends!3807) (Abstract!3807) (Class!3807) (Val!3807) (DelimiterValue!7614 (del!3867 List!20706)) (KeywordValue!3813 (value!115850 List!20706)) (CommentValue!7614 (value!115851 List!20706)) (WhitespaceValue!7614 (value!115852 List!20706)) (IndentationValue!3807 (value!115853 List!20706)) (String!23702) (Int32!3807) (Broken!19036 (value!115854 List!20706)) (Boolean!3808) (Unit!35239) (OperatorValue!3810 (op!3867 List!20706)) (IdentifierValue!7614 (value!115855 List!20706)) (IdentifierValue!7615 (value!115856 List!20706)) (WhitespaceValue!7615 (value!115857 List!20706)) (True!7614) (False!7614) (Broken!19037 (value!115858 List!20706)) (Broken!19038 (value!115859 List!20706)) (True!7615) (RightBrace!3807) (RightBracket!3807) (Colon!3807) (Null!3807) (Comma!3807) (LeftBracket!3807) (False!7615) (LeftBrace!3807) (ImaginaryLiteralValue!3807 (text!27095 List!20706)) (StringLiteralValue!11421 (value!115860 List!20706)) (EOFValue!3807 (value!115861 List!20706)) (IdentValue!3807 (value!115862 List!20706)) (DelimiterValue!7615 (value!115863 List!20706)) (DedentValue!3807 (value!115864 List!20706)) (NewLineValue!3807 (value!115865 List!20706)) (IntegerValue!11421 (value!115866 (_ BitVec 32)) (text!27096 List!20706)) (IntegerValue!11422 (value!115867 Int) (text!27097 List!20706)) (Times!3807) (Or!3807) (Equal!3807) (Minus!3807) (Broken!19039 (value!115868 List!20706)) (And!3807) (Div!3807) (LessEqual!3807) (Mod!3807) (Concat!8869) (Not!3807) (Plus!3807) (SpaceValue!3807 (value!115869 List!20706)) (IntegerValue!11423 (value!115870 Int) (text!27098 List!20706)) (StringLiteralValue!11422 (text!27099 List!20706)) (FloatLiteralValue!7615 (text!27100 List!20706)) (BytesLiteralValue!3807 (value!115871 List!20706)) (CommentValue!7615 (value!115872 List!20706)) (StringLiteralValue!11423 (value!115873 List!20706)) (ErrorTokenValue!3807 (msg!3868 List!20706)) )
))
(declare-fun toCharacters!28 (DelimiterValueInjection!8 TokenValue!3807) BalanceConc!13576)

(declare-fun toValue!35 (DelimiterValueInjection!8 BalanceConc!13576) TokenValue!3807)

(assert (=> start!185790 (= inst!1160 (=> (and (inv!27108 x!373078) e!1187769) (= (list!8374 (toCharacters!28 thiss!5194 (toValue!35 thiss!5194 x!373078))) (list!8374 x!373078))))))

(assert (= start!185790 b!1859873))

(declare-fun m!2283429 () Bool)

(assert (=> b!1859873 m!2283429))

(declare-fun m!2283431 () Bool)

(assert (=> start!185790 m!2283431))

(declare-fun m!2283433 () Bool)

(assert (=> start!185790 m!2283433))

(assert (=> start!185790 m!2283431))

(declare-fun m!2283435 () Bool)

(assert (=> start!185790 m!2283435))

(assert (=> start!185790 m!2283435))

(declare-fun m!2283437 () Bool)

(assert (=> start!185790 m!2283437))

(declare-fun m!2283439 () Bool)

(assert (=> start!185790 m!2283439))

(declare-fun bs!411094 () Bool)

(declare-fun neg-inst!1160 () Bool)

(declare-fun s!221690 () Bool)

(assert (= bs!411094 (and neg-inst!1160 s!221690)))

(assert (=> bs!411094 (=> true (= (list!8374 (toCharacters!28 thiss!5194 (toValue!35 thiss!5194 x!373078))) (list!8374 x!373078)))))

(assert (=> m!2283439 m!2283431))

(assert (=> m!2283439 m!2283435))

(assert (=> m!2283439 m!2283437))

(assert (=> m!2283439 s!221690))

(assert (=> m!2283431 s!221690))

(declare-fun bs!411095 () Bool)

(assert (= bs!411095 (and neg-inst!1160 start!185790)))

(assert (=> bs!411095 (= true inst!1160)))

(declare-fun lambda!73499 () Int)

(declare-fun Forall!971 (Int) Bool)

(assert (=> start!185790 (= (Forall!971 lambda!73499) inst!1160)))

(assert (=> start!185790 (not (Forall!971 lambda!73499))))

(assert (=> start!185790 true))

(assert (= neg-inst!1160 inst!1160))

(declare-fun m!2283441 () Bool)

(assert (=> start!185790 m!2283441))

(assert (=> start!185790 m!2283441))

(push 1)

(assert (not bs!411094))

(assert (not start!185790))

(assert (not b!1859873))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!567528 () Bool)

(declare-fun list!8376 (Conc!6823) List!20706)

(assert (=> d!567528 (= (list!8374 (toCharacters!28 thiss!5194 (toValue!35 thiss!5194 x!373078))) (list!8376 (c!302873 (toCharacters!28 thiss!5194 (toValue!35 thiss!5194 x!373078)))))))

(declare-fun bs!411098 () Bool)

(assert (= bs!411098 d!567528))

(declare-fun m!2283457 () Bool)

(assert (=> bs!411098 m!2283457))

(assert (=> bs!411094 d!567528))

(declare-fun d!567530 () Bool)

(declare-fun c!302878 () Bool)

(assert (=> d!567530 (= c!302878 (is-DelimiterValue!7614 (toValue!35 thiss!5194 x!373078)))))

(declare-fun e!1187775 () BalanceConc!13576)

(assert (=> d!567530 (= (toCharacters!28 thiss!5194 (toValue!35 thiss!5194 x!373078)) e!1187775)))

(declare-fun b!1859883 () Bool)

(declare-fun seqFromList!2623 (List!20706) BalanceConc!13576)

(assert (=> b!1859883 (= e!1187775 (seqFromList!2623 (del!3867 (toValue!35 thiss!5194 x!373078))))))

(declare-fun b!1859884 () Bool)

(assert (=> b!1859884 (= e!1187775 (BalanceConc!13577 Empty!6823))))

(assert (= (and d!567530 c!302878) b!1859883))

(assert (= (and d!567530 (not c!302878)) b!1859884))

(declare-fun m!2283459 () Bool)

(assert (=> b!1859883 m!2283459))

(assert (=> bs!411094 d!567530))

(declare-fun d!567532 () Bool)

(declare-fun efficientList!248 (BalanceConc!13576) List!20706)

(assert (=> d!567532 (= (toValue!35 thiss!5194 x!373078) (DelimiterValue!7614 (efficientList!248 x!373078)))))

(declare-fun bs!411099 () Bool)

(assert (= bs!411099 d!567532))

(declare-fun m!2283461 () Bool)

(assert (=> bs!411099 m!2283461))

(assert (=> bs!411094 d!567532))

(declare-fun d!567536 () Bool)

(assert (=> d!567536 (= (list!8374 x!373078) (list!8376 (c!302873 x!373078)))))

(declare-fun bs!411100 () Bool)

(assert (= bs!411100 d!567536))

(declare-fun m!2283463 () Bool)

(assert (=> bs!411100 m!2283463))

(assert (=> bs!411094 d!567536))

(push 1)

(assert (not d!567532))

(assert (not d!567528))

(assert (not start!185790))

(assert (not d!567536))

(assert (not b!1859873))

(assert (not b!1859883))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!567544 () Bool)

(declare-fun lt!717608 () List!20706)

(assert (=> d!567544 (= lt!717608 (list!8374 x!373078))))

(declare-fun efficientList!250 (Conc!6823 List!20706) List!20706)

(declare-fun efficientList$default$2!85 (Conc!6823) List!20706)

(assert (=> d!567544 (= lt!717608 (efficientList!250 (c!302873 x!373078) (efficientList$default$2!85 (c!302873 x!373078))))))

(assert (=> d!567544 (= (efficientList!248 x!373078) lt!717608)))

(declare-fun bs!411104 () Bool)

(assert (= bs!411104 d!567544))

(assert (=> bs!411104 m!2283439))

(declare-fun m!2283473 () Bool)

(assert (=> bs!411104 m!2283473))

(assert (=> bs!411104 m!2283473))

(declare-fun m!2283475 () Bool)

(assert (=> bs!411104 m!2283475))

(assert (=> d!567532 d!567544))

(declare-fun d!567546 () Bool)

(declare-fun c!302887 () Bool)

(assert (=> d!567546 (= c!302887 (is-Empty!6823 (c!302873 (toCharacters!28 thiss!5194 (toValue!35 thiss!5194 x!373078)))))))

(declare-fun e!1187783 () List!20706)

(assert (=> d!567546 (= (list!8376 (c!302873 (toCharacters!28 thiss!5194 (toValue!35 thiss!5194 x!373078)))) e!1187783)))

(declare-fun b!1859900 () Bool)

(declare-fun e!1187784 () List!20706)

(assert (=> b!1859900 (= e!1187783 e!1187784)))

(declare-fun c!302888 () Bool)

(assert (=> b!1859900 (= c!302888 (is-Leaf!10003 (c!302873 (toCharacters!28 thiss!5194 (toValue!35 thiss!5194 x!373078)))))))

(declare-fun b!1859902 () Bool)

(declare-fun ++!5566 (List!20706 List!20706) List!20706)

(assert (=> b!1859902 (= e!1187784 (++!5566 (list!8376 (left!16570 (c!302873 (toCharacters!28 thiss!5194 (toValue!35 thiss!5194 x!373078))))) (list!8376 (right!16900 (c!302873 (toCharacters!28 thiss!5194 (toValue!35 thiss!5194 x!373078)))))))))

(declare-fun b!1859901 () Bool)

(declare-fun list!8378 (IArray!13651) List!20706)

(assert (=> b!1859901 (= e!1187784 (list!8378 (xs!9699 (c!302873 (toCharacters!28 thiss!5194 (toValue!35 thiss!5194 x!373078))))))))

(declare-fun b!1859899 () Bool)

(assert (=> b!1859899 (= e!1187783 Nil!20626)))

(assert (= (and d!567546 c!302887) b!1859899))

(assert (= (and d!567546 (not c!302887)) b!1859900))

(assert (= (and b!1859900 c!302888) b!1859901))

(assert (= (and b!1859900 (not c!302888)) b!1859902))

(declare-fun m!2283477 () Bool)

(assert (=> b!1859902 m!2283477))

(declare-fun m!2283479 () Bool)

(assert (=> b!1859902 m!2283479))

(assert (=> b!1859902 m!2283477))

(assert (=> b!1859902 m!2283479))

(declare-fun m!2283481 () Bool)

(assert (=> b!1859902 m!2283481))

(declare-fun m!2283483 () Bool)

(assert (=> b!1859901 m!2283483))

(assert (=> d!567528 d!567546))

(declare-fun d!567548 () Bool)

(declare-fun c!302889 () Bool)

(assert (=> d!567548 (= c!302889 (is-Empty!6823 (c!302873 x!373078)))))

(declare-fun e!1187785 () List!20706)

(assert (=> d!567548 (= (list!8376 (c!302873 x!373078)) e!1187785)))

(declare-fun b!1859904 () Bool)

(declare-fun e!1187786 () List!20706)

(assert (=> b!1859904 (= e!1187785 e!1187786)))

(declare-fun c!302890 () Bool)

(assert (=> b!1859904 (= c!302890 (is-Leaf!10003 (c!302873 x!373078)))))

(declare-fun b!1859906 () Bool)

(assert (=> b!1859906 (= e!1187786 (++!5566 (list!8376 (left!16570 (c!302873 x!373078))) (list!8376 (right!16900 (c!302873 x!373078)))))))

(declare-fun b!1859905 () Bool)

(assert (=> b!1859905 (= e!1187786 (list!8378 (xs!9699 (c!302873 x!373078))))))

(declare-fun b!1859903 () Bool)

(assert (=> b!1859903 (= e!1187785 Nil!20626)))

(assert (= (and d!567548 c!302889) b!1859903))

(assert (= (and d!567548 (not c!302889)) b!1859904))

(assert (= (and b!1859904 c!302890) b!1859905))

(assert (= (and b!1859904 (not c!302890)) b!1859906))

(declare-fun m!2283485 () Bool)

(assert (=> b!1859906 m!2283485))

(declare-fun m!2283487 () Bool)

(assert (=> b!1859906 m!2283487))

(assert (=> b!1859906 m!2283485))

(assert (=> b!1859906 m!2283487))

(declare-fun m!2283489 () Bool)

(assert (=> b!1859906 m!2283489))

(declare-fun m!2283491 () Bool)

(assert (=> b!1859905 m!2283491))

(assert (=> d!567536 d!567548))

(push 1)

(assert (not d!567544))

(assert (not b!1859906))

(assert (not b!1859901))

(assert (not start!185790))

(assert (not b!1859905))

(assert (not b!1859873))

(assert (not b!1859902))

(assert (not b!1859883))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!567556 () Bool)

(declare-fun fromListB!1202 (List!20706) BalanceConc!13576)

(assert (=> d!567556 (= (seqFromList!2623 (del!3867 (toValue!35 thiss!5194 x!373078))) (fromListB!1202 (del!3867 (toValue!35 thiss!5194 x!373078))))))

(declare-fun bs!411106 () Bool)

(assert (= bs!411106 d!567556))

(declare-fun m!2283513 () Bool)

(assert (=> bs!411106 m!2283513))

(assert (=> b!1859883 d!567556))

(assert (=> start!185790 d!567536))

(assert (=> start!185790 d!567532))

(assert (=> start!185790 d!567530))

(assert (=> start!185790 d!567528))

(declare-fun d!567558 () Bool)

(declare-fun isBalanced!2130 (Conc!6823) Bool)

(assert (=> d!567558 (= (inv!27108 x!373078) (isBalanced!2130 (c!302873 x!373078)))))

(declare-fun bs!411107 () Bool)

(assert (= bs!411107 d!567558))

(declare-fun m!2283515 () Bool)

(assert (=> bs!411107 m!2283515))

(assert (=> start!185790 d!567558))

(declare-fun d!567560 () Bool)

(declare-fun choose!11702 (Int) Bool)

(assert (=> d!567560 (= (Forall!971 lambda!73499) (choose!11702 lambda!73499))))

(declare-fun bs!411108 () Bool)

(assert (= bs!411108 d!567560))

(declare-fun m!2283517 () Bool)

(assert (=> bs!411108 m!2283517))

(assert (=> start!185790 d!567560))

(declare-fun d!567562 () Bool)

(declare-fun c!302901 () Bool)

(assert (=> d!567562 (= c!302901 (is-Node!6823 (c!302873 x!373078)))))

(declare-fun e!1187799 () Bool)

(assert (=> d!567562 (= (inv!27107 (c!302873 x!373078)) e!1187799)))

(declare-fun b!1859929 () Bool)

(declare-fun inv!27111 (Conc!6823) Bool)

(assert (=> b!1859929 (= e!1187799 (inv!27111 (c!302873 x!373078)))))

(declare-fun b!1859930 () Bool)

(declare-fun e!1187800 () Bool)

(assert (=> b!1859930 (= e!1187799 e!1187800)))

(declare-fun res!832909 () Bool)

(assert (=> b!1859930 (= res!832909 (not (is-Leaf!10003 (c!302873 x!373078))))))

(assert (=> b!1859930 (=> res!832909 e!1187800)))

(declare-fun b!1859931 () Bool)

(declare-fun inv!27112 (Conc!6823) Bool)

(assert (=> b!1859931 (= e!1187800 (inv!27112 (c!302873 x!373078)))))

(assert (= (and d!567562 c!302901) b!1859929))

(assert (= (and d!567562 (not c!302901)) b!1859930))

(assert (= (and b!1859930 (not res!832909)) b!1859931))

(declare-fun m!2283519 () Bool)

(assert (=> b!1859929 m!2283519))

(declare-fun m!2283521 () Bool)

(assert (=> b!1859931 m!2283521))

(assert (=> b!1859873 d!567562))

(assert (=> d!567544 d!567536))

(declare-fun b!1859944 () Bool)

(declare-fun e!1187808 () List!20706)

(declare-fun efficientList!252 (IArray!13651) List!20706)

(assert (=> b!1859944 (= e!1187808 (efficientList!252 (xs!9699 (c!302873 x!373078))))))

(declare-fun b!1859945 () Bool)

(declare-fun e!1187807 () List!20706)

(assert (=> b!1859945 (= e!1187807 (efficientList$default$2!85 (c!302873 x!373078)))))

(declare-fun b!1859946 () Bool)

(declare-fun e!1187809 () List!20706)

(assert (=> b!1859946 (= e!1187807 e!1187809)))

(declare-fun c!302908 () Bool)

(assert (=> b!1859946 (= c!302908 (is-Leaf!10003 (c!302873 x!373078)))))

(declare-fun d!567564 () Bool)

(declare-fun lt!717622 () List!20706)

(assert (=> d!567564 (= lt!717622 (++!5566 (list!8376 (c!302873 x!373078)) (efficientList$default$2!85 (c!302873 x!373078))))))

(assert (=> d!567564 (= lt!717622 e!1187807)))

(declare-fun c!302909 () Bool)

(assert (=> d!567564 (= c!302909 (is-Empty!6823 (c!302873 x!373078)))))

(assert (=> d!567564 (= (efficientList!250 (c!302873 x!373078) (efficientList$default$2!85 (c!302873 x!373078))) lt!717622)))

(declare-fun b!1859947 () Bool)

(declare-fun call!115672 () List!20706)

(assert (=> b!1859947 (= e!1187809 call!115672)))

(declare-fun b!1859948 () Bool)

(declare-datatypes ((Unit!35241 0))(
  ( (Unit!35242) )
))
(declare-fun lt!717624 () Unit!35241)

(declare-fun lt!717623 () Unit!35241)

(assert (=> b!1859948 (= lt!717624 lt!717623)))

(declare-fun lt!717626 () List!20706)

(declare-fun lt!717625 () List!20706)

(assert (=> b!1859948 (= (++!5566 (++!5566 lt!717625 lt!717626) (efficientList$default$2!85 (c!302873 x!373078))) (++!5566 lt!717625 call!115672))))

(declare-fun lemmaConcatAssociativity!1097 (List!20706 List!20706 List!20706) Unit!35241)

(assert (=> b!1859948 (= lt!717623 (lemmaConcatAssociativity!1097 lt!717625 lt!717626 (efficientList$default$2!85 (c!302873 x!373078))))))

(assert (=> b!1859948 (= lt!717626 (list!8376 (right!16900 (c!302873 x!373078))))))

(assert (=> b!1859948 (= lt!717625 (list!8376 (left!16570 (c!302873 x!373078))))))

(assert (=> b!1859948 (= e!1187809 (efficientList!250 (left!16570 (c!302873 x!373078)) (efficientList!250 (right!16900 (c!302873 x!373078)) (efficientList$default$2!85 (c!302873 x!373078)))))))

(declare-fun bm!115667 () Bool)

(declare-fun c!302910 () Bool)

(assert (=> bm!115667 (= c!302910 c!302908)))

(assert (=> bm!115667 (= call!115672 (++!5566 e!1187808 (efficientList$default$2!85 (c!302873 x!373078))))))

(declare-fun b!1859949 () Bool)

(assert (=> b!1859949 (= e!1187808 lt!717626)))

(assert (= (and d!567564 c!302909) b!1859945))

(assert (= (and d!567564 (not c!302909)) b!1859946))

(assert (= (and b!1859946 c!302908) b!1859947))

(assert (= (and b!1859946 (not c!302908)) b!1859948))

(assert (= (or b!1859947 b!1859948) bm!115667))

(assert (= (and bm!115667 c!302910) b!1859944))

(assert (= (and bm!115667 (not c!302910)) b!1859949))

(declare-fun m!2283523 () Bool)

(assert (=> b!1859944 m!2283523))

(assert (=> d!567564 m!2283463))

(assert (=> d!567564 m!2283463))

(assert (=> d!567564 m!2283473))

(declare-fun m!2283525 () Bool)

(assert (=> d!567564 m!2283525))

(assert (=> b!1859948 m!2283473))

(declare-fun m!2283527 () Bool)

(assert (=> b!1859948 m!2283527))

(assert (=> b!1859948 m!2283527))

(declare-fun m!2283529 () Bool)

(assert (=> b!1859948 m!2283529))

(declare-fun m!2283531 () Bool)

(assert (=> b!1859948 m!2283531))

(assert (=> b!1859948 m!2283487))

(assert (=> b!1859948 m!2283531))

(assert (=> b!1859948 m!2283473))

(declare-fun m!2283533 () Bool)

(assert (=> b!1859948 m!2283533))

(declare-fun m!2283535 () Bool)

(assert (=> b!1859948 m!2283535))

(assert (=> b!1859948 m!2283485))

(assert (=> b!1859948 m!2283473))

(declare-fun m!2283537 () Bool)

(assert (=> b!1859948 m!2283537))

(assert (=> bm!115667 m!2283473))

(declare-fun m!2283539 () Bool)

(assert (=> bm!115667 m!2283539))

(assert (=> d!567544 d!567564))

(declare-fun d!567566 () Bool)

(assert (=> d!567566 (= (efficientList$default$2!85 (c!302873 x!373078)) Nil!20626)))

(assert (=> d!567544 d!567566))

(declare-fun b!1859956 () Bool)

(declare-fun e!1187814 () Bool)

(declare-fun tp!530083 () Bool)

(declare-fun tp!530084 () Bool)

(assert (=> b!1859956 (= e!1187814 (and (inv!27107 (left!16570 (c!302873 x!373078))) tp!530083 (inv!27107 (right!16900 (c!302873 x!373078))) tp!530084))))

(declare-fun b!1859957 () Bool)

(declare-fun inv!27113 (IArray!13651) Bool)

(assert (=> b!1859957 (= e!1187814 (inv!27113 (xs!9699 (c!302873 x!373078))))))

(assert (=> b!1859873 (= tp!530075 (and (inv!27107 (c!302873 x!373078)) e!1187814))))

(assert (= (and b!1859873 (is-Node!6823 (c!302873 x!373078))) b!1859956))

(assert (= (and b!1859873 (is-Leaf!10003 (c!302873 x!373078))) b!1859957))

(declare-fun m!2283541 () Bool)

(assert (=> b!1859956 m!2283541))

(declare-fun m!2283543 () Bool)

(assert (=> b!1859956 m!2283543))

(declare-fun m!2283545 () Bool)

(assert (=> b!1859957 m!2283545))

(assert (=> b!1859873 m!2283429))

(push 1)

(assert (not d!567560))

(assert (not b!1859929))

(assert (not d!567564))

(assert (not b!1859906))

(assert (not b!1859948))

(assert (not b!1859901))

(assert (not bm!115667))

(assert (not b!1859931))

(assert (not b!1859905))

(assert (not b!1859944))

(assert (not b!1859956))

(assert (not b!1859957))

(assert (not b!1859873))

(assert (not b!1859902))

(assert (not d!567558))

(assert (not d!567556))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!1859985 () Bool)

(declare-fun e!1187830 () List!20706)

(assert (=> b!1859985 (= e!1187830 (Cons!20626 (h!26027 (list!8376 (c!302873 x!373078))) (++!5566 (t!172627 (list!8376 (c!302873 x!373078))) (efficientList$default$2!85 (c!302873 x!373078)))))))

(declare-fun b!1859987 () Bool)

(declare-fun e!1187829 () Bool)

(declare-fun lt!717644 () List!20706)

(assert (=> b!1859987 (= e!1187829 (or (not (= (efficientList$default$2!85 (c!302873 x!373078)) Nil!20626)) (= lt!717644 (list!8376 (c!302873 x!373078)))))))

(declare-fun b!1859984 () Bool)

(assert (=> b!1859984 (= e!1187830 (efficientList$default$2!85 (c!302873 x!373078)))))

(declare-fun d!567572 () Bool)

(assert (=> d!567572 e!1187829))

(declare-fun res!832915 () Bool)

(assert (=> d!567572 (=> (not res!832915) (not e!1187829))))

(declare-fun content!3059 (List!20706) (Set (_ BitVec 16)))

(assert (=> d!567572 (= res!832915 (= (content!3059 lt!717644) (set.union (content!3059 (list!8376 (c!302873 x!373078))) (content!3059 (efficientList$default$2!85 (c!302873 x!373078))))))))

(assert (=> d!567572 (= lt!717644 e!1187830)))

(declare-fun c!302922 () Bool)

(assert (=> d!567572 (= c!302922 (is-Nil!20626 (list!8376 (c!302873 x!373078))))))

(assert (=> d!567572 (= (++!5566 (list!8376 (c!302873 x!373078)) (efficientList$default$2!85 (c!302873 x!373078))) lt!717644)))

(declare-fun b!1859986 () Bool)

(declare-fun res!832914 () Bool)

(assert (=> b!1859986 (=> (not res!832914) (not e!1187829))))

(declare-fun size!16322 (List!20706) Int)

(assert (=> b!1859986 (= res!832914 (= (size!16322 lt!717644) (+ (size!16322 (list!8376 (c!302873 x!373078))) (size!16322 (efficientList$default$2!85 (c!302873 x!373078))))))))

(assert (= (and d!567572 c!302922) b!1859984))

(assert (= (and d!567572 (not c!302922)) b!1859985))

(assert (= (and d!567572 res!832915) b!1859986))

(assert (= (and b!1859986 res!832914) b!1859987))

(assert (=> b!1859985 m!2283473))

(declare-fun m!2283565 () Bool)

(assert (=> b!1859985 m!2283565))

(declare-fun m!2283567 () Bool)

(assert (=> d!567572 m!2283567))

(assert (=> d!567572 m!2283463))

(declare-fun m!2283569 () Bool)

(assert (=> d!567572 m!2283569))

(assert (=> d!567572 m!2283473))

(declare-fun m!2283571 () Bool)

(assert (=> d!567572 m!2283571))

(declare-fun m!2283573 () Bool)

(assert (=> b!1859986 m!2283573))

(assert (=> b!1859986 m!2283463))

(declare-fun m!2283575 () Bool)

(assert (=> b!1859986 m!2283575))

(assert (=> b!1859986 m!2283473))

(declare-fun m!2283577 () Bool)

(assert (=> b!1859986 m!2283577))

(assert (=> d!567564 d!567572))

(assert (=> d!567564 d!567548))

(declare-fun d!567576 () Bool)

(declare-fun e!1187833 () Bool)

(assert (=> d!567576 e!1187833))

(declare-fun res!832918 () Bool)

(assert (=> d!567576 (=> (not res!832918) (not e!1187833))))

(declare-fun lt!717647 () BalanceConc!13576)

(assert (=> d!567576 (= res!832918 (= (list!8374 lt!717647) (del!3867 (toValue!35 thiss!5194 x!373078))))))

(declare-fun fromList!466 (List!20706) Conc!6823)

(assert (=> d!567576 (= lt!717647 (BalanceConc!13577 (fromList!466 (del!3867 (toValue!35 thiss!5194 x!373078)))))))

(assert (=> d!567576 (= (fromListB!1202 (del!3867 (toValue!35 thiss!5194 x!373078))) lt!717647)))

(declare-fun b!1859990 () Bool)

(assert (=> b!1859990 (= e!1187833 (isBalanced!2130 (fromList!466 (del!3867 (toValue!35 thiss!5194 x!373078)))))))

(assert (= (and d!567576 res!832918) b!1859990))

(declare-fun m!2283583 () Bool)

(assert (=> d!567576 m!2283583))

(declare-fun m!2283585 () Bool)

(assert (=> d!567576 m!2283585))

(assert (=> b!1859990 m!2283585))

(assert (=> b!1859990 m!2283585))

(declare-fun m!2283587 () Bool)

(assert (=> b!1859990 m!2283587))

(assert (=> d!567556 d!567576))

(push 1)

(assert (not d!567560))

(assert (not b!1859985))

(assert (not b!1859929))

(assert (not b!1859906))

(assert (not d!567576))

(assert (not b!1859948))

(assert (not b!1859901))

(assert (not b!1859931))

(assert (not b!1859986))

(assert (not d!567558))

(assert (not b!1859905))

(assert (not b!1859990))

(assert (not b!1859944))

(assert (not b!1859956))

(assert (not b!1859957))

(assert (not b!1859873))

(assert (not b!1859902))

(assert (not bm!115667))

(assert (not d!567572))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

