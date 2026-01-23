; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!9298 () Bool)

(assert start!9298)

(declare-fun b!98881 () Bool)

(declare-fun b_free!2961 () Bool)

(declare-fun b_next!2961 () Bool)

(assert (=> b!98881 (= b_free!2961 (not b_next!2961))))

(declare-fun tp!56600 () Bool)

(declare-fun b_and!4443 () Bool)

(assert (=> b!98881 (= tp!56600 b_and!4443)))

(declare-fun b_free!2963 () Bool)

(declare-fun b_next!2963 () Bool)

(assert (=> b!98881 (= b_free!2963 (not b_next!2963))))

(declare-fun tp!56602 () Bool)

(declare-fun b_and!4445 () Bool)

(assert (=> b!98881 (= tp!56602 b_and!4445)))

(declare-fun b!98874 () Bool)

(declare-fun e!54808 () Bool)

(declare-fun e!54805 () Bool)

(declare-fun tp!56598 () Bool)

(assert (=> b!98874 (= e!54808 (and e!54805 tp!56598))))

(declare-fun b!98875 () Bool)

(declare-fun res!48081 () Bool)

(declare-fun e!54801 () Bool)

(assert (=> b!98875 (=> (not res!48081) (not e!54801))))

(declare-datatypes ((LexerInterface!241 0))(
  ( (LexerInterfaceExt!238 (__x!1773 Int)) (Lexer!239) )
))
(declare-fun thiss!19403 () LexerInterface!241)

(declare-datatypes ((C!1756 0))(
  ( (C!1757 (val!485 Int)) )
))
(declare-datatypes ((List!1606 0))(
  ( (Nil!1600) (Cons!1600 (h!6997 C!1756) (t!21167 List!1606)) )
))
(declare-datatypes ((IArray!997 0))(
  ( (IArray!998 (innerList!556 List!1606)) )
))
(declare-datatypes ((Conc!498 0))(
  ( (Node!498 (left!1221 Conc!498) (right!1551 Conc!498) (csize!1226 Int) (cheight!709 Int)) (Leaf!808 (xs!3085 IArray!997) (csize!1227 Int)) (Empty!498) )
))
(declare-datatypes ((BalanceConc!1000 0))(
  ( (BalanceConc!1001 (c!24154 Conc!498)) )
))
(declare-datatypes ((Regex!417 0))(
  ( (ElementMatch!417 (c!24155 C!1756)) (Concat!756 (regOne!1346 Regex!417) (regTwo!1346 Regex!417)) (EmptyExpr!417) (Star!417 (reg!746 Regex!417)) (EmptyLang!417) (Union!417 (regOne!1347 Regex!417) (regTwo!1347 Regex!417)) )
))
(declare-datatypes ((String!2086 0))(
  ( (String!2087 (value!12814 String)) )
))
(declare-datatypes ((List!1607 0))(
  ( (Nil!1601) (Cons!1601 (h!6998 (_ BitVec 16)) (t!21168 List!1607)) )
))
(declare-datatypes ((TokenValue!339 0))(
  ( (FloatLiteralValue!678 (text!2818 List!1607)) (TokenValueExt!338 (__x!1774 Int)) (Broken!1695 (value!12815 List!1607)) (Object!344) (End!339) (Def!339) (Underscore!339) (Match!339) (Else!339) (Error!339) (Case!339) (If!339) (Extends!339) (Abstract!339) (Class!339) (Val!339) (DelimiterValue!678 (del!399 List!1607)) (KeywordValue!345 (value!12816 List!1607)) (CommentValue!678 (value!12817 List!1607)) (WhitespaceValue!678 (value!12818 List!1607)) (IndentationValue!339 (value!12819 List!1607)) (String!2088) (Int32!339) (Broken!1696 (value!12820 List!1607)) (Boolean!340) (Unit!1057) (OperatorValue!342 (op!399 List!1607)) (IdentifierValue!678 (value!12821 List!1607)) (IdentifierValue!679 (value!12822 List!1607)) (WhitespaceValue!679 (value!12823 List!1607)) (True!678) (False!678) (Broken!1697 (value!12824 List!1607)) (Broken!1698 (value!12825 List!1607)) (True!679) (RightBrace!339) (RightBracket!339) (Colon!339) (Null!339) (Comma!339) (LeftBracket!339) (False!679) (LeftBrace!339) (ImaginaryLiteralValue!339 (text!2819 List!1607)) (StringLiteralValue!1017 (value!12826 List!1607)) (EOFValue!339 (value!12827 List!1607)) (IdentValue!339 (value!12828 List!1607)) (DelimiterValue!679 (value!12829 List!1607)) (DedentValue!339 (value!12830 List!1607)) (NewLineValue!339 (value!12831 List!1607)) (IntegerValue!1017 (value!12832 (_ BitVec 32)) (text!2820 List!1607)) (IntegerValue!1018 (value!12833 Int) (text!2821 List!1607)) (Times!339) (Or!339) (Equal!339) (Minus!339) (Broken!1699 (value!12834 List!1607)) (And!339) (Div!339) (LessEqual!339) (Mod!339) (Concat!757) (Not!339) (Plus!339) (SpaceValue!339 (value!12835 List!1607)) (IntegerValue!1019 (value!12836 Int) (text!2822 List!1607)) (StringLiteralValue!1018 (text!2823 List!1607)) (FloatLiteralValue!679 (text!2824 List!1607)) (BytesLiteralValue!339 (value!12837 List!1607)) (CommentValue!679 (value!12838 List!1607)) (StringLiteralValue!1019 (value!12839 List!1607)) (ErrorTokenValue!339 (msg!400 List!1607)) )
))
(declare-datatypes ((TokenValueInjection!502 0))(
  ( (TokenValueInjection!503 (toValue!908 Int) (toChars!767 Int)) )
))
(declare-datatypes ((Rule!498 0))(
  ( (Rule!499 (regex!349 Regex!417) (tag!527 String!2086) (isSeparator!349 Bool) (transformation!349 TokenValueInjection!502)) )
))
(declare-datatypes ((List!1608 0))(
  ( (Nil!1602) (Cons!1602 (h!6999 Rule!498) (t!21169 List!1608)) )
))
(declare-fun rules!2471 () List!1608)

(declare-fun rulesInvariant!235 (LexerInterface!241 List!1608) Bool)

(assert (=> b!98875 (= res!48081 (rulesInvariant!235 thiss!19403 rules!2471))))

(declare-fun b!98876 () Bool)

(declare-fun e!54802 () Bool)

(assert (=> b!98876 (= e!54802 (not true))))

(declare-fun lt!26699 () List!1606)

(declare-datatypes ((Token!454 0))(
  ( (Token!455 (value!12840 TokenValue!339) (rule!852 Rule!498) (size!1414 Int) (originalCharacters!398 List!1606)) )
))
(declare-datatypes ((List!1609 0))(
  ( (Nil!1603) (Cons!1603 (h!7000 Token!454) (t!21170 List!1609)) )
))
(declare-datatypes ((IArray!999 0))(
  ( (IArray!1000 (innerList!557 List!1609)) )
))
(declare-datatypes ((Conc!499 0))(
  ( (Node!499 (left!1222 Conc!499) (right!1552 Conc!499) (csize!1228 Int) (cheight!710 Int)) (Leaf!809 (xs!3086 IArray!999) (csize!1229 Int)) (Empty!499) )
))
(declare-datatypes ((BalanceConc!1002 0))(
  ( (BalanceConc!1003 (c!24156 Conc!499)) )
))
(declare-datatypes ((tuple2!1736 0))(
  ( (tuple2!1737 (_1!1075 BalanceConc!1002) (_2!1075 BalanceConc!1000)) )
))
(declare-fun lt!26705 () tuple2!1736)

(declare-fun list!638 (BalanceConc!1000) List!1606)

(assert (=> b!98876 (= lt!26699 (list!638 (_2!1075 lt!26705)))))

(declare-fun lt!26704 () tuple2!1736)

(declare-datatypes ((tuple2!1738 0))(
  ( (tuple2!1739 (_1!1076 Token!454) (_2!1076 List!1606)) )
))
(declare-fun lt!26706 () tuple2!1738)

(declare-fun ++!238 (List!1606 List!1606) List!1606)

(declare-fun print!72 (LexerInterface!241 BalanceConc!1002) BalanceConc!1000)

(assert (=> b!98876 (= (++!238 (list!638 (print!72 thiss!19403 (_1!1075 lt!26704))) (list!638 (_2!1075 lt!26704))) (_2!1076 lt!26706))))

(declare-fun lex!147 (LexerInterface!241 List!1608 BalanceConc!1000) tuple2!1736)

(declare-fun seqFromList!192 (List!1606) BalanceConc!1000)

(assert (=> b!98876 (= lt!26704 (lex!147 thiss!19403 rules!2471 (seqFromList!192 (_2!1076 lt!26706))))))

(declare-datatypes ((Unit!1058 0))(
  ( (Unit!1059) )
))
(declare-fun lt!26700 () Unit!1058)

(declare-fun theoremInvertFromString!46 (LexerInterface!241 List!1608 List!1606) Unit!1058)

(assert (=> b!98876 (= lt!26700 (theoremInvertFromString!46 thiss!19403 rules!2471 (_2!1076 lt!26706)))))

(declare-fun input!2238 () List!1606)

(declare-datatypes ((Option!174 0))(
  ( (None!173) (Some!173 (v!12952 tuple2!1738)) )
))
(declare-fun get!406 (Option!174) tuple2!1738)

(declare-fun maxPrefix!81 (LexerInterface!241 List!1608 List!1606) Option!174)

(assert (=> b!98876 (= lt!26706 (get!406 (maxPrefix!81 thiss!19403 rules!2471 input!2238)))))

(declare-fun lt!26702 () List!1609)

(declare-fun list!639 (BalanceConc!1002) List!1609)

(declare-fun prepend!119 (BalanceConc!1002 Token!454) BalanceConc!1002)

(declare-fun seqFromList!193 (List!1609) BalanceConc!1002)

(assert (=> b!98876 (= lt!26702 (list!639 (prepend!119 (seqFromList!193 (t!21170 lt!26702)) (h!7000 lt!26702))))))

(declare-fun lt!26701 () Unit!1058)

(declare-fun seqFromListBHdTlConstructive!54 (Token!454 List!1609 BalanceConc!1002) Unit!1058)

(assert (=> b!98876 (= lt!26701 (seqFromListBHdTlConstructive!54 (h!7000 lt!26702) (t!21170 lt!26702) (_1!1075 lt!26705)))))

(declare-fun b!98877 () Bool)

(declare-fun e!54806 () Bool)

(assert (=> b!98877 (= e!54806 e!54802)))

(declare-fun res!48079 () Bool)

(assert (=> b!98877 (=> (not res!48079) (not e!54802))))

(declare-fun lt!26703 () Bool)

(get-info :version)

(assert (=> b!98877 (= res!48079 (and (or lt!26703 (not ((_ is Nil!1603) (t!21170 lt!26702)))) (not lt!26703)))))

(assert (=> b!98877 (= lt!26703 (not ((_ is Cons!1603) lt!26702)))))

(assert (=> b!98877 (= lt!26702 (list!639 (_1!1075 lt!26705)))))

(declare-fun b!98879 () Bool)

(declare-fun e!54803 () Bool)

(declare-fun tp_is_empty!757 () Bool)

(declare-fun tp!56601 () Bool)

(assert (=> b!98879 (= e!54803 (and tp_is_empty!757 tp!56601))))

(declare-fun b!98880 () Bool)

(assert (=> b!98880 (= e!54801 e!54806)))

(declare-fun res!48083 () Bool)

(assert (=> b!98880 (=> (not res!48083) (not e!54806))))

(declare-fun isEmpty!693 (BalanceConc!1000) Bool)

(assert (=> b!98880 (= res!48083 (not (isEmpty!693 (_2!1075 lt!26705))))))

(assert (=> b!98880 (= lt!26705 (lex!147 thiss!19403 rules!2471 (seqFromList!192 input!2238)))))

(declare-fun res!48082 () Bool)

(assert (=> start!9298 (=> (not res!48082) (not e!54801))))

(assert (=> start!9298 (= res!48082 ((_ is Lexer!239) thiss!19403))))

(assert (=> start!9298 e!54801))

(assert (=> start!9298 true))

(assert (=> start!9298 e!54808))

(assert (=> start!9298 e!54803))

(declare-fun e!54807 () Bool)

(declare-fun tp!56599 () Bool)

(declare-fun b!98878 () Bool)

(declare-fun inv!1938 (String!2086) Bool)

(declare-fun inv!1940 (TokenValueInjection!502) Bool)

(assert (=> b!98878 (= e!54805 (and tp!56599 (inv!1938 (tag!527 (h!6999 rules!2471))) (inv!1940 (transformation!349 (h!6999 rules!2471))) e!54807))))

(assert (=> b!98881 (= e!54807 (and tp!56600 tp!56602))))

(declare-fun b!98882 () Bool)

(declare-fun res!48080 () Bool)

(assert (=> b!98882 (=> (not res!48080) (not e!54801))))

(declare-fun isEmpty!694 (List!1608) Bool)

(assert (=> b!98882 (= res!48080 (not (isEmpty!694 rules!2471)))))

(assert (= (and start!9298 res!48082) b!98882))

(assert (= (and b!98882 res!48080) b!98875))

(assert (= (and b!98875 res!48081) b!98880))

(assert (= (and b!98880 res!48083) b!98877))

(assert (= (and b!98877 res!48079) b!98876))

(assert (= b!98878 b!98881))

(assert (= b!98874 b!98878))

(assert (= (and start!9298 ((_ is Cons!1602) rules!2471)) b!98874))

(assert (= (and start!9298 ((_ is Cons!1600) input!2238)) b!98879))

(declare-fun m!83418 () Bool)

(assert (=> b!98877 m!83418))

(declare-fun m!83420 () Bool)

(assert (=> b!98875 m!83420))

(declare-fun m!83422 () Bool)

(assert (=> b!98882 m!83422))

(declare-fun m!83424 () Bool)

(assert (=> b!98876 m!83424))

(declare-fun m!83426 () Bool)

(assert (=> b!98876 m!83426))

(declare-fun m!83428 () Bool)

(assert (=> b!98876 m!83428))

(declare-fun m!83430 () Bool)

(assert (=> b!98876 m!83430))

(assert (=> b!98876 m!83424))

(declare-fun m!83432 () Bool)

(assert (=> b!98876 m!83432))

(declare-fun m!83434 () Bool)

(assert (=> b!98876 m!83434))

(declare-fun m!83436 () Bool)

(assert (=> b!98876 m!83436))

(declare-fun m!83438 () Bool)

(assert (=> b!98876 m!83438))

(declare-fun m!83440 () Bool)

(assert (=> b!98876 m!83440))

(declare-fun m!83442 () Bool)

(assert (=> b!98876 m!83442))

(assert (=> b!98876 m!83436))

(assert (=> b!98876 m!83426))

(assert (=> b!98876 m!83440))

(declare-fun m!83444 () Bool)

(assert (=> b!98876 m!83444))

(declare-fun m!83446 () Bool)

(assert (=> b!98876 m!83446))

(assert (=> b!98876 m!83428))

(assert (=> b!98876 m!83442))

(declare-fun m!83448 () Bool)

(assert (=> b!98876 m!83448))

(assert (=> b!98876 m!83438))

(declare-fun m!83450 () Bool)

(assert (=> b!98876 m!83450))

(declare-fun m!83452 () Bool)

(assert (=> b!98878 m!83452))

(declare-fun m!83454 () Bool)

(assert (=> b!98878 m!83454))

(declare-fun m!83456 () Bool)

(assert (=> b!98880 m!83456))

(declare-fun m!83458 () Bool)

(assert (=> b!98880 m!83458))

(assert (=> b!98880 m!83458))

(declare-fun m!83460 () Bool)

(assert (=> b!98880 m!83460))

(check-sat (not b!98875) (not b_next!2961) (not b_next!2963) (not b!98876) (not b!98877) (not b!98874) b_and!4445 (not b!98882) tp_is_empty!757 (not b!98879) (not b!98880) (not b!98878) b_and!4443)
(check-sat b_and!4445 b_and!4443 (not b_next!2963) (not b_next!2961))
