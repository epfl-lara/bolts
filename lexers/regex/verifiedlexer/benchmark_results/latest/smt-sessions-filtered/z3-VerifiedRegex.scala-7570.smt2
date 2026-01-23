; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!399594 () Bool)

(assert start!399594)

(declare-fun b!4187621 () Bool)

(declare-fun b_free!121799 () Bool)

(declare-fun b_next!122503 () Bool)

(assert (=> b!4187621 (= b_free!121799 (not b_next!122503))))

(declare-fun tp!1279635 () Bool)

(declare-fun b_and!327985 () Bool)

(assert (=> b!4187621 (= tp!1279635 b_and!327985)))

(declare-fun b_free!121801 () Bool)

(declare-fun b_next!122505 () Bool)

(assert (=> b!4187621 (= b_free!121801 (not b_next!122505))))

(declare-fun tp!1279634 () Bool)

(declare-fun b_and!327987 () Bool)

(assert (=> b!4187621 (= tp!1279634 b_and!327987)))

(declare-fun b!4187611 () Bool)

(declare-fun b_free!121803 () Bool)

(declare-fun b_next!122507 () Bool)

(assert (=> b!4187611 (= b_free!121803 (not b_next!122507))))

(declare-fun tp!1279626 () Bool)

(declare-fun b_and!327989 () Bool)

(assert (=> b!4187611 (= tp!1279626 b_and!327989)))

(declare-fun b_free!121805 () Bool)

(declare-fun b_next!122509 () Bool)

(assert (=> b!4187611 (= b_free!121805 (not b_next!122509))))

(declare-fun tp!1279631 () Bool)

(declare-fun b_and!327991 () Bool)

(assert (=> b!4187611 (= tp!1279631 b_and!327991)))

(declare-fun b!4187629 () Bool)

(declare-fun b_free!121807 () Bool)

(declare-fun b_next!122511 () Bool)

(assert (=> b!4187629 (= b_free!121807 (not b_next!122511))))

(declare-fun tp!1279632 () Bool)

(declare-fun b_and!327993 () Bool)

(assert (=> b!4187629 (= tp!1279632 b_and!327993)))

(declare-fun b_free!121809 () Bool)

(declare-fun b_next!122513 () Bool)

(assert (=> b!4187629 (= b_free!121809 (not b_next!122513))))

(declare-fun tp!1279627 () Bool)

(declare-fun b_and!327995 () Bool)

(assert (=> b!4187629 (= tp!1279627 b_and!327995)))

(declare-fun b!4187607 () Bool)

(declare-fun res!1717886 () Bool)

(declare-fun e!2599613 () Bool)

(assert (=> b!4187607 (=> (not res!1717886) (not e!2599613))))

(declare-datatypes ((C!25312 0))(
  ( (C!25313 (val!14818 Int)) )
))
(declare-datatypes ((List!46095 0))(
  ( (Nil!45971) (Cons!45971 (h!51391 C!25312) (t!345738 List!46095)) )
))
(declare-fun pBis!107 () List!46095)

(declare-fun input!3342 () List!46095)

(declare-fun isPrefix!4513 (List!46095 List!46095) Bool)

(assert (=> b!4187607 (= res!1717886 (isPrefix!4513 pBis!107 input!3342))))

(declare-fun b!4187608 () Bool)

(declare-fun e!2599615 () Bool)

(declare-fun tp_is_empty!22085 () Bool)

(declare-fun tp!1279633 () Bool)

(assert (=> b!4187608 (= e!2599615 (and tp_is_empty!22085 tp!1279633))))

(declare-fun b!4187609 () Bool)

(declare-fun res!1717896 () Bool)

(assert (=> b!4187609 (=> (not res!1717896) (not e!2599613))))

(declare-datatypes ((List!46096 0))(
  ( (Nil!45972) (Cons!45972 (h!51392 (_ BitVec 16)) (t!345739 List!46096)) )
))
(declare-datatypes ((TokenValue!7886 0))(
  ( (FloatLiteralValue!15772 (text!55647 List!46096)) (TokenValueExt!7885 (__x!27993 Int)) (Broken!39430 (value!238702 List!46096)) (Object!8009) (End!7886) (Def!7886) (Underscore!7886) (Match!7886) (Else!7886) (Error!7886) (Case!7886) (If!7886) (Extends!7886) (Abstract!7886) (Class!7886) (Val!7886) (DelimiterValue!15772 (del!7946 List!46096)) (KeywordValue!7892 (value!238703 List!46096)) (CommentValue!15772 (value!238704 List!46096)) (WhitespaceValue!15772 (value!238705 List!46096)) (IndentationValue!7886 (value!238706 List!46096)) (String!53295) (Int32!7886) (Broken!39431 (value!238707 List!46096)) (Boolean!7887) (Unit!65058) (OperatorValue!7889 (op!7946 List!46096)) (IdentifierValue!15772 (value!238708 List!46096)) (IdentifierValue!15773 (value!238709 List!46096)) (WhitespaceValue!15773 (value!238710 List!46096)) (True!15772) (False!15772) (Broken!39432 (value!238711 List!46096)) (Broken!39433 (value!238712 List!46096)) (True!15773) (RightBrace!7886) (RightBracket!7886) (Colon!7886) (Null!7886) (Comma!7886) (LeftBracket!7886) (False!15773) (LeftBrace!7886) (ImaginaryLiteralValue!7886 (text!55648 List!46096)) (StringLiteralValue!23658 (value!238713 List!46096)) (EOFValue!7886 (value!238714 List!46096)) (IdentValue!7886 (value!238715 List!46096)) (DelimiterValue!15773 (value!238716 List!46096)) (DedentValue!7886 (value!238717 List!46096)) (NewLineValue!7886 (value!238718 List!46096)) (IntegerValue!23658 (value!238719 (_ BitVec 32)) (text!55649 List!46096)) (IntegerValue!23659 (value!238720 Int) (text!55650 List!46096)) (Times!7886) (Or!7886) (Equal!7886) (Minus!7886) (Broken!39434 (value!238721 List!46096)) (And!7886) (Div!7886) (LessEqual!7886) (Mod!7886) (Concat!20447) (Not!7886) (Plus!7886) (SpaceValue!7886 (value!238722 List!46096)) (IntegerValue!23660 (value!238723 Int) (text!55651 List!46096)) (StringLiteralValue!23659 (text!55652 List!46096)) (FloatLiteralValue!15773 (text!55653 List!46096)) (BytesLiteralValue!7886 (value!238724 List!46096)) (CommentValue!15773 (value!238725 List!46096)) (StringLiteralValue!23660 (value!238726 List!46096)) (ErrorTokenValue!7886 (msg!7947 List!46096)) )
))
(declare-datatypes ((IArray!27739 0))(
  ( (IArray!27740 (innerList!13927 List!46095)) )
))
(declare-datatypes ((Conc!13867 0))(
  ( (Node!13867 (left!34249 Conc!13867) (right!34579 Conc!13867) (csize!27964 Int) (cheight!14078 Int)) (Leaf!21438 (xs!17173 IArray!27739) (csize!27965 Int)) (Empty!13867) )
))
(declare-datatypes ((BalanceConc!27328 0))(
  ( (BalanceConc!27329 (c!714790 Conc!13867)) )
))
(declare-datatypes ((Regex!12561 0))(
  ( (ElementMatch!12561 (c!714791 C!25312)) (Concat!20448 (regOne!25634 Regex!12561) (regTwo!25634 Regex!12561)) (EmptyExpr!12561) (Star!12561 (reg!12890 Regex!12561)) (EmptyLang!12561) (Union!12561 (regOne!25635 Regex!12561) (regTwo!25635 Regex!12561)) )
))
(declare-datatypes ((String!53296 0))(
  ( (String!53297 (value!238727 String)) )
))
(declare-datatypes ((TokenValueInjection!15200 0))(
  ( (TokenValueInjection!15201 (toValue!10352 Int) (toChars!10211 Int)) )
))
(declare-datatypes ((Rule!15112 0))(
  ( (Rule!15113 (regex!7656 Regex!12561) (tag!8520 String!53296) (isSeparator!7656 Bool) (transformation!7656 TokenValueInjection!15200)) )
))
(declare-fun r!4142 () Rule!15112)

(declare-fun validRegex!5678 (Regex!12561) Bool)

(assert (=> b!4187609 (= res!1717896 (validRegex!5678 (regex!7656 r!4142)))))

(declare-fun b!4187610 () Bool)

(declare-fun e!2599607 () Bool)

(declare-fun rBis!167 () Rule!15112)

(declare-fun matchR!6300 (Regex!12561 List!46095) Bool)

(assert (=> b!4187610 (= e!2599607 (not (matchR!6300 (regex!7656 rBis!167) pBis!107)))))

(assert (=> b!4187610 false))

(declare-datatypes ((Unit!65059 0))(
  ( (Unit!65060) )
))
(declare-fun lt!1491357 () Unit!65059)

(declare-datatypes ((Token!14026 0))(
  ( (Token!14027 (value!238728 TokenValue!7886) (rule!10732 Rule!15112) (size!33762 Int) (originalCharacters!8044 List!46095)) )
))
(declare-datatypes ((tuple2!43778 0))(
  ( (tuple2!43779 (_1!25023 Token!14026) (_2!25023 List!46095)) )
))
(declare-fun lt!1491362 () tuple2!43778)

(declare-datatypes ((LexerInterface!7249 0))(
  ( (LexerInterfaceExt!7246 (__x!27994 Int)) (Lexer!7247) )
))
(declare-fun thiss!25986 () LexerInterface!7249)

(declare-fun lt!1491353 () Token!14026)

(declare-fun lt!1491365 () List!46095)

(declare-datatypes ((List!46097 0))(
  ( (Nil!45973) (Cons!45973 (h!51393 Rule!15112) (t!345740 List!46097)) )
))
(declare-fun rules!3843 () List!46097)

(declare-fun p!2959 () List!46095)

(declare-fun lemmaRuleReturnsPrefixSmallerEqualThanGlobalMaxPref!22 (LexerInterface!7249 List!46097 List!46095 Token!14026 List!46095 List!46095 List!46095 List!46095 Rule!15112 Token!14026) Unit!65059)

(assert (=> b!4187610 (= lt!1491357 (lemmaRuleReturnsPrefixSmallerEqualThanGlobalMaxPref!22 thiss!25986 rules!3843 p!2959 lt!1491353 input!3342 lt!1491365 pBis!107 (_2!25023 lt!1491362) rBis!167 (_1!25023 lt!1491362)))))

(declare-fun e!2599603 () Bool)

(assert (=> b!4187611 (= e!2599603 (and tp!1279626 tp!1279631))))

(declare-fun b!4187612 () Bool)

(declare-fun res!1717882 () Bool)

(assert (=> b!4187612 (=> (not res!1717882) (not e!2599613))))

(declare-fun contains!9465 (List!46097 Rule!15112) Bool)

(assert (=> b!4187612 (= res!1717882 (contains!9465 rules!3843 r!4142))))

(declare-fun b!4187614 () Bool)

(declare-fun e!2599611 () Bool)

(declare-fun e!2599605 () Bool)

(assert (=> b!4187614 (= e!2599611 e!2599605)))

(declare-fun res!1717885 () Bool)

(assert (=> b!4187614 (=> res!1717885 e!2599605)))

(declare-datatypes ((Option!9850 0))(
  ( (None!9849) (Some!9849 (v!40673 tuple2!43778)) )
))
(declare-fun lt!1491354 () Option!9850)

(declare-fun isEmpty!27210 (Option!9850) Bool)

(assert (=> b!4187614 (= res!1717885 (isEmpty!27210 lt!1491354))))

(declare-fun maxPrefixOneRule!3258 (LexerInterface!7249 Rule!15112 List!46095) Option!9850)

(assert (=> b!4187614 (= lt!1491354 (maxPrefixOneRule!3258 thiss!25986 rBis!167 input!3342))))

(declare-fun lt!1491366 () Unit!65059)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2380 (LexerInterface!7249 Rule!15112 List!46097) Unit!65059)

(assert (=> b!4187614 (= lt!1491366 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2380 thiss!25986 rBis!167 rules!3843))))

(declare-fun lt!1491359 () Int)

(declare-fun size!33763 (List!46095) Int)

(assert (=> b!4187614 (<= lt!1491359 (size!33763 input!3342))))

(declare-fun lt!1491367 () Unit!65059)

(declare-fun lemmaIsPrefixThenSmallerEqSize!543 (List!46095 List!46095) Unit!65059)

(assert (=> b!4187614 (= lt!1491367 (lemmaIsPrefixThenSmallerEqSize!543 pBis!107 input!3342))))

(declare-fun b!4187615 () Bool)

(declare-fun res!1717888 () Bool)

(assert (=> b!4187615 (=> (not res!1717888) (not e!2599613))))

(assert (=> b!4187615 (= res!1717888 (isPrefix!4513 p!2959 input!3342))))

(declare-fun b!4187616 () Bool)

(declare-fun res!1717890 () Bool)

(assert (=> b!4187616 (=> (not res!1717890) (not e!2599613))))

(declare-fun ruleValid!3374 (LexerInterface!7249 Rule!15112) Bool)

(assert (=> b!4187616 (= res!1717890 (ruleValid!3374 thiss!25986 r!4142))))

(declare-fun b!4187617 () Bool)

(declare-fun e!2599606 () Bool)

(assert (=> b!4187617 (= e!2599606 e!2599611)))

(declare-fun res!1717893 () Bool)

(assert (=> b!4187617 (=> res!1717893 e!2599611)))

(declare-fun lt!1491368 () Int)

(assert (=> b!4187617 (= res!1717893 (<= lt!1491359 lt!1491368))))

(assert (=> b!4187617 (= lt!1491359 (size!33763 pBis!107))))

(declare-fun b!4187618 () Bool)

(declare-fun res!1717884 () Bool)

(assert (=> b!4187618 (=> res!1717884 e!2599611)))

(declare-fun lt!1491363 () Option!9850)

(declare-fun maxPrefix!4297 (LexerInterface!7249 List!46097 List!46095) Option!9850)

(assert (=> b!4187618 (= res!1717884 (not (= (maxPrefix!4297 thiss!25986 rules!3843 input!3342) lt!1491363)))))

(declare-fun b!4187619 () Bool)

(declare-fun e!2599610 () Bool)

(declare-fun tp!1279624 () Bool)

(assert (=> b!4187619 (= e!2599610 (and tp_is_empty!22085 tp!1279624))))

(declare-fun b!4187620 () Bool)

(declare-fun e!2599614 () Bool)

(declare-fun tp!1279629 () Bool)

(assert (=> b!4187620 (= e!2599614 (and tp_is_empty!22085 tp!1279629))))

(declare-fun e!2599609 () Bool)

(assert (=> b!4187621 (= e!2599609 (and tp!1279635 tp!1279634))))

(declare-fun b!4187622 () Bool)

(assert (=> b!4187622 (= e!2599613 (not e!2599606))))

(declare-fun res!1717889 () Bool)

(assert (=> b!4187622 (=> res!1717889 e!2599606)))

(assert (=> b!4187622 (= res!1717889 (not (= (maxPrefixOneRule!3258 thiss!25986 r!4142 input!3342) lt!1491363)))))

(assert (=> b!4187622 (= lt!1491363 (Some!9849 (tuple2!43779 lt!1491353 lt!1491365)))))

(declare-fun getSuffix!2806 (List!46095 List!46095) List!46095)

(assert (=> b!4187622 (= lt!1491365 (getSuffix!2806 input!3342 p!2959))))

(declare-fun lt!1491358 () TokenValue!7886)

(assert (=> b!4187622 (= lt!1491353 (Token!14027 lt!1491358 r!4142 lt!1491368 p!2959))))

(assert (=> b!4187622 (= lt!1491368 (size!33763 p!2959))))

(declare-fun lt!1491360 () BalanceConc!27328)

(declare-fun apply!10621 (TokenValueInjection!15200 BalanceConc!27328) TokenValue!7886)

(assert (=> b!4187622 (= lt!1491358 (apply!10621 (transformation!7656 r!4142) lt!1491360))))

(assert (=> b!4187622 (isPrefix!4513 input!3342 input!3342)))

(declare-fun lt!1491361 () Unit!65059)

(declare-fun lemmaIsPrefixRefl!2942 (List!46095 List!46095) Unit!65059)

(assert (=> b!4187622 (= lt!1491361 (lemmaIsPrefixRefl!2942 input!3342 input!3342))))

(declare-fun lt!1491364 () Unit!65059)

(declare-fun lemmaSemiInverse!2422 (TokenValueInjection!15200 BalanceConc!27328) Unit!65059)

(assert (=> b!4187622 (= lt!1491364 (lemmaSemiInverse!2422 (transformation!7656 r!4142) lt!1491360))))

(declare-fun seqFromList!5681 (List!46095) BalanceConc!27328)

(assert (=> b!4187622 (= lt!1491360 (seqFromList!5681 p!2959))))

(declare-fun b!4187623 () Bool)

(declare-fun res!1717894 () Bool)

(assert (=> b!4187623 (=> res!1717894 e!2599611)))

(assert (=> b!4187623 (= res!1717894 (not (ruleValid!3374 thiss!25986 rBis!167)))))

(declare-fun b!4187624 () Bool)

(declare-fun res!1717881 () Bool)

(assert (=> b!4187624 (=> (not res!1717881) (not e!2599613))))

(declare-fun isEmpty!27211 (List!46097) Bool)

(assert (=> b!4187624 (= res!1717881 (not (isEmpty!27211 rules!3843)))))

(declare-fun tp!1279630 () Bool)

(declare-fun b!4187625 () Bool)

(declare-fun e!2599612 () Bool)

(declare-fun inv!60520 (String!53296) Bool)

(declare-fun inv!60522 (TokenValueInjection!15200) Bool)

(assert (=> b!4187625 (= e!2599612 (and tp!1279630 (inv!60520 (tag!8520 r!4142)) (inv!60522 (transformation!7656 r!4142)) e!2599603))))

(declare-fun b!4187626 () Bool)

(assert (=> b!4187626 (= e!2599605 e!2599607)))

(declare-fun res!1717883 () Bool)

(assert (=> b!4187626 (=> res!1717883 e!2599607)))

(declare-fun lt!1491356 () List!46095)

(assert (=> b!4187626 (= res!1717883 (not (= lt!1491356 pBis!107)))))

(declare-fun ++!11728 (List!46095 List!46095) List!46095)

(assert (=> b!4187626 (isPrefix!4513 lt!1491356 (++!11728 lt!1491356 (_2!25023 lt!1491362)))))

(declare-fun lt!1491355 () Unit!65059)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3010 (List!46095 List!46095) Unit!65059)

(assert (=> b!4187626 (= lt!1491355 (lemmaConcatTwoListThenFirstIsPrefix!3010 lt!1491356 (_2!25023 lt!1491362)))))

(declare-fun list!16608 (BalanceConc!27328) List!46095)

(declare-fun charsOf!5091 (Token!14026) BalanceConc!27328)

(assert (=> b!4187626 (= lt!1491356 (list!16608 (charsOf!5091 (_1!25023 lt!1491362))))))

(declare-fun get!14943 (Option!9850) tuple2!43778)

(assert (=> b!4187626 (= lt!1491362 (get!14943 lt!1491354))))

(declare-fun b!4187627 () Bool)

(declare-fun res!1717891 () Bool)

(assert (=> b!4187627 (=> (not res!1717891) (not e!2599613))))

(assert (=> b!4187627 (= res!1717891 (matchR!6300 (regex!7656 r!4142) p!2959))))

(declare-fun b!4187628 () Bool)

(declare-fun res!1717887 () Bool)

(assert (=> b!4187628 (=> (not res!1717887) (not e!2599613))))

(assert (=> b!4187628 (= res!1717887 (contains!9465 rules!3843 rBis!167))))

(declare-fun e!2599616 () Bool)

(assert (=> b!4187629 (= e!2599616 (and tp!1279632 tp!1279627))))

(declare-fun b!4187630 () Bool)

(declare-fun e!2599602 () Bool)

(declare-fun e!2599617 () Bool)

(declare-fun tp!1279625 () Bool)

(assert (=> b!4187630 (= e!2599602 (and e!2599617 tp!1279625))))

(declare-fun tp!1279636 () Bool)

(declare-fun b!4187613 () Bool)

(declare-fun e!2599601 () Bool)

(assert (=> b!4187613 (= e!2599601 (and tp!1279636 (inv!60520 (tag!8520 rBis!167)) (inv!60522 (transformation!7656 rBis!167)) e!2599609))))

(declare-fun res!1717892 () Bool)

(assert (=> start!399594 (=> (not res!1717892) (not e!2599613))))

(get-info :version)

(assert (=> start!399594 (= res!1717892 ((_ is Lexer!7247) thiss!25986))))

(assert (=> start!399594 e!2599613))

(assert (=> start!399594 true))

(assert (=> start!399594 e!2599601))

(assert (=> start!399594 e!2599612))

(assert (=> start!399594 e!2599602))

(assert (=> start!399594 e!2599615))

(assert (=> start!399594 e!2599610))

(assert (=> start!399594 e!2599614))

(declare-fun tp!1279628 () Bool)

(declare-fun b!4187631 () Bool)

(assert (=> b!4187631 (= e!2599617 (and tp!1279628 (inv!60520 (tag!8520 (h!51393 rules!3843))) (inv!60522 (transformation!7656 (h!51393 rules!3843))) e!2599616))))

(declare-fun b!4187632 () Bool)

(declare-fun res!1717895 () Bool)

(assert (=> b!4187632 (=> (not res!1717895) (not e!2599613))))

(declare-fun rulesInvariant!6462 (LexerInterface!7249 List!46097) Bool)

(assert (=> b!4187632 (= res!1717895 (rulesInvariant!6462 thiss!25986 rules!3843))))

(assert (= (and start!399594 res!1717892) b!4187615))

(assert (= (and b!4187615 res!1717888) b!4187607))

(assert (= (and b!4187607 res!1717886) b!4187624))

(assert (= (and b!4187624 res!1717881) b!4187632))

(assert (= (and b!4187632 res!1717895) b!4187612))

(assert (= (and b!4187612 res!1717882) b!4187628))

(assert (= (and b!4187628 res!1717887) b!4187609))

(assert (= (and b!4187609 res!1717896) b!4187627))

(assert (= (and b!4187627 res!1717891) b!4187616))

(assert (= (and b!4187616 res!1717890) b!4187622))

(assert (= (and b!4187622 (not res!1717889)) b!4187617))

(assert (= (and b!4187617 (not res!1717893)) b!4187623))

(assert (= (and b!4187623 (not res!1717894)) b!4187618))

(assert (= (and b!4187618 (not res!1717884)) b!4187614))

(assert (= (and b!4187614 (not res!1717885)) b!4187626))

(assert (= (and b!4187626 (not res!1717883)) b!4187610))

(assert (= b!4187613 b!4187621))

(assert (= start!399594 b!4187613))

(assert (= b!4187625 b!4187611))

(assert (= start!399594 b!4187625))

(assert (= b!4187631 b!4187629))

(assert (= b!4187630 b!4187631))

(assert (= (and start!399594 ((_ is Cons!45973) rules!3843)) b!4187630))

(assert (= (and start!399594 ((_ is Cons!45971) input!3342)) b!4187608))

(assert (= (and start!399594 ((_ is Cons!45971) pBis!107)) b!4187619))

(assert (= (and start!399594 ((_ is Cons!45971) p!2959)) b!4187620))

(declare-fun m!4776537 () Bool)

(assert (=> b!4187628 m!4776537))

(declare-fun m!4776539 () Bool)

(assert (=> b!4187618 m!4776539))

(declare-fun m!4776541 () Bool)

(assert (=> b!4187609 m!4776541))

(declare-fun m!4776543 () Bool)

(assert (=> b!4187616 m!4776543))

(declare-fun m!4776545 () Bool)

(assert (=> b!4187623 m!4776545))

(declare-fun m!4776547 () Bool)

(assert (=> b!4187632 m!4776547))

(declare-fun m!4776549 () Bool)

(assert (=> b!4187614 m!4776549))

(declare-fun m!4776551 () Bool)

(assert (=> b!4187614 m!4776551))

(declare-fun m!4776553 () Bool)

(assert (=> b!4187614 m!4776553))

(declare-fun m!4776555 () Bool)

(assert (=> b!4187614 m!4776555))

(declare-fun m!4776557 () Bool)

(assert (=> b!4187614 m!4776557))

(declare-fun m!4776559 () Bool)

(assert (=> b!4187624 m!4776559))

(declare-fun m!4776561 () Bool)

(assert (=> b!4187625 m!4776561))

(declare-fun m!4776563 () Bool)

(assert (=> b!4187625 m!4776563))

(declare-fun m!4776565 () Bool)

(assert (=> b!4187610 m!4776565))

(declare-fun m!4776567 () Bool)

(assert (=> b!4187610 m!4776567))

(declare-fun m!4776569 () Bool)

(assert (=> b!4187615 m!4776569))

(declare-fun m!4776571 () Bool)

(assert (=> b!4187613 m!4776571))

(declare-fun m!4776573 () Bool)

(assert (=> b!4187613 m!4776573))

(declare-fun m!4776575 () Bool)

(assert (=> b!4187626 m!4776575))

(declare-fun m!4776577 () Bool)

(assert (=> b!4187626 m!4776577))

(declare-fun m!4776579 () Bool)

(assert (=> b!4187626 m!4776579))

(assert (=> b!4187626 m!4776577))

(declare-fun m!4776581 () Bool)

(assert (=> b!4187626 m!4776581))

(assert (=> b!4187626 m!4776579))

(declare-fun m!4776583 () Bool)

(assert (=> b!4187626 m!4776583))

(declare-fun m!4776585 () Bool)

(assert (=> b!4187626 m!4776585))

(declare-fun m!4776587 () Bool)

(assert (=> b!4187607 m!4776587))

(declare-fun m!4776589 () Bool)

(assert (=> b!4187627 m!4776589))

(declare-fun m!4776591 () Bool)

(assert (=> b!4187622 m!4776591))

(declare-fun m!4776593 () Bool)

(assert (=> b!4187622 m!4776593))

(declare-fun m!4776595 () Bool)

(assert (=> b!4187622 m!4776595))

(declare-fun m!4776597 () Bool)

(assert (=> b!4187622 m!4776597))

(declare-fun m!4776599 () Bool)

(assert (=> b!4187622 m!4776599))

(declare-fun m!4776601 () Bool)

(assert (=> b!4187622 m!4776601))

(declare-fun m!4776603 () Bool)

(assert (=> b!4187622 m!4776603))

(declare-fun m!4776605 () Bool)

(assert (=> b!4187622 m!4776605))

(declare-fun m!4776607 () Bool)

(assert (=> b!4187612 m!4776607))

(declare-fun m!4776609 () Bool)

(assert (=> b!4187631 m!4776609))

(declare-fun m!4776611 () Bool)

(assert (=> b!4187631 m!4776611))

(declare-fun m!4776613 () Bool)

(assert (=> b!4187617 m!4776613))

(check-sat (not b!4187610) b_and!327993 b_and!327995 (not b!4187632) (not b!4187625) b_and!327991 (not b_next!122511) (not b_next!122505) (not b!4187624) (not b!4187609) (not b_next!122503) (not b!4187627) (not b_next!122509) (not b!4187620) (not b_next!122507) (not b!4187608) tp_is_empty!22085 (not b!4187622) (not b_next!122513) (not b!4187612) (not b!4187626) (not b!4187631) (not b!4187614) (not b!4187619) (not b!4187623) (not b!4187607) (not b!4187628) (not b!4187616) (not b!4187615) (not b!4187630) b_and!327987 (not b!4187618) b_and!327989 (not b!4187613) b_and!327985 (not b!4187617))
(check-sat b_and!327993 (not b_next!122507) b_and!327995 (not b_next!122513) b_and!327991 b_and!327987 b_and!327989 b_and!327985 (not b_next!122511) (not b_next!122505) (not b_next!122503) (not b_next!122509))
