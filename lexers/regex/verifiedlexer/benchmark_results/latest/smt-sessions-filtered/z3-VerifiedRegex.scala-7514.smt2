; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!396930 () Bool)

(assert start!396930)

(declare-fun b!4164925 () Bool)

(declare-fun b_free!120215 () Bool)

(declare-fun b_next!120919 () Bool)

(assert (=> b!4164925 (= b_free!120215 (not b_next!120919))))

(declare-fun tp!1271793 () Bool)

(declare-fun b_and!324793 () Bool)

(assert (=> b!4164925 (= tp!1271793 b_and!324793)))

(declare-fun b_free!120217 () Bool)

(declare-fun b_next!120921 () Bool)

(assert (=> b!4164925 (= b_free!120217 (not b_next!120921))))

(declare-fun tp!1271792 () Bool)

(declare-fun b_and!324795 () Bool)

(assert (=> b!4164925 (= tp!1271792 b_and!324795)))

(declare-fun b!4164919 () Bool)

(declare-fun b_free!120219 () Bool)

(declare-fun b_next!120923 () Bool)

(assert (=> b!4164919 (= b_free!120219 (not b_next!120923))))

(declare-fun tp!1271791 () Bool)

(declare-fun b_and!324797 () Bool)

(assert (=> b!4164919 (= tp!1271791 b_and!324797)))

(declare-fun b_free!120221 () Bool)

(declare-fun b_next!120925 () Bool)

(assert (=> b!4164919 (= b_free!120221 (not b_next!120925))))

(declare-fun tp!1271785 () Bool)

(declare-fun b_and!324799 () Bool)

(assert (=> b!4164919 (= tp!1271785 b_and!324799)))

(declare-fun b!4164931 () Bool)

(declare-fun b_free!120223 () Bool)

(declare-fun b_next!120927 () Bool)

(assert (=> b!4164931 (= b_free!120223 (not b_next!120927))))

(declare-fun tp!1271790 () Bool)

(declare-fun b_and!324801 () Bool)

(assert (=> b!4164931 (= tp!1271790 b_and!324801)))

(declare-fun b_free!120225 () Bool)

(declare-fun b_next!120929 () Bool)

(assert (=> b!4164931 (= b_free!120225 (not b_next!120929))))

(declare-fun tp!1271782 () Bool)

(declare-fun b_and!324803 () Bool)

(assert (=> b!4164931 (= tp!1271782 b_and!324803)))

(declare-fun e!2585568 () Bool)

(declare-datatypes ((C!25088 0))(
  ( (C!25089 (val!14706 Int)) )
))
(declare-datatypes ((List!45713 0))(
  ( (Nil!45589) (Cons!45589 (h!51009 C!25088) (t!343928 List!45713)) )
))
(declare-datatypes ((IArray!27515 0))(
  ( (IArray!27516 (innerList!13815 List!45713)) )
))
(declare-datatypes ((Conc!13755 0))(
  ( (Node!13755 (left!33989 Conc!13755) (right!34319 Conc!13755) (csize!27740 Int) (cheight!13966 Int)) (Leaf!21270 (xs!17061 IArray!27515) (csize!27741 Int)) (Empty!13755) )
))
(declare-datatypes ((String!52735 0))(
  ( (String!52736 (value!235526 String)) )
))
(declare-datatypes ((List!45714 0))(
  ( (Nil!45590) (Cons!45590 (h!51010 (_ BitVec 16)) (t!343929 List!45714)) )
))
(declare-datatypes ((BalanceConc!27104 0))(
  ( (BalanceConc!27105 (c!712282 Conc!13755)) )
))
(declare-datatypes ((TokenValue!7774 0))(
  ( (FloatLiteralValue!15548 (text!54863 List!45714)) (TokenValueExt!7773 (__x!27769 Int)) (Broken!38870 (value!235527 List!45714)) (Object!7897) (End!7774) (Def!7774) (Underscore!7774) (Match!7774) (Else!7774) (Error!7774) (Case!7774) (If!7774) (Extends!7774) (Abstract!7774) (Class!7774) (Val!7774) (DelimiterValue!15548 (del!7834 List!45714)) (KeywordValue!7780 (value!235528 List!45714)) (CommentValue!15548 (value!235529 List!45714)) (WhitespaceValue!15548 (value!235530 List!45714)) (IndentationValue!7774 (value!235531 List!45714)) (String!52737) (Int32!7774) (Broken!38871 (value!235532 List!45714)) (Boolean!7775) (Unit!64680) (OperatorValue!7777 (op!7834 List!45714)) (IdentifierValue!15548 (value!235533 List!45714)) (IdentifierValue!15549 (value!235534 List!45714)) (WhitespaceValue!15549 (value!235535 List!45714)) (True!15548) (False!15548) (Broken!38872 (value!235536 List!45714)) (Broken!38873 (value!235537 List!45714)) (True!15549) (RightBrace!7774) (RightBracket!7774) (Colon!7774) (Null!7774) (Comma!7774) (LeftBracket!7774) (False!15549) (LeftBrace!7774) (ImaginaryLiteralValue!7774 (text!54864 List!45714)) (StringLiteralValue!23322 (value!235538 List!45714)) (EOFValue!7774 (value!235539 List!45714)) (IdentValue!7774 (value!235540 List!45714)) (DelimiterValue!15549 (value!235541 List!45714)) (DedentValue!7774 (value!235542 List!45714)) (NewLineValue!7774 (value!235543 List!45714)) (IntegerValue!23322 (value!235544 (_ BitVec 32)) (text!54865 List!45714)) (IntegerValue!23323 (value!235545 Int) (text!54866 List!45714)) (Times!7774) (Or!7774) (Equal!7774) (Minus!7774) (Broken!38874 (value!235546 List!45714)) (And!7774) (Div!7774) (LessEqual!7774) (Mod!7774) (Concat!20223) (Not!7774) (Plus!7774) (SpaceValue!7774 (value!235547 List!45714)) (IntegerValue!23324 (value!235548 Int) (text!54867 List!45714)) (StringLiteralValue!23323 (text!54868 List!45714)) (FloatLiteralValue!15549 (text!54869 List!45714)) (BytesLiteralValue!7774 (value!235549 List!45714)) (CommentValue!15549 (value!235550 List!45714)) (StringLiteralValue!23324 (value!235551 List!45714)) (ErrorTokenValue!7774 (msg!7835 List!45714)) )
))
(declare-datatypes ((TokenValueInjection!14976 0))(
  ( (TokenValueInjection!14977 (toValue!10212 Int) (toChars!10071 Int)) )
))
(declare-datatypes ((Regex!12449 0))(
  ( (ElementMatch!12449 (c!712283 C!25088)) (Concat!20224 (regOne!25410 Regex!12449) (regTwo!25410 Regex!12449)) (EmptyExpr!12449) (Star!12449 (reg!12778 Regex!12449)) (EmptyLang!12449) (Union!12449 (regOne!25411 Regex!12449) (regTwo!25411 Regex!12449)) )
))
(declare-datatypes ((Rule!14888 0))(
  ( (Rule!14889 (regex!7544 Regex!12449) (tag!8408 String!52735) (isSeparator!7544 Bool) (transformation!7544 TokenValueInjection!14976)) )
))
(declare-datatypes ((List!45715 0))(
  ( (Nil!45591) (Cons!45591 (h!51011 Rule!14888) (t!343930 List!45715)) )
))
(declare-fun rules!3820 () List!45715)

(declare-fun b!4164916 () Bool)

(declare-fun tp!1271794 () Bool)

(declare-fun e!2585566 () Bool)

(declare-fun inv!60107 (String!52735) Bool)

(declare-fun inv!60109 (TokenValueInjection!14976) Bool)

(assert (=> b!4164916 (= e!2585566 (and tp!1271794 (inv!60107 (tag!8408 (h!51011 rules!3820))) (inv!60109 (transformation!7544 (h!51011 rules!3820))) e!2585568))))

(declare-fun tp!1271788 () Bool)

(declare-fun e!2585562 () Bool)

(declare-fun b!4164917 () Bool)

(declare-fun e!2585556 () Bool)

(declare-fun r!4097 () Rule!14888)

(assert (=> b!4164917 (= e!2585562 (and tp!1271788 (inv!60107 (tag!8408 r!4097)) (inv!60109 (transformation!7544 r!4097)) e!2585556))))

(declare-fun b!4164918 () Bool)

(declare-fun res!1706286 () Bool)

(declare-fun e!2585564 () Bool)

(assert (=> b!4164918 (=> (not res!1706286) (not e!2585564))))

(declare-datatypes ((LexerInterface!7137 0))(
  ( (LexerInterfaceExt!7134 (__x!27770 Int)) (Lexer!7135) )
))
(declare-fun thiss!25889 () LexerInterface!7137)

(declare-fun rulesInvariant!6350 (LexerInterface!7137 List!45715) Bool)

(assert (=> b!4164918 (= res!1706286 (rulesInvariant!6350 thiss!25889 rules!3820))))

(declare-fun e!2585561 () Bool)

(assert (=> b!4164919 (= e!2585561 (and tp!1271791 tp!1271785))))

(declare-fun b!4164920 () Bool)

(declare-fun res!1706292 () Bool)

(assert (=> b!4164920 (=> (not res!1706292) (not e!2585564))))

(declare-fun pBis!100 () List!45713)

(declare-fun input!3316 () List!45713)

(declare-fun isPrefix!4401 (List!45713 List!45713) Bool)

(assert (=> b!4164920 (= res!1706292 (isPrefix!4401 pBis!100 input!3316))))

(declare-fun b!4164921 () Bool)

(declare-fun res!1706291 () Bool)

(declare-fun e!2585553 () Bool)

(assert (=> b!4164921 (=> res!1706291 e!2585553)))

(declare-fun lt!1483899 () Int)

(declare-fun size!33497 (List!45713) Int)

(assert (=> b!4164921 (= res!1706291 (<= (size!33497 pBis!100) lt!1483899))))

(declare-fun b!4164922 () Bool)

(declare-fun e!2585557 () Bool)

(declare-fun tp_is_empty!21861 () Bool)

(declare-fun tp!1271787 () Bool)

(assert (=> b!4164922 (= e!2585557 (and tp_is_empty!21861 tp!1271787))))

(declare-fun b!4164923 () Bool)

(declare-fun res!1706287 () Bool)

(assert (=> b!4164923 (=> (not res!1706287) (not e!2585564))))

(declare-fun contains!9339 (List!45715 Rule!14888) Bool)

(assert (=> b!4164923 (= res!1706287 (contains!9339 rules!3820 r!4097))))

(declare-fun b!4164924 () Bool)

(declare-fun res!1706288 () Bool)

(assert (=> b!4164924 (=> (not res!1706288) (not e!2585564))))

(declare-fun isEmpty!26985 (List!45715) Bool)

(assert (=> b!4164924 (= res!1706288 (not (isEmpty!26985 rules!3820)))))

(assert (=> b!4164925 (= e!2585568 (and tp!1271793 tp!1271792))))

(declare-fun b!4164926 () Bool)

(declare-fun res!1706296 () Bool)

(assert (=> b!4164926 (=> (not res!1706296) (not e!2585564))))

(declare-fun rBis!161 () Rule!14888)

(assert (=> b!4164926 (= res!1706296 (contains!9339 rules!3820 rBis!161))))

(declare-fun b!4164927 () Bool)

(assert (=> b!4164927 (= e!2585553 true)))

(declare-fun ruleValid!3268 (LexerInterface!7137 Rule!14888) Bool)

(assert (=> b!4164927 (ruleValid!3268 thiss!25889 rBis!161)))

(declare-datatypes ((Unit!64681 0))(
  ( (Unit!64682) )
))
(declare-fun lt!1483893 () Unit!64681)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2308 (LexerInterface!7137 Rule!14888 List!45715) Unit!64681)

(assert (=> b!4164927 (= lt!1483893 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2308 thiss!25889 rBis!161 rules!3820))))

(declare-fun res!1706290 () Bool)

(assert (=> start!396930 (=> (not res!1706290) (not e!2585564))))

(get-info :version)

(assert (=> start!396930 (= res!1706290 ((_ is Lexer!7135) thiss!25889))))

(assert (=> start!396930 e!2585564))

(declare-fun e!2585554 () Bool)

(assert (=> start!396930 e!2585554))

(declare-fun e!2585560 () Bool)

(assert (=> start!396930 e!2585560))

(assert (=> start!396930 e!2585557))

(declare-fun e!2585567 () Bool)

(assert (=> start!396930 e!2585567))

(assert (=> start!396930 true))

(declare-fun e!2585558 () Bool)

(assert (=> start!396930 e!2585558))

(assert (=> start!396930 e!2585562))

(declare-fun b!4164928 () Bool)

(declare-fun tp!1271784 () Bool)

(assert (=> b!4164928 (= e!2585554 (and tp_is_empty!21861 tp!1271784))))

(declare-fun b!4164929 () Bool)

(declare-fun tp!1271786 () Bool)

(assert (=> b!4164929 (= e!2585560 (and e!2585566 tp!1271786))))

(declare-fun b!4164930 () Bool)

(declare-fun res!1706294 () Bool)

(assert (=> b!4164930 (=> (not res!1706294) (not e!2585564))))

(declare-fun p!2942 () List!45713)

(assert (=> b!4164930 (= res!1706294 (isPrefix!4401 p!2942 input!3316))))

(assert (=> b!4164931 (= e!2585556 (and tp!1271790 tp!1271782))))

(declare-fun b!4164932 () Bool)

(declare-fun tp!1271789 () Bool)

(assert (=> b!4164932 (= e!2585567 (and tp_is_empty!21861 tp!1271789))))

(declare-fun b!4164933 () Bool)

(declare-fun e!2585555 () Bool)

(assert (=> b!4164933 (= e!2585555 e!2585553)))

(declare-fun res!1706293 () Bool)

(assert (=> b!4164933 (=> res!1706293 e!2585553)))

(declare-datatypes ((Token!13834 0))(
  ( (Token!13835 (value!235552 TokenValue!7774) (rule!10598 Rule!14888) (size!33498 Int) (originalCharacters!7948 List!45713)) )
))
(declare-datatypes ((tuple2!43518 0))(
  ( (tuple2!43519 (_1!24893 Token!13834) (_2!24893 List!45713)) )
))
(declare-datatypes ((Option!9758 0))(
  ( (None!9757) (Some!9757 (v!40535 tuple2!43518)) )
))
(declare-fun lt!1483896 () Option!9758)

(declare-fun maxPrefixOneRule!3166 (LexerInterface!7137 Rule!14888 List!45713) Option!9758)

(assert (=> b!4164933 (= res!1706293 (not (= (maxPrefixOneRule!3166 thiss!25889 r!4097 input!3316) lt!1483896)))))

(declare-fun lt!1483895 () TokenValue!7774)

(declare-fun getSuffix!2714 (List!45713 List!45713) List!45713)

(assert (=> b!4164933 (= lt!1483896 (Some!9757 (tuple2!43519 (Token!13835 lt!1483895 r!4097 lt!1483899 p!2942) (getSuffix!2714 input!3316 p!2942))))))

(assert (=> b!4164933 (= lt!1483899 (size!33497 p!2942))))

(declare-fun lt!1483898 () BalanceConc!27104)

(declare-fun apply!10525 (TokenValueInjection!14976 BalanceConc!27104) TokenValue!7774)

(assert (=> b!4164933 (= lt!1483895 (apply!10525 (transformation!7544 r!4097) lt!1483898))))

(assert (=> b!4164933 (isPrefix!4401 input!3316 input!3316)))

(declare-fun lt!1483900 () Unit!64681)

(declare-fun lemmaIsPrefixRefl!2840 (List!45713 List!45713) Unit!64681)

(assert (=> b!4164933 (= lt!1483900 (lemmaIsPrefixRefl!2840 input!3316 input!3316))))

(declare-fun lt!1483894 () Unit!64681)

(declare-fun lemmaSemiInverse!2318 (TokenValueInjection!14976 BalanceConc!27104) Unit!64681)

(assert (=> b!4164933 (= lt!1483894 (lemmaSemiInverse!2318 (transformation!7544 r!4097) lt!1483898))))

(declare-fun seqFromList!5577 (List!45713) BalanceConc!27104)

(assert (=> b!4164933 (= lt!1483898 (seqFromList!5577 p!2942))))

(declare-fun tp!1271783 () Bool)

(declare-fun b!4164934 () Bool)

(assert (=> b!4164934 (= e!2585558 (and tp!1271783 (inv!60107 (tag!8408 rBis!161)) (inv!60109 (transformation!7544 rBis!161)) e!2585561))))

(declare-fun b!4164935 () Bool)

(assert (=> b!4164935 (= e!2585564 (not e!2585555))))

(declare-fun res!1706289 () Bool)

(assert (=> b!4164935 (=> res!1706289 e!2585555)))

(declare-fun matchR!6194 (Regex!12449 List!45713) Bool)

(assert (=> b!4164935 (= res!1706289 (not (matchR!6194 (regex!7544 r!4097) p!2942)))))

(assert (=> b!4164935 (ruleValid!3268 thiss!25889 r!4097)))

(declare-fun lt!1483897 () Unit!64681)

(assert (=> b!4164935 (= lt!1483897 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2308 thiss!25889 r!4097 rules!3820))))

(declare-fun b!4164936 () Bool)

(declare-fun res!1706295 () Bool)

(assert (=> b!4164936 (=> res!1706295 e!2585553)))

(declare-fun maxPrefix!4221 (LexerInterface!7137 List!45715 List!45713) Option!9758)

(assert (=> b!4164936 (= res!1706295 (not (= (maxPrefix!4221 thiss!25889 rules!3820 input!3316) lt!1483896)))))

(assert (= (and start!396930 res!1706290) b!4164930))

(assert (= (and b!4164930 res!1706294) b!4164920))

(assert (= (and b!4164920 res!1706292) b!4164924))

(assert (= (and b!4164924 res!1706288) b!4164918))

(assert (= (and b!4164918 res!1706286) b!4164923))

(assert (= (and b!4164923 res!1706287) b!4164926))

(assert (= (and b!4164926 res!1706296) b!4164935))

(assert (= (and b!4164935 (not res!1706289)) b!4164933))

(assert (= (and b!4164933 (not res!1706293)) b!4164921))

(assert (= (and b!4164921 (not res!1706291)) b!4164936))

(assert (= (and b!4164936 (not res!1706295)) b!4164927))

(assert (= (and start!396930 ((_ is Cons!45589) pBis!100)) b!4164928))

(assert (= b!4164916 b!4164925))

(assert (= b!4164929 b!4164916))

(assert (= (and start!396930 ((_ is Cons!45591) rules!3820)) b!4164929))

(assert (= (and start!396930 ((_ is Cons!45589) p!2942)) b!4164922))

(assert (= (and start!396930 ((_ is Cons!45589) input!3316)) b!4164932))

(assert (= b!4164934 b!4164919))

(assert (= start!396930 b!4164934))

(assert (= b!4164917 b!4164931))

(assert (= start!396930 b!4164917))

(declare-fun m!4757025 () Bool)

(assert (=> b!4164917 m!4757025))

(declare-fun m!4757027 () Bool)

(assert (=> b!4164917 m!4757027))

(declare-fun m!4757029 () Bool)

(assert (=> b!4164930 m!4757029))

(declare-fun m!4757031 () Bool)

(assert (=> b!4164923 m!4757031))

(declare-fun m!4757033 () Bool)

(assert (=> b!4164921 m!4757033))

(declare-fun m!4757035 () Bool)

(assert (=> b!4164935 m!4757035))

(declare-fun m!4757037 () Bool)

(assert (=> b!4164935 m!4757037))

(declare-fun m!4757039 () Bool)

(assert (=> b!4164935 m!4757039))

(declare-fun m!4757041 () Bool)

(assert (=> b!4164926 m!4757041))

(declare-fun m!4757043 () Bool)

(assert (=> b!4164934 m!4757043))

(declare-fun m!4757045 () Bool)

(assert (=> b!4164934 m!4757045))

(declare-fun m!4757047 () Bool)

(assert (=> b!4164924 m!4757047))

(declare-fun m!4757049 () Bool)

(assert (=> b!4164927 m!4757049))

(declare-fun m!4757051 () Bool)

(assert (=> b!4164927 m!4757051))

(declare-fun m!4757053 () Bool)

(assert (=> b!4164918 m!4757053))

(declare-fun m!4757055 () Bool)

(assert (=> b!4164916 m!4757055))

(declare-fun m!4757057 () Bool)

(assert (=> b!4164916 m!4757057))

(declare-fun m!4757059 () Bool)

(assert (=> b!4164933 m!4757059))

(declare-fun m!4757061 () Bool)

(assert (=> b!4164933 m!4757061))

(declare-fun m!4757063 () Bool)

(assert (=> b!4164933 m!4757063))

(declare-fun m!4757065 () Bool)

(assert (=> b!4164933 m!4757065))

(declare-fun m!4757067 () Bool)

(assert (=> b!4164933 m!4757067))

(declare-fun m!4757069 () Bool)

(assert (=> b!4164933 m!4757069))

(declare-fun m!4757071 () Bool)

(assert (=> b!4164933 m!4757071))

(declare-fun m!4757073 () Bool)

(assert (=> b!4164933 m!4757073))

(declare-fun m!4757075 () Bool)

(assert (=> b!4164936 m!4757075))

(declare-fun m!4757077 () Bool)

(assert (=> b!4164920 m!4757077))

(check-sat (not b!4164918) (not b!4164920) (not b!4164917) (not b!4164924) (not b!4164916) (not b!4164921) (not b!4164935) b_and!324801 (not b!4164927) (not b!4164929) (not b!4164930) b_and!324799 (not b_next!120925) (not b!4164922) b_and!324795 (not b!4164928) (not b!4164923) (not b!4164936) (not b_next!120921) (not b_next!120919) (not b!4164934) tp_is_empty!21861 (not b_next!120927) b_and!324793 b_and!324803 b_and!324797 (not b!4164932) (not b_next!120923) (not b!4164926) (not b!4164933) (not b_next!120929))
(check-sat (not b_next!120921) (not b_next!120919) b_and!324801 b_and!324799 (not b_next!120925) (not b_next!120923) (not b_next!120929) b_and!324795 (not b_next!120927) b_and!324793 b_and!324803 b_and!324797)
