; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!397922 () Bool)

(assert start!397922)

(declare-fun b!4173674 () Bool)

(declare-fun b_free!120943 () Bool)

(declare-fun b_next!121647 () Bool)

(assert (=> b!4173674 (= b_free!120943 (not b_next!121647))))

(declare-fun tp!1275397 () Bool)

(declare-fun b_and!326101 () Bool)

(assert (=> b!4173674 (= tp!1275397 b_and!326101)))

(declare-fun b_free!120945 () Bool)

(declare-fun b_next!121649 () Bool)

(assert (=> b!4173674 (= b_free!120945 (not b_next!121649))))

(declare-fun tp!1275400 () Bool)

(declare-fun b_and!326103 () Bool)

(assert (=> b!4173674 (= tp!1275400 b_and!326103)))

(declare-fun b!4173665 () Bool)

(declare-fun b_free!120947 () Bool)

(declare-fun b_next!121651 () Bool)

(assert (=> b!4173665 (= b_free!120947 (not b_next!121651))))

(declare-fun tp!1275394 () Bool)

(declare-fun b_and!326105 () Bool)

(assert (=> b!4173665 (= tp!1275394 b_and!326105)))

(declare-fun b_free!120949 () Bool)

(declare-fun b_next!121653 () Bool)

(assert (=> b!4173665 (= b_free!120949 (not b_next!121653))))

(declare-fun tp!1275396 () Bool)

(declare-fun b_and!326107 () Bool)

(assert (=> b!4173665 (= tp!1275396 b_and!326107)))

(declare-fun b!4173672 () Bool)

(declare-fun b_free!120951 () Bool)

(declare-fun b_next!121655 () Bool)

(assert (=> b!4173672 (= b_free!120951 (not b_next!121655))))

(declare-fun tp!1275393 () Bool)

(declare-fun b_and!326109 () Bool)

(assert (=> b!4173672 (= tp!1275393 b_and!326109)))

(declare-fun b_free!120953 () Bool)

(declare-fun b_next!121657 () Bool)

(assert (=> b!4173672 (= b_free!120953 (not b_next!121657))))

(declare-fun tp!1275390 () Bool)

(declare-fun b_and!326111 () Bool)

(assert (=> b!4173672 (= tp!1275390 b_and!326111)))

(declare-fun b!4173654 () Bool)

(declare-fun res!1710416 () Bool)

(declare-fun e!2591096 () Bool)

(assert (=> b!4173654 (=> (not res!1710416) (not e!2591096))))

(declare-datatypes ((C!25192 0))(
  ( (C!25193 (val!14758 Int)) )
))
(declare-datatypes ((List!45887 0))(
  ( (Nil!45763) (Cons!45763 (h!51183 C!25192) (t!344582 List!45887)) )
))
(declare-fun p!2959 () List!45887)

(declare-fun input!3342 () List!45887)

(declare-fun isPrefix!4453 (List!45887 List!45887) Bool)

(assert (=> b!4173654 (= res!1710416 (isPrefix!4453 p!2959 input!3342))))

(declare-fun e!2591106 () Bool)

(declare-fun e!2591105 () Bool)

(declare-fun b!4173655 () Bool)

(declare-fun tp!1275395 () Bool)

(declare-datatypes ((List!45888 0))(
  ( (Nil!45764) (Cons!45764 (h!51184 (_ BitVec 16)) (t!344583 List!45888)) )
))
(declare-datatypes ((TokenValue!7826 0))(
  ( (FloatLiteralValue!15652 (text!55227 List!45888)) (TokenValueExt!7825 (__x!27873 Int)) (Broken!39130 (value!236992 List!45888)) (Object!7949) (End!7826) (Def!7826) (Underscore!7826) (Match!7826) (Else!7826) (Error!7826) (Case!7826) (If!7826) (Extends!7826) (Abstract!7826) (Class!7826) (Val!7826) (DelimiterValue!15652 (del!7886 List!45888)) (KeywordValue!7832 (value!236993 List!45888)) (CommentValue!15652 (value!236994 List!45888)) (WhitespaceValue!15652 (value!236995 List!45888)) (IndentationValue!7826 (value!236996 List!45888)) (String!52995) (Int32!7826) (Broken!39131 (value!236997 List!45888)) (Boolean!7827) (Unit!64832) (OperatorValue!7829 (op!7886 List!45888)) (IdentifierValue!15652 (value!236998 List!45888)) (IdentifierValue!15653 (value!236999 List!45888)) (WhitespaceValue!15653 (value!237000 List!45888)) (True!15652) (False!15652) (Broken!39132 (value!237001 List!45888)) (Broken!39133 (value!237002 List!45888)) (True!15653) (RightBrace!7826) (RightBracket!7826) (Colon!7826) (Null!7826) (Comma!7826) (LeftBracket!7826) (False!15653) (LeftBrace!7826) (ImaginaryLiteralValue!7826 (text!55228 List!45888)) (StringLiteralValue!23478 (value!237003 List!45888)) (EOFValue!7826 (value!237004 List!45888)) (IdentValue!7826 (value!237005 List!45888)) (DelimiterValue!15653 (value!237006 List!45888)) (DedentValue!7826 (value!237007 List!45888)) (NewLineValue!7826 (value!237008 List!45888)) (IntegerValue!23478 (value!237009 (_ BitVec 32)) (text!55229 List!45888)) (IntegerValue!23479 (value!237010 Int) (text!55230 List!45888)) (Times!7826) (Or!7826) (Equal!7826) (Minus!7826) (Broken!39134 (value!237011 List!45888)) (And!7826) (Div!7826) (LessEqual!7826) (Mod!7826) (Concat!20327) (Not!7826) (Plus!7826) (SpaceValue!7826 (value!237012 List!45888)) (IntegerValue!23480 (value!237013 Int) (text!55231 List!45888)) (StringLiteralValue!23479 (text!55232 List!45888)) (FloatLiteralValue!15653 (text!55233 List!45888)) (BytesLiteralValue!7826 (value!237014 List!45888)) (CommentValue!15653 (value!237015 List!45888)) (StringLiteralValue!23480 (value!237016 List!45888)) (ErrorTokenValue!7826 (msg!7887 List!45888)) )
))
(declare-datatypes ((IArray!27619 0))(
  ( (IArray!27620 (innerList!13867 List!45887)) )
))
(declare-datatypes ((Conc!13807 0))(
  ( (Node!13807 (left!34103 Conc!13807) (right!34433 Conc!13807) (csize!27844 Int) (cheight!14018 Int)) (Leaf!21348 (xs!17113 IArray!27619) (csize!27845 Int)) (Empty!13807) )
))
(declare-datatypes ((BalanceConc!27208 0))(
  ( (BalanceConc!27209 (c!713206 Conc!13807)) )
))
(declare-datatypes ((Regex!12501 0))(
  ( (ElementMatch!12501 (c!713207 C!25192)) (Concat!20328 (regOne!25514 Regex!12501) (regTwo!25514 Regex!12501)) (EmptyExpr!12501) (Star!12501 (reg!12830 Regex!12501)) (EmptyLang!12501) (Union!12501 (regOne!25515 Regex!12501) (regTwo!25515 Regex!12501)) )
))
(declare-datatypes ((String!52996 0))(
  ( (String!52997 (value!237017 String)) )
))
(declare-datatypes ((TokenValueInjection!15080 0))(
  ( (TokenValueInjection!15081 (toValue!10280 Int) (toChars!10139 Int)) )
))
(declare-datatypes ((Rule!14992 0))(
  ( (Rule!14993 (regex!7596 Regex!12501) (tag!8460 String!52996) (isSeparator!7596 Bool) (transformation!7596 TokenValueInjection!15080)) )
))
(declare-fun r!4142 () Rule!14992)

(declare-fun inv!60291 (String!52996) Bool)

(declare-fun inv!60293 (TokenValueInjection!15080) Bool)

(assert (=> b!4173655 (= e!2591106 (and tp!1275395 (inv!60291 (tag!8460 r!4142)) (inv!60293 (transformation!7596 r!4142)) e!2591105))))

(declare-fun e!2591099 () Bool)

(declare-fun rBis!167 () Rule!14992)

(declare-fun e!2591108 () Bool)

(declare-fun b!4173656 () Bool)

(declare-fun tp!1275391 () Bool)

(assert (=> b!4173656 (= e!2591099 (and tp!1275391 (inv!60291 (tag!8460 rBis!167)) (inv!60293 (transformation!7596 rBis!167)) e!2591108))))

(declare-fun b!4173657 () Bool)

(declare-fun res!1710413 () Bool)

(assert (=> b!4173657 (=> (not res!1710413) (not e!2591096))))

(declare-datatypes ((LexerInterface!7189 0))(
  ( (LexerInterfaceExt!7186 (__x!27874 Int)) (Lexer!7187) )
))
(declare-fun thiss!25986 () LexerInterface!7189)

(declare-fun ruleValid!3314 (LexerInterface!7189 Rule!14992) Bool)

(assert (=> b!4173657 (= res!1710413 (ruleValid!3314 thiss!25986 r!4142))))

(declare-fun b!4173658 () Bool)

(declare-fun e!2591098 () Bool)

(declare-fun validRegex!5618 (Regex!12501) Bool)

(assert (=> b!4173658 (= e!2591098 (validRegex!5618 (regex!7596 rBis!167)))))

(declare-fun pBis!107 () List!45887)

(declare-fun matchR!6240 (Regex!12501 List!45887) Bool)

(assert (=> b!4173658 (not (matchR!6240 (regex!7596 rBis!167) pBis!107))))

(declare-datatypes ((Unit!64833 0))(
  ( (Unit!64834) )
))
(declare-fun lt!1486132 () Unit!64833)

(declare-fun lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!584 (LexerInterface!7189 Rule!14992 List!45887 List!45887) Unit!64833)

(assert (=> b!4173658 (= lt!1486132 (lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!584 thiss!25986 rBis!167 pBis!107 input!3342))))

(declare-fun b!4173659 () Bool)

(declare-fun res!1710405 () Bool)

(assert (=> b!4173659 (=> (not res!1710405) (not e!2591096))))

(declare-datatypes ((List!45889 0))(
  ( (Nil!45765) (Cons!45765 (h!51185 Rule!14992) (t!344584 List!45889)) )
))
(declare-fun rules!3843 () List!45889)

(declare-fun contains!9399 (List!45889 Rule!14992) Bool)

(assert (=> b!4173659 (= res!1710405 (contains!9399 rules!3843 r!4142))))

(declare-fun b!4173660 () Bool)

(declare-fun res!1710415 () Bool)

(declare-fun e!2591110 () Bool)

(assert (=> b!4173660 (=> res!1710415 e!2591110)))

(declare-datatypes ((Token!13906 0))(
  ( (Token!13907 (value!237018 TokenValue!7826) (rule!10646 Rule!14992) (size!33591 Int) (originalCharacters!7984 List!45887)) )
))
(declare-datatypes ((tuple2!43610 0))(
  ( (tuple2!43611 (_1!24939 Token!13906) (_2!24939 List!45887)) )
))
(declare-datatypes ((Option!9792 0))(
  ( (None!9791) (Some!9791 (v!40587 tuple2!43610)) )
))
(declare-fun lt!1486123 () Option!9792)

(declare-fun maxPrefix!4241 (LexerInterface!7189 List!45889 List!45887) Option!9792)

(assert (=> b!4173660 (= res!1710415 (not (= (maxPrefix!4241 thiss!25986 rules!3843 input!3342) lt!1486123)))))

(declare-fun b!4173662 () Bool)

(declare-fun res!1710409 () Bool)

(assert (=> b!4173662 (=> (not res!1710409) (not e!2591096))))

(declare-fun isEmpty!27066 (List!45889) Bool)

(assert (=> b!4173662 (= res!1710409 (not (isEmpty!27066 rules!3843)))))

(declare-fun b!4173663 () Bool)

(declare-fun res!1710403 () Bool)

(assert (=> b!4173663 (=> (not res!1710403) (not e!2591096))))

(assert (=> b!4173663 (= res!1710403 (contains!9399 rules!3843 rBis!167))))

(declare-fun b!4173664 () Bool)

(declare-fun e!2591107 () Bool)

(assert (=> b!4173664 (= e!2591096 (not e!2591107))))

(declare-fun res!1710402 () Bool)

(assert (=> b!4173664 (=> res!1710402 e!2591107)))

(declare-fun maxPrefixOneRule!3200 (LexerInterface!7189 Rule!14992 List!45887) Option!9792)

(assert (=> b!4173664 (= res!1710402 (not (= (maxPrefixOneRule!3200 thiss!25986 r!4142 input!3342) lt!1486123)))))

(declare-fun lt!1486125 () TokenValue!7826)

(declare-fun lt!1486129 () Int)

(declare-fun getSuffix!2748 (List!45887 List!45887) List!45887)

(assert (=> b!4173664 (= lt!1486123 (Some!9791 (tuple2!43611 (Token!13907 lt!1486125 r!4142 lt!1486129 p!2959) (getSuffix!2748 input!3342 p!2959))))))

(declare-fun size!33592 (List!45887) Int)

(assert (=> b!4173664 (= lt!1486129 (size!33592 p!2959))))

(declare-fun lt!1486126 () BalanceConc!27208)

(declare-fun apply!10561 (TokenValueInjection!15080 BalanceConc!27208) TokenValue!7826)

(assert (=> b!4173664 (= lt!1486125 (apply!10561 (transformation!7596 r!4142) lt!1486126))))

(assert (=> b!4173664 (isPrefix!4453 input!3342 input!3342)))

(declare-fun lt!1486124 () Unit!64833)

(declare-fun lemmaIsPrefixRefl!2882 (List!45887 List!45887) Unit!64833)

(assert (=> b!4173664 (= lt!1486124 (lemmaIsPrefixRefl!2882 input!3342 input!3342))))

(declare-fun lt!1486131 () Unit!64833)

(declare-fun lemmaSemiInverse!2362 (TokenValueInjection!15080 BalanceConc!27208) Unit!64833)

(assert (=> b!4173664 (= lt!1486131 (lemmaSemiInverse!2362 (transformation!7596 r!4142) lt!1486126))))

(declare-fun seqFromList!5621 (List!45887) BalanceConc!27208)

(assert (=> b!4173664 (= lt!1486126 (seqFromList!5621 p!2959))))

(declare-fun e!2591102 () Bool)

(assert (=> b!4173665 (= e!2591102 (and tp!1275394 tp!1275396))))

(declare-fun b!4173666 () Bool)

(declare-fun res!1710406 () Bool)

(assert (=> b!4173666 (=> (not res!1710406) (not e!2591096))))

(assert (=> b!4173666 (= res!1710406 (matchR!6240 (regex!7596 r!4142) p!2959))))

(declare-fun b!4173667 () Bool)

(declare-fun e!2591103 () Bool)

(declare-fun tp_is_empty!21965 () Bool)

(declare-fun tp!1275388 () Bool)

(assert (=> b!4173667 (= e!2591103 (and tp_is_empty!21965 tp!1275388))))

(declare-fun res!1710412 () Bool)

(assert (=> start!397922 (=> (not res!1710412) (not e!2591096))))

(get-info :version)

(assert (=> start!397922 (= res!1710412 ((_ is Lexer!7187) thiss!25986))))

(assert (=> start!397922 e!2591096))

(assert (=> start!397922 true))

(assert (=> start!397922 e!2591099))

(assert (=> start!397922 e!2591106))

(declare-fun e!2591109 () Bool)

(assert (=> start!397922 e!2591109))

(assert (=> start!397922 e!2591103))

(declare-fun e!2591101 () Bool)

(assert (=> start!397922 e!2591101))

(declare-fun e!2591100 () Bool)

(assert (=> start!397922 e!2591100))

(declare-fun b!4173661 () Bool)

(declare-fun e!2591104 () Bool)

(declare-fun tp!1275392 () Bool)

(assert (=> b!4173661 (= e!2591109 (and e!2591104 tp!1275392))))

(declare-fun b!4173668 () Bool)

(declare-fun res!1710404 () Bool)

(assert (=> b!4173668 (=> (not res!1710404) (not e!2591096))))

(assert (=> b!4173668 (= res!1710404 (validRegex!5618 (regex!7596 r!4142)))))

(declare-fun b!4173669 () Bool)

(declare-fun tp!1275389 () Bool)

(assert (=> b!4173669 (= e!2591101 (and tp_is_empty!21965 tp!1275389))))

(declare-fun b!4173670 () Bool)

(declare-fun res!1710408 () Bool)

(assert (=> b!4173670 (=> res!1710408 e!2591110)))

(assert (=> b!4173670 (= res!1710408 (not (ruleValid!3314 thiss!25986 rBis!167)))))

(declare-fun b!4173671 () Bool)

(declare-fun res!1710410 () Bool)

(assert (=> b!4173671 (=> (not res!1710410) (not e!2591096))))

(declare-fun rulesInvariant!6402 (LexerInterface!7189 List!45889) Bool)

(assert (=> b!4173671 (= res!1710410 (rulesInvariant!6402 thiss!25986 rules!3843))))

(assert (=> b!4173672 (= e!2591108 (and tp!1275393 tp!1275390))))

(declare-fun b!4173673 () Bool)

(assert (=> b!4173673 (= e!2591107 e!2591110)))

(declare-fun res!1710414 () Bool)

(assert (=> b!4173673 (=> res!1710414 e!2591110)))

(declare-fun lt!1486130 () Int)

(assert (=> b!4173673 (= res!1710414 (<= lt!1486130 lt!1486129))))

(assert (=> b!4173673 (= lt!1486130 (size!33592 pBis!107))))

(assert (=> b!4173674 (= e!2591105 (and tp!1275397 tp!1275400))))

(declare-fun b!4173675 () Bool)

(declare-fun tp!1275399 () Bool)

(assert (=> b!4173675 (= e!2591100 (and tp_is_empty!21965 tp!1275399))))

(declare-fun b!4173676 () Bool)

(assert (=> b!4173676 (= e!2591110 e!2591098)))

(declare-fun res!1710411 () Bool)

(assert (=> b!4173676 (=> res!1710411 e!2591098)))

(declare-fun isEmpty!27067 (Option!9792) Bool)

(assert (=> b!4173676 (= res!1710411 (not (isEmpty!27067 (maxPrefixOneRule!3200 thiss!25986 rBis!167 input!3342))))))

(declare-fun lt!1486127 () Unit!64833)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2328 (LexerInterface!7189 Rule!14992 List!45889) Unit!64833)

(assert (=> b!4173676 (= lt!1486127 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2328 thiss!25986 rBis!167 rules!3843))))

(assert (=> b!4173676 (<= lt!1486130 (size!33592 input!3342))))

(declare-fun lt!1486128 () Unit!64833)

(declare-fun lemmaIsPrefixThenSmallerEqSize!485 (List!45887 List!45887) Unit!64833)

(assert (=> b!4173676 (= lt!1486128 (lemmaIsPrefixThenSmallerEqSize!485 pBis!107 input!3342))))

(declare-fun b!4173677 () Bool)

(declare-fun tp!1275398 () Bool)

(assert (=> b!4173677 (= e!2591104 (and tp!1275398 (inv!60291 (tag!8460 (h!51185 rules!3843))) (inv!60293 (transformation!7596 (h!51185 rules!3843))) e!2591102))))

(declare-fun b!4173678 () Bool)

(declare-fun res!1710407 () Bool)

(assert (=> b!4173678 (=> (not res!1710407) (not e!2591096))))

(assert (=> b!4173678 (= res!1710407 (isPrefix!4453 pBis!107 input!3342))))

(assert (= (and start!397922 res!1710412) b!4173654))

(assert (= (and b!4173654 res!1710416) b!4173678))

(assert (= (and b!4173678 res!1710407) b!4173662))

(assert (= (and b!4173662 res!1710409) b!4173671))

(assert (= (and b!4173671 res!1710410) b!4173659))

(assert (= (and b!4173659 res!1710405) b!4173663))

(assert (= (and b!4173663 res!1710403) b!4173668))

(assert (= (and b!4173668 res!1710404) b!4173666))

(assert (= (and b!4173666 res!1710406) b!4173657))

(assert (= (and b!4173657 res!1710413) b!4173664))

(assert (= (and b!4173664 (not res!1710402)) b!4173673))

(assert (= (and b!4173673 (not res!1710414)) b!4173670))

(assert (= (and b!4173670 (not res!1710408)) b!4173660))

(assert (= (and b!4173660 (not res!1710415)) b!4173676))

(assert (= (and b!4173676 (not res!1710411)) b!4173658))

(assert (= b!4173656 b!4173672))

(assert (= start!397922 b!4173656))

(assert (= b!4173655 b!4173674))

(assert (= start!397922 b!4173655))

(assert (= b!4173677 b!4173665))

(assert (= b!4173661 b!4173677))

(assert (= (and start!397922 ((_ is Cons!45765) rules!3843)) b!4173661))

(assert (= (and start!397922 ((_ is Cons!45763) input!3342)) b!4173667))

(assert (= (and start!397922 ((_ is Cons!45763) pBis!107)) b!4173669))

(assert (= (and start!397922 ((_ is Cons!45763) p!2959)) b!4173675))

(declare-fun m!4763571 () Bool)

(assert (=> b!4173655 m!4763571))

(declare-fun m!4763573 () Bool)

(assert (=> b!4173655 m!4763573))

(declare-fun m!4763575 () Bool)

(assert (=> b!4173668 m!4763575))

(declare-fun m!4763577 () Bool)

(assert (=> b!4173666 m!4763577))

(declare-fun m!4763579 () Bool)

(assert (=> b!4173662 m!4763579))

(declare-fun m!4763581 () Bool)

(assert (=> b!4173677 m!4763581))

(declare-fun m!4763583 () Bool)

(assert (=> b!4173677 m!4763583))

(declare-fun m!4763585 () Bool)

(assert (=> b!4173670 m!4763585))

(declare-fun m!4763587 () Bool)

(assert (=> b!4173678 m!4763587))

(declare-fun m!4763589 () Bool)

(assert (=> b!4173673 m!4763589))

(declare-fun m!4763591 () Bool)

(assert (=> b!4173664 m!4763591))

(declare-fun m!4763593 () Bool)

(assert (=> b!4173664 m!4763593))

(declare-fun m!4763595 () Bool)

(assert (=> b!4173664 m!4763595))

(declare-fun m!4763597 () Bool)

(assert (=> b!4173664 m!4763597))

(declare-fun m!4763599 () Bool)

(assert (=> b!4173664 m!4763599))

(declare-fun m!4763601 () Bool)

(assert (=> b!4173664 m!4763601))

(declare-fun m!4763603 () Bool)

(assert (=> b!4173664 m!4763603))

(declare-fun m!4763605 () Bool)

(assert (=> b!4173664 m!4763605))

(declare-fun m!4763607 () Bool)

(assert (=> b!4173654 m!4763607))

(declare-fun m!4763609 () Bool)

(assert (=> b!4173663 m!4763609))

(declare-fun m!4763611 () Bool)

(assert (=> b!4173660 m!4763611))

(declare-fun m!4763613 () Bool)

(assert (=> b!4173657 m!4763613))

(declare-fun m!4763615 () Bool)

(assert (=> b!4173659 m!4763615))

(declare-fun m!4763617 () Bool)

(assert (=> b!4173658 m!4763617))

(declare-fun m!4763619 () Bool)

(assert (=> b!4173658 m!4763619))

(declare-fun m!4763621 () Bool)

(assert (=> b!4173658 m!4763621))

(declare-fun m!4763623 () Bool)

(assert (=> b!4173676 m!4763623))

(declare-fun m!4763625 () Bool)

(assert (=> b!4173676 m!4763625))

(declare-fun m!4763627 () Bool)

(assert (=> b!4173676 m!4763627))

(assert (=> b!4173676 m!4763627))

(declare-fun m!4763629 () Bool)

(assert (=> b!4173676 m!4763629))

(declare-fun m!4763631 () Bool)

(assert (=> b!4173676 m!4763631))

(declare-fun m!4763633 () Bool)

(assert (=> b!4173656 m!4763633))

(declare-fun m!4763635 () Bool)

(assert (=> b!4173656 m!4763635))

(declare-fun m!4763637 () Bool)

(assert (=> b!4173671 m!4763637))

(check-sat (not b!4173658) tp_is_empty!21965 (not b!4173673) (not b!4173659) (not b!4173655) (not b!4173671) (not b!4173656) (not b!4173654) (not b!4173664) b_and!326107 b_and!326101 (not b!4173678) (not b!4173666) b_and!326105 (not b!4173657) (not b!4173668) (not b!4173667) (not b_next!121653) (not b!4173670) (not b!4173662) (not b!4173669) (not b!4173676) (not b!4173677) (not b_next!121657) (not b_next!121655) (not b!4173663) (not b!4173660) (not b_next!121651) (not b_next!121647) b_and!326111 (not b!4173661) (not b_next!121649) b_and!326109 b_and!326103 (not b!4173675))
(check-sat (not b_next!121653) b_and!326107 b_and!326101 b_and!326111 b_and!326105 b_and!326103 (not b_next!121657) (not b_next!121655) (not b_next!121651) (not b_next!121647) (not b_next!121649) b_and!326109)
(get-model)

(declare-fun d!1232633 () Bool)

(declare-fun lt!1486138 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!7109 (List!45889) (InoxSet Rule!14992))

(assert (=> d!1232633 (= lt!1486138 (select (content!7109 rules!3843) r!4142))))

(declare-fun e!2591121 () Bool)

(assert (=> d!1232633 (= lt!1486138 e!2591121)))

(declare-fun res!1710436 () Bool)

(assert (=> d!1232633 (=> (not res!1710436) (not e!2591121))))

(assert (=> d!1232633 (= res!1710436 ((_ is Cons!45765) rules!3843))))

(assert (=> d!1232633 (= (contains!9399 rules!3843 r!4142) lt!1486138)))

(declare-fun b!4173689 () Bool)

(declare-fun e!2591122 () Bool)

(assert (=> b!4173689 (= e!2591121 e!2591122)))

(declare-fun res!1710435 () Bool)

(assert (=> b!4173689 (=> res!1710435 e!2591122)))

(assert (=> b!4173689 (= res!1710435 (= (h!51185 rules!3843) r!4142))))

(declare-fun b!4173690 () Bool)

(assert (=> b!4173690 (= e!2591122 (contains!9399 (t!344584 rules!3843) r!4142))))

(assert (= (and d!1232633 res!1710436) b!4173689))

(assert (= (and b!4173689 (not res!1710435)) b!4173690))

(declare-fun m!4763645 () Bool)

(assert (=> d!1232633 m!4763645))

(declare-fun m!4763647 () Bool)

(assert (=> d!1232633 m!4763647))

(declare-fun m!4763649 () Bool)

(assert (=> b!4173690 m!4763649))

(assert (=> b!4173659 d!1232633))

(declare-fun d!1232637 () Bool)

(declare-fun res!1710441 () Bool)

(declare-fun e!2591125 () Bool)

(assert (=> d!1232637 (=> (not res!1710441) (not e!2591125))))

(assert (=> d!1232637 (= res!1710441 (validRegex!5618 (regex!7596 rBis!167)))))

(assert (=> d!1232637 (= (ruleValid!3314 thiss!25986 rBis!167) e!2591125)))

(declare-fun b!4173695 () Bool)

(declare-fun res!1710442 () Bool)

(assert (=> b!4173695 (=> (not res!1710442) (not e!2591125))))

(declare-fun nullable!4382 (Regex!12501) Bool)

(assert (=> b!4173695 (= res!1710442 (not (nullable!4382 (regex!7596 rBis!167))))))

(declare-fun b!4173696 () Bool)

(assert (=> b!4173696 (= e!2591125 (not (= (tag!8460 rBis!167) (String!52997 ""))))))

(assert (= (and d!1232637 res!1710441) b!4173695))

(assert (= (and b!4173695 res!1710442) b!4173696))

(assert (=> d!1232637 m!4763617))

(declare-fun m!4763651 () Bool)

(assert (=> b!4173695 m!4763651))

(assert (=> b!4173670 d!1232637))

(declare-fun b!4173715 () Bool)

(declare-fun e!2591133 () Option!9792)

(declare-fun lt!1486154 () Option!9792)

(declare-fun lt!1486152 () Option!9792)

(assert (=> b!4173715 (= e!2591133 (ite (and ((_ is None!9791) lt!1486154) ((_ is None!9791) lt!1486152)) None!9791 (ite ((_ is None!9791) lt!1486152) lt!1486154 (ite ((_ is None!9791) lt!1486154) lt!1486152 (ite (>= (size!33591 (_1!24939 (v!40587 lt!1486154))) (size!33591 (_1!24939 (v!40587 lt!1486152)))) lt!1486154 lt!1486152)))))))

(declare-fun call!291361 () Option!9792)

(assert (=> b!4173715 (= lt!1486154 call!291361)))

(assert (=> b!4173715 (= lt!1486152 (maxPrefix!4241 thiss!25986 (t!344584 rules!3843) input!3342))))

(declare-fun d!1232641 () Bool)

(declare-fun e!2591132 () Bool)

(assert (=> d!1232641 e!2591132))

(declare-fun res!1710457 () Bool)

(assert (=> d!1232641 (=> res!1710457 e!2591132)))

(declare-fun lt!1486153 () Option!9792)

(assert (=> d!1232641 (= res!1710457 (isEmpty!27067 lt!1486153))))

(assert (=> d!1232641 (= lt!1486153 e!2591133)))

(declare-fun c!713210 () Bool)

(assert (=> d!1232641 (= c!713210 (and ((_ is Cons!45765) rules!3843) ((_ is Nil!45765) (t!344584 rules!3843))))))

(declare-fun lt!1486155 () Unit!64833)

(declare-fun lt!1486156 () Unit!64833)

(assert (=> d!1232641 (= lt!1486155 lt!1486156)))

(assert (=> d!1232641 (isPrefix!4453 input!3342 input!3342)))

(assert (=> d!1232641 (= lt!1486156 (lemmaIsPrefixRefl!2882 input!3342 input!3342))))

(declare-fun rulesValidInductive!2797 (LexerInterface!7189 List!45889) Bool)

(assert (=> d!1232641 (rulesValidInductive!2797 thiss!25986 rules!3843)))

(assert (=> d!1232641 (= (maxPrefix!4241 thiss!25986 rules!3843 input!3342) lt!1486153)))

(declare-fun b!4173716 () Bool)

(declare-fun res!1710462 () Bool)

(declare-fun e!2591134 () Bool)

(assert (=> b!4173716 (=> (not res!1710462) (not e!2591134))))

(declare-fun get!14858 (Option!9792) tuple2!43610)

(assert (=> b!4173716 (= res!1710462 (= (value!237018 (_1!24939 (get!14858 lt!1486153))) (apply!10561 (transformation!7596 (rule!10646 (_1!24939 (get!14858 lt!1486153)))) (seqFromList!5621 (originalCharacters!7984 (_1!24939 (get!14858 lt!1486153)))))))))

(declare-fun b!4173717 () Bool)

(declare-fun res!1710459 () Bool)

(assert (=> b!4173717 (=> (not res!1710459) (not e!2591134))))

(declare-fun list!16530 (BalanceConc!27208) List!45887)

(declare-fun charsOf!5036 (Token!13906) BalanceConc!27208)

(assert (=> b!4173717 (= res!1710459 (matchR!6240 (regex!7596 (rule!10646 (_1!24939 (get!14858 lt!1486153)))) (list!16530 (charsOf!5036 (_1!24939 (get!14858 lt!1486153))))))))

(declare-fun b!4173718 () Bool)

(assert (=> b!4173718 (= e!2591132 e!2591134)))

(declare-fun res!1710458 () Bool)

(assert (=> b!4173718 (=> (not res!1710458) (not e!2591134))))

(declare-fun isDefined!7317 (Option!9792) Bool)

(assert (=> b!4173718 (= res!1710458 (isDefined!7317 lt!1486153))))

(declare-fun bm!291356 () Bool)

(assert (=> bm!291356 (= call!291361 (maxPrefixOneRule!3200 thiss!25986 (h!51185 rules!3843) input!3342))))

(declare-fun b!4173719 () Bool)

(assert (=> b!4173719 (= e!2591133 call!291361)))

(declare-fun b!4173720 () Bool)

(declare-fun res!1710463 () Bool)

(assert (=> b!4173720 (=> (not res!1710463) (not e!2591134))))

(declare-fun ++!11673 (List!45887 List!45887) List!45887)

(assert (=> b!4173720 (= res!1710463 (= (++!11673 (list!16530 (charsOf!5036 (_1!24939 (get!14858 lt!1486153)))) (_2!24939 (get!14858 lt!1486153))) input!3342))))

(declare-fun b!4173721 () Bool)

(declare-fun res!1710460 () Bool)

(assert (=> b!4173721 (=> (not res!1710460) (not e!2591134))))

(assert (=> b!4173721 (= res!1710460 (= (list!16530 (charsOf!5036 (_1!24939 (get!14858 lt!1486153)))) (originalCharacters!7984 (_1!24939 (get!14858 lt!1486153)))))))

(declare-fun b!4173722 () Bool)

(assert (=> b!4173722 (= e!2591134 (contains!9399 rules!3843 (rule!10646 (_1!24939 (get!14858 lt!1486153)))))))

(declare-fun b!4173723 () Bool)

(declare-fun res!1710461 () Bool)

(assert (=> b!4173723 (=> (not res!1710461) (not e!2591134))))

(assert (=> b!4173723 (= res!1710461 (< (size!33592 (_2!24939 (get!14858 lt!1486153))) (size!33592 input!3342)))))

(assert (= (and d!1232641 c!713210) b!4173719))

(assert (= (and d!1232641 (not c!713210)) b!4173715))

(assert (= (or b!4173719 b!4173715) bm!291356))

(assert (= (and d!1232641 (not res!1710457)) b!4173718))

(assert (= (and b!4173718 res!1710458) b!4173721))

(assert (= (and b!4173721 res!1710460) b!4173723))

(assert (= (and b!4173723 res!1710461) b!4173720))

(assert (= (and b!4173720 res!1710463) b!4173716))

(assert (= (and b!4173716 res!1710462) b!4173717))

(assert (= (and b!4173717 res!1710459) b!4173722))

(declare-fun m!4763655 () Bool)

(assert (=> b!4173721 m!4763655))

(declare-fun m!4763657 () Bool)

(assert (=> b!4173721 m!4763657))

(assert (=> b!4173721 m!4763657))

(declare-fun m!4763659 () Bool)

(assert (=> b!4173721 m!4763659))

(declare-fun m!4763661 () Bool)

(assert (=> b!4173718 m!4763661))

(assert (=> b!4173720 m!4763655))

(assert (=> b!4173720 m!4763657))

(assert (=> b!4173720 m!4763657))

(assert (=> b!4173720 m!4763659))

(assert (=> b!4173720 m!4763659))

(declare-fun m!4763663 () Bool)

(assert (=> b!4173720 m!4763663))

(assert (=> b!4173717 m!4763655))

(assert (=> b!4173717 m!4763657))

(assert (=> b!4173717 m!4763657))

(assert (=> b!4173717 m!4763659))

(assert (=> b!4173717 m!4763659))

(declare-fun m!4763665 () Bool)

(assert (=> b!4173717 m!4763665))

(assert (=> b!4173723 m!4763655))

(declare-fun m!4763667 () Bool)

(assert (=> b!4173723 m!4763667))

(assert (=> b!4173723 m!4763631))

(declare-fun m!4763669 () Bool)

(assert (=> b!4173715 m!4763669))

(declare-fun m!4763671 () Bool)

(assert (=> d!1232641 m!4763671))

(assert (=> d!1232641 m!4763603))

(assert (=> d!1232641 m!4763597))

(declare-fun m!4763673 () Bool)

(assert (=> d!1232641 m!4763673))

(assert (=> b!4173722 m!4763655))

(declare-fun m!4763675 () Bool)

(assert (=> b!4173722 m!4763675))

(assert (=> b!4173716 m!4763655))

(declare-fun m!4763677 () Bool)

(assert (=> b!4173716 m!4763677))

(assert (=> b!4173716 m!4763677))

(declare-fun m!4763679 () Bool)

(assert (=> b!4173716 m!4763679))

(declare-fun m!4763681 () Bool)

(assert (=> bm!291356 m!4763681))

(assert (=> b!4173660 d!1232641))

(declare-fun d!1232645 () Bool)

(declare-fun res!1710466 () Bool)

(declare-fun e!2591137 () Bool)

(assert (=> d!1232645 (=> (not res!1710466) (not e!2591137))))

(declare-fun rulesValid!2959 (LexerInterface!7189 List!45889) Bool)

(assert (=> d!1232645 (= res!1710466 (rulesValid!2959 thiss!25986 rules!3843))))

(assert (=> d!1232645 (= (rulesInvariant!6402 thiss!25986 rules!3843) e!2591137)))

(declare-fun b!4173726 () Bool)

(declare-datatypes ((List!45890 0))(
  ( (Nil!45766) (Cons!45766 (h!51186 String!52996) (t!344617 List!45890)) )
))
(declare-fun noDuplicateTag!3120 (LexerInterface!7189 List!45889 List!45890) Bool)

(assert (=> b!4173726 (= e!2591137 (noDuplicateTag!3120 thiss!25986 rules!3843 Nil!45766))))

(assert (= (and d!1232645 res!1710466) b!4173726))

(declare-fun m!4763683 () Bool)

(assert (=> d!1232645 m!4763683))

(declare-fun m!4763685 () Bool)

(assert (=> b!4173726 m!4763685))

(assert (=> b!4173671 d!1232645))

(declare-fun d!1232647 () Bool)

(assert (=> d!1232647 (= (isEmpty!27066 rules!3843) ((_ is Nil!45765) rules!3843))))

(assert (=> b!4173662 d!1232647))

(declare-fun d!1232649 () Bool)

(declare-fun lt!1486159 () Int)

(assert (=> d!1232649 (>= lt!1486159 0)))

(declare-fun e!2591140 () Int)

(assert (=> d!1232649 (= lt!1486159 e!2591140)))

(declare-fun c!713213 () Bool)

(assert (=> d!1232649 (= c!713213 ((_ is Nil!45763) pBis!107))))

(assert (=> d!1232649 (= (size!33592 pBis!107) lt!1486159)))

(declare-fun b!4173731 () Bool)

(assert (=> b!4173731 (= e!2591140 0)))

(declare-fun b!4173732 () Bool)

(assert (=> b!4173732 (= e!2591140 (+ 1 (size!33592 (t!344582 pBis!107))))))

(assert (= (and d!1232649 c!713213) b!4173731))

(assert (= (and d!1232649 (not c!713213)) b!4173732))

(declare-fun m!4763687 () Bool)

(assert (=> b!4173732 m!4763687))

(assert (=> b!4173673 d!1232649))

(declare-fun d!1232651 () Bool)

(declare-fun lt!1486160 () Bool)

(assert (=> d!1232651 (= lt!1486160 (select (content!7109 rules!3843) rBis!167))))

(declare-fun e!2591141 () Bool)

(assert (=> d!1232651 (= lt!1486160 e!2591141)))

(declare-fun res!1710468 () Bool)

(assert (=> d!1232651 (=> (not res!1710468) (not e!2591141))))

(assert (=> d!1232651 (= res!1710468 ((_ is Cons!45765) rules!3843))))

(assert (=> d!1232651 (= (contains!9399 rules!3843 rBis!167) lt!1486160)))

(declare-fun b!4173733 () Bool)

(declare-fun e!2591142 () Bool)

(assert (=> b!4173733 (= e!2591141 e!2591142)))

(declare-fun res!1710467 () Bool)

(assert (=> b!4173733 (=> res!1710467 e!2591142)))

(assert (=> b!4173733 (= res!1710467 (= (h!51185 rules!3843) rBis!167))))

(declare-fun b!4173734 () Bool)

(assert (=> b!4173734 (= e!2591142 (contains!9399 (t!344584 rules!3843) rBis!167))))

(assert (= (and d!1232651 res!1710468) b!4173733))

(assert (= (and b!4173733 (not res!1710467)) b!4173734))

(assert (=> d!1232651 m!4763645))

(declare-fun m!4763689 () Bool)

(assert (=> d!1232651 m!4763689))

(declare-fun m!4763691 () Bool)

(assert (=> b!4173734 m!4763691))

(assert (=> b!4173663 d!1232651))

(declare-fun d!1232653 () Bool)

(declare-fun lt!1486163 () List!45887)

(assert (=> d!1232653 (= (++!11673 p!2959 lt!1486163) input!3342)))

(declare-fun e!2591145 () List!45887)

(assert (=> d!1232653 (= lt!1486163 e!2591145)))

(declare-fun c!713216 () Bool)

(assert (=> d!1232653 (= c!713216 ((_ is Cons!45763) p!2959))))

(assert (=> d!1232653 (>= (size!33592 input!3342) (size!33592 p!2959))))

(assert (=> d!1232653 (= (getSuffix!2748 input!3342 p!2959) lt!1486163)))

(declare-fun b!4173739 () Bool)

(declare-fun tail!6706 (List!45887) List!45887)

(assert (=> b!4173739 (= e!2591145 (getSuffix!2748 (tail!6706 input!3342) (t!344582 p!2959)))))

(declare-fun b!4173740 () Bool)

(assert (=> b!4173740 (= e!2591145 input!3342)))

(assert (= (and d!1232653 c!713216) b!4173739))

(assert (= (and d!1232653 (not c!713216)) b!4173740))

(declare-fun m!4763693 () Bool)

(assert (=> d!1232653 m!4763693))

(assert (=> d!1232653 m!4763631))

(assert (=> d!1232653 m!4763599))

(declare-fun m!4763695 () Bool)

(assert (=> b!4173739 m!4763695))

(assert (=> b!4173739 m!4763695))

(declare-fun m!4763697 () Bool)

(assert (=> b!4173739 m!4763697))

(assert (=> b!4173664 d!1232653))

(declare-fun b!4173750 () Bool)

(declare-fun res!1710480 () Bool)

(declare-fun e!2591154 () Bool)

(assert (=> b!4173750 (=> (not res!1710480) (not e!2591154))))

(declare-fun head!8859 (List!45887) C!25192)

(assert (=> b!4173750 (= res!1710480 (= (head!8859 input!3342) (head!8859 input!3342)))))

(declare-fun b!4173749 () Bool)

(declare-fun e!2591153 () Bool)

(assert (=> b!4173749 (= e!2591153 e!2591154)))

(declare-fun res!1710478 () Bool)

(assert (=> b!4173749 (=> (not res!1710478) (not e!2591154))))

(assert (=> b!4173749 (= res!1710478 (not ((_ is Nil!45763) input!3342)))))

(declare-fun d!1232655 () Bool)

(declare-fun e!2591152 () Bool)

(assert (=> d!1232655 e!2591152))

(declare-fun res!1710477 () Bool)

(assert (=> d!1232655 (=> res!1710477 e!2591152)))

(declare-fun lt!1486166 () Bool)

(assert (=> d!1232655 (= res!1710477 (not lt!1486166))))

(assert (=> d!1232655 (= lt!1486166 e!2591153)))

(declare-fun res!1710479 () Bool)

(assert (=> d!1232655 (=> res!1710479 e!2591153)))

(assert (=> d!1232655 (= res!1710479 ((_ is Nil!45763) input!3342))))

(assert (=> d!1232655 (= (isPrefix!4453 input!3342 input!3342) lt!1486166)))

(declare-fun b!4173752 () Bool)

(assert (=> b!4173752 (= e!2591152 (>= (size!33592 input!3342) (size!33592 input!3342)))))

(declare-fun b!4173751 () Bool)

(assert (=> b!4173751 (= e!2591154 (isPrefix!4453 (tail!6706 input!3342) (tail!6706 input!3342)))))

(assert (= (and d!1232655 (not res!1710479)) b!4173749))

(assert (= (and b!4173749 res!1710478) b!4173750))

(assert (= (and b!4173750 res!1710480) b!4173751))

(assert (= (and d!1232655 (not res!1710477)) b!4173752))

(declare-fun m!4763699 () Bool)

(assert (=> b!4173750 m!4763699))

(assert (=> b!4173750 m!4763699))

(assert (=> b!4173752 m!4763631))

(assert (=> b!4173752 m!4763631))

(assert (=> b!4173751 m!4763695))

(assert (=> b!4173751 m!4763695))

(assert (=> b!4173751 m!4763695))

(assert (=> b!4173751 m!4763695))

(declare-fun m!4763701 () Bool)

(assert (=> b!4173751 m!4763701))

(assert (=> b!4173664 d!1232655))

(declare-fun d!1232657 () Bool)

(declare-fun fromListB!2574 (List!45887) BalanceConc!27208)

(assert (=> d!1232657 (= (seqFromList!5621 p!2959) (fromListB!2574 p!2959))))

(declare-fun bs!596115 () Bool)

(assert (= bs!596115 d!1232657))

(declare-fun m!4763703 () Bool)

(assert (=> bs!596115 m!4763703))

(assert (=> b!4173664 d!1232657))

(declare-fun d!1232659 () Bool)

(assert (=> d!1232659 (isPrefix!4453 input!3342 input!3342)))

(declare-fun lt!1486169 () Unit!64833)

(declare-fun choose!25540 (List!45887 List!45887) Unit!64833)

(assert (=> d!1232659 (= lt!1486169 (choose!25540 input!3342 input!3342))))

(assert (=> d!1232659 (= (lemmaIsPrefixRefl!2882 input!3342 input!3342) lt!1486169)))

(declare-fun bs!596116 () Bool)

(assert (= bs!596116 d!1232659))

(assert (=> bs!596116 m!4763603))

(declare-fun m!4763705 () Bool)

(assert (=> bs!596116 m!4763705))

(assert (=> b!4173664 d!1232659))

(declare-fun b!4173926 () Bool)

(declare-fun e!2591257 () Bool)

(assert (=> b!4173926 (= e!2591257 true)))

(declare-fun d!1232661 () Bool)

(assert (=> d!1232661 e!2591257))

(assert (= d!1232661 b!4173926))

(declare-fun lambda!129280 () Int)

(declare-fun order!24129 () Int)

(declare-fun order!24127 () Int)

(declare-fun dynLambda!19618 (Int Int) Int)

(declare-fun dynLambda!19619 (Int Int) Int)

(assert (=> b!4173926 (< (dynLambda!19618 order!24127 (toValue!10280 (transformation!7596 r!4142))) (dynLambda!19619 order!24129 lambda!129280))))

(declare-fun order!24131 () Int)

(declare-fun dynLambda!19620 (Int Int) Int)

(assert (=> b!4173926 (< (dynLambda!19620 order!24131 (toChars!10139 (transformation!7596 r!4142))) (dynLambda!19619 order!24129 lambda!129280))))

(declare-fun dynLambda!19621 (Int TokenValue!7826) BalanceConc!27208)

(declare-fun dynLambda!19622 (Int BalanceConc!27208) TokenValue!7826)

(assert (=> d!1232661 (= (list!16530 (dynLambda!19621 (toChars!10139 (transformation!7596 r!4142)) (dynLambda!19622 (toValue!10280 (transformation!7596 r!4142)) lt!1486126))) (list!16530 lt!1486126))))

(declare-fun lt!1486218 () Unit!64833)

(declare-fun ForallOf!1025 (Int BalanceConc!27208) Unit!64833)

(assert (=> d!1232661 (= lt!1486218 (ForallOf!1025 lambda!129280 lt!1486126))))

(assert (=> d!1232661 (= (lemmaSemiInverse!2362 (transformation!7596 r!4142) lt!1486126) lt!1486218)))

(declare-fun b_lambda!122609 () Bool)

(assert (=> (not b_lambda!122609) (not d!1232661)))

(declare-fun t!344592 () Bool)

(declare-fun tb!249921 () Bool)

(assert (=> (and b!4173674 (= (toChars!10139 (transformation!7596 r!4142)) (toChars!10139 (transformation!7596 r!4142))) t!344592) tb!249921))

(declare-fun b!4173931 () Bool)

(declare-fun e!2591260 () Bool)

(declare-fun tp!1275403 () Bool)

(declare-fun inv!60294 (Conc!13807) Bool)

(assert (=> b!4173931 (= e!2591260 (and (inv!60294 (c!713206 (dynLambda!19621 (toChars!10139 (transformation!7596 r!4142)) (dynLambda!19622 (toValue!10280 (transformation!7596 r!4142)) lt!1486126)))) tp!1275403))))

(declare-fun result!304476 () Bool)

(declare-fun inv!60295 (BalanceConc!27208) Bool)

(assert (=> tb!249921 (= result!304476 (and (inv!60295 (dynLambda!19621 (toChars!10139 (transformation!7596 r!4142)) (dynLambda!19622 (toValue!10280 (transformation!7596 r!4142)) lt!1486126))) e!2591260))))

(assert (= tb!249921 b!4173931))

(declare-fun m!4763863 () Bool)

(assert (=> b!4173931 m!4763863))

(declare-fun m!4763865 () Bool)

(assert (=> tb!249921 m!4763865))

(assert (=> d!1232661 t!344592))

(declare-fun b_and!326119 () Bool)

(assert (= b_and!326103 (and (=> t!344592 result!304476) b_and!326119)))

(declare-fun t!344594 () Bool)

(declare-fun tb!249923 () Bool)

(assert (=> (and b!4173665 (= (toChars!10139 (transformation!7596 (h!51185 rules!3843))) (toChars!10139 (transformation!7596 r!4142))) t!344594) tb!249923))

(declare-fun result!304480 () Bool)

(assert (= result!304480 result!304476))

(assert (=> d!1232661 t!344594))

(declare-fun b_and!326121 () Bool)

(assert (= b_and!326107 (and (=> t!344594 result!304480) b_and!326121)))

(declare-fun t!344596 () Bool)

(declare-fun tb!249925 () Bool)

(assert (=> (and b!4173672 (= (toChars!10139 (transformation!7596 rBis!167)) (toChars!10139 (transformation!7596 r!4142))) t!344596) tb!249925))

(declare-fun result!304482 () Bool)

(assert (= result!304482 result!304476))

(assert (=> d!1232661 t!344596))

(declare-fun b_and!326123 () Bool)

(assert (= b_and!326111 (and (=> t!344596 result!304482) b_and!326123)))

(declare-fun b_lambda!122611 () Bool)

(assert (=> (not b_lambda!122611) (not d!1232661)))

(declare-fun t!344598 () Bool)

(declare-fun tb!249927 () Bool)

(assert (=> (and b!4173674 (= (toValue!10280 (transformation!7596 r!4142)) (toValue!10280 (transformation!7596 r!4142))) t!344598) tb!249927))

(declare-fun result!304484 () Bool)

(declare-fun inv!21 (TokenValue!7826) Bool)

(assert (=> tb!249927 (= result!304484 (inv!21 (dynLambda!19622 (toValue!10280 (transformation!7596 r!4142)) lt!1486126)))))

(declare-fun m!4763867 () Bool)

(assert (=> tb!249927 m!4763867))

(assert (=> d!1232661 t!344598))

(declare-fun b_and!326125 () Bool)

(assert (= b_and!326101 (and (=> t!344598 result!304484) b_and!326125)))

(declare-fun tb!249929 () Bool)

(declare-fun t!344600 () Bool)

(assert (=> (and b!4173665 (= (toValue!10280 (transformation!7596 (h!51185 rules!3843))) (toValue!10280 (transformation!7596 r!4142))) t!344600) tb!249929))

(declare-fun result!304488 () Bool)

(assert (= result!304488 result!304484))

(assert (=> d!1232661 t!344600))

(declare-fun b_and!326127 () Bool)

(assert (= b_and!326105 (and (=> t!344600 result!304488) b_and!326127)))

(declare-fun t!344602 () Bool)

(declare-fun tb!249931 () Bool)

(assert (=> (and b!4173672 (= (toValue!10280 (transformation!7596 rBis!167)) (toValue!10280 (transformation!7596 r!4142))) t!344602) tb!249931))

(declare-fun result!304490 () Bool)

(assert (= result!304490 result!304484))

(assert (=> d!1232661 t!344602))

(declare-fun b_and!326129 () Bool)

(assert (= b_and!326109 (and (=> t!344602 result!304490) b_and!326129)))

(declare-fun m!4763869 () Bool)

(assert (=> d!1232661 m!4763869))

(declare-fun m!4763871 () Bool)

(assert (=> d!1232661 m!4763871))

(declare-fun m!4763873 () Bool)

(assert (=> d!1232661 m!4763873))

(declare-fun m!4763875 () Bool)

(assert (=> d!1232661 m!4763875))

(assert (=> d!1232661 m!4763873))

(declare-fun m!4763877 () Bool)

(assert (=> d!1232661 m!4763877))

(assert (=> d!1232661 m!4763871))

(assert (=> b!4173664 d!1232661))

(declare-fun d!1232703 () Bool)

(assert (=> d!1232703 (= (apply!10561 (transformation!7596 r!4142) lt!1486126) (dynLambda!19622 (toValue!10280 (transformation!7596 r!4142)) lt!1486126))))

(declare-fun b_lambda!122613 () Bool)

(assert (=> (not b_lambda!122613) (not d!1232703)))

(assert (=> d!1232703 t!344598))

(declare-fun b_and!326131 () Bool)

(assert (= b_and!326125 (and (=> t!344598 result!304484) b_and!326131)))

(assert (=> d!1232703 t!344600))

(declare-fun b_and!326133 () Bool)

(assert (= b_and!326127 (and (=> t!344600 result!304488) b_and!326133)))

(assert (=> d!1232703 t!344602))

(declare-fun b_and!326135 () Bool)

(assert (= b_and!326129 (and (=> t!344602 result!304490) b_and!326135)))

(assert (=> d!1232703 m!4763871))

(assert (=> b!4173664 d!1232703))

(declare-fun b!4173952 () Bool)

(declare-fun e!2591274 () Option!9792)

(assert (=> b!4173952 (= e!2591274 None!9791)))

(declare-fun b!4173953 () Bool)

(declare-fun res!1710600 () Bool)

(declare-fun e!2591273 () Bool)

(assert (=> b!4173953 (=> (not res!1710600) (not e!2591273))))

(declare-fun lt!1486231 () Option!9792)

(assert (=> b!4173953 (= res!1710600 (= (rule!10646 (_1!24939 (get!14858 lt!1486231))) r!4142))))

(declare-fun b!4173954 () Bool)

(declare-fun e!2591272 () Bool)

(assert (=> b!4173954 (= e!2591272 e!2591273)))

(declare-fun res!1710602 () Bool)

(assert (=> b!4173954 (=> (not res!1710602) (not e!2591273))))

(assert (=> b!4173954 (= res!1710602 (matchR!6240 (regex!7596 r!4142) (list!16530 (charsOf!5036 (_1!24939 (get!14858 lt!1486231))))))))

(declare-fun d!1232705 () Bool)

(assert (=> d!1232705 e!2591272))

(declare-fun res!1710601 () Bool)

(assert (=> d!1232705 (=> res!1710601 e!2591272)))

(assert (=> d!1232705 (= res!1710601 (isEmpty!27067 lt!1486231))))

(assert (=> d!1232705 (= lt!1486231 e!2591274)))

(declare-fun c!713252 () Bool)

(declare-datatypes ((tuple2!43614 0))(
  ( (tuple2!43615 (_1!24941 List!45887) (_2!24941 List!45887)) )
))
(declare-fun lt!1486232 () tuple2!43614)

(declare-fun isEmpty!27069 (List!45887) Bool)

(assert (=> d!1232705 (= c!713252 (isEmpty!27069 (_1!24941 lt!1486232)))))

(declare-fun findLongestMatch!1488 (Regex!12501 List!45887) tuple2!43614)

(assert (=> d!1232705 (= lt!1486232 (findLongestMatch!1488 (regex!7596 r!4142) input!3342))))

(assert (=> d!1232705 (ruleValid!3314 thiss!25986 r!4142)))

(assert (=> d!1232705 (= (maxPrefixOneRule!3200 thiss!25986 r!4142 input!3342) lt!1486231)))

(declare-fun b!4173955 () Bool)

(declare-fun res!1710604 () Bool)

(assert (=> b!4173955 (=> (not res!1710604) (not e!2591273))))

(assert (=> b!4173955 (= res!1710604 (= (++!11673 (list!16530 (charsOf!5036 (_1!24939 (get!14858 lt!1486231)))) (_2!24939 (get!14858 lt!1486231))) input!3342))))

(declare-fun b!4173956 () Bool)

(declare-fun e!2591275 () Bool)

(declare-fun findLongestMatchInner!1575 (Regex!12501 List!45887 Int List!45887 List!45887 Int) tuple2!43614)

(assert (=> b!4173956 (= e!2591275 (matchR!6240 (regex!7596 r!4142) (_1!24941 (findLongestMatchInner!1575 (regex!7596 r!4142) Nil!45763 (size!33592 Nil!45763) input!3342 input!3342 (size!33592 input!3342)))))))

(declare-fun b!4173957 () Bool)

(declare-fun size!33594 (BalanceConc!27208) Int)

(assert (=> b!4173957 (= e!2591274 (Some!9791 (tuple2!43611 (Token!13907 (apply!10561 (transformation!7596 r!4142) (seqFromList!5621 (_1!24941 lt!1486232))) r!4142 (size!33594 (seqFromList!5621 (_1!24941 lt!1486232))) (_1!24941 lt!1486232)) (_2!24941 lt!1486232))))))

(declare-fun lt!1486229 () Unit!64833)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1548 (Regex!12501 List!45887) Unit!64833)

(assert (=> b!4173957 (= lt!1486229 (longestMatchIsAcceptedByMatchOrIsEmpty!1548 (regex!7596 r!4142) input!3342))))

(declare-fun res!1710606 () Bool)

(assert (=> b!4173957 (= res!1710606 (isEmpty!27069 (_1!24941 (findLongestMatchInner!1575 (regex!7596 r!4142) Nil!45763 (size!33592 Nil!45763) input!3342 input!3342 (size!33592 input!3342)))))))

(assert (=> b!4173957 (=> res!1710606 e!2591275)))

(assert (=> b!4173957 e!2591275))

(declare-fun lt!1486233 () Unit!64833)

(assert (=> b!4173957 (= lt!1486233 lt!1486229)))

(declare-fun lt!1486230 () Unit!64833)

(assert (=> b!4173957 (= lt!1486230 (lemmaSemiInverse!2362 (transformation!7596 r!4142) (seqFromList!5621 (_1!24941 lt!1486232))))))

(declare-fun b!4173958 () Bool)

(assert (=> b!4173958 (= e!2591273 (= (size!33591 (_1!24939 (get!14858 lt!1486231))) (size!33592 (originalCharacters!7984 (_1!24939 (get!14858 lt!1486231))))))))

(declare-fun b!4173959 () Bool)

(declare-fun res!1710603 () Bool)

(assert (=> b!4173959 (=> (not res!1710603) (not e!2591273))))

(assert (=> b!4173959 (= res!1710603 (= (value!237018 (_1!24939 (get!14858 lt!1486231))) (apply!10561 (transformation!7596 (rule!10646 (_1!24939 (get!14858 lt!1486231)))) (seqFromList!5621 (originalCharacters!7984 (_1!24939 (get!14858 lt!1486231)))))))))

(declare-fun b!4173960 () Bool)

(declare-fun res!1710605 () Bool)

(assert (=> b!4173960 (=> (not res!1710605) (not e!2591273))))

(assert (=> b!4173960 (= res!1710605 (< (size!33592 (_2!24939 (get!14858 lt!1486231))) (size!33592 input!3342)))))

(assert (= (and d!1232705 c!713252) b!4173952))

(assert (= (and d!1232705 (not c!713252)) b!4173957))

(assert (= (and b!4173957 (not res!1710606)) b!4173956))

(assert (= (and d!1232705 (not res!1710601)) b!4173954))

(assert (= (and b!4173954 res!1710602) b!4173955))

(assert (= (and b!4173955 res!1710604) b!4173960))

(assert (= (and b!4173960 res!1710605) b!4173953))

(assert (= (and b!4173953 res!1710600) b!4173959))

(assert (= (and b!4173959 res!1710603) b!4173958))

(declare-fun m!4763879 () Bool)

(assert (=> d!1232705 m!4763879))

(declare-fun m!4763881 () Bool)

(assert (=> d!1232705 m!4763881))

(declare-fun m!4763883 () Bool)

(assert (=> d!1232705 m!4763883))

(assert (=> d!1232705 m!4763613))

(declare-fun m!4763885 () Bool)

(assert (=> b!4173954 m!4763885))

(declare-fun m!4763887 () Bool)

(assert (=> b!4173954 m!4763887))

(assert (=> b!4173954 m!4763887))

(declare-fun m!4763889 () Bool)

(assert (=> b!4173954 m!4763889))

(assert (=> b!4173954 m!4763889))

(declare-fun m!4763891 () Bool)

(assert (=> b!4173954 m!4763891))

(assert (=> b!4173958 m!4763885))

(declare-fun m!4763893 () Bool)

(assert (=> b!4173958 m!4763893))

(assert (=> b!4173955 m!4763885))

(assert (=> b!4173955 m!4763887))

(assert (=> b!4173955 m!4763887))

(assert (=> b!4173955 m!4763889))

(assert (=> b!4173955 m!4763889))

(declare-fun m!4763895 () Bool)

(assert (=> b!4173955 m!4763895))

(declare-fun m!4763897 () Bool)

(assert (=> b!4173957 m!4763897))

(declare-fun m!4763899 () Bool)

(assert (=> b!4173957 m!4763899))

(assert (=> b!4173957 m!4763897))

(declare-fun m!4763901 () Bool)

(assert (=> b!4173957 m!4763901))

(declare-fun m!4763903 () Bool)

(assert (=> b!4173957 m!4763903))

(declare-fun m!4763905 () Bool)

(assert (=> b!4173957 m!4763905))

(assert (=> b!4173957 m!4763631))

(assert (=> b!4173957 m!4763897))

(declare-fun m!4763907 () Bool)

(assert (=> b!4173957 m!4763907))

(assert (=> b!4173957 m!4763631))

(declare-fun m!4763909 () Bool)

(assert (=> b!4173957 m!4763909))

(assert (=> b!4173957 m!4763897))

(declare-fun m!4763911 () Bool)

(assert (=> b!4173957 m!4763911))

(assert (=> b!4173957 m!4763907))

(assert (=> b!4173956 m!4763907))

(assert (=> b!4173956 m!4763631))

(assert (=> b!4173956 m!4763907))

(assert (=> b!4173956 m!4763631))

(assert (=> b!4173956 m!4763909))

(declare-fun m!4763913 () Bool)

(assert (=> b!4173956 m!4763913))

(assert (=> b!4173960 m!4763885))

(declare-fun m!4763915 () Bool)

(assert (=> b!4173960 m!4763915))

(assert (=> b!4173960 m!4763631))

(assert (=> b!4173953 m!4763885))

(assert (=> b!4173959 m!4763885))

(declare-fun m!4763917 () Bool)

(assert (=> b!4173959 m!4763917))

(assert (=> b!4173959 m!4763917))

(declare-fun m!4763919 () Bool)

(assert (=> b!4173959 m!4763919))

(assert (=> b!4173664 d!1232705))

(declare-fun d!1232707 () Bool)

(declare-fun lt!1486234 () Int)

(assert (=> d!1232707 (>= lt!1486234 0)))

(declare-fun e!2591276 () Int)

(assert (=> d!1232707 (= lt!1486234 e!2591276)))

(declare-fun c!713253 () Bool)

(assert (=> d!1232707 (= c!713253 ((_ is Nil!45763) p!2959))))

(assert (=> d!1232707 (= (size!33592 p!2959) lt!1486234)))

(declare-fun b!4173961 () Bool)

(assert (=> b!4173961 (= e!2591276 0)))

(declare-fun b!4173962 () Bool)

(assert (=> b!4173962 (= e!2591276 (+ 1 (size!33592 (t!344582 p!2959))))))

(assert (= (and d!1232707 c!713253) b!4173961))

(assert (= (and d!1232707 (not c!713253)) b!4173962))

(declare-fun m!4763921 () Bool)

(assert (=> b!4173962 m!4763921))

(assert (=> b!4173664 d!1232707))

(declare-fun b!4173964 () Bool)

(declare-fun res!1710610 () Bool)

(declare-fun e!2591279 () Bool)

(assert (=> b!4173964 (=> (not res!1710610) (not e!2591279))))

(assert (=> b!4173964 (= res!1710610 (= (head!8859 p!2959) (head!8859 input!3342)))))

(declare-fun b!4173963 () Bool)

(declare-fun e!2591278 () Bool)

(assert (=> b!4173963 (= e!2591278 e!2591279)))

(declare-fun res!1710608 () Bool)

(assert (=> b!4173963 (=> (not res!1710608) (not e!2591279))))

(assert (=> b!4173963 (= res!1710608 (not ((_ is Nil!45763) input!3342)))))

(declare-fun d!1232709 () Bool)

(declare-fun e!2591277 () Bool)

(assert (=> d!1232709 e!2591277))

(declare-fun res!1710607 () Bool)

(assert (=> d!1232709 (=> res!1710607 e!2591277)))

(declare-fun lt!1486235 () Bool)

(assert (=> d!1232709 (= res!1710607 (not lt!1486235))))

(assert (=> d!1232709 (= lt!1486235 e!2591278)))

(declare-fun res!1710609 () Bool)

(assert (=> d!1232709 (=> res!1710609 e!2591278)))

(assert (=> d!1232709 (= res!1710609 ((_ is Nil!45763) p!2959))))

(assert (=> d!1232709 (= (isPrefix!4453 p!2959 input!3342) lt!1486235)))

(declare-fun b!4173966 () Bool)

(assert (=> b!4173966 (= e!2591277 (>= (size!33592 input!3342) (size!33592 p!2959)))))

(declare-fun b!4173965 () Bool)

(assert (=> b!4173965 (= e!2591279 (isPrefix!4453 (tail!6706 p!2959) (tail!6706 input!3342)))))

(assert (= (and d!1232709 (not res!1710609)) b!4173963))

(assert (= (and b!4173963 res!1710608) b!4173964))

(assert (= (and b!4173964 res!1710610) b!4173965))

(assert (= (and d!1232709 (not res!1710607)) b!4173966))

(declare-fun m!4763923 () Bool)

(assert (=> b!4173964 m!4763923))

(assert (=> b!4173964 m!4763699))

(assert (=> b!4173966 m!4763631))

(assert (=> b!4173966 m!4763599))

(declare-fun m!4763925 () Bool)

(assert (=> b!4173965 m!4763925))

(assert (=> b!4173965 m!4763695))

(assert (=> b!4173965 m!4763925))

(assert (=> b!4173965 m!4763695))

(declare-fun m!4763927 () Bool)

(assert (=> b!4173965 m!4763927))

(assert (=> b!4173654 d!1232709))

(declare-fun d!1232711 () Bool)

(assert (=> d!1232711 (= (isEmpty!27067 (maxPrefixOneRule!3200 thiss!25986 rBis!167 input!3342)) (not ((_ is Some!9791) (maxPrefixOneRule!3200 thiss!25986 rBis!167 input!3342))))))

(assert (=> b!4173676 d!1232711))

(declare-fun d!1232713 () Bool)

(assert (=> d!1232713 (ruleValid!3314 thiss!25986 rBis!167)))

(declare-fun lt!1486238 () Unit!64833)

(declare-fun choose!25542 (LexerInterface!7189 Rule!14992 List!45889) Unit!64833)

(assert (=> d!1232713 (= lt!1486238 (choose!25542 thiss!25986 rBis!167 rules!3843))))

(assert (=> d!1232713 (contains!9399 rules!3843 rBis!167)))

(assert (=> d!1232713 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2328 thiss!25986 rBis!167 rules!3843) lt!1486238)))

(declare-fun bs!596121 () Bool)

(assert (= bs!596121 d!1232713))

(assert (=> bs!596121 m!4763585))

(declare-fun m!4763929 () Bool)

(assert (=> bs!596121 m!4763929))

(assert (=> bs!596121 m!4763609))

(assert (=> b!4173676 d!1232713))

(declare-fun b!4173967 () Bool)

(declare-fun e!2591282 () Option!9792)

(assert (=> b!4173967 (= e!2591282 None!9791)))

(declare-fun b!4173968 () Bool)

(declare-fun res!1710611 () Bool)

(declare-fun e!2591281 () Bool)

(assert (=> b!4173968 (=> (not res!1710611) (not e!2591281))))

(declare-fun lt!1486241 () Option!9792)

(assert (=> b!4173968 (= res!1710611 (= (rule!10646 (_1!24939 (get!14858 lt!1486241))) rBis!167))))

(declare-fun b!4173969 () Bool)

(declare-fun e!2591280 () Bool)

(assert (=> b!4173969 (= e!2591280 e!2591281)))

(declare-fun res!1710613 () Bool)

(assert (=> b!4173969 (=> (not res!1710613) (not e!2591281))))

(assert (=> b!4173969 (= res!1710613 (matchR!6240 (regex!7596 rBis!167) (list!16530 (charsOf!5036 (_1!24939 (get!14858 lt!1486241))))))))

(declare-fun d!1232715 () Bool)

(assert (=> d!1232715 e!2591280))

(declare-fun res!1710612 () Bool)

(assert (=> d!1232715 (=> res!1710612 e!2591280)))

(assert (=> d!1232715 (= res!1710612 (isEmpty!27067 lt!1486241))))

(assert (=> d!1232715 (= lt!1486241 e!2591282)))

(declare-fun c!713254 () Bool)

(declare-fun lt!1486242 () tuple2!43614)

(assert (=> d!1232715 (= c!713254 (isEmpty!27069 (_1!24941 lt!1486242)))))

(assert (=> d!1232715 (= lt!1486242 (findLongestMatch!1488 (regex!7596 rBis!167) input!3342))))

(assert (=> d!1232715 (ruleValid!3314 thiss!25986 rBis!167)))

(assert (=> d!1232715 (= (maxPrefixOneRule!3200 thiss!25986 rBis!167 input!3342) lt!1486241)))

(declare-fun b!4173970 () Bool)

(declare-fun res!1710615 () Bool)

(assert (=> b!4173970 (=> (not res!1710615) (not e!2591281))))

(assert (=> b!4173970 (= res!1710615 (= (++!11673 (list!16530 (charsOf!5036 (_1!24939 (get!14858 lt!1486241)))) (_2!24939 (get!14858 lt!1486241))) input!3342))))

(declare-fun b!4173971 () Bool)

(declare-fun e!2591283 () Bool)

(assert (=> b!4173971 (= e!2591283 (matchR!6240 (regex!7596 rBis!167) (_1!24941 (findLongestMatchInner!1575 (regex!7596 rBis!167) Nil!45763 (size!33592 Nil!45763) input!3342 input!3342 (size!33592 input!3342)))))))

(declare-fun b!4173972 () Bool)

(assert (=> b!4173972 (= e!2591282 (Some!9791 (tuple2!43611 (Token!13907 (apply!10561 (transformation!7596 rBis!167) (seqFromList!5621 (_1!24941 lt!1486242))) rBis!167 (size!33594 (seqFromList!5621 (_1!24941 lt!1486242))) (_1!24941 lt!1486242)) (_2!24941 lt!1486242))))))

(declare-fun lt!1486239 () Unit!64833)

(assert (=> b!4173972 (= lt!1486239 (longestMatchIsAcceptedByMatchOrIsEmpty!1548 (regex!7596 rBis!167) input!3342))))

(declare-fun res!1710617 () Bool)

(assert (=> b!4173972 (= res!1710617 (isEmpty!27069 (_1!24941 (findLongestMatchInner!1575 (regex!7596 rBis!167) Nil!45763 (size!33592 Nil!45763) input!3342 input!3342 (size!33592 input!3342)))))))

(assert (=> b!4173972 (=> res!1710617 e!2591283)))

(assert (=> b!4173972 e!2591283))

(declare-fun lt!1486243 () Unit!64833)

(assert (=> b!4173972 (= lt!1486243 lt!1486239)))

(declare-fun lt!1486240 () Unit!64833)

(assert (=> b!4173972 (= lt!1486240 (lemmaSemiInverse!2362 (transformation!7596 rBis!167) (seqFromList!5621 (_1!24941 lt!1486242))))))

(declare-fun b!4173973 () Bool)

(assert (=> b!4173973 (= e!2591281 (= (size!33591 (_1!24939 (get!14858 lt!1486241))) (size!33592 (originalCharacters!7984 (_1!24939 (get!14858 lt!1486241))))))))

(declare-fun b!4173974 () Bool)

(declare-fun res!1710614 () Bool)

(assert (=> b!4173974 (=> (not res!1710614) (not e!2591281))))

(assert (=> b!4173974 (= res!1710614 (= (value!237018 (_1!24939 (get!14858 lt!1486241))) (apply!10561 (transformation!7596 (rule!10646 (_1!24939 (get!14858 lt!1486241)))) (seqFromList!5621 (originalCharacters!7984 (_1!24939 (get!14858 lt!1486241)))))))))

(declare-fun b!4173975 () Bool)

(declare-fun res!1710616 () Bool)

(assert (=> b!4173975 (=> (not res!1710616) (not e!2591281))))

(assert (=> b!4173975 (= res!1710616 (< (size!33592 (_2!24939 (get!14858 lt!1486241))) (size!33592 input!3342)))))

(assert (= (and d!1232715 c!713254) b!4173967))

(assert (= (and d!1232715 (not c!713254)) b!4173972))

(assert (= (and b!4173972 (not res!1710617)) b!4173971))

(assert (= (and d!1232715 (not res!1710612)) b!4173969))

(assert (= (and b!4173969 res!1710613) b!4173970))

(assert (= (and b!4173970 res!1710615) b!4173975))

(assert (= (and b!4173975 res!1710616) b!4173968))

(assert (= (and b!4173968 res!1710611) b!4173974))

(assert (= (and b!4173974 res!1710614) b!4173973))

(declare-fun m!4763931 () Bool)

(assert (=> d!1232715 m!4763931))

(declare-fun m!4763933 () Bool)

(assert (=> d!1232715 m!4763933))

(declare-fun m!4763935 () Bool)

(assert (=> d!1232715 m!4763935))

(assert (=> d!1232715 m!4763585))

(declare-fun m!4763937 () Bool)

(assert (=> b!4173969 m!4763937))

(declare-fun m!4763939 () Bool)

(assert (=> b!4173969 m!4763939))

(assert (=> b!4173969 m!4763939))

(declare-fun m!4763941 () Bool)

(assert (=> b!4173969 m!4763941))

(assert (=> b!4173969 m!4763941))

(declare-fun m!4763943 () Bool)

(assert (=> b!4173969 m!4763943))

(assert (=> b!4173973 m!4763937))

(declare-fun m!4763945 () Bool)

(assert (=> b!4173973 m!4763945))

(assert (=> b!4173970 m!4763937))

(assert (=> b!4173970 m!4763939))

(assert (=> b!4173970 m!4763939))

(assert (=> b!4173970 m!4763941))

(assert (=> b!4173970 m!4763941))

(declare-fun m!4763947 () Bool)

(assert (=> b!4173970 m!4763947))

(declare-fun m!4763949 () Bool)

(assert (=> b!4173972 m!4763949))

(declare-fun m!4763951 () Bool)

(assert (=> b!4173972 m!4763951))

(assert (=> b!4173972 m!4763949))

(declare-fun m!4763953 () Bool)

(assert (=> b!4173972 m!4763953))

(declare-fun m!4763955 () Bool)

(assert (=> b!4173972 m!4763955))

(declare-fun m!4763957 () Bool)

(assert (=> b!4173972 m!4763957))

(assert (=> b!4173972 m!4763631))

(assert (=> b!4173972 m!4763949))

(assert (=> b!4173972 m!4763907))

(assert (=> b!4173972 m!4763631))

(declare-fun m!4763959 () Bool)

(assert (=> b!4173972 m!4763959))

(assert (=> b!4173972 m!4763949))

(declare-fun m!4763961 () Bool)

(assert (=> b!4173972 m!4763961))

(assert (=> b!4173972 m!4763907))

(assert (=> b!4173971 m!4763907))

(assert (=> b!4173971 m!4763631))

(assert (=> b!4173971 m!4763907))

(assert (=> b!4173971 m!4763631))

(assert (=> b!4173971 m!4763959))

(declare-fun m!4763963 () Bool)

(assert (=> b!4173971 m!4763963))

(assert (=> b!4173975 m!4763937))

(declare-fun m!4763965 () Bool)

(assert (=> b!4173975 m!4763965))

(assert (=> b!4173975 m!4763631))

(assert (=> b!4173968 m!4763937))

(assert (=> b!4173974 m!4763937))

(declare-fun m!4763967 () Bool)

(assert (=> b!4173974 m!4763967))

(assert (=> b!4173974 m!4763967))

(declare-fun m!4763969 () Bool)

(assert (=> b!4173974 m!4763969))

(assert (=> b!4173676 d!1232715))

(declare-fun d!1232717 () Bool)

(assert (=> d!1232717 (<= (size!33592 pBis!107) (size!33592 input!3342))))

(declare-fun lt!1486246 () Unit!64833)

(declare-fun choose!25544 (List!45887 List!45887) Unit!64833)

(assert (=> d!1232717 (= lt!1486246 (choose!25544 pBis!107 input!3342))))

(assert (=> d!1232717 (isPrefix!4453 pBis!107 input!3342)))

(assert (=> d!1232717 (= (lemmaIsPrefixThenSmallerEqSize!485 pBis!107 input!3342) lt!1486246)))

(declare-fun bs!596122 () Bool)

(assert (= bs!596122 d!1232717))

(assert (=> bs!596122 m!4763589))

(assert (=> bs!596122 m!4763631))

(declare-fun m!4763971 () Bool)

(assert (=> bs!596122 m!4763971))

(assert (=> bs!596122 m!4763587))

(assert (=> b!4173676 d!1232717))

(declare-fun d!1232719 () Bool)

(declare-fun lt!1486247 () Int)

(assert (=> d!1232719 (>= lt!1486247 0)))

(declare-fun e!2591284 () Int)

(assert (=> d!1232719 (= lt!1486247 e!2591284)))

(declare-fun c!713255 () Bool)

(assert (=> d!1232719 (= c!713255 ((_ is Nil!45763) input!3342))))

(assert (=> d!1232719 (= (size!33592 input!3342) lt!1486247)))

(declare-fun b!4173976 () Bool)

(assert (=> b!4173976 (= e!2591284 0)))

(declare-fun b!4173977 () Bool)

(assert (=> b!4173977 (= e!2591284 (+ 1 (size!33592 (t!344582 input!3342))))))

(assert (= (and d!1232719 c!713255) b!4173976))

(assert (= (and d!1232719 (not c!713255)) b!4173977))

(declare-fun m!4763973 () Bool)

(assert (=> b!4173977 m!4763973))

(assert (=> b!4173676 d!1232719))

(declare-fun d!1232721 () Bool)

(assert (=> d!1232721 (= (inv!60291 (tag!8460 r!4142)) (= (mod (str.len (value!237017 (tag!8460 r!4142))) 2) 0))))

(assert (=> b!4173655 d!1232721))

(declare-fun d!1232723 () Bool)

(declare-fun res!1710620 () Bool)

(declare-fun e!2591287 () Bool)

(assert (=> d!1232723 (=> (not res!1710620) (not e!2591287))))

(declare-fun semiInverseModEq!3291 (Int Int) Bool)

(assert (=> d!1232723 (= res!1710620 (semiInverseModEq!3291 (toChars!10139 (transformation!7596 r!4142)) (toValue!10280 (transformation!7596 r!4142))))))

(assert (=> d!1232723 (= (inv!60293 (transformation!7596 r!4142)) e!2591287)))

(declare-fun b!4173980 () Bool)

(declare-fun equivClasses!3190 (Int Int) Bool)

(assert (=> b!4173980 (= e!2591287 (equivClasses!3190 (toChars!10139 (transformation!7596 r!4142)) (toValue!10280 (transformation!7596 r!4142))))))

(assert (= (and d!1232723 res!1710620) b!4173980))

(declare-fun m!4763975 () Bool)

(assert (=> d!1232723 m!4763975))

(declare-fun m!4763977 () Bool)

(assert (=> b!4173980 m!4763977))

(assert (=> b!4173655 d!1232723))

(declare-fun b!4174009 () Bool)

(declare-fun e!2591303 () Bool)

(declare-fun lt!1486250 () Bool)

(assert (=> b!4174009 (= e!2591303 (not lt!1486250))))

(declare-fun b!4174010 () Bool)

(declare-fun res!1710642 () Bool)

(declare-fun e!2591307 () Bool)

(assert (=> b!4174010 (=> res!1710642 e!2591307)))

(declare-fun e!2591308 () Bool)

(assert (=> b!4174010 (= res!1710642 e!2591308)))

(declare-fun res!1710641 () Bool)

(assert (=> b!4174010 (=> (not res!1710641) (not e!2591308))))

(assert (=> b!4174010 (= res!1710641 lt!1486250)))

(declare-fun b!4174011 () Bool)

(declare-fun e!2591302 () Bool)

(declare-fun e!2591305 () Bool)

(assert (=> b!4174011 (= e!2591302 e!2591305)))

(declare-fun res!1710643 () Bool)

(assert (=> b!4174011 (=> res!1710643 e!2591305)))

(declare-fun call!291380 () Bool)

(assert (=> b!4174011 (= res!1710643 call!291380)))

(declare-fun d!1232725 () Bool)

(declare-fun e!2591306 () Bool)

(assert (=> d!1232725 e!2591306))

(declare-fun c!713262 () Bool)

(assert (=> d!1232725 (= c!713262 ((_ is EmptyExpr!12501) (regex!7596 r!4142)))))

(declare-fun e!2591304 () Bool)

(assert (=> d!1232725 (= lt!1486250 e!2591304)))

(declare-fun c!713263 () Bool)

(assert (=> d!1232725 (= c!713263 (isEmpty!27069 p!2959))))

(assert (=> d!1232725 (validRegex!5618 (regex!7596 r!4142))))

(assert (=> d!1232725 (= (matchR!6240 (regex!7596 r!4142) p!2959) lt!1486250)))

(declare-fun b!4174012 () Bool)

(declare-fun res!1710640 () Bool)

(assert (=> b!4174012 (=> (not res!1710640) (not e!2591308))))

(assert (=> b!4174012 (= res!1710640 (isEmpty!27069 (tail!6706 p!2959)))))

(declare-fun b!4174013 () Bool)

(assert (=> b!4174013 (= e!2591306 e!2591303)))

(declare-fun c!713264 () Bool)

(assert (=> b!4174013 (= c!713264 ((_ is EmptyLang!12501) (regex!7596 r!4142)))))

(declare-fun b!4174014 () Bool)

(declare-fun derivativeStep!3773 (Regex!12501 C!25192) Regex!12501)

(assert (=> b!4174014 (= e!2591304 (matchR!6240 (derivativeStep!3773 (regex!7596 r!4142) (head!8859 p!2959)) (tail!6706 p!2959)))))

(declare-fun b!4174015 () Bool)

(assert (=> b!4174015 (= e!2591306 (= lt!1486250 call!291380))))

(declare-fun bm!291375 () Bool)

(assert (=> bm!291375 (= call!291380 (isEmpty!27069 p!2959))))

(declare-fun b!4174016 () Bool)

(declare-fun res!1710637 () Bool)

(assert (=> b!4174016 (=> res!1710637 e!2591305)))

(assert (=> b!4174016 (= res!1710637 (not (isEmpty!27069 (tail!6706 p!2959))))))

(declare-fun b!4174017 () Bool)

(assert (=> b!4174017 (= e!2591307 e!2591302)))

(declare-fun res!1710644 () Bool)

(assert (=> b!4174017 (=> (not res!1710644) (not e!2591302))))

(assert (=> b!4174017 (= res!1710644 (not lt!1486250))))

(declare-fun b!4174018 () Bool)

(assert (=> b!4174018 (= e!2591304 (nullable!4382 (regex!7596 r!4142)))))

(declare-fun b!4174019 () Bool)

(declare-fun res!1710638 () Bool)

(assert (=> b!4174019 (=> res!1710638 e!2591307)))

(assert (=> b!4174019 (= res!1710638 (not ((_ is ElementMatch!12501) (regex!7596 r!4142))))))

(assert (=> b!4174019 (= e!2591303 e!2591307)))

(declare-fun b!4174020 () Bool)

(assert (=> b!4174020 (= e!2591308 (= (head!8859 p!2959) (c!713207 (regex!7596 r!4142))))))

(declare-fun b!4174021 () Bool)

(declare-fun res!1710639 () Bool)

(assert (=> b!4174021 (=> (not res!1710639) (not e!2591308))))

(assert (=> b!4174021 (= res!1710639 (not call!291380))))

(declare-fun b!4174022 () Bool)

(assert (=> b!4174022 (= e!2591305 (not (= (head!8859 p!2959) (c!713207 (regex!7596 r!4142)))))))

(assert (= (and d!1232725 c!713263) b!4174018))

(assert (= (and d!1232725 (not c!713263)) b!4174014))

(assert (= (and d!1232725 c!713262) b!4174015))

(assert (= (and d!1232725 (not c!713262)) b!4174013))

(assert (= (and b!4174013 c!713264) b!4174009))

(assert (= (and b!4174013 (not c!713264)) b!4174019))

(assert (= (and b!4174019 (not res!1710638)) b!4174010))

(assert (= (and b!4174010 res!1710641) b!4174021))

(assert (= (and b!4174021 res!1710639) b!4174012))

(assert (= (and b!4174012 res!1710640) b!4174020))

(assert (= (and b!4174010 (not res!1710642)) b!4174017))

(assert (= (and b!4174017 res!1710644) b!4174011))

(assert (= (and b!4174011 (not res!1710643)) b!4174016))

(assert (= (and b!4174016 (not res!1710637)) b!4174022))

(assert (= (or b!4174015 b!4174011 b!4174021) bm!291375))

(assert (=> b!4174014 m!4763923))

(assert (=> b!4174014 m!4763923))

(declare-fun m!4763979 () Bool)

(assert (=> b!4174014 m!4763979))

(assert (=> b!4174014 m!4763925))

(assert (=> b!4174014 m!4763979))

(assert (=> b!4174014 m!4763925))

(declare-fun m!4763981 () Bool)

(assert (=> b!4174014 m!4763981))

(assert (=> b!4174016 m!4763925))

(assert (=> b!4174016 m!4763925))

(declare-fun m!4763983 () Bool)

(assert (=> b!4174016 m!4763983))

(assert (=> b!4174020 m!4763923))

(assert (=> b!4174012 m!4763925))

(assert (=> b!4174012 m!4763925))

(assert (=> b!4174012 m!4763983))

(declare-fun m!4763985 () Bool)

(assert (=> d!1232725 m!4763985))

(assert (=> d!1232725 m!4763575))

(assert (=> bm!291375 m!4763985))

(declare-fun m!4763987 () Bool)

(assert (=> b!4174018 m!4763987))

(assert (=> b!4174022 m!4763923))

(assert (=> b!4173666 d!1232725))

(declare-fun d!1232727 () Bool)

(assert (=> d!1232727 (= (inv!60291 (tag!8460 (h!51185 rules!3843))) (= (mod (str.len (value!237017 (tag!8460 (h!51185 rules!3843)))) 2) 0))))

(assert (=> b!4173677 d!1232727))

(declare-fun d!1232729 () Bool)

(declare-fun res!1710645 () Bool)

(declare-fun e!2591311 () Bool)

(assert (=> d!1232729 (=> (not res!1710645) (not e!2591311))))

(assert (=> d!1232729 (= res!1710645 (semiInverseModEq!3291 (toChars!10139 (transformation!7596 (h!51185 rules!3843))) (toValue!10280 (transformation!7596 (h!51185 rules!3843)))))))

(assert (=> d!1232729 (= (inv!60293 (transformation!7596 (h!51185 rules!3843))) e!2591311)))

(declare-fun b!4174027 () Bool)

(assert (=> b!4174027 (= e!2591311 (equivClasses!3190 (toChars!10139 (transformation!7596 (h!51185 rules!3843))) (toValue!10280 (transformation!7596 (h!51185 rules!3843)))))))

(assert (= (and d!1232729 res!1710645) b!4174027))

(declare-fun m!4763989 () Bool)

(assert (=> d!1232729 m!4763989))

(declare-fun m!4763991 () Bool)

(assert (=> b!4174027 m!4763991))

(assert (=> b!4173677 d!1232729))

(declare-fun d!1232731 () Bool)

(assert (=> d!1232731 (= (inv!60291 (tag!8460 rBis!167)) (= (mod (str.len (value!237017 (tag!8460 rBis!167))) 2) 0))))

(assert (=> b!4173656 d!1232731))

(declare-fun d!1232733 () Bool)

(declare-fun res!1710646 () Bool)

(declare-fun e!2591312 () Bool)

(assert (=> d!1232733 (=> (not res!1710646) (not e!2591312))))

(assert (=> d!1232733 (= res!1710646 (semiInverseModEq!3291 (toChars!10139 (transformation!7596 rBis!167)) (toValue!10280 (transformation!7596 rBis!167))))))

(assert (=> d!1232733 (= (inv!60293 (transformation!7596 rBis!167)) e!2591312)))

(declare-fun b!4174028 () Bool)

(assert (=> b!4174028 (= e!2591312 (equivClasses!3190 (toChars!10139 (transformation!7596 rBis!167)) (toValue!10280 (transformation!7596 rBis!167))))))

(assert (= (and d!1232733 res!1710646) b!4174028))

(declare-fun m!4763993 () Bool)

(assert (=> d!1232733 m!4763993))

(declare-fun m!4763995 () Bool)

(assert (=> b!4174028 m!4763995))

(assert (=> b!4173656 d!1232733))

(declare-fun b!4174031 () Bool)

(declare-fun res!1710650 () Bool)

(declare-fun e!2591316 () Bool)

(assert (=> b!4174031 (=> (not res!1710650) (not e!2591316))))

(assert (=> b!4174031 (= res!1710650 (= (head!8859 pBis!107) (head!8859 input!3342)))))

(declare-fun b!4174030 () Bool)

(declare-fun e!2591315 () Bool)

(assert (=> b!4174030 (= e!2591315 e!2591316)))

(declare-fun res!1710648 () Bool)

(assert (=> b!4174030 (=> (not res!1710648) (not e!2591316))))

(assert (=> b!4174030 (= res!1710648 (not ((_ is Nil!45763) input!3342)))))

(declare-fun d!1232735 () Bool)

(declare-fun e!2591314 () Bool)

(assert (=> d!1232735 e!2591314))

(declare-fun res!1710647 () Bool)

(assert (=> d!1232735 (=> res!1710647 e!2591314)))

(declare-fun lt!1486252 () Bool)

(assert (=> d!1232735 (= res!1710647 (not lt!1486252))))

(assert (=> d!1232735 (= lt!1486252 e!2591315)))

(declare-fun res!1710649 () Bool)

(assert (=> d!1232735 (=> res!1710649 e!2591315)))

(assert (=> d!1232735 (= res!1710649 ((_ is Nil!45763) pBis!107))))

(assert (=> d!1232735 (= (isPrefix!4453 pBis!107 input!3342) lt!1486252)))

(declare-fun b!4174033 () Bool)

(assert (=> b!4174033 (= e!2591314 (>= (size!33592 input!3342) (size!33592 pBis!107)))))

(declare-fun b!4174032 () Bool)

(assert (=> b!4174032 (= e!2591316 (isPrefix!4453 (tail!6706 pBis!107) (tail!6706 input!3342)))))

(assert (= (and d!1232735 (not res!1710649)) b!4174030))

(assert (= (and b!4174030 res!1710648) b!4174031))

(assert (= (and b!4174031 res!1710650) b!4174032))

(assert (= (and d!1232735 (not res!1710647)) b!4174033))

(declare-fun m!4763997 () Bool)

(assert (=> b!4174031 m!4763997))

(assert (=> b!4174031 m!4763699))

(assert (=> b!4174033 m!4763631))

(assert (=> b!4174033 m!4763589))

(declare-fun m!4763999 () Bool)

(assert (=> b!4174032 m!4763999))

(assert (=> b!4174032 m!4763695))

(assert (=> b!4174032 m!4763999))

(assert (=> b!4174032 m!4763695))

(declare-fun m!4764001 () Bool)

(assert (=> b!4174032 m!4764001))

(assert (=> b!4173678 d!1232735))

(declare-fun d!1232737 () Bool)

(declare-fun res!1710651 () Bool)

(declare-fun e!2591317 () Bool)

(assert (=> d!1232737 (=> (not res!1710651) (not e!2591317))))

(assert (=> d!1232737 (= res!1710651 (validRegex!5618 (regex!7596 r!4142)))))

(assert (=> d!1232737 (= (ruleValid!3314 thiss!25986 r!4142) e!2591317)))

(declare-fun b!4174034 () Bool)

(declare-fun res!1710652 () Bool)

(assert (=> b!4174034 (=> (not res!1710652) (not e!2591317))))

(assert (=> b!4174034 (= res!1710652 (not (nullable!4382 (regex!7596 r!4142))))))

(declare-fun b!4174035 () Bool)

(assert (=> b!4174035 (= e!2591317 (not (= (tag!8460 r!4142) (String!52997 ""))))))

(assert (= (and d!1232737 res!1710651) b!4174034))

(assert (= (and b!4174034 res!1710652) b!4174035))

(assert (=> d!1232737 m!4763575))

(assert (=> b!4174034 m!4763987))

(assert (=> b!4173657 d!1232737))

(declare-fun bm!291382 () Bool)

(declare-fun call!291387 () Bool)

(declare-fun call!291388 () Bool)

(assert (=> bm!291382 (= call!291387 call!291388)))

(declare-fun b!4174068 () Bool)

(declare-fun res!1710671 () Bool)

(declare-fun e!2591346 () Bool)

(assert (=> b!4174068 (=> res!1710671 e!2591346)))

(assert (=> b!4174068 (= res!1710671 (not ((_ is Concat!20328) (regex!7596 r!4142))))))

(declare-fun e!2591345 () Bool)

(assert (=> b!4174068 (= e!2591345 e!2591346)))

(declare-fun b!4174069 () Bool)

(declare-fun e!2591347 () Bool)

(assert (=> b!4174069 (= e!2591346 e!2591347)))

(declare-fun res!1710672 () Bool)

(assert (=> b!4174069 (=> (not res!1710672) (not e!2591347))))

(assert (=> b!4174069 (= res!1710672 call!291387)))

(declare-fun b!4174070 () Bool)

(declare-fun e!2591342 () Bool)

(assert (=> b!4174070 (= e!2591342 e!2591345)))

(declare-fun c!713271 () Bool)

(assert (=> b!4174070 (= c!713271 ((_ is Union!12501) (regex!7596 r!4142)))))

(declare-fun b!4174071 () Bool)

(declare-fun e!2591348 () Bool)

(assert (=> b!4174071 (= e!2591342 e!2591348)))

(declare-fun res!1710674 () Bool)

(assert (=> b!4174071 (= res!1710674 (not (nullable!4382 (reg!12830 (regex!7596 r!4142)))))))

(assert (=> b!4174071 (=> (not res!1710674) (not e!2591348))))

(declare-fun b!4174072 () Bool)

(declare-fun call!291389 () Bool)

(assert (=> b!4174072 (= e!2591347 call!291389)))

(declare-fun b!4174073 () Bool)

(declare-fun res!1710673 () Bool)

(declare-fun e!2591344 () Bool)

(assert (=> b!4174073 (=> (not res!1710673) (not e!2591344))))

(assert (=> b!4174073 (= res!1710673 call!291387)))

(assert (=> b!4174073 (= e!2591345 e!2591344)))

(declare-fun c!713270 () Bool)

(declare-fun bm!291384 () Bool)

(assert (=> bm!291384 (= call!291388 (validRegex!5618 (ite c!713270 (reg!12830 (regex!7596 r!4142)) (ite c!713271 (regOne!25515 (regex!7596 r!4142)) (regOne!25514 (regex!7596 r!4142))))))))

(declare-fun b!4174074 () Bool)

(declare-fun e!2591343 () Bool)

(assert (=> b!4174074 (= e!2591343 e!2591342)))

(assert (=> b!4174074 (= c!713270 ((_ is Star!12501) (regex!7596 r!4142)))))

(declare-fun bm!291383 () Bool)

(assert (=> bm!291383 (= call!291389 (validRegex!5618 (ite c!713271 (regTwo!25515 (regex!7596 r!4142)) (regTwo!25514 (regex!7596 r!4142)))))))

(declare-fun d!1232739 () Bool)

(declare-fun res!1710670 () Bool)

(assert (=> d!1232739 (=> res!1710670 e!2591343)))

(assert (=> d!1232739 (= res!1710670 ((_ is ElementMatch!12501) (regex!7596 r!4142)))))

(assert (=> d!1232739 (= (validRegex!5618 (regex!7596 r!4142)) e!2591343)))

(declare-fun b!4174075 () Bool)

(assert (=> b!4174075 (= e!2591348 call!291388)))

(declare-fun b!4174076 () Bool)

(assert (=> b!4174076 (= e!2591344 call!291389)))

(assert (= (and d!1232739 (not res!1710670)) b!4174074))

(assert (= (and b!4174074 c!713270) b!4174071))

(assert (= (and b!4174074 (not c!713270)) b!4174070))

(assert (= (and b!4174071 res!1710674) b!4174075))

(assert (= (and b!4174070 c!713271) b!4174073))

(assert (= (and b!4174070 (not c!713271)) b!4174068))

(assert (= (and b!4174073 res!1710673) b!4174076))

(assert (= (and b!4174068 (not res!1710671)) b!4174069))

(assert (= (and b!4174069 res!1710672) b!4174072))

(assert (= (or b!4174076 b!4174072) bm!291383))

(assert (= (or b!4174073 b!4174069) bm!291382))

(assert (= (or b!4174075 bm!291382) bm!291384))

(declare-fun m!4764023 () Bool)

(assert (=> b!4174071 m!4764023))

(declare-fun m!4764025 () Bool)

(assert (=> bm!291384 m!4764025))

(declare-fun m!4764027 () Bool)

(assert (=> bm!291383 m!4764027))

(assert (=> b!4173668 d!1232739))

(declare-fun bm!291385 () Bool)

(declare-fun call!291390 () Bool)

(declare-fun call!291391 () Bool)

(assert (=> bm!291385 (= call!291390 call!291391)))

(declare-fun b!4174077 () Bool)

(declare-fun res!1710676 () Bool)

(declare-fun e!2591353 () Bool)

(assert (=> b!4174077 (=> res!1710676 e!2591353)))

(assert (=> b!4174077 (= res!1710676 (not ((_ is Concat!20328) (regex!7596 rBis!167))))))

(declare-fun e!2591352 () Bool)

(assert (=> b!4174077 (= e!2591352 e!2591353)))

(declare-fun b!4174078 () Bool)

(declare-fun e!2591354 () Bool)

(assert (=> b!4174078 (= e!2591353 e!2591354)))

(declare-fun res!1710677 () Bool)

(assert (=> b!4174078 (=> (not res!1710677) (not e!2591354))))

(assert (=> b!4174078 (= res!1710677 call!291390)))

(declare-fun b!4174079 () Bool)

(declare-fun e!2591349 () Bool)

(assert (=> b!4174079 (= e!2591349 e!2591352)))

(declare-fun c!713273 () Bool)

(assert (=> b!4174079 (= c!713273 ((_ is Union!12501) (regex!7596 rBis!167)))))

(declare-fun b!4174080 () Bool)

(declare-fun e!2591355 () Bool)

(assert (=> b!4174080 (= e!2591349 e!2591355)))

(declare-fun res!1710679 () Bool)

(assert (=> b!4174080 (= res!1710679 (not (nullable!4382 (reg!12830 (regex!7596 rBis!167)))))))

(assert (=> b!4174080 (=> (not res!1710679) (not e!2591355))))

(declare-fun b!4174081 () Bool)

(declare-fun call!291392 () Bool)

(assert (=> b!4174081 (= e!2591354 call!291392)))

(declare-fun b!4174082 () Bool)

(declare-fun res!1710678 () Bool)

(declare-fun e!2591351 () Bool)

(assert (=> b!4174082 (=> (not res!1710678) (not e!2591351))))

(assert (=> b!4174082 (= res!1710678 call!291390)))

(assert (=> b!4174082 (= e!2591352 e!2591351)))

(declare-fun c!713272 () Bool)

(declare-fun bm!291387 () Bool)

(assert (=> bm!291387 (= call!291391 (validRegex!5618 (ite c!713272 (reg!12830 (regex!7596 rBis!167)) (ite c!713273 (regOne!25515 (regex!7596 rBis!167)) (regOne!25514 (regex!7596 rBis!167))))))))

(declare-fun b!4174083 () Bool)

(declare-fun e!2591350 () Bool)

(assert (=> b!4174083 (= e!2591350 e!2591349)))

(assert (=> b!4174083 (= c!713272 ((_ is Star!12501) (regex!7596 rBis!167)))))

(declare-fun bm!291386 () Bool)

(assert (=> bm!291386 (= call!291392 (validRegex!5618 (ite c!713273 (regTwo!25515 (regex!7596 rBis!167)) (regTwo!25514 (regex!7596 rBis!167)))))))

(declare-fun d!1232749 () Bool)

(declare-fun res!1710675 () Bool)

(assert (=> d!1232749 (=> res!1710675 e!2591350)))

(assert (=> d!1232749 (= res!1710675 ((_ is ElementMatch!12501) (regex!7596 rBis!167)))))

(assert (=> d!1232749 (= (validRegex!5618 (regex!7596 rBis!167)) e!2591350)))

(declare-fun b!4174084 () Bool)

(assert (=> b!4174084 (= e!2591355 call!291391)))

(declare-fun b!4174085 () Bool)

(assert (=> b!4174085 (= e!2591351 call!291392)))

(assert (= (and d!1232749 (not res!1710675)) b!4174083))

(assert (= (and b!4174083 c!713272) b!4174080))

(assert (= (and b!4174083 (not c!713272)) b!4174079))

(assert (= (and b!4174080 res!1710679) b!4174084))

(assert (= (and b!4174079 c!713273) b!4174082))

(assert (= (and b!4174079 (not c!713273)) b!4174077))

(assert (= (and b!4174082 res!1710678) b!4174085))

(assert (= (and b!4174077 (not res!1710676)) b!4174078))

(assert (= (and b!4174078 res!1710677) b!4174081))

(assert (= (or b!4174085 b!4174081) bm!291386))

(assert (= (or b!4174082 b!4174078) bm!291385))

(assert (= (or b!4174084 bm!291385) bm!291387))

(declare-fun m!4764029 () Bool)

(assert (=> b!4174080 m!4764029))

(declare-fun m!4764031 () Bool)

(assert (=> bm!291387 m!4764031))

(declare-fun m!4764033 () Bool)

(assert (=> bm!291386 m!4764033))

(assert (=> b!4173658 d!1232749))

(declare-fun b!4174086 () Bool)

(declare-fun e!2591357 () Bool)

(declare-fun lt!1486255 () Bool)

(assert (=> b!4174086 (= e!2591357 (not lt!1486255))))

(declare-fun b!4174087 () Bool)

(declare-fun res!1710685 () Bool)

(declare-fun e!2591361 () Bool)

(assert (=> b!4174087 (=> res!1710685 e!2591361)))

(declare-fun e!2591362 () Bool)

(assert (=> b!4174087 (= res!1710685 e!2591362)))

(declare-fun res!1710684 () Bool)

(assert (=> b!4174087 (=> (not res!1710684) (not e!2591362))))

(assert (=> b!4174087 (= res!1710684 lt!1486255)))

(declare-fun b!4174088 () Bool)

(declare-fun e!2591356 () Bool)

(declare-fun e!2591359 () Bool)

(assert (=> b!4174088 (= e!2591356 e!2591359)))

(declare-fun res!1710686 () Bool)

(assert (=> b!4174088 (=> res!1710686 e!2591359)))

(declare-fun call!291393 () Bool)

(assert (=> b!4174088 (= res!1710686 call!291393)))

(declare-fun d!1232751 () Bool)

(declare-fun e!2591360 () Bool)

(assert (=> d!1232751 e!2591360))

(declare-fun c!713274 () Bool)

(assert (=> d!1232751 (= c!713274 ((_ is EmptyExpr!12501) (regex!7596 rBis!167)))))

(declare-fun e!2591358 () Bool)

(assert (=> d!1232751 (= lt!1486255 e!2591358)))

(declare-fun c!713275 () Bool)

(assert (=> d!1232751 (= c!713275 (isEmpty!27069 pBis!107))))

(assert (=> d!1232751 (validRegex!5618 (regex!7596 rBis!167))))

(assert (=> d!1232751 (= (matchR!6240 (regex!7596 rBis!167) pBis!107) lt!1486255)))

(declare-fun b!4174089 () Bool)

(declare-fun res!1710683 () Bool)

(assert (=> b!4174089 (=> (not res!1710683) (not e!2591362))))

(assert (=> b!4174089 (= res!1710683 (isEmpty!27069 (tail!6706 pBis!107)))))

(declare-fun b!4174090 () Bool)

(assert (=> b!4174090 (= e!2591360 e!2591357)))

(declare-fun c!713276 () Bool)

(assert (=> b!4174090 (= c!713276 ((_ is EmptyLang!12501) (regex!7596 rBis!167)))))

(declare-fun b!4174091 () Bool)

(assert (=> b!4174091 (= e!2591358 (matchR!6240 (derivativeStep!3773 (regex!7596 rBis!167) (head!8859 pBis!107)) (tail!6706 pBis!107)))))

(declare-fun b!4174092 () Bool)

(assert (=> b!4174092 (= e!2591360 (= lt!1486255 call!291393))))

(declare-fun bm!291388 () Bool)

(assert (=> bm!291388 (= call!291393 (isEmpty!27069 pBis!107))))

(declare-fun b!4174093 () Bool)

(declare-fun res!1710680 () Bool)

(assert (=> b!4174093 (=> res!1710680 e!2591359)))

(assert (=> b!4174093 (= res!1710680 (not (isEmpty!27069 (tail!6706 pBis!107))))))

(declare-fun b!4174094 () Bool)

(assert (=> b!4174094 (= e!2591361 e!2591356)))

(declare-fun res!1710687 () Bool)

(assert (=> b!4174094 (=> (not res!1710687) (not e!2591356))))

(assert (=> b!4174094 (= res!1710687 (not lt!1486255))))

(declare-fun b!4174095 () Bool)

(assert (=> b!4174095 (= e!2591358 (nullable!4382 (regex!7596 rBis!167)))))

(declare-fun b!4174096 () Bool)

(declare-fun res!1710681 () Bool)

(assert (=> b!4174096 (=> res!1710681 e!2591361)))

(assert (=> b!4174096 (= res!1710681 (not ((_ is ElementMatch!12501) (regex!7596 rBis!167))))))

(assert (=> b!4174096 (= e!2591357 e!2591361)))

(declare-fun b!4174097 () Bool)

(assert (=> b!4174097 (= e!2591362 (= (head!8859 pBis!107) (c!713207 (regex!7596 rBis!167))))))

(declare-fun b!4174098 () Bool)

(declare-fun res!1710682 () Bool)

(assert (=> b!4174098 (=> (not res!1710682) (not e!2591362))))

(assert (=> b!4174098 (= res!1710682 (not call!291393))))

(declare-fun b!4174099 () Bool)

(assert (=> b!4174099 (= e!2591359 (not (= (head!8859 pBis!107) (c!713207 (regex!7596 rBis!167)))))))

(assert (= (and d!1232751 c!713275) b!4174095))

(assert (= (and d!1232751 (not c!713275)) b!4174091))

(assert (= (and d!1232751 c!713274) b!4174092))

(assert (= (and d!1232751 (not c!713274)) b!4174090))

(assert (= (and b!4174090 c!713276) b!4174086))

(assert (= (and b!4174090 (not c!713276)) b!4174096))

(assert (= (and b!4174096 (not res!1710681)) b!4174087))

(assert (= (and b!4174087 res!1710684) b!4174098))

(assert (= (and b!4174098 res!1710682) b!4174089))

(assert (= (and b!4174089 res!1710683) b!4174097))

(assert (= (and b!4174087 (not res!1710685)) b!4174094))

(assert (= (and b!4174094 res!1710687) b!4174088))

(assert (= (and b!4174088 (not res!1710686)) b!4174093))

(assert (= (and b!4174093 (not res!1710680)) b!4174099))

(assert (= (or b!4174092 b!4174088 b!4174098) bm!291388))

(assert (=> b!4174091 m!4763997))

(assert (=> b!4174091 m!4763997))

(declare-fun m!4764035 () Bool)

(assert (=> b!4174091 m!4764035))

(assert (=> b!4174091 m!4763999))

(assert (=> b!4174091 m!4764035))

(assert (=> b!4174091 m!4763999))

(declare-fun m!4764037 () Bool)

(assert (=> b!4174091 m!4764037))

(assert (=> b!4174093 m!4763999))

(assert (=> b!4174093 m!4763999))

(declare-fun m!4764039 () Bool)

(assert (=> b!4174093 m!4764039))

(assert (=> b!4174097 m!4763997))

(assert (=> b!4174089 m!4763999))

(assert (=> b!4174089 m!4763999))

(assert (=> b!4174089 m!4764039))

(declare-fun m!4764041 () Bool)

(assert (=> d!1232751 m!4764041))

(assert (=> d!1232751 m!4763617))

(assert (=> bm!291388 m!4764041))

(assert (=> b!4174095 m!4763651))

(assert (=> b!4174099 m!4763997))

(assert (=> b!4173658 d!1232751))

(declare-fun d!1232753 () Bool)

(assert (=> d!1232753 (not (matchR!6240 (regex!7596 rBis!167) pBis!107))))

(declare-fun lt!1486258 () Unit!64833)

(declare-fun choose!25546 (LexerInterface!7189 Rule!14992 List!45887 List!45887) Unit!64833)

(assert (=> d!1232753 (= lt!1486258 (choose!25546 thiss!25986 rBis!167 pBis!107 input!3342))))

(assert (=> d!1232753 (isPrefix!4453 pBis!107 input!3342)))

(assert (=> d!1232753 (= (lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!584 thiss!25986 rBis!167 pBis!107 input!3342) lt!1486258)))

(declare-fun bs!596123 () Bool)

(assert (= bs!596123 d!1232753))

(assert (=> bs!596123 m!4763619))

(declare-fun m!4764043 () Bool)

(assert (=> bs!596123 m!4764043))

(assert (=> bs!596123 m!4763587))

(assert (=> b!4173658 d!1232753))

(declare-fun b!4174104 () Bool)

(declare-fun e!2591365 () Bool)

(declare-fun tp!1275409 () Bool)

(assert (=> b!4174104 (= e!2591365 (and tp_is_empty!21965 tp!1275409))))

(assert (=> b!4173675 (= tp!1275399 e!2591365)))

(assert (= (and b!4173675 ((_ is Cons!45763) (t!344582 p!2959))) b!4174104))

(declare-fun b!4174118 () Bool)

(declare-fun e!2591368 () Bool)

(declare-fun tp!1275421 () Bool)

(declare-fun tp!1275422 () Bool)

(assert (=> b!4174118 (= e!2591368 (and tp!1275421 tp!1275422))))

(declare-fun b!4174117 () Bool)

(declare-fun tp!1275424 () Bool)

(assert (=> b!4174117 (= e!2591368 tp!1275424)))

(assert (=> b!4173655 (= tp!1275395 e!2591368)))

(declare-fun b!4174116 () Bool)

(declare-fun tp!1275420 () Bool)

(declare-fun tp!1275423 () Bool)

(assert (=> b!4174116 (= e!2591368 (and tp!1275420 tp!1275423))))

(declare-fun b!4174115 () Bool)

(assert (=> b!4174115 (= e!2591368 tp_is_empty!21965)))

(assert (= (and b!4173655 ((_ is ElementMatch!12501) (regex!7596 r!4142))) b!4174115))

(assert (= (and b!4173655 ((_ is Concat!20328) (regex!7596 r!4142))) b!4174116))

(assert (= (and b!4173655 ((_ is Star!12501) (regex!7596 r!4142))) b!4174117))

(assert (= (and b!4173655 ((_ is Union!12501) (regex!7596 r!4142))) b!4174118))

(declare-fun b!4174129 () Bool)

(declare-fun b_free!120955 () Bool)

(declare-fun b_next!121659 () Bool)

(assert (=> b!4174129 (= b_free!120955 (not b_next!121659))))

(declare-fun tb!249939 () Bool)

(declare-fun t!344610 () Bool)

(assert (=> (and b!4174129 (= (toValue!10280 (transformation!7596 (h!51185 (t!344584 rules!3843)))) (toValue!10280 (transformation!7596 r!4142))) t!344610) tb!249939))

(declare-fun result!304506 () Bool)

(assert (= result!304506 result!304484))

(assert (=> d!1232661 t!344610))

(assert (=> d!1232703 t!344610))

(declare-fun tp!1275435 () Bool)

(declare-fun b_and!326149 () Bool)

(assert (=> b!4174129 (= tp!1275435 (and (=> t!344610 result!304506) b_and!326149))))

(declare-fun b_free!120957 () Bool)

(declare-fun b_next!121661 () Bool)

(assert (=> b!4174129 (= b_free!120957 (not b_next!121661))))

(declare-fun t!344612 () Bool)

(declare-fun tb!249941 () Bool)

(assert (=> (and b!4174129 (= (toChars!10139 (transformation!7596 (h!51185 (t!344584 rules!3843)))) (toChars!10139 (transformation!7596 r!4142))) t!344612) tb!249941))

(declare-fun result!304508 () Bool)

(assert (= result!304508 result!304476))

(assert (=> d!1232661 t!344612))

(declare-fun b_and!326151 () Bool)

(declare-fun tp!1275433 () Bool)

(assert (=> b!4174129 (= tp!1275433 (and (=> t!344612 result!304508) b_and!326151))))

(declare-fun e!2591378 () Bool)

(assert (=> b!4174129 (= e!2591378 (and tp!1275435 tp!1275433))))

(declare-fun tp!1275434 () Bool)

(declare-fun e!2591380 () Bool)

(declare-fun b!4174128 () Bool)

(assert (=> b!4174128 (= e!2591380 (and tp!1275434 (inv!60291 (tag!8460 (h!51185 (t!344584 rules!3843)))) (inv!60293 (transformation!7596 (h!51185 (t!344584 rules!3843)))) e!2591378))))

(declare-fun b!4174127 () Bool)

(declare-fun e!2591377 () Bool)

(declare-fun tp!1275436 () Bool)

(assert (=> b!4174127 (= e!2591377 (and e!2591380 tp!1275436))))

(assert (=> b!4173661 (= tp!1275392 e!2591377)))

(assert (= b!4174128 b!4174129))

(assert (= b!4174127 b!4174128))

(assert (= (and b!4173661 ((_ is Cons!45765) (t!344584 rules!3843))) b!4174127))

(declare-fun m!4764045 () Bool)

(assert (=> b!4174128 m!4764045))

(declare-fun m!4764047 () Bool)

(assert (=> b!4174128 m!4764047))

(declare-fun b!4174133 () Bool)

(declare-fun e!2591381 () Bool)

(declare-fun tp!1275438 () Bool)

(declare-fun tp!1275439 () Bool)

(assert (=> b!4174133 (= e!2591381 (and tp!1275438 tp!1275439))))

(declare-fun b!4174132 () Bool)

(declare-fun tp!1275441 () Bool)

(assert (=> b!4174132 (= e!2591381 tp!1275441)))

(assert (=> b!4173677 (= tp!1275398 e!2591381)))

(declare-fun b!4174131 () Bool)

(declare-fun tp!1275437 () Bool)

(declare-fun tp!1275440 () Bool)

(assert (=> b!4174131 (= e!2591381 (and tp!1275437 tp!1275440))))

(declare-fun b!4174130 () Bool)

(assert (=> b!4174130 (= e!2591381 tp_is_empty!21965)))

(assert (= (and b!4173677 ((_ is ElementMatch!12501) (regex!7596 (h!51185 rules!3843)))) b!4174130))

(assert (= (and b!4173677 ((_ is Concat!20328) (regex!7596 (h!51185 rules!3843)))) b!4174131))

(assert (= (and b!4173677 ((_ is Star!12501) (regex!7596 (h!51185 rules!3843)))) b!4174132))

(assert (= (and b!4173677 ((_ is Union!12501) (regex!7596 (h!51185 rules!3843)))) b!4174133))

(declare-fun b!4174137 () Bool)

(declare-fun e!2591382 () Bool)

(declare-fun tp!1275443 () Bool)

(declare-fun tp!1275444 () Bool)

(assert (=> b!4174137 (= e!2591382 (and tp!1275443 tp!1275444))))

(declare-fun b!4174136 () Bool)

(declare-fun tp!1275446 () Bool)

(assert (=> b!4174136 (= e!2591382 tp!1275446)))

(assert (=> b!4173656 (= tp!1275391 e!2591382)))

(declare-fun b!4174135 () Bool)

(declare-fun tp!1275442 () Bool)

(declare-fun tp!1275445 () Bool)

(assert (=> b!4174135 (= e!2591382 (and tp!1275442 tp!1275445))))

(declare-fun b!4174134 () Bool)

(assert (=> b!4174134 (= e!2591382 tp_is_empty!21965)))

(assert (= (and b!4173656 ((_ is ElementMatch!12501) (regex!7596 rBis!167))) b!4174134))

(assert (= (and b!4173656 ((_ is Concat!20328) (regex!7596 rBis!167))) b!4174135))

(assert (= (and b!4173656 ((_ is Star!12501) (regex!7596 rBis!167))) b!4174136))

(assert (= (and b!4173656 ((_ is Union!12501) (regex!7596 rBis!167))) b!4174137))

(declare-fun b!4174138 () Bool)

(declare-fun e!2591383 () Bool)

(declare-fun tp!1275447 () Bool)

(assert (=> b!4174138 (= e!2591383 (and tp_is_empty!21965 tp!1275447))))

(assert (=> b!4173667 (= tp!1275388 e!2591383)))

(assert (= (and b!4173667 ((_ is Cons!45763) (t!344582 input!3342))) b!4174138))

(declare-fun b!4174139 () Bool)

(declare-fun e!2591384 () Bool)

(declare-fun tp!1275448 () Bool)

(assert (=> b!4174139 (= e!2591384 (and tp_is_empty!21965 tp!1275448))))

(assert (=> b!4173669 (= tp!1275389 e!2591384)))

(assert (= (and b!4173669 ((_ is Cons!45763) (t!344582 pBis!107))) b!4174139))

(declare-fun b_lambda!122619 () Bool)

(assert (= b_lambda!122613 (or (and b!4173674 b_free!120943) (and b!4173665 b_free!120947 (= (toValue!10280 (transformation!7596 (h!51185 rules!3843))) (toValue!10280 (transformation!7596 r!4142)))) (and b!4173672 b_free!120951 (= (toValue!10280 (transformation!7596 rBis!167)) (toValue!10280 (transformation!7596 r!4142)))) (and b!4174129 b_free!120955 (= (toValue!10280 (transformation!7596 (h!51185 (t!344584 rules!3843)))) (toValue!10280 (transformation!7596 r!4142)))) b_lambda!122619)))

(declare-fun b_lambda!122621 () Bool)

(assert (= b_lambda!122609 (or (and b!4173674 b_free!120945) (and b!4173665 b_free!120949 (= (toChars!10139 (transformation!7596 (h!51185 rules!3843))) (toChars!10139 (transformation!7596 r!4142)))) (and b!4173672 b_free!120953 (= (toChars!10139 (transformation!7596 rBis!167)) (toChars!10139 (transformation!7596 r!4142)))) (and b!4174129 b_free!120957 (= (toChars!10139 (transformation!7596 (h!51185 (t!344584 rules!3843)))) (toChars!10139 (transformation!7596 r!4142)))) b_lambda!122621)))

(declare-fun b_lambda!122623 () Bool)

(assert (= b_lambda!122611 (or (and b!4173674 b_free!120943) (and b!4173665 b_free!120947 (= (toValue!10280 (transformation!7596 (h!51185 rules!3843))) (toValue!10280 (transformation!7596 r!4142)))) (and b!4173672 b_free!120951 (= (toValue!10280 (transformation!7596 rBis!167)) (toValue!10280 (transformation!7596 r!4142)))) (and b!4174129 b_free!120955 (= (toValue!10280 (transformation!7596 (h!51185 (t!344584 rules!3843)))) (toValue!10280 (transformation!7596 r!4142)))) b_lambda!122623)))

(check-sat (not d!1232633) b_and!326119 (not d!1232641) (not b_lambda!122623) (not b!4174033) (not d!1232729) (not b_lambda!122619) (not b!4174099) (not b!4174133) (not b!4174014) (not b!4173723) (not tb!249921) (not b!4173968) (not b_next!121653) (not b!4173726) (not d!1232737) b_and!326123 (not b!4173977) b_and!326149 (not b!4174022) b_and!326151 (not b!4173953) (not b!4174104) (not d!1232645) (not d!1232705) (not b_next!121657) (not b!4174093) (not bm!291375) (not b_next!121655) (not b!4173958) (not b!4173715) (not b!4173716) (not b!4173954) (not b!4173732) (not b!4174071) (not b!4173695) (not b!4173969) (not b!4173962) (not b!4173752) (not b!4173957) tp_is_empty!21965 (not b!4173722) (not d!1232723) (not b!4174135) (not b_lambda!122621) (not b!4173739) (not b!4173974) (not b!4174034) (not b!4173980) (not b!4173972) (not b!4174132) (not b!4174032) (not d!1232751) (not b!4174131) (not d!1232753) (not d!1232637) (not d!1232725) (not b!4174139) (not b!4174031) (not b_next!121651) (not b!4174080) (not b!4174028) (not b_next!121647) (not b!4173971) (not bm!291383) (not b!4174089) (not b_next!121661) (not bm!291386) (not b!4174137) (not b!4173970) (not b!4174095) (not b!4173717) (not b!4173931) (not b!4174012) (not d!1232717) (not tb!249927) (not b!4174116) (not b!4174016) (not b!4173966) (not d!1232651) (not d!1232653) (not b!4173965) b_and!326121 (not b!4174020) (not b!4174097) (not d!1232657) (not b!4173973) (not b!4174117) b_and!326131 (not b!4173721) (not bm!291356) (not b!4174091) (not d!1232713) (not b!4173960) (not d!1232733) (not b!4174136) (not b!4173964) (not b!4173734) (not b!4173690) (not d!1232659) (not d!1232661) b_and!326133 (not b_next!121649) (not b!4173959) (not b!4173720) b_and!326135 (not b!4174118) (not b!4173750) (not b!4173955) (not bm!291387) (not b!4174127) (not b!4174018) (not b!4174138) (not bm!291388) (not bm!291384) (not b!4173975) (not b!4173718) (not b!4174128) (not b!4174027) (not b!4173751) (not b!4173956) (not d!1232715) (not b_next!121659))
(check-sat (not b_next!121653) b_and!326119 (not b_next!121661) b_and!326121 b_and!326131 b_and!326133 (not b_next!121649) b_and!326135 (not b_next!121659) b_and!326123 b_and!326149 b_and!326151 (not b_next!121657) (not b_next!121655) (not b_next!121651) (not b_next!121647))
