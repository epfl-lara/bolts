; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!396482 () Bool)

(assert start!396482)

(declare-fun b!4160899 () Bool)

(declare-fun b_free!119771 () Bool)

(declare-fun b_next!120475 () Bool)

(assert (=> b!4160899 (= b_free!119771 (not b_next!120475))))

(declare-fun tp!1269835 () Bool)

(declare-fun b_and!324133 () Bool)

(assert (=> b!4160899 (= tp!1269835 b_and!324133)))

(declare-fun b_free!119773 () Bool)

(declare-fun b_next!120477 () Bool)

(assert (=> b!4160899 (= b_free!119773 (not b_next!120477))))

(declare-fun tp!1269831 () Bool)

(declare-fun b_and!324135 () Bool)

(assert (=> b!4160899 (= tp!1269831 b_and!324135)))

(declare-fun b!4160902 () Bool)

(declare-fun b_free!119775 () Bool)

(declare-fun b_next!120479 () Bool)

(assert (=> b!4160902 (= b_free!119775 (not b_next!120479))))

(declare-fun tp!1269833 () Bool)

(declare-fun b_and!324137 () Bool)

(assert (=> b!4160902 (= tp!1269833 b_and!324137)))

(declare-fun b_free!119777 () Bool)

(declare-fun b_next!120481 () Bool)

(assert (=> b!4160902 (= b_free!119777 (not b_next!120481))))

(declare-fun tp!1269838 () Bool)

(declare-fun b_and!324139 () Bool)

(assert (=> b!4160902 (= tp!1269838 b_and!324139)))

(declare-fun b!4160892 () Bool)

(declare-fun res!1704428 () Bool)

(declare-fun e!2582696 () Bool)

(assert (=> b!4160892 (=> (not res!1704428) (not e!2582696))))

(declare-datatypes ((String!52561 0))(
  ( (String!52562 (value!234573 String)) )
))
(declare-datatypes ((List!45594 0))(
  ( (Nil!45470) (Cons!45470 (h!50890 String!52561) (t!343625 List!45594)) )
))
(declare-fun acc!617 () List!45594)

(declare-datatypes ((LexerInterface!7101 0))(
  ( (LexerInterfaceExt!7098 (__x!27699 Int)) (Lexer!7099) )
))
(declare-fun thiss!27036 () LexerInterface!7101)

(declare-datatypes ((List!45595 0))(
  ( (Nil!45471) (Cons!45471 (h!50891 (_ BitVec 16)) (t!343626 List!45595)) )
))
(declare-datatypes ((TokenValue!7740 0))(
  ( (FloatLiteralValue!15480 (text!54625 List!45595)) (TokenValueExt!7739 (__x!27700 Int)) (Broken!38700 (value!234574 List!45595)) (Object!7863) (End!7740) (Def!7740) (Underscore!7740) (Match!7740) (Else!7740) (Error!7740) (Case!7740) (If!7740) (Extends!7740) (Abstract!7740) (Class!7740) (Val!7740) (DelimiterValue!15480 (del!7800 List!45595)) (KeywordValue!7746 (value!234575 List!45595)) (CommentValue!15480 (value!234576 List!45595)) (WhitespaceValue!15480 (value!234577 List!45595)) (IndentationValue!7740 (value!234578 List!45595)) (String!52563) (Int32!7740) (Broken!38701 (value!234579 List!45595)) (Boolean!7741) (Unit!64586) (OperatorValue!7743 (op!7800 List!45595)) (IdentifierValue!15480 (value!234580 List!45595)) (IdentifierValue!15481 (value!234581 List!45595)) (WhitespaceValue!15481 (value!234582 List!45595)) (True!15480) (False!15480) (Broken!38702 (value!234583 List!45595)) (Broken!38703 (value!234584 List!45595)) (True!15481) (RightBrace!7740) (RightBracket!7740) (Colon!7740) (Null!7740) (Comma!7740) (LeftBracket!7740) (False!15481) (LeftBrace!7740) (ImaginaryLiteralValue!7740 (text!54626 List!45595)) (StringLiteralValue!23220 (value!234585 List!45595)) (EOFValue!7740 (value!234586 List!45595)) (IdentValue!7740 (value!234587 List!45595)) (DelimiterValue!15481 (value!234588 List!45595)) (DedentValue!7740 (value!234589 List!45595)) (NewLineValue!7740 (value!234590 List!45595)) (IntegerValue!23220 (value!234591 (_ BitVec 32)) (text!54627 List!45595)) (IntegerValue!23221 (value!234592 Int) (text!54628 List!45595)) (Times!7740) (Or!7740) (Equal!7740) (Minus!7740) (Broken!38704 (value!234593 List!45595)) (And!7740) (Div!7740) (LessEqual!7740) (Mod!7740) (Concat!20155) (Not!7740) (Plus!7740) (SpaceValue!7740 (value!234594 List!45595)) (IntegerValue!23222 (value!234595 Int) (text!54629 List!45595)) (StringLiteralValue!23221 (text!54630 List!45595)) (FloatLiteralValue!15481 (text!54631 List!45595)) (BytesLiteralValue!7740 (value!234596 List!45595)) (CommentValue!15481 (value!234597 List!45595)) (StringLiteralValue!23222 (value!234598 List!45595)) (ErrorTokenValue!7740 (msg!7801 List!45595)) )
))
(declare-datatypes ((C!25016 0))(
  ( (C!25017 (val!14670 Int)) )
))
(declare-datatypes ((Regex!12415 0))(
  ( (ElementMatch!12415 (c!711916 C!25016)) (Concat!20156 (regOne!25342 Regex!12415) (regTwo!25342 Regex!12415)) (EmptyExpr!12415) (Star!12415 (reg!12744 Regex!12415)) (EmptyLang!12415) (Union!12415 (regOne!25343 Regex!12415) (regTwo!25343 Regex!12415)) )
))
(declare-datatypes ((List!45596 0))(
  ( (Nil!45472) (Cons!45472 (h!50892 C!25016) (t!343627 List!45596)) )
))
(declare-datatypes ((IArray!27447 0))(
  ( (IArray!27448 (innerList!13781 List!45596)) )
))
(declare-datatypes ((Conc!13721 0))(
  ( (Node!13721 (left!33925 Conc!13721) (right!34255 Conc!13721) (csize!27672 Int) (cheight!13932 Int)) (Leaf!21218 (xs!17027 IArray!27447) (csize!27673 Int)) (Empty!13721) )
))
(declare-datatypes ((BalanceConc!27036 0))(
  ( (BalanceConc!27037 (c!711917 Conc!13721)) )
))
(declare-datatypes ((TokenValueInjection!14908 0))(
  ( (TokenValueInjection!14909 (toValue!10174 Int) (toChars!10033 Int)) )
))
(declare-datatypes ((Rule!14820 0))(
  ( (Rule!14821 (regex!7510 Regex!12415) (tag!8374 String!52561) (isSeparator!7510 Bool) (transformation!7510 TokenValueInjection!14908)) )
))
(declare-datatypes ((List!45597 0))(
  ( (Nil!45473) (Cons!45473 (h!50893 Rule!14820) (t!343628 List!45597)) )
))
(declare-fun rules!4132 () List!45597)

(declare-fun noDuplicateTag!3087 (LexerInterface!7101 List!45597 List!45594) Bool)

(assert (=> b!4160892 (= res!1704428 (noDuplicateTag!3087 thiss!27036 rules!4132 acc!617))))

(declare-fun b!4160893 () Bool)

(declare-fun e!2582689 () Bool)

(declare-fun e!2582687 () Bool)

(declare-fun tp!1269837 () Bool)

(assert (=> b!4160893 (= e!2582689 (and e!2582687 tp!1269837))))

(declare-fun b!4160894 () Bool)

(declare-fun e!2582694 () Bool)

(declare-fun tp!1269832 () Bool)

(declare-fun inv!60001 (String!52561) Bool)

(assert (=> b!4160894 (= e!2582694 (and (inv!60001 (h!50890 acc!617)) tp!1269832))))

(declare-fun res!1704429 () Bool)

(assert (=> start!396482 (=> (not res!1704429) (not e!2582696))))

(get-info :version)

(assert (=> start!396482 (= res!1704429 ((_ is Lexer!7099) thiss!27036))))

(assert (=> start!396482 e!2582696))

(declare-fun e!2582691 () Bool)

(assert (=> start!396482 e!2582691))

(assert (=> start!396482 e!2582694))

(assert (=> start!396482 true))

(declare-fun tag!272 () String!52561)

(assert (=> start!396482 (inv!60001 tag!272)))

(assert (=> start!396482 e!2582689))

(declare-fun b!4160895 () Bool)

(declare-fun res!1704433 () Bool)

(declare-fun e!2582695 () Bool)

(assert (=> b!4160895 (=> (not res!1704433) (not e!2582695))))

(declare-fun lt!1482864 () List!45594)

(assert (=> b!4160895 (= res!1704433 (noDuplicateTag!3087 thiss!27036 (t!343628 rules!4132) lt!1482864))))

(declare-fun b!4160896 () Bool)

(declare-fun r!4395 () Rule!14820)

(declare-fun contains!9298 (List!45597 Rule!14820) Bool)

(assert (=> b!4160896 (= e!2582695 (not (contains!9298 (t!343628 rules!4132) r!4395)))))

(declare-fun b!4160897 () Bool)

(declare-fun e!2582698 () Bool)

(declare-fun tp!1269834 () Bool)

(declare-fun inv!60003 (TokenValueInjection!14908) Bool)

(assert (=> b!4160897 (= e!2582687 (and tp!1269834 (inv!60001 (tag!8374 (h!50893 rules!4132))) (inv!60003 (transformation!7510 (h!50893 rules!4132))) e!2582698))))

(declare-fun b!4160898 () Bool)

(assert (=> b!4160898 (= e!2582696 e!2582695)))

(declare-fun res!1704434 () Bool)

(assert (=> b!4160898 (=> (not res!1704434) (not e!2582695))))

(declare-fun contains!9299 (List!45594 String!52561) Bool)

(assert (=> b!4160898 (= res!1704434 (contains!9299 lt!1482864 tag!272))))

(assert (=> b!4160898 (= lt!1482864 (Cons!45470 (tag!8374 (h!50893 rules!4132)) acc!617))))

(assert (=> b!4160899 (= e!2582698 (and tp!1269835 tp!1269831))))

(declare-fun b!4160900 () Bool)

(declare-fun res!1704430 () Bool)

(assert (=> b!4160900 (=> (not res!1704430) (not e!2582696))))

(assert (=> b!4160900 (= res!1704430 (and (not ((_ is Nil!45473) rules!4132)) (not (= (h!50893 rules!4132) r!4395))))))

(declare-fun b!4160901 () Bool)

(declare-fun res!1704431 () Bool)

(assert (=> b!4160901 (=> (not res!1704431) (not e!2582696))))

(assert (=> b!4160901 (= res!1704431 (contains!9299 acc!617 tag!272))))

(declare-fun e!2582692 () Bool)

(assert (=> b!4160902 (= e!2582692 (and tp!1269833 tp!1269838))))

(declare-fun b!4160903 () Bool)

(declare-fun res!1704432 () Bool)

(assert (=> b!4160903 (=> (not res!1704432) (not e!2582696))))

(assert (=> b!4160903 (= res!1704432 (contains!9298 rules!4132 r!4395))))

(declare-fun tp!1269836 () Bool)

(declare-fun b!4160904 () Bool)

(assert (=> b!4160904 (= e!2582691 (and tp!1269836 (inv!60001 (tag!8374 r!4395)) (inv!60003 (transformation!7510 r!4395)) e!2582692))))

(assert (= (and start!396482 res!1704429) b!4160901))

(assert (= (and b!4160901 res!1704431) b!4160892))

(assert (= (and b!4160892 res!1704428) b!4160903))

(assert (= (and b!4160903 res!1704432) b!4160900))

(assert (= (and b!4160900 res!1704430) b!4160898))

(assert (= (and b!4160898 res!1704434) b!4160895))

(assert (= (and b!4160895 res!1704433) b!4160896))

(assert (= b!4160904 b!4160902))

(assert (= start!396482 b!4160904))

(assert (= (and start!396482 ((_ is Cons!45470) acc!617)) b!4160894))

(assert (= b!4160897 b!4160899))

(assert (= b!4160893 b!4160897))

(assert (= (and start!396482 ((_ is Cons!45473) rules!4132)) b!4160893))

(declare-fun m!4754027 () Bool)

(assert (=> b!4160897 m!4754027))

(declare-fun m!4754029 () Bool)

(assert (=> b!4160897 m!4754029))

(declare-fun m!4754031 () Bool)

(assert (=> b!4160895 m!4754031))

(declare-fun m!4754033 () Bool)

(assert (=> b!4160898 m!4754033))

(declare-fun m!4754035 () Bool)

(assert (=> b!4160901 m!4754035))

(declare-fun m!4754037 () Bool)

(assert (=> b!4160894 m!4754037))

(declare-fun m!4754039 () Bool)

(assert (=> b!4160892 m!4754039))

(declare-fun m!4754041 () Bool)

(assert (=> b!4160904 m!4754041))

(declare-fun m!4754043 () Bool)

(assert (=> b!4160904 m!4754043))

(declare-fun m!4754045 () Bool)

(assert (=> b!4160903 m!4754045))

(declare-fun m!4754047 () Bool)

(assert (=> start!396482 m!4754047))

(declare-fun m!4754049 () Bool)

(assert (=> b!4160896 m!4754049))

(check-sat b_and!324137 b_and!324139 (not b!4160895) (not b!4160898) (not b!4160903) (not b!4160904) (not b!4160893) (not b!4160892) (not b_next!120481) (not b_next!120475) (not b!4160894) (not b!4160897) b_and!324133 b_and!324135 (not b!4160901) (not b_next!120479) (not start!396482) (not b_next!120477) (not b!4160896))
(check-sat b_and!324137 b_and!324139 (not b_next!120479) (not b_next!120477) (not b_next!120481) (not b_next!120475) b_and!324133 b_and!324135)
(get-model)

(declare-fun d!1230141 () Bool)

(assert (=> d!1230141 (= (inv!60001 (tag!8374 (h!50893 rules!4132))) (= (mod (str.len (value!234573 (tag!8374 (h!50893 rules!4132)))) 2) 0))))

(assert (=> b!4160897 d!1230141))

(declare-fun d!1230143 () Bool)

(declare-fun res!1704458 () Bool)

(declare-fun e!2582715 () Bool)

(assert (=> d!1230143 (=> (not res!1704458) (not e!2582715))))

(declare-fun semiInverseModEq!3261 (Int Int) Bool)

(assert (=> d!1230143 (= res!1704458 (semiInverseModEq!3261 (toChars!10033 (transformation!7510 (h!50893 rules!4132))) (toValue!10174 (transformation!7510 (h!50893 rules!4132)))))))

(assert (=> d!1230143 (= (inv!60003 (transformation!7510 (h!50893 rules!4132))) e!2582715)))

(declare-fun b!4160921 () Bool)

(declare-fun equivClasses!3160 (Int Int) Bool)

(assert (=> b!4160921 (= e!2582715 (equivClasses!3160 (toChars!10033 (transformation!7510 (h!50893 rules!4132))) (toValue!10174 (transformation!7510 (h!50893 rules!4132)))))))

(assert (= (and d!1230143 res!1704458) b!4160921))

(declare-fun m!4754067 () Bool)

(assert (=> d!1230143 m!4754067))

(declare-fun m!4754069 () Bool)

(assert (=> b!4160921 m!4754069))

(assert (=> b!4160897 d!1230143))

(declare-fun d!1230153 () Bool)

(declare-fun res!1704465 () Bool)

(declare-fun e!2582722 () Bool)

(assert (=> d!1230153 (=> res!1704465 e!2582722)))

(assert (=> d!1230153 (= res!1704465 ((_ is Nil!45473) rules!4132))))

(assert (=> d!1230153 (= (noDuplicateTag!3087 thiss!27036 rules!4132 acc!617) e!2582722)))

(declare-fun b!4160928 () Bool)

(declare-fun e!2582723 () Bool)

(assert (=> b!4160928 (= e!2582722 e!2582723)))

(declare-fun res!1704466 () Bool)

(assert (=> b!4160928 (=> (not res!1704466) (not e!2582723))))

(assert (=> b!4160928 (= res!1704466 (not (contains!9299 acc!617 (tag!8374 (h!50893 rules!4132)))))))

(declare-fun b!4160929 () Bool)

(assert (=> b!4160929 (= e!2582723 (noDuplicateTag!3087 thiss!27036 (t!343628 rules!4132) (Cons!45470 (tag!8374 (h!50893 rules!4132)) acc!617)))))

(assert (= (and d!1230153 (not res!1704465)) b!4160928))

(assert (= (and b!4160928 res!1704466) b!4160929))

(declare-fun m!4754075 () Bool)

(assert (=> b!4160928 m!4754075))

(declare-fun m!4754077 () Bool)

(assert (=> b!4160929 m!4754077))

(assert (=> b!4160892 d!1230153))

(declare-fun d!1230157 () Bool)

(declare-fun lt!1482874 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!7070 (List!45597) (InoxSet Rule!14820))

(assert (=> d!1230157 (= lt!1482874 (select (content!7070 rules!4132) r!4395))))

(declare-fun e!2582736 () Bool)

(assert (=> d!1230157 (= lt!1482874 e!2582736)))

(declare-fun res!1704478 () Bool)

(assert (=> d!1230157 (=> (not res!1704478) (not e!2582736))))

(assert (=> d!1230157 (= res!1704478 ((_ is Cons!45473) rules!4132))))

(assert (=> d!1230157 (= (contains!9298 rules!4132 r!4395) lt!1482874)))

(declare-fun b!4160941 () Bool)

(declare-fun e!2582735 () Bool)

(assert (=> b!4160941 (= e!2582736 e!2582735)))

(declare-fun res!1704479 () Bool)

(assert (=> b!4160941 (=> res!1704479 e!2582735)))

(assert (=> b!4160941 (= res!1704479 (= (h!50893 rules!4132) r!4395))))

(declare-fun b!4160942 () Bool)

(assert (=> b!4160942 (= e!2582735 (contains!9298 (t!343628 rules!4132) r!4395))))

(assert (= (and d!1230157 res!1704478) b!4160941))

(assert (= (and b!4160941 (not res!1704479)) b!4160942))

(declare-fun m!4754083 () Bool)

(assert (=> d!1230157 m!4754083))

(declare-fun m!4754085 () Bool)

(assert (=> d!1230157 m!4754085))

(assert (=> b!4160942 m!4754049))

(assert (=> b!4160903 d!1230157))

(declare-fun d!1230163 () Bool)

(declare-fun lt!1482878 () Bool)

(declare-fun content!7071 (List!45594) (InoxSet String!52561))

(assert (=> d!1230163 (= lt!1482878 (select (content!7071 lt!1482864) tag!272))))

(declare-fun e!2582756 () Bool)

(assert (=> d!1230163 (= lt!1482878 e!2582756)))

(declare-fun res!1704489 () Bool)

(assert (=> d!1230163 (=> (not res!1704489) (not e!2582756))))

(assert (=> d!1230163 (= res!1704489 ((_ is Cons!45470) lt!1482864))))

(assert (=> d!1230163 (= (contains!9299 lt!1482864 tag!272) lt!1482878)))

(declare-fun b!4160971 () Bool)

(declare-fun e!2582755 () Bool)

(assert (=> b!4160971 (= e!2582756 e!2582755)))

(declare-fun res!1704490 () Bool)

(assert (=> b!4160971 (=> res!1704490 e!2582755)))

(assert (=> b!4160971 (= res!1704490 (= (h!50890 lt!1482864) tag!272))))

(declare-fun b!4160972 () Bool)

(assert (=> b!4160972 (= e!2582755 (contains!9299 (t!343625 lt!1482864) tag!272))))

(assert (= (and d!1230163 res!1704489) b!4160971))

(assert (= (and b!4160971 (not res!1704490)) b!4160972))

(declare-fun m!4754103 () Bool)

(assert (=> d!1230163 m!4754103))

(declare-fun m!4754105 () Bool)

(assert (=> d!1230163 m!4754105))

(declare-fun m!4754107 () Bool)

(assert (=> b!4160972 m!4754107))

(assert (=> b!4160898 d!1230163))

(declare-fun d!1230171 () Bool)

(assert (=> d!1230171 (= (inv!60001 tag!272) (= (mod (str.len (value!234573 tag!272)) 2) 0))))

(assert (=> start!396482 d!1230171))

(declare-fun d!1230173 () Bool)

(assert (=> d!1230173 (= (inv!60001 (tag!8374 r!4395)) (= (mod (str.len (value!234573 (tag!8374 r!4395))) 2) 0))))

(assert (=> b!4160904 d!1230173))

(declare-fun d!1230175 () Bool)

(declare-fun res!1704491 () Bool)

(declare-fun e!2582759 () Bool)

(assert (=> d!1230175 (=> (not res!1704491) (not e!2582759))))

(assert (=> d!1230175 (= res!1704491 (semiInverseModEq!3261 (toChars!10033 (transformation!7510 r!4395)) (toValue!10174 (transformation!7510 r!4395))))))

(assert (=> d!1230175 (= (inv!60003 (transformation!7510 r!4395)) e!2582759)))

(declare-fun b!4160977 () Bool)

(assert (=> b!4160977 (= e!2582759 (equivClasses!3160 (toChars!10033 (transformation!7510 r!4395)) (toValue!10174 (transformation!7510 r!4395))))))

(assert (= (and d!1230175 res!1704491) b!4160977))

(declare-fun m!4754109 () Bool)

(assert (=> d!1230175 m!4754109))

(declare-fun m!4754111 () Bool)

(assert (=> b!4160977 m!4754111))

(assert (=> b!4160904 d!1230175))

(declare-fun d!1230177 () Bool)

(assert (=> d!1230177 (= (inv!60001 (h!50890 acc!617)) (= (mod (str.len (value!234573 (h!50890 acc!617))) 2) 0))))

(assert (=> b!4160894 d!1230177))

(declare-fun d!1230179 () Bool)

(declare-fun res!1704492 () Bool)

(declare-fun e!2582764 () Bool)

(assert (=> d!1230179 (=> res!1704492 e!2582764)))

(assert (=> d!1230179 (= res!1704492 ((_ is Nil!45473) (t!343628 rules!4132)))))

(assert (=> d!1230179 (= (noDuplicateTag!3087 thiss!27036 (t!343628 rules!4132) lt!1482864) e!2582764)))

(declare-fun b!4160980 () Bool)

(declare-fun e!2582765 () Bool)

(assert (=> b!4160980 (= e!2582764 e!2582765)))

(declare-fun res!1704493 () Bool)

(assert (=> b!4160980 (=> (not res!1704493) (not e!2582765))))

(assert (=> b!4160980 (= res!1704493 (not (contains!9299 lt!1482864 (tag!8374 (h!50893 (t!343628 rules!4132))))))))

(declare-fun b!4160981 () Bool)

(assert (=> b!4160981 (= e!2582765 (noDuplicateTag!3087 thiss!27036 (t!343628 (t!343628 rules!4132)) (Cons!45470 (tag!8374 (h!50893 (t!343628 rules!4132))) lt!1482864)))))

(assert (= (and d!1230179 (not res!1704492)) b!4160980))

(assert (= (and b!4160980 res!1704493) b!4160981))

(declare-fun m!4754113 () Bool)

(assert (=> b!4160980 m!4754113))

(declare-fun m!4754115 () Bool)

(assert (=> b!4160981 m!4754115))

(assert (=> b!4160895 d!1230179))

(declare-fun d!1230181 () Bool)

(declare-fun lt!1482879 () Bool)

(assert (=> d!1230181 (= lt!1482879 (select (content!7071 acc!617) tag!272))))

(declare-fun e!2582769 () Bool)

(assert (=> d!1230181 (= lt!1482879 e!2582769)))

(declare-fun res!1704494 () Bool)

(assert (=> d!1230181 (=> (not res!1704494) (not e!2582769))))

(assert (=> d!1230181 (= res!1704494 ((_ is Cons!45470) acc!617))))

(assert (=> d!1230181 (= (contains!9299 acc!617 tag!272) lt!1482879)))

(declare-fun b!4160984 () Bool)

(declare-fun e!2582768 () Bool)

(assert (=> b!4160984 (= e!2582769 e!2582768)))

(declare-fun res!1704495 () Bool)

(assert (=> b!4160984 (=> res!1704495 e!2582768)))

(assert (=> b!4160984 (= res!1704495 (= (h!50890 acc!617) tag!272))))

(declare-fun b!4160985 () Bool)

(assert (=> b!4160985 (= e!2582768 (contains!9299 (t!343625 acc!617) tag!272))))

(assert (= (and d!1230181 res!1704494) b!4160984))

(assert (= (and b!4160984 (not res!1704495)) b!4160985))

(declare-fun m!4754117 () Bool)

(assert (=> d!1230181 m!4754117))

(declare-fun m!4754119 () Bool)

(assert (=> d!1230181 m!4754119))

(declare-fun m!4754121 () Bool)

(assert (=> b!4160985 m!4754121))

(assert (=> b!4160901 d!1230181))

(declare-fun d!1230183 () Bool)

(declare-fun lt!1482880 () Bool)

(assert (=> d!1230183 (= lt!1482880 (select (content!7070 (t!343628 rules!4132)) r!4395))))

(declare-fun e!2582771 () Bool)

(assert (=> d!1230183 (= lt!1482880 e!2582771)))

(declare-fun res!1704496 () Bool)

(assert (=> d!1230183 (=> (not res!1704496) (not e!2582771))))

(assert (=> d!1230183 (= res!1704496 ((_ is Cons!45473) (t!343628 rules!4132)))))

(assert (=> d!1230183 (= (contains!9298 (t!343628 rules!4132) r!4395) lt!1482880)))

(declare-fun b!4160986 () Bool)

(declare-fun e!2582770 () Bool)

(assert (=> b!4160986 (= e!2582771 e!2582770)))

(declare-fun res!1704497 () Bool)

(assert (=> b!4160986 (=> res!1704497 e!2582770)))

(assert (=> b!4160986 (= res!1704497 (= (h!50893 (t!343628 rules!4132)) r!4395))))

(declare-fun b!4160987 () Bool)

(assert (=> b!4160987 (= e!2582770 (contains!9298 (t!343628 (t!343628 rules!4132)) r!4395))))

(assert (= (and d!1230183 res!1704496) b!4160986))

(assert (= (and b!4160986 (not res!1704497)) b!4160987))

(declare-fun m!4754123 () Bool)

(assert (=> d!1230183 m!4754123))

(declare-fun m!4754125 () Bool)

(assert (=> d!1230183 m!4754125))

(declare-fun m!4754127 () Bool)

(assert (=> b!4160987 m!4754127))

(assert (=> b!4160896 d!1230183))

(declare-fun e!2582779 () Bool)

(assert (=> b!4160897 (= tp!1269834 e!2582779)))

(declare-fun b!4161008 () Bool)

(declare-fun tp!1269886 () Bool)

(declare-fun tp!1269884 () Bool)

(assert (=> b!4161008 (= e!2582779 (and tp!1269886 tp!1269884))))

(declare-fun b!4161007 () Bool)

(declare-fun tp!1269885 () Bool)

(assert (=> b!4161007 (= e!2582779 tp!1269885)))

(declare-fun b!4161006 () Bool)

(declare-fun tp!1269888 () Bool)

(declare-fun tp!1269887 () Bool)

(assert (=> b!4161006 (= e!2582779 (and tp!1269888 tp!1269887))))

(declare-fun b!4161005 () Bool)

(declare-fun tp_is_empty!21797 () Bool)

(assert (=> b!4161005 (= e!2582779 tp_is_empty!21797)))

(assert (= (and b!4160897 ((_ is ElementMatch!12415) (regex!7510 (h!50893 rules!4132)))) b!4161005))

(assert (= (and b!4160897 ((_ is Concat!20156) (regex!7510 (h!50893 rules!4132)))) b!4161006))

(assert (= (and b!4160897 ((_ is Star!12415) (regex!7510 (h!50893 rules!4132)))) b!4161007))

(assert (= (and b!4160897 ((_ is Union!12415) (regex!7510 (h!50893 rules!4132)))) b!4161008))

(declare-fun b!4161019 () Bool)

(declare-fun b_free!119783 () Bool)

(declare-fun b_next!120487 () Bool)

(assert (=> b!4161019 (= b_free!119783 (not b_next!120487))))

(declare-fun tp!1269900 () Bool)

(declare-fun b_and!324145 () Bool)

(assert (=> b!4161019 (= tp!1269900 b_and!324145)))

(declare-fun b_free!119785 () Bool)

(declare-fun b_next!120489 () Bool)

(assert (=> b!4161019 (= b_free!119785 (not b_next!120489))))

(declare-fun tp!1269899 () Bool)

(declare-fun b_and!324147 () Bool)

(assert (=> b!4161019 (= tp!1269899 b_and!324147)))

(declare-fun e!2582790 () Bool)

(assert (=> b!4161019 (= e!2582790 (and tp!1269900 tp!1269899))))

(declare-fun tp!1269898 () Bool)

(declare-fun e!2582791 () Bool)

(declare-fun b!4161018 () Bool)

(assert (=> b!4161018 (= e!2582791 (and tp!1269898 (inv!60001 (tag!8374 (h!50893 (t!343628 rules!4132)))) (inv!60003 (transformation!7510 (h!50893 (t!343628 rules!4132)))) e!2582790))))

(declare-fun b!4161017 () Bool)

(declare-fun e!2582788 () Bool)

(declare-fun tp!1269897 () Bool)

(assert (=> b!4161017 (= e!2582788 (and e!2582791 tp!1269897))))

(assert (=> b!4160893 (= tp!1269837 e!2582788)))

(assert (= b!4161018 b!4161019))

(assert (= b!4161017 b!4161018))

(assert (= (and b!4160893 ((_ is Cons!45473) (t!343628 rules!4132))) b!4161017))

(declare-fun m!4754133 () Bool)

(assert (=> b!4161018 m!4754133))

(declare-fun m!4754135 () Bool)

(assert (=> b!4161018 m!4754135))

(declare-fun e!2582792 () Bool)

(assert (=> b!4160904 (= tp!1269836 e!2582792)))

(declare-fun b!4161023 () Bool)

(declare-fun tp!1269903 () Bool)

(declare-fun tp!1269901 () Bool)

(assert (=> b!4161023 (= e!2582792 (and tp!1269903 tp!1269901))))

(declare-fun b!4161022 () Bool)

(declare-fun tp!1269902 () Bool)

(assert (=> b!4161022 (= e!2582792 tp!1269902)))

(declare-fun b!4161021 () Bool)

(declare-fun tp!1269905 () Bool)

(declare-fun tp!1269904 () Bool)

(assert (=> b!4161021 (= e!2582792 (and tp!1269905 tp!1269904))))

(declare-fun b!4161020 () Bool)

(assert (=> b!4161020 (= e!2582792 tp_is_empty!21797)))

(assert (= (and b!4160904 ((_ is ElementMatch!12415) (regex!7510 r!4395))) b!4161020))

(assert (= (and b!4160904 ((_ is Concat!20156) (regex!7510 r!4395))) b!4161021))

(assert (= (and b!4160904 ((_ is Star!12415) (regex!7510 r!4395))) b!4161022))

(assert (= (and b!4160904 ((_ is Union!12415) (regex!7510 r!4395))) b!4161023))

(declare-fun b!4161028 () Bool)

(declare-fun e!2582797 () Bool)

(declare-fun tp!1269908 () Bool)

(assert (=> b!4161028 (= e!2582797 (and (inv!60001 (h!50890 (t!343625 acc!617))) tp!1269908))))

(assert (=> b!4160894 (= tp!1269832 e!2582797)))

(assert (= (and b!4160894 ((_ is Cons!45470) (t!343625 acc!617))) b!4161028))

(declare-fun m!4754137 () Bool)

(assert (=> b!4161028 m!4754137))

(check-sat (not b!4160981) b_and!324137 b_and!324139 (not d!1230163) (not b!4161023) (not b!4161021) (not b!4160929) (not b!4160977) (not b_next!120489) (not d!1230143) (not b_next!120479) (not b!4161018) (not b!4160921) (not d!1230157) (not b!4161022) (not b!4161008) (not b!4161017) (not b!4160928) (not b!4161028) (not b!4160972) (not b!4160987) b_and!324133 b_and!324135 (not d!1230183) (not b!4161006) (not d!1230181) (not b!4160985) b_and!324147 (not b!4160942) (not b_next!120487) (not b!4160980) (not b_next!120477) (not d!1230175) b_and!324145 (not b_next!120481) (not b!4161007) (not b_next!120475) tp_is_empty!21797)
(check-sat b_and!324137 b_and!324139 (not b_next!120489) (not b_next!120479) b_and!324147 (not b_next!120487) (not b_next!120477) (not b_next!120475) b_and!324133 b_and!324135 b_and!324145 (not b_next!120481))
