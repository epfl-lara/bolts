; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!313186 () Bool)

(assert start!313186)

(declare-fun b!3367096 () Bool)

(declare-fun b_free!88001 () Bool)

(declare-fun b_next!88705 () Bool)

(assert (=> b!3367096 (= b_free!88001 (not b_next!88705))))

(declare-fun tp!1053700 () Bool)

(declare-fun b_and!233299 () Bool)

(assert (=> b!3367096 (= tp!1053700 b_and!233299)))

(declare-fun b_free!88003 () Bool)

(declare-fun b_next!88707 () Bool)

(assert (=> b!3367096 (= b_free!88003 (not b_next!88707))))

(declare-fun tp!1053699 () Bool)

(declare-fun b_and!233301 () Bool)

(assert (=> b!3367096 (= tp!1053699 b_and!233301)))

(declare-fun b!3367093 () Bool)

(declare-fun b_free!88005 () Bool)

(declare-fun b_next!88709 () Bool)

(assert (=> b!3367093 (= b_free!88005 (not b_next!88709))))

(declare-fun tp!1053696 () Bool)

(declare-fun b_and!233303 () Bool)

(assert (=> b!3367093 (= tp!1053696 b_and!233303)))

(declare-fun b_free!88007 () Bool)

(declare-fun b_next!88711 () Bool)

(assert (=> b!3367093 (= b_free!88007 (not b_next!88711))))

(declare-fun tp!1053704 () Bool)

(declare-fun b_and!233305 () Bool)

(assert (=> b!3367093 (= tp!1053704 b_and!233305)))

(declare-fun b!3367072 () Bool)

(declare-fun b_free!88009 () Bool)

(declare-fun b_next!88713 () Bool)

(assert (=> b!3367072 (= b_free!88009 (not b_next!88713))))

(declare-fun tp!1053703 () Bool)

(declare-fun b_and!233307 () Bool)

(assert (=> b!3367072 (= tp!1053703 b_and!233307)))

(declare-fun b_free!88011 () Bool)

(declare-fun b_next!88715 () Bool)

(assert (=> b!3367072 (= b_free!88011 (not b_next!88715))))

(declare-fun tp!1053694 () Bool)

(declare-fun b_and!233309 () Bool)

(assert (=> b!3367072 (= tp!1053694 b_and!233309)))

(declare-fun b!3367069 () Bool)

(declare-fun e!2089842 () Bool)

(declare-fun e!2089853 () Bool)

(assert (=> b!3367069 (= e!2089842 e!2089853)))

(declare-fun res!1361584 () Bool)

(assert (=> b!3367069 (=> res!1361584 e!2089853)))

(declare-datatypes ((C!20396 0))(
  ( (C!20397 (val!12246 Int)) )
))
(declare-datatypes ((Regex!10105 0))(
  ( (ElementMatch!10105 (c!573246 C!20396)) (Concat!15681 (regOne!20722 Regex!10105) (regTwo!20722 Regex!10105)) (EmptyExpr!10105) (Star!10105 (reg!10434 Regex!10105)) (EmptyLang!10105) (Union!10105 (regOne!20723 Regex!10105) (regTwo!20723 Regex!10105)) )
))
(declare-datatypes ((List!36858 0))(
  ( (Nil!36734) (Cons!36734 (h!42154 (_ BitVec 16)) (t!261581 List!36858)) )
))
(declare-datatypes ((TokenValue!5576 0))(
  ( (FloatLiteralValue!11152 (text!39477 List!36858)) (TokenValueExt!5575 (__x!23369 Int)) (Broken!27880 (value!172795 List!36858)) (Object!5699) (End!5576) (Def!5576) (Underscore!5576) (Match!5576) (Else!5576) (Error!5576) (Case!5576) (If!5576) (Extends!5576) (Abstract!5576) (Class!5576) (Val!5576) (DelimiterValue!11152 (del!5636 List!36858)) (KeywordValue!5582 (value!172796 List!36858)) (CommentValue!11152 (value!172797 List!36858)) (WhitespaceValue!11152 (value!172798 List!36858)) (IndentationValue!5576 (value!172799 List!36858)) (String!41213) (Int32!5576) (Broken!27881 (value!172800 List!36858)) (Boolean!5577) (Unit!51835) (OperatorValue!5579 (op!5636 List!36858)) (IdentifierValue!11152 (value!172801 List!36858)) (IdentifierValue!11153 (value!172802 List!36858)) (WhitespaceValue!11153 (value!172803 List!36858)) (True!11152) (False!11152) (Broken!27882 (value!172804 List!36858)) (Broken!27883 (value!172805 List!36858)) (True!11153) (RightBrace!5576) (RightBracket!5576) (Colon!5576) (Null!5576) (Comma!5576) (LeftBracket!5576) (False!11153) (LeftBrace!5576) (ImaginaryLiteralValue!5576 (text!39478 List!36858)) (StringLiteralValue!16728 (value!172806 List!36858)) (EOFValue!5576 (value!172807 List!36858)) (IdentValue!5576 (value!172808 List!36858)) (DelimiterValue!11153 (value!172809 List!36858)) (DedentValue!5576 (value!172810 List!36858)) (NewLineValue!5576 (value!172811 List!36858)) (IntegerValue!16728 (value!172812 (_ BitVec 32)) (text!39479 List!36858)) (IntegerValue!16729 (value!172813 Int) (text!39480 List!36858)) (Times!5576) (Or!5576) (Equal!5576) (Minus!5576) (Broken!27884 (value!172814 List!36858)) (And!5576) (Div!5576) (LessEqual!5576) (Mod!5576) (Concat!15682) (Not!5576) (Plus!5576) (SpaceValue!5576 (value!172815 List!36858)) (IntegerValue!16730 (value!172816 Int) (text!39481 List!36858)) (StringLiteralValue!16729 (text!39482 List!36858)) (FloatLiteralValue!11153 (text!39483 List!36858)) (BytesLiteralValue!5576 (value!172817 List!36858)) (CommentValue!11153 (value!172818 List!36858)) (StringLiteralValue!16730 (value!172819 List!36858)) (ErrorTokenValue!5576 (msg!5637 List!36858)) )
))
(declare-datatypes ((List!36859 0))(
  ( (Nil!36735) (Cons!36735 (h!42155 C!20396) (t!261582 List!36859)) )
))
(declare-datatypes ((IArray!22139 0))(
  ( (IArray!22140 (innerList!11127 List!36859)) )
))
(declare-datatypes ((Conc!11067 0))(
  ( (Node!11067 (left!28634 Conc!11067) (right!28964 Conc!11067) (csize!22364 Int) (cheight!11278 Int)) (Leaf!17351 (xs!14217 IArray!22139) (csize!22365 Int)) (Empty!11067) )
))
(declare-datatypes ((BalanceConc!21748 0))(
  ( (BalanceConc!21749 (c!573247 Conc!11067)) )
))
(declare-datatypes ((String!41214 0))(
  ( (String!41215 (value!172820 String)) )
))
(declare-datatypes ((TokenValueInjection!10580 0))(
  ( (TokenValueInjection!10581 (toValue!7526 Int) (toChars!7385 Int)) )
))
(declare-datatypes ((Rule!10492 0))(
  ( (Rule!10493 (regex!5346 Regex!10105) (tag!5904 String!41214) (isSeparator!5346 Bool) (transformation!5346 TokenValueInjection!10580)) )
))
(declare-datatypes ((List!36860 0))(
  ( (Nil!36736) (Cons!36736 (h!42156 Rule!10492) (t!261583 List!36860)) )
))
(declare-fun rules!2135 () List!36860)

(declare-datatypes ((Token!10058 0))(
  ( (Token!10059 (value!172821 TokenValue!5576) (rule!7884 Rule!10492) (size!27795 Int) (originalCharacters!6060 List!36859)) )
))
(declare-datatypes ((List!36861 0))(
  ( (Nil!36737) (Cons!36737 (h!42157 Token!10058) (t!261584 List!36861)) )
))
(declare-fun tokens!494 () List!36861)

(declare-fun contains!6679 (List!36860 Rule!10492) Bool)

(assert (=> b!3367069 (= res!1361584 (not (contains!6679 rules!2135 (rule!7884 (h!42157 tokens!494)))))))

(declare-fun e!2089836 () Bool)

(assert (=> b!3367069 e!2089836))

(declare-fun res!1361591 () Bool)

(assert (=> b!3367069 (=> (not res!1361591) (not e!2089836))))

(declare-datatypes ((Option!7340 0))(
  ( (None!7339) (Some!7339 (v!36333 Rule!10492)) )
))
(declare-fun lt!1142541 () Option!7340)

(declare-fun isDefined!5680 (Option!7340) Bool)

(assert (=> b!3367069 (= res!1361591 (isDefined!5680 lt!1142541))))

(declare-fun separatorToken!241 () Token!10058)

(declare-datatypes ((LexerInterface!4935 0))(
  ( (LexerInterfaceExt!4932 (__x!23370 Int)) (Lexer!4933) )
))
(declare-fun thiss!18206 () LexerInterface!4935)

(declare-fun getRuleFromTag!1001 (LexerInterface!4935 List!36860 String!41214) Option!7340)

(assert (=> b!3367069 (= lt!1142541 (getRuleFromTag!1001 thiss!18206 rules!2135 (tag!5904 (rule!7884 separatorToken!241))))))

(declare-datatypes ((Unit!51836 0))(
  ( (Unit!51837) )
))
(declare-fun lt!1142545 () Unit!51836)

(declare-fun lt!1142537 () List!36859)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1001 (LexerInterface!4935 List!36860 List!36859 Token!10058) Unit!51836)

(assert (=> b!3367069 (= lt!1142545 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1001 thiss!18206 rules!2135 lt!1142537 separatorToken!241))))

(declare-fun e!2089854 () Bool)

(assert (=> b!3367069 e!2089854))

(declare-fun res!1361595 () Bool)

(assert (=> b!3367069 (=> (not res!1361595) (not e!2089854))))

(declare-fun lt!1142544 () Option!7340)

(assert (=> b!3367069 (= res!1361595 (isDefined!5680 lt!1142544))))

(assert (=> b!3367069 (= lt!1142544 (getRuleFromTag!1001 thiss!18206 rules!2135 (tag!5904 (rule!7884 (h!42157 tokens!494)))))))

(declare-fun lt!1142546 () List!36859)

(declare-fun lt!1142542 () Unit!51836)

(assert (=> b!3367069 (= lt!1142542 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1001 thiss!18206 rules!2135 lt!1142546 (h!42157 tokens!494)))))

(declare-fun lt!1142538 () Unit!51836)

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!930 (LexerInterface!4935 List!36860 List!36861 Token!10058) Unit!51836)

(assert (=> b!3367069 (= lt!1142538 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!930 thiss!18206 rules!2135 tokens!494 (h!42157 tokens!494)))))

(declare-fun isEmpty!20931 (List!36859) Bool)

(declare-fun getSuffix!1440 (List!36859 List!36859) List!36859)

(assert (=> b!3367069 (isEmpty!20931 (getSuffix!1440 lt!1142546 lt!1142546))))

(declare-fun lt!1142547 () Unit!51836)

(declare-fun lemmaGetSuffixOnListWithItSelfIsEmpty!98 (List!36859) Unit!51836)

(assert (=> b!3367069 (= lt!1142547 (lemmaGetSuffixOnListWithItSelfIsEmpty!98 lt!1142546))))

(declare-fun b!3367070 () Bool)

(declare-fun e!2089834 () Bool)

(declare-fun e!2089840 () Bool)

(declare-fun tp!1053698 () Bool)

(declare-fun inv!49791 (Token!10058) Bool)

(assert (=> b!3367070 (= e!2089834 (and (inv!49791 (h!42157 tokens!494)) e!2089840 tp!1053698))))

(declare-fun b!3367071 () Bool)

(declare-fun e!2089838 () Bool)

(assert (=> b!3367071 (= e!2089836 e!2089838)))

(declare-fun res!1361600 () Bool)

(assert (=> b!3367071 (=> (not res!1361600) (not e!2089838))))

(declare-fun lt!1142536 () Rule!10492)

(declare-fun matchR!4697 (Regex!10105 List!36859) Bool)

(assert (=> b!3367071 (= res!1361600 (matchR!4697 (regex!5346 lt!1142536) lt!1142537))))

(declare-fun get!11710 (Option!7340) Rule!10492)

(assert (=> b!3367071 (= lt!1142536 (get!11710 lt!1142541))))

(declare-fun e!2089847 () Bool)

(assert (=> b!3367072 (= e!2089847 (and tp!1053703 tp!1053694))))

(declare-fun b!3367073 () Bool)

(declare-fun e!2089851 () Bool)

(declare-fun e!2089831 () Bool)

(assert (=> b!3367073 (= e!2089851 e!2089831)))

(declare-fun res!1361588 () Bool)

(assert (=> b!3367073 (=> (not res!1361588) (not e!2089831))))

(declare-datatypes ((IArray!22141 0))(
  ( (IArray!22142 (innerList!11128 List!36861)) )
))
(declare-datatypes ((Conc!11068 0))(
  ( (Node!11068 (left!28635 Conc!11068) (right!28965 Conc!11068) (csize!22366 Int) (cheight!11279 Int)) (Leaf!17352 (xs!14218 IArray!22141) (csize!22367 Int)) (Empty!11068) )
))
(declare-datatypes ((BalanceConc!21750 0))(
  ( (BalanceConc!21751 (c!573248 Conc!11068)) )
))
(declare-fun lt!1142534 () BalanceConc!21750)

(declare-fun rulesProduceEachTokenIndividually!1386 (LexerInterface!4935 List!36860 BalanceConc!21750) Bool)

(assert (=> b!3367073 (= res!1361588 (rulesProduceEachTokenIndividually!1386 thiss!18206 rules!2135 lt!1142534))))

(declare-fun seqFromList!3745 (List!36861) BalanceConc!21750)

(assert (=> b!3367073 (= lt!1142534 (seqFromList!3745 tokens!494))))

(declare-fun b!3367074 () Bool)

(declare-fun e!2089833 () Bool)

(assert (=> b!3367074 (= e!2089854 e!2089833)))

(declare-fun res!1361596 () Bool)

(assert (=> b!3367074 (=> (not res!1361596) (not e!2089833))))

(declare-fun lt!1142532 () Rule!10492)

(assert (=> b!3367074 (= res!1361596 (matchR!4697 (regex!5346 lt!1142532) lt!1142546))))

(assert (=> b!3367074 (= lt!1142532 (get!11710 lt!1142544))))

(declare-fun b!3367075 () Bool)

(declare-fun e!2089835 () Bool)

(declare-fun e!2089848 () Bool)

(declare-fun tp!1053697 () Bool)

(assert (=> b!3367075 (= e!2089835 (and e!2089848 tp!1053697))))

(declare-fun b!3367076 () Bool)

(declare-fun ++!8959 (List!36859 List!36859) List!36859)

(assert (=> b!3367076 (= e!2089853 (= lt!1142546 (++!8959 lt!1142546 Nil!36735)))))

(declare-fun b!3367077 () Bool)

(declare-fun res!1361589 () Bool)

(declare-fun e!2089849 () Bool)

(assert (=> b!3367077 (=> res!1361589 e!2089849)))

(declare-fun isEmpty!20932 (BalanceConc!21750) Bool)

(declare-datatypes ((tuple2!36278 0))(
  ( (tuple2!36279 (_1!21273 BalanceConc!21750) (_2!21273 BalanceConc!21748)) )
))
(declare-fun lex!2261 (LexerInterface!4935 List!36860 BalanceConc!21748) tuple2!36278)

(declare-fun seqFromList!3746 (List!36859) BalanceConc!21748)

(assert (=> b!3367077 (= res!1361589 (isEmpty!20932 (_1!21273 (lex!2261 thiss!18206 rules!2135 (seqFromList!3746 lt!1142546)))))))

(declare-fun b!3367078 () Bool)

(declare-fun res!1361601 () Bool)

(assert (=> b!3367078 (=> (not res!1361601) (not e!2089851))))

(declare-fun isEmpty!20933 (List!36860) Bool)

(assert (=> b!3367078 (= res!1361601 (not (isEmpty!20933 rules!2135)))))

(declare-fun b!3367079 () Bool)

(declare-fun res!1361594 () Bool)

(assert (=> b!3367079 (=> res!1361594 e!2089849)))

(declare-fun rulesProduceIndividualToken!2427 (LexerInterface!4935 List!36860 Token!10058) Bool)

(assert (=> b!3367079 (= res!1361594 (not (rulesProduceIndividualToken!2427 thiss!18206 rules!2135 (h!42157 tokens!494))))))

(declare-fun b!3367080 () Bool)

(declare-fun res!1361603 () Bool)

(assert (=> b!3367080 (=> (not res!1361603) (not e!2089831))))

(assert (=> b!3367080 (= res!1361603 (isSeparator!5346 (rule!7884 separatorToken!241)))))

(declare-fun b!3367081 () Bool)

(declare-fun e!2089843 () Bool)

(assert (=> b!3367081 (= e!2089843 e!2089842)))

(declare-fun res!1361599 () Bool)

(assert (=> b!3367081 (=> res!1361599 e!2089842)))

(declare-fun lt!1142543 () BalanceConc!21748)

(declare-fun list!13261 (BalanceConc!21748) List!36859)

(assert (=> b!3367081 (= res!1361599 (not (= (list!13261 lt!1142543) (++!8959 lt!1142546 lt!1142537))))))

(declare-fun charsOf!3360 (Token!10058) BalanceConc!21748)

(assert (=> b!3367081 (= lt!1142537 (list!13261 (charsOf!3360 separatorToken!241)))))

(declare-fun printWithSeparatorToken!126 (LexerInterface!4935 BalanceConc!21750 Token!10058) BalanceConc!21748)

(assert (=> b!3367081 (= lt!1142543 (printWithSeparatorToken!126 thiss!18206 lt!1142534 separatorToken!241))))

(declare-fun e!2089832 () Bool)

(declare-fun b!3367083 () Bool)

(declare-fun tp!1053701 () Bool)

(declare-fun inv!49788 (String!41214) Bool)

(declare-fun inv!49792 (TokenValueInjection!10580) Bool)

(assert (=> b!3367083 (= e!2089848 (and tp!1053701 (inv!49788 (tag!5904 (h!42156 rules!2135))) (inv!49792 (transformation!5346 (h!42156 rules!2135))) e!2089832))))

(declare-fun b!3367084 () Bool)

(declare-fun res!1361585 () Bool)

(assert (=> b!3367084 (=> (not res!1361585) (not e!2089831))))

(get-info :version)

(assert (=> b!3367084 (= res!1361585 (and (not ((_ is Nil!36737) tokens!494)) ((_ is Nil!36737) (t!261584 tokens!494))))))

(declare-fun e!2089850 () Bool)

(declare-fun e!2089841 () Bool)

(declare-fun b!3367085 () Bool)

(declare-fun tp!1053695 () Bool)

(declare-fun inv!21 (TokenValue!5576) Bool)

(assert (=> b!3367085 (= e!2089841 (and (inv!21 (value!172821 separatorToken!241)) e!2089850 tp!1053695))))

(declare-fun b!3367086 () Bool)

(declare-fun res!1361598 () Bool)

(assert (=> b!3367086 (=> (not res!1361598) (not e!2089851))))

(declare-fun rulesInvariant!4332 (LexerInterface!4935 List!36860) Bool)

(assert (=> b!3367086 (= res!1361598 (rulesInvariant!4332 thiss!18206 rules!2135))))

(declare-fun b!3367087 () Bool)

(declare-fun e!2089844 () Bool)

(assert (=> b!3367087 (= e!2089844 e!2089849)))

(declare-fun res!1361587 () Bool)

(assert (=> b!3367087 (=> res!1361587 e!2089849)))

(declare-fun lt!1142548 () List!36859)

(declare-fun lt!1142540 () List!36859)

(assert (=> b!3367087 (= res!1361587 (or (not (= lt!1142540 lt!1142546)) (not (= lt!1142548 lt!1142546))))))

(assert (=> b!3367087 (= lt!1142546 (list!13261 (charsOf!3360 (h!42157 tokens!494))))))

(declare-fun e!2089856 () Bool)

(declare-fun b!3367088 () Bool)

(declare-fun e!2089852 () Bool)

(declare-fun tp!1053705 () Bool)

(assert (=> b!3367088 (= e!2089856 (and tp!1053705 (inv!49788 (tag!5904 (rule!7884 (h!42157 tokens!494)))) (inv!49792 (transformation!5346 (rule!7884 (h!42157 tokens!494)))) e!2089852))))

(declare-fun b!3367089 () Bool)

(declare-fun tp!1053706 () Bool)

(assert (=> b!3367089 (= e!2089850 (and tp!1053706 (inv!49788 (tag!5904 (rule!7884 separatorToken!241))) (inv!49792 (transformation!5346 (rule!7884 separatorToken!241))) e!2089847))))

(declare-fun b!3367090 () Bool)

(declare-fun res!1361602 () Bool)

(assert (=> b!3367090 (=> (not res!1361602) (not e!2089831))))

(declare-fun sepAndNonSepRulesDisjointChars!1540 (List!36860 List!36860) Bool)

(assert (=> b!3367090 (= res!1361602 (sepAndNonSepRulesDisjointChars!1540 rules!2135 rules!2135))))

(declare-fun b!3367091 () Bool)

(declare-fun tp!1053702 () Bool)

(assert (=> b!3367091 (= e!2089840 (and (inv!21 (value!172821 (h!42157 tokens!494))) e!2089856 tp!1053702))))

(declare-fun b!3367092 () Bool)

(assert (=> b!3367092 (= e!2089849 e!2089843)))

(declare-fun res!1361597 () Bool)

(assert (=> b!3367092 (=> res!1361597 e!2089843)))

(assert (=> b!3367092 (= res!1361597 (isSeparator!5346 (rule!7884 (h!42157 tokens!494))))))

(declare-fun lt!1142533 () Unit!51836)

(declare-fun lambda!120185 () Int)

(declare-fun forallContained!1293 (List!36861 Int Token!10058) Unit!51836)

(assert (=> b!3367092 (= lt!1142533 (forallContained!1293 tokens!494 lambda!120185 (h!42157 tokens!494)))))

(assert (=> b!3367093 (= e!2089832 (and tp!1053696 tp!1053704))))

(declare-fun b!3367094 () Bool)

(assert (=> b!3367094 (= e!2089833 (= (rule!7884 (h!42157 tokens!494)) lt!1142532))))

(declare-fun b!3367095 () Bool)

(assert (=> b!3367095 (= e!2089831 (not e!2089844))))

(declare-fun res!1361592 () Bool)

(assert (=> b!3367095 (=> res!1361592 e!2089844)))

(assert (=> b!3367095 (= res!1361592 (not (= lt!1142548 lt!1142540)))))

(declare-fun printList!1483 (LexerInterface!4935 List!36861) List!36859)

(assert (=> b!3367095 (= lt!1142540 (printList!1483 thiss!18206 (Cons!36737 (h!42157 tokens!494) Nil!36737)))))

(declare-fun lt!1142535 () BalanceConc!21748)

(assert (=> b!3367095 (= lt!1142548 (list!13261 lt!1142535))))

(declare-fun lt!1142539 () BalanceConc!21750)

(declare-fun printTailRec!1430 (LexerInterface!4935 BalanceConc!21750 Int BalanceConc!21748) BalanceConc!21748)

(assert (=> b!3367095 (= lt!1142535 (printTailRec!1430 thiss!18206 lt!1142539 0 (BalanceConc!21749 Empty!11067)))))

(declare-fun print!2000 (LexerInterface!4935 BalanceConc!21750) BalanceConc!21748)

(assert (=> b!3367095 (= lt!1142535 (print!2000 thiss!18206 lt!1142539))))

(declare-fun singletonSeq!2442 (Token!10058) BalanceConc!21750)

(assert (=> b!3367095 (= lt!1142539 (singletonSeq!2442 (h!42157 tokens!494)))))

(assert (=> b!3367096 (= e!2089852 (and tp!1053700 tp!1053699))))

(declare-fun b!3367082 () Bool)

(assert (=> b!3367082 (= e!2089838 (= (rule!7884 separatorToken!241) lt!1142536))))

(declare-fun res!1361586 () Bool)

(assert (=> start!313186 (=> (not res!1361586) (not e!2089851))))

(assert (=> start!313186 (= res!1361586 ((_ is Lexer!4933) thiss!18206))))

(assert (=> start!313186 e!2089851))

(assert (=> start!313186 true))

(assert (=> start!313186 e!2089835))

(assert (=> start!313186 (and (inv!49791 separatorToken!241) e!2089841)))

(assert (=> start!313186 e!2089834))

(declare-fun b!3367097 () Bool)

(declare-fun res!1361590 () Bool)

(assert (=> b!3367097 (=> (not res!1361590) (not e!2089831))))

(assert (=> b!3367097 (= res!1361590 (rulesProduceIndividualToken!2427 thiss!18206 rules!2135 separatorToken!241))))

(declare-fun b!3367098 () Bool)

(declare-fun res!1361593 () Bool)

(assert (=> b!3367098 (=> (not res!1361593) (not e!2089831))))

(declare-fun forall!7703 (List!36861 Int) Bool)

(assert (=> b!3367098 (= res!1361593 (forall!7703 tokens!494 lambda!120185))))

(assert (= (and start!313186 res!1361586) b!3367078))

(assert (= (and b!3367078 res!1361601) b!3367086))

(assert (= (and b!3367086 res!1361598) b!3367073))

(assert (= (and b!3367073 res!1361588) b!3367097))

(assert (= (and b!3367097 res!1361590) b!3367080))

(assert (= (and b!3367080 res!1361603) b!3367098))

(assert (= (and b!3367098 res!1361593) b!3367090))

(assert (= (and b!3367090 res!1361602) b!3367084))

(assert (= (and b!3367084 res!1361585) b!3367095))

(assert (= (and b!3367095 (not res!1361592)) b!3367087))

(assert (= (and b!3367087 (not res!1361587)) b!3367079))

(assert (= (and b!3367079 (not res!1361594)) b!3367077))

(assert (= (and b!3367077 (not res!1361589)) b!3367092))

(assert (= (and b!3367092 (not res!1361597)) b!3367081))

(assert (= (and b!3367081 (not res!1361599)) b!3367069))

(assert (= (and b!3367069 res!1361595) b!3367074))

(assert (= (and b!3367074 res!1361596) b!3367094))

(assert (= (and b!3367069 res!1361591) b!3367071))

(assert (= (and b!3367071 res!1361600) b!3367082))

(assert (= (and b!3367069 (not res!1361584)) b!3367076))

(assert (= b!3367083 b!3367093))

(assert (= b!3367075 b!3367083))

(assert (= (and start!313186 ((_ is Cons!36736) rules!2135)) b!3367075))

(assert (= b!3367089 b!3367072))

(assert (= b!3367085 b!3367089))

(assert (= start!313186 b!3367085))

(assert (= b!3367088 b!3367096))

(assert (= b!3367091 b!3367088))

(assert (= b!3367070 b!3367091))

(assert (= (and start!313186 ((_ is Cons!36737) tokens!494)) b!3367070))

(declare-fun m!3727073 () Bool)

(assert (=> b!3367077 m!3727073))

(assert (=> b!3367077 m!3727073))

(declare-fun m!3727075 () Bool)

(assert (=> b!3367077 m!3727075))

(declare-fun m!3727077 () Bool)

(assert (=> b!3367077 m!3727077))

(declare-fun m!3727079 () Bool)

(assert (=> b!3367098 m!3727079))

(declare-fun m!3727081 () Bool)

(assert (=> b!3367069 m!3727081))

(declare-fun m!3727083 () Bool)

(assert (=> b!3367069 m!3727083))

(declare-fun m!3727085 () Bool)

(assert (=> b!3367069 m!3727085))

(declare-fun m!3727087 () Bool)

(assert (=> b!3367069 m!3727087))

(declare-fun m!3727089 () Bool)

(assert (=> b!3367069 m!3727089))

(declare-fun m!3727091 () Bool)

(assert (=> b!3367069 m!3727091))

(declare-fun m!3727093 () Bool)

(assert (=> b!3367069 m!3727093))

(declare-fun m!3727095 () Bool)

(assert (=> b!3367069 m!3727095))

(assert (=> b!3367069 m!3727083))

(declare-fun m!3727097 () Bool)

(assert (=> b!3367069 m!3727097))

(declare-fun m!3727099 () Bool)

(assert (=> b!3367069 m!3727099))

(declare-fun m!3727101 () Bool)

(assert (=> b!3367069 m!3727101))

(declare-fun m!3727103 () Bool)

(assert (=> b!3367092 m!3727103))

(declare-fun m!3727105 () Bool)

(assert (=> b!3367087 m!3727105))

(assert (=> b!3367087 m!3727105))

(declare-fun m!3727107 () Bool)

(assert (=> b!3367087 m!3727107))

(declare-fun m!3727109 () Bool)

(assert (=> b!3367070 m!3727109))

(declare-fun m!3727111 () Bool)

(assert (=> b!3367085 m!3727111))

(declare-fun m!3727113 () Bool)

(assert (=> b!3367086 m!3727113))

(declare-fun m!3727115 () Bool)

(assert (=> b!3367083 m!3727115))

(declare-fun m!3727117 () Bool)

(assert (=> b!3367083 m!3727117))

(declare-fun m!3727119 () Bool)

(assert (=> b!3367091 m!3727119))

(declare-fun m!3727121 () Bool)

(assert (=> b!3367088 m!3727121))

(declare-fun m!3727123 () Bool)

(assert (=> b!3367088 m!3727123))

(declare-fun m!3727125 () Bool)

(assert (=> b!3367089 m!3727125))

(declare-fun m!3727127 () Bool)

(assert (=> b!3367089 m!3727127))

(declare-fun m!3727129 () Bool)

(assert (=> b!3367079 m!3727129))

(declare-fun m!3727131 () Bool)

(assert (=> b!3367073 m!3727131))

(declare-fun m!3727133 () Bool)

(assert (=> b!3367073 m!3727133))

(declare-fun m!3727135 () Bool)

(assert (=> b!3367090 m!3727135))

(declare-fun m!3727137 () Bool)

(assert (=> b!3367071 m!3727137))

(declare-fun m!3727139 () Bool)

(assert (=> b!3367071 m!3727139))

(declare-fun m!3727141 () Bool)

(assert (=> b!3367081 m!3727141))

(declare-fun m!3727143 () Bool)

(assert (=> b!3367081 m!3727143))

(declare-fun m!3727145 () Bool)

(assert (=> b!3367081 m!3727145))

(assert (=> b!3367081 m!3727141))

(declare-fun m!3727147 () Bool)

(assert (=> b!3367081 m!3727147))

(declare-fun m!3727149 () Bool)

(assert (=> b!3367081 m!3727149))

(declare-fun m!3727151 () Bool)

(assert (=> b!3367095 m!3727151))

(declare-fun m!3727153 () Bool)

(assert (=> b!3367095 m!3727153))

(declare-fun m!3727155 () Bool)

(assert (=> b!3367095 m!3727155))

(declare-fun m!3727157 () Bool)

(assert (=> b!3367095 m!3727157))

(declare-fun m!3727159 () Bool)

(assert (=> b!3367095 m!3727159))

(declare-fun m!3727161 () Bool)

(assert (=> b!3367078 m!3727161))

(declare-fun m!3727163 () Bool)

(assert (=> b!3367076 m!3727163))

(declare-fun m!3727165 () Bool)

(assert (=> b!3367074 m!3727165))

(declare-fun m!3727167 () Bool)

(assert (=> b!3367074 m!3727167))

(declare-fun m!3727169 () Bool)

(assert (=> b!3367097 m!3727169))

(declare-fun m!3727171 () Bool)

(assert (=> start!313186 m!3727171))

(check-sat (not b!3367078) (not b!3367089) (not b!3367085) (not b_next!88713) (not b_next!88711) (not b_next!88707) (not b!3367087) b_and!233303 (not b!3367098) (not b!3367071) (not b!3367076) (not b_next!88709) (not b_next!88705) (not b!3367070) (not b!3367081) (not b!3367083) (not b!3367079) (not b!3367069) (not b!3367073) b_and!233299 (not b!3367086) (not b!3367075) (not b!3367095) (not b!3367077) (not b!3367074) (not b_next!88715) (not start!313186) b_and!233309 (not b!3367091) b_and!233301 (not b!3367088) (not b!3367092) b_and!233305 (not b!3367097) b_and!233307 (not b!3367090))
(check-sat (not b_next!88713) b_and!233299 (not b_next!88715) b_and!233309 (not b_next!88711) (not b_next!88707) b_and!233301 b_and!233305 b_and!233307 b_and!233303 (not b_next!88709) (not b_next!88705))
(get-model)

(declare-fun d!954372 () Bool)

(assert (=> d!954372 (= (inv!49788 (tag!5904 (h!42156 rules!2135))) (= (mod (str.len (value!172820 (tag!5904 (h!42156 rules!2135)))) 2) 0))))

(assert (=> b!3367083 d!954372))

(declare-fun d!954374 () Bool)

(declare-fun res!1361625 () Bool)

(declare-fun e!2089868 () Bool)

(assert (=> d!954374 (=> (not res!1361625) (not e!2089868))))

(declare-fun semiInverseModEq!2225 (Int Int) Bool)

(assert (=> d!954374 (= res!1361625 (semiInverseModEq!2225 (toChars!7385 (transformation!5346 (h!42156 rules!2135))) (toValue!7526 (transformation!5346 (h!42156 rules!2135)))))))

(assert (=> d!954374 (= (inv!49792 (transformation!5346 (h!42156 rules!2135))) e!2089868)))

(declare-fun b!3367110 () Bool)

(declare-fun equivClasses!2124 (Int Int) Bool)

(assert (=> b!3367110 (= e!2089868 (equivClasses!2124 (toChars!7385 (transformation!5346 (h!42156 rules!2135))) (toValue!7526 (transformation!5346 (h!42156 rules!2135)))))))

(assert (= (and d!954374 res!1361625) b!3367110))

(declare-fun m!3727181 () Bool)

(assert (=> d!954374 m!3727181))

(declare-fun m!3727183 () Bool)

(assert (=> b!3367110 m!3727183))

(assert (=> b!3367083 d!954374))

(declare-fun d!954376 () Bool)

(declare-fun list!13264 (Conc!11067) List!36859)

(assert (=> d!954376 (= (list!13261 (charsOf!3360 (h!42157 tokens!494))) (list!13264 (c!573247 (charsOf!3360 (h!42157 tokens!494)))))))

(declare-fun bs!553960 () Bool)

(assert (= bs!553960 d!954376))

(declare-fun m!3727185 () Bool)

(assert (=> bs!553960 m!3727185))

(assert (=> b!3367087 d!954376))

(declare-fun d!954378 () Bool)

(declare-fun lt!1142554 () BalanceConc!21748)

(assert (=> d!954378 (= (list!13261 lt!1142554) (originalCharacters!6060 (h!42157 tokens!494)))))

(declare-fun dynLambda!15220 (Int TokenValue!5576) BalanceConc!21748)

(assert (=> d!954378 (= lt!1142554 (dynLambda!15220 (toChars!7385 (transformation!5346 (rule!7884 (h!42157 tokens!494)))) (value!172821 (h!42157 tokens!494))))))

(assert (=> d!954378 (= (charsOf!3360 (h!42157 tokens!494)) lt!1142554)))

(declare-fun b_lambda!95239 () Bool)

(assert (=> (not b_lambda!95239) (not d!954378)))

(declare-fun t!261586 () Bool)

(declare-fun tb!178731 () Bool)

(assert (=> (and b!3367096 (= (toChars!7385 (transformation!5346 (rule!7884 (h!42157 tokens!494)))) (toChars!7385 (transformation!5346 (rule!7884 (h!42157 tokens!494))))) t!261586) tb!178731))

(declare-fun b!3367115 () Bool)

(declare-fun e!2089871 () Bool)

(declare-fun tp!1053709 () Bool)

(declare-fun inv!49795 (Conc!11067) Bool)

(assert (=> b!3367115 (= e!2089871 (and (inv!49795 (c!573247 (dynLambda!15220 (toChars!7385 (transformation!5346 (rule!7884 (h!42157 tokens!494)))) (value!172821 (h!42157 tokens!494))))) tp!1053709))))

(declare-fun result!221972 () Bool)

(declare-fun inv!49796 (BalanceConc!21748) Bool)

(assert (=> tb!178731 (= result!221972 (and (inv!49796 (dynLambda!15220 (toChars!7385 (transformation!5346 (rule!7884 (h!42157 tokens!494)))) (value!172821 (h!42157 tokens!494)))) e!2089871))))

(assert (= tb!178731 b!3367115))

(declare-fun m!3727187 () Bool)

(assert (=> b!3367115 m!3727187))

(declare-fun m!3727189 () Bool)

(assert (=> tb!178731 m!3727189))

(assert (=> d!954378 t!261586))

(declare-fun b_and!233311 () Bool)

(assert (= b_and!233301 (and (=> t!261586 result!221972) b_and!233311)))

(declare-fun t!261588 () Bool)

(declare-fun tb!178733 () Bool)

(assert (=> (and b!3367093 (= (toChars!7385 (transformation!5346 (h!42156 rules!2135))) (toChars!7385 (transformation!5346 (rule!7884 (h!42157 tokens!494))))) t!261588) tb!178733))

(declare-fun result!221976 () Bool)

(assert (= result!221976 result!221972))

(assert (=> d!954378 t!261588))

(declare-fun b_and!233313 () Bool)

(assert (= b_and!233305 (and (=> t!261588 result!221976) b_and!233313)))

(declare-fun tb!178735 () Bool)

(declare-fun t!261590 () Bool)

(assert (=> (and b!3367072 (= (toChars!7385 (transformation!5346 (rule!7884 separatorToken!241))) (toChars!7385 (transformation!5346 (rule!7884 (h!42157 tokens!494))))) t!261590) tb!178735))

(declare-fun result!221978 () Bool)

(assert (= result!221978 result!221972))

(assert (=> d!954378 t!261590))

(declare-fun b_and!233315 () Bool)

(assert (= b_and!233309 (and (=> t!261590 result!221978) b_and!233315)))

(declare-fun m!3727191 () Bool)

(assert (=> d!954378 m!3727191))

(declare-fun m!3727193 () Bool)

(assert (=> d!954378 m!3727193))

(assert (=> b!3367087 d!954378))

(declare-fun d!954380 () Bool)

(declare-fun res!1361628 () Bool)

(declare-fun e!2089874 () Bool)

(assert (=> d!954380 (=> (not res!1361628) (not e!2089874))))

(declare-fun rulesValid!1985 (LexerInterface!4935 List!36860) Bool)

(assert (=> d!954380 (= res!1361628 (rulesValid!1985 thiss!18206 rules!2135))))

(assert (=> d!954380 (= (rulesInvariant!4332 thiss!18206 rules!2135) e!2089874)))

(declare-fun b!3367118 () Bool)

(declare-datatypes ((List!36863 0))(
  ( (Nil!36739) (Cons!36739 (h!42159 String!41214) (t!261640 List!36863)) )
))
(declare-fun noDuplicateTag!1981 (LexerInterface!4935 List!36860 List!36863) Bool)

(assert (=> b!3367118 (= e!2089874 (noDuplicateTag!1981 thiss!18206 rules!2135 Nil!36739))))

(assert (= (and d!954380 res!1361628) b!3367118))

(declare-fun m!3727195 () Bool)

(assert (=> d!954380 m!3727195))

(declare-fun m!3727197 () Bool)

(assert (=> b!3367118 m!3727197))

(assert (=> b!3367086 d!954380))

(declare-fun d!954382 () Bool)

(declare-fun res!1361633 () Bool)

(declare-fun e!2089877 () Bool)

(assert (=> d!954382 (=> (not res!1361633) (not e!2089877))))

(assert (=> d!954382 (= res!1361633 (not (isEmpty!20931 (originalCharacters!6060 separatorToken!241))))))

(assert (=> d!954382 (= (inv!49791 separatorToken!241) e!2089877)))

(declare-fun b!3367123 () Bool)

(declare-fun res!1361634 () Bool)

(assert (=> b!3367123 (=> (not res!1361634) (not e!2089877))))

(assert (=> b!3367123 (= res!1361634 (= (originalCharacters!6060 separatorToken!241) (list!13261 (dynLambda!15220 (toChars!7385 (transformation!5346 (rule!7884 separatorToken!241))) (value!172821 separatorToken!241)))))))

(declare-fun b!3367124 () Bool)

(declare-fun size!27798 (List!36859) Int)

(assert (=> b!3367124 (= e!2089877 (= (size!27795 separatorToken!241) (size!27798 (originalCharacters!6060 separatorToken!241))))))

(assert (= (and d!954382 res!1361633) b!3367123))

(assert (= (and b!3367123 res!1361634) b!3367124))

(declare-fun b_lambda!95241 () Bool)

(assert (=> (not b_lambda!95241) (not b!3367123)))

(declare-fun t!261592 () Bool)

(declare-fun tb!178737 () Bool)

(assert (=> (and b!3367096 (= (toChars!7385 (transformation!5346 (rule!7884 (h!42157 tokens!494)))) (toChars!7385 (transformation!5346 (rule!7884 separatorToken!241)))) t!261592) tb!178737))

(declare-fun b!3367125 () Bool)

(declare-fun e!2089878 () Bool)

(declare-fun tp!1053710 () Bool)

(assert (=> b!3367125 (= e!2089878 (and (inv!49795 (c!573247 (dynLambda!15220 (toChars!7385 (transformation!5346 (rule!7884 separatorToken!241))) (value!172821 separatorToken!241)))) tp!1053710))))

(declare-fun result!221980 () Bool)

(assert (=> tb!178737 (= result!221980 (and (inv!49796 (dynLambda!15220 (toChars!7385 (transformation!5346 (rule!7884 separatorToken!241))) (value!172821 separatorToken!241))) e!2089878))))

(assert (= tb!178737 b!3367125))

(declare-fun m!3727199 () Bool)

(assert (=> b!3367125 m!3727199))

(declare-fun m!3727201 () Bool)

(assert (=> tb!178737 m!3727201))

(assert (=> b!3367123 t!261592))

(declare-fun b_and!233317 () Bool)

(assert (= b_and!233311 (and (=> t!261592 result!221980) b_and!233317)))

(declare-fun t!261594 () Bool)

(declare-fun tb!178739 () Bool)

(assert (=> (and b!3367093 (= (toChars!7385 (transformation!5346 (h!42156 rules!2135))) (toChars!7385 (transformation!5346 (rule!7884 separatorToken!241)))) t!261594) tb!178739))

(declare-fun result!221982 () Bool)

(assert (= result!221982 result!221980))

(assert (=> b!3367123 t!261594))

(declare-fun b_and!233319 () Bool)

(assert (= b_and!233313 (and (=> t!261594 result!221982) b_and!233319)))

(declare-fun t!261596 () Bool)

(declare-fun tb!178741 () Bool)

(assert (=> (and b!3367072 (= (toChars!7385 (transformation!5346 (rule!7884 separatorToken!241))) (toChars!7385 (transformation!5346 (rule!7884 separatorToken!241)))) t!261596) tb!178741))

(declare-fun result!221984 () Bool)

(assert (= result!221984 result!221980))

(assert (=> b!3367123 t!261596))

(declare-fun b_and!233321 () Bool)

(assert (= b_and!233315 (and (=> t!261596 result!221984) b_and!233321)))

(declare-fun m!3727203 () Bool)

(assert (=> d!954382 m!3727203))

(declare-fun m!3727205 () Bool)

(assert (=> b!3367123 m!3727205))

(assert (=> b!3367123 m!3727205))

(declare-fun m!3727207 () Bool)

(assert (=> b!3367123 m!3727207))

(declare-fun m!3727209 () Bool)

(assert (=> b!3367124 m!3727209))

(assert (=> start!313186 d!954382))

(declare-fun d!954384 () Bool)

(declare-fun c!573254 () Bool)

(assert (=> d!954384 (= c!573254 ((_ is IntegerValue!16728) (value!172821 separatorToken!241)))))

(declare-fun e!2089885 () Bool)

(assert (=> d!954384 (= (inv!21 (value!172821 separatorToken!241)) e!2089885)))

(declare-fun b!3367136 () Bool)

(declare-fun inv!16 (TokenValue!5576) Bool)

(assert (=> b!3367136 (= e!2089885 (inv!16 (value!172821 separatorToken!241)))))

(declare-fun b!3367137 () Bool)

(declare-fun e!2089887 () Bool)

(assert (=> b!3367137 (= e!2089885 e!2089887)))

(declare-fun c!573253 () Bool)

(assert (=> b!3367137 (= c!573253 ((_ is IntegerValue!16729) (value!172821 separatorToken!241)))))

(declare-fun b!3367138 () Bool)

(declare-fun inv!17 (TokenValue!5576) Bool)

(assert (=> b!3367138 (= e!2089887 (inv!17 (value!172821 separatorToken!241)))))

(declare-fun b!3367139 () Bool)

(declare-fun e!2089886 () Bool)

(declare-fun inv!15 (TokenValue!5576) Bool)

(assert (=> b!3367139 (= e!2089886 (inv!15 (value!172821 separatorToken!241)))))

(declare-fun b!3367140 () Bool)

(declare-fun res!1361637 () Bool)

(assert (=> b!3367140 (=> res!1361637 e!2089886)))

(assert (=> b!3367140 (= res!1361637 (not ((_ is IntegerValue!16730) (value!172821 separatorToken!241))))))

(assert (=> b!3367140 (= e!2089887 e!2089886)))

(assert (= (and d!954384 c!573254) b!3367136))

(assert (= (and d!954384 (not c!573254)) b!3367137))

(assert (= (and b!3367137 c!573253) b!3367138))

(assert (= (and b!3367137 (not c!573253)) b!3367140))

(assert (= (and b!3367140 (not res!1361637)) b!3367139))

(declare-fun m!3727211 () Bool)

(assert (=> b!3367136 m!3727211))

(declare-fun m!3727213 () Bool)

(assert (=> b!3367138 m!3727213))

(declare-fun m!3727215 () Bool)

(assert (=> b!3367139 m!3727215))

(assert (=> b!3367085 d!954384))

(declare-fun d!954386 () Bool)

(declare-fun lt!1142562 () Bool)

(declare-fun e!2089892 () Bool)

(assert (=> d!954386 (= lt!1142562 e!2089892)))

(declare-fun res!1361645 () Bool)

(assert (=> d!954386 (=> (not res!1361645) (not e!2089892))))

(declare-fun list!13265 (BalanceConc!21750) List!36861)

(assert (=> d!954386 (= res!1361645 (= (list!13265 (_1!21273 (lex!2261 thiss!18206 rules!2135 (print!2000 thiss!18206 (singletonSeq!2442 (h!42157 tokens!494)))))) (list!13265 (singletonSeq!2442 (h!42157 tokens!494)))))))

(declare-fun e!2089893 () Bool)

(assert (=> d!954386 (= lt!1142562 e!2089893)))

(declare-fun res!1361646 () Bool)

(assert (=> d!954386 (=> (not res!1361646) (not e!2089893))))

(declare-fun lt!1142561 () tuple2!36278)

(declare-fun size!27799 (BalanceConc!21750) Int)

(assert (=> d!954386 (= res!1361646 (= (size!27799 (_1!21273 lt!1142561)) 1))))

(assert (=> d!954386 (= lt!1142561 (lex!2261 thiss!18206 rules!2135 (print!2000 thiss!18206 (singletonSeq!2442 (h!42157 tokens!494)))))))

(assert (=> d!954386 (not (isEmpty!20933 rules!2135))))

(assert (=> d!954386 (= (rulesProduceIndividualToken!2427 thiss!18206 rules!2135 (h!42157 tokens!494)) lt!1142562)))

(declare-fun b!3367147 () Bool)

(declare-fun res!1361644 () Bool)

(assert (=> b!3367147 (=> (not res!1361644) (not e!2089893))))

(declare-fun apply!8510 (BalanceConc!21750 Int) Token!10058)

(assert (=> b!3367147 (= res!1361644 (= (apply!8510 (_1!21273 lt!1142561) 0) (h!42157 tokens!494)))))

(declare-fun b!3367148 () Bool)

(declare-fun isEmpty!20936 (BalanceConc!21748) Bool)

(assert (=> b!3367148 (= e!2089893 (isEmpty!20936 (_2!21273 lt!1142561)))))

(declare-fun b!3367149 () Bool)

(assert (=> b!3367149 (= e!2089892 (isEmpty!20936 (_2!21273 (lex!2261 thiss!18206 rules!2135 (print!2000 thiss!18206 (singletonSeq!2442 (h!42157 tokens!494)))))))))

(assert (= (and d!954386 res!1361646) b!3367147))

(assert (= (and b!3367147 res!1361644) b!3367148))

(assert (= (and d!954386 res!1361645) b!3367149))

(declare-fun m!3727217 () Bool)

(assert (=> d!954386 m!3727217))

(declare-fun m!3727219 () Bool)

(assert (=> d!954386 m!3727219))

(assert (=> d!954386 m!3727153))

(assert (=> d!954386 m!3727161))

(assert (=> d!954386 m!3727153))

(declare-fun m!3727221 () Bool)

(assert (=> d!954386 m!3727221))

(assert (=> d!954386 m!3727153))

(assert (=> d!954386 m!3727217))

(declare-fun m!3727223 () Bool)

(assert (=> d!954386 m!3727223))

(declare-fun m!3727225 () Bool)

(assert (=> d!954386 m!3727225))

(declare-fun m!3727227 () Bool)

(assert (=> b!3367147 m!3727227))

(declare-fun m!3727229 () Bool)

(assert (=> b!3367148 m!3727229))

(assert (=> b!3367149 m!3727153))

(assert (=> b!3367149 m!3727153))

(assert (=> b!3367149 m!3727217))

(assert (=> b!3367149 m!3727217))

(assert (=> b!3367149 m!3727219))

(declare-fun m!3727231 () Bool)

(assert (=> b!3367149 m!3727231))

(assert (=> b!3367079 d!954386))

(declare-fun d!954388 () Bool)

(assert (=> d!954388 (= (isEmpty!20933 rules!2135) ((_ is Nil!36736) rules!2135))))

(assert (=> b!3367078 d!954388))

(declare-fun d!954390 () Bool)

(declare-fun lt!1142565 () Bool)

(declare-fun isEmpty!20937 (List!36861) Bool)

(assert (=> d!954390 (= lt!1142565 (isEmpty!20937 (list!13265 (_1!21273 (lex!2261 thiss!18206 rules!2135 (seqFromList!3746 lt!1142546))))))))

(declare-fun isEmpty!20938 (Conc!11068) Bool)

(assert (=> d!954390 (= lt!1142565 (isEmpty!20938 (c!573248 (_1!21273 (lex!2261 thiss!18206 rules!2135 (seqFromList!3746 lt!1142546))))))))

(assert (=> d!954390 (= (isEmpty!20932 (_1!21273 (lex!2261 thiss!18206 rules!2135 (seqFromList!3746 lt!1142546)))) lt!1142565)))

(declare-fun bs!553961 () Bool)

(assert (= bs!553961 d!954390))

(declare-fun m!3727233 () Bool)

(assert (=> bs!553961 m!3727233))

(assert (=> bs!553961 m!3727233))

(declare-fun m!3727235 () Bool)

(assert (=> bs!553961 m!3727235))

(declare-fun m!3727237 () Bool)

(assert (=> bs!553961 m!3727237))

(assert (=> b!3367077 d!954390))

(declare-fun b!3367222 () Bool)

(declare-fun e!2089941 () Bool)

(declare-fun lt!1142571 () tuple2!36278)

(assert (=> b!3367222 (= e!2089941 (not (isEmpty!20932 (_1!21273 lt!1142571))))))

(declare-fun b!3367223 () Bool)

(declare-fun e!2089940 () Bool)

(assert (=> b!3367223 (= e!2089940 (= (_2!21273 lt!1142571) (seqFromList!3746 lt!1142546)))))

(declare-fun b!3367224 () Bool)

(assert (=> b!3367224 (= e!2089940 e!2089941)))

(declare-fun res!1361675 () Bool)

(declare-fun size!27800 (BalanceConc!21748) Int)

(assert (=> b!3367224 (= res!1361675 (< (size!27800 (_2!21273 lt!1142571)) (size!27800 (seqFromList!3746 lt!1142546))))))

(assert (=> b!3367224 (=> (not res!1361675) (not e!2089941))))

(declare-fun d!954392 () Bool)

(declare-fun e!2089942 () Bool)

(assert (=> d!954392 e!2089942))

(declare-fun res!1361674 () Bool)

(assert (=> d!954392 (=> (not res!1361674) (not e!2089942))))

(assert (=> d!954392 (= res!1361674 e!2089940)))

(declare-fun c!573267 () Bool)

(assert (=> d!954392 (= c!573267 (> (size!27799 (_1!21273 lt!1142571)) 0))))

(declare-fun lexTailRecV2!997 (LexerInterface!4935 List!36860 BalanceConc!21748 BalanceConc!21748 BalanceConc!21748 BalanceConc!21750) tuple2!36278)

(assert (=> d!954392 (= lt!1142571 (lexTailRecV2!997 thiss!18206 rules!2135 (seqFromList!3746 lt!1142546) (BalanceConc!21749 Empty!11067) (seqFromList!3746 lt!1142546) (BalanceConc!21751 Empty!11068)))))

(assert (=> d!954392 (= (lex!2261 thiss!18206 rules!2135 (seqFromList!3746 lt!1142546)) lt!1142571)))

(declare-fun b!3367225 () Bool)

(declare-fun res!1361676 () Bool)

(assert (=> b!3367225 (=> (not res!1361676) (not e!2089942))))

(declare-datatypes ((tuple2!36280 0))(
  ( (tuple2!36281 (_1!21274 List!36861) (_2!21274 List!36859)) )
))
(declare-fun lexList!1387 (LexerInterface!4935 List!36860 List!36859) tuple2!36280)

(assert (=> b!3367225 (= res!1361676 (= (list!13265 (_1!21273 lt!1142571)) (_1!21274 (lexList!1387 thiss!18206 rules!2135 (list!13261 (seqFromList!3746 lt!1142546))))))))

(declare-fun b!3367226 () Bool)

(assert (=> b!3367226 (= e!2089942 (= (list!13261 (_2!21273 lt!1142571)) (_2!21274 (lexList!1387 thiss!18206 rules!2135 (list!13261 (seqFromList!3746 lt!1142546))))))))

(assert (= (and d!954392 c!573267) b!3367224))

(assert (= (and d!954392 (not c!573267)) b!3367223))

(assert (= (and b!3367224 res!1361675) b!3367222))

(assert (= (and d!954392 res!1361674) b!3367225))

(assert (= (and b!3367225 res!1361676) b!3367226))

(declare-fun m!3727289 () Bool)

(assert (=> b!3367225 m!3727289))

(assert (=> b!3367225 m!3727073))

(declare-fun m!3727291 () Bool)

(assert (=> b!3367225 m!3727291))

(assert (=> b!3367225 m!3727291))

(declare-fun m!3727293 () Bool)

(assert (=> b!3367225 m!3727293))

(declare-fun m!3727295 () Bool)

(assert (=> b!3367222 m!3727295))

(declare-fun m!3727297 () Bool)

(assert (=> b!3367224 m!3727297))

(assert (=> b!3367224 m!3727073))

(declare-fun m!3727299 () Bool)

(assert (=> b!3367224 m!3727299))

(declare-fun m!3727301 () Bool)

(assert (=> b!3367226 m!3727301))

(assert (=> b!3367226 m!3727073))

(assert (=> b!3367226 m!3727291))

(assert (=> b!3367226 m!3727291))

(assert (=> b!3367226 m!3727293))

(declare-fun m!3727303 () Bool)

(assert (=> d!954392 m!3727303))

(assert (=> d!954392 m!3727073))

(assert (=> d!954392 m!3727073))

(declare-fun m!3727305 () Bool)

(assert (=> d!954392 m!3727305))

(assert (=> b!3367077 d!954392))

(declare-fun d!954408 () Bool)

(declare-fun fromListB!1665 (List!36859) BalanceConc!21748)

(assert (=> d!954408 (= (seqFromList!3746 lt!1142546) (fromListB!1665 lt!1142546))))

(declare-fun bs!553964 () Bool)

(assert (= bs!553964 d!954408))

(declare-fun m!3727307 () Bool)

(assert (=> bs!553964 m!3727307))

(assert (=> b!3367077 d!954408))

(declare-fun d!954410 () Bool)

(declare-fun res!1361697 () Bool)

(declare-fun e!2089959 () Bool)

(assert (=> d!954410 (=> res!1361697 e!2089959)))

(assert (=> d!954410 (= res!1361697 ((_ is Nil!36737) tokens!494))))

(assert (=> d!954410 (= (forall!7703 tokens!494 lambda!120185) e!2089959)))

(declare-fun b!3367253 () Bool)

(declare-fun e!2089960 () Bool)

(assert (=> b!3367253 (= e!2089959 e!2089960)))

(declare-fun res!1361698 () Bool)

(assert (=> b!3367253 (=> (not res!1361698) (not e!2089960))))

(declare-fun dynLambda!15221 (Int Token!10058) Bool)

(assert (=> b!3367253 (= res!1361698 (dynLambda!15221 lambda!120185 (h!42157 tokens!494)))))

(declare-fun b!3367254 () Bool)

(assert (=> b!3367254 (= e!2089960 (forall!7703 (t!261584 tokens!494) lambda!120185))))

(assert (= (and d!954410 (not res!1361697)) b!3367253))

(assert (= (and b!3367253 res!1361698) b!3367254))

(declare-fun b_lambda!95247 () Bool)

(assert (=> (not b_lambda!95247) (not b!3367253)))

(declare-fun m!3727309 () Bool)

(assert (=> b!3367253 m!3727309))

(declare-fun m!3727311 () Bool)

(assert (=> b!3367254 m!3727311))

(assert (=> b!3367098 d!954410))

(declare-fun d!954412 () Bool)

(declare-fun lt!1142578 () BalanceConc!21748)

(declare-fun printWithSeparatorTokenList!238 (LexerInterface!4935 List!36861 Token!10058) List!36859)

(assert (=> d!954412 (= (list!13261 lt!1142578) (printWithSeparatorTokenList!238 thiss!18206 (list!13265 lt!1142534) separatorToken!241))))

(declare-fun printWithSeparatorTokenTailRec!54 (LexerInterface!4935 BalanceConc!21750 Token!10058 Int BalanceConc!21748) BalanceConc!21748)

(assert (=> d!954412 (= lt!1142578 (printWithSeparatorTokenTailRec!54 thiss!18206 lt!1142534 separatorToken!241 0 (BalanceConc!21749 Empty!11067)))))

(assert (=> d!954412 (isSeparator!5346 (rule!7884 separatorToken!241))))

(assert (=> d!954412 (= (printWithSeparatorToken!126 thiss!18206 lt!1142534 separatorToken!241) lt!1142578)))

(declare-fun bs!553965 () Bool)

(assert (= bs!553965 d!954412))

(declare-fun m!3727347 () Bool)

(assert (=> bs!553965 m!3727347))

(declare-fun m!3727349 () Bool)

(assert (=> bs!553965 m!3727349))

(assert (=> bs!553965 m!3727349))

(declare-fun m!3727351 () Bool)

(assert (=> bs!553965 m!3727351))

(declare-fun m!3727353 () Bool)

(assert (=> bs!553965 m!3727353))

(assert (=> b!3367081 d!954412))

(declare-fun b!3367301 () Bool)

(declare-fun e!2089988 () List!36859)

(assert (=> b!3367301 (= e!2089988 (Cons!36735 (h!42155 lt!1142546) (++!8959 (t!261582 lt!1142546) lt!1142537)))))

(declare-fun b!3367302 () Bool)

(declare-fun res!1361727 () Bool)

(declare-fun e!2089987 () Bool)

(assert (=> b!3367302 (=> (not res!1361727) (not e!2089987))))

(declare-fun lt!1142582 () List!36859)

(assert (=> b!3367302 (= res!1361727 (= (size!27798 lt!1142582) (+ (size!27798 lt!1142546) (size!27798 lt!1142537))))))

(declare-fun b!3367300 () Bool)

(assert (=> b!3367300 (= e!2089988 lt!1142537)))

(declare-fun b!3367303 () Bool)

(assert (=> b!3367303 (= e!2089987 (or (not (= lt!1142537 Nil!36735)) (= lt!1142582 lt!1142546)))))

(declare-fun d!954424 () Bool)

(assert (=> d!954424 e!2089987))

(declare-fun res!1361726 () Bool)

(assert (=> d!954424 (=> (not res!1361726) (not e!2089987))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!5044 (List!36859) (InoxSet C!20396))

(assert (=> d!954424 (= res!1361726 (= (content!5044 lt!1142582) ((_ map or) (content!5044 lt!1142546) (content!5044 lt!1142537))))))

(assert (=> d!954424 (= lt!1142582 e!2089988)))

(declare-fun c!573281 () Bool)

(assert (=> d!954424 (= c!573281 ((_ is Nil!36735) lt!1142546))))

(assert (=> d!954424 (= (++!8959 lt!1142546 lt!1142537) lt!1142582)))

(assert (= (and d!954424 c!573281) b!3367300))

(assert (= (and d!954424 (not c!573281)) b!3367301))

(assert (= (and d!954424 res!1361726) b!3367302))

(assert (= (and b!3367302 res!1361727) b!3367303))

(declare-fun m!3727373 () Bool)

(assert (=> b!3367301 m!3727373))

(declare-fun m!3727375 () Bool)

(assert (=> b!3367302 m!3727375))

(declare-fun m!3727377 () Bool)

(assert (=> b!3367302 m!3727377))

(declare-fun m!3727379 () Bool)

(assert (=> b!3367302 m!3727379))

(declare-fun m!3727381 () Bool)

(assert (=> d!954424 m!3727381))

(declare-fun m!3727383 () Bool)

(assert (=> d!954424 m!3727383))

(declare-fun m!3727385 () Bool)

(assert (=> d!954424 m!3727385))

(assert (=> b!3367081 d!954424))

(declare-fun d!954434 () Bool)

(assert (=> d!954434 (= (list!13261 lt!1142543) (list!13264 (c!573247 lt!1142543)))))

(declare-fun bs!553966 () Bool)

(assert (= bs!553966 d!954434))

(declare-fun m!3727387 () Bool)

(assert (=> bs!553966 m!3727387))

(assert (=> b!3367081 d!954434))

(declare-fun d!954436 () Bool)

(declare-fun lt!1142583 () BalanceConc!21748)

(assert (=> d!954436 (= (list!13261 lt!1142583) (originalCharacters!6060 separatorToken!241))))

(assert (=> d!954436 (= lt!1142583 (dynLambda!15220 (toChars!7385 (transformation!5346 (rule!7884 separatorToken!241))) (value!172821 separatorToken!241)))))

(assert (=> d!954436 (= (charsOf!3360 separatorToken!241) lt!1142583)))

(declare-fun b_lambda!95249 () Bool)

(assert (=> (not b_lambda!95249) (not d!954436)))

(assert (=> d!954436 t!261592))

(declare-fun b_and!233335 () Bool)

(assert (= b_and!233317 (and (=> t!261592 result!221980) b_and!233335)))

(assert (=> d!954436 t!261594))

(declare-fun b_and!233337 () Bool)

(assert (= b_and!233319 (and (=> t!261594 result!221982) b_and!233337)))

(assert (=> d!954436 t!261596))

(declare-fun b_and!233339 () Bool)

(assert (= b_and!233321 (and (=> t!261596 result!221984) b_and!233339)))

(declare-fun m!3727389 () Bool)

(assert (=> d!954436 m!3727389))

(assert (=> d!954436 m!3727205))

(assert (=> b!3367081 d!954436))

(declare-fun d!954438 () Bool)

(assert (=> d!954438 (= (list!13261 (charsOf!3360 separatorToken!241)) (list!13264 (c!573247 (charsOf!3360 separatorToken!241))))))

(declare-fun bs!553967 () Bool)

(assert (= bs!553967 d!954438))

(declare-fun m!3727391 () Bool)

(assert (=> bs!553967 m!3727391))

(assert (=> b!3367081 d!954438))

(declare-fun d!954440 () Bool)

(declare-fun lt!1142589 () BalanceConc!21748)

(assert (=> d!954440 (= (list!13261 lt!1142589) (printList!1483 thiss!18206 (list!13265 lt!1142539)))))

(assert (=> d!954440 (= lt!1142589 (printTailRec!1430 thiss!18206 lt!1142539 0 (BalanceConc!21749 Empty!11067)))))

(assert (=> d!954440 (= (print!2000 thiss!18206 lt!1142539) lt!1142589)))

(declare-fun bs!553969 () Bool)

(assert (= bs!553969 d!954440))

(declare-fun m!3727399 () Bool)

(assert (=> bs!553969 m!3727399))

(declare-fun m!3727401 () Bool)

(assert (=> bs!553969 m!3727401))

(assert (=> bs!553969 m!3727401))

(declare-fun m!3727403 () Bool)

(assert (=> bs!553969 m!3727403))

(assert (=> bs!553969 m!3727151))

(assert (=> b!3367095 d!954440))

(declare-fun d!954444 () Bool)

(assert (=> d!954444 (= (list!13261 lt!1142535) (list!13264 (c!573247 lt!1142535)))))

(declare-fun bs!553970 () Bool)

(assert (= bs!553970 d!954444))

(declare-fun m!3727405 () Bool)

(assert (=> bs!553970 m!3727405))

(assert (=> b!3367095 d!954444))

(declare-fun d!954446 () Bool)

(declare-fun lt!1142621 () BalanceConc!21748)

(declare-fun printListTailRec!630 (LexerInterface!4935 List!36861 List!36859) List!36859)

(declare-fun dropList!1147 (BalanceConc!21750 Int) List!36861)

(assert (=> d!954446 (= (list!13261 lt!1142621) (printListTailRec!630 thiss!18206 (dropList!1147 lt!1142539 0) (list!13261 (BalanceConc!21749 Empty!11067))))))

(declare-fun e!2089998 () BalanceConc!21748)

(assert (=> d!954446 (= lt!1142621 e!2089998)))

(declare-fun c!573286 () Bool)

(assert (=> d!954446 (= c!573286 (>= 0 (size!27799 lt!1142539)))))

(declare-fun e!2089997 () Bool)

(assert (=> d!954446 e!2089997))

(declare-fun res!1361732 () Bool)

(assert (=> d!954446 (=> (not res!1361732) (not e!2089997))))

(assert (=> d!954446 (= res!1361732 (>= 0 0))))

(assert (=> d!954446 (= (printTailRec!1430 thiss!18206 lt!1142539 0 (BalanceConc!21749 Empty!11067)) lt!1142621)))

(declare-fun b!3367316 () Bool)

(assert (=> b!3367316 (= e!2089997 (<= 0 (size!27799 lt!1142539)))))

(declare-fun b!3367317 () Bool)

(assert (=> b!3367317 (= e!2089998 (BalanceConc!21749 Empty!11067))))

(declare-fun b!3367318 () Bool)

(declare-fun ++!8961 (BalanceConc!21748 BalanceConc!21748) BalanceConc!21748)

(assert (=> b!3367318 (= e!2089998 (printTailRec!1430 thiss!18206 lt!1142539 (+ 0 1) (++!8961 (BalanceConc!21749 Empty!11067) (charsOf!3360 (apply!8510 lt!1142539 0)))))))

(declare-fun lt!1142624 () List!36861)

(assert (=> b!3367318 (= lt!1142624 (list!13265 lt!1142539))))

(declare-fun lt!1142626 () Unit!51836)

(declare-fun lemmaDropApply!1105 (List!36861 Int) Unit!51836)

(assert (=> b!3367318 (= lt!1142626 (lemmaDropApply!1105 lt!1142624 0))))

(declare-fun head!7182 (List!36861) Token!10058)

(declare-fun drop!1943 (List!36861 Int) List!36861)

(declare-fun apply!8511 (List!36861 Int) Token!10058)

(assert (=> b!3367318 (= (head!7182 (drop!1943 lt!1142624 0)) (apply!8511 lt!1142624 0))))

(declare-fun lt!1142627 () Unit!51836)

(assert (=> b!3367318 (= lt!1142627 lt!1142626)))

(declare-fun lt!1142625 () List!36861)

(assert (=> b!3367318 (= lt!1142625 (list!13265 lt!1142539))))

(declare-fun lt!1142623 () Unit!51836)

(declare-fun lemmaDropTail!989 (List!36861 Int) Unit!51836)

(assert (=> b!3367318 (= lt!1142623 (lemmaDropTail!989 lt!1142625 0))))

(declare-fun tail!5320 (List!36861) List!36861)

(assert (=> b!3367318 (= (tail!5320 (drop!1943 lt!1142625 0)) (drop!1943 lt!1142625 (+ 0 1)))))

(declare-fun lt!1142622 () Unit!51836)

(assert (=> b!3367318 (= lt!1142622 lt!1142623)))

(assert (= (and d!954446 res!1361732) b!3367316))

(assert (= (and d!954446 c!573286) b!3367317))

(assert (= (and d!954446 (not c!573286)) b!3367318))

(declare-fun m!3727415 () Bool)

(assert (=> d!954446 m!3727415))

(declare-fun m!3727417 () Bool)

(assert (=> d!954446 m!3727417))

(declare-fun m!3727419 () Bool)

(assert (=> d!954446 m!3727419))

(declare-fun m!3727421 () Bool)

(assert (=> d!954446 m!3727421))

(assert (=> d!954446 m!3727417))

(declare-fun m!3727423 () Bool)

(assert (=> d!954446 m!3727423))

(assert (=> d!954446 m!3727421))

(assert (=> b!3367316 m!3727415))

(declare-fun m!3727425 () Bool)

(assert (=> b!3367318 m!3727425))

(declare-fun m!3727427 () Bool)

(assert (=> b!3367318 m!3727427))

(declare-fun m!3727429 () Bool)

(assert (=> b!3367318 m!3727429))

(declare-fun m!3727431 () Bool)

(assert (=> b!3367318 m!3727431))

(declare-fun m!3727433 () Bool)

(assert (=> b!3367318 m!3727433))

(assert (=> b!3367318 m!3727433))

(declare-fun m!3727435 () Bool)

(assert (=> b!3367318 m!3727435))

(declare-fun m!3727437 () Bool)

(assert (=> b!3367318 m!3727437))

(declare-fun m!3727439 () Bool)

(assert (=> b!3367318 m!3727439))

(assert (=> b!3367318 m!3727401))

(declare-fun m!3727441 () Bool)

(assert (=> b!3367318 m!3727441))

(assert (=> b!3367318 m!3727437))

(declare-fun m!3727443 () Bool)

(assert (=> b!3367318 m!3727443))

(declare-fun m!3727445 () Bool)

(assert (=> b!3367318 m!3727445))

(declare-fun m!3727447 () Bool)

(assert (=> b!3367318 m!3727447))

(assert (=> b!3367318 m!3727427))

(assert (=> b!3367318 m!3727441))

(assert (=> b!3367318 m!3727443))

(assert (=> b!3367095 d!954446))

(declare-fun d!954456 () Bool)

(declare-fun e!2090003 () Bool)

(assert (=> d!954456 e!2090003))

(declare-fun res!1361736 () Bool)

(assert (=> d!954456 (=> (not res!1361736) (not e!2090003))))

(declare-fun lt!1142637 () BalanceConc!21750)

(assert (=> d!954456 (= res!1361736 (= (list!13265 lt!1142637) (Cons!36737 (h!42157 tokens!494) Nil!36737)))))

(declare-fun singleton!1062 (Token!10058) BalanceConc!21750)

(assert (=> d!954456 (= lt!1142637 (singleton!1062 (h!42157 tokens!494)))))

(assert (=> d!954456 (= (singletonSeq!2442 (h!42157 tokens!494)) lt!1142637)))

(declare-fun b!3367324 () Bool)

(declare-fun isBalanced!3333 (Conc!11068) Bool)

(assert (=> b!3367324 (= e!2090003 (isBalanced!3333 (c!573248 lt!1142637)))))

(assert (= (and d!954456 res!1361736) b!3367324))

(declare-fun m!3727485 () Bool)

(assert (=> d!954456 m!3727485))

(declare-fun m!3727487 () Bool)

(assert (=> d!954456 m!3727487))

(declare-fun m!3727489 () Bool)

(assert (=> b!3367324 m!3727489))

(assert (=> b!3367095 d!954456))

(declare-fun d!954460 () Bool)

(declare-fun c!573290 () Bool)

(assert (=> d!954460 (= c!573290 ((_ is Cons!36737) (Cons!36737 (h!42157 tokens!494) Nil!36737)))))

(declare-fun e!2090006 () List!36859)

(assert (=> d!954460 (= (printList!1483 thiss!18206 (Cons!36737 (h!42157 tokens!494) Nil!36737)) e!2090006)))

(declare-fun b!3367329 () Bool)

(assert (=> b!3367329 (= e!2090006 (++!8959 (list!13261 (charsOf!3360 (h!42157 (Cons!36737 (h!42157 tokens!494) Nil!36737)))) (printList!1483 thiss!18206 (t!261584 (Cons!36737 (h!42157 tokens!494) Nil!36737)))))))

(declare-fun b!3367330 () Bool)

(assert (=> b!3367330 (= e!2090006 Nil!36735)))

(assert (= (and d!954460 c!573290) b!3367329))

(assert (= (and d!954460 (not c!573290)) b!3367330))

(declare-fun m!3727491 () Bool)

(assert (=> b!3367329 m!3727491))

(assert (=> b!3367329 m!3727491))

(declare-fun m!3727493 () Bool)

(assert (=> b!3367329 m!3727493))

(declare-fun m!3727495 () Bool)

(assert (=> b!3367329 m!3727495))

(assert (=> b!3367329 m!3727493))

(assert (=> b!3367329 m!3727495))

(declare-fun m!3727497 () Bool)

(assert (=> b!3367329 m!3727497))

(assert (=> b!3367095 d!954460))

(declare-fun bs!553982 () Bool)

(declare-fun d!954462 () Bool)

(assert (= bs!553982 (and d!954462 b!3367098)))

(declare-fun lambda!120195 () Int)

(assert (=> bs!553982 (not (= lambda!120195 lambda!120185))))

(declare-fun b!3367471 () Bool)

(declare-fun e!2090101 () Bool)

(assert (=> b!3367471 (= e!2090101 true)))

(declare-fun b!3367470 () Bool)

(declare-fun e!2090100 () Bool)

(assert (=> b!3367470 (= e!2090100 e!2090101)))

(declare-fun b!3367469 () Bool)

(declare-fun e!2090099 () Bool)

(assert (=> b!3367469 (= e!2090099 e!2090100)))

(assert (=> d!954462 e!2090099))

(assert (= b!3367470 b!3367471))

(assert (= b!3367469 b!3367470))

(assert (= (and d!954462 ((_ is Cons!36736) rules!2135)) b!3367469))

(declare-fun order!19295 () Int)

(declare-fun order!19293 () Int)

(declare-fun dynLambda!15222 (Int Int) Int)

(declare-fun dynLambda!15223 (Int Int) Int)

(assert (=> b!3367471 (< (dynLambda!15222 order!19293 (toValue!7526 (transformation!5346 (h!42156 rules!2135)))) (dynLambda!15223 order!19295 lambda!120195))))

(declare-fun order!19297 () Int)

(declare-fun dynLambda!15224 (Int Int) Int)

(assert (=> b!3367471 (< (dynLambda!15224 order!19297 (toChars!7385 (transformation!5346 (h!42156 rules!2135)))) (dynLambda!15223 order!19295 lambda!120195))))

(assert (=> d!954462 true))

(declare-fun e!2090084 () Bool)

(assert (=> d!954462 e!2090084))

(declare-fun res!1361794 () Bool)

(assert (=> d!954462 (=> (not res!1361794) (not e!2090084))))

(declare-fun lt!1142690 () Bool)

(assert (=> d!954462 (= res!1361794 (= lt!1142690 (forall!7703 (list!13265 lt!1142534) lambda!120195)))))

(declare-fun forall!7705 (BalanceConc!21750 Int) Bool)

(assert (=> d!954462 (= lt!1142690 (forall!7705 lt!1142534 lambda!120195))))

(assert (=> d!954462 (not (isEmpty!20933 rules!2135))))

(assert (=> d!954462 (= (rulesProduceEachTokenIndividually!1386 thiss!18206 rules!2135 lt!1142534) lt!1142690)))

(declare-fun b!3367452 () Bool)

(declare-fun rulesProduceEachTokenIndividuallyList!1797 (LexerInterface!4935 List!36860 List!36861) Bool)

(assert (=> b!3367452 (= e!2090084 (= lt!1142690 (rulesProduceEachTokenIndividuallyList!1797 thiss!18206 rules!2135 (list!13265 lt!1142534))))))

(assert (= (and d!954462 res!1361794) b!3367452))

(assert (=> d!954462 m!3727349))

(assert (=> d!954462 m!3727349))

(declare-fun m!3727663 () Bool)

(assert (=> d!954462 m!3727663))

(declare-fun m!3727665 () Bool)

(assert (=> d!954462 m!3727665))

(assert (=> d!954462 m!3727161))

(assert (=> b!3367452 m!3727349))

(assert (=> b!3367452 m!3727349))

(declare-fun m!3727667 () Bool)

(assert (=> b!3367452 m!3727667))

(assert (=> b!3367073 d!954462))

(declare-fun d!954514 () Bool)

(declare-fun fromListB!1667 (List!36861) BalanceConc!21750)

(assert (=> d!954514 (= (seqFromList!3745 tokens!494) (fromListB!1667 tokens!494))))

(declare-fun bs!553983 () Bool)

(assert (= bs!553983 d!954514))

(declare-fun m!3727673 () Bool)

(assert (=> bs!553983 m!3727673))

(assert (=> b!3367073 d!954514))

(declare-fun b!3367496 () Bool)

(declare-fun e!2090119 () List!36859)

(assert (=> b!3367496 (= e!2090119 (Cons!36735 (h!42155 lt!1142546) (++!8959 (t!261582 lt!1142546) Nil!36735)))))

(declare-fun b!3367497 () Bool)

(declare-fun res!1361796 () Bool)

(declare-fun e!2090118 () Bool)

(assert (=> b!3367497 (=> (not res!1361796) (not e!2090118))))

(declare-fun lt!1142691 () List!36859)

(assert (=> b!3367497 (= res!1361796 (= (size!27798 lt!1142691) (+ (size!27798 lt!1142546) (size!27798 Nil!36735))))))

(declare-fun b!3367495 () Bool)

(assert (=> b!3367495 (= e!2090119 Nil!36735)))

(declare-fun b!3367498 () Bool)

(assert (=> b!3367498 (= e!2090118 (or (not (= Nil!36735 Nil!36735)) (= lt!1142691 lt!1142546)))))

(declare-fun d!954518 () Bool)

(assert (=> d!954518 e!2090118))

(declare-fun res!1361795 () Bool)

(assert (=> d!954518 (=> (not res!1361795) (not e!2090118))))

(assert (=> d!954518 (= res!1361795 (= (content!5044 lt!1142691) ((_ map or) (content!5044 lt!1142546) (content!5044 Nil!36735))))))

(assert (=> d!954518 (= lt!1142691 e!2090119)))

(declare-fun c!573311 () Bool)

(assert (=> d!954518 (= c!573311 ((_ is Nil!36735) lt!1142546))))

(assert (=> d!954518 (= (++!8959 lt!1142546 Nil!36735) lt!1142691)))

(assert (= (and d!954518 c!573311) b!3367495))

(assert (= (and d!954518 (not c!573311)) b!3367496))

(assert (= (and d!954518 res!1361795) b!3367497))

(assert (= (and b!3367497 res!1361796) b!3367498))

(declare-fun m!3727675 () Bool)

(assert (=> b!3367496 m!3727675))

(declare-fun m!3727677 () Bool)

(assert (=> b!3367497 m!3727677))

(assert (=> b!3367497 m!3727377))

(declare-fun m!3727679 () Bool)

(assert (=> b!3367497 m!3727679))

(declare-fun m!3727681 () Bool)

(assert (=> d!954518 m!3727681))

(assert (=> d!954518 m!3727383))

(declare-fun m!3727683 () Bool)

(assert (=> d!954518 m!3727683))

(assert (=> b!3367076 d!954518))

(declare-fun d!954520 () Bool)

(declare-fun lt!1142693 () Bool)

(declare-fun e!2090120 () Bool)

(assert (=> d!954520 (= lt!1142693 e!2090120)))

(declare-fun res!1361798 () Bool)

(assert (=> d!954520 (=> (not res!1361798) (not e!2090120))))

(assert (=> d!954520 (= res!1361798 (= (list!13265 (_1!21273 (lex!2261 thiss!18206 rules!2135 (print!2000 thiss!18206 (singletonSeq!2442 separatorToken!241))))) (list!13265 (singletonSeq!2442 separatorToken!241))))))

(declare-fun e!2090121 () Bool)

(assert (=> d!954520 (= lt!1142693 e!2090121)))

(declare-fun res!1361799 () Bool)

(assert (=> d!954520 (=> (not res!1361799) (not e!2090121))))

(declare-fun lt!1142692 () tuple2!36278)

(assert (=> d!954520 (= res!1361799 (= (size!27799 (_1!21273 lt!1142692)) 1))))

(assert (=> d!954520 (= lt!1142692 (lex!2261 thiss!18206 rules!2135 (print!2000 thiss!18206 (singletonSeq!2442 separatorToken!241))))))

(assert (=> d!954520 (not (isEmpty!20933 rules!2135))))

(assert (=> d!954520 (= (rulesProduceIndividualToken!2427 thiss!18206 rules!2135 separatorToken!241) lt!1142693)))

(declare-fun b!3367499 () Bool)

(declare-fun res!1361797 () Bool)

(assert (=> b!3367499 (=> (not res!1361797) (not e!2090121))))

(assert (=> b!3367499 (= res!1361797 (= (apply!8510 (_1!21273 lt!1142692) 0) separatorToken!241))))

(declare-fun b!3367500 () Bool)

(assert (=> b!3367500 (= e!2090121 (isEmpty!20936 (_2!21273 lt!1142692)))))

(declare-fun b!3367501 () Bool)

(assert (=> b!3367501 (= e!2090120 (isEmpty!20936 (_2!21273 (lex!2261 thiss!18206 rules!2135 (print!2000 thiss!18206 (singletonSeq!2442 separatorToken!241))))))))

(assert (= (and d!954520 res!1361799) b!3367499))

(assert (= (and b!3367499 res!1361797) b!3367500))

(assert (= (and d!954520 res!1361798) b!3367501))

(declare-fun m!3727685 () Bool)

(assert (=> d!954520 m!3727685))

(declare-fun m!3727687 () Bool)

(assert (=> d!954520 m!3727687))

(declare-fun m!3727689 () Bool)

(assert (=> d!954520 m!3727689))

(assert (=> d!954520 m!3727161))

(assert (=> d!954520 m!3727689))

(declare-fun m!3727691 () Bool)

(assert (=> d!954520 m!3727691))

(assert (=> d!954520 m!3727689))

(assert (=> d!954520 m!3727685))

(declare-fun m!3727693 () Bool)

(assert (=> d!954520 m!3727693))

(declare-fun m!3727695 () Bool)

(assert (=> d!954520 m!3727695))

(declare-fun m!3727697 () Bool)

(assert (=> b!3367499 m!3727697))

(declare-fun m!3727699 () Bool)

(assert (=> b!3367500 m!3727699))

(assert (=> b!3367501 m!3727689))

(assert (=> b!3367501 m!3727689))

(assert (=> b!3367501 m!3727685))

(assert (=> b!3367501 m!3727685))

(assert (=> b!3367501 m!3727687))

(declare-fun m!3727701 () Bool)

(assert (=> b!3367501 m!3727701))

(assert (=> b!3367097 d!954520))

(declare-fun b!3367530 () Bool)

(declare-fun res!1361822 () Bool)

(declare-fun e!2090137 () Bool)

(assert (=> b!3367530 (=> (not res!1361822) (not e!2090137))))

(declare-fun call!243795 () Bool)

(assert (=> b!3367530 (= res!1361822 (not call!243795))))

(declare-fun b!3367531 () Bool)

(declare-fun res!1361823 () Bool)

(assert (=> b!3367531 (=> (not res!1361823) (not e!2090137))))

(declare-fun tail!5321 (List!36859) List!36859)

(assert (=> b!3367531 (= res!1361823 (isEmpty!20931 (tail!5321 lt!1142546)))))

(declare-fun b!3367532 () Bool)

(declare-fun e!2090141 () Bool)

(declare-fun e!2090139 () Bool)

(assert (=> b!3367532 (= e!2090141 e!2090139)))

(declare-fun res!1361817 () Bool)

(assert (=> b!3367532 (=> res!1361817 e!2090139)))

(assert (=> b!3367532 (= res!1361817 call!243795)))

(declare-fun b!3367534 () Bool)

(declare-fun e!2090142 () Bool)

(declare-fun lt!1142696 () Bool)

(assert (=> b!3367534 (= e!2090142 (= lt!1142696 call!243795))))

(declare-fun b!3367535 () Bool)

(declare-fun res!1361818 () Bool)

(declare-fun e!2090138 () Bool)

(assert (=> b!3367535 (=> res!1361818 e!2090138)))

(assert (=> b!3367535 (= res!1361818 (not ((_ is ElementMatch!10105) (regex!5346 lt!1142532))))))

(declare-fun e!2090140 () Bool)

(assert (=> b!3367535 (= e!2090140 e!2090138)))

(declare-fun b!3367536 () Bool)

(assert (=> b!3367536 (= e!2090140 (not lt!1142696))))

(declare-fun b!3367537 () Bool)

(declare-fun head!7183 (List!36859) C!20396)

(assert (=> b!3367537 (= e!2090137 (= (head!7183 lt!1142546) (c!573246 (regex!5346 lt!1142532))))))

(declare-fun b!3367538 () Bool)

(declare-fun e!2090136 () Bool)

(declare-fun nullable!3434 (Regex!10105) Bool)

(assert (=> b!3367538 (= e!2090136 (nullable!3434 (regex!5346 lt!1142532)))))

(declare-fun b!3367539 () Bool)

(assert (=> b!3367539 (= e!2090142 e!2090140)))

(declare-fun c!573318 () Bool)

(assert (=> b!3367539 (= c!573318 ((_ is EmptyLang!10105) (regex!5346 lt!1142532)))))

(declare-fun b!3367540 () Bool)

(declare-fun res!1361819 () Bool)

(assert (=> b!3367540 (=> res!1361819 e!2090139)))

(assert (=> b!3367540 (= res!1361819 (not (isEmpty!20931 (tail!5321 lt!1142546))))))

(declare-fun b!3367541 () Bool)

(assert (=> b!3367541 (= e!2090138 e!2090141)))

(declare-fun res!1361821 () Bool)

(assert (=> b!3367541 (=> (not res!1361821) (not e!2090141))))

(assert (=> b!3367541 (= res!1361821 (not lt!1142696))))

(declare-fun bm!243790 () Bool)

(assert (=> bm!243790 (= call!243795 (isEmpty!20931 lt!1142546))))

(declare-fun b!3367542 () Bool)

(declare-fun derivativeStep!2987 (Regex!10105 C!20396) Regex!10105)

(assert (=> b!3367542 (= e!2090136 (matchR!4697 (derivativeStep!2987 (regex!5346 lt!1142532) (head!7183 lt!1142546)) (tail!5321 lt!1142546)))))

(declare-fun b!3367543 () Bool)

(assert (=> b!3367543 (= e!2090139 (not (= (head!7183 lt!1142546) (c!573246 (regex!5346 lt!1142532)))))))

(declare-fun d!954522 () Bool)

(assert (=> d!954522 e!2090142))

(declare-fun c!573320 () Bool)

(assert (=> d!954522 (= c!573320 ((_ is EmptyExpr!10105) (regex!5346 lt!1142532)))))

(assert (=> d!954522 (= lt!1142696 e!2090136)))

(declare-fun c!573319 () Bool)

(assert (=> d!954522 (= c!573319 (isEmpty!20931 lt!1142546))))

(declare-fun validRegex!4590 (Regex!10105) Bool)

(assert (=> d!954522 (validRegex!4590 (regex!5346 lt!1142532))))

(assert (=> d!954522 (= (matchR!4697 (regex!5346 lt!1142532) lt!1142546) lt!1142696)))

(declare-fun b!3367533 () Bool)

(declare-fun res!1361816 () Bool)

(assert (=> b!3367533 (=> res!1361816 e!2090138)))

(assert (=> b!3367533 (= res!1361816 e!2090137)))

(declare-fun res!1361820 () Bool)

(assert (=> b!3367533 (=> (not res!1361820) (not e!2090137))))

(assert (=> b!3367533 (= res!1361820 lt!1142696)))

(assert (= (and d!954522 c!573319) b!3367538))

(assert (= (and d!954522 (not c!573319)) b!3367542))

(assert (= (and d!954522 c!573320) b!3367534))

(assert (= (and d!954522 (not c!573320)) b!3367539))

(assert (= (and b!3367539 c!573318) b!3367536))

(assert (= (and b!3367539 (not c!573318)) b!3367535))

(assert (= (and b!3367535 (not res!1361818)) b!3367533))

(assert (= (and b!3367533 res!1361820) b!3367530))

(assert (= (and b!3367530 res!1361822) b!3367531))

(assert (= (and b!3367531 res!1361823) b!3367537))

(assert (= (and b!3367533 (not res!1361816)) b!3367541))

(assert (= (and b!3367541 res!1361821) b!3367532))

(assert (= (and b!3367532 (not res!1361817)) b!3367540))

(assert (= (and b!3367540 (not res!1361819)) b!3367543))

(assert (= (or b!3367534 b!3367530 b!3367532) bm!243790))

(declare-fun m!3727703 () Bool)

(assert (=> d!954522 m!3727703))

(declare-fun m!3727705 () Bool)

(assert (=> d!954522 m!3727705))

(declare-fun m!3727707 () Bool)

(assert (=> b!3367543 m!3727707))

(assert (=> bm!243790 m!3727703))

(assert (=> b!3367537 m!3727707))

(declare-fun m!3727709 () Bool)

(assert (=> b!3367531 m!3727709))

(assert (=> b!3367531 m!3727709))

(declare-fun m!3727711 () Bool)

(assert (=> b!3367531 m!3727711))

(declare-fun m!3727713 () Bool)

(assert (=> b!3367538 m!3727713))

(assert (=> b!3367540 m!3727709))

(assert (=> b!3367540 m!3727709))

(assert (=> b!3367540 m!3727711))

(assert (=> b!3367542 m!3727707))

(assert (=> b!3367542 m!3727707))

(declare-fun m!3727715 () Bool)

(assert (=> b!3367542 m!3727715))

(assert (=> b!3367542 m!3727709))

(assert (=> b!3367542 m!3727715))

(assert (=> b!3367542 m!3727709))

(declare-fun m!3727717 () Bool)

(assert (=> b!3367542 m!3727717))

(assert (=> b!3367074 d!954522))

(declare-fun d!954524 () Bool)

(assert (=> d!954524 (= (get!11710 lt!1142544) (v!36333 lt!1142544))))

(assert (=> b!3367074 d!954524))

(declare-fun d!954526 () Bool)

(assert (=> d!954526 (= (inv!49788 (tag!5904 (rule!7884 separatorToken!241))) (= (mod (str.len (value!172820 (tag!5904 (rule!7884 separatorToken!241)))) 2) 0))))

(assert (=> b!3367089 d!954526))

(declare-fun d!954528 () Bool)

(declare-fun res!1361824 () Bool)

(declare-fun e!2090143 () Bool)

(assert (=> d!954528 (=> (not res!1361824) (not e!2090143))))

(assert (=> d!954528 (= res!1361824 (semiInverseModEq!2225 (toChars!7385 (transformation!5346 (rule!7884 separatorToken!241))) (toValue!7526 (transformation!5346 (rule!7884 separatorToken!241)))))))

(assert (=> d!954528 (= (inv!49792 (transformation!5346 (rule!7884 separatorToken!241))) e!2090143)))

(declare-fun b!3367544 () Bool)

(assert (=> b!3367544 (= e!2090143 (equivClasses!2124 (toChars!7385 (transformation!5346 (rule!7884 separatorToken!241))) (toValue!7526 (transformation!5346 (rule!7884 separatorToken!241)))))))

(assert (= (and d!954528 res!1361824) b!3367544))

(declare-fun m!3727719 () Bool)

(assert (=> d!954528 m!3727719))

(declare-fun m!3727721 () Bool)

(assert (=> b!3367544 m!3727721))

(assert (=> b!3367089 d!954528))

(declare-fun d!954530 () Bool)

(assert (=> d!954530 (= (inv!49788 (tag!5904 (rule!7884 (h!42157 tokens!494)))) (= (mod (str.len (value!172820 (tag!5904 (rule!7884 (h!42157 tokens!494))))) 2) 0))))

(assert (=> b!3367088 d!954530))

(declare-fun d!954532 () Bool)

(declare-fun res!1361825 () Bool)

(declare-fun e!2090144 () Bool)

(assert (=> d!954532 (=> (not res!1361825) (not e!2090144))))

(assert (=> d!954532 (= res!1361825 (semiInverseModEq!2225 (toChars!7385 (transformation!5346 (rule!7884 (h!42157 tokens!494)))) (toValue!7526 (transformation!5346 (rule!7884 (h!42157 tokens!494))))))))

(assert (=> d!954532 (= (inv!49792 (transformation!5346 (rule!7884 (h!42157 tokens!494)))) e!2090144)))

(declare-fun b!3367545 () Bool)

(assert (=> b!3367545 (= e!2090144 (equivClasses!2124 (toChars!7385 (transformation!5346 (rule!7884 (h!42157 tokens!494)))) (toValue!7526 (transformation!5346 (rule!7884 (h!42157 tokens!494))))))))

(assert (= (and d!954532 res!1361825) b!3367545))

(declare-fun m!3727723 () Bool)

(assert (=> d!954532 m!3727723))

(declare-fun m!3727725 () Bool)

(assert (=> b!3367545 m!3727725))

(assert (=> b!3367088 d!954532))

(declare-fun b!3367546 () Bool)

(declare-fun res!1361832 () Bool)

(declare-fun e!2090146 () Bool)

(assert (=> b!3367546 (=> (not res!1361832) (not e!2090146))))

(declare-fun call!243796 () Bool)

(assert (=> b!3367546 (= res!1361832 (not call!243796))))

(declare-fun b!3367547 () Bool)

(declare-fun res!1361833 () Bool)

(assert (=> b!3367547 (=> (not res!1361833) (not e!2090146))))

(assert (=> b!3367547 (= res!1361833 (isEmpty!20931 (tail!5321 lt!1142537)))))

(declare-fun b!3367548 () Bool)

(declare-fun e!2090150 () Bool)

(declare-fun e!2090148 () Bool)

(assert (=> b!3367548 (= e!2090150 e!2090148)))

(declare-fun res!1361827 () Bool)

(assert (=> b!3367548 (=> res!1361827 e!2090148)))

(assert (=> b!3367548 (= res!1361827 call!243796)))

(declare-fun b!3367550 () Bool)

(declare-fun e!2090151 () Bool)

(declare-fun lt!1142697 () Bool)

(assert (=> b!3367550 (= e!2090151 (= lt!1142697 call!243796))))

(declare-fun b!3367551 () Bool)

(declare-fun res!1361828 () Bool)

(declare-fun e!2090147 () Bool)

(assert (=> b!3367551 (=> res!1361828 e!2090147)))

(assert (=> b!3367551 (= res!1361828 (not ((_ is ElementMatch!10105) (regex!5346 lt!1142536))))))

(declare-fun e!2090149 () Bool)

(assert (=> b!3367551 (= e!2090149 e!2090147)))

(declare-fun b!3367552 () Bool)

(assert (=> b!3367552 (= e!2090149 (not lt!1142697))))

(declare-fun b!3367553 () Bool)

(assert (=> b!3367553 (= e!2090146 (= (head!7183 lt!1142537) (c!573246 (regex!5346 lt!1142536))))))

(declare-fun b!3367554 () Bool)

(declare-fun e!2090145 () Bool)

(assert (=> b!3367554 (= e!2090145 (nullable!3434 (regex!5346 lt!1142536)))))

(declare-fun b!3367555 () Bool)

(assert (=> b!3367555 (= e!2090151 e!2090149)))

(declare-fun c!573321 () Bool)

(assert (=> b!3367555 (= c!573321 ((_ is EmptyLang!10105) (regex!5346 lt!1142536)))))

(declare-fun b!3367556 () Bool)

(declare-fun res!1361829 () Bool)

(assert (=> b!3367556 (=> res!1361829 e!2090148)))

(assert (=> b!3367556 (= res!1361829 (not (isEmpty!20931 (tail!5321 lt!1142537))))))

(declare-fun b!3367557 () Bool)

(assert (=> b!3367557 (= e!2090147 e!2090150)))

(declare-fun res!1361831 () Bool)

(assert (=> b!3367557 (=> (not res!1361831) (not e!2090150))))

(assert (=> b!3367557 (= res!1361831 (not lt!1142697))))

(declare-fun bm!243791 () Bool)

(assert (=> bm!243791 (= call!243796 (isEmpty!20931 lt!1142537))))

(declare-fun b!3367558 () Bool)

(assert (=> b!3367558 (= e!2090145 (matchR!4697 (derivativeStep!2987 (regex!5346 lt!1142536) (head!7183 lt!1142537)) (tail!5321 lt!1142537)))))

(declare-fun b!3367559 () Bool)

(assert (=> b!3367559 (= e!2090148 (not (= (head!7183 lt!1142537) (c!573246 (regex!5346 lt!1142536)))))))

(declare-fun d!954534 () Bool)

(assert (=> d!954534 e!2090151))

(declare-fun c!573323 () Bool)

(assert (=> d!954534 (= c!573323 ((_ is EmptyExpr!10105) (regex!5346 lt!1142536)))))

(assert (=> d!954534 (= lt!1142697 e!2090145)))

(declare-fun c!573322 () Bool)

(assert (=> d!954534 (= c!573322 (isEmpty!20931 lt!1142537))))

(assert (=> d!954534 (validRegex!4590 (regex!5346 lt!1142536))))

(assert (=> d!954534 (= (matchR!4697 (regex!5346 lt!1142536) lt!1142537) lt!1142697)))

(declare-fun b!3367549 () Bool)

(declare-fun res!1361826 () Bool)

(assert (=> b!3367549 (=> res!1361826 e!2090147)))

(assert (=> b!3367549 (= res!1361826 e!2090146)))

(declare-fun res!1361830 () Bool)

(assert (=> b!3367549 (=> (not res!1361830) (not e!2090146))))

(assert (=> b!3367549 (= res!1361830 lt!1142697)))

(assert (= (and d!954534 c!573322) b!3367554))

(assert (= (and d!954534 (not c!573322)) b!3367558))

(assert (= (and d!954534 c!573323) b!3367550))

(assert (= (and d!954534 (not c!573323)) b!3367555))

(assert (= (and b!3367555 c!573321) b!3367552))

(assert (= (and b!3367555 (not c!573321)) b!3367551))

(assert (= (and b!3367551 (not res!1361828)) b!3367549))

(assert (= (and b!3367549 res!1361830) b!3367546))

(assert (= (and b!3367546 res!1361832) b!3367547))

(assert (= (and b!3367547 res!1361833) b!3367553))

(assert (= (and b!3367549 (not res!1361826)) b!3367557))

(assert (= (and b!3367557 res!1361831) b!3367548))

(assert (= (and b!3367548 (not res!1361827)) b!3367556))

(assert (= (and b!3367556 (not res!1361829)) b!3367559))

(assert (= (or b!3367550 b!3367546 b!3367548) bm!243791))

(declare-fun m!3727727 () Bool)

(assert (=> d!954534 m!3727727))

(declare-fun m!3727729 () Bool)

(assert (=> d!954534 m!3727729))

(declare-fun m!3727731 () Bool)

(assert (=> b!3367559 m!3727731))

(assert (=> bm!243791 m!3727727))

(assert (=> b!3367553 m!3727731))

(declare-fun m!3727733 () Bool)

(assert (=> b!3367547 m!3727733))

(assert (=> b!3367547 m!3727733))

(declare-fun m!3727735 () Bool)

(assert (=> b!3367547 m!3727735))

(declare-fun m!3727737 () Bool)

(assert (=> b!3367554 m!3727737))

(assert (=> b!3367556 m!3727733))

(assert (=> b!3367556 m!3727733))

(assert (=> b!3367556 m!3727735))

(assert (=> b!3367558 m!3727731))

(assert (=> b!3367558 m!3727731))

(declare-fun m!3727739 () Bool)

(assert (=> b!3367558 m!3727739))

(assert (=> b!3367558 m!3727733))

(assert (=> b!3367558 m!3727739))

(assert (=> b!3367558 m!3727733))

(declare-fun m!3727741 () Bool)

(assert (=> b!3367558 m!3727741))

(assert (=> b!3367071 d!954534))

(declare-fun d!954536 () Bool)

(assert (=> d!954536 (= (get!11710 lt!1142541) (v!36333 lt!1142541))))

(assert (=> b!3367071 d!954536))

(declare-fun d!954538 () Bool)

(assert (=> d!954538 (dynLambda!15221 lambda!120185 (h!42157 tokens!494))))

(declare-fun lt!1142700 () Unit!51836)

(declare-fun choose!19441 (List!36861 Int Token!10058) Unit!51836)

(assert (=> d!954538 (= lt!1142700 (choose!19441 tokens!494 lambda!120185 (h!42157 tokens!494)))))

(declare-fun e!2090154 () Bool)

(assert (=> d!954538 e!2090154))

(declare-fun res!1361836 () Bool)

(assert (=> d!954538 (=> (not res!1361836) (not e!2090154))))

(assert (=> d!954538 (= res!1361836 (forall!7703 tokens!494 lambda!120185))))

(assert (=> d!954538 (= (forallContained!1293 tokens!494 lambda!120185 (h!42157 tokens!494)) lt!1142700)))

(declare-fun b!3367562 () Bool)

(declare-fun contains!6681 (List!36861 Token!10058) Bool)

(assert (=> b!3367562 (= e!2090154 (contains!6681 tokens!494 (h!42157 tokens!494)))))

(assert (= (and d!954538 res!1361836) b!3367562))

(declare-fun b_lambda!95267 () Bool)

(assert (=> (not b_lambda!95267) (not d!954538)))

(assert (=> d!954538 m!3727309))

(declare-fun m!3727743 () Bool)

(assert (=> d!954538 m!3727743))

(assert (=> d!954538 m!3727079))

(declare-fun m!3727745 () Bool)

(assert (=> b!3367562 m!3727745))

(assert (=> b!3367092 d!954538))

(declare-fun d!954540 () Bool)

(declare-fun res!1361837 () Bool)

(declare-fun e!2090155 () Bool)

(assert (=> d!954540 (=> (not res!1361837) (not e!2090155))))

(assert (=> d!954540 (= res!1361837 (not (isEmpty!20931 (originalCharacters!6060 (h!42157 tokens!494)))))))

(assert (=> d!954540 (= (inv!49791 (h!42157 tokens!494)) e!2090155)))

(declare-fun b!3367563 () Bool)

(declare-fun res!1361838 () Bool)

(assert (=> b!3367563 (=> (not res!1361838) (not e!2090155))))

(assert (=> b!3367563 (= res!1361838 (= (originalCharacters!6060 (h!42157 tokens!494)) (list!13261 (dynLambda!15220 (toChars!7385 (transformation!5346 (rule!7884 (h!42157 tokens!494)))) (value!172821 (h!42157 tokens!494))))))))

(declare-fun b!3367564 () Bool)

(assert (=> b!3367564 (= e!2090155 (= (size!27795 (h!42157 tokens!494)) (size!27798 (originalCharacters!6060 (h!42157 tokens!494)))))))

(assert (= (and d!954540 res!1361837) b!3367563))

(assert (= (and b!3367563 res!1361838) b!3367564))

(declare-fun b_lambda!95269 () Bool)

(assert (=> (not b_lambda!95269) (not b!3367563)))

(assert (=> b!3367563 t!261586))

(declare-fun b_and!233361 () Bool)

(assert (= b_and!233335 (and (=> t!261586 result!221972) b_and!233361)))

(assert (=> b!3367563 t!261588))

(declare-fun b_and!233363 () Bool)

(assert (= b_and!233337 (and (=> t!261588 result!221976) b_and!233363)))

(assert (=> b!3367563 t!261590))

(declare-fun b_and!233365 () Bool)

(assert (= b_and!233339 (and (=> t!261590 result!221978) b_and!233365)))

(declare-fun m!3727747 () Bool)

(assert (=> d!954540 m!3727747))

(assert (=> b!3367563 m!3727193))

(assert (=> b!3367563 m!3727193))

(declare-fun m!3727749 () Bool)

(assert (=> b!3367563 m!3727749))

(declare-fun m!3727751 () Bool)

(assert (=> b!3367564 m!3727751))

(assert (=> b!3367070 d!954540))

(declare-fun d!954542 () Bool)

(declare-fun c!573325 () Bool)

(assert (=> d!954542 (= c!573325 ((_ is IntegerValue!16728) (value!172821 (h!42157 tokens!494))))))

(declare-fun e!2090156 () Bool)

(assert (=> d!954542 (= (inv!21 (value!172821 (h!42157 tokens!494))) e!2090156)))

(declare-fun b!3367565 () Bool)

(assert (=> b!3367565 (= e!2090156 (inv!16 (value!172821 (h!42157 tokens!494))))))

(declare-fun b!3367566 () Bool)

(declare-fun e!2090158 () Bool)

(assert (=> b!3367566 (= e!2090156 e!2090158)))

(declare-fun c!573324 () Bool)

(assert (=> b!3367566 (= c!573324 ((_ is IntegerValue!16729) (value!172821 (h!42157 tokens!494))))))

(declare-fun b!3367567 () Bool)

(assert (=> b!3367567 (= e!2090158 (inv!17 (value!172821 (h!42157 tokens!494))))))

(declare-fun b!3367568 () Bool)

(declare-fun e!2090157 () Bool)

(assert (=> b!3367568 (= e!2090157 (inv!15 (value!172821 (h!42157 tokens!494))))))

(declare-fun b!3367569 () Bool)

(declare-fun res!1361839 () Bool)

(assert (=> b!3367569 (=> res!1361839 e!2090157)))

(assert (=> b!3367569 (= res!1361839 (not ((_ is IntegerValue!16730) (value!172821 (h!42157 tokens!494)))))))

(assert (=> b!3367569 (= e!2090158 e!2090157)))

(assert (= (and d!954542 c!573325) b!3367565))

(assert (= (and d!954542 (not c!573325)) b!3367566))

(assert (= (and b!3367566 c!573324) b!3367567))

(assert (= (and b!3367566 (not c!573324)) b!3367569))

(assert (= (and b!3367569 (not res!1361839)) b!3367568))

(declare-fun m!3727753 () Bool)

(assert (=> b!3367565 m!3727753))

(declare-fun m!3727755 () Bool)

(assert (=> b!3367567 m!3727755))

(declare-fun m!3727757 () Bool)

(assert (=> b!3367568 m!3727757))

(assert (=> b!3367091 d!954542))

(declare-fun d!954544 () Bool)

(declare-fun e!2090161 () Bool)

(assert (=> d!954544 e!2090161))

(declare-fun res!1361844 () Bool)

(assert (=> d!954544 (=> (not res!1361844) (not e!2090161))))

(assert (=> d!954544 (= res!1361844 (isDefined!5680 (getRuleFromTag!1001 thiss!18206 rules!2135 (tag!5904 (rule!7884 (h!42157 tokens!494))))))))

(declare-fun lt!1142703 () Unit!51836)

(declare-fun choose!19442 (LexerInterface!4935 List!36860 List!36859 Token!10058) Unit!51836)

(assert (=> d!954544 (= lt!1142703 (choose!19442 thiss!18206 rules!2135 lt!1142546 (h!42157 tokens!494)))))

(assert (=> d!954544 (rulesInvariant!4332 thiss!18206 rules!2135)))

(assert (=> d!954544 (= (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1001 thiss!18206 rules!2135 lt!1142546 (h!42157 tokens!494)) lt!1142703)))

(declare-fun b!3367574 () Bool)

(declare-fun res!1361845 () Bool)

(assert (=> b!3367574 (=> (not res!1361845) (not e!2090161))))

(assert (=> b!3367574 (= res!1361845 (matchR!4697 (regex!5346 (get!11710 (getRuleFromTag!1001 thiss!18206 rules!2135 (tag!5904 (rule!7884 (h!42157 tokens!494)))))) (list!13261 (charsOf!3360 (h!42157 tokens!494)))))))

(declare-fun b!3367575 () Bool)

(assert (=> b!3367575 (= e!2090161 (= (rule!7884 (h!42157 tokens!494)) (get!11710 (getRuleFromTag!1001 thiss!18206 rules!2135 (tag!5904 (rule!7884 (h!42157 tokens!494)))))))))

(assert (= (and d!954544 res!1361844) b!3367574))

(assert (= (and b!3367574 res!1361845) b!3367575))

(assert (=> d!954544 m!3727099))

(assert (=> d!954544 m!3727099))

(declare-fun m!3727759 () Bool)

(assert (=> d!954544 m!3727759))

(declare-fun m!3727761 () Bool)

(assert (=> d!954544 m!3727761))

(assert (=> d!954544 m!3727113))

(assert (=> b!3367574 m!3727107))

(declare-fun m!3727763 () Bool)

(assert (=> b!3367574 m!3727763))

(assert (=> b!3367574 m!3727105))

(assert (=> b!3367574 m!3727099))

(declare-fun m!3727765 () Bool)

(assert (=> b!3367574 m!3727765))

(assert (=> b!3367574 m!3727099))

(assert (=> b!3367574 m!3727105))

(assert (=> b!3367574 m!3727107))

(assert (=> b!3367575 m!3727099))

(assert (=> b!3367575 m!3727099))

(assert (=> b!3367575 m!3727765))

(assert (=> b!3367069 d!954544))

(declare-fun d!954546 () Bool)

(assert (=> d!954546 (rulesProduceIndividualToken!2427 thiss!18206 rules!2135 (h!42157 tokens!494))))

(declare-fun lt!1142706 () Unit!51836)

(declare-fun choose!19443 (LexerInterface!4935 List!36860 List!36861 Token!10058) Unit!51836)

(assert (=> d!954546 (= lt!1142706 (choose!19443 thiss!18206 rules!2135 tokens!494 (h!42157 tokens!494)))))

(assert (=> d!954546 (not (isEmpty!20933 rules!2135))))

(assert (=> d!954546 (= (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!930 thiss!18206 rules!2135 tokens!494 (h!42157 tokens!494)) lt!1142706)))

(declare-fun bs!553985 () Bool)

(assert (= bs!553985 d!954546))

(assert (=> bs!553985 m!3727129))

(declare-fun m!3727767 () Bool)

(assert (=> bs!553985 m!3727767))

(assert (=> bs!553985 m!3727161))

(assert (=> b!3367069 d!954546))

(declare-fun d!954548 () Bool)

(assert (=> d!954548 (= (isEmpty!20931 (getSuffix!1440 lt!1142546 lt!1142546)) ((_ is Nil!36735) (getSuffix!1440 lt!1142546 lt!1142546)))))

(assert (=> b!3367069 d!954548))

(declare-fun b!3367588 () Bool)

(declare-fun e!2090173 () Option!7340)

(declare-fun e!2090170 () Option!7340)

(assert (=> b!3367588 (= e!2090173 e!2090170)))

(declare-fun c!573330 () Bool)

(assert (=> b!3367588 (= c!573330 (and ((_ is Cons!36736) rules!2135) (not (= (tag!5904 (h!42156 rules!2135)) (tag!5904 (rule!7884 (h!42157 tokens!494)))))))))

(declare-fun b!3367589 () Bool)

(declare-fun e!2090172 () Bool)

(declare-fun lt!1142713 () Option!7340)

(assert (=> b!3367589 (= e!2090172 (= (tag!5904 (get!11710 lt!1142713)) (tag!5904 (rule!7884 (h!42157 tokens!494)))))))

(declare-fun b!3367590 () Bool)

(declare-fun lt!1142715 () Unit!51836)

(declare-fun lt!1142714 () Unit!51836)

(assert (=> b!3367590 (= lt!1142715 lt!1142714)))

(assert (=> b!3367590 (rulesInvariant!4332 thiss!18206 (t!261583 rules!2135))))

(declare-fun lemmaInvariantOnRulesThenOnTail!382 (LexerInterface!4935 Rule!10492 List!36860) Unit!51836)

(assert (=> b!3367590 (= lt!1142714 (lemmaInvariantOnRulesThenOnTail!382 thiss!18206 (h!42156 rules!2135) (t!261583 rules!2135)))))

(assert (=> b!3367590 (= e!2090170 (getRuleFromTag!1001 thiss!18206 (t!261583 rules!2135) (tag!5904 (rule!7884 (h!42157 tokens!494)))))))

(declare-fun d!954550 () Bool)

(declare-fun e!2090171 () Bool)

(assert (=> d!954550 e!2090171))

(declare-fun res!1361850 () Bool)

(assert (=> d!954550 (=> res!1361850 e!2090171)))

(declare-fun isEmpty!20941 (Option!7340) Bool)

(assert (=> d!954550 (= res!1361850 (isEmpty!20941 lt!1142713))))

(assert (=> d!954550 (= lt!1142713 e!2090173)))

(declare-fun c!573331 () Bool)

(assert (=> d!954550 (= c!573331 (and ((_ is Cons!36736) rules!2135) (= (tag!5904 (h!42156 rules!2135)) (tag!5904 (rule!7884 (h!42157 tokens!494))))))))

(assert (=> d!954550 (rulesInvariant!4332 thiss!18206 rules!2135)))

(assert (=> d!954550 (= (getRuleFromTag!1001 thiss!18206 rules!2135 (tag!5904 (rule!7884 (h!42157 tokens!494)))) lt!1142713)))

(declare-fun b!3367591 () Bool)

(assert (=> b!3367591 (= e!2090173 (Some!7339 (h!42156 rules!2135)))))

(declare-fun b!3367592 () Bool)

(assert (=> b!3367592 (= e!2090170 None!7339)))

(declare-fun b!3367593 () Bool)

(assert (=> b!3367593 (= e!2090171 e!2090172)))

(declare-fun res!1361851 () Bool)

(assert (=> b!3367593 (=> (not res!1361851) (not e!2090172))))

(assert (=> b!3367593 (= res!1361851 (contains!6679 rules!2135 (get!11710 lt!1142713)))))

(assert (= (and d!954550 c!573331) b!3367591))

(assert (= (and d!954550 (not c!573331)) b!3367588))

(assert (= (and b!3367588 c!573330) b!3367590))

(assert (= (and b!3367588 (not c!573330)) b!3367592))

(assert (= (and d!954550 (not res!1361850)) b!3367593))

(assert (= (and b!3367593 res!1361851) b!3367589))

(declare-fun m!3727769 () Bool)

(assert (=> b!3367589 m!3727769))

(declare-fun m!3727771 () Bool)

(assert (=> b!3367590 m!3727771))

(declare-fun m!3727773 () Bool)

(assert (=> b!3367590 m!3727773))

(declare-fun m!3727775 () Bool)

(assert (=> b!3367590 m!3727775))

(declare-fun m!3727777 () Bool)

(assert (=> d!954550 m!3727777))

(assert (=> d!954550 m!3727113))

(assert (=> b!3367593 m!3727769))

(assert (=> b!3367593 m!3727769))

(declare-fun m!3727779 () Bool)

(assert (=> b!3367593 m!3727779))

(assert (=> b!3367069 d!954550))

(declare-fun b!3367594 () Bool)

(declare-fun e!2090177 () Option!7340)

(declare-fun e!2090174 () Option!7340)

(assert (=> b!3367594 (= e!2090177 e!2090174)))

(declare-fun c!573332 () Bool)

(assert (=> b!3367594 (= c!573332 (and ((_ is Cons!36736) rules!2135) (not (= (tag!5904 (h!42156 rules!2135)) (tag!5904 (rule!7884 separatorToken!241))))))))

(declare-fun b!3367595 () Bool)

(declare-fun e!2090176 () Bool)

(declare-fun lt!1142716 () Option!7340)

(assert (=> b!3367595 (= e!2090176 (= (tag!5904 (get!11710 lt!1142716)) (tag!5904 (rule!7884 separatorToken!241))))))

(declare-fun b!3367596 () Bool)

(declare-fun lt!1142718 () Unit!51836)

(declare-fun lt!1142717 () Unit!51836)

(assert (=> b!3367596 (= lt!1142718 lt!1142717)))

(assert (=> b!3367596 (rulesInvariant!4332 thiss!18206 (t!261583 rules!2135))))

(assert (=> b!3367596 (= lt!1142717 (lemmaInvariantOnRulesThenOnTail!382 thiss!18206 (h!42156 rules!2135) (t!261583 rules!2135)))))

(assert (=> b!3367596 (= e!2090174 (getRuleFromTag!1001 thiss!18206 (t!261583 rules!2135) (tag!5904 (rule!7884 separatorToken!241))))))

(declare-fun d!954552 () Bool)

(declare-fun e!2090175 () Bool)

(assert (=> d!954552 e!2090175))

(declare-fun res!1361852 () Bool)

(assert (=> d!954552 (=> res!1361852 e!2090175)))

(assert (=> d!954552 (= res!1361852 (isEmpty!20941 lt!1142716))))

(assert (=> d!954552 (= lt!1142716 e!2090177)))

(declare-fun c!573333 () Bool)

(assert (=> d!954552 (= c!573333 (and ((_ is Cons!36736) rules!2135) (= (tag!5904 (h!42156 rules!2135)) (tag!5904 (rule!7884 separatorToken!241)))))))

(assert (=> d!954552 (rulesInvariant!4332 thiss!18206 rules!2135)))

(assert (=> d!954552 (= (getRuleFromTag!1001 thiss!18206 rules!2135 (tag!5904 (rule!7884 separatorToken!241))) lt!1142716)))

(declare-fun b!3367597 () Bool)

(assert (=> b!3367597 (= e!2090177 (Some!7339 (h!42156 rules!2135)))))

(declare-fun b!3367598 () Bool)

(assert (=> b!3367598 (= e!2090174 None!7339)))

(declare-fun b!3367599 () Bool)

(assert (=> b!3367599 (= e!2090175 e!2090176)))

(declare-fun res!1361853 () Bool)

(assert (=> b!3367599 (=> (not res!1361853) (not e!2090176))))

(assert (=> b!3367599 (= res!1361853 (contains!6679 rules!2135 (get!11710 lt!1142716)))))

(assert (= (and d!954552 c!573333) b!3367597))

(assert (= (and d!954552 (not c!573333)) b!3367594))

(assert (= (and b!3367594 c!573332) b!3367596))

(assert (= (and b!3367594 (not c!573332)) b!3367598))

(assert (= (and d!954552 (not res!1361852)) b!3367599))

(assert (= (and b!3367599 res!1361853) b!3367595))

(declare-fun m!3727781 () Bool)

(assert (=> b!3367595 m!3727781))

(assert (=> b!3367596 m!3727771))

(assert (=> b!3367596 m!3727773))

(declare-fun m!3727783 () Bool)

(assert (=> b!3367596 m!3727783))

(declare-fun m!3727785 () Bool)

(assert (=> d!954552 m!3727785))

(assert (=> d!954552 m!3727113))

(assert (=> b!3367599 m!3727781))

(assert (=> b!3367599 m!3727781))

(declare-fun m!3727787 () Bool)

(assert (=> b!3367599 m!3727787))

(assert (=> b!3367069 d!954552))

(declare-fun d!954554 () Bool)

(assert (=> d!954554 (isEmpty!20931 (getSuffix!1440 lt!1142546 lt!1142546))))

(declare-fun lt!1142721 () Unit!51836)

(declare-fun choose!19444 (List!36859) Unit!51836)

(assert (=> d!954554 (= lt!1142721 (choose!19444 lt!1142546))))

(assert (=> d!954554 (= (lemmaGetSuffixOnListWithItSelfIsEmpty!98 lt!1142546) lt!1142721)))

(declare-fun bs!553986 () Bool)

(assert (= bs!553986 d!954554))

(assert (=> bs!553986 m!3727083))

(assert (=> bs!553986 m!3727083))

(assert (=> bs!553986 m!3727085))

(declare-fun m!3727789 () Bool)

(assert (=> bs!553986 m!3727789))

(assert (=> b!3367069 d!954554))

(declare-fun d!954556 () Bool)

(declare-fun lt!1142724 () Bool)

(declare-fun content!5045 (List!36860) (InoxSet Rule!10492))

(assert (=> d!954556 (= lt!1142724 (select (content!5045 rules!2135) (rule!7884 (h!42157 tokens!494))))))

(declare-fun e!2090182 () Bool)

(assert (=> d!954556 (= lt!1142724 e!2090182)))

(declare-fun res!1361858 () Bool)

(assert (=> d!954556 (=> (not res!1361858) (not e!2090182))))

(assert (=> d!954556 (= res!1361858 ((_ is Cons!36736) rules!2135))))

(assert (=> d!954556 (= (contains!6679 rules!2135 (rule!7884 (h!42157 tokens!494))) lt!1142724)))

(declare-fun b!3367604 () Bool)

(declare-fun e!2090183 () Bool)

(assert (=> b!3367604 (= e!2090182 e!2090183)))

(declare-fun res!1361859 () Bool)

(assert (=> b!3367604 (=> res!1361859 e!2090183)))

(assert (=> b!3367604 (= res!1361859 (= (h!42156 rules!2135) (rule!7884 (h!42157 tokens!494))))))

(declare-fun b!3367605 () Bool)

(assert (=> b!3367605 (= e!2090183 (contains!6679 (t!261583 rules!2135) (rule!7884 (h!42157 tokens!494))))))

(assert (= (and d!954556 res!1361858) b!3367604))

(assert (= (and b!3367604 (not res!1361859)) b!3367605))

(declare-fun m!3727791 () Bool)

(assert (=> d!954556 m!3727791))

(declare-fun m!3727793 () Bool)

(assert (=> d!954556 m!3727793))

(declare-fun m!3727795 () Bool)

(assert (=> b!3367605 m!3727795))

(assert (=> b!3367069 d!954556))

(declare-fun d!954558 () Bool)

(assert (=> d!954558 (= (isDefined!5680 lt!1142541) (not (isEmpty!20941 lt!1142541)))))

(declare-fun bs!553987 () Bool)

(assert (= bs!553987 d!954558))

(declare-fun m!3727797 () Bool)

(assert (=> bs!553987 m!3727797))

(assert (=> b!3367069 d!954558))

(declare-fun d!954560 () Bool)

(assert (=> d!954560 (= (isDefined!5680 lt!1142544) (not (isEmpty!20941 lt!1142544)))))

(declare-fun bs!553988 () Bool)

(assert (= bs!553988 d!954560))

(declare-fun m!3727799 () Bool)

(assert (=> bs!553988 m!3727799))

(assert (=> b!3367069 d!954560))

(declare-fun d!954562 () Bool)

(declare-fun e!2090184 () Bool)

(assert (=> d!954562 e!2090184))

(declare-fun res!1361860 () Bool)

(assert (=> d!954562 (=> (not res!1361860) (not e!2090184))))

(assert (=> d!954562 (= res!1361860 (isDefined!5680 (getRuleFromTag!1001 thiss!18206 rules!2135 (tag!5904 (rule!7884 separatorToken!241)))))))

(declare-fun lt!1142725 () Unit!51836)

(assert (=> d!954562 (= lt!1142725 (choose!19442 thiss!18206 rules!2135 lt!1142537 separatorToken!241))))

(assert (=> d!954562 (rulesInvariant!4332 thiss!18206 rules!2135)))

(assert (=> d!954562 (= (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1001 thiss!18206 rules!2135 lt!1142537 separatorToken!241) lt!1142725)))

(declare-fun b!3367606 () Bool)

(declare-fun res!1361861 () Bool)

(assert (=> b!3367606 (=> (not res!1361861) (not e!2090184))))

(assert (=> b!3367606 (= res!1361861 (matchR!4697 (regex!5346 (get!11710 (getRuleFromTag!1001 thiss!18206 rules!2135 (tag!5904 (rule!7884 separatorToken!241))))) (list!13261 (charsOf!3360 separatorToken!241))))))

(declare-fun b!3367607 () Bool)

(assert (=> b!3367607 (= e!2090184 (= (rule!7884 separatorToken!241) (get!11710 (getRuleFromTag!1001 thiss!18206 rules!2135 (tag!5904 (rule!7884 separatorToken!241))))))))

(assert (= (and d!954562 res!1361860) b!3367606))

(assert (= (and b!3367606 res!1361861) b!3367607))

(assert (=> d!954562 m!3727093))

(assert (=> d!954562 m!3727093))

(declare-fun m!3727801 () Bool)

(assert (=> d!954562 m!3727801))

(declare-fun m!3727803 () Bool)

(assert (=> d!954562 m!3727803))

(assert (=> d!954562 m!3727113))

(assert (=> b!3367606 m!3727147))

(declare-fun m!3727805 () Bool)

(assert (=> b!3367606 m!3727805))

(assert (=> b!3367606 m!3727141))

(assert (=> b!3367606 m!3727093))

(declare-fun m!3727807 () Bool)

(assert (=> b!3367606 m!3727807))

(assert (=> b!3367606 m!3727093))

(assert (=> b!3367606 m!3727141))

(assert (=> b!3367606 m!3727147))

(assert (=> b!3367607 m!3727093))

(assert (=> b!3367607 m!3727093))

(assert (=> b!3367607 m!3727807))

(assert (=> b!3367069 d!954562))

(declare-fun d!954564 () Bool)

(declare-fun lt!1142728 () List!36859)

(assert (=> d!954564 (= (++!8959 lt!1142546 lt!1142728) lt!1142546)))

(declare-fun e!2090187 () List!36859)

(assert (=> d!954564 (= lt!1142728 e!2090187)))

(declare-fun c!573336 () Bool)

(assert (=> d!954564 (= c!573336 ((_ is Cons!36735) lt!1142546))))

(assert (=> d!954564 (>= (size!27798 lt!1142546) (size!27798 lt!1142546))))

(assert (=> d!954564 (= (getSuffix!1440 lt!1142546 lt!1142546) lt!1142728)))

(declare-fun b!3367612 () Bool)

(assert (=> b!3367612 (= e!2090187 (getSuffix!1440 (tail!5321 lt!1142546) (t!261582 lt!1142546)))))

(declare-fun b!3367613 () Bool)

(assert (=> b!3367613 (= e!2090187 lt!1142546)))

(assert (= (and d!954564 c!573336) b!3367612))

(assert (= (and d!954564 (not c!573336)) b!3367613))

(declare-fun m!3727809 () Bool)

(assert (=> d!954564 m!3727809))

(assert (=> d!954564 m!3727377))

(assert (=> d!954564 m!3727377))

(assert (=> b!3367612 m!3727709))

(assert (=> b!3367612 m!3727709))

(declare-fun m!3727811 () Bool)

(assert (=> b!3367612 m!3727811))

(assert (=> b!3367069 d!954564))

(declare-fun d!954566 () Bool)

(declare-fun res!1361866 () Bool)

(declare-fun e!2090192 () Bool)

(assert (=> d!954566 (=> res!1361866 e!2090192)))

(assert (=> d!954566 (= res!1361866 (not ((_ is Cons!36736) rules!2135)))))

(assert (=> d!954566 (= (sepAndNonSepRulesDisjointChars!1540 rules!2135 rules!2135) e!2090192)))

(declare-fun b!3367618 () Bool)

(declare-fun e!2090193 () Bool)

(assert (=> b!3367618 (= e!2090192 e!2090193)))

(declare-fun res!1361867 () Bool)

(assert (=> b!3367618 (=> (not res!1361867) (not e!2090193))))

(declare-fun ruleDisjointCharsFromAllFromOtherType!661 (Rule!10492 List!36860) Bool)

(assert (=> b!3367618 (= res!1361867 (ruleDisjointCharsFromAllFromOtherType!661 (h!42156 rules!2135) rules!2135))))

(declare-fun b!3367619 () Bool)

(assert (=> b!3367619 (= e!2090193 (sepAndNonSepRulesDisjointChars!1540 rules!2135 (t!261583 rules!2135)))))

(assert (= (and d!954566 (not res!1361866)) b!3367618))

(assert (= (and b!3367618 res!1361867) b!3367619))

(declare-fun m!3727813 () Bool)

(assert (=> b!3367618 m!3727813))

(declare-fun m!3727815 () Bool)

(assert (=> b!3367619 m!3727815))

(assert (=> b!3367090 d!954566))

(declare-fun b!3367633 () Bool)

(declare-fun e!2090196 () Bool)

(declare-fun tp!1053783 () Bool)

(declare-fun tp!1053785 () Bool)

(assert (=> b!3367633 (= e!2090196 (and tp!1053783 tp!1053785))))

(declare-fun b!3367631 () Bool)

(declare-fun tp!1053781 () Bool)

(declare-fun tp!1053784 () Bool)

(assert (=> b!3367631 (= e!2090196 (and tp!1053781 tp!1053784))))

(declare-fun b!3367630 () Bool)

(declare-fun tp_is_empty!17441 () Bool)

(assert (=> b!3367630 (= e!2090196 tp_is_empty!17441)))

(assert (=> b!3367089 (= tp!1053706 e!2090196)))

(declare-fun b!3367632 () Bool)

(declare-fun tp!1053782 () Bool)

(assert (=> b!3367632 (= e!2090196 tp!1053782)))

(assert (= (and b!3367089 ((_ is ElementMatch!10105) (regex!5346 (rule!7884 separatorToken!241)))) b!3367630))

(assert (= (and b!3367089 ((_ is Concat!15681) (regex!5346 (rule!7884 separatorToken!241)))) b!3367631))

(assert (= (and b!3367089 ((_ is Star!10105) (regex!5346 (rule!7884 separatorToken!241)))) b!3367632))

(assert (= (and b!3367089 ((_ is Union!10105) (regex!5346 (rule!7884 separatorToken!241)))) b!3367633))

(declare-fun b!3367637 () Bool)

(declare-fun e!2090197 () Bool)

(declare-fun tp!1053788 () Bool)

(declare-fun tp!1053790 () Bool)

(assert (=> b!3367637 (= e!2090197 (and tp!1053788 tp!1053790))))

(declare-fun b!3367635 () Bool)

(declare-fun tp!1053786 () Bool)

(declare-fun tp!1053789 () Bool)

(assert (=> b!3367635 (= e!2090197 (and tp!1053786 tp!1053789))))

(declare-fun b!3367634 () Bool)

(assert (=> b!3367634 (= e!2090197 tp_is_empty!17441)))

(assert (=> b!3367083 (= tp!1053701 e!2090197)))

(declare-fun b!3367636 () Bool)

(declare-fun tp!1053787 () Bool)

(assert (=> b!3367636 (= e!2090197 tp!1053787)))

(assert (= (and b!3367083 ((_ is ElementMatch!10105) (regex!5346 (h!42156 rules!2135)))) b!3367634))

(assert (= (and b!3367083 ((_ is Concat!15681) (regex!5346 (h!42156 rules!2135)))) b!3367635))

(assert (= (and b!3367083 ((_ is Star!10105) (regex!5346 (h!42156 rules!2135)))) b!3367636))

(assert (= (and b!3367083 ((_ is Union!10105) (regex!5346 (h!42156 rules!2135)))) b!3367637))

(declare-fun b!3367641 () Bool)

(declare-fun e!2090198 () Bool)

(declare-fun tp!1053793 () Bool)

(declare-fun tp!1053795 () Bool)

(assert (=> b!3367641 (= e!2090198 (and tp!1053793 tp!1053795))))

(declare-fun b!3367639 () Bool)

(declare-fun tp!1053791 () Bool)

(declare-fun tp!1053794 () Bool)

(assert (=> b!3367639 (= e!2090198 (and tp!1053791 tp!1053794))))

(declare-fun b!3367638 () Bool)

(assert (=> b!3367638 (= e!2090198 tp_is_empty!17441)))

(assert (=> b!3367088 (= tp!1053705 e!2090198)))

(declare-fun b!3367640 () Bool)

(declare-fun tp!1053792 () Bool)

(assert (=> b!3367640 (= e!2090198 tp!1053792)))

(assert (= (and b!3367088 ((_ is ElementMatch!10105) (regex!5346 (rule!7884 (h!42157 tokens!494))))) b!3367638))

(assert (= (and b!3367088 ((_ is Concat!15681) (regex!5346 (rule!7884 (h!42157 tokens!494))))) b!3367639))

(assert (= (and b!3367088 ((_ is Star!10105) (regex!5346 (rule!7884 (h!42157 tokens!494))))) b!3367640))

(assert (= (and b!3367088 ((_ is Union!10105) (regex!5346 (rule!7884 (h!42157 tokens!494))))) b!3367641))

(declare-fun b!3367655 () Bool)

(declare-fun b_free!88021 () Bool)

(declare-fun b_next!88725 () Bool)

(assert (=> b!3367655 (= b_free!88021 (not b_next!88725))))

(declare-fun tp!1053809 () Bool)

(declare-fun b_and!233367 () Bool)

(assert (=> b!3367655 (= tp!1053809 b_and!233367)))

(declare-fun b_free!88023 () Bool)

(declare-fun b_next!88727 () Bool)

(assert (=> b!3367655 (= b_free!88023 (not b_next!88727))))

(declare-fun t!261633 () Bool)

(declare-fun tb!178763 () Bool)

(assert (=> (and b!3367655 (= (toChars!7385 (transformation!5346 (rule!7884 (h!42157 (t!261584 tokens!494))))) (toChars!7385 (transformation!5346 (rule!7884 (h!42157 tokens!494))))) t!261633) tb!178763))

(declare-fun result!222020 () Bool)

(assert (= result!222020 result!221972))

(assert (=> d!954378 t!261633))

(declare-fun t!261635 () Bool)

(declare-fun tb!178765 () Bool)

(assert (=> (and b!3367655 (= (toChars!7385 (transformation!5346 (rule!7884 (h!42157 (t!261584 tokens!494))))) (toChars!7385 (transformation!5346 (rule!7884 separatorToken!241)))) t!261635) tb!178765))

(declare-fun result!222022 () Bool)

(assert (= result!222022 result!221980))

(assert (=> b!3367123 t!261635))

(assert (=> d!954436 t!261635))

(assert (=> b!3367563 t!261633))

(declare-fun b_and!233369 () Bool)

(declare-fun tp!1053808 () Bool)

(assert (=> b!3367655 (= tp!1053808 (and (=> t!261633 result!222020) (=> t!261635 result!222022) b_and!233369))))

(declare-fun e!2090211 () Bool)

(assert (=> b!3367070 (= tp!1053698 e!2090211)))

(declare-fun e!2090214 () Bool)

(declare-fun tp!1053807 () Bool)

(declare-fun e!2090216 () Bool)

(declare-fun b!3367653 () Bool)

(assert (=> b!3367653 (= e!2090216 (and (inv!21 (value!172821 (h!42157 (t!261584 tokens!494)))) e!2090214 tp!1053807))))

(declare-fun tp!1053806 () Bool)

(declare-fun b!3367652 () Bool)

(assert (=> b!3367652 (= e!2090211 (and (inv!49791 (h!42157 (t!261584 tokens!494))) e!2090216 tp!1053806))))

(declare-fun e!2090212 () Bool)

(assert (=> b!3367655 (= e!2090212 (and tp!1053809 tp!1053808))))

(declare-fun b!3367654 () Bool)

(declare-fun tp!1053810 () Bool)

(assert (=> b!3367654 (= e!2090214 (and tp!1053810 (inv!49788 (tag!5904 (rule!7884 (h!42157 (t!261584 tokens!494))))) (inv!49792 (transformation!5346 (rule!7884 (h!42157 (t!261584 tokens!494))))) e!2090212))))

(assert (= b!3367654 b!3367655))

(assert (= b!3367653 b!3367654))

(assert (= b!3367652 b!3367653))

(assert (= (and b!3367070 ((_ is Cons!36737) (t!261584 tokens!494))) b!3367652))

(declare-fun m!3727817 () Bool)

(assert (=> b!3367653 m!3727817))

(declare-fun m!3727819 () Bool)

(assert (=> b!3367652 m!3727819))

(declare-fun m!3727821 () Bool)

(assert (=> b!3367654 m!3727821))

(declare-fun m!3727823 () Bool)

(assert (=> b!3367654 m!3727823))

(declare-fun b!3367660 () Bool)

(declare-fun e!2090219 () Bool)

(declare-fun tp!1053813 () Bool)

(assert (=> b!3367660 (= e!2090219 (and tp_is_empty!17441 tp!1053813))))

(assert (=> b!3367091 (= tp!1053702 e!2090219)))

(assert (= (and b!3367091 ((_ is Cons!36735) (originalCharacters!6060 (h!42157 tokens!494)))) b!3367660))

(declare-fun b!3367671 () Bool)

(declare-fun b_free!88025 () Bool)

(declare-fun b_next!88729 () Bool)

(assert (=> b!3367671 (= b_free!88025 (not b_next!88729))))

(declare-fun tp!1053823 () Bool)

(declare-fun b_and!233371 () Bool)

(assert (=> b!3367671 (= tp!1053823 b_and!233371)))

(declare-fun b_free!88027 () Bool)

(declare-fun b_next!88731 () Bool)

(assert (=> b!3367671 (= b_free!88027 (not b_next!88731))))

(declare-fun t!261637 () Bool)

(declare-fun tb!178767 () Bool)

(assert (=> (and b!3367671 (= (toChars!7385 (transformation!5346 (h!42156 (t!261583 rules!2135)))) (toChars!7385 (transformation!5346 (rule!7884 (h!42157 tokens!494))))) t!261637) tb!178767))

(declare-fun result!222028 () Bool)

(assert (= result!222028 result!221972))

(assert (=> d!954378 t!261637))

(declare-fun t!261639 () Bool)

(declare-fun tb!178769 () Bool)

(assert (=> (and b!3367671 (= (toChars!7385 (transformation!5346 (h!42156 (t!261583 rules!2135)))) (toChars!7385 (transformation!5346 (rule!7884 separatorToken!241)))) t!261639) tb!178769))

(declare-fun result!222030 () Bool)

(assert (= result!222030 result!221980))

(assert (=> b!3367123 t!261639))

(assert (=> d!954436 t!261639))

(assert (=> b!3367563 t!261637))

(declare-fun tp!1053824 () Bool)

(declare-fun b_and!233373 () Bool)

(assert (=> b!3367671 (= tp!1053824 (and (=> t!261637 result!222028) (=> t!261639 result!222030) b_and!233373))))

(declare-fun e!2090228 () Bool)

(assert (=> b!3367671 (= e!2090228 (and tp!1053823 tp!1053824))))

(declare-fun tp!1053822 () Bool)

(declare-fun b!3367670 () Bool)

(declare-fun e!2090229 () Bool)

(assert (=> b!3367670 (= e!2090229 (and tp!1053822 (inv!49788 (tag!5904 (h!42156 (t!261583 rules!2135)))) (inv!49792 (transformation!5346 (h!42156 (t!261583 rules!2135)))) e!2090228))))

(declare-fun b!3367669 () Bool)

(declare-fun e!2090230 () Bool)

(declare-fun tp!1053825 () Bool)

(assert (=> b!3367669 (= e!2090230 (and e!2090229 tp!1053825))))

(assert (=> b!3367075 (= tp!1053697 e!2090230)))

(assert (= b!3367670 b!3367671))

(assert (= b!3367669 b!3367670))

(assert (= (and b!3367075 ((_ is Cons!36736) (t!261583 rules!2135))) b!3367669))

(declare-fun m!3727825 () Bool)

(assert (=> b!3367670 m!3727825))

(declare-fun m!3727827 () Bool)

(assert (=> b!3367670 m!3727827))

(declare-fun b!3367672 () Bool)

(declare-fun e!2090232 () Bool)

(declare-fun tp!1053826 () Bool)

(assert (=> b!3367672 (= e!2090232 (and tp_is_empty!17441 tp!1053826))))

(assert (=> b!3367085 (= tp!1053695 e!2090232)))

(assert (= (and b!3367085 ((_ is Cons!36735) (originalCharacters!6060 separatorToken!241))) b!3367672))

(declare-fun b_lambda!95271 () Bool)

(assert (= b_lambda!95269 (or (and b!3367671 b_free!88027 (= (toChars!7385 (transformation!5346 (h!42156 (t!261583 rules!2135)))) (toChars!7385 (transformation!5346 (rule!7884 (h!42157 tokens!494)))))) (and b!3367072 b_free!88011 (= (toChars!7385 (transformation!5346 (rule!7884 separatorToken!241))) (toChars!7385 (transformation!5346 (rule!7884 (h!42157 tokens!494)))))) (and b!3367093 b_free!88007 (= (toChars!7385 (transformation!5346 (h!42156 rules!2135))) (toChars!7385 (transformation!5346 (rule!7884 (h!42157 tokens!494)))))) (and b!3367096 b_free!88003) (and b!3367655 b_free!88023 (= (toChars!7385 (transformation!5346 (rule!7884 (h!42157 (t!261584 tokens!494))))) (toChars!7385 (transformation!5346 (rule!7884 (h!42157 tokens!494)))))) b_lambda!95271)))

(declare-fun b_lambda!95273 () Bool)

(assert (= b_lambda!95239 (or (and b!3367671 b_free!88027 (= (toChars!7385 (transformation!5346 (h!42156 (t!261583 rules!2135)))) (toChars!7385 (transformation!5346 (rule!7884 (h!42157 tokens!494)))))) (and b!3367072 b_free!88011 (= (toChars!7385 (transformation!5346 (rule!7884 separatorToken!241))) (toChars!7385 (transformation!5346 (rule!7884 (h!42157 tokens!494)))))) (and b!3367093 b_free!88007 (= (toChars!7385 (transformation!5346 (h!42156 rules!2135))) (toChars!7385 (transformation!5346 (rule!7884 (h!42157 tokens!494)))))) (and b!3367096 b_free!88003) (and b!3367655 b_free!88023 (= (toChars!7385 (transformation!5346 (rule!7884 (h!42157 (t!261584 tokens!494))))) (toChars!7385 (transformation!5346 (rule!7884 (h!42157 tokens!494)))))) b_lambda!95273)))

(declare-fun b_lambda!95275 () Bool)

(assert (= b_lambda!95267 (or b!3367098 b_lambda!95275)))

(declare-fun bs!553989 () Bool)

(declare-fun d!954568 () Bool)

(assert (= bs!553989 (and d!954568 b!3367098)))

(assert (=> bs!553989 (= (dynLambda!15221 lambda!120185 (h!42157 tokens!494)) (not (isSeparator!5346 (rule!7884 (h!42157 tokens!494)))))))

(assert (=> d!954538 d!954568))

(declare-fun b_lambda!95277 () Bool)

(assert (= b_lambda!95247 (or b!3367098 b_lambda!95277)))

(assert (=> b!3367253 d!954568))

(declare-fun b_lambda!95279 () Bool)

(assert (= b_lambda!95241 (or (and b!3367072 b_free!88011) (and b!3367096 b_free!88003 (= (toChars!7385 (transformation!5346 (rule!7884 (h!42157 tokens!494)))) (toChars!7385 (transformation!5346 (rule!7884 separatorToken!241))))) (and b!3367093 b_free!88007 (= (toChars!7385 (transformation!5346 (h!42156 rules!2135))) (toChars!7385 (transformation!5346 (rule!7884 separatorToken!241))))) (and b!3367671 b_free!88027 (= (toChars!7385 (transformation!5346 (h!42156 (t!261583 rules!2135)))) (toChars!7385 (transformation!5346 (rule!7884 separatorToken!241))))) (and b!3367655 b_free!88023 (= (toChars!7385 (transformation!5346 (rule!7884 (h!42157 (t!261584 tokens!494))))) (toChars!7385 (transformation!5346 (rule!7884 separatorToken!241))))) b_lambda!95279)))

(declare-fun b_lambda!95281 () Bool)

(assert (= b_lambda!95249 (or (and b!3367072 b_free!88011) (and b!3367096 b_free!88003 (= (toChars!7385 (transformation!5346 (rule!7884 (h!42157 tokens!494)))) (toChars!7385 (transformation!5346 (rule!7884 separatorToken!241))))) (and b!3367093 b_free!88007 (= (toChars!7385 (transformation!5346 (h!42156 rules!2135))) (toChars!7385 (transformation!5346 (rule!7884 separatorToken!241))))) (and b!3367671 b_free!88027 (= (toChars!7385 (transformation!5346 (h!42156 (t!261583 rules!2135)))) (toChars!7385 (transformation!5346 (rule!7884 separatorToken!241))))) (and b!3367655 b_free!88023 (= (toChars!7385 (transformation!5346 (rule!7884 (h!42157 (t!261584 tokens!494))))) (toChars!7385 (transformation!5346 (rule!7884 separatorToken!241))))) b_lambda!95281)))

(check-sat tp_is_empty!17441 (not b!3367316) (not b!3367589) (not b!3367324) (not b!3367538) (not b!3367543) (not b!3367531) (not b_next!88729) (not d!954538) (not b!3367496) (not b!3367672) (not d!954412) (not d!954392) (not b_lambda!95275) (not b!3367139) (not b!3367147) (not b!3367631) (not d!954556) (not d!954518) (not b!3367118) (not d!954386) (not b!3367115) (not b!3367590) (not d!954390) (not b!3367123) (not b!3367559) (not d!954540) (not b_lambda!95271) (not d!954378) (not b_next!88725) (not b!3367540) (not d!954550) (not b!3367537) (not b!3367469) (not b!3367318) (not d!954552) (not b!3367618) (not bm!243791) (not d!954424) (not b_next!88709) (not b!3367605) (not b_lambda!95279) (not b!3367562) (not b_next!88705) (not b!3367563) (not b!3367302) (not bm!243790) (not d!954564) (not d!954440) (not d!954376) (not b!3367110) (not b!3367501) (not d!954514) (not d!954558) (not b!3367654) (not b!3367545) (not b!3367558) (not b!3367606) (not b!3367222) (not b!3367632) (not b!3367568) (not b!3367224) (not d!954562) (not tb!178731) (not b!3367596) (not b!3367138) (not b!3367301) (not b!3367556) (not b!3367653) (not b!3367640) (not b!3367633) b_and!233361 (not b!3367567) (not b_next!88727) (not b!3367637) (not b!3367636) b_and!233367 (not d!954462) (not d!954528) (not b_next!88713) (not b!3367542) (not d!954408) (not d!954546) (not b!3367149) (not b!3367544) b_and!233299 (not d!954446) b_and!233369 (not d!954380) (not b!3367125) (not b!3367575) (not b!3367599) (not b_lambda!95273) (not d!954382) (not b_next!88715) (not b!3367612) (not b!3367148) (not b!3367254) (not d!954456) (not b!3367136) b_and!233365 (not b!3367565) (not b!3367564) (not b!3367497) (not d!954374) (not b_next!88711) (not b!3367635) b_and!233371 (not b_next!88707) (not b!3367669) (not b!3367329) (not b!3367670) (not b!3367499) (not d!954560) (not b!3367660) (not b!3367641) (not b!3367607) (not d!954534) (not d!954436) (not b!3367652) (not b!3367547) (not d!954438) (not b!3367595) (not b!3367225) (not b!3367452) (not b!3367639) (not d!954520) (not b!3367553) (not b!3367593) (not d!954522) (not d!954544) (not d!954444) b_and!233307 (not d!954532) (not b!3367554) (not tb!178737) (not d!954554) (not b_lambda!95281) (not b!3367619) (not b!3367226) b_and!233373 (not b!3367574) (not b!3367124) b_and!233363 (not b_next!88731) (not d!954434) (not b!3367500) (not b_lambda!95277) b_and!233303)
(check-sat (not b_next!88729) (not b_next!88725) b_and!233367 (not b_next!88713) (not b_next!88715) b_and!233365 (not b_next!88711) b_and!233307 b_and!233373 (not b_next!88709) (not b_next!88705) b_and!233361 (not b_next!88727) b_and!233299 b_and!233369 b_and!233371 (not b_next!88707) b_and!233363 (not b_next!88731) b_and!233303)
