; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!177694 () Bool)

(assert start!177694)

(declare-fun b!1784399 () Bool)

(declare-fun b_free!49567 () Bool)

(declare-fun b_next!50271 () Bool)

(assert (=> b!1784399 (= b_free!49567 (not b_next!50271))))

(declare-fun tp!504903 () Bool)

(declare-fun b_and!137123 () Bool)

(assert (=> b!1784399 (= tp!504903 b_and!137123)))

(declare-fun b_free!49569 () Bool)

(declare-fun b_next!50273 () Bool)

(assert (=> b!1784399 (= b_free!49569 (not b_next!50273))))

(declare-fun tp!504901 () Bool)

(declare-fun b_and!137125 () Bool)

(assert (=> b!1784399 (= tp!504901 b_and!137125)))

(declare-fun b!1784371 () Bool)

(declare-fun b_free!49571 () Bool)

(declare-fun b_next!50275 () Bool)

(assert (=> b!1784371 (= b_free!49571 (not b_next!50275))))

(declare-fun tp!504898 () Bool)

(declare-fun b_and!137127 () Bool)

(assert (=> b!1784371 (= tp!504898 b_and!137127)))

(declare-fun b_free!49573 () Bool)

(declare-fun b_next!50277 () Bool)

(assert (=> b!1784371 (= b_free!49573 (not b_next!50277))))

(declare-fun tp!504902 () Bool)

(declare-fun b_and!137129 () Bool)

(assert (=> b!1784371 (= tp!504902 b_and!137129)))

(declare-fun b!1784387 () Bool)

(declare-fun b_free!49575 () Bool)

(declare-fun b_next!50279 () Bool)

(assert (=> b!1784387 (= b_free!49575 (not b_next!50279))))

(declare-fun tp!504897 () Bool)

(declare-fun b_and!137131 () Bool)

(assert (=> b!1784387 (= tp!504897 b_and!137131)))

(declare-fun b_free!49577 () Bool)

(declare-fun b_next!50281 () Bool)

(assert (=> b!1784387 (= b_free!49577 (not b_next!50281))))

(declare-fun tp!504904 () Bool)

(declare-fun b_and!137133 () Bool)

(assert (=> b!1784387 (= tp!504904 b_and!137133)))

(declare-fun b!1784422 () Bool)

(declare-fun e!1142011 () Bool)

(assert (=> b!1784422 (= e!1142011 true)))

(declare-fun b!1784421 () Bool)

(declare-fun e!1142010 () Bool)

(assert (=> b!1784421 (= e!1142010 e!1142011)))

(declare-fun b!1784420 () Bool)

(declare-fun e!1142009 () Bool)

(assert (=> b!1784420 (= e!1142009 e!1142010)))

(declare-fun b!1784385 () Bool)

(assert (=> b!1784385 e!1142009))

(assert (= b!1784421 b!1784422))

(assert (= b!1784420 b!1784421))

(assert (= b!1784385 b!1784420))

(declare-fun order!12725 () Int)

(declare-datatypes ((List!19738 0))(
  ( (Nil!19668) (Cons!19668 (h!25069 (_ BitVec 16)) (t!166925 List!19738)) )
))
(declare-datatypes ((TokenValue!3615 0))(
  ( (FloatLiteralValue!7230 (text!25750 List!19738)) (TokenValueExt!3614 (__x!12532 Int)) (Broken!18075 (value!110109 List!19738)) (Object!3684) (End!3615) (Def!3615) (Underscore!3615) (Match!3615) (Else!3615) (Error!3615) (Case!3615) (If!3615) (Extends!3615) (Abstract!3615) (Class!3615) (Val!3615) (DelimiterValue!7230 (del!3675 List!19738)) (KeywordValue!3621 (value!110110 List!19738)) (CommentValue!7230 (value!110111 List!19738)) (WhitespaceValue!7230 (value!110112 List!19738)) (IndentationValue!3615 (value!110113 List!19738)) (String!22406) (Int32!3615) (Broken!18076 (value!110114 List!19738)) (Boolean!3616) (Unit!34002) (OperatorValue!3618 (op!3675 List!19738)) (IdentifierValue!7230 (value!110115 List!19738)) (IdentifierValue!7231 (value!110116 List!19738)) (WhitespaceValue!7231 (value!110117 List!19738)) (True!7230) (False!7230) (Broken!18077 (value!110118 List!19738)) (Broken!18078 (value!110119 List!19738)) (True!7231) (RightBrace!3615) (RightBracket!3615) (Colon!3615) (Null!3615) (Comma!3615) (LeftBracket!3615) (False!7231) (LeftBrace!3615) (ImaginaryLiteralValue!3615 (text!25751 List!19738)) (StringLiteralValue!10845 (value!110120 List!19738)) (EOFValue!3615 (value!110121 List!19738)) (IdentValue!3615 (value!110122 List!19738)) (DelimiterValue!7231 (value!110123 List!19738)) (DedentValue!3615 (value!110124 List!19738)) (NewLineValue!3615 (value!110125 List!19738)) (IntegerValue!10845 (value!110126 (_ BitVec 32)) (text!25752 List!19738)) (IntegerValue!10846 (value!110127 Int) (text!25753 List!19738)) (Times!3615) (Or!3615) (Equal!3615) (Minus!3615) (Broken!18079 (value!110128 List!19738)) (And!3615) (Div!3615) (LessEqual!3615) (Mod!3615) (Concat!8468) (Not!3615) (Plus!3615) (SpaceValue!3615 (value!110129 List!19738)) (IntegerValue!10847 (value!110130 Int) (text!25754 List!19738)) (StringLiteralValue!10846 (text!25755 List!19738)) (FloatLiteralValue!7231 (text!25756 List!19738)) (BytesLiteralValue!3615 (value!110131 List!19738)) (CommentValue!7231 (value!110132 List!19738)) (StringLiteralValue!10847 (value!110133 List!19738)) (ErrorTokenValue!3615 (msg!3676 List!19738)) )
))
(declare-datatypes ((C!9880 0))(
  ( (C!9881 (val!5536 Int)) )
))
(declare-datatypes ((List!19739 0))(
  ( (Nil!19669) (Cons!19669 (h!25070 C!9880) (t!166926 List!19739)) )
))
(declare-datatypes ((Regex!4853 0))(
  ( (ElementMatch!4853 (c!290216 C!9880)) (Concat!8469 (regOne!10218 Regex!4853) (regTwo!10218 Regex!4853)) (EmptyExpr!4853) (Star!4853 (reg!5182 Regex!4853)) (EmptyLang!4853) (Union!4853 (regOne!10219 Regex!4853) (regTwo!10219 Regex!4853)) )
))
(declare-datatypes ((String!22407 0))(
  ( (String!22408 (value!110134 String)) )
))
(declare-datatypes ((IArray!13091 0))(
  ( (IArray!13092 (innerList!6603 List!19739)) )
))
(declare-datatypes ((Conc!6543 0))(
  ( (Node!6543 (left!15767 Conc!6543) (right!16097 Conc!6543) (csize!13316 Int) (cheight!6754 Int)) (Leaf!9526 (xs!9419 IArray!13091) (csize!13317 Int)) (Empty!6543) )
))
(declare-datatypes ((BalanceConc!13030 0))(
  ( (BalanceConc!13031 (c!290217 Conc!6543)) )
))
(declare-datatypes ((TokenValueInjection!6890 0))(
  ( (TokenValueInjection!6891 (toValue!5052 Int) (toChars!4911 Int)) )
))
(declare-datatypes ((Rule!6850 0))(
  ( (Rule!6851 (regex!3525 Regex!4853) (tag!3925 String!22407) (isSeparator!3525 Bool) (transformation!3525 TokenValueInjection!6890)) )
))
(declare-datatypes ((Token!6616 0))(
  ( (Token!6617 (value!110135 TokenValue!3615) (rule!5609 Rule!6850) (size!15624 Int) (originalCharacters!4339 List!19739)) )
))
(declare-datatypes ((tuple2!19258 0))(
  ( (tuple2!19259 (_1!11031 Token!6616) (_2!11031 List!19739)) )
))
(declare-fun lt!694302 () tuple2!19258)

(declare-fun order!12723 () Int)

(declare-fun lambda!70742 () Int)

(declare-fun dynLambda!9683 (Int Int) Int)

(declare-fun dynLambda!9684 (Int Int) Int)

(assert (=> b!1784422 (< (dynLambda!9683 order!12723 (toValue!5052 (transformation!3525 (rule!5609 (_1!11031 lt!694302))))) (dynLambda!9684 order!12725 lambda!70742))))

(declare-fun order!12727 () Int)

(declare-fun dynLambda!9685 (Int Int) Int)

(assert (=> b!1784422 (< (dynLambda!9685 order!12727 (toChars!4911 (transformation!3525 (rule!5609 (_1!11031 lt!694302))))) (dynLambda!9684 order!12725 lambda!70742))))

(declare-fun e!1141978 () Bool)

(assert (=> b!1784371 (= e!1141978 (and tp!504898 tp!504902))))

(declare-fun b!1784372 () Bool)

(declare-fun res!804539 () Bool)

(declare-fun e!1141982 () Bool)

(assert (=> b!1784372 (=> res!804539 e!1141982)))

(declare-fun lt!694304 () List!19739)

(declare-fun isEmpty!12430 (List!19739) Bool)

(assert (=> b!1784372 (= res!804539 (isEmpty!12430 lt!694304))))

(declare-fun b!1784373 () Bool)

(declare-fun res!804548 () Bool)

(declare-fun e!1141976 () Bool)

(assert (=> b!1784373 (=> (not res!804548) (not e!1141976))))

(declare-datatypes ((List!19740 0))(
  ( (Nil!19670) (Cons!19670 (h!25071 Rule!6850) (t!166927 List!19740)) )
))
(declare-fun rules!3447 () List!19740)

(declare-fun rule!422 () Rule!6850)

(declare-fun contains!3557 (List!19740 Rule!6850) Bool)

(assert (=> b!1784373 (= res!804548 (contains!3557 rules!3447 rule!422))))

(declare-fun b!1784374 () Bool)

(declare-fun e!1141988 () Bool)

(assert (=> b!1784374 (= e!1141982 e!1141988)))

(declare-fun res!804526 () Bool)

(assert (=> b!1784374 (=> res!804526 e!1141988)))

(declare-datatypes ((Option!4072 0))(
  ( (None!4071) (Some!4071 (v!25566 tuple2!19258)) )
))
(declare-fun lt!694292 () Option!4072)

(declare-fun lt!694305 () Token!6616)

(declare-fun lt!694287 () List!19739)

(assert (=> b!1784374 (= res!804526 (not (= lt!694292 (Some!4071 (tuple2!19259 lt!694305 lt!694287)))))))

(declare-datatypes ((Unit!34003 0))(
  ( (Unit!34004) )
))
(declare-fun lt!694285 () Unit!34003)

(declare-fun lt!694290 () BalanceConc!13030)

(declare-fun lemmaSemiInverse!663 (TokenValueInjection!6890 BalanceConc!13030) Unit!34003)

(assert (=> b!1784374 (= lt!694285 (lemmaSemiInverse!663 (transformation!3525 (rule!5609 (_1!11031 lt!694302))) lt!694290))))

(declare-fun b!1784375 () Bool)

(declare-fun res!804534 () Bool)

(declare-fun e!1141995 () Bool)

(assert (=> b!1784375 (=> res!804534 e!1141995)))

(declare-fun matchR!2326 (Regex!4853 List!19739) Bool)

(assert (=> b!1784375 (= res!804534 (not (matchR!2326 (regex!3525 (rule!5609 (_1!11031 lt!694302))) lt!694304)))))

(declare-fun b!1784376 () Bool)

(declare-datatypes ((LexerInterface!3154 0))(
  ( (LexerInterfaceExt!3151 (__x!12533 Int)) (Lexer!3152) )
))
(declare-fun thiss!24550 () LexerInterface!3154)

(declare-fun ruleValid!1023 (LexerInterface!3154 Rule!6850) Bool)

(assert (=> b!1784376 (= e!1141988 (ruleValid!1023 thiss!24550 (rule!5609 (_1!11031 lt!694302))))))

(declare-fun b!1784377 () Bool)

(declare-fun res!804530 () Bool)

(assert (=> b!1784377 (=> res!804530 e!1141982)))

(declare-fun token!523 () Token!6616)

(assert (=> b!1784377 (= res!804530 (not (contains!3557 rules!3447 (rule!5609 token!523))))))

(declare-fun b!1784378 () Bool)

(declare-fun e!1141994 () Bool)

(assert (=> b!1784378 (= e!1141994 e!1141995)))

(declare-fun res!804521 () Bool)

(assert (=> b!1784378 (=> res!804521 e!1141995)))

(declare-fun lt!694318 () List!19739)

(declare-fun isPrefix!1765 (List!19739 List!19739) Bool)

(assert (=> b!1784378 (= res!804521 (not (isPrefix!1765 lt!694304 lt!694318)))))

(declare-fun ++!5349 (List!19739 List!19739) List!19739)

(assert (=> b!1784378 (isPrefix!1765 lt!694304 (++!5349 lt!694304 (_2!11031 lt!694302)))))

(declare-fun lt!694286 () Unit!34003)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1274 (List!19739 List!19739) Unit!34003)

(assert (=> b!1784378 (= lt!694286 (lemmaConcatTwoListThenFirstIsPrefix!1274 lt!694304 (_2!11031 lt!694302)))))

(declare-fun lt!694284 () BalanceConc!13030)

(declare-fun list!7999 (BalanceConc!13030) List!19739)

(assert (=> b!1784378 (= lt!694304 (list!7999 lt!694284))))

(declare-fun charsOf!2174 (Token!6616) BalanceConc!13030)

(assert (=> b!1784378 (= lt!694284 (charsOf!2174 (_1!11031 lt!694302)))))

(declare-fun e!1141983 () Bool)

(assert (=> b!1784378 e!1141983))

(declare-fun res!804538 () Bool)

(assert (=> b!1784378 (=> (not res!804538) (not e!1141983))))

(declare-datatypes ((Option!4073 0))(
  ( (None!4072) (Some!4072 (v!25567 Rule!6850)) )
))
(declare-fun lt!694314 () Option!4073)

(declare-fun isDefined!3415 (Option!4073) Bool)

(assert (=> b!1784378 (= res!804538 (isDefined!3415 lt!694314))))

(declare-fun getRuleFromTag!573 (LexerInterface!3154 List!19740 String!22407) Option!4073)

(assert (=> b!1784378 (= lt!694314 (getRuleFromTag!573 thiss!24550 rules!3447 (tag!3925 (rule!5609 (_1!11031 lt!694302)))))))

(declare-fun lt!694328 () Unit!34003)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!573 (LexerInterface!3154 List!19740 List!19739 Token!6616) Unit!34003)

(assert (=> b!1784378 (= lt!694328 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!573 thiss!24550 rules!3447 lt!694318 (_1!11031 lt!694302)))))

(declare-fun get!6052 (Option!4072) tuple2!19258)

(assert (=> b!1784378 (= lt!694302 (get!6052 lt!694292))))

(declare-fun suffix!1421 () List!19739)

(declare-fun lt!694309 () Unit!34003)

(declare-fun lt!694317 () List!19739)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!676 (LexerInterface!3154 List!19740 List!19739 List!19739) Unit!34003)

(assert (=> b!1784378 (= lt!694309 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!676 thiss!24550 rules!3447 lt!694317 suffix!1421))))

(declare-fun maxPrefix!1708 (LexerInterface!3154 List!19740 List!19739) Option!4072)

(assert (=> b!1784378 (= lt!694292 (maxPrefix!1708 thiss!24550 rules!3447 lt!694318))))

(assert (=> b!1784378 (isPrefix!1765 lt!694317 lt!694318)))

(declare-fun lt!694293 () Unit!34003)

(assert (=> b!1784378 (= lt!694293 (lemmaConcatTwoListThenFirstIsPrefix!1274 lt!694317 suffix!1421))))

(assert (=> b!1784378 (= lt!694318 (++!5349 lt!694317 suffix!1421))))

(declare-fun b!1784379 () Bool)

(declare-fun e!1141986 () Bool)

(assert (=> b!1784379 (= e!1141986 e!1141994)))

(declare-fun res!804528 () Bool)

(assert (=> b!1784379 (=> res!804528 e!1141994)))

(declare-fun lt!694310 () Regex!4853)

(declare-fun lt!694301 () List!19739)

(declare-fun prefixMatch!736 (Regex!4853 List!19739) Bool)

(assert (=> b!1784379 (= res!804528 (prefixMatch!736 lt!694310 lt!694301))))

(declare-fun head!4176 (List!19739) C!9880)

(assert (=> b!1784379 (= lt!694301 (++!5349 lt!694317 (Cons!19669 (head!4176 suffix!1421) Nil!19669)))))

(declare-fun rulesRegex!881 (LexerInterface!3154 List!19740) Regex!4853)

(assert (=> b!1784379 (= lt!694310 (rulesRegex!881 thiss!24550 rules!3447))))

(declare-fun b!1784380 () Bool)

(declare-fun tp!504906 () Bool)

(declare-fun e!1141987 () Bool)

(declare-fun inv!25603 (String!22407) Bool)

(declare-fun inv!25608 (TokenValueInjection!6890) Bool)

(assert (=> b!1784380 (= e!1141987 (and tp!504906 (inv!25603 (tag!3925 (rule!5609 token!523))) (inv!25608 (transformation!3525 (rule!5609 token!523))) e!1141978))))

(declare-fun b!1784381 () Bool)

(declare-fun e!1141979 () Unit!34003)

(declare-fun Unit!34005 () Unit!34003)

(assert (=> b!1784381 (= e!1141979 Unit!34005)))

(declare-fun b!1784382 () Bool)

(declare-fun e!1142000 () Bool)

(declare-fun e!1141992 () Bool)

(assert (=> b!1784382 (= e!1142000 e!1141992)))

(declare-fun res!804527 () Bool)

(assert (=> b!1784382 (=> res!804527 e!1141992)))

(declare-fun lt!694326 () Option!4072)

(assert (=> b!1784382 (= res!804527 (or (not (= lt!694287 (_2!11031 lt!694302))) (not (= lt!694326 (Some!4071 (tuple2!19259 (_1!11031 lt!694302) lt!694287))))))))

(assert (=> b!1784382 (= (_2!11031 lt!694302) lt!694287)))

(declare-fun lt!694316 () Unit!34003)

(declare-fun lemmaSamePrefixThenSameSuffix!876 (List!19739 List!19739 List!19739 List!19739 List!19739) Unit!34003)

(assert (=> b!1784382 (= lt!694316 (lemmaSamePrefixThenSameSuffix!876 lt!694304 (_2!11031 lt!694302) lt!694304 lt!694287 lt!694318))))

(declare-fun getSuffix!932 (List!19739 List!19739) List!19739)

(assert (=> b!1784382 (= lt!694287 (getSuffix!932 lt!694318 lt!694304))))

(assert (=> b!1784382 (= lt!694326 (Some!4071 (tuple2!19259 lt!694305 (_2!11031 lt!694302))))))

(declare-fun maxPrefixOneRule!1077 (LexerInterface!3154 Rule!6850 List!19739) Option!4072)

(assert (=> b!1784382 (= lt!694326 (maxPrefixOneRule!1077 thiss!24550 (rule!5609 (_1!11031 lt!694302)) lt!694318))))

(declare-fun apply!5325 (TokenValueInjection!6890 BalanceConc!13030) TokenValue!3615)

(declare-fun size!15625 (List!19739) Int)

(assert (=> b!1784382 (= lt!694305 (Token!6617 (apply!5325 (transformation!3525 (rule!5609 (_1!11031 lt!694302))) lt!694290) (rule!5609 (_1!11031 lt!694302)) (size!15625 lt!694304) lt!694304))))

(declare-fun seqFromList!2494 (List!19739) BalanceConc!13030)

(assert (=> b!1784382 (= lt!694290 (seqFromList!2494 lt!694304))))

(declare-fun lt!694295 () Unit!34003)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!455 (LexerInterface!3154 List!19740 List!19739 List!19739 List!19739 Rule!6850) Unit!34003)

(assert (=> b!1784382 (= lt!694295 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!455 thiss!24550 rules!3447 lt!694304 lt!694318 (_2!11031 lt!694302) (rule!5609 (_1!11031 lt!694302))))))

(declare-fun b!1784383 () Bool)

(declare-fun res!804535 () Bool)

(assert (=> b!1784383 (=> (not res!804535) (not e!1141976))))

(declare-fun rulesInvariant!2823 (LexerInterface!3154 List!19740) Bool)

(assert (=> b!1784383 (= res!804535 (rulesInvariant!2823 thiss!24550 rules!3447))))

(declare-fun b!1784384 () Bool)

(declare-fun res!804544 () Bool)

(declare-fun e!1141999 () Bool)

(assert (=> b!1784384 (=> (not res!804544) (not e!1141999))))

(declare-fun lt!694322 () tuple2!19258)

(assert (=> b!1784384 (= res!804544 (isEmpty!12430 (_2!11031 lt!694322)))))

(declare-fun e!1141990 () Bool)

(assert (=> b!1784385 (= e!1141995 e!1141990)))

(declare-fun res!804541 () Bool)

(assert (=> b!1784385 (=> res!804541 e!1141990)))

(declare-fun Forall!892 (Int) Bool)

(assert (=> b!1784385 (= res!804541 (not (Forall!892 lambda!70742)))))

(declare-fun lt!694327 () Unit!34003)

(declare-fun lemmaInv!724 (TokenValueInjection!6890) Unit!34003)

(assert (=> b!1784385 (= lt!694327 (lemmaInv!724 (transformation!3525 (rule!5609 (_1!11031 lt!694302)))))))

(declare-fun b!1784386 () Bool)

(declare-fun res!804536 () Bool)

(assert (=> b!1784386 (=> (not res!804536) (not e!1141999))))

(assert (=> b!1784386 (= res!804536 (= (rule!5609 token!523) rule!422))))

(declare-fun e!1141974 () Bool)

(assert (=> b!1784387 (= e!1141974 (and tp!504897 tp!504904))))

(declare-fun b!1784388 () Bool)

(declare-fun e!1141975 () Unit!34003)

(declare-fun Unit!34006 () Unit!34003)

(assert (=> b!1784388 (= e!1141975 Unit!34006)))

(declare-fun b!1784389 () Bool)

(declare-fun Unit!34007 () Unit!34003)

(assert (=> b!1784389 (= e!1141979 Unit!34007)))

(declare-fun lt!694319 () Unit!34003)

(declare-fun lemmaMaxPrefixThenMatchesRulesRegex!232 (LexerInterface!3154 List!19740 List!19739 Token!6616 Rule!6850 List!19739) Unit!34003)

(assert (=> b!1784389 (= lt!694319 (lemmaMaxPrefixThenMatchesRulesRegex!232 thiss!24550 rules!3447 lt!694318 (_1!11031 lt!694302) (rule!5609 (_1!11031 lt!694302)) (_2!11031 lt!694302)))))

(assert (=> b!1784389 (matchR!2326 lt!694310 lt!694304)))

(declare-fun lt!694312 () List!19739)

(assert (=> b!1784389 (= lt!694312 (getSuffix!932 lt!694318 lt!694317))))

(declare-fun lt!694313 () Unit!34003)

(assert (=> b!1784389 (= lt!694313 (lemmaSamePrefixThenSameSuffix!876 lt!694317 suffix!1421 lt!694317 lt!694312 lt!694318))))

(assert (=> b!1784389 (= suffix!1421 lt!694312)))

(declare-fun lt!694299 () Unit!34003)

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!301 (List!19739 List!19739) Unit!34003)

(assert (=> b!1784389 (= lt!694299 (lemmaAddHeadSuffixToPrefixStillPrefix!301 lt!694317 lt!694318))))

(assert (=> b!1784389 (isPrefix!1765 (++!5349 lt!694317 (Cons!19669 (head!4176 lt!694312) Nil!19669)) lt!694318)))

(declare-fun lt!694320 () Unit!34003)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!173 (List!19739 List!19739 List!19739) Unit!34003)

(assert (=> b!1784389 (= lt!694320 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!173 lt!694304 lt!694301 lt!694318))))

(assert (=> b!1784389 (isPrefix!1765 lt!694301 lt!694304)))

(declare-fun lt!694325 () Unit!34003)

(declare-fun lemmaNotPrefixMatchThenCannotMatchLonger!164 (Regex!4853 List!19739 List!19739) Unit!34003)

(assert (=> b!1784389 (= lt!694325 (lemmaNotPrefixMatchThenCannotMatchLonger!164 lt!694310 lt!694301 lt!694304))))

(assert (=> b!1784389 false))

(declare-fun e!1141989 () Bool)

(declare-fun b!1784390 () Bool)

(declare-fun tp!504907 () Bool)

(declare-fun e!1141985 () Bool)

(assert (=> b!1784390 (= e!1141985 (and tp!504907 (inv!25603 (tag!3925 (h!25071 rules!3447))) (inv!25608 (transformation!3525 (h!25071 rules!3447))) e!1141989))))

(declare-fun b!1784391 () Bool)

(declare-fun res!804523 () Bool)

(assert (=> b!1784391 (=> res!804523 e!1141982)))

(assert (=> b!1784391 (= res!804523 (not (contains!3557 rules!3447 (rule!5609 (_1!11031 lt!694302)))))))

(declare-fun b!1784392 () Bool)

(declare-fun e!1141998 () Bool)

(assert (=> b!1784392 (= e!1141998 e!1141982)))

(declare-fun res!804543 () Bool)

(assert (=> b!1784392 (=> res!804543 e!1141982)))

(assert (=> b!1784392 (= res!804543 (= (rule!5609 (_1!11031 lt!694302)) (rule!5609 token!523)))))

(assert (=> b!1784392 (= suffix!1421 (_2!11031 lt!694302))))

(declare-fun lt!694294 () Unit!34003)

(assert (=> b!1784392 (= lt!694294 (lemmaSamePrefixThenSameSuffix!876 lt!694317 suffix!1421 lt!694317 (_2!11031 lt!694302) lt!694318))))

(assert (=> b!1784392 (= lt!694304 lt!694317)))

(declare-fun lt!694307 () Unit!34003)

(declare-fun lemmaIsPrefixSameLengthThenSameList!261 (List!19739 List!19739 List!19739) Unit!34003)

(assert (=> b!1784392 (= lt!694307 (lemmaIsPrefixSameLengthThenSameList!261 lt!694304 lt!694317 lt!694318))))

(declare-fun tp!504908 () Bool)

(declare-fun e!1141993 () Bool)

(declare-fun b!1784393 () Bool)

(assert (=> b!1784393 (= e!1141993 (and tp!504908 (inv!25603 (tag!3925 rule!422)) (inv!25608 (transformation!3525 rule!422)) e!1141974))))

(declare-fun b!1784394 () Bool)

(declare-fun res!804540 () Bool)

(assert (=> b!1784394 (=> res!804540 e!1141982)))

(declare-fun getIndex!190 (List!19740 Rule!6850) Int)

(assert (=> b!1784394 (= res!804540 (>= (getIndex!190 rules!3447 (rule!5609 token!523)) (getIndex!190 rules!3447 (rule!5609 (_1!11031 lt!694302)))))))

(declare-fun res!804533 () Bool)

(assert (=> start!177694 (=> (not res!804533) (not e!1141976))))

(get-info :version)

(assert (=> start!177694 (= res!804533 ((_ is Lexer!3152) thiss!24550))))

(assert (=> start!177694 e!1141976))

(declare-fun e!1141981 () Bool)

(assert (=> start!177694 e!1141981))

(assert (=> start!177694 e!1141993))

(assert (=> start!177694 true))

(declare-fun e!1141977 () Bool)

(declare-fun inv!25609 (Token!6616) Bool)

(assert (=> start!177694 (and (inv!25609 token!523) e!1141977)))

(declare-fun e!1141980 () Bool)

(assert (=> start!177694 e!1141980))

(declare-fun b!1784395 () Bool)

(declare-fun Unit!34008 () Unit!34003)

(assert (=> b!1784395 (= e!1141975 Unit!34008)))

(declare-fun lt!694300 () Unit!34003)

(declare-fun lemmaMaxPrefixOutputsMaxPrefix!234 (LexerInterface!3154 List!19740 Rule!6850 List!19739 List!19739 List!19739 Rule!6850) Unit!34003)

(assert (=> b!1784395 (= lt!694300 (lemmaMaxPrefixOutputsMaxPrefix!234 thiss!24550 rules!3447 (rule!5609 (_1!11031 lt!694302)) lt!694304 lt!694318 lt!694317 rule!422))))

(assert (=> b!1784395 false))

(declare-fun b!1784396 () Bool)

(assert (=> b!1784396 (= e!1141999 (not e!1141986))))

(declare-fun res!804545 () Bool)

(assert (=> b!1784396 (=> res!804545 e!1141986)))

(assert (=> b!1784396 (= res!804545 (not (matchR!2326 (regex!3525 rule!422) lt!694317)))))

(assert (=> b!1784396 (ruleValid!1023 thiss!24550 rule!422)))

(declare-fun lt!694323 () Unit!34003)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!546 (LexerInterface!3154 Rule!6850 List!19740) Unit!34003)

(assert (=> b!1784396 (= lt!694323 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!546 thiss!24550 rule!422 rules!3447))))

(declare-fun tp!504905 () Bool)

(declare-fun b!1784397 () Bool)

(declare-fun inv!21 (TokenValue!3615) Bool)

(assert (=> b!1784397 (= e!1141977 (and (inv!21 (value!110135 token!523)) e!1141987 tp!504905))))

(declare-fun b!1784398 () Bool)

(declare-fun e!1141973 () Bool)

(assert (=> b!1784398 (= e!1141973 e!1141998)))

(declare-fun res!804525 () Bool)

(assert (=> b!1784398 (=> res!804525 e!1141998)))

(declare-fun lt!694297 () Int)

(declare-fun lt!694288 () Int)

(assert (=> b!1784398 (= res!804525 (not (= lt!694297 lt!694288)))))

(declare-fun lt!694321 () Unit!34003)

(assert (=> b!1784398 (= lt!694321 e!1141975)))

(declare-fun c!290215 () Bool)

(assert (=> b!1784398 (= c!290215 (< lt!694297 lt!694288))))

(assert (=> b!1784399 (= e!1141989 (and tp!504903 tp!504901))))

(declare-fun b!1784400 () Bool)

(declare-fun e!1141991 () Bool)

(assert (=> b!1784400 (= e!1141991 e!1142000)))

(declare-fun res!804546 () Bool)

(assert (=> b!1784400 (=> res!804546 e!1142000)))

(declare-fun lt!694296 () TokenValue!3615)

(assert (=> b!1784400 (= res!804546 (not (= lt!694292 (Some!4071 (tuple2!19259 (Token!6617 lt!694296 (rule!5609 (_1!11031 lt!694302)) lt!694297 lt!694304) (_2!11031 lt!694302))))))))

(declare-fun size!15626 (BalanceConc!13030) Int)

(assert (=> b!1784400 (= lt!694297 (size!15626 lt!694284))))

(assert (=> b!1784400 (= lt!694296 (apply!5325 (transformation!3525 (rule!5609 (_1!11031 lt!694302))) lt!694284))))

(declare-fun lt!694291 () Unit!34003)

(declare-fun lemmaCharactersSize!583 (Token!6616) Unit!34003)

(assert (=> b!1784400 (= lt!694291 (lemmaCharactersSize!583 (_1!11031 lt!694302)))))

(declare-fun lt!694306 () Unit!34003)

(declare-fun lemmaEqSameImage!436 (TokenValueInjection!6890 BalanceConc!13030 BalanceConc!13030) Unit!34003)

(assert (=> b!1784400 (= lt!694306 (lemmaEqSameImage!436 (transformation!3525 (rule!5609 (_1!11031 lt!694302))) lt!694284 (seqFromList!2494 (originalCharacters!4339 (_1!11031 lt!694302)))))))

(declare-fun b!1784401 () Bool)

(declare-fun res!804542 () Bool)

(assert (=> b!1784401 (=> res!804542 e!1141986)))

(assert (=> b!1784401 (= res!804542 (isEmpty!12430 suffix!1421))))

(declare-fun b!1784402 () Bool)

(assert (=> b!1784402 (= e!1141992 e!1141973)))

(declare-fun res!804524 () Bool)

(assert (=> b!1784402 (=> res!804524 e!1141973)))

(declare-fun lt!694303 () Bool)

(assert (=> b!1784402 (= res!804524 lt!694303)))

(declare-fun lt!694289 () Unit!34003)

(assert (=> b!1784402 (= lt!694289 e!1141979)))

(declare-fun c!290214 () Bool)

(assert (=> b!1784402 (= c!290214 lt!694303)))

(assert (=> b!1784402 (= lt!694303 (> lt!694297 lt!694288))))

(declare-fun lt!694315 () BalanceConc!13030)

(assert (=> b!1784402 (= lt!694288 (size!15626 lt!694315))))

(assert (=> b!1784402 (matchR!2326 lt!694310 lt!694317)))

(declare-fun lt!694311 () Unit!34003)

(assert (=> b!1784402 (= lt!694311 (lemmaMaxPrefixThenMatchesRulesRegex!232 thiss!24550 rules!3447 lt!694317 token!523 rule!422 Nil!19669))))

(declare-fun b!1784403 () Bool)

(declare-fun res!804532 () Bool)

(assert (=> b!1784403 (=> res!804532 e!1141991)))

(declare-fun dynLambda!9686 (Int TokenValue!3615) BalanceConc!13030)

(assert (=> b!1784403 (= res!804532 (not (= lt!694284 (dynLambda!9686 (toChars!4911 (transformation!3525 (rule!5609 (_1!11031 lt!694302)))) (value!110135 (_1!11031 lt!694302))))))))

(declare-fun b!1784404 () Bool)

(declare-fun e!1141997 () Bool)

(declare-fun lt!694324 () Rule!6850)

(assert (=> b!1784404 (= e!1141997 (= (rule!5609 (_1!11031 lt!694302)) lt!694324))))

(declare-fun b!1784405 () Bool)

(declare-fun e!1142001 () Bool)

(assert (=> b!1784405 (= e!1141976 e!1142001)))

(declare-fun res!804529 () Bool)

(assert (=> b!1784405 (=> (not res!804529) (not e!1142001))))

(declare-fun lt!694308 () Option!4072)

(declare-fun isDefined!3416 (Option!4072) Bool)

(assert (=> b!1784405 (= res!804529 (isDefined!3416 lt!694308))))

(assert (=> b!1784405 (= lt!694308 (maxPrefix!1708 thiss!24550 rules!3447 lt!694317))))

(assert (=> b!1784405 (= lt!694317 (list!7999 lt!694315))))

(assert (=> b!1784405 (= lt!694315 (charsOf!2174 token!523))))

(declare-fun b!1784406 () Bool)

(declare-fun tp!504899 () Bool)

(assert (=> b!1784406 (= e!1141980 (and e!1141985 tp!504899))))

(declare-fun b!1784407 () Bool)

(declare-fun res!804537 () Bool)

(assert (=> b!1784407 (=> (not res!804537) (not e!1141976))))

(declare-fun isEmpty!12431 (List!19740) Bool)

(assert (=> b!1784407 (= res!804537 (not (isEmpty!12431 rules!3447)))))

(declare-fun b!1784408 () Bool)

(assert (=> b!1784408 (= e!1142001 e!1141999)))

(declare-fun res!804531 () Bool)

(assert (=> b!1784408 (=> (not res!804531) (not e!1141999))))

(assert (=> b!1784408 (= res!804531 (= (_1!11031 lt!694322) token!523))))

(assert (=> b!1784408 (= lt!694322 (get!6052 lt!694308))))

(declare-fun b!1784409 () Bool)

(assert (=> b!1784409 (= e!1141983 e!1141997)))

(declare-fun res!804522 () Bool)

(assert (=> b!1784409 (=> (not res!804522) (not e!1141997))))

(assert (=> b!1784409 (= res!804522 (matchR!2326 (regex!3525 lt!694324) (list!7999 (charsOf!2174 (_1!11031 lt!694302)))))))

(declare-fun get!6053 (Option!4073) Rule!6850)

(assert (=> b!1784409 (= lt!694324 (get!6053 lt!694314))))

(declare-fun b!1784410 () Bool)

(declare-fun tp_is_empty!7949 () Bool)

(declare-fun tp!504900 () Bool)

(assert (=> b!1784410 (= e!1141981 (and tp_is_empty!7949 tp!504900))))

(declare-fun b!1784411 () Bool)

(assert (=> b!1784411 (= e!1141990 e!1141991)))

(declare-fun res!804547 () Bool)

(assert (=> b!1784411 (=> res!804547 e!1141991)))

(declare-fun dynLambda!9687 (Int BalanceConc!13030) TokenValue!3615)

(assert (=> b!1784411 (= res!804547 (not (= (list!7999 (dynLambda!9686 (toChars!4911 (transformation!3525 (rule!5609 (_1!11031 lt!694302)))) (dynLambda!9687 (toValue!5052 (transformation!3525 (rule!5609 (_1!11031 lt!694302)))) lt!694284))) lt!694304)))))

(declare-fun lt!694298 () Unit!34003)

(assert (=> b!1784411 (= lt!694298 (lemmaSemiInverse!663 (transformation!3525 (rule!5609 (_1!11031 lt!694302))) lt!694284))))

(assert (= (and start!177694 res!804533) b!1784407))

(assert (= (and b!1784407 res!804537) b!1784383))

(assert (= (and b!1784383 res!804535) b!1784373))

(assert (= (and b!1784373 res!804548) b!1784405))

(assert (= (and b!1784405 res!804529) b!1784408))

(assert (= (and b!1784408 res!804531) b!1784384))

(assert (= (and b!1784384 res!804544) b!1784386))

(assert (= (and b!1784386 res!804536) b!1784396))

(assert (= (and b!1784396 (not res!804545)) b!1784401))

(assert (= (and b!1784401 (not res!804542)) b!1784379))

(assert (= (and b!1784379 (not res!804528)) b!1784378))

(assert (= (and b!1784378 res!804538) b!1784409))

(assert (= (and b!1784409 res!804522) b!1784404))

(assert (= (and b!1784378 (not res!804521)) b!1784375))

(assert (= (and b!1784375 (not res!804534)) b!1784385))

(assert (= (and b!1784385 (not res!804541)) b!1784411))

(assert (= (and b!1784411 (not res!804547)) b!1784403))

(assert (= (and b!1784403 (not res!804532)) b!1784400))

(assert (= (and b!1784400 (not res!804546)) b!1784382))

(assert (= (and b!1784382 (not res!804527)) b!1784402))

(assert (= (and b!1784402 c!290214) b!1784389))

(assert (= (and b!1784402 (not c!290214)) b!1784381))

(assert (= (and b!1784402 (not res!804524)) b!1784398))

(assert (= (and b!1784398 c!290215) b!1784395))

(assert (= (and b!1784398 (not c!290215)) b!1784388))

(assert (= (and b!1784398 (not res!804525)) b!1784392))

(assert (= (and b!1784392 (not res!804543)) b!1784394))

(assert (= (and b!1784394 (not res!804540)) b!1784391))

(assert (= (and b!1784391 (not res!804523)) b!1784377))

(assert (= (and b!1784377 (not res!804530)) b!1784372))

(assert (= (and b!1784372 (not res!804539)) b!1784374))

(assert (= (and b!1784374 (not res!804526)) b!1784376))

(assert (= (and start!177694 ((_ is Cons!19669) suffix!1421)) b!1784410))

(assert (= b!1784393 b!1784387))

(assert (= start!177694 b!1784393))

(assert (= b!1784380 b!1784371))

(assert (= b!1784397 b!1784380))

(assert (= start!177694 b!1784397))

(assert (= b!1784390 b!1784399))

(assert (= b!1784406 b!1784390))

(assert (= (and start!177694 ((_ is Cons!19670) rules!3447)) b!1784406))

(declare-fun b_lambda!58507 () Bool)

(assert (=> (not b_lambda!58507) (not b!1784403)))

(declare-fun t!166908 () Bool)

(declare-fun tb!108579 () Bool)

(assert (=> (and b!1784399 (= (toChars!4911 (transformation!3525 (h!25071 rules!3447))) (toChars!4911 (transformation!3525 (rule!5609 (_1!11031 lt!694302))))) t!166908) tb!108579))

(declare-fun b!1784427 () Bool)

(declare-fun e!1142014 () Bool)

(declare-fun tp!504911 () Bool)

(declare-fun inv!25610 (Conc!6543) Bool)

(assert (=> b!1784427 (= e!1142014 (and (inv!25610 (c!290217 (dynLambda!9686 (toChars!4911 (transformation!3525 (rule!5609 (_1!11031 lt!694302)))) (value!110135 (_1!11031 lt!694302))))) tp!504911))))

(declare-fun result!130638 () Bool)

(declare-fun inv!25611 (BalanceConc!13030) Bool)

(assert (=> tb!108579 (= result!130638 (and (inv!25611 (dynLambda!9686 (toChars!4911 (transformation!3525 (rule!5609 (_1!11031 lt!694302)))) (value!110135 (_1!11031 lt!694302)))) e!1142014))))

(assert (= tb!108579 b!1784427))

(declare-fun m!2207385 () Bool)

(assert (=> b!1784427 m!2207385))

(declare-fun m!2207387 () Bool)

(assert (=> tb!108579 m!2207387))

(assert (=> b!1784403 t!166908))

(declare-fun b_and!137135 () Bool)

(assert (= b_and!137125 (and (=> t!166908 result!130638) b_and!137135)))

(declare-fun tb!108581 () Bool)

(declare-fun t!166910 () Bool)

(assert (=> (and b!1784371 (= (toChars!4911 (transformation!3525 (rule!5609 token!523))) (toChars!4911 (transformation!3525 (rule!5609 (_1!11031 lt!694302))))) t!166910) tb!108581))

(declare-fun result!130642 () Bool)

(assert (= result!130642 result!130638))

(assert (=> b!1784403 t!166910))

(declare-fun b_and!137137 () Bool)

(assert (= b_and!137129 (and (=> t!166910 result!130642) b_and!137137)))

(declare-fun tb!108583 () Bool)

(declare-fun t!166912 () Bool)

(assert (=> (and b!1784387 (= (toChars!4911 (transformation!3525 rule!422)) (toChars!4911 (transformation!3525 (rule!5609 (_1!11031 lt!694302))))) t!166912) tb!108583))

(declare-fun result!130644 () Bool)

(assert (= result!130644 result!130638))

(assert (=> b!1784403 t!166912))

(declare-fun b_and!137139 () Bool)

(assert (= b_and!137133 (and (=> t!166912 result!130644) b_and!137139)))

(declare-fun b_lambda!58509 () Bool)

(assert (=> (not b_lambda!58509) (not b!1784411)))

(declare-fun tb!108585 () Bool)

(declare-fun t!166914 () Bool)

(assert (=> (and b!1784399 (= (toChars!4911 (transformation!3525 (h!25071 rules!3447))) (toChars!4911 (transformation!3525 (rule!5609 (_1!11031 lt!694302))))) t!166914) tb!108585))

(declare-fun b!1784428 () Bool)

(declare-fun e!1142015 () Bool)

(declare-fun tp!504912 () Bool)

(assert (=> b!1784428 (= e!1142015 (and (inv!25610 (c!290217 (dynLambda!9686 (toChars!4911 (transformation!3525 (rule!5609 (_1!11031 lt!694302)))) (dynLambda!9687 (toValue!5052 (transformation!3525 (rule!5609 (_1!11031 lt!694302)))) lt!694284)))) tp!504912))))

(declare-fun result!130646 () Bool)

(assert (=> tb!108585 (= result!130646 (and (inv!25611 (dynLambda!9686 (toChars!4911 (transformation!3525 (rule!5609 (_1!11031 lt!694302)))) (dynLambda!9687 (toValue!5052 (transformation!3525 (rule!5609 (_1!11031 lt!694302)))) lt!694284))) e!1142015))))

(assert (= tb!108585 b!1784428))

(declare-fun m!2207389 () Bool)

(assert (=> b!1784428 m!2207389))

(declare-fun m!2207391 () Bool)

(assert (=> tb!108585 m!2207391))

(assert (=> b!1784411 t!166914))

(declare-fun b_and!137141 () Bool)

(assert (= b_and!137135 (and (=> t!166914 result!130646) b_and!137141)))

(declare-fun t!166916 () Bool)

(declare-fun tb!108587 () Bool)

(assert (=> (and b!1784371 (= (toChars!4911 (transformation!3525 (rule!5609 token!523))) (toChars!4911 (transformation!3525 (rule!5609 (_1!11031 lt!694302))))) t!166916) tb!108587))

(declare-fun result!130648 () Bool)

(assert (= result!130648 result!130646))

(assert (=> b!1784411 t!166916))

(declare-fun b_and!137143 () Bool)

(assert (= b_and!137137 (and (=> t!166916 result!130648) b_and!137143)))

(declare-fun tb!108589 () Bool)

(declare-fun t!166918 () Bool)

(assert (=> (and b!1784387 (= (toChars!4911 (transformation!3525 rule!422)) (toChars!4911 (transformation!3525 (rule!5609 (_1!11031 lt!694302))))) t!166918) tb!108589))

(declare-fun result!130650 () Bool)

(assert (= result!130650 result!130646))

(assert (=> b!1784411 t!166918))

(declare-fun b_and!137145 () Bool)

(assert (= b_and!137139 (and (=> t!166918 result!130650) b_and!137145)))

(declare-fun b_lambda!58511 () Bool)

(assert (=> (not b_lambda!58511) (not b!1784411)))

(declare-fun tb!108591 () Bool)

(declare-fun t!166920 () Bool)

(assert (=> (and b!1784399 (= (toValue!5052 (transformation!3525 (h!25071 rules!3447))) (toValue!5052 (transformation!3525 (rule!5609 (_1!11031 lt!694302))))) t!166920) tb!108591))

(declare-fun result!130652 () Bool)

(assert (=> tb!108591 (= result!130652 (inv!21 (dynLambda!9687 (toValue!5052 (transformation!3525 (rule!5609 (_1!11031 lt!694302)))) lt!694284)))))

(declare-fun m!2207393 () Bool)

(assert (=> tb!108591 m!2207393))

(assert (=> b!1784411 t!166920))

(declare-fun b_and!137147 () Bool)

(assert (= b_and!137123 (and (=> t!166920 result!130652) b_and!137147)))

(declare-fun tb!108593 () Bool)

(declare-fun t!166922 () Bool)

(assert (=> (and b!1784371 (= (toValue!5052 (transformation!3525 (rule!5609 token!523))) (toValue!5052 (transformation!3525 (rule!5609 (_1!11031 lt!694302))))) t!166922) tb!108593))

(declare-fun result!130656 () Bool)

(assert (= result!130656 result!130652))

(assert (=> b!1784411 t!166922))

(declare-fun b_and!137149 () Bool)

(assert (= b_and!137127 (and (=> t!166922 result!130656) b_and!137149)))

(declare-fun tb!108595 () Bool)

(declare-fun t!166924 () Bool)

(assert (=> (and b!1784387 (= (toValue!5052 (transformation!3525 rule!422)) (toValue!5052 (transformation!3525 (rule!5609 (_1!11031 lt!694302))))) t!166924) tb!108595))

(declare-fun result!130658 () Bool)

(assert (= result!130658 result!130652))

(assert (=> b!1784411 t!166924))

(declare-fun b_and!137151 () Bool)

(assert (= b_and!137131 (and (=> t!166924 result!130658) b_and!137151)))

(declare-fun m!2207395 () Bool)

(assert (=> b!1784394 m!2207395))

(declare-fun m!2207397 () Bool)

(assert (=> b!1784394 m!2207397))

(declare-fun m!2207399 () Bool)

(assert (=> b!1784379 m!2207399))

(declare-fun m!2207401 () Bool)

(assert (=> b!1784379 m!2207401))

(declare-fun m!2207403 () Bool)

(assert (=> b!1784379 m!2207403))

(declare-fun m!2207405 () Bool)

(assert (=> b!1784379 m!2207405))

(declare-fun m!2207407 () Bool)

(assert (=> b!1784408 m!2207407))

(declare-fun m!2207409 () Bool)

(assert (=> b!1784409 m!2207409))

(assert (=> b!1784409 m!2207409))

(declare-fun m!2207411 () Bool)

(assert (=> b!1784409 m!2207411))

(assert (=> b!1784409 m!2207411))

(declare-fun m!2207413 () Bool)

(assert (=> b!1784409 m!2207413))

(declare-fun m!2207415 () Bool)

(assert (=> b!1784409 m!2207415))

(declare-fun m!2207417 () Bool)

(assert (=> b!1784383 m!2207417))

(declare-fun m!2207419 () Bool)

(assert (=> b!1784402 m!2207419))

(declare-fun m!2207421 () Bool)

(assert (=> b!1784402 m!2207421))

(declare-fun m!2207423 () Bool)

(assert (=> b!1784402 m!2207423))

(declare-fun m!2207425 () Bool)

(assert (=> b!1784395 m!2207425))

(declare-fun m!2207427 () Bool)

(assert (=> b!1784391 m!2207427))

(declare-fun m!2207429 () Bool)

(assert (=> b!1784376 m!2207429))

(declare-fun m!2207431 () Bool)

(assert (=> b!1784407 m!2207431))

(declare-fun m!2207433 () Bool)

(assert (=> b!1784400 m!2207433))

(declare-fun m!2207435 () Bool)

(assert (=> b!1784400 m!2207435))

(declare-fun m!2207437 () Bool)

(assert (=> b!1784400 m!2207437))

(assert (=> b!1784400 m!2207435))

(declare-fun m!2207439 () Bool)

(assert (=> b!1784400 m!2207439))

(declare-fun m!2207441 () Bool)

(assert (=> b!1784400 m!2207441))

(declare-fun m!2207443 () Bool)

(assert (=> b!1784380 m!2207443))

(declare-fun m!2207445 () Bool)

(assert (=> b!1784380 m!2207445))

(declare-fun m!2207447 () Bool)

(assert (=> b!1784372 m!2207447))

(declare-fun m!2207449 () Bool)

(assert (=> b!1784392 m!2207449))

(declare-fun m!2207451 () Bool)

(assert (=> b!1784392 m!2207451))

(declare-fun m!2207453 () Bool)

(assert (=> b!1784403 m!2207453))

(declare-fun m!2207455 () Bool)

(assert (=> b!1784385 m!2207455))

(declare-fun m!2207457 () Bool)

(assert (=> b!1784385 m!2207457))

(declare-fun m!2207459 () Bool)

(assert (=> b!1784411 m!2207459))

(assert (=> b!1784411 m!2207459))

(declare-fun m!2207461 () Bool)

(assert (=> b!1784411 m!2207461))

(assert (=> b!1784411 m!2207461))

(declare-fun m!2207463 () Bool)

(assert (=> b!1784411 m!2207463))

(declare-fun m!2207465 () Bool)

(assert (=> b!1784411 m!2207465))

(declare-fun m!2207467 () Bool)

(assert (=> b!1784390 m!2207467))

(declare-fun m!2207469 () Bool)

(assert (=> b!1784390 m!2207469))

(declare-fun m!2207471 () Bool)

(assert (=> b!1784375 m!2207471))

(declare-fun m!2207473 () Bool)

(assert (=> b!1784384 m!2207473))

(declare-fun m!2207475 () Bool)

(assert (=> start!177694 m!2207475))

(declare-fun m!2207477 () Bool)

(assert (=> b!1784393 m!2207477))

(declare-fun m!2207479 () Bool)

(assert (=> b!1784393 m!2207479))

(declare-fun m!2207481 () Bool)

(assert (=> b!1784373 m!2207481))

(declare-fun m!2207483 () Bool)

(assert (=> b!1784397 m!2207483))

(declare-fun m!2207485 () Bool)

(assert (=> b!1784401 m!2207485))

(declare-fun m!2207487 () Bool)

(assert (=> b!1784405 m!2207487))

(declare-fun m!2207489 () Bool)

(assert (=> b!1784405 m!2207489))

(declare-fun m!2207491 () Bool)

(assert (=> b!1784405 m!2207491))

(declare-fun m!2207493 () Bool)

(assert (=> b!1784405 m!2207493))

(declare-fun m!2207495 () Bool)

(assert (=> b!1784389 m!2207495))

(declare-fun m!2207497 () Bool)

(assert (=> b!1784389 m!2207497))

(declare-fun m!2207499 () Bool)

(assert (=> b!1784389 m!2207499))

(declare-fun m!2207501 () Bool)

(assert (=> b!1784389 m!2207501))

(declare-fun m!2207503 () Bool)

(assert (=> b!1784389 m!2207503))

(declare-fun m!2207505 () Bool)

(assert (=> b!1784389 m!2207505))

(assert (=> b!1784389 m!2207495))

(declare-fun m!2207507 () Bool)

(assert (=> b!1784389 m!2207507))

(declare-fun m!2207509 () Bool)

(assert (=> b!1784389 m!2207509))

(declare-fun m!2207511 () Bool)

(assert (=> b!1784389 m!2207511))

(declare-fun m!2207513 () Bool)

(assert (=> b!1784389 m!2207513))

(declare-fun m!2207515 () Bool)

(assert (=> b!1784389 m!2207515))

(declare-fun m!2207517 () Bool)

(assert (=> b!1784382 m!2207517))

(declare-fun m!2207519 () Bool)

(assert (=> b!1784382 m!2207519))

(declare-fun m!2207521 () Bool)

(assert (=> b!1784382 m!2207521))

(declare-fun m!2207523 () Bool)

(assert (=> b!1784382 m!2207523))

(declare-fun m!2207525 () Bool)

(assert (=> b!1784382 m!2207525))

(declare-fun m!2207527 () Bool)

(assert (=> b!1784382 m!2207527))

(declare-fun m!2207529 () Bool)

(assert (=> b!1784382 m!2207529))

(declare-fun m!2207531 () Bool)

(assert (=> b!1784378 m!2207531))

(declare-fun m!2207533 () Bool)

(assert (=> b!1784378 m!2207533))

(declare-fun m!2207535 () Bool)

(assert (=> b!1784378 m!2207535))

(declare-fun m!2207537 () Bool)

(assert (=> b!1784378 m!2207537))

(declare-fun m!2207539 () Bool)

(assert (=> b!1784378 m!2207539))

(declare-fun m!2207541 () Bool)

(assert (=> b!1784378 m!2207541))

(declare-fun m!2207543 () Bool)

(assert (=> b!1784378 m!2207543))

(declare-fun m!2207545 () Bool)

(assert (=> b!1784378 m!2207545))

(declare-fun m!2207547 () Bool)

(assert (=> b!1784378 m!2207547))

(declare-fun m!2207549 () Bool)

(assert (=> b!1784378 m!2207549))

(declare-fun m!2207551 () Bool)

(assert (=> b!1784378 m!2207551))

(declare-fun m!2207553 () Bool)

(assert (=> b!1784378 m!2207553))

(assert (=> b!1784378 m!2207409))

(declare-fun m!2207555 () Bool)

(assert (=> b!1784378 m!2207555))

(assert (=> b!1784378 m!2207543))

(declare-fun m!2207557 () Bool)

(assert (=> b!1784378 m!2207557))

(declare-fun m!2207559 () Bool)

(assert (=> b!1784374 m!2207559))

(declare-fun m!2207561 () Bool)

(assert (=> b!1784396 m!2207561))

(declare-fun m!2207563 () Bool)

(assert (=> b!1784396 m!2207563))

(declare-fun m!2207565 () Bool)

(assert (=> b!1784396 m!2207565))

(declare-fun m!2207567 () Bool)

(assert (=> b!1784377 m!2207567))

(check-sat (not b!1784375) (not b!1784400) (not b!1784407) (not b!1784408) (not b!1784385) (not b!1784395) b_and!137141 (not tb!108585) (not b_next!50281) (not b!1784392) (not b_next!50273) (not start!177694) b_and!137149 (not tb!108579) (not b!1784411) (not b!1784389) (not b!1784382) tp_is_empty!7949 (not b!1784380) (not b_lambda!58509) (not b!1784374) b_and!137151 (not b!1784428) (not b!1784384) (not b!1784394) (not b!1784401) (not b!1784402) (not b!1784409) b_and!137143 (not b!1784383) b_and!137147 (not b!1784378) (not b!1784376) (not b_lambda!58507) (not b_next!50271) (not tb!108591) (not b!1784391) (not b!1784390) (not b_next!50275) (not b!1784397) (not b!1784372) (not b!1784405) (not b_next!50277) b_and!137145 (not b!1784427) (not b!1784410) (not b!1784393) (not b!1784406) (not b_next!50279) (not b!1784379) (not b!1784396) (not b!1784377) (not b_lambda!58511) (not b!1784373))
(check-sat b_and!137141 b_and!137149 b_and!137151 b_and!137143 b_and!137147 (not b_next!50271) (not b_next!50275) (not b_next!50279) (not b_next!50281) (not b_next!50273) (not b_next!50277) b_and!137145)
(get-model)

(declare-fun d!544731 () Bool)

(declare-fun lt!694348 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!2865 (List!19740) (InoxSet Rule!6850))

(assert (=> d!544731 (= lt!694348 (select (content!2865 rules!3447) (rule!5609 token!523)))))

(declare-fun e!1142070 () Bool)

(assert (=> d!544731 (= lt!694348 e!1142070)))

(declare-fun res!804595 () Bool)

(assert (=> d!544731 (=> (not res!804595) (not e!1142070))))

(assert (=> d!544731 (= res!804595 ((_ is Cons!19670) rules!3447))))

(assert (=> d!544731 (= (contains!3557 rules!3447 (rule!5609 token!523)) lt!694348)))

(declare-fun b!1784516 () Bool)

(declare-fun e!1142069 () Bool)

(assert (=> b!1784516 (= e!1142070 e!1142069)))

(declare-fun res!804594 () Bool)

(assert (=> b!1784516 (=> res!804594 e!1142069)))

(assert (=> b!1784516 (= res!804594 (= (h!25071 rules!3447) (rule!5609 token!523)))))

(declare-fun b!1784517 () Bool)

(assert (=> b!1784517 (= e!1142069 (contains!3557 (t!166927 rules!3447) (rule!5609 token!523)))))

(assert (= (and d!544731 res!804595) b!1784516))

(assert (= (and b!1784516 (not res!804594)) b!1784517))

(declare-fun m!2207623 () Bool)

(assert (=> d!544731 m!2207623))

(declare-fun m!2207625 () Bool)

(assert (=> d!544731 m!2207625))

(declare-fun m!2207627 () Bool)

(assert (=> b!1784517 m!2207627))

(assert (=> b!1784377 d!544731))

(declare-fun d!544745 () Bool)

(declare-fun res!804600 () Bool)

(declare-fun e!1142073 () Bool)

(assert (=> d!544745 (=> (not res!804600) (not e!1142073))))

(declare-fun validRegex!1969 (Regex!4853) Bool)

(assert (=> d!544745 (= res!804600 (validRegex!1969 (regex!3525 (rule!5609 (_1!11031 lt!694302)))))))

(assert (=> d!544745 (= (ruleValid!1023 thiss!24550 (rule!5609 (_1!11031 lt!694302))) e!1142073)))

(declare-fun b!1784522 () Bool)

(declare-fun res!804601 () Bool)

(assert (=> b!1784522 (=> (not res!804601) (not e!1142073))))

(declare-fun nullable!1495 (Regex!4853) Bool)

(assert (=> b!1784522 (= res!804601 (not (nullable!1495 (regex!3525 (rule!5609 (_1!11031 lt!694302))))))))

(declare-fun b!1784523 () Bool)

(assert (=> b!1784523 (= e!1142073 (not (= (tag!3925 (rule!5609 (_1!11031 lt!694302))) (String!22408 ""))))))

(assert (= (and d!544745 res!804600) b!1784522))

(assert (= (and b!1784522 res!804601) b!1784523))

(declare-fun m!2207629 () Bool)

(assert (=> d!544745 m!2207629))

(declare-fun m!2207631 () Bool)

(assert (=> b!1784522 m!2207631))

(assert (=> b!1784376 d!544745))

(declare-fun b!1784540 () Bool)

(declare-fun e!1142084 () Bool)

(declare-fun inv!15 (TokenValue!3615) Bool)

(assert (=> b!1784540 (= e!1142084 (inv!15 (value!110135 token!523)))))

(declare-fun b!1784541 () Bool)

(declare-fun e!1142083 () Bool)

(declare-fun inv!16 (TokenValue!3615) Bool)

(assert (=> b!1784541 (= e!1142083 (inv!16 (value!110135 token!523)))))

(declare-fun b!1784542 () Bool)

(declare-fun e!1142085 () Bool)

(declare-fun inv!17 (TokenValue!3615) Bool)

(assert (=> b!1784542 (= e!1142085 (inv!17 (value!110135 token!523)))))

(declare-fun d!544747 () Bool)

(declare-fun c!290245 () Bool)

(assert (=> d!544747 (= c!290245 ((_ is IntegerValue!10845) (value!110135 token!523)))))

(assert (=> d!544747 (= (inv!21 (value!110135 token!523)) e!1142083)))

(declare-fun b!1784543 () Bool)

(assert (=> b!1784543 (= e!1142083 e!1142085)))

(declare-fun c!290246 () Bool)

(assert (=> b!1784543 (= c!290246 ((_ is IntegerValue!10846) (value!110135 token!523)))))

(declare-fun b!1784544 () Bool)

(declare-fun res!804604 () Bool)

(assert (=> b!1784544 (=> res!804604 e!1142084)))

(assert (=> b!1784544 (= res!804604 (not ((_ is IntegerValue!10847) (value!110135 token!523))))))

(assert (=> b!1784544 (= e!1142085 e!1142084)))

(assert (= (and d!544747 c!290245) b!1784541))

(assert (= (and d!544747 (not c!290245)) b!1784543))

(assert (= (and b!1784543 c!290246) b!1784542))

(assert (= (and b!1784543 (not c!290246)) b!1784544))

(assert (= (and b!1784544 (not res!804604)) b!1784540))

(declare-fun m!2207643 () Bool)

(assert (=> b!1784540 m!2207643))

(declare-fun m!2207645 () Bool)

(assert (=> b!1784541 m!2207645))

(declare-fun m!2207647 () Bool)

(assert (=> b!1784542 m!2207647))

(assert (=> b!1784397 d!544747))

(declare-fun b!1784579 () Bool)

(declare-fun e!1142107 () Bool)

(assert (=> b!1784579 (= e!1142107 (nullable!1495 (regex!3525 rule!422)))))

(declare-fun b!1784580 () Bool)

(declare-fun e!1142109 () Bool)

(declare-fun lt!694366 () Bool)

(declare-fun call!111347 () Bool)

(assert (=> b!1784580 (= e!1142109 (= lt!694366 call!111347))))

(declare-fun b!1784581 () Bool)

(declare-fun e!1142104 () Bool)

(declare-fun e!1142108 () Bool)

(assert (=> b!1784581 (= e!1142104 e!1142108)))

(declare-fun res!804621 () Bool)

(assert (=> b!1784581 (=> res!804621 e!1142108)))

(assert (=> b!1784581 (= res!804621 call!111347)))

(declare-fun d!544755 () Bool)

(assert (=> d!544755 e!1142109))

(declare-fun c!290258 () Bool)

(assert (=> d!544755 (= c!290258 ((_ is EmptyExpr!4853) (regex!3525 rule!422)))))

(assert (=> d!544755 (= lt!694366 e!1142107)))

(declare-fun c!290256 () Bool)

(assert (=> d!544755 (= c!290256 (isEmpty!12430 lt!694317))))

(assert (=> d!544755 (validRegex!1969 (regex!3525 rule!422))))

(assert (=> d!544755 (= (matchR!2326 (regex!3525 rule!422) lt!694317) lt!694366)))

(declare-fun b!1784582 () Bool)

(declare-fun res!804628 () Bool)

(declare-fun e!1142106 () Bool)

(assert (=> b!1784582 (=> (not res!804628) (not e!1142106))))

(declare-fun tail!2671 (List!19739) List!19739)

(assert (=> b!1784582 (= res!804628 (isEmpty!12430 (tail!2671 lt!694317)))))

(declare-fun b!1784583 () Bool)

(declare-fun res!804624 () Bool)

(declare-fun e!1142105 () Bool)

(assert (=> b!1784583 (=> res!804624 e!1142105)))

(assert (=> b!1784583 (= res!804624 e!1142106)))

(declare-fun res!804626 () Bool)

(assert (=> b!1784583 (=> (not res!804626) (not e!1142106))))

(assert (=> b!1784583 (= res!804626 lt!694366)))

(declare-fun bm!111342 () Bool)

(assert (=> bm!111342 (= call!111347 (isEmpty!12430 lt!694317))))

(declare-fun b!1784584 () Bool)

(declare-fun e!1142103 () Bool)

(assert (=> b!1784584 (= e!1142103 (not lt!694366))))

(declare-fun b!1784585 () Bool)

(assert (=> b!1784585 (= e!1142105 e!1142104)))

(declare-fun res!804625 () Bool)

(assert (=> b!1784585 (=> (not res!804625) (not e!1142104))))

(assert (=> b!1784585 (= res!804625 (not lt!694366))))

(declare-fun b!1784586 () Bool)

(declare-fun derivativeStep!1264 (Regex!4853 C!9880) Regex!4853)

(assert (=> b!1784586 (= e!1142107 (matchR!2326 (derivativeStep!1264 (regex!3525 rule!422) (head!4176 lt!694317)) (tail!2671 lt!694317)))))

(declare-fun b!1784587 () Bool)

(assert (=> b!1784587 (= e!1142109 e!1142103)))

(declare-fun c!290257 () Bool)

(assert (=> b!1784587 (= c!290257 ((_ is EmptyLang!4853) (regex!3525 rule!422)))))

(declare-fun b!1784588 () Bool)

(assert (=> b!1784588 (= e!1142108 (not (= (head!4176 lt!694317) (c!290216 (regex!3525 rule!422)))))))

(declare-fun b!1784589 () Bool)

(declare-fun res!804622 () Bool)

(assert (=> b!1784589 (=> res!804622 e!1142105)))

(assert (=> b!1784589 (= res!804622 (not ((_ is ElementMatch!4853) (regex!3525 rule!422))))))

(assert (=> b!1784589 (= e!1142103 e!1142105)))

(declare-fun b!1784590 () Bool)

(declare-fun res!804623 () Bool)

(assert (=> b!1784590 (=> (not res!804623) (not e!1142106))))

(assert (=> b!1784590 (= res!804623 (not call!111347))))

(declare-fun b!1784591 () Bool)

(declare-fun res!804627 () Bool)

(assert (=> b!1784591 (=> res!804627 e!1142108)))

(assert (=> b!1784591 (= res!804627 (not (isEmpty!12430 (tail!2671 lt!694317))))))

(declare-fun b!1784592 () Bool)

(assert (=> b!1784592 (= e!1142106 (= (head!4176 lt!694317) (c!290216 (regex!3525 rule!422))))))

(assert (= (and d!544755 c!290256) b!1784579))

(assert (= (and d!544755 (not c!290256)) b!1784586))

(assert (= (and d!544755 c!290258) b!1784580))

(assert (= (and d!544755 (not c!290258)) b!1784587))

(assert (= (and b!1784587 c!290257) b!1784584))

(assert (= (and b!1784587 (not c!290257)) b!1784589))

(assert (= (and b!1784589 (not res!804622)) b!1784583))

(assert (= (and b!1784583 res!804626) b!1784590))

(assert (= (and b!1784590 res!804623) b!1784582))

(assert (= (and b!1784582 res!804628) b!1784592))

(assert (= (and b!1784583 (not res!804624)) b!1784585))

(assert (= (and b!1784585 res!804625) b!1784581))

(assert (= (and b!1784581 (not res!804621)) b!1784591))

(assert (= (and b!1784591 (not res!804627)) b!1784588))

(assert (= (or b!1784580 b!1784581 b!1784590) bm!111342))

(declare-fun m!2207663 () Bool)

(assert (=> b!1784592 m!2207663))

(assert (=> b!1784586 m!2207663))

(assert (=> b!1784586 m!2207663))

(declare-fun m!2207665 () Bool)

(assert (=> b!1784586 m!2207665))

(declare-fun m!2207667 () Bool)

(assert (=> b!1784586 m!2207667))

(assert (=> b!1784586 m!2207665))

(assert (=> b!1784586 m!2207667))

(declare-fun m!2207669 () Bool)

(assert (=> b!1784586 m!2207669))

(declare-fun m!2207671 () Bool)

(assert (=> d!544755 m!2207671))

(declare-fun m!2207673 () Bool)

(assert (=> d!544755 m!2207673))

(assert (=> b!1784582 m!2207667))

(assert (=> b!1784582 m!2207667))

(declare-fun m!2207675 () Bool)

(assert (=> b!1784582 m!2207675))

(declare-fun m!2207677 () Bool)

(assert (=> b!1784579 m!2207677))

(assert (=> b!1784588 m!2207663))

(assert (=> bm!111342 m!2207671))

(assert (=> b!1784591 m!2207667))

(assert (=> b!1784591 m!2207667))

(assert (=> b!1784591 m!2207675))

(assert (=> b!1784396 d!544755))

(declare-fun d!544763 () Bool)

(declare-fun res!804629 () Bool)

(declare-fun e!1142110 () Bool)

(assert (=> d!544763 (=> (not res!804629) (not e!1142110))))

(assert (=> d!544763 (= res!804629 (validRegex!1969 (regex!3525 rule!422)))))

(assert (=> d!544763 (= (ruleValid!1023 thiss!24550 rule!422) e!1142110)))

(declare-fun b!1784593 () Bool)

(declare-fun res!804630 () Bool)

(assert (=> b!1784593 (=> (not res!804630) (not e!1142110))))

(assert (=> b!1784593 (= res!804630 (not (nullable!1495 (regex!3525 rule!422))))))

(declare-fun b!1784594 () Bool)

(assert (=> b!1784594 (= e!1142110 (not (= (tag!3925 rule!422) (String!22408 ""))))))

(assert (= (and d!544763 res!804629) b!1784593))

(assert (= (and b!1784593 res!804630) b!1784594))

(assert (=> d!544763 m!2207673))

(assert (=> b!1784593 m!2207677))

(assert (=> b!1784396 d!544763))

(declare-fun d!544765 () Bool)

(assert (=> d!544765 (ruleValid!1023 thiss!24550 rule!422)))

(declare-fun lt!694369 () Unit!34003)

(declare-fun choose!11237 (LexerInterface!3154 Rule!6850 List!19740) Unit!34003)

(assert (=> d!544765 (= lt!694369 (choose!11237 thiss!24550 rule!422 rules!3447))))

(assert (=> d!544765 (contains!3557 rules!3447 rule!422)))

(assert (=> d!544765 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!546 thiss!24550 rule!422 rules!3447) lt!694369)))

(declare-fun bs!405340 () Bool)

(assert (= bs!405340 d!544765))

(assert (=> bs!405340 m!2207563))

(declare-fun m!2207679 () Bool)

(assert (=> bs!405340 m!2207679))

(assert (=> bs!405340 m!2207481))

(assert (=> b!1784396 d!544765))

(declare-fun b!1784595 () Bool)

(declare-fun e!1142115 () Bool)

(assert (=> b!1784595 (= e!1142115 (nullable!1495 (regex!3525 (rule!5609 (_1!11031 lt!694302)))))))

(declare-fun b!1784596 () Bool)

(declare-fun e!1142117 () Bool)

(declare-fun lt!694370 () Bool)

(declare-fun call!111348 () Bool)

(assert (=> b!1784596 (= e!1142117 (= lt!694370 call!111348))))

(declare-fun b!1784597 () Bool)

(declare-fun e!1142112 () Bool)

(declare-fun e!1142116 () Bool)

(assert (=> b!1784597 (= e!1142112 e!1142116)))

(declare-fun res!804631 () Bool)

(assert (=> b!1784597 (=> res!804631 e!1142116)))

(assert (=> b!1784597 (= res!804631 call!111348)))

(declare-fun d!544767 () Bool)

(assert (=> d!544767 e!1142117))

(declare-fun c!290261 () Bool)

(assert (=> d!544767 (= c!290261 ((_ is EmptyExpr!4853) (regex!3525 (rule!5609 (_1!11031 lt!694302)))))))

(assert (=> d!544767 (= lt!694370 e!1142115)))

(declare-fun c!290259 () Bool)

(assert (=> d!544767 (= c!290259 (isEmpty!12430 lt!694304))))

(assert (=> d!544767 (validRegex!1969 (regex!3525 (rule!5609 (_1!11031 lt!694302))))))

(assert (=> d!544767 (= (matchR!2326 (regex!3525 (rule!5609 (_1!11031 lt!694302))) lt!694304) lt!694370)))

(declare-fun b!1784598 () Bool)

(declare-fun res!804638 () Bool)

(declare-fun e!1142114 () Bool)

(assert (=> b!1784598 (=> (not res!804638) (not e!1142114))))

(assert (=> b!1784598 (= res!804638 (isEmpty!12430 (tail!2671 lt!694304)))))

(declare-fun b!1784599 () Bool)

(declare-fun res!804634 () Bool)

(declare-fun e!1142113 () Bool)

(assert (=> b!1784599 (=> res!804634 e!1142113)))

(assert (=> b!1784599 (= res!804634 e!1142114)))

(declare-fun res!804636 () Bool)

(assert (=> b!1784599 (=> (not res!804636) (not e!1142114))))

(assert (=> b!1784599 (= res!804636 lt!694370)))

(declare-fun bm!111343 () Bool)

(assert (=> bm!111343 (= call!111348 (isEmpty!12430 lt!694304))))

(declare-fun b!1784600 () Bool)

(declare-fun e!1142111 () Bool)

(assert (=> b!1784600 (= e!1142111 (not lt!694370))))

(declare-fun b!1784601 () Bool)

(assert (=> b!1784601 (= e!1142113 e!1142112)))

(declare-fun res!804635 () Bool)

(assert (=> b!1784601 (=> (not res!804635) (not e!1142112))))

(assert (=> b!1784601 (= res!804635 (not lt!694370))))

(declare-fun b!1784602 () Bool)

(assert (=> b!1784602 (= e!1142115 (matchR!2326 (derivativeStep!1264 (regex!3525 (rule!5609 (_1!11031 lt!694302))) (head!4176 lt!694304)) (tail!2671 lt!694304)))))

(declare-fun b!1784603 () Bool)

(assert (=> b!1784603 (= e!1142117 e!1142111)))

(declare-fun c!290260 () Bool)

(assert (=> b!1784603 (= c!290260 ((_ is EmptyLang!4853) (regex!3525 (rule!5609 (_1!11031 lt!694302)))))))

(declare-fun b!1784604 () Bool)

(assert (=> b!1784604 (= e!1142116 (not (= (head!4176 lt!694304) (c!290216 (regex!3525 (rule!5609 (_1!11031 lt!694302)))))))))

(declare-fun b!1784605 () Bool)

(declare-fun res!804632 () Bool)

(assert (=> b!1784605 (=> res!804632 e!1142113)))

(assert (=> b!1784605 (= res!804632 (not ((_ is ElementMatch!4853) (regex!3525 (rule!5609 (_1!11031 lt!694302))))))))

(assert (=> b!1784605 (= e!1142111 e!1142113)))

(declare-fun b!1784606 () Bool)

(declare-fun res!804633 () Bool)

(assert (=> b!1784606 (=> (not res!804633) (not e!1142114))))

(assert (=> b!1784606 (= res!804633 (not call!111348))))

(declare-fun b!1784607 () Bool)

(declare-fun res!804637 () Bool)

(assert (=> b!1784607 (=> res!804637 e!1142116)))

(assert (=> b!1784607 (= res!804637 (not (isEmpty!12430 (tail!2671 lt!694304))))))

(declare-fun b!1784608 () Bool)

(assert (=> b!1784608 (= e!1142114 (= (head!4176 lt!694304) (c!290216 (regex!3525 (rule!5609 (_1!11031 lt!694302))))))))

(assert (= (and d!544767 c!290259) b!1784595))

(assert (= (and d!544767 (not c!290259)) b!1784602))

(assert (= (and d!544767 c!290261) b!1784596))

(assert (= (and d!544767 (not c!290261)) b!1784603))

(assert (= (and b!1784603 c!290260) b!1784600))

(assert (= (and b!1784603 (not c!290260)) b!1784605))

(assert (= (and b!1784605 (not res!804632)) b!1784599))

(assert (= (and b!1784599 res!804636) b!1784606))

(assert (= (and b!1784606 res!804633) b!1784598))

(assert (= (and b!1784598 res!804638) b!1784608))

(assert (= (and b!1784599 (not res!804634)) b!1784601))

(assert (= (and b!1784601 res!804635) b!1784597))

(assert (= (and b!1784597 (not res!804631)) b!1784607))

(assert (= (and b!1784607 (not res!804637)) b!1784604))

(assert (= (or b!1784596 b!1784597 b!1784606) bm!111343))

(declare-fun m!2207681 () Bool)

(assert (=> b!1784608 m!2207681))

(assert (=> b!1784602 m!2207681))

(assert (=> b!1784602 m!2207681))

(declare-fun m!2207683 () Bool)

(assert (=> b!1784602 m!2207683))

(declare-fun m!2207685 () Bool)

(assert (=> b!1784602 m!2207685))

(assert (=> b!1784602 m!2207683))

(assert (=> b!1784602 m!2207685))

(declare-fun m!2207687 () Bool)

(assert (=> b!1784602 m!2207687))

(assert (=> d!544767 m!2207447))

(assert (=> d!544767 m!2207629))

(assert (=> b!1784598 m!2207685))

(assert (=> b!1784598 m!2207685))

(declare-fun m!2207689 () Bool)

(assert (=> b!1784598 m!2207689))

(assert (=> b!1784595 m!2207631))

(assert (=> b!1784604 m!2207681))

(assert (=> bm!111343 m!2207447))

(assert (=> b!1784607 m!2207685))

(assert (=> b!1784607 m!2207685))

(assert (=> b!1784607 m!2207689))

(assert (=> b!1784375 d!544767))

(declare-fun bs!405341 () Bool)

(declare-fun d!544769 () Bool)

(assert (= bs!405341 (and d!544769 b!1784385)))

(declare-fun lambda!70745 () Int)

(assert (=> bs!405341 (= lambda!70745 lambda!70742)))

(declare-fun b!1784613 () Bool)

(declare-fun e!1142120 () Bool)

(assert (=> b!1784613 (= e!1142120 true)))

(assert (=> d!544769 e!1142120))

(assert (= d!544769 b!1784613))

(assert (=> b!1784613 (< (dynLambda!9683 order!12723 (toValue!5052 (transformation!3525 (rule!5609 (_1!11031 lt!694302))))) (dynLambda!9684 order!12725 lambda!70745))))

(assert (=> b!1784613 (< (dynLambda!9685 order!12727 (toChars!4911 (transformation!3525 (rule!5609 (_1!11031 lt!694302))))) (dynLambda!9684 order!12725 lambda!70745))))

(assert (=> d!544769 (= (list!7999 (dynLambda!9686 (toChars!4911 (transformation!3525 (rule!5609 (_1!11031 lt!694302)))) (dynLambda!9687 (toValue!5052 (transformation!3525 (rule!5609 (_1!11031 lt!694302)))) lt!694290))) (list!7999 lt!694290))))

(declare-fun lt!694373 () Unit!34003)

(declare-fun ForallOf!346 (Int BalanceConc!13030) Unit!34003)

(assert (=> d!544769 (= lt!694373 (ForallOf!346 lambda!70745 lt!694290))))

(assert (=> d!544769 (= (lemmaSemiInverse!663 (transformation!3525 (rule!5609 (_1!11031 lt!694302))) lt!694290) lt!694373)))

(declare-fun b_lambda!58515 () Bool)

(assert (=> (not b_lambda!58515) (not d!544769)))

(declare-fun tb!108597 () Bool)

(declare-fun t!166929 () Bool)

(assert (=> (and b!1784399 (= (toChars!4911 (transformation!3525 (h!25071 rules!3447))) (toChars!4911 (transformation!3525 (rule!5609 (_1!11031 lt!694302))))) t!166929) tb!108597))

(declare-fun b!1784614 () Bool)

(declare-fun tp!504913 () Bool)

(declare-fun e!1142121 () Bool)

(assert (=> b!1784614 (= e!1142121 (and (inv!25610 (c!290217 (dynLambda!9686 (toChars!4911 (transformation!3525 (rule!5609 (_1!11031 lt!694302)))) (dynLambda!9687 (toValue!5052 (transformation!3525 (rule!5609 (_1!11031 lt!694302)))) lt!694290)))) tp!504913))))

(declare-fun result!130660 () Bool)

(assert (=> tb!108597 (= result!130660 (and (inv!25611 (dynLambda!9686 (toChars!4911 (transformation!3525 (rule!5609 (_1!11031 lt!694302)))) (dynLambda!9687 (toValue!5052 (transformation!3525 (rule!5609 (_1!11031 lt!694302)))) lt!694290))) e!1142121))))

(assert (= tb!108597 b!1784614))

(declare-fun m!2207691 () Bool)

(assert (=> b!1784614 m!2207691))

(declare-fun m!2207693 () Bool)

(assert (=> tb!108597 m!2207693))

(assert (=> d!544769 t!166929))

(declare-fun b_and!137159 () Bool)

(assert (= b_and!137141 (and (=> t!166929 result!130660) b_and!137159)))

(declare-fun tb!108599 () Bool)

(declare-fun t!166931 () Bool)

(assert (=> (and b!1784371 (= (toChars!4911 (transformation!3525 (rule!5609 token!523))) (toChars!4911 (transformation!3525 (rule!5609 (_1!11031 lt!694302))))) t!166931) tb!108599))

(declare-fun result!130662 () Bool)

(assert (= result!130662 result!130660))

(assert (=> d!544769 t!166931))

(declare-fun b_and!137161 () Bool)

(assert (= b_and!137143 (and (=> t!166931 result!130662) b_and!137161)))

(declare-fun t!166933 () Bool)

(declare-fun tb!108601 () Bool)

(assert (=> (and b!1784387 (= (toChars!4911 (transformation!3525 rule!422)) (toChars!4911 (transformation!3525 (rule!5609 (_1!11031 lt!694302))))) t!166933) tb!108601))

(declare-fun result!130664 () Bool)

(assert (= result!130664 result!130660))

(assert (=> d!544769 t!166933))

(declare-fun b_and!137163 () Bool)

(assert (= b_and!137145 (and (=> t!166933 result!130664) b_and!137163)))

(declare-fun b_lambda!58517 () Bool)

(assert (=> (not b_lambda!58517) (not d!544769)))

(declare-fun t!166935 () Bool)

(declare-fun tb!108603 () Bool)

(assert (=> (and b!1784399 (= (toValue!5052 (transformation!3525 (h!25071 rules!3447))) (toValue!5052 (transformation!3525 (rule!5609 (_1!11031 lt!694302))))) t!166935) tb!108603))

(declare-fun result!130666 () Bool)

(assert (=> tb!108603 (= result!130666 (inv!21 (dynLambda!9687 (toValue!5052 (transformation!3525 (rule!5609 (_1!11031 lt!694302)))) lt!694290)))))

(declare-fun m!2207695 () Bool)

(assert (=> tb!108603 m!2207695))

(assert (=> d!544769 t!166935))

(declare-fun b_and!137165 () Bool)

(assert (= b_and!137147 (and (=> t!166935 result!130666) b_and!137165)))

(declare-fun tb!108605 () Bool)

(declare-fun t!166937 () Bool)

(assert (=> (and b!1784371 (= (toValue!5052 (transformation!3525 (rule!5609 token!523))) (toValue!5052 (transformation!3525 (rule!5609 (_1!11031 lt!694302))))) t!166937) tb!108605))

(declare-fun result!130668 () Bool)

(assert (= result!130668 result!130666))

(assert (=> d!544769 t!166937))

(declare-fun b_and!137167 () Bool)

(assert (= b_and!137149 (and (=> t!166937 result!130668) b_and!137167)))

(declare-fun t!166939 () Bool)

(declare-fun tb!108607 () Bool)

(assert (=> (and b!1784387 (= (toValue!5052 (transformation!3525 rule!422)) (toValue!5052 (transformation!3525 (rule!5609 (_1!11031 lt!694302))))) t!166939) tb!108607))

(declare-fun result!130670 () Bool)

(assert (= result!130670 result!130666))

(assert (=> d!544769 t!166939))

(declare-fun b_and!137169 () Bool)

(assert (= b_and!137151 (and (=> t!166939 result!130670) b_and!137169)))

(declare-fun m!2207697 () Bool)

(assert (=> d!544769 m!2207697))

(assert (=> d!544769 m!2207697))

(declare-fun m!2207699 () Bool)

(assert (=> d!544769 m!2207699))

(assert (=> d!544769 m!2207699))

(declare-fun m!2207701 () Bool)

(assert (=> d!544769 m!2207701))

(declare-fun m!2207703 () Bool)

(assert (=> d!544769 m!2207703))

(declare-fun m!2207705 () Bool)

(assert (=> d!544769 m!2207705))

(assert (=> b!1784374 d!544769))

(declare-fun d!544771 () Bool)

(declare-fun c!290265 () Bool)

(assert (=> d!544771 (= c!290265 ((_ is Node!6543) (c!290217 (dynLambda!9686 (toChars!4911 (transformation!3525 (rule!5609 (_1!11031 lt!694302)))) (dynLambda!9687 (toValue!5052 (transformation!3525 (rule!5609 (_1!11031 lt!694302)))) lt!694284)))))))

(declare-fun e!1142127 () Bool)

(assert (=> d!544771 (= (inv!25610 (c!290217 (dynLambda!9686 (toChars!4911 (transformation!3525 (rule!5609 (_1!11031 lt!694302)))) (dynLambda!9687 (toValue!5052 (transformation!3525 (rule!5609 (_1!11031 lt!694302)))) lt!694284)))) e!1142127)))

(declare-fun b!1784621 () Bool)

(declare-fun inv!25612 (Conc!6543) Bool)

(assert (=> b!1784621 (= e!1142127 (inv!25612 (c!290217 (dynLambda!9686 (toChars!4911 (transformation!3525 (rule!5609 (_1!11031 lt!694302)))) (dynLambda!9687 (toValue!5052 (transformation!3525 (rule!5609 (_1!11031 lt!694302)))) lt!694284)))))))

(declare-fun b!1784622 () Bool)

(declare-fun e!1142128 () Bool)

(assert (=> b!1784622 (= e!1142127 e!1142128)))

(declare-fun res!804641 () Bool)

(assert (=> b!1784622 (= res!804641 (not ((_ is Leaf!9526) (c!290217 (dynLambda!9686 (toChars!4911 (transformation!3525 (rule!5609 (_1!11031 lt!694302)))) (dynLambda!9687 (toValue!5052 (transformation!3525 (rule!5609 (_1!11031 lt!694302)))) lt!694284))))))))

(assert (=> b!1784622 (=> res!804641 e!1142128)))

(declare-fun b!1784623 () Bool)

(declare-fun inv!25613 (Conc!6543) Bool)

(assert (=> b!1784623 (= e!1142128 (inv!25613 (c!290217 (dynLambda!9686 (toChars!4911 (transformation!3525 (rule!5609 (_1!11031 lt!694302)))) (dynLambda!9687 (toValue!5052 (transformation!3525 (rule!5609 (_1!11031 lt!694302)))) lt!694284)))))))

(assert (= (and d!544771 c!290265) b!1784621))

(assert (= (and d!544771 (not c!290265)) b!1784622))

(assert (= (and b!1784622 (not res!804641)) b!1784623))

(declare-fun m!2207707 () Bool)

(assert (=> b!1784621 m!2207707))

(declare-fun m!2207709 () Bool)

(assert (=> b!1784623 m!2207709))

(assert (=> b!1784428 d!544771))

(declare-fun d!544773 () Bool)

(assert (=> d!544773 (not (matchR!2326 (regex!3525 rule!422) lt!694317))))

(declare-fun lt!694386 () Unit!34003)

(declare-fun choose!11238 (LexerInterface!3154 List!19740 Rule!6850 List!19739 List!19739 List!19739 Rule!6850) Unit!34003)

(assert (=> d!544773 (= lt!694386 (choose!11238 thiss!24550 rules!3447 (rule!5609 (_1!11031 lt!694302)) lt!694304 lt!694318 lt!694317 rule!422))))

(assert (=> d!544773 (isPrefix!1765 lt!694304 lt!694318)))

(assert (=> d!544773 (= (lemmaMaxPrefixOutputsMaxPrefix!234 thiss!24550 rules!3447 (rule!5609 (_1!11031 lt!694302)) lt!694304 lt!694318 lt!694317 rule!422) lt!694386)))

(declare-fun bs!405342 () Bool)

(assert (= bs!405342 d!544773))

(assert (=> bs!405342 m!2207561))

(declare-fun m!2207711 () Bool)

(assert (=> bs!405342 m!2207711))

(assert (=> bs!405342 m!2207547))

(assert (=> b!1784395 d!544773))

(declare-fun b!1784660 () Bool)

(declare-fun e!1142147 () Int)

(declare-fun e!1142146 () Int)

(assert (=> b!1784660 (= e!1142147 e!1142146)))

(declare-fun c!290274 () Bool)

(assert (=> b!1784660 (= c!290274 (and ((_ is Cons!19670) rules!3447) (not (= (h!25071 rules!3447) (rule!5609 token!523)))))))

(declare-fun b!1784659 () Bool)

(assert (=> b!1784659 (= e!1142147 0)))

(declare-fun d!544775 () Bool)

(declare-fun lt!694394 () Int)

(assert (=> d!544775 (>= lt!694394 0)))

(assert (=> d!544775 (= lt!694394 e!1142147)))

(declare-fun c!290273 () Bool)

(assert (=> d!544775 (= c!290273 (and ((_ is Cons!19670) rules!3447) (= (h!25071 rules!3447) (rule!5609 token!523))))))

(assert (=> d!544775 (contains!3557 rules!3447 (rule!5609 token!523))))

(assert (=> d!544775 (= (getIndex!190 rules!3447 (rule!5609 token!523)) lt!694394)))

(declare-fun b!1784661 () Bool)

(assert (=> b!1784661 (= e!1142146 (+ 1 (getIndex!190 (t!166927 rules!3447) (rule!5609 token!523))))))

(declare-fun b!1784662 () Bool)

(assert (=> b!1784662 (= e!1142146 (- 1))))

(assert (= (and d!544775 c!290273) b!1784659))

(assert (= (and d!544775 (not c!290273)) b!1784660))

(assert (= (and b!1784660 c!290274) b!1784661))

(assert (= (and b!1784660 (not c!290274)) b!1784662))

(assert (=> d!544775 m!2207567))

(declare-fun m!2207713 () Bool)

(assert (=> b!1784661 m!2207713))

(assert (=> b!1784394 d!544775))

(declare-fun b!1784664 () Bool)

(declare-fun e!1142149 () Int)

(declare-fun e!1142148 () Int)

(assert (=> b!1784664 (= e!1142149 e!1142148)))

(declare-fun c!290276 () Bool)

(assert (=> b!1784664 (= c!290276 (and ((_ is Cons!19670) rules!3447) (not (= (h!25071 rules!3447) (rule!5609 (_1!11031 lt!694302))))))))

(declare-fun b!1784663 () Bool)

(assert (=> b!1784663 (= e!1142149 0)))

(declare-fun d!544777 () Bool)

(declare-fun lt!694395 () Int)

(assert (=> d!544777 (>= lt!694395 0)))

(assert (=> d!544777 (= lt!694395 e!1142149)))

(declare-fun c!290275 () Bool)

(assert (=> d!544777 (= c!290275 (and ((_ is Cons!19670) rules!3447) (= (h!25071 rules!3447) (rule!5609 (_1!11031 lt!694302)))))))

(assert (=> d!544777 (contains!3557 rules!3447 (rule!5609 (_1!11031 lt!694302)))))

(assert (=> d!544777 (= (getIndex!190 rules!3447 (rule!5609 (_1!11031 lt!694302))) lt!694395)))

(declare-fun b!1784665 () Bool)

(assert (=> b!1784665 (= e!1142148 (+ 1 (getIndex!190 (t!166927 rules!3447) (rule!5609 (_1!11031 lt!694302)))))))

(declare-fun b!1784666 () Bool)

(assert (=> b!1784666 (= e!1142148 (- 1))))

(assert (= (and d!544777 c!290275) b!1784663))

(assert (= (and d!544777 (not c!290275)) b!1784664))

(assert (= (and b!1784664 c!290276) b!1784665))

(assert (= (and b!1784664 (not c!290276)) b!1784666))

(assert (=> d!544777 m!2207427))

(declare-fun m!2207715 () Bool)

(assert (=> b!1784665 m!2207715))

(assert (=> b!1784394 d!544777))

(declare-fun d!544779 () Bool)

(declare-fun lt!694396 () Bool)

(assert (=> d!544779 (= lt!694396 (select (content!2865 rules!3447) rule!422))))

(declare-fun e!1142151 () Bool)

(assert (=> d!544779 (= lt!694396 e!1142151)))

(declare-fun res!804664 () Bool)

(assert (=> d!544779 (=> (not res!804664) (not e!1142151))))

(assert (=> d!544779 (= res!804664 ((_ is Cons!19670) rules!3447))))

(assert (=> d!544779 (= (contains!3557 rules!3447 rule!422) lt!694396)))

(declare-fun b!1784667 () Bool)

(declare-fun e!1142150 () Bool)

(assert (=> b!1784667 (= e!1142151 e!1142150)))

(declare-fun res!804663 () Bool)

(assert (=> b!1784667 (=> res!804663 e!1142150)))

(assert (=> b!1784667 (= res!804663 (= (h!25071 rules!3447) rule!422))))

(declare-fun b!1784668 () Bool)

(assert (=> b!1784668 (= e!1142150 (contains!3557 (t!166927 rules!3447) rule!422))))

(assert (= (and d!544779 res!804664) b!1784667))

(assert (= (and b!1784667 (not res!804663)) b!1784668))

(assert (=> d!544779 m!2207623))

(declare-fun m!2207717 () Bool)

(assert (=> d!544779 m!2207717))

(declare-fun m!2207719 () Bool)

(assert (=> b!1784668 m!2207719))

(assert (=> b!1784373 d!544779))

(declare-fun d!544781 () Bool)

(assert (=> d!544781 (= (isEmpty!12430 lt!694304) ((_ is Nil!19669) lt!694304))))

(assert (=> b!1784372 d!544781))

(declare-fun d!544783 () Bool)

(assert (=> d!544783 (= (inv!25603 (tag!3925 rule!422)) (= (mod (str.len (value!110134 (tag!3925 rule!422))) 2) 0))))

(assert (=> b!1784393 d!544783))

(declare-fun d!544785 () Bool)

(declare-fun res!804667 () Bool)

(declare-fun e!1142155 () Bool)

(assert (=> d!544785 (=> (not res!804667) (not e!1142155))))

(declare-fun semiInverseModEq!1410 (Int Int) Bool)

(assert (=> d!544785 (= res!804667 (semiInverseModEq!1410 (toChars!4911 (transformation!3525 rule!422)) (toValue!5052 (transformation!3525 rule!422))))))

(assert (=> d!544785 (= (inv!25608 (transformation!3525 rule!422)) e!1142155)))

(declare-fun b!1784671 () Bool)

(declare-fun equivClasses!1351 (Int Int) Bool)

(assert (=> b!1784671 (= e!1142155 (equivClasses!1351 (toChars!4911 (transformation!3525 rule!422)) (toValue!5052 (transformation!3525 rule!422))))))

(assert (= (and d!544785 res!804667) b!1784671))

(declare-fun m!2207765 () Bool)

(assert (=> d!544785 m!2207765))

(declare-fun m!2207767 () Bool)

(assert (=> b!1784671 m!2207767))

(assert (=> b!1784393 d!544785))

(declare-fun d!544789 () Bool)

(assert (=> d!544789 (= suffix!1421 (_2!11031 lt!694302))))

(declare-fun lt!694399 () Unit!34003)

(declare-fun choose!11239 (List!19739 List!19739 List!19739 List!19739 List!19739) Unit!34003)

(assert (=> d!544789 (= lt!694399 (choose!11239 lt!694317 suffix!1421 lt!694317 (_2!11031 lt!694302) lt!694318))))

(assert (=> d!544789 (isPrefix!1765 lt!694317 lt!694318)))

(assert (=> d!544789 (= (lemmaSamePrefixThenSameSuffix!876 lt!694317 suffix!1421 lt!694317 (_2!11031 lt!694302) lt!694318) lt!694399)))

(declare-fun bs!405343 () Bool)

(assert (= bs!405343 d!544789))

(declare-fun m!2207771 () Bool)

(assert (=> bs!405343 m!2207771))

(assert (=> bs!405343 m!2207551))

(assert (=> b!1784392 d!544789))

(declare-fun d!544793 () Bool)

(assert (=> d!544793 (= lt!694304 lt!694317)))

(declare-fun lt!694402 () Unit!34003)

(declare-fun choose!11240 (List!19739 List!19739 List!19739) Unit!34003)

(assert (=> d!544793 (= lt!694402 (choose!11240 lt!694304 lt!694317 lt!694318))))

(assert (=> d!544793 (isPrefix!1765 lt!694304 lt!694318)))

(assert (=> d!544793 (= (lemmaIsPrefixSameLengthThenSameList!261 lt!694304 lt!694317 lt!694318) lt!694402)))

(declare-fun bs!405344 () Bool)

(assert (= bs!405344 d!544793))

(declare-fun m!2207785 () Bool)

(assert (=> bs!405344 m!2207785))

(assert (=> bs!405344 m!2207547))

(assert (=> b!1784392 d!544793))

(declare-fun d!544797 () Bool)

(declare-fun lt!694403 () Bool)

(assert (=> d!544797 (= lt!694403 (select (content!2865 rules!3447) (rule!5609 (_1!11031 lt!694302))))))

(declare-fun e!1142161 () Bool)

(assert (=> d!544797 (= lt!694403 e!1142161)))

(declare-fun res!804675 () Bool)

(assert (=> d!544797 (=> (not res!804675) (not e!1142161))))

(assert (=> d!544797 (= res!804675 ((_ is Cons!19670) rules!3447))))

(assert (=> d!544797 (= (contains!3557 rules!3447 (rule!5609 (_1!11031 lt!694302))) lt!694403)))

(declare-fun b!1784679 () Bool)

(declare-fun e!1142160 () Bool)

(assert (=> b!1784679 (= e!1142161 e!1142160)))

(declare-fun res!804674 () Bool)

(assert (=> b!1784679 (=> res!804674 e!1142160)))

(assert (=> b!1784679 (= res!804674 (= (h!25071 rules!3447) (rule!5609 (_1!11031 lt!694302))))))

(declare-fun b!1784680 () Bool)

(assert (=> b!1784680 (= e!1142160 (contains!3557 (t!166927 rules!3447) (rule!5609 (_1!11031 lt!694302))))))

(assert (= (and d!544797 res!804675) b!1784679))

(assert (= (and b!1784679 (not res!804674)) b!1784680))

(assert (=> d!544797 m!2207623))

(declare-fun m!2207787 () Bool)

(assert (=> d!544797 m!2207787))

(declare-fun m!2207789 () Bool)

(assert (=> b!1784680 m!2207789))

(assert (=> b!1784391 d!544797))

(declare-fun d!544799 () Bool)

(assert (=> d!544799 (= (inv!25603 (tag!3925 (h!25071 rules!3447))) (= (mod (str.len (value!110134 (tag!3925 (h!25071 rules!3447)))) 2) 0))))

(assert (=> b!1784390 d!544799))

(declare-fun d!544801 () Bool)

(declare-fun res!804676 () Bool)

(declare-fun e!1142162 () Bool)

(assert (=> d!544801 (=> (not res!804676) (not e!1142162))))

(assert (=> d!544801 (= res!804676 (semiInverseModEq!1410 (toChars!4911 (transformation!3525 (h!25071 rules!3447))) (toValue!5052 (transformation!3525 (h!25071 rules!3447)))))))

(assert (=> d!544801 (= (inv!25608 (transformation!3525 (h!25071 rules!3447))) e!1142162)))

(declare-fun b!1784681 () Bool)

(assert (=> b!1784681 (= e!1142162 (equivClasses!1351 (toChars!4911 (transformation!3525 (h!25071 rules!3447))) (toValue!5052 (transformation!3525 (h!25071 rules!3447)))))))

(assert (= (and d!544801 res!804676) b!1784681))

(declare-fun m!2207791 () Bool)

(assert (=> d!544801 m!2207791))

(declare-fun m!2207793 () Bool)

(assert (=> b!1784681 m!2207793))

(assert (=> b!1784390 d!544801))

(declare-fun d!544803 () Bool)

(declare-fun res!804681 () Bool)

(declare-fun e!1142165 () Bool)

(assert (=> d!544803 (=> (not res!804681) (not e!1142165))))

(assert (=> d!544803 (= res!804681 (not (isEmpty!12430 (originalCharacters!4339 token!523))))))

(assert (=> d!544803 (= (inv!25609 token!523) e!1142165)))

(declare-fun b!1784686 () Bool)

(declare-fun res!804682 () Bool)

(assert (=> b!1784686 (=> (not res!804682) (not e!1142165))))

(assert (=> b!1784686 (= res!804682 (= (originalCharacters!4339 token!523) (list!7999 (dynLambda!9686 (toChars!4911 (transformation!3525 (rule!5609 token!523))) (value!110135 token!523)))))))

(declare-fun b!1784687 () Bool)

(assert (=> b!1784687 (= e!1142165 (= (size!15624 token!523) (size!15625 (originalCharacters!4339 token!523))))))

(assert (= (and d!544803 res!804681) b!1784686))

(assert (= (and b!1784686 res!804682) b!1784687))

(declare-fun b_lambda!58523 () Bool)

(assert (=> (not b_lambda!58523) (not b!1784686)))

(declare-fun t!166953 () Bool)

(declare-fun tb!108621 () Bool)

(assert (=> (and b!1784399 (= (toChars!4911 (transformation!3525 (h!25071 rules!3447))) (toChars!4911 (transformation!3525 (rule!5609 token!523)))) t!166953) tb!108621))

(declare-fun b!1784688 () Bool)

(declare-fun e!1142166 () Bool)

(declare-fun tp!504915 () Bool)

(assert (=> b!1784688 (= e!1142166 (and (inv!25610 (c!290217 (dynLambda!9686 (toChars!4911 (transformation!3525 (rule!5609 token!523))) (value!110135 token!523)))) tp!504915))))

(declare-fun result!130684 () Bool)

(assert (=> tb!108621 (= result!130684 (and (inv!25611 (dynLambda!9686 (toChars!4911 (transformation!3525 (rule!5609 token!523))) (value!110135 token!523))) e!1142166))))

(assert (= tb!108621 b!1784688))

(declare-fun m!2207795 () Bool)

(assert (=> b!1784688 m!2207795))

(declare-fun m!2207797 () Bool)

(assert (=> tb!108621 m!2207797))

(assert (=> b!1784686 t!166953))

(declare-fun b_and!137183 () Bool)

(assert (= b_and!137159 (and (=> t!166953 result!130684) b_and!137183)))

(declare-fun t!166955 () Bool)

(declare-fun tb!108623 () Bool)

(assert (=> (and b!1784371 (= (toChars!4911 (transformation!3525 (rule!5609 token!523))) (toChars!4911 (transformation!3525 (rule!5609 token!523)))) t!166955) tb!108623))

(declare-fun result!130686 () Bool)

(assert (= result!130686 result!130684))

(assert (=> b!1784686 t!166955))

(declare-fun b_and!137185 () Bool)

(assert (= b_and!137161 (and (=> t!166955 result!130686) b_and!137185)))

(declare-fun t!166957 () Bool)

(declare-fun tb!108625 () Bool)

(assert (=> (and b!1784387 (= (toChars!4911 (transformation!3525 rule!422)) (toChars!4911 (transformation!3525 (rule!5609 token!523)))) t!166957) tb!108625))

(declare-fun result!130688 () Bool)

(assert (= result!130688 result!130684))

(assert (=> b!1784686 t!166957))

(declare-fun b_and!137187 () Bool)

(assert (= b_and!137163 (and (=> t!166957 result!130688) b_and!137187)))

(declare-fun m!2207799 () Bool)

(assert (=> d!544803 m!2207799))

(declare-fun m!2207801 () Bool)

(assert (=> b!1784686 m!2207801))

(assert (=> b!1784686 m!2207801))

(declare-fun m!2207803 () Bool)

(assert (=> b!1784686 m!2207803))

(declare-fun m!2207805 () Bool)

(assert (=> b!1784687 m!2207805))

(assert (=> start!177694 d!544803))

(declare-fun d!544805 () Bool)

(declare-fun isBalanced!2047 (Conc!6543) Bool)

(assert (=> d!544805 (= (inv!25611 (dynLambda!9686 (toChars!4911 (transformation!3525 (rule!5609 (_1!11031 lt!694302)))) (dynLambda!9687 (toValue!5052 (transformation!3525 (rule!5609 (_1!11031 lt!694302)))) lt!694284))) (isBalanced!2047 (c!290217 (dynLambda!9686 (toChars!4911 (transformation!3525 (rule!5609 (_1!11031 lt!694302)))) (dynLambda!9687 (toValue!5052 (transformation!3525 (rule!5609 (_1!11031 lt!694302)))) lt!694284)))))))

(declare-fun bs!405345 () Bool)

(assert (= bs!405345 d!544805))

(declare-fun m!2207807 () Bool)

(assert (=> bs!405345 m!2207807))

(assert (=> tb!108585 d!544805))

(declare-fun d!544807 () Bool)

(declare-fun list!8001 (Conc!6543) List!19739)

(assert (=> d!544807 (= (list!7999 (dynLambda!9686 (toChars!4911 (transformation!3525 (rule!5609 (_1!11031 lt!694302)))) (dynLambda!9687 (toValue!5052 (transformation!3525 (rule!5609 (_1!11031 lt!694302)))) lt!694284))) (list!8001 (c!290217 (dynLambda!9686 (toChars!4911 (transformation!3525 (rule!5609 (_1!11031 lt!694302)))) (dynLambda!9687 (toValue!5052 (transformation!3525 (rule!5609 (_1!11031 lt!694302)))) lt!694284)))))))

(declare-fun bs!405346 () Bool)

(assert (= bs!405346 d!544807))

(declare-fun m!2207809 () Bool)

(assert (=> bs!405346 m!2207809))

(assert (=> b!1784411 d!544807))

(declare-fun bs!405347 () Bool)

(declare-fun d!544809 () Bool)

(assert (= bs!405347 (and d!544809 b!1784385)))

(declare-fun lambda!70746 () Int)

(assert (=> bs!405347 (= lambda!70746 lambda!70742)))

(declare-fun bs!405348 () Bool)

(assert (= bs!405348 (and d!544809 d!544769)))

(assert (=> bs!405348 (= lambda!70746 lambda!70745)))

(declare-fun b!1784697 () Bool)

(declare-fun e!1142171 () Bool)

(assert (=> b!1784697 (= e!1142171 true)))

(assert (=> d!544809 e!1142171))

(assert (= d!544809 b!1784697))

(assert (=> b!1784697 (< (dynLambda!9683 order!12723 (toValue!5052 (transformation!3525 (rule!5609 (_1!11031 lt!694302))))) (dynLambda!9684 order!12725 lambda!70746))))

(assert (=> b!1784697 (< (dynLambda!9685 order!12727 (toChars!4911 (transformation!3525 (rule!5609 (_1!11031 lt!694302))))) (dynLambda!9684 order!12725 lambda!70746))))

(assert (=> d!544809 (= (list!7999 (dynLambda!9686 (toChars!4911 (transformation!3525 (rule!5609 (_1!11031 lt!694302)))) (dynLambda!9687 (toValue!5052 (transformation!3525 (rule!5609 (_1!11031 lt!694302)))) lt!694284))) (list!7999 lt!694284))))

(declare-fun lt!694406 () Unit!34003)

(assert (=> d!544809 (= lt!694406 (ForallOf!346 lambda!70746 lt!694284))))

(assert (=> d!544809 (= (lemmaSemiInverse!663 (transformation!3525 (rule!5609 (_1!11031 lt!694302))) lt!694284) lt!694406)))

(declare-fun b_lambda!58525 () Bool)

(assert (=> (not b_lambda!58525) (not d!544809)))

(assert (=> d!544809 t!166914))

(declare-fun b_and!137189 () Bool)

(assert (= b_and!137183 (and (=> t!166914 result!130646) b_and!137189)))

(assert (=> d!544809 t!166916))

(declare-fun b_and!137191 () Bool)

(assert (= b_and!137185 (and (=> t!166916 result!130648) b_and!137191)))

(assert (=> d!544809 t!166918))

(declare-fun b_and!137193 () Bool)

(assert (= b_and!137187 (and (=> t!166918 result!130650) b_and!137193)))

(declare-fun b_lambda!58527 () Bool)

(assert (=> (not b_lambda!58527) (not d!544809)))

(assert (=> d!544809 t!166920))

(declare-fun b_and!137195 () Bool)

(assert (= b_and!137165 (and (=> t!166920 result!130652) b_and!137195)))

(assert (=> d!544809 t!166922))

(declare-fun b_and!137197 () Bool)

(assert (= b_and!137167 (and (=> t!166922 result!130656) b_and!137197)))

(assert (=> d!544809 t!166924))

(declare-fun b_and!137199 () Bool)

(assert (= b_and!137169 (and (=> t!166924 result!130658) b_and!137199)))

(assert (=> d!544809 m!2207459))

(assert (=> d!544809 m!2207459))

(assert (=> d!544809 m!2207461))

(assert (=> d!544809 m!2207461))

(assert (=> d!544809 m!2207463))

(assert (=> d!544809 m!2207537))

(declare-fun m!2207811 () Bool)

(assert (=> d!544809 m!2207811))

(assert (=> b!1784411 d!544809))

(declare-fun d!544811 () Bool)

(declare-fun e!1142186 () Bool)

(assert (=> d!544811 e!1142186))

(declare-fun res!804700 () Bool)

(assert (=> d!544811 (=> res!804700 e!1142186)))

(declare-fun lt!694416 () Bool)

(assert (=> d!544811 (= res!804700 (not lt!694416))))

(declare-fun e!1142188 () Bool)

(assert (=> d!544811 (= lt!694416 e!1142188)))

(declare-fun res!804699 () Bool)

(assert (=> d!544811 (=> res!804699 e!1142188)))

(assert (=> d!544811 (= res!804699 ((_ is Nil!19669) (++!5349 lt!694317 (Cons!19669 (head!4176 lt!694312) Nil!19669))))))

(assert (=> d!544811 (= (isPrefix!1765 (++!5349 lt!694317 (Cons!19669 (head!4176 lt!694312) Nil!19669)) lt!694318) lt!694416)))

(declare-fun b!1784717 () Bool)

(declare-fun res!804697 () Bool)

(declare-fun e!1142187 () Bool)

(assert (=> b!1784717 (=> (not res!804697) (not e!1142187))))

(assert (=> b!1784717 (= res!804697 (= (head!4176 (++!5349 lt!694317 (Cons!19669 (head!4176 lt!694312) Nil!19669))) (head!4176 lt!694318)))))

(declare-fun b!1784718 () Bool)

(assert (=> b!1784718 (= e!1142187 (isPrefix!1765 (tail!2671 (++!5349 lt!694317 (Cons!19669 (head!4176 lt!694312) Nil!19669))) (tail!2671 lt!694318)))))

(declare-fun b!1784716 () Bool)

(assert (=> b!1784716 (= e!1142188 e!1142187)))

(declare-fun res!804698 () Bool)

(assert (=> b!1784716 (=> (not res!804698) (not e!1142187))))

(assert (=> b!1784716 (= res!804698 (not ((_ is Nil!19669) lt!694318)))))

(declare-fun b!1784719 () Bool)

(assert (=> b!1784719 (= e!1142186 (>= (size!15625 lt!694318) (size!15625 (++!5349 lt!694317 (Cons!19669 (head!4176 lt!694312) Nil!19669)))))))

(assert (= (and d!544811 (not res!804699)) b!1784716))

(assert (= (and b!1784716 res!804698) b!1784717))

(assert (= (and b!1784717 res!804697) b!1784718))

(assert (= (and d!544811 (not res!804700)) b!1784719))

(assert (=> b!1784717 m!2207495))

(declare-fun m!2207825 () Bool)

(assert (=> b!1784717 m!2207825))

(declare-fun m!2207827 () Bool)

(assert (=> b!1784717 m!2207827))

(assert (=> b!1784718 m!2207495))

(declare-fun m!2207829 () Bool)

(assert (=> b!1784718 m!2207829))

(declare-fun m!2207831 () Bool)

(assert (=> b!1784718 m!2207831))

(assert (=> b!1784718 m!2207829))

(assert (=> b!1784718 m!2207831))

(declare-fun m!2207833 () Bool)

(assert (=> b!1784718 m!2207833))

(declare-fun m!2207835 () Bool)

(assert (=> b!1784719 m!2207835))

(assert (=> b!1784719 m!2207495))

(declare-fun m!2207837 () Bool)

(assert (=> b!1784719 m!2207837))

(assert (=> b!1784389 d!544811))

(declare-fun d!544815 () Bool)

(declare-fun lt!694422 () List!19739)

(assert (=> d!544815 (= (++!5349 lt!694317 lt!694422) lt!694318)))

(declare-fun e!1142197 () List!19739)

(assert (=> d!544815 (= lt!694422 e!1142197)))

(declare-fun c!290288 () Bool)

(assert (=> d!544815 (= c!290288 ((_ is Cons!19669) lt!694317))))

(assert (=> d!544815 (>= (size!15625 lt!694318) (size!15625 lt!694317))))

(assert (=> d!544815 (= (getSuffix!932 lt!694318 lt!694317) lt!694422)))

(declare-fun b!1784736 () Bool)

(assert (=> b!1784736 (= e!1142197 (getSuffix!932 (tail!2671 lt!694318) (t!166926 lt!694317)))))

(declare-fun b!1784737 () Bool)

(assert (=> b!1784737 (= e!1142197 lt!694318)))

(assert (= (and d!544815 c!290288) b!1784736))

(assert (= (and d!544815 (not c!290288)) b!1784737))

(declare-fun m!2207857 () Bool)

(assert (=> d!544815 m!2207857))

(assert (=> d!544815 m!2207835))

(declare-fun m!2207859 () Bool)

(assert (=> d!544815 m!2207859))

(assert (=> b!1784736 m!2207831))

(assert (=> b!1784736 m!2207831))

(declare-fun m!2207861 () Bool)

(assert (=> b!1784736 m!2207861))

(assert (=> b!1784389 d!544815))

(declare-fun d!544823 () Bool)

(declare-fun e!1142198 () Bool)

(assert (=> d!544823 e!1142198))

(declare-fun res!804710 () Bool)

(assert (=> d!544823 (=> res!804710 e!1142198)))

(declare-fun lt!694423 () Bool)

(assert (=> d!544823 (= res!804710 (not lt!694423))))

(declare-fun e!1142200 () Bool)

(assert (=> d!544823 (= lt!694423 e!1142200)))

(declare-fun res!804709 () Bool)

(assert (=> d!544823 (=> res!804709 e!1142200)))

(assert (=> d!544823 (= res!804709 ((_ is Nil!19669) lt!694301))))

(assert (=> d!544823 (= (isPrefix!1765 lt!694301 lt!694304) lt!694423)))

(declare-fun b!1784739 () Bool)

(declare-fun res!804707 () Bool)

(declare-fun e!1142199 () Bool)

(assert (=> b!1784739 (=> (not res!804707) (not e!1142199))))

(assert (=> b!1784739 (= res!804707 (= (head!4176 lt!694301) (head!4176 lt!694304)))))

(declare-fun b!1784740 () Bool)

(assert (=> b!1784740 (= e!1142199 (isPrefix!1765 (tail!2671 lt!694301) (tail!2671 lt!694304)))))

(declare-fun b!1784738 () Bool)

(assert (=> b!1784738 (= e!1142200 e!1142199)))

(declare-fun res!804708 () Bool)

(assert (=> b!1784738 (=> (not res!804708) (not e!1142199))))

(assert (=> b!1784738 (= res!804708 (not ((_ is Nil!19669) lt!694304)))))

(declare-fun b!1784741 () Bool)

(assert (=> b!1784741 (= e!1142198 (>= (size!15625 lt!694304) (size!15625 lt!694301)))))

(assert (= (and d!544823 (not res!804709)) b!1784738))

(assert (= (and b!1784738 res!804708) b!1784739))

(assert (= (and b!1784739 res!804707) b!1784740))

(assert (= (and d!544823 (not res!804710)) b!1784741))

(declare-fun m!2207863 () Bool)

(assert (=> b!1784739 m!2207863))

(assert (=> b!1784739 m!2207681))

(declare-fun m!2207865 () Bool)

(assert (=> b!1784740 m!2207865))

(assert (=> b!1784740 m!2207685))

(assert (=> b!1784740 m!2207865))

(assert (=> b!1784740 m!2207685))

(declare-fun m!2207867 () Bool)

(assert (=> b!1784740 m!2207867))

(assert (=> b!1784741 m!2207521))

(declare-fun m!2207869 () Bool)

(assert (=> b!1784741 m!2207869))

(assert (=> b!1784389 d!544823))

(declare-fun d!544825 () Bool)

(assert (=> d!544825 (matchR!2326 (rulesRegex!881 thiss!24550 rules!3447) (list!7999 (charsOf!2174 (_1!11031 lt!694302))))))

(declare-fun lt!694426 () Unit!34003)

(declare-fun choose!11241 (LexerInterface!3154 List!19740 List!19739 Token!6616 Rule!6850 List!19739) Unit!34003)

(assert (=> d!544825 (= lt!694426 (choose!11241 thiss!24550 rules!3447 lt!694318 (_1!11031 lt!694302) (rule!5609 (_1!11031 lt!694302)) (_2!11031 lt!694302)))))

(assert (=> d!544825 (not (isEmpty!12431 rules!3447))))

(assert (=> d!544825 (= (lemmaMaxPrefixThenMatchesRulesRegex!232 thiss!24550 rules!3447 lt!694318 (_1!11031 lt!694302) (rule!5609 (_1!11031 lt!694302)) (_2!11031 lt!694302)) lt!694426)))

(declare-fun bs!405351 () Bool)

(assert (= bs!405351 d!544825))

(assert (=> bs!405351 m!2207405))

(assert (=> bs!405351 m!2207409))

(assert (=> bs!405351 m!2207411))

(assert (=> bs!405351 m!2207405))

(assert (=> bs!405351 m!2207411))

(declare-fun m!2207871 () Bool)

(assert (=> bs!405351 m!2207871))

(assert (=> bs!405351 m!2207409))

(declare-fun m!2207873 () Bool)

(assert (=> bs!405351 m!2207873))

(assert (=> bs!405351 m!2207431))

(assert (=> b!1784389 d!544825))

(declare-fun d!544827 () Bool)

(assert (=> d!544827 (= (head!4176 lt!694312) (h!25070 lt!694312))))

(assert (=> b!1784389 d!544827))

(declare-fun d!544829 () Bool)

(assert (=> d!544829 (isPrefix!1765 lt!694301 lt!694304)))

(declare-fun lt!694429 () Unit!34003)

(declare-fun choose!11242 (List!19739 List!19739 List!19739) Unit!34003)

(assert (=> d!544829 (= lt!694429 (choose!11242 lt!694304 lt!694301 lt!694318))))

(assert (=> d!544829 (isPrefix!1765 lt!694304 lt!694318)))

(assert (=> d!544829 (= (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!173 lt!694304 lt!694301 lt!694318) lt!694429)))

(declare-fun bs!405352 () Bool)

(assert (= bs!405352 d!544829))

(assert (=> bs!405352 m!2207499))

(declare-fun m!2207875 () Bool)

(assert (=> bs!405352 m!2207875))

(assert (=> bs!405352 m!2207547))

(assert (=> b!1784389 d!544829))

(declare-fun d!544831 () Bool)

(assert (=> d!544831 (isPrefix!1765 (++!5349 lt!694317 (Cons!19669 (head!4176 (getSuffix!932 lt!694318 lt!694317)) Nil!19669)) lt!694318)))

(declare-fun lt!694432 () Unit!34003)

(declare-fun choose!11243 (List!19739 List!19739) Unit!34003)

(assert (=> d!544831 (= lt!694432 (choose!11243 lt!694317 lt!694318))))

(assert (=> d!544831 (isPrefix!1765 lt!694317 lt!694318)))

(assert (=> d!544831 (= (lemmaAddHeadSuffixToPrefixStillPrefix!301 lt!694317 lt!694318) lt!694432)))

(declare-fun bs!405353 () Bool)

(assert (= bs!405353 d!544831))

(declare-fun m!2207877 () Bool)

(assert (=> bs!405353 m!2207877))

(assert (=> bs!405353 m!2207513))

(declare-fun m!2207879 () Bool)

(assert (=> bs!405353 m!2207879))

(declare-fun m!2207881 () Bool)

(assert (=> bs!405353 m!2207881))

(assert (=> bs!405353 m!2207513))

(assert (=> bs!405353 m!2207551))

(assert (=> bs!405353 m!2207881))

(declare-fun m!2207883 () Bool)

(assert (=> bs!405353 m!2207883))

(assert (=> b!1784389 d!544831))

(declare-fun d!544833 () Bool)

(assert (=> d!544833 (= suffix!1421 lt!694312)))

(declare-fun lt!694433 () Unit!34003)

(assert (=> d!544833 (= lt!694433 (choose!11239 lt!694317 suffix!1421 lt!694317 lt!694312 lt!694318))))

(assert (=> d!544833 (isPrefix!1765 lt!694317 lt!694318)))

(assert (=> d!544833 (= (lemmaSamePrefixThenSameSuffix!876 lt!694317 suffix!1421 lt!694317 lt!694312 lt!694318) lt!694433)))

(declare-fun bs!405354 () Bool)

(assert (= bs!405354 d!544833))

(declare-fun m!2207885 () Bool)

(assert (=> bs!405354 m!2207885))

(assert (=> bs!405354 m!2207551))

(assert (=> b!1784389 d!544833))

(declare-fun d!544835 () Bool)

(assert (=> d!544835 (not (matchR!2326 lt!694310 lt!694304))))

(declare-fun lt!694436 () Unit!34003)

(declare-fun choose!11244 (Regex!4853 List!19739 List!19739) Unit!34003)

(assert (=> d!544835 (= lt!694436 (choose!11244 lt!694310 lt!694301 lt!694304))))

(assert (=> d!544835 (validRegex!1969 lt!694310)))

(assert (=> d!544835 (= (lemmaNotPrefixMatchThenCannotMatchLonger!164 lt!694310 lt!694301 lt!694304) lt!694436)))

(declare-fun bs!405355 () Bool)

(assert (= bs!405355 d!544835))

(assert (=> bs!405355 m!2207509))

(declare-fun m!2207887 () Bool)

(assert (=> bs!405355 m!2207887))

(declare-fun m!2207889 () Bool)

(assert (=> bs!405355 m!2207889))

(assert (=> b!1784389 d!544835))

(declare-fun b!1784742 () Bool)

(declare-fun e!1142205 () Bool)

(assert (=> b!1784742 (= e!1142205 (nullable!1495 lt!694310))))

(declare-fun b!1784743 () Bool)

(declare-fun e!1142207 () Bool)

(declare-fun lt!694437 () Bool)

(declare-fun call!111349 () Bool)

(assert (=> b!1784743 (= e!1142207 (= lt!694437 call!111349))))

(declare-fun b!1784744 () Bool)

(declare-fun e!1142202 () Bool)

(declare-fun e!1142206 () Bool)

(assert (=> b!1784744 (= e!1142202 e!1142206)))

(declare-fun res!804711 () Bool)

(assert (=> b!1784744 (=> res!804711 e!1142206)))

(assert (=> b!1784744 (= res!804711 call!111349)))

(declare-fun d!544837 () Bool)

(assert (=> d!544837 e!1142207))

(declare-fun c!290291 () Bool)

(assert (=> d!544837 (= c!290291 ((_ is EmptyExpr!4853) lt!694310))))

(assert (=> d!544837 (= lt!694437 e!1142205)))

(declare-fun c!290289 () Bool)

(assert (=> d!544837 (= c!290289 (isEmpty!12430 lt!694304))))

(assert (=> d!544837 (validRegex!1969 lt!694310)))

(assert (=> d!544837 (= (matchR!2326 lt!694310 lt!694304) lt!694437)))

(declare-fun b!1784745 () Bool)

(declare-fun res!804718 () Bool)

(declare-fun e!1142204 () Bool)

(assert (=> b!1784745 (=> (not res!804718) (not e!1142204))))

(assert (=> b!1784745 (= res!804718 (isEmpty!12430 (tail!2671 lt!694304)))))

(declare-fun b!1784746 () Bool)

(declare-fun res!804714 () Bool)

(declare-fun e!1142203 () Bool)

(assert (=> b!1784746 (=> res!804714 e!1142203)))

(assert (=> b!1784746 (= res!804714 e!1142204)))

(declare-fun res!804716 () Bool)

(assert (=> b!1784746 (=> (not res!804716) (not e!1142204))))

(assert (=> b!1784746 (= res!804716 lt!694437)))

(declare-fun bm!111344 () Bool)

(assert (=> bm!111344 (= call!111349 (isEmpty!12430 lt!694304))))

(declare-fun b!1784747 () Bool)

(declare-fun e!1142201 () Bool)

(assert (=> b!1784747 (= e!1142201 (not lt!694437))))

(declare-fun b!1784748 () Bool)

(assert (=> b!1784748 (= e!1142203 e!1142202)))

(declare-fun res!804715 () Bool)

(assert (=> b!1784748 (=> (not res!804715) (not e!1142202))))

(assert (=> b!1784748 (= res!804715 (not lt!694437))))

(declare-fun b!1784749 () Bool)

(assert (=> b!1784749 (= e!1142205 (matchR!2326 (derivativeStep!1264 lt!694310 (head!4176 lt!694304)) (tail!2671 lt!694304)))))

(declare-fun b!1784750 () Bool)

(assert (=> b!1784750 (= e!1142207 e!1142201)))

(declare-fun c!290290 () Bool)

(assert (=> b!1784750 (= c!290290 ((_ is EmptyLang!4853) lt!694310))))

(declare-fun b!1784751 () Bool)

(assert (=> b!1784751 (= e!1142206 (not (= (head!4176 lt!694304) (c!290216 lt!694310))))))

(declare-fun b!1784752 () Bool)

(declare-fun res!804712 () Bool)

(assert (=> b!1784752 (=> res!804712 e!1142203)))

(assert (=> b!1784752 (= res!804712 (not ((_ is ElementMatch!4853) lt!694310)))))

(assert (=> b!1784752 (= e!1142201 e!1142203)))

(declare-fun b!1784753 () Bool)

(declare-fun res!804713 () Bool)

(assert (=> b!1784753 (=> (not res!804713) (not e!1142204))))

(assert (=> b!1784753 (= res!804713 (not call!111349))))

(declare-fun b!1784754 () Bool)

(declare-fun res!804717 () Bool)

(assert (=> b!1784754 (=> res!804717 e!1142206)))

(assert (=> b!1784754 (= res!804717 (not (isEmpty!12430 (tail!2671 lt!694304))))))

(declare-fun b!1784755 () Bool)

(assert (=> b!1784755 (= e!1142204 (= (head!4176 lt!694304) (c!290216 lt!694310)))))

(assert (= (and d!544837 c!290289) b!1784742))

(assert (= (and d!544837 (not c!290289)) b!1784749))

(assert (= (and d!544837 c!290291) b!1784743))

(assert (= (and d!544837 (not c!290291)) b!1784750))

(assert (= (and b!1784750 c!290290) b!1784747))

(assert (= (and b!1784750 (not c!290290)) b!1784752))

(assert (= (and b!1784752 (not res!804712)) b!1784746))

(assert (= (and b!1784746 res!804716) b!1784753))

(assert (= (and b!1784753 res!804713) b!1784745))

(assert (= (and b!1784745 res!804718) b!1784755))

(assert (= (and b!1784746 (not res!804714)) b!1784748))

(assert (= (and b!1784748 res!804715) b!1784744))

(assert (= (and b!1784744 (not res!804711)) b!1784754))

(assert (= (and b!1784754 (not res!804717)) b!1784751))

(assert (= (or b!1784743 b!1784744 b!1784753) bm!111344))

(assert (=> b!1784755 m!2207681))

(assert (=> b!1784749 m!2207681))

(assert (=> b!1784749 m!2207681))

(declare-fun m!2207891 () Bool)

(assert (=> b!1784749 m!2207891))

(assert (=> b!1784749 m!2207685))

(assert (=> b!1784749 m!2207891))

(assert (=> b!1784749 m!2207685))

(declare-fun m!2207893 () Bool)

(assert (=> b!1784749 m!2207893))

(assert (=> d!544837 m!2207447))

(assert (=> d!544837 m!2207889))

(assert (=> b!1784745 m!2207685))

(assert (=> b!1784745 m!2207685))

(assert (=> b!1784745 m!2207689))

(declare-fun m!2207895 () Bool)

(assert (=> b!1784742 m!2207895))

(assert (=> b!1784751 m!2207681))

(assert (=> bm!111344 m!2207447))

(assert (=> b!1784754 m!2207685))

(assert (=> b!1784754 m!2207685))

(assert (=> b!1784754 m!2207689))

(assert (=> b!1784389 d!544837))

(declare-fun e!1142213 () Bool)

(declare-fun lt!694440 () List!19739)

(declare-fun b!1784767 () Bool)

(assert (=> b!1784767 (= e!1142213 (or (not (= (Cons!19669 (head!4176 lt!694312) Nil!19669) Nil!19669)) (= lt!694440 lt!694317)))))

(declare-fun b!1784766 () Bool)

(declare-fun res!804723 () Bool)

(assert (=> b!1784766 (=> (not res!804723) (not e!1142213))))

(assert (=> b!1784766 (= res!804723 (= (size!15625 lt!694440) (+ (size!15625 lt!694317) (size!15625 (Cons!19669 (head!4176 lt!694312) Nil!19669)))))))

(declare-fun d!544839 () Bool)

(assert (=> d!544839 e!1142213))

(declare-fun res!804724 () Bool)

(assert (=> d!544839 (=> (not res!804724) (not e!1142213))))

(declare-fun content!2867 (List!19739) (InoxSet C!9880))

(assert (=> d!544839 (= res!804724 (= (content!2867 lt!694440) ((_ map or) (content!2867 lt!694317) (content!2867 (Cons!19669 (head!4176 lt!694312) Nil!19669)))))))

(declare-fun e!1142212 () List!19739)

(assert (=> d!544839 (= lt!694440 e!1142212)))

(declare-fun c!290294 () Bool)

(assert (=> d!544839 (= c!290294 ((_ is Nil!19669) lt!694317))))

(assert (=> d!544839 (= (++!5349 lt!694317 (Cons!19669 (head!4176 lt!694312) Nil!19669)) lt!694440)))

(declare-fun b!1784765 () Bool)

(assert (=> b!1784765 (= e!1142212 (Cons!19669 (h!25070 lt!694317) (++!5349 (t!166926 lt!694317) (Cons!19669 (head!4176 lt!694312) Nil!19669))))))

(declare-fun b!1784764 () Bool)

(assert (=> b!1784764 (= e!1142212 (Cons!19669 (head!4176 lt!694312) Nil!19669))))

(assert (= (and d!544839 c!290294) b!1784764))

(assert (= (and d!544839 (not c!290294)) b!1784765))

(assert (= (and d!544839 res!804724) b!1784766))

(assert (= (and b!1784766 res!804723) b!1784767))

(declare-fun m!2207897 () Bool)

(assert (=> b!1784766 m!2207897))

(assert (=> b!1784766 m!2207859))

(declare-fun m!2207899 () Bool)

(assert (=> b!1784766 m!2207899))

(declare-fun m!2207901 () Bool)

(assert (=> d!544839 m!2207901))

(declare-fun m!2207903 () Bool)

(assert (=> d!544839 m!2207903))

(declare-fun m!2207905 () Bool)

(assert (=> d!544839 m!2207905))

(declare-fun m!2207907 () Bool)

(assert (=> b!1784765 m!2207907))

(assert (=> b!1784389 d!544839))

(declare-fun d!544841 () Bool)

(assert (=> d!544841 (= (inv!25611 (dynLambda!9686 (toChars!4911 (transformation!3525 (rule!5609 (_1!11031 lt!694302)))) (value!110135 (_1!11031 lt!694302)))) (isBalanced!2047 (c!290217 (dynLambda!9686 (toChars!4911 (transformation!3525 (rule!5609 (_1!11031 lt!694302)))) (value!110135 (_1!11031 lt!694302))))))))

(declare-fun bs!405356 () Bool)

(assert (= bs!405356 d!544841))

(declare-fun m!2207909 () Bool)

(assert (=> bs!405356 m!2207909))

(assert (=> tb!108579 d!544841))

(declare-fun b!1784768 () Bool)

(declare-fun e!1142218 () Bool)

(assert (=> b!1784768 (= e!1142218 (nullable!1495 (regex!3525 lt!694324)))))

(declare-fun b!1784769 () Bool)

(declare-fun e!1142220 () Bool)

(declare-fun lt!694441 () Bool)

(declare-fun call!111350 () Bool)

(assert (=> b!1784769 (= e!1142220 (= lt!694441 call!111350))))

(declare-fun b!1784770 () Bool)

(declare-fun e!1142215 () Bool)

(declare-fun e!1142219 () Bool)

(assert (=> b!1784770 (= e!1142215 e!1142219)))

(declare-fun res!804725 () Bool)

(assert (=> b!1784770 (=> res!804725 e!1142219)))

(assert (=> b!1784770 (= res!804725 call!111350)))

(declare-fun d!544843 () Bool)

(assert (=> d!544843 e!1142220))

(declare-fun c!290297 () Bool)

(assert (=> d!544843 (= c!290297 ((_ is EmptyExpr!4853) (regex!3525 lt!694324)))))

(assert (=> d!544843 (= lt!694441 e!1142218)))

(declare-fun c!290295 () Bool)

(assert (=> d!544843 (= c!290295 (isEmpty!12430 (list!7999 (charsOf!2174 (_1!11031 lt!694302)))))))

(assert (=> d!544843 (validRegex!1969 (regex!3525 lt!694324))))

(assert (=> d!544843 (= (matchR!2326 (regex!3525 lt!694324) (list!7999 (charsOf!2174 (_1!11031 lt!694302)))) lt!694441)))

(declare-fun b!1784771 () Bool)

(declare-fun res!804732 () Bool)

(declare-fun e!1142217 () Bool)

(assert (=> b!1784771 (=> (not res!804732) (not e!1142217))))

(assert (=> b!1784771 (= res!804732 (isEmpty!12430 (tail!2671 (list!7999 (charsOf!2174 (_1!11031 lt!694302))))))))

(declare-fun b!1784772 () Bool)

(declare-fun res!804728 () Bool)

(declare-fun e!1142216 () Bool)

(assert (=> b!1784772 (=> res!804728 e!1142216)))

(assert (=> b!1784772 (= res!804728 e!1142217)))

(declare-fun res!804730 () Bool)

(assert (=> b!1784772 (=> (not res!804730) (not e!1142217))))

(assert (=> b!1784772 (= res!804730 lt!694441)))

(declare-fun bm!111345 () Bool)

(assert (=> bm!111345 (= call!111350 (isEmpty!12430 (list!7999 (charsOf!2174 (_1!11031 lt!694302)))))))

(declare-fun b!1784773 () Bool)

(declare-fun e!1142214 () Bool)

(assert (=> b!1784773 (= e!1142214 (not lt!694441))))

(declare-fun b!1784774 () Bool)

(assert (=> b!1784774 (= e!1142216 e!1142215)))

(declare-fun res!804729 () Bool)

(assert (=> b!1784774 (=> (not res!804729) (not e!1142215))))

(assert (=> b!1784774 (= res!804729 (not lt!694441))))

(declare-fun b!1784775 () Bool)

(assert (=> b!1784775 (= e!1142218 (matchR!2326 (derivativeStep!1264 (regex!3525 lt!694324) (head!4176 (list!7999 (charsOf!2174 (_1!11031 lt!694302))))) (tail!2671 (list!7999 (charsOf!2174 (_1!11031 lt!694302))))))))

(declare-fun b!1784776 () Bool)

(assert (=> b!1784776 (= e!1142220 e!1142214)))

(declare-fun c!290296 () Bool)

(assert (=> b!1784776 (= c!290296 ((_ is EmptyLang!4853) (regex!3525 lt!694324)))))

(declare-fun b!1784777 () Bool)

(assert (=> b!1784777 (= e!1142219 (not (= (head!4176 (list!7999 (charsOf!2174 (_1!11031 lt!694302)))) (c!290216 (regex!3525 lt!694324)))))))

(declare-fun b!1784778 () Bool)

(declare-fun res!804726 () Bool)

(assert (=> b!1784778 (=> res!804726 e!1142216)))

(assert (=> b!1784778 (= res!804726 (not ((_ is ElementMatch!4853) (regex!3525 lt!694324))))))

(assert (=> b!1784778 (= e!1142214 e!1142216)))

(declare-fun b!1784779 () Bool)

(declare-fun res!804727 () Bool)

(assert (=> b!1784779 (=> (not res!804727) (not e!1142217))))

(assert (=> b!1784779 (= res!804727 (not call!111350))))

(declare-fun b!1784780 () Bool)

(declare-fun res!804731 () Bool)

(assert (=> b!1784780 (=> res!804731 e!1142219)))

(assert (=> b!1784780 (= res!804731 (not (isEmpty!12430 (tail!2671 (list!7999 (charsOf!2174 (_1!11031 lt!694302)))))))))

(declare-fun b!1784781 () Bool)

(assert (=> b!1784781 (= e!1142217 (= (head!4176 (list!7999 (charsOf!2174 (_1!11031 lt!694302)))) (c!290216 (regex!3525 lt!694324))))))

(assert (= (and d!544843 c!290295) b!1784768))

(assert (= (and d!544843 (not c!290295)) b!1784775))

(assert (= (and d!544843 c!290297) b!1784769))

(assert (= (and d!544843 (not c!290297)) b!1784776))

(assert (= (and b!1784776 c!290296) b!1784773))

(assert (= (and b!1784776 (not c!290296)) b!1784778))

(assert (= (and b!1784778 (not res!804726)) b!1784772))

(assert (= (and b!1784772 res!804730) b!1784779))

(assert (= (and b!1784779 res!804727) b!1784771))

(assert (= (and b!1784771 res!804732) b!1784781))

(assert (= (and b!1784772 (not res!804728)) b!1784774))

(assert (= (and b!1784774 res!804729) b!1784770))

(assert (= (and b!1784770 (not res!804725)) b!1784780))

(assert (= (and b!1784780 (not res!804731)) b!1784777))

(assert (= (or b!1784769 b!1784770 b!1784779) bm!111345))

(assert (=> b!1784781 m!2207411))

(declare-fun m!2207911 () Bool)

(assert (=> b!1784781 m!2207911))

(assert (=> b!1784775 m!2207411))

(assert (=> b!1784775 m!2207911))

(assert (=> b!1784775 m!2207911))

(declare-fun m!2207913 () Bool)

(assert (=> b!1784775 m!2207913))

(assert (=> b!1784775 m!2207411))

(declare-fun m!2207915 () Bool)

(assert (=> b!1784775 m!2207915))

(assert (=> b!1784775 m!2207913))

(assert (=> b!1784775 m!2207915))

(declare-fun m!2207917 () Bool)

(assert (=> b!1784775 m!2207917))

(assert (=> d!544843 m!2207411))

(declare-fun m!2207919 () Bool)

(assert (=> d!544843 m!2207919))

(declare-fun m!2207921 () Bool)

(assert (=> d!544843 m!2207921))

(assert (=> b!1784771 m!2207411))

(assert (=> b!1784771 m!2207915))

(assert (=> b!1784771 m!2207915))

(declare-fun m!2207923 () Bool)

(assert (=> b!1784771 m!2207923))

(declare-fun m!2207925 () Bool)

(assert (=> b!1784768 m!2207925))

(assert (=> b!1784777 m!2207411))

(assert (=> b!1784777 m!2207911))

(assert (=> bm!111345 m!2207411))

(assert (=> bm!111345 m!2207919))

(assert (=> b!1784780 m!2207411))

(assert (=> b!1784780 m!2207915))

(assert (=> b!1784780 m!2207915))

(assert (=> b!1784780 m!2207923))

(assert (=> b!1784409 d!544843))

(declare-fun d!544845 () Bool)

(assert (=> d!544845 (= (list!7999 (charsOf!2174 (_1!11031 lt!694302))) (list!8001 (c!290217 (charsOf!2174 (_1!11031 lt!694302)))))))

(declare-fun bs!405357 () Bool)

(assert (= bs!405357 d!544845))

(declare-fun m!2207927 () Bool)

(assert (=> bs!405357 m!2207927))

(assert (=> b!1784409 d!544845))

(declare-fun d!544847 () Bool)

(declare-fun lt!694444 () BalanceConc!13030)

(assert (=> d!544847 (= (list!7999 lt!694444) (originalCharacters!4339 (_1!11031 lt!694302)))))

(assert (=> d!544847 (= lt!694444 (dynLambda!9686 (toChars!4911 (transformation!3525 (rule!5609 (_1!11031 lt!694302)))) (value!110135 (_1!11031 lt!694302))))))

(assert (=> d!544847 (= (charsOf!2174 (_1!11031 lt!694302)) lt!694444)))

(declare-fun b_lambda!58529 () Bool)

(assert (=> (not b_lambda!58529) (not d!544847)))

(assert (=> d!544847 t!166908))

(declare-fun b_and!137201 () Bool)

(assert (= b_and!137189 (and (=> t!166908 result!130638) b_and!137201)))

(assert (=> d!544847 t!166910))

(declare-fun b_and!137203 () Bool)

(assert (= b_and!137191 (and (=> t!166910 result!130642) b_and!137203)))

(assert (=> d!544847 t!166912))

(declare-fun b_and!137205 () Bool)

(assert (= b_and!137193 (and (=> t!166912 result!130644) b_and!137205)))

(declare-fun m!2207929 () Bool)

(assert (=> d!544847 m!2207929))

(assert (=> d!544847 m!2207453))

(assert (=> b!1784409 d!544847))

(declare-fun d!544849 () Bool)

(assert (=> d!544849 (= (get!6053 lt!694314) (v!25567 lt!694314))))

(assert (=> b!1784409 d!544849))

(declare-fun d!544851 () Bool)

(assert (=> d!544851 (= (get!6052 lt!694308) (v!25566 lt!694308))))

(assert (=> b!1784408 d!544851))

(declare-fun d!544853 () Bool)

(assert (=> d!544853 (= (isEmpty!12431 rules!3447) ((_ is Nil!19670) rules!3447))))

(assert (=> b!1784407 d!544853))

(declare-fun d!544855 () Bool)

(declare-fun choose!11246 (Int) Bool)

(assert (=> d!544855 (= (Forall!892 lambda!70742) (choose!11246 lambda!70742))))

(declare-fun bs!405358 () Bool)

(assert (= bs!405358 d!544855))

(declare-fun m!2207931 () Bool)

(assert (=> bs!405358 m!2207931))

(assert (=> b!1784385 d!544855))

(declare-fun d!544857 () Bool)

(declare-fun e!1142223 () Bool)

(assert (=> d!544857 e!1142223))

(declare-fun res!804735 () Bool)

(assert (=> d!544857 (=> (not res!804735) (not e!1142223))))

(assert (=> d!544857 (= res!804735 (semiInverseModEq!1410 (toChars!4911 (transformation!3525 (rule!5609 (_1!11031 lt!694302)))) (toValue!5052 (transformation!3525 (rule!5609 (_1!11031 lt!694302))))))))

(declare-fun Unit!34011 () Unit!34003)

(assert (=> d!544857 (= (lemmaInv!724 (transformation!3525 (rule!5609 (_1!11031 lt!694302)))) Unit!34011)))

(declare-fun b!1784784 () Bool)

(assert (=> b!1784784 (= e!1142223 (equivClasses!1351 (toChars!4911 (transformation!3525 (rule!5609 (_1!11031 lt!694302)))) (toValue!5052 (transformation!3525 (rule!5609 (_1!11031 lt!694302))))))))

(assert (= (and d!544857 res!804735) b!1784784))

(declare-fun m!2207933 () Bool)

(assert (=> d!544857 m!2207933))

(declare-fun m!2207935 () Bool)

(assert (=> b!1784784 m!2207935))

(assert (=> b!1784385 d!544857))

(declare-fun d!544859 () Bool)

(assert (=> d!544859 (= (isEmpty!12430 (_2!11031 lt!694322)) ((_ is Nil!19669) (_2!11031 lt!694322)))))

(assert (=> b!1784384 d!544859))

(declare-fun d!544861 () Bool)

(declare-fun isEmpty!12434 (Option!4072) Bool)

(assert (=> d!544861 (= (isDefined!3416 lt!694308) (not (isEmpty!12434 lt!694308)))))

(declare-fun bs!405359 () Bool)

(assert (= bs!405359 d!544861))

(declare-fun m!2207937 () Bool)

(assert (=> bs!405359 m!2207937))

(assert (=> b!1784405 d!544861))

(declare-fun b!1784803 () Bool)

(declare-fun res!804750 () Bool)

(declare-fun e!1142231 () Bool)

(assert (=> b!1784803 (=> (not res!804750) (not e!1142231))))

(declare-fun lt!694459 () Option!4072)

(assert (=> b!1784803 (= res!804750 (= (++!5349 (list!7999 (charsOf!2174 (_1!11031 (get!6052 lt!694459)))) (_2!11031 (get!6052 lt!694459))) lt!694317))))

(declare-fun b!1784804 () Bool)

(declare-fun e!1142232 () Bool)

(assert (=> b!1784804 (= e!1142232 e!1142231)))

(declare-fun res!804755 () Bool)

(assert (=> b!1784804 (=> (not res!804755) (not e!1142231))))

(assert (=> b!1784804 (= res!804755 (isDefined!3416 lt!694459))))

(declare-fun b!1784805 () Bool)

(assert (=> b!1784805 (= e!1142231 (contains!3557 rules!3447 (rule!5609 (_1!11031 (get!6052 lt!694459)))))))

(declare-fun bm!111348 () Bool)

(declare-fun call!111353 () Option!4072)

(assert (=> bm!111348 (= call!111353 (maxPrefixOneRule!1077 thiss!24550 (h!25071 rules!3447) lt!694317))))

(declare-fun b!1784806 () Bool)

(declare-fun res!804751 () Bool)

(assert (=> b!1784806 (=> (not res!804751) (not e!1142231))))

(assert (=> b!1784806 (= res!804751 (matchR!2326 (regex!3525 (rule!5609 (_1!11031 (get!6052 lt!694459)))) (list!7999 (charsOf!2174 (_1!11031 (get!6052 lt!694459))))))))

(declare-fun b!1784808 () Bool)

(declare-fun res!804754 () Bool)

(assert (=> b!1784808 (=> (not res!804754) (not e!1142231))))

(assert (=> b!1784808 (= res!804754 (= (list!7999 (charsOf!2174 (_1!11031 (get!6052 lt!694459)))) (originalCharacters!4339 (_1!11031 (get!6052 lt!694459)))))))

(declare-fun b!1784809 () Bool)

(declare-fun res!804753 () Bool)

(assert (=> b!1784809 (=> (not res!804753) (not e!1142231))))

(assert (=> b!1784809 (= res!804753 (= (value!110135 (_1!11031 (get!6052 lt!694459))) (apply!5325 (transformation!3525 (rule!5609 (_1!11031 (get!6052 lt!694459)))) (seqFromList!2494 (originalCharacters!4339 (_1!11031 (get!6052 lt!694459)))))))))

(declare-fun b!1784807 () Bool)

(declare-fun e!1142230 () Option!4072)

(declare-fun lt!694458 () Option!4072)

(declare-fun lt!694455 () Option!4072)

(assert (=> b!1784807 (= e!1142230 (ite (and ((_ is None!4071) lt!694458) ((_ is None!4071) lt!694455)) None!4071 (ite ((_ is None!4071) lt!694455) lt!694458 (ite ((_ is None!4071) lt!694458) lt!694455 (ite (>= (size!15624 (_1!11031 (v!25566 lt!694458))) (size!15624 (_1!11031 (v!25566 lt!694455)))) lt!694458 lt!694455)))))))

(assert (=> b!1784807 (= lt!694458 call!111353)))

(assert (=> b!1784807 (= lt!694455 (maxPrefix!1708 thiss!24550 (t!166927 rules!3447) lt!694317))))

(declare-fun d!544863 () Bool)

(assert (=> d!544863 e!1142232))

(declare-fun res!804752 () Bool)

(assert (=> d!544863 (=> res!804752 e!1142232)))

(assert (=> d!544863 (= res!804752 (isEmpty!12434 lt!694459))))

(assert (=> d!544863 (= lt!694459 e!1142230)))

(declare-fun c!290300 () Bool)

(assert (=> d!544863 (= c!290300 (and ((_ is Cons!19670) rules!3447) ((_ is Nil!19670) (t!166927 rules!3447))))))

(declare-fun lt!694456 () Unit!34003)

(declare-fun lt!694457 () Unit!34003)

(assert (=> d!544863 (= lt!694456 lt!694457)))

(assert (=> d!544863 (isPrefix!1765 lt!694317 lt!694317)))

(declare-fun lemmaIsPrefixRefl!1164 (List!19739 List!19739) Unit!34003)

(assert (=> d!544863 (= lt!694457 (lemmaIsPrefixRefl!1164 lt!694317 lt!694317))))

(declare-fun rulesValidInductive!1200 (LexerInterface!3154 List!19740) Bool)

(assert (=> d!544863 (rulesValidInductive!1200 thiss!24550 rules!3447)))

(assert (=> d!544863 (= (maxPrefix!1708 thiss!24550 rules!3447 lt!694317) lt!694459)))

(declare-fun b!1784810 () Bool)

(assert (=> b!1784810 (= e!1142230 call!111353)))

(declare-fun b!1784811 () Bool)

(declare-fun res!804756 () Bool)

(assert (=> b!1784811 (=> (not res!804756) (not e!1142231))))

(assert (=> b!1784811 (= res!804756 (< (size!15625 (_2!11031 (get!6052 lt!694459))) (size!15625 lt!694317)))))

(assert (= (and d!544863 c!290300) b!1784810))

(assert (= (and d!544863 (not c!290300)) b!1784807))

(assert (= (or b!1784810 b!1784807) bm!111348))

(assert (= (and d!544863 (not res!804752)) b!1784804))

(assert (= (and b!1784804 res!804755) b!1784808))

(assert (= (and b!1784808 res!804754) b!1784811))

(assert (= (and b!1784811 res!804756) b!1784803))

(assert (= (and b!1784803 res!804750) b!1784809))

(assert (= (and b!1784809 res!804753) b!1784806))

(assert (= (and b!1784806 res!804751) b!1784805))

(declare-fun m!2207939 () Bool)

(assert (=> b!1784809 m!2207939))

(declare-fun m!2207941 () Bool)

(assert (=> b!1784809 m!2207941))

(assert (=> b!1784809 m!2207941))

(declare-fun m!2207943 () Bool)

(assert (=> b!1784809 m!2207943))

(assert (=> b!1784808 m!2207939))

(declare-fun m!2207945 () Bool)

(assert (=> b!1784808 m!2207945))

(assert (=> b!1784808 m!2207945))

(declare-fun m!2207947 () Bool)

(assert (=> b!1784808 m!2207947))

(assert (=> b!1784805 m!2207939))

(declare-fun m!2207949 () Bool)

(assert (=> b!1784805 m!2207949))

(declare-fun m!2207951 () Bool)

(assert (=> b!1784804 m!2207951))

(assert (=> b!1784811 m!2207939))

(declare-fun m!2207953 () Bool)

(assert (=> b!1784811 m!2207953))

(assert (=> b!1784811 m!2207859))

(assert (=> b!1784803 m!2207939))

(assert (=> b!1784803 m!2207945))

(assert (=> b!1784803 m!2207945))

(assert (=> b!1784803 m!2207947))

(assert (=> b!1784803 m!2207947))

(declare-fun m!2207955 () Bool)

(assert (=> b!1784803 m!2207955))

(assert (=> b!1784806 m!2207939))

(assert (=> b!1784806 m!2207945))

(assert (=> b!1784806 m!2207945))

(assert (=> b!1784806 m!2207947))

(assert (=> b!1784806 m!2207947))

(declare-fun m!2207957 () Bool)

(assert (=> b!1784806 m!2207957))

(declare-fun m!2207959 () Bool)

(assert (=> d!544863 m!2207959))

(declare-fun m!2207961 () Bool)

(assert (=> d!544863 m!2207961))

(declare-fun m!2207963 () Bool)

(assert (=> d!544863 m!2207963))

(declare-fun m!2207965 () Bool)

(assert (=> d!544863 m!2207965))

(declare-fun m!2207967 () Bool)

(assert (=> b!1784807 m!2207967))

(declare-fun m!2207969 () Bool)

(assert (=> bm!111348 m!2207969))

(assert (=> b!1784405 d!544863))

(declare-fun d!544865 () Bool)

(assert (=> d!544865 (= (list!7999 lt!694315) (list!8001 (c!290217 lt!694315)))))

(declare-fun bs!405360 () Bool)

(assert (= bs!405360 d!544865))

(declare-fun m!2207971 () Bool)

(assert (=> bs!405360 m!2207971))

(assert (=> b!1784405 d!544865))

(declare-fun d!544867 () Bool)

(declare-fun lt!694460 () BalanceConc!13030)

(assert (=> d!544867 (= (list!7999 lt!694460) (originalCharacters!4339 token!523))))

(assert (=> d!544867 (= lt!694460 (dynLambda!9686 (toChars!4911 (transformation!3525 (rule!5609 token!523))) (value!110135 token!523)))))

(assert (=> d!544867 (= (charsOf!2174 token!523) lt!694460)))

(declare-fun b_lambda!58531 () Bool)

(assert (=> (not b_lambda!58531) (not d!544867)))

(assert (=> d!544867 t!166953))

(declare-fun b_and!137207 () Bool)

(assert (= b_and!137201 (and (=> t!166953 result!130684) b_and!137207)))

(assert (=> d!544867 t!166955))

(declare-fun b_and!137209 () Bool)

(assert (= b_and!137203 (and (=> t!166955 result!130686) b_and!137209)))

(assert (=> d!544867 t!166957))

(declare-fun b_and!137211 () Bool)

(assert (= b_and!137205 (and (=> t!166957 result!130688) b_and!137211)))

(declare-fun m!2207973 () Bool)

(assert (=> d!544867 m!2207973))

(assert (=> d!544867 m!2207801))

(assert (=> b!1784405 d!544867))

(declare-fun d!544869 () Bool)

(declare-fun res!804759 () Bool)

(declare-fun e!1142235 () Bool)

(assert (=> d!544869 (=> (not res!804759) (not e!1142235))))

(declare-fun rulesValid!1334 (LexerInterface!3154 List!19740) Bool)

(assert (=> d!544869 (= res!804759 (rulesValid!1334 thiss!24550 rules!3447))))

(assert (=> d!544869 (= (rulesInvariant!2823 thiss!24550 rules!3447) e!1142235)))

(declare-fun b!1784814 () Bool)

(declare-datatypes ((List!19742 0))(
  ( (Nil!19672) (Cons!19672 (h!25073 String!22407) (t!167005 List!19742)) )
))
(declare-fun noDuplicateTag!1334 (LexerInterface!3154 List!19740 List!19742) Bool)

(assert (=> b!1784814 (= e!1142235 (noDuplicateTag!1334 thiss!24550 rules!3447 Nil!19672))))

(assert (= (and d!544869 res!804759) b!1784814))

(declare-fun m!2207975 () Bool)

(assert (=> d!544869 m!2207975))

(declare-fun m!2207977 () Bool)

(assert (=> b!1784814 m!2207977))

(assert (=> b!1784383 d!544869))

(declare-fun d!544871 () Bool)

(declare-fun c!290301 () Bool)

(assert (=> d!544871 (= c!290301 ((_ is Node!6543) (c!290217 (dynLambda!9686 (toChars!4911 (transformation!3525 (rule!5609 (_1!11031 lt!694302)))) (value!110135 (_1!11031 lt!694302))))))))

(declare-fun e!1142236 () Bool)

(assert (=> d!544871 (= (inv!25610 (c!290217 (dynLambda!9686 (toChars!4911 (transformation!3525 (rule!5609 (_1!11031 lt!694302)))) (value!110135 (_1!11031 lt!694302))))) e!1142236)))

(declare-fun b!1784815 () Bool)

(assert (=> b!1784815 (= e!1142236 (inv!25612 (c!290217 (dynLambda!9686 (toChars!4911 (transformation!3525 (rule!5609 (_1!11031 lt!694302)))) (value!110135 (_1!11031 lt!694302))))))))

(declare-fun b!1784816 () Bool)

(declare-fun e!1142237 () Bool)

(assert (=> b!1784816 (= e!1142236 e!1142237)))

(declare-fun res!804760 () Bool)

(assert (=> b!1784816 (= res!804760 (not ((_ is Leaf!9526) (c!290217 (dynLambda!9686 (toChars!4911 (transformation!3525 (rule!5609 (_1!11031 lt!694302)))) (value!110135 (_1!11031 lt!694302)))))))))

(assert (=> b!1784816 (=> res!804760 e!1142237)))

(declare-fun b!1784817 () Bool)

(assert (=> b!1784817 (= e!1142237 (inv!25613 (c!290217 (dynLambda!9686 (toChars!4911 (transformation!3525 (rule!5609 (_1!11031 lt!694302)))) (value!110135 (_1!11031 lt!694302))))))))

(assert (= (and d!544871 c!290301) b!1784815))

(assert (= (and d!544871 (not c!290301)) b!1784816))

(assert (= (and b!1784816 (not res!804760)) b!1784817))

(declare-fun m!2207979 () Bool)

(assert (=> b!1784815 m!2207979))

(declare-fun m!2207981 () Bool)

(assert (=> b!1784817 m!2207981))

(assert (=> b!1784427 d!544871))

(declare-fun d!544873 () Bool)

(assert (=> d!544873 (= (maxPrefixOneRule!1077 thiss!24550 (rule!5609 (_1!11031 lt!694302)) lt!694318) (Some!4071 (tuple2!19259 (Token!6617 (apply!5325 (transformation!3525 (rule!5609 (_1!11031 lt!694302))) (seqFromList!2494 lt!694304)) (rule!5609 (_1!11031 lt!694302)) (size!15625 lt!694304) lt!694304) (_2!11031 lt!694302))))))

(declare-fun lt!694463 () Unit!34003)

(declare-fun choose!11248 (LexerInterface!3154 List!19740 List!19739 List!19739 List!19739 Rule!6850) Unit!34003)

(assert (=> d!544873 (= lt!694463 (choose!11248 thiss!24550 rules!3447 lt!694304 lt!694318 (_2!11031 lt!694302) (rule!5609 (_1!11031 lt!694302))))))

(assert (=> d!544873 (not (isEmpty!12431 rules!3447))))

(assert (=> d!544873 (= (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!455 thiss!24550 rules!3447 lt!694304 lt!694318 (_2!11031 lt!694302) (rule!5609 (_1!11031 lt!694302))) lt!694463)))

(declare-fun bs!405361 () Bool)

(assert (= bs!405361 d!544873))

(assert (=> bs!405361 m!2207529))

(assert (=> bs!405361 m!2207431))

(declare-fun m!2207983 () Bool)

(assert (=> bs!405361 m!2207983))

(assert (=> bs!405361 m!2207529))

(declare-fun m!2207985 () Bool)

(assert (=> bs!405361 m!2207985))

(assert (=> bs!405361 m!2207521))

(assert (=> bs!405361 m!2207523))

(assert (=> b!1784382 d!544873))

(declare-fun d!544875 () Bool)

(declare-fun lt!694466 () Int)

(assert (=> d!544875 (>= lt!694466 0)))

(declare-fun e!1142240 () Int)

(assert (=> d!544875 (= lt!694466 e!1142240)))

(declare-fun c!290304 () Bool)

(assert (=> d!544875 (= c!290304 ((_ is Nil!19669) lt!694304))))

(assert (=> d!544875 (= (size!15625 lt!694304) lt!694466)))

(declare-fun b!1784822 () Bool)

(assert (=> b!1784822 (= e!1142240 0)))

(declare-fun b!1784823 () Bool)

(assert (=> b!1784823 (= e!1142240 (+ 1 (size!15625 (t!166926 lt!694304))))))

(assert (= (and d!544875 c!290304) b!1784822))

(assert (= (and d!544875 (not c!290304)) b!1784823))

(declare-fun m!2207987 () Bool)

(assert (=> b!1784823 m!2207987))

(assert (=> b!1784382 d!544875))

(declare-fun d!544877 () Bool)

(assert (=> d!544877 (= (apply!5325 (transformation!3525 (rule!5609 (_1!11031 lt!694302))) lt!694290) (dynLambda!9687 (toValue!5052 (transformation!3525 (rule!5609 (_1!11031 lt!694302)))) lt!694290))))

(declare-fun b_lambda!58533 () Bool)

(assert (=> (not b_lambda!58533) (not d!544877)))

(assert (=> d!544877 t!166935))

(declare-fun b_and!137213 () Bool)

(assert (= b_and!137195 (and (=> t!166935 result!130666) b_and!137213)))

(assert (=> d!544877 t!166937))

(declare-fun b_and!137215 () Bool)

(assert (= b_and!137197 (and (=> t!166937 result!130668) b_and!137215)))

(assert (=> d!544877 t!166939))

(declare-fun b_and!137217 () Bool)

(assert (= b_and!137199 (and (=> t!166939 result!130670) b_and!137217)))

(assert (=> d!544877 m!2207697))

(assert (=> b!1784382 d!544877))

(declare-fun d!544879 () Bool)

(declare-fun lt!694467 () List!19739)

(assert (=> d!544879 (= (++!5349 lt!694304 lt!694467) lt!694318)))

(declare-fun e!1142241 () List!19739)

(assert (=> d!544879 (= lt!694467 e!1142241)))

(declare-fun c!290305 () Bool)

(assert (=> d!544879 (= c!290305 ((_ is Cons!19669) lt!694304))))

(assert (=> d!544879 (>= (size!15625 lt!694318) (size!15625 lt!694304))))

(assert (=> d!544879 (= (getSuffix!932 lt!694318 lt!694304) lt!694467)))

(declare-fun b!1784824 () Bool)

(assert (=> b!1784824 (= e!1142241 (getSuffix!932 (tail!2671 lt!694318) (t!166926 lt!694304)))))

(declare-fun b!1784825 () Bool)

(assert (=> b!1784825 (= e!1142241 lt!694318)))

(assert (= (and d!544879 c!290305) b!1784824))

(assert (= (and d!544879 (not c!290305)) b!1784825))

(declare-fun m!2207989 () Bool)

(assert (=> d!544879 m!2207989))

(assert (=> d!544879 m!2207835))

(assert (=> d!544879 m!2207521))

(assert (=> b!1784824 m!2207831))

(assert (=> b!1784824 m!2207831))

(declare-fun m!2207991 () Bool)

(assert (=> b!1784824 m!2207991))

(assert (=> b!1784382 d!544879))

(declare-fun b!1784872 () Bool)

(declare-fun res!804801 () Bool)

(declare-fun e!1142271 () Bool)

(assert (=> b!1784872 (=> (not res!804801) (not e!1142271))))

(declare-fun lt!694539 () Option!4072)

(assert (=> b!1784872 (= res!804801 (< (size!15625 (_2!11031 (get!6052 lt!694539))) (size!15625 lt!694318)))))

(declare-fun b!1784873 () Bool)

(declare-fun e!1142268 () Option!4072)

(assert (=> b!1784873 (= e!1142268 None!4071)))

(declare-fun b!1784874 () Bool)

(declare-fun res!804802 () Bool)

(assert (=> b!1784874 (=> (not res!804802) (not e!1142271))))

(assert (=> b!1784874 (= res!804802 (= (rule!5609 (_1!11031 (get!6052 lt!694539))) (rule!5609 (_1!11031 lt!694302))))))

(declare-fun d!544881 () Bool)

(declare-fun e!1142269 () Bool)

(assert (=> d!544881 e!1142269))

(declare-fun res!804800 () Bool)

(assert (=> d!544881 (=> res!804800 e!1142269)))

(assert (=> d!544881 (= res!804800 (isEmpty!12434 lt!694539))))

(assert (=> d!544881 (= lt!694539 e!1142268)))

(declare-fun c!290311 () Bool)

(declare-datatypes ((tuple2!19264 0))(
  ( (tuple2!19265 (_1!11034 List!19739) (_2!11034 List!19739)) )
))
(declare-fun lt!694541 () tuple2!19264)

(assert (=> d!544881 (= c!290311 (isEmpty!12430 (_1!11034 lt!694541)))))

(declare-fun findLongestMatch!400 (Regex!4853 List!19739) tuple2!19264)

(assert (=> d!544881 (= lt!694541 (findLongestMatch!400 (regex!3525 (rule!5609 (_1!11031 lt!694302))) lt!694318))))

(assert (=> d!544881 (ruleValid!1023 thiss!24550 (rule!5609 (_1!11031 lt!694302)))))

(assert (=> d!544881 (= (maxPrefixOneRule!1077 thiss!24550 (rule!5609 (_1!11031 lt!694302)) lt!694318) lt!694539)))

(declare-fun b!1784875 () Bool)

(assert (=> b!1784875 (= e!1142271 (= (size!15624 (_1!11031 (get!6052 lt!694539))) (size!15625 (originalCharacters!4339 (_1!11031 (get!6052 lt!694539))))))))

(declare-fun b!1784876 () Bool)

(declare-fun res!804797 () Bool)

(assert (=> b!1784876 (=> (not res!804797) (not e!1142271))))

(assert (=> b!1784876 (= res!804797 (= (value!110135 (_1!11031 (get!6052 lt!694539))) (apply!5325 (transformation!3525 (rule!5609 (_1!11031 (get!6052 lt!694539)))) (seqFromList!2494 (originalCharacters!4339 (_1!11031 (get!6052 lt!694539)))))))))

(declare-fun b!1784877 () Bool)

(assert (=> b!1784877 (= e!1142269 e!1142271)))

(declare-fun res!804798 () Bool)

(assert (=> b!1784877 (=> (not res!804798) (not e!1142271))))

(assert (=> b!1784877 (= res!804798 (matchR!2326 (regex!3525 (rule!5609 (_1!11031 lt!694302))) (list!7999 (charsOf!2174 (_1!11031 (get!6052 lt!694539))))))))

(declare-fun b!1784878 () Bool)

(declare-fun e!1142270 () Bool)

(declare-fun findLongestMatchInner!473 (Regex!4853 List!19739 Int List!19739 List!19739 Int) tuple2!19264)

(assert (=> b!1784878 (= e!1142270 (matchR!2326 (regex!3525 (rule!5609 (_1!11031 lt!694302))) (_1!11034 (findLongestMatchInner!473 (regex!3525 (rule!5609 (_1!11031 lt!694302))) Nil!19669 (size!15625 Nil!19669) lt!694318 lt!694318 (size!15625 lt!694318)))))))

(declare-fun b!1784879 () Bool)

(declare-fun res!804799 () Bool)

(assert (=> b!1784879 (=> (not res!804799) (not e!1142271))))

(assert (=> b!1784879 (= res!804799 (= (++!5349 (list!7999 (charsOf!2174 (_1!11031 (get!6052 lt!694539)))) (_2!11031 (get!6052 lt!694539))) lt!694318))))

(declare-fun b!1784880 () Bool)

(assert (=> b!1784880 (= e!1142268 (Some!4071 (tuple2!19259 (Token!6617 (apply!5325 (transformation!3525 (rule!5609 (_1!11031 lt!694302))) (seqFromList!2494 (_1!11034 lt!694541))) (rule!5609 (_1!11031 lt!694302)) (size!15626 (seqFromList!2494 (_1!11034 lt!694541))) (_1!11034 lt!694541)) (_2!11034 lt!694541))))))

(declare-fun lt!694538 () Unit!34003)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!457 (Regex!4853 List!19739) Unit!34003)

(assert (=> b!1784880 (= lt!694538 (longestMatchIsAcceptedByMatchOrIsEmpty!457 (regex!3525 (rule!5609 (_1!11031 lt!694302))) lt!694318))))

(declare-fun res!804803 () Bool)

(assert (=> b!1784880 (= res!804803 (isEmpty!12430 (_1!11034 (findLongestMatchInner!473 (regex!3525 (rule!5609 (_1!11031 lt!694302))) Nil!19669 (size!15625 Nil!19669) lt!694318 lt!694318 (size!15625 lt!694318)))))))

(assert (=> b!1784880 (=> res!804803 e!1142270)))

(assert (=> b!1784880 e!1142270))

(declare-fun lt!694537 () Unit!34003)

(assert (=> b!1784880 (= lt!694537 lt!694538)))

(declare-fun lt!694540 () Unit!34003)

(assert (=> b!1784880 (= lt!694540 (lemmaSemiInverse!663 (transformation!3525 (rule!5609 (_1!11031 lt!694302))) (seqFromList!2494 (_1!11034 lt!694541))))))

(assert (= (and d!544881 c!290311) b!1784873))

(assert (= (and d!544881 (not c!290311)) b!1784880))

(assert (= (and b!1784880 (not res!804803)) b!1784878))

(assert (= (and d!544881 (not res!804800)) b!1784877))

(assert (= (and b!1784877 res!804798) b!1784879))

(assert (= (and b!1784879 res!804799) b!1784872))

(assert (= (and b!1784872 res!804801) b!1784874))

(assert (= (and b!1784874 res!804802) b!1784876))

(assert (= (and b!1784876 res!804797) b!1784875))

(declare-fun m!2208065 () Bool)

(assert (=> b!1784878 m!2208065))

(assert (=> b!1784878 m!2207835))

(assert (=> b!1784878 m!2208065))

(assert (=> b!1784878 m!2207835))

(declare-fun m!2208067 () Bool)

(assert (=> b!1784878 m!2208067))

(declare-fun m!2208069 () Bool)

(assert (=> b!1784878 m!2208069))

(declare-fun m!2208071 () Bool)

(assert (=> b!1784879 m!2208071))

(declare-fun m!2208073 () Bool)

(assert (=> b!1784879 m!2208073))

(assert (=> b!1784879 m!2208073))

(declare-fun m!2208075 () Bool)

(assert (=> b!1784879 m!2208075))

(assert (=> b!1784879 m!2208075))

(declare-fun m!2208077 () Bool)

(assert (=> b!1784879 m!2208077))

(assert (=> b!1784872 m!2208071))

(declare-fun m!2208079 () Bool)

(assert (=> b!1784872 m!2208079))

(assert (=> b!1784872 m!2207835))

(declare-fun m!2208081 () Bool)

(assert (=> b!1784880 m!2208081))

(assert (=> b!1784880 m!2208065))

(declare-fun m!2208083 () Bool)

(assert (=> b!1784880 m!2208083))

(assert (=> b!1784880 m!2208081))

(declare-fun m!2208085 () Bool)

(assert (=> b!1784880 m!2208085))

(declare-fun m!2208087 () Bool)

(assert (=> b!1784880 m!2208087))

(assert (=> b!1784880 m!2208065))

(assert (=> b!1784880 m!2207835))

(assert (=> b!1784880 m!2208067))

(assert (=> b!1784880 m!2208081))

(declare-fun m!2208089 () Bool)

(assert (=> b!1784880 m!2208089))

(assert (=> b!1784880 m!2207835))

(assert (=> b!1784880 m!2208081))

(declare-fun m!2208091 () Bool)

(assert (=> b!1784880 m!2208091))

(declare-fun m!2208093 () Bool)

(assert (=> d!544881 m!2208093))

(declare-fun m!2208095 () Bool)

(assert (=> d!544881 m!2208095))

(declare-fun m!2208097 () Bool)

(assert (=> d!544881 m!2208097))

(assert (=> d!544881 m!2207429))

(assert (=> b!1784875 m!2208071))

(declare-fun m!2208099 () Bool)

(assert (=> b!1784875 m!2208099))

(assert (=> b!1784876 m!2208071))

(declare-fun m!2208101 () Bool)

(assert (=> b!1784876 m!2208101))

(assert (=> b!1784876 m!2208101))

(declare-fun m!2208103 () Bool)

(assert (=> b!1784876 m!2208103))

(assert (=> b!1784874 m!2208071))

(assert (=> b!1784877 m!2208071))

(assert (=> b!1784877 m!2208073))

(assert (=> b!1784877 m!2208073))

(assert (=> b!1784877 m!2208075))

(assert (=> b!1784877 m!2208075))

(declare-fun m!2208105 () Bool)

(assert (=> b!1784877 m!2208105))

(assert (=> b!1784382 d!544881))

(declare-fun d!544895 () Bool)

(declare-fun fromListB!1144 (List!19739) BalanceConc!13030)

(assert (=> d!544895 (= (seqFromList!2494 lt!694304) (fromListB!1144 lt!694304))))

(declare-fun bs!405364 () Bool)

(assert (= bs!405364 d!544895))

(declare-fun m!2208107 () Bool)

(assert (=> bs!405364 m!2208107))

(assert (=> b!1784382 d!544895))

(declare-fun d!544897 () Bool)

(assert (=> d!544897 (= (_2!11031 lt!694302) lt!694287)))

(declare-fun lt!694542 () Unit!34003)

(assert (=> d!544897 (= lt!694542 (choose!11239 lt!694304 (_2!11031 lt!694302) lt!694304 lt!694287 lt!694318))))

(assert (=> d!544897 (isPrefix!1765 lt!694304 lt!694318)))

(assert (=> d!544897 (= (lemmaSamePrefixThenSameSuffix!876 lt!694304 (_2!11031 lt!694302) lt!694304 lt!694287 lt!694318) lt!694542)))

(declare-fun bs!405365 () Bool)

(assert (= bs!405365 d!544897))

(declare-fun m!2208109 () Bool)

(assert (=> bs!405365 m!2208109))

(assert (=> bs!405365 m!2207547))

(assert (=> b!1784382 d!544897))

(declare-fun d!544899 () Bool)

(declare-fun lt!694545 () Int)

(assert (=> d!544899 (= lt!694545 (size!15625 (list!7999 lt!694315)))))

(declare-fun size!15628 (Conc!6543) Int)

(assert (=> d!544899 (= lt!694545 (size!15628 (c!290217 lt!694315)))))

(assert (=> d!544899 (= (size!15626 lt!694315) lt!694545)))

(declare-fun bs!405366 () Bool)

(assert (= bs!405366 d!544899))

(assert (=> bs!405366 m!2207491))

(assert (=> bs!405366 m!2207491))

(declare-fun m!2208111 () Bool)

(assert (=> bs!405366 m!2208111))

(declare-fun m!2208113 () Bool)

(assert (=> bs!405366 m!2208113))

(assert (=> b!1784402 d!544899))

(declare-fun b!1784881 () Bool)

(declare-fun e!1142276 () Bool)

(assert (=> b!1784881 (= e!1142276 (nullable!1495 lt!694310))))

(declare-fun b!1784882 () Bool)

(declare-fun e!1142278 () Bool)

(declare-fun lt!694546 () Bool)

(declare-fun call!111354 () Bool)

(assert (=> b!1784882 (= e!1142278 (= lt!694546 call!111354))))

(declare-fun b!1784883 () Bool)

(declare-fun e!1142273 () Bool)

(declare-fun e!1142277 () Bool)

(assert (=> b!1784883 (= e!1142273 e!1142277)))

(declare-fun res!804804 () Bool)

(assert (=> b!1784883 (=> res!804804 e!1142277)))

(assert (=> b!1784883 (= res!804804 call!111354)))

(declare-fun d!544901 () Bool)

(assert (=> d!544901 e!1142278))

(declare-fun c!290314 () Bool)

(assert (=> d!544901 (= c!290314 ((_ is EmptyExpr!4853) lt!694310))))

(assert (=> d!544901 (= lt!694546 e!1142276)))

(declare-fun c!290312 () Bool)

(assert (=> d!544901 (= c!290312 (isEmpty!12430 lt!694317))))

(assert (=> d!544901 (validRegex!1969 lt!694310)))

(assert (=> d!544901 (= (matchR!2326 lt!694310 lt!694317) lt!694546)))

(declare-fun b!1784884 () Bool)

(declare-fun res!804811 () Bool)

(declare-fun e!1142275 () Bool)

(assert (=> b!1784884 (=> (not res!804811) (not e!1142275))))

(assert (=> b!1784884 (= res!804811 (isEmpty!12430 (tail!2671 lt!694317)))))

(declare-fun b!1784885 () Bool)

(declare-fun res!804807 () Bool)

(declare-fun e!1142274 () Bool)

(assert (=> b!1784885 (=> res!804807 e!1142274)))

(assert (=> b!1784885 (= res!804807 e!1142275)))

(declare-fun res!804809 () Bool)

(assert (=> b!1784885 (=> (not res!804809) (not e!1142275))))

(assert (=> b!1784885 (= res!804809 lt!694546)))

(declare-fun bm!111349 () Bool)

(assert (=> bm!111349 (= call!111354 (isEmpty!12430 lt!694317))))

(declare-fun b!1784886 () Bool)

(declare-fun e!1142272 () Bool)

(assert (=> b!1784886 (= e!1142272 (not lt!694546))))

(declare-fun b!1784887 () Bool)

(assert (=> b!1784887 (= e!1142274 e!1142273)))

(declare-fun res!804808 () Bool)

(assert (=> b!1784887 (=> (not res!804808) (not e!1142273))))

(assert (=> b!1784887 (= res!804808 (not lt!694546))))

(declare-fun b!1784888 () Bool)

(assert (=> b!1784888 (= e!1142276 (matchR!2326 (derivativeStep!1264 lt!694310 (head!4176 lt!694317)) (tail!2671 lt!694317)))))

(declare-fun b!1784889 () Bool)

(assert (=> b!1784889 (= e!1142278 e!1142272)))

(declare-fun c!290313 () Bool)

(assert (=> b!1784889 (= c!290313 ((_ is EmptyLang!4853) lt!694310))))

(declare-fun b!1784890 () Bool)

(assert (=> b!1784890 (= e!1142277 (not (= (head!4176 lt!694317) (c!290216 lt!694310))))))

(declare-fun b!1784891 () Bool)

(declare-fun res!804805 () Bool)

(assert (=> b!1784891 (=> res!804805 e!1142274)))

(assert (=> b!1784891 (= res!804805 (not ((_ is ElementMatch!4853) lt!694310)))))

(assert (=> b!1784891 (= e!1142272 e!1142274)))

(declare-fun b!1784892 () Bool)

(declare-fun res!804806 () Bool)

(assert (=> b!1784892 (=> (not res!804806) (not e!1142275))))

(assert (=> b!1784892 (= res!804806 (not call!111354))))

(declare-fun b!1784893 () Bool)

(declare-fun res!804810 () Bool)

(assert (=> b!1784893 (=> res!804810 e!1142277)))

(assert (=> b!1784893 (= res!804810 (not (isEmpty!12430 (tail!2671 lt!694317))))))

(declare-fun b!1784894 () Bool)

(assert (=> b!1784894 (= e!1142275 (= (head!4176 lt!694317) (c!290216 lt!694310)))))

(assert (= (and d!544901 c!290312) b!1784881))

(assert (= (and d!544901 (not c!290312)) b!1784888))

(assert (= (and d!544901 c!290314) b!1784882))

(assert (= (and d!544901 (not c!290314)) b!1784889))

(assert (= (and b!1784889 c!290313) b!1784886))

(assert (= (and b!1784889 (not c!290313)) b!1784891))

(assert (= (and b!1784891 (not res!804805)) b!1784885))

(assert (= (and b!1784885 res!804809) b!1784892))

(assert (= (and b!1784892 res!804806) b!1784884))

(assert (= (and b!1784884 res!804811) b!1784894))

(assert (= (and b!1784885 (not res!804807)) b!1784887))

(assert (= (and b!1784887 res!804808) b!1784883))

(assert (= (and b!1784883 (not res!804804)) b!1784893))

(assert (= (and b!1784893 (not res!804810)) b!1784890))

(assert (= (or b!1784882 b!1784883 b!1784892) bm!111349))

(assert (=> b!1784894 m!2207663))

(assert (=> b!1784888 m!2207663))

(assert (=> b!1784888 m!2207663))

(declare-fun m!2208115 () Bool)

(assert (=> b!1784888 m!2208115))

(assert (=> b!1784888 m!2207667))

(assert (=> b!1784888 m!2208115))

(assert (=> b!1784888 m!2207667))

(declare-fun m!2208117 () Bool)

(assert (=> b!1784888 m!2208117))

(assert (=> d!544901 m!2207671))

(assert (=> d!544901 m!2207889))

(assert (=> b!1784884 m!2207667))

(assert (=> b!1784884 m!2207667))

(assert (=> b!1784884 m!2207675))

(assert (=> b!1784881 m!2207895))

(assert (=> b!1784890 m!2207663))

(assert (=> bm!111349 m!2207671))

(assert (=> b!1784893 m!2207667))

(assert (=> b!1784893 m!2207667))

(assert (=> b!1784893 m!2207675))

(assert (=> b!1784402 d!544901))

(declare-fun d!544903 () Bool)

(assert (=> d!544903 (matchR!2326 (rulesRegex!881 thiss!24550 rules!3447) (list!7999 (charsOf!2174 token!523)))))

(declare-fun lt!694547 () Unit!34003)

(assert (=> d!544903 (= lt!694547 (choose!11241 thiss!24550 rules!3447 lt!694317 token!523 rule!422 Nil!19669))))

(assert (=> d!544903 (not (isEmpty!12431 rules!3447))))

(assert (=> d!544903 (= (lemmaMaxPrefixThenMatchesRulesRegex!232 thiss!24550 rules!3447 lt!694317 token!523 rule!422 Nil!19669) lt!694547)))

(declare-fun bs!405367 () Bool)

(assert (= bs!405367 d!544903))

(assert (=> bs!405367 m!2207405))

(assert (=> bs!405367 m!2207493))

(declare-fun m!2208119 () Bool)

(assert (=> bs!405367 m!2208119))

(assert (=> bs!405367 m!2207405))

(assert (=> bs!405367 m!2208119))

(declare-fun m!2208121 () Bool)

(assert (=> bs!405367 m!2208121))

(assert (=> bs!405367 m!2207493))

(declare-fun m!2208123 () Bool)

(assert (=> bs!405367 m!2208123))

(assert (=> bs!405367 m!2207431))

(assert (=> b!1784402 d!544903))

(declare-fun d!544905 () Bool)

(assert (=> d!544905 (= (inv!25603 (tag!3925 (rule!5609 token!523))) (= (mod (str.len (value!110134 (tag!3925 (rule!5609 token!523)))) 2) 0))))

(assert (=> b!1784380 d!544905))

(declare-fun d!544907 () Bool)

(declare-fun res!804812 () Bool)

(declare-fun e!1142279 () Bool)

(assert (=> d!544907 (=> (not res!804812) (not e!1142279))))

(assert (=> d!544907 (= res!804812 (semiInverseModEq!1410 (toChars!4911 (transformation!3525 (rule!5609 token!523))) (toValue!5052 (transformation!3525 (rule!5609 token!523)))))))

(assert (=> d!544907 (= (inv!25608 (transformation!3525 (rule!5609 token!523))) e!1142279)))

(declare-fun b!1784895 () Bool)

(assert (=> b!1784895 (= e!1142279 (equivClasses!1351 (toChars!4911 (transformation!3525 (rule!5609 token!523))) (toValue!5052 (transformation!3525 (rule!5609 token!523)))))))

(assert (= (and d!544907 res!804812) b!1784895))

(declare-fun m!2208125 () Bool)

(assert (=> d!544907 m!2208125))

(declare-fun m!2208127 () Bool)

(assert (=> b!1784895 m!2208127))

(assert (=> b!1784380 d!544907))

(declare-fun b!1784896 () Bool)

(declare-fun e!1142281 () Bool)

(assert (=> b!1784896 (= e!1142281 (inv!15 (dynLambda!9687 (toValue!5052 (transformation!3525 (rule!5609 (_1!11031 lt!694302)))) lt!694284)))))

(declare-fun b!1784897 () Bool)

(declare-fun e!1142280 () Bool)

(assert (=> b!1784897 (= e!1142280 (inv!16 (dynLambda!9687 (toValue!5052 (transformation!3525 (rule!5609 (_1!11031 lt!694302)))) lt!694284)))))

(declare-fun b!1784898 () Bool)

(declare-fun e!1142282 () Bool)

(assert (=> b!1784898 (= e!1142282 (inv!17 (dynLambda!9687 (toValue!5052 (transformation!3525 (rule!5609 (_1!11031 lt!694302)))) lt!694284)))))

(declare-fun d!544909 () Bool)

(declare-fun c!290315 () Bool)

(assert (=> d!544909 (= c!290315 ((_ is IntegerValue!10845) (dynLambda!9687 (toValue!5052 (transformation!3525 (rule!5609 (_1!11031 lt!694302)))) lt!694284)))))

(assert (=> d!544909 (= (inv!21 (dynLambda!9687 (toValue!5052 (transformation!3525 (rule!5609 (_1!11031 lt!694302)))) lt!694284)) e!1142280)))

(declare-fun b!1784899 () Bool)

(assert (=> b!1784899 (= e!1142280 e!1142282)))

(declare-fun c!290316 () Bool)

(assert (=> b!1784899 (= c!290316 ((_ is IntegerValue!10846) (dynLambda!9687 (toValue!5052 (transformation!3525 (rule!5609 (_1!11031 lt!694302)))) lt!694284)))))

(declare-fun b!1784900 () Bool)

(declare-fun res!804813 () Bool)

(assert (=> b!1784900 (=> res!804813 e!1142281)))

(assert (=> b!1784900 (= res!804813 (not ((_ is IntegerValue!10847) (dynLambda!9687 (toValue!5052 (transformation!3525 (rule!5609 (_1!11031 lt!694302)))) lt!694284))))))

(assert (=> b!1784900 (= e!1142282 e!1142281)))

(assert (= (and d!544909 c!290315) b!1784897))

(assert (= (and d!544909 (not c!290315)) b!1784899))

(assert (= (and b!1784899 c!290316) b!1784898))

(assert (= (and b!1784899 (not c!290316)) b!1784900))

(assert (= (and b!1784900 (not res!804813)) b!1784896))

(declare-fun m!2208129 () Bool)

(assert (=> b!1784896 m!2208129))

(declare-fun m!2208131 () Bool)

(assert (=> b!1784897 m!2208131))

(declare-fun m!2208133 () Bool)

(assert (=> b!1784898 m!2208133))

(assert (=> tb!108591 d!544909))

(declare-fun d!544911 () Bool)

(assert (=> d!544911 (= (isEmpty!12430 suffix!1421) ((_ is Nil!19669) suffix!1421))))

(assert (=> b!1784401 d!544911))

(declare-fun d!544913 () Bool)

(assert (=> d!544913 (= (seqFromList!2494 (originalCharacters!4339 (_1!11031 lt!694302))) (fromListB!1144 (originalCharacters!4339 (_1!11031 lt!694302))))))

(declare-fun bs!405368 () Bool)

(assert (= bs!405368 d!544913))

(declare-fun m!2208135 () Bool)

(assert (=> bs!405368 m!2208135))

(assert (=> b!1784400 d!544913))

(declare-fun d!544915 () Bool)

(assert (=> d!544915 (= (size!15624 (_1!11031 lt!694302)) (size!15625 (originalCharacters!4339 (_1!11031 lt!694302))))))

(declare-fun Unit!34012 () Unit!34003)

(assert (=> d!544915 (= (lemmaCharactersSize!583 (_1!11031 lt!694302)) Unit!34012)))

(declare-fun bs!405369 () Bool)

(assert (= bs!405369 d!544915))

(declare-fun m!2208137 () Bool)

(assert (=> bs!405369 m!2208137))

(assert (=> b!1784400 d!544915))

(declare-fun b!1784934 () Bool)

(declare-fun e!1142296 () Bool)

(assert (=> b!1784934 (= e!1142296 true)))

(declare-fun d!544917 () Bool)

(assert (=> d!544917 e!1142296))

(assert (= d!544917 b!1784934))

(declare-fun order!12729 () Int)

(declare-fun lambda!70749 () Int)

(declare-fun dynLambda!9688 (Int Int) Int)

(assert (=> b!1784934 (< (dynLambda!9683 order!12723 (toValue!5052 (transformation!3525 (rule!5609 (_1!11031 lt!694302))))) (dynLambda!9688 order!12729 lambda!70749))))

(assert (=> b!1784934 (< (dynLambda!9685 order!12727 (toChars!4911 (transformation!3525 (rule!5609 (_1!11031 lt!694302))))) (dynLambda!9688 order!12729 lambda!70749))))

(assert (=> d!544917 (= (dynLambda!9687 (toValue!5052 (transformation!3525 (rule!5609 (_1!11031 lt!694302)))) lt!694284) (dynLambda!9687 (toValue!5052 (transformation!3525 (rule!5609 (_1!11031 lt!694302)))) (seqFromList!2494 (originalCharacters!4339 (_1!11031 lt!694302)))))))

(declare-fun lt!694560 () Unit!34003)

(declare-fun Forall2of!154 (Int BalanceConc!13030 BalanceConc!13030) Unit!34003)

(assert (=> d!544917 (= lt!694560 (Forall2of!154 lambda!70749 lt!694284 (seqFromList!2494 (originalCharacters!4339 (_1!11031 lt!694302)))))))

(assert (=> d!544917 (= (list!7999 lt!694284) (list!7999 (seqFromList!2494 (originalCharacters!4339 (_1!11031 lt!694302)))))))

(assert (=> d!544917 (= (lemmaEqSameImage!436 (transformation!3525 (rule!5609 (_1!11031 lt!694302))) lt!694284 (seqFromList!2494 (originalCharacters!4339 (_1!11031 lt!694302)))) lt!694560)))

(declare-fun b_lambda!58535 () Bool)

(assert (=> (not b_lambda!58535) (not d!544917)))

(assert (=> d!544917 t!166920))

(declare-fun b_and!137219 () Bool)

(assert (= b_and!137213 (and (=> t!166920 result!130652) b_and!137219)))

(assert (=> d!544917 t!166922))

(declare-fun b_and!137221 () Bool)

(assert (= b_and!137215 (and (=> t!166922 result!130656) b_and!137221)))

(assert (=> d!544917 t!166924))

(declare-fun b_and!137223 () Bool)

(assert (= b_and!137217 (and (=> t!166924 result!130658) b_and!137223)))

(declare-fun b_lambda!58537 () Bool)

(assert (=> (not b_lambda!58537) (not d!544917)))

(declare-fun t!166959 () Bool)

(declare-fun tb!108627 () Bool)

(assert (=> (and b!1784399 (= (toValue!5052 (transformation!3525 (h!25071 rules!3447))) (toValue!5052 (transformation!3525 (rule!5609 (_1!11031 lt!694302))))) t!166959) tb!108627))

(declare-fun result!130690 () Bool)

(assert (=> tb!108627 (= result!130690 (inv!21 (dynLambda!9687 (toValue!5052 (transformation!3525 (rule!5609 (_1!11031 lt!694302)))) (seqFromList!2494 (originalCharacters!4339 (_1!11031 lt!694302))))))))

(declare-fun m!2208139 () Bool)

(assert (=> tb!108627 m!2208139))

(assert (=> d!544917 t!166959))

(declare-fun b_and!137225 () Bool)

(assert (= b_and!137219 (and (=> t!166959 result!130690) b_and!137225)))

(declare-fun t!166961 () Bool)

(declare-fun tb!108629 () Bool)

(assert (=> (and b!1784371 (= (toValue!5052 (transformation!3525 (rule!5609 token!523))) (toValue!5052 (transformation!3525 (rule!5609 (_1!11031 lt!694302))))) t!166961) tb!108629))

(declare-fun result!130692 () Bool)

(assert (= result!130692 result!130690))

(assert (=> d!544917 t!166961))

(declare-fun b_and!137227 () Bool)

(assert (= b_and!137221 (and (=> t!166961 result!130692) b_and!137227)))

(declare-fun tb!108631 () Bool)

(declare-fun t!166963 () Bool)

(assert (=> (and b!1784387 (= (toValue!5052 (transformation!3525 rule!422)) (toValue!5052 (transformation!3525 (rule!5609 (_1!11031 lt!694302))))) t!166963) tb!108631))

(declare-fun result!130694 () Bool)

(assert (= result!130694 result!130690))

(assert (=> d!544917 t!166963))

(declare-fun b_and!137229 () Bool)

(assert (= b_and!137223 (and (=> t!166963 result!130694) b_and!137229)))

(assert (=> d!544917 m!2207435))

(declare-fun m!2208143 () Bool)

(assert (=> d!544917 m!2208143))

(assert (=> d!544917 m!2207435))

(declare-fun m!2208147 () Bool)

(assert (=> d!544917 m!2208147))

(assert (=> d!544917 m!2207435))

(declare-fun m!2208155 () Bool)

(assert (=> d!544917 m!2208155))

(assert (=> d!544917 m!2207459))

(assert (=> d!544917 m!2207537))

(assert (=> b!1784400 d!544917))

(declare-fun d!544919 () Bool)

(declare-fun lt!694566 () Int)

(assert (=> d!544919 (= lt!694566 (size!15625 (list!7999 lt!694284)))))

(assert (=> d!544919 (= lt!694566 (size!15628 (c!290217 lt!694284)))))

(assert (=> d!544919 (= (size!15626 lt!694284) lt!694566)))

(declare-fun bs!405370 () Bool)

(assert (= bs!405370 d!544919))

(assert (=> bs!405370 m!2207537))

(assert (=> bs!405370 m!2207537))

(declare-fun m!2208165 () Bool)

(assert (=> bs!405370 m!2208165))

(declare-fun m!2208167 () Bool)

(assert (=> bs!405370 m!2208167))

(assert (=> b!1784400 d!544919))

(declare-fun d!544921 () Bool)

(assert (=> d!544921 (= (apply!5325 (transformation!3525 (rule!5609 (_1!11031 lt!694302))) lt!694284) (dynLambda!9687 (toValue!5052 (transformation!3525 (rule!5609 (_1!11031 lt!694302)))) lt!694284))))

(declare-fun b_lambda!58539 () Bool)

(assert (=> (not b_lambda!58539) (not d!544921)))

(assert (=> d!544921 t!166920))

(declare-fun b_and!137231 () Bool)

(assert (= b_and!137225 (and (=> t!166920 result!130652) b_and!137231)))

(assert (=> d!544921 t!166922))

(declare-fun b_and!137233 () Bool)

(assert (= b_and!137227 (and (=> t!166922 result!130656) b_and!137233)))

(assert (=> d!544921 t!166924))

(declare-fun b_and!137235 () Bool)

(assert (= b_and!137229 (and (=> t!166924 result!130658) b_and!137235)))

(assert (=> d!544921 m!2207459))

(assert (=> b!1784400 d!544921))

(declare-fun d!544923 () Bool)

(declare-fun c!290323 () Bool)

(assert (=> d!544923 (= c!290323 (isEmpty!12430 lt!694301))))

(declare-fun e!1142302 () Bool)

(assert (=> d!544923 (= (prefixMatch!736 lt!694310 lt!694301) e!1142302)))

(declare-fun b!1784943 () Bool)

(declare-fun lostCause!605 (Regex!4853) Bool)

(assert (=> b!1784943 (= e!1142302 (not (lostCause!605 lt!694310)))))

(declare-fun b!1784944 () Bool)

(assert (=> b!1784944 (= e!1142302 (prefixMatch!736 (derivativeStep!1264 lt!694310 (head!4176 lt!694301)) (tail!2671 lt!694301)))))

(assert (= (and d!544923 c!290323) b!1784943))

(assert (= (and d!544923 (not c!290323)) b!1784944))

(declare-fun m!2208195 () Bool)

(assert (=> d!544923 m!2208195))

(declare-fun m!2208197 () Bool)

(assert (=> b!1784943 m!2208197))

(assert (=> b!1784944 m!2207863))

(assert (=> b!1784944 m!2207863))

(declare-fun m!2208199 () Bool)

(assert (=> b!1784944 m!2208199))

(assert (=> b!1784944 m!2207865))

(assert (=> b!1784944 m!2208199))

(assert (=> b!1784944 m!2207865))

(declare-fun m!2208201 () Bool)

(assert (=> b!1784944 m!2208201))

(assert (=> b!1784379 d!544923))

(declare-fun e!1142304 () Bool)

(declare-fun lt!694568 () List!19739)

(declare-fun b!1784948 () Bool)

(assert (=> b!1784948 (= e!1142304 (or (not (= (Cons!19669 (head!4176 suffix!1421) Nil!19669) Nil!19669)) (= lt!694568 lt!694317)))))

(declare-fun b!1784947 () Bool)

(declare-fun res!804839 () Bool)

(assert (=> b!1784947 (=> (not res!804839) (not e!1142304))))

(assert (=> b!1784947 (= res!804839 (= (size!15625 lt!694568) (+ (size!15625 lt!694317) (size!15625 (Cons!19669 (head!4176 suffix!1421) Nil!19669)))))))

(declare-fun d!544929 () Bool)

(assert (=> d!544929 e!1142304))

(declare-fun res!804840 () Bool)

(assert (=> d!544929 (=> (not res!804840) (not e!1142304))))

(assert (=> d!544929 (= res!804840 (= (content!2867 lt!694568) ((_ map or) (content!2867 lt!694317) (content!2867 (Cons!19669 (head!4176 suffix!1421) Nil!19669)))))))

(declare-fun e!1142303 () List!19739)

(assert (=> d!544929 (= lt!694568 e!1142303)))

(declare-fun c!290324 () Bool)

(assert (=> d!544929 (= c!290324 ((_ is Nil!19669) lt!694317))))

(assert (=> d!544929 (= (++!5349 lt!694317 (Cons!19669 (head!4176 suffix!1421) Nil!19669)) lt!694568)))

(declare-fun b!1784946 () Bool)

(assert (=> b!1784946 (= e!1142303 (Cons!19669 (h!25070 lt!694317) (++!5349 (t!166926 lt!694317) (Cons!19669 (head!4176 suffix!1421) Nil!19669))))))

(declare-fun b!1784945 () Bool)

(assert (=> b!1784945 (= e!1142303 (Cons!19669 (head!4176 suffix!1421) Nil!19669))))

(assert (= (and d!544929 c!290324) b!1784945))

(assert (= (and d!544929 (not c!290324)) b!1784946))

(assert (= (and d!544929 res!804840) b!1784947))

(assert (= (and b!1784947 res!804839) b!1784948))

(declare-fun m!2208203 () Bool)

(assert (=> b!1784947 m!2208203))

(assert (=> b!1784947 m!2207859))

(declare-fun m!2208205 () Bool)

(assert (=> b!1784947 m!2208205))

(declare-fun m!2208207 () Bool)

(assert (=> d!544929 m!2208207))

(assert (=> d!544929 m!2207903))

(declare-fun m!2208209 () Bool)

(assert (=> d!544929 m!2208209))

(declare-fun m!2208211 () Bool)

(assert (=> b!1784946 m!2208211))

(assert (=> b!1784379 d!544929))

(declare-fun d!544931 () Bool)

(assert (=> d!544931 (= (head!4176 suffix!1421) (h!25070 suffix!1421))))

(assert (=> b!1784379 d!544931))

(declare-fun d!544933 () Bool)

(declare-fun lt!694573 () Unit!34003)

(declare-fun lemma!418 (List!19740 LexerInterface!3154 List!19740) Unit!34003)

(assert (=> d!544933 (= lt!694573 (lemma!418 rules!3447 thiss!24550 rules!3447))))

(declare-fun lambda!70752 () Int)

(declare-datatypes ((List!19743 0))(
  ( (Nil!19673) (Cons!19673 (h!25074 Regex!4853) (t!167006 List!19743)) )
))
(declare-fun generalisedUnion!426 (List!19743) Regex!4853)

(declare-fun map!4060 (List!19740 Int) List!19743)

(assert (=> d!544933 (= (rulesRegex!881 thiss!24550 rules!3447) (generalisedUnion!426 (map!4060 rules!3447 lambda!70752)))))

(declare-fun bs!405371 () Bool)

(assert (= bs!405371 d!544933))

(declare-fun m!2208213 () Bool)

(assert (=> bs!405371 m!2208213))

(declare-fun m!2208215 () Bool)

(assert (=> bs!405371 m!2208215))

(assert (=> bs!405371 m!2208215))

(declare-fun m!2208217 () Bool)

(assert (=> bs!405371 m!2208217))

(assert (=> b!1784379 d!544933))

(declare-fun d!544935 () Bool)

(declare-fun e!1142307 () Bool)

(assert (=> d!544935 e!1142307))

(declare-fun res!804848 () Bool)

(assert (=> d!544935 (=> res!804848 e!1142307)))

(declare-fun lt!694574 () Bool)

(assert (=> d!544935 (= res!804848 (not lt!694574))))

(declare-fun e!1142309 () Bool)

(assert (=> d!544935 (= lt!694574 e!1142309)))

(declare-fun res!804847 () Bool)

(assert (=> d!544935 (=> res!804847 e!1142309)))

(assert (=> d!544935 (= res!804847 ((_ is Nil!19669) lt!694317))))

(assert (=> d!544935 (= (isPrefix!1765 lt!694317 lt!694318) lt!694574)))

(declare-fun b!1784954 () Bool)

(declare-fun res!804845 () Bool)

(declare-fun e!1142308 () Bool)

(assert (=> b!1784954 (=> (not res!804845) (not e!1142308))))

(assert (=> b!1784954 (= res!804845 (= (head!4176 lt!694317) (head!4176 lt!694318)))))

(declare-fun b!1784955 () Bool)

(assert (=> b!1784955 (= e!1142308 (isPrefix!1765 (tail!2671 lt!694317) (tail!2671 lt!694318)))))

(declare-fun b!1784953 () Bool)

(assert (=> b!1784953 (= e!1142309 e!1142308)))

(declare-fun res!804846 () Bool)

(assert (=> b!1784953 (=> (not res!804846) (not e!1142308))))

(assert (=> b!1784953 (= res!804846 (not ((_ is Nil!19669) lt!694318)))))

(declare-fun b!1784956 () Bool)

(assert (=> b!1784956 (= e!1142307 (>= (size!15625 lt!694318) (size!15625 lt!694317)))))

(assert (= (and d!544935 (not res!804847)) b!1784953))

(assert (= (and b!1784953 res!804846) b!1784954))

(assert (= (and b!1784954 res!804845) b!1784955))

(assert (= (and d!544935 (not res!804848)) b!1784956))

(assert (=> b!1784954 m!2207663))

(assert (=> b!1784954 m!2207827))

(assert (=> b!1784955 m!2207667))

(assert (=> b!1784955 m!2207831))

(assert (=> b!1784955 m!2207667))

(assert (=> b!1784955 m!2207831))

(declare-fun m!2208219 () Bool)

(assert (=> b!1784955 m!2208219))

(assert (=> b!1784956 m!2207835))

(assert (=> b!1784956 m!2207859))

(assert (=> b!1784378 d!544935))

(declare-fun b!1785167 () Bool)

(declare-fun e!1142432 () Unit!34003)

(declare-fun Unit!34013 () Unit!34003)

(assert (=> b!1785167 (= e!1142432 Unit!34013)))

(declare-fun lt!694663 () List!19739)

(assert (=> b!1785167 (= lt!694663 (++!5349 lt!694317 suffix!1421))))

(declare-fun lt!694666 () Unit!34003)

(declare-fun lt!694660 () Token!6616)

(declare-fun lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!353 (LexerInterface!3154 Rule!6850 List!19740 List!19739) Unit!34003)

(assert (=> b!1785167 (= lt!694666 (lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!353 thiss!24550 (rule!5609 lt!694660) rules!3447 lt!694663))))

(assert (=> b!1785167 (isEmpty!12434 (maxPrefixOneRule!1077 thiss!24550 (rule!5609 lt!694660) lt!694663))))

(declare-fun lt!694664 () Unit!34003)

(assert (=> b!1785167 (= lt!694664 lt!694666)))

(declare-fun lt!694669 () List!19739)

(assert (=> b!1785167 (= lt!694669 (list!7999 (charsOf!2174 lt!694660)))))

(declare-fun lt!694670 () Unit!34003)

(declare-fun lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!349 (LexerInterface!3154 Rule!6850 List!19739 List!19739) Unit!34003)

(assert (=> b!1785167 (= lt!694670 (lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!349 thiss!24550 (rule!5609 lt!694660) lt!694669 (++!5349 lt!694317 suffix!1421)))))

(assert (=> b!1785167 (not (matchR!2326 (regex!3525 (rule!5609 lt!694660)) lt!694669))))

(declare-fun lt!694661 () Unit!34003)

(assert (=> b!1785167 (= lt!694661 lt!694670)))

(assert (=> b!1785167 false))

(declare-fun e!1142433 () Bool)

(declare-fun b!1785166 () Bool)

(assert (=> b!1785166 (= e!1142433 (= (rule!5609 lt!694660) (get!6053 (getRuleFromTag!573 thiss!24550 rules!3447 (tag!3925 (rule!5609 lt!694660))))))))

(declare-fun b!1785168 () Bool)

(declare-fun Unit!34014 () Unit!34003)

(assert (=> b!1785168 (= e!1142432 Unit!34014)))

(declare-fun d!544937 () Bool)

(assert (=> d!544937 (isDefined!3416 (maxPrefix!1708 thiss!24550 rules!3447 (++!5349 lt!694317 suffix!1421)))))

(declare-fun lt!694671 () Unit!34003)

(assert (=> d!544937 (= lt!694671 e!1142432)))

(declare-fun c!290356 () Bool)

(assert (=> d!544937 (= c!290356 (isEmpty!12434 (maxPrefix!1708 thiss!24550 rules!3447 (++!5349 lt!694317 suffix!1421))))))

(declare-fun lt!694674 () Unit!34003)

(declare-fun lt!694675 () Unit!34003)

(assert (=> d!544937 (= lt!694674 lt!694675)))

(assert (=> d!544937 e!1142433))

(declare-fun res!804932 () Bool)

(assert (=> d!544937 (=> (not res!804932) (not e!1142433))))

(assert (=> d!544937 (= res!804932 (isDefined!3415 (getRuleFromTag!573 thiss!24550 rules!3447 (tag!3925 (rule!5609 lt!694660)))))))

(assert (=> d!544937 (= lt!694675 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!573 thiss!24550 rules!3447 lt!694317 lt!694660))))

(declare-fun lt!694673 () Unit!34003)

(declare-fun lt!694665 () Unit!34003)

(assert (=> d!544937 (= lt!694673 lt!694665)))

(declare-fun lt!694662 () List!19739)

(assert (=> d!544937 (isPrefix!1765 lt!694662 (++!5349 lt!694317 suffix!1421))))

(declare-fun lemmaPrefixStaysPrefixWhenAddingToSuffix!345 (List!19739 List!19739 List!19739) Unit!34003)

(assert (=> d!544937 (= lt!694665 (lemmaPrefixStaysPrefixWhenAddingToSuffix!345 lt!694662 lt!694317 suffix!1421))))

(assert (=> d!544937 (= lt!694662 (list!7999 (charsOf!2174 lt!694660)))))

(declare-fun lt!694672 () Unit!34003)

(declare-fun lt!694668 () Unit!34003)

(assert (=> d!544937 (= lt!694672 lt!694668)))

(declare-fun lt!694659 () List!19739)

(declare-fun lt!694667 () List!19739)

(assert (=> d!544937 (isPrefix!1765 lt!694659 (++!5349 lt!694659 lt!694667))))

(assert (=> d!544937 (= lt!694668 (lemmaConcatTwoListThenFirstIsPrefix!1274 lt!694659 lt!694667))))

(assert (=> d!544937 (= lt!694667 (_2!11031 (get!6052 (maxPrefix!1708 thiss!24550 rules!3447 lt!694317))))))

(assert (=> d!544937 (= lt!694659 (list!7999 (charsOf!2174 lt!694660)))))

(declare-datatypes ((List!19744 0))(
  ( (Nil!19674) (Cons!19674 (h!25075 Token!6616) (t!167007 List!19744)) )
))
(declare-fun head!4178 (List!19744) Token!6616)

(declare-datatypes ((IArray!13095 0))(
  ( (IArray!13096 (innerList!6605 List!19744)) )
))
(declare-datatypes ((Conc!6545 0))(
  ( (Node!6545 (left!15769 Conc!6545) (right!16099 Conc!6545) (csize!13320 Int) (cheight!6756 Int)) (Leaf!9528 (xs!9421 IArray!13095) (csize!13321 Int)) (Empty!6545) )
))
(declare-datatypes ((BalanceConc!13034 0))(
  ( (BalanceConc!13035 (c!290367 Conc!6545)) )
))
(declare-fun list!8003 (BalanceConc!13034) List!19744)

(declare-datatypes ((tuple2!19266 0))(
  ( (tuple2!19267 (_1!11035 BalanceConc!13034) (_2!11035 BalanceConc!13030)) )
))
(declare-fun lex!1484 (LexerInterface!3154 List!19740 BalanceConc!13030) tuple2!19266)

(assert (=> d!544937 (= lt!694660 (head!4178 (list!8003 (_1!11035 (lex!1484 thiss!24550 rules!3447 (seqFromList!2494 lt!694317))))))))

(assert (=> d!544937 (not (isEmpty!12431 rules!3447))))

(assert (=> d!544937 (= (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!676 thiss!24550 rules!3447 lt!694317 suffix!1421) lt!694671)))

(declare-fun b!1785165 () Bool)

(declare-fun res!804933 () Bool)

(assert (=> b!1785165 (=> (not res!804933) (not e!1142433))))

(assert (=> b!1785165 (= res!804933 (matchR!2326 (regex!3525 (get!6053 (getRuleFromTag!573 thiss!24550 rules!3447 (tag!3925 (rule!5609 lt!694660))))) (list!7999 (charsOf!2174 lt!694660))))))

(assert (= (and d!544937 res!804932) b!1785165))

(assert (= (and b!1785165 res!804933) b!1785166))

(assert (= (and d!544937 c!290356) b!1785167))

(assert (= (and d!544937 (not c!290356)) b!1785168))

(assert (=> b!1785167 m!2207541))

(declare-fun m!2208467 () Bool)

(assert (=> b!1785167 m!2208467))

(declare-fun m!2208469 () Bool)

(assert (=> b!1785167 m!2208469))

(declare-fun m!2208471 () Bool)

(assert (=> b!1785167 m!2208471))

(declare-fun m!2208473 () Bool)

(assert (=> b!1785167 m!2208473))

(declare-fun m!2208475 () Bool)

(assert (=> b!1785167 m!2208475))

(declare-fun m!2208477 () Bool)

(assert (=> b!1785167 m!2208477))

(declare-fun m!2208479 () Bool)

(assert (=> b!1785167 m!2208479))

(assert (=> b!1785167 m!2208477))

(assert (=> b!1785167 m!2208471))

(assert (=> b!1785167 m!2207541))

(declare-fun m!2208481 () Bool)

(assert (=> b!1785166 m!2208481))

(assert (=> b!1785166 m!2208481))

(declare-fun m!2208483 () Bool)

(assert (=> b!1785166 m!2208483))

(declare-fun m!2208485 () Bool)

(assert (=> d!544937 m!2208485))

(declare-fun m!2208487 () Bool)

(assert (=> d!544937 m!2208487))

(declare-fun m!2208489 () Bool)

(assert (=> d!544937 m!2208489))

(declare-fun m!2208491 () Bool)

(assert (=> d!544937 m!2208491))

(declare-fun m!2208493 () Bool)

(assert (=> d!544937 m!2208493))

(assert (=> d!544937 m!2208477))

(declare-fun m!2208495 () Bool)

(assert (=> d!544937 m!2208495))

(declare-fun m!2208497 () Bool)

(assert (=> d!544937 m!2208497))

(assert (=> d!544937 m!2208481))

(declare-fun m!2208499 () Bool)

(assert (=> d!544937 m!2208499))

(declare-fun m!2208501 () Bool)

(assert (=> d!544937 m!2208501))

(assert (=> d!544937 m!2207541))

(declare-fun m!2208503 () Bool)

(assert (=> d!544937 m!2208503))

(declare-fun m!2208505 () Bool)

(assert (=> d!544937 m!2208505))

(declare-fun m!2208507 () Bool)

(assert (=> d!544937 m!2208507))

(assert (=> d!544937 m!2207489))

(assert (=> d!544937 m!2208489))

(declare-fun m!2208509 () Bool)

(assert (=> d!544937 m!2208509))

(assert (=> d!544937 m!2208495))

(assert (=> d!544937 m!2207541))

(assert (=> d!544937 m!2208489))

(assert (=> d!544937 m!2207489))

(declare-fun m!2208511 () Bool)

(assert (=> d!544937 m!2208511))

(assert (=> d!544937 m!2208477))

(assert (=> d!544937 m!2208479))

(assert (=> d!544937 m!2208505))

(assert (=> d!544937 m!2207541))

(declare-fun m!2208513 () Bool)

(assert (=> d!544937 m!2208513))

(assert (=> d!544937 m!2208481))

(assert (=> d!544937 m!2207431))

(assert (=> d!544937 m!2208485))

(assert (=> b!1785165 m!2208477))

(assert (=> b!1785165 m!2208479))

(assert (=> b!1785165 m!2208477))

(assert (=> b!1785165 m!2208481))

(assert (=> b!1785165 m!2208479))

(declare-fun m!2208515 () Bool)

(assert (=> b!1785165 m!2208515))

(assert (=> b!1785165 m!2208481))

(assert (=> b!1785165 m!2208483))

(assert (=> b!1784378 d!544937))

(declare-fun d!545049 () Bool)

(assert (=> d!545049 (isPrefix!1765 lt!694317 (++!5349 lt!694317 suffix!1421))))

(declare-fun lt!694678 () Unit!34003)

(declare-fun choose!11252 (List!19739 List!19739) Unit!34003)

(assert (=> d!545049 (= lt!694678 (choose!11252 lt!694317 suffix!1421))))

(assert (=> d!545049 (= (lemmaConcatTwoListThenFirstIsPrefix!1274 lt!694317 suffix!1421) lt!694678)))

(declare-fun bs!405394 () Bool)

(assert (= bs!405394 d!545049))

(assert (=> bs!405394 m!2207541))

(assert (=> bs!405394 m!2207541))

(declare-fun m!2208517 () Bool)

(assert (=> bs!405394 m!2208517))

(declare-fun m!2208519 () Bool)

(assert (=> bs!405394 m!2208519))

(assert (=> b!1784378 d!545049))

(declare-fun lt!694679 () List!19739)

(declare-fun e!1142435 () Bool)

(declare-fun b!1785172 () Bool)

(assert (=> b!1785172 (= e!1142435 (or (not (= (_2!11031 lt!694302) Nil!19669)) (= lt!694679 lt!694304)))))

(declare-fun b!1785171 () Bool)

(declare-fun res!804934 () Bool)

(assert (=> b!1785171 (=> (not res!804934) (not e!1142435))))

(assert (=> b!1785171 (= res!804934 (= (size!15625 lt!694679) (+ (size!15625 lt!694304) (size!15625 (_2!11031 lt!694302)))))))

(declare-fun d!545051 () Bool)

(assert (=> d!545051 e!1142435))

(declare-fun res!804935 () Bool)

(assert (=> d!545051 (=> (not res!804935) (not e!1142435))))

(assert (=> d!545051 (= res!804935 (= (content!2867 lt!694679) ((_ map or) (content!2867 lt!694304) (content!2867 (_2!11031 lt!694302)))))))

(declare-fun e!1142434 () List!19739)

(assert (=> d!545051 (= lt!694679 e!1142434)))

(declare-fun c!290357 () Bool)

(assert (=> d!545051 (= c!290357 ((_ is Nil!19669) lt!694304))))

(assert (=> d!545051 (= (++!5349 lt!694304 (_2!11031 lt!694302)) lt!694679)))

(declare-fun b!1785170 () Bool)

(assert (=> b!1785170 (= e!1142434 (Cons!19669 (h!25070 lt!694304) (++!5349 (t!166926 lt!694304) (_2!11031 lt!694302))))))

(declare-fun b!1785169 () Bool)

(assert (=> b!1785169 (= e!1142434 (_2!11031 lt!694302))))

(assert (= (and d!545051 c!290357) b!1785169))

(assert (= (and d!545051 (not c!290357)) b!1785170))

(assert (= (and d!545051 res!804935) b!1785171))

(assert (= (and b!1785171 res!804934) b!1785172))

(declare-fun m!2208521 () Bool)

(assert (=> b!1785171 m!2208521))

(assert (=> b!1785171 m!2207521))

(declare-fun m!2208523 () Bool)

(assert (=> b!1785171 m!2208523))

(declare-fun m!2208525 () Bool)

(assert (=> d!545051 m!2208525))

(declare-fun m!2208527 () Bool)

(assert (=> d!545051 m!2208527))

(declare-fun m!2208529 () Bool)

(assert (=> d!545051 m!2208529))

(declare-fun m!2208531 () Bool)

(assert (=> b!1785170 m!2208531))

(assert (=> b!1784378 d!545051))

(declare-fun d!545053 () Bool)

(assert (=> d!545053 (isPrefix!1765 lt!694304 (++!5349 lt!694304 (_2!11031 lt!694302)))))

(declare-fun lt!694680 () Unit!34003)

(assert (=> d!545053 (= lt!694680 (choose!11252 lt!694304 (_2!11031 lt!694302)))))

(assert (=> d!545053 (= (lemmaConcatTwoListThenFirstIsPrefix!1274 lt!694304 (_2!11031 lt!694302)) lt!694680)))

(declare-fun bs!405395 () Bool)

(assert (= bs!405395 d!545053))

(assert (=> bs!405395 m!2207543))

(assert (=> bs!405395 m!2207543))

(assert (=> bs!405395 m!2207557))

(declare-fun m!2208533 () Bool)

(assert (=> bs!405395 m!2208533))

(assert (=> b!1784378 d!545053))

(declare-fun b!1785173 () Bool)

(declare-fun res!804936 () Bool)

(declare-fun e!1142437 () Bool)

(assert (=> b!1785173 (=> (not res!804936) (not e!1142437))))

(declare-fun lt!694685 () Option!4072)

(assert (=> b!1785173 (= res!804936 (= (++!5349 (list!7999 (charsOf!2174 (_1!11031 (get!6052 lt!694685)))) (_2!11031 (get!6052 lt!694685))) lt!694318))))

(declare-fun b!1785174 () Bool)

(declare-fun e!1142438 () Bool)

(assert (=> b!1785174 (= e!1142438 e!1142437)))

(declare-fun res!804941 () Bool)

(assert (=> b!1785174 (=> (not res!804941) (not e!1142437))))

(assert (=> b!1785174 (= res!804941 (isDefined!3416 lt!694685))))

(declare-fun b!1785175 () Bool)

(assert (=> b!1785175 (= e!1142437 (contains!3557 rules!3447 (rule!5609 (_1!11031 (get!6052 lt!694685)))))))

(declare-fun call!111362 () Option!4072)

(declare-fun bm!111357 () Bool)

(assert (=> bm!111357 (= call!111362 (maxPrefixOneRule!1077 thiss!24550 (h!25071 rules!3447) lt!694318))))

(declare-fun b!1785176 () Bool)

(declare-fun res!804937 () Bool)

(assert (=> b!1785176 (=> (not res!804937) (not e!1142437))))

(assert (=> b!1785176 (= res!804937 (matchR!2326 (regex!3525 (rule!5609 (_1!11031 (get!6052 lt!694685)))) (list!7999 (charsOf!2174 (_1!11031 (get!6052 lt!694685))))))))

(declare-fun b!1785178 () Bool)

(declare-fun res!804940 () Bool)

(assert (=> b!1785178 (=> (not res!804940) (not e!1142437))))

(assert (=> b!1785178 (= res!804940 (= (list!7999 (charsOf!2174 (_1!11031 (get!6052 lt!694685)))) (originalCharacters!4339 (_1!11031 (get!6052 lt!694685)))))))

(declare-fun b!1785179 () Bool)

(declare-fun res!804939 () Bool)

(assert (=> b!1785179 (=> (not res!804939) (not e!1142437))))

(assert (=> b!1785179 (= res!804939 (= (value!110135 (_1!11031 (get!6052 lt!694685))) (apply!5325 (transformation!3525 (rule!5609 (_1!11031 (get!6052 lt!694685)))) (seqFromList!2494 (originalCharacters!4339 (_1!11031 (get!6052 lt!694685)))))))))

(declare-fun b!1785177 () Bool)

(declare-fun e!1142436 () Option!4072)

(declare-fun lt!694684 () Option!4072)

(declare-fun lt!694681 () Option!4072)

(assert (=> b!1785177 (= e!1142436 (ite (and ((_ is None!4071) lt!694684) ((_ is None!4071) lt!694681)) None!4071 (ite ((_ is None!4071) lt!694681) lt!694684 (ite ((_ is None!4071) lt!694684) lt!694681 (ite (>= (size!15624 (_1!11031 (v!25566 lt!694684))) (size!15624 (_1!11031 (v!25566 lt!694681)))) lt!694684 lt!694681)))))))

(assert (=> b!1785177 (= lt!694684 call!111362)))

(assert (=> b!1785177 (= lt!694681 (maxPrefix!1708 thiss!24550 (t!166927 rules!3447) lt!694318))))

(declare-fun d!545055 () Bool)

(assert (=> d!545055 e!1142438))

(declare-fun res!804938 () Bool)

(assert (=> d!545055 (=> res!804938 e!1142438)))

(assert (=> d!545055 (= res!804938 (isEmpty!12434 lt!694685))))

(assert (=> d!545055 (= lt!694685 e!1142436)))

(declare-fun c!290358 () Bool)

(assert (=> d!545055 (= c!290358 (and ((_ is Cons!19670) rules!3447) ((_ is Nil!19670) (t!166927 rules!3447))))))

(declare-fun lt!694682 () Unit!34003)

(declare-fun lt!694683 () Unit!34003)

(assert (=> d!545055 (= lt!694682 lt!694683)))

(assert (=> d!545055 (isPrefix!1765 lt!694318 lt!694318)))

(assert (=> d!545055 (= lt!694683 (lemmaIsPrefixRefl!1164 lt!694318 lt!694318))))

(assert (=> d!545055 (rulesValidInductive!1200 thiss!24550 rules!3447)))

(assert (=> d!545055 (= (maxPrefix!1708 thiss!24550 rules!3447 lt!694318) lt!694685)))

(declare-fun b!1785180 () Bool)

(assert (=> b!1785180 (= e!1142436 call!111362)))

(declare-fun b!1785181 () Bool)

(declare-fun res!804942 () Bool)

(assert (=> b!1785181 (=> (not res!804942) (not e!1142437))))

(assert (=> b!1785181 (= res!804942 (< (size!15625 (_2!11031 (get!6052 lt!694685))) (size!15625 lt!694318)))))

(assert (= (and d!545055 c!290358) b!1785180))

(assert (= (and d!545055 (not c!290358)) b!1785177))

(assert (= (or b!1785180 b!1785177) bm!111357))

(assert (= (and d!545055 (not res!804938)) b!1785174))

(assert (= (and b!1785174 res!804941) b!1785178))

(assert (= (and b!1785178 res!804940) b!1785181))

(assert (= (and b!1785181 res!804942) b!1785173))

(assert (= (and b!1785173 res!804936) b!1785179))

(assert (= (and b!1785179 res!804939) b!1785176))

(assert (= (and b!1785176 res!804937) b!1785175))

(declare-fun m!2208535 () Bool)

(assert (=> b!1785179 m!2208535))

(declare-fun m!2208537 () Bool)

(assert (=> b!1785179 m!2208537))

(assert (=> b!1785179 m!2208537))

(declare-fun m!2208539 () Bool)

(assert (=> b!1785179 m!2208539))

(assert (=> b!1785178 m!2208535))

(declare-fun m!2208541 () Bool)

(assert (=> b!1785178 m!2208541))

(assert (=> b!1785178 m!2208541))

(declare-fun m!2208543 () Bool)

(assert (=> b!1785178 m!2208543))

(assert (=> b!1785175 m!2208535))

(declare-fun m!2208545 () Bool)

(assert (=> b!1785175 m!2208545))

(declare-fun m!2208547 () Bool)

(assert (=> b!1785174 m!2208547))

(assert (=> b!1785181 m!2208535))

(declare-fun m!2208549 () Bool)

(assert (=> b!1785181 m!2208549))

(assert (=> b!1785181 m!2207835))

(assert (=> b!1785173 m!2208535))

(assert (=> b!1785173 m!2208541))

(assert (=> b!1785173 m!2208541))

(assert (=> b!1785173 m!2208543))

(assert (=> b!1785173 m!2208543))

(declare-fun m!2208551 () Bool)

(assert (=> b!1785173 m!2208551))

(assert (=> b!1785176 m!2208535))

(assert (=> b!1785176 m!2208541))

(assert (=> b!1785176 m!2208541))

(assert (=> b!1785176 m!2208543))

(assert (=> b!1785176 m!2208543))

(declare-fun m!2208553 () Bool)

(assert (=> b!1785176 m!2208553))

(declare-fun m!2208555 () Bool)

(assert (=> d!545055 m!2208555))

(declare-fun m!2208557 () Bool)

(assert (=> d!545055 m!2208557))

(declare-fun m!2208559 () Bool)

(assert (=> d!545055 m!2208559))

(assert (=> d!545055 m!2207965))

(declare-fun m!2208561 () Bool)

(assert (=> b!1785177 m!2208561))

(declare-fun m!2208563 () Bool)

(assert (=> bm!111357 m!2208563))

(assert (=> b!1784378 d!545055))

(declare-fun d!545057 () Bool)

(assert (=> d!545057 (= (list!7999 lt!694284) (list!8001 (c!290217 lt!694284)))))

(declare-fun bs!405396 () Bool)

(assert (= bs!405396 d!545057))

(declare-fun m!2208565 () Bool)

(assert (=> bs!405396 m!2208565))

(assert (=> b!1784378 d!545057))

(declare-fun d!545059 () Bool)

(declare-fun e!1142441 () Bool)

(assert (=> d!545059 e!1142441))

(declare-fun res!804947 () Bool)

(assert (=> d!545059 (=> (not res!804947) (not e!1142441))))

(assert (=> d!545059 (= res!804947 (isDefined!3415 (getRuleFromTag!573 thiss!24550 rules!3447 (tag!3925 (rule!5609 (_1!11031 lt!694302))))))))

(declare-fun lt!694688 () Unit!34003)

(declare-fun choose!11253 (LexerInterface!3154 List!19740 List!19739 Token!6616) Unit!34003)

(assert (=> d!545059 (= lt!694688 (choose!11253 thiss!24550 rules!3447 lt!694318 (_1!11031 lt!694302)))))

(assert (=> d!545059 (rulesInvariant!2823 thiss!24550 rules!3447)))

(assert (=> d!545059 (= (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!573 thiss!24550 rules!3447 lt!694318 (_1!11031 lt!694302)) lt!694688)))

(declare-fun b!1785186 () Bool)

(declare-fun res!804948 () Bool)

(assert (=> b!1785186 (=> (not res!804948) (not e!1142441))))

(assert (=> b!1785186 (= res!804948 (matchR!2326 (regex!3525 (get!6053 (getRuleFromTag!573 thiss!24550 rules!3447 (tag!3925 (rule!5609 (_1!11031 lt!694302)))))) (list!7999 (charsOf!2174 (_1!11031 lt!694302)))))))

(declare-fun b!1785187 () Bool)

(assert (=> b!1785187 (= e!1142441 (= (rule!5609 (_1!11031 lt!694302)) (get!6053 (getRuleFromTag!573 thiss!24550 rules!3447 (tag!3925 (rule!5609 (_1!11031 lt!694302)))))))))

(assert (= (and d!545059 res!804947) b!1785186))

(assert (= (and b!1785186 res!804948) b!1785187))

(assert (=> d!545059 m!2207535))

(assert (=> d!545059 m!2207535))

(declare-fun m!2208567 () Bool)

(assert (=> d!545059 m!2208567))

(declare-fun m!2208569 () Bool)

(assert (=> d!545059 m!2208569))

(assert (=> d!545059 m!2207417))

(assert (=> b!1785186 m!2207535))

(declare-fun m!2208571 () Bool)

(assert (=> b!1785186 m!2208571))

(assert (=> b!1785186 m!2207409))

(assert (=> b!1785186 m!2207411))

(assert (=> b!1785186 m!2207411))

(declare-fun m!2208573 () Bool)

(assert (=> b!1785186 m!2208573))

(assert (=> b!1785186 m!2207409))

(assert (=> b!1785186 m!2207535))

(assert (=> b!1785187 m!2207535))

(assert (=> b!1785187 m!2207535))

(assert (=> b!1785187 m!2208571))

(assert (=> b!1784378 d!545059))

(declare-fun e!1142443 () Bool)

(declare-fun lt!694689 () List!19739)

(declare-fun b!1785191 () Bool)

(assert (=> b!1785191 (= e!1142443 (or (not (= suffix!1421 Nil!19669)) (= lt!694689 lt!694317)))))

(declare-fun b!1785190 () Bool)

(declare-fun res!804949 () Bool)

(assert (=> b!1785190 (=> (not res!804949) (not e!1142443))))

(assert (=> b!1785190 (= res!804949 (= (size!15625 lt!694689) (+ (size!15625 lt!694317) (size!15625 suffix!1421))))))

(declare-fun d!545061 () Bool)

(assert (=> d!545061 e!1142443))

(declare-fun res!804950 () Bool)

(assert (=> d!545061 (=> (not res!804950) (not e!1142443))))

(assert (=> d!545061 (= res!804950 (= (content!2867 lt!694689) ((_ map or) (content!2867 lt!694317) (content!2867 suffix!1421))))))

(declare-fun e!1142442 () List!19739)

(assert (=> d!545061 (= lt!694689 e!1142442)))

(declare-fun c!290359 () Bool)

(assert (=> d!545061 (= c!290359 ((_ is Nil!19669) lt!694317))))

(assert (=> d!545061 (= (++!5349 lt!694317 suffix!1421) lt!694689)))

(declare-fun b!1785189 () Bool)

(assert (=> b!1785189 (= e!1142442 (Cons!19669 (h!25070 lt!694317) (++!5349 (t!166926 lt!694317) suffix!1421)))))

(declare-fun b!1785188 () Bool)

(assert (=> b!1785188 (= e!1142442 suffix!1421)))

(assert (= (and d!545061 c!290359) b!1785188))

(assert (= (and d!545061 (not c!290359)) b!1785189))

(assert (= (and d!545061 res!804950) b!1785190))

(assert (= (and b!1785190 res!804949) b!1785191))

(declare-fun m!2208575 () Bool)

(assert (=> b!1785190 m!2208575))

(assert (=> b!1785190 m!2207859))

(declare-fun m!2208577 () Bool)

(assert (=> b!1785190 m!2208577))

(declare-fun m!2208579 () Bool)

(assert (=> d!545061 m!2208579))

(assert (=> d!545061 m!2207903))

(declare-fun m!2208581 () Bool)

(assert (=> d!545061 m!2208581))

(declare-fun m!2208583 () Bool)

(assert (=> b!1785189 m!2208583))

(assert (=> b!1784378 d!545061))

(declare-fun d!545063 () Bool)

(declare-fun e!1142444 () Bool)

(assert (=> d!545063 e!1142444))

(declare-fun res!804954 () Bool)

(assert (=> d!545063 (=> res!804954 e!1142444)))

(declare-fun lt!694690 () Bool)

(assert (=> d!545063 (= res!804954 (not lt!694690))))

(declare-fun e!1142446 () Bool)

(assert (=> d!545063 (= lt!694690 e!1142446)))

(declare-fun res!804953 () Bool)

(assert (=> d!545063 (=> res!804953 e!1142446)))

(assert (=> d!545063 (= res!804953 ((_ is Nil!19669) lt!694304))))

(assert (=> d!545063 (= (isPrefix!1765 lt!694304 (++!5349 lt!694304 (_2!11031 lt!694302))) lt!694690)))

(declare-fun b!1785193 () Bool)

(declare-fun res!804951 () Bool)

(declare-fun e!1142445 () Bool)

(assert (=> b!1785193 (=> (not res!804951) (not e!1142445))))

(assert (=> b!1785193 (= res!804951 (= (head!4176 lt!694304) (head!4176 (++!5349 lt!694304 (_2!11031 lt!694302)))))))

(declare-fun b!1785194 () Bool)

(assert (=> b!1785194 (= e!1142445 (isPrefix!1765 (tail!2671 lt!694304) (tail!2671 (++!5349 lt!694304 (_2!11031 lt!694302)))))))

(declare-fun b!1785192 () Bool)

(assert (=> b!1785192 (= e!1142446 e!1142445)))

(declare-fun res!804952 () Bool)

(assert (=> b!1785192 (=> (not res!804952) (not e!1142445))))

(assert (=> b!1785192 (= res!804952 (not ((_ is Nil!19669) (++!5349 lt!694304 (_2!11031 lt!694302)))))))

(declare-fun b!1785195 () Bool)

(assert (=> b!1785195 (= e!1142444 (>= (size!15625 (++!5349 lt!694304 (_2!11031 lt!694302))) (size!15625 lt!694304)))))

(assert (= (and d!545063 (not res!804953)) b!1785192))

(assert (= (and b!1785192 res!804952) b!1785193))

(assert (= (and b!1785193 res!804951) b!1785194))

(assert (= (and d!545063 (not res!804954)) b!1785195))

(assert (=> b!1785193 m!2207681))

(assert (=> b!1785193 m!2207543))

(declare-fun m!2208585 () Bool)

(assert (=> b!1785193 m!2208585))

(assert (=> b!1785194 m!2207685))

(assert (=> b!1785194 m!2207543))

(declare-fun m!2208587 () Bool)

(assert (=> b!1785194 m!2208587))

(assert (=> b!1785194 m!2207685))

(assert (=> b!1785194 m!2208587))

(declare-fun m!2208589 () Bool)

(assert (=> b!1785194 m!2208589))

(assert (=> b!1785195 m!2207543))

(declare-fun m!2208591 () Bool)

(assert (=> b!1785195 m!2208591))

(assert (=> b!1785195 m!2207521))

(assert (=> b!1784378 d!545063))

(declare-fun d!545065 () Bool)

(declare-fun e!1142447 () Bool)

(assert (=> d!545065 e!1142447))

(declare-fun res!804958 () Bool)

(assert (=> d!545065 (=> res!804958 e!1142447)))

(declare-fun lt!694691 () Bool)

(assert (=> d!545065 (= res!804958 (not lt!694691))))

(declare-fun e!1142449 () Bool)

(assert (=> d!545065 (= lt!694691 e!1142449)))

(declare-fun res!804957 () Bool)

(assert (=> d!545065 (=> res!804957 e!1142449)))

(assert (=> d!545065 (= res!804957 ((_ is Nil!19669) lt!694304))))

(assert (=> d!545065 (= (isPrefix!1765 lt!694304 lt!694318) lt!694691)))

(declare-fun b!1785197 () Bool)

(declare-fun res!804955 () Bool)

(declare-fun e!1142448 () Bool)

(assert (=> b!1785197 (=> (not res!804955) (not e!1142448))))

(assert (=> b!1785197 (= res!804955 (= (head!4176 lt!694304) (head!4176 lt!694318)))))

(declare-fun b!1785198 () Bool)

(assert (=> b!1785198 (= e!1142448 (isPrefix!1765 (tail!2671 lt!694304) (tail!2671 lt!694318)))))

(declare-fun b!1785196 () Bool)

(assert (=> b!1785196 (= e!1142449 e!1142448)))

(declare-fun res!804956 () Bool)

(assert (=> b!1785196 (=> (not res!804956) (not e!1142448))))

(assert (=> b!1785196 (= res!804956 (not ((_ is Nil!19669) lt!694318)))))

(declare-fun b!1785199 () Bool)

(assert (=> b!1785199 (= e!1142447 (>= (size!15625 lt!694318) (size!15625 lt!694304)))))

(assert (= (and d!545065 (not res!804957)) b!1785196))

(assert (= (and b!1785196 res!804956) b!1785197))

(assert (= (and b!1785197 res!804955) b!1785198))

(assert (= (and d!545065 (not res!804958)) b!1785199))

(assert (=> b!1785197 m!2207681))

(assert (=> b!1785197 m!2207827))

(assert (=> b!1785198 m!2207685))

(assert (=> b!1785198 m!2207831))

(assert (=> b!1785198 m!2207685))

(assert (=> b!1785198 m!2207831))

(declare-fun m!2208593 () Bool)

(assert (=> b!1785198 m!2208593))

(assert (=> b!1785199 m!2207835))

(assert (=> b!1785199 m!2207521))

(assert (=> b!1784378 d!545065))

(declare-fun b!1785212 () Bool)

(declare-fun e!1142460 () Bool)

(declare-fun lt!694700 () Option!4073)

(assert (=> b!1785212 (= e!1142460 (= (tag!3925 (get!6053 lt!694700)) (tag!3925 (rule!5609 (_1!11031 lt!694302)))))))

(declare-fun b!1785213 () Bool)

(declare-fun e!1142461 () Option!4073)

(assert (=> b!1785213 (= e!1142461 None!4072)))

(declare-fun b!1785214 () Bool)

(declare-fun lt!694698 () Unit!34003)

(declare-fun lt!694699 () Unit!34003)

(assert (=> b!1785214 (= lt!694698 lt!694699)))

(assert (=> b!1785214 (rulesInvariant!2823 thiss!24550 (t!166927 rules!3447))))

(declare-fun lemmaInvariantOnRulesThenOnTail!224 (LexerInterface!3154 Rule!6850 List!19740) Unit!34003)

(assert (=> b!1785214 (= lt!694699 (lemmaInvariantOnRulesThenOnTail!224 thiss!24550 (h!25071 rules!3447) (t!166927 rules!3447)))))

(assert (=> b!1785214 (= e!1142461 (getRuleFromTag!573 thiss!24550 (t!166927 rules!3447) (tag!3925 (rule!5609 (_1!11031 lt!694302)))))))

(declare-fun b!1785215 () Bool)

(declare-fun e!1142459 () Option!4073)

(assert (=> b!1785215 (= e!1142459 (Some!4072 (h!25071 rules!3447)))))

(declare-fun b!1785217 () Bool)

(assert (=> b!1785217 (= e!1142459 e!1142461)))

(declare-fun c!290365 () Bool)

(assert (=> b!1785217 (= c!290365 (and ((_ is Cons!19670) rules!3447) (not (= (tag!3925 (h!25071 rules!3447)) (tag!3925 (rule!5609 (_1!11031 lt!694302)))))))))

(declare-fun b!1785216 () Bool)

(declare-fun e!1142458 () Bool)

(assert (=> b!1785216 (= e!1142458 e!1142460)))

(declare-fun res!804963 () Bool)

(assert (=> b!1785216 (=> (not res!804963) (not e!1142460))))

(assert (=> b!1785216 (= res!804963 (contains!3557 rules!3447 (get!6053 lt!694700)))))

(declare-fun d!545067 () Bool)

(assert (=> d!545067 e!1142458))

(declare-fun res!804964 () Bool)

(assert (=> d!545067 (=> res!804964 e!1142458)))

(declare-fun isEmpty!12435 (Option!4073) Bool)

(assert (=> d!545067 (= res!804964 (isEmpty!12435 lt!694700))))

(assert (=> d!545067 (= lt!694700 e!1142459)))

(declare-fun c!290364 () Bool)

(assert (=> d!545067 (= c!290364 (and ((_ is Cons!19670) rules!3447) (= (tag!3925 (h!25071 rules!3447)) (tag!3925 (rule!5609 (_1!11031 lt!694302))))))))

(assert (=> d!545067 (rulesInvariant!2823 thiss!24550 rules!3447)))

(assert (=> d!545067 (= (getRuleFromTag!573 thiss!24550 rules!3447 (tag!3925 (rule!5609 (_1!11031 lt!694302)))) lt!694700)))

(assert (= (and d!545067 c!290364) b!1785215))

(assert (= (and d!545067 (not c!290364)) b!1785217))

(assert (= (and b!1785217 c!290365) b!1785214))

(assert (= (and b!1785217 (not c!290365)) b!1785213))

(assert (= (and d!545067 (not res!804964)) b!1785216))

(assert (= (and b!1785216 res!804963) b!1785212))

(declare-fun m!2208595 () Bool)

(assert (=> b!1785212 m!2208595))

(declare-fun m!2208597 () Bool)

(assert (=> b!1785214 m!2208597))

(declare-fun m!2208599 () Bool)

(assert (=> b!1785214 m!2208599))

(declare-fun m!2208601 () Bool)

(assert (=> b!1785214 m!2208601))

(assert (=> b!1785216 m!2208595))

(assert (=> b!1785216 m!2208595))

(declare-fun m!2208603 () Bool)

(assert (=> b!1785216 m!2208603))

(declare-fun m!2208605 () Bool)

(assert (=> d!545067 m!2208605))

(assert (=> d!545067 m!2207417))

(assert (=> b!1784378 d!545067))

(assert (=> b!1784378 d!544847))

(declare-fun d!545069 () Bool)

(assert (=> d!545069 (= (isDefined!3415 lt!694314) (not (isEmpty!12435 lt!694314)))))

(declare-fun bs!405397 () Bool)

(assert (= bs!405397 d!545069))

(declare-fun m!2208607 () Bool)

(assert (=> bs!405397 m!2208607))

(assert (=> b!1784378 d!545069))

(declare-fun d!545071 () Bool)

(assert (=> d!545071 (= (get!6052 lt!694292) (v!25566 lt!694292))))

(assert (=> b!1784378 d!545071))

(declare-fun e!1142467 () Bool)

(declare-fun tp!504977 () Bool)

(declare-fun tp!504976 () Bool)

(declare-fun b!1785226 () Bool)

(assert (=> b!1785226 (= e!1142467 (and (inv!25610 (left!15767 (c!290217 (dynLambda!9686 (toChars!4911 (transformation!3525 (rule!5609 (_1!11031 lt!694302)))) (value!110135 (_1!11031 lt!694302)))))) tp!504976 (inv!25610 (right!16097 (c!290217 (dynLambda!9686 (toChars!4911 (transformation!3525 (rule!5609 (_1!11031 lt!694302)))) (value!110135 (_1!11031 lt!694302)))))) tp!504977))))

(declare-fun b!1785228 () Bool)

(declare-fun e!1142466 () Bool)

(declare-fun tp!504978 () Bool)

(assert (=> b!1785228 (= e!1142466 tp!504978)))

(declare-fun b!1785227 () Bool)

(declare-fun inv!25616 (IArray!13091) Bool)

(assert (=> b!1785227 (= e!1142467 (and (inv!25616 (xs!9419 (c!290217 (dynLambda!9686 (toChars!4911 (transformation!3525 (rule!5609 (_1!11031 lt!694302)))) (value!110135 (_1!11031 lt!694302)))))) e!1142466))))

(assert (=> b!1784427 (= tp!504911 (and (inv!25610 (c!290217 (dynLambda!9686 (toChars!4911 (transformation!3525 (rule!5609 (_1!11031 lt!694302)))) (value!110135 (_1!11031 lt!694302))))) e!1142467))))

(assert (= (and b!1784427 ((_ is Node!6543) (c!290217 (dynLambda!9686 (toChars!4911 (transformation!3525 (rule!5609 (_1!11031 lt!694302)))) (value!110135 (_1!11031 lt!694302)))))) b!1785226))

(assert (= b!1785227 b!1785228))

(assert (= (and b!1784427 ((_ is Leaf!9526) (c!290217 (dynLambda!9686 (toChars!4911 (transformation!3525 (rule!5609 (_1!11031 lt!694302)))) (value!110135 (_1!11031 lt!694302)))))) b!1785227))

(declare-fun m!2208609 () Bool)

(assert (=> b!1785226 m!2208609))

(declare-fun m!2208611 () Bool)

(assert (=> b!1785226 m!2208611))

(declare-fun m!2208613 () Bool)

(assert (=> b!1785227 m!2208613))

(assert (=> b!1784427 m!2207385))

(declare-fun b!1785240 () Bool)

(declare-fun e!1142470 () Bool)

(declare-fun tp!504992 () Bool)

(declare-fun tp!504990 () Bool)

(assert (=> b!1785240 (= e!1142470 (and tp!504992 tp!504990))))

(declare-fun b!1785242 () Bool)

(declare-fun tp!504989 () Bool)

(declare-fun tp!504993 () Bool)

(assert (=> b!1785242 (= e!1142470 (and tp!504989 tp!504993))))

(declare-fun b!1785241 () Bool)

(declare-fun tp!504991 () Bool)

(assert (=> b!1785241 (= e!1142470 tp!504991)))

(declare-fun b!1785239 () Bool)

(assert (=> b!1785239 (= e!1142470 tp_is_empty!7949)))

(assert (=> b!1784393 (= tp!504908 e!1142470)))

(assert (= (and b!1784393 ((_ is ElementMatch!4853) (regex!3525 rule!422))) b!1785239))

(assert (= (and b!1784393 ((_ is Concat!8469) (regex!3525 rule!422))) b!1785240))

(assert (= (and b!1784393 ((_ is Star!4853) (regex!3525 rule!422))) b!1785241))

(assert (= (and b!1784393 ((_ is Union!4853) (regex!3525 rule!422))) b!1785242))

(declare-fun b!1785247 () Bool)

(declare-fun e!1142473 () Bool)

(declare-fun tp!504996 () Bool)

(assert (=> b!1785247 (= e!1142473 (and tp_is_empty!7949 tp!504996))))

(assert (=> b!1784397 (= tp!504905 e!1142473)))

(assert (= (and b!1784397 ((_ is Cons!19669) (originalCharacters!4339 token!523))) b!1785247))

(declare-fun b!1785249 () Bool)

(declare-fun e!1142474 () Bool)

(declare-fun tp!505000 () Bool)

(declare-fun tp!504998 () Bool)

(assert (=> b!1785249 (= e!1142474 (and tp!505000 tp!504998))))

(declare-fun b!1785251 () Bool)

(declare-fun tp!504997 () Bool)

(declare-fun tp!505001 () Bool)

(assert (=> b!1785251 (= e!1142474 (and tp!504997 tp!505001))))

(declare-fun b!1785250 () Bool)

(declare-fun tp!504999 () Bool)

(assert (=> b!1785250 (= e!1142474 tp!504999)))

(declare-fun b!1785248 () Bool)

(assert (=> b!1785248 (= e!1142474 tp_is_empty!7949)))

(assert (=> b!1784380 (= tp!504906 e!1142474)))

(assert (= (and b!1784380 ((_ is ElementMatch!4853) (regex!3525 (rule!5609 token!523)))) b!1785248))

(assert (= (and b!1784380 ((_ is Concat!8469) (regex!3525 (rule!5609 token!523)))) b!1785249))

(assert (= (and b!1784380 ((_ is Star!4853) (regex!3525 (rule!5609 token!523)))) b!1785250))

(assert (= (and b!1784380 ((_ is Union!4853) (regex!3525 (rule!5609 token!523)))) b!1785251))

(declare-fun b!1785253 () Bool)

(declare-fun e!1142475 () Bool)

(declare-fun tp!505005 () Bool)

(declare-fun tp!505003 () Bool)

(assert (=> b!1785253 (= e!1142475 (and tp!505005 tp!505003))))

(declare-fun b!1785255 () Bool)

(declare-fun tp!505002 () Bool)

(declare-fun tp!505006 () Bool)

(assert (=> b!1785255 (= e!1142475 (and tp!505002 tp!505006))))

(declare-fun b!1785254 () Bool)

(declare-fun tp!505004 () Bool)

(assert (=> b!1785254 (= e!1142475 tp!505004)))

(declare-fun b!1785252 () Bool)

(assert (=> b!1785252 (= e!1142475 tp_is_empty!7949)))

(assert (=> b!1784390 (= tp!504907 e!1142475)))

(assert (= (and b!1784390 ((_ is ElementMatch!4853) (regex!3525 (h!25071 rules!3447)))) b!1785252))

(assert (= (and b!1784390 ((_ is Concat!8469) (regex!3525 (h!25071 rules!3447)))) b!1785253))

(assert (= (and b!1784390 ((_ is Star!4853) (regex!3525 (h!25071 rules!3447)))) b!1785254))

(assert (= (and b!1784390 ((_ is Union!4853) (regex!3525 (h!25071 rules!3447)))) b!1785255))

(declare-fun b!1785266 () Bool)

(declare-fun b_free!49583 () Bool)

(declare-fun b_next!50287 () Bool)

(assert (=> b!1785266 (= b_free!49583 (not b_next!50287))))

(declare-fun tb!108659 () Bool)

(declare-fun t!166991 () Bool)

(assert (=> (and b!1785266 (= (toValue!5052 (transformation!3525 (h!25071 (t!166927 rules!3447)))) (toValue!5052 (transformation!3525 (rule!5609 (_1!11031 lt!694302))))) t!166991) tb!108659))

(declare-fun result!130738 () Bool)

(assert (= result!130738 result!130690))

(assert (=> d!544917 t!166991))

(declare-fun t!166993 () Bool)

(declare-fun tb!108661 () Bool)

(assert (=> (and b!1785266 (= (toValue!5052 (transformation!3525 (h!25071 (t!166927 rules!3447)))) (toValue!5052 (transformation!3525 (rule!5609 (_1!11031 lt!694302))))) t!166993) tb!108661))

(declare-fun result!130740 () Bool)

(assert (= result!130740 result!130666))

(assert (=> d!544877 t!166993))

(assert (=> d!544769 t!166993))

(declare-fun t!166995 () Bool)

(declare-fun tb!108663 () Bool)

(assert (=> (and b!1785266 (= (toValue!5052 (transformation!3525 (h!25071 (t!166927 rules!3447)))) (toValue!5052 (transformation!3525 (rule!5609 (_1!11031 lt!694302))))) t!166995) tb!108663))

(declare-fun result!130742 () Bool)

(assert (= result!130742 result!130652))

(assert (=> b!1784411 t!166995))

(assert (=> d!544809 t!166995))

(assert (=> d!544917 t!166995))

(assert (=> d!544921 t!166995))

(declare-fun b_and!137289 () Bool)

(declare-fun tp!505017 () Bool)

(assert (=> b!1785266 (= tp!505017 (and (=> t!166995 result!130742) (=> t!166991 result!130738) (=> t!166993 result!130740) b_and!137289))))

(declare-fun b_free!49585 () Bool)

(declare-fun b_next!50289 () Bool)

(assert (=> b!1785266 (= b_free!49585 (not b_next!50289))))

(declare-fun t!166997 () Bool)

(declare-fun tb!108665 () Bool)

(assert (=> (and b!1785266 (= (toChars!4911 (transformation!3525 (h!25071 (t!166927 rules!3447)))) (toChars!4911 (transformation!3525 (rule!5609 (_1!11031 lt!694302))))) t!166997) tb!108665))

(declare-fun result!130744 () Bool)

(assert (= result!130744 result!130646))

(assert (=> d!544809 t!166997))

(declare-fun t!166999 () Bool)

(declare-fun tb!108667 () Bool)

(assert (=> (and b!1785266 (= (toChars!4911 (transformation!3525 (h!25071 (t!166927 rules!3447)))) (toChars!4911 (transformation!3525 (rule!5609 (_1!11031 lt!694302))))) t!166999) tb!108667))

(declare-fun result!130746 () Bool)

(assert (= result!130746 result!130660))

(assert (=> d!544769 t!166999))

(declare-fun t!167001 () Bool)

(declare-fun tb!108669 () Bool)

(assert (=> (and b!1785266 (= (toChars!4911 (transformation!3525 (h!25071 (t!166927 rules!3447)))) (toChars!4911 (transformation!3525 (rule!5609 (_1!11031 lt!694302))))) t!167001) tb!108669))

(declare-fun result!130748 () Bool)

(assert (= result!130748 result!130638))

(assert (=> d!544847 t!167001))

(assert (=> b!1784411 t!166997))

(declare-fun tb!108671 () Bool)

(declare-fun t!167003 () Bool)

(assert (=> (and b!1785266 (= (toChars!4911 (transformation!3525 (h!25071 (t!166927 rules!3447)))) (toChars!4911 (transformation!3525 (rule!5609 token!523)))) t!167003) tb!108671))

(declare-fun result!130750 () Bool)

(assert (= result!130750 result!130684))

(assert (=> b!1784686 t!167003))

(assert (=> b!1784403 t!167001))

(assert (=> d!544867 t!167003))

(declare-fun b_and!137291 () Bool)

(declare-fun tp!505015 () Bool)

(assert (=> b!1785266 (= tp!505015 (and (=> t!166999 result!130746) (=> t!167001 result!130748) (=> t!166997 result!130744) (=> t!167003 result!130750) b_and!137291))))

(declare-fun e!1142485 () Bool)

(assert (=> b!1785266 (= e!1142485 (and tp!505017 tp!505015))))

(declare-fun b!1785265 () Bool)

(declare-fun e!1142487 () Bool)

(declare-fun tp!505018 () Bool)

(assert (=> b!1785265 (= e!1142487 (and tp!505018 (inv!25603 (tag!3925 (h!25071 (t!166927 rules!3447)))) (inv!25608 (transformation!3525 (h!25071 (t!166927 rules!3447)))) e!1142485))))

(declare-fun b!1785264 () Bool)

(declare-fun e!1142486 () Bool)

(declare-fun tp!505016 () Bool)

(assert (=> b!1785264 (= e!1142486 (and e!1142487 tp!505016))))

(assert (=> b!1784406 (= tp!504899 e!1142486)))

(assert (= b!1785265 b!1785266))

(assert (= b!1785264 b!1785265))

(assert (= (and b!1784406 ((_ is Cons!19670) (t!166927 rules!3447))) b!1785264))

(declare-fun m!2208615 () Bool)

(assert (=> b!1785265 m!2208615))

(declare-fun m!2208617 () Bool)

(assert (=> b!1785265 m!2208617))

(declare-fun tp!505019 () Bool)

(declare-fun e!1142489 () Bool)

(declare-fun tp!505020 () Bool)

(declare-fun b!1785267 () Bool)

(assert (=> b!1785267 (= e!1142489 (and (inv!25610 (left!15767 (c!290217 (dynLambda!9686 (toChars!4911 (transformation!3525 (rule!5609 (_1!11031 lt!694302)))) (dynLambda!9687 (toValue!5052 (transformation!3525 (rule!5609 (_1!11031 lt!694302)))) lt!694284))))) tp!505019 (inv!25610 (right!16097 (c!290217 (dynLambda!9686 (toChars!4911 (transformation!3525 (rule!5609 (_1!11031 lt!694302)))) (dynLambda!9687 (toValue!5052 (transformation!3525 (rule!5609 (_1!11031 lt!694302)))) lt!694284))))) tp!505020))))

(declare-fun b!1785269 () Bool)

(declare-fun e!1142488 () Bool)

(declare-fun tp!505021 () Bool)

(assert (=> b!1785269 (= e!1142488 tp!505021)))

(declare-fun b!1785268 () Bool)

(assert (=> b!1785268 (= e!1142489 (and (inv!25616 (xs!9419 (c!290217 (dynLambda!9686 (toChars!4911 (transformation!3525 (rule!5609 (_1!11031 lt!694302)))) (dynLambda!9687 (toValue!5052 (transformation!3525 (rule!5609 (_1!11031 lt!694302)))) lt!694284))))) e!1142488))))

(assert (=> b!1784428 (= tp!504912 (and (inv!25610 (c!290217 (dynLambda!9686 (toChars!4911 (transformation!3525 (rule!5609 (_1!11031 lt!694302)))) (dynLambda!9687 (toValue!5052 (transformation!3525 (rule!5609 (_1!11031 lt!694302)))) lt!694284)))) e!1142489))))

(assert (= (and b!1784428 ((_ is Node!6543) (c!290217 (dynLambda!9686 (toChars!4911 (transformation!3525 (rule!5609 (_1!11031 lt!694302)))) (dynLambda!9687 (toValue!5052 (transformation!3525 (rule!5609 (_1!11031 lt!694302)))) lt!694284))))) b!1785267))

(assert (= b!1785268 b!1785269))

(assert (= (and b!1784428 ((_ is Leaf!9526) (c!290217 (dynLambda!9686 (toChars!4911 (transformation!3525 (rule!5609 (_1!11031 lt!694302)))) (dynLambda!9687 (toValue!5052 (transformation!3525 (rule!5609 (_1!11031 lt!694302)))) lt!694284))))) b!1785268))

(declare-fun m!2208619 () Bool)

(assert (=> b!1785267 m!2208619))

(declare-fun m!2208621 () Bool)

(assert (=> b!1785267 m!2208621))

(declare-fun m!2208623 () Bool)

(assert (=> b!1785268 m!2208623))

(assert (=> b!1784428 m!2207389))

(declare-fun b!1785270 () Bool)

(declare-fun e!1142490 () Bool)

(declare-fun tp!505022 () Bool)

(assert (=> b!1785270 (= e!1142490 (and tp_is_empty!7949 tp!505022))))

(assert (=> b!1784410 (= tp!504900 e!1142490)))

(assert (= (and b!1784410 ((_ is Cons!19669) (t!166926 suffix!1421))) b!1785270))

(declare-fun b_lambda!58567 () Bool)

(assert (= b_lambda!58531 (or (and b!1784399 b_free!49569 (= (toChars!4911 (transformation!3525 (h!25071 rules!3447))) (toChars!4911 (transformation!3525 (rule!5609 token!523))))) (and b!1784371 b_free!49573) (and b!1784387 b_free!49577 (= (toChars!4911 (transformation!3525 rule!422)) (toChars!4911 (transformation!3525 (rule!5609 token!523))))) (and b!1785266 b_free!49585 (= (toChars!4911 (transformation!3525 (h!25071 (t!166927 rules!3447)))) (toChars!4911 (transformation!3525 (rule!5609 token!523))))) b_lambda!58567)))

(declare-fun b_lambda!58569 () Bool)

(assert (= b_lambda!58509 (or (and b!1784399 b_free!49569 (= (toChars!4911 (transformation!3525 (h!25071 rules!3447))) (toChars!4911 (transformation!3525 (rule!5609 (_1!11031 lt!694302)))))) (and b!1784371 b_free!49573 (= (toChars!4911 (transformation!3525 (rule!5609 token!523))) (toChars!4911 (transformation!3525 (rule!5609 (_1!11031 lt!694302)))))) (and b!1784387 b_free!49577 (= (toChars!4911 (transformation!3525 rule!422)) (toChars!4911 (transformation!3525 (rule!5609 (_1!11031 lt!694302)))))) (and b!1785266 b_free!49585 (= (toChars!4911 (transformation!3525 (h!25071 (t!166927 rules!3447)))) (toChars!4911 (transformation!3525 (rule!5609 (_1!11031 lt!694302)))))) b_lambda!58569)))

(declare-fun b_lambda!58571 () Bool)

(assert (= b_lambda!58511 (or (and b!1784399 b_free!49567 (= (toValue!5052 (transformation!3525 (h!25071 rules!3447))) (toValue!5052 (transformation!3525 (rule!5609 (_1!11031 lt!694302)))))) (and b!1784371 b_free!49571 (= (toValue!5052 (transformation!3525 (rule!5609 token!523))) (toValue!5052 (transformation!3525 (rule!5609 (_1!11031 lt!694302)))))) (and b!1784387 b_free!49575 (= (toValue!5052 (transformation!3525 rule!422)) (toValue!5052 (transformation!3525 (rule!5609 (_1!11031 lt!694302)))))) (and b!1785266 b_free!49583 (= (toValue!5052 (transformation!3525 (h!25071 (t!166927 rules!3447)))) (toValue!5052 (transformation!3525 (rule!5609 (_1!11031 lt!694302)))))) b_lambda!58571)))

(declare-fun b_lambda!58573 () Bool)

(assert (= b_lambda!58523 (or (and b!1784399 b_free!49569 (= (toChars!4911 (transformation!3525 (h!25071 rules!3447))) (toChars!4911 (transformation!3525 (rule!5609 token!523))))) (and b!1784371 b_free!49573) (and b!1784387 b_free!49577 (= (toChars!4911 (transformation!3525 rule!422)) (toChars!4911 (transformation!3525 (rule!5609 token!523))))) (and b!1785266 b_free!49585 (= (toChars!4911 (transformation!3525 (h!25071 (t!166927 rules!3447)))) (toChars!4911 (transformation!3525 (rule!5609 token!523))))) b_lambda!58573)))

(declare-fun b_lambda!58575 () Bool)

(assert (= b_lambda!58507 (or (and b!1784399 b_free!49569 (= (toChars!4911 (transformation!3525 (h!25071 rules!3447))) (toChars!4911 (transformation!3525 (rule!5609 (_1!11031 lt!694302)))))) (and b!1784371 b_free!49573 (= (toChars!4911 (transformation!3525 (rule!5609 token!523))) (toChars!4911 (transformation!3525 (rule!5609 (_1!11031 lt!694302)))))) (and b!1784387 b_free!49577 (= (toChars!4911 (transformation!3525 rule!422)) (toChars!4911 (transformation!3525 (rule!5609 (_1!11031 lt!694302)))))) (and b!1785266 b_free!49585 (= (toChars!4911 (transformation!3525 (h!25071 (t!166927 rules!3447)))) (toChars!4911 (transformation!3525 (rule!5609 (_1!11031 lt!694302)))))) b_lambda!58575)))

(check-sat (not b!1785171) b_and!137211 (not b_lambda!58529) (not d!544807) (not b_lambda!58527) (not b!1785253) (not tb!108597) (not d!544919) (not b_lambda!58567) (not d!544841) (not b!1784680) (not b!1785198) (not b_lambda!58569) (not d!544835) (not d!544879) (not b!1784876) (not d!544801) (not d!544855) b_and!137233 (not b!1785240) (not b!1784607) (not b!1785181) (not b!1784823) (not d!544755) (not d!544901) (not b!1784742) (not b_next!50281) (not b_next!50273) (not b!1784803) (not b!1784954) (not b!1784880) (not b!1785195) (not b!1785267) (not d!544809) (not d!545053) (not b!1784668) (not d!544769) (not bm!111348) b_and!137209 (not b!1784608) (not d!544865) (not b!1784780) (not d!544917) (not b!1784895) (not b!1784775) (not b!1785212) (not b!1785227) (not b!1784888) (not b!1784717) (not d!544763) (not b!1784542) (not b!1785265) (not d!544937) (not d!544899) (not b!1784956) (not b!1784749) (not bm!111343) (not d!545051) (not b!1784881) (not b!1785179) (not d!544825) tp_is_empty!7949 (not b!1785167) (not b!1784623) (not b!1785199) (not b!1784736) (not b!1784739) (not b!1784741) (not b!1784874) (not b!1784428) (not b!1785228) (not d!544907) (not b!1784944) (not b!1785165) (not d!544873) (not b_lambda!58571) (not d!544831) (not b!1785189) (not d!545049) (not b!1784592) (not bm!111345) (not d!544861) (not d!544857) (not b!1785190) (not d!544793) (not b!1785187) (not d!544897) (not b!1784809) (not b_next!50287) (not b!1784621) (not d!544837) (not b!1785255) (not d!544765) (not b!1784784) (not b!1784890) (not b!1784884) (not d!544881) (not b!1784875) (not b_lambda!58525) (not b!1784665) (not d!544845) (not b!1785269) (not d!544775) (not b_lambda!58537) (not b!1785174) (not b!1785177) (not b!1784824) (not b!1784893) (not b!1784586) (not d!544833) (not b!1785176) (not d!544815) (not b!1784872) (not b!1785194) (not d!544745) (not d!544785) (not b!1784807) (not d!545059) (not b!1784943) (not d!544915) (not b!1784661) (not b!1784745) (not b!1785193) (not b!1785250) (not d!544933) (not b!1784955) (not b!1784719) (not b!1784894) (not d!544731) (not b!1785170) (not d!545061) (not b!1784781) (not d!544923) (not d!544895) (not b!1784602) (not b!1784598) (not b_lambda!58515) (not d!544779) b_and!137289 (not b!1785251) (not d!544843) (not b!1784947) (not b_next!50271) (not b!1784522) (not b!1784754) (not b_lambda!58573) (not d!544869) (not b!1784808) (not bm!111342) (not d!544773) (not b!1784804) (not b!1784540) (not d!544913) (not d!544929) (not b!1784877) (not b!1785270) (not d!544797) (not b!1784541) (not b!1785254) (not b!1784681) (not b!1784740) (not b_next!50275) (not d!544867) (not b!1784671) (not b_lambda!58517) (not d!544803) (not b!1785173) (not b!1785214) (not b!1784768) (not b!1785175) (not b!1785268) (not d!545055) (not b_lambda!58533) b_and!137231 (not b!1784755) (not b!1784604) b_and!137235 (not b_next!50277) b_and!137291 (not b!1784815) (not b!1784751) (not b!1785178) (not b!1784427) (not d!544789) (not d!544767) (not b!1784591) (not d!544839) (not b!1784686) (not tb!108627) (not b!1785166) (not bm!111357) (not b!1784579) (not b!1785264) (not b!1784777) (not tb!108621) (not b!1784879) (not d!545067) (not b!1784805) (not b_lambda!58535) (not b!1784896) (not b!1785242) (not b!1784517) (not b!1784878) (not b!1785247) (not d!545069) (not b!1784766) (not b_next!50279) (not b!1784897) (not d!544829) (not b!1784898) (not d!544777) (not b!1784614) (not b_lambda!58575) (not d!545057) (not b!1784593) (not b!1784718) (not b!1784595) (not b_next!50289) (not b!1784687) (not b!1784811) (not b!1785249) (not bm!111344) (not b!1785226) (not b!1784817) (not b!1785197) (not b!1785241) (not bm!111349) (not b!1784688) b_and!137207 (not d!544805) (not b!1784814) (not d!544863) (not b!1785216) (not b!1784765) (not d!544903) (not b!1784588) (not b!1784806) (not b!1785186) (not b_lambda!58539) (not b!1784582) (not b!1784771) (not b!1784946) (not tb!108603) (not d!544847))
(check-sat b_and!137211 b_and!137233 b_and!137209 (not b_next!50287) b_and!137289 (not b_next!50271) (not b_next!50275) (not b_next!50279) (not b_next!50281) (not b_next!50273) b_and!137291 b_and!137231 b_and!137235 (not b_next!50277) b_and!137207 (not b_next!50289))
