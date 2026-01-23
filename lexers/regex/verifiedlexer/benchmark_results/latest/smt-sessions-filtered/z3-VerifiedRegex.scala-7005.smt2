; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!372052 () Bool)

(assert start!372052)

(declare-fun b!3956473 () Bool)

(declare-fun b_free!109005 () Bool)

(declare-fun b_next!109709 () Bool)

(assert (=> b!3956473 (= b_free!109005 (not b_next!109709))))

(declare-fun tp!1205716 () Bool)

(declare-fun b_and!303583 () Bool)

(assert (=> b!3956473 (= tp!1205716 b_and!303583)))

(declare-fun b_free!109007 () Bool)

(declare-fun b_next!109711 () Bool)

(assert (=> b!3956473 (= b_free!109007 (not b_next!109711))))

(declare-fun tp!1205717 () Bool)

(declare-fun b_and!303585 () Bool)

(assert (=> b!3956473 (= tp!1205717 b_and!303585)))

(declare-fun b!3956464 () Bool)

(declare-fun b_free!109009 () Bool)

(declare-fun b_next!109713 () Bool)

(assert (=> b!3956464 (= b_free!109009 (not b_next!109713))))

(declare-fun tp!1205725 () Bool)

(declare-fun b_and!303587 () Bool)

(assert (=> b!3956464 (= tp!1205725 b_and!303587)))

(declare-fun b_free!109011 () Bool)

(declare-fun b_next!109715 () Bool)

(assert (=> b!3956464 (= b_free!109011 (not b_next!109715))))

(declare-fun tp!1205727 () Bool)

(declare-fun b_and!303589 () Bool)

(assert (=> b!3956464 (= tp!1205727 b_and!303589)))

(declare-fun b!3956465 () Bool)

(declare-fun b_free!109013 () Bool)

(declare-fun b_next!109717 () Bool)

(assert (=> b!3956465 (= b_free!109013 (not b_next!109717))))

(declare-fun tp!1205726 () Bool)

(declare-fun b_and!303591 () Bool)

(assert (=> b!3956465 (= tp!1205726 b_and!303591)))

(declare-fun b_free!109015 () Bool)

(declare-fun b_next!109719 () Bool)

(assert (=> b!3956465 (= b_free!109015 (not b_next!109719))))

(declare-fun tp!1205719 () Bool)

(declare-fun b_and!303593 () Bool)

(assert (=> b!3956465 (= tp!1205719 b_and!303593)))

(declare-fun b!3956444 () Bool)

(declare-fun e!2449459 () Bool)

(declare-fun e!2449441 () Bool)

(assert (=> b!3956444 (= e!2449459 e!2449441)))

(declare-fun res!1600942 () Bool)

(assert (=> b!3956444 (=> res!1600942 e!2449441)))

(declare-datatypes ((List!42233 0))(
  ( (Nil!42109) (Cons!42109 (h!47529 (_ BitVec 16)) (t!329392 List!42233)) )
))
(declare-datatypes ((TokenValue!6828 0))(
  ( (FloatLiteralValue!13656 (text!48241 List!42233)) (TokenValueExt!6827 (__x!25873 Int)) (Broken!34140 (value!208651 List!42233)) (Object!6951) (End!6828) (Def!6828) (Underscore!6828) (Match!6828) (Else!6828) (Error!6828) (Case!6828) (If!6828) (Extends!6828) (Abstract!6828) (Class!6828) (Val!6828) (DelimiterValue!13656 (del!6888 List!42233)) (KeywordValue!6834 (value!208652 List!42233)) (CommentValue!13656 (value!208653 List!42233)) (WhitespaceValue!13656 (value!208654 List!42233)) (IndentationValue!6828 (value!208655 List!42233)) (String!47857) (Int32!6828) (Broken!34141 (value!208656 List!42233)) (Boolean!6829) (Unit!60601) (OperatorValue!6831 (op!6888 List!42233)) (IdentifierValue!13656 (value!208657 List!42233)) (IdentifierValue!13657 (value!208658 List!42233)) (WhitespaceValue!13657 (value!208659 List!42233)) (True!13656) (False!13656) (Broken!34142 (value!208660 List!42233)) (Broken!34143 (value!208661 List!42233)) (True!13657) (RightBrace!6828) (RightBracket!6828) (Colon!6828) (Null!6828) (Comma!6828) (LeftBracket!6828) (False!13657) (LeftBrace!6828) (ImaginaryLiteralValue!6828 (text!48242 List!42233)) (StringLiteralValue!20484 (value!208662 List!42233)) (EOFValue!6828 (value!208663 List!42233)) (IdentValue!6828 (value!208664 List!42233)) (DelimiterValue!13657 (value!208665 List!42233)) (DedentValue!6828 (value!208666 List!42233)) (NewLineValue!6828 (value!208667 List!42233)) (IntegerValue!20484 (value!208668 (_ BitVec 32)) (text!48243 List!42233)) (IntegerValue!20485 (value!208669 Int) (text!48244 List!42233)) (Times!6828) (Or!6828) (Equal!6828) (Minus!6828) (Broken!34144 (value!208670 List!42233)) (And!6828) (Div!6828) (LessEqual!6828) (Mod!6828) (Concat!18331) (Not!6828) (Plus!6828) (SpaceValue!6828 (value!208671 List!42233)) (IntegerValue!20486 (value!208672 Int) (text!48245 List!42233)) (StringLiteralValue!20485 (text!48246 List!42233)) (FloatLiteralValue!13657 (text!48247 List!42233)) (BytesLiteralValue!6828 (value!208673 List!42233)) (CommentValue!13657 (value!208674 List!42233)) (StringLiteralValue!20486 (value!208675 List!42233)) (ErrorTokenValue!6828 (msg!6889 List!42233)) )
))
(declare-datatypes ((C!23192 0))(
  ( (C!23193 (val!13690 Int)) )
))
(declare-datatypes ((List!42234 0))(
  ( (Nil!42110) (Cons!42110 (h!47530 C!23192) (t!329393 List!42234)) )
))
(declare-datatypes ((IArray!25623 0))(
  ( (IArray!25624 (innerList!12869 List!42234)) )
))
(declare-datatypes ((Conc!12809 0))(
  ( (Node!12809 (left!31990 Conc!12809) (right!32320 Conc!12809) (csize!25848 Int) (cheight!13020 Int)) (Leaf!19815 (xs!16115 IArray!25623) (csize!25849 Int)) (Empty!12809) )
))
(declare-datatypes ((BalanceConc!25212 0))(
  ( (BalanceConc!25213 (c!686738 Conc!12809)) )
))
(declare-datatypes ((Regex!11503 0))(
  ( (ElementMatch!11503 (c!686739 C!23192)) (Concat!18332 (regOne!23518 Regex!11503) (regTwo!23518 Regex!11503)) (EmptyExpr!11503) (Star!11503 (reg!11832 Regex!11503)) (EmptyLang!11503) (Union!11503 (regOne!23519 Regex!11503) (regTwo!23519 Regex!11503)) )
))
(declare-datatypes ((String!47858 0))(
  ( (String!47859 (value!208676 String)) )
))
(declare-datatypes ((TokenValueInjection!13084 0))(
  ( (TokenValueInjection!13085 (toValue!9078 Int) (toChars!8937 Int)) )
))
(declare-datatypes ((Rule!12996 0))(
  ( (Rule!12997 (regex!6598 Regex!11503) (tag!7458 String!47858) (isSeparator!6598 Bool) (transformation!6598 TokenValueInjection!13084)) )
))
(declare-datatypes ((Token!12334 0))(
  ( (Token!12335 (value!208677 TokenValue!6828) (rule!9570 Rule!12996) (size!31542 Int) (originalCharacters!7198 List!42234)) )
))
(declare-datatypes ((tuple2!41394 0))(
  ( (tuple2!41395 (_1!23831 Token!12334) (_2!23831 List!42234)) )
))
(declare-fun lt!1383316 () tuple2!41394)

(declare-fun lt!1383324 () Token!12334)

(assert (=> b!3956444 (= res!1600942 (not (= (_1!23831 lt!1383316) lt!1383324)))))

(declare-datatypes ((List!42235 0))(
  ( (Nil!42111) (Cons!42111 (h!47531 Token!12334) (t!329394 List!42235)) )
))
(declare-fun prefixTokens!80 () List!42235)

(declare-fun head!8403 (List!42235) Token!12334)

(assert (=> b!3956444 (= lt!1383324 (head!8403 prefixTokens!80))))

(declare-datatypes ((Option!9018 0))(
  ( (None!9017) (Some!9017 (v!39363 tuple2!41394)) )
))
(declare-fun lt!1383328 () Option!9018)

(declare-fun get!13887 (Option!9018) tuple2!41394)

(assert (=> b!3956444 (= lt!1383316 (get!13887 lt!1383328))))

(declare-fun res!1600936 () Bool)

(declare-fun e!2449436 () Bool)

(assert (=> start!372052 (=> (not res!1600936) (not e!2449436))))

(declare-datatypes ((LexerInterface!6187 0))(
  ( (LexerInterfaceExt!6184 (__x!25874 Int)) (Lexer!6185) )
))
(declare-fun thiss!20629 () LexerInterface!6187)

(get-info :version)

(assert (=> start!372052 (= res!1600936 ((_ is Lexer!6185) thiss!20629))))

(assert (=> start!372052 e!2449436))

(declare-fun e!2449434 () Bool)

(assert (=> start!372052 e!2449434))

(assert (=> start!372052 true))

(declare-fun e!2449458 () Bool)

(assert (=> start!372052 e!2449458))

(declare-fun e!2449440 () Bool)

(assert (=> start!372052 e!2449440))

(declare-fun e!2449439 () Bool)

(assert (=> start!372052 e!2449439))

(declare-fun e!2449452 () Bool)

(assert (=> start!372052 e!2449452))

(declare-fun e!2449432 () Bool)

(assert (=> start!372052 e!2449432))

(declare-fun b!3956445 () Bool)

(declare-fun e!2449457 () Bool)

(assert (=> b!3956445 (= e!2449457 e!2449459)))

(declare-fun res!1600945 () Bool)

(assert (=> b!3956445 (=> res!1600945 e!2449459)))

(declare-fun lt!1383313 () List!42234)

(declare-fun matchR!5524 (Regex!11503 List!42234) Bool)

(assert (=> b!3956445 (= res!1600945 (not (matchR!5524 (regex!6598 (rule!9570 (_1!23831 (v!39363 lt!1383328)))) lt!1383313)))))

(declare-fun lt!1383331 () List!42234)

(declare-fun lt!1383321 () TokenValue!6828)

(declare-fun lt!1383314 () Int)

(declare-fun maxPrefixOneRule!2541 (LexerInterface!6187 Rule!12996 List!42234) Option!9018)

(assert (=> b!3956445 (= (maxPrefixOneRule!2541 thiss!20629 (rule!9570 (_1!23831 (v!39363 lt!1383328))) lt!1383331) (Some!9017 (tuple2!41395 (Token!12335 lt!1383321 (rule!9570 (_1!23831 (v!39363 lt!1383328))) lt!1383314 lt!1383313) (_2!23831 (v!39363 lt!1383328)))))))

(declare-datatypes ((Unit!60602 0))(
  ( (Unit!60603) )
))
(declare-fun lt!1383317 () Unit!60602)

(declare-datatypes ((List!42236 0))(
  ( (Nil!42112) (Cons!42112 (h!47532 Rule!12996) (t!329395 List!42236)) )
))
(declare-fun rules!2768 () List!42236)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1367 (LexerInterface!6187 List!42236 List!42234 List!42234 List!42234 Rule!12996) Unit!60602)

(assert (=> b!3956445 (= lt!1383317 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1367 thiss!20629 rules!2768 lt!1383313 lt!1383331 (_2!23831 (v!39363 lt!1383328)) (rule!9570 (_1!23831 (v!39363 lt!1383328)))))))

(declare-fun e!2449438 () Bool)

(declare-fun e!2449450 () Bool)

(declare-fun b!3956446 () Bool)

(declare-fun tp!1205722 () Bool)

(declare-fun inv!56338 (String!47858) Bool)

(declare-fun inv!56341 (TokenValueInjection!13084) Bool)

(assert (=> b!3956446 (= e!2449438 (and tp!1205722 (inv!56338 (tag!7458 (rule!9570 (h!47531 prefixTokens!80)))) (inv!56341 (transformation!6598 (rule!9570 (h!47531 prefixTokens!80)))) e!2449450))))

(declare-fun b!3956447 () Bool)

(declare-fun res!1600955 () Bool)

(assert (=> b!3956447 (=> (not res!1600955) (not e!2449436))))

(declare-fun prefix!426 () List!42234)

(declare-fun isEmpty!25168 (List!42234) Bool)

(assert (=> b!3956447 (= res!1600955 (not (isEmpty!25168 prefix!426)))))

(declare-fun tp!1205732 () Bool)

(declare-fun b!3956448 () Bool)

(declare-fun e!2449442 () Bool)

(declare-fun inv!56342 (Token!12334) Bool)

(assert (=> b!3956448 (= e!2449439 (and (inv!56342 (h!47531 prefixTokens!80)) e!2449442 tp!1205732))))

(declare-fun b!3956449 () Bool)

(declare-fun tp_is_empty!19977 () Bool)

(declare-fun tp!1205728 () Bool)

(assert (=> b!3956449 (= e!2449432 (and tp_is_empty!19977 tp!1205728))))

(declare-fun b!3956450 () Bool)

(declare-fun tp!1205729 () Bool)

(assert (=> b!3956450 (= e!2449458 (and tp_is_empty!19977 tp!1205729))))

(declare-fun b!3956451 () Bool)

(declare-fun e!2449456 () Bool)

(declare-fun e!2449446 () Bool)

(assert (=> b!3956451 (= e!2449456 e!2449446)))

(declare-fun res!1600943 () Bool)

(assert (=> b!3956451 (=> res!1600943 e!2449446)))

(declare-fun lt!1383333 () Int)

(declare-fun lt!1383311 () Int)

(assert (=> b!3956451 (= res!1600943 (not (= lt!1383333 lt!1383311)))))

(assert (=> b!3956451 (= (_2!23831 (v!39363 lt!1383328)) (_2!23831 lt!1383316))))

(declare-fun lt!1383310 () Unit!60602)

(declare-fun lemmaConcatSameAndSameSizesThenSameLists!598 (List!42234 List!42234 List!42234 List!42234) Unit!60602)

(assert (=> b!3956451 (= lt!1383310 (lemmaConcatSameAndSameSizesThenSameLists!598 lt!1383313 (_2!23831 (v!39363 lt!1383328)) lt!1383313 (_2!23831 lt!1383316)))))

(declare-fun b!3956452 () Bool)

(assert (=> b!3956452 (= e!2449441 e!2449456)))

(declare-fun res!1600953 () Bool)

(assert (=> b!3956452 (=> res!1600953 e!2449456)))

(declare-fun lt!1383323 () Int)

(assert (=> b!3956452 (= res!1600953 (>= lt!1383311 lt!1383323))))

(declare-fun size!31543 (List!42234) Int)

(assert (=> b!3956452 (= lt!1383311 (size!31543 (_2!23831 lt!1383316)))))

(declare-fun b!3956453 () Bool)

(declare-fun e!2449429 () Bool)

(declare-fun tp!1205723 () Bool)

(assert (=> b!3956453 (= e!2449440 (and e!2449429 tp!1205723))))

(declare-fun b!3956454 () Bool)

(declare-fun e!2449449 () Bool)

(assert (=> b!3956454 (= e!2449436 e!2449449)))

(declare-fun res!1600947 () Bool)

(assert (=> b!3956454 (=> (not res!1600947) (not e!2449449))))

(declare-fun suffixResult!91 () List!42234)

(declare-fun lt!1383318 () List!42235)

(declare-datatypes ((tuple2!41396 0))(
  ( (tuple2!41397 (_1!23832 List!42235) (_2!23832 List!42234)) )
))
(declare-fun lt!1383326 () tuple2!41396)

(assert (=> b!3956454 (= res!1600947 (= lt!1383326 (tuple2!41397 lt!1383318 suffixResult!91)))))

(declare-fun lexList!1955 (LexerInterface!6187 List!42236 List!42234) tuple2!41396)

(assert (=> b!3956454 (= lt!1383326 (lexList!1955 thiss!20629 rules!2768 lt!1383331))))

(declare-fun suffixTokens!72 () List!42235)

(declare-fun ++!10953 (List!42235 List!42235) List!42235)

(assert (=> b!3956454 (= lt!1383318 (++!10953 prefixTokens!80 suffixTokens!72))))

(declare-fun suffix!1176 () List!42234)

(declare-fun ++!10954 (List!42234 List!42234) List!42234)

(assert (=> b!3956454 (= lt!1383331 (++!10954 prefix!426 suffix!1176))))

(declare-fun b!3956455 () Bool)

(assert (=> b!3956455 (= e!2449446 (not (isEmpty!25168 suffix!1176)))))

(declare-fun b!3956456 () Bool)

(declare-fun e!2449448 () Bool)

(declare-fun e!2449445 () Bool)

(assert (=> b!3956456 (= e!2449448 (not e!2449445))))

(declare-fun res!1600952 () Bool)

(assert (=> b!3956456 (=> res!1600952 e!2449445)))

(declare-fun lt!1383329 () List!42234)

(assert (=> b!3956456 (= res!1600952 (not (= lt!1383329 lt!1383331)))))

(declare-fun lt!1383327 () tuple2!41396)

(assert (=> b!3956456 (= lt!1383327 (lexList!1955 thiss!20629 rules!2768 (_2!23831 (v!39363 lt!1383328))))))

(declare-fun lt!1383330 () List!42234)

(assert (=> b!3956456 (and (= (size!31542 (_1!23831 (v!39363 lt!1383328))) lt!1383314) (= (originalCharacters!7198 (_1!23831 (v!39363 lt!1383328))) lt!1383313) (= (v!39363 lt!1383328) (tuple2!41395 (Token!12335 lt!1383321 (rule!9570 (_1!23831 (v!39363 lt!1383328))) lt!1383314 lt!1383313) lt!1383330)))))

(assert (=> b!3956456 (= lt!1383314 (size!31543 lt!1383313))))

(declare-fun e!2449460 () Bool)

(assert (=> b!3956456 e!2449460))

(declare-fun res!1600937 () Bool)

(assert (=> b!3956456 (=> (not res!1600937) (not e!2449460))))

(assert (=> b!3956456 (= res!1600937 (= (value!208677 (_1!23831 (v!39363 lt!1383328))) lt!1383321))))

(declare-fun apply!9829 (TokenValueInjection!13084 BalanceConc!25212) TokenValue!6828)

(declare-fun seqFromList!4857 (List!42234) BalanceConc!25212)

(assert (=> b!3956456 (= lt!1383321 (apply!9829 (transformation!6598 (rule!9570 (_1!23831 (v!39363 lt!1383328)))) (seqFromList!4857 lt!1383313)))))

(assert (=> b!3956456 (= (_2!23831 (v!39363 lt!1383328)) lt!1383330)))

(declare-fun lt!1383312 () Unit!60602)

(declare-fun lemmaSamePrefixThenSameSuffix!1896 (List!42234 List!42234 List!42234 List!42234 List!42234) Unit!60602)

(assert (=> b!3956456 (= lt!1383312 (lemmaSamePrefixThenSameSuffix!1896 lt!1383313 (_2!23831 (v!39363 lt!1383328)) lt!1383313 lt!1383330 lt!1383331))))

(declare-fun getSuffix!2138 (List!42234 List!42234) List!42234)

(assert (=> b!3956456 (= lt!1383330 (getSuffix!2138 lt!1383331 lt!1383313))))

(declare-fun isPrefix!3687 (List!42234 List!42234) Bool)

(assert (=> b!3956456 (isPrefix!3687 lt!1383313 lt!1383329)))

(assert (=> b!3956456 (= lt!1383329 (++!10954 lt!1383313 (_2!23831 (v!39363 lt!1383328))))))

(declare-fun lt!1383315 () Unit!60602)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2546 (List!42234 List!42234) Unit!60602)

(assert (=> b!3956456 (= lt!1383315 (lemmaConcatTwoListThenFirstIsPrefix!2546 lt!1383313 (_2!23831 (v!39363 lt!1383328))))))

(declare-fun list!15636 (BalanceConc!25212) List!42234)

(declare-fun charsOf!4416 (Token!12334) BalanceConc!25212)

(assert (=> b!3956456 (= lt!1383313 (list!15636 (charsOf!4416 (_1!23831 (v!39363 lt!1383328)))))))

(declare-fun ruleValid!2540 (LexerInterface!6187 Rule!12996) Bool)

(assert (=> b!3956456 (ruleValid!2540 thiss!20629 (rule!9570 (_1!23831 (v!39363 lt!1383328))))))

(declare-fun lt!1383332 () Unit!60602)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1616 (LexerInterface!6187 Rule!12996 List!42236) Unit!60602)

(assert (=> b!3956456 (= lt!1383332 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1616 thiss!20629 (rule!9570 (_1!23831 (v!39363 lt!1383328))) rules!2768))))

(declare-fun lt!1383325 () Unit!60602)

(declare-fun lemmaCharactersSize!1251 (Token!12334) Unit!60602)

(assert (=> b!3956456 (= lt!1383325 (lemmaCharactersSize!1251 (_1!23831 (v!39363 lt!1383328))))))

(declare-fun b!3956457 () Bool)

(declare-fun res!1600939 () Bool)

(assert (=> b!3956457 (=> res!1600939 e!2449456)))

(declare-fun isEmpty!25169 (List!42235) Bool)

(declare-fun tail!6129 (List!42235) List!42235)

(assert (=> b!3956457 (= res!1600939 (not (isEmpty!25169 (tail!6129 prefixTokens!80))))))

(declare-fun e!2449444 () Bool)

(declare-fun tp!1205721 () Bool)

(declare-fun b!3956458 () Bool)

(assert (=> b!3956458 (= e!2449452 (and (inv!56342 (h!47531 suffixTokens!72)) e!2449444 tp!1205721))))

(declare-fun b!3956459 () Bool)

(declare-fun e!2449437 () Bool)

(assert (=> b!3956459 (= e!2449445 e!2449437)))

(declare-fun res!1600935 () Bool)

(assert (=> b!3956459 (=> res!1600935 e!2449437)))

(assert (=> b!3956459 (= res!1600935 (>= lt!1383333 lt!1383323))))

(assert (=> b!3956459 (= lt!1383323 (size!31543 suffix!1176))))

(assert (=> b!3956459 (= lt!1383333 (size!31543 (_2!23831 (v!39363 lt!1383328))))))

(declare-fun b!3956460 () Bool)

(declare-fun res!1600933 () Bool)

(assert (=> b!3956460 (=> (not res!1600933) (not e!2449436))))

(declare-fun isEmpty!25170 (List!42236) Bool)

(assert (=> b!3956460 (= res!1600933 (not (isEmpty!25170 rules!2768)))))

(declare-fun b!3956461 () Bool)

(declare-fun res!1600948 () Bool)

(assert (=> b!3956461 (=> res!1600948 e!2449445)))

(assert (=> b!3956461 (= res!1600948 (or (not (= lt!1383327 (tuple2!41397 (_1!23832 lt!1383327) (_2!23832 lt!1383327)))) (= (_2!23831 (v!39363 lt!1383328)) suffix!1176)))))

(declare-fun b!3956462 () Bool)

(declare-fun e!2449455 () Bool)

(assert (=> b!3956462 (= e!2449437 e!2449455)))

(declare-fun res!1600934 () Bool)

(assert (=> b!3956462 (=> res!1600934 e!2449455)))

(declare-fun lt!1383319 () Int)

(assert (=> b!3956462 (= res!1600934 (not (= (+ lt!1383314 lt!1383333) lt!1383319)))))

(assert (=> b!3956462 (= lt!1383319 (size!31543 lt!1383331))))

(declare-fun b!3956463 () Bool)

(declare-fun res!1600938 () Bool)

(assert (=> b!3956463 (=> (not res!1600938) (not e!2449436))))

(assert (=> b!3956463 (= res!1600938 (not (isEmpty!25169 prefixTokens!80)))))

(assert (=> b!3956464 (= e!2449450 (and tp!1205725 tp!1205727))))

(declare-fun e!2449453 () Bool)

(assert (=> b!3956465 (= e!2449453 (and tp!1205726 tp!1205719))))

(declare-fun b!3956466 () Bool)

(declare-fun res!1600954 () Bool)

(assert (=> b!3956466 (=> (not res!1600954) (not e!2449436))))

(declare-fun rulesInvariant!5530 (LexerInterface!6187 List!42236) Bool)

(assert (=> b!3956466 (= res!1600954 (rulesInvariant!5530 thiss!20629 rules!2768))))

(declare-fun tp!1205724 () Bool)

(declare-fun e!2449431 () Bool)

(declare-fun b!3956467 () Bool)

(declare-fun inv!21 (TokenValue!6828) Bool)

(assert (=> b!3956467 (= e!2449444 (and (inv!21 (value!208677 (h!47531 suffixTokens!72))) e!2449431 tp!1205724))))

(declare-fun b!3956468 () Bool)

(declare-fun tp!1205718 () Bool)

(assert (=> b!3956468 (= e!2449434 (and tp_is_empty!19977 tp!1205718))))

(declare-fun b!3956469 () Bool)

(assert (=> b!3956469 (= e!2449460 (= (size!31542 (_1!23831 (v!39363 lt!1383328))) (size!31543 (originalCharacters!7198 (_1!23831 (v!39363 lt!1383328))))))))

(declare-fun b!3956470 () Bool)

(declare-fun res!1600951 () Bool)

(assert (=> b!3956470 (=> res!1600951 e!2449456)))

(assert (=> b!3956470 (= res!1600951 (or (not (= prefixTokens!80 (Cons!42111 lt!1383324 Nil!42111))) (not (= (_1!23831 (v!39363 lt!1383328)) lt!1383324))))))

(declare-fun b!3956471 () Bool)

(assert (=> b!3956471 (= e!2449455 e!2449457)))

(declare-fun res!1600949 () Bool)

(assert (=> b!3956471 (=> res!1600949 e!2449457)))

(declare-fun lt!1383320 () Int)

(assert (=> b!3956471 (= res!1600949 (or (not (= (+ lt!1383320 lt!1383323) lt!1383319)) (<= lt!1383314 lt!1383320)))))

(assert (=> b!3956471 (= lt!1383320 (size!31543 prefix!426))))

(declare-fun b!3956472 () Bool)

(declare-fun e!2449447 () Bool)

(assert (=> b!3956472 (= e!2449449 e!2449447)))

(declare-fun res!1600940 () Bool)

(assert (=> b!3956472 (=> (not res!1600940) (not e!2449447))))

(declare-fun lt!1383322 () tuple2!41396)

(assert (=> b!3956472 (= res!1600940 (= (lexList!1955 thiss!20629 rules!2768 suffix!1176) lt!1383322))))

(assert (=> b!3956472 (= lt!1383322 (tuple2!41397 suffixTokens!72 suffixResult!91))))

(declare-fun e!2449430 () Bool)

(assert (=> b!3956473 (= e!2449430 (and tp!1205716 tp!1205717))))

(declare-fun b!3956474 () Bool)

(declare-fun res!1600941 () Bool)

(assert (=> b!3956474 (=> res!1600941 e!2449445)))

(assert (=> b!3956474 (= res!1600941 (not (= lt!1383326 (tuple2!41397 (++!10953 (Cons!42111 (_1!23831 (v!39363 lt!1383328)) Nil!42111) (_1!23832 lt!1383327)) (_2!23832 lt!1383327)))))))

(declare-fun tp!1205720 () Bool)

(declare-fun b!3956475 () Bool)

(assert (=> b!3956475 (= e!2449442 (and (inv!21 (value!208677 (h!47531 prefixTokens!80))) e!2449438 tp!1205720))))

(declare-fun b!3956476 () Bool)

(declare-fun res!1600944 () Bool)

(assert (=> b!3956476 (=> res!1600944 e!2449446)))

(assert (=> b!3956476 (= res!1600944 (not (= (lexList!1955 thiss!20629 rules!2768 (_2!23831 lt!1383316)) lt!1383322)))))

(declare-fun b!3956477 () Bool)

(declare-fun tp!1205731 () Bool)

(assert (=> b!3956477 (= e!2449429 (and tp!1205731 (inv!56338 (tag!7458 (h!47532 rules!2768))) (inv!56341 (transformation!6598 (h!47532 rules!2768))) e!2449430))))

(declare-fun b!3956478 () Bool)

(declare-fun res!1600946 () Bool)

(assert (=> b!3956478 (=> res!1600946 e!2449456)))

(assert (=> b!3956478 (= res!1600946 (not (= lt!1383329 (++!10954 lt!1383313 (_2!23831 lt!1383316)))))))

(declare-fun b!3956479 () Bool)

(assert (=> b!3956479 (= e!2449447 e!2449448)))

(declare-fun res!1600950 () Bool)

(assert (=> b!3956479 (=> (not res!1600950) (not e!2449448))))

(assert (=> b!3956479 (= res!1600950 ((_ is Some!9017) lt!1383328))))

(declare-fun maxPrefix!3491 (LexerInterface!6187 List!42236 List!42234) Option!9018)

(assert (=> b!3956479 (= lt!1383328 (maxPrefix!3491 thiss!20629 rules!2768 lt!1383331))))

(declare-fun b!3956480 () Bool)

(declare-fun tp!1205730 () Bool)

(assert (=> b!3956480 (= e!2449431 (and tp!1205730 (inv!56338 (tag!7458 (rule!9570 (h!47531 suffixTokens!72)))) (inv!56341 (transformation!6598 (rule!9570 (h!47531 suffixTokens!72)))) e!2449453))))

(assert (= (and start!372052 res!1600936) b!3956460))

(assert (= (and b!3956460 res!1600933) b!3956466))

(assert (= (and b!3956466 res!1600954) b!3956463))

(assert (= (and b!3956463 res!1600938) b!3956447))

(assert (= (and b!3956447 res!1600955) b!3956454))

(assert (= (and b!3956454 res!1600947) b!3956472))

(assert (= (and b!3956472 res!1600940) b!3956479))

(assert (= (and b!3956479 res!1600950) b!3956456))

(assert (= (and b!3956456 res!1600937) b!3956469))

(assert (= (and b!3956456 (not res!1600952)) b!3956474))

(assert (= (and b!3956474 (not res!1600941)) b!3956461))

(assert (= (and b!3956461 (not res!1600948)) b!3956459))

(assert (= (and b!3956459 (not res!1600935)) b!3956462))

(assert (= (and b!3956462 (not res!1600934)) b!3956471))

(assert (= (and b!3956471 (not res!1600949)) b!3956445))

(assert (= (and b!3956445 (not res!1600945)) b!3956444))

(assert (= (and b!3956444 (not res!1600942)) b!3956452))

(assert (= (and b!3956452 (not res!1600953)) b!3956457))

(assert (= (and b!3956457 (not res!1600939)) b!3956470))

(assert (= (and b!3956470 (not res!1600951)) b!3956478))

(assert (= (and b!3956478 (not res!1600946)) b!3956451))

(assert (= (and b!3956451 (not res!1600943)) b!3956476))

(assert (= (and b!3956476 (not res!1600944)) b!3956455))

(assert (= (and start!372052 ((_ is Cons!42110) suffixResult!91)) b!3956468))

(assert (= (and start!372052 ((_ is Cons!42110) suffix!1176)) b!3956450))

(assert (= b!3956477 b!3956473))

(assert (= b!3956453 b!3956477))

(assert (= (and start!372052 ((_ is Cons!42112) rules!2768)) b!3956453))

(assert (= b!3956446 b!3956464))

(assert (= b!3956475 b!3956446))

(assert (= b!3956448 b!3956475))

(assert (= (and start!372052 ((_ is Cons!42111) prefixTokens!80)) b!3956448))

(assert (= b!3956480 b!3956465))

(assert (= b!3956467 b!3956480))

(assert (= b!3956458 b!3956467))

(assert (= (and start!372052 ((_ is Cons!42111) suffixTokens!72)) b!3956458))

(assert (= (and start!372052 ((_ is Cons!42110) prefix!426)) b!3956449))

(declare-fun m!4525331 () Bool)

(assert (=> b!3956479 m!4525331))

(declare-fun m!4525333 () Bool)

(assert (=> b!3956460 m!4525333))

(declare-fun m!4525335 () Bool)

(assert (=> b!3956478 m!4525335))

(declare-fun m!4525337 () Bool)

(assert (=> b!3956466 m!4525337))

(declare-fun m!4525339 () Bool)

(assert (=> b!3956467 m!4525339))

(declare-fun m!4525341 () Bool)

(assert (=> b!3956469 m!4525341))

(declare-fun m!4525343 () Bool)

(assert (=> b!3956471 m!4525343))

(declare-fun m!4525345 () Bool)

(assert (=> b!3956451 m!4525345))

(declare-fun m!4525347 () Bool)

(assert (=> b!3956475 m!4525347))

(declare-fun m!4525349 () Bool)

(assert (=> b!3956448 m!4525349))

(declare-fun m!4525351 () Bool)

(assert (=> b!3956462 m!4525351))

(declare-fun m!4525353 () Bool)

(assert (=> b!3956458 m!4525353))

(declare-fun m!4525355 () Bool)

(assert (=> b!3956454 m!4525355))

(declare-fun m!4525357 () Bool)

(assert (=> b!3956454 m!4525357))

(declare-fun m!4525359 () Bool)

(assert (=> b!3956454 m!4525359))

(declare-fun m!4525361 () Bool)

(assert (=> b!3956447 m!4525361))

(declare-fun m!4525363 () Bool)

(assert (=> b!3956474 m!4525363))

(declare-fun m!4525365 () Bool)

(assert (=> b!3956445 m!4525365))

(declare-fun m!4525367 () Bool)

(assert (=> b!3956445 m!4525367))

(declare-fun m!4525369 () Bool)

(assert (=> b!3956445 m!4525369))

(declare-fun m!4525371 () Bool)

(assert (=> b!3956476 m!4525371))

(declare-fun m!4525373 () Bool)

(assert (=> b!3956456 m!4525373))

(declare-fun m!4525375 () Bool)

(assert (=> b!3956456 m!4525375))

(declare-fun m!4525377 () Bool)

(assert (=> b!3956456 m!4525377))

(declare-fun m!4525379 () Bool)

(assert (=> b!3956456 m!4525379))

(declare-fun m!4525381 () Bool)

(assert (=> b!3956456 m!4525381))

(declare-fun m!4525383 () Bool)

(assert (=> b!3956456 m!4525383))

(declare-fun m!4525385 () Bool)

(assert (=> b!3956456 m!4525385))

(declare-fun m!4525387 () Bool)

(assert (=> b!3956456 m!4525387))

(assert (=> b!3956456 m!4525377))

(declare-fun m!4525389 () Bool)

(assert (=> b!3956456 m!4525389))

(declare-fun m!4525391 () Bool)

(assert (=> b!3956456 m!4525391))

(declare-fun m!4525393 () Bool)

(assert (=> b!3956456 m!4525393))

(declare-fun m!4525395 () Bool)

(assert (=> b!3956456 m!4525395))

(assert (=> b!3956456 m!4525393))

(declare-fun m!4525397 () Bool)

(assert (=> b!3956456 m!4525397))

(declare-fun m!4525399 () Bool)

(assert (=> b!3956456 m!4525399))

(declare-fun m!4525401 () Bool)

(assert (=> b!3956444 m!4525401))

(declare-fun m!4525403 () Bool)

(assert (=> b!3956444 m!4525403))

(declare-fun m!4525405 () Bool)

(assert (=> b!3956463 m!4525405))

(declare-fun m!4525407 () Bool)

(assert (=> b!3956457 m!4525407))

(assert (=> b!3956457 m!4525407))

(declare-fun m!4525409 () Bool)

(assert (=> b!3956457 m!4525409))

(declare-fun m!4525411 () Bool)

(assert (=> b!3956446 m!4525411))

(declare-fun m!4525413 () Bool)

(assert (=> b!3956446 m!4525413))

(declare-fun m!4525415 () Bool)

(assert (=> b!3956472 m!4525415))

(declare-fun m!4525417 () Bool)

(assert (=> b!3956452 m!4525417))

(declare-fun m!4525419 () Bool)

(assert (=> b!3956477 m!4525419))

(declare-fun m!4525421 () Bool)

(assert (=> b!3956477 m!4525421))

(declare-fun m!4525423 () Bool)

(assert (=> b!3956480 m!4525423))

(declare-fun m!4525425 () Bool)

(assert (=> b!3956480 m!4525425))

(declare-fun m!4525427 () Bool)

(assert (=> b!3956455 m!4525427))

(declare-fun m!4525429 () Bool)

(assert (=> b!3956459 m!4525429))

(declare-fun m!4525431 () Bool)

(assert (=> b!3956459 m!4525431))

(check-sat (not b!3956446) (not b!3956474) (not b_next!109709) b_and!303593 (not b!3956468) (not b!3956479) (not b!3956454) (not b!3956448) (not b!3956447) (not b!3956450) (not b_next!109715) (not b!3956459) (not b!3956451) (not b!3956478) (not b!3956460) (not b!3956463) b_and!303591 (not b!3956469) (not b!3956456) (not b!3956458) (not b!3956462) b_and!303589 (not b!3956471) b_and!303585 (not b!3956472) (not b!3956445) (not b_next!109719) (not b!3956449) (not b!3956466) (not b!3956475) (not b!3956480) (not b_next!109711) (not b!3956476) (not b!3956467) tp_is_empty!19977 b_and!303583 (not b!3956457) b_and!303587 (not b_next!109713) (not b!3956455) (not b_next!109717) (not b!3956477) (not b!3956453) (not b!3956444) (not b!3956452))
(check-sat (not b_next!109709) b_and!303593 b_and!303591 b_and!303589 b_and!303585 (not b_next!109719) (not b_next!109711) b_and!303583 (not b_next!109717) (not b_next!109715) b_and!303587 (not b_next!109713))
(get-model)

(declare-fun d!1172886 () Bool)

(assert (=> d!1172886 (= (isEmpty!25170 rules!2768) ((_ is Nil!42112) rules!2768))))

(assert (=> b!3956460 d!1172886))

(declare-fun d!1172888 () Bool)

(declare-fun res!1600962 () Bool)

(declare-fun e!2449463 () Bool)

(assert (=> d!1172888 (=> (not res!1600962) (not e!2449463))))

(assert (=> d!1172888 (= res!1600962 (not (isEmpty!25168 (originalCharacters!7198 (h!47531 suffixTokens!72)))))))

(assert (=> d!1172888 (= (inv!56342 (h!47531 suffixTokens!72)) e!2449463)))

(declare-fun b!3956485 () Bool)

(declare-fun res!1600963 () Bool)

(assert (=> b!3956485 (=> (not res!1600963) (not e!2449463))))

(declare-fun dynLambda!18014 (Int TokenValue!6828) BalanceConc!25212)

(assert (=> b!3956485 (= res!1600963 (= (originalCharacters!7198 (h!47531 suffixTokens!72)) (list!15636 (dynLambda!18014 (toChars!8937 (transformation!6598 (rule!9570 (h!47531 suffixTokens!72)))) (value!208677 (h!47531 suffixTokens!72))))))))

(declare-fun b!3956486 () Bool)

(assert (=> b!3956486 (= e!2449463 (= (size!31542 (h!47531 suffixTokens!72)) (size!31543 (originalCharacters!7198 (h!47531 suffixTokens!72)))))))

(assert (= (and d!1172888 res!1600962) b!3956485))

(assert (= (and b!3956485 res!1600963) b!3956486))

(declare-fun b_lambda!115759 () Bool)

(assert (=> (not b_lambda!115759) (not b!3956485)))

(declare-fun tb!238425 () Bool)

(declare-fun t!329397 () Bool)

(assert (=> (and b!3956473 (= (toChars!8937 (transformation!6598 (h!47532 rules!2768))) (toChars!8937 (transformation!6598 (rule!9570 (h!47531 suffixTokens!72))))) t!329397) tb!238425))

(declare-fun b!3956491 () Bool)

(declare-fun e!2449466 () Bool)

(declare-fun tp!1205735 () Bool)

(declare-fun inv!56343 (Conc!12809) Bool)

(assert (=> b!3956491 (= e!2449466 (and (inv!56343 (c!686738 (dynLambda!18014 (toChars!8937 (transformation!6598 (rule!9570 (h!47531 suffixTokens!72)))) (value!208677 (h!47531 suffixTokens!72))))) tp!1205735))))

(declare-fun result!288714 () Bool)

(declare-fun inv!56344 (BalanceConc!25212) Bool)

(assert (=> tb!238425 (= result!288714 (and (inv!56344 (dynLambda!18014 (toChars!8937 (transformation!6598 (rule!9570 (h!47531 suffixTokens!72)))) (value!208677 (h!47531 suffixTokens!72)))) e!2449466))))

(assert (= tb!238425 b!3956491))

(declare-fun m!4525433 () Bool)

(assert (=> b!3956491 m!4525433))

(declare-fun m!4525435 () Bool)

(assert (=> tb!238425 m!4525435))

(assert (=> b!3956485 t!329397))

(declare-fun b_and!303595 () Bool)

(assert (= b_and!303585 (and (=> t!329397 result!288714) b_and!303595)))

(declare-fun tb!238427 () Bool)

(declare-fun t!329399 () Bool)

(assert (=> (and b!3956464 (= (toChars!8937 (transformation!6598 (rule!9570 (h!47531 prefixTokens!80)))) (toChars!8937 (transformation!6598 (rule!9570 (h!47531 suffixTokens!72))))) t!329399) tb!238427))

(declare-fun result!288718 () Bool)

(assert (= result!288718 result!288714))

(assert (=> b!3956485 t!329399))

(declare-fun b_and!303597 () Bool)

(assert (= b_and!303589 (and (=> t!329399 result!288718) b_and!303597)))

(declare-fun t!329401 () Bool)

(declare-fun tb!238429 () Bool)

(assert (=> (and b!3956465 (= (toChars!8937 (transformation!6598 (rule!9570 (h!47531 suffixTokens!72)))) (toChars!8937 (transformation!6598 (rule!9570 (h!47531 suffixTokens!72))))) t!329401) tb!238429))

(declare-fun result!288720 () Bool)

(assert (= result!288720 result!288714))

(assert (=> b!3956485 t!329401))

(declare-fun b_and!303599 () Bool)

(assert (= b_and!303593 (and (=> t!329401 result!288720) b_and!303599)))

(declare-fun m!4525437 () Bool)

(assert (=> d!1172888 m!4525437))

(declare-fun m!4525439 () Bool)

(assert (=> b!3956485 m!4525439))

(assert (=> b!3956485 m!4525439))

(declare-fun m!4525441 () Bool)

(assert (=> b!3956485 m!4525441))

(declare-fun m!4525443 () Bool)

(assert (=> b!3956486 m!4525443))

(assert (=> b!3956458 d!1172888))

(declare-fun d!1172890 () Bool)

(declare-fun lt!1383336 () Int)

(assert (=> d!1172890 (>= lt!1383336 0)))

(declare-fun e!2449469 () Int)

(assert (=> d!1172890 (= lt!1383336 e!2449469)))

(declare-fun c!686742 () Bool)

(assert (=> d!1172890 (= c!686742 ((_ is Nil!42110) suffix!1176))))

(assert (=> d!1172890 (= (size!31543 suffix!1176) lt!1383336)))

(declare-fun b!3956496 () Bool)

(assert (=> b!3956496 (= e!2449469 0)))

(declare-fun b!3956497 () Bool)

(assert (=> b!3956497 (= e!2449469 (+ 1 (size!31543 (t!329393 suffix!1176))))))

(assert (= (and d!1172890 c!686742) b!3956496))

(assert (= (and d!1172890 (not c!686742)) b!3956497))

(declare-fun m!4525445 () Bool)

(assert (=> b!3956497 m!4525445))

(assert (=> b!3956459 d!1172890))

(declare-fun d!1172892 () Bool)

(declare-fun lt!1383337 () Int)

(assert (=> d!1172892 (>= lt!1383337 0)))

(declare-fun e!2449470 () Int)

(assert (=> d!1172892 (= lt!1383337 e!2449470)))

(declare-fun c!686743 () Bool)

(assert (=> d!1172892 (= c!686743 ((_ is Nil!42110) (_2!23831 (v!39363 lt!1383328))))))

(assert (=> d!1172892 (= (size!31543 (_2!23831 (v!39363 lt!1383328))) lt!1383337)))

(declare-fun b!3956498 () Bool)

(assert (=> b!3956498 (= e!2449470 0)))

(declare-fun b!3956499 () Bool)

(assert (=> b!3956499 (= e!2449470 (+ 1 (size!31543 (t!329393 (_2!23831 (v!39363 lt!1383328))))))))

(assert (= (and d!1172892 c!686743) b!3956498))

(assert (= (and d!1172892 (not c!686743)) b!3956499))

(declare-fun m!4525447 () Bool)

(assert (=> b!3956499 m!4525447))

(assert (=> b!3956459 d!1172892))

(declare-fun d!1172894 () Bool)

(assert (=> d!1172894 (= (inv!56338 (tag!7458 (rule!9570 (h!47531 suffixTokens!72)))) (= (mod (str.len (value!208676 (tag!7458 (rule!9570 (h!47531 suffixTokens!72))))) 2) 0))))

(assert (=> b!3956480 d!1172894))

(declare-fun d!1172896 () Bool)

(declare-fun res!1600966 () Bool)

(declare-fun e!2449473 () Bool)

(assert (=> d!1172896 (=> (not res!1600966) (not e!2449473))))

(declare-fun semiInverseModEq!2844 (Int Int) Bool)

(assert (=> d!1172896 (= res!1600966 (semiInverseModEq!2844 (toChars!8937 (transformation!6598 (rule!9570 (h!47531 suffixTokens!72)))) (toValue!9078 (transformation!6598 (rule!9570 (h!47531 suffixTokens!72))))))))

(assert (=> d!1172896 (= (inv!56341 (transformation!6598 (rule!9570 (h!47531 suffixTokens!72)))) e!2449473)))

(declare-fun b!3956502 () Bool)

(declare-fun equivClasses!2743 (Int Int) Bool)

(assert (=> b!3956502 (= e!2449473 (equivClasses!2743 (toChars!8937 (transformation!6598 (rule!9570 (h!47531 suffixTokens!72)))) (toValue!9078 (transformation!6598 (rule!9570 (h!47531 suffixTokens!72))))))))

(assert (= (and d!1172896 res!1600966) b!3956502))

(declare-fun m!4525449 () Bool)

(assert (=> d!1172896 m!4525449))

(declare-fun m!4525451 () Bool)

(assert (=> b!3956502 m!4525451))

(assert (=> b!3956480 d!1172896))

(declare-fun d!1172898 () Bool)

(assert (=> d!1172898 (= (isEmpty!25169 (tail!6129 prefixTokens!80)) ((_ is Nil!42111) (tail!6129 prefixTokens!80)))))

(assert (=> b!3956457 d!1172898))

(declare-fun d!1172900 () Bool)

(assert (=> d!1172900 (= (tail!6129 prefixTokens!80) (t!329394 prefixTokens!80))))

(assert (=> b!3956457 d!1172900))

(declare-fun b!3956511 () Bool)

(declare-fun e!2449478 () List!42234)

(assert (=> b!3956511 (= e!2449478 (_2!23831 lt!1383316))))

(declare-fun b!3956514 () Bool)

(declare-fun e!2449479 () Bool)

(declare-fun lt!1383340 () List!42234)

(assert (=> b!3956514 (= e!2449479 (or (not (= (_2!23831 lt!1383316) Nil!42110)) (= lt!1383340 lt!1383313)))))

(declare-fun b!3956512 () Bool)

(assert (=> b!3956512 (= e!2449478 (Cons!42110 (h!47530 lt!1383313) (++!10954 (t!329393 lt!1383313) (_2!23831 lt!1383316))))))

(declare-fun d!1172902 () Bool)

(assert (=> d!1172902 e!2449479))

(declare-fun res!1600971 () Bool)

(assert (=> d!1172902 (=> (not res!1600971) (not e!2449479))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!6392 (List!42234) (InoxSet C!23192))

(assert (=> d!1172902 (= res!1600971 (= (content!6392 lt!1383340) ((_ map or) (content!6392 lt!1383313) (content!6392 (_2!23831 lt!1383316)))))))

(assert (=> d!1172902 (= lt!1383340 e!2449478)))

(declare-fun c!686746 () Bool)

(assert (=> d!1172902 (= c!686746 ((_ is Nil!42110) lt!1383313))))

(assert (=> d!1172902 (= (++!10954 lt!1383313 (_2!23831 lt!1383316)) lt!1383340)))

(declare-fun b!3956513 () Bool)

(declare-fun res!1600972 () Bool)

(assert (=> b!3956513 (=> (not res!1600972) (not e!2449479))))

(assert (=> b!3956513 (= res!1600972 (= (size!31543 lt!1383340) (+ (size!31543 lt!1383313) (size!31543 (_2!23831 lt!1383316)))))))

(assert (= (and d!1172902 c!686746) b!3956511))

(assert (= (and d!1172902 (not c!686746)) b!3956512))

(assert (= (and d!1172902 res!1600971) b!3956513))

(assert (= (and b!3956513 res!1600972) b!3956514))

(declare-fun m!4525453 () Bool)

(assert (=> b!3956512 m!4525453))

(declare-fun m!4525455 () Bool)

(assert (=> d!1172902 m!4525455))

(declare-fun m!4525457 () Bool)

(assert (=> d!1172902 m!4525457))

(declare-fun m!4525459 () Bool)

(assert (=> d!1172902 m!4525459))

(declare-fun m!4525461 () Bool)

(assert (=> b!3956513 m!4525461))

(assert (=> b!3956513 m!4525389))

(assert (=> b!3956513 m!4525417))

(assert (=> b!3956478 d!1172902))

(declare-fun bm!285338 () Bool)

(declare-fun call!285343 () Option!9018)

(assert (=> bm!285338 (= call!285343 (maxPrefixOneRule!2541 thiss!20629 (h!47532 rules!2768) lt!1383331))))

(declare-fun d!1172904 () Bool)

(declare-fun e!2449488 () Bool)

(assert (=> d!1172904 e!2449488))

(declare-fun res!1600993 () Bool)

(assert (=> d!1172904 (=> res!1600993 e!2449488)))

(declare-fun lt!1383352 () Option!9018)

(declare-fun isEmpty!25171 (Option!9018) Bool)

(assert (=> d!1172904 (= res!1600993 (isEmpty!25171 lt!1383352))))

(declare-fun e!2449486 () Option!9018)

(assert (=> d!1172904 (= lt!1383352 e!2449486)))

(declare-fun c!686749 () Bool)

(assert (=> d!1172904 (= c!686749 (and ((_ is Cons!42112) rules!2768) ((_ is Nil!42112) (t!329395 rules!2768))))))

(declare-fun lt!1383353 () Unit!60602)

(declare-fun lt!1383355 () Unit!60602)

(assert (=> d!1172904 (= lt!1383353 lt!1383355)))

(assert (=> d!1172904 (isPrefix!3687 lt!1383331 lt!1383331)))

(declare-fun lemmaIsPrefixRefl!2333 (List!42234 List!42234) Unit!60602)

(assert (=> d!1172904 (= lt!1383355 (lemmaIsPrefixRefl!2333 lt!1383331 lt!1383331))))

(declare-fun rulesValidInductive!2391 (LexerInterface!6187 List!42236) Bool)

(assert (=> d!1172904 (rulesValidInductive!2391 thiss!20629 rules!2768)))

(assert (=> d!1172904 (= (maxPrefix!3491 thiss!20629 rules!2768 lt!1383331) lt!1383352)))

(declare-fun b!3956533 () Bool)

(declare-fun res!1600990 () Bool)

(declare-fun e!2449487 () Bool)

(assert (=> b!3956533 (=> (not res!1600990) (not e!2449487))))

(assert (=> b!3956533 (= res!1600990 (= (value!208677 (_1!23831 (get!13887 lt!1383352))) (apply!9829 (transformation!6598 (rule!9570 (_1!23831 (get!13887 lt!1383352)))) (seqFromList!4857 (originalCharacters!7198 (_1!23831 (get!13887 lt!1383352)))))))))

(declare-fun b!3956534 () Bool)

(assert (=> b!3956534 (= e!2449486 call!285343)))

(declare-fun b!3956535 () Bool)

(declare-fun res!1600989 () Bool)

(assert (=> b!3956535 (=> (not res!1600989) (not e!2449487))))

(assert (=> b!3956535 (= res!1600989 (= (list!15636 (charsOf!4416 (_1!23831 (get!13887 lt!1383352)))) (originalCharacters!7198 (_1!23831 (get!13887 lt!1383352)))))))

(declare-fun b!3956536 () Bool)

(declare-fun contains!8421 (List!42236 Rule!12996) Bool)

(assert (=> b!3956536 (= e!2449487 (contains!8421 rules!2768 (rule!9570 (_1!23831 (get!13887 lt!1383352)))))))

(declare-fun b!3956537 () Bool)

(declare-fun res!1600992 () Bool)

(assert (=> b!3956537 (=> (not res!1600992) (not e!2449487))))

(assert (=> b!3956537 (= res!1600992 (< (size!31543 (_2!23831 (get!13887 lt!1383352))) (size!31543 lt!1383331)))))

(declare-fun b!3956538 () Bool)

(assert (=> b!3956538 (= e!2449488 e!2449487)))

(declare-fun res!1600987 () Bool)

(assert (=> b!3956538 (=> (not res!1600987) (not e!2449487))))

(declare-fun isDefined!6992 (Option!9018) Bool)

(assert (=> b!3956538 (= res!1600987 (isDefined!6992 lt!1383352))))

(declare-fun b!3956539 () Bool)

(declare-fun res!1600991 () Bool)

(assert (=> b!3956539 (=> (not res!1600991) (not e!2449487))))

(assert (=> b!3956539 (= res!1600991 (matchR!5524 (regex!6598 (rule!9570 (_1!23831 (get!13887 lt!1383352)))) (list!15636 (charsOf!4416 (_1!23831 (get!13887 lt!1383352))))))))

(declare-fun b!3956540 () Bool)

(declare-fun res!1600988 () Bool)

(assert (=> b!3956540 (=> (not res!1600988) (not e!2449487))))

(assert (=> b!3956540 (= res!1600988 (= (++!10954 (list!15636 (charsOf!4416 (_1!23831 (get!13887 lt!1383352)))) (_2!23831 (get!13887 lt!1383352))) lt!1383331))))

(declare-fun b!3956541 () Bool)

(declare-fun lt!1383351 () Option!9018)

(declare-fun lt!1383354 () Option!9018)

(assert (=> b!3956541 (= e!2449486 (ite (and ((_ is None!9017) lt!1383351) ((_ is None!9017) lt!1383354)) None!9017 (ite ((_ is None!9017) lt!1383354) lt!1383351 (ite ((_ is None!9017) lt!1383351) lt!1383354 (ite (>= (size!31542 (_1!23831 (v!39363 lt!1383351))) (size!31542 (_1!23831 (v!39363 lt!1383354)))) lt!1383351 lt!1383354)))))))

(assert (=> b!3956541 (= lt!1383351 call!285343)))

(assert (=> b!3956541 (= lt!1383354 (maxPrefix!3491 thiss!20629 (t!329395 rules!2768) lt!1383331))))

(assert (= (and d!1172904 c!686749) b!3956534))

(assert (= (and d!1172904 (not c!686749)) b!3956541))

(assert (= (or b!3956534 b!3956541) bm!285338))

(assert (= (and d!1172904 (not res!1600993)) b!3956538))

(assert (= (and b!3956538 res!1600987) b!3956535))

(assert (= (and b!3956535 res!1600989) b!3956537))

(assert (= (and b!3956537 res!1600992) b!3956540))

(assert (= (and b!3956540 res!1600988) b!3956533))

(assert (= (and b!3956533 res!1600990) b!3956539))

(assert (= (and b!3956539 res!1600991) b!3956536))

(declare-fun m!4525463 () Bool)

(assert (=> b!3956539 m!4525463))

(declare-fun m!4525465 () Bool)

(assert (=> b!3956539 m!4525465))

(assert (=> b!3956539 m!4525465))

(declare-fun m!4525467 () Bool)

(assert (=> b!3956539 m!4525467))

(assert (=> b!3956539 m!4525467))

(declare-fun m!4525469 () Bool)

(assert (=> b!3956539 m!4525469))

(assert (=> b!3956540 m!4525463))

(assert (=> b!3956540 m!4525465))

(assert (=> b!3956540 m!4525465))

(assert (=> b!3956540 m!4525467))

(assert (=> b!3956540 m!4525467))

(declare-fun m!4525471 () Bool)

(assert (=> b!3956540 m!4525471))

(declare-fun m!4525473 () Bool)

(assert (=> b!3956538 m!4525473))

(declare-fun m!4525475 () Bool)

(assert (=> d!1172904 m!4525475))

(declare-fun m!4525477 () Bool)

(assert (=> d!1172904 m!4525477))

(declare-fun m!4525479 () Bool)

(assert (=> d!1172904 m!4525479))

(declare-fun m!4525481 () Bool)

(assert (=> d!1172904 m!4525481))

(declare-fun m!4525483 () Bool)

(assert (=> b!3956541 m!4525483))

(assert (=> b!3956535 m!4525463))

(assert (=> b!3956535 m!4525465))

(assert (=> b!3956535 m!4525465))

(assert (=> b!3956535 m!4525467))

(assert (=> b!3956533 m!4525463))

(declare-fun m!4525485 () Bool)

(assert (=> b!3956533 m!4525485))

(assert (=> b!3956533 m!4525485))

(declare-fun m!4525487 () Bool)

(assert (=> b!3956533 m!4525487))

(declare-fun m!4525489 () Bool)

(assert (=> bm!285338 m!4525489))

(assert (=> b!3956537 m!4525463))

(declare-fun m!4525491 () Bool)

(assert (=> b!3956537 m!4525491))

(assert (=> b!3956537 m!4525351))

(assert (=> b!3956536 m!4525463))

(declare-fun m!4525493 () Bool)

(assert (=> b!3956536 m!4525493))

(assert (=> b!3956479 d!1172904))

(declare-fun d!1172906 () Bool)

(assert (=> d!1172906 (= (inv!56338 (tag!7458 (h!47532 rules!2768))) (= (mod (str.len (value!208676 (tag!7458 (h!47532 rules!2768)))) 2) 0))))

(assert (=> b!3956477 d!1172906))

(declare-fun d!1172908 () Bool)

(declare-fun res!1600994 () Bool)

(declare-fun e!2449489 () Bool)

(assert (=> d!1172908 (=> (not res!1600994) (not e!2449489))))

(assert (=> d!1172908 (= res!1600994 (semiInverseModEq!2844 (toChars!8937 (transformation!6598 (h!47532 rules!2768))) (toValue!9078 (transformation!6598 (h!47532 rules!2768)))))))

(assert (=> d!1172908 (= (inv!56341 (transformation!6598 (h!47532 rules!2768))) e!2449489)))

(declare-fun b!3956542 () Bool)

(assert (=> b!3956542 (= e!2449489 (equivClasses!2743 (toChars!8937 (transformation!6598 (h!47532 rules!2768))) (toValue!9078 (transformation!6598 (h!47532 rules!2768)))))))

(assert (= (and d!1172908 res!1600994) b!3956542))

(declare-fun m!4525495 () Bool)

(assert (=> d!1172908 m!4525495))

(declare-fun m!4525497 () Bool)

(assert (=> b!3956542 m!4525497))

(assert (=> b!3956477 d!1172908))

(declare-fun d!1172910 () Bool)

(assert (=> d!1172910 (isPrefix!3687 lt!1383313 (++!10954 lt!1383313 (_2!23831 (v!39363 lt!1383328))))))

(declare-fun lt!1383358 () Unit!60602)

(declare-fun choose!23614 (List!42234 List!42234) Unit!60602)

(assert (=> d!1172910 (= lt!1383358 (choose!23614 lt!1383313 (_2!23831 (v!39363 lt!1383328))))))

(assert (=> d!1172910 (= (lemmaConcatTwoListThenFirstIsPrefix!2546 lt!1383313 (_2!23831 (v!39363 lt!1383328))) lt!1383358)))

(declare-fun bs!587175 () Bool)

(assert (= bs!587175 d!1172910))

(assert (=> bs!587175 m!4525391))

(assert (=> bs!587175 m!4525391))

(declare-fun m!4525499 () Bool)

(assert (=> bs!587175 m!4525499))

(declare-fun m!4525501 () Bool)

(assert (=> bs!587175 m!4525501))

(assert (=> b!3956456 d!1172910))

(declare-fun d!1172912 () Bool)

(assert (=> d!1172912 (ruleValid!2540 thiss!20629 (rule!9570 (_1!23831 (v!39363 lt!1383328))))))

(declare-fun lt!1383361 () Unit!60602)

(declare-fun choose!23615 (LexerInterface!6187 Rule!12996 List!42236) Unit!60602)

(assert (=> d!1172912 (= lt!1383361 (choose!23615 thiss!20629 (rule!9570 (_1!23831 (v!39363 lt!1383328))) rules!2768))))

(assert (=> d!1172912 (contains!8421 rules!2768 (rule!9570 (_1!23831 (v!39363 lt!1383328))))))

(assert (=> d!1172912 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1616 thiss!20629 (rule!9570 (_1!23831 (v!39363 lt!1383328))) rules!2768) lt!1383361)))

(declare-fun bs!587176 () Bool)

(assert (= bs!587176 d!1172912))

(assert (=> bs!587176 m!4525385))

(declare-fun m!4525503 () Bool)

(assert (=> bs!587176 m!4525503))

(declare-fun m!4525505 () Bool)

(assert (=> bs!587176 m!4525505))

(assert (=> b!3956456 d!1172912))

(declare-fun d!1172914 () Bool)

(declare-fun list!15637 (Conc!12809) List!42234)

(assert (=> d!1172914 (= (list!15636 (charsOf!4416 (_1!23831 (v!39363 lt!1383328)))) (list!15637 (c!686738 (charsOf!4416 (_1!23831 (v!39363 lt!1383328))))))))

(declare-fun bs!587177 () Bool)

(assert (= bs!587177 d!1172914))

(declare-fun m!4525507 () Bool)

(assert (=> bs!587177 m!4525507))

(assert (=> b!3956456 d!1172914))

(declare-fun d!1172916 () Bool)

(declare-fun lt!1383364 () List!42234)

(assert (=> d!1172916 (= (++!10954 lt!1383313 lt!1383364) lt!1383331)))

(declare-fun e!2449492 () List!42234)

(assert (=> d!1172916 (= lt!1383364 e!2449492)))

(declare-fun c!686752 () Bool)

(assert (=> d!1172916 (= c!686752 ((_ is Cons!42110) lt!1383313))))

(assert (=> d!1172916 (>= (size!31543 lt!1383331) (size!31543 lt!1383313))))

(assert (=> d!1172916 (= (getSuffix!2138 lt!1383331 lt!1383313) lt!1383364)))

(declare-fun b!3956547 () Bool)

(declare-fun tail!6130 (List!42234) List!42234)

(assert (=> b!3956547 (= e!2449492 (getSuffix!2138 (tail!6130 lt!1383331) (t!329393 lt!1383313)))))

(declare-fun b!3956548 () Bool)

(assert (=> b!3956548 (= e!2449492 lt!1383331)))

(assert (= (and d!1172916 c!686752) b!3956547))

(assert (= (and d!1172916 (not c!686752)) b!3956548))

(declare-fun m!4525509 () Bool)

(assert (=> d!1172916 m!4525509))

(assert (=> d!1172916 m!4525351))

(assert (=> d!1172916 m!4525389))

(declare-fun m!4525511 () Bool)

(assert (=> b!3956547 m!4525511))

(assert (=> b!3956547 m!4525511))

(declare-fun m!4525513 () Bool)

(assert (=> b!3956547 m!4525513))

(assert (=> b!3956456 d!1172916))

(declare-fun b!3956601 () Bool)

(declare-fun e!2449521 () tuple2!41396)

(declare-fun lt!1383374 () Option!9018)

(declare-fun lt!1383376 () tuple2!41396)

(assert (=> b!3956601 (= e!2449521 (tuple2!41397 (Cons!42111 (_1!23831 (v!39363 lt!1383374)) (_1!23832 lt!1383376)) (_2!23832 lt!1383376)))))

(assert (=> b!3956601 (= lt!1383376 (lexList!1955 thiss!20629 rules!2768 (_2!23831 (v!39363 lt!1383374))))))

(declare-fun b!3956603 () Bool)

(declare-fun e!2449522 () Bool)

(declare-fun lt!1383375 () tuple2!41396)

(assert (=> b!3956603 (= e!2449522 (= (_2!23832 lt!1383375) (_2!23831 (v!39363 lt!1383328))))))

(declare-fun b!3956604 () Bool)

(assert (=> b!3956604 (= e!2449521 (tuple2!41397 Nil!42111 (_2!23831 (v!39363 lt!1383328))))))

(declare-fun b!3956605 () Bool)

(declare-fun e!2449520 () Bool)

(assert (=> b!3956605 (= e!2449520 (not (isEmpty!25169 (_1!23832 lt!1383375))))))

(declare-fun d!1172918 () Bool)

(assert (=> d!1172918 e!2449522))

(declare-fun c!686767 () Bool)

(declare-fun size!31544 (List!42235) Int)

(assert (=> d!1172918 (= c!686767 (> (size!31544 (_1!23832 lt!1383375)) 0))))

(assert (=> d!1172918 (= lt!1383375 e!2449521)))

(declare-fun c!686766 () Bool)

(assert (=> d!1172918 (= c!686766 ((_ is Some!9017) lt!1383374))))

(assert (=> d!1172918 (= lt!1383374 (maxPrefix!3491 thiss!20629 rules!2768 (_2!23831 (v!39363 lt!1383328))))))

(assert (=> d!1172918 (= (lexList!1955 thiss!20629 rules!2768 (_2!23831 (v!39363 lt!1383328))) lt!1383375)))

(declare-fun b!3956602 () Bool)

(assert (=> b!3956602 (= e!2449522 e!2449520)))

(declare-fun res!1601024 () Bool)

(assert (=> b!3956602 (= res!1601024 (< (size!31543 (_2!23832 lt!1383375)) (size!31543 (_2!23831 (v!39363 lt!1383328)))))))

(assert (=> b!3956602 (=> (not res!1601024) (not e!2449520))))

(assert (= (and d!1172918 c!686766) b!3956601))

(assert (= (and d!1172918 (not c!686766)) b!3956604))

(assert (= (and d!1172918 c!686767) b!3956602))

(assert (= (and d!1172918 (not c!686767)) b!3956603))

(assert (= (and b!3956602 res!1601024) b!3956605))

(declare-fun m!4525531 () Bool)

(assert (=> b!3956601 m!4525531))

(declare-fun m!4525533 () Bool)

(assert (=> b!3956605 m!4525533))

(declare-fun m!4525535 () Bool)

(assert (=> d!1172918 m!4525535))

(declare-fun m!4525537 () Bool)

(assert (=> d!1172918 m!4525537))

(declare-fun m!4525539 () Bool)

(assert (=> b!3956602 m!4525539))

(assert (=> b!3956602 m!4525431))

(assert (=> b!3956456 d!1172918))

(declare-fun d!1172924 () Bool)

(declare-fun lt!1383377 () Int)

(assert (=> d!1172924 (>= lt!1383377 0)))

(declare-fun e!2449523 () Int)

(assert (=> d!1172924 (= lt!1383377 e!2449523)))

(declare-fun c!686768 () Bool)

(assert (=> d!1172924 (= c!686768 ((_ is Nil!42110) lt!1383313))))

(assert (=> d!1172924 (= (size!31543 lt!1383313) lt!1383377)))

(declare-fun b!3956606 () Bool)

(assert (=> b!3956606 (= e!2449523 0)))

(declare-fun b!3956607 () Bool)

(assert (=> b!3956607 (= e!2449523 (+ 1 (size!31543 (t!329393 lt!1383313))))))

(assert (= (and d!1172924 c!686768) b!3956606))

(assert (= (and d!1172924 (not c!686768)) b!3956607))

(declare-fun m!4525541 () Bool)

(assert (=> b!3956607 m!4525541))

(assert (=> b!3956456 d!1172924))

(declare-fun d!1172926 () Bool)

(assert (=> d!1172926 (= (size!31542 (_1!23831 (v!39363 lt!1383328))) (size!31543 (originalCharacters!7198 (_1!23831 (v!39363 lt!1383328)))))))

(declare-fun Unit!60604 () Unit!60602)

(assert (=> d!1172926 (= (lemmaCharactersSize!1251 (_1!23831 (v!39363 lt!1383328))) Unit!60604)))

(declare-fun bs!587178 () Bool)

(assert (= bs!587178 d!1172926))

(assert (=> bs!587178 m!4525341))

(assert (=> b!3956456 d!1172926))

(declare-fun d!1172928 () Bool)

(declare-fun dynLambda!18015 (Int BalanceConc!25212) TokenValue!6828)

(assert (=> d!1172928 (= (apply!9829 (transformation!6598 (rule!9570 (_1!23831 (v!39363 lt!1383328)))) (seqFromList!4857 lt!1383313)) (dynLambda!18015 (toValue!9078 (transformation!6598 (rule!9570 (_1!23831 (v!39363 lt!1383328))))) (seqFromList!4857 lt!1383313)))))

(declare-fun b_lambda!115761 () Bool)

(assert (=> (not b_lambda!115761) (not d!1172928)))

(declare-fun tb!238431 () Bool)

(declare-fun t!329403 () Bool)

(assert (=> (and b!3956473 (= (toValue!9078 (transformation!6598 (h!47532 rules!2768))) (toValue!9078 (transformation!6598 (rule!9570 (_1!23831 (v!39363 lt!1383328)))))) t!329403) tb!238431))

(declare-fun result!288722 () Bool)

(assert (=> tb!238431 (= result!288722 (inv!21 (dynLambda!18015 (toValue!9078 (transformation!6598 (rule!9570 (_1!23831 (v!39363 lt!1383328))))) (seqFromList!4857 lt!1383313))))))

(declare-fun m!4525543 () Bool)

(assert (=> tb!238431 m!4525543))

(assert (=> d!1172928 t!329403))

(declare-fun b_and!303601 () Bool)

(assert (= b_and!303583 (and (=> t!329403 result!288722) b_and!303601)))

(declare-fun tb!238433 () Bool)

(declare-fun t!329405 () Bool)

(assert (=> (and b!3956464 (= (toValue!9078 (transformation!6598 (rule!9570 (h!47531 prefixTokens!80)))) (toValue!9078 (transformation!6598 (rule!9570 (_1!23831 (v!39363 lt!1383328)))))) t!329405) tb!238433))

(declare-fun result!288726 () Bool)

(assert (= result!288726 result!288722))

(assert (=> d!1172928 t!329405))

(declare-fun b_and!303603 () Bool)

(assert (= b_and!303587 (and (=> t!329405 result!288726) b_and!303603)))

(declare-fun t!329407 () Bool)

(declare-fun tb!238435 () Bool)

(assert (=> (and b!3956465 (= (toValue!9078 (transformation!6598 (rule!9570 (h!47531 suffixTokens!72)))) (toValue!9078 (transformation!6598 (rule!9570 (_1!23831 (v!39363 lt!1383328)))))) t!329407) tb!238435))

(declare-fun result!288728 () Bool)

(assert (= result!288728 result!288722))

(assert (=> d!1172928 t!329407))

(declare-fun b_and!303605 () Bool)

(assert (= b_and!303591 (and (=> t!329407 result!288728) b_and!303605)))

(assert (=> d!1172928 m!4525377))

(declare-fun m!4525545 () Bool)

(assert (=> d!1172928 m!4525545))

(assert (=> b!3956456 d!1172928))

(declare-fun d!1172930 () Bool)

(declare-fun fromListB!2245 (List!42234) BalanceConc!25212)

(assert (=> d!1172930 (= (seqFromList!4857 lt!1383313) (fromListB!2245 lt!1383313))))

(declare-fun bs!587179 () Bool)

(assert (= bs!587179 d!1172930))

(declare-fun m!4525547 () Bool)

(assert (=> bs!587179 m!4525547))

(assert (=> b!3956456 d!1172930))

(declare-fun d!1172932 () Bool)

(declare-fun res!1601029 () Bool)

(declare-fun e!2449529 () Bool)

(assert (=> d!1172932 (=> (not res!1601029) (not e!2449529))))

(declare-fun validRegex!5240 (Regex!11503) Bool)

(assert (=> d!1172932 (= res!1601029 (validRegex!5240 (regex!6598 (rule!9570 (_1!23831 (v!39363 lt!1383328))))))))

(assert (=> d!1172932 (= (ruleValid!2540 thiss!20629 (rule!9570 (_1!23831 (v!39363 lt!1383328)))) e!2449529)))

(declare-fun b!3956614 () Bool)

(declare-fun res!1601030 () Bool)

(assert (=> b!3956614 (=> (not res!1601030) (not e!2449529))))

(declare-fun nullable!4041 (Regex!11503) Bool)

(assert (=> b!3956614 (= res!1601030 (not (nullable!4041 (regex!6598 (rule!9570 (_1!23831 (v!39363 lt!1383328)))))))))

(declare-fun b!3956615 () Bool)

(assert (=> b!3956615 (= e!2449529 (not (= (tag!7458 (rule!9570 (_1!23831 (v!39363 lt!1383328)))) (String!47859 ""))))))

(assert (= (and d!1172932 res!1601029) b!3956614))

(assert (= (and b!3956614 res!1601030) b!3956615))

(declare-fun m!4525549 () Bool)

(assert (=> d!1172932 m!4525549))

(declare-fun m!4525551 () Bool)

(assert (=> b!3956614 m!4525551))

(assert (=> b!3956456 d!1172932))

(declare-fun b!3956625 () Bool)

(declare-fun res!1601039 () Bool)

(declare-fun e!2449536 () Bool)

(assert (=> b!3956625 (=> (not res!1601039) (not e!2449536))))

(declare-fun head!8405 (List!42234) C!23192)

(assert (=> b!3956625 (= res!1601039 (= (head!8405 lt!1383313) (head!8405 lt!1383329)))))

(declare-fun b!3956624 () Bool)

(declare-fun e!2449537 () Bool)

(assert (=> b!3956624 (= e!2449537 e!2449536)))

(declare-fun res!1601040 () Bool)

(assert (=> b!3956624 (=> (not res!1601040) (not e!2449536))))

(assert (=> b!3956624 (= res!1601040 (not ((_ is Nil!42110) lt!1383329)))))

(declare-fun b!3956626 () Bool)

(assert (=> b!3956626 (= e!2449536 (isPrefix!3687 (tail!6130 lt!1383313) (tail!6130 lt!1383329)))))

(declare-fun d!1172934 () Bool)

(declare-fun e!2449538 () Bool)

(assert (=> d!1172934 e!2449538))

(declare-fun res!1601041 () Bool)

(assert (=> d!1172934 (=> res!1601041 e!2449538)))

(declare-fun lt!1383380 () Bool)

(assert (=> d!1172934 (= res!1601041 (not lt!1383380))))

(assert (=> d!1172934 (= lt!1383380 e!2449537)))

(declare-fun res!1601042 () Bool)

(assert (=> d!1172934 (=> res!1601042 e!2449537)))

(assert (=> d!1172934 (= res!1601042 ((_ is Nil!42110) lt!1383313))))

(assert (=> d!1172934 (= (isPrefix!3687 lt!1383313 lt!1383329) lt!1383380)))

(declare-fun b!3956627 () Bool)

(assert (=> b!3956627 (= e!2449538 (>= (size!31543 lt!1383329) (size!31543 lt!1383313)))))

(assert (= (and d!1172934 (not res!1601042)) b!3956624))

(assert (= (and b!3956624 res!1601040) b!3956625))

(assert (= (and b!3956625 res!1601039) b!3956626))

(assert (= (and d!1172934 (not res!1601041)) b!3956627))

(declare-fun m!4525553 () Bool)

(assert (=> b!3956625 m!4525553))

(declare-fun m!4525555 () Bool)

(assert (=> b!3956625 m!4525555))

(declare-fun m!4525557 () Bool)

(assert (=> b!3956626 m!4525557))

(declare-fun m!4525559 () Bool)

(assert (=> b!3956626 m!4525559))

(assert (=> b!3956626 m!4525557))

(assert (=> b!3956626 m!4525559))

(declare-fun m!4525561 () Bool)

(assert (=> b!3956626 m!4525561))

(declare-fun m!4525563 () Bool)

(assert (=> b!3956627 m!4525563))

(assert (=> b!3956627 m!4525389))

(assert (=> b!3956456 d!1172934))

(declare-fun d!1172936 () Bool)

(declare-fun lt!1383383 () BalanceConc!25212)

(assert (=> d!1172936 (= (list!15636 lt!1383383) (originalCharacters!7198 (_1!23831 (v!39363 lt!1383328))))))

(assert (=> d!1172936 (= lt!1383383 (dynLambda!18014 (toChars!8937 (transformation!6598 (rule!9570 (_1!23831 (v!39363 lt!1383328))))) (value!208677 (_1!23831 (v!39363 lt!1383328)))))))

(assert (=> d!1172936 (= (charsOf!4416 (_1!23831 (v!39363 lt!1383328))) lt!1383383)))

(declare-fun b_lambda!115763 () Bool)

(assert (=> (not b_lambda!115763) (not d!1172936)))

(declare-fun t!329409 () Bool)

(declare-fun tb!238437 () Bool)

(assert (=> (and b!3956473 (= (toChars!8937 (transformation!6598 (h!47532 rules!2768))) (toChars!8937 (transformation!6598 (rule!9570 (_1!23831 (v!39363 lt!1383328)))))) t!329409) tb!238437))

(declare-fun b!3956628 () Bool)

(declare-fun e!2449539 () Bool)

(declare-fun tp!1205736 () Bool)

(assert (=> b!3956628 (= e!2449539 (and (inv!56343 (c!686738 (dynLambda!18014 (toChars!8937 (transformation!6598 (rule!9570 (_1!23831 (v!39363 lt!1383328))))) (value!208677 (_1!23831 (v!39363 lt!1383328)))))) tp!1205736))))

(declare-fun result!288730 () Bool)

(assert (=> tb!238437 (= result!288730 (and (inv!56344 (dynLambda!18014 (toChars!8937 (transformation!6598 (rule!9570 (_1!23831 (v!39363 lt!1383328))))) (value!208677 (_1!23831 (v!39363 lt!1383328))))) e!2449539))))

(assert (= tb!238437 b!3956628))

(declare-fun m!4525565 () Bool)

(assert (=> b!3956628 m!4525565))

(declare-fun m!4525567 () Bool)

(assert (=> tb!238437 m!4525567))

(assert (=> d!1172936 t!329409))

(declare-fun b_and!303607 () Bool)

(assert (= b_and!303595 (and (=> t!329409 result!288730) b_and!303607)))

(declare-fun tb!238439 () Bool)

(declare-fun t!329411 () Bool)

(assert (=> (and b!3956464 (= (toChars!8937 (transformation!6598 (rule!9570 (h!47531 prefixTokens!80)))) (toChars!8937 (transformation!6598 (rule!9570 (_1!23831 (v!39363 lt!1383328)))))) t!329411) tb!238439))

(declare-fun result!288732 () Bool)

(assert (= result!288732 result!288730))

(assert (=> d!1172936 t!329411))

(declare-fun b_and!303609 () Bool)

(assert (= b_and!303597 (and (=> t!329411 result!288732) b_and!303609)))

(declare-fun tb!238441 () Bool)

(declare-fun t!329413 () Bool)

(assert (=> (and b!3956465 (= (toChars!8937 (transformation!6598 (rule!9570 (h!47531 suffixTokens!72)))) (toChars!8937 (transformation!6598 (rule!9570 (_1!23831 (v!39363 lt!1383328)))))) t!329413) tb!238441))

(declare-fun result!288734 () Bool)

(assert (= result!288734 result!288730))

(assert (=> d!1172936 t!329413))

(declare-fun b_and!303611 () Bool)

(assert (= b_and!303599 (and (=> t!329413 result!288734) b_and!303611)))

(declare-fun m!4525569 () Bool)

(assert (=> d!1172936 m!4525569))

(declare-fun m!4525571 () Bool)

(assert (=> d!1172936 m!4525571))

(assert (=> b!3956456 d!1172936))

(declare-fun d!1172938 () Bool)

(assert (=> d!1172938 (= (_2!23831 (v!39363 lt!1383328)) lt!1383330)))

(declare-fun lt!1383386 () Unit!60602)

(declare-fun choose!23616 (List!42234 List!42234 List!42234 List!42234 List!42234) Unit!60602)

(assert (=> d!1172938 (= lt!1383386 (choose!23616 lt!1383313 (_2!23831 (v!39363 lt!1383328)) lt!1383313 lt!1383330 lt!1383331))))

(assert (=> d!1172938 (isPrefix!3687 lt!1383313 lt!1383331)))

(assert (=> d!1172938 (= (lemmaSamePrefixThenSameSuffix!1896 lt!1383313 (_2!23831 (v!39363 lt!1383328)) lt!1383313 lt!1383330 lt!1383331) lt!1383386)))

(declare-fun bs!587180 () Bool)

(assert (= bs!587180 d!1172938))

(declare-fun m!4525573 () Bool)

(assert (=> bs!587180 m!4525573))

(declare-fun m!4525575 () Bool)

(assert (=> bs!587180 m!4525575))

(assert (=> b!3956456 d!1172938))

(declare-fun b!3956629 () Bool)

(declare-fun e!2449540 () List!42234)

(assert (=> b!3956629 (= e!2449540 (_2!23831 (v!39363 lt!1383328)))))

(declare-fun e!2449541 () Bool)

(declare-fun b!3956632 () Bool)

(declare-fun lt!1383387 () List!42234)

(assert (=> b!3956632 (= e!2449541 (or (not (= (_2!23831 (v!39363 lt!1383328)) Nil!42110)) (= lt!1383387 lt!1383313)))))

(declare-fun b!3956630 () Bool)

(assert (=> b!3956630 (= e!2449540 (Cons!42110 (h!47530 lt!1383313) (++!10954 (t!329393 lt!1383313) (_2!23831 (v!39363 lt!1383328)))))))

(declare-fun d!1172940 () Bool)

(assert (=> d!1172940 e!2449541))

(declare-fun res!1601043 () Bool)

(assert (=> d!1172940 (=> (not res!1601043) (not e!2449541))))

(assert (=> d!1172940 (= res!1601043 (= (content!6392 lt!1383387) ((_ map or) (content!6392 lt!1383313) (content!6392 (_2!23831 (v!39363 lt!1383328))))))))

(assert (=> d!1172940 (= lt!1383387 e!2449540)))

(declare-fun c!686769 () Bool)

(assert (=> d!1172940 (= c!686769 ((_ is Nil!42110) lt!1383313))))

(assert (=> d!1172940 (= (++!10954 lt!1383313 (_2!23831 (v!39363 lt!1383328))) lt!1383387)))

(declare-fun b!3956631 () Bool)

(declare-fun res!1601044 () Bool)

(assert (=> b!3956631 (=> (not res!1601044) (not e!2449541))))

(assert (=> b!3956631 (= res!1601044 (= (size!31543 lt!1383387) (+ (size!31543 lt!1383313) (size!31543 (_2!23831 (v!39363 lt!1383328))))))))

(assert (= (and d!1172940 c!686769) b!3956629))

(assert (= (and d!1172940 (not c!686769)) b!3956630))

(assert (= (and d!1172940 res!1601043) b!3956631))

(assert (= (and b!3956631 res!1601044) b!3956632))

(declare-fun m!4525577 () Bool)

(assert (=> b!3956630 m!4525577))

(declare-fun m!4525579 () Bool)

(assert (=> d!1172940 m!4525579))

(assert (=> d!1172940 m!4525457))

(declare-fun m!4525581 () Bool)

(assert (=> d!1172940 m!4525581))

(declare-fun m!4525583 () Bool)

(assert (=> b!3956631 m!4525583))

(assert (=> b!3956631 m!4525389))

(assert (=> b!3956631 m!4525431))

(assert (=> b!3956456 d!1172940))

(declare-fun d!1172942 () Bool)

(assert (=> d!1172942 (= (head!8403 prefixTokens!80) (h!47531 prefixTokens!80))))

(assert (=> b!3956444 d!1172942))

(declare-fun d!1172944 () Bool)

(assert (=> d!1172944 (= (get!13887 lt!1383328) (v!39363 lt!1383328))))

(assert (=> b!3956444 d!1172944))

(declare-fun d!1172946 () Bool)

(declare-fun lt!1383388 () Int)

(assert (=> d!1172946 (>= lt!1383388 0)))

(declare-fun e!2449542 () Int)

(assert (=> d!1172946 (= lt!1383388 e!2449542)))

(declare-fun c!686770 () Bool)

(assert (=> d!1172946 (= c!686770 ((_ is Nil!42110) lt!1383331))))

(assert (=> d!1172946 (= (size!31543 lt!1383331) lt!1383388)))

(declare-fun b!3956633 () Bool)

(assert (=> b!3956633 (= e!2449542 0)))

(declare-fun b!3956634 () Bool)

(assert (=> b!3956634 (= e!2449542 (+ 1 (size!31543 (t!329393 lt!1383331))))))

(assert (= (and d!1172946 c!686770) b!3956633))

(assert (= (and d!1172946 (not c!686770)) b!3956634))

(declare-fun m!4525585 () Bool)

(assert (=> b!3956634 m!4525585))

(assert (=> b!3956462 d!1172946))

(declare-fun d!1172948 () Bool)

(assert (=> d!1172948 (= (isEmpty!25169 prefixTokens!80) ((_ is Nil!42111) prefixTokens!80))))

(assert (=> b!3956463 d!1172948))

(declare-fun d!1172950 () Bool)

(declare-fun lt!1383389 () Int)

(assert (=> d!1172950 (>= lt!1383389 0)))

(declare-fun e!2449543 () Int)

(assert (=> d!1172950 (= lt!1383389 e!2449543)))

(declare-fun c!686771 () Bool)

(assert (=> d!1172950 (= c!686771 ((_ is Nil!42110) prefix!426))))

(assert (=> d!1172950 (= (size!31543 prefix!426) lt!1383389)))

(declare-fun b!3956635 () Bool)

(assert (=> b!3956635 (= e!2449543 0)))

(declare-fun b!3956636 () Bool)

(assert (=> b!3956636 (= e!2449543 (+ 1 (size!31543 (t!329393 prefix!426))))))

(assert (= (and d!1172950 c!686771) b!3956635))

(assert (= (and d!1172950 (not c!686771)) b!3956636))

(declare-fun m!4525587 () Bool)

(assert (=> b!3956636 m!4525587))

(assert (=> b!3956471 d!1172950))

(declare-fun d!1172952 () Bool)

(declare-fun lt!1383390 () Int)

(assert (=> d!1172952 (>= lt!1383390 0)))

(declare-fun e!2449544 () Int)

(assert (=> d!1172952 (= lt!1383390 e!2449544)))

(declare-fun c!686772 () Bool)

(assert (=> d!1172952 (= c!686772 ((_ is Nil!42110) (originalCharacters!7198 (_1!23831 (v!39363 lt!1383328)))))))

(assert (=> d!1172952 (= (size!31543 (originalCharacters!7198 (_1!23831 (v!39363 lt!1383328)))) lt!1383390)))

(declare-fun b!3956637 () Bool)

(assert (=> b!3956637 (= e!2449544 0)))

(declare-fun b!3956638 () Bool)

(assert (=> b!3956638 (= e!2449544 (+ 1 (size!31543 (t!329393 (originalCharacters!7198 (_1!23831 (v!39363 lt!1383328)))))))))

(assert (= (and d!1172952 c!686772) b!3956637))

(assert (= (and d!1172952 (not c!686772)) b!3956638))

(declare-fun m!4525589 () Bool)

(assert (=> b!3956638 m!4525589))

(assert (=> b!3956469 d!1172952))

(declare-fun d!1172954 () Bool)

(declare-fun res!1601045 () Bool)

(declare-fun e!2449545 () Bool)

(assert (=> d!1172954 (=> (not res!1601045) (not e!2449545))))

(assert (=> d!1172954 (= res!1601045 (not (isEmpty!25168 (originalCharacters!7198 (h!47531 prefixTokens!80)))))))

(assert (=> d!1172954 (= (inv!56342 (h!47531 prefixTokens!80)) e!2449545)))

(declare-fun b!3956639 () Bool)

(declare-fun res!1601046 () Bool)

(assert (=> b!3956639 (=> (not res!1601046) (not e!2449545))))

(assert (=> b!3956639 (= res!1601046 (= (originalCharacters!7198 (h!47531 prefixTokens!80)) (list!15636 (dynLambda!18014 (toChars!8937 (transformation!6598 (rule!9570 (h!47531 prefixTokens!80)))) (value!208677 (h!47531 prefixTokens!80))))))))

(declare-fun b!3956640 () Bool)

(assert (=> b!3956640 (= e!2449545 (= (size!31542 (h!47531 prefixTokens!80)) (size!31543 (originalCharacters!7198 (h!47531 prefixTokens!80)))))))

(assert (= (and d!1172954 res!1601045) b!3956639))

(assert (= (and b!3956639 res!1601046) b!3956640))

(declare-fun b_lambda!115765 () Bool)

(assert (=> (not b_lambda!115765) (not b!3956639)))

(declare-fun tb!238443 () Bool)

(declare-fun t!329415 () Bool)

(assert (=> (and b!3956473 (= (toChars!8937 (transformation!6598 (h!47532 rules!2768))) (toChars!8937 (transformation!6598 (rule!9570 (h!47531 prefixTokens!80))))) t!329415) tb!238443))

(declare-fun b!3956641 () Bool)

(declare-fun e!2449546 () Bool)

(declare-fun tp!1205737 () Bool)

(assert (=> b!3956641 (= e!2449546 (and (inv!56343 (c!686738 (dynLambda!18014 (toChars!8937 (transformation!6598 (rule!9570 (h!47531 prefixTokens!80)))) (value!208677 (h!47531 prefixTokens!80))))) tp!1205737))))

(declare-fun result!288736 () Bool)

(assert (=> tb!238443 (= result!288736 (and (inv!56344 (dynLambda!18014 (toChars!8937 (transformation!6598 (rule!9570 (h!47531 prefixTokens!80)))) (value!208677 (h!47531 prefixTokens!80)))) e!2449546))))

(assert (= tb!238443 b!3956641))

(declare-fun m!4525591 () Bool)

(assert (=> b!3956641 m!4525591))

(declare-fun m!4525593 () Bool)

(assert (=> tb!238443 m!4525593))

(assert (=> b!3956639 t!329415))

(declare-fun b_and!303613 () Bool)

(assert (= b_and!303607 (and (=> t!329415 result!288736) b_and!303613)))

(declare-fun t!329417 () Bool)

(declare-fun tb!238445 () Bool)

(assert (=> (and b!3956464 (= (toChars!8937 (transformation!6598 (rule!9570 (h!47531 prefixTokens!80)))) (toChars!8937 (transformation!6598 (rule!9570 (h!47531 prefixTokens!80))))) t!329417) tb!238445))

(declare-fun result!288738 () Bool)

(assert (= result!288738 result!288736))

(assert (=> b!3956639 t!329417))

(declare-fun b_and!303615 () Bool)

(assert (= b_and!303609 (and (=> t!329417 result!288738) b_and!303615)))

(declare-fun tb!238447 () Bool)

(declare-fun t!329419 () Bool)

(assert (=> (and b!3956465 (= (toChars!8937 (transformation!6598 (rule!9570 (h!47531 suffixTokens!72)))) (toChars!8937 (transformation!6598 (rule!9570 (h!47531 prefixTokens!80))))) t!329419) tb!238447))

(declare-fun result!288740 () Bool)

(assert (= result!288740 result!288736))

(assert (=> b!3956639 t!329419))

(declare-fun b_and!303617 () Bool)

(assert (= b_and!303611 (and (=> t!329419 result!288740) b_and!303617)))

(declare-fun m!4525595 () Bool)

(assert (=> d!1172954 m!4525595))

(declare-fun m!4525597 () Bool)

(assert (=> b!3956639 m!4525597))

(assert (=> b!3956639 m!4525597))

(declare-fun m!4525599 () Bool)

(assert (=> b!3956639 m!4525599))

(declare-fun m!4525601 () Bool)

(assert (=> b!3956640 m!4525601))

(assert (=> b!3956448 d!1172954))

(declare-fun d!1172956 () Bool)

(assert (=> d!1172956 (= (inv!56338 (tag!7458 (rule!9570 (h!47531 prefixTokens!80)))) (= (mod (str.len (value!208676 (tag!7458 (rule!9570 (h!47531 prefixTokens!80))))) 2) 0))))

(assert (=> b!3956446 d!1172956))

(declare-fun d!1172958 () Bool)

(declare-fun res!1601047 () Bool)

(declare-fun e!2449547 () Bool)

(assert (=> d!1172958 (=> (not res!1601047) (not e!2449547))))

(assert (=> d!1172958 (= res!1601047 (semiInverseModEq!2844 (toChars!8937 (transformation!6598 (rule!9570 (h!47531 prefixTokens!80)))) (toValue!9078 (transformation!6598 (rule!9570 (h!47531 prefixTokens!80))))))))

(assert (=> d!1172958 (= (inv!56341 (transformation!6598 (rule!9570 (h!47531 prefixTokens!80)))) e!2449547)))

(declare-fun b!3956642 () Bool)

(assert (=> b!3956642 (= e!2449547 (equivClasses!2743 (toChars!8937 (transformation!6598 (rule!9570 (h!47531 prefixTokens!80)))) (toValue!9078 (transformation!6598 (rule!9570 (h!47531 prefixTokens!80))))))))

(assert (= (and d!1172958 res!1601047) b!3956642))

(declare-fun m!4525603 () Bool)

(assert (=> d!1172958 m!4525603))

(declare-fun m!4525605 () Bool)

(assert (=> b!3956642 m!4525605))

(assert (=> b!3956446 d!1172958))

(declare-fun d!1172960 () Bool)

(assert (=> d!1172960 (= (isEmpty!25168 prefix!426) ((_ is Nil!42110) prefix!426))))

(assert (=> b!3956447 d!1172960))

(declare-fun b!3956671 () Bool)

(declare-fun res!1601068 () Bool)

(declare-fun e!2449563 () Bool)

(assert (=> b!3956671 (=> (not res!1601068) (not e!2449563))))

(assert (=> b!3956671 (= res!1601068 (isEmpty!25168 (tail!6130 lt!1383313)))))

(declare-fun b!3956672 () Bool)

(declare-fun e!2449564 () Bool)

(assert (=> b!3956672 (= e!2449564 (not (= (head!8405 lt!1383313) (c!686739 (regex!6598 (rule!9570 (_1!23831 (v!39363 lt!1383328))))))))))

(declare-fun b!3956673 () Bool)

(declare-fun e!2449567 () Bool)

(assert (=> b!3956673 (= e!2449567 e!2449564)))

(declare-fun res!1601067 () Bool)

(assert (=> b!3956673 (=> res!1601067 e!2449564)))

(declare-fun call!285349 () Bool)

(assert (=> b!3956673 (= res!1601067 call!285349)))

(declare-fun b!3956674 () Bool)

(declare-fun res!1601066 () Bool)

(assert (=> b!3956674 (=> (not res!1601066) (not e!2449563))))

(assert (=> b!3956674 (= res!1601066 (not call!285349))))

(declare-fun b!3956675 () Bool)

(declare-fun e!2449566 () Bool)

(declare-fun lt!1383393 () Bool)

(assert (=> b!3956675 (= e!2449566 (= lt!1383393 call!285349))))

(declare-fun b!3956676 () Bool)

(assert (=> b!3956676 (= e!2449563 (= (head!8405 lt!1383313) (c!686739 (regex!6598 (rule!9570 (_1!23831 (v!39363 lt!1383328)))))))))

(declare-fun b!3956677 () Bool)

(declare-fun e!2449568 () Bool)

(assert (=> b!3956677 (= e!2449566 e!2449568)))

(declare-fun c!686781 () Bool)

(assert (=> b!3956677 (= c!686781 ((_ is EmptyLang!11503) (regex!6598 (rule!9570 (_1!23831 (v!39363 lt!1383328))))))))

(declare-fun b!3956678 () Bool)

(assert (=> b!3956678 (= e!2449568 (not lt!1383393))))

(declare-fun d!1172962 () Bool)

(assert (=> d!1172962 e!2449566))

(declare-fun c!686780 () Bool)

(assert (=> d!1172962 (= c!686780 ((_ is EmptyExpr!11503) (regex!6598 (rule!9570 (_1!23831 (v!39363 lt!1383328))))))))

(declare-fun e!2449562 () Bool)

(assert (=> d!1172962 (= lt!1383393 e!2449562)))

(declare-fun c!686779 () Bool)

(assert (=> d!1172962 (= c!686779 (isEmpty!25168 lt!1383313))))

(assert (=> d!1172962 (validRegex!5240 (regex!6598 (rule!9570 (_1!23831 (v!39363 lt!1383328)))))))

(assert (=> d!1172962 (= (matchR!5524 (regex!6598 (rule!9570 (_1!23831 (v!39363 lt!1383328)))) lt!1383313) lt!1383393)))

(declare-fun b!3956679 () Bool)

(assert (=> b!3956679 (= e!2449562 (nullable!4041 (regex!6598 (rule!9570 (_1!23831 (v!39363 lt!1383328))))))))

(declare-fun b!3956680 () Bool)

(declare-fun e!2449565 () Bool)

(assert (=> b!3956680 (= e!2449565 e!2449567)))

(declare-fun res!1601064 () Bool)

(assert (=> b!3956680 (=> (not res!1601064) (not e!2449567))))

(assert (=> b!3956680 (= res!1601064 (not lt!1383393))))

(declare-fun b!3956681 () Bool)

(declare-fun derivativeStep!3465 (Regex!11503 C!23192) Regex!11503)

(assert (=> b!3956681 (= e!2449562 (matchR!5524 (derivativeStep!3465 (regex!6598 (rule!9570 (_1!23831 (v!39363 lt!1383328)))) (head!8405 lt!1383313)) (tail!6130 lt!1383313)))))

(declare-fun bm!285344 () Bool)

(assert (=> bm!285344 (= call!285349 (isEmpty!25168 lt!1383313))))

(declare-fun b!3956682 () Bool)

(declare-fun res!1601065 () Bool)

(assert (=> b!3956682 (=> res!1601065 e!2449565)))

(assert (=> b!3956682 (= res!1601065 (not ((_ is ElementMatch!11503) (regex!6598 (rule!9570 (_1!23831 (v!39363 lt!1383328)))))))))

(assert (=> b!3956682 (= e!2449568 e!2449565)))

(declare-fun b!3956683 () Bool)

(declare-fun res!1601071 () Bool)

(assert (=> b!3956683 (=> res!1601071 e!2449564)))

(assert (=> b!3956683 (= res!1601071 (not (isEmpty!25168 (tail!6130 lt!1383313))))))

(declare-fun b!3956684 () Bool)

(declare-fun res!1601070 () Bool)

(assert (=> b!3956684 (=> res!1601070 e!2449565)))

(assert (=> b!3956684 (= res!1601070 e!2449563)))

(declare-fun res!1601069 () Bool)

(assert (=> b!3956684 (=> (not res!1601069) (not e!2449563))))

(assert (=> b!3956684 (= res!1601069 lt!1383393)))

(assert (= (and d!1172962 c!686779) b!3956679))

(assert (= (and d!1172962 (not c!686779)) b!3956681))

(assert (= (and d!1172962 c!686780) b!3956675))

(assert (= (and d!1172962 (not c!686780)) b!3956677))

(assert (= (and b!3956677 c!686781) b!3956678))

(assert (= (and b!3956677 (not c!686781)) b!3956682))

(assert (= (and b!3956682 (not res!1601065)) b!3956684))

(assert (= (and b!3956684 res!1601069) b!3956674))

(assert (= (and b!3956674 res!1601066) b!3956671))

(assert (= (and b!3956671 res!1601068) b!3956676))

(assert (= (and b!3956684 (not res!1601070)) b!3956680))

(assert (= (and b!3956680 res!1601064) b!3956673))

(assert (= (and b!3956673 (not res!1601067)) b!3956683))

(assert (= (and b!3956683 (not res!1601071)) b!3956672))

(assert (= (or b!3956675 b!3956673 b!3956674) bm!285344))

(assert (=> b!3956671 m!4525557))

(assert (=> b!3956671 m!4525557))

(declare-fun m!4525607 () Bool)

(assert (=> b!3956671 m!4525607))

(assert (=> b!3956679 m!4525551))

(assert (=> b!3956681 m!4525553))

(assert (=> b!3956681 m!4525553))

(declare-fun m!4525609 () Bool)

(assert (=> b!3956681 m!4525609))

(assert (=> b!3956681 m!4525557))

(assert (=> b!3956681 m!4525609))

(assert (=> b!3956681 m!4525557))

(declare-fun m!4525611 () Bool)

(assert (=> b!3956681 m!4525611))

(assert (=> b!3956672 m!4525553))

(assert (=> b!3956676 m!4525553))

(assert (=> b!3956683 m!4525557))

(assert (=> b!3956683 m!4525557))

(assert (=> b!3956683 m!4525607))

(declare-fun m!4525613 () Bool)

(assert (=> d!1172962 m!4525613))

(assert (=> d!1172962 m!4525549))

(assert (=> bm!285344 m!4525613))

(assert (=> b!3956445 d!1172962))

(declare-fun b!3956774 () Bool)

(declare-fun e!2449616 () Bool)

(declare-fun e!2449614 () Bool)

(assert (=> b!3956774 (= e!2449616 e!2449614)))

(declare-fun res!1601136 () Bool)

(assert (=> b!3956774 (=> (not res!1601136) (not e!2449614))))

(declare-fun lt!1383431 () Option!9018)

(assert (=> b!3956774 (= res!1601136 (matchR!5524 (regex!6598 (rule!9570 (_1!23831 (v!39363 lt!1383328)))) (list!15636 (charsOf!4416 (_1!23831 (get!13887 lt!1383431))))))))

(declare-fun b!3956775 () Bool)

(declare-fun res!1601134 () Bool)

(assert (=> b!3956775 (=> (not res!1601134) (not e!2449614))))

(assert (=> b!3956775 (= res!1601134 (< (size!31543 (_2!23831 (get!13887 lt!1383431))) (size!31543 lt!1383331)))))

(declare-fun b!3956776 () Bool)

(declare-fun e!2449615 () Option!9018)

(assert (=> b!3956776 (= e!2449615 None!9017)))

(declare-fun b!3956777 () Bool)

(declare-fun res!1601131 () Bool)

(assert (=> b!3956777 (=> (not res!1601131) (not e!2449614))))

(assert (=> b!3956777 (= res!1601131 (= (++!10954 (list!15636 (charsOf!4416 (_1!23831 (get!13887 lt!1383431)))) (_2!23831 (get!13887 lt!1383431))) lt!1383331))))

(declare-fun b!3956778 () Bool)

(declare-datatypes ((tuple2!41400 0))(
  ( (tuple2!41401 (_1!23834 List!42234) (_2!23834 List!42234)) )
))
(declare-fun lt!1383433 () tuple2!41400)

(declare-fun size!31546 (BalanceConc!25212) Int)

(assert (=> b!3956778 (= e!2449615 (Some!9017 (tuple2!41395 (Token!12335 (apply!9829 (transformation!6598 (rule!9570 (_1!23831 (v!39363 lt!1383328)))) (seqFromList!4857 (_1!23834 lt!1383433))) (rule!9570 (_1!23831 (v!39363 lt!1383328))) (size!31546 (seqFromList!4857 (_1!23834 lt!1383433))) (_1!23834 lt!1383433)) (_2!23834 lt!1383433))))))

(declare-fun lt!1383432 () Unit!60602)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1261 (Regex!11503 List!42234) Unit!60602)

(assert (=> b!3956778 (= lt!1383432 (longestMatchIsAcceptedByMatchOrIsEmpty!1261 (regex!6598 (rule!9570 (_1!23831 (v!39363 lt!1383328)))) lt!1383331))))

(declare-fun res!1601132 () Bool)

(declare-fun findLongestMatchInner!1288 (Regex!11503 List!42234 Int List!42234 List!42234 Int) tuple2!41400)

(assert (=> b!3956778 (= res!1601132 (isEmpty!25168 (_1!23834 (findLongestMatchInner!1288 (regex!6598 (rule!9570 (_1!23831 (v!39363 lt!1383328)))) Nil!42110 (size!31543 Nil!42110) lt!1383331 lt!1383331 (size!31543 lt!1383331)))))))

(declare-fun e!2449617 () Bool)

(assert (=> b!3956778 (=> res!1601132 e!2449617)))

(assert (=> b!3956778 e!2449617))

(declare-fun lt!1383429 () Unit!60602)

(assert (=> b!3956778 (= lt!1383429 lt!1383432)))

(declare-fun lt!1383430 () Unit!60602)

(declare-fun lemmaSemiInverse!1796 (TokenValueInjection!13084 BalanceConc!25212) Unit!60602)

(assert (=> b!3956778 (= lt!1383430 (lemmaSemiInverse!1796 (transformation!6598 (rule!9570 (_1!23831 (v!39363 lt!1383328)))) (seqFromList!4857 (_1!23834 lt!1383433))))))

(declare-fun b!3956779 () Bool)

(declare-fun res!1601135 () Bool)

(assert (=> b!3956779 (=> (not res!1601135) (not e!2449614))))

(assert (=> b!3956779 (= res!1601135 (= (value!208677 (_1!23831 (get!13887 lt!1383431))) (apply!9829 (transformation!6598 (rule!9570 (_1!23831 (get!13887 lt!1383431)))) (seqFromList!4857 (originalCharacters!7198 (_1!23831 (get!13887 lt!1383431)))))))))

(declare-fun d!1172964 () Bool)

(assert (=> d!1172964 e!2449616))

(declare-fun res!1601133 () Bool)

(assert (=> d!1172964 (=> res!1601133 e!2449616)))

(assert (=> d!1172964 (= res!1601133 (isEmpty!25171 lt!1383431))))

(assert (=> d!1172964 (= lt!1383431 e!2449615)))

(declare-fun c!686794 () Bool)

(assert (=> d!1172964 (= c!686794 (isEmpty!25168 (_1!23834 lt!1383433)))))

(declare-fun findLongestMatch!1201 (Regex!11503 List!42234) tuple2!41400)

(assert (=> d!1172964 (= lt!1383433 (findLongestMatch!1201 (regex!6598 (rule!9570 (_1!23831 (v!39363 lt!1383328)))) lt!1383331))))

(assert (=> d!1172964 (ruleValid!2540 thiss!20629 (rule!9570 (_1!23831 (v!39363 lt!1383328))))))

(assert (=> d!1172964 (= (maxPrefixOneRule!2541 thiss!20629 (rule!9570 (_1!23831 (v!39363 lt!1383328))) lt!1383331) lt!1383431)))

(declare-fun b!3956780 () Bool)

(assert (=> b!3956780 (= e!2449614 (= (size!31542 (_1!23831 (get!13887 lt!1383431))) (size!31543 (originalCharacters!7198 (_1!23831 (get!13887 lt!1383431))))))))

(declare-fun b!3956781 () Bool)

(assert (=> b!3956781 (= e!2449617 (matchR!5524 (regex!6598 (rule!9570 (_1!23831 (v!39363 lt!1383328)))) (_1!23834 (findLongestMatchInner!1288 (regex!6598 (rule!9570 (_1!23831 (v!39363 lt!1383328)))) Nil!42110 (size!31543 Nil!42110) lt!1383331 lt!1383331 (size!31543 lt!1383331)))))))

(declare-fun b!3956782 () Bool)

(declare-fun res!1601137 () Bool)

(assert (=> b!3956782 (=> (not res!1601137) (not e!2449614))))

(assert (=> b!3956782 (= res!1601137 (= (rule!9570 (_1!23831 (get!13887 lt!1383431))) (rule!9570 (_1!23831 (v!39363 lt!1383328)))))))

(assert (= (and d!1172964 c!686794) b!3956776))

(assert (= (and d!1172964 (not c!686794)) b!3956778))

(assert (= (and b!3956778 (not res!1601132)) b!3956781))

(assert (= (and d!1172964 (not res!1601133)) b!3956774))

(assert (= (and b!3956774 res!1601136) b!3956777))

(assert (= (and b!3956777 res!1601131) b!3956775))

(assert (= (and b!3956775 res!1601134) b!3956782))

(assert (= (and b!3956782 res!1601137) b!3956779))

(assert (= (and b!3956779 res!1601135) b!3956780))

(declare-fun m!4525707 () Bool)

(assert (=> d!1172964 m!4525707))

(declare-fun m!4525709 () Bool)

(assert (=> d!1172964 m!4525709))

(declare-fun m!4525711 () Bool)

(assert (=> d!1172964 m!4525711))

(assert (=> d!1172964 m!4525385))

(declare-fun m!4525713 () Bool)

(assert (=> b!3956782 m!4525713))

(assert (=> b!3956774 m!4525713))

(declare-fun m!4525715 () Bool)

(assert (=> b!3956774 m!4525715))

(assert (=> b!3956774 m!4525715))

(declare-fun m!4525717 () Bool)

(assert (=> b!3956774 m!4525717))

(assert (=> b!3956774 m!4525717))

(declare-fun m!4525719 () Bool)

(assert (=> b!3956774 m!4525719))

(declare-fun m!4525721 () Bool)

(assert (=> b!3956778 m!4525721))

(declare-fun m!4525723 () Bool)

(assert (=> b!3956778 m!4525723))

(assert (=> b!3956778 m!4525351))

(assert (=> b!3956778 m!4525721))

(assert (=> b!3956778 m!4525721))

(declare-fun m!4525729 () Bool)

(assert (=> b!3956778 m!4525729))

(assert (=> b!3956778 m!4525721))

(declare-fun m!4525731 () Bool)

(assert (=> b!3956778 m!4525731))

(declare-fun m!4525733 () Bool)

(assert (=> b!3956778 m!4525733))

(assert (=> b!3956778 m!4525351))

(declare-fun m!4525735 () Bool)

(assert (=> b!3956778 m!4525735))

(declare-fun m!4525737 () Bool)

(assert (=> b!3956778 m!4525737))

(assert (=> b!3956778 m!4525733))

(declare-fun m!4525743 () Bool)

(assert (=> b!3956778 m!4525743))

(assert (=> b!3956781 m!4525733))

(assert (=> b!3956781 m!4525351))

(assert (=> b!3956781 m!4525733))

(assert (=> b!3956781 m!4525351))

(assert (=> b!3956781 m!4525735))

(declare-fun m!4525745 () Bool)

(assert (=> b!3956781 m!4525745))

(assert (=> b!3956779 m!4525713))

(declare-fun m!4525747 () Bool)

(assert (=> b!3956779 m!4525747))

(assert (=> b!3956779 m!4525747))

(declare-fun m!4525749 () Bool)

(assert (=> b!3956779 m!4525749))

(assert (=> b!3956780 m!4525713))

(declare-fun m!4525751 () Bool)

(assert (=> b!3956780 m!4525751))

(assert (=> b!3956777 m!4525713))

(assert (=> b!3956777 m!4525715))

(assert (=> b!3956777 m!4525715))

(assert (=> b!3956777 m!4525717))

(assert (=> b!3956777 m!4525717))

(declare-fun m!4525753 () Bool)

(assert (=> b!3956777 m!4525753))

(assert (=> b!3956775 m!4525713))

(declare-fun m!4525755 () Bool)

(assert (=> b!3956775 m!4525755))

(assert (=> b!3956775 m!4525351))

(assert (=> b!3956445 d!1172964))

(declare-fun d!1172998 () Bool)

(assert (=> d!1172998 (= (maxPrefixOneRule!2541 thiss!20629 (rule!9570 (_1!23831 (v!39363 lt!1383328))) lt!1383331) (Some!9017 (tuple2!41395 (Token!12335 (apply!9829 (transformation!6598 (rule!9570 (_1!23831 (v!39363 lt!1383328)))) (seqFromList!4857 lt!1383313)) (rule!9570 (_1!23831 (v!39363 lt!1383328))) (size!31543 lt!1383313) lt!1383313) (_2!23831 (v!39363 lt!1383328)))))))

(declare-fun lt!1383439 () Unit!60602)

(declare-fun choose!23619 (LexerInterface!6187 List!42236 List!42234 List!42234 List!42234 Rule!12996) Unit!60602)

(assert (=> d!1172998 (= lt!1383439 (choose!23619 thiss!20629 rules!2768 lt!1383313 lt!1383331 (_2!23831 (v!39363 lt!1383328)) (rule!9570 (_1!23831 (v!39363 lt!1383328)))))))

(assert (=> d!1172998 (not (isEmpty!25170 rules!2768))))

(assert (=> d!1172998 (= (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1367 thiss!20629 rules!2768 lt!1383313 lt!1383331 (_2!23831 (v!39363 lt!1383328)) (rule!9570 (_1!23831 (v!39363 lt!1383328)))) lt!1383439)))

(declare-fun bs!587183 () Bool)

(assert (= bs!587183 d!1172998))

(declare-fun m!4525757 () Bool)

(assert (=> bs!587183 m!4525757))

(assert (=> bs!587183 m!4525333))

(assert (=> bs!587183 m!4525367))

(assert (=> bs!587183 m!4525377))

(assert (=> bs!587183 m!4525379))

(assert (=> bs!587183 m!4525377))

(assert (=> bs!587183 m!4525389))

(assert (=> b!3956445 d!1172998))

(declare-fun d!1173000 () Bool)

(declare-fun res!1601142 () Bool)

(declare-fun e!2449627 () Bool)

(assert (=> d!1173000 (=> (not res!1601142) (not e!2449627))))

(declare-fun rulesValid!2578 (LexerInterface!6187 List!42236) Bool)

(assert (=> d!1173000 (= res!1601142 (rulesValid!2578 thiss!20629 rules!2768))))

(assert (=> d!1173000 (= (rulesInvariant!5530 thiss!20629 rules!2768) e!2449627)))

(declare-fun b!3956796 () Bool)

(declare-datatypes ((List!42237 0))(
  ( (Nil!42113) (Cons!42113 (h!47533 String!47858) (t!329492 List!42237)) )
))
(declare-fun noDuplicateTag!2579 (LexerInterface!6187 List!42236 List!42237) Bool)

(assert (=> b!3956796 (= e!2449627 (noDuplicateTag!2579 thiss!20629 rules!2768 Nil!42113))))

(assert (= (and d!1173000 res!1601142) b!3956796))

(declare-fun m!4525759 () Bool)

(assert (=> d!1173000 m!4525759))

(declare-fun m!4525761 () Bool)

(assert (=> b!3956796 m!4525761))

(assert (=> b!3956466 d!1173000))

(declare-fun b!3956812 () Bool)

(declare-fun e!2449638 () Bool)

(declare-fun inv!16 (TokenValue!6828) Bool)

(assert (=> b!3956812 (= e!2449638 (inv!16 (value!208677 (h!47531 suffixTokens!72))))))

(declare-fun d!1173002 () Bool)

(declare-fun c!686806 () Bool)

(assert (=> d!1173002 (= c!686806 ((_ is IntegerValue!20484) (value!208677 (h!47531 suffixTokens!72))))))

(assert (=> d!1173002 (= (inv!21 (value!208677 (h!47531 suffixTokens!72))) e!2449638)))

(declare-fun b!3956813 () Bool)

(declare-fun e!2449639 () Bool)

(declare-fun inv!17 (TokenValue!6828) Bool)

(assert (=> b!3956813 (= e!2449639 (inv!17 (value!208677 (h!47531 suffixTokens!72))))))

(declare-fun b!3956814 () Bool)

(assert (=> b!3956814 (= e!2449638 e!2449639)))

(declare-fun c!686805 () Bool)

(assert (=> b!3956814 (= c!686805 ((_ is IntegerValue!20485) (value!208677 (h!47531 suffixTokens!72))))))

(declare-fun b!3956815 () Bool)

(declare-fun res!1601146 () Bool)

(declare-fun e!2449637 () Bool)

(assert (=> b!3956815 (=> res!1601146 e!2449637)))

(assert (=> b!3956815 (= res!1601146 (not ((_ is IntegerValue!20486) (value!208677 (h!47531 suffixTokens!72)))))))

(assert (=> b!3956815 (= e!2449639 e!2449637)))

(declare-fun b!3956816 () Bool)

(declare-fun inv!15 (TokenValue!6828) Bool)

(assert (=> b!3956816 (= e!2449637 (inv!15 (value!208677 (h!47531 suffixTokens!72))))))

(assert (= (and d!1173002 c!686806) b!3956812))

(assert (= (and d!1173002 (not c!686806)) b!3956814))

(assert (= (and b!3956814 c!686805) b!3956813))

(assert (= (and b!3956814 (not c!686805)) b!3956815))

(assert (= (and b!3956815 (not res!1601146)) b!3956816))

(declare-fun m!4525773 () Bool)

(assert (=> b!3956812 m!4525773))

(declare-fun m!4525775 () Bool)

(assert (=> b!3956813 m!4525775))

(declare-fun m!4525777 () Bool)

(assert (=> b!3956816 m!4525777))

(assert (=> b!3956467 d!1173002))

(declare-fun b!3956817 () Bool)

(declare-fun e!2449641 () tuple2!41396)

(declare-fun lt!1383451 () Option!9018)

(declare-fun lt!1383453 () tuple2!41396)

(assert (=> b!3956817 (= e!2449641 (tuple2!41397 (Cons!42111 (_1!23831 (v!39363 lt!1383451)) (_1!23832 lt!1383453)) (_2!23832 lt!1383453)))))

(assert (=> b!3956817 (= lt!1383453 (lexList!1955 thiss!20629 rules!2768 (_2!23831 (v!39363 lt!1383451))))))

(declare-fun b!3956819 () Bool)

(declare-fun e!2449642 () Bool)

(declare-fun lt!1383452 () tuple2!41396)

(assert (=> b!3956819 (= e!2449642 (= (_2!23832 lt!1383452) lt!1383331))))

(declare-fun b!3956820 () Bool)

(assert (=> b!3956820 (= e!2449641 (tuple2!41397 Nil!42111 lt!1383331))))

(declare-fun b!3956821 () Bool)

(declare-fun e!2449640 () Bool)

(assert (=> b!3956821 (= e!2449640 (not (isEmpty!25169 (_1!23832 lt!1383452))))))

(declare-fun d!1173006 () Bool)

(assert (=> d!1173006 e!2449642))

(declare-fun c!686808 () Bool)

(assert (=> d!1173006 (= c!686808 (> (size!31544 (_1!23832 lt!1383452)) 0))))

(assert (=> d!1173006 (= lt!1383452 e!2449641)))

(declare-fun c!686807 () Bool)

(assert (=> d!1173006 (= c!686807 ((_ is Some!9017) lt!1383451))))

(assert (=> d!1173006 (= lt!1383451 (maxPrefix!3491 thiss!20629 rules!2768 lt!1383331))))

(assert (=> d!1173006 (= (lexList!1955 thiss!20629 rules!2768 lt!1383331) lt!1383452)))

(declare-fun b!3956818 () Bool)

(assert (=> b!3956818 (= e!2449642 e!2449640)))

(declare-fun res!1601147 () Bool)

(assert (=> b!3956818 (= res!1601147 (< (size!31543 (_2!23832 lt!1383452)) (size!31543 lt!1383331)))))

(assert (=> b!3956818 (=> (not res!1601147) (not e!2449640))))

(assert (= (and d!1173006 c!686807) b!3956817))

(assert (= (and d!1173006 (not c!686807)) b!3956820))

(assert (= (and d!1173006 c!686808) b!3956818))

(assert (= (and d!1173006 (not c!686808)) b!3956819))

(assert (= (and b!3956818 res!1601147) b!3956821))

(declare-fun m!4525783 () Bool)

(assert (=> b!3956817 m!4525783))

(declare-fun m!4525785 () Bool)

(assert (=> b!3956821 m!4525785))

(declare-fun m!4525787 () Bool)

(assert (=> d!1173006 m!4525787))

(assert (=> d!1173006 m!4525331))

(declare-fun m!4525789 () Bool)

(assert (=> b!3956818 m!4525789))

(assert (=> b!3956818 m!4525351))

(assert (=> b!3956454 d!1173006))

(declare-fun b!3956843 () Bool)

(declare-fun e!2449656 () List!42235)

(assert (=> b!3956843 (= e!2449656 (Cons!42111 (h!47531 prefixTokens!80) (++!10953 (t!329394 prefixTokens!80) suffixTokens!72)))))

(declare-fun lt!1383460 () List!42235)

(declare-fun e!2449657 () Bool)

(declare-fun b!3956845 () Bool)

(assert (=> b!3956845 (= e!2449657 (or (not (= suffixTokens!72 Nil!42111)) (= lt!1383460 prefixTokens!80)))))

(declare-fun b!3956842 () Bool)

(assert (=> b!3956842 (= e!2449656 suffixTokens!72)))

(declare-fun b!3956844 () Bool)

(declare-fun res!1601164 () Bool)

(assert (=> b!3956844 (=> (not res!1601164) (not e!2449657))))

(assert (=> b!3956844 (= res!1601164 (= (size!31544 lt!1383460) (+ (size!31544 prefixTokens!80) (size!31544 suffixTokens!72))))))

(declare-fun d!1173010 () Bool)

(assert (=> d!1173010 e!2449657))

(declare-fun res!1601165 () Bool)

(assert (=> d!1173010 (=> (not res!1601165) (not e!2449657))))

(declare-fun content!6394 (List!42235) (InoxSet Token!12334))

(assert (=> d!1173010 (= res!1601165 (= (content!6394 lt!1383460) ((_ map or) (content!6394 prefixTokens!80) (content!6394 suffixTokens!72))))))

(assert (=> d!1173010 (= lt!1383460 e!2449656)))

(declare-fun c!686811 () Bool)

(assert (=> d!1173010 (= c!686811 ((_ is Nil!42111) prefixTokens!80))))

(assert (=> d!1173010 (= (++!10953 prefixTokens!80 suffixTokens!72) lt!1383460)))

(assert (= (and d!1173010 c!686811) b!3956842))

(assert (= (and d!1173010 (not c!686811)) b!3956843))

(assert (= (and d!1173010 res!1601165) b!3956844))

(assert (= (and b!3956844 res!1601164) b!3956845))

(declare-fun m!4525799 () Bool)

(assert (=> b!3956843 m!4525799))

(declare-fun m!4525801 () Bool)

(assert (=> b!3956844 m!4525801))

(declare-fun m!4525803 () Bool)

(assert (=> b!3956844 m!4525803))

(declare-fun m!4525805 () Bool)

(assert (=> b!3956844 m!4525805))

(declare-fun m!4525807 () Bool)

(assert (=> d!1173010 m!4525807))

(declare-fun m!4525809 () Bool)

(assert (=> d!1173010 m!4525809))

(declare-fun m!4525811 () Bool)

(assert (=> d!1173010 m!4525811))

(assert (=> b!3956454 d!1173010))

(declare-fun b!3956846 () Bool)

(declare-fun e!2449658 () List!42234)

(assert (=> b!3956846 (= e!2449658 suffix!1176)))

(declare-fun e!2449659 () Bool)

(declare-fun b!3956849 () Bool)

(declare-fun lt!1383461 () List!42234)

(assert (=> b!3956849 (= e!2449659 (or (not (= suffix!1176 Nil!42110)) (= lt!1383461 prefix!426)))))

(declare-fun b!3956847 () Bool)

(assert (=> b!3956847 (= e!2449658 (Cons!42110 (h!47530 prefix!426) (++!10954 (t!329393 prefix!426) suffix!1176)))))

(declare-fun d!1173014 () Bool)

(assert (=> d!1173014 e!2449659))

(declare-fun res!1601166 () Bool)

(assert (=> d!1173014 (=> (not res!1601166) (not e!2449659))))

(assert (=> d!1173014 (= res!1601166 (= (content!6392 lt!1383461) ((_ map or) (content!6392 prefix!426) (content!6392 suffix!1176))))))

(assert (=> d!1173014 (= lt!1383461 e!2449658)))

(declare-fun c!686812 () Bool)

(assert (=> d!1173014 (= c!686812 ((_ is Nil!42110) prefix!426))))

(assert (=> d!1173014 (= (++!10954 prefix!426 suffix!1176) lt!1383461)))

(declare-fun b!3956848 () Bool)

(declare-fun res!1601167 () Bool)

(assert (=> b!3956848 (=> (not res!1601167) (not e!2449659))))

(assert (=> b!3956848 (= res!1601167 (= (size!31543 lt!1383461) (+ (size!31543 prefix!426) (size!31543 suffix!1176))))))

(assert (= (and d!1173014 c!686812) b!3956846))

(assert (= (and d!1173014 (not c!686812)) b!3956847))

(assert (= (and d!1173014 res!1601166) b!3956848))

(assert (= (and b!3956848 res!1601167) b!3956849))

(declare-fun m!4525813 () Bool)

(assert (=> b!3956847 m!4525813))

(declare-fun m!4525815 () Bool)

(assert (=> d!1173014 m!4525815))

(declare-fun m!4525817 () Bool)

(assert (=> d!1173014 m!4525817))

(declare-fun m!4525819 () Bool)

(assert (=> d!1173014 m!4525819))

(declare-fun m!4525821 () Bool)

(assert (=> b!3956848 m!4525821))

(assert (=> b!3956848 m!4525343))

(assert (=> b!3956848 m!4525429))

(assert (=> b!3956454 d!1173014))

(declare-fun d!1173018 () Bool)

(assert (=> d!1173018 (= (isEmpty!25168 suffix!1176) ((_ is Nil!42110) suffix!1176))))

(assert (=> b!3956455 d!1173018))

(declare-fun b!3956850 () Bool)

(declare-fun e!2449661 () tuple2!41396)

(declare-fun lt!1383462 () Option!9018)

(declare-fun lt!1383464 () tuple2!41396)

(assert (=> b!3956850 (= e!2449661 (tuple2!41397 (Cons!42111 (_1!23831 (v!39363 lt!1383462)) (_1!23832 lt!1383464)) (_2!23832 lt!1383464)))))

(assert (=> b!3956850 (= lt!1383464 (lexList!1955 thiss!20629 rules!2768 (_2!23831 (v!39363 lt!1383462))))))

(declare-fun b!3956852 () Bool)

(declare-fun e!2449662 () Bool)

(declare-fun lt!1383463 () tuple2!41396)

(assert (=> b!3956852 (= e!2449662 (= (_2!23832 lt!1383463) (_2!23831 lt!1383316)))))

(declare-fun b!3956853 () Bool)

(assert (=> b!3956853 (= e!2449661 (tuple2!41397 Nil!42111 (_2!23831 lt!1383316)))))

(declare-fun b!3956854 () Bool)

(declare-fun e!2449660 () Bool)

(assert (=> b!3956854 (= e!2449660 (not (isEmpty!25169 (_1!23832 lt!1383463))))))

(declare-fun d!1173020 () Bool)

(assert (=> d!1173020 e!2449662))

(declare-fun c!686814 () Bool)

(assert (=> d!1173020 (= c!686814 (> (size!31544 (_1!23832 lt!1383463)) 0))))

(assert (=> d!1173020 (= lt!1383463 e!2449661)))

(declare-fun c!686813 () Bool)

(assert (=> d!1173020 (= c!686813 ((_ is Some!9017) lt!1383462))))

(assert (=> d!1173020 (= lt!1383462 (maxPrefix!3491 thiss!20629 rules!2768 (_2!23831 lt!1383316)))))

(assert (=> d!1173020 (= (lexList!1955 thiss!20629 rules!2768 (_2!23831 lt!1383316)) lt!1383463)))

(declare-fun b!3956851 () Bool)

(assert (=> b!3956851 (= e!2449662 e!2449660)))

(declare-fun res!1601168 () Bool)

(assert (=> b!3956851 (= res!1601168 (< (size!31543 (_2!23832 lt!1383463)) (size!31543 (_2!23831 lt!1383316))))))

(assert (=> b!3956851 (=> (not res!1601168) (not e!2449660))))

(assert (= (and d!1173020 c!686813) b!3956850))

(assert (= (and d!1173020 (not c!686813)) b!3956853))

(assert (= (and d!1173020 c!686814) b!3956851))

(assert (= (and d!1173020 (not c!686814)) b!3956852))

(assert (= (and b!3956851 res!1601168) b!3956854))

(declare-fun m!4525823 () Bool)

(assert (=> b!3956850 m!4525823))

(declare-fun m!4525825 () Bool)

(assert (=> b!3956854 m!4525825))

(declare-fun m!4525827 () Bool)

(assert (=> d!1173020 m!4525827))

(declare-fun m!4525829 () Bool)

(assert (=> d!1173020 m!4525829))

(declare-fun m!4525831 () Bool)

(assert (=> b!3956851 m!4525831))

(assert (=> b!3956851 m!4525417))

(assert (=> b!3956476 d!1173020))

(declare-fun b!3956856 () Bool)

(declare-fun e!2449663 () List!42235)

(assert (=> b!3956856 (= e!2449663 (Cons!42111 (h!47531 (Cons!42111 (_1!23831 (v!39363 lt!1383328)) Nil!42111)) (++!10953 (t!329394 (Cons!42111 (_1!23831 (v!39363 lt!1383328)) Nil!42111)) (_1!23832 lt!1383327))))))

(declare-fun lt!1383465 () List!42235)

(declare-fun b!3956858 () Bool)

(declare-fun e!2449664 () Bool)

(assert (=> b!3956858 (= e!2449664 (or (not (= (_1!23832 lt!1383327) Nil!42111)) (= lt!1383465 (Cons!42111 (_1!23831 (v!39363 lt!1383328)) Nil!42111))))))

(declare-fun b!3956855 () Bool)

(assert (=> b!3956855 (= e!2449663 (_1!23832 lt!1383327))))

(declare-fun b!3956857 () Bool)

(declare-fun res!1601169 () Bool)

(assert (=> b!3956857 (=> (not res!1601169) (not e!2449664))))

(assert (=> b!3956857 (= res!1601169 (= (size!31544 lt!1383465) (+ (size!31544 (Cons!42111 (_1!23831 (v!39363 lt!1383328)) Nil!42111)) (size!31544 (_1!23832 lt!1383327)))))))

(declare-fun d!1173022 () Bool)

(assert (=> d!1173022 e!2449664))

(declare-fun res!1601170 () Bool)

(assert (=> d!1173022 (=> (not res!1601170) (not e!2449664))))

(assert (=> d!1173022 (= res!1601170 (= (content!6394 lt!1383465) ((_ map or) (content!6394 (Cons!42111 (_1!23831 (v!39363 lt!1383328)) Nil!42111)) (content!6394 (_1!23832 lt!1383327)))))))

(assert (=> d!1173022 (= lt!1383465 e!2449663)))

(declare-fun c!686815 () Bool)

(assert (=> d!1173022 (= c!686815 ((_ is Nil!42111) (Cons!42111 (_1!23831 (v!39363 lt!1383328)) Nil!42111)))))

(assert (=> d!1173022 (= (++!10953 (Cons!42111 (_1!23831 (v!39363 lt!1383328)) Nil!42111) (_1!23832 lt!1383327)) lt!1383465)))

(assert (= (and d!1173022 c!686815) b!3956855))

(assert (= (and d!1173022 (not c!686815)) b!3956856))

(assert (= (and d!1173022 res!1601170) b!3956857))

(assert (= (and b!3956857 res!1601169) b!3956858))

(declare-fun m!4525833 () Bool)

(assert (=> b!3956856 m!4525833))

(declare-fun m!4525835 () Bool)

(assert (=> b!3956857 m!4525835))

(declare-fun m!4525837 () Bool)

(assert (=> b!3956857 m!4525837))

(declare-fun m!4525839 () Bool)

(assert (=> b!3956857 m!4525839))

(declare-fun m!4525841 () Bool)

(assert (=> d!1173022 m!4525841))

(declare-fun m!4525843 () Bool)

(assert (=> d!1173022 m!4525843))

(declare-fun m!4525845 () Bool)

(assert (=> d!1173022 m!4525845))

(assert (=> b!3956474 d!1173022))

(declare-fun b!3956859 () Bool)

(declare-fun e!2449666 () Bool)

(assert (=> b!3956859 (= e!2449666 (inv!16 (value!208677 (h!47531 prefixTokens!80))))))

(declare-fun d!1173024 () Bool)

(declare-fun c!686817 () Bool)

(assert (=> d!1173024 (= c!686817 ((_ is IntegerValue!20484) (value!208677 (h!47531 prefixTokens!80))))))

(assert (=> d!1173024 (= (inv!21 (value!208677 (h!47531 prefixTokens!80))) e!2449666)))

(declare-fun b!3956860 () Bool)

(declare-fun e!2449667 () Bool)

(assert (=> b!3956860 (= e!2449667 (inv!17 (value!208677 (h!47531 prefixTokens!80))))))

(declare-fun b!3956861 () Bool)

(assert (=> b!3956861 (= e!2449666 e!2449667)))

(declare-fun c!686816 () Bool)

(assert (=> b!3956861 (= c!686816 ((_ is IntegerValue!20485) (value!208677 (h!47531 prefixTokens!80))))))

(declare-fun b!3956862 () Bool)

(declare-fun res!1601171 () Bool)

(declare-fun e!2449665 () Bool)

(assert (=> b!3956862 (=> res!1601171 e!2449665)))

(assert (=> b!3956862 (= res!1601171 (not ((_ is IntegerValue!20486) (value!208677 (h!47531 prefixTokens!80)))))))

(assert (=> b!3956862 (= e!2449667 e!2449665)))

(declare-fun b!3956863 () Bool)

(assert (=> b!3956863 (= e!2449665 (inv!15 (value!208677 (h!47531 prefixTokens!80))))))

(assert (= (and d!1173024 c!686817) b!3956859))

(assert (= (and d!1173024 (not c!686817)) b!3956861))

(assert (= (and b!3956861 c!686816) b!3956860))

(assert (= (and b!3956861 (not c!686816)) b!3956862))

(assert (= (and b!3956862 (not res!1601171)) b!3956863))

(declare-fun m!4525851 () Bool)

(assert (=> b!3956859 m!4525851))

(declare-fun m!4525853 () Bool)

(assert (=> b!3956860 m!4525853))

(declare-fun m!4525855 () Bool)

(assert (=> b!3956863 m!4525855))

(assert (=> b!3956475 d!1173024))

(declare-fun d!1173028 () Bool)

(declare-fun lt!1383469 () Int)

(assert (=> d!1173028 (>= lt!1383469 0)))

(declare-fun e!2449668 () Int)

(assert (=> d!1173028 (= lt!1383469 e!2449668)))

(declare-fun c!686818 () Bool)

(assert (=> d!1173028 (= c!686818 ((_ is Nil!42110) (_2!23831 lt!1383316)))))

(assert (=> d!1173028 (= (size!31543 (_2!23831 lt!1383316)) lt!1383469)))

(declare-fun b!3956864 () Bool)

(assert (=> b!3956864 (= e!2449668 0)))

(declare-fun b!3956865 () Bool)

(assert (=> b!3956865 (= e!2449668 (+ 1 (size!31543 (t!329393 (_2!23831 lt!1383316)))))))

(assert (= (and d!1173028 c!686818) b!3956864))

(assert (= (and d!1173028 (not c!686818)) b!3956865))

(declare-fun m!4525857 () Bool)

(assert (=> b!3956865 m!4525857))

(assert (=> b!3956452 d!1173028))

(declare-fun d!1173030 () Bool)

(assert (=> d!1173030 (and (= lt!1383313 lt!1383313) (= (_2!23831 (v!39363 lt!1383328)) (_2!23831 lt!1383316)))))

(declare-fun lt!1383475 () Unit!60602)

(declare-fun choose!23622 (List!42234 List!42234 List!42234 List!42234) Unit!60602)

(assert (=> d!1173030 (= lt!1383475 (choose!23622 lt!1383313 (_2!23831 (v!39363 lt!1383328)) lt!1383313 (_2!23831 lt!1383316)))))

(assert (=> d!1173030 (= (++!10954 lt!1383313 (_2!23831 (v!39363 lt!1383328))) (++!10954 lt!1383313 (_2!23831 lt!1383316)))))

(assert (=> d!1173030 (= (lemmaConcatSameAndSameSizesThenSameLists!598 lt!1383313 (_2!23831 (v!39363 lt!1383328)) lt!1383313 (_2!23831 lt!1383316)) lt!1383475)))

(declare-fun bs!587187 () Bool)

(assert (= bs!587187 d!1173030))

(declare-fun m!4525861 () Bool)

(assert (=> bs!587187 m!4525861))

(assert (=> bs!587187 m!4525391))

(assert (=> bs!587187 m!4525335))

(assert (=> b!3956451 d!1173030))

(declare-fun b!3956872 () Bool)

(declare-fun e!2449673 () tuple2!41396)

(declare-fun lt!1383476 () Option!9018)

(declare-fun lt!1383478 () tuple2!41396)

(assert (=> b!3956872 (= e!2449673 (tuple2!41397 (Cons!42111 (_1!23831 (v!39363 lt!1383476)) (_1!23832 lt!1383478)) (_2!23832 lt!1383478)))))

(assert (=> b!3956872 (= lt!1383478 (lexList!1955 thiss!20629 rules!2768 (_2!23831 (v!39363 lt!1383476))))))

(declare-fun b!3956874 () Bool)

(declare-fun e!2449674 () Bool)

(declare-fun lt!1383477 () tuple2!41396)

(assert (=> b!3956874 (= e!2449674 (= (_2!23832 lt!1383477) suffix!1176))))

(declare-fun b!3956875 () Bool)

(assert (=> b!3956875 (= e!2449673 (tuple2!41397 Nil!42111 suffix!1176))))

(declare-fun b!3956876 () Bool)

(declare-fun e!2449672 () Bool)

(assert (=> b!3956876 (= e!2449672 (not (isEmpty!25169 (_1!23832 lt!1383477))))))

(declare-fun d!1173034 () Bool)

(assert (=> d!1173034 e!2449674))

(declare-fun c!686823 () Bool)

(assert (=> d!1173034 (= c!686823 (> (size!31544 (_1!23832 lt!1383477)) 0))))

(assert (=> d!1173034 (= lt!1383477 e!2449673)))

(declare-fun c!686822 () Bool)

(assert (=> d!1173034 (= c!686822 ((_ is Some!9017) lt!1383476))))

(assert (=> d!1173034 (= lt!1383476 (maxPrefix!3491 thiss!20629 rules!2768 suffix!1176))))

(assert (=> d!1173034 (= (lexList!1955 thiss!20629 rules!2768 suffix!1176) lt!1383477)))

(declare-fun b!3956873 () Bool)

(assert (=> b!3956873 (= e!2449674 e!2449672)))

(declare-fun res!1601172 () Bool)

(assert (=> b!3956873 (= res!1601172 (< (size!31543 (_2!23832 lt!1383477)) (size!31543 suffix!1176)))))

(assert (=> b!3956873 (=> (not res!1601172) (not e!2449672))))

(assert (= (and d!1173034 c!686822) b!3956872))

(assert (= (and d!1173034 (not c!686822)) b!3956875))

(assert (= (and d!1173034 c!686823) b!3956873))

(assert (= (and d!1173034 (not c!686823)) b!3956874))

(assert (= (and b!3956873 res!1601172) b!3956876))

(declare-fun m!4525867 () Bool)

(assert (=> b!3956872 m!4525867))

(declare-fun m!4525869 () Bool)

(assert (=> b!3956876 m!4525869))

(declare-fun m!4525871 () Bool)

(assert (=> d!1173034 m!4525871))

(declare-fun m!4525873 () Bool)

(assert (=> d!1173034 m!4525873))

(declare-fun m!4525875 () Bool)

(assert (=> b!3956873 m!4525875))

(assert (=> b!3956873 m!4525429))

(assert (=> b!3956472 d!1173034))

(declare-fun b!3956881 () Bool)

(declare-fun e!2449677 () Bool)

(declare-fun tp!1205745 () Bool)

(assert (=> b!3956881 (= e!2449677 (and tp_is_empty!19977 tp!1205745))))

(assert (=> b!3956449 (= tp!1205728 e!2449677)))

(assert (= (and b!3956449 ((_ is Cons!42110) (t!329393 prefix!426))) b!3956881))

(declare-fun b!3956895 () Bool)

(declare-fun b_free!109017 () Bool)

(declare-fun b_next!109721 () Bool)

(assert (=> b!3956895 (= b_free!109017 (not b_next!109721))))

(declare-fun t!329439 () Bool)

(declare-fun tb!238467 () Bool)

(assert (=> (and b!3956895 (= (toValue!9078 (transformation!6598 (rule!9570 (h!47531 (t!329394 suffixTokens!72))))) (toValue!9078 (transformation!6598 (rule!9570 (_1!23831 (v!39363 lt!1383328)))))) t!329439) tb!238467))

(declare-fun result!288766 () Bool)

(assert (= result!288766 result!288722))

(assert (=> d!1172928 t!329439))

(declare-fun b_and!303637 () Bool)

(declare-fun tp!1205760 () Bool)

(assert (=> b!3956895 (= tp!1205760 (and (=> t!329439 result!288766) b_and!303637))))

(declare-fun b_free!109019 () Bool)

(declare-fun b_next!109723 () Bool)

(assert (=> b!3956895 (= b_free!109019 (not b_next!109723))))

(declare-fun t!329441 () Bool)

(declare-fun tb!238469 () Bool)

(assert (=> (and b!3956895 (= (toChars!8937 (transformation!6598 (rule!9570 (h!47531 (t!329394 suffixTokens!72))))) (toChars!8937 (transformation!6598 (rule!9570 (h!47531 suffixTokens!72))))) t!329441) tb!238469))

(declare-fun result!288768 () Bool)

(assert (= result!288768 result!288714))

(assert (=> b!3956485 t!329441))

(declare-fun t!329443 () Bool)

(declare-fun tb!238471 () Bool)

(assert (=> (and b!3956895 (= (toChars!8937 (transformation!6598 (rule!9570 (h!47531 (t!329394 suffixTokens!72))))) (toChars!8937 (transformation!6598 (rule!9570 (_1!23831 (v!39363 lt!1383328)))))) t!329443) tb!238471))

(declare-fun result!288770 () Bool)

(assert (= result!288770 result!288730))

(assert (=> d!1172936 t!329443))

(declare-fun tb!238475 () Bool)

(declare-fun t!329447 () Bool)

(assert (=> (and b!3956895 (= (toChars!8937 (transformation!6598 (rule!9570 (h!47531 (t!329394 suffixTokens!72))))) (toChars!8937 (transformation!6598 (rule!9570 (h!47531 prefixTokens!80))))) t!329447) tb!238475))

(declare-fun result!288774 () Bool)

(assert (= result!288774 result!288736))

(assert (=> b!3956639 t!329447))

(declare-fun tp!1205758 () Bool)

(declare-fun b_and!303639 () Bool)

(assert (=> b!3956895 (= tp!1205758 (and (=> t!329441 result!288768) (=> t!329443 result!288770) (=> t!329447 result!288774) b_and!303639))))

(declare-fun e!2449695 () Bool)

(declare-fun b!3956893 () Bool)

(declare-fun e!2449691 () Bool)

(declare-fun tp!1205756 () Bool)

(assert (=> b!3956893 (= e!2449695 (and (inv!21 (value!208677 (h!47531 (t!329394 suffixTokens!72)))) e!2449691 tp!1205756))))

(declare-fun e!2449694 () Bool)

(assert (=> b!3956895 (= e!2449694 (and tp!1205760 tp!1205758))))

(declare-fun b!3956892 () Bool)

(declare-fun e!2449690 () Bool)

(declare-fun tp!1205757 () Bool)

(assert (=> b!3956892 (= e!2449690 (and (inv!56342 (h!47531 (t!329394 suffixTokens!72))) e!2449695 tp!1205757))))

(declare-fun tp!1205759 () Bool)

(declare-fun b!3956894 () Bool)

(assert (=> b!3956894 (= e!2449691 (and tp!1205759 (inv!56338 (tag!7458 (rule!9570 (h!47531 (t!329394 suffixTokens!72))))) (inv!56341 (transformation!6598 (rule!9570 (h!47531 (t!329394 suffixTokens!72))))) e!2449694))))

(assert (=> b!3956458 (= tp!1205721 e!2449690)))

(assert (= b!3956894 b!3956895))

(assert (= b!3956893 b!3956894))

(assert (= b!3956892 b!3956893))

(assert (= (and b!3956458 ((_ is Cons!42111) (t!329394 suffixTokens!72))) b!3956892))

(declare-fun m!4525883 () Bool)

(assert (=> b!3956893 m!4525883))

(declare-fun m!4525885 () Bool)

(assert (=> b!3956892 m!4525885))

(declare-fun m!4525887 () Bool)

(assert (=> b!3956894 m!4525887))

(declare-fun m!4525889 () Bool)

(assert (=> b!3956894 m!4525889))

(declare-fun b!3956901 () Bool)

(declare-fun b_free!109021 () Bool)

(declare-fun b_next!109725 () Bool)

(assert (=> b!3956901 (= b_free!109021 (not b_next!109725))))

(declare-fun tb!238479 () Bool)

(declare-fun t!329451 () Bool)

(assert (=> (and b!3956901 (= (toValue!9078 (transformation!6598 (rule!9570 (h!47531 (t!329394 prefixTokens!80))))) (toValue!9078 (transformation!6598 (rule!9570 (_1!23831 (v!39363 lt!1383328)))))) t!329451) tb!238479))

(declare-fun result!288780 () Bool)

(assert (= result!288780 result!288722))

(assert (=> d!1172928 t!329451))

(declare-fun tp!1205765 () Bool)

(declare-fun b_and!303643 () Bool)

(assert (=> b!3956901 (= tp!1205765 (and (=> t!329451 result!288780) b_and!303643))))

(declare-fun b_free!109023 () Bool)

(declare-fun b_next!109727 () Bool)

(assert (=> b!3956901 (= b_free!109023 (not b_next!109727))))

(declare-fun tb!238483 () Bool)

(declare-fun t!329455 () Bool)

(assert (=> (and b!3956901 (= (toChars!8937 (transformation!6598 (rule!9570 (h!47531 (t!329394 prefixTokens!80))))) (toChars!8937 (transformation!6598 (rule!9570 (h!47531 suffixTokens!72))))) t!329455) tb!238483))

(declare-fun result!288784 () Bool)

(assert (= result!288784 result!288714))

(assert (=> b!3956485 t!329455))

(declare-fun t!329457 () Bool)

(declare-fun tb!238485 () Bool)

(assert (=> (and b!3956901 (= (toChars!8937 (transformation!6598 (rule!9570 (h!47531 (t!329394 prefixTokens!80))))) (toChars!8937 (transformation!6598 (rule!9570 (_1!23831 (v!39363 lt!1383328)))))) t!329457) tb!238485))

(declare-fun result!288786 () Bool)

(assert (= result!288786 result!288730))

(assert (=> d!1172936 t!329457))

(declare-fun t!329459 () Bool)

(declare-fun tb!238487 () Bool)

(assert (=> (and b!3956901 (= (toChars!8937 (transformation!6598 (rule!9570 (h!47531 (t!329394 prefixTokens!80))))) (toChars!8937 (transformation!6598 (rule!9570 (h!47531 prefixTokens!80))))) t!329459) tb!238487))

(declare-fun result!288788 () Bool)

(assert (= result!288788 result!288736))

(assert (=> b!3956639 t!329459))

(declare-fun tp!1205763 () Bool)

(declare-fun b_and!303647 () Bool)

(assert (=> b!3956901 (= tp!1205763 (and (=> t!329455 result!288784) (=> t!329457 result!288786) (=> t!329459 result!288788) b_and!303647))))

(declare-fun tp!1205761 () Bool)

(declare-fun b!3956899 () Bool)

(declare-fun e!2449704 () Bool)

(declare-fun e!2449700 () Bool)

(assert (=> b!3956899 (= e!2449704 (and (inv!21 (value!208677 (h!47531 (t!329394 prefixTokens!80)))) e!2449700 tp!1205761))))

(declare-fun e!2449703 () Bool)

(assert (=> b!3956901 (= e!2449703 (and tp!1205765 tp!1205763))))

(declare-fun b!3956898 () Bool)

(declare-fun tp!1205762 () Bool)

(declare-fun e!2449699 () Bool)

(assert (=> b!3956898 (= e!2449699 (and (inv!56342 (h!47531 (t!329394 prefixTokens!80))) e!2449704 tp!1205762))))

(declare-fun tp!1205764 () Bool)

(declare-fun b!3956900 () Bool)

(assert (=> b!3956900 (= e!2449700 (and tp!1205764 (inv!56338 (tag!7458 (rule!9570 (h!47531 (t!329394 prefixTokens!80))))) (inv!56341 (transformation!6598 (rule!9570 (h!47531 (t!329394 prefixTokens!80))))) e!2449703))))

(assert (=> b!3956448 (= tp!1205732 e!2449699)))

(assert (= b!3956900 b!3956901))

(assert (= b!3956899 b!3956900))

(assert (= b!3956898 b!3956899))

(assert (= (and b!3956448 ((_ is Cons!42111) (t!329394 prefixTokens!80))) b!3956898))

(declare-fun m!4525897 () Bool)

(assert (=> b!3956899 m!4525897))

(declare-fun m!4525899 () Bool)

(assert (=> b!3956898 m!4525899))

(declare-fun m!4525901 () Bool)

(assert (=> b!3956900 m!4525901))

(declare-fun m!4525903 () Bool)

(assert (=> b!3956900 m!4525903))

(declare-fun b!3956920 () Bool)

(declare-fun e!2449711 () Bool)

(declare-fun tp!1205777 () Bool)

(declare-fun tp!1205779 () Bool)

(assert (=> b!3956920 (= e!2449711 (and tp!1205777 tp!1205779))))

(declare-fun b!3956921 () Bool)

(declare-fun tp!1205778 () Bool)

(assert (=> b!3956921 (= e!2449711 tp!1205778)))

(declare-fun b!3956919 () Bool)

(assert (=> b!3956919 (= e!2449711 tp_is_empty!19977)))

(declare-fun b!3956922 () Bool)

(declare-fun tp!1205780 () Bool)

(declare-fun tp!1205776 () Bool)

(assert (=> b!3956922 (= e!2449711 (and tp!1205780 tp!1205776))))

(assert (=> b!3956480 (= tp!1205730 e!2449711)))

(assert (= (and b!3956480 ((_ is ElementMatch!11503) (regex!6598 (rule!9570 (h!47531 suffixTokens!72))))) b!3956919))

(assert (= (and b!3956480 ((_ is Concat!18332) (regex!6598 (rule!9570 (h!47531 suffixTokens!72))))) b!3956920))

(assert (= (and b!3956480 ((_ is Star!11503) (regex!6598 (rule!9570 (h!47531 suffixTokens!72))))) b!3956921))

(assert (= (and b!3956480 ((_ is Union!11503) (regex!6598 (rule!9570 (h!47531 suffixTokens!72))))) b!3956922))

(declare-fun b!3956924 () Bool)

(declare-fun e!2449712 () Bool)

(declare-fun tp!1205782 () Bool)

(declare-fun tp!1205784 () Bool)

(assert (=> b!3956924 (= e!2449712 (and tp!1205782 tp!1205784))))

(declare-fun b!3956925 () Bool)

(declare-fun tp!1205783 () Bool)

(assert (=> b!3956925 (= e!2449712 tp!1205783)))

(declare-fun b!3956923 () Bool)

(assert (=> b!3956923 (= e!2449712 tp_is_empty!19977)))

(declare-fun b!3956926 () Bool)

(declare-fun tp!1205785 () Bool)

(declare-fun tp!1205781 () Bool)

(assert (=> b!3956926 (= e!2449712 (and tp!1205785 tp!1205781))))

(assert (=> b!3956446 (= tp!1205722 e!2449712)))

(assert (= (and b!3956446 ((_ is ElementMatch!11503) (regex!6598 (rule!9570 (h!47531 prefixTokens!80))))) b!3956923))

(assert (= (and b!3956446 ((_ is Concat!18332) (regex!6598 (rule!9570 (h!47531 prefixTokens!80))))) b!3956924))

(assert (= (and b!3956446 ((_ is Star!11503) (regex!6598 (rule!9570 (h!47531 prefixTokens!80))))) b!3956925))

(assert (= (and b!3956446 ((_ is Union!11503) (regex!6598 (rule!9570 (h!47531 prefixTokens!80))))) b!3956926))

(declare-fun b!3956927 () Bool)

(declare-fun e!2449713 () Bool)

(declare-fun tp!1205786 () Bool)

(assert (=> b!3956927 (= e!2449713 (and tp_is_empty!19977 tp!1205786))))

(assert (=> b!3956468 (= tp!1205718 e!2449713)))

(assert (= (and b!3956468 ((_ is Cons!42110) (t!329393 suffixResult!91))) b!3956927))

(declare-fun b!3956929 () Bool)

(declare-fun e!2449714 () Bool)

(declare-fun tp!1205788 () Bool)

(declare-fun tp!1205790 () Bool)

(assert (=> b!3956929 (= e!2449714 (and tp!1205788 tp!1205790))))

(declare-fun b!3956930 () Bool)

(declare-fun tp!1205789 () Bool)

(assert (=> b!3956930 (= e!2449714 tp!1205789)))

(declare-fun b!3956928 () Bool)

(assert (=> b!3956928 (= e!2449714 tp_is_empty!19977)))

(declare-fun b!3956931 () Bool)

(declare-fun tp!1205791 () Bool)

(declare-fun tp!1205787 () Bool)

(assert (=> b!3956931 (= e!2449714 (and tp!1205791 tp!1205787))))

(assert (=> b!3956477 (= tp!1205731 e!2449714)))

(assert (= (and b!3956477 ((_ is ElementMatch!11503) (regex!6598 (h!47532 rules!2768)))) b!3956928))

(assert (= (and b!3956477 ((_ is Concat!18332) (regex!6598 (h!47532 rules!2768)))) b!3956929))

(assert (= (and b!3956477 ((_ is Star!11503) (regex!6598 (h!47532 rules!2768)))) b!3956930))

(assert (= (and b!3956477 ((_ is Union!11503) (regex!6598 (h!47532 rules!2768)))) b!3956931))

(declare-fun b!3956932 () Bool)

(declare-fun e!2449715 () Bool)

(declare-fun tp!1205792 () Bool)

(assert (=> b!3956932 (= e!2449715 (and tp_is_empty!19977 tp!1205792))))

(assert (=> b!3956467 (= tp!1205724 e!2449715)))

(assert (= (and b!3956467 ((_ is Cons!42110) (originalCharacters!7198 (h!47531 suffixTokens!72)))) b!3956932))

(declare-fun b!3956943 () Bool)

(declare-fun b_free!109025 () Bool)

(declare-fun b_next!109729 () Bool)

(assert (=> b!3956943 (= b_free!109025 (not b_next!109729))))

(declare-fun tb!238489 () Bool)

(declare-fun t!329461 () Bool)

(assert (=> (and b!3956943 (= (toValue!9078 (transformation!6598 (h!47532 (t!329395 rules!2768)))) (toValue!9078 (transformation!6598 (rule!9570 (_1!23831 (v!39363 lt!1383328)))))) t!329461) tb!238489))

(declare-fun result!288794 () Bool)

(assert (= result!288794 result!288722))

(assert (=> d!1172928 t!329461))

(declare-fun tp!1205803 () Bool)

(declare-fun b_and!303651 () Bool)

(assert (=> b!3956943 (= tp!1205803 (and (=> t!329461 result!288794) b_and!303651))))

(declare-fun b_free!109027 () Bool)

(declare-fun b_next!109731 () Bool)

(assert (=> b!3956943 (= b_free!109027 (not b_next!109731))))

(declare-fun tb!238491 () Bool)

(declare-fun t!329463 () Bool)

(assert (=> (and b!3956943 (= (toChars!8937 (transformation!6598 (h!47532 (t!329395 rules!2768)))) (toChars!8937 (transformation!6598 (rule!9570 (h!47531 suffixTokens!72))))) t!329463) tb!238491))

(declare-fun result!288796 () Bool)

(assert (= result!288796 result!288714))

(assert (=> b!3956485 t!329463))

(declare-fun tb!238493 () Bool)

(declare-fun t!329465 () Bool)

(assert (=> (and b!3956943 (= (toChars!8937 (transformation!6598 (h!47532 (t!329395 rules!2768)))) (toChars!8937 (transformation!6598 (rule!9570 (_1!23831 (v!39363 lt!1383328)))))) t!329465) tb!238493))

(declare-fun result!288798 () Bool)

(assert (= result!288798 result!288730))

(assert (=> d!1172936 t!329465))

(declare-fun tb!238495 () Bool)

(declare-fun t!329467 () Bool)

(assert (=> (and b!3956943 (= (toChars!8937 (transformation!6598 (h!47532 (t!329395 rules!2768)))) (toChars!8937 (transformation!6598 (rule!9570 (h!47531 prefixTokens!80))))) t!329467) tb!238495))

(declare-fun result!288800 () Bool)

(assert (= result!288800 result!288736))

(assert (=> b!3956639 t!329467))

(declare-fun tp!1205801 () Bool)

(declare-fun b_and!303653 () Bool)

(assert (=> b!3956943 (= tp!1205801 (and (=> t!329463 result!288796) (=> t!329465 result!288798) (=> t!329467 result!288800) b_and!303653))))

(declare-fun e!2449724 () Bool)

(assert (=> b!3956943 (= e!2449724 (and tp!1205803 tp!1205801))))

(declare-fun b!3956942 () Bool)

(declare-fun e!2449726 () Bool)

(declare-fun tp!1205804 () Bool)

(assert (=> b!3956942 (= e!2449726 (and tp!1205804 (inv!56338 (tag!7458 (h!47532 (t!329395 rules!2768)))) (inv!56341 (transformation!6598 (h!47532 (t!329395 rules!2768)))) e!2449724))))

(declare-fun b!3956941 () Bool)

(declare-fun e!2449725 () Bool)

(declare-fun tp!1205802 () Bool)

(assert (=> b!3956941 (= e!2449725 (and e!2449726 tp!1205802))))

(assert (=> b!3956453 (= tp!1205723 e!2449725)))

(assert (= b!3956942 b!3956943))

(assert (= b!3956941 b!3956942))

(assert (= (and b!3956453 ((_ is Cons!42112) (t!329395 rules!2768))) b!3956941))

(declare-fun m!4525913 () Bool)

(assert (=> b!3956942 m!4525913))

(declare-fun m!4525915 () Bool)

(assert (=> b!3956942 m!4525915))

(declare-fun b!3956952 () Bool)

(declare-fun e!2449732 () Bool)

(declare-fun tp!1205805 () Bool)

(assert (=> b!3956952 (= e!2449732 (and tp_is_empty!19977 tp!1205805))))

(assert (=> b!3956475 (= tp!1205720 e!2449732)))

(assert (= (and b!3956475 ((_ is Cons!42110) (originalCharacters!7198 (h!47531 prefixTokens!80)))) b!3956952))

(declare-fun b!3956953 () Bool)

(declare-fun e!2449733 () Bool)

(declare-fun tp!1205806 () Bool)

(assert (=> b!3956953 (= e!2449733 (and tp_is_empty!19977 tp!1205806))))

(assert (=> b!3956450 (= tp!1205729 e!2449733)))

(assert (= (and b!3956450 ((_ is Cons!42110) (t!329393 suffix!1176))) b!3956953))

(declare-fun b_lambda!115775 () Bool)

(assert (= b_lambda!115765 (or (and b!3956465 b_free!109015 (= (toChars!8937 (transformation!6598 (rule!9570 (h!47531 suffixTokens!72)))) (toChars!8937 (transformation!6598 (rule!9570 (h!47531 prefixTokens!80)))))) (and b!3956895 b_free!109019 (= (toChars!8937 (transformation!6598 (rule!9570 (h!47531 (t!329394 suffixTokens!72))))) (toChars!8937 (transformation!6598 (rule!9570 (h!47531 prefixTokens!80)))))) (and b!3956473 b_free!109007 (= (toChars!8937 (transformation!6598 (h!47532 rules!2768))) (toChars!8937 (transformation!6598 (rule!9570 (h!47531 prefixTokens!80)))))) (and b!3956943 b_free!109027 (= (toChars!8937 (transformation!6598 (h!47532 (t!329395 rules!2768)))) (toChars!8937 (transformation!6598 (rule!9570 (h!47531 prefixTokens!80)))))) (and b!3956901 b_free!109023 (= (toChars!8937 (transformation!6598 (rule!9570 (h!47531 (t!329394 prefixTokens!80))))) (toChars!8937 (transformation!6598 (rule!9570 (h!47531 prefixTokens!80)))))) (and b!3956464 b_free!109011) b_lambda!115775)))

(declare-fun b_lambda!115777 () Bool)

(assert (= b_lambda!115759 (or (and b!3956473 b_free!109007 (= (toChars!8937 (transformation!6598 (h!47532 rules!2768))) (toChars!8937 (transformation!6598 (rule!9570 (h!47531 suffixTokens!72)))))) (and b!3956901 b_free!109023 (= (toChars!8937 (transformation!6598 (rule!9570 (h!47531 (t!329394 prefixTokens!80))))) (toChars!8937 (transformation!6598 (rule!9570 (h!47531 suffixTokens!72)))))) (and b!3956895 b_free!109019 (= (toChars!8937 (transformation!6598 (rule!9570 (h!47531 (t!329394 suffixTokens!72))))) (toChars!8937 (transformation!6598 (rule!9570 (h!47531 suffixTokens!72)))))) (and b!3956464 b_free!109011 (= (toChars!8937 (transformation!6598 (rule!9570 (h!47531 prefixTokens!80)))) (toChars!8937 (transformation!6598 (rule!9570 (h!47531 suffixTokens!72)))))) (and b!3956943 b_free!109027 (= (toChars!8937 (transformation!6598 (h!47532 (t!329395 rules!2768)))) (toChars!8937 (transformation!6598 (rule!9570 (h!47531 suffixTokens!72)))))) (and b!3956465 b_free!109015) b_lambda!115777)))

(check-sat (not b!3956681) (not b!3956542) (not b!3956817) (not b!3956921) (not b_next!109721) (not b!3956847) (not b!3956535) (not b_next!109727) (not d!1172936) (not b!3956881) (not b!3956857) (not b!3956850) b_and!303605 (not d!1172888) (not b!3956781) (not b!3956782) (not b_lambda!115775) (not d!1172896) b_and!303613 (not b!3956513) (not b_next!109709) (not b!3956602) (not b!3956775) (not b!3956854) (not b!3956679) (not b!3956628) b_and!303603 (not b!3956920) (not d!1173020) b_and!303639 (not d!1172902) (not b!3956627) (not b!3956640) b_and!303601 (not tb!238437) (not b!3956779) (not b!3956639) (not b!3956843) (not b!3956625) (not d!1172932) (not b!3956638) (not tb!238431) (not d!1173030) (not b_next!109731) (not b!3956536) (not d!1172930) (not b!3956941) (not d!1172926) (not b!3956953) (not b!3956512) (not b!3956491) (not b!3956630) (not d!1172908) (not b!3956892) (not b!3956924) (not b!3956497) (not b!3956533) (not b!3956932) (not b!3956922) (not d!1172914) (not b_next!109725) (not b!3956539) (not b_next!109729) (not b!3956942) b_and!303615 (not b!3956541) (not d!1172910) (not b!3956777) (not d!1172998) (not b!3956856) (not b!3956641) (not b!3956812) (not b!3956607) (not tb!238443) (not b!3956899) (not d!1173014) (not b!3956952) (not b!3956873) (not b!3956848) (not b!3956778) (not b!3956672) b_and!303637 (not b!3956900) (not b!3956818) (not b!3956774) (not b!3956671) (not b!3956676) (not b!3956547) (not b!3956816) (not b!3956538) (not b_next!109719) (not b!3956876) (not b!3956813) (not b_next!109711) (not d!1172954) (not d!1172904) (not b!3956642) (not b!3956502) (not b!3956605) (not b!3956540) (not b!3956872) (not d!1172958) (not b!3956614) (not b_lambda!115761) (not b_lambda!115777) (not d!1172912) (not d!1172916) (not b!3956601) (not b!3956631) (not b!3956486) (not b!3956844) (not b_next!109723) (not d!1173000) tp_is_empty!19977 (not d!1173010) (not b!3956499) b_and!303651 (not b!3956893) (not d!1172962) (not bm!285344) (not b!3956865) (not b!3956926) (not d!1172964) (not b!3956636) (not b!3956929) (not b!3956930) (not b!3956859) (not b!3956485) (not b_next!109713) (not b!3956860) (not d!1172918) (not b!3956894) (not b_lambda!115763) (not b!3956796) b_and!303653 (not d!1172938) (not d!1172940) b_and!303647 (not b!3956780) (not b!3956927) b_and!303643 (not b!3956821) (not d!1173034) (not d!1173006) (not b_next!109717) (not b!3956898) (not bm!285338) (not tb!238425) (not b_next!109715) (not b!3956626) b_and!303617 (not b!3956931) (not b!3956851) (not b!3956863) (not d!1173022) (not b!3956925) (not b!3956537) (not b!3956683) (not b!3956634))
(check-sat (not b_next!109721) (not b_next!109727) b_and!303605 b_and!303601 (not b_next!109731) b_and!303615 b_and!303637 (not b_next!109719) (not b_next!109711) (not b_next!109723) b_and!303651 (not b_next!109713) b_and!303653 (not b_next!109717) b_and!303613 (not b_next!109709) b_and!303603 b_and!303639 (not b_next!109725) (not b_next!109729) b_and!303647 b_and!303643 (not b_next!109715) b_and!303617)
