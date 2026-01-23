; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!396926 () Bool)

(assert start!396926)

(declare-fun b!4164794 () Bool)

(declare-fun b_free!120191 () Bool)

(declare-fun b_next!120895 () Bool)

(assert (=> b!4164794 (= b_free!120191 (not b_next!120895))))

(declare-fun tp!1271709 () Bool)

(declare-fun b_and!324769 () Bool)

(assert (=> b!4164794 (= tp!1271709 b_and!324769)))

(declare-fun b_free!120193 () Bool)

(declare-fun b_next!120897 () Bool)

(assert (=> b!4164794 (= b_free!120193 (not b_next!120897))))

(declare-fun tp!1271713 () Bool)

(declare-fun b_and!324771 () Bool)

(assert (=> b!4164794 (= tp!1271713 b_and!324771)))

(declare-fun b!4164804 () Bool)

(declare-fun b_free!120195 () Bool)

(declare-fun b_next!120899 () Bool)

(assert (=> b!4164804 (= b_free!120195 (not b_next!120899))))

(declare-fun tp!1271707 () Bool)

(declare-fun b_and!324773 () Bool)

(assert (=> b!4164804 (= tp!1271707 b_and!324773)))

(declare-fun b_free!120197 () Bool)

(declare-fun b_next!120901 () Bool)

(assert (=> b!4164804 (= b_free!120197 (not b_next!120901))))

(declare-fun tp!1271708 () Bool)

(declare-fun b_and!324775 () Bool)

(assert (=> b!4164804 (= tp!1271708 b_and!324775)))

(declare-fun b!4164798 () Bool)

(declare-fun b_free!120199 () Bool)

(declare-fun b_next!120903 () Bool)

(assert (=> b!4164798 (= b_free!120199 (not b_next!120903))))

(declare-fun tp!1271711 () Bool)

(declare-fun b_and!324777 () Bool)

(assert (=> b!4164798 (= tp!1271711 b_and!324777)))

(declare-fun b_free!120201 () Bool)

(declare-fun b_next!120905 () Bool)

(assert (=> b!4164798 (= b_free!120201 (not b_next!120905))))

(declare-fun tp!1271706 () Bool)

(declare-fun b_and!324779 () Bool)

(assert (=> b!4164798 (= tp!1271706 b_and!324779)))

(declare-fun b!4164790 () Bool)

(declare-fun res!1706221 () Bool)

(declare-fun e!2585470 () Bool)

(assert (=> b!4164790 (=> res!1706221 e!2585470)))

(declare-datatypes ((C!25084 0))(
  ( (C!25085 (val!14704 Int)) )
))
(declare-datatypes ((List!45707 0))(
  ( (Nil!45583) (Cons!45583 (h!51003 C!25084) (t!343922 List!45707)) )
))
(declare-fun pBis!100 () List!45707)

(declare-fun lt!1483847 () Int)

(declare-fun size!33493 (List!45707) Int)

(assert (=> b!4164790 (= res!1706221 (<= (size!33493 pBis!100) lt!1483847))))

(declare-fun b!4164791 () Bool)

(assert (=> b!4164791 (= e!2585470 true)))

(declare-datatypes ((LexerInterface!7135 0))(
  ( (LexerInterfaceExt!7132 (__x!27765 Int)) (Lexer!7133) )
))
(declare-fun thiss!25889 () LexerInterface!7135)

(declare-datatypes ((IArray!27511 0))(
  ( (IArray!27512 (innerList!13813 List!45707)) )
))
(declare-datatypes ((Conc!13753 0))(
  ( (Node!13753 (left!33986 Conc!13753) (right!34316 Conc!13753) (csize!27736 Int) (cheight!13964 Int)) (Leaf!21267 (xs!17059 IArray!27511) (csize!27737 Int)) (Empty!13753) )
))
(declare-datatypes ((List!45708 0))(
  ( (Nil!45584) (Cons!45584 (h!51004 (_ BitVec 16)) (t!343923 List!45708)) )
))
(declare-datatypes ((BalanceConc!27100 0))(
  ( (BalanceConc!27101 (c!712276 Conc!13753)) )
))
(declare-datatypes ((TokenValue!7772 0))(
  ( (FloatLiteralValue!15544 (text!54849 List!45708)) (TokenValueExt!7771 (__x!27766 Int)) (Broken!38860 (value!235469 List!45708)) (Object!7895) (End!7772) (Def!7772) (Underscore!7772) (Match!7772) (Else!7772) (Error!7772) (Case!7772) (If!7772) (Extends!7772) (Abstract!7772) (Class!7772) (Val!7772) (DelimiterValue!15544 (del!7832 List!45708)) (KeywordValue!7778 (value!235470 List!45708)) (CommentValue!15544 (value!235471 List!45708)) (WhitespaceValue!15544 (value!235472 List!45708)) (IndentationValue!7772 (value!235473 List!45708)) (String!52725) (Int32!7772) (Broken!38861 (value!235474 List!45708)) (Boolean!7773) (Unit!64674) (OperatorValue!7775 (op!7832 List!45708)) (IdentifierValue!15544 (value!235475 List!45708)) (IdentifierValue!15545 (value!235476 List!45708)) (WhitespaceValue!15545 (value!235477 List!45708)) (True!15544) (False!15544) (Broken!38862 (value!235478 List!45708)) (Broken!38863 (value!235479 List!45708)) (True!15545) (RightBrace!7772) (RightBracket!7772) (Colon!7772) (Null!7772) (Comma!7772) (LeftBracket!7772) (False!15545) (LeftBrace!7772) (ImaginaryLiteralValue!7772 (text!54850 List!45708)) (StringLiteralValue!23316 (value!235480 List!45708)) (EOFValue!7772 (value!235481 List!45708)) (IdentValue!7772 (value!235482 List!45708)) (DelimiterValue!15545 (value!235483 List!45708)) (DedentValue!7772 (value!235484 List!45708)) (NewLineValue!7772 (value!235485 List!45708)) (IntegerValue!23316 (value!235486 (_ BitVec 32)) (text!54851 List!45708)) (IntegerValue!23317 (value!235487 Int) (text!54852 List!45708)) (Times!7772) (Or!7772) (Equal!7772) (Minus!7772) (Broken!38864 (value!235488 List!45708)) (And!7772) (Div!7772) (LessEqual!7772) (Mod!7772) (Concat!20219) (Not!7772) (Plus!7772) (SpaceValue!7772 (value!235489 List!45708)) (IntegerValue!23318 (value!235490 Int) (text!54853 List!45708)) (StringLiteralValue!23317 (text!54854 List!45708)) (FloatLiteralValue!15545 (text!54855 List!45708)) (BytesLiteralValue!7772 (value!235491 List!45708)) (CommentValue!15545 (value!235492 List!45708)) (StringLiteralValue!23318 (value!235493 List!45708)) (ErrorTokenValue!7772 (msg!7833 List!45708)) )
))
(declare-datatypes ((TokenValueInjection!14972 0))(
  ( (TokenValueInjection!14973 (toValue!10210 Int) (toChars!10069 Int)) )
))
(declare-datatypes ((Regex!12447 0))(
  ( (ElementMatch!12447 (c!712277 C!25084)) (Concat!20220 (regOne!25406 Regex!12447) (regTwo!25406 Regex!12447)) (EmptyExpr!12447) (Star!12447 (reg!12776 Regex!12447)) (EmptyLang!12447) (Union!12447 (regOne!25407 Regex!12447) (regTwo!25407 Regex!12447)) )
))
(declare-datatypes ((String!52726 0))(
  ( (String!52727 (value!235494 String)) )
))
(declare-datatypes ((Rule!14884 0))(
  ( (Rule!14885 (regex!7542 Regex!12447) (tag!8406 String!52726) (isSeparator!7542 Bool) (transformation!7542 TokenValueInjection!14972)) )
))
(declare-fun rBis!161 () Rule!14884)

(declare-fun ruleValid!3266 (LexerInterface!7135 Rule!14884) Bool)

(assert (=> b!4164791 (ruleValid!3266 thiss!25889 rBis!161)))

(declare-datatypes ((Unit!64675 0))(
  ( (Unit!64676) )
))
(declare-fun lt!1483849 () Unit!64675)

(declare-datatypes ((List!45709 0))(
  ( (Nil!45585) (Cons!45585 (h!51005 Rule!14884) (t!343924 List!45709)) )
))
(declare-fun rules!3820 () List!45709)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2306 (LexerInterface!7135 Rule!14884 List!45709) Unit!64675)

(assert (=> b!4164791 (= lt!1483849 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2306 thiss!25889 rBis!161 rules!3820))))

(declare-fun e!2585460 () Bool)

(declare-fun b!4164792 () Bool)

(declare-fun e!2585466 () Bool)

(declare-fun tp!1271714 () Bool)

(declare-fun inv!60102 (String!52726) Bool)

(declare-fun inv!60104 (TokenValueInjection!14972) Bool)

(assert (=> b!4164792 (= e!2585460 (and tp!1271714 (inv!60102 (tag!8406 (h!51005 rules!3820))) (inv!60104 (transformation!7542 (h!51005 rules!3820))) e!2585466))))

(declare-fun b!4164793 () Bool)

(declare-fun res!1706227 () Bool)

(declare-fun e!2585461 () Bool)

(assert (=> b!4164793 (=> (not res!1706227) (not e!2585461))))

(declare-fun p!2942 () List!45707)

(declare-fun input!3316 () List!45707)

(declare-fun isPrefix!4399 (List!45707 List!45707) Bool)

(assert (=> b!4164793 (= res!1706227 (isPrefix!4399 p!2942 input!3316))))

(declare-fun e!2585459 () Bool)

(assert (=> b!4164794 (= e!2585459 (and tp!1271709 tp!1271713))))

(declare-fun b!4164795 () Bool)

(declare-fun r!4097 () Rule!14884)

(declare-fun tp!1271705 () Bool)

(declare-fun e!2585464 () Bool)

(assert (=> b!4164795 (= e!2585464 (and tp!1271705 (inv!60102 (tag!8406 r!4097)) (inv!60104 (transformation!7542 r!4097)) e!2585459))))

(declare-fun b!4164796 () Bool)

(declare-fun e!2585458 () Bool)

(assert (=> b!4164796 (= e!2585461 (not e!2585458))))

(declare-fun res!1706223 () Bool)

(assert (=> b!4164796 (=> res!1706223 e!2585458)))

(declare-fun matchR!6192 (Regex!12447 List!45707) Bool)

(assert (=> b!4164796 (= res!1706223 (not (matchR!6192 (regex!7542 r!4097) p!2942)))))

(assert (=> b!4164796 (ruleValid!3266 thiss!25889 r!4097)))

(declare-fun lt!1483851 () Unit!64675)

(assert (=> b!4164796 (= lt!1483851 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2306 thiss!25889 r!4097 rules!3820))))

(declare-fun res!1706224 () Bool)

(assert (=> start!396926 (=> (not res!1706224) (not e!2585461))))

(get-info :version)

(assert (=> start!396926 (= res!1706224 ((_ is Lexer!7133) thiss!25889))))

(assert (=> start!396926 e!2585461))

(declare-fun e!2585457 () Bool)

(assert (=> start!396926 e!2585457))

(declare-fun e!2585467 () Bool)

(assert (=> start!396926 e!2585467))

(declare-fun e!2585462 () Bool)

(assert (=> start!396926 e!2585462))

(declare-fun e!2585463 () Bool)

(assert (=> start!396926 e!2585463))

(assert (=> start!396926 true))

(declare-fun e!2585465 () Bool)

(assert (=> start!396926 e!2585465))

(assert (=> start!396926 e!2585464))

(declare-fun b!4164797 () Bool)

(declare-fun tp_is_empty!21857 () Bool)

(declare-fun tp!1271716 () Bool)

(assert (=> b!4164797 (= e!2585463 (and tp_is_empty!21857 tp!1271716))))

(declare-fun e!2585468 () Bool)

(assert (=> b!4164798 (= e!2585468 (and tp!1271711 tp!1271706))))

(declare-fun b!4164799 () Bool)

(declare-fun res!1706220 () Bool)

(assert (=> b!4164799 (=> res!1706220 e!2585470)))

(declare-datatypes ((Token!13830 0))(
  ( (Token!13831 (value!235495 TokenValue!7772) (rule!10596 Rule!14884) (size!33494 Int) (originalCharacters!7946 List!45707)) )
))
(declare-datatypes ((tuple2!43514 0))(
  ( (tuple2!43515 (_1!24891 Token!13830) (_2!24891 List!45707)) )
))
(declare-datatypes ((Option!9756 0))(
  ( (None!9755) (Some!9755 (v!40533 tuple2!43514)) )
))
(declare-fun lt!1483850 () Option!9756)

(declare-fun maxPrefix!4219 (LexerInterface!7135 List!45709 List!45707) Option!9756)

(assert (=> b!4164799 (= res!1706220 (not (= (maxPrefix!4219 thiss!25889 rules!3820 input!3316) lt!1483850)))))

(declare-fun b!4164800 () Bool)

(assert (=> b!4164800 (= e!2585458 e!2585470)))

(declare-fun res!1706228 () Bool)

(assert (=> b!4164800 (=> res!1706228 e!2585470)))

(declare-fun maxPrefixOneRule!3164 (LexerInterface!7135 Rule!14884 List!45707) Option!9756)

(assert (=> b!4164800 (= res!1706228 (not (= (maxPrefixOneRule!3164 thiss!25889 r!4097 input!3316) lt!1483850)))))

(declare-fun lt!1483848 () TokenValue!7772)

(declare-fun getSuffix!2712 (List!45707 List!45707) List!45707)

(assert (=> b!4164800 (= lt!1483850 (Some!9755 (tuple2!43515 (Token!13831 lt!1483848 r!4097 lt!1483847 p!2942) (getSuffix!2712 input!3316 p!2942))))))

(assert (=> b!4164800 (= lt!1483847 (size!33493 p!2942))))

(declare-fun lt!1483845 () BalanceConc!27100)

(declare-fun apply!10523 (TokenValueInjection!14972 BalanceConc!27100) TokenValue!7772)

(assert (=> b!4164800 (= lt!1483848 (apply!10523 (transformation!7542 r!4097) lt!1483845))))

(assert (=> b!4164800 (isPrefix!4399 input!3316 input!3316)))

(declare-fun lt!1483852 () Unit!64675)

(declare-fun lemmaIsPrefixRefl!2838 (List!45707 List!45707) Unit!64675)

(assert (=> b!4164800 (= lt!1483852 (lemmaIsPrefixRefl!2838 input!3316 input!3316))))

(declare-fun lt!1483846 () Unit!64675)

(declare-fun lemmaSemiInverse!2316 (TokenValueInjection!14972 BalanceConc!27100) Unit!64675)

(assert (=> b!4164800 (= lt!1483846 (lemmaSemiInverse!2316 (transformation!7542 r!4097) lt!1483845))))

(declare-fun seqFromList!5575 (List!45707) BalanceConc!27100)

(assert (=> b!4164800 (= lt!1483845 (seqFromList!5575 p!2942))))

(declare-fun b!4164801 () Bool)

(declare-fun tp!1271715 () Bool)

(assert (=> b!4164801 (= e!2585457 (and tp_is_empty!21857 tp!1271715))))

(declare-fun b!4164802 () Bool)

(declare-fun res!1706226 () Bool)

(assert (=> b!4164802 (=> (not res!1706226) (not e!2585461))))

(declare-fun contains!9337 (List!45709 Rule!14884) Bool)

(assert (=> b!4164802 (= res!1706226 (contains!9337 rules!3820 rBis!161))))

(declare-fun b!4164803 () Bool)

(declare-fun res!1706229 () Bool)

(assert (=> b!4164803 (=> (not res!1706229) (not e!2585461))))

(declare-fun isEmpty!26983 (List!45709) Bool)

(assert (=> b!4164803 (= res!1706229 (not (isEmpty!26983 rules!3820)))))

(assert (=> b!4164804 (= e!2585466 (and tp!1271707 tp!1271708))))

(declare-fun b!4164805 () Bool)

(declare-fun tp!1271712 () Bool)

(assert (=> b!4164805 (= e!2585467 (and e!2585460 tp!1271712))))

(declare-fun b!4164806 () Bool)

(declare-fun tp!1271704 () Bool)

(assert (=> b!4164806 (= e!2585462 (and tp_is_empty!21857 tp!1271704))))

(declare-fun b!4164807 () Bool)

(declare-fun res!1706222 () Bool)

(assert (=> b!4164807 (=> (not res!1706222) (not e!2585461))))

(assert (=> b!4164807 (= res!1706222 (isPrefix!4399 pBis!100 input!3316))))

(declare-fun b!4164808 () Bool)

(declare-fun res!1706225 () Bool)

(assert (=> b!4164808 (=> (not res!1706225) (not e!2585461))))

(assert (=> b!4164808 (= res!1706225 (contains!9337 rules!3820 r!4097))))

(declare-fun tp!1271710 () Bool)

(declare-fun b!4164809 () Bool)

(assert (=> b!4164809 (= e!2585465 (and tp!1271710 (inv!60102 (tag!8406 rBis!161)) (inv!60104 (transformation!7542 rBis!161)) e!2585468))))

(declare-fun b!4164810 () Bool)

(declare-fun res!1706230 () Bool)

(assert (=> b!4164810 (=> (not res!1706230) (not e!2585461))))

(declare-fun rulesInvariant!6348 (LexerInterface!7135 List!45709) Bool)

(assert (=> b!4164810 (= res!1706230 (rulesInvariant!6348 thiss!25889 rules!3820))))

(assert (= (and start!396926 res!1706224) b!4164793))

(assert (= (and b!4164793 res!1706227) b!4164807))

(assert (= (and b!4164807 res!1706222) b!4164803))

(assert (= (and b!4164803 res!1706229) b!4164810))

(assert (= (and b!4164810 res!1706230) b!4164808))

(assert (= (and b!4164808 res!1706225) b!4164802))

(assert (= (and b!4164802 res!1706226) b!4164796))

(assert (= (and b!4164796 (not res!1706223)) b!4164800))

(assert (= (and b!4164800 (not res!1706228)) b!4164790))

(assert (= (and b!4164790 (not res!1706221)) b!4164799))

(assert (= (and b!4164799 (not res!1706220)) b!4164791))

(assert (= (and start!396926 ((_ is Cons!45583) pBis!100)) b!4164801))

(assert (= b!4164792 b!4164804))

(assert (= b!4164805 b!4164792))

(assert (= (and start!396926 ((_ is Cons!45585) rules!3820)) b!4164805))

(assert (= (and start!396926 ((_ is Cons!45583) p!2942)) b!4164806))

(assert (= (and start!396926 ((_ is Cons!45583) input!3316)) b!4164797))

(assert (= b!4164809 b!4164798))

(assert (= start!396926 b!4164809))

(assert (= b!4164795 b!4164794))

(assert (= start!396926 b!4164795))

(declare-fun m!4756917 () Bool)

(assert (=> b!4164799 m!4756917))

(declare-fun m!4756919 () Bool)

(assert (=> b!4164795 m!4756919))

(declare-fun m!4756921 () Bool)

(assert (=> b!4164795 m!4756921))

(declare-fun m!4756923 () Bool)

(assert (=> b!4164791 m!4756923))

(declare-fun m!4756925 () Bool)

(assert (=> b!4164791 m!4756925))

(declare-fun m!4756927 () Bool)

(assert (=> b!4164810 m!4756927))

(declare-fun m!4756929 () Bool)

(assert (=> b!4164808 m!4756929))

(declare-fun m!4756931 () Bool)

(assert (=> b!4164793 m!4756931))

(declare-fun m!4756933 () Bool)

(assert (=> b!4164792 m!4756933))

(declare-fun m!4756935 () Bool)

(assert (=> b!4164792 m!4756935))

(declare-fun m!4756937 () Bool)

(assert (=> b!4164803 m!4756937))

(declare-fun m!4756939 () Bool)

(assert (=> b!4164796 m!4756939))

(declare-fun m!4756941 () Bool)

(assert (=> b!4164796 m!4756941))

(declare-fun m!4756943 () Bool)

(assert (=> b!4164796 m!4756943))

(declare-fun m!4756945 () Bool)

(assert (=> b!4164790 m!4756945))

(declare-fun m!4756947 () Bool)

(assert (=> b!4164800 m!4756947))

(declare-fun m!4756949 () Bool)

(assert (=> b!4164800 m!4756949))

(declare-fun m!4756951 () Bool)

(assert (=> b!4164800 m!4756951))

(declare-fun m!4756953 () Bool)

(assert (=> b!4164800 m!4756953))

(declare-fun m!4756955 () Bool)

(assert (=> b!4164800 m!4756955))

(declare-fun m!4756957 () Bool)

(assert (=> b!4164800 m!4756957))

(declare-fun m!4756959 () Bool)

(assert (=> b!4164800 m!4756959))

(declare-fun m!4756961 () Bool)

(assert (=> b!4164800 m!4756961))

(declare-fun m!4756963 () Bool)

(assert (=> b!4164809 m!4756963))

(declare-fun m!4756965 () Bool)

(assert (=> b!4164809 m!4756965))

(declare-fun m!4756967 () Bool)

(assert (=> b!4164802 m!4756967))

(declare-fun m!4756969 () Bool)

(assert (=> b!4164807 m!4756969))

(check-sat (not b!4164806) b_and!324777 (not b!4164796) (not b_next!120897) (not b_next!120895) b_and!324773 (not b!4164808) (not b!4164792) (not b!4164791) (not b_next!120903) (not b_next!120905) (not b!4164810) tp_is_empty!21857 b_and!324769 (not b!4164790) (not b!4164805) (not b!4164807) (not b_next!120901) (not b!4164795) (not b!4164797) (not b!4164800) (not b!4164809) (not b!4164802) (not b!4164801) b_and!324779 (not b!4164793) (not b_next!120899) (not b!4164799) (not b!4164803) b_and!324771 b_and!324775)
(check-sat b_and!324769 b_and!324777 (not b_next!120897) (not b_next!120895) b_and!324773 (not b_next!120901) b_and!324779 (not b_next!120899) (not b_next!120903) (not b_next!120905) b_and!324771 b_and!324775)
