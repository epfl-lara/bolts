; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!339114 () Bool)

(assert start!339114)

(declare-fun b!3635007 () Bool)

(declare-fun b_free!95169 () Bool)

(declare-fun b_next!95873 () Bool)

(assert (=> b!3635007 (= b_free!95169 (not b_next!95873))))

(declare-fun tp!1109512 () Bool)

(declare-fun b_and!267275 () Bool)

(assert (=> b!3635007 (= tp!1109512 b_and!267275)))

(declare-fun b_free!95171 () Bool)

(declare-fun b_next!95875 () Bool)

(assert (=> b!3635007 (= b_free!95171 (not b_next!95875))))

(declare-fun tp!1109511 () Bool)

(declare-fun b_and!267277 () Bool)

(assert (=> b!3635007 (= tp!1109511 b_and!267277)))

(declare-fun b!3635018 () Bool)

(declare-fun b_free!95173 () Bool)

(declare-fun b_next!95877 () Bool)

(assert (=> b!3635018 (= b_free!95173 (not b_next!95877))))

(declare-fun tp!1109513 () Bool)

(declare-fun b_and!267279 () Bool)

(assert (=> b!3635018 (= tp!1109513 b_and!267279)))

(declare-fun b_free!95175 () Bool)

(declare-fun b_next!95879 () Bool)

(assert (=> b!3635018 (= b_free!95175 (not b_next!95879))))

(declare-fun tp!1109501 () Bool)

(declare-fun b_and!267281 () Bool)

(assert (=> b!3635018 (= tp!1109501 b_and!267281)))

(declare-fun b!3635010 () Bool)

(declare-fun b_free!95177 () Bool)

(declare-fun b_next!95881 () Bool)

(assert (=> b!3635010 (= b_free!95177 (not b_next!95881))))

(declare-fun tp!1109514 () Bool)

(declare-fun b_and!267283 () Bool)

(assert (=> b!3635010 (= tp!1109514 b_and!267283)))

(declare-fun b_free!95179 () Bool)

(declare-fun b_next!95883 () Bool)

(assert (=> b!3635010 (= b_free!95179 (not b_next!95883))))

(declare-fun tp!1109507 () Bool)

(declare-fun b_and!267285 () Bool)

(assert (=> b!3635010 (= tp!1109507 b_and!267285)))

(declare-fun b!3635008 () Bool)

(declare-fun b_free!95181 () Bool)

(declare-fun b_next!95885 () Bool)

(assert (=> b!3635008 (= b_free!95181 (not b_next!95885))))

(declare-fun tp!1109506 () Bool)

(declare-fun b_and!267287 () Bool)

(assert (=> b!3635008 (= tp!1109506 b_and!267287)))

(declare-fun b_free!95183 () Bool)

(declare-fun b_next!95887 () Bool)

(assert (=> b!3635008 (= b_free!95183 (not b_next!95887))))

(declare-fun tp!1109504 () Bool)

(declare-fun b_and!267289 () Bool)

(assert (=> b!3635008 (= tp!1109504 b_and!267289)))

(declare-fun b!3635002 () Bool)

(declare-fun res!1472520 () Bool)

(declare-fun e!2250125 () Bool)

(assert (=> b!3635002 (=> (not res!1472520) (not e!2250125))))

(declare-datatypes ((List!38429 0))(
  ( (Nil!38305) (Cons!38305 (h!43725 (_ BitVec 16)) (t!295732 List!38429)) )
))
(declare-datatypes ((TokenValue!5948 0))(
  ( (FloatLiteralValue!11896 (text!42081 List!38429)) (TokenValueExt!5947 (__x!24113 Int)) (Broken!29740 (value!183397 List!38429)) (Object!6071) (End!5948) (Def!5948) (Underscore!5948) (Match!5948) (Else!5948) (Error!5948) (Case!5948) (If!5948) (Extends!5948) (Abstract!5948) (Class!5948) (Val!5948) (DelimiterValue!11896 (del!6008 List!38429)) (KeywordValue!5954 (value!183398 List!38429)) (CommentValue!11896 (value!183399 List!38429)) (WhitespaceValue!11896 (value!183400 List!38429)) (IndentationValue!5948 (value!183401 List!38429)) (String!43073) (Int32!5948) (Broken!29741 (value!183402 List!38429)) (Boolean!5949) (Unit!55129) (OperatorValue!5951 (op!6008 List!38429)) (IdentifierValue!11896 (value!183403 List!38429)) (IdentifierValue!11897 (value!183404 List!38429)) (WhitespaceValue!11897 (value!183405 List!38429)) (True!11896) (False!11896) (Broken!29742 (value!183406 List!38429)) (Broken!29743 (value!183407 List!38429)) (True!11897) (RightBrace!5948) (RightBracket!5948) (Colon!5948) (Null!5948) (Comma!5948) (LeftBracket!5948) (False!11897) (LeftBrace!5948) (ImaginaryLiteralValue!5948 (text!42082 List!38429)) (StringLiteralValue!17844 (value!183408 List!38429)) (EOFValue!5948 (value!183409 List!38429)) (IdentValue!5948 (value!183410 List!38429)) (DelimiterValue!11897 (value!183411 List!38429)) (DedentValue!5948 (value!183412 List!38429)) (NewLineValue!5948 (value!183413 List!38429)) (IntegerValue!17844 (value!183414 (_ BitVec 32)) (text!42083 List!38429)) (IntegerValue!17845 (value!183415 Int) (text!42084 List!38429)) (Times!5948) (Or!5948) (Equal!5948) (Minus!5948) (Broken!29744 (value!183416 List!38429)) (And!5948) (Div!5948) (LessEqual!5948) (Mod!5948) (Concat!16425) (Not!5948) (Plus!5948) (SpaceValue!5948 (value!183417 List!38429)) (IntegerValue!17846 (value!183418 Int) (text!42085 List!38429)) (StringLiteralValue!17845 (text!42086 List!38429)) (FloatLiteralValue!11897 (text!42087 List!38429)) (BytesLiteralValue!5948 (value!183419 List!38429)) (CommentValue!11897 (value!183420 List!38429)) (StringLiteralValue!17846 (value!183421 List!38429)) (ErrorTokenValue!5948 (msg!6009 List!38429)) )
))
(declare-datatypes ((C!21140 0))(
  ( (C!21141 (val!12618 Int)) )
))
(declare-datatypes ((Regex!10477 0))(
  ( (ElementMatch!10477 (c!628688 C!21140)) (Concat!16426 (regOne!21466 Regex!10477) (regTwo!21466 Regex!10477)) (EmptyExpr!10477) (Star!10477 (reg!10806 Regex!10477)) (EmptyLang!10477) (Union!10477 (regOne!21467 Regex!10477) (regTwo!21467 Regex!10477)) )
))
(declare-datatypes ((String!43074 0))(
  ( (String!43075 (value!183422 String)) )
))
(declare-datatypes ((List!38430 0))(
  ( (Nil!38306) (Cons!38306 (h!43726 C!21140) (t!295733 List!38430)) )
))
(declare-datatypes ((IArray!23387 0))(
  ( (IArray!23388 (innerList!11751 List!38430)) )
))
(declare-datatypes ((Conc!11691 0))(
  ( (Node!11691 (left!29904 Conc!11691) (right!30234 Conc!11691) (csize!23612 Int) (cheight!11902 Int)) (Leaf!18161 (xs!14893 IArray!23387) (csize!23613 Int)) (Empty!11691) )
))
(declare-datatypes ((BalanceConc!22996 0))(
  ( (BalanceConc!22997 (c!628689 Conc!11691)) )
))
(declare-datatypes ((TokenValueInjection!11324 0))(
  ( (TokenValueInjection!11325 (toValue!8010 Int) (toChars!7869 Int)) )
))
(declare-datatypes ((Rule!11236 0))(
  ( (Rule!11237 (regex!5718 Regex!10477) (tag!6456 String!43074) (isSeparator!5718 Bool) (transformation!5718 TokenValueInjection!11324)) )
))
(declare-datatypes ((Token!10802 0))(
  ( (Token!10803 (value!183423 TokenValue!5948) (rule!8490 Rule!11236) (size!29231 Int) (originalCharacters!6432 List!38430)) )
))
(declare-fun token!511 () Token!10802)

(declare-fun rule!403 () Rule!11236)

(assert (=> b!3635002 (= res!1472520 (= (rule!8490 token!511) rule!403))))

(declare-fun b!3635003 () Bool)

(declare-fun res!1472515 () Bool)

(declare-fun e!2250113 () Bool)

(assert (=> b!3635003 (=> res!1472515 e!2250113)))

(declare-datatypes ((tuple2!38168 0))(
  ( (tuple2!38169 (_1!22218 Token!10802) (_2!22218 List!38430)) )
))
(declare-fun lt!1257690 () tuple2!38168)

(declare-fun lt!1257688 () List!38430)

(declare-fun matchR!5046 (Regex!10477 List!38430) Bool)

(assert (=> b!3635003 (= res!1472515 (not (matchR!5046 (regex!5718 (rule!8490 (_1!22218 lt!1257690))) lt!1257688)))))

(declare-fun b!3635004 () Bool)

(declare-fun res!1472513 () Bool)

(declare-fun e!2250134 () Bool)

(assert (=> b!3635004 (=> (not res!1472513) (not e!2250134))))

(declare-datatypes ((LexerInterface!5307 0))(
  ( (LexerInterfaceExt!5304 (__x!24114 Int)) (Lexer!5305) )
))
(declare-fun thiss!23823 () LexerInterface!5307)

(declare-datatypes ((List!38431 0))(
  ( (Nil!38307) (Cons!38307 (h!43727 Rule!11236) (t!295734 List!38431)) )
))
(declare-fun rules!3307 () List!38431)

(declare-fun rulesInvariant!4704 (LexerInterface!5307 List!38431) Bool)

(assert (=> b!3635004 (= res!1472513 (rulesInvariant!4704 thiss!23823 rules!3307))))

(declare-fun e!2250129 () Bool)

(declare-fun e!2250112 () Bool)

(declare-fun b!3635005 () Bool)

(declare-fun anOtherTypeRule!33 () Rule!11236)

(declare-fun tp!1109503 () Bool)

(declare-fun inv!51730 (String!43074) Bool)

(declare-fun inv!51733 (TokenValueInjection!11324) Bool)

(assert (=> b!3635005 (= e!2250112 (and tp!1109503 (inv!51730 (tag!6456 anOtherTypeRule!33)) (inv!51733 (transformation!5718 anOtherTypeRule!33)) e!2250129))))

(declare-fun b!3635006 () Bool)

(declare-fun res!1472514 () Bool)

(assert (=> b!3635006 (=> (not res!1472514) (not e!2250134))))

(assert (=> b!3635006 (= res!1472514 (not (= (isSeparator!5718 anOtherTypeRule!33) (isSeparator!5718 rule!403))))))

(declare-fun e!2250132 () Bool)

(assert (=> b!3635008 (= e!2250132 (and tp!1109506 tp!1109504))))

(declare-fun b!3635009 () Bool)

(declare-fun res!1472526 () Bool)

(assert (=> b!3635009 (=> (not res!1472526) (not e!2250134))))

(declare-fun contains!7501 (List!38431 Rule!11236) Bool)

(assert (=> b!3635009 (= res!1472526 (contains!7501 rules!3307 anOtherTypeRule!33))))

(declare-fun e!2250122 () Bool)

(assert (=> b!3635010 (= e!2250122 (and tp!1109514 tp!1109507))))

(declare-fun b!3635011 () Bool)

(declare-fun res!1472516 () Bool)

(assert (=> b!3635011 (=> (not res!1472516) (not e!2250125))))

(declare-fun lt!1257678 () tuple2!38168)

(declare-fun isEmpty!22668 (List!38430) Bool)

(assert (=> b!3635011 (= res!1472516 (isEmpty!22668 (_2!22218 lt!1257678)))))

(declare-fun b!3635012 () Bool)

(declare-fun e!2250126 () Bool)

(assert (=> b!3635012 (= e!2250126 e!2250113)))

(declare-fun res!1472525 () Bool)

(assert (=> b!3635012 (=> res!1472525 e!2250113)))

(declare-fun lt!1257694 () List!38430)

(declare-fun isPrefix!3081 (List!38430 List!38430) Bool)

(assert (=> b!3635012 (= res!1472525 (not (isPrefix!3081 lt!1257688 lt!1257694)))))

(declare-fun lt!1257683 () List!38430)

(assert (=> b!3635012 (isPrefix!3081 lt!1257688 lt!1257683)))

(declare-fun ++!9534 (List!38430 List!38430) List!38430)

(assert (=> b!3635012 (= lt!1257683 (++!9534 lt!1257688 (_2!22218 lt!1257690)))))

(declare-datatypes ((Unit!55130 0))(
  ( (Unit!55131) )
))
(declare-fun lt!1257696 () Unit!55130)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2000 (List!38430 List!38430) Unit!55130)

(assert (=> b!3635012 (= lt!1257696 (lemmaConcatTwoListThenFirstIsPrefix!2000 lt!1257688 (_2!22218 lt!1257690)))))

(declare-fun lt!1257691 () BalanceConc!22996)

(declare-fun list!14168 (BalanceConc!22996) List!38430)

(assert (=> b!3635012 (= lt!1257688 (list!14168 lt!1257691))))

(declare-fun charsOf!3732 (Token!10802) BalanceConc!22996)

(assert (=> b!3635012 (= lt!1257691 (charsOf!3732 (_1!22218 lt!1257690)))))

(declare-fun e!2250116 () Bool)

(assert (=> b!3635012 e!2250116))

(declare-fun res!1472522 () Bool)

(assert (=> b!3635012 (=> (not res!1472522) (not e!2250116))))

(declare-datatypes ((Option!8064 0))(
  ( (None!8063) (Some!8063 (v!37871 Rule!11236)) )
))
(declare-fun lt!1257677 () Option!8064)

(declare-fun isDefined!6296 (Option!8064) Bool)

(assert (=> b!3635012 (= res!1472522 (isDefined!6296 lt!1257677))))

(declare-fun getRuleFromTag!1322 (LexerInterface!5307 List!38431 String!43074) Option!8064)

(assert (=> b!3635012 (= lt!1257677 (getRuleFromTag!1322 thiss!23823 rules!3307 (tag!6456 (rule!8490 (_1!22218 lt!1257690)))))))

(declare-fun lt!1257680 () Unit!55130)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1322 (LexerInterface!5307 List!38431 List!38430 Token!10802) Unit!55130)

(assert (=> b!3635012 (= lt!1257680 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1322 thiss!23823 rules!3307 lt!1257694 (_1!22218 lt!1257690)))))

(declare-datatypes ((Option!8065 0))(
  ( (None!8064) (Some!8064 (v!37872 tuple2!38168)) )
))
(declare-fun lt!1257687 () Option!8065)

(declare-fun get!12533 (Option!8065) tuple2!38168)

(assert (=> b!3635012 (= lt!1257690 (get!12533 lt!1257687))))

(declare-fun lt!1257679 () List!38430)

(declare-fun suffix!1395 () List!38430)

(declare-fun lt!1257682 () Unit!55130)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!985 (LexerInterface!5307 List!38431 List!38430 List!38430) Unit!55130)

(assert (=> b!3635012 (= lt!1257682 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!985 thiss!23823 rules!3307 lt!1257679 suffix!1395))))

(declare-fun maxPrefix!2841 (LexerInterface!5307 List!38431 List!38430) Option!8065)

(assert (=> b!3635012 (= lt!1257687 (maxPrefix!2841 thiss!23823 rules!3307 lt!1257694))))

(assert (=> b!3635012 (isPrefix!3081 lt!1257679 lt!1257694)))

(declare-fun lt!1257681 () Unit!55130)

(assert (=> b!3635012 (= lt!1257681 (lemmaConcatTwoListThenFirstIsPrefix!2000 lt!1257679 suffix!1395))))

(assert (=> b!3635012 (= lt!1257694 (++!9534 lt!1257679 suffix!1395))))

(declare-fun b!3635013 () Bool)

(declare-fun res!1472511 () Bool)

(assert (=> b!3635013 (=> res!1472511 e!2250126)))

(declare-fun sepAndNonSepRulesDisjointChars!1886 (List!38431 List!38431) Bool)

(assert (=> b!3635013 (= res!1472511 (not (sepAndNonSepRulesDisjointChars!1886 rules!3307 rules!3307)))))

(declare-fun b!3635014 () Bool)

(declare-fun e!2250117 () Bool)

(assert (=> b!3635014 (= e!2250125 (not e!2250117))))

(declare-fun res!1472512 () Bool)

(assert (=> b!3635014 (=> res!1472512 e!2250117)))

(assert (=> b!3635014 (= res!1472512 (not (matchR!5046 (regex!5718 rule!403) lt!1257679)))))

(declare-fun ruleValid!1982 (LexerInterface!5307 Rule!11236) Bool)

(assert (=> b!3635014 (ruleValid!1982 thiss!23823 rule!403)))

(declare-fun lt!1257693 () Unit!55130)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1136 (LexerInterface!5307 Rule!11236 List!38431) Unit!55130)

(assert (=> b!3635014 (= lt!1257693 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1136 thiss!23823 rule!403 rules!3307))))

(declare-fun b!3635015 () Bool)

(declare-fun e!2250123 () Bool)

(assert (=> b!3635015 (= e!2250134 e!2250123)))

(declare-fun res!1472524 () Bool)

(assert (=> b!3635015 (=> (not res!1472524) (not e!2250123))))

(declare-fun lt!1257689 () Option!8065)

(declare-fun isDefined!6297 (Option!8065) Bool)

(assert (=> b!3635015 (= res!1472524 (isDefined!6297 lt!1257689))))

(assert (=> b!3635015 (= lt!1257689 (maxPrefix!2841 thiss!23823 rules!3307 lt!1257679))))

(assert (=> b!3635015 (= lt!1257679 (list!14168 (charsOf!3732 token!511)))))

(declare-fun b!3635016 () Bool)

(declare-fun e!2250135 () Bool)

(assert (=> b!3635016 (= e!2250113 e!2250135)))

(declare-fun res!1472529 () Bool)

(assert (=> b!3635016 (=> res!1472529 e!2250135)))

(declare-fun apply!9220 (TokenValueInjection!11324 BalanceConc!22996) TokenValue!5948)

(declare-fun size!29232 (BalanceConc!22996) Int)

(assert (=> b!3635016 (= res!1472529 (not (= lt!1257687 (Some!8064 (tuple2!38169 (Token!10803 (apply!9220 (transformation!5718 (rule!8490 (_1!22218 lt!1257690))) lt!1257691) (rule!8490 (_1!22218 lt!1257690)) (size!29232 lt!1257691) lt!1257688) (_2!22218 lt!1257690))))))))

(declare-fun lt!1257685 () Unit!55130)

(declare-fun lemmaCharactersSize!763 (Token!10802) Unit!55130)

(assert (=> b!3635016 (= lt!1257685 (lemmaCharactersSize!763 (_1!22218 lt!1257690)))))

(declare-fun lt!1257676 () Unit!55130)

(declare-fun lemmaEqSameImage!901 (TokenValueInjection!11324 BalanceConc!22996 BalanceConc!22996) Unit!55130)

(declare-fun seqFromList!4267 (List!38430) BalanceConc!22996)

(assert (=> b!3635016 (= lt!1257676 (lemmaEqSameImage!901 (transformation!5718 (rule!8490 (_1!22218 lt!1257690))) lt!1257691 (seqFromList!4267 (originalCharacters!6432 (_1!22218 lt!1257690)))))))

(declare-fun lt!1257695 () Unit!55130)

(declare-fun lemmaSemiInverse!1467 (TokenValueInjection!11324 BalanceConc!22996) Unit!55130)

(assert (=> b!3635016 (= lt!1257695 (lemmaSemiInverse!1467 (transformation!5718 (rule!8490 (_1!22218 lt!1257690))) lt!1257691))))

(declare-fun tp!1109500 () Bool)

(declare-fun b!3635017 () Bool)

(declare-fun e!2250118 () Bool)

(assert (=> b!3635017 (= e!2250118 (and tp!1109500 (inv!51730 (tag!6456 (rule!8490 token!511))) (inv!51733 (transformation!5718 (rule!8490 token!511))) e!2250122))))

(assert (=> b!3635018 (= e!2250129 (and tp!1109513 tp!1109501))))

(declare-fun b!3635019 () Bool)

(assert (=> b!3635019 (= e!2250135 (= lt!1257683 lt!1257694))))

(declare-fun lt!1257692 () List!38430)

(declare-fun getSuffix!1634 (List!38430 List!38430) List!38430)

(assert (=> b!3635019 (= lt!1257692 (getSuffix!1634 lt!1257694 lt!1257688))))

(declare-fun maxPrefixOneRule!1979 (LexerInterface!5307 Rule!11236 List!38430) Option!8065)

(declare-fun size!29233 (List!38430) Int)

(assert (=> b!3635019 (= (maxPrefixOneRule!1979 thiss!23823 (rule!8490 (_1!22218 lt!1257690)) lt!1257694) (Some!8064 (tuple2!38169 (Token!10803 (apply!9220 (transformation!5718 (rule!8490 (_1!22218 lt!1257690))) (seqFromList!4267 lt!1257688)) (rule!8490 (_1!22218 lt!1257690)) (size!29233 lt!1257688) lt!1257688) (_2!22218 lt!1257690))))))

(declare-fun lt!1257686 () Unit!55130)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1035 (LexerInterface!5307 List!38431 List!38430 List!38430 List!38430 Rule!11236) Unit!55130)

(assert (=> b!3635019 (= lt!1257686 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1035 thiss!23823 rules!3307 lt!1257688 lt!1257694 (_2!22218 lt!1257690) (rule!8490 (_1!22218 lt!1257690))))))

(declare-fun e!2250128 () Bool)

(declare-fun b!3635020 () Bool)

(declare-fun tp!1109508 () Bool)

(declare-fun inv!21 (TokenValue!5948) Bool)

(assert (=> b!3635020 (= e!2250128 (and (inv!21 (value!183423 token!511)) e!2250118 tp!1109508))))

(declare-fun b!3635021 () Bool)

(declare-fun res!1472528 () Bool)

(assert (=> b!3635021 (=> res!1472528 e!2250126)))

(declare-fun lt!1257675 () C!21140)

(declare-fun contains!7502 (List!38430 C!21140) Bool)

(declare-fun usedCharacters!930 (Regex!10477) List!38430)

(assert (=> b!3635021 (= res!1472528 (not (contains!7502 (usedCharacters!930 (regex!5718 anOtherTypeRule!33)) lt!1257675)))))

(declare-fun b!3635022 () Bool)

(declare-fun e!2250115 () Bool)

(declare-fun e!2250119 () Bool)

(declare-fun tp!1109509 () Bool)

(assert (=> b!3635022 (= e!2250115 (and e!2250119 tp!1109509))))

(declare-fun b!3635023 () Bool)

(declare-fun e!2250136 () Bool)

(declare-fun lt!1257684 () Rule!11236)

(assert (=> b!3635023 (= e!2250136 (= (rule!8490 (_1!22218 lt!1257690)) lt!1257684))))

(declare-fun b!3635024 () Bool)

(declare-fun e!2250114 () Bool)

(declare-fun tp_is_empty!18037 () Bool)

(declare-fun tp!1109505 () Bool)

(assert (=> b!3635024 (= e!2250114 (and tp_is_empty!18037 tp!1109505))))

(declare-fun b!3635025 () Bool)

(declare-fun res!1472527 () Bool)

(assert (=> b!3635025 (=> (not res!1472527) (not e!2250134))))

(assert (=> b!3635025 (= res!1472527 (contains!7501 rules!3307 rule!403))))

(declare-fun b!3635026 () Bool)

(declare-fun res!1472518 () Bool)

(assert (=> b!3635026 (=> res!1472518 e!2250117)))

(assert (=> b!3635026 (= res!1472518 (isEmpty!22668 suffix!1395))))

(declare-fun res!1472519 () Bool)

(assert (=> start!339114 (=> (not res!1472519) (not e!2250134))))

(get-info :version)

(assert (=> start!339114 (= res!1472519 ((_ is Lexer!5305) thiss!23823))))

(assert (=> start!339114 e!2250134))

(assert (=> start!339114 e!2250115))

(assert (=> start!339114 e!2250114))

(assert (=> start!339114 true))

(declare-fun inv!51734 (Token!10802) Bool)

(assert (=> start!339114 (and (inv!51734 token!511) e!2250128)))

(declare-fun e!2250133 () Bool)

(assert (=> start!339114 e!2250133))

(assert (=> start!339114 e!2250112))

(declare-fun e!2250121 () Bool)

(assert (=> b!3635007 (= e!2250121 (and tp!1109512 tp!1109511))))

(declare-fun b!3635027 () Bool)

(declare-fun tp!1109502 () Bool)

(assert (=> b!3635027 (= e!2250119 (and tp!1109502 (inv!51730 (tag!6456 (h!43727 rules!3307))) (inv!51733 (transformation!5718 (h!43727 rules!3307))) e!2250121))))

(declare-fun b!3635028 () Bool)

(assert (=> b!3635028 (= e!2250117 e!2250126)))

(declare-fun res!1472523 () Bool)

(assert (=> b!3635028 (=> res!1472523 e!2250126)))

(assert (=> b!3635028 (= res!1472523 (contains!7502 (usedCharacters!930 (regex!5718 rule!403)) lt!1257675))))

(declare-fun head!7706 (List!38430) C!21140)

(assert (=> b!3635028 (= lt!1257675 (head!7706 suffix!1395))))

(declare-fun b!3635029 () Bool)

(assert (=> b!3635029 (= e!2250116 e!2250136)))

(declare-fun res!1472517 () Bool)

(assert (=> b!3635029 (=> (not res!1472517) (not e!2250136))))

(assert (=> b!3635029 (= res!1472517 (matchR!5046 (regex!5718 lt!1257684) (list!14168 (charsOf!3732 (_1!22218 lt!1257690)))))))

(declare-fun get!12534 (Option!8064) Rule!11236)

(assert (=> b!3635029 (= lt!1257684 (get!12534 lt!1257677))))

(declare-fun tp!1109510 () Bool)

(declare-fun b!3635030 () Bool)

(assert (=> b!3635030 (= e!2250133 (and tp!1109510 (inv!51730 (tag!6456 rule!403)) (inv!51733 (transformation!5718 rule!403)) e!2250132))))

(declare-fun b!3635031 () Bool)

(declare-fun res!1472521 () Bool)

(assert (=> b!3635031 (=> (not res!1472521) (not e!2250134))))

(declare-fun isEmpty!22669 (List!38431) Bool)

(assert (=> b!3635031 (= res!1472521 (not (isEmpty!22669 rules!3307)))))

(declare-fun b!3635032 () Bool)

(assert (=> b!3635032 (= e!2250123 e!2250125)))

(declare-fun res!1472510 () Bool)

(assert (=> b!3635032 (=> (not res!1472510) (not e!2250125))))

(assert (=> b!3635032 (= res!1472510 (= (_1!22218 lt!1257678) token!511))))

(assert (=> b!3635032 (= lt!1257678 (get!12533 lt!1257689))))

(assert (= (and start!339114 res!1472519) b!3635031))

(assert (= (and b!3635031 res!1472521) b!3635004))

(assert (= (and b!3635004 res!1472513) b!3635025))

(assert (= (and b!3635025 res!1472527) b!3635009))

(assert (= (and b!3635009 res!1472526) b!3635006))

(assert (= (and b!3635006 res!1472514) b!3635015))

(assert (= (and b!3635015 res!1472524) b!3635032))

(assert (= (and b!3635032 res!1472510) b!3635011))

(assert (= (and b!3635011 res!1472516) b!3635002))

(assert (= (and b!3635002 res!1472520) b!3635014))

(assert (= (and b!3635014 (not res!1472512)) b!3635026))

(assert (= (and b!3635026 (not res!1472518)) b!3635028))

(assert (= (and b!3635028 (not res!1472523)) b!3635021))

(assert (= (and b!3635021 (not res!1472528)) b!3635013))

(assert (= (and b!3635013 (not res!1472511)) b!3635012))

(assert (= (and b!3635012 res!1472522) b!3635029))

(assert (= (and b!3635029 res!1472517) b!3635023))

(assert (= (and b!3635012 (not res!1472525)) b!3635003))

(assert (= (and b!3635003 (not res!1472515)) b!3635016))

(assert (= (and b!3635016 (not res!1472529)) b!3635019))

(assert (= b!3635027 b!3635007))

(assert (= b!3635022 b!3635027))

(assert (= (and start!339114 ((_ is Cons!38307) rules!3307)) b!3635022))

(assert (= (and start!339114 ((_ is Cons!38306) suffix!1395)) b!3635024))

(assert (= b!3635017 b!3635010))

(assert (= b!3635020 b!3635017))

(assert (= start!339114 b!3635020))

(assert (= b!3635030 b!3635008))

(assert (= start!339114 b!3635030))

(assert (= b!3635005 b!3635018))

(assert (= start!339114 b!3635005))

(declare-fun m!4137103 () Bool)

(assert (=> b!3635028 m!4137103))

(assert (=> b!3635028 m!4137103))

(declare-fun m!4137105 () Bool)

(assert (=> b!3635028 m!4137105))

(declare-fun m!4137107 () Bool)

(assert (=> b!3635028 m!4137107))

(declare-fun m!4137109 () Bool)

(assert (=> b!3635005 m!4137109))

(declare-fun m!4137111 () Bool)

(assert (=> b!3635005 m!4137111))

(declare-fun m!4137113 () Bool)

(assert (=> b!3635011 m!4137113))

(declare-fun m!4137115 () Bool)

(assert (=> b!3635016 m!4137115))

(declare-fun m!4137117 () Bool)

(assert (=> b!3635016 m!4137117))

(declare-fun m!4137119 () Bool)

(assert (=> b!3635016 m!4137119))

(declare-fun m!4137121 () Bool)

(assert (=> b!3635016 m!4137121))

(declare-fun m!4137123 () Bool)

(assert (=> b!3635016 m!4137123))

(declare-fun m!4137125 () Bool)

(assert (=> b!3635016 m!4137125))

(assert (=> b!3635016 m!4137117))

(declare-fun m!4137127 () Bool)

(assert (=> b!3635017 m!4137127))

(declare-fun m!4137129 () Bool)

(assert (=> b!3635017 m!4137129))

(declare-fun m!4137131 () Bool)

(assert (=> b!3635004 m!4137131))

(declare-fun m!4137133 () Bool)

(assert (=> b!3635027 m!4137133))

(declare-fun m!4137135 () Bool)

(assert (=> b!3635027 m!4137135))

(declare-fun m!4137137 () Bool)

(assert (=> b!3635020 m!4137137))

(declare-fun m!4137139 () Bool)

(assert (=> b!3635014 m!4137139))

(declare-fun m!4137141 () Bool)

(assert (=> b!3635014 m!4137141))

(declare-fun m!4137143 () Bool)

(assert (=> b!3635014 m!4137143))

(declare-fun m!4137145 () Bool)

(assert (=> b!3635029 m!4137145))

(assert (=> b!3635029 m!4137145))

(declare-fun m!4137147 () Bool)

(assert (=> b!3635029 m!4137147))

(assert (=> b!3635029 m!4137147))

(declare-fun m!4137149 () Bool)

(assert (=> b!3635029 m!4137149))

(declare-fun m!4137151 () Bool)

(assert (=> b!3635029 m!4137151))

(declare-fun m!4137153 () Bool)

(assert (=> b!3635025 m!4137153))

(declare-fun m!4137155 () Bool)

(assert (=> b!3635015 m!4137155))

(declare-fun m!4137157 () Bool)

(assert (=> b!3635015 m!4137157))

(declare-fun m!4137159 () Bool)

(assert (=> b!3635015 m!4137159))

(assert (=> b!3635015 m!4137159))

(declare-fun m!4137161 () Bool)

(assert (=> b!3635015 m!4137161))

(declare-fun m!4137163 () Bool)

(assert (=> start!339114 m!4137163))

(declare-fun m!4137165 () Bool)

(assert (=> b!3635012 m!4137165))

(declare-fun m!4137167 () Bool)

(assert (=> b!3635012 m!4137167))

(declare-fun m!4137169 () Bool)

(assert (=> b!3635012 m!4137169))

(declare-fun m!4137171 () Bool)

(assert (=> b!3635012 m!4137171))

(declare-fun m!4137173 () Bool)

(assert (=> b!3635012 m!4137173))

(declare-fun m!4137175 () Bool)

(assert (=> b!3635012 m!4137175))

(declare-fun m!4137177 () Bool)

(assert (=> b!3635012 m!4137177))

(assert (=> b!3635012 m!4137145))

(declare-fun m!4137179 () Bool)

(assert (=> b!3635012 m!4137179))

(declare-fun m!4137181 () Bool)

(assert (=> b!3635012 m!4137181))

(declare-fun m!4137183 () Bool)

(assert (=> b!3635012 m!4137183))

(declare-fun m!4137185 () Bool)

(assert (=> b!3635012 m!4137185))

(declare-fun m!4137187 () Bool)

(assert (=> b!3635012 m!4137187))

(declare-fun m!4137189 () Bool)

(assert (=> b!3635012 m!4137189))

(declare-fun m!4137191 () Bool)

(assert (=> b!3635012 m!4137191))

(declare-fun m!4137193 () Bool)

(assert (=> b!3635013 m!4137193))

(declare-fun m!4137195 () Bool)

(assert (=> b!3635021 m!4137195))

(assert (=> b!3635021 m!4137195))

(declare-fun m!4137197 () Bool)

(assert (=> b!3635021 m!4137197))

(declare-fun m!4137199 () Bool)

(assert (=> b!3635030 m!4137199))

(declare-fun m!4137201 () Bool)

(assert (=> b!3635030 m!4137201))

(declare-fun m!4137203 () Bool)

(assert (=> b!3635031 m!4137203))

(declare-fun m!4137205 () Bool)

(assert (=> b!3635003 m!4137205))

(declare-fun m!4137207 () Bool)

(assert (=> b!3635009 m!4137207))

(declare-fun m!4137209 () Bool)

(assert (=> b!3635026 m!4137209))

(declare-fun m!4137211 () Bool)

(assert (=> b!3635032 m!4137211))

(declare-fun m!4137213 () Bool)

(assert (=> b!3635019 m!4137213))

(declare-fun m!4137215 () Bool)

(assert (=> b!3635019 m!4137215))

(declare-fun m!4137217 () Bool)

(assert (=> b!3635019 m!4137217))

(declare-fun m!4137219 () Bool)

(assert (=> b!3635019 m!4137219))

(assert (=> b!3635019 m!4137213))

(declare-fun m!4137221 () Bool)

(assert (=> b!3635019 m!4137221))

(declare-fun m!4137223 () Bool)

(assert (=> b!3635019 m!4137223))

(check-sat (not b!3635021) (not b!3635003) (not b!3635011) (not b_next!95885) (not b!3635015) (not b!3635028) tp_is_empty!18037 b_and!267281 (not b!3635032) (not start!339114) (not b!3635019) (not b!3635009) (not b!3635004) (not b!3635025) b_and!267287 (not b!3635022) b_and!267285 b_and!267275 (not b!3635024) (not b_next!95875) (not b!3635027) (not b!3635026) (not b!3635013) b_and!267277 (not b!3635017) b_and!267289 (not b!3635016) (not b!3635005) (not b!3635029) (not b!3635012) (not b_next!95879) (not b!3635020) b_and!267283 (not b_next!95873) (not b_next!95887) (not b_next!95881) (not b_next!95877) (not b!3635031) (not b!3635030) (not b!3635014) b_and!267279 (not b_next!95883))
(check-sat b_and!267287 (not b_next!95875) (not b_next!95885) (not b_next!95879) b_and!267281 (not b_next!95877) b_and!267285 b_and!267275 b_and!267277 b_and!267289 b_and!267283 (not b_next!95873) (not b_next!95887) (not b_next!95881) b_and!267279 (not b_next!95883))
(get-model)

(declare-fun b!3635108 () Bool)

(declare-fun e!2250177 () Bool)

(assert (=> b!3635108 (= e!2250177 (= (head!7706 (list!14168 (charsOf!3732 (_1!22218 lt!1257690)))) (c!628688 (regex!5718 lt!1257684))))))

(declare-fun b!3635110 () Bool)

(declare-fun e!2250175 () Bool)

(declare-fun e!2250178 () Bool)

(assert (=> b!3635110 (= e!2250175 e!2250178)))

(declare-fun c!628706 () Bool)

(assert (=> b!3635110 (= c!628706 ((_ is EmptyLang!10477) (regex!5718 lt!1257684)))))

(declare-fun b!3635111 () Bool)

(declare-fun res!1472588 () Bool)

(declare-fun e!2250180 () Bool)

(assert (=> b!3635111 (=> res!1472588 e!2250180)))

(declare-fun tail!5629 (List!38430) List!38430)

(assert (=> b!3635111 (= res!1472588 (not (isEmpty!22668 (tail!5629 (list!14168 (charsOf!3732 (_1!22218 lt!1257690)))))))))

(declare-fun b!3635112 () Bool)

(declare-fun e!2250176 () Bool)

(declare-fun nullable!3631 (Regex!10477) Bool)

(assert (=> b!3635112 (= e!2250176 (nullable!3631 (regex!5718 lt!1257684)))))

(declare-fun b!3635113 () Bool)

(declare-fun e!2250179 () Bool)

(declare-fun e!2250181 () Bool)

(assert (=> b!3635113 (= e!2250179 e!2250181)))

(declare-fun res!1472585 () Bool)

(assert (=> b!3635113 (=> (not res!1472585) (not e!2250181))))

(declare-fun lt!1257705 () Bool)

(assert (=> b!3635113 (= res!1472585 (not lt!1257705))))

(declare-fun b!3635114 () Bool)

(declare-fun res!1472582 () Bool)

(assert (=> b!3635114 (=> res!1472582 e!2250179)))

(assert (=> b!3635114 (= res!1472582 (not ((_ is ElementMatch!10477) (regex!5718 lt!1257684))))))

(assert (=> b!3635114 (= e!2250178 e!2250179)))

(declare-fun b!3635115 () Bool)

(declare-fun res!1472581 () Bool)

(assert (=> b!3635115 (=> (not res!1472581) (not e!2250177))))

(declare-fun call!262848 () Bool)

(assert (=> b!3635115 (= res!1472581 (not call!262848))))

(declare-fun b!3635116 () Bool)

(assert (=> b!3635116 (= e!2250175 (= lt!1257705 call!262848))))

(declare-fun b!3635117 () Bool)

(declare-fun res!1472586 () Bool)

(assert (=> b!3635117 (=> res!1472586 e!2250179)))

(assert (=> b!3635117 (= res!1472586 e!2250177)))

(declare-fun res!1472584 () Bool)

(assert (=> b!3635117 (=> (not res!1472584) (not e!2250177))))

(assert (=> b!3635117 (= res!1472584 lt!1257705)))

(declare-fun b!3635118 () Bool)

(declare-fun derivativeStep!3180 (Regex!10477 C!21140) Regex!10477)

(assert (=> b!3635118 (= e!2250176 (matchR!5046 (derivativeStep!3180 (regex!5718 lt!1257684) (head!7706 (list!14168 (charsOf!3732 (_1!22218 lt!1257690))))) (tail!5629 (list!14168 (charsOf!3732 (_1!22218 lt!1257690))))))))

(declare-fun b!3635109 () Bool)

(assert (=> b!3635109 (= e!2250181 e!2250180)))

(declare-fun res!1472587 () Bool)

(assert (=> b!3635109 (=> res!1472587 e!2250180)))

(assert (=> b!3635109 (= res!1472587 call!262848)))

(declare-fun d!1069028 () Bool)

(assert (=> d!1069028 e!2250175))

(declare-fun c!628707 () Bool)

(assert (=> d!1069028 (= c!628707 ((_ is EmptyExpr!10477) (regex!5718 lt!1257684)))))

(assert (=> d!1069028 (= lt!1257705 e!2250176)))

(declare-fun c!628705 () Bool)

(assert (=> d!1069028 (= c!628705 (isEmpty!22668 (list!14168 (charsOf!3732 (_1!22218 lt!1257690)))))))

(declare-fun validRegex!4793 (Regex!10477) Bool)

(assert (=> d!1069028 (validRegex!4793 (regex!5718 lt!1257684))))

(assert (=> d!1069028 (= (matchR!5046 (regex!5718 lt!1257684) (list!14168 (charsOf!3732 (_1!22218 lt!1257690)))) lt!1257705)))

(declare-fun b!3635119 () Bool)

(assert (=> b!3635119 (= e!2250180 (not (= (head!7706 (list!14168 (charsOf!3732 (_1!22218 lt!1257690)))) (c!628688 (regex!5718 lt!1257684)))))))

(declare-fun b!3635120 () Bool)

(declare-fun res!1472583 () Bool)

(assert (=> b!3635120 (=> (not res!1472583) (not e!2250177))))

(assert (=> b!3635120 (= res!1472583 (isEmpty!22668 (tail!5629 (list!14168 (charsOf!3732 (_1!22218 lt!1257690))))))))

(declare-fun b!3635121 () Bool)

(assert (=> b!3635121 (= e!2250178 (not lt!1257705))))

(declare-fun bm!262843 () Bool)

(assert (=> bm!262843 (= call!262848 (isEmpty!22668 (list!14168 (charsOf!3732 (_1!22218 lt!1257690)))))))

(assert (= (and d!1069028 c!628705) b!3635112))

(assert (= (and d!1069028 (not c!628705)) b!3635118))

(assert (= (and d!1069028 c!628707) b!3635116))

(assert (= (and d!1069028 (not c!628707)) b!3635110))

(assert (= (and b!3635110 c!628706) b!3635121))

(assert (= (and b!3635110 (not c!628706)) b!3635114))

(assert (= (and b!3635114 (not res!1472582)) b!3635117))

(assert (= (and b!3635117 res!1472584) b!3635115))

(assert (= (and b!3635115 res!1472581) b!3635120))

(assert (= (and b!3635120 res!1472583) b!3635108))

(assert (= (and b!3635117 (not res!1472586)) b!3635113))

(assert (= (and b!3635113 res!1472585) b!3635109))

(assert (= (and b!3635109 (not res!1472587)) b!3635111))

(assert (= (and b!3635111 (not res!1472588)) b!3635119))

(assert (= (or b!3635116 b!3635109 b!3635115) bm!262843))

(assert (=> b!3635118 m!4137147))

(declare-fun m!4137251 () Bool)

(assert (=> b!3635118 m!4137251))

(assert (=> b!3635118 m!4137251))

(declare-fun m!4137253 () Bool)

(assert (=> b!3635118 m!4137253))

(assert (=> b!3635118 m!4137147))

(declare-fun m!4137255 () Bool)

(assert (=> b!3635118 m!4137255))

(assert (=> b!3635118 m!4137253))

(assert (=> b!3635118 m!4137255))

(declare-fun m!4137257 () Bool)

(assert (=> b!3635118 m!4137257))

(assert (=> b!3635108 m!4137147))

(assert (=> b!3635108 m!4137251))

(assert (=> b!3635120 m!4137147))

(assert (=> b!3635120 m!4137255))

(assert (=> b!3635120 m!4137255))

(declare-fun m!4137259 () Bool)

(assert (=> b!3635120 m!4137259))

(assert (=> d!1069028 m!4137147))

(declare-fun m!4137261 () Bool)

(assert (=> d!1069028 m!4137261))

(declare-fun m!4137263 () Bool)

(assert (=> d!1069028 m!4137263))

(assert (=> b!3635119 m!4137147))

(assert (=> b!3635119 m!4137251))

(declare-fun m!4137265 () Bool)

(assert (=> b!3635112 m!4137265))

(assert (=> bm!262843 m!4137147))

(assert (=> bm!262843 m!4137261))

(assert (=> b!3635111 m!4137147))

(assert (=> b!3635111 m!4137255))

(assert (=> b!3635111 m!4137255))

(assert (=> b!3635111 m!4137259))

(assert (=> b!3635029 d!1069028))

(declare-fun d!1069040 () Bool)

(declare-fun list!14170 (Conc!11691) List!38430)

(assert (=> d!1069040 (= (list!14168 (charsOf!3732 (_1!22218 lt!1257690))) (list!14170 (c!628689 (charsOf!3732 (_1!22218 lt!1257690)))))))

(declare-fun bs!571773 () Bool)

(assert (= bs!571773 d!1069040))

(declare-fun m!4137273 () Bool)

(assert (=> bs!571773 m!4137273))

(assert (=> b!3635029 d!1069040))

(declare-fun d!1069044 () Bool)

(declare-fun lt!1257711 () BalanceConc!22996)

(assert (=> d!1069044 (= (list!14168 lt!1257711) (originalCharacters!6432 (_1!22218 lt!1257690)))))

(declare-fun dynLambda!16627 (Int TokenValue!5948) BalanceConc!22996)

(assert (=> d!1069044 (= lt!1257711 (dynLambda!16627 (toChars!7869 (transformation!5718 (rule!8490 (_1!22218 lt!1257690)))) (value!183423 (_1!22218 lt!1257690))))))

(assert (=> d!1069044 (= (charsOf!3732 (_1!22218 lt!1257690)) lt!1257711)))

(declare-fun b_lambda!107681 () Bool)

(assert (=> (not b_lambda!107681) (not d!1069044)))

(declare-fun t!295744 () Bool)

(declare-fun tb!209069 () Bool)

(assert (=> (and b!3635007 (= (toChars!7869 (transformation!5718 (h!43727 rules!3307))) (toChars!7869 (transformation!5718 (rule!8490 (_1!22218 lt!1257690))))) t!295744) tb!209069))

(declare-fun b!3635156 () Bool)

(declare-fun e!2250202 () Bool)

(declare-fun tp!1109520 () Bool)

(declare-fun inv!51737 (Conc!11691) Bool)

(assert (=> b!3635156 (= e!2250202 (and (inv!51737 (c!628689 (dynLambda!16627 (toChars!7869 (transformation!5718 (rule!8490 (_1!22218 lt!1257690)))) (value!183423 (_1!22218 lt!1257690))))) tp!1109520))))

(declare-fun result!254672 () Bool)

(declare-fun inv!51738 (BalanceConc!22996) Bool)

(assert (=> tb!209069 (= result!254672 (and (inv!51738 (dynLambda!16627 (toChars!7869 (transformation!5718 (rule!8490 (_1!22218 lt!1257690)))) (value!183423 (_1!22218 lt!1257690)))) e!2250202))))

(assert (= tb!209069 b!3635156))

(declare-fun m!4137281 () Bool)

(assert (=> b!3635156 m!4137281))

(declare-fun m!4137283 () Bool)

(assert (=> tb!209069 m!4137283))

(assert (=> d!1069044 t!295744))

(declare-fun b_and!267299 () Bool)

(assert (= b_and!267277 (and (=> t!295744 result!254672) b_and!267299)))

(declare-fun t!295746 () Bool)

(declare-fun tb!209071 () Bool)

(assert (=> (and b!3635018 (= (toChars!7869 (transformation!5718 anOtherTypeRule!33)) (toChars!7869 (transformation!5718 (rule!8490 (_1!22218 lt!1257690))))) t!295746) tb!209071))

(declare-fun result!254676 () Bool)

(assert (= result!254676 result!254672))

(assert (=> d!1069044 t!295746))

(declare-fun b_and!267301 () Bool)

(assert (= b_and!267281 (and (=> t!295746 result!254676) b_and!267301)))

(declare-fun t!295748 () Bool)

(declare-fun tb!209073 () Bool)

(assert (=> (and b!3635010 (= (toChars!7869 (transformation!5718 (rule!8490 token!511))) (toChars!7869 (transformation!5718 (rule!8490 (_1!22218 lt!1257690))))) t!295748) tb!209073))

(declare-fun result!254678 () Bool)

(assert (= result!254678 result!254672))

(assert (=> d!1069044 t!295748))

(declare-fun b_and!267303 () Bool)

(assert (= b_and!267285 (and (=> t!295748 result!254678) b_and!267303)))

(declare-fun t!295750 () Bool)

(declare-fun tb!209075 () Bool)

(assert (=> (and b!3635008 (= (toChars!7869 (transformation!5718 rule!403)) (toChars!7869 (transformation!5718 (rule!8490 (_1!22218 lt!1257690))))) t!295750) tb!209075))

(declare-fun result!254680 () Bool)

(assert (= result!254680 result!254672))

(assert (=> d!1069044 t!295750))

(declare-fun b_and!267305 () Bool)

(assert (= b_and!267289 (and (=> t!295750 result!254680) b_and!267305)))

(declare-fun m!4137285 () Bool)

(assert (=> d!1069044 m!4137285))

(declare-fun m!4137287 () Bool)

(assert (=> d!1069044 m!4137287))

(assert (=> b!3635029 d!1069044))

(declare-fun d!1069050 () Bool)

(assert (=> d!1069050 (= (get!12534 lt!1257677) (v!37871 lt!1257677))))

(assert (=> b!3635029 d!1069050))

(declare-fun d!1069052 () Bool)

(declare-fun lt!1257714 () Int)

(assert (=> d!1069052 (>= lt!1257714 0)))

(declare-fun e!2250214 () Int)

(assert (=> d!1069052 (= lt!1257714 e!2250214)))

(declare-fun c!628728 () Bool)

(assert (=> d!1069052 (= c!628728 ((_ is Nil!38306) lt!1257688))))

(assert (=> d!1069052 (= (size!29233 lt!1257688) lt!1257714)))

(declare-fun b!3635176 () Bool)

(assert (=> b!3635176 (= e!2250214 0)))

(declare-fun b!3635177 () Bool)

(assert (=> b!3635177 (= e!2250214 (+ 1 (size!29233 (t!295733 lt!1257688))))))

(assert (= (and d!1069052 c!628728) b!3635176))

(assert (= (and d!1069052 (not c!628728)) b!3635177))

(declare-fun m!4137295 () Bool)

(assert (=> b!3635177 m!4137295))

(assert (=> b!3635019 d!1069052))

(declare-fun d!1069056 () Bool)

(declare-fun dynLambda!16628 (Int BalanceConc!22996) TokenValue!5948)

(assert (=> d!1069056 (= (apply!9220 (transformation!5718 (rule!8490 (_1!22218 lt!1257690))) (seqFromList!4267 lt!1257688)) (dynLambda!16628 (toValue!8010 (transformation!5718 (rule!8490 (_1!22218 lt!1257690)))) (seqFromList!4267 lt!1257688)))))

(declare-fun b_lambda!107683 () Bool)

(assert (=> (not b_lambda!107683) (not d!1069056)))

(declare-fun tb!209077 () Bool)

(declare-fun t!295752 () Bool)

(assert (=> (and b!3635007 (= (toValue!8010 (transformation!5718 (h!43727 rules!3307))) (toValue!8010 (transformation!5718 (rule!8490 (_1!22218 lt!1257690))))) t!295752) tb!209077))

(declare-fun result!254682 () Bool)

(assert (=> tb!209077 (= result!254682 (inv!21 (dynLambda!16628 (toValue!8010 (transformation!5718 (rule!8490 (_1!22218 lt!1257690)))) (seqFromList!4267 lt!1257688))))))

(declare-fun m!4137297 () Bool)

(assert (=> tb!209077 m!4137297))

(assert (=> d!1069056 t!295752))

(declare-fun b_and!267307 () Bool)

(assert (= b_and!267275 (and (=> t!295752 result!254682) b_and!267307)))

(declare-fun t!295754 () Bool)

(declare-fun tb!209079 () Bool)

(assert (=> (and b!3635018 (= (toValue!8010 (transformation!5718 anOtherTypeRule!33)) (toValue!8010 (transformation!5718 (rule!8490 (_1!22218 lt!1257690))))) t!295754) tb!209079))

(declare-fun result!254686 () Bool)

(assert (= result!254686 result!254682))

(assert (=> d!1069056 t!295754))

(declare-fun b_and!267309 () Bool)

(assert (= b_and!267279 (and (=> t!295754 result!254686) b_and!267309)))

(declare-fun t!295756 () Bool)

(declare-fun tb!209081 () Bool)

(assert (=> (and b!3635010 (= (toValue!8010 (transformation!5718 (rule!8490 token!511))) (toValue!8010 (transformation!5718 (rule!8490 (_1!22218 lt!1257690))))) t!295756) tb!209081))

(declare-fun result!254688 () Bool)

(assert (= result!254688 result!254682))

(assert (=> d!1069056 t!295756))

(declare-fun b_and!267311 () Bool)

(assert (= b_and!267283 (and (=> t!295756 result!254688) b_and!267311)))

(declare-fun tb!209083 () Bool)

(declare-fun t!295758 () Bool)

(assert (=> (and b!3635008 (= (toValue!8010 (transformation!5718 rule!403)) (toValue!8010 (transformation!5718 (rule!8490 (_1!22218 lt!1257690))))) t!295758) tb!209083))

(declare-fun result!254690 () Bool)

(assert (= result!254690 result!254682))

(assert (=> d!1069056 t!295758))

(declare-fun b_and!267313 () Bool)

(assert (= b_and!267287 (and (=> t!295758 result!254690) b_and!267313)))

(assert (=> d!1069056 m!4137213))

(declare-fun m!4137299 () Bool)

(assert (=> d!1069056 m!4137299))

(assert (=> b!3635019 d!1069056))

(declare-fun d!1069058 () Bool)

(assert (=> d!1069058 (= (maxPrefixOneRule!1979 thiss!23823 (rule!8490 (_1!22218 lt!1257690)) lt!1257694) (Some!8064 (tuple2!38169 (Token!10803 (apply!9220 (transformation!5718 (rule!8490 (_1!22218 lt!1257690))) (seqFromList!4267 lt!1257688)) (rule!8490 (_1!22218 lt!1257690)) (size!29233 lt!1257688) lt!1257688) (_2!22218 lt!1257690))))))

(declare-fun lt!1257732 () Unit!55130)

(declare-fun choose!21353 (LexerInterface!5307 List!38431 List!38430 List!38430 List!38430 Rule!11236) Unit!55130)

(assert (=> d!1069058 (= lt!1257732 (choose!21353 thiss!23823 rules!3307 lt!1257688 lt!1257694 (_2!22218 lt!1257690) (rule!8490 (_1!22218 lt!1257690))))))

(assert (=> d!1069058 (not (isEmpty!22669 rules!3307))))

(assert (=> d!1069058 (= (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1035 thiss!23823 rules!3307 lt!1257688 lt!1257694 (_2!22218 lt!1257690) (rule!8490 (_1!22218 lt!1257690))) lt!1257732)))

(declare-fun bs!571776 () Bool)

(assert (= bs!571776 d!1069058))

(assert (=> bs!571776 m!4137219))

(assert (=> bs!571776 m!4137203))

(assert (=> bs!571776 m!4137213))

(assert (=> bs!571776 m!4137215))

(assert (=> bs!571776 m!4137213))

(assert (=> bs!571776 m!4137221))

(declare-fun m!4137327 () Bool)

(assert (=> bs!571776 m!4137327))

(assert (=> b!3635019 d!1069058))

(declare-fun d!1069068 () Bool)

(declare-fun lt!1257735 () List!38430)

(assert (=> d!1069068 (= (++!9534 lt!1257688 lt!1257735) lt!1257694)))

(declare-fun e!2250235 () List!38430)

(assert (=> d!1069068 (= lt!1257735 e!2250235)))

(declare-fun c!628737 () Bool)

(assert (=> d!1069068 (= c!628737 ((_ is Cons!38306) lt!1257688))))

(assert (=> d!1069068 (>= (size!29233 lt!1257694) (size!29233 lt!1257688))))

(assert (=> d!1069068 (= (getSuffix!1634 lt!1257694 lt!1257688) lt!1257735)))

(declare-fun b!3635208 () Bool)

(assert (=> b!3635208 (= e!2250235 (getSuffix!1634 (tail!5629 lt!1257694) (t!295733 lt!1257688)))))

(declare-fun b!3635209 () Bool)

(assert (=> b!3635209 (= e!2250235 lt!1257694)))

(assert (= (and d!1069068 c!628737) b!3635208))

(assert (= (and d!1069068 (not c!628737)) b!3635209))

(declare-fun m!4137329 () Bool)

(assert (=> d!1069068 m!4137329))

(declare-fun m!4137331 () Bool)

(assert (=> d!1069068 m!4137331))

(assert (=> d!1069068 m!4137219))

(declare-fun m!4137333 () Bool)

(assert (=> b!3635208 m!4137333))

(assert (=> b!3635208 m!4137333))

(declare-fun m!4137335 () Bool)

(assert (=> b!3635208 m!4137335))

(assert (=> b!3635019 d!1069068))

(declare-fun d!1069070 () Bool)

(declare-fun fromListB!1966 (List!38430) BalanceConc!22996)

(assert (=> d!1069070 (= (seqFromList!4267 lt!1257688) (fromListB!1966 lt!1257688))))

(declare-fun bs!571777 () Bool)

(assert (= bs!571777 d!1069070))

(declare-fun m!4137337 () Bool)

(assert (=> bs!571777 m!4137337))

(assert (=> b!3635019 d!1069070))

(declare-fun b!3635228 () Bool)

(declare-fun res!1472624 () Bool)

(declare-fun e!2250247 () Bool)

(assert (=> b!3635228 (=> (not res!1472624) (not e!2250247))))

(declare-fun lt!1257747 () Option!8065)

(assert (=> b!3635228 (= res!1472624 (< (size!29233 (_2!22218 (get!12533 lt!1257747))) (size!29233 lt!1257694)))))

(declare-fun b!3635229 () Bool)

(declare-fun res!1472630 () Bool)

(assert (=> b!3635229 (=> (not res!1472630) (not e!2250247))))

(assert (=> b!3635229 (= res!1472630 (= (++!9534 (list!14168 (charsOf!3732 (_1!22218 (get!12533 lt!1257747)))) (_2!22218 (get!12533 lt!1257747))) lt!1257694))))

(declare-fun b!3635230 () Bool)

(declare-fun res!1472628 () Bool)

(assert (=> b!3635230 (=> (not res!1472628) (not e!2250247))))

(assert (=> b!3635230 (= res!1472628 (= (rule!8490 (_1!22218 (get!12533 lt!1257747))) (rule!8490 (_1!22218 lt!1257690))))))

(declare-fun b!3635231 () Bool)

(assert (=> b!3635231 (= e!2250247 (= (size!29231 (_1!22218 (get!12533 lt!1257747))) (size!29233 (originalCharacters!6432 (_1!22218 (get!12533 lt!1257747))))))))

(declare-fun b!3635232 () Bool)

(declare-fun e!2250245 () Bool)

(assert (=> b!3635232 (= e!2250245 e!2250247)))

(declare-fun res!1472625 () Bool)

(assert (=> b!3635232 (=> (not res!1472625) (not e!2250247))))

(assert (=> b!3635232 (= res!1472625 (matchR!5046 (regex!5718 (rule!8490 (_1!22218 lt!1257690))) (list!14168 (charsOf!3732 (_1!22218 (get!12533 lt!1257747))))))))

(declare-fun b!3635233 () Bool)

(declare-fun e!2250244 () Option!8065)

(assert (=> b!3635233 (= e!2250244 None!8064)))

(declare-fun b!3635234 () Bool)

(declare-datatypes ((tuple2!38172 0))(
  ( (tuple2!38173 (_1!22220 List!38430) (_2!22220 List!38430)) )
))
(declare-fun lt!1257746 () tuple2!38172)

(assert (=> b!3635234 (= e!2250244 (Some!8064 (tuple2!38169 (Token!10803 (apply!9220 (transformation!5718 (rule!8490 (_1!22218 lt!1257690))) (seqFromList!4267 (_1!22220 lt!1257746))) (rule!8490 (_1!22218 lt!1257690)) (size!29232 (seqFromList!4267 (_1!22220 lt!1257746))) (_1!22220 lt!1257746)) (_2!22220 lt!1257746))))))

(declare-fun lt!1257750 () Unit!55130)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!999 (Regex!10477 List!38430) Unit!55130)

(assert (=> b!3635234 (= lt!1257750 (longestMatchIsAcceptedByMatchOrIsEmpty!999 (regex!5718 (rule!8490 (_1!22218 lt!1257690))) lt!1257694))))

(declare-fun res!1472629 () Bool)

(declare-fun findLongestMatchInner!1026 (Regex!10477 List!38430 Int List!38430 List!38430 Int) tuple2!38172)

(assert (=> b!3635234 (= res!1472629 (isEmpty!22668 (_1!22220 (findLongestMatchInner!1026 (regex!5718 (rule!8490 (_1!22218 lt!1257690))) Nil!38306 (size!29233 Nil!38306) lt!1257694 lt!1257694 (size!29233 lt!1257694)))))))

(declare-fun e!2250246 () Bool)

(assert (=> b!3635234 (=> res!1472629 e!2250246)))

(assert (=> b!3635234 e!2250246))

(declare-fun lt!1257749 () Unit!55130)

(assert (=> b!3635234 (= lt!1257749 lt!1257750)))

(declare-fun lt!1257748 () Unit!55130)

(assert (=> b!3635234 (= lt!1257748 (lemmaSemiInverse!1467 (transformation!5718 (rule!8490 (_1!22218 lt!1257690))) (seqFromList!4267 (_1!22220 lt!1257746))))))

(declare-fun d!1069072 () Bool)

(assert (=> d!1069072 e!2250245))

(declare-fun res!1472626 () Bool)

(assert (=> d!1069072 (=> res!1472626 e!2250245)))

(declare-fun isEmpty!22672 (Option!8065) Bool)

(assert (=> d!1069072 (= res!1472626 (isEmpty!22672 lt!1257747))))

(assert (=> d!1069072 (= lt!1257747 e!2250244)))

(declare-fun c!628740 () Bool)

(assert (=> d!1069072 (= c!628740 (isEmpty!22668 (_1!22220 lt!1257746)))))

(declare-fun findLongestMatch!941 (Regex!10477 List!38430) tuple2!38172)

(assert (=> d!1069072 (= lt!1257746 (findLongestMatch!941 (regex!5718 (rule!8490 (_1!22218 lt!1257690))) lt!1257694))))

(assert (=> d!1069072 (ruleValid!1982 thiss!23823 (rule!8490 (_1!22218 lt!1257690)))))

(assert (=> d!1069072 (= (maxPrefixOneRule!1979 thiss!23823 (rule!8490 (_1!22218 lt!1257690)) lt!1257694) lt!1257747)))

(declare-fun b!3635235 () Bool)

(assert (=> b!3635235 (= e!2250246 (matchR!5046 (regex!5718 (rule!8490 (_1!22218 lt!1257690))) (_1!22220 (findLongestMatchInner!1026 (regex!5718 (rule!8490 (_1!22218 lt!1257690))) Nil!38306 (size!29233 Nil!38306) lt!1257694 lt!1257694 (size!29233 lt!1257694)))))))

(declare-fun b!3635236 () Bool)

(declare-fun res!1472627 () Bool)

(assert (=> b!3635236 (=> (not res!1472627) (not e!2250247))))

(assert (=> b!3635236 (= res!1472627 (= (value!183423 (_1!22218 (get!12533 lt!1257747))) (apply!9220 (transformation!5718 (rule!8490 (_1!22218 (get!12533 lt!1257747)))) (seqFromList!4267 (originalCharacters!6432 (_1!22218 (get!12533 lt!1257747)))))))))

(assert (= (and d!1069072 c!628740) b!3635233))

(assert (= (and d!1069072 (not c!628740)) b!3635234))

(assert (= (and b!3635234 (not res!1472629)) b!3635235))

(assert (= (and d!1069072 (not res!1472626)) b!3635232))

(assert (= (and b!3635232 res!1472625) b!3635229))

(assert (= (and b!3635229 res!1472630) b!3635228))

(assert (= (and b!3635228 res!1472624) b!3635230))

(assert (= (and b!3635230 res!1472628) b!3635236))

(assert (= (and b!3635236 res!1472627) b!3635231))

(declare-fun m!4137339 () Bool)

(assert (=> b!3635232 m!4137339))

(declare-fun m!4137341 () Bool)

(assert (=> b!3635232 m!4137341))

(assert (=> b!3635232 m!4137341))

(declare-fun m!4137343 () Bool)

(assert (=> b!3635232 m!4137343))

(assert (=> b!3635232 m!4137343))

(declare-fun m!4137345 () Bool)

(assert (=> b!3635232 m!4137345))

(assert (=> b!3635229 m!4137339))

(assert (=> b!3635229 m!4137341))

(assert (=> b!3635229 m!4137341))

(assert (=> b!3635229 m!4137343))

(assert (=> b!3635229 m!4137343))

(declare-fun m!4137347 () Bool)

(assert (=> b!3635229 m!4137347))

(declare-fun m!4137349 () Bool)

(assert (=> d!1069072 m!4137349))

(declare-fun m!4137351 () Bool)

(assert (=> d!1069072 m!4137351))

(declare-fun m!4137353 () Bool)

(assert (=> d!1069072 m!4137353))

(declare-fun m!4137355 () Bool)

(assert (=> d!1069072 m!4137355))

(assert (=> b!3635231 m!4137339))

(declare-fun m!4137357 () Bool)

(assert (=> b!3635231 m!4137357))

(assert (=> b!3635230 m!4137339))

(declare-fun m!4137359 () Bool)

(assert (=> b!3635235 m!4137359))

(assert (=> b!3635235 m!4137331))

(assert (=> b!3635235 m!4137359))

(assert (=> b!3635235 m!4137331))

(declare-fun m!4137361 () Bool)

(assert (=> b!3635235 m!4137361))

(declare-fun m!4137363 () Bool)

(assert (=> b!3635235 m!4137363))

(assert (=> b!3635236 m!4137339))

(declare-fun m!4137365 () Bool)

(assert (=> b!3635236 m!4137365))

(assert (=> b!3635236 m!4137365))

(declare-fun m!4137367 () Bool)

(assert (=> b!3635236 m!4137367))

(assert (=> b!3635234 m!4137359))

(assert (=> b!3635234 m!4137331))

(assert (=> b!3635234 m!4137361))

(declare-fun m!4137369 () Bool)

(assert (=> b!3635234 m!4137369))

(declare-fun m!4137371 () Bool)

(assert (=> b!3635234 m!4137371))

(assert (=> b!3635234 m!4137369))

(declare-fun m!4137373 () Bool)

(assert (=> b!3635234 m!4137373))

(declare-fun m!4137375 () Bool)

(assert (=> b!3635234 m!4137375))

(assert (=> b!3635234 m!4137331))

(assert (=> b!3635234 m!4137359))

(assert (=> b!3635234 m!4137369))

(declare-fun m!4137377 () Bool)

(assert (=> b!3635234 m!4137377))

(declare-fun m!4137379 () Bool)

(assert (=> b!3635234 m!4137379))

(assert (=> b!3635234 m!4137369))

(assert (=> b!3635228 m!4137339))

(declare-fun m!4137381 () Bool)

(assert (=> b!3635228 m!4137381))

(assert (=> b!3635228 m!4137331))

(assert (=> b!3635019 d!1069072))

(declare-fun d!1069074 () Bool)

(declare-fun lt!1257753 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!5501 (List!38431) (InoxSet Rule!11236))

(assert (=> d!1069074 (= lt!1257753 (select (content!5501 rules!3307) anOtherTypeRule!33))))

(declare-fun e!2250253 () Bool)

(assert (=> d!1069074 (= lt!1257753 e!2250253)))

(declare-fun res!1472636 () Bool)

(assert (=> d!1069074 (=> (not res!1472636) (not e!2250253))))

(assert (=> d!1069074 (= res!1472636 ((_ is Cons!38307) rules!3307))))

(assert (=> d!1069074 (= (contains!7501 rules!3307 anOtherTypeRule!33) lt!1257753)))

(declare-fun b!3635241 () Bool)

(declare-fun e!2250252 () Bool)

(assert (=> b!3635241 (= e!2250253 e!2250252)))

(declare-fun res!1472635 () Bool)

(assert (=> b!3635241 (=> res!1472635 e!2250252)))

(assert (=> b!3635241 (= res!1472635 (= (h!43727 rules!3307) anOtherTypeRule!33))))

(declare-fun b!3635242 () Bool)

(assert (=> b!3635242 (= e!2250252 (contains!7501 (t!295734 rules!3307) anOtherTypeRule!33))))

(assert (= (and d!1069074 res!1472636) b!3635241))

(assert (= (and b!3635241 (not res!1472635)) b!3635242))

(declare-fun m!4137383 () Bool)

(assert (=> d!1069074 m!4137383))

(declare-fun m!4137385 () Bool)

(assert (=> d!1069074 m!4137385))

(declare-fun m!4137387 () Bool)

(assert (=> b!3635242 m!4137387))

(assert (=> b!3635009 d!1069074))

(declare-fun d!1069076 () Bool)

(assert (=> d!1069076 (= (inv!51730 (tag!6456 rule!403)) (= (mod (str.len (value!183422 (tag!6456 rule!403))) 2) 0))))

(assert (=> b!3635030 d!1069076))

(declare-fun d!1069078 () Bool)

(declare-fun res!1472639 () Bool)

(declare-fun e!2250256 () Bool)

(assert (=> d!1069078 (=> (not res!1472639) (not e!2250256))))

(declare-fun semiInverseModEq!2430 (Int Int) Bool)

(assert (=> d!1069078 (= res!1472639 (semiInverseModEq!2430 (toChars!7869 (transformation!5718 rule!403)) (toValue!8010 (transformation!5718 rule!403))))))

(assert (=> d!1069078 (= (inv!51733 (transformation!5718 rule!403)) e!2250256)))

(declare-fun b!3635245 () Bool)

(declare-fun equivClasses!2329 (Int Int) Bool)

(assert (=> b!3635245 (= e!2250256 (equivClasses!2329 (toChars!7869 (transformation!5718 rule!403)) (toValue!8010 (transformation!5718 rule!403))))))

(assert (= (and d!1069078 res!1472639) b!3635245))

(declare-fun m!4137389 () Bool)

(assert (=> d!1069078 m!4137389))

(declare-fun m!4137391 () Bool)

(assert (=> b!3635245 m!4137391))

(assert (=> b!3635030 d!1069078))

(declare-fun d!1069080 () Bool)

(assert (=> d!1069080 (= (isEmpty!22669 rules!3307) ((_ is Nil!38307) rules!3307))))

(assert (=> b!3635031 d!1069080))

(declare-fun b!3635260 () Bool)

(declare-fun e!2250266 () Bool)

(declare-fun inv!16 (TokenValue!5948) Bool)

(assert (=> b!3635260 (= e!2250266 (inv!16 (value!183423 token!511)))))

(declare-fun b!3635263 () Bool)

(declare-fun e!2250267 () Bool)

(declare-fun inv!17 (TokenValue!5948) Bool)

(assert (=> b!3635263 (= e!2250267 (inv!17 (value!183423 token!511)))))

(declare-fun b!3635264 () Bool)

(assert (=> b!3635264 (= e!2250266 e!2250267)))

(declare-fun c!628745 () Bool)

(assert (=> b!3635264 (= c!628745 ((_ is IntegerValue!17845) (value!183423 token!511)))))

(declare-fun b!3635266 () Bool)

(declare-fun e!2250265 () Bool)

(declare-fun inv!15 (TokenValue!5948) Bool)

(assert (=> b!3635266 (= e!2250265 (inv!15 (value!183423 token!511)))))

(declare-fun d!1069082 () Bool)

(declare-fun c!628746 () Bool)

(assert (=> d!1069082 (= c!628746 ((_ is IntegerValue!17844) (value!183423 token!511)))))

(assert (=> d!1069082 (= (inv!21 (value!183423 token!511)) e!2250266)))

(declare-fun b!3635265 () Bool)

(declare-fun res!1472646 () Bool)

(assert (=> b!3635265 (=> res!1472646 e!2250265)))

(assert (=> b!3635265 (= res!1472646 (not ((_ is IntegerValue!17846) (value!183423 token!511))))))

(assert (=> b!3635265 (= e!2250267 e!2250265)))

(assert (= (and d!1069082 c!628746) b!3635260))

(assert (= (and d!1069082 (not c!628746)) b!3635264))

(assert (= (and b!3635264 c!628745) b!3635263))

(assert (= (and b!3635264 (not c!628745)) b!3635265))

(assert (= (and b!3635265 (not res!1472646)) b!3635266))

(declare-fun m!4137393 () Bool)

(assert (=> b!3635260 m!4137393))

(declare-fun m!4137395 () Bool)

(assert (=> b!3635263 m!4137395))

(declare-fun m!4137397 () Bool)

(assert (=> b!3635266 m!4137397))

(assert (=> b!3635020 d!1069082))

(declare-fun d!1069084 () Bool)

(assert (=> d!1069084 (= (inv!51730 (tag!6456 anOtherTypeRule!33)) (= (mod (str.len (value!183422 (tag!6456 anOtherTypeRule!33))) 2) 0))))

(assert (=> b!3635005 d!1069084))

(declare-fun d!1069086 () Bool)

(declare-fun res!1472647 () Bool)

(declare-fun e!2250270 () Bool)

(assert (=> d!1069086 (=> (not res!1472647) (not e!2250270))))

(assert (=> d!1069086 (= res!1472647 (semiInverseModEq!2430 (toChars!7869 (transformation!5718 anOtherTypeRule!33)) (toValue!8010 (transformation!5718 anOtherTypeRule!33))))))

(assert (=> d!1069086 (= (inv!51733 (transformation!5718 anOtherTypeRule!33)) e!2250270)))

(declare-fun b!3635269 () Bool)

(assert (=> b!3635269 (= e!2250270 (equivClasses!2329 (toChars!7869 (transformation!5718 anOtherTypeRule!33)) (toValue!8010 (transformation!5718 anOtherTypeRule!33))))))

(assert (= (and d!1069086 res!1472647) b!3635269))

(declare-fun m!4137399 () Bool)

(assert (=> d!1069086 m!4137399))

(declare-fun m!4137401 () Bool)

(assert (=> b!3635269 m!4137401))

(assert (=> b!3635005 d!1069086))

(declare-fun d!1069088 () Bool)

(assert (=> d!1069088 (= (isEmpty!22668 suffix!1395) ((_ is Nil!38306) suffix!1395))))

(assert (=> b!3635026 d!1069088))

(declare-fun d!1069090 () Bool)

(assert (=> d!1069090 (= (inv!51730 (tag!6456 (h!43727 rules!3307))) (= (mod (str.len (value!183422 (tag!6456 (h!43727 rules!3307)))) 2) 0))))

(assert (=> b!3635027 d!1069090))

(declare-fun d!1069092 () Bool)

(declare-fun res!1472648 () Bool)

(declare-fun e!2250271 () Bool)

(assert (=> d!1069092 (=> (not res!1472648) (not e!2250271))))

(assert (=> d!1069092 (= res!1472648 (semiInverseModEq!2430 (toChars!7869 (transformation!5718 (h!43727 rules!3307))) (toValue!8010 (transformation!5718 (h!43727 rules!3307)))))))

(assert (=> d!1069092 (= (inv!51733 (transformation!5718 (h!43727 rules!3307))) e!2250271)))

(declare-fun b!3635270 () Bool)

(assert (=> b!3635270 (= e!2250271 (equivClasses!2329 (toChars!7869 (transformation!5718 (h!43727 rules!3307))) (toValue!8010 (transformation!5718 (h!43727 rules!3307)))))))

(assert (= (and d!1069092 res!1472648) b!3635270))

(declare-fun m!4137403 () Bool)

(assert (=> d!1069092 m!4137403))

(declare-fun m!4137405 () Bool)

(assert (=> b!3635270 m!4137405))

(assert (=> b!3635027 d!1069092))

(declare-fun d!1069094 () Bool)

(assert (=> d!1069094 (= (apply!9220 (transformation!5718 (rule!8490 (_1!22218 lt!1257690))) lt!1257691) (dynLambda!16628 (toValue!8010 (transformation!5718 (rule!8490 (_1!22218 lt!1257690)))) lt!1257691))))

(declare-fun b_lambda!107685 () Bool)

(assert (=> (not b_lambda!107685) (not d!1069094)))

(declare-fun t!295760 () Bool)

(declare-fun tb!209085 () Bool)

(assert (=> (and b!3635007 (= (toValue!8010 (transformation!5718 (h!43727 rules!3307))) (toValue!8010 (transformation!5718 (rule!8490 (_1!22218 lt!1257690))))) t!295760) tb!209085))

(declare-fun result!254692 () Bool)

(assert (=> tb!209085 (= result!254692 (inv!21 (dynLambda!16628 (toValue!8010 (transformation!5718 (rule!8490 (_1!22218 lt!1257690)))) lt!1257691)))))

(declare-fun m!4137407 () Bool)

(assert (=> tb!209085 m!4137407))

(assert (=> d!1069094 t!295760))

(declare-fun b_and!267315 () Bool)

(assert (= b_and!267307 (and (=> t!295760 result!254692) b_and!267315)))

(declare-fun t!295762 () Bool)

(declare-fun tb!209087 () Bool)

(assert (=> (and b!3635018 (= (toValue!8010 (transformation!5718 anOtherTypeRule!33)) (toValue!8010 (transformation!5718 (rule!8490 (_1!22218 lt!1257690))))) t!295762) tb!209087))

(declare-fun result!254694 () Bool)

(assert (= result!254694 result!254692))

(assert (=> d!1069094 t!295762))

(declare-fun b_and!267317 () Bool)

(assert (= b_and!267309 (and (=> t!295762 result!254694) b_and!267317)))

(declare-fun t!295764 () Bool)

(declare-fun tb!209089 () Bool)

(assert (=> (and b!3635010 (= (toValue!8010 (transformation!5718 (rule!8490 token!511))) (toValue!8010 (transformation!5718 (rule!8490 (_1!22218 lt!1257690))))) t!295764) tb!209089))

(declare-fun result!254696 () Bool)

(assert (= result!254696 result!254692))

(assert (=> d!1069094 t!295764))

(declare-fun b_and!267319 () Bool)

(assert (= b_and!267311 (and (=> t!295764 result!254696) b_and!267319)))

(declare-fun tb!209091 () Bool)

(declare-fun t!295766 () Bool)

(assert (=> (and b!3635008 (= (toValue!8010 (transformation!5718 rule!403)) (toValue!8010 (transformation!5718 (rule!8490 (_1!22218 lt!1257690))))) t!295766) tb!209091))

(declare-fun result!254698 () Bool)

(assert (= result!254698 result!254692))

(assert (=> d!1069094 t!295766))

(declare-fun b_and!267321 () Bool)

(assert (= b_and!267313 (and (=> t!295766 result!254698) b_and!267321)))

(declare-fun m!4137409 () Bool)

(assert (=> d!1069094 m!4137409))

(assert (=> b!3635016 d!1069094))

(declare-fun d!1069096 () Bool)

(assert (=> d!1069096 (= (seqFromList!4267 (originalCharacters!6432 (_1!22218 lt!1257690))) (fromListB!1966 (originalCharacters!6432 (_1!22218 lt!1257690))))))

(declare-fun bs!571778 () Bool)

(assert (= bs!571778 d!1069096))

(declare-fun m!4137411 () Bool)

(assert (=> bs!571778 m!4137411))

(assert (=> b!3635016 d!1069096))

(declare-fun b!3635438 () Bool)

(declare-fun e!2250366 () Bool)

(assert (=> b!3635438 (= e!2250366 true)))

(declare-fun d!1069098 () Bool)

(assert (=> d!1069098 e!2250366))

(assert (= d!1069098 b!3635438))

(declare-fun order!20997 () Int)

(declare-fun lambda!124322 () Int)

(declare-fun order!20995 () Int)

(declare-fun dynLambda!16629 (Int Int) Int)

(declare-fun dynLambda!16630 (Int Int) Int)

(assert (=> b!3635438 (< (dynLambda!16629 order!20995 (toValue!8010 (transformation!5718 (rule!8490 (_1!22218 lt!1257690))))) (dynLambda!16630 order!20997 lambda!124322))))

(declare-fun order!20999 () Int)

(declare-fun dynLambda!16631 (Int Int) Int)

(assert (=> b!3635438 (< (dynLambda!16631 order!20999 (toChars!7869 (transformation!5718 (rule!8490 (_1!22218 lt!1257690))))) (dynLambda!16630 order!20997 lambda!124322))))

(assert (=> d!1069098 (= (dynLambda!16628 (toValue!8010 (transformation!5718 (rule!8490 (_1!22218 lt!1257690)))) lt!1257691) (dynLambda!16628 (toValue!8010 (transformation!5718 (rule!8490 (_1!22218 lt!1257690)))) (seqFromList!4267 (originalCharacters!6432 (_1!22218 lt!1257690)))))))

(declare-fun lt!1257866 () Unit!55130)

(declare-fun Forall2of!345 (Int BalanceConc!22996 BalanceConc!22996) Unit!55130)

(assert (=> d!1069098 (= lt!1257866 (Forall2of!345 lambda!124322 lt!1257691 (seqFromList!4267 (originalCharacters!6432 (_1!22218 lt!1257690)))))))

(assert (=> d!1069098 (= (list!14168 lt!1257691) (list!14168 (seqFromList!4267 (originalCharacters!6432 (_1!22218 lt!1257690)))))))

(assert (=> d!1069098 (= (lemmaEqSameImage!901 (transformation!5718 (rule!8490 (_1!22218 lt!1257690))) lt!1257691 (seqFromList!4267 (originalCharacters!6432 (_1!22218 lt!1257690)))) lt!1257866)))

(declare-fun b_lambda!107695 () Bool)

(assert (=> (not b_lambda!107695) (not d!1069098)))

(assert (=> d!1069098 t!295760))

(declare-fun b_and!267355 () Bool)

(assert (= b_and!267315 (and (=> t!295760 result!254692) b_and!267355)))

(assert (=> d!1069098 t!295762))

(declare-fun b_and!267357 () Bool)

(assert (= b_and!267317 (and (=> t!295762 result!254694) b_and!267357)))

(assert (=> d!1069098 t!295764))

(declare-fun b_and!267359 () Bool)

(assert (= b_and!267319 (and (=> t!295764 result!254696) b_and!267359)))

(assert (=> d!1069098 t!295766))

(declare-fun b_and!267361 () Bool)

(assert (= b_and!267321 (and (=> t!295766 result!254698) b_and!267361)))

(declare-fun b_lambda!107697 () Bool)

(assert (=> (not b_lambda!107697) (not d!1069098)))

(declare-fun t!295792 () Bool)

(declare-fun tb!209117 () Bool)

(assert (=> (and b!3635007 (= (toValue!8010 (transformation!5718 (h!43727 rules!3307))) (toValue!8010 (transformation!5718 (rule!8490 (_1!22218 lt!1257690))))) t!295792) tb!209117))

(declare-fun result!254726 () Bool)

(assert (=> tb!209117 (= result!254726 (inv!21 (dynLambda!16628 (toValue!8010 (transformation!5718 (rule!8490 (_1!22218 lt!1257690)))) (seqFromList!4267 (originalCharacters!6432 (_1!22218 lt!1257690))))))))

(declare-fun m!4137703 () Bool)

(assert (=> tb!209117 m!4137703))

(assert (=> d!1069098 t!295792))

(declare-fun b_and!267363 () Bool)

(assert (= b_and!267355 (and (=> t!295792 result!254726) b_and!267363)))

(declare-fun t!295794 () Bool)

(declare-fun tb!209119 () Bool)

(assert (=> (and b!3635018 (= (toValue!8010 (transformation!5718 anOtherTypeRule!33)) (toValue!8010 (transformation!5718 (rule!8490 (_1!22218 lt!1257690))))) t!295794) tb!209119))

(declare-fun result!254728 () Bool)

(assert (= result!254728 result!254726))

(assert (=> d!1069098 t!295794))

(declare-fun b_and!267365 () Bool)

(assert (= b_and!267357 (and (=> t!295794 result!254728) b_and!267365)))

(declare-fun t!295796 () Bool)

(declare-fun tb!209121 () Bool)

(assert (=> (and b!3635010 (= (toValue!8010 (transformation!5718 (rule!8490 token!511))) (toValue!8010 (transformation!5718 (rule!8490 (_1!22218 lt!1257690))))) t!295796) tb!209121))

(declare-fun result!254730 () Bool)

(assert (= result!254730 result!254726))

(assert (=> d!1069098 t!295796))

(declare-fun b_and!267367 () Bool)

(assert (= b_and!267359 (and (=> t!295796 result!254730) b_and!267367)))

(declare-fun t!295798 () Bool)

(declare-fun tb!209123 () Bool)

(assert (=> (and b!3635008 (= (toValue!8010 (transformation!5718 rule!403)) (toValue!8010 (transformation!5718 (rule!8490 (_1!22218 lt!1257690))))) t!295798) tb!209123))

(declare-fun result!254732 () Bool)

(assert (= result!254732 result!254726))

(assert (=> d!1069098 t!295798))

(declare-fun b_and!267369 () Bool)

(assert (= b_and!267361 (and (=> t!295798 result!254732) b_and!267369)))

(assert (=> d!1069098 m!4137117))

(declare-fun m!4137705 () Bool)

(assert (=> d!1069098 m!4137705))

(assert (=> d!1069098 m!4137173))

(assert (=> d!1069098 m!4137117))

(declare-fun m!4137707 () Bool)

(assert (=> d!1069098 m!4137707))

(assert (=> d!1069098 m!4137409))

(assert (=> d!1069098 m!4137117))

(declare-fun m!4137709 () Bool)

(assert (=> d!1069098 m!4137709))

(assert (=> b!3635016 d!1069098))

(declare-fun b!3635443 () Bool)

(declare-fun e!2250370 () Bool)

(assert (=> b!3635443 (= e!2250370 true)))

(declare-fun d!1069168 () Bool)

(assert (=> d!1069168 e!2250370))

(assert (= d!1069168 b!3635443))

(declare-fun lambda!124325 () Int)

(declare-fun order!21001 () Int)

(declare-fun dynLambda!16632 (Int Int) Int)

(assert (=> b!3635443 (< (dynLambda!16629 order!20995 (toValue!8010 (transformation!5718 (rule!8490 (_1!22218 lt!1257690))))) (dynLambda!16632 order!21001 lambda!124325))))

(assert (=> b!3635443 (< (dynLambda!16631 order!20999 (toChars!7869 (transformation!5718 (rule!8490 (_1!22218 lt!1257690))))) (dynLambda!16632 order!21001 lambda!124325))))

(assert (=> d!1069168 (= (list!14168 (dynLambda!16627 (toChars!7869 (transformation!5718 (rule!8490 (_1!22218 lt!1257690)))) (dynLambda!16628 (toValue!8010 (transformation!5718 (rule!8490 (_1!22218 lt!1257690)))) lt!1257691))) (list!14168 lt!1257691))))

(declare-fun lt!1257869 () Unit!55130)

(declare-fun ForallOf!687 (Int BalanceConc!22996) Unit!55130)

(assert (=> d!1069168 (= lt!1257869 (ForallOf!687 lambda!124325 lt!1257691))))

(assert (=> d!1069168 (= (lemmaSemiInverse!1467 (transformation!5718 (rule!8490 (_1!22218 lt!1257690))) lt!1257691) lt!1257869)))

(declare-fun b_lambda!107699 () Bool)

(assert (=> (not b_lambda!107699) (not d!1069168)))

(declare-fun t!295800 () Bool)

(declare-fun tb!209125 () Bool)

(assert (=> (and b!3635007 (= (toChars!7869 (transformation!5718 (h!43727 rules!3307))) (toChars!7869 (transformation!5718 (rule!8490 (_1!22218 lt!1257690))))) t!295800) tb!209125))

(declare-fun e!2250371 () Bool)

(declare-fun b!3635444 () Bool)

(declare-fun tp!1109522 () Bool)

(assert (=> b!3635444 (= e!2250371 (and (inv!51737 (c!628689 (dynLambda!16627 (toChars!7869 (transformation!5718 (rule!8490 (_1!22218 lt!1257690)))) (dynLambda!16628 (toValue!8010 (transformation!5718 (rule!8490 (_1!22218 lt!1257690)))) lt!1257691)))) tp!1109522))))

(declare-fun result!254734 () Bool)

(assert (=> tb!209125 (= result!254734 (and (inv!51738 (dynLambda!16627 (toChars!7869 (transformation!5718 (rule!8490 (_1!22218 lt!1257690)))) (dynLambda!16628 (toValue!8010 (transformation!5718 (rule!8490 (_1!22218 lt!1257690)))) lt!1257691))) e!2250371))))

(assert (= tb!209125 b!3635444))

(declare-fun m!4137711 () Bool)

(assert (=> b!3635444 m!4137711))

(declare-fun m!4137713 () Bool)

(assert (=> tb!209125 m!4137713))

(assert (=> d!1069168 t!295800))

(declare-fun b_and!267371 () Bool)

(assert (= b_and!267299 (and (=> t!295800 result!254734) b_and!267371)))

(declare-fun tb!209127 () Bool)

(declare-fun t!295802 () Bool)

(assert (=> (and b!3635018 (= (toChars!7869 (transformation!5718 anOtherTypeRule!33)) (toChars!7869 (transformation!5718 (rule!8490 (_1!22218 lt!1257690))))) t!295802) tb!209127))

(declare-fun result!254736 () Bool)

(assert (= result!254736 result!254734))

(assert (=> d!1069168 t!295802))

(declare-fun b_and!267373 () Bool)

(assert (= b_and!267301 (and (=> t!295802 result!254736) b_and!267373)))

(declare-fun t!295804 () Bool)

(declare-fun tb!209129 () Bool)

(assert (=> (and b!3635010 (= (toChars!7869 (transformation!5718 (rule!8490 token!511))) (toChars!7869 (transformation!5718 (rule!8490 (_1!22218 lt!1257690))))) t!295804) tb!209129))

(declare-fun result!254738 () Bool)

(assert (= result!254738 result!254734))

(assert (=> d!1069168 t!295804))

(declare-fun b_and!267375 () Bool)

(assert (= b_and!267303 (and (=> t!295804 result!254738) b_and!267375)))

(declare-fun t!295806 () Bool)

(declare-fun tb!209131 () Bool)

(assert (=> (and b!3635008 (= (toChars!7869 (transformation!5718 rule!403)) (toChars!7869 (transformation!5718 (rule!8490 (_1!22218 lt!1257690))))) t!295806) tb!209131))

(declare-fun result!254740 () Bool)

(assert (= result!254740 result!254734))

(assert (=> d!1069168 t!295806))

(declare-fun b_and!267377 () Bool)

(assert (= b_and!267305 (and (=> t!295806 result!254740) b_and!267377)))

(declare-fun b_lambda!107701 () Bool)

(assert (=> (not b_lambda!107701) (not d!1069168)))

(assert (=> d!1069168 t!295760))

(declare-fun b_and!267379 () Bool)

(assert (= b_and!267363 (and (=> t!295760 result!254692) b_and!267379)))

(assert (=> d!1069168 t!295762))

(declare-fun b_and!267381 () Bool)

(assert (= b_and!267365 (and (=> t!295762 result!254694) b_and!267381)))

(assert (=> d!1069168 t!295764))

(declare-fun b_and!267383 () Bool)

(assert (= b_and!267367 (and (=> t!295764 result!254696) b_and!267383)))

(assert (=> d!1069168 t!295766))

(declare-fun b_and!267385 () Bool)

(assert (= b_and!267369 (and (=> t!295766 result!254698) b_and!267385)))

(declare-fun m!4137715 () Bool)

(assert (=> d!1069168 m!4137715))

(declare-fun m!4137717 () Bool)

(assert (=> d!1069168 m!4137717))

(assert (=> d!1069168 m!4137409))

(assert (=> d!1069168 m!4137715))

(assert (=> d!1069168 m!4137173))

(assert (=> d!1069168 m!4137409))

(declare-fun m!4137719 () Bool)

(assert (=> d!1069168 m!4137719))

(assert (=> b!3635016 d!1069168))

(declare-fun d!1069170 () Bool)

(declare-fun lt!1257872 () Int)

(assert (=> d!1069170 (= lt!1257872 (size!29233 (list!14168 lt!1257691)))))

(declare-fun size!29234 (Conc!11691) Int)

(assert (=> d!1069170 (= lt!1257872 (size!29234 (c!628689 lt!1257691)))))

(assert (=> d!1069170 (= (size!29232 lt!1257691) lt!1257872)))

(declare-fun bs!571785 () Bool)

(assert (= bs!571785 d!1069170))

(assert (=> bs!571785 m!4137173))

(assert (=> bs!571785 m!4137173))

(declare-fun m!4137721 () Bool)

(assert (=> bs!571785 m!4137721))

(declare-fun m!4137723 () Bool)

(assert (=> bs!571785 m!4137723))

(assert (=> b!3635016 d!1069170))

(declare-fun d!1069172 () Bool)

(assert (=> d!1069172 (= (size!29231 (_1!22218 lt!1257690)) (size!29233 (originalCharacters!6432 (_1!22218 lt!1257690))))))

(declare-fun Unit!55134 () Unit!55130)

(assert (=> d!1069172 (= (lemmaCharactersSize!763 (_1!22218 lt!1257690)) Unit!55134)))

(declare-fun bs!571786 () Bool)

(assert (= bs!571786 d!1069172))

(declare-fun m!4137725 () Bool)

(assert (=> bs!571786 m!4137725))

(assert (=> b!3635016 d!1069172))

(declare-fun d!1069174 () Bool)

(assert (=> d!1069174 (= (inv!51730 (tag!6456 (rule!8490 token!511))) (= (mod (str.len (value!183422 (tag!6456 (rule!8490 token!511)))) 2) 0))))

(assert (=> b!3635017 d!1069174))

(declare-fun d!1069176 () Bool)

(declare-fun res!1472759 () Bool)

(declare-fun e!2250372 () Bool)

(assert (=> d!1069176 (=> (not res!1472759) (not e!2250372))))

(assert (=> d!1069176 (= res!1472759 (semiInverseModEq!2430 (toChars!7869 (transformation!5718 (rule!8490 token!511))) (toValue!8010 (transformation!5718 (rule!8490 token!511)))))))

(assert (=> d!1069176 (= (inv!51733 (transformation!5718 (rule!8490 token!511))) e!2250372)))

(declare-fun b!3635445 () Bool)

(assert (=> b!3635445 (= e!2250372 (equivClasses!2329 (toChars!7869 (transformation!5718 (rule!8490 token!511))) (toValue!8010 (transformation!5718 (rule!8490 token!511)))))))

(assert (= (and d!1069176 res!1472759) b!3635445))

(declare-fun m!4137727 () Bool)

(assert (=> d!1069176 m!4137727))

(declare-fun m!4137729 () Bool)

(assert (=> b!3635445 m!4137729))

(assert (=> b!3635017 d!1069176))

(declare-fun d!1069178 () Bool)

(declare-fun lt!1257875 () Bool)

(declare-fun content!5502 (List!38430) (InoxSet C!21140))

(assert (=> d!1069178 (= lt!1257875 (select (content!5502 (usedCharacters!930 (regex!5718 rule!403))) lt!1257675))))

(declare-fun e!2250378 () Bool)

(assert (=> d!1069178 (= lt!1257875 e!2250378)))

(declare-fun res!1472765 () Bool)

(assert (=> d!1069178 (=> (not res!1472765) (not e!2250378))))

(assert (=> d!1069178 (= res!1472765 ((_ is Cons!38306) (usedCharacters!930 (regex!5718 rule!403))))))

(assert (=> d!1069178 (= (contains!7502 (usedCharacters!930 (regex!5718 rule!403)) lt!1257675) lt!1257875)))

(declare-fun b!3635450 () Bool)

(declare-fun e!2250377 () Bool)

(assert (=> b!3635450 (= e!2250378 e!2250377)))

(declare-fun res!1472764 () Bool)

(assert (=> b!3635450 (=> res!1472764 e!2250377)))

(assert (=> b!3635450 (= res!1472764 (= (h!43726 (usedCharacters!930 (regex!5718 rule!403))) lt!1257675))))

(declare-fun b!3635451 () Bool)

(assert (=> b!3635451 (= e!2250377 (contains!7502 (t!295733 (usedCharacters!930 (regex!5718 rule!403))) lt!1257675))))

(assert (= (and d!1069178 res!1472765) b!3635450))

(assert (= (and b!3635450 (not res!1472764)) b!3635451))

(assert (=> d!1069178 m!4137103))

(declare-fun m!4137731 () Bool)

(assert (=> d!1069178 m!4137731))

(declare-fun m!4137733 () Bool)

(assert (=> d!1069178 m!4137733))

(declare-fun m!4137735 () Bool)

(assert (=> b!3635451 m!4137735))

(assert (=> b!3635028 d!1069178))

(declare-fun b!3635468 () Bool)

(declare-fun e!2250388 () List!38430)

(assert (=> b!3635468 (= e!2250388 Nil!38306)))

(declare-fun call!262880 () List!38430)

(declare-fun bm!262873 () Bool)

(declare-fun call!262879 () List!38430)

(declare-fun c!628787 () Bool)

(declare-fun call!262878 () List!38430)

(assert (=> bm!262873 (= call!262878 (++!9534 (ite c!628787 call!262879 call!262880) (ite c!628787 call!262880 call!262879)))))

(declare-fun b!3635469 () Bool)

(declare-fun e!2250390 () List!38430)

(assert (=> b!3635469 (= e!2250388 e!2250390)))

(declare-fun c!628784 () Bool)

(assert (=> b!3635469 (= c!628784 ((_ is ElementMatch!10477) (regex!5718 rule!403)))))

(declare-fun bm!262874 () Bool)

(declare-fun call!262881 () List!38430)

(assert (=> bm!262874 (= call!262879 call!262881)))

(declare-fun bm!262875 () Bool)

(assert (=> bm!262875 (= call!262880 (usedCharacters!930 (ite c!628787 (regTwo!21467 (regex!5718 rule!403)) (regOne!21466 (regex!5718 rule!403)))))))

(declare-fun bm!262876 () Bool)

(declare-fun c!628786 () Bool)

(assert (=> bm!262876 (= call!262881 (usedCharacters!930 (ite c!628786 (reg!10806 (regex!5718 rule!403)) (ite c!628787 (regOne!21467 (regex!5718 rule!403)) (regTwo!21466 (regex!5718 rule!403))))))))

(declare-fun b!3635470 () Bool)

(declare-fun e!2250387 () List!38430)

(assert (=> b!3635470 (= e!2250387 call!262881)))

(declare-fun d!1069180 () Bool)

(declare-fun c!628785 () Bool)

(assert (=> d!1069180 (= c!628785 (or ((_ is EmptyExpr!10477) (regex!5718 rule!403)) ((_ is EmptyLang!10477) (regex!5718 rule!403))))))

(assert (=> d!1069180 (= (usedCharacters!930 (regex!5718 rule!403)) e!2250388)))

(declare-fun b!3635471 () Bool)

(assert (=> b!3635471 (= c!628786 ((_ is Star!10477) (regex!5718 rule!403)))))

(assert (=> b!3635471 (= e!2250390 e!2250387)))

(declare-fun b!3635472 () Bool)

(assert (=> b!3635472 (= e!2250390 (Cons!38306 (c!628688 (regex!5718 rule!403)) Nil!38306))))

(declare-fun b!3635473 () Bool)

(declare-fun e!2250389 () List!38430)

(assert (=> b!3635473 (= e!2250387 e!2250389)))

(assert (=> b!3635473 (= c!628787 ((_ is Union!10477) (regex!5718 rule!403)))))

(declare-fun b!3635474 () Bool)

(assert (=> b!3635474 (= e!2250389 call!262878)))

(declare-fun b!3635475 () Bool)

(assert (=> b!3635475 (= e!2250389 call!262878)))

(assert (= (and d!1069180 c!628785) b!3635468))

(assert (= (and d!1069180 (not c!628785)) b!3635469))

(assert (= (and b!3635469 c!628784) b!3635472))

(assert (= (and b!3635469 (not c!628784)) b!3635471))

(assert (= (and b!3635471 c!628786) b!3635470))

(assert (= (and b!3635471 (not c!628786)) b!3635473))

(assert (= (and b!3635473 c!628787) b!3635474))

(assert (= (and b!3635473 (not c!628787)) b!3635475))

(assert (= (or b!3635474 b!3635475) bm!262874))

(assert (= (or b!3635474 b!3635475) bm!262875))

(assert (= (or b!3635474 b!3635475) bm!262873))

(assert (= (or b!3635470 bm!262874) bm!262876))

(declare-fun m!4137737 () Bool)

(assert (=> bm!262873 m!4137737))

(declare-fun m!4137739 () Bool)

(assert (=> bm!262875 m!4137739))

(declare-fun m!4137741 () Bool)

(assert (=> bm!262876 m!4137741))

(assert (=> b!3635028 d!1069180))

(declare-fun d!1069182 () Bool)

(assert (=> d!1069182 (= (head!7706 suffix!1395) (h!43726 suffix!1395))))

(assert (=> b!3635028 d!1069182))

(declare-fun d!1069184 () Bool)

(declare-fun res!1472770 () Bool)

(declare-fun e!2250395 () Bool)

(assert (=> d!1069184 (=> res!1472770 e!2250395)))

(assert (=> d!1069184 (= res!1472770 (not ((_ is Cons!38307) rules!3307)))))

(assert (=> d!1069184 (= (sepAndNonSepRulesDisjointChars!1886 rules!3307 rules!3307) e!2250395)))

(declare-fun b!3635480 () Bool)

(declare-fun e!2250396 () Bool)

(assert (=> b!3635480 (= e!2250395 e!2250396)))

(declare-fun res!1472771 () Bool)

(assert (=> b!3635480 (=> (not res!1472771) (not e!2250396))))

(declare-fun ruleDisjointCharsFromAllFromOtherType!855 (Rule!11236 List!38431) Bool)

(assert (=> b!3635480 (= res!1472771 (ruleDisjointCharsFromAllFromOtherType!855 (h!43727 rules!3307) rules!3307))))

(declare-fun b!3635481 () Bool)

(assert (=> b!3635481 (= e!2250396 (sepAndNonSepRulesDisjointChars!1886 rules!3307 (t!295734 rules!3307)))))

(assert (= (and d!1069184 (not res!1472770)) b!3635480))

(assert (= (and b!3635480 res!1472771) b!3635481))

(declare-fun m!4137743 () Bool)

(assert (=> b!3635480 m!4137743))

(declare-fun m!4137745 () Bool)

(assert (=> b!3635481 m!4137745))

(assert (=> b!3635013 d!1069184))

(declare-fun b!3635482 () Bool)

(declare-fun e!2250399 () Bool)

(assert (=> b!3635482 (= e!2250399 (= (head!7706 lt!1257688) (c!628688 (regex!5718 (rule!8490 (_1!22218 lt!1257690))))))))

(declare-fun b!3635484 () Bool)

(declare-fun e!2250397 () Bool)

(declare-fun e!2250400 () Bool)

(assert (=> b!3635484 (= e!2250397 e!2250400)))

(declare-fun c!628789 () Bool)

(assert (=> b!3635484 (= c!628789 ((_ is EmptyLang!10477) (regex!5718 (rule!8490 (_1!22218 lt!1257690)))))))

(declare-fun b!3635485 () Bool)

(declare-fun res!1472779 () Bool)

(declare-fun e!2250402 () Bool)

(assert (=> b!3635485 (=> res!1472779 e!2250402)))

(assert (=> b!3635485 (= res!1472779 (not (isEmpty!22668 (tail!5629 lt!1257688))))))

(declare-fun b!3635486 () Bool)

(declare-fun e!2250398 () Bool)

(assert (=> b!3635486 (= e!2250398 (nullable!3631 (regex!5718 (rule!8490 (_1!22218 lt!1257690)))))))

(declare-fun b!3635487 () Bool)

(declare-fun e!2250401 () Bool)

(declare-fun e!2250403 () Bool)

(assert (=> b!3635487 (= e!2250401 e!2250403)))

(declare-fun res!1472776 () Bool)

(assert (=> b!3635487 (=> (not res!1472776) (not e!2250403))))

(declare-fun lt!1257876 () Bool)

(assert (=> b!3635487 (= res!1472776 (not lt!1257876))))

(declare-fun b!3635488 () Bool)

(declare-fun res!1472773 () Bool)

(assert (=> b!3635488 (=> res!1472773 e!2250401)))

(assert (=> b!3635488 (= res!1472773 (not ((_ is ElementMatch!10477) (regex!5718 (rule!8490 (_1!22218 lt!1257690))))))))

(assert (=> b!3635488 (= e!2250400 e!2250401)))

(declare-fun b!3635489 () Bool)

(declare-fun res!1472772 () Bool)

(assert (=> b!3635489 (=> (not res!1472772) (not e!2250399))))

(declare-fun call!262882 () Bool)

(assert (=> b!3635489 (= res!1472772 (not call!262882))))

(declare-fun b!3635490 () Bool)

(assert (=> b!3635490 (= e!2250397 (= lt!1257876 call!262882))))

(declare-fun b!3635491 () Bool)

(declare-fun res!1472777 () Bool)

(assert (=> b!3635491 (=> res!1472777 e!2250401)))

(assert (=> b!3635491 (= res!1472777 e!2250399)))

(declare-fun res!1472775 () Bool)

(assert (=> b!3635491 (=> (not res!1472775) (not e!2250399))))

(assert (=> b!3635491 (= res!1472775 lt!1257876)))

(declare-fun b!3635492 () Bool)

(assert (=> b!3635492 (= e!2250398 (matchR!5046 (derivativeStep!3180 (regex!5718 (rule!8490 (_1!22218 lt!1257690))) (head!7706 lt!1257688)) (tail!5629 lt!1257688)))))

(declare-fun b!3635483 () Bool)

(assert (=> b!3635483 (= e!2250403 e!2250402)))

(declare-fun res!1472778 () Bool)

(assert (=> b!3635483 (=> res!1472778 e!2250402)))

(assert (=> b!3635483 (= res!1472778 call!262882)))

(declare-fun d!1069186 () Bool)

(assert (=> d!1069186 e!2250397))

(declare-fun c!628790 () Bool)

(assert (=> d!1069186 (= c!628790 ((_ is EmptyExpr!10477) (regex!5718 (rule!8490 (_1!22218 lt!1257690)))))))

(assert (=> d!1069186 (= lt!1257876 e!2250398)))

(declare-fun c!628788 () Bool)

(assert (=> d!1069186 (= c!628788 (isEmpty!22668 lt!1257688))))

(assert (=> d!1069186 (validRegex!4793 (regex!5718 (rule!8490 (_1!22218 lt!1257690))))))

(assert (=> d!1069186 (= (matchR!5046 (regex!5718 (rule!8490 (_1!22218 lt!1257690))) lt!1257688) lt!1257876)))

(declare-fun b!3635493 () Bool)

(assert (=> b!3635493 (= e!2250402 (not (= (head!7706 lt!1257688) (c!628688 (regex!5718 (rule!8490 (_1!22218 lt!1257690)))))))))

(declare-fun b!3635494 () Bool)

(declare-fun res!1472774 () Bool)

(assert (=> b!3635494 (=> (not res!1472774) (not e!2250399))))

(assert (=> b!3635494 (= res!1472774 (isEmpty!22668 (tail!5629 lt!1257688)))))

(declare-fun b!3635495 () Bool)

(assert (=> b!3635495 (= e!2250400 (not lt!1257876))))

(declare-fun bm!262877 () Bool)

(assert (=> bm!262877 (= call!262882 (isEmpty!22668 lt!1257688))))

(assert (= (and d!1069186 c!628788) b!3635486))

(assert (= (and d!1069186 (not c!628788)) b!3635492))

(assert (= (and d!1069186 c!628790) b!3635490))

(assert (= (and d!1069186 (not c!628790)) b!3635484))

(assert (= (and b!3635484 c!628789) b!3635495))

(assert (= (and b!3635484 (not c!628789)) b!3635488))

(assert (= (and b!3635488 (not res!1472773)) b!3635491))

(assert (= (and b!3635491 res!1472775) b!3635489))

(assert (= (and b!3635489 res!1472772) b!3635494))

(assert (= (and b!3635494 res!1472774) b!3635482))

(assert (= (and b!3635491 (not res!1472777)) b!3635487))

(assert (= (and b!3635487 res!1472776) b!3635483))

(assert (= (and b!3635483 (not res!1472778)) b!3635485))

(assert (= (and b!3635485 (not res!1472779)) b!3635493))

(assert (= (or b!3635490 b!3635483 b!3635489) bm!262877))

(declare-fun m!4137747 () Bool)

(assert (=> b!3635492 m!4137747))

(assert (=> b!3635492 m!4137747))

(declare-fun m!4137749 () Bool)

(assert (=> b!3635492 m!4137749))

(declare-fun m!4137751 () Bool)

(assert (=> b!3635492 m!4137751))

(assert (=> b!3635492 m!4137749))

(assert (=> b!3635492 m!4137751))

(declare-fun m!4137753 () Bool)

(assert (=> b!3635492 m!4137753))

(assert (=> b!3635482 m!4137747))

(assert (=> b!3635494 m!4137751))

(assert (=> b!3635494 m!4137751))

(declare-fun m!4137755 () Bool)

(assert (=> b!3635494 m!4137755))

(declare-fun m!4137757 () Bool)

(assert (=> d!1069186 m!4137757))

(declare-fun m!4137759 () Bool)

(assert (=> d!1069186 m!4137759))

(assert (=> b!3635493 m!4137747))

(declare-fun m!4137761 () Bool)

(assert (=> b!3635486 m!4137761))

(assert (=> bm!262877 m!4137757))

(assert (=> b!3635485 m!4137751))

(assert (=> b!3635485 m!4137751))

(assert (=> b!3635485 m!4137755))

(assert (=> b!3635003 d!1069186))

(declare-fun d!1069188 () Bool)

(declare-fun lt!1257877 () Bool)

(assert (=> d!1069188 (= lt!1257877 (select (content!5501 rules!3307) rule!403))))

(declare-fun e!2250405 () Bool)

(assert (=> d!1069188 (= lt!1257877 e!2250405)))

(declare-fun res!1472781 () Bool)

(assert (=> d!1069188 (=> (not res!1472781) (not e!2250405))))

(assert (=> d!1069188 (= res!1472781 ((_ is Cons!38307) rules!3307))))

(assert (=> d!1069188 (= (contains!7501 rules!3307 rule!403) lt!1257877)))

(declare-fun b!3635496 () Bool)

(declare-fun e!2250404 () Bool)

(assert (=> b!3635496 (= e!2250405 e!2250404)))

(declare-fun res!1472780 () Bool)

(assert (=> b!3635496 (=> res!1472780 e!2250404)))

(assert (=> b!3635496 (= res!1472780 (= (h!43727 rules!3307) rule!403))))

(declare-fun b!3635497 () Bool)

(assert (=> b!3635497 (= e!2250404 (contains!7501 (t!295734 rules!3307) rule!403))))

(assert (= (and d!1069188 res!1472781) b!3635496))

(assert (= (and b!3635496 (not res!1472780)) b!3635497))

(assert (=> d!1069188 m!4137383))

(declare-fun m!4137763 () Bool)

(assert (=> d!1069188 m!4137763))

(declare-fun m!4137765 () Bool)

(assert (=> b!3635497 m!4137765))

(assert (=> b!3635025 d!1069188))

(declare-fun b!3635498 () Bool)

(declare-fun e!2250408 () Bool)

(assert (=> b!3635498 (= e!2250408 (= (head!7706 lt!1257679) (c!628688 (regex!5718 rule!403))))))

(declare-fun b!3635500 () Bool)

(declare-fun e!2250406 () Bool)

(declare-fun e!2250409 () Bool)

(assert (=> b!3635500 (= e!2250406 e!2250409)))

(declare-fun c!628792 () Bool)

(assert (=> b!3635500 (= c!628792 ((_ is EmptyLang!10477) (regex!5718 rule!403)))))

(declare-fun b!3635501 () Bool)

(declare-fun res!1472789 () Bool)

(declare-fun e!2250411 () Bool)

(assert (=> b!3635501 (=> res!1472789 e!2250411)))

(assert (=> b!3635501 (= res!1472789 (not (isEmpty!22668 (tail!5629 lt!1257679))))))

(declare-fun b!3635502 () Bool)

(declare-fun e!2250407 () Bool)

(assert (=> b!3635502 (= e!2250407 (nullable!3631 (regex!5718 rule!403)))))

(declare-fun b!3635503 () Bool)

(declare-fun e!2250410 () Bool)

(declare-fun e!2250412 () Bool)

(assert (=> b!3635503 (= e!2250410 e!2250412)))

(declare-fun res!1472786 () Bool)

(assert (=> b!3635503 (=> (not res!1472786) (not e!2250412))))

(declare-fun lt!1257878 () Bool)

(assert (=> b!3635503 (= res!1472786 (not lt!1257878))))

(declare-fun b!3635504 () Bool)

(declare-fun res!1472783 () Bool)

(assert (=> b!3635504 (=> res!1472783 e!2250410)))

(assert (=> b!3635504 (= res!1472783 (not ((_ is ElementMatch!10477) (regex!5718 rule!403))))))

(assert (=> b!3635504 (= e!2250409 e!2250410)))

(declare-fun b!3635505 () Bool)

(declare-fun res!1472782 () Bool)

(assert (=> b!3635505 (=> (not res!1472782) (not e!2250408))))

(declare-fun call!262883 () Bool)

(assert (=> b!3635505 (= res!1472782 (not call!262883))))

(declare-fun b!3635506 () Bool)

(assert (=> b!3635506 (= e!2250406 (= lt!1257878 call!262883))))

(declare-fun b!3635507 () Bool)

(declare-fun res!1472787 () Bool)

(assert (=> b!3635507 (=> res!1472787 e!2250410)))

(assert (=> b!3635507 (= res!1472787 e!2250408)))

(declare-fun res!1472785 () Bool)

(assert (=> b!3635507 (=> (not res!1472785) (not e!2250408))))

(assert (=> b!3635507 (= res!1472785 lt!1257878)))

(declare-fun b!3635508 () Bool)

(assert (=> b!3635508 (= e!2250407 (matchR!5046 (derivativeStep!3180 (regex!5718 rule!403) (head!7706 lt!1257679)) (tail!5629 lt!1257679)))))

(declare-fun b!3635499 () Bool)

(assert (=> b!3635499 (= e!2250412 e!2250411)))

(declare-fun res!1472788 () Bool)

(assert (=> b!3635499 (=> res!1472788 e!2250411)))

(assert (=> b!3635499 (= res!1472788 call!262883)))

(declare-fun d!1069190 () Bool)

(assert (=> d!1069190 e!2250406))

(declare-fun c!628793 () Bool)

(assert (=> d!1069190 (= c!628793 ((_ is EmptyExpr!10477) (regex!5718 rule!403)))))

(assert (=> d!1069190 (= lt!1257878 e!2250407)))

(declare-fun c!628791 () Bool)

(assert (=> d!1069190 (= c!628791 (isEmpty!22668 lt!1257679))))

(assert (=> d!1069190 (validRegex!4793 (regex!5718 rule!403))))

(assert (=> d!1069190 (= (matchR!5046 (regex!5718 rule!403) lt!1257679) lt!1257878)))

(declare-fun b!3635509 () Bool)

(assert (=> b!3635509 (= e!2250411 (not (= (head!7706 lt!1257679) (c!628688 (regex!5718 rule!403)))))))

(declare-fun b!3635510 () Bool)

(declare-fun res!1472784 () Bool)

(assert (=> b!3635510 (=> (not res!1472784) (not e!2250408))))

(assert (=> b!3635510 (= res!1472784 (isEmpty!22668 (tail!5629 lt!1257679)))))

(declare-fun b!3635511 () Bool)

(assert (=> b!3635511 (= e!2250409 (not lt!1257878))))

(declare-fun bm!262878 () Bool)

(assert (=> bm!262878 (= call!262883 (isEmpty!22668 lt!1257679))))

(assert (= (and d!1069190 c!628791) b!3635502))

(assert (= (and d!1069190 (not c!628791)) b!3635508))

(assert (= (and d!1069190 c!628793) b!3635506))

(assert (= (and d!1069190 (not c!628793)) b!3635500))

(assert (= (and b!3635500 c!628792) b!3635511))

(assert (= (and b!3635500 (not c!628792)) b!3635504))

(assert (= (and b!3635504 (not res!1472783)) b!3635507))

(assert (= (and b!3635507 res!1472785) b!3635505))

(assert (= (and b!3635505 res!1472782) b!3635510))

(assert (= (and b!3635510 res!1472784) b!3635498))

(assert (= (and b!3635507 (not res!1472787)) b!3635503))

(assert (= (and b!3635503 res!1472786) b!3635499))

(assert (= (and b!3635499 (not res!1472788)) b!3635501))

(assert (= (and b!3635501 (not res!1472789)) b!3635509))

(assert (= (or b!3635506 b!3635499 b!3635505) bm!262878))

(declare-fun m!4137767 () Bool)

(assert (=> b!3635508 m!4137767))

(assert (=> b!3635508 m!4137767))

(declare-fun m!4137769 () Bool)

(assert (=> b!3635508 m!4137769))

(declare-fun m!4137771 () Bool)

(assert (=> b!3635508 m!4137771))

(assert (=> b!3635508 m!4137769))

(assert (=> b!3635508 m!4137771))

(declare-fun m!4137773 () Bool)

(assert (=> b!3635508 m!4137773))

(assert (=> b!3635498 m!4137767))

(assert (=> b!3635510 m!4137771))

(assert (=> b!3635510 m!4137771))

(declare-fun m!4137775 () Bool)

(assert (=> b!3635510 m!4137775))

(declare-fun m!4137777 () Bool)

(assert (=> d!1069190 m!4137777))

(declare-fun m!4137779 () Bool)

(assert (=> d!1069190 m!4137779))

(assert (=> b!3635509 m!4137767))

(declare-fun m!4137781 () Bool)

(assert (=> b!3635502 m!4137781))

(assert (=> bm!262878 m!4137777))

(assert (=> b!3635501 m!4137771))

(assert (=> b!3635501 m!4137771))

(assert (=> b!3635501 m!4137775))

(assert (=> b!3635014 d!1069190))

(declare-fun d!1069192 () Bool)

(declare-fun res!1472794 () Bool)

(declare-fun e!2250415 () Bool)

(assert (=> d!1069192 (=> (not res!1472794) (not e!2250415))))

(assert (=> d!1069192 (= res!1472794 (validRegex!4793 (regex!5718 rule!403)))))

(assert (=> d!1069192 (= (ruleValid!1982 thiss!23823 rule!403) e!2250415)))

(declare-fun b!3635516 () Bool)

(declare-fun res!1472795 () Bool)

(assert (=> b!3635516 (=> (not res!1472795) (not e!2250415))))

(assert (=> b!3635516 (= res!1472795 (not (nullable!3631 (regex!5718 rule!403))))))

(declare-fun b!3635517 () Bool)

(assert (=> b!3635517 (= e!2250415 (not (= (tag!6456 rule!403) (String!43075 ""))))))

(assert (= (and d!1069192 res!1472794) b!3635516))

(assert (= (and b!3635516 res!1472795) b!3635517))

(assert (=> d!1069192 m!4137779))

(assert (=> b!3635516 m!4137781))

(assert (=> b!3635014 d!1069192))

(declare-fun d!1069194 () Bool)

(assert (=> d!1069194 (ruleValid!1982 thiss!23823 rule!403)))

(declare-fun lt!1257881 () Unit!55130)

(declare-fun choose!21355 (LexerInterface!5307 Rule!11236 List!38431) Unit!55130)

(assert (=> d!1069194 (= lt!1257881 (choose!21355 thiss!23823 rule!403 rules!3307))))

(assert (=> d!1069194 (contains!7501 rules!3307 rule!403)))

(assert (=> d!1069194 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1136 thiss!23823 rule!403 rules!3307) lt!1257881)))

(declare-fun bs!571787 () Bool)

(assert (= bs!571787 d!1069194))

(assert (=> bs!571787 m!4137141))

(declare-fun m!4137783 () Bool)

(assert (=> bs!571787 m!4137783))

(assert (=> bs!571787 m!4137153))

(assert (=> b!3635014 d!1069194))

(declare-fun d!1069196 () Bool)

(assert (=> d!1069196 (= (isDefined!6297 lt!1257689) (not (isEmpty!22672 lt!1257689)))))

(declare-fun bs!571788 () Bool)

(assert (= bs!571788 d!1069196))

(declare-fun m!4137785 () Bool)

(assert (=> bs!571788 m!4137785))

(assert (=> b!3635015 d!1069196))

(declare-fun b!3635536 () Bool)

(declare-fun res!1472816 () Bool)

(declare-fun e!2250422 () Bool)

(assert (=> b!3635536 (=> (not res!1472816) (not e!2250422))))

(declare-fun lt!1257896 () Option!8065)

(assert (=> b!3635536 (= res!1472816 (= (value!183423 (_1!22218 (get!12533 lt!1257896))) (apply!9220 (transformation!5718 (rule!8490 (_1!22218 (get!12533 lt!1257896)))) (seqFromList!4267 (originalCharacters!6432 (_1!22218 (get!12533 lt!1257896)))))))))

(declare-fun b!3635537 () Bool)

(declare-fun res!1472810 () Bool)

(assert (=> b!3635537 (=> (not res!1472810) (not e!2250422))))

(assert (=> b!3635537 (= res!1472810 (= (++!9534 (list!14168 (charsOf!3732 (_1!22218 (get!12533 lt!1257896)))) (_2!22218 (get!12533 lt!1257896))) lt!1257679))))

(declare-fun b!3635538 () Bool)

(declare-fun res!1472814 () Bool)

(assert (=> b!3635538 (=> (not res!1472814) (not e!2250422))))

(assert (=> b!3635538 (= res!1472814 (matchR!5046 (regex!5718 (rule!8490 (_1!22218 (get!12533 lt!1257896)))) (list!14168 (charsOf!3732 (_1!22218 (get!12533 lt!1257896))))))))

(declare-fun b!3635539 () Bool)

(assert (=> b!3635539 (= e!2250422 (contains!7501 rules!3307 (rule!8490 (_1!22218 (get!12533 lt!1257896)))))))

(declare-fun b!3635540 () Bool)

(declare-fun e!2250424 () Option!8065)

(declare-fun call!262886 () Option!8065)

(assert (=> b!3635540 (= e!2250424 call!262886)))

(declare-fun b!3635541 () Bool)

(declare-fun res!1472812 () Bool)

(assert (=> b!3635541 (=> (not res!1472812) (not e!2250422))))

(assert (=> b!3635541 (= res!1472812 (< (size!29233 (_2!22218 (get!12533 lt!1257896))) (size!29233 lt!1257679)))))

(declare-fun b!3635542 () Bool)

(declare-fun res!1472811 () Bool)

(assert (=> b!3635542 (=> (not res!1472811) (not e!2250422))))

(assert (=> b!3635542 (= res!1472811 (= (list!14168 (charsOf!3732 (_1!22218 (get!12533 lt!1257896)))) (originalCharacters!6432 (_1!22218 (get!12533 lt!1257896)))))))

(declare-fun b!3635543 () Bool)

(declare-fun e!2250423 () Bool)

(assert (=> b!3635543 (= e!2250423 e!2250422)))

(declare-fun res!1472815 () Bool)

(assert (=> b!3635543 (=> (not res!1472815) (not e!2250422))))

(assert (=> b!3635543 (= res!1472815 (isDefined!6297 lt!1257896))))

(declare-fun bm!262881 () Bool)

(assert (=> bm!262881 (= call!262886 (maxPrefixOneRule!1979 thiss!23823 (h!43727 rules!3307) lt!1257679))))

(declare-fun d!1069198 () Bool)

(assert (=> d!1069198 e!2250423))

(declare-fun res!1472813 () Bool)

(assert (=> d!1069198 (=> res!1472813 e!2250423)))

(assert (=> d!1069198 (= res!1472813 (isEmpty!22672 lt!1257896))))

(assert (=> d!1069198 (= lt!1257896 e!2250424)))

(declare-fun c!628796 () Bool)

(assert (=> d!1069198 (= c!628796 (and ((_ is Cons!38307) rules!3307) ((_ is Nil!38307) (t!295734 rules!3307))))))

(declare-fun lt!1257893 () Unit!55130)

(declare-fun lt!1257894 () Unit!55130)

(assert (=> d!1069198 (= lt!1257893 lt!1257894)))

(assert (=> d!1069198 (isPrefix!3081 lt!1257679 lt!1257679)))

(declare-fun lemmaIsPrefixRefl!1952 (List!38430 List!38430) Unit!55130)

(assert (=> d!1069198 (= lt!1257894 (lemmaIsPrefixRefl!1952 lt!1257679 lt!1257679))))

(declare-fun rulesValidInductive!2017 (LexerInterface!5307 List!38431) Bool)

(assert (=> d!1069198 (rulesValidInductive!2017 thiss!23823 rules!3307)))

(assert (=> d!1069198 (= (maxPrefix!2841 thiss!23823 rules!3307 lt!1257679) lt!1257896)))

(declare-fun b!3635544 () Bool)

(declare-fun lt!1257892 () Option!8065)

(declare-fun lt!1257895 () Option!8065)

(assert (=> b!3635544 (= e!2250424 (ite (and ((_ is None!8064) lt!1257892) ((_ is None!8064) lt!1257895)) None!8064 (ite ((_ is None!8064) lt!1257895) lt!1257892 (ite ((_ is None!8064) lt!1257892) lt!1257895 (ite (>= (size!29231 (_1!22218 (v!37872 lt!1257892))) (size!29231 (_1!22218 (v!37872 lt!1257895)))) lt!1257892 lt!1257895)))))))

(assert (=> b!3635544 (= lt!1257892 call!262886)))

(assert (=> b!3635544 (= lt!1257895 (maxPrefix!2841 thiss!23823 (t!295734 rules!3307) lt!1257679))))

(assert (= (and d!1069198 c!628796) b!3635540))

(assert (= (and d!1069198 (not c!628796)) b!3635544))

(assert (= (or b!3635540 b!3635544) bm!262881))

(assert (= (and d!1069198 (not res!1472813)) b!3635543))

(assert (= (and b!3635543 res!1472815) b!3635542))

(assert (= (and b!3635542 res!1472811) b!3635541))

(assert (= (and b!3635541 res!1472812) b!3635537))

(assert (= (and b!3635537 res!1472810) b!3635536))

(assert (= (and b!3635536 res!1472816) b!3635538))

(assert (= (and b!3635538 res!1472814) b!3635539))

(declare-fun m!4137787 () Bool)

(assert (=> bm!262881 m!4137787))

(declare-fun m!4137789 () Bool)

(assert (=> b!3635536 m!4137789))

(declare-fun m!4137791 () Bool)

(assert (=> b!3635536 m!4137791))

(assert (=> b!3635536 m!4137791))

(declare-fun m!4137793 () Bool)

(assert (=> b!3635536 m!4137793))

(assert (=> b!3635537 m!4137789))

(declare-fun m!4137795 () Bool)

(assert (=> b!3635537 m!4137795))

(assert (=> b!3635537 m!4137795))

(declare-fun m!4137797 () Bool)

(assert (=> b!3635537 m!4137797))

(assert (=> b!3635537 m!4137797))

(declare-fun m!4137799 () Bool)

(assert (=> b!3635537 m!4137799))

(declare-fun m!4137801 () Bool)

(assert (=> d!1069198 m!4137801))

(declare-fun m!4137803 () Bool)

(assert (=> d!1069198 m!4137803))

(declare-fun m!4137805 () Bool)

(assert (=> d!1069198 m!4137805))

(declare-fun m!4137807 () Bool)

(assert (=> d!1069198 m!4137807))

(declare-fun m!4137809 () Bool)

(assert (=> b!3635543 m!4137809))

(assert (=> b!3635542 m!4137789))

(assert (=> b!3635542 m!4137795))

(assert (=> b!3635542 m!4137795))

(assert (=> b!3635542 m!4137797))

(assert (=> b!3635541 m!4137789))

(declare-fun m!4137811 () Bool)

(assert (=> b!3635541 m!4137811))

(declare-fun m!4137813 () Bool)

(assert (=> b!3635541 m!4137813))

(assert (=> b!3635538 m!4137789))

(assert (=> b!3635538 m!4137795))

(assert (=> b!3635538 m!4137795))

(assert (=> b!3635538 m!4137797))

(assert (=> b!3635538 m!4137797))

(declare-fun m!4137815 () Bool)

(assert (=> b!3635538 m!4137815))

(assert (=> b!3635539 m!4137789))

(declare-fun m!4137817 () Bool)

(assert (=> b!3635539 m!4137817))

(declare-fun m!4137819 () Bool)

(assert (=> b!3635544 m!4137819))

(assert (=> b!3635015 d!1069198))

(declare-fun d!1069200 () Bool)

(assert (=> d!1069200 (= (list!14168 (charsOf!3732 token!511)) (list!14170 (c!628689 (charsOf!3732 token!511))))))

(declare-fun bs!571789 () Bool)

(assert (= bs!571789 d!1069200))

(declare-fun m!4137821 () Bool)

(assert (=> bs!571789 m!4137821))

(assert (=> b!3635015 d!1069200))

(declare-fun d!1069202 () Bool)

(declare-fun lt!1257897 () BalanceConc!22996)

(assert (=> d!1069202 (= (list!14168 lt!1257897) (originalCharacters!6432 token!511))))

(assert (=> d!1069202 (= lt!1257897 (dynLambda!16627 (toChars!7869 (transformation!5718 (rule!8490 token!511))) (value!183423 token!511)))))

(assert (=> d!1069202 (= (charsOf!3732 token!511) lt!1257897)))

(declare-fun b_lambda!107703 () Bool)

(assert (=> (not b_lambda!107703) (not d!1069202)))

(declare-fun t!295808 () Bool)

(declare-fun tb!209133 () Bool)

(assert (=> (and b!3635007 (= (toChars!7869 (transformation!5718 (h!43727 rules!3307))) (toChars!7869 (transformation!5718 (rule!8490 token!511)))) t!295808) tb!209133))

(declare-fun b!3635545 () Bool)

(declare-fun e!2250425 () Bool)

(declare-fun tp!1109523 () Bool)

(assert (=> b!3635545 (= e!2250425 (and (inv!51737 (c!628689 (dynLambda!16627 (toChars!7869 (transformation!5718 (rule!8490 token!511))) (value!183423 token!511)))) tp!1109523))))

(declare-fun result!254742 () Bool)

(assert (=> tb!209133 (= result!254742 (and (inv!51738 (dynLambda!16627 (toChars!7869 (transformation!5718 (rule!8490 token!511))) (value!183423 token!511))) e!2250425))))

(assert (= tb!209133 b!3635545))

(declare-fun m!4137823 () Bool)

(assert (=> b!3635545 m!4137823))

(declare-fun m!4137825 () Bool)

(assert (=> tb!209133 m!4137825))

(assert (=> d!1069202 t!295808))

(declare-fun b_and!267387 () Bool)

(assert (= b_and!267371 (and (=> t!295808 result!254742) b_and!267387)))

(declare-fun tb!209135 () Bool)

(declare-fun t!295810 () Bool)

(assert (=> (and b!3635018 (= (toChars!7869 (transformation!5718 anOtherTypeRule!33)) (toChars!7869 (transformation!5718 (rule!8490 token!511)))) t!295810) tb!209135))

(declare-fun result!254744 () Bool)

(assert (= result!254744 result!254742))

(assert (=> d!1069202 t!295810))

(declare-fun b_and!267389 () Bool)

(assert (= b_and!267373 (and (=> t!295810 result!254744) b_and!267389)))

(declare-fun t!295812 () Bool)

(declare-fun tb!209137 () Bool)

(assert (=> (and b!3635010 (= (toChars!7869 (transformation!5718 (rule!8490 token!511))) (toChars!7869 (transformation!5718 (rule!8490 token!511)))) t!295812) tb!209137))

(declare-fun result!254746 () Bool)

(assert (= result!254746 result!254742))

(assert (=> d!1069202 t!295812))

(declare-fun b_and!267391 () Bool)

(assert (= b_and!267375 (and (=> t!295812 result!254746) b_and!267391)))

(declare-fun tb!209139 () Bool)

(declare-fun t!295814 () Bool)

(assert (=> (and b!3635008 (= (toChars!7869 (transformation!5718 rule!403)) (toChars!7869 (transformation!5718 (rule!8490 token!511)))) t!295814) tb!209139))

(declare-fun result!254748 () Bool)

(assert (= result!254748 result!254742))

(assert (=> d!1069202 t!295814))

(declare-fun b_and!267393 () Bool)

(assert (= b_and!267377 (and (=> t!295814 result!254748) b_and!267393)))

(declare-fun m!4137827 () Bool)

(assert (=> d!1069202 m!4137827))

(declare-fun m!4137829 () Bool)

(assert (=> d!1069202 m!4137829))

(assert (=> b!3635015 d!1069202))

(declare-fun d!1069204 () Bool)

(declare-fun res!1472819 () Bool)

(declare-fun e!2250428 () Bool)

(assert (=> d!1069204 (=> (not res!1472819) (not e!2250428))))

(declare-fun rulesValid!2188 (LexerInterface!5307 List!38431) Bool)

(assert (=> d!1069204 (= res!1472819 (rulesValid!2188 thiss!23823 rules!3307))))

(assert (=> d!1069204 (= (rulesInvariant!4704 thiss!23823 rules!3307) e!2250428)))

(declare-fun b!3635548 () Bool)

(declare-datatypes ((List!38434 0))(
  ( (Nil!38310) (Cons!38310 (h!43730 String!43074) (t!295857 List!38434)) )
))
(declare-fun noDuplicateTag!2184 (LexerInterface!5307 List!38431 List!38434) Bool)

(assert (=> b!3635548 (= e!2250428 (noDuplicateTag!2184 thiss!23823 rules!3307 Nil!38310))))

(assert (= (and d!1069204 res!1472819) b!3635548))

(declare-fun m!4137831 () Bool)

(assert (=> d!1069204 m!4137831))

(declare-fun m!4137833 () Bool)

(assert (=> b!3635548 m!4137833))

(assert (=> b!3635004 d!1069204))

(declare-fun d!1069206 () Bool)

(declare-fun lt!1257898 () Bool)

(assert (=> d!1069206 (= lt!1257898 (select (content!5502 (usedCharacters!930 (regex!5718 anOtherTypeRule!33))) lt!1257675))))

(declare-fun e!2250430 () Bool)

(assert (=> d!1069206 (= lt!1257898 e!2250430)))

(declare-fun res!1472821 () Bool)

(assert (=> d!1069206 (=> (not res!1472821) (not e!2250430))))

(assert (=> d!1069206 (= res!1472821 ((_ is Cons!38306) (usedCharacters!930 (regex!5718 anOtherTypeRule!33))))))

(assert (=> d!1069206 (= (contains!7502 (usedCharacters!930 (regex!5718 anOtherTypeRule!33)) lt!1257675) lt!1257898)))

(declare-fun b!3635549 () Bool)

(declare-fun e!2250429 () Bool)

(assert (=> b!3635549 (= e!2250430 e!2250429)))

(declare-fun res!1472820 () Bool)

(assert (=> b!3635549 (=> res!1472820 e!2250429)))

(assert (=> b!3635549 (= res!1472820 (= (h!43726 (usedCharacters!930 (regex!5718 anOtherTypeRule!33))) lt!1257675))))

(declare-fun b!3635550 () Bool)

(assert (=> b!3635550 (= e!2250429 (contains!7502 (t!295733 (usedCharacters!930 (regex!5718 anOtherTypeRule!33))) lt!1257675))))

(assert (= (and d!1069206 res!1472821) b!3635549))

(assert (= (and b!3635549 (not res!1472820)) b!3635550))

(assert (=> d!1069206 m!4137195))

(declare-fun m!4137835 () Bool)

(assert (=> d!1069206 m!4137835))

(declare-fun m!4137837 () Bool)

(assert (=> d!1069206 m!4137837))

(declare-fun m!4137839 () Bool)

(assert (=> b!3635550 m!4137839))

(assert (=> b!3635021 d!1069206))

(declare-fun b!3635551 () Bool)

(declare-fun e!2250432 () List!38430)

(assert (=> b!3635551 (= e!2250432 Nil!38306)))

(declare-fun call!262887 () List!38430)

(declare-fun call!262888 () List!38430)

(declare-fun bm!262882 () Bool)

(declare-fun call!262889 () List!38430)

(declare-fun c!628800 () Bool)

(assert (=> bm!262882 (= call!262887 (++!9534 (ite c!628800 call!262888 call!262889) (ite c!628800 call!262889 call!262888)))))

(declare-fun b!3635552 () Bool)

(declare-fun e!2250434 () List!38430)

(assert (=> b!3635552 (= e!2250432 e!2250434)))

(declare-fun c!628797 () Bool)

(assert (=> b!3635552 (= c!628797 ((_ is ElementMatch!10477) (regex!5718 anOtherTypeRule!33)))))

(declare-fun bm!262883 () Bool)

(declare-fun call!262890 () List!38430)

(assert (=> bm!262883 (= call!262888 call!262890)))

(declare-fun bm!262884 () Bool)

(assert (=> bm!262884 (= call!262889 (usedCharacters!930 (ite c!628800 (regTwo!21467 (regex!5718 anOtherTypeRule!33)) (regOne!21466 (regex!5718 anOtherTypeRule!33)))))))

(declare-fun bm!262885 () Bool)

(declare-fun c!628799 () Bool)

(assert (=> bm!262885 (= call!262890 (usedCharacters!930 (ite c!628799 (reg!10806 (regex!5718 anOtherTypeRule!33)) (ite c!628800 (regOne!21467 (regex!5718 anOtherTypeRule!33)) (regTwo!21466 (regex!5718 anOtherTypeRule!33))))))))

(declare-fun b!3635553 () Bool)

(declare-fun e!2250431 () List!38430)

(assert (=> b!3635553 (= e!2250431 call!262890)))

(declare-fun d!1069208 () Bool)

(declare-fun c!628798 () Bool)

(assert (=> d!1069208 (= c!628798 (or ((_ is EmptyExpr!10477) (regex!5718 anOtherTypeRule!33)) ((_ is EmptyLang!10477) (regex!5718 anOtherTypeRule!33))))))

(assert (=> d!1069208 (= (usedCharacters!930 (regex!5718 anOtherTypeRule!33)) e!2250432)))

(declare-fun b!3635554 () Bool)

(assert (=> b!3635554 (= c!628799 ((_ is Star!10477) (regex!5718 anOtherTypeRule!33)))))

(assert (=> b!3635554 (= e!2250434 e!2250431)))

(declare-fun b!3635555 () Bool)

(assert (=> b!3635555 (= e!2250434 (Cons!38306 (c!628688 (regex!5718 anOtherTypeRule!33)) Nil!38306))))

(declare-fun b!3635556 () Bool)

(declare-fun e!2250433 () List!38430)

(assert (=> b!3635556 (= e!2250431 e!2250433)))

(assert (=> b!3635556 (= c!628800 ((_ is Union!10477) (regex!5718 anOtherTypeRule!33)))))

(declare-fun b!3635557 () Bool)

(assert (=> b!3635557 (= e!2250433 call!262887)))

(declare-fun b!3635558 () Bool)

(assert (=> b!3635558 (= e!2250433 call!262887)))

(assert (= (and d!1069208 c!628798) b!3635551))

(assert (= (and d!1069208 (not c!628798)) b!3635552))

(assert (= (and b!3635552 c!628797) b!3635555))

(assert (= (and b!3635552 (not c!628797)) b!3635554))

(assert (= (and b!3635554 c!628799) b!3635553))

(assert (= (and b!3635554 (not c!628799)) b!3635556))

(assert (= (and b!3635556 c!628800) b!3635557))

(assert (= (and b!3635556 (not c!628800)) b!3635558))

(assert (= (or b!3635557 b!3635558) bm!262883))

(assert (= (or b!3635557 b!3635558) bm!262884))

(assert (= (or b!3635557 b!3635558) bm!262882))

(assert (= (or b!3635553 bm!262883) bm!262885))

(declare-fun m!4137841 () Bool)

(assert (=> bm!262882 m!4137841))

(declare-fun m!4137843 () Bool)

(assert (=> bm!262884 m!4137843))

(declare-fun m!4137845 () Bool)

(assert (=> bm!262885 m!4137845))

(assert (=> b!3635021 d!1069208))

(declare-fun d!1069210 () Bool)

(declare-fun res!1472826 () Bool)

(declare-fun e!2250437 () Bool)

(assert (=> d!1069210 (=> (not res!1472826) (not e!2250437))))

(assert (=> d!1069210 (= res!1472826 (not (isEmpty!22668 (originalCharacters!6432 token!511))))))

(assert (=> d!1069210 (= (inv!51734 token!511) e!2250437)))

(declare-fun b!3635563 () Bool)

(declare-fun res!1472827 () Bool)

(assert (=> b!3635563 (=> (not res!1472827) (not e!2250437))))

(assert (=> b!3635563 (= res!1472827 (= (originalCharacters!6432 token!511) (list!14168 (dynLambda!16627 (toChars!7869 (transformation!5718 (rule!8490 token!511))) (value!183423 token!511)))))))

(declare-fun b!3635564 () Bool)

(assert (=> b!3635564 (= e!2250437 (= (size!29231 token!511) (size!29233 (originalCharacters!6432 token!511))))))

(assert (= (and d!1069210 res!1472826) b!3635563))

(assert (= (and b!3635563 res!1472827) b!3635564))

(declare-fun b_lambda!107705 () Bool)

(assert (=> (not b_lambda!107705) (not b!3635563)))

(assert (=> b!3635563 t!295808))

(declare-fun b_and!267395 () Bool)

(assert (= b_and!267387 (and (=> t!295808 result!254742) b_and!267395)))

(assert (=> b!3635563 t!295810))

(declare-fun b_and!267397 () Bool)

(assert (= b_and!267389 (and (=> t!295810 result!254744) b_and!267397)))

(assert (=> b!3635563 t!295812))

(declare-fun b_and!267399 () Bool)

(assert (= b_and!267391 (and (=> t!295812 result!254746) b_and!267399)))

(assert (=> b!3635563 t!295814))

(declare-fun b_and!267401 () Bool)

(assert (= b_and!267393 (and (=> t!295814 result!254748) b_and!267401)))

(declare-fun m!4137847 () Bool)

(assert (=> d!1069210 m!4137847))

(assert (=> b!3635563 m!4137829))

(assert (=> b!3635563 m!4137829))

(declare-fun m!4137849 () Bool)

(assert (=> b!3635563 m!4137849))

(declare-fun m!4137851 () Bool)

(assert (=> b!3635564 m!4137851))

(assert (=> start!339114 d!1069210))

(declare-fun d!1069212 () Bool)

(assert (=> d!1069212 (= (isEmpty!22668 (_2!22218 lt!1257678)) ((_ is Nil!38306) (_2!22218 lt!1257678)))))

(assert (=> b!3635011 d!1069212))

(declare-fun d!1069214 () Bool)

(assert (=> d!1069214 (= (get!12533 lt!1257689) (v!37872 lt!1257689))))

(assert (=> b!3635032 d!1069214))

(declare-fun b!3635575 () Bool)

(declare-fun e!2250446 () Bool)

(assert (=> b!3635575 (= e!2250446 (isPrefix!3081 (tail!5629 lt!1257688) (tail!5629 lt!1257683)))))

(declare-fun b!3635574 () Bool)

(declare-fun res!1472838 () Bool)

(assert (=> b!3635574 (=> (not res!1472838) (not e!2250446))))

(assert (=> b!3635574 (= res!1472838 (= (head!7706 lt!1257688) (head!7706 lt!1257683)))))

(declare-fun d!1069216 () Bool)

(declare-fun e!2250444 () Bool)

(assert (=> d!1069216 e!2250444))

(declare-fun res!1472839 () Bool)

(assert (=> d!1069216 (=> res!1472839 e!2250444)))

(declare-fun lt!1257901 () Bool)

(assert (=> d!1069216 (= res!1472839 (not lt!1257901))))

(declare-fun e!2250445 () Bool)

(assert (=> d!1069216 (= lt!1257901 e!2250445)))

(declare-fun res!1472837 () Bool)

(assert (=> d!1069216 (=> res!1472837 e!2250445)))

(assert (=> d!1069216 (= res!1472837 ((_ is Nil!38306) lt!1257688))))

(assert (=> d!1069216 (= (isPrefix!3081 lt!1257688 lt!1257683) lt!1257901)))

(declare-fun b!3635573 () Bool)

(assert (=> b!3635573 (= e!2250445 e!2250446)))

(declare-fun res!1472836 () Bool)

(assert (=> b!3635573 (=> (not res!1472836) (not e!2250446))))

(assert (=> b!3635573 (= res!1472836 (not ((_ is Nil!38306) lt!1257683)))))

(declare-fun b!3635576 () Bool)

(assert (=> b!3635576 (= e!2250444 (>= (size!29233 lt!1257683) (size!29233 lt!1257688)))))

(assert (= (and d!1069216 (not res!1472837)) b!3635573))

(assert (= (and b!3635573 res!1472836) b!3635574))

(assert (= (and b!3635574 res!1472838) b!3635575))

(assert (= (and d!1069216 (not res!1472839)) b!3635576))

(assert (=> b!3635575 m!4137751))

(declare-fun m!4137853 () Bool)

(assert (=> b!3635575 m!4137853))

(assert (=> b!3635575 m!4137751))

(assert (=> b!3635575 m!4137853))

(declare-fun m!4137855 () Bool)

(assert (=> b!3635575 m!4137855))

(assert (=> b!3635574 m!4137747))

(declare-fun m!4137857 () Bool)

(assert (=> b!3635574 m!4137857))

(declare-fun m!4137859 () Bool)

(assert (=> b!3635576 m!4137859))

(assert (=> b!3635576 m!4137219))

(assert (=> b!3635012 d!1069216))

(declare-fun e!2250451 () Bool)

(declare-fun lt!1257904 () List!38430)

(declare-fun b!3635588 () Bool)

(assert (=> b!3635588 (= e!2250451 (or (not (= suffix!1395 Nil!38306)) (= lt!1257904 lt!1257679)))))

(declare-fun b!3635586 () Bool)

(declare-fun e!2250452 () List!38430)

(assert (=> b!3635586 (= e!2250452 (Cons!38306 (h!43726 lt!1257679) (++!9534 (t!295733 lt!1257679) suffix!1395)))))

(declare-fun d!1069218 () Bool)

(assert (=> d!1069218 e!2250451))

(declare-fun res!1472844 () Bool)

(assert (=> d!1069218 (=> (not res!1472844) (not e!2250451))))

(assert (=> d!1069218 (= res!1472844 (= (content!5502 lt!1257904) ((_ map or) (content!5502 lt!1257679) (content!5502 suffix!1395))))))

(assert (=> d!1069218 (= lt!1257904 e!2250452)))

(declare-fun c!628803 () Bool)

(assert (=> d!1069218 (= c!628803 ((_ is Nil!38306) lt!1257679))))

(assert (=> d!1069218 (= (++!9534 lt!1257679 suffix!1395) lt!1257904)))

(declare-fun b!3635585 () Bool)

(assert (=> b!3635585 (= e!2250452 suffix!1395)))

(declare-fun b!3635587 () Bool)

(declare-fun res!1472845 () Bool)

(assert (=> b!3635587 (=> (not res!1472845) (not e!2250451))))

(assert (=> b!3635587 (= res!1472845 (= (size!29233 lt!1257904) (+ (size!29233 lt!1257679) (size!29233 suffix!1395))))))

(assert (= (and d!1069218 c!628803) b!3635585))

(assert (= (and d!1069218 (not c!628803)) b!3635586))

(assert (= (and d!1069218 res!1472844) b!3635587))

(assert (= (and b!3635587 res!1472845) b!3635588))

(declare-fun m!4137861 () Bool)

(assert (=> b!3635586 m!4137861))

(declare-fun m!4137863 () Bool)

(assert (=> d!1069218 m!4137863))

(declare-fun m!4137865 () Bool)

(assert (=> d!1069218 m!4137865))

(declare-fun m!4137867 () Bool)

(assert (=> d!1069218 m!4137867))

(declare-fun m!4137869 () Bool)

(assert (=> b!3635587 m!4137869))

(assert (=> b!3635587 m!4137813))

(declare-fun m!4137871 () Bool)

(assert (=> b!3635587 m!4137871))

(assert (=> b!3635012 d!1069218))

(declare-fun d!1069220 () Bool)

(declare-fun e!2250455 () Bool)

(assert (=> d!1069220 e!2250455))

(declare-fun res!1472850 () Bool)

(assert (=> d!1069220 (=> (not res!1472850) (not e!2250455))))

(assert (=> d!1069220 (= res!1472850 (isDefined!6296 (getRuleFromTag!1322 thiss!23823 rules!3307 (tag!6456 (rule!8490 (_1!22218 lt!1257690))))))))

(declare-fun lt!1257907 () Unit!55130)

(declare-fun choose!21356 (LexerInterface!5307 List!38431 List!38430 Token!10802) Unit!55130)

(assert (=> d!1069220 (= lt!1257907 (choose!21356 thiss!23823 rules!3307 lt!1257694 (_1!22218 lt!1257690)))))

(assert (=> d!1069220 (rulesInvariant!4704 thiss!23823 rules!3307)))

(assert (=> d!1069220 (= (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1322 thiss!23823 rules!3307 lt!1257694 (_1!22218 lt!1257690)) lt!1257907)))

(declare-fun b!3635593 () Bool)

(declare-fun res!1472851 () Bool)

(assert (=> b!3635593 (=> (not res!1472851) (not e!2250455))))

(assert (=> b!3635593 (= res!1472851 (matchR!5046 (regex!5718 (get!12534 (getRuleFromTag!1322 thiss!23823 rules!3307 (tag!6456 (rule!8490 (_1!22218 lt!1257690)))))) (list!14168 (charsOf!3732 (_1!22218 lt!1257690)))))))

(declare-fun b!3635594 () Bool)

(assert (=> b!3635594 (= e!2250455 (= (rule!8490 (_1!22218 lt!1257690)) (get!12534 (getRuleFromTag!1322 thiss!23823 rules!3307 (tag!6456 (rule!8490 (_1!22218 lt!1257690)))))))))

(assert (= (and d!1069220 res!1472850) b!3635593))

(assert (= (and b!3635593 res!1472851) b!3635594))

(assert (=> d!1069220 m!4137185))

(assert (=> d!1069220 m!4137185))

(declare-fun m!4137873 () Bool)

(assert (=> d!1069220 m!4137873))

(declare-fun m!4137875 () Bool)

(assert (=> d!1069220 m!4137875))

(assert (=> d!1069220 m!4137131))

(assert (=> b!3635593 m!4137185))

(assert (=> b!3635593 m!4137145))

(assert (=> b!3635593 m!4137147))

(declare-fun m!4137877 () Bool)

(assert (=> b!3635593 m!4137877))

(assert (=> b!3635593 m!4137145))

(assert (=> b!3635593 m!4137147))

(assert (=> b!3635593 m!4137185))

(declare-fun m!4137879 () Bool)

(assert (=> b!3635593 m!4137879))

(assert (=> b!3635594 m!4137185))

(assert (=> b!3635594 m!4137185))

(assert (=> b!3635594 m!4137879))

(assert (=> b!3635012 d!1069220))

(declare-fun d!1069222 () Bool)

(assert (=> d!1069222 (= (get!12533 lt!1257687) (v!37872 lt!1257687))))

(assert (=> b!3635012 d!1069222))

(declare-fun d!1069224 () Bool)

(assert (=> d!1069224 (isPrefix!3081 lt!1257688 (++!9534 lt!1257688 (_2!22218 lt!1257690)))))

(declare-fun lt!1257910 () Unit!55130)

(declare-fun choose!21357 (List!38430 List!38430) Unit!55130)

(assert (=> d!1069224 (= lt!1257910 (choose!21357 lt!1257688 (_2!22218 lt!1257690)))))

(assert (=> d!1069224 (= (lemmaConcatTwoListThenFirstIsPrefix!2000 lt!1257688 (_2!22218 lt!1257690)) lt!1257910)))

(declare-fun bs!571790 () Bool)

(assert (= bs!571790 d!1069224))

(assert (=> bs!571790 m!4137165))

(assert (=> bs!571790 m!4137165))

(declare-fun m!4137881 () Bool)

(assert (=> bs!571790 m!4137881))

(declare-fun m!4137883 () Bool)

(assert (=> bs!571790 m!4137883))

(assert (=> b!3635012 d!1069224))

(assert (=> b!3635012 d!1069044))

(declare-fun d!1069226 () Bool)

(assert (=> d!1069226 (isPrefix!3081 lt!1257679 (++!9534 lt!1257679 suffix!1395))))

(declare-fun lt!1257911 () Unit!55130)

(assert (=> d!1069226 (= lt!1257911 (choose!21357 lt!1257679 suffix!1395))))

(assert (=> d!1069226 (= (lemmaConcatTwoListThenFirstIsPrefix!2000 lt!1257679 suffix!1395) lt!1257911)))

(declare-fun bs!571791 () Bool)

(assert (= bs!571791 d!1069226))

(assert (=> bs!571791 m!4137187))

(assert (=> bs!571791 m!4137187))

(declare-fun m!4137885 () Bool)

(assert (=> bs!571791 m!4137885))

(declare-fun m!4137887 () Bool)

(assert (=> bs!571791 m!4137887))

(assert (=> b!3635012 d!1069226))

(declare-fun d!1069228 () Bool)

(declare-fun isEmpty!22673 (Option!8064) Bool)

(assert (=> d!1069228 (= (isDefined!6296 lt!1257677) (not (isEmpty!22673 lt!1257677)))))

(declare-fun bs!571792 () Bool)

(assert (= bs!571792 d!1069228))

(declare-fun m!4137889 () Bool)

(assert (=> bs!571792 m!4137889))

(assert (=> b!3635012 d!1069228))

(declare-fun d!1069230 () Bool)

(assert (=> d!1069230 (= (list!14168 lt!1257691) (list!14170 (c!628689 lt!1257691)))))

(declare-fun bs!571793 () Bool)

(assert (= bs!571793 d!1069230))

(declare-fun m!4137891 () Bool)

(assert (=> bs!571793 m!4137891))

(assert (=> b!3635012 d!1069230))

(declare-fun b!3635597 () Bool)

(declare-fun e!2250458 () Bool)

(assert (=> b!3635597 (= e!2250458 (isPrefix!3081 (tail!5629 lt!1257688) (tail!5629 lt!1257694)))))

(declare-fun b!3635596 () Bool)

(declare-fun res!1472854 () Bool)

(assert (=> b!3635596 (=> (not res!1472854) (not e!2250458))))

(assert (=> b!3635596 (= res!1472854 (= (head!7706 lt!1257688) (head!7706 lt!1257694)))))

(declare-fun d!1069232 () Bool)

(declare-fun e!2250456 () Bool)

(assert (=> d!1069232 e!2250456))

(declare-fun res!1472855 () Bool)

(assert (=> d!1069232 (=> res!1472855 e!2250456)))

(declare-fun lt!1257912 () Bool)

(assert (=> d!1069232 (= res!1472855 (not lt!1257912))))

(declare-fun e!2250457 () Bool)

(assert (=> d!1069232 (= lt!1257912 e!2250457)))

(declare-fun res!1472853 () Bool)

(assert (=> d!1069232 (=> res!1472853 e!2250457)))

(assert (=> d!1069232 (= res!1472853 ((_ is Nil!38306) lt!1257688))))

(assert (=> d!1069232 (= (isPrefix!3081 lt!1257688 lt!1257694) lt!1257912)))

(declare-fun b!3635595 () Bool)

(assert (=> b!3635595 (= e!2250457 e!2250458)))

(declare-fun res!1472852 () Bool)

(assert (=> b!3635595 (=> (not res!1472852) (not e!2250458))))

(assert (=> b!3635595 (= res!1472852 (not ((_ is Nil!38306) lt!1257694)))))

(declare-fun b!3635598 () Bool)

(assert (=> b!3635598 (= e!2250456 (>= (size!29233 lt!1257694) (size!29233 lt!1257688)))))

(assert (= (and d!1069232 (not res!1472853)) b!3635595))

(assert (= (and b!3635595 res!1472852) b!3635596))

(assert (= (and b!3635596 res!1472854) b!3635597))

(assert (= (and d!1069232 (not res!1472855)) b!3635598))

(assert (=> b!3635597 m!4137751))

(assert (=> b!3635597 m!4137333))

(assert (=> b!3635597 m!4137751))

(assert (=> b!3635597 m!4137333))

(declare-fun m!4137893 () Bool)

(assert (=> b!3635597 m!4137893))

(assert (=> b!3635596 m!4137747))

(declare-fun m!4137895 () Bool)

(assert (=> b!3635596 m!4137895))

(assert (=> b!3635598 m!4137331))

(assert (=> b!3635598 m!4137219))

(assert (=> b!3635012 d!1069232))

(declare-fun b!3635602 () Bool)

(declare-fun lt!1257913 () List!38430)

(declare-fun e!2250459 () Bool)

(assert (=> b!3635602 (= e!2250459 (or (not (= (_2!22218 lt!1257690) Nil!38306)) (= lt!1257913 lt!1257688)))))

(declare-fun b!3635600 () Bool)

(declare-fun e!2250460 () List!38430)

(assert (=> b!3635600 (= e!2250460 (Cons!38306 (h!43726 lt!1257688) (++!9534 (t!295733 lt!1257688) (_2!22218 lt!1257690))))))

(declare-fun d!1069234 () Bool)

(assert (=> d!1069234 e!2250459))

(declare-fun res!1472856 () Bool)

(assert (=> d!1069234 (=> (not res!1472856) (not e!2250459))))

(assert (=> d!1069234 (= res!1472856 (= (content!5502 lt!1257913) ((_ map or) (content!5502 lt!1257688) (content!5502 (_2!22218 lt!1257690)))))))

(assert (=> d!1069234 (= lt!1257913 e!2250460)))

(declare-fun c!628804 () Bool)

(assert (=> d!1069234 (= c!628804 ((_ is Nil!38306) lt!1257688))))

(assert (=> d!1069234 (= (++!9534 lt!1257688 (_2!22218 lt!1257690)) lt!1257913)))

(declare-fun b!3635599 () Bool)

(assert (=> b!3635599 (= e!2250460 (_2!22218 lt!1257690))))

(declare-fun b!3635601 () Bool)

(declare-fun res!1472857 () Bool)

(assert (=> b!3635601 (=> (not res!1472857) (not e!2250459))))

(assert (=> b!3635601 (= res!1472857 (= (size!29233 lt!1257913) (+ (size!29233 lt!1257688) (size!29233 (_2!22218 lt!1257690)))))))

(assert (= (and d!1069234 c!628804) b!3635599))

(assert (= (and d!1069234 (not c!628804)) b!3635600))

(assert (= (and d!1069234 res!1472856) b!3635601))

(assert (= (and b!3635601 res!1472857) b!3635602))

(declare-fun m!4137897 () Bool)

(assert (=> b!3635600 m!4137897))

(declare-fun m!4137899 () Bool)

(assert (=> d!1069234 m!4137899))

(declare-fun m!4137901 () Bool)

(assert (=> d!1069234 m!4137901))

(declare-fun m!4137903 () Bool)

(assert (=> d!1069234 m!4137903))

(declare-fun m!4137905 () Bool)

(assert (=> b!3635601 m!4137905))

(assert (=> b!3635601 m!4137219))

(declare-fun m!4137907 () Bool)

(assert (=> b!3635601 m!4137907))

(assert (=> b!3635012 d!1069234))

(declare-fun b!3635615 () Bool)

(declare-fun e!2250472 () Bool)

(declare-fun e!2250469 () Bool)

(assert (=> b!3635615 (= e!2250472 e!2250469)))

(declare-fun res!1472863 () Bool)

(assert (=> b!3635615 (=> (not res!1472863) (not e!2250469))))

(declare-fun lt!1257921 () Option!8064)

(assert (=> b!3635615 (= res!1472863 (contains!7501 rules!3307 (get!12534 lt!1257921)))))

(declare-fun b!3635616 () Bool)

(declare-fun e!2250471 () Option!8064)

(declare-fun e!2250470 () Option!8064)

(assert (=> b!3635616 (= e!2250471 e!2250470)))

(declare-fun c!628810 () Bool)

(assert (=> b!3635616 (= c!628810 (and ((_ is Cons!38307) rules!3307) (not (= (tag!6456 (h!43727 rules!3307)) (tag!6456 (rule!8490 (_1!22218 lt!1257690)))))))))

(declare-fun b!3635617 () Bool)

(assert (=> b!3635617 (= e!2250471 (Some!8063 (h!43727 rules!3307)))))

(declare-fun d!1069236 () Bool)

(assert (=> d!1069236 e!2250472))

(declare-fun res!1472862 () Bool)

(assert (=> d!1069236 (=> res!1472862 e!2250472)))

(assert (=> d!1069236 (= res!1472862 (isEmpty!22673 lt!1257921))))

(assert (=> d!1069236 (= lt!1257921 e!2250471)))

(declare-fun c!628809 () Bool)

(assert (=> d!1069236 (= c!628809 (and ((_ is Cons!38307) rules!3307) (= (tag!6456 (h!43727 rules!3307)) (tag!6456 (rule!8490 (_1!22218 lt!1257690))))))))

(assert (=> d!1069236 (rulesInvariant!4704 thiss!23823 rules!3307)))

(assert (=> d!1069236 (= (getRuleFromTag!1322 thiss!23823 rules!3307 (tag!6456 (rule!8490 (_1!22218 lt!1257690)))) lt!1257921)))

(declare-fun b!3635618 () Bool)

(assert (=> b!3635618 (= e!2250469 (= (tag!6456 (get!12534 lt!1257921)) (tag!6456 (rule!8490 (_1!22218 lt!1257690)))))))

(declare-fun b!3635619 () Bool)

(declare-fun lt!1257920 () Unit!55130)

(declare-fun lt!1257922 () Unit!55130)

(assert (=> b!3635619 (= lt!1257920 lt!1257922)))

(assert (=> b!3635619 (rulesInvariant!4704 thiss!23823 (t!295734 rules!3307))))

(declare-fun lemmaInvariantOnRulesThenOnTail!561 (LexerInterface!5307 Rule!11236 List!38431) Unit!55130)

(assert (=> b!3635619 (= lt!1257922 (lemmaInvariantOnRulesThenOnTail!561 thiss!23823 (h!43727 rules!3307) (t!295734 rules!3307)))))

(assert (=> b!3635619 (= e!2250470 (getRuleFromTag!1322 thiss!23823 (t!295734 rules!3307) (tag!6456 (rule!8490 (_1!22218 lt!1257690)))))))

(declare-fun b!3635620 () Bool)

(assert (=> b!3635620 (= e!2250470 None!8063)))

(assert (= (and d!1069236 c!628809) b!3635617))

(assert (= (and d!1069236 (not c!628809)) b!3635616))

(assert (= (and b!3635616 c!628810) b!3635619))

(assert (= (and b!3635616 (not c!628810)) b!3635620))

(assert (= (and d!1069236 (not res!1472862)) b!3635615))

(assert (= (and b!3635615 res!1472863) b!3635618))

(declare-fun m!4137909 () Bool)

(assert (=> b!3635615 m!4137909))

(assert (=> b!3635615 m!4137909))

(declare-fun m!4137911 () Bool)

(assert (=> b!3635615 m!4137911))

(declare-fun m!4137913 () Bool)

(assert (=> d!1069236 m!4137913))

(assert (=> d!1069236 m!4137131))

(assert (=> b!3635618 m!4137909))

(declare-fun m!4137915 () Bool)

(assert (=> b!3635619 m!4137915))

(declare-fun m!4137917 () Bool)

(assert (=> b!3635619 m!4137917))

(declare-fun m!4137919 () Bool)

(assert (=> b!3635619 m!4137919))

(assert (=> b!3635012 d!1069236))

(declare-fun b!3635623 () Bool)

(declare-fun e!2250475 () Bool)

(assert (=> b!3635623 (= e!2250475 (isPrefix!3081 (tail!5629 lt!1257679) (tail!5629 lt!1257694)))))

(declare-fun b!3635622 () Bool)

(declare-fun res!1472866 () Bool)

(assert (=> b!3635622 (=> (not res!1472866) (not e!2250475))))

(assert (=> b!3635622 (= res!1472866 (= (head!7706 lt!1257679) (head!7706 lt!1257694)))))

(declare-fun d!1069238 () Bool)

(declare-fun e!2250473 () Bool)

(assert (=> d!1069238 e!2250473))

(declare-fun res!1472867 () Bool)

(assert (=> d!1069238 (=> res!1472867 e!2250473)))

(declare-fun lt!1257923 () Bool)

(assert (=> d!1069238 (= res!1472867 (not lt!1257923))))

(declare-fun e!2250474 () Bool)

(assert (=> d!1069238 (= lt!1257923 e!2250474)))

(declare-fun res!1472865 () Bool)

(assert (=> d!1069238 (=> res!1472865 e!2250474)))

(assert (=> d!1069238 (= res!1472865 ((_ is Nil!38306) lt!1257679))))

(assert (=> d!1069238 (= (isPrefix!3081 lt!1257679 lt!1257694) lt!1257923)))

(declare-fun b!3635621 () Bool)

(assert (=> b!3635621 (= e!2250474 e!2250475)))

(declare-fun res!1472864 () Bool)

(assert (=> b!3635621 (=> (not res!1472864) (not e!2250475))))

(assert (=> b!3635621 (= res!1472864 (not ((_ is Nil!38306) lt!1257694)))))

(declare-fun b!3635624 () Bool)

(assert (=> b!3635624 (= e!2250473 (>= (size!29233 lt!1257694) (size!29233 lt!1257679)))))

(assert (= (and d!1069238 (not res!1472865)) b!3635621))

(assert (= (and b!3635621 res!1472864) b!3635622))

(assert (= (and b!3635622 res!1472866) b!3635623))

(assert (= (and d!1069238 (not res!1472867)) b!3635624))

(assert (=> b!3635623 m!4137771))

(assert (=> b!3635623 m!4137333))

(assert (=> b!3635623 m!4137771))

(assert (=> b!3635623 m!4137333))

(declare-fun m!4137921 () Bool)

(assert (=> b!3635623 m!4137921))

(assert (=> b!3635622 m!4137767))

(assert (=> b!3635622 m!4137895))

(assert (=> b!3635624 m!4137331))

(assert (=> b!3635624 m!4137813))

(assert (=> b!3635012 d!1069238))

(declare-fun b!3635722 () Bool)

(declare-fun e!2250532 () Unit!55130)

(declare-fun Unit!55136 () Unit!55130)

(assert (=> b!3635722 (= e!2250532 Unit!55136)))

(declare-fun b!3635721 () Bool)

(declare-fun Unit!55137 () Unit!55130)

(assert (=> b!3635721 (= e!2250532 Unit!55137)))

(declare-fun lt!1257988 () List!38430)

(assert (=> b!3635721 (= lt!1257988 (++!9534 lt!1257679 suffix!1395))))

(declare-fun lt!1257977 () Unit!55130)

(declare-fun lt!1257973 () Token!10802)

(declare-fun lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!518 (LexerInterface!5307 Rule!11236 List!38431 List!38430) Unit!55130)

(assert (=> b!3635721 (= lt!1257977 (lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!518 thiss!23823 (rule!8490 lt!1257973) rules!3307 lt!1257988))))

(assert (=> b!3635721 (isEmpty!22672 (maxPrefixOneRule!1979 thiss!23823 (rule!8490 lt!1257973) lt!1257988))))

(declare-fun lt!1257976 () Unit!55130)

(assert (=> b!3635721 (= lt!1257976 lt!1257977)))

(declare-fun lt!1257980 () List!38430)

(assert (=> b!3635721 (= lt!1257980 (list!14168 (charsOf!3732 lt!1257973)))))

(declare-fun lt!1257981 () Unit!55130)

(declare-fun lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!506 (LexerInterface!5307 Rule!11236 List!38430 List!38430) Unit!55130)

(assert (=> b!3635721 (= lt!1257981 (lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!506 thiss!23823 (rule!8490 lt!1257973) lt!1257980 (++!9534 lt!1257679 suffix!1395)))))

(assert (=> b!3635721 (not (matchR!5046 (regex!5718 (rule!8490 lt!1257973)) lt!1257980))))

(declare-fun lt!1257978 () Unit!55130)

(assert (=> b!3635721 (= lt!1257978 lt!1257981)))

(assert (=> b!3635721 false))

(declare-fun e!2250533 () Bool)

(declare-fun b!3635720 () Bool)

(assert (=> b!3635720 (= e!2250533 (= (rule!8490 lt!1257973) (get!12534 (getRuleFromTag!1322 thiss!23823 rules!3307 (tag!6456 (rule!8490 lt!1257973))))))))

(declare-fun b!3635719 () Bool)

(declare-fun res!1472899 () Bool)

(assert (=> b!3635719 (=> (not res!1472899) (not e!2250533))))

(assert (=> b!3635719 (= res!1472899 (matchR!5046 (regex!5718 (get!12534 (getRuleFromTag!1322 thiss!23823 rules!3307 (tag!6456 (rule!8490 lt!1257973))))) (list!14168 (charsOf!3732 lt!1257973))))))

(declare-fun d!1069240 () Bool)

(assert (=> d!1069240 (isDefined!6297 (maxPrefix!2841 thiss!23823 rules!3307 (++!9534 lt!1257679 suffix!1395)))))

(declare-fun lt!1257987 () Unit!55130)

(assert (=> d!1069240 (= lt!1257987 e!2250532)))

(declare-fun c!628816 () Bool)

(assert (=> d!1069240 (= c!628816 (isEmpty!22672 (maxPrefix!2841 thiss!23823 rules!3307 (++!9534 lt!1257679 suffix!1395))))))

(declare-fun lt!1257985 () Unit!55130)

(declare-fun lt!1257974 () Unit!55130)

(assert (=> d!1069240 (= lt!1257985 lt!1257974)))

(assert (=> d!1069240 e!2250533))

(declare-fun res!1472898 () Bool)

(assert (=> d!1069240 (=> (not res!1472898) (not e!2250533))))

(assert (=> d!1069240 (= res!1472898 (isDefined!6296 (getRuleFromTag!1322 thiss!23823 rules!3307 (tag!6456 (rule!8490 lt!1257973)))))))

(assert (=> d!1069240 (= lt!1257974 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1322 thiss!23823 rules!3307 lt!1257679 lt!1257973))))

(declare-fun lt!1257989 () Unit!55130)

(declare-fun lt!1257982 () Unit!55130)

(assert (=> d!1069240 (= lt!1257989 lt!1257982)))

(declare-fun lt!1257986 () List!38430)

(assert (=> d!1069240 (isPrefix!3081 lt!1257986 (++!9534 lt!1257679 suffix!1395))))

(declare-fun lemmaPrefixStaysPrefixWhenAddingToSuffix!482 (List!38430 List!38430 List!38430) Unit!55130)

(assert (=> d!1069240 (= lt!1257982 (lemmaPrefixStaysPrefixWhenAddingToSuffix!482 lt!1257986 lt!1257679 suffix!1395))))

(assert (=> d!1069240 (= lt!1257986 (list!14168 (charsOf!3732 lt!1257973)))))

(declare-fun lt!1257984 () Unit!55130)

(declare-fun lt!1257983 () Unit!55130)

(assert (=> d!1069240 (= lt!1257984 lt!1257983)))

(declare-fun lt!1257979 () List!38430)

(declare-fun lt!1257975 () List!38430)

(assert (=> d!1069240 (isPrefix!3081 lt!1257979 (++!9534 lt!1257979 lt!1257975))))

(assert (=> d!1069240 (= lt!1257983 (lemmaConcatTwoListThenFirstIsPrefix!2000 lt!1257979 lt!1257975))))

(assert (=> d!1069240 (= lt!1257975 (_2!22218 (get!12533 (maxPrefix!2841 thiss!23823 rules!3307 lt!1257679))))))

(assert (=> d!1069240 (= lt!1257979 (list!14168 (charsOf!3732 lt!1257973)))))

(declare-datatypes ((List!38435 0))(
  ( (Nil!38311) (Cons!38311 (h!43731 Token!10802) (t!295858 List!38435)) )
))
(declare-fun head!7708 (List!38435) Token!10802)

(declare-datatypes ((IArray!23391 0))(
  ( (IArray!23392 (innerList!11753 List!38435)) )
))
(declare-datatypes ((Conc!11693 0))(
  ( (Node!11693 (left!29910 Conc!11693) (right!30240 Conc!11693) (csize!23616 Int) (cheight!11904 Int)) (Leaf!18163 (xs!14895 IArray!23391) (csize!23617 Int)) (Empty!11693) )
))
(declare-datatypes ((BalanceConc!23000 0))(
  ( (BalanceConc!23001 (c!628819 Conc!11693)) )
))
(declare-fun list!14172 (BalanceConc!23000) List!38435)

(declare-datatypes ((tuple2!38176 0))(
  ( (tuple2!38177 (_1!22222 BalanceConc!23000) (_2!22222 BalanceConc!22996)) )
))
(declare-fun lex!2514 (LexerInterface!5307 List!38431 BalanceConc!22996) tuple2!38176)

(assert (=> d!1069240 (= lt!1257973 (head!7708 (list!14172 (_1!22222 (lex!2514 thiss!23823 rules!3307 (seqFromList!4267 lt!1257679))))))))

(assert (=> d!1069240 (not (isEmpty!22669 rules!3307))))

(assert (=> d!1069240 (= (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!985 thiss!23823 rules!3307 lt!1257679 suffix!1395) lt!1257987)))

(assert (= (and d!1069240 res!1472898) b!3635719))

(assert (= (and b!3635719 res!1472899) b!3635720))

(assert (= (and d!1069240 c!628816) b!3635721))

(assert (= (and d!1069240 (not c!628816)) b!3635722))

(assert (=> b!3635721 m!4137187))

(declare-fun m!4137985 () Bool)

(assert (=> b!3635721 m!4137985))

(declare-fun m!4137987 () Bool)

(assert (=> b!3635721 m!4137987))

(declare-fun m!4137989 () Bool)

(assert (=> b!3635721 m!4137989))

(declare-fun m!4137991 () Bool)

(assert (=> b!3635721 m!4137991))

(assert (=> b!3635721 m!4137987))

(assert (=> b!3635721 m!4137991))

(declare-fun m!4137993 () Bool)

(assert (=> b!3635721 m!4137993))

(assert (=> b!3635721 m!4137187))

(declare-fun m!4137995 () Bool)

(assert (=> b!3635721 m!4137995))

(declare-fun m!4137997 () Bool)

(assert (=> b!3635721 m!4137997))

(declare-fun m!4137999 () Bool)

(assert (=> b!3635720 m!4137999))

(assert (=> b!3635720 m!4137999))

(declare-fun m!4138001 () Bool)

(assert (=> b!3635720 m!4138001))

(assert (=> b!3635719 m!4137989))

(declare-fun m!4138003 () Bool)

(assert (=> b!3635719 m!4138003))

(assert (=> b!3635719 m!4137999))

(assert (=> b!3635719 m!4137987))

(assert (=> b!3635719 m!4137989))

(assert (=> b!3635719 m!4137999))

(assert (=> b!3635719 m!4138001))

(assert (=> b!3635719 m!4137987))

(assert (=> d!1069240 m!4137187))

(assert (=> d!1069240 m!4137187))

(declare-fun m!4138005 () Bool)

(assert (=> d!1069240 m!4138005))

(assert (=> d!1069240 m!4138005))

(declare-fun m!4138007 () Bool)

(assert (=> d!1069240 m!4138007))

(declare-fun m!4138009 () Bool)

(assert (=> d!1069240 m!4138009))

(assert (=> d!1069240 m!4137987))

(assert (=> d!1069240 m!4137989))

(declare-fun m!4138011 () Bool)

(assert (=> d!1069240 m!4138011))

(declare-fun m!4138013 () Bool)

(assert (=> d!1069240 m!4138013))

(declare-fun m!4138015 () Bool)

(assert (=> d!1069240 m!4138015))

(declare-fun m!4138017 () Bool)

(assert (=> d!1069240 m!4138017))

(assert (=> d!1069240 m!4137999))

(declare-fun m!4138019 () Bool)

(assert (=> d!1069240 m!4138019))

(declare-fun m!4138021 () Bool)

(assert (=> d!1069240 m!4138021))

(assert (=> d!1069240 m!4137203))

(assert (=> d!1069240 m!4138021))

(declare-fun m!4138023 () Bool)

(assert (=> d!1069240 m!4138023))

(declare-fun m!4138025 () Bool)

(assert (=> d!1069240 m!4138025))

(assert (=> d!1069240 m!4138011))

(assert (=> d!1069240 m!4137187))

(declare-fun m!4138027 () Bool)

(assert (=> d!1069240 m!4138027))

(assert (=> d!1069240 m!4137987))

(declare-fun m!4138029 () Bool)

(assert (=> d!1069240 m!4138029))

(assert (=> d!1069240 m!4137999))

(assert (=> d!1069240 m!4138005))

(declare-fun m!4138031 () Bool)

(assert (=> d!1069240 m!4138031))

(assert (=> d!1069240 m!4137157))

(declare-fun m!4138033 () Bool)

(assert (=> d!1069240 m!4138033))

(assert (=> d!1069240 m!4138015))

(assert (=> d!1069240 m!4137157))

(assert (=> b!3635012 d!1069240))

(declare-fun b!3635723 () Bool)

(declare-fun res!1472906 () Bool)

(declare-fun e!2250534 () Bool)

(assert (=> b!3635723 (=> (not res!1472906) (not e!2250534))))

(declare-fun lt!1257994 () Option!8065)

(assert (=> b!3635723 (= res!1472906 (= (value!183423 (_1!22218 (get!12533 lt!1257994))) (apply!9220 (transformation!5718 (rule!8490 (_1!22218 (get!12533 lt!1257994)))) (seqFromList!4267 (originalCharacters!6432 (_1!22218 (get!12533 lt!1257994)))))))))

(declare-fun b!3635724 () Bool)

(declare-fun res!1472900 () Bool)

(assert (=> b!3635724 (=> (not res!1472900) (not e!2250534))))

(assert (=> b!3635724 (= res!1472900 (= (++!9534 (list!14168 (charsOf!3732 (_1!22218 (get!12533 lt!1257994)))) (_2!22218 (get!12533 lt!1257994))) lt!1257694))))

(declare-fun b!3635725 () Bool)

(declare-fun res!1472904 () Bool)

(assert (=> b!3635725 (=> (not res!1472904) (not e!2250534))))

(assert (=> b!3635725 (= res!1472904 (matchR!5046 (regex!5718 (rule!8490 (_1!22218 (get!12533 lt!1257994)))) (list!14168 (charsOf!3732 (_1!22218 (get!12533 lt!1257994))))))))

(declare-fun b!3635726 () Bool)

(assert (=> b!3635726 (= e!2250534 (contains!7501 rules!3307 (rule!8490 (_1!22218 (get!12533 lt!1257994)))))))

(declare-fun b!3635727 () Bool)

(declare-fun e!2250536 () Option!8065)

(declare-fun call!262892 () Option!8065)

(assert (=> b!3635727 (= e!2250536 call!262892)))

(declare-fun b!3635728 () Bool)

(declare-fun res!1472902 () Bool)

(assert (=> b!3635728 (=> (not res!1472902) (not e!2250534))))

(assert (=> b!3635728 (= res!1472902 (< (size!29233 (_2!22218 (get!12533 lt!1257994))) (size!29233 lt!1257694)))))

(declare-fun b!3635729 () Bool)

(declare-fun res!1472901 () Bool)

(assert (=> b!3635729 (=> (not res!1472901) (not e!2250534))))

(assert (=> b!3635729 (= res!1472901 (= (list!14168 (charsOf!3732 (_1!22218 (get!12533 lt!1257994)))) (originalCharacters!6432 (_1!22218 (get!12533 lt!1257994)))))))

(declare-fun b!3635730 () Bool)

(declare-fun e!2250535 () Bool)

(assert (=> b!3635730 (= e!2250535 e!2250534)))

(declare-fun res!1472905 () Bool)

(assert (=> b!3635730 (=> (not res!1472905) (not e!2250534))))

(assert (=> b!3635730 (= res!1472905 (isDefined!6297 lt!1257994))))

(declare-fun bm!262887 () Bool)

(assert (=> bm!262887 (= call!262892 (maxPrefixOneRule!1979 thiss!23823 (h!43727 rules!3307) lt!1257694))))

(declare-fun d!1069270 () Bool)

(assert (=> d!1069270 e!2250535))

(declare-fun res!1472903 () Bool)

(assert (=> d!1069270 (=> res!1472903 e!2250535)))

(assert (=> d!1069270 (= res!1472903 (isEmpty!22672 lt!1257994))))

(assert (=> d!1069270 (= lt!1257994 e!2250536)))

(declare-fun c!628817 () Bool)

(assert (=> d!1069270 (= c!628817 (and ((_ is Cons!38307) rules!3307) ((_ is Nil!38307) (t!295734 rules!3307))))))

(declare-fun lt!1257991 () Unit!55130)

(declare-fun lt!1257992 () Unit!55130)

(assert (=> d!1069270 (= lt!1257991 lt!1257992)))

(assert (=> d!1069270 (isPrefix!3081 lt!1257694 lt!1257694)))

(assert (=> d!1069270 (= lt!1257992 (lemmaIsPrefixRefl!1952 lt!1257694 lt!1257694))))

(assert (=> d!1069270 (rulesValidInductive!2017 thiss!23823 rules!3307)))

(assert (=> d!1069270 (= (maxPrefix!2841 thiss!23823 rules!3307 lt!1257694) lt!1257994)))

(declare-fun b!3635731 () Bool)

(declare-fun lt!1257990 () Option!8065)

(declare-fun lt!1257993 () Option!8065)

(assert (=> b!3635731 (= e!2250536 (ite (and ((_ is None!8064) lt!1257990) ((_ is None!8064) lt!1257993)) None!8064 (ite ((_ is None!8064) lt!1257993) lt!1257990 (ite ((_ is None!8064) lt!1257990) lt!1257993 (ite (>= (size!29231 (_1!22218 (v!37872 lt!1257990))) (size!29231 (_1!22218 (v!37872 lt!1257993)))) lt!1257990 lt!1257993)))))))

(assert (=> b!3635731 (= lt!1257990 call!262892)))

(assert (=> b!3635731 (= lt!1257993 (maxPrefix!2841 thiss!23823 (t!295734 rules!3307) lt!1257694))))

(assert (= (and d!1069270 c!628817) b!3635727))

(assert (= (and d!1069270 (not c!628817)) b!3635731))

(assert (= (or b!3635727 b!3635731) bm!262887))

(assert (= (and d!1069270 (not res!1472903)) b!3635730))

(assert (= (and b!3635730 res!1472905) b!3635729))

(assert (= (and b!3635729 res!1472901) b!3635728))

(assert (= (and b!3635728 res!1472902) b!3635724))

(assert (= (and b!3635724 res!1472900) b!3635723))

(assert (= (and b!3635723 res!1472906) b!3635725))

(assert (= (and b!3635725 res!1472904) b!3635726))

(declare-fun m!4138035 () Bool)

(assert (=> bm!262887 m!4138035))

(declare-fun m!4138037 () Bool)

(assert (=> b!3635723 m!4138037))

(declare-fun m!4138039 () Bool)

(assert (=> b!3635723 m!4138039))

(assert (=> b!3635723 m!4138039))

(declare-fun m!4138041 () Bool)

(assert (=> b!3635723 m!4138041))

(assert (=> b!3635724 m!4138037))

(declare-fun m!4138043 () Bool)

(assert (=> b!3635724 m!4138043))

(assert (=> b!3635724 m!4138043))

(declare-fun m!4138045 () Bool)

(assert (=> b!3635724 m!4138045))

(assert (=> b!3635724 m!4138045))

(declare-fun m!4138047 () Bool)

(assert (=> b!3635724 m!4138047))

(declare-fun m!4138049 () Bool)

(assert (=> d!1069270 m!4138049))

(declare-fun m!4138051 () Bool)

(assert (=> d!1069270 m!4138051))

(declare-fun m!4138053 () Bool)

(assert (=> d!1069270 m!4138053))

(assert (=> d!1069270 m!4137807))

(declare-fun m!4138055 () Bool)

(assert (=> b!3635730 m!4138055))

(assert (=> b!3635729 m!4138037))

(assert (=> b!3635729 m!4138043))

(assert (=> b!3635729 m!4138043))

(assert (=> b!3635729 m!4138045))

(assert (=> b!3635728 m!4138037))

(declare-fun m!4138057 () Bool)

(assert (=> b!3635728 m!4138057))

(assert (=> b!3635728 m!4137331))

(assert (=> b!3635725 m!4138037))

(assert (=> b!3635725 m!4138043))

(assert (=> b!3635725 m!4138043))

(assert (=> b!3635725 m!4138045))

(assert (=> b!3635725 m!4138045))

(declare-fun m!4138059 () Bool)

(assert (=> b!3635725 m!4138059))

(assert (=> b!3635726 m!4138037))

(declare-fun m!4138061 () Bool)

(assert (=> b!3635726 m!4138061))

(declare-fun m!4138063 () Bool)

(assert (=> b!3635731 m!4138063))

(assert (=> b!3635012 d!1069270))

(declare-fun b!3635736 () Bool)

(declare-fun e!2250539 () Bool)

(declare-fun tp!1109573 () Bool)

(assert (=> b!3635736 (= e!2250539 (and tp_is_empty!18037 tp!1109573))))

(assert (=> b!3635024 (= tp!1109505 e!2250539)))

(assert (= (and b!3635024 ((_ is Cons!38306) (t!295733 suffix!1395))) b!3635736))

(declare-fun b!3635749 () Bool)

(declare-fun e!2250542 () Bool)

(declare-fun tp!1109584 () Bool)

(assert (=> b!3635749 (= e!2250542 tp!1109584)))

(declare-fun b!3635748 () Bool)

(declare-fun tp!1109586 () Bool)

(declare-fun tp!1109585 () Bool)

(assert (=> b!3635748 (= e!2250542 (and tp!1109586 tp!1109585))))

(declare-fun b!3635750 () Bool)

(declare-fun tp!1109588 () Bool)

(declare-fun tp!1109587 () Bool)

(assert (=> b!3635750 (= e!2250542 (and tp!1109588 tp!1109587))))

(assert (=> b!3635030 (= tp!1109510 e!2250542)))

(declare-fun b!3635747 () Bool)

(assert (=> b!3635747 (= e!2250542 tp_is_empty!18037)))

(assert (= (and b!3635030 ((_ is ElementMatch!10477) (regex!5718 rule!403))) b!3635747))

(assert (= (and b!3635030 ((_ is Concat!16426) (regex!5718 rule!403))) b!3635748))

(assert (= (and b!3635030 ((_ is Star!10477) (regex!5718 rule!403))) b!3635749))

(assert (= (and b!3635030 ((_ is Union!10477) (regex!5718 rule!403))) b!3635750))

(declare-fun b!3635751 () Bool)

(declare-fun e!2250543 () Bool)

(declare-fun tp!1109589 () Bool)

(assert (=> b!3635751 (= e!2250543 (and tp_is_empty!18037 tp!1109589))))

(assert (=> b!3635020 (= tp!1109508 e!2250543)))

(assert (= (and b!3635020 ((_ is Cons!38306) (originalCharacters!6432 token!511))) b!3635751))

(declare-fun b!3635754 () Bool)

(declare-fun e!2250544 () Bool)

(declare-fun tp!1109590 () Bool)

(assert (=> b!3635754 (= e!2250544 tp!1109590)))

(declare-fun b!3635753 () Bool)

(declare-fun tp!1109592 () Bool)

(declare-fun tp!1109591 () Bool)

(assert (=> b!3635753 (= e!2250544 (and tp!1109592 tp!1109591))))

(declare-fun b!3635755 () Bool)

(declare-fun tp!1109594 () Bool)

(declare-fun tp!1109593 () Bool)

(assert (=> b!3635755 (= e!2250544 (and tp!1109594 tp!1109593))))

(assert (=> b!3635005 (= tp!1109503 e!2250544)))

(declare-fun b!3635752 () Bool)

(assert (=> b!3635752 (= e!2250544 tp_is_empty!18037)))

(assert (= (and b!3635005 ((_ is ElementMatch!10477) (regex!5718 anOtherTypeRule!33))) b!3635752))

(assert (= (and b!3635005 ((_ is Concat!16426) (regex!5718 anOtherTypeRule!33))) b!3635753))

(assert (= (and b!3635005 ((_ is Star!10477) (regex!5718 anOtherTypeRule!33))) b!3635754))

(assert (= (and b!3635005 ((_ is Union!10477) (regex!5718 anOtherTypeRule!33))) b!3635755))

(declare-fun b!3635758 () Bool)

(declare-fun e!2250545 () Bool)

(declare-fun tp!1109595 () Bool)

(assert (=> b!3635758 (= e!2250545 tp!1109595)))

(declare-fun b!3635757 () Bool)

(declare-fun tp!1109597 () Bool)

(declare-fun tp!1109596 () Bool)

(assert (=> b!3635757 (= e!2250545 (and tp!1109597 tp!1109596))))

(declare-fun b!3635759 () Bool)

(declare-fun tp!1109599 () Bool)

(declare-fun tp!1109598 () Bool)

(assert (=> b!3635759 (= e!2250545 (and tp!1109599 tp!1109598))))

(assert (=> b!3635027 (= tp!1109502 e!2250545)))

(declare-fun b!3635756 () Bool)

(assert (=> b!3635756 (= e!2250545 tp_is_empty!18037)))

(assert (= (and b!3635027 ((_ is ElementMatch!10477) (regex!5718 (h!43727 rules!3307)))) b!3635756))

(assert (= (and b!3635027 ((_ is Concat!16426) (regex!5718 (h!43727 rules!3307)))) b!3635757))

(assert (= (and b!3635027 ((_ is Star!10477) (regex!5718 (h!43727 rules!3307)))) b!3635758))

(assert (= (and b!3635027 ((_ is Union!10477) (regex!5718 (h!43727 rules!3307)))) b!3635759))

(declare-fun b!3635762 () Bool)

(declare-fun e!2250546 () Bool)

(declare-fun tp!1109600 () Bool)

(assert (=> b!3635762 (= e!2250546 tp!1109600)))

(declare-fun b!3635761 () Bool)

(declare-fun tp!1109602 () Bool)

(declare-fun tp!1109601 () Bool)

(assert (=> b!3635761 (= e!2250546 (and tp!1109602 tp!1109601))))

(declare-fun b!3635763 () Bool)

(declare-fun tp!1109604 () Bool)

(declare-fun tp!1109603 () Bool)

(assert (=> b!3635763 (= e!2250546 (and tp!1109604 tp!1109603))))

(assert (=> b!3635017 (= tp!1109500 e!2250546)))

(declare-fun b!3635760 () Bool)

(assert (=> b!3635760 (= e!2250546 tp_is_empty!18037)))

(assert (= (and b!3635017 ((_ is ElementMatch!10477) (regex!5718 (rule!8490 token!511)))) b!3635760))

(assert (= (and b!3635017 ((_ is Concat!16426) (regex!5718 (rule!8490 token!511)))) b!3635761))

(assert (= (and b!3635017 ((_ is Star!10477) (regex!5718 (rule!8490 token!511)))) b!3635762))

(assert (= (and b!3635017 ((_ is Union!10477) (regex!5718 (rule!8490 token!511)))) b!3635763))

(declare-fun b!3635774 () Bool)

(declare-fun b_free!95189 () Bool)

(declare-fun b_next!95893 () Bool)

(assert (=> b!3635774 (= b_free!95189 (not b_next!95893))))

(declare-fun t!295844 () Bool)

(declare-fun tb!209169 () Bool)

(assert (=> (and b!3635774 (= (toValue!8010 (transformation!5718 (h!43727 (t!295734 rules!3307)))) (toValue!8010 (transformation!5718 (rule!8490 (_1!22218 lt!1257690))))) t!295844) tb!209169))

(declare-fun result!254790 () Bool)

(assert (= result!254790 result!254682))

(assert (=> d!1069056 t!295844))

(declare-fun t!295846 () Bool)

(declare-fun tb!209171 () Bool)

(assert (=> (and b!3635774 (= (toValue!8010 (transformation!5718 (h!43727 (t!295734 rules!3307)))) (toValue!8010 (transformation!5718 (rule!8490 (_1!22218 lt!1257690))))) t!295846) tb!209171))

(declare-fun result!254792 () Bool)

(assert (= result!254792 result!254692))

(assert (=> d!1069098 t!295846))

(assert (=> d!1069094 t!295846))

(assert (=> d!1069168 t!295846))

(declare-fun tb!209173 () Bool)

(declare-fun t!295848 () Bool)

(assert (=> (and b!3635774 (= (toValue!8010 (transformation!5718 (h!43727 (t!295734 rules!3307)))) (toValue!8010 (transformation!5718 (rule!8490 (_1!22218 lt!1257690))))) t!295848) tb!209173))

(declare-fun result!254794 () Bool)

(assert (= result!254794 result!254726))

(assert (=> d!1069098 t!295848))

(declare-fun tp!1109615 () Bool)

(declare-fun b_and!267439 () Bool)

(assert (=> b!3635774 (= tp!1109615 (and (=> t!295846 result!254792) (=> t!295844 result!254790) (=> t!295848 result!254794) b_and!267439))))

(declare-fun b_free!95191 () Bool)

(declare-fun b_next!95895 () Bool)

(assert (=> b!3635774 (= b_free!95191 (not b_next!95895))))

(declare-fun tb!209175 () Bool)

(declare-fun t!295850 () Bool)

(assert (=> (and b!3635774 (= (toChars!7869 (transformation!5718 (h!43727 (t!295734 rules!3307)))) (toChars!7869 (transformation!5718 (rule!8490 (_1!22218 lt!1257690))))) t!295850) tb!209175))

(declare-fun result!254796 () Bool)

(assert (= result!254796 result!254672))

(assert (=> d!1069044 t!295850))

(declare-fun t!295852 () Bool)

(declare-fun tb!209177 () Bool)

(assert (=> (and b!3635774 (= (toChars!7869 (transformation!5718 (h!43727 (t!295734 rules!3307)))) (toChars!7869 (transformation!5718 (rule!8490 (_1!22218 lt!1257690))))) t!295852) tb!209177))

(declare-fun result!254798 () Bool)

(assert (= result!254798 result!254734))

(assert (=> d!1069168 t!295852))

(declare-fun t!295854 () Bool)

(declare-fun tb!209179 () Bool)

(assert (=> (and b!3635774 (= (toChars!7869 (transformation!5718 (h!43727 (t!295734 rules!3307)))) (toChars!7869 (transformation!5718 (rule!8490 token!511)))) t!295854) tb!209179))

(declare-fun result!254800 () Bool)

(assert (= result!254800 result!254742))

(assert (=> d!1069202 t!295854))

(assert (=> b!3635563 t!295854))

(declare-fun tp!1109614 () Bool)

(declare-fun b_and!267441 () Bool)

(assert (=> b!3635774 (= tp!1109614 (and (=> t!295850 result!254796) (=> t!295852 result!254798) (=> t!295854 result!254800) b_and!267441))))

(declare-fun e!2250557 () Bool)

(assert (=> b!3635774 (= e!2250557 (and tp!1109615 tp!1109614))))

(declare-fun tp!1109613 () Bool)

(declare-fun e!2250555 () Bool)

(declare-fun b!3635773 () Bool)

(assert (=> b!3635773 (= e!2250555 (and tp!1109613 (inv!51730 (tag!6456 (h!43727 (t!295734 rules!3307)))) (inv!51733 (transformation!5718 (h!43727 (t!295734 rules!3307)))) e!2250557))))

(declare-fun b!3635772 () Bool)

(declare-fun e!2250558 () Bool)

(declare-fun tp!1109616 () Bool)

(assert (=> b!3635772 (= e!2250558 (and e!2250555 tp!1109616))))

(assert (=> b!3635022 (= tp!1109509 e!2250558)))

(assert (= b!3635773 b!3635774))

(assert (= b!3635772 b!3635773))

(assert (= (and b!3635022 ((_ is Cons!38307) (t!295734 rules!3307))) b!3635772))

(declare-fun m!4138065 () Bool)

(assert (=> b!3635773 m!4138065))

(declare-fun m!4138067 () Bool)

(assert (=> b!3635773 m!4138067))

(declare-fun b_lambda!107719 () Bool)

(assert (= b_lambda!107703 (or (and b!3635007 b_free!95171 (= (toChars!7869 (transformation!5718 (h!43727 rules!3307))) (toChars!7869 (transformation!5718 (rule!8490 token!511))))) (and b!3635010 b_free!95179) (and b!3635008 b_free!95183 (= (toChars!7869 (transformation!5718 rule!403)) (toChars!7869 (transformation!5718 (rule!8490 token!511))))) (and b!3635774 b_free!95191 (= (toChars!7869 (transformation!5718 (h!43727 (t!295734 rules!3307)))) (toChars!7869 (transformation!5718 (rule!8490 token!511))))) (and b!3635018 b_free!95175 (= (toChars!7869 (transformation!5718 anOtherTypeRule!33)) (toChars!7869 (transformation!5718 (rule!8490 token!511))))) b_lambda!107719)))

(declare-fun b_lambda!107721 () Bool)

(assert (= b_lambda!107705 (or (and b!3635007 b_free!95171 (= (toChars!7869 (transformation!5718 (h!43727 rules!3307))) (toChars!7869 (transformation!5718 (rule!8490 token!511))))) (and b!3635010 b_free!95179) (and b!3635008 b_free!95183 (= (toChars!7869 (transformation!5718 rule!403)) (toChars!7869 (transformation!5718 (rule!8490 token!511))))) (and b!3635774 b_free!95191 (= (toChars!7869 (transformation!5718 (h!43727 (t!295734 rules!3307)))) (toChars!7869 (transformation!5718 (rule!8490 token!511))))) (and b!3635018 b_free!95175 (= (toChars!7869 (transformation!5718 anOtherTypeRule!33)) (toChars!7869 (transformation!5718 (rule!8490 token!511))))) b_lambda!107721)))

(check-sat (not b!3635108) (not b!3635536) (not d!1069240) (not d!1069226) (not b!3635177) (not b!3635730) (not b!3635586) (not b!3635482) (not b!3635593) (not bm!262881) (not d!1069194) (not b!3635486) (not b!3635575) (not b!3635731) (not d!1069236) (not bm!262884) (not b!3635763) (not b!3635119) (not d!1069188) (not b!3635619) (not b!3635544) (not b!3635545) (not d!1069234) (not b!3635230) (not bm!262876) (not b_lambda!107681) (not b!3635755) (not b!3635736) (not b!3635597) (not b!3635539) (not d!1069098) (not b_lambda!107701) (not b_next!95875) (not b!3635598) (not b!3635492) (not d!1069044) (not b!3635445) (not d!1069178) (not b!3635120) (not b!3635723) (not d!1069198) (not b!3635729) (not b!3635260) (not b!3635762) (not b!3635758) (not b!3635564) (not b!3635721) (not b!3635754) (not b!3635537) (not b_next!95885) (not b!3635600) (not b_next!95895) (not d!1069196) (not b!3635208) (not b!3635509) (not b!3635624) (not b!3635481) (not b_lambda!107695) b_and!267441 (not b!3635773) b_and!267401 (not b!3635501) (not b!3635444) (not tb!209069) (not b!3635761) b_and!267397 (not b!3635508) b_and!267379 (not d!1069192) (not bm!262873) (not b_next!95879) (not b!3635726) (not d!1069078) (not b!3635587) (not d!1069204) (not b!3635228) b_and!267439 (not b!3635111) (not b!3635234) (not b!3635480) (not b!3635451) (not d!1069040) (not bm!262875) b_and!267395 (not b_lambda!107699) b_and!267383 (not b!3635231) (not b!3635615) (not b!3635541) (not b_next!95873) (not b!3635719) (not b!3635601) (not d!1069074) (not b!3635563) (not b!3635622) tp_is_empty!18037 (not d!1069224) (not b_lambda!107683) (not b_lambda!107719) (not b!3635493) (not b!3635724) (not b!3635623) (not b_next!95887) (not b_next!95881) (not d!1069170) (not tb!209085) (not b!3635242) (not b!3635263) (not b!3635485) (not d!1069230) (not b!3635494) (not bm!262885) (not tb!209077) (not d!1069228) (not b_next!95877) (not b!3635548) (not b!3635510) (not d!1069092) (not bm!262882) (not tb!209117) (not bm!262878) (not d!1069068) (not d!1069190) (not b!3635576) (not tb!209133) (not b!3635596) (not b!3635751) b_and!267381 (not b!3635720) (not b!3635759) (not d!1069206) (not b!3635594) (not b!3635753) (not b_next!95893) (not b!3635728) (not b!3635749) (not b!3635235) (not b!3635156) (not b!3635543) (not b!3635269) (not d!1069070) (not b_next!95883) (not d!1069096) (not b!3635229) (not d!1069168) (not b!3635112) (not b!3635232) (not d!1069200) (not b!3635772) (not d!1069176) (not b!3635550) (not d!1069270) (not d!1069202) b_and!267399 (not b_lambda!107721) (not bm!262887) (not b!3635502) (not b!3635574) (not b!3635497) (not bm!262877) (not b!3635118) (not b!3635236) (not b!3635618) (not bm!262843) (not b!3635516) (not b!3635725) (not b!3635750) (not d!1069220) (not d!1069172) (not b!3635757) (not b!3635538) (not d!1069086) (not b!3635748) (not b!3635498) (not b_lambda!107697) (not b!3635266) (not b!3635245) (not d!1069210) (not d!1069072) (not tb!209125) (not d!1069186) (not d!1069058) (not b!3635542) b_and!267385 (not d!1069218) (not d!1069028) (not b!3635270) (not b_lambda!107685))
(check-sat (not b_next!95875) (not b_next!95885) (not b_next!95873) (not b_next!95877) b_and!267381 (not b_next!95893) (not b_next!95883) b_and!267399 b_and!267385 (not b_next!95895) b_and!267441 b_and!267401 b_and!267379 b_and!267397 (not b_next!95879) b_and!267439 b_and!267395 b_and!267383 (not b_next!95887) (not b_next!95881))
