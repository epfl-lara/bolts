; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!314730 () Bool)

(assert start!314730)

(declare-fun b!3379126 () Bool)

(declare-fun b_free!88409 () Bool)

(declare-fun b_next!89113 () Bool)

(assert (=> b!3379126 (= b_free!88409 (not b_next!89113))))

(declare-fun tp!1056617 () Bool)

(declare-fun b_and!234703 () Bool)

(assert (=> b!3379126 (= tp!1056617 b_and!234703)))

(declare-fun b_free!88411 () Bool)

(declare-fun b_next!89115 () Bool)

(assert (=> b!3379126 (= b_free!88411 (not b_next!89115))))

(declare-fun tp!1056620 () Bool)

(declare-fun b_and!234705 () Bool)

(assert (=> b!3379126 (= tp!1056620 b_and!234705)))

(declare-fun b!3379101 () Bool)

(declare-fun b_free!88413 () Bool)

(declare-fun b_next!89117 () Bool)

(assert (=> b!3379101 (= b_free!88413 (not b_next!89117))))

(declare-fun tp!1056628 () Bool)

(declare-fun b_and!234707 () Bool)

(assert (=> b!3379101 (= tp!1056628 b_and!234707)))

(declare-fun b_free!88415 () Bool)

(declare-fun b_next!89119 () Bool)

(assert (=> b!3379101 (= b_free!88415 (not b_next!89119))))

(declare-fun tp!1056624 () Bool)

(declare-fun b_and!234709 () Bool)

(assert (=> b!3379101 (= tp!1056624 b_and!234709)))

(declare-fun b!3379103 () Bool)

(declare-fun b_free!88417 () Bool)

(declare-fun b_next!89121 () Bool)

(assert (=> b!3379103 (= b_free!88417 (not b_next!89121))))

(declare-fun tp!1056621 () Bool)

(declare-fun b_and!234711 () Bool)

(assert (=> b!3379103 (= tp!1056621 b_and!234711)))

(declare-fun b_free!88419 () Bool)

(declare-fun b_next!89123 () Bool)

(assert (=> b!3379103 (= b_free!88419 (not b_next!89123))))

(declare-fun tp!1056616 () Bool)

(declare-fun b_and!234713 () Bool)

(assert (=> b!3379103 (= tp!1056616 b_and!234713)))

(declare-fun tp!1056622 () Bool)

(declare-fun e!2097530 () Bool)

(declare-fun e!2097535 () Bool)

(declare-fun b!3379096 () Bool)

(declare-datatypes ((C!20440 0))(
  ( (C!20441 (val!12268 Int)) )
))
(declare-datatypes ((Regex!10127 0))(
  ( (ElementMatch!10127 (c!575376 C!20440)) (Concat!15725 (regOne!20766 Regex!10127) (regTwo!20766 Regex!10127)) (EmptyExpr!10127) (Star!10127 (reg!10456 Regex!10127)) (EmptyLang!10127) (Union!10127 (regOne!20767 Regex!10127) (regTwo!20767 Regex!10127)) )
))
(declare-datatypes ((List!36960 0))(
  ( (Nil!36836) (Cons!36836 (h!42256 (_ BitVec 16)) (t!263007 List!36960)) )
))
(declare-datatypes ((TokenValue!5598 0))(
  ( (FloatLiteralValue!11196 (text!39631 List!36960)) (TokenValueExt!5597 (__x!23413 Int)) (Broken!27990 (value!173422 List!36960)) (Object!5721) (End!5598) (Def!5598) (Underscore!5598) (Match!5598) (Else!5598) (Error!5598) (Case!5598) (If!5598) (Extends!5598) (Abstract!5598) (Class!5598) (Val!5598) (DelimiterValue!11196 (del!5658 List!36960)) (KeywordValue!5604 (value!173423 List!36960)) (CommentValue!11196 (value!173424 List!36960)) (WhitespaceValue!11196 (value!173425 List!36960)) (IndentationValue!5598 (value!173426 List!36960)) (String!41323) (Int32!5598) (Broken!27991 (value!173427 List!36960)) (Boolean!5599) (Unit!51941) (OperatorValue!5601 (op!5658 List!36960)) (IdentifierValue!11196 (value!173428 List!36960)) (IdentifierValue!11197 (value!173429 List!36960)) (WhitespaceValue!11197 (value!173430 List!36960)) (True!11196) (False!11196) (Broken!27992 (value!173431 List!36960)) (Broken!27993 (value!173432 List!36960)) (True!11197) (RightBrace!5598) (RightBracket!5598) (Colon!5598) (Null!5598) (Comma!5598) (LeftBracket!5598) (False!11197) (LeftBrace!5598) (ImaginaryLiteralValue!5598 (text!39632 List!36960)) (StringLiteralValue!16794 (value!173433 List!36960)) (EOFValue!5598 (value!173434 List!36960)) (IdentValue!5598 (value!173435 List!36960)) (DelimiterValue!11197 (value!173436 List!36960)) (DedentValue!5598 (value!173437 List!36960)) (NewLineValue!5598 (value!173438 List!36960)) (IntegerValue!16794 (value!173439 (_ BitVec 32)) (text!39633 List!36960)) (IntegerValue!16795 (value!173440 Int) (text!39634 List!36960)) (Times!5598) (Or!5598) (Equal!5598) (Minus!5598) (Broken!27994 (value!173441 List!36960)) (And!5598) (Div!5598) (LessEqual!5598) (Mod!5598) (Concat!15726) (Not!5598) (Plus!5598) (SpaceValue!5598 (value!173442 List!36960)) (IntegerValue!16796 (value!173443 Int) (text!39635 List!36960)) (StringLiteralValue!16795 (text!39636 List!36960)) (FloatLiteralValue!11197 (text!39637 List!36960)) (BytesLiteralValue!5598 (value!173444 List!36960)) (CommentValue!11197 (value!173445 List!36960)) (StringLiteralValue!16796 (value!173446 List!36960)) (ErrorTokenValue!5598 (msg!5659 List!36960)) )
))
(declare-datatypes ((List!36961 0))(
  ( (Nil!36837) (Cons!36837 (h!42257 C!20440) (t!263008 List!36961)) )
))
(declare-datatypes ((IArray!22227 0))(
  ( (IArray!22228 (innerList!11171 List!36961)) )
))
(declare-datatypes ((Conc!11111 0))(
  ( (Node!11111 (left!28717 Conc!11111) (right!29047 Conc!11111) (csize!22452 Int) (cheight!11322 Int)) (Leaf!17406 (xs!14265 IArray!22227) (csize!22453 Int)) (Empty!11111) )
))
(declare-datatypes ((BalanceConc!21836 0))(
  ( (BalanceConc!21837 (c!575377 Conc!11111)) )
))
(declare-datatypes ((String!41324 0))(
  ( (String!41325 (value!173447 String)) )
))
(declare-datatypes ((TokenValueInjection!10624 0))(
  ( (TokenValueInjection!10625 (toValue!7552 Int) (toChars!7411 Int)) )
))
(declare-datatypes ((Rule!10536 0))(
  ( (Rule!10537 (regex!5368 Regex!10127) (tag!5940 String!41324) (isSeparator!5368 Bool) (transformation!5368 TokenValueInjection!10624)) )
))
(declare-datatypes ((Token!10102 0))(
  ( (Token!10103 (value!173448 TokenValue!5598) (rule!7916 Rule!10536) (size!27874 Int) (originalCharacters!6082 List!36961)) )
))
(declare-fun separatorToken!241 () Token!10102)

(declare-fun inv!21 (TokenValue!5598) Bool)

(assert (=> b!3379096 (= e!2097530 (and (inv!21 (value!173448 separatorToken!241)) e!2097535 tp!1056622))))

(declare-fun b!3379097 () Bool)

(declare-fun e!2097528 () Bool)

(declare-fun e!2097526 () Bool)

(assert (=> b!3379097 (= e!2097528 e!2097526)))

(declare-fun res!1366896 () Bool)

(assert (=> b!3379097 (=> res!1366896 e!2097526)))

(declare-fun lt!1147251 () Bool)

(assert (=> b!3379097 (= res!1366896 lt!1147251)))

(declare-datatypes ((Unit!51942 0))(
  ( (Unit!51943) )
))
(declare-fun lt!1147238 () Unit!51942)

(declare-fun e!2097525 () Unit!51942)

(assert (=> b!3379097 (= lt!1147238 e!2097525)))

(declare-fun c!575375 () Bool)

(assert (=> b!3379097 (= c!575375 lt!1147251)))

(declare-fun lt!1147252 () C!20440)

(declare-fun contains!6726 (List!36961 C!20440) Bool)

(declare-fun usedCharacters!624 (Regex!10127) List!36961)

(assert (=> b!3379097 (= lt!1147251 (not (contains!6726 (usedCharacters!624 (regex!5368 (rule!7916 separatorToken!241))) lt!1147252)))))

(declare-fun lt!1147254 () List!36961)

(declare-fun head!7215 (List!36961) C!20440)

(assert (=> b!3379097 (= lt!1147252 (head!7215 lt!1147254))))

(declare-fun lt!1147234 () BalanceConc!21836)

(declare-datatypes ((LexerInterface!4957 0))(
  ( (LexerInterfaceExt!4954 (__x!23414 Int)) (Lexer!4955) )
))
(declare-fun thiss!18206 () LexerInterface!4957)

(declare-fun lt!1147247 () List!36961)

(declare-datatypes ((List!36962 0))(
  ( (Nil!36838) (Cons!36838 (h!42258 Token!10102) (t!263009 List!36962)) )
))
(declare-fun tokens!494 () List!36962)

(declare-datatypes ((tuple2!36412 0))(
  ( (tuple2!36413 (_1!21340 Token!10102) (_2!21340 List!36961)) )
))
(declare-datatypes ((Option!7383 0))(
  ( (None!7382) (Some!7382 (v!36450 tuple2!36412)) )
))
(declare-fun maxPrefixOneRule!1680 (LexerInterface!4957 Rule!10536 List!36961) Option!7383)

(declare-fun apply!8559 (TokenValueInjection!10624 BalanceConc!21836) TokenValue!5598)

(declare-fun size!27875 (List!36961) Int)

(assert (=> b!3379097 (= (maxPrefixOneRule!1680 thiss!18206 (rule!7916 (h!42258 tokens!494)) lt!1147247) (Some!7382 (tuple2!36413 (Token!10103 (apply!8559 (transformation!5368 (rule!7916 (h!42258 tokens!494))) lt!1147234) (rule!7916 (h!42258 tokens!494)) (size!27875 lt!1147247) lt!1147247) Nil!36837)))))

(declare-fun lt!1147248 () Unit!51942)

(declare-datatypes ((List!36963 0))(
  ( (Nil!36839) (Cons!36839 (h!42259 Rule!10536) (t!263010 List!36963)) )
))
(declare-fun rules!2135 () List!36963)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!779 (LexerInterface!4957 List!36963 List!36961 List!36961 List!36961 Rule!10536) Unit!51942)

(assert (=> b!3379097 (= lt!1147248 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!779 thiss!18206 rules!2135 lt!1147247 lt!1147247 Nil!36837 (rule!7916 (h!42258 tokens!494))))))

(declare-fun e!2097540 () Bool)

(assert (=> b!3379097 e!2097540))

(declare-fun res!1366895 () Bool)

(assert (=> b!3379097 (=> (not res!1366895) (not e!2097540))))

(declare-datatypes ((Option!7384 0))(
  ( (None!7383) (Some!7383 (v!36451 Rule!10536)) )
))
(declare-fun lt!1147250 () Option!7384)

(declare-fun isDefined!5706 (Option!7384) Bool)

(assert (=> b!3379097 (= res!1366895 (isDefined!5706 lt!1147250))))

(declare-fun getRuleFromTag!1023 (LexerInterface!4957 List!36963 String!41324) Option!7384)

(assert (=> b!3379097 (= lt!1147250 (getRuleFromTag!1023 thiss!18206 rules!2135 (tag!5940 (rule!7916 separatorToken!241))))))

(declare-fun lt!1147253 () Unit!51942)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1023 (LexerInterface!4957 List!36963 List!36961 Token!10102) Unit!51942)

(assert (=> b!3379097 (= lt!1147253 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1023 thiss!18206 rules!2135 lt!1147254 separatorToken!241))))

(declare-fun e!2097532 () Bool)

(assert (=> b!3379097 e!2097532))

(declare-fun res!1366900 () Bool)

(assert (=> b!3379097 (=> (not res!1366900) (not e!2097532))))

(declare-fun lt!1147239 () Option!7384)

(assert (=> b!3379097 (= res!1366900 (isDefined!5706 lt!1147239))))

(assert (=> b!3379097 (= lt!1147239 (getRuleFromTag!1023 thiss!18206 rules!2135 (tag!5940 (rule!7916 (h!42258 tokens!494)))))))

(declare-fun lt!1147235 () Unit!51942)

(assert (=> b!3379097 (= lt!1147235 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1023 thiss!18206 rules!2135 lt!1147247 (h!42258 tokens!494)))))

(declare-fun lt!1147232 () Unit!51942)

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!952 (LexerInterface!4957 List!36963 List!36962 Token!10102) Unit!51942)

(assert (=> b!3379097 (= lt!1147232 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!952 thiss!18206 rules!2135 tokens!494 (h!42258 tokens!494)))))

(declare-fun isEmpty!21065 (List!36961) Bool)

(declare-fun getSuffix!1462 (List!36961 List!36961) List!36961)

(assert (=> b!3379097 (isEmpty!21065 (getSuffix!1462 lt!1147247 lt!1147247))))

(declare-fun lt!1147236 () Unit!51942)

(declare-fun lemmaGetSuffixOnListWithItSelfIsEmpty!120 (List!36961) Unit!51942)

(assert (=> b!3379097 (= lt!1147236 (lemmaGetSuffixOnListWithItSelfIsEmpty!120 lt!1147247))))

(declare-fun b!3379098 () Bool)

(declare-fun res!1366890 () Bool)

(declare-fun e!2097543 () Bool)

(assert (=> b!3379098 (=> (not res!1366890) (not e!2097543))))

(declare-fun isEmpty!21066 (List!36963) Bool)

(assert (=> b!3379098 (= res!1366890 (not (isEmpty!21066 rules!2135)))))

(declare-fun res!1366904 () Bool)

(assert (=> start!314730 (=> (not res!1366904) (not e!2097543))))

(get-info :version)

(assert (=> start!314730 (= res!1366904 ((_ is Lexer!4955) thiss!18206))))

(assert (=> start!314730 e!2097543))

(assert (=> start!314730 true))

(declare-fun e!2097546 () Bool)

(assert (=> start!314730 e!2097546))

(declare-fun inv!49906 (Token!10102) Bool)

(assert (=> start!314730 (and (inv!49906 separatorToken!241) e!2097530)))

(declare-fun e!2097551 () Bool)

(assert (=> start!314730 e!2097551))

(declare-fun b!3379099 () Bool)

(declare-fun contains!6727 (List!36963 Rule!10536) Bool)

(assert (=> b!3379099 (= e!2097526 (contains!6727 rules!2135 (rule!7916 (h!42258 tokens!494))))))

(assert (=> b!3379099 (not (contains!6726 (usedCharacters!624 (regex!5368 (rule!7916 (h!42258 tokens!494)))) lt!1147252))))

(declare-fun lt!1147245 () Unit!51942)

(declare-fun lemmaNonSepRuleNotContainsCharContainedInASepRule!208 (LexerInterface!4957 List!36963 List!36963 Rule!10536 Rule!10536 C!20440) Unit!51942)

(assert (=> b!3379099 (= lt!1147245 (lemmaNonSepRuleNotContainsCharContainedInASepRule!208 thiss!18206 rules!2135 rules!2135 (rule!7916 (h!42258 tokens!494)) (rule!7916 separatorToken!241) lt!1147252))))

(declare-fun b!3379100 () Bool)

(declare-fun e!2097524 () Bool)

(declare-fun tp!1056619 () Bool)

(declare-fun e!2097533 () Bool)

(declare-fun inv!49903 (String!41324) Bool)

(declare-fun inv!49907 (TokenValueInjection!10624) Bool)

(assert (=> b!3379100 (= e!2097533 (and tp!1056619 (inv!49903 (tag!5940 (rule!7916 (h!42258 tokens!494)))) (inv!49907 (transformation!5368 (rule!7916 (h!42258 tokens!494)))) e!2097524))))

(assert (=> b!3379101 (= e!2097524 (and tp!1056628 tp!1056624))))

(declare-fun b!3379102 () Bool)

(declare-fun e!2097541 () Bool)

(declare-fun lt!1147243 () Rule!10536)

(assert (=> b!3379102 (= e!2097541 (= (rule!7916 (h!42258 tokens!494)) lt!1147243))))

(declare-fun e!2097550 () Bool)

(assert (=> b!3379103 (= e!2097550 (and tp!1056621 tp!1056616))))

(declare-fun b!3379104 () Bool)

(declare-fun res!1366897 () Bool)

(declare-fun e!2097531 () Bool)

(assert (=> b!3379104 (=> (not res!1366897) (not e!2097531))))

(assert (=> b!3379104 (= res!1366897 (and (not ((_ is Nil!36838) tokens!494)) ((_ is Nil!36838) (t!263009 tokens!494))))))

(declare-fun b!3379105 () Bool)

(declare-fun e!2097548 () Bool)

(declare-fun e!2097547 () Bool)

(assert (=> b!3379105 (= e!2097548 e!2097547)))

(declare-fun res!1366899 () Bool)

(assert (=> b!3379105 (=> res!1366899 e!2097547)))

(declare-fun lt!1147237 () List!36961)

(declare-fun lt!1147244 () List!36961)

(assert (=> b!3379105 (= res!1366899 (or (not (= lt!1147244 lt!1147247)) (not (= lt!1147237 lt!1147247))))))

(declare-fun list!13317 (BalanceConc!21836) List!36961)

(declare-fun charsOf!3382 (Token!10102) BalanceConc!21836)

(assert (=> b!3379105 (= lt!1147247 (list!13317 (charsOf!3382 (h!42258 tokens!494))))))

(declare-fun b!3379106 () Bool)

(declare-fun e!2097544 () Bool)

(declare-fun e!2097527 () Bool)

(assert (=> b!3379106 (= e!2097544 e!2097527)))

(declare-fun res!1366887 () Bool)

(assert (=> b!3379106 (=> res!1366887 e!2097527)))

(assert (=> b!3379106 (= res!1366887 (isSeparator!5368 (rule!7916 (h!42258 tokens!494))))))

(declare-fun lt!1147233 () Unit!51942)

(declare-fun lambda!120435 () Int)

(declare-fun forallContained!1315 (List!36962 Int Token!10102) Unit!51942)

(assert (=> b!3379106 (= lt!1147233 (forallContained!1315 tokens!494 lambda!120435 (h!42258 tokens!494)))))

(declare-fun b!3379107 () Bool)

(assert (=> b!3379107 (= e!2097547 e!2097544)))

(declare-fun res!1366885 () Bool)

(assert (=> b!3379107 (=> res!1366885 e!2097544)))

(declare-datatypes ((IArray!22229 0))(
  ( (IArray!22230 (innerList!11172 List!36962)) )
))
(declare-datatypes ((Conc!11112 0))(
  ( (Node!11112 (left!28718 Conc!11112) (right!29048 Conc!11112) (csize!22454 Int) (cheight!11323 Int)) (Leaf!17407 (xs!14266 IArray!22229) (csize!22455 Int)) (Empty!11112) )
))
(declare-datatypes ((BalanceConc!21838 0))(
  ( (BalanceConc!21839 (c!575378 Conc!11112)) )
))
(declare-fun isEmpty!21067 (BalanceConc!21838) Bool)

(declare-datatypes ((tuple2!36414 0))(
  ( (tuple2!36415 (_1!21341 BalanceConc!21838) (_2!21341 BalanceConc!21836)) )
))
(declare-fun lex!2283 (LexerInterface!4957 List!36963 BalanceConc!21836) tuple2!36414)

(assert (=> b!3379107 (= res!1366885 (isEmpty!21067 (_1!21341 (lex!2283 thiss!18206 rules!2135 lt!1147234))))))

(declare-fun seqFromList!3789 (List!36961) BalanceConc!21836)

(assert (=> b!3379107 (= lt!1147234 (seqFromList!3789 lt!1147247))))

(declare-fun b!3379108 () Bool)

(declare-fun res!1366903 () Bool)

(assert (=> b!3379108 (=> (not res!1366903) (not e!2097531))))

(assert (=> b!3379108 (= res!1366903 (isSeparator!5368 (rule!7916 separatorToken!241)))))

(declare-fun b!3379109 () Bool)

(declare-fun res!1366902 () Bool)

(assert (=> b!3379109 (=> (not res!1366902) (not e!2097531))))

(declare-fun rulesProduceIndividualToken!2449 (LexerInterface!4957 List!36963 Token!10102) Bool)

(assert (=> b!3379109 (= res!1366902 (rulesProduceIndividualToken!2449 thiss!18206 rules!2135 separatorToken!241))))

(declare-fun b!3379110 () Bool)

(declare-fun e!2097536 () Bool)

(declare-fun lt!1147231 () Rule!10536)

(assert (=> b!3379110 (= e!2097536 (= (rule!7916 separatorToken!241) lt!1147231))))

(declare-fun b!3379111 () Bool)

(declare-fun res!1366889 () Bool)

(assert (=> b!3379111 (=> (not res!1366889) (not e!2097531))))

(declare-fun sepAndNonSepRulesDisjointChars!1562 (List!36963 List!36963) Bool)

(assert (=> b!3379111 (= res!1366889 (sepAndNonSepRulesDisjointChars!1562 rules!2135 rules!2135))))

(declare-fun b!3379112 () Bool)

(assert (=> b!3379112 (= e!2097532 e!2097541)))

(declare-fun res!1366886 () Bool)

(assert (=> b!3379112 (=> (not res!1366886) (not e!2097541))))

(declare-fun matchR!4719 (Regex!10127 List!36961) Bool)

(assert (=> b!3379112 (= res!1366886 (matchR!4719 (regex!5368 lt!1147243) lt!1147247))))

(declare-fun get!11755 (Option!7384) Rule!10536)

(assert (=> b!3379112 (= lt!1147243 (get!11755 lt!1147239))))

(declare-fun b!3379113 () Bool)

(declare-fun res!1366893 () Bool)

(assert (=> b!3379113 (=> (not res!1366893) (not e!2097531))))

(declare-fun forall!7747 (List!36962 Int) Bool)

(assert (=> b!3379113 (= res!1366893 (forall!7747 tokens!494 lambda!120435))))

(declare-fun b!3379114 () Bool)

(declare-fun res!1366884 () Bool)

(assert (=> b!3379114 (=> res!1366884 e!2097547)))

(assert (=> b!3379114 (= res!1366884 (not (rulesProduceIndividualToken!2449 thiss!18206 rules!2135 (h!42258 tokens!494))))))

(declare-fun b!3379115 () Bool)

(declare-fun Unit!51944 () Unit!51942)

(assert (=> b!3379115 (= e!2097525 Unit!51944)))

(declare-fun tp!1056618 () Bool)

(declare-fun b!3379116 () Bool)

(declare-fun e!2097539 () Bool)

(declare-fun e!2097538 () Bool)

(assert (=> b!3379116 (= e!2097539 (and tp!1056618 (inv!49903 (tag!5940 (h!42259 rules!2135))) (inv!49907 (transformation!5368 (h!42259 rules!2135))) e!2097538))))

(declare-fun b!3379117 () Bool)

(declare-fun Unit!51945 () Unit!51942)

(assert (=> b!3379117 (= e!2097525 Unit!51945)))

(declare-fun lt!1147242 () Unit!51942)

(declare-fun lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!458 (Regex!10127 List!36961 C!20440) Unit!51942)

(assert (=> b!3379117 (= lt!1147242 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!458 (regex!5368 (rule!7916 separatorToken!241)) lt!1147254 lt!1147252))))

(declare-fun res!1366898 () Bool)

(assert (=> b!3379117 (= res!1366898 (not (matchR!4719 (regex!5368 (rule!7916 separatorToken!241)) lt!1147254)))))

(declare-fun e!2097542 () Bool)

(assert (=> b!3379117 (=> (not res!1366898) (not e!2097542))))

(assert (=> b!3379117 e!2097542))

(declare-fun b!3379118 () Bool)

(assert (=> b!3379118 (= e!2097540 e!2097536)))

(declare-fun res!1366901 () Bool)

(assert (=> b!3379118 (=> (not res!1366901) (not e!2097536))))

(assert (=> b!3379118 (= res!1366901 (matchR!4719 (regex!5368 lt!1147231) lt!1147254))))

(assert (=> b!3379118 (= lt!1147231 (get!11755 lt!1147250))))

(declare-fun b!3379119 () Bool)

(declare-fun tp!1056627 () Bool)

(assert (=> b!3379119 (= e!2097535 (and tp!1056627 (inv!49903 (tag!5940 (rule!7916 separatorToken!241))) (inv!49907 (transformation!5368 (rule!7916 separatorToken!241))) e!2097550))))

(declare-fun b!3379120 () Bool)

(assert (=> b!3379120 (= e!2097527 e!2097528)))

(declare-fun res!1366888 () Bool)

(assert (=> b!3379120 (=> res!1366888 e!2097528)))

(declare-fun lt!1147249 () BalanceConc!21836)

(declare-fun ++!8999 (List!36961 List!36961) List!36961)

(assert (=> b!3379120 (= res!1366888 (not (= (list!13317 lt!1147249) (++!8999 lt!1147247 lt!1147254))))))

(assert (=> b!3379120 (= lt!1147254 (list!13317 (charsOf!3382 separatorToken!241)))))

(declare-fun lt!1147246 () BalanceConc!21838)

(declare-fun printWithSeparatorToken!148 (LexerInterface!4957 BalanceConc!21838 Token!10102) BalanceConc!21836)

(assert (=> b!3379120 (= lt!1147249 (printWithSeparatorToken!148 thiss!18206 lt!1147246 separatorToken!241))))

(declare-fun tp!1056625 () Bool)

(declare-fun e!2097545 () Bool)

(declare-fun b!3379121 () Bool)

(assert (=> b!3379121 (= e!2097551 (and (inv!49906 (h!42258 tokens!494)) e!2097545 tp!1056625))))

(declare-fun b!3379122 () Bool)

(assert (=> b!3379122 (= e!2097543 e!2097531)))

(declare-fun res!1366894 () Bool)

(assert (=> b!3379122 (=> (not res!1366894) (not e!2097531))))

(declare-fun rulesProduceEachTokenIndividually!1408 (LexerInterface!4957 List!36963 BalanceConc!21838) Bool)

(assert (=> b!3379122 (= res!1366894 (rulesProduceEachTokenIndividually!1408 thiss!18206 rules!2135 lt!1147246))))

(declare-fun seqFromList!3790 (List!36962) BalanceConc!21838)

(assert (=> b!3379122 (= lt!1147246 (seqFromList!3790 tokens!494))))

(declare-fun b!3379123 () Bool)

(declare-fun tp!1056623 () Bool)

(assert (=> b!3379123 (= e!2097546 (and e!2097539 tp!1056623))))

(declare-fun b!3379124 () Bool)

(assert (=> b!3379124 (= e!2097531 (not e!2097548))))

(declare-fun res!1366892 () Bool)

(assert (=> b!3379124 (=> res!1366892 e!2097548)))

(assert (=> b!3379124 (= res!1366892 (not (= lt!1147237 lt!1147244)))))

(declare-fun printList!1505 (LexerInterface!4957 List!36962) List!36961)

(assert (=> b!3379124 (= lt!1147244 (printList!1505 thiss!18206 (Cons!36838 (h!42258 tokens!494) Nil!36838)))))

(declare-fun lt!1147241 () BalanceConc!21836)

(assert (=> b!3379124 (= lt!1147237 (list!13317 lt!1147241))))

(declare-fun lt!1147240 () BalanceConc!21838)

(declare-fun printTailRec!1452 (LexerInterface!4957 BalanceConc!21838 Int BalanceConc!21836) BalanceConc!21836)

(assert (=> b!3379124 (= lt!1147241 (printTailRec!1452 thiss!18206 lt!1147240 0 (BalanceConc!21837 Empty!11111)))))

(declare-fun print!2022 (LexerInterface!4957 BalanceConc!21838) BalanceConc!21836)

(assert (=> b!3379124 (= lt!1147241 (print!2022 thiss!18206 lt!1147240))))

(declare-fun singletonSeq!2464 (Token!10102) BalanceConc!21838)

(assert (=> b!3379124 (= lt!1147240 (singletonSeq!2464 (h!42258 tokens!494)))))

(declare-fun b!3379125 () Bool)

(declare-fun res!1366891 () Bool)

(assert (=> b!3379125 (=> (not res!1366891) (not e!2097543))))

(declare-fun rulesInvariant!4354 (LexerInterface!4957 List!36963) Bool)

(assert (=> b!3379125 (= res!1366891 (rulesInvariant!4354 thiss!18206 rules!2135))))

(assert (=> b!3379126 (= e!2097538 (and tp!1056617 tp!1056620))))

(declare-fun tp!1056626 () Bool)

(declare-fun b!3379127 () Bool)

(assert (=> b!3379127 (= e!2097545 (and (inv!21 (value!173448 (h!42258 tokens!494))) e!2097533 tp!1056626))))

(declare-fun b!3379128 () Bool)

(assert (=> b!3379128 (= e!2097542 false)))

(assert (= (and start!314730 res!1366904) b!3379098))

(assert (= (and b!3379098 res!1366890) b!3379125))

(assert (= (and b!3379125 res!1366891) b!3379122))

(assert (= (and b!3379122 res!1366894) b!3379109))

(assert (= (and b!3379109 res!1366902) b!3379108))

(assert (= (and b!3379108 res!1366903) b!3379113))

(assert (= (and b!3379113 res!1366893) b!3379111))

(assert (= (and b!3379111 res!1366889) b!3379104))

(assert (= (and b!3379104 res!1366897) b!3379124))

(assert (= (and b!3379124 (not res!1366892)) b!3379105))

(assert (= (and b!3379105 (not res!1366899)) b!3379114))

(assert (= (and b!3379114 (not res!1366884)) b!3379107))

(assert (= (and b!3379107 (not res!1366885)) b!3379106))

(assert (= (and b!3379106 (not res!1366887)) b!3379120))

(assert (= (and b!3379120 (not res!1366888)) b!3379097))

(assert (= (and b!3379097 res!1366900) b!3379112))

(assert (= (and b!3379112 res!1366886) b!3379102))

(assert (= (and b!3379097 res!1366895) b!3379118))

(assert (= (and b!3379118 res!1366901) b!3379110))

(assert (= (and b!3379097 c!575375) b!3379117))

(assert (= (and b!3379097 (not c!575375)) b!3379115))

(assert (= (and b!3379117 res!1366898) b!3379128))

(assert (= (and b!3379097 (not res!1366896)) b!3379099))

(assert (= b!3379116 b!3379126))

(assert (= b!3379123 b!3379116))

(assert (= (and start!314730 ((_ is Cons!36839) rules!2135)) b!3379123))

(assert (= b!3379119 b!3379103))

(assert (= b!3379096 b!3379119))

(assert (= start!314730 b!3379096))

(assert (= b!3379100 b!3379101))

(assert (= b!3379127 b!3379100))

(assert (= b!3379121 b!3379127))

(assert (= (and start!314730 ((_ is Cons!36838) tokens!494)) b!3379121))

(declare-fun m!3742931 () Bool)

(assert (=> b!3379111 m!3742931))

(declare-fun m!3742933 () Bool)

(assert (=> b!3379107 m!3742933))

(declare-fun m!3742935 () Bool)

(assert (=> b!3379107 m!3742935))

(declare-fun m!3742937 () Bool)

(assert (=> b!3379107 m!3742937))

(declare-fun m!3742939 () Bool)

(assert (=> b!3379127 m!3742939))

(declare-fun m!3742941 () Bool)

(assert (=> b!3379119 m!3742941))

(declare-fun m!3742943 () Bool)

(assert (=> b!3379119 m!3742943))

(declare-fun m!3742945 () Bool)

(assert (=> b!3379112 m!3742945))

(declare-fun m!3742947 () Bool)

(assert (=> b!3379112 m!3742947))

(declare-fun m!3742949 () Bool)

(assert (=> b!3379113 m!3742949))

(declare-fun m!3742951 () Bool)

(assert (=> b!3379109 m!3742951))

(declare-fun m!3742953 () Bool)

(assert (=> b!3379105 m!3742953))

(assert (=> b!3379105 m!3742953))

(declare-fun m!3742955 () Bool)

(assert (=> b!3379105 m!3742955))

(declare-fun m!3742957 () Bool)

(assert (=> b!3379114 m!3742957))

(declare-fun m!3742959 () Bool)

(assert (=> b!3379100 m!3742959))

(declare-fun m!3742961 () Bool)

(assert (=> b!3379100 m!3742961))

(declare-fun m!3742963 () Bool)

(assert (=> b!3379097 m!3742963))

(declare-fun m!3742965 () Bool)

(assert (=> b!3379097 m!3742965))

(declare-fun m!3742967 () Bool)

(assert (=> b!3379097 m!3742967))

(declare-fun m!3742969 () Bool)

(assert (=> b!3379097 m!3742969))

(declare-fun m!3742971 () Bool)

(assert (=> b!3379097 m!3742971))

(declare-fun m!3742973 () Bool)

(assert (=> b!3379097 m!3742973))

(declare-fun m!3742975 () Bool)

(assert (=> b!3379097 m!3742975))

(declare-fun m!3742977 () Bool)

(assert (=> b!3379097 m!3742977))

(declare-fun m!3742979 () Bool)

(assert (=> b!3379097 m!3742979))

(declare-fun m!3742981 () Bool)

(assert (=> b!3379097 m!3742981))

(declare-fun m!3742983 () Bool)

(assert (=> b!3379097 m!3742983))

(declare-fun m!3742985 () Bool)

(assert (=> b!3379097 m!3742985))

(declare-fun m!3742987 () Bool)

(assert (=> b!3379097 m!3742987))

(declare-fun m!3742989 () Bool)

(assert (=> b!3379097 m!3742989))

(declare-fun m!3742991 () Bool)

(assert (=> b!3379097 m!3742991))

(declare-fun m!3742993 () Bool)

(assert (=> b!3379097 m!3742993))

(assert (=> b!3379097 m!3742963))

(declare-fun m!3742995 () Bool)

(assert (=> b!3379097 m!3742995))

(assert (=> b!3379097 m!3742965))

(declare-fun m!3742997 () Bool)

(assert (=> b!3379118 m!3742997))

(declare-fun m!3742999 () Bool)

(assert (=> b!3379118 m!3742999))

(declare-fun m!3743001 () Bool)

(assert (=> b!3379096 m!3743001))

(declare-fun m!3743003 () Bool)

(assert (=> start!314730 m!3743003))

(declare-fun m!3743005 () Bool)

(assert (=> b!3379098 m!3743005))

(declare-fun m!3743007 () Bool)

(assert (=> b!3379125 m!3743007))

(declare-fun m!3743009 () Bool)

(assert (=> b!3379099 m!3743009))

(declare-fun m!3743011 () Bool)

(assert (=> b!3379099 m!3743011))

(assert (=> b!3379099 m!3743011))

(declare-fun m!3743013 () Bool)

(assert (=> b!3379099 m!3743013))

(declare-fun m!3743015 () Bool)

(assert (=> b!3379099 m!3743015))

(declare-fun m!3743017 () Bool)

(assert (=> b!3379124 m!3743017))

(declare-fun m!3743019 () Bool)

(assert (=> b!3379124 m!3743019))

(declare-fun m!3743021 () Bool)

(assert (=> b!3379124 m!3743021))

(declare-fun m!3743023 () Bool)

(assert (=> b!3379124 m!3743023))

(declare-fun m!3743025 () Bool)

(assert (=> b!3379124 m!3743025))

(declare-fun m!3743027 () Bool)

(assert (=> b!3379122 m!3743027))

(declare-fun m!3743029 () Bool)

(assert (=> b!3379122 m!3743029))

(declare-fun m!3743031 () Bool)

(assert (=> b!3379121 m!3743031))

(declare-fun m!3743033 () Bool)

(assert (=> b!3379117 m!3743033))

(declare-fun m!3743035 () Bool)

(assert (=> b!3379117 m!3743035))

(declare-fun m!3743037 () Bool)

(assert (=> b!3379120 m!3743037))

(declare-fun m!3743039 () Bool)

(assert (=> b!3379120 m!3743039))

(declare-fun m!3743041 () Bool)

(assert (=> b!3379120 m!3743041))

(declare-fun m!3743043 () Bool)

(assert (=> b!3379120 m!3743043))

(assert (=> b!3379120 m!3743037))

(declare-fun m!3743045 () Bool)

(assert (=> b!3379120 m!3743045))

(declare-fun m!3743047 () Bool)

(assert (=> b!3379116 m!3743047))

(declare-fun m!3743049 () Bool)

(assert (=> b!3379116 m!3743049))

(declare-fun m!3743051 () Bool)

(assert (=> b!3379106 m!3743051))

(check-sat (not b!3379118) (not b_next!89121) (not b!3379105) (not b!3379100) (not b!3379114) (not b!3379099) (not b!3379124) b_and!234713 (not b_next!89113) (not start!314730) (not b!3379123) (not b_next!89117) (not b!3379106) (not b!3379119) (not b!3379096) (not b_next!89115) (not b!3379117) b_and!234707 (not b!3379127) b_and!234705 (not b!3379125) b_and!234703 (not b!3379113) (not b_next!89123) (not b!3379120) (not b!3379107) (not b!3379121) (not b_next!89119) (not b!3379109) (not b!3379116) (not b!3379112) (not b!3379097) (not b!3379122) b_and!234709 (not b!3379111) (not b!3379098) b_and!234711)
(check-sat b_and!234705 b_and!234703 (not b_next!89123) (not b_next!89119) (not b_next!89121) b_and!234713 b_and!234709 (not b_next!89113) b_and!234711 (not b_next!89117) (not b_next!89115) b_and!234707)
(get-model)

(declare-fun b!3379248 () Bool)

(declare-fun e!2097628 () Bool)

(declare-fun derivativeStep!3001 (Regex!10127 C!20440) Regex!10127)

(declare-fun tail!5347 (List!36961) List!36961)

(assert (=> b!3379248 (= e!2097628 (matchR!4719 (derivativeStep!3001 (regex!5368 lt!1147243) (head!7215 lt!1147247)) (tail!5347 lt!1147247)))))

(declare-fun b!3379249 () Bool)

(declare-fun e!2097624 () Bool)

(assert (=> b!3379249 (= e!2097624 (not (= (head!7215 lt!1147247) (c!575376 (regex!5368 lt!1147243)))))))

(declare-fun b!3379250 () Bool)

(declare-fun e!2097623 () Bool)

(assert (=> b!3379250 (= e!2097623 (= (head!7215 lt!1147247) (c!575376 (regex!5368 lt!1147243))))))

(declare-fun b!3379251 () Bool)

(declare-fun res!1366980 () Bool)

(declare-fun e!2097625 () Bool)

(assert (=> b!3379251 (=> res!1366980 e!2097625)))

(assert (=> b!3379251 (= res!1366980 (not ((_ is ElementMatch!10127) (regex!5368 lt!1147243))))))

(declare-fun e!2097626 () Bool)

(assert (=> b!3379251 (= e!2097626 e!2097625)))

(declare-fun b!3379253 () Bool)

(declare-fun nullable!3448 (Regex!10127) Bool)

(assert (=> b!3379253 (= e!2097628 (nullable!3448 (regex!5368 lt!1147243)))))

(declare-fun b!3379254 () Bool)

(declare-fun res!1366979 () Bool)

(assert (=> b!3379254 (=> (not res!1366979) (not e!2097623))))

(declare-fun call!244442 () Bool)

(assert (=> b!3379254 (= res!1366979 (not call!244442))))

(declare-fun b!3379255 () Bool)

(declare-fun res!1366981 () Bool)

(assert (=> b!3379255 (=> (not res!1366981) (not e!2097623))))

(assert (=> b!3379255 (= res!1366981 (isEmpty!21065 (tail!5347 lt!1147247)))))

(declare-fun bm!244437 () Bool)

(assert (=> bm!244437 (= call!244442 (isEmpty!21065 lt!1147247))))

(declare-fun b!3379256 () Bool)

(declare-fun e!2097627 () Bool)

(assert (=> b!3379256 (= e!2097627 e!2097626)))

(declare-fun c!575412 () Bool)

(assert (=> b!3379256 (= c!575412 ((_ is EmptyLang!10127) (regex!5368 lt!1147243)))))

(declare-fun b!3379257 () Bool)

(declare-fun res!1366975 () Bool)

(assert (=> b!3379257 (=> res!1366975 e!2097625)))

(assert (=> b!3379257 (= res!1366975 e!2097623)))

(declare-fun res!1366974 () Bool)

(assert (=> b!3379257 (=> (not res!1366974) (not e!2097623))))

(declare-fun lt!1147275 () Bool)

(assert (=> b!3379257 (= res!1366974 lt!1147275)))

(declare-fun b!3379258 () Bool)

(declare-fun res!1366977 () Bool)

(assert (=> b!3379258 (=> res!1366977 e!2097624)))

(assert (=> b!3379258 (= res!1366977 (not (isEmpty!21065 (tail!5347 lt!1147247))))))

(declare-fun b!3379259 () Bool)

(declare-fun e!2097622 () Bool)

(assert (=> b!3379259 (= e!2097625 e!2097622)))

(declare-fun res!1366976 () Bool)

(assert (=> b!3379259 (=> (not res!1366976) (not e!2097622))))

(assert (=> b!3379259 (= res!1366976 (not lt!1147275))))

(declare-fun d!958649 () Bool)

(assert (=> d!958649 e!2097627))

(declare-fun c!575411 () Bool)

(assert (=> d!958649 (= c!575411 ((_ is EmptyExpr!10127) (regex!5368 lt!1147243)))))

(assert (=> d!958649 (= lt!1147275 e!2097628)))

(declare-fun c!575410 () Bool)

(assert (=> d!958649 (= c!575410 (isEmpty!21065 lt!1147247))))

(declare-fun validRegex!4604 (Regex!10127) Bool)

(assert (=> d!958649 (validRegex!4604 (regex!5368 lt!1147243))))

(assert (=> d!958649 (= (matchR!4719 (regex!5368 lt!1147243) lt!1147247) lt!1147275)))

(declare-fun b!3379252 () Bool)

(assert (=> b!3379252 (= e!2097626 (not lt!1147275))))

(declare-fun b!3379260 () Bool)

(assert (=> b!3379260 (= e!2097627 (= lt!1147275 call!244442))))

(declare-fun b!3379261 () Bool)

(assert (=> b!3379261 (= e!2097622 e!2097624)))

(declare-fun res!1366978 () Bool)

(assert (=> b!3379261 (=> res!1366978 e!2097624)))

(assert (=> b!3379261 (= res!1366978 call!244442)))

(assert (= (and d!958649 c!575410) b!3379253))

(assert (= (and d!958649 (not c!575410)) b!3379248))

(assert (= (and d!958649 c!575411) b!3379260))

(assert (= (and d!958649 (not c!575411)) b!3379256))

(assert (= (and b!3379256 c!575412) b!3379252))

(assert (= (and b!3379256 (not c!575412)) b!3379251))

(assert (= (and b!3379251 (not res!1366980)) b!3379257))

(assert (= (and b!3379257 res!1366974) b!3379254))

(assert (= (and b!3379254 res!1366979) b!3379255))

(assert (= (and b!3379255 res!1366981) b!3379250))

(assert (= (and b!3379257 (not res!1366975)) b!3379259))

(assert (= (and b!3379259 res!1366976) b!3379261))

(assert (= (and b!3379261 (not res!1366978)) b!3379258))

(assert (= (and b!3379258 (not res!1366977)) b!3379249))

(assert (= (or b!3379260 b!3379254 b!3379261) bm!244437))

(declare-fun m!3743107 () Bool)

(assert (=> b!3379250 m!3743107))

(declare-fun m!3743109 () Bool)

(assert (=> b!3379258 m!3743109))

(assert (=> b!3379258 m!3743109))

(declare-fun m!3743111 () Bool)

(assert (=> b!3379258 m!3743111))

(assert (=> b!3379248 m!3743107))

(assert (=> b!3379248 m!3743107))

(declare-fun m!3743113 () Bool)

(assert (=> b!3379248 m!3743113))

(assert (=> b!3379248 m!3743109))

(assert (=> b!3379248 m!3743113))

(assert (=> b!3379248 m!3743109))

(declare-fun m!3743115 () Bool)

(assert (=> b!3379248 m!3743115))

(declare-fun m!3743117 () Bool)

(assert (=> b!3379253 m!3743117))

(assert (=> b!3379255 m!3743109))

(assert (=> b!3379255 m!3743109))

(assert (=> b!3379255 m!3743111))

(declare-fun m!3743119 () Bool)

(assert (=> bm!244437 m!3743119))

(assert (=> d!958649 m!3743119))

(declare-fun m!3743121 () Bool)

(assert (=> d!958649 m!3743121))

(assert (=> b!3379249 m!3743107))

(assert (=> b!3379112 d!958649))

(declare-fun d!958665 () Bool)

(assert (=> d!958665 (= (get!11755 lt!1147239) (v!36451 lt!1147239))))

(assert (=> b!3379112 d!958665))

(declare-fun d!958667 () Bool)

(declare-fun res!1366986 () Bool)

(declare-fun e!2097633 () Bool)

(assert (=> d!958667 (=> res!1366986 e!2097633)))

(assert (=> d!958667 (= res!1366986 (not ((_ is Cons!36839) rules!2135)))))

(assert (=> d!958667 (= (sepAndNonSepRulesDisjointChars!1562 rules!2135 rules!2135) e!2097633)))

(declare-fun b!3379266 () Bool)

(declare-fun e!2097634 () Bool)

(assert (=> b!3379266 (= e!2097633 e!2097634)))

(declare-fun res!1366987 () Bool)

(assert (=> b!3379266 (=> (not res!1366987) (not e!2097634))))

(declare-fun ruleDisjointCharsFromAllFromOtherType!675 (Rule!10536 List!36963) Bool)

(assert (=> b!3379266 (= res!1366987 (ruleDisjointCharsFromAllFromOtherType!675 (h!42259 rules!2135) rules!2135))))

(declare-fun b!3379267 () Bool)

(assert (=> b!3379267 (= e!2097634 (sepAndNonSepRulesDisjointChars!1562 rules!2135 (t!263010 rules!2135)))))

(assert (= (and d!958667 (not res!1366986)) b!3379266))

(assert (= (and b!3379266 res!1366987) b!3379267))

(declare-fun m!3743123 () Bool)

(assert (=> b!3379266 m!3743123))

(declare-fun m!3743125 () Bool)

(assert (=> b!3379267 m!3743125))

(assert (=> b!3379111 d!958667))

(declare-fun d!958669 () Bool)

(declare-fun lt!1147311 () Bool)

(declare-fun e!2097676 () Bool)

(assert (=> d!958669 (= lt!1147311 e!2097676)))

(declare-fun res!1367025 () Bool)

(assert (=> d!958669 (=> (not res!1367025) (not e!2097676))))

(declare-fun list!13318 (BalanceConc!21838) List!36962)

(assert (=> d!958669 (= res!1367025 (= (list!13318 (_1!21341 (lex!2283 thiss!18206 rules!2135 (print!2022 thiss!18206 (singletonSeq!2464 separatorToken!241))))) (list!13318 (singletonSeq!2464 separatorToken!241))))))

(declare-fun e!2097677 () Bool)

(assert (=> d!958669 (= lt!1147311 e!2097677)))

(declare-fun res!1367024 () Bool)

(assert (=> d!958669 (=> (not res!1367024) (not e!2097677))))

(declare-fun lt!1147310 () tuple2!36414)

(declare-fun size!27877 (BalanceConc!21838) Int)

(assert (=> d!958669 (= res!1367024 (= (size!27877 (_1!21341 lt!1147310)) 1))))

(assert (=> d!958669 (= lt!1147310 (lex!2283 thiss!18206 rules!2135 (print!2022 thiss!18206 (singletonSeq!2464 separatorToken!241))))))

(assert (=> d!958669 (not (isEmpty!21066 rules!2135))))

(assert (=> d!958669 (= (rulesProduceIndividualToken!2449 thiss!18206 rules!2135 separatorToken!241) lt!1147311)))

(declare-fun b!3379345 () Bool)

(declare-fun res!1367023 () Bool)

(assert (=> b!3379345 (=> (not res!1367023) (not e!2097677))))

(declare-fun apply!8560 (BalanceConc!21838 Int) Token!10102)

(assert (=> b!3379345 (= res!1367023 (= (apply!8560 (_1!21341 lt!1147310) 0) separatorToken!241))))

(declare-fun b!3379346 () Bool)

(declare-fun isEmpty!21070 (BalanceConc!21836) Bool)

(assert (=> b!3379346 (= e!2097677 (isEmpty!21070 (_2!21341 lt!1147310)))))

(declare-fun b!3379347 () Bool)

(assert (=> b!3379347 (= e!2097676 (isEmpty!21070 (_2!21341 (lex!2283 thiss!18206 rules!2135 (print!2022 thiss!18206 (singletonSeq!2464 separatorToken!241))))))))

(assert (= (and d!958669 res!1367024) b!3379345))

(assert (= (and b!3379345 res!1367023) b!3379346))

(assert (= (and d!958669 res!1367025) b!3379347))

(assert (=> d!958669 m!3743005))

(declare-fun m!3743205 () Bool)

(assert (=> d!958669 m!3743205))

(declare-fun m!3743207 () Bool)

(assert (=> d!958669 m!3743207))

(declare-fun m!3743209 () Bool)

(assert (=> d!958669 m!3743209))

(assert (=> d!958669 m!3743207))

(assert (=> d!958669 m!3743207))

(declare-fun m!3743211 () Bool)

(assert (=> d!958669 m!3743211))

(assert (=> d!958669 m!3743211))

(declare-fun m!3743213 () Bool)

(assert (=> d!958669 m!3743213))

(declare-fun m!3743215 () Bool)

(assert (=> d!958669 m!3743215))

(declare-fun m!3743217 () Bool)

(assert (=> b!3379345 m!3743217))

(declare-fun m!3743219 () Bool)

(assert (=> b!3379346 m!3743219))

(assert (=> b!3379347 m!3743207))

(assert (=> b!3379347 m!3743207))

(assert (=> b!3379347 m!3743211))

(assert (=> b!3379347 m!3743211))

(assert (=> b!3379347 m!3743213))

(declare-fun m!3743221 () Bool)

(assert (=> b!3379347 m!3743221))

(assert (=> b!3379109 d!958669))

(declare-fun d!958689 () Bool)

(declare-fun lt!1147314 () Bool)

(declare-fun isEmpty!21071 (List!36962) Bool)

(assert (=> d!958689 (= lt!1147314 (isEmpty!21071 (list!13318 (_1!21341 (lex!2283 thiss!18206 rules!2135 lt!1147234)))))))

(declare-fun isEmpty!21072 (Conc!11112) Bool)

(assert (=> d!958689 (= lt!1147314 (isEmpty!21072 (c!575378 (_1!21341 (lex!2283 thiss!18206 rules!2135 lt!1147234)))))))

(assert (=> d!958689 (= (isEmpty!21067 (_1!21341 (lex!2283 thiss!18206 rules!2135 lt!1147234))) lt!1147314)))

(declare-fun bs!554690 () Bool)

(assert (= bs!554690 d!958689))

(declare-fun m!3743223 () Bool)

(assert (=> bs!554690 m!3743223))

(assert (=> bs!554690 m!3743223))

(declare-fun m!3743225 () Bool)

(assert (=> bs!554690 m!3743225))

(declare-fun m!3743227 () Bool)

(assert (=> bs!554690 m!3743227))

(assert (=> b!3379107 d!958689))

(declare-fun d!958691 () Bool)

(declare-fun e!2097697 () Bool)

(assert (=> d!958691 e!2097697))

(declare-fun res!1367046 () Bool)

(assert (=> d!958691 (=> (not res!1367046) (not e!2097697))))

(declare-fun e!2097699 () Bool)

(assert (=> d!958691 (= res!1367046 e!2097699)))

(declare-fun c!575435 () Bool)

(declare-fun lt!1147324 () tuple2!36414)

(assert (=> d!958691 (= c!575435 (> (size!27877 (_1!21341 lt!1147324)) 0))))

(declare-fun lexTailRecV2!1011 (LexerInterface!4957 List!36963 BalanceConc!21836 BalanceConc!21836 BalanceConc!21836 BalanceConc!21838) tuple2!36414)

(assert (=> d!958691 (= lt!1147324 (lexTailRecV2!1011 thiss!18206 rules!2135 lt!1147234 (BalanceConc!21837 Empty!11111) lt!1147234 (BalanceConc!21839 Empty!11112)))))

(assert (=> d!958691 (= (lex!2283 thiss!18206 rules!2135 lt!1147234) lt!1147324)))

(declare-fun b!3379372 () Bool)

(assert (=> b!3379372 (= e!2097699 (= (_2!21341 lt!1147324) lt!1147234))))

(declare-fun b!3379373 () Bool)

(declare-fun res!1367047 () Bool)

(assert (=> b!3379373 (=> (not res!1367047) (not e!2097697))))

(declare-datatypes ((tuple2!36418 0))(
  ( (tuple2!36419 (_1!21343 List!36962) (_2!21343 List!36961)) )
))
(declare-fun lexList!1401 (LexerInterface!4957 List!36963 List!36961) tuple2!36418)

(assert (=> b!3379373 (= res!1367047 (= (list!13318 (_1!21341 lt!1147324)) (_1!21343 (lexList!1401 thiss!18206 rules!2135 (list!13317 lt!1147234)))))))

(declare-fun b!3379374 () Bool)

(assert (=> b!3379374 (= e!2097697 (= (list!13317 (_2!21341 lt!1147324)) (_2!21343 (lexList!1401 thiss!18206 rules!2135 (list!13317 lt!1147234)))))))

(declare-fun b!3379375 () Bool)

(declare-fun e!2097698 () Bool)

(assert (=> b!3379375 (= e!2097699 e!2097698)))

(declare-fun res!1367048 () Bool)

(declare-fun size!27879 (BalanceConc!21836) Int)

(assert (=> b!3379375 (= res!1367048 (< (size!27879 (_2!21341 lt!1147324)) (size!27879 lt!1147234)))))

(assert (=> b!3379375 (=> (not res!1367048) (not e!2097698))))

(declare-fun b!3379376 () Bool)

(assert (=> b!3379376 (= e!2097698 (not (isEmpty!21067 (_1!21341 lt!1147324))))))

(assert (= (and d!958691 c!575435) b!3379375))

(assert (= (and d!958691 (not c!575435)) b!3379372))

(assert (= (and b!3379375 res!1367048) b!3379376))

(assert (= (and d!958691 res!1367046) b!3379373))

(assert (= (and b!3379373 res!1367047) b!3379374))

(declare-fun m!3743251 () Bool)

(assert (=> b!3379373 m!3743251))

(declare-fun m!3743253 () Bool)

(assert (=> b!3379373 m!3743253))

(assert (=> b!3379373 m!3743253))

(declare-fun m!3743255 () Bool)

(assert (=> b!3379373 m!3743255))

(declare-fun m!3743257 () Bool)

(assert (=> b!3379374 m!3743257))

(assert (=> b!3379374 m!3743253))

(assert (=> b!3379374 m!3743253))

(assert (=> b!3379374 m!3743255))

(declare-fun m!3743259 () Bool)

(assert (=> b!3379376 m!3743259))

(declare-fun m!3743261 () Bool)

(assert (=> b!3379375 m!3743261))

(declare-fun m!3743263 () Bool)

(assert (=> b!3379375 m!3743263))

(declare-fun m!3743265 () Bool)

(assert (=> d!958691 m!3743265))

(declare-fun m!3743267 () Bool)

(assert (=> d!958691 m!3743267))

(assert (=> b!3379107 d!958691))

(declare-fun d!958705 () Bool)

(declare-fun fromListB!1692 (List!36961) BalanceConc!21836)

(assert (=> d!958705 (= (seqFromList!3789 lt!1147247) (fromListB!1692 lt!1147247))))

(declare-fun bs!554693 () Bool)

(assert (= bs!554693 d!958705))

(declare-fun m!3743269 () Bool)

(assert (=> bs!554693 m!3743269))

(assert (=> b!3379107 d!958705))

(declare-fun d!958707 () Bool)

(assert (=> d!958707 (not (matchR!4719 (regex!5368 (rule!7916 separatorToken!241)) lt!1147254))))

(declare-fun lt!1147327 () Unit!51942)

(declare-fun choose!19540 (Regex!10127 List!36961 C!20440) Unit!51942)

(assert (=> d!958707 (= lt!1147327 (choose!19540 (regex!5368 (rule!7916 separatorToken!241)) lt!1147254 lt!1147252))))

(assert (=> d!958707 (validRegex!4604 (regex!5368 (rule!7916 separatorToken!241)))))

(assert (=> d!958707 (= (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!458 (regex!5368 (rule!7916 separatorToken!241)) lt!1147254 lt!1147252) lt!1147327)))

(declare-fun bs!554694 () Bool)

(assert (= bs!554694 d!958707))

(assert (=> bs!554694 m!3743035))

(declare-fun m!3743271 () Bool)

(assert (=> bs!554694 m!3743271))

(declare-fun m!3743273 () Bool)

(assert (=> bs!554694 m!3743273))

(assert (=> b!3379117 d!958707))

(declare-fun b!3379377 () Bool)

(declare-fun e!2097706 () Bool)

(assert (=> b!3379377 (= e!2097706 (matchR!4719 (derivativeStep!3001 (regex!5368 (rule!7916 separatorToken!241)) (head!7215 lt!1147254)) (tail!5347 lt!1147254)))))

(declare-fun b!3379378 () Bool)

(declare-fun e!2097702 () Bool)

(assert (=> b!3379378 (= e!2097702 (not (= (head!7215 lt!1147254) (c!575376 (regex!5368 (rule!7916 separatorToken!241))))))))

(declare-fun b!3379379 () Bool)

(declare-fun e!2097701 () Bool)

(assert (=> b!3379379 (= e!2097701 (= (head!7215 lt!1147254) (c!575376 (regex!5368 (rule!7916 separatorToken!241)))))))

(declare-fun b!3379380 () Bool)

(declare-fun res!1367055 () Bool)

(declare-fun e!2097703 () Bool)

(assert (=> b!3379380 (=> res!1367055 e!2097703)))

(assert (=> b!3379380 (= res!1367055 (not ((_ is ElementMatch!10127) (regex!5368 (rule!7916 separatorToken!241)))))))

(declare-fun e!2097704 () Bool)

(assert (=> b!3379380 (= e!2097704 e!2097703)))

(declare-fun b!3379382 () Bool)

(assert (=> b!3379382 (= e!2097706 (nullable!3448 (regex!5368 (rule!7916 separatorToken!241))))))

(declare-fun b!3379383 () Bool)

(declare-fun res!1367054 () Bool)

(assert (=> b!3379383 (=> (not res!1367054) (not e!2097701))))

(declare-fun call!244455 () Bool)

(assert (=> b!3379383 (= res!1367054 (not call!244455))))

(declare-fun b!3379384 () Bool)

(declare-fun res!1367056 () Bool)

(assert (=> b!3379384 (=> (not res!1367056) (not e!2097701))))

(assert (=> b!3379384 (= res!1367056 (isEmpty!21065 (tail!5347 lt!1147254)))))

(declare-fun bm!244450 () Bool)

(assert (=> bm!244450 (= call!244455 (isEmpty!21065 lt!1147254))))

(declare-fun b!3379385 () Bool)

(declare-fun e!2097705 () Bool)

(assert (=> b!3379385 (= e!2097705 e!2097704)))

(declare-fun c!575439 () Bool)

(assert (=> b!3379385 (= c!575439 ((_ is EmptyLang!10127) (regex!5368 (rule!7916 separatorToken!241))))))

(declare-fun b!3379386 () Bool)

(declare-fun res!1367050 () Bool)

(assert (=> b!3379386 (=> res!1367050 e!2097703)))

(assert (=> b!3379386 (= res!1367050 e!2097701)))

(declare-fun res!1367049 () Bool)

(assert (=> b!3379386 (=> (not res!1367049) (not e!2097701))))

(declare-fun lt!1147328 () Bool)

(assert (=> b!3379386 (= res!1367049 lt!1147328)))

(declare-fun b!3379387 () Bool)

(declare-fun res!1367052 () Bool)

(assert (=> b!3379387 (=> res!1367052 e!2097702)))

(assert (=> b!3379387 (= res!1367052 (not (isEmpty!21065 (tail!5347 lt!1147254))))))

(declare-fun b!3379388 () Bool)

(declare-fun e!2097700 () Bool)

(assert (=> b!3379388 (= e!2097703 e!2097700)))

(declare-fun res!1367051 () Bool)

(assert (=> b!3379388 (=> (not res!1367051) (not e!2097700))))

(assert (=> b!3379388 (= res!1367051 (not lt!1147328))))

(declare-fun d!958709 () Bool)

(assert (=> d!958709 e!2097705))

(declare-fun c!575438 () Bool)

(assert (=> d!958709 (= c!575438 ((_ is EmptyExpr!10127) (regex!5368 (rule!7916 separatorToken!241))))))

(assert (=> d!958709 (= lt!1147328 e!2097706)))

(declare-fun c!575437 () Bool)

(assert (=> d!958709 (= c!575437 (isEmpty!21065 lt!1147254))))

(assert (=> d!958709 (validRegex!4604 (regex!5368 (rule!7916 separatorToken!241)))))

(assert (=> d!958709 (= (matchR!4719 (regex!5368 (rule!7916 separatorToken!241)) lt!1147254) lt!1147328)))

(declare-fun b!3379381 () Bool)

(assert (=> b!3379381 (= e!2097704 (not lt!1147328))))

(declare-fun b!3379389 () Bool)

(assert (=> b!3379389 (= e!2097705 (= lt!1147328 call!244455))))

(declare-fun b!3379390 () Bool)

(assert (=> b!3379390 (= e!2097700 e!2097702)))

(declare-fun res!1367053 () Bool)

(assert (=> b!3379390 (=> res!1367053 e!2097702)))

(assert (=> b!3379390 (= res!1367053 call!244455)))

(assert (= (and d!958709 c!575437) b!3379382))

(assert (= (and d!958709 (not c!575437)) b!3379377))

(assert (= (and d!958709 c!575438) b!3379389))

(assert (= (and d!958709 (not c!575438)) b!3379385))

(assert (= (and b!3379385 c!575439) b!3379381))

(assert (= (and b!3379385 (not c!575439)) b!3379380))

(assert (= (and b!3379380 (not res!1367055)) b!3379386))

(assert (= (and b!3379386 res!1367049) b!3379383))

(assert (= (and b!3379383 res!1367054) b!3379384))

(assert (= (and b!3379384 res!1367056) b!3379379))

(assert (= (and b!3379386 (not res!1367050)) b!3379388))

(assert (= (and b!3379388 res!1367051) b!3379390))

(assert (= (and b!3379390 (not res!1367053)) b!3379387))

(assert (= (and b!3379387 (not res!1367052)) b!3379378))

(assert (= (or b!3379389 b!3379383 b!3379390) bm!244450))

(assert (=> b!3379379 m!3742993))

(declare-fun m!3743275 () Bool)

(assert (=> b!3379387 m!3743275))

(assert (=> b!3379387 m!3743275))

(declare-fun m!3743277 () Bool)

(assert (=> b!3379387 m!3743277))

(assert (=> b!3379377 m!3742993))

(assert (=> b!3379377 m!3742993))

(declare-fun m!3743279 () Bool)

(assert (=> b!3379377 m!3743279))

(assert (=> b!3379377 m!3743275))

(assert (=> b!3379377 m!3743279))

(assert (=> b!3379377 m!3743275))

(declare-fun m!3743281 () Bool)

(assert (=> b!3379377 m!3743281))

(declare-fun m!3743283 () Bool)

(assert (=> b!3379382 m!3743283))

(assert (=> b!3379384 m!3743275))

(assert (=> b!3379384 m!3743275))

(assert (=> b!3379384 m!3743277))

(declare-fun m!3743285 () Bool)

(assert (=> bm!244450 m!3743285))

(assert (=> d!958709 m!3743285))

(assert (=> d!958709 m!3743273))

(assert (=> b!3379378 m!3742993))

(assert (=> b!3379117 d!958709))

(declare-fun b!3379401 () Bool)

(declare-fun e!2097715 () Bool)

(declare-fun inv!17 (TokenValue!5598) Bool)

(assert (=> b!3379401 (= e!2097715 (inv!17 (value!173448 separatorToken!241)))))

(declare-fun b!3379402 () Bool)

(declare-fun e!2097713 () Bool)

(assert (=> b!3379402 (= e!2097713 e!2097715)))

(declare-fun c!575444 () Bool)

(assert (=> b!3379402 (= c!575444 ((_ is IntegerValue!16795) (value!173448 separatorToken!241)))))

(declare-fun d!958711 () Bool)

(declare-fun c!575445 () Bool)

(assert (=> d!958711 (= c!575445 ((_ is IntegerValue!16794) (value!173448 separatorToken!241)))))

(assert (=> d!958711 (= (inv!21 (value!173448 separatorToken!241)) e!2097713)))

(declare-fun b!3379403 () Bool)

(declare-fun res!1367059 () Bool)

(declare-fun e!2097714 () Bool)

(assert (=> b!3379403 (=> res!1367059 e!2097714)))

(assert (=> b!3379403 (= res!1367059 (not ((_ is IntegerValue!16796) (value!173448 separatorToken!241))))))

(assert (=> b!3379403 (= e!2097715 e!2097714)))

(declare-fun b!3379404 () Bool)

(declare-fun inv!15 (TokenValue!5598) Bool)

(assert (=> b!3379404 (= e!2097714 (inv!15 (value!173448 separatorToken!241)))))

(declare-fun b!3379405 () Bool)

(declare-fun inv!16 (TokenValue!5598) Bool)

(assert (=> b!3379405 (= e!2097713 (inv!16 (value!173448 separatorToken!241)))))

(assert (= (and d!958711 c!575445) b!3379405))

(assert (= (and d!958711 (not c!575445)) b!3379402))

(assert (= (and b!3379402 c!575444) b!3379401))

(assert (= (and b!3379402 (not c!575444)) b!3379403))

(assert (= (and b!3379403 (not res!1367059)) b!3379404))

(declare-fun m!3743287 () Bool)

(assert (=> b!3379401 m!3743287))

(declare-fun m!3743289 () Bool)

(assert (=> b!3379404 m!3743289))

(declare-fun m!3743291 () Bool)

(assert (=> b!3379405 m!3743291))

(assert (=> b!3379096 d!958711))

(declare-fun d!958713 () Bool)

(assert (=> d!958713 (= (inv!49903 (tag!5940 (h!42259 rules!2135))) (= (mod (str.len (value!173447 (tag!5940 (h!42259 rules!2135)))) 2) 0))))

(assert (=> b!3379116 d!958713))

(declare-fun d!958715 () Bool)

(declare-fun res!1367062 () Bool)

(declare-fun e!2097718 () Bool)

(assert (=> d!958715 (=> (not res!1367062) (not e!2097718))))

(declare-fun semiInverseModEq!2239 (Int Int) Bool)

(assert (=> d!958715 (= res!1367062 (semiInverseModEq!2239 (toChars!7411 (transformation!5368 (h!42259 rules!2135))) (toValue!7552 (transformation!5368 (h!42259 rules!2135)))))))

(assert (=> d!958715 (= (inv!49907 (transformation!5368 (h!42259 rules!2135))) e!2097718)))

(declare-fun b!3379408 () Bool)

(declare-fun equivClasses!2138 (Int Int) Bool)

(assert (=> b!3379408 (= e!2097718 (equivClasses!2138 (toChars!7411 (transformation!5368 (h!42259 rules!2135))) (toValue!7552 (transformation!5368 (h!42259 rules!2135)))))))

(assert (= (and d!958715 res!1367062) b!3379408))

(declare-fun m!3743293 () Bool)

(assert (=> d!958715 m!3743293))

(declare-fun m!3743295 () Bool)

(assert (=> b!3379408 m!3743295))

(assert (=> b!3379116 d!958715))

(declare-fun d!958717 () Bool)

(declare-fun lt!1147334 () Bool)

(declare-fun e!2097719 () Bool)

(assert (=> d!958717 (= lt!1147334 e!2097719)))

(declare-fun res!1367065 () Bool)

(assert (=> d!958717 (=> (not res!1367065) (not e!2097719))))

(assert (=> d!958717 (= res!1367065 (= (list!13318 (_1!21341 (lex!2283 thiss!18206 rules!2135 (print!2022 thiss!18206 (singletonSeq!2464 (h!42258 tokens!494)))))) (list!13318 (singletonSeq!2464 (h!42258 tokens!494)))))))

(declare-fun e!2097720 () Bool)

(assert (=> d!958717 (= lt!1147334 e!2097720)))

(declare-fun res!1367064 () Bool)

(assert (=> d!958717 (=> (not res!1367064) (not e!2097720))))

(declare-fun lt!1147333 () tuple2!36414)

(assert (=> d!958717 (= res!1367064 (= (size!27877 (_1!21341 lt!1147333)) 1))))

(assert (=> d!958717 (= lt!1147333 (lex!2283 thiss!18206 rules!2135 (print!2022 thiss!18206 (singletonSeq!2464 (h!42258 tokens!494)))))))

(assert (=> d!958717 (not (isEmpty!21066 rules!2135))))

(assert (=> d!958717 (= (rulesProduceIndividualToken!2449 thiss!18206 rules!2135 (h!42258 tokens!494)) lt!1147334)))

(declare-fun b!3379409 () Bool)

(declare-fun res!1367063 () Bool)

(assert (=> b!3379409 (=> (not res!1367063) (not e!2097720))))

(assert (=> b!3379409 (= res!1367063 (= (apply!8560 (_1!21341 lt!1147333) 0) (h!42258 tokens!494)))))

(declare-fun b!3379410 () Bool)

(assert (=> b!3379410 (= e!2097720 (isEmpty!21070 (_2!21341 lt!1147333)))))

(declare-fun b!3379411 () Bool)

(assert (=> b!3379411 (= e!2097719 (isEmpty!21070 (_2!21341 (lex!2283 thiss!18206 rules!2135 (print!2022 thiss!18206 (singletonSeq!2464 (h!42258 tokens!494)))))))))

(assert (= (and d!958717 res!1367064) b!3379409))

(assert (= (and b!3379409 res!1367063) b!3379410))

(assert (= (and d!958717 res!1367065) b!3379411))

(assert (=> d!958717 m!3743005))

(declare-fun m!3743297 () Bool)

(assert (=> d!958717 m!3743297))

(assert (=> d!958717 m!3743021))

(declare-fun m!3743299 () Bool)

(assert (=> d!958717 m!3743299))

(assert (=> d!958717 m!3743021))

(assert (=> d!958717 m!3743021))

(declare-fun m!3743301 () Bool)

(assert (=> d!958717 m!3743301))

(assert (=> d!958717 m!3743301))

(declare-fun m!3743303 () Bool)

(assert (=> d!958717 m!3743303))

(declare-fun m!3743305 () Bool)

(assert (=> d!958717 m!3743305))

(declare-fun m!3743307 () Bool)

(assert (=> b!3379409 m!3743307))

(declare-fun m!3743309 () Bool)

(assert (=> b!3379410 m!3743309))

(assert (=> b!3379411 m!3743021))

(assert (=> b!3379411 m!3743021))

(assert (=> b!3379411 m!3743301))

(assert (=> b!3379411 m!3743301))

(assert (=> b!3379411 m!3743303))

(declare-fun m!3743311 () Bool)

(assert (=> b!3379411 m!3743311))

(assert (=> b!3379114 d!958717))

(declare-fun d!958719 () Bool)

(declare-fun res!1367079 () Bool)

(declare-fun e!2097731 () Bool)

(assert (=> d!958719 (=> res!1367079 e!2097731)))

(assert (=> d!958719 (= res!1367079 ((_ is Nil!36838) tokens!494))))

(assert (=> d!958719 (= (forall!7747 tokens!494 lambda!120435) e!2097731)))

(declare-fun b!3379425 () Bool)

(declare-fun e!2097732 () Bool)

(assert (=> b!3379425 (= e!2097731 e!2097732)))

(declare-fun res!1367080 () Bool)

(assert (=> b!3379425 (=> (not res!1367080) (not e!2097732))))

(declare-fun dynLambda!15308 (Int Token!10102) Bool)

(assert (=> b!3379425 (= res!1367080 (dynLambda!15308 lambda!120435 (h!42258 tokens!494)))))

(declare-fun b!3379426 () Bool)

(assert (=> b!3379426 (= e!2097732 (forall!7747 (t!263009 tokens!494) lambda!120435))))

(assert (= (and d!958719 (not res!1367079)) b!3379425))

(assert (= (and b!3379425 res!1367080) b!3379426))

(declare-fun b_lambda!95871 () Bool)

(assert (=> (not b_lambda!95871) (not b!3379425)))

(declare-fun m!3743313 () Bool)

(assert (=> b!3379425 m!3743313))

(declare-fun m!3743315 () Bool)

(assert (=> b!3379426 m!3743315))

(assert (=> b!3379113 d!958719))

(declare-fun d!958721 () Bool)

(declare-fun res!1367093 () Bool)

(declare-fun e!2097742 () Bool)

(assert (=> d!958721 (=> (not res!1367093) (not e!2097742))))

(assert (=> d!958721 (= res!1367093 (not (isEmpty!21065 (originalCharacters!6082 separatorToken!241))))))

(assert (=> d!958721 (= (inv!49906 separatorToken!241) e!2097742)))

(declare-fun b!3379445 () Bool)

(declare-fun res!1367094 () Bool)

(assert (=> b!3379445 (=> (not res!1367094) (not e!2097742))))

(declare-fun dynLambda!15309 (Int TokenValue!5598) BalanceConc!21836)

(assert (=> b!3379445 (= res!1367094 (= (originalCharacters!6082 separatorToken!241) (list!13317 (dynLambda!15309 (toChars!7411 (transformation!5368 (rule!7916 separatorToken!241))) (value!173448 separatorToken!241)))))))

(declare-fun b!3379446 () Bool)

(assert (=> b!3379446 (= e!2097742 (= (size!27874 separatorToken!241) (size!27875 (originalCharacters!6082 separatorToken!241))))))

(assert (= (and d!958721 res!1367093) b!3379445))

(assert (= (and b!3379445 res!1367094) b!3379446))

(declare-fun b_lambda!95873 () Bool)

(assert (=> (not b_lambda!95873) (not b!3379445)))

(declare-fun t!263021 () Bool)

(declare-fun tb!179885 () Bool)

(assert (=> (and b!3379126 (= (toChars!7411 (transformation!5368 (h!42259 rules!2135))) (toChars!7411 (transformation!5368 (rule!7916 separatorToken!241)))) t!263021) tb!179885))

(declare-fun b!3379451 () Bool)

(declare-fun e!2097745 () Bool)

(declare-fun tp!1056631 () Bool)

(declare-fun inv!49910 (Conc!11111) Bool)

(assert (=> b!3379451 (= e!2097745 (and (inv!49910 (c!575377 (dynLambda!15309 (toChars!7411 (transformation!5368 (rule!7916 separatorToken!241))) (value!173448 separatorToken!241)))) tp!1056631))))

(declare-fun result!223292 () Bool)

(declare-fun inv!49911 (BalanceConc!21836) Bool)

(assert (=> tb!179885 (= result!223292 (and (inv!49911 (dynLambda!15309 (toChars!7411 (transformation!5368 (rule!7916 separatorToken!241))) (value!173448 separatorToken!241))) e!2097745))))

(assert (= tb!179885 b!3379451))

(declare-fun m!3743341 () Bool)

(assert (=> b!3379451 m!3743341))

(declare-fun m!3743343 () Bool)

(assert (=> tb!179885 m!3743343))

(assert (=> b!3379445 t!263021))

(declare-fun b_and!234721 () Bool)

(assert (= b_and!234705 (and (=> t!263021 result!223292) b_and!234721)))

(declare-fun t!263023 () Bool)

(declare-fun tb!179887 () Bool)

(assert (=> (and b!3379101 (= (toChars!7411 (transformation!5368 (rule!7916 (h!42258 tokens!494)))) (toChars!7411 (transformation!5368 (rule!7916 separatorToken!241)))) t!263023) tb!179887))

(declare-fun result!223296 () Bool)

(assert (= result!223296 result!223292))

(assert (=> b!3379445 t!263023))

(declare-fun b_and!234723 () Bool)

(assert (= b_and!234709 (and (=> t!263023 result!223296) b_and!234723)))

(declare-fun t!263025 () Bool)

(declare-fun tb!179889 () Bool)

(assert (=> (and b!3379103 (= (toChars!7411 (transformation!5368 (rule!7916 separatorToken!241))) (toChars!7411 (transformation!5368 (rule!7916 separatorToken!241)))) t!263025) tb!179889))

(declare-fun result!223298 () Bool)

(assert (= result!223298 result!223292))

(assert (=> b!3379445 t!263025))

(declare-fun b_and!234725 () Bool)

(assert (= b_and!234713 (and (=> t!263025 result!223298) b_and!234725)))

(declare-fun m!3743345 () Bool)

(assert (=> d!958721 m!3743345))

(declare-fun m!3743347 () Bool)

(assert (=> b!3379445 m!3743347))

(assert (=> b!3379445 m!3743347))

(declare-fun m!3743349 () Bool)

(assert (=> b!3379445 m!3743349))

(declare-fun m!3743351 () Bool)

(assert (=> b!3379446 m!3743351))

(assert (=> start!314730 d!958721))

(declare-fun bs!554698 () Bool)

(declare-fun d!958729 () Bool)

(assert (= bs!554698 (and d!958729 b!3379113)))

(declare-fun lambda!120440 () Int)

(assert (=> bs!554698 (not (= lambda!120440 lambda!120435))))

(declare-fun b!3379500 () Bool)

(declare-fun e!2097779 () Bool)

(assert (=> b!3379500 (= e!2097779 true)))

(declare-fun b!3379499 () Bool)

(declare-fun e!2097778 () Bool)

(assert (=> b!3379499 (= e!2097778 e!2097779)))

(declare-fun b!3379498 () Bool)

(declare-fun e!2097777 () Bool)

(assert (=> b!3379498 (= e!2097777 e!2097778)))

(assert (=> d!958729 e!2097777))

(assert (= b!3379499 b!3379500))

(assert (= b!3379498 b!3379499))

(assert (= (and d!958729 ((_ is Cons!36839) rules!2135)) b!3379498))

(declare-fun order!19385 () Int)

(declare-fun order!19383 () Int)

(declare-fun dynLambda!15310 (Int Int) Int)

(declare-fun dynLambda!15311 (Int Int) Int)

(assert (=> b!3379500 (< (dynLambda!15310 order!19383 (toValue!7552 (transformation!5368 (h!42259 rules!2135)))) (dynLambda!15311 order!19385 lambda!120440))))

(declare-fun order!19387 () Int)

(declare-fun dynLambda!15312 (Int Int) Int)

(assert (=> b!3379500 (< (dynLambda!15312 order!19387 (toChars!7411 (transformation!5368 (h!42259 rules!2135)))) (dynLambda!15311 order!19385 lambda!120440))))

(assert (=> d!958729 true))

(declare-fun e!2097770 () Bool)

(assert (=> d!958729 e!2097770))

(declare-fun res!1367117 () Bool)

(assert (=> d!958729 (=> (not res!1367117) (not e!2097770))))

(declare-fun lt!1147351 () Bool)

(assert (=> d!958729 (= res!1367117 (= lt!1147351 (forall!7747 (list!13318 lt!1147246) lambda!120440)))))

(declare-fun forall!7748 (BalanceConc!21838 Int) Bool)

(assert (=> d!958729 (= lt!1147351 (forall!7748 lt!1147246 lambda!120440))))

(assert (=> d!958729 (not (isEmpty!21066 rules!2135))))

(assert (=> d!958729 (= (rulesProduceEachTokenIndividually!1408 thiss!18206 rules!2135 lt!1147246) lt!1147351)))

(declare-fun b!3379489 () Bool)

(declare-fun rulesProduceEachTokenIndividuallyList!1810 (LexerInterface!4957 List!36963 List!36962) Bool)

(assert (=> b!3379489 (= e!2097770 (= lt!1147351 (rulesProduceEachTokenIndividuallyList!1810 thiss!18206 rules!2135 (list!13318 lt!1147246))))))

(assert (= (and d!958729 res!1367117) b!3379489))

(declare-fun m!3743409 () Bool)

(assert (=> d!958729 m!3743409))

(assert (=> d!958729 m!3743409))

(declare-fun m!3743411 () Bool)

(assert (=> d!958729 m!3743411))

(declare-fun m!3743413 () Bool)

(assert (=> d!958729 m!3743413))

(assert (=> d!958729 m!3743005))

(assert (=> b!3379489 m!3743409))

(assert (=> b!3379489 m!3743409))

(declare-fun m!3743415 () Bool)

(assert (=> b!3379489 m!3743415))

(assert (=> b!3379122 d!958729))

(declare-fun d!958751 () Bool)

(declare-fun fromListB!1694 (List!36962) BalanceConc!21838)

(assert (=> d!958751 (= (seqFromList!3790 tokens!494) (fromListB!1694 tokens!494))))

(declare-fun bs!554699 () Bool)

(assert (= bs!554699 d!958751))

(declare-fun m!3743417 () Bool)

(assert (=> bs!554699 m!3743417))

(assert (=> b!3379122 d!958751))

(declare-fun d!958753 () Bool)

(declare-fun res!1367118 () Bool)

(declare-fun e!2097780 () Bool)

(assert (=> d!958753 (=> (not res!1367118) (not e!2097780))))

(assert (=> d!958753 (= res!1367118 (not (isEmpty!21065 (originalCharacters!6082 (h!42258 tokens!494)))))))

(assert (=> d!958753 (= (inv!49906 (h!42258 tokens!494)) e!2097780)))

(declare-fun b!3379503 () Bool)

(declare-fun res!1367119 () Bool)

(assert (=> b!3379503 (=> (not res!1367119) (not e!2097780))))

(assert (=> b!3379503 (= res!1367119 (= (originalCharacters!6082 (h!42258 tokens!494)) (list!13317 (dynLambda!15309 (toChars!7411 (transformation!5368 (rule!7916 (h!42258 tokens!494)))) (value!173448 (h!42258 tokens!494))))))))

(declare-fun b!3379504 () Bool)

(assert (=> b!3379504 (= e!2097780 (= (size!27874 (h!42258 tokens!494)) (size!27875 (originalCharacters!6082 (h!42258 tokens!494)))))))

(assert (= (and d!958753 res!1367118) b!3379503))

(assert (= (and b!3379503 res!1367119) b!3379504))

(declare-fun b_lambda!95879 () Bool)

(assert (=> (not b_lambda!95879) (not b!3379503)))

(declare-fun t!263039 () Bool)

(declare-fun tb!179897 () Bool)

(assert (=> (and b!3379126 (= (toChars!7411 (transformation!5368 (h!42259 rules!2135))) (toChars!7411 (transformation!5368 (rule!7916 (h!42258 tokens!494))))) t!263039) tb!179897))

(declare-fun b!3379505 () Bool)

(declare-fun e!2097781 () Bool)

(declare-fun tp!1056635 () Bool)

(assert (=> b!3379505 (= e!2097781 (and (inv!49910 (c!575377 (dynLambda!15309 (toChars!7411 (transformation!5368 (rule!7916 (h!42258 tokens!494)))) (value!173448 (h!42258 tokens!494))))) tp!1056635))))

(declare-fun result!223308 () Bool)

(assert (=> tb!179897 (= result!223308 (and (inv!49911 (dynLambda!15309 (toChars!7411 (transformation!5368 (rule!7916 (h!42258 tokens!494)))) (value!173448 (h!42258 tokens!494)))) e!2097781))))

(assert (= tb!179897 b!3379505))

(declare-fun m!3743419 () Bool)

(assert (=> b!3379505 m!3743419))

(declare-fun m!3743421 () Bool)

(assert (=> tb!179897 m!3743421))

(assert (=> b!3379503 t!263039))

(declare-fun b_and!234739 () Bool)

(assert (= b_and!234721 (and (=> t!263039 result!223308) b_and!234739)))

(declare-fun t!263041 () Bool)

(declare-fun tb!179899 () Bool)

(assert (=> (and b!3379101 (= (toChars!7411 (transformation!5368 (rule!7916 (h!42258 tokens!494)))) (toChars!7411 (transformation!5368 (rule!7916 (h!42258 tokens!494))))) t!263041) tb!179899))

(declare-fun result!223310 () Bool)

(assert (= result!223310 result!223308))

(assert (=> b!3379503 t!263041))

(declare-fun b_and!234741 () Bool)

(assert (= b_and!234723 (and (=> t!263041 result!223310) b_and!234741)))

(declare-fun t!263043 () Bool)

(declare-fun tb!179901 () Bool)

(assert (=> (and b!3379103 (= (toChars!7411 (transformation!5368 (rule!7916 separatorToken!241))) (toChars!7411 (transformation!5368 (rule!7916 (h!42258 tokens!494))))) t!263043) tb!179901))

(declare-fun result!223312 () Bool)

(assert (= result!223312 result!223308))

(assert (=> b!3379503 t!263043))

(declare-fun b_and!234743 () Bool)

(assert (= b_and!234725 (and (=> t!263043 result!223312) b_and!234743)))

(declare-fun m!3743423 () Bool)

(assert (=> d!958753 m!3743423))

(declare-fun m!3743425 () Bool)

(assert (=> b!3379503 m!3743425))

(assert (=> b!3379503 m!3743425))

(declare-fun m!3743427 () Bool)

(assert (=> b!3379503 m!3743427))

(declare-fun m!3743429 () Bool)

(assert (=> b!3379504 m!3743429))

(assert (=> b!3379121 d!958753))

(declare-fun d!958755 () Bool)

(assert (=> d!958755 (= (inv!49903 (tag!5940 (rule!7916 (h!42258 tokens!494)))) (= (mod (str.len (value!173447 (tag!5940 (rule!7916 (h!42258 tokens!494))))) 2) 0))))

(assert (=> b!3379100 d!958755))

(declare-fun d!958757 () Bool)

(declare-fun res!1367120 () Bool)

(declare-fun e!2097782 () Bool)

(assert (=> d!958757 (=> (not res!1367120) (not e!2097782))))

(assert (=> d!958757 (= res!1367120 (semiInverseModEq!2239 (toChars!7411 (transformation!5368 (rule!7916 (h!42258 tokens!494)))) (toValue!7552 (transformation!5368 (rule!7916 (h!42258 tokens!494))))))))

(assert (=> d!958757 (= (inv!49907 (transformation!5368 (rule!7916 (h!42258 tokens!494)))) e!2097782)))

(declare-fun b!3379506 () Bool)

(assert (=> b!3379506 (= e!2097782 (equivClasses!2138 (toChars!7411 (transformation!5368 (rule!7916 (h!42258 tokens!494)))) (toValue!7552 (transformation!5368 (rule!7916 (h!42258 tokens!494))))))))

(assert (= (and d!958757 res!1367120) b!3379506))

(declare-fun m!3743431 () Bool)

(assert (=> d!958757 m!3743431))

(declare-fun m!3743433 () Bool)

(assert (=> b!3379506 m!3743433))

(assert (=> b!3379100 d!958757))

(declare-fun d!958759 () Bool)

(declare-fun lt!1147354 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!5071 (List!36963) (InoxSet Rule!10536))

(assert (=> d!958759 (= lt!1147354 (select (content!5071 rules!2135) (rule!7916 (h!42258 tokens!494))))))

(declare-fun e!2097787 () Bool)

(assert (=> d!958759 (= lt!1147354 e!2097787)))

(declare-fun res!1367126 () Bool)

(assert (=> d!958759 (=> (not res!1367126) (not e!2097787))))

(assert (=> d!958759 (= res!1367126 ((_ is Cons!36839) rules!2135))))

(assert (=> d!958759 (= (contains!6727 rules!2135 (rule!7916 (h!42258 tokens!494))) lt!1147354)))

(declare-fun b!3379511 () Bool)

(declare-fun e!2097788 () Bool)

(assert (=> b!3379511 (= e!2097787 e!2097788)))

(declare-fun res!1367125 () Bool)

(assert (=> b!3379511 (=> res!1367125 e!2097788)))

(assert (=> b!3379511 (= res!1367125 (= (h!42259 rules!2135) (rule!7916 (h!42258 tokens!494))))))

(declare-fun b!3379512 () Bool)

(assert (=> b!3379512 (= e!2097788 (contains!6727 (t!263010 rules!2135) (rule!7916 (h!42258 tokens!494))))))

(assert (= (and d!958759 res!1367126) b!3379511))

(assert (= (and b!3379511 (not res!1367125)) b!3379512))

(declare-fun m!3743435 () Bool)

(assert (=> d!958759 m!3743435))

(declare-fun m!3743437 () Bool)

(assert (=> d!958759 m!3743437))

(declare-fun m!3743439 () Bool)

(assert (=> b!3379512 m!3743439))

(assert (=> b!3379099 d!958759))

(declare-fun d!958761 () Bool)

(declare-fun lt!1147357 () Bool)

(declare-fun content!5072 (List!36961) (InoxSet C!20440))

(assert (=> d!958761 (= lt!1147357 (select (content!5072 (usedCharacters!624 (regex!5368 (rule!7916 (h!42258 tokens!494))))) lt!1147252))))

(declare-fun e!2097793 () Bool)

(assert (=> d!958761 (= lt!1147357 e!2097793)))

(declare-fun res!1367132 () Bool)

(assert (=> d!958761 (=> (not res!1367132) (not e!2097793))))

(assert (=> d!958761 (= res!1367132 ((_ is Cons!36837) (usedCharacters!624 (regex!5368 (rule!7916 (h!42258 tokens!494))))))))

(assert (=> d!958761 (= (contains!6726 (usedCharacters!624 (regex!5368 (rule!7916 (h!42258 tokens!494)))) lt!1147252) lt!1147357)))

(declare-fun b!3379517 () Bool)

(declare-fun e!2097794 () Bool)

(assert (=> b!3379517 (= e!2097793 e!2097794)))

(declare-fun res!1367131 () Bool)

(assert (=> b!3379517 (=> res!1367131 e!2097794)))

(assert (=> b!3379517 (= res!1367131 (= (h!42257 (usedCharacters!624 (regex!5368 (rule!7916 (h!42258 tokens!494))))) lt!1147252))))

(declare-fun b!3379518 () Bool)

(assert (=> b!3379518 (= e!2097794 (contains!6726 (t!263008 (usedCharacters!624 (regex!5368 (rule!7916 (h!42258 tokens!494))))) lt!1147252))))

(assert (= (and d!958761 res!1367132) b!3379517))

(assert (= (and b!3379517 (not res!1367131)) b!3379518))

(assert (=> d!958761 m!3743011))

(declare-fun m!3743441 () Bool)

(assert (=> d!958761 m!3743441))

(declare-fun m!3743443 () Bool)

(assert (=> d!958761 m!3743443))

(declare-fun m!3743445 () Bool)

(assert (=> b!3379518 m!3743445))

(assert (=> b!3379099 d!958761))

(declare-fun b!3379535 () Bool)

(declare-fun e!2097806 () List!36961)

(assert (=> b!3379535 (= e!2097806 (Cons!36837 (c!575376 (regex!5368 (rule!7916 (h!42258 tokens!494)))) Nil!36837))))

(declare-fun b!3379536 () Bool)

(declare-fun e!2097805 () List!36961)

(assert (=> b!3379536 (= e!2097805 e!2097806)))

(declare-fun c!575463 () Bool)

(assert (=> b!3379536 (= c!575463 ((_ is ElementMatch!10127) (regex!5368 (rule!7916 (h!42258 tokens!494)))))))

(declare-fun b!3379537 () Bool)

(declare-fun e!2097804 () List!36961)

(declare-fun call!244467 () List!36961)

(assert (=> b!3379537 (= e!2097804 call!244467)))

(declare-fun call!244465 () List!36961)

(declare-fun call!244468 () List!36961)

(declare-fun bm!244460 () Bool)

(declare-fun c!575464 () Bool)

(declare-fun call!244466 () List!36961)

(assert (=> bm!244460 (= call!244466 (++!8999 (ite c!575464 call!244465 call!244468) (ite c!575464 call!244468 call!244465)))))

(declare-fun b!3379538 () Bool)

(declare-fun c!575462 () Bool)

(assert (=> b!3379538 (= c!575462 ((_ is Star!10127) (regex!5368 (rule!7916 (h!42258 tokens!494)))))))

(assert (=> b!3379538 (= e!2097806 e!2097804)))

(declare-fun b!3379539 () Bool)

(declare-fun e!2097803 () List!36961)

(assert (=> b!3379539 (= e!2097804 e!2097803)))

(assert (=> b!3379539 (= c!575464 ((_ is Union!10127) (regex!5368 (rule!7916 (h!42258 tokens!494)))))))

(declare-fun b!3379540 () Bool)

(assert (=> b!3379540 (= e!2097803 call!244466)))

(declare-fun b!3379541 () Bool)

(assert (=> b!3379541 (= e!2097805 Nil!36837)))

(declare-fun d!958763 () Bool)

(declare-fun c!575465 () Bool)

(assert (=> d!958763 (= c!575465 (or ((_ is EmptyExpr!10127) (regex!5368 (rule!7916 (h!42258 tokens!494)))) ((_ is EmptyLang!10127) (regex!5368 (rule!7916 (h!42258 tokens!494))))))))

(assert (=> d!958763 (= (usedCharacters!624 (regex!5368 (rule!7916 (h!42258 tokens!494)))) e!2097805)))

(declare-fun bm!244461 () Bool)

(assert (=> bm!244461 (= call!244465 (usedCharacters!624 (ite c!575464 (regOne!20767 (regex!5368 (rule!7916 (h!42258 tokens!494)))) (regTwo!20766 (regex!5368 (rule!7916 (h!42258 tokens!494)))))))))

(declare-fun bm!244462 () Bool)

(assert (=> bm!244462 (= call!244467 (usedCharacters!624 (ite c!575462 (reg!10456 (regex!5368 (rule!7916 (h!42258 tokens!494)))) (ite c!575464 (regTwo!20767 (regex!5368 (rule!7916 (h!42258 tokens!494)))) (regOne!20766 (regex!5368 (rule!7916 (h!42258 tokens!494))))))))))

(declare-fun bm!244463 () Bool)

(assert (=> bm!244463 (= call!244468 call!244467)))

(declare-fun b!3379542 () Bool)

(assert (=> b!3379542 (= e!2097803 call!244466)))

(assert (= (and d!958763 c!575465) b!3379541))

(assert (= (and d!958763 (not c!575465)) b!3379536))

(assert (= (and b!3379536 c!575463) b!3379535))

(assert (= (and b!3379536 (not c!575463)) b!3379538))

(assert (= (and b!3379538 c!575462) b!3379537))

(assert (= (and b!3379538 (not c!575462)) b!3379539))

(assert (= (and b!3379539 c!575464) b!3379542))

(assert (= (and b!3379539 (not c!575464)) b!3379540))

(assert (= (or b!3379542 b!3379540) bm!244463))

(assert (= (or b!3379542 b!3379540) bm!244461))

(assert (= (or b!3379542 b!3379540) bm!244460))

(assert (= (or b!3379537 bm!244463) bm!244462))

(declare-fun m!3743447 () Bool)

(assert (=> bm!244460 m!3743447))

(declare-fun m!3743449 () Bool)

(assert (=> bm!244461 m!3743449))

(declare-fun m!3743451 () Bool)

(assert (=> bm!244462 m!3743451))

(assert (=> b!3379099 d!958763))

(declare-fun d!958765 () Bool)

(assert (=> d!958765 (not (contains!6726 (usedCharacters!624 (regex!5368 (rule!7916 (h!42258 tokens!494)))) lt!1147252))))

(declare-fun lt!1147360 () Unit!51942)

(declare-fun choose!19542 (LexerInterface!4957 List!36963 List!36963 Rule!10536 Rule!10536 C!20440) Unit!51942)

(assert (=> d!958765 (= lt!1147360 (choose!19542 thiss!18206 rules!2135 rules!2135 (rule!7916 (h!42258 tokens!494)) (rule!7916 separatorToken!241) lt!1147252))))

(assert (=> d!958765 (rulesInvariant!4354 thiss!18206 rules!2135)))

(assert (=> d!958765 (= (lemmaNonSepRuleNotContainsCharContainedInASepRule!208 thiss!18206 rules!2135 rules!2135 (rule!7916 (h!42258 tokens!494)) (rule!7916 separatorToken!241) lt!1147252) lt!1147360)))

(declare-fun bs!554700 () Bool)

(assert (= bs!554700 d!958765))

(assert (=> bs!554700 m!3743011))

(assert (=> bs!554700 m!3743011))

(assert (=> bs!554700 m!3743013))

(declare-fun m!3743453 () Bool)

(assert (=> bs!554700 m!3743453))

(assert (=> bs!554700 m!3743007))

(assert (=> b!3379099 d!958765))

(declare-fun d!958767 () Bool)

(declare-fun list!13321 (Conc!11111) List!36961)

(assert (=> d!958767 (= (list!13317 lt!1147249) (list!13321 (c!575377 lt!1147249)))))

(declare-fun bs!554701 () Bool)

(assert (= bs!554701 d!958767))

(declare-fun m!3743455 () Bool)

(assert (=> bs!554701 m!3743455))

(assert (=> b!3379120 d!958767))

(declare-fun b!3379553 () Bool)

(declare-fun res!1367137 () Bool)

(declare-fun e!2097811 () Bool)

(assert (=> b!3379553 (=> (not res!1367137) (not e!2097811))))

(declare-fun lt!1147363 () List!36961)

(assert (=> b!3379553 (= res!1367137 (= (size!27875 lt!1147363) (+ (size!27875 lt!1147247) (size!27875 lt!1147254))))))

(declare-fun b!3379554 () Bool)

(assert (=> b!3379554 (= e!2097811 (or (not (= lt!1147254 Nil!36837)) (= lt!1147363 lt!1147247)))))

(declare-fun b!3379552 () Bool)

(declare-fun e!2097812 () List!36961)

(assert (=> b!3379552 (= e!2097812 (Cons!36837 (h!42257 lt!1147247) (++!8999 (t!263008 lt!1147247) lt!1147254)))))

(declare-fun d!958769 () Bool)

(assert (=> d!958769 e!2097811))

(declare-fun res!1367138 () Bool)

(assert (=> d!958769 (=> (not res!1367138) (not e!2097811))))

(assert (=> d!958769 (= res!1367138 (= (content!5072 lt!1147363) ((_ map or) (content!5072 lt!1147247) (content!5072 lt!1147254))))))

(assert (=> d!958769 (= lt!1147363 e!2097812)))

(declare-fun c!575469 () Bool)

(assert (=> d!958769 (= c!575469 ((_ is Nil!36837) lt!1147247))))

(assert (=> d!958769 (= (++!8999 lt!1147247 lt!1147254) lt!1147363)))

(declare-fun b!3379551 () Bool)

(assert (=> b!3379551 (= e!2097812 lt!1147254)))

(assert (= (and d!958769 c!575469) b!3379551))

(assert (= (and d!958769 (not c!575469)) b!3379552))

(assert (= (and d!958769 res!1367138) b!3379553))

(assert (= (and b!3379553 res!1367137) b!3379554))

(declare-fun m!3743457 () Bool)

(assert (=> b!3379553 m!3743457))

(assert (=> b!3379553 m!3742987))

(declare-fun m!3743459 () Bool)

(assert (=> b!3379553 m!3743459))

(declare-fun m!3743461 () Bool)

(assert (=> b!3379552 m!3743461))

(declare-fun m!3743463 () Bool)

(assert (=> d!958769 m!3743463))

(declare-fun m!3743465 () Bool)

(assert (=> d!958769 m!3743465))

(declare-fun m!3743467 () Bool)

(assert (=> d!958769 m!3743467))

(assert (=> b!3379120 d!958769))

(declare-fun d!958771 () Bool)

(declare-fun lt!1147366 () BalanceConc!21836)

(assert (=> d!958771 (= (list!13317 lt!1147366) (originalCharacters!6082 separatorToken!241))))

(assert (=> d!958771 (= lt!1147366 (dynLambda!15309 (toChars!7411 (transformation!5368 (rule!7916 separatorToken!241))) (value!173448 separatorToken!241)))))

(assert (=> d!958771 (= (charsOf!3382 separatorToken!241) lt!1147366)))

(declare-fun b_lambda!95881 () Bool)

(assert (=> (not b_lambda!95881) (not d!958771)))

(assert (=> d!958771 t!263021))

(declare-fun b_and!234745 () Bool)

(assert (= b_and!234739 (and (=> t!263021 result!223292) b_and!234745)))

(assert (=> d!958771 t!263023))

(declare-fun b_and!234747 () Bool)

(assert (= b_and!234741 (and (=> t!263023 result!223296) b_and!234747)))

(assert (=> d!958771 t!263025))

(declare-fun b_and!234749 () Bool)

(assert (= b_and!234743 (and (=> t!263025 result!223298) b_and!234749)))

(declare-fun m!3743469 () Bool)

(assert (=> d!958771 m!3743469))

(assert (=> d!958771 m!3743347))

(assert (=> b!3379120 d!958771))

(declare-fun d!958773 () Bool)

(assert (=> d!958773 (= (list!13317 (charsOf!3382 separatorToken!241)) (list!13321 (c!575377 (charsOf!3382 separatorToken!241))))))

(declare-fun bs!554702 () Bool)

(assert (= bs!554702 d!958773))

(declare-fun m!3743471 () Bool)

(assert (=> bs!554702 m!3743471))

(assert (=> b!3379120 d!958773))

(declare-fun lt!1147369 () BalanceConc!21836)

(declare-fun d!958775 () Bool)

(declare-fun printWithSeparatorTokenList!252 (LexerInterface!4957 List!36962 Token!10102) List!36961)

(assert (=> d!958775 (= (list!13317 lt!1147369) (printWithSeparatorTokenList!252 thiss!18206 (list!13318 lt!1147246) separatorToken!241))))

(declare-fun printWithSeparatorTokenTailRec!68 (LexerInterface!4957 BalanceConc!21838 Token!10102 Int BalanceConc!21836) BalanceConc!21836)

(assert (=> d!958775 (= lt!1147369 (printWithSeparatorTokenTailRec!68 thiss!18206 lt!1147246 separatorToken!241 0 (BalanceConc!21837 Empty!11111)))))

(assert (=> d!958775 (isSeparator!5368 (rule!7916 separatorToken!241))))

(assert (=> d!958775 (= (printWithSeparatorToken!148 thiss!18206 lt!1147246 separatorToken!241) lt!1147369)))

(declare-fun bs!554703 () Bool)

(assert (= bs!554703 d!958775))

(declare-fun m!3743473 () Bool)

(assert (=> bs!554703 m!3743473))

(assert (=> bs!554703 m!3743409))

(assert (=> bs!554703 m!3743409))

(declare-fun m!3743475 () Bool)

(assert (=> bs!554703 m!3743475))

(declare-fun m!3743477 () Bool)

(assert (=> bs!554703 m!3743477))

(assert (=> b!3379120 d!958775))

(declare-fun d!958777 () Bool)

(assert (=> d!958777 (= (inv!49903 (tag!5940 (rule!7916 separatorToken!241))) (= (mod (str.len (value!173447 (tag!5940 (rule!7916 separatorToken!241)))) 2) 0))))

(assert (=> b!3379119 d!958777))

(declare-fun d!958779 () Bool)

(declare-fun res!1367139 () Bool)

(declare-fun e!2097813 () Bool)

(assert (=> d!958779 (=> (not res!1367139) (not e!2097813))))

(assert (=> d!958779 (= res!1367139 (semiInverseModEq!2239 (toChars!7411 (transformation!5368 (rule!7916 separatorToken!241))) (toValue!7552 (transformation!5368 (rule!7916 separatorToken!241)))))))

(assert (=> d!958779 (= (inv!49907 (transformation!5368 (rule!7916 separatorToken!241))) e!2097813)))

(declare-fun b!3379555 () Bool)

(assert (=> b!3379555 (= e!2097813 (equivClasses!2138 (toChars!7411 (transformation!5368 (rule!7916 separatorToken!241))) (toValue!7552 (transformation!5368 (rule!7916 separatorToken!241)))))))

(assert (= (and d!958779 res!1367139) b!3379555))

(declare-fun m!3743479 () Bool)

(assert (=> d!958779 m!3743479))

(declare-fun m!3743481 () Bool)

(assert (=> b!3379555 m!3743481))

(assert (=> b!3379119 d!958779))

(declare-fun d!958781 () Bool)

(assert (=> d!958781 (= (isEmpty!21066 rules!2135) ((_ is Nil!36839) rules!2135))))

(assert (=> b!3379098 d!958781))

(declare-fun b!3379603 () Bool)

(declare-fun e!2097844 () Bool)

(declare-datatypes ((tuple2!36422 0))(
  ( (tuple2!36423 (_1!21345 List!36961) (_2!21345 List!36961)) )
))
(declare-fun findLongestMatchInner!875 (Regex!10127 List!36961 Int List!36961 List!36961 Int) tuple2!36422)

(assert (=> b!3379603 (= e!2097844 (matchR!4719 (regex!5368 (rule!7916 (h!42258 tokens!494))) (_1!21345 (findLongestMatchInner!875 (regex!5368 (rule!7916 (h!42258 tokens!494))) Nil!36837 (size!27875 Nil!36837) lt!1147247 lt!1147247 (size!27875 lt!1147247)))))))

(declare-fun b!3379604 () Bool)

(declare-fun res!1367167 () Bool)

(declare-fun e!2097843 () Bool)

(assert (=> b!3379604 (=> (not res!1367167) (not e!2097843))))

(declare-fun lt!1147386 () Option!7383)

(declare-fun get!11757 (Option!7383) tuple2!36412)

(assert (=> b!3379604 (= res!1367167 (= (rule!7916 (_1!21340 (get!11757 lt!1147386))) (rule!7916 (h!42258 tokens!494))))))

(declare-fun b!3379605 () Bool)

(declare-fun e!2097841 () Option!7383)

(declare-fun lt!1147385 () tuple2!36422)

(assert (=> b!3379605 (= e!2097841 (Some!7382 (tuple2!36413 (Token!10103 (apply!8559 (transformation!5368 (rule!7916 (h!42258 tokens!494))) (seqFromList!3789 (_1!21345 lt!1147385))) (rule!7916 (h!42258 tokens!494)) (size!27879 (seqFromList!3789 (_1!21345 lt!1147385))) (_1!21345 lt!1147385)) (_2!21345 lt!1147385))))))

(declare-fun lt!1147388 () Unit!51942)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!848 (Regex!10127 List!36961) Unit!51942)

(assert (=> b!3379605 (= lt!1147388 (longestMatchIsAcceptedByMatchOrIsEmpty!848 (regex!5368 (rule!7916 (h!42258 tokens!494))) lt!1147247))))

(declare-fun res!1367168 () Bool)

(assert (=> b!3379605 (= res!1367168 (isEmpty!21065 (_1!21345 (findLongestMatchInner!875 (regex!5368 (rule!7916 (h!42258 tokens!494))) Nil!36837 (size!27875 Nil!36837) lt!1147247 lt!1147247 (size!27875 lt!1147247)))))))

(assert (=> b!3379605 (=> res!1367168 e!2097844)))

(assert (=> b!3379605 e!2097844))

(declare-fun lt!1147389 () Unit!51942)

(assert (=> b!3379605 (= lt!1147389 lt!1147388)))

(declare-fun lt!1147387 () Unit!51942)

(declare-fun lemmaSemiInverse!1223 (TokenValueInjection!10624 BalanceConc!21836) Unit!51942)

(assert (=> b!3379605 (= lt!1147387 (lemmaSemiInverse!1223 (transformation!5368 (rule!7916 (h!42258 tokens!494))) (seqFromList!3789 (_1!21345 lt!1147385))))))

(declare-fun b!3379606 () Bool)

(assert (=> b!3379606 (= e!2097843 (= (size!27874 (_1!21340 (get!11757 lt!1147386))) (size!27875 (originalCharacters!6082 (_1!21340 (get!11757 lt!1147386))))))))

(declare-fun b!3379607 () Bool)

(declare-fun e!2097842 () Bool)

(assert (=> b!3379607 (= e!2097842 e!2097843)))

(declare-fun res!1367166 () Bool)

(assert (=> b!3379607 (=> (not res!1367166) (not e!2097843))))

(assert (=> b!3379607 (= res!1367166 (matchR!4719 (regex!5368 (rule!7916 (h!42258 tokens!494))) (list!13317 (charsOf!3382 (_1!21340 (get!11757 lt!1147386))))))))

(declare-fun b!3379608 () Bool)

(declare-fun res!1367164 () Bool)

(assert (=> b!3379608 (=> (not res!1367164) (not e!2097843))))

(assert (=> b!3379608 (= res!1367164 (< (size!27875 (_2!21340 (get!11757 lt!1147386))) (size!27875 lt!1147247)))))

(declare-fun b!3379609 () Bool)

(declare-fun res!1367163 () Bool)

(assert (=> b!3379609 (=> (not res!1367163) (not e!2097843))))

(assert (=> b!3379609 (= res!1367163 (= (value!173448 (_1!21340 (get!11757 lt!1147386))) (apply!8559 (transformation!5368 (rule!7916 (_1!21340 (get!11757 lt!1147386)))) (seqFromList!3789 (originalCharacters!6082 (_1!21340 (get!11757 lt!1147386)))))))))

(declare-fun d!958783 () Bool)

(assert (=> d!958783 e!2097842))

(declare-fun res!1367165 () Bool)

(assert (=> d!958783 (=> res!1367165 e!2097842)))

(declare-fun isEmpty!21076 (Option!7383) Bool)

(assert (=> d!958783 (= res!1367165 (isEmpty!21076 lt!1147386))))

(assert (=> d!958783 (= lt!1147386 e!2097841)))

(declare-fun c!575475 () Bool)

(assert (=> d!958783 (= c!575475 (isEmpty!21065 (_1!21345 lt!1147385)))))

(declare-fun findLongestMatch!790 (Regex!10127 List!36961) tuple2!36422)

(assert (=> d!958783 (= lt!1147385 (findLongestMatch!790 (regex!5368 (rule!7916 (h!42258 tokens!494))) lt!1147247))))

(declare-fun ruleValid!1700 (LexerInterface!4957 Rule!10536) Bool)

(assert (=> d!958783 (ruleValid!1700 thiss!18206 (rule!7916 (h!42258 tokens!494)))))

(assert (=> d!958783 (= (maxPrefixOneRule!1680 thiss!18206 (rule!7916 (h!42258 tokens!494)) lt!1147247) lt!1147386)))

(declare-fun b!3379610 () Bool)

(assert (=> b!3379610 (= e!2097841 None!7382)))

(declare-fun b!3379611 () Bool)

(declare-fun res!1367169 () Bool)

(assert (=> b!3379611 (=> (not res!1367169) (not e!2097843))))

(assert (=> b!3379611 (= res!1367169 (= (++!8999 (list!13317 (charsOf!3382 (_1!21340 (get!11757 lt!1147386)))) (_2!21340 (get!11757 lt!1147386))) lt!1147247))))

(assert (= (and d!958783 c!575475) b!3379610))

(assert (= (and d!958783 (not c!575475)) b!3379605))

(assert (= (and b!3379605 (not res!1367168)) b!3379603))

(assert (= (and d!958783 (not res!1367165)) b!3379607))

(assert (= (and b!3379607 res!1367166) b!3379611))

(assert (= (and b!3379611 res!1367169) b!3379608))

(assert (= (and b!3379608 res!1367164) b!3379604))

(assert (= (and b!3379604 res!1367167) b!3379609))

(assert (= (and b!3379609 res!1367163) b!3379606))

(declare-fun m!3743517 () Bool)

(assert (=> b!3379607 m!3743517))

(declare-fun m!3743519 () Bool)

(assert (=> b!3379607 m!3743519))

(assert (=> b!3379607 m!3743519))

(declare-fun m!3743521 () Bool)

(assert (=> b!3379607 m!3743521))

(assert (=> b!3379607 m!3743521))

(declare-fun m!3743523 () Bool)

(assert (=> b!3379607 m!3743523))

(assert (=> b!3379608 m!3743517))

(declare-fun m!3743525 () Bool)

(assert (=> b!3379608 m!3743525))

(assert (=> b!3379608 m!3742987))

(assert (=> b!3379606 m!3743517))

(declare-fun m!3743527 () Bool)

(assert (=> b!3379606 m!3743527))

(declare-fun m!3743529 () Bool)

(assert (=> b!3379603 m!3743529))

(assert (=> b!3379603 m!3742987))

(assert (=> b!3379603 m!3743529))

(assert (=> b!3379603 m!3742987))

(declare-fun m!3743531 () Bool)

(assert (=> b!3379603 m!3743531))

(declare-fun m!3743533 () Bool)

(assert (=> b!3379603 m!3743533))

(assert (=> b!3379609 m!3743517))

(declare-fun m!3743535 () Bool)

(assert (=> b!3379609 m!3743535))

(assert (=> b!3379609 m!3743535))

(declare-fun m!3743537 () Bool)

(assert (=> b!3379609 m!3743537))

(assert (=> b!3379611 m!3743517))

(assert (=> b!3379611 m!3743519))

(assert (=> b!3379611 m!3743519))

(assert (=> b!3379611 m!3743521))

(assert (=> b!3379611 m!3743521))

(declare-fun m!3743539 () Bool)

(assert (=> b!3379611 m!3743539))

(declare-fun m!3743541 () Bool)

(assert (=> b!3379605 m!3743541))

(declare-fun m!3743543 () Bool)

(assert (=> b!3379605 m!3743543))

(assert (=> b!3379605 m!3743529))

(assert (=> b!3379605 m!3742987))

(assert (=> b!3379605 m!3743531))

(declare-fun m!3743545 () Bool)

(assert (=> b!3379605 m!3743545))

(assert (=> b!3379605 m!3743541))

(declare-fun m!3743547 () Bool)

(assert (=> b!3379605 m!3743547))

(declare-fun m!3743549 () Bool)

(assert (=> b!3379605 m!3743549))

(assert (=> b!3379605 m!3743541))

(assert (=> b!3379605 m!3743529))

(assert (=> b!3379605 m!3742987))

(assert (=> b!3379605 m!3743541))

(declare-fun m!3743551 () Bool)

(assert (=> b!3379605 m!3743551))

(declare-fun m!3743553 () Bool)

(assert (=> d!958783 m!3743553))

(declare-fun m!3743555 () Bool)

(assert (=> d!958783 m!3743555))

(declare-fun m!3743557 () Bool)

(assert (=> d!958783 m!3743557))

(declare-fun m!3743559 () Bool)

(assert (=> d!958783 m!3743559))

(assert (=> b!3379604 m!3743517))

(assert (=> b!3379097 d!958783))

(declare-fun d!958797 () Bool)

(assert (=> d!958797 (rulesProduceIndividualToken!2449 thiss!18206 rules!2135 (h!42258 tokens!494))))

(declare-fun lt!1147435 () Unit!51942)

(declare-fun choose!19543 (LexerInterface!4957 List!36963 List!36962 Token!10102) Unit!51942)

(assert (=> d!958797 (= lt!1147435 (choose!19543 thiss!18206 rules!2135 tokens!494 (h!42258 tokens!494)))))

(assert (=> d!958797 (not (isEmpty!21066 rules!2135))))

(assert (=> d!958797 (= (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!952 thiss!18206 rules!2135 tokens!494 (h!42258 tokens!494)) lt!1147435)))

(declare-fun bs!554713 () Bool)

(assert (= bs!554713 d!958797))

(assert (=> bs!554713 m!3742957))

(declare-fun m!3743697 () Bool)

(assert (=> bs!554713 m!3743697))

(assert (=> bs!554713 m!3743005))

(assert (=> b!3379097 d!958797))

(declare-fun d!958829 () Bool)

(declare-fun isEmpty!21077 (Option!7384) Bool)

(assert (=> d!958829 (= (isDefined!5706 lt!1147239) (not (isEmpty!21077 lt!1147239)))))

(declare-fun bs!554714 () Bool)

(assert (= bs!554714 d!958829))

(declare-fun m!3743699 () Bool)

(assert (=> bs!554714 m!3743699))

(assert (=> b!3379097 d!958829))

(declare-fun d!958831 () Bool)

(assert (=> d!958831 (= (maxPrefixOneRule!1680 thiss!18206 (rule!7916 (h!42258 tokens!494)) lt!1147247) (Some!7382 (tuple2!36413 (Token!10103 (apply!8559 (transformation!5368 (rule!7916 (h!42258 tokens!494))) (seqFromList!3789 lt!1147247)) (rule!7916 (h!42258 tokens!494)) (size!27875 lt!1147247) lt!1147247) Nil!36837)))))

(declare-fun lt!1147438 () Unit!51942)

(declare-fun choose!19545 (LexerInterface!4957 List!36963 List!36961 List!36961 List!36961 Rule!10536) Unit!51942)

(assert (=> d!958831 (= lt!1147438 (choose!19545 thiss!18206 rules!2135 lt!1147247 lt!1147247 Nil!36837 (rule!7916 (h!42258 tokens!494))))))

(assert (=> d!958831 (not (isEmpty!21066 rules!2135))))

(assert (=> d!958831 (= (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!779 thiss!18206 rules!2135 lt!1147247 lt!1147247 Nil!36837 (rule!7916 (h!42258 tokens!494))) lt!1147438)))

(declare-fun bs!554715 () Bool)

(assert (= bs!554715 d!958831))

(assert (=> bs!554715 m!3742937))

(assert (=> bs!554715 m!3742987))

(declare-fun m!3743701 () Bool)

(assert (=> bs!554715 m!3743701))

(assert (=> bs!554715 m!3742991))

(assert (=> bs!554715 m!3742937))

(declare-fun m!3743703 () Bool)

(assert (=> bs!554715 m!3743703))

(assert (=> bs!554715 m!3743005))

(assert (=> b!3379097 d!958831))

(declare-fun d!958833 () Bool)

(assert (=> d!958833 (= (isEmpty!21065 (getSuffix!1462 lt!1147247 lt!1147247)) ((_ is Nil!36837) (getSuffix!1462 lt!1147247 lt!1147247)))))

(assert (=> b!3379097 d!958833))

(declare-fun b!3379733 () Bool)

(declare-fun e!2097931 () Option!7384)

(assert (=> b!3379733 (= e!2097931 None!7383)))

(declare-fun b!3379734 () Bool)

(declare-fun e!2097930 () Bool)

(declare-fun e!2097929 () Bool)

(assert (=> b!3379734 (= e!2097930 e!2097929)))

(declare-fun res!1367204 () Bool)

(assert (=> b!3379734 (=> (not res!1367204) (not e!2097929))))

(declare-fun lt!1147446 () Option!7384)

(assert (=> b!3379734 (= res!1367204 (contains!6727 rules!2135 (get!11755 lt!1147446)))))

(declare-fun b!3379735 () Bool)

(assert (=> b!3379735 (= e!2097929 (= (tag!5940 (get!11755 lt!1147446)) (tag!5940 (rule!7916 (h!42258 tokens!494)))))))

(declare-fun b!3379736 () Bool)

(declare-fun lt!1147445 () Unit!51942)

(declare-fun lt!1147447 () Unit!51942)

(assert (=> b!3379736 (= lt!1147445 lt!1147447)))

(assert (=> b!3379736 (rulesInvariant!4354 thiss!18206 (t!263010 rules!2135))))

(declare-fun lemmaInvariantOnRulesThenOnTail!396 (LexerInterface!4957 Rule!10536 List!36963) Unit!51942)

(assert (=> b!3379736 (= lt!1147447 (lemmaInvariantOnRulesThenOnTail!396 thiss!18206 (h!42259 rules!2135) (t!263010 rules!2135)))))

(assert (=> b!3379736 (= e!2097931 (getRuleFromTag!1023 thiss!18206 (t!263010 rules!2135) (tag!5940 (rule!7916 (h!42258 tokens!494)))))))

(declare-fun b!3379737 () Bool)

(declare-fun e!2097932 () Option!7384)

(assert (=> b!3379737 (= e!2097932 e!2097931)))

(declare-fun c!575495 () Bool)

(assert (=> b!3379737 (= c!575495 (and ((_ is Cons!36839) rules!2135) (not (= (tag!5940 (h!42259 rules!2135)) (tag!5940 (rule!7916 (h!42258 tokens!494)))))))))

(declare-fun d!958835 () Bool)

(assert (=> d!958835 e!2097930))

(declare-fun res!1367205 () Bool)

(assert (=> d!958835 (=> res!1367205 e!2097930)))

(assert (=> d!958835 (= res!1367205 (isEmpty!21077 lt!1147446))))

(assert (=> d!958835 (= lt!1147446 e!2097932)))

(declare-fun c!575494 () Bool)

(assert (=> d!958835 (= c!575494 (and ((_ is Cons!36839) rules!2135) (= (tag!5940 (h!42259 rules!2135)) (tag!5940 (rule!7916 (h!42258 tokens!494))))))))

(assert (=> d!958835 (rulesInvariant!4354 thiss!18206 rules!2135)))

(assert (=> d!958835 (= (getRuleFromTag!1023 thiss!18206 rules!2135 (tag!5940 (rule!7916 (h!42258 tokens!494)))) lt!1147446)))

(declare-fun b!3379738 () Bool)

(assert (=> b!3379738 (= e!2097932 (Some!7383 (h!42259 rules!2135)))))

(assert (= (and d!958835 c!575494) b!3379738))

(assert (= (and d!958835 (not c!575494)) b!3379737))

(assert (= (and b!3379737 c!575495) b!3379736))

(assert (= (and b!3379737 (not c!575495)) b!3379733))

(assert (= (and d!958835 (not res!1367205)) b!3379734))

(assert (= (and b!3379734 res!1367204) b!3379735))

(declare-fun m!3743705 () Bool)

(assert (=> b!3379734 m!3743705))

(assert (=> b!3379734 m!3743705))

(declare-fun m!3743707 () Bool)

(assert (=> b!3379734 m!3743707))

(assert (=> b!3379735 m!3743705))

(declare-fun m!3743709 () Bool)

(assert (=> b!3379736 m!3743709))

(declare-fun m!3743711 () Bool)

(assert (=> b!3379736 m!3743711))

(declare-fun m!3743713 () Bool)

(assert (=> b!3379736 m!3743713))

(declare-fun m!3743715 () Bool)

(assert (=> d!958835 m!3743715))

(assert (=> d!958835 m!3743007))

(assert (=> b!3379097 d!958835))

(declare-fun d!958837 () Bool)

(declare-fun lt!1147450 () Int)

(assert (=> d!958837 (>= lt!1147450 0)))

(declare-fun e!2097935 () Int)

(assert (=> d!958837 (= lt!1147450 e!2097935)))

(declare-fun c!575498 () Bool)

(assert (=> d!958837 (= c!575498 ((_ is Nil!36837) lt!1147247))))

(assert (=> d!958837 (= (size!27875 lt!1147247) lt!1147450)))

(declare-fun b!3379743 () Bool)

(assert (=> b!3379743 (= e!2097935 0)))

(declare-fun b!3379744 () Bool)

(assert (=> b!3379744 (= e!2097935 (+ 1 (size!27875 (t!263008 lt!1147247))))))

(assert (= (and d!958837 c!575498) b!3379743))

(assert (= (and d!958837 (not c!575498)) b!3379744))

(declare-fun m!3743717 () Bool)

(assert (=> b!3379744 m!3743717))

(assert (=> b!3379097 d!958837))

(declare-fun d!958839 () Bool)

(declare-fun dynLambda!15316 (Int BalanceConc!21836) TokenValue!5598)

(assert (=> d!958839 (= (apply!8559 (transformation!5368 (rule!7916 (h!42258 tokens!494))) lt!1147234) (dynLambda!15316 (toValue!7552 (transformation!5368 (rule!7916 (h!42258 tokens!494)))) lt!1147234))))

(declare-fun b_lambda!95903 () Bool)

(assert (=> (not b_lambda!95903) (not d!958839)))

(declare-fun t!263067 () Bool)

(declare-fun tb!179921 () Bool)

(assert (=> (and b!3379126 (= (toValue!7552 (transformation!5368 (h!42259 rules!2135))) (toValue!7552 (transformation!5368 (rule!7916 (h!42258 tokens!494))))) t!263067) tb!179921))

(declare-fun result!223340 () Bool)

(assert (=> tb!179921 (= result!223340 (inv!21 (dynLambda!15316 (toValue!7552 (transformation!5368 (rule!7916 (h!42258 tokens!494)))) lt!1147234)))))

(declare-fun m!3743719 () Bool)

(assert (=> tb!179921 m!3743719))

(assert (=> d!958839 t!263067))

(declare-fun b_and!234771 () Bool)

(assert (= b_and!234703 (and (=> t!263067 result!223340) b_and!234771)))

(declare-fun t!263069 () Bool)

(declare-fun tb!179923 () Bool)

(assert (=> (and b!3379101 (= (toValue!7552 (transformation!5368 (rule!7916 (h!42258 tokens!494)))) (toValue!7552 (transformation!5368 (rule!7916 (h!42258 tokens!494))))) t!263069) tb!179923))

(declare-fun result!223344 () Bool)

(assert (= result!223344 result!223340))

(assert (=> d!958839 t!263069))

(declare-fun b_and!234773 () Bool)

(assert (= b_and!234707 (and (=> t!263069 result!223344) b_and!234773)))

(declare-fun t!263071 () Bool)

(declare-fun tb!179925 () Bool)

(assert (=> (and b!3379103 (= (toValue!7552 (transformation!5368 (rule!7916 separatorToken!241))) (toValue!7552 (transformation!5368 (rule!7916 (h!42258 tokens!494))))) t!263071) tb!179925))

(declare-fun result!223346 () Bool)

(assert (= result!223346 result!223340))

(assert (=> d!958839 t!263071))

(declare-fun b_and!234775 () Bool)

(assert (= b_and!234711 (and (=> t!263071 result!223346) b_and!234775)))

(declare-fun m!3743721 () Bool)

(assert (=> d!958839 m!3743721))

(assert (=> b!3379097 d!958839))

(declare-fun d!958841 () Bool)

(declare-fun lt!1147453 () List!36961)

(assert (=> d!958841 (= (++!8999 lt!1147247 lt!1147453) lt!1147247)))

(declare-fun e!2097941 () List!36961)

(assert (=> d!958841 (= lt!1147453 e!2097941)))

(declare-fun c!575501 () Bool)

(assert (=> d!958841 (= c!575501 ((_ is Cons!36837) lt!1147247))))

(assert (=> d!958841 (>= (size!27875 lt!1147247) (size!27875 lt!1147247))))

(assert (=> d!958841 (= (getSuffix!1462 lt!1147247 lt!1147247) lt!1147453)))

(declare-fun b!3379751 () Bool)

(assert (=> b!3379751 (= e!2097941 (getSuffix!1462 (tail!5347 lt!1147247) (t!263008 lt!1147247)))))

(declare-fun b!3379752 () Bool)

(assert (=> b!3379752 (= e!2097941 lt!1147247)))

(assert (= (and d!958841 c!575501) b!3379751))

(assert (= (and d!958841 (not c!575501)) b!3379752))

(declare-fun m!3743723 () Bool)

(assert (=> d!958841 m!3743723))

(assert (=> d!958841 m!3742987))

(assert (=> d!958841 m!3742987))

(assert (=> b!3379751 m!3743109))

(assert (=> b!3379751 m!3743109))

(declare-fun m!3743725 () Bool)

(assert (=> b!3379751 m!3743725))

(assert (=> b!3379097 d!958841))

(declare-fun d!958843 () Bool)

(assert (=> d!958843 (isEmpty!21065 (getSuffix!1462 lt!1147247 lt!1147247))))

(declare-fun lt!1147456 () Unit!51942)

(declare-fun choose!19546 (List!36961) Unit!51942)

(assert (=> d!958843 (= lt!1147456 (choose!19546 lt!1147247))))

(assert (=> d!958843 (= (lemmaGetSuffixOnListWithItSelfIsEmpty!120 lt!1147247) lt!1147456)))

(declare-fun bs!554716 () Bool)

(assert (= bs!554716 d!958843))

(assert (=> bs!554716 m!3742965))

(assert (=> bs!554716 m!3742965))

(assert (=> bs!554716 m!3742967))

(declare-fun m!3743727 () Bool)

(assert (=> bs!554716 m!3743727))

(assert (=> b!3379097 d!958843))

(declare-fun b!3379753 () Bool)

(declare-fun e!2097945 () List!36961)

(assert (=> b!3379753 (= e!2097945 (Cons!36837 (c!575376 (regex!5368 (rule!7916 separatorToken!241))) Nil!36837))))

(declare-fun b!3379754 () Bool)

(declare-fun e!2097944 () List!36961)

(assert (=> b!3379754 (= e!2097944 e!2097945)))

(declare-fun c!575503 () Bool)

(assert (=> b!3379754 (= c!575503 ((_ is ElementMatch!10127) (regex!5368 (rule!7916 separatorToken!241))))))

(declare-fun b!3379755 () Bool)

(declare-fun e!2097943 () List!36961)

(declare-fun call!244476 () List!36961)

(assert (=> b!3379755 (= e!2097943 call!244476)))

(declare-fun call!244475 () List!36961)

(declare-fun call!244477 () List!36961)

(declare-fun bm!244469 () Bool)

(declare-fun c!575504 () Bool)

(declare-fun call!244474 () List!36961)

(assert (=> bm!244469 (= call!244475 (++!8999 (ite c!575504 call!244474 call!244477) (ite c!575504 call!244477 call!244474)))))

(declare-fun b!3379756 () Bool)

(declare-fun c!575502 () Bool)

(assert (=> b!3379756 (= c!575502 ((_ is Star!10127) (regex!5368 (rule!7916 separatorToken!241))))))

(assert (=> b!3379756 (= e!2097945 e!2097943)))

(declare-fun b!3379757 () Bool)

(declare-fun e!2097942 () List!36961)

(assert (=> b!3379757 (= e!2097943 e!2097942)))

(assert (=> b!3379757 (= c!575504 ((_ is Union!10127) (regex!5368 (rule!7916 separatorToken!241))))))

(declare-fun b!3379758 () Bool)

(assert (=> b!3379758 (= e!2097942 call!244475)))

(declare-fun b!3379759 () Bool)

(assert (=> b!3379759 (= e!2097944 Nil!36837)))

(declare-fun d!958845 () Bool)

(declare-fun c!575505 () Bool)

(assert (=> d!958845 (= c!575505 (or ((_ is EmptyExpr!10127) (regex!5368 (rule!7916 separatorToken!241))) ((_ is EmptyLang!10127) (regex!5368 (rule!7916 separatorToken!241)))))))

(assert (=> d!958845 (= (usedCharacters!624 (regex!5368 (rule!7916 separatorToken!241))) e!2097944)))

(declare-fun bm!244470 () Bool)

(assert (=> bm!244470 (= call!244474 (usedCharacters!624 (ite c!575504 (regOne!20767 (regex!5368 (rule!7916 separatorToken!241))) (regTwo!20766 (regex!5368 (rule!7916 separatorToken!241))))))))

(declare-fun bm!244471 () Bool)

(assert (=> bm!244471 (= call!244476 (usedCharacters!624 (ite c!575502 (reg!10456 (regex!5368 (rule!7916 separatorToken!241))) (ite c!575504 (regTwo!20767 (regex!5368 (rule!7916 separatorToken!241))) (regOne!20766 (regex!5368 (rule!7916 separatorToken!241)))))))))

(declare-fun bm!244472 () Bool)

(assert (=> bm!244472 (= call!244477 call!244476)))

(declare-fun b!3379760 () Bool)

(assert (=> b!3379760 (= e!2097942 call!244475)))

(assert (= (and d!958845 c!575505) b!3379759))

(assert (= (and d!958845 (not c!575505)) b!3379754))

(assert (= (and b!3379754 c!575503) b!3379753))

(assert (= (and b!3379754 (not c!575503)) b!3379756))

(assert (= (and b!3379756 c!575502) b!3379755))

(assert (= (and b!3379756 (not c!575502)) b!3379757))

(assert (= (and b!3379757 c!575504) b!3379760))

(assert (= (and b!3379757 (not c!575504)) b!3379758))

(assert (= (or b!3379760 b!3379758) bm!244472))

(assert (= (or b!3379760 b!3379758) bm!244470))

(assert (= (or b!3379760 b!3379758) bm!244469))

(assert (= (or b!3379755 bm!244472) bm!244471))

(declare-fun m!3743729 () Bool)

(assert (=> bm!244469 m!3743729))

(declare-fun m!3743731 () Bool)

(assert (=> bm!244470 m!3743731))

(declare-fun m!3743733 () Bool)

(assert (=> bm!244471 m!3743733))

(assert (=> b!3379097 d!958845))

(declare-fun d!958847 () Bool)

(declare-fun lt!1147457 () Bool)

(assert (=> d!958847 (= lt!1147457 (select (content!5072 (usedCharacters!624 (regex!5368 (rule!7916 separatorToken!241)))) lt!1147252))))

(declare-fun e!2097946 () Bool)

(assert (=> d!958847 (= lt!1147457 e!2097946)))

(declare-fun res!1367207 () Bool)

(assert (=> d!958847 (=> (not res!1367207) (not e!2097946))))

(assert (=> d!958847 (= res!1367207 ((_ is Cons!36837) (usedCharacters!624 (regex!5368 (rule!7916 separatorToken!241)))))))

(assert (=> d!958847 (= (contains!6726 (usedCharacters!624 (regex!5368 (rule!7916 separatorToken!241))) lt!1147252) lt!1147457)))

(declare-fun b!3379761 () Bool)

(declare-fun e!2097947 () Bool)

(assert (=> b!3379761 (= e!2097946 e!2097947)))

(declare-fun res!1367206 () Bool)

(assert (=> b!3379761 (=> res!1367206 e!2097947)))

(assert (=> b!3379761 (= res!1367206 (= (h!42257 (usedCharacters!624 (regex!5368 (rule!7916 separatorToken!241)))) lt!1147252))))

(declare-fun b!3379762 () Bool)

(assert (=> b!3379762 (= e!2097947 (contains!6726 (t!263008 (usedCharacters!624 (regex!5368 (rule!7916 separatorToken!241)))) lt!1147252))))

(assert (= (and d!958847 res!1367207) b!3379761))

(assert (= (and b!3379761 (not res!1367206)) b!3379762))

(assert (=> d!958847 m!3742963))

(declare-fun m!3743735 () Bool)

(assert (=> d!958847 m!3743735))

(declare-fun m!3743737 () Bool)

(assert (=> d!958847 m!3743737))

(declare-fun m!3743739 () Bool)

(assert (=> b!3379762 m!3743739))

(assert (=> b!3379097 d!958847))

(declare-fun d!958849 () Bool)

(assert (=> d!958849 (= (isDefined!5706 lt!1147250) (not (isEmpty!21077 lt!1147250)))))

(declare-fun bs!554717 () Bool)

(assert (= bs!554717 d!958849))

(declare-fun m!3743741 () Bool)

(assert (=> bs!554717 m!3743741))

(assert (=> b!3379097 d!958849))

(declare-fun d!958851 () Bool)

(assert (=> d!958851 (= (head!7215 lt!1147254) (h!42257 lt!1147254))))

(assert (=> b!3379097 d!958851))

(declare-fun b!3379763 () Bool)

(declare-fun e!2097950 () Option!7384)

(assert (=> b!3379763 (= e!2097950 None!7383)))

(declare-fun b!3379764 () Bool)

(declare-fun e!2097949 () Bool)

(declare-fun e!2097948 () Bool)

(assert (=> b!3379764 (= e!2097949 e!2097948)))

(declare-fun res!1367208 () Bool)

(assert (=> b!3379764 (=> (not res!1367208) (not e!2097948))))

(declare-fun lt!1147459 () Option!7384)

(assert (=> b!3379764 (= res!1367208 (contains!6727 rules!2135 (get!11755 lt!1147459)))))

(declare-fun b!3379765 () Bool)

(assert (=> b!3379765 (= e!2097948 (= (tag!5940 (get!11755 lt!1147459)) (tag!5940 (rule!7916 separatorToken!241))))))

(declare-fun b!3379766 () Bool)

(declare-fun lt!1147458 () Unit!51942)

(declare-fun lt!1147460 () Unit!51942)

(assert (=> b!3379766 (= lt!1147458 lt!1147460)))

(assert (=> b!3379766 (rulesInvariant!4354 thiss!18206 (t!263010 rules!2135))))

(assert (=> b!3379766 (= lt!1147460 (lemmaInvariantOnRulesThenOnTail!396 thiss!18206 (h!42259 rules!2135) (t!263010 rules!2135)))))

(assert (=> b!3379766 (= e!2097950 (getRuleFromTag!1023 thiss!18206 (t!263010 rules!2135) (tag!5940 (rule!7916 separatorToken!241))))))

(declare-fun b!3379767 () Bool)

(declare-fun e!2097951 () Option!7384)

(assert (=> b!3379767 (= e!2097951 e!2097950)))

(declare-fun c!575507 () Bool)

(assert (=> b!3379767 (= c!575507 (and ((_ is Cons!36839) rules!2135) (not (= (tag!5940 (h!42259 rules!2135)) (tag!5940 (rule!7916 separatorToken!241))))))))

(declare-fun d!958853 () Bool)

(assert (=> d!958853 e!2097949))

(declare-fun res!1367209 () Bool)

(assert (=> d!958853 (=> res!1367209 e!2097949)))

(assert (=> d!958853 (= res!1367209 (isEmpty!21077 lt!1147459))))

(assert (=> d!958853 (= lt!1147459 e!2097951)))

(declare-fun c!575506 () Bool)

(assert (=> d!958853 (= c!575506 (and ((_ is Cons!36839) rules!2135) (= (tag!5940 (h!42259 rules!2135)) (tag!5940 (rule!7916 separatorToken!241)))))))

(assert (=> d!958853 (rulesInvariant!4354 thiss!18206 rules!2135)))

(assert (=> d!958853 (= (getRuleFromTag!1023 thiss!18206 rules!2135 (tag!5940 (rule!7916 separatorToken!241))) lt!1147459)))

(declare-fun b!3379768 () Bool)

(assert (=> b!3379768 (= e!2097951 (Some!7383 (h!42259 rules!2135)))))

(assert (= (and d!958853 c!575506) b!3379768))

(assert (= (and d!958853 (not c!575506)) b!3379767))

(assert (= (and b!3379767 c!575507) b!3379766))

(assert (= (and b!3379767 (not c!575507)) b!3379763))

(assert (= (and d!958853 (not res!1367209)) b!3379764))

(assert (= (and b!3379764 res!1367208) b!3379765))

(declare-fun m!3743743 () Bool)

(assert (=> b!3379764 m!3743743))

(assert (=> b!3379764 m!3743743))

(declare-fun m!3743745 () Bool)

(assert (=> b!3379764 m!3743745))

(assert (=> b!3379765 m!3743743))

(assert (=> b!3379766 m!3743709))

(assert (=> b!3379766 m!3743711))

(declare-fun m!3743747 () Bool)

(assert (=> b!3379766 m!3743747))

(declare-fun m!3743749 () Bool)

(assert (=> d!958853 m!3743749))

(assert (=> d!958853 m!3743007))

(assert (=> b!3379097 d!958853))

(declare-fun d!958855 () Bool)

(declare-fun e!2097954 () Bool)

(assert (=> d!958855 e!2097954))

(declare-fun res!1367214 () Bool)

(assert (=> d!958855 (=> (not res!1367214) (not e!2097954))))

(assert (=> d!958855 (= res!1367214 (isDefined!5706 (getRuleFromTag!1023 thiss!18206 rules!2135 (tag!5940 (rule!7916 (h!42258 tokens!494))))))))

(declare-fun lt!1147463 () Unit!51942)

(declare-fun choose!19547 (LexerInterface!4957 List!36963 List!36961 Token!10102) Unit!51942)

(assert (=> d!958855 (= lt!1147463 (choose!19547 thiss!18206 rules!2135 lt!1147247 (h!42258 tokens!494)))))

(assert (=> d!958855 (rulesInvariant!4354 thiss!18206 rules!2135)))

(assert (=> d!958855 (= (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1023 thiss!18206 rules!2135 lt!1147247 (h!42258 tokens!494)) lt!1147463)))

(declare-fun b!3379773 () Bool)

(declare-fun res!1367215 () Bool)

(assert (=> b!3379773 (=> (not res!1367215) (not e!2097954))))

(assert (=> b!3379773 (= res!1367215 (matchR!4719 (regex!5368 (get!11755 (getRuleFromTag!1023 thiss!18206 rules!2135 (tag!5940 (rule!7916 (h!42258 tokens!494)))))) (list!13317 (charsOf!3382 (h!42258 tokens!494)))))))

(declare-fun b!3379774 () Bool)

(assert (=> b!3379774 (= e!2097954 (= (rule!7916 (h!42258 tokens!494)) (get!11755 (getRuleFromTag!1023 thiss!18206 rules!2135 (tag!5940 (rule!7916 (h!42258 tokens!494)))))))))

(assert (= (and d!958855 res!1367214) b!3379773))

(assert (= (and b!3379773 res!1367215) b!3379774))

(assert (=> d!958855 m!3742969))

(assert (=> d!958855 m!3742969))

(declare-fun m!3743751 () Bool)

(assert (=> d!958855 m!3743751))

(declare-fun m!3743753 () Bool)

(assert (=> d!958855 m!3743753))

(assert (=> d!958855 m!3743007))

(assert (=> b!3379773 m!3742969))

(declare-fun m!3743755 () Bool)

(assert (=> b!3379773 m!3743755))

(assert (=> b!3379773 m!3742955))

(declare-fun m!3743757 () Bool)

(assert (=> b!3379773 m!3743757))

(assert (=> b!3379773 m!3742953))

(assert (=> b!3379773 m!3742955))

(assert (=> b!3379773 m!3742969))

(assert (=> b!3379773 m!3742953))

(assert (=> b!3379774 m!3742969))

(assert (=> b!3379774 m!3742969))

(assert (=> b!3379774 m!3743755))

(assert (=> b!3379097 d!958855))

(declare-fun d!958857 () Bool)

(declare-fun e!2097955 () Bool)

(assert (=> d!958857 e!2097955))

(declare-fun res!1367216 () Bool)

(assert (=> d!958857 (=> (not res!1367216) (not e!2097955))))

(assert (=> d!958857 (= res!1367216 (isDefined!5706 (getRuleFromTag!1023 thiss!18206 rules!2135 (tag!5940 (rule!7916 separatorToken!241)))))))

(declare-fun lt!1147464 () Unit!51942)

(assert (=> d!958857 (= lt!1147464 (choose!19547 thiss!18206 rules!2135 lt!1147254 separatorToken!241))))

(assert (=> d!958857 (rulesInvariant!4354 thiss!18206 rules!2135)))

(assert (=> d!958857 (= (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1023 thiss!18206 rules!2135 lt!1147254 separatorToken!241) lt!1147464)))

(declare-fun b!3379775 () Bool)

(declare-fun res!1367217 () Bool)

(assert (=> b!3379775 (=> (not res!1367217) (not e!2097955))))

(assert (=> b!3379775 (= res!1367217 (matchR!4719 (regex!5368 (get!11755 (getRuleFromTag!1023 thiss!18206 rules!2135 (tag!5940 (rule!7916 separatorToken!241))))) (list!13317 (charsOf!3382 separatorToken!241))))))

(declare-fun b!3379776 () Bool)

(assert (=> b!3379776 (= e!2097955 (= (rule!7916 separatorToken!241) (get!11755 (getRuleFromTag!1023 thiss!18206 rules!2135 (tag!5940 (rule!7916 separatorToken!241))))))))

(assert (= (and d!958857 res!1367216) b!3379775))

(assert (= (and b!3379775 res!1367217) b!3379776))

(assert (=> d!958857 m!3742975))

(assert (=> d!958857 m!3742975))

(declare-fun m!3743759 () Bool)

(assert (=> d!958857 m!3743759))

(declare-fun m!3743761 () Bool)

(assert (=> d!958857 m!3743761))

(assert (=> d!958857 m!3743007))

(assert (=> b!3379775 m!3742975))

(declare-fun m!3743763 () Bool)

(assert (=> b!3379775 m!3743763))

(assert (=> b!3379775 m!3743045))

(declare-fun m!3743765 () Bool)

(assert (=> b!3379775 m!3743765))

(assert (=> b!3379775 m!3743037))

(assert (=> b!3379775 m!3743045))

(assert (=> b!3379775 m!3742975))

(assert (=> b!3379775 m!3743037))

(assert (=> b!3379776 m!3742975))

(assert (=> b!3379776 m!3742975))

(assert (=> b!3379776 m!3743763))

(assert (=> b!3379097 d!958857))

(declare-fun b!3379777 () Bool)

(declare-fun e!2097962 () Bool)

(assert (=> b!3379777 (= e!2097962 (matchR!4719 (derivativeStep!3001 (regex!5368 lt!1147231) (head!7215 lt!1147254)) (tail!5347 lt!1147254)))))

(declare-fun b!3379778 () Bool)

(declare-fun e!2097958 () Bool)

(assert (=> b!3379778 (= e!2097958 (not (= (head!7215 lt!1147254) (c!575376 (regex!5368 lt!1147231)))))))

(declare-fun b!3379779 () Bool)

(declare-fun e!2097957 () Bool)

(assert (=> b!3379779 (= e!2097957 (= (head!7215 lt!1147254) (c!575376 (regex!5368 lt!1147231))))))

(declare-fun b!3379780 () Bool)

(declare-fun res!1367224 () Bool)

(declare-fun e!2097959 () Bool)

(assert (=> b!3379780 (=> res!1367224 e!2097959)))

(assert (=> b!3379780 (= res!1367224 (not ((_ is ElementMatch!10127) (regex!5368 lt!1147231))))))

(declare-fun e!2097960 () Bool)

(assert (=> b!3379780 (= e!2097960 e!2097959)))

(declare-fun b!3379782 () Bool)

(assert (=> b!3379782 (= e!2097962 (nullable!3448 (regex!5368 lt!1147231)))))

(declare-fun b!3379783 () Bool)

(declare-fun res!1367223 () Bool)

(assert (=> b!3379783 (=> (not res!1367223) (not e!2097957))))

(declare-fun call!244478 () Bool)

(assert (=> b!3379783 (= res!1367223 (not call!244478))))

(declare-fun b!3379784 () Bool)

(declare-fun res!1367225 () Bool)

(assert (=> b!3379784 (=> (not res!1367225) (not e!2097957))))

(assert (=> b!3379784 (= res!1367225 (isEmpty!21065 (tail!5347 lt!1147254)))))

(declare-fun bm!244473 () Bool)

(assert (=> bm!244473 (= call!244478 (isEmpty!21065 lt!1147254))))

(declare-fun b!3379785 () Bool)

(declare-fun e!2097961 () Bool)

(assert (=> b!3379785 (= e!2097961 e!2097960)))

(declare-fun c!575510 () Bool)

(assert (=> b!3379785 (= c!575510 ((_ is EmptyLang!10127) (regex!5368 lt!1147231)))))

(declare-fun b!3379786 () Bool)

(declare-fun res!1367219 () Bool)

(assert (=> b!3379786 (=> res!1367219 e!2097959)))

(assert (=> b!3379786 (= res!1367219 e!2097957)))

(declare-fun res!1367218 () Bool)

(assert (=> b!3379786 (=> (not res!1367218) (not e!2097957))))

(declare-fun lt!1147465 () Bool)

(assert (=> b!3379786 (= res!1367218 lt!1147465)))

(declare-fun b!3379787 () Bool)

(declare-fun res!1367221 () Bool)

(assert (=> b!3379787 (=> res!1367221 e!2097958)))

(assert (=> b!3379787 (= res!1367221 (not (isEmpty!21065 (tail!5347 lt!1147254))))))

(declare-fun b!3379788 () Bool)

(declare-fun e!2097956 () Bool)

(assert (=> b!3379788 (= e!2097959 e!2097956)))

(declare-fun res!1367220 () Bool)

(assert (=> b!3379788 (=> (not res!1367220) (not e!2097956))))

(assert (=> b!3379788 (= res!1367220 (not lt!1147465))))

(declare-fun d!958859 () Bool)

(assert (=> d!958859 e!2097961))

(declare-fun c!575509 () Bool)

(assert (=> d!958859 (= c!575509 ((_ is EmptyExpr!10127) (regex!5368 lt!1147231)))))

(assert (=> d!958859 (= lt!1147465 e!2097962)))

(declare-fun c!575508 () Bool)

(assert (=> d!958859 (= c!575508 (isEmpty!21065 lt!1147254))))

(assert (=> d!958859 (validRegex!4604 (regex!5368 lt!1147231))))

(assert (=> d!958859 (= (matchR!4719 (regex!5368 lt!1147231) lt!1147254) lt!1147465)))

(declare-fun b!3379781 () Bool)

(assert (=> b!3379781 (= e!2097960 (not lt!1147465))))

(declare-fun b!3379789 () Bool)

(assert (=> b!3379789 (= e!2097961 (= lt!1147465 call!244478))))

(declare-fun b!3379790 () Bool)

(assert (=> b!3379790 (= e!2097956 e!2097958)))

(declare-fun res!1367222 () Bool)

(assert (=> b!3379790 (=> res!1367222 e!2097958)))

(assert (=> b!3379790 (= res!1367222 call!244478)))

(assert (= (and d!958859 c!575508) b!3379782))

(assert (= (and d!958859 (not c!575508)) b!3379777))

(assert (= (and d!958859 c!575509) b!3379789))

(assert (= (and d!958859 (not c!575509)) b!3379785))

(assert (= (and b!3379785 c!575510) b!3379781))

(assert (= (and b!3379785 (not c!575510)) b!3379780))

(assert (= (and b!3379780 (not res!1367224)) b!3379786))

(assert (= (and b!3379786 res!1367218) b!3379783))

(assert (= (and b!3379783 res!1367223) b!3379784))

(assert (= (and b!3379784 res!1367225) b!3379779))

(assert (= (and b!3379786 (not res!1367219)) b!3379788))

(assert (= (and b!3379788 res!1367220) b!3379790))

(assert (= (and b!3379790 (not res!1367222)) b!3379787))

(assert (= (and b!3379787 (not res!1367221)) b!3379778))

(assert (= (or b!3379789 b!3379783 b!3379790) bm!244473))

(assert (=> b!3379779 m!3742993))

(assert (=> b!3379787 m!3743275))

(assert (=> b!3379787 m!3743275))

(assert (=> b!3379787 m!3743277))

(assert (=> b!3379777 m!3742993))

(assert (=> b!3379777 m!3742993))

(declare-fun m!3743767 () Bool)

(assert (=> b!3379777 m!3743767))

(assert (=> b!3379777 m!3743275))

(assert (=> b!3379777 m!3743767))

(assert (=> b!3379777 m!3743275))

(declare-fun m!3743769 () Bool)

(assert (=> b!3379777 m!3743769))

(declare-fun m!3743771 () Bool)

(assert (=> b!3379782 m!3743771))

(assert (=> b!3379784 m!3743275))

(assert (=> b!3379784 m!3743275))

(assert (=> b!3379784 m!3743277))

(assert (=> bm!244473 m!3743285))

(assert (=> d!958859 m!3743285))

(declare-fun m!3743773 () Bool)

(assert (=> d!958859 m!3743773))

(assert (=> b!3379778 m!3742993))

(assert (=> b!3379118 d!958859))

(declare-fun d!958861 () Bool)

(assert (=> d!958861 (= (get!11755 lt!1147250) (v!36451 lt!1147250))))

(assert (=> b!3379118 d!958861))

(declare-fun b!3379791 () Bool)

(declare-fun e!2097965 () Bool)

(assert (=> b!3379791 (= e!2097965 (inv!17 (value!173448 (h!42258 tokens!494))))))

(declare-fun b!3379792 () Bool)

(declare-fun e!2097963 () Bool)

(assert (=> b!3379792 (= e!2097963 e!2097965)))

(declare-fun c!575511 () Bool)

(assert (=> b!3379792 (= c!575511 ((_ is IntegerValue!16795) (value!173448 (h!42258 tokens!494))))))

(declare-fun d!958863 () Bool)

(declare-fun c!575512 () Bool)

(assert (=> d!958863 (= c!575512 ((_ is IntegerValue!16794) (value!173448 (h!42258 tokens!494))))))

(assert (=> d!958863 (= (inv!21 (value!173448 (h!42258 tokens!494))) e!2097963)))

(declare-fun b!3379793 () Bool)

(declare-fun res!1367226 () Bool)

(declare-fun e!2097964 () Bool)

(assert (=> b!3379793 (=> res!1367226 e!2097964)))

(assert (=> b!3379793 (= res!1367226 (not ((_ is IntegerValue!16796) (value!173448 (h!42258 tokens!494)))))))

(assert (=> b!3379793 (= e!2097965 e!2097964)))

(declare-fun b!3379794 () Bool)

(assert (=> b!3379794 (= e!2097964 (inv!15 (value!173448 (h!42258 tokens!494))))))

(declare-fun b!3379795 () Bool)

(assert (=> b!3379795 (= e!2097963 (inv!16 (value!173448 (h!42258 tokens!494))))))

(assert (= (and d!958863 c!575512) b!3379795))

(assert (= (and d!958863 (not c!575512)) b!3379792))

(assert (= (and b!3379792 c!575511) b!3379791))

(assert (= (and b!3379792 (not c!575511)) b!3379793))

(assert (= (and b!3379793 (not res!1367226)) b!3379794))

(declare-fun m!3743775 () Bool)

(assert (=> b!3379791 m!3743775))

(declare-fun m!3743777 () Bool)

(assert (=> b!3379794 m!3743777))

(declare-fun m!3743779 () Bool)

(assert (=> b!3379795 m!3743779))

(assert (=> b!3379127 d!958863))

(declare-fun d!958865 () Bool)

(assert (=> d!958865 (dynLambda!15308 lambda!120435 (h!42258 tokens!494))))

(declare-fun lt!1147468 () Unit!51942)

(declare-fun choose!19548 (List!36962 Int Token!10102) Unit!51942)

(assert (=> d!958865 (= lt!1147468 (choose!19548 tokens!494 lambda!120435 (h!42258 tokens!494)))))

(declare-fun e!2097968 () Bool)

(assert (=> d!958865 e!2097968))

(declare-fun res!1367229 () Bool)

(assert (=> d!958865 (=> (not res!1367229) (not e!2097968))))

(assert (=> d!958865 (= res!1367229 (forall!7747 tokens!494 lambda!120435))))

(assert (=> d!958865 (= (forallContained!1315 tokens!494 lambda!120435 (h!42258 tokens!494)) lt!1147468)))

(declare-fun b!3379798 () Bool)

(declare-fun contains!6729 (List!36962 Token!10102) Bool)

(assert (=> b!3379798 (= e!2097968 (contains!6729 tokens!494 (h!42258 tokens!494)))))

(assert (= (and d!958865 res!1367229) b!3379798))

(declare-fun b_lambda!95905 () Bool)

(assert (=> (not b_lambda!95905) (not d!958865)))

(assert (=> d!958865 m!3743313))

(declare-fun m!3743781 () Bool)

(assert (=> d!958865 m!3743781))

(assert (=> d!958865 m!3742949))

(declare-fun m!3743783 () Bool)

(assert (=> b!3379798 m!3743783))

(assert (=> b!3379106 d!958865))

(declare-fun d!958867 () Bool)

(assert (=> d!958867 (= (list!13317 (charsOf!3382 (h!42258 tokens!494))) (list!13321 (c!575377 (charsOf!3382 (h!42258 tokens!494)))))))

(declare-fun bs!554718 () Bool)

(assert (= bs!554718 d!958867))

(declare-fun m!3743785 () Bool)

(assert (=> bs!554718 m!3743785))

(assert (=> b!3379105 d!958867))

(declare-fun d!958869 () Bool)

(declare-fun lt!1147469 () BalanceConc!21836)

(assert (=> d!958869 (= (list!13317 lt!1147469) (originalCharacters!6082 (h!42258 tokens!494)))))

(assert (=> d!958869 (= lt!1147469 (dynLambda!15309 (toChars!7411 (transformation!5368 (rule!7916 (h!42258 tokens!494)))) (value!173448 (h!42258 tokens!494))))))

(assert (=> d!958869 (= (charsOf!3382 (h!42258 tokens!494)) lt!1147469)))

(declare-fun b_lambda!95907 () Bool)

(assert (=> (not b_lambda!95907) (not d!958869)))

(assert (=> d!958869 t!263039))

(declare-fun b_and!234777 () Bool)

(assert (= b_and!234745 (and (=> t!263039 result!223308) b_and!234777)))

(assert (=> d!958869 t!263041))

(declare-fun b_and!234779 () Bool)

(assert (= b_and!234747 (and (=> t!263041 result!223310) b_and!234779)))

(assert (=> d!958869 t!263043))

(declare-fun b_and!234781 () Bool)

(assert (= b_and!234749 (and (=> t!263043 result!223312) b_and!234781)))

(declare-fun m!3743787 () Bool)

(assert (=> d!958869 m!3743787))

(assert (=> d!958869 m!3743425))

(assert (=> b!3379105 d!958869))

(declare-fun d!958871 () Bool)

(declare-fun res!1367232 () Bool)

(declare-fun e!2097971 () Bool)

(assert (=> d!958871 (=> (not res!1367232) (not e!2097971))))

(declare-fun rulesValid!1999 (LexerInterface!4957 List!36963) Bool)

(assert (=> d!958871 (= res!1367232 (rulesValid!1999 thiss!18206 rules!2135))))

(assert (=> d!958871 (= (rulesInvariant!4354 thiss!18206 rules!2135) e!2097971)))

(declare-fun b!3379801 () Bool)

(declare-datatypes ((List!36965 0))(
  ( (Nil!36841) (Cons!36841 (h!42261 String!41324) (t!263086 List!36965)) )
))
(declare-fun noDuplicateTag!1995 (LexerInterface!4957 List!36963 List!36965) Bool)

(assert (=> b!3379801 (= e!2097971 (noDuplicateTag!1995 thiss!18206 rules!2135 Nil!36841))))

(assert (= (and d!958871 res!1367232) b!3379801))

(declare-fun m!3743789 () Bool)

(assert (=> d!958871 m!3743789))

(declare-fun m!3743791 () Bool)

(assert (=> b!3379801 m!3743791))

(assert (=> b!3379125 d!958871))

(declare-fun d!958873 () Bool)

(declare-fun lt!1147472 () BalanceConc!21836)

(assert (=> d!958873 (= (list!13317 lt!1147472) (printList!1505 thiss!18206 (list!13318 lt!1147240)))))

(assert (=> d!958873 (= lt!1147472 (printTailRec!1452 thiss!18206 lt!1147240 0 (BalanceConc!21837 Empty!11111)))))

(assert (=> d!958873 (= (print!2022 thiss!18206 lt!1147240) lt!1147472)))

(declare-fun bs!554719 () Bool)

(assert (= bs!554719 d!958873))

(declare-fun m!3743793 () Bool)

(assert (=> bs!554719 m!3743793))

(declare-fun m!3743795 () Bool)

(assert (=> bs!554719 m!3743795))

(assert (=> bs!554719 m!3743795))

(declare-fun m!3743797 () Bool)

(assert (=> bs!554719 m!3743797))

(assert (=> bs!554719 m!3743017))

(assert (=> b!3379124 d!958873))

(declare-fun d!958875 () Bool)

(assert (=> d!958875 (= (list!13317 lt!1147241) (list!13321 (c!575377 lt!1147241)))))

(declare-fun bs!554720 () Bool)

(assert (= bs!554720 d!958875))

(declare-fun m!3743799 () Bool)

(assert (=> bs!554720 m!3743799))

(assert (=> b!3379124 d!958875))

(declare-fun d!958877 () Bool)

(declare-fun lt!1147489 () BalanceConc!21836)

(declare-fun printListTailRec!644 (LexerInterface!4957 List!36962 List!36961) List!36961)

(declare-fun dropList!1161 (BalanceConc!21838 Int) List!36962)

(assert (=> d!958877 (= (list!13317 lt!1147489) (printListTailRec!644 thiss!18206 (dropList!1161 lt!1147240 0) (list!13317 (BalanceConc!21837 Empty!11111))))))

(declare-fun e!2097977 () BalanceConc!21836)

(assert (=> d!958877 (= lt!1147489 e!2097977)))

(declare-fun c!575515 () Bool)

(assert (=> d!958877 (= c!575515 (>= 0 (size!27877 lt!1147240)))))

(declare-fun e!2097976 () Bool)

(assert (=> d!958877 e!2097976))

(declare-fun res!1367235 () Bool)

(assert (=> d!958877 (=> (not res!1367235) (not e!2097976))))

(assert (=> d!958877 (= res!1367235 (>= 0 0))))

(assert (=> d!958877 (= (printTailRec!1452 thiss!18206 lt!1147240 0 (BalanceConc!21837 Empty!11111)) lt!1147489)))

(declare-fun b!3379808 () Bool)

(assert (=> b!3379808 (= e!2097976 (<= 0 (size!27877 lt!1147240)))))

(declare-fun b!3379809 () Bool)

(assert (=> b!3379809 (= e!2097977 (BalanceConc!21837 Empty!11111))))

(declare-fun b!3379810 () Bool)

(declare-fun ++!9001 (BalanceConc!21836 BalanceConc!21836) BalanceConc!21836)

(assert (=> b!3379810 (= e!2097977 (printTailRec!1452 thiss!18206 lt!1147240 (+ 0 1) (++!9001 (BalanceConc!21837 Empty!11111) (charsOf!3382 (apply!8560 lt!1147240 0)))))))

(declare-fun lt!1147491 () List!36962)

(assert (=> b!3379810 (= lt!1147491 (list!13318 lt!1147240))))

(declare-fun lt!1147492 () Unit!51942)

(declare-fun lemmaDropApply!1119 (List!36962 Int) Unit!51942)

(assert (=> b!3379810 (= lt!1147492 (lemmaDropApply!1119 lt!1147491 0))))

(declare-fun head!7217 (List!36962) Token!10102)

(declare-fun drop!1959 (List!36962 Int) List!36962)

(declare-fun apply!8563 (List!36962 Int) Token!10102)

(assert (=> b!3379810 (= (head!7217 (drop!1959 lt!1147491 0)) (apply!8563 lt!1147491 0))))

(declare-fun lt!1147487 () Unit!51942)

(assert (=> b!3379810 (= lt!1147487 lt!1147492)))

(declare-fun lt!1147488 () List!36962)

(assert (=> b!3379810 (= lt!1147488 (list!13318 lt!1147240))))

(declare-fun lt!1147493 () Unit!51942)

(declare-fun lemmaDropTail!1003 (List!36962 Int) Unit!51942)

(assert (=> b!3379810 (= lt!1147493 (lemmaDropTail!1003 lt!1147488 0))))

(declare-fun tail!5349 (List!36962) List!36962)

(assert (=> b!3379810 (= (tail!5349 (drop!1959 lt!1147488 0)) (drop!1959 lt!1147488 (+ 0 1)))))

(declare-fun lt!1147490 () Unit!51942)

(assert (=> b!3379810 (= lt!1147490 lt!1147493)))

(assert (= (and d!958877 res!1367235) b!3379808))

(assert (= (and d!958877 c!575515) b!3379809))

(assert (= (and d!958877 (not c!575515)) b!3379810))

(declare-fun m!3743801 () Bool)

(assert (=> d!958877 m!3743801))

(declare-fun m!3743803 () Bool)

(assert (=> d!958877 m!3743803))

(declare-fun m!3743805 () Bool)

(assert (=> d!958877 m!3743805))

(assert (=> d!958877 m!3743803))

(declare-fun m!3743807 () Bool)

(assert (=> d!958877 m!3743807))

(declare-fun m!3743809 () Bool)

(assert (=> d!958877 m!3743809))

(assert (=> d!958877 m!3743807))

(assert (=> b!3379808 m!3743801))

(assert (=> b!3379810 m!3743795))

(declare-fun m!3743811 () Bool)

(assert (=> b!3379810 m!3743811))

(declare-fun m!3743813 () Bool)

(assert (=> b!3379810 m!3743813))

(declare-fun m!3743815 () Bool)

(assert (=> b!3379810 m!3743815))

(declare-fun m!3743817 () Bool)

(assert (=> b!3379810 m!3743817))

(declare-fun m!3743819 () Bool)

(assert (=> b!3379810 m!3743819))

(declare-fun m!3743821 () Bool)

(assert (=> b!3379810 m!3743821))

(declare-fun m!3743823 () Bool)

(assert (=> b!3379810 m!3743823))

(declare-fun m!3743825 () Bool)

(assert (=> b!3379810 m!3743825))

(declare-fun m!3743827 () Bool)

(assert (=> b!3379810 m!3743827))

(assert (=> b!3379810 m!3743811))

(declare-fun m!3743829 () Bool)

(assert (=> b!3379810 m!3743829))

(declare-fun m!3743831 () Bool)

(assert (=> b!3379810 m!3743831))

(assert (=> b!3379810 m!3743819))

(assert (=> b!3379810 m!3743823))

(declare-fun m!3743833 () Bool)

(assert (=> b!3379810 m!3743833))

(assert (=> b!3379810 m!3743829))

(assert (=> b!3379810 m!3743815))

(assert (=> b!3379124 d!958877))

(declare-fun d!958879 () Bool)

(declare-fun e!2097980 () Bool)

(assert (=> d!958879 e!2097980))

(declare-fun res!1367238 () Bool)

(assert (=> d!958879 (=> (not res!1367238) (not e!2097980))))

(declare-fun lt!1147496 () BalanceConc!21838)

(assert (=> d!958879 (= res!1367238 (= (list!13318 lt!1147496) (Cons!36838 (h!42258 tokens!494) Nil!36838)))))

(declare-fun singleton!1076 (Token!10102) BalanceConc!21838)

(assert (=> d!958879 (= lt!1147496 (singleton!1076 (h!42258 tokens!494)))))

(assert (=> d!958879 (= (singletonSeq!2464 (h!42258 tokens!494)) lt!1147496)))

(declare-fun b!3379813 () Bool)

(declare-fun isBalanced!3349 (Conc!11112) Bool)

(assert (=> b!3379813 (= e!2097980 (isBalanced!3349 (c!575378 lt!1147496)))))

(assert (= (and d!958879 res!1367238) b!3379813))

(declare-fun m!3743835 () Bool)

(assert (=> d!958879 m!3743835))

(declare-fun m!3743837 () Bool)

(assert (=> d!958879 m!3743837))

(declare-fun m!3743839 () Bool)

(assert (=> b!3379813 m!3743839))

(assert (=> b!3379124 d!958879))

(declare-fun d!958881 () Bool)

(declare-fun c!575518 () Bool)

(assert (=> d!958881 (= c!575518 ((_ is Cons!36838) (Cons!36838 (h!42258 tokens!494) Nil!36838)))))

(declare-fun e!2097983 () List!36961)

(assert (=> d!958881 (= (printList!1505 thiss!18206 (Cons!36838 (h!42258 tokens!494) Nil!36838)) e!2097983)))

(declare-fun b!3379818 () Bool)

(assert (=> b!3379818 (= e!2097983 (++!8999 (list!13317 (charsOf!3382 (h!42258 (Cons!36838 (h!42258 tokens!494) Nil!36838)))) (printList!1505 thiss!18206 (t!263009 (Cons!36838 (h!42258 tokens!494) Nil!36838)))))))

(declare-fun b!3379819 () Bool)

(assert (=> b!3379819 (= e!2097983 Nil!36837)))

(assert (= (and d!958881 c!575518) b!3379818))

(assert (= (and d!958881 (not c!575518)) b!3379819))

(declare-fun m!3743841 () Bool)

(assert (=> b!3379818 m!3743841))

(assert (=> b!3379818 m!3743841))

(declare-fun m!3743843 () Bool)

(assert (=> b!3379818 m!3743843))

(declare-fun m!3743845 () Bool)

(assert (=> b!3379818 m!3743845))

(assert (=> b!3379818 m!3743843))

(assert (=> b!3379818 m!3743845))

(declare-fun m!3743847 () Bool)

(assert (=> b!3379818 m!3743847))

(assert (=> b!3379124 d!958881))

(declare-fun b!3379824 () Bool)

(declare-fun e!2097986 () Bool)

(declare-fun tp_is_empty!17469 () Bool)

(declare-fun tp!1056695 () Bool)

(assert (=> b!3379824 (= e!2097986 (and tp_is_empty!17469 tp!1056695))))

(assert (=> b!3379096 (= tp!1056622 e!2097986)))

(assert (= (and b!3379096 ((_ is Cons!36837) (originalCharacters!6082 separatorToken!241))) b!3379824))

(declare-fun b!3379825 () Bool)

(declare-fun e!2097987 () Bool)

(declare-fun tp!1056696 () Bool)

(assert (=> b!3379825 (= e!2097987 (and tp_is_empty!17469 tp!1056696))))

(assert (=> b!3379127 (= tp!1056626 e!2097987)))

(assert (= (and b!3379127 ((_ is Cons!36837) (originalCharacters!6082 (h!42258 tokens!494)))) b!3379825))

(declare-fun b!3379839 () Bool)

(declare-fun b_free!88429 () Bool)

(declare-fun b_next!89133 () Bool)

(assert (=> b!3379839 (= b_free!88429 (not b_next!89133))))

(declare-fun t!263074 () Bool)

(declare-fun tb!179927 () Bool)

(assert (=> (and b!3379839 (= (toValue!7552 (transformation!5368 (rule!7916 (h!42258 (t!263009 tokens!494))))) (toValue!7552 (transformation!5368 (rule!7916 (h!42258 tokens!494))))) t!263074) tb!179927))

(declare-fun result!223352 () Bool)

(assert (= result!223352 result!223340))

(assert (=> d!958839 t!263074))

(declare-fun tp!1056710 () Bool)

(declare-fun b_and!234783 () Bool)

(assert (=> b!3379839 (= tp!1056710 (and (=> t!263074 result!223352) b_and!234783))))

(declare-fun b_free!88431 () Bool)

(declare-fun b_next!89135 () Bool)

(assert (=> b!3379839 (= b_free!88431 (not b_next!89135))))

(declare-fun tb!179929 () Bool)

(declare-fun t!263076 () Bool)

(assert (=> (and b!3379839 (= (toChars!7411 (transformation!5368 (rule!7916 (h!42258 (t!263009 tokens!494))))) (toChars!7411 (transformation!5368 (rule!7916 separatorToken!241)))) t!263076) tb!179929))

(declare-fun result!223354 () Bool)

(assert (= result!223354 result!223292))

(assert (=> b!3379445 t!263076))

(declare-fun t!263078 () Bool)

(declare-fun tb!179931 () Bool)

(assert (=> (and b!3379839 (= (toChars!7411 (transformation!5368 (rule!7916 (h!42258 (t!263009 tokens!494))))) (toChars!7411 (transformation!5368 (rule!7916 (h!42258 tokens!494))))) t!263078) tb!179931))

(declare-fun result!223356 () Bool)

(assert (= result!223356 result!223308))

(assert (=> b!3379503 t!263078))

(assert (=> d!958771 t!263076))

(assert (=> d!958869 t!263078))

(declare-fun b_and!234785 () Bool)

(declare-fun tp!1056711 () Bool)

(assert (=> b!3379839 (= tp!1056711 (and (=> t!263076 result!223354) (=> t!263078 result!223356) b_and!234785))))

(declare-fun e!2098003 () Bool)

(assert (=> b!3379839 (= e!2098003 (and tp!1056710 tp!1056711))))

(declare-fun tp!1056709 () Bool)

(declare-fun b!3379837 () Bool)

(declare-fun e!2098005 () Bool)

(declare-fun e!2098004 () Bool)

(assert (=> b!3379837 (= e!2098005 (and (inv!21 (value!173448 (h!42258 (t!263009 tokens!494)))) e!2098004 tp!1056709))))

(declare-fun b!3379836 () Bool)

(declare-fun tp!1056707 () Bool)

(declare-fun e!2098002 () Bool)

(assert (=> b!3379836 (= e!2098002 (and (inv!49906 (h!42258 (t!263009 tokens!494))) e!2098005 tp!1056707))))

(declare-fun b!3379838 () Bool)

(declare-fun tp!1056708 () Bool)

(assert (=> b!3379838 (= e!2098004 (and tp!1056708 (inv!49903 (tag!5940 (rule!7916 (h!42258 (t!263009 tokens!494))))) (inv!49907 (transformation!5368 (rule!7916 (h!42258 (t!263009 tokens!494))))) e!2098003))))

(assert (=> b!3379121 (= tp!1056625 e!2098002)))

(assert (= b!3379838 b!3379839))

(assert (= b!3379837 b!3379838))

(assert (= b!3379836 b!3379837))

(assert (= (and b!3379121 ((_ is Cons!36838) (t!263009 tokens!494))) b!3379836))

(declare-fun m!3743849 () Bool)

(assert (=> b!3379837 m!3743849))

(declare-fun m!3743851 () Bool)

(assert (=> b!3379836 m!3743851))

(declare-fun m!3743853 () Bool)

(assert (=> b!3379838 m!3743853))

(declare-fun m!3743855 () Bool)

(assert (=> b!3379838 m!3743855))

(declare-fun b!3379853 () Bool)

(declare-fun e!2098008 () Bool)

(declare-fun tp!1056726 () Bool)

(declare-fun tp!1056724 () Bool)

(assert (=> b!3379853 (= e!2098008 (and tp!1056726 tp!1056724))))

(declare-fun b!3379852 () Bool)

(declare-fun tp!1056725 () Bool)

(assert (=> b!3379852 (= e!2098008 tp!1056725)))

(declare-fun b!3379851 () Bool)

(declare-fun tp!1056722 () Bool)

(declare-fun tp!1056723 () Bool)

(assert (=> b!3379851 (= e!2098008 (and tp!1056722 tp!1056723))))

(assert (=> b!3379100 (= tp!1056619 e!2098008)))

(declare-fun b!3379850 () Bool)

(assert (=> b!3379850 (= e!2098008 tp_is_empty!17469)))

(assert (= (and b!3379100 ((_ is ElementMatch!10127) (regex!5368 (rule!7916 (h!42258 tokens!494))))) b!3379850))

(assert (= (and b!3379100 ((_ is Concat!15725) (regex!5368 (rule!7916 (h!42258 tokens!494))))) b!3379851))

(assert (= (and b!3379100 ((_ is Star!10127) (regex!5368 (rule!7916 (h!42258 tokens!494))))) b!3379852))

(assert (= (and b!3379100 ((_ is Union!10127) (regex!5368 (rule!7916 (h!42258 tokens!494))))) b!3379853))

(declare-fun b!3379857 () Bool)

(declare-fun e!2098009 () Bool)

(declare-fun tp!1056731 () Bool)

(declare-fun tp!1056729 () Bool)

(assert (=> b!3379857 (= e!2098009 (and tp!1056731 tp!1056729))))

(declare-fun b!3379856 () Bool)

(declare-fun tp!1056730 () Bool)

(assert (=> b!3379856 (= e!2098009 tp!1056730)))

(declare-fun b!3379855 () Bool)

(declare-fun tp!1056727 () Bool)

(declare-fun tp!1056728 () Bool)

(assert (=> b!3379855 (= e!2098009 (and tp!1056727 tp!1056728))))

(assert (=> b!3379116 (= tp!1056618 e!2098009)))

(declare-fun b!3379854 () Bool)

(assert (=> b!3379854 (= e!2098009 tp_is_empty!17469)))

(assert (= (and b!3379116 ((_ is ElementMatch!10127) (regex!5368 (h!42259 rules!2135)))) b!3379854))

(assert (= (and b!3379116 ((_ is Concat!15725) (regex!5368 (h!42259 rules!2135)))) b!3379855))

(assert (= (and b!3379116 ((_ is Star!10127) (regex!5368 (h!42259 rules!2135)))) b!3379856))

(assert (= (and b!3379116 ((_ is Union!10127) (regex!5368 (h!42259 rules!2135)))) b!3379857))

(declare-fun b!3379861 () Bool)

(declare-fun e!2098010 () Bool)

(declare-fun tp!1056736 () Bool)

(declare-fun tp!1056734 () Bool)

(assert (=> b!3379861 (= e!2098010 (and tp!1056736 tp!1056734))))

(declare-fun b!3379860 () Bool)

(declare-fun tp!1056735 () Bool)

(assert (=> b!3379860 (= e!2098010 tp!1056735)))

(declare-fun b!3379859 () Bool)

(declare-fun tp!1056732 () Bool)

(declare-fun tp!1056733 () Bool)

(assert (=> b!3379859 (= e!2098010 (and tp!1056732 tp!1056733))))

(assert (=> b!3379119 (= tp!1056627 e!2098010)))

(declare-fun b!3379858 () Bool)

(assert (=> b!3379858 (= e!2098010 tp_is_empty!17469)))

(assert (= (and b!3379119 ((_ is ElementMatch!10127) (regex!5368 (rule!7916 separatorToken!241)))) b!3379858))

(assert (= (and b!3379119 ((_ is Concat!15725) (regex!5368 (rule!7916 separatorToken!241)))) b!3379859))

(assert (= (and b!3379119 ((_ is Star!10127) (regex!5368 (rule!7916 separatorToken!241)))) b!3379860))

(assert (= (and b!3379119 ((_ is Union!10127) (regex!5368 (rule!7916 separatorToken!241)))) b!3379861))

(declare-fun b!3379872 () Bool)

(declare-fun b_free!88433 () Bool)

(declare-fun b_next!89137 () Bool)

(assert (=> b!3379872 (= b_free!88433 (not b_next!89137))))

(declare-fun t!263080 () Bool)

(declare-fun tb!179933 () Bool)

(assert (=> (and b!3379872 (= (toValue!7552 (transformation!5368 (h!42259 (t!263010 rules!2135)))) (toValue!7552 (transformation!5368 (rule!7916 (h!42258 tokens!494))))) t!263080) tb!179933))

(declare-fun result!223362 () Bool)

(assert (= result!223362 result!223340))

(assert (=> d!958839 t!263080))

(declare-fun b_and!234787 () Bool)

(declare-fun tp!1056746 () Bool)

(assert (=> b!3379872 (= tp!1056746 (and (=> t!263080 result!223362) b_and!234787))))

(declare-fun b_free!88435 () Bool)

(declare-fun b_next!89139 () Bool)

(assert (=> b!3379872 (= b_free!88435 (not b_next!89139))))

(declare-fun tb!179935 () Bool)

(declare-fun t!263082 () Bool)

(assert (=> (and b!3379872 (= (toChars!7411 (transformation!5368 (h!42259 (t!263010 rules!2135)))) (toChars!7411 (transformation!5368 (rule!7916 separatorToken!241)))) t!263082) tb!179935))

(declare-fun result!223364 () Bool)

(assert (= result!223364 result!223292))

(assert (=> b!3379445 t!263082))

(declare-fun tb!179937 () Bool)

(declare-fun t!263084 () Bool)

(assert (=> (and b!3379872 (= (toChars!7411 (transformation!5368 (h!42259 (t!263010 rules!2135)))) (toChars!7411 (transformation!5368 (rule!7916 (h!42258 tokens!494))))) t!263084) tb!179937))

(declare-fun result!223366 () Bool)

(assert (= result!223366 result!223308))

(assert (=> b!3379503 t!263084))

(assert (=> d!958771 t!263082))

(assert (=> d!958869 t!263084))

(declare-fun b_and!234789 () Bool)

(declare-fun tp!1056748 () Bool)

(assert (=> b!3379872 (= tp!1056748 (and (=> t!263082 result!223364) (=> t!263084 result!223366) b_and!234789))))

(declare-fun e!2098019 () Bool)

(assert (=> b!3379872 (= e!2098019 (and tp!1056746 tp!1056748))))

(declare-fun e!2098021 () Bool)

(declare-fun b!3379871 () Bool)

(declare-fun tp!1056745 () Bool)

(assert (=> b!3379871 (= e!2098021 (and tp!1056745 (inv!49903 (tag!5940 (h!42259 (t!263010 rules!2135)))) (inv!49907 (transformation!5368 (h!42259 (t!263010 rules!2135)))) e!2098019))))

(declare-fun b!3379870 () Bool)

(declare-fun e!2098020 () Bool)

(declare-fun tp!1056747 () Bool)

(assert (=> b!3379870 (= e!2098020 (and e!2098021 tp!1056747))))

(assert (=> b!3379123 (= tp!1056623 e!2098020)))

(assert (= b!3379871 b!3379872))

(assert (= b!3379870 b!3379871))

(assert (= (and b!3379123 ((_ is Cons!36839) (t!263010 rules!2135))) b!3379870))

(declare-fun m!3743857 () Bool)

(assert (=> b!3379871 m!3743857))

(declare-fun m!3743859 () Bool)

(assert (=> b!3379871 m!3743859))

(declare-fun b_lambda!95909 () Bool)

(assert (= b_lambda!95907 (or (and b!3379126 b_free!88411 (= (toChars!7411 (transformation!5368 (h!42259 rules!2135))) (toChars!7411 (transformation!5368 (rule!7916 (h!42258 tokens!494)))))) (and b!3379872 b_free!88435 (= (toChars!7411 (transformation!5368 (h!42259 (t!263010 rules!2135)))) (toChars!7411 (transformation!5368 (rule!7916 (h!42258 tokens!494)))))) (and b!3379103 b_free!88419 (= (toChars!7411 (transformation!5368 (rule!7916 separatorToken!241))) (toChars!7411 (transformation!5368 (rule!7916 (h!42258 tokens!494)))))) (and b!3379839 b_free!88431 (= (toChars!7411 (transformation!5368 (rule!7916 (h!42258 (t!263009 tokens!494))))) (toChars!7411 (transformation!5368 (rule!7916 (h!42258 tokens!494)))))) (and b!3379101 b_free!88415) b_lambda!95909)))

(declare-fun b_lambda!95911 () Bool)

(assert (= b_lambda!95873 (or (and b!3379839 b_free!88431 (= (toChars!7411 (transformation!5368 (rule!7916 (h!42258 (t!263009 tokens!494))))) (toChars!7411 (transformation!5368 (rule!7916 separatorToken!241))))) (and b!3379872 b_free!88435 (= (toChars!7411 (transformation!5368 (h!42259 (t!263010 rules!2135)))) (toChars!7411 (transformation!5368 (rule!7916 separatorToken!241))))) (and b!3379103 b_free!88419) (and b!3379126 b_free!88411 (= (toChars!7411 (transformation!5368 (h!42259 rules!2135))) (toChars!7411 (transformation!5368 (rule!7916 separatorToken!241))))) (and b!3379101 b_free!88415 (= (toChars!7411 (transformation!5368 (rule!7916 (h!42258 tokens!494)))) (toChars!7411 (transformation!5368 (rule!7916 separatorToken!241))))) b_lambda!95911)))

(declare-fun b_lambda!95913 () Bool)

(assert (= b_lambda!95879 (or (and b!3379126 b_free!88411 (= (toChars!7411 (transformation!5368 (h!42259 rules!2135))) (toChars!7411 (transformation!5368 (rule!7916 (h!42258 tokens!494)))))) (and b!3379872 b_free!88435 (= (toChars!7411 (transformation!5368 (h!42259 (t!263010 rules!2135)))) (toChars!7411 (transformation!5368 (rule!7916 (h!42258 tokens!494)))))) (and b!3379103 b_free!88419 (= (toChars!7411 (transformation!5368 (rule!7916 separatorToken!241))) (toChars!7411 (transformation!5368 (rule!7916 (h!42258 tokens!494)))))) (and b!3379839 b_free!88431 (= (toChars!7411 (transformation!5368 (rule!7916 (h!42258 (t!263009 tokens!494))))) (toChars!7411 (transformation!5368 (rule!7916 (h!42258 tokens!494)))))) (and b!3379101 b_free!88415) b_lambda!95913)))

(declare-fun b_lambda!95915 () Bool)

(assert (= b_lambda!95881 (or (and b!3379839 b_free!88431 (= (toChars!7411 (transformation!5368 (rule!7916 (h!42258 (t!263009 tokens!494))))) (toChars!7411 (transformation!5368 (rule!7916 separatorToken!241))))) (and b!3379872 b_free!88435 (= (toChars!7411 (transformation!5368 (h!42259 (t!263010 rules!2135)))) (toChars!7411 (transformation!5368 (rule!7916 separatorToken!241))))) (and b!3379103 b_free!88419) (and b!3379126 b_free!88411 (= (toChars!7411 (transformation!5368 (h!42259 rules!2135))) (toChars!7411 (transformation!5368 (rule!7916 separatorToken!241))))) (and b!3379101 b_free!88415 (= (toChars!7411 (transformation!5368 (rule!7916 (h!42258 tokens!494)))) (toChars!7411 (transformation!5368 (rule!7916 separatorToken!241))))) b_lambda!95915)))

(declare-fun b_lambda!95917 () Bool)

(assert (= b_lambda!95903 (or (and b!3379839 b_free!88429 (= (toValue!7552 (transformation!5368 (rule!7916 (h!42258 (t!263009 tokens!494))))) (toValue!7552 (transformation!5368 (rule!7916 (h!42258 tokens!494)))))) (and b!3379103 b_free!88417 (= (toValue!7552 (transformation!5368 (rule!7916 separatorToken!241))) (toValue!7552 (transformation!5368 (rule!7916 (h!42258 tokens!494)))))) (and b!3379126 b_free!88409 (= (toValue!7552 (transformation!5368 (h!42259 rules!2135))) (toValue!7552 (transformation!5368 (rule!7916 (h!42258 tokens!494)))))) (and b!3379872 b_free!88433 (= (toValue!7552 (transformation!5368 (h!42259 (t!263010 rules!2135)))) (toValue!7552 (transformation!5368 (rule!7916 (h!42258 tokens!494)))))) (and b!3379101 b_free!88413) b_lambda!95917)))

(declare-fun b_lambda!95919 () Bool)

(assert (= b_lambda!95905 (or b!3379113 b_lambda!95919)))

(declare-fun bs!554721 () Bool)

(declare-fun d!958883 () Bool)

(assert (= bs!554721 (and d!958883 b!3379113)))

(assert (=> bs!554721 (= (dynLambda!15308 lambda!120435 (h!42258 tokens!494)) (not (isSeparator!5368 (rule!7916 (h!42258 tokens!494)))))))

(assert (=> d!958865 d!958883))

(declare-fun b_lambda!95921 () Bool)

(assert (= b_lambda!95871 (or b!3379113 b_lambda!95921)))

(assert (=> b!3379425 d!958883))

(check-sat b_and!234789 (not d!958873) (not b_next!89137) (not b_lambda!95913) (not b!3379608) (not b_next!89139) (not b_next!89133) (not b!3379798) (not d!958707) (not b!3379859) (not b!3379765) (not d!958855) (not b!3379378) (not b!3379774) (not b_next!89123) (not tb!179885) (not b!3379555) (not d!958751) (not b!3379837) (not b!3379498) (not d!958847) (not b!3379782) (not b_next!89119) (not b!3379603) (not b!3379734) (not b!3379605) (not b!3379266) (not b!3379518) (not b_next!89121) (not d!958769) (not b!3379609) (not b!3379813) b_and!234787 (not d!958705) (not b!3379489) (not b!3379387) (not b!3379401) (not d!958869) (not d!958797) (not d!958865) (not b!3379764) (not b!3379855) (not b!3379411) (not b!3379607) (not bm!244450) (not b!3379451) (not b!3379512) b_and!234771 (not b!3379258) (not d!958831) (not d!958709) (not bm!244470) (not b_lambda!95909) (not b!3379250) (not d!958857) (not b!3379410) (not b!3379776) b_and!234785 (not d!958753) (not d!958649) (not b!3379382) (not b!3379267) (not b!3379255) (not b!3379870) (not b!3379384) b_and!234775 (not b!3379375) (not b!3379376) (not d!958721) (not d!958761) (not b_lambda!95917) (not b!3379553) (not b!3379861) (not b!3379379) (not b!3379347) (not d!958669) (not b!3379808) (not b!3379249) (not b!3379853) b_and!234773 (not d!958879) (not b!3379836) (not b!3379503) (not b!3379818) (not b!3379857) (not d!958867) (not b!3379345) (not b_next!89113) (not b!3379779) (not b!3379253) (not b!3379775) (not b!3379825) (not bm!244469) (not b!3379404) (not d!958773) (not b_lambda!95915) (not b!3379446) (not b!3379795) (not b!3379777) (not d!958691) (not b!3379248) b_and!234777 (not b!3379784) (not b!3379506) (not b!3379851) (not b!3379824) (not b!3379810) (not b!3379377) (not b!3379871) (not d!958829) (not b!3379611) (not b!3379504) (not b!3379604) (not bm!244460) (not b!3379773) (not b!3379736) (not bm!244471) (not b_next!89135) (not b!3379744) (not tb!179921) (not b!3379791) (not d!958877) (not b_next!89117) (not b!3379373) (not b!3379408) (not d!958765) (not b!3379405) (not d!958729) (not b!3379606) (not b!3379445) (not b!3379762) (not d!958689) (not bm!244437) (not b!3379409) (not d!958875) b_and!234779 (not b!3379735) tp_is_empty!17469 (not b_lambda!95911) b_and!234781 (not d!958841) (not d!958871) (not tb!179897) (not bm!244462) (not b_lambda!95921) (not d!958757) (not d!958853) (not b!3379374) (not b!3379856) (not b!3379766) (not d!958843) (not b!3379426) (not d!958775) (not b!3379751) b_and!234783 (not d!958715) (not b!3379852) (not b_next!89115) (not b!3379787) (not b!3379552) (not d!958759) (not d!958835) (not b!3379505) (not d!958783) (not d!958859) (not bm!244473) (not b!3379794) (not d!958717) (not b!3379778) (not d!958849) (not d!958771) (not b!3379838) (not b!3379860) (not b!3379346) (not b!3379801) (not d!958779) (not bm!244461) (not d!958767) (not b_lambda!95919))
(check-sat (not b_next!89123) (not b_next!89119) b_and!234771 b_and!234785 b_and!234775 b_and!234773 (not b_next!89113) b_and!234777 (not b_next!89135) (not b_next!89117) b_and!234783 (not b_next!89115) b_and!234789 (not b_next!89137) (not b_next!89139) (not b_next!89133) (not b_next!89121) b_and!234787 b_and!234779 b_and!234781)
