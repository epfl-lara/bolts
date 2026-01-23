; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!325418 () Bool)

(assert start!325418)

(declare-fun b!3502075 () Bool)

(declare-fun b_free!90457 () Bool)

(declare-fun b_next!91161 () Bool)

(assert (=> b!3502075 (= b_free!90457 (not b_next!91161))))

(declare-fun tp!1084328 () Bool)

(declare-fun b_and!248451 () Bool)

(assert (=> b!3502075 (= tp!1084328 b_and!248451)))

(declare-fun b_free!90459 () Bool)

(declare-fun b_next!91163 () Bool)

(assert (=> b!3502075 (= b_free!90459 (not b_next!91163))))

(declare-fun tp!1084329 () Bool)

(declare-fun b_and!248453 () Bool)

(assert (=> b!3502075 (= tp!1084329 b_and!248453)))

(declare-fun b!3502088 () Bool)

(declare-fun b_free!90461 () Bool)

(declare-fun b_next!91165 () Bool)

(assert (=> b!3502088 (= b_free!90461 (not b_next!91165))))

(declare-fun tp!1084331 () Bool)

(declare-fun b_and!248455 () Bool)

(assert (=> b!3502088 (= tp!1084331 b_and!248455)))

(declare-fun b_free!90463 () Bool)

(declare-fun b_next!91167 () Bool)

(assert (=> b!3502088 (= b_free!90463 (not b_next!91167))))

(declare-fun tp!1084324 () Bool)

(declare-fun b_and!248457 () Bool)

(assert (=> b!3502088 (= tp!1084324 b_and!248457)))

(declare-fun b!3502108 () Bool)

(declare-fun b_free!90465 () Bool)

(declare-fun b_next!91169 () Bool)

(assert (=> b!3502108 (= b_free!90465 (not b_next!91169))))

(declare-fun tp!1084322 () Bool)

(declare-fun b_and!248459 () Bool)

(assert (=> b!3502108 (= tp!1084322 b_and!248459)))

(declare-fun b_free!90467 () Bool)

(declare-fun b_next!91171 () Bool)

(assert (=> b!3502108 (= b_free!90467 (not b_next!91171))))

(declare-fun tp!1084332 () Bool)

(declare-fun b_and!248461 () Bool)

(assert (=> b!3502108 (= tp!1084332 b_and!248461)))

(declare-fun bs!563777 () Bool)

(declare-fun b!3502099 () Bool)

(declare-fun b!3502098 () Bool)

(assert (= bs!563777 (and b!3502099 b!3502098)))

(declare-fun lambda!122455 () Int)

(declare-fun lambda!122454 () Int)

(assert (=> bs!563777 (not (= lambda!122455 lambda!122454))))

(declare-fun b!3502124 () Bool)

(declare-fun e!2168254 () Bool)

(assert (=> b!3502124 (= e!2168254 true)))

(declare-fun b!3502123 () Bool)

(declare-fun e!2168253 () Bool)

(assert (=> b!3502123 (= e!2168253 e!2168254)))

(declare-fun b!3502122 () Bool)

(declare-fun e!2168252 () Bool)

(assert (=> b!3502122 (= e!2168252 e!2168253)))

(assert (=> b!3502099 e!2168252))

(assert (= b!3502123 b!3502124))

(assert (= b!3502122 b!3502123))

(declare-datatypes ((C!20632 0))(
  ( (C!20633 (val!12364 Int)) )
))
(declare-datatypes ((Regex!10223 0))(
  ( (ElementMatch!10223 (c!602400 C!20632)) (Concat!15917 (regOne!20958 Regex!10223) (regTwo!20958 Regex!10223)) (EmptyExpr!10223) (Star!10223 (reg!10552 Regex!10223)) (EmptyLang!10223) (Union!10223 (regOne!20959 Regex!10223) (regTwo!20959 Regex!10223)) )
))
(declare-datatypes ((List!37408 0))(
  ( (Nil!37284) (Cons!37284 (h!42704 (_ BitVec 16)) (t!279007 List!37408)) )
))
(declare-datatypes ((TokenValue!5694 0))(
  ( (FloatLiteralValue!11388 (text!40303 List!37408)) (TokenValueExt!5693 (__x!23605 Int)) (Broken!28470 (value!176158 List!37408)) (Object!5817) (End!5694) (Def!5694) (Underscore!5694) (Match!5694) (Else!5694) (Error!5694) (Case!5694) (If!5694) (Extends!5694) (Abstract!5694) (Class!5694) (Val!5694) (DelimiterValue!11388 (del!5754 List!37408)) (KeywordValue!5700 (value!176159 List!37408)) (CommentValue!11388 (value!176160 List!37408)) (WhitespaceValue!11388 (value!176161 List!37408)) (IndentationValue!5694 (value!176162 List!37408)) (String!41803) (Int32!5694) (Broken!28471 (value!176163 List!37408)) (Boolean!5695) (Unit!52849) (OperatorValue!5697 (op!5754 List!37408)) (IdentifierValue!11388 (value!176164 List!37408)) (IdentifierValue!11389 (value!176165 List!37408)) (WhitespaceValue!11389 (value!176166 List!37408)) (True!11388) (False!11388) (Broken!28472 (value!176167 List!37408)) (Broken!28473 (value!176168 List!37408)) (True!11389) (RightBrace!5694) (RightBracket!5694) (Colon!5694) (Null!5694) (Comma!5694) (LeftBracket!5694) (False!11389) (LeftBrace!5694) (ImaginaryLiteralValue!5694 (text!40304 List!37408)) (StringLiteralValue!17082 (value!176169 List!37408)) (EOFValue!5694 (value!176170 List!37408)) (IdentValue!5694 (value!176171 List!37408)) (DelimiterValue!11389 (value!176172 List!37408)) (DedentValue!5694 (value!176173 List!37408)) (NewLineValue!5694 (value!176174 List!37408)) (IntegerValue!17082 (value!176175 (_ BitVec 32)) (text!40305 List!37408)) (IntegerValue!17083 (value!176176 Int) (text!40306 List!37408)) (Times!5694) (Or!5694) (Equal!5694) (Minus!5694) (Broken!28474 (value!176177 List!37408)) (And!5694) (Div!5694) (LessEqual!5694) (Mod!5694) (Concat!15918) (Not!5694) (Plus!5694) (SpaceValue!5694 (value!176178 List!37408)) (IntegerValue!17084 (value!176179 Int) (text!40307 List!37408)) (StringLiteralValue!17083 (text!40308 List!37408)) (FloatLiteralValue!11389 (text!40309 List!37408)) (BytesLiteralValue!5694 (value!176180 List!37408)) (CommentValue!11389 (value!176181 List!37408)) (StringLiteralValue!17084 (value!176182 List!37408)) (ErrorTokenValue!5694 (msg!5755 List!37408)) )
))
(declare-datatypes ((List!37409 0))(
  ( (Nil!37285) (Cons!37285 (h!42705 C!20632) (t!279008 List!37409)) )
))
(declare-datatypes ((IArray!22611 0))(
  ( (IArray!22612 (innerList!11363 List!37409)) )
))
(declare-datatypes ((Conc!11303 0))(
  ( (Node!11303 (left!29113 Conc!11303) (right!29443 Conc!11303) (csize!22836 Int) (cheight!11514 Int)) (Leaf!17646 (xs!14489 IArray!22611) (csize!22837 Int)) (Empty!11303) )
))
(declare-datatypes ((BalanceConc!22220 0))(
  ( (BalanceConc!22221 (c!602401 Conc!11303)) )
))
(declare-datatypes ((String!41804 0))(
  ( (String!41805 (value!176183 String)) )
))
(declare-datatypes ((TokenValueInjection!10816 0))(
  ( (TokenValueInjection!10817 (toValue!7708 Int) (toChars!7567 Int)) )
))
(declare-datatypes ((Rule!10728 0))(
  ( (Rule!10729 (regex!5464 Regex!10223) (tag!6092 String!41804) (isSeparator!5464 Bool) (transformation!5464 TokenValueInjection!10816)) )
))
(declare-datatypes ((List!37410 0))(
  ( (Nil!37286) (Cons!37286 (h!42706 Rule!10728) (t!279009 List!37410)) )
))
(declare-fun rules!2135 () List!37410)

(get-info :version)

(assert (= (and b!3502099 ((_ is Cons!37286) rules!2135)) b!3502122))

(declare-fun order!19993 () Int)

(declare-fun order!19995 () Int)

(declare-fun dynLambda!15824 (Int Int) Int)

(declare-fun dynLambda!15825 (Int Int) Int)

(assert (=> b!3502124 (< (dynLambda!15824 order!19993 (toValue!7708 (transformation!5464 (h!42706 rules!2135)))) (dynLambda!15825 order!19995 lambda!122455))))

(declare-fun order!19997 () Int)

(declare-fun dynLambda!15826 (Int Int) Int)

(assert (=> b!3502124 (< (dynLambda!15826 order!19997 (toChars!7567 (transformation!5464 (h!42706 rules!2135)))) (dynLambda!15825 order!19995 lambda!122455))))

(assert (=> b!3502099 true))

(declare-fun b!3502074 () Bool)

(declare-fun e!2168238 () Bool)

(declare-datatypes ((Token!10294 0))(
  ( (Token!10295 (value!176184 TokenValue!5694) (rule!8086 Rule!10728) (size!28339 Int) (originalCharacters!6178 List!37409)) )
))
(declare-datatypes ((List!37411 0))(
  ( (Nil!37287) (Cons!37287 (h!42707 Token!10294) (t!279010 List!37411)) )
))
(declare-datatypes ((IArray!22613 0))(
  ( (IArray!22614 (innerList!11364 List!37411)) )
))
(declare-datatypes ((Conc!11304 0))(
  ( (Node!11304 (left!29114 Conc!11304) (right!29444 Conc!11304) (csize!22838 Int) (cheight!11515 Int)) (Leaf!17647 (xs!14490 IArray!22613) (csize!22839 Int)) (Empty!11304) )
))
(declare-datatypes ((BalanceConc!22222 0))(
  ( (BalanceConc!22223 (c!602402 Conc!11304)) )
))
(declare-datatypes ((tuple2!37080 0))(
  ( (tuple2!37081 (_1!21674 BalanceConc!22222) (_2!21674 BalanceConc!22220)) )
))
(declare-fun lt!1193834 () tuple2!37080)

(declare-fun isEmpty!21707 (BalanceConc!22220) Bool)

(assert (=> b!3502074 (= e!2168238 (not (isEmpty!21707 (_2!21674 lt!1193834))))))

(declare-fun e!2168228 () Bool)

(assert (=> b!3502075 (= e!2168228 (and tp!1084328 tp!1084329))))

(declare-fun b!3502076 () Bool)

(declare-datatypes ((Unit!52850 0))(
  ( (Unit!52851) )
))
(declare-fun e!2168234 () Unit!52850)

(declare-fun Unit!52852 () Unit!52850)

(assert (=> b!3502076 (= e!2168234 Unit!52852)))

(declare-fun separatorToken!241 () Token!10294)

(declare-fun lt!1193823 () List!37409)

(declare-fun lt!1193853 () C!20632)

(declare-fun lt!1193841 () Unit!52850)

(declare-fun lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!522 (Regex!10223 List!37409 C!20632) Unit!52850)

(assert (=> b!3502076 (= lt!1193841 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!522 (regex!5464 (rule!8086 separatorToken!241)) lt!1193823 lt!1193853))))

(declare-fun res!1412347 () Bool)

(declare-fun matchR!4807 (Regex!10223 List!37409) Bool)

(assert (=> b!3502076 (= res!1412347 (not (matchR!4807 (regex!5464 (rule!8086 separatorToken!241)) lt!1193823)))))

(declare-fun e!2168244 () Bool)

(assert (=> b!3502076 (=> (not res!1412347) (not e!2168244))))

(assert (=> b!3502076 e!2168244))

(declare-fun b!3502077 () Bool)

(declare-fun e!2168216 () Bool)

(declare-fun lt!1193845 () Rule!10728)

(assert (=> b!3502077 (= e!2168216 (= (rule!8086 separatorToken!241) lt!1193845))))

(declare-fun b!3502078 () Bool)

(declare-fun Unit!52853 () Unit!52850)

(assert (=> b!3502078 (= e!2168234 Unit!52853)))

(declare-fun b!3502079 () Bool)

(declare-fun e!2168230 () Bool)

(declare-fun e!2168226 () Bool)

(assert (=> b!3502079 (= e!2168230 e!2168226)))

(declare-fun res!1412339 () Bool)

(assert (=> b!3502079 (=> (not res!1412339) (not e!2168226))))

(declare-fun lt!1193847 () Rule!10728)

(declare-fun lt!1193858 () List!37409)

(assert (=> b!3502079 (= res!1412339 (matchR!4807 (regex!5464 lt!1193847) lt!1193858))))

(declare-datatypes ((Option!7585 0))(
  ( (None!7584) (Some!7584 (v!37020 Rule!10728)) )
))
(declare-fun lt!1193838 () Option!7585)

(declare-fun get!11959 (Option!7585) Rule!10728)

(assert (=> b!3502079 (= lt!1193847 (get!11959 lt!1193838))))

(declare-fun b!3502080 () Bool)

(declare-fun res!1412320 () Bool)

(declare-fun e!2168233 () Bool)

(assert (=> b!3502080 (=> (not res!1412320) (not e!2168233))))

(assert (=> b!3502080 (= res!1412320 (isSeparator!5464 (rule!8086 separatorToken!241)))))

(declare-fun b!3502081 () Bool)

(declare-fun res!1412336 () Bool)

(assert (=> b!3502081 (=> (not res!1412336) (not e!2168233))))

(declare-fun tokens!494 () List!37411)

(assert (=> b!3502081 (= res!1412336 (and (not ((_ is Nil!37287) tokens!494)) (not ((_ is Nil!37287) (t!279010 tokens!494)))))))

(declare-fun b!3502083 () Bool)

(declare-fun e!2168215 () Bool)

(assert (=> b!3502083 (= e!2168215 e!2168216)))

(declare-fun res!1412329 () Bool)

(assert (=> b!3502083 (=> (not res!1412329) (not e!2168216))))

(assert (=> b!3502083 (= res!1412329 (matchR!4807 (regex!5464 lt!1193845) lt!1193823))))

(declare-fun lt!1193821 () Option!7585)

(assert (=> b!3502083 (= lt!1193845 (get!11959 lt!1193821))))

(declare-fun b!3502084 () Bool)

(declare-fun e!2168227 () Bool)

(declare-fun e!2168213 () Bool)

(assert (=> b!3502084 (= e!2168227 e!2168213)))

(declare-fun res!1412332 () Bool)

(assert (=> b!3502084 (=> (not res!1412332) (not e!2168213))))

(declare-fun lt!1193856 () Rule!10728)

(declare-fun lt!1193830 () List!37409)

(assert (=> b!3502084 (= res!1412332 (matchR!4807 (regex!5464 lt!1193856) lt!1193830))))

(declare-fun lt!1193851 () Option!7585)

(assert (=> b!3502084 (= lt!1193856 (get!11959 lt!1193851))))

(declare-fun b!3502085 () Bool)

(declare-fun e!2168219 () Bool)

(declare-fun lt!1193824 () tuple2!37080)

(assert (=> b!3502085 (= e!2168219 (isEmpty!21707 (_2!21674 lt!1193824)))))

(declare-fun b!3502086 () Bool)

(declare-fun res!1412341 () Bool)

(assert (=> b!3502086 (=> (not res!1412341) (not e!2168233))))

(declare-fun isEmpty!21708 (List!37410) Bool)

(assert (=> b!3502086 (= res!1412341 (not (isEmpty!21708 rules!2135)))))

(declare-fun b!3502087 () Bool)

(declare-fun res!1412322 () Bool)

(declare-fun e!2168220 () Bool)

(assert (=> b!3502087 (=> res!1412322 e!2168220)))

(declare-datatypes ((LexerInterface!5053 0))(
  ( (LexerInterfaceExt!5050 (__x!23606 Int)) (Lexer!5051) )
))
(declare-fun thiss!18206 () LexerInterface!5053)

(declare-fun rulesProduceIndividualToken!2545 (LexerInterface!5053 List!37410 Token!10294) Bool)

(assert (=> b!3502087 (= res!1412322 (not (rulesProduceIndividualToken!2545 thiss!18206 rules!2135 (h!42707 tokens!494))))))

(declare-fun e!2168235 () Bool)

(assert (=> b!3502088 (= e!2168235 (and tp!1084331 tp!1084324))))

(declare-fun b!3502089 () Bool)

(declare-fun e!2168232 () Bool)

(assert (=> b!3502089 (= e!2168220 e!2168232)))

(declare-fun res!1412325 () Bool)

(assert (=> b!3502089 (=> res!1412325 e!2168232)))

(declare-fun lt!1193827 () BalanceConc!22220)

(declare-fun isEmpty!21709 (BalanceConc!22222) Bool)

(declare-fun lex!2379 (LexerInterface!5053 List!37410 BalanceConc!22220) tuple2!37080)

(assert (=> b!3502089 (= res!1412325 (isEmpty!21709 (_1!21674 (lex!2379 thiss!18206 rules!2135 lt!1193827))))))

(declare-fun seqFromList!3981 (List!37409) BalanceConc!22220)

(assert (=> b!3502089 (= lt!1193827 (seqFromList!3981 lt!1193830))))

(declare-fun b!3502090 () Bool)

(declare-fun res!1412346 () Bool)

(assert (=> b!3502090 (=> (not res!1412346) (not e!2168233))))

(declare-fun rulesProduceEachTokenIndividually!1504 (LexerInterface!5053 List!37410 BalanceConc!22222) Bool)

(declare-fun seqFromList!3982 (List!37411) BalanceConc!22222)

(assert (=> b!3502090 (= res!1412346 (rulesProduceEachTokenIndividually!1504 thiss!18206 rules!2135 (seqFromList!3982 tokens!494)))))

(declare-fun b!3502091 () Bool)

(declare-fun res!1412323 () Bool)

(assert (=> b!3502091 (=> (not res!1412323) (not e!2168233))))

(declare-fun sepAndNonSepRulesDisjointChars!1658 (List!37410 List!37410) Bool)

(assert (=> b!3502091 (= res!1412323 (sepAndNonSepRulesDisjointChars!1658 rules!2135 rules!2135))))

(declare-fun b!3502092 () Bool)

(assert (=> b!3502092 (= e!2168213 (= (rule!8086 (h!42707 tokens!494)) lt!1193856))))

(declare-fun b!3502093 () Bool)

(assert (=> b!3502093 (= e!2168244 false)))

(declare-fun b!3502094 () Bool)

(assert (=> b!3502094 (= e!2168226 (= (rule!8086 (h!42707 (t!279010 tokens!494))) lt!1193847))))

(declare-fun b!3502095 () Bool)

(declare-fun res!1412324 () Bool)

(assert (=> b!3502095 (=> res!1412324 e!2168238)))

(declare-fun apply!8848 (BalanceConc!22222 Int) Token!10294)

(assert (=> b!3502095 (= res!1412324 (not (= (apply!8848 (_1!21674 lt!1193834) 0) (h!42707 (t!279010 tokens!494)))))))

(declare-fun b!3502096 () Bool)

(declare-fun e!2168229 () Bool)

(declare-fun e!2168245 () Bool)

(declare-fun tp!1084320 () Bool)

(declare-fun inv!50497 (String!41804) Bool)

(declare-fun inv!50500 (TokenValueInjection!10816) Bool)

(assert (=> b!3502096 (= e!2168245 (and tp!1084320 (inv!50497 (tag!6092 (rule!8086 (h!42707 tokens!494)))) (inv!50500 (transformation!5464 (rule!8086 (h!42707 tokens!494)))) e!2168229))))

(declare-fun b!3502097 () Bool)

(declare-fun e!2168242 () Bool)

(declare-fun e!2168241 () Bool)

(assert (=> b!3502097 (= e!2168242 e!2168241)))

(declare-fun res!1412333 () Bool)

(assert (=> b!3502097 (=> res!1412333 e!2168241)))

(declare-fun lt!1193848 () List!37409)

(declare-fun lt!1193831 () List!37409)

(assert (=> b!3502097 (= res!1412333 (not (= lt!1193848 lt!1193831)))))

(declare-fun lt!1193832 () List!37409)

(assert (=> b!3502097 (= lt!1193832 lt!1193831)))

(declare-fun lt!1193850 () List!37409)

(declare-fun ++!9223 (List!37409 List!37409) List!37409)

(assert (=> b!3502097 (= lt!1193831 (++!9223 lt!1193830 lt!1193850))))

(declare-fun lt!1193859 () Unit!52850)

(declare-fun lt!1193839 () List!37409)

(declare-fun lemmaConcatAssociativity!1992 (List!37409 List!37409 List!37409) Unit!52850)

(assert (=> b!3502097 (= lt!1193859 (lemmaConcatAssociativity!1992 lt!1193830 lt!1193823 lt!1193839))))

(declare-fun res!1412330 () Bool)

(assert (=> b!3502098 (=> (not res!1412330) (not e!2168233))))

(declare-fun forall!7995 (List!37411 Int) Bool)

(assert (=> b!3502098 (= res!1412330 (forall!7995 tokens!494 lambda!122454))))

(declare-fun contains!6967 (List!37410 Rule!10728) Bool)

(assert (=> b!3502099 (= e!2168241 (contains!6967 rules!2135 (rule!8086 (h!42707 (t!279010 tokens!494)))))))

(assert (=> b!3502099 e!2168230))

(declare-fun res!1412337 () Bool)

(assert (=> b!3502099 (=> (not res!1412337) (not e!2168230))))

(declare-fun isDefined!5846 (Option!7585) Bool)

(assert (=> b!3502099 (= res!1412337 (isDefined!5846 lt!1193838))))

(declare-fun getRuleFromTag!1107 (LexerInterface!5053 List!37410 String!41804) Option!7585)

(assert (=> b!3502099 (= lt!1193838 (getRuleFromTag!1107 thiss!18206 rules!2135 (tag!6092 (rule!8086 (h!42707 (t!279010 tokens!494))))))))

(declare-fun lt!1193840 () Unit!52850)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1107 (LexerInterface!5053 List!37410 List!37409 Token!10294) Unit!52850)

(assert (=> b!3502099 (= lt!1193840 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1107 thiss!18206 rules!2135 lt!1193858 (h!42707 (t!279010 tokens!494))))))

(declare-fun lt!1193825 () Bool)

(assert (=> b!3502099 lt!1193825))

(declare-fun lt!1193828 () Unit!52850)

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!1042 (LexerInterface!5053 List!37410 List!37411 Token!10294) Unit!52850)

(assert (=> b!3502099 (= lt!1193828 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!1042 thiss!18206 rules!2135 tokens!494 (h!42707 (t!279010 tokens!494))))))

(declare-datatypes ((tuple2!37082 0))(
  ( (tuple2!37083 (_1!21675 Token!10294) (_2!21675 List!37409)) )
))
(declare-datatypes ((Option!7586 0))(
  ( (None!7585) (Some!7585 (v!37021 tuple2!37082)) )
))
(declare-fun maxPrefix!2593 (LexerInterface!5053 List!37410 List!37409) Option!7586)

(assert (=> b!3502099 (= (maxPrefix!2593 thiss!18206 rules!2135 lt!1193831) (Some!7585 (tuple2!37083 (h!42707 tokens!494) lt!1193850)))))

(declare-fun lt!1193854 () Unit!52850)

(declare-fun lemmaMaxPrefWithOtherTypeUsedCharAtStartOfSuffixReturnSame!220 (LexerInterface!5053 List!37410 Token!10294 Rule!10728 List!37409 Rule!10728) Unit!52850)

(assert (=> b!3502099 (= lt!1193854 (lemmaMaxPrefWithOtherTypeUsedCharAtStartOfSuffixReturnSame!220 thiss!18206 rules!2135 (h!42707 tokens!494) (rule!8086 (h!42707 tokens!494)) lt!1193850 (rule!8086 separatorToken!241)))))

(declare-fun contains!6968 (List!37409 C!20632) Bool)

(declare-fun usedCharacters!698 (Regex!10223) List!37409)

(assert (=> b!3502099 (not (contains!6968 (usedCharacters!698 (regex!5464 (rule!8086 (h!42707 tokens!494)))) lt!1193853))))

(declare-fun lt!1193860 () Unit!52850)

(declare-fun lemmaNonSepRuleNotContainsCharContainedInASepRule!264 (LexerInterface!5053 List!37410 List!37410 Rule!10728 Rule!10728 C!20632) Unit!52850)

(assert (=> b!3502099 (= lt!1193860 (lemmaNonSepRuleNotContainsCharContainedInASepRule!264 thiss!18206 rules!2135 rules!2135 (rule!8086 (h!42707 tokens!494)) (rule!8086 separatorToken!241) lt!1193853))))

(declare-fun lt!1193833 () Unit!52850)

(declare-fun forallContained!1411 (List!37411 Int Token!10294) Unit!52850)

(assert (=> b!3502099 (= lt!1193833 (forallContained!1411 tokens!494 lambda!122455 (h!42707 (t!279010 tokens!494))))))

(declare-fun lt!1193835 () Bool)

(assert (=> b!3502099 (= lt!1193825 (not lt!1193835))))

(assert (=> b!3502099 (= lt!1193825 (rulesProduceIndividualToken!2545 thiss!18206 rules!2135 (h!42707 (t!279010 tokens!494))))))

(assert (=> b!3502099 (= lt!1193835 e!2168238)))

(declare-fun res!1412321 () Bool)

(assert (=> b!3502099 (=> res!1412321 e!2168238)))

(declare-fun size!28340 (BalanceConc!22222) Int)

(assert (=> b!3502099 (= res!1412321 (not (= (size!28340 (_1!21674 lt!1193834)) 1)))))

(declare-fun lt!1193849 () BalanceConc!22220)

(assert (=> b!3502099 (= lt!1193834 (lex!2379 thiss!18206 rules!2135 lt!1193849))))

(declare-fun lt!1193826 () BalanceConc!22222)

(declare-fun printTailRec!1548 (LexerInterface!5053 BalanceConc!22222 Int BalanceConc!22220) BalanceConc!22220)

(assert (=> b!3502099 (= lt!1193849 (printTailRec!1548 thiss!18206 lt!1193826 0 (BalanceConc!22221 Empty!11303)))))

(declare-fun print!2118 (LexerInterface!5053 BalanceConc!22222) BalanceConc!22220)

(assert (=> b!3502099 (= lt!1193849 (print!2118 thiss!18206 lt!1193826))))

(declare-fun singletonSeq!2560 (Token!10294) BalanceConc!22222)

(assert (=> b!3502099 (= lt!1193826 (singletonSeq!2560 (h!42707 (t!279010 tokens!494))))))

(assert (=> b!3502099 e!2168219))

(declare-fun res!1412343 () Bool)

(assert (=> b!3502099 (=> (not res!1412343) (not e!2168219))))

(assert (=> b!3502099 (= res!1412343 (= (size!28340 (_1!21674 lt!1193824)) 1))))

(declare-fun lt!1193829 () BalanceConc!22220)

(assert (=> b!3502099 (= lt!1193824 (lex!2379 thiss!18206 rules!2135 lt!1193829))))

(declare-fun lt!1193852 () BalanceConc!22222)

(assert (=> b!3502099 (= lt!1193829 (printTailRec!1548 thiss!18206 lt!1193852 0 (BalanceConc!22221 Empty!11303)))))

(assert (=> b!3502099 (= lt!1193829 (print!2118 thiss!18206 lt!1193852))))

(assert (=> b!3502099 (= lt!1193852 (singletonSeq!2560 separatorToken!241))))

(declare-fun lt!1193844 () Unit!52850)

(assert (=> b!3502099 (= lt!1193844 e!2168234)))

(declare-fun c!602399 () Bool)

(assert (=> b!3502099 (= c!602399 (not (contains!6968 (usedCharacters!698 (regex!5464 (rule!8086 separatorToken!241))) lt!1193853)))))

(declare-fun head!7363 (List!37409) C!20632)

(assert (=> b!3502099 (= lt!1193853 (head!7363 lt!1193823))))

(assert (=> b!3502099 e!2168215))

(declare-fun res!1412335 () Bool)

(assert (=> b!3502099 (=> (not res!1412335) (not e!2168215))))

(assert (=> b!3502099 (= res!1412335 (isDefined!5846 lt!1193821))))

(assert (=> b!3502099 (= lt!1193821 (getRuleFromTag!1107 thiss!18206 rules!2135 (tag!6092 (rule!8086 separatorToken!241))))))

(declare-fun lt!1193836 () Unit!52850)

(assert (=> b!3502099 (= lt!1193836 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1107 thiss!18206 rules!2135 lt!1193823 separatorToken!241))))

(declare-fun maxPrefixOneRule!1760 (LexerInterface!5053 Rule!10728 List!37409) Option!7586)

(declare-fun apply!8849 (TokenValueInjection!10816 BalanceConc!22220) TokenValue!5694)

(declare-fun size!28341 (List!37409) Int)

(assert (=> b!3502099 (= (maxPrefixOneRule!1760 thiss!18206 (rule!8086 (h!42707 tokens!494)) lt!1193830) (Some!7585 (tuple2!37083 (Token!10295 (apply!8849 (transformation!5464 (rule!8086 (h!42707 tokens!494))) lt!1193827) (rule!8086 (h!42707 tokens!494)) (size!28341 lt!1193830) lt!1193830) Nil!37285)))))

(declare-fun lt!1193820 () Unit!52850)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!853 (LexerInterface!5053 List!37410 List!37409 List!37409 List!37409 Rule!10728) Unit!52850)

(assert (=> b!3502099 (= lt!1193820 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!853 thiss!18206 rules!2135 lt!1193830 lt!1193830 Nil!37285 (rule!8086 (h!42707 tokens!494))))))

(assert (=> b!3502099 e!2168227))

(declare-fun res!1412344 () Bool)

(assert (=> b!3502099 (=> (not res!1412344) (not e!2168227))))

(assert (=> b!3502099 (= res!1412344 (isDefined!5846 lt!1193851))))

(assert (=> b!3502099 (= lt!1193851 (getRuleFromTag!1107 thiss!18206 rules!2135 (tag!6092 (rule!8086 (h!42707 tokens!494)))))))

(declare-fun lt!1193819 () Unit!52850)

(assert (=> b!3502099 (= lt!1193819 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1107 thiss!18206 rules!2135 lt!1193830 (h!42707 tokens!494)))))

(declare-fun lt!1193822 () Unit!52850)

(assert (=> b!3502099 (= lt!1193822 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!1042 thiss!18206 rules!2135 tokens!494 (h!42707 tokens!494)))))

(declare-fun b!3502100 () Bool)

(declare-fun e!2168217 () Bool)

(declare-fun e!2168236 () Bool)

(assert (=> b!3502100 (= e!2168217 e!2168236)))

(declare-fun res!1412326 () Bool)

(assert (=> b!3502100 (=> res!1412326 e!2168236)))

(declare-fun printWithSeparatorTokenList!340 (LexerInterface!5053 List!37411 Token!10294) List!37409)

(assert (=> b!3502100 (= res!1412326 (not (= lt!1193839 (++!9223 (++!9223 lt!1193858 lt!1193823) (printWithSeparatorTokenList!340 thiss!18206 (t!279010 (t!279010 tokens!494)) separatorToken!241)))))))

(declare-fun list!13617 (BalanceConc!22220) List!37409)

(declare-fun charsOf!3478 (Token!10294) BalanceConc!22220)

(assert (=> b!3502100 (= lt!1193858 (list!13617 (charsOf!3478 (h!42707 (t!279010 tokens!494)))))))

(assert (=> b!3502100 (= lt!1193850 (++!9223 lt!1193823 lt!1193839))))

(assert (=> b!3502100 (= lt!1193823 (list!13617 (charsOf!3478 separatorToken!241)))))

(assert (=> b!3502100 (= lt!1193839 (printWithSeparatorTokenList!340 thiss!18206 (t!279010 tokens!494) separatorToken!241))))

(assert (=> b!3502100 (= lt!1193848 (printWithSeparatorTokenList!340 thiss!18206 tokens!494 separatorToken!241))))

(declare-fun e!2168224 () Bool)

(declare-fun tp!1084330 () Bool)

(declare-fun e!2168225 () Bool)

(declare-fun b!3502101 () Bool)

(declare-fun inv!21 (TokenValue!5694) Bool)

(assert (=> b!3502101 (= e!2168224 (and (inv!21 (value!176184 separatorToken!241)) e!2168225 tp!1084330))))

(declare-fun b!3502102 () Bool)

(declare-fun e!2168223 () Bool)

(declare-fun tp!1084326 () Bool)

(assert (=> b!3502102 (= e!2168223 (and (inv!21 (value!176184 (h!42707 tokens!494))) e!2168245 tp!1084326))))

(declare-fun e!2168222 () Bool)

(declare-fun tp!1084327 () Bool)

(declare-fun b!3502103 () Bool)

(declare-fun inv!50501 (Token!10294) Bool)

(assert (=> b!3502103 (= e!2168222 (and (inv!50501 (h!42707 tokens!494)) e!2168223 tp!1084327))))

(declare-fun b!3502104 () Bool)

(declare-fun res!1412342 () Bool)

(assert (=> b!3502104 (=> (not res!1412342) (not e!2168233))))

(declare-fun rulesInvariant!4450 (LexerInterface!5053 List!37410) Bool)

(assert (=> b!3502104 (= res!1412342 (rulesInvariant!4450 thiss!18206 rules!2135))))

(declare-fun tp!1084321 () Bool)

(declare-fun b!3502105 () Bool)

(assert (=> b!3502105 (= e!2168225 (and tp!1084321 (inv!50497 (tag!6092 (rule!8086 separatorToken!241))) (inv!50500 (transformation!5464 (rule!8086 separatorToken!241))) e!2168235))))

(declare-fun b!3502106 () Bool)

(declare-fun res!1412334 () Bool)

(assert (=> b!3502106 (=> (not res!1412334) (not e!2168233))))

(assert (=> b!3502106 (= res!1412334 (rulesProduceIndividualToken!2545 thiss!18206 rules!2135 separatorToken!241))))

(declare-fun b!3502082 () Bool)

(assert (=> b!3502082 (= e!2168236 e!2168242)))

(declare-fun res!1412328 () Bool)

(assert (=> b!3502082 (=> res!1412328 e!2168242)))

(assert (=> b!3502082 (= res!1412328 (not (= lt!1193848 lt!1193832)))))

(assert (=> b!3502082 (= lt!1193832 (++!9223 (++!9223 lt!1193830 lt!1193823) lt!1193839))))

(declare-fun res!1412338 () Bool)

(assert (=> start!325418 (=> (not res!1412338) (not e!2168233))))

(assert (=> start!325418 (= res!1412338 ((_ is Lexer!5051) thiss!18206))))

(assert (=> start!325418 e!2168233))

(assert (=> start!325418 true))

(declare-fun e!2168237 () Bool)

(assert (=> start!325418 e!2168237))

(assert (=> start!325418 e!2168222))

(assert (=> start!325418 (and (inv!50501 separatorToken!241) e!2168224)))

(declare-fun b!3502107 () Bool)

(declare-fun res!1412340 () Bool)

(assert (=> b!3502107 (=> (not res!1412340) (not e!2168219))))

(assert (=> b!3502107 (= res!1412340 (= (apply!8848 (_1!21674 lt!1193824) 0) separatorToken!241))))

(assert (=> b!3502108 (= e!2168229 (and tp!1084322 tp!1084332))))

(declare-fun b!3502109 () Bool)

(assert (=> b!3502109 (= e!2168232 e!2168217)))

(declare-fun res!1412345 () Bool)

(assert (=> b!3502109 (=> res!1412345 e!2168217)))

(assert (=> b!3502109 (= res!1412345 (or (isSeparator!5464 (rule!8086 (h!42707 tokens!494))) (isSeparator!5464 (rule!8086 (h!42707 (t!279010 tokens!494))))))))

(declare-fun lt!1193842 () Unit!52850)

(assert (=> b!3502109 (= lt!1193842 (forallContained!1411 tokens!494 lambda!122454 (h!42707 (t!279010 tokens!494))))))

(declare-fun lt!1193857 () Unit!52850)

(assert (=> b!3502109 (= lt!1193857 (forallContained!1411 tokens!494 lambda!122454 (h!42707 tokens!494)))))

(declare-fun b!3502110 () Bool)

(declare-fun e!2168243 () Bool)

(declare-fun tp!1084325 () Bool)

(assert (=> b!3502110 (= e!2168237 (and e!2168243 tp!1084325))))

(declare-fun b!3502111 () Bool)

(declare-fun e!2168221 () Bool)

(assert (=> b!3502111 (= e!2168221 e!2168220)))

(declare-fun res!1412327 () Bool)

(assert (=> b!3502111 (=> res!1412327 e!2168220)))

(declare-fun lt!1193837 () List!37409)

(declare-fun lt!1193855 () List!37409)

(assert (=> b!3502111 (= res!1412327 (or (not (= lt!1193837 lt!1193830)) (not (= lt!1193855 lt!1193830))))))

(assert (=> b!3502111 (= lt!1193830 (list!13617 (charsOf!3478 (h!42707 tokens!494))))))

(declare-fun b!3502112 () Bool)

(assert (=> b!3502112 (= e!2168233 (not e!2168221))))

(declare-fun res!1412331 () Bool)

(assert (=> b!3502112 (=> res!1412331 e!2168221)))

(assert (=> b!3502112 (= res!1412331 (not (= lt!1193855 lt!1193837)))))

(declare-fun printList!1601 (LexerInterface!5053 List!37411) List!37409)

(assert (=> b!3502112 (= lt!1193837 (printList!1601 thiss!18206 (Cons!37287 (h!42707 tokens!494) Nil!37287)))))

(declare-fun lt!1193843 () BalanceConc!22220)

(assert (=> b!3502112 (= lt!1193855 (list!13617 lt!1193843))))

(declare-fun lt!1193846 () BalanceConc!22222)

(assert (=> b!3502112 (= lt!1193843 (printTailRec!1548 thiss!18206 lt!1193846 0 (BalanceConc!22221 Empty!11303)))))

(assert (=> b!3502112 (= lt!1193843 (print!2118 thiss!18206 lt!1193846))))

(assert (=> b!3502112 (= lt!1193846 (singletonSeq!2560 (h!42707 tokens!494)))))

(declare-fun tp!1084323 () Bool)

(declare-fun b!3502113 () Bool)

(assert (=> b!3502113 (= e!2168243 (and tp!1084323 (inv!50497 (tag!6092 (h!42706 rules!2135))) (inv!50500 (transformation!5464 (h!42706 rules!2135))) e!2168228))))

(assert (= (and start!325418 res!1412338) b!3502086))

(assert (= (and b!3502086 res!1412341) b!3502104))

(assert (= (and b!3502104 res!1412342) b!3502090))

(assert (= (and b!3502090 res!1412346) b!3502106))

(assert (= (and b!3502106 res!1412334) b!3502080))

(assert (= (and b!3502080 res!1412320) b!3502098))

(assert (= (and b!3502098 res!1412330) b!3502091))

(assert (= (and b!3502091 res!1412323) b!3502081))

(assert (= (and b!3502081 res!1412336) b!3502112))

(assert (= (and b!3502112 (not res!1412331)) b!3502111))

(assert (= (and b!3502111 (not res!1412327)) b!3502087))

(assert (= (and b!3502087 (not res!1412322)) b!3502089))

(assert (= (and b!3502089 (not res!1412325)) b!3502109))

(assert (= (and b!3502109 (not res!1412345)) b!3502100))

(assert (= (and b!3502100 (not res!1412326)) b!3502082))

(assert (= (and b!3502082 (not res!1412328)) b!3502097))

(assert (= (and b!3502097 (not res!1412333)) b!3502099))

(assert (= (and b!3502099 res!1412344) b!3502084))

(assert (= (and b!3502084 res!1412332) b!3502092))

(assert (= (and b!3502099 res!1412335) b!3502083))

(assert (= (and b!3502083 res!1412329) b!3502077))

(assert (= (and b!3502099 c!602399) b!3502076))

(assert (= (and b!3502099 (not c!602399)) b!3502078))

(assert (= (and b!3502076 res!1412347) b!3502093))

(assert (= (and b!3502099 res!1412343) b!3502107))

(assert (= (and b!3502107 res!1412340) b!3502085))

(assert (= (and b!3502099 (not res!1412321)) b!3502095))

(assert (= (and b!3502095 (not res!1412324)) b!3502074))

(assert (= (and b!3502099 res!1412337) b!3502079))

(assert (= (and b!3502079 res!1412339) b!3502094))

(assert (= b!3502113 b!3502075))

(assert (= b!3502110 b!3502113))

(assert (= (and start!325418 ((_ is Cons!37286) rules!2135)) b!3502110))

(assert (= b!3502096 b!3502108))

(assert (= b!3502102 b!3502096))

(assert (= b!3502103 b!3502102))

(assert (= (and start!325418 ((_ is Cons!37287) tokens!494)) b!3502103))

(assert (= b!3502105 b!3502088))

(assert (= b!3502101 b!3502105))

(assert (= start!325418 b!3502101))

(declare-fun m!3937645 () Bool)

(assert (=> b!3502099 m!3937645))

(declare-fun m!3937647 () Bool)

(assert (=> b!3502099 m!3937647))

(declare-fun m!3937649 () Bool)

(assert (=> b!3502099 m!3937649))

(declare-fun m!3937651 () Bool)

(assert (=> b!3502099 m!3937651))

(declare-fun m!3937653 () Bool)

(assert (=> b!3502099 m!3937653))

(declare-fun m!3937655 () Bool)

(assert (=> b!3502099 m!3937655))

(declare-fun m!3937657 () Bool)

(assert (=> b!3502099 m!3937657))

(declare-fun m!3937659 () Bool)

(assert (=> b!3502099 m!3937659))

(declare-fun m!3937661 () Bool)

(assert (=> b!3502099 m!3937661))

(declare-fun m!3937663 () Bool)

(assert (=> b!3502099 m!3937663))

(declare-fun m!3937665 () Bool)

(assert (=> b!3502099 m!3937665))

(declare-fun m!3937667 () Bool)

(assert (=> b!3502099 m!3937667))

(assert (=> b!3502099 m!3937665))

(declare-fun m!3937669 () Bool)

(assert (=> b!3502099 m!3937669))

(declare-fun m!3937671 () Bool)

(assert (=> b!3502099 m!3937671))

(declare-fun m!3937673 () Bool)

(assert (=> b!3502099 m!3937673))

(declare-fun m!3937675 () Bool)

(assert (=> b!3502099 m!3937675))

(declare-fun m!3937677 () Bool)

(assert (=> b!3502099 m!3937677))

(declare-fun m!3937679 () Bool)

(assert (=> b!3502099 m!3937679))

(declare-fun m!3937681 () Bool)

(assert (=> b!3502099 m!3937681))

(declare-fun m!3937683 () Bool)

(assert (=> b!3502099 m!3937683))

(declare-fun m!3937685 () Bool)

(assert (=> b!3502099 m!3937685))

(declare-fun m!3937687 () Bool)

(assert (=> b!3502099 m!3937687))

(declare-fun m!3937689 () Bool)

(assert (=> b!3502099 m!3937689))

(declare-fun m!3937691 () Bool)

(assert (=> b!3502099 m!3937691))

(declare-fun m!3937693 () Bool)

(assert (=> b!3502099 m!3937693))

(declare-fun m!3937695 () Bool)

(assert (=> b!3502099 m!3937695))

(declare-fun m!3937697 () Bool)

(assert (=> b!3502099 m!3937697))

(declare-fun m!3937699 () Bool)

(assert (=> b!3502099 m!3937699))

(declare-fun m!3937701 () Bool)

(assert (=> b!3502099 m!3937701))

(declare-fun m!3937703 () Bool)

(assert (=> b!3502099 m!3937703))

(declare-fun m!3937705 () Bool)

(assert (=> b!3502099 m!3937705))

(declare-fun m!3937707 () Bool)

(assert (=> b!3502099 m!3937707))

(assert (=> b!3502099 m!3937645))

(declare-fun m!3937709 () Bool)

(assert (=> b!3502099 m!3937709))

(declare-fun m!3937711 () Bool)

(assert (=> b!3502099 m!3937711))

(declare-fun m!3937713 () Bool)

(assert (=> b!3502099 m!3937713))

(declare-fun m!3937715 () Bool)

(assert (=> b!3502099 m!3937715))

(declare-fun m!3937717 () Bool)

(assert (=> b!3502082 m!3937717))

(assert (=> b!3502082 m!3937717))

(declare-fun m!3937719 () Bool)

(assert (=> b!3502082 m!3937719))

(declare-fun m!3937721 () Bool)

(assert (=> b!3502113 m!3937721))

(declare-fun m!3937723 () Bool)

(assert (=> b!3502113 m!3937723))

(declare-fun m!3937725 () Bool)

(assert (=> b!3502111 m!3937725))

(assert (=> b!3502111 m!3937725))

(declare-fun m!3937727 () Bool)

(assert (=> b!3502111 m!3937727))

(declare-fun m!3937729 () Bool)

(assert (=> b!3502085 m!3937729))

(declare-fun m!3937731 () Bool)

(assert (=> b!3502090 m!3937731))

(assert (=> b!3502090 m!3937731))

(declare-fun m!3937733 () Bool)

(assert (=> b!3502090 m!3937733))

(declare-fun m!3937735 () Bool)

(assert (=> b!3502079 m!3937735))

(declare-fun m!3937737 () Bool)

(assert (=> b!3502079 m!3937737))

(declare-fun m!3937739 () Bool)

(assert (=> start!325418 m!3937739))

(declare-fun m!3937741 () Bool)

(assert (=> b!3502096 m!3937741))

(declare-fun m!3937743 () Bool)

(assert (=> b!3502096 m!3937743))

(declare-fun m!3937745 () Bool)

(assert (=> b!3502106 m!3937745))

(declare-fun m!3937747 () Bool)

(assert (=> b!3502074 m!3937747))

(declare-fun m!3937749 () Bool)

(assert (=> b!3502104 m!3937749))

(declare-fun m!3937751 () Bool)

(assert (=> b!3502109 m!3937751))

(declare-fun m!3937753 () Bool)

(assert (=> b!3502109 m!3937753))

(declare-fun m!3937755 () Bool)

(assert (=> b!3502112 m!3937755))

(declare-fun m!3937757 () Bool)

(assert (=> b!3502112 m!3937757))

(declare-fun m!3937759 () Bool)

(assert (=> b!3502112 m!3937759))

(declare-fun m!3937761 () Bool)

(assert (=> b!3502112 m!3937761))

(declare-fun m!3937763 () Bool)

(assert (=> b!3502112 m!3937763))

(declare-fun m!3937765 () Bool)

(assert (=> b!3502087 m!3937765))

(declare-fun m!3937767 () Bool)

(assert (=> b!3502098 m!3937767))

(declare-fun m!3937769 () Bool)

(assert (=> b!3502095 m!3937769))

(declare-fun m!3937771 () Bool)

(assert (=> b!3502084 m!3937771))

(declare-fun m!3937773 () Bool)

(assert (=> b!3502084 m!3937773))

(declare-fun m!3937775 () Bool)

(assert (=> b!3502102 m!3937775))

(declare-fun m!3937777 () Bool)

(assert (=> b!3502107 m!3937777))

(declare-fun m!3937779 () Bool)

(assert (=> b!3502097 m!3937779))

(declare-fun m!3937781 () Bool)

(assert (=> b!3502097 m!3937781))

(declare-fun m!3937783 () Bool)

(assert (=> b!3502101 m!3937783))

(declare-fun m!3937785 () Bool)

(assert (=> b!3502089 m!3937785))

(declare-fun m!3937787 () Bool)

(assert (=> b!3502089 m!3937787))

(declare-fun m!3937789 () Bool)

(assert (=> b!3502089 m!3937789))

(declare-fun m!3937791 () Bool)

(assert (=> b!3502086 m!3937791))

(declare-fun m!3937793 () Bool)

(assert (=> b!3502083 m!3937793))

(declare-fun m!3937795 () Bool)

(assert (=> b!3502083 m!3937795))

(declare-fun m!3937797 () Bool)

(assert (=> b!3502105 m!3937797))

(declare-fun m!3937799 () Bool)

(assert (=> b!3502105 m!3937799))

(declare-fun m!3937801 () Bool)

(assert (=> b!3502091 m!3937801))

(declare-fun m!3937803 () Bool)

(assert (=> b!3502103 m!3937803))

(declare-fun m!3937805 () Bool)

(assert (=> b!3502076 m!3937805))

(declare-fun m!3937807 () Bool)

(assert (=> b!3502076 m!3937807))

(declare-fun m!3937809 () Bool)

(assert (=> b!3502100 m!3937809))

(declare-fun m!3937811 () Bool)

(assert (=> b!3502100 m!3937811))

(declare-fun m!3937813 () Bool)

(assert (=> b!3502100 m!3937813))

(declare-fun m!3937815 () Bool)

(assert (=> b!3502100 m!3937815))

(declare-fun m!3937817 () Bool)

(assert (=> b!3502100 m!3937817))

(declare-fun m!3937819 () Bool)

(assert (=> b!3502100 m!3937819))

(declare-fun m!3937821 () Bool)

(assert (=> b!3502100 m!3937821))

(assert (=> b!3502100 m!3937809))

(declare-fun m!3937823 () Bool)

(assert (=> b!3502100 m!3937823))

(assert (=> b!3502100 m!3937819))

(assert (=> b!3502100 m!3937821))

(declare-fun m!3937825 () Bool)

(assert (=> b!3502100 m!3937825))

(declare-fun m!3937827 () Bool)

(assert (=> b!3502100 m!3937827))

(assert (=> b!3502100 m!3937815))

(check-sat b_and!248457 (not b!3502074) (not b!3502110) (not b_next!91165) b_and!248459 (not b!3502086) (not b_next!91169) (not b!3502103) (not b!3502099) (not b!3502096) (not b!3502107) (not b!3502076) (not b!3502084) (not b!3502122) (not b!3502105) (not b!3502090) (not b_next!91167) b_and!248455 (not b!3502091) (not b!3502083) (not b!3502089) (not b!3502112) (not b!3502095) (not b!3502082) (not b!3502098) (not b!3502106) (not start!325418) (not b!3502100) (not b_next!91163) (not b_next!91161) (not b!3502087) (not b!3502085) (not b!3502097) (not b!3502101) (not b!3502102) b_and!248451 (not b!3502109) (not b!3502104) (not b!3502113) (not b!3502079) b_and!248453 b_and!248461 (not b_next!91171) (not b!3502111))
(check-sat (not b_next!91167) b_and!248457 b_and!248455 (not b_next!91165) b_and!248459 (not b_next!91169) (not b_next!91163) (not b_next!91161) b_and!248451 (not b_next!91171) b_and!248453 b_and!248461)
(get-model)

(declare-fun d!1017503 () Bool)

(assert (=> d!1017503 (not (matchR!4807 (regex!5464 (rule!8086 separatorToken!241)) lt!1193823))))

(declare-fun lt!1193866 () Unit!52850)

(declare-fun choose!20299 (Regex!10223 List!37409 C!20632) Unit!52850)

(assert (=> d!1017503 (= lt!1193866 (choose!20299 (regex!5464 (rule!8086 separatorToken!241)) lt!1193823 lt!1193853))))

(declare-fun validRegex!4664 (Regex!10223) Bool)

(assert (=> d!1017503 (validRegex!4664 (regex!5464 (rule!8086 separatorToken!241)))))

(assert (=> d!1017503 (= (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!522 (regex!5464 (rule!8086 separatorToken!241)) lt!1193823 lt!1193853) lt!1193866)))

(declare-fun bs!563778 () Bool)

(assert (= bs!563778 d!1017503))

(assert (=> bs!563778 m!3937807))

(declare-fun m!3937845 () Bool)

(assert (=> bs!563778 m!3937845))

(declare-fun m!3937847 () Bool)

(assert (=> bs!563778 m!3937847))

(assert (=> b!3502076 d!1017503))

(declare-fun b!3502243 () Bool)

(declare-fun e!2168324 () Bool)

(declare-fun derivativeStep!3061 (Regex!10223 C!20632) Regex!10223)

(declare-fun tail!5471 (List!37409) List!37409)

(assert (=> b!3502243 (= e!2168324 (matchR!4807 (derivativeStep!3061 (regex!5464 (rule!8086 separatorToken!241)) (head!7363 lt!1193823)) (tail!5471 lt!1193823)))))

(declare-fun b!3502244 () Bool)

(declare-fun e!2168320 () Bool)

(declare-fun e!2168319 () Bool)

(assert (=> b!3502244 (= e!2168320 e!2168319)))

(declare-fun c!602431 () Bool)

(assert (=> b!3502244 (= c!602431 ((_ is EmptyLang!10223) (regex!5464 (rule!8086 separatorToken!241))))))

(declare-fun b!3502245 () Bool)

(declare-fun res!1412426 () Bool)

(declare-fun e!2168323 () Bool)

(assert (=> b!3502245 (=> res!1412426 e!2168323)))

(declare-fun e!2168321 () Bool)

(assert (=> b!3502245 (= res!1412426 e!2168321)))

(declare-fun res!1412427 () Bool)

(assert (=> b!3502245 (=> (not res!1412427) (not e!2168321))))

(declare-fun lt!1193881 () Bool)

(assert (=> b!3502245 (= res!1412427 lt!1193881)))

(declare-fun b!3502246 () Bool)

(declare-fun e!2168325 () Bool)

(assert (=> b!3502246 (= e!2168323 e!2168325)))

(declare-fun res!1412424 () Bool)

(assert (=> b!3502246 (=> (not res!1412424) (not e!2168325))))

(assert (=> b!3502246 (= res!1412424 (not lt!1193881))))

(declare-fun b!3502247 () Bool)

(declare-fun e!2168322 () Bool)

(assert (=> b!3502247 (= e!2168322 (not (= (head!7363 lt!1193823) (c!602400 (regex!5464 (rule!8086 separatorToken!241))))))))

(declare-fun d!1017511 () Bool)

(assert (=> d!1017511 e!2168320))

(declare-fun c!602430 () Bool)

(assert (=> d!1017511 (= c!602430 ((_ is EmptyExpr!10223) (regex!5464 (rule!8086 separatorToken!241))))))

(assert (=> d!1017511 (= lt!1193881 e!2168324)))

(declare-fun c!602429 () Bool)

(declare-fun isEmpty!21711 (List!37409) Bool)

(assert (=> d!1017511 (= c!602429 (isEmpty!21711 lt!1193823))))

(assert (=> d!1017511 (validRegex!4664 (regex!5464 (rule!8086 separatorToken!241)))))

(assert (=> d!1017511 (= (matchR!4807 (regex!5464 (rule!8086 separatorToken!241)) lt!1193823) lt!1193881)))

(declare-fun bm!252863 () Bool)

(declare-fun call!252868 () Bool)

(assert (=> bm!252863 (= call!252868 (isEmpty!21711 lt!1193823))))

(declare-fun b!3502248 () Bool)

(assert (=> b!3502248 (= e!2168325 e!2168322)))

(declare-fun res!1412420 () Bool)

(assert (=> b!3502248 (=> res!1412420 e!2168322)))

(assert (=> b!3502248 (= res!1412420 call!252868)))

(declare-fun b!3502249 () Bool)

(declare-fun res!1412421 () Bool)

(assert (=> b!3502249 (=> (not res!1412421) (not e!2168321))))

(assert (=> b!3502249 (= res!1412421 (isEmpty!21711 (tail!5471 lt!1193823)))))

(declare-fun b!3502250 () Bool)

(assert (=> b!3502250 (= e!2168321 (= (head!7363 lt!1193823) (c!602400 (regex!5464 (rule!8086 separatorToken!241)))))))

(declare-fun b!3502251 () Bool)

(declare-fun nullable!3508 (Regex!10223) Bool)

(assert (=> b!3502251 (= e!2168324 (nullable!3508 (regex!5464 (rule!8086 separatorToken!241))))))

(declare-fun b!3502252 () Bool)

(declare-fun res!1412425 () Bool)

(assert (=> b!3502252 (=> (not res!1412425) (not e!2168321))))

(assert (=> b!3502252 (= res!1412425 (not call!252868))))

(declare-fun b!3502253 () Bool)

(declare-fun res!1412422 () Bool)

(assert (=> b!3502253 (=> res!1412422 e!2168323)))

(assert (=> b!3502253 (= res!1412422 (not ((_ is ElementMatch!10223) (regex!5464 (rule!8086 separatorToken!241)))))))

(assert (=> b!3502253 (= e!2168319 e!2168323)))

(declare-fun b!3502254 () Bool)

(declare-fun res!1412423 () Bool)

(assert (=> b!3502254 (=> res!1412423 e!2168322)))

(assert (=> b!3502254 (= res!1412423 (not (isEmpty!21711 (tail!5471 lt!1193823))))))

(declare-fun b!3502255 () Bool)

(assert (=> b!3502255 (= e!2168320 (= lt!1193881 call!252868))))

(declare-fun b!3502256 () Bool)

(assert (=> b!3502256 (= e!2168319 (not lt!1193881))))

(assert (= (and d!1017511 c!602429) b!3502251))

(assert (= (and d!1017511 (not c!602429)) b!3502243))

(assert (= (and d!1017511 c!602430) b!3502255))

(assert (= (and d!1017511 (not c!602430)) b!3502244))

(assert (= (and b!3502244 c!602431) b!3502256))

(assert (= (and b!3502244 (not c!602431)) b!3502253))

(assert (= (and b!3502253 (not res!1412422)) b!3502245))

(assert (= (and b!3502245 res!1412427) b!3502252))

(assert (= (and b!3502252 res!1412425) b!3502249))

(assert (= (and b!3502249 res!1412421) b!3502250))

(assert (= (and b!3502245 (not res!1412426)) b!3502246))

(assert (= (and b!3502246 res!1412424) b!3502248))

(assert (= (and b!3502248 (not res!1412420)) b!3502254))

(assert (= (and b!3502254 (not res!1412423)) b!3502247))

(assert (= (or b!3502255 b!3502252 b!3502248) bm!252863))

(declare-fun m!3937943 () Bool)

(assert (=> bm!252863 m!3937943))

(declare-fun m!3937945 () Bool)

(assert (=> b!3502251 m!3937945))

(assert (=> d!1017511 m!3937943))

(assert (=> d!1017511 m!3937847))

(declare-fun m!3937947 () Bool)

(assert (=> b!3502249 m!3937947))

(assert (=> b!3502249 m!3937947))

(declare-fun m!3937949 () Bool)

(assert (=> b!3502249 m!3937949))

(assert (=> b!3502243 m!3937683))

(assert (=> b!3502243 m!3937683))

(declare-fun m!3937951 () Bool)

(assert (=> b!3502243 m!3937951))

(assert (=> b!3502243 m!3937947))

(assert (=> b!3502243 m!3937951))

(assert (=> b!3502243 m!3937947))

(declare-fun m!3937953 () Bool)

(assert (=> b!3502243 m!3937953))

(assert (=> b!3502250 m!3937683))

(assert (=> b!3502247 m!3937683))

(assert (=> b!3502254 m!3937947))

(assert (=> b!3502254 m!3937947))

(assert (=> b!3502254 m!3937949))

(assert (=> b!3502076 d!1017511))

(declare-fun b!3502266 () Bool)

(declare-fun e!2168330 () List!37409)

(assert (=> b!3502266 (= e!2168330 (Cons!37285 (h!42705 lt!1193830) (++!9223 (t!279008 lt!1193830) lt!1193850)))))

(declare-fun lt!1193884 () List!37409)

(declare-fun e!2168331 () Bool)

(declare-fun b!3502268 () Bool)

(assert (=> b!3502268 (= e!2168331 (or (not (= lt!1193850 Nil!37285)) (= lt!1193884 lt!1193830)))))

(declare-fun b!3502267 () Bool)

(declare-fun res!1412433 () Bool)

(assert (=> b!3502267 (=> (not res!1412433) (not e!2168331))))

(assert (=> b!3502267 (= res!1412433 (= (size!28341 lt!1193884) (+ (size!28341 lt!1193830) (size!28341 lt!1193850))))))

(declare-fun b!3502265 () Bool)

(assert (=> b!3502265 (= e!2168330 lt!1193850)))

(declare-fun d!1017543 () Bool)

(assert (=> d!1017543 e!2168331))

(declare-fun res!1412432 () Bool)

(assert (=> d!1017543 (=> (not res!1412432) (not e!2168331))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!5239 (List!37409) (InoxSet C!20632))

(assert (=> d!1017543 (= res!1412432 (= (content!5239 lt!1193884) ((_ map or) (content!5239 lt!1193830) (content!5239 lt!1193850))))))

(assert (=> d!1017543 (= lt!1193884 e!2168330)))

(declare-fun c!602434 () Bool)

(assert (=> d!1017543 (= c!602434 ((_ is Nil!37285) lt!1193830))))

(assert (=> d!1017543 (= (++!9223 lt!1193830 lt!1193850) lt!1193884)))

(assert (= (and d!1017543 c!602434) b!3502265))

(assert (= (and d!1017543 (not c!602434)) b!3502266))

(assert (= (and d!1017543 res!1412432) b!3502267))

(assert (= (and b!3502267 res!1412433) b!3502268))

(declare-fun m!3937955 () Bool)

(assert (=> b!3502266 m!3937955))

(declare-fun m!3937957 () Bool)

(assert (=> b!3502267 m!3937957))

(assert (=> b!3502267 m!3937685))

(declare-fun m!3937959 () Bool)

(assert (=> b!3502267 m!3937959))

(declare-fun m!3937961 () Bool)

(assert (=> d!1017543 m!3937961))

(declare-fun m!3937963 () Bool)

(assert (=> d!1017543 m!3937963))

(declare-fun m!3937965 () Bool)

(assert (=> d!1017543 m!3937965))

(assert (=> b!3502097 d!1017543))

(declare-fun d!1017545 () Bool)

(assert (=> d!1017545 (= (++!9223 (++!9223 lt!1193830 lt!1193823) lt!1193839) (++!9223 lt!1193830 (++!9223 lt!1193823 lt!1193839)))))

(declare-fun lt!1193887 () Unit!52850)

(declare-fun choose!20301 (List!37409 List!37409 List!37409) Unit!52850)

(assert (=> d!1017545 (= lt!1193887 (choose!20301 lt!1193830 lt!1193823 lt!1193839))))

(assert (=> d!1017545 (= (lemmaConcatAssociativity!1992 lt!1193830 lt!1193823 lt!1193839) lt!1193887)))

(declare-fun bs!563781 () Bool)

(assert (= bs!563781 d!1017545))

(assert (=> bs!563781 m!3937827))

(declare-fun m!3937967 () Bool)

(assert (=> bs!563781 m!3937967))

(declare-fun m!3937969 () Bool)

(assert (=> bs!563781 m!3937969))

(assert (=> bs!563781 m!3937827))

(assert (=> bs!563781 m!3937717))

(assert (=> bs!563781 m!3937719))

(assert (=> bs!563781 m!3937717))

(assert (=> b!3502097 d!1017545))

(declare-fun d!1017547 () Bool)

(declare-fun res!1412438 () Bool)

(declare-fun e!2168336 () Bool)

(assert (=> d!1017547 (=> res!1412438 e!2168336)))

(assert (=> d!1017547 (= res!1412438 ((_ is Nil!37287) tokens!494))))

(assert (=> d!1017547 (= (forall!7995 tokens!494 lambda!122454) e!2168336)))

(declare-fun b!3502273 () Bool)

(declare-fun e!2168337 () Bool)

(assert (=> b!3502273 (= e!2168336 e!2168337)))

(declare-fun res!1412439 () Bool)

(assert (=> b!3502273 (=> (not res!1412439) (not e!2168337))))

(declare-fun dynLambda!15829 (Int Token!10294) Bool)

(assert (=> b!3502273 (= res!1412439 (dynLambda!15829 lambda!122454 (h!42707 tokens!494)))))

(declare-fun b!3502274 () Bool)

(assert (=> b!3502274 (= e!2168337 (forall!7995 (t!279010 tokens!494) lambda!122454))))

(assert (= (and d!1017547 (not res!1412438)) b!3502273))

(assert (= (and b!3502273 res!1412439) b!3502274))

(declare-fun b_lambda!101727 () Bool)

(assert (=> (not b_lambda!101727) (not b!3502273)))

(declare-fun m!3937971 () Bool)

(assert (=> b!3502273 m!3937971))

(declare-fun m!3937973 () Bool)

(assert (=> b!3502274 m!3937973))

(assert (=> b!3502098 d!1017547))

(declare-fun b!3502287 () Bool)

(declare-fun lt!1193896 () Unit!52850)

(declare-fun lt!1193894 () Unit!52850)

(assert (=> b!3502287 (= lt!1193896 lt!1193894)))

(assert (=> b!3502287 (rulesInvariant!4450 thiss!18206 (t!279009 rules!2135))))

(declare-fun lemmaInvariantOnRulesThenOnTail!451 (LexerInterface!5053 Rule!10728 List!37410) Unit!52850)

(assert (=> b!3502287 (= lt!1193894 (lemmaInvariantOnRulesThenOnTail!451 thiss!18206 (h!42706 rules!2135) (t!279009 rules!2135)))))

(declare-fun e!2168349 () Option!7585)

(assert (=> b!3502287 (= e!2168349 (getRuleFromTag!1107 thiss!18206 (t!279009 rules!2135) (tag!6092 (rule!8086 (h!42707 tokens!494)))))))

(declare-fun d!1017549 () Bool)

(declare-fun e!2168348 () Bool)

(assert (=> d!1017549 e!2168348))

(declare-fun res!1412445 () Bool)

(assert (=> d!1017549 (=> res!1412445 e!2168348)))

(declare-fun lt!1193895 () Option!7585)

(declare-fun isEmpty!21712 (Option!7585) Bool)

(assert (=> d!1017549 (= res!1412445 (isEmpty!21712 lt!1193895))))

(declare-fun e!2168347 () Option!7585)

(assert (=> d!1017549 (= lt!1193895 e!2168347)))

(declare-fun c!602439 () Bool)

(assert (=> d!1017549 (= c!602439 (and ((_ is Cons!37286) rules!2135) (= (tag!6092 (h!42706 rules!2135)) (tag!6092 (rule!8086 (h!42707 tokens!494))))))))

(assert (=> d!1017549 (rulesInvariant!4450 thiss!18206 rules!2135)))

(assert (=> d!1017549 (= (getRuleFromTag!1107 thiss!18206 rules!2135 (tag!6092 (rule!8086 (h!42707 tokens!494)))) lt!1193895)))

(declare-fun b!3502288 () Bool)

(assert (=> b!3502288 (= e!2168349 None!7584)))

(declare-fun b!3502289 () Bool)

(assert (=> b!3502289 (= e!2168347 e!2168349)))

(declare-fun c!602440 () Bool)

(assert (=> b!3502289 (= c!602440 (and ((_ is Cons!37286) rules!2135) (not (= (tag!6092 (h!42706 rules!2135)) (tag!6092 (rule!8086 (h!42707 tokens!494)))))))))

(declare-fun b!3502290 () Bool)

(declare-fun e!2168346 () Bool)

(assert (=> b!3502290 (= e!2168346 (= (tag!6092 (get!11959 lt!1193895)) (tag!6092 (rule!8086 (h!42707 tokens!494)))))))

(declare-fun b!3502291 () Bool)

(assert (=> b!3502291 (= e!2168348 e!2168346)))

(declare-fun res!1412444 () Bool)

(assert (=> b!3502291 (=> (not res!1412444) (not e!2168346))))

(assert (=> b!3502291 (= res!1412444 (contains!6967 rules!2135 (get!11959 lt!1193895)))))

(declare-fun b!3502292 () Bool)

(assert (=> b!3502292 (= e!2168347 (Some!7584 (h!42706 rules!2135)))))

(assert (= (and d!1017549 c!602439) b!3502292))

(assert (= (and d!1017549 (not c!602439)) b!3502289))

(assert (= (and b!3502289 c!602440) b!3502287))

(assert (= (and b!3502289 (not c!602440)) b!3502288))

(assert (= (and d!1017549 (not res!1412445)) b!3502291))

(assert (= (and b!3502291 res!1412444) b!3502290))

(declare-fun m!3937975 () Bool)

(assert (=> b!3502287 m!3937975))

(declare-fun m!3937977 () Bool)

(assert (=> b!3502287 m!3937977))

(declare-fun m!3937979 () Bool)

(assert (=> b!3502287 m!3937979))

(declare-fun m!3937981 () Bool)

(assert (=> d!1017549 m!3937981))

(assert (=> d!1017549 m!3937749))

(declare-fun m!3937983 () Bool)

(assert (=> b!3502290 m!3937983))

(assert (=> b!3502291 m!3937983))

(assert (=> b!3502291 m!3937983))

(declare-fun m!3937985 () Bool)

(assert (=> b!3502291 m!3937985))

(assert (=> b!3502099 d!1017549))

(declare-fun d!1017551 () Bool)

(assert (=> d!1017551 (dynLambda!15829 lambda!122455 (h!42707 (t!279010 tokens!494)))))

(declare-fun lt!1193899 () Unit!52850)

(declare-fun choose!20302 (List!37411 Int Token!10294) Unit!52850)

(assert (=> d!1017551 (= lt!1193899 (choose!20302 tokens!494 lambda!122455 (h!42707 (t!279010 tokens!494))))))

(declare-fun e!2168352 () Bool)

(assert (=> d!1017551 e!2168352))

(declare-fun res!1412448 () Bool)

(assert (=> d!1017551 (=> (not res!1412448) (not e!2168352))))

(assert (=> d!1017551 (= res!1412448 (forall!7995 tokens!494 lambda!122455))))

(assert (=> d!1017551 (= (forallContained!1411 tokens!494 lambda!122455 (h!42707 (t!279010 tokens!494))) lt!1193899)))

(declare-fun b!3502295 () Bool)

(declare-fun contains!6970 (List!37411 Token!10294) Bool)

(assert (=> b!3502295 (= e!2168352 (contains!6970 tokens!494 (h!42707 (t!279010 tokens!494))))))

(assert (= (and d!1017551 res!1412448) b!3502295))

(declare-fun b_lambda!101729 () Bool)

(assert (=> (not b_lambda!101729) (not d!1017551)))

(declare-fun m!3937987 () Bool)

(assert (=> d!1017551 m!3937987))

(declare-fun m!3937989 () Bool)

(assert (=> d!1017551 m!3937989))

(declare-fun m!3937991 () Bool)

(assert (=> d!1017551 m!3937991))

(declare-fun m!3937993 () Bool)

(assert (=> b!3502295 m!3937993))

(assert (=> b!3502099 d!1017551))

(declare-fun d!1017553 () Bool)

(assert (=> d!1017553 (= (maxPrefix!2593 thiss!18206 rules!2135 (++!9223 (list!13617 (charsOf!3478 (h!42707 tokens!494))) lt!1193850)) (Some!7585 (tuple2!37083 (h!42707 tokens!494) lt!1193850)))))

(declare-fun lt!1193905 () Unit!52850)

(declare-fun choose!20303 (LexerInterface!5053 List!37410 Token!10294 Rule!10728 List!37409 Rule!10728) Unit!52850)

(assert (=> d!1017553 (= lt!1193905 (choose!20303 thiss!18206 rules!2135 (h!42707 tokens!494) (rule!8086 (h!42707 tokens!494)) lt!1193850 (rule!8086 separatorToken!241)))))

(assert (=> d!1017553 (not (isEmpty!21708 rules!2135))))

(assert (=> d!1017553 (= (lemmaMaxPrefWithOtherTypeUsedCharAtStartOfSuffixReturnSame!220 thiss!18206 rules!2135 (h!42707 tokens!494) (rule!8086 (h!42707 tokens!494)) lt!1193850 (rule!8086 separatorToken!241)) lt!1193905)))

(declare-fun bs!563784 () Bool)

(assert (= bs!563784 d!1017553))

(assert (=> bs!563784 m!3937727))

(declare-fun m!3938003 () Bool)

(assert (=> bs!563784 m!3938003))

(declare-fun m!3938005 () Bool)

(assert (=> bs!563784 m!3938005))

(assert (=> bs!563784 m!3937725))

(assert (=> bs!563784 m!3937727))

(assert (=> bs!563784 m!3937725))

(assert (=> bs!563784 m!3938003))

(declare-fun m!3938007 () Bool)

(assert (=> bs!563784 m!3938007))

(assert (=> bs!563784 m!3937791))

(assert (=> b!3502099 d!1017553))

(declare-fun d!1017557 () Bool)

(declare-fun lt!1193912 () Bool)

(assert (=> d!1017557 (= lt!1193912 (select (content!5239 (usedCharacters!698 (regex!5464 (rule!8086 separatorToken!241)))) lt!1193853))))

(declare-fun e!2168368 () Bool)

(assert (=> d!1017557 (= lt!1193912 e!2168368)))

(declare-fun res!1412461 () Bool)

(assert (=> d!1017557 (=> (not res!1412461) (not e!2168368))))

(assert (=> d!1017557 (= res!1412461 ((_ is Cons!37285) (usedCharacters!698 (regex!5464 (rule!8086 separatorToken!241)))))))

(assert (=> d!1017557 (= (contains!6968 (usedCharacters!698 (regex!5464 (rule!8086 separatorToken!241))) lt!1193853) lt!1193912)))

(declare-fun b!3502310 () Bool)

(declare-fun e!2168367 () Bool)

(assert (=> b!3502310 (= e!2168368 e!2168367)))

(declare-fun res!1412460 () Bool)

(assert (=> b!3502310 (=> res!1412460 e!2168367)))

(assert (=> b!3502310 (= res!1412460 (= (h!42705 (usedCharacters!698 (regex!5464 (rule!8086 separatorToken!241)))) lt!1193853))))

(declare-fun b!3502311 () Bool)

(assert (=> b!3502311 (= e!2168367 (contains!6968 (t!279008 (usedCharacters!698 (regex!5464 (rule!8086 separatorToken!241)))) lt!1193853))))

(assert (= (and d!1017557 res!1412461) b!3502310))

(assert (= (and b!3502310 (not res!1412460)) b!3502311))

(assert (=> d!1017557 m!3937665))

(declare-fun m!3938023 () Bool)

(assert (=> d!1017557 m!3938023))

(declare-fun m!3938025 () Bool)

(assert (=> d!1017557 m!3938025))

(declare-fun m!3938027 () Bool)

(assert (=> b!3502311 m!3938027))

(assert (=> b!3502099 d!1017557))

(declare-fun d!1017565 () Bool)

(assert (=> d!1017565 (= (isDefined!5846 lt!1193838) (not (isEmpty!21712 lt!1193838)))))

(declare-fun bs!563786 () Bool)

(assert (= bs!563786 d!1017565))

(declare-fun m!3938029 () Bool)

(assert (=> bs!563786 m!3938029))

(assert (=> b!3502099 d!1017565))

(declare-fun d!1017567 () Bool)

(assert (=> d!1017567 (= (head!7363 lt!1193823) (h!42705 lt!1193823))))

(assert (=> b!3502099 d!1017567))

(declare-fun call!252879 () List!37409)

(declare-fun bm!252872 () Bool)

(declare-fun c!602454 () Bool)

(declare-fun c!602451 () Bool)

(assert (=> bm!252872 (= call!252879 (usedCharacters!698 (ite c!602451 (reg!10552 (regex!5464 (rule!8086 (h!42707 tokens!494)))) (ite c!602454 (regTwo!20959 (regex!5464 (rule!8086 (h!42707 tokens!494)))) (regOne!20958 (regex!5464 (rule!8086 (h!42707 tokens!494))))))))))

(declare-fun b!3502342 () Bool)

(declare-fun e!2168389 () List!37409)

(assert (=> b!3502342 (= e!2168389 Nil!37285)))

(declare-fun bm!252873 () Bool)

(declare-fun call!252878 () List!37409)

(assert (=> bm!252873 (= call!252878 call!252879)))

(declare-fun d!1017571 () Bool)

(declare-fun c!602453 () Bool)

(assert (=> d!1017571 (= c!602453 (or ((_ is EmptyExpr!10223) (regex!5464 (rule!8086 (h!42707 tokens!494)))) ((_ is EmptyLang!10223) (regex!5464 (rule!8086 (h!42707 tokens!494))))))))

(assert (=> d!1017571 (= (usedCharacters!698 (regex!5464 (rule!8086 (h!42707 tokens!494)))) e!2168389)))

(declare-fun b!3502343 () Bool)

(declare-fun e!2168388 () List!37409)

(assert (=> b!3502343 (= e!2168389 e!2168388)))

(declare-fun c!602452 () Bool)

(assert (=> b!3502343 (= c!602452 ((_ is ElementMatch!10223) (regex!5464 (rule!8086 (h!42707 tokens!494)))))))

(declare-fun b!3502344 () Bool)

(declare-fun e!2168390 () List!37409)

(declare-fun e!2168387 () List!37409)

(assert (=> b!3502344 (= e!2168390 e!2168387)))

(assert (=> b!3502344 (= c!602454 ((_ is Union!10223) (regex!5464 (rule!8086 (h!42707 tokens!494)))))))

(declare-fun b!3502345 () Bool)

(declare-fun call!252880 () List!37409)

(assert (=> b!3502345 (= e!2168387 call!252880)))

(declare-fun b!3502346 () Bool)

(assert (=> b!3502346 (= c!602451 ((_ is Star!10223) (regex!5464 (rule!8086 (h!42707 tokens!494)))))))

(assert (=> b!3502346 (= e!2168388 e!2168390)))

(declare-fun bm!252874 () Bool)

(declare-fun call!252877 () List!37409)

(assert (=> bm!252874 (= call!252880 (++!9223 (ite c!602454 call!252877 call!252878) (ite c!602454 call!252878 call!252877)))))

(declare-fun b!3502347 () Bool)

(assert (=> b!3502347 (= e!2168388 (Cons!37285 (c!602400 (regex!5464 (rule!8086 (h!42707 tokens!494)))) Nil!37285))))

(declare-fun b!3502348 () Bool)

(assert (=> b!3502348 (= e!2168390 call!252879)))

(declare-fun b!3502349 () Bool)

(assert (=> b!3502349 (= e!2168387 call!252880)))

(declare-fun bm!252875 () Bool)

(assert (=> bm!252875 (= call!252877 (usedCharacters!698 (ite c!602454 (regOne!20959 (regex!5464 (rule!8086 (h!42707 tokens!494)))) (regTwo!20958 (regex!5464 (rule!8086 (h!42707 tokens!494)))))))))

(assert (= (and d!1017571 c!602453) b!3502342))

(assert (= (and d!1017571 (not c!602453)) b!3502343))

(assert (= (and b!3502343 c!602452) b!3502347))

(assert (= (and b!3502343 (not c!602452)) b!3502346))

(assert (= (and b!3502346 c!602451) b!3502348))

(assert (= (and b!3502346 (not c!602451)) b!3502344))

(assert (= (and b!3502344 c!602454) b!3502345))

(assert (= (and b!3502344 (not c!602454)) b!3502349))

(assert (= (or b!3502345 b!3502349) bm!252873))

(assert (= (or b!3502345 b!3502349) bm!252875))

(assert (= (or b!3502345 b!3502349) bm!252874))

(assert (= (or b!3502348 bm!252873) bm!252872))

(declare-fun m!3938051 () Bool)

(assert (=> bm!252872 m!3938051))

(declare-fun m!3938053 () Bool)

(assert (=> bm!252874 m!3938053))

(declare-fun m!3938055 () Bool)

(assert (=> bm!252875 m!3938055))

(assert (=> b!3502099 d!1017571))

(declare-fun d!1017577 () Bool)

(assert (=> d!1017577 (rulesProduceIndividualToken!2545 thiss!18206 rules!2135 (h!42707 tokens!494))))

(declare-fun lt!1193929 () Unit!52850)

(declare-fun choose!20304 (LexerInterface!5053 List!37410 List!37411 Token!10294) Unit!52850)

(assert (=> d!1017577 (= lt!1193929 (choose!20304 thiss!18206 rules!2135 tokens!494 (h!42707 tokens!494)))))

(assert (=> d!1017577 (not (isEmpty!21708 rules!2135))))

(assert (=> d!1017577 (= (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!1042 thiss!18206 rules!2135 tokens!494 (h!42707 tokens!494)) lt!1193929)))

(declare-fun bs!563787 () Bool)

(assert (= bs!563787 d!1017577))

(assert (=> bs!563787 m!3937765))

(declare-fun m!3938077 () Bool)

(assert (=> bs!563787 m!3938077))

(assert (=> bs!563787 m!3937791))

(assert (=> b!3502099 d!1017577))

(declare-fun d!1017587 () Bool)

(declare-fun lt!1193932 () Int)

(assert (=> d!1017587 (>= lt!1193932 0)))

(declare-fun e!2168408 () Int)

(assert (=> d!1017587 (= lt!1193932 e!2168408)))

(declare-fun c!602461 () Bool)

(assert (=> d!1017587 (= c!602461 ((_ is Nil!37285) lt!1193830))))

(assert (=> d!1017587 (= (size!28341 lt!1193830) lt!1193932)))

(declare-fun b!3502376 () Bool)

(assert (=> b!3502376 (= e!2168408 0)))

(declare-fun b!3502377 () Bool)

(assert (=> b!3502377 (= e!2168408 (+ 1 (size!28341 (t!279008 lt!1193830))))))

(assert (= (and d!1017587 c!602461) b!3502376))

(assert (= (and d!1017587 (not c!602461)) b!3502377))

(declare-fun m!3938079 () Bool)

(assert (=> b!3502377 m!3938079))

(assert (=> b!3502099 d!1017587))

(declare-fun d!1017589 () Bool)

(declare-fun lt!1193993 () Bool)

(declare-fun e!2168449 () Bool)

(assert (=> d!1017589 (= lt!1193993 e!2168449)))

(declare-fun res!1412536 () Bool)

(assert (=> d!1017589 (=> (not res!1412536) (not e!2168449))))

(declare-fun list!13620 (BalanceConc!22222) List!37411)

(assert (=> d!1017589 (= res!1412536 (= (list!13620 (_1!21674 (lex!2379 thiss!18206 rules!2135 (print!2118 thiss!18206 (singletonSeq!2560 (h!42707 (t!279010 tokens!494))))))) (list!13620 (singletonSeq!2560 (h!42707 (t!279010 tokens!494))))))))

(declare-fun e!2168448 () Bool)

(assert (=> d!1017589 (= lt!1193993 e!2168448)))

(declare-fun res!1412535 () Bool)

(assert (=> d!1017589 (=> (not res!1412535) (not e!2168448))))

(declare-fun lt!1193994 () tuple2!37080)

(assert (=> d!1017589 (= res!1412535 (= (size!28340 (_1!21674 lt!1193994)) 1))))

(assert (=> d!1017589 (= lt!1193994 (lex!2379 thiss!18206 rules!2135 (print!2118 thiss!18206 (singletonSeq!2560 (h!42707 (t!279010 tokens!494))))))))

(assert (=> d!1017589 (not (isEmpty!21708 rules!2135))))

(assert (=> d!1017589 (= (rulesProduceIndividualToken!2545 thiss!18206 rules!2135 (h!42707 (t!279010 tokens!494))) lt!1193993)))

(declare-fun b!3502450 () Bool)

(declare-fun res!1412534 () Bool)

(assert (=> b!3502450 (=> (not res!1412534) (not e!2168448))))

(assert (=> b!3502450 (= res!1412534 (= (apply!8848 (_1!21674 lt!1193994) 0) (h!42707 (t!279010 tokens!494))))))

(declare-fun b!3502451 () Bool)

(assert (=> b!3502451 (= e!2168448 (isEmpty!21707 (_2!21674 lt!1193994)))))

(declare-fun b!3502452 () Bool)

(assert (=> b!3502452 (= e!2168449 (isEmpty!21707 (_2!21674 (lex!2379 thiss!18206 rules!2135 (print!2118 thiss!18206 (singletonSeq!2560 (h!42707 (t!279010 tokens!494))))))))))

(assert (= (and d!1017589 res!1412535) b!3502450))

(assert (= (and b!3502450 res!1412534) b!3502451))

(assert (= (and d!1017589 res!1412536) b!3502452))

(declare-fun m!3938213 () Bool)

(assert (=> d!1017589 m!3938213))

(declare-fun m!3938215 () Bool)

(assert (=> d!1017589 m!3938215))

(declare-fun m!3938217 () Bool)

(assert (=> d!1017589 m!3938217))

(assert (=> d!1017589 m!3937791))

(assert (=> d!1017589 m!3937701))

(assert (=> d!1017589 m!3937701))

(declare-fun m!3938219 () Bool)

(assert (=> d!1017589 m!3938219))

(declare-fun m!3938221 () Bool)

(assert (=> d!1017589 m!3938221))

(assert (=> d!1017589 m!3937701))

(assert (=> d!1017589 m!3938213))

(declare-fun m!3938223 () Bool)

(assert (=> b!3502450 m!3938223))

(declare-fun m!3938225 () Bool)

(assert (=> b!3502451 m!3938225))

(assert (=> b!3502452 m!3937701))

(assert (=> b!3502452 m!3937701))

(assert (=> b!3502452 m!3938213))

(assert (=> b!3502452 m!3938213))

(assert (=> b!3502452 m!3938215))

(declare-fun m!3938227 () Bool)

(assert (=> b!3502452 m!3938227))

(assert (=> b!3502099 d!1017589))

(declare-fun d!1017611 () Bool)

(declare-fun lt!1193995 () Bool)

(assert (=> d!1017611 (= lt!1193995 (select (content!5239 (usedCharacters!698 (regex!5464 (rule!8086 (h!42707 tokens!494))))) lt!1193853))))

(declare-fun e!2168451 () Bool)

(assert (=> d!1017611 (= lt!1193995 e!2168451)))

(declare-fun res!1412538 () Bool)

(assert (=> d!1017611 (=> (not res!1412538) (not e!2168451))))

(assert (=> d!1017611 (= res!1412538 ((_ is Cons!37285) (usedCharacters!698 (regex!5464 (rule!8086 (h!42707 tokens!494))))))))

(assert (=> d!1017611 (= (contains!6968 (usedCharacters!698 (regex!5464 (rule!8086 (h!42707 tokens!494)))) lt!1193853) lt!1193995)))

(declare-fun b!3502453 () Bool)

(declare-fun e!2168450 () Bool)

(assert (=> b!3502453 (= e!2168451 e!2168450)))

(declare-fun res!1412537 () Bool)

(assert (=> b!3502453 (=> res!1412537 e!2168450)))

(assert (=> b!3502453 (= res!1412537 (= (h!42705 (usedCharacters!698 (regex!5464 (rule!8086 (h!42707 tokens!494))))) lt!1193853))))

(declare-fun b!3502454 () Bool)

(assert (=> b!3502454 (= e!2168450 (contains!6968 (t!279008 (usedCharacters!698 (regex!5464 (rule!8086 (h!42707 tokens!494))))) lt!1193853))))

(assert (= (and d!1017611 res!1412538) b!3502453))

(assert (= (and b!3502453 (not res!1412537)) b!3502454))

(assert (=> d!1017611 m!3937645))

(declare-fun m!3938229 () Bool)

(assert (=> d!1017611 m!3938229))

(declare-fun m!3938231 () Bool)

(assert (=> d!1017611 m!3938231))

(declare-fun m!3938233 () Bool)

(assert (=> b!3502454 m!3938233))

(assert (=> b!3502099 d!1017611))

(declare-fun b!3502489 () Bool)

(declare-fun e!2168470 () Bool)

(declare-fun lt!1194001 () tuple2!37080)

(assert (=> b!3502489 (= e!2168470 (= (_2!21674 lt!1194001) lt!1193829))))

(declare-fun b!3502490 () Bool)

(declare-fun e!2168472 () Bool)

(declare-datatypes ((tuple2!37084 0))(
  ( (tuple2!37085 (_1!21676 List!37411) (_2!21676 List!37409)) )
))
(declare-fun lexList!1467 (LexerInterface!5053 List!37410 List!37409) tuple2!37084)

(assert (=> b!3502490 (= e!2168472 (= (list!13617 (_2!21674 lt!1194001)) (_2!21676 (lexList!1467 thiss!18206 rules!2135 (list!13617 lt!1193829)))))))

(declare-fun b!3502491 () Bool)

(declare-fun e!2168471 () Bool)

(assert (=> b!3502491 (= e!2168470 e!2168471)))

(declare-fun res!1412547 () Bool)

(declare-fun size!28344 (BalanceConc!22220) Int)

(assert (=> b!3502491 (= res!1412547 (< (size!28344 (_2!21674 lt!1194001)) (size!28344 lt!1193829)))))

(assert (=> b!3502491 (=> (not res!1412547) (not e!2168471))))

(declare-fun b!3502492 () Bool)

(declare-fun res!1412545 () Bool)

(assert (=> b!3502492 (=> (not res!1412545) (not e!2168472))))

(assert (=> b!3502492 (= res!1412545 (= (list!13620 (_1!21674 lt!1194001)) (_1!21676 (lexList!1467 thiss!18206 rules!2135 (list!13617 lt!1193829)))))))

(declare-fun b!3502493 () Bool)

(assert (=> b!3502493 (= e!2168471 (not (isEmpty!21709 (_1!21674 lt!1194001))))))

(declare-fun d!1017613 () Bool)

(assert (=> d!1017613 e!2168472))

(declare-fun res!1412546 () Bool)

(assert (=> d!1017613 (=> (not res!1412546) (not e!2168472))))

(assert (=> d!1017613 (= res!1412546 e!2168470)))

(declare-fun c!602488 () Bool)

(assert (=> d!1017613 (= c!602488 (> (size!28340 (_1!21674 lt!1194001)) 0))))

(declare-fun lexTailRecV2!1075 (LexerInterface!5053 List!37410 BalanceConc!22220 BalanceConc!22220 BalanceConc!22220 BalanceConc!22222) tuple2!37080)

(assert (=> d!1017613 (= lt!1194001 (lexTailRecV2!1075 thiss!18206 rules!2135 lt!1193829 (BalanceConc!22221 Empty!11303) lt!1193829 (BalanceConc!22223 Empty!11304)))))

(assert (=> d!1017613 (= (lex!2379 thiss!18206 rules!2135 lt!1193829) lt!1194001)))

(assert (= (and d!1017613 c!602488) b!3502491))

(assert (= (and d!1017613 (not c!602488)) b!3502489))

(assert (= (and b!3502491 res!1412547) b!3502493))

(assert (= (and d!1017613 res!1412546) b!3502492))

(assert (= (and b!3502492 res!1412545) b!3502490))

(declare-fun m!3938247 () Bool)

(assert (=> b!3502492 m!3938247))

(declare-fun m!3938249 () Bool)

(assert (=> b!3502492 m!3938249))

(assert (=> b!3502492 m!3938249))

(declare-fun m!3938251 () Bool)

(assert (=> b!3502492 m!3938251))

(declare-fun m!3938253 () Bool)

(assert (=> b!3502493 m!3938253))

(declare-fun m!3938255 () Bool)

(assert (=> b!3502490 m!3938255))

(assert (=> b!3502490 m!3938249))

(assert (=> b!3502490 m!3938249))

(assert (=> b!3502490 m!3938251))

(declare-fun m!3938257 () Bool)

(assert (=> d!1017613 m!3938257))

(declare-fun m!3938259 () Bool)

(assert (=> d!1017613 m!3938259))

(declare-fun m!3938261 () Bool)

(assert (=> b!3502491 m!3938261))

(declare-fun m!3938263 () Bool)

(assert (=> b!3502491 m!3938263))

(assert (=> b!3502099 d!1017613))

(declare-fun d!1017619 () Bool)

(assert (=> d!1017619 (rulesProduceIndividualToken!2545 thiss!18206 rules!2135 (h!42707 (t!279010 tokens!494)))))

(declare-fun lt!1194002 () Unit!52850)

(assert (=> d!1017619 (= lt!1194002 (choose!20304 thiss!18206 rules!2135 tokens!494 (h!42707 (t!279010 tokens!494))))))

(assert (=> d!1017619 (not (isEmpty!21708 rules!2135))))

(assert (=> d!1017619 (= (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!1042 thiss!18206 rules!2135 tokens!494 (h!42707 (t!279010 tokens!494))) lt!1194002)))

(declare-fun bs!563790 () Bool)

(assert (= bs!563790 d!1017619))

(assert (=> bs!563790 m!3937677))

(declare-fun m!3938265 () Bool)

(assert (=> bs!563790 m!3938265))

(assert (=> bs!563790 m!3937791))

(assert (=> b!3502099 d!1017619))

(declare-fun b!3502527 () Bool)

(declare-fun e!2168492 () Option!7586)

(assert (=> b!3502527 (= e!2168492 None!7585)))

(declare-fun b!3502528 () Bool)

(declare-fun e!2168495 () Bool)

(declare-fun lt!1194031 () Option!7586)

(declare-fun get!11960 (Option!7586) tuple2!37082)

(assert (=> b!3502528 (= e!2168495 (= (size!28339 (_1!21675 (get!11960 lt!1194031))) (size!28341 (originalCharacters!6178 (_1!21675 (get!11960 lt!1194031))))))))

(declare-fun b!3502529 () Bool)

(declare-fun e!2168493 () Bool)

(assert (=> b!3502529 (= e!2168493 e!2168495)))

(declare-fun res!1412576 () Bool)

(assert (=> b!3502529 (=> (not res!1412576) (not e!2168495))))

(assert (=> b!3502529 (= res!1412576 (matchR!4807 (regex!5464 (rule!8086 (h!42707 tokens!494))) (list!13617 (charsOf!3478 (_1!21675 (get!11960 lt!1194031))))))))

(declare-fun d!1017621 () Bool)

(assert (=> d!1017621 e!2168493))

(declare-fun res!1412573 () Bool)

(assert (=> d!1017621 (=> res!1412573 e!2168493)))

(declare-fun isEmpty!21714 (Option!7586) Bool)

(assert (=> d!1017621 (= res!1412573 (isEmpty!21714 lt!1194031))))

(assert (=> d!1017621 (= lt!1194031 e!2168492)))

(declare-fun c!602494 () Bool)

(declare-datatypes ((tuple2!37086 0))(
  ( (tuple2!37087 (_1!21677 List!37409) (_2!21677 List!37409)) )
))
(declare-fun lt!1194030 () tuple2!37086)

(assert (=> d!1017621 (= c!602494 (isEmpty!21711 (_1!21677 lt!1194030)))))

(declare-fun findLongestMatch!843 (Regex!10223 List!37409) tuple2!37086)

(assert (=> d!1017621 (= lt!1194030 (findLongestMatch!843 (regex!5464 (rule!8086 (h!42707 tokens!494))) lt!1193830))))

(declare-fun ruleValid!1759 (LexerInterface!5053 Rule!10728) Bool)

(assert (=> d!1017621 (ruleValid!1759 thiss!18206 (rule!8086 (h!42707 tokens!494)))))

(assert (=> d!1017621 (= (maxPrefixOneRule!1760 thiss!18206 (rule!8086 (h!42707 tokens!494)) lt!1193830) lt!1194031)))

(declare-fun b!3502530 () Bool)

(assert (=> b!3502530 (= e!2168492 (Some!7585 (tuple2!37083 (Token!10295 (apply!8849 (transformation!5464 (rule!8086 (h!42707 tokens!494))) (seqFromList!3981 (_1!21677 lt!1194030))) (rule!8086 (h!42707 tokens!494)) (size!28344 (seqFromList!3981 (_1!21677 lt!1194030))) (_1!21677 lt!1194030)) (_2!21677 lt!1194030))))))

(declare-fun lt!1194029 () Unit!52850)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!901 (Regex!10223 List!37409) Unit!52850)

(assert (=> b!3502530 (= lt!1194029 (longestMatchIsAcceptedByMatchOrIsEmpty!901 (regex!5464 (rule!8086 (h!42707 tokens!494))) lt!1193830))))

(declare-fun res!1412571 () Bool)

(declare-fun findLongestMatchInner!928 (Regex!10223 List!37409 Int List!37409 List!37409 Int) tuple2!37086)

(assert (=> b!3502530 (= res!1412571 (isEmpty!21711 (_1!21677 (findLongestMatchInner!928 (regex!5464 (rule!8086 (h!42707 tokens!494))) Nil!37285 (size!28341 Nil!37285) lt!1193830 lt!1193830 (size!28341 lt!1193830)))))))

(declare-fun e!2168494 () Bool)

(assert (=> b!3502530 (=> res!1412571 e!2168494)))

(assert (=> b!3502530 e!2168494))

(declare-fun lt!1194028 () Unit!52850)

(assert (=> b!3502530 (= lt!1194028 lt!1194029)))

(declare-fun lt!1194027 () Unit!52850)

(declare-fun lemmaSemiInverse!1278 (TokenValueInjection!10816 BalanceConc!22220) Unit!52850)

(assert (=> b!3502530 (= lt!1194027 (lemmaSemiInverse!1278 (transformation!5464 (rule!8086 (h!42707 tokens!494))) (seqFromList!3981 (_1!21677 lt!1194030))))))

(declare-fun b!3502531 () Bool)

(declare-fun res!1412572 () Bool)

(assert (=> b!3502531 (=> (not res!1412572) (not e!2168495))))

(assert (=> b!3502531 (= res!1412572 (= (value!176184 (_1!21675 (get!11960 lt!1194031))) (apply!8849 (transformation!5464 (rule!8086 (_1!21675 (get!11960 lt!1194031)))) (seqFromList!3981 (originalCharacters!6178 (_1!21675 (get!11960 lt!1194031)))))))))

(declare-fun b!3502532 () Bool)

(declare-fun res!1412575 () Bool)

(assert (=> b!3502532 (=> (not res!1412575) (not e!2168495))))

(assert (=> b!3502532 (= res!1412575 (= (++!9223 (list!13617 (charsOf!3478 (_1!21675 (get!11960 lt!1194031)))) (_2!21675 (get!11960 lt!1194031))) lt!1193830))))

(declare-fun b!3502533 () Bool)

(assert (=> b!3502533 (= e!2168494 (matchR!4807 (regex!5464 (rule!8086 (h!42707 tokens!494))) (_1!21677 (findLongestMatchInner!928 (regex!5464 (rule!8086 (h!42707 tokens!494))) Nil!37285 (size!28341 Nil!37285) lt!1193830 lt!1193830 (size!28341 lt!1193830)))))))

(declare-fun b!3502534 () Bool)

(declare-fun res!1412577 () Bool)

(assert (=> b!3502534 (=> (not res!1412577) (not e!2168495))))

(assert (=> b!3502534 (= res!1412577 (< (size!28341 (_2!21675 (get!11960 lt!1194031))) (size!28341 lt!1193830)))))

(declare-fun b!3502535 () Bool)

(declare-fun res!1412574 () Bool)

(assert (=> b!3502535 (=> (not res!1412574) (not e!2168495))))

(assert (=> b!3502535 (= res!1412574 (= (rule!8086 (_1!21675 (get!11960 lt!1194031))) (rule!8086 (h!42707 tokens!494))))))

(assert (= (and d!1017621 c!602494) b!3502527))

(assert (= (and d!1017621 (not c!602494)) b!3502530))

(assert (= (and b!3502530 (not res!1412571)) b!3502533))

(assert (= (and d!1017621 (not res!1412573)) b!3502529))

(assert (= (and b!3502529 res!1412576) b!3502532))

(assert (= (and b!3502532 res!1412575) b!3502534))

(assert (= (and b!3502534 res!1412577) b!3502535))

(assert (= (and b!3502535 res!1412574) b!3502531))

(assert (= (and b!3502531 res!1412572) b!3502528))

(declare-fun m!3938301 () Bool)

(assert (=> d!1017621 m!3938301))

(declare-fun m!3938303 () Bool)

(assert (=> d!1017621 m!3938303))

(declare-fun m!3938305 () Bool)

(assert (=> d!1017621 m!3938305))

(declare-fun m!3938307 () Bool)

(assert (=> d!1017621 m!3938307))

(declare-fun m!3938309 () Bool)

(assert (=> b!3502532 m!3938309))

(declare-fun m!3938311 () Bool)

(assert (=> b!3502532 m!3938311))

(assert (=> b!3502532 m!3938311))

(declare-fun m!3938313 () Bool)

(assert (=> b!3502532 m!3938313))

(assert (=> b!3502532 m!3938313))

(declare-fun m!3938315 () Bool)

(assert (=> b!3502532 m!3938315))

(assert (=> b!3502531 m!3938309))

(declare-fun m!3938317 () Bool)

(assert (=> b!3502531 m!3938317))

(assert (=> b!3502531 m!3938317))

(declare-fun m!3938319 () Bool)

(assert (=> b!3502531 m!3938319))

(assert (=> b!3502534 m!3938309))

(declare-fun m!3938321 () Bool)

(assert (=> b!3502534 m!3938321))

(assert (=> b!3502534 m!3937685))

(assert (=> b!3502528 m!3938309))

(declare-fun m!3938323 () Bool)

(assert (=> b!3502528 m!3938323))

(declare-fun m!3938325 () Bool)

(assert (=> b!3502533 m!3938325))

(assert (=> b!3502533 m!3937685))

(assert (=> b!3502533 m!3938325))

(assert (=> b!3502533 m!3937685))

(declare-fun m!3938329 () Bool)

(assert (=> b!3502533 m!3938329))

(declare-fun m!3938333 () Bool)

(assert (=> b!3502533 m!3938333))

(assert (=> b!3502535 m!3938309))

(declare-fun m!3938335 () Bool)

(assert (=> b!3502530 m!3938335))

(declare-fun m!3938337 () Bool)

(assert (=> b!3502530 m!3938337))

(declare-fun m!3938339 () Bool)

(assert (=> b!3502530 m!3938339))

(assert (=> b!3502530 m!3938337))

(declare-fun m!3938341 () Bool)

(assert (=> b!3502530 m!3938341))

(assert (=> b!3502530 m!3938325))

(assert (=> b!3502530 m!3937685))

(assert (=> b!3502530 m!3938325))

(assert (=> b!3502530 m!3937685))

(assert (=> b!3502530 m!3938329))

(assert (=> b!3502530 m!3938337))

(declare-fun m!3938343 () Bool)

(assert (=> b!3502530 m!3938343))

(declare-fun m!3938345 () Bool)

(assert (=> b!3502530 m!3938345))

(assert (=> b!3502530 m!3938337))

(assert (=> b!3502529 m!3938309))

(assert (=> b!3502529 m!3938311))

(assert (=> b!3502529 m!3938311))

(assert (=> b!3502529 m!3938313))

(assert (=> b!3502529 m!3938313))

(declare-fun m!3938347 () Bool)

(assert (=> b!3502529 m!3938347))

(assert (=> b!3502099 d!1017621))

(declare-fun d!1017637 () Bool)

(declare-fun lt!1194050 () BalanceConc!22220)

(declare-fun printListTailRec!708 (LexerInterface!5053 List!37411 List!37409) List!37409)

(declare-fun dropList!1225 (BalanceConc!22222 Int) List!37411)

(assert (=> d!1017637 (= (list!13617 lt!1194050) (printListTailRec!708 thiss!18206 (dropList!1225 lt!1193826 0) (list!13617 (BalanceConc!22221 Empty!11303))))))

(declare-fun e!2168501 () BalanceConc!22220)

(assert (=> d!1017637 (= lt!1194050 e!2168501)))

(declare-fun c!602497 () Bool)

(assert (=> d!1017637 (= c!602497 (>= 0 (size!28340 lt!1193826)))))

(declare-fun e!2168500 () Bool)

(assert (=> d!1017637 e!2168500))

(declare-fun res!1412580 () Bool)

(assert (=> d!1017637 (=> (not res!1412580) (not e!2168500))))

(assert (=> d!1017637 (= res!1412580 (>= 0 0))))

(assert (=> d!1017637 (= (printTailRec!1548 thiss!18206 lt!1193826 0 (BalanceConc!22221 Empty!11303)) lt!1194050)))

(declare-fun b!3502542 () Bool)

(assert (=> b!3502542 (= e!2168500 (<= 0 (size!28340 lt!1193826)))))

(declare-fun b!3502543 () Bool)

(assert (=> b!3502543 (= e!2168501 (BalanceConc!22221 Empty!11303))))

(declare-fun b!3502544 () Bool)

(declare-fun ++!9225 (BalanceConc!22220 BalanceConc!22220) BalanceConc!22220)

(assert (=> b!3502544 (= e!2168501 (printTailRec!1548 thiss!18206 lt!1193826 (+ 0 1) (++!9225 (BalanceConc!22221 Empty!11303) (charsOf!3478 (apply!8848 lt!1193826 0)))))))

(declare-fun lt!1194051 () List!37411)

(assert (=> b!3502544 (= lt!1194051 (list!13620 lt!1193826))))

(declare-fun lt!1194053 () Unit!52850)

(declare-fun lemmaDropApply!1183 (List!37411 Int) Unit!52850)

(assert (=> b!3502544 (= lt!1194053 (lemmaDropApply!1183 lt!1194051 0))))

(declare-fun head!7365 (List!37411) Token!10294)

(declare-fun drop!2037 (List!37411 Int) List!37411)

(declare-fun apply!8852 (List!37411 Int) Token!10294)

(assert (=> b!3502544 (= (head!7365 (drop!2037 lt!1194051 0)) (apply!8852 lt!1194051 0))))

(declare-fun lt!1194052 () Unit!52850)

(assert (=> b!3502544 (= lt!1194052 lt!1194053)))

(declare-fun lt!1194049 () List!37411)

(assert (=> b!3502544 (= lt!1194049 (list!13620 lt!1193826))))

(declare-fun lt!1194054 () Unit!52850)

(declare-fun lemmaDropTail!1067 (List!37411 Int) Unit!52850)

(assert (=> b!3502544 (= lt!1194054 (lemmaDropTail!1067 lt!1194049 0))))

(declare-fun tail!5473 (List!37411) List!37411)

(assert (=> b!3502544 (= (tail!5473 (drop!2037 lt!1194049 0)) (drop!2037 lt!1194049 (+ 0 1)))))

(declare-fun lt!1194055 () Unit!52850)

(assert (=> b!3502544 (= lt!1194055 lt!1194054)))

(assert (= (and d!1017637 res!1412580) b!3502542))

(assert (= (and d!1017637 c!602497) b!3502543))

(assert (= (and d!1017637 (not c!602497)) b!3502544))

(declare-fun m!3938349 () Bool)

(assert (=> d!1017637 m!3938349))

(declare-fun m!3938351 () Bool)

(assert (=> d!1017637 m!3938351))

(declare-fun m!3938353 () Bool)

(assert (=> d!1017637 m!3938353))

(declare-fun m!3938355 () Bool)

(assert (=> d!1017637 m!3938355))

(assert (=> d!1017637 m!3938351))

(declare-fun m!3938357 () Bool)

(assert (=> d!1017637 m!3938357))

(assert (=> d!1017637 m!3938349))

(assert (=> b!3502542 m!3938357))

(declare-fun m!3938359 () Bool)

(assert (=> b!3502544 m!3938359))

(declare-fun m!3938361 () Bool)

(assert (=> b!3502544 m!3938361))

(declare-fun m!3938363 () Bool)

(assert (=> b!3502544 m!3938363))

(declare-fun m!3938365 () Bool)

(assert (=> b!3502544 m!3938365))

(declare-fun m!3938367 () Bool)

(assert (=> b!3502544 m!3938367))

(declare-fun m!3938369 () Bool)

(assert (=> b!3502544 m!3938369))

(declare-fun m!3938371 () Bool)

(assert (=> b!3502544 m!3938371))

(declare-fun m!3938373 () Bool)

(assert (=> b!3502544 m!3938373))

(assert (=> b!3502544 m!3938371))

(declare-fun m!3938375 () Bool)

(assert (=> b!3502544 m!3938375))

(assert (=> b!3502544 m!3938359))

(declare-fun m!3938377 () Bool)

(assert (=> b!3502544 m!3938377))

(declare-fun m!3938379 () Bool)

(assert (=> b!3502544 m!3938379))

(declare-fun m!3938381 () Bool)

(assert (=> b!3502544 m!3938381))

(assert (=> b!3502544 m!3938373))

(assert (=> b!3502544 m!3938379))

(assert (=> b!3502544 m!3938367))

(declare-fun m!3938383 () Bool)

(assert (=> b!3502544 m!3938383))

(assert (=> b!3502099 d!1017637))

(declare-fun d!1017639 () Bool)

(declare-fun e!2168504 () Bool)

(assert (=> d!1017639 e!2168504))

(declare-fun res!1412583 () Bool)

(assert (=> d!1017639 (=> (not res!1412583) (not e!2168504))))

(declare-fun lt!1194058 () BalanceConc!22222)

(assert (=> d!1017639 (= res!1412583 (= (list!13620 lt!1194058) (Cons!37287 separatorToken!241 Nil!37287)))))

(declare-fun singleton!1140 (Token!10294) BalanceConc!22222)

(assert (=> d!1017639 (= lt!1194058 (singleton!1140 separatorToken!241))))

(assert (=> d!1017639 (= (singletonSeq!2560 separatorToken!241) lt!1194058)))

(declare-fun b!3502547 () Bool)

(declare-fun isBalanced!3443 (Conc!11304) Bool)

(assert (=> b!3502547 (= e!2168504 (isBalanced!3443 (c!602402 lt!1194058)))))

(assert (= (and d!1017639 res!1412583) b!3502547))

(declare-fun m!3938385 () Bool)

(assert (=> d!1017639 m!3938385))

(declare-fun m!3938387 () Bool)

(assert (=> d!1017639 m!3938387))

(declare-fun m!3938389 () Bool)

(assert (=> b!3502547 m!3938389))

(assert (=> b!3502099 d!1017639))

(declare-fun d!1017641 () Bool)

(declare-fun lt!1194061 () BalanceConc!22220)

(assert (=> d!1017641 (= (list!13617 lt!1194061) (printList!1601 thiss!18206 (list!13620 lt!1193852)))))

(assert (=> d!1017641 (= lt!1194061 (printTailRec!1548 thiss!18206 lt!1193852 0 (BalanceConc!22221 Empty!11303)))))

(assert (=> d!1017641 (= (print!2118 thiss!18206 lt!1193852) lt!1194061)))

(declare-fun bs!563795 () Bool)

(assert (= bs!563795 d!1017641))

(declare-fun m!3938391 () Bool)

(assert (=> bs!563795 m!3938391))

(declare-fun m!3938393 () Bool)

(assert (=> bs!563795 m!3938393))

(assert (=> bs!563795 m!3938393))

(declare-fun m!3938395 () Bool)

(assert (=> bs!563795 m!3938395))

(assert (=> bs!563795 m!3937653))

(assert (=> b!3502099 d!1017641))

(declare-fun b!3502548 () Bool)

(declare-fun lt!1194064 () Unit!52850)

(declare-fun lt!1194062 () Unit!52850)

(assert (=> b!3502548 (= lt!1194064 lt!1194062)))

(assert (=> b!3502548 (rulesInvariant!4450 thiss!18206 (t!279009 rules!2135))))

(assert (=> b!3502548 (= lt!1194062 (lemmaInvariantOnRulesThenOnTail!451 thiss!18206 (h!42706 rules!2135) (t!279009 rules!2135)))))

(declare-fun e!2168508 () Option!7585)

(assert (=> b!3502548 (= e!2168508 (getRuleFromTag!1107 thiss!18206 (t!279009 rules!2135) (tag!6092 (rule!8086 separatorToken!241))))))

(declare-fun d!1017643 () Bool)

(declare-fun e!2168507 () Bool)

(assert (=> d!1017643 e!2168507))

(declare-fun res!1412585 () Bool)

(assert (=> d!1017643 (=> res!1412585 e!2168507)))

(declare-fun lt!1194063 () Option!7585)

(assert (=> d!1017643 (= res!1412585 (isEmpty!21712 lt!1194063))))

(declare-fun e!2168506 () Option!7585)

(assert (=> d!1017643 (= lt!1194063 e!2168506)))

(declare-fun c!602498 () Bool)

(assert (=> d!1017643 (= c!602498 (and ((_ is Cons!37286) rules!2135) (= (tag!6092 (h!42706 rules!2135)) (tag!6092 (rule!8086 separatorToken!241)))))))

(assert (=> d!1017643 (rulesInvariant!4450 thiss!18206 rules!2135)))

(assert (=> d!1017643 (= (getRuleFromTag!1107 thiss!18206 rules!2135 (tag!6092 (rule!8086 separatorToken!241))) lt!1194063)))

(declare-fun b!3502549 () Bool)

(assert (=> b!3502549 (= e!2168508 None!7584)))

(declare-fun b!3502550 () Bool)

(assert (=> b!3502550 (= e!2168506 e!2168508)))

(declare-fun c!602499 () Bool)

(assert (=> b!3502550 (= c!602499 (and ((_ is Cons!37286) rules!2135) (not (= (tag!6092 (h!42706 rules!2135)) (tag!6092 (rule!8086 separatorToken!241))))))))

(declare-fun b!3502551 () Bool)

(declare-fun e!2168505 () Bool)

(assert (=> b!3502551 (= e!2168505 (= (tag!6092 (get!11959 lt!1194063)) (tag!6092 (rule!8086 separatorToken!241))))))

(declare-fun b!3502552 () Bool)

(assert (=> b!3502552 (= e!2168507 e!2168505)))

(declare-fun res!1412584 () Bool)

(assert (=> b!3502552 (=> (not res!1412584) (not e!2168505))))

(assert (=> b!3502552 (= res!1412584 (contains!6967 rules!2135 (get!11959 lt!1194063)))))

(declare-fun b!3502553 () Bool)

(assert (=> b!3502553 (= e!2168506 (Some!7584 (h!42706 rules!2135)))))

(assert (= (and d!1017643 c!602498) b!3502553))

(assert (= (and d!1017643 (not c!602498)) b!3502550))

(assert (= (and b!3502550 c!602499) b!3502548))

(assert (= (and b!3502550 (not c!602499)) b!3502549))

(assert (= (and d!1017643 (not res!1412585)) b!3502552))

(assert (= (and b!3502552 res!1412584) b!3502551))

(assert (=> b!3502548 m!3937975))

(assert (=> b!3502548 m!3937977))

(declare-fun m!3938397 () Bool)

(assert (=> b!3502548 m!3938397))

(declare-fun m!3938399 () Bool)

(assert (=> d!1017643 m!3938399))

(assert (=> d!1017643 m!3937749))

(declare-fun m!3938401 () Bool)

(assert (=> b!3502551 m!3938401))

(assert (=> b!3502552 m!3938401))

(assert (=> b!3502552 m!3938401))

(declare-fun m!3938403 () Bool)

(assert (=> b!3502552 m!3938403))

(assert (=> b!3502099 d!1017643))

(declare-fun d!1017645 () Bool)

(declare-fun e!2168511 () Bool)

(assert (=> d!1017645 e!2168511))

(declare-fun res!1412590 () Bool)

(assert (=> d!1017645 (=> (not res!1412590) (not e!2168511))))

(assert (=> d!1017645 (= res!1412590 (isDefined!5846 (getRuleFromTag!1107 thiss!18206 rules!2135 (tag!6092 (rule!8086 (h!42707 tokens!494))))))))

(declare-fun lt!1194067 () Unit!52850)

(declare-fun choose!20307 (LexerInterface!5053 List!37410 List!37409 Token!10294) Unit!52850)

(assert (=> d!1017645 (= lt!1194067 (choose!20307 thiss!18206 rules!2135 lt!1193830 (h!42707 tokens!494)))))

(assert (=> d!1017645 (rulesInvariant!4450 thiss!18206 rules!2135)))

(assert (=> d!1017645 (= (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1107 thiss!18206 rules!2135 lt!1193830 (h!42707 tokens!494)) lt!1194067)))

(declare-fun b!3502558 () Bool)

(declare-fun res!1412591 () Bool)

(assert (=> b!3502558 (=> (not res!1412591) (not e!2168511))))

(assert (=> b!3502558 (= res!1412591 (matchR!4807 (regex!5464 (get!11959 (getRuleFromTag!1107 thiss!18206 rules!2135 (tag!6092 (rule!8086 (h!42707 tokens!494)))))) (list!13617 (charsOf!3478 (h!42707 tokens!494)))))))

(declare-fun b!3502559 () Bool)

(assert (=> b!3502559 (= e!2168511 (= (rule!8086 (h!42707 tokens!494)) (get!11959 (getRuleFromTag!1107 thiss!18206 rules!2135 (tag!6092 (rule!8086 (h!42707 tokens!494)))))))))

(assert (= (and d!1017645 res!1412590) b!3502558))

(assert (= (and b!3502558 res!1412591) b!3502559))

(assert (=> d!1017645 m!3937651))

(assert (=> d!1017645 m!3937651))

(declare-fun m!3938405 () Bool)

(assert (=> d!1017645 m!3938405))

(declare-fun m!3938407 () Bool)

(assert (=> d!1017645 m!3938407))

(assert (=> d!1017645 m!3937749))

(assert (=> b!3502558 m!3937725))

(assert (=> b!3502558 m!3937651))

(declare-fun m!3938409 () Bool)

(assert (=> b!3502558 m!3938409))

(assert (=> b!3502558 m!3937727))

(declare-fun m!3938411 () Bool)

(assert (=> b!3502558 m!3938411))

(assert (=> b!3502558 m!3937651))

(assert (=> b!3502558 m!3937725))

(assert (=> b!3502558 m!3937727))

(assert (=> b!3502559 m!3937651))

(assert (=> b!3502559 m!3937651))

(assert (=> b!3502559 m!3938409))

(assert (=> b!3502099 d!1017645))

(declare-fun b!3502560 () Bool)

(declare-fun e!2168512 () Bool)

(declare-fun lt!1194068 () tuple2!37080)

(assert (=> b!3502560 (= e!2168512 (= (_2!21674 lt!1194068) lt!1193849))))

(declare-fun e!2168514 () Bool)

(declare-fun b!3502561 () Bool)

(assert (=> b!3502561 (= e!2168514 (= (list!13617 (_2!21674 lt!1194068)) (_2!21676 (lexList!1467 thiss!18206 rules!2135 (list!13617 lt!1193849)))))))

(declare-fun b!3502562 () Bool)

(declare-fun e!2168513 () Bool)

(assert (=> b!3502562 (= e!2168512 e!2168513)))

(declare-fun res!1412594 () Bool)

(assert (=> b!3502562 (= res!1412594 (< (size!28344 (_2!21674 lt!1194068)) (size!28344 lt!1193849)))))

(assert (=> b!3502562 (=> (not res!1412594) (not e!2168513))))

(declare-fun b!3502563 () Bool)

(declare-fun res!1412592 () Bool)

(assert (=> b!3502563 (=> (not res!1412592) (not e!2168514))))

(assert (=> b!3502563 (= res!1412592 (= (list!13620 (_1!21674 lt!1194068)) (_1!21676 (lexList!1467 thiss!18206 rules!2135 (list!13617 lt!1193849)))))))

(declare-fun b!3502564 () Bool)

(assert (=> b!3502564 (= e!2168513 (not (isEmpty!21709 (_1!21674 lt!1194068))))))

(declare-fun d!1017647 () Bool)

(assert (=> d!1017647 e!2168514))

(declare-fun res!1412593 () Bool)

(assert (=> d!1017647 (=> (not res!1412593) (not e!2168514))))

(assert (=> d!1017647 (= res!1412593 e!2168512)))

(declare-fun c!602500 () Bool)

(assert (=> d!1017647 (= c!602500 (> (size!28340 (_1!21674 lt!1194068)) 0))))

(assert (=> d!1017647 (= lt!1194068 (lexTailRecV2!1075 thiss!18206 rules!2135 lt!1193849 (BalanceConc!22221 Empty!11303) lt!1193849 (BalanceConc!22223 Empty!11304)))))

(assert (=> d!1017647 (= (lex!2379 thiss!18206 rules!2135 lt!1193849) lt!1194068)))

(assert (= (and d!1017647 c!602500) b!3502562))

(assert (= (and d!1017647 (not c!602500)) b!3502560))

(assert (= (and b!3502562 res!1412594) b!3502564))

(assert (= (and d!1017647 res!1412593) b!3502563))

(assert (= (and b!3502563 res!1412592) b!3502561))

(declare-fun m!3938413 () Bool)

(assert (=> b!3502563 m!3938413))

(declare-fun m!3938415 () Bool)

(assert (=> b!3502563 m!3938415))

(assert (=> b!3502563 m!3938415))

(declare-fun m!3938417 () Bool)

(assert (=> b!3502563 m!3938417))

(declare-fun m!3938419 () Bool)

(assert (=> b!3502564 m!3938419))

(declare-fun m!3938421 () Bool)

(assert (=> b!3502561 m!3938421))

(assert (=> b!3502561 m!3938415))

(assert (=> b!3502561 m!3938415))

(assert (=> b!3502561 m!3938417))

(declare-fun m!3938423 () Bool)

(assert (=> d!1017647 m!3938423))

(declare-fun m!3938425 () Bool)

(assert (=> d!1017647 m!3938425))

(declare-fun m!3938427 () Bool)

(assert (=> b!3502562 m!3938427))

(declare-fun m!3938429 () Bool)

(assert (=> b!3502562 m!3938429))

(assert (=> b!3502099 d!1017647))

(declare-fun d!1017649 () Bool)

(declare-fun lt!1194070 () BalanceConc!22220)

(assert (=> d!1017649 (= (list!13617 lt!1194070) (printListTailRec!708 thiss!18206 (dropList!1225 lt!1193852 0) (list!13617 (BalanceConc!22221 Empty!11303))))))

(declare-fun e!2168516 () BalanceConc!22220)

(assert (=> d!1017649 (= lt!1194070 e!2168516)))

(declare-fun c!602501 () Bool)

(assert (=> d!1017649 (= c!602501 (>= 0 (size!28340 lt!1193852)))))

(declare-fun e!2168515 () Bool)

(assert (=> d!1017649 e!2168515))

(declare-fun res!1412595 () Bool)

(assert (=> d!1017649 (=> (not res!1412595) (not e!2168515))))

(assert (=> d!1017649 (= res!1412595 (>= 0 0))))

(assert (=> d!1017649 (= (printTailRec!1548 thiss!18206 lt!1193852 0 (BalanceConc!22221 Empty!11303)) lt!1194070)))

(declare-fun b!3502565 () Bool)

(assert (=> b!3502565 (= e!2168515 (<= 0 (size!28340 lt!1193852)))))

(declare-fun b!3502566 () Bool)

(assert (=> b!3502566 (= e!2168516 (BalanceConc!22221 Empty!11303))))

(declare-fun b!3502567 () Bool)

(assert (=> b!3502567 (= e!2168516 (printTailRec!1548 thiss!18206 lt!1193852 (+ 0 1) (++!9225 (BalanceConc!22221 Empty!11303) (charsOf!3478 (apply!8848 lt!1193852 0)))))))

(declare-fun lt!1194071 () List!37411)

(assert (=> b!3502567 (= lt!1194071 (list!13620 lt!1193852))))

(declare-fun lt!1194073 () Unit!52850)

(assert (=> b!3502567 (= lt!1194073 (lemmaDropApply!1183 lt!1194071 0))))

(assert (=> b!3502567 (= (head!7365 (drop!2037 lt!1194071 0)) (apply!8852 lt!1194071 0))))

(declare-fun lt!1194072 () Unit!52850)

(assert (=> b!3502567 (= lt!1194072 lt!1194073)))

(declare-fun lt!1194069 () List!37411)

(assert (=> b!3502567 (= lt!1194069 (list!13620 lt!1193852))))

(declare-fun lt!1194074 () Unit!52850)

(assert (=> b!3502567 (= lt!1194074 (lemmaDropTail!1067 lt!1194069 0))))

(assert (=> b!3502567 (= (tail!5473 (drop!2037 lt!1194069 0)) (drop!2037 lt!1194069 (+ 0 1)))))

(declare-fun lt!1194075 () Unit!52850)

(assert (=> b!3502567 (= lt!1194075 lt!1194074)))

(assert (= (and d!1017649 res!1412595) b!3502565))

(assert (= (and d!1017649 c!602501) b!3502566))

(assert (= (and d!1017649 (not c!602501)) b!3502567))

(declare-fun m!3938431 () Bool)

(assert (=> d!1017649 m!3938431))

(assert (=> d!1017649 m!3938351))

(declare-fun m!3938433 () Bool)

(assert (=> d!1017649 m!3938433))

(declare-fun m!3938435 () Bool)

(assert (=> d!1017649 m!3938435))

(assert (=> d!1017649 m!3938351))

(declare-fun m!3938437 () Bool)

(assert (=> d!1017649 m!3938437))

(assert (=> d!1017649 m!3938431))

(assert (=> b!3502565 m!3938437))

(declare-fun m!3938439 () Bool)

(assert (=> b!3502567 m!3938439))

(assert (=> b!3502567 m!3938393))

(declare-fun m!3938441 () Bool)

(assert (=> b!3502567 m!3938441))

(declare-fun m!3938443 () Bool)

(assert (=> b!3502567 m!3938443))

(declare-fun m!3938445 () Bool)

(assert (=> b!3502567 m!3938445))

(declare-fun m!3938447 () Bool)

(assert (=> b!3502567 m!3938447))

(declare-fun m!3938449 () Bool)

(assert (=> b!3502567 m!3938449))

(declare-fun m!3938451 () Bool)

(assert (=> b!3502567 m!3938451))

(assert (=> b!3502567 m!3938449))

(declare-fun m!3938453 () Bool)

(assert (=> b!3502567 m!3938453))

(assert (=> b!3502567 m!3938439))

(declare-fun m!3938455 () Bool)

(assert (=> b!3502567 m!3938455))

(declare-fun m!3938457 () Bool)

(assert (=> b!3502567 m!3938457))

(declare-fun m!3938459 () Bool)

(assert (=> b!3502567 m!3938459))

(assert (=> b!3502567 m!3938451))

(assert (=> b!3502567 m!3938457))

(assert (=> b!3502567 m!3938445))

(declare-fun m!3938461 () Bool)

(assert (=> b!3502567 m!3938461))

(assert (=> b!3502099 d!1017649))

(declare-fun d!1017651 () Bool)

(declare-fun e!2168517 () Bool)

(assert (=> d!1017651 e!2168517))

(declare-fun res!1412596 () Bool)

(assert (=> d!1017651 (=> (not res!1412596) (not e!2168517))))

(assert (=> d!1017651 (= res!1412596 (isDefined!5846 (getRuleFromTag!1107 thiss!18206 rules!2135 (tag!6092 (rule!8086 (h!42707 (t!279010 tokens!494)))))))))

(declare-fun lt!1194076 () Unit!52850)

(assert (=> d!1017651 (= lt!1194076 (choose!20307 thiss!18206 rules!2135 lt!1193858 (h!42707 (t!279010 tokens!494))))))

(assert (=> d!1017651 (rulesInvariant!4450 thiss!18206 rules!2135)))

(assert (=> d!1017651 (= (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1107 thiss!18206 rules!2135 lt!1193858 (h!42707 (t!279010 tokens!494))) lt!1194076)))

(declare-fun b!3502568 () Bool)

(declare-fun res!1412597 () Bool)

(assert (=> b!3502568 (=> (not res!1412597) (not e!2168517))))

(assert (=> b!3502568 (= res!1412597 (matchR!4807 (regex!5464 (get!11959 (getRuleFromTag!1107 thiss!18206 rules!2135 (tag!6092 (rule!8086 (h!42707 (t!279010 tokens!494))))))) (list!13617 (charsOf!3478 (h!42707 (t!279010 tokens!494))))))))

(declare-fun b!3502569 () Bool)

(assert (=> b!3502569 (= e!2168517 (= (rule!8086 (h!42707 (t!279010 tokens!494))) (get!11959 (getRuleFromTag!1107 thiss!18206 rules!2135 (tag!6092 (rule!8086 (h!42707 (t!279010 tokens!494))))))))))

(assert (= (and d!1017651 res!1412596) b!3502568))

(assert (= (and b!3502568 res!1412597) b!3502569))

(assert (=> d!1017651 m!3937697))

(assert (=> d!1017651 m!3937697))

(declare-fun m!3938463 () Bool)

(assert (=> d!1017651 m!3938463))

(declare-fun m!3938465 () Bool)

(assert (=> d!1017651 m!3938465))

(assert (=> d!1017651 m!3937749))

(assert (=> b!3502568 m!3937815))

(assert (=> b!3502568 m!3937697))

(declare-fun m!3938467 () Bool)

(assert (=> b!3502568 m!3938467))

(assert (=> b!3502568 m!3937817))

(declare-fun m!3938469 () Bool)

(assert (=> b!3502568 m!3938469))

(assert (=> b!3502568 m!3937697))

(assert (=> b!3502568 m!3937815))

(assert (=> b!3502568 m!3937817))

(assert (=> b!3502569 m!3937697))

(assert (=> b!3502569 m!3937697))

(assert (=> b!3502569 m!3938467))

(assert (=> b!3502099 d!1017651))

(declare-fun d!1017653 () Bool)

(declare-fun lt!1194079 () Bool)

(declare-fun content!5240 (List!37410) (InoxSet Rule!10728))

(assert (=> d!1017653 (= lt!1194079 (select (content!5240 rules!2135) (rule!8086 (h!42707 (t!279010 tokens!494)))))))

(declare-fun e!2168522 () Bool)

(assert (=> d!1017653 (= lt!1194079 e!2168522)))

(declare-fun res!1412603 () Bool)

(assert (=> d!1017653 (=> (not res!1412603) (not e!2168522))))

(assert (=> d!1017653 (= res!1412603 ((_ is Cons!37286) rules!2135))))

(assert (=> d!1017653 (= (contains!6967 rules!2135 (rule!8086 (h!42707 (t!279010 tokens!494)))) lt!1194079)))

(declare-fun b!3502574 () Bool)

(declare-fun e!2168523 () Bool)

(assert (=> b!3502574 (= e!2168522 e!2168523)))

(declare-fun res!1412602 () Bool)

(assert (=> b!3502574 (=> res!1412602 e!2168523)))

(assert (=> b!3502574 (= res!1412602 (= (h!42706 rules!2135) (rule!8086 (h!42707 (t!279010 tokens!494)))))))

(declare-fun b!3502575 () Bool)

(assert (=> b!3502575 (= e!2168523 (contains!6967 (t!279009 rules!2135) (rule!8086 (h!42707 (t!279010 tokens!494)))))))

(assert (= (and d!1017653 res!1412603) b!3502574))

(assert (= (and b!3502574 (not res!1412602)) b!3502575))

(declare-fun m!3938471 () Bool)

(assert (=> d!1017653 m!3938471))

(declare-fun m!3938473 () Bool)

(assert (=> d!1017653 m!3938473))

(declare-fun m!3938475 () Bool)

(assert (=> b!3502575 m!3938475))

(assert (=> b!3502099 d!1017653))

(declare-fun d!1017655 () Bool)

(declare-fun e!2168524 () Bool)

(assert (=> d!1017655 e!2168524))

(declare-fun res!1412604 () Bool)

(assert (=> d!1017655 (=> (not res!1412604) (not e!2168524))))

(declare-fun lt!1194080 () BalanceConc!22222)

(assert (=> d!1017655 (= res!1412604 (= (list!13620 lt!1194080) (Cons!37287 (h!42707 (t!279010 tokens!494)) Nil!37287)))))

(assert (=> d!1017655 (= lt!1194080 (singleton!1140 (h!42707 (t!279010 tokens!494))))))

(assert (=> d!1017655 (= (singletonSeq!2560 (h!42707 (t!279010 tokens!494))) lt!1194080)))

(declare-fun b!3502576 () Bool)

(assert (=> b!3502576 (= e!2168524 (isBalanced!3443 (c!602402 lt!1194080)))))

(assert (= (and d!1017655 res!1412604) b!3502576))

(declare-fun m!3938477 () Bool)

(assert (=> d!1017655 m!3938477))

(declare-fun m!3938479 () Bool)

(assert (=> d!1017655 m!3938479))

(declare-fun m!3938481 () Bool)

(assert (=> b!3502576 m!3938481))

(assert (=> b!3502099 d!1017655))

(declare-fun b!3502620 () Bool)

(declare-fun e!2168550 () Bool)

(declare-fun e!2168551 () Bool)

(assert (=> b!3502620 (= e!2168550 e!2168551)))

(declare-fun res!1412640 () Bool)

(assert (=> b!3502620 (=> (not res!1412640) (not e!2168551))))

(declare-fun lt!1194113 () Option!7586)

(declare-fun isDefined!5848 (Option!7586) Bool)

(assert (=> b!3502620 (= res!1412640 (isDefined!5848 lt!1194113))))

(declare-fun b!3502621 () Bool)

(declare-fun e!2168549 () Option!7586)

(declare-fun lt!1194109 () Option!7586)

(declare-fun lt!1194110 () Option!7586)

(assert (=> b!3502621 (= e!2168549 (ite (and ((_ is None!7585) lt!1194109) ((_ is None!7585) lt!1194110)) None!7585 (ite ((_ is None!7585) lt!1194110) lt!1194109 (ite ((_ is None!7585) lt!1194109) lt!1194110 (ite (>= (size!28339 (_1!21675 (v!37021 lt!1194109))) (size!28339 (_1!21675 (v!37021 lt!1194110)))) lt!1194109 lt!1194110)))))))

(declare-fun call!252898 () Option!7586)

(assert (=> b!3502621 (= lt!1194109 call!252898)))

(assert (=> b!3502621 (= lt!1194110 (maxPrefix!2593 thiss!18206 (t!279009 rules!2135) lt!1193831))))

(declare-fun b!3502622 () Bool)

(assert (=> b!3502622 (= e!2168549 call!252898)))

(declare-fun b!3502623 () Bool)

(declare-fun res!1412637 () Bool)

(assert (=> b!3502623 (=> (not res!1412637) (not e!2168551))))

(assert (=> b!3502623 (= res!1412637 (= (++!9223 (list!13617 (charsOf!3478 (_1!21675 (get!11960 lt!1194113)))) (_2!21675 (get!11960 lt!1194113))) lt!1193831))))

(declare-fun d!1017657 () Bool)

(assert (=> d!1017657 e!2168550))

(declare-fun res!1412639 () Bool)

(assert (=> d!1017657 (=> res!1412639 e!2168550)))

(assert (=> d!1017657 (= res!1412639 (isEmpty!21714 lt!1194113))))

(assert (=> d!1017657 (= lt!1194113 e!2168549)))

(declare-fun c!602509 () Bool)

(assert (=> d!1017657 (= c!602509 (and ((_ is Cons!37286) rules!2135) ((_ is Nil!37286) (t!279009 rules!2135))))))

(declare-fun lt!1194111 () Unit!52850)

(declare-fun lt!1194112 () Unit!52850)

(assert (=> d!1017657 (= lt!1194111 lt!1194112)))

(declare-fun isPrefix!2864 (List!37409 List!37409) Bool)

(assert (=> d!1017657 (isPrefix!2864 lt!1193831 lt!1193831)))

(declare-fun lemmaIsPrefixRefl!1823 (List!37409 List!37409) Unit!52850)

(assert (=> d!1017657 (= lt!1194112 (lemmaIsPrefixRefl!1823 lt!1193831 lt!1193831))))

(declare-fun rulesValidInductive!1873 (LexerInterface!5053 List!37410) Bool)

(assert (=> d!1017657 (rulesValidInductive!1873 thiss!18206 rules!2135)))

(assert (=> d!1017657 (= (maxPrefix!2593 thiss!18206 rules!2135 lt!1193831) lt!1194113)))

(declare-fun bm!252893 () Bool)

(assert (=> bm!252893 (= call!252898 (maxPrefixOneRule!1760 thiss!18206 (h!42706 rules!2135) lt!1193831))))

(declare-fun b!3502624 () Bool)

(declare-fun res!1412635 () Bool)

(assert (=> b!3502624 (=> (not res!1412635) (not e!2168551))))

(assert (=> b!3502624 (= res!1412635 (matchR!4807 (regex!5464 (rule!8086 (_1!21675 (get!11960 lt!1194113)))) (list!13617 (charsOf!3478 (_1!21675 (get!11960 lt!1194113))))))))

(declare-fun b!3502625 () Bool)

(declare-fun res!1412634 () Bool)

(assert (=> b!3502625 (=> (not res!1412634) (not e!2168551))))

(assert (=> b!3502625 (= res!1412634 (< (size!28341 (_2!21675 (get!11960 lt!1194113))) (size!28341 lt!1193831)))))

(declare-fun b!3502626 () Bool)

(declare-fun res!1412636 () Bool)

(assert (=> b!3502626 (=> (not res!1412636) (not e!2168551))))

(assert (=> b!3502626 (= res!1412636 (= (value!176184 (_1!21675 (get!11960 lt!1194113))) (apply!8849 (transformation!5464 (rule!8086 (_1!21675 (get!11960 lt!1194113)))) (seqFromList!3981 (originalCharacters!6178 (_1!21675 (get!11960 lt!1194113)))))))))

(declare-fun b!3502627 () Bool)

(declare-fun res!1412638 () Bool)

(assert (=> b!3502627 (=> (not res!1412638) (not e!2168551))))

(assert (=> b!3502627 (= res!1412638 (= (list!13617 (charsOf!3478 (_1!21675 (get!11960 lt!1194113)))) (originalCharacters!6178 (_1!21675 (get!11960 lt!1194113)))))))

(declare-fun b!3502628 () Bool)

(assert (=> b!3502628 (= e!2168551 (contains!6967 rules!2135 (rule!8086 (_1!21675 (get!11960 lt!1194113)))))))

(assert (= (and d!1017657 c!602509) b!3502622))

(assert (= (and d!1017657 (not c!602509)) b!3502621))

(assert (= (or b!3502622 b!3502621) bm!252893))

(assert (= (and d!1017657 (not res!1412639)) b!3502620))

(assert (= (and b!3502620 res!1412640) b!3502627))

(assert (= (and b!3502627 res!1412638) b!3502625))

(assert (= (and b!3502625 res!1412634) b!3502623))

(assert (= (and b!3502623 res!1412637) b!3502626))

(assert (= (and b!3502626 res!1412636) b!3502624))

(assert (= (and b!3502624 res!1412635) b!3502628))

(declare-fun m!3938567 () Bool)

(assert (=> b!3502621 m!3938567))

(declare-fun m!3938569 () Bool)

(assert (=> b!3502627 m!3938569))

(declare-fun m!3938571 () Bool)

(assert (=> b!3502627 m!3938571))

(assert (=> b!3502627 m!3938571))

(declare-fun m!3938573 () Bool)

(assert (=> b!3502627 m!3938573))

(assert (=> b!3502626 m!3938569))

(declare-fun m!3938575 () Bool)

(assert (=> b!3502626 m!3938575))

(assert (=> b!3502626 m!3938575))

(declare-fun m!3938577 () Bool)

(assert (=> b!3502626 m!3938577))

(assert (=> b!3502624 m!3938569))

(assert (=> b!3502624 m!3938571))

(assert (=> b!3502624 m!3938571))

(assert (=> b!3502624 m!3938573))

(assert (=> b!3502624 m!3938573))

(declare-fun m!3938579 () Bool)

(assert (=> b!3502624 m!3938579))

(assert (=> b!3502625 m!3938569))

(declare-fun m!3938581 () Bool)

(assert (=> b!3502625 m!3938581))

(declare-fun m!3938583 () Bool)

(assert (=> b!3502625 m!3938583))

(declare-fun m!3938585 () Bool)

(assert (=> b!3502620 m!3938585))

(assert (=> b!3502623 m!3938569))

(assert (=> b!3502623 m!3938571))

(assert (=> b!3502623 m!3938571))

(assert (=> b!3502623 m!3938573))

(assert (=> b!3502623 m!3938573))

(declare-fun m!3938587 () Bool)

(assert (=> b!3502623 m!3938587))

(declare-fun m!3938589 () Bool)

(assert (=> d!1017657 m!3938589))

(declare-fun m!3938591 () Bool)

(assert (=> d!1017657 m!3938591))

(declare-fun m!3938593 () Bool)

(assert (=> d!1017657 m!3938593))

(declare-fun m!3938595 () Bool)

(assert (=> d!1017657 m!3938595))

(declare-fun m!3938597 () Bool)

(assert (=> bm!252893 m!3938597))

(assert (=> b!3502628 m!3938569))

(declare-fun m!3938599 () Bool)

(assert (=> b!3502628 m!3938599))

(assert (=> b!3502099 d!1017657))

(declare-fun d!1017679 () Bool)

(declare-fun e!2168552 () Bool)

(assert (=> d!1017679 e!2168552))

(declare-fun res!1412641 () Bool)

(assert (=> d!1017679 (=> (not res!1412641) (not e!2168552))))

(assert (=> d!1017679 (= res!1412641 (isDefined!5846 (getRuleFromTag!1107 thiss!18206 rules!2135 (tag!6092 (rule!8086 separatorToken!241)))))))

(declare-fun lt!1194114 () Unit!52850)

(assert (=> d!1017679 (= lt!1194114 (choose!20307 thiss!18206 rules!2135 lt!1193823 separatorToken!241))))

(assert (=> d!1017679 (rulesInvariant!4450 thiss!18206 rules!2135)))

(assert (=> d!1017679 (= (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1107 thiss!18206 rules!2135 lt!1193823 separatorToken!241) lt!1194114)))

(declare-fun b!3502629 () Bool)

(declare-fun res!1412642 () Bool)

(assert (=> b!3502629 (=> (not res!1412642) (not e!2168552))))

(assert (=> b!3502629 (= res!1412642 (matchR!4807 (regex!5464 (get!11959 (getRuleFromTag!1107 thiss!18206 rules!2135 (tag!6092 (rule!8086 separatorToken!241))))) (list!13617 (charsOf!3478 separatorToken!241))))))

(declare-fun b!3502630 () Bool)

(assert (=> b!3502630 (= e!2168552 (= (rule!8086 separatorToken!241) (get!11959 (getRuleFromTag!1107 thiss!18206 rules!2135 (tag!6092 (rule!8086 separatorToken!241))))))))

(assert (= (and d!1017679 res!1412641) b!3502629))

(assert (= (and b!3502629 res!1412642) b!3502630))

(assert (=> d!1017679 m!3937659))

(assert (=> d!1017679 m!3937659))

(declare-fun m!3938601 () Bool)

(assert (=> d!1017679 m!3938601))

(declare-fun m!3938603 () Bool)

(assert (=> d!1017679 m!3938603))

(assert (=> d!1017679 m!3937749))

(assert (=> b!3502629 m!3937809))

(assert (=> b!3502629 m!3937659))

(declare-fun m!3938605 () Bool)

(assert (=> b!3502629 m!3938605))

(assert (=> b!3502629 m!3937823))

(declare-fun m!3938607 () Bool)

(assert (=> b!3502629 m!3938607))

(assert (=> b!3502629 m!3937659))

(assert (=> b!3502629 m!3937809))

(assert (=> b!3502629 m!3937823))

(assert (=> b!3502630 m!3937659))

(assert (=> b!3502630 m!3937659))

(assert (=> b!3502630 m!3938605))

(assert (=> b!3502099 d!1017679))

(declare-fun d!1017681 () Bool)

(declare-fun lt!1194115 () BalanceConc!22220)

(assert (=> d!1017681 (= (list!13617 lt!1194115) (printList!1601 thiss!18206 (list!13620 lt!1193826)))))

(assert (=> d!1017681 (= lt!1194115 (printTailRec!1548 thiss!18206 lt!1193826 0 (BalanceConc!22221 Empty!11303)))))

(assert (=> d!1017681 (= (print!2118 thiss!18206 lt!1193826) lt!1194115)))

(declare-fun bs!563800 () Bool)

(assert (= bs!563800 d!1017681))

(declare-fun m!3938609 () Bool)

(assert (=> bs!563800 m!3938609))

(assert (=> bs!563800 m!3938361))

(assert (=> bs!563800 m!3938361))

(declare-fun m!3938611 () Bool)

(assert (=> bs!563800 m!3938611))

(assert (=> bs!563800 m!3937707))

(assert (=> b!3502099 d!1017681))

(declare-fun d!1017683 () Bool)

(assert (=> d!1017683 (not (contains!6968 (usedCharacters!698 (regex!5464 (rule!8086 (h!42707 tokens!494)))) lt!1193853))))

(declare-fun lt!1194118 () Unit!52850)

(declare-fun choose!20311 (LexerInterface!5053 List!37410 List!37410 Rule!10728 Rule!10728 C!20632) Unit!52850)

(assert (=> d!1017683 (= lt!1194118 (choose!20311 thiss!18206 rules!2135 rules!2135 (rule!8086 (h!42707 tokens!494)) (rule!8086 separatorToken!241) lt!1193853))))

(assert (=> d!1017683 (rulesInvariant!4450 thiss!18206 rules!2135)))

(assert (=> d!1017683 (= (lemmaNonSepRuleNotContainsCharContainedInASepRule!264 thiss!18206 rules!2135 rules!2135 (rule!8086 (h!42707 tokens!494)) (rule!8086 separatorToken!241) lt!1193853) lt!1194118)))

(declare-fun bs!563801 () Bool)

(assert (= bs!563801 d!1017683))

(assert (=> bs!563801 m!3937645))

(assert (=> bs!563801 m!3937645))

(assert (=> bs!563801 m!3937647))

(declare-fun m!3938613 () Bool)

(assert (=> bs!563801 m!3938613))

(assert (=> bs!563801 m!3937749))

(assert (=> b!3502099 d!1017683))

(declare-fun d!1017685 () Bool)

(declare-fun lt!1194121 () Int)

(declare-fun size!28346 (List!37411) Int)

(assert (=> d!1017685 (= lt!1194121 (size!28346 (list!13620 (_1!21674 lt!1193824))))))

(declare-fun size!28347 (Conc!11304) Int)

(assert (=> d!1017685 (= lt!1194121 (size!28347 (c!602402 (_1!21674 lt!1193824))))))

(assert (=> d!1017685 (= (size!28340 (_1!21674 lt!1193824)) lt!1194121)))

(declare-fun bs!563802 () Bool)

(assert (= bs!563802 d!1017685))

(declare-fun m!3938615 () Bool)

(assert (=> bs!563802 m!3938615))

(assert (=> bs!563802 m!3938615))

(declare-fun m!3938617 () Bool)

(assert (=> bs!563802 m!3938617))

(declare-fun m!3938619 () Bool)

(assert (=> bs!563802 m!3938619))

(assert (=> b!3502099 d!1017685))

(declare-fun d!1017687 () Bool)

(declare-fun lt!1194122 () Int)

(assert (=> d!1017687 (= lt!1194122 (size!28346 (list!13620 (_1!21674 lt!1193834))))))

(assert (=> d!1017687 (= lt!1194122 (size!28347 (c!602402 (_1!21674 lt!1193834))))))

(assert (=> d!1017687 (= (size!28340 (_1!21674 lt!1193834)) lt!1194122)))

(declare-fun bs!563803 () Bool)

(assert (= bs!563803 d!1017687))

(declare-fun m!3938621 () Bool)

(assert (=> bs!563803 m!3938621))

(assert (=> bs!563803 m!3938621))

(declare-fun m!3938623 () Bool)

(assert (=> bs!563803 m!3938623))

(declare-fun m!3938625 () Bool)

(assert (=> bs!563803 m!3938625))

(assert (=> b!3502099 d!1017687))

(declare-fun d!1017689 () Bool)

(assert (=> d!1017689 (= (maxPrefixOneRule!1760 thiss!18206 (rule!8086 (h!42707 tokens!494)) lt!1193830) (Some!7585 (tuple2!37083 (Token!10295 (apply!8849 (transformation!5464 (rule!8086 (h!42707 tokens!494))) (seqFromList!3981 lt!1193830)) (rule!8086 (h!42707 tokens!494)) (size!28341 lt!1193830) lt!1193830) Nil!37285)))))

(declare-fun lt!1194125 () Unit!52850)

(declare-fun choose!20312 (LexerInterface!5053 List!37410 List!37409 List!37409 List!37409 Rule!10728) Unit!52850)

(assert (=> d!1017689 (= lt!1194125 (choose!20312 thiss!18206 rules!2135 lt!1193830 lt!1193830 Nil!37285 (rule!8086 (h!42707 tokens!494))))))

(assert (=> d!1017689 (not (isEmpty!21708 rules!2135))))

(assert (=> d!1017689 (= (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!853 thiss!18206 rules!2135 lt!1193830 lt!1193830 Nil!37285 (rule!8086 (h!42707 tokens!494))) lt!1194125)))

(declare-fun bs!563804 () Bool)

(assert (= bs!563804 d!1017689))

(assert (=> bs!563804 m!3937789))

(declare-fun m!3938627 () Bool)

(assert (=> bs!563804 m!3938627))

(assert (=> bs!563804 m!3937791))

(assert (=> bs!563804 m!3937685))

(assert (=> bs!563804 m!3937789))

(declare-fun m!3938629 () Bool)

(assert (=> bs!563804 m!3938629))

(assert (=> bs!563804 m!3937695))

(assert (=> b!3502099 d!1017689))

(declare-fun d!1017691 () Bool)

(declare-fun dynLambda!15831 (Int BalanceConc!22220) TokenValue!5694)

(assert (=> d!1017691 (= (apply!8849 (transformation!5464 (rule!8086 (h!42707 tokens!494))) lt!1193827) (dynLambda!15831 (toValue!7708 (transformation!5464 (rule!8086 (h!42707 tokens!494)))) lt!1193827))))

(declare-fun b_lambda!101741 () Bool)

(assert (=> (not b_lambda!101741) (not d!1017691)))

(declare-fun tb!194201 () Bool)

(declare-fun t!279040 () Bool)

(assert (=> (and b!3502075 (= (toValue!7708 (transformation!5464 (h!42706 rules!2135))) (toValue!7708 (transformation!5464 (rule!8086 (h!42707 tokens!494))))) t!279040) tb!194201))

(declare-fun result!238426 () Bool)

(assert (=> tb!194201 (= result!238426 (inv!21 (dynLambda!15831 (toValue!7708 (transformation!5464 (rule!8086 (h!42707 tokens!494)))) lt!1193827)))))

(declare-fun m!3938631 () Bool)

(assert (=> tb!194201 m!3938631))

(assert (=> d!1017691 t!279040))

(declare-fun b_and!248481 () Bool)

(assert (= b_and!248451 (and (=> t!279040 result!238426) b_and!248481)))

(declare-fun t!279042 () Bool)

(declare-fun tb!194203 () Bool)

(assert (=> (and b!3502088 (= (toValue!7708 (transformation!5464 (rule!8086 separatorToken!241))) (toValue!7708 (transformation!5464 (rule!8086 (h!42707 tokens!494))))) t!279042) tb!194203))

(declare-fun result!238430 () Bool)

(assert (= result!238430 result!238426))

(assert (=> d!1017691 t!279042))

(declare-fun b_and!248483 () Bool)

(assert (= b_and!248455 (and (=> t!279042 result!238430) b_and!248483)))

(declare-fun t!279044 () Bool)

(declare-fun tb!194205 () Bool)

(assert (=> (and b!3502108 (= (toValue!7708 (transformation!5464 (rule!8086 (h!42707 tokens!494)))) (toValue!7708 (transformation!5464 (rule!8086 (h!42707 tokens!494))))) t!279044) tb!194205))

(declare-fun result!238432 () Bool)

(assert (= result!238432 result!238426))

(assert (=> d!1017691 t!279044))

(declare-fun b_and!248485 () Bool)

(assert (= b_and!248459 (and (=> t!279044 result!238432) b_and!248485)))

(declare-fun m!3938633 () Bool)

(assert (=> d!1017691 m!3938633))

(assert (=> b!3502099 d!1017691))

(declare-fun d!1017693 () Bool)

(assert (=> d!1017693 (= (isDefined!5846 lt!1193821) (not (isEmpty!21712 lt!1193821)))))

(declare-fun bs!563805 () Bool)

(assert (= bs!563805 d!1017693))

(declare-fun m!3938635 () Bool)

(assert (=> bs!563805 m!3938635))

(assert (=> b!3502099 d!1017693))

(declare-fun c!602514 () Bool)

(declare-fun call!252901 () List!37409)

(declare-fun bm!252894 () Bool)

(declare-fun c!602511 () Bool)

(assert (=> bm!252894 (= call!252901 (usedCharacters!698 (ite c!602511 (reg!10552 (regex!5464 (rule!8086 separatorToken!241))) (ite c!602514 (regTwo!20959 (regex!5464 (rule!8086 separatorToken!241))) (regOne!20958 (regex!5464 (rule!8086 separatorToken!241)))))))))

(declare-fun b!3502633 () Bool)

(declare-fun e!2168558 () List!37409)

(assert (=> b!3502633 (= e!2168558 Nil!37285)))

(declare-fun bm!252895 () Bool)

(declare-fun call!252900 () List!37409)

(assert (=> bm!252895 (= call!252900 call!252901)))

(declare-fun d!1017695 () Bool)

(declare-fun c!602513 () Bool)

(assert (=> d!1017695 (= c!602513 (or ((_ is EmptyExpr!10223) (regex!5464 (rule!8086 separatorToken!241))) ((_ is EmptyLang!10223) (regex!5464 (rule!8086 separatorToken!241)))))))

(assert (=> d!1017695 (= (usedCharacters!698 (regex!5464 (rule!8086 separatorToken!241))) e!2168558)))

(declare-fun b!3502634 () Bool)

(declare-fun e!2168557 () List!37409)

(assert (=> b!3502634 (= e!2168558 e!2168557)))

(declare-fun c!602512 () Bool)

(assert (=> b!3502634 (= c!602512 ((_ is ElementMatch!10223) (regex!5464 (rule!8086 separatorToken!241))))))

(declare-fun b!3502635 () Bool)

(declare-fun e!2168559 () List!37409)

(declare-fun e!2168556 () List!37409)

(assert (=> b!3502635 (= e!2168559 e!2168556)))

(assert (=> b!3502635 (= c!602514 ((_ is Union!10223) (regex!5464 (rule!8086 separatorToken!241))))))

(declare-fun b!3502636 () Bool)

(declare-fun call!252902 () List!37409)

(assert (=> b!3502636 (= e!2168556 call!252902)))

(declare-fun b!3502637 () Bool)

(assert (=> b!3502637 (= c!602511 ((_ is Star!10223) (regex!5464 (rule!8086 separatorToken!241))))))

(assert (=> b!3502637 (= e!2168557 e!2168559)))

(declare-fun call!252899 () List!37409)

(declare-fun bm!252896 () Bool)

(assert (=> bm!252896 (= call!252902 (++!9223 (ite c!602514 call!252899 call!252900) (ite c!602514 call!252900 call!252899)))))

(declare-fun b!3502638 () Bool)

(assert (=> b!3502638 (= e!2168557 (Cons!37285 (c!602400 (regex!5464 (rule!8086 separatorToken!241))) Nil!37285))))

(declare-fun b!3502639 () Bool)

(assert (=> b!3502639 (= e!2168559 call!252901)))

(declare-fun b!3502640 () Bool)

(assert (=> b!3502640 (= e!2168556 call!252902)))

(declare-fun bm!252897 () Bool)

(assert (=> bm!252897 (= call!252899 (usedCharacters!698 (ite c!602514 (regOne!20959 (regex!5464 (rule!8086 separatorToken!241))) (regTwo!20958 (regex!5464 (rule!8086 separatorToken!241))))))))

(assert (= (and d!1017695 c!602513) b!3502633))

(assert (= (and d!1017695 (not c!602513)) b!3502634))

(assert (= (and b!3502634 c!602512) b!3502638))

(assert (= (and b!3502634 (not c!602512)) b!3502637))

(assert (= (and b!3502637 c!602511) b!3502639))

(assert (= (and b!3502637 (not c!602511)) b!3502635))

(assert (= (and b!3502635 c!602514) b!3502636))

(assert (= (and b!3502635 (not c!602514)) b!3502640))

(assert (= (or b!3502636 b!3502640) bm!252895))

(assert (= (or b!3502636 b!3502640) bm!252897))

(assert (= (or b!3502636 b!3502640) bm!252896))

(assert (= (or b!3502639 bm!252895) bm!252894))

(declare-fun m!3938637 () Bool)

(assert (=> bm!252894 m!3938637))

(declare-fun m!3938639 () Bool)

(assert (=> bm!252896 m!3938639))

(declare-fun m!3938641 () Bool)

(assert (=> bm!252897 m!3938641))

(assert (=> b!3502099 d!1017695))

(declare-fun b!3502641 () Bool)

(declare-fun lt!1194128 () Unit!52850)

(declare-fun lt!1194126 () Unit!52850)

(assert (=> b!3502641 (= lt!1194128 lt!1194126)))

(assert (=> b!3502641 (rulesInvariant!4450 thiss!18206 (t!279009 rules!2135))))

(assert (=> b!3502641 (= lt!1194126 (lemmaInvariantOnRulesThenOnTail!451 thiss!18206 (h!42706 rules!2135) (t!279009 rules!2135)))))

(declare-fun e!2168563 () Option!7585)

(assert (=> b!3502641 (= e!2168563 (getRuleFromTag!1107 thiss!18206 (t!279009 rules!2135) (tag!6092 (rule!8086 (h!42707 (t!279010 tokens!494))))))))

(declare-fun d!1017697 () Bool)

(declare-fun e!2168562 () Bool)

(assert (=> d!1017697 e!2168562))

(declare-fun res!1412644 () Bool)

(assert (=> d!1017697 (=> res!1412644 e!2168562)))

(declare-fun lt!1194127 () Option!7585)

(assert (=> d!1017697 (= res!1412644 (isEmpty!21712 lt!1194127))))

(declare-fun e!2168561 () Option!7585)

(assert (=> d!1017697 (= lt!1194127 e!2168561)))

(declare-fun c!602515 () Bool)

(assert (=> d!1017697 (= c!602515 (and ((_ is Cons!37286) rules!2135) (= (tag!6092 (h!42706 rules!2135)) (tag!6092 (rule!8086 (h!42707 (t!279010 tokens!494)))))))))

(assert (=> d!1017697 (rulesInvariant!4450 thiss!18206 rules!2135)))

(assert (=> d!1017697 (= (getRuleFromTag!1107 thiss!18206 rules!2135 (tag!6092 (rule!8086 (h!42707 (t!279010 tokens!494))))) lt!1194127)))

(declare-fun b!3502642 () Bool)

(assert (=> b!3502642 (= e!2168563 None!7584)))

(declare-fun b!3502643 () Bool)

(assert (=> b!3502643 (= e!2168561 e!2168563)))

(declare-fun c!602516 () Bool)

(assert (=> b!3502643 (= c!602516 (and ((_ is Cons!37286) rules!2135) (not (= (tag!6092 (h!42706 rules!2135)) (tag!6092 (rule!8086 (h!42707 (t!279010 tokens!494))))))))))

(declare-fun b!3502644 () Bool)

(declare-fun e!2168560 () Bool)

(assert (=> b!3502644 (= e!2168560 (= (tag!6092 (get!11959 lt!1194127)) (tag!6092 (rule!8086 (h!42707 (t!279010 tokens!494))))))))

(declare-fun b!3502645 () Bool)

(assert (=> b!3502645 (= e!2168562 e!2168560)))

(declare-fun res!1412643 () Bool)

(assert (=> b!3502645 (=> (not res!1412643) (not e!2168560))))

(assert (=> b!3502645 (= res!1412643 (contains!6967 rules!2135 (get!11959 lt!1194127)))))

(declare-fun b!3502646 () Bool)

(assert (=> b!3502646 (= e!2168561 (Some!7584 (h!42706 rules!2135)))))

(assert (= (and d!1017697 c!602515) b!3502646))

(assert (= (and d!1017697 (not c!602515)) b!3502643))

(assert (= (and b!3502643 c!602516) b!3502641))

(assert (= (and b!3502643 (not c!602516)) b!3502642))

(assert (= (and d!1017697 (not res!1412644)) b!3502645))

(assert (= (and b!3502645 res!1412643) b!3502644))

(assert (=> b!3502641 m!3937975))

(assert (=> b!3502641 m!3937977))

(declare-fun m!3938643 () Bool)

(assert (=> b!3502641 m!3938643))

(declare-fun m!3938645 () Bool)

(assert (=> d!1017697 m!3938645))

(assert (=> d!1017697 m!3937749))

(declare-fun m!3938647 () Bool)

(assert (=> b!3502644 m!3938647))

(assert (=> b!3502645 m!3938647))

(assert (=> b!3502645 m!3938647))

(declare-fun m!3938649 () Bool)

(assert (=> b!3502645 m!3938649))

(assert (=> b!3502099 d!1017697))

(declare-fun d!1017699 () Bool)

(assert (=> d!1017699 (= (isDefined!5846 lt!1193851) (not (isEmpty!21712 lt!1193851)))))

(declare-fun bs!563806 () Bool)

(assert (= bs!563806 d!1017699))

(declare-fun m!3938651 () Bool)

(assert (=> bs!563806 m!3938651))

(assert (=> b!3502099 d!1017699))

(declare-fun b!3502648 () Bool)

(declare-fun e!2168564 () List!37409)

(assert (=> b!3502648 (= e!2168564 (Cons!37285 (h!42705 lt!1193858) (++!9223 (t!279008 lt!1193858) lt!1193823)))))

(declare-fun e!2168565 () Bool)

(declare-fun lt!1194129 () List!37409)

(declare-fun b!3502650 () Bool)

(assert (=> b!3502650 (= e!2168565 (or (not (= lt!1193823 Nil!37285)) (= lt!1194129 lt!1193858)))))

(declare-fun b!3502649 () Bool)

(declare-fun res!1412646 () Bool)

(assert (=> b!3502649 (=> (not res!1412646) (not e!2168565))))

(assert (=> b!3502649 (= res!1412646 (= (size!28341 lt!1194129) (+ (size!28341 lt!1193858) (size!28341 lt!1193823))))))

(declare-fun b!3502647 () Bool)

(assert (=> b!3502647 (= e!2168564 lt!1193823)))

(declare-fun d!1017701 () Bool)

(assert (=> d!1017701 e!2168565))

(declare-fun res!1412645 () Bool)

(assert (=> d!1017701 (=> (not res!1412645) (not e!2168565))))

(assert (=> d!1017701 (= res!1412645 (= (content!5239 lt!1194129) ((_ map or) (content!5239 lt!1193858) (content!5239 lt!1193823))))))

(assert (=> d!1017701 (= lt!1194129 e!2168564)))

(declare-fun c!602517 () Bool)

(assert (=> d!1017701 (= c!602517 ((_ is Nil!37285) lt!1193858))))

(assert (=> d!1017701 (= (++!9223 lt!1193858 lt!1193823) lt!1194129)))

(assert (= (and d!1017701 c!602517) b!3502647))

(assert (= (and d!1017701 (not c!602517)) b!3502648))

(assert (= (and d!1017701 res!1412645) b!3502649))

(assert (= (and b!3502649 res!1412646) b!3502650))

(declare-fun m!3938653 () Bool)

(assert (=> b!3502648 m!3938653))

(declare-fun m!3938655 () Bool)

(assert (=> b!3502649 m!3938655))

(declare-fun m!3938657 () Bool)

(assert (=> b!3502649 m!3938657))

(declare-fun m!3938659 () Bool)

(assert (=> b!3502649 m!3938659))

(declare-fun m!3938661 () Bool)

(assert (=> d!1017701 m!3938661))

(declare-fun m!3938663 () Bool)

(assert (=> d!1017701 m!3938663))

(declare-fun m!3938665 () Bool)

(assert (=> d!1017701 m!3938665))

(assert (=> b!3502100 d!1017701))

(declare-fun b!3502652 () Bool)

(declare-fun e!2168566 () List!37409)

(assert (=> b!3502652 (= e!2168566 (Cons!37285 (h!42705 (++!9223 lt!1193858 lt!1193823)) (++!9223 (t!279008 (++!9223 lt!1193858 lt!1193823)) (printWithSeparatorTokenList!340 thiss!18206 (t!279010 (t!279010 tokens!494)) separatorToken!241))))))

(declare-fun e!2168567 () Bool)

(declare-fun lt!1194130 () List!37409)

(declare-fun b!3502654 () Bool)

(assert (=> b!3502654 (= e!2168567 (or (not (= (printWithSeparatorTokenList!340 thiss!18206 (t!279010 (t!279010 tokens!494)) separatorToken!241) Nil!37285)) (= lt!1194130 (++!9223 lt!1193858 lt!1193823))))))

(declare-fun b!3502653 () Bool)

(declare-fun res!1412648 () Bool)

(assert (=> b!3502653 (=> (not res!1412648) (not e!2168567))))

(assert (=> b!3502653 (= res!1412648 (= (size!28341 lt!1194130) (+ (size!28341 (++!9223 lt!1193858 lt!1193823)) (size!28341 (printWithSeparatorTokenList!340 thiss!18206 (t!279010 (t!279010 tokens!494)) separatorToken!241)))))))

(declare-fun b!3502651 () Bool)

(assert (=> b!3502651 (= e!2168566 (printWithSeparatorTokenList!340 thiss!18206 (t!279010 (t!279010 tokens!494)) separatorToken!241))))

(declare-fun d!1017703 () Bool)

(assert (=> d!1017703 e!2168567))

(declare-fun res!1412647 () Bool)

(assert (=> d!1017703 (=> (not res!1412647) (not e!2168567))))

(assert (=> d!1017703 (= res!1412647 (= (content!5239 lt!1194130) ((_ map or) (content!5239 (++!9223 lt!1193858 lt!1193823)) (content!5239 (printWithSeparatorTokenList!340 thiss!18206 (t!279010 (t!279010 tokens!494)) separatorToken!241)))))))

(assert (=> d!1017703 (= lt!1194130 e!2168566)))

(declare-fun c!602518 () Bool)

(assert (=> d!1017703 (= c!602518 ((_ is Nil!37285) (++!9223 lt!1193858 lt!1193823)))))

(assert (=> d!1017703 (= (++!9223 (++!9223 lt!1193858 lt!1193823) (printWithSeparatorTokenList!340 thiss!18206 (t!279010 (t!279010 tokens!494)) separatorToken!241)) lt!1194130)))

(assert (= (and d!1017703 c!602518) b!3502651))

(assert (= (and d!1017703 (not c!602518)) b!3502652))

(assert (= (and d!1017703 res!1412647) b!3502653))

(assert (= (and b!3502653 res!1412648) b!3502654))

(assert (=> b!3502652 m!3937821))

(declare-fun m!3938667 () Bool)

(assert (=> b!3502652 m!3938667))

(declare-fun m!3938669 () Bool)

(assert (=> b!3502653 m!3938669))

(assert (=> b!3502653 m!3937819))

(declare-fun m!3938671 () Bool)

(assert (=> b!3502653 m!3938671))

(assert (=> b!3502653 m!3937821))

(declare-fun m!3938673 () Bool)

(assert (=> b!3502653 m!3938673))

(declare-fun m!3938675 () Bool)

(assert (=> d!1017703 m!3938675))

(assert (=> d!1017703 m!3937819))

(declare-fun m!3938677 () Bool)

(assert (=> d!1017703 m!3938677))

(assert (=> d!1017703 m!3937821))

(declare-fun m!3938679 () Bool)

(assert (=> d!1017703 m!3938679))

(assert (=> b!3502100 d!1017703))

(declare-fun d!1017705 () Bool)

(declare-fun lt!1194133 () BalanceConc!22220)

(assert (=> d!1017705 (= (list!13617 lt!1194133) (originalCharacters!6178 separatorToken!241))))

(declare-fun dynLambda!15832 (Int TokenValue!5694) BalanceConc!22220)

(assert (=> d!1017705 (= lt!1194133 (dynLambda!15832 (toChars!7567 (transformation!5464 (rule!8086 separatorToken!241))) (value!176184 separatorToken!241)))))

(assert (=> d!1017705 (= (charsOf!3478 separatorToken!241) lt!1194133)))

(declare-fun b_lambda!101743 () Bool)

(assert (=> (not b_lambda!101743) (not d!1017705)))

(declare-fun tb!194207 () Bool)

(declare-fun t!279046 () Bool)

(assert (=> (and b!3502075 (= (toChars!7567 (transformation!5464 (h!42706 rules!2135))) (toChars!7567 (transformation!5464 (rule!8086 separatorToken!241)))) t!279046) tb!194207))

(declare-fun b!3502659 () Bool)

(declare-fun e!2168570 () Bool)

(declare-fun tp!1084339 () Bool)

(declare-fun inv!50504 (Conc!11303) Bool)

(assert (=> b!3502659 (= e!2168570 (and (inv!50504 (c!602401 (dynLambda!15832 (toChars!7567 (transformation!5464 (rule!8086 separatorToken!241))) (value!176184 separatorToken!241)))) tp!1084339))))

(declare-fun result!238434 () Bool)

(declare-fun inv!50505 (BalanceConc!22220) Bool)

(assert (=> tb!194207 (= result!238434 (and (inv!50505 (dynLambda!15832 (toChars!7567 (transformation!5464 (rule!8086 separatorToken!241))) (value!176184 separatorToken!241))) e!2168570))))

(assert (= tb!194207 b!3502659))

(declare-fun m!3938681 () Bool)

(assert (=> b!3502659 m!3938681))

(declare-fun m!3938683 () Bool)

(assert (=> tb!194207 m!3938683))

(assert (=> d!1017705 t!279046))

(declare-fun b_and!248487 () Bool)

(assert (= b_and!248453 (and (=> t!279046 result!238434) b_and!248487)))

(declare-fun t!279048 () Bool)

(declare-fun tb!194209 () Bool)

(assert (=> (and b!3502088 (= (toChars!7567 (transformation!5464 (rule!8086 separatorToken!241))) (toChars!7567 (transformation!5464 (rule!8086 separatorToken!241)))) t!279048) tb!194209))

(declare-fun result!238438 () Bool)

(assert (= result!238438 result!238434))

(assert (=> d!1017705 t!279048))

(declare-fun b_and!248489 () Bool)

(assert (= b_and!248457 (and (=> t!279048 result!238438) b_and!248489)))

(declare-fun tb!194211 () Bool)

(declare-fun t!279050 () Bool)

(assert (=> (and b!3502108 (= (toChars!7567 (transformation!5464 (rule!8086 (h!42707 tokens!494)))) (toChars!7567 (transformation!5464 (rule!8086 separatorToken!241)))) t!279050) tb!194211))

(declare-fun result!238440 () Bool)

(assert (= result!238440 result!238434))

(assert (=> d!1017705 t!279050))

(declare-fun b_and!248491 () Bool)

(assert (= b_and!248461 (and (=> t!279050 result!238440) b_and!248491)))

(declare-fun m!3938685 () Bool)

(assert (=> d!1017705 m!3938685))

(declare-fun m!3938687 () Bool)

(assert (=> d!1017705 m!3938687))

(assert (=> b!3502100 d!1017705))

(declare-fun d!1017707 () Bool)

(declare-fun list!13621 (Conc!11303) List!37409)

(assert (=> d!1017707 (= (list!13617 (charsOf!3478 (h!42707 (t!279010 tokens!494)))) (list!13621 (c!602401 (charsOf!3478 (h!42707 (t!279010 tokens!494))))))))

(declare-fun bs!563807 () Bool)

(assert (= bs!563807 d!1017707))

(declare-fun m!3938689 () Bool)

(assert (=> bs!563807 m!3938689))

(assert (=> b!3502100 d!1017707))

(declare-fun d!1017709 () Bool)

(declare-fun c!602521 () Bool)

(assert (=> d!1017709 (= c!602521 ((_ is Cons!37287) tokens!494))))

(declare-fun e!2168573 () List!37409)

(assert (=> d!1017709 (= (printWithSeparatorTokenList!340 thiss!18206 tokens!494 separatorToken!241) e!2168573)))

(declare-fun b!3502664 () Bool)

(assert (=> b!3502664 (= e!2168573 (++!9223 (++!9223 (list!13617 (charsOf!3478 (h!42707 tokens!494))) (list!13617 (charsOf!3478 separatorToken!241))) (printWithSeparatorTokenList!340 thiss!18206 (t!279010 tokens!494) separatorToken!241)))))

(declare-fun b!3502665 () Bool)

(assert (=> b!3502665 (= e!2168573 Nil!37285)))

(assert (= (and d!1017709 c!602521) b!3502664))

(assert (= (and d!1017709 (not c!602521)) b!3502665))

(declare-fun m!3938691 () Bool)

(assert (=> b!3502664 m!3938691))

(assert (=> b!3502664 m!3937813))

(declare-fun m!3938693 () Bool)

(assert (=> b!3502664 m!3938693))

(assert (=> b!3502664 m!3937809))

(assert (=> b!3502664 m!3937725))

(assert (=> b!3502664 m!3937809))

(assert (=> b!3502664 m!3937823))

(assert (=> b!3502664 m!3937727))

(assert (=> b!3502664 m!3937823))

(assert (=> b!3502664 m!3938691))

(assert (=> b!3502664 m!3937725))

(assert (=> b!3502664 m!3937727))

(assert (=> b!3502664 m!3937813))

(assert (=> b!3502100 d!1017709))

(declare-fun b!3502669 () Bool)

(declare-fun e!2168574 () List!37409)

(assert (=> b!3502669 (= e!2168574 (Cons!37285 (h!42705 lt!1193823) (++!9223 (t!279008 lt!1193823) lt!1193839)))))

(declare-fun e!2168575 () Bool)

(declare-fun b!3502671 () Bool)

(declare-fun lt!1194138 () List!37409)

(assert (=> b!3502671 (= e!2168575 (or (not (= lt!1193839 Nil!37285)) (= lt!1194138 lt!1193823)))))

(declare-fun b!3502670 () Bool)

(declare-fun res!1412650 () Bool)

(assert (=> b!3502670 (=> (not res!1412650) (not e!2168575))))

(assert (=> b!3502670 (= res!1412650 (= (size!28341 lt!1194138) (+ (size!28341 lt!1193823) (size!28341 lt!1193839))))))

(declare-fun b!3502668 () Bool)

(assert (=> b!3502668 (= e!2168574 lt!1193839)))

(declare-fun d!1017711 () Bool)

(assert (=> d!1017711 e!2168575))

(declare-fun res!1412649 () Bool)

(assert (=> d!1017711 (=> (not res!1412649) (not e!2168575))))

(assert (=> d!1017711 (= res!1412649 (= (content!5239 lt!1194138) ((_ map or) (content!5239 lt!1193823) (content!5239 lt!1193839))))))

(assert (=> d!1017711 (= lt!1194138 e!2168574)))

(declare-fun c!602522 () Bool)

(assert (=> d!1017711 (= c!602522 ((_ is Nil!37285) lt!1193823))))

(assert (=> d!1017711 (= (++!9223 lt!1193823 lt!1193839) lt!1194138)))

(assert (= (and d!1017711 c!602522) b!3502668))

(assert (= (and d!1017711 (not c!602522)) b!3502669))

(assert (= (and d!1017711 res!1412649) b!3502670))

(assert (= (and b!3502670 res!1412650) b!3502671))

(declare-fun m!3938695 () Bool)

(assert (=> b!3502669 m!3938695))

(declare-fun m!3938697 () Bool)

(assert (=> b!3502670 m!3938697))

(assert (=> b!3502670 m!3938659))

(declare-fun m!3938699 () Bool)

(assert (=> b!3502670 m!3938699))

(declare-fun m!3938701 () Bool)

(assert (=> d!1017711 m!3938701))

(assert (=> d!1017711 m!3938665))

(declare-fun m!3938703 () Bool)

(assert (=> d!1017711 m!3938703))

(assert (=> b!3502100 d!1017711))

(declare-fun d!1017713 () Bool)

(declare-fun c!602525 () Bool)

(assert (=> d!1017713 (= c!602525 ((_ is Cons!37287) (t!279010 (t!279010 tokens!494))))))

(declare-fun e!2168580 () List!37409)

(assert (=> d!1017713 (= (printWithSeparatorTokenList!340 thiss!18206 (t!279010 (t!279010 tokens!494)) separatorToken!241) e!2168580)))

(declare-fun b!3502676 () Bool)

(assert (=> b!3502676 (= e!2168580 (++!9223 (++!9223 (list!13617 (charsOf!3478 (h!42707 (t!279010 (t!279010 tokens!494))))) (list!13617 (charsOf!3478 separatorToken!241))) (printWithSeparatorTokenList!340 thiss!18206 (t!279010 (t!279010 (t!279010 tokens!494))) separatorToken!241)))))

(declare-fun b!3502677 () Bool)

(assert (=> b!3502677 (= e!2168580 Nil!37285)))

(assert (= (and d!1017713 c!602525) b!3502676))

(assert (= (and d!1017713 (not c!602525)) b!3502677))

(declare-fun m!3938705 () Bool)

(assert (=> b!3502676 m!3938705))

(declare-fun m!3938707 () Bool)

(assert (=> b!3502676 m!3938707))

(declare-fun m!3938709 () Bool)

(assert (=> b!3502676 m!3938709))

(assert (=> b!3502676 m!3937809))

(declare-fun m!3938711 () Bool)

(assert (=> b!3502676 m!3938711))

(assert (=> b!3502676 m!3937809))

(assert (=> b!3502676 m!3937823))

(declare-fun m!3938713 () Bool)

(assert (=> b!3502676 m!3938713))

(assert (=> b!3502676 m!3937823))

(assert (=> b!3502676 m!3938705))

(assert (=> b!3502676 m!3938711))

(assert (=> b!3502676 m!3938713))

(assert (=> b!3502676 m!3938707))

(assert (=> b!3502100 d!1017713))

(declare-fun d!1017715 () Bool)

(declare-fun c!602526 () Bool)

(assert (=> d!1017715 (= c!602526 ((_ is Cons!37287) (t!279010 tokens!494)))))

(declare-fun e!2168585 () List!37409)

(assert (=> d!1017715 (= (printWithSeparatorTokenList!340 thiss!18206 (t!279010 tokens!494) separatorToken!241) e!2168585)))

(declare-fun b!3502682 () Bool)

(assert (=> b!3502682 (= e!2168585 (++!9223 (++!9223 (list!13617 (charsOf!3478 (h!42707 (t!279010 tokens!494)))) (list!13617 (charsOf!3478 separatorToken!241))) (printWithSeparatorTokenList!340 thiss!18206 (t!279010 (t!279010 tokens!494)) separatorToken!241)))))

(declare-fun b!3502683 () Bool)

(assert (=> b!3502683 (= e!2168585 Nil!37285)))

(assert (= (and d!1017715 c!602526) b!3502682))

(assert (= (and d!1017715 (not c!602526)) b!3502683))

(declare-fun m!3938715 () Bool)

(assert (=> b!3502682 m!3938715))

(assert (=> b!3502682 m!3937821))

(declare-fun m!3938717 () Bool)

(assert (=> b!3502682 m!3938717))

(assert (=> b!3502682 m!3937809))

(assert (=> b!3502682 m!3937815))

(assert (=> b!3502682 m!3937809))

(assert (=> b!3502682 m!3937823))

(assert (=> b!3502682 m!3937817))

(assert (=> b!3502682 m!3937823))

(assert (=> b!3502682 m!3938715))

(assert (=> b!3502682 m!3937815))

(assert (=> b!3502682 m!3937817))

(assert (=> b!3502682 m!3937821))

(assert (=> b!3502100 d!1017715))

(declare-fun d!1017717 () Bool)

(assert (=> d!1017717 (= (list!13617 (charsOf!3478 separatorToken!241)) (list!13621 (c!602401 (charsOf!3478 separatorToken!241))))))

(declare-fun bs!563808 () Bool)

(assert (= bs!563808 d!1017717))

(declare-fun m!3938719 () Bool)

(assert (=> bs!563808 m!3938719))

(assert (=> b!3502100 d!1017717))

(declare-fun d!1017719 () Bool)

(declare-fun lt!1194145 () BalanceConc!22220)

(assert (=> d!1017719 (= (list!13617 lt!1194145) (originalCharacters!6178 (h!42707 (t!279010 tokens!494))))))

(assert (=> d!1017719 (= lt!1194145 (dynLambda!15832 (toChars!7567 (transformation!5464 (rule!8086 (h!42707 (t!279010 tokens!494))))) (value!176184 (h!42707 (t!279010 tokens!494)))))))

(assert (=> d!1017719 (= (charsOf!3478 (h!42707 (t!279010 tokens!494))) lt!1194145)))

(declare-fun b_lambda!101745 () Bool)

(assert (=> (not b_lambda!101745) (not d!1017719)))

(declare-fun tb!194213 () Bool)

(declare-fun t!279052 () Bool)

(assert (=> (and b!3502075 (= (toChars!7567 (transformation!5464 (h!42706 rules!2135))) (toChars!7567 (transformation!5464 (rule!8086 (h!42707 (t!279010 tokens!494)))))) t!279052) tb!194213))

(declare-fun b!3502692 () Bool)

(declare-fun e!2168586 () Bool)

(declare-fun tp!1084340 () Bool)

(assert (=> b!3502692 (= e!2168586 (and (inv!50504 (c!602401 (dynLambda!15832 (toChars!7567 (transformation!5464 (rule!8086 (h!42707 (t!279010 tokens!494))))) (value!176184 (h!42707 (t!279010 tokens!494)))))) tp!1084340))))

(declare-fun result!238442 () Bool)

(assert (=> tb!194213 (= result!238442 (and (inv!50505 (dynLambda!15832 (toChars!7567 (transformation!5464 (rule!8086 (h!42707 (t!279010 tokens!494))))) (value!176184 (h!42707 (t!279010 tokens!494))))) e!2168586))))

(assert (= tb!194213 b!3502692))

(declare-fun m!3938721 () Bool)

(assert (=> b!3502692 m!3938721))

(declare-fun m!3938723 () Bool)

(assert (=> tb!194213 m!3938723))

(assert (=> d!1017719 t!279052))

(declare-fun b_and!248493 () Bool)

(assert (= b_and!248487 (and (=> t!279052 result!238442) b_and!248493)))

(declare-fun t!279054 () Bool)

(declare-fun tb!194215 () Bool)

(assert (=> (and b!3502088 (= (toChars!7567 (transformation!5464 (rule!8086 separatorToken!241))) (toChars!7567 (transformation!5464 (rule!8086 (h!42707 (t!279010 tokens!494)))))) t!279054) tb!194215))

(declare-fun result!238444 () Bool)

(assert (= result!238444 result!238442))

(assert (=> d!1017719 t!279054))

(declare-fun b_and!248495 () Bool)

(assert (= b_and!248489 (and (=> t!279054 result!238444) b_and!248495)))

(declare-fun t!279056 () Bool)

(declare-fun tb!194217 () Bool)

(assert (=> (and b!3502108 (= (toChars!7567 (transformation!5464 (rule!8086 (h!42707 tokens!494)))) (toChars!7567 (transformation!5464 (rule!8086 (h!42707 (t!279010 tokens!494)))))) t!279056) tb!194217))

(declare-fun result!238446 () Bool)

(assert (= result!238446 result!238442))

(assert (=> d!1017719 t!279056))

(declare-fun b_and!248497 () Bool)

(assert (= b_and!248491 (and (=> t!279056 result!238446) b_and!248497)))

(declare-fun m!3938725 () Bool)

(assert (=> d!1017719 m!3938725))

(declare-fun m!3938727 () Bool)

(assert (=> d!1017719 m!3938727))

(assert (=> b!3502100 d!1017719))

(declare-fun b!3502693 () Bool)

(declare-fun e!2168592 () Bool)

(assert (=> b!3502693 (= e!2168592 (matchR!4807 (derivativeStep!3061 (regex!5464 lt!1193847) (head!7363 lt!1193858)) (tail!5471 lt!1193858)))))

(declare-fun b!3502694 () Bool)

(declare-fun e!2168588 () Bool)

(declare-fun e!2168587 () Bool)

(assert (=> b!3502694 (= e!2168588 e!2168587)))

(declare-fun c!602529 () Bool)

(assert (=> b!3502694 (= c!602529 ((_ is EmptyLang!10223) (regex!5464 lt!1193847)))))

(declare-fun b!3502695 () Bool)

(declare-fun res!1412671 () Bool)

(declare-fun e!2168591 () Bool)

(assert (=> b!3502695 (=> res!1412671 e!2168591)))

(declare-fun e!2168589 () Bool)

(assert (=> b!3502695 (= res!1412671 e!2168589)))

(declare-fun res!1412672 () Bool)

(assert (=> b!3502695 (=> (not res!1412672) (not e!2168589))))

(declare-fun lt!1194146 () Bool)

(assert (=> b!3502695 (= res!1412672 lt!1194146)))

(declare-fun b!3502696 () Bool)

(declare-fun e!2168593 () Bool)

(assert (=> b!3502696 (= e!2168591 e!2168593)))

(declare-fun res!1412669 () Bool)

(assert (=> b!3502696 (=> (not res!1412669) (not e!2168593))))

(assert (=> b!3502696 (= res!1412669 (not lt!1194146))))

(declare-fun b!3502697 () Bool)

(declare-fun e!2168590 () Bool)

(assert (=> b!3502697 (= e!2168590 (not (= (head!7363 lt!1193858) (c!602400 (regex!5464 lt!1193847)))))))

(declare-fun d!1017721 () Bool)

(assert (=> d!1017721 e!2168588))

(declare-fun c!602528 () Bool)

(assert (=> d!1017721 (= c!602528 ((_ is EmptyExpr!10223) (regex!5464 lt!1193847)))))

(assert (=> d!1017721 (= lt!1194146 e!2168592)))

(declare-fun c!602527 () Bool)

(assert (=> d!1017721 (= c!602527 (isEmpty!21711 lt!1193858))))

(assert (=> d!1017721 (validRegex!4664 (regex!5464 lt!1193847))))

(assert (=> d!1017721 (= (matchR!4807 (regex!5464 lt!1193847) lt!1193858) lt!1194146)))

(declare-fun bm!252898 () Bool)

(declare-fun call!252903 () Bool)

(assert (=> bm!252898 (= call!252903 (isEmpty!21711 lt!1193858))))

(declare-fun b!3502698 () Bool)

(assert (=> b!3502698 (= e!2168593 e!2168590)))

(declare-fun res!1412665 () Bool)

(assert (=> b!3502698 (=> res!1412665 e!2168590)))

(assert (=> b!3502698 (= res!1412665 call!252903)))

(declare-fun b!3502699 () Bool)

(declare-fun res!1412666 () Bool)

(assert (=> b!3502699 (=> (not res!1412666) (not e!2168589))))

(assert (=> b!3502699 (= res!1412666 (isEmpty!21711 (tail!5471 lt!1193858)))))

(declare-fun b!3502700 () Bool)

(assert (=> b!3502700 (= e!2168589 (= (head!7363 lt!1193858) (c!602400 (regex!5464 lt!1193847))))))

(declare-fun b!3502701 () Bool)

(assert (=> b!3502701 (= e!2168592 (nullable!3508 (regex!5464 lt!1193847)))))

(declare-fun b!3502702 () Bool)

(declare-fun res!1412670 () Bool)

(assert (=> b!3502702 (=> (not res!1412670) (not e!2168589))))

(assert (=> b!3502702 (= res!1412670 (not call!252903))))

(declare-fun b!3502703 () Bool)

(declare-fun res!1412667 () Bool)

(assert (=> b!3502703 (=> res!1412667 e!2168591)))

(assert (=> b!3502703 (= res!1412667 (not ((_ is ElementMatch!10223) (regex!5464 lt!1193847))))))

(assert (=> b!3502703 (= e!2168587 e!2168591)))

(declare-fun b!3502704 () Bool)

(declare-fun res!1412668 () Bool)

(assert (=> b!3502704 (=> res!1412668 e!2168590)))

(assert (=> b!3502704 (= res!1412668 (not (isEmpty!21711 (tail!5471 lt!1193858))))))

(declare-fun b!3502705 () Bool)

(assert (=> b!3502705 (= e!2168588 (= lt!1194146 call!252903))))

(declare-fun b!3502706 () Bool)

(assert (=> b!3502706 (= e!2168587 (not lt!1194146))))

(assert (= (and d!1017721 c!602527) b!3502701))

(assert (= (and d!1017721 (not c!602527)) b!3502693))

(assert (= (and d!1017721 c!602528) b!3502705))

(assert (= (and d!1017721 (not c!602528)) b!3502694))

(assert (= (and b!3502694 c!602529) b!3502706))

(assert (= (and b!3502694 (not c!602529)) b!3502703))

(assert (= (and b!3502703 (not res!1412667)) b!3502695))

(assert (= (and b!3502695 res!1412672) b!3502702))

(assert (= (and b!3502702 res!1412670) b!3502699))

(assert (= (and b!3502699 res!1412666) b!3502700))

(assert (= (and b!3502695 (not res!1412671)) b!3502696))

(assert (= (and b!3502696 res!1412669) b!3502698))

(assert (= (and b!3502698 (not res!1412665)) b!3502704))

(assert (= (and b!3502704 (not res!1412668)) b!3502697))

(assert (= (or b!3502705 b!3502702 b!3502698) bm!252898))

(declare-fun m!3938729 () Bool)

(assert (=> bm!252898 m!3938729))

(declare-fun m!3938731 () Bool)

(assert (=> b!3502701 m!3938731))

(assert (=> d!1017721 m!3938729))

(declare-fun m!3938733 () Bool)

(assert (=> d!1017721 m!3938733))

(declare-fun m!3938735 () Bool)

(assert (=> b!3502699 m!3938735))

(assert (=> b!3502699 m!3938735))

(declare-fun m!3938737 () Bool)

(assert (=> b!3502699 m!3938737))

(declare-fun m!3938739 () Bool)

(assert (=> b!3502693 m!3938739))

(assert (=> b!3502693 m!3938739))

(declare-fun m!3938741 () Bool)

(assert (=> b!3502693 m!3938741))

(assert (=> b!3502693 m!3938735))

(assert (=> b!3502693 m!3938741))

(assert (=> b!3502693 m!3938735))

(declare-fun m!3938743 () Bool)

(assert (=> b!3502693 m!3938743))

(assert (=> b!3502700 m!3938739))

(assert (=> b!3502697 m!3938739))

(assert (=> b!3502704 m!3938735))

(assert (=> b!3502704 m!3938735))

(assert (=> b!3502704 m!3938737))

(assert (=> b!3502079 d!1017721))

(declare-fun d!1017723 () Bool)

(assert (=> d!1017723 (= (get!11959 lt!1193838) (v!37020 lt!1193838))))

(assert (=> b!3502079 d!1017723))

(declare-fun b!3502726 () Bool)

(declare-fun e!2168605 () Bool)

(declare-fun inv!15 (TokenValue!5694) Bool)

(assert (=> b!3502726 (= e!2168605 (inv!15 (value!176184 separatorToken!241)))))

(declare-fun b!3502727 () Bool)

(declare-fun e!2168606 () Bool)

(declare-fun inv!16 (TokenValue!5694) Bool)

(assert (=> b!3502727 (= e!2168606 (inv!16 (value!176184 separatorToken!241)))))

(declare-fun b!3502728 () Bool)

(declare-fun res!1412682 () Bool)

(assert (=> b!3502728 (=> res!1412682 e!2168605)))

(assert (=> b!3502728 (= res!1412682 (not ((_ is IntegerValue!17084) (value!176184 separatorToken!241))))))

(declare-fun e!2168604 () Bool)

(assert (=> b!3502728 (= e!2168604 e!2168605)))

(declare-fun b!3502729 () Bool)

(declare-fun inv!17 (TokenValue!5694) Bool)

(assert (=> b!3502729 (= e!2168604 (inv!17 (value!176184 separatorToken!241)))))

(declare-fun d!1017725 () Bool)

(declare-fun c!602536 () Bool)

(assert (=> d!1017725 (= c!602536 ((_ is IntegerValue!17082) (value!176184 separatorToken!241)))))

(assert (=> d!1017725 (= (inv!21 (value!176184 separatorToken!241)) e!2168606)))

(declare-fun b!3502730 () Bool)

(assert (=> b!3502730 (= e!2168606 e!2168604)))

(declare-fun c!602535 () Bool)

(assert (=> b!3502730 (= c!602535 ((_ is IntegerValue!17083) (value!176184 separatorToken!241)))))

(assert (= (and d!1017725 c!602536) b!3502727))

(assert (= (and d!1017725 (not c!602536)) b!3502730))

(assert (= (and b!3502730 c!602535) b!3502729))

(assert (= (and b!3502730 (not c!602535)) b!3502728))

(assert (= (and b!3502728 (not res!1412682)) b!3502726))

(declare-fun m!3938745 () Bool)

(assert (=> b!3502726 m!3938745))

(declare-fun m!3938747 () Bool)

(assert (=> b!3502727 m!3938747))

(declare-fun m!3938749 () Bool)

(assert (=> b!3502729 m!3938749))

(assert (=> b!3502101 d!1017725))

(declare-fun d!1017727 () Bool)

(declare-fun res!1412687 () Bool)

(declare-fun e!2168611 () Bool)

(assert (=> d!1017727 (=> res!1412687 e!2168611)))

(assert (=> d!1017727 (= res!1412687 (not ((_ is Cons!37286) rules!2135)))))

(assert (=> d!1017727 (= (sepAndNonSepRulesDisjointChars!1658 rules!2135 rules!2135) e!2168611)))

(declare-fun b!3502735 () Bool)

(declare-fun e!2168612 () Bool)

(assert (=> b!3502735 (= e!2168611 e!2168612)))

(declare-fun res!1412688 () Bool)

(assert (=> b!3502735 (=> (not res!1412688) (not e!2168612))))

(declare-fun ruleDisjointCharsFromAllFromOtherType!739 (Rule!10728 List!37410) Bool)

(assert (=> b!3502735 (= res!1412688 (ruleDisjointCharsFromAllFromOtherType!739 (h!42706 rules!2135) rules!2135))))

(declare-fun b!3502736 () Bool)

(assert (=> b!3502736 (= e!2168612 (sepAndNonSepRulesDisjointChars!1658 rules!2135 (t!279009 rules!2135)))))

(assert (= (and d!1017727 (not res!1412687)) b!3502735))

(assert (= (and b!3502735 res!1412688) b!3502736))

(declare-fun m!3938795 () Bool)

(assert (=> b!3502735 m!3938795))

(declare-fun m!3938797 () Bool)

(assert (=> b!3502736 m!3938797))

(assert (=> b!3502091 d!1017727))

(declare-fun d!1017731 () Bool)

(assert (=> d!1017731 (= (inv!50497 (tag!6092 (h!42706 rules!2135))) (= (mod (str.len (value!176183 (tag!6092 (h!42706 rules!2135)))) 2) 0))))

(assert (=> b!3502113 d!1017731))

(declare-fun d!1017733 () Bool)

(declare-fun res!1412700 () Bool)

(declare-fun e!2168624 () Bool)

(assert (=> d!1017733 (=> (not res!1412700) (not e!2168624))))

(declare-fun semiInverseModEq!2303 (Int Int) Bool)

(assert (=> d!1017733 (= res!1412700 (semiInverseModEq!2303 (toChars!7567 (transformation!5464 (h!42706 rules!2135))) (toValue!7708 (transformation!5464 (h!42706 rules!2135)))))))

(assert (=> d!1017733 (= (inv!50500 (transformation!5464 (h!42706 rules!2135))) e!2168624)))

(declare-fun b!3502750 () Bool)

(declare-fun equivClasses!2202 (Int Int) Bool)

(assert (=> b!3502750 (= e!2168624 (equivClasses!2202 (toChars!7567 (transformation!5464 (h!42706 rules!2135))) (toValue!7708 (transformation!5464 (h!42706 rules!2135)))))))

(assert (= (and d!1017733 res!1412700) b!3502750))

(declare-fun m!3938805 () Bool)

(assert (=> d!1017733 m!3938805))

(declare-fun m!3938807 () Bool)

(assert (=> b!3502750 m!3938807))

(assert (=> b!3502113 d!1017733))

(declare-fun d!1017737 () Bool)

(declare-fun lt!1194159 () Bool)

(assert (=> d!1017737 (= lt!1194159 (isEmpty!21711 (list!13617 (_2!21674 lt!1193834))))))

(declare-fun isEmpty!21716 (Conc!11303) Bool)

(assert (=> d!1017737 (= lt!1194159 (isEmpty!21716 (c!602401 (_2!21674 lt!1193834))))))

(assert (=> d!1017737 (= (isEmpty!21707 (_2!21674 lt!1193834)) lt!1194159)))

(declare-fun bs!563811 () Bool)

(assert (= bs!563811 d!1017737))

(declare-fun m!3938839 () Bool)

(assert (=> bs!563811 m!3938839))

(assert (=> bs!563811 m!3938839))

(declare-fun m!3938841 () Bool)

(assert (=> bs!563811 m!3938841))

(declare-fun m!3938843 () Bool)

(assert (=> bs!563811 m!3938843))

(assert (=> b!3502074 d!1017737))

(declare-fun d!1017747 () Bool)

(declare-fun lt!1194162 () Token!10294)

(assert (=> d!1017747 (= lt!1194162 (apply!8852 (list!13620 (_1!21674 lt!1193834)) 0))))

(declare-fun apply!8853 (Conc!11304 Int) Token!10294)

(assert (=> d!1017747 (= lt!1194162 (apply!8853 (c!602402 (_1!21674 lt!1193834)) 0))))

(declare-fun e!2168637 () Bool)

(assert (=> d!1017747 e!2168637))

(declare-fun res!1412709 () Bool)

(assert (=> d!1017747 (=> (not res!1412709) (not e!2168637))))

(assert (=> d!1017747 (= res!1412709 (<= 0 0))))

(assert (=> d!1017747 (= (apply!8848 (_1!21674 lt!1193834) 0) lt!1194162)))

(declare-fun b!3502767 () Bool)

(assert (=> b!3502767 (= e!2168637 (< 0 (size!28340 (_1!21674 lt!1193834))))))

(assert (= (and d!1017747 res!1412709) b!3502767))

(assert (=> d!1017747 m!3938621))

(assert (=> d!1017747 m!3938621))

(declare-fun m!3938849 () Bool)

(assert (=> d!1017747 m!3938849))

(declare-fun m!3938851 () Bool)

(assert (=> d!1017747 m!3938851))

(assert (=> b!3502767 m!3937663))

(assert (=> b!3502095 d!1017747))

(declare-fun d!1017751 () Bool)

(assert (=> d!1017751 (= (inv!50497 (tag!6092 (rule!8086 (h!42707 tokens!494)))) (= (mod (str.len (value!176183 (tag!6092 (rule!8086 (h!42707 tokens!494))))) 2) 0))))

(assert (=> b!3502096 d!1017751))

(declare-fun d!1017753 () Bool)

(declare-fun res!1412712 () Bool)

(declare-fun e!2168644 () Bool)

(assert (=> d!1017753 (=> (not res!1412712) (not e!2168644))))

(assert (=> d!1017753 (= res!1412712 (semiInverseModEq!2303 (toChars!7567 (transformation!5464 (rule!8086 (h!42707 tokens!494)))) (toValue!7708 (transformation!5464 (rule!8086 (h!42707 tokens!494))))))))

(assert (=> d!1017753 (= (inv!50500 (transformation!5464 (rule!8086 (h!42707 tokens!494)))) e!2168644)))

(declare-fun b!3502778 () Bool)

(assert (=> b!3502778 (= e!2168644 (equivClasses!2202 (toChars!7567 (transformation!5464 (rule!8086 (h!42707 tokens!494)))) (toValue!7708 (transformation!5464 (rule!8086 (h!42707 tokens!494))))))))

(assert (= (and d!1017753 res!1412712) b!3502778))

(declare-fun m!3938853 () Bool)

(assert (=> d!1017753 m!3938853))

(declare-fun m!3938855 () Bool)

(assert (=> b!3502778 m!3938855))

(assert (=> b!3502096 d!1017753))

(declare-fun d!1017755 () Bool)

(assert (=> d!1017755 (= (isEmpty!21708 rules!2135) ((_ is Nil!37286) rules!2135))))

(assert (=> b!3502086 d!1017755))

(declare-fun d!1017757 () Bool)

(declare-fun lt!1194163 () Token!10294)

(assert (=> d!1017757 (= lt!1194163 (apply!8852 (list!13620 (_1!21674 lt!1193824)) 0))))

(assert (=> d!1017757 (= lt!1194163 (apply!8853 (c!602402 (_1!21674 lt!1193824)) 0))))

(declare-fun e!2168645 () Bool)

(assert (=> d!1017757 e!2168645))

(declare-fun res!1412713 () Bool)

(assert (=> d!1017757 (=> (not res!1412713) (not e!2168645))))

(assert (=> d!1017757 (= res!1412713 (<= 0 0))))

(assert (=> d!1017757 (= (apply!8848 (_1!21674 lt!1193824) 0) lt!1194163)))

(declare-fun b!3502779 () Bool)

(assert (=> b!3502779 (= e!2168645 (< 0 (size!28340 (_1!21674 lt!1193824))))))

(assert (= (and d!1017757 res!1412713) b!3502779))

(assert (=> d!1017757 m!3938615))

(assert (=> d!1017757 m!3938615))

(declare-fun m!3938857 () Bool)

(assert (=> d!1017757 m!3938857))

(declare-fun m!3938859 () Bool)

(assert (=> d!1017757 m!3938859))

(assert (=> b!3502779 m!3937649))

(assert (=> b!3502107 d!1017757))

(declare-fun d!1017759 () Bool)

(declare-fun lt!1194164 () Bool)

(declare-fun e!2168650 () Bool)

(assert (=> d!1017759 (= lt!1194164 e!2168650)))

(declare-fun res!1412717 () Bool)

(assert (=> d!1017759 (=> (not res!1412717) (not e!2168650))))

(assert (=> d!1017759 (= res!1412717 (= (list!13620 (_1!21674 (lex!2379 thiss!18206 rules!2135 (print!2118 thiss!18206 (singletonSeq!2560 (h!42707 tokens!494)))))) (list!13620 (singletonSeq!2560 (h!42707 tokens!494)))))))

(declare-fun e!2168649 () Bool)

(assert (=> d!1017759 (= lt!1194164 e!2168649)))

(declare-fun res!1412716 () Bool)

(assert (=> d!1017759 (=> (not res!1412716) (not e!2168649))))

(declare-fun lt!1194165 () tuple2!37080)

(assert (=> d!1017759 (= res!1412716 (= (size!28340 (_1!21674 lt!1194165)) 1))))

(assert (=> d!1017759 (= lt!1194165 (lex!2379 thiss!18206 rules!2135 (print!2118 thiss!18206 (singletonSeq!2560 (h!42707 tokens!494)))))))

(assert (=> d!1017759 (not (isEmpty!21708 rules!2135))))

(assert (=> d!1017759 (= (rulesProduceIndividualToken!2545 thiss!18206 rules!2135 (h!42707 tokens!494)) lt!1194164)))

(declare-fun b!3502785 () Bool)

(declare-fun res!1412715 () Bool)

(assert (=> b!3502785 (=> (not res!1412715) (not e!2168649))))

(assert (=> b!3502785 (= res!1412715 (= (apply!8848 (_1!21674 lt!1194165) 0) (h!42707 tokens!494)))))

(declare-fun b!3502786 () Bool)

(assert (=> b!3502786 (= e!2168649 (isEmpty!21707 (_2!21674 lt!1194165)))))

(declare-fun b!3502787 () Bool)

(assert (=> b!3502787 (= e!2168650 (isEmpty!21707 (_2!21674 (lex!2379 thiss!18206 rules!2135 (print!2118 thiss!18206 (singletonSeq!2560 (h!42707 tokens!494)))))))))

(assert (= (and d!1017759 res!1412716) b!3502785))

(assert (= (and b!3502785 res!1412715) b!3502786))

(assert (= (and d!1017759 res!1412717) b!3502787))

(declare-fun m!3938867 () Bool)

(assert (=> d!1017759 m!3938867))

(declare-fun m!3938869 () Bool)

(assert (=> d!1017759 m!3938869))

(declare-fun m!3938871 () Bool)

(assert (=> d!1017759 m!3938871))

(assert (=> d!1017759 m!3937791))

(assert (=> d!1017759 m!3937755))

(assert (=> d!1017759 m!3937755))

(declare-fun m!3938873 () Bool)

(assert (=> d!1017759 m!3938873))

(declare-fun m!3938875 () Bool)

(assert (=> d!1017759 m!3938875))

(assert (=> d!1017759 m!3937755))

(assert (=> d!1017759 m!3938867))

(declare-fun m!3938877 () Bool)

(assert (=> b!3502785 m!3938877))

(declare-fun m!3938879 () Bool)

(assert (=> b!3502786 m!3938879))

(assert (=> b!3502787 m!3937755))

(assert (=> b!3502787 m!3937755))

(assert (=> b!3502787 m!3938867))

(assert (=> b!3502787 m!3938867))

(assert (=> b!3502787 m!3938869))

(declare-fun m!3938881 () Bool)

(assert (=> b!3502787 m!3938881))

(assert (=> b!3502087 d!1017759))

(declare-fun d!1017763 () Bool)

(assert (=> d!1017763 (dynLambda!15829 lambda!122454 (h!42707 (t!279010 tokens!494)))))

(declare-fun lt!1194166 () Unit!52850)

(assert (=> d!1017763 (= lt!1194166 (choose!20302 tokens!494 lambda!122454 (h!42707 (t!279010 tokens!494))))))

(declare-fun e!2168651 () Bool)

(assert (=> d!1017763 e!2168651))

(declare-fun res!1412718 () Bool)

(assert (=> d!1017763 (=> (not res!1412718) (not e!2168651))))

(assert (=> d!1017763 (= res!1412718 (forall!7995 tokens!494 lambda!122454))))

(assert (=> d!1017763 (= (forallContained!1411 tokens!494 lambda!122454 (h!42707 (t!279010 tokens!494))) lt!1194166)))

(declare-fun b!3502788 () Bool)

(assert (=> b!3502788 (= e!2168651 (contains!6970 tokens!494 (h!42707 (t!279010 tokens!494))))))

(assert (= (and d!1017763 res!1412718) b!3502788))

(declare-fun b_lambda!101747 () Bool)

(assert (=> (not b_lambda!101747) (not d!1017763)))

(declare-fun m!3938883 () Bool)

(assert (=> d!1017763 m!3938883))

(declare-fun m!3938885 () Bool)

(assert (=> d!1017763 m!3938885))

(assert (=> d!1017763 m!3937767))

(assert (=> b!3502788 m!3937993))

(assert (=> b!3502109 d!1017763))

(declare-fun d!1017765 () Bool)

(assert (=> d!1017765 (dynLambda!15829 lambda!122454 (h!42707 tokens!494))))

(declare-fun lt!1194167 () Unit!52850)

(assert (=> d!1017765 (= lt!1194167 (choose!20302 tokens!494 lambda!122454 (h!42707 tokens!494)))))

(declare-fun e!2168652 () Bool)

(assert (=> d!1017765 e!2168652))

(declare-fun res!1412719 () Bool)

(assert (=> d!1017765 (=> (not res!1412719) (not e!2168652))))

(assert (=> d!1017765 (= res!1412719 (forall!7995 tokens!494 lambda!122454))))

(assert (=> d!1017765 (= (forallContained!1411 tokens!494 lambda!122454 (h!42707 tokens!494)) lt!1194167)))

(declare-fun b!3502789 () Bool)

(assert (=> b!3502789 (= e!2168652 (contains!6970 tokens!494 (h!42707 tokens!494)))))

(assert (= (and d!1017765 res!1412719) b!3502789))

(declare-fun b_lambda!101749 () Bool)

(assert (=> (not b_lambda!101749) (not d!1017765)))

(assert (=> d!1017765 m!3937971))

(declare-fun m!3938887 () Bool)

(assert (=> d!1017765 m!3938887))

(assert (=> d!1017765 m!3937767))

(declare-fun m!3938889 () Bool)

(assert (=> b!3502789 m!3938889))

(assert (=> b!3502109 d!1017765))

(declare-fun lt!1194174 () Bool)

(declare-fun d!1017767 () Bool)

(declare-fun isEmpty!21718 (List!37411) Bool)

(assert (=> d!1017767 (= lt!1194174 (isEmpty!21718 (list!13620 (_1!21674 (lex!2379 thiss!18206 rules!2135 lt!1193827)))))))

(declare-fun isEmpty!21719 (Conc!11304) Bool)

(assert (=> d!1017767 (= lt!1194174 (isEmpty!21719 (c!602402 (_1!21674 (lex!2379 thiss!18206 rules!2135 lt!1193827)))))))

(assert (=> d!1017767 (= (isEmpty!21709 (_1!21674 (lex!2379 thiss!18206 rules!2135 lt!1193827))) lt!1194174)))

(declare-fun bs!563813 () Bool)

(assert (= bs!563813 d!1017767))

(declare-fun m!3938899 () Bool)

(assert (=> bs!563813 m!3938899))

(assert (=> bs!563813 m!3938899))

(declare-fun m!3938903 () Bool)

(assert (=> bs!563813 m!3938903))

(declare-fun m!3938907 () Bool)

(assert (=> bs!563813 m!3938907))

(assert (=> b!3502089 d!1017767))

(declare-fun b!3502804 () Bool)

(declare-fun e!2168660 () Bool)

(declare-fun lt!1194175 () tuple2!37080)

(assert (=> b!3502804 (= e!2168660 (= (_2!21674 lt!1194175) lt!1193827))))

(declare-fun b!3502805 () Bool)

(declare-fun e!2168662 () Bool)

(assert (=> b!3502805 (= e!2168662 (= (list!13617 (_2!21674 lt!1194175)) (_2!21676 (lexList!1467 thiss!18206 rules!2135 (list!13617 lt!1193827)))))))

(declare-fun b!3502806 () Bool)

(declare-fun e!2168661 () Bool)

(assert (=> b!3502806 (= e!2168660 e!2168661)))

(declare-fun res!1412730 () Bool)

(assert (=> b!3502806 (= res!1412730 (< (size!28344 (_2!21674 lt!1194175)) (size!28344 lt!1193827)))))

(assert (=> b!3502806 (=> (not res!1412730) (not e!2168661))))

(declare-fun b!3502807 () Bool)

(declare-fun res!1412728 () Bool)

(assert (=> b!3502807 (=> (not res!1412728) (not e!2168662))))

(assert (=> b!3502807 (= res!1412728 (= (list!13620 (_1!21674 lt!1194175)) (_1!21676 (lexList!1467 thiss!18206 rules!2135 (list!13617 lt!1193827)))))))

(declare-fun b!3502808 () Bool)

(assert (=> b!3502808 (= e!2168661 (not (isEmpty!21709 (_1!21674 lt!1194175))))))

(declare-fun d!1017771 () Bool)

(assert (=> d!1017771 e!2168662))

(declare-fun res!1412729 () Bool)

(assert (=> d!1017771 (=> (not res!1412729) (not e!2168662))))

(assert (=> d!1017771 (= res!1412729 e!2168660)))

(declare-fun c!602552 () Bool)

(assert (=> d!1017771 (= c!602552 (> (size!28340 (_1!21674 lt!1194175)) 0))))

(assert (=> d!1017771 (= lt!1194175 (lexTailRecV2!1075 thiss!18206 rules!2135 lt!1193827 (BalanceConc!22221 Empty!11303) lt!1193827 (BalanceConc!22223 Empty!11304)))))

(assert (=> d!1017771 (= (lex!2379 thiss!18206 rules!2135 lt!1193827) lt!1194175)))

(assert (= (and d!1017771 c!602552) b!3502806))

(assert (= (and d!1017771 (not c!602552)) b!3502804))

(assert (= (and b!3502806 res!1412730) b!3502808))

(assert (= (and d!1017771 res!1412729) b!3502807))

(assert (= (and b!3502807 res!1412728) b!3502805))

(declare-fun m!3938913 () Bool)

(assert (=> b!3502807 m!3938913))

(declare-fun m!3938915 () Bool)

(assert (=> b!3502807 m!3938915))

(assert (=> b!3502807 m!3938915))

(declare-fun m!3938917 () Bool)

(assert (=> b!3502807 m!3938917))

(declare-fun m!3938919 () Bool)

(assert (=> b!3502808 m!3938919))

(declare-fun m!3938923 () Bool)

(assert (=> b!3502805 m!3938923))

(assert (=> b!3502805 m!3938915))

(assert (=> b!3502805 m!3938915))

(assert (=> b!3502805 m!3938917))

(declare-fun m!3938929 () Bool)

(assert (=> d!1017771 m!3938929))

(declare-fun m!3938933 () Bool)

(assert (=> d!1017771 m!3938933))

(declare-fun m!3938935 () Bool)

(assert (=> b!3502806 m!3938935))

(declare-fun m!3938939 () Bool)

(assert (=> b!3502806 m!3938939))

(assert (=> b!3502089 d!1017771))

(declare-fun d!1017775 () Bool)

(declare-fun fromListB!1821 (List!37409) BalanceConc!22220)

(assert (=> d!1017775 (= (seqFromList!3981 lt!1193830) (fromListB!1821 lt!1193830))))

(declare-fun bs!563814 () Bool)

(assert (= bs!563814 d!1017775))

(declare-fun m!3938957 () Bool)

(assert (=> bs!563814 m!3938957))

(assert (=> b!3502089 d!1017775))

(declare-fun bs!563826 () Bool)

(declare-fun d!1017781 () Bool)

(assert (= bs!563826 (and d!1017781 b!3502098)))

(declare-fun lambda!122465 () Int)

(assert (=> bs!563826 (not (= lambda!122465 lambda!122454))))

(declare-fun bs!563827 () Bool)

(assert (= bs!563827 (and d!1017781 b!3502099)))

(assert (=> bs!563827 (= lambda!122465 lambda!122455)))

(declare-fun b!3502935 () Bool)

(declare-fun e!2168746 () Bool)

(assert (=> b!3502935 (= e!2168746 true)))

(declare-fun b!3502934 () Bool)

(declare-fun e!2168745 () Bool)

(assert (=> b!3502934 (= e!2168745 e!2168746)))

(declare-fun b!3502933 () Bool)

(declare-fun e!2168744 () Bool)

(assert (=> b!3502933 (= e!2168744 e!2168745)))

(assert (=> d!1017781 e!2168744))

(assert (= b!3502934 b!3502935))

(assert (= b!3502933 b!3502934))

(assert (= (and d!1017781 ((_ is Cons!37286) rules!2135)) b!3502933))

(assert (=> b!3502935 (< (dynLambda!15824 order!19993 (toValue!7708 (transformation!5464 (h!42706 rules!2135)))) (dynLambda!15825 order!19995 lambda!122465))))

(assert (=> b!3502935 (< (dynLambda!15826 order!19997 (toChars!7567 (transformation!5464 (h!42706 rules!2135)))) (dynLambda!15825 order!19995 lambda!122465))))

(assert (=> d!1017781 true))

(declare-fun e!2168743 () Bool)

(assert (=> d!1017781 e!2168743))

(declare-fun res!1412769 () Bool)

(assert (=> d!1017781 (=> (not res!1412769) (not e!2168743))))

(declare-fun lt!1194205 () Bool)

(assert (=> d!1017781 (= res!1412769 (= lt!1194205 (forall!7995 (list!13620 (seqFromList!3982 tokens!494)) lambda!122465)))))

(declare-fun forall!7997 (BalanceConc!22222 Int) Bool)

(assert (=> d!1017781 (= lt!1194205 (forall!7997 (seqFromList!3982 tokens!494) lambda!122465))))

(assert (=> d!1017781 (not (isEmpty!21708 rules!2135))))

(assert (=> d!1017781 (= (rulesProduceEachTokenIndividually!1504 thiss!18206 rules!2135 (seqFromList!3982 tokens!494)) lt!1194205)))

(declare-fun b!3502932 () Bool)

(declare-fun rulesProduceEachTokenIndividuallyList!1875 (LexerInterface!5053 List!37410 List!37411) Bool)

(assert (=> b!3502932 (= e!2168743 (= lt!1194205 (rulesProduceEachTokenIndividuallyList!1875 thiss!18206 rules!2135 (list!13620 (seqFromList!3982 tokens!494)))))))

(assert (= (and d!1017781 res!1412769) b!3502932))

(assert (=> d!1017781 m!3937731))

(declare-fun m!3939123 () Bool)

(assert (=> d!1017781 m!3939123))

(assert (=> d!1017781 m!3939123))

(declare-fun m!3939125 () Bool)

(assert (=> d!1017781 m!3939125))

(assert (=> d!1017781 m!3937731))

(declare-fun m!3939127 () Bool)

(assert (=> d!1017781 m!3939127))

(assert (=> d!1017781 m!3937791))

(assert (=> b!3502932 m!3937731))

(assert (=> b!3502932 m!3939123))

(assert (=> b!3502932 m!3939123))

(declare-fun m!3939129 () Bool)

(assert (=> b!3502932 m!3939129))

(assert (=> b!3502090 d!1017781))

(declare-fun d!1017831 () Bool)

(declare-fun fromListB!1822 (List!37411) BalanceConc!22222)

(assert (=> d!1017831 (= (seqFromList!3982 tokens!494) (fromListB!1822 tokens!494))))

(declare-fun bs!563828 () Bool)

(assert (= bs!563828 d!1017831))

(declare-fun m!3939131 () Bool)

(assert (=> bs!563828 m!3939131))

(assert (=> b!3502090 d!1017831))

(declare-fun d!1017833 () Bool)

(assert (=> d!1017833 (= (list!13617 (charsOf!3478 (h!42707 tokens!494))) (list!13621 (c!602401 (charsOf!3478 (h!42707 tokens!494)))))))

(declare-fun bs!563829 () Bool)

(assert (= bs!563829 d!1017833))

(declare-fun m!3939133 () Bool)

(assert (=> bs!563829 m!3939133))

(assert (=> b!3502111 d!1017833))

(declare-fun d!1017835 () Bool)

(declare-fun lt!1194206 () BalanceConc!22220)

(assert (=> d!1017835 (= (list!13617 lt!1194206) (originalCharacters!6178 (h!42707 tokens!494)))))

(assert (=> d!1017835 (= lt!1194206 (dynLambda!15832 (toChars!7567 (transformation!5464 (rule!8086 (h!42707 tokens!494)))) (value!176184 (h!42707 tokens!494))))))

(assert (=> d!1017835 (= (charsOf!3478 (h!42707 tokens!494)) lt!1194206)))

(declare-fun b_lambda!101777 () Bool)

(assert (=> (not b_lambda!101777) (not d!1017835)))

(declare-fun t!279084 () Bool)

(declare-fun tb!194241 () Bool)

(assert (=> (and b!3502075 (= (toChars!7567 (transformation!5464 (h!42706 rules!2135))) (toChars!7567 (transformation!5464 (rule!8086 (h!42707 tokens!494))))) t!279084) tb!194241))

(declare-fun b!3502936 () Bool)

(declare-fun e!2168747 () Bool)

(declare-fun tp!1084398 () Bool)

(assert (=> b!3502936 (= e!2168747 (and (inv!50504 (c!602401 (dynLambda!15832 (toChars!7567 (transformation!5464 (rule!8086 (h!42707 tokens!494)))) (value!176184 (h!42707 tokens!494))))) tp!1084398))))

(declare-fun result!238478 () Bool)

(assert (=> tb!194241 (= result!238478 (and (inv!50505 (dynLambda!15832 (toChars!7567 (transformation!5464 (rule!8086 (h!42707 tokens!494)))) (value!176184 (h!42707 tokens!494)))) e!2168747))))

(assert (= tb!194241 b!3502936))

(declare-fun m!3939135 () Bool)

(assert (=> b!3502936 m!3939135))

(declare-fun m!3939137 () Bool)

(assert (=> tb!194241 m!3939137))

(assert (=> d!1017835 t!279084))

(declare-fun b_and!248525 () Bool)

(assert (= b_and!248493 (and (=> t!279084 result!238478) b_and!248525)))

(declare-fun t!279086 () Bool)

(declare-fun tb!194243 () Bool)

(assert (=> (and b!3502088 (= (toChars!7567 (transformation!5464 (rule!8086 separatorToken!241))) (toChars!7567 (transformation!5464 (rule!8086 (h!42707 tokens!494))))) t!279086) tb!194243))

(declare-fun result!238480 () Bool)

(assert (= result!238480 result!238478))

(assert (=> d!1017835 t!279086))

(declare-fun b_and!248527 () Bool)

(assert (= b_and!248495 (and (=> t!279086 result!238480) b_and!248527)))

(declare-fun t!279088 () Bool)

(declare-fun tb!194245 () Bool)

(assert (=> (and b!3502108 (= (toChars!7567 (transformation!5464 (rule!8086 (h!42707 tokens!494)))) (toChars!7567 (transformation!5464 (rule!8086 (h!42707 tokens!494))))) t!279088) tb!194245))

(declare-fun result!238482 () Bool)

(assert (= result!238482 result!238478))

(assert (=> d!1017835 t!279088))

(declare-fun b_and!248529 () Bool)

(assert (= b_and!248497 (and (=> t!279088 result!238482) b_and!248529)))

(declare-fun m!3939139 () Bool)

(assert (=> d!1017835 m!3939139))

(declare-fun m!3939141 () Bool)

(assert (=> d!1017835 m!3939141))

(assert (=> b!3502111 d!1017835))

(declare-fun d!1017837 () Bool)

(declare-fun lt!1194207 () BalanceConc!22220)

(assert (=> d!1017837 (= (list!13617 lt!1194207) (printList!1601 thiss!18206 (list!13620 lt!1193846)))))

(assert (=> d!1017837 (= lt!1194207 (printTailRec!1548 thiss!18206 lt!1193846 0 (BalanceConc!22221 Empty!11303)))))

(assert (=> d!1017837 (= (print!2118 thiss!18206 lt!1193846) lt!1194207)))

(declare-fun bs!563830 () Bool)

(assert (= bs!563830 d!1017837))

(declare-fun m!3939143 () Bool)

(assert (=> bs!563830 m!3939143))

(declare-fun m!3939145 () Bool)

(assert (=> bs!563830 m!3939145))

(assert (=> bs!563830 m!3939145))

(declare-fun m!3939147 () Bool)

(assert (=> bs!563830 m!3939147))

(assert (=> bs!563830 m!3937757))

(assert (=> b!3502112 d!1017837))

(declare-fun d!1017839 () Bool)

(assert (=> d!1017839 (= (list!13617 lt!1193843) (list!13621 (c!602401 lt!1193843)))))

(declare-fun bs!563831 () Bool)

(assert (= bs!563831 d!1017839))

(declare-fun m!3939149 () Bool)

(assert (=> bs!563831 m!3939149))

(assert (=> b!3502112 d!1017839))

(declare-fun d!1017841 () Bool)

(declare-fun lt!1194209 () BalanceConc!22220)

(assert (=> d!1017841 (= (list!13617 lt!1194209) (printListTailRec!708 thiss!18206 (dropList!1225 lt!1193846 0) (list!13617 (BalanceConc!22221 Empty!11303))))))

(declare-fun e!2168749 () BalanceConc!22220)

(assert (=> d!1017841 (= lt!1194209 e!2168749)))

(declare-fun c!602567 () Bool)

(assert (=> d!1017841 (= c!602567 (>= 0 (size!28340 lt!1193846)))))

(declare-fun e!2168748 () Bool)

(assert (=> d!1017841 e!2168748))

(declare-fun res!1412770 () Bool)

(assert (=> d!1017841 (=> (not res!1412770) (not e!2168748))))

(assert (=> d!1017841 (= res!1412770 (>= 0 0))))

(assert (=> d!1017841 (= (printTailRec!1548 thiss!18206 lt!1193846 0 (BalanceConc!22221 Empty!11303)) lt!1194209)))

(declare-fun b!3502937 () Bool)

(assert (=> b!3502937 (= e!2168748 (<= 0 (size!28340 lt!1193846)))))

(declare-fun b!3502938 () Bool)

(assert (=> b!3502938 (= e!2168749 (BalanceConc!22221 Empty!11303))))

(declare-fun b!3502939 () Bool)

(assert (=> b!3502939 (= e!2168749 (printTailRec!1548 thiss!18206 lt!1193846 (+ 0 1) (++!9225 (BalanceConc!22221 Empty!11303) (charsOf!3478 (apply!8848 lt!1193846 0)))))))

(declare-fun lt!1194210 () List!37411)

(assert (=> b!3502939 (= lt!1194210 (list!13620 lt!1193846))))

(declare-fun lt!1194212 () Unit!52850)

(assert (=> b!3502939 (= lt!1194212 (lemmaDropApply!1183 lt!1194210 0))))

(assert (=> b!3502939 (= (head!7365 (drop!2037 lt!1194210 0)) (apply!8852 lt!1194210 0))))

(declare-fun lt!1194211 () Unit!52850)

(assert (=> b!3502939 (= lt!1194211 lt!1194212)))

(declare-fun lt!1194208 () List!37411)

(assert (=> b!3502939 (= lt!1194208 (list!13620 lt!1193846))))

(declare-fun lt!1194213 () Unit!52850)

(assert (=> b!3502939 (= lt!1194213 (lemmaDropTail!1067 lt!1194208 0))))

(assert (=> b!3502939 (= (tail!5473 (drop!2037 lt!1194208 0)) (drop!2037 lt!1194208 (+ 0 1)))))

(declare-fun lt!1194214 () Unit!52850)

(assert (=> b!3502939 (= lt!1194214 lt!1194213)))

(assert (= (and d!1017841 res!1412770) b!3502937))

(assert (= (and d!1017841 c!602567) b!3502938))

(assert (= (and d!1017841 (not c!602567)) b!3502939))

(declare-fun m!3939151 () Bool)

(assert (=> d!1017841 m!3939151))

(assert (=> d!1017841 m!3938351))

(declare-fun m!3939153 () Bool)

(assert (=> d!1017841 m!3939153))

(declare-fun m!3939155 () Bool)

(assert (=> d!1017841 m!3939155))

(assert (=> d!1017841 m!3938351))

(declare-fun m!3939157 () Bool)

(assert (=> d!1017841 m!3939157))

(assert (=> d!1017841 m!3939151))

(assert (=> b!3502937 m!3939157))

(declare-fun m!3939159 () Bool)

(assert (=> b!3502939 m!3939159))

(assert (=> b!3502939 m!3939145))

(declare-fun m!3939161 () Bool)

(assert (=> b!3502939 m!3939161))

(declare-fun m!3939163 () Bool)

(assert (=> b!3502939 m!3939163))

(declare-fun m!3939165 () Bool)

(assert (=> b!3502939 m!3939165))

(declare-fun m!3939167 () Bool)

(assert (=> b!3502939 m!3939167))

(declare-fun m!3939169 () Bool)

(assert (=> b!3502939 m!3939169))

(declare-fun m!3939171 () Bool)

(assert (=> b!3502939 m!3939171))

(assert (=> b!3502939 m!3939169))

(declare-fun m!3939173 () Bool)

(assert (=> b!3502939 m!3939173))

(assert (=> b!3502939 m!3939159))

(declare-fun m!3939175 () Bool)

(assert (=> b!3502939 m!3939175))

(declare-fun m!3939177 () Bool)

(assert (=> b!3502939 m!3939177))

(declare-fun m!3939179 () Bool)

(assert (=> b!3502939 m!3939179))

(assert (=> b!3502939 m!3939171))

(assert (=> b!3502939 m!3939177))

(assert (=> b!3502939 m!3939165))

(declare-fun m!3939181 () Bool)

(assert (=> b!3502939 m!3939181))

(assert (=> b!3502112 d!1017841))

(declare-fun d!1017843 () Bool)

(declare-fun e!2168750 () Bool)

(assert (=> d!1017843 e!2168750))

(declare-fun res!1412771 () Bool)

(assert (=> d!1017843 (=> (not res!1412771) (not e!2168750))))

(declare-fun lt!1194215 () BalanceConc!22222)

(assert (=> d!1017843 (= res!1412771 (= (list!13620 lt!1194215) (Cons!37287 (h!42707 tokens!494) Nil!37287)))))

(assert (=> d!1017843 (= lt!1194215 (singleton!1140 (h!42707 tokens!494)))))

(assert (=> d!1017843 (= (singletonSeq!2560 (h!42707 tokens!494)) lt!1194215)))

(declare-fun b!3502940 () Bool)

(assert (=> b!3502940 (= e!2168750 (isBalanced!3443 (c!602402 lt!1194215)))))

(assert (= (and d!1017843 res!1412771) b!3502940))

(declare-fun m!3939183 () Bool)

(assert (=> d!1017843 m!3939183))

(declare-fun m!3939185 () Bool)

(assert (=> d!1017843 m!3939185))

(declare-fun m!3939187 () Bool)

(assert (=> b!3502940 m!3939187))

(assert (=> b!3502112 d!1017843))

(declare-fun d!1017845 () Bool)

(declare-fun c!602570 () Bool)

(assert (=> d!1017845 (= c!602570 ((_ is Cons!37287) (Cons!37287 (h!42707 tokens!494) Nil!37287)))))

(declare-fun e!2168753 () List!37409)

(assert (=> d!1017845 (= (printList!1601 thiss!18206 (Cons!37287 (h!42707 tokens!494) Nil!37287)) e!2168753)))

(declare-fun b!3502945 () Bool)

(assert (=> b!3502945 (= e!2168753 (++!9223 (list!13617 (charsOf!3478 (h!42707 (Cons!37287 (h!42707 tokens!494) Nil!37287)))) (printList!1601 thiss!18206 (t!279010 (Cons!37287 (h!42707 tokens!494) Nil!37287)))))))

(declare-fun b!3502946 () Bool)

(assert (=> b!3502946 (= e!2168753 Nil!37285)))

(assert (= (and d!1017845 c!602570) b!3502945))

(assert (= (and d!1017845 (not c!602570)) b!3502946))

(declare-fun m!3939189 () Bool)

(assert (=> b!3502945 m!3939189))

(assert (=> b!3502945 m!3939189))

(declare-fun m!3939191 () Bool)

(assert (=> b!3502945 m!3939191))

(declare-fun m!3939193 () Bool)

(assert (=> b!3502945 m!3939193))

(assert (=> b!3502945 m!3939191))

(assert (=> b!3502945 m!3939193))

(declare-fun m!3939195 () Bool)

(assert (=> b!3502945 m!3939195))

(assert (=> b!3502112 d!1017845))

(declare-fun b!3502947 () Bool)

(declare-fun e!2168755 () Bool)

(assert (=> b!3502947 (= e!2168755 (inv!15 (value!176184 (h!42707 tokens!494))))))

(declare-fun b!3502948 () Bool)

(declare-fun e!2168756 () Bool)

(assert (=> b!3502948 (= e!2168756 (inv!16 (value!176184 (h!42707 tokens!494))))))

(declare-fun b!3502949 () Bool)

(declare-fun res!1412772 () Bool)

(assert (=> b!3502949 (=> res!1412772 e!2168755)))

(assert (=> b!3502949 (= res!1412772 (not ((_ is IntegerValue!17084) (value!176184 (h!42707 tokens!494)))))))

(declare-fun e!2168754 () Bool)

(assert (=> b!3502949 (= e!2168754 e!2168755)))

(declare-fun b!3502950 () Bool)

(assert (=> b!3502950 (= e!2168754 (inv!17 (value!176184 (h!42707 tokens!494))))))

(declare-fun d!1017847 () Bool)

(declare-fun c!602572 () Bool)

(assert (=> d!1017847 (= c!602572 ((_ is IntegerValue!17082) (value!176184 (h!42707 tokens!494))))))

(assert (=> d!1017847 (= (inv!21 (value!176184 (h!42707 tokens!494))) e!2168756)))

(declare-fun b!3502951 () Bool)

(assert (=> b!3502951 (= e!2168756 e!2168754)))

(declare-fun c!602571 () Bool)

(assert (=> b!3502951 (= c!602571 ((_ is IntegerValue!17083) (value!176184 (h!42707 tokens!494))))))

(assert (= (and d!1017847 c!602572) b!3502948))

(assert (= (and d!1017847 (not c!602572)) b!3502951))

(assert (= (and b!3502951 c!602571) b!3502950))

(assert (= (and b!3502951 (not c!602571)) b!3502949))

(assert (= (and b!3502949 (not res!1412772)) b!3502947))

(declare-fun m!3939197 () Bool)

(assert (=> b!3502947 m!3939197))

(declare-fun m!3939199 () Bool)

(assert (=> b!3502948 m!3939199))

(declare-fun m!3939201 () Bool)

(assert (=> b!3502950 m!3939201))

(assert (=> b!3502102 d!1017847))

(declare-fun d!1017849 () Bool)

(declare-fun res!1412777 () Bool)

(declare-fun e!2168759 () Bool)

(assert (=> d!1017849 (=> (not res!1412777) (not e!2168759))))

(assert (=> d!1017849 (= res!1412777 (not (isEmpty!21711 (originalCharacters!6178 separatorToken!241))))))

(assert (=> d!1017849 (= (inv!50501 separatorToken!241) e!2168759)))

(declare-fun b!3502956 () Bool)

(declare-fun res!1412778 () Bool)

(assert (=> b!3502956 (=> (not res!1412778) (not e!2168759))))

(assert (=> b!3502956 (= res!1412778 (= (originalCharacters!6178 separatorToken!241) (list!13617 (dynLambda!15832 (toChars!7567 (transformation!5464 (rule!8086 separatorToken!241))) (value!176184 separatorToken!241)))))))

(declare-fun b!3502957 () Bool)

(assert (=> b!3502957 (= e!2168759 (= (size!28339 separatorToken!241) (size!28341 (originalCharacters!6178 separatorToken!241))))))

(assert (= (and d!1017849 res!1412777) b!3502956))

(assert (= (and b!3502956 res!1412778) b!3502957))

(declare-fun b_lambda!101779 () Bool)

(assert (=> (not b_lambda!101779) (not b!3502956)))

(assert (=> b!3502956 t!279046))

(declare-fun b_and!248531 () Bool)

(assert (= b_and!248525 (and (=> t!279046 result!238434) b_and!248531)))

(assert (=> b!3502956 t!279048))

(declare-fun b_and!248533 () Bool)

(assert (= b_and!248527 (and (=> t!279048 result!238438) b_and!248533)))

(assert (=> b!3502956 t!279050))

(declare-fun b_and!248535 () Bool)

(assert (= b_and!248529 (and (=> t!279050 result!238440) b_and!248535)))

(declare-fun m!3939203 () Bool)

(assert (=> d!1017849 m!3939203))

(assert (=> b!3502956 m!3938687))

(assert (=> b!3502956 m!3938687))

(declare-fun m!3939205 () Bool)

(assert (=> b!3502956 m!3939205))

(declare-fun m!3939207 () Bool)

(assert (=> b!3502957 m!3939207))

(assert (=> start!325418 d!1017849))

(declare-fun e!2168760 () List!37409)

(declare-fun b!3502959 () Bool)

(assert (=> b!3502959 (= e!2168760 (Cons!37285 (h!42705 (++!9223 lt!1193830 lt!1193823)) (++!9223 (t!279008 (++!9223 lt!1193830 lt!1193823)) lt!1193839)))))

(declare-fun e!2168761 () Bool)

(declare-fun b!3502961 () Bool)

(declare-fun lt!1194216 () List!37409)

(assert (=> b!3502961 (= e!2168761 (or (not (= lt!1193839 Nil!37285)) (= lt!1194216 (++!9223 lt!1193830 lt!1193823))))))

(declare-fun b!3502960 () Bool)

(declare-fun res!1412780 () Bool)

(assert (=> b!3502960 (=> (not res!1412780) (not e!2168761))))

(assert (=> b!3502960 (= res!1412780 (= (size!28341 lt!1194216) (+ (size!28341 (++!9223 lt!1193830 lt!1193823)) (size!28341 lt!1193839))))))

(declare-fun b!3502958 () Bool)

(assert (=> b!3502958 (= e!2168760 lt!1193839)))

(declare-fun d!1017851 () Bool)

(assert (=> d!1017851 e!2168761))

(declare-fun res!1412779 () Bool)

(assert (=> d!1017851 (=> (not res!1412779) (not e!2168761))))

(assert (=> d!1017851 (= res!1412779 (= (content!5239 lt!1194216) ((_ map or) (content!5239 (++!9223 lt!1193830 lt!1193823)) (content!5239 lt!1193839))))))

(assert (=> d!1017851 (= lt!1194216 e!2168760)))

(declare-fun c!602573 () Bool)

(assert (=> d!1017851 (= c!602573 ((_ is Nil!37285) (++!9223 lt!1193830 lt!1193823)))))

(assert (=> d!1017851 (= (++!9223 (++!9223 lt!1193830 lt!1193823) lt!1193839) lt!1194216)))

(assert (= (and d!1017851 c!602573) b!3502958))

(assert (= (and d!1017851 (not c!602573)) b!3502959))

(assert (= (and d!1017851 res!1412779) b!3502960))

(assert (= (and b!3502960 res!1412780) b!3502961))

(declare-fun m!3939209 () Bool)

(assert (=> b!3502959 m!3939209))

(declare-fun m!3939211 () Bool)

(assert (=> b!3502960 m!3939211))

(assert (=> b!3502960 m!3937717))

(declare-fun m!3939213 () Bool)

(assert (=> b!3502960 m!3939213))

(assert (=> b!3502960 m!3938699))

(declare-fun m!3939215 () Bool)

(assert (=> d!1017851 m!3939215))

(assert (=> d!1017851 m!3937717))

(declare-fun m!3939217 () Bool)

(assert (=> d!1017851 m!3939217))

(assert (=> d!1017851 m!3938703))

(assert (=> b!3502082 d!1017851))

(declare-fun b!3502963 () Bool)

(declare-fun e!2168762 () List!37409)

(assert (=> b!3502963 (= e!2168762 (Cons!37285 (h!42705 lt!1193830) (++!9223 (t!279008 lt!1193830) lt!1193823)))))

(declare-fun e!2168763 () Bool)

(declare-fun lt!1194217 () List!37409)

(declare-fun b!3502965 () Bool)

(assert (=> b!3502965 (= e!2168763 (or (not (= lt!1193823 Nil!37285)) (= lt!1194217 lt!1193830)))))

(declare-fun b!3502964 () Bool)

(declare-fun res!1412782 () Bool)

(assert (=> b!3502964 (=> (not res!1412782) (not e!2168763))))

(assert (=> b!3502964 (= res!1412782 (= (size!28341 lt!1194217) (+ (size!28341 lt!1193830) (size!28341 lt!1193823))))))

(declare-fun b!3502962 () Bool)

(assert (=> b!3502962 (= e!2168762 lt!1193823)))

(declare-fun d!1017853 () Bool)

(assert (=> d!1017853 e!2168763))

(declare-fun res!1412781 () Bool)

(assert (=> d!1017853 (=> (not res!1412781) (not e!2168763))))

(assert (=> d!1017853 (= res!1412781 (= (content!5239 lt!1194217) ((_ map or) (content!5239 lt!1193830) (content!5239 lt!1193823))))))

(assert (=> d!1017853 (= lt!1194217 e!2168762)))

(declare-fun c!602574 () Bool)

(assert (=> d!1017853 (= c!602574 ((_ is Nil!37285) lt!1193830))))

(assert (=> d!1017853 (= (++!9223 lt!1193830 lt!1193823) lt!1194217)))

(assert (= (and d!1017853 c!602574) b!3502962))

(assert (= (and d!1017853 (not c!602574)) b!3502963))

(assert (= (and d!1017853 res!1412781) b!3502964))

(assert (= (and b!3502964 res!1412782) b!3502965))

(declare-fun m!3939219 () Bool)

(assert (=> b!3502963 m!3939219))

(declare-fun m!3939221 () Bool)

(assert (=> b!3502964 m!3939221))

(assert (=> b!3502964 m!3937685))

(assert (=> b!3502964 m!3938659))

(declare-fun m!3939223 () Bool)

(assert (=> d!1017853 m!3939223))

(assert (=> d!1017853 m!3937963))

(assert (=> d!1017853 m!3938665))

(assert (=> b!3502082 d!1017853))

(declare-fun d!1017855 () Bool)

(declare-fun res!1412783 () Bool)

(declare-fun e!2168764 () Bool)

(assert (=> d!1017855 (=> (not res!1412783) (not e!2168764))))

(assert (=> d!1017855 (= res!1412783 (not (isEmpty!21711 (originalCharacters!6178 (h!42707 tokens!494)))))))

(assert (=> d!1017855 (= (inv!50501 (h!42707 tokens!494)) e!2168764)))

(declare-fun b!3502966 () Bool)

(declare-fun res!1412784 () Bool)

(assert (=> b!3502966 (=> (not res!1412784) (not e!2168764))))

(assert (=> b!3502966 (= res!1412784 (= (originalCharacters!6178 (h!42707 tokens!494)) (list!13617 (dynLambda!15832 (toChars!7567 (transformation!5464 (rule!8086 (h!42707 tokens!494)))) (value!176184 (h!42707 tokens!494))))))))

(declare-fun b!3502967 () Bool)

(assert (=> b!3502967 (= e!2168764 (= (size!28339 (h!42707 tokens!494)) (size!28341 (originalCharacters!6178 (h!42707 tokens!494)))))))

(assert (= (and d!1017855 res!1412783) b!3502966))

(assert (= (and b!3502966 res!1412784) b!3502967))

(declare-fun b_lambda!101781 () Bool)

(assert (=> (not b_lambda!101781) (not b!3502966)))

(assert (=> b!3502966 t!279084))

(declare-fun b_and!248537 () Bool)

(assert (= b_and!248531 (and (=> t!279084 result!238478) b_and!248537)))

(assert (=> b!3502966 t!279086))

(declare-fun b_and!248539 () Bool)

(assert (= b_and!248533 (and (=> t!279086 result!238480) b_and!248539)))

(assert (=> b!3502966 t!279088))

(declare-fun b_and!248541 () Bool)

(assert (= b_and!248535 (and (=> t!279088 result!238482) b_and!248541)))

(declare-fun m!3939225 () Bool)

(assert (=> d!1017855 m!3939225))

(assert (=> b!3502966 m!3939141))

(assert (=> b!3502966 m!3939141))

(declare-fun m!3939227 () Bool)

(assert (=> b!3502966 m!3939227))

(declare-fun m!3939229 () Bool)

(assert (=> b!3502967 m!3939229))

(assert (=> b!3502103 d!1017855))

(declare-fun d!1017857 () Bool)

(declare-fun res!1412787 () Bool)

(declare-fun e!2168767 () Bool)

(assert (=> d!1017857 (=> (not res!1412787) (not e!2168767))))

(declare-fun rulesValid!2063 (LexerInterface!5053 List!37410) Bool)

(assert (=> d!1017857 (= res!1412787 (rulesValid!2063 thiss!18206 rules!2135))))

(assert (=> d!1017857 (= (rulesInvariant!4450 thiss!18206 rules!2135) e!2168767)))

(declare-fun b!3502970 () Bool)

(declare-datatypes ((List!37413 0))(
  ( (Nil!37289) (Cons!37289 (h!42709 String!41804) (t!279106 List!37413)) )
))
(declare-fun noDuplicateTag!2059 (LexerInterface!5053 List!37410 List!37413) Bool)

(assert (=> b!3502970 (= e!2168767 (noDuplicateTag!2059 thiss!18206 rules!2135 Nil!37289))))

(assert (= (and d!1017857 res!1412787) b!3502970))

(declare-fun m!3939231 () Bool)

(assert (=> d!1017857 m!3939231))

(declare-fun m!3939233 () Bool)

(assert (=> b!3502970 m!3939233))

(assert (=> b!3502104 d!1017857))

(declare-fun b!3502971 () Bool)

(declare-fun e!2168773 () Bool)

(assert (=> b!3502971 (= e!2168773 (matchR!4807 (derivativeStep!3061 (regex!5464 lt!1193845) (head!7363 lt!1193823)) (tail!5471 lt!1193823)))))

(declare-fun b!3502972 () Bool)

(declare-fun e!2168769 () Bool)

(declare-fun e!2168768 () Bool)

(assert (=> b!3502972 (= e!2168769 e!2168768)))

(declare-fun c!602577 () Bool)

(assert (=> b!3502972 (= c!602577 ((_ is EmptyLang!10223) (regex!5464 lt!1193845)))))

(declare-fun b!3502973 () Bool)

(declare-fun res!1412794 () Bool)

(declare-fun e!2168772 () Bool)

(assert (=> b!3502973 (=> res!1412794 e!2168772)))

(declare-fun e!2168770 () Bool)

(assert (=> b!3502973 (= res!1412794 e!2168770)))

(declare-fun res!1412795 () Bool)

(assert (=> b!3502973 (=> (not res!1412795) (not e!2168770))))

(declare-fun lt!1194218 () Bool)

(assert (=> b!3502973 (= res!1412795 lt!1194218)))

(declare-fun b!3502974 () Bool)

(declare-fun e!2168774 () Bool)

(assert (=> b!3502974 (= e!2168772 e!2168774)))

(declare-fun res!1412792 () Bool)

(assert (=> b!3502974 (=> (not res!1412792) (not e!2168774))))

(assert (=> b!3502974 (= res!1412792 (not lt!1194218))))

(declare-fun b!3502975 () Bool)

(declare-fun e!2168771 () Bool)

(assert (=> b!3502975 (= e!2168771 (not (= (head!7363 lt!1193823) (c!602400 (regex!5464 lt!1193845)))))))

(declare-fun d!1017859 () Bool)

(assert (=> d!1017859 e!2168769))

(declare-fun c!602576 () Bool)

(assert (=> d!1017859 (= c!602576 ((_ is EmptyExpr!10223) (regex!5464 lt!1193845)))))

(assert (=> d!1017859 (= lt!1194218 e!2168773)))

(declare-fun c!602575 () Bool)

(assert (=> d!1017859 (= c!602575 (isEmpty!21711 lt!1193823))))

(assert (=> d!1017859 (validRegex!4664 (regex!5464 lt!1193845))))

(assert (=> d!1017859 (= (matchR!4807 (regex!5464 lt!1193845) lt!1193823) lt!1194218)))

(declare-fun bm!252906 () Bool)

(declare-fun call!252911 () Bool)

(assert (=> bm!252906 (= call!252911 (isEmpty!21711 lt!1193823))))

(declare-fun b!3502976 () Bool)

(assert (=> b!3502976 (= e!2168774 e!2168771)))

(declare-fun res!1412788 () Bool)

(assert (=> b!3502976 (=> res!1412788 e!2168771)))

(assert (=> b!3502976 (= res!1412788 call!252911)))

(declare-fun b!3502977 () Bool)

(declare-fun res!1412789 () Bool)

(assert (=> b!3502977 (=> (not res!1412789) (not e!2168770))))

(assert (=> b!3502977 (= res!1412789 (isEmpty!21711 (tail!5471 lt!1193823)))))

(declare-fun b!3502978 () Bool)

(assert (=> b!3502978 (= e!2168770 (= (head!7363 lt!1193823) (c!602400 (regex!5464 lt!1193845))))))

(declare-fun b!3502979 () Bool)

(assert (=> b!3502979 (= e!2168773 (nullable!3508 (regex!5464 lt!1193845)))))

(declare-fun b!3502980 () Bool)

(declare-fun res!1412793 () Bool)

(assert (=> b!3502980 (=> (not res!1412793) (not e!2168770))))

(assert (=> b!3502980 (= res!1412793 (not call!252911))))

(declare-fun b!3502981 () Bool)

(declare-fun res!1412790 () Bool)

(assert (=> b!3502981 (=> res!1412790 e!2168772)))

(assert (=> b!3502981 (= res!1412790 (not ((_ is ElementMatch!10223) (regex!5464 lt!1193845))))))

(assert (=> b!3502981 (= e!2168768 e!2168772)))

(declare-fun b!3502982 () Bool)

(declare-fun res!1412791 () Bool)

(assert (=> b!3502982 (=> res!1412791 e!2168771)))

(assert (=> b!3502982 (= res!1412791 (not (isEmpty!21711 (tail!5471 lt!1193823))))))

(declare-fun b!3502983 () Bool)

(assert (=> b!3502983 (= e!2168769 (= lt!1194218 call!252911))))

(declare-fun b!3502984 () Bool)

(assert (=> b!3502984 (= e!2168768 (not lt!1194218))))

(assert (= (and d!1017859 c!602575) b!3502979))

(assert (= (and d!1017859 (not c!602575)) b!3502971))

(assert (= (and d!1017859 c!602576) b!3502983))

(assert (= (and d!1017859 (not c!602576)) b!3502972))

(assert (= (and b!3502972 c!602577) b!3502984))

(assert (= (and b!3502972 (not c!602577)) b!3502981))

(assert (= (and b!3502981 (not res!1412790)) b!3502973))

(assert (= (and b!3502973 res!1412795) b!3502980))

(assert (= (and b!3502980 res!1412793) b!3502977))

(assert (= (and b!3502977 res!1412789) b!3502978))

(assert (= (and b!3502973 (not res!1412794)) b!3502974))

(assert (= (and b!3502974 res!1412792) b!3502976))

(assert (= (and b!3502976 (not res!1412788)) b!3502982))

(assert (= (and b!3502982 (not res!1412791)) b!3502975))

(assert (= (or b!3502983 b!3502980 b!3502976) bm!252906))

(assert (=> bm!252906 m!3937943))

(declare-fun m!3939235 () Bool)

(assert (=> b!3502979 m!3939235))

(assert (=> d!1017859 m!3937943))

(declare-fun m!3939237 () Bool)

(assert (=> d!1017859 m!3939237))

(assert (=> b!3502977 m!3937947))

(assert (=> b!3502977 m!3937947))

(assert (=> b!3502977 m!3937949))

(assert (=> b!3502971 m!3937683))

(assert (=> b!3502971 m!3937683))

(declare-fun m!3939239 () Bool)

(assert (=> b!3502971 m!3939239))

(assert (=> b!3502971 m!3937947))

(assert (=> b!3502971 m!3939239))

(assert (=> b!3502971 m!3937947))

(declare-fun m!3939241 () Bool)

(assert (=> b!3502971 m!3939241))

(assert (=> b!3502978 m!3937683))

(assert (=> b!3502975 m!3937683))

(assert (=> b!3502982 m!3937947))

(assert (=> b!3502982 m!3937947))

(assert (=> b!3502982 m!3937949))

(assert (=> b!3502083 d!1017859))

(declare-fun d!1017861 () Bool)

(assert (=> d!1017861 (= (get!11959 lt!1193821) (v!37020 lt!1193821))))

(assert (=> b!3502083 d!1017861))

(declare-fun b!3502985 () Bool)

(declare-fun e!2168780 () Bool)

(assert (=> b!3502985 (= e!2168780 (matchR!4807 (derivativeStep!3061 (regex!5464 lt!1193856) (head!7363 lt!1193830)) (tail!5471 lt!1193830)))))

(declare-fun b!3502986 () Bool)

(declare-fun e!2168776 () Bool)

(declare-fun e!2168775 () Bool)

(assert (=> b!3502986 (= e!2168776 e!2168775)))

(declare-fun c!602580 () Bool)

(assert (=> b!3502986 (= c!602580 ((_ is EmptyLang!10223) (regex!5464 lt!1193856)))))

(declare-fun b!3502987 () Bool)

(declare-fun res!1412802 () Bool)

(declare-fun e!2168779 () Bool)

(assert (=> b!3502987 (=> res!1412802 e!2168779)))

(declare-fun e!2168777 () Bool)

(assert (=> b!3502987 (= res!1412802 e!2168777)))

(declare-fun res!1412803 () Bool)

(assert (=> b!3502987 (=> (not res!1412803) (not e!2168777))))

(declare-fun lt!1194219 () Bool)

(assert (=> b!3502987 (= res!1412803 lt!1194219)))

(declare-fun b!3502988 () Bool)

(declare-fun e!2168781 () Bool)

(assert (=> b!3502988 (= e!2168779 e!2168781)))

(declare-fun res!1412800 () Bool)

(assert (=> b!3502988 (=> (not res!1412800) (not e!2168781))))

(assert (=> b!3502988 (= res!1412800 (not lt!1194219))))

(declare-fun b!3502989 () Bool)

(declare-fun e!2168778 () Bool)

(assert (=> b!3502989 (= e!2168778 (not (= (head!7363 lt!1193830) (c!602400 (regex!5464 lt!1193856)))))))

(declare-fun d!1017863 () Bool)

(assert (=> d!1017863 e!2168776))

(declare-fun c!602579 () Bool)

(assert (=> d!1017863 (= c!602579 ((_ is EmptyExpr!10223) (regex!5464 lt!1193856)))))

(assert (=> d!1017863 (= lt!1194219 e!2168780)))

(declare-fun c!602578 () Bool)

(assert (=> d!1017863 (= c!602578 (isEmpty!21711 lt!1193830))))

(assert (=> d!1017863 (validRegex!4664 (regex!5464 lt!1193856))))

(assert (=> d!1017863 (= (matchR!4807 (regex!5464 lt!1193856) lt!1193830) lt!1194219)))

(declare-fun bm!252907 () Bool)

(declare-fun call!252912 () Bool)

(assert (=> bm!252907 (= call!252912 (isEmpty!21711 lt!1193830))))

(declare-fun b!3502990 () Bool)

(assert (=> b!3502990 (= e!2168781 e!2168778)))

(declare-fun res!1412796 () Bool)

(assert (=> b!3502990 (=> res!1412796 e!2168778)))

(assert (=> b!3502990 (= res!1412796 call!252912)))

(declare-fun b!3502991 () Bool)

(declare-fun res!1412797 () Bool)

(assert (=> b!3502991 (=> (not res!1412797) (not e!2168777))))

(assert (=> b!3502991 (= res!1412797 (isEmpty!21711 (tail!5471 lt!1193830)))))

(declare-fun b!3502992 () Bool)

(assert (=> b!3502992 (= e!2168777 (= (head!7363 lt!1193830) (c!602400 (regex!5464 lt!1193856))))))

(declare-fun b!3502993 () Bool)

(assert (=> b!3502993 (= e!2168780 (nullable!3508 (regex!5464 lt!1193856)))))

(declare-fun b!3502994 () Bool)

(declare-fun res!1412801 () Bool)

(assert (=> b!3502994 (=> (not res!1412801) (not e!2168777))))

(assert (=> b!3502994 (= res!1412801 (not call!252912))))

(declare-fun b!3502995 () Bool)

(declare-fun res!1412798 () Bool)

(assert (=> b!3502995 (=> res!1412798 e!2168779)))

(assert (=> b!3502995 (= res!1412798 (not ((_ is ElementMatch!10223) (regex!5464 lt!1193856))))))

(assert (=> b!3502995 (= e!2168775 e!2168779)))

(declare-fun b!3502996 () Bool)

(declare-fun res!1412799 () Bool)

(assert (=> b!3502996 (=> res!1412799 e!2168778)))

(assert (=> b!3502996 (= res!1412799 (not (isEmpty!21711 (tail!5471 lt!1193830))))))

(declare-fun b!3502997 () Bool)

(assert (=> b!3502997 (= e!2168776 (= lt!1194219 call!252912))))

(declare-fun b!3502998 () Bool)

(assert (=> b!3502998 (= e!2168775 (not lt!1194219))))

(assert (= (and d!1017863 c!602578) b!3502993))

(assert (= (and d!1017863 (not c!602578)) b!3502985))

(assert (= (and d!1017863 c!602579) b!3502997))

(assert (= (and d!1017863 (not c!602579)) b!3502986))

(assert (= (and b!3502986 c!602580) b!3502998))

(assert (= (and b!3502986 (not c!602580)) b!3502995))

(assert (= (and b!3502995 (not res!1412798)) b!3502987))

(assert (= (and b!3502987 res!1412803) b!3502994))

(assert (= (and b!3502994 res!1412801) b!3502991))

(assert (= (and b!3502991 res!1412797) b!3502992))

(assert (= (and b!3502987 (not res!1412802)) b!3502988))

(assert (= (and b!3502988 res!1412800) b!3502990))

(assert (= (and b!3502990 (not res!1412796)) b!3502996))

(assert (= (and b!3502996 (not res!1412799)) b!3502989))

(assert (= (or b!3502997 b!3502994 b!3502990) bm!252907))

(declare-fun m!3939243 () Bool)

(assert (=> bm!252907 m!3939243))

(declare-fun m!3939245 () Bool)

(assert (=> b!3502993 m!3939245))

(assert (=> d!1017863 m!3939243))

(declare-fun m!3939247 () Bool)

(assert (=> d!1017863 m!3939247))

(declare-fun m!3939249 () Bool)

(assert (=> b!3502991 m!3939249))

(assert (=> b!3502991 m!3939249))

(declare-fun m!3939251 () Bool)

(assert (=> b!3502991 m!3939251))

(declare-fun m!3939253 () Bool)

(assert (=> b!3502985 m!3939253))

(assert (=> b!3502985 m!3939253))

(declare-fun m!3939255 () Bool)

(assert (=> b!3502985 m!3939255))

(assert (=> b!3502985 m!3939249))

(assert (=> b!3502985 m!3939255))

(assert (=> b!3502985 m!3939249))

(declare-fun m!3939257 () Bool)

(assert (=> b!3502985 m!3939257))

(assert (=> b!3502992 m!3939253))

(assert (=> b!3502989 m!3939253))

(assert (=> b!3502996 m!3939249))

(assert (=> b!3502996 m!3939249))

(assert (=> b!3502996 m!3939251))

(assert (=> b!3502084 d!1017863))

(declare-fun d!1017865 () Bool)

(assert (=> d!1017865 (= (get!11959 lt!1193851) (v!37020 lt!1193851))))

(assert (=> b!3502084 d!1017865))

(declare-fun d!1017867 () Bool)

(assert (=> d!1017867 (= (inv!50497 (tag!6092 (rule!8086 separatorToken!241))) (= (mod (str.len (value!176183 (tag!6092 (rule!8086 separatorToken!241)))) 2) 0))))

(assert (=> b!3502105 d!1017867))

(declare-fun d!1017869 () Bool)

(declare-fun res!1412804 () Bool)

(declare-fun e!2168782 () Bool)

(assert (=> d!1017869 (=> (not res!1412804) (not e!2168782))))

(assert (=> d!1017869 (= res!1412804 (semiInverseModEq!2303 (toChars!7567 (transformation!5464 (rule!8086 separatorToken!241))) (toValue!7708 (transformation!5464 (rule!8086 separatorToken!241)))))))

(assert (=> d!1017869 (= (inv!50500 (transformation!5464 (rule!8086 separatorToken!241))) e!2168782)))

(declare-fun b!3502999 () Bool)

(assert (=> b!3502999 (= e!2168782 (equivClasses!2202 (toChars!7567 (transformation!5464 (rule!8086 separatorToken!241))) (toValue!7708 (transformation!5464 (rule!8086 separatorToken!241)))))))

(assert (= (and d!1017869 res!1412804) b!3502999))

(declare-fun m!3939259 () Bool)

(assert (=> d!1017869 m!3939259))

(declare-fun m!3939261 () Bool)

(assert (=> b!3502999 m!3939261))

(assert (=> b!3502105 d!1017869))

(declare-fun d!1017871 () Bool)

(declare-fun lt!1194220 () Bool)

(declare-fun e!2168784 () Bool)

(assert (=> d!1017871 (= lt!1194220 e!2168784)))

(declare-fun res!1412807 () Bool)

(assert (=> d!1017871 (=> (not res!1412807) (not e!2168784))))

(assert (=> d!1017871 (= res!1412807 (= (list!13620 (_1!21674 (lex!2379 thiss!18206 rules!2135 (print!2118 thiss!18206 (singletonSeq!2560 separatorToken!241))))) (list!13620 (singletonSeq!2560 separatorToken!241))))))

(declare-fun e!2168783 () Bool)

(assert (=> d!1017871 (= lt!1194220 e!2168783)))

(declare-fun res!1412806 () Bool)

(assert (=> d!1017871 (=> (not res!1412806) (not e!2168783))))

(declare-fun lt!1194221 () tuple2!37080)

(assert (=> d!1017871 (= res!1412806 (= (size!28340 (_1!21674 lt!1194221)) 1))))

(assert (=> d!1017871 (= lt!1194221 (lex!2379 thiss!18206 rules!2135 (print!2118 thiss!18206 (singletonSeq!2560 separatorToken!241))))))

(assert (=> d!1017871 (not (isEmpty!21708 rules!2135))))

(assert (=> d!1017871 (= (rulesProduceIndividualToken!2545 thiss!18206 rules!2135 separatorToken!241) lt!1194220)))

(declare-fun b!3503000 () Bool)

(declare-fun res!1412805 () Bool)

(assert (=> b!3503000 (=> (not res!1412805) (not e!2168783))))

(assert (=> b!3503000 (= res!1412805 (= (apply!8848 (_1!21674 lt!1194221) 0) separatorToken!241))))

(declare-fun b!3503001 () Bool)

(assert (=> b!3503001 (= e!2168783 (isEmpty!21707 (_2!21674 lt!1194221)))))

(declare-fun b!3503002 () Bool)

(assert (=> b!3503002 (= e!2168784 (isEmpty!21707 (_2!21674 (lex!2379 thiss!18206 rules!2135 (print!2118 thiss!18206 (singletonSeq!2560 separatorToken!241))))))))

(assert (= (and d!1017871 res!1412806) b!3503000))

(assert (= (and b!3503000 res!1412805) b!3503001))

(assert (= (and d!1017871 res!1412807) b!3503002))

(declare-fun m!3939263 () Bool)

(assert (=> d!1017871 m!3939263))

(declare-fun m!3939265 () Bool)

(assert (=> d!1017871 m!3939265))

(declare-fun m!3939267 () Bool)

(assert (=> d!1017871 m!3939267))

(assert (=> d!1017871 m!3937791))

(assert (=> d!1017871 m!3937675))

(assert (=> d!1017871 m!3937675))

(declare-fun m!3939269 () Bool)

(assert (=> d!1017871 m!3939269))

(declare-fun m!3939271 () Bool)

(assert (=> d!1017871 m!3939271))

(assert (=> d!1017871 m!3937675))

(assert (=> d!1017871 m!3939263))

(declare-fun m!3939273 () Bool)

(assert (=> b!3503000 m!3939273))

(declare-fun m!3939275 () Bool)

(assert (=> b!3503001 m!3939275))

(assert (=> b!3503002 m!3937675))

(assert (=> b!3503002 m!3937675))

(assert (=> b!3503002 m!3939263))

(assert (=> b!3503002 m!3939263))

(assert (=> b!3503002 m!3939265))

(declare-fun m!3939277 () Bool)

(assert (=> b!3503002 m!3939277))

(assert (=> b!3502106 d!1017871))

(declare-fun d!1017873 () Bool)

(declare-fun lt!1194222 () Bool)

(assert (=> d!1017873 (= lt!1194222 (isEmpty!21711 (list!13617 (_2!21674 lt!1193824))))))

(assert (=> d!1017873 (= lt!1194222 (isEmpty!21716 (c!602401 (_2!21674 lt!1193824))))))

(assert (=> d!1017873 (= (isEmpty!21707 (_2!21674 lt!1193824)) lt!1194222)))

(declare-fun bs!563832 () Bool)

(assert (= bs!563832 d!1017873))

(declare-fun m!3939279 () Bool)

(assert (=> bs!563832 m!3939279))

(assert (=> bs!563832 m!3939279))

(declare-fun m!3939281 () Bool)

(assert (=> bs!563832 m!3939281))

(declare-fun m!3939283 () Bool)

(assert (=> bs!563832 m!3939283))

(assert (=> b!3502085 d!1017873))

(declare-fun b!3503013 () Bool)

(declare-fun b_free!90477 () Bool)

(declare-fun b_next!91181 () Bool)

(assert (=> b!3503013 (= b_free!90477 (not b_next!91181))))

(declare-fun t!279090 () Bool)

(declare-fun tb!194247 () Bool)

(assert (=> (and b!3503013 (= (toValue!7708 (transformation!5464 (h!42706 (t!279009 rules!2135)))) (toValue!7708 (transformation!5464 (rule!8086 (h!42707 tokens!494))))) t!279090) tb!194247))

(declare-fun result!238486 () Bool)

(assert (= result!238486 result!238426))

(assert (=> d!1017691 t!279090))

(declare-fun tp!1084407 () Bool)

(declare-fun b_and!248543 () Bool)

(assert (=> b!3503013 (= tp!1084407 (and (=> t!279090 result!238486) b_and!248543))))

(declare-fun b_free!90479 () Bool)

(declare-fun b_next!91183 () Bool)

(assert (=> b!3503013 (= b_free!90479 (not b_next!91183))))

(declare-fun t!279092 () Bool)

(declare-fun tb!194249 () Bool)

(assert (=> (and b!3503013 (= (toChars!7567 (transformation!5464 (h!42706 (t!279009 rules!2135)))) (toChars!7567 (transformation!5464 (rule!8086 (h!42707 tokens!494))))) t!279092) tb!194249))

(declare-fun result!238488 () Bool)

(assert (= result!238488 result!238478))

(assert (=> d!1017835 t!279092))

(declare-fun tb!194251 () Bool)

(declare-fun t!279094 () Bool)

(assert (=> (and b!3503013 (= (toChars!7567 (transformation!5464 (h!42706 (t!279009 rules!2135)))) (toChars!7567 (transformation!5464 (rule!8086 (h!42707 (t!279010 tokens!494)))))) t!279094) tb!194251))

(declare-fun result!238490 () Bool)

(assert (= result!238490 result!238442))

(assert (=> d!1017719 t!279094))

(declare-fun tb!194253 () Bool)

(declare-fun t!279096 () Bool)

(assert (=> (and b!3503013 (= (toChars!7567 (transformation!5464 (h!42706 (t!279009 rules!2135)))) (toChars!7567 (transformation!5464 (rule!8086 separatorToken!241)))) t!279096) tb!194253))

(declare-fun result!238492 () Bool)

(assert (= result!238492 result!238434))

(assert (=> d!1017705 t!279096))

(assert (=> b!3502956 t!279096))

(assert (=> b!3502966 t!279092))

(declare-fun b_and!248545 () Bool)

(declare-fun tp!1084410 () Bool)

(assert (=> b!3503013 (= tp!1084410 (and (=> t!279092 result!238488) (=> t!279094 result!238490) (=> t!279096 result!238492) b_and!248545))))

(declare-fun e!2168795 () Bool)

(assert (=> b!3503013 (= e!2168795 (and tp!1084407 tp!1084410))))

(declare-fun b!3503012 () Bool)

(declare-fun tp!1084409 () Bool)

(declare-fun e!2168796 () Bool)

(assert (=> b!3503012 (= e!2168796 (and tp!1084409 (inv!50497 (tag!6092 (h!42706 (t!279009 rules!2135)))) (inv!50500 (transformation!5464 (h!42706 (t!279009 rules!2135)))) e!2168795))))

(declare-fun b!3503011 () Bool)

(declare-fun e!2168794 () Bool)

(declare-fun tp!1084408 () Bool)

(assert (=> b!3503011 (= e!2168794 (and e!2168796 tp!1084408))))

(assert (=> b!3502110 (= tp!1084325 e!2168794)))

(assert (= b!3503012 b!3503013))

(assert (= b!3503011 b!3503012))

(assert (= (and b!3502110 ((_ is Cons!37286) (t!279009 rules!2135))) b!3503011))

(declare-fun m!3939285 () Bool)

(assert (=> b!3503012 m!3939285))

(declare-fun m!3939287 () Bool)

(assert (=> b!3503012 m!3939287))

(declare-fun b!3503018 () Bool)

(declare-fun e!2168799 () Bool)

(declare-fun tp_is_empty!17597 () Bool)

(declare-fun tp!1084413 () Bool)

(assert (=> b!3503018 (= e!2168799 (and tp_is_empty!17597 tp!1084413))))

(assert (=> b!3502101 (= tp!1084330 e!2168799)))

(assert (= (and b!3502101 ((_ is Cons!37285) (originalCharacters!6178 separatorToken!241))) b!3503018))

(declare-fun b!3503019 () Bool)

(declare-fun e!2168800 () Bool)

(declare-fun tp!1084414 () Bool)

(assert (=> b!3503019 (= e!2168800 (and tp_is_empty!17597 tp!1084414))))

(assert (=> b!3502102 (= tp!1084326 e!2168800)))

(assert (= (and b!3502102 ((_ is Cons!37285) (originalCharacters!6178 (h!42707 tokens!494)))) b!3503019))

(declare-fun b!3503031 () Bool)

(declare-fun e!2168803 () Bool)

(declare-fun tp!1084427 () Bool)

(declare-fun tp!1084425 () Bool)

(assert (=> b!3503031 (= e!2168803 (and tp!1084427 tp!1084425))))

(declare-fun b!3503032 () Bool)

(declare-fun tp!1084429 () Bool)

(assert (=> b!3503032 (= e!2168803 tp!1084429)))

(assert (=> b!3502113 (= tp!1084323 e!2168803)))

(declare-fun b!3503033 () Bool)

(declare-fun tp!1084426 () Bool)

(declare-fun tp!1084428 () Bool)

(assert (=> b!3503033 (= e!2168803 (and tp!1084426 tp!1084428))))

(declare-fun b!3503030 () Bool)

(assert (=> b!3503030 (= e!2168803 tp_is_empty!17597)))

(assert (= (and b!3502113 ((_ is ElementMatch!10223) (regex!5464 (h!42706 rules!2135)))) b!3503030))

(assert (= (and b!3502113 ((_ is Concat!15917) (regex!5464 (h!42706 rules!2135)))) b!3503031))

(assert (= (and b!3502113 ((_ is Star!10223) (regex!5464 (h!42706 rules!2135)))) b!3503032))

(assert (= (and b!3502113 ((_ is Union!10223) (regex!5464 (h!42706 rules!2135)))) b!3503033))

(declare-fun b!3503047 () Bool)

(declare-fun b_free!90481 () Bool)

(declare-fun b_next!91185 () Bool)

(assert (=> b!3503047 (= b_free!90481 (not b_next!91185))))

(declare-fun t!279098 () Bool)

(declare-fun tb!194255 () Bool)

(assert (=> (and b!3503047 (= (toValue!7708 (transformation!5464 (rule!8086 (h!42707 (t!279010 tokens!494))))) (toValue!7708 (transformation!5464 (rule!8086 (h!42707 tokens!494))))) t!279098) tb!194255))

(declare-fun result!238500 () Bool)

(assert (= result!238500 result!238426))

(assert (=> d!1017691 t!279098))

(declare-fun b_and!248547 () Bool)

(declare-fun tp!1084442 () Bool)

(assert (=> b!3503047 (= tp!1084442 (and (=> t!279098 result!238500) b_and!248547))))

(declare-fun b_free!90483 () Bool)

(declare-fun b_next!91187 () Bool)

(assert (=> b!3503047 (= b_free!90483 (not b_next!91187))))

(declare-fun t!279100 () Bool)

(declare-fun tb!194257 () Bool)

(assert (=> (and b!3503047 (= (toChars!7567 (transformation!5464 (rule!8086 (h!42707 (t!279010 tokens!494))))) (toChars!7567 (transformation!5464 (rule!8086 (h!42707 tokens!494))))) t!279100) tb!194257))

(declare-fun result!238502 () Bool)

(assert (= result!238502 result!238478))

(assert (=> d!1017835 t!279100))

(declare-fun t!279102 () Bool)

(declare-fun tb!194259 () Bool)

(assert (=> (and b!3503047 (= (toChars!7567 (transformation!5464 (rule!8086 (h!42707 (t!279010 tokens!494))))) (toChars!7567 (transformation!5464 (rule!8086 (h!42707 (t!279010 tokens!494)))))) t!279102) tb!194259))

(declare-fun result!238504 () Bool)

(assert (= result!238504 result!238442))

(assert (=> d!1017719 t!279102))

(declare-fun t!279104 () Bool)

(declare-fun tb!194261 () Bool)

(assert (=> (and b!3503047 (= (toChars!7567 (transformation!5464 (rule!8086 (h!42707 (t!279010 tokens!494))))) (toChars!7567 (transformation!5464 (rule!8086 separatorToken!241)))) t!279104) tb!194261))

(declare-fun result!238506 () Bool)

(assert (= result!238506 result!238434))

(assert (=> d!1017705 t!279104))

(assert (=> b!3502956 t!279104))

(assert (=> b!3502966 t!279100))

(declare-fun tp!1084441 () Bool)

(declare-fun b_and!248549 () Bool)

(assert (=> b!3503047 (= tp!1084441 (and (=> t!279100 result!238502) (=> t!279104 result!238506) (=> t!279102 result!238504) b_and!248549))))

(declare-fun b!3503046 () Bool)

(declare-fun tp!1084444 () Bool)

(declare-fun e!2168819 () Bool)

(declare-fun e!2168821 () Bool)

(assert (=> b!3503046 (= e!2168821 (and tp!1084444 (inv!50497 (tag!6092 (rule!8086 (h!42707 (t!279010 tokens!494))))) (inv!50500 (transformation!5464 (rule!8086 (h!42707 (t!279010 tokens!494))))) e!2168819))))

(declare-fun e!2168817 () Bool)

(declare-fun tp!1084443 () Bool)

(declare-fun b!3503045 () Bool)

(assert (=> b!3503045 (= e!2168817 (and (inv!21 (value!176184 (h!42707 (t!279010 tokens!494)))) e!2168821 tp!1084443))))

(assert (=> b!3503047 (= e!2168819 (and tp!1084442 tp!1084441))))

(declare-fun tp!1084440 () Bool)

(declare-fun b!3503044 () Bool)

(declare-fun e!2168818 () Bool)

(assert (=> b!3503044 (= e!2168818 (and (inv!50501 (h!42707 (t!279010 tokens!494))) e!2168817 tp!1084440))))

(assert (=> b!3502103 (= tp!1084327 e!2168818)))

(assert (= b!3503046 b!3503047))

(assert (= b!3503045 b!3503046))

(assert (= b!3503044 b!3503045))

(assert (= (and b!3502103 ((_ is Cons!37287) (t!279010 tokens!494))) b!3503044))

(declare-fun m!3939289 () Bool)

(assert (=> b!3503046 m!3939289))

(declare-fun m!3939291 () Bool)

(assert (=> b!3503046 m!3939291))

(declare-fun m!3939293 () Bool)

(assert (=> b!3503045 m!3939293))

(declare-fun m!3939295 () Bool)

(assert (=> b!3503044 m!3939295))

(declare-fun b!3503050 () Bool)

(declare-fun e!2168824 () Bool)

(assert (=> b!3503050 (= e!2168824 true)))

(declare-fun b!3503049 () Bool)

(declare-fun e!2168823 () Bool)

(assert (=> b!3503049 (= e!2168823 e!2168824)))

(declare-fun b!3503048 () Bool)

(declare-fun e!2168822 () Bool)

(assert (=> b!3503048 (= e!2168822 e!2168823)))

(assert (=> b!3502122 e!2168822))

(assert (= b!3503049 b!3503050))

(assert (= b!3503048 b!3503049))

(assert (= (and b!3502122 ((_ is Cons!37286) (t!279009 rules!2135))) b!3503048))

(assert (=> b!3503050 (< (dynLambda!15824 order!19993 (toValue!7708 (transformation!5464 (h!42706 (t!279009 rules!2135))))) (dynLambda!15825 order!19995 lambda!122455))))

(assert (=> b!3503050 (< (dynLambda!15826 order!19997 (toChars!7567 (transformation!5464 (h!42706 (t!279009 rules!2135))))) (dynLambda!15825 order!19995 lambda!122455))))

(declare-fun b!3503052 () Bool)

(declare-fun e!2168825 () Bool)

(declare-fun tp!1084447 () Bool)

(declare-fun tp!1084445 () Bool)

(assert (=> b!3503052 (= e!2168825 (and tp!1084447 tp!1084445))))

(declare-fun b!3503053 () Bool)

(declare-fun tp!1084449 () Bool)

(assert (=> b!3503053 (= e!2168825 tp!1084449)))

(assert (=> b!3502105 (= tp!1084321 e!2168825)))

(declare-fun b!3503054 () Bool)

(declare-fun tp!1084446 () Bool)

(declare-fun tp!1084448 () Bool)

(assert (=> b!3503054 (= e!2168825 (and tp!1084446 tp!1084448))))

(declare-fun b!3503051 () Bool)

(assert (=> b!3503051 (= e!2168825 tp_is_empty!17597)))

(assert (= (and b!3502105 ((_ is ElementMatch!10223) (regex!5464 (rule!8086 separatorToken!241)))) b!3503051))

(assert (= (and b!3502105 ((_ is Concat!15917) (regex!5464 (rule!8086 separatorToken!241)))) b!3503052))

(assert (= (and b!3502105 ((_ is Star!10223) (regex!5464 (rule!8086 separatorToken!241)))) b!3503053))

(assert (= (and b!3502105 ((_ is Union!10223) (regex!5464 (rule!8086 separatorToken!241)))) b!3503054))

(declare-fun b!3503056 () Bool)

(declare-fun e!2168826 () Bool)

(declare-fun tp!1084452 () Bool)

(declare-fun tp!1084450 () Bool)

(assert (=> b!3503056 (= e!2168826 (and tp!1084452 tp!1084450))))

(declare-fun b!3503057 () Bool)

(declare-fun tp!1084454 () Bool)

(assert (=> b!3503057 (= e!2168826 tp!1084454)))

(assert (=> b!3502096 (= tp!1084320 e!2168826)))

(declare-fun b!3503058 () Bool)

(declare-fun tp!1084451 () Bool)

(declare-fun tp!1084453 () Bool)

(assert (=> b!3503058 (= e!2168826 (and tp!1084451 tp!1084453))))

(declare-fun b!3503055 () Bool)

(assert (=> b!3503055 (= e!2168826 tp_is_empty!17597)))

(assert (= (and b!3502096 ((_ is ElementMatch!10223) (regex!5464 (rule!8086 (h!42707 tokens!494))))) b!3503055))

(assert (= (and b!3502096 ((_ is Concat!15917) (regex!5464 (rule!8086 (h!42707 tokens!494))))) b!3503056))

(assert (= (and b!3502096 ((_ is Star!10223) (regex!5464 (rule!8086 (h!42707 tokens!494))))) b!3503057))

(assert (= (and b!3502096 ((_ is Union!10223) (regex!5464 (rule!8086 (h!42707 tokens!494))))) b!3503058))

(declare-fun b_lambda!101783 () Bool)

(assert (= b_lambda!101727 (or b!3502098 b_lambda!101783)))

(declare-fun bs!563833 () Bool)

(declare-fun d!1017875 () Bool)

(assert (= bs!563833 (and d!1017875 b!3502098)))

(assert (=> bs!563833 (= (dynLambda!15829 lambda!122454 (h!42707 tokens!494)) (not (isSeparator!5464 (rule!8086 (h!42707 tokens!494)))))))

(assert (=> b!3502273 d!1017875))

(declare-fun b_lambda!101785 () Bool)

(assert (= b_lambda!101729 (or b!3502099 b_lambda!101785)))

(declare-fun bs!563834 () Bool)

(declare-fun d!1017877 () Bool)

(assert (= bs!563834 (and d!1017877 b!3502099)))

(assert (=> bs!563834 (= (dynLambda!15829 lambda!122455 (h!42707 (t!279010 tokens!494))) (rulesProduceIndividualToken!2545 thiss!18206 rules!2135 (h!42707 (t!279010 tokens!494))))))

(assert (=> bs!563834 m!3937677))

(assert (=> d!1017551 d!1017877))

(declare-fun b_lambda!101787 () Bool)

(assert (= b_lambda!101745 (or (and b!3503047 b_free!90483) (and b!3502088 b_free!90463 (= (toChars!7567 (transformation!5464 (rule!8086 separatorToken!241))) (toChars!7567 (transformation!5464 (rule!8086 (h!42707 (t!279010 tokens!494))))))) (and b!3502075 b_free!90459 (= (toChars!7567 (transformation!5464 (h!42706 rules!2135))) (toChars!7567 (transformation!5464 (rule!8086 (h!42707 (t!279010 tokens!494))))))) (and b!3502108 b_free!90467 (= (toChars!7567 (transformation!5464 (rule!8086 (h!42707 tokens!494)))) (toChars!7567 (transformation!5464 (rule!8086 (h!42707 (t!279010 tokens!494))))))) (and b!3503013 b_free!90479 (= (toChars!7567 (transformation!5464 (h!42706 (t!279009 rules!2135)))) (toChars!7567 (transformation!5464 (rule!8086 (h!42707 (t!279010 tokens!494))))))) b_lambda!101787)))

(declare-fun b_lambda!101789 () Bool)

(assert (= b_lambda!101777 (or (and b!3502108 b_free!90467) (and b!3502075 b_free!90459 (= (toChars!7567 (transformation!5464 (h!42706 rules!2135))) (toChars!7567 (transformation!5464 (rule!8086 (h!42707 tokens!494)))))) (and b!3503047 b_free!90483 (= (toChars!7567 (transformation!5464 (rule!8086 (h!42707 (t!279010 tokens!494))))) (toChars!7567 (transformation!5464 (rule!8086 (h!42707 tokens!494)))))) (and b!3502088 b_free!90463 (= (toChars!7567 (transformation!5464 (rule!8086 separatorToken!241))) (toChars!7567 (transformation!5464 (rule!8086 (h!42707 tokens!494)))))) (and b!3503013 b_free!90479 (= (toChars!7567 (transformation!5464 (h!42706 (t!279009 rules!2135)))) (toChars!7567 (transformation!5464 (rule!8086 (h!42707 tokens!494)))))) b_lambda!101789)))

(declare-fun b_lambda!101791 () Bool)

(assert (= b_lambda!101743 (or (and b!3502088 b_free!90463) (and b!3502108 b_free!90467 (= (toChars!7567 (transformation!5464 (rule!8086 (h!42707 tokens!494)))) (toChars!7567 (transformation!5464 (rule!8086 separatorToken!241))))) (and b!3503013 b_free!90479 (= (toChars!7567 (transformation!5464 (h!42706 (t!279009 rules!2135)))) (toChars!7567 (transformation!5464 (rule!8086 separatorToken!241))))) (and b!3502075 b_free!90459 (= (toChars!7567 (transformation!5464 (h!42706 rules!2135))) (toChars!7567 (transformation!5464 (rule!8086 separatorToken!241))))) (and b!3503047 b_free!90483 (= (toChars!7567 (transformation!5464 (rule!8086 (h!42707 (t!279010 tokens!494))))) (toChars!7567 (transformation!5464 (rule!8086 separatorToken!241))))) b_lambda!101791)))

(declare-fun b_lambda!101793 () Bool)

(assert (= b_lambda!101779 (or (and b!3502088 b_free!90463) (and b!3502108 b_free!90467 (= (toChars!7567 (transformation!5464 (rule!8086 (h!42707 tokens!494)))) (toChars!7567 (transformation!5464 (rule!8086 separatorToken!241))))) (and b!3503013 b_free!90479 (= (toChars!7567 (transformation!5464 (h!42706 (t!279009 rules!2135)))) (toChars!7567 (transformation!5464 (rule!8086 separatorToken!241))))) (and b!3502075 b_free!90459 (= (toChars!7567 (transformation!5464 (h!42706 rules!2135))) (toChars!7567 (transformation!5464 (rule!8086 separatorToken!241))))) (and b!3503047 b_free!90483 (= (toChars!7567 (transformation!5464 (rule!8086 (h!42707 (t!279010 tokens!494))))) (toChars!7567 (transformation!5464 (rule!8086 separatorToken!241))))) b_lambda!101793)))

(declare-fun b_lambda!101795 () Bool)

(assert (= b_lambda!101749 (or b!3502098 b_lambda!101795)))

(assert (=> d!1017765 d!1017875))

(declare-fun b_lambda!101797 () Bool)

(assert (= b_lambda!101781 (or (and b!3502108 b_free!90467) (and b!3502075 b_free!90459 (= (toChars!7567 (transformation!5464 (h!42706 rules!2135))) (toChars!7567 (transformation!5464 (rule!8086 (h!42707 tokens!494)))))) (and b!3503047 b_free!90483 (= (toChars!7567 (transformation!5464 (rule!8086 (h!42707 (t!279010 tokens!494))))) (toChars!7567 (transformation!5464 (rule!8086 (h!42707 tokens!494)))))) (and b!3502088 b_free!90463 (= (toChars!7567 (transformation!5464 (rule!8086 separatorToken!241))) (toChars!7567 (transformation!5464 (rule!8086 (h!42707 tokens!494)))))) (and b!3503013 b_free!90479 (= (toChars!7567 (transformation!5464 (h!42706 (t!279009 rules!2135)))) (toChars!7567 (transformation!5464 (rule!8086 (h!42707 tokens!494)))))) b_lambda!101797)))

(declare-fun b_lambda!101799 () Bool)

(assert (= b_lambda!101747 (or b!3502098 b_lambda!101799)))

(declare-fun bs!563835 () Bool)

(declare-fun d!1017879 () Bool)

(assert (= bs!563835 (and d!1017879 b!3502098)))

(assert (=> bs!563835 (= (dynLambda!15829 lambda!122454 (h!42707 (t!279010 tokens!494))) (not (isSeparator!5464 (rule!8086 (h!42707 (t!279010 tokens!494))))))))

(assert (=> d!1017763 d!1017879))

(declare-fun b_lambda!101801 () Bool)

(assert (= b_lambda!101741 (or (and b!3502088 b_free!90461 (= (toValue!7708 (transformation!5464 (rule!8086 separatorToken!241))) (toValue!7708 (transformation!5464 (rule!8086 (h!42707 tokens!494)))))) (and b!3502108 b_free!90465) (and b!3503013 b_free!90477 (= (toValue!7708 (transformation!5464 (h!42706 (t!279009 rules!2135)))) (toValue!7708 (transformation!5464 (rule!8086 (h!42707 tokens!494)))))) (and b!3502075 b_free!90457 (= (toValue!7708 (transformation!5464 (h!42706 rules!2135))) (toValue!7708 (transformation!5464 (rule!8086 (h!42707 tokens!494)))))) (and b!3503047 b_free!90481 (= (toValue!7708 (transformation!5464 (rule!8086 (h!42707 (t!279010 tokens!494))))) (toValue!7708 (transformation!5464 (rule!8086 (h!42707 tokens!494)))))) b_lambda!101801)))

(check-sat (not b!3502805) (not bs!563834) (not b!3502547) (not b!3502779) (not d!1017737) (not b!3502985) (not b!3502529) (not b!3502544) (not b!3502996) (not d!1017687) (not b!3502933) (not b_next!91167) (not b!3502311) (not b!3502628) (not b!3502956) (not d!1017873) (not b!3502568) (not b!3502493) (not b!3502729) (not b!3502669) (not b!3503048) (not d!1017651) (not b!3502960) (not b!3502528) (not d!1017643) (not b!3502787) (not b!3502999) (not b_lambda!101797) (not b!3502295) (not d!1017703) (not b!3502625) (not b!3502653) (not d!1017589) (not d!1017857) (not b!3502975) (not b_lambda!101795) (not b!3503044) (not bm!252907) (not b!3502548) (not b!3502978) (not d!1017733) (not b_next!91185) (not d!1017689) (not d!1017545) (not b!3502552) (not b!3502561) (not b!3502963) (not b!3502786) (not b!3502991) (not b!3503033) (not d!1017839) (not b!3502623) (not d!1017549) (not d!1017641) (not d!1017719) (not b!3502992) (not b!3502789) (not bm!252898) (not d!1017653) (not b!3502542) (not d!1017553) (not b!3502750) (not d!1017759) (not b!3502535) (not d!1017775) (not b_lambda!101793) (not b!3503057) (not d!1017655) (not d!1017837) (not b!3502736) (not b_lambda!101787) (not d!1017859) (not d!1017543) (not b!3502700) (not b!3502569) (not b!3502492) (not bm!252897) (not d!1017699) (not b!3502249) (not b!3502982) (not b!3502620) (not b!3502251) (not b_next!91183) (not d!1017657) b_and!248545 (not d!1017855) (not b!3502727) (not d!1017853) (not b!3502551) (not b!3502290) (not d!1017647) (not b!3502993) tp_is_empty!17597 (not b!3502989) (not b!3503031) (not b!3502778) (not d!1017683) (not b!3503056) (not b!3502735) (not b_next!91165) (not b!3503019) (not b!3502627) (not b!3502659) (not b!3502940) (not d!1017679) (not b!3502937) (not b!3502957) (not d!1017707) (not b!3502287) (not b!3502950) (not b!3502629) (not b!3502670) (not b!3502948) (not d!1017843) (not b_next!91181) (not d!1017639) (not d!1017693) (not d!1017767) (not b!3502490) (not d!1017771) (not bm!252863) (not d!1017551) (not b!3502701) (not b!3502785) (not b!3502576) (not b!3502250) (not d!1017503) (not b!3502558) (not b!3502966) (not d!1017833) b_and!248537 (not d!1017763) (not bm!252894) b_and!248481 (not b!3502704) (not b_next!91169) (not b!3502807) (not b_lambda!101783) (not b!3502266) (not b_lambda!101791) (not b!3502977) (not d!1017577) (not b!3502971) b_and!248539 (not d!1017685) (not b!3502970) (not b!3503054) (not d!1017781) (not b!3502491) (not b!3503058) (not b!3502959) (not b!3502652) (not b!3502624) (not b!3502649) (not b!3502967) (not d!1017841) (not b_next!91163) (not b_lambda!101789) (not d!1017511) (not b!3502532) (not b!3502664) (not b!3502806) (not b!3502564) (not b!3502274) (not b_next!91161) (not b!3503018) (not b!3503045) (not tb!194207) (not d!1017681) (not d!1017835) (not b!3502563) (not tb!194201) (not b!3502534) b_and!248483 (not b_next!91187) (not b!3502788) (not b!3502648) (not b!3503046) (not b!3502767) (not b!3502533) (not b!3502567) (not b!3502291) b_and!248485 (not b!3503052) (not d!1017753) (not b!3502964) (not d!1017747) (not b!3502630) (not d!1017851) (not b!3502697) (not b!3502936) (not b!3502377) (not d!1017849) (not b!3502451) (not b!3502454) (not b!3502267) (not b!3502693) (not d!1017765) (not d!1017701) (not b!3502452) (not d!1017613) (not d!1017869) (not b!3503002) (not b!3502945) (not d!1017557) (not tb!194241) (not b!3502565) (not b!3502692) (not b!3502682) (not b!3502531) (not d!1017697) (not b!3502626) (not d!1017611) (not bm!252872) (not d!1017831) (not bm!252874) (not b!3502621) (not d!1017649) (not b!3503032) (not b!3502676) (not d!1017705) (not b!3502562) b_and!248541 (not b!3503011) (not b!3502254) (not b!3502450) b_and!248543 (not d!1017565) (not b!3502726) (not d!1017721) (not b!3503001) (not b!3503000) (not b!3502808) (not tb!194213) (not b!3503053) (not d!1017717) (not bm!252896) (not b!3502641) (not d!1017757) (not d!1017871) (not b!3502932) (not d!1017863) (not b_lambda!101801) (not bm!252893) (not b!3502979) b_and!248549 (not d!1017645) (not b!3502530) (not b!3502939) (not b_lambda!101799) b_and!248547 (not d!1017619) (not b!3502243) (not d!1017621) (not bm!252875) (not b_lambda!101785) (not d!1017711) (not b!3502575) (not b!3502947) (not b!3502699) (not b!3502644) (not b!3502247) (not d!1017637) (not b_next!91171) (not b!3502559) (not b!3502645) (not bm!252906) (not b!3503012))
(check-sat (not b_next!91167) (not b_next!91185) (not b_next!91183) b_and!248545 (not b_next!91165) (not b_next!91181) b_and!248537 (not b_next!91163) (not b_next!91161) b_and!248485 b_and!248541 b_and!248543 b_and!248549 b_and!248547 (not b_next!91171) b_and!248481 (not b_next!91169) b_and!248539 b_and!248483 (not b_next!91187))
