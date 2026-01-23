; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!25240 () Bool)

(assert start!25240)

(declare-fun b!236974 () Bool)

(declare-fun b_free!8789 () Bool)

(declare-fun b_next!8789 () Bool)

(assert (=> b!236974 (= b_free!8789 (not b_next!8789))))

(declare-fun tp!94807 () Bool)

(declare-fun b_and!17681 () Bool)

(assert (=> b!236974 (= tp!94807 b_and!17681)))

(declare-fun b_free!8791 () Bool)

(declare-fun b_next!8791 () Bool)

(assert (=> b!236974 (= b_free!8791 (not b_next!8791))))

(declare-fun tp!94804 () Bool)

(declare-fun b_and!17683 () Bool)

(assert (=> b!236974 (= tp!94804 b_and!17683)))

(declare-fun b!236977 () Bool)

(declare-fun b_free!8793 () Bool)

(declare-fun b_next!8793 () Bool)

(assert (=> b!236977 (= b_free!8793 (not b_next!8793))))

(declare-fun tp!94813 () Bool)

(declare-fun b_and!17685 () Bool)

(assert (=> b!236977 (= tp!94813 b_and!17685)))

(declare-fun b_free!8795 () Bool)

(declare-fun b_next!8795 () Bool)

(assert (=> b!236977 (= b_free!8795 (not b_next!8795))))

(declare-fun tp!94806 () Bool)

(declare-fun b_and!17687 () Bool)

(assert (=> b!236977 (= tp!94806 b_and!17687)))

(declare-fun b!236959 () Bool)

(declare-fun b_free!8797 () Bool)

(declare-fun b_next!8797 () Bool)

(assert (=> b!236959 (= b_free!8797 (not b_next!8797))))

(declare-fun tp!94805 () Bool)

(declare-fun b_and!17689 () Bool)

(assert (=> b!236959 (= tp!94805 b_and!17689)))

(declare-fun b_free!8799 () Bool)

(declare-fun b_next!8799 () Bool)

(assert (=> b!236959 (= b_free!8799 (not b_next!8799))))

(declare-fun tp!94811 () Bool)

(declare-fun b_and!17691 () Bool)

(assert (=> b!236959 (= tp!94811 b_and!17691)))

(declare-fun bs!25323 () Bool)

(declare-fun b!236969 () Bool)

(declare-fun b!236970 () Bool)

(assert (= bs!25323 (and b!236969 b!236970)))

(declare-fun lambda!7642 () Int)

(declare-fun lambda!7641 () Int)

(assert (=> bs!25323 (not (= lambda!7642 lambda!7641))))

(declare-fun b!237003 () Bool)

(declare-fun e!146694 () Bool)

(assert (=> b!237003 (= e!146694 true)))

(declare-fun b!237002 () Bool)

(declare-fun e!146693 () Bool)

(assert (=> b!237002 (= e!146693 e!146694)))

(declare-fun b!237001 () Bool)

(declare-fun e!146692 () Bool)

(assert (=> b!237001 (= e!146692 e!146693)))

(assert (=> b!236969 e!146692))

(assert (= b!237002 b!237003))

(assert (= b!237001 b!237002))

(declare-datatypes ((List!3529 0))(
  ( (Nil!3519) (Cons!3519 (h!8916 (_ BitVec 16)) (t!34257 List!3529)) )
))
(declare-datatypes ((TokenValue!684 0))(
  ( (FloatLiteralValue!1368 (text!5233 List!3529)) (TokenValueExt!683 (__x!2855 Int)) (Broken!3420 (value!23158 List!3529)) (Object!693) (End!684) (Def!684) (Underscore!684) (Match!684) (Else!684) (Error!684) (Case!684) (If!684) (Extends!684) (Abstract!684) (Class!684) (Val!684) (DelimiterValue!1368 (del!744 List!3529)) (KeywordValue!690 (value!23159 List!3529)) (CommentValue!1368 (value!23160 List!3529)) (WhitespaceValue!1368 (value!23161 List!3529)) (IndentationValue!684 (value!23162 List!3529)) (String!4501) (Int32!684) (Broken!3421 (value!23163 List!3529)) (Boolean!685) (Unit!4176) (OperatorValue!687 (op!744 List!3529)) (IdentifierValue!1368 (value!23164 List!3529)) (IdentifierValue!1369 (value!23165 List!3529)) (WhitespaceValue!1369 (value!23166 List!3529)) (True!1368) (False!1368) (Broken!3422 (value!23167 List!3529)) (Broken!3423 (value!23168 List!3529)) (True!1369) (RightBrace!684) (RightBracket!684) (Colon!684) (Null!684) (Comma!684) (LeftBracket!684) (False!1369) (LeftBrace!684) (ImaginaryLiteralValue!684 (text!5234 List!3529)) (StringLiteralValue!2052 (value!23169 List!3529)) (EOFValue!684 (value!23170 List!3529)) (IdentValue!684 (value!23171 List!3529)) (DelimiterValue!1369 (value!23172 List!3529)) (DedentValue!684 (value!23173 List!3529)) (NewLineValue!684 (value!23174 List!3529)) (IntegerValue!2052 (value!23175 (_ BitVec 32)) (text!5235 List!3529)) (IntegerValue!2053 (value!23176 Int) (text!5236 List!3529)) (Times!684) (Or!684) (Equal!684) (Minus!684) (Broken!3424 (value!23177 List!3529)) (And!684) (Div!684) (LessEqual!684) (Mod!684) (Concat!1570) (Not!684) (Plus!684) (SpaceValue!684 (value!23178 List!3529)) (IntegerValue!2054 (value!23179 Int) (text!5237 List!3529)) (StringLiteralValue!2053 (text!5238 List!3529)) (FloatLiteralValue!1369 (text!5239 List!3529)) (BytesLiteralValue!684 (value!23180 List!3529)) (CommentValue!1369 (value!23181 List!3529)) (StringLiteralValue!2054 (value!23182 List!3529)) (ErrorTokenValue!684 (msg!745 List!3529)) )
))
(declare-datatypes ((C!2694 0))(
  ( (C!2695 (val!1233 Int)) )
))
(declare-datatypes ((List!3530 0))(
  ( (Nil!3520) (Cons!3520 (h!8917 C!2694) (t!34258 List!3530)) )
))
(declare-datatypes ((IArray!2293 0))(
  ( (IArray!2294 (innerList!1204 List!3530)) )
))
(declare-datatypes ((Conc!1146 0))(
  ( (Node!1146 (left!2858 Conc!1146) (right!3188 Conc!1146) (csize!2522 Int) (cheight!1357 Int)) (Leaf!1817 (xs!3741 IArray!2293) (csize!2523 Int)) (Empty!1146) )
))
(declare-datatypes ((BalanceConc!2300 0))(
  ( (BalanceConc!2301 (c!45382 Conc!1146)) )
))
(declare-datatypes ((TokenValueInjection!1140 0))(
  ( (TokenValueInjection!1141 (toValue!1361 Int) (toChars!1220 Int)) )
))
(declare-datatypes ((Regex!886 0))(
  ( (ElementMatch!886 (c!45383 C!2694)) (Concat!1571 (regOne!2284 Regex!886) (regTwo!2284 Regex!886)) (EmptyExpr!886) (Star!886 (reg!1215 Regex!886)) (EmptyLang!886) (Union!886 (regOne!2285 Regex!886) (regTwo!2285 Regex!886)) )
))
(declare-datatypes ((String!4502 0))(
  ( (String!4503 (value!23183 String)) )
))
(declare-datatypes ((Rule!1124 0))(
  ( (Rule!1125 (regex!662 Regex!886) (tag!866 String!4502) (isSeparator!662 Bool) (transformation!662 TokenValueInjection!1140)) )
))
(declare-datatypes ((List!3531 0))(
  ( (Nil!3521) (Cons!3521 (h!8918 Rule!1124) (t!34259 List!3531)) )
))
(declare-fun rules!1920 () List!3531)

(assert (= (and b!236969 (is-Cons!3521 rules!1920)) b!237001))

(declare-fun order!2505 () Int)

(declare-fun order!2503 () Int)

(declare-fun dynLambda!1670 (Int Int) Int)

(declare-fun dynLambda!1671 (Int Int) Int)

(assert (=> b!237003 (< (dynLambda!1670 order!2503 (toValue!1361 (transformation!662 (h!8918 rules!1920)))) (dynLambda!1671 order!2505 lambda!7642))))

(declare-fun order!2507 () Int)

(declare-fun dynLambda!1672 (Int Int) Int)

(assert (=> b!237003 (< (dynLambda!1672 order!2507 (toChars!1220 (transformation!662 (h!8918 rules!1920)))) (dynLambda!1671 order!2505 lambda!7642))))

(assert (=> b!236969 true))

(declare-fun b!236941 () Bool)

(declare-fun e!146659 () Bool)

(declare-fun e!146677 () Bool)

(assert (=> b!236941 (= e!146659 e!146677)))

(declare-fun res!109383 () Bool)

(assert (=> b!236941 (=> res!109383 e!146677)))

(declare-fun lt!94445 () Bool)

(assert (=> b!236941 (= res!109383 (not lt!94445))))

(declare-fun e!146663 () Bool)

(assert (=> b!236941 e!146663))

(declare-fun res!109377 () Bool)

(assert (=> b!236941 (=> (not res!109377) (not e!146663))))

(declare-datatypes ((Token!1068 0))(
  ( (Token!1069 (value!23184 TokenValue!684) (rule!1229 Rule!1124) (size!2818 Int) (originalCharacters!705 List!3530)) )
))
(declare-datatypes ((tuple2!3856 0))(
  ( (tuple2!3857 (_1!2144 Token!1068) (_2!2144 List!3530)) )
))
(declare-fun lt!94453 () tuple2!3856)

(declare-datatypes ((List!3532 0))(
  ( (Nil!3522) (Cons!3522 (h!8919 Token!1068) (t!34260 List!3532)) )
))
(declare-fun tokens!465 () List!3532)

(assert (=> b!236941 (= res!109377 (= (_1!2144 lt!94453) (h!8919 tokens!465)))))

(declare-datatypes ((Option!678 0))(
  ( (None!677) (Some!677 (v!14412 tuple2!3856)) )
))
(declare-fun lt!94420 () Option!678)

(declare-fun get!1136 (Option!678) tuple2!3856)

(assert (=> b!236941 (= lt!94453 (get!1136 lt!94420))))

(declare-fun isDefined!529 (Option!678) Bool)

(assert (=> b!236941 (isDefined!529 lt!94420)))

(declare-fun lt!94426 () List!3530)

(declare-datatypes ((LexerInterface!548 0))(
  ( (LexerInterfaceExt!545 (__x!2856 Int)) (Lexer!546) )
))
(declare-fun thiss!17480 () LexerInterface!548)

(declare-fun maxPrefix!278 (LexerInterface!548 List!3531 List!3530) Option!678)

(assert (=> b!236941 (= lt!94420 (maxPrefix!278 thiss!17480 rules!1920 lt!94426))))

(declare-fun b!236942 () Bool)

(declare-fun e!146648 () Bool)

(declare-fun lt!94437 () Option!678)

(declare-fun head!819 (List!3532) Token!1068)

(assert (=> b!236942 (= e!146648 (= (_1!2144 (get!1136 lt!94437)) (head!819 tokens!465)))))

(declare-fun b!236943 () Bool)

(declare-fun res!109379 () Bool)

(declare-fun e!146652 () Bool)

(assert (=> b!236943 (=> (not res!109379) (not e!146652))))

(declare-fun separatorToken!170 () Token!1068)

(declare-fun rulesProduceIndividualToken!297 (LexerInterface!548 List!3531 Token!1068) Bool)

(assert (=> b!236943 (= res!109379 (rulesProduceIndividualToken!297 thiss!17480 rules!1920 separatorToken!170))))

(declare-fun b!236944 () Bool)

(declare-fun res!109373 () Bool)

(declare-fun e!146673 () Bool)

(assert (=> b!236944 (=> (not res!109373) (not e!146673))))

(declare-fun lt!94431 () List!3530)

(declare-fun lt!94449 () List!3530)

(declare-fun list!1374 (BalanceConc!2300) List!3530)

(declare-fun seqFromList!701 (List!3530) BalanceConc!2300)

(assert (=> b!236944 (= res!109373 (= (list!1374 (seqFromList!701 lt!94431)) lt!94449))))

(declare-fun b!236945 () Bool)

(declare-fun res!109394 () Bool)

(declare-fun e!146656 () Bool)

(assert (=> b!236945 (=> res!109394 e!146656)))

(declare-datatypes ((IArray!2295 0))(
  ( (IArray!2296 (innerList!1205 List!3532)) )
))
(declare-datatypes ((Conc!1147 0))(
  ( (Node!1147 (left!2859 Conc!1147) (right!3189 Conc!1147) (csize!2524 Int) (cheight!1358 Int)) (Leaf!1818 (xs!3742 IArray!2295) (csize!2525 Int)) (Empty!1147) )
))
(declare-datatypes ((BalanceConc!2302 0))(
  ( (BalanceConc!2303 (c!45384 Conc!1147)) )
))
(declare-fun isEmpty!2083 (BalanceConc!2302) Bool)

(declare-datatypes ((tuple2!3858 0))(
  ( (tuple2!3859 (_1!2145 BalanceConc!2302) (_2!2145 BalanceConc!2300)) )
))
(declare-fun lex!348 (LexerInterface!548 List!3531 BalanceConc!2300) tuple2!3858)

(assert (=> b!236945 (= res!109394 (isEmpty!2083 (_1!2145 (lex!348 thiss!17480 rules!1920 (seqFromList!701 lt!94426)))))))

(declare-fun b!236946 () Bool)

(declare-fun e!146650 () Bool)

(assert (=> b!236946 (= e!146650 e!146652)))

(declare-fun res!109360 () Bool)

(assert (=> b!236946 (=> (not res!109360) (not e!146652))))

(declare-fun lt!94428 () BalanceConc!2302)

(declare-fun rulesProduceEachTokenIndividually!340 (LexerInterface!548 List!3531 BalanceConc!2302) Bool)

(assert (=> b!236946 (= res!109360 (rulesProduceEachTokenIndividually!340 thiss!17480 rules!1920 lt!94428))))

(declare-fun seqFromList!702 (List!3532) BalanceConc!2302)

(assert (=> b!236946 (= lt!94428 (seqFromList!702 tokens!465))))

(declare-fun b!236947 () Bool)

(declare-fun res!109370 () Bool)

(assert (=> b!236947 (=> (not res!109370) (not e!146652))))

(assert (=> b!236947 (= res!109370 (is-Cons!3522 tokens!465))))

(declare-fun b!236948 () Bool)

(assert (=> b!236948 (= e!146652 e!146673)))

(declare-fun res!109369 () Bool)

(assert (=> b!236948 (=> (not res!109369) (not e!146673))))

(assert (=> b!236948 (= res!109369 (= lt!94431 lt!94449))))

(declare-fun lt!94432 () BalanceConc!2300)

(assert (=> b!236948 (= lt!94449 (list!1374 lt!94432))))

(declare-fun printWithSeparatorTokenWhenNeededRec!231 (LexerInterface!548 List!3531 BalanceConc!2302 Token!1068 Int) BalanceConc!2300)

(assert (=> b!236948 (= lt!94432 (printWithSeparatorTokenWhenNeededRec!231 thiss!17480 rules!1920 lt!94428 separatorToken!170 0))))

(declare-fun printWithSeparatorTokenWhenNeededList!241 (LexerInterface!548 List!3531 List!3532 Token!1068) List!3530)

(assert (=> b!236948 (= lt!94431 (printWithSeparatorTokenWhenNeededList!241 thiss!17480 rules!1920 tokens!465 separatorToken!170))))

(declare-fun b!236949 () Bool)

(declare-fun e!146664 () Bool)

(declare-fun e!146679 () Bool)

(declare-fun tp!94803 () Bool)

(declare-fun inv!4377 (Token!1068) Bool)

(assert (=> b!236949 (= e!146679 (and (inv!4377 (h!8919 tokens!465)) e!146664 tp!94803))))

(declare-fun b!236950 () Bool)

(declare-fun e!146678 () Bool)

(declare-fun lt!94461 () tuple2!3858)

(declare-fun isEmpty!2084 (BalanceConc!2300) Bool)

(assert (=> b!236950 (= e!146678 (isEmpty!2084 (_2!2145 lt!94461)))))

(declare-fun b!236951 () Bool)

(declare-datatypes ((Unit!4177 0))(
  ( (Unit!4178) )
))
(declare-fun e!146668 () Unit!4177)

(declare-fun Unit!4179 () Unit!4177)

(assert (=> b!236951 (= e!146668 Unit!4179)))

(declare-fun b!236952 () Bool)

(declare-fun res!109372 () Bool)

(assert (=> b!236952 (=> (not res!109372) (not e!146678))))

(declare-fun lt!94452 () Token!1068)

(declare-fun apply!653 (BalanceConc!2302 Int) Token!1068)

(assert (=> b!236952 (= res!109372 (= (apply!653 (_1!2145 lt!94461) 0) lt!94452))))

(declare-fun b!236953 () Bool)

(declare-fun e!146657 () Unit!4177)

(declare-fun Unit!4180 () Unit!4177)

(assert (=> b!236953 (= e!146657 Unit!4180)))

(declare-fun b!236954 () Bool)

(declare-fun res!109375 () Bool)

(declare-fun e!146672 () Bool)

(assert (=> b!236954 (=> (not res!109375) (not e!146672))))

(declare-fun lt!94417 () tuple2!3858)

(assert (=> b!236954 (= res!109375 (= (apply!653 (_1!2145 lt!94417) 0) separatorToken!170))))

(declare-fun b!236955 () Bool)

(declare-fun res!109367 () Bool)

(declare-fun e!146665 () Bool)

(assert (=> b!236955 (=> res!109367 e!146665)))

(declare-fun lt!94434 () List!3530)

(declare-fun filter!56 (List!3532 Int) List!3532)

(declare-datatypes ((tuple2!3860 0))(
  ( (tuple2!3861 (_1!2146 List!3532) (_2!2146 List!3530)) )
))
(declare-fun lexList!176 (LexerInterface!548 List!3531 List!3530) tuple2!3860)

(assert (=> b!236955 (= res!109367 (not (= (filter!56 (_1!2146 (lexList!176 thiss!17480 rules!1920 lt!94434)) lambda!7641) (t!34260 tokens!465))))))

(declare-fun b!236956 () Bool)

(assert (=> b!236956 (= e!146677 e!146665)))

(declare-fun res!109388 () Bool)

(assert (=> b!236956 (=> res!109388 e!146665)))

(declare-fun lt!94435 () List!3532)

(assert (=> b!236956 (= res!109388 (not (= (filter!56 lt!94435 lambda!7641) (t!34260 tokens!465))))))

(assert (=> b!236956 (= (filter!56 lt!94435 lambda!7641) (t!34260 tokens!465))))

(declare-fun lt!94457 () BalanceConc!2300)

(declare-fun list!1375 (BalanceConc!2302) List!3532)

(assert (=> b!236956 (= lt!94435 (list!1375 (_1!2145 (lex!348 thiss!17480 rules!1920 lt!94457))))))

(declare-fun lt!94430 () Unit!4177)

(declare-fun theoremInvertabilityFromTokensSepTokenWhenNeeded!47 (LexerInterface!548 List!3531 List!3532 Token!1068) Unit!4177)

(assert (=> b!236956 (= lt!94430 (theoremInvertabilityFromTokensSepTokenWhenNeeded!47 thiss!17480 rules!1920 (t!34260 tokens!465) separatorToken!170))))

(declare-fun lt!94451 () Option!678)

(assert (=> b!236956 (= lt!94451 (Some!677 (tuple2!3857 separatorToken!170 lt!94434)))))

(declare-fun lt!94441 () Unit!4177)

(declare-fun lemmaMaxPrefWithOtherTypeUsedCharAtStartOfSuffixReturnSame!53 (LexerInterface!548 List!3531 Token!1068 Rule!1124 List!3530 Rule!1124) Unit!4177)

(assert (=> b!236956 (= lt!94441 (lemmaMaxPrefWithOtherTypeUsedCharAtStartOfSuffixReturnSame!53 thiss!17480 rules!1920 separatorToken!170 (rule!1229 separatorToken!170) lt!94434 (rule!1229 lt!94452)))))

(declare-fun lt!94448 () Unit!4177)

(declare-fun e!146670 () Unit!4177)

(assert (=> b!236956 (= lt!94448 e!146670)))

(declare-fun c!45380 () Bool)

(declare-fun lt!94459 () C!2694)

(declare-fun contains!647 (List!3530 C!2694) Bool)

(declare-fun usedCharacters!67 (Regex!886) List!3530)

(assert (=> b!236956 (= c!45380 (contains!647 (usedCharacters!67 (regex!662 (rule!1229 separatorToken!170))) lt!94459))))

(declare-fun head!820 (List!3530) C!2694)

(assert (=> b!236956 (= lt!94459 (head!820 lt!94434))))

(declare-fun lt!94413 () Unit!4177)

(assert (=> b!236956 (= lt!94413 e!146668)))

(declare-fun c!45381 () Bool)

(declare-fun lt!94427 () C!2694)

(assert (=> b!236956 (= c!45381 (not (contains!647 (usedCharacters!67 (regex!662 (rule!1229 lt!94452))) lt!94427)))))

(declare-fun lt!94440 () List!3530)

(assert (=> b!236956 (= lt!94427 (head!820 lt!94440))))

(declare-fun e!146651 () Bool)

(assert (=> b!236956 e!146651))

(declare-fun res!109382 () Bool)

(assert (=> b!236956 (=> (not res!109382) (not e!146651))))

(declare-datatypes ((Option!679 0))(
  ( (None!678) (Some!678 (v!14413 Rule!1124)) )
))
(declare-fun lt!94447 () Option!679)

(declare-fun isDefined!530 (Option!679) Bool)

(assert (=> b!236956 (= res!109382 (isDefined!530 lt!94447))))

(declare-fun getRuleFromTag!103 (LexerInterface!548 List!3531 String!4502) Option!679)

(assert (=> b!236956 (= lt!94447 (getRuleFromTag!103 thiss!17480 rules!1920 (tag!866 (rule!1229 lt!94452))))))

(declare-fun lt!94443 () Unit!4177)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!103 (LexerInterface!548 List!3531 List!3530 Token!1068) Unit!4177)

(assert (=> b!236956 (= lt!94443 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!103 thiss!17480 rules!1920 lt!94440 lt!94452))))

(declare-fun charsOf!317 (Token!1068) BalanceConc!2300)

(assert (=> b!236956 (= lt!94440 (list!1374 (charsOf!317 lt!94452)))))

(declare-fun lt!94424 () Unit!4177)

(declare-fun forallContained!229 (List!3532 Int Token!1068) Unit!4177)

(assert (=> b!236956 (= lt!94424 (forallContained!229 tokens!465 lambda!7642 lt!94452))))

(assert (=> b!236956 e!146678))

(declare-fun res!109368 () Bool)

(assert (=> b!236956 (=> (not res!109368) (not e!146678))))

(declare-fun size!2819 (BalanceConc!2302) Int)

(assert (=> b!236956 (= res!109368 (= (size!2819 (_1!2145 lt!94461)) 1))))

(declare-fun lt!94450 () BalanceConc!2300)

(assert (=> b!236956 (= lt!94461 (lex!348 thiss!17480 rules!1920 lt!94450))))

(declare-fun lt!94429 () BalanceConc!2302)

(declare-fun printTailRec!242 (LexerInterface!548 BalanceConc!2302 Int BalanceConc!2300) BalanceConc!2300)

(assert (=> b!236956 (= lt!94450 (printTailRec!242 thiss!17480 lt!94429 0 (BalanceConc!2301 Empty!1146)))))

(declare-fun print!279 (LexerInterface!548 BalanceConc!2302) BalanceConc!2300)

(assert (=> b!236956 (= lt!94450 (print!279 thiss!17480 lt!94429))))

(declare-fun singletonSeq!214 (Token!1068) BalanceConc!2302)

(assert (=> b!236956 (= lt!94429 (singletonSeq!214 lt!94452))))

(declare-fun e!146666 () Bool)

(assert (=> b!236956 e!146666))

(declare-fun res!109386 () Bool)

(assert (=> b!236956 (=> (not res!109386) (not e!146666))))

(declare-fun lt!94425 () Option!679)

(assert (=> b!236956 (= res!109386 (isDefined!530 lt!94425))))

(assert (=> b!236956 (= lt!94425 (getRuleFromTag!103 thiss!17480 rules!1920 (tag!866 (rule!1229 separatorToken!170))))))

(declare-fun lt!94423 () Unit!4177)

(declare-fun lt!94463 () List!3530)

(assert (=> b!236956 (= lt!94423 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!103 thiss!17480 rules!1920 lt!94463 separatorToken!170))))

(assert (=> b!236956 e!146672))

(declare-fun res!109392 () Bool)

(assert (=> b!236956 (=> (not res!109392) (not e!146672))))

(assert (=> b!236956 (= res!109392 (= (size!2819 (_1!2145 lt!94417)) 1))))

(declare-fun lt!94436 () BalanceConc!2300)

(assert (=> b!236956 (= lt!94417 (lex!348 thiss!17480 rules!1920 lt!94436))))

(declare-fun lt!94464 () BalanceConc!2302)

(assert (=> b!236956 (= lt!94436 (printTailRec!242 thiss!17480 lt!94464 0 (BalanceConc!2301 Empty!1146)))))

(assert (=> b!236956 (= lt!94436 (print!279 thiss!17480 lt!94464))))

(assert (=> b!236956 (= lt!94464 (singletonSeq!214 separatorToken!170))))

(assert (=> b!236956 (rulesProduceIndividualToken!297 thiss!17480 rules!1920 lt!94452)))

(declare-fun lt!94442 () Unit!4177)

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!115 (LexerInterface!548 List!3531 List!3532 Token!1068) Unit!4177)

(assert (=> b!236956 (= lt!94442 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!115 thiss!17480 rules!1920 tokens!465 lt!94452))))

(assert (=> b!236956 (= lt!94452 (head!819 (t!34260 tokens!465)))))

(declare-fun lt!94456 () Unit!4177)

(assert (=> b!236956 (= lt!94456 e!146657)))

(declare-fun c!45379 () Bool)

(declare-fun isEmpty!2085 (List!3532) Bool)

(assert (=> b!236956 (= c!45379 (isEmpty!2085 (t!34260 tokens!465)))))

(declare-fun lt!94458 () List!3530)

(assert (=> b!236956 (= lt!94451 (maxPrefix!278 thiss!17480 rules!1920 lt!94458))))

(declare-fun lt!94460 () tuple2!3856)

(assert (=> b!236956 (= lt!94458 (_2!2144 lt!94460))))

(declare-fun lt!94439 () Unit!4177)

(declare-fun lemmaSamePrefixThenSameSuffix!183 (List!3530 List!3530 List!3530 List!3530 List!3530) Unit!4177)

(assert (=> b!236956 (= lt!94439 (lemmaSamePrefixThenSameSuffix!183 lt!94426 lt!94458 lt!94426 (_2!2144 lt!94460) lt!94431))))

(assert (=> b!236956 (= lt!94460 (get!1136 (maxPrefix!278 thiss!17480 rules!1920 lt!94431)))))

(declare-fun lt!94462 () List!3530)

(declare-fun isPrefix!358 (List!3530 List!3530) Bool)

(assert (=> b!236956 (isPrefix!358 lt!94426 lt!94462)))

(declare-fun lt!94418 () Unit!4177)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!253 (List!3530 List!3530) Unit!4177)

(assert (=> b!236956 (= lt!94418 (lemmaConcatTwoListThenFirstIsPrefix!253 lt!94426 lt!94458))))

(declare-fun e!146674 () Bool)

(assert (=> b!236956 e!146674))

(declare-fun res!109385 () Bool)

(assert (=> b!236956 (=> res!109385 e!146674)))

(assert (=> b!236956 (= res!109385 (isEmpty!2085 tokens!465))))

(declare-fun lt!94421 () Unit!4177)

(declare-fun lemmaPrintWithSepTokenWhenNeededThenMaxPrefReturnsHead!123 (LexerInterface!548 List!3531 List!3532 Token!1068) Unit!4177)

(assert (=> b!236956 (= lt!94421 (lemmaPrintWithSepTokenWhenNeededThenMaxPrefReturnsHead!123 thiss!17480 rules!1920 tokens!465 separatorToken!170))))

(declare-fun b!236957 () Bool)

(declare-fun e!146662 () Bool)

(assert (=> b!236957 (= e!146662 e!146656)))

(declare-fun res!109384 () Bool)

(assert (=> b!236957 (=> res!109384 e!146656)))

(declare-fun lt!94419 () List!3530)

(declare-fun lt!94455 () List!3530)

(assert (=> b!236957 (= res!109384 (or (not (= lt!94455 lt!94419)) (not (= lt!94419 lt!94426)) (not (= lt!94455 lt!94426))))))

(declare-fun printList!232 (LexerInterface!548 List!3532) List!3530)

(assert (=> b!236957 (= lt!94419 (printList!232 thiss!17480 (Cons!3522 (h!8919 tokens!465) Nil!3522)))))

(declare-fun lt!94422 () BalanceConc!2300)

(assert (=> b!236957 (= lt!94455 (list!1374 lt!94422))))

(declare-fun lt!94415 () BalanceConc!2302)

(assert (=> b!236957 (= lt!94422 (printTailRec!242 thiss!17480 lt!94415 0 (BalanceConc!2301 Empty!1146)))))

(assert (=> b!236957 (= lt!94422 (print!279 thiss!17480 lt!94415))))

(assert (=> b!236957 (= lt!94415 (singletonSeq!214 (h!8919 tokens!465)))))

(declare-fun b!236958 () Bool)

(declare-fun e!146667 () Bool)

(assert (=> b!236958 (= e!146667 e!146662)))

(declare-fun res!109362 () Bool)

(assert (=> b!236958 (=> res!109362 e!146662)))

(declare-fun e!146658 () Bool)

(assert (=> b!236958 (= res!109362 e!146658)))

(declare-fun res!109393 () Bool)

(assert (=> b!236958 (=> (not res!109393) (not e!146658))))

(assert (=> b!236958 (= res!109393 (not lt!94445))))

(assert (=> b!236958 (= lt!94445 (= lt!94431 lt!94462))))

(declare-fun e!146660 () Bool)

(assert (=> b!236959 (= e!146660 (and tp!94805 tp!94811))))

(declare-fun b!236960 () Bool)

(declare-fun tp!94810 () Bool)

(declare-fun e!146682 () Bool)

(declare-fun e!146684 () Bool)

(declare-fun inv!4374 (String!4502) Bool)

(declare-fun inv!4378 (TokenValueInjection!1140) Bool)

(assert (=> b!236960 (= e!146684 (and tp!94810 (inv!4374 (tag!866 (rule!1229 (h!8919 tokens!465)))) (inv!4378 (transformation!662 (rule!1229 (h!8919 tokens!465)))) e!146682))))

(declare-fun b!236961 () Bool)

(declare-fun e!146680 () Bool)

(declare-fun e!146681 () Bool)

(declare-fun tp!94808 () Bool)

(assert (=> b!236961 (= e!146680 (and e!146681 tp!94808))))

(declare-fun e!146683 () Bool)

(declare-fun tp!94814 () Bool)

(declare-fun b!236962 () Bool)

(declare-fun e!146675 () Bool)

(assert (=> b!236962 (= e!146683 (and tp!94814 (inv!4374 (tag!866 (rule!1229 separatorToken!170))) (inv!4378 (transformation!662 (rule!1229 separatorToken!170))) e!146675))))

(declare-fun b!236963 () Bool)

(declare-fun Unit!4181 () Unit!4177)

(assert (=> b!236963 (= e!146668 Unit!4181)))

(declare-fun lt!94446 () Unit!4177)

(declare-fun lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!61 (Regex!886 List!3530 C!2694) Unit!4177)

(assert (=> b!236963 (= lt!94446 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!61 (regex!662 (rule!1229 lt!94452)) lt!94440 lt!94427))))

(declare-fun res!109378 () Bool)

(declare-fun matchR!224 (Regex!886 List!3530) Bool)

(assert (=> b!236963 (= res!109378 (not (matchR!224 (regex!662 (rule!1229 lt!94452)) lt!94440)))))

(declare-fun e!146671 () Bool)

(assert (=> b!236963 (=> (not res!109378) (not e!146671))))

(assert (=> b!236963 e!146671))

(declare-fun b!236964 () Bool)

(assert (=> b!236964 (= e!146674 e!146648)))

(declare-fun res!109395 () Bool)

(assert (=> b!236964 (=> (not res!109395) (not e!146648))))

(assert (=> b!236964 (= res!109395 (isDefined!529 lt!94437))))

(assert (=> b!236964 (= lt!94437 (maxPrefix!278 thiss!17480 rules!1920 lt!94431))))

(declare-fun b!236965 () Bool)

(declare-fun Unit!4182 () Unit!4177)

(assert (=> b!236965 (= e!146657 Unit!4182)))

(assert (=> b!236965 false))

(declare-fun b!236966 () Bool)

(declare-fun res!109363 () Bool)

(assert (=> b!236966 (=> res!109363 e!146656)))

(assert (=> b!236966 (= res!109363 (not (rulesProduceIndividualToken!297 thiss!17480 rules!1920 (h!8919 tokens!465))))))

(declare-fun b!236967 () Bool)

(assert (=> b!236967 (= e!146663 (matchR!224 (regex!662 (rule!1229 (h!8919 tokens!465))) lt!94426))))

(declare-fun b!236968 () Bool)

(assert (=> b!236968 (= e!146671 false)))

(assert (=> b!236969 (= e!146656 e!146659)))

(declare-fun res!109366 () Bool)

(assert (=> b!236969 (=> res!109366 e!146659)))

(declare-datatypes ((tuple2!3862 0))(
  ( (tuple2!3863 (_1!2147 Token!1068) (_2!2147 BalanceConc!2300)) )
))
(declare-datatypes ((Option!680 0))(
  ( (None!679) (Some!679 (v!14414 tuple2!3862)) )
))
(declare-fun isDefined!531 (Option!680) Bool)

(declare-fun maxPrefixZipperSequence!241 (LexerInterface!548 List!3531 BalanceConc!2300) Option!680)

(assert (=> b!236969 (= res!109366 (not (isDefined!531 (maxPrefixZipperSequence!241 thiss!17480 rules!1920 (seqFromList!701 (originalCharacters!705 (h!8919 tokens!465)))))))))

(declare-fun lt!94438 () Unit!4177)

(assert (=> b!236969 (= lt!94438 (forallContained!229 tokens!465 lambda!7642 (h!8919 tokens!465)))))

(assert (=> b!236969 (= lt!94426 (originalCharacters!705 (h!8919 tokens!465)))))

(declare-fun res!109390 () Bool)

(assert (=> b!236970 (=> (not res!109390) (not e!146652))))

(declare-fun forall!806 (List!3532 Int) Bool)

(assert (=> b!236970 (= res!109390 (forall!806 tokens!465 lambda!7641))))

(declare-fun b!236971 () Bool)

(declare-fun Unit!4183 () Unit!4177)

(assert (=> b!236971 (= e!146670 Unit!4183)))

(declare-fun lt!94433 () Unit!4177)

(declare-fun lemmaSepRuleNotContainsCharContainedInANonSepRule!55 (LexerInterface!548 List!3531 List!3531 Rule!1124 Rule!1124 C!2694) Unit!4177)

(assert (=> b!236971 (= lt!94433 (lemmaSepRuleNotContainsCharContainedInANonSepRule!55 thiss!17480 rules!1920 rules!1920 (rule!1229 lt!94452) (rule!1229 separatorToken!170) lt!94459))))

(assert (=> b!236971 false))

(declare-fun b!236972 () Bool)

(assert (=> b!236972 (= e!146672 (isEmpty!2084 (_2!2145 lt!94417)))))

(declare-fun b!236973 () Bool)

(declare-fun e!146654 () Bool)

(assert (=> b!236973 (= e!146666 e!146654)))

(declare-fun res!109391 () Bool)

(assert (=> b!236973 (=> (not res!109391) (not e!146654))))

(declare-fun lt!94454 () Rule!1124)

(assert (=> b!236973 (= res!109391 (matchR!224 (regex!662 lt!94454) lt!94463))))

(declare-fun get!1137 (Option!679) Rule!1124)

(assert (=> b!236973 (= lt!94454 (get!1137 lt!94425))))

(assert (=> b!236974 (= e!146682 (and tp!94807 tp!94804))))

(declare-fun b!236975 () Bool)

(declare-fun ++!891 (List!3530 List!3530) List!3530)

(assert (=> b!236975 (= e!146658 (not (= lt!94431 (++!891 lt!94426 lt!94434))))))

(declare-fun e!146669 () Bool)

(declare-fun tp!94809 () Bool)

(declare-fun b!236976 () Bool)

(declare-fun inv!21 (TokenValue!684) Bool)

(assert (=> b!236976 (= e!146669 (and (inv!21 (value!23184 separatorToken!170)) e!146683 tp!94809))))

(assert (=> b!236977 (= e!146675 (and tp!94813 tp!94806))))

(declare-fun b!236978 () Bool)

(declare-fun e!146661 () Bool)

(assert (=> b!236978 (= e!146651 e!146661)))

(declare-fun res!109364 () Bool)

(assert (=> b!236978 (=> (not res!109364) (not e!146661))))

(declare-fun lt!94416 () Rule!1124)

(assert (=> b!236978 (= res!109364 (matchR!224 (regex!662 lt!94416) lt!94440))))

(assert (=> b!236978 (= lt!94416 (get!1137 lt!94447))))

(declare-fun b!236979 () Bool)

(declare-fun tp!94812 () Bool)

(assert (=> b!236979 (= e!146681 (and tp!94812 (inv!4374 (tag!866 (h!8918 rules!1920))) (inv!4378 (transformation!662 (h!8918 rules!1920))) e!146660))))

(declare-fun res!109371 () Bool)

(assert (=> start!25240 (=> (not res!109371) (not e!146650))))

(assert (=> start!25240 (= res!109371 (is-Lexer!546 thiss!17480))))

(assert (=> start!25240 e!146650))

(assert (=> start!25240 true))

(assert (=> start!25240 e!146680))

(assert (=> start!25240 (and (inv!4377 separatorToken!170) e!146669)))

(assert (=> start!25240 e!146679))

(declare-fun b!236980 () Bool)

(declare-fun res!109361 () Bool)

(assert (=> b!236980 (=> res!109361 e!146665)))

(assert (=> b!236980 (= res!109361 (not (= (filter!56 (list!1375 (_1!2145 (lex!348 thiss!17480 rules!1920 lt!94432))) lambda!7641) tokens!465)))))

(declare-fun b!236981 () Bool)

(declare-fun res!109374 () Bool)

(assert (=> b!236981 (=> res!109374 e!146665)))

(assert (=> b!236981 (= res!109374 (not (= (filter!56 (_1!2146 (lexList!176 thiss!17480 rules!1920 lt!94431)) lambda!7641) tokens!465)))))

(declare-fun b!236982 () Bool)

(assert (=> b!236982 (= e!146654 (= (rule!1229 separatorToken!170) lt!94454))))

(declare-fun b!236983 () Bool)

(assert (=> b!236983 (= e!146661 (= (rule!1229 lt!94452) lt!94416))))

(declare-fun b!236984 () Bool)

(declare-fun tp!94802 () Bool)

(assert (=> b!236984 (= e!146664 (and (inv!21 (value!23184 (h!8919 tokens!465))) e!146684 tp!94802))))

(declare-fun b!236985 () Bool)

(assert (=> b!236985 (= e!146665 (<= 0 (size!2819 lt!94428)))))

(declare-fun b!236986 () Bool)

(declare-fun res!109376 () Bool)

(assert (=> b!236986 (=> (not res!109376) (not e!146650))))

(declare-fun isEmpty!2086 (List!3531) Bool)

(assert (=> b!236986 (= res!109376 (not (isEmpty!2086 rules!1920)))))

(declare-fun b!236987 () Bool)

(declare-fun Unit!4184 () Unit!4177)

(assert (=> b!236987 (= e!146670 Unit!4184)))

(declare-fun b!236988 () Bool)

(declare-fun res!109365 () Bool)

(assert (=> b!236988 (=> (not res!109365) (not e!146663))))

(declare-fun isEmpty!2087 (List!3530) Bool)

(assert (=> b!236988 (= res!109365 (isEmpty!2087 (_2!2144 lt!94453)))))

(declare-fun b!236989 () Bool)

(declare-fun res!109380 () Bool)

(assert (=> b!236989 (=> (not res!109380) (not e!146650))))

(declare-fun rulesInvariant!514 (LexerInterface!548 List!3531) Bool)

(assert (=> b!236989 (= res!109380 (rulesInvariant!514 thiss!17480 rules!1920))))

(declare-fun b!236990 () Bool)

(declare-fun res!109381 () Bool)

(assert (=> b!236990 (=> (not res!109381) (not e!146652))))

(declare-fun sepAndNonSepRulesDisjointChars!251 (List!3531 List!3531) Bool)

(assert (=> b!236990 (= res!109381 (sepAndNonSepRulesDisjointChars!251 rules!1920 rules!1920))))

(declare-fun b!236991 () Bool)

(assert (=> b!236991 (= e!146673 (not e!146667))))

(declare-fun res!109389 () Bool)

(assert (=> b!236991 (=> res!109389 e!146667)))

(assert (=> b!236991 (= res!109389 (not (= lt!94434 (list!1374 lt!94457))))))

(assert (=> b!236991 (= lt!94457 (printWithSeparatorTokenWhenNeededRec!231 thiss!17480 rules!1920 (seqFromList!702 (t!34260 tokens!465)) separatorToken!170 0))))

(declare-fun lt!94414 () List!3530)

(assert (=> b!236991 (= lt!94414 lt!94462)))

(assert (=> b!236991 (= lt!94462 (++!891 lt!94426 lt!94458))))

(assert (=> b!236991 (= lt!94414 (++!891 (++!891 lt!94426 lt!94463) lt!94434))))

(declare-fun lt!94444 () Unit!4177)

(declare-fun lemmaConcatAssociativity!365 (List!3530 List!3530 List!3530) Unit!4177)

(assert (=> b!236991 (= lt!94444 (lemmaConcatAssociativity!365 lt!94426 lt!94463 lt!94434))))

(assert (=> b!236991 (= lt!94426 (list!1374 (charsOf!317 (h!8919 tokens!465))))))

(assert (=> b!236991 (= lt!94458 (++!891 lt!94463 lt!94434))))

(assert (=> b!236991 (= lt!94434 (printWithSeparatorTokenWhenNeededList!241 thiss!17480 rules!1920 (t!34260 tokens!465) separatorToken!170))))

(assert (=> b!236991 (= lt!94463 (list!1374 (charsOf!317 separatorToken!170)))))

(declare-fun b!236992 () Bool)

(declare-fun res!109387 () Bool)

(assert (=> b!236992 (=> (not res!109387) (not e!146652))))

(assert (=> b!236992 (= res!109387 (isSeparator!662 (rule!1229 separatorToken!170)))))

(assert (= (and start!25240 res!109371) b!236986))

(assert (= (and b!236986 res!109376) b!236989))

(assert (= (and b!236989 res!109380) b!236946))

(assert (= (and b!236946 res!109360) b!236943))

(assert (= (and b!236943 res!109379) b!236992))

(assert (= (and b!236992 res!109387) b!236970))

(assert (= (and b!236970 res!109390) b!236990))

(assert (= (and b!236990 res!109381) b!236947))

(assert (= (and b!236947 res!109370) b!236948))

(assert (= (and b!236948 res!109369) b!236944))

(assert (= (and b!236944 res!109373) b!236991))

(assert (= (and b!236991 (not res!109389)) b!236958))

(assert (= (and b!236958 res!109393) b!236975))

(assert (= (and b!236958 (not res!109362)) b!236957))

(assert (= (and b!236957 (not res!109384)) b!236966))

(assert (= (and b!236966 (not res!109363)) b!236945))

(assert (= (and b!236945 (not res!109394)) b!236969))

(assert (= (and b!236969 (not res!109366)) b!236941))

(assert (= (and b!236941 res!109377) b!236988))

(assert (= (and b!236988 res!109365) b!236967))

(assert (= (and b!236941 (not res!109383)) b!236956))

(assert (= (and b!236956 (not res!109385)) b!236964))

(assert (= (and b!236964 res!109395) b!236942))

(assert (= (and b!236956 c!45379) b!236965))

(assert (= (and b!236956 (not c!45379)) b!236953))

(assert (= (and b!236956 res!109392) b!236954))

(assert (= (and b!236954 res!109375) b!236972))

(assert (= (and b!236956 res!109386) b!236973))

(assert (= (and b!236973 res!109391) b!236982))

(assert (= (and b!236956 res!109368) b!236952))

(assert (= (and b!236952 res!109372) b!236950))

(assert (= (and b!236956 res!109382) b!236978))

(assert (= (and b!236978 res!109364) b!236983))

(assert (= (and b!236956 c!45381) b!236963))

(assert (= (and b!236956 (not c!45381)) b!236951))

(assert (= (and b!236963 res!109378) b!236968))

(assert (= (and b!236956 c!45380) b!236971))

(assert (= (and b!236956 (not c!45380)) b!236987))

(assert (= (and b!236956 (not res!109388)) b!236955))

(assert (= (and b!236955 (not res!109367)) b!236981))

(assert (= (and b!236981 (not res!109374)) b!236980))

(assert (= (and b!236980 (not res!109361)) b!236985))

(assert (= b!236979 b!236959))

(assert (= b!236961 b!236979))

(assert (= (and start!25240 (is-Cons!3521 rules!1920)) b!236961))

(assert (= b!236962 b!236977))

(assert (= b!236976 b!236962))

(assert (= start!25240 b!236976))

(assert (= b!236960 b!236974))

(assert (= b!236984 b!236960))

(assert (= b!236949 b!236984))

(assert (= (and start!25240 (is-Cons!3522 tokens!465)) b!236949))

(declare-fun m!284779 () Bool)

(assert (=> b!236942 m!284779))

(declare-fun m!284781 () Bool)

(assert (=> b!236942 m!284781))

(declare-fun m!284783 () Bool)

(assert (=> b!236946 m!284783))

(declare-fun m!284785 () Bool)

(assert (=> b!236946 m!284785))

(declare-fun m!284787 () Bool)

(assert (=> b!236944 m!284787))

(assert (=> b!236944 m!284787))

(declare-fun m!284789 () Bool)

(assert (=> b!236944 m!284789))

(declare-fun m!284791 () Bool)

(assert (=> b!236984 m!284791))

(declare-fun m!284793 () Bool)

(assert (=> b!236980 m!284793))

(declare-fun m!284795 () Bool)

(assert (=> b!236980 m!284795))

(assert (=> b!236980 m!284795))

(declare-fun m!284797 () Bool)

(assert (=> b!236980 m!284797))

(declare-fun m!284799 () Bool)

(assert (=> b!236989 m!284799))

(declare-fun m!284801 () Bool)

(assert (=> b!236941 m!284801))

(declare-fun m!284803 () Bool)

(assert (=> b!236941 m!284803))

(declare-fun m!284805 () Bool)

(assert (=> b!236941 m!284805))

(declare-fun m!284807 () Bool)

(assert (=> b!236990 m!284807))

(declare-fun m!284809 () Bool)

(assert (=> b!236976 m!284809))

(declare-fun m!284811 () Bool)

(assert (=> b!236963 m!284811))

(declare-fun m!284813 () Bool)

(assert (=> b!236963 m!284813))

(declare-fun m!284815 () Bool)

(assert (=> b!236948 m!284815))

(declare-fun m!284817 () Bool)

(assert (=> b!236948 m!284817))

(declare-fun m!284819 () Bool)

(assert (=> b!236948 m!284819))

(declare-fun m!284821 () Bool)

(assert (=> b!236956 m!284821))

(declare-fun m!284823 () Bool)

(assert (=> b!236956 m!284823))

(declare-fun m!284825 () Bool)

(assert (=> b!236956 m!284825))

(declare-fun m!284827 () Bool)

(assert (=> b!236956 m!284827))

(declare-fun m!284829 () Bool)

(assert (=> b!236956 m!284829))

(declare-fun m!284831 () Bool)

(assert (=> b!236956 m!284831))

(declare-fun m!284833 () Bool)

(assert (=> b!236956 m!284833))

(declare-fun m!284835 () Bool)

(assert (=> b!236956 m!284835))

(declare-fun m!284837 () Bool)

(assert (=> b!236956 m!284837))

(declare-fun m!284839 () Bool)

(assert (=> b!236956 m!284839))

(declare-fun m!284841 () Bool)

(assert (=> b!236956 m!284841))

(declare-fun m!284843 () Bool)

(assert (=> b!236956 m!284843))

(declare-fun m!284845 () Bool)

(assert (=> b!236956 m!284845))

(declare-fun m!284847 () Bool)

(assert (=> b!236956 m!284847))

(declare-fun m!284849 () Bool)

(assert (=> b!236956 m!284849))

(declare-fun m!284851 () Bool)

(assert (=> b!236956 m!284851))

(declare-fun m!284853 () Bool)

(assert (=> b!236956 m!284853))

(declare-fun m!284855 () Bool)

(assert (=> b!236956 m!284855))

(declare-fun m!284857 () Bool)

(assert (=> b!236956 m!284857))

(declare-fun m!284859 () Bool)

(assert (=> b!236956 m!284859))

(declare-fun m!284861 () Bool)

(assert (=> b!236956 m!284861))

(declare-fun m!284863 () Bool)

(assert (=> b!236956 m!284863))

(declare-fun m!284865 () Bool)

(assert (=> b!236956 m!284865))

(declare-fun m!284867 () Bool)

(assert (=> b!236956 m!284867))

(declare-fun m!284869 () Bool)

(assert (=> b!236956 m!284869))

(declare-fun m!284871 () Bool)

(assert (=> b!236956 m!284871))

(declare-fun m!284873 () Bool)

(assert (=> b!236956 m!284873))

(declare-fun m!284875 () Bool)

(assert (=> b!236956 m!284875))

(declare-fun m!284877 () Bool)

(assert (=> b!236956 m!284877))

(declare-fun m!284879 () Bool)

(assert (=> b!236956 m!284879))

(assert (=> b!236956 m!284831))

(declare-fun m!284881 () Bool)

(assert (=> b!236956 m!284881))

(assert (=> b!236956 m!284871))

(declare-fun m!284883 () Bool)

(assert (=> b!236956 m!284883))

(declare-fun m!284885 () Bool)

(assert (=> b!236956 m!284885))

(assert (=> b!236956 m!284843))

(declare-fun m!284887 () Bool)

(assert (=> b!236956 m!284887))

(declare-fun m!284889 () Bool)

(assert (=> b!236956 m!284889))

(declare-fun m!284891 () Bool)

(assert (=> b!236956 m!284891))

(assert (=> b!236956 m!284841))

(assert (=> b!236956 m!284833))

(declare-fun m!284893 () Bool)

(assert (=> b!236956 m!284893))

(declare-fun m!284895 () Bool)

(assert (=> b!236956 m!284895))

(declare-fun m!284897 () Bool)

(assert (=> b!236956 m!284897))

(declare-fun m!284899 () Bool)

(assert (=> b!236956 m!284899))

(declare-fun m!284901 () Bool)

(assert (=> b!236956 m!284901))

(declare-fun m!284903 () Bool)

(assert (=> b!236956 m!284903))

(declare-fun m!284905 () Bool)

(assert (=> b!236969 m!284905))

(assert (=> b!236969 m!284905))

(declare-fun m!284907 () Bool)

(assert (=> b!236969 m!284907))

(assert (=> b!236969 m!284907))

(declare-fun m!284909 () Bool)

(assert (=> b!236969 m!284909))

(declare-fun m!284911 () Bool)

(assert (=> b!236969 m!284911))

(declare-fun m!284913 () Bool)

(assert (=> b!236945 m!284913))

(assert (=> b!236945 m!284913))

(declare-fun m!284915 () Bool)

(assert (=> b!236945 m!284915))

(declare-fun m!284917 () Bool)

(assert (=> b!236945 m!284917))

(declare-fun m!284919 () Bool)

(assert (=> b!236979 m!284919))

(declare-fun m!284921 () Bool)

(assert (=> b!236979 m!284921))

(declare-fun m!284923 () Bool)

(assert (=> b!236949 m!284923))

(declare-fun m!284925 () Bool)

(assert (=> b!236952 m!284925))

(declare-fun m!284927 () Bool)

(assert (=> b!236943 m!284927))

(declare-fun m!284929 () Bool)

(assert (=> b!236960 m!284929))

(declare-fun m!284931 () Bool)

(assert (=> b!236960 m!284931))

(declare-fun m!284933 () Bool)

(assert (=> start!25240 m!284933))

(declare-fun m!284935 () Bool)

(assert (=> b!236962 m!284935))

(declare-fun m!284937 () Bool)

(assert (=> b!236962 m!284937))

(declare-fun m!284939 () Bool)

(assert (=> b!236970 m!284939))

(declare-fun m!284941 () Bool)

(assert (=> b!236966 m!284941))

(declare-fun m!284943 () Bool)

(assert (=> b!236991 m!284943))

(declare-fun m!284945 () Bool)

(assert (=> b!236991 m!284945))

(declare-fun m!284947 () Bool)

(assert (=> b!236991 m!284947))

(declare-fun m!284949 () Bool)

(assert (=> b!236991 m!284949))

(declare-fun m!284951 () Bool)

(assert (=> b!236991 m!284951))

(assert (=> b!236991 m!284947))

(declare-fun m!284953 () Bool)

(assert (=> b!236991 m!284953))

(declare-fun m!284955 () Bool)

(assert (=> b!236991 m!284955))

(assert (=> b!236991 m!284951))

(declare-fun m!284957 () Bool)

(assert (=> b!236991 m!284957))

(declare-fun m!284959 () Bool)

(assert (=> b!236991 m!284959))

(declare-fun m!284961 () Bool)

(assert (=> b!236991 m!284961))

(declare-fun m!284963 () Bool)

(assert (=> b!236991 m!284963))

(declare-fun m!284965 () Bool)

(assert (=> b!236991 m!284965))

(assert (=> b!236991 m!284959))

(declare-fun m!284967 () Bool)

(assert (=> b!236991 m!284967))

(assert (=> b!236991 m!284963))

(declare-fun m!284969 () Bool)

(assert (=> b!236975 m!284969))

(declare-fun m!284971 () Bool)

(assert (=> b!236957 m!284971))

(declare-fun m!284973 () Bool)

(assert (=> b!236957 m!284973))

(declare-fun m!284975 () Bool)

(assert (=> b!236957 m!284975))

(declare-fun m!284977 () Bool)

(assert (=> b!236957 m!284977))

(declare-fun m!284979 () Bool)

(assert (=> b!236957 m!284979))

(declare-fun m!284981 () Bool)

(assert (=> b!236967 m!284981))

(declare-fun m!284983 () Bool)

(assert (=> b!236971 m!284983))

(declare-fun m!284985 () Bool)

(assert (=> b!236978 m!284985))

(declare-fun m!284987 () Bool)

(assert (=> b!236978 m!284987))

(declare-fun m!284989 () Bool)

(assert (=> b!236954 m!284989))

(declare-fun m!284991 () Bool)

(assert (=> b!236981 m!284991))

(declare-fun m!284993 () Bool)

(assert (=> b!236981 m!284993))

(declare-fun m!284995 () Bool)

(assert (=> b!236985 m!284995))

(declare-fun m!284997 () Bool)

(assert (=> b!236988 m!284997))

(declare-fun m!284999 () Bool)

(assert (=> b!236973 m!284999))

(declare-fun m!285001 () Bool)

(assert (=> b!236973 m!285001))

(declare-fun m!285003 () Bool)

(assert (=> b!236986 m!285003))

(declare-fun m!285005 () Bool)

(assert (=> b!236964 m!285005))

(assert (=> b!236964 m!284831))

(declare-fun m!285007 () Bool)

(assert (=> b!236955 m!285007))

(declare-fun m!285009 () Bool)

(assert (=> b!236955 m!285009))

(declare-fun m!285011 () Bool)

(assert (=> b!236972 m!285011))

(declare-fun m!285013 () Bool)

(assert (=> b!236950 m!285013))

(push 1)

(assert (not b!236978))

(assert (not b!236985))

(assert (not b!236960))

(assert b_and!17683)

(assert (not b!236981))

(assert (not b!236946))

(assert (not b!236950))

(assert (not b!236944))

(assert (not b!236986))

(assert (not b!236948))

(assert (not b!236980))

(assert (not b!236962))

(assert (not b!236942))

(assert (not b!236967))

(assert (not b!236941))

(assert (not b_next!8795))

(assert (not b!236952))

(assert (not b!236964))

(assert (not b!236990))

(assert (not b!236976))

(assert b_and!17681)

(assert (not b!237001))

(assert (not b_next!8797))

(assert (not b!236969))

(assert (not b!236989))

(assert (not b_next!8789))

(assert (not b!236988))

(assert (not start!25240))

(assert (not b!236943))

(assert (not b!236973))

(assert (not b!236970))

(assert (not b!236956))

(assert (not b!236984))

(assert (not b!236961))

(assert (not b!236971))

(assert (not b!236975))

(assert (not b!236955))

(assert (not b!236949))

(assert b_and!17685)

(assert (not b!236963))

(assert (not b!236991))

(assert (not b!236957))

(assert (not b!236972))

(assert (not b!236945))

(assert (not b!236954))

(assert (not b!236979))

(assert (not b!236966))

(assert (not b_next!8799))

(assert (not b_next!8791))

(assert (not b_next!8793))

(assert b_and!17691)

(assert b_and!17689)

(assert b_and!17687)

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!8795))

(assert b_and!17681)

(assert b_and!17683)

(assert b_and!17685)

(assert (not b_next!8789))

(assert (not b_next!8797))

(assert (not b_next!8799))

(assert (not b_next!8791))

(assert (not b_next!8793))

(assert b_and!17691)

(assert b_and!17689)

(assert b_and!17687)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!237187 () Bool)

(declare-fun res!109517 () Bool)

(declare-fun e!146826 () Bool)

(assert (=> b!237187 (=> (not res!109517) (not e!146826))))

(declare-fun lt!94623 () List!3532)

(declare-fun content!490 (List!3532) (Set Token!1068))

(assert (=> b!237187 (= res!109517 (set.subset (content!490 lt!94623) (content!490 (list!1375 (_1!2145 (lex!348 thiss!17480 rules!1920 lt!94432))))))))

(declare-fun b!237188 () Bool)

(declare-fun e!146825 () List!3532)

(declare-fun call!12279 () List!3532)

(assert (=> b!237188 (= e!146825 call!12279)))

(declare-fun bm!12274 () Bool)

(assert (=> bm!12274 (= call!12279 (filter!56 (t!34260 (list!1375 (_1!2145 (lex!348 thiss!17480 rules!1920 lt!94432)))) lambda!7641))))

(declare-fun b!237189 () Bool)

(declare-fun e!146824 () List!3532)

(assert (=> b!237189 (= e!146824 Nil!3522)))

(declare-fun d!66183 () Bool)

(assert (=> d!66183 e!146826))

(declare-fun res!109516 () Bool)

(assert (=> d!66183 (=> (not res!109516) (not e!146826))))

(declare-fun size!2822 (List!3532) Int)

(assert (=> d!66183 (= res!109516 (<= (size!2822 lt!94623) (size!2822 (list!1375 (_1!2145 (lex!348 thiss!17480 rules!1920 lt!94432))))))))

(assert (=> d!66183 (= lt!94623 e!146824)))

(declare-fun c!45402 () Bool)

(assert (=> d!66183 (= c!45402 (is-Nil!3522 (list!1375 (_1!2145 (lex!348 thiss!17480 rules!1920 lt!94432)))))))

(assert (=> d!66183 (= (filter!56 (list!1375 (_1!2145 (lex!348 thiss!17480 rules!1920 lt!94432))) lambda!7641) lt!94623)))

(declare-fun b!237190 () Bool)

(assert (=> b!237190 (= e!146825 (Cons!3522 (h!8919 (list!1375 (_1!2145 (lex!348 thiss!17480 rules!1920 lt!94432)))) call!12279))))

(declare-fun b!237191 () Bool)

(assert (=> b!237191 (= e!146826 (forall!806 lt!94623 lambda!7641))))

(declare-fun b!237192 () Bool)

(assert (=> b!237192 (= e!146824 e!146825)))

(declare-fun c!45403 () Bool)

(declare-fun dynLambda!1676 (Int Token!1068) Bool)

(assert (=> b!237192 (= c!45403 (dynLambda!1676 lambda!7641 (h!8919 (list!1375 (_1!2145 (lex!348 thiss!17480 rules!1920 lt!94432))))))))

(assert (= (and d!66183 c!45402) b!237189))

(assert (= (and d!66183 (not c!45402)) b!237192))

(assert (= (and b!237192 c!45403) b!237190))

(assert (= (and b!237192 (not c!45403)) b!237188))

(assert (= (or b!237190 b!237188) bm!12274))

(assert (= (and d!66183 res!109516) b!237187))

(assert (= (and b!237187 res!109517) b!237191))

(declare-fun b_lambda!6743 () Bool)

(assert (=> (not b_lambda!6743) (not b!237192)))

(declare-fun m!285251 () Bool)

(assert (=> bm!12274 m!285251))

(declare-fun m!285253 () Bool)

(assert (=> b!237191 m!285253))

(declare-fun m!285255 () Bool)

(assert (=> b!237187 m!285255))

(assert (=> b!237187 m!284795))

(declare-fun m!285257 () Bool)

(assert (=> b!237187 m!285257))

(declare-fun m!285259 () Bool)

(assert (=> b!237192 m!285259))

(declare-fun m!285261 () Bool)

(assert (=> d!66183 m!285261))

(assert (=> d!66183 m!284795))

(declare-fun m!285263 () Bool)

(assert (=> d!66183 m!285263))

(assert (=> b!236980 d!66183))

(declare-fun d!66185 () Bool)

(declare-fun list!1378 (Conc!1147) List!3532)

(assert (=> d!66185 (= (list!1375 (_1!2145 (lex!348 thiss!17480 rules!1920 lt!94432))) (list!1378 (c!45384 (_1!2145 (lex!348 thiss!17480 rules!1920 lt!94432)))))))

(declare-fun bs!25325 () Bool)

(assert (= bs!25325 d!66185))

(declare-fun m!285265 () Bool)

(assert (=> bs!25325 m!285265))

(assert (=> b!236980 d!66185))

(declare-fun d!66187 () Bool)

(declare-fun e!146833 () Bool)

(assert (=> d!66187 e!146833))

(declare-fun res!109530 () Bool)

(assert (=> d!66187 (=> (not res!109530) (not e!146833))))

(declare-fun e!146834 () Bool)

(assert (=> d!66187 (= res!109530 e!146834)))

(declare-fun c!45406 () Bool)

(declare-fun lt!94626 () tuple2!3858)

(assert (=> d!66187 (= c!45406 (> (size!2819 (_1!2145 lt!94626)) 0))))

(declare-fun lexTailRecV2!147 (LexerInterface!548 List!3531 BalanceConc!2300 BalanceConc!2300 BalanceConc!2300 BalanceConc!2302) tuple2!3858)

(assert (=> d!66187 (= lt!94626 (lexTailRecV2!147 thiss!17480 rules!1920 lt!94432 (BalanceConc!2301 Empty!1146) lt!94432 (BalanceConc!2303 Empty!1147)))))

(assert (=> d!66187 (= (lex!348 thiss!17480 rules!1920 lt!94432) lt!94626)))

(declare-fun b!237203 () Bool)

(declare-fun e!146835 () Bool)

(assert (=> b!237203 (= e!146834 e!146835)))

(declare-fun res!109531 () Bool)

(declare-fun size!2823 (BalanceConc!2300) Int)

(assert (=> b!237203 (= res!109531 (< (size!2823 (_2!2145 lt!94626)) (size!2823 lt!94432)))))

(assert (=> b!237203 (=> (not res!109531) (not e!146835))))

(declare-fun b!237204 () Bool)

(assert (=> b!237204 (= e!146833 (= (list!1374 (_2!2145 lt!94626)) (_2!2146 (lexList!176 thiss!17480 rules!1920 (list!1374 lt!94432)))))))

(declare-fun b!237205 () Bool)

(assert (=> b!237205 (= e!146834 (= (_2!2145 lt!94626) lt!94432))))

(declare-fun b!237206 () Bool)

(assert (=> b!237206 (= e!146835 (not (isEmpty!2083 (_1!2145 lt!94626))))))

(declare-fun b!237207 () Bool)

(declare-fun res!109529 () Bool)

(assert (=> b!237207 (=> (not res!109529) (not e!146833))))

(assert (=> b!237207 (= res!109529 (= (list!1375 (_1!2145 lt!94626)) (_1!2146 (lexList!176 thiss!17480 rules!1920 (list!1374 lt!94432)))))))

(assert (= (and d!66187 c!45406) b!237203))

(assert (= (and d!66187 (not c!45406)) b!237205))

(assert (= (and b!237203 res!109531) b!237206))

(assert (= (and d!66187 res!109530) b!237207))

(assert (= (and b!237207 res!109529) b!237204))

(declare-fun m!285267 () Bool)

(assert (=> b!237206 m!285267))

(declare-fun m!285269 () Bool)

(assert (=> d!66187 m!285269))

(declare-fun m!285271 () Bool)

(assert (=> d!66187 m!285271))

(declare-fun m!285273 () Bool)

(assert (=> b!237204 m!285273))

(assert (=> b!237204 m!284815))

(assert (=> b!237204 m!284815))

(declare-fun m!285275 () Bool)

(assert (=> b!237204 m!285275))

(declare-fun m!285277 () Bool)

(assert (=> b!237207 m!285277))

(assert (=> b!237207 m!284815))

(assert (=> b!237207 m!284815))

(assert (=> b!237207 m!285275))

(declare-fun m!285279 () Bool)

(assert (=> b!237203 m!285279))

(declare-fun m!285281 () Bool)

(assert (=> b!237203 m!285281))

(assert (=> b!236980 d!66187))

(declare-fun d!66189 () Bool)

(assert (=> d!66189 (= (inv!4374 (tag!866 (h!8918 rules!1920))) (= (mod (str.len (value!23183 (tag!866 (h!8918 rules!1920)))) 2) 0))))

(assert (=> b!236979 d!66189))

(declare-fun d!66191 () Bool)

(declare-fun res!109534 () Bool)

(declare-fun e!146838 () Bool)

(assert (=> d!66191 (=> (not res!109534) (not e!146838))))

(declare-fun semiInverseModEq!226 (Int Int) Bool)

(assert (=> d!66191 (= res!109534 (semiInverseModEq!226 (toChars!1220 (transformation!662 (h!8918 rules!1920))) (toValue!1361 (transformation!662 (h!8918 rules!1920)))))))

(assert (=> d!66191 (= (inv!4378 (transformation!662 (h!8918 rules!1920))) e!146838)))

(declare-fun b!237210 () Bool)

(declare-fun equivClasses!209 (Int Int) Bool)

(assert (=> b!237210 (= e!146838 (equivClasses!209 (toChars!1220 (transformation!662 (h!8918 rules!1920))) (toValue!1361 (transformation!662 (h!8918 rules!1920)))))))

(assert (= (and d!66191 res!109534) b!237210))

(declare-fun m!285283 () Bool)

(assert (=> d!66191 m!285283))

(declare-fun m!285285 () Bool)

(assert (=> b!237210 m!285285))

(assert (=> b!236979 d!66191))

(declare-fun b!237239 () Bool)

(declare-fun e!146855 () Bool)

(declare-fun derivativeStep!119 (Regex!886 C!2694) Regex!886)

(declare-fun tail!435 (List!3530) List!3530)

(assert (=> b!237239 (= e!146855 (matchR!224 (derivativeStep!119 (regex!662 lt!94416) (head!820 lt!94440)) (tail!435 lt!94440)))))

(declare-fun b!237240 () Bool)

(declare-fun nullable!153 (Regex!886) Bool)

(assert (=> b!237240 (= e!146855 (nullable!153 (regex!662 lt!94416)))))

(declare-fun b!237241 () Bool)

(declare-fun e!146853 () Bool)

(declare-fun e!146857 () Bool)

(assert (=> b!237241 (= e!146853 e!146857)))

(declare-fun res!109555 () Bool)

(assert (=> b!237241 (=> (not res!109555) (not e!146857))))

(declare-fun lt!94629 () Bool)

(assert (=> b!237241 (= res!109555 (not lt!94629))))

(declare-fun b!237242 () Bool)

(declare-fun res!109554 () Bool)

(assert (=> b!237242 (=> res!109554 e!146853)))

(declare-fun e!146858 () Bool)

(assert (=> b!237242 (= res!109554 e!146858)))

(declare-fun res!109557 () Bool)

(assert (=> b!237242 (=> (not res!109557) (not e!146858))))

(assert (=> b!237242 (= res!109557 lt!94629)))

(declare-fun d!66193 () Bool)

(declare-fun e!146856 () Bool)

(assert (=> d!66193 e!146856))

(declare-fun c!45414 () Bool)

(assert (=> d!66193 (= c!45414 (is-EmptyExpr!886 (regex!662 lt!94416)))))

(assert (=> d!66193 (= lt!94629 e!146855)))

(declare-fun c!45415 () Bool)

(assert (=> d!66193 (= c!45415 (isEmpty!2087 lt!94440))))

(declare-fun validRegex!228 (Regex!886) Bool)

(assert (=> d!66193 (validRegex!228 (regex!662 lt!94416))))

(assert (=> d!66193 (= (matchR!224 (regex!662 lt!94416) lt!94440) lt!94629)))

(declare-fun b!237243 () Bool)

(declare-fun res!109553 () Bool)

(assert (=> b!237243 (=> (not res!109553) (not e!146858))))

(assert (=> b!237243 (= res!109553 (isEmpty!2087 (tail!435 lt!94440)))))

(declare-fun b!237244 () Bool)

(assert (=> b!237244 (= e!146858 (= (head!820 lt!94440) (c!45383 (regex!662 lt!94416))))))

(declare-fun b!237245 () Bool)

(declare-fun e!146854 () Bool)

(assert (=> b!237245 (= e!146857 e!146854)))

(declare-fun res!109551 () Bool)

(assert (=> b!237245 (=> res!109551 e!146854)))

(declare-fun call!12282 () Bool)

(assert (=> b!237245 (= res!109551 call!12282)))

(declare-fun bm!12277 () Bool)

(assert (=> bm!12277 (= call!12282 (isEmpty!2087 lt!94440))))

(declare-fun b!237246 () Bool)

(declare-fun res!109552 () Bool)

(assert (=> b!237246 (=> res!109552 e!146854)))

(assert (=> b!237246 (= res!109552 (not (isEmpty!2087 (tail!435 lt!94440))))))

(declare-fun b!237247 () Bool)

(declare-fun res!109556 () Bool)

(assert (=> b!237247 (=> res!109556 e!146853)))

(assert (=> b!237247 (= res!109556 (not (is-ElementMatch!886 (regex!662 lt!94416))))))

(declare-fun e!146859 () Bool)

(assert (=> b!237247 (= e!146859 e!146853)))

(declare-fun b!237248 () Bool)

(assert (=> b!237248 (= e!146856 (= lt!94629 call!12282))))

(declare-fun b!237249 () Bool)

(assert (=> b!237249 (= e!146854 (not (= (head!820 lt!94440) (c!45383 (regex!662 lt!94416)))))))

(declare-fun b!237250 () Bool)

(assert (=> b!237250 (= e!146859 (not lt!94629))))

(declare-fun b!237251 () Bool)

(assert (=> b!237251 (= e!146856 e!146859)))

(declare-fun c!45413 () Bool)

(assert (=> b!237251 (= c!45413 (is-EmptyLang!886 (regex!662 lt!94416)))))

(declare-fun b!237252 () Bool)

(declare-fun res!109558 () Bool)

(assert (=> b!237252 (=> (not res!109558) (not e!146858))))

(assert (=> b!237252 (= res!109558 (not call!12282))))

(assert (= (and d!66193 c!45415) b!237240))

(assert (= (and d!66193 (not c!45415)) b!237239))

(assert (= (and d!66193 c!45414) b!237248))

(assert (= (and d!66193 (not c!45414)) b!237251))

(assert (= (and b!237251 c!45413) b!237250))

(assert (= (and b!237251 (not c!45413)) b!237247))

(assert (= (and b!237247 (not res!109556)) b!237242))

(assert (= (and b!237242 res!109557) b!237252))

(assert (= (and b!237252 res!109558) b!237243))

(assert (= (and b!237243 res!109553) b!237244))

(assert (= (and b!237242 (not res!109554)) b!237241))

(assert (= (and b!237241 res!109555) b!237245))

(assert (= (and b!237245 (not res!109551)) b!237246))

(assert (= (and b!237246 (not res!109552)) b!237249))

(assert (= (or b!237248 b!237245 b!237252) bm!12277))

(declare-fun m!285287 () Bool)

(assert (=> b!237243 m!285287))

(assert (=> b!237243 m!285287))

(declare-fun m!285289 () Bool)

(assert (=> b!237243 m!285289))

(declare-fun m!285291 () Bool)

(assert (=> bm!12277 m!285291))

(declare-fun m!285293 () Bool)

(assert (=> b!237240 m!285293))

(assert (=> d!66193 m!285291))

(declare-fun m!285295 () Bool)

(assert (=> d!66193 m!285295))

(assert (=> b!237244 m!284861))

(assert (=> b!237239 m!284861))

(assert (=> b!237239 m!284861))

(declare-fun m!285297 () Bool)

(assert (=> b!237239 m!285297))

(assert (=> b!237239 m!285287))

(assert (=> b!237239 m!285297))

(assert (=> b!237239 m!285287))

(declare-fun m!285299 () Bool)

(assert (=> b!237239 m!285299))

(assert (=> b!237246 m!285287))

(assert (=> b!237246 m!285287))

(assert (=> b!237246 m!285289))

(assert (=> b!237249 m!284861))

(assert (=> b!236978 d!66193))

(declare-fun d!66195 () Bool)

(assert (=> d!66195 (= (get!1137 lt!94447) (v!14413 lt!94447))))

(assert (=> b!236978 d!66195))

(declare-fun d!66197 () Bool)

(declare-fun list!1379 (Conc!1146) List!3530)

(assert (=> d!66197 (= (list!1374 lt!94422) (list!1379 (c!45382 lt!94422)))))

(declare-fun bs!25326 () Bool)

(assert (= bs!25326 d!66197))

(declare-fun m!285301 () Bool)

(assert (=> bs!25326 m!285301))

(assert (=> b!236957 d!66197))

(declare-fun d!66199 () Bool)

(declare-fun lt!94632 () BalanceConc!2300)

(assert (=> d!66199 (= (list!1374 lt!94632) (printList!232 thiss!17480 (list!1375 lt!94415)))))

(assert (=> d!66199 (= lt!94632 (printTailRec!242 thiss!17480 lt!94415 0 (BalanceConc!2301 Empty!1146)))))

(assert (=> d!66199 (= (print!279 thiss!17480 lt!94415) lt!94632)))

(declare-fun bs!25327 () Bool)

(assert (= bs!25327 d!66199))

(declare-fun m!285303 () Bool)

(assert (=> bs!25327 m!285303))

(declare-fun m!285305 () Bool)

(assert (=> bs!25327 m!285305))

(assert (=> bs!25327 m!285305))

(declare-fun m!285307 () Bool)

(assert (=> bs!25327 m!285307))

(assert (=> bs!25327 m!284971))

(assert (=> b!236957 d!66199))

(declare-fun d!66201 () Bool)

(declare-fun lt!94649 () BalanceConc!2300)

(declare-fun printListTailRec!103 (LexerInterface!548 List!3532 List!3530) List!3530)

(declare-fun dropList!135 (BalanceConc!2302 Int) List!3532)

(assert (=> d!66201 (= (list!1374 lt!94649) (printListTailRec!103 thiss!17480 (dropList!135 lt!94415 0) (list!1374 (BalanceConc!2301 Empty!1146))))))

(declare-fun e!146865 () BalanceConc!2300)

(assert (=> d!66201 (= lt!94649 e!146865)))

(declare-fun c!45418 () Bool)

(assert (=> d!66201 (= c!45418 (>= 0 (size!2819 lt!94415)))))

(declare-fun e!146864 () Bool)

(assert (=> d!66201 e!146864))

(declare-fun res!109561 () Bool)

(assert (=> d!66201 (=> (not res!109561) (not e!146864))))

(assert (=> d!66201 (= res!109561 (>= 0 0))))

(assert (=> d!66201 (= (printTailRec!242 thiss!17480 lt!94415 0 (BalanceConc!2301 Empty!1146)) lt!94649)))

(declare-fun b!237259 () Bool)

(assert (=> b!237259 (= e!146864 (<= 0 (size!2819 lt!94415)))))

(declare-fun b!237260 () Bool)

(assert (=> b!237260 (= e!146865 (BalanceConc!2301 Empty!1146))))

(declare-fun b!237261 () Bool)

(declare-fun ++!893 (BalanceConc!2300 BalanceConc!2300) BalanceConc!2300)

(assert (=> b!237261 (= e!146865 (printTailRec!242 thiss!17480 lt!94415 (+ 0 1) (++!893 (BalanceConc!2301 Empty!1146) (charsOf!317 (apply!653 lt!94415 0)))))))

(declare-fun lt!94652 () List!3532)

(assert (=> b!237261 (= lt!94652 (list!1375 lt!94415))))

(declare-fun lt!94647 () Unit!4177)

(declare-fun lemmaDropApply!175 (List!3532 Int) Unit!4177)

(assert (=> b!237261 (= lt!94647 (lemmaDropApply!175 lt!94652 0))))

(declare-fun drop!188 (List!3532 Int) List!3532)

(declare-fun apply!655 (List!3532 Int) Token!1068)

(assert (=> b!237261 (= (head!819 (drop!188 lt!94652 0)) (apply!655 lt!94652 0))))

(declare-fun lt!94650 () Unit!4177)

(assert (=> b!237261 (= lt!94650 lt!94647)))

(declare-fun lt!94648 () List!3532)

(assert (=> b!237261 (= lt!94648 (list!1375 lt!94415))))

(declare-fun lt!94653 () Unit!4177)

(declare-fun lemmaDropTail!167 (List!3532 Int) Unit!4177)

(assert (=> b!237261 (= lt!94653 (lemmaDropTail!167 lt!94648 0))))

(declare-fun tail!436 (List!3532) List!3532)

(assert (=> b!237261 (= (tail!436 (drop!188 lt!94648 0)) (drop!188 lt!94648 (+ 0 1)))))

(declare-fun lt!94651 () Unit!4177)

(assert (=> b!237261 (= lt!94651 lt!94653)))

(assert (= (and d!66201 res!109561) b!237259))

(assert (= (and d!66201 c!45418) b!237260))

(assert (= (and d!66201 (not c!45418)) b!237261))

(declare-fun m!285309 () Bool)

(assert (=> d!66201 m!285309))

(declare-fun m!285311 () Bool)

(assert (=> d!66201 m!285311))

(declare-fun m!285313 () Bool)

(assert (=> d!66201 m!285313))

(assert (=> d!66201 m!285309))

(declare-fun m!285315 () Bool)

(assert (=> d!66201 m!285315))

(declare-fun m!285317 () Bool)

(assert (=> d!66201 m!285317))

(assert (=> d!66201 m!285315))

(assert (=> b!237259 m!285311))

(assert (=> b!237261 m!285305))

(declare-fun m!285319 () Bool)

(assert (=> b!237261 m!285319))

(declare-fun m!285321 () Bool)

(assert (=> b!237261 m!285321))

(declare-fun m!285323 () Bool)

(assert (=> b!237261 m!285323))

(declare-fun m!285325 () Bool)

(assert (=> b!237261 m!285325))

(declare-fun m!285327 () Bool)

(assert (=> b!237261 m!285327))

(declare-fun m!285329 () Bool)

(assert (=> b!237261 m!285329))

(declare-fun m!285331 () Bool)

(assert (=> b!237261 m!285331))

(assert (=> b!237261 m!285325))

(declare-fun m!285333 () Bool)

(assert (=> b!237261 m!285333))

(declare-fun m!285335 () Bool)

(assert (=> b!237261 m!285335))

(declare-fun m!285337 () Bool)

(assert (=> b!237261 m!285337))

(assert (=> b!237261 m!285323))

(declare-fun m!285339 () Bool)

(assert (=> b!237261 m!285339))

(assert (=> b!237261 m!285327))

(assert (=> b!237261 m!285329))

(assert (=> b!237261 m!285335))

(declare-fun m!285341 () Bool)

(assert (=> b!237261 m!285341))

(assert (=> b!236957 d!66201))

(declare-fun d!66203 () Bool)

(declare-fun e!146868 () Bool)

(assert (=> d!66203 e!146868))

(declare-fun res!109564 () Bool)

(assert (=> d!66203 (=> (not res!109564) (not e!146868))))

(declare-fun lt!94656 () BalanceConc!2302)

(assert (=> d!66203 (= res!109564 (= (list!1375 lt!94656) (Cons!3522 (h!8919 tokens!465) Nil!3522)))))

(declare-fun singleton!84 (Token!1068) BalanceConc!2302)

(assert (=> d!66203 (= lt!94656 (singleton!84 (h!8919 tokens!465)))))

(assert (=> d!66203 (= (singletonSeq!214 (h!8919 tokens!465)) lt!94656)))

(declare-fun b!237264 () Bool)

(declare-fun isBalanced!303 (Conc!1147) Bool)

(assert (=> b!237264 (= e!146868 (isBalanced!303 (c!45384 lt!94656)))))

(assert (= (and d!66203 res!109564) b!237264))

(declare-fun m!285343 () Bool)

(assert (=> d!66203 m!285343))

(declare-fun m!285345 () Bool)

(assert (=> d!66203 m!285345))

(declare-fun m!285347 () Bool)

(assert (=> b!237264 m!285347))

(assert (=> b!236957 d!66203))

(declare-fun d!66205 () Bool)

(declare-fun c!45421 () Bool)

(assert (=> d!66205 (= c!45421 (is-Cons!3522 (Cons!3522 (h!8919 tokens!465) Nil!3522)))))

(declare-fun e!146871 () List!3530)

(assert (=> d!66205 (= (printList!232 thiss!17480 (Cons!3522 (h!8919 tokens!465) Nil!3522)) e!146871)))

(declare-fun b!237269 () Bool)

(assert (=> b!237269 (= e!146871 (++!891 (list!1374 (charsOf!317 (h!8919 (Cons!3522 (h!8919 tokens!465) Nil!3522)))) (printList!232 thiss!17480 (t!34260 (Cons!3522 (h!8919 tokens!465) Nil!3522)))))))

(declare-fun b!237270 () Bool)

(assert (=> b!237270 (= e!146871 Nil!3520)))

(assert (= (and d!66205 c!45421) b!237269))

(assert (= (and d!66205 (not c!45421)) b!237270))

(declare-fun m!285349 () Bool)

(assert (=> b!237269 m!285349))

(assert (=> b!237269 m!285349))

(declare-fun m!285351 () Bool)

(assert (=> b!237269 m!285351))

(declare-fun m!285353 () Bool)

(assert (=> b!237269 m!285353))

(assert (=> b!237269 m!285351))

(assert (=> b!237269 m!285353))

(declare-fun m!285355 () Bool)

(assert (=> b!237269 m!285355))

(assert (=> b!236957 d!66205))

(declare-fun d!66207 () Bool)

(declare-fun e!146872 () Bool)

(assert (=> d!66207 e!146872))

(declare-fun res!109566 () Bool)

(assert (=> d!66207 (=> (not res!109566) (not e!146872))))

(declare-fun e!146873 () Bool)

(assert (=> d!66207 (= res!109566 e!146873)))

(declare-fun c!45422 () Bool)

(declare-fun lt!94657 () tuple2!3858)

(assert (=> d!66207 (= c!45422 (> (size!2819 (_1!2145 lt!94657)) 0))))

(assert (=> d!66207 (= lt!94657 (lexTailRecV2!147 thiss!17480 rules!1920 lt!94457 (BalanceConc!2301 Empty!1146) lt!94457 (BalanceConc!2303 Empty!1147)))))

(assert (=> d!66207 (= (lex!348 thiss!17480 rules!1920 lt!94457) lt!94657)))

(declare-fun b!237271 () Bool)

(declare-fun e!146874 () Bool)

(assert (=> b!237271 (= e!146873 e!146874)))

(declare-fun res!109567 () Bool)

(assert (=> b!237271 (= res!109567 (< (size!2823 (_2!2145 lt!94657)) (size!2823 lt!94457)))))

(assert (=> b!237271 (=> (not res!109567) (not e!146874))))

(declare-fun b!237272 () Bool)

(assert (=> b!237272 (= e!146872 (= (list!1374 (_2!2145 lt!94657)) (_2!2146 (lexList!176 thiss!17480 rules!1920 (list!1374 lt!94457)))))))

(declare-fun b!237273 () Bool)

(assert (=> b!237273 (= e!146873 (= (_2!2145 lt!94657) lt!94457))))

(declare-fun b!237274 () Bool)

(assert (=> b!237274 (= e!146874 (not (isEmpty!2083 (_1!2145 lt!94657))))))

(declare-fun b!237275 () Bool)

(declare-fun res!109565 () Bool)

(assert (=> b!237275 (=> (not res!109565) (not e!146872))))

(assert (=> b!237275 (= res!109565 (= (list!1375 (_1!2145 lt!94657)) (_1!2146 (lexList!176 thiss!17480 rules!1920 (list!1374 lt!94457)))))))

(assert (= (and d!66207 c!45422) b!237271))

(assert (= (and d!66207 (not c!45422)) b!237273))

(assert (= (and b!237271 res!109567) b!237274))

(assert (= (and d!66207 res!109566) b!237275))

(assert (= (and b!237275 res!109565) b!237272))

(declare-fun m!285357 () Bool)

(assert (=> b!237274 m!285357))

(declare-fun m!285359 () Bool)

(assert (=> d!66207 m!285359))

(declare-fun m!285361 () Bool)

(assert (=> d!66207 m!285361))

(declare-fun m!285363 () Bool)

(assert (=> b!237272 m!285363))

(assert (=> b!237272 m!284943))

(assert (=> b!237272 m!284943))

(declare-fun m!285365 () Bool)

(assert (=> b!237272 m!285365))

(declare-fun m!285367 () Bool)

(assert (=> b!237275 m!285367))

(assert (=> b!237275 m!284943))

(assert (=> b!237275 m!284943))

(assert (=> b!237275 m!285365))

(declare-fun m!285369 () Bool)

(assert (=> b!237271 m!285369))

(declare-fun m!285371 () Bool)

(assert (=> b!237271 m!285371))

(assert (=> b!236956 d!66207))

(declare-fun d!66209 () Bool)

(declare-fun lt!94660 () Int)

(assert (=> d!66209 (= lt!94660 (size!2822 (list!1375 (_1!2145 lt!94417))))))

(declare-fun size!2824 (Conc!1147) Int)

(assert (=> d!66209 (= lt!94660 (size!2824 (c!45384 (_1!2145 lt!94417))))))

(assert (=> d!66209 (= (size!2819 (_1!2145 lt!94417)) lt!94660)))

(declare-fun bs!25328 () Bool)

(assert (= bs!25328 d!66209))

(declare-fun m!285373 () Bool)

(assert (=> bs!25328 m!285373))

(assert (=> bs!25328 m!285373))

(declare-fun m!285375 () Bool)

(assert (=> bs!25328 m!285375))

(declare-fun m!285377 () Bool)

(assert (=> bs!25328 m!285377))

(assert (=> b!236956 d!66209))

(declare-fun d!66211 () Bool)

(declare-fun e!146875 () Bool)

(assert (=> d!66211 e!146875))

(declare-fun res!109568 () Bool)

(assert (=> d!66211 (=> (not res!109568) (not e!146875))))

(declare-fun lt!94661 () BalanceConc!2302)

(assert (=> d!66211 (= res!109568 (= (list!1375 lt!94661) (Cons!3522 lt!94452 Nil!3522)))))

(assert (=> d!66211 (= lt!94661 (singleton!84 lt!94452))))

(assert (=> d!66211 (= (singletonSeq!214 lt!94452) lt!94661)))

(declare-fun b!237276 () Bool)

(assert (=> b!237276 (= e!146875 (isBalanced!303 (c!45384 lt!94661)))))

(assert (= (and d!66211 res!109568) b!237276))

(declare-fun m!285379 () Bool)

(assert (=> d!66211 m!285379))

(declare-fun m!285381 () Bool)

(assert (=> d!66211 m!285381))

(declare-fun m!285383 () Bool)

(assert (=> b!237276 m!285383))

(assert (=> b!236956 d!66211))

(declare-fun d!66213 () Bool)

(declare-fun lt!94664 () Bool)

(declare-fun content!491 (List!3530) (Set C!2694))

(assert (=> d!66213 (= lt!94664 (set.member lt!94459 (content!491 (usedCharacters!67 (regex!662 (rule!1229 separatorToken!170))))))))

(declare-fun e!146881 () Bool)

(assert (=> d!66213 (= lt!94664 e!146881)))

(declare-fun res!109573 () Bool)

(assert (=> d!66213 (=> (not res!109573) (not e!146881))))

(assert (=> d!66213 (= res!109573 (is-Cons!3520 (usedCharacters!67 (regex!662 (rule!1229 separatorToken!170)))))))

(assert (=> d!66213 (= (contains!647 (usedCharacters!67 (regex!662 (rule!1229 separatorToken!170))) lt!94459) lt!94664)))

(declare-fun b!237281 () Bool)

(declare-fun e!146880 () Bool)

(assert (=> b!237281 (= e!146881 e!146880)))

(declare-fun res!109574 () Bool)

(assert (=> b!237281 (=> res!109574 e!146880)))

(assert (=> b!237281 (= res!109574 (= (h!8917 (usedCharacters!67 (regex!662 (rule!1229 separatorToken!170)))) lt!94459))))

(declare-fun b!237282 () Bool)

(assert (=> b!237282 (= e!146880 (contains!647 (t!34258 (usedCharacters!67 (regex!662 (rule!1229 separatorToken!170)))) lt!94459))))

(assert (= (and d!66213 res!109573) b!237281))

(assert (= (and b!237281 (not res!109574)) b!237282))

(assert (=> d!66213 m!284833))

(declare-fun m!285385 () Bool)

(assert (=> d!66213 m!285385))

(declare-fun m!285387 () Bool)

(assert (=> d!66213 m!285387))

(declare-fun m!285389 () Bool)

(assert (=> b!237282 m!285389))

(assert (=> b!236956 d!66213))

(declare-fun d!66215 () Bool)

(declare-fun lt!94667 () BalanceConc!2300)

(assert (=> d!66215 (= (list!1374 lt!94667) (originalCharacters!705 lt!94452))))

(declare-fun dynLambda!1677 (Int TokenValue!684) BalanceConc!2300)

(assert (=> d!66215 (= lt!94667 (dynLambda!1677 (toChars!1220 (transformation!662 (rule!1229 lt!94452))) (value!23184 lt!94452)))))

(assert (=> d!66215 (= (charsOf!317 lt!94452) lt!94667)))

(declare-fun b_lambda!6745 () Bool)

(assert (=> (not b_lambda!6745) (not d!66215)))

(declare-fun tb!12029 () Bool)

(declare-fun t!34271 () Bool)

(assert (=> (and b!236974 (= (toChars!1220 (transformation!662 (rule!1229 (h!8919 tokens!465)))) (toChars!1220 (transformation!662 (rule!1229 lt!94452)))) t!34271) tb!12029))

(declare-fun b!237287 () Bool)

(declare-fun e!146884 () Bool)

(declare-fun tp!94856 () Bool)

(declare-fun inv!4381 (Conc!1146) Bool)

(assert (=> b!237287 (= e!146884 (and (inv!4381 (c!45382 (dynLambda!1677 (toChars!1220 (transformation!662 (rule!1229 lt!94452))) (value!23184 lt!94452)))) tp!94856))))

(declare-fun result!15264 () Bool)

(declare-fun inv!4382 (BalanceConc!2300) Bool)

(assert (=> tb!12029 (= result!15264 (and (inv!4382 (dynLambda!1677 (toChars!1220 (transformation!662 (rule!1229 lt!94452))) (value!23184 lt!94452))) e!146884))))

(assert (= tb!12029 b!237287))

(declare-fun m!285391 () Bool)

(assert (=> b!237287 m!285391))

(declare-fun m!285393 () Bool)

(assert (=> tb!12029 m!285393))

(assert (=> d!66215 t!34271))

(declare-fun b_and!17705 () Bool)

(assert (= b_and!17683 (and (=> t!34271 result!15264) b_and!17705)))

(declare-fun t!34273 () Bool)

(declare-fun tb!12031 () Bool)

(assert (=> (and b!236977 (= (toChars!1220 (transformation!662 (rule!1229 separatorToken!170))) (toChars!1220 (transformation!662 (rule!1229 lt!94452)))) t!34273) tb!12031))

(declare-fun result!15268 () Bool)

(assert (= result!15268 result!15264))

(assert (=> d!66215 t!34273))

(declare-fun b_and!17707 () Bool)

(assert (= b_and!17687 (and (=> t!34273 result!15268) b_and!17707)))

(declare-fun t!34275 () Bool)

(declare-fun tb!12033 () Bool)

(assert (=> (and b!236959 (= (toChars!1220 (transformation!662 (h!8918 rules!1920))) (toChars!1220 (transformation!662 (rule!1229 lt!94452)))) t!34275) tb!12033))

(declare-fun result!15270 () Bool)

(assert (= result!15270 result!15264))

(assert (=> d!66215 t!34275))

(declare-fun b_and!17709 () Bool)

(assert (= b_and!17691 (and (=> t!34275 result!15270) b_and!17709)))

(declare-fun m!285395 () Bool)

(assert (=> d!66215 m!285395))

(declare-fun m!285397 () Bool)

(assert (=> d!66215 m!285397))

(assert (=> b!236956 d!66215))

(declare-fun d!66219 () Bool)

(assert (=> d!66219 (= (head!820 lt!94440) (h!8917 lt!94440))))

(assert (=> b!236956 d!66219))

(declare-fun d!66221 () Bool)

(assert (=> d!66221 (= (list!1375 (_1!2145 (lex!348 thiss!17480 rules!1920 lt!94457))) (list!1378 (c!45384 (_1!2145 (lex!348 thiss!17480 rules!1920 lt!94457)))))))

(declare-fun bs!25329 () Bool)

(assert (= bs!25329 d!66221))

(declare-fun m!285399 () Bool)

(assert (=> bs!25329 m!285399))

(assert (=> b!236956 d!66221))

(declare-fun b!237300 () Bool)

(declare-fun e!146895 () Option!679)

(assert (=> b!237300 (= e!146895 None!678)))

(declare-fun b!237301 () Bool)

(declare-fun e!146896 () Bool)

(declare-fun e!146894 () Bool)

(assert (=> b!237301 (= e!146896 e!146894)))

(declare-fun res!109579 () Bool)

(assert (=> b!237301 (=> (not res!109579) (not e!146894))))

(declare-fun lt!94675 () Option!679)

(declare-fun contains!649 (List!3531 Rule!1124) Bool)

(assert (=> b!237301 (= res!109579 (contains!649 rules!1920 (get!1137 lt!94675)))))

(declare-fun b!237302 () Bool)

(declare-fun e!146893 () Option!679)

(assert (=> b!237302 (= e!146893 (Some!678 (h!8918 rules!1920)))))

(declare-fun b!237303 () Bool)

(assert (=> b!237303 (= e!146893 e!146895)))

(declare-fun c!45427 () Bool)

(assert (=> b!237303 (= c!45427 (and (is-Cons!3521 rules!1920) (not (= (tag!866 (h!8918 rules!1920)) (tag!866 (rule!1229 separatorToken!170))))))))

(declare-fun d!66223 () Bool)

(assert (=> d!66223 e!146896))

(declare-fun res!109580 () Bool)

(assert (=> d!66223 (=> res!109580 e!146896)))

(declare-fun isEmpty!2093 (Option!679) Bool)

(assert (=> d!66223 (= res!109580 (isEmpty!2093 lt!94675))))

(assert (=> d!66223 (= lt!94675 e!146893)))

(declare-fun c!45428 () Bool)

(assert (=> d!66223 (= c!45428 (and (is-Cons!3521 rules!1920) (= (tag!866 (h!8918 rules!1920)) (tag!866 (rule!1229 separatorToken!170)))))))

(assert (=> d!66223 (rulesInvariant!514 thiss!17480 rules!1920)))

(assert (=> d!66223 (= (getRuleFromTag!103 thiss!17480 rules!1920 (tag!866 (rule!1229 separatorToken!170))) lt!94675)))

(declare-fun b!237304 () Bool)

(assert (=> b!237304 (= e!146894 (= (tag!866 (get!1137 lt!94675)) (tag!866 (rule!1229 separatorToken!170))))))

(declare-fun b!237305 () Bool)

(declare-fun lt!94674 () Unit!4177)

(declare-fun lt!94676 () Unit!4177)

(assert (=> b!237305 (= lt!94674 lt!94676)))

(assert (=> b!237305 (rulesInvariant!514 thiss!17480 (t!34259 rules!1920))))

(declare-fun lemmaInvariantOnRulesThenOnTail!27 (LexerInterface!548 Rule!1124 List!3531) Unit!4177)

(assert (=> b!237305 (= lt!94676 (lemmaInvariantOnRulesThenOnTail!27 thiss!17480 (h!8918 rules!1920) (t!34259 rules!1920)))))

(assert (=> b!237305 (= e!146895 (getRuleFromTag!103 thiss!17480 (t!34259 rules!1920) (tag!866 (rule!1229 separatorToken!170))))))

(assert (= (and d!66223 c!45428) b!237302))

(assert (= (and d!66223 (not c!45428)) b!237303))

(assert (= (and b!237303 c!45427) b!237305))

(assert (= (and b!237303 (not c!45427)) b!237300))

(assert (= (and d!66223 (not res!109580)) b!237301))

(assert (= (and b!237301 res!109579) b!237304))

(declare-fun m!285401 () Bool)

(assert (=> b!237301 m!285401))

(assert (=> b!237301 m!285401))

(declare-fun m!285403 () Bool)

(assert (=> b!237301 m!285403))

(declare-fun m!285405 () Bool)

(assert (=> d!66223 m!285405))

(assert (=> d!66223 m!284799))

(assert (=> b!237304 m!285401))

(declare-fun m!285407 () Bool)

(assert (=> b!237305 m!285407))

(declare-fun m!285409 () Bool)

(assert (=> b!237305 m!285409))

(declare-fun m!285411 () Bool)

(assert (=> b!237305 m!285411))

(assert (=> b!236956 d!66223))

(declare-fun d!66225 () Bool)

(assert (=> d!66225 (= (isDefined!530 lt!94425) (not (isEmpty!2093 lt!94425)))))

(declare-fun bs!25330 () Bool)

(assert (= bs!25330 d!66225))

(declare-fun m!285413 () Bool)

(assert (=> bs!25330 m!285413))

(assert (=> b!236956 d!66225))

(declare-fun b!237306 () Bool)

(declare-fun e!146899 () Option!679)

(assert (=> b!237306 (= e!146899 None!678)))

(declare-fun b!237307 () Bool)

(declare-fun e!146900 () Bool)

(declare-fun e!146898 () Bool)

(assert (=> b!237307 (= e!146900 e!146898)))

(declare-fun res!109581 () Bool)

(assert (=> b!237307 (=> (not res!109581) (not e!146898))))

(declare-fun lt!94678 () Option!679)

(assert (=> b!237307 (= res!109581 (contains!649 rules!1920 (get!1137 lt!94678)))))

(declare-fun b!237308 () Bool)

(declare-fun e!146897 () Option!679)

(assert (=> b!237308 (= e!146897 (Some!678 (h!8918 rules!1920)))))

(declare-fun b!237309 () Bool)

(assert (=> b!237309 (= e!146897 e!146899)))

(declare-fun c!45429 () Bool)

(assert (=> b!237309 (= c!45429 (and (is-Cons!3521 rules!1920) (not (= (tag!866 (h!8918 rules!1920)) (tag!866 (rule!1229 lt!94452))))))))

(declare-fun d!66227 () Bool)

(assert (=> d!66227 e!146900))

(declare-fun res!109582 () Bool)

(assert (=> d!66227 (=> res!109582 e!146900)))

(assert (=> d!66227 (= res!109582 (isEmpty!2093 lt!94678))))

(assert (=> d!66227 (= lt!94678 e!146897)))

(declare-fun c!45430 () Bool)

(assert (=> d!66227 (= c!45430 (and (is-Cons!3521 rules!1920) (= (tag!866 (h!8918 rules!1920)) (tag!866 (rule!1229 lt!94452)))))))

(assert (=> d!66227 (rulesInvariant!514 thiss!17480 rules!1920)))

(assert (=> d!66227 (= (getRuleFromTag!103 thiss!17480 rules!1920 (tag!866 (rule!1229 lt!94452))) lt!94678)))

(declare-fun b!237310 () Bool)

(assert (=> b!237310 (= e!146898 (= (tag!866 (get!1137 lt!94678)) (tag!866 (rule!1229 lt!94452))))))

(declare-fun b!237311 () Bool)

(declare-fun lt!94677 () Unit!4177)

(declare-fun lt!94679 () Unit!4177)

(assert (=> b!237311 (= lt!94677 lt!94679)))

(assert (=> b!237311 (rulesInvariant!514 thiss!17480 (t!34259 rules!1920))))

(assert (=> b!237311 (= lt!94679 (lemmaInvariantOnRulesThenOnTail!27 thiss!17480 (h!8918 rules!1920) (t!34259 rules!1920)))))

(assert (=> b!237311 (= e!146899 (getRuleFromTag!103 thiss!17480 (t!34259 rules!1920) (tag!866 (rule!1229 lt!94452))))))

(assert (= (and d!66227 c!45430) b!237308))

(assert (= (and d!66227 (not c!45430)) b!237309))

(assert (= (and b!237309 c!45429) b!237311))

(assert (= (and b!237309 (not c!45429)) b!237306))

(assert (= (and d!66227 (not res!109582)) b!237307))

(assert (= (and b!237307 res!109581) b!237310))

(declare-fun m!285415 () Bool)

(assert (=> b!237307 m!285415))

(assert (=> b!237307 m!285415))

(declare-fun m!285417 () Bool)

(assert (=> b!237307 m!285417))

(declare-fun m!285419 () Bool)

(assert (=> d!66227 m!285419))

(assert (=> d!66227 m!284799))

(assert (=> b!237310 m!285415))

(assert (=> b!237311 m!285407))

(assert (=> b!237311 m!285409))

(declare-fun m!285421 () Bool)

(assert (=> b!237311 m!285421))

(assert (=> b!236956 d!66227))

(declare-fun d!66229 () Bool)

(declare-fun e!146901 () Bool)

(assert (=> d!66229 e!146901))

(declare-fun res!109584 () Bool)

(assert (=> d!66229 (=> (not res!109584) (not e!146901))))

(declare-fun e!146902 () Bool)

(assert (=> d!66229 (= res!109584 e!146902)))

(declare-fun c!45431 () Bool)

(declare-fun lt!94680 () tuple2!3858)

(assert (=> d!66229 (= c!45431 (> (size!2819 (_1!2145 lt!94680)) 0))))

(assert (=> d!66229 (= lt!94680 (lexTailRecV2!147 thiss!17480 rules!1920 lt!94450 (BalanceConc!2301 Empty!1146) lt!94450 (BalanceConc!2303 Empty!1147)))))

(assert (=> d!66229 (= (lex!348 thiss!17480 rules!1920 lt!94450) lt!94680)))

(declare-fun b!237312 () Bool)

(declare-fun e!146903 () Bool)

(assert (=> b!237312 (= e!146902 e!146903)))

(declare-fun res!109585 () Bool)

(assert (=> b!237312 (= res!109585 (< (size!2823 (_2!2145 lt!94680)) (size!2823 lt!94450)))))

(assert (=> b!237312 (=> (not res!109585) (not e!146903))))

(declare-fun b!237313 () Bool)

(assert (=> b!237313 (= e!146901 (= (list!1374 (_2!2145 lt!94680)) (_2!2146 (lexList!176 thiss!17480 rules!1920 (list!1374 lt!94450)))))))

(declare-fun b!237314 () Bool)

(assert (=> b!237314 (= e!146902 (= (_2!2145 lt!94680) lt!94450))))

(declare-fun b!237315 () Bool)

(assert (=> b!237315 (= e!146903 (not (isEmpty!2083 (_1!2145 lt!94680))))))

(declare-fun b!237316 () Bool)

(declare-fun res!109583 () Bool)

(assert (=> b!237316 (=> (not res!109583) (not e!146901))))

(assert (=> b!237316 (= res!109583 (= (list!1375 (_1!2145 lt!94680)) (_1!2146 (lexList!176 thiss!17480 rules!1920 (list!1374 lt!94450)))))))

(assert (= (and d!66229 c!45431) b!237312))

(assert (= (and d!66229 (not c!45431)) b!237314))

(assert (= (and b!237312 res!109585) b!237315))

(assert (= (and d!66229 res!109584) b!237316))

(assert (= (and b!237316 res!109583) b!237313))

(declare-fun m!285423 () Bool)

(assert (=> b!237315 m!285423))

(declare-fun m!285425 () Bool)

(assert (=> d!66229 m!285425))

(declare-fun m!285427 () Bool)

(assert (=> d!66229 m!285427))

(declare-fun m!285429 () Bool)

(assert (=> b!237313 m!285429))

(declare-fun m!285431 () Bool)

(assert (=> b!237313 m!285431))

(assert (=> b!237313 m!285431))

(declare-fun m!285433 () Bool)

(assert (=> b!237313 m!285433))

(declare-fun m!285435 () Bool)

(assert (=> b!237316 m!285435))

(assert (=> b!237316 m!285431))

(assert (=> b!237316 m!285431))

(assert (=> b!237316 m!285433))

(declare-fun m!285437 () Bool)

(assert (=> b!237312 m!285437))

(declare-fun m!285439 () Bool)

(assert (=> b!237312 m!285439))

(assert (=> b!236956 d!66229))

(declare-fun d!66231 () Bool)

(declare-fun lt!94725 () Bool)

(declare-fun e!146947 () Bool)

(assert (=> d!66231 (= lt!94725 e!146947)))

(declare-fun res!109628 () Bool)

(assert (=> d!66231 (=> (not res!109628) (not e!146947))))

(assert (=> d!66231 (= res!109628 (= (list!1375 (_1!2145 (lex!348 thiss!17480 rules!1920 (print!279 thiss!17480 (singletonSeq!214 lt!94452))))) (list!1375 (singletonSeq!214 lt!94452))))))

(declare-fun e!146948 () Bool)

(assert (=> d!66231 (= lt!94725 e!146948)))

(declare-fun res!109629 () Bool)

(assert (=> d!66231 (=> (not res!109629) (not e!146948))))

(declare-fun lt!94724 () tuple2!3858)

(assert (=> d!66231 (= res!109629 (= (size!2819 (_1!2145 lt!94724)) 1))))

(assert (=> d!66231 (= lt!94724 (lex!348 thiss!17480 rules!1920 (print!279 thiss!17480 (singletonSeq!214 lt!94452))))))

(assert (=> d!66231 (not (isEmpty!2086 rules!1920))))

(assert (=> d!66231 (= (rulesProduceIndividualToken!297 thiss!17480 rules!1920 lt!94452) lt!94725)))

(declare-fun b!237389 () Bool)

(declare-fun res!109630 () Bool)

(assert (=> b!237389 (=> (not res!109630) (not e!146948))))

(assert (=> b!237389 (= res!109630 (= (apply!653 (_1!2145 lt!94724) 0) lt!94452))))

(declare-fun b!237390 () Bool)

(assert (=> b!237390 (= e!146948 (isEmpty!2084 (_2!2145 lt!94724)))))

(declare-fun b!237391 () Bool)

(assert (=> b!237391 (= e!146947 (isEmpty!2084 (_2!2145 (lex!348 thiss!17480 rules!1920 (print!279 thiss!17480 (singletonSeq!214 lt!94452))))))))

(assert (= (and d!66231 res!109629) b!237389))

(assert (= (and b!237389 res!109630) b!237390))

(assert (= (and d!66231 res!109628) b!237391))

(assert (=> d!66231 m!284865))

(declare-fun m!285529 () Bool)

(assert (=> d!66231 m!285529))

(assert (=> d!66231 m!284865))

(declare-fun m!285531 () Bool)

(assert (=> d!66231 m!285531))

(assert (=> d!66231 m!284865))

(assert (=> d!66231 m!285531))

(declare-fun m!285533 () Bool)

(assert (=> d!66231 m!285533))

(assert (=> d!66231 m!285003))

(declare-fun m!285535 () Bool)

(assert (=> d!66231 m!285535))

(declare-fun m!285537 () Bool)

(assert (=> d!66231 m!285537))

(declare-fun m!285539 () Bool)

(assert (=> b!237389 m!285539))

(declare-fun m!285541 () Bool)

(assert (=> b!237390 m!285541))

(assert (=> b!237391 m!284865))

(assert (=> b!237391 m!284865))

(assert (=> b!237391 m!285531))

(assert (=> b!237391 m!285531))

(assert (=> b!237391 m!285533))

(declare-fun m!285543 () Bool)

(assert (=> b!237391 m!285543))

(assert (=> b!236956 d!66231))

(declare-fun b!237392 () Bool)

(declare-fun res!109632 () Bool)

(declare-fun e!146951 () Bool)

(assert (=> b!237392 (=> (not res!109632) (not e!146951))))

(declare-fun lt!94726 () List!3532)

(assert (=> b!237392 (= res!109632 (set.subset (content!490 lt!94726) (content!490 lt!94435)))))

(declare-fun b!237393 () Bool)

(declare-fun e!146950 () List!3532)

(declare-fun call!12286 () List!3532)

(assert (=> b!237393 (= e!146950 call!12286)))

(declare-fun bm!12281 () Bool)

(assert (=> bm!12281 (= call!12286 (filter!56 (t!34260 lt!94435) lambda!7641))))

(declare-fun b!237394 () Bool)

(declare-fun e!146949 () List!3532)

(assert (=> b!237394 (= e!146949 Nil!3522)))

(declare-fun d!66257 () Bool)

(assert (=> d!66257 e!146951))

(declare-fun res!109631 () Bool)

(assert (=> d!66257 (=> (not res!109631) (not e!146951))))

(assert (=> d!66257 (= res!109631 (<= (size!2822 lt!94726) (size!2822 lt!94435)))))

(assert (=> d!66257 (= lt!94726 e!146949)))

(declare-fun c!45448 () Bool)

(assert (=> d!66257 (= c!45448 (is-Nil!3522 lt!94435))))

(assert (=> d!66257 (= (filter!56 lt!94435 lambda!7641) lt!94726)))

(declare-fun b!237395 () Bool)

(assert (=> b!237395 (= e!146950 (Cons!3522 (h!8919 lt!94435) call!12286))))

(declare-fun b!237396 () Bool)

(assert (=> b!237396 (= e!146951 (forall!806 lt!94726 lambda!7641))))

(declare-fun b!237397 () Bool)

(assert (=> b!237397 (= e!146949 e!146950)))

(declare-fun c!45449 () Bool)

(assert (=> b!237397 (= c!45449 (dynLambda!1676 lambda!7641 (h!8919 lt!94435)))))

(assert (= (and d!66257 c!45448) b!237394))

(assert (= (and d!66257 (not c!45448)) b!237397))

(assert (= (and b!237397 c!45449) b!237395))

(assert (= (and b!237397 (not c!45449)) b!237393))

(assert (= (or b!237395 b!237393) bm!12281))

(assert (= (and d!66257 res!109631) b!237392))

(assert (= (and b!237392 res!109632) b!237396))

(declare-fun b_lambda!6747 () Bool)

(assert (=> (not b_lambda!6747) (not b!237397)))

(declare-fun m!285545 () Bool)

(assert (=> bm!12281 m!285545))

(declare-fun m!285547 () Bool)

(assert (=> b!237396 m!285547))

(declare-fun m!285549 () Bool)

(assert (=> b!237392 m!285549))

(declare-fun m!285551 () Bool)

(assert (=> b!237392 m!285551))

(declare-fun m!285553 () Bool)

(assert (=> b!237397 m!285553))

(declare-fun m!285555 () Bool)

(assert (=> d!66257 m!285555))

(declare-fun m!285557 () Bool)

(assert (=> d!66257 m!285557))

(assert (=> b!236956 d!66257))

(declare-fun b!237416 () Bool)

(declare-fun e!146960 () Option!678)

(declare-fun call!12289 () Option!678)

(assert (=> b!237416 (= e!146960 call!12289)))

(declare-fun b!237417 () Bool)

(declare-fun res!109652 () Bool)

(declare-fun e!146959 () Bool)

(assert (=> b!237417 (=> (not res!109652) (not e!146959))))

(declare-fun lt!94739 () Option!678)

(assert (=> b!237417 (= res!109652 (= (++!891 (list!1374 (charsOf!317 (_1!2144 (get!1136 lt!94739)))) (_2!2144 (get!1136 lt!94739))) lt!94458))))

(declare-fun b!237418 () Bool)

(declare-fun res!109648 () Bool)

(assert (=> b!237418 (=> (not res!109648) (not e!146959))))

(declare-fun size!2825 (List!3530) Int)

(assert (=> b!237418 (= res!109648 (< (size!2825 (_2!2144 (get!1136 lt!94739))) (size!2825 lt!94458)))))

(declare-fun b!237419 () Bool)

(declare-fun res!109649 () Bool)

(assert (=> b!237419 (=> (not res!109649) (not e!146959))))

(assert (=> b!237419 (= res!109649 (= (list!1374 (charsOf!317 (_1!2144 (get!1136 lt!94739)))) (originalCharacters!705 (_1!2144 (get!1136 lt!94739)))))))

(declare-fun d!66259 () Bool)

(declare-fun e!146958 () Bool)

(assert (=> d!66259 e!146958))

(declare-fun res!109647 () Bool)

(assert (=> d!66259 (=> res!109647 e!146958)))

(declare-fun isEmpty!2094 (Option!678) Bool)

(assert (=> d!66259 (= res!109647 (isEmpty!2094 lt!94739))))

(assert (=> d!66259 (= lt!94739 e!146960)))

(declare-fun c!45452 () Bool)

(assert (=> d!66259 (= c!45452 (and (is-Cons!3521 rules!1920) (is-Nil!3521 (t!34259 rules!1920))))))

(declare-fun lt!94740 () Unit!4177)

(declare-fun lt!94737 () Unit!4177)

(assert (=> d!66259 (= lt!94740 lt!94737)))

(assert (=> d!66259 (isPrefix!358 lt!94458 lt!94458)))

(declare-fun lemmaIsPrefixRefl!184 (List!3530 List!3530) Unit!4177)

(assert (=> d!66259 (= lt!94737 (lemmaIsPrefixRefl!184 lt!94458 lt!94458))))

(declare-fun rulesValidInductive!173 (LexerInterface!548 List!3531) Bool)

(assert (=> d!66259 (rulesValidInductive!173 thiss!17480 rules!1920)))

(assert (=> d!66259 (= (maxPrefix!278 thiss!17480 rules!1920 lt!94458) lt!94739)))

(declare-fun b!237420 () Bool)

(assert (=> b!237420 (= e!146959 (contains!649 rules!1920 (rule!1229 (_1!2144 (get!1136 lt!94739)))))))

(declare-fun bm!12284 () Bool)

(declare-fun maxPrefixOneRule!118 (LexerInterface!548 Rule!1124 List!3530) Option!678)

(assert (=> bm!12284 (= call!12289 (maxPrefixOneRule!118 thiss!17480 (h!8918 rules!1920) lt!94458))))

(declare-fun b!237421 () Bool)

(declare-fun res!109650 () Bool)

(assert (=> b!237421 (=> (not res!109650) (not e!146959))))

(assert (=> b!237421 (= res!109650 (matchR!224 (regex!662 (rule!1229 (_1!2144 (get!1136 lt!94739)))) (list!1374 (charsOf!317 (_1!2144 (get!1136 lt!94739))))))))

(declare-fun b!237422 () Bool)

(declare-fun res!109651 () Bool)

(assert (=> b!237422 (=> (not res!109651) (not e!146959))))

(declare-fun apply!656 (TokenValueInjection!1140 BalanceConc!2300) TokenValue!684)

(assert (=> b!237422 (= res!109651 (= (value!23184 (_1!2144 (get!1136 lt!94739))) (apply!656 (transformation!662 (rule!1229 (_1!2144 (get!1136 lt!94739)))) (seqFromList!701 (originalCharacters!705 (_1!2144 (get!1136 lt!94739)))))))))

(declare-fun b!237423 () Bool)

(declare-fun lt!94738 () Option!678)

(declare-fun lt!94741 () Option!678)

(assert (=> b!237423 (= e!146960 (ite (and (is-None!677 lt!94738) (is-None!677 lt!94741)) None!677 (ite (is-None!677 lt!94741) lt!94738 (ite (is-None!677 lt!94738) lt!94741 (ite (>= (size!2818 (_1!2144 (v!14412 lt!94738))) (size!2818 (_1!2144 (v!14412 lt!94741)))) lt!94738 lt!94741)))))))

(assert (=> b!237423 (= lt!94738 call!12289)))

(assert (=> b!237423 (= lt!94741 (maxPrefix!278 thiss!17480 (t!34259 rules!1920) lt!94458))))

(declare-fun b!237424 () Bool)

(assert (=> b!237424 (= e!146958 e!146959)))

(declare-fun res!109653 () Bool)

(assert (=> b!237424 (=> (not res!109653) (not e!146959))))

(assert (=> b!237424 (= res!109653 (isDefined!529 lt!94739))))

(assert (= (and d!66259 c!45452) b!237416))

(assert (= (and d!66259 (not c!45452)) b!237423))

(assert (= (or b!237416 b!237423) bm!12284))

(assert (= (and d!66259 (not res!109647)) b!237424))

(assert (= (and b!237424 res!109653) b!237419))

(assert (= (and b!237419 res!109649) b!237418))

(assert (= (and b!237418 res!109648) b!237417))

(assert (= (and b!237417 res!109652) b!237422))

(assert (= (and b!237422 res!109651) b!237421))

(assert (= (and b!237421 res!109650) b!237420))

(declare-fun m!285559 () Bool)

(assert (=> b!237421 m!285559))

(declare-fun m!285561 () Bool)

(assert (=> b!237421 m!285561))

(assert (=> b!237421 m!285561))

(declare-fun m!285563 () Bool)

(assert (=> b!237421 m!285563))

(assert (=> b!237421 m!285563))

(declare-fun m!285565 () Bool)

(assert (=> b!237421 m!285565))

(assert (=> b!237418 m!285559))

(declare-fun m!285567 () Bool)

(assert (=> b!237418 m!285567))

(declare-fun m!285569 () Bool)

(assert (=> b!237418 m!285569))

(assert (=> b!237420 m!285559))

(declare-fun m!285571 () Bool)

(assert (=> b!237420 m!285571))

(declare-fun m!285573 () Bool)

(assert (=> bm!12284 m!285573))

(assert (=> b!237422 m!285559))

(declare-fun m!285575 () Bool)

(assert (=> b!237422 m!285575))

(assert (=> b!237422 m!285575))

(declare-fun m!285577 () Bool)

(assert (=> b!237422 m!285577))

(declare-fun m!285579 () Bool)

(assert (=> d!66259 m!285579))

(declare-fun m!285581 () Bool)

(assert (=> d!66259 m!285581))

(declare-fun m!285583 () Bool)

(assert (=> d!66259 m!285583))

(declare-fun m!285585 () Bool)

(assert (=> d!66259 m!285585))

(declare-fun m!285587 () Bool)

(assert (=> b!237423 m!285587))

(declare-fun m!285589 () Bool)

(assert (=> b!237424 m!285589))

(assert (=> b!237417 m!285559))

(assert (=> b!237417 m!285561))

(assert (=> b!237417 m!285561))

(assert (=> b!237417 m!285563))

(assert (=> b!237417 m!285563))

(declare-fun m!285591 () Bool)

(assert (=> b!237417 m!285591))

(assert (=> b!237419 m!285559))

(assert (=> b!237419 m!285561))

(assert (=> b!237419 m!285561))

(assert (=> b!237419 m!285563))

(assert (=> b!236956 d!66259))

(declare-fun d!66261 () Bool)

(declare-fun lt!94744 () BalanceConc!2300)

(assert (=> d!66261 (= (list!1374 lt!94744) (printListTailRec!103 thiss!17480 (dropList!135 lt!94464 0) (list!1374 (BalanceConc!2301 Empty!1146))))))

(declare-fun e!146962 () BalanceConc!2300)

(assert (=> d!66261 (= lt!94744 e!146962)))

(declare-fun c!45453 () Bool)

(assert (=> d!66261 (= c!45453 (>= 0 (size!2819 lt!94464)))))

(declare-fun e!146961 () Bool)

(assert (=> d!66261 e!146961))

(declare-fun res!109654 () Bool)

(assert (=> d!66261 (=> (not res!109654) (not e!146961))))

(assert (=> d!66261 (= res!109654 (>= 0 0))))

(assert (=> d!66261 (= (printTailRec!242 thiss!17480 lt!94464 0 (BalanceConc!2301 Empty!1146)) lt!94744)))

(declare-fun b!237425 () Bool)

(assert (=> b!237425 (= e!146961 (<= 0 (size!2819 lt!94464)))))

(declare-fun b!237426 () Bool)

(assert (=> b!237426 (= e!146962 (BalanceConc!2301 Empty!1146))))

(declare-fun b!237427 () Bool)

(assert (=> b!237427 (= e!146962 (printTailRec!242 thiss!17480 lt!94464 (+ 0 1) (++!893 (BalanceConc!2301 Empty!1146) (charsOf!317 (apply!653 lt!94464 0)))))))

(declare-fun lt!94747 () List!3532)

(assert (=> b!237427 (= lt!94747 (list!1375 lt!94464))))

(declare-fun lt!94742 () Unit!4177)

(assert (=> b!237427 (= lt!94742 (lemmaDropApply!175 lt!94747 0))))

(assert (=> b!237427 (= (head!819 (drop!188 lt!94747 0)) (apply!655 lt!94747 0))))

(declare-fun lt!94745 () Unit!4177)

(assert (=> b!237427 (= lt!94745 lt!94742)))

(declare-fun lt!94743 () List!3532)

(assert (=> b!237427 (= lt!94743 (list!1375 lt!94464))))

(declare-fun lt!94748 () Unit!4177)

(assert (=> b!237427 (= lt!94748 (lemmaDropTail!167 lt!94743 0))))

(assert (=> b!237427 (= (tail!436 (drop!188 lt!94743 0)) (drop!188 lt!94743 (+ 0 1)))))

(declare-fun lt!94746 () Unit!4177)

(assert (=> b!237427 (= lt!94746 lt!94748)))

(assert (= (and d!66261 res!109654) b!237425))

(assert (= (and d!66261 c!45453) b!237426))

(assert (= (and d!66261 (not c!45453)) b!237427))

(declare-fun m!285593 () Bool)

(assert (=> d!66261 m!285593))

(declare-fun m!285595 () Bool)

(assert (=> d!66261 m!285595))

(declare-fun m!285597 () Bool)

(assert (=> d!66261 m!285597))

(assert (=> d!66261 m!285593))

(assert (=> d!66261 m!285315))

(declare-fun m!285599 () Bool)

(assert (=> d!66261 m!285599))

(assert (=> d!66261 m!285315))

(assert (=> b!237425 m!285595))

(declare-fun m!285601 () Bool)

(assert (=> b!237427 m!285601))

(declare-fun m!285603 () Bool)

(assert (=> b!237427 m!285603))

(declare-fun m!285605 () Bool)

(assert (=> b!237427 m!285605))

(declare-fun m!285607 () Bool)

(assert (=> b!237427 m!285607))

(declare-fun m!285609 () Bool)

(assert (=> b!237427 m!285609))

(declare-fun m!285611 () Bool)

(assert (=> b!237427 m!285611))

(declare-fun m!285613 () Bool)

(assert (=> b!237427 m!285613))

(declare-fun m!285615 () Bool)

(assert (=> b!237427 m!285615))

(assert (=> b!237427 m!285609))

(declare-fun m!285617 () Bool)

(assert (=> b!237427 m!285617))

(declare-fun m!285619 () Bool)

(assert (=> b!237427 m!285619))

(declare-fun m!285621 () Bool)

(assert (=> b!237427 m!285621))

(assert (=> b!237427 m!285607))

(declare-fun m!285623 () Bool)

(assert (=> b!237427 m!285623))

(assert (=> b!237427 m!285611))

(assert (=> b!237427 m!285613))

(assert (=> b!237427 m!285619))

(declare-fun m!285625 () Bool)

(assert (=> b!237427 m!285625))

(assert (=> b!236956 d!66261))

(declare-fun d!66263 () Bool)

(assert (=> d!66263 (= (head!820 lt!94434) (h!8917 lt!94434))))

(assert (=> b!236956 d!66263))

(declare-fun bs!25336 () Bool)

(declare-fun d!66265 () Bool)

(assert (= bs!25336 (and d!66265 b!236970)))

(declare-fun lambda!7663 () Int)

(assert (=> bs!25336 (= lambda!7663 lambda!7641)))

(declare-fun bs!25337 () Bool)

(assert (= bs!25337 (and d!66265 b!236969)))

(assert (=> bs!25337 (not (= lambda!7663 lambda!7642))))

(assert (=> d!66265 (= (filter!56 (list!1375 (_1!2145 (lex!348 thiss!17480 rules!1920 (printWithSeparatorTokenWhenNeededRec!231 thiss!17480 rules!1920 (seqFromList!702 (t!34260 tokens!465)) separatorToken!170 0)))) lambda!7663) (t!34260 tokens!465))))

(declare-fun lt!94757 () Unit!4177)

(declare-fun choose!2263 (LexerInterface!548 List!3531 List!3532 Token!1068) Unit!4177)

(assert (=> d!66265 (= lt!94757 (choose!2263 thiss!17480 rules!1920 (t!34260 tokens!465) separatorToken!170))))

(assert (=> d!66265 (not (isEmpty!2086 rules!1920))))

(assert (=> d!66265 (= (theoremInvertabilityFromTokensSepTokenWhenNeeded!47 thiss!17480 rules!1920 (t!34260 tokens!465) separatorToken!170) lt!94757)))

(declare-fun bs!25338 () Bool)

(assert (= bs!25338 d!66265))

(assert (=> bs!25338 m!284965))

(declare-fun m!285649 () Bool)

(assert (=> bs!25338 m!285649))

(declare-fun m!285651 () Bool)

(assert (=> bs!25338 m!285651))

(declare-fun m!285653 () Bool)

(assert (=> bs!25338 m!285653))

(assert (=> bs!25338 m!285651))

(assert (=> bs!25338 m!285003))

(declare-fun m!285655 () Bool)

(assert (=> bs!25338 m!285655))

(assert (=> bs!25338 m!284963))

(assert (=> bs!25338 m!284963))

(assert (=> bs!25338 m!284965))

(assert (=> b!236956 d!66265))

(declare-fun d!66275 () Bool)

(declare-fun e!146990 () Bool)

(assert (=> d!66275 e!146990))

(declare-fun res!109687 () Bool)

(assert (=> d!66275 (=> (not res!109687) (not e!146990))))

(assert (=> d!66275 (= res!109687 (isDefined!530 (getRuleFromTag!103 thiss!17480 rules!1920 (tag!866 (rule!1229 separatorToken!170)))))))

(declare-fun lt!94781 () Unit!4177)

(declare-fun choose!2264 (LexerInterface!548 List!3531 List!3530 Token!1068) Unit!4177)

(assert (=> d!66275 (= lt!94781 (choose!2264 thiss!17480 rules!1920 lt!94463 separatorToken!170))))

(assert (=> d!66275 (rulesInvariant!514 thiss!17480 rules!1920)))

(assert (=> d!66275 (= (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!103 thiss!17480 rules!1920 lt!94463 separatorToken!170) lt!94781)))

(declare-fun b!237466 () Bool)

(declare-fun res!109688 () Bool)

(assert (=> b!237466 (=> (not res!109688) (not e!146990))))

(assert (=> b!237466 (= res!109688 (matchR!224 (regex!662 (get!1137 (getRuleFromTag!103 thiss!17480 rules!1920 (tag!866 (rule!1229 separatorToken!170))))) (list!1374 (charsOf!317 separatorToken!170))))))

(declare-fun b!237467 () Bool)

(assert (=> b!237467 (= e!146990 (= (rule!1229 separatorToken!170) (get!1137 (getRuleFromTag!103 thiss!17480 rules!1920 (tag!866 (rule!1229 separatorToken!170))))))))

(assert (= (and d!66275 res!109687) b!237466))

(assert (= (and b!237466 res!109688) b!237467))

(assert (=> d!66275 m!284899))

(assert (=> d!66275 m!284899))

(declare-fun m!285657 () Bool)

(assert (=> d!66275 m!285657))

(declare-fun m!285659 () Bool)

(assert (=> d!66275 m!285659))

(assert (=> d!66275 m!284799))

(assert (=> b!237466 m!284899))

(declare-fun m!285661 () Bool)

(assert (=> b!237466 m!285661))

(assert (=> b!237466 m!284947))

(assert (=> b!237466 m!284899))

(assert (=> b!237466 m!284949))

(declare-fun m!285663 () Bool)

(assert (=> b!237466 m!285663))

(assert (=> b!237466 m!284947))

(assert (=> b!237466 m!284949))

(assert (=> b!237467 m!284899))

(assert (=> b!237467 m!284899))

(assert (=> b!237467 m!285661))

(assert (=> b!236956 d!66275))

(declare-fun d!66277 () Bool)

(declare-fun e!146991 () Bool)

(assert (=> d!66277 e!146991))

(declare-fun res!109689 () Bool)

(assert (=> d!66277 (=> (not res!109689) (not e!146991))))

(declare-fun lt!94782 () BalanceConc!2302)

(assert (=> d!66277 (= res!109689 (= (list!1375 lt!94782) (Cons!3522 separatorToken!170 Nil!3522)))))

(assert (=> d!66277 (= lt!94782 (singleton!84 separatorToken!170))))

(assert (=> d!66277 (= (singletonSeq!214 separatorToken!170) lt!94782)))

(declare-fun b!237468 () Bool)

(assert (=> b!237468 (= e!146991 (isBalanced!303 (c!45384 lt!94782)))))

(assert (= (and d!66277 res!109689) b!237468))

(declare-fun m!285673 () Bool)

(assert (=> d!66277 m!285673))

(declare-fun m!285677 () Bool)

(assert (=> d!66277 m!285677))

(declare-fun m!285679 () Bool)

(assert (=> b!237468 m!285679))

(assert (=> b!236956 d!66277))

(declare-fun d!66279 () Bool)

(assert (=> d!66279 (= lt!94458 (_2!2144 lt!94460))))

(declare-fun lt!94785 () Unit!4177)

(declare-fun choose!2265 (List!3530 List!3530 List!3530 List!3530 List!3530) Unit!4177)

(assert (=> d!66279 (= lt!94785 (choose!2265 lt!94426 lt!94458 lt!94426 (_2!2144 lt!94460) lt!94431))))

(assert (=> d!66279 (isPrefix!358 lt!94426 lt!94431)))

(assert (=> d!66279 (= (lemmaSamePrefixThenSameSuffix!183 lt!94426 lt!94458 lt!94426 (_2!2144 lt!94460) lt!94431) lt!94785)))

(declare-fun bs!25339 () Bool)

(assert (= bs!25339 d!66279))

(declare-fun m!285699 () Bool)

(assert (=> bs!25339 m!285699))

(declare-fun m!285701 () Bool)

(assert (=> bs!25339 m!285701))

(assert (=> b!236956 d!66279))

(declare-fun d!66283 () Bool)

(declare-fun lt!94788 () BalanceConc!2300)

(assert (=> d!66283 (= (list!1374 lt!94788) (printListTailRec!103 thiss!17480 (dropList!135 lt!94429 0) (list!1374 (BalanceConc!2301 Empty!1146))))))

(declare-fun e!146993 () BalanceConc!2300)

(assert (=> d!66283 (= lt!94788 e!146993)))

(declare-fun c!45457 () Bool)

(assert (=> d!66283 (= c!45457 (>= 0 (size!2819 lt!94429)))))

(declare-fun e!146992 () Bool)

(assert (=> d!66283 e!146992))

(declare-fun res!109690 () Bool)

(assert (=> d!66283 (=> (not res!109690) (not e!146992))))

(assert (=> d!66283 (= res!109690 (>= 0 0))))

(assert (=> d!66283 (= (printTailRec!242 thiss!17480 lt!94429 0 (BalanceConc!2301 Empty!1146)) lt!94788)))

(declare-fun b!237469 () Bool)

(assert (=> b!237469 (= e!146992 (<= 0 (size!2819 lt!94429)))))

(declare-fun b!237470 () Bool)

(assert (=> b!237470 (= e!146993 (BalanceConc!2301 Empty!1146))))

(declare-fun b!237471 () Bool)

(assert (=> b!237471 (= e!146993 (printTailRec!242 thiss!17480 lt!94429 (+ 0 1) (++!893 (BalanceConc!2301 Empty!1146) (charsOf!317 (apply!653 lt!94429 0)))))))

(declare-fun lt!94791 () List!3532)

(assert (=> b!237471 (= lt!94791 (list!1375 lt!94429))))

(declare-fun lt!94786 () Unit!4177)

(assert (=> b!237471 (= lt!94786 (lemmaDropApply!175 lt!94791 0))))

(assert (=> b!237471 (= (head!819 (drop!188 lt!94791 0)) (apply!655 lt!94791 0))))

(declare-fun lt!94789 () Unit!4177)

(assert (=> b!237471 (= lt!94789 lt!94786)))

(declare-fun lt!94787 () List!3532)

(assert (=> b!237471 (= lt!94787 (list!1375 lt!94429))))

(declare-fun lt!94792 () Unit!4177)

(assert (=> b!237471 (= lt!94792 (lemmaDropTail!167 lt!94787 0))))

(assert (=> b!237471 (= (tail!436 (drop!188 lt!94787 0)) (drop!188 lt!94787 (+ 0 1)))))

(declare-fun lt!94790 () Unit!4177)

(assert (=> b!237471 (= lt!94790 lt!94792)))

(assert (= (and d!66283 res!109690) b!237469))

(assert (= (and d!66283 c!45457) b!237470))

(assert (= (and d!66283 (not c!45457)) b!237471))

(declare-fun m!285705 () Bool)

(assert (=> d!66283 m!285705))

(declare-fun m!285707 () Bool)

(assert (=> d!66283 m!285707))

(declare-fun m!285709 () Bool)

(assert (=> d!66283 m!285709))

(assert (=> d!66283 m!285705))

(assert (=> d!66283 m!285315))

(declare-fun m!285711 () Bool)

(assert (=> d!66283 m!285711))

(assert (=> d!66283 m!285315))

(assert (=> b!237469 m!285707))

(declare-fun m!285713 () Bool)

(assert (=> b!237471 m!285713))

(declare-fun m!285715 () Bool)

(assert (=> b!237471 m!285715))

(declare-fun m!285717 () Bool)

(assert (=> b!237471 m!285717))

(declare-fun m!285719 () Bool)

(assert (=> b!237471 m!285719))

(declare-fun m!285721 () Bool)

(assert (=> b!237471 m!285721))

(declare-fun m!285723 () Bool)

(assert (=> b!237471 m!285723))

(declare-fun m!285725 () Bool)

(assert (=> b!237471 m!285725))

(declare-fun m!285727 () Bool)

(assert (=> b!237471 m!285727))

(assert (=> b!237471 m!285721))

(declare-fun m!285729 () Bool)

(assert (=> b!237471 m!285729))

(declare-fun m!285731 () Bool)

(assert (=> b!237471 m!285731))

(declare-fun m!285733 () Bool)

(assert (=> b!237471 m!285733))

(assert (=> b!237471 m!285719))

(declare-fun m!285735 () Bool)

(assert (=> b!237471 m!285735))

(assert (=> b!237471 m!285723))

(assert (=> b!237471 m!285725))

(assert (=> b!237471 m!285731))

(declare-fun m!285737 () Bool)

(assert (=> b!237471 m!285737))

(assert (=> b!236956 d!66283))

(declare-fun b!237501 () Bool)

(declare-fun e!147012 () List!3530)

(declare-fun call!12304 () List!3530)

(assert (=> b!237501 (= e!147012 call!12304)))

(declare-fun b!237502 () Bool)

(declare-fun e!147013 () List!3530)

(assert (=> b!237502 (= e!147013 Nil!3520)))

(declare-fun b!237503 () Bool)

(declare-fun e!147014 () List!3530)

(assert (=> b!237503 (= e!147012 e!147014)))

(declare-fun c!45467 () Bool)

(assert (=> b!237503 (= c!45467 (is-Union!886 (regex!662 (rule!1229 lt!94452))))))

(declare-fun b!237504 () Bool)

(declare-fun call!12301 () List!3530)

(assert (=> b!237504 (= e!147014 call!12301)))

(declare-fun bm!12297 () Bool)

(declare-fun call!12302 () List!3530)

(declare-fun call!12303 () List!3530)

(assert (=> bm!12297 (= call!12301 (++!891 call!12302 call!12303))))

(declare-fun b!237505 () Bool)

(declare-fun e!147011 () List!3530)

(assert (=> b!237505 (= e!147013 e!147011)))

(declare-fun c!45466 () Bool)

(assert (=> b!237505 (= c!45466 (is-ElementMatch!886 (regex!662 (rule!1229 lt!94452))))))

(declare-fun b!237506 () Bool)

(assert (=> b!237506 (= e!147011 (Cons!3520 (c!45383 (regex!662 (rule!1229 lt!94452))) Nil!3520))))

(declare-fun d!66287 () Bool)

(declare-fun c!45468 () Bool)

(assert (=> d!66287 (= c!45468 (or (is-EmptyExpr!886 (regex!662 (rule!1229 lt!94452))) (is-EmptyLang!886 (regex!662 (rule!1229 lt!94452)))))))

(assert (=> d!66287 (= (usedCharacters!67 (regex!662 (rule!1229 lt!94452))) e!147013)))

(declare-fun bm!12296 () Bool)

(declare-fun c!45469 () Bool)

(assert (=> bm!12296 (= call!12304 (usedCharacters!67 (ite c!45469 (reg!1215 (regex!662 (rule!1229 lt!94452))) (ite c!45467 (regTwo!2285 (regex!662 (rule!1229 lt!94452))) (regTwo!2284 (regex!662 (rule!1229 lt!94452)))))))))

(declare-fun b!237507 () Bool)

(assert (=> b!237507 (= e!147014 call!12301)))

(declare-fun bm!12298 () Bool)

(assert (=> bm!12298 (= call!12302 (usedCharacters!67 (ite c!45467 (regOne!2285 (regex!662 (rule!1229 lt!94452))) (regOne!2284 (regex!662 (rule!1229 lt!94452))))))))

(declare-fun b!237508 () Bool)

(assert (=> b!237508 (= c!45469 (is-Star!886 (regex!662 (rule!1229 lt!94452))))))

(assert (=> b!237508 (= e!147011 e!147012)))

(declare-fun bm!12299 () Bool)

(assert (=> bm!12299 (= call!12303 call!12304)))

(assert (= (and d!66287 c!45468) b!237502))

(assert (= (and d!66287 (not c!45468)) b!237505))

(assert (= (and b!237505 c!45466) b!237506))

(assert (= (and b!237505 (not c!45466)) b!237508))

(assert (= (and b!237508 c!45469) b!237501))

(assert (= (and b!237508 (not c!45469)) b!237503))

(assert (= (and b!237503 c!45467) b!237507))

(assert (= (and b!237503 (not c!45467)) b!237504))

(assert (= (or b!237507 b!237504) bm!12298))

(assert (= (or b!237507 b!237504) bm!12299))

(assert (= (or b!237507 b!237504) bm!12297))

(assert (= (or b!237501 bm!12299) bm!12296))

(declare-fun m!285775 () Bool)

(assert (=> bm!12297 m!285775))

(declare-fun m!285777 () Bool)

(assert (=> bm!12296 m!285777))

(declare-fun m!285779 () Bool)

(assert (=> bm!12298 m!285779))

(assert (=> b!236956 d!66287))

(declare-fun d!66297 () Bool)

(declare-fun e!147017 () Bool)

(assert (=> d!66297 e!147017))

(declare-fun res!109705 () Bool)

(assert (=> d!66297 (=> (not res!109705) (not e!147017))))

(declare-fun e!147018 () Bool)

(assert (=> d!66297 (= res!109705 e!147018)))

(declare-fun c!45470 () Bool)

(declare-fun lt!94800 () tuple2!3858)

(assert (=> d!66297 (= c!45470 (> (size!2819 (_1!2145 lt!94800)) 0))))

(assert (=> d!66297 (= lt!94800 (lexTailRecV2!147 thiss!17480 rules!1920 lt!94436 (BalanceConc!2301 Empty!1146) lt!94436 (BalanceConc!2303 Empty!1147)))))

(assert (=> d!66297 (= (lex!348 thiss!17480 rules!1920 lt!94436) lt!94800)))

(declare-fun b!237513 () Bool)

(declare-fun e!147019 () Bool)

(assert (=> b!237513 (= e!147018 e!147019)))

(declare-fun res!109706 () Bool)

(assert (=> b!237513 (= res!109706 (< (size!2823 (_2!2145 lt!94800)) (size!2823 lt!94436)))))

(assert (=> b!237513 (=> (not res!109706) (not e!147019))))

(declare-fun b!237514 () Bool)

(assert (=> b!237514 (= e!147017 (= (list!1374 (_2!2145 lt!94800)) (_2!2146 (lexList!176 thiss!17480 rules!1920 (list!1374 lt!94436)))))))

(declare-fun b!237515 () Bool)

(assert (=> b!237515 (= e!147018 (= (_2!2145 lt!94800) lt!94436))))

(declare-fun b!237516 () Bool)

(assert (=> b!237516 (= e!147019 (not (isEmpty!2083 (_1!2145 lt!94800))))))

(declare-fun b!237517 () Bool)

(declare-fun res!109704 () Bool)

(assert (=> b!237517 (=> (not res!109704) (not e!147017))))

(assert (=> b!237517 (= res!109704 (= (list!1375 (_1!2145 lt!94800)) (_1!2146 (lexList!176 thiss!17480 rules!1920 (list!1374 lt!94436)))))))

(assert (= (and d!66297 c!45470) b!237513))

(assert (= (and d!66297 (not c!45470)) b!237515))

(assert (= (and b!237513 res!109706) b!237516))

(assert (= (and d!66297 res!109705) b!237517))

(assert (= (and b!237517 res!109704) b!237514))

(declare-fun m!285785 () Bool)

(assert (=> b!237516 m!285785))

(declare-fun m!285787 () Bool)

(assert (=> d!66297 m!285787))

(declare-fun m!285789 () Bool)

(assert (=> d!66297 m!285789))

(declare-fun m!285791 () Bool)

(assert (=> b!237514 m!285791))

(declare-fun m!285793 () Bool)

(assert (=> b!237514 m!285793))

(assert (=> b!237514 m!285793))

(declare-fun m!285795 () Bool)

(assert (=> b!237514 m!285795))

(declare-fun m!285797 () Bool)

(assert (=> b!237517 m!285797))

(assert (=> b!237517 m!285793))

(assert (=> b!237517 m!285793))

(assert (=> b!237517 m!285795))

(declare-fun m!285801 () Bool)

(assert (=> b!237513 m!285801))

(declare-fun m!285803 () Bool)

(assert (=> b!237513 m!285803))

(assert (=> b!236956 d!66297))

(declare-fun d!66299 () Bool)

(assert (=> d!66299 (= (maxPrefix!278 thiss!17480 rules!1920 (++!891 (list!1374 (charsOf!317 separatorToken!170)) lt!94434)) (Some!677 (tuple2!3857 separatorToken!170 lt!94434)))))

(declare-fun lt!94808 () Unit!4177)

(declare-fun choose!2266 (LexerInterface!548 List!3531 Token!1068 Rule!1124 List!3530 Rule!1124) Unit!4177)

(assert (=> d!66299 (= lt!94808 (choose!2266 thiss!17480 rules!1920 separatorToken!170 (rule!1229 separatorToken!170) lt!94434 (rule!1229 lt!94452)))))

(assert (=> d!66299 (not (isEmpty!2086 rules!1920))))

(assert (=> d!66299 (= (lemmaMaxPrefWithOtherTypeUsedCharAtStartOfSuffixReturnSame!53 thiss!17480 rules!1920 separatorToken!170 (rule!1229 separatorToken!170) lt!94434 (rule!1229 lt!94452)) lt!94808)))

(declare-fun bs!25344 () Bool)

(assert (= bs!25344 d!66299))

(assert (=> bs!25344 m!284947))

(assert (=> bs!25344 m!284949))

(declare-fun m!285861 () Bool)

(assert (=> bs!25344 m!285861))

(assert (=> bs!25344 m!284947))

(declare-fun m!285863 () Bool)

(assert (=> bs!25344 m!285863))

(declare-fun m!285865 () Bool)

(assert (=> bs!25344 m!285865))

(assert (=> bs!25344 m!285003))

(assert (=> bs!25344 m!284949))

(assert (=> bs!25344 m!285863))

(assert (=> b!236956 d!66299))

(declare-fun d!66323 () Bool)

(assert (=> d!66323 (= (isDefined!530 lt!94447) (not (isEmpty!2093 lt!94447)))))

(declare-fun bs!25345 () Bool)

(assert (= bs!25345 d!66323))

(declare-fun m!285867 () Bool)

(assert (=> bs!25345 m!285867))

(assert (=> b!236956 d!66323))

(declare-fun d!66325 () Bool)

(assert (=> d!66325 (= (isEmpty!2085 (t!34260 tokens!465)) (is-Nil!3522 (t!34260 tokens!465)))))

(assert (=> b!236956 d!66325))

(declare-fun d!66327 () Bool)

(assert (=> d!66327 (= (isEmpty!2085 tokens!465) (is-Nil!3522 tokens!465))))

(assert (=> b!236956 d!66327))

(declare-fun d!66329 () Bool)

(assert (=> d!66329 (dynLambda!1676 lambda!7642 lt!94452)))

(declare-fun lt!94811 () Unit!4177)

(declare-fun choose!2267 (List!3532 Int Token!1068) Unit!4177)

(assert (=> d!66329 (= lt!94811 (choose!2267 tokens!465 lambda!7642 lt!94452))))

(declare-fun e!147042 () Bool)

(assert (=> d!66329 e!147042))

(declare-fun res!109728 () Bool)

(assert (=> d!66329 (=> (not res!109728) (not e!147042))))

(assert (=> d!66329 (= res!109728 (forall!806 tokens!465 lambda!7642))))

(assert (=> d!66329 (= (forallContained!229 tokens!465 lambda!7642 lt!94452) lt!94811)))

(declare-fun b!237550 () Bool)

(declare-fun contains!650 (List!3532 Token!1068) Bool)

(assert (=> b!237550 (= e!147042 (contains!650 tokens!465 lt!94452))))

(assert (= (and d!66329 res!109728) b!237550))

(declare-fun b_lambda!6755 () Bool)

(assert (=> (not b_lambda!6755) (not d!66329)))

(declare-fun m!285869 () Bool)

(assert (=> d!66329 m!285869))

(declare-fun m!285871 () Bool)

(assert (=> d!66329 m!285871))

(declare-fun m!285873 () Bool)

(assert (=> d!66329 m!285873))

(declare-fun m!285875 () Bool)

(assert (=> b!237550 m!285875))

(assert (=> b!236956 d!66329))

(declare-fun d!66331 () Bool)

(declare-fun lt!94812 () Int)

(assert (=> d!66331 (= lt!94812 (size!2822 (list!1375 (_1!2145 lt!94461))))))

(assert (=> d!66331 (= lt!94812 (size!2824 (c!45384 (_1!2145 lt!94461))))))

(assert (=> d!66331 (= (size!2819 (_1!2145 lt!94461)) lt!94812)))

(declare-fun bs!25346 () Bool)

(assert (= bs!25346 d!66331))

(declare-fun m!285877 () Bool)

(assert (=> bs!25346 m!285877))

(assert (=> bs!25346 m!285877))

(declare-fun m!285879 () Bool)

(assert (=> bs!25346 m!285879))

(declare-fun m!285881 () Bool)

(assert (=> bs!25346 m!285881))

(assert (=> b!236956 d!66331))

(declare-fun d!66333 () Bool)

(declare-fun lt!94813 () BalanceConc!2300)

(assert (=> d!66333 (= (list!1374 lt!94813) (printList!232 thiss!17480 (list!1375 lt!94464)))))

(assert (=> d!66333 (= lt!94813 (printTailRec!242 thiss!17480 lt!94464 0 (BalanceConc!2301 Empty!1146)))))

(assert (=> d!66333 (= (print!279 thiss!17480 lt!94464) lt!94813)))

(declare-fun bs!25347 () Bool)

(assert (= bs!25347 d!66333))

(declare-fun m!285883 () Bool)

(assert (=> bs!25347 m!285883))

(assert (=> bs!25347 m!285601))

(assert (=> bs!25347 m!285601))

(declare-fun m!285885 () Bool)

(assert (=> bs!25347 m!285885))

(assert (=> bs!25347 m!284821))

(assert (=> b!236956 d!66333))

(declare-fun d!66335 () Bool)

(assert (=> d!66335 (rulesProduceIndividualToken!297 thiss!17480 rules!1920 lt!94452)))

(declare-fun lt!94816 () Unit!4177)

(declare-fun choose!2268 (LexerInterface!548 List!3531 List!3532 Token!1068) Unit!4177)

(assert (=> d!66335 (= lt!94816 (choose!2268 thiss!17480 rules!1920 tokens!465 lt!94452))))

(assert (=> d!66335 (not (isEmpty!2086 rules!1920))))

(assert (=> d!66335 (= (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!115 thiss!17480 rules!1920 tokens!465 lt!94452) lt!94816)))

(declare-fun bs!25348 () Bool)

(assert (= bs!25348 d!66335))

(assert (=> bs!25348 m!284903))

(declare-fun m!285887 () Bool)

(assert (=> bs!25348 m!285887))

(assert (=> bs!25348 m!285003))

(assert (=> b!236956 d!66335))

(declare-fun d!66337 () Bool)

(declare-fun lt!94817 () Bool)

(assert (=> d!66337 (= lt!94817 (set.member lt!94427 (content!491 (usedCharacters!67 (regex!662 (rule!1229 lt!94452))))))))

(declare-fun e!147044 () Bool)

(assert (=> d!66337 (= lt!94817 e!147044)))

(declare-fun res!109729 () Bool)

(assert (=> d!66337 (=> (not res!109729) (not e!147044))))

(assert (=> d!66337 (= res!109729 (is-Cons!3520 (usedCharacters!67 (regex!662 (rule!1229 lt!94452)))))))

(assert (=> d!66337 (= (contains!647 (usedCharacters!67 (regex!662 (rule!1229 lt!94452))) lt!94427) lt!94817)))

(declare-fun b!237551 () Bool)

(declare-fun e!147043 () Bool)

(assert (=> b!237551 (= e!147044 e!147043)))

(declare-fun res!109730 () Bool)

(assert (=> b!237551 (=> res!109730 e!147043)))

(assert (=> b!237551 (= res!109730 (= (h!8917 (usedCharacters!67 (regex!662 (rule!1229 lt!94452)))) lt!94427))))

(declare-fun b!237552 () Bool)

(assert (=> b!237552 (= e!147043 (contains!647 (t!34258 (usedCharacters!67 (regex!662 (rule!1229 lt!94452)))) lt!94427))))

(assert (= (and d!66337 res!109729) b!237551))

(assert (= (and b!237551 (not res!109730)) b!237552))

(assert (=> d!66337 m!284871))

(declare-fun m!285889 () Bool)

(assert (=> d!66337 m!285889))

(declare-fun m!285891 () Bool)

(assert (=> d!66337 m!285891))

(declare-fun m!285893 () Bool)

(assert (=> b!237552 m!285893))

(assert (=> b!236956 d!66337))

(declare-fun d!66339 () Bool)

(declare-fun e!147045 () Bool)

(assert (=> d!66339 e!147045))

(declare-fun res!109731 () Bool)

(assert (=> d!66339 (=> (not res!109731) (not e!147045))))

(assert (=> d!66339 (= res!109731 (isDefined!530 (getRuleFromTag!103 thiss!17480 rules!1920 (tag!866 (rule!1229 lt!94452)))))))

(declare-fun lt!94818 () Unit!4177)

(assert (=> d!66339 (= lt!94818 (choose!2264 thiss!17480 rules!1920 lt!94440 lt!94452))))

(assert (=> d!66339 (rulesInvariant!514 thiss!17480 rules!1920)))

(assert (=> d!66339 (= (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!103 thiss!17480 rules!1920 lt!94440 lt!94452) lt!94818)))

(declare-fun b!237553 () Bool)

(declare-fun res!109732 () Bool)

(assert (=> b!237553 (=> (not res!109732) (not e!147045))))

(assert (=> b!237553 (= res!109732 (matchR!224 (regex!662 (get!1137 (getRuleFromTag!103 thiss!17480 rules!1920 (tag!866 (rule!1229 lt!94452))))) (list!1374 (charsOf!317 lt!94452))))))

(declare-fun b!237554 () Bool)

(assert (=> b!237554 (= e!147045 (= (rule!1229 lt!94452) (get!1137 (getRuleFromTag!103 thiss!17480 rules!1920 (tag!866 (rule!1229 lt!94452))))))))

(assert (= (and d!66339 res!109731) b!237553))

(assert (= (and b!237553 res!109732) b!237554))

(assert (=> d!66339 m!284875))

(assert (=> d!66339 m!284875))

(declare-fun m!285895 () Bool)

(assert (=> d!66339 m!285895))

(declare-fun m!285897 () Bool)

(assert (=> d!66339 m!285897))

(assert (=> d!66339 m!284799))

(assert (=> b!237553 m!284875))

(declare-fun m!285899 () Bool)

(assert (=> b!237553 m!285899))

(assert (=> b!237553 m!284843))

(assert (=> b!237553 m!284875))

(assert (=> b!237553 m!284887))

(declare-fun m!285901 () Bool)

(assert (=> b!237553 m!285901))

(assert (=> b!237553 m!284843))

(assert (=> b!237553 m!284887))

(assert (=> b!237554 m!284875))

(assert (=> b!237554 m!284875))

(assert (=> b!237554 m!285899))

(assert (=> b!236956 d!66339))

(declare-fun d!66341 () Bool)

(assert (=> d!66341 (= (list!1374 (charsOf!317 lt!94452)) (list!1379 (c!45382 (charsOf!317 lt!94452))))))

(declare-fun bs!25349 () Bool)

(assert (= bs!25349 d!66341))

(declare-fun m!285903 () Bool)

(assert (=> bs!25349 m!285903))

(assert (=> b!236956 d!66341))

(declare-fun d!66343 () Bool)

(declare-fun lt!94819 () BalanceConc!2300)

(assert (=> d!66343 (= (list!1374 lt!94819) (printList!232 thiss!17480 (list!1375 lt!94429)))))

(assert (=> d!66343 (= lt!94819 (printTailRec!242 thiss!17480 lt!94429 0 (BalanceConc!2301 Empty!1146)))))

(assert (=> d!66343 (= (print!279 thiss!17480 lt!94429) lt!94819)))

(declare-fun bs!25350 () Bool)

(assert (= bs!25350 d!66343))

(declare-fun m!285905 () Bool)

(assert (=> bs!25350 m!285905))

(assert (=> bs!25350 m!285713))

(assert (=> bs!25350 m!285713))

(declare-fun m!285907 () Bool)

(assert (=> bs!25350 m!285907))

(assert (=> bs!25350 m!284889))

(assert (=> b!236956 d!66343))

(declare-fun b!237555 () Bool)

(declare-fun e!147048 () Option!678)

(declare-fun call!12305 () Option!678)

(assert (=> b!237555 (= e!147048 call!12305)))

(declare-fun b!237556 () Bool)

(declare-fun res!109738 () Bool)

(declare-fun e!147047 () Bool)

(assert (=> b!237556 (=> (not res!109738) (not e!147047))))

(declare-fun lt!94822 () Option!678)

(assert (=> b!237556 (= res!109738 (= (++!891 (list!1374 (charsOf!317 (_1!2144 (get!1136 lt!94822)))) (_2!2144 (get!1136 lt!94822))) lt!94431))))

(declare-fun b!237557 () Bool)

(declare-fun res!109734 () Bool)

(assert (=> b!237557 (=> (not res!109734) (not e!147047))))

(assert (=> b!237557 (= res!109734 (< (size!2825 (_2!2144 (get!1136 lt!94822))) (size!2825 lt!94431)))))

(declare-fun b!237558 () Bool)

(declare-fun res!109735 () Bool)

(assert (=> b!237558 (=> (not res!109735) (not e!147047))))

(assert (=> b!237558 (= res!109735 (= (list!1374 (charsOf!317 (_1!2144 (get!1136 lt!94822)))) (originalCharacters!705 (_1!2144 (get!1136 lt!94822)))))))

(declare-fun d!66345 () Bool)

(declare-fun e!147046 () Bool)

(assert (=> d!66345 e!147046))

(declare-fun res!109733 () Bool)

(assert (=> d!66345 (=> res!109733 e!147046)))

(assert (=> d!66345 (= res!109733 (isEmpty!2094 lt!94822))))

(assert (=> d!66345 (= lt!94822 e!147048)))

(declare-fun c!45476 () Bool)

(assert (=> d!66345 (= c!45476 (and (is-Cons!3521 rules!1920) (is-Nil!3521 (t!34259 rules!1920))))))

(declare-fun lt!94823 () Unit!4177)

(declare-fun lt!94820 () Unit!4177)

(assert (=> d!66345 (= lt!94823 lt!94820)))

(assert (=> d!66345 (isPrefix!358 lt!94431 lt!94431)))

(assert (=> d!66345 (= lt!94820 (lemmaIsPrefixRefl!184 lt!94431 lt!94431))))

(assert (=> d!66345 (rulesValidInductive!173 thiss!17480 rules!1920)))

(assert (=> d!66345 (= (maxPrefix!278 thiss!17480 rules!1920 lt!94431) lt!94822)))

(declare-fun b!237559 () Bool)

(assert (=> b!237559 (= e!147047 (contains!649 rules!1920 (rule!1229 (_1!2144 (get!1136 lt!94822)))))))

(declare-fun bm!12300 () Bool)

(assert (=> bm!12300 (= call!12305 (maxPrefixOneRule!118 thiss!17480 (h!8918 rules!1920) lt!94431))))

(declare-fun b!237560 () Bool)

(declare-fun res!109736 () Bool)

(assert (=> b!237560 (=> (not res!109736) (not e!147047))))

(assert (=> b!237560 (= res!109736 (matchR!224 (regex!662 (rule!1229 (_1!2144 (get!1136 lt!94822)))) (list!1374 (charsOf!317 (_1!2144 (get!1136 lt!94822))))))))

(declare-fun b!237561 () Bool)

(declare-fun res!109737 () Bool)

(assert (=> b!237561 (=> (not res!109737) (not e!147047))))

(assert (=> b!237561 (= res!109737 (= (value!23184 (_1!2144 (get!1136 lt!94822))) (apply!656 (transformation!662 (rule!1229 (_1!2144 (get!1136 lt!94822)))) (seqFromList!701 (originalCharacters!705 (_1!2144 (get!1136 lt!94822)))))))))

(declare-fun b!237562 () Bool)

(declare-fun lt!94821 () Option!678)

(declare-fun lt!94824 () Option!678)

(assert (=> b!237562 (= e!147048 (ite (and (is-None!677 lt!94821) (is-None!677 lt!94824)) None!677 (ite (is-None!677 lt!94824) lt!94821 (ite (is-None!677 lt!94821) lt!94824 (ite (>= (size!2818 (_1!2144 (v!14412 lt!94821))) (size!2818 (_1!2144 (v!14412 lt!94824)))) lt!94821 lt!94824)))))))

(assert (=> b!237562 (= lt!94821 call!12305)))

(assert (=> b!237562 (= lt!94824 (maxPrefix!278 thiss!17480 (t!34259 rules!1920) lt!94431))))

(declare-fun b!237563 () Bool)

(assert (=> b!237563 (= e!147046 e!147047)))

(declare-fun res!109739 () Bool)

(assert (=> b!237563 (=> (not res!109739) (not e!147047))))

(assert (=> b!237563 (= res!109739 (isDefined!529 lt!94822))))

(assert (= (and d!66345 c!45476) b!237555))

(assert (= (and d!66345 (not c!45476)) b!237562))

(assert (= (or b!237555 b!237562) bm!12300))

(assert (= (and d!66345 (not res!109733)) b!237563))

(assert (= (and b!237563 res!109739) b!237558))

(assert (= (and b!237558 res!109735) b!237557))

(assert (= (and b!237557 res!109734) b!237556))

(assert (= (and b!237556 res!109738) b!237561))

(assert (= (and b!237561 res!109737) b!237560))

(assert (= (and b!237560 res!109736) b!237559))

(declare-fun m!285909 () Bool)

(assert (=> b!237560 m!285909))

(declare-fun m!285911 () Bool)

(assert (=> b!237560 m!285911))

(assert (=> b!237560 m!285911))

(declare-fun m!285913 () Bool)

(assert (=> b!237560 m!285913))

(assert (=> b!237560 m!285913))

(declare-fun m!285915 () Bool)

(assert (=> b!237560 m!285915))

(assert (=> b!237557 m!285909))

(declare-fun m!285917 () Bool)

(assert (=> b!237557 m!285917))

(declare-fun m!285919 () Bool)

(assert (=> b!237557 m!285919))

(assert (=> b!237559 m!285909))

(declare-fun m!285921 () Bool)

(assert (=> b!237559 m!285921))

(declare-fun m!285923 () Bool)

(assert (=> bm!12300 m!285923))

(assert (=> b!237561 m!285909))

(declare-fun m!285925 () Bool)

(assert (=> b!237561 m!285925))

(assert (=> b!237561 m!285925))

(declare-fun m!285927 () Bool)

(assert (=> b!237561 m!285927))

(declare-fun m!285929 () Bool)

(assert (=> d!66345 m!285929))

(declare-fun m!285931 () Bool)

(assert (=> d!66345 m!285931))

(declare-fun m!285933 () Bool)

(assert (=> d!66345 m!285933))

(assert (=> d!66345 m!285585))

(declare-fun m!285935 () Bool)

(assert (=> b!237562 m!285935))

(declare-fun m!285937 () Bool)

(assert (=> b!237563 m!285937))

(assert (=> b!237556 m!285909))

(assert (=> b!237556 m!285911))

(assert (=> b!237556 m!285911))

(assert (=> b!237556 m!285913))

(assert (=> b!237556 m!285913))

(declare-fun m!285939 () Bool)

(assert (=> b!237556 m!285939))

(assert (=> b!237558 m!285909))

(assert (=> b!237558 m!285911))

(assert (=> b!237558 m!285911))

(assert (=> b!237558 m!285913))

(assert (=> b!236956 d!66345))

(declare-fun d!66347 () Bool)

(assert (=> d!66347 (= (get!1136 (maxPrefix!278 thiss!17480 rules!1920 lt!94431)) (v!14412 (maxPrefix!278 thiss!17480 rules!1920 lt!94431)))))

(assert (=> b!236956 d!66347))

(declare-fun d!66349 () Bool)

(assert (=> d!66349 (= (head!819 (t!34260 tokens!465)) (h!8919 (t!34260 tokens!465)))))

(assert (=> b!236956 d!66349))

(declare-fun d!66351 () Bool)

(declare-fun e!147068 () Bool)

(assert (=> d!66351 e!147068))

(declare-fun res!109745 () Bool)

(assert (=> d!66351 (=> res!109745 e!147068)))

(assert (=> d!66351 (= res!109745 (isEmpty!2085 tokens!465))))

(declare-fun lt!94845 () Unit!4177)

(declare-fun choose!2269 (LexerInterface!548 List!3531 List!3532 Token!1068) Unit!4177)

(assert (=> d!66351 (= lt!94845 (choose!2269 thiss!17480 rules!1920 tokens!465 separatorToken!170))))

(assert (=> d!66351 (not (isEmpty!2086 rules!1920))))

(assert (=> d!66351 (= (lemmaPrintWithSepTokenWhenNeededThenMaxPrefReturnsHead!123 thiss!17480 rules!1920 tokens!465 separatorToken!170) lt!94845)))

(declare-fun b!237595 () Bool)

(declare-fun e!147069 () Bool)

(assert (=> b!237595 (= e!147068 e!147069)))

(declare-fun res!109744 () Bool)

(assert (=> b!237595 (=> (not res!109744) (not e!147069))))

(assert (=> b!237595 (= res!109744 (isDefined!529 (maxPrefix!278 thiss!17480 rules!1920 (printWithSeparatorTokenWhenNeededList!241 thiss!17480 rules!1920 tokens!465 separatorToken!170))))))

(declare-fun b!237596 () Bool)

(assert (=> b!237596 (= e!147069 (= (_1!2144 (get!1136 (maxPrefix!278 thiss!17480 rules!1920 (printWithSeparatorTokenWhenNeededList!241 thiss!17480 rules!1920 tokens!465 separatorToken!170)))) (head!819 tokens!465)))))

(assert (= (and d!66351 (not res!109745)) b!237595))

(assert (= (and b!237595 res!109744) b!237596))

(assert (=> d!66351 m!284845))

(declare-fun m!285969 () Bool)

(assert (=> d!66351 m!285969))

(assert (=> d!66351 m!285003))

(assert (=> b!237595 m!284819))

(assert (=> b!237595 m!284819))

(declare-fun m!285971 () Bool)

(assert (=> b!237595 m!285971))

(assert (=> b!237595 m!285971))

(declare-fun m!285973 () Bool)

(assert (=> b!237595 m!285973))

(assert (=> b!237596 m!284819))

(assert (=> b!237596 m!284819))

(assert (=> b!237596 m!285971))

(assert (=> b!237596 m!285971))

(declare-fun m!285975 () Bool)

(assert (=> b!237596 m!285975))

(assert (=> b!237596 m!284781))

(assert (=> b!236956 d!66351))

(declare-fun b!237605 () Bool)

(declare-fun e!147077 () Bool)

(declare-fun e!147078 () Bool)

(assert (=> b!237605 (= e!147077 e!147078)))

(declare-fun res!109756 () Bool)

(assert (=> b!237605 (=> (not res!109756) (not e!147078))))

(assert (=> b!237605 (= res!109756 (not (is-Nil!3520 lt!94462)))))

(declare-fun b!237607 () Bool)

(assert (=> b!237607 (= e!147078 (isPrefix!358 (tail!435 lt!94426) (tail!435 lt!94462)))))

(declare-fun b!237608 () Bool)

(declare-fun e!147076 () Bool)

(assert (=> b!237608 (= e!147076 (>= (size!2825 lt!94462) (size!2825 lt!94426)))))

(declare-fun d!66355 () Bool)

(assert (=> d!66355 e!147076))

(declare-fun res!109757 () Bool)

(assert (=> d!66355 (=> res!109757 e!147076)))

(declare-fun lt!94848 () Bool)

(assert (=> d!66355 (= res!109757 (not lt!94848))))

(assert (=> d!66355 (= lt!94848 e!147077)))

(declare-fun res!109754 () Bool)

(assert (=> d!66355 (=> res!109754 e!147077)))

(assert (=> d!66355 (= res!109754 (is-Nil!3520 lt!94426))))

(assert (=> d!66355 (= (isPrefix!358 lt!94426 lt!94462) lt!94848)))

(declare-fun b!237606 () Bool)

(declare-fun res!109755 () Bool)

(assert (=> b!237606 (=> (not res!109755) (not e!147078))))

(assert (=> b!237606 (= res!109755 (= (head!820 lt!94426) (head!820 lt!94462)))))

(assert (= (and d!66355 (not res!109754)) b!237605))

(assert (= (and b!237605 res!109756) b!237606))

(assert (= (and b!237606 res!109755) b!237607))

(assert (= (and d!66355 (not res!109757)) b!237608))

(declare-fun m!285977 () Bool)

(assert (=> b!237607 m!285977))

(declare-fun m!285979 () Bool)

(assert (=> b!237607 m!285979))

(assert (=> b!237607 m!285977))

(assert (=> b!237607 m!285979))

(declare-fun m!285981 () Bool)

(assert (=> b!237607 m!285981))

(declare-fun m!285983 () Bool)

(assert (=> b!237608 m!285983))

(declare-fun m!285985 () Bool)

(assert (=> b!237608 m!285985))

(declare-fun m!285987 () Bool)

(assert (=> b!237606 m!285987))

(declare-fun m!285989 () Bool)

(assert (=> b!237606 m!285989))

(assert (=> b!236956 d!66355))

(declare-fun d!66357 () Bool)

(assert (=> d!66357 (isPrefix!358 lt!94426 (++!891 lt!94426 lt!94458))))

(declare-fun lt!94851 () Unit!4177)

(declare-fun choose!2270 (List!3530 List!3530) Unit!4177)

(assert (=> d!66357 (= lt!94851 (choose!2270 lt!94426 lt!94458))))

(assert (=> d!66357 (= (lemmaConcatTwoListThenFirstIsPrefix!253 lt!94426 lt!94458) lt!94851)))

(declare-fun bs!25353 () Bool)

(assert (= bs!25353 d!66357))

(assert (=> bs!25353 m!284967))

(assert (=> bs!25353 m!284967))

(declare-fun m!285991 () Bool)

(assert (=> bs!25353 m!285991))

(declare-fun m!285993 () Bool)

(assert (=> bs!25353 m!285993))

(assert (=> b!236956 d!66357))

(declare-fun b!237609 () Bool)

(declare-fun e!147080 () List!3530)

(declare-fun call!12324 () List!3530)

(assert (=> b!237609 (= e!147080 call!12324)))

(declare-fun b!237610 () Bool)

(declare-fun e!147081 () List!3530)

(assert (=> b!237610 (= e!147081 Nil!3520)))

(declare-fun b!237611 () Bool)

(declare-fun e!147082 () List!3530)

(assert (=> b!237611 (= e!147080 e!147082)))

(declare-fun c!45490 () Bool)

(assert (=> b!237611 (= c!45490 (is-Union!886 (regex!662 (rule!1229 separatorToken!170))))))

(declare-fun b!237612 () Bool)

(declare-fun call!12321 () List!3530)

(assert (=> b!237612 (= e!147082 call!12321)))

(declare-fun bm!12317 () Bool)

(declare-fun call!12322 () List!3530)

(declare-fun call!12323 () List!3530)

(assert (=> bm!12317 (= call!12321 (++!891 call!12322 call!12323))))

(declare-fun b!237613 () Bool)

(declare-fun e!147079 () List!3530)

(assert (=> b!237613 (= e!147081 e!147079)))

(declare-fun c!45489 () Bool)

(assert (=> b!237613 (= c!45489 (is-ElementMatch!886 (regex!662 (rule!1229 separatorToken!170))))))

(declare-fun b!237614 () Bool)

(assert (=> b!237614 (= e!147079 (Cons!3520 (c!45383 (regex!662 (rule!1229 separatorToken!170))) Nil!3520))))

(declare-fun d!66359 () Bool)

(declare-fun c!45491 () Bool)

(assert (=> d!66359 (= c!45491 (or (is-EmptyExpr!886 (regex!662 (rule!1229 separatorToken!170))) (is-EmptyLang!886 (regex!662 (rule!1229 separatorToken!170)))))))

(assert (=> d!66359 (= (usedCharacters!67 (regex!662 (rule!1229 separatorToken!170))) e!147081)))

(declare-fun bm!12316 () Bool)

(declare-fun c!45492 () Bool)

(assert (=> bm!12316 (= call!12324 (usedCharacters!67 (ite c!45492 (reg!1215 (regex!662 (rule!1229 separatorToken!170))) (ite c!45490 (regTwo!2285 (regex!662 (rule!1229 separatorToken!170))) (regTwo!2284 (regex!662 (rule!1229 separatorToken!170)))))))))

(declare-fun b!237615 () Bool)

(assert (=> b!237615 (= e!147082 call!12321)))

(declare-fun bm!12318 () Bool)

(assert (=> bm!12318 (= call!12322 (usedCharacters!67 (ite c!45490 (regOne!2285 (regex!662 (rule!1229 separatorToken!170))) (regOne!2284 (regex!662 (rule!1229 separatorToken!170))))))))

(declare-fun b!237616 () Bool)

(assert (=> b!237616 (= c!45492 (is-Star!886 (regex!662 (rule!1229 separatorToken!170))))))

(assert (=> b!237616 (= e!147079 e!147080)))

(declare-fun bm!12319 () Bool)

(assert (=> bm!12319 (= call!12323 call!12324)))

(assert (= (and d!66359 c!45491) b!237610))

(assert (= (and d!66359 (not c!45491)) b!237613))

(assert (= (and b!237613 c!45489) b!237614))

(assert (= (and b!237613 (not c!45489)) b!237616))

(assert (= (and b!237616 c!45492) b!237609))

(assert (= (and b!237616 (not c!45492)) b!237611))

(assert (= (and b!237611 c!45490) b!237615))

(assert (= (and b!237611 (not c!45490)) b!237612))

(assert (= (or b!237615 b!237612) bm!12318))

(assert (= (or b!237615 b!237612) bm!12319))

(assert (= (or b!237615 b!237612) bm!12317))

(assert (= (or b!237609 bm!12319) bm!12316))

(declare-fun m!285995 () Bool)

(assert (=> bm!12317 m!285995))

(declare-fun m!285997 () Bool)

(assert (=> bm!12316 m!285997))

(declare-fun m!285999 () Bool)

(assert (=> bm!12318 m!285999))

(assert (=> b!236956 d!66359))

(declare-fun d!66361 () Bool)

(declare-fun c!45497 () Bool)

(assert (=> d!66361 (= c!45497 (is-IntegerValue!2052 (value!23184 separatorToken!170)))))

(declare-fun e!147089 () Bool)

(assert (=> d!66361 (= (inv!21 (value!23184 separatorToken!170)) e!147089)))

(declare-fun b!237627 () Bool)

(declare-fun res!109760 () Bool)

(declare-fun e!147091 () Bool)

(assert (=> b!237627 (=> res!109760 e!147091)))

(assert (=> b!237627 (= res!109760 (not (is-IntegerValue!2054 (value!23184 separatorToken!170))))))

(declare-fun e!147090 () Bool)

(assert (=> b!237627 (= e!147090 e!147091)))

(declare-fun b!237628 () Bool)

(assert (=> b!237628 (= e!147089 e!147090)))

(declare-fun c!45498 () Bool)

(assert (=> b!237628 (= c!45498 (is-IntegerValue!2053 (value!23184 separatorToken!170)))))

(declare-fun b!237629 () Bool)

(declare-fun inv!16 (TokenValue!684) Bool)

(assert (=> b!237629 (= e!147089 (inv!16 (value!23184 separatorToken!170)))))

(declare-fun b!237630 () Bool)

(declare-fun inv!15 (TokenValue!684) Bool)

(assert (=> b!237630 (= e!147091 (inv!15 (value!23184 separatorToken!170)))))

(declare-fun b!237631 () Bool)

(declare-fun inv!17 (TokenValue!684) Bool)

(assert (=> b!237631 (= e!147090 (inv!17 (value!23184 separatorToken!170)))))

(assert (= (and d!66361 c!45497) b!237629))

(assert (= (and d!66361 (not c!45497)) b!237628))

(assert (= (and b!237628 c!45498) b!237631))

(assert (= (and b!237628 (not c!45498)) b!237627))

(assert (= (and b!237627 (not res!109760)) b!237630))

(declare-fun m!286001 () Bool)

(assert (=> b!237629 m!286001))

(declare-fun m!286003 () Bool)

(assert (=> b!237630 m!286003))

(declare-fun m!286005 () Bool)

(assert (=> b!237631 m!286005))

(assert (=> b!236976 d!66361))

(declare-fun b!237632 () Bool)

(declare-fun res!109762 () Bool)

(declare-fun e!147094 () Bool)

(assert (=> b!237632 (=> (not res!109762) (not e!147094))))

(declare-fun lt!94852 () List!3532)

(assert (=> b!237632 (= res!109762 (set.subset (content!490 lt!94852) (content!490 (_1!2146 (lexList!176 thiss!17480 rules!1920 lt!94434)))))))

(declare-fun b!237633 () Bool)

(declare-fun e!147093 () List!3532)

(declare-fun call!12325 () List!3532)

(assert (=> b!237633 (= e!147093 call!12325)))

(declare-fun bm!12320 () Bool)

(assert (=> bm!12320 (= call!12325 (filter!56 (t!34260 (_1!2146 (lexList!176 thiss!17480 rules!1920 lt!94434))) lambda!7641))))

(declare-fun b!237634 () Bool)

(declare-fun e!147092 () List!3532)

(assert (=> b!237634 (= e!147092 Nil!3522)))

(declare-fun d!66363 () Bool)

(assert (=> d!66363 e!147094))

(declare-fun res!109761 () Bool)

(assert (=> d!66363 (=> (not res!109761) (not e!147094))))

(assert (=> d!66363 (= res!109761 (<= (size!2822 lt!94852) (size!2822 (_1!2146 (lexList!176 thiss!17480 rules!1920 lt!94434)))))))

(assert (=> d!66363 (= lt!94852 e!147092)))

(declare-fun c!45499 () Bool)

(assert (=> d!66363 (= c!45499 (is-Nil!3522 (_1!2146 (lexList!176 thiss!17480 rules!1920 lt!94434))))))

(assert (=> d!66363 (= (filter!56 (_1!2146 (lexList!176 thiss!17480 rules!1920 lt!94434)) lambda!7641) lt!94852)))

(declare-fun b!237635 () Bool)

(assert (=> b!237635 (= e!147093 (Cons!3522 (h!8919 (_1!2146 (lexList!176 thiss!17480 rules!1920 lt!94434))) call!12325))))

(declare-fun b!237636 () Bool)

(assert (=> b!237636 (= e!147094 (forall!806 lt!94852 lambda!7641))))

(declare-fun b!237637 () Bool)

(assert (=> b!237637 (= e!147092 e!147093)))

(declare-fun c!45500 () Bool)

(assert (=> b!237637 (= c!45500 (dynLambda!1676 lambda!7641 (h!8919 (_1!2146 (lexList!176 thiss!17480 rules!1920 lt!94434)))))))

(assert (= (and d!66363 c!45499) b!237634))

(assert (= (and d!66363 (not c!45499)) b!237637))

(assert (= (and b!237637 c!45500) b!237635))

(assert (= (and b!237637 (not c!45500)) b!237633))

(assert (= (or b!237635 b!237633) bm!12320))

(assert (= (and d!66363 res!109761) b!237632))

(assert (= (and b!237632 res!109762) b!237636))

(declare-fun b_lambda!6757 () Bool)

(assert (=> (not b_lambda!6757) (not b!237637)))

(declare-fun m!286007 () Bool)

(assert (=> bm!12320 m!286007))

(declare-fun m!286009 () Bool)

(assert (=> b!237636 m!286009))

(declare-fun m!286011 () Bool)

(assert (=> b!237632 m!286011))

(declare-fun m!286013 () Bool)

(assert (=> b!237632 m!286013))

(declare-fun m!286015 () Bool)

(assert (=> b!237637 m!286015))

(declare-fun m!286017 () Bool)

(assert (=> d!66363 m!286017))

(declare-fun m!286019 () Bool)

(assert (=> d!66363 m!286019))

(assert (=> b!236955 d!66363))

(declare-fun b!237649 () Bool)

(declare-fun e!147103 () Bool)

(declare-fun e!147101 () Bool)

(assert (=> b!237649 (= e!147103 e!147101)))

(declare-fun res!109765 () Bool)

(declare-fun lt!94859 () tuple2!3860)

(assert (=> b!237649 (= res!109765 (< (size!2825 (_2!2146 lt!94859)) (size!2825 lt!94434)))))

(assert (=> b!237649 (=> (not res!109765) (not e!147101))))

(declare-fun b!237650 () Bool)

(declare-fun e!147102 () tuple2!3860)

(assert (=> b!237650 (= e!147102 (tuple2!3861 Nil!3522 lt!94434))))

(declare-fun b!237651 () Bool)

(assert (=> b!237651 (= e!147103 (= (_2!2146 lt!94859) lt!94434))))

(declare-fun b!237652 () Bool)

(assert (=> b!237652 (= e!147101 (not (isEmpty!2085 (_1!2146 lt!94859))))))

(declare-fun b!237648 () Bool)

(declare-fun lt!94860 () Option!678)

(declare-fun lt!94861 () tuple2!3860)

(assert (=> b!237648 (= e!147102 (tuple2!3861 (Cons!3522 (_1!2144 (v!14412 lt!94860)) (_1!2146 lt!94861)) (_2!2146 lt!94861)))))

(assert (=> b!237648 (= lt!94861 (lexList!176 thiss!17480 rules!1920 (_2!2144 (v!14412 lt!94860))))))

(declare-fun d!66365 () Bool)

(assert (=> d!66365 e!147103))

(declare-fun c!45506 () Bool)

(assert (=> d!66365 (= c!45506 (> (size!2822 (_1!2146 lt!94859)) 0))))

(assert (=> d!66365 (= lt!94859 e!147102)))

(declare-fun c!45505 () Bool)

(assert (=> d!66365 (= c!45505 (is-Some!677 lt!94860))))

(assert (=> d!66365 (= lt!94860 (maxPrefix!278 thiss!17480 rules!1920 lt!94434))))

(assert (=> d!66365 (= (lexList!176 thiss!17480 rules!1920 lt!94434) lt!94859)))

(assert (= (and d!66365 c!45505) b!237648))

(assert (= (and d!66365 (not c!45505)) b!237650))

(assert (= (and d!66365 c!45506) b!237649))

(assert (= (and d!66365 (not c!45506)) b!237651))

(assert (= (and b!237649 res!109765) b!237652))

(declare-fun m!286021 () Bool)

(assert (=> b!237649 m!286021))

(declare-fun m!286023 () Bool)

(assert (=> b!237649 m!286023))

(declare-fun m!286025 () Bool)

(assert (=> b!237652 m!286025))

(declare-fun m!286027 () Bool)

(assert (=> b!237648 m!286027))

(declare-fun m!286029 () Bool)

(assert (=> d!66365 m!286029))

(declare-fun m!286031 () Bool)

(assert (=> d!66365 m!286031))

(assert (=> b!236955 d!66365))

(declare-fun d!66367 () Bool)

(declare-fun lt!94864 () Token!1068)

(assert (=> d!66367 (= lt!94864 (apply!655 (list!1375 (_1!2145 lt!94417)) 0))))

(declare-fun apply!659 (Conc!1147 Int) Token!1068)

(assert (=> d!66367 (= lt!94864 (apply!659 (c!45384 (_1!2145 lt!94417)) 0))))

(declare-fun e!147106 () Bool)

(assert (=> d!66367 e!147106))

(declare-fun res!109768 () Bool)

(assert (=> d!66367 (=> (not res!109768) (not e!147106))))

(assert (=> d!66367 (= res!109768 (<= 0 0))))

(assert (=> d!66367 (= (apply!653 (_1!2145 lt!94417) 0) lt!94864)))

(declare-fun b!237655 () Bool)

(assert (=> b!237655 (= e!147106 (< 0 (size!2819 (_1!2145 lt!94417))))))

(assert (= (and d!66367 res!109768) b!237655))

(assert (=> d!66367 m!285373))

(assert (=> d!66367 m!285373))

(declare-fun m!286033 () Bool)

(assert (=> d!66367 m!286033))

(declare-fun m!286035 () Bool)

(assert (=> d!66367 m!286035))

(assert (=> b!237655 m!284827))

(assert (=> b!236954 d!66367))

(declare-fun b!237670 () Bool)

(declare-fun e!147116 () List!3530)

(assert (=> b!237670 (= e!147116 lt!94434)))

(declare-fun d!66369 () Bool)

(declare-fun e!147115 () Bool)

(assert (=> d!66369 e!147115))

(declare-fun res!109775 () Bool)

(assert (=> d!66369 (=> (not res!109775) (not e!147115))))

(declare-fun lt!94885 () List!3530)

(assert (=> d!66369 (= res!109775 (= (content!491 lt!94885) (set.union (content!491 lt!94426) (content!491 lt!94434))))))

(assert (=> d!66369 (= lt!94885 e!147116)))

(declare-fun c!45511 () Bool)

(assert (=> d!66369 (= c!45511 (is-Nil!3520 lt!94426))))

(assert (=> d!66369 (= (++!891 lt!94426 lt!94434) lt!94885)))

(declare-fun b!237671 () Bool)

(assert (=> b!237671 (= e!147116 (Cons!3520 (h!8917 lt!94426) (++!891 (t!34258 lt!94426) lt!94434)))))

(declare-fun b!237672 () Bool)

(declare-fun res!109776 () Bool)

(assert (=> b!237672 (=> (not res!109776) (not e!147115))))

(assert (=> b!237672 (= res!109776 (= (size!2825 lt!94885) (+ (size!2825 lt!94426) (size!2825 lt!94434))))))

(declare-fun b!237673 () Bool)

(assert (=> b!237673 (= e!147115 (or (not (= lt!94434 Nil!3520)) (= lt!94885 lt!94426)))))

(assert (= (and d!66369 c!45511) b!237670))

(assert (= (and d!66369 (not c!45511)) b!237671))

(assert (= (and d!66369 res!109775) b!237672))

(assert (= (and b!237672 res!109776) b!237673))

(declare-fun m!286037 () Bool)

(assert (=> d!66369 m!286037))

(declare-fun m!286039 () Bool)

(assert (=> d!66369 m!286039))

(declare-fun m!286041 () Bool)

(assert (=> d!66369 m!286041))

(declare-fun m!286043 () Bool)

(assert (=> b!237671 m!286043))

(declare-fun m!286045 () Bool)

(assert (=> b!237672 m!286045))

(assert (=> b!237672 m!285985))

(assert (=> b!237672 m!286023))

(assert (=> b!236975 d!66369))

(declare-fun d!66371 () Bool)

(declare-fun lt!94886 () Token!1068)

(assert (=> d!66371 (= lt!94886 (apply!655 (list!1375 (_1!2145 lt!94461)) 0))))

(assert (=> d!66371 (= lt!94886 (apply!659 (c!45384 (_1!2145 lt!94461)) 0))))

(declare-fun e!147117 () Bool)

(assert (=> d!66371 e!147117))

(declare-fun res!109777 () Bool)

(assert (=> d!66371 (=> (not res!109777) (not e!147117))))

(assert (=> d!66371 (= res!109777 (<= 0 0))))

(assert (=> d!66371 (= (apply!653 (_1!2145 lt!94461) 0) lt!94886)))

(declare-fun b!237674 () Bool)

(assert (=> b!237674 (= e!147117 (< 0 (size!2819 (_1!2145 lt!94461))))))

(assert (= (and d!66371 res!109777) b!237674))

(assert (=> d!66371 m!285877))

(assert (=> d!66371 m!285877))

(declare-fun m!286047 () Bool)

(assert (=> d!66371 m!286047))

(declare-fun m!286049 () Bool)

(assert (=> d!66371 m!286049))

(assert (=> b!237674 m!284859))

(assert (=> b!236952 d!66371))

(declare-fun b!237675 () Bool)

(declare-fun e!147120 () Bool)

(assert (=> b!237675 (= e!147120 (matchR!224 (derivativeStep!119 (regex!662 lt!94454) (head!820 lt!94463)) (tail!435 lt!94463)))))

(declare-fun b!237676 () Bool)

(assert (=> b!237676 (= e!147120 (nullable!153 (regex!662 lt!94454)))))

(declare-fun b!237677 () Bool)

(declare-fun e!147118 () Bool)

(declare-fun e!147122 () Bool)

(assert (=> b!237677 (= e!147118 e!147122)))

(declare-fun res!109782 () Bool)

(assert (=> b!237677 (=> (not res!109782) (not e!147122))))

(declare-fun lt!94887 () Bool)

(assert (=> b!237677 (= res!109782 (not lt!94887))))

(declare-fun b!237678 () Bool)

(declare-fun res!109781 () Bool)

(assert (=> b!237678 (=> res!109781 e!147118)))

(declare-fun e!147123 () Bool)

(assert (=> b!237678 (= res!109781 e!147123)))

(declare-fun res!109784 () Bool)

(assert (=> b!237678 (=> (not res!109784) (not e!147123))))

(assert (=> b!237678 (= res!109784 lt!94887)))

(declare-fun d!66373 () Bool)

(declare-fun e!147121 () Bool)

(assert (=> d!66373 e!147121))

(declare-fun c!45513 () Bool)

(assert (=> d!66373 (= c!45513 (is-EmptyExpr!886 (regex!662 lt!94454)))))

(assert (=> d!66373 (= lt!94887 e!147120)))

(declare-fun c!45514 () Bool)

(assert (=> d!66373 (= c!45514 (isEmpty!2087 lt!94463))))

(assert (=> d!66373 (validRegex!228 (regex!662 lt!94454))))

(assert (=> d!66373 (= (matchR!224 (regex!662 lt!94454) lt!94463) lt!94887)))

(declare-fun b!237679 () Bool)

(declare-fun res!109780 () Bool)

(assert (=> b!237679 (=> (not res!109780) (not e!147123))))

(assert (=> b!237679 (= res!109780 (isEmpty!2087 (tail!435 lt!94463)))))

(declare-fun b!237680 () Bool)

(assert (=> b!237680 (= e!147123 (= (head!820 lt!94463) (c!45383 (regex!662 lt!94454))))))

(declare-fun b!237681 () Bool)

(declare-fun e!147119 () Bool)

(assert (=> b!237681 (= e!147122 e!147119)))

(declare-fun res!109778 () Bool)

(assert (=> b!237681 (=> res!109778 e!147119)))

(declare-fun call!12326 () Bool)

(assert (=> b!237681 (= res!109778 call!12326)))

(declare-fun bm!12321 () Bool)

(assert (=> bm!12321 (= call!12326 (isEmpty!2087 lt!94463))))

(declare-fun b!237682 () Bool)

(declare-fun res!109779 () Bool)

(assert (=> b!237682 (=> res!109779 e!147119)))

(assert (=> b!237682 (= res!109779 (not (isEmpty!2087 (tail!435 lt!94463))))))

(declare-fun b!237683 () Bool)

(declare-fun res!109783 () Bool)

(assert (=> b!237683 (=> res!109783 e!147118)))

(assert (=> b!237683 (= res!109783 (not (is-ElementMatch!886 (regex!662 lt!94454))))))

(declare-fun e!147124 () Bool)

(assert (=> b!237683 (= e!147124 e!147118)))

(declare-fun b!237684 () Bool)

(assert (=> b!237684 (= e!147121 (= lt!94887 call!12326))))

(declare-fun b!237685 () Bool)

(assert (=> b!237685 (= e!147119 (not (= (head!820 lt!94463) (c!45383 (regex!662 lt!94454)))))))

(declare-fun b!237686 () Bool)

(assert (=> b!237686 (= e!147124 (not lt!94887))))

(declare-fun b!237687 () Bool)

(assert (=> b!237687 (= e!147121 e!147124)))

(declare-fun c!45512 () Bool)

(assert (=> b!237687 (= c!45512 (is-EmptyLang!886 (regex!662 lt!94454)))))

(declare-fun b!237688 () Bool)

(declare-fun res!109785 () Bool)

(assert (=> b!237688 (=> (not res!109785) (not e!147123))))

(assert (=> b!237688 (= res!109785 (not call!12326))))

(assert (= (and d!66373 c!45514) b!237676))

(assert (= (and d!66373 (not c!45514)) b!237675))

(assert (= (and d!66373 c!45513) b!237684))

(assert (= (and d!66373 (not c!45513)) b!237687))

(assert (= (and b!237687 c!45512) b!237686))

(assert (= (and b!237687 (not c!45512)) b!237683))

(assert (= (and b!237683 (not res!109783)) b!237678))

(assert (= (and b!237678 res!109784) b!237688))

(assert (= (and b!237688 res!109785) b!237679))

(assert (= (and b!237679 res!109780) b!237680))

(assert (= (and b!237678 (not res!109781)) b!237677))

(assert (= (and b!237677 res!109782) b!237681))

(assert (= (and b!237681 (not res!109778)) b!237682))

(assert (= (and b!237682 (not res!109779)) b!237685))

(assert (= (or b!237684 b!237681 b!237688) bm!12321))

(declare-fun m!286051 () Bool)

(assert (=> b!237679 m!286051))

(assert (=> b!237679 m!286051))

(declare-fun m!286053 () Bool)

(assert (=> b!237679 m!286053))

(declare-fun m!286055 () Bool)

(assert (=> bm!12321 m!286055))

(declare-fun m!286057 () Bool)

(assert (=> b!237676 m!286057))

(assert (=> d!66373 m!286055))

(declare-fun m!286059 () Bool)

(assert (=> d!66373 m!286059))

(declare-fun m!286061 () Bool)

(assert (=> b!237680 m!286061))

(assert (=> b!237675 m!286061))

(assert (=> b!237675 m!286061))

(declare-fun m!286063 () Bool)

(assert (=> b!237675 m!286063))

(assert (=> b!237675 m!286051))

(assert (=> b!237675 m!286063))

(assert (=> b!237675 m!286051))

(declare-fun m!286065 () Bool)

(assert (=> b!237675 m!286065))

(assert (=> b!237682 m!286051))

(assert (=> b!237682 m!286051))

(assert (=> b!237682 m!286053))

(assert (=> b!237685 m!286061))

(assert (=> b!236973 d!66373))

(declare-fun d!66375 () Bool)

(assert (=> d!66375 (= (get!1137 lt!94425) (v!14413 lt!94425))))

(assert (=> b!236973 d!66375))

(declare-fun d!66377 () Bool)

(declare-fun lt!94900 () Bool)

(assert (=> d!66377 (= lt!94900 (isEmpty!2087 (list!1374 (_2!2145 lt!94417))))))

(declare-fun isEmpty!2097 (Conc!1146) Bool)

(assert (=> d!66377 (= lt!94900 (isEmpty!2097 (c!45382 (_2!2145 lt!94417))))))

(assert (=> d!66377 (= (isEmpty!2084 (_2!2145 lt!94417)) lt!94900)))

(declare-fun bs!25354 () Bool)

(assert (= bs!25354 d!66377))

(declare-fun m!286067 () Bool)

(assert (=> bs!25354 m!286067))

(assert (=> bs!25354 m!286067))

(declare-fun m!286069 () Bool)

(assert (=> bs!25354 m!286069))

(declare-fun m!286071 () Bool)

(assert (=> bs!25354 m!286071))

(assert (=> b!236972 d!66377))

(declare-fun d!66379 () Bool)

(declare-fun lt!94901 () Bool)

(assert (=> d!66379 (= lt!94901 (isEmpty!2087 (list!1374 (_2!2145 lt!94461))))))

(assert (=> d!66379 (= lt!94901 (isEmpty!2097 (c!45382 (_2!2145 lt!94461))))))

(assert (=> d!66379 (= (isEmpty!2084 (_2!2145 lt!94461)) lt!94901)))

(declare-fun bs!25355 () Bool)

(assert (= bs!25355 d!66379))

(declare-fun m!286073 () Bool)

(assert (=> bs!25355 m!286073))

(assert (=> bs!25355 m!286073))

(declare-fun m!286075 () Bool)

(assert (=> bs!25355 m!286075))

(declare-fun m!286077 () Bool)

(assert (=> bs!25355 m!286077))

(assert (=> b!236950 d!66379))

(declare-fun d!66381 () Bool)

(assert (=> d!66381 (not (contains!647 (usedCharacters!67 (regex!662 (rule!1229 separatorToken!170))) lt!94459))))

(declare-fun lt!94904 () Unit!4177)

(declare-fun choose!2272 (LexerInterface!548 List!3531 List!3531 Rule!1124 Rule!1124 C!2694) Unit!4177)

(assert (=> d!66381 (= lt!94904 (choose!2272 thiss!17480 rules!1920 rules!1920 (rule!1229 lt!94452) (rule!1229 separatorToken!170) lt!94459))))

(assert (=> d!66381 (rulesInvariant!514 thiss!17480 rules!1920)))

(assert (=> d!66381 (= (lemmaSepRuleNotContainsCharContainedInANonSepRule!55 thiss!17480 rules!1920 rules!1920 (rule!1229 lt!94452) (rule!1229 separatorToken!170) lt!94459) lt!94904)))

(declare-fun bs!25356 () Bool)

(assert (= bs!25356 d!66381))

(assert (=> bs!25356 m!284833))

(assert (=> bs!25356 m!284833))

(assert (=> bs!25356 m!284835))

(declare-fun m!286079 () Bool)

(assert (=> bs!25356 m!286079))

(assert (=> bs!25356 m!284799))

(assert (=> b!236971 d!66381))

(declare-fun d!66383 () Bool)

(declare-fun res!109794 () Bool)

(declare-fun e!147139 () Bool)

(assert (=> d!66383 (=> res!109794 e!147139)))

(assert (=> d!66383 (= res!109794 (is-Nil!3522 tokens!465))))

(assert (=> d!66383 (= (forall!806 tokens!465 lambda!7641) e!147139)))

(declare-fun b!237709 () Bool)

(declare-fun e!147140 () Bool)

(assert (=> b!237709 (= e!147139 e!147140)))

(declare-fun res!109795 () Bool)

(assert (=> b!237709 (=> (not res!109795) (not e!147140))))

(assert (=> b!237709 (= res!109795 (dynLambda!1676 lambda!7641 (h!8919 tokens!465)))))

(declare-fun b!237710 () Bool)

(assert (=> b!237710 (= e!147140 (forall!806 (t!34260 tokens!465) lambda!7641))))

(assert (= (and d!66383 (not res!109794)) b!237709))

(assert (= (and b!237709 res!109795) b!237710))

(declare-fun b_lambda!6759 () Bool)

(assert (=> (not b_lambda!6759) (not b!237709)))

(declare-fun m!286081 () Bool)

(assert (=> b!237709 m!286081))

(declare-fun m!286083 () Bool)

(assert (=> b!237710 m!286083))

(assert (=> b!236970 d!66383))

(declare-fun d!66385 () Bool)

(declare-fun res!109803 () Bool)

(declare-fun e!147150 () Bool)

(assert (=> d!66385 (=> (not res!109803) (not e!147150))))

(assert (=> d!66385 (= res!109803 (not (isEmpty!2087 (originalCharacters!705 (h!8919 tokens!465)))))))

(assert (=> d!66385 (= (inv!4377 (h!8919 tokens!465)) e!147150)))

(declare-fun b!237726 () Bool)

(declare-fun res!109804 () Bool)

(assert (=> b!237726 (=> (not res!109804) (not e!147150))))

(assert (=> b!237726 (= res!109804 (= (originalCharacters!705 (h!8919 tokens!465)) (list!1374 (dynLambda!1677 (toChars!1220 (transformation!662 (rule!1229 (h!8919 tokens!465)))) (value!23184 (h!8919 tokens!465))))))))

(declare-fun b!237727 () Bool)

(assert (=> b!237727 (= e!147150 (= (size!2818 (h!8919 tokens!465)) (size!2825 (originalCharacters!705 (h!8919 tokens!465)))))))

(assert (= (and d!66385 res!109803) b!237726))

(assert (= (and b!237726 res!109804) b!237727))

(declare-fun b_lambda!6761 () Bool)

(assert (=> (not b_lambda!6761) (not b!237726)))

(declare-fun t!34293 () Bool)

(declare-fun tb!12041 () Bool)

(assert (=> (and b!236974 (= (toChars!1220 (transformation!662 (rule!1229 (h!8919 tokens!465)))) (toChars!1220 (transformation!662 (rule!1229 (h!8919 tokens!465))))) t!34293) tb!12041))

(declare-fun b!237731 () Bool)

(declare-fun e!147154 () Bool)

(declare-fun tp!94860 () Bool)

(assert (=> b!237731 (= e!147154 (and (inv!4381 (c!45382 (dynLambda!1677 (toChars!1220 (transformation!662 (rule!1229 (h!8919 tokens!465)))) (value!23184 (h!8919 tokens!465))))) tp!94860))))

(declare-fun result!15280 () Bool)

(assert (=> tb!12041 (= result!15280 (and (inv!4382 (dynLambda!1677 (toChars!1220 (transformation!662 (rule!1229 (h!8919 tokens!465)))) (value!23184 (h!8919 tokens!465)))) e!147154))))

(assert (= tb!12041 b!237731))

(declare-fun m!286085 () Bool)

(assert (=> b!237731 m!286085))

(declare-fun m!286087 () Bool)

(assert (=> tb!12041 m!286087))

(assert (=> b!237726 t!34293))

(declare-fun b_and!17717 () Bool)

(assert (= b_and!17705 (and (=> t!34293 result!15280) b_and!17717)))

(declare-fun tb!12043 () Bool)

(declare-fun t!34295 () Bool)

(assert (=> (and b!236977 (= (toChars!1220 (transformation!662 (rule!1229 separatorToken!170))) (toChars!1220 (transformation!662 (rule!1229 (h!8919 tokens!465))))) t!34295) tb!12043))

(declare-fun result!15282 () Bool)

(assert (= result!15282 result!15280))

(assert (=> b!237726 t!34295))

(declare-fun b_and!17719 () Bool)

(assert (= b_and!17707 (and (=> t!34295 result!15282) b_and!17719)))

(declare-fun t!34297 () Bool)

(declare-fun tb!12045 () Bool)

(assert (=> (and b!236959 (= (toChars!1220 (transformation!662 (h!8918 rules!1920))) (toChars!1220 (transformation!662 (rule!1229 (h!8919 tokens!465))))) t!34297) tb!12045))

(declare-fun result!15284 () Bool)

(assert (= result!15284 result!15280))

(assert (=> b!237726 t!34297))

(declare-fun b_and!17721 () Bool)

(assert (= b_and!17709 (and (=> t!34297 result!15284) b_and!17721)))

(declare-fun m!286089 () Bool)

(assert (=> d!66385 m!286089))

(declare-fun m!286091 () Bool)

(assert (=> b!237726 m!286091))

(assert (=> b!237726 m!286091))

(declare-fun m!286093 () Bool)

(assert (=> b!237726 m!286093))

(declare-fun m!286095 () Bool)

(assert (=> b!237727 m!286095))

(assert (=> b!236949 d!66385))

(declare-fun d!66387 () Bool)

(assert (=> d!66387 (= (list!1374 lt!94432) (list!1379 (c!45382 lt!94432)))))

(declare-fun bs!25364 () Bool)

(assert (= bs!25364 d!66387))

(declare-fun m!286097 () Bool)

(assert (=> bs!25364 m!286097))

(assert (=> b!236948 d!66387))

(declare-fun bs!25370 () Bool)

(declare-fun d!66389 () Bool)

(assert (= bs!25370 (and d!66389 b!236970)))

(declare-fun lambda!7677 () Int)

(assert (=> bs!25370 (= lambda!7677 lambda!7641)))

(declare-fun bs!25371 () Bool)

(assert (= bs!25371 (and d!66389 b!236969)))

(assert (=> bs!25371 (not (= lambda!7677 lambda!7642))))

(declare-fun bs!25372 () Bool)

(assert (= bs!25372 (and d!66389 d!66265)))

(assert (=> bs!25372 (= lambda!7677 lambda!7663)))

(declare-fun bs!25373 () Bool)

(declare-fun b!237849 () Bool)

(assert (= bs!25373 (and b!237849 b!236970)))

(declare-fun lambda!7678 () Int)

(assert (=> bs!25373 (not (= lambda!7678 lambda!7641))))

(declare-fun bs!25374 () Bool)

(assert (= bs!25374 (and b!237849 b!236969)))

(assert (=> bs!25374 (= lambda!7678 lambda!7642)))

(declare-fun bs!25375 () Bool)

(assert (= bs!25375 (and b!237849 d!66265)))

(assert (=> bs!25375 (not (= lambda!7678 lambda!7663))))

(declare-fun bs!25376 () Bool)

(assert (= bs!25376 (and b!237849 d!66389)))

(assert (=> bs!25376 (not (= lambda!7678 lambda!7677))))

(declare-fun b!237860 () Bool)

(declare-fun e!147222 () Bool)

(assert (=> b!237860 (= e!147222 true)))

(declare-fun b!237859 () Bool)

(declare-fun e!147221 () Bool)

(assert (=> b!237859 (= e!147221 e!147222)))

(declare-fun b!237858 () Bool)

(declare-fun e!147220 () Bool)

(assert (=> b!237858 (= e!147220 e!147221)))

(assert (=> b!237849 e!147220))

(assert (= b!237859 b!237860))

(assert (= b!237858 b!237859))

(assert (= (and b!237849 (is-Cons!3521 rules!1920)) b!237858))

(assert (=> b!237860 (< (dynLambda!1670 order!2503 (toValue!1361 (transformation!662 (h!8918 rules!1920)))) (dynLambda!1671 order!2505 lambda!7678))))

(assert (=> b!237860 (< (dynLambda!1672 order!2507 (toChars!1220 (transformation!662 (h!8918 rules!1920)))) (dynLambda!1671 order!2505 lambda!7678))))

(assert (=> b!237849 true))

(declare-fun b!237847 () Bool)

(declare-fun e!147214 () BalanceConc!2300)

(declare-fun call!12363 () Token!1068)

(assert (=> b!237847 (= e!147214 (charsOf!317 call!12363))))

(declare-fun b!237848 () Bool)

(declare-fun e!147218 () BalanceConc!2300)

(declare-fun call!12362 () BalanceConc!2300)

(assert (=> b!237848 (= e!147218 call!12362)))

(declare-fun e!147219 () BalanceConc!2300)

(assert (=> b!237849 (= e!147219 e!147218)))

(declare-fun lt!94993 () List!3532)

(assert (=> b!237849 (= lt!94993 (list!1375 lt!94428))))

(declare-fun lt!94994 () Unit!4177)

(assert (=> b!237849 (= lt!94994 (lemmaDropApply!175 lt!94993 0))))

(assert (=> b!237849 (= (head!819 (drop!188 lt!94993 0)) (apply!655 lt!94993 0))))

(declare-fun lt!94998 () Unit!4177)

(assert (=> b!237849 (= lt!94998 lt!94994)))

(declare-fun lt!94989 () List!3532)

(assert (=> b!237849 (= lt!94989 (list!1375 lt!94428))))

(declare-fun lt!94990 () Unit!4177)

(assert (=> b!237849 (= lt!94990 (lemmaDropTail!167 lt!94989 0))))

(assert (=> b!237849 (= (tail!436 (drop!188 lt!94989 0)) (drop!188 lt!94989 (+ 0 1)))))

(declare-fun lt!94999 () Unit!4177)

(assert (=> b!237849 (= lt!94999 lt!94990)))

(declare-fun lt!94997 () Unit!4177)

(assert (=> b!237849 (= lt!94997 (forallContained!229 (list!1375 lt!94428) lambda!7678 (apply!653 lt!94428 0)))))

(declare-fun lt!94988 () BalanceConc!2300)

(assert (=> b!237849 (= lt!94988 (printWithSeparatorTokenWhenNeededRec!231 thiss!17480 rules!1920 lt!94428 separatorToken!170 (+ 0 1)))))

(declare-fun lt!94996 () Option!680)

(assert (=> b!237849 (= lt!94996 (maxPrefixZipperSequence!241 thiss!17480 rules!1920 (++!893 (charsOf!317 (apply!653 lt!94428 0)) lt!94988)))))

(declare-fun res!109859 () Bool)

(assert (=> b!237849 (= res!109859 (is-Some!679 lt!94996))))

(declare-fun e!147216 () Bool)

(assert (=> b!237849 (=> (not res!109859) (not e!147216))))

(declare-fun c!45556 () Bool)

(assert (=> b!237849 (= c!45556 e!147216)))

(declare-fun b!237850 () Bool)

(declare-fun e!147213 () Bool)

(assert (=> b!237850 (= e!147213 (<= 0 (size!2819 lt!94428)))))

(declare-fun bm!12355 () Bool)

(declare-fun call!12361 () BalanceConc!2300)

(declare-fun call!12360 () BalanceConc!2300)

(assert (=> bm!12355 (= call!12361 call!12360)))

(declare-fun bm!12356 () Bool)

(declare-fun call!12364 () Token!1068)

(assert (=> bm!12356 (= call!12363 call!12364)))

(declare-fun bm!12358 () Bool)

(assert (=> bm!12358 (= call!12364 (apply!653 lt!94428 0))))

(declare-fun b!237851 () Bool)

(declare-fun e!147215 () BalanceConc!2300)

(assert (=> b!237851 (= e!147215 (++!893 call!12362 lt!94988))))

(declare-fun b!237852 () Bool)

(assert (=> b!237852 (= e!147214 call!12360)))

(declare-fun c!45559 () Bool)

(declare-fun bm!12359 () Bool)

(assert (=> bm!12359 (= call!12360 (charsOf!317 (ite c!45556 call!12364 (ite c!45559 separatorToken!170 call!12363))))))

(declare-fun b!237853 () Bool)

(declare-fun e!147217 () Bool)

(assert (=> b!237853 (= c!45559 e!147217)))

(declare-fun res!109861 () Bool)

(assert (=> b!237853 (=> (not res!109861) (not e!147217))))

(assert (=> b!237853 (= res!109861 (is-Some!679 lt!94996))))

(assert (=> b!237853 (= e!147218 e!147215)))

(declare-fun b!237854 () Bool)

(assert (=> b!237854 (= e!147217 (not (= (_1!2147 (v!14414 lt!94996)) call!12364)))))

(declare-fun bm!12357 () Bool)

(declare-fun c!45558 () Bool)

(assert (=> bm!12357 (= c!45558 c!45556)))

(assert (=> bm!12357 (= call!12362 (++!893 e!147214 (ite c!45556 lt!94988 call!12361)))))

(declare-fun lt!95000 () BalanceConc!2300)

(assert (=> d!66389 (= (list!1374 lt!95000) (printWithSeparatorTokenWhenNeededList!241 thiss!17480 rules!1920 (dropList!135 lt!94428 0) separatorToken!170))))

(assert (=> d!66389 (= lt!95000 e!147219)))

(declare-fun c!45557 () Bool)

(assert (=> d!66389 (= c!45557 (>= 0 (size!2819 lt!94428)))))

(declare-fun lt!94987 () Unit!4177)

(declare-fun lemmaContentSubsetPreservesForall!79 (List!3532 List!3532 Int) Unit!4177)

(assert (=> d!66389 (= lt!94987 (lemmaContentSubsetPreservesForall!79 (list!1375 lt!94428) (dropList!135 lt!94428 0) lambda!7677))))

(assert (=> d!66389 e!147213))

(declare-fun res!109860 () Bool)

(assert (=> d!66389 (=> (not res!109860) (not e!147213))))

(assert (=> d!66389 (= res!109860 (>= 0 0))))

(assert (=> d!66389 (= (printWithSeparatorTokenWhenNeededRec!231 thiss!17480 rules!1920 lt!94428 separatorToken!170 0) lt!95000)))

(declare-fun b!237855 () Bool)

(assert (=> b!237855 (= e!147216 (= (_1!2147 (v!14414 lt!94996)) (apply!653 lt!94428 0)))))

(declare-fun b!237856 () Bool)

(assert (=> b!237856 (= e!147219 (BalanceConc!2301 Empty!1146))))

(declare-fun b!237857 () Bool)

(assert (=> b!237857 (= e!147215 (BalanceConc!2301 Empty!1146))))

(assert (=> b!237857 (= (print!279 thiss!17480 (singletonSeq!214 call!12363)) (printTailRec!242 thiss!17480 (singletonSeq!214 call!12363) 0 (BalanceConc!2301 Empty!1146)))))

(declare-fun lt!94992 () Unit!4177)

(declare-fun Unit!4194 () Unit!4177)

(assert (=> b!237857 (= lt!94992 Unit!4194)))

(declare-fun lt!94995 () Unit!4177)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!83 (LexerInterface!548 List!3531 List!3530 List!3530) Unit!4177)

(assert (=> b!237857 (= lt!94995 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!83 thiss!17480 rules!1920 (list!1374 call!12361) (list!1374 lt!94988)))))

(assert (=> b!237857 false))

(declare-fun lt!94991 () Unit!4177)

(declare-fun Unit!4195 () Unit!4177)

(assert (=> b!237857 (= lt!94991 Unit!4195)))

(assert (= (and d!66389 res!109860) b!237850))

(assert (= (and d!66389 c!45557) b!237856))

(assert (= (and d!66389 (not c!45557)) b!237849))

(assert (= (and b!237849 res!109859) b!237855))

(assert (= (and b!237849 c!45556) b!237848))

(assert (= (and b!237849 (not c!45556)) b!237853))

(assert (= (and b!237853 res!109861) b!237854))

(assert (= (and b!237853 c!45559) b!237851))

(assert (= (and b!237853 (not c!45559)) b!237857))

(assert (= (or b!237851 b!237857) bm!12356))

(assert (= (or b!237851 b!237857) bm!12355))

(assert (= (or b!237848 bm!12356 b!237854) bm!12358))

(assert (= (or b!237848 bm!12355) bm!12359))

(assert (= (or b!237848 b!237851) bm!12357))

(assert (= (and bm!12357 c!45558) b!237852))

(assert (= (and bm!12357 (not c!45558)) b!237847))

(declare-fun m!286269 () Bool)

(assert (=> b!237857 m!286269))

(declare-fun m!286271 () Bool)

(assert (=> b!237857 m!286271))

(declare-fun m!286273 () Bool)

(assert (=> b!237857 m!286273))

(assert (=> b!237857 m!286271))

(declare-fun m!286275 () Bool)

(assert (=> b!237857 m!286275))

(assert (=> b!237857 m!286271))

(declare-fun m!286277 () Bool)

(assert (=> b!237857 m!286277))

(assert (=> b!237857 m!286269))

(assert (=> b!237857 m!286277))

(declare-fun m!286279 () Bool)

(assert (=> b!237857 m!286279))

(assert (=> b!237850 m!284995))

(declare-fun m!286281 () Bool)

(assert (=> bm!12359 m!286281))

(declare-fun m!286283 () Bool)

(assert (=> d!66389 m!286283))

(declare-fun m!286285 () Bool)

(assert (=> d!66389 m!286285))

(assert (=> d!66389 m!286283))

(declare-fun m!286287 () Bool)

(assert (=> d!66389 m!286287))

(declare-fun m!286289 () Bool)

(assert (=> d!66389 m!286289))

(assert (=> d!66389 m!286285))

(assert (=> d!66389 m!286283))

(declare-fun m!286291 () Bool)

(assert (=> d!66389 m!286291))

(assert (=> d!66389 m!284995))

(declare-fun m!286293 () Bool)

(assert (=> bm!12357 m!286293))

(declare-fun m!286295 () Bool)

(assert (=> bm!12358 m!286295))

(assert (=> b!237855 m!286295))

(declare-fun m!286297 () Bool)

(assert (=> b!237847 m!286297))

(declare-fun m!286299 () Bool)

(assert (=> b!237851 m!286299))

(assert (=> b!237849 m!286285))

(assert (=> b!237849 m!286295))

(declare-fun m!286301 () Bool)

(assert (=> b!237849 m!286301))

(declare-fun m!286303 () Bool)

(assert (=> b!237849 m!286303))

(declare-fun m!286305 () Bool)

(assert (=> b!237849 m!286305))

(assert (=> b!237849 m!286285))

(declare-fun m!286307 () Bool)

(assert (=> b!237849 m!286307))

(declare-fun m!286309 () Bool)

(assert (=> b!237849 m!286309))

(declare-fun m!286311 () Bool)

(assert (=> b!237849 m!286311))

(declare-fun m!286313 () Bool)

(assert (=> b!237849 m!286313))

(assert (=> b!237849 m!286307))

(assert (=> b!237849 m!286313))

(declare-fun m!286315 () Bool)

(assert (=> b!237849 m!286315))

(declare-fun m!286317 () Bool)

(assert (=> b!237849 m!286317))

(assert (=> b!237849 m!286295))

(assert (=> b!237849 m!286311))

(assert (=> b!237849 m!286295))

(declare-fun m!286319 () Bool)

(assert (=> b!237849 m!286319))

(declare-fun m!286321 () Bool)

(assert (=> b!237849 m!286321))

(declare-fun m!286323 () Bool)

(assert (=> b!237849 m!286323))

(assert (=> b!237849 m!286323))

(declare-fun m!286325 () Bool)

(assert (=> b!237849 m!286325))

(assert (=> b!236948 d!66389))

(declare-fun bs!25381 () Bool)

(declare-fun b!237959 () Bool)

(assert (= bs!25381 (and b!237959 b!237849)))

(declare-fun lambda!7681 () Int)

(assert (=> bs!25381 (= lambda!7681 lambda!7678)))

(declare-fun bs!25382 () Bool)

(assert (= bs!25382 (and b!237959 d!66389)))

(assert (=> bs!25382 (not (= lambda!7681 lambda!7677))))

(declare-fun bs!25383 () Bool)

(assert (= bs!25383 (and b!237959 b!236970)))

(assert (=> bs!25383 (not (= lambda!7681 lambda!7641))))

(declare-fun bs!25384 () Bool)

(assert (= bs!25384 (and b!237959 b!236969)))

(assert (=> bs!25384 (= lambda!7681 lambda!7642)))

(declare-fun bs!25385 () Bool)

(assert (= bs!25385 (and b!237959 d!66265)))

(assert (=> bs!25385 (not (= lambda!7681 lambda!7663))))

(declare-fun b!237962 () Bool)

(declare-fun e!147277 () Bool)

(assert (=> b!237962 (= e!147277 true)))

(declare-fun b!237961 () Bool)

(declare-fun e!147276 () Bool)

(assert (=> b!237961 (= e!147276 e!147277)))

(declare-fun b!237960 () Bool)

(declare-fun e!147275 () Bool)

(assert (=> b!237960 (= e!147275 e!147276)))

(assert (=> b!237959 e!147275))

(assert (= b!237961 b!237962))

(assert (= b!237960 b!237961))

(assert (= (and b!237959 (is-Cons!3521 rules!1920)) b!237960))

(assert (=> b!237962 (< (dynLambda!1670 order!2503 (toValue!1361 (transformation!662 (h!8918 rules!1920)))) (dynLambda!1671 order!2505 lambda!7681))))

(assert (=> b!237962 (< (dynLambda!1672 order!2507 (toChars!1220 (transformation!662 (h!8918 rules!1920)))) (dynLambda!1671 order!2505 lambda!7681))))

(assert (=> b!237959 true))

(declare-fun b!237952 () Bool)

(declare-fun e!147271 () BalanceConc!2300)

(declare-fun call!12381 () BalanceConc!2300)

(assert (=> b!237952 (= e!147271 call!12381)))

(declare-fun b!237953 () Bool)

(assert (=> b!237953 (= e!147271 (charsOf!317 separatorToken!170))))

(declare-fun b!237954 () Bool)

(declare-fun e!147273 () List!3530)

(assert (=> b!237954 (= e!147273 Nil!3520)))

(assert (=> b!237954 (= (print!279 thiss!17480 (singletonSeq!214 (h!8919 tokens!465))) (printTailRec!242 thiss!17480 (singletonSeq!214 (h!8919 tokens!465)) 0 (BalanceConc!2301 Empty!1146)))))

(declare-fun lt!95035 () Unit!4177)

(declare-fun Unit!4196 () Unit!4177)

(assert (=> b!237954 (= lt!95035 Unit!4196)))

(declare-fun lt!95038 () Unit!4177)

(declare-fun lt!95037 () List!3530)

(declare-fun call!12382 () List!3530)

(assert (=> b!237954 (= lt!95038 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!83 thiss!17480 rules!1920 call!12382 lt!95037))))

(assert (=> b!237954 false))

(declare-fun lt!95039 () Unit!4177)

(declare-fun Unit!4197 () Unit!4177)

(assert (=> b!237954 (= lt!95039 Unit!4197)))

(declare-fun b!237955 () Bool)

(declare-fun call!12378 () List!3530)

(assert (=> b!237955 (= e!147273 (++!891 call!12378 lt!95037))))

(declare-fun bm!12373 () Bool)

(declare-fun call!12379 () BalanceConc!2300)

(assert (=> bm!12373 (= call!12381 call!12379)))

(declare-fun call!12380 () List!3530)

(declare-fun bm!12374 () Bool)

(declare-fun c!45590 () Bool)

(assert (=> bm!12374 (= call!12380 (list!1374 (ite c!45590 call!12379 call!12381)))))

(declare-fun b!237956 () Bool)

(declare-fun e!147272 () List!3530)

(assert (=> b!237956 (= e!147272 call!12378)))

(declare-fun bm!12375 () Bool)

(assert (=> bm!12375 (= call!12379 (charsOf!317 (h!8919 tokens!465)))))

(declare-fun bm!12376 () Bool)

(assert (=> bm!12376 (= call!12378 (++!891 call!12380 (ite c!45590 lt!95037 call!12382)))))

(declare-fun bm!12377 () Bool)

(assert (=> bm!12377 (= call!12382 (list!1374 e!147271))))

(declare-fun c!45589 () Bool)

(declare-fun c!45591 () Bool)

(assert (=> bm!12377 (= c!45589 c!45591)))

(declare-fun b!237958 () Bool)

(declare-fun lt!95036 () Option!678)

(assert (=> b!237958 (= c!45591 (and (is-Some!677 lt!95036) (not (= (_1!2144 (v!14412 lt!95036)) (h!8919 tokens!465)))))))

(assert (=> b!237958 (= e!147272 e!147273)))

(declare-fun e!147274 () List!3530)

(assert (=> b!237959 (= e!147274 e!147272)))

(declare-fun lt!95040 () Unit!4177)

(assert (=> b!237959 (= lt!95040 (forallContained!229 tokens!465 lambda!7681 (h!8919 tokens!465)))))

(assert (=> b!237959 (= lt!95037 (printWithSeparatorTokenWhenNeededList!241 thiss!17480 rules!1920 (t!34260 tokens!465) separatorToken!170))))

(assert (=> b!237959 (= lt!95036 (maxPrefix!278 thiss!17480 rules!1920 (++!891 (list!1374 (charsOf!317 (h!8919 tokens!465))) lt!95037)))))

(assert (=> b!237959 (= c!45590 (and (is-Some!677 lt!95036) (= (_1!2144 (v!14412 lt!95036)) (h!8919 tokens!465))))))

(declare-fun d!66425 () Bool)

(declare-fun c!45592 () Bool)

(assert (=> d!66425 (= c!45592 (is-Cons!3522 tokens!465))))

(assert (=> d!66425 (= (printWithSeparatorTokenWhenNeededList!241 thiss!17480 rules!1920 tokens!465 separatorToken!170) e!147274)))

(declare-fun b!237957 () Bool)

(assert (=> b!237957 (= e!147274 Nil!3520)))

(assert (= (and d!66425 c!45592) b!237959))

(assert (= (and d!66425 (not c!45592)) b!237957))

(assert (= (and b!237959 c!45590) b!237956))

(assert (= (and b!237959 (not c!45590)) b!237958))

(assert (= (and b!237958 c!45591) b!237955))

(assert (= (and b!237958 (not c!45591)) b!237954))

(assert (= (or b!237955 b!237954) bm!12373))

(assert (= (or b!237955 b!237954) bm!12377))

(assert (= (and bm!12377 c!45589) b!237953))

(assert (= (and bm!12377 (not c!45589)) b!237952))

(assert (= (or b!237956 bm!12373) bm!12375))

(assert (= (or b!237956 b!237955) bm!12374))

(assert (= (or b!237956 b!237955) bm!12376))

(declare-fun m!286451 () Bool)

(assert (=> bm!12374 m!286451))

(assert (=> bm!12375 m!284959))

(assert (=> b!237954 m!284979))

(assert (=> b!237954 m!284979))

(declare-fun m!286453 () Bool)

(assert (=> b!237954 m!286453))

(assert (=> b!237954 m!284979))

(declare-fun m!286455 () Bool)

(assert (=> b!237954 m!286455))

(declare-fun m!286457 () Bool)

(assert (=> b!237954 m!286457))

(declare-fun m!286459 () Bool)

(assert (=> bm!12377 m!286459))

(assert (=> b!237959 m!284945))

(assert (=> b!237959 m!284959))

(assert (=> b!237959 m!284959))

(assert (=> b!237959 m!284961))

(declare-fun m!286461 () Bool)

(assert (=> b!237959 m!286461))

(declare-fun m!286463 () Bool)

(assert (=> b!237959 m!286463))

(declare-fun m!286465 () Bool)

(assert (=> b!237959 m!286465))

(assert (=> b!237959 m!284961))

(assert (=> b!237959 m!286463))

(declare-fun m!286467 () Bool)

(assert (=> bm!12376 m!286467))

(declare-fun m!286469 () Bool)

(assert (=> b!237955 m!286469))

(assert (=> b!237953 m!284947))

(assert (=> b!236948 d!66425))

(declare-fun d!66453 () Bool)

(declare-fun fromListB!259 (List!3532) BalanceConc!2302)

(assert (=> d!66453 (= (seqFromList!702 (t!34260 tokens!465)) (fromListB!259 (t!34260 tokens!465)))))

(declare-fun bs!25390 () Bool)

(assert (= bs!25390 d!66453))

(declare-fun m!286471 () Bool)

(assert (=> bs!25390 m!286471))

(assert (=> b!236991 d!66453))

(declare-fun b!237969 () Bool)

(declare-fun e!147285 () List!3530)

(assert (=> b!237969 (= e!147285 lt!94434)))

(declare-fun d!66455 () Bool)

(declare-fun e!147284 () Bool)

(assert (=> d!66455 e!147284))

(declare-fun res!109900 () Bool)

(assert (=> d!66455 (=> (not res!109900) (not e!147284))))

(declare-fun lt!95042 () List!3530)

(assert (=> d!66455 (= res!109900 (= (content!491 lt!95042) (set.union (content!491 lt!94463) (content!491 lt!94434))))))

(assert (=> d!66455 (= lt!95042 e!147285)))

(declare-fun c!45593 () Bool)

(assert (=> d!66455 (= c!45593 (is-Nil!3520 lt!94463))))

(assert (=> d!66455 (= (++!891 lt!94463 lt!94434) lt!95042)))

(declare-fun b!237970 () Bool)

(assert (=> b!237970 (= e!147285 (Cons!3520 (h!8917 lt!94463) (++!891 (t!34258 lt!94463) lt!94434)))))

(declare-fun b!237971 () Bool)

(declare-fun res!109901 () Bool)

(assert (=> b!237971 (=> (not res!109901) (not e!147284))))

(assert (=> b!237971 (= res!109901 (= (size!2825 lt!95042) (+ (size!2825 lt!94463) (size!2825 lt!94434))))))

(declare-fun b!237972 () Bool)

(assert (=> b!237972 (= e!147284 (or (not (= lt!94434 Nil!3520)) (= lt!95042 lt!94463)))))

(assert (= (and d!66455 c!45593) b!237969))

(assert (= (and d!66455 (not c!45593)) b!237970))

(assert (= (and d!66455 res!109900) b!237971))

(assert (= (and b!237971 res!109901) b!237972))

(declare-fun m!286473 () Bool)

(assert (=> d!66455 m!286473))

(declare-fun m!286475 () Bool)

(assert (=> d!66455 m!286475))

(assert (=> d!66455 m!286041))

(declare-fun m!286477 () Bool)

(assert (=> b!237970 m!286477))

(declare-fun m!286479 () Bool)

(assert (=> b!237971 m!286479))

(declare-fun m!286483 () Bool)

(assert (=> b!237971 m!286483))

(assert (=> b!237971 m!286023))

(assert (=> b!236991 d!66455))

(declare-fun bs!25393 () Bool)

(declare-fun d!66457 () Bool)

(assert (= bs!25393 (and d!66457 b!237849)))

(declare-fun lambda!7687 () Int)

(assert (=> bs!25393 (not (= lambda!7687 lambda!7678))))

(declare-fun bs!25394 () Bool)

(assert (= bs!25394 (and d!66457 d!66389)))

(assert (=> bs!25394 (= lambda!7687 lambda!7677)))

(declare-fun bs!25395 () Bool)

(assert (= bs!25395 (and d!66457 b!236970)))

(assert (=> bs!25395 (= lambda!7687 lambda!7641)))

(declare-fun bs!25396 () Bool)

(assert (= bs!25396 (and d!66457 b!236969)))

(assert (=> bs!25396 (not (= lambda!7687 lambda!7642))))

(declare-fun bs!25397 () Bool)

(assert (= bs!25397 (and d!66457 d!66265)))

(assert (=> bs!25397 (= lambda!7687 lambda!7663)))

(declare-fun bs!25398 () Bool)

(assert (= bs!25398 (and d!66457 b!237959)))

(assert (=> bs!25398 (not (= lambda!7687 lambda!7681))))

(declare-fun bs!25399 () Bool)

(declare-fun b!237975 () Bool)

(assert (= bs!25399 (and b!237975 b!237849)))

(declare-fun lambda!7688 () Int)

(assert (=> bs!25399 (= lambda!7688 lambda!7678)))

(declare-fun bs!25400 () Bool)

(assert (= bs!25400 (and b!237975 d!66389)))

(assert (=> bs!25400 (not (= lambda!7688 lambda!7677))))

(declare-fun bs!25401 () Bool)

(assert (= bs!25401 (and b!237975 b!236970)))

(assert (=> bs!25401 (not (= lambda!7688 lambda!7641))))

(declare-fun bs!25402 () Bool)

(assert (= bs!25402 (and b!237975 b!236969)))

(assert (=> bs!25402 (= lambda!7688 lambda!7642)))

(declare-fun bs!25403 () Bool)

(assert (= bs!25403 (and b!237975 d!66457)))

(assert (=> bs!25403 (not (= lambda!7688 lambda!7687))))

(declare-fun bs!25404 () Bool)

(assert (= bs!25404 (and b!237975 d!66265)))

(assert (=> bs!25404 (not (= lambda!7688 lambda!7663))))

(declare-fun bs!25405 () Bool)

(assert (= bs!25405 (and b!237975 b!237959)))

(assert (=> bs!25405 (= lambda!7688 lambda!7681)))

(declare-fun b!237986 () Bool)

(declare-fun e!147295 () Bool)

(assert (=> b!237986 (= e!147295 true)))

(declare-fun b!237985 () Bool)

(declare-fun e!147294 () Bool)

(assert (=> b!237985 (= e!147294 e!147295)))

(declare-fun b!237984 () Bool)

(declare-fun e!147293 () Bool)

(assert (=> b!237984 (= e!147293 e!147294)))

(assert (=> b!237975 e!147293))

(assert (= b!237985 b!237986))

(assert (= b!237984 b!237985))

(assert (= (and b!237975 (is-Cons!3521 rules!1920)) b!237984))

(assert (=> b!237986 (< (dynLambda!1670 order!2503 (toValue!1361 (transformation!662 (h!8918 rules!1920)))) (dynLambda!1671 order!2505 lambda!7688))))

(assert (=> b!237986 (< (dynLambda!1672 order!2507 (toChars!1220 (transformation!662 (h!8918 rules!1920)))) (dynLambda!1671 order!2505 lambda!7688))))

(assert (=> b!237975 true))

(declare-fun b!237973 () Bool)

(declare-fun e!147287 () BalanceConc!2300)

(declare-fun call!12386 () Token!1068)

(assert (=> b!237973 (= e!147287 (charsOf!317 call!12386))))

(declare-fun b!237974 () Bool)

(declare-fun e!147291 () BalanceConc!2300)

(declare-fun call!12385 () BalanceConc!2300)

(assert (=> b!237974 (= e!147291 call!12385)))

(declare-fun e!147292 () BalanceConc!2300)

(assert (=> b!237975 (= e!147292 e!147291)))

(declare-fun lt!95049 () List!3532)

(assert (=> b!237975 (= lt!95049 (list!1375 (seqFromList!702 (t!34260 tokens!465))))))

(declare-fun lt!95050 () Unit!4177)

(assert (=> b!237975 (= lt!95050 (lemmaDropApply!175 lt!95049 0))))

(assert (=> b!237975 (= (head!819 (drop!188 lt!95049 0)) (apply!655 lt!95049 0))))

(declare-fun lt!95054 () Unit!4177)

(assert (=> b!237975 (= lt!95054 lt!95050)))

(declare-fun lt!95045 () List!3532)

(assert (=> b!237975 (= lt!95045 (list!1375 (seqFromList!702 (t!34260 tokens!465))))))

(declare-fun lt!95046 () Unit!4177)

(assert (=> b!237975 (= lt!95046 (lemmaDropTail!167 lt!95045 0))))

(assert (=> b!237975 (= (tail!436 (drop!188 lt!95045 0)) (drop!188 lt!95045 (+ 0 1)))))

(declare-fun lt!95055 () Unit!4177)

(assert (=> b!237975 (= lt!95055 lt!95046)))

(declare-fun lt!95053 () Unit!4177)

(assert (=> b!237975 (= lt!95053 (forallContained!229 (list!1375 (seqFromList!702 (t!34260 tokens!465))) lambda!7688 (apply!653 (seqFromList!702 (t!34260 tokens!465)) 0)))))

(declare-fun lt!95044 () BalanceConc!2300)

(assert (=> b!237975 (= lt!95044 (printWithSeparatorTokenWhenNeededRec!231 thiss!17480 rules!1920 (seqFromList!702 (t!34260 tokens!465)) separatorToken!170 (+ 0 1)))))

(declare-fun lt!95052 () Option!680)

(assert (=> b!237975 (= lt!95052 (maxPrefixZipperSequence!241 thiss!17480 rules!1920 (++!893 (charsOf!317 (apply!653 (seqFromList!702 (t!34260 tokens!465)) 0)) lt!95044)))))

(declare-fun res!109902 () Bool)

(assert (=> b!237975 (= res!109902 (is-Some!679 lt!95052))))

(declare-fun e!147289 () Bool)

(assert (=> b!237975 (=> (not res!109902) (not e!147289))))

(declare-fun c!45594 () Bool)

(assert (=> b!237975 (= c!45594 e!147289)))

(declare-fun b!237976 () Bool)

(declare-fun e!147286 () Bool)

(assert (=> b!237976 (= e!147286 (<= 0 (size!2819 (seqFromList!702 (t!34260 tokens!465)))))))

(declare-fun bm!12378 () Bool)

(declare-fun call!12384 () BalanceConc!2300)

(declare-fun call!12383 () BalanceConc!2300)

(assert (=> bm!12378 (= call!12384 call!12383)))

(declare-fun bm!12379 () Bool)

(declare-fun call!12387 () Token!1068)

(assert (=> bm!12379 (= call!12386 call!12387)))

(declare-fun bm!12381 () Bool)

(assert (=> bm!12381 (= call!12387 (apply!653 (seqFromList!702 (t!34260 tokens!465)) 0))))

(declare-fun b!237977 () Bool)

(declare-fun e!147288 () BalanceConc!2300)

(assert (=> b!237977 (= e!147288 (++!893 call!12385 lt!95044))))

(declare-fun b!237978 () Bool)

(assert (=> b!237978 (= e!147287 call!12383)))

(declare-fun c!45597 () Bool)

(declare-fun bm!12382 () Bool)

(assert (=> bm!12382 (= call!12383 (charsOf!317 (ite c!45594 call!12387 (ite c!45597 separatorToken!170 call!12386))))))

(declare-fun b!237979 () Bool)

(declare-fun e!147290 () Bool)

(assert (=> b!237979 (= c!45597 e!147290)))

(declare-fun res!109904 () Bool)

(assert (=> b!237979 (=> (not res!109904) (not e!147290))))

(assert (=> b!237979 (= res!109904 (is-Some!679 lt!95052))))

(assert (=> b!237979 (= e!147291 e!147288)))

(declare-fun b!237980 () Bool)

(assert (=> b!237980 (= e!147290 (not (= (_1!2147 (v!14414 lt!95052)) call!12387)))))

(declare-fun bm!12380 () Bool)

(declare-fun c!45596 () Bool)

(assert (=> bm!12380 (= c!45596 c!45594)))

(assert (=> bm!12380 (= call!12385 (++!893 e!147287 (ite c!45594 lt!95044 call!12384)))))

(declare-fun lt!95056 () BalanceConc!2300)

(assert (=> d!66457 (= (list!1374 lt!95056) (printWithSeparatorTokenWhenNeededList!241 thiss!17480 rules!1920 (dropList!135 (seqFromList!702 (t!34260 tokens!465)) 0) separatorToken!170))))

(assert (=> d!66457 (= lt!95056 e!147292)))

(declare-fun c!45595 () Bool)

(assert (=> d!66457 (= c!45595 (>= 0 (size!2819 (seqFromList!702 (t!34260 tokens!465)))))))

(declare-fun lt!95043 () Unit!4177)

(assert (=> d!66457 (= lt!95043 (lemmaContentSubsetPreservesForall!79 (list!1375 (seqFromList!702 (t!34260 tokens!465))) (dropList!135 (seqFromList!702 (t!34260 tokens!465)) 0) lambda!7687))))

(assert (=> d!66457 e!147286))

(declare-fun res!109903 () Bool)

(assert (=> d!66457 (=> (not res!109903) (not e!147286))))

(assert (=> d!66457 (= res!109903 (>= 0 0))))

(assert (=> d!66457 (= (printWithSeparatorTokenWhenNeededRec!231 thiss!17480 rules!1920 (seqFromList!702 (t!34260 tokens!465)) separatorToken!170 0) lt!95056)))

(declare-fun b!237981 () Bool)

(assert (=> b!237981 (= e!147289 (= (_1!2147 (v!14414 lt!95052)) (apply!653 (seqFromList!702 (t!34260 tokens!465)) 0)))))

(declare-fun b!237982 () Bool)

(assert (=> b!237982 (= e!147292 (BalanceConc!2301 Empty!1146))))

(declare-fun b!237983 () Bool)

(assert (=> b!237983 (= e!147288 (BalanceConc!2301 Empty!1146))))

(assert (=> b!237983 (= (print!279 thiss!17480 (singletonSeq!214 call!12386)) (printTailRec!242 thiss!17480 (singletonSeq!214 call!12386) 0 (BalanceConc!2301 Empty!1146)))))

(declare-fun lt!95048 () Unit!4177)

(declare-fun Unit!4199 () Unit!4177)

(assert (=> b!237983 (= lt!95048 Unit!4199)))

(declare-fun lt!95051 () Unit!4177)

(assert (=> b!237983 (= lt!95051 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!83 thiss!17480 rules!1920 (list!1374 call!12384) (list!1374 lt!95044)))))

(assert (=> b!237983 false))

(declare-fun lt!95047 () Unit!4177)

(declare-fun Unit!4200 () Unit!4177)

(assert (=> b!237983 (= lt!95047 Unit!4200)))

(assert (= (and d!66457 res!109903) b!237976))

(assert (= (and d!66457 c!45595) b!237982))

(assert (= (and d!66457 (not c!45595)) b!237975))

(assert (= (and b!237975 res!109902) b!237981))

(assert (= (and b!237975 c!45594) b!237974))

(assert (= (and b!237975 (not c!45594)) b!237979))

(assert (= (and b!237979 res!109904) b!237980))

(assert (= (and b!237979 c!45597) b!237977))

(assert (= (and b!237979 (not c!45597)) b!237983))

(assert (= (or b!237977 b!237983) bm!12379))

(assert (= (or b!237977 b!237983) bm!12378))

(assert (= (or b!237974 bm!12379 b!237980) bm!12381))

(assert (= (or b!237974 bm!12378) bm!12382))

(assert (= (or b!237974 b!237977) bm!12380))

(assert (= (and bm!12380 c!45596) b!237978))

(assert (= (and bm!12380 (not c!45596)) b!237973))

(declare-fun m!286497 () Bool)

(assert (=> b!237983 m!286497))

(declare-fun m!286499 () Bool)

(assert (=> b!237983 m!286499))

(declare-fun m!286501 () Bool)

(assert (=> b!237983 m!286501))

(assert (=> b!237983 m!286499))

(declare-fun m!286503 () Bool)

(assert (=> b!237983 m!286503))

(assert (=> b!237983 m!286499))

(declare-fun m!286505 () Bool)

(assert (=> b!237983 m!286505))

(assert (=> b!237983 m!286497))

(assert (=> b!237983 m!286505))

(declare-fun m!286507 () Bool)

(assert (=> b!237983 m!286507))

(assert (=> b!237976 m!284963))

(declare-fun m!286509 () Bool)

(assert (=> b!237976 m!286509))

(declare-fun m!286511 () Bool)

(assert (=> bm!12382 m!286511))

(assert (=> d!66457 m!284963))

(declare-fun m!286513 () Bool)

(assert (=> d!66457 m!286513))

(assert (=> d!66457 m!284963))

(declare-fun m!286515 () Bool)

(assert (=> d!66457 m!286515))

(assert (=> d!66457 m!286513))

(declare-fun m!286517 () Bool)

(assert (=> d!66457 m!286517))

(declare-fun m!286519 () Bool)

(assert (=> d!66457 m!286519))

(assert (=> d!66457 m!286515))

(assert (=> d!66457 m!286513))

(declare-fun m!286521 () Bool)

(assert (=> d!66457 m!286521))

(assert (=> d!66457 m!284963))

(assert (=> d!66457 m!286509))

(declare-fun m!286523 () Bool)

(assert (=> bm!12380 m!286523))

(assert (=> bm!12381 m!284963))

(declare-fun m!286525 () Bool)

(assert (=> bm!12381 m!286525))

(assert (=> b!237981 m!284963))

(assert (=> b!237981 m!286525))

(declare-fun m!286527 () Bool)

(assert (=> b!237973 m!286527))

(declare-fun m!286529 () Bool)

(assert (=> b!237977 m!286529))

(assert (=> b!237975 m!286515))

(assert (=> b!237975 m!286525))

(declare-fun m!286531 () Bool)

(assert (=> b!237975 m!286531))

(declare-fun m!286533 () Bool)

(assert (=> b!237975 m!286533))

(assert (=> b!237975 m!284963))

(declare-fun m!286535 () Bool)

(assert (=> b!237975 m!286535))

(assert (=> b!237975 m!284963))

(assert (=> b!237975 m!286515))

(declare-fun m!286537 () Bool)

(assert (=> b!237975 m!286537))

(declare-fun m!286539 () Bool)

(assert (=> b!237975 m!286539))

(declare-fun m!286541 () Bool)

(assert (=> b!237975 m!286541))

(declare-fun m!286543 () Bool)

(assert (=> b!237975 m!286543))

(assert (=> b!237975 m!286537))

(assert (=> b!237975 m!286543))

(declare-fun m!286545 () Bool)

(assert (=> b!237975 m!286545))

(declare-fun m!286547 () Bool)

(assert (=> b!237975 m!286547))

(assert (=> b!237975 m!286525))

(assert (=> b!237975 m!286541))

(assert (=> b!237975 m!284963))

(assert (=> b!237975 m!286525))

(declare-fun m!286549 () Bool)

(assert (=> b!237975 m!286549))

(declare-fun m!286551 () Bool)

(assert (=> b!237975 m!286551))

(declare-fun m!286553 () Bool)

(assert (=> b!237975 m!286553))

(assert (=> b!237975 m!286553))

(declare-fun m!286555 () Bool)

(assert (=> b!237975 m!286555))

(assert (=> b!236991 d!66457))

(declare-fun d!66467 () Bool)

(declare-fun lt!95071 () BalanceConc!2300)

(assert (=> d!66467 (= (list!1374 lt!95071) (originalCharacters!705 separatorToken!170))))

(assert (=> d!66467 (= lt!95071 (dynLambda!1677 (toChars!1220 (transformation!662 (rule!1229 separatorToken!170))) (value!23184 separatorToken!170)))))

(assert (=> d!66467 (= (charsOf!317 separatorToken!170) lt!95071)))

(declare-fun b_lambda!6773 () Bool)

(assert (=> (not b_lambda!6773) (not d!66467)))

(declare-fun t!34315 () Bool)

(declare-fun tb!12053 () Bool)

(assert (=> (and b!236974 (= (toChars!1220 (transformation!662 (rule!1229 (h!8919 tokens!465)))) (toChars!1220 (transformation!662 (rule!1229 separatorToken!170)))) t!34315) tb!12053))

(declare-fun b!238007 () Bool)

(declare-fun e!147312 () Bool)

(declare-fun tp!94862 () Bool)

(assert (=> b!238007 (= e!147312 (and (inv!4381 (c!45382 (dynLambda!1677 (toChars!1220 (transformation!662 (rule!1229 separatorToken!170))) (value!23184 separatorToken!170)))) tp!94862))))

(declare-fun result!15292 () Bool)

(assert (=> tb!12053 (= result!15292 (and (inv!4382 (dynLambda!1677 (toChars!1220 (transformation!662 (rule!1229 separatorToken!170))) (value!23184 separatorToken!170))) e!147312))))

(assert (= tb!12053 b!238007))

(declare-fun m!286557 () Bool)

(assert (=> b!238007 m!286557))

(declare-fun m!286559 () Bool)

(assert (=> tb!12053 m!286559))

(assert (=> d!66467 t!34315))

(declare-fun b_and!17741 () Bool)

(assert (= b_and!17717 (and (=> t!34315 result!15292) b_and!17741)))

(declare-fun t!34317 () Bool)

(declare-fun tb!12055 () Bool)

(assert (=> (and b!236977 (= (toChars!1220 (transformation!662 (rule!1229 separatorToken!170))) (toChars!1220 (transformation!662 (rule!1229 separatorToken!170)))) t!34317) tb!12055))

(declare-fun result!15294 () Bool)

(assert (= result!15294 result!15292))

(assert (=> d!66467 t!34317))

(declare-fun b_and!17743 () Bool)

(assert (= b_and!17719 (and (=> t!34317 result!15294) b_and!17743)))

(declare-fun tb!12057 () Bool)

(declare-fun t!34319 () Bool)

(assert (=> (and b!236959 (= (toChars!1220 (transformation!662 (h!8918 rules!1920))) (toChars!1220 (transformation!662 (rule!1229 separatorToken!170)))) t!34319) tb!12057))

(declare-fun result!15296 () Bool)

(assert (= result!15296 result!15292))

(assert (=> d!66467 t!34319))

(declare-fun b_and!17745 () Bool)

(assert (= b_and!17721 (and (=> t!34319 result!15296) b_and!17745)))

(declare-fun m!286561 () Bool)

(assert (=> d!66467 m!286561))

(declare-fun m!286563 () Bool)

(assert (=> d!66467 m!286563))

(assert (=> b!236991 d!66467))

(declare-fun b!238008 () Bool)

(declare-fun e!147314 () List!3530)

(assert (=> b!238008 (= e!147314 lt!94458)))

(declare-fun d!66469 () Bool)

(declare-fun e!147313 () Bool)

(assert (=> d!66469 e!147313))

(declare-fun res!109914 () Bool)

(assert (=> d!66469 (=> (not res!109914) (not e!147313))))

(declare-fun lt!95072 () List!3530)

(assert (=> d!66469 (= res!109914 (= (content!491 lt!95072) (set.union (content!491 lt!94426) (content!491 lt!94458))))))

(assert (=> d!66469 (= lt!95072 e!147314)))

(declare-fun c!45602 () Bool)

(assert (=> d!66469 (= c!45602 (is-Nil!3520 lt!94426))))

(assert (=> d!66469 (= (++!891 lt!94426 lt!94458) lt!95072)))

(declare-fun b!238009 () Bool)

(assert (=> b!238009 (= e!147314 (Cons!3520 (h!8917 lt!94426) (++!891 (t!34258 lt!94426) lt!94458)))))

(declare-fun b!238010 () Bool)

(declare-fun res!109915 () Bool)

(assert (=> b!238010 (=> (not res!109915) (not e!147313))))

(assert (=> b!238010 (= res!109915 (= (size!2825 lt!95072) (+ (size!2825 lt!94426) (size!2825 lt!94458))))))

(declare-fun b!238011 () Bool)

(assert (=> b!238011 (= e!147313 (or (not (= lt!94458 Nil!3520)) (= lt!95072 lt!94426)))))

(assert (= (and d!66469 c!45602) b!238008))

(assert (= (and d!66469 (not c!45602)) b!238009))

(assert (= (and d!66469 res!109914) b!238010))

(assert (= (and b!238010 res!109915) b!238011))

(declare-fun m!286565 () Bool)

(assert (=> d!66469 m!286565))

(assert (=> d!66469 m!286039))

(declare-fun m!286567 () Bool)

(assert (=> d!66469 m!286567))

(declare-fun m!286569 () Bool)

(assert (=> b!238009 m!286569))

(declare-fun m!286571 () Bool)

(assert (=> b!238010 m!286571))

(assert (=> b!238010 m!285985))

(assert (=> b!238010 m!285569))

(assert (=> b!236991 d!66469))

(declare-fun d!66471 () Bool)

(assert (=> d!66471 (= (list!1374 (charsOf!317 (h!8919 tokens!465))) (list!1379 (c!45382 (charsOf!317 (h!8919 tokens!465)))))))

(declare-fun bs!25420 () Bool)

(assert (= bs!25420 d!66471))

(declare-fun m!286573 () Bool)

(assert (=> bs!25420 m!286573))

(assert (=> b!236991 d!66471))

(declare-fun d!66473 () Bool)

(declare-fun lt!95073 () BalanceConc!2300)

(assert (=> d!66473 (= (list!1374 lt!95073) (originalCharacters!705 (h!8919 tokens!465)))))

(assert (=> d!66473 (= lt!95073 (dynLambda!1677 (toChars!1220 (transformation!662 (rule!1229 (h!8919 tokens!465)))) (value!23184 (h!8919 tokens!465))))))

(assert (=> d!66473 (= (charsOf!317 (h!8919 tokens!465)) lt!95073)))

(declare-fun b_lambda!6775 () Bool)

(assert (=> (not b_lambda!6775) (not d!66473)))

(assert (=> d!66473 t!34293))

(declare-fun b_and!17747 () Bool)

(assert (= b_and!17741 (and (=> t!34293 result!15280) b_and!17747)))

(assert (=> d!66473 t!34295))

(declare-fun b_and!17749 () Bool)

(assert (= b_and!17743 (and (=> t!34295 result!15282) b_and!17749)))

(assert (=> d!66473 t!34297))

(declare-fun b_and!17751 () Bool)

(assert (= b_and!17745 (and (=> t!34297 result!15284) b_and!17751)))

(declare-fun m!286575 () Bool)

(assert (=> d!66473 m!286575))

(assert (=> d!66473 m!286091))

(assert (=> b!236991 d!66473))

(declare-fun d!66475 () Bool)

(assert (=> d!66475 (= (list!1374 (charsOf!317 separatorToken!170)) (list!1379 (c!45382 (charsOf!317 separatorToken!170))))))

(declare-fun bs!25421 () Bool)

(assert (= bs!25421 d!66475))

(declare-fun m!286577 () Bool)

(assert (=> bs!25421 m!286577))

(assert (=> b!236991 d!66475))

(declare-fun b!238012 () Bool)

(declare-fun e!147316 () List!3530)

(assert (=> b!238012 (= e!147316 lt!94463)))

(declare-fun d!66477 () Bool)

(declare-fun e!147315 () Bool)

(assert (=> d!66477 e!147315))

(declare-fun res!109916 () Bool)

(assert (=> d!66477 (=> (not res!109916) (not e!147315))))

(declare-fun lt!95074 () List!3530)

(assert (=> d!66477 (= res!109916 (= (content!491 lt!95074) (set.union (content!491 lt!94426) (content!491 lt!94463))))))

(assert (=> d!66477 (= lt!95074 e!147316)))

(declare-fun c!45603 () Bool)

(assert (=> d!66477 (= c!45603 (is-Nil!3520 lt!94426))))

(assert (=> d!66477 (= (++!891 lt!94426 lt!94463) lt!95074)))

(declare-fun b!238013 () Bool)

(assert (=> b!238013 (= e!147316 (Cons!3520 (h!8917 lt!94426) (++!891 (t!34258 lt!94426) lt!94463)))))

(declare-fun b!238014 () Bool)

(declare-fun res!109917 () Bool)

(assert (=> b!238014 (=> (not res!109917) (not e!147315))))

(assert (=> b!238014 (= res!109917 (= (size!2825 lt!95074) (+ (size!2825 lt!94426) (size!2825 lt!94463))))))

(declare-fun b!238015 () Bool)

(assert (=> b!238015 (= e!147315 (or (not (= lt!94463 Nil!3520)) (= lt!95074 lt!94426)))))

(assert (= (and d!66477 c!45603) b!238012))

(assert (= (and d!66477 (not c!45603)) b!238013))

(assert (= (and d!66477 res!109916) b!238014))

(assert (= (and b!238014 res!109917) b!238015))

(declare-fun m!286601 () Bool)

(assert (=> d!66477 m!286601))

(assert (=> d!66477 m!286039))

(assert (=> d!66477 m!286475))

(declare-fun m!286607 () Bool)

(assert (=> b!238013 m!286607))

(declare-fun m!286609 () Bool)

(assert (=> b!238014 m!286609))

(assert (=> b!238014 m!285985))

(assert (=> b!238014 m!286483))

(assert (=> b!236991 d!66477))

(declare-fun d!66479 () Bool)

(assert (=> d!66479 (= (++!891 (++!891 lt!94426 lt!94463) lt!94434) (++!891 lt!94426 (++!891 lt!94463 lt!94434)))))

(declare-fun lt!95083 () Unit!4177)

(declare-fun choose!2274 (List!3530 List!3530 List!3530) Unit!4177)

(assert (=> d!66479 (= lt!95083 (choose!2274 lt!94426 lt!94463 lt!94434))))

(assert (=> d!66479 (= (lemmaConcatAssociativity!365 lt!94426 lt!94463 lt!94434) lt!95083)))

(declare-fun bs!25430 () Bool)

(assert (= bs!25430 d!66479))

(assert (=> bs!25430 m!284955))

(assert (=> bs!25430 m!284951))

(assert (=> bs!25430 m!284951))

(assert (=> bs!25430 m!284957))

(declare-fun m!286641 () Bool)

(assert (=> bs!25430 m!286641))

(assert (=> bs!25430 m!284955))

(declare-fun m!286643 () Bool)

(assert (=> bs!25430 m!286643))

(assert (=> b!236991 d!66479))

(declare-fun d!66483 () Bool)

(assert (=> d!66483 (= (list!1374 lt!94457) (list!1379 (c!45382 lt!94457)))))

(declare-fun bs!25431 () Bool)

(assert (= bs!25431 d!66483))

(declare-fun m!286645 () Bool)

(assert (=> bs!25431 m!286645))

(assert (=> b!236991 d!66483))

(declare-fun b!238027 () Bool)

(declare-fun e!147325 () List!3530)

(assert (=> b!238027 (= e!147325 lt!94434)))

(declare-fun d!66485 () Bool)

(declare-fun e!147324 () Bool)

(assert (=> d!66485 e!147324))

(declare-fun res!109918 () Bool)

(assert (=> d!66485 (=> (not res!109918) (not e!147324))))

(declare-fun lt!95084 () List!3530)

(assert (=> d!66485 (= res!109918 (= (content!491 lt!95084) (set.union (content!491 (++!891 lt!94426 lt!94463)) (content!491 lt!94434))))))

(assert (=> d!66485 (= lt!95084 e!147325)))

(declare-fun c!45608 () Bool)

(assert (=> d!66485 (= c!45608 (is-Nil!3520 (++!891 lt!94426 lt!94463)))))

(assert (=> d!66485 (= (++!891 (++!891 lt!94426 lt!94463) lt!94434) lt!95084)))

(declare-fun b!238028 () Bool)

(assert (=> b!238028 (= e!147325 (Cons!3520 (h!8917 (++!891 lt!94426 lt!94463)) (++!891 (t!34258 (++!891 lt!94426 lt!94463)) lt!94434)))))

(declare-fun b!238029 () Bool)

(declare-fun res!109919 () Bool)

(assert (=> b!238029 (=> (not res!109919) (not e!147324))))

(assert (=> b!238029 (= res!109919 (= (size!2825 lt!95084) (+ (size!2825 (++!891 lt!94426 lt!94463)) (size!2825 lt!94434))))))

(declare-fun b!238030 () Bool)

(assert (=> b!238030 (= e!147324 (or (not (= lt!94434 Nil!3520)) (= lt!95084 (++!891 lt!94426 lt!94463))))))

(assert (= (and d!66485 c!45608) b!238027))

(assert (= (and d!66485 (not c!45608)) b!238028))

(assert (= (and d!66485 res!109918) b!238029))

(assert (= (and b!238029 res!109919) b!238030))

(declare-fun m!286647 () Bool)

(assert (=> d!66485 m!286647))

(assert (=> d!66485 m!284951))

(declare-fun m!286649 () Bool)

(assert (=> d!66485 m!286649))

(assert (=> d!66485 m!286041))

(declare-fun m!286651 () Bool)

(assert (=> b!238028 m!286651))

(declare-fun m!286653 () Bool)

(assert (=> b!238029 m!286653))

(assert (=> b!238029 m!284951))

(declare-fun m!286655 () Bool)

(assert (=> b!238029 m!286655))

(assert (=> b!238029 m!286023))

(assert (=> b!236991 d!66485))

(declare-fun bs!25432 () Bool)

(declare-fun b!238038 () Bool)

(assert (= bs!25432 (and b!238038 b!237849)))

(declare-fun lambda!7692 () Int)

(assert (=> bs!25432 (= lambda!7692 lambda!7678)))

(declare-fun bs!25433 () Bool)

(assert (= bs!25433 (and b!238038 d!66389)))

(assert (=> bs!25433 (not (= lambda!7692 lambda!7677))))

(declare-fun bs!25434 () Bool)

(assert (= bs!25434 (and b!238038 b!236970)))

(assert (=> bs!25434 (not (= lambda!7692 lambda!7641))))

(declare-fun bs!25435 () Bool)

(assert (= bs!25435 (and b!238038 b!236969)))

(assert (=> bs!25435 (= lambda!7692 lambda!7642)))

(declare-fun bs!25436 () Bool)

(assert (= bs!25436 (and b!238038 b!237975)))

(assert (=> bs!25436 (= lambda!7692 lambda!7688)))

(declare-fun bs!25437 () Bool)

(assert (= bs!25437 (and b!238038 d!66457)))

(assert (=> bs!25437 (not (= lambda!7692 lambda!7687))))

(declare-fun bs!25438 () Bool)

(assert (= bs!25438 (and b!238038 d!66265)))

(assert (=> bs!25438 (not (= lambda!7692 lambda!7663))))

(declare-fun bs!25440 () Bool)

(assert (= bs!25440 (and b!238038 b!237959)))

(assert (=> bs!25440 (= lambda!7692 lambda!7681)))

(declare-fun b!238041 () Bool)

(declare-fun e!147332 () Bool)

(assert (=> b!238041 (= e!147332 true)))

(declare-fun b!238040 () Bool)

(declare-fun e!147331 () Bool)

(assert (=> b!238040 (= e!147331 e!147332)))

(declare-fun b!238039 () Bool)

(declare-fun e!147330 () Bool)

(assert (=> b!238039 (= e!147330 e!147331)))

(assert (=> b!238038 e!147330))

(assert (= b!238040 b!238041))

(assert (= b!238039 b!238040))

(assert (= (and b!238038 (is-Cons!3521 rules!1920)) b!238039))

(assert (=> b!238041 (< (dynLambda!1670 order!2503 (toValue!1361 (transformation!662 (h!8918 rules!1920)))) (dynLambda!1671 order!2505 lambda!7692))))

(assert (=> b!238041 (< (dynLambda!1672 order!2507 (toChars!1220 (transformation!662 (h!8918 rules!1920)))) (dynLambda!1671 order!2505 lambda!7692))))

(assert (=> b!238038 true))

(declare-fun b!238031 () Bool)

(declare-fun e!147326 () BalanceConc!2300)

(declare-fun call!12401 () BalanceConc!2300)

(assert (=> b!238031 (= e!147326 call!12401)))

(declare-fun b!238032 () Bool)

(assert (=> b!238032 (= e!147326 (charsOf!317 separatorToken!170))))

(declare-fun b!238033 () Bool)

(declare-fun e!147328 () List!3530)

(assert (=> b!238033 (= e!147328 Nil!3520)))

(assert (=> b!238033 (= (print!279 thiss!17480 (singletonSeq!214 (h!8919 (t!34260 tokens!465)))) (printTailRec!242 thiss!17480 (singletonSeq!214 (h!8919 (t!34260 tokens!465))) 0 (BalanceConc!2301 Empty!1146)))))

(declare-fun lt!95085 () Unit!4177)

(declare-fun Unit!4204 () Unit!4177)

(assert (=> b!238033 (= lt!95085 Unit!4204)))

(declare-fun lt!95087 () List!3530)

(declare-fun lt!95088 () Unit!4177)

(declare-fun call!12402 () List!3530)

(assert (=> b!238033 (= lt!95088 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!83 thiss!17480 rules!1920 call!12402 lt!95087))))

(assert (=> b!238033 false))

(declare-fun lt!95089 () Unit!4177)

(declare-fun Unit!4205 () Unit!4177)

(assert (=> b!238033 (= lt!95089 Unit!4205)))

(declare-fun b!238034 () Bool)

(declare-fun call!12398 () List!3530)

(assert (=> b!238034 (= e!147328 (++!891 call!12398 lt!95087))))

(declare-fun bm!12393 () Bool)

(declare-fun call!12399 () BalanceConc!2300)

(assert (=> bm!12393 (= call!12401 call!12399)))

(declare-fun bm!12394 () Bool)

(declare-fun call!12400 () List!3530)

(declare-fun c!45610 () Bool)

(assert (=> bm!12394 (= call!12400 (list!1374 (ite c!45610 call!12399 call!12401)))))

(declare-fun b!238035 () Bool)

(declare-fun e!147327 () List!3530)

(assert (=> b!238035 (= e!147327 call!12398)))

(declare-fun bm!12395 () Bool)

(assert (=> bm!12395 (= call!12399 (charsOf!317 (h!8919 (t!34260 tokens!465))))))

(declare-fun bm!12396 () Bool)

(assert (=> bm!12396 (= call!12398 (++!891 call!12400 (ite c!45610 lt!95087 call!12402)))))

(declare-fun bm!12397 () Bool)

(assert (=> bm!12397 (= call!12402 (list!1374 e!147326))))

(declare-fun c!45609 () Bool)

(declare-fun c!45611 () Bool)

(assert (=> bm!12397 (= c!45609 c!45611)))

(declare-fun b!238037 () Bool)

(declare-fun lt!95086 () Option!678)

(assert (=> b!238037 (= c!45611 (and (is-Some!677 lt!95086) (not (= (_1!2144 (v!14412 lt!95086)) (h!8919 (t!34260 tokens!465))))))))

(assert (=> b!238037 (= e!147327 e!147328)))

(declare-fun e!147329 () List!3530)

(assert (=> b!238038 (= e!147329 e!147327)))

(declare-fun lt!95090 () Unit!4177)

(assert (=> b!238038 (= lt!95090 (forallContained!229 (t!34260 tokens!465) lambda!7692 (h!8919 (t!34260 tokens!465))))))

(assert (=> b!238038 (= lt!95087 (printWithSeparatorTokenWhenNeededList!241 thiss!17480 rules!1920 (t!34260 (t!34260 tokens!465)) separatorToken!170))))

(assert (=> b!238038 (= lt!95086 (maxPrefix!278 thiss!17480 rules!1920 (++!891 (list!1374 (charsOf!317 (h!8919 (t!34260 tokens!465)))) lt!95087)))))

(assert (=> b!238038 (= c!45610 (and (is-Some!677 lt!95086) (= (_1!2144 (v!14412 lt!95086)) (h!8919 (t!34260 tokens!465)))))))

(declare-fun d!66487 () Bool)

(declare-fun c!45612 () Bool)

(assert (=> d!66487 (= c!45612 (is-Cons!3522 (t!34260 tokens!465)))))

(assert (=> d!66487 (= (printWithSeparatorTokenWhenNeededList!241 thiss!17480 rules!1920 (t!34260 tokens!465) separatorToken!170) e!147329)))

(declare-fun b!238036 () Bool)

(assert (=> b!238036 (= e!147329 Nil!3520)))

(assert (= (and d!66487 c!45612) b!238038))

(assert (= (and d!66487 (not c!45612)) b!238036))

(assert (= (and b!238038 c!45610) b!238035))

(assert (= (and b!238038 (not c!45610)) b!238037))

(assert (= (and b!238037 c!45611) b!238034))

(assert (= (and b!238037 (not c!45611)) b!238033))

(assert (= (or b!238034 b!238033) bm!12393))

(assert (= (or b!238034 b!238033) bm!12397))

(assert (= (and bm!12397 c!45609) b!238032))

(assert (= (and bm!12397 (not c!45609)) b!238031))

(assert (= (or b!238035 bm!12393) bm!12395))

(assert (= (or b!238035 b!238034) bm!12394))

(assert (= (or b!238035 b!238034) bm!12396))

(declare-fun m!286697 () Bool)

(assert (=> bm!12394 m!286697))

(declare-fun m!286699 () Bool)

(assert (=> bm!12395 m!286699))

(declare-fun m!286701 () Bool)

(assert (=> b!238033 m!286701))

(assert (=> b!238033 m!286701))

(declare-fun m!286703 () Bool)

(assert (=> b!238033 m!286703))

(assert (=> b!238033 m!286701))

(declare-fun m!286705 () Bool)

(assert (=> b!238033 m!286705))

(declare-fun m!286707 () Bool)

(assert (=> b!238033 m!286707))

(declare-fun m!286709 () Bool)

(assert (=> bm!12397 m!286709))

(declare-fun m!286711 () Bool)

(assert (=> b!238038 m!286711))

(assert (=> b!238038 m!286699))

(assert (=> b!238038 m!286699))

(declare-fun m!286713 () Bool)

(assert (=> b!238038 m!286713))

(declare-fun m!286715 () Bool)

(assert (=> b!238038 m!286715))

(declare-fun m!286717 () Bool)

(assert (=> b!238038 m!286717))

(declare-fun m!286719 () Bool)

(assert (=> b!238038 m!286719))

(assert (=> b!238038 m!286713))

(assert (=> b!238038 m!286717))

(declare-fun m!286721 () Bool)

(assert (=> bm!12396 m!286721))

(declare-fun m!286723 () Bool)

(assert (=> b!238034 m!286723))

(assert (=> b!238032 m!284947))

(assert (=> b!236991 d!66487))

(declare-fun d!66501 () Bool)

(declare-fun res!109930 () Bool)

(declare-fun e!147344 () Bool)

(assert (=> d!66501 (=> res!109930 e!147344)))

(assert (=> d!66501 (= res!109930 (not (is-Cons!3521 rules!1920)))))

(assert (=> d!66501 (= (sepAndNonSepRulesDisjointChars!251 rules!1920 rules!1920) e!147344)))

(declare-fun b!238058 () Bool)

(declare-fun e!147345 () Bool)

(assert (=> b!238058 (= e!147344 e!147345)))

(declare-fun res!109931 () Bool)

(assert (=> b!238058 (=> (not res!109931) (not e!147345))))

(declare-fun ruleDisjointCharsFromAllFromOtherType!85 (Rule!1124 List!3531) Bool)

(assert (=> b!238058 (= res!109931 (ruleDisjointCharsFromAllFromOtherType!85 (h!8918 rules!1920) rules!1920))))

(declare-fun b!238059 () Bool)

(assert (=> b!238059 (= e!147345 (sepAndNonSepRulesDisjointChars!251 rules!1920 (t!34259 rules!1920)))))

(assert (= (and d!66501 (not res!109930)) b!238058))

(assert (= (and b!238058 res!109931) b!238059))

(declare-fun m!286743 () Bool)

(assert (=> b!238058 m!286743))

(declare-fun m!286745 () Bool)

(assert (=> b!238059 m!286745))

(assert (=> b!236990 d!66501))

(declare-fun d!66507 () Bool)

(declare-fun isEmpty!2098 (Option!680) Bool)

(assert (=> d!66507 (= (isDefined!531 (maxPrefixZipperSequence!241 thiss!17480 rules!1920 (seqFromList!701 (originalCharacters!705 (h!8919 tokens!465))))) (not (isEmpty!2098 (maxPrefixZipperSequence!241 thiss!17480 rules!1920 (seqFromList!701 (originalCharacters!705 (h!8919 tokens!465)))))))))

(declare-fun bs!25443 () Bool)

(assert (= bs!25443 d!66507))

(assert (=> bs!25443 m!284907))

(declare-fun m!286747 () Bool)

(assert (=> bs!25443 m!286747))

(assert (=> b!236969 d!66507))

(declare-fun call!12406 () Option!680)

(declare-fun bm!12401 () Bool)

(declare-fun maxPrefixOneRuleZipperSequence!90 (LexerInterface!548 Rule!1124 BalanceConc!2300) Option!680)

(assert (=> bm!12401 (= call!12406 (maxPrefixOneRuleZipperSequence!90 thiss!17480 (h!8918 rules!1920) (seqFromList!701 (originalCharacters!705 (h!8919 tokens!465)))))))

(declare-fun b!238104 () Bool)

(declare-fun e!147384 () Bool)

(declare-fun e!147380 () Bool)

(assert (=> b!238104 (= e!147384 e!147380)))

(declare-fun res!109968 () Bool)

(assert (=> b!238104 (=> res!109968 e!147380)))

(declare-fun lt!95127 () Option!680)

(assert (=> b!238104 (= res!109968 (not (isDefined!531 lt!95127)))))

(declare-fun b!238105 () Bool)

(declare-fun e!147381 () Bool)

(assert (=> b!238105 (= e!147380 e!147381)))

(declare-fun res!109970 () Bool)

(assert (=> b!238105 (=> (not res!109970) (not e!147381))))

(declare-fun get!1141 (Option!680) tuple2!3862)

(assert (=> b!238105 (= res!109970 (= (_1!2147 (get!1141 lt!95127)) (_1!2144 (get!1136 (maxPrefix!278 thiss!17480 rules!1920 (list!1374 (seqFromList!701 (originalCharacters!705 (h!8919 tokens!465)))))))))))

(declare-fun e!147382 () Bool)

(declare-fun b!238106 () Bool)

(declare-fun maxPrefixZipper!89 (LexerInterface!548 List!3531 List!3530) Option!678)

(assert (=> b!238106 (= e!147382 (= (list!1374 (_2!2147 (get!1141 lt!95127))) (_2!2144 (get!1136 (maxPrefixZipper!89 thiss!17480 rules!1920 (list!1374 (seqFromList!701 (originalCharacters!705 (h!8919 tokens!465)))))))))))

(declare-fun b!238107 () Bool)

(declare-fun e!147383 () Option!680)

(declare-fun lt!95128 () Option!680)

(declare-fun lt!95133 () Option!680)

(assert (=> b!238107 (= e!147383 (ite (and (is-None!679 lt!95128) (is-None!679 lt!95133)) None!679 (ite (is-None!679 lt!95133) lt!95128 (ite (is-None!679 lt!95128) lt!95133 (ite (>= (size!2818 (_1!2147 (v!14414 lt!95128))) (size!2818 (_1!2147 (v!14414 lt!95133)))) lt!95128 lt!95133)))))))

(assert (=> b!238107 (= lt!95128 call!12406)))

(assert (=> b!238107 (= lt!95133 (maxPrefixZipperSequence!241 thiss!17480 (t!34259 rules!1920) (seqFromList!701 (originalCharacters!705 (h!8919 tokens!465)))))))

(declare-fun b!238108 () Bool)

(declare-fun res!109967 () Bool)

(assert (=> b!238108 (=> (not res!109967) (not e!147384))))

(declare-fun e!147385 () Bool)

(assert (=> b!238108 (= res!109967 e!147385)))

(declare-fun res!109969 () Bool)

(assert (=> b!238108 (=> res!109969 e!147385)))

(assert (=> b!238108 (= res!109969 (not (isDefined!531 lt!95127)))))

(declare-fun b!238110 () Bool)

(assert (=> b!238110 (= e!147385 e!147382)))

(declare-fun res!109971 () Bool)

(assert (=> b!238110 (=> (not res!109971) (not e!147382))))

(assert (=> b!238110 (= res!109971 (= (_1!2147 (get!1141 lt!95127)) (_1!2144 (get!1136 (maxPrefixZipper!89 thiss!17480 rules!1920 (list!1374 (seqFromList!701 (originalCharacters!705 (h!8919 tokens!465)))))))))))

(declare-fun b!238111 () Bool)

(assert (=> b!238111 (= e!147383 call!12406)))

(declare-fun d!66509 () Bool)

(assert (=> d!66509 e!147384))

(declare-fun res!109972 () Bool)

(assert (=> d!66509 (=> (not res!109972) (not e!147384))))

(assert (=> d!66509 (= res!109972 (= (isDefined!531 lt!95127) (isDefined!529 (maxPrefixZipper!89 thiss!17480 rules!1920 (list!1374 (seqFromList!701 (originalCharacters!705 (h!8919 tokens!465))))))))))

(assert (=> d!66509 (= lt!95127 e!147383)))

(declare-fun c!45620 () Bool)

(assert (=> d!66509 (= c!45620 (and (is-Cons!3521 rules!1920) (is-Nil!3521 (t!34259 rules!1920))))))

(declare-fun lt!95130 () Unit!4177)

(declare-fun lt!95132 () Unit!4177)

(assert (=> d!66509 (= lt!95130 lt!95132)))

(declare-fun lt!95131 () List!3530)

(declare-fun lt!95129 () List!3530)

(assert (=> d!66509 (isPrefix!358 lt!95131 lt!95129)))

(assert (=> d!66509 (= lt!95132 (lemmaIsPrefixRefl!184 lt!95131 lt!95129))))

(assert (=> d!66509 (= lt!95129 (list!1374 (seqFromList!701 (originalCharacters!705 (h!8919 tokens!465)))))))

(assert (=> d!66509 (= lt!95131 (list!1374 (seqFromList!701 (originalCharacters!705 (h!8919 tokens!465)))))))

(assert (=> d!66509 (rulesValidInductive!173 thiss!17480 rules!1920)))

(assert (=> d!66509 (= (maxPrefixZipperSequence!241 thiss!17480 rules!1920 (seqFromList!701 (originalCharacters!705 (h!8919 tokens!465)))) lt!95127)))

(declare-fun b!238109 () Bool)

(assert (=> b!238109 (= e!147381 (= (list!1374 (_2!2147 (get!1141 lt!95127))) (_2!2144 (get!1136 (maxPrefix!278 thiss!17480 rules!1920 (list!1374 (seqFromList!701 (originalCharacters!705 (h!8919 tokens!465)))))))))))

(assert (= (and d!66509 c!45620) b!238111))

(assert (= (and d!66509 (not c!45620)) b!238107))

(assert (= (or b!238111 b!238107) bm!12401))

(assert (= (and d!66509 res!109972) b!238108))

(assert (= (and b!238108 (not res!109969)) b!238110))

(assert (= (and b!238110 res!109971) b!238106))

(assert (= (and b!238108 res!109967) b!238104))

(assert (= (and b!238104 (not res!109968)) b!238105))

(assert (= (and b!238105 res!109970) b!238109))

(assert (=> bm!12401 m!284905))

(declare-fun m!286841 () Bool)

(assert (=> bm!12401 m!286841))

(declare-fun m!286843 () Bool)

(assert (=> b!238108 m!286843))

(declare-fun m!286845 () Bool)

(assert (=> b!238106 m!286845))

(declare-fun m!286847 () Bool)

(assert (=> b!238106 m!286847))

(assert (=> b!238106 m!286847))

(declare-fun m!286849 () Bool)

(assert (=> b!238106 m!286849))

(declare-fun m!286851 () Bool)

(assert (=> b!238106 m!286851))

(declare-fun m!286853 () Bool)

(assert (=> b!238106 m!286853))

(assert (=> b!238106 m!284905))

(assert (=> b!238106 m!286845))

(assert (=> d!66509 m!286847))

(declare-fun m!286855 () Bool)

(assert (=> d!66509 m!286855))

(assert (=> d!66509 m!284905))

(assert (=> d!66509 m!286845))

(assert (=> d!66509 m!285585))

(assert (=> d!66509 m!286843))

(declare-fun m!286857 () Bool)

(assert (=> d!66509 m!286857))

(declare-fun m!286859 () Bool)

(assert (=> d!66509 m!286859))

(assert (=> d!66509 m!286845))

(assert (=> d!66509 m!286847))

(assert (=> b!238110 m!286853))

(assert (=> b!238110 m!284905))

(assert (=> b!238110 m!286845))

(assert (=> b!238110 m!286845))

(assert (=> b!238110 m!286847))

(assert (=> b!238110 m!286847))

(assert (=> b!238110 m!286849))

(assert (=> b!238109 m!286845))

(declare-fun m!286861 () Bool)

(assert (=> b!238109 m!286861))

(assert (=> b!238109 m!286851))

(assert (=> b!238109 m!286861))

(declare-fun m!286863 () Bool)

(assert (=> b!238109 m!286863))

(assert (=> b!238109 m!286853))

(assert (=> b!238109 m!284905))

(assert (=> b!238109 m!286845))

(assert (=> b!238105 m!286853))

(assert (=> b!238105 m!284905))

(assert (=> b!238105 m!286845))

(assert (=> b!238105 m!286845))

(assert (=> b!238105 m!286861))

(assert (=> b!238105 m!286861))

(assert (=> b!238105 m!286863))

(assert (=> b!238107 m!284905))

(declare-fun m!286865 () Bool)

(assert (=> b!238107 m!286865))

(assert (=> b!238104 m!286843))

(assert (=> b!236969 d!66509))

(declare-fun d!66531 () Bool)

(declare-fun fromListB!261 (List!3530) BalanceConc!2300)

(assert (=> d!66531 (= (seqFromList!701 (originalCharacters!705 (h!8919 tokens!465))) (fromListB!261 (originalCharacters!705 (h!8919 tokens!465))))))

(declare-fun bs!25448 () Bool)

(assert (= bs!25448 d!66531))

(declare-fun m!286867 () Bool)

(assert (=> bs!25448 m!286867))

(assert (=> b!236969 d!66531))

(declare-fun d!66533 () Bool)

(assert (=> d!66533 (dynLambda!1676 lambda!7642 (h!8919 tokens!465))))

(declare-fun lt!95134 () Unit!4177)

(assert (=> d!66533 (= lt!95134 (choose!2267 tokens!465 lambda!7642 (h!8919 tokens!465)))))

(declare-fun e!147386 () Bool)

(assert (=> d!66533 e!147386))

(declare-fun res!109973 () Bool)

(assert (=> d!66533 (=> (not res!109973) (not e!147386))))

(assert (=> d!66533 (= res!109973 (forall!806 tokens!465 lambda!7642))))

(assert (=> d!66533 (= (forallContained!229 tokens!465 lambda!7642 (h!8919 tokens!465)) lt!95134)))

(declare-fun b!238112 () Bool)

(assert (=> b!238112 (= e!147386 (contains!650 tokens!465 (h!8919 tokens!465)))))

(assert (= (and d!66533 res!109973) b!238112))

(declare-fun b_lambda!6781 () Bool)

(assert (=> (not b_lambda!6781) (not d!66533)))

(declare-fun m!286869 () Bool)

(assert (=> d!66533 m!286869))

(declare-fun m!286871 () Bool)

(assert (=> d!66533 m!286871))

(assert (=> d!66533 m!285873))

(declare-fun m!286873 () Bool)

(assert (=> b!238112 m!286873))

(assert (=> b!236969 d!66533))

(declare-fun bs!25450 () Bool)

(declare-fun d!66535 () Bool)

(assert (= bs!25450 (and d!66535 b!237849)))

(declare-fun lambda!7697 () Int)

(assert (=> bs!25450 (= lambda!7697 lambda!7678)))

(declare-fun bs!25451 () Bool)

(assert (= bs!25451 (and d!66535 b!238038)))

(assert (=> bs!25451 (= lambda!7697 lambda!7692)))

(declare-fun bs!25452 () Bool)

(assert (= bs!25452 (and d!66535 d!66389)))

(assert (=> bs!25452 (not (= lambda!7697 lambda!7677))))

(declare-fun bs!25453 () Bool)

(assert (= bs!25453 (and d!66535 b!236970)))

(assert (=> bs!25453 (not (= lambda!7697 lambda!7641))))

(declare-fun bs!25454 () Bool)

(assert (= bs!25454 (and d!66535 b!236969)))

(assert (=> bs!25454 (= lambda!7697 lambda!7642)))

(declare-fun bs!25455 () Bool)

(assert (= bs!25455 (and d!66535 b!237975)))

(assert (=> bs!25455 (= lambda!7697 lambda!7688)))

(declare-fun bs!25456 () Bool)

(assert (= bs!25456 (and d!66535 d!66457)))

(assert (=> bs!25456 (not (= lambda!7697 lambda!7687))))

(declare-fun bs!25457 () Bool)

(assert (= bs!25457 (and d!66535 d!66265)))

(assert (=> bs!25457 (not (= lambda!7697 lambda!7663))))

(declare-fun bs!25458 () Bool)

(assert (= bs!25458 (and d!66535 b!237959)))

(assert (=> bs!25458 (= lambda!7697 lambda!7681)))

(declare-fun b!238118 () Bool)

(declare-fun e!147392 () Bool)

(assert (=> b!238118 (= e!147392 true)))

(declare-fun b!238117 () Bool)

(declare-fun e!147391 () Bool)

(assert (=> b!238117 (= e!147391 e!147392)))

(declare-fun b!238116 () Bool)

(declare-fun e!147390 () Bool)

(assert (=> b!238116 (= e!147390 e!147391)))

(assert (=> d!66535 e!147390))

(assert (= b!238117 b!238118))

(assert (= b!238116 b!238117))

(assert (= (and d!66535 (is-Cons!3521 rules!1920)) b!238116))

(assert (=> b!238118 (< (dynLambda!1670 order!2503 (toValue!1361 (transformation!662 (h!8918 rules!1920)))) (dynLambda!1671 order!2505 lambda!7697))))

(assert (=> b!238118 (< (dynLambda!1672 order!2507 (toChars!1220 (transformation!662 (h!8918 rules!1920)))) (dynLambda!1671 order!2505 lambda!7697))))

(assert (=> d!66535 true))

(declare-fun e!147389 () Bool)

(assert (=> d!66535 e!147389))

(declare-fun res!109976 () Bool)

(assert (=> d!66535 (=> (not res!109976) (not e!147389))))

(declare-fun lt!95140 () Bool)

(assert (=> d!66535 (= res!109976 (= lt!95140 (forall!806 (list!1375 lt!94428) lambda!7697)))))

(declare-fun forall!808 (BalanceConc!2302 Int) Bool)

(assert (=> d!66535 (= lt!95140 (forall!808 lt!94428 lambda!7697))))

(assert (=> d!66535 (not (isEmpty!2086 rules!1920))))

(assert (=> d!66535 (= (rulesProduceEachTokenIndividually!340 thiss!17480 rules!1920 lt!94428) lt!95140)))

(declare-fun b!238115 () Bool)

(declare-fun rulesProduceEachTokenIndividuallyList!190 (LexerInterface!548 List!3531 List!3532) Bool)

(assert (=> b!238115 (= e!147389 (= lt!95140 (rulesProduceEachTokenIndividuallyList!190 thiss!17480 rules!1920 (list!1375 lt!94428))))))

(assert (= (and d!66535 res!109976) b!238115))

(assert (=> d!66535 m!286285))

(assert (=> d!66535 m!286285))

(declare-fun m!286877 () Bool)

(assert (=> d!66535 m!286877))

(declare-fun m!286879 () Bool)

(assert (=> d!66535 m!286879))

(assert (=> d!66535 m!285003))

(assert (=> b!238115 m!286285))

(assert (=> b!238115 m!286285))

(declare-fun m!286881 () Bool)

(assert (=> b!238115 m!286881))

(assert (=> b!236946 d!66535))

(declare-fun d!66539 () Bool)

(assert (=> d!66539 (= (seqFromList!702 tokens!465) (fromListB!259 tokens!465))))

(declare-fun bs!25459 () Bool)

(assert (= bs!25459 d!66539))

(declare-fun m!286883 () Bool)

(assert (=> bs!25459 m!286883))

(assert (=> b!236946 d!66539))

(declare-fun d!66541 () Bool)

(declare-fun res!109979 () Bool)

(declare-fun e!147395 () Bool)

(assert (=> d!66541 (=> (not res!109979) (not e!147395))))

(declare-fun rulesValid!193 (LexerInterface!548 List!3531) Bool)

(assert (=> d!66541 (= res!109979 (rulesValid!193 thiss!17480 rules!1920))))

(assert (=> d!66541 (= (rulesInvariant!514 thiss!17480 rules!1920) e!147395)))

(declare-fun b!238121 () Bool)

(declare-datatypes ((List!3538 0))(
  ( (Nil!3528) (Cons!3528 (h!8925 String!4502) (t!34356 List!3538)) )
))
(declare-fun noDuplicateTag!193 (LexerInterface!548 List!3531 List!3538) Bool)

(assert (=> b!238121 (= e!147395 (noDuplicateTag!193 thiss!17480 rules!1920 Nil!3528))))

(assert (= (and d!66541 res!109979) b!238121))

(declare-fun m!286885 () Bool)

(assert (=> d!66541 m!286885))

(declare-fun m!286887 () Bool)

(assert (=> b!238121 m!286887))

(assert (=> b!236989 d!66541))

(declare-fun d!66543 () Bool)

(assert (=> d!66543 (= (isEmpty!2087 (_2!2144 lt!94453)) (is-Nil!3520 (_2!2144 lt!94453)))))

(assert (=> b!236988 d!66543))

(declare-fun b!238122 () Bool)

(declare-fun e!147398 () Bool)

(assert (=> b!238122 (= e!147398 (matchR!224 (derivativeStep!119 (regex!662 (rule!1229 (h!8919 tokens!465))) (head!820 lt!94426)) (tail!435 lt!94426)))))

(declare-fun b!238123 () Bool)

(assert (=> b!238123 (= e!147398 (nullable!153 (regex!662 (rule!1229 (h!8919 tokens!465)))))))

(declare-fun b!238124 () Bool)

(declare-fun e!147396 () Bool)

(declare-fun e!147400 () Bool)

(assert (=> b!238124 (= e!147396 e!147400)))

(declare-fun res!109984 () Bool)

(assert (=> b!238124 (=> (not res!109984) (not e!147400))))

(declare-fun lt!95141 () Bool)

(assert (=> b!238124 (= res!109984 (not lt!95141))))

(declare-fun b!238125 () Bool)

(declare-fun res!109983 () Bool)

(assert (=> b!238125 (=> res!109983 e!147396)))

(declare-fun e!147401 () Bool)

(assert (=> b!238125 (= res!109983 e!147401)))

(declare-fun res!109986 () Bool)

(assert (=> b!238125 (=> (not res!109986) (not e!147401))))

(assert (=> b!238125 (= res!109986 lt!95141)))

(declare-fun d!66545 () Bool)

(declare-fun e!147399 () Bool)

(assert (=> d!66545 e!147399))

(declare-fun c!45622 () Bool)

(assert (=> d!66545 (= c!45622 (is-EmptyExpr!886 (regex!662 (rule!1229 (h!8919 tokens!465)))))))

(assert (=> d!66545 (= lt!95141 e!147398)))

(declare-fun c!45623 () Bool)

(assert (=> d!66545 (= c!45623 (isEmpty!2087 lt!94426))))

(assert (=> d!66545 (validRegex!228 (regex!662 (rule!1229 (h!8919 tokens!465))))))

(assert (=> d!66545 (= (matchR!224 (regex!662 (rule!1229 (h!8919 tokens!465))) lt!94426) lt!95141)))

(declare-fun b!238126 () Bool)

(declare-fun res!109982 () Bool)

(assert (=> b!238126 (=> (not res!109982) (not e!147401))))

(assert (=> b!238126 (= res!109982 (isEmpty!2087 (tail!435 lt!94426)))))

(declare-fun b!238127 () Bool)

(assert (=> b!238127 (= e!147401 (= (head!820 lt!94426) (c!45383 (regex!662 (rule!1229 (h!8919 tokens!465))))))))

(declare-fun b!238128 () Bool)

(declare-fun e!147397 () Bool)

(assert (=> b!238128 (= e!147400 e!147397)))

(declare-fun res!109980 () Bool)

(assert (=> b!238128 (=> res!109980 e!147397)))

(declare-fun call!12407 () Bool)

(assert (=> b!238128 (= res!109980 call!12407)))

(declare-fun bm!12402 () Bool)

(assert (=> bm!12402 (= call!12407 (isEmpty!2087 lt!94426))))

(declare-fun b!238129 () Bool)

(declare-fun res!109981 () Bool)

(assert (=> b!238129 (=> res!109981 e!147397)))

(assert (=> b!238129 (= res!109981 (not (isEmpty!2087 (tail!435 lt!94426))))))

(declare-fun b!238130 () Bool)

(declare-fun res!109985 () Bool)

(assert (=> b!238130 (=> res!109985 e!147396)))

(assert (=> b!238130 (= res!109985 (not (is-ElementMatch!886 (regex!662 (rule!1229 (h!8919 tokens!465))))))))

(declare-fun e!147402 () Bool)

(assert (=> b!238130 (= e!147402 e!147396)))

(declare-fun b!238131 () Bool)

(assert (=> b!238131 (= e!147399 (= lt!95141 call!12407))))

(declare-fun b!238132 () Bool)

(assert (=> b!238132 (= e!147397 (not (= (head!820 lt!94426) (c!45383 (regex!662 (rule!1229 (h!8919 tokens!465)))))))))

(declare-fun b!238133 () Bool)

(assert (=> b!238133 (= e!147402 (not lt!95141))))

(declare-fun b!238134 () Bool)

(assert (=> b!238134 (= e!147399 e!147402)))

(declare-fun c!45621 () Bool)

(assert (=> b!238134 (= c!45621 (is-EmptyLang!886 (regex!662 (rule!1229 (h!8919 tokens!465)))))))

(declare-fun b!238135 () Bool)

(declare-fun res!109987 () Bool)

(assert (=> b!238135 (=> (not res!109987) (not e!147401))))

(assert (=> b!238135 (= res!109987 (not call!12407))))

(assert (= (and d!66545 c!45623) b!238123))

(assert (= (and d!66545 (not c!45623)) b!238122))

(assert (= (and d!66545 c!45622) b!238131))

(assert (= (and d!66545 (not c!45622)) b!238134))

(assert (= (and b!238134 c!45621) b!238133))

(assert (= (and b!238134 (not c!45621)) b!238130))

(assert (= (and b!238130 (not res!109985)) b!238125))

(assert (= (and b!238125 res!109986) b!238135))

(assert (= (and b!238135 res!109987) b!238126))

(assert (= (and b!238126 res!109982) b!238127))

(assert (= (and b!238125 (not res!109983)) b!238124))

(assert (= (and b!238124 res!109984) b!238128))

(assert (= (and b!238128 (not res!109980)) b!238129))

(assert (= (and b!238129 (not res!109981)) b!238132))

(assert (= (or b!238131 b!238128 b!238135) bm!12402))

(assert (=> b!238126 m!285977))

(assert (=> b!238126 m!285977))

(declare-fun m!286889 () Bool)

(assert (=> b!238126 m!286889))

(declare-fun m!286891 () Bool)

(assert (=> bm!12402 m!286891))

(declare-fun m!286893 () Bool)

(assert (=> b!238123 m!286893))

(assert (=> d!66545 m!286891))

(declare-fun m!286895 () Bool)

(assert (=> d!66545 m!286895))

(assert (=> b!238127 m!285987))

(assert (=> b!238122 m!285987))

(assert (=> b!238122 m!285987))

(declare-fun m!286897 () Bool)

(assert (=> b!238122 m!286897))

(assert (=> b!238122 m!285977))

(assert (=> b!238122 m!286897))

(assert (=> b!238122 m!285977))

(declare-fun m!286899 () Bool)

(assert (=> b!238122 m!286899))

(assert (=> b!238129 m!285977))

(assert (=> b!238129 m!285977))

(assert (=> b!238129 m!286889))

(assert (=> b!238132 m!285987))

(assert (=> b!236967 d!66545))

(declare-fun d!66547 () Bool)

(declare-fun lt!95143 () Bool)

(declare-fun e!147403 () Bool)

(assert (=> d!66547 (= lt!95143 e!147403)))

(declare-fun res!109988 () Bool)

(assert (=> d!66547 (=> (not res!109988) (not e!147403))))

(assert (=> d!66547 (= res!109988 (= (list!1375 (_1!2145 (lex!348 thiss!17480 rules!1920 (print!279 thiss!17480 (singletonSeq!214 (h!8919 tokens!465)))))) (list!1375 (singletonSeq!214 (h!8919 tokens!465)))))))

(declare-fun e!147404 () Bool)

(assert (=> d!66547 (= lt!95143 e!147404)))

(declare-fun res!109989 () Bool)

(assert (=> d!66547 (=> (not res!109989) (not e!147404))))

(declare-fun lt!95142 () tuple2!3858)

(assert (=> d!66547 (= res!109989 (= (size!2819 (_1!2145 lt!95142)) 1))))

(assert (=> d!66547 (= lt!95142 (lex!348 thiss!17480 rules!1920 (print!279 thiss!17480 (singletonSeq!214 (h!8919 tokens!465)))))))

(assert (=> d!66547 (not (isEmpty!2086 rules!1920))))

(assert (=> d!66547 (= (rulesProduceIndividualToken!297 thiss!17480 rules!1920 (h!8919 tokens!465)) lt!95143)))

(declare-fun b!238136 () Bool)

(declare-fun res!109990 () Bool)

(assert (=> b!238136 (=> (not res!109990) (not e!147404))))

(assert (=> b!238136 (= res!109990 (= (apply!653 (_1!2145 lt!95142) 0) (h!8919 tokens!465)))))

(declare-fun b!238137 () Bool)

(assert (=> b!238137 (= e!147404 (isEmpty!2084 (_2!2145 lt!95142)))))

(declare-fun b!238138 () Bool)

(assert (=> b!238138 (= e!147403 (isEmpty!2084 (_2!2145 (lex!348 thiss!17480 rules!1920 (print!279 thiss!17480 (singletonSeq!214 (h!8919 tokens!465)))))))))

(assert (= (and d!66547 res!109989) b!238136))

(assert (= (and b!238136 res!109990) b!238137))

(assert (= (and d!66547 res!109988) b!238138))

(assert (=> d!66547 m!284979))

(declare-fun m!286901 () Bool)

(assert (=> d!66547 m!286901))

(assert (=> d!66547 m!284979))

(assert (=> d!66547 m!286453))

(assert (=> d!66547 m!284979))

(assert (=> d!66547 m!286453))

(declare-fun m!286903 () Bool)

(assert (=> d!66547 m!286903))

(assert (=> d!66547 m!285003))

(declare-fun m!286905 () Bool)

(assert (=> d!66547 m!286905))

(declare-fun m!286907 () Bool)

(assert (=> d!66547 m!286907))

(declare-fun m!286909 () Bool)

(assert (=> b!238136 m!286909))

(declare-fun m!286911 () Bool)

(assert (=> b!238137 m!286911))

(assert (=> b!238138 m!284979))

(assert (=> b!238138 m!284979))

(assert (=> b!238138 m!286453))

(assert (=> b!238138 m!286453))

(assert (=> b!238138 m!286903))

(declare-fun m!286913 () Bool)

(assert (=> b!238138 m!286913))

(assert (=> b!236966 d!66547))

(declare-fun d!66549 () Bool)

(declare-fun lt!95146 () Bool)

(assert (=> d!66549 (= lt!95146 (isEmpty!2085 (list!1375 (_1!2145 (lex!348 thiss!17480 rules!1920 (seqFromList!701 lt!94426))))))))

(declare-fun isEmpty!2100 (Conc!1147) Bool)

(assert (=> d!66549 (= lt!95146 (isEmpty!2100 (c!45384 (_1!2145 (lex!348 thiss!17480 rules!1920 (seqFromList!701 lt!94426))))))))

(assert (=> d!66549 (= (isEmpty!2083 (_1!2145 (lex!348 thiss!17480 rules!1920 (seqFromList!701 lt!94426)))) lt!95146)))

(declare-fun bs!25460 () Bool)

(assert (= bs!25460 d!66549))

(declare-fun m!286915 () Bool)

(assert (=> bs!25460 m!286915))

(assert (=> bs!25460 m!286915))

(declare-fun m!286917 () Bool)

(assert (=> bs!25460 m!286917))

(declare-fun m!286919 () Bool)

(assert (=> bs!25460 m!286919))

(assert (=> b!236945 d!66549))

(declare-fun d!66551 () Bool)

(declare-fun e!147405 () Bool)

(assert (=> d!66551 e!147405))

(declare-fun res!109992 () Bool)

(assert (=> d!66551 (=> (not res!109992) (not e!147405))))

(declare-fun e!147406 () Bool)

(assert (=> d!66551 (= res!109992 e!147406)))

(declare-fun c!45624 () Bool)

(declare-fun lt!95147 () tuple2!3858)

(assert (=> d!66551 (= c!45624 (> (size!2819 (_1!2145 lt!95147)) 0))))

(assert (=> d!66551 (= lt!95147 (lexTailRecV2!147 thiss!17480 rules!1920 (seqFromList!701 lt!94426) (BalanceConc!2301 Empty!1146) (seqFromList!701 lt!94426) (BalanceConc!2303 Empty!1147)))))

(assert (=> d!66551 (= (lex!348 thiss!17480 rules!1920 (seqFromList!701 lt!94426)) lt!95147)))

(declare-fun b!238139 () Bool)

(declare-fun e!147407 () Bool)

(assert (=> b!238139 (= e!147406 e!147407)))

(declare-fun res!109993 () Bool)

(assert (=> b!238139 (= res!109993 (< (size!2823 (_2!2145 lt!95147)) (size!2823 (seqFromList!701 lt!94426))))))

(assert (=> b!238139 (=> (not res!109993) (not e!147407))))

(declare-fun b!238140 () Bool)

(assert (=> b!238140 (= e!147405 (= (list!1374 (_2!2145 lt!95147)) (_2!2146 (lexList!176 thiss!17480 rules!1920 (list!1374 (seqFromList!701 lt!94426))))))))

(declare-fun b!238141 () Bool)

(assert (=> b!238141 (= e!147406 (= (_2!2145 lt!95147) (seqFromList!701 lt!94426)))))

(declare-fun b!238142 () Bool)

(assert (=> b!238142 (= e!147407 (not (isEmpty!2083 (_1!2145 lt!95147))))))

(declare-fun b!238143 () Bool)

(declare-fun res!109991 () Bool)

(assert (=> b!238143 (=> (not res!109991) (not e!147405))))

(assert (=> b!238143 (= res!109991 (= (list!1375 (_1!2145 lt!95147)) (_1!2146 (lexList!176 thiss!17480 rules!1920 (list!1374 (seqFromList!701 lt!94426))))))))

(assert (= (and d!66551 c!45624) b!238139))

(assert (= (and d!66551 (not c!45624)) b!238141))

(assert (= (and b!238139 res!109993) b!238142))

(assert (= (and d!66551 res!109992) b!238143))

(assert (= (and b!238143 res!109991) b!238140))

(declare-fun m!286921 () Bool)

(assert (=> b!238142 m!286921))

(declare-fun m!286923 () Bool)

(assert (=> d!66551 m!286923))

(assert (=> d!66551 m!284913))

(assert (=> d!66551 m!284913))

(declare-fun m!286925 () Bool)

(assert (=> d!66551 m!286925))

(declare-fun m!286927 () Bool)

(assert (=> b!238140 m!286927))

(assert (=> b!238140 m!284913))

(declare-fun m!286929 () Bool)

(assert (=> b!238140 m!286929))

(assert (=> b!238140 m!286929))

(declare-fun m!286931 () Bool)

(assert (=> b!238140 m!286931))

(declare-fun m!286933 () Bool)

(assert (=> b!238143 m!286933))

(assert (=> b!238143 m!284913))

(assert (=> b!238143 m!286929))

(assert (=> b!238143 m!286929))

(assert (=> b!238143 m!286931))

(declare-fun m!286935 () Bool)

(assert (=> b!238139 m!286935))

(assert (=> b!238139 m!284913))

(declare-fun m!286937 () Bool)

(assert (=> b!238139 m!286937))

(assert (=> b!236945 d!66551))

(declare-fun d!66553 () Bool)

(assert (=> d!66553 (= (seqFromList!701 lt!94426) (fromListB!261 lt!94426))))

(declare-fun bs!25461 () Bool)

(assert (= bs!25461 d!66553))

(declare-fun m!286939 () Bool)

(assert (=> bs!25461 m!286939))

(assert (=> b!236945 d!66553))

(declare-fun d!66555 () Bool)

(assert (=> d!66555 (= (list!1374 (seqFromList!701 lt!94431)) (list!1379 (c!45382 (seqFromList!701 lt!94431))))))

(declare-fun bs!25462 () Bool)

(assert (= bs!25462 d!66555))

(declare-fun m!286941 () Bool)

(assert (=> bs!25462 m!286941))

(assert (=> b!236944 d!66555))

(declare-fun d!66557 () Bool)

(assert (=> d!66557 (= (seqFromList!701 lt!94431) (fromListB!261 lt!94431))))

(declare-fun bs!25463 () Bool)

(assert (= bs!25463 d!66557))

(declare-fun m!286943 () Bool)

(assert (=> bs!25463 m!286943))

(assert (=> b!236944 d!66557))

(declare-fun d!66559 () Bool)

(assert (=> d!66559 (= (isEmpty!2086 rules!1920) (is-Nil!3521 rules!1920))))

(assert (=> b!236986 d!66559))

(declare-fun d!66561 () Bool)

(assert (=> d!66561 (= (isDefined!529 lt!94437) (not (isEmpty!2094 lt!94437)))))

(declare-fun bs!25464 () Bool)

(assert (= bs!25464 d!66561))

(declare-fun m!286945 () Bool)

(assert (=> bs!25464 m!286945))

(assert (=> b!236964 d!66561))

(assert (=> b!236964 d!66345))

(declare-fun d!66563 () Bool)

(declare-fun lt!95149 () Bool)

(declare-fun e!147408 () Bool)

(assert (=> d!66563 (= lt!95149 e!147408)))

(declare-fun res!109994 () Bool)

(assert (=> d!66563 (=> (not res!109994) (not e!147408))))

(assert (=> d!66563 (= res!109994 (= (list!1375 (_1!2145 (lex!348 thiss!17480 rules!1920 (print!279 thiss!17480 (singletonSeq!214 separatorToken!170))))) (list!1375 (singletonSeq!214 separatorToken!170))))))

(declare-fun e!147409 () Bool)

(assert (=> d!66563 (= lt!95149 e!147409)))

(declare-fun res!109995 () Bool)

(assert (=> d!66563 (=> (not res!109995) (not e!147409))))

(declare-fun lt!95148 () tuple2!3858)

(assert (=> d!66563 (= res!109995 (= (size!2819 (_1!2145 lt!95148)) 1))))

(assert (=> d!66563 (= lt!95148 (lex!348 thiss!17480 rules!1920 (print!279 thiss!17480 (singletonSeq!214 separatorToken!170))))))

(assert (=> d!66563 (not (isEmpty!2086 rules!1920))))

(assert (=> d!66563 (= (rulesProduceIndividualToken!297 thiss!17480 rules!1920 separatorToken!170) lt!95149)))

(declare-fun b!238144 () Bool)

(declare-fun res!109996 () Bool)

(assert (=> b!238144 (=> (not res!109996) (not e!147409))))

(assert (=> b!238144 (= res!109996 (= (apply!653 (_1!2145 lt!95148) 0) separatorToken!170))))

(declare-fun b!238145 () Bool)

(assert (=> b!238145 (= e!147409 (isEmpty!2084 (_2!2145 lt!95148)))))

(declare-fun b!238146 () Bool)

(assert (=> b!238146 (= e!147408 (isEmpty!2084 (_2!2145 (lex!348 thiss!17480 rules!1920 (print!279 thiss!17480 (singletonSeq!214 separatorToken!170))))))))

(assert (= (and d!66563 res!109995) b!238144))

(assert (= (and b!238144 res!109996) b!238145))

(assert (= (and d!66563 res!109994) b!238146))

(assert (=> d!66563 m!284869))

(declare-fun m!286947 () Bool)

(assert (=> d!66563 m!286947))

(assert (=> d!66563 m!284869))

(declare-fun m!286949 () Bool)

(assert (=> d!66563 m!286949))

(assert (=> d!66563 m!284869))

(assert (=> d!66563 m!286949))

(declare-fun m!286951 () Bool)

(assert (=> d!66563 m!286951))

(assert (=> d!66563 m!285003))

(declare-fun m!286953 () Bool)

(assert (=> d!66563 m!286953))

(declare-fun m!286955 () Bool)

(assert (=> d!66563 m!286955))

(declare-fun m!286957 () Bool)

(assert (=> b!238144 m!286957))

(declare-fun m!286959 () Bool)

(assert (=> b!238145 m!286959))

(assert (=> b!238146 m!284869))

(assert (=> b!238146 m!284869))

(assert (=> b!238146 m!286949))

(assert (=> b!238146 m!286949))

(assert (=> b!238146 m!286951))

(declare-fun m!286961 () Bool)

(assert (=> b!238146 m!286961))

(assert (=> b!236943 d!66563))

(declare-fun d!66565 () Bool)

(assert (=> d!66565 (= (get!1136 lt!94437) (v!14412 lt!94437))))

(assert (=> b!236942 d!66565))

(declare-fun d!66567 () Bool)

(assert (=> d!66567 (= (head!819 tokens!465) (h!8919 tokens!465))))

(assert (=> b!236942 d!66567))

(declare-fun d!66569 () Bool)

(declare-fun lt!95150 () Int)

(assert (=> d!66569 (= lt!95150 (size!2822 (list!1375 lt!94428)))))

(assert (=> d!66569 (= lt!95150 (size!2824 (c!45384 lt!94428)))))

(assert (=> d!66569 (= (size!2819 lt!94428) lt!95150)))

(declare-fun bs!25465 () Bool)

(assert (= bs!25465 d!66569))

(assert (=> bs!25465 m!286285))

(assert (=> bs!25465 m!286285))

(declare-fun m!286963 () Bool)

(assert (=> bs!25465 m!286963))

(declare-fun m!286965 () Bool)

(assert (=> bs!25465 m!286965))

(assert (=> b!236985 d!66569))

(declare-fun d!66571 () Bool)

(declare-fun c!45625 () Bool)

(assert (=> d!66571 (= c!45625 (is-IntegerValue!2052 (value!23184 (h!8919 tokens!465))))))

(declare-fun e!147410 () Bool)

(assert (=> d!66571 (= (inv!21 (value!23184 (h!8919 tokens!465))) e!147410)))

(declare-fun b!238147 () Bool)

(declare-fun res!109997 () Bool)

(declare-fun e!147412 () Bool)

(assert (=> b!238147 (=> res!109997 e!147412)))

(assert (=> b!238147 (= res!109997 (not (is-IntegerValue!2054 (value!23184 (h!8919 tokens!465)))))))

(declare-fun e!147411 () Bool)

(assert (=> b!238147 (= e!147411 e!147412)))

(declare-fun b!238148 () Bool)

(assert (=> b!238148 (= e!147410 e!147411)))

(declare-fun c!45626 () Bool)

(assert (=> b!238148 (= c!45626 (is-IntegerValue!2053 (value!23184 (h!8919 tokens!465))))))

(declare-fun b!238149 () Bool)

(assert (=> b!238149 (= e!147410 (inv!16 (value!23184 (h!8919 tokens!465))))))

(declare-fun b!238150 () Bool)

(assert (=> b!238150 (= e!147412 (inv!15 (value!23184 (h!8919 tokens!465))))))

(declare-fun b!238151 () Bool)

(assert (=> b!238151 (= e!147411 (inv!17 (value!23184 (h!8919 tokens!465))))))

(assert (= (and d!66571 c!45625) b!238149))

(assert (= (and d!66571 (not c!45625)) b!238148))

(assert (= (and b!238148 c!45626) b!238151))

(assert (= (and b!238148 (not c!45626)) b!238147))

(assert (= (and b!238147 (not res!109997)) b!238150))

(declare-fun m!286967 () Bool)

(assert (=> b!238149 m!286967))

(declare-fun m!286969 () Bool)

(assert (=> b!238150 m!286969))

(declare-fun m!286971 () Bool)

(assert (=> b!238151 m!286971))

(assert (=> b!236984 d!66571))

(declare-fun d!66573 () Bool)

(assert (=> d!66573 (not (matchR!224 (regex!662 (rule!1229 lt!94452)) lt!94440))))

(declare-fun lt!95153 () Unit!4177)

(declare-fun choose!2276 (Regex!886 List!3530 C!2694) Unit!4177)

(assert (=> d!66573 (= lt!95153 (choose!2276 (regex!662 (rule!1229 lt!94452)) lt!94440 lt!94427))))

(assert (=> d!66573 (validRegex!228 (regex!662 (rule!1229 lt!94452)))))

(assert (=> d!66573 (= (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!61 (regex!662 (rule!1229 lt!94452)) lt!94440 lt!94427) lt!95153)))

(declare-fun bs!25466 () Bool)

(assert (= bs!25466 d!66573))

(assert (=> bs!25466 m!284813))

(declare-fun m!286973 () Bool)

(assert (=> bs!25466 m!286973))

(declare-fun m!286975 () Bool)

(assert (=> bs!25466 m!286975))

(assert (=> b!236963 d!66573))

(declare-fun b!238152 () Bool)

(declare-fun e!147415 () Bool)

(assert (=> b!238152 (= e!147415 (matchR!224 (derivativeStep!119 (regex!662 (rule!1229 lt!94452)) (head!820 lt!94440)) (tail!435 lt!94440)))))

(declare-fun b!238153 () Bool)

(assert (=> b!238153 (= e!147415 (nullable!153 (regex!662 (rule!1229 lt!94452))))))

(declare-fun b!238154 () Bool)

(declare-fun e!147413 () Bool)

(declare-fun e!147417 () Bool)

(assert (=> b!238154 (= e!147413 e!147417)))

(declare-fun res!110002 () Bool)

(assert (=> b!238154 (=> (not res!110002) (not e!147417))))

(declare-fun lt!95154 () Bool)

(assert (=> b!238154 (= res!110002 (not lt!95154))))

(declare-fun b!238155 () Bool)

(declare-fun res!110001 () Bool)

(assert (=> b!238155 (=> res!110001 e!147413)))

(declare-fun e!147418 () Bool)

(assert (=> b!238155 (= res!110001 e!147418)))

(declare-fun res!110004 () Bool)

(assert (=> b!238155 (=> (not res!110004) (not e!147418))))

(assert (=> b!238155 (= res!110004 lt!95154)))

(declare-fun d!66575 () Bool)

(declare-fun e!147416 () Bool)

(assert (=> d!66575 e!147416))

(declare-fun c!45629 () Bool)

(assert (=> d!66575 (= c!45629 (is-EmptyExpr!886 (regex!662 (rule!1229 lt!94452))))))

(assert (=> d!66575 (= lt!95154 e!147415)))

(declare-fun c!45630 () Bool)

(assert (=> d!66575 (= c!45630 (isEmpty!2087 lt!94440))))

(assert (=> d!66575 (validRegex!228 (regex!662 (rule!1229 lt!94452)))))

(assert (=> d!66575 (= (matchR!224 (regex!662 (rule!1229 lt!94452)) lt!94440) lt!95154)))

(declare-fun b!238156 () Bool)

(declare-fun res!110000 () Bool)

(assert (=> b!238156 (=> (not res!110000) (not e!147418))))

(assert (=> b!238156 (= res!110000 (isEmpty!2087 (tail!435 lt!94440)))))

(declare-fun b!238157 () Bool)

(assert (=> b!238157 (= e!147418 (= (head!820 lt!94440) (c!45383 (regex!662 (rule!1229 lt!94452)))))))

(declare-fun b!238158 () Bool)

(declare-fun e!147414 () Bool)

(assert (=> b!238158 (= e!147417 e!147414)))

(declare-fun res!109998 () Bool)

(assert (=> b!238158 (=> res!109998 e!147414)))

(declare-fun call!12408 () Bool)

(assert (=> b!238158 (= res!109998 call!12408)))

(declare-fun bm!12403 () Bool)

(assert (=> bm!12403 (= call!12408 (isEmpty!2087 lt!94440))))

(declare-fun b!238159 () Bool)

(declare-fun res!109999 () Bool)

(assert (=> b!238159 (=> res!109999 e!147414)))

(assert (=> b!238159 (= res!109999 (not (isEmpty!2087 (tail!435 lt!94440))))))

(declare-fun b!238160 () Bool)

(declare-fun res!110003 () Bool)

(assert (=> b!238160 (=> res!110003 e!147413)))

(assert (=> b!238160 (= res!110003 (not (is-ElementMatch!886 (regex!662 (rule!1229 lt!94452)))))))

(declare-fun e!147419 () Bool)

(assert (=> b!238160 (= e!147419 e!147413)))

(declare-fun b!238161 () Bool)

(assert (=> b!238161 (= e!147416 (= lt!95154 call!12408))))

(declare-fun b!238162 () Bool)

(assert (=> b!238162 (= e!147414 (not (= (head!820 lt!94440) (c!45383 (regex!662 (rule!1229 lt!94452))))))))

(declare-fun b!238163 () Bool)

(assert (=> b!238163 (= e!147419 (not lt!95154))))

(declare-fun b!238164 () Bool)

(assert (=> b!238164 (= e!147416 e!147419)))

(declare-fun c!45628 () Bool)

(assert (=> b!238164 (= c!45628 (is-EmptyLang!886 (regex!662 (rule!1229 lt!94452))))))

(declare-fun b!238165 () Bool)

(declare-fun res!110005 () Bool)

(assert (=> b!238165 (=> (not res!110005) (not e!147418))))

(assert (=> b!238165 (= res!110005 (not call!12408))))

(assert (= (and d!66575 c!45630) b!238153))

(assert (= (and d!66575 (not c!45630)) b!238152))

(assert (= (and d!66575 c!45629) b!238161))

(assert (= (and d!66575 (not c!45629)) b!238164))

(assert (= (and b!238164 c!45628) b!238163))

(assert (= (and b!238164 (not c!45628)) b!238160))

(assert (= (and b!238160 (not res!110003)) b!238155))

(assert (= (and b!238155 res!110004) b!238165))

(assert (= (and b!238165 res!110005) b!238156))

(assert (= (and b!238156 res!110000) b!238157))

(assert (= (and b!238155 (not res!110001)) b!238154))

(assert (= (and b!238154 res!110002) b!238158))

(assert (= (and b!238158 (not res!109998)) b!238159))

(assert (= (and b!238159 (not res!109999)) b!238162))

(assert (= (or b!238161 b!238158 b!238165) bm!12403))

(assert (=> b!238156 m!285287))

(assert (=> b!238156 m!285287))

(assert (=> b!238156 m!285289))

(assert (=> bm!12403 m!285291))

(declare-fun m!286977 () Bool)

(assert (=> b!238153 m!286977))

(assert (=> d!66575 m!285291))

(assert (=> d!66575 m!286975))

(assert (=> b!238157 m!284861))

(assert (=> b!238152 m!284861))

(assert (=> b!238152 m!284861))

(declare-fun m!286979 () Bool)

(assert (=> b!238152 m!286979))

(assert (=> b!238152 m!285287))

(assert (=> b!238152 m!286979))

(assert (=> b!238152 m!285287))

(declare-fun m!286981 () Bool)

(assert (=> b!238152 m!286981))

(assert (=> b!238159 m!285287))

(assert (=> b!238159 m!285287))

(assert (=> b!238159 m!285289))

(assert (=> b!238162 m!284861))

(assert (=> b!236963 d!66575))

(declare-fun d!66577 () Bool)

(assert (=> d!66577 (= (inv!4374 (tag!866 (rule!1229 separatorToken!170))) (= (mod (str.len (value!23183 (tag!866 (rule!1229 separatorToken!170)))) 2) 0))))

(assert (=> b!236962 d!66577))

(declare-fun d!66579 () Bool)

(declare-fun res!110006 () Bool)

(declare-fun e!147420 () Bool)

(assert (=> d!66579 (=> (not res!110006) (not e!147420))))

(assert (=> d!66579 (= res!110006 (semiInverseModEq!226 (toChars!1220 (transformation!662 (rule!1229 separatorToken!170))) (toValue!1361 (transformation!662 (rule!1229 separatorToken!170)))))))

(assert (=> d!66579 (= (inv!4378 (transformation!662 (rule!1229 separatorToken!170))) e!147420)))

(declare-fun b!238166 () Bool)

(assert (=> b!238166 (= e!147420 (equivClasses!209 (toChars!1220 (transformation!662 (rule!1229 separatorToken!170))) (toValue!1361 (transformation!662 (rule!1229 separatorToken!170)))))))

(assert (= (and d!66579 res!110006) b!238166))

(declare-fun m!286983 () Bool)

(assert (=> d!66579 m!286983))

(declare-fun m!286985 () Bool)

(assert (=> b!238166 m!286985))

(assert (=> b!236962 d!66579))

(declare-fun d!66581 () Bool)

(assert (=> d!66581 (= (get!1136 lt!94420) (v!14412 lt!94420))))

(assert (=> b!236941 d!66581))

(declare-fun d!66583 () Bool)

(assert (=> d!66583 (= (isDefined!529 lt!94420) (not (isEmpty!2094 lt!94420)))))

(declare-fun bs!25467 () Bool)

(assert (= bs!25467 d!66583))

(declare-fun m!286987 () Bool)

(assert (=> bs!25467 m!286987))

(assert (=> b!236941 d!66583))

(declare-fun b!238167 () Bool)

(declare-fun e!147423 () Option!678)

(declare-fun call!12409 () Option!678)

(assert (=> b!238167 (= e!147423 call!12409)))

(declare-fun b!238168 () Bool)

(declare-fun res!110012 () Bool)

(declare-fun e!147422 () Bool)

(assert (=> b!238168 (=> (not res!110012) (not e!147422))))

(declare-fun lt!95157 () Option!678)

(assert (=> b!238168 (= res!110012 (= (++!891 (list!1374 (charsOf!317 (_1!2144 (get!1136 lt!95157)))) (_2!2144 (get!1136 lt!95157))) lt!94426))))

(declare-fun b!238169 () Bool)

(declare-fun res!110008 () Bool)

(assert (=> b!238169 (=> (not res!110008) (not e!147422))))

(assert (=> b!238169 (= res!110008 (< (size!2825 (_2!2144 (get!1136 lt!95157))) (size!2825 lt!94426)))))

(declare-fun b!238170 () Bool)

(declare-fun res!110009 () Bool)

(assert (=> b!238170 (=> (not res!110009) (not e!147422))))

(assert (=> b!238170 (= res!110009 (= (list!1374 (charsOf!317 (_1!2144 (get!1136 lt!95157)))) (originalCharacters!705 (_1!2144 (get!1136 lt!95157)))))))

(declare-fun d!66585 () Bool)

(declare-fun e!147421 () Bool)

(assert (=> d!66585 e!147421))

(declare-fun res!110007 () Bool)

(assert (=> d!66585 (=> res!110007 e!147421)))

(assert (=> d!66585 (= res!110007 (isEmpty!2094 lt!95157))))

(assert (=> d!66585 (= lt!95157 e!147423)))

(declare-fun c!45631 () Bool)

(assert (=> d!66585 (= c!45631 (and (is-Cons!3521 rules!1920) (is-Nil!3521 (t!34259 rules!1920))))))

(declare-fun lt!95158 () Unit!4177)

(declare-fun lt!95155 () Unit!4177)

(assert (=> d!66585 (= lt!95158 lt!95155)))

(assert (=> d!66585 (isPrefix!358 lt!94426 lt!94426)))

(assert (=> d!66585 (= lt!95155 (lemmaIsPrefixRefl!184 lt!94426 lt!94426))))

(assert (=> d!66585 (rulesValidInductive!173 thiss!17480 rules!1920)))

(assert (=> d!66585 (= (maxPrefix!278 thiss!17480 rules!1920 lt!94426) lt!95157)))

(declare-fun b!238171 () Bool)

(assert (=> b!238171 (= e!147422 (contains!649 rules!1920 (rule!1229 (_1!2144 (get!1136 lt!95157)))))))

(declare-fun bm!12404 () Bool)

(assert (=> bm!12404 (= call!12409 (maxPrefixOneRule!118 thiss!17480 (h!8918 rules!1920) lt!94426))))

(declare-fun b!238172 () Bool)

(declare-fun res!110010 () Bool)

(assert (=> b!238172 (=> (not res!110010) (not e!147422))))

(assert (=> b!238172 (= res!110010 (matchR!224 (regex!662 (rule!1229 (_1!2144 (get!1136 lt!95157)))) (list!1374 (charsOf!317 (_1!2144 (get!1136 lt!95157))))))))

(declare-fun b!238173 () Bool)

(declare-fun res!110011 () Bool)

(assert (=> b!238173 (=> (not res!110011) (not e!147422))))

(assert (=> b!238173 (= res!110011 (= (value!23184 (_1!2144 (get!1136 lt!95157))) (apply!656 (transformation!662 (rule!1229 (_1!2144 (get!1136 lt!95157)))) (seqFromList!701 (originalCharacters!705 (_1!2144 (get!1136 lt!95157)))))))))

(declare-fun b!238174 () Bool)

(declare-fun lt!95156 () Option!678)

(declare-fun lt!95159 () Option!678)

(assert (=> b!238174 (= e!147423 (ite (and (is-None!677 lt!95156) (is-None!677 lt!95159)) None!677 (ite (is-None!677 lt!95159) lt!95156 (ite (is-None!677 lt!95156) lt!95159 (ite (>= (size!2818 (_1!2144 (v!14412 lt!95156))) (size!2818 (_1!2144 (v!14412 lt!95159)))) lt!95156 lt!95159)))))))

(assert (=> b!238174 (= lt!95156 call!12409)))

(assert (=> b!238174 (= lt!95159 (maxPrefix!278 thiss!17480 (t!34259 rules!1920) lt!94426))))

(declare-fun b!238175 () Bool)

(assert (=> b!238175 (= e!147421 e!147422)))

(declare-fun res!110013 () Bool)

(assert (=> b!238175 (=> (not res!110013) (not e!147422))))

(assert (=> b!238175 (= res!110013 (isDefined!529 lt!95157))))

(assert (= (and d!66585 c!45631) b!238167))

(assert (= (and d!66585 (not c!45631)) b!238174))

(assert (= (or b!238167 b!238174) bm!12404))

(assert (= (and d!66585 (not res!110007)) b!238175))

(assert (= (and b!238175 res!110013) b!238170))

(assert (= (and b!238170 res!110009) b!238169))

(assert (= (and b!238169 res!110008) b!238168))

(assert (= (and b!238168 res!110012) b!238173))

(assert (= (and b!238173 res!110011) b!238172))

(assert (= (and b!238172 res!110010) b!238171))

(declare-fun m!286989 () Bool)

(assert (=> b!238172 m!286989))

(declare-fun m!286991 () Bool)

(assert (=> b!238172 m!286991))

(assert (=> b!238172 m!286991))

(declare-fun m!286993 () Bool)

(assert (=> b!238172 m!286993))

(assert (=> b!238172 m!286993))

(declare-fun m!286995 () Bool)

(assert (=> b!238172 m!286995))

(assert (=> b!238169 m!286989))

(declare-fun m!286997 () Bool)

(assert (=> b!238169 m!286997))

(assert (=> b!238169 m!285985))

(assert (=> b!238171 m!286989))

(declare-fun m!286999 () Bool)

(assert (=> b!238171 m!286999))

(declare-fun m!287001 () Bool)

(assert (=> bm!12404 m!287001))

(assert (=> b!238173 m!286989))

(declare-fun m!287003 () Bool)

(assert (=> b!238173 m!287003))

(assert (=> b!238173 m!287003))

(declare-fun m!287005 () Bool)

(assert (=> b!238173 m!287005))

(declare-fun m!287007 () Bool)

(assert (=> d!66585 m!287007))

(declare-fun m!287009 () Bool)

(assert (=> d!66585 m!287009))

(declare-fun m!287011 () Bool)

(assert (=> d!66585 m!287011))

(assert (=> d!66585 m!285585))

(declare-fun m!287013 () Bool)

(assert (=> b!238174 m!287013))

(declare-fun m!287015 () Bool)

(assert (=> b!238175 m!287015))

(assert (=> b!238168 m!286989))

(assert (=> b!238168 m!286991))

(assert (=> b!238168 m!286991))

(assert (=> b!238168 m!286993))

(assert (=> b!238168 m!286993))

(declare-fun m!287017 () Bool)

(assert (=> b!238168 m!287017))

(assert (=> b!238170 m!286989))

(assert (=> b!238170 m!286991))

(assert (=> b!238170 m!286991))

(assert (=> b!238170 m!286993))

(assert (=> b!236941 d!66585))

(declare-fun d!66587 () Bool)

(assert (=> d!66587 (= (inv!4374 (tag!866 (rule!1229 (h!8919 tokens!465)))) (= (mod (str.len (value!23183 (tag!866 (rule!1229 (h!8919 tokens!465))))) 2) 0))))

(assert (=> b!236960 d!66587))

(declare-fun d!66589 () Bool)

(declare-fun res!110014 () Bool)

(declare-fun e!147424 () Bool)

(assert (=> d!66589 (=> (not res!110014) (not e!147424))))

(assert (=> d!66589 (= res!110014 (semiInverseModEq!226 (toChars!1220 (transformation!662 (rule!1229 (h!8919 tokens!465)))) (toValue!1361 (transformation!662 (rule!1229 (h!8919 tokens!465))))))))

(assert (=> d!66589 (= (inv!4378 (transformation!662 (rule!1229 (h!8919 tokens!465)))) e!147424)))

(declare-fun b!238176 () Bool)

(assert (=> b!238176 (= e!147424 (equivClasses!209 (toChars!1220 (transformation!662 (rule!1229 (h!8919 tokens!465)))) (toValue!1361 (transformation!662 (rule!1229 (h!8919 tokens!465))))))))

(assert (= (and d!66589 res!110014) b!238176))

(declare-fun m!287019 () Bool)

(assert (=> d!66589 m!287019))

(declare-fun m!287021 () Bool)

(assert (=> b!238176 m!287021))

(assert (=> b!236960 d!66589))

(declare-fun d!66591 () Bool)

(declare-fun res!110015 () Bool)

(declare-fun e!147425 () Bool)

(assert (=> d!66591 (=> (not res!110015) (not e!147425))))

(assert (=> d!66591 (= res!110015 (not (isEmpty!2087 (originalCharacters!705 separatorToken!170))))))

(assert (=> d!66591 (= (inv!4377 separatorToken!170) e!147425)))

(declare-fun b!238177 () Bool)

(declare-fun res!110016 () Bool)

(assert (=> b!238177 (=> (not res!110016) (not e!147425))))

(assert (=> b!238177 (= res!110016 (= (originalCharacters!705 separatorToken!170) (list!1374 (dynLambda!1677 (toChars!1220 (transformation!662 (rule!1229 separatorToken!170))) (value!23184 separatorToken!170)))))))

(declare-fun b!238178 () Bool)

(assert (=> b!238178 (= e!147425 (= (size!2818 separatorToken!170) (size!2825 (originalCharacters!705 separatorToken!170))))))

(assert (= (and d!66591 res!110015) b!238177))

(assert (= (and b!238177 res!110016) b!238178))

(declare-fun b_lambda!6783 () Bool)

(assert (=> (not b_lambda!6783) (not b!238177)))

(assert (=> b!238177 t!34315))

(declare-fun b_and!17759 () Bool)

(assert (= b_and!17747 (and (=> t!34315 result!15292) b_and!17759)))

(assert (=> b!238177 t!34317))

(declare-fun b_and!17761 () Bool)

(assert (= b_and!17749 (and (=> t!34317 result!15294) b_and!17761)))

(assert (=> b!238177 t!34319))

(declare-fun b_and!17763 () Bool)

(assert (= b_and!17751 (and (=> t!34319 result!15296) b_and!17763)))

(declare-fun m!287023 () Bool)

(assert (=> d!66591 m!287023))

(assert (=> b!238177 m!286563))

(assert (=> b!238177 m!286563))

(declare-fun m!287025 () Bool)

(assert (=> b!238177 m!287025))

(declare-fun m!287027 () Bool)

(assert (=> b!238178 m!287027))

(assert (=> start!25240 d!66591))

(declare-fun b!238179 () Bool)

(declare-fun res!110018 () Bool)

(declare-fun e!147428 () Bool)

(assert (=> b!238179 (=> (not res!110018) (not e!147428))))

(declare-fun lt!95160 () List!3532)

(assert (=> b!238179 (= res!110018 (set.subset (content!490 lt!95160) (content!490 (_1!2146 (lexList!176 thiss!17480 rules!1920 lt!94431)))))))

(declare-fun b!238180 () Bool)

(declare-fun e!147427 () List!3532)

(declare-fun call!12410 () List!3532)

(assert (=> b!238180 (= e!147427 call!12410)))

(declare-fun bm!12405 () Bool)

(assert (=> bm!12405 (= call!12410 (filter!56 (t!34260 (_1!2146 (lexList!176 thiss!17480 rules!1920 lt!94431))) lambda!7641))))

(declare-fun b!238181 () Bool)

(declare-fun e!147426 () List!3532)

(assert (=> b!238181 (= e!147426 Nil!3522)))

(declare-fun d!66593 () Bool)

(assert (=> d!66593 e!147428))

(declare-fun res!110017 () Bool)

(assert (=> d!66593 (=> (not res!110017) (not e!147428))))

(assert (=> d!66593 (= res!110017 (<= (size!2822 lt!95160) (size!2822 (_1!2146 (lexList!176 thiss!17480 rules!1920 lt!94431)))))))

(assert (=> d!66593 (= lt!95160 e!147426)))

(declare-fun c!45632 () Bool)

(assert (=> d!66593 (= c!45632 (is-Nil!3522 (_1!2146 (lexList!176 thiss!17480 rules!1920 lt!94431))))))

(assert (=> d!66593 (= (filter!56 (_1!2146 (lexList!176 thiss!17480 rules!1920 lt!94431)) lambda!7641) lt!95160)))

(declare-fun b!238182 () Bool)

(assert (=> b!238182 (= e!147427 (Cons!3522 (h!8919 (_1!2146 (lexList!176 thiss!17480 rules!1920 lt!94431))) call!12410))))

(declare-fun b!238183 () Bool)

(assert (=> b!238183 (= e!147428 (forall!806 lt!95160 lambda!7641))))

(declare-fun b!238184 () Bool)

(assert (=> b!238184 (= e!147426 e!147427)))

(declare-fun c!45633 () Bool)

(assert (=> b!238184 (= c!45633 (dynLambda!1676 lambda!7641 (h!8919 (_1!2146 (lexList!176 thiss!17480 rules!1920 lt!94431)))))))

(assert (= (and d!66593 c!45632) b!238181))

(assert (= (and d!66593 (not c!45632)) b!238184))

(assert (= (and b!238184 c!45633) b!238182))

(assert (= (and b!238184 (not c!45633)) b!238180))

(assert (= (or b!238182 b!238180) bm!12405))

(assert (= (and d!66593 res!110017) b!238179))

(assert (= (and b!238179 res!110018) b!238183))

(declare-fun b_lambda!6785 () Bool)

(assert (=> (not b_lambda!6785) (not b!238184)))

(declare-fun m!287029 () Bool)

(assert (=> bm!12405 m!287029))

(declare-fun m!287031 () Bool)

(assert (=> b!238183 m!287031))

(declare-fun m!287033 () Bool)

(assert (=> b!238179 m!287033))

(declare-fun m!287035 () Bool)

(assert (=> b!238179 m!287035))

(declare-fun m!287037 () Bool)

(assert (=> b!238184 m!287037))

(declare-fun m!287039 () Bool)

(assert (=> d!66593 m!287039))

(declare-fun m!287041 () Bool)

(assert (=> d!66593 m!287041))

(assert (=> b!236981 d!66593))

(declare-fun b!238186 () Bool)

(declare-fun e!147431 () Bool)

(declare-fun e!147429 () Bool)

(assert (=> b!238186 (= e!147431 e!147429)))

(declare-fun res!110019 () Bool)

(declare-fun lt!95161 () tuple2!3860)

(assert (=> b!238186 (= res!110019 (< (size!2825 (_2!2146 lt!95161)) (size!2825 lt!94431)))))

(assert (=> b!238186 (=> (not res!110019) (not e!147429))))

(declare-fun b!238187 () Bool)

(declare-fun e!147430 () tuple2!3860)

(assert (=> b!238187 (= e!147430 (tuple2!3861 Nil!3522 lt!94431))))

(declare-fun b!238188 () Bool)

(assert (=> b!238188 (= e!147431 (= (_2!2146 lt!95161) lt!94431))))

(declare-fun b!238189 () Bool)

(assert (=> b!238189 (= e!147429 (not (isEmpty!2085 (_1!2146 lt!95161))))))

(declare-fun b!238185 () Bool)

(declare-fun lt!95162 () Option!678)

(declare-fun lt!95163 () tuple2!3860)

(assert (=> b!238185 (= e!147430 (tuple2!3861 (Cons!3522 (_1!2144 (v!14412 lt!95162)) (_1!2146 lt!95163)) (_2!2146 lt!95163)))))

(assert (=> b!238185 (= lt!95163 (lexList!176 thiss!17480 rules!1920 (_2!2144 (v!14412 lt!95162))))))

(declare-fun d!66595 () Bool)

(assert (=> d!66595 e!147431))

(declare-fun c!45635 () Bool)

(assert (=> d!66595 (= c!45635 (> (size!2822 (_1!2146 lt!95161)) 0))))

(assert (=> d!66595 (= lt!95161 e!147430)))

(declare-fun c!45634 () Bool)

(assert (=> d!66595 (= c!45634 (is-Some!677 lt!95162))))

(assert (=> d!66595 (= lt!95162 (maxPrefix!278 thiss!17480 rules!1920 lt!94431))))

(assert (=> d!66595 (= (lexList!176 thiss!17480 rules!1920 lt!94431) lt!95161)))

(assert (= (and d!66595 c!45634) b!238185))

(assert (= (and d!66595 (not c!45634)) b!238187))

(assert (= (and d!66595 c!45635) b!238186))

(assert (= (and d!66595 (not c!45635)) b!238188))

(assert (= (and b!238186 res!110019) b!238189))

(declare-fun m!287043 () Bool)

(assert (=> b!238186 m!287043))

(assert (=> b!238186 m!285919))

(declare-fun m!287045 () Bool)

(assert (=> b!238189 m!287045))

(declare-fun m!287047 () Bool)

(assert (=> b!238185 m!287047))

(declare-fun m!287049 () Bool)

(assert (=> d!66595 m!287049))

(assert (=> d!66595 m!284831))

(assert (=> b!236981 d!66595))

(declare-fun e!147434 () Bool)

(assert (=> b!236979 (= tp!94812 e!147434)))

(declare-fun b!238203 () Bool)

(declare-fun tp!94876 () Bool)

(declare-fun tp!94877 () Bool)

(assert (=> b!238203 (= e!147434 (and tp!94876 tp!94877))))

(declare-fun b!238202 () Bool)

(declare-fun tp!94875 () Bool)

(assert (=> b!238202 (= e!147434 tp!94875)))

(declare-fun b!238200 () Bool)

(declare-fun tp_is_empty!1749 () Bool)

(assert (=> b!238200 (= e!147434 tp_is_empty!1749)))

(declare-fun b!238201 () Bool)

(declare-fun tp!94878 () Bool)

(declare-fun tp!94874 () Bool)

(assert (=> b!238201 (= e!147434 (and tp!94878 tp!94874))))

(assert (= (and b!236979 (is-ElementMatch!886 (regex!662 (h!8918 rules!1920)))) b!238200))

(assert (= (and b!236979 (is-Concat!1571 (regex!662 (h!8918 rules!1920)))) b!238201))

(assert (= (and b!236979 (is-Star!886 (regex!662 (h!8918 rules!1920)))) b!238202))

(assert (= (and b!236979 (is-Union!886 (regex!662 (h!8918 rules!1920)))) b!238203))

(declare-fun b!238208 () Bool)

(declare-fun e!147437 () Bool)

(declare-fun tp!94881 () Bool)

(assert (=> b!238208 (= e!147437 (and tp_is_empty!1749 tp!94881))))

(assert (=> b!236976 (= tp!94809 e!147437)))

(assert (= (and b!236976 (is-Cons!3520 (originalCharacters!705 separatorToken!170))) b!238208))

(declare-fun b!238209 () Bool)

(declare-fun e!147438 () Bool)

(declare-fun tp!94882 () Bool)

(assert (=> b!238209 (= e!147438 (and tp_is_empty!1749 tp!94882))))

(assert (=> b!236984 (= tp!94802 e!147438)))

(assert (= (and b!236984 (is-Cons!3520 (originalCharacters!705 (h!8919 tokens!465)))) b!238209))

(declare-fun e!147439 () Bool)

(assert (=> b!236962 (= tp!94814 e!147439)))

(declare-fun b!238213 () Bool)

(declare-fun tp!94885 () Bool)

(declare-fun tp!94886 () Bool)

(assert (=> b!238213 (= e!147439 (and tp!94885 tp!94886))))

(declare-fun b!238212 () Bool)

(declare-fun tp!94884 () Bool)

(assert (=> b!238212 (= e!147439 tp!94884)))

(declare-fun b!238210 () Bool)

(assert (=> b!238210 (= e!147439 tp_is_empty!1749)))

(declare-fun b!238211 () Bool)

(declare-fun tp!94887 () Bool)

(declare-fun tp!94883 () Bool)

(assert (=> b!238211 (= e!147439 (and tp!94887 tp!94883))))

(assert (= (and b!236962 (is-ElementMatch!886 (regex!662 (rule!1229 separatorToken!170)))) b!238210))

(assert (= (and b!236962 (is-Concat!1571 (regex!662 (rule!1229 separatorToken!170)))) b!238211))

(assert (= (and b!236962 (is-Star!886 (regex!662 (rule!1229 separatorToken!170)))) b!238212))

(assert (= (and b!236962 (is-Union!886 (regex!662 (rule!1229 separatorToken!170)))) b!238213))

(declare-fun b!238216 () Bool)

(declare-fun e!147442 () Bool)

(assert (=> b!238216 (= e!147442 true)))

(declare-fun b!238215 () Bool)

(declare-fun e!147441 () Bool)

(assert (=> b!238215 (= e!147441 e!147442)))

(declare-fun b!238214 () Bool)

(declare-fun e!147440 () Bool)

(assert (=> b!238214 (= e!147440 e!147441)))

(assert (=> b!237001 e!147440))

(assert (= b!238215 b!238216))

(assert (= b!238214 b!238215))

(assert (= (and b!237001 (is-Cons!3521 (t!34259 rules!1920))) b!238214))

(assert (=> b!238216 (< (dynLambda!1670 order!2503 (toValue!1361 (transformation!662 (h!8918 (t!34259 rules!1920))))) (dynLambda!1671 order!2505 lambda!7642))))

(assert (=> b!238216 (< (dynLambda!1672 order!2507 (toChars!1220 (transformation!662 (h!8918 (t!34259 rules!1920))))) (dynLambda!1671 order!2505 lambda!7642))))

(declare-fun b!238227 () Bool)

(declare-fun b_free!8813 () Bool)

(declare-fun b_next!8813 () Bool)

(assert (=> b!238227 (= b_free!8813 (not b_next!8813))))

(declare-fun tp!94896 () Bool)

(declare-fun b_and!17765 () Bool)

(assert (=> b!238227 (= tp!94896 b_and!17765)))

(declare-fun b_free!8815 () Bool)

(declare-fun b_next!8815 () Bool)

(assert (=> b!238227 (= b_free!8815 (not b_next!8815))))

(declare-fun tb!12065 () Bool)

(declare-fun t!34332 () Bool)

(assert (=> (and b!238227 (= (toChars!1220 (transformation!662 (h!8918 (t!34259 rules!1920)))) (toChars!1220 (transformation!662 (rule!1229 separatorToken!170)))) t!34332) tb!12065))

(declare-fun result!15310 () Bool)

(assert (= result!15310 result!15292))

(assert (=> d!66467 t!34332))

(declare-fun t!34334 () Bool)

(declare-fun tb!12067 () Bool)

(assert (=> (and b!238227 (= (toChars!1220 (transformation!662 (h!8918 (t!34259 rules!1920)))) (toChars!1220 (transformation!662 (rule!1229 (h!8919 tokens!465))))) t!34334) tb!12067))

(declare-fun result!15312 () Bool)

(assert (= result!15312 result!15280))

(assert (=> b!237726 t!34334))

(assert (=> d!66473 t!34334))

(declare-fun tb!12069 () Bool)

(declare-fun t!34336 () Bool)

(assert (=> (and b!238227 (= (toChars!1220 (transformation!662 (h!8918 (t!34259 rules!1920)))) (toChars!1220 (transformation!662 (rule!1229 lt!94452)))) t!34336) tb!12069))

(declare-fun result!15314 () Bool)

(assert (= result!15314 result!15264))

(assert (=> d!66215 t!34336))

(assert (=> b!238177 t!34332))

(declare-fun tp!94899 () Bool)

(declare-fun b_and!17767 () Bool)

(assert (=> b!238227 (= tp!94899 (and (=> t!34334 result!15312) (=> t!34332 result!15310) (=> t!34336 result!15314) b_and!17767))))

(declare-fun e!147453 () Bool)

(assert (=> b!238227 (= e!147453 (and tp!94896 tp!94899))))

(declare-fun tp!94898 () Bool)

(declare-fun b!238226 () Bool)

(declare-fun e!147452 () Bool)

(assert (=> b!238226 (= e!147452 (and tp!94898 (inv!4374 (tag!866 (h!8918 (t!34259 rules!1920)))) (inv!4378 (transformation!662 (h!8918 (t!34259 rules!1920)))) e!147453))))

(declare-fun b!238225 () Bool)

(declare-fun e!147454 () Bool)

(declare-fun tp!94897 () Bool)

(assert (=> b!238225 (= e!147454 (and e!147452 tp!94897))))

(assert (=> b!236961 (= tp!94808 e!147454)))

(assert (= b!238226 b!238227))

(assert (= b!238225 b!238226))

(assert (= (and b!236961 (is-Cons!3521 (t!34259 rules!1920))) b!238225))

(declare-fun m!287051 () Bool)

(assert (=> b!238226 m!287051))

(declare-fun m!287053 () Bool)

(assert (=> b!238226 m!287053))

(declare-fun e!147455 () Bool)

(assert (=> b!236960 (= tp!94810 e!147455)))

(declare-fun b!238231 () Bool)

(declare-fun tp!94902 () Bool)

(declare-fun tp!94903 () Bool)

(assert (=> b!238231 (= e!147455 (and tp!94902 tp!94903))))

(declare-fun b!238230 () Bool)

(declare-fun tp!94901 () Bool)

(assert (=> b!238230 (= e!147455 tp!94901)))

(declare-fun b!238228 () Bool)

(assert (=> b!238228 (= e!147455 tp_is_empty!1749)))

(declare-fun b!238229 () Bool)

(declare-fun tp!94904 () Bool)

(declare-fun tp!94900 () Bool)

(assert (=> b!238229 (= e!147455 (and tp!94904 tp!94900))))

(assert (= (and b!236960 (is-ElementMatch!886 (regex!662 (rule!1229 (h!8919 tokens!465))))) b!238228))

(assert (= (and b!236960 (is-Concat!1571 (regex!662 (rule!1229 (h!8919 tokens!465))))) b!238229))

(assert (= (and b!236960 (is-Star!886 (regex!662 (rule!1229 (h!8919 tokens!465))))) b!238230))

(assert (= (and b!236960 (is-Union!886 (regex!662 (rule!1229 (h!8919 tokens!465))))) b!238231))

(declare-fun b!238245 () Bool)

(declare-fun b_free!8817 () Bool)

(declare-fun b_next!8817 () Bool)

(assert (=> b!238245 (= b_free!8817 (not b_next!8817))))

(declare-fun tp!94918 () Bool)

(declare-fun b_and!17769 () Bool)

(assert (=> b!238245 (= tp!94918 b_and!17769)))

(declare-fun b_free!8819 () Bool)

(declare-fun b_next!8819 () Bool)

(assert (=> b!238245 (= b_free!8819 (not b_next!8819))))

(declare-fun tb!12071 () Bool)

(declare-fun t!34338 () Bool)

(assert (=> (and b!238245 (= (toChars!1220 (transformation!662 (rule!1229 (h!8919 (t!34260 tokens!465))))) (toChars!1220 (transformation!662 (rule!1229 separatorToken!170)))) t!34338) tb!12071))

(declare-fun result!15318 () Bool)

(assert (= result!15318 result!15292))

(assert (=> d!66467 t!34338))

(declare-fun t!34340 () Bool)

(declare-fun tb!12073 () Bool)

(assert (=> (and b!238245 (= (toChars!1220 (transformation!662 (rule!1229 (h!8919 (t!34260 tokens!465))))) (toChars!1220 (transformation!662 (rule!1229 (h!8919 tokens!465))))) t!34340) tb!12073))

(declare-fun result!15320 () Bool)

(assert (= result!15320 result!15280))

(assert (=> b!237726 t!34340))

(assert (=> d!66473 t!34340))

(declare-fun tb!12075 () Bool)

(declare-fun t!34342 () Bool)

(assert (=> (and b!238245 (= (toChars!1220 (transformation!662 (rule!1229 (h!8919 (t!34260 tokens!465))))) (toChars!1220 (transformation!662 (rule!1229 lt!94452)))) t!34342) tb!12075))

(declare-fun result!15322 () Bool)

(assert (= result!15322 result!15264))

(assert (=> d!66215 t!34342))

(assert (=> b!238177 t!34338))

(declare-fun tp!94919 () Bool)

(declare-fun b_and!17771 () Bool)

(assert (=> b!238245 (= tp!94919 (and (=> t!34342 result!15322) (=> t!34340 result!15320) (=> t!34338 result!15318) b_and!17771))))

(declare-fun e!147472 () Bool)

(declare-fun tp!94916 () Bool)

(declare-fun e!147471 () Bool)

(declare-fun b!238243 () Bool)

(assert (=> b!238243 (= e!147472 (and (inv!21 (value!23184 (h!8919 (t!34260 tokens!465)))) e!147471 tp!94916))))

(declare-fun e!147468 () Bool)

(assert (=> b!236949 (= tp!94803 e!147468)))

(declare-fun e!147469 () Bool)

(assert (=> b!238245 (= e!147469 (and tp!94918 tp!94919))))

(declare-fun b!238242 () Bool)

(declare-fun tp!94917 () Bool)

(assert (=> b!238242 (= e!147468 (and (inv!4377 (h!8919 (t!34260 tokens!465))) e!147472 tp!94917))))

(declare-fun tp!94915 () Bool)

(declare-fun b!238244 () Bool)

(assert (=> b!238244 (= e!147471 (and tp!94915 (inv!4374 (tag!866 (rule!1229 (h!8919 (t!34260 tokens!465))))) (inv!4378 (transformation!662 (rule!1229 (h!8919 (t!34260 tokens!465))))) e!147469))))

(assert (= b!238244 b!238245))

(assert (= b!238243 b!238244))

(assert (= b!238242 b!238243))

(assert (= (and b!236949 (is-Cons!3522 (t!34260 tokens!465))) b!238242))

(declare-fun m!287063 () Bool)

(assert (=> b!238243 m!287063))

(declare-fun m!287065 () Bool)

(assert (=> b!238242 m!287065))

(declare-fun m!287067 () Bool)

(assert (=> b!238244 m!287067))

(declare-fun m!287069 () Bool)

(assert (=> b!238244 m!287069))

(declare-fun b_lambda!6787 () Bool)

(assert (= b_lambda!6759 (or b!236970 b_lambda!6787)))

(declare-fun bs!25478 () Bool)

(declare-fun d!66599 () Bool)

(assert (= bs!25478 (and d!66599 b!236970)))

(assert (=> bs!25478 (= (dynLambda!1676 lambda!7641 (h!8919 tokens!465)) (not (isSeparator!662 (rule!1229 (h!8919 tokens!465)))))))

(assert (=> b!237709 d!66599))

(declare-fun b_lambda!6789 () Bool)

(assert (= b_lambda!6755 (or b!236969 b_lambda!6789)))

(declare-fun bs!25479 () Bool)

(declare-fun d!66601 () Bool)

(assert (= bs!25479 (and d!66601 b!236969)))

(assert (=> bs!25479 (= (dynLambda!1676 lambda!7642 lt!94452) (rulesProduceIndividualToken!297 thiss!17480 rules!1920 lt!94452))))

(assert (=> bs!25479 m!284903))

(assert (=> d!66329 d!66601))

(declare-fun b_lambda!6791 () Bool)

(assert (= b_lambda!6783 (or (and b!236959 b_free!8799 (= (toChars!1220 (transformation!662 (h!8918 rules!1920))) (toChars!1220 (transformation!662 (rule!1229 separatorToken!170))))) (and b!238227 b_free!8815 (= (toChars!1220 (transformation!662 (h!8918 (t!34259 rules!1920)))) (toChars!1220 (transformation!662 (rule!1229 separatorToken!170))))) (and b!238245 b_free!8819 (= (toChars!1220 (transformation!662 (rule!1229 (h!8919 (t!34260 tokens!465))))) (toChars!1220 (transformation!662 (rule!1229 separatorToken!170))))) (and b!236977 b_free!8795) (and b!236974 b_free!8791 (= (toChars!1220 (transformation!662 (rule!1229 (h!8919 tokens!465)))) (toChars!1220 (transformation!662 (rule!1229 separatorToken!170))))) b_lambda!6791)))

(declare-fun b_lambda!6793 () Bool)

(assert (= b_lambda!6773 (or (and b!236959 b_free!8799 (= (toChars!1220 (transformation!662 (h!8918 rules!1920))) (toChars!1220 (transformation!662 (rule!1229 separatorToken!170))))) (and b!238227 b_free!8815 (= (toChars!1220 (transformation!662 (h!8918 (t!34259 rules!1920)))) (toChars!1220 (transformation!662 (rule!1229 separatorToken!170))))) (and b!238245 b_free!8819 (= (toChars!1220 (transformation!662 (rule!1229 (h!8919 (t!34260 tokens!465))))) (toChars!1220 (transformation!662 (rule!1229 separatorToken!170))))) (and b!236977 b_free!8795) (and b!236974 b_free!8791 (= (toChars!1220 (transformation!662 (rule!1229 (h!8919 tokens!465)))) (toChars!1220 (transformation!662 (rule!1229 separatorToken!170))))) b_lambda!6793)))

(declare-fun b_lambda!6795 () Bool)

(assert (= b_lambda!6775 (or (and b!236974 b_free!8791) (and b!238227 b_free!8815 (= (toChars!1220 (transformation!662 (h!8918 (t!34259 rules!1920)))) (toChars!1220 (transformation!662 (rule!1229 (h!8919 tokens!465)))))) (and b!238245 b_free!8819 (= (toChars!1220 (transformation!662 (rule!1229 (h!8919 (t!34260 tokens!465))))) (toChars!1220 (transformation!662 (rule!1229 (h!8919 tokens!465)))))) (and b!236959 b_free!8799 (= (toChars!1220 (transformation!662 (h!8918 rules!1920))) (toChars!1220 (transformation!662 (rule!1229 (h!8919 tokens!465)))))) (and b!236977 b_free!8795 (= (toChars!1220 (transformation!662 (rule!1229 separatorToken!170))) (toChars!1220 (transformation!662 (rule!1229 (h!8919 tokens!465)))))) b_lambda!6795)))

(declare-fun b_lambda!6797 () Bool)

(assert (= b_lambda!6785 (or b!236970 b_lambda!6797)))

(declare-fun bs!25480 () Bool)

(declare-fun d!66603 () Bool)

(assert (= bs!25480 (and d!66603 b!236970)))

(assert (=> bs!25480 (= (dynLambda!1676 lambda!7641 (h!8919 (_1!2146 (lexList!176 thiss!17480 rules!1920 lt!94431)))) (not (isSeparator!662 (rule!1229 (h!8919 (_1!2146 (lexList!176 thiss!17480 rules!1920 lt!94431)))))))))

(assert (=> b!238184 d!66603))

(declare-fun b_lambda!6799 () Bool)

(assert (= b_lambda!6747 (or b!236970 b_lambda!6799)))

(declare-fun bs!25481 () Bool)

(declare-fun d!66605 () Bool)

(assert (= bs!25481 (and d!66605 b!236970)))

(assert (=> bs!25481 (= (dynLambda!1676 lambda!7641 (h!8919 lt!94435)) (not (isSeparator!662 (rule!1229 (h!8919 lt!94435)))))))

(assert (=> b!237397 d!66605))

(declare-fun b_lambda!6801 () Bool)

(assert (= b_lambda!6761 (or (and b!236974 b_free!8791) (and b!238227 b_free!8815 (= (toChars!1220 (transformation!662 (h!8918 (t!34259 rules!1920)))) (toChars!1220 (transformation!662 (rule!1229 (h!8919 tokens!465)))))) (and b!238245 b_free!8819 (= (toChars!1220 (transformation!662 (rule!1229 (h!8919 (t!34260 tokens!465))))) (toChars!1220 (transformation!662 (rule!1229 (h!8919 tokens!465)))))) (and b!236959 b_free!8799 (= (toChars!1220 (transformation!662 (h!8918 rules!1920))) (toChars!1220 (transformation!662 (rule!1229 (h!8919 tokens!465)))))) (and b!236977 b_free!8795 (= (toChars!1220 (transformation!662 (rule!1229 separatorToken!170))) (toChars!1220 (transformation!662 (rule!1229 (h!8919 tokens!465)))))) b_lambda!6801)))

(declare-fun b_lambda!6803 () Bool)

(assert (= b_lambda!6757 (or b!236970 b_lambda!6803)))

(declare-fun bs!25482 () Bool)

(declare-fun d!66607 () Bool)

(assert (= bs!25482 (and d!66607 b!236970)))

(assert (=> bs!25482 (= (dynLambda!1676 lambda!7641 (h!8919 (_1!2146 (lexList!176 thiss!17480 rules!1920 lt!94434)))) (not (isSeparator!662 (rule!1229 (h!8919 (_1!2146 (lexList!176 thiss!17480 rules!1920 lt!94434)))))))))

(assert (=> b!237637 d!66607))

(declare-fun b_lambda!6805 () Bool)

(assert (= b_lambda!6743 (or b!236970 b_lambda!6805)))

(declare-fun bs!25483 () Bool)

(declare-fun d!66609 () Bool)

(assert (= bs!25483 (and d!66609 b!236970)))

(assert (=> bs!25483 (= (dynLambda!1676 lambda!7641 (h!8919 (list!1375 (_1!2145 (lex!348 thiss!17480 rules!1920 lt!94432))))) (not (isSeparator!662 (rule!1229 (h!8919 (list!1375 (_1!2145 (lex!348 thiss!17480 rules!1920 lt!94432))))))))))

(assert (=> b!237192 d!66609))

(declare-fun b_lambda!6807 () Bool)

(assert (= b_lambda!6781 (or b!236969 b_lambda!6807)))

(declare-fun bs!25484 () Bool)

(declare-fun d!66611 () Bool)

(assert (= bs!25484 (and d!66611 b!236969)))

(assert (=> bs!25484 (= (dynLambda!1676 lambda!7642 (h!8919 tokens!465)) (rulesProduceIndividualToken!297 thiss!17480 rules!1920 (h!8919 tokens!465)))))

(assert (=> bs!25484 m!284941))

(assert (=> d!66533 d!66611))

(push 1)

(assert (not d!66265))

(assert (not d!66377))

(assert (not b!238107))

(assert (not b!238123))

(assert (not b!238179))

(assert (not d!66329))

(assert (not b_lambda!6795))

(assert (not bm!12401))

(assert (not b!237556))

(assert (not d!66385))

(assert (not b_lambda!6787))

(assert b_and!17763)

(assert (not b!237953))

(assert (not b!237418))

(assert (not d!66479))

(assert (not b!238136))

(assert (not b!238177))

(assert (not bm!12357))

(assert (not b!238171))

(assert (not b!238174))

(assert (not d!66483))

(assert (not d!66223))

(assert (not b!237249))

(assert (not d!66215))

(assert (not bm!12300))

(assert (not b!237676))

(assert (not b!238014))

(assert (not d!66351))

(assert (not b!238185))

(assert (not b!238169))

(assert (not d!66475))

(assert (not bm!12296))

(assert (not b!237310))

(assert (not d!66227))

(assert (not d!66595))

(assert (not bm!12403))

(assert (not b!238156))

(assert (not d!66541))

(assert (not b!238175))

(assert (not b!237206))

(assert (not b!237313))

(assert (not d!66333))

(assert (not b!237973))

(assert (not b!237629))

(assert (not b_next!8795))

(assert (not b!238121))

(assert (not b!237955))

(assert (not d!66485))

(assert (not d!66331))

(assert (not b!238139))

(assert (not b!238039))

(assert (not b!238159))

(assert (not b!238157))

(assert (not b!237608))

(assert (not b!237305))

(assert (not b!238106))

(assert (not b!238230))

(assert (not b!237679))

(assert (not b!237246))

(assert (not d!66591))

(assert (not bm!12375))

(assert b_and!17759)

(assert (not d!66259))

(assert (not b!237655))

(assert (not d!66231))

(assert (not b!237671))

(assert (not d!66539))

(assert (not b!237674))

(assert (not b!238108))

(assert (not bm!12381))

(assert (not bm!12396))

(assert (not b!237275))

(assert (not d!66323))

(assert (not b!237274))

(assert (not d!66575))

(assert (not bm!12298))

(assert (not b!237971))

(assert (not d!66197))

(assert (not b!238150))

(assert (not b!237977))

(assert (not b!237727))

(assert (not b!238214))

(assert (not bm!12380))

(assert (not b!238143))

(assert (not b_lambda!6803))

(assert (not d!66549))

(assert (not d!66357))

(assert (not d!66199))

(assert b_and!17681)

(assert (not bm!12394))

(assert b_and!17769)

(assert (not d!66185))

(assert (not b_next!8819))

(assert (not b!237553))

(assert (not b!237427))

(assert (not d!66477))

(assert (not b!237424))

(assert (not d!66579))

(assert (not tb!12041))

(assert (not b_lambda!6801))

(assert (not b!238059))

(assert (not bm!12359))

(assert (not b!238145))

(assert (not b!237631))

(assert (not b_lambda!6799))

(assert (not b!238038))

(assert (not b!237264))

(assert (not b_next!8813))

(assert (not b!237682))

(assert (not b!237423))

(assert (not d!66211))

(assert (not b!237550))

(assert (not bm!12281))

(assert (not d!66469))

(assert (not d!66183))

(assert (not d!66203))

(assert (not d!66283))

(assert (not b!238153))

(assert (not b!237849))

(assert (not d!66389))

(assert (not b!238058))

(assert (not d!66299))

(assert (not d!66367))

(assert (not b!238212))

(assert (not d!66261))

(assert (not d!66257))

(assert b_and!17767)

(assert (not d!66209))

(assert (not d!66387))

(assert (not d!66551))

(assert (not bm!12377))

(assert (not b!238149))

(assert (not b!238176))

(assert (not b!237630))

(assert (not d!66335))

(assert (not b!237269))

(assert (not bm!12321))

(assert (not b!238115))

(assert (not b!237606))

(assert (not bm!12320))

(assert (not d!66201))

(assert (not b!238144))

(assert (not b!237391))

(assert (not d!66507))

(assert (not d!66279))

(assert (not b!237282))

(assert (not b!238028))

(assert (not b!237513))

(assert (not b!237596))

(assert (not b!237311))

(assert (not d!66371))

(assert (not b!237557))

(assert (not d!66363))

(assert (not d!66193))

(assert (not b!237981))

(assert (not b!237559))

(assert (not b_next!8789))

(assert (not b_next!8797))

(assert (not b!237272))

(assert (not d!66191))

(assert (not bm!12405))

(assert (not b!237203))

(assert (not d!66471))

(assert (not b!237315))

(assert (not b!238178))

(assert (not b!237471))

(assert (not b!237287))

(assert (not d!66561))

(assert (not b!237857))

(assert (not d!66583))

(assert (not d!66297))

(assert (not d!66379))

(assert (not b!237636))

(assert (not b!238116))

(assert (not b!238104))

(assert (not bm!12297))

(assert (not b!237392))

(assert (not b!238033))

(assert (not bs!25484))

(assert (not b!237558))

(assert (not b!237276))

(assert (not d!66337))

(assert (not b!237244))

(assert (not b!237975))

(assert (not d!66343))

(assert (not b!237187))

(assert (not b!238127))

(assert (not b!237561))

(assert (not d!66369))

(assert (not b!237672))

(assert (not b!238172))

(assert (not b!238244))

(assert (not b!237204))

(assert (not b!237855))

(assert (not d!66381))

(assert (not b_lambda!6807))

(assert (not d!66453))

(assert (not d!66573))

(assert (not d!66593))

(assert (not b!237417))

(assert (not b!237301))

(assert (not b!238202))

(assert (not d!66225))

(assert (not b!237422))

(assert (not b!238173))

(assert (not b!237648))

(assert (not bm!12358))

(assert (not b!237726))

(assert (not b!237425))

(assert (not b!238189))

(assert (not b!238146))

(assert (not d!66555))

(assert (not bm!12374))

(assert b_and!17685)

(assert (not b_lambda!6789))

(assert (not b!237632))

(assert (not d!66531))

(assert (not d!66563))

(assert (not b!238243))

(assert (not d!66473))

(assert (not b!237516))

(assert (not bm!12284))

(assert (not b!237607))

(assert (not b!237210))

(assert (not b!237312))

(assert (not b!237731))

(assert (not b_lambda!6791))

(assert (not b!238029))

(assert (not b!238168))

(assert (not d!66545))

(assert (not b!238132))

(assert (not b!238142))

(assert (not b!238007))

(assert (not b!238110))

(assert (not b!237858))

(assert (not b!238138))

(assert (not b!238229))

(assert (not d!66557))

(assert (not b!238166))

(assert (not d!66585))

(assert (not b!238034))

(assert (not d!66221))

(assert (not bm!12274))

(assert (not b!238126))

(assert (not b!237517))

(assert (not b_next!8815))

(assert tp_is_empty!1749)

(assert (not d!66373))

(assert (not d!66339))

(assert (not b!237419))

(assert (not b!237421))

(assert (not b!238122))

(assert (not d!66365))

(assert (not b!237960))

(assert (not b!237652))

(assert (not b!238032))

(assert (not b!237710))

(assert (not b!238226))

(assert (not b!238109))

(assert (not d!66547))

(assert (not b!237976))

(assert (not b!238010))

(assert (not b!237954))

(assert (not bm!12376))

(assert (not d!66533))

(assert (not b!238013))

(assert (not bm!12395))

(assert (not b!237552))

(assert (not b!237649))

(assert b_and!17761)

(assert (not b_lambda!6745))

(assert (not b!237261))

(assert (not b!237984))

(assert (not b!237595))

(assert (not b_lambda!6805))

(assert (not b!237563))

(assert (not b!238213))

(assert (not b!237959))

(assert (not b!237243))

(assert (not bm!12402))

(assert (not b!237271))

(assert b_and!17771)

(assert (not b!238183))

(assert (not d!66275))

(assert (not b_lambda!6797))

(assert (not d!66207))

(assert (not b!237389))

(assert (not b!237554))

(assert (not b!238112))

(assert (not b!238105))

(assert (not bm!12317))

(assert (not b!237970))

(assert (not b!237514))

(assert (not b!237191))

(assert (not b!237466))

(assert (not d!66455))

(assert (not b!238186))

(assert (not b_next!8817))

(assert (not d!66553))

(assert (not bm!12382))

(assert (not b!237562))

(assert (not b!238231))

(assert (not b!238151))

(assert (not b!237680))

(assert (not d!66187))

(assert (not bm!12404))

(assert (not b_next!8799))

(assert (not b!237240))

(assert (not b!237675))

(assert (not d!66467))

(assert (not bs!25479))

(assert (not b_next!8791))

(assert (not b!238162))

(assert (not b!237467))

(assert (not b!237468))

(assert (not d!66345))

(assert (not b!237685))

(assert (not d!66457))

(assert (not b!237560))

(assert (not b!238201))

(assert (not b!237420))

(assert (not b!238140))

(assert (not tb!12029))

(assert (not b!237307))

(assert (not b!237390))

(assert (not bm!12316))

(assert (not b!237259))

(assert (not bm!12397))

(assert (not b_next!8793))

(assert (not b!238152))

(assert (not b!238208))

(assert (not d!66589))

(assert (not b!238209))

(assert (not b!237304))

(assert (not b!238129))

(assert (not b!237207))

(assert (not d!66535))

(assert (not d!66213))

(assert (not d!66569))

(assert (not b!238203))

(assert b_and!17689)

(assert (not b!238225))

(assert (not bm!12318))

(assert b_and!17765)

(assert (not b!237850))

(assert (not d!66277))

(assert (not b!237316))

(assert (not b!237983))

(assert (not b!238170))

(assert (not b_lambda!6793))

(assert (not b!237396))

(assert (not tb!12053))

(assert (not b!237239))

(assert (not b!237851))

(assert (not b!238137))

(assert (not b!237469))

(assert (not bm!12277))

(assert (not b!238242))

(assert (not d!66509))

(assert (not d!66229))

(assert (not d!66341))

(assert (not b!237847))

(assert (not b!238009))

(assert (not b!238211))

(check-sat)

(pop 1)

(push 1)

(assert b_and!17763)

(assert (not b_next!8795))

(assert b_and!17759)

(assert (not b_next!8813))

(assert b_and!17767)

(assert b_and!17685)

(assert (not b_next!8815))

(assert (not b_next!8817))

(assert (not b_next!8793))

(assert b_and!17681)

(assert b_and!17769)

(assert (not b_next!8819))

(assert (not b_next!8789))

(assert (not b_next!8797))

(assert b_and!17771)

(assert b_and!17761)

(assert (not b_next!8799))

(assert (not b_next!8791))

(assert b_and!17689)

(assert b_and!17765)

(check-sat)

(pop 1)

