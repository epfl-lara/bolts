; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!58016 () Bool)

(assert start!58016)

(declare-fun b!607445 () Bool)

(declare-fun b_free!17285 () Bool)

(declare-fun b_next!17301 () Bool)

(assert (=> b!607445 (= b_free!17285 (not b_next!17301))))

(declare-fun tp!188527 () Bool)

(declare-fun b_and!60151 () Bool)

(assert (=> b!607445 (= tp!188527 b_and!60151)))

(declare-fun b_free!17287 () Bool)

(declare-fun b_next!17303 () Bool)

(assert (=> b!607445 (= b_free!17287 (not b_next!17303))))

(declare-fun tp!188519 () Bool)

(declare-fun b_and!60153 () Bool)

(assert (=> b!607445 (= tp!188519 b_and!60153)))

(declare-fun b!607455 () Bool)

(declare-fun b_free!17289 () Bool)

(declare-fun b_next!17305 () Bool)

(assert (=> b!607455 (= b_free!17289 (not b_next!17305))))

(declare-fun tp!188524 () Bool)

(declare-fun b_and!60155 () Bool)

(assert (=> b!607455 (= tp!188524 b_and!60155)))

(declare-fun b_free!17291 () Bool)

(declare-fun b_next!17307 () Bool)

(assert (=> b!607455 (= b_free!17291 (not b_next!17307))))

(declare-fun tp!188525 () Bool)

(declare-fun b_and!60157 () Bool)

(assert (=> b!607455 (= tp!188525 b_and!60157)))

(declare-fun b!607429 () Bool)

(declare-fun res!263242 () Bool)

(declare-fun e!368120 () Bool)

(assert (=> b!607429 (=> (not res!263242) (not e!368120))))

(declare-datatypes ((C!4012 0))(
  ( (C!4013 (val!2232 Int)) )
))
(declare-datatypes ((List!6076 0))(
  ( (Nil!6066) (Cons!6066 (h!11467 C!4012) (t!80653 List!6076)) )
))
(declare-fun input!2705 () List!6076)

(declare-fun isEmpty!4379 (List!6076) Bool)

(assert (=> b!607429 (= res!263242 (not (isEmpty!4379 input!2705)))))

(declare-fun b!607430 () Bool)

(declare-fun e!368110 () Bool)

(declare-fun e!368122 () Bool)

(assert (=> b!607430 (= e!368110 e!368122)))

(declare-fun res!263263 () Bool)

(assert (=> b!607430 (=> res!263263 e!368122)))

(declare-fun lt!259389 () Int)

(declare-fun lt!259383 () Int)

(assert (=> b!607430 (= res!263263 (>= lt!259389 lt!259383))))

(declare-fun b!607431 () Bool)

(declare-fun res!263241 () Bool)

(declare-fun e!368124 () Bool)

(assert (=> b!607431 (=> res!263241 e!368124)))

(declare-fun lt!259406 () List!6076)

(declare-fun isPrefix!839 (List!6076 List!6076) Bool)

(assert (=> b!607431 (= res!263241 (not (isPrefix!839 lt!259406 input!2705)))))

(declare-fun b!607432 () Bool)

(declare-datatypes ((String!7918 0))(
  ( (String!7919 (value!39354 String)) )
))
(declare-datatypes ((Regex!1545 0))(
  ( (ElementMatch!1545 (c!112557 C!4012)) (Concat!2780 (regOne!3602 Regex!1545) (regTwo!3602 Regex!1545)) (EmptyExpr!1545) (Star!1545 (reg!1874 Regex!1545)) (EmptyLang!1545) (Union!1545 (regOne!3603 Regex!1545) (regTwo!3603 Regex!1545)) )
))
(declare-datatypes ((List!6077 0))(
  ( (Nil!6067) (Cons!6067 (h!11468 (_ BitVec 16)) (t!80654 List!6077)) )
))
(declare-datatypes ((TokenValue!1235 0))(
  ( (FloatLiteralValue!2470 (text!9090 List!6077)) (TokenValueExt!1234 (__x!4368 Int)) (Broken!6175 (value!39355 List!6077)) (Object!1244) (End!1235) (Def!1235) (Underscore!1235) (Match!1235) (Else!1235) (Error!1235) (Case!1235) (If!1235) (Extends!1235) (Abstract!1235) (Class!1235) (Val!1235) (DelimiterValue!2470 (del!1295 List!6077)) (KeywordValue!1241 (value!39356 List!6077)) (CommentValue!2470 (value!39357 List!6077)) (WhitespaceValue!2470 (value!39358 List!6077)) (IndentationValue!1235 (value!39359 List!6077)) (String!7920) (Int32!1235) (Broken!6176 (value!39360 List!6077)) (Boolean!1236) (Unit!11077) (OperatorValue!1238 (op!1295 List!6077)) (IdentifierValue!2470 (value!39361 List!6077)) (IdentifierValue!2471 (value!39362 List!6077)) (WhitespaceValue!2471 (value!39363 List!6077)) (True!2470) (False!2470) (Broken!6177 (value!39364 List!6077)) (Broken!6178 (value!39365 List!6077)) (True!2471) (RightBrace!1235) (RightBracket!1235) (Colon!1235) (Null!1235) (Comma!1235) (LeftBracket!1235) (False!2471) (LeftBrace!1235) (ImaginaryLiteralValue!1235 (text!9091 List!6077)) (StringLiteralValue!3705 (value!39366 List!6077)) (EOFValue!1235 (value!39367 List!6077)) (IdentValue!1235 (value!39368 List!6077)) (DelimiterValue!2471 (value!39369 List!6077)) (DedentValue!1235 (value!39370 List!6077)) (NewLineValue!1235 (value!39371 List!6077)) (IntegerValue!3705 (value!39372 (_ BitVec 32)) (text!9092 List!6077)) (IntegerValue!3706 (value!39373 Int) (text!9093 List!6077)) (Times!1235) (Or!1235) (Equal!1235) (Minus!1235) (Broken!6179 (value!39374 List!6077)) (And!1235) (Div!1235) (LessEqual!1235) (Mod!1235) (Concat!2781) (Not!1235) (Plus!1235) (SpaceValue!1235 (value!39375 List!6077)) (IntegerValue!3707 (value!39376 Int) (text!9094 List!6077)) (StringLiteralValue!3706 (text!9095 List!6077)) (FloatLiteralValue!2471 (text!9096 List!6077)) (BytesLiteralValue!1235 (value!39377 List!6077)) (CommentValue!2471 (value!39378 List!6077)) (StringLiteralValue!3707 (value!39379 List!6077)) (ErrorTokenValue!1235 (msg!1296 List!6077)) )
))
(declare-datatypes ((IArray!3857 0))(
  ( (IArray!3858 (innerList!1986 List!6076)) )
))
(declare-datatypes ((Conc!1928 0))(
  ( (Node!1928 (left!4866 Conc!1928) (right!5196 Conc!1928) (csize!4086 Int) (cheight!2139 Int)) (Leaf!3041 (xs!4565 IArray!3857) (csize!4087 Int)) (Empty!1928) )
))
(declare-datatypes ((BalanceConc!3864 0))(
  ( (BalanceConc!3865 (c!112558 Conc!1928)) )
))
(declare-datatypes ((TokenValueInjection!2238 0))(
  ( (TokenValueInjection!2239 (toValue!2118 Int) (toChars!1977 Int)) )
))
(declare-datatypes ((Rule!2222 0))(
  ( (Rule!2223 (regex!1211 Regex!1545) (tag!1473 String!7918) (isSeparator!1211 Bool) (transformation!1211 TokenValueInjection!2238)) )
))
(declare-datatypes ((Token!2158 0))(
  ( (Token!2159 (value!39380 TokenValue!1235) (rule!1995 Rule!2222) (size!4774 Int) (originalCharacters!1250 List!6076)) )
))
(declare-fun token!491 () Token!2158)

(declare-fun e!368125 () Bool)

(declare-fun tp!188523 () Bool)

(declare-fun e!368116 () Bool)

(declare-fun inv!21 (TokenValue!1235) Bool)

(assert (=> b!607432 (= e!368125 (and (inv!21 (value!39380 token!491)) e!368116 tp!188523))))

(declare-fun b!607434 () Bool)

(declare-fun res!263264 () Bool)

(assert (=> b!607434 (=> res!263264 e!368124)))

(declare-fun lt!259393 () List!6076)

(assert (=> b!607434 (= res!263264 (not (= lt!259393 input!2705)))))

(declare-fun b!607435 () Bool)

(declare-fun e!368123 () Bool)

(declare-fun e!368119 () Bool)

(assert (=> b!607435 (= e!368123 e!368119)))

(declare-fun res!263255 () Bool)

(assert (=> b!607435 (=> (not res!263255) (not e!368119))))

(declare-datatypes ((tuple2!6944 0))(
  ( (tuple2!6945 (_1!3736 Token!2158) (_2!3736 List!6076)) )
))
(declare-datatypes ((Option!1562 0))(
  ( (None!1561) (Some!1561 (v!16464 tuple2!6944)) )
))
(declare-fun lt!259398 () Option!1562)

(declare-fun isDefined!1373 (Option!1562) Bool)

(assert (=> b!607435 (= res!263255 (isDefined!1373 lt!259398))))

(declare-datatypes ((LexerInterface!1097 0))(
  ( (LexerInterfaceExt!1094 (__x!4369 Int)) (Lexer!1095) )
))
(declare-fun thiss!22590 () LexerInterface!1097)

(declare-fun lt!259396 () List!6076)

(declare-datatypes ((List!6078 0))(
  ( (Nil!6068) (Cons!6068 (h!11469 Rule!2222) (t!80655 List!6078)) )
))
(declare-fun rules!3103 () List!6078)

(declare-fun maxPrefix!795 (LexerInterface!1097 List!6078 List!6076) Option!1562)

(assert (=> b!607435 (= lt!259398 (maxPrefix!795 thiss!22590 rules!3103 lt!259396))))

(declare-fun suffix!1342 () List!6076)

(declare-fun ++!1699 (List!6076 List!6076) List!6076)

(assert (=> b!607435 (= lt!259396 (++!1699 input!2705 suffix!1342))))

(declare-fun b!607436 () Bool)

(declare-fun res!263240 () Bool)

(declare-fun e!368126 () Bool)

(assert (=> b!607436 (=> (not res!263240) (not e!368126))))

(declare-fun lt!259410 () Option!1562)

(declare-fun size!4775 (List!6076) Int)

(assert (=> b!607436 (= res!263240 (= (size!4774 (_1!3736 (v!16464 lt!259410))) (size!4775 (originalCharacters!1250 (_1!3736 (v!16464 lt!259410))))))))

(declare-fun e!368118 () Bool)

(declare-fun tp!188522 () Bool)

(declare-fun b!607437 () Bool)

(declare-fun inv!7714 (String!7918) Bool)

(declare-fun inv!7717 (TokenValueInjection!2238) Bool)

(assert (=> b!607437 (= e!368116 (and tp!188522 (inv!7714 (tag!1473 (rule!1995 token!491))) (inv!7717 (transformation!1211 (rule!1995 token!491))) e!368118))))

(declare-fun b!607438 () Bool)

(declare-fun e!368109 () Bool)

(declare-fun tp_is_empty!3445 () Bool)

(declare-fun tp!188521 () Bool)

(assert (=> b!607438 (= e!368109 (and tp_is_empty!3445 tp!188521))))

(declare-fun b!607439 () Bool)

(declare-datatypes ((Unit!11078 0))(
  ( (Unit!11079) )
))
(declare-fun e!368106 () Unit!11078)

(declare-fun Unit!11080 () Unit!11078)

(assert (=> b!607439 (= e!368106 Unit!11080)))

(declare-fun b!607440 () Bool)

(declare-fun res!263259 () Bool)

(assert (=> b!607440 (=> (not res!263259) (not e!368120))))

(declare-fun isEmpty!4380 (List!6078) Bool)

(assert (=> b!607440 (= res!263259 (not (isEmpty!4380 rules!3103)))))

(declare-fun b!607441 () Bool)

(assert (=> b!607441 (= e!368120 e!368123)))

(declare-fun res!263250 () Bool)

(assert (=> b!607441 (=> (not res!263250) (not e!368123))))

(declare-fun lt!259385 () List!6076)

(assert (=> b!607441 (= res!263250 (= lt!259385 input!2705))))

(declare-fun list!2552 (BalanceConc!3864) List!6076)

(declare-fun charsOf!840 (Token!2158) BalanceConc!3864)

(assert (=> b!607441 (= lt!259385 (list!2552 (charsOf!840 token!491)))))

(declare-fun b!607442 () Bool)

(declare-fun e!368103 () Bool)

(assert (=> b!607442 (= e!368122 e!368103)))

(declare-fun res!263247 () Bool)

(assert (=> b!607442 (=> (not res!263247) (not e!368103))))

(assert (=> b!607442 (= res!263247 (isDefined!1373 lt!259410))))

(declare-fun b!607443 () Bool)

(declare-fun res!263252 () Bool)

(assert (=> b!607443 (=> (not res!263252) (not e!368120))))

(declare-fun rulesInvariant!1060 (LexerInterface!1097 List!6078) Bool)

(assert (=> b!607443 (= res!263252 (rulesInvariant!1060 thiss!22590 rules!3103))))

(declare-fun b!607444 () Bool)

(declare-fun res!263254 () Bool)

(declare-fun e!368113 () Bool)

(assert (=> b!607444 (=> (not res!263254) (not e!368113))))

(assert (=> b!607444 (= res!263254 (= (size!4774 token!491) (size!4775 (originalCharacters!1250 token!491))))))

(declare-fun res!263256 () Bool)

(assert (=> start!58016 (=> (not res!263256) (not e!368120))))

(get-info :version)

(assert (=> start!58016 (= res!263256 ((_ is Lexer!1095) thiss!22590))))

(assert (=> start!58016 e!368120))

(declare-fun e!368108 () Bool)

(assert (=> start!58016 e!368108))

(declare-fun e!368105 () Bool)

(assert (=> start!58016 e!368105))

(declare-fun inv!7718 (Token!2158) Bool)

(assert (=> start!58016 (and (inv!7718 token!491) e!368125)))

(assert (=> start!58016 true))

(assert (=> start!58016 e!368109))

(declare-fun b!607433 () Bool)

(declare-fun e!368127 () Bool)

(assert (=> b!607433 (= e!368127 e!368124)))

(declare-fun res!263253 () Bool)

(assert (=> b!607433 (=> res!263253 e!368124)))

(assert (=> b!607433 (= res!263253 (>= lt!259389 lt!259383))))

(assert (=> b!607433 e!368110))

(declare-fun res!263249 () Bool)

(assert (=> b!607433 (=> (not res!263249) (not e!368110))))

(declare-fun lt!259404 () TokenValue!1235)

(declare-fun maxPrefixOneRule!458 (LexerInterface!1097 Rule!2222 List!6076) Option!1562)

(assert (=> b!607433 (= res!263249 (= (maxPrefixOneRule!458 thiss!22590 (rule!1995 token!491) lt!259396) (Some!1561 (tuple2!6945 (Token!2159 lt!259404 (rule!1995 token!491) lt!259383 lt!259385) suffix!1342))))))

(declare-fun lt!259382 () Unit!11078)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!164 (LexerInterface!1097 List!6078 List!6076 List!6076 List!6076 Rule!2222) Unit!11078)

(assert (=> b!607433 (= lt!259382 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!164 thiss!22590 rules!3103 lt!259385 lt!259396 suffix!1342 (rule!1995 token!491)))))

(declare-fun lt!259400 () TokenValue!1235)

(assert (=> b!607433 (= (maxPrefixOneRule!458 thiss!22590 (rule!1995 (_1!3736 (v!16464 lt!259410))) input!2705) (Some!1561 (tuple2!6945 (Token!2159 lt!259400 (rule!1995 (_1!3736 (v!16464 lt!259410))) lt!259389 lt!259406) (_2!3736 (v!16464 lt!259410)))))))

(declare-fun lt!259394 () Unit!11078)

(assert (=> b!607433 (= lt!259394 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!164 thiss!22590 rules!3103 lt!259406 input!2705 (_2!3736 (v!16464 lt!259410)) (rule!1995 (_1!3736 (v!16464 lt!259410)))))))

(assert (=> b!607433 e!368113))

(declare-fun res!263251 () Bool)

(assert (=> b!607433 (=> (not res!263251) (not e!368113))))

(assert (=> b!607433 (= res!263251 (= (value!39380 token!491) lt!259404))))

(declare-fun apply!1464 (TokenValueInjection!2238 BalanceConc!3864) TokenValue!1235)

(declare-fun seqFromList!1387 (List!6076) BalanceConc!3864)

(assert (=> b!607433 (= lt!259404 (apply!1464 (transformation!1211 (rule!1995 token!491)) (seqFromList!1387 lt!259385)))))

(declare-fun lt!259402 () List!6076)

(assert (=> b!607433 (= suffix!1342 lt!259402)))

(declare-fun lt!259411 () Unit!11078)

(declare-fun lemmaSamePrefixThenSameSuffix!552 (List!6076 List!6076 List!6076 List!6076 List!6076) Unit!11078)

(assert (=> b!607433 (= lt!259411 (lemmaSamePrefixThenSameSuffix!552 lt!259385 suffix!1342 lt!259385 lt!259402 lt!259396))))

(declare-fun getSuffix!356 (List!6076 List!6076) List!6076)

(assert (=> b!607433 (= lt!259402 (getSuffix!356 lt!259396 lt!259385))))

(declare-fun e!368121 () Bool)

(assert (=> b!607445 (= e!368121 (and tp!188527 tp!188519))))

(declare-fun b!607446 () Bool)

(declare-fun get!2331 (Option!1562) tuple2!6944)

(assert (=> b!607446 (= e!368103 (= (_1!3736 (get!2331 lt!259410)) (_1!3736 (v!16464 lt!259410))))))

(declare-fun b!607447 () Bool)

(declare-fun res!263257 () Bool)

(assert (=> b!607447 (=> res!263257 e!368124)))

(declare-fun matchR!648 (Regex!1545 List!6076) Bool)

(assert (=> b!607447 (= res!263257 (not (matchR!648 (regex!1211 (rule!1995 token!491)) input!2705)))))

(declare-fun b!607448 () Bool)

(declare-fun res!263243 () Bool)

(assert (=> b!607448 (=> res!263243 e!368124)))

(declare-fun lt!259390 () List!6076)

(assert (=> b!607448 (= res!263243 (not (= (++!1699 lt!259406 lt!259390) input!2705)))))

(declare-fun b!607449 () Bool)

(declare-fun e!368112 () Bool)

(assert (=> b!607449 (= e!368119 e!368112)))

(declare-fun res!263260 () Bool)

(assert (=> b!607449 (=> (not res!263260) (not e!368112))))

(declare-fun lt!259384 () tuple2!6944)

(assert (=> b!607449 (= res!263260 (and (= (_1!3736 lt!259384) token!491) (= (_2!3736 lt!259384) suffix!1342)))))

(assert (=> b!607449 (= lt!259384 (get!2331 lt!259398))))

(declare-fun b!607450 () Bool)

(declare-fun e!368111 () Bool)

(assert (=> b!607450 (= e!368112 e!368111)))

(declare-fun res!263262 () Bool)

(assert (=> b!607450 (=> (not res!263262) (not e!368111))))

(assert (=> b!607450 (= res!263262 ((_ is Some!1561) lt!259410))))

(assert (=> b!607450 (= lt!259410 (maxPrefix!795 thiss!22590 rules!3103 input!2705))))

(declare-fun b!607451 () Bool)

(declare-fun Unit!11081 () Unit!11078)

(assert (=> b!607451 (= e!368106 Unit!11081)))

(assert (=> b!607451 false))

(declare-fun b!607452 () Bool)

(declare-fun res!263258 () Bool)

(assert (=> b!607452 (=> res!263258 e!368124)))

(assert (=> b!607452 (= res!263258 (not (isPrefix!839 lt!259385 input!2705)))))

(declare-fun tp!188520 () Bool)

(declare-fun b!607453 () Bool)

(declare-fun e!368115 () Bool)

(assert (=> b!607453 (= e!368115 (and tp!188520 (inv!7714 (tag!1473 (h!11469 rules!3103))) (inv!7717 (transformation!1211 (h!11469 rules!3103))) e!368121))))

(declare-fun b!607454 () Bool)

(declare-fun e!368107 () Bool)

(assert (=> b!607454 (= e!368107 (not e!368127))))

(declare-fun res!263261 () Bool)

(assert (=> b!607454 (=> res!263261 e!368127)))

(declare-fun lt!259412 () List!6076)

(assert (=> b!607454 (= res!263261 (not (isPrefix!839 input!2705 lt!259412)))))

(assert (=> b!607454 (isPrefix!839 lt!259385 lt!259412)))

(declare-fun lt!259395 () Unit!11078)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!684 (List!6076 List!6076) Unit!11078)

(assert (=> b!607454 (= lt!259395 (lemmaConcatTwoListThenFirstIsPrefix!684 lt!259385 suffix!1342))))

(assert (=> b!607454 (isPrefix!839 input!2705 lt!259396)))

(declare-fun lt!259408 () Unit!11078)

(assert (=> b!607454 (= lt!259408 (lemmaConcatTwoListThenFirstIsPrefix!684 input!2705 suffix!1342))))

(assert (=> b!607454 e!368126))

(declare-fun res!263248 () Bool)

(assert (=> b!607454 (=> (not res!263248) (not e!368126))))

(assert (=> b!607454 (= res!263248 (= (value!39380 (_1!3736 (v!16464 lt!259410))) lt!259400))))

(assert (=> b!607454 (= lt!259400 (apply!1464 (transformation!1211 (rule!1995 (_1!3736 (v!16464 lt!259410)))) (seqFromList!1387 lt!259406)))))

(declare-fun lt!259397 () Unit!11078)

(declare-fun lemmaInv!319 (TokenValueInjection!2238) Unit!11078)

(assert (=> b!607454 (= lt!259397 (lemmaInv!319 (transformation!1211 (rule!1995 token!491))))))

(declare-fun lt!259399 () Unit!11078)

(assert (=> b!607454 (= lt!259399 (lemmaInv!319 (transformation!1211 (rule!1995 (_1!3736 (v!16464 lt!259410))))))))

(declare-fun ruleValid!409 (LexerInterface!1097 Rule!2222) Bool)

(assert (=> b!607454 (ruleValid!409 thiss!22590 (rule!1995 token!491))))

(declare-fun lt!259409 () Unit!11078)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!256 (LexerInterface!1097 Rule!2222 List!6078) Unit!11078)

(assert (=> b!607454 (= lt!259409 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!256 thiss!22590 (rule!1995 token!491) rules!3103))))

(assert (=> b!607454 (ruleValid!409 thiss!22590 (rule!1995 (_1!3736 (v!16464 lt!259410))))))

(declare-fun lt!259401 () Unit!11078)

(assert (=> b!607454 (= lt!259401 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!256 thiss!22590 (rule!1995 (_1!3736 (v!16464 lt!259410))) rules!3103))))

(assert (=> b!607454 (isPrefix!839 input!2705 input!2705)))

(declare-fun lt!259386 () Unit!11078)

(declare-fun lemmaIsPrefixRefl!575 (List!6076 List!6076) Unit!11078)

(assert (=> b!607454 (= lt!259386 (lemmaIsPrefixRefl!575 input!2705 input!2705))))

(assert (=> b!607454 (= (_2!3736 (v!16464 lt!259410)) lt!259390)))

(declare-fun lt!259388 () Unit!11078)

(assert (=> b!607454 (= lt!259388 (lemmaSamePrefixThenSameSuffix!552 lt!259406 (_2!3736 (v!16464 lt!259410)) lt!259406 lt!259390 input!2705))))

(assert (=> b!607454 (= lt!259390 (getSuffix!356 input!2705 lt!259406))))

(assert (=> b!607454 (isPrefix!839 lt!259406 lt!259393)))

(assert (=> b!607454 (= lt!259393 (++!1699 lt!259406 (_2!3736 (v!16464 lt!259410))))))

(declare-fun lt!259403 () Unit!11078)

(assert (=> b!607454 (= lt!259403 (lemmaConcatTwoListThenFirstIsPrefix!684 lt!259406 (_2!3736 (v!16464 lt!259410))))))

(declare-fun lt!259405 () Unit!11078)

(declare-fun lemmaCharactersSize!270 (Token!2158) Unit!11078)

(assert (=> b!607454 (= lt!259405 (lemmaCharactersSize!270 token!491))))

(declare-fun lt!259392 () Unit!11078)

(assert (=> b!607454 (= lt!259392 (lemmaCharactersSize!270 (_1!3736 (v!16464 lt!259410))))))

(declare-fun lt!259407 () Unit!11078)

(assert (=> b!607454 (= lt!259407 e!368106)))

(declare-fun c!112556 () Bool)

(assert (=> b!607454 (= c!112556 (> lt!259389 lt!259383))))

(assert (=> b!607454 (= lt!259383 (size!4775 lt!259385))))

(assert (=> b!607454 (= lt!259389 (size!4775 lt!259406))))

(assert (=> b!607454 (= lt!259406 (list!2552 (charsOf!840 (_1!3736 (v!16464 lt!259410)))))))

(declare-fun lt!259391 () tuple2!6944)

(assert (=> b!607454 (= lt!259410 (Some!1561 lt!259391))))

(assert (=> b!607454 (= lt!259391 (tuple2!6945 (_1!3736 (v!16464 lt!259410)) (_2!3736 (v!16464 lt!259410))))))

(declare-fun lt!259387 () Unit!11078)

(declare-fun lemmaConcatSameAndSameSizesThenSameLists!284 (List!6076 List!6076 List!6076 List!6076) Unit!11078)

(assert (=> b!607454 (= lt!259387 (lemmaConcatSameAndSameSizesThenSameLists!284 lt!259385 suffix!1342 input!2705 suffix!1342))))

(assert (=> b!607455 (= e!368118 (and tp!188524 tp!188525))))

(declare-fun b!607456 () Bool)

(assert (=> b!607456 (= e!368126 (and (= (size!4774 (_1!3736 (v!16464 lt!259410))) lt!259389) (= (originalCharacters!1250 (_1!3736 (v!16464 lt!259410))) lt!259406) (= lt!259391 (tuple2!6945 (Token!2159 lt!259400 (rule!1995 (_1!3736 (v!16464 lt!259410))) lt!259389 lt!259406) lt!259390))))))

(declare-fun b!607457 () Bool)

(assert (=> b!607457 (= e!368124 (= lt!259390 (_2!3736 (v!16464 lt!259410))))))

(declare-fun b!607458 () Bool)

(declare-fun tp!188528 () Bool)

(assert (=> b!607458 (= e!368105 (and e!368115 tp!188528))))

(declare-fun b!607459 () Bool)

(declare-fun res!263245 () Bool)

(assert (=> b!607459 (=> res!263245 e!368124)))

(assert (=> b!607459 (= res!263245 (not (= (getSuffix!356 input!2705 input!2705) Nil!6066)))))

(declare-fun b!607460 () Bool)

(assert (=> b!607460 (= e!368113 (and (= (size!4774 token!491) lt!259383) (= (originalCharacters!1250 token!491) lt!259385) (= (tuple2!6945 token!491 suffix!1342) (tuple2!6945 (Token!2159 lt!259404 (rule!1995 token!491) lt!259383 lt!259385) lt!259402))))))

(declare-fun b!607461 () Bool)

(declare-fun res!263244 () Bool)

(assert (=> b!607461 (=> res!263244 e!368124)))

(declare-fun contains!1427 (List!6078 Rule!2222) Bool)

(assert (=> b!607461 (= res!263244 (not (contains!1427 rules!3103 (rule!1995 token!491))))))

(declare-fun b!607462 () Bool)

(declare-fun tp!188526 () Bool)

(assert (=> b!607462 (= e!368108 (and tp_is_empty!3445 tp!188526))))

(declare-fun b!607463 () Bool)

(assert (=> b!607463 (= e!368111 e!368107)))

(declare-fun res!263246 () Bool)

(assert (=> b!607463 (=> (not res!263246) (not e!368107))))

(assert (=> b!607463 (= res!263246 (= lt!259412 lt!259396))))

(assert (=> b!607463 (= lt!259412 (++!1699 lt!259385 suffix!1342))))

(assert (= (and start!58016 res!263256) b!607440))

(assert (= (and b!607440 res!263259) b!607443))

(assert (= (and b!607443 res!263252) b!607429))

(assert (= (and b!607429 res!263242) b!607441))

(assert (= (and b!607441 res!263250) b!607435))

(assert (= (and b!607435 res!263255) b!607449))

(assert (= (and b!607449 res!263260) b!607450))

(assert (= (and b!607450 res!263262) b!607463))

(assert (= (and b!607463 res!263246) b!607454))

(assert (= (and b!607454 c!112556) b!607451))

(assert (= (and b!607454 (not c!112556)) b!607439))

(assert (= (and b!607454 res!263248) b!607436))

(assert (= (and b!607436 res!263240) b!607456))

(assert (= (and b!607454 (not res!263261)) b!607433))

(assert (= (and b!607433 res!263251) b!607444))

(assert (= (and b!607444 res!263254) b!607460))

(assert (= (and b!607433 res!263249) b!607430))

(assert (= (and b!607430 (not res!263263)) b!607442))

(assert (= (and b!607442 res!263247) b!607446))

(assert (= (and b!607433 (not res!263253)) b!607461))

(assert (= (and b!607461 (not res!263244)) b!607447))

(assert (= (and b!607447 (not res!263257)) b!607452))

(assert (= (and b!607452 (not res!263258)) b!607459))

(assert (= (and b!607459 (not res!263245)) b!607434))

(assert (= (and b!607434 (not res!263264)) b!607431))

(assert (= (and b!607431 (not res!263241)) b!607448))

(assert (= (and b!607448 (not res!263243)) b!607457))

(assert (= (and start!58016 ((_ is Cons!6066) suffix!1342)) b!607462))

(assert (= b!607453 b!607445))

(assert (= b!607458 b!607453))

(assert (= (and start!58016 ((_ is Cons!6068) rules!3103)) b!607458))

(assert (= b!607437 b!607455))

(assert (= b!607432 b!607437))

(assert (= start!58016 b!607432))

(assert (= (and start!58016 ((_ is Cons!6066) input!2705)) b!607438))

(declare-fun m!874317 () Bool)

(assert (=> b!607432 m!874317))

(declare-fun m!874319 () Bool)

(assert (=> b!607440 m!874319))

(declare-fun m!874321 () Bool)

(assert (=> b!607435 m!874321))

(declare-fun m!874323 () Bool)

(assert (=> b!607435 m!874323))

(declare-fun m!874325 () Bool)

(assert (=> b!607435 m!874325))

(declare-fun m!874327 () Bool)

(assert (=> b!607453 m!874327))

(declare-fun m!874329 () Bool)

(assert (=> b!607453 m!874329))

(declare-fun m!874331 () Bool)

(assert (=> b!607452 m!874331))

(declare-fun m!874333 () Bool)

(assert (=> b!607443 m!874333))

(declare-fun m!874335 () Bool)

(assert (=> b!607431 m!874335))

(declare-fun m!874337 () Bool)

(assert (=> b!607433 m!874337))

(declare-fun m!874339 () Bool)

(assert (=> b!607433 m!874339))

(declare-fun m!874341 () Bool)

(assert (=> b!607433 m!874341))

(declare-fun m!874343 () Bool)

(assert (=> b!607433 m!874343))

(declare-fun m!874345 () Bool)

(assert (=> b!607433 m!874345))

(assert (=> b!607433 m!874339))

(declare-fun m!874347 () Bool)

(assert (=> b!607433 m!874347))

(declare-fun m!874349 () Bool)

(assert (=> b!607433 m!874349))

(declare-fun m!874351 () Bool)

(assert (=> b!607433 m!874351))

(declare-fun m!874353 () Bool)

(assert (=> b!607454 m!874353))

(declare-fun m!874355 () Bool)

(assert (=> b!607454 m!874355))

(declare-fun m!874357 () Bool)

(assert (=> b!607454 m!874357))

(declare-fun m!874359 () Bool)

(assert (=> b!607454 m!874359))

(declare-fun m!874361 () Bool)

(assert (=> b!607454 m!874361))

(declare-fun m!874363 () Bool)

(assert (=> b!607454 m!874363))

(declare-fun m!874365 () Bool)

(assert (=> b!607454 m!874365))

(declare-fun m!874367 () Bool)

(assert (=> b!607454 m!874367))

(declare-fun m!874369 () Bool)

(assert (=> b!607454 m!874369))

(declare-fun m!874371 () Bool)

(assert (=> b!607454 m!874371))

(declare-fun m!874373 () Bool)

(assert (=> b!607454 m!874373))

(declare-fun m!874375 () Bool)

(assert (=> b!607454 m!874375))

(declare-fun m!874377 () Bool)

(assert (=> b!607454 m!874377))

(assert (=> b!607454 m!874357))

(declare-fun m!874379 () Bool)

(assert (=> b!607454 m!874379))

(declare-fun m!874381 () Bool)

(assert (=> b!607454 m!874381))

(declare-fun m!874383 () Bool)

(assert (=> b!607454 m!874383))

(declare-fun m!874385 () Bool)

(assert (=> b!607454 m!874385))

(declare-fun m!874387 () Bool)

(assert (=> b!607454 m!874387))

(declare-fun m!874389 () Bool)

(assert (=> b!607454 m!874389))

(declare-fun m!874391 () Bool)

(assert (=> b!607454 m!874391))

(declare-fun m!874393 () Bool)

(assert (=> b!607454 m!874393))

(assert (=> b!607454 m!874355))

(declare-fun m!874395 () Bool)

(assert (=> b!607454 m!874395))

(declare-fun m!874397 () Bool)

(assert (=> b!607454 m!874397))

(declare-fun m!874399 () Bool)

(assert (=> b!607454 m!874399))

(declare-fun m!874401 () Bool)

(assert (=> b!607454 m!874401))

(declare-fun m!874403 () Bool)

(assert (=> b!607454 m!874403))

(declare-fun m!874405 () Bool)

(assert (=> b!607454 m!874405))

(declare-fun m!874407 () Bool)

(assert (=> b!607449 m!874407))

(declare-fun m!874409 () Bool)

(assert (=> b!607429 m!874409))

(declare-fun m!874411 () Bool)

(assert (=> b!607450 m!874411))

(declare-fun m!874413 () Bool)

(assert (=> b!607442 m!874413))

(declare-fun m!874415 () Bool)

(assert (=> b!607459 m!874415))

(declare-fun m!874417 () Bool)

(assert (=> b!607437 m!874417))

(declare-fun m!874419 () Bool)

(assert (=> b!607437 m!874419))

(declare-fun m!874421 () Bool)

(assert (=> b!607448 m!874421))

(declare-fun m!874423 () Bool)

(assert (=> b!607436 m!874423))

(declare-fun m!874425 () Bool)

(assert (=> b!607447 m!874425))

(declare-fun m!874427 () Bool)

(assert (=> start!58016 m!874427))

(declare-fun m!874429 () Bool)

(assert (=> b!607441 m!874429))

(assert (=> b!607441 m!874429))

(declare-fun m!874431 () Bool)

(assert (=> b!607441 m!874431))

(declare-fun m!874433 () Bool)

(assert (=> b!607461 m!874433))

(declare-fun m!874435 () Bool)

(assert (=> b!607446 m!874435))

(declare-fun m!874437 () Bool)

(assert (=> b!607463 m!874437))

(declare-fun m!874439 () Bool)

(assert (=> b!607444 m!874439))

(check-sat (not b!607440) (not b!607438) (not b!607463) (not b!607461) b_and!60153 (not b!607429) tp_is_empty!3445 b_and!60151 (not b!607454) (not b_next!17301) (not b!607436) (not b!607437) b_and!60157 (not b!607446) (not b!607452) (not b!607459) (not b_next!17305) (not b!607444) (not b!607433) (not b!607443) (not b_next!17307) (not b!607442) (not b!607458) (not b!607441) (not b_next!17303) (not start!58016) (not b!607435) (not b!607432) (not b!607453) (not b!607462) (not b!607449) (not b!607447) (not b!607431) (not b!607450) (not b!607448) b_and!60155)
(check-sat (not b_next!17305) (not b_next!17307) (not b_next!17303) b_and!60153 b_and!60151 b_and!60155 (not b_next!17301) b_and!60157)
