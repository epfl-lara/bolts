; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!124614 () Bool)

(assert start!124614)

(declare-fun b!1376601 () Bool)

(declare-fun b_free!33323 () Bool)

(declare-fun b_next!34027 () Bool)

(assert (=> b!1376601 (= b_free!33323 (not b_next!34027))))

(declare-fun tp!394632 () Bool)

(declare-fun b_and!92203 () Bool)

(assert (=> b!1376601 (= tp!394632 b_and!92203)))

(declare-fun b_free!33325 () Bool)

(declare-fun b_next!34029 () Bool)

(assert (=> b!1376601 (= b_free!33325 (not b_next!34029))))

(declare-fun tp!394636 () Bool)

(declare-fun b_and!92205 () Bool)

(assert (=> b!1376601 (= tp!394636 b_and!92205)))

(declare-fun b!1376594 () Bool)

(declare-fun b_free!33327 () Bool)

(declare-fun b_next!34031 () Bool)

(assert (=> b!1376594 (= b_free!33327 (not b_next!34031))))

(declare-fun tp!394631 () Bool)

(declare-fun b_and!92207 () Bool)

(assert (=> b!1376594 (= tp!394631 b_and!92207)))

(declare-fun b_free!33329 () Bool)

(declare-fun b_next!34033 () Bool)

(assert (=> b!1376594 (= b_free!33329 (not b_next!34033))))

(declare-fun tp!394634 () Bool)

(declare-fun b_and!92209 () Bool)

(assert (=> b!1376594 (= tp!394634 b_and!92209)))

(declare-fun b!1376622 () Bool)

(declare-fun b_free!33331 () Bool)

(declare-fun b_next!34035 () Bool)

(assert (=> b!1376622 (= b_free!33331 (not b_next!34035))))

(declare-fun tp!394627 () Bool)

(declare-fun b_and!92211 () Bool)

(assert (=> b!1376622 (= tp!394627 b_and!92211)))

(declare-fun b_free!33333 () Bool)

(declare-fun b_next!34037 () Bool)

(assert (=> b!1376622 (= b_free!33333 (not b_next!34037))))

(declare-fun tp!394628 () Bool)

(declare-fun b_and!92213 () Bool)

(assert (=> b!1376622 (= tp!394628 b_and!92213)))

(declare-fun b!1376595 () Bool)

(assert (=> b!1376595 true))

(assert (=> b!1376595 true))

(declare-fun b!1376609 () Bool)

(assert (=> b!1376609 true))

(declare-fun b!1376632 () Bool)

(assert (=> b!1376632 true))

(declare-fun bs!336324 () Bool)

(declare-fun b!1376624 () Bool)

(assert (= bs!336324 (and b!1376624 b!1376632)))

(declare-fun lambda!58653 () Int)

(declare-fun lambda!58652 () Int)

(assert (=> bs!336324 (not (= lambda!58653 lambda!58652))))

(assert (=> b!1376624 true))

(declare-fun b!1376587 () Bool)

(declare-fun e!879693 () Bool)

(declare-fun e!879675 () Bool)

(assert (=> b!1376587 (= e!879693 e!879675)))

(declare-fun res!620390 () Bool)

(assert (=> b!1376587 (=> res!620390 e!879675)))

(declare-fun lt!457513 () Bool)

(assert (=> b!1376587 (= res!620390 lt!457513)))

(declare-datatypes ((Unit!20172 0))(
  ( (Unit!20173) )
))
(declare-fun lt!457499 () Unit!20172)

(declare-fun e!879678 () Unit!20172)

(assert (=> b!1376587 (= lt!457499 e!879678)))

(declare-fun c!226661 () Bool)

(assert (=> b!1376587 (= c!226661 lt!457513)))

(declare-datatypes ((List!13992 0))(
  ( (Nil!13926) (Cons!13926 (h!19327 (_ BitVec 16)) (t!121805 List!13992)) )
))
(declare-datatypes ((TokenValue!2501 0))(
  ( (FloatLiteralValue!5002 (text!17952 List!13992)) (TokenValueExt!2500 (__x!8831 Int)) (Broken!12505 (value!78320 List!13992)) (Object!2566) (End!2501) (Def!2501) (Underscore!2501) (Match!2501) (Else!2501) (Error!2501) (Case!2501) (If!2501) (Extends!2501) (Abstract!2501) (Class!2501) (Val!2501) (DelimiterValue!5002 (del!2561 List!13992)) (KeywordValue!2507 (value!78321 List!13992)) (CommentValue!5002 (value!78322 List!13992)) (WhitespaceValue!5002 (value!78323 List!13992)) (IndentationValue!2501 (value!78324 List!13992)) (String!16740) (Int32!2501) (Broken!12506 (value!78325 List!13992)) (Boolean!2502) (Unit!20174) (OperatorValue!2504 (op!2561 List!13992)) (IdentifierValue!5002 (value!78326 List!13992)) (IdentifierValue!5003 (value!78327 List!13992)) (WhitespaceValue!5003 (value!78328 List!13992)) (True!5002) (False!5002) (Broken!12507 (value!78329 List!13992)) (Broken!12508 (value!78330 List!13992)) (True!5003) (RightBrace!2501) (RightBracket!2501) (Colon!2501) (Null!2501) (Comma!2501) (LeftBracket!2501) (False!5003) (LeftBrace!2501) (ImaginaryLiteralValue!2501 (text!17953 List!13992)) (StringLiteralValue!7503 (value!78331 List!13992)) (EOFValue!2501 (value!78332 List!13992)) (IdentValue!2501 (value!78333 List!13992)) (DelimiterValue!5003 (value!78334 List!13992)) (DedentValue!2501 (value!78335 List!13992)) (NewLineValue!2501 (value!78336 List!13992)) (IntegerValue!7503 (value!78337 (_ BitVec 32)) (text!17954 List!13992)) (IntegerValue!7504 (value!78338 Int) (text!17955 List!13992)) (Times!2501) (Or!2501) (Equal!2501) (Minus!2501) (Broken!12509 (value!78339 List!13992)) (And!2501) (Div!2501) (LessEqual!2501) (Mod!2501) (Concat!6226) (Not!2501) (Plus!2501) (SpaceValue!2501 (value!78340 List!13992)) (IntegerValue!7505 (value!78341 Int) (text!17956 List!13992)) (StringLiteralValue!7504 (text!17957 List!13992)) (FloatLiteralValue!5003 (text!17958 List!13992)) (BytesLiteralValue!2501 (value!78342 List!13992)) (CommentValue!5003 (value!78343 List!13992)) (StringLiteralValue!7505 (value!78344 List!13992)) (ErrorTokenValue!2501 (msg!2562 List!13992)) )
))
(declare-datatypes ((String!16741 0))(
  ( (String!16742 (value!78345 String)) )
))
(declare-datatypes ((C!7740 0))(
  ( (C!7741 (val!4430 Int)) )
))
(declare-datatypes ((List!13993 0))(
  ( (Nil!13927) (Cons!13927 (h!19328 C!7740) (t!121806 List!13993)) )
))
(declare-datatypes ((IArray!9173 0))(
  ( (IArray!9174 (innerList!4644 List!13993)) )
))
(declare-datatypes ((Conc!4584 0))(
  ( (Node!4584 (left!11911 Conc!4584) (right!12241 Conc!4584) (csize!9398 Int) (cheight!4795 Int)) (Leaf!6986 (xs!7311 IArray!9173) (csize!9399 Int)) (Empty!4584) )
))
(declare-datatypes ((BalanceConc!9108 0))(
  ( (BalanceConc!9109 (c!226662 Conc!4584)) )
))
(declare-datatypes ((Regex!3725 0))(
  ( (ElementMatch!3725 (c!226663 C!7740)) (Concat!6227 (regOne!7962 Regex!3725) (regTwo!7962 Regex!3725)) (EmptyExpr!3725) (Star!3725 (reg!4054 Regex!3725)) (EmptyLang!3725) (Union!3725 (regOne!7963 Regex!3725) (regTwo!7963 Regex!3725)) )
))
(declare-datatypes ((TokenValueInjection!4662 0))(
  ( (TokenValueInjection!4663 (toValue!3686 Int) (toChars!3545 Int)) )
))
(declare-datatypes ((Rule!4622 0))(
  ( (Rule!4623 (regex!2411 Regex!3725) (tag!2673 String!16741) (isSeparator!2411 Bool) (transformation!2411 TokenValueInjection!4662)) )
))
(declare-datatypes ((Token!4484 0))(
  ( (Token!4485 (value!78346 TokenValue!2501) (rule!4170 Rule!4622) (size!11431 Int) (originalCharacters!3273 List!13993)) )
))
(declare-fun t1!34 () Token!4484)

(declare-fun lt!457501 () C!7740)

(declare-fun contains!2621 (List!13993 C!7740) Bool)

(declare-fun usedCharacters!230 (Regex!3725) List!13993)

(assert (=> b!1376587 (= lt!457513 (not (contains!2621 (usedCharacters!230 (regex!2411 (rule!4170 t1!34))) lt!457501)))))

(declare-fun b!1376588 () Bool)

(declare-fun e!879694 () Bool)

(declare-fun e!879692 () Bool)

(declare-fun tp!394635 () Bool)

(assert (=> b!1376588 (= e!879694 (and e!879692 tp!394635))))

(declare-fun b!1376589 () Bool)

(declare-fun e!879672 () Bool)

(declare-fun e!879680 () Bool)

(assert (=> b!1376589 (= e!879672 e!879680)))

(declare-fun res!620391 () Bool)

(assert (=> b!1376589 (=> res!620391 e!879680)))

(declare-datatypes ((List!13994 0))(
  ( (Nil!13928) (Cons!13928 (h!19329 Token!4484) (t!121807 List!13994)) )
))
(declare-datatypes ((IArray!9175 0))(
  ( (IArray!9176 (innerList!4645 List!13994)) )
))
(declare-datatypes ((Conc!4585 0))(
  ( (Node!4585 (left!11912 Conc!4585) (right!12242 Conc!4585) (csize!9400 Int) (cheight!4796 Int)) (Leaf!6987 (xs!7312 IArray!9175) (csize!9401 Int)) (Empty!4585) )
))
(declare-datatypes ((BalanceConc!9110 0))(
  ( (BalanceConc!9111 (c!226664 Conc!4585)) )
))
(declare-datatypes ((tuple2!13538 0))(
  ( (tuple2!13539 (_1!7655 BalanceConc!9110) (_2!7655 BalanceConc!9108)) )
))
(declare-fun lt!457514 () tuple2!13538)

(declare-fun lt!457494 () List!13994)

(declare-fun list!5378 (BalanceConc!9110) List!13994)

(assert (=> b!1376589 (= res!620391 (not (= (list!5378 (_1!7655 lt!457514)) lt!457494)))))

(declare-fun t2!34 () Token!4484)

(assert (=> b!1376589 (= lt!457494 (Cons!13928 t2!34 Nil!13928))))

(declare-datatypes ((LexerInterface!2106 0))(
  ( (LexerInterfaceExt!2103 (__x!8832 Int)) (Lexer!2104) )
))
(declare-fun thiss!19762 () LexerInterface!2106)

(declare-fun lt!457507 () BalanceConc!9108)

(declare-datatypes ((List!13995 0))(
  ( (Nil!13929) (Cons!13929 (h!19330 Rule!4622) (t!121808 List!13995)) )
))
(declare-fun rules!2550 () List!13995)

(declare-fun lex!933 (LexerInterface!2106 List!13995 BalanceConc!9108) tuple2!13538)

(assert (=> b!1376589 (= lt!457514 (lex!933 thiss!19762 rules!2550 lt!457507))))

(declare-fun print!872 (LexerInterface!2106 BalanceConc!9110) BalanceConc!9108)

(declare-fun singletonSeq!1046 (Token!4484) BalanceConc!9110)

(assert (=> b!1376589 (= lt!457507 (print!872 thiss!19762 (singletonSeq!1046 t2!34)))))

(declare-fun b!1376590 () Bool)

(declare-fun Unit!20175 () Unit!20172)

(assert (=> b!1376590 (= e!879678 Unit!20175)))

(declare-fun lt!457517 () Unit!20172)

(declare-fun lt!457518 () List!13993)

(declare-fun lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!170 (Regex!3725 List!13993 C!7740) Unit!20172)

(declare-fun head!2485 (List!13993) C!7740)

(assert (=> b!1376590 (= lt!457517 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!170 (regex!2411 (rule!4170 t1!34)) lt!457518 (head!2485 lt!457518)))))

(assert (=> b!1376590 false))

(declare-fun b!1376591 () Bool)

(declare-fun res!620398 () Bool)

(assert (=> b!1376591 (=> res!620398 e!879672)))

(declare-fun contains!2622 (List!13995 Rule!4622) Bool)

(assert (=> b!1376591 (= res!620398 (not (contains!2622 rules!2550 (rule!4170 t1!34))))))

(declare-fun b!1376592 () Bool)

(declare-fun e!879697 () Unit!20172)

(declare-fun Unit!20176 () Unit!20172)

(assert (=> b!1376592 (= e!879697 Unit!20176)))

(declare-fun b!1376593 () Bool)

(declare-fun e!879684 () Bool)

(declare-fun e!879696 () Bool)

(assert (=> b!1376593 (= e!879684 e!879696)))

(declare-fun res!620401 () Bool)

(assert (=> b!1376593 (=> res!620401 e!879696)))

(declare-fun lambda!58650 () Int)

(declare-fun lt!457516 () Regex!3725)

(declare-datatypes ((List!13996 0))(
  ( (Nil!13930) (Cons!13930 (h!19331 Regex!3725) (t!121809 List!13996)) )
))
(declare-fun contains!2623 (List!13996 Regex!3725) Bool)

(declare-fun map!3077 (List!13995 Int) List!13996)

(assert (=> b!1376593 (= res!620401 (not (contains!2623 (map!3077 rules!2550 lambda!58650) lt!457516)))))

(declare-fun lambda!58651 () Int)

(declare-fun getWitness!368 (List!13996 Int) Regex!3725)

(assert (=> b!1376593 (= lt!457516 (getWitness!368 (map!3077 rules!2550 lambda!58650) lambda!58651))))

(declare-fun e!879686 () Bool)

(assert (=> b!1376594 (= e!879686 (and tp!394631 tp!394634))))

(declare-fun e!879682 () Bool)

(declare-fun e!879676 () Bool)

(assert (=> b!1376595 (= e!879682 (not e!879676))))

(declare-fun res!620372 () Bool)

(assert (=> b!1376595 (=> res!620372 e!879676)))

(declare-fun lambda!58649 () Int)

(declare-fun Exists!877 (Int) Bool)

(assert (=> b!1376595 (= res!620372 (not (Exists!877 lambda!58649)))))

(assert (=> b!1376595 (Exists!877 lambda!58649)))

(declare-fun lt!457493 () Unit!20172)

(declare-fun lt!457500 () Regex!3725)

(declare-fun lt!457498 () List!13993)

(declare-fun lemmaPrefixMatchThenExistsStringThatMatches!195 (Regex!3725 List!13993) Unit!20172)

(assert (=> b!1376595 (= lt!457493 (lemmaPrefixMatchThenExistsStringThatMatches!195 lt!457500 lt!457498))))

(declare-fun b!1376596 () Bool)

(declare-fun e!879685 () Bool)

(declare-fun e!879674 () Bool)

(assert (=> b!1376596 (= e!879685 e!879674)))

(declare-fun res!620383 () Bool)

(assert (=> b!1376596 (=> res!620383 e!879674)))

(assert (=> b!1376596 (= res!620383 (not (contains!2621 lt!457498 lt!457501)))))

(declare-fun lt!457512 () BalanceConc!9108)

(declare-fun apply!3441 (BalanceConc!9108 Int) C!7740)

(assert (=> b!1376596 (= lt!457501 (apply!3441 lt!457512 0))))

(declare-fun b!1376597 () Bool)

(declare-fun e!879673 () Bool)

(assert (=> b!1376597 (= e!879680 e!879673)))

(declare-fun res!620376 () Bool)

(assert (=> b!1376597 (=> res!620376 e!879673)))

(declare-fun lt!457511 () List!13993)

(declare-datatypes ((tuple2!13540 0))(
  ( (tuple2!13541 (_1!7656 Token!4484) (_2!7656 List!13993)) )
))
(declare-datatypes ((Option!2678 0))(
  ( (None!2677) (Some!2677 (v!21507 tuple2!13540)) )
))
(declare-fun maxPrefix!1088 (LexerInterface!2106 List!13995 List!13993) Option!2678)

(assert (=> b!1376597 (= res!620376 (not (= (maxPrefix!1088 thiss!19762 rules!2550 lt!457511) (Some!2677 (tuple2!13541 t2!34 Nil!13927)))))))

(declare-fun lt!457490 () BalanceConc!9108)

(declare-fun list!5379 (BalanceConc!9108) List!13993)

(assert (=> b!1376597 (= lt!457511 (list!5379 lt!457490))))

(declare-fun b!1376598 () Bool)

(declare-fun lt!457505 () Bool)

(assert (=> b!1376598 (= e!879675 lt!457505)))

(declare-fun lt!457509 () Unit!20172)

(assert (=> b!1376598 (= lt!457509 e!879697)))

(declare-fun c!226660 () Bool)

(assert (=> b!1376598 (= c!226660 (not lt!457505))))

(declare-fun lt!457492 () C!7740)

(assert (=> b!1376598 (= lt!457505 (contains!2621 (usedCharacters!230 (regex!2411 (rule!4170 t2!34))) lt!457492))))

(declare-fun b!1376599 () Bool)

(declare-fun res!620396 () Bool)

(assert (=> b!1376599 (=> res!620396 e!879674)))

(declare-fun lt!457504 () List!13993)

(declare-fun matchR!1718 (Regex!3725 List!13993) Bool)

(assert (=> b!1376599 (= res!620396 (not (matchR!1718 lt!457500 lt!457504)))))

(declare-fun b!1376600 () Bool)

(declare-fun res!620379 () Bool)

(declare-fun e!879679 () Bool)

(assert (=> b!1376600 (=> (not res!620379) (not e!879679))))

(declare-fun rulesProduceIndividualToken!1075 (LexerInterface!2106 List!13995 Token!4484) Bool)

(assert (=> b!1376600 (= res!620379 (rulesProduceIndividualToken!1075 thiss!19762 rules!2550 t2!34))))

(declare-fun e!879681 () Bool)

(assert (=> b!1376601 (= e!879681 (and tp!394632 tp!394636))))

(declare-fun b!1376602 () Bool)

(declare-fun res!620389 () Bool)

(assert (=> b!1376602 (=> (not res!620389) (not e!879679))))

(assert (=> b!1376602 (= res!620389 (not (= (isSeparator!2411 (rule!4170 t1!34)) (isSeparator!2411 (rule!4170 t2!34)))))))

(declare-fun b!1376603 () Bool)

(declare-fun res!620373 () Bool)

(assert (=> b!1376603 (=> res!620373 e!879674)))

(assert (=> b!1376603 (= res!620373 (not (contains!2621 lt!457504 lt!457501)))))

(declare-fun b!1376604 () Bool)

(declare-fun res!620403 () Bool)

(assert (=> b!1376604 (=> res!620403 e!879672)))

(declare-fun lt!457503 () List!13994)

(declare-fun lt!457502 () BalanceConc!9108)

(declare-datatypes ((tuple2!13542 0))(
  ( (tuple2!13543 (_1!7657 List!13994) (_2!7657 List!13993)) )
))
(declare-fun lexList!624 (LexerInterface!2106 List!13995 List!13993) tuple2!13542)

(assert (=> b!1376604 (= res!620403 (not (= (lexList!624 thiss!19762 rules!2550 (list!5379 lt!457502)) (tuple2!13543 lt!457503 Nil!13927))))))

(declare-fun b!1376605 () Bool)

(declare-fun res!620397 () Bool)

(declare-fun e!879698 () Bool)

(assert (=> b!1376605 (=> (not res!620397) (not e!879698))))

(declare-fun separableTokensPredicate!389 (LexerInterface!2106 Token!4484 Token!4484 List!13995) Bool)

(assert (=> b!1376605 (= res!620397 (not (separableTokensPredicate!389 thiss!19762 t1!34 t2!34 rules!2550)))))

(declare-fun b!1376606 () Bool)

(declare-fun res!620374 () Bool)

(assert (=> b!1376606 (=> res!620374 e!879672)))

(assert (=> b!1376606 (= res!620374 (not (= (maxPrefix!1088 thiss!19762 rules!2550 lt!457518) (Some!2677 (tuple2!13541 t1!34 Nil!13927)))))))

(declare-fun b!1376607 () Bool)

(declare-fun res!620378 () Bool)

(assert (=> b!1376607 (=> (not res!620378) (not e!879679))))

(assert (=> b!1376607 (= res!620378 (rulesProduceIndividualToken!1075 thiss!19762 rules!2550 t1!34))))

(declare-fun b!1376608 () Bool)

(declare-fun res!620394 () Bool)

(assert (=> b!1376608 (=> res!620394 e!879672)))

(declare-fun lt!457489 () tuple2!13538)

(declare-fun isEmpty!8410 (BalanceConc!9108) Bool)

(assert (=> b!1376608 (= res!620394 (not (isEmpty!8410 (_2!7655 lt!457489))))))

(assert (=> b!1376609 (= e!879674 e!879684)))

(declare-fun res!620400 () Bool)

(assert (=> b!1376609 (=> res!620400 e!879684)))

(declare-fun exists!480 (List!13996 Int) Bool)

(assert (=> b!1376609 (= res!620400 (not (exists!480 (map!3077 rules!2550 lambda!58650) lambda!58651)))))

(declare-fun lt!457491 () List!13996)

(assert (=> b!1376609 (exists!480 lt!457491 lambda!58651)))

(declare-fun lt!457508 () Unit!20172)

(declare-fun matchRGenUnionSpec!142 (Regex!3725 List!13996 List!13993) Unit!20172)

(assert (=> b!1376609 (= lt!457508 (matchRGenUnionSpec!142 lt!457500 lt!457491 lt!457504))))

(assert (=> b!1376609 (= lt!457491 (map!3077 rules!2550 lambda!58650))))

(declare-fun b!1376610 () Bool)

(declare-fun res!620381 () Bool)

(assert (=> b!1376610 (=> res!620381 e!879673)))

(declare-fun lt!457506 () Rule!4622)

(assert (=> b!1376610 (= res!620381 (not (contains!2622 rules!2550 lt!457506)))))

(declare-fun b!1376611 () Bool)

(assert (=> b!1376611 (= e!879698 e!879682)))

(declare-fun res!620387 () Bool)

(assert (=> b!1376611 (=> (not res!620387) (not e!879682))))

(declare-fun prefixMatch!234 (Regex!3725 List!13993) Bool)

(assert (=> b!1376611 (= res!620387 (prefixMatch!234 lt!457500 lt!457498))))

(declare-fun rulesRegex!294 (LexerInterface!2106 List!13995) Regex!3725)

(assert (=> b!1376611 (= lt!457500 (rulesRegex!294 thiss!19762 rules!2550))))

(declare-fun ++!3608 (List!13993 List!13993) List!13993)

(assert (=> b!1376611 (= lt!457498 (++!3608 lt!457518 (Cons!13927 lt!457492 Nil!13927)))))

(assert (=> b!1376611 (= lt!457492 (apply!3441 lt!457490 0))))

(assert (=> b!1376611 (= lt!457518 (list!5379 lt!457512))))

(declare-fun charsOf!1383 (Token!4484) BalanceConc!9108)

(assert (=> b!1376611 (= lt!457512 (charsOf!1383 t1!34))))

(declare-fun b!1376612 () Bool)

(declare-fun Unit!20177 () Unit!20172)

(assert (=> b!1376612 (= e!879678 Unit!20177)))

(declare-fun b!1376613 () Bool)

(declare-fun Unit!20178 () Unit!20172)

(assert (=> b!1376613 (= e!879697 Unit!20178)))

(declare-fun lt!457495 () Unit!20172)

(assert (=> b!1376613 (= lt!457495 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!170 (regex!2411 (rule!4170 t2!34)) lt!457511 (head!2485 lt!457511)))))

(assert (=> b!1376613 false))

(declare-fun b!1376614 () Bool)

(declare-fun res!620382 () Bool)

(assert (=> b!1376614 (=> (not res!620382) (not e!879679))))

(declare-fun isEmpty!8411 (List!13995) Bool)

(assert (=> b!1376614 (= res!620382 (not (isEmpty!8411 rules!2550)))))

(declare-fun b!1376615 () Bool)

(assert (=> b!1376615 (= e!879676 e!879685)))

(declare-fun res!620384 () Bool)

(assert (=> b!1376615 (=> res!620384 e!879685)))

(declare-fun getSuffix!573 (List!13993 List!13993) List!13993)

(assert (=> b!1376615 (= res!620384 (not (= lt!457504 (++!3608 lt!457498 (getSuffix!573 lt!457504 lt!457498)))))))

(declare-fun pickWitness!180 (Int) List!13993)

(assert (=> b!1376615 (= lt!457504 (pickWitness!180 lambda!58649))))

(declare-fun tp!394625 () Bool)

(declare-fun b!1376616 () Bool)

(declare-fun e!879677 () Bool)

(declare-fun inv!18282 (String!16741) Bool)

(declare-fun inv!18285 (TokenValueInjection!4662) Bool)

(assert (=> b!1376616 (= e!879677 (and tp!394625 (inv!18282 (tag!2673 (rule!4170 t1!34))) (inv!18285 (transformation!2411 (rule!4170 t1!34))) e!879681))))

(declare-fun b!1376617 () Bool)

(declare-fun res!620402 () Bool)

(assert (=> b!1376617 (=> res!620402 e!879680)))

(assert (=> b!1376617 (= res!620402 (not (= (lexList!624 thiss!19762 rules!2550 (list!5379 lt!457507)) (tuple2!13543 lt!457494 Nil!13927))))))

(declare-fun b!1376618 () Bool)

(declare-fun res!620399 () Bool)

(assert (=> b!1376618 (=> res!620399 e!879674)))

(assert (=> b!1376618 (= res!620399 (not (contains!2621 lt!457498 lt!457492)))))

(declare-fun b!1376619 () Bool)

(declare-fun e!879671 () Bool)

(assert (=> b!1376619 (= e!879671 e!879672)))

(declare-fun res!620388 () Bool)

(assert (=> b!1376619 (=> res!620388 e!879672)))

(assert (=> b!1376619 (= res!620388 (not (= (list!5378 (_1!7655 lt!457489)) lt!457503)))))

(assert (=> b!1376619 (= lt!457503 (Cons!13928 t1!34 Nil!13928))))

(assert (=> b!1376619 (= lt!457489 (lex!933 thiss!19762 rules!2550 lt!457502))))

(assert (=> b!1376619 (= lt!457502 (print!872 thiss!19762 (singletonSeq!1046 t1!34)))))

(declare-fun getWitness!369 (List!13995 Int) Rule!4622)

(assert (=> b!1376619 (= lt!457506 (getWitness!369 rules!2550 lambda!58652))))

(declare-fun b!1376620 () Bool)

(declare-fun res!620377 () Bool)

(assert (=> b!1376620 (=> res!620377 e!879680)))

(assert (=> b!1376620 (= res!620377 (not (isEmpty!8410 (_2!7655 lt!457514))))))

(declare-fun b!1376621 () Bool)

(declare-fun res!620375 () Bool)

(assert (=> b!1376621 (=> res!620375 e!879693)))

(assert (=> b!1376621 (= res!620375 (not (matchR!1718 (regex!2411 (rule!4170 t2!34)) lt!457511)))))

(declare-fun e!879687 () Bool)

(assert (=> b!1376622 (= e!879687 (and tp!394627 tp!394628))))

(declare-fun res!620385 () Bool)

(assert (=> start!124614 (=> (not res!620385) (not e!879679))))

(get-info :version)

(assert (=> start!124614 (= res!620385 ((_ is Lexer!2104) thiss!19762))))

(assert (=> start!124614 e!879679))

(assert (=> start!124614 true))

(assert (=> start!124614 e!879694))

(declare-fun e!879669 () Bool)

(declare-fun inv!18286 (Token!4484) Bool)

(assert (=> start!124614 (and (inv!18286 t1!34) e!879669)))

(declare-fun e!879688 () Bool)

(assert (=> start!124614 (and (inv!18286 t2!34) e!879688)))

(declare-fun b!1376623 () Bool)

(declare-fun res!620393 () Bool)

(assert (=> b!1376623 (=> (not res!620393) (not e!879698))))

(declare-fun sepAndNonSepRulesDisjointChars!784 (List!13995 List!13995) Bool)

(assert (=> b!1376623 (= res!620393 (sepAndNonSepRulesDisjointChars!784 rules!2550 rules!2550))))

(assert (=> b!1376624 (= e!879673 e!879693)))

(declare-fun res!620370 () Bool)

(assert (=> b!1376624 (=> res!620370 e!879693)))

(assert (=> b!1376624 (= res!620370 (not (matchR!1718 (regex!2411 (rule!4170 t1!34)) lt!457518)))))

(declare-fun lt!457515 () Unit!20172)

(declare-fun forallContained!614 (List!13995 Int Rule!4622) Unit!20172)

(assert (=> b!1376624 (= lt!457515 (forallContained!614 rules!2550 lambda!58653 (rule!4170 t2!34)))))

(declare-fun lt!457510 () Unit!20172)

(assert (=> b!1376624 (= lt!457510 (forallContained!614 rules!2550 lambda!58653 (rule!4170 t1!34)))))

(declare-fun lt!457496 () Unit!20172)

(assert (=> b!1376624 (= lt!457496 (forallContained!614 rules!2550 lambda!58653 lt!457506))))

(declare-fun b!1376625 () Bool)

(declare-fun res!620386 () Bool)

(assert (=> b!1376625 (=> res!620386 e!879674)))

(assert (=> b!1376625 (= res!620386 (not (contains!2621 lt!457504 lt!457492)))))

(declare-fun tp!394633 () Bool)

(declare-fun b!1376626 () Bool)

(declare-fun e!879690 () Bool)

(declare-fun inv!21 (TokenValue!2501) Bool)

(assert (=> b!1376626 (= e!879688 (and (inv!21 (value!78346 t2!34)) e!879690 tp!394633))))

(declare-fun b!1376627 () Bool)

(declare-fun tp!394629 () Bool)

(assert (=> b!1376627 (= e!879690 (and tp!394629 (inv!18282 (tag!2673 (rule!4170 t2!34))) (inv!18285 (transformation!2411 (rule!4170 t2!34))) e!879687))))

(declare-fun b!1376628 () Bool)

(declare-fun res!620395 () Bool)

(assert (=> b!1376628 (=> res!620395 e!879673)))

(assert (=> b!1376628 (= res!620395 (not (contains!2622 rules!2550 (rule!4170 t2!34))))))

(declare-fun b!1376629 () Bool)

(declare-fun tp!394626 () Bool)

(assert (=> b!1376629 (= e!879692 (and tp!394626 (inv!18282 (tag!2673 (h!19330 rules!2550))) (inv!18285 (transformation!2411 (h!19330 rules!2550))) e!879686))))

(declare-fun b!1376630 () Bool)

(declare-fun res!620371 () Bool)

(assert (=> b!1376630 (=> (not res!620371) (not e!879679))))

(declare-fun rulesInvariant!1976 (LexerInterface!2106 List!13995) Bool)

(assert (=> b!1376630 (= res!620371 (rulesInvariant!1976 thiss!19762 rules!2550))))

(declare-fun b!1376631 () Bool)

(declare-fun tp!394630 () Bool)

(assert (=> b!1376631 (= e!879669 (and (inv!21 (value!78346 t1!34)) e!879677 tp!394630))))

(assert (=> b!1376632 (= e!879696 e!879671)))

(declare-fun res!620392 () Bool)

(assert (=> b!1376632 (=> res!620392 e!879671)))

(declare-fun exists!481 (List!13995 Int) Bool)

(assert (=> b!1376632 (= res!620392 (not (exists!481 rules!2550 lambda!58652)))))

(assert (=> b!1376632 (exists!481 rules!2550 lambda!58652)))

(declare-fun lt!457497 () Unit!20172)

(declare-fun lemmaMapContains!130 (List!13995 Int Regex!3725) Unit!20172)

(assert (=> b!1376632 (= lt!457497 (lemmaMapContains!130 rules!2550 lambda!58650 lt!457516))))

(declare-fun b!1376633 () Bool)

(assert (=> b!1376633 (= e!879679 e!879698)))

(declare-fun res!620380 () Bool)

(assert (=> b!1376633 (=> (not res!620380) (not e!879698))))

(declare-fun size!11432 (BalanceConc!9108) Int)

(assert (=> b!1376633 (= res!620380 (> (size!11432 lt!457490) 0))))

(assert (=> b!1376633 (= lt!457490 (charsOf!1383 t2!34))))

(assert (= (and start!124614 res!620385) b!1376614))

(assert (= (and b!1376614 res!620382) b!1376630))

(assert (= (and b!1376630 res!620371) b!1376607))

(assert (= (and b!1376607 res!620378) b!1376600))

(assert (= (and b!1376600 res!620379) b!1376602))

(assert (= (and b!1376602 res!620389) b!1376633))

(assert (= (and b!1376633 res!620380) b!1376623))

(assert (= (and b!1376623 res!620393) b!1376605))

(assert (= (and b!1376605 res!620397) b!1376611))

(assert (= (and b!1376611 res!620387) b!1376595))

(assert (= (and b!1376595 (not res!620372)) b!1376615))

(assert (= (and b!1376615 (not res!620384)) b!1376596))

(assert (= (and b!1376596 (not res!620383)) b!1376603))

(assert (= (and b!1376603 (not res!620373)) b!1376618))

(assert (= (and b!1376618 (not res!620399)) b!1376625))

(assert (= (and b!1376625 (not res!620386)) b!1376599))

(assert (= (and b!1376599 (not res!620396)) b!1376609))

(assert (= (and b!1376609 (not res!620400)) b!1376593))

(assert (= (and b!1376593 (not res!620401)) b!1376632))

(assert (= (and b!1376632 (not res!620392)) b!1376619))

(assert (= (and b!1376619 (not res!620388)) b!1376608))

(assert (= (and b!1376608 (not res!620394)) b!1376604))

(assert (= (and b!1376604 (not res!620403)) b!1376606))

(assert (= (and b!1376606 (not res!620374)) b!1376591))

(assert (= (and b!1376591 (not res!620398)) b!1376589))

(assert (= (and b!1376589 (not res!620391)) b!1376620))

(assert (= (and b!1376620 (not res!620377)) b!1376617))

(assert (= (and b!1376617 (not res!620402)) b!1376597))

(assert (= (and b!1376597 (not res!620376)) b!1376628))

(assert (= (and b!1376628 (not res!620395)) b!1376610))

(assert (= (and b!1376610 (not res!620381)) b!1376624))

(assert (= (and b!1376624 (not res!620370)) b!1376621))

(assert (= (and b!1376621 (not res!620375)) b!1376587))

(assert (= (and b!1376587 c!226661) b!1376590))

(assert (= (and b!1376587 (not c!226661)) b!1376612))

(assert (= (and b!1376587 (not res!620390)) b!1376598))

(assert (= (and b!1376598 c!226660) b!1376613))

(assert (= (and b!1376598 (not c!226660)) b!1376592))

(assert (= b!1376629 b!1376594))

(assert (= b!1376588 b!1376629))

(assert (= (and start!124614 ((_ is Cons!13929) rules!2550)) b!1376588))

(assert (= b!1376616 b!1376601))

(assert (= b!1376631 b!1376616))

(assert (= start!124614 b!1376631))

(assert (= b!1376627 b!1376622))

(assert (= b!1376626 b!1376627))

(assert (= start!124614 b!1376626))

(declare-fun m!1549193 () Bool)

(assert (=> b!1376613 m!1549193))

(assert (=> b!1376613 m!1549193))

(declare-fun m!1549195 () Bool)

(assert (=> b!1376613 m!1549195))

(declare-fun m!1549197 () Bool)

(assert (=> b!1376609 m!1549197))

(assert (=> b!1376609 m!1549197))

(declare-fun m!1549199 () Bool)

(assert (=> b!1376609 m!1549199))

(assert (=> b!1376609 m!1549197))

(declare-fun m!1549201 () Bool)

(assert (=> b!1376609 m!1549201))

(declare-fun m!1549203 () Bool)

(assert (=> b!1376609 m!1549203))

(declare-fun m!1549205 () Bool)

(assert (=> b!1376595 m!1549205))

(assert (=> b!1376595 m!1549205))

(declare-fun m!1549207 () Bool)

(assert (=> b!1376595 m!1549207))

(declare-fun m!1549209 () Bool)

(assert (=> b!1376614 m!1549209))

(declare-fun m!1549211 () Bool)

(assert (=> b!1376600 m!1549211))

(declare-fun m!1549213 () Bool)

(assert (=> b!1376607 m!1549213))

(declare-fun m!1549215 () Bool)

(assert (=> b!1376617 m!1549215))

(assert (=> b!1376617 m!1549215))

(declare-fun m!1549217 () Bool)

(assert (=> b!1376617 m!1549217))

(declare-fun m!1549219 () Bool)

(assert (=> b!1376632 m!1549219))

(assert (=> b!1376632 m!1549219))

(declare-fun m!1549221 () Bool)

(assert (=> b!1376632 m!1549221))

(declare-fun m!1549223 () Bool)

(assert (=> b!1376629 m!1549223))

(declare-fun m!1549225 () Bool)

(assert (=> b!1376629 m!1549225))

(declare-fun m!1549227 () Bool)

(assert (=> b!1376590 m!1549227))

(assert (=> b!1376590 m!1549227))

(declare-fun m!1549229 () Bool)

(assert (=> b!1376590 m!1549229))

(declare-fun m!1549231 () Bool)

(assert (=> start!124614 m!1549231))

(declare-fun m!1549233 () Bool)

(assert (=> start!124614 m!1549233))

(declare-fun m!1549235 () Bool)

(assert (=> b!1376591 m!1549235))

(declare-fun m!1549237 () Bool)

(assert (=> b!1376599 m!1549237))

(declare-fun m!1549239 () Bool)

(assert (=> b!1376606 m!1549239))

(declare-fun m!1549241 () Bool)

(assert (=> b!1376611 m!1549241))

(declare-fun m!1549243 () Bool)

(assert (=> b!1376611 m!1549243))

(declare-fun m!1549245 () Bool)

(assert (=> b!1376611 m!1549245))

(declare-fun m!1549247 () Bool)

(assert (=> b!1376611 m!1549247))

(declare-fun m!1549249 () Bool)

(assert (=> b!1376611 m!1549249))

(declare-fun m!1549251 () Bool)

(assert (=> b!1376611 m!1549251))

(declare-fun m!1549253 () Bool)

(assert (=> b!1376589 m!1549253))

(declare-fun m!1549255 () Bool)

(assert (=> b!1376589 m!1549255))

(declare-fun m!1549257 () Bool)

(assert (=> b!1376589 m!1549257))

(assert (=> b!1376589 m!1549257))

(declare-fun m!1549259 () Bool)

(assert (=> b!1376589 m!1549259))

(declare-fun m!1549261 () Bool)

(assert (=> b!1376627 m!1549261))

(declare-fun m!1549263 () Bool)

(assert (=> b!1376627 m!1549263))

(declare-fun m!1549265 () Bool)

(assert (=> b!1376597 m!1549265))

(declare-fun m!1549267 () Bool)

(assert (=> b!1376597 m!1549267))

(declare-fun m!1549269 () Bool)

(assert (=> b!1376603 m!1549269))

(declare-fun m!1549271 () Bool)

(assert (=> b!1376623 m!1549271))

(declare-fun m!1549273 () Bool)

(assert (=> b!1376624 m!1549273))

(declare-fun m!1549275 () Bool)

(assert (=> b!1376624 m!1549275))

(declare-fun m!1549277 () Bool)

(assert (=> b!1376624 m!1549277))

(declare-fun m!1549279 () Bool)

(assert (=> b!1376624 m!1549279))

(declare-fun m!1549281 () Bool)

(assert (=> b!1376618 m!1549281))

(declare-fun m!1549283 () Bool)

(assert (=> b!1376631 m!1549283))

(declare-fun m!1549285 () Bool)

(assert (=> b!1376630 m!1549285))

(declare-fun m!1549287 () Bool)

(assert (=> b!1376615 m!1549287))

(assert (=> b!1376615 m!1549287))

(declare-fun m!1549289 () Bool)

(assert (=> b!1376615 m!1549289))

(declare-fun m!1549291 () Bool)

(assert (=> b!1376615 m!1549291))

(declare-fun m!1549293 () Bool)

(assert (=> b!1376608 m!1549293))

(declare-fun m!1549295 () Bool)

(assert (=> b!1376621 m!1549295))

(declare-fun m!1549297 () Bool)

(assert (=> b!1376628 m!1549297))

(declare-fun m!1549299 () Bool)

(assert (=> b!1376604 m!1549299))

(assert (=> b!1376604 m!1549299))

(declare-fun m!1549301 () Bool)

(assert (=> b!1376604 m!1549301))

(declare-fun m!1549303 () Bool)

(assert (=> b!1376620 m!1549303))

(declare-fun m!1549305 () Bool)

(assert (=> b!1376626 m!1549305))

(declare-fun m!1549307 () Bool)

(assert (=> b!1376596 m!1549307))

(declare-fun m!1549309 () Bool)

(assert (=> b!1376596 m!1549309))

(declare-fun m!1549311 () Bool)

(assert (=> b!1376587 m!1549311))

(assert (=> b!1376587 m!1549311))

(declare-fun m!1549313 () Bool)

(assert (=> b!1376587 m!1549313))

(assert (=> b!1376593 m!1549197))

(assert (=> b!1376593 m!1549197))

(declare-fun m!1549315 () Bool)

(assert (=> b!1376593 m!1549315))

(assert (=> b!1376593 m!1549197))

(assert (=> b!1376593 m!1549197))

(declare-fun m!1549317 () Bool)

(assert (=> b!1376593 m!1549317))

(declare-fun m!1549319 () Bool)

(assert (=> b!1376619 m!1549319))

(declare-fun m!1549321 () Bool)

(assert (=> b!1376619 m!1549321))

(declare-fun m!1549323 () Bool)

(assert (=> b!1376619 m!1549323))

(assert (=> b!1376619 m!1549321))

(declare-fun m!1549325 () Bool)

(assert (=> b!1376619 m!1549325))

(declare-fun m!1549327 () Bool)

(assert (=> b!1376619 m!1549327))

(declare-fun m!1549329 () Bool)

(assert (=> b!1376633 m!1549329))

(declare-fun m!1549331 () Bool)

(assert (=> b!1376633 m!1549331))

(declare-fun m!1549333 () Bool)

(assert (=> b!1376598 m!1549333))

(assert (=> b!1376598 m!1549333))

(declare-fun m!1549335 () Bool)

(assert (=> b!1376598 m!1549335))

(declare-fun m!1549337 () Bool)

(assert (=> b!1376605 m!1549337))

(declare-fun m!1549339 () Bool)

(assert (=> b!1376616 m!1549339))

(declare-fun m!1549341 () Bool)

(assert (=> b!1376616 m!1549341))

(declare-fun m!1549343 () Bool)

(assert (=> b!1376625 m!1549343))

(declare-fun m!1549345 () Bool)

(assert (=> b!1376610 m!1549345))

(check-sat (not b!1376607) (not b!1376588) b_and!92211 (not b_next!34035) (not b!1376589) (not b!1376624) b_and!92203 (not b!1376619) (not b!1376629) (not b!1376618) (not b!1376621) (not b!1376606) b_and!92207 (not b!1376599) (not b_next!34027) (not b!1376610) (not b!1376615) (not b!1376595) (not b!1376617) b_and!92209 (not b!1376593) (not b!1376628) (not b!1376633) (not b!1376630) (not b!1376620) (not b!1376631) (not b!1376590) (not b!1376616) (not b!1376614) (not b!1376623) (not b!1376613) (not b!1376611) (not b!1376609) (not b!1376600) (not b!1376591) (not b!1376596) (not b_next!34031) (not b!1376632) b_and!92205 (not b_next!34029) (not b!1376605) (not b!1376603) (not b!1376608) (not b_next!34037) (not b!1376604) (not b!1376587) (not b!1376597) (not b_next!34033) b_and!92213 (not b!1376627) (not b!1376626) (not b!1376598) (not b!1376625) (not start!124614))
(check-sat b_and!92207 (not b_next!34027) b_and!92209 (not b_next!34029) b_and!92211 (not b_next!34035) (not b_next!34037) (not b_next!34033) b_and!92213 b_and!92203 (not b_next!34031) b_and!92205)
