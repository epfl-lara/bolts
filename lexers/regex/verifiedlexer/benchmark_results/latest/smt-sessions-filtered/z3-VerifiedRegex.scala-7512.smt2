; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!396922 () Bool)

(assert start!396922)

(declare-fun b!4164680 () Bool)

(declare-fun b_free!120167 () Bool)

(declare-fun b_next!120871 () Bool)

(assert (=> b!4164680 (= b_free!120167 (not b_next!120871))))

(declare-fun tp!1271630 () Bool)

(declare-fun b_and!324745 () Bool)

(assert (=> b!4164680 (= tp!1271630 b_and!324745)))

(declare-fun b_free!120169 () Bool)

(declare-fun b_next!120873 () Bool)

(assert (=> b!4164680 (= b_free!120169 (not b_next!120873))))

(declare-fun tp!1271636 () Bool)

(declare-fun b_and!324747 () Bool)

(assert (=> b!4164680 (= tp!1271636 b_and!324747)))

(declare-fun b!4164666 () Bool)

(declare-fun b_free!120171 () Bool)

(declare-fun b_next!120875 () Bool)

(assert (=> b!4164666 (= b_free!120171 (not b_next!120875))))

(declare-fun tp!1271637 () Bool)

(declare-fun b_and!324749 () Bool)

(assert (=> b!4164666 (= tp!1271637 b_and!324749)))

(declare-fun b_free!120173 () Bool)

(declare-fun b_next!120877 () Bool)

(assert (=> b!4164666 (= b_free!120173 (not b_next!120877))))

(declare-fun tp!1271633 () Bool)

(declare-fun b_and!324751 () Bool)

(assert (=> b!4164666 (= tp!1271633 b_and!324751)))

(declare-fun b!4164676 () Bool)

(declare-fun b_free!120175 () Bool)

(declare-fun b_next!120879 () Bool)

(assert (=> b!4164676 (= b_free!120175 (not b_next!120879))))

(declare-fun tp!1271629 () Bool)

(declare-fun b_and!324753 () Bool)

(assert (=> b!4164676 (= tp!1271629 b_and!324753)))

(declare-fun b_free!120177 () Bool)

(declare-fun b_next!120881 () Bool)

(assert (=> b!4164676 (= b_free!120177 (not b_next!120881))))

(declare-fun tp!1271627 () Bool)

(declare-fun b_and!324755 () Bool)

(assert (=> b!4164676 (= tp!1271627 b_and!324755)))

(declare-fun b!4164664 () Bool)

(declare-fun e!2585363 () Bool)

(declare-fun tp_is_empty!21853 () Bool)

(declare-fun tp!1271634 () Bool)

(assert (=> b!4164664 (= e!2585363 (and tp_is_empty!21853 tp!1271634))))

(declare-fun e!2585376 () Bool)

(declare-fun e!2585370 () Bool)

(declare-datatypes ((C!25080 0))(
  ( (C!25081 (val!14702 Int)) )
))
(declare-datatypes ((List!45701 0))(
  ( (Nil!45577) (Cons!45577 (h!50997 C!25080) (t!343916 List!45701)) )
))
(declare-datatypes ((IArray!27507 0))(
  ( (IArray!27508 (innerList!13811 List!45701)) )
))
(declare-datatypes ((Conc!13751 0))(
  ( (Node!13751 (left!33983 Conc!13751) (right!34313 Conc!13751) (csize!27732 Int) (cheight!13962 Int)) (Leaf!21264 (xs!17057 IArray!27507) (csize!27733 Int)) (Empty!13751) )
))
(declare-datatypes ((List!45702 0))(
  ( (Nil!45578) (Cons!45578 (h!50998 (_ BitVec 16)) (t!343917 List!45702)) )
))
(declare-datatypes ((BalanceConc!27096 0))(
  ( (BalanceConc!27097 (c!712270 Conc!13751)) )
))
(declare-datatypes ((TokenValue!7770 0))(
  ( (FloatLiteralValue!15540 (text!54835 List!45702)) (TokenValueExt!7769 (__x!27761 Int)) (Broken!38850 (value!235412 List!45702)) (Object!7893) (End!7770) (Def!7770) (Underscore!7770) (Match!7770) (Else!7770) (Error!7770) (Case!7770) (If!7770) (Extends!7770) (Abstract!7770) (Class!7770) (Val!7770) (DelimiterValue!15540 (del!7830 List!45702)) (KeywordValue!7776 (value!235413 List!45702)) (CommentValue!15540 (value!235414 List!45702)) (WhitespaceValue!15540 (value!235415 List!45702)) (IndentationValue!7770 (value!235416 List!45702)) (String!52715) (Int32!7770) (Broken!38851 (value!235417 List!45702)) (Boolean!7771) (Unit!64668) (OperatorValue!7773 (op!7830 List!45702)) (IdentifierValue!15540 (value!235418 List!45702)) (IdentifierValue!15541 (value!235419 List!45702)) (WhitespaceValue!15541 (value!235420 List!45702)) (True!15540) (False!15540) (Broken!38852 (value!235421 List!45702)) (Broken!38853 (value!235422 List!45702)) (True!15541) (RightBrace!7770) (RightBracket!7770) (Colon!7770) (Null!7770) (Comma!7770) (LeftBracket!7770) (False!15541) (LeftBrace!7770) (ImaginaryLiteralValue!7770 (text!54836 List!45702)) (StringLiteralValue!23310 (value!235423 List!45702)) (EOFValue!7770 (value!235424 List!45702)) (IdentValue!7770 (value!235425 List!45702)) (DelimiterValue!15541 (value!235426 List!45702)) (DedentValue!7770 (value!235427 List!45702)) (NewLineValue!7770 (value!235428 List!45702)) (IntegerValue!23310 (value!235429 (_ BitVec 32)) (text!54837 List!45702)) (IntegerValue!23311 (value!235430 Int) (text!54838 List!45702)) (Times!7770) (Or!7770) (Equal!7770) (Minus!7770) (Broken!38854 (value!235431 List!45702)) (And!7770) (Div!7770) (LessEqual!7770) (Mod!7770) (Concat!20215) (Not!7770) (Plus!7770) (SpaceValue!7770 (value!235432 List!45702)) (IntegerValue!23312 (value!235433 Int) (text!54839 List!45702)) (StringLiteralValue!23311 (text!54840 List!45702)) (FloatLiteralValue!15541 (text!54841 List!45702)) (BytesLiteralValue!7770 (value!235434 List!45702)) (CommentValue!15541 (value!235435 List!45702)) (StringLiteralValue!23312 (value!235436 List!45702)) (ErrorTokenValue!7770 (msg!7831 List!45702)) )
))
(declare-datatypes ((TokenValueInjection!14968 0))(
  ( (TokenValueInjection!14969 (toValue!10208 Int) (toChars!10067 Int)) )
))
(declare-datatypes ((String!52716 0))(
  ( (String!52717 (value!235437 String)) )
))
(declare-datatypes ((Regex!12445 0))(
  ( (ElementMatch!12445 (c!712271 C!25080)) (Concat!20216 (regOne!25402 Regex!12445) (regTwo!25402 Regex!12445)) (EmptyExpr!12445) (Star!12445 (reg!12774 Regex!12445)) (EmptyLang!12445) (Union!12445 (regOne!25403 Regex!12445) (regTwo!25403 Regex!12445)) )
))
(declare-datatypes ((Rule!14880 0))(
  ( (Rule!14881 (regex!7540 Regex!12445) (tag!8404 String!52716) (isSeparator!7540 Bool) (transformation!7540 TokenValueInjection!14968)) )
))
(declare-datatypes ((List!45703 0))(
  ( (Nil!45579) (Cons!45579 (h!50999 Rule!14880) (t!343918 List!45703)) )
))
(declare-fun rules!3820 () List!45703)

(declare-fun tp!1271638 () Bool)

(declare-fun b!4164665 () Bool)

(declare-fun inv!60097 (String!52716) Bool)

(declare-fun inv!60099 (TokenValueInjection!14968) Bool)

(assert (=> b!4164665 (= e!2585376 (and tp!1271638 (inv!60097 (tag!8404 (h!50999 rules!3820))) (inv!60099 (transformation!7540 (h!50999 rules!3820))) e!2585370))))

(assert (=> b!4164666 (= e!2585370 (and tp!1271637 tp!1271633))))

(declare-fun b!4164667 () Bool)

(declare-fun res!1706158 () Bool)

(declare-fun e!2585373 () Bool)

(assert (=> b!4164667 (=> (not res!1706158) (not e!2585373))))

(declare-fun pBis!100 () List!45701)

(declare-fun input!3316 () List!45701)

(declare-fun isPrefix!4397 (List!45701 List!45701) Bool)

(assert (=> b!4164667 (= res!1706158 (isPrefix!4397 pBis!100 input!3316))))

(declare-fun tp!1271631 () Bool)

(declare-fun e!2585366 () Bool)

(declare-fun e!2585368 () Bool)

(declare-fun r!4097 () Rule!14880)

(declare-fun b!4164668 () Bool)

(assert (=> b!4164668 (= e!2585366 (and tp!1271631 (inv!60097 (tag!8404 r!4097)) (inv!60099 (transformation!7540 r!4097)) e!2585368))))

(declare-fun b!4164669 () Bool)

(declare-fun res!1706159 () Bool)

(assert (=> b!4164669 (=> (not res!1706159) (not e!2585373))))

(declare-datatypes ((LexerInterface!7133 0))(
  ( (LexerInterfaceExt!7130 (__x!27762 Int)) (Lexer!7131) )
))
(declare-fun thiss!25889 () LexerInterface!7133)

(declare-fun rulesInvariant!6346 (LexerInterface!7133 List!45703) Bool)

(assert (=> b!4164669 (= res!1706159 (rulesInvariant!6346 thiss!25889 rules!3820))))

(declare-fun b!4164670 () Bool)

(declare-fun e!2585365 () Bool)

(declare-fun tp!1271626 () Bool)

(assert (=> b!4164670 (= e!2585365 (and tp_is_empty!21853 tp!1271626))))

(declare-fun b!4164671 () Bool)

(declare-fun res!1706155 () Bool)

(assert (=> b!4164671 (=> (not res!1706155) (not e!2585373))))

(declare-fun contains!9335 (List!45703 Rule!14880) Bool)

(assert (=> b!4164671 (= res!1706155 (contains!9335 rules!3820 r!4097))))

(declare-fun b!4164672 () Bool)

(declare-fun res!1706161 () Bool)

(declare-fun e!2585375 () Bool)

(assert (=> b!4164672 (=> res!1706161 e!2585375)))

(declare-datatypes ((Token!13826 0))(
  ( (Token!13827 (value!235438 TokenValue!7770) (rule!10594 Rule!14880) (size!33489 Int) (originalCharacters!7944 List!45701)) )
))
(declare-datatypes ((tuple2!43510 0))(
  ( (tuple2!43511 (_1!24889 Token!13826) (_2!24889 List!45701)) )
))
(declare-datatypes ((Option!9754 0))(
  ( (None!9753) (Some!9753 (v!40531 tuple2!43510)) )
))
(declare-fun lt!1483799 () Option!9754)

(declare-fun maxPrefix!4217 (LexerInterface!7133 List!45703 List!45701) Option!9754)

(assert (=> b!4164672 (= res!1706161 (not (= (maxPrefix!4217 thiss!25889 rules!3820 input!3316) lt!1483799)))))

(declare-fun res!1706164 () Bool)

(assert (=> start!396922 (=> (not res!1706164) (not e!2585373))))

(get-info :version)

(assert (=> start!396922 (= res!1706164 ((_ is Lexer!7131) thiss!25889))))

(assert (=> start!396922 e!2585373))

(assert (=> start!396922 e!2585365))

(declare-fun e!2585374 () Bool)

(assert (=> start!396922 e!2585374))

(assert (=> start!396922 e!2585363))

(declare-fun e!2585364 () Bool)

(assert (=> start!396922 e!2585364))

(assert (=> start!396922 true))

(declare-fun e!2585361 () Bool)

(assert (=> start!396922 e!2585361))

(assert (=> start!396922 e!2585366))

(declare-fun b!4164673 () Bool)

(declare-fun res!1706154 () Bool)

(assert (=> b!4164673 (=> (not res!1706154) (not e!2585373))))

(declare-fun p!2942 () List!45701)

(assert (=> b!4164673 (= res!1706154 (isPrefix!4397 p!2942 input!3316))))

(declare-fun b!4164674 () Bool)

(declare-fun e!2585362 () Bool)

(assert (=> b!4164674 (= e!2585362 e!2585375)))

(declare-fun res!1706163 () Bool)

(assert (=> b!4164674 (=> res!1706163 e!2585375)))

(declare-fun maxPrefixOneRule!3162 (LexerInterface!7133 Rule!14880 List!45701) Option!9754)

(assert (=> b!4164674 (= res!1706163 (not (= (maxPrefixOneRule!3162 thiss!25889 r!4097 input!3316) lt!1483799)))))

(declare-fun lt!1483800 () Int)

(declare-fun lt!1483797 () TokenValue!7770)

(declare-fun getSuffix!2710 (List!45701 List!45701) List!45701)

(assert (=> b!4164674 (= lt!1483799 (Some!9753 (tuple2!43511 (Token!13827 lt!1483797 r!4097 lt!1483800 p!2942) (getSuffix!2710 input!3316 p!2942))))))

(declare-fun size!33490 (List!45701) Int)

(assert (=> b!4164674 (= lt!1483800 (size!33490 p!2942))))

(declare-fun lt!1483804 () BalanceConc!27096)

(declare-fun apply!10521 (TokenValueInjection!14968 BalanceConc!27096) TokenValue!7770)

(assert (=> b!4164674 (= lt!1483797 (apply!10521 (transformation!7540 r!4097) lt!1483804))))

(assert (=> b!4164674 (isPrefix!4397 input!3316 input!3316)))

(declare-datatypes ((Unit!64669 0))(
  ( (Unit!64670) )
))
(declare-fun lt!1483803 () Unit!64669)

(declare-fun lemmaIsPrefixRefl!2836 (List!45701 List!45701) Unit!64669)

(assert (=> b!4164674 (= lt!1483803 (lemmaIsPrefixRefl!2836 input!3316 input!3316))))

(declare-fun lt!1483801 () Unit!64669)

(declare-fun lemmaSemiInverse!2314 (TokenValueInjection!14968 BalanceConc!27096) Unit!64669)

(assert (=> b!4164674 (= lt!1483801 (lemmaSemiInverse!2314 (transformation!7540 r!4097) lt!1483804))))

(declare-fun seqFromList!5573 (List!45701) BalanceConc!27096)

(assert (=> b!4164674 (= lt!1483804 (seqFromList!5573 p!2942))))

(declare-fun b!4164675 () Bool)

(declare-fun res!1706157 () Bool)

(assert (=> b!4164675 (=> (not res!1706157) (not e!2585373))))

(declare-fun rBis!161 () Rule!14880)

(assert (=> b!4164675 (= res!1706157 (contains!9335 rules!3820 rBis!161))))

(declare-fun e!2585372 () Bool)

(assert (=> b!4164676 (= e!2585372 (and tp!1271629 tp!1271627))))

(declare-fun b!4164677 () Bool)

(declare-fun res!1706160 () Bool)

(assert (=> b!4164677 (=> res!1706160 e!2585375)))

(assert (=> b!4164677 (= res!1706160 (<= (size!33490 pBis!100) lt!1483800))))

(declare-fun b!4164678 () Bool)

(assert (=> b!4164678 (= e!2585373 (not e!2585362))))

(declare-fun res!1706162 () Bool)

(assert (=> b!4164678 (=> res!1706162 e!2585362)))

(declare-fun matchR!6190 (Regex!12445 List!45701) Bool)

(assert (=> b!4164678 (= res!1706162 (not (matchR!6190 (regex!7540 r!4097) p!2942)))))

(declare-fun ruleValid!3264 (LexerInterface!7133 Rule!14880) Bool)

(assert (=> b!4164678 (ruleValid!3264 thiss!25889 r!4097)))

(declare-fun lt!1483802 () Unit!64669)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2304 (LexerInterface!7133 Rule!14880 List!45703) Unit!64669)

(assert (=> b!4164678 (= lt!1483802 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2304 thiss!25889 r!4097 rules!3820))))

(declare-fun b!4164679 () Bool)

(declare-fun tp!1271635 () Bool)

(assert (=> b!4164679 (= e!2585374 (and e!2585376 tp!1271635))))

(assert (=> b!4164680 (= e!2585368 (and tp!1271630 tp!1271636))))

(declare-fun b!4164681 () Bool)

(declare-fun tp!1271632 () Bool)

(assert (=> b!4164681 (= e!2585364 (and tp_is_empty!21853 tp!1271632))))

(declare-fun b!4164682 () Bool)

(declare-fun res!1706156 () Bool)

(assert (=> b!4164682 (=> (not res!1706156) (not e!2585373))))

(declare-fun isEmpty!26981 (List!45703) Bool)

(assert (=> b!4164682 (= res!1706156 (not (isEmpty!26981 rules!3820)))))

(declare-fun b!4164683 () Bool)

(declare-fun tp!1271628 () Bool)

(assert (=> b!4164683 (= e!2585361 (and tp!1271628 (inv!60097 (tag!8404 rBis!161)) (inv!60099 (transformation!7540 rBis!161)) e!2585372))))

(declare-fun b!4164684 () Bool)

(assert (=> b!4164684 (= e!2585375 true)))

(declare-fun lt!1483798 () Bool)

(declare-fun rulesValidInductive!2778 (LexerInterface!7133 List!45703) Bool)

(assert (=> b!4164684 (= lt!1483798 (rulesValidInductive!2778 thiss!25889 rules!3820))))

(assert (= (and start!396922 res!1706164) b!4164673))

(assert (= (and b!4164673 res!1706154) b!4164667))

(assert (= (and b!4164667 res!1706158) b!4164682))

(assert (= (and b!4164682 res!1706156) b!4164669))

(assert (= (and b!4164669 res!1706159) b!4164671))

(assert (= (and b!4164671 res!1706155) b!4164675))

(assert (= (and b!4164675 res!1706157) b!4164678))

(assert (= (and b!4164678 (not res!1706162)) b!4164674))

(assert (= (and b!4164674 (not res!1706163)) b!4164677))

(assert (= (and b!4164677 (not res!1706160)) b!4164672))

(assert (= (and b!4164672 (not res!1706161)) b!4164684))

(assert (= (and start!396922 ((_ is Cons!45577) pBis!100)) b!4164670))

(assert (= b!4164665 b!4164666))

(assert (= b!4164679 b!4164665))

(assert (= (and start!396922 ((_ is Cons!45579) rules!3820)) b!4164679))

(assert (= (and start!396922 ((_ is Cons!45577) p!2942)) b!4164664))

(assert (= (and start!396922 ((_ is Cons!45577) input!3316)) b!4164681))

(assert (= b!4164683 b!4164676))

(assert (= start!396922 b!4164683))

(assert (= b!4164668 b!4164680))

(assert (= start!396922 b!4164668))

(declare-fun m!4756811 () Bool)

(assert (=> b!4164667 m!4756811))

(declare-fun m!4756813 () Bool)

(assert (=> b!4164671 m!4756813))

(declare-fun m!4756815 () Bool)

(assert (=> b!4164669 m!4756815))

(declare-fun m!4756817 () Bool)

(assert (=> b!4164674 m!4756817))

(declare-fun m!4756819 () Bool)

(assert (=> b!4164674 m!4756819))

(declare-fun m!4756821 () Bool)

(assert (=> b!4164674 m!4756821))

(declare-fun m!4756823 () Bool)

(assert (=> b!4164674 m!4756823))

(declare-fun m!4756825 () Bool)

(assert (=> b!4164674 m!4756825))

(declare-fun m!4756827 () Bool)

(assert (=> b!4164674 m!4756827))

(declare-fun m!4756829 () Bool)

(assert (=> b!4164674 m!4756829))

(declare-fun m!4756831 () Bool)

(assert (=> b!4164674 m!4756831))

(declare-fun m!4756833 () Bool)

(assert (=> b!4164683 m!4756833))

(declare-fun m!4756835 () Bool)

(assert (=> b!4164683 m!4756835))

(declare-fun m!4756837 () Bool)

(assert (=> b!4164684 m!4756837))

(declare-fun m!4756839 () Bool)

(assert (=> b!4164678 m!4756839))

(declare-fun m!4756841 () Bool)

(assert (=> b!4164678 m!4756841))

(declare-fun m!4756843 () Bool)

(assert (=> b!4164678 m!4756843))

(declare-fun m!4756845 () Bool)

(assert (=> b!4164675 m!4756845))

(declare-fun m!4756847 () Bool)

(assert (=> b!4164682 m!4756847))

(declare-fun m!4756849 () Bool)

(assert (=> b!4164668 m!4756849))

(declare-fun m!4756851 () Bool)

(assert (=> b!4164668 m!4756851))

(declare-fun m!4756853 () Bool)

(assert (=> b!4164672 m!4756853))

(declare-fun m!4756855 () Bool)

(assert (=> b!4164673 m!4756855))

(declare-fun m!4756857 () Bool)

(assert (=> b!4164677 m!4756857))

(declare-fun m!4756859 () Bool)

(assert (=> b!4164665 m!4756859))

(declare-fun m!4756861 () Bool)

(assert (=> b!4164665 m!4756861))

(check-sat (not b!4164668) (not b!4164683) (not b!4164677) (not b!4164678) b_and!324751 (not b!4164671) (not b!4164670) b_and!324749 b_and!324755 (not b!4164665) (not b!4164674) (not b!4164679) (not b!4164684) (not b!4164672) b_and!324747 (not b_next!120875) b_and!324745 tp_is_empty!21853 (not b_next!120873) b_and!324753 (not b_next!120879) (not b_next!120877) (not b!4164682) (not b_next!120881) (not b!4164664) (not b!4164669) (not b!4164673) (not b!4164681) (not b_next!120871) (not b!4164675) (not b!4164667))
(check-sat b_and!324751 b_and!324749 b_and!324755 (not b_next!120881) (not b_next!120871) b_and!324747 (not b_next!120875) b_and!324745 (not b_next!120873) b_and!324753 (not b_next!120879) (not b_next!120877))
