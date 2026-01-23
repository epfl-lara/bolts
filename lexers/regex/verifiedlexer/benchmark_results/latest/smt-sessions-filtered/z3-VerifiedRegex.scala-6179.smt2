; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!299054 () Bool)

(assert start!299054)

(declare-fun b!3188109 () Bool)

(declare-fun b_free!84177 () Bool)

(declare-fun b_next!84881 () Bool)

(assert (=> b!3188109 (= b_free!84177 (not b_next!84881))))

(declare-fun tp!1007874 () Bool)

(declare-fun b_and!211127 () Bool)

(assert (=> b!3188109 (= tp!1007874 b_and!211127)))

(declare-fun b_free!84179 () Bool)

(declare-fun b_next!84883 () Bool)

(assert (=> b!3188109 (= b_free!84179 (not b_next!84883))))

(declare-fun tp!1007873 () Bool)

(declare-fun b_and!211129 () Bool)

(assert (=> b!3188109 (= tp!1007873 b_and!211129)))

(declare-fun b!3188112 () Bool)

(declare-fun b_free!84181 () Bool)

(declare-fun b_next!84885 () Bool)

(assert (=> b!3188112 (= b_free!84181 (not b_next!84885))))

(declare-fun tp!1007881 () Bool)

(declare-fun b_and!211131 () Bool)

(assert (=> b!3188112 (= tp!1007881 b_and!211131)))

(declare-fun b_free!84183 () Bool)

(declare-fun b_next!84887 () Bool)

(assert (=> b!3188112 (= b_free!84183 (not b_next!84887))))

(declare-fun tp!1007879 () Bool)

(declare-fun b_and!211133 () Bool)

(assert (=> b!3188112 (= tp!1007879 b_and!211133)))

(declare-fun b!3188091 () Bool)

(declare-fun b_free!84185 () Bool)

(declare-fun b_next!84889 () Bool)

(assert (=> b!3188091 (= b_free!84185 (not b_next!84889))))

(declare-fun tp!1007876 () Bool)

(declare-fun b_and!211135 () Bool)

(assert (=> b!3188091 (= tp!1007876 b_and!211135)))

(declare-fun b_free!84187 () Bool)

(declare-fun b_next!84891 () Bool)

(assert (=> b!3188091 (= b_free!84187 (not b_next!84891))))

(declare-fun tp!1007877 () Bool)

(declare-fun b_and!211137 () Bool)

(assert (=> b!3188091 (= tp!1007877 b_and!211137)))

(declare-fun b!3188088 () Bool)

(declare-fun e!1986582 () Bool)

(declare-fun e!1986585 () Bool)

(declare-fun tp!1007882 () Bool)

(assert (=> b!3188088 (= e!1986582 (and e!1986585 tp!1007882))))

(declare-fun b!3188089 () Bool)

(declare-fun e!1986595 () Bool)

(declare-datatypes ((C!19980 0))(
  ( (C!19981 (val!12038 Int)) )
))
(declare-datatypes ((Regex!9897 0))(
  ( (ElementMatch!9897 (c!535496 C!19980)) (Concat!15265 (regOne!20306 Regex!9897) (regTwo!20306 Regex!9897)) (EmptyExpr!9897) (Star!9897 (reg!10226 Regex!9897)) (EmptyLang!9897) (Union!9897 (regOne!20307 Regex!9897) (regTwo!20307 Regex!9897)) )
))
(declare-datatypes ((List!35942 0))(
  ( (Nil!35818) (Cons!35818 (h!41238 (_ BitVec 16)) (t!235987 List!35942)) )
))
(declare-datatypes ((TokenValue!5368 0))(
  ( (FloatLiteralValue!10736 (text!38021 List!35942)) (TokenValueExt!5367 (__x!22953 Int)) (Broken!26840 (value!166867 List!35942)) (Object!5491) (End!5368) (Def!5368) (Underscore!5368) (Match!5368) (Else!5368) (Error!5368) (Case!5368) (If!5368) (Extends!5368) (Abstract!5368) (Class!5368) (Val!5368) (DelimiterValue!10736 (del!5428 List!35942)) (KeywordValue!5374 (value!166868 List!35942)) (CommentValue!10736 (value!166869 List!35942)) (WhitespaceValue!10736 (value!166870 List!35942)) (IndentationValue!5368 (value!166871 List!35942)) (String!40173) (Int32!5368) (Broken!26841 (value!166872 List!35942)) (Boolean!5369) (Unit!50239) (OperatorValue!5371 (op!5428 List!35942)) (IdentifierValue!10736 (value!166873 List!35942)) (IdentifierValue!10737 (value!166874 List!35942)) (WhitespaceValue!10737 (value!166875 List!35942)) (True!10736) (False!10736) (Broken!26842 (value!166876 List!35942)) (Broken!26843 (value!166877 List!35942)) (True!10737) (RightBrace!5368) (RightBracket!5368) (Colon!5368) (Null!5368) (Comma!5368) (LeftBracket!5368) (False!10737) (LeftBrace!5368) (ImaginaryLiteralValue!5368 (text!38022 List!35942)) (StringLiteralValue!16104 (value!166878 List!35942)) (EOFValue!5368 (value!166879 List!35942)) (IdentValue!5368 (value!166880 List!35942)) (DelimiterValue!10737 (value!166881 List!35942)) (DedentValue!5368 (value!166882 List!35942)) (NewLineValue!5368 (value!166883 List!35942)) (IntegerValue!16104 (value!166884 (_ BitVec 32)) (text!38023 List!35942)) (IntegerValue!16105 (value!166885 Int) (text!38024 List!35942)) (Times!5368) (Or!5368) (Equal!5368) (Minus!5368) (Broken!26844 (value!166886 List!35942)) (And!5368) (Div!5368) (LessEqual!5368) (Mod!5368) (Concat!15266) (Not!5368) (Plus!5368) (SpaceValue!5368 (value!166887 List!35942)) (IntegerValue!16106 (value!166888 Int) (text!38025 List!35942)) (StringLiteralValue!16105 (text!38026 List!35942)) (FloatLiteralValue!10737 (text!38027 List!35942)) (BytesLiteralValue!5368 (value!166889 List!35942)) (CommentValue!10737 (value!166890 List!35942)) (StringLiteralValue!16106 (value!166891 List!35942)) (ErrorTokenValue!5368 (msg!5429 List!35942)) )
))
(declare-datatypes ((List!35943 0))(
  ( (Nil!35819) (Cons!35819 (h!41239 C!19980) (t!235988 List!35943)) )
))
(declare-datatypes ((IArray!21307 0))(
  ( (IArray!21308 (innerList!10711 List!35943)) )
))
(declare-datatypes ((Conc!10651 0))(
  ( (Node!10651 (left!27858 Conc!10651) (right!28188 Conc!10651) (csize!21532 Int) (cheight!10862 Int)) (Leaf!16831 (xs!13769 IArray!21307) (csize!21533 Int)) (Empty!10651) )
))
(declare-datatypes ((BalanceConc!20916 0))(
  ( (BalanceConc!20917 (c!535497 Conc!10651)) )
))
(declare-datatypes ((String!40174 0))(
  ( (String!40175 (value!166892 String)) )
))
(declare-datatypes ((TokenValueInjection!10164 0))(
  ( (TokenValueInjection!10165 (toValue!7202 Int) (toChars!7061 Int)) )
))
(declare-datatypes ((Rule!10076 0))(
  ( (Rule!10077 (regex!5138 Regex!9897) (tag!5654 String!40174) (isSeparator!5138 Bool) (transformation!5138 TokenValueInjection!10164)) )
))
(declare-datatypes ((Token!9642 0))(
  ( (Token!9643 (value!166893 TokenValue!5368) (rule!7566 Rule!10076) (size!27028 Int) (originalCharacters!5852 List!35943)) )
))
(declare-datatypes ((List!35944 0))(
  ( (Nil!35820) (Cons!35820 (h!41240 Token!9642) (t!235989 List!35944)) )
))
(declare-fun tokens!494 () List!35944)

(declare-fun lt!1072799 () Rule!10076)

(assert (=> b!3188089 (= e!1986595 (= (rule!7566 (h!41240 tokens!494)) lt!1072799))))

(declare-fun b!3188090 () Bool)

(declare-fun res!1296225 () Bool)

(declare-fun e!1986592 () Bool)

(assert (=> b!3188090 (=> (not res!1296225) (not e!1986592))))

(declare-fun separatorToken!241 () Token!9642)

(assert (=> b!3188090 (= res!1296225 (isSeparator!5138 (rule!7566 separatorToken!241)))))

(declare-fun e!1986591 () Bool)

(assert (=> b!3188091 (= e!1986591 (and tp!1007876 tp!1007877))))

(declare-fun b!3188092 () Bool)

(declare-fun e!1986576 () Bool)

(declare-fun lt!1072789 () Rule!10076)

(assert (=> b!3188092 (= e!1986576 (= (rule!7566 separatorToken!241) lt!1072789))))

(declare-fun res!1296240 () Bool)

(declare-fun e!1986598 () Bool)

(assert (=> start!299054 (=> (not res!1296240) (not e!1986598))))

(declare-datatypes ((LexerInterface!4727 0))(
  ( (LexerInterfaceExt!4724 (__x!22954 Int)) (Lexer!4725) )
))
(declare-fun thiss!18206 () LexerInterface!4727)

(get-info :version)

(assert (=> start!299054 (= res!1296240 ((_ is Lexer!4725) thiss!18206))))

(assert (=> start!299054 e!1986598))

(assert (=> start!299054 true))

(assert (=> start!299054 e!1986582))

(declare-fun e!1986594 () Bool)

(declare-fun inv!48676 (Token!9642) Bool)

(assert (=> start!299054 (and (inv!48676 separatorToken!241) e!1986594)))

(declare-fun e!1986597 () Bool)

(assert (=> start!299054 e!1986597))

(declare-fun e!1986596 () Bool)

(declare-fun b!3188093 () Bool)

(declare-fun tp!1007872 () Bool)

(declare-fun inv!48673 (String!40174) Bool)

(declare-fun inv!48677 (TokenValueInjection!10164) Bool)

(assert (=> b!3188093 (= e!1986596 (and tp!1007872 (inv!48673 (tag!5654 (rule!7566 (h!41240 tokens!494)))) (inv!48677 (transformation!5138 (rule!7566 (h!41240 tokens!494)))) e!1986591))))

(declare-fun b!3188094 () Bool)

(declare-fun e!1986581 () Bool)

(assert (=> b!3188094 (= e!1986581 true)))

(declare-fun lt!1072795 () List!35943)

(declare-datatypes ((tuple2!35186 0))(
  ( (tuple2!35187 (_1!20727 Token!9642) (_2!20727 List!35943)) )
))
(declare-datatypes ((Option!7009 0))(
  ( (None!7008) (Some!7008 (v!35500 tuple2!35186)) )
))
(declare-fun lt!1072805 () Option!7009)

(declare-datatypes ((List!35945 0))(
  ( (Nil!35821) (Cons!35821 (h!41241 Rule!10076) (t!235990 List!35945)) )
))
(declare-fun rules!2135 () List!35945)

(declare-fun maxPrefix!2405 (LexerInterface!4727 List!35945 List!35943) Option!7009)

(assert (=> b!3188094 (= lt!1072805 (maxPrefix!2405 thiss!18206 rules!2135 lt!1072795))))

(declare-fun lt!1072801 () List!35943)

(declare-fun lt!1072782 () List!35943)

(assert (=> b!3188094 (= (maxPrefix!2405 thiss!18206 rules!2135 lt!1072801) (Some!7008 (tuple2!35187 (h!41240 tokens!494) lt!1072782)))))

(declare-datatypes ((Unit!50240 0))(
  ( (Unit!50241) )
))
(declare-fun lt!1072798 () Unit!50240)

(declare-fun lemmaMaxPrefWithOtherTypeUsedCharAtStartOfSuffixReturnSame!116 (LexerInterface!4727 List!35945 Token!9642 Rule!10076 List!35943 Rule!10076) Unit!50240)

(assert (=> b!3188094 (= lt!1072798 (lemmaMaxPrefWithOtherTypeUsedCharAtStartOfSuffixReturnSame!116 thiss!18206 rules!2135 (h!41240 tokens!494) (rule!7566 (h!41240 tokens!494)) lt!1072782 (rule!7566 separatorToken!241)))))

(declare-fun lt!1072808 () C!19980)

(declare-fun contains!6359 (List!35943 C!19980) Bool)

(declare-fun usedCharacters!482 (Regex!9897) List!35943)

(assert (=> b!3188094 (not (contains!6359 (usedCharacters!482 (regex!5138 (rule!7566 (h!41240 tokens!494)))) lt!1072808))))

(declare-fun lt!1072794 () Unit!50240)

(declare-fun lemmaNonSepRuleNotContainsCharContainedInASepRule!114 (LexerInterface!4727 List!35945 List!35945 Rule!10076 Rule!10076 C!19980) Unit!50240)

(assert (=> b!3188094 (= lt!1072794 (lemmaNonSepRuleNotContainsCharContainedInASepRule!114 thiss!18206 rules!2135 rules!2135 (rule!7566 (h!41240 tokens!494)) (rule!7566 separatorToken!241) lt!1072808))))

(declare-fun b!3188095 () Bool)

(declare-fun e!1986586 () Bool)

(assert (=> b!3188095 (= e!1986592 (not e!1986586))))

(declare-fun res!1296238 () Bool)

(assert (=> b!3188095 (=> res!1296238 e!1986586)))

(declare-fun lt!1072806 () List!35943)

(declare-fun lt!1072797 () List!35943)

(assert (=> b!3188095 (= res!1296238 (not (= lt!1072806 lt!1072797)))))

(declare-fun printList!1281 (LexerInterface!4727 List!35944) List!35943)

(assert (=> b!3188095 (= lt!1072797 (printList!1281 thiss!18206 (Cons!35820 (h!41240 tokens!494) Nil!35820)))))

(declare-fun lt!1072784 () BalanceConc!20916)

(declare-fun list!12723 (BalanceConc!20916) List!35943)

(assert (=> b!3188095 (= lt!1072806 (list!12723 lt!1072784))))

(declare-datatypes ((IArray!21309 0))(
  ( (IArray!21310 (innerList!10712 List!35944)) )
))
(declare-datatypes ((Conc!10652 0))(
  ( (Node!10652 (left!27859 Conc!10652) (right!28189 Conc!10652) (csize!21534 Int) (cheight!10863 Int)) (Leaf!16832 (xs!13770 IArray!21309) (csize!21535 Int)) (Empty!10652) )
))
(declare-datatypes ((BalanceConc!20918 0))(
  ( (BalanceConc!20919 (c!535498 Conc!10652)) )
))
(declare-fun lt!1072793 () BalanceConc!20918)

(declare-fun printTailRec!1226 (LexerInterface!4727 BalanceConc!20918 Int BalanceConc!20916) BalanceConc!20916)

(assert (=> b!3188095 (= lt!1072784 (printTailRec!1226 thiss!18206 lt!1072793 0 (BalanceConc!20917 Empty!10651)))))

(declare-fun print!1794 (LexerInterface!4727 BalanceConc!20918) BalanceConc!20916)

(assert (=> b!3188095 (= lt!1072784 (print!1794 thiss!18206 lt!1072793))))

(declare-fun singletonSeq!2234 (Token!9642) BalanceConc!20918)

(assert (=> b!3188095 (= lt!1072793 (singletonSeq!2234 (h!41240 tokens!494)))))

(declare-fun b!3188096 () Bool)

(assert (=> b!3188096 (= e!1986598 e!1986592)))

(declare-fun res!1296227 () Bool)

(assert (=> b!3188096 (=> (not res!1296227) (not e!1986592))))

(declare-fun lt!1072783 () BalanceConc!20918)

(declare-fun rulesProduceEachTokenIndividually!1178 (LexerInterface!4727 List!35945 BalanceConc!20918) Bool)

(assert (=> b!3188096 (= res!1296227 (rulesProduceEachTokenIndividually!1178 thiss!18206 rules!2135 lt!1072783))))

(declare-fun seqFromList!3355 (List!35944) BalanceConc!20918)

(assert (=> b!3188096 (= lt!1072783 (seqFromList!3355 tokens!494))))

(declare-fun b!3188097 () Bool)

(declare-fun res!1296239 () Bool)

(assert (=> b!3188097 (=> (not res!1296239) (not e!1986592))))

(declare-fun rulesProduceIndividualToken!2219 (LexerInterface!4727 List!35945 Token!9642) Bool)

(assert (=> b!3188097 (= res!1296239 (rulesProduceIndividualToken!2219 thiss!18206 rules!2135 separatorToken!241))))

(declare-fun b!3188098 () Bool)

(declare-fun e!1986584 () Bool)

(declare-fun e!1986575 () Bool)

(assert (=> b!3188098 (= e!1986584 e!1986575)))

(declare-fun res!1296236 () Bool)

(assert (=> b!3188098 (=> res!1296236 e!1986575)))

(assert (=> b!3188098 (= res!1296236 (isSeparator!5138 (rule!7566 (h!41240 tokens!494))))))

(declare-fun lt!1072790 () Unit!50240)

(declare-fun lambda!116593 () Int)

(declare-fun forallContained!1121 (List!35944 Int Token!9642) Unit!50240)

(assert (=> b!3188098 (= lt!1072790 (forallContained!1121 tokens!494 lambda!116593 (h!41240 tokens!494)))))

(declare-fun tp!1007870 () Bool)

(declare-fun b!3188099 () Bool)

(declare-fun e!1986570 () Bool)

(declare-fun inv!21 (TokenValue!5368) Bool)

(assert (=> b!3188099 (= e!1986594 (and (inv!21 (value!166893 separatorToken!241)) e!1986570 tp!1007870))))

(declare-fun e!1986574 () Bool)

(declare-fun tp!1007880 () Bool)

(declare-fun b!3188100 () Bool)

(assert (=> b!3188100 (= e!1986597 (and (inv!48676 (h!41240 tokens!494)) e!1986574 tp!1007880))))

(declare-fun b!3188101 () Bool)

(declare-fun e!1986593 () Bool)

(assert (=> b!3188101 (= e!1986593 e!1986576)))

(declare-fun res!1296244 () Bool)

(assert (=> b!3188101 (=> (not res!1296244) (not e!1986576))))

(declare-fun matchR!4555 (Regex!9897 List!35943) Bool)

(assert (=> b!3188101 (= res!1296244 (matchR!4555 (regex!5138 lt!1072789) lt!1072782))))

(declare-datatypes ((Option!7010 0))(
  ( (None!7009) (Some!7009 (v!35501 Rule!10076)) )
))
(declare-fun lt!1072807 () Option!7010)

(declare-fun get!11402 (Option!7010) Rule!10076)

(assert (=> b!3188101 (= lt!1072789 (get!11402 lt!1072807))))

(declare-fun b!3188102 () Bool)

(declare-fun res!1296242 () Bool)

(assert (=> b!3188102 (=> (not res!1296242) (not e!1986592))))

(assert (=> b!3188102 (= res!1296242 (and (not ((_ is Nil!35820) tokens!494)) ((_ is Nil!35820) (t!235989 tokens!494))))))

(declare-fun b!3188103 () Bool)

(declare-fun e!1986583 () Bool)

(assert (=> b!3188103 (= e!1986583 e!1986595)))

(declare-fun res!1296226 () Bool)

(assert (=> b!3188103 (=> (not res!1296226) (not e!1986595))))

(declare-fun lt!1072786 () List!35943)

(assert (=> b!3188103 (= res!1296226 (matchR!4555 (regex!5138 lt!1072799) lt!1072786))))

(declare-fun lt!1072800 () Option!7010)

(assert (=> b!3188103 (= lt!1072799 (get!11402 lt!1072800))))

(declare-fun tp!1007871 () Bool)

(declare-fun b!3188104 () Bool)

(assert (=> b!3188104 (= e!1986574 (and (inv!21 (value!166893 (h!41240 tokens!494))) e!1986596 tp!1007871))))

(declare-fun tp!1007875 () Bool)

(declare-fun b!3188105 () Bool)

(declare-fun e!1986579 () Bool)

(assert (=> b!3188105 (= e!1986585 (and tp!1007875 (inv!48673 (tag!5654 (h!41241 rules!2135))) (inv!48677 (transformation!5138 (h!41241 rules!2135))) e!1986579))))

(declare-fun b!3188106 () Bool)

(declare-fun res!1296233 () Bool)

(assert (=> b!3188106 (=> (not res!1296233) (not e!1986598))))

(declare-fun rulesInvariant!4124 (LexerInterface!4727 List!35945) Bool)

(assert (=> b!3188106 (= res!1296233 (rulesInvariant!4124 thiss!18206 rules!2135))))

(declare-fun b!3188107 () Bool)

(declare-fun res!1296237 () Bool)

(assert (=> b!3188107 (=> (not res!1296237) (not e!1986598))))

(declare-fun isEmpty!19955 (List!35945) Bool)

(assert (=> b!3188107 (= res!1296237 (not (isEmpty!19955 rules!2135)))))

(declare-fun b!3188108 () Bool)

(declare-fun e!1986572 () Bool)

(assert (=> b!3188108 (= e!1986572 e!1986584)))

(declare-fun res!1296245 () Bool)

(assert (=> b!3188108 (=> res!1296245 e!1986584)))

(declare-fun lt!1072802 () BalanceConc!20916)

(declare-fun isEmpty!19956 (BalanceConc!20918) Bool)

(declare-datatypes ((tuple2!35188 0))(
  ( (tuple2!35189 (_1!20728 BalanceConc!20918) (_2!20728 BalanceConc!20916)) )
))
(declare-fun lex!2067 (LexerInterface!4727 List!35945 BalanceConc!20916) tuple2!35188)

(assert (=> b!3188108 (= res!1296245 (isEmpty!19956 (_1!20728 (lex!2067 thiss!18206 rules!2135 lt!1072802))))))

(declare-fun seqFromList!3356 (List!35943) BalanceConc!20916)

(assert (=> b!3188108 (= lt!1072802 (seqFromList!3356 lt!1072786))))

(declare-fun e!1986577 () Bool)

(assert (=> b!3188109 (= e!1986577 (and tp!1007874 tp!1007873))))

(declare-fun b!3188110 () Bool)

(declare-fun res!1296241 () Bool)

(assert (=> b!3188110 (=> (not res!1296241) (not e!1986592))))

(declare-fun sepAndNonSepRulesDisjointChars!1332 (List!35945 List!35945) Bool)

(assert (=> b!3188110 (= res!1296241 (sepAndNonSepRulesDisjointChars!1332 rules!2135 rules!2135))))

(declare-fun b!3188111 () Bool)

(declare-fun e!1986573 () Bool)

(assert (=> b!3188111 (= e!1986575 e!1986573)))

(declare-fun res!1296231 () Bool)

(assert (=> b!3188111 (=> res!1296231 e!1986573)))

(assert (=> b!3188111 (= res!1296231 (not (= lt!1072795 lt!1072801)))))

(declare-fun ++!8574 (List!35943 List!35943) List!35943)

(assert (=> b!3188111 (= lt!1072801 (++!8574 lt!1072786 lt!1072782))))

(declare-fun lt!1072791 () BalanceConc!20916)

(assert (=> b!3188111 (= lt!1072795 (list!12723 lt!1072791))))

(declare-fun charsOf!3160 (Token!9642) BalanceConc!20916)

(assert (=> b!3188111 (= lt!1072782 (list!12723 (charsOf!3160 separatorToken!241)))))

(declare-fun printWithSeparatorToken!36 (LexerInterface!4727 BalanceConc!20918 Token!9642) BalanceConc!20916)

(assert (=> b!3188111 (= lt!1072791 (printWithSeparatorToken!36 thiss!18206 lt!1072783 separatorToken!241))))

(assert (=> b!3188112 (= e!1986579 (and tp!1007881 tp!1007879))))

(declare-fun b!3188113 () Bool)

(declare-fun e!1986587 () Unit!50240)

(declare-fun Unit!50242 () Unit!50240)

(assert (=> b!3188113 (= e!1986587 Unit!50242)))

(declare-fun b!3188114 () Bool)

(assert (=> b!3188114 (= e!1986586 e!1986572)))

(declare-fun res!1296234 () Bool)

(assert (=> b!3188114 (=> res!1296234 e!1986572)))

(assert (=> b!3188114 (= res!1296234 (or (not (= lt!1072797 lt!1072786)) (not (= lt!1072806 lt!1072786))))))

(assert (=> b!3188114 (= lt!1072786 (list!12723 (charsOf!3160 (h!41240 tokens!494))))))

(declare-fun b!3188115 () Bool)

(declare-fun res!1296235 () Bool)

(assert (=> b!3188115 (=> (not res!1296235) (not e!1986592))))

(declare-fun forall!7266 (List!35944 Int) Bool)

(assert (=> b!3188115 (= res!1296235 (forall!7266 tokens!494 lambda!116593))))

(declare-fun b!3188116 () Bool)

(declare-fun Unit!50243 () Unit!50240)

(assert (=> b!3188116 (= e!1986587 Unit!50243)))

(declare-fun lt!1072781 () Unit!50240)

(declare-fun lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!336 (Regex!9897 List!35943 C!19980) Unit!50240)

(assert (=> b!3188116 (= lt!1072781 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!336 (regex!5138 (rule!7566 separatorToken!241)) lt!1072782 lt!1072808))))

(declare-fun res!1296228 () Bool)

(assert (=> b!3188116 (= res!1296228 (not (matchR!4555 (regex!5138 (rule!7566 separatorToken!241)) lt!1072782)))))

(declare-fun e!1986578 () Bool)

(assert (=> b!3188116 (=> (not res!1296228) (not e!1986578))))

(assert (=> b!3188116 e!1986578))

(declare-fun b!3188117 () Bool)

(declare-fun tp!1007878 () Bool)

(assert (=> b!3188117 (= e!1986570 (and tp!1007878 (inv!48673 (tag!5654 (rule!7566 separatorToken!241))) (inv!48677 (transformation!5138 (rule!7566 separatorToken!241))) e!1986577))))

(declare-fun b!3188118 () Bool)

(declare-fun res!1296232 () Bool)

(assert (=> b!3188118 (=> res!1296232 e!1986572)))

(assert (=> b!3188118 (= res!1296232 (not (rulesProduceIndividualToken!2219 thiss!18206 rules!2135 (h!41240 tokens!494))))))

(declare-fun b!3188119 () Bool)

(assert (=> b!3188119 (= e!1986573 e!1986581)))

(declare-fun res!1296243 () Bool)

(assert (=> b!3188119 (=> res!1296243 e!1986581)))

(declare-fun lt!1072788 () Bool)

(assert (=> b!3188119 (= res!1296243 lt!1072788)))

(declare-fun lt!1072792 () Unit!50240)

(assert (=> b!3188119 (= lt!1072792 e!1986587)))

(declare-fun c!535495 () Bool)

(assert (=> b!3188119 (= c!535495 lt!1072788)))

(assert (=> b!3188119 (= lt!1072788 (not (contains!6359 (usedCharacters!482 (regex!5138 (rule!7566 separatorToken!241))) lt!1072808)))))

(declare-fun head!6971 (List!35943) C!19980)

(assert (=> b!3188119 (= lt!1072808 (head!6971 lt!1072782))))

(declare-fun maxPrefixOneRule!1532 (LexerInterface!4727 Rule!10076 List!35943) Option!7009)

(declare-fun apply!8072 (TokenValueInjection!10164 BalanceConc!20916) TokenValue!5368)

(declare-fun size!27029 (List!35943) Int)

(assert (=> b!3188119 (= (maxPrefixOneRule!1532 thiss!18206 (rule!7566 (h!41240 tokens!494)) lt!1072786) (Some!7008 (tuple2!35187 (Token!9643 (apply!8072 (transformation!5138 (rule!7566 (h!41240 tokens!494))) lt!1072802) (rule!7566 (h!41240 tokens!494)) (size!27029 lt!1072786) lt!1072786) Nil!35819)))))

(declare-fun lt!1072785 () Unit!50240)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!645 (LexerInterface!4727 List!35945 List!35943 List!35943 List!35943 Rule!10076) Unit!50240)

(assert (=> b!3188119 (= lt!1072785 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!645 thiss!18206 rules!2135 lt!1072786 lt!1072786 Nil!35819 (rule!7566 (h!41240 tokens!494))))))

(assert (=> b!3188119 e!1986593))

(declare-fun res!1296229 () Bool)

(assert (=> b!3188119 (=> (not res!1296229) (not e!1986593))))

(declare-fun isDefined!5488 (Option!7010) Bool)

(assert (=> b!3188119 (= res!1296229 (isDefined!5488 lt!1072807))))

(declare-fun getRuleFromTag!867 (LexerInterface!4727 List!35945 String!40174) Option!7010)

(assert (=> b!3188119 (= lt!1072807 (getRuleFromTag!867 thiss!18206 rules!2135 (tag!5654 (rule!7566 separatorToken!241))))))

(declare-fun lt!1072804 () Unit!50240)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!867 (LexerInterface!4727 List!35945 List!35943 Token!9642) Unit!50240)

(assert (=> b!3188119 (= lt!1072804 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!867 thiss!18206 rules!2135 lt!1072782 separatorToken!241))))

(assert (=> b!3188119 e!1986583))

(declare-fun res!1296230 () Bool)

(assert (=> b!3188119 (=> (not res!1296230) (not e!1986583))))

(assert (=> b!3188119 (= res!1296230 (isDefined!5488 lt!1072800))))

(assert (=> b!3188119 (= lt!1072800 (getRuleFromTag!867 thiss!18206 rules!2135 (tag!5654 (rule!7566 (h!41240 tokens!494)))))))

(declare-fun lt!1072796 () Unit!50240)

(assert (=> b!3188119 (= lt!1072796 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!867 thiss!18206 rules!2135 lt!1072786 (h!41240 tokens!494)))))

(declare-fun lt!1072787 () Unit!50240)

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!788 (LexerInterface!4727 List!35945 List!35944 Token!9642) Unit!50240)

(assert (=> b!3188119 (= lt!1072787 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!788 thiss!18206 rules!2135 tokens!494 (h!41240 tokens!494)))))

(declare-fun isEmpty!19957 (List!35943) Bool)

(declare-fun getSuffix!1354 (List!35943 List!35943) List!35943)

(assert (=> b!3188119 (isEmpty!19957 (getSuffix!1354 lt!1072786 lt!1072786))))

(declare-fun lt!1072803 () Unit!50240)

(declare-fun lemmaGetSuffixOnListWithItSelfIsEmpty!32 (List!35943) Unit!50240)

(assert (=> b!3188119 (= lt!1072803 (lemmaGetSuffixOnListWithItSelfIsEmpty!32 lt!1072786))))

(declare-fun b!3188120 () Bool)

(assert (=> b!3188120 (= e!1986578 false)))

(assert (= (and start!299054 res!1296240) b!3188107))

(assert (= (and b!3188107 res!1296237) b!3188106))

(assert (= (and b!3188106 res!1296233) b!3188096))

(assert (= (and b!3188096 res!1296227) b!3188097))

(assert (= (and b!3188097 res!1296239) b!3188090))

(assert (= (and b!3188090 res!1296225) b!3188115))

(assert (= (and b!3188115 res!1296235) b!3188110))

(assert (= (and b!3188110 res!1296241) b!3188102))

(assert (= (and b!3188102 res!1296242) b!3188095))

(assert (= (and b!3188095 (not res!1296238)) b!3188114))

(assert (= (and b!3188114 (not res!1296234)) b!3188118))

(assert (= (and b!3188118 (not res!1296232)) b!3188108))

(assert (= (and b!3188108 (not res!1296245)) b!3188098))

(assert (= (and b!3188098 (not res!1296236)) b!3188111))

(assert (= (and b!3188111 (not res!1296231)) b!3188119))

(assert (= (and b!3188119 res!1296230) b!3188103))

(assert (= (and b!3188103 res!1296226) b!3188089))

(assert (= (and b!3188119 res!1296229) b!3188101))

(assert (= (and b!3188101 res!1296244) b!3188092))

(assert (= (and b!3188119 c!535495) b!3188116))

(assert (= (and b!3188119 (not c!535495)) b!3188113))

(assert (= (and b!3188116 res!1296228) b!3188120))

(assert (= (and b!3188119 (not res!1296243)) b!3188094))

(assert (= b!3188105 b!3188112))

(assert (= b!3188088 b!3188105))

(assert (= (and start!299054 ((_ is Cons!35821) rules!2135)) b!3188088))

(assert (= b!3188117 b!3188109))

(assert (= b!3188099 b!3188117))

(assert (= start!299054 b!3188099))

(assert (= b!3188093 b!3188091))

(assert (= b!3188104 b!3188093))

(assert (= b!3188100 b!3188104))

(assert (= (and start!299054 ((_ is Cons!35820) tokens!494)) b!3188100))

(declare-fun m!3446593 () Bool)

(assert (=> b!3188094 m!3446593))

(declare-fun m!3446595 () Bool)

(assert (=> b!3188094 m!3446595))

(declare-fun m!3446597 () Bool)

(assert (=> b!3188094 m!3446597))

(declare-fun m!3446599 () Bool)

(assert (=> b!3188094 m!3446599))

(declare-fun m!3446601 () Bool)

(assert (=> b!3188094 m!3446601))

(assert (=> b!3188094 m!3446593))

(declare-fun m!3446603 () Bool)

(assert (=> b!3188094 m!3446603))

(declare-fun m!3446605 () Bool)

(assert (=> b!3188100 m!3446605))

(declare-fun m!3446607 () Bool)

(assert (=> b!3188095 m!3446607))

(declare-fun m!3446609 () Bool)

(assert (=> b!3188095 m!3446609))

(declare-fun m!3446611 () Bool)

(assert (=> b!3188095 m!3446611))

(declare-fun m!3446613 () Bool)

(assert (=> b!3188095 m!3446613))

(declare-fun m!3446615 () Bool)

(assert (=> b!3188095 m!3446615))

(declare-fun m!3446617 () Bool)

(assert (=> b!3188101 m!3446617))

(declare-fun m!3446619 () Bool)

(assert (=> b!3188101 m!3446619))

(declare-fun m!3446621 () Bool)

(assert (=> b!3188111 m!3446621))

(declare-fun m!3446623 () Bool)

(assert (=> b!3188111 m!3446623))

(declare-fun m!3446625 () Bool)

(assert (=> b!3188111 m!3446625))

(assert (=> b!3188111 m!3446621))

(declare-fun m!3446627 () Bool)

(assert (=> b!3188111 m!3446627))

(declare-fun m!3446629 () Bool)

(assert (=> b!3188111 m!3446629))

(declare-fun m!3446631 () Bool)

(assert (=> b!3188096 m!3446631))

(declare-fun m!3446633 () Bool)

(assert (=> b!3188096 m!3446633))

(declare-fun m!3446635 () Bool)

(assert (=> b!3188108 m!3446635))

(declare-fun m!3446637 () Bool)

(assert (=> b!3188108 m!3446637))

(declare-fun m!3446639 () Bool)

(assert (=> b!3188108 m!3446639))

(declare-fun m!3446641 () Bool)

(assert (=> start!299054 m!3446641))

(declare-fun m!3446643 () Bool)

(assert (=> b!3188097 m!3446643))

(declare-fun m!3446645 () Bool)

(assert (=> b!3188119 m!3446645))

(declare-fun m!3446647 () Bool)

(assert (=> b!3188119 m!3446647))

(declare-fun m!3446649 () Bool)

(assert (=> b!3188119 m!3446649))

(declare-fun m!3446651 () Bool)

(assert (=> b!3188119 m!3446651))

(declare-fun m!3446653 () Bool)

(assert (=> b!3188119 m!3446653))

(assert (=> b!3188119 m!3446645))

(declare-fun m!3446655 () Bool)

(assert (=> b!3188119 m!3446655))

(declare-fun m!3446657 () Bool)

(assert (=> b!3188119 m!3446657))

(declare-fun m!3446659 () Bool)

(assert (=> b!3188119 m!3446659))

(assert (=> b!3188119 m!3446647))

(declare-fun m!3446661 () Bool)

(assert (=> b!3188119 m!3446661))

(declare-fun m!3446663 () Bool)

(assert (=> b!3188119 m!3446663))

(declare-fun m!3446665 () Bool)

(assert (=> b!3188119 m!3446665))

(declare-fun m!3446667 () Bool)

(assert (=> b!3188119 m!3446667))

(declare-fun m!3446669 () Bool)

(assert (=> b!3188119 m!3446669))

(declare-fun m!3446671 () Bool)

(assert (=> b!3188119 m!3446671))

(declare-fun m!3446673 () Bool)

(assert (=> b!3188119 m!3446673))

(declare-fun m!3446675 () Bool)

(assert (=> b!3188119 m!3446675))

(declare-fun m!3446677 () Bool)

(assert (=> b!3188119 m!3446677))

(declare-fun m!3446679 () Bool)

(assert (=> b!3188107 m!3446679))

(declare-fun m!3446681 () Bool)

(assert (=> b!3188105 m!3446681))

(declare-fun m!3446683 () Bool)

(assert (=> b!3188105 m!3446683))

(declare-fun m!3446685 () Bool)

(assert (=> b!3188118 m!3446685))

(declare-fun m!3446687 () Bool)

(assert (=> b!3188099 m!3446687))

(declare-fun m!3446689 () Bool)

(assert (=> b!3188114 m!3446689))

(assert (=> b!3188114 m!3446689))

(declare-fun m!3446691 () Bool)

(assert (=> b!3188114 m!3446691))

(declare-fun m!3446693 () Bool)

(assert (=> b!3188117 m!3446693))

(declare-fun m!3446695 () Bool)

(assert (=> b!3188117 m!3446695))

(declare-fun m!3446697 () Bool)

(assert (=> b!3188103 m!3446697))

(declare-fun m!3446699 () Bool)

(assert (=> b!3188103 m!3446699))

(declare-fun m!3446701 () Bool)

(assert (=> b!3188098 m!3446701))

(declare-fun m!3446703 () Bool)

(assert (=> b!3188106 m!3446703))

(declare-fun m!3446705 () Bool)

(assert (=> b!3188110 m!3446705))

(declare-fun m!3446707 () Bool)

(assert (=> b!3188115 m!3446707))

(declare-fun m!3446709 () Bool)

(assert (=> b!3188116 m!3446709))

(declare-fun m!3446711 () Bool)

(assert (=> b!3188116 m!3446711))

(declare-fun m!3446713 () Bool)

(assert (=> b!3188104 m!3446713))

(declare-fun m!3446715 () Bool)

(assert (=> b!3188093 m!3446715))

(declare-fun m!3446717 () Bool)

(assert (=> b!3188093 m!3446717))

(check-sat (not start!299054) (not b!3188108) (not b!3188119) (not b!3188088) (not b!3188114) (not b!3188100) (not b_next!84883) (not b!3188095) (not b_next!84881) (not b_next!84891) (not b!3188097) (not b!3188103) (not b!3188110) (not b!3188118) b_and!211133 (not b_next!84887) b_and!211137 (not b!3188107) (not b!3188098) (not b!3188116) (not b!3188117) (not b!3188104) (not b!3188106) (not b_next!84889) (not b!3188099) (not b!3188105) (not b!3188094) (not b!3188101) (not b!3188111) b_and!211127 b_and!211129 (not b_next!84885) (not b!3188115) b_and!211131 (not b!3188093) (not b!3188096) b_and!211135)
(check-sat (not b_next!84889) (not b_next!84883) b_and!211127 (not b_next!84881) (not b_next!84891) b_and!211131 b_and!211135 b_and!211133 (not b_next!84887) b_and!211137 b_and!211129 (not b_next!84885))
