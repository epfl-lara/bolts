; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!139240 () Bool)

(assert start!139240)

(declare-fun b!1481958 () Bool)

(declare-fun b_free!38283 () Bool)

(declare-fun b_next!38987 () Bool)

(assert (=> b!1481958 (= b_free!38283 (not b_next!38987))))

(declare-fun tp!420373 () Bool)

(declare-fun b_and!102953 () Bool)

(assert (=> b!1481958 (= tp!420373 b_and!102953)))

(declare-fun b_free!38285 () Bool)

(declare-fun b_next!38989 () Bool)

(assert (=> b!1481958 (= b_free!38285 (not b_next!38989))))

(declare-fun tp!420380 () Bool)

(declare-fun b_and!102955 () Bool)

(assert (=> b!1481958 (= tp!420380 b_and!102955)))

(declare-fun b!1481964 () Bool)

(declare-fun b_free!38287 () Bool)

(declare-fun b_next!38991 () Bool)

(assert (=> b!1481964 (= b_free!38287 (not b_next!38991))))

(declare-fun tp!420368 () Bool)

(declare-fun b_and!102957 () Bool)

(assert (=> b!1481964 (= tp!420368 b_and!102957)))

(declare-fun b_free!38289 () Bool)

(declare-fun b_next!38993 () Bool)

(assert (=> b!1481964 (= b_free!38289 (not b_next!38993))))

(declare-fun tp!420374 () Bool)

(declare-fun b_and!102959 () Bool)

(assert (=> b!1481964 (= tp!420374 b_and!102959)))

(declare-fun b!1481966 () Bool)

(declare-fun b_free!38291 () Bool)

(declare-fun b_next!38995 () Bool)

(assert (=> b!1481966 (= b_free!38291 (not b_next!38995))))

(declare-fun tp!420379 () Bool)

(declare-fun b_and!102961 () Bool)

(assert (=> b!1481966 (= tp!420379 b_and!102961)))

(declare-fun b_free!38293 () Bool)

(declare-fun b_next!38997 () Bool)

(assert (=> b!1481966 (= b_free!38293 (not b_next!38997))))

(declare-fun tp!420376 () Bool)

(declare-fun b_and!102963 () Bool)

(assert (=> b!1481966 (= tp!420376 b_and!102963)))

(declare-fun e!947463 () Bool)

(declare-datatypes ((List!15746 0))(
  ( (Nil!15680) (Cons!15680 (h!21081 (_ BitVec 16)) (t!137549 List!15746)) )
))
(declare-datatypes ((TokenValue!2886 0))(
  ( (FloatLiteralValue!5772 (text!20647 List!15746)) (TokenValueExt!2885 (__x!9562 Int)) (Broken!14430 (value!89309 List!15746)) (Object!2951) (End!2886) (Def!2886) (Underscore!2886) (Match!2886) (Else!2886) (Error!2886) (Case!2886) (If!2886) (Extends!2886) (Abstract!2886) (Class!2886) (Val!2886) (DelimiterValue!5772 (del!2946 List!15746)) (KeywordValue!2892 (value!89310 List!15746)) (CommentValue!5772 (value!89311 List!15746)) (WhitespaceValue!5772 (value!89312 List!15746)) (IndentationValue!2886 (value!89313 List!15746)) (String!18687) (Int32!2886) (Broken!14431 (value!89314 List!15746)) (Boolean!2887) (Unit!25558) (OperatorValue!2889 (op!2946 List!15746)) (IdentifierValue!5772 (value!89315 List!15746)) (IdentifierValue!5773 (value!89316 List!15746)) (WhitespaceValue!5773 (value!89317 List!15746)) (True!5772) (False!5772) (Broken!14432 (value!89318 List!15746)) (Broken!14433 (value!89319 List!15746)) (True!5773) (RightBrace!2886) (RightBracket!2886) (Colon!2886) (Null!2886) (Comma!2886) (LeftBracket!2886) (False!5773) (LeftBrace!2886) (ImaginaryLiteralValue!2886 (text!20648 List!15746)) (StringLiteralValue!8658 (value!89320 List!15746)) (EOFValue!2886 (value!89321 List!15746)) (IdentValue!2886 (value!89322 List!15746)) (DelimiterValue!5773 (value!89323 List!15746)) (DedentValue!2886 (value!89324 List!15746)) (NewLineValue!2886 (value!89325 List!15746)) (IntegerValue!8658 (value!89326 (_ BitVec 32)) (text!20649 List!15746)) (IntegerValue!8659 (value!89327 Int) (text!20650 List!15746)) (Times!2886) (Or!2886) (Equal!2886) (Minus!2886) (Broken!14434 (value!89328 List!15746)) (And!2886) (Div!2886) (LessEqual!2886) (Mod!2886) (Concat!6996) (Not!2886) (Plus!2886) (SpaceValue!2886 (value!89329 List!15746)) (IntegerValue!8660 (value!89330 Int) (text!20651 List!15746)) (StringLiteralValue!8659 (text!20652 List!15746)) (FloatLiteralValue!5773 (text!20653 List!15746)) (BytesLiteralValue!2886 (value!89331 List!15746)) (CommentValue!5773 (value!89332 List!15746)) (StringLiteralValue!8660 (value!89333 List!15746)) (ErrorTokenValue!2886 (msg!2947 List!15746)) )
))
(declare-datatypes ((C!8398 0))(
  ( (C!8399 (val!4769 Int)) )
))
(declare-datatypes ((Regex!4110 0))(
  ( (ElementMatch!4110 (c!243010 C!8398)) (Concat!6997 (regOne!8732 Regex!4110) (regTwo!8732 Regex!4110)) (EmptyExpr!4110) (Star!4110 (reg!4439 Regex!4110)) (EmptyLang!4110) (Union!4110 (regOne!8733 Regex!4110) (regTwo!8733 Regex!4110)) )
))
(declare-datatypes ((String!18688 0))(
  ( (String!18689 (value!89334 String)) )
))
(declare-datatypes ((List!15747 0))(
  ( (Nil!15681) (Cons!15681 (h!21082 C!8398) (t!137550 List!15747)) )
))
(declare-datatypes ((IArray!10689 0))(
  ( (IArray!10690 (innerList!5402 List!15747)) )
))
(declare-datatypes ((Conc!5342 0))(
  ( (Node!5342 (left!13223 Conc!5342) (right!13553 Conc!5342) (csize!10914 Int) (cheight!5553 Int)) (Leaf!7942 (xs!8097 IArray!10689) (csize!10915 Int)) (Empty!5342) )
))
(declare-datatypes ((BalanceConc!10624 0))(
  ( (BalanceConc!10625 (c!243011 Conc!5342)) )
))
(declare-datatypes ((TokenValueInjection!5432 0))(
  ( (TokenValueInjection!5433 (toValue!4135 Int) (toChars!3994 Int)) )
))
(declare-datatypes ((Rule!5392 0))(
  ( (Rule!5393 (regex!2796 Regex!4110) (tag!3060 String!18688) (isSeparator!2796 Bool) (transformation!2796 TokenValueInjection!5432)) )
))
(declare-datatypes ((Token!5254 0))(
  ( (Token!5255 (value!89335 TokenValue!2886) (rule!4573 Rule!5392) (size!12702 Int) (originalCharacters!3658 List!15747)) )
))
(declare-datatypes ((List!15748 0))(
  ( (Nil!15682) (Cons!15682 (h!21083 Token!5254) (t!137551 List!15748)) )
))
(declare-fun l2!3105 () List!15748)

(declare-fun tp!420377 () Bool)

(declare-fun e!947468 () Bool)

(declare-fun b!1481944 () Bool)

(declare-fun inv!21 (TokenValue!2886) Bool)

(assert (=> b!1481944 (= e!947463 (and (inv!21 (value!89335 (h!21083 l2!3105))) e!947468 tp!420377))))

(declare-fun tp!420369 () Bool)

(declare-fun b!1481945 () Bool)

(declare-fun e!947473 () Bool)

(declare-fun inv!20904 (Token!5254) Bool)

(assert (=> b!1481945 (= e!947473 (and (inv!20904 (h!21083 l2!3105)) e!947463 tp!420369))))

(declare-fun b!1481946 () Bool)

(declare-fun res!669567 () Bool)

(declare-fun e!947478 () Bool)

(assert (=> b!1481946 (=> (not res!669567) (not e!947478))))

(declare-datatypes ((List!15749 0))(
  ( (Nil!15683) (Cons!15683 (h!21084 Rule!5392) (t!137552 List!15749)) )
))
(declare-fun rules!4290 () List!15749)

(declare-datatypes ((LexerInterface!2452 0))(
  ( (LexerInterfaceExt!2449 (__x!9563 Int)) (Lexer!2450) )
))
(declare-fun thiss!27374 () LexerInterface!2452)

(declare-fun tokensListTwoByTwoPredicateSeparableList!312 (LexerInterface!2452 List!15748 List!15749) Bool)

(assert (=> b!1481946 (= res!669567 (tokensListTwoByTwoPredicateSeparableList!312 thiss!27374 l2!3105 rules!4290))))

(declare-fun b!1481947 () Bool)

(declare-fun e!947469 () Bool)

(assert (=> b!1481947 (= e!947478 (not e!947469))))

(declare-fun res!669559 () Bool)

(assert (=> b!1481947 (=> res!669559 e!947469)))

(declare-fun lt!514935 () Token!5254)

(declare-fun lt!514932 () Token!5254)

(declare-fun separableTokensPredicate!591 (LexerInterface!2452 Token!5254 Token!5254 List!15749) Bool)

(assert (=> b!1481947 (= res!669559 (not (separableTokensPredicate!591 thiss!27374 lt!514932 lt!514935 rules!4290)))))

(declare-fun rulesProduceIndividualToken!1309 (LexerInterface!2452 List!15749 Token!5254) Bool)

(assert (=> b!1481947 (rulesProduceIndividualToken!1309 thiss!27374 rules!4290 lt!514935)))

(declare-datatypes ((Unit!25559 0))(
  ( (Unit!25560) )
))
(declare-fun lt!514933 () Unit!25559)

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!490 (LexerInterface!2452 List!15749 List!15748 Token!5254) Unit!25559)

(assert (=> b!1481947 (= lt!514933 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!490 thiss!27374 rules!4290 l2!3105 lt!514935))))

(declare-fun head!3084 (List!15748) Token!5254)

(assert (=> b!1481947 (= lt!514935 (head!3084 l2!3105))))

(assert (=> b!1481947 (rulesProduceIndividualToken!1309 thiss!27374 rules!4290 lt!514932)))

(declare-fun lt!514934 () Unit!25559)

(declare-fun l1!3136 () List!15748)

(assert (=> b!1481947 (= lt!514934 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!490 thiss!27374 rules!4290 l1!3136 lt!514932))))

(declare-fun last!354 (List!15748) Token!5254)

(assert (=> b!1481947 (= lt!514932 (last!354 l1!3136))))

(declare-fun b!1481948 () Bool)

(declare-fun res!669558 () Bool)

(assert (=> b!1481948 (=> (not res!669558) (not e!947478))))

(declare-fun rulesProduceEachTokenIndividuallyList!819 (LexerInterface!2452 List!15749 List!15748) Bool)

(assert (=> b!1481948 (= res!669558 (rulesProduceEachTokenIndividuallyList!819 thiss!27374 rules!4290 l2!3105))))

(declare-fun b!1481949 () Bool)

(declare-fun e!947466 () Bool)

(declare-fun e!947474 () Bool)

(declare-fun tp!420367 () Bool)

(assert (=> b!1481949 (= e!947466 (and e!947474 tp!420367))))

(declare-fun b!1481950 () Bool)

(declare-fun res!669560 () Bool)

(assert (=> b!1481950 (=> (not res!669560) (not e!947478))))

(declare-fun isEmpty!9812 (List!15749) Bool)

(assert (=> b!1481950 (= res!669560 (not (isEmpty!9812 rules!4290)))))

(declare-fun b!1481951 () Bool)

(declare-fun e!947472 () Bool)

(assert (=> b!1481951 (= e!947469 e!947472)))

(declare-fun res!669561 () Bool)

(assert (=> b!1481951 (=> (not res!669561) (not e!947472))))

(assert (=> b!1481951 (= res!669561 (is-Cons!15682 l1!3136))))

(declare-fun b!1481952 () Bool)

(declare-fun isEmpty!9813 (List!15748) Bool)

(assert (=> b!1481952 (= e!947472 (isEmpty!9813 (t!137551 l1!3136)))))

(declare-fun b!1481953 () Bool)

(declare-fun res!669564 () Bool)

(assert (=> b!1481953 (=> (not res!669564) (not e!947478))))

(assert (=> b!1481953 (= res!669564 (tokensListTwoByTwoPredicateSeparableList!312 thiss!27374 l1!3136 rules!4290))))

(declare-fun e!947461 () Bool)

(declare-fun e!947464 () Bool)

(declare-fun b!1481954 () Bool)

(declare-fun tp!420375 () Bool)

(declare-fun inv!20901 (String!18688) Bool)

(declare-fun inv!20905 (TokenValueInjection!5432) Bool)

(assert (=> b!1481954 (= e!947461 (and tp!420375 (inv!20901 (tag!3060 (rule!4573 (h!21083 l1!3136)))) (inv!20905 (transformation!2796 (rule!4573 (h!21083 l1!3136)))) e!947464))))

(declare-fun b!1481955 () Bool)

(declare-fun e!947471 () Bool)

(assert (=> b!1481955 (= e!947471 (not (isEmpty!9813 (t!137551 l1!3136))))))

(declare-fun b!1481956 () Bool)

(declare-fun res!669566 () Bool)

(assert (=> b!1481956 (=> (not res!669566) (not e!947478))))

(assert (=> b!1481956 (= res!669566 (not (isEmpty!9813 l1!3136)))))

(declare-fun b!1481957 () Bool)

(declare-fun res!669570 () Bool)

(assert (=> b!1481957 (=> (not res!669570) (not e!947478))))

(declare-fun rulesInvariant!2241 (LexerInterface!2452 List!15749) Bool)

(assert (=> b!1481957 (= res!669570 (rulesInvariant!2241 thiss!27374 rules!4290))))

(declare-fun res!669568 () Bool)

(assert (=> start!139240 (=> (not res!669568) (not e!947478))))

(assert (=> start!139240 (= res!669568 (is-Lexer!2450 thiss!27374))))

(assert (=> start!139240 e!947478))

(assert (=> start!139240 true))

(assert (=> start!139240 e!947466))

(declare-fun e!947470 () Bool)

(assert (=> start!139240 e!947470))

(assert (=> start!139240 e!947473))

(assert (=> b!1481958 (= e!947464 (and tp!420373 tp!420380))))

(declare-fun b!1481959 () Bool)

(declare-fun tp!420371 () Bool)

(declare-fun e!947459 () Bool)

(assert (=> b!1481959 (= e!947474 (and tp!420371 (inv!20901 (tag!3060 (h!21084 rules!4290))) (inv!20905 (transformation!2796 (h!21084 rules!4290))) e!947459))))

(declare-fun b!1481960 () Bool)

(declare-fun res!669563 () Bool)

(assert (=> b!1481960 (=> res!669563 e!947469)))

(assert (=> b!1481960 (= res!669563 e!947471)))

(declare-fun res!669562 () Bool)

(assert (=> b!1481960 (=> (not res!669562) (not e!947471))))

(assert (=> b!1481960 (= res!669562 (is-Cons!15682 l1!3136))))

(declare-fun b!1481961 () Bool)

(declare-fun tp!420378 () Bool)

(declare-fun e!947460 () Bool)

(assert (=> b!1481961 (= e!947460 (and (inv!21 (value!89335 (h!21083 l1!3136))) e!947461 tp!420378))))

(declare-fun b!1481962 () Bool)

(declare-fun res!669569 () Bool)

(assert (=> b!1481962 (=> (not res!669569) (not e!947478))))

(assert (=> b!1481962 (= res!669569 (not (isEmpty!9813 l2!3105)))))

(declare-fun b!1481963 () Bool)

(declare-fun tp!420370 () Bool)

(assert (=> b!1481963 (= e!947470 (and (inv!20904 (h!21083 l1!3136)) e!947460 tp!420370))))

(assert (=> b!1481964 (= e!947459 (and tp!420368 tp!420374))))

(declare-fun b!1481965 () Bool)

(declare-fun res!669565 () Bool)

(assert (=> b!1481965 (=> (not res!669565) (not e!947478))))

(assert (=> b!1481965 (= res!669565 (rulesProduceEachTokenIndividuallyList!819 thiss!27374 rules!4290 l1!3136))))

(declare-fun e!947477 () Bool)

(assert (=> b!1481966 (= e!947477 (and tp!420379 tp!420376))))

(declare-fun b!1481967 () Bool)

(declare-fun tp!420372 () Bool)

(assert (=> b!1481967 (= e!947468 (and tp!420372 (inv!20901 (tag!3060 (rule!4573 (h!21083 l2!3105)))) (inv!20905 (transformation!2796 (rule!4573 (h!21083 l2!3105)))) e!947477))))

(assert (= (and start!139240 res!669568) b!1481950))

(assert (= (and b!1481950 res!669560) b!1481957))

(assert (= (and b!1481957 res!669570) b!1481965))

(assert (= (and b!1481965 res!669565) b!1481948))

(assert (= (and b!1481948 res!669558) b!1481953))

(assert (= (and b!1481953 res!669564) b!1481946))

(assert (= (and b!1481946 res!669567) b!1481956))

(assert (= (and b!1481956 res!669566) b!1481962))

(assert (= (and b!1481962 res!669569) b!1481947))

(assert (= (and b!1481947 (not res!669559)) b!1481960))

(assert (= (and b!1481960 res!669562) b!1481955))

(assert (= (and b!1481960 (not res!669563)) b!1481951))

(assert (= (and b!1481951 res!669561) b!1481952))

(assert (= b!1481959 b!1481964))

(assert (= b!1481949 b!1481959))

(assert (= (and start!139240 (is-Cons!15683 rules!4290)) b!1481949))

(assert (= b!1481954 b!1481958))

(assert (= b!1481961 b!1481954))

(assert (= b!1481963 b!1481961))

(assert (= (and start!139240 (is-Cons!15682 l1!3136)) b!1481963))

(assert (= b!1481967 b!1481966))

(assert (= b!1481944 b!1481967))

(assert (= b!1481945 b!1481944))

(assert (= (and start!139240 (is-Cons!15682 l2!3105)) b!1481945))

(declare-fun m!1728445 () Bool)

(assert (=> b!1481946 m!1728445))

(declare-fun m!1728447 () Bool)

(assert (=> b!1481961 m!1728447))

(declare-fun m!1728449 () Bool)

(assert (=> b!1481952 m!1728449))

(declare-fun m!1728451 () Bool)

(assert (=> b!1481953 m!1728451))

(declare-fun m!1728453 () Bool)

(assert (=> b!1481965 m!1728453))

(declare-fun m!1728455 () Bool)

(assert (=> b!1481947 m!1728455))

(declare-fun m!1728457 () Bool)

(assert (=> b!1481947 m!1728457))

(declare-fun m!1728459 () Bool)

(assert (=> b!1481947 m!1728459))

(declare-fun m!1728461 () Bool)

(assert (=> b!1481947 m!1728461))

(declare-fun m!1728463 () Bool)

(assert (=> b!1481947 m!1728463))

(declare-fun m!1728465 () Bool)

(assert (=> b!1481947 m!1728465))

(declare-fun m!1728467 () Bool)

(assert (=> b!1481947 m!1728467))

(assert (=> b!1481955 m!1728449))

(declare-fun m!1728469 () Bool)

(assert (=> b!1481956 m!1728469))

(declare-fun m!1728471 () Bool)

(assert (=> b!1481962 m!1728471))

(declare-fun m!1728473 () Bool)

(assert (=> b!1481945 m!1728473))

(declare-fun m!1728475 () Bool)

(assert (=> b!1481967 m!1728475))

(declare-fun m!1728477 () Bool)

(assert (=> b!1481967 m!1728477))

(declare-fun m!1728479 () Bool)

(assert (=> b!1481957 m!1728479))

(declare-fun m!1728481 () Bool)

(assert (=> b!1481963 m!1728481))

(declare-fun m!1728483 () Bool)

(assert (=> b!1481959 m!1728483))

(declare-fun m!1728485 () Bool)

(assert (=> b!1481959 m!1728485))

(declare-fun m!1728487 () Bool)

(assert (=> b!1481944 m!1728487))

(declare-fun m!1728489 () Bool)

(assert (=> b!1481954 m!1728489))

(declare-fun m!1728491 () Bool)

(assert (=> b!1481954 m!1728491))

(declare-fun m!1728493 () Bool)

(assert (=> b!1481948 m!1728493))

(declare-fun m!1728495 () Bool)

(assert (=> b!1481950 m!1728495))

(push 1)

(assert (not b_next!38993))

(assert (not b!1481946))

(assert b_and!102957)

(assert (not b!1481953))

(assert b_and!102953)

(assert (not b!1481962))

(assert (not b!1481963))

(assert (not b!1481957))

(assert (not b_next!38991))

(assert (not b!1481961))

(assert (not b_next!38997))

(assert b_and!102963)

(assert b_and!102961)

(assert b_and!102955)

(assert (not b!1481956))

(assert (not b!1481949))

(assert (not b_next!38987))

(assert (not b!1481959))

(assert (not b!1481945))

(assert (not b!1481965))

(assert (not b!1481967))

(assert (not b_next!38995))

(assert (not b!1481955))

(assert (not b!1481954))

(assert (not b!1481947))

(assert (not b!1481944))

(assert (not b_next!38989))

(assert (not b!1481952))

(assert b_and!102959)

(assert (not b!1481948))

(assert (not b!1481950))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!38993))

(assert (not b_next!38997))

(assert b_and!102957)

(assert (not b_next!38987))

(assert b_and!102953)

(assert (not b_next!38995))

(assert (not b_next!38991))

(assert (not b_next!38989))

(assert b_and!102959)

(assert b_and!102963)

(assert b_and!102961)

(assert b_and!102955)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!434730 () Bool)

(declare-fun res!669620 () Bool)

(declare-fun e!947545 () Bool)

(assert (=> d!434730 (=> (not res!669620) (not e!947545))))

(declare-fun rulesValid!1027 (LexerInterface!2452 List!15749) Bool)

(assert (=> d!434730 (= res!669620 (rulesValid!1027 thiss!27374 rules!4290))))

(assert (=> d!434730 (= (rulesInvariant!2241 thiss!27374 rules!4290) e!947545)))

(declare-fun b!1482046 () Bool)

(declare-datatypes ((List!15754 0))(
  ( (Nil!15688) (Cons!15688 (h!21089 String!18688) (t!137594 List!15754)) )
))
(declare-fun noDuplicateTag!1027 (LexerInterface!2452 List!15749 List!15754) Bool)

(assert (=> b!1482046 (= e!947545 (noDuplicateTag!1027 thiss!27374 rules!4290 Nil!15688))))

(assert (= (and d!434730 res!669620) b!1482046))

(declare-fun m!1728557 () Bool)

(assert (=> d!434730 m!1728557))

(declare-fun m!1728559 () Bool)

(assert (=> b!1482046 m!1728559))

(assert (=> b!1481957 d!434730))

(declare-fun d!434736 () Bool)

(assert (=> d!434736 (= (head!3084 l2!3105) (h!21083 l2!3105))))

(assert (=> b!1481947 d!434736))

(declare-fun d!434738 () Bool)

(declare-fun lt!514950 () Token!5254)

(declare-fun contains!2956 (List!15748 Token!5254) Bool)

(assert (=> d!434738 (contains!2956 l1!3136 lt!514950)))

(declare-fun e!947554 () Token!5254)

(assert (=> d!434738 (= lt!514950 e!947554)))

(declare-fun c!243020 () Bool)

(assert (=> d!434738 (= c!243020 (and (is-Cons!15682 l1!3136) (is-Nil!15682 (t!137551 l1!3136))))))

(assert (=> d!434738 (not (isEmpty!9813 l1!3136))))

(assert (=> d!434738 (= (last!354 l1!3136) lt!514950)))

(declare-fun b!1482061 () Bool)

(assert (=> b!1482061 (= e!947554 (h!21083 l1!3136))))

(declare-fun b!1482062 () Bool)

(assert (=> b!1482062 (= e!947554 (last!354 (t!137551 l1!3136)))))

(assert (= (and d!434738 c!243020) b!1482061))

(assert (= (and d!434738 (not c!243020)) b!1482062))

(declare-fun m!1728561 () Bool)

(assert (=> d!434738 m!1728561))

(assert (=> d!434738 m!1728469))

(declare-fun m!1728563 () Bool)

(assert (=> b!1482062 m!1728563))

(assert (=> b!1481947 d!434738))

(declare-fun d!434740 () Bool)

(declare-fun prefixMatchZipperSequence!388 (Regex!4110 BalanceConc!10624) Bool)

(declare-fun rulesRegex!436 (LexerInterface!2452 List!15749) Regex!4110)

(declare-fun ++!4231 (BalanceConc!10624 BalanceConc!10624) BalanceConc!10624)

(declare-fun charsOf!1604 (Token!5254) BalanceConc!10624)

(declare-fun singletonSeq!1338 (C!8398) BalanceConc!10624)

(declare-fun apply!4061 (BalanceConc!10624 Int) C!8398)

(assert (=> d!434740 (= (separableTokensPredicate!591 thiss!27374 lt!514932 lt!514935 rules!4290) (not (prefixMatchZipperSequence!388 (rulesRegex!436 thiss!27374 rules!4290) (++!4231 (charsOf!1604 lt!514932) (singletonSeq!1338 (apply!4061 (charsOf!1604 lt!514935) 0))))))))

(declare-fun bs!346015 () Bool)

(assert (= bs!346015 d!434740))

(declare-fun m!1728571 () Bool)

(assert (=> bs!346015 m!1728571))

(declare-fun m!1728573 () Bool)

(assert (=> bs!346015 m!1728573))

(declare-fun m!1728575 () Bool)

(assert (=> bs!346015 m!1728575))

(declare-fun m!1728577 () Bool)

(assert (=> bs!346015 m!1728577))

(assert (=> bs!346015 m!1728573))

(declare-fun m!1728579 () Bool)

(assert (=> bs!346015 m!1728579))

(assert (=> bs!346015 m!1728575))

(declare-fun m!1728581 () Bool)

(assert (=> bs!346015 m!1728581))

(assert (=> bs!346015 m!1728571))

(assert (=> bs!346015 m!1728579))

(declare-fun m!1728583 () Bool)

(assert (=> bs!346015 m!1728583))

(assert (=> bs!346015 m!1728577))

(assert (=> bs!346015 m!1728583))

(assert (=> b!1481947 d!434740))

(declare-fun d!434746 () Bool)

(assert (=> d!434746 (rulesProduceIndividualToken!1309 thiss!27374 rules!4290 lt!514935)))

(declare-fun lt!514953 () Unit!25559)

(declare-fun choose!9069 (LexerInterface!2452 List!15749 List!15748 Token!5254) Unit!25559)

(assert (=> d!434746 (= lt!514953 (choose!9069 thiss!27374 rules!4290 l2!3105 lt!514935))))

(assert (=> d!434746 (not (isEmpty!9812 rules!4290))))

(assert (=> d!434746 (= (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!490 thiss!27374 rules!4290 l2!3105 lt!514935) lt!514953)))

(declare-fun bs!346016 () Bool)

(assert (= bs!346016 d!434746))

(assert (=> bs!346016 m!1728461))

(declare-fun m!1728585 () Bool)

(assert (=> bs!346016 m!1728585))

(assert (=> bs!346016 m!1728495))

(assert (=> b!1481947 d!434746))

(declare-fun d!434748 () Bool)

(declare-fun lt!514961 () Bool)

(declare-fun e!947566 () Bool)

(assert (=> d!434748 (= lt!514961 e!947566)))

(declare-fun res!669635 () Bool)

(assert (=> d!434748 (=> (not res!669635) (not e!947566))))

(declare-datatypes ((IArray!10693 0))(
  ( (IArray!10694 (innerList!5404 List!15748)) )
))
(declare-datatypes ((Conc!5344 0))(
  ( (Node!5344 (left!13229 Conc!5344) (right!13559 Conc!5344) (csize!10918 Int) (cheight!5555 Int)) (Leaf!7944 (xs!8099 IArray!10693) (csize!10919 Int)) (Empty!5344) )
))
(declare-datatypes ((BalanceConc!10628 0))(
  ( (BalanceConc!10629 (c!243034 Conc!5344)) )
))
(declare-fun list!6235 (BalanceConc!10628) List!15748)

(declare-datatypes ((tuple2!14344 0))(
  ( (tuple2!14345 (_1!8058 BalanceConc!10628) (_2!8058 BalanceConc!10624)) )
))
(declare-fun lex!1109 (LexerInterface!2452 List!15749 BalanceConc!10624) tuple2!14344)

(declare-fun print!1144 (LexerInterface!2452 BalanceConc!10628) BalanceConc!10624)

(declare-fun singletonSeq!1339 (Token!5254) BalanceConc!10628)

(assert (=> d!434748 (= res!669635 (= (list!6235 (_1!8058 (lex!1109 thiss!27374 rules!4290 (print!1144 thiss!27374 (singletonSeq!1339 lt!514935))))) (list!6235 (singletonSeq!1339 lt!514935))))))

(declare-fun e!947567 () Bool)

(assert (=> d!434748 (= lt!514961 e!947567)))

(declare-fun res!669636 () Bool)

(assert (=> d!434748 (=> (not res!669636) (not e!947567))))

(declare-fun lt!514960 () tuple2!14344)

(declare-fun size!12704 (BalanceConc!10628) Int)

(assert (=> d!434748 (= res!669636 (= (size!12704 (_1!8058 lt!514960)) 1))))

(assert (=> d!434748 (= lt!514960 (lex!1109 thiss!27374 rules!4290 (print!1144 thiss!27374 (singletonSeq!1339 lt!514935))))))

(assert (=> d!434748 (not (isEmpty!9812 rules!4290))))

(assert (=> d!434748 (= (rulesProduceIndividualToken!1309 thiss!27374 rules!4290 lt!514935) lt!514961)))

(declare-fun b!1482078 () Bool)

(declare-fun res!669634 () Bool)

(assert (=> b!1482078 (=> (not res!669634) (not e!947567))))

(declare-fun apply!4062 (BalanceConc!10628 Int) Token!5254)

(assert (=> b!1482078 (= res!669634 (= (apply!4062 (_1!8058 lt!514960) 0) lt!514935))))

(declare-fun b!1482079 () Bool)

(declare-fun isEmpty!9816 (BalanceConc!10624) Bool)

(assert (=> b!1482079 (= e!947567 (isEmpty!9816 (_2!8058 lt!514960)))))

(declare-fun b!1482080 () Bool)

(assert (=> b!1482080 (= e!947566 (isEmpty!9816 (_2!8058 (lex!1109 thiss!27374 rules!4290 (print!1144 thiss!27374 (singletonSeq!1339 lt!514935))))))))

(assert (= (and d!434748 res!669636) b!1482078))

(assert (= (and b!1482078 res!669634) b!1482079))

(assert (= (and d!434748 res!669635) b!1482080))

(assert (=> d!434748 m!1728495))

(declare-fun m!1728587 () Bool)

(assert (=> d!434748 m!1728587))

(declare-fun m!1728589 () Bool)

(assert (=> d!434748 m!1728589))

(assert (=> d!434748 m!1728587))

(declare-fun m!1728591 () Bool)

(assert (=> d!434748 m!1728591))

(declare-fun m!1728593 () Bool)

(assert (=> d!434748 m!1728593))

(declare-fun m!1728595 () Bool)

(assert (=> d!434748 m!1728595))

(assert (=> d!434748 m!1728587))

(assert (=> d!434748 m!1728591))

(declare-fun m!1728597 () Bool)

(assert (=> d!434748 m!1728597))

(declare-fun m!1728599 () Bool)

(assert (=> b!1482078 m!1728599))

(declare-fun m!1728601 () Bool)

(assert (=> b!1482079 m!1728601))

(assert (=> b!1482080 m!1728587))

(assert (=> b!1482080 m!1728587))

(assert (=> b!1482080 m!1728591))

(assert (=> b!1482080 m!1728591))

(assert (=> b!1482080 m!1728597))

(declare-fun m!1728603 () Bool)

(assert (=> b!1482080 m!1728603))

(assert (=> b!1481947 d!434748))

(declare-fun d!434750 () Bool)

(assert (=> d!434750 (rulesProduceIndividualToken!1309 thiss!27374 rules!4290 lt!514932)))

(declare-fun lt!514962 () Unit!25559)

(assert (=> d!434750 (= lt!514962 (choose!9069 thiss!27374 rules!4290 l1!3136 lt!514932))))

(assert (=> d!434750 (not (isEmpty!9812 rules!4290))))

(assert (=> d!434750 (= (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!490 thiss!27374 rules!4290 l1!3136 lt!514932) lt!514962)))

(declare-fun bs!346017 () Bool)

(assert (= bs!346017 d!434750))

(assert (=> bs!346017 m!1728467))

(declare-fun m!1728605 () Bool)

(assert (=> bs!346017 m!1728605))

(assert (=> bs!346017 m!1728495))

(assert (=> b!1481947 d!434750))

(declare-fun d!434752 () Bool)

(declare-fun lt!514964 () Bool)

(declare-fun e!947568 () Bool)

(assert (=> d!434752 (= lt!514964 e!947568)))

(declare-fun res!669638 () Bool)

(assert (=> d!434752 (=> (not res!669638) (not e!947568))))

(assert (=> d!434752 (= res!669638 (= (list!6235 (_1!8058 (lex!1109 thiss!27374 rules!4290 (print!1144 thiss!27374 (singletonSeq!1339 lt!514932))))) (list!6235 (singletonSeq!1339 lt!514932))))))

(declare-fun e!947569 () Bool)

(assert (=> d!434752 (= lt!514964 e!947569)))

(declare-fun res!669639 () Bool)

(assert (=> d!434752 (=> (not res!669639) (not e!947569))))

(declare-fun lt!514963 () tuple2!14344)

(assert (=> d!434752 (= res!669639 (= (size!12704 (_1!8058 lt!514963)) 1))))

(assert (=> d!434752 (= lt!514963 (lex!1109 thiss!27374 rules!4290 (print!1144 thiss!27374 (singletonSeq!1339 lt!514932))))))

(assert (=> d!434752 (not (isEmpty!9812 rules!4290))))

(assert (=> d!434752 (= (rulesProduceIndividualToken!1309 thiss!27374 rules!4290 lt!514932) lt!514964)))

(declare-fun b!1482081 () Bool)

(declare-fun res!669637 () Bool)

(assert (=> b!1482081 (=> (not res!669637) (not e!947569))))

(assert (=> b!1482081 (= res!669637 (= (apply!4062 (_1!8058 lt!514963) 0) lt!514932))))

(declare-fun b!1482082 () Bool)

(assert (=> b!1482082 (= e!947569 (isEmpty!9816 (_2!8058 lt!514963)))))

(declare-fun b!1482083 () Bool)

(assert (=> b!1482083 (= e!947568 (isEmpty!9816 (_2!8058 (lex!1109 thiss!27374 rules!4290 (print!1144 thiss!27374 (singletonSeq!1339 lt!514932))))))))

(assert (= (and d!434752 res!669639) b!1482081))

(assert (= (and b!1482081 res!669637) b!1482082))

(assert (= (and d!434752 res!669638) b!1482083))

(assert (=> d!434752 m!1728495))

(declare-fun m!1728607 () Bool)

(assert (=> d!434752 m!1728607))

(declare-fun m!1728609 () Bool)

(assert (=> d!434752 m!1728609))

(assert (=> d!434752 m!1728607))

(declare-fun m!1728611 () Bool)

(assert (=> d!434752 m!1728611))

(declare-fun m!1728613 () Bool)

(assert (=> d!434752 m!1728613))

(declare-fun m!1728615 () Bool)

(assert (=> d!434752 m!1728615))

(assert (=> d!434752 m!1728607))

(assert (=> d!434752 m!1728611))

(declare-fun m!1728617 () Bool)

(assert (=> d!434752 m!1728617))

(declare-fun m!1728619 () Bool)

(assert (=> b!1482081 m!1728619))

(declare-fun m!1728621 () Bool)

(assert (=> b!1482082 m!1728621))

(assert (=> b!1482083 m!1728607))

(assert (=> b!1482083 m!1728607))

(assert (=> b!1482083 m!1728611))

(assert (=> b!1482083 m!1728611))

(assert (=> b!1482083 m!1728617))

(declare-fun m!1728623 () Bool)

(assert (=> b!1482083 m!1728623))

(assert (=> b!1481947 d!434752))

(declare-fun b!1482115 () Bool)

(declare-fun e!947595 () Bool)

(assert (=> b!1482115 (= e!947595 true)))

(declare-fun b!1482114 () Bool)

(declare-fun e!947594 () Bool)

(assert (=> b!1482114 (= e!947594 e!947595)))

(declare-fun b!1482113 () Bool)

(declare-fun e!947593 () Bool)

(assert (=> b!1482113 (= e!947593 e!947594)))

(declare-fun d!434754 () Bool)

(assert (=> d!434754 e!947593))

(assert (= b!1482114 b!1482115))

(assert (= b!1482113 b!1482114))

(assert (= (and d!434754 (is-Cons!15683 rules!4290)) b!1482113))

(declare-fun order!9481 () Int)

(declare-fun lambda!63825 () Int)

(declare-fun order!9483 () Int)

(declare-fun dynLambda!7145 (Int Int) Int)

(declare-fun dynLambda!7146 (Int Int) Int)

(assert (=> b!1482115 (< (dynLambda!7145 order!9481 (toValue!4135 (transformation!2796 (h!21084 rules!4290)))) (dynLambda!7146 order!9483 lambda!63825))))

(declare-fun order!9485 () Int)

(declare-fun dynLambda!7147 (Int Int) Int)

(assert (=> b!1482115 (< (dynLambda!7147 order!9485 (toChars!3994 (transformation!2796 (h!21084 rules!4290)))) (dynLambda!7146 order!9483 lambda!63825))))

(assert (=> d!434754 true))

(declare-fun lt!514968 () Bool)

(declare-fun forall!3815 (List!15748 Int) Bool)

(assert (=> d!434754 (= lt!514968 (forall!3815 l2!3105 lambda!63825))))

(declare-fun e!947586 () Bool)

(assert (=> d!434754 (= lt!514968 e!947586)))

(declare-fun res!669647 () Bool)

(assert (=> d!434754 (=> res!669647 e!947586)))

(assert (=> d!434754 (= res!669647 (not (is-Cons!15682 l2!3105)))))

(assert (=> d!434754 (not (isEmpty!9812 rules!4290))))

(assert (=> d!434754 (= (rulesProduceEachTokenIndividuallyList!819 thiss!27374 rules!4290 l2!3105) lt!514968)))

(declare-fun b!1482103 () Bool)

(declare-fun e!947585 () Bool)

(assert (=> b!1482103 (= e!947586 e!947585)))

(declare-fun res!669646 () Bool)

(assert (=> b!1482103 (=> (not res!669646) (not e!947585))))

(assert (=> b!1482103 (= res!669646 (rulesProduceIndividualToken!1309 thiss!27374 rules!4290 (h!21083 l2!3105)))))

(declare-fun b!1482104 () Bool)

(assert (=> b!1482104 (= e!947585 (rulesProduceEachTokenIndividuallyList!819 thiss!27374 rules!4290 (t!137551 l2!3105)))))

(assert (= (and d!434754 (not res!669647)) b!1482103))

(assert (= (and b!1482103 res!669646) b!1482104))

(declare-fun m!1728631 () Bool)

(assert (=> d!434754 m!1728631))

(assert (=> d!434754 m!1728495))

(declare-fun m!1728633 () Bool)

(assert (=> b!1482103 m!1728633))

(declare-fun m!1728635 () Bool)

(assert (=> b!1482104 m!1728635))

(assert (=> b!1481948 d!434754))

(declare-fun d!434760 () Bool)

(assert (=> d!434760 (= (inv!20901 (tag!3060 (h!21084 rules!4290))) (= (mod (str.len (value!89334 (tag!3060 (h!21084 rules!4290)))) 2) 0))))

(assert (=> b!1481959 d!434760))

(declare-fun d!434762 () Bool)

(declare-fun res!669652 () Bool)

(declare-fun e!947600 () Bool)

(assert (=> d!434762 (=> (not res!669652) (not e!947600))))

(declare-fun semiInverseModEq!1056 (Int Int) Bool)

(assert (=> d!434762 (= res!669652 (semiInverseModEq!1056 (toChars!3994 (transformation!2796 (h!21084 rules!4290))) (toValue!4135 (transformation!2796 (h!21084 rules!4290)))))))

(assert (=> d!434762 (= (inv!20905 (transformation!2796 (h!21084 rules!4290))) e!947600)))

(declare-fun b!1482122 () Bool)

(declare-fun equivClasses!1015 (Int Int) Bool)

(assert (=> b!1482122 (= e!947600 (equivClasses!1015 (toChars!3994 (transformation!2796 (h!21084 rules!4290))) (toValue!4135 (transformation!2796 (h!21084 rules!4290)))))))

(assert (= (and d!434762 res!669652) b!1482122))

(declare-fun m!1728637 () Bool)

(assert (=> d!434762 m!1728637))

(declare-fun m!1728639 () Bool)

(assert (=> b!1482122 m!1728639))

(assert (=> b!1481959 d!434762))

(declare-fun bs!346018 () Bool)

(declare-fun d!434764 () Bool)

(assert (= bs!346018 (and d!434764 d!434754)))

(declare-fun lambda!63826 () Int)

(assert (=> bs!346018 (= lambda!63826 lambda!63825)))

(declare-fun b!1482129 () Bool)

(declare-fun e!947607 () Bool)

(assert (=> b!1482129 (= e!947607 true)))

(declare-fun b!1482128 () Bool)

(declare-fun e!947606 () Bool)

(assert (=> b!1482128 (= e!947606 e!947607)))

(declare-fun b!1482127 () Bool)

(declare-fun e!947605 () Bool)

(assert (=> b!1482127 (= e!947605 e!947606)))

(assert (=> d!434764 e!947605))

(assert (= b!1482128 b!1482129))

(assert (= b!1482127 b!1482128))

(assert (= (and d!434764 (is-Cons!15683 rules!4290)) b!1482127))

(assert (=> b!1482129 (< (dynLambda!7145 order!9481 (toValue!4135 (transformation!2796 (h!21084 rules!4290)))) (dynLambda!7146 order!9483 lambda!63826))))

(assert (=> b!1482129 (< (dynLambda!7147 order!9485 (toChars!3994 (transformation!2796 (h!21084 rules!4290)))) (dynLambda!7146 order!9483 lambda!63826))))

(assert (=> d!434764 true))

(declare-fun lt!514983 () Bool)

(assert (=> d!434764 (= lt!514983 (forall!3815 l1!3136 lambda!63826))))

(declare-fun e!947604 () Bool)

(assert (=> d!434764 (= lt!514983 e!947604)))

(declare-fun res!669656 () Bool)

(assert (=> d!434764 (=> res!669656 e!947604)))

(assert (=> d!434764 (= res!669656 (not (is-Cons!15682 l1!3136)))))

(assert (=> d!434764 (not (isEmpty!9812 rules!4290))))

(assert (=> d!434764 (= (rulesProduceEachTokenIndividuallyList!819 thiss!27374 rules!4290 l1!3136) lt!514983)))

(declare-fun b!1482125 () Bool)

(declare-fun e!947603 () Bool)

(assert (=> b!1482125 (= e!947604 e!947603)))

(declare-fun res!669655 () Bool)

(assert (=> b!1482125 (=> (not res!669655) (not e!947603))))

(assert (=> b!1482125 (= res!669655 (rulesProduceIndividualToken!1309 thiss!27374 rules!4290 (h!21083 l1!3136)))))

(declare-fun b!1482126 () Bool)

(assert (=> b!1482126 (= e!947603 (rulesProduceEachTokenIndividuallyList!819 thiss!27374 rules!4290 (t!137551 l1!3136)))))

(assert (= (and d!434764 (not res!669656)) b!1482125))

(assert (= (and b!1482125 res!669655) b!1482126))

(declare-fun m!1728641 () Bool)

(assert (=> d!434764 m!1728641))

(assert (=> d!434764 m!1728495))

(declare-fun m!1728643 () Bool)

(assert (=> b!1482125 m!1728643))

(declare-fun m!1728645 () Bool)

(assert (=> b!1482126 m!1728645))

(assert (=> b!1481965 d!434764))

(declare-fun d!434766 () Bool)

(declare-fun c!243027 () Bool)

(assert (=> d!434766 (= c!243027 (is-IntegerValue!8658 (value!89335 (h!21083 l2!3105))))))

(declare-fun e!947618 () Bool)

(assert (=> d!434766 (= (inv!21 (value!89335 (h!21083 l2!3105))) e!947618)))

(declare-fun b!1482142 () Bool)

(declare-fun e!947617 () Bool)

(declare-fun inv!15 (TokenValue!2886) Bool)

(assert (=> b!1482142 (= e!947617 (inv!15 (value!89335 (h!21083 l2!3105))))))

(declare-fun b!1482143 () Bool)

(declare-fun inv!16 (TokenValue!2886) Bool)

(assert (=> b!1482143 (= e!947618 (inv!16 (value!89335 (h!21083 l2!3105))))))

(declare-fun b!1482144 () Bool)

(declare-fun res!669661 () Bool)

(assert (=> b!1482144 (=> res!669661 e!947617)))

(assert (=> b!1482144 (= res!669661 (not (is-IntegerValue!8660 (value!89335 (h!21083 l2!3105)))))))

(declare-fun e!947616 () Bool)

(assert (=> b!1482144 (= e!947616 e!947617)))

(declare-fun b!1482145 () Bool)

(declare-fun inv!17 (TokenValue!2886) Bool)

(assert (=> b!1482145 (= e!947616 (inv!17 (value!89335 (h!21083 l2!3105))))))

(declare-fun b!1482146 () Bool)

(assert (=> b!1482146 (= e!947618 e!947616)))

(declare-fun c!243028 () Bool)

(assert (=> b!1482146 (= c!243028 (is-IntegerValue!8659 (value!89335 (h!21083 l2!3105))))))

(assert (= (and d!434766 c!243027) b!1482143))

(assert (= (and d!434766 (not c!243027)) b!1482146))

(assert (= (and b!1482146 c!243028) b!1482145))

(assert (= (and b!1482146 (not c!243028)) b!1482144))

(assert (= (and b!1482144 (not res!669661)) b!1482142))

(declare-fun m!1728661 () Bool)

(assert (=> b!1482142 m!1728661))

(declare-fun m!1728663 () Bool)

(assert (=> b!1482143 m!1728663))

(declare-fun m!1728665 () Bool)

(assert (=> b!1482145 m!1728665))

(assert (=> b!1481944 d!434766))

(declare-fun d!434770 () Bool)

(assert (=> d!434770 (= (isEmpty!9813 (t!137551 l1!3136)) (is-Nil!15682 (t!137551 l1!3136)))))

(assert (=> b!1481955 d!434770))

(declare-fun d!434772 () Bool)

(declare-fun res!669672 () Bool)

(declare-fun e!947626 () Bool)

(assert (=> d!434772 (=> (not res!669672) (not e!947626))))

(declare-fun isEmpty!9817 (List!15747) Bool)

(assert (=> d!434772 (= res!669672 (not (isEmpty!9817 (originalCharacters!3658 (h!21083 l2!3105)))))))

(assert (=> d!434772 (= (inv!20904 (h!21083 l2!3105)) e!947626)))

(declare-fun b!1482161 () Bool)

(declare-fun res!669673 () Bool)

(assert (=> b!1482161 (=> (not res!669673) (not e!947626))))

(declare-fun list!6236 (BalanceConc!10624) List!15747)

(declare-fun dynLambda!7148 (Int TokenValue!2886) BalanceConc!10624)

(assert (=> b!1482161 (= res!669673 (= (originalCharacters!3658 (h!21083 l2!3105)) (list!6236 (dynLambda!7148 (toChars!3994 (transformation!2796 (rule!4573 (h!21083 l2!3105)))) (value!89335 (h!21083 l2!3105))))))))

(declare-fun b!1482162 () Bool)

(declare-fun size!12705 (List!15747) Int)

(assert (=> b!1482162 (= e!947626 (= (size!12702 (h!21083 l2!3105)) (size!12705 (originalCharacters!3658 (h!21083 l2!3105)))))))

(assert (= (and d!434772 res!669672) b!1482161))

(assert (= (and b!1482161 res!669673) b!1482162))

(declare-fun b_lambda!46441 () Bool)

(assert (=> (not b_lambda!46441) (not b!1482161)))

(declare-fun tb!84815 () Bool)

(declare-fun t!137570 () Bool)

(assert (=> (and b!1481958 (= (toChars!3994 (transformation!2796 (rule!4573 (h!21083 l1!3136)))) (toChars!3994 (transformation!2796 (rule!4573 (h!21083 l2!3105))))) t!137570) tb!84815))

(declare-fun b!1482168 () Bool)

(declare-fun e!947630 () Bool)

(declare-fun tp!420428 () Bool)

(declare-fun inv!20908 (Conc!5342) Bool)

(assert (=> b!1482168 (= e!947630 (and (inv!20908 (c!243011 (dynLambda!7148 (toChars!3994 (transformation!2796 (rule!4573 (h!21083 l2!3105)))) (value!89335 (h!21083 l2!3105))))) tp!420428))))

(declare-fun result!101974 () Bool)

(declare-fun inv!20909 (BalanceConc!10624) Bool)

(assert (=> tb!84815 (= result!101974 (and (inv!20909 (dynLambda!7148 (toChars!3994 (transformation!2796 (rule!4573 (h!21083 l2!3105)))) (value!89335 (h!21083 l2!3105)))) e!947630))))

(assert (= tb!84815 b!1482168))

(declare-fun m!1728679 () Bool)

(assert (=> b!1482168 m!1728679))

(declare-fun m!1728681 () Bool)

(assert (=> tb!84815 m!1728681))

(assert (=> b!1482161 t!137570))

(declare-fun b_and!102983 () Bool)

(assert (= b_and!102955 (and (=> t!137570 result!101974) b_and!102983)))

(declare-fun tb!84817 () Bool)

(declare-fun t!137572 () Bool)

(assert (=> (and b!1481964 (= (toChars!3994 (transformation!2796 (h!21084 rules!4290))) (toChars!3994 (transformation!2796 (rule!4573 (h!21083 l2!3105))))) t!137572) tb!84817))

(declare-fun result!101978 () Bool)

(assert (= result!101978 result!101974))

(assert (=> b!1482161 t!137572))

(declare-fun b_and!102985 () Bool)

(assert (= b_and!102959 (and (=> t!137572 result!101978) b_and!102985)))

(declare-fun t!137574 () Bool)

(declare-fun tb!84819 () Bool)

(assert (=> (and b!1481966 (= (toChars!3994 (transformation!2796 (rule!4573 (h!21083 l2!3105)))) (toChars!3994 (transformation!2796 (rule!4573 (h!21083 l2!3105))))) t!137574) tb!84819))

(declare-fun result!101980 () Bool)

(assert (= result!101980 result!101974))

(assert (=> b!1482161 t!137574))

(declare-fun b_and!102987 () Bool)

(assert (= b_and!102963 (and (=> t!137574 result!101980) b_and!102987)))

(declare-fun m!1728683 () Bool)

(assert (=> d!434772 m!1728683))

(declare-fun m!1728685 () Bool)

(assert (=> b!1482161 m!1728685))

(assert (=> b!1482161 m!1728685))

(declare-fun m!1728687 () Bool)

(assert (=> b!1482161 m!1728687))

(declare-fun m!1728689 () Bool)

(assert (=> b!1482162 m!1728689))

(assert (=> b!1481945 d!434772))

(declare-fun d!434778 () Bool)

(assert (=> d!434778 (= (isEmpty!9813 l1!3136) (is-Nil!15682 l1!3136))))

(assert (=> b!1481956 d!434778))

(declare-fun d!434780 () Bool)

(assert (=> d!434780 (= (inv!20901 (tag!3060 (rule!4573 (h!21083 l2!3105)))) (= (mod (str.len (value!89334 (tag!3060 (rule!4573 (h!21083 l2!3105))))) 2) 0))))

(assert (=> b!1481967 d!434780))

(declare-fun d!434782 () Bool)

(declare-fun res!669674 () Bool)

(declare-fun e!947631 () Bool)

(assert (=> d!434782 (=> (not res!669674) (not e!947631))))

(assert (=> d!434782 (= res!669674 (semiInverseModEq!1056 (toChars!3994 (transformation!2796 (rule!4573 (h!21083 l2!3105)))) (toValue!4135 (transformation!2796 (rule!4573 (h!21083 l2!3105))))))))

(assert (=> d!434782 (= (inv!20905 (transformation!2796 (rule!4573 (h!21083 l2!3105)))) e!947631)))

(declare-fun b!1482169 () Bool)

(assert (=> b!1482169 (= e!947631 (equivClasses!1015 (toChars!3994 (transformation!2796 (rule!4573 (h!21083 l2!3105)))) (toValue!4135 (transformation!2796 (rule!4573 (h!21083 l2!3105))))))))

(assert (= (and d!434782 res!669674) b!1482169))

(declare-fun m!1728691 () Bool)

(assert (=> d!434782 m!1728691))

(declare-fun m!1728693 () Bool)

(assert (=> b!1482169 m!1728693))

(assert (=> b!1481967 d!434782))

(declare-fun d!434784 () Bool)

(declare-fun res!669683 () Bool)

(declare-fun e!947643 () Bool)

(assert (=> d!434784 (=> res!669683 e!947643)))

(assert (=> d!434784 (= res!669683 (or (not (is-Cons!15682 l2!3105)) (not (is-Cons!15682 (t!137551 l2!3105)))))))

(assert (=> d!434784 (= (tokensListTwoByTwoPredicateSeparableList!312 thiss!27374 l2!3105 rules!4290) e!947643)))

(declare-fun b!1482183 () Bool)

(declare-fun e!947642 () Bool)

(assert (=> b!1482183 (= e!947643 e!947642)))

(declare-fun res!669682 () Bool)

(assert (=> b!1482183 (=> (not res!669682) (not e!947642))))

(assert (=> b!1482183 (= res!669682 (separableTokensPredicate!591 thiss!27374 (h!21083 l2!3105) (h!21083 (t!137551 l2!3105)) rules!4290))))

(declare-fun lt!515017 () Unit!25559)

(declare-fun Unit!25564 () Unit!25559)

(assert (=> b!1482183 (= lt!515017 Unit!25564)))

(declare-fun size!12706 (BalanceConc!10624) Int)

(assert (=> b!1482183 (> (size!12706 (charsOf!1604 (h!21083 (t!137551 l2!3105)))) 0)))

(declare-fun lt!515015 () Unit!25559)

(declare-fun Unit!25565 () Unit!25559)

(assert (=> b!1482183 (= lt!515015 Unit!25565)))

(assert (=> b!1482183 (rulesProduceIndividualToken!1309 thiss!27374 rules!4290 (h!21083 (t!137551 l2!3105)))))

(declare-fun lt!515014 () Unit!25559)

(declare-fun Unit!25566 () Unit!25559)

(assert (=> b!1482183 (= lt!515014 Unit!25566)))

(assert (=> b!1482183 (rulesProduceIndividualToken!1309 thiss!27374 rules!4290 (h!21083 l2!3105))))

(declare-fun lt!515011 () Unit!25559)

(declare-fun lt!515012 () Unit!25559)

(assert (=> b!1482183 (= lt!515011 lt!515012)))

(assert (=> b!1482183 (rulesProduceIndividualToken!1309 thiss!27374 rules!4290 (h!21083 (t!137551 l2!3105)))))

(assert (=> b!1482183 (= lt!515012 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!490 thiss!27374 rules!4290 l2!3105 (h!21083 (t!137551 l2!3105))))))

(declare-fun lt!515016 () Unit!25559)

(declare-fun lt!515013 () Unit!25559)

(assert (=> b!1482183 (= lt!515016 lt!515013)))

(assert (=> b!1482183 (rulesProduceIndividualToken!1309 thiss!27374 rules!4290 (h!21083 l2!3105))))

(assert (=> b!1482183 (= lt!515013 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!490 thiss!27374 rules!4290 l2!3105 (h!21083 l2!3105)))))

(declare-fun b!1482184 () Bool)

(assert (=> b!1482184 (= e!947642 (tokensListTwoByTwoPredicateSeparableList!312 thiss!27374 (Cons!15682 (h!21083 (t!137551 l2!3105)) (t!137551 (t!137551 l2!3105))) rules!4290))))

(assert (= (and d!434784 (not res!669683)) b!1482183))

(assert (= (and b!1482183 res!669682) b!1482184))

(declare-fun m!1728705 () Bool)

(assert (=> b!1482183 m!1728705))

(declare-fun m!1728707 () Bool)

(assert (=> b!1482183 m!1728707))

(declare-fun m!1728709 () Bool)

(assert (=> b!1482183 m!1728709))

(declare-fun m!1728711 () Bool)

(assert (=> b!1482183 m!1728711))

(declare-fun m!1728713 () Bool)

(assert (=> b!1482183 m!1728713))

(assert (=> b!1482183 m!1728633))

(declare-fun m!1728715 () Bool)

(assert (=> b!1482183 m!1728715))

(assert (=> b!1482183 m!1728709))

(declare-fun m!1728717 () Bool)

(assert (=> b!1482184 m!1728717))

(assert (=> b!1481946 d!434784))

(assert (=> b!1481952 d!434770))

(declare-fun d!434792 () Bool)

(declare-fun res!669684 () Bool)

(declare-fun e!947644 () Bool)

(assert (=> d!434792 (=> (not res!669684) (not e!947644))))

(assert (=> d!434792 (= res!669684 (not (isEmpty!9817 (originalCharacters!3658 (h!21083 l1!3136)))))))

(assert (=> d!434792 (= (inv!20904 (h!21083 l1!3136)) e!947644)))

(declare-fun b!1482185 () Bool)

(declare-fun res!669685 () Bool)

(assert (=> b!1482185 (=> (not res!669685) (not e!947644))))

(assert (=> b!1482185 (= res!669685 (= (originalCharacters!3658 (h!21083 l1!3136)) (list!6236 (dynLambda!7148 (toChars!3994 (transformation!2796 (rule!4573 (h!21083 l1!3136)))) (value!89335 (h!21083 l1!3136))))))))

(declare-fun b!1482186 () Bool)

(assert (=> b!1482186 (= e!947644 (= (size!12702 (h!21083 l1!3136)) (size!12705 (originalCharacters!3658 (h!21083 l1!3136)))))))

(assert (= (and d!434792 res!669684) b!1482185))

(assert (= (and b!1482185 res!669685) b!1482186))

(declare-fun b_lambda!46443 () Bool)

(assert (=> (not b_lambda!46443) (not b!1482185)))

(declare-fun t!137577 () Bool)

(declare-fun tb!84821 () Bool)

(assert (=> (and b!1481958 (= (toChars!3994 (transformation!2796 (rule!4573 (h!21083 l1!3136)))) (toChars!3994 (transformation!2796 (rule!4573 (h!21083 l1!3136))))) t!137577) tb!84821))

(declare-fun b!1482187 () Bool)

(declare-fun e!947645 () Bool)

(declare-fun tp!420429 () Bool)

(assert (=> b!1482187 (= e!947645 (and (inv!20908 (c!243011 (dynLambda!7148 (toChars!3994 (transformation!2796 (rule!4573 (h!21083 l1!3136)))) (value!89335 (h!21083 l1!3136))))) tp!420429))))

(declare-fun result!101982 () Bool)

(assert (=> tb!84821 (= result!101982 (and (inv!20909 (dynLambda!7148 (toChars!3994 (transformation!2796 (rule!4573 (h!21083 l1!3136)))) (value!89335 (h!21083 l1!3136)))) e!947645))))

(assert (= tb!84821 b!1482187))

(declare-fun m!1728719 () Bool)

(assert (=> b!1482187 m!1728719))

(declare-fun m!1728721 () Bool)

(assert (=> tb!84821 m!1728721))

(assert (=> b!1482185 t!137577))

(declare-fun b_and!102989 () Bool)

(assert (= b_and!102983 (and (=> t!137577 result!101982) b_and!102989)))

(declare-fun tb!84823 () Bool)

(declare-fun t!137579 () Bool)

(assert (=> (and b!1481964 (= (toChars!3994 (transformation!2796 (h!21084 rules!4290))) (toChars!3994 (transformation!2796 (rule!4573 (h!21083 l1!3136))))) t!137579) tb!84823))

(declare-fun result!101984 () Bool)

(assert (= result!101984 result!101982))

(assert (=> b!1482185 t!137579))

(declare-fun b_and!102991 () Bool)

(assert (= b_and!102985 (and (=> t!137579 result!101984) b_and!102991)))

(declare-fun tb!84825 () Bool)

(declare-fun t!137581 () Bool)

(assert (=> (and b!1481966 (= (toChars!3994 (transformation!2796 (rule!4573 (h!21083 l2!3105)))) (toChars!3994 (transformation!2796 (rule!4573 (h!21083 l1!3136))))) t!137581) tb!84825))

(declare-fun result!101986 () Bool)

(assert (= result!101986 result!101982))

(assert (=> b!1482185 t!137581))

(declare-fun b_and!102993 () Bool)

(assert (= b_and!102987 (and (=> t!137581 result!101986) b_and!102993)))

(declare-fun m!1728723 () Bool)

(assert (=> d!434792 m!1728723))

(declare-fun m!1728725 () Bool)

(assert (=> b!1482185 m!1728725))

(assert (=> b!1482185 m!1728725))

(declare-fun m!1728727 () Bool)

(assert (=> b!1482185 m!1728727))

(declare-fun m!1728729 () Bool)

(assert (=> b!1482186 m!1728729))

(assert (=> b!1481963 d!434792))

(declare-fun d!434794 () Bool)

(declare-fun res!669687 () Bool)

(declare-fun e!947647 () Bool)

(assert (=> d!434794 (=> res!669687 e!947647)))

(assert (=> d!434794 (= res!669687 (or (not (is-Cons!15682 l1!3136)) (not (is-Cons!15682 (t!137551 l1!3136)))))))

(assert (=> d!434794 (= (tokensListTwoByTwoPredicateSeparableList!312 thiss!27374 l1!3136 rules!4290) e!947647)))

(declare-fun b!1482188 () Bool)

(declare-fun e!947646 () Bool)

(assert (=> b!1482188 (= e!947647 e!947646)))

(declare-fun res!669686 () Bool)

(assert (=> b!1482188 (=> (not res!669686) (not e!947646))))

(assert (=> b!1482188 (= res!669686 (separableTokensPredicate!591 thiss!27374 (h!21083 l1!3136) (h!21083 (t!137551 l1!3136)) rules!4290))))

(declare-fun lt!515024 () Unit!25559)

(declare-fun Unit!25567 () Unit!25559)

(assert (=> b!1482188 (= lt!515024 Unit!25567)))

(assert (=> b!1482188 (> (size!12706 (charsOf!1604 (h!21083 (t!137551 l1!3136)))) 0)))

(declare-fun lt!515022 () Unit!25559)

(declare-fun Unit!25568 () Unit!25559)

(assert (=> b!1482188 (= lt!515022 Unit!25568)))

(assert (=> b!1482188 (rulesProduceIndividualToken!1309 thiss!27374 rules!4290 (h!21083 (t!137551 l1!3136)))))

(declare-fun lt!515021 () Unit!25559)

(declare-fun Unit!25569 () Unit!25559)

(assert (=> b!1482188 (= lt!515021 Unit!25569)))

(assert (=> b!1482188 (rulesProduceIndividualToken!1309 thiss!27374 rules!4290 (h!21083 l1!3136))))

(declare-fun lt!515018 () Unit!25559)

(declare-fun lt!515019 () Unit!25559)

(assert (=> b!1482188 (= lt!515018 lt!515019)))

(assert (=> b!1482188 (rulesProduceIndividualToken!1309 thiss!27374 rules!4290 (h!21083 (t!137551 l1!3136)))))

(assert (=> b!1482188 (= lt!515019 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!490 thiss!27374 rules!4290 l1!3136 (h!21083 (t!137551 l1!3136))))))

(declare-fun lt!515023 () Unit!25559)

(declare-fun lt!515020 () Unit!25559)

(assert (=> b!1482188 (= lt!515023 lt!515020)))

(assert (=> b!1482188 (rulesProduceIndividualToken!1309 thiss!27374 rules!4290 (h!21083 l1!3136))))

(assert (=> b!1482188 (= lt!515020 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!490 thiss!27374 rules!4290 l1!3136 (h!21083 l1!3136)))))

(declare-fun b!1482189 () Bool)

(assert (=> b!1482189 (= e!947646 (tokensListTwoByTwoPredicateSeparableList!312 thiss!27374 (Cons!15682 (h!21083 (t!137551 l1!3136)) (t!137551 (t!137551 l1!3136))) rules!4290))))

(assert (= (and d!434794 (not res!669687)) b!1482188))

(assert (= (and b!1482188 res!669686) b!1482189))

(declare-fun m!1728731 () Bool)

(assert (=> b!1482188 m!1728731))

(declare-fun m!1728733 () Bool)

(assert (=> b!1482188 m!1728733))

(declare-fun m!1728735 () Bool)

(assert (=> b!1482188 m!1728735))

(declare-fun m!1728737 () Bool)

(assert (=> b!1482188 m!1728737))

(declare-fun m!1728739 () Bool)

(assert (=> b!1482188 m!1728739))

(assert (=> b!1482188 m!1728643))

(declare-fun m!1728741 () Bool)

(assert (=> b!1482188 m!1728741))

(assert (=> b!1482188 m!1728735))

(declare-fun m!1728743 () Bool)

(assert (=> b!1482189 m!1728743))

(assert (=> b!1481953 d!434794))

(declare-fun d!434796 () Bool)

(assert (=> d!434796 (= (inv!20901 (tag!3060 (rule!4573 (h!21083 l1!3136)))) (= (mod (str.len (value!89334 (tag!3060 (rule!4573 (h!21083 l1!3136))))) 2) 0))))

(assert (=> b!1481954 d!434796))

(declare-fun d!434798 () Bool)

(declare-fun res!669688 () Bool)

(declare-fun e!947648 () Bool)

(assert (=> d!434798 (=> (not res!669688) (not e!947648))))

(assert (=> d!434798 (= res!669688 (semiInverseModEq!1056 (toChars!3994 (transformation!2796 (rule!4573 (h!21083 l1!3136)))) (toValue!4135 (transformation!2796 (rule!4573 (h!21083 l1!3136))))))))

(assert (=> d!434798 (= (inv!20905 (transformation!2796 (rule!4573 (h!21083 l1!3136)))) e!947648)))

(declare-fun b!1482190 () Bool)

(assert (=> b!1482190 (= e!947648 (equivClasses!1015 (toChars!3994 (transformation!2796 (rule!4573 (h!21083 l1!3136)))) (toValue!4135 (transformation!2796 (rule!4573 (h!21083 l1!3136))))))))

(assert (= (and d!434798 res!669688) b!1482190))

(declare-fun m!1728745 () Bool)

(assert (=> d!434798 m!1728745))

(declare-fun m!1728747 () Bool)

(assert (=> b!1482190 m!1728747))

(assert (=> b!1481954 d!434798))

(declare-fun d!434800 () Bool)

(assert (=> d!434800 (= (isEmpty!9812 rules!4290) (is-Nil!15683 rules!4290))))

(assert (=> b!1481950 d!434800))

(declare-fun d!434802 () Bool)

(declare-fun c!243032 () Bool)

(assert (=> d!434802 (= c!243032 (is-IntegerValue!8658 (value!89335 (h!21083 l1!3136))))))

(declare-fun e!947651 () Bool)

(assert (=> d!434802 (= (inv!21 (value!89335 (h!21083 l1!3136))) e!947651)))

(declare-fun b!1482191 () Bool)

(declare-fun e!947650 () Bool)

(assert (=> b!1482191 (= e!947650 (inv!15 (value!89335 (h!21083 l1!3136))))))

(declare-fun b!1482192 () Bool)

(assert (=> b!1482192 (= e!947651 (inv!16 (value!89335 (h!21083 l1!3136))))))

(declare-fun b!1482193 () Bool)

(declare-fun res!669689 () Bool)

(assert (=> b!1482193 (=> res!669689 e!947650)))

(assert (=> b!1482193 (= res!669689 (not (is-IntegerValue!8660 (value!89335 (h!21083 l1!3136)))))))

(declare-fun e!947649 () Bool)

(assert (=> b!1482193 (= e!947649 e!947650)))

(declare-fun b!1482194 () Bool)

(assert (=> b!1482194 (= e!947649 (inv!17 (value!89335 (h!21083 l1!3136))))))

(declare-fun b!1482195 () Bool)

(assert (=> b!1482195 (= e!947651 e!947649)))

(declare-fun c!243033 () Bool)

(assert (=> b!1482195 (= c!243033 (is-IntegerValue!8659 (value!89335 (h!21083 l1!3136))))))

(assert (= (and d!434802 c!243032) b!1482192))

(assert (= (and d!434802 (not c!243032)) b!1482195))

(assert (= (and b!1482195 c!243033) b!1482194))

(assert (= (and b!1482195 (not c!243033)) b!1482193))

(assert (= (and b!1482193 (not res!669689)) b!1482191))

(declare-fun m!1728749 () Bool)

(assert (=> b!1482191 m!1728749))

(declare-fun m!1728751 () Bool)

(assert (=> b!1482192 m!1728751))

(declare-fun m!1728753 () Bool)

(assert (=> b!1482194 m!1728753))

(assert (=> b!1481961 d!434802))

(declare-fun d!434804 () Bool)

(assert (=> d!434804 (= (isEmpty!9813 l2!3105) (is-Nil!15682 l2!3105))))

(assert (=> b!1481962 d!434804))

(declare-fun e!947654 () Bool)

(assert (=> b!1481959 (= tp!420371 e!947654)))

(declare-fun b!1482209 () Bool)

(declare-fun tp!420440 () Bool)

(declare-fun tp!420443 () Bool)

(assert (=> b!1482209 (= e!947654 (and tp!420440 tp!420443))))

(declare-fun b!1482208 () Bool)

(declare-fun tp!420444 () Bool)

(assert (=> b!1482208 (= e!947654 tp!420444)))

(declare-fun b!1482206 () Bool)

(declare-fun tp_is_empty!6981 () Bool)

(assert (=> b!1482206 (= e!947654 tp_is_empty!6981)))

(declare-fun b!1482207 () Bool)

(declare-fun tp!420441 () Bool)

(declare-fun tp!420442 () Bool)

(assert (=> b!1482207 (= e!947654 (and tp!420441 tp!420442))))

(assert (= (and b!1481959 (is-ElementMatch!4110 (regex!2796 (h!21084 rules!4290)))) b!1482206))

(assert (= (and b!1481959 (is-Concat!6997 (regex!2796 (h!21084 rules!4290)))) b!1482207))

(assert (= (and b!1481959 (is-Star!4110 (regex!2796 (h!21084 rules!4290)))) b!1482208))

(assert (= (and b!1481959 (is-Union!4110 (regex!2796 (h!21084 rules!4290)))) b!1482209))

(declare-fun b!1482214 () Bool)

(declare-fun e!947657 () Bool)

(declare-fun tp!420447 () Bool)

(assert (=> b!1482214 (= e!947657 (and tp_is_empty!6981 tp!420447))))

(assert (=> b!1481944 (= tp!420377 e!947657)))

(assert (= (and b!1481944 (is-Cons!15681 (originalCharacters!3658 (h!21083 l2!3105)))) b!1482214))

(declare-fun b!1482228 () Bool)

(declare-fun b_free!38307 () Bool)

(declare-fun b_next!39011 () Bool)

(assert (=> b!1482228 (= b_free!38307 (not b_next!39011))))

(declare-fun tp!420461 () Bool)

(declare-fun b_and!102995 () Bool)

(assert (=> b!1482228 (= tp!420461 b_and!102995)))

(declare-fun b_free!38309 () Bool)

(declare-fun b_next!39013 () Bool)

(assert (=> b!1482228 (= b_free!38309 (not b_next!39013))))

(declare-fun t!137583 () Bool)

(declare-fun tb!84827 () Bool)

(assert (=> (and b!1482228 (= (toChars!3994 (transformation!2796 (rule!4573 (h!21083 (t!137551 l2!3105))))) (toChars!3994 (transformation!2796 (rule!4573 (h!21083 l2!3105))))) t!137583) tb!84827))

(declare-fun result!101994 () Bool)

(assert (= result!101994 result!101974))

(assert (=> b!1482161 t!137583))

(declare-fun t!137585 () Bool)

(declare-fun tb!84829 () Bool)

(assert (=> (and b!1482228 (= (toChars!3994 (transformation!2796 (rule!4573 (h!21083 (t!137551 l2!3105))))) (toChars!3994 (transformation!2796 (rule!4573 (h!21083 l1!3136))))) t!137585) tb!84829))

(declare-fun result!101996 () Bool)

(assert (= result!101996 result!101982))

(assert (=> b!1482185 t!137585))

(declare-fun b_and!102997 () Bool)

(declare-fun tp!420460 () Bool)

(assert (=> b!1482228 (= tp!420460 (and (=> t!137583 result!101994) (=> t!137585 result!101996) b_and!102997))))

(declare-fun e!947670 () Bool)

(declare-fun b!1482227 () Bool)

(declare-fun tp!420459 () Bool)

(declare-fun e!947673 () Bool)

(assert (=> b!1482227 (= e!947670 (and tp!420459 (inv!20901 (tag!3060 (rule!4573 (h!21083 (t!137551 l2!3105))))) (inv!20905 (transformation!2796 (rule!4573 (h!21083 (t!137551 l2!3105))))) e!947673))))

(declare-fun e!947671 () Bool)

(assert (=> b!1481945 (= tp!420369 e!947671)))

(declare-fun tp!420458 () Bool)

(declare-fun b!1482226 () Bool)

(declare-fun e!947675 () Bool)

(assert (=> b!1482226 (= e!947675 (and (inv!21 (value!89335 (h!21083 (t!137551 l2!3105)))) e!947670 tp!420458))))

(declare-fun tp!420462 () Bool)

(declare-fun b!1482225 () Bool)

(assert (=> b!1482225 (= e!947671 (and (inv!20904 (h!21083 (t!137551 l2!3105))) e!947675 tp!420462))))

(assert (=> b!1482228 (= e!947673 (and tp!420461 tp!420460))))

(assert (= b!1482227 b!1482228))

(assert (= b!1482226 b!1482227))

(assert (= b!1482225 b!1482226))

(assert (= (and b!1481945 (is-Cons!15682 (t!137551 l2!3105))) b!1482225))

(declare-fun m!1728755 () Bool)

(assert (=> b!1482227 m!1728755))

(declare-fun m!1728757 () Bool)

(assert (=> b!1482227 m!1728757))

(declare-fun m!1728759 () Bool)

(assert (=> b!1482226 m!1728759))

(declare-fun m!1728761 () Bool)

(assert (=> b!1482225 m!1728761))

(declare-fun e!947676 () Bool)

(assert (=> b!1481967 (= tp!420372 e!947676)))

(declare-fun b!1482232 () Bool)

(declare-fun tp!420463 () Bool)

(declare-fun tp!420466 () Bool)

(assert (=> b!1482232 (= e!947676 (and tp!420463 tp!420466))))

(declare-fun b!1482231 () Bool)

(declare-fun tp!420467 () Bool)

(assert (=> b!1482231 (= e!947676 tp!420467)))

(declare-fun b!1482229 () Bool)

(assert (=> b!1482229 (= e!947676 tp_is_empty!6981)))

(declare-fun b!1482230 () Bool)

(declare-fun tp!420464 () Bool)

(declare-fun tp!420465 () Bool)

(assert (=> b!1482230 (= e!947676 (and tp!420464 tp!420465))))

(assert (= (and b!1481967 (is-ElementMatch!4110 (regex!2796 (rule!4573 (h!21083 l2!3105))))) b!1482229))

(assert (= (and b!1481967 (is-Concat!6997 (regex!2796 (rule!4573 (h!21083 l2!3105))))) b!1482230))

(assert (= (and b!1481967 (is-Star!4110 (regex!2796 (rule!4573 (h!21083 l2!3105))))) b!1482231))

(assert (= (and b!1481967 (is-Union!4110 (regex!2796 (rule!4573 (h!21083 l2!3105))))) b!1482232))

(declare-fun b!1482236 () Bool)

(declare-fun b_free!38311 () Bool)

(declare-fun b_next!39015 () Bool)

(assert (=> b!1482236 (= b_free!38311 (not b_next!39015))))

(declare-fun tp!420471 () Bool)

(declare-fun b_and!102999 () Bool)

(assert (=> b!1482236 (= tp!420471 b_and!102999)))

(declare-fun b_free!38313 () Bool)

(declare-fun b_next!39017 () Bool)

(assert (=> b!1482236 (= b_free!38313 (not b_next!39017))))

(declare-fun t!137587 () Bool)

(declare-fun tb!84831 () Bool)

(assert (=> (and b!1482236 (= (toChars!3994 (transformation!2796 (rule!4573 (h!21083 (t!137551 l1!3136))))) (toChars!3994 (transformation!2796 (rule!4573 (h!21083 l2!3105))))) t!137587) tb!84831))

(declare-fun result!101998 () Bool)

(assert (= result!101998 result!101974))

(assert (=> b!1482161 t!137587))

(declare-fun t!137589 () Bool)

(declare-fun tb!84833 () Bool)

(assert (=> (and b!1482236 (= (toChars!3994 (transformation!2796 (rule!4573 (h!21083 (t!137551 l1!3136))))) (toChars!3994 (transformation!2796 (rule!4573 (h!21083 l1!3136))))) t!137589) tb!84833))

(declare-fun result!102000 () Bool)

(assert (= result!102000 result!101982))

(assert (=> b!1482185 t!137589))

(declare-fun b_and!103001 () Bool)

(declare-fun tp!420470 () Bool)

(assert (=> b!1482236 (= tp!420470 (and (=> t!137587 result!101998) (=> t!137589 result!102000) b_and!103001))))

(declare-fun e!947680 () Bool)

(declare-fun tp!420469 () Bool)

(declare-fun e!947677 () Bool)

(declare-fun b!1482235 () Bool)

(assert (=> b!1482235 (= e!947677 (and tp!420469 (inv!20901 (tag!3060 (rule!4573 (h!21083 (t!137551 l1!3136))))) (inv!20905 (transformation!2796 (rule!4573 (h!21083 (t!137551 l1!3136))))) e!947680))))

(declare-fun e!947678 () Bool)

(assert (=> b!1481963 (= tp!420370 e!947678)))

(declare-fun e!947682 () Bool)

(declare-fun tp!420468 () Bool)

(declare-fun b!1482234 () Bool)

(assert (=> b!1482234 (= e!947682 (and (inv!21 (value!89335 (h!21083 (t!137551 l1!3136)))) e!947677 tp!420468))))

(declare-fun tp!420472 () Bool)

(declare-fun b!1482233 () Bool)

(assert (=> b!1482233 (= e!947678 (and (inv!20904 (h!21083 (t!137551 l1!3136))) e!947682 tp!420472))))

(assert (=> b!1482236 (= e!947680 (and tp!420471 tp!420470))))

(assert (= b!1482235 b!1482236))

(assert (= b!1482234 b!1482235))

(assert (= b!1482233 b!1482234))

(assert (= (and b!1481963 (is-Cons!15682 (t!137551 l1!3136))) b!1482233))

(declare-fun m!1728763 () Bool)

(assert (=> b!1482235 m!1728763))

(declare-fun m!1728765 () Bool)

(assert (=> b!1482235 m!1728765))

(declare-fun m!1728767 () Bool)

(assert (=> b!1482234 m!1728767))

(declare-fun m!1728769 () Bool)

(assert (=> b!1482233 m!1728769))

(declare-fun e!947683 () Bool)

(assert (=> b!1481954 (= tp!420375 e!947683)))

(declare-fun b!1482240 () Bool)

(declare-fun tp!420473 () Bool)

(declare-fun tp!420476 () Bool)

(assert (=> b!1482240 (= e!947683 (and tp!420473 tp!420476))))

(declare-fun b!1482239 () Bool)

(declare-fun tp!420477 () Bool)

(assert (=> b!1482239 (= e!947683 tp!420477)))

(declare-fun b!1482237 () Bool)

(assert (=> b!1482237 (= e!947683 tp_is_empty!6981)))

(declare-fun b!1482238 () Bool)

(declare-fun tp!420474 () Bool)

(declare-fun tp!420475 () Bool)

(assert (=> b!1482238 (= e!947683 (and tp!420474 tp!420475))))

(assert (= (and b!1481954 (is-ElementMatch!4110 (regex!2796 (rule!4573 (h!21083 l1!3136))))) b!1482237))

(assert (= (and b!1481954 (is-Concat!6997 (regex!2796 (rule!4573 (h!21083 l1!3136))))) b!1482238))

(assert (= (and b!1481954 (is-Star!4110 (regex!2796 (rule!4573 (h!21083 l1!3136))))) b!1482239))

(assert (= (and b!1481954 (is-Union!4110 (regex!2796 (rule!4573 (h!21083 l1!3136))))) b!1482240))

(declare-fun b!1482251 () Bool)

(declare-fun b_free!38315 () Bool)

(declare-fun b_next!39019 () Bool)

(assert (=> b!1482251 (= b_free!38315 (not b_next!39019))))

(declare-fun tp!420486 () Bool)

(declare-fun b_and!103003 () Bool)

(assert (=> b!1482251 (= tp!420486 b_and!103003)))

(declare-fun b_free!38317 () Bool)

(declare-fun b_next!39021 () Bool)

(assert (=> b!1482251 (= b_free!38317 (not b_next!39021))))

(declare-fun tb!84835 () Bool)

(declare-fun t!137591 () Bool)

(assert (=> (and b!1482251 (= (toChars!3994 (transformation!2796 (h!21084 (t!137552 rules!4290)))) (toChars!3994 (transformation!2796 (rule!4573 (h!21083 l2!3105))))) t!137591) tb!84835))

(declare-fun result!102004 () Bool)

(assert (= result!102004 result!101974))

(assert (=> b!1482161 t!137591))

(declare-fun tb!84837 () Bool)

(declare-fun t!137593 () Bool)

(assert (=> (and b!1482251 (= (toChars!3994 (transformation!2796 (h!21084 (t!137552 rules!4290)))) (toChars!3994 (transformation!2796 (rule!4573 (h!21083 l1!3136))))) t!137593) tb!84837))

(declare-fun result!102006 () Bool)

(assert (= result!102006 result!101982))

(assert (=> b!1482185 t!137593))

(declare-fun tp!420487 () Bool)

(declare-fun b_and!103005 () Bool)

(assert (=> b!1482251 (= tp!420487 (and (=> t!137591 result!102004) (=> t!137593 result!102006) b_and!103005))))

(declare-fun e!947692 () Bool)

(assert (=> b!1482251 (= e!947692 (and tp!420486 tp!420487))))

(declare-fun b!1482250 () Bool)

(declare-fun tp!420488 () Bool)

(declare-fun e!947695 () Bool)

(assert (=> b!1482250 (= e!947695 (and tp!420488 (inv!20901 (tag!3060 (h!21084 (t!137552 rules!4290)))) (inv!20905 (transformation!2796 (h!21084 (t!137552 rules!4290)))) e!947692))))

(declare-fun b!1482249 () Bool)

(declare-fun e!947694 () Bool)

(declare-fun tp!420489 () Bool)

(assert (=> b!1482249 (= e!947694 (and e!947695 tp!420489))))

(assert (=> b!1481949 (= tp!420367 e!947694)))

(assert (= b!1482250 b!1482251))

(assert (= b!1482249 b!1482250))

(assert (= (and b!1481949 (is-Cons!15683 (t!137552 rules!4290))) b!1482249))

(declare-fun m!1728771 () Bool)

(assert (=> b!1482250 m!1728771))

(declare-fun m!1728773 () Bool)

(assert (=> b!1482250 m!1728773))

(declare-fun b!1482252 () Bool)

(declare-fun e!947696 () Bool)

(declare-fun tp!420490 () Bool)

(assert (=> b!1482252 (= e!947696 (and tp_is_empty!6981 tp!420490))))

(assert (=> b!1481961 (= tp!420378 e!947696)))

(assert (= (and b!1481961 (is-Cons!15681 (originalCharacters!3658 (h!21083 l1!3136)))) b!1482252))

(declare-fun b_lambda!46445 () Bool)

(assert (= b_lambda!46441 (or (and b!1481964 b_free!38289 (= (toChars!3994 (transformation!2796 (h!21084 rules!4290))) (toChars!3994 (transformation!2796 (rule!4573 (h!21083 l2!3105)))))) (and b!1482228 b_free!38309 (= (toChars!3994 (transformation!2796 (rule!4573 (h!21083 (t!137551 l2!3105))))) (toChars!3994 (transformation!2796 (rule!4573 (h!21083 l2!3105)))))) (and b!1481966 b_free!38293) (and b!1482251 b_free!38317 (= (toChars!3994 (transformation!2796 (h!21084 (t!137552 rules!4290)))) (toChars!3994 (transformation!2796 (rule!4573 (h!21083 l2!3105)))))) (and b!1482236 b_free!38313 (= (toChars!3994 (transformation!2796 (rule!4573 (h!21083 (t!137551 l1!3136))))) (toChars!3994 (transformation!2796 (rule!4573 (h!21083 l2!3105)))))) (and b!1481958 b_free!38285 (= (toChars!3994 (transformation!2796 (rule!4573 (h!21083 l1!3136)))) (toChars!3994 (transformation!2796 (rule!4573 (h!21083 l2!3105)))))) b_lambda!46445)))

(declare-fun b_lambda!46447 () Bool)

(assert (= b_lambda!46443 (or (and b!1481964 b_free!38289 (= (toChars!3994 (transformation!2796 (h!21084 rules!4290))) (toChars!3994 (transformation!2796 (rule!4573 (h!21083 l1!3136)))))) (and b!1482251 b_free!38317 (= (toChars!3994 (transformation!2796 (h!21084 (t!137552 rules!4290)))) (toChars!3994 (transformation!2796 (rule!4573 (h!21083 l1!3136)))))) (and b!1481958 b_free!38285) (and b!1482236 b_free!38313 (= (toChars!3994 (transformation!2796 (rule!4573 (h!21083 (t!137551 l1!3136))))) (toChars!3994 (transformation!2796 (rule!4573 (h!21083 l1!3136)))))) (and b!1482228 b_free!38309 (= (toChars!3994 (transformation!2796 (rule!4573 (h!21083 (t!137551 l2!3105))))) (toChars!3994 (transformation!2796 (rule!4573 (h!21083 l1!3136)))))) (and b!1481966 b_free!38293 (= (toChars!3994 (transformation!2796 (rule!4573 (h!21083 l2!3105)))) (toChars!3994 (transformation!2796 (rule!4573 (h!21083 l1!3136)))))) b_lambda!46447)))

(push 1)

(assert (not b!1482249))

(assert (not b_next!39019))

(assert (not b!1482232))

(assert b_and!102989)

(assert (not b!1482239))

(assert (not b_next!38993))

(assert (not b!1482046))

(assert (not d!434772))

(assert (not b!1482125))

(assert (not b!1482184))

(assert (not b!1482143))

(assert (not b!1482079))

(assert (not b!1482082))

(assert (not b_next!38997))

(assert (not d!434746))

(assert (not b_next!39013))

(assert (not b_next!39011))

(assert (not b!1482183))

(assert (not b_lambda!46447))

(assert (not b!1482207))

(assert (not b!1482227))

(assert b_and!102957)

(assert (not b!1482142))

(assert (not b!1482162))

(assert (not b_next!39017))

(assert b_and!102961)

(assert (not b!1482080))

(assert (not b!1482225))

(assert (not b!1482161))

(assert (not b!1482127))

(assert (not b!1482062))

(assert (not b!1482240))

(assert (not b_lambda!46445))

(assert b_and!102995)

(assert (not b!1482103))

(assert (not b!1482238))

(assert (not b!1482192))

(assert (not d!434752))

(assert (not d!434730))

(assert (not b!1482122))

(assert (not d!434798))

(assert (not b!1482186))

(assert b_and!103003)

(assert (not d!434762))

(assert (not b_next!38987))

(assert (not d!434792))

(assert (not b!1482208))

(assert b_and!102993)

(assert b_and!103001)

(assert (not b!1482185))

(assert b_and!102997)

(assert (not b!1482230))

(assert (not b!1482191))

(assert b_and!102953)

(assert (not b!1482235))

(assert (not d!434782))

(assert (not b!1482104))

(assert (not b!1482233))

(assert (not b!1482126))

(assert (not d!434754))

(assert (not b!1482168))

(assert (not b!1482234))

(assert (not b_next!38995))

(assert (not b!1482113))

(assert (not b_next!39021))

(assert (not tb!84815))

(assert (not b!1482188))

(assert (not d!434764))

(assert (not b!1482189))

(assert (not d!434750))

(assert (not d!434748))

(assert (not b!1482083))

(assert (not d!434738))

(assert (not b!1482081))

(assert (not b!1482252))

(assert (not b!1482214))

(assert (not b!1482250))

(assert (not b_next!39015))

(assert b_and!103005)

(assert (not b!1482190))

(assert tp_is_empty!6981)

(assert (not tb!84821))

(assert (not b!1482187))

(assert (not b!1482209))

(assert (not b_next!38991))

(assert (not d!434740))

(assert (not b!1482145))

(assert (not b_next!38989))

(assert (not b!1482231))

(assert (not b!1482226))

(assert b_and!102991)

(assert (not b!1482078))

(assert b_and!102999)

(assert (not b!1482169))

(assert (not b!1482194))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!38993))

(assert (not b_next!38997))

(assert b_and!102957)

(assert b_and!102995)

(assert (not b_next!39019))

(assert b_and!102953)

(assert (not b_next!38995))

(assert b_and!102989)

(assert (not b_next!39021))

(assert (not b_next!38991))

(assert (not b_next!38989))

(assert b_and!102991)

(assert b_and!102999)

(assert (not b_next!39013))

(assert (not b_next!39011))

(assert (not b_next!39017))

(assert b_and!102961)

(assert b_and!103003)

(assert (not b_next!38987))

(assert b_and!102993)

(assert b_and!103001)

(assert b_and!102997)

(assert (not b_next!39015))

(assert b_and!103005)

(check-sat)

(pop 1)

