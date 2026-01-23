; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!299258 () Bool)

(assert start!299258)

(declare-fun b!3190390 () Bool)

(declare-fun b_free!84361 () Bool)

(declare-fun b_next!85065 () Bool)

(assert (=> b!3190390 (= b_free!84361 (not b_next!85065))))

(declare-fun tp!1008547 () Bool)

(declare-fun b_and!211371 () Bool)

(assert (=> b!3190390 (= tp!1008547 b_and!211371)))

(declare-fun b_free!84363 () Bool)

(declare-fun b_next!85067 () Bool)

(assert (=> b!3190390 (= b_free!84363 (not b_next!85067))))

(declare-fun tp!1008539 () Bool)

(declare-fun b_and!211373 () Bool)

(assert (=> b!3190390 (= tp!1008539 b_and!211373)))

(declare-fun b!3190378 () Bool)

(declare-fun b_free!84365 () Bool)

(declare-fun b_next!85069 () Bool)

(assert (=> b!3190378 (= b_free!84365 (not b_next!85069))))

(declare-fun tp!1008542 () Bool)

(declare-fun b_and!211375 () Bool)

(assert (=> b!3190378 (= tp!1008542 b_and!211375)))

(declare-fun b_free!84367 () Bool)

(declare-fun b_next!85071 () Bool)

(assert (=> b!3190378 (= b_free!84367 (not b_next!85071))))

(declare-fun tp!1008537 () Bool)

(declare-fun b_and!211377 () Bool)

(assert (=> b!3190378 (= tp!1008537 b_and!211377)))

(declare-fun b!3190396 () Bool)

(declare-fun b_free!84369 () Bool)

(declare-fun b_next!85073 () Bool)

(assert (=> b!3190396 (= b_free!84369 (not b_next!85073))))

(declare-fun tp!1008544 () Bool)

(declare-fun b_and!211379 () Bool)

(assert (=> b!3190396 (= tp!1008544 b_and!211379)))

(declare-fun b_free!84371 () Bool)

(declare-fun b_next!85075 () Bool)

(assert (=> b!3190396 (= b_free!84371 (not b_next!85075))))

(declare-fun tp!1008543 () Bool)

(declare-fun b_and!211381 () Bool)

(assert (=> b!3190396 (= tp!1008543 b_and!211381)))

(declare-fun e!1988355 () Bool)

(declare-fun b!3190374 () Bool)

(declare-datatypes ((C!20008 0))(
  ( (C!20009 (val!12052 Int)) )
))
(declare-datatypes ((Regex!9911 0))(
  ( (ElementMatch!9911 (c!535772 C!20008)) (Concat!15293 (regOne!20334 Regex!9911) (regTwo!20334 Regex!9911)) (EmptyExpr!9911) (Star!9911 (reg!10240 Regex!9911)) (EmptyLang!9911) (Union!9911 (regOne!20335 Regex!9911) (regTwo!20335 Regex!9911)) )
))
(declare-datatypes ((List!36000 0))(
  ( (Nil!35876) (Cons!35876 (h!41296 (_ BitVec 16)) (t!236147 List!36000)) )
))
(declare-datatypes ((TokenValue!5382 0))(
  ( (FloatLiteralValue!10764 (text!38119 List!36000)) (TokenValueExt!5381 (__x!22981 Int)) (Broken!26910 (value!167266 List!36000)) (Object!5505) (End!5382) (Def!5382) (Underscore!5382) (Match!5382) (Else!5382) (Error!5382) (Case!5382) (If!5382) (Extends!5382) (Abstract!5382) (Class!5382) (Val!5382) (DelimiterValue!10764 (del!5442 List!36000)) (KeywordValue!5388 (value!167267 List!36000)) (CommentValue!10764 (value!167268 List!36000)) (WhitespaceValue!10764 (value!167269 List!36000)) (IndentationValue!5382 (value!167270 List!36000)) (String!40243) (Int32!5382) (Broken!26911 (value!167271 List!36000)) (Boolean!5383) (Unit!50309) (OperatorValue!5385 (op!5442 List!36000)) (IdentifierValue!10764 (value!167272 List!36000)) (IdentifierValue!10765 (value!167273 List!36000)) (WhitespaceValue!10765 (value!167274 List!36000)) (True!10764) (False!10764) (Broken!26912 (value!167275 List!36000)) (Broken!26913 (value!167276 List!36000)) (True!10765) (RightBrace!5382) (RightBracket!5382) (Colon!5382) (Null!5382) (Comma!5382) (LeftBracket!5382) (False!10765) (LeftBrace!5382) (ImaginaryLiteralValue!5382 (text!38120 List!36000)) (StringLiteralValue!16146 (value!167277 List!36000)) (EOFValue!5382 (value!167278 List!36000)) (IdentValue!5382 (value!167279 List!36000)) (DelimiterValue!10765 (value!167280 List!36000)) (DedentValue!5382 (value!167281 List!36000)) (NewLineValue!5382 (value!167282 List!36000)) (IntegerValue!16146 (value!167283 (_ BitVec 32)) (text!38121 List!36000)) (IntegerValue!16147 (value!167284 Int) (text!38122 List!36000)) (Times!5382) (Or!5382) (Equal!5382) (Minus!5382) (Broken!26914 (value!167285 List!36000)) (And!5382) (Div!5382) (LessEqual!5382) (Mod!5382) (Concat!15294) (Not!5382) (Plus!5382) (SpaceValue!5382 (value!167286 List!36000)) (IntegerValue!16148 (value!167287 Int) (text!38123 List!36000)) (StringLiteralValue!16147 (text!38124 List!36000)) (FloatLiteralValue!10765 (text!38125 List!36000)) (BytesLiteralValue!5382 (value!167288 List!36000)) (CommentValue!10765 (value!167289 List!36000)) (StringLiteralValue!16148 (value!167290 List!36000)) (ErrorTokenValue!5382 (msg!5443 List!36000)) )
))
(declare-datatypes ((List!36001 0))(
  ( (Nil!35877) (Cons!35877 (h!41297 C!20008) (t!236148 List!36001)) )
))
(declare-datatypes ((IArray!21363 0))(
  ( (IArray!21364 (innerList!10739 List!36001)) )
))
(declare-datatypes ((Conc!10679 0))(
  ( (Node!10679 (left!27897 Conc!10679) (right!28227 Conc!10679) (csize!21588 Int) (cheight!10890 Int)) (Leaf!16866 (xs!13797 IArray!21363) (csize!21589 Int)) (Empty!10679) )
))
(declare-datatypes ((BalanceConc!20972 0))(
  ( (BalanceConc!20973 (c!535773 Conc!10679)) )
))
(declare-datatypes ((String!40244 0))(
  ( (String!40245 (value!167291 String)) )
))
(declare-datatypes ((TokenValueInjection!10192 0))(
  ( (TokenValueInjection!10193 (toValue!7216 Int) (toChars!7075 Int)) )
))
(declare-datatypes ((Rule!10104 0))(
  ( (Rule!10105 (regex!5152 Regex!9911) (tag!5670 String!40244) (isSeparator!5152 Bool) (transformation!5152 TokenValueInjection!10192)) )
))
(declare-datatypes ((Token!9670 0))(
  ( (Token!9671 (value!167292 TokenValue!5382) (rule!7584 Rule!10104) (size!27060 Int) (originalCharacters!5866 List!36001)) )
))
(declare-datatypes ((List!36002 0))(
  ( (Nil!35878) (Cons!35878 (h!41298 Token!9670) (t!236149 List!36002)) )
))
(declare-fun tokens!494 () List!36002)

(declare-fun e!1988358 () Bool)

(declare-fun tp!1008545 () Bool)

(declare-fun inv!48729 (Token!9670) Bool)

(assert (=> b!3190374 (= e!1988358 (and (inv!48729 (h!41298 tokens!494)) e!1988355 tp!1008545))))

(declare-fun b!3190375 () Bool)

(declare-fun res!1297526 () Bool)

(declare-fun e!1988339 () Bool)

(assert (=> b!3190375 (=> (not res!1297526) (not e!1988339))))

(declare-fun separatorToken!241 () Token!9670)

(declare-datatypes ((LexerInterface!4741 0))(
  ( (LexerInterfaceExt!4738 (__x!22982 Int)) (Lexer!4739) )
))
(declare-fun thiss!18206 () LexerInterface!4741)

(declare-datatypes ((List!36003 0))(
  ( (Nil!35879) (Cons!35879 (h!41299 Rule!10104) (t!236150 List!36003)) )
))
(declare-fun rules!2135 () List!36003)

(declare-fun rulesProduceIndividualToken!2233 (LexerInterface!4741 List!36003 Token!9670) Bool)

(assert (=> b!3190375 (= res!1297526 (rulesProduceIndividualToken!2233 thiss!18206 rules!2135 separatorToken!241))))

(declare-fun b!3190376 () Bool)

(declare-fun e!1988338 () Bool)

(declare-fun e!1988346 () Bool)

(assert (=> b!3190376 (= e!1988338 e!1988346)))

(declare-fun res!1297521 () Bool)

(assert (=> b!3190376 (=> res!1297521 e!1988346)))

(declare-fun lt!1074321 () List!36001)

(declare-fun lt!1074334 () List!36001)

(declare-fun lt!1074319 () List!36001)

(assert (=> b!3190376 (= res!1297521 (or (not (= lt!1074319 lt!1074334)) (not (= lt!1074321 lt!1074334))))))

(declare-fun list!12744 (BalanceConc!20972) List!36001)

(declare-fun charsOf!3174 (Token!9670) BalanceConc!20972)

(assert (=> b!3190376 (= lt!1074334 (list!12744 (charsOf!3174 (h!41298 tokens!494))))))

(declare-fun b!3190377 () Bool)

(declare-datatypes ((tuple2!35268 0))(
  ( (tuple2!35269 (_1!20768 List!36002) (_2!20768 List!36001)) )
))
(declare-fun e!1988349 () tuple2!35268)

(declare-datatypes ((tuple2!35270 0))(
  ( (tuple2!35271 (_1!20769 Token!9670) (_2!20769 List!36001)) )
))
(declare-datatypes ((Option!7037 0))(
  ( (None!7036) (Some!7036 (v!35536 tuple2!35270)) )
))
(declare-fun lt!1074333 () Option!7037)

(declare-fun lt!1074332 () tuple2!35268)

(assert (=> b!3190377 (= e!1988349 (tuple2!35269 (Cons!35878 (_1!20769 (v!35536 lt!1074333)) (_1!20768 lt!1074332)) (_2!20768 lt!1074332)))))

(declare-fun lexList!1291 (LexerInterface!4741 List!36003 List!36001) tuple2!35268)

(assert (=> b!3190377 (= lt!1074332 (lexList!1291 thiss!18206 rules!2135 (_2!20769 (v!35536 lt!1074333))))))

(declare-fun e!1988342 () Bool)

(assert (=> b!3190378 (= e!1988342 (and tp!1008542 tp!1008537))))

(declare-fun tp!1008541 () Bool)

(declare-fun e!1988351 () Bool)

(declare-fun b!3190379 () Bool)

(declare-fun inv!21 (TokenValue!5382) Bool)

(assert (=> b!3190379 (= e!1988355 (and (inv!21 (value!167292 (h!41298 tokens!494))) e!1988351 tp!1008541))))

(declare-fun b!3190380 () Bool)

(declare-fun res!1297522 () Bool)

(assert (=> b!3190380 (=> (not res!1297522) (not e!1988339))))

(get-info :version)

(assert (=> b!3190380 (= res!1297522 (and (not ((_ is Nil!35878) tokens!494)) ((_ is Nil!35878) (t!236149 tokens!494))))))

(declare-fun e!1988353 () Bool)

(declare-fun tp!1008546 () Bool)

(declare-fun b!3190381 () Bool)

(declare-fun inv!48726 (String!40244) Bool)

(declare-fun inv!48730 (TokenValueInjection!10192) Bool)

(assert (=> b!3190381 (= e!1988353 (and tp!1008546 (inv!48726 (tag!5670 (h!41299 rules!2135))) (inv!48730 (transformation!5152 (h!41299 rules!2135))) e!1988342))))

(declare-fun b!3190382 () Bool)

(declare-fun lt!1074329 () List!36001)

(assert (=> b!3190382 (= e!1988349 (tuple2!35269 Nil!35878 lt!1074329))))

(assert (=> b!3190382 false))

(declare-fun b!3190383 () Bool)

(declare-fun e!1988336 () Bool)

(declare-fun e!1988357 () Bool)

(assert (=> b!3190383 (= e!1988336 e!1988357)))

(declare-fun res!1297538 () Bool)

(assert (=> b!3190383 (=> (not res!1297538) (not e!1988357))))

(declare-fun lt!1074343 () Rule!10104)

(declare-fun lt!1074322 () List!36001)

(declare-fun matchR!4569 (Regex!9911 List!36001) Bool)

(assert (=> b!3190383 (= res!1297538 (matchR!4569 (regex!5152 lt!1074343) lt!1074322))))

(declare-datatypes ((Option!7038 0))(
  ( (None!7037) (Some!7037 (v!35537 Rule!10104)) )
))
(declare-fun lt!1074344 () Option!7038)

(declare-fun get!11425 (Option!7038) Rule!10104)

(assert (=> b!3190383 (= lt!1074343 (get!11425 lt!1074344))))

(declare-fun tp!1008540 () Bool)

(declare-fun e!1988331 () Bool)

(declare-fun b!3190384 () Bool)

(declare-fun e!1988335 () Bool)

(assert (=> b!3190384 (= e!1988335 (and tp!1008540 (inv!48726 (tag!5670 (rule!7584 separatorToken!241))) (inv!48730 (transformation!5152 (rule!7584 separatorToken!241))) e!1988331))))

(declare-fun b!3190385 () Bool)

(declare-fun e!1988334 () Bool)

(assert (=> b!3190385 (= e!1988334 true)))

(declare-fun lt!1074330 () List!36001)

(declare-fun printWithSeparatorTokenList!102 (LexerInterface!4741 List!36002 Token!9670) List!36001)

(assert (=> b!3190385 (= lt!1074330 (printWithSeparatorTokenList!102 thiss!18206 Nil!35878 separatorToken!241))))

(declare-fun b!3190386 () Bool)

(declare-fun e!1988337 () Bool)

(declare-fun tp!1008548 () Bool)

(assert (=> b!3190386 (= e!1988337 (and e!1988353 tp!1008548))))

(declare-fun b!3190387 () Bool)

(declare-datatypes ((Unit!50310 0))(
  ( (Unit!50311) )
))
(declare-fun e!1988350 () Unit!50310)

(declare-fun Unit!50312 () Unit!50310)

(assert (=> b!3190387 (= e!1988350 Unit!50312)))

(declare-fun b!3190388 () Bool)

(declare-fun e!1988356 () Bool)

(assert (=> b!3190388 (= e!1988346 e!1988356)))

(declare-fun res!1297523 () Bool)

(assert (=> b!3190388 (=> res!1297523 e!1988356)))

(declare-fun lt!1074340 () BalanceConc!20972)

(declare-datatypes ((IArray!21365 0))(
  ( (IArray!21366 (innerList!10740 List!36002)) )
))
(declare-datatypes ((Conc!10680 0))(
  ( (Node!10680 (left!27898 Conc!10680) (right!28228 Conc!10680) (csize!21590 Int) (cheight!10891 Int)) (Leaf!16867 (xs!13798 IArray!21365) (csize!21591 Int)) (Empty!10680) )
))
(declare-datatypes ((BalanceConc!20974 0))(
  ( (BalanceConc!20975 (c!535774 Conc!10680)) )
))
(declare-fun isEmpty!20008 (BalanceConc!20974) Bool)

(declare-datatypes ((tuple2!35272 0))(
  ( (tuple2!35273 (_1!20770 BalanceConc!20974) (_2!20770 BalanceConc!20972)) )
))
(declare-fun lex!2081 (LexerInterface!4741 List!36003 BalanceConc!20972) tuple2!35272)

(assert (=> b!3190388 (= res!1297523 (isEmpty!20008 (_1!20770 (lex!2081 thiss!18206 rules!2135 lt!1074340))))))

(declare-fun seqFromList!3383 (List!36001) BalanceConc!20972)

(assert (=> b!3190388 (= lt!1074340 (seqFromList!3383 lt!1074334))))

(declare-fun b!3190389 () Bool)

(declare-fun e!1988341 () Bool)

(assert (=> b!3190389 (= e!1988341 e!1988334)))

(declare-fun res!1297528 () Bool)

(assert (=> b!3190389 (=> res!1297528 e!1988334)))

(assert (=> b!3190389 (= res!1297528 (not (= e!1988349 (lexList!1291 thiss!18206 rules!2135 lt!1074329))))))

(declare-fun c!535771 () Bool)

(assert (=> b!3190389 (= c!535771 ((_ is Some!7036) lt!1074333))))

(declare-fun maxPrefix!2419 (LexerInterface!4741 List!36003 List!36001) Option!7037)

(assert (=> b!3190389 (= lt!1074333 (maxPrefix!2419 thiss!18206 rules!2135 lt!1074329))))

(declare-fun lt!1074323 () List!36001)

(assert (=> b!3190389 (= (maxPrefix!2419 thiss!18206 rules!2135 lt!1074323) (Some!7036 (tuple2!35271 (h!41298 tokens!494) lt!1074322)))))

(declare-fun lt!1074326 () Unit!50310)

(declare-fun lemmaMaxPrefWithOtherTypeUsedCharAtStartOfSuffixReturnSame!130 (LexerInterface!4741 List!36003 Token!9670 Rule!10104 List!36001 Rule!10104) Unit!50310)

(assert (=> b!3190389 (= lt!1074326 (lemmaMaxPrefWithOtherTypeUsedCharAtStartOfSuffixReturnSame!130 thiss!18206 rules!2135 (h!41298 tokens!494) (rule!7584 (h!41298 tokens!494)) lt!1074322 (rule!7584 separatorToken!241)))))

(declare-fun lt!1074327 () C!20008)

(declare-fun contains!6377 (List!36001 C!20008) Bool)

(declare-fun usedCharacters!496 (Regex!9911) List!36001)

(assert (=> b!3190389 (not (contains!6377 (usedCharacters!496 (regex!5152 (rule!7584 (h!41298 tokens!494)))) lt!1074327))))

(declare-fun lt!1074316 () Unit!50310)

(declare-fun lemmaNonSepRuleNotContainsCharContainedInASepRule!128 (LexerInterface!4741 List!36003 List!36003 Rule!10104 Rule!10104 C!20008) Unit!50310)

(assert (=> b!3190389 (= lt!1074316 (lemmaNonSepRuleNotContainsCharContainedInASepRule!128 thiss!18206 rules!2135 rules!2135 (rule!7584 (h!41298 tokens!494)) (rule!7584 separatorToken!241) lt!1074327))))

(declare-fun e!1988343 () Bool)

(assert (=> b!3190390 (= e!1988343 (and tp!1008547 tp!1008539))))

(declare-fun b!3190391 () Bool)

(assert (=> b!3190391 (= e!1988357 (= (rule!7584 separatorToken!241) lt!1074343))))

(declare-fun b!3190392 () Bool)

(declare-fun e!1988347 () Bool)

(assert (=> b!3190392 (= e!1988356 e!1988347)))

(declare-fun res!1297519 () Bool)

(assert (=> b!3190392 (=> res!1297519 e!1988347)))

(assert (=> b!3190392 (= res!1297519 (isSeparator!5152 (rule!7584 (h!41298 tokens!494))))))

(declare-fun lt!1074339 () Unit!50310)

(declare-fun lambda!116687 () Int)

(declare-fun forallContained!1135 (List!36002 Int Token!9670) Unit!50310)

(assert (=> b!3190392 (= lt!1074339 (forallContained!1135 tokens!494 lambda!116687 (h!41298 tokens!494)))))

(declare-fun b!3190393 () Bool)

(declare-fun e!1988354 () Bool)

(declare-fun lt!1074338 () Rule!10104)

(assert (=> b!3190393 (= e!1988354 (= (rule!7584 (h!41298 tokens!494)) lt!1074338))))

(declare-fun b!3190394 () Bool)

(declare-fun e!1988352 () Bool)

(assert (=> b!3190394 (= e!1988352 false)))

(declare-fun tp!1008536 () Bool)

(declare-fun e!1988332 () Bool)

(declare-fun b!3190395 () Bool)

(assert (=> b!3190395 (= e!1988332 (and (inv!21 (value!167292 separatorToken!241)) e!1988335 tp!1008536))))

(assert (=> b!3190396 (= e!1988331 (and tp!1008544 tp!1008543))))

(declare-fun b!3190397 () Bool)

(declare-fun e!1988333 () Bool)

(assert (=> b!3190397 (= e!1988333 e!1988354)))

(declare-fun res!1297534 () Bool)

(assert (=> b!3190397 (=> (not res!1297534) (not e!1988354))))

(assert (=> b!3190397 (= res!1297534 (matchR!4569 (regex!5152 lt!1074338) lt!1074334))))

(declare-fun lt!1074317 () Option!7038)

(assert (=> b!3190397 (= lt!1074338 (get!11425 lt!1074317))))

(declare-fun b!3190398 () Bool)

(declare-fun res!1297539 () Bool)

(assert (=> b!3190398 (=> res!1297539 e!1988334)))

(declare-fun isEmpty!20009 (List!36002) Bool)

(declare-fun filter!500 (List!36002 Int) List!36002)

(declare-fun list!12745 (BalanceConc!20974) List!36002)

(declare-fun printWithSeparatorToken!50 (LexerInterface!4741 BalanceConc!20974 Token!9670) BalanceConc!20972)

(assert (=> b!3190398 (= res!1297539 (not (isEmpty!20009 (filter!500 (list!12745 (_1!20770 (lex!2081 thiss!18206 rules!2135 (printWithSeparatorToken!50 thiss!18206 (BalanceConc!20975 Empty!10680) separatorToken!241)))) lambda!116687))))))

(declare-fun b!3190399 () Bool)

(declare-fun res!1297537 () Bool)

(declare-fun e!1988348 () Bool)

(assert (=> b!3190399 (=> (not res!1297537) (not e!1988348))))

(declare-fun rulesInvariant!4138 (LexerInterface!4741 List!36003) Bool)

(assert (=> b!3190399 (= res!1297537 (rulesInvariant!4138 thiss!18206 rules!2135))))

(declare-fun b!3190400 () Bool)

(assert (=> b!3190400 (= e!1988348 e!1988339)))

(declare-fun res!1297529 () Bool)

(assert (=> b!3190400 (=> (not res!1297529) (not e!1988339))))

(declare-fun lt!1074342 () BalanceConc!20974)

(declare-fun rulesProduceEachTokenIndividually!1192 (LexerInterface!4741 List!36003 BalanceConc!20974) Bool)

(assert (=> b!3190400 (= res!1297529 (rulesProduceEachTokenIndividually!1192 thiss!18206 rules!2135 lt!1074342))))

(declare-fun seqFromList!3384 (List!36002) BalanceConc!20974)

(assert (=> b!3190400 (= lt!1074342 (seqFromList!3384 tokens!494))))

(declare-fun b!3190401 () Bool)

(declare-fun res!1297540 () Bool)

(assert (=> b!3190401 (=> res!1297540 e!1988346)))

(assert (=> b!3190401 (= res!1297540 (not (rulesProduceIndividualToken!2233 thiss!18206 rules!2135 (h!41298 tokens!494))))))

(declare-fun res!1297536 () Bool)

(assert (=> start!299258 (=> (not res!1297536) (not e!1988348))))

(assert (=> start!299258 (= res!1297536 ((_ is Lexer!4739) thiss!18206))))

(assert (=> start!299258 e!1988348))

(assert (=> start!299258 true))

(assert (=> start!299258 e!1988337))

(assert (=> start!299258 (and (inv!48729 separatorToken!241) e!1988332)))

(assert (=> start!299258 e!1988358))

(declare-fun b!3190402 () Bool)

(declare-fun e!1988344 () Bool)

(assert (=> b!3190402 (= e!1988347 e!1988344)))

(declare-fun res!1297525 () Bool)

(assert (=> b!3190402 (=> res!1297525 e!1988344)))

(assert (=> b!3190402 (= res!1297525 (not (= lt!1074329 lt!1074323)))))

(declare-fun ++!8590 (List!36001 List!36001) List!36001)

(assert (=> b!3190402 (= lt!1074323 (++!8590 lt!1074334 lt!1074322))))

(declare-fun lt!1074331 () BalanceConc!20972)

(assert (=> b!3190402 (= lt!1074329 (list!12744 lt!1074331))))

(assert (=> b!3190402 (= lt!1074322 (list!12744 (charsOf!3174 separatorToken!241)))))

(assert (=> b!3190402 (= lt!1074331 (printWithSeparatorToken!50 thiss!18206 lt!1074342 separatorToken!241))))

(declare-fun b!3190403 () Bool)

(declare-fun res!1297531 () Bool)

(assert (=> b!3190403 (=> (not res!1297531) (not e!1988339))))

(declare-fun forall!7284 (List!36002 Int) Bool)

(assert (=> b!3190403 (= res!1297531 (forall!7284 tokens!494 lambda!116687))))

(declare-fun b!3190404 () Bool)

(declare-fun Unit!50313 () Unit!50310)

(assert (=> b!3190404 (= e!1988350 Unit!50313)))

(declare-fun lt!1074341 () Unit!50310)

(declare-fun lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!350 (Regex!9911 List!36001 C!20008) Unit!50310)

(assert (=> b!3190404 (= lt!1074341 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!350 (regex!5152 (rule!7584 separatorToken!241)) lt!1074322 lt!1074327))))

(declare-fun res!1297520 () Bool)

(assert (=> b!3190404 (= res!1297520 (not (matchR!4569 (regex!5152 (rule!7584 separatorToken!241)) lt!1074322)))))

(assert (=> b!3190404 (=> (not res!1297520) (not e!1988352))))

(assert (=> b!3190404 e!1988352))

(declare-fun b!3190405 () Bool)

(declare-fun res!1297530 () Bool)

(assert (=> b!3190405 (=> (not res!1297530) (not e!1988339))))

(assert (=> b!3190405 (= res!1297530 (isSeparator!5152 (rule!7584 separatorToken!241)))))

(declare-fun tp!1008538 () Bool)

(declare-fun b!3190406 () Bool)

(assert (=> b!3190406 (= e!1988351 (and tp!1008538 (inv!48726 (tag!5670 (rule!7584 (h!41298 tokens!494)))) (inv!48730 (transformation!5152 (rule!7584 (h!41298 tokens!494)))) e!1988343))))

(declare-fun b!3190407 () Bool)

(assert (=> b!3190407 (= e!1988344 e!1988341)))

(declare-fun res!1297535 () Bool)

(assert (=> b!3190407 (=> res!1297535 e!1988341)))

(declare-fun lt!1074324 () Bool)

(assert (=> b!3190407 (= res!1297535 lt!1074324)))

(declare-fun lt!1074320 () Unit!50310)

(assert (=> b!3190407 (= lt!1074320 e!1988350)))

(declare-fun c!535770 () Bool)

(assert (=> b!3190407 (= c!535770 lt!1074324)))

(assert (=> b!3190407 (= lt!1074324 (not (contains!6377 (usedCharacters!496 (regex!5152 (rule!7584 separatorToken!241))) lt!1074327)))))

(declare-fun head!6987 (List!36001) C!20008)

(assert (=> b!3190407 (= lt!1074327 (head!6987 lt!1074322))))

(declare-fun maxPrefixOneRule!1546 (LexerInterface!4741 Rule!10104 List!36001) Option!7037)

(declare-fun apply!8090 (TokenValueInjection!10192 BalanceConc!20972) TokenValue!5382)

(declare-fun size!27061 (List!36001) Int)

(assert (=> b!3190407 (= (maxPrefixOneRule!1546 thiss!18206 (rule!7584 (h!41298 tokens!494)) lt!1074334) (Some!7036 (tuple2!35271 (Token!9671 (apply!8090 (transformation!5152 (rule!7584 (h!41298 tokens!494))) lt!1074340) (rule!7584 (h!41298 tokens!494)) (size!27061 lt!1074334) lt!1074334) Nil!35877)))))

(declare-fun lt!1074336 () Unit!50310)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!659 (LexerInterface!4741 List!36003 List!36001 List!36001 List!36001 Rule!10104) Unit!50310)

(assert (=> b!3190407 (= lt!1074336 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!659 thiss!18206 rules!2135 lt!1074334 lt!1074334 Nil!35877 (rule!7584 (h!41298 tokens!494))))))

(assert (=> b!3190407 e!1988336))

(declare-fun res!1297541 () Bool)

(assert (=> b!3190407 (=> (not res!1297541) (not e!1988336))))

(declare-fun isDefined!5504 (Option!7038) Bool)

(assert (=> b!3190407 (= res!1297541 (isDefined!5504 lt!1074344))))

(declare-fun getRuleFromTag!881 (LexerInterface!4741 List!36003 String!40244) Option!7038)

(assert (=> b!3190407 (= lt!1074344 (getRuleFromTag!881 thiss!18206 rules!2135 (tag!5670 (rule!7584 separatorToken!241))))))

(declare-fun lt!1074318 () Unit!50310)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!881 (LexerInterface!4741 List!36003 List!36001 Token!9670) Unit!50310)

(assert (=> b!3190407 (= lt!1074318 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!881 thiss!18206 rules!2135 lt!1074322 separatorToken!241))))

(assert (=> b!3190407 e!1988333))

(declare-fun res!1297524 () Bool)

(assert (=> b!3190407 (=> (not res!1297524) (not e!1988333))))

(assert (=> b!3190407 (= res!1297524 (isDefined!5504 lt!1074317))))

(assert (=> b!3190407 (= lt!1074317 (getRuleFromTag!881 thiss!18206 rules!2135 (tag!5670 (rule!7584 (h!41298 tokens!494)))))))

(declare-fun lt!1074325 () Unit!50310)

(assert (=> b!3190407 (= lt!1074325 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!881 thiss!18206 rules!2135 lt!1074334 (h!41298 tokens!494)))))

(declare-fun lt!1074315 () Unit!50310)

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!802 (LexerInterface!4741 List!36003 List!36002 Token!9670) Unit!50310)

(assert (=> b!3190407 (= lt!1074315 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!802 thiss!18206 rules!2135 tokens!494 (h!41298 tokens!494)))))

(declare-fun isEmpty!20010 (List!36001) Bool)

(declare-fun getSuffix!1368 (List!36001 List!36001) List!36001)

(assert (=> b!3190407 (isEmpty!20010 (getSuffix!1368 lt!1074334 lt!1074334))))

(declare-fun lt!1074337 () Unit!50310)

(declare-fun lemmaGetSuffixOnListWithItSelfIsEmpty!46 (List!36001) Unit!50310)

(assert (=> b!3190407 (= lt!1074337 (lemmaGetSuffixOnListWithItSelfIsEmpty!46 lt!1074334))))

(declare-fun b!3190408 () Bool)

(declare-fun res!1297532 () Bool)

(assert (=> b!3190408 (=> (not res!1297532) (not e!1988348))))

(declare-fun isEmpty!20011 (List!36003) Bool)

(assert (=> b!3190408 (= res!1297532 (not (isEmpty!20011 rules!2135)))))

(declare-fun b!3190409 () Bool)

(declare-fun res!1297533 () Bool)

(assert (=> b!3190409 (=> (not res!1297533) (not e!1988339))))

(declare-fun sepAndNonSepRulesDisjointChars!1346 (List!36003 List!36003) Bool)

(assert (=> b!3190409 (= res!1297533 (sepAndNonSepRulesDisjointChars!1346 rules!2135 rules!2135))))

(declare-fun b!3190410 () Bool)

(assert (=> b!3190410 (= e!1988339 (not e!1988338))))

(declare-fun res!1297527 () Bool)

(assert (=> b!3190410 (=> res!1297527 e!1988338)))

(assert (=> b!3190410 (= res!1297527 (not (= lt!1074321 lt!1074319)))))

(declare-fun printList!1295 (LexerInterface!4741 List!36002) List!36001)

(assert (=> b!3190410 (= lt!1074319 (printList!1295 thiss!18206 (Cons!35878 (h!41298 tokens!494) Nil!35878)))))

(declare-fun lt!1074328 () BalanceConc!20972)

(assert (=> b!3190410 (= lt!1074321 (list!12744 lt!1074328))))

(declare-fun lt!1074335 () BalanceConc!20974)

(declare-fun printTailRec!1240 (LexerInterface!4741 BalanceConc!20974 Int BalanceConc!20972) BalanceConc!20972)

(assert (=> b!3190410 (= lt!1074328 (printTailRec!1240 thiss!18206 lt!1074335 0 (BalanceConc!20973 Empty!10679)))))

(declare-fun print!1808 (LexerInterface!4741 BalanceConc!20974) BalanceConc!20972)

(assert (=> b!3190410 (= lt!1074328 (print!1808 thiss!18206 lt!1074335))))

(declare-fun singletonSeq!2248 (Token!9670) BalanceConc!20974)

(assert (=> b!3190410 (= lt!1074335 (singletonSeq!2248 (h!41298 tokens!494)))))

(assert (= (and start!299258 res!1297536) b!3190408))

(assert (= (and b!3190408 res!1297532) b!3190399))

(assert (= (and b!3190399 res!1297537) b!3190400))

(assert (= (and b!3190400 res!1297529) b!3190375))

(assert (= (and b!3190375 res!1297526) b!3190405))

(assert (= (and b!3190405 res!1297530) b!3190403))

(assert (= (and b!3190403 res!1297531) b!3190409))

(assert (= (and b!3190409 res!1297533) b!3190380))

(assert (= (and b!3190380 res!1297522) b!3190410))

(assert (= (and b!3190410 (not res!1297527)) b!3190376))

(assert (= (and b!3190376 (not res!1297521)) b!3190401))

(assert (= (and b!3190401 (not res!1297540)) b!3190388))

(assert (= (and b!3190388 (not res!1297523)) b!3190392))

(assert (= (and b!3190392 (not res!1297519)) b!3190402))

(assert (= (and b!3190402 (not res!1297525)) b!3190407))

(assert (= (and b!3190407 res!1297524) b!3190397))

(assert (= (and b!3190397 res!1297534) b!3190393))

(assert (= (and b!3190407 res!1297541) b!3190383))

(assert (= (and b!3190383 res!1297538) b!3190391))

(assert (= (and b!3190407 c!535770) b!3190404))

(assert (= (and b!3190407 (not c!535770)) b!3190387))

(assert (= (and b!3190404 res!1297520) b!3190394))

(assert (= (and b!3190407 (not res!1297535)) b!3190389))

(assert (= (and b!3190389 c!535771) b!3190377))

(assert (= (and b!3190389 (not c!535771)) b!3190382))

(assert (= (and b!3190389 (not res!1297528)) b!3190398))

(assert (= (and b!3190398 (not res!1297539)) b!3190385))

(assert (= b!3190381 b!3190378))

(assert (= b!3190386 b!3190381))

(assert (= (and start!299258 ((_ is Cons!35879) rules!2135)) b!3190386))

(assert (= b!3190384 b!3190396))

(assert (= b!3190395 b!3190384))

(assert (= start!299258 b!3190395))

(assert (= b!3190406 b!3190390))

(assert (= b!3190379 b!3190406))

(assert (= b!3190374 b!3190379))

(assert (= (and start!299258 ((_ is Cons!35878) tokens!494)) b!3190374))

(declare-fun m!3449377 () Bool)

(assert (=> b!3190383 m!3449377))

(declare-fun m!3449379 () Bool)

(assert (=> b!3190383 m!3449379))

(declare-fun m!3449381 () Bool)

(assert (=> b!3190376 m!3449381))

(assert (=> b!3190376 m!3449381))

(declare-fun m!3449383 () Bool)

(assert (=> b!3190376 m!3449383))

(declare-fun m!3449385 () Bool)

(assert (=> b!3190395 m!3449385))

(declare-fun m!3449387 () Bool)

(assert (=> b!3190406 m!3449387))

(declare-fun m!3449389 () Bool)

(assert (=> b!3190406 m!3449389))

(declare-fun m!3449391 () Bool)

(assert (=> b!3190402 m!3449391))

(declare-fun m!3449393 () Bool)

(assert (=> b!3190402 m!3449393))

(declare-fun m!3449395 () Bool)

(assert (=> b!3190402 m!3449395))

(declare-fun m!3449397 () Bool)

(assert (=> b!3190402 m!3449397))

(assert (=> b!3190402 m!3449395))

(declare-fun m!3449399 () Bool)

(assert (=> b!3190402 m!3449399))

(declare-fun m!3449401 () Bool)

(assert (=> b!3190374 m!3449401))

(declare-fun m!3449403 () Bool)

(assert (=> b!3190375 m!3449403))

(declare-fun m!3449405 () Bool)

(assert (=> b!3190385 m!3449405))

(declare-fun m!3449407 () Bool)

(assert (=> b!3190392 m!3449407))

(declare-fun m!3449409 () Bool)

(assert (=> b!3190381 m!3449409))

(declare-fun m!3449411 () Bool)

(assert (=> b!3190381 m!3449411))

(declare-fun m!3449413 () Bool)

(assert (=> b!3190388 m!3449413))

(declare-fun m!3449415 () Bool)

(assert (=> b!3190388 m!3449415))

(declare-fun m!3449417 () Bool)

(assert (=> b!3190388 m!3449417))

(declare-fun m!3449419 () Bool)

(assert (=> b!3190379 m!3449419))

(declare-fun m!3449421 () Bool)

(assert (=> b!3190398 m!3449421))

(declare-fun m!3449423 () Bool)

(assert (=> b!3190398 m!3449423))

(assert (=> b!3190398 m!3449421))

(declare-fun m!3449425 () Bool)

(assert (=> b!3190398 m!3449425))

(declare-fun m!3449427 () Bool)

(assert (=> b!3190398 m!3449427))

(declare-fun m!3449429 () Bool)

(assert (=> b!3190398 m!3449429))

(assert (=> b!3190398 m!3449423))

(assert (=> b!3190398 m!3449427))

(declare-fun m!3449431 () Bool)

(assert (=> b!3190403 m!3449431))

(declare-fun m!3449433 () Bool)

(assert (=> b!3190397 m!3449433))

(declare-fun m!3449435 () Bool)

(assert (=> b!3190397 m!3449435))

(declare-fun m!3449437 () Bool)

(assert (=> start!299258 m!3449437))

(declare-fun m!3449439 () Bool)

(assert (=> b!3190377 m!3449439))

(declare-fun m!3449441 () Bool)

(assert (=> b!3190407 m!3449441))

(declare-fun m!3449443 () Bool)

(assert (=> b!3190407 m!3449443))

(declare-fun m!3449445 () Bool)

(assert (=> b!3190407 m!3449445))

(assert (=> b!3190407 m!3449441))

(declare-fun m!3449447 () Bool)

(assert (=> b!3190407 m!3449447))

(declare-fun m!3449449 () Bool)

(assert (=> b!3190407 m!3449449))

(declare-fun m!3449451 () Bool)

(assert (=> b!3190407 m!3449451))

(declare-fun m!3449453 () Bool)

(assert (=> b!3190407 m!3449453))

(declare-fun m!3449455 () Bool)

(assert (=> b!3190407 m!3449455))

(declare-fun m!3449457 () Bool)

(assert (=> b!3190407 m!3449457))

(declare-fun m!3449459 () Bool)

(assert (=> b!3190407 m!3449459))

(declare-fun m!3449461 () Bool)

(assert (=> b!3190407 m!3449461))

(declare-fun m!3449463 () Bool)

(assert (=> b!3190407 m!3449463))

(declare-fun m!3449465 () Bool)

(assert (=> b!3190407 m!3449465))

(declare-fun m!3449467 () Bool)

(assert (=> b!3190407 m!3449467))

(declare-fun m!3449469 () Bool)

(assert (=> b!3190407 m!3449469))

(assert (=> b!3190407 m!3449447))

(declare-fun m!3449471 () Bool)

(assert (=> b!3190407 m!3449471))

(declare-fun m!3449473 () Bool)

(assert (=> b!3190407 m!3449473))

(declare-fun m!3449475 () Bool)

(assert (=> b!3190410 m!3449475))

(declare-fun m!3449477 () Bool)

(assert (=> b!3190410 m!3449477))

(declare-fun m!3449479 () Bool)

(assert (=> b!3190410 m!3449479))

(declare-fun m!3449481 () Bool)

(assert (=> b!3190410 m!3449481))

(declare-fun m!3449483 () Bool)

(assert (=> b!3190410 m!3449483))

(declare-fun m!3449485 () Bool)

(assert (=> b!3190401 m!3449485))

(declare-fun m!3449487 () Bool)

(assert (=> b!3190404 m!3449487))

(declare-fun m!3449489 () Bool)

(assert (=> b!3190404 m!3449489))

(declare-fun m!3449491 () Bool)

(assert (=> b!3190408 m!3449491))

(declare-fun m!3449493 () Bool)

(assert (=> b!3190400 m!3449493))

(declare-fun m!3449495 () Bool)

(assert (=> b!3190400 m!3449495))

(declare-fun m!3449497 () Bool)

(assert (=> b!3190384 m!3449497))

(declare-fun m!3449499 () Bool)

(assert (=> b!3190384 m!3449499))

(declare-fun m!3449501 () Bool)

(assert (=> b!3190399 m!3449501))

(declare-fun m!3449503 () Bool)

(assert (=> b!3190389 m!3449503))

(declare-fun m!3449505 () Bool)

(assert (=> b!3190389 m!3449505))

(declare-fun m!3449507 () Bool)

(assert (=> b!3190389 m!3449507))

(declare-fun m!3449509 () Bool)

(assert (=> b!3190389 m!3449509))

(assert (=> b!3190389 m!3449505))

(declare-fun m!3449511 () Bool)

(assert (=> b!3190389 m!3449511))

(declare-fun m!3449513 () Bool)

(assert (=> b!3190389 m!3449513))

(declare-fun m!3449515 () Bool)

(assert (=> b!3190389 m!3449515))

(declare-fun m!3449517 () Bool)

(assert (=> b!3190409 m!3449517))

(check-sat b_and!211377 (not b!3190399) (not b!3190398) (not b!3190410) (not b!3190389) (not b!3190409) (not b!3190400) (not b!3190403) (not b!3190384) (not b_next!85075) (not b_next!85073) (not b!3190376) (not b_next!85069) (not start!299258) (not b!3190408) (not b!3190388) b_and!211373 (not b!3190377) (not b!3190395) (not b_next!85067) (not b!3190404) (not b!3190401) (not b_next!85071) (not b!3190406) (not b!3190379) b_and!211379 (not b!3190402) b_and!211371 (not b!3190407) b_and!211381 (not b!3190392) (not b!3190385) (not b!3190397) (not b!3190383) (not b!3190381) (not b_next!85065) (not b!3190386) b_and!211375 (not b!3190375) (not b!3190374))
(check-sat (not b_next!85073) (not b_next!85069) b_and!211377 b_and!211373 (not b_next!85067) (not b_next!85071) b_and!211381 (not b_next!85075) b_and!211379 b_and!211371 b_and!211375 (not b_next!85065))
