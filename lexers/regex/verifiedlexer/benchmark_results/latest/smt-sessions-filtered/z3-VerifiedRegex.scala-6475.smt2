; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!339762 () Bool)

(assert start!339762)

(declare-fun b!3639339 () Bool)

(declare-fun b_free!95393 () Bool)

(declare-fun b_next!96097 () Bool)

(assert (=> b!3639339 (= b_free!95393 (not b_next!96097))))

(declare-fun tp!1110449 () Bool)

(declare-fun b_and!268075 () Bool)

(assert (=> b!3639339 (= tp!1110449 b_and!268075)))

(declare-fun b_free!95395 () Bool)

(declare-fun b_next!96099 () Bool)

(assert (=> b!3639339 (= b_free!95395 (not b_next!96099))))

(declare-fun tp!1110454 () Bool)

(declare-fun b_and!268077 () Bool)

(assert (=> b!3639339 (= tp!1110454 b_and!268077)))

(declare-fun b!3639348 () Bool)

(declare-fun b_free!95397 () Bool)

(declare-fun b_next!96101 () Bool)

(assert (=> b!3639348 (= b_free!95397 (not b_next!96101))))

(declare-fun tp!1110462 () Bool)

(declare-fun b_and!268079 () Bool)

(assert (=> b!3639348 (= tp!1110462 b_and!268079)))

(declare-fun b_free!95399 () Bool)

(declare-fun b_next!96103 () Bool)

(assert (=> b!3639348 (= b_free!95399 (not b_next!96103))))

(declare-fun tp!1110448 () Bool)

(declare-fun b_and!268081 () Bool)

(assert (=> b!3639348 (= tp!1110448 b_and!268081)))

(declare-fun b!3639328 () Bool)

(declare-fun b_free!95401 () Bool)

(declare-fun b_next!96105 () Bool)

(assert (=> b!3639328 (= b_free!95401 (not b_next!96105))))

(declare-fun tp!1110456 () Bool)

(declare-fun b_and!268083 () Bool)

(assert (=> b!3639328 (= tp!1110456 b_and!268083)))

(declare-fun b_free!95403 () Bool)

(declare-fun b_next!96107 () Bool)

(assert (=> b!3639328 (= b_free!95403 (not b_next!96107))))

(declare-fun tp!1110460 () Bool)

(declare-fun b_and!268085 () Bool)

(assert (=> b!3639328 (= tp!1110460 b_and!268085)))

(declare-fun b!3639343 () Bool)

(declare-fun b_free!95405 () Bool)

(declare-fun b_next!96109 () Bool)

(assert (=> b!3639343 (= b_free!95405 (not b_next!96109))))

(declare-fun tp!1110457 () Bool)

(declare-fun b_and!268087 () Bool)

(assert (=> b!3639343 (= tp!1110457 b_and!268087)))

(declare-fun b_free!95407 () Bool)

(declare-fun b_next!96111 () Bool)

(assert (=> b!3639343 (= b_free!95407 (not b_next!96111))))

(declare-fun tp!1110450 () Bool)

(declare-fun b_and!268089 () Bool)

(assert (=> b!3639343 (= tp!1110450 b_and!268089)))

(declare-fun b!3639316 () Bool)

(declare-fun e!2252870 () Bool)

(declare-fun e!2252891 () Bool)

(assert (=> b!3639316 (= e!2252870 e!2252891)))

(declare-fun res!1474897 () Bool)

(assert (=> b!3639316 (=> (not res!1474897) (not e!2252891))))

(declare-datatypes ((List!38481 0))(
  ( (Nil!38357) (Cons!38357 (h!43777 (_ BitVec 16)) (t!296264 List!38481)) )
))
(declare-datatypes ((TokenValue!5960 0))(
  ( (FloatLiteralValue!11920 (text!42165 List!38481)) (TokenValueExt!5959 (__x!24137 Int)) (Broken!29800 (value!183739 List!38481)) (Object!6083) (End!5960) (Def!5960) (Underscore!5960) (Match!5960) (Else!5960) (Error!5960) (Case!5960) (If!5960) (Extends!5960) (Abstract!5960) (Class!5960) (Val!5960) (DelimiterValue!11920 (del!6020 List!38481)) (KeywordValue!5966 (value!183740 List!38481)) (CommentValue!11920 (value!183741 List!38481)) (WhitespaceValue!11920 (value!183742 List!38481)) (IndentationValue!5960 (value!183743 List!38481)) (String!43133) (Int32!5960) (Broken!29801 (value!183744 List!38481)) (Boolean!5961) (Unit!55195) (OperatorValue!5963 (op!6020 List!38481)) (IdentifierValue!11920 (value!183745 List!38481)) (IdentifierValue!11921 (value!183746 List!38481)) (WhitespaceValue!11921 (value!183747 List!38481)) (True!11920) (False!11920) (Broken!29802 (value!183748 List!38481)) (Broken!29803 (value!183749 List!38481)) (True!11921) (RightBrace!5960) (RightBracket!5960) (Colon!5960) (Null!5960) (Comma!5960) (LeftBracket!5960) (False!11921) (LeftBrace!5960) (ImaginaryLiteralValue!5960 (text!42166 List!38481)) (StringLiteralValue!17880 (value!183750 List!38481)) (EOFValue!5960 (value!183751 List!38481)) (IdentValue!5960 (value!183752 List!38481)) (DelimiterValue!11921 (value!183753 List!38481)) (DedentValue!5960 (value!183754 List!38481)) (NewLineValue!5960 (value!183755 List!38481)) (IntegerValue!17880 (value!183756 (_ BitVec 32)) (text!42167 List!38481)) (IntegerValue!17881 (value!183757 Int) (text!42168 List!38481)) (Times!5960) (Or!5960) (Equal!5960) (Minus!5960) (Broken!29804 (value!183758 List!38481)) (And!5960) (Div!5960) (LessEqual!5960) (Mod!5960) (Concat!16449) (Not!5960) (Plus!5960) (SpaceValue!5960 (value!183759 List!38481)) (IntegerValue!17882 (value!183760 Int) (text!42169 List!38481)) (StringLiteralValue!17881 (text!42170 List!38481)) (FloatLiteralValue!11921 (text!42171 List!38481)) (BytesLiteralValue!5960 (value!183761 List!38481)) (CommentValue!11921 (value!183762 List!38481)) (StringLiteralValue!17882 (value!183763 List!38481)) (ErrorTokenValue!5960 (msg!6021 List!38481)) )
))
(declare-datatypes ((C!21164 0))(
  ( (C!21165 (val!12630 Int)) )
))
(declare-datatypes ((Regex!10489 0))(
  ( (ElementMatch!10489 (c!629282 C!21164)) (Concat!16450 (regOne!21490 Regex!10489) (regTwo!21490 Regex!10489)) (EmptyExpr!10489) (Star!10489 (reg!10818 Regex!10489)) (EmptyLang!10489) (Union!10489 (regOne!21491 Regex!10489) (regTwo!21491 Regex!10489)) )
))
(declare-datatypes ((String!43134 0))(
  ( (String!43135 (value!183764 String)) )
))
(declare-datatypes ((List!38482 0))(
  ( (Nil!38358) (Cons!38358 (h!43778 C!21164) (t!296265 List!38482)) )
))
(declare-datatypes ((IArray!23427 0))(
  ( (IArray!23428 (innerList!11771 List!38482)) )
))
(declare-datatypes ((Conc!11711 0))(
  ( (Node!11711 (left!29946 Conc!11711) (right!30276 Conc!11711) (csize!23652 Int) (cheight!11922 Int)) (Leaf!18187 (xs!14913 IArray!23427) (csize!23653 Int)) (Empty!11711) )
))
(declare-datatypes ((BalanceConc!23036 0))(
  ( (BalanceConc!23037 (c!629283 Conc!11711)) )
))
(declare-datatypes ((TokenValueInjection!11348 0))(
  ( (TokenValueInjection!11349 (toValue!8022 Int) (toChars!7881 Int)) )
))
(declare-datatypes ((Rule!11260 0))(
  ( (Rule!11261 (regex!5730 Regex!10489) (tag!6476 String!43134) (isSeparator!5730 Bool) (transformation!5730 TokenValueInjection!11348)) )
))
(declare-datatypes ((Token!10826 0))(
  ( (Token!10827 (value!183765 TokenValue!5960) (rule!8510 Rule!11260) (size!29275 Int) (originalCharacters!6444 List!38482)) )
))
(declare-datatypes ((tuple2!38224 0))(
  ( (tuple2!38225 (_1!22246 Token!10826) (_2!22246 List!38482)) )
))
(declare-datatypes ((Option!8088 0))(
  ( (None!8087) (Some!8087 (v!37911 tuple2!38224)) )
))
(declare-fun lt!1259870 () Option!8088)

(declare-fun isDefined!6320 (Option!8088) Bool)

(assert (=> b!3639316 (= res!1474897 (isDefined!6320 lt!1259870))))

(declare-datatypes ((List!38483 0))(
  ( (Nil!38359) (Cons!38359 (h!43779 Rule!11260) (t!296266 List!38483)) )
))
(declare-fun rules!3307 () List!38483)

(declare-fun lt!1259879 () List!38482)

(declare-datatypes ((LexerInterface!5319 0))(
  ( (LexerInterfaceExt!5316 (__x!24138 Int)) (Lexer!5317) )
))
(declare-fun thiss!23823 () LexerInterface!5319)

(declare-fun maxPrefix!2853 (LexerInterface!5319 List!38483 List!38482) Option!8088)

(assert (=> b!3639316 (= lt!1259870 (maxPrefix!2853 thiss!23823 rules!3307 lt!1259879))))

(declare-fun token!511 () Token!10826)

(declare-fun list!14196 (BalanceConc!23036) List!38482)

(declare-fun charsOf!3744 (Token!10826) BalanceConc!23036)

(assert (=> b!3639316 (= lt!1259879 (list!14196 (charsOf!3744 token!511)))))

(declare-fun b!3639317 () Bool)

(declare-datatypes ((Unit!55196 0))(
  ( (Unit!55197) )
))
(declare-fun e!2252889 () Unit!55196)

(declare-fun Unit!55198 () Unit!55196)

(assert (=> b!3639317 (= e!2252889 Unit!55198)))

(declare-fun b!3639318 () Bool)

(declare-fun res!1474909 () Bool)

(assert (=> b!3639318 (=> (not res!1474909) (not e!2252870))))

(declare-fun anOtherTypeRule!33 () Rule!11260)

(declare-fun rule!403 () Rule!11260)

(assert (=> b!3639318 (= res!1474909 (not (= (isSeparator!5730 anOtherTypeRule!33) (isSeparator!5730 rule!403))))))

(declare-fun b!3639320 () Bool)

(declare-fun e!2252890 () Bool)

(declare-fun e!2252895 () Bool)

(assert (=> b!3639320 (= e!2252890 e!2252895)))

(declare-fun res!1474898 () Bool)

(assert (=> b!3639320 (=> res!1474898 e!2252895)))

(declare-fun lt!1259883 () List!38482)

(declare-fun lt!1259878 () C!21164)

(declare-fun contains!7525 (List!38482 C!21164) Bool)

(assert (=> b!3639320 (= res!1474898 (contains!7525 lt!1259883 lt!1259878))))

(declare-fun suffix!1395 () List!38482)

(declare-fun head!7726 (List!38482) C!21164)

(assert (=> b!3639320 (= lt!1259878 (head!7726 suffix!1395))))

(declare-fun usedCharacters!942 (Regex!10489) List!38482)

(assert (=> b!3639320 (= lt!1259883 (usedCharacters!942 (regex!5730 rule!403)))))

(declare-fun e!2252888 () Bool)

(declare-fun b!3639321 () Bool)

(declare-fun tp!1110455 () Bool)

(declare-fun e!2252872 () Bool)

(declare-fun inv!51788 (String!43134) Bool)

(declare-fun inv!51791 (TokenValueInjection!11348) Bool)

(assert (=> b!3639321 (= e!2252888 (and tp!1110455 (inv!51788 (tag!6476 (h!43779 rules!3307))) (inv!51791 (transformation!5730 (h!43779 rules!3307))) e!2252872))))

(declare-fun b!3639322 () Bool)

(declare-fun res!1474913 () Bool)

(declare-fun e!2252869 () Bool)

(assert (=> b!3639322 (=> (not res!1474913) (not e!2252869))))

(assert (=> b!3639322 (= res!1474913 (= (rule!8510 token!511) rule!403))))

(declare-fun b!3639323 () Bool)

(assert (=> b!3639323 (= e!2252891 e!2252869)))

(declare-fun res!1474912 () Bool)

(assert (=> b!3639323 (=> (not res!1474912) (not e!2252869))))

(declare-fun lt!1259859 () tuple2!38224)

(assert (=> b!3639323 (= res!1474912 (= (_1!22246 lt!1259859) token!511))))

(declare-fun get!12563 (Option!8088) tuple2!38224)

(assert (=> b!3639323 (= lt!1259859 (get!12563 lt!1259870))))

(declare-fun b!3639324 () Bool)

(declare-fun res!1474907 () Bool)

(assert (=> b!3639324 (=> (not res!1474907) (not e!2252870))))

(declare-fun rulesInvariant!4716 (LexerInterface!5319 List!38483) Bool)

(assert (=> b!3639324 (= res!1474907 (rulesInvariant!4716 thiss!23823 rules!3307))))

(declare-fun b!3639325 () Bool)

(declare-fun e!2252884 () Bool)

(declare-fun tp!1110453 () Bool)

(assert (=> b!3639325 (= e!2252884 (and e!2252888 tp!1110453))))

(declare-fun b!3639326 () Bool)

(declare-fun e!2252886 () Bool)

(declare-fun tp_is_empty!18061 () Bool)

(declare-fun tp!1110459 () Bool)

(assert (=> b!3639326 (= e!2252886 (and tp_is_empty!18061 tp!1110459))))

(declare-fun b!3639327 () Bool)

(declare-fun res!1474902 () Bool)

(assert (=> b!3639327 (=> res!1474902 e!2252895)))

(declare-fun sepAndNonSepRulesDisjointChars!1898 (List!38483 List!38483) Bool)

(assert (=> b!3639327 (= res!1474902 (not (sepAndNonSepRulesDisjointChars!1898 rules!3307 rules!3307)))))

(declare-fun e!2252880 () Bool)

(assert (=> b!3639328 (= e!2252880 (and tp!1110456 tp!1110460))))

(declare-fun b!3639329 () Bool)

(assert (=> b!3639329 (= e!2252869 (not e!2252890))))

(declare-fun res!1474901 () Bool)

(assert (=> b!3639329 (=> res!1474901 e!2252890)))

(declare-fun matchR!5058 (Regex!10489 List!38482) Bool)

(assert (=> b!3639329 (= res!1474901 (not (matchR!5058 (regex!5730 rule!403) lt!1259879)))))

(declare-fun ruleValid!1994 (LexerInterface!5319 Rule!11260) Bool)

(assert (=> b!3639329 (ruleValid!1994 thiss!23823 rule!403)))

(declare-fun lt!1259882 () Unit!55196)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1148 (LexerInterface!5319 Rule!11260 List!38483) Unit!55196)

(assert (=> b!3639329 (= lt!1259882 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1148 thiss!23823 rule!403 rules!3307))))

(declare-fun b!3639330 () Bool)

(declare-fun e!2252881 () Bool)

(declare-fun e!2252896 () Bool)

(assert (=> b!3639330 (= e!2252881 e!2252896)))

(declare-fun res!1474914 () Bool)

(assert (=> b!3639330 (=> (not res!1474914) (not e!2252896))))

(declare-fun lt!1259880 () Rule!11260)

(declare-fun lt!1259876 () tuple2!38224)

(assert (=> b!3639330 (= res!1474914 (matchR!5058 (regex!5730 lt!1259880) (list!14196 (charsOf!3744 (_1!22246 lt!1259876)))))))

(declare-datatypes ((Option!8089 0))(
  ( (None!8088) (Some!8088 (v!37912 Rule!11260)) )
))
(declare-fun lt!1259871 () Option!8089)

(declare-fun get!12564 (Option!8089) Rule!11260)

(assert (=> b!3639330 (= lt!1259880 (get!12564 lt!1259871))))

(declare-fun b!3639331 () Bool)

(declare-fun res!1474903 () Bool)

(assert (=> b!3639331 (=> res!1474903 e!2252890)))

(declare-fun isEmpty!22708 (List!38482) Bool)

(assert (=> b!3639331 (= res!1474903 (isEmpty!22708 suffix!1395))))

(declare-fun e!2252894 () Bool)

(declare-fun b!3639332 () Bool)

(declare-fun tp!1110461 () Bool)

(declare-fun e!2252875 () Bool)

(assert (=> b!3639332 (= e!2252894 (and tp!1110461 (inv!51788 (tag!6476 (rule!8510 token!511))) (inv!51791 (transformation!5730 (rule!8510 token!511))) e!2252875))))

(declare-fun b!3639333 () Bool)

(declare-fun e!2252892 () Bool)

(declare-fun contains!7526 (List!38483 Rule!11260) Bool)

(assert (=> b!3639333 (= e!2252892 (contains!7526 rules!3307 (rule!8510 (_1!22246 lt!1259876))))))

(declare-fun tp!1110458 () Bool)

(declare-fun e!2252873 () Bool)

(declare-fun b!3639334 () Bool)

(declare-fun inv!21 (TokenValue!5960) Bool)

(assert (=> b!3639334 (= e!2252873 (and (inv!21 (value!183765 token!511)) e!2252894 tp!1110458))))

(declare-fun b!3639335 () Bool)

(assert (=> b!3639335 (= e!2252896 (= (rule!8510 (_1!22246 lt!1259876)) lt!1259880))))

(declare-fun b!3639336 () Bool)

(declare-fun res!1474905 () Bool)

(declare-fun e!2252877 () Bool)

(assert (=> b!3639336 (=> res!1474905 e!2252877)))

(declare-fun lt!1259868 () List!38482)

(assert (=> b!3639336 (= res!1474905 (not (matchR!5058 (regex!5730 (rule!8510 (_1!22246 lt!1259876))) lt!1259868)))))

(declare-fun b!3639337 () Bool)

(declare-fun res!1474896 () Bool)

(assert (=> b!3639337 (=> res!1474896 e!2252895)))

(assert (=> b!3639337 (= res!1474896 (not (contains!7525 (usedCharacters!942 (regex!5730 anOtherTypeRule!33)) lt!1259878)))))

(declare-fun b!3639338 () Bool)

(declare-fun Unit!55199 () Unit!55196)

(assert (=> b!3639338 (= e!2252889 Unit!55199)))

(declare-fun lt!1259864 () C!21164)

(declare-fun lt!1259874 () Unit!55196)

(declare-fun lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!678 (Regex!10489 List!38482 C!21164) Unit!55196)

(assert (=> b!3639338 (= lt!1259874 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!678 (regex!5730 rule!403) lt!1259879 lt!1259864))))

(assert (=> b!3639338 false))

(assert (=> b!3639339 (= e!2252872 (and tp!1110449 tp!1110454))))

(declare-fun b!3639340 () Bool)

(declare-fun res!1474908 () Bool)

(assert (=> b!3639340 (=> res!1474908 e!2252892)))

(assert (=> b!3639340 (= res!1474908 (not (contains!7525 lt!1259879 lt!1259864)))))

(declare-fun b!3639341 () Bool)

(declare-fun e!2252883 () Bool)

(declare-fun e!2252885 () Bool)

(assert (=> b!3639341 (= e!2252883 e!2252885)))

(declare-fun res!1474895 () Bool)

(assert (=> b!3639341 (=> res!1474895 e!2252885)))

(declare-fun lt!1259866 () List!38482)

(declare-fun lt!1259863 () Option!8088)

(assert (=> b!3639341 (= res!1474895 (or (not (= lt!1259866 (_2!22246 lt!1259876))) (not (= lt!1259863 (Some!8087 (tuple2!38225 (_1!22246 lt!1259876) lt!1259866))))))))

(assert (=> b!3639341 (= (_2!22246 lt!1259876) lt!1259866)))

(declare-fun lt!1259867 () List!38482)

(declare-fun lt!1259885 () Unit!55196)

(declare-fun lemmaSamePrefixThenSameSuffix!1420 (List!38482 List!38482 List!38482 List!38482 List!38482) Unit!55196)

(assert (=> b!3639341 (= lt!1259885 (lemmaSamePrefixThenSameSuffix!1420 lt!1259868 (_2!22246 lt!1259876) lt!1259868 lt!1259866 lt!1259867))))

(declare-fun getSuffix!1646 (List!38482 List!38482) List!38482)

(assert (=> b!3639341 (= lt!1259866 (getSuffix!1646 lt!1259867 lt!1259868))))

(declare-fun lt!1259865 () Int)

(declare-fun lt!1259872 () TokenValue!5960)

(assert (=> b!3639341 (= lt!1259863 (Some!8087 (tuple2!38225 (Token!10827 lt!1259872 (rule!8510 (_1!22246 lt!1259876)) lt!1259865 lt!1259868) (_2!22246 lt!1259876))))))

(declare-fun maxPrefixOneRule!1991 (LexerInterface!5319 Rule!11260 List!38482) Option!8088)

(assert (=> b!3639341 (= lt!1259863 (maxPrefixOneRule!1991 thiss!23823 (rule!8510 (_1!22246 lt!1259876)) lt!1259867))))

(declare-fun size!29276 (List!38482) Int)

(assert (=> b!3639341 (= lt!1259865 (size!29276 lt!1259868))))

(declare-fun apply!9232 (TokenValueInjection!11348 BalanceConc!23036) TokenValue!5960)

(declare-fun seqFromList!4279 (List!38482) BalanceConc!23036)

(assert (=> b!3639341 (= lt!1259872 (apply!9232 (transformation!5730 (rule!8510 (_1!22246 lt!1259876))) (seqFromList!4279 lt!1259868)))))

(declare-fun lt!1259881 () Unit!55196)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1047 (LexerInterface!5319 List!38483 List!38482 List!38482 List!38482 Rule!11260) Unit!55196)

(assert (=> b!3639341 (= lt!1259881 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1047 thiss!23823 rules!3307 lt!1259868 lt!1259867 (_2!22246 lt!1259876) (rule!8510 (_1!22246 lt!1259876))))))

(declare-fun b!3639342 () Bool)

(declare-fun res!1474893 () Bool)

(assert (=> b!3639342 (=> (not res!1474893) (not e!2252869))))

(assert (=> b!3639342 (= res!1474893 (isEmpty!22708 (_2!22246 lt!1259859)))))

(declare-fun res!1474899 () Bool)

(assert (=> start!339762 (=> (not res!1474899) (not e!2252870))))

(get-info :version)

(assert (=> start!339762 (= res!1474899 ((_ is Lexer!5317) thiss!23823))))

(assert (=> start!339762 e!2252870))

(assert (=> start!339762 e!2252884))

(assert (=> start!339762 e!2252886))

(assert (=> start!339762 true))

(declare-fun inv!51792 (Token!10826) Bool)

(assert (=> start!339762 (and (inv!51792 token!511) e!2252873)))

(declare-fun e!2252878 () Bool)

(assert (=> start!339762 e!2252878))

(declare-fun e!2252871 () Bool)

(assert (=> start!339762 e!2252871))

(declare-fun b!3639319 () Bool)

(assert (=> b!3639319 (= e!2252877 e!2252883)))

(declare-fun res!1474894 () Bool)

(assert (=> b!3639319 (=> res!1474894 e!2252883)))

(declare-fun lt!1259875 () BalanceConc!23036)

(declare-fun lt!1259869 () Option!8088)

(declare-fun size!29277 (BalanceConc!23036) Int)

(assert (=> b!3639319 (= res!1474894 (not (= lt!1259869 (Some!8087 (tuple2!38225 (Token!10827 (apply!9232 (transformation!5730 (rule!8510 (_1!22246 lt!1259876))) lt!1259875) (rule!8510 (_1!22246 lt!1259876)) (size!29277 lt!1259875) lt!1259868) (_2!22246 lt!1259876))))))))

(declare-fun lt!1259884 () Unit!55196)

(declare-fun lemmaCharactersSize!775 (Token!10826) Unit!55196)

(assert (=> b!3639319 (= lt!1259884 (lemmaCharactersSize!775 (_1!22246 lt!1259876)))))

(declare-fun lt!1259873 () Unit!55196)

(declare-fun lemmaEqSameImage!913 (TokenValueInjection!11348 BalanceConc!23036 BalanceConc!23036) Unit!55196)

(assert (=> b!3639319 (= lt!1259873 (lemmaEqSameImage!913 (transformation!5730 (rule!8510 (_1!22246 lt!1259876))) lt!1259875 (seqFromList!4279 (originalCharacters!6444 (_1!22246 lt!1259876)))))))

(declare-fun lt!1259877 () Unit!55196)

(declare-fun lemmaSemiInverse!1479 (TokenValueInjection!11348 BalanceConc!23036) Unit!55196)

(assert (=> b!3639319 (= lt!1259877 (lemmaSemiInverse!1479 (transformation!5730 (rule!8510 (_1!22246 lt!1259876))) lt!1259875))))

(assert (=> b!3639343 (= e!2252875 (and tp!1110457 tp!1110450))))

(declare-fun b!3639344 () Bool)

(declare-fun tp!1110451 () Bool)

(declare-fun e!2252879 () Bool)

(assert (=> b!3639344 (= e!2252878 (and tp!1110451 (inv!51788 (tag!6476 rule!403)) (inv!51791 (transformation!5730 rule!403)) e!2252879))))

(declare-fun b!3639345 () Bool)

(declare-fun res!1474906 () Bool)

(assert (=> b!3639345 (=> (not res!1474906) (not e!2252870))))

(assert (=> b!3639345 (= res!1474906 (contains!7526 rules!3307 rule!403))))

(declare-fun tp!1110452 () Bool)

(declare-fun b!3639346 () Bool)

(assert (=> b!3639346 (= e!2252871 (and tp!1110452 (inv!51788 (tag!6476 anOtherTypeRule!33)) (inv!51791 (transformation!5730 anOtherTypeRule!33)) e!2252880))))

(declare-fun b!3639347 () Bool)

(declare-fun res!1474892 () Bool)

(assert (=> b!3639347 (=> (not res!1474892) (not e!2252870))))

(assert (=> b!3639347 (= res!1474892 (contains!7526 rules!3307 anOtherTypeRule!33))))

(assert (=> b!3639348 (= e!2252879 (and tp!1110462 tp!1110448))))

(declare-fun b!3639349 () Bool)

(declare-fun res!1474900 () Bool)

(assert (=> b!3639349 (=> (not res!1474900) (not e!2252870))))

(declare-fun isEmpty!22709 (List!38483) Bool)

(assert (=> b!3639349 (= res!1474900 (not (isEmpty!22709 rules!3307)))))

(declare-fun b!3639350 () Bool)

(declare-fun res!1474915 () Bool)

(assert (=> b!3639350 (=> res!1474915 e!2252892)))

(declare-fun lt!1259858 () Bool)

(assert (=> b!3639350 (= res!1474915 lt!1259858)))

(declare-fun b!3639351 () Bool)

(assert (=> b!3639351 (= e!2252895 e!2252877)))

(declare-fun res!1474904 () Bool)

(assert (=> b!3639351 (=> res!1474904 e!2252877)))

(declare-fun isPrefix!3093 (List!38482 List!38482) Bool)

(assert (=> b!3639351 (= res!1474904 (not (isPrefix!3093 lt!1259868 lt!1259867)))))

(declare-fun ++!9546 (List!38482 List!38482) List!38482)

(assert (=> b!3639351 (isPrefix!3093 lt!1259868 (++!9546 lt!1259868 (_2!22246 lt!1259876)))))

(declare-fun lt!1259861 () Unit!55196)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2012 (List!38482 List!38482) Unit!55196)

(assert (=> b!3639351 (= lt!1259861 (lemmaConcatTwoListThenFirstIsPrefix!2012 lt!1259868 (_2!22246 lt!1259876)))))

(assert (=> b!3639351 (= lt!1259868 (list!14196 lt!1259875))))

(assert (=> b!3639351 (= lt!1259875 (charsOf!3744 (_1!22246 lt!1259876)))))

(assert (=> b!3639351 e!2252881))

(declare-fun res!1474911 () Bool)

(assert (=> b!3639351 (=> (not res!1474911) (not e!2252881))))

(declare-fun isDefined!6321 (Option!8089) Bool)

(assert (=> b!3639351 (= res!1474911 (isDefined!6321 lt!1259871))))

(declare-fun getRuleFromTag!1334 (LexerInterface!5319 List!38483 String!43134) Option!8089)

(assert (=> b!3639351 (= lt!1259871 (getRuleFromTag!1334 thiss!23823 rules!3307 (tag!6476 (rule!8510 (_1!22246 lt!1259876)))))))

(declare-fun lt!1259886 () Unit!55196)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1334 (LexerInterface!5319 List!38483 List!38482 Token!10826) Unit!55196)

(assert (=> b!3639351 (= lt!1259886 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1334 thiss!23823 rules!3307 lt!1259867 (_1!22246 lt!1259876)))))

(assert (=> b!3639351 (= lt!1259876 (get!12563 lt!1259869))))

(declare-fun lt!1259862 () Unit!55196)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!997 (LexerInterface!5319 List!38483 List!38482 List!38482) Unit!55196)

(assert (=> b!3639351 (= lt!1259862 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!997 thiss!23823 rules!3307 lt!1259879 suffix!1395))))

(assert (=> b!3639351 (= lt!1259869 (maxPrefix!2853 thiss!23823 rules!3307 lt!1259867))))

(assert (=> b!3639351 (isPrefix!3093 lt!1259879 lt!1259867)))

(declare-fun lt!1259857 () Unit!55196)

(assert (=> b!3639351 (= lt!1259857 (lemmaConcatTwoListThenFirstIsPrefix!2012 lt!1259879 suffix!1395))))

(assert (=> b!3639351 (= lt!1259867 (++!9546 lt!1259879 suffix!1395))))

(declare-fun b!3639352 () Bool)

(assert (=> b!3639352 (= e!2252885 e!2252892)))

(declare-fun res!1474910 () Bool)

(assert (=> b!3639352 (=> res!1474910 e!2252892)))

(assert (=> b!3639352 (= res!1474910 (or (not (isSeparator!5730 rule!403)) (isSeparator!5730 (rule!8510 (_1!22246 lt!1259876)))))))

(declare-fun lt!1259860 () Unit!55196)

(assert (=> b!3639352 (= lt!1259860 e!2252889)))

(declare-fun c!629281 () Bool)

(assert (=> b!3639352 (= c!629281 lt!1259858)))

(assert (=> b!3639352 (= lt!1259858 (not (contains!7525 lt!1259883 lt!1259864)))))

(assert (=> b!3639352 (= lt!1259864 (head!7726 lt!1259868))))

(assert (= (and start!339762 res!1474899) b!3639349))

(assert (= (and b!3639349 res!1474900) b!3639324))

(assert (= (and b!3639324 res!1474907) b!3639345))

(assert (= (and b!3639345 res!1474906) b!3639347))

(assert (= (and b!3639347 res!1474892) b!3639318))

(assert (= (and b!3639318 res!1474909) b!3639316))

(assert (= (and b!3639316 res!1474897) b!3639323))

(assert (= (and b!3639323 res!1474912) b!3639342))

(assert (= (and b!3639342 res!1474893) b!3639322))

(assert (= (and b!3639322 res!1474913) b!3639329))

(assert (= (and b!3639329 (not res!1474901)) b!3639331))

(assert (= (and b!3639331 (not res!1474903)) b!3639320))

(assert (= (and b!3639320 (not res!1474898)) b!3639337))

(assert (= (and b!3639337 (not res!1474896)) b!3639327))

(assert (= (and b!3639327 (not res!1474902)) b!3639351))

(assert (= (and b!3639351 res!1474911) b!3639330))

(assert (= (and b!3639330 res!1474914) b!3639335))

(assert (= (and b!3639351 (not res!1474904)) b!3639336))

(assert (= (and b!3639336 (not res!1474905)) b!3639319))

(assert (= (and b!3639319 (not res!1474894)) b!3639341))

(assert (= (and b!3639341 (not res!1474895)) b!3639352))

(assert (= (and b!3639352 c!629281) b!3639338))

(assert (= (and b!3639352 (not c!629281)) b!3639317))

(assert (= (and b!3639352 (not res!1474910)) b!3639340))

(assert (= (and b!3639340 (not res!1474908)) b!3639350))

(assert (= (and b!3639350 (not res!1474915)) b!3639333))

(assert (= b!3639321 b!3639339))

(assert (= b!3639325 b!3639321))

(assert (= (and start!339762 ((_ is Cons!38359) rules!3307)) b!3639325))

(assert (= (and start!339762 ((_ is Cons!38358) suffix!1395)) b!3639326))

(assert (= b!3639332 b!3639343))

(assert (= b!3639334 b!3639332))

(assert (= start!339762 b!3639334))

(assert (= b!3639344 b!3639348))

(assert (= start!339762 b!3639344))

(assert (= b!3639346 b!3639328))

(assert (= start!339762 b!3639346))

(declare-fun m!4142083 () Bool)

(assert (=> b!3639340 m!4142083))

(declare-fun m!4142085 () Bool)

(assert (=> b!3639347 m!4142085))

(declare-fun m!4142087 () Bool)

(assert (=> b!3639338 m!4142087))

(declare-fun m!4142089 () Bool)

(assert (=> b!3639324 m!4142089))

(declare-fun m!4142091 () Bool)

(assert (=> b!3639320 m!4142091))

(declare-fun m!4142093 () Bool)

(assert (=> b!3639320 m!4142093))

(declare-fun m!4142095 () Bool)

(assert (=> b!3639320 m!4142095))

(declare-fun m!4142097 () Bool)

(assert (=> b!3639332 m!4142097))

(declare-fun m!4142099 () Bool)

(assert (=> b!3639332 m!4142099))

(declare-fun m!4142101 () Bool)

(assert (=> b!3639341 m!4142101))

(declare-fun m!4142103 () Bool)

(assert (=> b!3639341 m!4142103))

(declare-fun m!4142105 () Bool)

(assert (=> b!3639341 m!4142105))

(declare-fun m!4142107 () Bool)

(assert (=> b!3639341 m!4142107))

(declare-fun m!4142109 () Bool)

(assert (=> b!3639341 m!4142109))

(assert (=> b!3639341 m!4142105))

(declare-fun m!4142111 () Bool)

(assert (=> b!3639341 m!4142111))

(declare-fun m!4142113 () Bool)

(assert (=> b!3639341 m!4142113))

(declare-fun m!4142115 () Bool)

(assert (=> b!3639334 m!4142115))

(declare-fun m!4142117 () Bool)

(assert (=> b!3639337 m!4142117))

(assert (=> b!3639337 m!4142117))

(declare-fun m!4142119 () Bool)

(assert (=> b!3639337 m!4142119))

(declare-fun m!4142121 () Bool)

(assert (=> b!3639329 m!4142121))

(declare-fun m!4142123 () Bool)

(assert (=> b!3639329 m!4142123))

(declare-fun m!4142125 () Bool)

(assert (=> b!3639329 m!4142125))

(declare-fun m!4142127 () Bool)

(assert (=> b!3639321 m!4142127))

(declare-fun m!4142129 () Bool)

(assert (=> b!3639321 m!4142129))

(declare-fun m!4142131 () Bool)

(assert (=> b!3639330 m!4142131))

(assert (=> b!3639330 m!4142131))

(declare-fun m!4142133 () Bool)

(assert (=> b!3639330 m!4142133))

(assert (=> b!3639330 m!4142133))

(declare-fun m!4142135 () Bool)

(assert (=> b!3639330 m!4142135))

(declare-fun m!4142137 () Bool)

(assert (=> b!3639330 m!4142137))

(declare-fun m!4142139 () Bool)

(assert (=> b!3639345 m!4142139))

(declare-fun m!4142141 () Bool)

(assert (=> b!3639323 m!4142141))

(declare-fun m!4142143 () Bool)

(assert (=> b!3639352 m!4142143))

(declare-fun m!4142145 () Bool)

(assert (=> b!3639352 m!4142145))

(declare-fun m!4142147 () Bool)

(assert (=> b!3639331 m!4142147))

(declare-fun m!4142149 () Bool)

(assert (=> b!3639342 m!4142149))

(declare-fun m!4142151 () Bool)

(assert (=> b!3639333 m!4142151))

(declare-fun m!4142153 () Bool)

(assert (=> b!3639346 m!4142153))

(declare-fun m!4142155 () Bool)

(assert (=> b!3639346 m!4142155))

(declare-fun m!4142157 () Bool)

(assert (=> b!3639327 m!4142157))

(declare-fun m!4142159 () Bool)

(assert (=> b!3639349 m!4142159))

(declare-fun m!4142161 () Bool)

(assert (=> b!3639351 m!4142161))

(assert (=> b!3639351 m!4142131))

(declare-fun m!4142163 () Bool)

(assert (=> b!3639351 m!4142163))

(declare-fun m!4142165 () Bool)

(assert (=> b!3639351 m!4142165))

(declare-fun m!4142167 () Bool)

(assert (=> b!3639351 m!4142167))

(declare-fun m!4142169 () Bool)

(assert (=> b!3639351 m!4142169))

(declare-fun m!4142171 () Bool)

(assert (=> b!3639351 m!4142171))

(declare-fun m!4142173 () Bool)

(assert (=> b!3639351 m!4142173))

(declare-fun m!4142175 () Bool)

(assert (=> b!3639351 m!4142175))

(declare-fun m!4142177 () Bool)

(assert (=> b!3639351 m!4142177))

(declare-fun m!4142179 () Bool)

(assert (=> b!3639351 m!4142179))

(declare-fun m!4142181 () Bool)

(assert (=> b!3639351 m!4142181))

(assert (=> b!3639351 m!4142163))

(declare-fun m!4142183 () Bool)

(assert (=> b!3639351 m!4142183))

(declare-fun m!4142185 () Bool)

(assert (=> b!3639351 m!4142185))

(declare-fun m!4142187 () Bool)

(assert (=> b!3639351 m!4142187))

(declare-fun m!4142189 () Bool)

(assert (=> b!3639316 m!4142189))

(declare-fun m!4142191 () Bool)

(assert (=> b!3639316 m!4142191))

(declare-fun m!4142193 () Bool)

(assert (=> b!3639316 m!4142193))

(assert (=> b!3639316 m!4142193))

(declare-fun m!4142195 () Bool)

(assert (=> b!3639316 m!4142195))

(declare-fun m!4142197 () Bool)

(assert (=> b!3639344 m!4142197))

(declare-fun m!4142199 () Bool)

(assert (=> b!3639344 m!4142199))

(declare-fun m!4142201 () Bool)

(assert (=> b!3639319 m!4142201))

(declare-fun m!4142203 () Bool)

(assert (=> b!3639319 m!4142203))

(declare-fun m!4142205 () Bool)

(assert (=> b!3639319 m!4142205))

(declare-fun m!4142207 () Bool)

(assert (=> b!3639319 m!4142207))

(assert (=> b!3639319 m!4142205))

(declare-fun m!4142209 () Bool)

(assert (=> b!3639319 m!4142209))

(declare-fun m!4142211 () Bool)

(assert (=> b!3639319 m!4142211))

(declare-fun m!4142213 () Bool)

(assert (=> b!3639336 m!4142213))

(declare-fun m!4142215 () Bool)

(assert (=> start!339762 m!4142215))

(check-sat (not b_next!96105) b_and!268087 b_and!268085 (not b!3639324) (not b_next!96103) (not b!3639342) (not b!3639345) b_and!268081 tp_is_empty!18061 (not start!339762) (not b!3639347) (not b_next!96101) b_and!268075 (not b!3639344) (not b!3639329) (not b_next!96097) (not b_next!96109) (not b!3639319) (not b!3639351) (not b_next!96099) (not b!3639321) (not b_next!96111) (not b!3639332) (not b!3639340) (not b!3639346) (not b!3639341) (not b!3639323) b_and!268083 (not b!3639352) (not b!3639326) b_and!268089 b_and!268079 (not b!3639320) (not b!3639337) (not b!3639331) (not b!3639325) (not b_next!96107) (not b!3639334) b_and!268077 (not b!3639316) (not b!3639336) (not b!3639338) (not b!3639327) (not b!3639330) (not b!3639333) (not b!3639349))
(check-sat (not b_next!96105) b_and!268087 b_and!268085 (not b_next!96109) (not b_next!96103) (not b_next!96099) (not b_next!96111) b_and!268079 b_and!268081 (not b_next!96107) b_and!268077 (not b_next!96101) b_and!268075 (not b_next!96097) b_and!268083 b_and!268089)
(get-model)

(declare-fun d!1070082 () Bool)

(declare-fun c!629303 () Bool)

(assert (=> d!1070082 (= c!629303 ((_ is IntegerValue!17880) (value!183765 token!511)))))

(declare-fun e!2252949 () Bool)

(assert (=> d!1070082 (= (inv!21 (value!183765 token!511)) e!2252949)))

(declare-fun b!3639440 () Bool)

(declare-fun res!1474967 () Bool)

(declare-fun e!2252950 () Bool)

(assert (=> b!3639440 (=> res!1474967 e!2252950)))

(assert (=> b!3639440 (= res!1474967 (not ((_ is IntegerValue!17882) (value!183765 token!511))))))

(declare-fun e!2252951 () Bool)

(assert (=> b!3639440 (= e!2252951 e!2252950)))

(declare-fun b!3639441 () Bool)

(assert (=> b!3639441 (= e!2252949 e!2252951)))

(declare-fun c!629304 () Bool)

(assert (=> b!3639441 (= c!629304 ((_ is IntegerValue!17881) (value!183765 token!511)))))

(declare-fun b!3639442 () Bool)

(declare-fun inv!16 (TokenValue!5960) Bool)

(assert (=> b!3639442 (= e!2252949 (inv!16 (value!183765 token!511)))))

(declare-fun b!3639443 () Bool)

(declare-fun inv!15 (TokenValue!5960) Bool)

(assert (=> b!3639443 (= e!2252950 (inv!15 (value!183765 token!511)))))

(declare-fun b!3639444 () Bool)

(declare-fun inv!17 (TokenValue!5960) Bool)

(assert (=> b!3639444 (= e!2252951 (inv!17 (value!183765 token!511)))))

(assert (= (and d!1070082 c!629303) b!3639442))

(assert (= (and d!1070082 (not c!629303)) b!3639441))

(assert (= (and b!3639441 c!629304) b!3639444))

(assert (= (and b!3639441 (not c!629304)) b!3639440))

(assert (= (and b!3639440 (not res!1474967)) b!3639443))

(declare-fun m!4142283 () Bool)

(assert (=> b!3639442 m!4142283))

(declare-fun m!4142285 () Bool)

(assert (=> b!3639443 m!4142285))

(declare-fun m!4142287 () Bool)

(assert (=> b!3639444 m!4142287))

(assert (=> b!3639334 d!1070082))

(declare-fun d!1070084 () Bool)

(declare-fun lt!1259920 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!5518 (List!38483) (InoxSet Rule!11260))

(assert (=> d!1070084 (= lt!1259920 (select (content!5518 rules!3307) (rule!8510 (_1!22246 lt!1259876))))))

(declare-fun e!2252964 () Bool)

(assert (=> d!1070084 (= lt!1259920 e!2252964)))

(declare-fun res!1474987 () Bool)

(assert (=> d!1070084 (=> (not res!1474987) (not e!2252964))))

(assert (=> d!1070084 (= res!1474987 ((_ is Cons!38359) rules!3307))))

(assert (=> d!1070084 (= (contains!7526 rules!3307 (rule!8510 (_1!22246 lt!1259876))) lt!1259920)))

(declare-fun b!3639467 () Bool)

(declare-fun e!2252965 () Bool)

(assert (=> b!3639467 (= e!2252964 e!2252965)))

(declare-fun res!1474986 () Bool)

(assert (=> b!3639467 (=> res!1474986 e!2252965)))

(assert (=> b!3639467 (= res!1474986 (= (h!43779 rules!3307) (rule!8510 (_1!22246 lt!1259876))))))

(declare-fun b!3639468 () Bool)

(assert (=> b!3639468 (= e!2252965 (contains!7526 (t!296266 rules!3307) (rule!8510 (_1!22246 lt!1259876))))))

(assert (= (and d!1070084 res!1474987) b!3639467))

(assert (= (and b!3639467 (not res!1474986)) b!3639468))

(declare-fun m!4142289 () Bool)

(assert (=> d!1070084 m!4142289))

(declare-fun m!4142291 () Bool)

(assert (=> d!1070084 m!4142291))

(declare-fun m!4142293 () Bool)

(assert (=> b!3639468 m!4142293))

(assert (=> b!3639333 d!1070084))

(declare-fun d!1070086 () Bool)

(assert (=> d!1070086 (= (inv!51788 (tag!6476 (rule!8510 token!511))) (= (mod (str.len (value!183764 (tag!6476 (rule!8510 token!511)))) 2) 0))))

(assert (=> b!3639332 d!1070086))

(declare-fun d!1070088 () Bool)

(declare-fun res!1474997 () Bool)

(declare-fun e!2252972 () Bool)

(assert (=> d!1070088 (=> (not res!1474997) (not e!2252972))))

(declare-fun semiInverseModEq!2439 (Int Int) Bool)

(assert (=> d!1070088 (= res!1474997 (semiInverseModEq!2439 (toChars!7881 (transformation!5730 (rule!8510 token!511))) (toValue!8022 (transformation!5730 (rule!8510 token!511)))))))

(assert (=> d!1070088 (= (inv!51791 (transformation!5730 (rule!8510 token!511))) e!2252972)))

(declare-fun b!3639480 () Bool)

(declare-fun equivClasses!2338 (Int Int) Bool)

(assert (=> b!3639480 (= e!2252972 (equivClasses!2338 (toChars!7881 (transformation!5730 (rule!8510 token!511))) (toValue!8022 (transformation!5730 (rule!8510 token!511)))))))

(assert (= (and d!1070088 res!1474997) b!3639480))

(declare-fun m!4142341 () Bool)

(assert (=> d!1070088 m!4142341))

(declare-fun m!4142343 () Bool)

(assert (=> b!3639480 m!4142343))

(assert (=> b!3639332 d!1070088))

(declare-fun d!1070094 () Bool)

(declare-fun lt!1259932 () Bool)

(declare-fun content!5519 (List!38482) (InoxSet C!21164))

(assert (=> d!1070094 (= lt!1259932 (select (content!5519 lt!1259883) lt!1259864))))

(declare-fun e!2252995 () Bool)

(assert (=> d!1070094 (= lt!1259932 e!2252995)))

(declare-fun res!1475011 () Bool)

(assert (=> d!1070094 (=> (not res!1475011) (not e!2252995))))

(assert (=> d!1070094 (= res!1475011 ((_ is Cons!38358) lt!1259883))))

(assert (=> d!1070094 (= (contains!7525 lt!1259883 lt!1259864) lt!1259932)))

(declare-fun b!3639510 () Bool)

(declare-fun e!2252994 () Bool)

(assert (=> b!3639510 (= e!2252995 e!2252994)))

(declare-fun res!1475012 () Bool)

(assert (=> b!3639510 (=> res!1475012 e!2252994)))

(assert (=> b!3639510 (= res!1475012 (= (h!43778 lt!1259883) lt!1259864))))

(declare-fun b!3639511 () Bool)

(assert (=> b!3639511 (= e!2252994 (contains!7525 (t!296265 lt!1259883) lt!1259864))))

(assert (= (and d!1070094 res!1475011) b!3639510))

(assert (= (and b!3639510 (not res!1475012)) b!3639511))

(declare-fun m!4142361 () Bool)

(assert (=> d!1070094 m!4142361))

(declare-fun m!4142363 () Bool)

(assert (=> d!1070094 m!4142363))

(declare-fun m!4142365 () Bool)

(assert (=> b!3639511 m!4142365))

(assert (=> b!3639352 d!1070094))

(declare-fun d!1070106 () Bool)

(assert (=> d!1070106 (= (head!7726 lt!1259868) (h!43778 lt!1259868))))

(assert (=> b!3639352 d!1070106))

(declare-fun d!1070108 () Bool)

(assert (=> d!1070108 (= (isEmpty!22708 suffix!1395) ((_ is Nil!38358) suffix!1395))))

(assert (=> b!3639331 d!1070108))

(declare-fun b!3639583 () Bool)

(declare-fun res!1475047 () Bool)

(declare-fun e!2253037 () Bool)

(assert (=> b!3639583 (=> (not res!1475047) (not e!2253037))))

(declare-fun call!263097 () Bool)

(assert (=> b!3639583 (= res!1475047 (not call!263097))))

(declare-fun b!3639584 () Bool)

(declare-fun res!1475050 () Bool)

(declare-fun e!2253034 () Bool)

(assert (=> b!3639584 (=> res!1475050 e!2253034)))

(assert (=> b!3639584 (= res!1475050 e!2253037)))

(declare-fun res!1475051 () Bool)

(assert (=> b!3639584 (=> (not res!1475051) (not e!2253037))))

(declare-fun lt!1259941 () Bool)

(assert (=> b!3639584 (= res!1475051 lt!1259941)))

(declare-fun b!3639585 () Bool)

(declare-fun e!2253038 () Bool)

(assert (=> b!3639585 (= e!2253038 (not lt!1259941))))

(declare-fun b!3639586 () Bool)

(declare-fun res!1475048 () Bool)

(declare-fun e!2253039 () Bool)

(assert (=> b!3639586 (=> res!1475048 e!2253039)))

(declare-fun tail!5637 (List!38482) List!38482)

(assert (=> b!3639586 (= res!1475048 (not (isEmpty!22708 (tail!5637 (list!14196 (charsOf!3744 (_1!22246 lt!1259876)))))))))

(declare-fun b!3639587 () Bool)

(declare-fun e!2253036 () Bool)

(declare-fun nullable!3639 (Regex!10489) Bool)

(assert (=> b!3639587 (= e!2253036 (nullable!3639 (regex!5730 lt!1259880)))))

(declare-fun b!3639588 () Bool)

(declare-fun e!2253035 () Bool)

(assert (=> b!3639588 (= e!2253035 e!2253038)))

(declare-fun c!629336 () Bool)

(assert (=> b!3639588 (= c!629336 ((_ is EmptyLang!10489) (regex!5730 lt!1259880)))))

(declare-fun d!1070110 () Bool)

(assert (=> d!1070110 e!2253035))

(declare-fun c!629337 () Bool)

(assert (=> d!1070110 (= c!629337 ((_ is EmptyExpr!10489) (regex!5730 lt!1259880)))))

(assert (=> d!1070110 (= lt!1259941 e!2253036)))

(declare-fun c!629338 () Bool)

(assert (=> d!1070110 (= c!629338 (isEmpty!22708 (list!14196 (charsOf!3744 (_1!22246 lt!1259876)))))))

(declare-fun validRegex!4801 (Regex!10489) Bool)

(assert (=> d!1070110 (validRegex!4801 (regex!5730 lt!1259880))))

(assert (=> d!1070110 (= (matchR!5058 (regex!5730 lt!1259880) (list!14196 (charsOf!3744 (_1!22246 lt!1259876)))) lt!1259941)))

(declare-fun b!3639589 () Bool)

(assert (=> b!3639589 (= e!2253039 (not (= (head!7726 (list!14196 (charsOf!3744 (_1!22246 lt!1259876)))) (c!629282 (regex!5730 lt!1259880)))))))

(declare-fun b!3639590 () Bool)

(declare-fun derivativeStep!3188 (Regex!10489 C!21164) Regex!10489)

(assert (=> b!3639590 (= e!2253036 (matchR!5058 (derivativeStep!3188 (regex!5730 lt!1259880) (head!7726 (list!14196 (charsOf!3744 (_1!22246 lt!1259876))))) (tail!5637 (list!14196 (charsOf!3744 (_1!22246 lt!1259876))))))))

(declare-fun b!3639591 () Bool)

(declare-fun e!2253033 () Bool)

(assert (=> b!3639591 (= e!2253034 e!2253033)))

(declare-fun res!1475052 () Bool)

(assert (=> b!3639591 (=> (not res!1475052) (not e!2253033))))

(assert (=> b!3639591 (= res!1475052 (not lt!1259941))))

(declare-fun b!3639592 () Bool)

(declare-fun res!1475049 () Bool)

(assert (=> b!3639592 (=> (not res!1475049) (not e!2253037))))

(assert (=> b!3639592 (= res!1475049 (isEmpty!22708 (tail!5637 (list!14196 (charsOf!3744 (_1!22246 lt!1259876))))))))

(declare-fun b!3639593 () Bool)

(assert (=> b!3639593 (= e!2253035 (= lt!1259941 call!263097))))

(declare-fun bm!263092 () Bool)

(assert (=> bm!263092 (= call!263097 (isEmpty!22708 (list!14196 (charsOf!3744 (_1!22246 lt!1259876)))))))

(declare-fun b!3639594 () Bool)

(assert (=> b!3639594 (= e!2253033 e!2253039)))

(declare-fun res!1475046 () Bool)

(assert (=> b!3639594 (=> res!1475046 e!2253039)))

(assert (=> b!3639594 (= res!1475046 call!263097)))

(declare-fun b!3639595 () Bool)

(assert (=> b!3639595 (= e!2253037 (= (head!7726 (list!14196 (charsOf!3744 (_1!22246 lt!1259876)))) (c!629282 (regex!5730 lt!1259880))))))

(declare-fun b!3639596 () Bool)

(declare-fun res!1475053 () Bool)

(assert (=> b!3639596 (=> res!1475053 e!2253034)))

(assert (=> b!3639596 (= res!1475053 (not ((_ is ElementMatch!10489) (regex!5730 lt!1259880))))))

(assert (=> b!3639596 (= e!2253038 e!2253034)))

(assert (= (and d!1070110 c!629338) b!3639587))

(assert (= (and d!1070110 (not c!629338)) b!3639590))

(assert (= (and d!1070110 c!629337) b!3639593))

(assert (= (and d!1070110 (not c!629337)) b!3639588))

(assert (= (and b!3639588 c!629336) b!3639585))

(assert (= (and b!3639588 (not c!629336)) b!3639596))

(assert (= (and b!3639596 (not res!1475053)) b!3639584))

(assert (= (and b!3639584 res!1475051) b!3639583))

(assert (= (and b!3639583 res!1475047) b!3639592))

(assert (= (and b!3639592 res!1475049) b!3639595))

(assert (= (and b!3639584 (not res!1475050)) b!3639591))

(assert (= (and b!3639591 res!1475052) b!3639594))

(assert (= (and b!3639594 (not res!1475046)) b!3639586))

(assert (= (and b!3639586 (not res!1475048)) b!3639589))

(assert (= (or b!3639593 b!3639583 b!3639594) bm!263092))

(assert (=> bm!263092 m!4142133))

(declare-fun m!4142401 () Bool)

(assert (=> bm!263092 m!4142401))

(assert (=> b!3639589 m!4142133))

(declare-fun m!4142403 () Bool)

(assert (=> b!3639589 m!4142403))

(assert (=> b!3639590 m!4142133))

(assert (=> b!3639590 m!4142403))

(assert (=> b!3639590 m!4142403))

(declare-fun m!4142405 () Bool)

(assert (=> b!3639590 m!4142405))

(assert (=> b!3639590 m!4142133))

(declare-fun m!4142407 () Bool)

(assert (=> b!3639590 m!4142407))

(assert (=> b!3639590 m!4142405))

(assert (=> b!3639590 m!4142407))

(declare-fun m!4142409 () Bool)

(assert (=> b!3639590 m!4142409))

(assert (=> b!3639592 m!4142133))

(assert (=> b!3639592 m!4142407))

(assert (=> b!3639592 m!4142407))

(declare-fun m!4142411 () Bool)

(assert (=> b!3639592 m!4142411))

(assert (=> b!3639595 m!4142133))

(assert (=> b!3639595 m!4142403))

(assert (=> b!3639586 m!4142133))

(assert (=> b!3639586 m!4142407))

(assert (=> b!3639586 m!4142407))

(assert (=> b!3639586 m!4142411))

(assert (=> d!1070110 m!4142133))

(assert (=> d!1070110 m!4142401))

(declare-fun m!4142413 () Bool)

(assert (=> d!1070110 m!4142413))

(declare-fun m!4142415 () Bool)

(assert (=> b!3639587 m!4142415))

(assert (=> b!3639330 d!1070110))

(declare-fun d!1070126 () Bool)

(declare-fun list!14198 (Conc!11711) List!38482)

(assert (=> d!1070126 (= (list!14196 (charsOf!3744 (_1!22246 lt!1259876))) (list!14198 (c!629283 (charsOf!3744 (_1!22246 lt!1259876)))))))

(declare-fun bs!571899 () Bool)

(assert (= bs!571899 d!1070126))

(declare-fun m!4142417 () Bool)

(assert (=> bs!571899 m!4142417))

(assert (=> b!3639330 d!1070126))

(declare-fun d!1070128 () Bool)

(declare-fun lt!1259944 () BalanceConc!23036)

(assert (=> d!1070128 (= (list!14196 lt!1259944) (originalCharacters!6444 (_1!22246 lt!1259876)))))

(declare-fun dynLambda!16680 (Int TokenValue!5960) BalanceConc!23036)

(assert (=> d!1070128 (= lt!1259944 (dynLambda!16680 (toChars!7881 (transformation!5730 (rule!8510 (_1!22246 lt!1259876)))) (value!183765 (_1!22246 lt!1259876))))))

(assert (=> d!1070128 (= (charsOf!3744 (_1!22246 lt!1259876)) lt!1259944)))

(declare-fun b_lambda!107861 () Bool)

(assert (=> (not b_lambda!107861) (not d!1070128)))

(declare-fun tb!209565 () Bool)

(declare-fun t!296292 () Bool)

(assert (=> (and b!3639339 (= (toChars!7881 (transformation!5730 (h!43779 rules!3307))) (toChars!7881 (transformation!5730 (rule!8510 (_1!22246 lt!1259876))))) t!296292) tb!209565))

(declare-fun b!3639601 () Bool)

(declare-fun e!2253042 () Bool)

(declare-fun tp!1110469 () Bool)

(declare-fun inv!51795 (Conc!11711) Bool)

(assert (=> b!3639601 (= e!2253042 (and (inv!51795 (c!629283 (dynLambda!16680 (toChars!7881 (transformation!5730 (rule!8510 (_1!22246 lt!1259876)))) (value!183765 (_1!22246 lt!1259876))))) tp!1110469))))

(declare-fun result!255250 () Bool)

(declare-fun inv!51796 (BalanceConc!23036) Bool)

(assert (=> tb!209565 (= result!255250 (and (inv!51796 (dynLambda!16680 (toChars!7881 (transformation!5730 (rule!8510 (_1!22246 lt!1259876)))) (value!183765 (_1!22246 lt!1259876)))) e!2253042))))

(assert (= tb!209565 b!3639601))

(declare-fun m!4142419 () Bool)

(assert (=> b!3639601 m!4142419))

(declare-fun m!4142421 () Bool)

(assert (=> tb!209565 m!4142421))

(assert (=> d!1070128 t!296292))

(declare-fun b_and!268115 () Bool)

(assert (= b_and!268077 (and (=> t!296292 result!255250) b_and!268115)))

(declare-fun tb!209567 () Bool)

(declare-fun t!296294 () Bool)

(assert (=> (and b!3639348 (= (toChars!7881 (transformation!5730 rule!403)) (toChars!7881 (transformation!5730 (rule!8510 (_1!22246 lt!1259876))))) t!296294) tb!209567))

(declare-fun result!255254 () Bool)

(assert (= result!255254 result!255250))

(assert (=> d!1070128 t!296294))

(declare-fun b_and!268117 () Bool)

(assert (= b_and!268081 (and (=> t!296294 result!255254) b_and!268117)))

(declare-fun tb!209569 () Bool)

(declare-fun t!296296 () Bool)

(assert (=> (and b!3639328 (= (toChars!7881 (transformation!5730 anOtherTypeRule!33)) (toChars!7881 (transformation!5730 (rule!8510 (_1!22246 lt!1259876))))) t!296296) tb!209569))

(declare-fun result!255256 () Bool)

(assert (= result!255256 result!255250))

(assert (=> d!1070128 t!296296))

(declare-fun b_and!268119 () Bool)

(assert (= b_and!268085 (and (=> t!296296 result!255256) b_and!268119)))

(declare-fun tb!209571 () Bool)

(declare-fun t!296298 () Bool)

(assert (=> (and b!3639343 (= (toChars!7881 (transformation!5730 (rule!8510 token!511))) (toChars!7881 (transformation!5730 (rule!8510 (_1!22246 lt!1259876))))) t!296298) tb!209571))

(declare-fun result!255258 () Bool)

(assert (= result!255258 result!255250))

(assert (=> d!1070128 t!296298))

(declare-fun b_and!268121 () Bool)

(assert (= b_and!268089 (and (=> t!296298 result!255258) b_and!268121)))

(declare-fun m!4142423 () Bool)

(assert (=> d!1070128 m!4142423))

(declare-fun m!4142425 () Bool)

(assert (=> d!1070128 m!4142425))

(assert (=> b!3639330 d!1070128))

(declare-fun d!1070130 () Bool)

(assert (=> d!1070130 (= (get!12564 lt!1259871) (v!37912 lt!1259871))))

(assert (=> b!3639330 d!1070130))

(declare-fun d!1070132 () Bool)

(declare-fun lt!1259945 () Bool)

(assert (=> d!1070132 (= lt!1259945 (select (content!5519 lt!1259879) lt!1259864))))

(declare-fun e!2253044 () Bool)

(assert (=> d!1070132 (= lt!1259945 e!2253044)))

(declare-fun res!1475054 () Bool)

(assert (=> d!1070132 (=> (not res!1475054) (not e!2253044))))

(assert (=> d!1070132 (= res!1475054 ((_ is Cons!38358) lt!1259879))))

(assert (=> d!1070132 (= (contains!7525 lt!1259879 lt!1259864) lt!1259945)))

(declare-fun b!3639602 () Bool)

(declare-fun e!2253043 () Bool)

(assert (=> b!3639602 (= e!2253044 e!2253043)))

(declare-fun res!1475055 () Bool)

(assert (=> b!3639602 (=> res!1475055 e!2253043)))

(assert (=> b!3639602 (= res!1475055 (= (h!43778 lt!1259879) lt!1259864))))

(declare-fun b!3639603 () Bool)

(assert (=> b!3639603 (= e!2253043 (contains!7525 (t!296265 lt!1259879) lt!1259864))))

(assert (= (and d!1070132 res!1475054) b!3639602))

(assert (= (and b!3639602 (not res!1475055)) b!3639603))

(declare-fun m!4142427 () Bool)

(assert (=> d!1070132 m!4142427))

(declare-fun m!4142429 () Bool)

(assert (=> d!1070132 m!4142429))

(declare-fun m!4142431 () Bool)

(assert (=> b!3639603 m!4142431))

(assert (=> b!3639340 d!1070132))

(declare-fun b!3639661 () Bool)

(declare-fun e!2253079 () Bool)

(assert (=> b!3639661 (= e!2253079 true)))

(declare-fun d!1070134 () Bool)

(assert (=> d!1070134 e!2253079))

(assert (= d!1070134 b!3639661))

(declare-fun order!21067 () Int)

(declare-fun order!21069 () Int)

(declare-fun lambda!124376 () Int)

(declare-fun dynLambda!16681 (Int Int) Int)

(declare-fun dynLambda!16682 (Int Int) Int)

(assert (=> b!3639661 (< (dynLambda!16681 order!21067 (toValue!8022 (transformation!5730 (rule!8510 (_1!22246 lt!1259876))))) (dynLambda!16682 order!21069 lambda!124376))))

(declare-fun order!21071 () Int)

(declare-fun dynLambda!16683 (Int Int) Int)

(assert (=> b!3639661 (< (dynLambda!16683 order!21071 (toChars!7881 (transformation!5730 (rule!8510 (_1!22246 lt!1259876))))) (dynLambda!16682 order!21069 lambda!124376))))

(declare-fun dynLambda!16684 (Int BalanceConc!23036) TokenValue!5960)

(assert (=> d!1070134 (= (list!14196 (dynLambda!16680 (toChars!7881 (transformation!5730 (rule!8510 (_1!22246 lt!1259876)))) (dynLambda!16684 (toValue!8022 (transformation!5730 (rule!8510 (_1!22246 lt!1259876)))) lt!1259875))) (list!14196 lt!1259875))))

(declare-fun lt!1259968 () Unit!55196)

(declare-fun ForallOf!696 (Int BalanceConc!23036) Unit!55196)

(assert (=> d!1070134 (= lt!1259968 (ForallOf!696 lambda!124376 lt!1259875))))

(assert (=> d!1070134 (= (lemmaSemiInverse!1479 (transformation!5730 (rule!8510 (_1!22246 lt!1259876))) lt!1259875) lt!1259968)))

(declare-fun b_lambda!107873 () Bool)

(assert (=> (not b_lambda!107873) (not d!1070134)))

(declare-fun tb!209597 () Bool)

(declare-fun t!296324 () Bool)

(assert (=> (and b!3639339 (= (toChars!7881 (transformation!5730 (h!43779 rules!3307))) (toChars!7881 (transformation!5730 (rule!8510 (_1!22246 lt!1259876))))) t!296324) tb!209597))

(declare-fun e!2253083 () Bool)

(declare-fun b!3639671 () Bool)

(declare-fun tp!1110471 () Bool)

(assert (=> b!3639671 (= e!2253083 (and (inv!51795 (c!629283 (dynLambda!16680 (toChars!7881 (transformation!5730 (rule!8510 (_1!22246 lt!1259876)))) (dynLambda!16684 (toValue!8022 (transformation!5730 (rule!8510 (_1!22246 lt!1259876)))) lt!1259875)))) tp!1110471))))

(declare-fun result!255284 () Bool)

(assert (=> tb!209597 (= result!255284 (and (inv!51796 (dynLambda!16680 (toChars!7881 (transformation!5730 (rule!8510 (_1!22246 lt!1259876)))) (dynLambda!16684 (toValue!8022 (transformation!5730 (rule!8510 (_1!22246 lt!1259876)))) lt!1259875))) e!2253083))))

(assert (= tb!209597 b!3639671))

(declare-fun m!4142491 () Bool)

(assert (=> b!3639671 m!4142491))

(declare-fun m!4142493 () Bool)

(assert (=> tb!209597 m!4142493))

(assert (=> d!1070134 t!296324))

(declare-fun b_and!268163 () Bool)

(assert (= b_and!268115 (and (=> t!296324 result!255284) b_and!268163)))

(declare-fun tb!209599 () Bool)

(declare-fun t!296326 () Bool)

(assert (=> (and b!3639348 (= (toChars!7881 (transformation!5730 rule!403)) (toChars!7881 (transformation!5730 (rule!8510 (_1!22246 lt!1259876))))) t!296326) tb!209599))

(declare-fun result!255286 () Bool)

(assert (= result!255286 result!255284))

(assert (=> d!1070134 t!296326))

(declare-fun b_and!268165 () Bool)

(assert (= b_and!268117 (and (=> t!296326 result!255286) b_and!268165)))

(declare-fun t!296328 () Bool)

(declare-fun tb!209601 () Bool)

(assert (=> (and b!3639328 (= (toChars!7881 (transformation!5730 anOtherTypeRule!33)) (toChars!7881 (transformation!5730 (rule!8510 (_1!22246 lt!1259876))))) t!296328) tb!209601))

(declare-fun result!255288 () Bool)

(assert (= result!255288 result!255284))

(assert (=> d!1070134 t!296328))

(declare-fun b_and!268167 () Bool)

(assert (= b_and!268119 (and (=> t!296328 result!255288) b_and!268167)))

(declare-fun t!296330 () Bool)

(declare-fun tb!209603 () Bool)

(assert (=> (and b!3639343 (= (toChars!7881 (transformation!5730 (rule!8510 token!511))) (toChars!7881 (transformation!5730 (rule!8510 (_1!22246 lt!1259876))))) t!296330) tb!209603))

(declare-fun result!255290 () Bool)

(assert (= result!255290 result!255284))

(assert (=> d!1070134 t!296330))

(declare-fun b_and!268169 () Bool)

(assert (= b_and!268121 (and (=> t!296330 result!255290) b_and!268169)))

(declare-fun b_lambda!107875 () Bool)

(assert (=> (not b_lambda!107875) (not d!1070134)))

(declare-fun t!296332 () Bool)

(declare-fun tb!209605 () Bool)

(assert (=> (and b!3639339 (= (toValue!8022 (transformation!5730 (h!43779 rules!3307))) (toValue!8022 (transformation!5730 (rule!8510 (_1!22246 lt!1259876))))) t!296332) tb!209605))

(declare-fun result!255292 () Bool)

(assert (=> tb!209605 (= result!255292 (inv!21 (dynLambda!16684 (toValue!8022 (transformation!5730 (rule!8510 (_1!22246 lt!1259876)))) lt!1259875)))))

(declare-fun m!4142495 () Bool)

(assert (=> tb!209605 m!4142495))

(assert (=> d!1070134 t!296332))

(declare-fun b_and!268171 () Bool)

(assert (= b_and!268075 (and (=> t!296332 result!255292) b_and!268171)))

(declare-fun t!296334 () Bool)

(declare-fun tb!209607 () Bool)

(assert (=> (and b!3639348 (= (toValue!8022 (transformation!5730 rule!403)) (toValue!8022 (transformation!5730 (rule!8510 (_1!22246 lt!1259876))))) t!296334) tb!209607))

(declare-fun result!255296 () Bool)

(assert (= result!255296 result!255292))

(assert (=> d!1070134 t!296334))

(declare-fun b_and!268173 () Bool)

(assert (= b_and!268079 (and (=> t!296334 result!255296) b_and!268173)))

(declare-fun t!296336 () Bool)

(declare-fun tb!209609 () Bool)

(assert (=> (and b!3639328 (= (toValue!8022 (transformation!5730 anOtherTypeRule!33)) (toValue!8022 (transformation!5730 (rule!8510 (_1!22246 lt!1259876))))) t!296336) tb!209609))

(declare-fun result!255298 () Bool)

(assert (= result!255298 result!255292))

(assert (=> d!1070134 t!296336))

(declare-fun b_and!268175 () Bool)

(assert (= b_and!268083 (and (=> t!296336 result!255298) b_and!268175)))

(declare-fun tb!209611 () Bool)

(declare-fun t!296338 () Bool)

(assert (=> (and b!3639343 (= (toValue!8022 (transformation!5730 (rule!8510 token!511))) (toValue!8022 (transformation!5730 (rule!8510 (_1!22246 lt!1259876))))) t!296338) tb!209611))

(declare-fun result!255300 () Bool)

(assert (= result!255300 result!255292))

(assert (=> d!1070134 t!296338))

(declare-fun b_and!268177 () Bool)

(assert (= b_and!268087 (and (=> t!296338 result!255300) b_and!268177)))

(declare-fun m!4142519 () Bool)

(assert (=> d!1070134 m!4142519))

(declare-fun m!4142521 () Bool)

(assert (=> d!1070134 m!4142521))

(declare-fun m!4142523 () Bool)

(assert (=> d!1070134 m!4142523))

(assert (=> d!1070134 m!4142519))

(assert (=> d!1070134 m!4142521))

(assert (=> d!1070134 m!4142181))

(declare-fun m!4142527 () Bool)

(assert (=> d!1070134 m!4142527))

(assert (=> b!3639319 d!1070134))

(declare-fun d!1070164 () Bool)

(declare-fun fromListB!1975 (List!38482) BalanceConc!23036)

(assert (=> d!1070164 (= (seqFromList!4279 (originalCharacters!6444 (_1!22246 lt!1259876))) (fromListB!1975 (originalCharacters!6444 (_1!22246 lt!1259876))))))

(declare-fun bs!571903 () Bool)

(assert (= bs!571903 d!1070164))

(declare-fun m!4142543 () Bool)

(assert (=> bs!571903 m!4142543))

(assert (=> b!3639319 d!1070164))

(declare-fun b!3639686 () Bool)

(declare-fun e!2253097 () Bool)

(assert (=> b!3639686 (= e!2253097 true)))

(declare-fun d!1070172 () Bool)

(assert (=> d!1070172 e!2253097))

(assert (= d!1070172 b!3639686))

(declare-fun lambda!124379 () Int)

(declare-fun order!21073 () Int)

(declare-fun dynLambda!16685 (Int Int) Int)

(assert (=> b!3639686 (< (dynLambda!16681 order!21067 (toValue!8022 (transformation!5730 (rule!8510 (_1!22246 lt!1259876))))) (dynLambda!16685 order!21073 lambda!124379))))

(assert (=> b!3639686 (< (dynLambda!16683 order!21071 (toChars!7881 (transformation!5730 (rule!8510 (_1!22246 lt!1259876))))) (dynLambda!16685 order!21073 lambda!124379))))

(assert (=> d!1070172 (= (dynLambda!16684 (toValue!8022 (transformation!5730 (rule!8510 (_1!22246 lt!1259876)))) lt!1259875) (dynLambda!16684 (toValue!8022 (transformation!5730 (rule!8510 (_1!22246 lt!1259876)))) (seqFromList!4279 (originalCharacters!6444 (_1!22246 lt!1259876)))))))

(declare-fun lt!1259980 () Unit!55196)

(declare-fun Forall2of!354 (Int BalanceConc!23036 BalanceConc!23036) Unit!55196)

(assert (=> d!1070172 (= lt!1259980 (Forall2of!354 lambda!124379 lt!1259875 (seqFromList!4279 (originalCharacters!6444 (_1!22246 lt!1259876)))))))

(assert (=> d!1070172 (= (list!14196 lt!1259875) (list!14196 (seqFromList!4279 (originalCharacters!6444 (_1!22246 lt!1259876)))))))

(assert (=> d!1070172 (= (lemmaEqSameImage!913 (transformation!5730 (rule!8510 (_1!22246 lt!1259876))) lt!1259875 (seqFromList!4279 (originalCharacters!6444 (_1!22246 lt!1259876)))) lt!1259980)))

(declare-fun b_lambda!107879 () Bool)

(assert (=> (not b_lambda!107879) (not d!1070172)))

(assert (=> d!1070172 t!296332))

(declare-fun b_and!268187 () Bool)

(assert (= b_and!268171 (and (=> t!296332 result!255292) b_and!268187)))

(assert (=> d!1070172 t!296334))

(declare-fun b_and!268189 () Bool)

(assert (= b_and!268173 (and (=> t!296334 result!255296) b_and!268189)))

(assert (=> d!1070172 t!296336))

(declare-fun b_and!268191 () Bool)

(assert (= b_and!268175 (and (=> t!296336 result!255298) b_and!268191)))

(assert (=> d!1070172 t!296338))

(declare-fun b_and!268193 () Bool)

(assert (= b_and!268177 (and (=> t!296338 result!255300) b_and!268193)))

(declare-fun b_lambda!107881 () Bool)

(assert (=> (not b_lambda!107881) (not d!1070172)))

(declare-fun tb!209613 () Bool)

(declare-fun t!296340 () Bool)

(assert (=> (and b!3639339 (= (toValue!8022 (transformation!5730 (h!43779 rules!3307))) (toValue!8022 (transformation!5730 (rule!8510 (_1!22246 lt!1259876))))) t!296340) tb!209613))

(declare-fun result!255302 () Bool)

(assert (=> tb!209613 (= result!255302 (inv!21 (dynLambda!16684 (toValue!8022 (transformation!5730 (rule!8510 (_1!22246 lt!1259876)))) (seqFromList!4279 (originalCharacters!6444 (_1!22246 lt!1259876))))))))

(declare-fun m!4142551 () Bool)

(assert (=> tb!209613 m!4142551))

(assert (=> d!1070172 t!296340))

(declare-fun b_and!268195 () Bool)

(assert (= b_and!268187 (and (=> t!296340 result!255302) b_and!268195)))

(declare-fun tb!209615 () Bool)

(declare-fun t!296342 () Bool)

(assert (=> (and b!3639348 (= (toValue!8022 (transformation!5730 rule!403)) (toValue!8022 (transformation!5730 (rule!8510 (_1!22246 lt!1259876))))) t!296342) tb!209615))

(declare-fun result!255304 () Bool)

(assert (= result!255304 result!255302))

(assert (=> d!1070172 t!296342))

(declare-fun b_and!268197 () Bool)

(assert (= b_and!268189 (and (=> t!296342 result!255304) b_and!268197)))

(declare-fun tb!209617 () Bool)

(declare-fun t!296344 () Bool)

(assert (=> (and b!3639328 (= (toValue!8022 (transformation!5730 anOtherTypeRule!33)) (toValue!8022 (transformation!5730 (rule!8510 (_1!22246 lt!1259876))))) t!296344) tb!209617))

(declare-fun result!255306 () Bool)

(assert (= result!255306 result!255302))

(assert (=> d!1070172 t!296344))

(declare-fun b_and!268199 () Bool)

(assert (= b_and!268191 (and (=> t!296344 result!255306) b_and!268199)))

(declare-fun t!296346 () Bool)

(declare-fun tb!209619 () Bool)

(assert (=> (and b!3639343 (= (toValue!8022 (transformation!5730 (rule!8510 token!511))) (toValue!8022 (transformation!5730 (rule!8510 (_1!22246 lt!1259876))))) t!296346) tb!209619))

(declare-fun result!255308 () Bool)

(assert (= result!255308 result!255302))

(assert (=> d!1070172 t!296346))

(declare-fun b_and!268201 () Bool)

(assert (= b_and!268193 (and (=> t!296346 result!255308) b_and!268201)))

(assert (=> d!1070172 m!4142205))

(declare-fun m!4142553 () Bool)

(assert (=> d!1070172 m!4142553))

(assert (=> d!1070172 m!4142181))

(assert (=> d!1070172 m!4142205))

(declare-fun m!4142555 () Bool)

(assert (=> d!1070172 m!4142555))

(assert (=> d!1070172 m!4142519))

(assert (=> d!1070172 m!4142205))

(declare-fun m!4142557 () Bool)

(assert (=> d!1070172 m!4142557))

(assert (=> b!3639319 d!1070172))

(declare-fun d!1070178 () Bool)

(declare-fun lt!1259985 () Int)

(assert (=> d!1070178 (= lt!1259985 (size!29276 (list!14196 lt!1259875)))))

(declare-fun size!29279 (Conc!11711) Int)

(assert (=> d!1070178 (= lt!1259985 (size!29279 (c!629283 lt!1259875)))))

(assert (=> d!1070178 (= (size!29277 lt!1259875) lt!1259985)))

(declare-fun bs!571905 () Bool)

(assert (= bs!571905 d!1070178))

(assert (=> bs!571905 m!4142181))

(assert (=> bs!571905 m!4142181))

(declare-fun m!4142559 () Bool)

(assert (=> bs!571905 m!4142559))

(declare-fun m!4142561 () Bool)

(assert (=> bs!571905 m!4142561))

(assert (=> b!3639319 d!1070178))

(declare-fun d!1070180 () Bool)

(assert (=> d!1070180 (= (apply!9232 (transformation!5730 (rule!8510 (_1!22246 lt!1259876))) lt!1259875) (dynLambda!16684 (toValue!8022 (transformation!5730 (rule!8510 (_1!22246 lt!1259876)))) lt!1259875))))

(declare-fun b_lambda!107883 () Bool)

(assert (=> (not b_lambda!107883) (not d!1070180)))

(assert (=> d!1070180 t!296332))

(declare-fun b_and!268203 () Bool)

(assert (= b_and!268195 (and (=> t!296332 result!255292) b_and!268203)))

(assert (=> d!1070180 t!296334))

(declare-fun b_and!268205 () Bool)

(assert (= b_and!268197 (and (=> t!296334 result!255296) b_and!268205)))

(assert (=> d!1070180 t!296336))

(declare-fun b_and!268207 () Bool)

(assert (= b_and!268199 (and (=> t!296336 result!255298) b_and!268207)))

(assert (=> d!1070180 t!296338))

(declare-fun b_and!268209 () Bool)

(assert (= b_and!268201 (and (=> t!296338 result!255300) b_and!268209)))

(assert (=> d!1070180 m!4142519))

(assert (=> b!3639319 d!1070180))

(declare-fun d!1070182 () Bool)

(assert (=> d!1070182 (= (size!29275 (_1!22246 lt!1259876)) (size!29276 (originalCharacters!6444 (_1!22246 lt!1259876))))))

(declare-fun Unit!55201 () Unit!55196)

(assert (=> d!1070182 (= (lemmaCharactersSize!775 (_1!22246 lt!1259876)) Unit!55201)))

(declare-fun bs!571906 () Bool)

(assert (= bs!571906 d!1070182))

(declare-fun m!4142563 () Bool)

(assert (=> bs!571906 m!4142563))

(assert (=> b!3639319 d!1070182))

(declare-fun d!1070184 () Bool)

(assert (=> d!1070184 (not (matchR!5058 (regex!5730 rule!403) lt!1259879))))

(declare-fun lt!1259992 () Unit!55196)

(declare-fun choose!21390 (Regex!10489 List!38482 C!21164) Unit!55196)

(assert (=> d!1070184 (= lt!1259992 (choose!21390 (regex!5730 rule!403) lt!1259879 lt!1259864))))

(assert (=> d!1070184 (validRegex!4801 (regex!5730 rule!403))))

(assert (=> d!1070184 (= (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!678 (regex!5730 rule!403) lt!1259879 lt!1259864) lt!1259992)))

(declare-fun bs!571908 () Bool)

(assert (= bs!571908 d!1070184))

(assert (=> bs!571908 m!4142121))

(declare-fun m!4142575 () Bool)

(assert (=> bs!571908 m!4142575))

(declare-fun m!4142577 () Bool)

(assert (=> bs!571908 m!4142577))

(assert (=> b!3639338 d!1070184))

(declare-fun d!1070190 () Bool)

(declare-fun isEmpty!22711 (Option!8088) Bool)

(assert (=> d!1070190 (= (isDefined!6320 lt!1259870) (not (isEmpty!22711 lt!1259870)))))

(declare-fun bs!571909 () Bool)

(assert (= bs!571909 d!1070190))

(declare-fun m!4142579 () Bool)

(assert (=> bs!571909 m!4142579))

(assert (=> b!3639316 d!1070190))

(declare-fun b!3639712 () Bool)

(declare-fun res!1475123 () Bool)

(declare-fun e!2253108 () Bool)

(assert (=> b!3639712 (=> (not res!1475123) (not e!2253108))))

(declare-fun lt!1260007 () Option!8088)

(assert (=> b!3639712 (= res!1475123 (= (value!183765 (_1!22246 (get!12563 lt!1260007))) (apply!9232 (transformation!5730 (rule!8510 (_1!22246 (get!12563 lt!1260007)))) (seqFromList!4279 (originalCharacters!6444 (_1!22246 (get!12563 lt!1260007)))))))))

(declare-fun b!3639713 () Bool)

(declare-fun res!1475124 () Bool)

(assert (=> b!3639713 (=> (not res!1475124) (not e!2253108))))

(assert (=> b!3639713 (= res!1475124 (matchR!5058 (regex!5730 (rule!8510 (_1!22246 (get!12563 lt!1260007)))) (list!14196 (charsOf!3744 (_1!22246 (get!12563 lt!1260007))))))))

(declare-fun bm!263099 () Bool)

(declare-fun call!263104 () Option!8088)

(assert (=> bm!263099 (= call!263104 (maxPrefixOneRule!1991 thiss!23823 (h!43779 rules!3307) lt!1259879))))

(declare-fun b!3639714 () Bool)

(declare-fun e!2253109 () Bool)

(assert (=> b!3639714 (= e!2253109 e!2253108)))

(declare-fun res!1475129 () Bool)

(assert (=> b!3639714 (=> (not res!1475129) (not e!2253108))))

(assert (=> b!3639714 (= res!1475129 (isDefined!6320 lt!1260007))))

(declare-fun b!3639715 () Bool)

(declare-fun res!1475125 () Bool)

(assert (=> b!3639715 (=> (not res!1475125) (not e!2253108))))

(assert (=> b!3639715 (= res!1475125 (< (size!29276 (_2!22246 (get!12563 lt!1260007))) (size!29276 lt!1259879)))))

(declare-fun b!3639716 () Bool)

(declare-fun e!2253110 () Option!8088)

(assert (=> b!3639716 (= e!2253110 call!263104)))

(declare-fun b!3639717 () Bool)

(declare-fun res!1475126 () Bool)

(assert (=> b!3639717 (=> (not res!1475126) (not e!2253108))))

(assert (=> b!3639717 (= res!1475126 (= (list!14196 (charsOf!3744 (_1!22246 (get!12563 lt!1260007)))) (originalCharacters!6444 (_1!22246 (get!12563 lt!1260007)))))))

(declare-fun b!3639711 () Bool)

(declare-fun lt!1260005 () Option!8088)

(declare-fun lt!1260006 () Option!8088)

(assert (=> b!3639711 (= e!2253110 (ite (and ((_ is None!8087) lt!1260005) ((_ is None!8087) lt!1260006)) None!8087 (ite ((_ is None!8087) lt!1260006) lt!1260005 (ite ((_ is None!8087) lt!1260005) lt!1260006 (ite (>= (size!29275 (_1!22246 (v!37911 lt!1260005))) (size!29275 (_1!22246 (v!37911 lt!1260006)))) lt!1260005 lt!1260006)))))))

(assert (=> b!3639711 (= lt!1260005 call!263104)))

(assert (=> b!3639711 (= lt!1260006 (maxPrefix!2853 thiss!23823 (t!296266 rules!3307) lt!1259879))))

(declare-fun d!1070192 () Bool)

(assert (=> d!1070192 e!2253109))

(declare-fun res!1475128 () Bool)

(assert (=> d!1070192 (=> res!1475128 e!2253109)))

(assert (=> d!1070192 (= res!1475128 (isEmpty!22711 lt!1260007))))

(assert (=> d!1070192 (= lt!1260007 e!2253110)))

(declare-fun c!629350 () Bool)

(assert (=> d!1070192 (= c!629350 (and ((_ is Cons!38359) rules!3307) ((_ is Nil!38359) (t!296266 rules!3307))))))

(declare-fun lt!1260004 () Unit!55196)

(declare-fun lt!1260003 () Unit!55196)

(assert (=> d!1070192 (= lt!1260004 lt!1260003)))

(assert (=> d!1070192 (isPrefix!3093 lt!1259879 lt!1259879)))

(declare-fun lemmaIsPrefixRefl!1960 (List!38482 List!38482) Unit!55196)

(assert (=> d!1070192 (= lt!1260003 (lemmaIsPrefixRefl!1960 lt!1259879 lt!1259879))))

(declare-fun rulesValidInductive!2025 (LexerInterface!5319 List!38483) Bool)

(assert (=> d!1070192 (rulesValidInductive!2025 thiss!23823 rules!3307)))

(assert (=> d!1070192 (= (maxPrefix!2853 thiss!23823 rules!3307 lt!1259879) lt!1260007)))

(declare-fun b!3639718 () Bool)

(assert (=> b!3639718 (= e!2253108 (contains!7526 rules!3307 (rule!8510 (_1!22246 (get!12563 lt!1260007)))))))

(declare-fun b!3639719 () Bool)

(declare-fun res!1475127 () Bool)

(assert (=> b!3639719 (=> (not res!1475127) (not e!2253108))))

(assert (=> b!3639719 (= res!1475127 (= (++!9546 (list!14196 (charsOf!3744 (_1!22246 (get!12563 lt!1260007)))) (_2!22246 (get!12563 lt!1260007))) lt!1259879))))

(assert (= (and d!1070192 c!629350) b!3639716))

(assert (= (and d!1070192 (not c!629350)) b!3639711))

(assert (= (or b!3639716 b!3639711) bm!263099))

(assert (= (and d!1070192 (not res!1475128)) b!3639714))

(assert (= (and b!3639714 res!1475129) b!3639717))

(assert (= (and b!3639717 res!1475126) b!3639715))

(assert (= (and b!3639715 res!1475125) b!3639719))

(assert (= (and b!3639719 res!1475127) b!3639712))

(assert (= (and b!3639712 res!1475123) b!3639713))

(assert (= (and b!3639713 res!1475124) b!3639718))

(declare-fun m!4142581 () Bool)

(assert (=> b!3639715 m!4142581))

(declare-fun m!4142583 () Bool)

(assert (=> b!3639715 m!4142583))

(declare-fun m!4142585 () Bool)

(assert (=> b!3639715 m!4142585))

(assert (=> b!3639719 m!4142581))

(declare-fun m!4142587 () Bool)

(assert (=> b!3639719 m!4142587))

(assert (=> b!3639719 m!4142587))

(declare-fun m!4142589 () Bool)

(assert (=> b!3639719 m!4142589))

(assert (=> b!3639719 m!4142589))

(declare-fun m!4142591 () Bool)

(assert (=> b!3639719 m!4142591))

(assert (=> b!3639713 m!4142581))

(assert (=> b!3639713 m!4142587))

(assert (=> b!3639713 m!4142587))

(assert (=> b!3639713 m!4142589))

(assert (=> b!3639713 m!4142589))

(declare-fun m!4142593 () Bool)

(assert (=> b!3639713 m!4142593))

(assert (=> b!3639718 m!4142581))

(declare-fun m!4142595 () Bool)

(assert (=> b!3639718 m!4142595))

(declare-fun m!4142597 () Bool)

(assert (=> b!3639711 m!4142597))

(declare-fun m!4142599 () Bool)

(assert (=> bm!263099 m!4142599))

(assert (=> b!3639717 m!4142581))

(assert (=> b!3639717 m!4142587))

(assert (=> b!3639717 m!4142587))

(assert (=> b!3639717 m!4142589))

(declare-fun m!4142601 () Bool)

(assert (=> b!3639714 m!4142601))

(assert (=> b!3639712 m!4142581))

(declare-fun m!4142603 () Bool)

(assert (=> b!3639712 m!4142603))

(assert (=> b!3639712 m!4142603))

(declare-fun m!4142605 () Bool)

(assert (=> b!3639712 m!4142605))

(declare-fun m!4142607 () Bool)

(assert (=> d!1070192 m!4142607))

(declare-fun m!4142609 () Bool)

(assert (=> d!1070192 m!4142609))

(declare-fun m!4142611 () Bool)

(assert (=> d!1070192 m!4142611))

(declare-fun m!4142613 () Bool)

(assert (=> d!1070192 m!4142613))

(assert (=> b!3639316 d!1070192))

(declare-fun d!1070194 () Bool)

(assert (=> d!1070194 (= (list!14196 (charsOf!3744 token!511)) (list!14198 (c!629283 (charsOf!3744 token!511))))))

(declare-fun bs!571910 () Bool)

(assert (= bs!571910 d!1070194))

(declare-fun m!4142615 () Bool)

(assert (=> bs!571910 m!4142615))

(assert (=> b!3639316 d!1070194))

(declare-fun d!1070196 () Bool)

(declare-fun lt!1260008 () BalanceConc!23036)

(assert (=> d!1070196 (= (list!14196 lt!1260008) (originalCharacters!6444 token!511))))

(assert (=> d!1070196 (= lt!1260008 (dynLambda!16680 (toChars!7881 (transformation!5730 (rule!8510 token!511))) (value!183765 token!511)))))

(assert (=> d!1070196 (= (charsOf!3744 token!511) lt!1260008)))

(declare-fun b_lambda!107885 () Bool)

(assert (=> (not b_lambda!107885) (not d!1070196)))

(declare-fun t!296348 () Bool)

(declare-fun tb!209621 () Bool)

(assert (=> (and b!3639339 (= (toChars!7881 (transformation!5730 (h!43779 rules!3307))) (toChars!7881 (transformation!5730 (rule!8510 token!511)))) t!296348) tb!209621))

(declare-fun b!3639720 () Bool)

(declare-fun e!2253111 () Bool)

(declare-fun tp!1110472 () Bool)

(assert (=> b!3639720 (= e!2253111 (and (inv!51795 (c!629283 (dynLambda!16680 (toChars!7881 (transformation!5730 (rule!8510 token!511))) (value!183765 token!511)))) tp!1110472))))

(declare-fun result!255310 () Bool)

(assert (=> tb!209621 (= result!255310 (and (inv!51796 (dynLambda!16680 (toChars!7881 (transformation!5730 (rule!8510 token!511))) (value!183765 token!511))) e!2253111))))

(assert (= tb!209621 b!3639720))

(declare-fun m!4142617 () Bool)

(assert (=> b!3639720 m!4142617))

(declare-fun m!4142619 () Bool)

(assert (=> tb!209621 m!4142619))

(assert (=> d!1070196 t!296348))

(declare-fun b_and!268211 () Bool)

(assert (= b_and!268163 (and (=> t!296348 result!255310) b_and!268211)))

(declare-fun tb!209623 () Bool)

(declare-fun t!296350 () Bool)

(assert (=> (and b!3639348 (= (toChars!7881 (transformation!5730 rule!403)) (toChars!7881 (transformation!5730 (rule!8510 token!511)))) t!296350) tb!209623))

(declare-fun result!255312 () Bool)

(assert (= result!255312 result!255310))

(assert (=> d!1070196 t!296350))

(declare-fun b_and!268213 () Bool)

(assert (= b_and!268165 (and (=> t!296350 result!255312) b_and!268213)))

(declare-fun tb!209625 () Bool)

(declare-fun t!296352 () Bool)

(assert (=> (and b!3639328 (= (toChars!7881 (transformation!5730 anOtherTypeRule!33)) (toChars!7881 (transformation!5730 (rule!8510 token!511)))) t!296352) tb!209625))

(declare-fun result!255314 () Bool)

(assert (= result!255314 result!255310))

(assert (=> d!1070196 t!296352))

(declare-fun b_and!268215 () Bool)

(assert (= b_and!268167 (and (=> t!296352 result!255314) b_and!268215)))

(declare-fun t!296354 () Bool)

(declare-fun tb!209627 () Bool)

(assert (=> (and b!3639343 (= (toChars!7881 (transformation!5730 (rule!8510 token!511))) (toChars!7881 (transformation!5730 (rule!8510 token!511)))) t!296354) tb!209627))

(declare-fun result!255316 () Bool)

(assert (= result!255316 result!255310))

(assert (=> d!1070196 t!296354))

(declare-fun b_and!268217 () Bool)

(assert (= b_and!268169 (and (=> t!296354 result!255316) b_and!268217)))

(declare-fun m!4142621 () Bool)

(assert (=> d!1070196 m!4142621))

(declare-fun m!4142623 () Bool)

(assert (=> d!1070196 m!4142623))

(assert (=> b!3639316 d!1070196))

(declare-fun d!1070198 () Bool)

(declare-fun lt!1260009 () Bool)

(assert (=> d!1070198 (= lt!1260009 (select (content!5519 (usedCharacters!942 (regex!5730 anOtherTypeRule!33))) lt!1259878))))

(declare-fun e!2253113 () Bool)

(assert (=> d!1070198 (= lt!1260009 e!2253113)))

(declare-fun res!1475130 () Bool)

(assert (=> d!1070198 (=> (not res!1475130) (not e!2253113))))

(assert (=> d!1070198 (= res!1475130 ((_ is Cons!38358) (usedCharacters!942 (regex!5730 anOtherTypeRule!33))))))

(assert (=> d!1070198 (= (contains!7525 (usedCharacters!942 (regex!5730 anOtherTypeRule!33)) lt!1259878) lt!1260009)))

(declare-fun b!3639721 () Bool)

(declare-fun e!2253112 () Bool)

(assert (=> b!3639721 (= e!2253113 e!2253112)))

(declare-fun res!1475131 () Bool)

(assert (=> b!3639721 (=> res!1475131 e!2253112)))

(assert (=> b!3639721 (= res!1475131 (= (h!43778 (usedCharacters!942 (regex!5730 anOtherTypeRule!33))) lt!1259878))))

(declare-fun b!3639722 () Bool)

(assert (=> b!3639722 (= e!2253112 (contains!7525 (t!296265 (usedCharacters!942 (regex!5730 anOtherTypeRule!33))) lt!1259878))))

(assert (= (and d!1070198 res!1475130) b!3639721))

(assert (= (and b!3639721 (not res!1475131)) b!3639722))

(assert (=> d!1070198 m!4142117))

(declare-fun m!4142625 () Bool)

(assert (=> d!1070198 m!4142625))

(declare-fun m!4142627 () Bool)

(assert (=> d!1070198 m!4142627))

(declare-fun m!4142629 () Bool)

(assert (=> b!3639722 m!4142629))

(assert (=> b!3639337 d!1070198))

(declare-fun bm!263108 () Bool)

(declare-fun call!263116 () List!38482)

(declare-fun c!629359 () Bool)

(declare-fun c!629361 () Bool)

(assert (=> bm!263108 (= call!263116 (usedCharacters!942 (ite c!629359 (reg!10818 (regex!5730 anOtherTypeRule!33)) (ite c!629361 (regTwo!21491 (regex!5730 anOtherTypeRule!33)) (regOne!21490 (regex!5730 anOtherTypeRule!33))))))))

(declare-fun b!3639739 () Bool)

(declare-fun e!2253124 () List!38482)

(declare-fun call!263113 () List!38482)

(assert (=> b!3639739 (= e!2253124 call!263113)))

(declare-fun bm!263109 () Bool)

(declare-fun call!263115 () List!38482)

(assert (=> bm!263109 (= call!263115 (usedCharacters!942 (ite c!629361 (regOne!21491 (regex!5730 anOtherTypeRule!33)) (regTwo!21490 (regex!5730 anOtherTypeRule!33)))))))

(declare-fun call!263114 () List!38482)

(declare-fun bm!263110 () Bool)

(assert (=> bm!263110 (= call!263113 (++!9546 (ite c!629361 call!263115 call!263114) (ite c!629361 call!263114 call!263115)))))

(declare-fun b!3639740 () Bool)

(declare-fun e!2253123 () List!38482)

(assert (=> b!3639740 (= e!2253123 (Cons!38358 (c!629282 (regex!5730 anOtherTypeRule!33)) Nil!38358))))

(declare-fun b!3639741 () Bool)

(assert (=> b!3639741 (= e!2253124 call!263113)))

(declare-fun b!3639742 () Bool)

(declare-fun e!2253125 () List!38482)

(assert (=> b!3639742 (= e!2253125 e!2253124)))

(assert (=> b!3639742 (= c!629361 ((_ is Union!10489) (regex!5730 anOtherTypeRule!33)))))

(declare-fun b!3639743 () Bool)

(assert (=> b!3639743 (= c!629359 ((_ is Star!10489) (regex!5730 anOtherTypeRule!33)))))

(assert (=> b!3639743 (= e!2253123 e!2253125)))

(declare-fun bm!263111 () Bool)

(assert (=> bm!263111 (= call!263114 call!263116)))

(declare-fun b!3639744 () Bool)

(assert (=> b!3639744 (= e!2253125 call!263116)))

(declare-fun d!1070200 () Bool)

(declare-fun c!629360 () Bool)

(assert (=> d!1070200 (= c!629360 (or ((_ is EmptyExpr!10489) (regex!5730 anOtherTypeRule!33)) ((_ is EmptyLang!10489) (regex!5730 anOtherTypeRule!33))))))

(declare-fun e!2253122 () List!38482)

(assert (=> d!1070200 (= (usedCharacters!942 (regex!5730 anOtherTypeRule!33)) e!2253122)))

(declare-fun b!3639745 () Bool)

(assert (=> b!3639745 (= e!2253122 Nil!38358)))

(declare-fun b!3639746 () Bool)

(assert (=> b!3639746 (= e!2253122 e!2253123)))

(declare-fun c!629362 () Bool)

(assert (=> b!3639746 (= c!629362 ((_ is ElementMatch!10489) (regex!5730 anOtherTypeRule!33)))))

(assert (= (and d!1070200 c!629360) b!3639745))

(assert (= (and d!1070200 (not c!629360)) b!3639746))

(assert (= (and b!3639746 c!629362) b!3639740))

(assert (= (and b!3639746 (not c!629362)) b!3639743))

(assert (= (and b!3639743 c!629359) b!3639744))

(assert (= (and b!3639743 (not c!629359)) b!3639742))

(assert (= (and b!3639742 c!629361) b!3639739))

(assert (= (and b!3639742 (not c!629361)) b!3639741))

(assert (= (or b!3639739 b!3639741) bm!263109))

(assert (= (or b!3639739 b!3639741) bm!263111))

(assert (= (or b!3639739 b!3639741) bm!263110))

(assert (= (or b!3639744 bm!263111) bm!263108))

(declare-fun m!4142631 () Bool)

(assert (=> bm!263108 m!4142631))

(declare-fun m!4142633 () Bool)

(assert (=> bm!263109 m!4142633))

(declare-fun m!4142635 () Bool)

(assert (=> bm!263110 m!4142635))

(assert (=> b!3639337 d!1070200))

(declare-fun b!3639747 () Bool)

(declare-fun res!1475133 () Bool)

(declare-fun e!2253130 () Bool)

(assert (=> b!3639747 (=> (not res!1475133) (not e!2253130))))

(declare-fun call!263117 () Bool)

(assert (=> b!3639747 (= res!1475133 (not call!263117))))

(declare-fun b!3639748 () Bool)

(declare-fun res!1475136 () Bool)

(declare-fun e!2253127 () Bool)

(assert (=> b!3639748 (=> res!1475136 e!2253127)))

(assert (=> b!3639748 (= res!1475136 e!2253130)))

(declare-fun res!1475137 () Bool)

(assert (=> b!3639748 (=> (not res!1475137) (not e!2253130))))

(declare-fun lt!1260010 () Bool)

(assert (=> b!3639748 (= res!1475137 lt!1260010)))

(declare-fun b!3639749 () Bool)

(declare-fun e!2253131 () Bool)

(assert (=> b!3639749 (= e!2253131 (not lt!1260010))))

(declare-fun b!3639750 () Bool)

(declare-fun res!1475134 () Bool)

(declare-fun e!2253132 () Bool)

(assert (=> b!3639750 (=> res!1475134 e!2253132)))

(assert (=> b!3639750 (= res!1475134 (not (isEmpty!22708 (tail!5637 lt!1259868))))))

(declare-fun b!3639751 () Bool)

(declare-fun e!2253129 () Bool)

(assert (=> b!3639751 (= e!2253129 (nullable!3639 (regex!5730 (rule!8510 (_1!22246 lt!1259876)))))))

(declare-fun b!3639752 () Bool)

(declare-fun e!2253128 () Bool)

(assert (=> b!3639752 (= e!2253128 e!2253131)))

(declare-fun c!629363 () Bool)

(assert (=> b!3639752 (= c!629363 ((_ is EmptyLang!10489) (regex!5730 (rule!8510 (_1!22246 lt!1259876)))))))

(declare-fun d!1070202 () Bool)

(assert (=> d!1070202 e!2253128))

(declare-fun c!629364 () Bool)

(assert (=> d!1070202 (= c!629364 ((_ is EmptyExpr!10489) (regex!5730 (rule!8510 (_1!22246 lt!1259876)))))))

(assert (=> d!1070202 (= lt!1260010 e!2253129)))

(declare-fun c!629365 () Bool)

(assert (=> d!1070202 (= c!629365 (isEmpty!22708 lt!1259868))))

(assert (=> d!1070202 (validRegex!4801 (regex!5730 (rule!8510 (_1!22246 lt!1259876))))))

(assert (=> d!1070202 (= (matchR!5058 (regex!5730 (rule!8510 (_1!22246 lt!1259876))) lt!1259868) lt!1260010)))

(declare-fun b!3639753 () Bool)

(assert (=> b!3639753 (= e!2253132 (not (= (head!7726 lt!1259868) (c!629282 (regex!5730 (rule!8510 (_1!22246 lt!1259876)))))))))

(declare-fun b!3639754 () Bool)

(assert (=> b!3639754 (= e!2253129 (matchR!5058 (derivativeStep!3188 (regex!5730 (rule!8510 (_1!22246 lt!1259876))) (head!7726 lt!1259868)) (tail!5637 lt!1259868)))))

(declare-fun b!3639755 () Bool)

(declare-fun e!2253126 () Bool)

(assert (=> b!3639755 (= e!2253127 e!2253126)))

(declare-fun res!1475138 () Bool)

(assert (=> b!3639755 (=> (not res!1475138) (not e!2253126))))

(assert (=> b!3639755 (= res!1475138 (not lt!1260010))))

(declare-fun b!3639756 () Bool)

(declare-fun res!1475135 () Bool)

(assert (=> b!3639756 (=> (not res!1475135) (not e!2253130))))

(assert (=> b!3639756 (= res!1475135 (isEmpty!22708 (tail!5637 lt!1259868)))))

(declare-fun b!3639757 () Bool)

(assert (=> b!3639757 (= e!2253128 (= lt!1260010 call!263117))))

(declare-fun bm!263112 () Bool)

(assert (=> bm!263112 (= call!263117 (isEmpty!22708 lt!1259868))))

(declare-fun b!3639758 () Bool)

(assert (=> b!3639758 (= e!2253126 e!2253132)))

(declare-fun res!1475132 () Bool)

(assert (=> b!3639758 (=> res!1475132 e!2253132)))

(assert (=> b!3639758 (= res!1475132 call!263117)))

(declare-fun b!3639759 () Bool)

(assert (=> b!3639759 (= e!2253130 (= (head!7726 lt!1259868) (c!629282 (regex!5730 (rule!8510 (_1!22246 lt!1259876))))))))

(declare-fun b!3639760 () Bool)

(declare-fun res!1475139 () Bool)

(assert (=> b!3639760 (=> res!1475139 e!2253127)))

(assert (=> b!3639760 (= res!1475139 (not ((_ is ElementMatch!10489) (regex!5730 (rule!8510 (_1!22246 lt!1259876))))))))

(assert (=> b!3639760 (= e!2253131 e!2253127)))

(assert (= (and d!1070202 c!629365) b!3639751))

(assert (= (and d!1070202 (not c!629365)) b!3639754))

(assert (= (and d!1070202 c!629364) b!3639757))

(assert (= (and d!1070202 (not c!629364)) b!3639752))

(assert (= (and b!3639752 c!629363) b!3639749))

(assert (= (and b!3639752 (not c!629363)) b!3639760))

(assert (= (and b!3639760 (not res!1475139)) b!3639748))

(assert (= (and b!3639748 res!1475137) b!3639747))

(assert (= (and b!3639747 res!1475133) b!3639756))

(assert (= (and b!3639756 res!1475135) b!3639759))

(assert (= (and b!3639748 (not res!1475136)) b!3639755))

(assert (= (and b!3639755 res!1475138) b!3639758))

(assert (= (and b!3639758 (not res!1475132)) b!3639750))

(assert (= (and b!3639750 (not res!1475134)) b!3639753))

(assert (= (or b!3639757 b!3639747 b!3639758) bm!263112))

(declare-fun m!4142637 () Bool)

(assert (=> bm!263112 m!4142637))

(assert (=> b!3639753 m!4142145))

(assert (=> b!3639754 m!4142145))

(assert (=> b!3639754 m!4142145))

(declare-fun m!4142639 () Bool)

(assert (=> b!3639754 m!4142639))

(declare-fun m!4142641 () Bool)

(assert (=> b!3639754 m!4142641))

(assert (=> b!3639754 m!4142639))

(assert (=> b!3639754 m!4142641))

(declare-fun m!4142643 () Bool)

(assert (=> b!3639754 m!4142643))

(assert (=> b!3639756 m!4142641))

(assert (=> b!3639756 m!4142641))

(declare-fun m!4142645 () Bool)

(assert (=> b!3639756 m!4142645))

(assert (=> b!3639759 m!4142145))

(assert (=> b!3639750 m!4142641))

(assert (=> b!3639750 m!4142641))

(assert (=> b!3639750 m!4142645))

(assert (=> d!1070202 m!4142637))

(declare-fun m!4142647 () Bool)

(assert (=> d!1070202 m!4142647))

(declare-fun m!4142649 () Bool)

(assert (=> b!3639751 m!4142649))

(assert (=> b!3639336 d!1070202))

(declare-fun d!1070204 () Bool)

(declare-fun res!1475142 () Bool)

(declare-fun e!2253135 () Bool)

(assert (=> d!1070204 (=> (not res!1475142) (not e!2253135))))

(declare-fun rulesValid!2196 (LexerInterface!5319 List!38483) Bool)

(assert (=> d!1070204 (= res!1475142 (rulesValid!2196 thiss!23823 rules!3307))))

(assert (=> d!1070204 (= (rulesInvariant!4716 thiss!23823 rules!3307) e!2253135)))

(declare-fun b!3639763 () Bool)

(declare-datatypes ((List!38486 0))(
  ( (Nil!38362) (Cons!38362 (h!43782 String!43134) (t!296389 List!38486)) )
))
(declare-fun noDuplicateTag!2192 (LexerInterface!5319 List!38483 List!38486) Bool)

(assert (=> b!3639763 (= e!2253135 (noDuplicateTag!2192 thiss!23823 rules!3307 Nil!38362))))

(assert (= (and d!1070204 res!1475142) b!3639763))

(declare-fun m!4142651 () Bool)

(assert (=> d!1070204 m!4142651))

(declare-fun m!4142653 () Bool)

(assert (=> b!3639763 m!4142653))

(assert (=> b!3639324 d!1070204))

(declare-fun d!1070206 () Bool)

(declare-fun lt!1260011 () Bool)

(assert (=> d!1070206 (= lt!1260011 (select (content!5518 rules!3307) rule!403))))

(declare-fun e!2253136 () Bool)

(assert (=> d!1070206 (= lt!1260011 e!2253136)))

(declare-fun res!1475144 () Bool)

(assert (=> d!1070206 (=> (not res!1475144) (not e!2253136))))

(assert (=> d!1070206 (= res!1475144 ((_ is Cons!38359) rules!3307))))

(assert (=> d!1070206 (= (contains!7526 rules!3307 rule!403) lt!1260011)))

(declare-fun b!3639764 () Bool)

(declare-fun e!2253137 () Bool)

(assert (=> b!3639764 (= e!2253136 e!2253137)))

(declare-fun res!1475143 () Bool)

(assert (=> b!3639764 (=> res!1475143 e!2253137)))

(assert (=> b!3639764 (= res!1475143 (= (h!43779 rules!3307) rule!403))))

(declare-fun b!3639765 () Bool)

(assert (=> b!3639765 (= e!2253137 (contains!7526 (t!296266 rules!3307) rule!403))))

(assert (= (and d!1070206 res!1475144) b!3639764))

(assert (= (and b!3639764 (not res!1475143)) b!3639765))

(assert (=> d!1070206 m!4142289))

(declare-fun m!4142655 () Bool)

(assert (=> d!1070206 m!4142655))

(declare-fun m!4142657 () Bool)

(assert (=> b!3639765 m!4142657))

(assert (=> b!3639345 d!1070206))

(declare-fun d!1070208 () Bool)

(assert (=> d!1070208 (= (inv!51788 (tag!6476 rule!403)) (= (mod (str.len (value!183764 (tag!6476 rule!403))) 2) 0))))

(assert (=> b!3639344 d!1070208))

(declare-fun d!1070210 () Bool)

(declare-fun res!1475145 () Bool)

(declare-fun e!2253138 () Bool)

(assert (=> d!1070210 (=> (not res!1475145) (not e!2253138))))

(assert (=> d!1070210 (= res!1475145 (semiInverseModEq!2439 (toChars!7881 (transformation!5730 rule!403)) (toValue!8022 (transformation!5730 rule!403))))))

(assert (=> d!1070210 (= (inv!51791 (transformation!5730 rule!403)) e!2253138)))

(declare-fun b!3639766 () Bool)

(assert (=> b!3639766 (= e!2253138 (equivClasses!2338 (toChars!7881 (transformation!5730 rule!403)) (toValue!8022 (transformation!5730 rule!403))))))

(assert (= (and d!1070210 res!1475145) b!3639766))

(declare-fun m!4142659 () Bool)

(assert (=> d!1070210 m!4142659))

(declare-fun m!4142661 () Bool)

(assert (=> b!3639766 m!4142661))

(assert (=> b!3639344 d!1070210))

(declare-fun d!1070212 () Bool)

(assert (=> d!1070212 (= (get!12563 lt!1259870) (v!37911 lt!1259870))))

(assert (=> b!3639323 d!1070212))

(declare-fun d!1070214 () Bool)

(assert (=> d!1070214 (= (isEmpty!22708 (_2!22246 lt!1259859)) ((_ is Nil!38358) (_2!22246 lt!1259859)))))

(assert (=> b!3639342 d!1070214))

(declare-fun d!1070216 () Bool)

(assert (=> d!1070216 (= (inv!51788 (tag!6476 (h!43779 rules!3307))) (= (mod (str.len (value!183764 (tag!6476 (h!43779 rules!3307)))) 2) 0))))

(assert (=> b!3639321 d!1070216))

(declare-fun d!1070218 () Bool)

(declare-fun res!1475146 () Bool)

(declare-fun e!2253139 () Bool)

(assert (=> d!1070218 (=> (not res!1475146) (not e!2253139))))

(assert (=> d!1070218 (= res!1475146 (semiInverseModEq!2439 (toChars!7881 (transformation!5730 (h!43779 rules!3307))) (toValue!8022 (transformation!5730 (h!43779 rules!3307)))))))

(assert (=> d!1070218 (= (inv!51791 (transformation!5730 (h!43779 rules!3307))) e!2253139)))

(declare-fun b!3639767 () Bool)

(assert (=> b!3639767 (= e!2253139 (equivClasses!2338 (toChars!7881 (transformation!5730 (h!43779 rules!3307))) (toValue!8022 (transformation!5730 (h!43779 rules!3307)))))))

(assert (= (and d!1070218 res!1475146) b!3639767))

(declare-fun m!4142663 () Bool)

(assert (=> d!1070218 m!4142663))

(declare-fun m!4142665 () Bool)

(assert (=> b!3639767 m!4142665))

(assert (=> b!3639321 d!1070218))

(declare-fun d!1070220 () Bool)

(declare-fun lt!1260012 () Bool)

(assert (=> d!1070220 (= lt!1260012 (select (content!5519 lt!1259883) lt!1259878))))

(declare-fun e!2253141 () Bool)

(assert (=> d!1070220 (= lt!1260012 e!2253141)))

(declare-fun res!1475147 () Bool)

(assert (=> d!1070220 (=> (not res!1475147) (not e!2253141))))

(assert (=> d!1070220 (= res!1475147 ((_ is Cons!38358) lt!1259883))))

(assert (=> d!1070220 (= (contains!7525 lt!1259883 lt!1259878) lt!1260012)))

(declare-fun b!3639768 () Bool)

(declare-fun e!2253140 () Bool)

(assert (=> b!3639768 (= e!2253141 e!2253140)))

(declare-fun res!1475148 () Bool)

(assert (=> b!3639768 (=> res!1475148 e!2253140)))

(assert (=> b!3639768 (= res!1475148 (= (h!43778 lt!1259883) lt!1259878))))

(declare-fun b!3639769 () Bool)

(assert (=> b!3639769 (= e!2253140 (contains!7525 (t!296265 lt!1259883) lt!1259878))))

(assert (= (and d!1070220 res!1475147) b!3639768))

(assert (= (and b!3639768 (not res!1475148)) b!3639769))

(assert (=> d!1070220 m!4142361))

(declare-fun m!4142667 () Bool)

(assert (=> d!1070220 m!4142667))

(declare-fun m!4142669 () Bool)

(assert (=> b!3639769 m!4142669))

(assert (=> b!3639320 d!1070220))

(declare-fun d!1070222 () Bool)

(assert (=> d!1070222 (= (head!7726 suffix!1395) (h!43778 suffix!1395))))

(assert (=> b!3639320 d!1070222))

(declare-fun c!629368 () Bool)

(declare-fun c!629366 () Bool)

(declare-fun call!263121 () List!38482)

(declare-fun bm!263113 () Bool)

(assert (=> bm!263113 (= call!263121 (usedCharacters!942 (ite c!629366 (reg!10818 (regex!5730 rule!403)) (ite c!629368 (regTwo!21491 (regex!5730 rule!403)) (regOne!21490 (regex!5730 rule!403))))))))

(declare-fun b!3639770 () Bool)

(declare-fun e!2253144 () List!38482)

(declare-fun call!263118 () List!38482)

(assert (=> b!3639770 (= e!2253144 call!263118)))

(declare-fun bm!263114 () Bool)

(declare-fun call!263120 () List!38482)

(assert (=> bm!263114 (= call!263120 (usedCharacters!942 (ite c!629368 (regOne!21491 (regex!5730 rule!403)) (regTwo!21490 (regex!5730 rule!403)))))))

(declare-fun bm!263115 () Bool)

(declare-fun call!263119 () List!38482)

(assert (=> bm!263115 (= call!263118 (++!9546 (ite c!629368 call!263120 call!263119) (ite c!629368 call!263119 call!263120)))))

(declare-fun b!3639771 () Bool)

(declare-fun e!2253143 () List!38482)

(assert (=> b!3639771 (= e!2253143 (Cons!38358 (c!629282 (regex!5730 rule!403)) Nil!38358))))

(declare-fun b!3639772 () Bool)

(assert (=> b!3639772 (= e!2253144 call!263118)))

(declare-fun b!3639773 () Bool)

(declare-fun e!2253145 () List!38482)

(assert (=> b!3639773 (= e!2253145 e!2253144)))

(assert (=> b!3639773 (= c!629368 ((_ is Union!10489) (regex!5730 rule!403)))))

(declare-fun b!3639774 () Bool)

(assert (=> b!3639774 (= c!629366 ((_ is Star!10489) (regex!5730 rule!403)))))

(assert (=> b!3639774 (= e!2253143 e!2253145)))

(declare-fun bm!263116 () Bool)

(assert (=> bm!263116 (= call!263119 call!263121)))

(declare-fun b!3639775 () Bool)

(assert (=> b!3639775 (= e!2253145 call!263121)))

(declare-fun d!1070224 () Bool)

(declare-fun c!629367 () Bool)

(assert (=> d!1070224 (= c!629367 (or ((_ is EmptyExpr!10489) (regex!5730 rule!403)) ((_ is EmptyLang!10489) (regex!5730 rule!403))))))

(declare-fun e!2253142 () List!38482)

(assert (=> d!1070224 (= (usedCharacters!942 (regex!5730 rule!403)) e!2253142)))

(declare-fun b!3639776 () Bool)

(assert (=> b!3639776 (= e!2253142 Nil!38358)))

(declare-fun b!3639777 () Bool)

(assert (=> b!3639777 (= e!2253142 e!2253143)))

(declare-fun c!629369 () Bool)

(assert (=> b!3639777 (= c!629369 ((_ is ElementMatch!10489) (regex!5730 rule!403)))))

(assert (= (and d!1070224 c!629367) b!3639776))

(assert (= (and d!1070224 (not c!629367)) b!3639777))

(assert (= (and b!3639777 c!629369) b!3639771))

(assert (= (and b!3639777 (not c!629369)) b!3639774))

(assert (= (and b!3639774 c!629366) b!3639775))

(assert (= (and b!3639774 (not c!629366)) b!3639773))

(assert (= (and b!3639773 c!629368) b!3639770))

(assert (= (and b!3639773 (not c!629368)) b!3639772))

(assert (= (or b!3639770 b!3639772) bm!263114))

(assert (= (or b!3639770 b!3639772) bm!263116))

(assert (= (or b!3639770 b!3639772) bm!263115))

(assert (= (or b!3639775 bm!263116) bm!263113))

(declare-fun m!4142671 () Bool)

(assert (=> bm!263113 m!4142671))

(declare-fun m!4142673 () Bool)

(assert (=> bm!263114 m!4142673))

(declare-fun m!4142675 () Bool)

(assert (=> bm!263115 m!4142675))

(assert (=> b!3639320 d!1070224))

(declare-fun d!1070226 () Bool)

(assert (=> d!1070226 (= (seqFromList!4279 lt!1259868) (fromListB!1975 lt!1259868))))

(declare-fun bs!571911 () Bool)

(assert (= bs!571911 d!1070226))

(declare-fun m!4142677 () Bool)

(assert (=> bs!571911 m!4142677))

(assert (=> b!3639341 d!1070226))

(declare-fun d!1070228 () Bool)

(declare-fun lt!1260015 () List!38482)

(assert (=> d!1070228 (= (++!9546 lt!1259868 lt!1260015) lt!1259867)))

(declare-fun e!2253148 () List!38482)

(assert (=> d!1070228 (= lt!1260015 e!2253148)))

(declare-fun c!629372 () Bool)

(assert (=> d!1070228 (= c!629372 ((_ is Cons!38358) lt!1259868))))

(assert (=> d!1070228 (>= (size!29276 lt!1259867) (size!29276 lt!1259868))))

(assert (=> d!1070228 (= (getSuffix!1646 lt!1259867 lt!1259868) lt!1260015)))

(declare-fun b!3639782 () Bool)

(assert (=> b!3639782 (= e!2253148 (getSuffix!1646 (tail!5637 lt!1259867) (t!296265 lt!1259868)))))

(declare-fun b!3639783 () Bool)

(assert (=> b!3639783 (= e!2253148 lt!1259867)))

(assert (= (and d!1070228 c!629372) b!3639782))

(assert (= (and d!1070228 (not c!629372)) b!3639783))

(declare-fun m!4142679 () Bool)

(assert (=> d!1070228 m!4142679))

(declare-fun m!4142681 () Bool)

(assert (=> d!1070228 m!4142681))

(assert (=> d!1070228 m!4142103))

(declare-fun m!4142683 () Bool)

(assert (=> b!3639782 m!4142683))

(assert (=> b!3639782 m!4142683))

(declare-fun m!4142685 () Bool)

(assert (=> b!3639782 m!4142685))

(assert (=> b!3639341 d!1070228))

(declare-fun d!1070230 () Bool)

(assert (=> d!1070230 (= (maxPrefixOneRule!1991 thiss!23823 (rule!8510 (_1!22246 lt!1259876)) lt!1259867) (Some!8087 (tuple2!38225 (Token!10827 (apply!9232 (transformation!5730 (rule!8510 (_1!22246 lt!1259876))) (seqFromList!4279 lt!1259868)) (rule!8510 (_1!22246 lt!1259876)) (size!29276 lt!1259868) lt!1259868) (_2!22246 lt!1259876))))))

(declare-fun lt!1260018 () Unit!55196)

(declare-fun choose!21394 (LexerInterface!5319 List!38483 List!38482 List!38482 List!38482 Rule!11260) Unit!55196)

(assert (=> d!1070230 (= lt!1260018 (choose!21394 thiss!23823 rules!3307 lt!1259868 lt!1259867 (_2!22246 lt!1259876) (rule!8510 (_1!22246 lt!1259876))))))

(assert (=> d!1070230 (not (isEmpty!22709 rules!3307))))

(assert (=> d!1070230 (= (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1047 thiss!23823 rules!3307 lt!1259868 lt!1259867 (_2!22246 lt!1259876) (rule!8510 (_1!22246 lt!1259876))) lt!1260018)))

(declare-fun bs!571912 () Bool)

(assert (= bs!571912 d!1070230))

(assert (=> bs!571912 m!4142105))

(assert (=> bs!571912 m!4142111))

(assert (=> bs!571912 m!4142103))

(declare-fun m!4142687 () Bool)

(assert (=> bs!571912 m!4142687))

(assert (=> bs!571912 m!4142159))

(assert (=> bs!571912 m!4142105))

(assert (=> bs!571912 m!4142113))

(assert (=> b!3639341 d!1070230))

(declare-fun d!1070232 () Bool)

(declare-fun lt!1260021 () Int)

(assert (=> d!1070232 (>= lt!1260021 0)))

(declare-fun e!2253151 () Int)

(assert (=> d!1070232 (= lt!1260021 e!2253151)))

(declare-fun c!629375 () Bool)

(assert (=> d!1070232 (= c!629375 ((_ is Nil!38358) lt!1259868))))

(assert (=> d!1070232 (= (size!29276 lt!1259868) lt!1260021)))

(declare-fun b!3639788 () Bool)

(assert (=> b!3639788 (= e!2253151 0)))

(declare-fun b!3639789 () Bool)

(assert (=> b!3639789 (= e!2253151 (+ 1 (size!29276 (t!296265 lt!1259868))))))

(assert (= (and d!1070232 c!629375) b!3639788))

(assert (= (and d!1070232 (not c!629375)) b!3639789))

(declare-fun m!4142689 () Bool)

(assert (=> b!3639789 m!4142689))

(assert (=> b!3639341 d!1070232))

(declare-fun d!1070234 () Bool)

(assert (=> d!1070234 (= (apply!9232 (transformation!5730 (rule!8510 (_1!22246 lt!1259876))) (seqFromList!4279 lt!1259868)) (dynLambda!16684 (toValue!8022 (transformation!5730 (rule!8510 (_1!22246 lt!1259876)))) (seqFromList!4279 lt!1259868)))))

(declare-fun b_lambda!107887 () Bool)

(assert (=> (not b_lambda!107887) (not d!1070234)))

(declare-fun t!296356 () Bool)

(declare-fun tb!209629 () Bool)

(assert (=> (and b!3639339 (= (toValue!8022 (transformation!5730 (h!43779 rules!3307))) (toValue!8022 (transformation!5730 (rule!8510 (_1!22246 lt!1259876))))) t!296356) tb!209629))

(declare-fun result!255318 () Bool)

(assert (=> tb!209629 (= result!255318 (inv!21 (dynLambda!16684 (toValue!8022 (transformation!5730 (rule!8510 (_1!22246 lt!1259876)))) (seqFromList!4279 lt!1259868))))))

(declare-fun m!4142691 () Bool)

(assert (=> tb!209629 m!4142691))

(assert (=> d!1070234 t!296356))

(declare-fun b_and!268219 () Bool)

(assert (= b_and!268203 (and (=> t!296356 result!255318) b_and!268219)))

(declare-fun t!296358 () Bool)

(declare-fun tb!209631 () Bool)

(assert (=> (and b!3639348 (= (toValue!8022 (transformation!5730 rule!403)) (toValue!8022 (transformation!5730 (rule!8510 (_1!22246 lt!1259876))))) t!296358) tb!209631))

(declare-fun result!255320 () Bool)

(assert (= result!255320 result!255318))

(assert (=> d!1070234 t!296358))

(declare-fun b_and!268221 () Bool)

(assert (= b_and!268205 (and (=> t!296358 result!255320) b_and!268221)))

(declare-fun tb!209633 () Bool)

(declare-fun t!296360 () Bool)

(assert (=> (and b!3639328 (= (toValue!8022 (transformation!5730 anOtherTypeRule!33)) (toValue!8022 (transformation!5730 (rule!8510 (_1!22246 lt!1259876))))) t!296360) tb!209633))

(declare-fun result!255322 () Bool)

(assert (= result!255322 result!255318))

(assert (=> d!1070234 t!296360))

(declare-fun b_and!268223 () Bool)

(assert (= b_and!268207 (and (=> t!296360 result!255322) b_and!268223)))

(declare-fun tb!209635 () Bool)

(declare-fun t!296362 () Bool)

(assert (=> (and b!3639343 (= (toValue!8022 (transformation!5730 (rule!8510 token!511))) (toValue!8022 (transformation!5730 (rule!8510 (_1!22246 lt!1259876))))) t!296362) tb!209635))

(declare-fun result!255324 () Bool)

(assert (= result!255324 result!255318))

(assert (=> d!1070234 t!296362))

(declare-fun b_and!268225 () Bool)

(assert (= b_and!268209 (and (=> t!296362 result!255324) b_and!268225)))

(assert (=> d!1070234 m!4142105))

(declare-fun m!4142693 () Bool)

(assert (=> d!1070234 m!4142693))

(assert (=> b!3639341 d!1070234))

(declare-fun d!1070236 () Bool)

(assert (=> d!1070236 (= (_2!22246 lt!1259876) lt!1259866)))

(declare-fun lt!1260024 () Unit!55196)

(declare-fun choose!21395 (List!38482 List!38482 List!38482 List!38482 List!38482) Unit!55196)

(assert (=> d!1070236 (= lt!1260024 (choose!21395 lt!1259868 (_2!22246 lt!1259876) lt!1259868 lt!1259866 lt!1259867))))

(assert (=> d!1070236 (isPrefix!3093 lt!1259868 lt!1259867)))

(assert (=> d!1070236 (= (lemmaSamePrefixThenSameSuffix!1420 lt!1259868 (_2!22246 lt!1259876) lt!1259868 lt!1259866 lt!1259867) lt!1260024)))

(declare-fun bs!571913 () Bool)

(assert (= bs!571913 d!1070236))

(declare-fun m!4142695 () Bool)

(assert (=> bs!571913 m!4142695))

(assert (=> bs!571913 m!4142167))

(assert (=> b!3639341 d!1070236))

(declare-fun b!3639841 () Bool)

(declare-fun e!2253179 () Bool)

(declare-datatypes ((tuple2!38230 0))(
  ( (tuple2!38231 (_1!22249 List!38482) (_2!22249 List!38482)) )
))
(declare-fun findLongestMatchInner!1035 (Regex!10489 List!38482 Int List!38482 List!38482 Int) tuple2!38230)

(assert (=> b!3639841 (= e!2253179 (matchR!5058 (regex!5730 (rule!8510 (_1!22246 lt!1259876))) (_1!22249 (findLongestMatchInner!1035 (regex!5730 (rule!8510 (_1!22246 lt!1259876))) Nil!38358 (size!29276 Nil!38358) lt!1259867 lt!1259867 (size!29276 lt!1259867)))))))

(declare-fun b!3639842 () Bool)

(declare-fun e!2253180 () Bool)

(declare-fun e!2253181 () Bool)

(assert (=> b!3639842 (= e!2253180 e!2253181)))

(declare-fun res!1475190 () Bool)

(assert (=> b!3639842 (=> (not res!1475190) (not e!2253181))))

(declare-fun lt!1260097 () Option!8088)

(assert (=> b!3639842 (= res!1475190 (matchR!5058 (regex!5730 (rule!8510 (_1!22246 lt!1259876))) (list!14196 (charsOf!3744 (_1!22246 (get!12563 lt!1260097))))))))

(declare-fun b!3639843 () Bool)

(declare-fun res!1475194 () Bool)

(assert (=> b!3639843 (=> (not res!1475194) (not e!2253181))))

(assert (=> b!3639843 (= res!1475194 (= (value!183765 (_1!22246 (get!12563 lt!1260097))) (apply!9232 (transformation!5730 (rule!8510 (_1!22246 (get!12563 lt!1260097)))) (seqFromList!4279 (originalCharacters!6444 (_1!22246 (get!12563 lt!1260097)))))))))

(declare-fun b!3639844 () Bool)

(assert (=> b!3639844 (= e!2253181 (= (size!29275 (_1!22246 (get!12563 lt!1260097))) (size!29276 (originalCharacters!6444 (_1!22246 (get!12563 lt!1260097))))))))

(declare-fun d!1070238 () Bool)

(assert (=> d!1070238 e!2253180))

(declare-fun res!1475188 () Bool)

(assert (=> d!1070238 (=> res!1475188 e!2253180)))

(assert (=> d!1070238 (= res!1475188 (isEmpty!22711 lt!1260097))))

(declare-fun e!2253182 () Option!8088)

(assert (=> d!1070238 (= lt!1260097 e!2253182)))

(declare-fun c!629382 () Bool)

(declare-fun lt!1260098 () tuple2!38230)

(assert (=> d!1070238 (= c!629382 (isEmpty!22708 (_1!22249 lt!1260098)))))

(declare-fun findLongestMatch!950 (Regex!10489 List!38482) tuple2!38230)

(assert (=> d!1070238 (= lt!1260098 (findLongestMatch!950 (regex!5730 (rule!8510 (_1!22246 lt!1259876))) lt!1259867))))

(assert (=> d!1070238 (ruleValid!1994 thiss!23823 (rule!8510 (_1!22246 lt!1259876)))))

(assert (=> d!1070238 (= (maxPrefixOneRule!1991 thiss!23823 (rule!8510 (_1!22246 lt!1259876)) lt!1259867) lt!1260097)))

(declare-fun b!3639845 () Bool)

(declare-fun res!1475191 () Bool)

(assert (=> b!3639845 (=> (not res!1475191) (not e!2253181))))

(assert (=> b!3639845 (= res!1475191 (= (++!9546 (list!14196 (charsOf!3744 (_1!22246 (get!12563 lt!1260097)))) (_2!22246 (get!12563 lt!1260097))) lt!1259867))))

(declare-fun b!3639846 () Bool)

(declare-fun res!1475189 () Bool)

(assert (=> b!3639846 (=> (not res!1475189) (not e!2253181))))

(assert (=> b!3639846 (= res!1475189 (= (rule!8510 (_1!22246 (get!12563 lt!1260097))) (rule!8510 (_1!22246 lt!1259876))))))

(declare-fun b!3639847 () Bool)

(assert (=> b!3639847 (= e!2253182 (Some!8087 (tuple2!38225 (Token!10827 (apply!9232 (transformation!5730 (rule!8510 (_1!22246 lt!1259876))) (seqFromList!4279 (_1!22249 lt!1260098))) (rule!8510 (_1!22246 lt!1259876)) (size!29277 (seqFromList!4279 (_1!22249 lt!1260098))) (_1!22249 lt!1260098)) (_2!22249 lt!1260098))))))

(declare-fun lt!1260095 () Unit!55196)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1008 (Regex!10489 List!38482) Unit!55196)

(assert (=> b!3639847 (= lt!1260095 (longestMatchIsAcceptedByMatchOrIsEmpty!1008 (regex!5730 (rule!8510 (_1!22246 lt!1259876))) lt!1259867))))

(declare-fun res!1475192 () Bool)

(assert (=> b!3639847 (= res!1475192 (isEmpty!22708 (_1!22249 (findLongestMatchInner!1035 (regex!5730 (rule!8510 (_1!22246 lt!1259876))) Nil!38358 (size!29276 Nil!38358) lt!1259867 lt!1259867 (size!29276 lt!1259867)))))))

(assert (=> b!3639847 (=> res!1475192 e!2253179)))

(assert (=> b!3639847 e!2253179))

(declare-fun lt!1260096 () Unit!55196)

(assert (=> b!3639847 (= lt!1260096 lt!1260095)))

(declare-fun lt!1260099 () Unit!55196)

(assert (=> b!3639847 (= lt!1260099 (lemmaSemiInverse!1479 (transformation!5730 (rule!8510 (_1!22246 lt!1259876))) (seqFromList!4279 (_1!22249 lt!1260098))))))

(declare-fun b!3639848 () Bool)

(assert (=> b!3639848 (= e!2253182 None!8087)))

(declare-fun b!3639849 () Bool)

(declare-fun res!1475193 () Bool)

(assert (=> b!3639849 (=> (not res!1475193) (not e!2253181))))

(assert (=> b!3639849 (= res!1475193 (< (size!29276 (_2!22246 (get!12563 lt!1260097))) (size!29276 lt!1259867)))))

(assert (= (and d!1070238 c!629382) b!3639848))

(assert (= (and d!1070238 (not c!629382)) b!3639847))

(assert (= (and b!3639847 (not res!1475192)) b!3639841))

(assert (= (and d!1070238 (not res!1475188)) b!3639842))

(assert (= (and b!3639842 res!1475190) b!3639845))

(assert (= (and b!3639845 res!1475191) b!3639849))

(assert (= (and b!3639849 res!1475193) b!3639846))

(assert (= (and b!3639846 res!1475189) b!3639843))

(assert (= (and b!3639843 res!1475194) b!3639844))

(declare-fun m!4142787 () Bool)

(assert (=> b!3639843 m!4142787))

(declare-fun m!4142789 () Bool)

(assert (=> b!3639843 m!4142789))

(assert (=> b!3639843 m!4142789))

(declare-fun m!4142791 () Bool)

(assert (=> b!3639843 m!4142791))

(declare-fun m!4142793 () Bool)

(assert (=> b!3639847 m!4142793))

(assert (=> b!3639847 m!4142793))

(declare-fun m!4142795 () Bool)

(assert (=> b!3639847 m!4142795))

(assert (=> b!3639847 m!4142681))

(declare-fun m!4142797 () Bool)

(assert (=> b!3639847 m!4142797))

(assert (=> b!3639847 m!4142793))

(declare-fun m!4142799 () Bool)

(assert (=> b!3639847 m!4142799))

(declare-fun m!4142801 () Bool)

(assert (=> b!3639847 m!4142801))

(assert (=> b!3639847 m!4142681))

(declare-fun m!4142803 () Bool)

(assert (=> b!3639847 m!4142803))

(assert (=> b!3639847 m!4142801))

(assert (=> b!3639847 m!4142793))

(declare-fun m!4142805 () Bool)

(assert (=> b!3639847 m!4142805))

(declare-fun m!4142807 () Bool)

(assert (=> b!3639847 m!4142807))

(assert (=> b!3639849 m!4142787))

(declare-fun m!4142809 () Bool)

(assert (=> b!3639849 m!4142809))

(assert (=> b!3639849 m!4142681))

(declare-fun m!4142811 () Bool)

(assert (=> d!1070238 m!4142811))

(declare-fun m!4142813 () Bool)

(assert (=> d!1070238 m!4142813))

(declare-fun m!4142815 () Bool)

(assert (=> d!1070238 m!4142815))

(declare-fun m!4142817 () Bool)

(assert (=> d!1070238 m!4142817))

(assert (=> b!3639846 m!4142787))

(assert (=> b!3639844 m!4142787))

(declare-fun m!4142819 () Bool)

(assert (=> b!3639844 m!4142819))

(assert (=> b!3639842 m!4142787))

(declare-fun m!4142821 () Bool)

(assert (=> b!3639842 m!4142821))

(assert (=> b!3639842 m!4142821))

(declare-fun m!4142823 () Bool)

(assert (=> b!3639842 m!4142823))

(assert (=> b!3639842 m!4142823))

(declare-fun m!4142825 () Bool)

(assert (=> b!3639842 m!4142825))

(assert (=> b!3639845 m!4142787))

(assert (=> b!3639845 m!4142821))

(assert (=> b!3639845 m!4142821))

(assert (=> b!3639845 m!4142823))

(assert (=> b!3639845 m!4142823))

(declare-fun m!4142827 () Bool)

(assert (=> b!3639845 m!4142827))

(assert (=> b!3639841 m!4142801))

(assert (=> b!3639841 m!4142681))

(assert (=> b!3639841 m!4142801))

(assert (=> b!3639841 m!4142681))

(assert (=> b!3639841 m!4142803))

(declare-fun m!4142829 () Bool)

(assert (=> b!3639841 m!4142829))

(assert (=> b!3639341 d!1070238))

(declare-fun d!1070252 () Bool)

(declare-fun e!2253204 () Bool)

(assert (=> d!1070252 e!2253204))

(declare-fun res!1475213 () Bool)

(assert (=> d!1070252 (=> (not res!1475213) (not e!2253204))))

(assert (=> d!1070252 (= res!1475213 (isDefined!6321 (getRuleFromTag!1334 thiss!23823 rules!3307 (tag!6476 (rule!8510 (_1!22246 lt!1259876))))))))

(declare-fun lt!1260114 () Unit!55196)

(declare-fun choose!21396 (LexerInterface!5319 List!38483 List!38482 Token!10826) Unit!55196)

(assert (=> d!1070252 (= lt!1260114 (choose!21396 thiss!23823 rules!3307 lt!1259867 (_1!22246 lt!1259876)))))

(assert (=> d!1070252 (rulesInvariant!4716 thiss!23823 rules!3307)))

(assert (=> d!1070252 (= (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1334 thiss!23823 rules!3307 lt!1259867 (_1!22246 lt!1259876)) lt!1260114)))

(declare-fun b!3639884 () Bool)

(declare-fun res!1475214 () Bool)

(assert (=> b!3639884 (=> (not res!1475214) (not e!2253204))))

(assert (=> b!3639884 (= res!1475214 (matchR!5058 (regex!5730 (get!12564 (getRuleFromTag!1334 thiss!23823 rules!3307 (tag!6476 (rule!8510 (_1!22246 lt!1259876)))))) (list!14196 (charsOf!3744 (_1!22246 lt!1259876)))))))

(declare-fun b!3639885 () Bool)

(assert (=> b!3639885 (= e!2253204 (= (rule!8510 (_1!22246 lt!1259876)) (get!12564 (getRuleFromTag!1334 thiss!23823 rules!3307 (tag!6476 (rule!8510 (_1!22246 lt!1259876)))))))))

(assert (= (and d!1070252 res!1475213) b!3639884))

(assert (= (and b!3639884 res!1475214) b!3639885))

(assert (=> d!1070252 m!4142179))

(assert (=> d!1070252 m!4142179))

(declare-fun m!4142845 () Bool)

(assert (=> d!1070252 m!4142845))

(declare-fun m!4142847 () Bool)

(assert (=> d!1070252 m!4142847))

(assert (=> d!1070252 m!4142089))

(assert (=> b!3639884 m!4142133))

(declare-fun m!4142849 () Bool)

(assert (=> b!3639884 m!4142849))

(assert (=> b!3639884 m!4142179))

(assert (=> b!3639884 m!4142131))

(assert (=> b!3639884 m!4142131))

(assert (=> b!3639884 m!4142133))

(assert (=> b!3639884 m!4142179))

(declare-fun m!4142851 () Bool)

(assert (=> b!3639884 m!4142851))

(assert (=> b!3639885 m!4142179))

(assert (=> b!3639885 m!4142179))

(assert (=> b!3639885 m!4142851))

(assert (=> b!3639351 d!1070252))

(declare-fun b!3639958 () Bool)

(declare-fun e!2253252 () Option!8089)

(declare-fun e!2253249 () Option!8089)

(assert (=> b!3639958 (= e!2253252 e!2253249)))

(declare-fun c!629402 () Bool)

(assert (=> b!3639958 (= c!629402 (and ((_ is Cons!38359) rules!3307) (not (= (tag!6476 (h!43779 rules!3307)) (tag!6476 (rule!8510 (_1!22246 lt!1259876)))))))))

(declare-fun b!3639959 () Bool)

(declare-fun e!2253250 () Bool)

(declare-fun e!2253251 () Bool)

(assert (=> b!3639959 (= e!2253250 e!2253251)))

(declare-fun res!1475232 () Bool)

(assert (=> b!3639959 (=> (not res!1475232) (not e!2253251))))

(declare-fun lt!1260128 () Option!8089)

(assert (=> b!3639959 (= res!1475232 (contains!7526 rules!3307 (get!12564 lt!1260128)))))

(declare-fun b!3639960 () Bool)

(assert (=> b!3639960 (= e!2253251 (= (tag!6476 (get!12564 lt!1260128)) (tag!6476 (rule!8510 (_1!22246 lt!1259876)))))))

(declare-fun d!1070258 () Bool)

(assert (=> d!1070258 e!2253250))

(declare-fun res!1475233 () Bool)

(assert (=> d!1070258 (=> res!1475233 e!2253250)))

(declare-fun isEmpty!22713 (Option!8089) Bool)

(assert (=> d!1070258 (= res!1475233 (isEmpty!22713 lt!1260128))))

(assert (=> d!1070258 (= lt!1260128 e!2253252)))

(declare-fun c!629401 () Bool)

(assert (=> d!1070258 (= c!629401 (and ((_ is Cons!38359) rules!3307) (= (tag!6476 (h!43779 rules!3307)) (tag!6476 (rule!8510 (_1!22246 lt!1259876))))))))

(assert (=> d!1070258 (rulesInvariant!4716 thiss!23823 rules!3307)))

(assert (=> d!1070258 (= (getRuleFromTag!1334 thiss!23823 rules!3307 (tag!6476 (rule!8510 (_1!22246 lt!1259876)))) lt!1260128)))

(declare-fun b!3639961 () Bool)

(assert (=> b!3639961 (= e!2253249 None!8088)))

(declare-fun b!3639962 () Bool)

(assert (=> b!3639962 (= e!2253252 (Some!8088 (h!43779 rules!3307)))))

(declare-fun b!3639963 () Bool)

(declare-fun lt!1260127 () Unit!55196)

(declare-fun lt!1260126 () Unit!55196)

(assert (=> b!3639963 (= lt!1260127 lt!1260126)))

(assert (=> b!3639963 (rulesInvariant!4716 thiss!23823 (t!296266 rules!3307))))

(declare-fun lemmaInvariantOnRulesThenOnTail!569 (LexerInterface!5319 Rule!11260 List!38483) Unit!55196)

(assert (=> b!3639963 (= lt!1260126 (lemmaInvariantOnRulesThenOnTail!569 thiss!23823 (h!43779 rules!3307) (t!296266 rules!3307)))))

(assert (=> b!3639963 (= e!2253249 (getRuleFromTag!1334 thiss!23823 (t!296266 rules!3307) (tag!6476 (rule!8510 (_1!22246 lt!1259876)))))))

(assert (= (and d!1070258 c!629401) b!3639962))

(assert (= (and d!1070258 (not c!629401)) b!3639958))

(assert (= (and b!3639958 c!629402) b!3639963))

(assert (= (and b!3639958 (not c!629402)) b!3639961))

(assert (= (and d!1070258 (not res!1475233)) b!3639959))

(assert (= (and b!3639959 res!1475232) b!3639960))

(declare-fun m!4142909 () Bool)

(assert (=> b!3639959 m!4142909))

(assert (=> b!3639959 m!4142909))

(declare-fun m!4142911 () Bool)

(assert (=> b!3639959 m!4142911))

(assert (=> b!3639960 m!4142909))

(declare-fun m!4142913 () Bool)

(assert (=> d!1070258 m!4142913))

(assert (=> d!1070258 m!4142089))

(declare-fun m!4142915 () Bool)

(assert (=> b!3639963 m!4142915))

(declare-fun m!4142917 () Bool)

(assert (=> b!3639963 m!4142917))

(declare-fun m!4142919 () Bool)

(assert (=> b!3639963 m!4142919))

(assert (=> b!3639351 d!1070258))

(declare-fun b!3639981 () Bool)

(declare-fun res!1475245 () Bool)

(declare-fun e!2253261 () Bool)

(assert (=> b!3639981 (=> (not res!1475245) (not e!2253261))))

(assert (=> b!3639981 (= res!1475245 (= (head!7726 lt!1259868) (head!7726 (++!9546 lt!1259868 (_2!22246 lt!1259876)))))))

(declare-fun b!3639980 () Bool)

(declare-fun e!2253262 () Bool)

(assert (=> b!3639980 (= e!2253262 e!2253261)))

(declare-fun res!1475243 () Bool)

(assert (=> b!3639980 (=> (not res!1475243) (not e!2253261))))

(assert (=> b!3639980 (= res!1475243 (not ((_ is Nil!38358) (++!9546 lt!1259868 (_2!22246 lt!1259876)))))))

(declare-fun b!3639982 () Bool)

(assert (=> b!3639982 (= e!2253261 (isPrefix!3093 (tail!5637 lt!1259868) (tail!5637 (++!9546 lt!1259868 (_2!22246 lt!1259876)))))))

(declare-fun d!1070276 () Bool)

(declare-fun e!2253263 () Bool)

(assert (=> d!1070276 e!2253263))

(declare-fun res!1475242 () Bool)

(assert (=> d!1070276 (=> res!1475242 e!2253263)))

(declare-fun lt!1260131 () Bool)

(assert (=> d!1070276 (= res!1475242 (not lt!1260131))))

(assert (=> d!1070276 (= lt!1260131 e!2253262)))

(declare-fun res!1475244 () Bool)

(assert (=> d!1070276 (=> res!1475244 e!2253262)))

(assert (=> d!1070276 (= res!1475244 ((_ is Nil!38358) lt!1259868))))

(assert (=> d!1070276 (= (isPrefix!3093 lt!1259868 (++!9546 lt!1259868 (_2!22246 lt!1259876))) lt!1260131)))

(declare-fun b!3639983 () Bool)

(assert (=> b!3639983 (= e!2253263 (>= (size!29276 (++!9546 lt!1259868 (_2!22246 lt!1259876))) (size!29276 lt!1259868)))))

(assert (= (and d!1070276 (not res!1475244)) b!3639980))

(assert (= (and b!3639980 res!1475243) b!3639981))

(assert (= (and b!3639981 res!1475245) b!3639982))

(assert (= (and d!1070276 (not res!1475242)) b!3639983))

(assert (=> b!3639981 m!4142145))

(assert (=> b!3639981 m!4142163))

(declare-fun m!4142921 () Bool)

(assert (=> b!3639981 m!4142921))

(assert (=> b!3639982 m!4142641))

(assert (=> b!3639982 m!4142163))

(declare-fun m!4142923 () Bool)

(assert (=> b!3639982 m!4142923))

(assert (=> b!3639982 m!4142641))

(assert (=> b!3639982 m!4142923))

(declare-fun m!4142925 () Bool)

(assert (=> b!3639982 m!4142925))

(assert (=> b!3639983 m!4142163))

(declare-fun m!4142927 () Bool)

(assert (=> b!3639983 m!4142927))

(assert (=> b!3639983 m!4142103))

(assert (=> b!3639351 d!1070276))

(assert (=> b!3639351 d!1070128))

(declare-fun d!1070278 () Bool)

(assert (=> d!1070278 (= (list!14196 lt!1259875) (list!14198 (c!629283 lt!1259875)))))

(declare-fun bs!571917 () Bool)

(assert (= bs!571917 d!1070278))

(declare-fun m!4142929 () Bool)

(assert (=> bs!571917 m!4142929))

(assert (=> b!3639351 d!1070278))

(declare-fun b!3639985 () Bool)

(declare-fun res!1475249 () Bool)

(declare-fun e!2253264 () Bool)

(assert (=> b!3639985 (=> (not res!1475249) (not e!2253264))))

(assert (=> b!3639985 (= res!1475249 (= (head!7726 lt!1259879) (head!7726 lt!1259867)))))

(declare-fun b!3639984 () Bool)

(declare-fun e!2253265 () Bool)

(assert (=> b!3639984 (= e!2253265 e!2253264)))

(declare-fun res!1475247 () Bool)

(assert (=> b!3639984 (=> (not res!1475247) (not e!2253264))))

(assert (=> b!3639984 (= res!1475247 (not ((_ is Nil!38358) lt!1259867)))))

(declare-fun b!3639986 () Bool)

(assert (=> b!3639986 (= e!2253264 (isPrefix!3093 (tail!5637 lt!1259879) (tail!5637 lt!1259867)))))

(declare-fun d!1070280 () Bool)

(declare-fun e!2253266 () Bool)

(assert (=> d!1070280 e!2253266))

(declare-fun res!1475246 () Bool)

(assert (=> d!1070280 (=> res!1475246 e!2253266)))

(declare-fun lt!1260132 () Bool)

(assert (=> d!1070280 (= res!1475246 (not lt!1260132))))

(assert (=> d!1070280 (= lt!1260132 e!2253265)))

(declare-fun res!1475248 () Bool)

(assert (=> d!1070280 (=> res!1475248 e!2253265)))

(assert (=> d!1070280 (= res!1475248 ((_ is Nil!38358) lt!1259879))))

(assert (=> d!1070280 (= (isPrefix!3093 lt!1259879 lt!1259867) lt!1260132)))

(declare-fun b!3639987 () Bool)

(assert (=> b!3639987 (= e!2253266 (>= (size!29276 lt!1259867) (size!29276 lt!1259879)))))

(assert (= (and d!1070280 (not res!1475248)) b!3639984))

(assert (= (and b!3639984 res!1475247) b!3639985))

(assert (= (and b!3639985 res!1475249) b!3639986))

(assert (= (and d!1070280 (not res!1475246)) b!3639987))

(declare-fun m!4142931 () Bool)

(assert (=> b!3639985 m!4142931))

(declare-fun m!4142933 () Bool)

(assert (=> b!3639985 m!4142933))

(declare-fun m!4142935 () Bool)

(assert (=> b!3639986 m!4142935))

(assert (=> b!3639986 m!4142683))

(assert (=> b!3639986 m!4142935))

(assert (=> b!3639986 m!4142683))

(declare-fun m!4142937 () Bool)

(assert (=> b!3639986 m!4142937))

(assert (=> b!3639987 m!4142681))

(assert (=> b!3639987 m!4142585))

(assert (=> b!3639351 d!1070280))

(declare-fun b!3639996 () Bool)

(declare-fun e!2253271 () List!38482)

(assert (=> b!3639996 (= e!2253271 (_2!22246 lt!1259876))))

(declare-fun d!1070282 () Bool)

(declare-fun e!2253272 () Bool)

(assert (=> d!1070282 e!2253272))

(declare-fun res!1475254 () Bool)

(assert (=> d!1070282 (=> (not res!1475254) (not e!2253272))))

(declare-fun lt!1260135 () List!38482)

(assert (=> d!1070282 (= res!1475254 (= (content!5519 lt!1260135) ((_ map or) (content!5519 lt!1259868) (content!5519 (_2!22246 lt!1259876)))))))

(assert (=> d!1070282 (= lt!1260135 e!2253271)))

(declare-fun c!629405 () Bool)

(assert (=> d!1070282 (= c!629405 ((_ is Nil!38358) lt!1259868))))

(assert (=> d!1070282 (= (++!9546 lt!1259868 (_2!22246 lt!1259876)) lt!1260135)))

(declare-fun b!3639998 () Bool)

(declare-fun res!1475255 () Bool)

(assert (=> b!3639998 (=> (not res!1475255) (not e!2253272))))

(assert (=> b!3639998 (= res!1475255 (= (size!29276 lt!1260135) (+ (size!29276 lt!1259868) (size!29276 (_2!22246 lt!1259876)))))))

(declare-fun b!3639999 () Bool)

(assert (=> b!3639999 (= e!2253272 (or (not (= (_2!22246 lt!1259876) Nil!38358)) (= lt!1260135 lt!1259868)))))

(declare-fun b!3639997 () Bool)

(assert (=> b!3639997 (= e!2253271 (Cons!38358 (h!43778 lt!1259868) (++!9546 (t!296265 lt!1259868) (_2!22246 lt!1259876))))))

(assert (= (and d!1070282 c!629405) b!3639996))

(assert (= (and d!1070282 (not c!629405)) b!3639997))

(assert (= (and d!1070282 res!1475254) b!3639998))

(assert (= (and b!3639998 res!1475255) b!3639999))

(declare-fun m!4142939 () Bool)

(assert (=> d!1070282 m!4142939))

(declare-fun m!4142941 () Bool)

(assert (=> d!1070282 m!4142941))

(declare-fun m!4142943 () Bool)

(assert (=> d!1070282 m!4142943))

(declare-fun m!4142945 () Bool)

(assert (=> b!3639998 m!4142945))

(assert (=> b!3639998 m!4142103))

(declare-fun m!4142947 () Bool)

(assert (=> b!3639998 m!4142947))

(declare-fun m!4142949 () Bool)

(assert (=> b!3639997 m!4142949))

(assert (=> b!3639351 d!1070282))

(declare-fun d!1070284 () Bool)

(assert (=> d!1070284 (isPrefix!3093 lt!1259879 (++!9546 lt!1259879 suffix!1395))))

(declare-fun lt!1260138 () Unit!55196)

(declare-fun choose!21397 (List!38482 List!38482) Unit!55196)

(assert (=> d!1070284 (= lt!1260138 (choose!21397 lt!1259879 suffix!1395))))

(assert (=> d!1070284 (= (lemmaConcatTwoListThenFirstIsPrefix!2012 lt!1259879 suffix!1395) lt!1260138)))

(declare-fun bs!571918 () Bool)

(assert (= bs!571918 d!1070284))

(assert (=> bs!571918 m!4142177))

(assert (=> bs!571918 m!4142177))

(declare-fun m!4142951 () Bool)

(assert (=> bs!571918 m!4142951))

(declare-fun m!4142953 () Bool)

(assert (=> bs!571918 m!4142953))

(assert (=> b!3639351 d!1070284))

(declare-fun b!3640001 () Bool)

(declare-fun res!1475256 () Bool)

(declare-fun e!2253273 () Bool)

(assert (=> b!3640001 (=> (not res!1475256) (not e!2253273))))

(declare-fun lt!1260143 () Option!8088)

(assert (=> b!3640001 (= res!1475256 (= (value!183765 (_1!22246 (get!12563 lt!1260143))) (apply!9232 (transformation!5730 (rule!8510 (_1!22246 (get!12563 lt!1260143)))) (seqFromList!4279 (originalCharacters!6444 (_1!22246 (get!12563 lt!1260143)))))))))

(declare-fun b!3640002 () Bool)

(declare-fun res!1475257 () Bool)

(assert (=> b!3640002 (=> (not res!1475257) (not e!2253273))))

(assert (=> b!3640002 (= res!1475257 (matchR!5058 (regex!5730 (rule!8510 (_1!22246 (get!12563 lt!1260143)))) (list!14196 (charsOf!3744 (_1!22246 (get!12563 lt!1260143))))))))

(declare-fun bm!263122 () Bool)

(declare-fun call!263127 () Option!8088)

(assert (=> bm!263122 (= call!263127 (maxPrefixOneRule!1991 thiss!23823 (h!43779 rules!3307) lt!1259867))))

(declare-fun b!3640003 () Bool)

(declare-fun e!2253274 () Bool)

(assert (=> b!3640003 (= e!2253274 e!2253273)))

(declare-fun res!1475262 () Bool)

(assert (=> b!3640003 (=> (not res!1475262) (not e!2253273))))

(assert (=> b!3640003 (= res!1475262 (isDefined!6320 lt!1260143))))

(declare-fun b!3640004 () Bool)

(declare-fun res!1475258 () Bool)

(assert (=> b!3640004 (=> (not res!1475258) (not e!2253273))))

(assert (=> b!3640004 (= res!1475258 (< (size!29276 (_2!22246 (get!12563 lt!1260143))) (size!29276 lt!1259867)))))

(declare-fun b!3640005 () Bool)

(declare-fun e!2253275 () Option!8088)

(assert (=> b!3640005 (= e!2253275 call!263127)))

(declare-fun b!3640006 () Bool)

(declare-fun res!1475259 () Bool)

(assert (=> b!3640006 (=> (not res!1475259) (not e!2253273))))

(assert (=> b!3640006 (= res!1475259 (= (list!14196 (charsOf!3744 (_1!22246 (get!12563 lt!1260143)))) (originalCharacters!6444 (_1!22246 (get!12563 lt!1260143)))))))

(declare-fun b!3640000 () Bool)

(declare-fun lt!1260141 () Option!8088)

(declare-fun lt!1260142 () Option!8088)

(assert (=> b!3640000 (= e!2253275 (ite (and ((_ is None!8087) lt!1260141) ((_ is None!8087) lt!1260142)) None!8087 (ite ((_ is None!8087) lt!1260142) lt!1260141 (ite ((_ is None!8087) lt!1260141) lt!1260142 (ite (>= (size!29275 (_1!22246 (v!37911 lt!1260141))) (size!29275 (_1!22246 (v!37911 lt!1260142)))) lt!1260141 lt!1260142)))))))

(assert (=> b!3640000 (= lt!1260141 call!263127)))

(assert (=> b!3640000 (= lt!1260142 (maxPrefix!2853 thiss!23823 (t!296266 rules!3307) lt!1259867))))

(declare-fun d!1070286 () Bool)

(assert (=> d!1070286 e!2253274))

(declare-fun res!1475261 () Bool)

(assert (=> d!1070286 (=> res!1475261 e!2253274)))

(assert (=> d!1070286 (= res!1475261 (isEmpty!22711 lt!1260143))))

(assert (=> d!1070286 (= lt!1260143 e!2253275)))

(declare-fun c!629406 () Bool)

(assert (=> d!1070286 (= c!629406 (and ((_ is Cons!38359) rules!3307) ((_ is Nil!38359) (t!296266 rules!3307))))))

(declare-fun lt!1260140 () Unit!55196)

(declare-fun lt!1260139 () Unit!55196)

(assert (=> d!1070286 (= lt!1260140 lt!1260139)))

(assert (=> d!1070286 (isPrefix!3093 lt!1259867 lt!1259867)))

(assert (=> d!1070286 (= lt!1260139 (lemmaIsPrefixRefl!1960 lt!1259867 lt!1259867))))

(assert (=> d!1070286 (rulesValidInductive!2025 thiss!23823 rules!3307)))

(assert (=> d!1070286 (= (maxPrefix!2853 thiss!23823 rules!3307 lt!1259867) lt!1260143)))

(declare-fun b!3640007 () Bool)

(assert (=> b!3640007 (= e!2253273 (contains!7526 rules!3307 (rule!8510 (_1!22246 (get!12563 lt!1260143)))))))

(declare-fun b!3640008 () Bool)

(declare-fun res!1475260 () Bool)

(assert (=> b!3640008 (=> (not res!1475260) (not e!2253273))))

(assert (=> b!3640008 (= res!1475260 (= (++!9546 (list!14196 (charsOf!3744 (_1!22246 (get!12563 lt!1260143)))) (_2!22246 (get!12563 lt!1260143))) lt!1259867))))

(assert (= (and d!1070286 c!629406) b!3640005))

(assert (= (and d!1070286 (not c!629406)) b!3640000))

(assert (= (or b!3640005 b!3640000) bm!263122))

(assert (= (and d!1070286 (not res!1475261)) b!3640003))

(assert (= (and b!3640003 res!1475262) b!3640006))

(assert (= (and b!3640006 res!1475259) b!3640004))

(assert (= (and b!3640004 res!1475258) b!3640008))

(assert (= (and b!3640008 res!1475260) b!3640001))

(assert (= (and b!3640001 res!1475256) b!3640002))

(assert (= (and b!3640002 res!1475257) b!3640007))

(declare-fun m!4142955 () Bool)

(assert (=> b!3640004 m!4142955))

(declare-fun m!4142957 () Bool)

(assert (=> b!3640004 m!4142957))

(assert (=> b!3640004 m!4142681))

(assert (=> b!3640008 m!4142955))

(declare-fun m!4142959 () Bool)

(assert (=> b!3640008 m!4142959))

(assert (=> b!3640008 m!4142959))

(declare-fun m!4142961 () Bool)

(assert (=> b!3640008 m!4142961))

(assert (=> b!3640008 m!4142961))

(declare-fun m!4142963 () Bool)

(assert (=> b!3640008 m!4142963))

(assert (=> b!3640002 m!4142955))

(assert (=> b!3640002 m!4142959))

(assert (=> b!3640002 m!4142959))

(assert (=> b!3640002 m!4142961))

(assert (=> b!3640002 m!4142961))

(declare-fun m!4142965 () Bool)

(assert (=> b!3640002 m!4142965))

(assert (=> b!3640007 m!4142955))

(declare-fun m!4142967 () Bool)

(assert (=> b!3640007 m!4142967))

(declare-fun m!4142969 () Bool)

(assert (=> b!3640000 m!4142969))

(declare-fun m!4142971 () Bool)

(assert (=> bm!263122 m!4142971))

(assert (=> b!3640006 m!4142955))

(assert (=> b!3640006 m!4142959))

(assert (=> b!3640006 m!4142959))

(assert (=> b!3640006 m!4142961))

(declare-fun m!4142973 () Bool)

(assert (=> b!3640003 m!4142973))

(assert (=> b!3640001 m!4142955))

(declare-fun m!4142975 () Bool)

(assert (=> b!3640001 m!4142975))

(assert (=> b!3640001 m!4142975))

(declare-fun m!4142977 () Bool)

(assert (=> b!3640001 m!4142977))

(declare-fun m!4142979 () Bool)

(assert (=> d!1070286 m!4142979))

(declare-fun m!4142981 () Bool)

(assert (=> d!1070286 m!4142981))

(declare-fun m!4142983 () Bool)

(assert (=> d!1070286 m!4142983))

(assert (=> d!1070286 m!4142613))

(assert (=> b!3639351 d!1070286))

(declare-fun b!3640009 () Bool)

(declare-fun e!2253276 () List!38482)

(assert (=> b!3640009 (= e!2253276 suffix!1395)))

(declare-fun d!1070288 () Bool)

(declare-fun e!2253277 () Bool)

(assert (=> d!1070288 e!2253277))

(declare-fun res!1475263 () Bool)

(assert (=> d!1070288 (=> (not res!1475263) (not e!2253277))))

(declare-fun lt!1260144 () List!38482)

(assert (=> d!1070288 (= res!1475263 (= (content!5519 lt!1260144) ((_ map or) (content!5519 lt!1259879) (content!5519 suffix!1395))))))

(assert (=> d!1070288 (= lt!1260144 e!2253276)))

(declare-fun c!629407 () Bool)

(assert (=> d!1070288 (= c!629407 ((_ is Nil!38358) lt!1259879))))

(assert (=> d!1070288 (= (++!9546 lt!1259879 suffix!1395) lt!1260144)))

(declare-fun b!3640011 () Bool)

(declare-fun res!1475264 () Bool)

(assert (=> b!3640011 (=> (not res!1475264) (not e!2253277))))

(assert (=> b!3640011 (= res!1475264 (= (size!29276 lt!1260144) (+ (size!29276 lt!1259879) (size!29276 suffix!1395))))))

(declare-fun b!3640012 () Bool)

(assert (=> b!3640012 (= e!2253277 (or (not (= suffix!1395 Nil!38358)) (= lt!1260144 lt!1259879)))))

(declare-fun b!3640010 () Bool)

(assert (=> b!3640010 (= e!2253276 (Cons!38358 (h!43778 lt!1259879) (++!9546 (t!296265 lt!1259879) suffix!1395)))))

(assert (= (and d!1070288 c!629407) b!3640009))

(assert (= (and d!1070288 (not c!629407)) b!3640010))

(assert (= (and d!1070288 res!1475263) b!3640011))

(assert (= (and b!3640011 res!1475264) b!3640012))

(declare-fun m!4142985 () Bool)

(assert (=> d!1070288 m!4142985))

(assert (=> d!1070288 m!4142427))

(declare-fun m!4142987 () Bool)

(assert (=> d!1070288 m!4142987))

(declare-fun m!4142989 () Bool)

(assert (=> b!3640011 m!4142989))

(assert (=> b!3640011 m!4142585))

(declare-fun m!4142991 () Bool)

(assert (=> b!3640011 m!4142991))

(declare-fun m!4142993 () Bool)

(assert (=> b!3640010 m!4142993))

(assert (=> b!3639351 d!1070288))

(declare-fun b!3640014 () Bool)

(declare-fun res!1475268 () Bool)

(declare-fun e!2253278 () Bool)

(assert (=> b!3640014 (=> (not res!1475268) (not e!2253278))))

(assert (=> b!3640014 (= res!1475268 (= (head!7726 lt!1259868) (head!7726 lt!1259867)))))

(declare-fun b!3640013 () Bool)

(declare-fun e!2253279 () Bool)

(assert (=> b!3640013 (= e!2253279 e!2253278)))

(declare-fun res!1475266 () Bool)

(assert (=> b!3640013 (=> (not res!1475266) (not e!2253278))))

(assert (=> b!3640013 (= res!1475266 (not ((_ is Nil!38358) lt!1259867)))))

(declare-fun b!3640015 () Bool)

(assert (=> b!3640015 (= e!2253278 (isPrefix!3093 (tail!5637 lt!1259868) (tail!5637 lt!1259867)))))

(declare-fun d!1070290 () Bool)

(declare-fun e!2253280 () Bool)

(assert (=> d!1070290 e!2253280))

(declare-fun res!1475265 () Bool)

(assert (=> d!1070290 (=> res!1475265 e!2253280)))

(declare-fun lt!1260145 () Bool)

(assert (=> d!1070290 (= res!1475265 (not lt!1260145))))

(assert (=> d!1070290 (= lt!1260145 e!2253279)))

(declare-fun res!1475267 () Bool)

(assert (=> d!1070290 (=> res!1475267 e!2253279)))

(assert (=> d!1070290 (= res!1475267 ((_ is Nil!38358) lt!1259868))))

(assert (=> d!1070290 (= (isPrefix!3093 lt!1259868 lt!1259867) lt!1260145)))

(declare-fun b!3640016 () Bool)

(assert (=> b!3640016 (= e!2253280 (>= (size!29276 lt!1259867) (size!29276 lt!1259868)))))

(assert (= (and d!1070290 (not res!1475267)) b!3640013))

(assert (= (and b!3640013 res!1475266) b!3640014))

(assert (= (and b!3640014 res!1475268) b!3640015))

(assert (= (and d!1070290 (not res!1475265)) b!3640016))

(assert (=> b!3640014 m!4142145))

(assert (=> b!3640014 m!4142933))

(assert (=> b!3640015 m!4142641))

(assert (=> b!3640015 m!4142683))

(assert (=> b!3640015 m!4142641))

(assert (=> b!3640015 m!4142683))

(declare-fun m!4142995 () Bool)

(assert (=> b!3640015 m!4142995))

(assert (=> b!3640016 m!4142681))

(assert (=> b!3640016 m!4142103))

(assert (=> b!3639351 d!1070290))

(declare-fun d!1070292 () Bool)

(assert (=> d!1070292 (= (isDefined!6321 lt!1259871) (not (isEmpty!22713 lt!1259871)))))

(declare-fun bs!571919 () Bool)

(assert (= bs!571919 d!1070292))

(declare-fun m!4142997 () Bool)

(assert (=> bs!571919 m!4142997))

(assert (=> b!3639351 d!1070292))

(declare-fun lt!1260189 () Token!10826)

(declare-fun b!3640026 () Bool)

(declare-fun e!2253285 () Bool)

(assert (=> b!3640026 (= e!2253285 (= (rule!8510 lt!1260189) (get!12564 (getRuleFromTag!1334 thiss!23823 rules!3307 (tag!6476 (rule!8510 lt!1260189))))))))

(declare-fun b!3640028 () Bool)

(declare-fun e!2253286 () Unit!55196)

(declare-fun Unit!55204 () Unit!55196)

(assert (=> b!3640028 (= e!2253286 Unit!55204)))

(declare-fun b!3640027 () Bool)

(declare-fun Unit!55205 () Unit!55196)

(assert (=> b!3640027 (= e!2253286 Unit!55205)))

(declare-fun lt!1260183 () List!38482)

(assert (=> b!3640027 (= lt!1260183 (++!9546 lt!1259879 suffix!1395))))

(declare-fun lt!1260180 () Unit!55196)

(declare-fun lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!526 (LexerInterface!5319 Rule!11260 List!38483 List!38482) Unit!55196)

(assert (=> b!3640027 (= lt!1260180 (lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!526 thiss!23823 (rule!8510 lt!1260189) rules!3307 lt!1260183))))

(assert (=> b!3640027 (isEmpty!22711 (maxPrefixOneRule!1991 thiss!23823 (rule!8510 lt!1260189) lt!1260183))))

(declare-fun lt!1260186 () Unit!55196)

(assert (=> b!3640027 (= lt!1260186 lt!1260180)))

(declare-fun lt!1260194 () List!38482)

(assert (=> b!3640027 (= lt!1260194 (list!14196 (charsOf!3744 lt!1260189)))))

(declare-fun lt!1260196 () Unit!55196)

(declare-fun lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!514 (LexerInterface!5319 Rule!11260 List!38482 List!38482) Unit!55196)

(assert (=> b!3640027 (= lt!1260196 (lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!514 thiss!23823 (rule!8510 lt!1260189) lt!1260194 (++!9546 lt!1259879 suffix!1395)))))

(assert (=> b!3640027 (not (matchR!5058 (regex!5730 (rule!8510 lt!1260189)) lt!1260194))))

(declare-fun lt!1260195 () Unit!55196)

(assert (=> b!3640027 (= lt!1260195 lt!1260196)))

(assert (=> b!3640027 false))

(declare-fun d!1070294 () Bool)

(assert (=> d!1070294 (isDefined!6320 (maxPrefix!2853 thiss!23823 rules!3307 (++!9546 lt!1259879 suffix!1395)))))

(declare-fun lt!1260193 () Unit!55196)

(assert (=> d!1070294 (= lt!1260193 e!2253286)))

(declare-fun c!629410 () Bool)

(assert (=> d!1070294 (= c!629410 (isEmpty!22711 (maxPrefix!2853 thiss!23823 rules!3307 (++!9546 lt!1259879 suffix!1395))))))

(declare-fun lt!1260187 () Unit!55196)

(declare-fun lt!1260181 () Unit!55196)

(assert (=> d!1070294 (= lt!1260187 lt!1260181)))

(assert (=> d!1070294 e!2253285))

(declare-fun res!1475274 () Bool)

(assert (=> d!1070294 (=> (not res!1475274) (not e!2253285))))

(assert (=> d!1070294 (= res!1475274 (isDefined!6321 (getRuleFromTag!1334 thiss!23823 rules!3307 (tag!6476 (rule!8510 lt!1260189)))))))

(assert (=> d!1070294 (= lt!1260181 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1334 thiss!23823 rules!3307 lt!1259879 lt!1260189))))

(declare-fun lt!1260190 () Unit!55196)

(declare-fun lt!1260191 () Unit!55196)

(assert (=> d!1070294 (= lt!1260190 lt!1260191)))

(declare-fun lt!1260185 () List!38482)

(assert (=> d!1070294 (isPrefix!3093 lt!1260185 (++!9546 lt!1259879 suffix!1395))))

(declare-fun lemmaPrefixStaysPrefixWhenAddingToSuffix!490 (List!38482 List!38482 List!38482) Unit!55196)

(assert (=> d!1070294 (= lt!1260191 (lemmaPrefixStaysPrefixWhenAddingToSuffix!490 lt!1260185 lt!1259879 suffix!1395))))

(assert (=> d!1070294 (= lt!1260185 (list!14196 (charsOf!3744 lt!1260189)))))

(declare-fun lt!1260192 () Unit!55196)

(declare-fun lt!1260188 () Unit!55196)

(assert (=> d!1070294 (= lt!1260192 lt!1260188)))

(declare-fun lt!1260182 () List!38482)

(declare-fun lt!1260184 () List!38482)

(assert (=> d!1070294 (isPrefix!3093 lt!1260182 (++!9546 lt!1260182 lt!1260184))))

(assert (=> d!1070294 (= lt!1260188 (lemmaConcatTwoListThenFirstIsPrefix!2012 lt!1260182 lt!1260184))))

(assert (=> d!1070294 (= lt!1260184 (_2!22246 (get!12563 (maxPrefix!2853 thiss!23823 rules!3307 lt!1259879))))))

(assert (=> d!1070294 (= lt!1260182 (list!14196 (charsOf!3744 lt!1260189)))))

(declare-datatypes ((List!38487 0))(
  ( (Nil!38363) (Cons!38363 (h!43783 Token!10826) (t!296390 List!38487)) )
))
(declare-fun head!7728 (List!38487) Token!10826)

(declare-datatypes ((IArray!23431 0))(
  ( (IArray!23432 (innerList!11773 List!38487)) )
))
(declare-datatypes ((Conc!11713 0))(
  ( (Node!11713 (left!29952 Conc!11713) (right!30282 Conc!11713) (csize!23656 Int) (cheight!11924 Int)) (Leaf!18189 (xs!14915 IArray!23431) (csize!23657 Int)) (Empty!11713) )
))
(declare-datatypes ((BalanceConc!23040 0))(
  ( (BalanceConc!23041 (c!629415 Conc!11713)) )
))
(declare-fun list!14200 (BalanceConc!23040) List!38487)

(declare-datatypes ((tuple2!38232 0))(
  ( (tuple2!38233 (_1!22250 BalanceConc!23040) (_2!22250 BalanceConc!23036)) )
))
(declare-fun lex!2522 (LexerInterface!5319 List!38483 BalanceConc!23036) tuple2!38232)

(assert (=> d!1070294 (= lt!1260189 (head!7728 (list!14200 (_1!22250 (lex!2522 thiss!23823 rules!3307 (seqFromList!4279 lt!1259879))))))))

(assert (=> d!1070294 (not (isEmpty!22709 rules!3307))))

(assert (=> d!1070294 (= (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!997 thiss!23823 rules!3307 lt!1259879 suffix!1395) lt!1260193)))

(declare-fun b!3640025 () Bool)

(declare-fun res!1475273 () Bool)

(assert (=> b!3640025 (=> (not res!1475273) (not e!2253285))))

(assert (=> b!3640025 (= res!1475273 (matchR!5058 (regex!5730 (get!12564 (getRuleFromTag!1334 thiss!23823 rules!3307 (tag!6476 (rule!8510 lt!1260189))))) (list!14196 (charsOf!3744 lt!1260189))))))

(assert (= (and d!1070294 res!1475274) b!3640025))

(assert (= (and b!3640025 res!1475273) b!3640026))

(assert (= (and d!1070294 c!629410) b!3640027))

(assert (= (and d!1070294 (not c!629410)) b!3640028))

(declare-fun m!4142999 () Bool)

(assert (=> b!3640026 m!4142999))

(assert (=> b!3640026 m!4142999))

(declare-fun m!4143001 () Bool)

(assert (=> b!3640026 m!4143001))

(declare-fun m!4143003 () Bool)

(assert (=> b!3640027 m!4143003))

(assert (=> b!3640027 m!4142177))

(declare-fun m!4143005 () Bool)

(assert (=> b!3640027 m!4143005))

(declare-fun m!4143007 () Bool)

(assert (=> b!3640027 m!4143007))

(declare-fun m!4143009 () Bool)

(assert (=> b!3640027 m!4143009))

(assert (=> b!3640027 m!4143005))

(declare-fun m!4143011 () Bool)

(assert (=> b!3640027 m!4143011))

(assert (=> b!3640027 m!4142177))

(declare-fun m!4143013 () Bool)

(assert (=> b!3640027 m!4143013))

(assert (=> b!3640027 m!4143009))

(declare-fun m!4143015 () Bool)

(assert (=> b!3640027 m!4143015))

(declare-fun m!4143017 () Bool)

(assert (=> d!1070294 m!4143017))

(declare-fun m!4143019 () Bool)

(assert (=> d!1070294 m!4143019))

(declare-fun m!4143021 () Bool)

(assert (=> d!1070294 m!4143021))

(assert (=> d!1070294 m!4142177))

(assert (=> d!1070294 m!4143005))

(assert (=> d!1070294 m!4142191))

(assert (=> d!1070294 m!4142159))

(assert (=> d!1070294 m!4142999))

(declare-fun m!4143023 () Bool)

(assert (=> d!1070294 m!4143023))

(declare-fun m!4143025 () Bool)

(assert (=> d!1070294 m!4143025))

(declare-fun m!4143027 () Bool)

(assert (=> d!1070294 m!4143027))

(declare-fun m!4143029 () Bool)

(assert (=> d!1070294 m!4143029))

(assert (=> d!1070294 m!4143019))

(declare-fun m!4143031 () Bool)

(assert (=> d!1070294 m!4143031))

(assert (=> d!1070294 m!4142177))

(assert (=> d!1070294 m!4143023))

(assert (=> d!1070294 m!4143021))

(declare-fun m!4143033 () Bool)

(assert (=> d!1070294 m!4143033))

(assert (=> d!1070294 m!4143023))

(declare-fun m!4143035 () Bool)

(assert (=> d!1070294 m!4143035))

(assert (=> d!1070294 m!4143029))

(declare-fun m!4143037 () Bool)

(assert (=> d!1070294 m!4143037))

(assert (=> d!1070294 m!4142191))

(declare-fun m!4143039 () Bool)

(assert (=> d!1070294 m!4143039))

(declare-fun m!4143041 () Bool)

(assert (=> d!1070294 m!4143041))

(assert (=> d!1070294 m!4142177))

(declare-fun m!4143043 () Bool)

(assert (=> d!1070294 m!4143043))

(assert (=> d!1070294 m!4142999))

(declare-fun m!4143045 () Bool)

(assert (=> d!1070294 m!4143045))

(assert (=> d!1070294 m!4143005))

(assert (=> d!1070294 m!4143007))

(assert (=> b!3640025 m!4143005))

(assert (=> b!3640025 m!4143007))

(assert (=> b!3640025 m!4143005))

(assert (=> b!3640025 m!4143007))

(declare-fun m!4143047 () Bool)

(assert (=> b!3640025 m!4143047))

(assert (=> b!3640025 m!4142999))

(assert (=> b!3640025 m!4142999))

(assert (=> b!3640025 m!4143001))

(assert (=> b!3639351 d!1070294))

(declare-fun d!1070296 () Bool)

(assert (=> d!1070296 (= (get!12563 lt!1259869) (v!37911 lt!1259869))))

(assert (=> b!3639351 d!1070296))

(declare-fun d!1070298 () Bool)

(assert (=> d!1070298 (isPrefix!3093 lt!1259868 (++!9546 lt!1259868 (_2!22246 lt!1259876)))))

(declare-fun lt!1260197 () Unit!55196)

(assert (=> d!1070298 (= lt!1260197 (choose!21397 lt!1259868 (_2!22246 lt!1259876)))))

(assert (=> d!1070298 (= (lemmaConcatTwoListThenFirstIsPrefix!2012 lt!1259868 (_2!22246 lt!1259876)) lt!1260197)))

(declare-fun bs!571920 () Bool)

(assert (= bs!571920 d!1070298))

(assert (=> bs!571920 m!4142163))

(assert (=> bs!571920 m!4142163))

(assert (=> bs!571920 m!4142165))

(declare-fun m!4143049 () Bool)

(assert (=> bs!571920 m!4143049))

(assert (=> b!3639351 d!1070298))

(declare-fun b!3640029 () Bool)

(declare-fun res!1475276 () Bool)

(declare-fun e!2253291 () Bool)

(assert (=> b!3640029 (=> (not res!1475276) (not e!2253291))))

(declare-fun call!263128 () Bool)

(assert (=> b!3640029 (= res!1475276 (not call!263128))))

(declare-fun b!3640030 () Bool)

(declare-fun res!1475279 () Bool)

(declare-fun e!2253288 () Bool)

(assert (=> b!3640030 (=> res!1475279 e!2253288)))

(assert (=> b!3640030 (= res!1475279 e!2253291)))

(declare-fun res!1475280 () Bool)

(assert (=> b!3640030 (=> (not res!1475280) (not e!2253291))))

(declare-fun lt!1260198 () Bool)

(assert (=> b!3640030 (= res!1475280 lt!1260198)))

(declare-fun b!3640031 () Bool)

(declare-fun e!2253292 () Bool)

(assert (=> b!3640031 (= e!2253292 (not lt!1260198))))

(declare-fun b!3640032 () Bool)

(declare-fun res!1475277 () Bool)

(declare-fun e!2253293 () Bool)

(assert (=> b!3640032 (=> res!1475277 e!2253293)))

(assert (=> b!3640032 (= res!1475277 (not (isEmpty!22708 (tail!5637 lt!1259879))))))

(declare-fun b!3640033 () Bool)

(declare-fun e!2253290 () Bool)

(assert (=> b!3640033 (= e!2253290 (nullable!3639 (regex!5730 rule!403)))))

(declare-fun b!3640034 () Bool)

(declare-fun e!2253289 () Bool)

(assert (=> b!3640034 (= e!2253289 e!2253292)))

(declare-fun c!629411 () Bool)

(assert (=> b!3640034 (= c!629411 ((_ is EmptyLang!10489) (regex!5730 rule!403)))))

(declare-fun d!1070300 () Bool)

(assert (=> d!1070300 e!2253289))

(declare-fun c!629412 () Bool)

(assert (=> d!1070300 (= c!629412 ((_ is EmptyExpr!10489) (regex!5730 rule!403)))))

(assert (=> d!1070300 (= lt!1260198 e!2253290)))

(declare-fun c!629413 () Bool)

(assert (=> d!1070300 (= c!629413 (isEmpty!22708 lt!1259879))))

(assert (=> d!1070300 (validRegex!4801 (regex!5730 rule!403))))

(assert (=> d!1070300 (= (matchR!5058 (regex!5730 rule!403) lt!1259879) lt!1260198)))

(declare-fun b!3640035 () Bool)

(assert (=> b!3640035 (= e!2253293 (not (= (head!7726 lt!1259879) (c!629282 (regex!5730 rule!403)))))))

(declare-fun b!3640036 () Bool)

(assert (=> b!3640036 (= e!2253290 (matchR!5058 (derivativeStep!3188 (regex!5730 rule!403) (head!7726 lt!1259879)) (tail!5637 lt!1259879)))))

(declare-fun b!3640037 () Bool)

(declare-fun e!2253287 () Bool)

(assert (=> b!3640037 (= e!2253288 e!2253287)))

(declare-fun res!1475281 () Bool)

(assert (=> b!3640037 (=> (not res!1475281) (not e!2253287))))

(assert (=> b!3640037 (= res!1475281 (not lt!1260198))))

(declare-fun b!3640038 () Bool)

(declare-fun res!1475278 () Bool)

(assert (=> b!3640038 (=> (not res!1475278) (not e!2253291))))

(assert (=> b!3640038 (= res!1475278 (isEmpty!22708 (tail!5637 lt!1259879)))))

(declare-fun b!3640039 () Bool)

(assert (=> b!3640039 (= e!2253289 (= lt!1260198 call!263128))))

(declare-fun bm!263123 () Bool)

(assert (=> bm!263123 (= call!263128 (isEmpty!22708 lt!1259879))))

(declare-fun b!3640040 () Bool)

(assert (=> b!3640040 (= e!2253287 e!2253293)))

(declare-fun res!1475275 () Bool)

(assert (=> b!3640040 (=> res!1475275 e!2253293)))

(assert (=> b!3640040 (= res!1475275 call!263128)))

(declare-fun b!3640041 () Bool)

(assert (=> b!3640041 (= e!2253291 (= (head!7726 lt!1259879) (c!629282 (regex!5730 rule!403))))))

(declare-fun b!3640042 () Bool)

(declare-fun res!1475282 () Bool)

(assert (=> b!3640042 (=> res!1475282 e!2253288)))

(assert (=> b!3640042 (= res!1475282 (not ((_ is ElementMatch!10489) (regex!5730 rule!403))))))

(assert (=> b!3640042 (= e!2253292 e!2253288)))

(assert (= (and d!1070300 c!629413) b!3640033))

(assert (= (and d!1070300 (not c!629413)) b!3640036))

(assert (= (and d!1070300 c!629412) b!3640039))

(assert (= (and d!1070300 (not c!629412)) b!3640034))

(assert (= (and b!3640034 c!629411) b!3640031))

(assert (= (and b!3640034 (not c!629411)) b!3640042))

(assert (= (and b!3640042 (not res!1475282)) b!3640030))

(assert (= (and b!3640030 res!1475280) b!3640029))

(assert (= (and b!3640029 res!1475276) b!3640038))

(assert (= (and b!3640038 res!1475278) b!3640041))

(assert (= (and b!3640030 (not res!1475279)) b!3640037))

(assert (= (and b!3640037 res!1475281) b!3640040))

(assert (= (and b!3640040 (not res!1475275)) b!3640032))

(assert (= (and b!3640032 (not res!1475277)) b!3640035))

(assert (= (or b!3640039 b!3640029 b!3640040) bm!263123))

(declare-fun m!4143051 () Bool)

(assert (=> bm!263123 m!4143051))

(assert (=> b!3640035 m!4142931))

(assert (=> b!3640036 m!4142931))

(assert (=> b!3640036 m!4142931))

(declare-fun m!4143053 () Bool)

(assert (=> b!3640036 m!4143053))

(assert (=> b!3640036 m!4142935))

(assert (=> b!3640036 m!4143053))

(assert (=> b!3640036 m!4142935))

(declare-fun m!4143055 () Bool)

(assert (=> b!3640036 m!4143055))

(assert (=> b!3640038 m!4142935))

(assert (=> b!3640038 m!4142935))

(declare-fun m!4143057 () Bool)

(assert (=> b!3640038 m!4143057))

(assert (=> b!3640041 m!4142931))

(assert (=> b!3640032 m!4142935))

(assert (=> b!3640032 m!4142935))

(assert (=> b!3640032 m!4143057))

(assert (=> d!1070300 m!4143051))

(assert (=> d!1070300 m!4142577))

(declare-fun m!4143059 () Bool)

(assert (=> b!3640033 m!4143059))

(assert (=> b!3639329 d!1070300))

(declare-fun d!1070302 () Bool)

(declare-fun res!1475287 () Bool)

(declare-fun e!2253296 () Bool)

(assert (=> d!1070302 (=> (not res!1475287) (not e!2253296))))

(assert (=> d!1070302 (= res!1475287 (validRegex!4801 (regex!5730 rule!403)))))

(assert (=> d!1070302 (= (ruleValid!1994 thiss!23823 rule!403) e!2253296)))

(declare-fun b!3640047 () Bool)

(declare-fun res!1475288 () Bool)

(assert (=> b!3640047 (=> (not res!1475288) (not e!2253296))))

(assert (=> b!3640047 (= res!1475288 (not (nullable!3639 (regex!5730 rule!403))))))

(declare-fun b!3640048 () Bool)

(assert (=> b!3640048 (= e!2253296 (not (= (tag!6476 rule!403) (String!43135 ""))))))

(assert (= (and d!1070302 res!1475287) b!3640047))

(assert (= (and b!3640047 res!1475288) b!3640048))

(assert (=> d!1070302 m!4142577))

(assert (=> b!3640047 m!4143059))

(assert (=> b!3639329 d!1070302))

(declare-fun d!1070304 () Bool)

(assert (=> d!1070304 (ruleValid!1994 thiss!23823 rule!403)))

(declare-fun lt!1260201 () Unit!55196)

(declare-fun choose!21398 (LexerInterface!5319 Rule!11260 List!38483) Unit!55196)

(assert (=> d!1070304 (= lt!1260201 (choose!21398 thiss!23823 rule!403 rules!3307))))

(assert (=> d!1070304 (contains!7526 rules!3307 rule!403)))

(assert (=> d!1070304 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1148 thiss!23823 rule!403 rules!3307) lt!1260201)))

(declare-fun bs!571921 () Bool)

(assert (= bs!571921 d!1070304))

(assert (=> bs!571921 m!4142123))

(declare-fun m!4143061 () Bool)

(assert (=> bs!571921 m!4143061))

(assert (=> bs!571921 m!4142139))

(assert (=> b!3639329 d!1070304))

(declare-fun d!1070306 () Bool)

(declare-fun res!1475293 () Bool)

(declare-fun e!2253299 () Bool)

(assert (=> d!1070306 (=> (not res!1475293) (not e!2253299))))

(assert (=> d!1070306 (= res!1475293 (not (isEmpty!22708 (originalCharacters!6444 token!511))))))

(assert (=> d!1070306 (= (inv!51792 token!511) e!2253299)))

(declare-fun b!3640053 () Bool)

(declare-fun res!1475294 () Bool)

(assert (=> b!3640053 (=> (not res!1475294) (not e!2253299))))

(assert (=> b!3640053 (= res!1475294 (= (originalCharacters!6444 token!511) (list!14196 (dynLambda!16680 (toChars!7881 (transformation!5730 (rule!8510 token!511))) (value!183765 token!511)))))))

(declare-fun b!3640054 () Bool)

(assert (=> b!3640054 (= e!2253299 (= (size!29275 token!511) (size!29276 (originalCharacters!6444 token!511))))))

(assert (= (and d!1070306 res!1475293) b!3640053))

(assert (= (and b!3640053 res!1475294) b!3640054))

(declare-fun b_lambda!107893 () Bool)

(assert (=> (not b_lambda!107893) (not b!3640053)))

(assert (=> b!3640053 t!296348))

(declare-fun b_and!268231 () Bool)

(assert (= b_and!268211 (and (=> t!296348 result!255310) b_and!268231)))

(assert (=> b!3640053 t!296350))

(declare-fun b_and!268233 () Bool)

(assert (= b_and!268213 (and (=> t!296350 result!255312) b_and!268233)))

(assert (=> b!3640053 t!296352))

(declare-fun b_and!268235 () Bool)

(assert (= b_and!268215 (and (=> t!296352 result!255314) b_and!268235)))

(assert (=> b!3640053 t!296354))

(declare-fun b_and!268237 () Bool)

(assert (= b_and!268217 (and (=> t!296354 result!255316) b_and!268237)))

(declare-fun m!4143063 () Bool)

(assert (=> d!1070306 m!4143063))

(assert (=> b!3640053 m!4142623))

(assert (=> b!3640053 m!4142623))

(declare-fun m!4143065 () Bool)

(assert (=> b!3640053 m!4143065))

(declare-fun m!4143067 () Bool)

(assert (=> b!3640054 m!4143067))

(assert (=> start!339762 d!1070306))

(declare-fun d!1070308 () Bool)

(assert (=> d!1070308 (= (isEmpty!22709 rules!3307) ((_ is Nil!38359) rules!3307))))

(assert (=> b!3639349 d!1070308))

(declare-fun d!1070310 () Bool)

(declare-fun res!1475299 () Bool)

(declare-fun e!2253304 () Bool)

(assert (=> d!1070310 (=> res!1475299 e!2253304)))

(assert (=> d!1070310 (= res!1475299 (not ((_ is Cons!38359) rules!3307)))))

(assert (=> d!1070310 (= (sepAndNonSepRulesDisjointChars!1898 rules!3307 rules!3307) e!2253304)))

(declare-fun b!3640059 () Bool)

(declare-fun e!2253305 () Bool)

(assert (=> b!3640059 (= e!2253304 e!2253305)))

(declare-fun res!1475300 () Bool)

(assert (=> b!3640059 (=> (not res!1475300) (not e!2253305))))

(declare-fun ruleDisjointCharsFromAllFromOtherType!863 (Rule!11260 List!38483) Bool)

(assert (=> b!3640059 (= res!1475300 (ruleDisjointCharsFromAllFromOtherType!863 (h!43779 rules!3307) rules!3307))))

(declare-fun b!3640060 () Bool)

(assert (=> b!3640060 (= e!2253305 (sepAndNonSepRulesDisjointChars!1898 rules!3307 (t!296266 rules!3307)))))

(assert (= (and d!1070310 (not res!1475299)) b!3640059))

(assert (= (and b!3640059 res!1475300) b!3640060))

(declare-fun m!4143069 () Bool)

(assert (=> b!3640059 m!4143069))

(declare-fun m!4143071 () Bool)

(assert (=> b!3640060 m!4143071))

(assert (=> b!3639327 d!1070310))

(declare-fun d!1070312 () Bool)

(declare-fun lt!1260202 () Bool)

(assert (=> d!1070312 (= lt!1260202 (select (content!5518 rules!3307) anOtherTypeRule!33))))

(declare-fun e!2253306 () Bool)

(assert (=> d!1070312 (= lt!1260202 e!2253306)))

(declare-fun res!1475302 () Bool)

(assert (=> d!1070312 (=> (not res!1475302) (not e!2253306))))

(assert (=> d!1070312 (= res!1475302 ((_ is Cons!38359) rules!3307))))

(assert (=> d!1070312 (= (contains!7526 rules!3307 anOtherTypeRule!33) lt!1260202)))

(declare-fun b!3640061 () Bool)

(declare-fun e!2253307 () Bool)

(assert (=> b!3640061 (= e!2253306 e!2253307)))

(declare-fun res!1475301 () Bool)

(assert (=> b!3640061 (=> res!1475301 e!2253307)))

(assert (=> b!3640061 (= res!1475301 (= (h!43779 rules!3307) anOtherTypeRule!33))))

(declare-fun b!3640062 () Bool)

(assert (=> b!3640062 (= e!2253307 (contains!7526 (t!296266 rules!3307) anOtherTypeRule!33))))

(assert (= (and d!1070312 res!1475302) b!3640061))

(assert (= (and b!3640061 (not res!1475301)) b!3640062))

(assert (=> d!1070312 m!4142289))

(declare-fun m!4143073 () Bool)

(assert (=> d!1070312 m!4143073))

(declare-fun m!4143075 () Bool)

(assert (=> b!3640062 m!4143075))

(assert (=> b!3639347 d!1070312))

(declare-fun d!1070314 () Bool)

(assert (=> d!1070314 (= (inv!51788 (tag!6476 anOtherTypeRule!33)) (= (mod (str.len (value!183764 (tag!6476 anOtherTypeRule!33))) 2) 0))))

(assert (=> b!3639346 d!1070314))

(declare-fun d!1070316 () Bool)

(declare-fun res!1475303 () Bool)

(declare-fun e!2253308 () Bool)

(assert (=> d!1070316 (=> (not res!1475303) (not e!2253308))))

(assert (=> d!1070316 (= res!1475303 (semiInverseModEq!2439 (toChars!7881 (transformation!5730 anOtherTypeRule!33)) (toValue!8022 (transformation!5730 anOtherTypeRule!33))))))

(assert (=> d!1070316 (= (inv!51791 (transformation!5730 anOtherTypeRule!33)) e!2253308)))

(declare-fun b!3640063 () Bool)

(assert (=> b!3640063 (= e!2253308 (equivClasses!2338 (toChars!7881 (transformation!5730 anOtherTypeRule!33)) (toValue!8022 (transformation!5730 anOtherTypeRule!33))))))

(assert (= (and d!1070316 res!1475303) b!3640063))

(declare-fun m!4143077 () Bool)

(assert (=> d!1070316 m!4143077))

(declare-fun m!4143079 () Bool)

(assert (=> b!3640063 m!4143079))

(assert (=> b!3639346 d!1070316))

(declare-fun b!3640068 () Bool)

(declare-fun e!2253311 () Bool)

(declare-fun tp!1110521 () Bool)

(assert (=> b!3640068 (= e!2253311 (and tp_is_empty!18061 tp!1110521))))

(assert (=> b!3639334 (= tp!1110458 e!2253311)))

(assert (= (and b!3639334 ((_ is Cons!38358) (originalCharacters!6444 token!511))) b!3640068))

(declare-fun b!3640081 () Bool)

(declare-fun e!2253314 () Bool)

(declare-fun tp!1110532 () Bool)

(assert (=> b!3640081 (= e!2253314 tp!1110532)))

(assert (=> b!3639344 (= tp!1110451 e!2253314)))

(declare-fun b!3640080 () Bool)

(declare-fun tp!1110536 () Bool)

(declare-fun tp!1110534 () Bool)

(assert (=> b!3640080 (= e!2253314 (and tp!1110536 tp!1110534))))

(declare-fun b!3640079 () Bool)

(assert (=> b!3640079 (= e!2253314 tp_is_empty!18061)))

(declare-fun b!3640082 () Bool)

(declare-fun tp!1110535 () Bool)

(declare-fun tp!1110533 () Bool)

(assert (=> b!3640082 (= e!2253314 (and tp!1110535 tp!1110533))))

(assert (= (and b!3639344 ((_ is ElementMatch!10489) (regex!5730 rule!403))) b!3640079))

(assert (= (and b!3639344 ((_ is Concat!16450) (regex!5730 rule!403))) b!3640080))

(assert (= (and b!3639344 ((_ is Star!10489) (regex!5730 rule!403))) b!3640081))

(assert (= (and b!3639344 ((_ is Union!10489) (regex!5730 rule!403))) b!3640082))

(declare-fun b!3640085 () Bool)

(declare-fun e!2253315 () Bool)

(declare-fun tp!1110537 () Bool)

(assert (=> b!3640085 (= e!2253315 tp!1110537)))

(assert (=> b!3639332 (= tp!1110461 e!2253315)))

(declare-fun b!3640084 () Bool)

(declare-fun tp!1110541 () Bool)

(declare-fun tp!1110539 () Bool)

(assert (=> b!3640084 (= e!2253315 (and tp!1110541 tp!1110539))))

(declare-fun b!3640083 () Bool)

(assert (=> b!3640083 (= e!2253315 tp_is_empty!18061)))

(declare-fun b!3640086 () Bool)

(declare-fun tp!1110540 () Bool)

(declare-fun tp!1110538 () Bool)

(assert (=> b!3640086 (= e!2253315 (and tp!1110540 tp!1110538))))

(assert (= (and b!3639332 ((_ is ElementMatch!10489) (regex!5730 (rule!8510 token!511)))) b!3640083))

(assert (= (and b!3639332 ((_ is Concat!16450) (regex!5730 (rule!8510 token!511)))) b!3640084))

(assert (= (and b!3639332 ((_ is Star!10489) (regex!5730 (rule!8510 token!511)))) b!3640085))

(assert (= (and b!3639332 ((_ is Union!10489) (regex!5730 (rule!8510 token!511)))) b!3640086))

(declare-fun b!3640087 () Bool)

(declare-fun e!2253316 () Bool)

(declare-fun tp!1110542 () Bool)

(assert (=> b!3640087 (= e!2253316 (and tp_is_empty!18061 tp!1110542))))

(assert (=> b!3639326 (= tp!1110459 e!2253316)))

(assert (= (and b!3639326 ((_ is Cons!38358) (t!296265 suffix!1395))) b!3640087))

(declare-fun b!3640090 () Bool)

(declare-fun e!2253317 () Bool)

(declare-fun tp!1110543 () Bool)

(assert (=> b!3640090 (= e!2253317 tp!1110543)))

(assert (=> b!3639321 (= tp!1110455 e!2253317)))

(declare-fun b!3640089 () Bool)

(declare-fun tp!1110547 () Bool)

(declare-fun tp!1110545 () Bool)

(assert (=> b!3640089 (= e!2253317 (and tp!1110547 tp!1110545))))

(declare-fun b!3640088 () Bool)

(assert (=> b!3640088 (= e!2253317 tp_is_empty!18061)))

(declare-fun b!3640091 () Bool)

(declare-fun tp!1110546 () Bool)

(declare-fun tp!1110544 () Bool)

(assert (=> b!3640091 (= e!2253317 (and tp!1110546 tp!1110544))))

(assert (= (and b!3639321 ((_ is ElementMatch!10489) (regex!5730 (h!43779 rules!3307)))) b!3640088))

(assert (= (and b!3639321 ((_ is Concat!16450) (regex!5730 (h!43779 rules!3307)))) b!3640089))

(assert (= (and b!3639321 ((_ is Star!10489) (regex!5730 (h!43779 rules!3307)))) b!3640090))

(assert (= (and b!3639321 ((_ is Union!10489) (regex!5730 (h!43779 rules!3307)))) b!3640091))

(declare-fun b!3640094 () Bool)

(declare-fun e!2253318 () Bool)

(declare-fun tp!1110548 () Bool)

(assert (=> b!3640094 (= e!2253318 tp!1110548)))

(assert (=> b!3639346 (= tp!1110452 e!2253318)))

(declare-fun b!3640093 () Bool)

(declare-fun tp!1110552 () Bool)

(declare-fun tp!1110550 () Bool)

(assert (=> b!3640093 (= e!2253318 (and tp!1110552 tp!1110550))))

(declare-fun b!3640092 () Bool)

(assert (=> b!3640092 (= e!2253318 tp_is_empty!18061)))

(declare-fun b!3640095 () Bool)

(declare-fun tp!1110551 () Bool)

(declare-fun tp!1110549 () Bool)

(assert (=> b!3640095 (= e!2253318 (and tp!1110551 tp!1110549))))

(assert (= (and b!3639346 ((_ is ElementMatch!10489) (regex!5730 anOtherTypeRule!33))) b!3640092))

(assert (= (and b!3639346 ((_ is Concat!16450) (regex!5730 anOtherTypeRule!33))) b!3640093))

(assert (= (and b!3639346 ((_ is Star!10489) (regex!5730 anOtherTypeRule!33))) b!3640094))

(assert (= (and b!3639346 ((_ is Union!10489) (regex!5730 anOtherTypeRule!33))) b!3640095))

(declare-fun b!3640106 () Bool)

(declare-fun b_free!95413 () Bool)

(declare-fun b_next!96117 () Bool)

(assert (=> b!3640106 (= b_free!95413 (not b_next!96117))))

(declare-fun tb!209649 () Bool)

(declare-fun t!296376 () Bool)

(assert (=> (and b!3640106 (= (toValue!8022 (transformation!5730 (h!43779 (t!296266 rules!3307)))) (toValue!8022 (transformation!5730 (rule!8510 (_1!22246 lt!1259876))))) t!296376) tb!209649))

(declare-fun result!255350 () Bool)

(assert (= result!255350 result!255302))

(assert (=> d!1070172 t!296376))

(declare-fun t!296378 () Bool)

(declare-fun tb!209651 () Bool)

(assert (=> (and b!3640106 (= (toValue!8022 (transformation!5730 (h!43779 (t!296266 rules!3307)))) (toValue!8022 (transformation!5730 (rule!8510 (_1!22246 lt!1259876))))) t!296378) tb!209651))

(declare-fun result!255352 () Bool)

(assert (= result!255352 result!255318))

(assert (=> d!1070234 t!296378))

(declare-fun t!296380 () Bool)

(declare-fun tb!209653 () Bool)

(assert (=> (and b!3640106 (= (toValue!8022 (transformation!5730 (h!43779 (t!296266 rules!3307)))) (toValue!8022 (transformation!5730 (rule!8510 (_1!22246 lt!1259876))))) t!296380) tb!209653))

(declare-fun result!255354 () Bool)

(assert (= result!255354 result!255292))

(assert (=> d!1070134 t!296380))

(assert (=> d!1070172 t!296380))

(assert (=> d!1070180 t!296380))

(declare-fun b_and!268239 () Bool)

(declare-fun tp!1110564 () Bool)

(assert (=> b!3640106 (= tp!1110564 (and (=> t!296380 result!255354) (=> t!296378 result!255352) (=> t!296376 result!255350) b_and!268239))))

(declare-fun b_free!95415 () Bool)

(declare-fun b_next!96119 () Bool)

(assert (=> b!3640106 (= b_free!95415 (not b_next!96119))))

(declare-fun t!296382 () Bool)

(declare-fun tb!209655 () Bool)

(assert (=> (and b!3640106 (= (toChars!7881 (transformation!5730 (h!43779 (t!296266 rules!3307)))) (toChars!7881 (transformation!5730 (rule!8510 (_1!22246 lt!1259876))))) t!296382) tb!209655))

(declare-fun result!255356 () Bool)

(assert (= result!255356 result!255250))

(assert (=> d!1070128 t!296382))

(declare-fun t!296384 () Bool)

(declare-fun tb!209657 () Bool)

(assert (=> (and b!3640106 (= (toChars!7881 (transformation!5730 (h!43779 (t!296266 rules!3307)))) (toChars!7881 (transformation!5730 (rule!8510 (_1!22246 lt!1259876))))) t!296384) tb!209657))

(declare-fun result!255358 () Bool)

(assert (= result!255358 result!255284))

(assert (=> d!1070134 t!296384))

(declare-fun t!296386 () Bool)

(declare-fun tb!209659 () Bool)

(assert (=> (and b!3640106 (= (toChars!7881 (transformation!5730 (h!43779 (t!296266 rules!3307)))) (toChars!7881 (transformation!5730 (rule!8510 token!511)))) t!296386) tb!209659))

(declare-fun result!255360 () Bool)

(assert (= result!255360 result!255310))

(assert (=> d!1070196 t!296386))

(assert (=> b!3640053 t!296386))

(declare-fun tp!1110561 () Bool)

(declare-fun b_and!268241 () Bool)

(assert (=> b!3640106 (= tp!1110561 (and (=> t!296382 result!255356) (=> t!296384 result!255358) (=> t!296386 result!255360) b_and!268241))))

(declare-fun e!2253329 () Bool)

(assert (=> b!3640106 (= e!2253329 (and tp!1110564 tp!1110561))))

(declare-fun b!3640105 () Bool)

(declare-fun e!2253327 () Bool)

(declare-fun tp!1110562 () Bool)

(assert (=> b!3640105 (= e!2253327 (and tp!1110562 (inv!51788 (tag!6476 (h!43779 (t!296266 rules!3307)))) (inv!51791 (transformation!5730 (h!43779 (t!296266 rules!3307)))) e!2253329))))

(declare-fun b!3640104 () Bool)

(declare-fun e!2253328 () Bool)

(declare-fun tp!1110563 () Bool)

(assert (=> b!3640104 (= e!2253328 (and e!2253327 tp!1110563))))

(assert (=> b!3639325 (= tp!1110453 e!2253328)))

(assert (= b!3640105 b!3640106))

(assert (= b!3640104 b!3640105))

(assert (= (and b!3639325 ((_ is Cons!38359) (t!296266 rules!3307))) b!3640104))

(declare-fun m!4143081 () Bool)

(assert (=> b!3640105 m!4143081))

(declare-fun m!4143083 () Bool)

(assert (=> b!3640105 m!4143083))

(declare-fun b_lambda!107895 () Bool)

(assert (= b_lambda!107885 (or (and b!3639343 b_free!95407) (and b!3639339 b_free!95395 (= (toChars!7881 (transformation!5730 (h!43779 rules!3307))) (toChars!7881 (transformation!5730 (rule!8510 token!511))))) (and b!3639328 b_free!95403 (= (toChars!7881 (transformation!5730 anOtherTypeRule!33)) (toChars!7881 (transformation!5730 (rule!8510 token!511))))) (and b!3640106 b_free!95415 (= (toChars!7881 (transformation!5730 (h!43779 (t!296266 rules!3307)))) (toChars!7881 (transformation!5730 (rule!8510 token!511))))) (and b!3639348 b_free!95399 (= (toChars!7881 (transformation!5730 rule!403)) (toChars!7881 (transformation!5730 (rule!8510 token!511))))) b_lambda!107895)))

(declare-fun b_lambda!107897 () Bool)

(assert (= b_lambda!107893 (or (and b!3639343 b_free!95407) (and b!3639339 b_free!95395 (= (toChars!7881 (transformation!5730 (h!43779 rules!3307))) (toChars!7881 (transformation!5730 (rule!8510 token!511))))) (and b!3639328 b_free!95403 (= (toChars!7881 (transformation!5730 anOtherTypeRule!33)) (toChars!7881 (transformation!5730 (rule!8510 token!511))))) (and b!3640106 b_free!95415 (= (toChars!7881 (transformation!5730 (h!43779 (t!296266 rules!3307)))) (toChars!7881 (transformation!5730 (rule!8510 token!511))))) (and b!3639348 b_free!95399 (= (toChars!7881 (transformation!5730 rule!403)) (toChars!7881 (transformation!5730 (rule!8510 token!511))))) b_lambda!107897)))

(check-sat (not bm!263113) (not b!3639765) (not d!1070198) (not d!1070236) (not b!3640008) (not b_next!96105) (not b!3639789) (not b!3640003) (not b!3639718) (not b!3640087) (not b!3640059) (not b_lambda!107879) (not d!1070282) (not d!1070284) (not b!3639720) (not d!1070230) (not d!1070288) (not b!3639592) (not b!3639601) (not b!3639444) b_and!268225 (not b!3640062) (not b!3639715) (not b!3639443) (not b_lambda!107861) (not b!3639981) (not d!1070182) (not tb!209629) (not b!3639986) (not d!1070286) b_and!268241 (not bm!263112) (not d!1070228) (not d!1070194) (not d!1070316) (not b!3639468) (not b!3640089) (not b!3639759) (not b!3639587) (not b!3639960) (not d!1070196) (not b_next!96097) (not b_lambda!107873) (not b_next!96117) (not b_lambda!107883) b_and!268223 (not b_lambda!107875) (not d!1070292) (not b_next!96109) (not b!3639750) (not d!1070178) (not b!3640094) (not bm!263114) (not b!3640014) (not b!3639767) b_and!268233 (not b!3639511) (not b!3640068) (not b!3640000) (not b!3640104) (not d!1070190) (not b!3639711) (not b!3640002) (not b!3640006) (not b!3639590) (not b_next!96103) (not d!1070128) (not b!3639849) (not b_next!96099) (not b!3640054) (not d!1070204) (not b!3639595) (not b!3640015) (not b_lambda!107887) (not b!3639671) (not b!3639845) (not d!1070084) (not tb!209565) (not b!3640091) (not b!3639769) (not b!3639586) (not b_next!96111) (not b!3640011) (not bm!263110) (not b!3640105) (not b!3640090) (not b!3639846) (not b!3640027) b_and!268235 (not b!3640060) (not b!3639844) (not b!3639998) (not bm!263122) (not b!3640095) (not b!3639983) (not b!3640036) (not b!3639766) (not bm!263123) (not b!3640004) (not d!1070172) (not b!3639722) (not b!3639480) (not b!3639753) (not b!3640035) (not b!3640085) (not b!3640041) (not d!1070252) (not d!1070218) (not tb!209621) (not tb!209597) (not b!3639756) (not b!3640010) (not b!3640016) (not b!3639717) b_and!268221 (not tb!209613) (not b!3640053) (not b!3639782) (not b_next!96119) (not b!3640086) (not d!1070304) (not d!1070278) (not d!1070134) (not b!3640093) (not d!1070312) (not b!3639754) (not b!3639751) (not b_lambda!107881) (not b!3639997) (not d!1070220) tp_is_empty!18061 (not b!3639842) b_and!268239 (not b!3640080) (not d!1070306) (not bm!263099) (not b!3640033) (not d!1070192) (not tb!209605) b_and!268231 (not b!3639885) (not b!3639963) (not d!1070110) (not b_lambda!107897) b_and!268237 (not d!1070300) (not b!3639985) (not b!3639589) b_and!268219 (not b!3640084) (not d!1070210) (not b!3639843) (not d!1070094) (not b!3639987) (not b!3640038) (not b!3640007) (not d!1070258) (not b!3639603) (not d!1070164) (not b!3640063) (not b!3639841) (not b_lambda!107895) (not b!3639982) (not d!1070132) (not b!3640047) (not d!1070238) (not bm!263092) (not bm!263108) (not d!1070126) (not d!1070088) (not b!3640001) (not d!1070302) (not d!1070202) (not d!1070294) (not d!1070206) (not d!1070226) (not b!3640081) (not b!3639713) (not b!3640025) (not b!3640082) (not b_next!96107) (not b!3639714) (not d!1070298) (not b!3639959) (not b!3639719) (not bm!263115) (not b!3640026) (not b_next!96101) (not b!3640032) (not b!3639442) (not b!3639884) (not d!1070184) (not b!3639763) (not bm!263109) (not b!3639712) (not b!3639847))
(check-sat (not b_next!96105) b_and!268225 b_and!268241 (not b_next!96109) b_and!268233 (not b_next!96103) (not b_next!96099) (not b_next!96111) b_and!268235 b_and!268239 b_and!268231 b_and!268237 b_and!268219 (not b_next!96107) (not b_next!96101) (not b_next!96097) (not b_next!96117) b_and!268223 b_and!268221 (not b_next!96119))
