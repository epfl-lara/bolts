; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!118458 () Bool)

(assert start!118458)

(declare-fun b!1331485 () Bool)

(declare-fun b_free!32235 () Bool)

(declare-fun b_next!32939 () Bool)

(assert (=> b!1331485 (= b_free!32235 (not b_next!32939))))

(declare-fun tp!385320 () Bool)

(declare-fun b_and!88951 () Bool)

(assert (=> b!1331485 (= tp!385320 b_and!88951)))

(declare-fun b_free!32237 () Bool)

(declare-fun b_next!32941 () Bool)

(assert (=> b!1331485 (= b_free!32237 (not b_next!32941))))

(declare-fun tp!385311 () Bool)

(declare-fun b_and!88953 () Bool)

(assert (=> b!1331485 (= tp!385311 b_and!88953)))

(declare-fun b!1331497 () Bool)

(declare-fun b_free!32239 () Bool)

(declare-fun b_next!32943 () Bool)

(assert (=> b!1331497 (= b_free!32239 (not b_next!32943))))

(declare-fun tp!385312 () Bool)

(declare-fun b_and!88955 () Bool)

(assert (=> b!1331497 (= tp!385312 b_and!88955)))

(declare-fun b_free!32241 () Bool)

(declare-fun b_next!32945 () Bool)

(assert (=> b!1331497 (= b_free!32241 (not b_next!32945))))

(declare-fun tp!385321 () Bool)

(declare-fun b_and!88957 () Bool)

(assert (=> b!1331497 (= tp!385321 b_and!88957)))

(declare-fun b!1331470 () Bool)

(declare-fun b_free!32243 () Bool)

(declare-fun b_next!32947 () Bool)

(assert (=> b!1331470 (= b_free!32243 (not b_next!32947))))

(declare-fun tp!385322 () Bool)

(declare-fun b_and!88959 () Bool)

(assert (=> b!1331470 (= tp!385322 b_and!88959)))

(declare-fun b_free!32245 () Bool)

(declare-fun b_next!32949 () Bool)

(assert (=> b!1331470 (= b_free!32245 (not b_next!32949))))

(declare-fun tp!385313 () Bool)

(declare-fun b_and!88961 () Bool)

(assert (=> b!1331470 (= tp!385313 b_and!88961)))

(declare-fun b!1331494 () Bool)

(assert (=> b!1331494 true))

(assert (=> b!1331494 true))

(declare-fun b!1331496 () Bool)

(assert (=> b!1331496 true))

(declare-fun b!1331489 () Bool)

(assert (=> b!1331489 true))

(declare-fun bs!331702 () Bool)

(declare-fun b!1331503 () Bool)

(assert (= bs!331702 (and b!1331503 b!1331489)))

(declare-fun lambda!55473 () Int)

(declare-fun lambda!55472 () Int)

(assert (=> bs!331702 (not (= lambda!55473 lambda!55472))))

(assert (=> b!1331503 true))

(declare-fun b!1331465 () Bool)

(declare-fun res!600021 () Bool)

(declare-fun e!852985 () Bool)

(assert (=> b!1331465 (=> (not res!600021) (not e!852985))))

(declare-datatypes ((List!13608 0))(
  ( (Nil!13542) (Cons!13542 (h!18943 (_ BitVec 16)) (t!119017 List!13608)) )
))
(declare-datatypes ((TokenValue!2435 0))(
  ( (FloatLiteralValue!4870 (text!17490 List!13608)) (TokenValueExt!2434 (__x!8699 Int)) (Broken!12175 (value!76439 List!13608)) (Object!2500) (End!2435) (Def!2435) (Underscore!2435) (Match!2435) (Else!2435) (Error!2435) (Case!2435) (If!2435) (Extends!2435) (Abstract!2435) (Class!2435) (Val!2435) (DelimiterValue!4870 (del!2495 List!13608)) (KeywordValue!2441 (value!76440 List!13608)) (CommentValue!4870 (value!76441 List!13608)) (WhitespaceValue!4870 (value!76442 List!13608)) (IndentationValue!2435 (value!76443 List!13608)) (String!16410) (Int32!2435) (Broken!12176 (value!76444 List!13608)) (Boolean!2436) (Unit!19662) (OperatorValue!2438 (op!2495 List!13608)) (IdentifierValue!4870 (value!76445 List!13608)) (IdentifierValue!4871 (value!76446 List!13608)) (WhitespaceValue!4871 (value!76447 List!13608)) (True!4870) (False!4870) (Broken!12177 (value!76448 List!13608)) (Broken!12178 (value!76449 List!13608)) (True!4871) (RightBrace!2435) (RightBracket!2435) (Colon!2435) (Null!2435) (Comma!2435) (LeftBracket!2435) (False!4871) (LeftBrace!2435) (ImaginaryLiteralValue!2435 (text!17491 List!13608)) (StringLiteralValue!7305 (value!76450 List!13608)) (EOFValue!2435 (value!76451 List!13608)) (IdentValue!2435 (value!76452 List!13608)) (DelimiterValue!4871 (value!76453 List!13608)) (DedentValue!2435 (value!76454 List!13608)) (NewLineValue!2435 (value!76455 List!13608)) (IntegerValue!7305 (value!76456 (_ BitVec 32)) (text!17492 List!13608)) (IntegerValue!7306 (value!76457 Int) (text!17493 List!13608)) (Times!2435) (Or!2435) (Equal!2435) (Minus!2435) (Broken!12179 (value!76458 List!13608)) (And!2435) (Div!2435) (LessEqual!2435) (Mod!2435) (Concat!6094) (Not!2435) (Plus!2435) (SpaceValue!2435 (value!76459 List!13608)) (IntegerValue!7307 (value!76460 Int) (text!17494 List!13608)) (StringLiteralValue!7306 (text!17495 List!13608)) (FloatLiteralValue!4871 (text!17496 List!13608)) (BytesLiteralValue!2435 (value!76461 List!13608)) (CommentValue!4871 (value!76462 List!13608)) (StringLiteralValue!7307 (value!76463 List!13608)) (ErrorTokenValue!2435 (msg!2496 List!13608)) )
))
(declare-datatypes ((C!7608 0))(
  ( (C!7609 (val!4364 Int)) )
))
(declare-datatypes ((List!13609 0))(
  ( (Nil!13543) (Cons!13543 (h!18944 C!7608) (t!119018 List!13609)) )
))
(declare-datatypes ((IArray!8925 0))(
  ( (IArray!8926 (innerList!4520 List!13609)) )
))
(declare-datatypes ((Conc!4460 0))(
  ( (Node!4460 (left!11630 Conc!4460) (right!11960 Conc!4460) (csize!9150 Int) (cheight!4671 Int)) (Leaf!6829 (xs!7175 IArray!8925) (csize!9151 Int)) (Empty!4460) )
))
(declare-datatypes ((BalanceConc!8860 0))(
  ( (BalanceConc!8861 (c!218202 Conc!4460)) )
))
(declare-datatypes ((Regex!3659 0))(
  ( (ElementMatch!3659 (c!218203 C!7608)) (Concat!6095 (regOne!7830 Regex!3659) (regTwo!7830 Regex!3659)) (EmptyExpr!3659) (Star!3659 (reg!3988 Regex!3659)) (EmptyLang!3659) (Union!3659 (regOne!7831 Regex!3659) (regTwo!7831 Regex!3659)) )
))
(declare-datatypes ((String!16411 0))(
  ( (String!16412 (value!76464 String)) )
))
(declare-datatypes ((TokenValueInjection!4530 0))(
  ( (TokenValueInjection!4531 (toValue!3576 Int) (toChars!3435 Int)) )
))
(declare-datatypes ((Rule!4490 0))(
  ( (Rule!4491 (regex!2345 Regex!3659) (tag!2607 String!16411) (isSeparator!2345 Bool) (transformation!2345 TokenValueInjection!4530)) )
))
(declare-datatypes ((List!13610 0))(
  ( (Nil!13544) (Cons!13544 (h!18945 Rule!4490) (t!119019 List!13610)) )
))
(declare-fun rules!2550 () List!13610)

(declare-fun isEmpty!8076 (List!13610) Bool)

(assert (=> b!1331465 (= res!600021 (not (isEmpty!8076 rules!2550)))))

(declare-fun e!852986 () Bool)

(declare-fun b!1331466 () Bool)

(declare-fun tp!385315 () Bool)

(declare-fun e!852977 () Bool)

(declare-datatypes ((Token!4352 0))(
  ( (Token!4353 (value!76465 TokenValue!2435) (rule!4090 Rule!4490) (size!11032 Int) (originalCharacters!3207 List!13609)) )
))
(declare-fun t2!34 () Token!4352)

(declare-fun inv!21 (TokenValue!2435) Bool)

(assert (=> b!1331466 (= e!852986 (and (inv!21 (value!76465 t2!34)) e!852977 tp!385315))))

(declare-fun b!1331467 () Bool)

(declare-fun e!852976 () Bool)

(declare-fun e!852959 () Bool)

(declare-fun tp!385314 () Bool)

(assert (=> b!1331467 (= e!852976 (and e!852959 tp!385314))))

(declare-fun b!1331468 () Bool)

(declare-fun e!852987 () Bool)

(declare-fun e!852984 () Bool)

(assert (=> b!1331468 (= e!852987 e!852984)))

(declare-fun res!600027 () Bool)

(assert (=> b!1331468 (=> res!600027 e!852984)))

(declare-fun lt!440578 () Rule!4490)

(declare-fun t1!34 () Token!4352)

(assert (=> b!1331468 (= res!600027 (or (isSeparator!2345 lt!440578) (not (isSeparator!2345 (rule!4090 t1!34))) (isSeparator!2345 (rule!4090 t2!34))))))

(declare-fun lt!440597 () Regex!3659)

(assert (=> b!1331468 (= (regex!2345 lt!440578) lt!440597)))

(declare-fun b!1331469 () Bool)

(declare-fun res!600005 () Bool)

(declare-fun e!852989 () Bool)

(assert (=> b!1331469 (=> (not res!600005) (not e!852989))))

(declare-fun sepAndNonSepRulesDisjointChars!718 (List!13610 List!13610) Bool)

(assert (=> b!1331469 (= res!600005 (sepAndNonSepRulesDisjointChars!718 rules!2550 rules!2550))))

(declare-fun e!852964 () Bool)

(assert (=> b!1331470 (= e!852964 (and tp!385322 tp!385313))))

(declare-fun b!1331471 () Bool)

(declare-fun e!852982 () Bool)

(declare-fun e!852978 () Bool)

(assert (=> b!1331471 (= e!852982 e!852978)))

(declare-fun res!600032 () Bool)

(assert (=> b!1331471 (=> res!600032 e!852978)))

(declare-fun lt!440603 () Bool)

(assert (=> b!1331471 (= res!600032 lt!440603)))

(declare-datatypes ((Unit!19663 0))(
  ( (Unit!19664) )
))
(declare-fun lt!440594 () Unit!19663)

(declare-fun e!852973 () Unit!19663)

(assert (=> b!1331471 (= lt!440594 e!852973)))

(declare-fun c!218200 () Bool)

(assert (=> b!1331471 (= c!218200 lt!440603)))

(declare-fun lt!440586 () C!7608)

(declare-fun contains!2451 (List!13609 C!7608) Bool)

(declare-fun usedCharacters!210 (Regex!3659) List!13609)

(assert (=> b!1331471 (= lt!440603 (not (contains!2451 (usedCharacters!210 (regex!2345 (rule!4090 t1!34))) lt!440586)))))

(declare-fun b!1331472 () Bool)

(declare-fun res!600033 () Bool)

(declare-fun e!852969 () Bool)

(assert (=> b!1331472 (=> res!600033 e!852969)))

(declare-fun lt!440580 () List!13609)

(declare-fun lt!440593 () C!7608)

(assert (=> b!1331472 (= res!600033 (not (contains!2451 lt!440580 lt!440593)))))

(declare-fun b!1331473 () Bool)

(declare-fun e!852962 () Bool)

(declare-fun e!852966 () Bool)

(assert (=> b!1331473 (= e!852962 e!852966)))

(declare-fun res!600031 () Bool)

(assert (=> b!1331473 (=> res!600031 e!852966)))

(declare-datatypes ((List!13611 0))(
  ( (Nil!13545) (Cons!13545 (h!18946 Token!4352) (t!119020 List!13611)) )
))
(declare-datatypes ((IArray!8927 0))(
  ( (IArray!8928 (innerList!4521 List!13611)) )
))
(declare-datatypes ((Conc!4461 0))(
  ( (Node!4461 (left!11631 Conc!4461) (right!11961 Conc!4461) (csize!9152 Int) (cheight!4672 Int)) (Leaf!6830 (xs!7176 IArray!8927) (csize!9153 Int)) (Empty!4461) )
))
(declare-datatypes ((BalanceConc!8862 0))(
  ( (BalanceConc!8863 (c!218204 Conc!4461)) )
))
(declare-datatypes ((tuple2!13190 0))(
  ( (tuple2!13191 (_1!7481 BalanceConc!8862) (_2!7481 BalanceConc!8860)) )
))
(declare-fun lt!440599 () tuple2!13190)

(declare-fun lt!440602 () List!13611)

(declare-fun list!5138 (BalanceConc!8862) List!13611)

(assert (=> b!1331473 (= res!600031 (not (= (list!5138 (_1!7481 lt!440599)) lt!440602)))))

(assert (=> b!1331473 (= lt!440602 (Cons!13545 t1!34 Nil!13545))))

(declare-datatypes ((LexerInterface!2040 0))(
  ( (LexerInterfaceExt!2037 (__x!8700 Int)) (Lexer!2038) )
))
(declare-fun thiss!19762 () LexerInterface!2040)

(declare-fun lt!440600 () BalanceConc!8860)

(declare-fun lex!875 (LexerInterface!2040 List!13610 BalanceConc!8860) tuple2!13190)

(assert (=> b!1331473 (= lt!440599 (lex!875 thiss!19762 rules!2550 lt!440600))))

(declare-fun print!814 (LexerInterface!2040 BalanceConc!8862) BalanceConc!8860)

(declare-fun singletonSeq!942 (Token!4352) BalanceConc!8862)

(assert (=> b!1331473 (= lt!440600 (print!814 thiss!19762 (singletonSeq!942 t1!34)))))

(declare-fun getWitness!284 (List!13610 Int) Rule!4490)

(assert (=> b!1331473 (= lt!440578 (getWitness!284 rules!2550 lambda!55472))))

(declare-fun b!1331474 () Bool)

(declare-fun e!852979 () Bool)

(declare-fun e!852970 () Bool)

(assert (=> b!1331474 (= e!852979 e!852970)))

(declare-fun res!600011 () Bool)

(assert (=> b!1331474 (=> res!600011 e!852970)))

(declare-fun lt!440587 () List!13609)

(declare-datatypes ((tuple2!13192 0))(
  ( (tuple2!13193 (_1!7482 Token!4352) (_2!7482 List!13609)) )
))
(declare-datatypes ((Option!2616 0))(
  ( (None!2615) (Some!2615 (v!21244 tuple2!13192)) )
))
(declare-fun maxPrefix!1050 (LexerInterface!2040 List!13610 List!13609) Option!2616)

(assert (=> b!1331474 (= res!600011 (not (= (maxPrefix!1050 thiss!19762 rules!2550 lt!440587) (Some!2615 (tuple2!13193 t2!34 Nil!13543)))))))

(declare-fun lt!440591 () BalanceConc!8860)

(declare-fun list!5139 (BalanceConc!8860) List!13609)

(assert (=> b!1331474 (= lt!440587 (list!5139 lt!440591))))

(declare-fun b!1331475 () Bool)

(declare-fun res!600008 () Bool)

(assert (=> b!1331475 (=> (not res!600008) (not e!852985))))

(declare-fun rulesInvariant!1910 (LexerInterface!2040 List!13610) Bool)

(assert (=> b!1331475 (= res!600008 (rulesInvariant!1910 thiss!19762 rules!2550))))

(declare-fun b!1331476 () Bool)

(assert (=> b!1331476 (= e!852978 e!852987)))

(declare-fun res!600025 () Bool)

(assert (=> b!1331476 (=> res!600025 e!852987)))

(declare-fun lt!440596 () Bool)

(assert (=> b!1331476 (= res!600025 lt!440596)))

(declare-fun lt!440590 () Unit!19663)

(declare-fun e!852981 () Unit!19663)

(assert (=> b!1331476 (= lt!440590 e!852981)))

(declare-fun c!218201 () Bool)

(assert (=> b!1331476 (= c!218201 lt!440596)))

(assert (=> b!1331476 (= lt!440596 (not (contains!2451 (usedCharacters!210 (regex!2345 (rule!4090 t2!34))) lt!440593)))))

(declare-fun b!1331477 () Bool)

(assert (=> b!1331477 (= e!852985 e!852989)))

(declare-fun res!600029 () Bool)

(assert (=> b!1331477 (=> (not res!600029) (not e!852989))))

(declare-fun size!11033 (BalanceConc!8860) Int)

(assert (=> b!1331477 (= res!600029 (> (size!11033 lt!440591) 0))))

(declare-fun charsOf!1317 (Token!4352) BalanceConc!8860)

(assert (=> b!1331477 (= lt!440591 (charsOf!1317 t2!34))))

(declare-fun b!1331478 () Bool)

(declare-fun res!600006 () Bool)

(assert (=> b!1331478 (=> res!600006 e!852970)))

(declare-fun contains!2452 (List!13610 Rule!4490) Bool)

(assert (=> b!1331478 (= res!600006 (not (contains!2452 rules!2550 (rule!4090 t2!34))))))

(declare-fun b!1331479 () Bool)

(declare-fun res!600020 () Bool)

(assert (=> b!1331479 (=> res!600020 e!852966)))

(assert (=> b!1331479 (= res!600020 (not (contains!2452 rules!2550 (rule!4090 t1!34))))))

(declare-fun b!1331480 () Bool)

(declare-fun Unit!19665 () Unit!19663)

(assert (=> b!1331480 (= e!852981 Unit!19665)))

(declare-fun lt!440585 () Unit!19663)

(declare-fun lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!156 (Regex!3659 List!13609 C!7608) Unit!19663)

(declare-fun head!2347 (List!13609) C!7608)

(assert (=> b!1331480 (= lt!440585 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!156 (regex!2345 (rule!4090 t2!34)) lt!440587 (head!2347 lt!440587)))))

(assert (=> b!1331480 false))

(declare-fun b!1331481 () Bool)

(declare-fun res!600028 () Bool)

(assert (=> b!1331481 (=> res!600028 e!852969)))

(declare-fun lt!440606 () Regex!3659)

(declare-fun matchR!1661 (Regex!3659 List!13609) Bool)

(assert (=> b!1331481 (= res!600028 (not (matchR!1661 lt!440606 lt!440580)))))

(declare-fun b!1331482 () Bool)

(declare-fun e!852974 () Bool)

(declare-fun e!852965 () Bool)

(declare-fun tp!385319 () Bool)

(assert (=> b!1331482 (= e!852974 (and (inv!21 (value!76465 t1!34)) e!852965 tp!385319))))

(declare-fun b!1331483 () Bool)

(declare-fun e!852975 () Bool)

(assert (=> b!1331483 (= e!852989 e!852975)))

(declare-fun res!600035 () Bool)

(assert (=> b!1331483 (=> (not res!600035) (not e!852975))))

(declare-fun lt!440582 () List!13609)

(declare-fun prefixMatch!172 (Regex!3659 List!13609) Bool)

(assert (=> b!1331483 (= res!600035 (prefixMatch!172 lt!440606 lt!440582))))

(declare-fun rulesRegex!230 (LexerInterface!2040 List!13610) Regex!3659)

(assert (=> b!1331483 (= lt!440606 (rulesRegex!230 thiss!19762 rules!2550))))

(declare-fun lt!440608 () List!13609)

(declare-fun ++!3460 (List!13609 List!13609) List!13609)

(assert (=> b!1331483 (= lt!440582 (++!3460 lt!440608 (Cons!13543 lt!440593 Nil!13543)))))

(declare-fun apply!3147 (BalanceConc!8860 Int) C!7608)

(assert (=> b!1331483 (= lt!440593 (apply!3147 lt!440591 0))))

(declare-fun lt!440604 () BalanceConc!8860)

(assert (=> b!1331483 (= lt!440608 (list!5139 lt!440604))))

(assert (=> b!1331483 (= lt!440604 (charsOf!1317 t1!34))))

(declare-fun b!1331484 () Bool)

(declare-fun res!600037 () Bool)

(assert (=> b!1331484 (=> res!600037 e!852982)))

(assert (=> b!1331484 (= res!600037 (not (matchR!1661 (regex!2345 (rule!4090 t2!34)) lt!440587)))))

(declare-fun e!852972 () Bool)

(assert (=> b!1331485 (= e!852972 (and tp!385320 tp!385311))))

(declare-fun tp!385318 () Bool)

(declare-fun b!1331486 () Bool)

(declare-fun inv!17885 (String!16411) Bool)

(declare-fun inv!17888 (TokenValueInjection!4530) Bool)

(assert (=> b!1331486 (= e!852977 (and tp!385318 (inv!17885 (tag!2607 (rule!4090 t2!34))) (inv!17888 (transformation!2345 (rule!4090 t2!34))) e!852964))))

(declare-fun b!1331487 () Bool)

(declare-fun tp!385317 () Bool)

(assert (=> b!1331487 (= e!852959 (and tp!385317 (inv!17885 (tag!2607 (h!18945 rules!2550))) (inv!17888 (transformation!2345 (h!18945 rules!2550))) e!852972))))

(declare-fun b!1331488 () Bool)

(declare-fun res!600023 () Bool)

(assert (=> b!1331488 (=> (not res!600023) (not e!852985))))

(declare-fun rulesProduceIndividualToken!1009 (LexerInterface!2040 List!13610 Token!4352) Bool)

(assert (=> b!1331488 (= res!600023 (rulesProduceIndividualToken!1009 thiss!19762 rules!2550 t1!34))))

(declare-fun e!852960 () Bool)

(assert (=> b!1331489 (= e!852960 e!852962)))

(declare-fun res!600017 () Bool)

(assert (=> b!1331489 (=> res!600017 e!852962)))

(declare-fun exists!392 (List!13610 Int) Bool)

(assert (=> b!1331489 (= res!600017 (not (exists!392 rules!2550 lambda!55472)))))

(assert (=> b!1331489 (exists!392 rules!2550 lambda!55472)))

(declare-fun lambda!55470 () Int)

(declare-fun lt!440588 () Unit!19663)

(declare-fun lemmaMapContains!88 (List!13610 Int Regex!3659) Unit!19663)

(assert (=> b!1331489 (= lt!440588 (lemmaMapContains!88 rules!2550 lambda!55470 lt!440597))))

(declare-fun b!1331490 () Bool)

(declare-fun res!600030 () Bool)

(assert (=> b!1331490 (=> (not res!600030) (not e!852989))))

(declare-fun separableTokensPredicate!323 (LexerInterface!2040 Token!4352 Token!4352 List!13610) Bool)

(assert (=> b!1331490 (= res!600030 (not (separableTokensPredicate!323 thiss!19762 t1!34 t2!34 rules!2550)))))

(declare-fun b!1331491 () Bool)

(declare-fun e!852961 () Bool)

(assert (=> b!1331491 (= e!852961 e!852969)))

(declare-fun res!600016 () Bool)

(assert (=> b!1331491 (=> res!600016 e!852969)))

(assert (=> b!1331491 (= res!600016 (not (contains!2451 lt!440582 lt!440586)))))

(assert (=> b!1331491 (= lt!440586 (apply!3147 lt!440604 0))))

(declare-fun b!1331492 () Bool)

(declare-fun res!600018 () Bool)

(assert (=> b!1331492 (=> res!600018 e!852969)))

(assert (=> b!1331492 (= res!600018 (not (contains!2451 lt!440582 lt!440593)))))

(declare-fun b!1331493 () Bool)

(declare-fun res!600003 () Bool)

(assert (=> b!1331493 (=> (not res!600003) (not e!852985))))

(assert (=> b!1331493 (= res!600003 (not (= (isSeparator!2345 (rule!4090 t1!34)) (isSeparator!2345 (rule!4090 t2!34)))))))

(declare-fun e!852967 () Bool)

(assert (=> b!1331494 (= e!852975 (not e!852967))))

(declare-fun res!600013 () Bool)

(assert (=> b!1331494 (=> res!600013 e!852967)))

(declare-fun lambda!55469 () Int)

(declare-fun Exists!817 (Int) Bool)

(assert (=> b!1331494 (= res!600013 (not (Exists!817 lambda!55469)))))

(assert (=> b!1331494 (Exists!817 lambda!55469)))

(declare-fun lt!440592 () Unit!19663)

(declare-fun lemmaPrefixMatchThenExistsStringThatMatches!135 (Regex!3659 List!13609) Unit!19663)

(assert (=> b!1331494 (= lt!440592 (lemmaPrefixMatchThenExistsStringThatMatches!135 lt!440606 lt!440582))))

(declare-fun b!1331495 () Bool)

(declare-fun res!600024 () Bool)

(assert (=> b!1331495 (=> res!600024 e!852979)))

(declare-fun lt!440595 () BalanceConc!8860)

(declare-fun lt!440598 () List!13611)

(declare-datatypes ((tuple2!13194 0))(
  ( (tuple2!13195 (_1!7483 List!13611) (_2!7483 List!13609)) )
))
(declare-fun lexList!578 (LexerInterface!2040 List!13610 List!13609) tuple2!13194)

(assert (=> b!1331495 (= res!600024 (not (= (lexList!578 thiss!19762 rules!2550 (list!5139 lt!440595)) (tuple2!13195 lt!440598 Nil!13543))))))

(declare-fun e!852963 () Bool)

(assert (=> b!1331496 (= e!852969 e!852963)))

(declare-fun res!600022 () Bool)

(assert (=> b!1331496 (=> res!600022 e!852963)))

(declare-fun lambda!55471 () Int)

(declare-datatypes ((List!13612 0))(
  ( (Nil!13546) (Cons!13546 (h!18947 Regex!3659) (t!119021 List!13612)) )
))
(declare-fun exists!393 (List!13612 Int) Bool)

(declare-fun map!2984 (List!13610 Int) List!13612)

(assert (=> b!1331496 (= res!600022 (not (exists!393 (map!2984 rules!2550 lambda!55470) lambda!55471)))))

(declare-fun lt!440583 () List!13612)

(assert (=> b!1331496 (exists!393 lt!440583 lambda!55471)))

(declare-fun lt!440581 () Unit!19663)

(declare-fun matchRGenUnionSpec!96 (Regex!3659 List!13612 List!13609) Unit!19663)

(assert (=> b!1331496 (= lt!440581 (matchRGenUnionSpec!96 lt!440606 lt!440583 lt!440580))))

(assert (=> b!1331496 (= lt!440583 (map!2984 rules!2550 lambda!55470))))

(declare-fun e!852968 () Bool)

(assert (=> b!1331497 (= e!852968 (and tp!385312 tp!385321))))

(declare-fun b!1331498 () Bool)

(declare-fun res!600034 () Bool)

(assert (=> b!1331498 (=> res!600034 e!852979)))

(declare-fun lt!440601 () tuple2!13190)

(declare-fun isEmpty!8077 (BalanceConc!8860) Bool)

(assert (=> b!1331498 (= res!600034 (not (isEmpty!8077 (_2!7481 lt!440601))))))

(declare-fun b!1331499 () Bool)

(declare-fun Unit!19666 () Unit!19663)

(assert (=> b!1331499 (= e!852973 Unit!19666)))

(declare-fun lt!440584 () Unit!19663)

(assert (=> b!1331499 (= lt!440584 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!156 (regex!2345 (rule!4090 t1!34)) lt!440608 (head!2347 lt!440608)))))

(assert (=> b!1331499 false))

(declare-fun b!1331500 () Bool)

(assert (=> b!1331500 (= e!852984 (< 0 (size!11033 lt!440604)))))

(assert (=> b!1331500 (not (contains!2451 (usedCharacters!210 (regex!2345 lt!440578)) lt!440586))))

(declare-fun lt!440589 () Unit!19663)

(declare-fun lemmaNonSepRuleNotContainsCharContainedInASepRule!2 (LexerInterface!2040 List!13610 List!13610 Rule!4490 Rule!4490 C!7608) Unit!19663)

(assert (=> b!1331500 (= lt!440589 (lemmaNonSepRuleNotContainsCharContainedInASepRule!2 thiss!19762 rules!2550 rules!2550 lt!440578 (rule!4090 t1!34) lt!440586))))

(declare-fun b!1331501 () Bool)

(declare-fun res!600026 () Bool)

(assert (=> b!1331501 (=> res!600026 e!852969)))

(assert (=> b!1331501 (= res!600026 (not (contains!2451 lt!440580 lt!440586)))))

(declare-fun b!1331502 () Bool)

(assert (=> b!1331502 (= e!852967 e!852961)))

(declare-fun res!600007 () Bool)

(assert (=> b!1331502 (=> res!600007 e!852961)))

(declare-fun getSuffix!515 (List!13609 List!13609) List!13609)

(assert (=> b!1331502 (= res!600007 (not (= lt!440580 (++!3460 lt!440582 (getSuffix!515 lt!440580 lt!440582)))))))

(declare-fun pickWitness!122 (Int) List!13609)

(assert (=> b!1331502 (= lt!440580 (pickWitness!122 lambda!55469))))

(declare-fun res!600012 () Bool)

(assert (=> start!118458 (=> (not res!600012) (not e!852985))))

(get-info :version)

(assert (=> start!118458 (= res!600012 ((_ is Lexer!2038) thiss!19762))))

(assert (=> start!118458 e!852985))

(assert (=> start!118458 true))

(assert (=> start!118458 e!852976))

(declare-fun inv!17889 (Token!4352) Bool)

(assert (=> start!118458 (and (inv!17889 t1!34) e!852974)))

(assert (=> start!118458 (and (inv!17889 t2!34) e!852986)))

(assert (=> b!1331503 (= e!852970 e!852982)))

(declare-fun res!600038 () Bool)

(assert (=> b!1331503 (=> res!600038 e!852982)))

(assert (=> b!1331503 (= res!600038 (not (matchR!1661 (regex!2345 (rule!4090 t1!34)) lt!440608)))))

(declare-fun lt!440579 () Unit!19663)

(declare-fun forallContained!596 (List!13610 Int Rule!4490) Unit!19663)

(assert (=> b!1331503 (= lt!440579 (forallContained!596 rules!2550 lambda!55473 (rule!4090 t2!34)))))

(declare-fun lt!440607 () Unit!19663)

(assert (=> b!1331503 (= lt!440607 (forallContained!596 rules!2550 lambda!55473 (rule!4090 t1!34)))))

(declare-fun lt!440605 () Unit!19663)

(assert (=> b!1331503 (= lt!440605 (forallContained!596 rules!2550 lambda!55473 lt!440578))))

(declare-fun b!1331504 () Bool)

(declare-fun res!600015 () Bool)

(assert (=> b!1331504 (=> res!600015 e!852966)))

(assert (=> b!1331504 (= res!600015 (not (isEmpty!8077 (_2!7481 lt!440599))))))

(declare-fun b!1331505 () Bool)

(declare-fun res!600014 () Bool)

(assert (=> b!1331505 (=> res!600014 e!852970)))

(assert (=> b!1331505 (= res!600014 (not (contains!2452 rules!2550 lt!440578)))))

(declare-fun b!1331506 () Bool)

(declare-fun res!600004 () Bool)

(assert (=> b!1331506 (=> (not res!600004) (not e!852985))))

(assert (=> b!1331506 (= res!600004 (rulesProduceIndividualToken!1009 thiss!19762 rules!2550 t2!34))))

(declare-fun b!1331507 () Bool)

(declare-fun Unit!19667 () Unit!19663)

(assert (=> b!1331507 (= e!852973 Unit!19667)))

(declare-fun b!1331508 () Bool)

(declare-fun res!600009 () Bool)

(assert (=> b!1331508 (=> res!600009 e!852966)))

(assert (=> b!1331508 (= res!600009 (not (= (maxPrefix!1050 thiss!19762 rules!2550 lt!440608) (Some!2615 (tuple2!13193 t1!34 Nil!13543)))))))

(declare-fun b!1331509 () Bool)

(declare-fun Unit!19668 () Unit!19663)

(assert (=> b!1331509 (= e!852981 Unit!19668)))

(declare-fun b!1331510 () Bool)

(assert (=> b!1331510 (= e!852966 e!852979)))

(declare-fun res!600019 () Bool)

(assert (=> b!1331510 (=> res!600019 e!852979)))

(assert (=> b!1331510 (= res!600019 (not (= (list!5138 (_1!7481 lt!440601)) lt!440598)))))

(assert (=> b!1331510 (= lt!440598 (Cons!13545 t2!34 Nil!13545))))

(assert (=> b!1331510 (= lt!440601 (lex!875 thiss!19762 rules!2550 lt!440595))))

(assert (=> b!1331510 (= lt!440595 (print!814 thiss!19762 (singletonSeq!942 t2!34)))))

(declare-fun tp!385316 () Bool)

(declare-fun b!1331511 () Bool)

(assert (=> b!1331511 (= e!852965 (and tp!385316 (inv!17885 (tag!2607 (rule!4090 t1!34))) (inv!17888 (transformation!2345 (rule!4090 t1!34))) e!852968))))

(declare-fun b!1331512 () Bool)

(assert (=> b!1331512 (= e!852963 e!852960)))

(declare-fun res!600036 () Bool)

(assert (=> b!1331512 (=> res!600036 e!852960)))

(declare-fun contains!2453 (List!13612 Regex!3659) Bool)

(assert (=> b!1331512 (= res!600036 (not (contains!2453 (map!2984 rules!2550 lambda!55470) lt!440597)))))

(declare-fun getWitness!285 (List!13612 Int) Regex!3659)

(assert (=> b!1331512 (= lt!440597 (getWitness!285 (map!2984 rules!2550 lambda!55470) lambda!55471))))

(declare-fun b!1331513 () Bool)

(declare-fun res!600010 () Bool)

(assert (=> b!1331513 (=> res!600010 e!852966)))

(assert (=> b!1331513 (= res!600010 (not (= (lexList!578 thiss!19762 rules!2550 (list!5139 lt!440600)) (tuple2!13195 lt!440602 Nil!13543))))))

(assert (= (and start!118458 res!600012) b!1331465))

(assert (= (and b!1331465 res!600021) b!1331475))

(assert (= (and b!1331475 res!600008) b!1331488))

(assert (= (and b!1331488 res!600023) b!1331506))

(assert (= (and b!1331506 res!600004) b!1331493))

(assert (= (and b!1331493 res!600003) b!1331477))

(assert (= (and b!1331477 res!600029) b!1331469))

(assert (= (and b!1331469 res!600005) b!1331490))

(assert (= (and b!1331490 res!600030) b!1331483))

(assert (= (and b!1331483 res!600035) b!1331494))

(assert (= (and b!1331494 (not res!600013)) b!1331502))

(assert (= (and b!1331502 (not res!600007)) b!1331491))

(assert (= (and b!1331491 (not res!600016)) b!1331501))

(assert (= (and b!1331501 (not res!600026)) b!1331492))

(assert (= (and b!1331492 (not res!600018)) b!1331472))

(assert (= (and b!1331472 (not res!600033)) b!1331481))

(assert (= (and b!1331481 (not res!600028)) b!1331496))

(assert (= (and b!1331496 (not res!600022)) b!1331512))

(assert (= (and b!1331512 (not res!600036)) b!1331489))

(assert (= (and b!1331489 (not res!600017)) b!1331473))

(assert (= (and b!1331473 (not res!600031)) b!1331504))

(assert (= (and b!1331504 (not res!600015)) b!1331513))

(assert (= (and b!1331513 (not res!600010)) b!1331508))

(assert (= (and b!1331508 (not res!600009)) b!1331479))

(assert (= (and b!1331479 (not res!600020)) b!1331510))

(assert (= (and b!1331510 (not res!600019)) b!1331498))

(assert (= (and b!1331498 (not res!600034)) b!1331495))

(assert (= (and b!1331495 (not res!600024)) b!1331474))

(assert (= (and b!1331474 (not res!600011)) b!1331478))

(assert (= (and b!1331478 (not res!600006)) b!1331505))

(assert (= (and b!1331505 (not res!600014)) b!1331503))

(assert (= (and b!1331503 (not res!600038)) b!1331484))

(assert (= (and b!1331484 (not res!600037)) b!1331471))

(assert (= (and b!1331471 c!218200) b!1331499))

(assert (= (and b!1331471 (not c!218200)) b!1331507))

(assert (= (and b!1331471 (not res!600032)) b!1331476))

(assert (= (and b!1331476 c!218201) b!1331480))

(assert (= (and b!1331476 (not c!218201)) b!1331509))

(assert (= (and b!1331476 (not res!600025)) b!1331468))

(assert (= (and b!1331468 (not res!600027)) b!1331500))

(assert (= b!1331487 b!1331485))

(assert (= b!1331467 b!1331487))

(assert (= (and start!118458 ((_ is Cons!13544) rules!2550)) b!1331467))

(assert (= b!1331511 b!1331497))

(assert (= b!1331482 b!1331511))

(assert (= start!118458 b!1331482))

(assert (= b!1331486 b!1331470))

(assert (= b!1331466 b!1331486))

(assert (= start!118458 b!1331466))

(declare-fun m!1488629 () Bool)

(assert (=> b!1331477 m!1488629))

(declare-fun m!1488631 () Bool)

(assert (=> b!1331477 m!1488631))

(declare-fun m!1488633 () Bool)

(assert (=> b!1331499 m!1488633))

(assert (=> b!1331499 m!1488633))

(declare-fun m!1488635 () Bool)

(assert (=> b!1331499 m!1488635))

(declare-fun m!1488637 () Bool)

(assert (=> b!1331486 m!1488637))

(declare-fun m!1488639 () Bool)

(assert (=> b!1331486 m!1488639))

(declare-fun m!1488641 () Bool)

(assert (=> b!1331472 m!1488641))

(declare-fun m!1488643 () Bool)

(assert (=> b!1331511 m!1488643))

(declare-fun m!1488645 () Bool)

(assert (=> b!1331511 m!1488645))

(declare-fun m!1488647 () Bool)

(assert (=> b!1331508 m!1488647))

(declare-fun m!1488649 () Bool)

(assert (=> b!1331482 m!1488649))

(declare-fun m!1488651 () Bool)

(assert (=> b!1331494 m!1488651))

(assert (=> b!1331494 m!1488651))

(declare-fun m!1488653 () Bool)

(assert (=> b!1331494 m!1488653))

(declare-fun m!1488655 () Bool)

(assert (=> b!1331490 m!1488655))

(declare-fun m!1488657 () Bool)

(assert (=> start!118458 m!1488657))

(declare-fun m!1488659 () Bool)

(assert (=> start!118458 m!1488659))

(declare-fun m!1488661 () Bool)

(assert (=> b!1331513 m!1488661))

(assert (=> b!1331513 m!1488661))

(declare-fun m!1488663 () Bool)

(assert (=> b!1331513 m!1488663))

(declare-fun m!1488665 () Bool)

(assert (=> b!1331480 m!1488665))

(assert (=> b!1331480 m!1488665))

(declare-fun m!1488667 () Bool)

(assert (=> b!1331480 m!1488667))

(declare-fun m!1488669 () Bool)

(assert (=> b!1331473 m!1488669))

(declare-fun m!1488671 () Bool)

(assert (=> b!1331473 m!1488671))

(declare-fun m!1488673 () Bool)

(assert (=> b!1331473 m!1488673))

(assert (=> b!1331473 m!1488671))

(declare-fun m!1488675 () Bool)

(assert (=> b!1331473 m!1488675))

(declare-fun m!1488677 () Bool)

(assert (=> b!1331473 m!1488677))

(declare-fun m!1488679 () Bool)

(assert (=> b!1331484 m!1488679))

(declare-fun m!1488681 () Bool)

(assert (=> b!1331466 m!1488681))

(declare-fun m!1488683 () Bool)

(assert (=> b!1331491 m!1488683))

(declare-fun m!1488685 () Bool)

(assert (=> b!1331491 m!1488685))

(declare-fun m!1488687 () Bool)

(assert (=> b!1331479 m!1488687))

(declare-fun m!1488689 () Bool)

(assert (=> b!1331469 m!1488689))

(declare-fun m!1488691 () Bool)

(assert (=> b!1331474 m!1488691))

(declare-fun m!1488693 () Bool)

(assert (=> b!1331474 m!1488693))

(declare-fun m!1488695 () Bool)

(assert (=> b!1331500 m!1488695))

(declare-fun m!1488697 () Bool)

(assert (=> b!1331500 m!1488697))

(assert (=> b!1331500 m!1488697))

(declare-fun m!1488699 () Bool)

(assert (=> b!1331500 m!1488699))

(declare-fun m!1488701 () Bool)

(assert (=> b!1331500 m!1488701))

(declare-fun m!1488703 () Bool)

(assert (=> b!1331502 m!1488703))

(assert (=> b!1331502 m!1488703))

(declare-fun m!1488705 () Bool)

(assert (=> b!1331502 m!1488705))

(declare-fun m!1488707 () Bool)

(assert (=> b!1331502 m!1488707))

(declare-fun m!1488709 () Bool)

(assert (=> b!1331510 m!1488709))

(declare-fun m!1488711 () Bool)

(assert (=> b!1331510 m!1488711))

(declare-fun m!1488713 () Bool)

(assert (=> b!1331510 m!1488713))

(assert (=> b!1331510 m!1488713))

(declare-fun m!1488715 () Bool)

(assert (=> b!1331510 m!1488715))

(declare-fun m!1488717 () Bool)

(assert (=> b!1331475 m!1488717))

(declare-fun m!1488719 () Bool)

(assert (=> b!1331465 m!1488719))

(declare-fun m!1488721 () Bool)

(assert (=> b!1331503 m!1488721))

(declare-fun m!1488723 () Bool)

(assert (=> b!1331503 m!1488723))

(declare-fun m!1488725 () Bool)

(assert (=> b!1331503 m!1488725))

(declare-fun m!1488727 () Bool)

(assert (=> b!1331503 m!1488727))

(declare-fun m!1488729 () Bool)

(assert (=> b!1331498 m!1488729))

(declare-fun m!1488731 () Bool)

(assert (=> b!1331496 m!1488731))

(declare-fun m!1488733 () Bool)

(assert (=> b!1331496 m!1488733))

(declare-fun m!1488735 () Bool)

(assert (=> b!1331496 m!1488735))

(assert (=> b!1331496 m!1488731))

(assert (=> b!1331496 m!1488731))

(declare-fun m!1488737 () Bool)

(assert (=> b!1331496 m!1488737))

(declare-fun m!1488739 () Bool)

(assert (=> b!1331501 m!1488739))

(declare-fun m!1488741 () Bool)

(assert (=> b!1331471 m!1488741))

(assert (=> b!1331471 m!1488741))

(declare-fun m!1488743 () Bool)

(assert (=> b!1331471 m!1488743))

(declare-fun m!1488745 () Bool)

(assert (=> b!1331489 m!1488745))

(assert (=> b!1331489 m!1488745))

(declare-fun m!1488747 () Bool)

(assert (=> b!1331489 m!1488747))

(declare-fun m!1488749 () Bool)

(assert (=> b!1331481 m!1488749))

(assert (=> b!1331512 m!1488731))

(assert (=> b!1331512 m!1488731))

(declare-fun m!1488751 () Bool)

(assert (=> b!1331512 m!1488751))

(assert (=> b!1331512 m!1488731))

(assert (=> b!1331512 m!1488731))

(declare-fun m!1488753 () Bool)

(assert (=> b!1331512 m!1488753))

(declare-fun m!1488755 () Bool)

(assert (=> b!1331488 m!1488755))

(declare-fun m!1488757 () Bool)

(assert (=> b!1331504 m!1488757))

(declare-fun m!1488759 () Bool)

(assert (=> b!1331483 m!1488759))

(declare-fun m!1488761 () Bool)

(assert (=> b!1331483 m!1488761))

(declare-fun m!1488763 () Bool)

(assert (=> b!1331483 m!1488763))

(declare-fun m!1488765 () Bool)

(assert (=> b!1331483 m!1488765))

(declare-fun m!1488767 () Bool)

(assert (=> b!1331483 m!1488767))

(declare-fun m!1488769 () Bool)

(assert (=> b!1331483 m!1488769))

(declare-fun m!1488771 () Bool)

(assert (=> b!1331478 m!1488771))

(declare-fun m!1488773 () Bool)

(assert (=> b!1331506 m!1488773))

(declare-fun m!1488775 () Bool)

(assert (=> b!1331487 m!1488775))

(declare-fun m!1488777 () Bool)

(assert (=> b!1331487 m!1488777))

(declare-fun m!1488779 () Bool)

(assert (=> b!1331476 m!1488779))

(assert (=> b!1331476 m!1488779))

(declare-fun m!1488781 () Bool)

(assert (=> b!1331476 m!1488781))

(declare-fun m!1488783 () Bool)

(assert (=> b!1331495 m!1488783))

(assert (=> b!1331495 m!1488783))

(declare-fun m!1488785 () Bool)

(assert (=> b!1331495 m!1488785))

(declare-fun m!1488787 () Bool)

(assert (=> b!1331492 m!1488787))

(declare-fun m!1488789 () Bool)

(assert (=> b!1331505 m!1488789))

(check-sat b_and!88957 (not b!1331479) (not b!1331496) (not b!1331511) (not start!118458) (not b!1331487) (not b!1331489) (not b!1331488) (not b!1331466) (not b!1331465) (not b!1331472) (not b!1331506) (not b_next!32947) (not b_next!32945) (not b!1331500) (not b!1331494) (not b!1331476) b_and!88955 (not b!1331481) (not b!1331508) (not b!1331504) (not b!1331490) (not b!1331491) (not b!1331480) (not b!1331482) (not b!1331486) (not b!1331483) b_and!88961 (not b!1331501) (not b!1331498) (not b!1331471) (not b_next!32949) (not b!1331513) b_and!88959 (not b!1331510) (not b!1331502) (not b!1331475) b_and!88951 (not b!1331492) (not b!1331484) (not b!1331474) (not b!1331469) (not b!1331503) (not b!1331495) (not b!1331467) (not b_next!32939) (not b!1331499) b_and!88953 (not b!1331473) (not b_next!32941) (not b!1331512) (not b!1331505) (not b!1331477) (not b!1331478) (not b_next!32943))
(check-sat b_and!88955 b_and!88957 b_and!88961 (not b_next!32949) b_and!88959 b_and!88951 (not b_next!32939) b_and!88953 (not b_next!32941) (not b_next!32943) (not b_next!32947) (not b_next!32945))
(get-model)

(declare-fun d!375409 () Bool)

(declare-fun lt!440620 () Bool)

(declare-fun isEmpty!8083 (List!13609) Bool)

(assert (=> d!375409 (= lt!440620 (isEmpty!8083 (list!5139 (_2!7481 lt!440601))))))

(declare-fun isEmpty!8084 (Conc!4460) Bool)

(assert (=> d!375409 (= lt!440620 (isEmpty!8084 (c!218202 (_2!7481 lt!440601))))))

(assert (=> d!375409 (= (isEmpty!8077 (_2!7481 lt!440601)) lt!440620)))

(declare-fun bs!331704 () Bool)

(assert (= bs!331704 d!375409))

(declare-fun m!1488817 () Bool)

(assert (=> bs!331704 m!1488817))

(assert (=> bs!331704 m!1488817))

(declare-fun m!1488819 () Bool)

(assert (=> bs!331704 m!1488819))

(declare-fun m!1488821 () Bool)

(assert (=> bs!331704 m!1488821))

(assert (=> b!1331498 d!375409))

(declare-fun d!375411 () Bool)

(declare-fun lt!440627 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!1928 (List!13609) (InoxSet C!7608))

(assert (=> d!375411 (= lt!440627 (select (content!1928 (usedCharacters!210 (regex!2345 (rule!4090 t2!34)))) lt!440593))))

(declare-fun e!853010 () Bool)

(assert (=> d!375411 (= lt!440627 e!853010)))

(declare-fun res!600066 () Bool)

(assert (=> d!375411 (=> (not res!600066) (not e!853010))))

(assert (=> d!375411 (= res!600066 ((_ is Cons!13543) (usedCharacters!210 (regex!2345 (rule!4090 t2!34)))))))

(assert (=> d!375411 (= (contains!2451 (usedCharacters!210 (regex!2345 (rule!4090 t2!34))) lt!440593) lt!440627)))

(declare-fun b!1331552 () Bool)

(declare-fun e!853011 () Bool)

(assert (=> b!1331552 (= e!853010 e!853011)))

(declare-fun res!600067 () Bool)

(assert (=> b!1331552 (=> res!600067 e!853011)))

(assert (=> b!1331552 (= res!600067 (= (h!18944 (usedCharacters!210 (regex!2345 (rule!4090 t2!34)))) lt!440593))))

(declare-fun b!1331553 () Bool)

(assert (=> b!1331553 (= e!853011 (contains!2451 (t!119018 (usedCharacters!210 (regex!2345 (rule!4090 t2!34)))) lt!440593))))

(assert (= (and d!375411 res!600066) b!1331552))

(assert (= (and b!1331552 (not res!600067)) b!1331553))

(assert (=> d!375411 m!1488779))

(declare-fun m!1488823 () Bool)

(assert (=> d!375411 m!1488823))

(declare-fun m!1488825 () Bool)

(assert (=> d!375411 m!1488825))

(declare-fun m!1488827 () Bool)

(assert (=> b!1331553 m!1488827))

(assert (=> b!1331476 d!375411))

(declare-fun b!1331596 () Bool)

(declare-fun c!218229 () Bool)

(assert (=> b!1331596 (= c!218229 ((_ is Star!3659) (regex!2345 (rule!4090 t2!34))))))

(declare-fun e!853038 () List!13609)

(declare-fun e!853036 () List!13609)

(assert (=> b!1331596 (= e!853038 e!853036)))

(declare-fun call!90003 () List!13609)

(declare-fun bm!89995 () Bool)

(declare-fun c!218228 () Bool)

(assert (=> bm!89995 (= call!90003 (usedCharacters!210 (ite c!218229 (reg!3988 (regex!2345 (rule!4090 t2!34))) (ite c!218228 (regTwo!7831 (regex!2345 (rule!4090 t2!34))) (regOne!7830 (regex!2345 (rule!4090 t2!34)))))))))

(declare-fun b!1331597 () Bool)

(declare-fun e!853037 () List!13609)

(assert (=> b!1331597 (= e!853036 e!853037)))

(assert (=> b!1331597 (= c!218228 ((_ is Union!3659) (regex!2345 (rule!4090 t2!34))))))

(declare-fun d!375413 () Bool)

(declare-fun c!218231 () Bool)

(assert (=> d!375413 (= c!218231 (or ((_ is EmptyExpr!3659) (regex!2345 (rule!4090 t2!34))) ((_ is EmptyLang!3659) (regex!2345 (rule!4090 t2!34)))))))

(declare-fun e!853035 () List!13609)

(assert (=> d!375413 (= (usedCharacters!210 (regex!2345 (rule!4090 t2!34))) e!853035)))

(declare-fun call!90000 () List!13609)

(declare-fun call!90001 () List!13609)

(declare-fun bm!89996 () Bool)

(declare-fun call!90002 () List!13609)

(assert (=> bm!89996 (= call!90000 (++!3460 (ite c!218228 call!90002 call!90001) (ite c!218228 call!90001 call!90002)))))

(declare-fun b!1331598 () Bool)

(assert (=> b!1331598 (= e!853035 Nil!13543)))

(declare-fun b!1331599 () Bool)

(assert (=> b!1331599 (= e!853038 (Cons!13543 (c!218203 (regex!2345 (rule!4090 t2!34))) Nil!13543))))

(declare-fun bm!89997 () Bool)

(assert (=> bm!89997 (= call!90001 call!90003)))

(declare-fun b!1331600 () Bool)

(assert (=> b!1331600 (= e!853036 call!90003)))

(declare-fun b!1331601 () Bool)

(assert (=> b!1331601 (= e!853035 e!853038)))

(declare-fun c!218230 () Bool)

(assert (=> b!1331601 (= c!218230 ((_ is ElementMatch!3659) (regex!2345 (rule!4090 t2!34))))))

(declare-fun b!1331602 () Bool)

(assert (=> b!1331602 (= e!853037 call!90000)))

(declare-fun bm!89998 () Bool)

(assert (=> bm!89998 (= call!90002 (usedCharacters!210 (ite c!218228 (regOne!7831 (regex!2345 (rule!4090 t2!34))) (regTwo!7830 (regex!2345 (rule!4090 t2!34))))))))

(declare-fun b!1331603 () Bool)

(assert (=> b!1331603 (= e!853037 call!90000)))

(assert (= (and d!375413 c!218231) b!1331598))

(assert (= (and d!375413 (not c!218231)) b!1331601))

(assert (= (and b!1331601 c!218230) b!1331599))

(assert (= (and b!1331601 (not c!218230)) b!1331596))

(assert (= (and b!1331596 c!218229) b!1331600))

(assert (= (and b!1331596 (not c!218229)) b!1331597))

(assert (= (and b!1331597 c!218228) b!1331602))

(assert (= (and b!1331597 (not c!218228)) b!1331603))

(assert (= (or b!1331602 b!1331603) bm!89998))

(assert (= (or b!1331602 b!1331603) bm!89997))

(assert (= (or b!1331602 b!1331603) bm!89996))

(assert (= (or b!1331600 bm!89997) bm!89995))

(declare-fun m!1488861 () Bool)

(assert (=> bm!89995 m!1488861))

(declare-fun m!1488863 () Bool)

(assert (=> bm!89996 m!1488863))

(declare-fun m!1488865 () Bool)

(assert (=> bm!89998 m!1488865))

(assert (=> b!1331476 d!375413))

(declare-fun d!375429 () Bool)

(declare-fun res!600078 () Bool)

(declare-fun e!853043 () Bool)

(assert (=> d!375429 (=> (not res!600078) (not e!853043))))

(declare-fun rulesValid!855 (LexerInterface!2040 List!13610) Bool)

(assert (=> d!375429 (= res!600078 (rulesValid!855 thiss!19762 rules!2550))))

(assert (=> d!375429 (= (rulesInvariant!1910 thiss!19762 rules!2550) e!853043)))

(declare-fun b!1331608 () Bool)

(declare-datatypes ((List!13614 0))(
  ( (Nil!13548) (Cons!13548 (h!18949 String!16411) (t!119059 List!13614)) )
))
(declare-fun noDuplicateTag!855 (LexerInterface!2040 List!13610 List!13614) Bool)

(assert (=> b!1331608 (= e!853043 (noDuplicateTag!855 thiss!19762 rules!2550 Nil!13548))))

(assert (= (and d!375429 res!600078) b!1331608))

(declare-fun m!1488873 () Bool)

(assert (=> d!375429 m!1488873))

(declare-fun m!1488875 () Bool)

(assert (=> b!1331608 m!1488875))

(assert (=> b!1331475 d!375429))

(declare-fun d!375433 () Bool)

(declare-fun lt!440644 () List!13612)

(declare-fun size!11039 (List!13612) Int)

(declare-fun size!11040 (List!13610) Int)

(assert (=> d!375433 (= (size!11039 lt!440644) (size!11040 rules!2550))))

(declare-fun e!853067 () List!13612)

(assert (=> d!375433 (= lt!440644 e!853067)))

(declare-fun c!218243 () Bool)

(assert (=> d!375433 (= c!218243 ((_ is Nil!13544) rules!2550))))

(assert (=> d!375433 (= (map!2984 rules!2550 lambda!55470) lt!440644)))

(declare-fun b!1331655 () Bool)

(assert (=> b!1331655 (= e!853067 Nil!13546)))

(declare-fun b!1331656 () Bool)

(declare-fun $colon$colon!169 (List!13612 Regex!3659) List!13612)

(declare-fun dynLambda!5977 (Int Rule!4490) Regex!3659)

(assert (=> b!1331656 (= e!853067 ($colon$colon!169 (map!2984 (t!119019 rules!2550) lambda!55470) (dynLambda!5977 lambda!55470 (h!18945 rules!2550))))))

(assert (= (and d!375433 c!218243) b!1331655))

(assert (= (and d!375433 (not c!218243)) b!1331656))

(declare-fun b_lambda!39225 () Bool)

(assert (=> (not b_lambda!39225) (not b!1331656)))

(declare-fun m!1488891 () Bool)

(assert (=> d!375433 m!1488891))

(declare-fun m!1488893 () Bool)

(assert (=> d!375433 m!1488893))

(declare-fun m!1488895 () Bool)

(assert (=> b!1331656 m!1488895))

(declare-fun m!1488897 () Bool)

(assert (=> b!1331656 m!1488897))

(assert (=> b!1331656 m!1488895))

(assert (=> b!1331656 m!1488897))

(declare-fun m!1488899 () Bool)

(assert (=> b!1331656 m!1488899))

(assert (=> b!1331496 d!375433))

(declare-fun bs!331715 () Bool)

(declare-fun d!375439 () Bool)

(assert (= bs!331715 (and d!375439 b!1331496)))

(declare-fun lambda!55486 () Int)

(assert (=> bs!331715 (not (= lambda!55486 lambda!55471))))

(assert (=> d!375439 true))

(declare-fun order!8161 () Int)

(declare-fun dynLambda!5978 (Int Int) Int)

(assert (=> d!375439 (< (dynLambda!5978 order!8161 lambda!55471) (dynLambda!5978 order!8161 lambda!55486))))

(declare-fun forall!3329 (List!13612 Int) Bool)

(assert (=> d!375439 (= (exists!393 (map!2984 rules!2550 lambda!55470) lambda!55471) (not (forall!3329 (map!2984 rules!2550 lambda!55470) lambda!55486)))))

(declare-fun bs!331716 () Bool)

(assert (= bs!331716 d!375439))

(assert (=> bs!331716 m!1488731))

(declare-fun m!1488913 () Bool)

(assert (=> bs!331716 m!1488913))

(assert (=> b!1331496 d!375439))

(declare-fun bs!331717 () Bool)

(declare-fun d!375449 () Bool)

(assert (= bs!331717 (and d!375449 b!1331496)))

(declare-fun lambda!55491 () Int)

(assert (=> bs!331717 (not (= lambda!55491 lambda!55471))))

(declare-fun bs!331718 () Bool)

(assert (= bs!331718 (and d!375449 d!375439)))

(assert (=> bs!331718 (not (= lambda!55491 lambda!55486))))

(declare-fun lambda!55492 () Int)

(assert (=> bs!331717 (= lambda!55492 lambda!55471)))

(assert (=> bs!331718 (not (= lambda!55492 lambda!55486))))

(declare-fun bs!331719 () Bool)

(assert (= bs!331719 d!375449))

(assert (=> bs!331719 (not (= lambda!55492 lambda!55491))))

(assert (=> d!375449 true))

(assert (=> d!375449 (= (matchR!1661 lt!440606 lt!440580) (exists!393 lt!440583 lambda!55492))))

(declare-fun lt!440653 () Unit!19663)

(declare-fun choose!8173 (Regex!3659 List!13612 List!13609) Unit!19663)

(assert (=> d!375449 (= lt!440653 (choose!8173 lt!440606 lt!440583 lt!440580))))

(assert (=> d!375449 (forall!3329 lt!440583 lambda!55491)))

(assert (=> d!375449 (= (matchRGenUnionSpec!96 lt!440606 lt!440583 lt!440580) lt!440653)))

(assert (=> bs!331719 m!1488749))

(declare-fun m!1488925 () Bool)

(assert (=> bs!331719 m!1488925))

(declare-fun m!1488929 () Bool)

(assert (=> bs!331719 m!1488929))

(declare-fun m!1488933 () Bool)

(assert (=> bs!331719 m!1488933))

(assert (=> b!1331496 d!375449))

(declare-fun bs!331721 () Bool)

(declare-fun d!375455 () Bool)

(assert (= bs!331721 (and d!375455 b!1331496)))

(declare-fun lambda!55493 () Int)

(assert (=> bs!331721 (not (= lambda!55493 lambda!55471))))

(declare-fun bs!331722 () Bool)

(assert (= bs!331722 (and d!375455 d!375439)))

(assert (=> bs!331722 (= lambda!55493 lambda!55486)))

(declare-fun bs!331723 () Bool)

(assert (= bs!331723 (and d!375455 d!375449)))

(assert (=> bs!331723 (not (= lambda!55493 lambda!55491))))

(assert (=> bs!331723 (not (= lambda!55493 lambda!55492))))

(assert (=> d!375455 true))

(assert (=> d!375455 (< (dynLambda!5978 order!8161 lambda!55471) (dynLambda!5978 order!8161 lambda!55493))))

(assert (=> d!375455 (= (exists!393 lt!440583 lambda!55471) (not (forall!3329 lt!440583 lambda!55493)))))

(declare-fun bs!331724 () Bool)

(assert (= bs!331724 d!375455))

(declare-fun m!1488937 () Bool)

(assert (=> bs!331724 m!1488937))

(assert (=> b!1331496 d!375455))

(declare-fun b!1331702 () Bool)

(declare-fun e!853102 () Bool)

(declare-fun lt!440666 () tuple2!13194)

(declare-fun isEmpty!8085 (List!13611) Bool)

(assert (=> b!1331702 (= e!853102 (not (isEmpty!8085 (_1!7483 lt!440666))))))

(declare-fun d!375457 () Bool)

(declare-fun e!853103 () Bool)

(assert (=> d!375457 e!853103))

(declare-fun c!218255 () Bool)

(declare-fun size!11042 (List!13611) Int)

(assert (=> d!375457 (= c!218255 (> (size!11042 (_1!7483 lt!440666)) 0))))

(declare-fun e!853101 () tuple2!13194)

(assert (=> d!375457 (= lt!440666 e!853101)))

(declare-fun c!218254 () Bool)

(declare-fun lt!440668 () Option!2616)

(assert (=> d!375457 (= c!218254 ((_ is Some!2615) lt!440668))))

(assert (=> d!375457 (= lt!440668 (maxPrefix!1050 thiss!19762 rules!2550 (list!5139 lt!440595)))))

(assert (=> d!375457 (= (lexList!578 thiss!19762 rules!2550 (list!5139 lt!440595)) lt!440666)))

(declare-fun b!1331703 () Bool)

(declare-fun lt!440667 () tuple2!13194)

(assert (=> b!1331703 (= e!853101 (tuple2!13195 (Cons!13545 (_1!7482 (v!21244 lt!440668)) (_1!7483 lt!440667)) (_2!7483 lt!440667)))))

(assert (=> b!1331703 (= lt!440667 (lexList!578 thiss!19762 rules!2550 (_2!7482 (v!21244 lt!440668))))))

(declare-fun b!1331704 () Bool)

(assert (=> b!1331704 (= e!853101 (tuple2!13195 Nil!13545 (list!5139 lt!440595)))))

(declare-fun b!1331705 () Bool)

(assert (=> b!1331705 (= e!853103 (= (_2!7483 lt!440666) (list!5139 lt!440595)))))

(declare-fun b!1331706 () Bool)

(assert (=> b!1331706 (= e!853103 e!853102)))

(declare-fun res!600126 () Bool)

(declare-fun size!11043 (List!13609) Int)

(assert (=> b!1331706 (= res!600126 (< (size!11043 (_2!7483 lt!440666)) (size!11043 (list!5139 lt!440595))))))

(assert (=> b!1331706 (=> (not res!600126) (not e!853102))))

(assert (= (and d!375457 c!218254) b!1331703))

(assert (= (and d!375457 (not c!218254)) b!1331704))

(assert (= (and d!375457 c!218255) b!1331706))

(assert (= (and d!375457 (not c!218255)) b!1331705))

(assert (= (and b!1331706 res!600126) b!1331702))

(declare-fun m!1488945 () Bool)

(assert (=> b!1331702 m!1488945))

(declare-fun m!1488947 () Bool)

(assert (=> d!375457 m!1488947))

(assert (=> d!375457 m!1488783))

(declare-fun m!1488949 () Bool)

(assert (=> d!375457 m!1488949))

(declare-fun m!1488951 () Bool)

(assert (=> b!1331703 m!1488951))

(declare-fun m!1488953 () Bool)

(assert (=> b!1331706 m!1488953))

(assert (=> b!1331706 m!1488783))

(declare-fun m!1488955 () Bool)

(assert (=> b!1331706 m!1488955))

(assert (=> b!1331495 d!375457))

(declare-fun d!375461 () Bool)

(declare-fun list!5142 (Conc!4460) List!13609)

(assert (=> d!375461 (= (list!5139 lt!440595) (list!5142 (c!218202 lt!440595)))))

(declare-fun bs!331725 () Bool)

(assert (= bs!331725 d!375461))

(declare-fun m!1488957 () Bool)

(assert (=> bs!331725 m!1488957))

(assert (=> b!1331495 d!375461))

(declare-fun b!1331764 () Bool)

(declare-fun e!853135 () Bool)

(declare-fun lt!440694 () Option!2616)

(declare-fun get!4293 (Option!2616) tuple2!13192)

(assert (=> b!1331764 (= e!853135 (contains!2452 rules!2550 (rule!4090 (_1!7482 (get!4293 lt!440694)))))))

(declare-fun b!1331766 () Bool)

(declare-fun res!600164 () Bool)

(assert (=> b!1331766 (=> (not res!600164) (not e!853135))))

(assert (=> b!1331766 (= res!600164 (= (++!3460 (list!5139 (charsOf!1317 (_1!7482 (get!4293 lt!440694)))) (_2!7482 (get!4293 lt!440694))) lt!440587))))

(declare-fun b!1331767 () Bool)

(declare-fun res!600165 () Bool)

(assert (=> b!1331767 (=> (not res!600165) (not e!853135))))

(assert (=> b!1331767 (= res!600165 (< (size!11043 (_2!7482 (get!4293 lt!440694))) (size!11043 lt!440587)))))

(declare-fun b!1331768 () Bool)

(declare-fun res!600162 () Bool)

(assert (=> b!1331768 (=> (not res!600162) (not e!853135))))

(assert (=> b!1331768 (= res!600162 (matchR!1661 (regex!2345 (rule!4090 (_1!7482 (get!4293 lt!440694)))) (list!5139 (charsOf!1317 (_1!7482 (get!4293 lt!440694))))))))

(declare-fun b!1331769 () Bool)

(declare-fun e!853132 () Option!2616)

(declare-fun lt!440697 () Option!2616)

(declare-fun lt!440696 () Option!2616)

(assert (=> b!1331769 (= e!853132 (ite (and ((_ is None!2615) lt!440697) ((_ is None!2615) lt!440696)) None!2615 (ite ((_ is None!2615) lt!440696) lt!440697 (ite ((_ is None!2615) lt!440697) lt!440696 (ite (>= (size!11032 (_1!7482 (v!21244 lt!440697))) (size!11032 (_1!7482 (v!21244 lt!440696)))) lt!440697 lt!440696)))))))

(declare-fun call!90009 () Option!2616)

(assert (=> b!1331769 (= lt!440697 call!90009)))

(assert (=> b!1331769 (= lt!440696 (maxPrefix!1050 thiss!19762 (t!119019 rules!2550) lt!440587))))

(declare-fun b!1331770 () Bool)

(assert (=> b!1331770 (= e!853132 call!90009)))

(declare-fun b!1331771 () Bool)

(declare-fun res!600160 () Bool)

(assert (=> b!1331771 (=> (not res!600160) (not e!853135))))

(assert (=> b!1331771 (= res!600160 (= (list!5139 (charsOf!1317 (_1!7482 (get!4293 lt!440694)))) (originalCharacters!3207 (_1!7482 (get!4293 lt!440694)))))))

(declare-fun d!375463 () Bool)

(declare-fun e!853131 () Bool)

(assert (=> d!375463 e!853131))

(declare-fun res!600159 () Bool)

(assert (=> d!375463 (=> res!600159 e!853131)))

(declare-fun isEmpty!8086 (Option!2616) Bool)

(assert (=> d!375463 (= res!600159 (isEmpty!8086 lt!440694))))

(assert (=> d!375463 (= lt!440694 e!853132)))

(declare-fun c!218264 () Bool)

(assert (=> d!375463 (= c!218264 (and ((_ is Cons!13544) rules!2550) ((_ is Nil!13544) (t!119019 rules!2550))))))

(declare-fun lt!440698 () Unit!19663)

(declare-fun lt!440695 () Unit!19663)

(assert (=> d!375463 (= lt!440698 lt!440695)))

(declare-fun isPrefix!1092 (List!13609 List!13609) Bool)

(assert (=> d!375463 (isPrefix!1092 lt!440587 lt!440587)))

(declare-fun lemmaIsPrefixRefl!771 (List!13609 List!13609) Unit!19663)

(assert (=> d!375463 (= lt!440695 (lemmaIsPrefixRefl!771 lt!440587 lt!440587))))

(declare-fun rulesValidInductive!744 (LexerInterface!2040 List!13610) Bool)

(assert (=> d!375463 (rulesValidInductive!744 thiss!19762 rules!2550)))

(assert (=> d!375463 (= (maxPrefix!1050 thiss!19762 rules!2550 lt!440587) lt!440694)))

(declare-fun b!1331765 () Bool)

(assert (=> b!1331765 (= e!853131 e!853135)))

(declare-fun res!600163 () Bool)

(assert (=> b!1331765 (=> (not res!600163) (not e!853135))))

(declare-fun isDefined!2195 (Option!2616) Bool)

(assert (=> b!1331765 (= res!600163 (isDefined!2195 lt!440694))))

(declare-fun bm!90004 () Bool)

(declare-fun maxPrefixOneRule!597 (LexerInterface!2040 Rule!4490 List!13609) Option!2616)

(assert (=> bm!90004 (= call!90009 (maxPrefixOneRule!597 thiss!19762 (h!18945 rules!2550) lt!440587))))

(declare-fun b!1331772 () Bool)

(declare-fun res!600161 () Bool)

(assert (=> b!1331772 (=> (not res!600161) (not e!853135))))

(declare-fun apply!3152 (TokenValueInjection!4530 BalanceConc!8860) TokenValue!2435)

(declare-fun seqFromList!1615 (List!13609) BalanceConc!8860)

(assert (=> b!1331772 (= res!600161 (= (value!76465 (_1!7482 (get!4293 lt!440694))) (apply!3152 (transformation!2345 (rule!4090 (_1!7482 (get!4293 lt!440694)))) (seqFromList!1615 (originalCharacters!3207 (_1!7482 (get!4293 lt!440694)))))))))

(assert (= (and d!375463 c!218264) b!1331770))

(assert (= (and d!375463 (not c!218264)) b!1331769))

(assert (= (or b!1331770 b!1331769) bm!90004))

(assert (= (and d!375463 (not res!600159)) b!1331765))

(assert (= (and b!1331765 res!600163) b!1331771))

(assert (= (and b!1331771 res!600160) b!1331767))

(assert (= (and b!1331767 res!600165) b!1331766))

(assert (= (and b!1331766 res!600164) b!1331772))

(assert (= (and b!1331772 res!600161) b!1331768))

(assert (= (and b!1331768 res!600162) b!1331764))

(declare-fun m!1489021 () Bool)

(assert (=> b!1331771 m!1489021))

(declare-fun m!1489023 () Bool)

(assert (=> b!1331771 m!1489023))

(assert (=> b!1331771 m!1489023))

(declare-fun m!1489025 () Bool)

(assert (=> b!1331771 m!1489025))

(assert (=> b!1331764 m!1489021))

(declare-fun m!1489027 () Bool)

(assert (=> b!1331764 m!1489027))

(declare-fun m!1489029 () Bool)

(assert (=> b!1331765 m!1489029))

(assert (=> b!1331767 m!1489021))

(declare-fun m!1489031 () Bool)

(assert (=> b!1331767 m!1489031))

(declare-fun m!1489033 () Bool)

(assert (=> b!1331767 m!1489033))

(assert (=> b!1331766 m!1489021))

(assert (=> b!1331766 m!1489023))

(assert (=> b!1331766 m!1489023))

(assert (=> b!1331766 m!1489025))

(assert (=> b!1331766 m!1489025))

(declare-fun m!1489035 () Bool)

(assert (=> b!1331766 m!1489035))

(declare-fun m!1489037 () Bool)

(assert (=> b!1331769 m!1489037))

(assert (=> b!1331772 m!1489021))

(declare-fun m!1489039 () Bool)

(assert (=> b!1331772 m!1489039))

(assert (=> b!1331772 m!1489039))

(declare-fun m!1489041 () Bool)

(assert (=> b!1331772 m!1489041))

(declare-fun m!1489043 () Bool)

(assert (=> d!375463 m!1489043))

(declare-fun m!1489045 () Bool)

(assert (=> d!375463 m!1489045))

(declare-fun m!1489047 () Bool)

(assert (=> d!375463 m!1489047))

(declare-fun m!1489049 () Bool)

(assert (=> d!375463 m!1489049))

(declare-fun m!1489051 () Bool)

(assert (=> bm!90004 m!1489051))

(assert (=> b!1331768 m!1489021))

(assert (=> b!1331768 m!1489023))

(assert (=> b!1331768 m!1489023))

(assert (=> b!1331768 m!1489025))

(assert (=> b!1331768 m!1489025))

(declare-fun m!1489053 () Bool)

(assert (=> b!1331768 m!1489053))

(assert (=> b!1331474 d!375463))

(declare-fun d!375481 () Bool)

(assert (=> d!375481 (= (list!5139 lt!440591) (list!5142 (c!218202 lt!440591)))))

(declare-fun bs!331730 () Bool)

(assert (= bs!331730 d!375481))

(declare-fun m!1489055 () Bool)

(assert (=> bs!331730 m!1489055))

(assert (=> b!1331474 d!375481))

(declare-fun d!375483 () Bool)

(declare-fun lt!440704 () BalanceConc!8860)

(declare-fun printList!578 (LexerInterface!2040 List!13611) List!13609)

(assert (=> d!375483 (= (list!5139 lt!440704) (printList!578 thiss!19762 (list!5138 (singletonSeq!942 t1!34))))))

(declare-fun printTailRec!560 (LexerInterface!2040 BalanceConc!8862 Int BalanceConc!8860) BalanceConc!8860)

(assert (=> d!375483 (= lt!440704 (printTailRec!560 thiss!19762 (singletonSeq!942 t1!34) 0 (BalanceConc!8861 Empty!4460)))))

(assert (=> d!375483 (= (print!814 thiss!19762 (singletonSeq!942 t1!34)) lt!440704)))

(declare-fun bs!331731 () Bool)

(assert (= bs!331731 d!375483))

(declare-fun m!1489063 () Bool)

(assert (=> bs!331731 m!1489063))

(assert (=> bs!331731 m!1488671))

(declare-fun m!1489065 () Bool)

(assert (=> bs!331731 m!1489065))

(assert (=> bs!331731 m!1489065))

(declare-fun m!1489067 () Bool)

(assert (=> bs!331731 m!1489067))

(assert (=> bs!331731 m!1488671))

(declare-fun m!1489069 () Bool)

(assert (=> bs!331731 m!1489069))

(assert (=> b!1331473 d!375483))

(declare-fun b!1331866 () Bool)

(declare-fun e!853191 () Bool)

(declare-fun lt!440743 () tuple2!13190)

(assert (=> b!1331866 (= e!853191 (= (_2!7481 lt!440743) lt!440600))))

(declare-fun e!853193 () Bool)

(declare-fun b!1331867 () Bool)

(assert (=> b!1331867 (= e!853193 (= (list!5139 (_2!7481 lt!440743)) (_2!7483 (lexList!578 thiss!19762 rules!2550 (list!5139 lt!440600)))))))

(declare-fun b!1331868 () Bool)

(declare-fun res!600225 () Bool)

(assert (=> b!1331868 (=> (not res!600225) (not e!853193))))

(assert (=> b!1331868 (= res!600225 (= (list!5138 (_1!7481 lt!440743)) (_1!7483 (lexList!578 thiss!19762 rules!2550 (list!5139 lt!440600)))))))

(declare-fun b!1331870 () Bool)

(declare-fun e!853192 () Bool)

(assert (=> b!1331870 (= e!853191 e!853192)))

(declare-fun res!600226 () Bool)

(assert (=> b!1331870 (= res!600226 (< (size!11033 (_2!7481 lt!440743)) (size!11033 lt!440600)))))

(assert (=> b!1331870 (=> (not res!600226) (not e!853192))))

(declare-fun b!1331869 () Bool)

(declare-fun isEmpty!8087 (BalanceConc!8862) Bool)

(assert (=> b!1331869 (= e!853192 (not (isEmpty!8087 (_1!7481 lt!440743))))))

(declare-fun d!375487 () Bool)

(assert (=> d!375487 e!853193))

(declare-fun res!600227 () Bool)

(assert (=> d!375487 (=> (not res!600227) (not e!853193))))

(assert (=> d!375487 (= res!600227 e!853191)))

(declare-fun c!218285 () Bool)

(declare-fun size!11044 (BalanceConc!8862) Int)

(assert (=> d!375487 (= c!218285 (> (size!11044 (_1!7481 lt!440743)) 0))))

(declare-fun lexTailRecV2!383 (LexerInterface!2040 List!13610 BalanceConc!8860 BalanceConc!8860 BalanceConc!8860 BalanceConc!8862) tuple2!13190)

(assert (=> d!375487 (= lt!440743 (lexTailRecV2!383 thiss!19762 rules!2550 lt!440600 (BalanceConc!8861 Empty!4460) lt!440600 (BalanceConc!8863 Empty!4461)))))

(assert (=> d!375487 (= (lex!875 thiss!19762 rules!2550 lt!440600) lt!440743)))

(assert (= (and d!375487 c!218285) b!1331870))

(assert (= (and d!375487 (not c!218285)) b!1331866))

(assert (= (and b!1331870 res!600226) b!1331869))

(assert (= (and d!375487 res!600227) b!1331868))

(assert (= (and b!1331868 res!600225) b!1331867))

(declare-fun m!1489179 () Bool)

(assert (=> b!1331868 m!1489179))

(assert (=> b!1331868 m!1488661))

(assert (=> b!1331868 m!1488661))

(assert (=> b!1331868 m!1488663))

(declare-fun m!1489181 () Bool)

(assert (=> b!1331867 m!1489181))

(assert (=> b!1331867 m!1488661))

(assert (=> b!1331867 m!1488661))

(assert (=> b!1331867 m!1488663))

(declare-fun m!1489185 () Bool)

(assert (=> b!1331869 m!1489185))

(declare-fun m!1489189 () Bool)

(assert (=> d!375487 m!1489189))

(declare-fun m!1489191 () Bool)

(assert (=> d!375487 m!1489191))

(declare-fun m!1489195 () Bool)

(assert (=> b!1331870 m!1489195))

(declare-fun m!1489197 () Bool)

(assert (=> b!1331870 m!1489197))

(assert (=> b!1331473 d!375487))

(declare-fun b!1331893 () Bool)

(declare-fun lt!440751 () Unit!19663)

(declare-fun Unit!19670 () Unit!19663)

(assert (=> b!1331893 (= lt!440751 Unit!19670)))

(assert (=> b!1331893 false))

(declare-fun e!853206 () Rule!4490)

(declare-fun head!2349 (List!13610) Rule!4490)

(assert (=> b!1331893 (= e!853206 (head!2349 rules!2550))))

(declare-fun b!1331894 () Bool)

(declare-fun e!853208 () Rule!4490)

(assert (=> b!1331894 (= e!853208 (h!18945 rules!2550))))

(declare-fun b!1331895 () Bool)

(assert (=> b!1331895 (= e!853208 e!853206)))

(declare-fun c!218296 () Bool)

(assert (=> b!1331895 (= c!218296 ((_ is Cons!13544) rules!2550))))

(declare-fun b!1331896 () Bool)

(declare-fun e!853209 () Bool)

(declare-fun lt!440752 () Rule!4490)

(assert (=> b!1331896 (= e!853209 (contains!2452 rules!2550 lt!440752))))

(declare-fun b!1331897 () Bool)

(assert (=> b!1331897 (= e!853206 (getWitness!284 (t!119019 rules!2550) lambda!55472))))

(declare-fun b!1331898 () Bool)

(declare-fun e!853207 () Bool)

(declare-fun dynLambda!5981 (Int Rule!4490) Bool)

(assert (=> b!1331898 (= e!853207 (dynLambda!5981 lambda!55472 (h!18945 rules!2550)))))

(declare-fun d!375525 () Bool)

(assert (=> d!375525 e!853209))

(declare-fun res!600232 () Bool)

(assert (=> d!375525 (=> (not res!600232) (not e!853209))))

(assert (=> d!375525 (= res!600232 (dynLambda!5981 lambda!55472 lt!440752))))

(assert (=> d!375525 (= lt!440752 e!853208)))

(declare-fun c!218295 () Bool)

(assert (=> d!375525 (= c!218295 e!853207)))

(declare-fun res!600233 () Bool)

(assert (=> d!375525 (=> (not res!600233) (not e!853207))))

(assert (=> d!375525 (= res!600233 ((_ is Cons!13544) rules!2550))))

(assert (=> d!375525 (exists!392 rules!2550 lambda!55472)))

(assert (=> d!375525 (= (getWitness!284 rules!2550 lambda!55472) lt!440752)))

(assert (= (and d!375525 res!600233) b!1331898))

(assert (= (and d!375525 c!218295) b!1331894))

(assert (= (and d!375525 (not c!218295)) b!1331895))

(assert (= (and b!1331895 c!218296) b!1331897))

(assert (= (and b!1331895 (not c!218296)) b!1331893))

(assert (= (and d!375525 res!600232) b!1331896))

(declare-fun b_lambda!39239 () Bool)

(assert (=> (not b_lambda!39239) (not b!1331898)))

(declare-fun b_lambda!39241 () Bool)

(assert (=> (not b_lambda!39241) (not d!375525)))

(declare-fun m!1489203 () Bool)

(assert (=> d!375525 m!1489203))

(assert (=> d!375525 m!1488745))

(declare-fun m!1489205 () Bool)

(assert (=> b!1331896 m!1489205))

(declare-fun m!1489207 () Bool)

(assert (=> b!1331893 m!1489207))

(declare-fun m!1489209 () Bool)

(assert (=> b!1331897 m!1489209))

(declare-fun m!1489211 () Bool)

(assert (=> b!1331898 m!1489211))

(assert (=> b!1331473 d!375525))

(declare-fun d!375531 () Bool)

(declare-fun list!5143 (Conc!4461) List!13611)

(assert (=> d!375531 (= (list!5138 (_1!7481 lt!440599)) (list!5143 (c!218204 (_1!7481 lt!440599))))))

(declare-fun bs!331743 () Bool)

(assert (= bs!331743 d!375531))

(declare-fun m!1489213 () Bool)

(assert (=> bs!331743 m!1489213))

(assert (=> b!1331473 d!375531))

(declare-fun d!375533 () Bool)

(declare-fun e!853213 () Bool)

(assert (=> d!375533 e!853213))

(declare-fun res!600236 () Bool)

(assert (=> d!375533 (=> (not res!600236) (not e!853213))))

(declare-fun lt!440760 () BalanceConc!8862)

(assert (=> d!375533 (= res!600236 (= (list!5138 lt!440760) (Cons!13545 t1!34 Nil!13545)))))

(declare-fun singleton!404 (Token!4352) BalanceConc!8862)

(assert (=> d!375533 (= lt!440760 (singleton!404 t1!34))))

(assert (=> d!375533 (= (singletonSeq!942 t1!34) lt!440760)))

(declare-fun b!1331906 () Bool)

(declare-fun isBalanced!1298 (Conc!4461) Bool)

(assert (=> b!1331906 (= e!853213 (isBalanced!1298 (c!218204 lt!440760)))))

(assert (= (and d!375533 res!600236) b!1331906))

(declare-fun m!1489231 () Bool)

(assert (=> d!375533 m!1489231))

(declare-fun m!1489233 () Bool)

(assert (=> d!375533 m!1489233))

(declare-fun m!1489235 () Bool)

(assert (=> b!1331906 m!1489235))

(assert (=> b!1331473 d!375533))

(declare-fun d!375541 () Bool)

(declare-fun choose!8176 (Int) Bool)

(assert (=> d!375541 (= (Exists!817 lambda!55469) (choose!8176 lambda!55469))))

(declare-fun bs!331749 () Bool)

(assert (= bs!331749 d!375541))

(declare-fun m!1489237 () Bool)

(assert (=> bs!331749 m!1489237))

(assert (=> b!1331494 d!375541))

(declare-fun bs!331750 () Bool)

(declare-fun d!375543 () Bool)

(assert (= bs!331750 (and d!375543 b!1331494)))

(declare-fun lambda!55508 () Int)

(assert (=> bs!331750 (= lambda!55508 lambda!55469)))

(assert (=> d!375543 true))

(assert (=> d!375543 true))

(assert (=> d!375543 (Exists!817 lambda!55508)))

(declare-fun lt!440764 () Unit!19663)

(declare-fun choose!8177 (Regex!3659 List!13609) Unit!19663)

(assert (=> d!375543 (= lt!440764 (choose!8177 lt!440606 lt!440582))))

(declare-fun validRegex!1575 (Regex!3659) Bool)

(assert (=> d!375543 (validRegex!1575 lt!440606)))

(assert (=> d!375543 (= (lemmaPrefixMatchThenExistsStringThatMatches!135 lt!440606 lt!440582) lt!440764)))

(declare-fun bs!331751 () Bool)

(assert (= bs!331751 d!375543))

(declare-fun m!1489271 () Bool)

(assert (=> bs!331751 m!1489271))

(declare-fun m!1489273 () Bool)

(assert (=> bs!331751 m!1489273))

(declare-fun m!1489275 () Bool)

(assert (=> bs!331751 m!1489275))

(assert (=> b!1331494 d!375543))

(declare-fun d!375553 () Bool)

(declare-fun lt!440766 () Bool)

(assert (=> d!375553 (= lt!440766 (select (content!1928 lt!440580) lt!440593))))

(declare-fun e!853233 () Bool)

(assert (=> d!375553 (= lt!440766 e!853233)))

(declare-fun res!600257 () Bool)

(assert (=> d!375553 (=> (not res!600257) (not e!853233))))

(assert (=> d!375553 (= res!600257 ((_ is Cons!13543) lt!440580))))

(assert (=> d!375553 (= (contains!2451 lt!440580 lt!440593) lt!440766)))

(declare-fun b!1331941 () Bool)

(declare-fun e!853234 () Bool)

(assert (=> b!1331941 (= e!853233 e!853234)))

(declare-fun res!600258 () Bool)

(assert (=> b!1331941 (=> res!600258 e!853234)))

(assert (=> b!1331941 (= res!600258 (= (h!18944 lt!440580) lt!440593))))

(declare-fun b!1331942 () Bool)

(assert (=> b!1331942 (= e!853234 (contains!2451 (t!119018 lt!440580) lt!440593))))

(assert (= (and d!375553 res!600257) b!1331941))

(assert (= (and b!1331941 (not res!600258)) b!1331942))

(declare-fun m!1489277 () Bool)

(assert (=> d!375553 m!1489277))

(declare-fun m!1489279 () Bool)

(assert (=> d!375553 m!1489279))

(declare-fun m!1489281 () Bool)

(assert (=> b!1331942 m!1489281))

(assert (=> b!1331472 d!375553))

(declare-fun d!375555 () Bool)

(declare-fun lt!440767 () Bool)

(assert (=> d!375555 (= lt!440767 (select (content!1928 (usedCharacters!210 (regex!2345 (rule!4090 t1!34)))) lt!440586))))

(declare-fun e!853235 () Bool)

(assert (=> d!375555 (= lt!440767 e!853235)))

(declare-fun res!600259 () Bool)

(assert (=> d!375555 (=> (not res!600259) (not e!853235))))

(assert (=> d!375555 (= res!600259 ((_ is Cons!13543) (usedCharacters!210 (regex!2345 (rule!4090 t1!34)))))))

(assert (=> d!375555 (= (contains!2451 (usedCharacters!210 (regex!2345 (rule!4090 t1!34))) lt!440586) lt!440767)))

(declare-fun b!1331943 () Bool)

(declare-fun e!853236 () Bool)

(assert (=> b!1331943 (= e!853235 e!853236)))

(declare-fun res!600260 () Bool)

(assert (=> b!1331943 (=> res!600260 e!853236)))

(assert (=> b!1331943 (= res!600260 (= (h!18944 (usedCharacters!210 (regex!2345 (rule!4090 t1!34)))) lt!440586))))

(declare-fun b!1331944 () Bool)

(assert (=> b!1331944 (= e!853236 (contains!2451 (t!119018 (usedCharacters!210 (regex!2345 (rule!4090 t1!34)))) lt!440586))))

(assert (= (and d!375555 res!600259) b!1331943))

(assert (= (and b!1331943 (not res!600260)) b!1331944))

(assert (=> d!375555 m!1488741))

(declare-fun m!1489289 () Bool)

(assert (=> d!375555 m!1489289))

(declare-fun m!1489291 () Bool)

(assert (=> d!375555 m!1489291))

(declare-fun m!1489293 () Bool)

(assert (=> b!1331944 m!1489293))

(assert (=> b!1331471 d!375555))

(declare-fun b!1331945 () Bool)

(declare-fun c!218305 () Bool)

(assert (=> b!1331945 (= c!218305 ((_ is Star!3659) (regex!2345 (rule!4090 t1!34))))))

(declare-fun e!853240 () List!13609)

(declare-fun e!853238 () List!13609)

(assert (=> b!1331945 (= e!853240 e!853238)))

(declare-fun bm!90026 () Bool)

(declare-fun call!90034 () List!13609)

(declare-fun c!218304 () Bool)

(assert (=> bm!90026 (= call!90034 (usedCharacters!210 (ite c!218305 (reg!3988 (regex!2345 (rule!4090 t1!34))) (ite c!218304 (regTwo!7831 (regex!2345 (rule!4090 t1!34))) (regOne!7830 (regex!2345 (rule!4090 t1!34)))))))))

(declare-fun b!1331946 () Bool)

(declare-fun e!853239 () List!13609)

(assert (=> b!1331946 (= e!853238 e!853239)))

(assert (=> b!1331946 (= c!218304 ((_ is Union!3659) (regex!2345 (rule!4090 t1!34))))))

(declare-fun d!375559 () Bool)

(declare-fun c!218307 () Bool)

(assert (=> d!375559 (= c!218307 (or ((_ is EmptyExpr!3659) (regex!2345 (rule!4090 t1!34))) ((_ is EmptyLang!3659) (regex!2345 (rule!4090 t1!34)))))))

(declare-fun e!853237 () List!13609)

(assert (=> d!375559 (= (usedCharacters!210 (regex!2345 (rule!4090 t1!34))) e!853237)))

(declare-fun bm!90027 () Bool)

(declare-fun call!90032 () List!13609)

(declare-fun call!90031 () List!13609)

(declare-fun call!90033 () List!13609)

(assert (=> bm!90027 (= call!90031 (++!3460 (ite c!218304 call!90033 call!90032) (ite c!218304 call!90032 call!90033)))))

(declare-fun b!1331947 () Bool)

(assert (=> b!1331947 (= e!853237 Nil!13543)))

(declare-fun b!1331948 () Bool)

(assert (=> b!1331948 (= e!853240 (Cons!13543 (c!218203 (regex!2345 (rule!4090 t1!34))) Nil!13543))))

(declare-fun bm!90028 () Bool)

(assert (=> bm!90028 (= call!90032 call!90034)))

(declare-fun b!1331949 () Bool)

(assert (=> b!1331949 (= e!853238 call!90034)))

(declare-fun b!1331950 () Bool)

(assert (=> b!1331950 (= e!853237 e!853240)))

(declare-fun c!218306 () Bool)

(assert (=> b!1331950 (= c!218306 ((_ is ElementMatch!3659) (regex!2345 (rule!4090 t1!34))))))

(declare-fun b!1331951 () Bool)

(assert (=> b!1331951 (= e!853239 call!90031)))

(declare-fun bm!90029 () Bool)

(assert (=> bm!90029 (= call!90033 (usedCharacters!210 (ite c!218304 (regOne!7831 (regex!2345 (rule!4090 t1!34))) (regTwo!7830 (regex!2345 (rule!4090 t1!34))))))))

(declare-fun b!1331952 () Bool)

(assert (=> b!1331952 (= e!853239 call!90031)))

(assert (= (and d!375559 c!218307) b!1331947))

(assert (= (and d!375559 (not c!218307)) b!1331950))

(assert (= (and b!1331950 c!218306) b!1331948))

(assert (= (and b!1331950 (not c!218306)) b!1331945))

(assert (= (and b!1331945 c!218305) b!1331949))

(assert (= (and b!1331945 (not c!218305)) b!1331946))

(assert (= (and b!1331946 c!218304) b!1331951))

(assert (= (and b!1331946 (not c!218304)) b!1331952))

(assert (= (or b!1331951 b!1331952) bm!90029))

(assert (= (or b!1331951 b!1331952) bm!90028))

(assert (= (or b!1331951 b!1331952) bm!90027))

(assert (= (or b!1331949 bm!90028) bm!90026))

(declare-fun m!1489303 () Bool)

(assert (=> bm!90026 m!1489303))

(declare-fun m!1489305 () Bool)

(assert (=> bm!90027 m!1489305))

(declare-fun m!1489307 () Bool)

(assert (=> bm!90029 m!1489307))

(assert (=> b!1331471 d!375559))

(declare-fun b!1331959 () Bool)

(declare-fun e!853246 () Bool)

(declare-fun lt!440771 () tuple2!13194)

(assert (=> b!1331959 (= e!853246 (not (isEmpty!8085 (_1!7483 lt!440771))))))

(declare-fun d!375567 () Bool)

(declare-fun e!853247 () Bool)

(assert (=> d!375567 e!853247))

(declare-fun c!218310 () Bool)

(assert (=> d!375567 (= c!218310 (> (size!11042 (_1!7483 lt!440771)) 0))))

(declare-fun e!853245 () tuple2!13194)

(assert (=> d!375567 (= lt!440771 e!853245)))

(declare-fun c!218309 () Bool)

(declare-fun lt!440773 () Option!2616)

(assert (=> d!375567 (= c!218309 ((_ is Some!2615) lt!440773))))

(assert (=> d!375567 (= lt!440773 (maxPrefix!1050 thiss!19762 rules!2550 (list!5139 lt!440600)))))

(assert (=> d!375567 (= (lexList!578 thiss!19762 rules!2550 (list!5139 lt!440600)) lt!440771)))

(declare-fun b!1331960 () Bool)

(declare-fun lt!440772 () tuple2!13194)

(assert (=> b!1331960 (= e!853245 (tuple2!13195 (Cons!13545 (_1!7482 (v!21244 lt!440773)) (_1!7483 lt!440772)) (_2!7483 lt!440772)))))

(assert (=> b!1331960 (= lt!440772 (lexList!578 thiss!19762 rules!2550 (_2!7482 (v!21244 lt!440773))))))

(declare-fun b!1331961 () Bool)

(assert (=> b!1331961 (= e!853245 (tuple2!13195 Nil!13545 (list!5139 lt!440600)))))

(declare-fun b!1331962 () Bool)

(assert (=> b!1331962 (= e!853247 (= (_2!7483 lt!440771) (list!5139 lt!440600)))))

(declare-fun b!1331963 () Bool)

(assert (=> b!1331963 (= e!853247 e!853246)))

(declare-fun res!600265 () Bool)

(assert (=> b!1331963 (= res!600265 (< (size!11043 (_2!7483 lt!440771)) (size!11043 (list!5139 lt!440600))))))

(assert (=> b!1331963 (=> (not res!600265) (not e!853246))))

(assert (= (and d!375567 c!218309) b!1331960))

(assert (= (and d!375567 (not c!218309)) b!1331961))

(assert (= (and d!375567 c!218310) b!1331963))

(assert (= (and d!375567 (not c!218310)) b!1331962))

(assert (= (and b!1331963 res!600265) b!1331959))

(declare-fun m!1489321 () Bool)

(assert (=> b!1331959 m!1489321))

(declare-fun m!1489323 () Bool)

(assert (=> d!375567 m!1489323))

(assert (=> d!375567 m!1488661))

(declare-fun m!1489325 () Bool)

(assert (=> d!375567 m!1489325))

(declare-fun m!1489327 () Bool)

(assert (=> b!1331960 m!1489327))

(declare-fun m!1489329 () Bool)

(assert (=> b!1331963 m!1489329))

(assert (=> b!1331963 m!1488661))

(declare-fun m!1489331 () Bool)

(assert (=> b!1331963 m!1489331))

(assert (=> b!1331513 d!375567))

(declare-fun d!375571 () Bool)

(assert (=> d!375571 (= (list!5139 lt!440600) (list!5142 (c!218202 lt!440600)))))

(declare-fun bs!331753 () Bool)

(assert (= bs!331753 d!375571))

(declare-fun m!1489333 () Bool)

(assert (=> bs!331753 m!1489333))

(assert (=> b!1331513 d!375571))

(declare-fun d!375573 () Bool)

(declare-fun lt!440774 () Bool)

(assert (=> d!375573 (= lt!440774 (select (content!1928 lt!440582) lt!440593))))

(declare-fun e!853248 () Bool)

(assert (=> d!375573 (= lt!440774 e!853248)))

(declare-fun res!600266 () Bool)

(assert (=> d!375573 (=> (not res!600266) (not e!853248))))

(assert (=> d!375573 (= res!600266 ((_ is Cons!13543) lt!440582))))

(assert (=> d!375573 (= (contains!2451 lt!440582 lt!440593) lt!440774)))

(declare-fun b!1331964 () Bool)

(declare-fun e!853249 () Bool)

(assert (=> b!1331964 (= e!853248 e!853249)))

(declare-fun res!600267 () Bool)

(assert (=> b!1331964 (=> res!600267 e!853249)))

(assert (=> b!1331964 (= res!600267 (= (h!18944 lt!440582) lt!440593))))

(declare-fun b!1331965 () Bool)

(assert (=> b!1331965 (= e!853249 (contains!2451 (t!119018 lt!440582) lt!440593))))

(assert (= (and d!375573 res!600266) b!1331964))

(assert (= (and b!1331964 (not res!600267)) b!1331965))

(declare-fun m!1489335 () Bool)

(assert (=> d!375573 m!1489335))

(declare-fun m!1489337 () Bool)

(assert (=> d!375573 m!1489337))

(declare-fun m!1489339 () Bool)

(assert (=> b!1331965 m!1489339))

(assert (=> b!1331492 d!375573))

(declare-fun d!375575 () Bool)

(declare-fun lt!440775 () Bool)

(assert (=> d!375575 (= lt!440775 (select (content!1928 lt!440582) lt!440586))))

(declare-fun e!853250 () Bool)

(assert (=> d!375575 (= lt!440775 e!853250)))

(declare-fun res!600268 () Bool)

(assert (=> d!375575 (=> (not res!600268) (not e!853250))))

(assert (=> d!375575 (= res!600268 ((_ is Cons!13543) lt!440582))))

(assert (=> d!375575 (= (contains!2451 lt!440582 lt!440586) lt!440775)))

(declare-fun b!1331966 () Bool)

(declare-fun e!853251 () Bool)

(assert (=> b!1331966 (= e!853250 e!853251)))

(declare-fun res!600269 () Bool)

(assert (=> b!1331966 (=> res!600269 e!853251)))

(assert (=> b!1331966 (= res!600269 (= (h!18944 lt!440582) lt!440586))))

(declare-fun b!1331967 () Bool)

(assert (=> b!1331967 (= e!853251 (contains!2451 (t!119018 lt!440582) lt!440586))))

(assert (= (and d!375575 res!600268) b!1331966))

(assert (= (and b!1331966 (not res!600269)) b!1331967))

(assert (=> d!375575 m!1489335))

(declare-fun m!1489341 () Bool)

(assert (=> d!375575 m!1489341))

(declare-fun m!1489343 () Bool)

(assert (=> b!1331967 m!1489343))

(assert (=> b!1331491 d!375575))

(declare-fun d!375577 () Bool)

(declare-fun lt!440787 () C!7608)

(declare-fun apply!3153 (List!13609 Int) C!7608)

(assert (=> d!375577 (= lt!440787 (apply!3153 (list!5139 lt!440604) 0))))

(declare-fun apply!3154 (Conc!4460 Int) C!7608)

(assert (=> d!375577 (= lt!440787 (apply!3154 (c!218202 lt!440604) 0))))

(declare-fun e!853261 () Bool)

(assert (=> d!375577 e!853261))

(declare-fun res!600277 () Bool)

(assert (=> d!375577 (=> (not res!600277) (not e!853261))))

(assert (=> d!375577 (= res!600277 (<= 0 0))))

(assert (=> d!375577 (= (apply!3147 lt!440604 0) lt!440787)))

(declare-fun b!1331981 () Bool)

(assert (=> b!1331981 (= e!853261 (< 0 (size!11033 lt!440604)))))

(assert (= (and d!375577 res!600277) b!1331981))

(assert (=> d!375577 m!1488763))

(assert (=> d!375577 m!1488763))

(declare-fun m!1489371 () Bool)

(assert (=> d!375577 m!1489371))

(declare-fun m!1489373 () Bool)

(assert (=> d!375577 m!1489373))

(assert (=> b!1331981 m!1488695))

(assert (=> b!1331491 d!375577))

(declare-fun d!375585 () Bool)

(declare-fun res!600288 () Bool)

(declare-fun e!853274 () Bool)

(assert (=> d!375585 (=> res!600288 e!853274)))

(assert (=> d!375585 (= res!600288 (not ((_ is Cons!13544) rules!2550)))))

(assert (=> d!375585 (= (sepAndNonSepRulesDisjointChars!718 rules!2550 rules!2550) e!853274)))

(declare-fun b!1331998 () Bool)

(declare-fun e!853275 () Bool)

(assert (=> b!1331998 (= e!853274 e!853275)))

(declare-fun res!600289 () Bool)

(assert (=> b!1331998 (=> (not res!600289) (not e!853275))))

(declare-fun ruleDisjointCharsFromAllFromOtherType!329 (Rule!4490 List!13610) Bool)

(assert (=> b!1331998 (= res!600289 (ruleDisjointCharsFromAllFromOtherType!329 (h!18945 rules!2550) rules!2550))))

(declare-fun b!1331999 () Bool)

(assert (=> b!1331999 (= e!853275 (sepAndNonSepRulesDisjointChars!718 rules!2550 (t!119019 rules!2550)))))

(assert (= (and d!375585 (not res!600288)) b!1331998))

(assert (= (and b!1331998 res!600289) b!1331999))

(declare-fun m!1489417 () Bool)

(assert (=> b!1331998 m!1489417))

(declare-fun m!1489423 () Bool)

(assert (=> b!1331999 m!1489423))

(assert (=> b!1331469 d!375585))

(declare-fun lt!440799 () Bool)

(declare-fun d!375601 () Bool)

(declare-fun content!1929 (List!13612) (InoxSet Regex!3659))

(assert (=> d!375601 (= lt!440799 (select (content!1929 (map!2984 rules!2550 lambda!55470)) lt!440597))))

(declare-fun e!853285 () Bool)

(assert (=> d!375601 (= lt!440799 e!853285)))

(declare-fun res!600299 () Bool)

(assert (=> d!375601 (=> (not res!600299) (not e!853285))))

(assert (=> d!375601 (= res!600299 ((_ is Cons!13546) (map!2984 rules!2550 lambda!55470)))))

(assert (=> d!375601 (= (contains!2453 (map!2984 rules!2550 lambda!55470) lt!440597) lt!440799)))

(declare-fun b!1332009 () Bool)

(declare-fun e!853286 () Bool)

(assert (=> b!1332009 (= e!853285 e!853286)))

(declare-fun res!600300 () Bool)

(assert (=> b!1332009 (=> res!600300 e!853286)))

(assert (=> b!1332009 (= res!600300 (= (h!18947 (map!2984 rules!2550 lambda!55470)) lt!440597))))

(declare-fun b!1332010 () Bool)

(assert (=> b!1332010 (= e!853286 (contains!2453 (t!119021 (map!2984 rules!2550 lambda!55470)) lt!440597))))

(assert (= (and d!375601 res!600299) b!1332009))

(assert (= (and b!1332009 (not res!600300)) b!1332010))

(assert (=> d!375601 m!1488731))

(declare-fun m!1489427 () Bool)

(assert (=> d!375601 m!1489427))

(declare-fun m!1489429 () Bool)

(assert (=> d!375601 m!1489429))

(declare-fun m!1489431 () Bool)

(assert (=> b!1332010 m!1489431))

(assert (=> b!1331512 d!375601))

(assert (=> b!1331512 d!375433))

(declare-fun b!1332037 () Bool)

(declare-fun e!853308 () Regex!3659)

(assert (=> b!1332037 (= e!853308 (h!18947 (map!2984 rules!2550 lambda!55470)))))

(declare-fun b!1332038 () Bool)

(declare-fun e!853305 () Regex!3659)

(assert (=> b!1332038 (= e!853308 e!853305)))

(declare-fun c!218325 () Bool)

(assert (=> b!1332038 (= c!218325 ((_ is Cons!13546) (map!2984 rules!2550 lambda!55470)))))

(declare-fun e!853307 () Bool)

(declare-fun lt!440810 () Regex!3659)

(declare-fun b!1332039 () Bool)

(assert (=> b!1332039 (= e!853307 (contains!2453 (map!2984 rules!2550 lambda!55470) lt!440810))))

(declare-fun b!1332040 () Bool)

(declare-fun lt!440809 () Unit!19663)

(declare-fun Unit!19671 () Unit!19663)

(assert (=> b!1332040 (= lt!440809 Unit!19671)))

(assert (=> b!1332040 false))

(declare-fun head!2350 (List!13612) Regex!3659)

(assert (=> b!1332040 (= e!853305 (head!2350 (map!2984 rules!2550 lambda!55470)))))

(declare-fun b!1332041 () Bool)

(assert (=> b!1332041 (= e!853305 (getWitness!285 (t!119021 (map!2984 rules!2550 lambda!55470)) lambda!55471))))

(declare-fun d!375605 () Bool)

(assert (=> d!375605 e!853307))

(declare-fun res!600311 () Bool)

(assert (=> d!375605 (=> (not res!600311) (not e!853307))))

(declare-fun dynLambda!5983 (Int Regex!3659) Bool)

(assert (=> d!375605 (= res!600311 (dynLambda!5983 lambda!55471 lt!440810))))

(assert (=> d!375605 (= lt!440810 e!853308)))

(declare-fun c!218326 () Bool)

(declare-fun e!853306 () Bool)

(assert (=> d!375605 (= c!218326 e!853306)))

(declare-fun res!600312 () Bool)

(assert (=> d!375605 (=> (not res!600312) (not e!853306))))

(assert (=> d!375605 (= res!600312 ((_ is Cons!13546) (map!2984 rules!2550 lambda!55470)))))

(assert (=> d!375605 (exists!393 (map!2984 rules!2550 lambda!55470) lambda!55471)))

(assert (=> d!375605 (= (getWitness!285 (map!2984 rules!2550 lambda!55470) lambda!55471) lt!440810)))

(declare-fun b!1332042 () Bool)

(assert (=> b!1332042 (= e!853306 (dynLambda!5983 lambda!55471 (h!18947 (map!2984 rules!2550 lambda!55470))))))

(assert (= (and d!375605 res!600312) b!1332042))

(assert (= (and d!375605 c!218326) b!1332037))

(assert (= (and d!375605 (not c!218326)) b!1332038))

(assert (= (and b!1332038 c!218325) b!1332041))

(assert (= (and b!1332038 (not c!218325)) b!1332040))

(assert (= (and d!375605 res!600311) b!1332039))

(declare-fun b_lambda!39251 () Bool)

(assert (=> (not b_lambda!39251) (not d!375605)))

(declare-fun b_lambda!39253 () Bool)

(assert (=> (not b_lambda!39253) (not b!1332042)))

(declare-fun m!1489439 () Bool)

(assert (=> d!375605 m!1489439))

(assert (=> d!375605 m!1488731))

(assert (=> d!375605 m!1488733))

(declare-fun m!1489441 () Bool)

(assert (=> b!1332042 m!1489441))

(declare-fun m!1489443 () Bool)

(assert (=> b!1332041 m!1489443))

(assert (=> b!1332040 m!1488731))

(declare-fun m!1489445 () Bool)

(assert (=> b!1332040 m!1489445))

(assert (=> b!1332039 m!1488731))

(declare-fun m!1489447 () Bool)

(assert (=> b!1332039 m!1489447))

(assert (=> b!1331512 d!375605))

(declare-fun d!375609 () Bool)

(assert (=> d!375609 (= (inv!17885 (tag!2607 (rule!4090 t1!34))) (= (mod (str.len (value!76464 (tag!2607 (rule!4090 t1!34)))) 2) 0))))

(assert (=> b!1331511 d!375609))

(declare-fun d!375611 () Bool)

(declare-fun res!600323 () Bool)

(declare-fun e!853327 () Bool)

(assert (=> d!375611 (=> (not res!600323) (not e!853327))))

(declare-fun semiInverseModEq!886 (Int Int) Bool)

(assert (=> d!375611 (= res!600323 (semiInverseModEq!886 (toChars!3435 (transformation!2345 (rule!4090 t1!34))) (toValue!3576 (transformation!2345 (rule!4090 t1!34)))))))

(assert (=> d!375611 (= (inv!17888 (transformation!2345 (rule!4090 t1!34))) e!853327)))

(declare-fun b!1332069 () Bool)

(declare-fun equivClasses!845 (Int Int) Bool)

(assert (=> b!1332069 (= e!853327 (equivClasses!845 (toChars!3435 (transformation!2345 (rule!4090 t1!34))) (toValue!3576 (transformation!2345 (rule!4090 t1!34)))))))

(assert (= (and d!375611 res!600323) b!1332069))

(declare-fun m!1489479 () Bool)

(assert (=> d!375611 m!1489479))

(declare-fun m!1489481 () Bool)

(assert (=> b!1332069 m!1489481))

(assert (=> b!1331511 d!375611))

(declare-fun d!375623 () Bool)

(declare-fun prefixMatchZipperSequence!198 (Regex!3659 BalanceConc!8860) Bool)

(declare-fun ++!3462 (BalanceConc!8860 BalanceConc!8860) BalanceConc!8860)

(declare-fun singletonSeq!944 (C!7608) BalanceConc!8860)

(assert (=> d!375623 (= (separableTokensPredicate!323 thiss!19762 t1!34 t2!34 rules!2550) (not (prefixMatchZipperSequence!198 (rulesRegex!230 thiss!19762 rules!2550) (++!3462 (charsOf!1317 t1!34) (singletonSeq!944 (apply!3147 (charsOf!1317 t2!34) 0))))))))

(declare-fun bs!331768 () Bool)

(assert (= bs!331768 d!375623))

(assert (=> bs!331768 m!1488631))

(assert (=> bs!331768 m!1488759))

(declare-fun m!1489545 () Bool)

(assert (=> bs!331768 m!1489545))

(declare-fun m!1489547 () Bool)

(assert (=> bs!331768 m!1489547))

(assert (=> bs!331768 m!1488765))

(assert (=> bs!331768 m!1488759))

(declare-fun m!1489549 () Bool)

(assert (=> bs!331768 m!1489549))

(assert (=> bs!331768 m!1489545))

(assert (=> bs!331768 m!1488631))

(assert (=> bs!331768 m!1489549))

(assert (=> bs!331768 m!1488765))

(assert (=> bs!331768 m!1489547))

(declare-fun m!1489551 () Bool)

(assert (=> bs!331768 m!1489551))

(assert (=> b!1331490 d!375623))

(declare-fun bs!331769 () Bool)

(declare-fun d!375647 () Bool)

(assert (= bs!331769 (and d!375647 b!1331489)))

(declare-fun lambda!55511 () Int)

(assert (=> bs!331769 (not (= lambda!55511 lambda!55472))))

(declare-fun bs!331770 () Bool)

(assert (= bs!331770 (and d!375647 b!1331503)))

(assert (=> bs!331770 (not (= lambda!55511 lambda!55473))))

(assert (=> d!375647 true))

(declare-fun order!8167 () Int)

(declare-fun dynLambda!5984 (Int Int) Int)

(assert (=> d!375647 (< (dynLambda!5984 order!8167 lambda!55472) (dynLambda!5984 order!8167 lambda!55511))))

(declare-fun forall!3330 (List!13610 Int) Bool)

(assert (=> d!375647 (= (exists!392 rules!2550 lambda!55472) (not (forall!3330 rules!2550 lambda!55511)))))

(declare-fun bs!331771 () Bool)

(assert (= bs!331771 d!375647))

(declare-fun m!1489553 () Bool)

(assert (=> bs!331771 m!1489553))

(assert (=> b!1331489 d!375647))

(declare-fun bs!331772 () Bool)

(declare-fun d!375649 () Bool)

(assert (= bs!331772 (and d!375649 b!1331489)))

(declare-fun lambda!55514 () Int)

(assert (=> bs!331772 (not (= lambda!55514 lambda!55472))))

(declare-fun bs!331773 () Bool)

(assert (= bs!331773 (and d!375649 b!1331503)))

(assert (=> bs!331773 (not (= lambda!55514 lambda!55473))))

(declare-fun bs!331774 () Bool)

(assert (= bs!331774 (and d!375649 d!375647)))

(assert (=> bs!331774 (not (= lambda!55514 lambda!55511))))

(assert (=> d!375649 true))

(assert (=> d!375649 true))

(declare-fun order!8169 () Int)

(declare-fun dynLambda!5985 (Int Int) Int)

(assert (=> d!375649 (< (dynLambda!5985 order!8169 lambda!55470) (dynLambda!5984 order!8167 lambda!55514))))

(assert (=> d!375649 (exists!392 rules!2550 lambda!55514)))

(declare-fun lt!440823 () Unit!19663)

(declare-fun choose!8179 (List!13610 Int Regex!3659) Unit!19663)

(assert (=> d!375649 (= lt!440823 (choose!8179 rules!2550 lambda!55470 lt!440597))))

(assert (=> d!375649 (contains!2453 (map!2984 rules!2550 lambda!55470) lt!440597)))

(assert (=> d!375649 (= (lemmaMapContains!88 rules!2550 lambda!55470 lt!440597) lt!440823)))

(declare-fun bs!331775 () Bool)

(assert (= bs!331775 d!375649))

(declare-fun m!1489555 () Bool)

(assert (=> bs!331775 m!1489555))

(declare-fun m!1489557 () Bool)

(assert (=> bs!331775 m!1489557))

(assert (=> bs!331775 m!1488731))

(assert (=> bs!331775 m!1488731))

(assert (=> bs!331775 m!1488751))

(assert (=> b!1331489 d!375649))

(declare-fun d!375651 () Bool)

(declare-fun res!600338 () Bool)

(declare-fun e!853357 () Bool)

(assert (=> d!375651 (=> (not res!600338) (not e!853357))))

(assert (=> d!375651 (= res!600338 (not (isEmpty!8083 (originalCharacters!3207 t1!34))))))

(assert (=> d!375651 (= (inv!17889 t1!34) e!853357)))

(declare-fun b!1332131 () Bool)

(declare-fun res!600339 () Bool)

(assert (=> b!1332131 (=> (not res!600339) (not e!853357))))

(declare-fun dynLambda!5986 (Int TokenValue!2435) BalanceConc!8860)

(assert (=> b!1332131 (= res!600339 (= (originalCharacters!3207 t1!34) (list!5139 (dynLambda!5986 (toChars!3435 (transformation!2345 (rule!4090 t1!34))) (value!76465 t1!34)))))))

(declare-fun b!1332132 () Bool)

(assert (=> b!1332132 (= e!853357 (= (size!11032 t1!34) (size!11043 (originalCharacters!3207 t1!34))))))

(assert (= (and d!375651 res!600338) b!1332131))

(assert (= (and b!1332131 res!600339) b!1332132))

(declare-fun b_lambda!39285 () Bool)

(assert (=> (not b_lambda!39285) (not b!1332131)))

(declare-fun tb!70353 () Bool)

(declare-fun t!119042 () Bool)

(assert (=> (and b!1331485 (= (toChars!3435 (transformation!2345 (h!18945 rules!2550))) (toChars!3435 (transformation!2345 (rule!4090 t1!34)))) t!119042) tb!70353))

(declare-fun b!1332137 () Bool)

(declare-fun e!853360 () Bool)

(declare-fun tp!385370 () Bool)

(declare-fun inv!17892 (Conc!4460) Bool)

(assert (=> b!1332137 (= e!853360 (and (inv!17892 (c!218202 (dynLambda!5986 (toChars!3435 (transformation!2345 (rule!4090 t1!34))) (value!76465 t1!34)))) tp!385370))))

(declare-fun result!85438 () Bool)

(declare-fun inv!17893 (BalanceConc!8860) Bool)

(assert (=> tb!70353 (= result!85438 (and (inv!17893 (dynLambda!5986 (toChars!3435 (transformation!2345 (rule!4090 t1!34))) (value!76465 t1!34))) e!853360))))

(assert (= tb!70353 b!1332137))

(declare-fun m!1489559 () Bool)

(assert (=> b!1332137 m!1489559))

(declare-fun m!1489561 () Bool)

(assert (=> tb!70353 m!1489561))

(assert (=> b!1332131 t!119042))

(declare-fun b_and!88991 () Bool)

(assert (= b_and!88953 (and (=> t!119042 result!85438) b_and!88991)))

(declare-fun t!119044 () Bool)

(declare-fun tb!70355 () Bool)

(assert (=> (and b!1331497 (= (toChars!3435 (transformation!2345 (rule!4090 t1!34))) (toChars!3435 (transformation!2345 (rule!4090 t1!34)))) t!119044) tb!70355))

(declare-fun result!85442 () Bool)

(assert (= result!85442 result!85438))

(assert (=> b!1332131 t!119044))

(declare-fun b_and!88993 () Bool)

(assert (= b_and!88957 (and (=> t!119044 result!85442) b_and!88993)))

(declare-fun t!119046 () Bool)

(declare-fun tb!70357 () Bool)

(assert (=> (and b!1331470 (= (toChars!3435 (transformation!2345 (rule!4090 t2!34))) (toChars!3435 (transformation!2345 (rule!4090 t1!34)))) t!119046) tb!70357))

(declare-fun result!85444 () Bool)

(assert (= result!85444 result!85438))

(assert (=> b!1332131 t!119046))

(declare-fun b_and!88995 () Bool)

(assert (= b_and!88961 (and (=> t!119046 result!85444) b_and!88995)))

(declare-fun m!1489563 () Bool)

(assert (=> d!375651 m!1489563))

(declare-fun m!1489565 () Bool)

(assert (=> b!1332131 m!1489565))

(assert (=> b!1332131 m!1489565))

(declare-fun m!1489567 () Bool)

(assert (=> b!1332131 m!1489567))

(declare-fun m!1489569 () Bool)

(assert (=> b!1332132 m!1489569))

(assert (=> start!118458 d!375651))

(declare-fun d!375653 () Bool)

(declare-fun res!600340 () Bool)

(declare-fun e!853361 () Bool)

(assert (=> d!375653 (=> (not res!600340) (not e!853361))))

(assert (=> d!375653 (= res!600340 (not (isEmpty!8083 (originalCharacters!3207 t2!34))))))

(assert (=> d!375653 (= (inv!17889 t2!34) e!853361)))

(declare-fun b!1332138 () Bool)

(declare-fun res!600341 () Bool)

(assert (=> b!1332138 (=> (not res!600341) (not e!853361))))

(assert (=> b!1332138 (= res!600341 (= (originalCharacters!3207 t2!34) (list!5139 (dynLambda!5986 (toChars!3435 (transformation!2345 (rule!4090 t2!34))) (value!76465 t2!34)))))))

(declare-fun b!1332139 () Bool)

(assert (=> b!1332139 (= e!853361 (= (size!11032 t2!34) (size!11043 (originalCharacters!3207 t2!34))))))

(assert (= (and d!375653 res!600340) b!1332138))

(assert (= (and b!1332138 res!600341) b!1332139))

(declare-fun b_lambda!39287 () Bool)

(assert (=> (not b_lambda!39287) (not b!1332138)))

(declare-fun tb!70359 () Bool)

(declare-fun t!119048 () Bool)

(assert (=> (and b!1331485 (= (toChars!3435 (transformation!2345 (h!18945 rules!2550))) (toChars!3435 (transformation!2345 (rule!4090 t2!34)))) t!119048) tb!70359))

(declare-fun b!1332140 () Bool)

(declare-fun e!853362 () Bool)

(declare-fun tp!385371 () Bool)

(assert (=> b!1332140 (= e!853362 (and (inv!17892 (c!218202 (dynLambda!5986 (toChars!3435 (transformation!2345 (rule!4090 t2!34))) (value!76465 t2!34)))) tp!385371))))

(declare-fun result!85446 () Bool)

(assert (=> tb!70359 (= result!85446 (and (inv!17893 (dynLambda!5986 (toChars!3435 (transformation!2345 (rule!4090 t2!34))) (value!76465 t2!34))) e!853362))))

(assert (= tb!70359 b!1332140))

(declare-fun m!1489571 () Bool)

(assert (=> b!1332140 m!1489571))

(declare-fun m!1489573 () Bool)

(assert (=> tb!70359 m!1489573))

(assert (=> b!1332138 t!119048))

(declare-fun b_and!88997 () Bool)

(assert (= b_and!88991 (and (=> t!119048 result!85446) b_and!88997)))

(declare-fun t!119050 () Bool)

(declare-fun tb!70361 () Bool)

(assert (=> (and b!1331497 (= (toChars!3435 (transformation!2345 (rule!4090 t1!34))) (toChars!3435 (transformation!2345 (rule!4090 t2!34)))) t!119050) tb!70361))

(declare-fun result!85448 () Bool)

(assert (= result!85448 result!85446))

(assert (=> b!1332138 t!119050))

(declare-fun b_and!88999 () Bool)

(assert (= b_and!88993 (and (=> t!119050 result!85448) b_and!88999)))

(declare-fun t!119052 () Bool)

(declare-fun tb!70363 () Bool)

(assert (=> (and b!1331470 (= (toChars!3435 (transformation!2345 (rule!4090 t2!34))) (toChars!3435 (transformation!2345 (rule!4090 t2!34)))) t!119052) tb!70363))

(declare-fun result!85450 () Bool)

(assert (= result!85450 result!85446))

(assert (=> b!1332138 t!119052))

(declare-fun b_and!89001 () Bool)

(assert (= b_and!88995 (and (=> t!119052 result!85450) b_and!89001)))

(declare-fun m!1489575 () Bool)

(assert (=> d!375653 m!1489575))

(declare-fun m!1489577 () Bool)

(assert (=> b!1332138 m!1489577))

(assert (=> b!1332138 m!1489577))

(declare-fun m!1489579 () Bool)

(assert (=> b!1332138 m!1489579))

(declare-fun m!1489581 () Bool)

(assert (=> b!1332139 m!1489581))

(assert (=> start!118458 d!375653))

(declare-fun d!375655 () Bool)

(assert (=> d!375655 (= (list!5138 (_1!7481 lt!440601)) (list!5143 (c!218204 (_1!7481 lt!440601))))))

(declare-fun bs!331776 () Bool)

(assert (= bs!331776 d!375655))

(declare-fun m!1489583 () Bool)

(assert (=> bs!331776 m!1489583))

(assert (=> b!1331510 d!375655))

(declare-fun b!1332141 () Bool)

(declare-fun e!853363 () Bool)

(declare-fun lt!440824 () tuple2!13190)

(assert (=> b!1332141 (= e!853363 (= (_2!7481 lt!440824) lt!440595))))

(declare-fun b!1332142 () Bool)

(declare-fun e!853365 () Bool)

(assert (=> b!1332142 (= e!853365 (= (list!5139 (_2!7481 lt!440824)) (_2!7483 (lexList!578 thiss!19762 rules!2550 (list!5139 lt!440595)))))))

(declare-fun b!1332143 () Bool)

(declare-fun res!600342 () Bool)

(assert (=> b!1332143 (=> (not res!600342) (not e!853365))))

(assert (=> b!1332143 (= res!600342 (= (list!5138 (_1!7481 lt!440824)) (_1!7483 (lexList!578 thiss!19762 rules!2550 (list!5139 lt!440595)))))))

(declare-fun b!1332145 () Bool)

(declare-fun e!853364 () Bool)

(assert (=> b!1332145 (= e!853363 e!853364)))

(declare-fun res!600343 () Bool)

(assert (=> b!1332145 (= res!600343 (< (size!11033 (_2!7481 lt!440824)) (size!11033 lt!440595)))))

(assert (=> b!1332145 (=> (not res!600343) (not e!853364))))

(declare-fun b!1332144 () Bool)

(assert (=> b!1332144 (= e!853364 (not (isEmpty!8087 (_1!7481 lt!440824))))))

(declare-fun d!375657 () Bool)

(assert (=> d!375657 e!853365))

(declare-fun res!600344 () Bool)

(assert (=> d!375657 (=> (not res!600344) (not e!853365))))

(assert (=> d!375657 (= res!600344 e!853363)))

(declare-fun c!218336 () Bool)

(assert (=> d!375657 (= c!218336 (> (size!11044 (_1!7481 lt!440824)) 0))))

(assert (=> d!375657 (= lt!440824 (lexTailRecV2!383 thiss!19762 rules!2550 lt!440595 (BalanceConc!8861 Empty!4460) lt!440595 (BalanceConc!8863 Empty!4461)))))

(assert (=> d!375657 (= (lex!875 thiss!19762 rules!2550 lt!440595) lt!440824)))

(assert (= (and d!375657 c!218336) b!1332145))

(assert (= (and d!375657 (not c!218336)) b!1332141))

(assert (= (and b!1332145 res!600343) b!1332144))

(assert (= (and d!375657 res!600344) b!1332143))

(assert (= (and b!1332143 res!600342) b!1332142))

(declare-fun m!1489585 () Bool)

(assert (=> b!1332143 m!1489585))

(assert (=> b!1332143 m!1488783))

(assert (=> b!1332143 m!1488783))

(assert (=> b!1332143 m!1488785))

(declare-fun m!1489587 () Bool)

(assert (=> b!1332142 m!1489587))

(assert (=> b!1332142 m!1488783))

(assert (=> b!1332142 m!1488783))

(assert (=> b!1332142 m!1488785))

(declare-fun m!1489589 () Bool)

(assert (=> b!1332144 m!1489589))

(declare-fun m!1489591 () Bool)

(assert (=> d!375657 m!1489591))

(declare-fun m!1489593 () Bool)

(assert (=> d!375657 m!1489593))

(declare-fun m!1489595 () Bool)

(assert (=> b!1332145 m!1489595))

(declare-fun m!1489597 () Bool)

(assert (=> b!1332145 m!1489597))

(assert (=> b!1331510 d!375657))

(declare-fun d!375659 () Bool)

(declare-fun lt!440825 () BalanceConc!8860)

(assert (=> d!375659 (= (list!5139 lt!440825) (printList!578 thiss!19762 (list!5138 (singletonSeq!942 t2!34))))))

(assert (=> d!375659 (= lt!440825 (printTailRec!560 thiss!19762 (singletonSeq!942 t2!34) 0 (BalanceConc!8861 Empty!4460)))))

(assert (=> d!375659 (= (print!814 thiss!19762 (singletonSeq!942 t2!34)) lt!440825)))

(declare-fun bs!331777 () Bool)

(assert (= bs!331777 d!375659))

(declare-fun m!1489599 () Bool)

(assert (=> bs!331777 m!1489599))

(assert (=> bs!331777 m!1488713))

(declare-fun m!1489601 () Bool)

(assert (=> bs!331777 m!1489601))

(assert (=> bs!331777 m!1489601))

(declare-fun m!1489603 () Bool)

(assert (=> bs!331777 m!1489603))

(assert (=> bs!331777 m!1488713))

(declare-fun m!1489605 () Bool)

(assert (=> bs!331777 m!1489605))

(assert (=> b!1331510 d!375659))

(declare-fun d!375661 () Bool)

(declare-fun e!853366 () Bool)

(assert (=> d!375661 e!853366))

(declare-fun res!600345 () Bool)

(assert (=> d!375661 (=> (not res!600345) (not e!853366))))

(declare-fun lt!440826 () BalanceConc!8862)

(assert (=> d!375661 (= res!600345 (= (list!5138 lt!440826) (Cons!13545 t2!34 Nil!13545)))))

(assert (=> d!375661 (= lt!440826 (singleton!404 t2!34))))

(assert (=> d!375661 (= (singletonSeq!942 t2!34) lt!440826)))

(declare-fun b!1332146 () Bool)

(assert (=> b!1332146 (= e!853366 (isBalanced!1298 (c!218204 lt!440826)))))

(assert (= (and d!375661 res!600345) b!1332146))

(declare-fun m!1489607 () Bool)

(assert (=> d!375661 m!1489607))

(declare-fun m!1489609 () Bool)

(assert (=> d!375661 m!1489609))

(declare-fun m!1489611 () Bool)

(assert (=> b!1332146 m!1489611))

(assert (=> b!1331510 d!375661))

(declare-fun d!375663 () Bool)

(declare-fun lt!440832 () Bool)

(declare-fun e!853372 () Bool)

(assert (=> d!375663 (= lt!440832 e!853372)))

(declare-fun res!600352 () Bool)

(assert (=> d!375663 (=> (not res!600352) (not e!853372))))

(assert (=> d!375663 (= res!600352 (= (list!5138 (_1!7481 (lex!875 thiss!19762 rules!2550 (print!814 thiss!19762 (singletonSeq!942 t1!34))))) (list!5138 (singletonSeq!942 t1!34))))))

(declare-fun e!853371 () Bool)

(assert (=> d!375663 (= lt!440832 e!853371)))

(declare-fun res!600353 () Bool)

(assert (=> d!375663 (=> (not res!600353) (not e!853371))))

(declare-fun lt!440831 () tuple2!13190)

(assert (=> d!375663 (= res!600353 (= (size!11044 (_1!7481 lt!440831)) 1))))

(assert (=> d!375663 (= lt!440831 (lex!875 thiss!19762 rules!2550 (print!814 thiss!19762 (singletonSeq!942 t1!34))))))

(assert (=> d!375663 (not (isEmpty!8076 rules!2550))))

(assert (=> d!375663 (= (rulesProduceIndividualToken!1009 thiss!19762 rules!2550 t1!34) lt!440832)))

(declare-fun b!1332153 () Bool)

(declare-fun res!600354 () Bool)

(assert (=> b!1332153 (=> (not res!600354) (not e!853371))))

(declare-fun apply!3155 (BalanceConc!8862 Int) Token!4352)

(assert (=> b!1332153 (= res!600354 (= (apply!3155 (_1!7481 lt!440831) 0) t1!34))))

(declare-fun b!1332154 () Bool)

(assert (=> b!1332154 (= e!853371 (isEmpty!8077 (_2!7481 lt!440831)))))

(declare-fun b!1332155 () Bool)

(assert (=> b!1332155 (= e!853372 (isEmpty!8077 (_2!7481 (lex!875 thiss!19762 rules!2550 (print!814 thiss!19762 (singletonSeq!942 t1!34))))))))

(assert (= (and d!375663 res!600353) b!1332153))

(assert (= (and b!1332153 res!600354) b!1332154))

(assert (= (and d!375663 res!600352) b!1332155))

(assert (=> d!375663 m!1488673))

(declare-fun m!1489613 () Bool)

(assert (=> d!375663 m!1489613))

(assert (=> d!375663 m!1488671))

(declare-fun m!1489615 () Bool)

(assert (=> d!375663 m!1489615))

(assert (=> d!375663 m!1488671))

(assert (=> d!375663 m!1488673))

(declare-fun m!1489617 () Bool)

(assert (=> d!375663 m!1489617))

(assert (=> d!375663 m!1488671))

(assert (=> d!375663 m!1489065))

(assert (=> d!375663 m!1488719))

(declare-fun m!1489619 () Bool)

(assert (=> b!1332153 m!1489619))

(declare-fun m!1489621 () Bool)

(assert (=> b!1332154 m!1489621))

(assert (=> b!1332155 m!1488671))

(assert (=> b!1332155 m!1488671))

(assert (=> b!1332155 m!1488673))

(assert (=> b!1332155 m!1488673))

(assert (=> b!1332155 m!1489613))

(declare-fun m!1489623 () Bool)

(assert (=> b!1332155 m!1489623))

(assert (=> b!1331488 d!375663))

(declare-fun d!375665 () Bool)

(assert (=> d!375665 (= (inv!17885 (tag!2607 (h!18945 rules!2550))) (= (mod (str.len (value!76464 (tag!2607 (h!18945 rules!2550)))) 2) 0))))

(assert (=> b!1331487 d!375665))

(declare-fun d!375667 () Bool)

(declare-fun res!600355 () Bool)

(declare-fun e!853373 () Bool)

(assert (=> d!375667 (=> (not res!600355) (not e!853373))))

(assert (=> d!375667 (= res!600355 (semiInverseModEq!886 (toChars!3435 (transformation!2345 (h!18945 rules!2550))) (toValue!3576 (transformation!2345 (h!18945 rules!2550)))))))

(assert (=> d!375667 (= (inv!17888 (transformation!2345 (h!18945 rules!2550))) e!853373)))

(declare-fun b!1332156 () Bool)

(assert (=> b!1332156 (= e!853373 (equivClasses!845 (toChars!3435 (transformation!2345 (h!18945 rules!2550))) (toValue!3576 (transformation!2345 (h!18945 rules!2550)))))))

(assert (= (and d!375667 res!600355) b!1332156))

(declare-fun m!1489625 () Bool)

(assert (=> d!375667 m!1489625))

(declare-fun m!1489627 () Bool)

(assert (=> b!1332156 m!1489627))

(assert (=> b!1331487 d!375667))

(declare-fun b!1332167 () Bool)

(declare-fun e!853380 () Bool)

(declare-fun inv!15 (TokenValue!2435) Bool)

(assert (=> b!1332167 (= e!853380 (inv!15 (value!76465 t2!34)))))

(declare-fun d!375669 () Bool)

(declare-fun c!218342 () Bool)

(assert (=> d!375669 (= c!218342 ((_ is IntegerValue!7305) (value!76465 t2!34)))))

(declare-fun e!853381 () Bool)

(assert (=> d!375669 (= (inv!21 (value!76465 t2!34)) e!853381)))

(declare-fun b!1332168 () Bool)

(declare-fun e!853382 () Bool)

(declare-fun inv!17 (TokenValue!2435) Bool)

(assert (=> b!1332168 (= e!853382 (inv!17 (value!76465 t2!34)))))

(declare-fun b!1332169 () Bool)

(declare-fun inv!16 (TokenValue!2435) Bool)

(assert (=> b!1332169 (= e!853381 (inv!16 (value!76465 t2!34)))))

(declare-fun b!1332170 () Bool)

(assert (=> b!1332170 (= e!853381 e!853382)))

(declare-fun c!218341 () Bool)

(assert (=> b!1332170 (= c!218341 ((_ is IntegerValue!7306) (value!76465 t2!34)))))

(declare-fun b!1332171 () Bool)

(declare-fun res!600358 () Bool)

(assert (=> b!1332171 (=> res!600358 e!853380)))

(assert (=> b!1332171 (= res!600358 (not ((_ is IntegerValue!7307) (value!76465 t2!34))))))

(assert (=> b!1332171 (= e!853382 e!853380)))

(assert (= (and d!375669 c!218342) b!1332169))

(assert (= (and d!375669 (not c!218342)) b!1332170))

(assert (= (and b!1332170 c!218341) b!1332168))

(assert (= (and b!1332170 (not c!218341)) b!1332171))

(assert (= (and b!1332171 (not res!600358)) b!1332167))

(declare-fun m!1489629 () Bool)

(assert (=> b!1332167 m!1489629))

(declare-fun m!1489631 () Bool)

(assert (=> b!1332168 m!1489631))

(declare-fun m!1489633 () Bool)

(assert (=> b!1332169 m!1489633))

(assert (=> b!1331466 d!375669))

(declare-fun d!375671 () Bool)

(assert (=> d!375671 (= (isEmpty!8076 rules!2550) ((_ is Nil!13544) rules!2550))))

(assert (=> b!1331465 d!375671))

(declare-fun b!1332172 () Bool)

(declare-fun e!853385 () Bool)

(declare-fun lt!440833 () Option!2616)

(assert (=> b!1332172 (= e!853385 (contains!2452 rules!2550 (rule!4090 (_1!7482 (get!4293 lt!440833)))))))

(declare-fun b!1332174 () Bool)

(declare-fun res!600364 () Bool)

(assert (=> b!1332174 (=> (not res!600364) (not e!853385))))

(assert (=> b!1332174 (= res!600364 (= (++!3460 (list!5139 (charsOf!1317 (_1!7482 (get!4293 lt!440833)))) (_2!7482 (get!4293 lt!440833))) lt!440608))))

(declare-fun b!1332175 () Bool)

(declare-fun res!600365 () Bool)

(assert (=> b!1332175 (=> (not res!600365) (not e!853385))))

(assert (=> b!1332175 (= res!600365 (< (size!11043 (_2!7482 (get!4293 lt!440833))) (size!11043 lt!440608)))))

(declare-fun b!1332176 () Bool)

(declare-fun res!600362 () Bool)

(assert (=> b!1332176 (=> (not res!600362) (not e!853385))))

(assert (=> b!1332176 (= res!600362 (matchR!1661 (regex!2345 (rule!4090 (_1!7482 (get!4293 lt!440833)))) (list!5139 (charsOf!1317 (_1!7482 (get!4293 lt!440833))))))))

(declare-fun b!1332177 () Bool)

(declare-fun e!853384 () Option!2616)

(declare-fun lt!440836 () Option!2616)

(declare-fun lt!440835 () Option!2616)

(assert (=> b!1332177 (= e!853384 (ite (and ((_ is None!2615) lt!440836) ((_ is None!2615) lt!440835)) None!2615 (ite ((_ is None!2615) lt!440835) lt!440836 (ite ((_ is None!2615) lt!440836) lt!440835 (ite (>= (size!11032 (_1!7482 (v!21244 lt!440836))) (size!11032 (_1!7482 (v!21244 lt!440835)))) lt!440836 lt!440835)))))))

(declare-fun call!90040 () Option!2616)

(assert (=> b!1332177 (= lt!440836 call!90040)))

(assert (=> b!1332177 (= lt!440835 (maxPrefix!1050 thiss!19762 (t!119019 rules!2550) lt!440608))))

(declare-fun b!1332178 () Bool)

(assert (=> b!1332178 (= e!853384 call!90040)))

(declare-fun b!1332179 () Bool)

(declare-fun res!600360 () Bool)

(assert (=> b!1332179 (=> (not res!600360) (not e!853385))))

(assert (=> b!1332179 (= res!600360 (= (list!5139 (charsOf!1317 (_1!7482 (get!4293 lt!440833)))) (originalCharacters!3207 (_1!7482 (get!4293 lt!440833)))))))

(declare-fun d!375673 () Bool)

(declare-fun e!853383 () Bool)

(assert (=> d!375673 e!853383))

(declare-fun res!600359 () Bool)

(assert (=> d!375673 (=> res!600359 e!853383)))

(assert (=> d!375673 (= res!600359 (isEmpty!8086 lt!440833))))

(assert (=> d!375673 (= lt!440833 e!853384)))

(declare-fun c!218343 () Bool)

(assert (=> d!375673 (= c!218343 (and ((_ is Cons!13544) rules!2550) ((_ is Nil!13544) (t!119019 rules!2550))))))

(declare-fun lt!440837 () Unit!19663)

(declare-fun lt!440834 () Unit!19663)

(assert (=> d!375673 (= lt!440837 lt!440834)))

(assert (=> d!375673 (isPrefix!1092 lt!440608 lt!440608)))

(assert (=> d!375673 (= lt!440834 (lemmaIsPrefixRefl!771 lt!440608 lt!440608))))

(assert (=> d!375673 (rulesValidInductive!744 thiss!19762 rules!2550)))

(assert (=> d!375673 (= (maxPrefix!1050 thiss!19762 rules!2550 lt!440608) lt!440833)))

(declare-fun b!1332173 () Bool)

(assert (=> b!1332173 (= e!853383 e!853385)))

(declare-fun res!600363 () Bool)

(assert (=> b!1332173 (=> (not res!600363) (not e!853385))))

(assert (=> b!1332173 (= res!600363 (isDefined!2195 lt!440833))))

(declare-fun bm!90035 () Bool)

(assert (=> bm!90035 (= call!90040 (maxPrefixOneRule!597 thiss!19762 (h!18945 rules!2550) lt!440608))))

(declare-fun b!1332180 () Bool)

(declare-fun res!600361 () Bool)

(assert (=> b!1332180 (=> (not res!600361) (not e!853385))))

(assert (=> b!1332180 (= res!600361 (= (value!76465 (_1!7482 (get!4293 lt!440833))) (apply!3152 (transformation!2345 (rule!4090 (_1!7482 (get!4293 lt!440833)))) (seqFromList!1615 (originalCharacters!3207 (_1!7482 (get!4293 lt!440833)))))))))

(assert (= (and d!375673 c!218343) b!1332178))

(assert (= (and d!375673 (not c!218343)) b!1332177))

(assert (= (or b!1332178 b!1332177) bm!90035))

(assert (= (and d!375673 (not res!600359)) b!1332173))

(assert (= (and b!1332173 res!600363) b!1332179))

(assert (= (and b!1332179 res!600360) b!1332175))

(assert (= (and b!1332175 res!600365) b!1332174))

(assert (= (and b!1332174 res!600364) b!1332180))

(assert (= (and b!1332180 res!600361) b!1332176))

(assert (= (and b!1332176 res!600362) b!1332172))

(declare-fun m!1489635 () Bool)

(assert (=> b!1332179 m!1489635))

(declare-fun m!1489637 () Bool)

(assert (=> b!1332179 m!1489637))

(assert (=> b!1332179 m!1489637))

(declare-fun m!1489639 () Bool)

(assert (=> b!1332179 m!1489639))

(assert (=> b!1332172 m!1489635))

(declare-fun m!1489641 () Bool)

(assert (=> b!1332172 m!1489641))

(declare-fun m!1489643 () Bool)

(assert (=> b!1332173 m!1489643))

(assert (=> b!1332175 m!1489635))

(declare-fun m!1489645 () Bool)

(assert (=> b!1332175 m!1489645))

(declare-fun m!1489647 () Bool)

(assert (=> b!1332175 m!1489647))

(assert (=> b!1332174 m!1489635))

(assert (=> b!1332174 m!1489637))

(assert (=> b!1332174 m!1489637))

(assert (=> b!1332174 m!1489639))

(assert (=> b!1332174 m!1489639))

(declare-fun m!1489649 () Bool)

(assert (=> b!1332174 m!1489649))

(declare-fun m!1489651 () Bool)

(assert (=> b!1332177 m!1489651))

(assert (=> b!1332180 m!1489635))

(declare-fun m!1489653 () Bool)

(assert (=> b!1332180 m!1489653))

(assert (=> b!1332180 m!1489653))

(declare-fun m!1489655 () Bool)

(assert (=> b!1332180 m!1489655))

(declare-fun m!1489657 () Bool)

(assert (=> d!375673 m!1489657))

(declare-fun m!1489659 () Bool)

(assert (=> d!375673 m!1489659))

(declare-fun m!1489661 () Bool)

(assert (=> d!375673 m!1489661))

(assert (=> d!375673 m!1489049))

(declare-fun m!1489663 () Bool)

(assert (=> bm!90035 m!1489663))

(assert (=> b!1332176 m!1489635))

(assert (=> b!1332176 m!1489637))

(assert (=> b!1332176 m!1489637))

(assert (=> b!1332176 m!1489639))

(assert (=> b!1332176 m!1489639))

(declare-fun m!1489665 () Bool)

(assert (=> b!1332176 m!1489665))

(assert (=> b!1331508 d!375673))

(declare-fun d!375675 () Bool)

(assert (=> d!375675 (= (inv!17885 (tag!2607 (rule!4090 t2!34))) (= (mod (str.len (value!76464 (tag!2607 (rule!4090 t2!34)))) 2) 0))))

(assert (=> b!1331486 d!375675))

(declare-fun d!375677 () Bool)

(declare-fun res!600366 () Bool)

(declare-fun e!853386 () Bool)

(assert (=> d!375677 (=> (not res!600366) (not e!853386))))

(assert (=> d!375677 (= res!600366 (semiInverseModEq!886 (toChars!3435 (transformation!2345 (rule!4090 t2!34))) (toValue!3576 (transformation!2345 (rule!4090 t2!34)))))))

(assert (=> d!375677 (= (inv!17888 (transformation!2345 (rule!4090 t2!34))) e!853386)))

(declare-fun b!1332181 () Bool)

(assert (=> b!1332181 (= e!853386 (equivClasses!845 (toChars!3435 (transformation!2345 (rule!4090 t2!34))) (toValue!3576 (transformation!2345 (rule!4090 t2!34)))))))

(assert (= (and d!375677 res!600366) b!1332181))

(declare-fun m!1489667 () Bool)

(assert (=> d!375677 m!1489667))

(declare-fun m!1489669 () Bool)

(assert (=> b!1332181 m!1489669))

(assert (=> b!1331486 d!375677))

(declare-fun d!375679 () Bool)

(declare-fun lt!440839 () Bool)

(declare-fun e!853388 () Bool)

(assert (=> d!375679 (= lt!440839 e!853388)))

(declare-fun res!600367 () Bool)

(assert (=> d!375679 (=> (not res!600367) (not e!853388))))

(assert (=> d!375679 (= res!600367 (= (list!5138 (_1!7481 (lex!875 thiss!19762 rules!2550 (print!814 thiss!19762 (singletonSeq!942 t2!34))))) (list!5138 (singletonSeq!942 t2!34))))))

(declare-fun e!853387 () Bool)

(assert (=> d!375679 (= lt!440839 e!853387)))

(declare-fun res!600368 () Bool)

(assert (=> d!375679 (=> (not res!600368) (not e!853387))))

(declare-fun lt!440838 () tuple2!13190)

(assert (=> d!375679 (= res!600368 (= (size!11044 (_1!7481 lt!440838)) 1))))

(assert (=> d!375679 (= lt!440838 (lex!875 thiss!19762 rules!2550 (print!814 thiss!19762 (singletonSeq!942 t2!34))))))

(assert (=> d!375679 (not (isEmpty!8076 rules!2550))))

(assert (=> d!375679 (= (rulesProduceIndividualToken!1009 thiss!19762 rules!2550 t2!34) lt!440839)))

(declare-fun b!1332182 () Bool)

(declare-fun res!600369 () Bool)

(assert (=> b!1332182 (=> (not res!600369) (not e!853387))))

(assert (=> b!1332182 (= res!600369 (= (apply!3155 (_1!7481 lt!440838) 0) t2!34))))

(declare-fun b!1332183 () Bool)

(assert (=> b!1332183 (= e!853387 (isEmpty!8077 (_2!7481 lt!440838)))))

(declare-fun b!1332184 () Bool)

(assert (=> b!1332184 (= e!853388 (isEmpty!8077 (_2!7481 (lex!875 thiss!19762 rules!2550 (print!814 thiss!19762 (singletonSeq!942 t2!34))))))))

(assert (= (and d!375679 res!600368) b!1332182))

(assert (= (and b!1332182 res!600369) b!1332183))

(assert (= (and d!375679 res!600367) b!1332184))

(assert (=> d!375679 m!1488715))

(declare-fun m!1489671 () Bool)

(assert (=> d!375679 m!1489671))

(assert (=> d!375679 m!1488713))

(declare-fun m!1489673 () Bool)

(assert (=> d!375679 m!1489673))

(assert (=> d!375679 m!1488713))

(assert (=> d!375679 m!1488715))

(declare-fun m!1489675 () Bool)

(assert (=> d!375679 m!1489675))

(assert (=> d!375679 m!1488713))

(assert (=> d!375679 m!1489601))

(assert (=> d!375679 m!1488719))

(declare-fun m!1489677 () Bool)

(assert (=> b!1332182 m!1489677))

(declare-fun m!1489679 () Bool)

(assert (=> b!1332183 m!1489679))

(assert (=> b!1332184 m!1488713))

(assert (=> b!1332184 m!1488713))

(assert (=> b!1332184 m!1488715))

(assert (=> b!1332184 m!1488715))

(assert (=> b!1332184 m!1489671))

(declare-fun m!1489681 () Bool)

(assert (=> b!1332184 m!1489681))

(assert (=> b!1331506 d!375679))

(declare-fun d!375681 () Bool)

(declare-fun lt!440842 () Bool)

(declare-fun content!1931 (List!13610) (InoxSet Rule!4490))

(assert (=> d!375681 (= lt!440842 (select (content!1931 rules!2550) lt!440578))))

(declare-fun e!853393 () Bool)

(assert (=> d!375681 (= lt!440842 e!853393)))

(declare-fun res!600374 () Bool)

(assert (=> d!375681 (=> (not res!600374) (not e!853393))))

(assert (=> d!375681 (= res!600374 ((_ is Cons!13544) rules!2550))))

(assert (=> d!375681 (= (contains!2452 rules!2550 lt!440578) lt!440842)))

(declare-fun b!1332189 () Bool)

(declare-fun e!853394 () Bool)

(assert (=> b!1332189 (= e!853393 e!853394)))

(declare-fun res!600375 () Bool)

(assert (=> b!1332189 (=> res!600375 e!853394)))

(assert (=> b!1332189 (= res!600375 (= (h!18945 rules!2550) lt!440578))))

(declare-fun b!1332190 () Bool)

(assert (=> b!1332190 (= e!853394 (contains!2452 (t!119019 rules!2550) lt!440578))))

(assert (= (and d!375681 res!600374) b!1332189))

(assert (= (and b!1332189 (not res!600375)) b!1332190))

(declare-fun m!1489683 () Bool)

(assert (=> d!375681 m!1489683))

(declare-fun m!1489685 () Bool)

(assert (=> d!375681 m!1489685))

(declare-fun m!1489687 () Bool)

(assert (=> b!1332190 m!1489687))

(assert (=> b!1331505 d!375681))

(declare-fun b!1332219 () Bool)

(declare-fun res!600396 () Bool)

(declare-fun e!853411 () Bool)

(assert (=> b!1332219 (=> res!600396 e!853411)))

(declare-fun tail!1910 (List!13609) List!13609)

(assert (=> b!1332219 (= res!600396 (not (isEmpty!8083 (tail!1910 lt!440587))))))

(declare-fun bm!90038 () Bool)

(declare-fun call!90043 () Bool)

(assert (=> bm!90038 (= call!90043 (isEmpty!8083 lt!440587))))

(declare-fun b!1332221 () Bool)

(declare-fun e!853415 () Bool)

(declare-fun lt!440845 () Bool)

(assert (=> b!1332221 (= e!853415 (= lt!440845 call!90043))))

(declare-fun b!1332222 () Bool)

(declare-fun res!600393 () Bool)

(declare-fun e!853413 () Bool)

(assert (=> b!1332222 (=> (not res!600393) (not e!853413))))

(assert (=> b!1332222 (= res!600393 (isEmpty!8083 (tail!1910 lt!440587)))))

(declare-fun b!1332223 () Bool)

(declare-fun res!600399 () Bool)

(declare-fun e!853410 () Bool)

(assert (=> b!1332223 (=> res!600399 e!853410)))

(assert (=> b!1332223 (= res!600399 (not ((_ is ElementMatch!3659) (regex!2345 (rule!4090 t2!34)))))))

(declare-fun e!853409 () Bool)

(assert (=> b!1332223 (= e!853409 e!853410)))

(declare-fun b!1332224 () Bool)

(assert (=> b!1332224 (= e!853415 e!853409)))

(declare-fun c!218351 () Bool)

(assert (=> b!1332224 (= c!218351 ((_ is EmptyLang!3659) (regex!2345 (rule!4090 t2!34))))))

(declare-fun b!1332220 () Bool)

(declare-fun e!853414 () Bool)

(assert (=> b!1332220 (= e!853410 e!853414)))

(declare-fun res!600394 () Bool)

(assert (=> b!1332220 (=> (not res!600394) (not e!853414))))

(assert (=> b!1332220 (= res!600394 (not lt!440845))))

(declare-fun d!375683 () Bool)

(assert (=> d!375683 e!853415))

(declare-fun c!218350 () Bool)

(assert (=> d!375683 (= c!218350 ((_ is EmptyExpr!3659) (regex!2345 (rule!4090 t2!34))))))

(declare-fun e!853412 () Bool)

(assert (=> d!375683 (= lt!440845 e!853412)))

(declare-fun c!218352 () Bool)

(assert (=> d!375683 (= c!218352 (isEmpty!8083 lt!440587))))

(assert (=> d!375683 (validRegex!1575 (regex!2345 (rule!4090 t2!34)))))

(assert (=> d!375683 (= (matchR!1661 (regex!2345 (rule!4090 t2!34)) lt!440587) lt!440845)))

(declare-fun b!1332225 () Bool)

(assert (=> b!1332225 (= e!853413 (= (head!2347 lt!440587) (c!218203 (regex!2345 (rule!4090 t2!34)))))))

(declare-fun b!1332226 () Bool)

(assert (=> b!1332226 (= e!853409 (not lt!440845))))

(declare-fun b!1332227 () Bool)

(assert (=> b!1332227 (= e!853414 e!853411)))

(declare-fun res!600398 () Bool)

(assert (=> b!1332227 (=> res!600398 e!853411)))

(assert (=> b!1332227 (= res!600398 call!90043)))

(declare-fun b!1332228 () Bool)

(declare-fun res!600397 () Bool)

(assert (=> b!1332228 (=> res!600397 e!853410)))

(assert (=> b!1332228 (= res!600397 e!853413)))

(declare-fun res!600395 () Bool)

(assert (=> b!1332228 (=> (not res!600395) (not e!853413))))

(assert (=> b!1332228 (= res!600395 lt!440845)))

(declare-fun b!1332229 () Bool)

(assert (=> b!1332229 (= e!853411 (not (= (head!2347 lt!440587) (c!218203 (regex!2345 (rule!4090 t2!34))))))))

(declare-fun b!1332230 () Bool)

(declare-fun derivativeStep!917 (Regex!3659 C!7608) Regex!3659)

(assert (=> b!1332230 (= e!853412 (matchR!1661 (derivativeStep!917 (regex!2345 (rule!4090 t2!34)) (head!2347 lt!440587)) (tail!1910 lt!440587)))))

(declare-fun b!1332231 () Bool)

(declare-fun nullable!1165 (Regex!3659) Bool)

(assert (=> b!1332231 (= e!853412 (nullable!1165 (regex!2345 (rule!4090 t2!34))))))

(declare-fun b!1332232 () Bool)

(declare-fun res!600392 () Bool)

(assert (=> b!1332232 (=> (not res!600392) (not e!853413))))

(assert (=> b!1332232 (= res!600392 (not call!90043))))

(assert (= (and d!375683 c!218352) b!1332231))

(assert (= (and d!375683 (not c!218352)) b!1332230))

(assert (= (and d!375683 c!218350) b!1332221))

(assert (= (and d!375683 (not c!218350)) b!1332224))

(assert (= (and b!1332224 c!218351) b!1332226))

(assert (= (and b!1332224 (not c!218351)) b!1332223))

(assert (= (and b!1332223 (not res!600399)) b!1332228))

(assert (= (and b!1332228 res!600395) b!1332232))

(assert (= (and b!1332232 res!600392) b!1332222))

(assert (= (and b!1332222 res!600393) b!1332225))

(assert (= (and b!1332228 (not res!600397)) b!1332220))

(assert (= (and b!1332220 res!600394) b!1332227))

(assert (= (and b!1332227 (not res!600398)) b!1332219))

(assert (= (and b!1332219 (not res!600396)) b!1332229))

(assert (= (or b!1332221 b!1332232 b!1332227) bm!90038))

(declare-fun m!1489689 () Bool)

(assert (=> b!1332231 m!1489689))

(assert (=> b!1332229 m!1488665))

(declare-fun m!1489691 () Bool)

(assert (=> bm!90038 m!1489691))

(declare-fun m!1489693 () Bool)

(assert (=> b!1332219 m!1489693))

(assert (=> b!1332219 m!1489693))

(declare-fun m!1489695 () Bool)

(assert (=> b!1332219 m!1489695))

(assert (=> b!1332222 m!1489693))

(assert (=> b!1332222 m!1489693))

(assert (=> b!1332222 m!1489695))

(assert (=> b!1332230 m!1488665))

(assert (=> b!1332230 m!1488665))

(declare-fun m!1489697 () Bool)

(assert (=> b!1332230 m!1489697))

(assert (=> b!1332230 m!1489693))

(assert (=> b!1332230 m!1489697))

(assert (=> b!1332230 m!1489693))

(declare-fun m!1489699 () Bool)

(assert (=> b!1332230 m!1489699))

(assert (=> d!375683 m!1489691))

(declare-fun m!1489701 () Bool)

(assert (=> d!375683 m!1489701))

(assert (=> b!1332225 m!1488665))

(assert (=> b!1331484 d!375683))

(declare-fun b!1332242 () Bool)

(declare-fun e!853421 () List!13609)

(assert (=> b!1332242 (= e!853421 (Cons!13543 (h!18944 lt!440608) (++!3460 (t!119018 lt!440608) (Cons!13543 lt!440593 Nil!13543))))))

(declare-fun d!375685 () Bool)

(declare-fun e!853420 () Bool)

(assert (=> d!375685 e!853420))

(declare-fun res!600405 () Bool)

(assert (=> d!375685 (=> (not res!600405) (not e!853420))))

(declare-fun lt!440848 () List!13609)

(assert (=> d!375685 (= res!600405 (= (content!1928 lt!440848) ((_ map or) (content!1928 lt!440608) (content!1928 (Cons!13543 lt!440593 Nil!13543)))))))

(assert (=> d!375685 (= lt!440848 e!853421)))

(declare-fun c!218355 () Bool)

(assert (=> d!375685 (= c!218355 ((_ is Nil!13543) lt!440608))))

(assert (=> d!375685 (= (++!3460 lt!440608 (Cons!13543 lt!440593 Nil!13543)) lt!440848)))

(declare-fun b!1332241 () Bool)

(assert (=> b!1332241 (= e!853421 (Cons!13543 lt!440593 Nil!13543))))

(declare-fun b!1332243 () Bool)

(declare-fun res!600404 () Bool)

(assert (=> b!1332243 (=> (not res!600404) (not e!853420))))

(assert (=> b!1332243 (= res!600404 (= (size!11043 lt!440848) (+ (size!11043 lt!440608) (size!11043 (Cons!13543 lt!440593 Nil!13543)))))))

(declare-fun b!1332244 () Bool)

(assert (=> b!1332244 (= e!853420 (or (not (= (Cons!13543 lt!440593 Nil!13543) Nil!13543)) (= lt!440848 lt!440608)))))

(assert (= (and d!375685 c!218355) b!1332241))

(assert (= (and d!375685 (not c!218355)) b!1332242))

(assert (= (and d!375685 res!600405) b!1332243))

(assert (= (and b!1332243 res!600404) b!1332244))

(declare-fun m!1489703 () Bool)

(assert (=> b!1332242 m!1489703))

(declare-fun m!1489705 () Bool)

(assert (=> d!375685 m!1489705))

(declare-fun m!1489707 () Bool)

(assert (=> d!375685 m!1489707))

(declare-fun m!1489709 () Bool)

(assert (=> d!375685 m!1489709))

(declare-fun m!1489711 () Bool)

(assert (=> b!1332243 m!1489711))

(assert (=> b!1332243 m!1489647))

(declare-fun m!1489713 () Bool)

(assert (=> b!1332243 m!1489713))

(assert (=> b!1331483 d!375685))

(declare-fun d!375687 () Bool)

(assert (=> d!375687 (= (list!5139 lt!440604) (list!5142 (c!218202 lt!440604)))))

(declare-fun bs!331778 () Bool)

(assert (= bs!331778 d!375687))

(declare-fun m!1489715 () Bool)

(assert (=> bs!331778 m!1489715))

(assert (=> b!1331483 d!375687))

(declare-fun d!375689 () Bool)

(declare-fun c!218358 () Bool)

(assert (=> d!375689 (= c!218358 (isEmpty!8083 lt!440582))))

(declare-fun e!853424 () Bool)

(assert (=> d!375689 (= (prefixMatch!172 lt!440606 lt!440582) e!853424)))

(declare-fun b!1332249 () Bool)

(declare-fun lostCause!293 (Regex!3659) Bool)

(assert (=> b!1332249 (= e!853424 (not (lostCause!293 lt!440606)))))

(declare-fun b!1332250 () Bool)

(assert (=> b!1332250 (= e!853424 (prefixMatch!172 (derivativeStep!917 lt!440606 (head!2347 lt!440582)) (tail!1910 lt!440582)))))

(assert (= (and d!375689 c!218358) b!1332249))

(assert (= (and d!375689 (not c!218358)) b!1332250))

(declare-fun m!1489717 () Bool)

(assert (=> d!375689 m!1489717))

(declare-fun m!1489719 () Bool)

(assert (=> b!1332249 m!1489719))

(declare-fun m!1489721 () Bool)

(assert (=> b!1332250 m!1489721))

(assert (=> b!1332250 m!1489721))

(declare-fun m!1489723 () Bool)

(assert (=> b!1332250 m!1489723))

(declare-fun m!1489725 () Bool)

(assert (=> b!1332250 m!1489725))

(assert (=> b!1332250 m!1489723))

(assert (=> b!1332250 m!1489725))

(declare-fun m!1489727 () Bool)

(assert (=> b!1332250 m!1489727))

(assert (=> b!1331483 d!375689))

(declare-fun d!375691 () Bool)

(declare-fun lt!440849 () C!7608)

(assert (=> d!375691 (= lt!440849 (apply!3153 (list!5139 lt!440591) 0))))

(assert (=> d!375691 (= lt!440849 (apply!3154 (c!218202 lt!440591) 0))))

(declare-fun e!853425 () Bool)

(assert (=> d!375691 e!853425))

(declare-fun res!600406 () Bool)

(assert (=> d!375691 (=> (not res!600406) (not e!853425))))

(assert (=> d!375691 (= res!600406 (<= 0 0))))

(assert (=> d!375691 (= (apply!3147 lt!440591 0) lt!440849)))

(declare-fun b!1332251 () Bool)

(assert (=> b!1332251 (= e!853425 (< 0 (size!11033 lt!440591)))))

(assert (= (and d!375691 res!600406) b!1332251))

(assert (=> d!375691 m!1488693))

(assert (=> d!375691 m!1488693))

(declare-fun m!1489729 () Bool)

(assert (=> d!375691 m!1489729))

(declare-fun m!1489731 () Bool)

(assert (=> d!375691 m!1489731))

(assert (=> b!1332251 m!1488629))

(assert (=> b!1331483 d!375691))

(declare-fun d!375693 () Bool)

(declare-fun lt!440852 () BalanceConc!8860)

(assert (=> d!375693 (= (list!5139 lt!440852) (originalCharacters!3207 t1!34))))

(assert (=> d!375693 (= lt!440852 (dynLambda!5986 (toChars!3435 (transformation!2345 (rule!4090 t1!34))) (value!76465 t1!34)))))

(assert (=> d!375693 (= (charsOf!1317 t1!34) lt!440852)))

(declare-fun b_lambda!39289 () Bool)

(assert (=> (not b_lambda!39289) (not d!375693)))

(assert (=> d!375693 t!119042))

(declare-fun b_and!89003 () Bool)

(assert (= b_and!88997 (and (=> t!119042 result!85438) b_and!89003)))

(assert (=> d!375693 t!119044))

(declare-fun b_and!89005 () Bool)

(assert (= b_and!88999 (and (=> t!119044 result!85442) b_and!89005)))

(assert (=> d!375693 t!119046))

(declare-fun b_and!89007 () Bool)

(assert (= b_and!89001 (and (=> t!119046 result!85444) b_and!89007)))

(declare-fun m!1489733 () Bool)

(assert (=> d!375693 m!1489733))

(assert (=> d!375693 m!1489565))

(assert (=> b!1331483 d!375693))

(declare-fun bs!331779 () Bool)

(declare-fun d!375695 () Bool)

(assert (= bs!331779 (and d!375695 b!1331496)))

(declare-fun lambda!55517 () Int)

(assert (=> bs!331779 (= lambda!55517 lambda!55470)))

(declare-fun lt!440855 () Unit!19663)

(declare-fun lemma!87 (List!13610 LexerInterface!2040 List!13610) Unit!19663)

(assert (=> d!375695 (= lt!440855 (lemma!87 rules!2550 thiss!19762 rules!2550))))

(declare-fun generalisedUnion!95 (List!13612) Regex!3659)

(assert (=> d!375695 (= (rulesRegex!230 thiss!19762 rules!2550) (generalisedUnion!95 (map!2984 rules!2550 lambda!55517)))))

(declare-fun bs!331780 () Bool)

(assert (= bs!331780 d!375695))

(declare-fun m!1489735 () Bool)

(assert (=> bs!331780 m!1489735))

(declare-fun m!1489737 () Bool)

(assert (=> bs!331780 m!1489737))

(assert (=> bs!331780 m!1489737))

(declare-fun m!1489739 () Bool)

(assert (=> bs!331780 m!1489739))

(assert (=> b!1331483 d!375695))

(declare-fun d!375697 () Bool)

(declare-fun lt!440856 () Bool)

(assert (=> d!375697 (= lt!440856 (isEmpty!8083 (list!5139 (_2!7481 lt!440599))))))

(assert (=> d!375697 (= lt!440856 (isEmpty!8084 (c!218202 (_2!7481 lt!440599))))))

(assert (=> d!375697 (= (isEmpty!8077 (_2!7481 lt!440599)) lt!440856)))

(declare-fun bs!331781 () Bool)

(assert (= bs!331781 d!375697))

(declare-fun m!1489741 () Bool)

(assert (=> bs!331781 m!1489741))

(assert (=> bs!331781 m!1489741))

(declare-fun m!1489743 () Bool)

(assert (=> bs!331781 m!1489743))

(declare-fun m!1489745 () Bool)

(assert (=> bs!331781 m!1489745))

(assert (=> b!1331504 d!375697))

(declare-fun b!1332252 () Bool)

(declare-fun res!600411 () Bool)

(declare-fun e!853428 () Bool)

(assert (=> b!1332252 (=> res!600411 e!853428)))

(assert (=> b!1332252 (= res!600411 (not (isEmpty!8083 (tail!1910 lt!440608))))))

(declare-fun bm!90039 () Bool)

(declare-fun call!90044 () Bool)

(assert (=> bm!90039 (= call!90044 (isEmpty!8083 lt!440608))))

(declare-fun b!1332254 () Bool)

(declare-fun e!853432 () Bool)

(declare-fun lt!440857 () Bool)

(assert (=> b!1332254 (= e!853432 (= lt!440857 call!90044))))

(declare-fun b!1332255 () Bool)

(declare-fun res!600408 () Bool)

(declare-fun e!853430 () Bool)

(assert (=> b!1332255 (=> (not res!600408) (not e!853430))))

(assert (=> b!1332255 (= res!600408 (isEmpty!8083 (tail!1910 lt!440608)))))

(declare-fun b!1332256 () Bool)

(declare-fun res!600414 () Bool)

(declare-fun e!853427 () Bool)

(assert (=> b!1332256 (=> res!600414 e!853427)))

(assert (=> b!1332256 (= res!600414 (not ((_ is ElementMatch!3659) (regex!2345 (rule!4090 t1!34)))))))

(declare-fun e!853426 () Bool)

(assert (=> b!1332256 (= e!853426 e!853427)))

(declare-fun b!1332257 () Bool)

(assert (=> b!1332257 (= e!853432 e!853426)))

(declare-fun c!218360 () Bool)

(assert (=> b!1332257 (= c!218360 ((_ is EmptyLang!3659) (regex!2345 (rule!4090 t1!34))))))

(declare-fun b!1332253 () Bool)

(declare-fun e!853431 () Bool)

(assert (=> b!1332253 (= e!853427 e!853431)))

(declare-fun res!600409 () Bool)

(assert (=> b!1332253 (=> (not res!600409) (not e!853431))))

(assert (=> b!1332253 (= res!600409 (not lt!440857))))

(declare-fun d!375699 () Bool)

(assert (=> d!375699 e!853432))

(declare-fun c!218359 () Bool)

(assert (=> d!375699 (= c!218359 ((_ is EmptyExpr!3659) (regex!2345 (rule!4090 t1!34))))))

(declare-fun e!853429 () Bool)

(assert (=> d!375699 (= lt!440857 e!853429)))

(declare-fun c!218361 () Bool)

(assert (=> d!375699 (= c!218361 (isEmpty!8083 lt!440608))))

(assert (=> d!375699 (validRegex!1575 (regex!2345 (rule!4090 t1!34)))))

(assert (=> d!375699 (= (matchR!1661 (regex!2345 (rule!4090 t1!34)) lt!440608) lt!440857)))

(declare-fun b!1332258 () Bool)

(assert (=> b!1332258 (= e!853430 (= (head!2347 lt!440608) (c!218203 (regex!2345 (rule!4090 t1!34)))))))

(declare-fun b!1332259 () Bool)

(assert (=> b!1332259 (= e!853426 (not lt!440857))))

(declare-fun b!1332260 () Bool)

(assert (=> b!1332260 (= e!853431 e!853428)))

(declare-fun res!600413 () Bool)

(assert (=> b!1332260 (=> res!600413 e!853428)))

(assert (=> b!1332260 (= res!600413 call!90044)))

(declare-fun b!1332261 () Bool)

(declare-fun res!600412 () Bool)

(assert (=> b!1332261 (=> res!600412 e!853427)))

(assert (=> b!1332261 (= res!600412 e!853430)))

(declare-fun res!600410 () Bool)

(assert (=> b!1332261 (=> (not res!600410) (not e!853430))))

(assert (=> b!1332261 (= res!600410 lt!440857)))

(declare-fun b!1332262 () Bool)

(assert (=> b!1332262 (= e!853428 (not (= (head!2347 lt!440608) (c!218203 (regex!2345 (rule!4090 t1!34))))))))

(declare-fun b!1332263 () Bool)

(assert (=> b!1332263 (= e!853429 (matchR!1661 (derivativeStep!917 (regex!2345 (rule!4090 t1!34)) (head!2347 lt!440608)) (tail!1910 lt!440608)))))

(declare-fun b!1332264 () Bool)

(assert (=> b!1332264 (= e!853429 (nullable!1165 (regex!2345 (rule!4090 t1!34))))))

(declare-fun b!1332265 () Bool)

(declare-fun res!600407 () Bool)

(assert (=> b!1332265 (=> (not res!600407) (not e!853430))))

(assert (=> b!1332265 (= res!600407 (not call!90044))))

(assert (= (and d!375699 c!218361) b!1332264))

(assert (= (and d!375699 (not c!218361)) b!1332263))

(assert (= (and d!375699 c!218359) b!1332254))

(assert (= (and d!375699 (not c!218359)) b!1332257))

(assert (= (and b!1332257 c!218360) b!1332259))

(assert (= (and b!1332257 (not c!218360)) b!1332256))

(assert (= (and b!1332256 (not res!600414)) b!1332261))

(assert (= (and b!1332261 res!600410) b!1332265))

(assert (= (and b!1332265 res!600407) b!1332255))

(assert (= (and b!1332255 res!600408) b!1332258))

(assert (= (and b!1332261 (not res!600412)) b!1332253))

(assert (= (and b!1332253 res!600409) b!1332260))

(assert (= (and b!1332260 (not res!600413)) b!1332252))

(assert (= (and b!1332252 (not res!600411)) b!1332262))

(assert (= (or b!1332254 b!1332265 b!1332260) bm!90039))

(declare-fun m!1489747 () Bool)

(assert (=> b!1332264 m!1489747))

(assert (=> b!1332262 m!1488633))

(declare-fun m!1489749 () Bool)

(assert (=> bm!90039 m!1489749))

(declare-fun m!1489751 () Bool)

(assert (=> b!1332252 m!1489751))

(assert (=> b!1332252 m!1489751))

(declare-fun m!1489753 () Bool)

(assert (=> b!1332252 m!1489753))

(assert (=> b!1332255 m!1489751))

(assert (=> b!1332255 m!1489751))

(assert (=> b!1332255 m!1489753))

(assert (=> b!1332263 m!1488633))

(assert (=> b!1332263 m!1488633))

(declare-fun m!1489755 () Bool)

(assert (=> b!1332263 m!1489755))

(assert (=> b!1332263 m!1489751))

(assert (=> b!1332263 m!1489755))

(assert (=> b!1332263 m!1489751))

(declare-fun m!1489757 () Bool)

(assert (=> b!1332263 m!1489757))

(assert (=> d!375699 m!1489749))

(declare-fun m!1489759 () Bool)

(assert (=> d!375699 m!1489759))

(assert (=> b!1332258 m!1488633))

(assert (=> b!1331503 d!375699))

(declare-fun d!375701 () Bool)

(assert (=> d!375701 (dynLambda!5981 lambda!55473 (rule!4090 t2!34))))

(declare-fun lt!440860 () Unit!19663)

(declare-fun choose!8180 (List!13610 Int Rule!4490) Unit!19663)

(assert (=> d!375701 (= lt!440860 (choose!8180 rules!2550 lambda!55473 (rule!4090 t2!34)))))

(declare-fun e!853435 () Bool)

(assert (=> d!375701 e!853435))

(declare-fun res!600417 () Bool)

(assert (=> d!375701 (=> (not res!600417) (not e!853435))))

(assert (=> d!375701 (= res!600417 (forall!3330 rules!2550 lambda!55473))))

(assert (=> d!375701 (= (forallContained!596 rules!2550 lambda!55473 (rule!4090 t2!34)) lt!440860)))

(declare-fun b!1332268 () Bool)

(assert (=> b!1332268 (= e!853435 (contains!2452 rules!2550 (rule!4090 t2!34)))))

(assert (= (and d!375701 res!600417) b!1332268))

(declare-fun b_lambda!39291 () Bool)

(assert (=> (not b_lambda!39291) (not d!375701)))

(declare-fun m!1489761 () Bool)

(assert (=> d!375701 m!1489761))

(declare-fun m!1489763 () Bool)

(assert (=> d!375701 m!1489763))

(declare-fun m!1489765 () Bool)

(assert (=> d!375701 m!1489765))

(assert (=> b!1332268 m!1488771))

(assert (=> b!1331503 d!375701))

(declare-fun d!375703 () Bool)

(assert (=> d!375703 (dynLambda!5981 lambda!55473 (rule!4090 t1!34))))

(declare-fun lt!440861 () Unit!19663)

(assert (=> d!375703 (= lt!440861 (choose!8180 rules!2550 lambda!55473 (rule!4090 t1!34)))))

(declare-fun e!853436 () Bool)

(assert (=> d!375703 e!853436))

(declare-fun res!600418 () Bool)

(assert (=> d!375703 (=> (not res!600418) (not e!853436))))

(assert (=> d!375703 (= res!600418 (forall!3330 rules!2550 lambda!55473))))

(assert (=> d!375703 (= (forallContained!596 rules!2550 lambda!55473 (rule!4090 t1!34)) lt!440861)))

(declare-fun b!1332269 () Bool)

(assert (=> b!1332269 (= e!853436 (contains!2452 rules!2550 (rule!4090 t1!34)))))

(assert (= (and d!375703 res!600418) b!1332269))

(declare-fun b_lambda!39293 () Bool)

(assert (=> (not b_lambda!39293) (not d!375703)))

(declare-fun m!1489767 () Bool)

(assert (=> d!375703 m!1489767))

(declare-fun m!1489769 () Bool)

(assert (=> d!375703 m!1489769))

(assert (=> d!375703 m!1489765))

(assert (=> b!1332269 m!1488687))

(assert (=> b!1331503 d!375703))

(declare-fun d!375705 () Bool)

(assert (=> d!375705 (dynLambda!5981 lambda!55473 lt!440578)))

(declare-fun lt!440862 () Unit!19663)

(assert (=> d!375705 (= lt!440862 (choose!8180 rules!2550 lambda!55473 lt!440578))))

(declare-fun e!853437 () Bool)

(assert (=> d!375705 e!853437))

(declare-fun res!600419 () Bool)

(assert (=> d!375705 (=> (not res!600419) (not e!853437))))

(assert (=> d!375705 (= res!600419 (forall!3330 rules!2550 lambda!55473))))

(assert (=> d!375705 (= (forallContained!596 rules!2550 lambda!55473 lt!440578) lt!440862)))

(declare-fun b!1332270 () Bool)

(assert (=> b!1332270 (= e!853437 (contains!2452 rules!2550 lt!440578))))

(assert (= (and d!375705 res!600419) b!1332270))

(declare-fun b_lambda!39295 () Bool)

(assert (=> (not b_lambda!39295) (not d!375705)))

(declare-fun m!1489771 () Bool)

(assert (=> d!375705 m!1489771))

(declare-fun m!1489773 () Bool)

(assert (=> d!375705 m!1489773))

(assert (=> d!375705 m!1489765))

(assert (=> b!1332270 m!1488789))

(assert (=> b!1331503 d!375705))

(declare-fun b!1332271 () Bool)

(declare-fun e!853438 () Bool)

(assert (=> b!1332271 (= e!853438 (inv!15 (value!76465 t1!34)))))

(declare-fun d!375707 () Bool)

(declare-fun c!218363 () Bool)

(assert (=> d!375707 (= c!218363 ((_ is IntegerValue!7305) (value!76465 t1!34)))))

(declare-fun e!853439 () Bool)

(assert (=> d!375707 (= (inv!21 (value!76465 t1!34)) e!853439)))

(declare-fun b!1332272 () Bool)

(declare-fun e!853440 () Bool)

(assert (=> b!1332272 (= e!853440 (inv!17 (value!76465 t1!34)))))

(declare-fun b!1332273 () Bool)

(assert (=> b!1332273 (= e!853439 (inv!16 (value!76465 t1!34)))))

(declare-fun b!1332274 () Bool)

(assert (=> b!1332274 (= e!853439 e!853440)))

(declare-fun c!218362 () Bool)

(assert (=> b!1332274 (= c!218362 ((_ is IntegerValue!7306) (value!76465 t1!34)))))

(declare-fun b!1332275 () Bool)

(declare-fun res!600420 () Bool)

(assert (=> b!1332275 (=> res!600420 e!853438)))

(assert (=> b!1332275 (= res!600420 (not ((_ is IntegerValue!7307) (value!76465 t1!34))))))

(assert (=> b!1332275 (= e!853440 e!853438)))

(assert (= (and d!375707 c!218363) b!1332273))

(assert (= (and d!375707 (not c!218363)) b!1332274))

(assert (= (and b!1332274 c!218362) b!1332272))

(assert (= (and b!1332274 (not c!218362)) b!1332275))

(assert (= (and b!1332275 (not res!600420)) b!1332271))

(declare-fun m!1489775 () Bool)

(assert (=> b!1332271 m!1489775))

(declare-fun m!1489777 () Bool)

(assert (=> b!1332272 m!1489777))

(declare-fun m!1489779 () Bool)

(assert (=> b!1332273 m!1489779))

(assert (=> b!1331482 d!375707))

(declare-fun b!1332276 () Bool)

(declare-fun res!600425 () Bool)

(declare-fun e!853443 () Bool)

(assert (=> b!1332276 (=> res!600425 e!853443)))

(assert (=> b!1332276 (= res!600425 (not (isEmpty!8083 (tail!1910 lt!440580))))))

(declare-fun bm!90040 () Bool)

(declare-fun call!90045 () Bool)

(assert (=> bm!90040 (= call!90045 (isEmpty!8083 lt!440580))))

(declare-fun b!1332278 () Bool)

(declare-fun e!853447 () Bool)

(declare-fun lt!440863 () Bool)

(assert (=> b!1332278 (= e!853447 (= lt!440863 call!90045))))

(declare-fun b!1332279 () Bool)

(declare-fun res!600422 () Bool)

(declare-fun e!853445 () Bool)

(assert (=> b!1332279 (=> (not res!600422) (not e!853445))))

(assert (=> b!1332279 (= res!600422 (isEmpty!8083 (tail!1910 lt!440580)))))

(declare-fun b!1332280 () Bool)

(declare-fun res!600428 () Bool)

(declare-fun e!853442 () Bool)

(assert (=> b!1332280 (=> res!600428 e!853442)))

(assert (=> b!1332280 (= res!600428 (not ((_ is ElementMatch!3659) lt!440606)))))

(declare-fun e!853441 () Bool)

(assert (=> b!1332280 (= e!853441 e!853442)))

(declare-fun b!1332281 () Bool)

(assert (=> b!1332281 (= e!853447 e!853441)))

(declare-fun c!218365 () Bool)

(assert (=> b!1332281 (= c!218365 ((_ is EmptyLang!3659) lt!440606))))

(declare-fun b!1332277 () Bool)

(declare-fun e!853446 () Bool)

(assert (=> b!1332277 (= e!853442 e!853446)))

(declare-fun res!600423 () Bool)

(assert (=> b!1332277 (=> (not res!600423) (not e!853446))))

(assert (=> b!1332277 (= res!600423 (not lt!440863))))

(declare-fun d!375709 () Bool)

(assert (=> d!375709 e!853447))

(declare-fun c!218364 () Bool)

(assert (=> d!375709 (= c!218364 ((_ is EmptyExpr!3659) lt!440606))))

(declare-fun e!853444 () Bool)

(assert (=> d!375709 (= lt!440863 e!853444)))

(declare-fun c!218366 () Bool)

(assert (=> d!375709 (= c!218366 (isEmpty!8083 lt!440580))))

(assert (=> d!375709 (validRegex!1575 lt!440606)))

(assert (=> d!375709 (= (matchR!1661 lt!440606 lt!440580) lt!440863)))

(declare-fun b!1332282 () Bool)

(assert (=> b!1332282 (= e!853445 (= (head!2347 lt!440580) (c!218203 lt!440606)))))

(declare-fun b!1332283 () Bool)

(assert (=> b!1332283 (= e!853441 (not lt!440863))))

(declare-fun b!1332284 () Bool)

(assert (=> b!1332284 (= e!853446 e!853443)))

(declare-fun res!600427 () Bool)

(assert (=> b!1332284 (=> res!600427 e!853443)))

(assert (=> b!1332284 (= res!600427 call!90045)))

(declare-fun b!1332285 () Bool)

(declare-fun res!600426 () Bool)

(assert (=> b!1332285 (=> res!600426 e!853442)))

(assert (=> b!1332285 (= res!600426 e!853445)))

(declare-fun res!600424 () Bool)

(assert (=> b!1332285 (=> (not res!600424) (not e!853445))))

(assert (=> b!1332285 (= res!600424 lt!440863)))

(declare-fun b!1332286 () Bool)

(assert (=> b!1332286 (= e!853443 (not (= (head!2347 lt!440580) (c!218203 lt!440606))))))

(declare-fun b!1332287 () Bool)

(assert (=> b!1332287 (= e!853444 (matchR!1661 (derivativeStep!917 lt!440606 (head!2347 lt!440580)) (tail!1910 lt!440580)))))

(declare-fun b!1332288 () Bool)

(assert (=> b!1332288 (= e!853444 (nullable!1165 lt!440606))))

(declare-fun b!1332289 () Bool)

(declare-fun res!600421 () Bool)

(assert (=> b!1332289 (=> (not res!600421) (not e!853445))))

(assert (=> b!1332289 (= res!600421 (not call!90045))))

(assert (= (and d!375709 c!218366) b!1332288))

(assert (= (and d!375709 (not c!218366)) b!1332287))

(assert (= (and d!375709 c!218364) b!1332278))

(assert (= (and d!375709 (not c!218364)) b!1332281))

(assert (= (and b!1332281 c!218365) b!1332283))

(assert (= (and b!1332281 (not c!218365)) b!1332280))

(assert (= (and b!1332280 (not res!600428)) b!1332285))

(assert (= (and b!1332285 res!600424) b!1332289))

(assert (= (and b!1332289 res!600421) b!1332279))

(assert (= (and b!1332279 res!600422) b!1332282))

(assert (= (and b!1332285 (not res!600426)) b!1332277))

(assert (= (and b!1332277 res!600423) b!1332284))

(assert (= (and b!1332284 (not res!600427)) b!1332276))

(assert (= (and b!1332276 (not res!600425)) b!1332286))

(assert (= (or b!1332278 b!1332289 b!1332284) bm!90040))

(declare-fun m!1489781 () Bool)

(assert (=> b!1332288 m!1489781))

(declare-fun m!1489783 () Bool)

(assert (=> b!1332286 m!1489783))

(declare-fun m!1489785 () Bool)

(assert (=> bm!90040 m!1489785))

(declare-fun m!1489787 () Bool)

(assert (=> b!1332276 m!1489787))

(assert (=> b!1332276 m!1489787))

(declare-fun m!1489789 () Bool)

(assert (=> b!1332276 m!1489789))

(assert (=> b!1332279 m!1489787))

(assert (=> b!1332279 m!1489787))

(assert (=> b!1332279 m!1489789))

(assert (=> b!1332287 m!1489783))

(assert (=> b!1332287 m!1489783))

(declare-fun m!1489791 () Bool)

(assert (=> b!1332287 m!1489791))

(assert (=> b!1332287 m!1489787))

(assert (=> b!1332287 m!1489791))

(assert (=> b!1332287 m!1489787))

(declare-fun m!1489793 () Bool)

(assert (=> b!1332287 m!1489793))

(assert (=> d!375709 m!1489785))

(assert (=> d!375709 m!1489275))

(assert (=> b!1332282 m!1489783))

(assert (=> b!1331481 d!375709))

(declare-fun b!1332291 () Bool)

(declare-fun e!853449 () List!13609)

(assert (=> b!1332291 (= e!853449 (Cons!13543 (h!18944 lt!440582) (++!3460 (t!119018 lt!440582) (getSuffix!515 lt!440580 lt!440582))))))

(declare-fun d!375711 () Bool)

(declare-fun e!853448 () Bool)

(assert (=> d!375711 e!853448))

(declare-fun res!600430 () Bool)

(assert (=> d!375711 (=> (not res!600430) (not e!853448))))

(declare-fun lt!440864 () List!13609)

(assert (=> d!375711 (= res!600430 (= (content!1928 lt!440864) ((_ map or) (content!1928 lt!440582) (content!1928 (getSuffix!515 lt!440580 lt!440582)))))))

(assert (=> d!375711 (= lt!440864 e!853449)))

(declare-fun c!218367 () Bool)

(assert (=> d!375711 (= c!218367 ((_ is Nil!13543) lt!440582))))

(assert (=> d!375711 (= (++!3460 lt!440582 (getSuffix!515 lt!440580 lt!440582)) lt!440864)))

(declare-fun b!1332290 () Bool)

(assert (=> b!1332290 (= e!853449 (getSuffix!515 lt!440580 lt!440582))))

(declare-fun b!1332292 () Bool)

(declare-fun res!600429 () Bool)

(assert (=> b!1332292 (=> (not res!600429) (not e!853448))))

(assert (=> b!1332292 (= res!600429 (= (size!11043 lt!440864) (+ (size!11043 lt!440582) (size!11043 (getSuffix!515 lt!440580 lt!440582)))))))

(declare-fun b!1332293 () Bool)

(assert (=> b!1332293 (= e!853448 (or (not (= (getSuffix!515 lt!440580 lt!440582) Nil!13543)) (= lt!440864 lt!440582)))))

(assert (= (and d!375711 c!218367) b!1332290))

(assert (= (and d!375711 (not c!218367)) b!1332291))

(assert (= (and d!375711 res!600430) b!1332292))

(assert (= (and b!1332292 res!600429) b!1332293))

(assert (=> b!1332291 m!1488703))

(declare-fun m!1489795 () Bool)

(assert (=> b!1332291 m!1489795))

(declare-fun m!1489797 () Bool)

(assert (=> d!375711 m!1489797))

(assert (=> d!375711 m!1489335))

(assert (=> d!375711 m!1488703))

(declare-fun m!1489799 () Bool)

(assert (=> d!375711 m!1489799))

(declare-fun m!1489801 () Bool)

(assert (=> b!1332292 m!1489801))

(declare-fun m!1489803 () Bool)

(assert (=> b!1332292 m!1489803))

(assert (=> b!1332292 m!1488703))

(declare-fun m!1489805 () Bool)

(assert (=> b!1332292 m!1489805))

(assert (=> b!1331502 d!375711))

(declare-fun d!375713 () Bool)

(declare-fun lt!440867 () List!13609)

(assert (=> d!375713 (= (++!3460 lt!440582 lt!440867) lt!440580)))

(declare-fun e!853452 () List!13609)

(assert (=> d!375713 (= lt!440867 e!853452)))

(declare-fun c!218370 () Bool)

(assert (=> d!375713 (= c!218370 ((_ is Cons!13543) lt!440582))))

(assert (=> d!375713 (>= (size!11043 lt!440580) (size!11043 lt!440582))))

(assert (=> d!375713 (= (getSuffix!515 lt!440580 lt!440582) lt!440867)))

(declare-fun b!1332298 () Bool)

(assert (=> b!1332298 (= e!853452 (getSuffix!515 (tail!1910 lt!440580) (t!119018 lt!440582)))))

(declare-fun b!1332299 () Bool)

(assert (=> b!1332299 (= e!853452 lt!440580)))

(assert (= (and d!375713 c!218370) b!1332298))

(assert (= (and d!375713 (not c!218370)) b!1332299))

(declare-fun m!1489807 () Bool)

(assert (=> d!375713 m!1489807))

(declare-fun m!1489809 () Bool)

(assert (=> d!375713 m!1489809))

(assert (=> d!375713 m!1489803))

(assert (=> b!1332298 m!1489787))

(assert (=> b!1332298 m!1489787))

(declare-fun m!1489811 () Bool)

(assert (=> b!1332298 m!1489811))

(assert (=> b!1331502 d!375713))

(declare-fun d!375715 () Bool)

(declare-fun lt!440870 () List!13609)

(declare-fun dynLambda!5988 (Int List!13609) Bool)

(assert (=> d!375715 (dynLambda!5988 lambda!55469 lt!440870)))

(declare-fun choose!8181 (Int) List!13609)

(assert (=> d!375715 (= lt!440870 (choose!8181 lambda!55469))))

(assert (=> d!375715 (Exists!817 lambda!55469)))

(assert (=> d!375715 (= (pickWitness!122 lambda!55469) lt!440870)))

(declare-fun b_lambda!39297 () Bool)

(assert (=> (not b_lambda!39297) (not d!375715)))

(declare-fun bs!331782 () Bool)

(assert (= bs!331782 d!375715))

(declare-fun m!1489813 () Bool)

(assert (=> bs!331782 m!1489813))

(declare-fun m!1489815 () Bool)

(assert (=> bs!331782 m!1489815))

(assert (=> bs!331782 m!1488651))

(assert (=> b!1331502 d!375715))

(declare-fun d!375717 () Bool)

(declare-fun lt!440871 () Bool)

(assert (=> d!375717 (= lt!440871 (select (content!1928 lt!440580) lt!440586))))

(declare-fun e!853453 () Bool)

(assert (=> d!375717 (= lt!440871 e!853453)))

(declare-fun res!600431 () Bool)

(assert (=> d!375717 (=> (not res!600431) (not e!853453))))

(assert (=> d!375717 (= res!600431 ((_ is Cons!13543) lt!440580))))

(assert (=> d!375717 (= (contains!2451 lt!440580 lt!440586) lt!440871)))

(declare-fun b!1332300 () Bool)

(declare-fun e!853454 () Bool)

(assert (=> b!1332300 (= e!853453 e!853454)))

(declare-fun res!600432 () Bool)

(assert (=> b!1332300 (=> res!600432 e!853454)))

(assert (=> b!1332300 (= res!600432 (= (h!18944 lt!440580) lt!440586))))

(declare-fun b!1332301 () Bool)

(assert (=> b!1332301 (= e!853454 (contains!2451 (t!119018 lt!440580) lt!440586))))

(assert (= (and d!375717 res!600431) b!1332300))

(assert (= (and b!1332300 (not res!600432)) b!1332301))

(assert (=> d!375717 m!1489277))

(declare-fun m!1489817 () Bool)

(assert (=> d!375717 m!1489817))

(declare-fun m!1489819 () Bool)

(assert (=> b!1332301 m!1489819))

(assert (=> b!1331501 d!375717))

(declare-fun d!375719 () Bool)

(assert (=> d!375719 (not (matchR!1661 (regex!2345 (rule!4090 t2!34)) lt!440587))))

(declare-fun lt!440874 () Unit!19663)

(declare-fun choose!8182 (Regex!3659 List!13609 C!7608) Unit!19663)

(assert (=> d!375719 (= lt!440874 (choose!8182 (regex!2345 (rule!4090 t2!34)) lt!440587 (head!2347 lt!440587)))))

(assert (=> d!375719 (validRegex!1575 (regex!2345 (rule!4090 t2!34)))))

(assert (=> d!375719 (= (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!156 (regex!2345 (rule!4090 t2!34)) lt!440587 (head!2347 lt!440587)) lt!440874)))

(declare-fun bs!331783 () Bool)

(assert (= bs!331783 d!375719))

(assert (=> bs!331783 m!1488679))

(assert (=> bs!331783 m!1488665))

(declare-fun m!1489821 () Bool)

(assert (=> bs!331783 m!1489821))

(assert (=> bs!331783 m!1489701))

(assert (=> b!1331480 d!375719))

(declare-fun d!375721 () Bool)

(assert (=> d!375721 (= (head!2347 lt!440587) (h!18944 lt!440587))))

(assert (=> b!1331480 d!375721))

(declare-fun d!375723 () Bool)

(declare-fun lt!440875 () Bool)

(assert (=> d!375723 (= lt!440875 (select (content!1931 rules!2550) (rule!4090 t1!34)))))

(declare-fun e!853455 () Bool)

(assert (=> d!375723 (= lt!440875 e!853455)))

(declare-fun res!600433 () Bool)

(assert (=> d!375723 (=> (not res!600433) (not e!853455))))

(assert (=> d!375723 (= res!600433 ((_ is Cons!13544) rules!2550))))

(assert (=> d!375723 (= (contains!2452 rules!2550 (rule!4090 t1!34)) lt!440875)))

(declare-fun b!1332302 () Bool)

(declare-fun e!853456 () Bool)

(assert (=> b!1332302 (= e!853455 e!853456)))

(declare-fun res!600434 () Bool)

(assert (=> b!1332302 (=> res!600434 e!853456)))

(assert (=> b!1332302 (= res!600434 (= (h!18945 rules!2550) (rule!4090 t1!34)))))

(declare-fun b!1332303 () Bool)

(assert (=> b!1332303 (= e!853456 (contains!2452 (t!119019 rules!2550) (rule!4090 t1!34)))))

(assert (= (and d!375723 res!600433) b!1332302))

(assert (= (and b!1332302 (not res!600434)) b!1332303))

(assert (=> d!375723 m!1489683))

(declare-fun m!1489823 () Bool)

(assert (=> d!375723 m!1489823))

(declare-fun m!1489825 () Bool)

(assert (=> b!1332303 m!1489825))

(assert (=> b!1331479 d!375723))

(declare-fun d!375725 () Bool)

(declare-fun lt!440878 () Int)

(assert (=> d!375725 (= lt!440878 (size!11043 (list!5139 lt!440604)))))

(declare-fun size!11045 (Conc!4460) Int)

(assert (=> d!375725 (= lt!440878 (size!11045 (c!218202 lt!440604)))))

(assert (=> d!375725 (= (size!11033 lt!440604) lt!440878)))

(declare-fun bs!331784 () Bool)

(assert (= bs!331784 d!375725))

(assert (=> bs!331784 m!1488763))

(assert (=> bs!331784 m!1488763))

(declare-fun m!1489827 () Bool)

(assert (=> bs!331784 m!1489827))

(declare-fun m!1489829 () Bool)

(assert (=> bs!331784 m!1489829))

(assert (=> b!1331500 d!375725))

(declare-fun d!375727 () Bool)

(declare-fun lt!440879 () Bool)

(assert (=> d!375727 (= lt!440879 (select (content!1928 (usedCharacters!210 (regex!2345 lt!440578))) lt!440586))))

(declare-fun e!853457 () Bool)

(assert (=> d!375727 (= lt!440879 e!853457)))

(declare-fun res!600435 () Bool)

(assert (=> d!375727 (=> (not res!600435) (not e!853457))))

(assert (=> d!375727 (= res!600435 ((_ is Cons!13543) (usedCharacters!210 (regex!2345 lt!440578))))))

(assert (=> d!375727 (= (contains!2451 (usedCharacters!210 (regex!2345 lt!440578)) lt!440586) lt!440879)))

(declare-fun b!1332304 () Bool)

(declare-fun e!853458 () Bool)

(assert (=> b!1332304 (= e!853457 e!853458)))

(declare-fun res!600436 () Bool)

(assert (=> b!1332304 (=> res!600436 e!853458)))

(assert (=> b!1332304 (= res!600436 (= (h!18944 (usedCharacters!210 (regex!2345 lt!440578))) lt!440586))))

(declare-fun b!1332305 () Bool)

(assert (=> b!1332305 (= e!853458 (contains!2451 (t!119018 (usedCharacters!210 (regex!2345 lt!440578))) lt!440586))))

(assert (= (and d!375727 res!600435) b!1332304))

(assert (= (and b!1332304 (not res!600436)) b!1332305))

(assert (=> d!375727 m!1488697))

(declare-fun m!1489831 () Bool)

(assert (=> d!375727 m!1489831))

(declare-fun m!1489833 () Bool)

(assert (=> d!375727 m!1489833))

(declare-fun m!1489835 () Bool)

(assert (=> b!1332305 m!1489835))

(assert (=> b!1331500 d!375727))

(declare-fun b!1332306 () Bool)

(declare-fun c!218373 () Bool)

(assert (=> b!1332306 (= c!218373 ((_ is Star!3659) (regex!2345 lt!440578)))))

(declare-fun e!853462 () List!13609)

(declare-fun e!853460 () List!13609)

(assert (=> b!1332306 (= e!853462 e!853460)))

(declare-fun c!218372 () Bool)

(declare-fun call!90049 () List!13609)

(declare-fun bm!90041 () Bool)

(assert (=> bm!90041 (= call!90049 (usedCharacters!210 (ite c!218373 (reg!3988 (regex!2345 lt!440578)) (ite c!218372 (regTwo!7831 (regex!2345 lt!440578)) (regOne!7830 (regex!2345 lt!440578))))))))

(declare-fun b!1332307 () Bool)

(declare-fun e!853461 () List!13609)

(assert (=> b!1332307 (= e!853460 e!853461)))

(assert (=> b!1332307 (= c!218372 ((_ is Union!3659) (regex!2345 lt!440578)))))

(declare-fun d!375729 () Bool)

(declare-fun c!218375 () Bool)

(assert (=> d!375729 (= c!218375 (or ((_ is EmptyExpr!3659) (regex!2345 lt!440578)) ((_ is EmptyLang!3659) (regex!2345 lt!440578))))))

(declare-fun e!853459 () List!13609)

(assert (=> d!375729 (= (usedCharacters!210 (regex!2345 lt!440578)) e!853459)))

(declare-fun call!90048 () List!13609)

(declare-fun bm!90042 () Bool)

(declare-fun call!90047 () List!13609)

(declare-fun call!90046 () List!13609)

(assert (=> bm!90042 (= call!90046 (++!3460 (ite c!218372 call!90048 call!90047) (ite c!218372 call!90047 call!90048)))))

(declare-fun b!1332308 () Bool)

(assert (=> b!1332308 (= e!853459 Nil!13543)))

(declare-fun b!1332309 () Bool)

(assert (=> b!1332309 (= e!853462 (Cons!13543 (c!218203 (regex!2345 lt!440578)) Nil!13543))))

(declare-fun bm!90043 () Bool)

(assert (=> bm!90043 (= call!90047 call!90049)))

(declare-fun b!1332310 () Bool)

(assert (=> b!1332310 (= e!853460 call!90049)))

(declare-fun b!1332311 () Bool)

(assert (=> b!1332311 (= e!853459 e!853462)))

(declare-fun c!218374 () Bool)

(assert (=> b!1332311 (= c!218374 ((_ is ElementMatch!3659) (regex!2345 lt!440578)))))

(declare-fun b!1332312 () Bool)

(assert (=> b!1332312 (= e!853461 call!90046)))

(declare-fun bm!90044 () Bool)

(assert (=> bm!90044 (= call!90048 (usedCharacters!210 (ite c!218372 (regOne!7831 (regex!2345 lt!440578)) (regTwo!7830 (regex!2345 lt!440578)))))))

(declare-fun b!1332313 () Bool)

(assert (=> b!1332313 (= e!853461 call!90046)))

(assert (= (and d!375729 c!218375) b!1332308))

(assert (= (and d!375729 (not c!218375)) b!1332311))

(assert (= (and b!1332311 c!218374) b!1332309))

(assert (= (and b!1332311 (not c!218374)) b!1332306))

(assert (= (and b!1332306 c!218373) b!1332310))

(assert (= (and b!1332306 (not c!218373)) b!1332307))

(assert (= (and b!1332307 c!218372) b!1332312))

(assert (= (and b!1332307 (not c!218372)) b!1332313))

(assert (= (or b!1332312 b!1332313) bm!90044))

(assert (= (or b!1332312 b!1332313) bm!90043))

(assert (= (or b!1332312 b!1332313) bm!90042))

(assert (= (or b!1332310 bm!90043) bm!90041))

(declare-fun m!1489837 () Bool)

(assert (=> bm!90041 m!1489837))

(declare-fun m!1489839 () Bool)

(assert (=> bm!90042 m!1489839))

(declare-fun m!1489841 () Bool)

(assert (=> bm!90044 m!1489841))

(assert (=> b!1331500 d!375729))

(declare-fun d!375731 () Bool)

(assert (=> d!375731 (not (contains!2451 (usedCharacters!210 (regex!2345 lt!440578)) lt!440586))))

(declare-fun lt!440882 () Unit!19663)

(declare-fun choose!8183 (LexerInterface!2040 List!13610 List!13610 Rule!4490 Rule!4490 C!7608) Unit!19663)

(assert (=> d!375731 (= lt!440882 (choose!8183 thiss!19762 rules!2550 rules!2550 lt!440578 (rule!4090 t1!34) lt!440586))))

(assert (=> d!375731 (rulesInvariant!1910 thiss!19762 rules!2550)))

(assert (=> d!375731 (= (lemmaNonSepRuleNotContainsCharContainedInASepRule!2 thiss!19762 rules!2550 rules!2550 lt!440578 (rule!4090 t1!34) lt!440586) lt!440882)))

(declare-fun bs!331785 () Bool)

(assert (= bs!331785 d!375731))

(assert (=> bs!331785 m!1488697))

(assert (=> bs!331785 m!1488697))

(assert (=> bs!331785 m!1488699))

(declare-fun m!1489843 () Bool)

(assert (=> bs!331785 m!1489843))

(assert (=> bs!331785 m!1488717))

(assert (=> b!1331500 d!375731))

(declare-fun d!375733 () Bool)

(assert (=> d!375733 (not (matchR!1661 (regex!2345 (rule!4090 t1!34)) lt!440608))))

(declare-fun lt!440883 () Unit!19663)

(assert (=> d!375733 (= lt!440883 (choose!8182 (regex!2345 (rule!4090 t1!34)) lt!440608 (head!2347 lt!440608)))))

(assert (=> d!375733 (validRegex!1575 (regex!2345 (rule!4090 t1!34)))))

(assert (=> d!375733 (= (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!156 (regex!2345 (rule!4090 t1!34)) lt!440608 (head!2347 lt!440608)) lt!440883)))

(declare-fun bs!331786 () Bool)

(assert (= bs!331786 d!375733))

(assert (=> bs!331786 m!1488721))

(assert (=> bs!331786 m!1488633))

(declare-fun m!1489845 () Bool)

(assert (=> bs!331786 m!1489845))

(assert (=> bs!331786 m!1489759))

(assert (=> b!1331499 d!375733))

(declare-fun d!375735 () Bool)

(assert (=> d!375735 (= (head!2347 lt!440608) (h!18944 lt!440608))))

(assert (=> b!1331499 d!375735))

(declare-fun d!375737 () Bool)

(declare-fun lt!440884 () Bool)

(assert (=> d!375737 (= lt!440884 (select (content!1931 rules!2550) (rule!4090 t2!34)))))

(declare-fun e!853463 () Bool)

(assert (=> d!375737 (= lt!440884 e!853463)))

(declare-fun res!600437 () Bool)

(assert (=> d!375737 (=> (not res!600437) (not e!853463))))

(assert (=> d!375737 (= res!600437 ((_ is Cons!13544) rules!2550))))

(assert (=> d!375737 (= (contains!2452 rules!2550 (rule!4090 t2!34)) lt!440884)))

(declare-fun b!1332314 () Bool)

(declare-fun e!853464 () Bool)

(assert (=> b!1332314 (= e!853463 e!853464)))

(declare-fun res!600438 () Bool)

(assert (=> b!1332314 (=> res!600438 e!853464)))

(assert (=> b!1332314 (= res!600438 (= (h!18945 rules!2550) (rule!4090 t2!34)))))

(declare-fun b!1332315 () Bool)

(assert (=> b!1332315 (= e!853464 (contains!2452 (t!119019 rules!2550) (rule!4090 t2!34)))))

(assert (= (and d!375737 res!600437) b!1332314))

(assert (= (and b!1332314 (not res!600438)) b!1332315))

(assert (=> d!375737 m!1489683))

(declare-fun m!1489847 () Bool)

(assert (=> d!375737 m!1489847))

(declare-fun m!1489849 () Bool)

(assert (=> b!1332315 m!1489849))

(assert (=> b!1331478 d!375737))

(declare-fun d!375739 () Bool)

(declare-fun lt!440885 () Int)

(assert (=> d!375739 (= lt!440885 (size!11043 (list!5139 lt!440591)))))

(assert (=> d!375739 (= lt!440885 (size!11045 (c!218202 lt!440591)))))

(assert (=> d!375739 (= (size!11033 lt!440591) lt!440885)))

(declare-fun bs!331787 () Bool)

(assert (= bs!331787 d!375739))

(assert (=> bs!331787 m!1488693))

(assert (=> bs!331787 m!1488693))

(declare-fun m!1489851 () Bool)

(assert (=> bs!331787 m!1489851))

(declare-fun m!1489853 () Bool)

(assert (=> bs!331787 m!1489853))

(assert (=> b!1331477 d!375739))

(declare-fun d!375741 () Bool)

(declare-fun lt!440886 () BalanceConc!8860)

(assert (=> d!375741 (= (list!5139 lt!440886) (originalCharacters!3207 t2!34))))

(assert (=> d!375741 (= lt!440886 (dynLambda!5986 (toChars!3435 (transformation!2345 (rule!4090 t2!34))) (value!76465 t2!34)))))

(assert (=> d!375741 (= (charsOf!1317 t2!34) lt!440886)))

(declare-fun b_lambda!39299 () Bool)

(assert (=> (not b_lambda!39299) (not d!375741)))

(assert (=> d!375741 t!119048))

(declare-fun b_and!89009 () Bool)

(assert (= b_and!89003 (and (=> t!119048 result!85446) b_and!89009)))

(assert (=> d!375741 t!119050))

(declare-fun b_and!89011 () Bool)

(assert (= b_and!89005 (and (=> t!119050 result!85448) b_and!89011)))

(assert (=> d!375741 t!119052))

(declare-fun b_and!89013 () Bool)

(assert (= b_and!89007 (and (=> t!119052 result!85450) b_and!89013)))

(declare-fun m!1489855 () Bool)

(assert (=> d!375741 m!1489855))

(assert (=> d!375741 m!1489577))

(assert (=> b!1331477 d!375741))

(declare-fun b!1332328 () Bool)

(declare-fun e!853467 () Bool)

(declare-fun tp!385385 () Bool)

(assert (=> b!1332328 (= e!853467 tp!385385)))

(declare-fun b!1332329 () Bool)

(declare-fun tp!385384 () Bool)

(declare-fun tp!385386 () Bool)

(assert (=> b!1332329 (= e!853467 (and tp!385384 tp!385386))))

(declare-fun b!1332327 () Bool)

(declare-fun tp!385382 () Bool)

(declare-fun tp!385383 () Bool)

(assert (=> b!1332327 (= e!853467 (and tp!385382 tp!385383))))

(assert (=> b!1331487 (= tp!385317 e!853467)))

(declare-fun b!1332326 () Bool)

(declare-fun tp_is_empty!6663 () Bool)

(assert (=> b!1332326 (= e!853467 tp_is_empty!6663)))

(assert (= (and b!1331487 ((_ is ElementMatch!3659) (regex!2345 (h!18945 rules!2550)))) b!1332326))

(assert (= (and b!1331487 ((_ is Concat!6095) (regex!2345 (h!18945 rules!2550)))) b!1332327))

(assert (= (and b!1331487 ((_ is Star!3659) (regex!2345 (h!18945 rules!2550)))) b!1332328))

(assert (= (and b!1331487 ((_ is Union!3659) (regex!2345 (h!18945 rules!2550)))) b!1332329))

(declare-fun b!1332334 () Bool)

(declare-fun e!853470 () Bool)

(declare-fun tp!385389 () Bool)

(assert (=> b!1332334 (= e!853470 (and tp_is_empty!6663 tp!385389))))

(assert (=> b!1331466 (= tp!385315 e!853470)))

(assert (= (and b!1331466 ((_ is Cons!13543) (originalCharacters!3207 t2!34))) b!1332334))

(declare-fun b!1332335 () Bool)

(declare-fun e!853471 () Bool)

(declare-fun tp!385390 () Bool)

(assert (=> b!1332335 (= e!853471 (and tp_is_empty!6663 tp!385390))))

(assert (=> b!1331482 (= tp!385319 e!853471)))

(assert (= (and b!1331482 ((_ is Cons!13543) (originalCharacters!3207 t1!34))) b!1332335))

(declare-fun b!1332338 () Bool)

(declare-fun e!853472 () Bool)

(declare-fun tp!385394 () Bool)

(assert (=> b!1332338 (= e!853472 tp!385394)))

(declare-fun b!1332339 () Bool)

(declare-fun tp!385393 () Bool)

(declare-fun tp!385395 () Bool)

(assert (=> b!1332339 (= e!853472 (and tp!385393 tp!385395))))

(declare-fun b!1332337 () Bool)

(declare-fun tp!385391 () Bool)

(declare-fun tp!385392 () Bool)

(assert (=> b!1332337 (= e!853472 (and tp!385391 tp!385392))))

(assert (=> b!1331486 (= tp!385318 e!853472)))

(declare-fun b!1332336 () Bool)

(assert (=> b!1332336 (= e!853472 tp_is_empty!6663)))

(assert (= (and b!1331486 ((_ is ElementMatch!3659) (regex!2345 (rule!4090 t2!34)))) b!1332336))

(assert (= (and b!1331486 ((_ is Concat!6095) (regex!2345 (rule!4090 t2!34)))) b!1332337))

(assert (= (and b!1331486 ((_ is Star!3659) (regex!2345 (rule!4090 t2!34)))) b!1332338))

(assert (= (and b!1331486 ((_ is Union!3659) (regex!2345 (rule!4090 t2!34)))) b!1332339))

(declare-fun b!1332342 () Bool)

(declare-fun e!853473 () Bool)

(declare-fun tp!385399 () Bool)

(assert (=> b!1332342 (= e!853473 tp!385399)))

(declare-fun b!1332343 () Bool)

(declare-fun tp!385398 () Bool)

(declare-fun tp!385400 () Bool)

(assert (=> b!1332343 (= e!853473 (and tp!385398 tp!385400))))

(declare-fun b!1332341 () Bool)

(declare-fun tp!385396 () Bool)

(declare-fun tp!385397 () Bool)

(assert (=> b!1332341 (= e!853473 (and tp!385396 tp!385397))))

(assert (=> b!1331511 (= tp!385316 e!853473)))

(declare-fun b!1332340 () Bool)

(assert (=> b!1332340 (= e!853473 tp_is_empty!6663)))

(assert (= (and b!1331511 ((_ is ElementMatch!3659) (regex!2345 (rule!4090 t1!34)))) b!1332340))

(assert (= (and b!1331511 ((_ is Concat!6095) (regex!2345 (rule!4090 t1!34)))) b!1332341))

(assert (= (and b!1331511 ((_ is Star!3659) (regex!2345 (rule!4090 t1!34)))) b!1332342))

(assert (= (and b!1331511 ((_ is Union!3659) (regex!2345 (rule!4090 t1!34)))) b!1332343))

(declare-fun b!1332354 () Bool)

(declare-fun b_free!32251 () Bool)

(declare-fun b_next!32955 () Bool)

(assert (=> b!1332354 (= b_free!32251 (not b_next!32955))))

(declare-fun tp!385410 () Bool)

(declare-fun b_and!89015 () Bool)

(assert (=> b!1332354 (= tp!385410 b_and!89015)))

(declare-fun b_free!32253 () Bool)

(declare-fun b_next!32957 () Bool)

(assert (=> b!1332354 (= b_free!32253 (not b_next!32957))))

(declare-fun t!119056 () Bool)

(declare-fun tb!70365 () Bool)

(assert (=> (and b!1332354 (= (toChars!3435 (transformation!2345 (h!18945 (t!119019 rules!2550)))) (toChars!3435 (transformation!2345 (rule!4090 t1!34)))) t!119056) tb!70365))

(declare-fun result!85458 () Bool)

(assert (= result!85458 result!85438))

(assert (=> b!1332131 t!119056))

(declare-fun tb!70367 () Bool)

(declare-fun t!119058 () Bool)

(assert (=> (and b!1332354 (= (toChars!3435 (transformation!2345 (h!18945 (t!119019 rules!2550)))) (toChars!3435 (transformation!2345 (rule!4090 t2!34)))) t!119058) tb!70367))

(declare-fun result!85460 () Bool)

(assert (= result!85460 result!85446))

(assert (=> b!1332138 t!119058))

(assert (=> d!375693 t!119056))

(assert (=> d!375741 t!119058))

(declare-fun b_and!89017 () Bool)

(declare-fun tp!385409 () Bool)

(assert (=> b!1332354 (= tp!385409 (and (=> t!119056 result!85458) (=> t!119058 result!85460) b_and!89017))))

(declare-fun e!853483 () Bool)

(assert (=> b!1332354 (= e!853483 (and tp!385410 tp!385409))))

(declare-fun e!853482 () Bool)

(declare-fun b!1332353 () Bool)

(declare-fun tp!385412 () Bool)

(assert (=> b!1332353 (= e!853482 (and tp!385412 (inv!17885 (tag!2607 (h!18945 (t!119019 rules!2550)))) (inv!17888 (transformation!2345 (h!18945 (t!119019 rules!2550)))) e!853483))))

(declare-fun b!1332352 () Bool)

(declare-fun e!853485 () Bool)

(declare-fun tp!385411 () Bool)

(assert (=> b!1332352 (= e!853485 (and e!853482 tp!385411))))

(assert (=> b!1331467 (= tp!385314 e!853485)))

(assert (= b!1332353 b!1332354))

(assert (= b!1332352 b!1332353))

(assert (= (and b!1331467 ((_ is Cons!13544) (t!119019 rules!2550))) b!1332352))

(declare-fun m!1489857 () Bool)

(assert (=> b!1332353 m!1489857))

(declare-fun m!1489859 () Bool)

(assert (=> b!1332353 m!1489859))

(declare-fun b_lambda!39301 () Bool)

(assert (= b_lambda!39291 (or b!1331503 b_lambda!39301)))

(declare-fun bs!331788 () Bool)

(declare-fun d!375743 () Bool)

(assert (= bs!331788 (and d!375743 b!1331503)))

(declare-fun ruleValid!578 (LexerInterface!2040 Rule!4490) Bool)

(assert (=> bs!331788 (= (dynLambda!5981 lambda!55473 (rule!4090 t2!34)) (ruleValid!578 thiss!19762 (rule!4090 t2!34)))))

(declare-fun m!1489861 () Bool)

(assert (=> bs!331788 m!1489861))

(assert (=> d!375701 d!375743))

(declare-fun b_lambda!39303 () Bool)

(assert (= b_lambda!39251 (or b!1331496 b_lambda!39303)))

(declare-fun bs!331789 () Bool)

(declare-fun d!375745 () Bool)

(assert (= bs!331789 (and d!375745 b!1331496)))

(declare-fun res!600439 () Bool)

(declare-fun e!853486 () Bool)

(assert (=> bs!331789 (=> (not res!600439) (not e!853486))))

(assert (=> bs!331789 (= res!600439 (validRegex!1575 lt!440810))))

(assert (=> bs!331789 (= (dynLambda!5983 lambda!55471 lt!440810) e!853486)))

(declare-fun b!1332355 () Bool)

(assert (=> b!1332355 (= e!853486 (matchR!1661 lt!440810 lt!440580))))

(assert (= (and bs!331789 res!600439) b!1332355))

(declare-fun m!1489863 () Bool)

(assert (=> bs!331789 m!1489863))

(declare-fun m!1489865 () Bool)

(assert (=> b!1332355 m!1489865))

(assert (=> d!375605 d!375745))

(declare-fun b_lambda!39305 () Bool)

(assert (= b_lambda!39239 (or b!1331489 b_lambda!39305)))

(declare-fun bs!331790 () Bool)

(declare-fun d!375747 () Bool)

(assert (= bs!331790 (and d!375747 b!1331489)))

(assert (=> bs!331790 (= (dynLambda!5981 lambda!55472 (h!18945 rules!2550)) (= (regex!2345 (h!18945 rules!2550)) lt!440597))))

(assert (=> b!1331898 d!375747))

(declare-fun b_lambda!39307 () Bool)

(assert (= b_lambda!39297 (or b!1331494 b_lambda!39307)))

(declare-fun bs!331791 () Bool)

(declare-fun d!375749 () Bool)

(assert (= bs!331791 (and d!375749 b!1331494)))

(declare-fun res!600440 () Bool)

(declare-fun e!853487 () Bool)

(assert (=> bs!331791 (=> (not res!600440) (not e!853487))))

(assert (=> bs!331791 (= res!600440 (matchR!1661 lt!440606 lt!440870))))

(assert (=> bs!331791 (= (dynLambda!5988 lambda!55469 lt!440870) e!853487)))

(declare-fun b!1332356 () Bool)

(assert (=> b!1332356 (= e!853487 (isPrefix!1092 lt!440582 lt!440870))))

(assert (= (and bs!331791 res!600440) b!1332356))

(declare-fun m!1489867 () Bool)

(assert (=> bs!331791 m!1489867))

(declare-fun m!1489869 () Bool)

(assert (=> b!1332356 m!1489869))

(assert (=> d!375715 d!375749))

(declare-fun b_lambda!39309 () Bool)

(assert (= b_lambda!39253 (or b!1331496 b_lambda!39309)))

(declare-fun bs!331792 () Bool)

(declare-fun d!375751 () Bool)

(assert (= bs!331792 (and d!375751 b!1331496)))

(declare-fun res!600441 () Bool)

(declare-fun e!853488 () Bool)

(assert (=> bs!331792 (=> (not res!600441) (not e!853488))))

(assert (=> bs!331792 (= res!600441 (validRegex!1575 (h!18947 (map!2984 rules!2550 lambda!55470))))))

(assert (=> bs!331792 (= (dynLambda!5983 lambda!55471 (h!18947 (map!2984 rules!2550 lambda!55470))) e!853488)))

(declare-fun b!1332357 () Bool)

(assert (=> b!1332357 (= e!853488 (matchR!1661 (h!18947 (map!2984 rules!2550 lambda!55470)) lt!440580))))

(assert (= (and bs!331792 res!600441) b!1332357))

(declare-fun m!1489871 () Bool)

(assert (=> bs!331792 m!1489871))

(declare-fun m!1489873 () Bool)

(assert (=> b!1332357 m!1489873))

(assert (=> b!1332042 d!375751))

(declare-fun b_lambda!39311 () Bool)

(assert (= b_lambda!39241 (or b!1331489 b_lambda!39311)))

(declare-fun bs!331793 () Bool)

(declare-fun d!375753 () Bool)

(assert (= bs!331793 (and d!375753 b!1331489)))

(assert (=> bs!331793 (= (dynLambda!5981 lambda!55472 lt!440752) (= (regex!2345 lt!440752) lt!440597))))

(assert (=> d!375525 d!375753))

(declare-fun b_lambda!39313 () Bool)

(assert (= b_lambda!39295 (or b!1331503 b_lambda!39313)))

(declare-fun bs!331794 () Bool)

(declare-fun d!375755 () Bool)

(assert (= bs!331794 (and d!375755 b!1331503)))

(assert (=> bs!331794 (= (dynLambda!5981 lambda!55473 lt!440578) (ruleValid!578 thiss!19762 lt!440578))))

(declare-fun m!1489875 () Bool)

(assert (=> bs!331794 m!1489875))

(assert (=> d!375705 d!375755))

(declare-fun b_lambda!39315 () Bool)

(assert (= b_lambda!39287 (or (and b!1331485 b_free!32237 (= (toChars!3435 (transformation!2345 (h!18945 rules!2550))) (toChars!3435 (transformation!2345 (rule!4090 t2!34))))) (and b!1331497 b_free!32241 (= (toChars!3435 (transformation!2345 (rule!4090 t1!34))) (toChars!3435 (transformation!2345 (rule!4090 t2!34))))) (and b!1331470 b_free!32245) (and b!1332354 b_free!32253 (= (toChars!3435 (transformation!2345 (h!18945 (t!119019 rules!2550)))) (toChars!3435 (transformation!2345 (rule!4090 t2!34))))) b_lambda!39315)))

(declare-fun b_lambda!39317 () Bool)

(assert (= b_lambda!39293 (or b!1331503 b_lambda!39317)))

(declare-fun bs!331795 () Bool)

(declare-fun d!375757 () Bool)

(assert (= bs!331795 (and d!375757 b!1331503)))

(assert (=> bs!331795 (= (dynLambda!5981 lambda!55473 (rule!4090 t1!34)) (ruleValid!578 thiss!19762 (rule!4090 t1!34)))))

(declare-fun m!1489877 () Bool)

(assert (=> bs!331795 m!1489877))

(assert (=> d!375703 d!375757))

(declare-fun b_lambda!39319 () Bool)

(assert (= b_lambda!39289 (or (and b!1331485 b_free!32237 (= (toChars!3435 (transformation!2345 (h!18945 rules!2550))) (toChars!3435 (transformation!2345 (rule!4090 t1!34))))) (and b!1331497 b_free!32241) (and b!1331470 b_free!32245 (= (toChars!3435 (transformation!2345 (rule!4090 t2!34))) (toChars!3435 (transformation!2345 (rule!4090 t1!34))))) (and b!1332354 b_free!32253 (= (toChars!3435 (transformation!2345 (h!18945 (t!119019 rules!2550)))) (toChars!3435 (transformation!2345 (rule!4090 t1!34))))) b_lambda!39319)))

(declare-fun b_lambda!39321 () Bool)

(assert (= b_lambda!39285 (or (and b!1331485 b_free!32237 (= (toChars!3435 (transformation!2345 (h!18945 rules!2550))) (toChars!3435 (transformation!2345 (rule!4090 t1!34))))) (and b!1331497 b_free!32241) (and b!1331470 b_free!32245 (= (toChars!3435 (transformation!2345 (rule!4090 t2!34))) (toChars!3435 (transformation!2345 (rule!4090 t1!34))))) (and b!1332354 b_free!32253 (= (toChars!3435 (transformation!2345 (h!18945 (t!119019 rules!2550)))) (toChars!3435 (transformation!2345 (rule!4090 t1!34))))) b_lambda!39321)))

(declare-fun b_lambda!39323 () Bool)

(assert (= b_lambda!39299 (or (and b!1331485 b_free!32237 (= (toChars!3435 (transformation!2345 (h!18945 rules!2550))) (toChars!3435 (transformation!2345 (rule!4090 t2!34))))) (and b!1331497 b_free!32241 (= (toChars!3435 (transformation!2345 (rule!4090 t1!34))) (toChars!3435 (transformation!2345 (rule!4090 t2!34))))) (and b!1331470 b_free!32245) (and b!1332354 b_free!32253 (= (toChars!3435 (transformation!2345 (h!18945 (t!119019 rules!2550)))) (toChars!3435 (transformation!2345 (rule!4090 t2!34))))) b_lambda!39323)))

(declare-fun b_lambda!39325 () Bool)

(assert (= b_lambda!39225 (or b!1331496 b_lambda!39325)))

(declare-fun bs!331796 () Bool)

(declare-fun d!375759 () Bool)

(assert (= bs!331796 (and d!375759 b!1331496)))

(assert (=> bs!331796 (= (dynLambda!5977 lambda!55470 (h!18945 rules!2550)) (regex!2345 (h!18945 rules!2550)))))

(assert (=> b!1331656 d!375759))

(check-sat (not d!375623) (not bm!90044) (not b_next!32947) (not b!1332335) (not b_next!32945) (not b!1332269) (not d!375657) (not b!1331965) (not b!1332181) (not b!1331706) (not b!1332301) (not d!375739) b_and!88955 (not b!1332137) (not d!375719) (not b!1332249) (not b!1331959) (not b!1332069) (not b!1331906) (not b!1332341) (not b!1332146) (not b!1332276) (not b_lambda!39319) (not b_lambda!39301) (not b!1332139) (not b!1332273) (not b!1332286) b_and!89015 (not bs!331791) (not b!1332279) tp_is_empty!6663 (not b!1332262) (not b!1331897) (not d!375691) (not d!375455) (not b!1332264) (not b!1331893) (not d!375717) (not d!375651) (not bm!90038) (not b!1331868) (not b!1331766) (not d!375525) (not b!1331656) (not d!375605) (not d!375681) b_and!89009 (not d!375659) (not b!1332155) (not b!1332303) (not d!375737) (not b!1332255) (not b!1332143) (not bm!90040) (not d!375573) (not b!1331867) (not b!1332287) (not b!1332356) (not d!375541) (not b!1332144) (not d!375661) (not b!1331960) (not d!375483) (not d!375741) (not b!1332222) (not d!375655) (not b!1331608) (not b!1332305) (not d!375709) (not d!375683) (not bs!331788) (not b!1331981) (not bm!89996) (not b!1332343) (not d!375481) (not b!1332355) (not d!375567) (not b_lambda!39315) (not b!1332357) b_and!89011 (not b!1332272) (not b!1332268) (not d!375701) (not b!1332174) (not d!375533) (not b!1332230) (not b!1332145) (not b!1332140) (not b!1332288) (not b!1332271) (not d!375723) (not b!1332039) (not b!1332175) (not d!375601) (not b!1332177) (not bs!331792) (not d!375463) (not d!375685) (not b!1332179) (not b!1332041) (not b!1332242) (not b!1332225) (not b_lambda!39305) (not b!1332263) (not b!1332342) (not bs!331794) (not b!1332334) (not bm!90041) (not b!1332252) (not d!375677) (not d!375439) (not b!1332172) (not b!1331963) (not d!375725) (not d!375531) (not b!1332167) (not d!375543) (not b!1332328) (not b!1332282) (not b!1331769) (not b_next!32955) (not b_next!32949) (not b!1332132) b_and!88959 (not b!1332338) (not b!1332251) (not bm!89998) (not b!1331869) (not d!375411) (not b!1332250) (not bs!331795) (not b_lambda!39317) (not b!1331896) (not d!375715) (not d!375577) b_and!88951 (not b!1332182) (not d!375695) (not d!375711) (not tb!70359) (not b!1332231) (not b!1331768) (not d!375429) (not bm!90035) (not d!375457) (not b!1331764) (not b!1332329) (not b!1332353) (not b!1331771) (not bm!90004) (not d!375679) (not b_lambda!39303) b_and!89013 (not d!375647) (not d!375575) (not d!375663) (not b!1332169) (not b!1332173) (not b!1332292) (not b!1331765) (not b!1332142) (not b!1332291) (not d!375687) (not b_lambda!39309) (not b_lambda!39325) (not b_lambda!39307) (not b!1331944) (not d!375611) (not b!1332156) (not b!1332154) (not b!1331998) (not b_lambda!39323) (not bm!90026) (not b!1332339) (not b!1331870) (not b!1331553) (not d!375653) (not d!375673) (not b!1332040) (not b!1332176) (not b!1332337) (not d!375731) (not d!375727) (not d!375713) (not d!375693) (not b!1331967) (not d!375649) (not b!1332327) (not b!1332184) (not b!1332219) (not b!1331702) (not b!1332131) (not b!1332315) (not b_next!32939) (not b_lambda!39311) (not d!375697) (not b!1332153) (not d!375461) (not d!375667) (not b!1331999) (not b!1331942) (not d!375433) (not d!375699) (not d!375409) (not d!375703) (not d!375555) (not b!1332183) (not b!1332298) (not b!1332168) (not b!1332180) (not b_lambda!39321) (not d!375553) (not bm!89995) (not bs!331789) (not d!375689) (not b_next!32941) (not b!1331703) (not b!1332229) (not bm!90029) (not d!375571) (not b!1332190) (not b!1332243) b_and!89017 (not d!375733) (not b!1332352) (not tb!70353) (not b_lambda!39313) (not d!375487) (not bm!90039) (not b!1332138) (not b!1332010) (not b!1331772) (not bm!90027) (not b!1332258) (not b!1332270) (not d!375705) (not b_next!32957) (not b_next!32943) (not d!375449) (not b!1331767) (not bm!90042))
(check-sat b_and!88955 b_and!89015 b_and!89009 b_and!89011 b_and!88959 b_and!88951 b_and!89013 (not b_next!32939) (not b_next!32941) b_and!89017 (not b_next!32947) (not b_next!32945) (not b_next!32955) (not b_next!32949) (not b_next!32957) (not b_next!32943))
