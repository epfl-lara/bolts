; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!16306 () Bool)

(assert start!16306)

(declare-fun b!152483 () Bool)

(declare-fun b_free!5569 () Bool)

(declare-fun b_next!5569 () Bool)

(assert (=> b!152483 (= b_free!5569 (not b_next!5569))))

(declare-fun tp!79175 () Bool)

(declare-fun b_and!8865 () Bool)

(assert (=> b!152483 (= tp!79175 b_and!8865)))

(declare-fun b_free!5571 () Bool)

(declare-fun b_next!5571 () Bool)

(assert (=> b!152483 (= b_free!5571 (not b_next!5571))))

(declare-fun tp!79170 () Bool)

(declare-fun b_and!8867 () Bool)

(assert (=> b!152483 (= tp!79170 b_and!8867)))

(declare-fun b!152480 () Bool)

(declare-fun b_free!5573 () Bool)

(declare-fun b_next!5573 () Bool)

(assert (=> b!152480 (= b_free!5573 (not b_next!5573))))

(declare-fun tp!79172 () Bool)

(declare-fun b_and!8869 () Bool)

(assert (=> b!152480 (= tp!79172 b_and!8869)))

(declare-fun b_free!5575 () Bool)

(declare-fun b_next!5575 () Bool)

(assert (=> b!152480 (= b_free!5575 (not b_next!5575))))

(declare-fun tp!79181 () Bool)

(declare-fun b_and!8871 () Bool)

(assert (=> b!152480 (= tp!79181 b_and!8871)))

(declare-fun b!152492 () Bool)

(declare-fun b_free!5577 () Bool)

(declare-fun b_next!5577 () Bool)

(assert (=> b!152492 (= b_free!5577 (not b_next!5577))))

(declare-fun tp!79180 () Bool)

(declare-fun b_and!8873 () Bool)

(assert (=> b!152492 (= tp!79180 b_and!8873)))

(declare-fun b_free!5579 () Bool)

(declare-fun b_next!5579 () Bool)

(assert (=> b!152492 (= b_free!5579 (not b_next!5579))))

(declare-fun tp!79173 () Bool)

(declare-fun b_and!8875 () Bool)

(assert (=> b!152492 (= tp!79173 b_and!8875)))

(declare-fun e!91151 () Bool)

(declare-fun tp!79174 () Bool)

(declare-fun e!91164 () Bool)

(declare-datatypes ((List!2649 0))(
  ( (Nil!2639) (Cons!2639 (h!8036 (_ BitVec 16)) (t!24983 List!2649)) )
))
(declare-datatypes ((TokenValue!481 0))(
  ( (FloatLiteralValue!962 (text!3812 List!2649)) (TokenValueExt!480 (__x!2449 Int)) (Broken!2405 (value!17371 List!2649)) (Object!490) (End!481) (Def!481) (Underscore!481) (Match!481) (Else!481) (Error!481) (Case!481) (If!481) (Extends!481) (Abstract!481) (Class!481) (Val!481) (DelimiterValue!962 (del!541 List!2649)) (KeywordValue!487 (value!17372 List!2649)) (CommentValue!962 (value!17373 List!2649)) (WhitespaceValue!962 (value!17374 List!2649)) (IndentationValue!481 (value!17375 List!2649)) (String!3484) (Int32!481) (Broken!2406 (value!17376 List!2649)) (Boolean!482) (Unit!2029) (OperatorValue!484 (op!541 List!2649)) (IdentifierValue!962 (value!17377 List!2649)) (IdentifierValue!963 (value!17378 List!2649)) (WhitespaceValue!963 (value!17379 List!2649)) (True!962) (False!962) (Broken!2407 (value!17380 List!2649)) (Broken!2408 (value!17381 List!2649)) (True!963) (RightBrace!481) (RightBracket!481) (Colon!481) (Null!481) (Comma!481) (LeftBracket!481) (False!963) (LeftBrace!481) (ImaginaryLiteralValue!481 (text!3813 List!2649)) (StringLiteralValue!1443 (value!17382 List!2649)) (EOFValue!481 (value!17383 List!2649)) (IdentValue!481 (value!17384 List!2649)) (DelimiterValue!963 (value!17385 List!2649)) (DedentValue!481 (value!17386 List!2649)) (NewLineValue!481 (value!17387 List!2649)) (IntegerValue!1443 (value!17388 (_ BitVec 32)) (text!3814 List!2649)) (IntegerValue!1444 (value!17389 Int) (text!3815 List!2649)) (Times!481) (Or!481) (Equal!481) (Minus!481) (Broken!2409 (value!17390 List!2649)) (And!481) (Div!481) (LessEqual!481) (Mod!481) (Concat!1164) (Not!481) (Plus!481) (SpaceValue!481 (value!17391 List!2649)) (IntegerValue!1445 (value!17392 Int) (text!3816 List!2649)) (StringLiteralValue!1444 (text!3817 List!2649)) (FloatLiteralValue!963 (text!3818 List!2649)) (BytesLiteralValue!481 (value!17393 List!2649)) (CommentValue!963 (value!17394 List!2649)) (StringLiteralValue!1445 (value!17395 List!2649)) (ErrorTokenValue!481 (msg!542 List!2649)) )
))
(declare-datatypes ((C!2288 0))(
  ( (C!2289 (val!1030 Int)) )
))
(declare-datatypes ((List!2650 0))(
  ( (Nil!2640) (Cons!2640 (h!8037 C!2288) (t!24984 List!2650)) )
))
(declare-datatypes ((IArray!1481 0))(
  ( (IArray!1482 (innerList!798 List!2650)) )
))
(declare-datatypes ((Conc!740 0))(
  ( (Node!740 (left!1992 Conc!740) (right!2322 Conc!740) (csize!1710 Int) (cheight!951 Int)) (Leaf!1309 (xs!3335 IArray!1481) (csize!1711 Int)) (Empty!740) )
))
(declare-datatypes ((BalanceConc!1488 0))(
  ( (BalanceConc!1489 (c!30789 Conc!740)) )
))
(declare-datatypes ((Regex!683 0))(
  ( (ElementMatch!683 (c!30790 C!2288)) (Concat!1165 (regOne!1878 Regex!683) (regTwo!1878 Regex!683)) (EmptyExpr!683) (Star!683 (reg!1012 Regex!683)) (EmptyLang!683) (Union!683 (regOne!1879 Regex!683) (regTwo!1879 Regex!683)) )
))
(declare-datatypes ((String!3485 0))(
  ( (String!3486 (value!17396 String)) )
))
(declare-datatypes ((TokenValueInjection!734 0))(
  ( (TokenValueInjection!735 (toValue!1098 Int) (toChars!957 Int)) )
))
(declare-datatypes ((Rule!718 0))(
  ( (Rule!719 (regex!459 Regex!683) (tag!637 String!3485) (isSeparator!459 Bool) (transformation!459 TokenValueInjection!734)) )
))
(declare-datatypes ((Token!662 0))(
  ( (Token!663 (value!17397 TokenValue!481) (rule!966 Rule!718) (size!2251 Int) (originalCharacters!502 List!2650)) )
))
(declare-datatypes ((List!2651 0))(
  ( (Nil!2641) (Cons!2641 (h!8038 Token!662) (t!24985 List!2651)) )
))
(declare-fun tokens!465 () List!2651)

(declare-fun b!152477 () Bool)

(declare-fun inv!21 (TokenValue!481) Bool)

(assert (=> b!152477 (= e!91164 (and (inv!21 (value!17397 (h!8038 tokens!465))) e!91151 tp!79174))))

(declare-fun b!152478 () Bool)

(declare-fun e!91158 () Bool)

(declare-fun e!91165 () Bool)

(assert (=> b!152478 (= e!91158 e!91165)))

(declare-fun res!69784 () Bool)

(assert (=> b!152478 (=> (not res!69784) (not e!91165))))

(declare-datatypes ((List!2652 0))(
  ( (Nil!2642) (Cons!2642 (h!8039 Rule!718) (t!24986 List!2652)) )
))
(declare-fun rules!1920 () List!2652)

(declare-datatypes ((LexerInterface!345 0))(
  ( (LexerInterfaceExt!342 (__x!2450 Int)) (Lexer!343) )
))
(declare-fun thiss!17480 () LexerInterface!345)

(declare-fun rulesProduceEachTokenIndividuallyList!85 (LexerInterface!345 List!2652 List!2651) Bool)

(assert (=> b!152478 (= res!69784 (rulesProduceEachTokenIndividuallyList!85 thiss!17480 rules!1920 (t!24985 tokens!465)))))

(declare-fun lt!44707 () List!2650)

(declare-fun list!929 (BalanceConc!1488) List!2650)

(declare-fun charsOf!114 (Token!662) BalanceConc!1488)

(assert (=> b!152478 (= lt!44707 (list!929 (charsOf!114 (h!8038 tokens!465))))))

(declare-fun lt!44704 () List!2650)

(declare-fun separatorToken!170 () Token!662)

(declare-fun ++!568 (List!2650 List!2650) List!2650)

(declare-fun printWithSeparatorTokenWhenNeededList!38 (LexerInterface!345 List!2652 List!2651 Token!662) List!2650)

(assert (=> b!152478 (= lt!44704 (++!568 (list!929 (charsOf!114 separatorToken!170)) (printWithSeparatorTokenWhenNeededList!38 thiss!17480 rules!1920 (t!24985 tokens!465) separatorToken!170)))))

(declare-fun b!152479 () Bool)

(declare-fun e!91154 () Bool)

(declare-fun e!91163 () Bool)

(declare-fun tp!79177 () Bool)

(declare-fun inv!3436 (String!3485) Bool)

(declare-fun inv!3439 (TokenValueInjection!734) Bool)

(assert (=> b!152479 (= e!91154 (and tp!79177 (inv!3436 (tag!637 (rule!966 separatorToken!170))) (inv!3439 (transformation!459 (rule!966 separatorToken!170))) e!91163))))

(declare-fun res!69785 () Bool)

(declare-fun e!91147 () Bool)

(assert (=> start!16306 (=> (not res!69785) (not e!91147))))

(get-info :version)

(assert (=> start!16306 (= res!69785 ((_ is Lexer!343) thiss!17480))))

(assert (=> start!16306 e!91147))

(assert (=> start!16306 true))

(declare-fun e!91149 () Bool)

(assert (=> start!16306 e!91149))

(declare-fun e!91162 () Bool)

(declare-fun inv!3440 (Token!662) Bool)

(assert (=> start!16306 (and (inv!3440 separatorToken!170) e!91162)))

(declare-fun e!91150 () Bool)

(assert (=> start!16306 e!91150))

(declare-fun e!91156 () Bool)

(assert (=> b!152480 (= e!91156 (and tp!79172 tp!79181))))

(declare-fun b!152481 () Bool)

(declare-fun tp!79179 () Bool)

(assert (=> b!152481 (= e!91151 (and tp!79179 (inv!3436 (tag!637 (rule!966 (h!8038 tokens!465)))) (inv!3439 (transformation!459 (rule!966 (h!8038 tokens!465)))) e!91156))))

(declare-fun b!152482 () Bool)

(declare-fun lambda!3952 () Int)

(declare-fun forall!453 (List!2651 Int) Bool)

(assert (=> b!152482 (= e!91165 (not (forall!453 (t!24985 tokens!465) lambda!3952)))))

(assert (=> b!152483 (= e!91163 (and tp!79175 tp!79170))))

(declare-fun b!152484 () Bool)

(declare-fun e!91148 () Bool)

(assert (=> b!152484 (= e!91147 e!91148)))

(declare-fun res!69787 () Bool)

(assert (=> b!152484 (=> (not res!69787) (not e!91148))))

(declare-datatypes ((IArray!1483 0))(
  ( (IArray!1484 (innerList!799 List!2651)) )
))
(declare-datatypes ((Conc!741 0))(
  ( (Node!741 (left!1993 Conc!741) (right!2323 Conc!741) (csize!1712 Int) (cheight!952 Int)) (Leaf!1310 (xs!3336 IArray!1483) (csize!1713 Int)) (Empty!741) )
))
(declare-datatypes ((BalanceConc!1490 0))(
  ( (BalanceConc!1491 (c!30791 Conc!741)) )
))
(declare-fun lt!44705 () BalanceConc!1490)

(declare-fun rulesProduceEachTokenIndividually!137 (LexerInterface!345 List!2652 BalanceConc!1490) Bool)

(assert (=> b!152484 (= res!69787 (rulesProduceEachTokenIndividually!137 thiss!17480 rules!1920 lt!44705))))

(declare-fun seqFromList!295 (List!2651) BalanceConc!1490)

(assert (=> b!152484 (= lt!44705 (seqFromList!295 tokens!465))))

(declare-fun b!152485 () Bool)

(declare-fun res!69783 () Bool)

(assert (=> b!152485 (=> (not res!69783) (not e!91147))))

(declare-fun rulesInvariant!311 (LexerInterface!345 List!2652) Bool)

(assert (=> b!152485 (= res!69783 (rulesInvariant!311 thiss!17480 rules!1920))))

(declare-fun b!152486 () Bool)

(declare-fun res!69782 () Bool)

(assert (=> b!152486 (=> (not res!69782) (not e!91148))))

(assert (=> b!152486 (= res!69782 (forall!453 tokens!465 lambda!3952))))

(declare-fun b!152487 () Bool)

(declare-fun res!69790 () Bool)

(assert (=> b!152487 (=> (not res!69790) (not e!91158))))

(declare-fun lt!44708 () List!2650)

(declare-fun lt!44706 () List!2650)

(declare-fun seqFromList!296 (List!2650) BalanceConc!1488)

(assert (=> b!152487 (= res!69790 (= (list!929 (seqFromList!296 lt!44708)) lt!44706))))

(declare-fun b!152488 () Bool)

(declare-fun res!69786 () Bool)

(assert (=> b!152488 (=> (not res!69786) (not e!91148))))

(assert (=> b!152488 (= res!69786 ((_ is Cons!2641) tokens!465))))

(declare-fun b!152489 () Bool)

(declare-fun tp!79178 () Bool)

(assert (=> b!152489 (= e!91150 (and (inv!3440 (h!8038 tokens!465)) e!91164 tp!79178))))

(declare-fun tp!79176 () Bool)

(declare-fun e!91159 () Bool)

(declare-fun e!91160 () Bool)

(declare-fun b!152490 () Bool)

(assert (=> b!152490 (= e!91160 (and tp!79176 (inv!3436 (tag!637 (h!8039 rules!1920))) (inv!3439 (transformation!459 (h!8039 rules!1920))) e!91159))))

(declare-fun tp!79171 () Bool)

(declare-fun b!152491 () Bool)

(assert (=> b!152491 (= e!91162 (and (inv!21 (value!17397 separatorToken!170)) e!91154 tp!79171))))

(assert (=> b!152492 (= e!91159 (and tp!79180 tp!79173))))

(declare-fun b!152493 () Bool)

(declare-fun tp!79169 () Bool)

(assert (=> b!152493 (= e!91149 (and e!91160 tp!79169))))

(declare-fun b!152494 () Bool)

(declare-fun res!69788 () Bool)

(assert (=> b!152494 (=> (not res!69788) (not e!91147))))

(declare-fun isEmpty!1046 (List!2652) Bool)

(assert (=> b!152494 (= res!69788 (not (isEmpty!1046 rules!1920)))))

(declare-fun b!152495 () Bool)

(declare-fun res!69792 () Bool)

(assert (=> b!152495 (=> (not res!69792) (not e!91148))))

(assert (=> b!152495 (= res!69792 (isSeparator!459 (rule!966 separatorToken!170)))))

(declare-fun b!152496 () Bool)

(declare-fun res!69791 () Bool)

(assert (=> b!152496 (=> (not res!69791) (not e!91148))))

(declare-fun sepAndNonSepRulesDisjointChars!48 (List!2652 List!2652) Bool)

(assert (=> b!152496 (= res!69791 (sepAndNonSepRulesDisjointChars!48 rules!1920 rules!1920))))

(declare-fun b!152497 () Bool)

(assert (=> b!152497 (= e!91148 e!91158)))

(declare-fun res!69793 () Bool)

(assert (=> b!152497 (=> (not res!69793) (not e!91158))))

(assert (=> b!152497 (= res!69793 (= lt!44708 lt!44706))))

(declare-fun printWithSeparatorTokenWhenNeededRec!28 (LexerInterface!345 List!2652 BalanceConc!1490 Token!662 Int) BalanceConc!1488)

(assert (=> b!152497 (= lt!44706 (list!929 (printWithSeparatorTokenWhenNeededRec!28 thiss!17480 rules!1920 lt!44705 separatorToken!170 0)))))

(assert (=> b!152497 (= lt!44708 (printWithSeparatorTokenWhenNeededList!38 thiss!17480 rules!1920 tokens!465 separatorToken!170))))

(declare-fun b!152498 () Bool)

(declare-fun res!69789 () Bool)

(assert (=> b!152498 (=> (not res!69789) (not e!91148))))

(declare-fun rulesProduceIndividualToken!94 (LexerInterface!345 List!2652 Token!662) Bool)

(assert (=> b!152498 (= res!69789 (rulesProduceIndividualToken!94 thiss!17480 rules!1920 separatorToken!170))))

(assert (= (and start!16306 res!69785) b!152494))

(assert (= (and b!152494 res!69788) b!152485))

(assert (= (and b!152485 res!69783) b!152484))

(assert (= (and b!152484 res!69787) b!152498))

(assert (= (and b!152498 res!69789) b!152495))

(assert (= (and b!152495 res!69792) b!152486))

(assert (= (and b!152486 res!69782) b!152496))

(assert (= (and b!152496 res!69791) b!152488))

(assert (= (and b!152488 res!69786) b!152497))

(assert (= (and b!152497 res!69793) b!152487))

(assert (= (and b!152487 res!69790) b!152478))

(assert (= (and b!152478 res!69784) b!152482))

(assert (= b!152490 b!152492))

(assert (= b!152493 b!152490))

(assert (= (and start!16306 ((_ is Cons!2642) rules!1920)) b!152493))

(assert (= b!152479 b!152483))

(assert (= b!152491 b!152479))

(assert (= start!16306 b!152491))

(assert (= b!152481 b!152480))

(assert (= b!152477 b!152481))

(assert (= b!152489 b!152477))

(assert (= (and start!16306 ((_ is Cons!2641) tokens!465)) b!152489))

(declare-fun m!137395 () Bool)

(assert (=> start!16306 m!137395))

(declare-fun m!137397 () Bool)

(assert (=> b!152482 m!137397))

(declare-fun m!137399 () Bool)

(assert (=> b!152478 m!137399))

(declare-fun m!137401 () Bool)

(assert (=> b!152478 m!137401))

(declare-fun m!137403 () Bool)

(assert (=> b!152478 m!137403))

(declare-fun m!137405 () Bool)

(assert (=> b!152478 m!137405))

(assert (=> b!152478 m!137403))

(assert (=> b!152478 m!137405))

(assert (=> b!152478 m!137399))

(declare-fun m!137407 () Bool)

(assert (=> b!152478 m!137407))

(declare-fun m!137409 () Bool)

(assert (=> b!152478 m!137409))

(declare-fun m!137411 () Bool)

(assert (=> b!152478 m!137411))

(assert (=> b!152478 m!137409))

(declare-fun m!137413 () Bool)

(assert (=> b!152498 m!137413))

(declare-fun m!137415 () Bool)

(assert (=> b!152487 m!137415))

(assert (=> b!152487 m!137415))

(declare-fun m!137417 () Bool)

(assert (=> b!152487 m!137417))

(declare-fun m!137419 () Bool)

(assert (=> b!152490 m!137419))

(declare-fun m!137421 () Bool)

(assert (=> b!152490 m!137421))

(declare-fun m!137423 () Bool)

(assert (=> b!152496 m!137423))

(declare-fun m!137425 () Bool)

(assert (=> b!152497 m!137425))

(assert (=> b!152497 m!137425))

(declare-fun m!137427 () Bool)

(assert (=> b!152497 m!137427))

(declare-fun m!137429 () Bool)

(assert (=> b!152497 m!137429))

(declare-fun m!137431 () Bool)

(assert (=> b!152491 m!137431))

(declare-fun m!137433 () Bool)

(assert (=> b!152485 m!137433))

(declare-fun m!137435 () Bool)

(assert (=> b!152489 m!137435))

(declare-fun m!137437 () Bool)

(assert (=> b!152494 m!137437))

(declare-fun m!137439 () Bool)

(assert (=> b!152479 m!137439))

(declare-fun m!137441 () Bool)

(assert (=> b!152479 m!137441))

(declare-fun m!137443 () Bool)

(assert (=> b!152481 m!137443))

(declare-fun m!137445 () Bool)

(assert (=> b!152481 m!137445))

(declare-fun m!137447 () Bool)

(assert (=> b!152484 m!137447))

(declare-fun m!137449 () Bool)

(assert (=> b!152484 m!137449))

(declare-fun m!137451 () Bool)

(assert (=> b!152486 m!137451))

(declare-fun m!137453 () Bool)

(assert (=> b!152477 m!137453))

(check-sat b_and!8867 b_and!8875 (not b!152478) (not b!152489) (not b!152482) (not b!152498) (not b!152496) (not b!152484) b_and!8871 (not b!152490) (not b_next!5575) (not b_next!5571) (not b_next!5573) (not b!152477) (not start!16306) (not b!152491) b_and!8869 (not b!152479) (not b!152485) (not b!152497) (not b!152487) (not b!152481) b_and!8873 (not b!152486) (not b!152493) (not b_next!5577) (not b_next!5579) (not b_next!5569) (not b!152494) b_and!8865)
(check-sat b_and!8871 b_and!8867 b_and!8875 b_and!8869 b_and!8873 (not b_next!5577) b_and!8865 (not b_next!5575) (not b_next!5571) (not b_next!5573) (not b_next!5579) (not b_next!5569))
(get-model)

(declare-fun d!36661 () Bool)

(declare-fun res!69815 () Bool)

(declare-fun e!91179 () Bool)

(assert (=> d!36661 (=> res!69815 e!91179)))

(assert (=> d!36661 (= res!69815 ((_ is Nil!2641) (t!24985 tokens!465)))))

(assert (=> d!36661 (= (forall!453 (t!24985 tokens!465) lambda!3952) e!91179)))

(declare-fun b!152512 () Bool)

(declare-fun e!91180 () Bool)

(assert (=> b!152512 (= e!91179 e!91180)))

(declare-fun res!69816 () Bool)

(assert (=> b!152512 (=> (not res!69816) (not e!91180))))

(declare-fun dynLambda!925 (Int Token!662) Bool)

(assert (=> b!152512 (= res!69816 (dynLambda!925 lambda!3952 (h!8038 (t!24985 tokens!465))))))

(declare-fun b!152513 () Bool)

(assert (=> b!152513 (= e!91180 (forall!453 (t!24985 (t!24985 tokens!465)) lambda!3952))))

(assert (= (and d!36661 (not res!69815)) b!152512))

(assert (= (and b!152512 res!69816) b!152513))

(declare-fun b_lambda!2837 () Bool)

(assert (=> (not b_lambda!2837) (not b!152512)))

(declare-fun m!137465 () Bool)

(assert (=> b!152512 m!137465))

(declare-fun m!137467 () Bool)

(assert (=> b!152513 m!137467))

(assert (=> b!152482 d!36661))

(declare-fun d!36667 () Bool)

(assert (=> d!36667 (= (isEmpty!1046 rules!1920) ((_ is Nil!2642) rules!1920))))

(assert (=> b!152494 d!36667))

(declare-fun d!36669 () Bool)

(declare-fun res!69819 () Bool)

(declare-fun e!91183 () Bool)

(assert (=> d!36669 (=> (not res!69819) (not e!91183))))

(declare-fun rulesValid!125 (LexerInterface!345 List!2652) Bool)

(assert (=> d!36669 (= res!69819 (rulesValid!125 thiss!17480 rules!1920))))

(assert (=> d!36669 (= (rulesInvariant!311 thiss!17480 rules!1920) e!91183)))

(declare-fun b!152516 () Bool)

(declare-datatypes ((List!2654 0))(
  ( (Nil!2644) (Cons!2644 (h!8041 String!3485) (t!25054 List!2654)) )
))
(declare-fun noDuplicateTag!125 (LexerInterface!345 List!2652 List!2654) Bool)

(assert (=> b!152516 (= e!91183 (noDuplicateTag!125 thiss!17480 rules!1920 Nil!2644))))

(assert (= (and d!36669 res!69819) b!152516))

(declare-fun m!137469 () Bool)

(assert (=> d!36669 m!137469))

(declare-fun m!137471 () Bool)

(assert (=> b!152516 m!137471))

(assert (=> b!152485 d!36669))

(declare-fun bs!14019 () Bool)

(declare-fun d!36671 () Bool)

(assert (= bs!14019 (and d!36671 b!152486)))

(declare-fun lambda!3960 () Int)

(assert (=> bs!14019 (not (= lambda!3960 lambda!3952))))

(declare-fun b!152561 () Bool)

(declare-fun e!91216 () Bool)

(assert (=> b!152561 (= e!91216 true)))

(declare-fun b!152560 () Bool)

(declare-fun e!91215 () Bool)

(assert (=> b!152560 (= e!91215 e!91216)))

(declare-fun b!152559 () Bool)

(declare-fun e!91214 () Bool)

(assert (=> b!152559 (= e!91214 e!91215)))

(assert (=> d!36671 e!91214))

(assert (= b!152560 b!152561))

(assert (= b!152559 b!152560))

(assert (= (and d!36671 ((_ is Cons!2642) rules!1920)) b!152559))

(declare-fun order!1323 () Int)

(declare-fun order!1321 () Int)

(declare-fun dynLambda!926 (Int Int) Int)

(declare-fun dynLambda!927 (Int Int) Int)

(assert (=> b!152561 (< (dynLambda!926 order!1321 (toValue!1098 (transformation!459 (h!8039 rules!1920)))) (dynLambda!927 order!1323 lambda!3960))))

(declare-fun order!1325 () Int)

(declare-fun dynLambda!928 (Int Int) Int)

(assert (=> b!152561 (< (dynLambda!928 order!1325 (toChars!957 (transformation!459 (h!8039 rules!1920)))) (dynLambda!927 order!1323 lambda!3960))))

(assert (=> d!36671 true))

(declare-fun e!91207 () Bool)

(assert (=> d!36671 e!91207))

(declare-fun res!69834 () Bool)

(assert (=> d!36671 (=> (not res!69834) (not e!91207))))

(declare-fun lt!44717 () Bool)

(declare-fun list!932 (BalanceConc!1490) List!2651)

(assert (=> d!36671 (= res!69834 (= lt!44717 (forall!453 (list!932 lt!44705) lambda!3960)))))

(declare-fun forall!454 (BalanceConc!1490 Int) Bool)

(assert (=> d!36671 (= lt!44717 (forall!454 lt!44705 lambda!3960))))

(assert (=> d!36671 (not (isEmpty!1046 rules!1920))))

(assert (=> d!36671 (= (rulesProduceEachTokenIndividually!137 thiss!17480 rules!1920 lt!44705) lt!44717)))

(declare-fun b!152550 () Bool)

(assert (=> b!152550 (= e!91207 (= lt!44717 (rulesProduceEachTokenIndividuallyList!85 thiss!17480 rules!1920 (list!932 lt!44705))))))

(assert (= (and d!36671 res!69834) b!152550))

(declare-fun m!137493 () Bool)

(assert (=> d!36671 m!137493))

(assert (=> d!36671 m!137493))

(declare-fun m!137495 () Bool)

(assert (=> d!36671 m!137495))

(declare-fun m!137497 () Bool)

(assert (=> d!36671 m!137497))

(assert (=> d!36671 m!137437))

(assert (=> b!152550 m!137493))

(assert (=> b!152550 m!137493))

(declare-fun m!137499 () Bool)

(assert (=> b!152550 m!137499))

(assert (=> b!152484 d!36671))

(declare-fun d!36677 () Bool)

(declare-fun fromListB!123 (List!2651) BalanceConc!1490)

(assert (=> d!36677 (= (seqFromList!295 tokens!465) (fromListB!123 tokens!465))))

(declare-fun bs!14020 () Bool)

(assert (= bs!14020 d!36677))

(declare-fun m!137501 () Bool)

(assert (=> bs!14020 m!137501))

(assert (=> b!152484 d!36677))

(declare-fun d!36679 () Bool)

(declare-fun list!933 (Conc!740) List!2650)

(assert (=> d!36679 (= (list!929 (printWithSeparatorTokenWhenNeededRec!28 thiss!17480 rules!1920 lt!44705 separatorToken!170 0)) (list!933 (c!30789 (printWithSeparatorTokenWhenNeededRec!28 thiss!17480 rules!1920 lt!44705 separatorToken!170 0))))))

(declare-fun bs!14021 () Bool)

(assert (= bs!14021 d!36679))

(declare-fun m!137503 () Bool)

(assert (=> bs!14021 m!137503))

(assert (=> b!152497 d!36679))

(declare-fun bs!14028 () Bool)

(declare-fun d!36681 () Bool)

(assert (= bs!14028 (and d!36681 b!152486)))

(declare-fun lambda!3968 () Int)

(assert (=> bs!14028 (= lambda!3968 lambda!3952)))

(declare-fun bs!14029 () Bool)

(assert (= bs!14029 (and d!36681 d!36671)))

(assert (=> bs!14029 (not (= lambda!3968 lambda!3960))))

(declare-fun bs!14030 () Bool)

(declare-fun b!152653 () Bool)

(assert (= bs!14030 (and b!152653 b!152486)))

(declare-fun lambda!3969 () Int)

(assert (=> bs!14030 (not (= lambda!3969 lambda!3952))))

(declare-fun bs!14031 () Bool)

(assert (= bs!14031 (and b!152653 d!36671)))

(assert (=> bs!14031 (= lambda!3969 lambda!3960)))

(declare-fun bs!14032 () Bool)

(assert (= bs!14032 (and b!152653 d!36681)))

(assert (=> bs!14032 (not (= lambda!3969 lambda!3968))))

(declare-fun b!152656 () Bool)

(declare-fun e!91274 () Bool)

(assert (=> b!152656 (= e!91274 true)))

(declare-fun b!152655 () Bool)

(declare-fun e!91273 () Bool)

(assert (=> b!152655 (= e!91273 e!91274)))

(declare-fun b!152654 () Bool)

(declare-fun e!91272 () Bool)

(assert (=> b!152654 (= e!91272 e!91273)))

(assert (=> b!152653 e!91272))

(assert (= b!152655 b!152656))

(assert (= b!152654 b!152655))

(assert (= (and b!152653 ((_ is Cons!2642) rules!1920)) b!152654))

(assert (=> b!152656 (< (dynLambda!926 order!1321 (toValue!1098 (transformation!459 (h!8039 rules!1920)))) (dynLambda!927 order!1323 lambda!3969))))

(assert (=> b!152656 (< (dynLambda!928 order!1325 (toChars!957 (transformation!459 (h!8039 rules!1920)))) (dynLambda!927 order!1323 lambda!3969))))

(assert (=> b!152653 true))

(declare-fun c!30824 () Bool)

(declare-fun call!6204 () BalanceConc!1488)

(declare-fun call!6203 () BalanceConc!1488)

(declare-fun call!6202 () BalanceConc!1488)

(declare-fun bm!6197 () Bool)

(declare-fun lt!44780 () BalanceConc!1488)

(declare-fun ++!570 (BalanceConc!1488 BalanceConc!1488) BalanceConc!1488)

(assert (=> bm!6197 (= call!6203 (++!570 call!6202 (ite c!30824 lt!44780 call!6204)))))

(declare-fun b!152645 () Bool)

(declare-fun e!91269 () Bool)

(declare-datatypes ((tuple2!2582 0))(
  ( (tuple2!2583 (_1!1507 Token!662) (_2!1507 BalanceConc!1488)) )
))
(declare-datatypes ((Option!244 0))(
  ( (None!243) (Some!243 (v!13626 tuple2!2582)) )
))
(declare-fun lt!44782 () Option!244)

(declare-fun apply!349 (BalanceConc!1490 Int) Token!662)

(assert (=> b!152645 (= e!91269 (= (_1!1507 (v!13626 lt!44782)) (apply!349 lt!44705 0)))))

(declare-fun b!152646 () Bool)

(declare-fun c!30823 () Bool)

(declare-fun e!91271 () Bool)

(assert (=> b!152646 (= c!30823 e!91271)))

(declare-fun res!69853 () Bool)

(assert (=> b!152646 (=> (not res!69853) (not e!91271))))

(assert (=> b!152646 (= res!69853 ((_ is Some!243) lt!44782))))

(declare-fun e!91270 () BalanceConc!1488)

(declare-fun e!91268 () BalanceConc!1488)

(assert (=> b!152646 (= e!91270 e!91268)))

(declare-fun b!152647 () Bool)

(assert (=> b!152647 (= e!91268 (BalanceConc!1489 Empty!740))))

(declare-fun call!6206 () Token!662)

(declare-fun print!94 (LexerInterface!345 BalanceConc!1490) BalanceConc!1488)

(declare-fun singletonSeq!27 (Token!662) BalanceConc!1490)

(declare-fun printTailRec!57 (LexerInterface!345 BalanceConc!1490 Int BalanceConc!1488) BalanceConc!1488)

(assert (=> b!152647 (= (print!94 thiss!17480 (singletonSeq!27 call!6206)) (printTailRec!57 thiss!17480 (singletonSeq!27 call!6206) 0 (BalanceConc!1489 Empty!740)))))

(declare-datatypes ((Unit!2038 0))(
  ( (Unit!2039) )
))
(declare-fun lt!44775 () Unit!2038)

(declare-fun Unit!2040 () Unit!2038)

(assert (=> b!152647 (= lt!44775 Unit!2040)))

(declare-fun lt!44787 () Unit!2038)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!16 (LexerInterface!345 List!2652 List!2650 List!2650) Unit!2038)

(assert (=> b!152647 (= lt!44787 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!16 thiss!17480 rules!1920 (list!929 call!6204) (list!929 lt!44780)))))

(assert (=> b!152647 false))

(declare-fun lt!44785 () Unit!2038)

(declare-fun Unit!2041 () Unit!2038)

(assert (=> b!152647 (= lt!44785 Unit!2041)))

(declare-fun bm!6198 () Bool)

(assert (=> bm!6198 (= call!6204 (charsOf!114 (ite c!30823 separatorToken!170 call!6206)))))

(declare-fun b!152649 () Bool)

(declare-fun e!91266 () BalanceConc!1488)

(assert (=> b!152649 (= e!91266 (BalanceConc!1489 Empty!740))))

(declare-fun bm!6199 () Bool)

(declare-fun call!6205 () Token!662)

(assert (=> bm!6199 (= call!6202 (charsOf!114 (ite c!30824 call!6205 call!6206)))))

(declare-fun b!152650 () Bool)

(declare-fun e!91267 () Bool)

(declare-fun size!2254 (BalanceConc!1490) Int)

(assert (=> b!152650 (= e!91267 (<= 0 (size!2254 lt!44705)))))

(declare-fun bm!6200 () Bool)

(assert (=> bm!6200 (= call!6206 call!6205)))

(declare-fun b!152651 () Bool)

(assert (=> b!152651 (= e!91268 (++!570 call!6203 lt!44780))))

(declare-fun b!152652 () Bool)

(assert (=> b!152652 (= e!91271 (not (= (_1!1507 (v!13626 lt!44782)) call!6205)))))

(declare-fun b!152648 () Bool)

(assert (=> b!152648 (= e!91270 call!6203)))

(declare-fun lt!44784 () BalanceConc!1488)

(declare-fun dropList!68 (BalanceConc!1490 Int) List!2651)

(assert (=> d!36681 (= (list!929 lt!44784) (printWithSeparatorTokenWhenNeededList!38 thiss!17480 rules!1920 (dropList!68 lt!44705 0) separatorToken!170))))

(assert (=> d!36681 (= lt!44784 e!91266)))

(declare-fun c!30822 () Bool)

(assert (=> d!36681 (= c!30822 (>= 0 (size!2254 lt!44705)))))

(declare-fun lt!44786 () Unit!2038)

(declare-fun lemmaContentSubsetPreservesForall!12 (List!2651 List!2651 Int) Unit!2038)

(assert (=> d!36681 (= lt!44786 (lemmaContentSubsetPreservesForall!12 (list!932 lt!44705) (dropList!68 lt!44705 0) lambda!3968))))

(assert (=> d!36681 e!91267))

(declare-fun res!69854 () Bool)

(assert (=> d!36681 (=> (not res!69854) (not e!91267))))

(assert (=> d!36681 (= res!69854 (>= 0 0))))

(assert (=> d!36681 (= (printWithSeparatorTokenWhenNeededRec!28 thiss!17480 rules!1920 lt!44705 separatorToken!170 0) lt!44784)))

(declare-fun bm!6201 () Bool)

(assert (=> bm!6201 (= call!6205 (apply!349 lt!44705 0))))

(assert (=> b!152653 (= e!91266 e!91270)))

(declare-fun lt!44779 () List!2651)

(assert (=> b!152653 (= lt!44779 (list!932 lt!44705))))

(declare-fun lt!44776 () Unit!2038)

(declare-fun lemmaDropApply!108 (List!2651 Int) Unit!2038)

(assert (=> b!152653 (= lt!44776 (lemmaDropApply!108 lt!44779 0))))

(declare-fun head!582 (List!2651) Token!662)

(declare-fun drop!121 (List!2651 Int) List!2651)

(declare-fun apply!350 (List!2651 Int) Token!662)

(assert (=> b!152653 (= (head!582 (drop!121 lt!44779 0)) (apply!350 lt!44779 0))))

(declare-fun lt!44778 () Unit!2038)

(assert (=> b!152653 (= lt!44778 lt!44776)))

(declare-fun lt!44777 () List!2651)

(assert (=> b!152653 (= lt!44777 (list!932 lt!44705))))

(declare-fun lt!44783 () Unit!2038)

(declare-fun lemmaDropTail!100 (List!2651 Int) Unit!2038)

(assert (=> b!152653 (= lt!44783 (lemmaDropTail!100 lt!44777 0))))

(declare-fun tail!322 (List!2651) List!2651)

(assert (=> b!152653 (= (tail!322 (drop!121 lt!44777 0)) (drop!121 lt!44777 (+ 0 1)))))

(declare-fun lt!44781 () Unit!2038)

(assert (=> b!152653 (= lt!44781 lt!44783)))

(declare-fun lt!44774 () Unit!2038)

(declare-fun forallContained!52 (List!2651 Int Token!662) Unit!2038)

(assert (=> b!152653 (= lt!44774 (forallContained!52 (list!932 lt!44705) lambda!3969 (apply!349 lt!44705 0)))))

(assert (=> b!152653 (= lt!44780 (printWithSeparatorTokenWhenNeededRec!28 thiss!17480 rules!1920 lt!44705 separatorToken!170 (+ 0 1)))))

(declare-fun maxPrefixZipperSequence!68 (LexerInterface!345 List!2652 BalanceConc!1488) Option!244)

(assert (=> b!152653 (= lt!44782 (maxPrefixZipperSequence!68 thiss!17480 rules!1920 (++!570 (charsOf!114 (apply!349 lt!44705 0)) lt!44780)))))

(declare-fun res!69855 () Bool)

(assert (=> b!152653 (= res!69855 ((_ is Some!243) lt!44782))))

(assert (=> b!152653 (=> (not res!69855) (not e!91269))))

(assert (=> b!152653 (= c!30824 e!91269)))

(assert (= (and d!36681 res!69854) b!152650))

(assert (= (and d!36681 c!30822) b!152649))

(assert (= (and d!36681 (not c!30822)) b!152653))

(assert (= (and b!152653 res!69855) b!152645))

(assert (= (and b!152653 c!30824) b!152648))

(assert (= (and b!152653 (not c!30824)) b!152646))

(assert (= (and b!152646 res!69853) b!152652))

(assert (= (and b!152646 c!30823) b!152651))

(assert (= (and b!152646 (not c!30823)) b!152647))

(assert (= (or b!152651 b!152647) bm!6200))

(assert (= (or b!152651 b!152647) bm!6198))

(assert (= (or b!152648 bm!6200 b!152652) bm!6201))

(assert (= (or b!152648 b!152651) bm!6199))

(assert (= (or b!152648 b!152651) bm!6197))

(declare-fun m!137581 () Bool)

(assert (=> b!152645 m!137581))

(declare-fun m!137583 () Bool)

(assert (=> b!152653 m!137583))

(assert (=> b!152653 m!137581))

(declare-fun m!137585 () Bool)

(assert (=> b!152653 m!137585))

(declare-fun m!137587 () Bool)

(assert (=> b!152653 m!137587))

(assert (=> b!152653 m!137581))

(declare-fun m!137589 () Bool)

(assert (=> b!152653 m!137589))

(assert (=> b!152653 m!137585))

(declare-fun m!137591 () Bool)

(assert (=> b!152653 m!137591))

(declare-fun m!137593 () Bool)

(assert (=> b!152653 m!137593))

(declare-fun m!137595 () Bool)

(assert (=> b!152653 m!137595))

(assert (=> b!152653 m!137591))

(declare-fun m!137597 () Bool)

(assert (=> b!152653 m!137597))

(declare-fun m!137599 () Bool)

(assert (=> b!152653 m!137599))

(declare-fun m!137601 () Bool)

(assert (=> b!152653 m!137601))

(assert (=> b!152653 m!137493))

(assert (=> b!152653 m!137581))

(declare-fun m!137603 () Bool)

(assert (=> b!152653 m!137603))

(declare-fun m!137605 () Bool)

(assert (=> b!152653 m!137605))

(assert (=> b!152653 m!137589))

(assert (=> b!152653 m!137597))

(assert (=> b!152653 m!137493))

(declare-fun m!137607 () Bool)

(assert (=> b!152653 m!137607))

(declare-fun m!137609 () Bool)

(assert (=> bm!6198 m!137609))

(declare-fun m!137611 () Bool)

(assert (=> bm!6199 m!137611))

(assert (=> bm!6201 m!137581))

(declare-fun m!137613 () Bool)

(assert (=> b!152650 m!137613))

(declare-fun m!137615 () Bool)

(assert (=> b!152651 m!137615))

(declare-fun m!137617 () Bool)

(assert (=> bm!6197 m!137617))

(declare-fun m!137619 () Bool)

(assert (=> b!152647 m!137619))

(declare-fun m!137621 () Bool)

(assert (=> b!152647 m!137621))

(assert (=> b!152647 m!137619))

(declare-fun m!137623 () Bool)

(assert (=> b!152647 m!137623))

(declare-fun m!137625 () Bool)

(assert (=> b!152647 m!137625))

(assert (=> b!152647 m!137621))

(assert (=> b!152647 m!137625))

(declare-fun m!137627 () Bool)

(assert (=> b!152647 m!137627))

(assert (=> b!152647 m!137619))

(declare-fun m!137629 () Bool)

(assert (=> b!152647 m!137629))

(assert (=> d!36681 m!137493))

(declare-fun m!137631 () Bool)

(assert (=> d!36681 m!137631))

(declare-fun m!137633 () Bool)

(assert (=> d!36681 m!137633))

(assert (=> d!36681 m!137631))

(declare-fun m!137635 () Bool)

(assert (=> d!36681 m!137635))

(assert (=> d!36681 m!137493))

(assert (=> d!36681 m!137631))

(declare-fun m!137637 () Bool)

(assert (=> d!36681 m!137637))

(assert (=> d!36681 m!137613))

(assert (=> b!152497 d!36681))

(declare-fun bs!14045 () Bool)

(declare-fun b!152726 () Bool)

(assert (= bs!14045 (and b!152726 b!152486)))

(declare-fun lambda!3979 () Int)

(assert (=> bs!14045 (not (= lambda!3979 lambda!3952))))

(declare-fun bs!14046 () Bool)

(assert (= bs!14046 (and b!152726 d!36671)))

(assert (=> bs!14046 (= lambda!3979 lambda!3960)))

(declare-fun bs!14047 () Bool)

(assert (= bs!14047 (and b!152726 d!36681)))

(assert (=> bs!14047 (not (= lambda!3979 lambda!3968))))

(declare-fun bs!14048 () Bool)

(assert (= bs!14048 (and b!152726 b!152653)))

(assert (=> bs!14048 (= lambda!3979 lambda!3969)))

(declare-fun b!152731 () Bool)

(declare-fun e!91323 () Bool)

(assert (=> b!152731 (= e!91323 true)))

(declare-fun b!152730 () Bool)

(declare-fun e!91322 () Bool)

(assert (=> b!152730 (= e!91322 e!91323)))

(declare-fun b!152729 () Bool)

(declare-fun e!91321 () Bool)

(assert (=> b!152729 (= e!91321 e!91322)))

(assert (=> b!152726 e!91321))

(assert (= b!152730 b!152731))

(assert (= b!152729 b!152730))

(assert (= (and b!152726 ((_ is Cons!2642) rules!1920)) b!152729))

(assert (=> b!152731 (< (dynLambda!926 order!1321 (toValue!1098 (transformation!459 (h!8039 rules!1920)))) (dynLambda!927 order!1323 lambda!3979))))

(assert (=> b!152731 (< (dynLambda!928 order!1325 (toChars!957 (transformation!459 (h!8039 rules!1920)))) (dynLambda!927 order!1323 lambda!3979))))

(assert (=> b!152726 true))

(declare-fun lt!44853 () List!2650)

(declare-fun bm!6232 () Bool)

(declare-fun call!6239 () List!2650)

(declare-fun call!6237 () List!2650)

(declare-fun c!30848 () Bool)

(declare-fun call!6238 () List!2650)

(assert (=> bm!6232 (= call!6238 (++!568 call!6237 (ite c!30848 lt!44853 call!6239)))))

(declare-fun b!152721 () Bool)

(declare-fun e!91319 () BalanceConc!1488)

(assert (=> b!152721 (= e!91319 (charsOf!114 separatorToken!170))))

(declare-fun b!152722 () Bool)

(declare-fun e!91317 () List!2650)

(assert (=> b!152722 (= e!91317 call!6238)))

(declare-fun d!36703 () Bool)

(declare-fun c!30850 () Bool)

(assert (=> d!36703 (= c!30850 ((_ is Cons!2641) tokens!465))))

(declare-fun e!91318 () List!2650)

(assert (=> d!36703 (= (printWithSeparatorTokenWhenNeededList!38 thiss!17480 rules!1920 tokens!465 separatorToken!170) e!91318)))

(declare-fun b!152723 () Bool)

(declare-fun e!91320 () List!2650)

(assert (=> b!152723 (= e!91320 Nil!2640)))

(assert (=> b!152723 (= (print!94 thiss!17480 (singletonSeq!27 (h!8038 tokens!465))) (printTailRec!57 thiss!17480 (singletonSeq!27 (h!8038 tokens!465)) 0 (BalanceConc!1489 Empty!740)))))

(declare-fun lt!44848 () Unit!2038)

(declare-fun Unit!2042 () Unit!2038)

(assert (=> b!152723 (= lt!44848 Unit!2042)))

(declare-fun lt!44851 () Unit!2038)

(assert (=> b!152723 (= lt!44851 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!16 thiss!17480 rules!1920 call!6239 lt!44853))))

(assert (=> b!152723 false))

(declare-fun lt!44849 () Unit!2038)

(declare-fun Unit!2043 () Unit!2038)

(assert (=> b!152723 (= lt!44849 Unit!2043)))

(declare-fun b!152724 () Bool)

(declare-fun c!30849 () Bool)

(declare-datatypes ((tuple2!2584 0))(
  ( (tuple2!2585 (_1!1508 Token!662) (_2!1508 List!2650)) )
))
(declare-datatypes ((Option!245 0))(
  ( (None!244) (Some!244 (v!13627 tuple2!2584)) )
))
(declare-fun lt!44852 () Option!245)

(assert (=> b!152724 (= c!30849 (and ((_ is Some!244) lt!44852) (not (= (_1!1508 (v!13627 lt!44852)) (h!8038 tokens!465)))))))

(assert (=> b!152724 (= e!91317 e!91320)))

(declare-fun b!152725 () Bool)

(assert (=> b!152725 (= e!91320 (++!568 call!6238 lt!44853))))

(assert (=> b!152726 (= e!91318 e!91317)))

(declare-fun lt!44850 () Unit!2038)

(assert (=> b!152726 (= lt!44850 (forallContained!52 tokens!465 lambda!3979 (h!8038 tokens!465)))))

(assert (=> b!152726 (= lt!44853 (printWithSeparatorTokenWhenNeededList!38 thiss!17480 rules!1920 (t!24985 tokens!465) separatorToken!170))))

(declare-fun maxPrefix!109 (LexerInterface!345 List!2652 List!2650) Option!245)

(assert (=> b!152726 (= lt!44852 (maxPrefix!109 thiss!17480 rules!1920 (++!568 (list!929 (charsOf!114 (h!8038 tokens!465))) lt!44853)))))

(assert (=> b!152726 (= c!30848 (and ((_ is Some!244) lt!44852) (= (_1!1508 (v!13627 lt!44852)) (h!8038 tokens!465))))))

(declare-fun b!152727 () Bool)

(assert (=> b!152727 (= e!91318 Nil!2640)))

(declare-fun bm!6233 () Bool)

(assert (=> bm!6233 (= call!6239 (list!929 e!91319))))

(declare-fun c!30847 () Bool)

(assert (=> bm!6233 (= c!30847 c!30849)))

(declare-fun b!152728 () Bool)

(declare-fun call!6241 () BalanceConc!1488)

(assert (=> b!152728 (= e!91319 call!6241)))

(declare-fun bm!6234 () Bool)

(declare-fun call!6240 () BalanceConc!1488)

(assert (=> bm!6234 (= call!6237 (list!929 (ite c!30848 call!6240 call!6241)))))

(declare-fun bm!6235 () Bool)

(assert (=> bm!6235 (= call!6241 call!6240)))

(declare-fun bm!6236 () Bool)

(assert (=> bm!6236 (= call!6240 (charsOf!114 (h!8038 tokens!465)))))

(assert (= (and d!36703 c!30850) b!152726))

(assert (= (and d!36703 (not c!30850)) b!152727))

(assert (= (and b!152726 c!30848) b!152722))

(assert (= (and b!152726 (not c!30848)) b!152724))

(assert (= (and b!152724 c!30849) b!152725))

(assert (= (and b!152724 (not c!30849)) b!152723))

(assert (= (or b!152725 b!152723) bm!6235))

(assert (= (or b!152725 b!152723) bm!6233))

(assert (= (and bm!6233 c!30847) b!152721))

(assert (= (and bm!6233 (not c!30847)) b!152728))

(assert (= (or b!152722 bm!6235) bm!6236))

(assert (= (or b!152722 b!152725) bm!6234))

(assert (= (or b!152722 b!152725) bm!6232))

(assert (=> b!152721 m!137403))

(declare-fun m!137727 () Bool)

(assert (=> bm!6234 m!137727))

(declare-fun m!137729 () Bool)

(assert (=> b!152725 m!137729))

(declare-fun m!137731 () Bool)

(assert (=> b!152723 m!137731))

(assert (=> b!152723 m!137731))

(declare-fun m!137733 () Bool)

(assert (=> b!152723 m!137733))

(assert (=> b!152723 m!137731))

(declare-fun m!137735 () Bool)

(assert (=> b!152723 m!137735))

(declare-fun m!137737 () Bool)

(assert (=> b!152723 m!137737))

(declare-fun m!137739 () Bool)

(assert (=> bm!6232 m!137739))

(declare-fun m!137741 () Bool)

(assert (=> b!152726 m!137741))

(declare-fun m!137743 () Bool)

(assert (=> b!152726 m!137743))

(assert (=> b!152726 m!137409))

(assert (=> b!152726 m!137409))

(assert (=> b!152726 m!137411))

(declare-fun m!137745 () Bool)

(assert (=> b!152726 m!137745))

(assert (=> b!152726 m!137399))

(assert (=> b!152726 m!137411))

(assert (=> b!152726 m!137741))

(assert (=> bm!6236 m!137409))

(declare-fun m!137747 () Bool)

(assert (=> bm!6233 m!137747))

(assert (=> b!152497 d!36703))

(declare-fun d!36715 () Bool)

(declare-fun res!69870 () Bool)

(declare-fun e!91324 () Bool)

(assert (=> d!36715 (=> res!69870 e!91324)))

(assert (=> d!36715 (= res!69870 ((_ is Nil!2641) tokens!465))))

(assert (=> d!36715 (= (forall!453 tokens!465 lambda!3952) e!91324)))

(declare-fun b!152732 () Bool)

(declare-fun e!91325 () Bool)

(assert (=> b!152732 (= e!91324 e!91325)))

(declare-fun res!69871 () Bool)

(assert (=> b!152732 (=> (not res!69871) (not e!91325))))

(assert (=> b!152732 (= res!69871 (dynLambda!925 lambda!3952 (h!8038 tokens!465)))))

(declare-fun b!152733 () Bool)

(assert (=> b!152733 (= e!91325 (forall!453 (t!24985 tokens!465) lambda!3952))))

(assert (= (and d!36715 (not res!69870)) b!152732))

(assert (= (and b!152732 res!69871) b!152733))

(declare-fun b_lambda!2845 () Bool)

(assert (=> (not b_lambda!2845) (not b!152732)))

(declare-fun m!137749 () Bool)

(assert (=> b!152732 m!137749))

(assert (=> b!152733 m!137397))

(assert (=> b!152486 d!36715))

(declare-fun d!36717 () Bool)

(declare-fun res!69876 () Bool)

(declare-fun e!91330 () Bool)

(assert (=> d!36717 (=> res!69876 e!91330)))

(assert (=> d!36717 (= res!69876 (not ((_ is Cons!2642) rules!1920)))))

(assert (=> d!36717 (= (sepAndNonSepRulesDisjointChars!48 rules!1920 rules!1920) e!91330)))

(declare-fun b!152738 () Bool)

(declare-fun e!91331 () Bool)

(assert (=> b!152738 (= e!91330 e!91331)))

(declare-fun res!69877 () Bool)

(assert (=> b!152738 (=> (not res!69877) (not e!91331))))

(declare-fun ruleDisjointCharsFromAllFromOtherType!18 (Rule!718 List!2652) Bool)

(assert (=> b!152738 (= res!69877 (ruleDisjointCharsFromAllFromOtherType!18 (h!8039 rules!1920) rules!1920))))

(declare-fun b!152739 () Bool)

(assert (=> b!152739 (= e!91331 (sepAndNonSepRulesDisjointChars!48 rules!1920 (t!24986 rules!1920)))))

(assert (= (and d!36717 (not res!69876)) b!152738))

(assert (= (and b!152738 res!69877) b!152739))

(declare-fun m!137751 () Bool)

(assert (=> b!152738 m!137751))

(declare-fun m!137753 () Bool)

(assert (=> b!152739 m!137753))

(assert (=> b!152496 d!36717))

(declare-fun d!36719 () Bool)

(declare-fun res!69882 () Bool)

(declare-fun e!91334 () Bool)

(assert (=> d!36719 (=> (not res!69882) (not e!91334))))

(declare-fun isEmpty!1049 (List!2650) Bool)

(assert (=> d!36719 (= res!69882 (not (isEmpty!1049 (originalCharacters!502 separatorToken!170))))))

(assert (=> d!36719 (= (inv!3440 separatorToken!170) e!91334)))

(declare-fun b!152744 () Bool)

(declare-fun res!69883 () Bool)

(assert (=> b!152744 (=> (not res!69883) (not e!91334))))

(declare-fun dynLambda!929 (Int TokenValue!481) BalanceConc!1488)

(assert (=> b!152744 (= res!69883 (= (originalCharacters!502 separatorToken!170) (list!929 (dynLambda!929 (toChars!957 (transformation!459 (rule!966 separatorToken!170))) (value!17397 separatorToken!170)))))))

(declare-fun b!152745 () Bool)

(declare-fun size!2255 (List!2650) Int)

(assert (=> b!152745 (= e!91334 (= (size!2251 separatorToken!170) (size!2255 (originalCharacters!502 separatorToken!170))))))

(assert (= (and d!36719 res!69882) b!152744))

(assert (= (and b!152744 res!69883) b!152745))

(declare-fun b_lambda!2847 () Bool)

(assert (=> (not b_lambda!2847) (not b!152744)))

(declare-fun t!25019 () Bool)

(declare-fun tb!5225 () Bool)

(assert (=> (and b!152483 (= (toChars!957 (transformation!459 (rule!966 separatorToken!170))) (toChars!957 (transformation!459 (rule!966 separatorToken!170)))) t!25019) tb!5225))

(declare-fun b!152750 () Bool)

(declare-fun e!91337 () Bool)

(declare-fun tp!79188 () Bool)

(declare-fun inv!3443 (Conc!740) Bool)

(assert (=> b!152750 (= e!91337 (and (inv!3443 (c!30789 (dynLambda!929 (toChars!957 (transformation!459 (rule!966 separatorToken!170))) (value!17397 separatorToken!170)))) tp!79188))))

(declare-fun result!7686 () Bool)

(declare-fun inv!3444 (BalanceConc!1488) Bool)

(assert (=> tb!5225 (= result!7686 (and (inv!3444 (dynLambda!929 (toChars!957 (transformation!459 (rule!966 separatorToken!170))) (value!17397 separatorToken!170))) e!91337))))

(assert (= tb!5225 b!152750))

(declare-fun m!137755 () Bool)

(assert (=> b!152750 m!137755))

(declare-fun m!137757 () Bool)

(assert (=> tb!5225 m!137757))

(assert (=> b!152744 t!25019))

(declare-fun b_and!8889 () Bool)

(assert (= b_and!8867 (and (=> t!25019 result!7686) b_and!8889)))

(declare-fun t!25021 () Bool)

(declare-fun tb!5227 () Bool)

(assert (=> (and b!152480 (= (toChars!957 (transformation!459 (rule!966 (h!8038 tokens!465)))) (toChars!957 (transformation!459 (rule!966 separatorToken!170)))) t!25021) tb!5227))

(declare-fun result!7690 () Bool)

(assert (= result!7690 result!7686))

(assert (=> b!152744 t!25021))

(declare-fun b_and!8891 () Bool)

(assert (= b_and!8871 (and (=> t!25021 result!7690) b_and!8891)))

(declare-fun t!25023 () Bool)

(declare-fun tb!5229 () Bool)

(assert (=> (and b!152492 (= (toChars!957 (transformation!459 (h!8039 rules!1920))) (toChars!957 (transformation!459 (rule!966 separatorToken!170)))) t!25023) tb!5229))

(declare-fun result!7692 () Bool)

(assert (= result!7692 result!7686))

(assert (=> b!152744 t!25023))

(declare-fun b_and!8893 () Bool)

(assert (= b_and!8875 (and (=> t!25023 result!7692) b_and!8893)))

(declare-fun m!137759 () Bool)

(assert (=> d!36719 m!137759))

(declare-fun m!137761 () Bool)

(assert (=> b!152744 m!137761))

(assert (=> b!152744 m!137761))

(declare-fun m!137763 () Bool)

(assert (=> b!152744 m!137763))

(declare-fun m!137765 () Bool)

(assert (=> b!152745 m!137765))

(assert (=> start!16306 d!36719))

(declare-fun b!152761 () Bool)

(declare-fun res!69886 () Bool)

(declare-fun e!91345 () Bool)

(assert (=> b!152761 (=> res!69886 e!91345)))

(assert (=> b!152761 (= res!69886 (not ((_ is IntegerValue!1445) (value!17397 (h!8038 tokens!465)))))))

(declare-fun e!91344 () Bool)

(assert (=> b!152761 (= e!91344 e!91345)))

(declare-fun d!36721 () Bool)

(declare-fun c!30856 () Bool)

(assert (=> d!36721 (= c!30856 ((_ is IntegerValue!1443) (value!17397 (h!8038 tokens!465))))))

(declare-fun e!91346 () Bool)

(assert (=> d!36721 (= (inv!21 (value!17397 (h!8038 tokens!465))) e!91346)))

(declare-fun b!152762 () Bool)

(declare-fun inv!17 (TokenValue!481) Bool)

(assert (=> b!152762 (= e!91344 (inv!17 (value!17397 (h!8038 tokens!465))))))

(declare-fun b!152763 () Bool)

(declare-fun inv!15 (TokenValue!481) Bool)

(assert (=> b!152763 (= e!91345 (inv!15 (value!17397 (h!8038 tokens!465))))))

(declare-fun b!152764 () Bool)

(declare-fun inv!16 (TokenValue!481) Bool)

(assert (=> b!152764 (= e!91346 (inv!16 (value!17397 (h!8038 tokens!465))))))

(declare-fun b!152765 () Bool)

(assert (=> b!152765 (= e!91346 e!91344)))

(declare-fun c!30855 () Bool)

(assert (=> b!152765 (= c!30855 ((_ is IntegerValue!1444) (value!17397 (h!8038 tokens!465))))))

(assert (= (and d!36721 c!30856) b!152764))

(assert (= (and d!36721 (not c!30856)) b!152765))

(assert (= (and b!152765 c!30855) b!152762))

(assert (= (and b!152765 (not c!30855)) b!152761))

(assert (= (and b!152761 (not res!69886)) b!152763))

(declare-fun m!137767 () Bool)

(assert (=> b!152762 m!137767))

(declare-fun m!137769 () Bool)

(assert (=> b!152763 m!137769))

(declare-fun m!137771 () Bool)

(assert (=> b!152764 m!137771))

(assert (=> b!152477 d!36721))

(declare-fun d!36723 () Bool)

(declare-fun lt!44862 () Bool)

(declare-fun e!91392 () Bool)

(assert (=> d!36723 (= lt!44862 e!91392)))

(declare-fun res!69913 () Bool)

(assert (=> d!36723 (=> (not res!69913) (not e!91392))))

(declare-datatypes ((tuple2!2586 0))(
  ( (tuple2!2587 (_1!1509 BalanceConc!1490) (_2!1509 BalanceConc!1488)) )
))
(declare-fun lex!169 (LexerInterface!345 List!2652 BalanceConc!1488) tuple2!2586)

(assert (=> d!36723 (= res!69913 (= (list!932 (_1!1509 (lex!169 thiss!17480 rules!1920 (print!94 thiss!17480 (singletonSeq!27 separatorToken!170))))) (list!932 (singletonSeq!27 separatorToken!170))))))

(declare-fun e!91393 () Bool)

(assert (=> d!36723 (= lt!44862 e!91393)))

(declare-fun res!69914 () Bool)

(assert (=> d!36723 (=> (not res!69914) (not e!91393))))

(declare-fun lt!44861 () tuple2!2586)

(assert (=> d!36723 (= res!69914 (= (size!2254 (_1!1509 lt!44861)) 1))))

(assert (=> d!36723 (= lt!44861 (lex!169 thiss!17480 rules!1920 (print!94 thiss!17480 (singletonSeq!27 separatorToken!170))))))

(assert (=> d!36723 (not (isEmpty!1046 rules!1920))))

(assert (=> d!36723 (= (rulesProduceIndividualToken!94 thiss!17480 rules!1920 separatorToken!170) lt!44862)))

(declare-fun b!152833 () Bool)

(declare-fun res!69915 () Bool)

(assert (=> b!152833 (=> (not res!69915) (not e!91393))))

(assert (=> b!152833 (= res!69915 (= (apply!349 (_1!1509 lt!44861) 0) separatorToken!170))))

(declare-fun b!152834 () Bool)

(declare-fun isEmpty!1050 (BalanceConc!1488) Bool)

(assert (=> b!152834 (= e!91393 (isEmpty!1050 (_2!1509 lt!44861)))))

(declare-fun b!152835 () Bool)

(assert (=> b!152835 (= e!91392 (isEmpty!1050 (_2!1509 (lex!169 thiss!17480 rules!1920 (print!94 thiss!17480 (singletonSeq!27 separatorToken!170))))))))

(assert (= (and d!36723 res!69914) b!152833))

(assert (= (and b!152833 res!69915) b!152834))

(assert (= (and d!36723 res!69913) b!152835))

(declare-fun m!137815 () Bool)

(assert (=> d!36723 m!137815))

(declare-fun m!137817 () Bool)

(assert (=> d!36723 m!137817))

(declare-fun m!137819 () Bool)

(assert (=> d!36723 m!137819))

(declare-fun m!137821 () Bool)

(assert (=> d!36723 m!137821))

(declare-fun m!137823 () Bool)

(assert (=> d!36723 m!137823))

(assert (=> d!36723 m!137815))

(assert (=> d!36723 m!137823))

(assert (=> d!36723 m!137437))

(assert (=> d!36723 m!137823))

(declare-fun m!137825 () Bool)

(assert (=> d!36723 m!137825))

(declare-fun m!137827 () Bool)

(assert (=> b!152833 m!137827))

(declare-fun m!137829 () Bool)

(assert (=> b!152834 m!137829))

(assert (=> b!152835 m!137823))

(assert (=> b!152835 m!137823))

(assert (=> b!152835 m!137815))

(assert (=> b!152835 m!137815))

(assert (=> b!152835 m!137817))

(declare-fun m!137831 () Bool)

(assert (=> b!152835 m!137831))

(assert (=> b!152498 d!36723))

(declare-fun d!36743 () Bool)

(assert (=> d!36743 (= (list!929 (seqFromList!296 lt!44708)) (list!933 (c!30789 (seqFromList!296 lt!44708))))))

(declare-fun bs!14056 () Bool)

(assert (= bs!14056 d!36743))

(declare-fun m!137833 () Bool)

(assert (=> bs!14056 m!137833))

(assert (=> b!152487 d!36743))

(declare-fun d!36745 () Bool)

(declare-fun fromListB!125 (List!2650) BalanceConc!1488)

(assert (=> d!36745 (= (seqFromList!296 lt!44708) (fromListB!125 lt!44708))))

(declare-fun bs!14057 () Bool)

(assert (= bs!14057 d!36745))

(declare-fun m!137835 () Bool)

(assert (=> bs!14057 m!137835))

(assert (=> b!152487 d!36745))

(declare-fun d!36747 () Bool)

(declare-fun res!69916 () Bool)

(declare-fun e!91410 () Bool)

(assert (=> d!36747 (=> (not res!69916) (not e!91410))))

(assert (=> d!36747 (= res!69916 (not (isEmpty!1049 (originalCharacters!502 (h!8038 tokens!465)))))))

(assert (=> d!36747 (= (inv!3440 (h!8038 tokens!465)) e!91410)))

(declare-fun b!152846 () Bool)

(declare-fun res!69917 () Bool)

(assert (=> b!152846 (=> (not res!69917) (not e!91410))))

(assert (=> b!152846 (= res!69917 (= (originalCharacters!502 (h!8038 tokens!465)) (list!929 (dynLambda!929 (toChars!957 (transformation!459 (rule!966 (h!8038 tokens!465)))) (value!17397 (h!8038 tokens!465))))))))

(declare-fun b!152847 () Bool)

(assert (=> b!152847 (= e!91410 (= (size!2251 (h!8038 tokens!465)) (size!2255 (originalCharacters!502 (h!8038 tokens!465)))))))

(assert (= (and d!36747 res!69916) b!152846))

(assert (= (and b!152846 res!69917) b!152847))

(declare-fun b_lambda!2853 () Bool)

(assert (=> (not b_lambda!2853) (not b!152846)))

(declare-fun t!25038 () Bool)

(declare-fun tb!5239 () Bool)

(assert (=> (and b!152483 (= (toChars!957 (transformation!459 (rule!966 separatorToken!170))) (toChars!957 (transformation!459 (rule!966 (h!8038 tokens!465))))) t!25038) tb!5239))

(declare-fun b!152852 () Bool)

(declare-fun e!91412 () Bool)

(declare-fun tp!79239 () Bool)

(assert (=> b!152852 (= e!91412 (and (inv!3443 (c!30789 (dynLambda!929 (toChars!957 (transformation!459 (rule!966 (h!8038 tokens!465)))) (value!17397 (h!8038 tokens!465))))) tp!79239))))

(declare-fun result!7710 () Bool)

(assert (=> tb!5239 (= result!7710 (and (inv!3444 (dynLambda!929 (toChars!957 (transformation!459 (rule!966 (h!8038 tokens!465)))) (value!17397 (h!8038 tokens!465)))) e!91412))))

(assert (= tb!5239 b!152852))

(declare-fun m!137845 () Bool)

(assert (=> b!152852 m!137845))

(declare-fun m!137847 () Bool)

(assert (=> tb!5239 m!137847))

(assert (=> b!152846 t!25038))

(declare-fun b_and!8915 () Bool)

(assert (= b_and!8889 (and (=> t!25038 result!7710) b_and!8915)))

(declare-fun t!25040 () Bool)

(declare-fun tb!5241 () Bool)

(assert (=> (and b!152480 (= (toChars!957 (transformation!459 (rule!966 (h!8038 tokens!465)))) (toChars!957 (transformation!459 (rule!966 (h!8038 tokens!465))))) t!25040) tb!5241))

(declare-fun result!7712 () Bool)

(assert (= result!7712 result!7710))

(assert (=> b!152846 t!25040))

(declare-fun b_and!8917 () Bool)

(assert (= b_and!8891 (and (=> t!25040 result!7712) b_and!8917)))

(declare-fun t!25042 () Bool)

(declare-fun tb!5243 () Bool)

(assert (=> (and b!152492 (= (toChars!957 (transformation!459 (h!8039 rules!1920))) (toChars!957 (transformation!459 (rule!966 (h!8038 tokens!465))))) t!25042) tb!5243))

(declare-fun result!7714 () Bool)

(assert (= result!7714 result!7710))

(assert (=> b!152846 t!25042))

(declare-fun b_and!8919 () Bool)

(assert (= b_and!8893 (and (=> t!25042 result!7714) b_and!8919)))

(declare-fun m!137849 () Bool)

(assert (=> d!36747 m!137849))

(declare-fun m!137851 () Bool)

(assert (=> b!152846 m!137851))

(assert (=> b!152846 m!137851))

(declare-fun m!137853 () Bool)

(assert (=> b!152846 m!137853))

(declare-fun m!137855 () Bool)

(assert (=> b!152847 m!137855))

(assert (=> b!152489 d!36747))

(declare-fun d!36749 () Bool)

(assert (=> d!36749 (= (list!929 (charsOf!114 separatorToken!170)) (list!933 (c!30789 (charsOf!114 separatorToken!170))))))

(declare-fun bs!14058 () Bool)

(assert (= bs!14058 d!36749))

(declare-fun m!137857 () Bool)

(assert (=> bs!14058 m!137857))

(assert (=> b!152478 d!36749))

(declare-fun bs!14061 () Bool)

(declare-fun d!36753 () Bool)

(assert (= bs!14061 (and d!36753 d!36681)))

(declare-fun lambda!3987 () Int)

(assert (=> bs!14061 (not (= lambda!3987 lambda!3968))))

(declare-fun bs!14062 () Bool)

(assert (= bs!14062 (and d!36753 b!152726)))

(assert (=> bs!14062 (= lambda!3987 lambda!3979)))

(declare-fun bs!14063 () Bool)

(assert (= bs!14063 (and d!36753 b!152486)))

(assert (=> bs!14063 (not (= lambda!3987 lambda!3952))))

(declare-fun bs!14064 () Bool)

(assert (= bs!14064 (and d!36753 d!36671)))

(assert (=> bs!14064 (= lambda!3987 lambda!3960)))

(declare-fun bs!14065 () Bool)

(assert (= bs!14065 (and d!36753 b!152653)))

(assert (=> bs!14065 (= lambda!3987 lambda!3969)))

(declare-fun b!152866 () Bool)

(declare-fun e!91423 () Bool)

(assert (=> b!152866 (= e!91423 true)))

(declare-fun b!152865 () Bool)

(declare-fun e!91422 () Bool)

(assert (=> b!152865 (= e!91422 e!91423)))

(declare-fun b!152864 () Bool)

(declare-fun e!91421 () Bool)

(assert (=> b!152864 (= e!91421 e!91422)))

(assert (=> d!36753 e!91421))

(assert (= b!152865 b!152866))

(assert (= b!152864 b!152865))

(assert (= (and d!36753 ((_ is Cons!2642) rules!1920)) b!152864))

(assert (=> b!152866 (< (dynLambda!926 order!1321 (toValue!1098 (transformation!459 (h!8039 rules!1920)))) (dynLambda!927 order!1323 lambda!3987))))

(assert (=> b!152866 (< (dynLambda!928 order!1325 (toChars!957 (transformation!459 (h!8039 rules!1920)))) (dynLambda!927 order!1323 lambda!3987))))

(assert (=> d!36753 true))

(declare-fun lt!44865 () Bool)

(assert (=> d!36753 (= lt!44865 (forall!453 (t!24985 tokens!465) lambda!3987))))

(declare-fun e!91420 () Bool)

(assert (=> d!36753 (= lt!44865 e!91420)))

(declare-fun res!69923 () Bool)

(assert (=> d!36753 (=> res!69923 e!91420)))

(assert (=> d!36753 (= res!69923 (not ((_ is Cons!2641) (t!24985 tokens!465))))))

(assert (=> d!36753 (not (isEmpty!1046 rules!1920))))

(assert (=> d!36753 (= (rulesProduceEachTokenIndividuallyList!85 thiss!17480 rules!1920 (t!24985 tokens!465)) lt!44865)))

(declare-fun b!152862 () Bool)

(declare-fun e!91419 () Bool)

(assert (=> b!152862 (= e!91420 e!91419)))

(declare-fun res!69922 () Bool)

(assert (=> b!152862 (=> (not res!69922) (not e!91419))))

(assert (=> b!152862 (= res!69922 (rulesProduceIndividualToken!94 thiss!17480 rules!1920 (h!8038 (t!24985 tokens!465))))))

(declare-fun b!152863 () Bool)

(assert (=> b!152863 (= e!91419 (rulesProduceEachTokenIndividuallyList!85 thiss!17480 rules!1920 (t!24985 (t!24985 tokens!465))))))

(assert (= (and d!36753 (not res!69923)) b!152862))

(assert (= (and b!152862 res!69922) b!152863))

(declare-fun m!137859 () Bool)

(assert (=> d!36753 m!137859))

(assert (=> d!36753 m!137437))

(declare-fun m!137861 () Bool)

(assert (=> b!152862 m!137861))

(declare-fun m!137863 () Bool)

(assert (=> b!152863 m!137863))

(assert (=> b!152478 d!36753))

(declare-fun d!36757 () Bool)

(declare-fun e!91429 () Bool)

(assert (=> d!36757 e!91429))

(declare-fun res!69928 () Bool)

(assert (=> d!36757 (=> (not res!69928) (not e!91429))))

(declare-fun lt!44868 () List!2650)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!367 (List!2650) (InoxSet C!2288))

(assert (=> d!36757 (= res!69928 (= (content!367 lt!44868) ((_ map or) (content!367 (list!929 (charsOf!114 separatorToken!170))) (content!367 (printWithSeparatorTokenWhenNeededList!38 thiss!17480 rules!1920 (t!24985 tokens!465) separatorToken!170)))))))

(declare-fun e!91428 () List!2650)

(assert (=> d!36757 (= lt!44868 e!91428)))

(declare-fun c!30861 () Bool)

(assert (=> d!36757 (= c!30861 ((_ is Nil!2640) (list!929 (charsOf!114 separatorToken!170))))))

(assert (=> d!36757 (= (++!568 (list!929 (charsOf!114 separatorToken!170)) (printWithSeparatorTokenWhenNeededList!38 thiss!17480 rules!1920 (t!24985 tokens!465) separatorToken!170)) lt!44868)))

(declare-fun b!152877 () Bool)

(declare-fun res!69929 () Bool)

(assert (=> b!152877 (=> (not res!69929) (not e!91429))))

(assert (=> b!152877 (= res!69929 (= (size!2255 lt!44868) (+ (size!2255 (list!929 (charsOf!114 separatorToken!170))) (size!2255 (printWithSeparatorTokenWhenNeededList!38 thiss!17480 rules!1920 (t!24985 tokens!465) separatorToken!170)))))))

(declare-fun b!152878 () Bool)

(assert (=> b!152878 (= e!91429 (or (not (= (printWithSeparatorTokenWhenNeededList!38 thiss!17480 rules!1920 (t!24985 tokens!465) separatorToken!170) Nil!2640)) (= lt!44868 (list!929 (charsOf!114 separatorToken!170)))))))

(declare-fun b!152876 () Bool)

(assert (=> b!152876 (= e!91428 (Cons!2640 (h!8037 (list!929 (charsOf!114 separatorToken!170))) (++!568 (t!24984 (list!929 (charsOf!114 separatorToken!170))) (printWithSeparatorTokenWhenNeededList!38 thiss!17480 rules!1920 (t!24985 tokens!465) separatorToken!170))))))

(declare-fun b!152875 () Bool)

(assert (=> b!152875 (= e!91428 (printWithSeparatorTokenWhenNeededList!38 thiss!17480 rules!1920 (t!24985 tokens!465) separatorToken!170))))

(assert (= (and d!36757 c!30861) b!152875))

(assert (= (and d!36757 (not c!30861)) b!152876))

(assert (= (and d!36757 res!69928) b!152877))

(assert (= (and b!152877 res!69929) b!152878))

(declare-fun m!137865 () Bool)

(assert (=> d!36757 m!137865))

(assert (=> d!36757 m!137405))

(declare-fun m!137867 () Bool)

(assert (=> d!36757 m!137867))

(assert (=> d!36757 m!137399))

(declare-fun m!137869 () Bool)

(assert (=> d!36757 m!137869))

(declare-fun m!137871 () Bool)

(assert (=> b!152877 m!137871))

(assert (=> b!152877 m!137405))

(declare-fun m!137873 () Bool)

(assert (=> b!152877 m!137873))

(assert (=> b!152877 m!137399))

(declare-fun m!137875 () Bool)

(assert (=> b!152877 m!137875))

(assert (=> b!152876 m!137399))

(declare-fun m!137877 () Bool)

(assert (=> b!152876 m!137877))

(assert (=> b!152478 d!36757))

(declare-fun bs!14066 () Bool)

(declare-fun b!152884 () Bool)

(assert (= bs!14066 (and b!152884 d!36753)))

(declare-fun lambda!3988 () Int)

(assert (=> bs!14066 (= lambda!3988 lambda!3987)))

(declare-fun bs!14067 () Bool)

(assert (= bs!14067 (and b!152884 d!36681)))

(assert (=> bs!14067 (not (= lambda!3988 lambda!3968))))

(declare-fun bs!14068 () Bool)

(assert (= bs!14068 (and b!152884 b!152726)))

(assert (=> bs!14068 (= lambda!3988 lambda!3979)))

(declare-fun bs!14069 () Bool)

(assert (= bs!14069 (and b!152884 b!152486)))

(assert (=> bs!14069 (not (= lambda!3988 lambda!3952))))

(declare-fun bs!14070 () Bool)

(assert (= bs!14070 (and b!152884 d!36671)))

(assert (=> bs!14070 (= lambda!3988 lambda!3960)))

(declare-fun bs!14071 () Bool)

(assert (= bs!14071 (and b!152884 b!152653)))

(assert (=> bs!14071 (= lambda!3988 lambda!3969)))

(declare-fun b!152889 () Bool)

(declare-fun e!91436 () Bool)

(assert (=> b!152889 (= e!91436 true)))

(declare-fun b!152888 () Bool)

(declare-fun e!91435 () Bool)

(assert (=> b!152888 (= e!91435 e!91436)))

(declare-fun b!152887 () Bool)

(declare-fun e!91434 () Bool)

(assert (=> b!152887 (= e!91434 e!91435)))

(assert (=> b!152884 e!91434))

(assert (= b!152888 b!152889))

(assert (= b!152887 b!152888))

(assert (= (and b!152884 ((_ is Cons!2642) rules!1920)) b!152887))

(assert (=> b!152889 (< (dynLambda!926 order!1321 (toValue!1098 (transformation!459 (h!8039 rules!1920)))) (dynLambda!927 order!1323 lambda!3988))))

(assert (=> b!152889 (< (dynLambda!928 order!1325 (toChars!957 (transformation!459 (h!8039 rules!1920)))) (dynLambda!927 order!1323 lambda!3988))))

(assert (=> b!152884 true))

(declare-fun call!6244 () List!2650)

(declare-fun bm!6237 () Bool)

(declare-fun lt!44874 () List!2650)

(declare-fun call!6242 () List!2650)

(declare-fun c!30863 () Bool)

(declare-fun call!6243 () List!2650)

(assert (=> bm!6237 (= call!6243 (++!568 call!6242 (ite c!30863 lt!44874 call!6244)))))

(declare-fun b!152879 () Bool)

(declare-fun e!91432 () BalanceConc!1488)

(assert (=> b!152879 (= e!91432 (charsOf!114 separatorToken!170))))

(declare-fun b!152880 () Bool)

(declare-fun e!91430 () List!2650)

(assert (=> b!152880 (= e!91430 call!6243)))

(declare-fun d!36759 () Bool)

(declare-fun c!30865 () Bool)

(assert (=> d!36759 (= c!30865 ((_ is Cons!2641) (t!24985 tokens!465)))))

(declare-fun e!91431 () List!2650)

(assert (=> d!36759 (= (printWithSeparatorTokenWhenNeededList!38 thiss!17480 rules!1920 (t!24985 tokens!465) separatorToken!170) e!91431)))

(declare-fun b!152881 () Bool)

(declare-fun e!91433 () List!2650)

(assert (=> b!152881 (= e!91433 Nil!2640)))

(assert (=> b!152881 (= (print!94 thiss!17480 (singletonSeq!27 (h!8038 (t!24985 tokens!465)))) (printTailRec!57 thiss!17480 (singletonSeq!27 (h!8038 (t!24985 tokens!465))) 0 (BalanceConc!1489 Empty!740)))))

(declare-fun lt!44869 () Unit!2038)

(declare-fun Unit!2044 () Unit!2038)

(assert (=> b!152881 (= lt!44869 Unit!2044)))

(declare-fun lt!44872 () Unit!2038)

(assert (=> b!152881 (= lt!44872 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!16 thiss!17480 rules!1920 call!6244 lt!44874))))

(assert (=> b!152881 false))

(declare-fun lt!44870 () Unit!2038)

(declare-fun Unit!2045 () Unit!2038)

(assert (=> b!152881 (= lt!44870 Unit!2045)))

(declare-fun b!152882 () Bool)

(declare-fun c!30864 () Bool)

(declare-fun lt!44873 () Option!245)

(assert (=> b!152882 (= c!30864 (and ((_ is Some!244) lt!44873) (not (= (_1!1508 (v!13627 lt!44873)) (h!8038 (t!24985 tokens!465))))))))

(assert (=> b!152882 (= e!91430 e!91433)))

(declare-fun b!152883 () Bool)

(assert (=> b!152883 (= e!91433 (++!568 call!6243 lt!44874))))

(assert (=> b!152884 (= e!91431 e!91430)))

(declare-fun lt!44871 () Unit!2038)

(assert (=> b!152884 (= lt!44871 (forallContained!52 (t!24985 tokens!465) lambda!3988 (h!8038 (t!24985 tokens!465))))))

(assert (=> b!152884 (= lt!44874 (printWithSeparatorTokenWhenNeededList!38 thiss!17480 rules!1920 (t!24985 (t!24985 tokens!465)) separatorToken!170))))

(assert (=> b!152884 (= lt!44873 (maxPrefix!109 thiss!17480 rules!1920 (++!568 (list!929 (charsOf!114 (h!8038 (t!24985 tokens!465)))) lt!44874)))))

(assert (=> b!152884 (= c!30863 (and ((_ is Some!244) lt!44873) (= (_1!1508 (v!13627 lt!44873)) (h!8038 (t!24985 tokens!465)))))))

(declare-fun b!152885 () Bool)

(assert (=> b!152885 (= e!91431 Nil!2640)))

(declare-fun bm!6238 () Bool)

(assert (=> bm!6238 (= call!6244 (list!929 e!91432))))

(declare-fun c!30862 () Bool)

(assert (=> bm!6238 (= c!30862 c!30864)))

(declare-fun b!152886 () Bool)

(declare-fun call!6246 () BalanceConc!1488)

(assert (=> b!152886 (= e!91432 call!6246)))

(declare-fun bm!6239 () Bool)

(declare-fun call!6245 () BalanceConc!1488)

(assert (=> bm!6239 (= call!6242 (list!929 (ite c!30863 call!6245 call!6246)))))

(declare-fun bm!6240 () Bool)

(assert (=> bm!6240 (= call!6246 call!6245)))

(declare-fun bm!6241 () Bool)

(assert (=> bm!6241 (= call!6245 (charsOf!114 (h!8038 (t!24985 tokens!465))))))

(assert (= (and d!36759 c!30865) b!152884))

(assert (= (and d!36759 (not c!30865)) b!152885))

(assert (= (and b!152884 c!30863) b!152880))

(assert (= (and b!152884 (not c!30863)) b!152882))

(assert (= (and b!152882 c!30864) b!152883))

(assert (= (and b!152882 (not c!30864)) b!152881))

(assert (= (or b!152883 b!152881) bm!6240))

(assert (= (or b!152883 b!152881) bm!6238))

(assert (= (and bm!6238 c!30862) b!152879))

(assert (= (and bm!6238 (not c!30862)) b!152886))

(assert (= (or b!152880 bm!6240) bm!6241))

(assert (= (or b!152880 b!152883) bm!6239))

(assert (= (or b!152880 b!152883) bm!6237))

(assert (=> b!152879 m!137403))

(declare-fun m!137879 () Bool)

(assert (=> bm!6239 m!137879))

(declare-fun m!137881 () Bool)

(assert (=> b!152883 m!137881))

(declare-fun m!137883 () Bool)

(assert (=> b!152881 m!137883))

(assert (=> b!152881 m!137883))

(declare-fun m!137885 () Bool)

(assert (=> b!152881 m!137885))

(assert (=> b!152881 m!137883))

(declare-fun m!137887 () Bool)

(assert (=> b!152881 m!137887))

(declare-fun m!137889 () Bool)

(assert (=> b!152881 m!137889))

(declare-fun m!137891 () Bool)

(assert (=> bm!6237 m!137891))

(declare-fun m!137893 () Bool)

(assert (=> b!152884 m!137893))

(declare-fun m!137895 () Bool)

(assert (=> b!152884 m!137895))

(declare-fun m!137897 () Bool)

(assert (=> b!152884 m!137897))

(assert (=> b!152884 m!137897))

(declare-fun m!137899 () Bool)

(assert (=> b!152884 m!137899))

(declare-fun m!137901 () Bool)

(assert (=> b!152884 m!137901))

(declare-fun m!137903 () Bool)

(assert (=> b!152884 m!137903))

(assert (=> b!152884 m!137899))

(assert (=> b!152884 m!137893))

(assert (=> bm!6241 m!137897))

(declare-fun m!137905 () Bool)

(assert (=> bm!6238 m!137905))

(assert (=> b!152478 d!36759))

(declare-fun d!36761 () Bool)

(declare-fun lt!44877 () BalanceConc!1488)

(assert (=> d!36761 (= (list!929 lt!44877) (originalCharacters!502 separatorToken!170))))

(assert (=> d!36761 (= lt!44877 (dynLambda!929 (toChars!957 (transformation!459 (rule!966 separatorToken!170))) (value!17397 separatorToken!170)))))

(assert (=> d!36761 (= (charsOf!114 separatorToken!170) lt!44877)))

(declare-fun b_lambda!2867 () Bool)

(assert (=> (not b_lambda!2867) (not d!36761)))

(assert (=> d!36761 t!25019))

(declare-fun b_and!8921 () Bool)

(assert (= b_and!8915 (and (=> t!25019 result!7686) b_and!8921)))

(assert (=> d!36761 t!25021))

(declare-fun b_and!8923 () Bool)

(assert (= b_and!8917 (and (=> t!25021 result!7690) b_and!8923)))

(assert (=> d!36761 t!25023))

(declare-fun b_and!8925 () Bool)

(assert (= b_and!8919 (and (=> t!25023 result!7692) b_and!8925)))

(declare-fun m!137907 () Bool)

(assert (=> d!36761 m!137907))

(assert (=> d!36761 m!137761))

(assert (=> b!152478 d!36761))

(declare-fun d!36763 () Bool)

(assert (=> d!36763 (= (list!929 (charsOf!114 (h!8038 tokens!465))) (list!933 (c!30789 (charsOf!114 (h!8038 tokens!465)))))))

(declare-fun bs!14072 () Bool)

(assert (= bs!14072 d!36763))

(declare-fun m!137909 () Bool)

(assert (=> bs!14072 m!137909))

(assert (=> b!152478 d!36763))

(declare-fun d!36765 () Bool)

(declare-fun lt!44878 () BalanceConc!1488)

(assert (=> d!36765 (= (list!929 lt!44878) (originalCharacters!502 (h!8038 tokens!465)))))

(assert (=> d!36765 (= lt!44878 (dynLambda!929 (toChars!957 (transformation!459 (rule!966 (h!8038 tokens!465)))) (value!17397 (h!8038 tokens!465))))))

(assert (=> d!36765 (= (charsOf!114 (h!8038 tokens!465)) lt!44878)))

(declare-fun b_lambda!2869 () Bool)

(assert (=> (not b_lambda!2869) (not d!36765)))

(assert (=> d!36765 t!25038))

(declare-fun b_and!8927 () Bool)

(assert (= b_and!8921 (and (=> t!25038 result!7710) b_and!8927)))

(assert (=> d!36765 t!25040))

(declare-fun b_and!8929 () Bool)

(assert (= b_and!8923 (and (=> t!25040 result!7712) b_and!8929)))

(assert (=> d!36765 t!25042))

(declare-fun b_and!8931 () Bool)

(assert (= b_and!8925 (and (=> t!25042 result!7714) b_and!8931)))

(declare-fun m!137911 () Bool)

(assert (=> d!36765 m!137911))

(assert (=> d!36765 m!137851))

(assert (=> b!152478 d!36765))

(declare-fun d!36767 () Bool)

(assert (=> d!36767 (= (inv!3436 (tag!637 (h!8039 rules!1920))) (= (mod (str.len (value!17396 (tag!637 (h!8039 rules!1920)))) 2) 0))))

(assert (=> b!152490 d!36767))

(declare-fun d!36769 () Bool)

(declare-fun res!69932 () Bool)

(declare-fun e!91439 () Bool)

(assert (=> d!36769 (=> (not res!69932) (not e!91439))))

(declare-fun semiInverseModEq!159 (Int Int) Bool)

(assert (=> d!36769 (= res!69932 (semiInverseModEq!159 (toChars!957 (transformation!459 (h!8039 rules!1920))) (toValue!1098 (transformation!459 (h!8039 rules!1920)))))))

(assert (=> d!36769 (= (inv!3439 (transformation!459 (h!8039 rules!1920))) e!91439)))

(declare-fun b!152892 () Bool)

(declare-fun equivClasses!142 (Int Int) Bool)

(assert (=> b!152892 (= e!91439 (equivClasses!142 (toChars!957 (transformation!459 (h!8039 rules!1920))) (toValue!1098 (transformation!459 (h!8039 rules!1920)))))))

(assert (= (and d!36769 res!69932) b!152892))

(declare-fun m!137913 () Bool)

(assert (=> d!36769 m!137913))

(declare-fun m!137915 () Bool)

(assert (=> b!152892 m!137915))

(assert (=> b!152490 d!36769))

(declare-fun d!36771 () Bool)

(assert (=> d!36771 (= (inv!3436 (tag!637 (rule!966 separatorToken!170))) (= (mod (str.len (value!17396 (tag!637 (rule!966 separatorToken!170)))) 2) 0))))

(assert (=> b!152479 d!36771))

(declare-fun d!36773 () Bool)

(declare-fun res!69933 () Bool)

(declare-fun e!91440 () Bool)

(assert (=> d!36773 (=> (not res!69933) (not e!91440))))

(assert (=> d!36773 (= res!69933 (semiInverseModEq!159 (toChars!957 (transformation!459 (rule!966 separatorToken!170))) (toValue!1098 (transformation!459 (rule!966 separatorToken!170)))))))

(assert (=> d!36773 (= (inv!3439 (transformation!459 (rule!966 separatorToken!170))) e!91440)))

(declare-fun b!152893 () Bool)

(assert (=> b!152893 (= e!91440 (equivClasses!142 (toChars!957 (transformation!459 (rule!966 separatorToken!170))) (toValue!1098 (transformation!459 (rule!966 separatorToken!170)))))))

(assert (= (and d!36773 res!69933) b!152893))

(declare-fun m!137917 () Bool)

(assert (=> d!36773 m!137917))

(declare-fun m!137919 () Bool)

(assert (=> b!152893 m!137919))

(assert (=> b!152479 d!36773))

(declare-fun d!36775 () Bool)

(assert (=> d!36775 (= (inv!3436 (tag!637 (rule!966 (h!8038 tokens!465)))) (= (mod (str.len (value!17396 (tag!637 (rule!966 (h!8038 tokens!465))))) 2) 0))))

(assert (=> b!152481 d!36775))

(declare-fun d!36777 () Bool)

(declare-fun res!69934 () Bool)

(declare-fun e!91441 () Bool)

(assert (=> d!36777 (=> (not res!69934) (not e!91441))))

(assert (=> d!36777 (= res!69934 (semiInverseModEq!159 (toChars!957 (transformation!459 (rule!966 (h!8038 tokens!465)))) (toValue!1098 (transformation!459 (rule!966 (h!8038 tokens!465))))))))

(assert (=> d!36777 (= (inv!3439 (transformation!459 (rule!966 (h!8038 tokens!465)))) e!91441)))

(declare-fun b!152894 () Bool)

(assert (=> b!152894 (= e!91441 (equivClasses!142 (toChars!957 (transformation!459 (rule!966 (h!8038 tokens!465)))) (toValue!1098 (transformation!459 (rule!966 (h!8038 tokens!465))))))))

(assert (= (and d!36777 res!69934) b!152894))

(declare-fun m!137921 () Bool)

(assert (=> d!36777 m!137921))

(declare-fun m!137923 () Bool)

(assert (=> b!152894 m!137923))

(assert (=> b!152481 d!36777))

(declare-fun b!152895 () Bool)

(declare-fun res!69935 () Bool)

(declare-fun e!91443 () Bool)

(assert (=> b!152895 (=> res!69935 e!91443)))

(assert (=> b!152895 (= res!69935 (not ((_ is IntegerValue!1445) (value!17397 separatorToken!170))))))

(declare-fun e!91442 () Bool)

(assert (=> b!152895 (= e!91442 e!91443)))

(declare-fun d!36779 () Bool)

(declare-fun c!30867 () Bool)

(assert (=> d!36779 (= c!30867 ((_ is IntegerValue!1443) (value!17397 separatorToken!170)))))

(declare-fun e!91444 () Bool)

(assert (=> d!36779 (= (inv!21 (value!17397 separatorToken!170)) e!91444)))

(declare-fun b!152896 () Bool)

(assert (=> b!152896 (= e!91442 (inv!17 (value!17397 separatorToken!170)))))

(declare-fun b!152897 () Bool)

(assert (=> b!152897 (= e!91443 (inv!15 (value!17397 separatorToken!170)))))

(declare-fun b!152898 () Bool)

(assert (=> b!152898 (= e!91444 (inv!16 (value!17397 separatorToken!170)))))

(declare-fun b!152899 () Bool)

(assert (=> b!152899 (= e!91444 e!91442)))

(declare-fun c!30866 () Bool)

(assert (=> b!152899 (= c!30866 ((_ is IntegerValue!1444) (value!17397 separatorToken!170)))))

(assert (= (and d!36779 c!30867) b!152898))

(assert (= (and d!36779 (not c!30867)) b!152899))

(assert (= (and b!152899 c!30866) b!152896))

(assert (= (and b!152899 (not c!30866)) b!152895))

(assert (= (and b!152895 (not res!69935)) b!152897))

(declare-fun m!137925 () Bool)

(assert (=> b!152896 m!137925))

(declare-fun m!137927 () Bool)

(assert (=> b!152897 m!137927))

(declare-fun m!137929 () Bool)

(assert (=> b!152898 m!137929))

(assert (=> b!152491 d!36779))

(declare-fun b!152910 () Bool)

(declare-fun b_free!5589 () Bool)

(declare-fun b_next!5589 () Bool)

(assert (=> b!152910 (= b_free!5589 (not b_next!5589))))

(declare-fun tp!79254 () Bool)

(declare-fun b_and!8933 () Bool)

(assert (=> b!152910 (= tp!79254 b_and!8933)))

(declare-fun b_free!5591 () Bool)

(declare-fun b_next!5591 () Bool)

(assert (=> b!152910 (= b_free!5591 (not b_next!5591))))

(declare-fun t!25047 () Bool)

(declare-fun tb!5245 () Bool)

(assert (=> (and b!152910 (= (toChars!957 (transformation!459 (h!8039 (t!24986 rules!1920)))) (toChars!957 (transformation!459 (rule!966 separatorToken!170)))) t!25047) tb!5245))

(declare-fun result!7718 () Bool)

(assert (= result!7718 result!7686))

(assert (=> b!152744 t!25047))

(declare-fun t!25049 () Bool)

(declare-fun tb!5247 () Bool)

(assert (=> (and b!152910 (= (toChars!957 (transformation!459 (h!8039 (t!24986 rules!1920)))) (toChars!957 (transformation!459 (rule!966 (h!8038 tokens!465))))) t!25049) tb!5247))

(declare-fun result!7720 () Bool)

(assert (= result!7720 result!7710))

(assert (=> b!152846 t!25049))

(assert (=> d!36761 t!25047))

(assert (=> d!36765 t!25049))

(declare-fun b_and!8935 () Bool)

(declare-fun tp!79256 () Bool)

(assert (=> b!152910 (= tp!79256 (and (=> t!25047 result!7718) (=> t!25049 result!7720) b_and!8935))))

(declare-fun e!91455 () Bool)

(assert (=> b!152910 (= e!91455 (and tp!79254 tp!79256))))

(declare-fun tp!79257 () Bool)

(declare-fun b!152909 () Bool)

(declare-fun e!91454 () Bool)

(assert (=> b!152909 (= e!91454 (and tp!79257 (inv!3436 (tag!637 (h!8039 (t!24986 rules!1920)))) (inv!3439 (transformation!459 (h!8039 (t!24986 rules!1920)))) e!91455))))

(declare-fun b!152908 () Bool)

(declare-fun e!91453 () Bool)

(declare-fun tp!79255 () Bool)

(assert (=> b!152908 (= e!91453 (and e!91454 tp!79255))))

(assert (=> b!152493 (= tp!79169 e!91453)))

(assert (= b!152909 b!152910))

(assert (= b!152908 b!152909))

(assert (= (and b!152493 ((_ is Cons!2642) (t!24986 rules!1920))) b!152908))

(declare-fun m!137931 () Bool)

(assert (=> b!152909 m!137931))

(declare-fun m!137933 () Bool)

(assert (=> b!152909 m!137933))

(declare-fun b!152915 () Bool)

(declare-fun e!91459 () Bool)

(declare-fun tp_is_empty!1615 () Bool)

(declare-fun tp!79260 () Bool)

(assert (=> b!152915 (= e!91459 (and tp_is_empty!1615 tp!79260))))

(assert (=> b!152477 (= tp!79174 e!91459)))

(assert (= (and b!152477 ((_ is Cons!2640) (originalCharacters!502 (h!8038 tokens!465)))) b!152915))

(declare-fun b!152929 () Bool)

(declare-fun b_free!5593 () Bool)

(declare-fun b_next!5593 () Bool)

(assert (=> b!152929 (= b_free!5593 (not b_next!5593))))

(declare-fun tp!79272 () Bool)

(declare-fun b_and!8937 () Bool)

(assert (=> b!152929 (= tp!79272 b_and!8937)))

(declare-fun b_free!5595 () Bool)

(declare-fun b_next!5595 () Bool)

(assert (=> b!152929 (= b_free!5595 (not b_next!5595))))

(declare-fun t!25051 () Bool)

(declare-fun tb!5249 () Bool)

(assert (=> (and b!152929 (= (toChars!957 (transformation!459 (rule!966 (h!8038 (t!24985 tokens!465))))) (toChars!957 (transformation!459 (rule!966 separatorToken!170)))) t!25051) tb!5249))

(declare-fun result!7726 () Bool)

(assert (= result!7726 result!7686))

(assert (=> b!152744 t!25051))

(declare-fun t!25053 () Bool)

(declare-fun tb!5251 () Bool)

(assert (=> (and b!152929 (= (toChars!957 (transformation!459 (rule!966 (h!8038 (t!24985 tokens!465))))) (toChars!957 (transformation!459 (rule!966 (h!8038 tokens!465))))) t!25053) tb!5251))

(declare-fun result!7728 () Bool)

(assert (= result!7728 result!7710))

(assert (=> b!152846 t!25053))

(assert (=> d!36761 t!25051))

(assert (=> d!36765 t!25053))

(declare-fun tp!79271 () Bool)

(declare-fun b_and!8939 () Bool)

(assert (=> b!152929 (= tp!79271 (and (=> t!25051 result!7726) (=> t!25053 result!7728) b_and!8939))))

(declare-fun e!91472 () Bool)

(declare-fun b!152926 () Bool)

(declare-fun e!91477 () Bool)

(declare-fun tp!79275 () Bool)

(assert (=> b!152926 (= e!91472 (and (inv!3440 (h!8038 (t!24985 tokens!465))) e!91477 tp!79275))))

(declare-fun b!152927 () Bool)

(declare-fun tp!79274 () Bool)

(declare-fun e!91474 () Bool)

(assert (=> b!152927 (= e!91477 (and (inv!21 (value!17397 (h!8038 (t!24985 tokens!465)))) e!91474 tp!79274))))

(assert (=> b!152489 (= tp!79178 e!91472)))

(declare-fun e!91473 () Bool)

(assert (=> b!152929 (= e!91473 (and tp!79272 tp!79271))))

(declare-fun b!152928 () Bool)

(declare-fun tp!79273 () Bool)

(assert (=> b!152928 (= e!91474 (and tp!79273 (inv!3436 (tag!637 (rule!966 (h!8038 (t!24985 tokens!465))))) (inv!3439 (transformation!459 (rule!966 (h!8038 (t!24985 tokens!465))))) e!91473))))

(assert (= b!152928 b!152929))

(assert (= b!152927 b!152928))

(assert (= b!152926 b!152927))

(assert (= (and b!152489 ((_ is Cons!2641) (t!24985 tokens!465))) b!152926))

(declare-fun m!137935 () Bool)

(assert (=> b!152926 m!137935))

(declare-fun m!137937 () Bool)

(assert (=> b!152927 m!137937))

(declare-fun m!137939 () Bool)

(assert (=> b!152928 m!137939))

(declare-fun m!137941 () Bool)

(assert (=> b!152928 m!137941))

(declare-fun b!152942 () Bool)

(declare-fun e!91480 () Bool)

(declare-fun tp!79287 () Bool)

(assert (=> b!152942 (= e!91480 tp!79287)))

(assert (=> b!152490 (= tp!79176 e!91480)))

(declare-fun b!152940 () Bool)

(assert (=> b!152940 (= e!91480 tp_is_empty!1615)))

(declare-fun b!152943 () Bool)

(declare-fun tp!79288 () Bool)

(declare-fun tp!79289 () Bool)

(assert (=> b!152943 (= e!91480 (and tp!79288 tp!79289))))

(declare-fun b!152941 () Bool)

(declare-fun tp!79286 () Bool)

(declare-fun tp!79290 () Bool)

(assert (=> b!152941 (= e!91480 (and tp!79286 tp!79290))))

(assert (= (and b!152490 ((_ is ElementMatch!683) (regex!459 (h!8039 rules!1920)))) b!152940))

(assert (= (and b!152490 ((_ is Concat!1165) (regex!459 (h!8039 rules!1920)))) b!152941))

(assert (= (and b!152490 ((_ is Star!683) (regex!459 (h!8039 rules!1920)))) b!152942))

(assert (= (and b!152490 ((_ is Union!683) (regex!459 (h!8039 rules!1920)))) b!152943))

(declare-fun b!152946 () Bool)

(declare-fun e!91481 () Bool)

(declare-fun tp!79292 () Bool)

(assert (=> b!152946 (= e!91481 tp!79292)))

(assert (=> b!152479 (= tp!79177 e!91481)))

(declare-fun b!152944 () Bool)

(assert (=> b!152944 (= e!91481 tp_is_empty!1615)))

(declare-fun b!152947 () Bool)

(declare-fun tp!79293 () Bool)

(declare-fun tp!79294 () Bool)

(assert (=> b!152947 (= e!91481 (and tp!79293 tp!79294))))

(declare-fun b!152945 () Bool)

(declare-fun tp!79291 () Bool)

(declare-fun tp!79295 () Bool)

(assert (=> b!152945 (= e!91481 (and tp!79291 tp!79295))))

(assert (= (and b!152479 ((_ is ElementMatch!683) (regex!459 (rule!966 separatorToken!170)))) b!152944))

(assert (= (and b!152479 ((_ is Concat!1165) (regex!459 (rule!966 separatorToken!170)))) b!152945))

(assert (= (and b!152479 ((_ is Star!683) (regex!459 (rule!966 separatorToken!170)))) b!152946))

(assert (= (and b!152479 ((_ is Union!683) (regex!459 (rule!966 separatorToken!170)))) b!152947))

(declare-fun b!152950 () Bool)

(declare-fun e!91482 () Bool)

(declare-fun tp!79297 () Bool)

(assert (=> b!152950 (= e!91482 tp!79297)))

(assert (=> b!152481 (= tp!79179 e!91482)))

(declare-fun b!152948 () Bool)

(assert (=> b!152948 (= e!91482 tp_is_empty!1615)))

(declare-fun b!152951 () Bool)

(declare-fun tp!79298 () Bool)

(declare-fun tp!79299 () Bool)

(assert (=> b!152951 (= e!91482 (and tp!79298 tp!79299))))

(declare-fun b!152949 () Bool)

(declare-fun tp!79296 () Bool)

(declare-fun tp!79300 () Bool)

(assert (=> b!152949 (= e!91482 (and tp!79296 tp!79300))))

(assert (= (and b!152481 ((_ is ElementMatch!683) (regex!459 (rule!966 (h!8038 tokens!465))))) b!152948))

(assert (= (and b!152481 ((_ is Concat!1165) (regex!459 (rule!966 (h!8038 tokens!465))))) b!152949))

(assert (= (and b!152481 ((_ is Star!683) (regex!459 (rule!966 (h!8038 tokens!465))))) b!152950))

(assert (= (and b!152481 ((_ is Union!683) (regex!459 (rule!966 (h!8038 tokens!465))))) b!152951))

(declare-fun b!152952 () Bool)

(declare-fun e!91483 () Bool)

(declare-fun tp!79301 () Bool)

(assert (=> b!152952 (= e!91483 (and tp_is_empty!1615 tp!79301))))

(assert (=> b!152491 (= tp!79171 e!91483)))

(assert (= (and b!152491 ((_ is Cons!2640) (originalCharacters!502 separatorToken!170))) b!152952))

(declare-fun b_lambda!2871 () Bool)

(assert (= b_lambda!2869 (or (and b!152492 b_free!5579 (= (toChars!957 (transformation!459 (h!8039 rules!1920))) (toChars!957 (transformation!459 (rule!966 (h!8038 tokens!465)))))) (and b!152929 b_free!5595 (= (toChars!957 (transformation!459 (rule!966 (h!8038 (t!24985 tokens!465))))) (toChars!957 (transformation!459 (rule!966 (h!8038 tokens!465)))))) (and b!152480 b_free!5575) (and b!152910 b_free!5591 (= (toChars!957 (transformation!459 (h!8039 (t!24986 rules!1920)))) (toChars!957 (transformation!459 (rule!966 (h!8038 tokens!465)))))) (and b!152483 b_free!5571 (= (toChars!957 (transformation!459 (rule!966 separatorToken!170))) (toChars!957 (transformation!459 (rule!966 (h!8038 tokens!465)))))) b_lambda!2871)))

(declare-fun b_lambda!2873 () Bool)

(assert (= b_lambda!2845 (or b!152486 b_lambda!2873)))

(declare-fun bs!14073 () Bool)

(declare-fun d!36781 () Bool)

(assert (= bs!14073 (and d!36781 b!152486)))

(assert (=> bs!14073 (= (dynLambda!925 lambda!3952 (h!8038 tokens!465)) (not (isSeparator!459 (rule!966 (h!8038 tokens!465)))))))

(assert (=> b!152732 d!36781))

(declare-fun b_lambda!2875 () Bool)

(assert (= b_lambda!2847 (or (and b!152929 b_free!5595 (= (toChars!957 (transformation!459 (rule!966 (h!8038 (t!24985 tokens!465))))) (toChars!957 (transformation!459 (rule!966 separatorToken!170))))) (and b!152492 b_free!5579 (= (toChars!957 (transformation!459 (h!8039 rules!1920))) (toChars!957 (transformation!459 (rule!966 separatorToken!170))))) (and b!152480 b_free!5575 (= (toChars!957 (transformation!459 (rule!966 (h!8038 tokens!465)))) (toChars!957 (transformation!459 (rule!966 separatorToken!170))))) (and b!152483 b_free!5571) (and b!152910 b_free!5591 (= (toChars!957 (transformation!459 (h!8039 (t!24986 rules!1920)))) (toChars!957 (transformation!459 (rule!966 separatorToken!170))))) b_lambda!2875)))

(declare-fun b_lambda!2877 () Bool)

(assert (= b_lambda!2853 (or (and b!152492 b_free!5579 (= (toChars!957 (transformation!459 (h!8039 rules!1920))) (toChars!957 (transformation!459 (rule!966 (h!8038 tokens!465)))))) (and b!152929 b_free!5595 (= (toChars!957 (transformation!459 (rule!966 (h!8038 (t!24985 tokens!465))))) (toChars!957 (transformation!459 (rule!966 (h!8038 tokens!465)))))) (and b!152480 b_free!5575) (and b!152910 b_free!5591 (= (toChars!957 (transformation!459 (h!8039 (t!24986 rules!1920)))) (toChars!957 (transformation!459 (rule!966 (h!8038 tokens!465)))))) (and b!152483 b_free!5571 (= (toChars!957 (transformation!459 (rule!966 separatorToken!170))) (toChars!957 (transformation!459 (rule!966 (h!8038 tokens!465)))))) b_lambda!2877)))

(declare-fun b_lambda!2879 () Bool)

(assert (= b_lambda!2837 (or b!152486 b_lambda!2879)))

(declare-fun bs!14074 () Bool)

(declare-fun d!36783 () Bool)

(assert (= bs!14074 (and d!36783 b!152486)))

(assert (=> bs!14074 (= (dynLambda!925 lambda!3952 (h!8038 (t!24985 tokens!465))) (not (isSeparator!459 (rule!966 (h!8038 (t!24985 tokens!465))))))))

(assert (=> b!152512 d!36783))

(declare-fun b_lambda!2881 () Bool)

(assert (= b_lambda!2867 (or (and b!152929 b_free!5595 (= (toChars!957 (transformation!459 (rule!966 (h!8038 (t!24985 tokens!465))))) (toChars!957 (transformation!459 (rule!966 separatorToken!170))))) (and b!152492 b_free!5579 (= (toChars!957 (transformation!459 (h!8039 rules!1920))) (toChars!957 (transformation!459 (rule!966 separatorToken!170))))) (and b!152480 b_free!5575 (= (toChars!957 (transformation!459 (rule!966 (h!8038 tokens!465)))) (toChars!957 (transformation!459 (rule!966 separatorToken!170))))) (and b!152483 b_free!5571) (and b!152910 b_free!5591 (= (toChars!957 (transformation!459 (h!8039 (t!24986 rules!1920)))) (toChars!957 (transformation!459 (rule!966 separatorToken!170))))) b_lambda!2881)))

(check-sat (not d!36669) (not b_lambda!2879) (not b!152877) (not b!152833) (not b!152884) (not b!152926) (not b_lambda!2875) (not tb!5239) b_and!8927 (not b!152835) (not d!36671) (not b!152876) (not b!152908) (not b!152896) (not b_next!5575) (not b_next!5571) (not b!152513) (not b!152862) (not b_next!5573) (not b!152516) (not b!152928) (not b!152952) b_and!8931 (not b!152864) (not b!152723) (not d!36777) (not bm!6239) (not b!152892) (not b!152645) (not b!152750) (not b!152647) (not bm!6198) (not tb!5225) (not d!36719) (not d!36749) (not b!152894) (not d!36743) (not d!36765) (not b!152651) (not d!36769) (not b!152846) (not b!152721) (not b!152834) (not b!152650) b_and!8935 b_and!8869 (not b_lambda!2877) (not d!36747) (not b!152881) (not b!152941) (not b!152550) (not bm!6234) b_and!8933 (not bm!6241) (not b!152763) (not b!152950) (not b!152733) (not d!36679) b_and!8939 (not b!152559) (not b!152863) (not bm!6197) (not b_lambda!2881) (not b!152764) (not b!152893) (not b!152942) (not bm!6233) (not d!36757) (not b!152653) (not b!152897) b_and!8873 (not bm!6232) (not d!36773) (not bm!6199) (not b!152943) (not b!152729) (not b!152726) (not d!36677) (not b!152898) b_and!8937 (not d!36681) tp_is_empty!1615 (not d!36723) (not bm!6238) (not bm!6236) (not d!36763) (not b_next!5591) (not bm!6201) (not b_lambda!2871) (not b_next!5577) (not d!36745) (not b_next!5589) (not b!152946) (not b_next!5579) (not d!36753) (not b!152745) (not b_next!5569) (not b!152945) b_and!8929 (not b!152947) (not b!152744) b_and!8865 (not b!152887) (not b!152725) (not b!152949) (not b!152909) (not b!152951) (not b!152879) (not b_next!5593) (not d!36761) (not b!152915) (not b!152762) (not b!152847) (not b_lambda!2873) (not b!152883) (not b!152739) (not b!152654) (not bm!6237) (not b!152738) (not b_next!5595) (not b!152852) (not b!152927))
(check-sat b_and!8927 b_and!8931 b_and!8933 b_and!8939 b_and!8873 b_and!8937 (not b_next!5589) b_and!8929 b_and!8865 (not b_next!5593) (not b_next!5595) (not b_next!5575) (not b_next!5571) (not b_next!5573) b_and!8935 b_and!8869 (not b_next!5591) (not b_next!5577) (not b_next!5579) (not b_next!5569))
