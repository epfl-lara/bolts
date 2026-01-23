; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!190270 () Bool)

(assert start!190270)

(declare-fun b!1897525 () Bool)

(declare-fun b_free!53085 () Bool)

(declare-fun b_next!53789 () Bool)

(assert (=> b!1897525 (= b_free!53085 (not b_next!53789))))

(declare-fun tp!541681 () Bool)

(declare-fun b_and!146575 () Bool)

(assert (=> b!1897525 (= tp!541681 b_and!146575)))

(declare-fun b_free!53087 () Bool)

(declare-fun b_next!53791 () Bool)

(assert (=> b!1897525 (= b_free!53087 (not b_next!53791))))

(declare-fun tp!541684 () Bool)

(declare-fun b_and!146577 () Bool)

(assert (=> b!1897525 (= tp!541684 b_and!146577)))

(declare-fun b!1897512 () Bool)

(declare-fun b_free!53089 () Bool)

(declare-fun b_next!53793 () Bool)

(assert (=> b!1897512 (= b_free!53089 (not b_next!53793))))

(declare-fun tp!541683 () Bool)

(declare-fun b_and!146579 () Bool)

(assert (=> b!1897512 (= tp!541683 b_and!146579)))

(declare-fun b_free!53091 () Bool)

(declare-fun b_next!53795 () Bool)

(assert (=> b!1897512 (= b_free!53091 (not b_next!53795))))

(declare-fun tp!541682 () Bool)

(declare-fun b_and!146581 () Bool)

(assert (=> b!1897512 (= tp!541682 b_and!146581)))

(declare-fun b!1897523 () Bool)

(declare-fun b_free!53093 () Bool)

(declare-fun b_next!53797 () Bool)

(assert (=> b!1897523 (= b_free!53093 (not b_next!53797))))

(declare-fun tp!541679 () Bool)

(declare-fun b_and!146583 () Bool)

(assert (=> b!1897523 (= tp!541679 b_and!146583)))

(declare-fun b_free!53095 () Bool)

(declare-fun b_next!53799 () Bool)

(assert (=> b!1897523 (= b_free!53095 (not b_next!53799))))

(declare-fun tp!541675 () Bool)

(declare-fun b_and!146585 () Bool)

(assert (=> b!1897523 (= tp!541675 b_and!146585)))

(declare-fun tp!541686 () Bool)

(declare-fun e!1211543 () Bool)

(declare-fun e!1211539 () Bool)

(declare-fun b!1897503 () Bool)

(declare-datatypes ((List!21380 0))(
  ( (Nil!21298) (Cons!21298 (h!26699 (_ BitVec 16)) (t!176435 List!21380)) )
))
(declare-datatypes ((TokenValue!3919 0))(
  ( (FloatLiteralValue!7838 (text!27878 List!21380)) (TokenValueExt!3918 (__x!13336 Int)) (Broken!19595 (value!119382 List!21380)) (Object!4000) (End!3919) (Def!3919) (Underscore!3919) (Match!3919) (Else!3919) (Error!3919) (Case!3919) (If!3919) (Extends!3919) (Abstract!3919) (Class!3919) (Val!3919) (DelimiterValue!7838 (del!3979 List!21380)) (KeywordValue!3925 (value!119383 List!21380)) (CommentValue!7838 (value!119384 List!21380)) (WhitespaceValue!7838 (value!119385 List!21380)) (IndentationValue!3919 (value!119386 List!21380)) (String!24714) (Int32!3919) (Broken!19596 (value!119387 List!21380)) (Boolean!3920) (Unit!35644) (OperatorValue!3922 (op!3979 List!21380)) (IdentifierValue!7838 (value!119388 List!21380)) (IdentifierValue!7839 (value!119389 List!21380)) (WhitespaceValue!7839 (value!119390 List!21380)) (True!7838) (False!7838) (Broken!19597 (value!119391 List!21380)) (Broken!19598 (value!119392 List!21380)) (True!7839) (RightBrace!3919) (RightBracket!3919) (Colon!3919) (Null!3919) (Comma!3919) (LeftBracket!3919) (False!7839) (LeftBrace!3919) (ImaginaryLiteralValue!3919 (text!27879 List!21380)) (StringLiteralValue!11757 (value!119393 List!21380)) (EOFValue!3919 (value!119394 List!21380)) (IdentValue!3919 (value!119395 List!21380)) (DelimiterValue!7839 (value!119396 List!21380)) (DedentValue!3919 (value!119397 List!21380)) (NewLineValue!3919 (value!119398 List!21380)) (IntegerValue!11757 (value!119399 (_ BitVec 32)) (text!27880 List!21380)) (IntegerValue!11758 (value!119400 Int) (text!27881 List!21380)) (Times!3919) (Or!3919) (Equal!3919) (Minus!3919) (Broken!19599 (value!119401 List!21380)) (And!3919) (Div!3919) (LessEqual!3919) (Mod!3919) (Concat!9127) (Not!3919) (Plus!3919) (SpaceValue!3919 (value!119402 List!21380)) (IntegerValue!11759 (value!119403 Int) (text!27882 List!21380)) (StringLiteralValue!11758 (text!27883 List!21380)) (FloatLiteralValue!7839 (text!27884 List!21380)) (BytesLiteralValue!3919 (value!119404 List!21380)) (CommentValue!7839 (value!119405 List!21380)) (StringLiteralValue!11759 (value!119406 List!21380)) (ErrorTokenValue!3919 (msg!3980 List!21380)) )
))
(declare-datatypes ((C!10562 0))(
  ( (C!10563 (val!6233 Int)) )
))
(declare-datatypes ((List!21381 0))(
  ( (Nil!21299) (Cons!21299 (h!26700 C!10562) (t!176436 List!21381)) )
))
(declare-datatypes ((Regex!5208 0))(
  ( (ElementMatch!5208 (c!309418 C!10562)) (Concat!9128 (regOne!10928 Regex!5208) (regTwo!10928 Regex!5208)) (EmptyExpr!5208) (Star!5208 (reg!5537 Regex!5208)) (EmptyLang!5208) (Union!5208 (regOne!10929 Regex!5208) (regTwo!10929 Regex!5208)) )
))
(declare-datatypes ((String!24715 0))(
  ( (String!24716 (value!119407 String)) )
))
(declare-datatypes ((IArray!14185 0))(
  ( (IArray!14186 (innerList!7150 List!21381)) )
))
(declare-datatypes ((Conc!7090 0))(
  ( (Node!7090 (left!17076 Conc!7090) (right!17406 Conc!7090) (csize!14410 Int) (cheight!7301 Int)) (Leaf!10445 (xs!9984 IArray!14185) (csize!14411 Int)) (Empty!7090) )
))
(declare-datatypes ((BalanceConc!13996 0))(
  ( (BalanceConc!13997 (c!309419 Conc!7090)) )
))
(declare-datatypes ((TokenValueInjection!7422 0))(
  ( (TokenValueInjection!7423 (toValue!5400 Int) (toChars!5259 Int)) )
))
(declare-datatypes ((Rule!7366 0))(
  ( (Rule!7367 (regex!3783 Regex!5208) (tag!4203 String!24715) (isSeparator!3783 Bool) (transformation!3783 TokenValueInjection!7422)) )
))
(declare-datatypes ((Token!7118 0))(
  ( (Token!7119 (value!119408 TokenValue!3919) (rule!5976 Rule!7366) (size!16865 Int) (originalCharacters!4590 List!21381)) )
))
(declare-datatypes ((List!21382 0))(
  ( (Nil!21300) (Cons!21300 (h!26701 Token!7118) (t!176437 List!21382)) )
))
(declare-fun tokens!598 () List!21382)

(declare-fun inv!21 (TokenValue!3919) Bool)

(assert (=> b!1897503 (= e!1211543 (and (inv!21 (value!119408 (h!26701 tokens!598))) e!1211539 tp!541686))))

(declare-fun b!1897504 () Bool)

(declare-fun res!846953 () Bool)

(declare-fun e!1211548 () Bool)

(assert (=> b!1897504 (=> (not res!846953) (not e!1211548))))

(declare-datatypes ((LexerInterface!3396 0))(
  ( (LexerInterfaceExt!3393 (__x!13337 Int)) (Lexer!3394) )
))
(declare-fun thiss!23328 () LexerInterface!3396)

(declare-datatypes ((List!21383 0))(
  ( (Nil!21301) (Cons!21301 (h!26702 Rule!7366) (t!176438 List!21383)) )
))
(declare-fun rules!3198 () List!21383)

(declare-fun rulesInvariant!3003 (LexerInterface!3396 List!21383) Bool)

(assert (=> b!1897504 (= res!846953 (rulesInvariant!3003 thiss!23328 rules!3198))))

(declare-fun b!1897505 () Bool)

(declare-fun e!1211551 () Bool)

(declare-fun tp!541687 () Bool)

(declare-fun inv!28399 (String!24715) Bool)

(declare-fun inv!28402 (TokenValueInjection!7422) Bool)

(assert (=> b!1897505 (= e!1211539 (and tp!541687 (inv!28399 (tag!4203 (rule!5976 (h!26701 tokens!598)))) (inv!28402 (transformation!3783 (rule!5976 (h!26701 tokens!598)))) e!1211551))))

(declare-fun b!1897507 () Bool)

(declare-fun e!1211537 () Bool)

(declare-fun separatorToken!354 () Token!7118)

(declare-fun lt!725644 () Rule!7366)

(assert (=> b!1897507 (= e!1211537 (= (rule!5976 separatorToken!354) lt!725644))))

(declare-fun b!1897508 () Bool)

(declare-fun res!846959 () Bool)

(assert (=> b!1897508 (=> (not res!846959) (not e!1211548))))

(assert (=> b!1897508 (= res!846959 (is-Cons!21300 tokens!598))))

(declare-fun b!1897509 () Bool)

(assert (=> b!1897509 (= e!1211548 (not true))))

(declare-fun lt!725651 () Bool)

(declare-fun rulesProduceEachTokenIndividuallyList!1127 (LexerInterface!3396 List!21383 List!21382) Bool)

(assert (=> b!1897509 (= lt!725651 (rulesProduceEachTokenIndividuallyList!1127 thiss!23328 rules!3198 (t!176437 tokens!598)))))

(declare-fun e!1211549 () Bool)

(assert (=> b!1897509 e!1211549))

(declare-fun res!846952 () Bool)

(assert (=> b!1897509 (=> (not res!846952) (not e!1211549))))

(declare-datatypes ((Option!4271 0))(
  ( (None!4270) (Some!4270 (v!26299 Rule!7366)) )
))
(declare-fun lt!725640 () Option!4271)

(declare-fun isDefined!3569 (Option!4271) Bool)

(assert (=> b!1897509 (= res!846952 (isDefined!3569 lt!725640))))

(declare-fun getRuleFromTag!626 (LexerInterface!3396 List!21383 String!24715) Option!4271)

(assert (=> b!1897509 (= lt!725640 (getRuleFromTag!626 thiss!23328 rules!3198 (tag!4203 (rule!5976 (h!26701 tokens!598)))))))

(declare-datatypes ((Unit!35645 0))(
  ( (Unit!35646) )
))
(declare-fun lt!725642 () Unit!35645)

(declare-fun lt!725647 () List!21381)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!626 (LexerInterface!3396 List!21383 List!21381 Token!7118) Unit!35645)

(assert (=> b!1897509 (= lt!725642 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!626 thiss!23328 rules!3198 lt!725647 (h!26701 tokens!598)))))

(declare-fun e!1211552 () Bool)

(assert (=> b!1897509 e!1211552))

(declare-fun res!846949 () Bool)

(assert (=> b!1897509 (=> (not res!846949) (not e!1211552))))

(declare-datatypes ((tuple2!20094 0))(
  ( (tuple2!20095 (_1!11516 Token!7118) (_2!11516 List!21381)) )
))
(declare-datatypes ((Option!4272 0))(
  ( (None!4271) (Some!4271 (v!26300 tuple2!20094)) )
))
(declare-fun lt!725650 () Option!4272)

(declare-fun isDefined!3570 (Option!4272) Bool)

(assert (=> b!1897509 (= res!846949 (isDefined!3570 lt!725650))))

(declare-fun maxPrefix!1842 (LexerInterface!3396 List!21383 List!21381) Option!4272)

(assert (=> b!1897509 (= lt!725650 (maxPrefix!1842 thiss!23328 rules!3198 lt!725647))))

(declare-fun lt!725639 () BalanceConc!13996)

(declare-fun list!8663 (BalanceConc!13996) List!21381)

(assert (=> b!1897509 (= lt!725647 (list!8663 lt!725639))))

(declare-fun e!1211547 () Bool)

(assert (=> b!1897509 e!1211547))

(declare-fun res!846957 () Bool)

(assert (=> b!1897509 (=> (not res!846957) (not e!1211547))))

(declare-fun lt!725641 () Option!4271)

(assert (=> b!1897509 (= res!846957 (isDefined!3569 lt!725641))))

(assert (=> b!1897509 (= lt!725641 (getRuleFromTag!626 thiss!23328 rules!3198 (tag!4203 (rule!5976 separatorToken!354))))))

(declare-fun lt!725643 () List!21381)

(declare-fun lt!725646 () Unit!35645)

(assert (=> b!1897509 (= lt!725646 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!626 thiss!23328 rules!3198 lt!725643 separatorToken!354))))

(declare-fun charsOf!2339 (Token!7118) BalanceConc!13996)

(assert (=> b!1897509 (= lt!725643 (list!8663 (charsOf!2339 separatorToken!354)))))

(declare-fun lt!725648 () Unit!35645)

(declare-fun lemmaEqSameImage!491 (TokenValueInjection!7422 BalanceConc!13996 BalanceConc!13996) Unit!35645)

(declare-fun seqFromList!2655 (List!21381) BalanceConc!13996)

(assert (=> b!1897509 (= lt!725648 (lemmaEqSameImage!491 (transformation!3783 (rule!5976 (h!26701 tokens!598))) lt!725639 (seqFromList!2655 (originalCharacters!4590 (h!26701 tokens!598)))))))

(declare-fun lt!725645 () Unit!35645)

(declare-fun lemmaSemiInverse!762 (TokenValueInjection!7422 BalanceConc!13996) Unit!35645)

(assert (=> b!1897509 (= lt!725645 (lemmaSemiInverse!762 (transformation!3783 (rule!5976 (h!26701 tokens!598))) lt!725639))))

(assert (=> b!1897509 (= lt!725639 (charsOf!2339 (h!26701 tokens!598)))))

(declare-fun tp!541678 () Bool)

(declare-fun b!1897510 () Bool)

(declare-fun e!1211540 () Bool)

(declare-fun e!1211535 () Bool)

(assert (=> b!1897510 (= e!1211535 (and tp!541678 (inv!28399 (tag!4203 (h!26702 rules!3198))) (inv!28402 (transformation!3783 (h!26702 rules!3198))) e!1211540))))

(declare-fun b!1897511 () Bool)

(declare-fun res!846951 () Bool)

(assert (=> b!1897511 (=> (not res!846951) (not e!1211548))))

(declare-fun sepAndNonSepRulesDisjointChars!881 (List!21383 List!21383) Bool)

(assert (=> b!1897511 (= res!846951 (sepAndNonSepRulesDisjointChars!881 rules!3198 rules!3198))))

(assert (=> b!1897512 (= e!1211540 (and tp!541683 tp!541682))))

(declare-fun b!1897513 () Bool)

(declare-fun res!846947 () Bool)

(assert (=> b!1897513 (=> (not res!846947) (not e!1211548))))

(assert (=> b!1897513 (= res!846947 (rulesProduceEachTokenIndividuallyList!1127 thiss!23328 rules!3198 tokens!598))))

(declare-fun b!1897514 () Bool)

(declare-fun e!1211536 () Bool)

(assert (=> b!1897514 (= e!1211549 e!1211536)))

(declare-fun res!846955 () Bool)

(assert (=> b!1897514 (=> (not res!846955) (not e!1211536))))

(declare-fun lt!725649 () Rule!7366)

(declare-fun matchR!2494 (Regex!5208 List!21381) Bool)

(assert (=> b!1897514 (= res!846955 (matchR!2494 (regex!3783 lt!725649) lt!725647))))

(declare-fun get!6570 (Option!4271) Rule!7366)

(assert (=> b!1897514 (= lt!725649 (get!6570 lt!725640))))

(declare-fun b!1897515 () Bool)

(assert (=> b!1897515 (= e!1211547 e!1211537)))

(declare-fun res!846954 () Bool)

(assert (=> b!1897515 (=> (not res!846954) (not e!1211537))))

(assert (=> b!1897515 (= res!846954 (matchR!2494 (regex!3783 lt!725644) lt!725643))))

(assert (=> b!1897515 (= lt!725644 (get!6570 lt!725641))))

(declare-fun e!1211546 () Bool)

(declare-fun tp!541685 () Bool)

(declare-fun b!1897516 () Bool)

(declare-fun e!1211542 () Bool)

(assert (=> b!1897516 (= e!1211546 (and tp!541685 (inv!28399 (tag!4203 (rule!5976 separatorToken!354))) (inv!28402 (transformation!3783 (rule!5976 separatorToken!354))) e!1211542))))

(declare-fun b!1897517 () Bool)

(declare-fun res!846948 () Bool)

(assert (=> b!1897517 (=> (not res!846948) (not e!1211548))))

(declare-fun isEmpty!13073 (List!21383) Bool)

(assert (=> b!1897517 (= res!846948 (not (isEmpty!13073 rules!3198)))))

(declare-fun b!1897518 () Bool)

(declare-fun res!846956 () Bool)

(assert (=> b!1897518 (=> (not res!846956) (not e!1211548))))

(declare-fun lambda!74140 () Int)

(declare-fun forall!4461 (List!21382 Int) Bool)

(assert (=> b!1897518 (= res!846956 (forall!4461 tokens!598 lambda!74140))))

(declare-fun b!1897506 () Bool)

(assert (=> b!1897506 (= e!1211536 (= (rule!5976 (h!26701 tokens!598)) lt!725649))))

(declare-fun res!846958 () Bool)

(assert (=> start!190270 (=> (not res!846958) (not e!1211548))))

(assert (=> start!190270 (= res!846958 (is-Lexer!3394 thiss!23328))))

(assert (=> start!190270 e!1211548))

(assert (=> start!190270 true))

(declare-fun e!1211550 () Bool)

(assert (=> start!190270 e!1211550))

(declare-fun e!1211545 () Bool)

(assert (=> start!190270 e!1211545))

(declare-fun e!1211541 () Bool)

(declare-fun inv!28403 (Token!7118) Bool)

(assert (=> start!190270 (and (inv!28403 separatorToken!354) e!1211541)))

(declare-fun b!1897519 () Bool)

(declare-fun res!846950 () Bool)

(assert (=> b!1897519 (=> (not res!846950) (not e!1211548))))

(assert (=> b!1897519 (= res!846950 (isSeparator!3783 (rule!5976 separatorToken!354)))))

(declare-fun b!1897520 () Bool)

(declare-fun tp!541676 () Bool)

(assert (=> b!1897520 (= e!1211545 (and (inv!28403 (h!26701 tokens!598)) e!1211543 tp!541676))))

(declare-fun b!1897521 () Bool)

(declare-fun tp!541677 () Bool)

(assert (=> b!1897521 (= e!1211550 (and e!1211535 tp!541677))))

(declare-fun b!1897522 () Bool)

(declare-fun res!846946 () Bool)

(assert (=> b!1897522 (=> (not res!846946) (not e!1211548))))

(declare-fun rulesProduceIndividualToken!1568 (LexerInterface!3396 List!21383 Token!7118) Bool)

(assert (=> b!1897522 (= res!846946 (rulesProduceIndividualToken!1568 thiss!23328 rules!3198 separatorToken!354))))

(assert (=> b!1897523 (= e!1211551 (and tp!541679 tp!541675))))

(declare-fun b!1897524 () Bool)

(declare-fun get!6571 (Option!4272) tuple2!20094)

(assert (=> b!1897524 (= e!1211552 (= (_1!11516 (get!6571 lt!725650)) (h!26701 tokens!598)))))

(assert (=> b!1897525 (= e!1211542 (and tp!541681 tp!541684))))

(declare-fun b!1897526 () Bool)

(declare-fun tp!541680 () Bool)

(assert (=> b!1897526 (= e!1211541 (and (inv!21 (value!119408 separatorToken!354)) e!1211546 tp!541680))))

(assert (= (and start!190270 res!846958) b!1897517))

(assert (= (and b!1897517 res!846948) b!1897504))

(assert (= (and b!1897504 res!846953) b!1897513))

(assert (= (and b!1897513 res!846947) b!1897522))

(assert (= (and b!1897522 res!846946) b!1897519))

(assert (= (and b!1897519 res!846950) b!1897518))

(assert (= (and b!1897518 res!846956) b!1897511))

(assert (= (and b!1897511 res!846951) b!1897508))

(assert (= (and b!1897508 res!846959) b!1897509))

(assert (= (and b!1897509 res!846957) b!1897515))

(assert (= (and b!1897515 res!846954) b!1897507))

(assert (= (and b!1897509 res!846949) b!1897524))

(assert (= (and b!1897509 res!846952) b!1897514))

(assert (= (and b!1897514 res!846955) b!1897506))

(assert (= b!1897510 b!1897512))

(assert (= b!1897521 b!1897510))

(assert (= (and start!190270 (is-Cons!21301 rules!3198)) b!1897521))

(assert (= b!1897505 b!1897523))

(assert (= b!1897503 b!1897505))

(assert (= b!1897520 b!1897503))

(assert (= (and start!190270 (is-Cons!21300 tokens!598)) b!1897520))

(assert (= b!1897516 b!1897525))

(assert (= b!1897526 b!1897516))

(assert (= start!190270 b!1897526))

(declare-fun m!2328659 () Bool)

(assert (=> b!1897518 m!2328659))

(declare-fun m!2328661 () Bool)

(assert (=> b!1897510 m!2328661))

(declare-fun m!2328663 () Bool)

(assert (=> b!1897510 m!2328663))

(declare-fun m!2328665 () Bool)

(assert (=> b!1897503 m!2328665))

(declare-fun m!2328667 () Bool)

(assert (=> b!1897513 m!2328667))

(declare-fun m!2328669 () Bool)

(assert (=> b!1897517 m!2328669))

(declare-fun m!2328671 () Bool)

(assert (=> b!1897516 m!2328671))

(declare-fun m!2328673 () Bool)

(assert (=> b!1897516 m!2328673))

(declare-fun m!2328675 () Bool)

(assert (=> b!1897522 m!2328675))

(declare-fun m!2328677 () Bool)

(assert (=> b!1897524 m!2328677))

(declare-fun m!2328679 () Bool)

(assert (=> b!1897515 m!2328679))

(declare-fun m!2328681 () Bool)

(assert (=> b!1897515 m!2328681))

(declare-fun m!2328683 () Bool)

(assert (=> b!1897526 m!2328683))

(declare-fun m!2328685 () Bool)

(assert (=> b!1897520 m!2328685))

(declare-fun m!2328687 () Bool)

(assert (=> b!1897509 m!2328687))

(declare-fun m!2328689 () Bool)

(assert (=> b!1897509 m!2328689))

(declare-fun m!2328691 () Bool)

(assert (=> b!1897509 m!2328691))

(declare-fun m!2328693 () Bool)

(assert (=> b!1897509 m!2328693))

(assert (=> b!1897509 m!2328693))

(declare-fun m!2328695 () Bool)

(assert (=> b!1897509 m!2328695))

(declare-fun m!2328697 () Bool)

(assert (=> b!1897509 m!2328697))

(declare-fun m!2328699 () Bool)

(assert (=> b!1897509 m!2328699))

(declare-fun m!2328701 () Bool)

(assert (=> b!1897509 m!2328701))

(declare-fun m!2328703 () Bool)

(assert (=> b!1897509 m!2328703))

(declare-fun m!2328705 () Bool)

(assert (=> b!1897509 m!2328705))

(declare-fun m!2328707 () Bool)

(assert (=> b!1897509 m!2328707))

(declare-fun m!2328709 () Bool)

(assert (=> b!1897509 m!2328709))

(declare-fun m!2328711 () Bool)

(assert (=> b!1897509 m!2328711))

(assert (=> b!1897509 m!2328703))

(declare-fun m!2328713 () Bool)

(assert (=> b!1897509 m!2328713))

(declare-fun m!2328715 () Bool)

(assert (=> b!1897509 m!2328715))

(declare-fun m!2328717 () Bool)

(assert (=> b!1897509 m!2328717))

(declare-fun m!2328719 () Bool)

(assert (=> b!1897511 m!2328719))

(declare-fun m!2328721 () Bool)

(assert (=> b!1897505 m!2328721))

(declare-fun m!2328723 () Bool)

(assert (=> b!1897505 m!2328723))

(declare-fun m!2328725 () Bool)

(assert (=> start!190270 m!2328725))

(declare-fun m!2328727 () Bool)

(assert (=> b!1897504 m!2328727))

(declare-fun m!2328729 () Bool)

(assert (=> b!1897514 m!2328729))

(declare-fun m!2328731 () Bool)

(assert (=> b!1897514 m!2328731))

(push 1)

(assert (not b!1897514))

(assert (not b!1897504))

(assert (not b_next!53795))

(assert (not b_next!53797))

(assert (not b!1897526))

(assert (not b!1897505))

(assert b_and!146575)

(assert (not b_next!53789))

(assert (not start!190270))

(assert (not b!1897518))

(assert (not b_next!53793))

(assert (not b!1897509))

(assert (not b!1897515))

(assert b_and!146577)

(assert b_and!146581)

(assert (not b!1897522))

(assert (not b!1897520))

(assert (not b!1897503))

(assert (not b!1897524))

(assert b_and!146579)

(assert (not b_next!53799))

(assert (not b!1897517))

(assert (not b!1897510))

(assert (not b!1897516))

(assert (not b_next!53791))

(assert b_and!146585)

(assert (not b!1897521))

(assert (not b!1897513))

(assert (not b!1897511))

(assert b_and!146583)

(check-sat)

(pop 1)

(push 1)

(assert b_and!146577)

(assert (not b_next!53795))

(assert b_and!146581)

(assert (not b_next!53797))

(assert b_and!146575)

(assert (not b_next!53789))

(assert (not b_next!53791))

(assert (not b_next!53793))

(assert b_and!146579)

(assert (not b_next!53799))

(assert b_and!146585)

(assert b_and!146583)

(check-sat)

(pop 1)

