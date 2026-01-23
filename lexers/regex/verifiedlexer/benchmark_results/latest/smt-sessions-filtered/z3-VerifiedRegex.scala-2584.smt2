; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!138254 () Bool)

(assert start!138254)

(declare-fun b!1475102 () Bool)

(declare-fun b_free!37623 () Bool)

(declare-fun b_next!38327 () Bool)

(assert (=> b!1475102 (= b_free!37623 (not b_next!38327))))

(declare-fun tp!417222 () Bool)

(declare-fun b_and!101717 () Bool)

(assert (=> b!1475102 (= tp!417222 b_and!101717)))

(declare-fun b_free!37625 () Bool)

(declare-fun b_next!38329 () Bool)

(assert (=> b!1475102 (= b_free!37625 (not b_next!38329))))

(declare-fun tp!417221 () Bool)

(declare-fun b_and!101719 () Bool)

(assert (=> b!1475102 (= tp!417221 b_and!101719)))

(declare-fun b!1475116 () Bool)

(declare-fun b_free!37627 () Bool)

(declare-fun b_next!38331 () Bool)

(assert (=> b!1475116 (= b_free!37627 (not b_next!38331))))

(declare-fun tp!417233 () Bool)

(declare-fun b_and!101721 () Bool)

(assert (=> b!1475116 (= tp!417233 b_and!101721)))

(declare-fun b_free!37629 () Bool)

(declare-fun b_next!38333 () Bool)

(assert (=> b!1475116 (= b_free!37629 (not b_next!38333))))

(declare-fun tp!417234 () Bool)

(declare-fun b_and!101723 () Bool)

(assert (=> b!1475116 (= tp!417234 b_and!101723)))

(declare-fun b!1475120 () Bool)

(declare-fun b_free!37631 () Bool)

(declare-fun b_next!38335 () Bool)

(assert (=> b!1475120 (= b_free!37631 (not b_next!38335))))

(declare-fun tp!417229 () Bool)

(declare-fun b_and!101725 () Bool)

(assert (=> b!1475120 (= tp!417229 b_and!101725)))

(declare-fun b_free!37633 () Bool)

(declare-fun b_next!38337 () Bool)

(assert (=> b!1475120 (= b_free!37633 (not b_next!38337))))

(declare-fun tp!417227 () Bool)

(declare-fun b_and!101727 () Bool)

(assert (=> b!1475120 (= tp!417227 b_and!101727)))

(declare-fun b!1475097 () Bool)

(declare-fun res!666760 () Bool)

(declare-fun e!942407 () Bool)

(assert (=> b!1475097 (=> res!666760 e!942407)))

(declare-datatypes ((List!15602 0))(
  ( (Nil!15536) (Cons!15536 (h!20937 (_ BitVec 16)) (t!136393 List!15602)) )
))
(declare-datatypes ((TokenValue!2857 0))(
  ( (FloatLiteralValue!5714 (text!20444 List!15602)) (TokenValueExt!2856 (__x!9504 Int)) (Broken!14285 (value!88481 List!15602)) (Object!2922) (End!2857) (Def!2857) (Underscore!2857) (Match!2857) (Else!2857) (Error!2857) (Case!2857) (If!2857) (Extends!2857) (Abstract!2857) (Class!2857) (Val!2857) (DelimiterValue!5714 (del!2917 List!15602)) (KeywordValue!2863 (value!88482 List!15602)) (CommentValue!5714 (value!88483 List!15602)) (WhitespaceValue!5714 (value!88484 List!15602)) (IndentationValue!2857 (value!88485 List!15602)) (String!18540) (Int32!2857) (Broken!14286 (value!88486 List!15602)) (Boolean!2858) (Unit!25280) (OperatorValue!2860 (op!2917 List!15602)) (IdentifierValue!5714 (value!88487 List!15602)) (IdentifierValue!5715 (value!88488 List!15602)) (WhitespaceValue!5715 (value!88489 List!15602)) (True!5714) (False!5714) (Broken!14287 (value!88490 List!15602)) (Broken!14288 (value!88491 List!15602)) (True!5715) (RightBrace!2857) (RightBracket!2857) (Colon!2857) (Null!2857) (Comma!2857) (LeftBracket!2857) (False!5715) (LeftBrace!2857) (ImaginaryLiteralValue!2857 (text!20445 List!15602)) (StringLiteralValue!8571 (value!88492 List!15602)) (EOFValue!2857 (value!88493 List!15602)) (IdentValue!2857 (value!88494 List!15602)) (DelimiterValue!5715 (value!88495 List!15602)) (DedentValue!2857 (value!88496 List!15602)) (NewLineValue!2857 (value!88497 List!15602)) (IntegerValue!8571 (value!88498 (_ BitVec 32)) (text!20446 List!15602)) (IntegerValue!8572 (value!88499 Int) (text!20447 List!15602)) (Times!2857) (Or!2857) (Equal!2857) (Minus!2857) (Broken!14289 (value!88500 List!15602)) (And!2857) (Div!2857) (LessEqual!2857) (Mod!2857) (Concat!6938) (Not!2857) (Plus!2857) (SpaceValue!2857 (value!88501 List!15602)) (IntegerValue!8573 (value!88502 Int) (text!20448 List!15602)) (StringLiteralValue!8572 (text!20449 List!15602)) (FloatLiteralValue!5715 (text!20450 List!15602)) (BytesLiteralValue!2857 (value!88503 List!15602)) (CommentValue!5715 (value!88504 List!15602)) (StringLiteralValue!8573 (value!88505 List!15602)) (ErrorTokenValue!2857 (msg!2918 List!15602)) )
))
(declare-datatypes ((C!8340 0))(
  ( (C!8341 (val!4740 Int)) )
))
(declare-datatypes ((Regex!4081 0))(
  ( (ElementMatch!4081 (c!242516 C!8340)) (Concat!6939 (regOne!8674 Regex!4081) (regTwo!8674 Regex!4081)) (EmptyExpr!4081) (Star!4081 (reg!4410 Regex!4081)) (EmptyLang!4081) (Union!4081 (regOne!8675 Regex!4081) (regTwo!8675 Regex!4081)) )
))
(declare-datatypes ((String!18541 0))(
  ( (String!18542 (value!88506 String)) )
))
(declare-datatypes ((List!15603 0))(
  ( (Nil!15537) (Cons!15537 (h!20938 C!8340) (t!136394 List!15603)) )
))
(declare-datatypes ((IArray!10595 0))(
  ( (IArray!10596 (innerList!5355 List!15603)) )
))
(declare-datatypes ((Conc!5295 0))(
  ( (Node!5295 (left!13117 Conc!5295) (right!13447 Conc!5295) (csize!10820 Int) (cheight!5506 Int)) (Leaf!7880 (xs!8050 IArray!10595) (csize!10821 Int)) (Empty!5295) )
))
(declare-datatypes ((BalanceConc!10530 0))(
  ( (BalanceConc!10531 (c!242517 Conc!5295)) )
))
(declare-datatypes ((TokenValueInjection!5374 0))(
  ( (TokenValueInjection!5375 (toValue!4098 Int) (toChars!3957 Int)) )
))
(declare-datatypes ((Rule!5334 0))(
  ( (Rule!5335 (regex!2767 Regex!4081) (tag!3031 String!18541) (isSeparator!2767 Bool) (transformation!2767 TokenValueInjection!5374)) )
))
(declare-datatypes ((Token!5196 0))(
  ( (Token!5197 (value!88507 TokenValue!2857) (rule!4544 Rule!5334) (size!12591 Int) (originalCharacters!3629 List!15603)) )
))
(declare-datatypes ((List!15604 0))(
  ( (Nil!15538) (Cons!15538 (h!20939 Token!5196) (t!136395 List!15604)) )
))
(declare-fun l1!3136 () List!15604)

(declare-fun isEmpty!9705 (List!15604) Bool)

(assert (=> b!1475097 (= res!666760 (not (isEmpty!9705 (t!136395 l1!3136))))))

(declare-fun b!1475098 () Bool)

(declare-fun res!666761 () Bool)

(declare-fun e!942393 () Bool)

(assert (=> b!1475098 (=> (not res!666761) (not e!942393))))

(declare-datatypes ((LexerInterface!2423 0))(
  ( (LexerInterfaceExt!2420 (__x!9505 Int)) (Lexer!2421) )
))
(declare-fun thiss!27374 () LexerInterface!2423)

(declare-datatypes ((List!15605 0))(
  ( (Nil!15539) (Cons!15539 (h!20940 Rule!5334) (t!136396 List!15605)) )
))
(declare-fun rules!4290 () List!15605)

(declare-fun rulesInvariant!2212 (LexerInterface!2423 List!15605) Bool)

(assert (=> b!1475098 (= res!666761 (rulesInvariant!2212 thiss!27374 rules!4290))))

(declare-fun b!1475099 () Bool)

(declare-fun res!666765 () Bool)

(assert (=> b!1475099 (=> res!666765 e!942407)))

(declare-fun e!942401 () Bool)

(assert (=> b!1475099 (= res!666765 e!942401)))

(declare-fun res!666764 () Bool)

(assert (=> b!1475099 (=> (not res!666764) (not e!942401))))

(get-info :version)

(assert (=> b!1475099 (= res!666764 ((_ is Cons!15538) l1!3136))))

(declare-fun b!1475100 () Bool)

(declare-fun res!666767 () Bool)

(assert (=> b!1475100 (=> (not res!666767) (not e!942393))))

(assert (=> b!1475100 (= res!666767 (not (isEmpty!9705 l1!3136)))))

(declare-fun tp!417226 () Bool)

(declare-fun l2!3105 () List!15604)

(declare-fun e!942402 () Bool)

(declare-fun b!1475101 () Bool)

(declare-fun e!942397 () Bool)

(declare-fun inv!21 (TokenValue!2857) Bool)

(assert (=> b!1475101 (= e!942402 (and (inv!21 (value!88507 (h!20939 l2!3105))) e!942397 tp!417226))))

(declare-fun e!942396 () Bool)

(assert (=> b!1475102 (= e!942396 (and tp!417222 tp!417221))))

(declare-fun e!942392 () Bool)

(declare-fun tp!417232 () Bool)

(declare-fun e!942399 () Bool)

(declare-fun b!1475103 () Bool)

(declare-fun inv!20742 (String!18541) Bool)

(declare-fun inv!20745 (TokenValueInjection!5374) Bool)

(assert (=> b!1475103 (= e!942392 (and tp!417232 (inv!20742 (tag!3031 (rule!4544 (h!20939 l1!3136)))) (inv!20745 (transformation!2767 (rule!4544 (h!20939 l1!3136)))) e!942399))))

(declare-fun b!1475104 () Bool)

(declare-fun e!942403 () Bool)

(declare-fun e!942406 () Bool)

(declare-fun tp!417223 () Bool)

(declare-fun inv!20746 (Token!5196) Bool)

(assert (=> b!1475104 (= e!942403 (and (inv!20746 (h!20939 l1!3136)) e!942406 tp!417223))))

(declare-fun b!1475105 () Bool)

(assert (=> b!1475105 (= e!942401 (not (isEmpty!9705 (t!136395 l1!3136))))))

(declare-fun res!666762 () Bool)

(assert (=> start!138254 (=> (not res!666762) (not e!942393))))

(assert (=> start!138254 (= res!666762 ((_ is Lexer!2421) thiss!27374))))

(assert (=> start!138254 e!942393))

(assert (=> start!138254 true))

(declare-fun e!942395 () Bool)

(assert (=> start!138254 e!942395))

(assert (=> start!138254 e!942403))

(declare-fun e!942405 () Bool)

(assert (=> start!138254 e!942405))

(declare-fun b!1475106 () Bool)

(declare-fun res!666757 () Bool)

(assert (=> b!1475106 (=> res!666757 e!942407)))

(assert (=> b!1475106 (= res!666757 (not ((_ is Cons!15538) l1!3136)))))

(declare-fun b!1475107 () Bool)

(declare-fun res!666756 () Bool)

(assert (=> b!1475107 (=> (not res!666756) (not e!942393))))

(declare-fun rulesProduceEachTokenIndividuallyList!790 (LexerInterface!2423 List!15605 List!15604) Bool)

(assert (=> b!1475107 (= res!666756 (rulesProduceEachTokenIndividuallyList!790 thiss!27374 rules!4290 l2!3105))))

(declare-fun b!1475108 () Bool)

(declare-fun tp!417224 () Bool)

(assert (=> b!1475108 (= e!942406 (and (inv!21 (value!88507 (h!20939 l1!3136))) e!942392 tp!417224))))

(declare-fun e!942394 () Bool)

(declare-fun tp!417230 () Bool)

(declare-fun b!1475109 () Bool)

(assert (=> b!1475109 (= e!942394 (and tp!417230 (inv!20742 (tag!3031 (h!20940 rules!4290))) (inv!20745 (transformation!2767 (h!20940 rules!4290))) e!942396))))

(declare-fun b!1475110 () Bool)

(declare-fun res!666759 () Bool)

(assert (=> b!1475110 (=> (not res!666759) (not e!942393))))

(declare-fun tokensListTwoByTwoPredicateSeparableList!283 (LexerInterface!2423 List!15604 List!15605) Bool)

(assert (=> b!1475110 (= res!666759 (tokensListTwoByTwoPredicateSeparableList!283 thiss!27374 l1!3136 rules!4290))))

(declare-fun b!1475111 () Bool)

(declare-fun tp!417231 () Bool)

(assert (=> b!1475111 (= e!942395 (and e!942394 tp!417231))))

(declare-fun b!1475112 () Bool)

(declare-fun lt!512748 () List!15604)

(declare-datatypes ((IArray!10597 0))(
  ( (IArray!10598 (innerList!5356 List!15604)) )
))
(declare-datatypes ((Conc!5296 0))(
  ( (Node!5296 (left!13118 Conc!5296) (right!13448 Conc!5296) (csize!10822 Int) (cheight!5507 Int)) (Leaf!7881 (xs!8051 IArray!10597) (csize!10823 Int)) (Empty!5296) )
))
(declare-datatypes ((BalanceConc!10532 0))(
  ( (BalanceConc!10533 (c!242518 Conc!5296)) )
))
(declare-fun rulesProduceEachTokenIndividually!898 (LexerInterface!2423 List!15605 BalanceConc!10532) Bool)

(declare-fun seqFromList!1728 (List!15604) BalanceConc!10532)

(assert (=> b!1475112 (= e!942407 (rulesProduceEachTokenIndividually!898 thiss!27374 rules!4290 (seqFromList!1728 lt!512748)))))

(assert (=> b!1475112 (rulesProduceEachTokenIndividuallyList!790 thiss!27374 rules!4290 lt!512748)))

(declare-fun ++!4197 (List!15604 List!15604) List!15604)

(assert (=> b!1475112 (= lt!512748 (++!4197 l1!3136 l2!3105))))

(declare-datatypes ((Unit!25281 0))(
  ( (Unit!25282) )
))
(declare-fun lt!512746 () Unit!25281)

(declare-fun lemmaRulesProduceEachTokenIndividuallyConcat!68 (LexerInterface!2423 List!15605 List!15604 List!15604) Unit!25281)

(assert (=> b!1475112 (= lt!512746 (lemmaRulesProduceEachTokenIndividuallyConcat!68 thiss!27374 rules!4290 l1!3136 l2!3105))))

(declare-fun e!942404 () Bool)

(declare-fun tp!417225 () Bool)

(declare-fun b!1475113 () Bool)

(assert (=> b!1475113 (= e!942397 (and tp!417225 (inv!20742 (tag!3031 (rule!4544 (h!20939 l2!3105)))) (inv!20745 (transformation!2767 (rule!4544 (h!20939 l2!3105)))) e!942404))))

(declare-fun b!1475114 () Bool)

(declare-fun res!666763 () Bool)

(assert (=> b!1475114 (=> (not res!666763) (not e!942393))))

(assert (=> b!1475114 (= res!666763 (not (isEmpty!9705 l2!3105)))))

(declare-fun b!1475115 () Bool)

(declare-fun res!666754 () Bool)

(assert (=> b!1475115 (=> (not res!666754) (not e!942393))))

(assert (=> b!1475115 (= res!666754 (rulesProduceEachTokenIndividuallyList!790 thiss!27374 rules!4290 l1!3136))))

(assert (=> b!1475116 (= e!942404 (and tp!417233 tp!417234))))

(declare-fun b!1475117 () Bool)

(assert (=> b!1475117 (= e!942393 (not e!942407))))

(declare-fun res!666755 () Bool)

(assert (=> b!1475117 (=> res!666755 e!942407)))

(declare-fun lt!512747 () Token!5196)

(declare-fun lt!512749 () Token!5196)

(declare-fun separableTokensPredicate!566 (LexerInterface!2423 Token!5196 Token!5196 List!15605) Bool)

(assert (=> b!1475117 (= res!666755 (not (separableTokensPredicate!566 thiss!27374 lt!512747 lt!512749 rules!4290)))))

(declare-fun rulesProduceIndividualToken!1282 (LexerInterface!2423 List!15605 Token!5196) Bool)

(assert (=> b!1475117 (rulesProduceIndividualToken!1282 thiss!27374 rules!4290 lt!512749)))

(declare-fun lt!512745 () Unit!25281)

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!463 (LexerInterface!2423 List!15605 List!15604 Token!5196) Unit!25281)

(assert (=> b!1475117 (= lt!512745 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!463 thiss!27374 rules!4290 l2!3105 lt!512749))))

(declare-fun head!3061 (List!15604) Token!5196)

(assert (=> b!1475117 (= lt!512749 (head!3061 l2!3105))))

(assert (=> b!1475117 (rulesProduceIndividualToken!1282 thiss!27374 rules!4290 lt!512747)))

(declare-fun lt!512744 () Unit!25281)

(assert (=> b!1475117 (= lt!512744 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!463 thiss!27374 rules!4290 l1!3136 lt!512747))))

(declare-fun last!325 (List!15604) Token!5196)

(assert (=> b!1475117 (= lt!512747 (last!325 l1!3136))))

(declare-fun b!1475118 () Bool)

(declare-fun res!666758 () Bool)

(assert (=> b!1475118 (=> (not res!666758) (not e!942393))))

(declare-fun isEmpty!9706 (List!15605) Bool)

(assert (=> b!1475118 (= res!666758 (not (isEmpty!9706 rules!4290)))))

(declare-fun tp!417228 () Bool)

(declare-fun b!1475119 () Bool)

(assert (=> b!1475119 (= e!942405 (and (inv!20746 (h!20939 l2!3105)) e!942402 tp!417228))))

(assert (=> b!1475120 (= e!942399 (and tp!417229 tp!417227))))

(declare-fun b!1475121 () Bool)

(declare-fun res!666766 () Bool)

(assert (=> b!1475121 (=> (not res!666766) (not e!942393))))

(assert (=> b!1475121 (= res!666766 (tokensListTwoByTwoPredicateSeparableList!283 thiss!27374 l2!3105 rules!4290))))

(assert (= (and start!138254 res!666762) b!1475118))

(assert (= (and b!1475118 res!666758) b!1475098))

(assert (= (and b!1475098 res!666761) b!1475115))

(assert (= (and b!1475115 res!666754) b!1475107))

(assert (= (and b!1475107 res!666756) b!1475110))

(assert (= (and b!1475110 res!666759) b!1475121))

(assert (= (and b!1475121 res!666766) b!1475100))

(assert (= (and b!1475100 res!666767) b!1475114))

(assert (= (and b!1475114 res!666763) b!1475117))

(assert (= (and b!1475117 (not res!666755)) b!1475099))

(assert (= (and b!1475099 res!666764) b!1475105))

(assert (= (and b!1475099 (not res!666765)) b!1475106))

(assert (= (and b!1475106 (not res!666757)) b!1475097))

(assert (= (and b!1475097 (not res!666760)) b!1475112))

(assert (= b!1475109 b!1475102))

(assert (= b!1475111 b!1475109))

(assert (= (and start!138254 ((_ is Cons!15539) rules!4290)) b!1475111))

(assert (= b!1475103 b!1475120))

(assert (= b!1475108 b!1475103))

(assert (= b!1475104 b!1475108))

(assert (= (and start!138254 ((_ is Cons!15538) l1!3136)) b!1475104))

(assert (= b!1475113 b!1475116))

(assert (= b!1475101 b!1475113))

(assert (= b!1475119 b!1475101))

(assert (= (and start!138254 ((_ is Cons!15538) l2!3105)) b!1475119))

(declare-fun m!1720179 () Bool)

(assert (=> b!1475113 m!1720179))

(declare-fun m!1720181 () Bool)

(assert (=> b!1475113 m!1720181))

(declare-fun m!1720183 () Bool)

(assert (=> b!1475109 m!1720183))

(declare-fun m!1720185 () Bool)

(assert (=> b!1475109 m!1720185))

(declare-fun m!1720187 () Bool)

(assert (=> b!1475115 m!1720187))

(declare-fun m!1720189 () Bool)

(assert (=> b!1475098 m!1720189))

(declare-fun m!1720191 () Bool)

(assert (=> b!1475118 m!1720191))

(declare-fun m!1720193 () Bool)

(assert (=> b!1475114 m!1720193))

(declare-fun m!1720195 () Bool)

(assert (=> b!1475112 m!1720195))

(declare-fun m!1720197 () Bool)

(assert (=> b!1475112 m!1720197))

(declare-fun m!1720199 () Bool)

(assert (=> b!1475112 m!1720199))

(declare-fun m!1720201 () Bool)

(assert (=> b!1475112 m!1720201))

(assert (=> b!1475112 m!1720199))

(declare-fun m!1720203 () Bool)

(assert (=> b!1475112 m!1720203))

(declare-fun m!1720205 () Bool)

(assert (=> b!1475117 m!1720205))

(declare-fun m!1720207 () Bool)

(assert (=> b!1475117 m!1720207))

(declare-fun m!1720209 () Bool)

(assert (=> b!1475117 m!1720209))

(declare-fun m!1720211 () Bool)

(assert (=> b!1475117 m!1720211))

(declare-fun m!1720213 () Bool)

(assert (=> b!1475117 m!1720213))

(declare-fun m!1720215 () Bool)

(assert (=> b!1475117 m!1720215))

(declare-fun m!1720217 () Bool)

(assert (=> b!1475117 m!1720217))

(declare-fun m!1720219 () Bool)

(assert (=> b!1475097 m!1720219))

(declare-fun m!1720221 () Bool)

(assert (=> b!1475104 m!1720221))

(declare-fun m!1720223 () Bool)

(assert (=> b!1475119 m!1720223))

(declare-fun m!1720225 () Bool)

(assert (=> b!1475108 m!1720225))

(declare-fun m!1720227 () Bool)

(assert (=> b!1475110 m!1720227))

(declare-fun m!1720229 () Bool)

(assert (=> b!1475101 m!1720229))

(declare-fun m!1720231 () Bool)

(assert (=> b!1475121 m!1720231))

(assert (=> b!1475105 m!1720219))

(declare-fun m!1720233 () Bool)

(assert (=> b!1475103 m!1720233))

(declare-fun m!1720235 () Bool)

(assert (=> b!1475103 m!1720235))

(declare-fun m!1720237 () Bool)

(assert (=> b!1475107 m!1720237))

(declare-fun m!1720239 () Bool)

(assert (=> b!1475100 m!1720239))

(check-sat b_and!101727 (not b!1475107) (not b!1475112) (not b!1475119) (not b!1475118) (not b!1475108) b_and!101723 (not b_next!38329) (not b_next!38327) b_and!101721 (not b_next!38337) (not b!1475121) (not b_next!38335) (not b!1475101) (not b!1475113) (not b_next!38331) (not b!1475103) (not b!1475109) (not b!1475114) (not b!1475100) (not b!1475105) (not b!1475097) (not b!1475115) (not b!1475110) b_and!101719 (not b_next!38333) (not b!1475104) b_and!101717 b_and!101725 (not b!1475098) (not b!1475117) (not b!1475111))
(check-sat b_and!101727 (not b_next!38335) (not b_next!38331) b_and!101719 b_and!101723 (not b_next!38329) b_and!101725 (not b_next!38327) b_and!101721 (not b_next!38337) (not b_next!38333) b_and!101717)
(get-model)

(declare-fun d!432587 () Bool)

(assert (=> d!432587 (= (isEmpty!9705 (t!136395 l1!3136)) ((_ is Nil!15538) (t!136395 l1!3136)))))

(assert (=> b!1475105 d!432587))

(declare-fun b!1475163 () Bool)

(declare-fun e!942444 () Bool)

(assert (=> b!1475163 (= e!942444 true)))

(declare-fun b!1475162 () Bool)

(declare-fun e!942443 () Bool)

(assert (=> b!1475162 (= e!942443 e!942444)))

(declare-fun b!1475161 () Bool)

(declare-fun e!942442 () Bool)

(assert (=> b!1475161 (= e!942442 e!942443)))

(declare-fun d!432589 () Bool)

(assert (=> d!432589 e!942442))

(assert (= b!1475162 b!1475163))

(assert (= b!1475161 b!1475162))

(assert (= (and d!432589 ((_ is Cons!15539) rules!4290)) b!1475161))

(declare-fun lambda!63615 () Int)

(declare-fun order!9333 () Int)

(declare-fun order!9335 () Int)

(declare-fun dynLambda!7049 (Int Int) Int)

(declare-fun dynLambda!7050 (Int Int) Int)

(assert (=> b!1475163 (< (dynLambda!7049 order!9333 (toValue!4098 (transformation!2767 (h!20940 rules!4290)))) (dynLambda!7050 order!9335 lambda!63615))))

(declare-fun order!9337 () Int)

(declare-fun dynLambda!7051 (Int Int) Int)

(assert (=> b!1475163 (< (dynLambda!7051 order!9337 (toChars!3957 (transformation!2767 (h!20940 rules!4290)))) (dynLambda!7050 order!9335 lambda!63615))))

(assert (=> d!432589 true))

(declare-fun lt!512776 () Bool)

(declare-fun forall!3785 (List!15604 Int) Bool)

(assert (=> d!432589 (= lt!512776 (forall!3785 l1!3136 lambda!63615))))

(declare-fun e!942435 () Bool)

(assert (=> d!432589 (= lt!512776 e!942435)))

(declare-fun res!666794 () Bool)

(assert (=> d!432589 (=> res!666794 e!942435)))

(assert (=> d!432589 (= res!666794 (not ((_ is Cons!15538) l1!3136)))))

(assert (=> d!432589 (not (isEmpty!9706 rules!4290))))

(assert (=> d!432589 (= (rulesProduceEachTokenIndividuallyList!790 thiss!27374 rules!4290 l1!3136) lt!512776)))

(declare-fun b!1475151 () Bool)

(declare-fun e!942434 () Bool)

(assert (=> b!1475151 (= e!942435 e!942434)))

(declare-fun res!666793 () Bool)

(assert (=> b!1475151 (=> (not res!666793) (not e!942434))))

(assert (=> b!1475151 (= res!666793 (rulesProduceIndividualToken!1282 thiss!27374 rules!4290 (h!20939 l1!3136)))))

(declare-fun b!1475152 () Bool)

(assert (=> b!1475152 (= e!942434 (rulesProduceEachTokenIndividuallyList!790 thiss!27374 rules!4290 (t!136395 l1!3136)))))

(assert (= (and d!432589 (not res!666794)) b!1475151))

(assert (= (and b!1475151 res!666793) b!1475152))

(declare-fun m!1720277 () Bool)

(assert (=> d!432589 m!1720277))

(assert (=> d!432589 m!1720191))

(declare-fun m!1720279 () Bool)

(assert (=> b!1475151 m!1720279))

(declare-fun m!1720281 () Bool)

(assert (=> b!1475152 m!1720281))

(assert (=> b!1475115 d!432589))

(declare-fun d!432597 () Bool)

(declare-fun res!666799 () Bool)

(declare-fun e!942447 () Bool)

(assert (=> d!432597 (=> (not res!666799) (not e!942447))))

(declare-fun isEmpty!9709 (List!15603) Bool)

(assert (=> d!432597 (= res!666799 (not (isEmpty!9709 (originalCharacters!3629 (h!20939 l1!3136)))))))

(assert (=> d!432597 (= (inv!20746 (h!20939 l1!3136)) e!942447)))

(declare-fun b!1475170 () Bool)

(declare-fun res!666800 () Bool)

(assert (=> b!1475170 (=> (not res!666800) (not e!942447))))

(declare-fun list!6188 (BalanceConc!10530) List!15603)

(declare-fun dynLambda!7052 (Int TokenValue!2857) BalanceConc!10530)

(assert (=> b!1475170 (= res!666800 (= (originalCharacters!3629 (h!20939 l1!3136)) (list!6188 (dynLambda!7052 (toChars!3957 (transformation!2767 (rule!4544 (h!20939 l1!3136)))) (value!88507 (h!20939 l1!3136))))))))

(declare-fun b!1475171 () Bool)

(declare-fun size!12596 (List!15603) Int)

(assert (=> b!1475171 (= e!942447 (= (size!12591 (h!20939 l1!3136)) (size!12596 (originalCharacters!3629 (h!20939 l1!3136)))))))

(assert (= (and d!432597 res!666799) b!1475170))

(assert (= (and b!1475170 res!666800) b!1475171))

(declare-fun b_lambda!46123 () Bool)

(assert (=> (not b_lambda!46123) (not b!1475170)))

(declare-fun tb!83909 () Bool)

(declare-fun t!136402 () Bool)

(assert (=> (and b!1475102 (= (toChars!3957 (transformation!2767 (h!20940 rules!4290))) (toChars!3957 (transformation!2767 (rule!4544 (h!20939 l1!3136))))) t!136402) tb!83909))

(declare-fun b!1475176 () Bool)

(declare-fun e!942450 () Bool)

(declare-fun tp!417237 () Bool)

(declare-fun inv!20749 (Conc!5295) Bool)

(assert (=> b!1475176 (= e!942450 (and (inv!20749 (c!242517 (dynLambda!7052 (toChars!3957 (transformation!2767 (rule!4544 (h!20939 l1!3136)))) (value!88507 (h!20939 l1!3136))))) tp!417237))))

(declare-fun result!100838 () Bool)

(declare-fun inv!20750 (BalanceConc!10530) Bool)

(assert (=> tb!83909 (= result!100838 (and (inv!20750 (dynLambda!7052 (toChars!3957 (transformation!2767 (rule!4544 (h!20939 l1!3136)))) (value!88507 (h!20939 l1!3136)))) e!942450))))

(assert (= tb!83909 b!1475176))

(declare-fun m!1720283 () Bool)

(assert (=> b!1475176 m!1720283))

(declare-fun m!1720285 () Bool)

(assert (=> tb!83909 m!1720285))

(assert (=> b!1475170 t!136402))

(declare-fun b_and!101729 () Bool)

(assert (= b_and!101719 (and (=> t!136402 result!100838) b_and!101729)))

(declare-fun t!136404 () Bool)

(declare-fun tb!83911 () Bool)

(assert (=> (and b!1475116 (= (toChars!3957 (transformation!2767 (rule!4544 (h!20939 l2!3105)))) (toChars!3957 (transformation!2767 (rule!4544 (h!20939 l1!3136))))) t!136404) tb!83911))

(declare-fun result!100842 () Bool)

(assert (= result!100842 result!100838))

(assert (=> b!1475170 t!136404))

(declare-fun b_and!101731 () Bool)

(assert (= b_and!101723 (and (=> t!136404 result!100842) b_and!101731)))

(declare-fun t!136406 () Bool)

(declare-fun tb!83913 () Bool)

(assert (=> (and b!1475120 (= (toChars!3957 (transformation!2767 (rule!4544 (h!20939 l1!3136)))) (toChars!3957 (transformation!2767 (rule!4544 (h!20939 l1!3136))))) t!136406) tb!83913))

(declare-fun result!100844 () Bool)

(assert (= result!100844 result!100838))

(assert (=> b!1475170 t!136406))

(declare-fun b_and!101733 () Bool)

(assert (= b_and!101727 (and (=> t!136406 result!100844) b_and!101733)))

(declare-fun m!1720287 () Bool)

(assert (=> d!432597 m!1720287))

(declare-fun m!1720289 () Bool)

(assert (=> b!1475170 m!1720289))

(assert (=> b!1475170 m!1720289))

(declare-fun m!1720291 () Bool)

(assert (=> b!1475170 m!1720291))

(declare-fun m!1720293 () Bool)

(assert (=> b!1475171 m!1720293))

(assert (=> b!1475104 d!432597))

(declare-fun d!432599 () Bool)

(assert (=> d!432599 (= (isEmpty!9705 l2!3105) ((_ is Nil!15538) l2!3105))))

(assert (=> b!1475114 d!432599))

(declare-fun d!432601 () Bool)

(assert (=> d!432601 (= (inv!20742 (tag!3031 (rule!4544 (h!20939 l1!3136)))) (= (mod (str.len (value!88506 (tag!3031 (rule!4544 (h!20939 l1!3136))))) 2) 0))))

(assert (=> b!1475103 d!432601))

(declare-fun d!432603 () Bool)

(declare-fun res!666803 () Bool)

(declare-fun e!942453 () Bool)

(assert (=> d!432603 (=> (not res!666803) (not e!942453))))

(declare-fun semiInverseModEq!1035 (Int Int) Bool)

(assert (=> d!432603 (= res!666803 (semiInverseModEq!1035 (toChars!3957 (transformation!2767 (rule!4544 (h!20939 l1!3136)))) (toValue!4098 (transformation!2767 (rule!4544 (h!20939 l1!3136))))))))

(assert (=> d!432603 (= (inv!20745 (transformation!2767 (rule!4544 (h!20939 l1!3136)))) e!942453)))

(declare-fun b!1475179 () Bool)

(declare-fun equivClasses!994 (Int Int) Bool)

(assert (=> b!1475179 (= e!942453 (equivClasses!994 (toChars!3957 (transformation!2767 (rule!4544 (h!20939 l1!3136)))) (toValue!4098 (transformation!2767 (rule!4544 (h!20939 l1!3136))))))))

(assert (= (and d!432603 res!666803) b!1475179))

(declare-fun m!1720295 () Bool)

(assert (=> d!432603 m!1720295))

(declare-fun m!1720297 () Bool)

(assert (=> b!1475179 m!1720297))

(assert (=> b!1475103 d!432603))

(declare-fun b!1475190 () Bool)

(declare-fun e!942462 () Bool)

(declare-fun inv!15 (TokenValue!2857) Bool)

(assert (=> b!1475190 (= e!942462 (inv!15 (value!88507 (h!20939 l1!3136))))))

(declare-fun b!1475191 () Bool)

(declare-fun e!942460 () Bool)

(declare-fun inv!16 (TokenValue!2857) Bool)

(assert (=> b!1475191 (= e!942460 (inv!16 (value!88507 (h!20939 l1!3136))))))

(declare-fun b!1475192 () Bool)

(declare-fun e!942461 () Bool)

(declare-fun inv!17 (TokenValue!2857) Bool)

(assert (=> b!1475192 (= e!942461 (inv!17 (value!88507 (h!20939 l1!3136))))))

(declare-fun d!432605 () Bool)

(declare-fun c!242524 () Bool)

(assert (=> d!432605 (= c!242524 ((_ is IntegerValue!8571) (value!88507 (h!20939 l1!3136))))))

(assert (=> d!432605 (= (inv!21 (value!88507 (h!20939 l1!3136))) e!942460)))

(declare-fun b!1475193 () Bool)

(declare-fun res!666806 () Bool)

(assert (=> b!1475193 (=> res!666806 e!942462)))

(assert (=> b!1475193 (= res!666806 (not ((_ is IntegerValue!8573) (value!88507 (h!20939 l1!3136)))))))

(assert (=> b!1475193 (= e!942461 e!942462)))

(declare-fun b!1475194 () Bool)

(assert (=> b!1475194 (= e!942460 e!942461)))

(declare-fun c!242523 () Bool)

(assert (=> b!1475194 (= c!242523 ((_ is IntegerValue!8572) (value!88507 (h!20939 l1!3136))))))

(assert (= (and d!432605 c!242524) b!1475191))

(assert (= (and d!432605 (not c!242524)) b!1475194))

(assert (= (and b!1475194 c!242523) b!1475192))

(assert (= (and b!1475194 (not c!242523)) b!1475193))

(assert (= (and b!1475193 (not res!666806)) b!1475190))

(declare-fun m!1720299 () Bool)

(assert (=> b!1475190 m!1720299))

(declare-fun m!1720301 () Bool)

(assert (=> b!1475191 m!1720301))

(declare-fun m!1720303 () Bool)

(assert (=> b!1475192 m!1720303))

(assert (=> b!1475108 d!432605))

(assert (=> b!1475097 d!432587))

(declare-fun d!432607 () Bool)

(assert (=> d!432607 (= (isEmpty!9706 rules!4290) ((_ is Nil!15539) rules!4290))))

(assert (=> b!1475118 d!432607))

(declare-fun bs!345510 () Bool)

(declare-fun d!432609 () Bool)

(assert (= bs!345510 (and d!432609 d!432589)))

(declare-fun lambda!63616 () Int)

(assert (=> bs!345510 (= lambda!63616 lambda!63615)))

(declare-fun b!1475199 () Bool)

(declare-fun e!942467 () Bool)

(assert (=> b!1475199 (= e!942467 true)))

(declare-fun b!1475198 () Bool)

(declare-fun e!942466 () Bool)

(assert (=> b!1475198 (= e!942466 e!942467)))

(declare-fun b!1475197 () Bool)

(declare-fun e!942465 () Bool)

(assert (=> b!1475197 (= e!942465 e!942466)))

(assert (=> d!432609 e!942465))

(assert (= b!1475198 b!1475199))

(assert (= b!1475197 b!1475198))

(assert (= (and d!432609 ((_ is Cons!15539) rules!4290)) b!1475197))

(assert (=> b!1475199 (< (dynLambda!7049 order!9333 (toValue!4098 (transformation!2767 (h!20940 rules!4290)))) (dynLambda!7050 order!9335 lambda!63616))))

(assert (=> b!1475199 (< (dynLambda!7051 order!9337 (toChars!3957 (transformation!2767 (h!20940 rules!4290)))) (dynLambda!7050 order!9335 lambda!63616))))

(assert (=> d!432609 true))

(declare-fun lt!512777 () Bool)

(assert (=> d!432609 (= lt!512777 (forall!3785 l2!3105 lambda!63616))))

(declare-fun e!942464 () Bool)

(assert (=> d!432609 (= lt!512777 e!942464)))

(declare-fun res!666808 () Bool)

(assert (=> d!432609 (=> res!666808 e!942464)))

(assert (=> d!432609 (= res!666808 (not ((_ is Cons!15538) l2!3105)))))

(assert (=> d!432609 (not (isEmpty!9706 rules!4290))))

(assert (=> d!432609 (= (rulesProduceEachTokenIndividuallyList!790 thiss!27374 rules!4290 l2!3105) lt!512777)))

(declare-fun b!1475195 () Bool)

(declare-fun e!942463 () Bool)

(assert (=> b!1475195 (= e!942464 e!942463)))

(declare-fun res!666807 () Bool)

(assert (=> b!1475195 (=> (not res!666807) (not e!942463))))

(assert (=> b!1475195 (= res!666807 (rulesProduceIndividualToken!1282 thiss!27374 rules!4290 (h!20939 l2!3105)))))

(declare-fun b!1475196 () Bool)

(assert (=> b!1475196 (= e!942463 (rulesProduceEachTokenIndividuallyList!790 thiss!27374 rules!4290 (t!136395 l2!3105)))))

(assert (= (and d!432609 (not res!666808)) b!1475195))

(assert (= (and b!1475195 res!666807) b!1475196))

(declare-fun m!1720305 () Bool)

(assert (=> d!432609 m!1720305))

(assert (=> d!432609 m!1720191))

(declare-fun m!1720307 () Bool)

(assert (=> b!1475195 m!1720307))

(declare-fun m!1720309 () Bool)

(assert (=> b!1475196 m!1720309))

(assert (=> b!1475107 d!432609))

(declare-fun d!432611 () Bool)

(declare-fun prefixMatchZipperSequence!368 (Regex!4081 BalanceConc!10530) Bool)

(declare-fun rulesRegex!420 (LexerInterface!2423 List!15605) Regex!4081)

(declare-fun ++!4199 (BalanceConc!10530 BalanceConc!10530) BalanceConc!10530)

(declare-fun charsOf!1584 (Token!5196) BalanceConc!10530)

(declare-fun singletonSeq!1304 (C!8340) BalanceConc!10530)

(declare-fun apply!4011 (BalanceConc!10530 Int) C!8340)

(assert (=> d!432611 (= (separableTokensPredicate!566 thiss!27374 lt!512747 lt!512749 rules!4290) (not (prefixMatchZipperSequence!368 (rulesRegex!420 thiss!27374 rules!4290) (++!4199 (charsOf!1584 lt!512747) (singletonSeq!1304 (apply!4011 (charsOf!1584 lt!512749) 0))))))))

(declare-fun bs!345511 () Bool)

(assert (= bs!345511 d!432611))

(declare-fun m!1720351 () Bool)

(assert (=> bs!345511 m!1720351))

(declare-fun m!1720353 () Bool)

(assert (=> bs!345511 m!1720353))

(declare-fun m!1720355 () Bool)

(assert (=> bs!345511 m!1720355))

(declare-fun m!1720357 () Bool)

(assert (=> bs!345511 m!1720357))

(declare-fun m!1720359 () Bool)

(assert (=> bs!345511 m!1720359))

(assert (=> bs!345511 m!1720353))

(assert (=> bs!345511 m!1720357))

(declare-fun m!1720361 () Bool)

(assert (=> bs!345511 m!1720361))

(assert (=> bs!345511 m!1720359))

(declare-fun m!1720363 () Bool)

(assert (=> bs!345511 m!1720363))

(assert (=> bs!345511 m!1720363))

(assert (=> bs!345511 m!1720361))

(assert (=> bs!345511 m!1720351))

(assert (=> b!1475117 d!432611))

(declare-fun d!432621 () Bool)

(declare-fun lt!512802 () Bool)

(declare-fun e!942495 () Bool)

(assert (=> d!432621 (= lt!512802 e!942495)))

(declare-fun res!666837 () Bool)

(assert (=> d!432621 (=> (not res!666837) (not e!942495))))

(declare-fun list!6189 (BalanceConc!10532) List!15604)

(declare-datatypes ((tuple2!14300 0))(
  ( (tuple2!14301 (_1!8036 BalanceConc!10532) (_2!8036 BalanceConc!10530)) )
))
(declare-fun lex!1091 (LexerInterface!2423 List!15605 BalanceConc!10530) tuple2!14300)

(declare-fun print!1126 (LexerInterface!2423 BalanceConc!10532) BalanceConc!10530)

(declare-fun singletonSeq!1305 (Token!5196) BalanceConc!10532)

(assert (=> d!432621 (= res!666837 (= (list!6189 (_1!8036 (lex!1091 thiss!27374 rules!4290 (print!1126 thiss!27374 (singletonSeq!1305 lt!512749))))) (list!6189 (singletonSeq!1305 lt!512749))))))

(declare-fun e!942494 () Bool)

(assert (=> d!432621 (= lt!512802 e!942494)))

(declare-fun res!666835 () Bool)

(assert (=> d!432621 (=> (not res!666835) (not e!942494))))

(declare-fun lt!512801 () tuple2!14300)

(declare-fun size!12597 (BalanceConc!10532) Int)

(assert (=> d!432621 (= res!666835 (= (size!12597 (_1!8036 lt!512801)) 1))))

(assert (=> d!432621 (= lt!512801 (lex!1091 thiss!27374 rules!4290 (print!1126 thiss!27374 (singletonSeq!1305 lt!512749))))))

(assert (=> d!432621 (not (isEmpty!9706 rules!4290))))

(assert (=> d!432621 (= (rulesProduceIndividualToken!1282 thiss!27374 rules!4290 lt!512749) lt!512802)))

(declare-fun b!1475241 () Bool)

(declare-fun res!666836 () Bool)

(assert (=> b!1475241 (=> (not res!666836) (not e!942494))))

(declare-fun apply!4012 (BalanceConc!10532 Int) Token!5196)

(assert (=> b!1475241 (= res!666836 (= (apply!4012 (_1!8036 lt!512801) 0) lt!512749))))

(declare-fun b!1475242 () Bool)

(declare-fun isEmpty!9710 (BalanceConc!10530) Bool)

(assert (=> b!1475242 (= e!942494 (isEmpty!9710 (_2!8036 lt!512801)))))

(declare-fun b!1475243 () Bool)

(assert (=> b!1475243 (= e!942495 (isEmpty!9710 (_2!8036 (lex!1091 thiss!27374 rules!4290 (print!1126 thiss!27374 (singletonSeq!1305 lt!512749))))))))

(assert (= (and d!432621 res!666835) b!1475241))

(assert (= (and b!1475241 res!666836) b!1475242))

(assert (= (and d!432621 res!666837) b!1475243))

(declare-fun m!1720389 () Bool)

(assert (=> d!432621 m!1720389))

(declare-fun m!1720391 () Bool)

(assert (=> d!432621 m!1720391))

(declare-fun m!1720393 () Bool)

(assert (=> d!432621 m!1720393))

(declare-fun m!1720395 () Bool)

(assert (=> d!432621 m!1720395))

(assert (=> d!432621 m!1720393))

(assert (=> d!432621 m!1720389))

(assert (=> d!432621 m!1720191))

(assert (=> d!432621 m!1720393))

(declare-fun m!1720397 () Bool)

(assert (=> d!432621 m!1720397))

(declare-fun m!1720399 () Bool)

(assert (=> d!432621 m!1720399))

(declare-fun m!1720401 () Bool)

(assert (=> b!1475241 m!1720401))

(declare-fun m!1720403 () Bool)

(assert (=> b!1475242 m!1720403))

(assert (=> b!1475243 m!1720393))

(assert (=> b!1475243 m!1720393))

(assert (=> b!1475243 m!1720389))

(assert (=> b!1475243 m!1720389))

(assert (=> b!1475243 m!1720391))

(declare-fun m!1720405 () Bool)

(assert (=> b!1475243 m!1720405))

(assert (=> b!1475117 d!432621))

(declare-fun d!432631 () Bool)

(assert (=> d!432631 (= (head!3061 l2!3105) (h!20939 l2!3105))))

(assert (=> b!1475117 d!432631))

(declare-fun d!432633 () Bool)

(declare-fun lt!512805 () Token!5196)

(declare-fun contains!2932 (List!15604 Token!5196) Bool)

(assert (=> d!432633 (contains!2932 l1!3136 lt!512805)))

(declare-fun e!942498 () Token!5196)

(assert (=> d!432633 (= lt!512805 e!942498)))

(declare-fun c!242533 () Bool)

(assert (=> d!432633 (= c!242533 (and ((_ is Cons!15538) l1!3136) ((_ is Nil!15538) (t!136395 l1!3136))))))

(assert (=> d!432633 (not (isEmpty!9705 l1!3136))))

(assert (=> d!432633 (= (last!325 l1!3136) lt!512805)))

(declare-fun b!1475248 () Bool)

(assert (=> b!1475248 (= e!942498 (h!20939 l1!3136))))

(declare-fun b!1475249 () Bool)

(assert (=> b!1475249 (= e!942498 (last!325 (t!136395 l1!3136)))))

(assert (= (and d!432633 c!242533) b!1475248))

(assert (= (and d!432633 (not c!242533)) b!1475249))

(declare-fun m!1720407 () Bool)

(assert (=> d!432633 m!1720407))

(assert (=> d!432633 m!1720239))

(declare-fun m!1720409 () Bool)

(assert (=> b!1475249 m!1720409))

(assert (=> b!1475117 d!432633))

(declare-fun d!432635 () Bool)

(assert (=> d!432635 (rulesProduceIndividualToken!1282 thiss!27374 rules!4290 lt!512749)))

(declare-fun lt!512811 () Unit!25281)

(declare-fun choose!9042 (LexerInterface!2423 List!15605 List!15604 Token!5196) Unit!25281)

(assert (=> d!432635 (= lt!512811 (choose!9042 thiss!27374 rules!4290 l2!3105 lt!512749))))

(assert (=> d!432635 (not (isEmpty!9706 rules!4290))))

(assert (=> d!432635 (= (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!463 thiss!27374 rules!4290 l2!3105 lt!512749) lt!512811)))

(declare-fun bs!345517 () Bool)

(assert (= bs!345517 d!432635))

(assert (=> bs!345517 m!1720213))

(declare-fun m!1720419 () Bool)

(assert (=> bs!345517 m!1720419))

(assert (=> bs!345517 m!1720191))

(assert (=> b!1475117 d!432635))

(declare-fun d!432639 () Bool)

(declare-fun lt!512813 () Bool)

(declare-fun e!942506 () Bool)

(assert (=> d!432639 (= lt!512813 e!942506)))

(declare-fun res!666843 () Bool)

(assert (=> d!432639 (=> (not res!666843) (not e!942506))))

(assert (=> d!432639 (= res!666843 (= (list!6189 (_1!8036 (lex!1091 thiss!27374 rules!4290 (print!1126 thiss!27374 (singletonSeq!1305 lt!512747))))) (list!6189 (singletonSeq!1305 lt!512747))))))

(declare-fun e!942505 () Bool)

(assert (=> d!432639 (= lt!512813 e!942505)))

(declare-fun res!666841 () Bool)

(assert (=> d!432639 (=> (not res!666841) (not e!942505))))

(declare-fun lt!512812 () tuple2!14300)

(assert (=> d!432639 (= res!666841 (= (size!12597 (_1!8036 lt!512812)) 1))))

(assert (=> d!432639 (= lt!512812 (lex!1091 thiss!27374 rules!4290 (print!1126 thiss!27374 (singletonSeq!1305 lt!512747))))))

(assert (=> d!432639 (not (isEmpty!9706 rules!4290))))

(assert (=> d!432639 (= (rulesProduceIndividualToken!1282 thiss!27374 rules!4290 lt!512747) lt!512813)))

(declare-fun b!1475256 () Bool)

(declare-fun res!666842 () Bool)

(assert (=> b!1475256 (=> (not res!666842) (not e!942505))))

(assert (=> b!1475256 (= res!666842 (= (apply!4012 (_1!8036 lt!512812) 0) lt!512747))))

(declare-fun b!1475257 () Bool)

(assert (=> b!1475257 (= e!942505 (isEmpty!9710 (_2!8036 lt!512812)))))

(declare-fun b!1475258 () Bool)

(assert (=> b!1475258 (= e!942506 (isEmpty!9710 (_2!8036 (lex!1091 thiss!27374 rules!4290 (print!1126 thiss!27374 (singletonSeq!1305 lt!512747))))))))

(assert (= (and d!432639 res!666841) b!1475256))

(assert (= (and b!1475256 res!666842) b!1475257))

(assert (= (and d!432639 res!666843) b!1475258))

(declare-fun m!1720421 () Bool)

(assert (=> d!432639 m!1720421))

(declare-fun m!1720423 () Bool)

(assert (=> d!432639 m!1720423))

(declare-fun m!1720425 () Bool)

(assert (=> d!432639 m!1720425))

(declare-fun m!1720427 () Bool)

(assert (=> d!432639 m!1720427))

(assert (=> d!432639 m!1720425))

(assert (=> d!432639 m!1720421))

(assert (=> d!432639 m!1720191))

(assert (=> d!432639 m!1720425))

(declare-fun m!1720429 () Bool)

(assert (=> d!432639 m!1720429))

(declare-fun m!1720431 () Bool)

(assert (=> d!432639 m!1720431))

(declare-fun m!1720433 () Bool)

(assert (=> b!1475256 m!1720433))

(declare-fun m!1720435 () Bool)

(assert (=> b!1475257 m!1720435))

(assert (=> b!1475258 m!1720425))

(assert (=> b!1475258 m!1720425))

(assert (=> b!1475258 m!1720421))

(assert (=> b!1475258 m!1720421))

(assert (=> b!1475258 m!1720423))

(declare-fun m!1720437 () Bool)

(assert (=> b!1475258 m!1720437))

(assert (=> b!1475117 d!432639))

(declare-fun d!432641 () Bool)

(assert (=> d!432641 (rulesProduceIndividualToken!1282 thiss!27374 rules!4290 lt!512747)))

(declare-fun lt!512814 () Unit!25281)

(assert (=> d!432641 (= lt!512814 (choose!9042 thiss!27374 rules!4290 l1!3136 lt!512747))))

(assert (=> d!432641 (not (isEmpty!9706 rules!4290))))

(assert (=> d!432641 (= (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!463 thiss!27374 rules!4290 l1!3136 lt!512747) lt!512814)))

(declare-fun bs!345518 () Bool)

(assert (= bs!345518 d!432641))

(assert (=> bs!345518 m!1720207))

(declare-fun m!1720439 () Bool)

(assert (=> bs!345518 m!1720439))

(assert (=> bs!345518 m!1720191))

(assert (=> b!1475117 d!432641))

(declare-fun d!432643 () Bool)

(assert (=> d!432643 (= (isEmpty!9705 l1!3136) ((_ is Nil!15538) l1!3136))))

(assert (=> b!1475100 d!432643))

(declare-fun d!432645 () Bool)

(declare-fun res!666864 () Bool)

(declare-fun e!942537 () Bool)

(assert (=> d!432645 (=> res!666864 e!942537)))

(assert (=> d!432645 (= res!666864 (or (not ((_ is Cons!15538) l2!3105)) (not ((_ is Cons!15538) (t!136395 l2!3105)))))))

(assert (=> d!432645 (= (tokensListTwoByTwoPredicateSeparableList!283 thiss!27374 l2!3105 rules!4290) e!942537)))

(declare-fun b!1475302 () Bool)

(declare-fun e!942538 () Bool)

(assert (=> b!1475302 (= e!942537 e!942538)))

(declare-fun res!666863 () Bool)

(assert (=> b!1475302 (=> (not res!666863) (not e!942538))))

(assert (=> b!1475302 (= res!666863 (separableTokensPredicate!566 thiss!27374 (h!20939 l2!3105) (h!20939 (t!136395 l2!3105)) rules!4290))))

(declare-fun lt!512836 () Unit!25281)

(declare-fun Unit!25289 () Unit!25281)

(assert (=> b!1475302 (= lt!512836 Unit!25289)))

(declare-fun size!12598 (BalanceConc!10530) Int)

(assert (=> b!1475302 (> (size!12598 (charsOf!1584 (h!20939 (t!136395 l2!3105)))) 0)))

(declare-fun lt!512837 () Unit!25281)

(declare-fun Unit!25290 () Unit!25281)

(assert (=> b!1475302 (= lt!512837 Unit!25290)))

(assert (=> b!1475302 (rulesProduceIndividualToken!1282 thiss!27374 rules!4290 (h!20939 (t!136395 l2!3105)))))

(declare-fun lt!512834 () Unit!25281)

(declare-fun Unit!25291 () Unit!25281)

(assert (=> b!1475302 (= lt!512834 Unit!25291)))

(assert (=> b!1475302 (rulesProduceIndividualToken!1282 thiss!27374 rules!4290 (h!20939 l2!3105))))

(declare-fun lt!512839 () Unit!25281)

(declare-fun lt!512833 () Unit!25281)

(assert (=> b!1475302 (= lt!512839 lt!512833)))

(assert (=> b!1475302 (rulesProduceIndividualToken!1282 thiss!27374 rules!4290 (h!20939 (t!136395 l2!3105)))))

(assert (=> b!1475302 (= lt!512833 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!463 thiss!27374 rules!4290 l2!3105 (h!20939 (t!136395 l2!3105))))))

(declare-fun lt!512835 () Unit!25281)

(declare-fun lt!512838 () Unit!25281)

(assert (=> b!1475302 (= lt!512835 lt!512838)))

(assert (=> b!1475302 (rulesProduceIndividualToken!1282 thiss!27374 rules!4290 (h!20939 l2!3105))))

(assert (=> b!1475302 (= lt!512838 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!463 thiss!27374 rules!4290 l2!3105 (h!20939 l2!3105)))))

(declare-fun b!1475303 () Bool)

(assert (=> b!1475303 (= e!942538 (tokensListTwoByTwoPredicateSeparableList!283 thiss!27374 (Cons!15538 (h!20939 (t!136395 l2!3105)) (t!136395 (t!136395 l2!3105))) rules!4290))))

(assert (= (and d!432645 (not res!666864)) b!1475302))

(assert (= (and b!1475302 res!666863) b!1475303))

(declare-fun m!1720479 () Bool)

(assert (=> b!1475302 m!1720479))

(declare-fun m!1720481 () Bool)

(assert (=> b!1475302 m!1720481))

(declare-fun m!1720483 () Bool)

(assert (=> b!1475302 m!1720483))

(declare-fun m!1720485 () Bool)

(assert (=> b!1475302 m!1720485))

(assert (=> b!1475302 m!1720479))

(declare-fun m!1720487 () Bool)

(assert (=> b!1475302 m!1720487))

(assert (=> b!1475302 m!1720307))

(declare-fun m!1720489 () Bool)

(assert (=> b!1475302 m!1720489))

(declare-fun m!1720495 () Bool)

(assert (=> b!1475303 m!1720495))

(assert (=> b!1475121 d!432645))

(declare-fun d!432669 () Bool)

(declare-fun res!666869 () Bool)

(declare-fun e!942541 () Bool)

(assert (=> d!432669 (=> res!666869 e!942541)))

(assert (=> d!432669 (= res!666869 (or (not ((_ is Cons!15538) l1!3136)) (not ((_ is Cons!15538) (t!136395 l1!3136)))))))

(assert (=> d!432669 (= (tokensListTwoByTwoPredicateSeparableList!283 thiss!27374 l1!3136 rules!4290) e!942541)))

(declare-fun b!1475307 () Bool)

(declare-fun e!942542 () Bool)

(assert (=> b!1475307 (= e!942541 e!942542)))

(declare-fun res!666868 () Bool)

(assert (=> b!1475307 (=> (not res!666868) (not e!942542))))

(assert (=> b!1475307 (= res!666868 (separableTokensPredicate!566 thiss!27374 (h!20939 l1!3136) (h!20939 (t!136395 l1!3136)) rules!4290))))

(declare-fun lt!512843 () Unit!25281)

(declare-fun Unit!25292 () Unit!25281)

(assert (=> b!1475307 (= lt!512843 Unit!25292)))

(assert (=> b!1475307 (> (size!12598 (charsOf!1584 (h!20939 (t!136395 l1!3136)))) 0)))

(declare-fun lt!512844 () Unit!25281)

(declare-fun Unit!25293 () Unit!25281)

(assert (=> b!1475307 (= lt!512844 Unit!25293)))

(assert (=> b!1475307 (rulesProduceIndividualToken!1282 thiss!27374 rules!4290 (h!20939 (t!136395 l1!3136)))))

(declare-fun lt!512841 () Unit!25281)

(declare-fun Unit!25294 () Unit!25281)

(assert (=> b!1475307 (= lt!512841 Unit!25294)))

(assert (=> b!1475307 (rulesProduceIndividualToken!1282 thiss!27374 rules!4290 (h!20939 l1!3136))))

(declare-fun lt!512846 () Unit!25281)

(declare-fun lt!512840 () Unit!25281)

(assert (=> b!1475307 (= lt!512846 lt!512840)))

(assert (=> b!1475307 (rulesProduceIndividualToken!1282 thiss!27374 rules!4290 (h!20939 (t!136395 l1!3136)))))

(assert (=> b!1475307 (= lt!512840 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!463 thiss!27374 rules!4290 l1!3136 (h!20939 (t!136395 l1!3136))))))

(declare-fun lt!512842 () Unit!25281)

(declare-fun lt!512845 () Unit!25281)

(assert (=> b!1475307 (= lt!512842 lt!512845)))

(assert (=> b!1475307 (rulesProduceIndividualToken!1282 thiss!27374 rules!4290 (h!20939 l1!3136))))

(assert (=> b!1475307 (= lt!512845 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!463 thiss!27374 rules!4290 l1!3136 (h!20939 l1!3136)))))

(declare-fun b!1475308 () Bool)

(assert (=> b!1475308 (= e!942542 (tokensListTwoByTwoPredicateSeparableList!283 thiss!27374 (Cons!15538 (h!20939 (t!136395 l1!3136)) (t!136395 (t!136395 l1!3136))) rules!4290))))

(assert (= (and d!432669 (not res!666869)) b!1475307))

(assert (= (and b!1475307 res!666868) b!1475308))

(declare-fun m!1720497 () Bool)

(assert (=> b!1475307 m!1720497))

(declare-fun m!1720499 () Bool)

(assert (=> b!1475307 m!1720499))

(declare-fun m!1720503 () Bool)

(assert (=> b!1475307 m!1720503))

(declare-fun m!1720507 () Bool)

(assert (=> b!1475307 m!1720507))

(assert (=> b!1475307 m!1720497))

(declare-fun m!1720509 () Bool)

(assert (=> b!1475307 m!1720509))

(assert (=> b!1475307 m!1720279))

(declare-fun m!1720511 () Bool)

(assert (=> b!1475307 m!1720511))

(declare-fun m!1720515 () Bool)

(assert (=> b!1475308 m!1720515))

(assert (=> b!1475110 d!432669))

(declare-fun d!432671 () Bool)

(assert (=> d!432671 (= (inv!20742 (tag!3031 (h!20940 rules!4290))) (= (mod (str.len (value!88506 (tag!3031 (h!20940 rules!4290)))) 2) 0))))

(assert (=> b!1475109 d!432671))

(declare-fun d!432673 () Bool)

(declare-fun res!666870 () Bool)

(declare-fun e!942544 () Bool)

(assert (=> d!432673 (=> (not res!666870) (not e!942544))))

(assert (=> d!432673 (= res!666870 (semiInverseModEq!1035 (toChars!3957 (transformation!2767 (h!20940 rules!4290))) (toValue!4098 (transformation!2767 (h!20940 rules!4290)))))))

(assert (=> d!432673 (= (inv!20745 (transformation!2767 (h!20940 rules!4290))) e!942544)))

(declare-fun b!1475310 () Bool)

(assert (=> b!1475310 (= e!942544 (equivClasses!994 (toChars!3957 (transformation!2767 (h!20940 rules!4290))) (toValue!4098 (transformation!2767 (h!20940 rules!4290)))))))

(assert (= (and d!432673 res!666870) b!1475310))

(declare-fun m!1720523 () Bool)

(assert (=> d!432673 m!1720523))

(declare-fun m!1720525 () Bool)

(assert (=> b!1475310 m!1720525))

(assert (=> b!1475109 d!432673))

(declare-fun d!432681 () Bool)

(declare-fun res!666876 () Bool)

(declare-fun e!942550 () Bool)

(assert (=> d!432681 (=> (not res!666876) (not e!942550))))

(declare-fun rulesValid!1008 (LexerInterface!2423 List!15605) Bool)

(assert (=> d!432681 (= res!666876 (rulesValid!1008 thiss!27374 rules!4290))))

(assert (=> d!432681 (= (rulesInvariant!2212 thiss!27374 rules!4290) e!942550)))

(declare-fun b!1475316 () Bool)

(declare-datatypes ((List!15607 0))(
  ( (Nil!15541) (Cons!15541 (h!20942 String!18541) (t!136462 List!15607)) )
))
(declare-fun noDuplicateTag!1008 (LexerInterface!2423 List!15605 List!15607) Bool)

(assert (=> b!1475316 (= e!942550 (noDuplicateTag!1008 thiss!27374 rules!4290 Nil!15541))))

(assert (= (and d!432681 res!666876) b!1475316))

(declare-fun m!1720531 () Bool)

(assert (=> d!432681 m!1720531))

(declare-fun m!1720533 () Bool)

(assert (=> b!1475316 m!1720533))

(assert (=> b!1475098 d!432681))

(declare-fun d!432685 () Bool)

(declare-fun res!666878 () Bool)

(declare-fun e!942552 () Bool)

(assert (=> d!432685 (=> (not res!666878) (not e!942552))))

(assert (=> d!432685 (= res!666878 (not (isEmpty!9709 (originalCharacters!3629 (h!20939 l2!3105)))))))

(assert (=> d!432685 (= (inv!20746 (h!20939 l2!3105)) e!942552)))

(declare-fun b!1475318 () Bool)

(declare-fun res!666879 () Bool)

(assert (=> b!1475318 (=> (not res!666879) (not e!942552))))

(assert (=> b!1475318 (= res!666879 (= (originalCharacters!3629 (h!20939 l2!3105)) (list!6188 (dynLambda!7052 (toChars!3957 (transformation!2767 (rule!4544 (h!20939 l2!3105)))) (value!88507 (h!20939 l2!3105))))))))

(declare-fun b!1475319 () Bool)

(assert (=> b!1475319 (= e!942552 (= (size!12591 (h!20939 l2!3105)) (size!12596 (originalCharacters!3629 (h!20939 l2!3105)))))))

(assert (= (and d!432685 res!666878) b!1475318))

(assert (= (and b!1475318 res!666879) b!1475319))

(declare-fun b_lambda!46129 () Bool)

(assert (=> (not b_lambda!46129) (not b!1475318)))

(declare-fun t!136428 () Bool)

(declare-fun tb!83927 () Bool)

(assert (=> (and b!1475102 (= (toChars!3957 (transformation!2767 (h!20940 rules!4290))) (toChars!3957 (transformation!2767 (rule!4544 (h!20939 l2!3105))))) t!136428) tb!83927))

(declare-fun b!1475322 () Bool)

(declare-fun e!942555 () Bool)

(declare-fun tp!417242 () Bool)

(assert (=> b!1475322 (= e!942555 (and (inv!20749 (c!242517 (dynLambda!7052 (toChars!3957 (transformation!2767 (rule!4544 (h!20939 l2!3105)))) (value!88507 (h!20939 l2!3105))))) tp!417242))))

(declare-fun result!100860 () Bool)

(assert (=> tb!83927 (= result!100860 (and (inv!20750 (dynLambda!7052 (toChars!3957 (transformation!2767 (rule!4544 (h!20939 l2!3105)))) (value!88507 (h!20939 l2!3105)))) e!942555))))

(assert (= tb!83927 b!1475322))

(declare-fun m!1720539 () Bool)

(assert (=> b!1475322 m!1720539))

(declare-fun m!1720543 () Bool)

(assert (=> tb!83927 m!1720543))

(assert (=> b!1475318 t!136428))

(declare-fun b_and!101747 () Bool)

(assert (= b_and!101729 (and (=> t!136428 result!100860) b_and!101747)))

(declare-fun t!136430 () Bool)

(declare-fun tb!83929 () Bool)

(assert (=> (and b!1475116 (= (toChars!3957 (transformation!2767 (rule!4544 (h!20939 l2!3105)))) (toChars!3957 (transformation!2767 (rule!4544 (h!20939 l2!3105))))) t!136430) tb!83929))

(declare-fun result!100862 () Bool)

(assert (= result!100862 result!100860))

(assert (=> b!1475318 t!136430))

(declare-fun b_and!101749 () Bool)

(assert (= b_and!101731 (and (=> t!136430 result!100862) b_and!101749)))

(declare-fun tb!83931 () Bool)

(declare-fun t!136432 () Bool)

(assert (=> (and b!1475120 (= (toChars!3957 (transformation!2767 (rule!4544 (h!20939 l1!3136)))) (toChars!3957 (transformation!2767 (rule!4544 (h!20939 l2!3105))))) t!136432) tb!83931))

(declare-fun result!100864 () Bool)

(assert (= result!100864 result!100860))

(assert (=> b!1475318 t!136432))

(declare-fun b_and!101751 () Bool)

(assert (= b_and!101733 (and (=> t!136432 result!100864) b_and!101751)))

(declare-fun m!1720555 () Bool)

(assert (=> d!432685 m!1720555))

(declare-fun m!1720557 () Bool)

(assert (=> b!1475318 m!1720557))

(assert (=> b!1475318 m!1720557))

(declare-fun m!1720561 () Bool)

(assert (=> b!1475318 m!1720561))

(declare-fun m!1720563 () Bool)

(assert (=> b!1475319 m!1720563))

(assert (=> b!1475119 d!432685))

(declare-fun d!432689 () Bool)

(assert (=> d!432689 (= (inv!20742 (tag!3031 (rule!4544 (h!20939 l2!3105)))) (= (mod (str.len (value!88506 (tag!3031 (rule!4544 (h!20939 l2!3105))))) 2) 0))))

(assert (=> b!1475113 d!432689))

(declare-fun d!432691 () Bool)

(declare-fun res!666882 () Bool)

(declare-fun e!942558 () Bool)

(assert (=> d!432691 (=> (not res!666882) (not e!942558))))

(assert (=> d!432691 (= res!666882 (semiInverseModEq!1035 (toChars!3957 (transformation!2767 (rule!4544 (h!20939 l2!3105)))) (toValue!4098 (transformation!2767 (rule!4544 (h!20939 l2!3105))))))))

(assert (=> d!432691 (= (inv!20745 (transformation!2767 (rule!4544 (h!20939 l2!3105)))) e!942558)))

(declare-fun b!1475327 () Bool)

(assert (=> b!1475327 (= e!942558 (equivClasses!994 (toChars!3957 (transformation!2767 (rule!4544 (h!20939 l2!3105)))) (toValue!4098 (transformation!2767 (rule!4544 (h!20939 l2!3105))))))))

(assert (= (and d!432691 res!666882) b!1475327))

(declare-fun m!1720565 () Bool)

(assert (=> d!432691 m!1720565))

(declare-fun m!1720567 () Bool)

(assert (=> b!1475327 m!1720567))

(assert (=> b!1475113 d!432691))

(declare-fun e!942582 () Bool)

(declare-fun b!1475359 () Bool)

(declare-fun lt!512856 () List!15604)

(assert (=> b!1475359 (= e!942582 (or (not (= l2!3105 Nil!15538)) (= lt!512856 l1!3136)))))

(declare-fun d!432693 () Bool)

(assert (=> d!432693 e!942582))

(declare-fun res!666887 () Bool)

(assert (=> d!432693 (=> (not res!666887) (not e!942582))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!2269 (List!15604) (InoxSet Token!5196))

(assert (=> d!432693 (= res!666887 (= (content!2269 lt!512856) ((_ map or) (content!2269 l1!3136) (content!2269 l2!3105))))))

(declare-fun e!942581 () List!15604)

(assert (=> d!432693 (= lt!512856 e!942581)))

(declare-fun c!242544 () Bool)

(assert (=> d!432693 (= c!242544 ((_ is Nil!15538) l1!3136))))

(assert (=> d!432693 (= (++!4197 l1!3136 l2!3105) lt!512856)))

(declare-fun b!1475357 () Bool)

(assert (=> b!1475357 (= e!942581 (Cons!15538 (h!20939 l1!3136) (++!4197 (t!136395 l1!3136) l2!3105)))))

(declare-fun b!1475356 () Bool)

(assert (=> b!1475356 (= e!942581 l2!3105)))

(declare-fun b!1475358 () Bool)

(declare-fun res!666888 () Bool)

(assert (=> b!1475358 (=> (not res!666888) (not e!942582))))

(declare-fun size!12599 (List!15604) Int)

(assert (=> b!1475358 (= res!666888 (= (size!12599 lt!512856) (+ (size!12599 l1!3136) (size!12599 l2!3105))))))

(assert (= (and d!432693 c!242544) b!1475356))

(assert (= (and d!432693 (not c!242544)) b!1475357))

(assert (= (and d!432693 res!666887) b!1475358))

(assert (= (and b!1475358 res!666888) b!1475359))

(declare-fun m!1720577 () Bool)

(assert (=> d!432693 m!1720577))

(declare-fun m!1720579 () Bool)

(assert (=> d!432693 m!1720579))

(declare-fun m!1720581 () Bool)

(assert (=> d!432693 m!1720581))

(declare-fun m!1720583 () Bool)

(assert (=> b!1475357 m!1720583))

(declare-fun m!1720585 () Bool)

(assert (=> b!1475358 m!1720585))

(declare-fun m!1720587 () Bool)

(assert (=> b!1475358 m!1720587))

(declare-fun m!1720589 () Bool)

(assert (=> b!1475358 m!1720589))

(assert (=> b!1475112 d!432693))

(declare-fun d!432695 () Bool)

(declare-fun fromListB!746 (List!15604) BalanceConc!10532)

(assert (=> d!432695 (= (seqFromList!1728 lt!512748) (fromListB!746 lt!512748))))

(declare-fun bs!345524 () Bool)

(assert (= bs!345524 d!432695))

(declare-fun m!1720599 () Bool)

(assert (=> bs!345524 m!1720599))

(assert (=> b!1475112 d!432695))

(declare-fun d!432697 () Bool)

(assert (=> d!432697 (rulesProduceEachTokenIndividuallyList!790 thiss!27374 rules!4290 (++!4197 l1!3136 l2!3105))))

(declare-fun lt!512859 () Unit!25281)

(declare-fun choose!9043 (LexerInterface!2423 List!15605 List!15604 List!15604) Unit!25281)

(assert (=> d!432697 (= lt!512859 (choose!9043 thiss!27374 rules!4290 l1!3136 l2!3105))))

(assert (=> d!432697 (not (isEmpty!9706 rules!4290))))

(assert (=> d!432697 (= (lemmaRulesProduceEachTokenIndividuallyConcat!68 thiss!27374 rules!4290 l1!3136 l2!3105) lt!512859)))

(declare-fun bs!345525 () Bool)

(assert (= bs!345525 d!432697))

(assert (=> bs!345525 m!1720197))

(assert (=> bs!345525 m!1720197))

(declare-fun m!1720605 () Bool)

(assert (=> bs!345525 m!1720605))

(declare-fun m!1720607 () Bool)

(assert (=> bs!345525 m!1720607))

(assert (=> bs!345525 m!1720191))

(assert (=> b!1475112 d!432697))

(declare-fun bs!345526 () Bool)

(declare-fun d!432699 () Bool)

(assert (= bs!345526 (and d!432699 d!432589)))

(declare-fun lambda!63628 () Int)

(assert (=> bs!345526 (= lambda!63628 lambda!63615)))

(declare-fun bs!345527 () Bool)

(assert (= bs!345527 (and d!432699 d!432609)))

(assert (=> bs!345527 (= lambda!63628 lambda!63616)))

(declare-fun b!1475398 () Bool)

(declare-fun e!942613 () Bool)

(assert (=> b!1475398 (= e!942613 true)))

(declare-fun b!1475397 () Bool)

(declare-fun e!942612 () Bool)

(assert (=> b!1475397 (= e!942612 e!942613)))

(declare-fun b!1475396 () Bool)

(declare-fun e!942611 () Bool)

(assert (=> b!1475396 (= e!942611 e!942612)))

(assert (=> d!432699 e!942611))

(assert (= b!1475397 b!1475398))

(assert (= b!1475396 b!1475397))

(assert (= (and d!432699 ((_ is Cons!15539) rules!4290)) b!1475396))

(assert (=> b!1475398 (< (dynLambda!7049 order!9333 (toValue!4098 (transformation!2767 (h!20940 rules!4290)))) (dynLambda!7050 order!9335 lambda!63628))))

(assert (=> b!1475398 (< (dynLambda!7051 order!9337 (toChars!3957 (transformation!2767 (h!20940 rules!4290)))) (dynLambda!7050 order!9335 lambda!63628))))

(assert (=> d!432699 true))

(declare-fun e!942610 () Bool)

(assert (=> d!432699 e!942610))

(declare-fun res!666891 () Bool)

(assert (=> d!432699 (=> (not res!666891) (not e!942610))))

(declare-fun lt!512862 () Bool)

(assert (=> d!432699 (= res!666891 (= lt!512862 (forall!3785 (list!6189 (seqFromList!1728 lt!512748)) lambda!63628)))))

(declare-fun forall!3786 (BalanceConc!10532 Int) Bool)

(assert (=> d!432699 (= lt!512862 (forall!3786 (seqFromList!1728 lt!512748) lambda!63628))))

(assert (=> d!432699 (not (isEmpty!9706 rules!4290))))

(assert (=> d!432699 (= (rulesProduceEachTokenIndividually!898 thiss!27374 rules!4290 (seqFromList!1728 lt!512748)) lt!512862)))

(declare-fun b!1475395 () Bool)

(assert (=> b!1475395 (= e!942610 (= lt!512862 (rulesProduceEachTokenIndividuallyList!790 thiss!27374 rules!4290 (list!6189 (seqFromList!1728 lt!512748)))))))

(assert (= (and d!432699 res!666891) b!1475395))

(assert (=> d!432699 m!1720199))

(declare-fun m!1720609 () Bool)

(assert (=> d!432699 m!1720609))

(assert (=> d!432699 m!1720609))

(declare-fun m!1720611 () Bool)

(assert (=> d!432699 m!1720611))

(assert (=> d!432699 m!1720199))

(declare-fun m!1720613 () Bool)

(assert (=> d!432699 m!1720613))

(assert (=> d!432699 m!1720191))

(assert (=> b!1475395 m!1720199))

(assert (=> b!1475395 m!1720609))

(assert (=> b!1475395 m!1720609))

(declare-fun m!1720615 () Bool)

(assert (=> b!1475395 m!1720615))

(assert (=> b!1475112 d!432699))

(declare-fun bs!345528 () Bool)

(declare-fun d!432701 () Bool)

(assert (= bs!345528 (and d!432701 d!432589)))

(declare-fun lambda!63629 () Int)

(assert (=> bs!345528 (= lambda!63629 lambda!63615)))

(declare-fun bs!345529 () Bool)

(assert (= bs!345529 (and d!432701 d!432609)))

(assert (=> bs!345529 (= lambda!63629 lambda!63616)))

(declare-fun bs!345530 () Bool)

(assert (= bs!345530 (and d!432701 d!432699)))

(assert (=> bs!345530 (= lambda!63629 lambda!63628)))

(declare-fun b!1475403 () Bool)

(declare-fun e!942618 () Bool)

(assert (=> b!1475403 (= e!942618 true)))

(declare-fun b!1475402 () Bool)

(declare-fun e!942617 () Bool)

(assert (=> b!1475402 (= e!942617 e!942618)))

(declare-fun b!1475401 () Bool)

(declare-fun e!942616 () Bool)

(assert (=> b!1475401 (= e!942616 e!942617)))

(assert (=> d!432701 e!942616))

(assert (= b!1475402 b!1475403))

(assert (= b!1475401 b!1475402))

(assert (= (and d!432701 ((_ is Cons!15539) rules!4290)) b!1475401))

(assert (=> b!1475403 (< (dynLambda!7049 order!9333 (toValue!4098 (transformation!2767 (h!20940 rules!4290)))) (dynLambda!7050 order!9335 lambda!63629))))

(assert (=> b!1475403 (< (dynLambda!7051 order!9337 (toChars!3957 (transformation!2767 (h!20940 rules!4290)))) (dynLambda!7050 order!9335 lambda!63629))))

(assert (=> d!432701 true))

(declare-fun lt!512863 () Bool)

(assert (=> d!432701 (= lt!512863 (forall!3785 lt!512748 lambda!63629))))

(declare-fun e!942615 () Bool)

(assert (=> d!432701 (= lt!512863 e!942615)))

(declare-fun res!666893 () Bool)

(assert (=> d!432701 (=> res!666893 e!942615)))

(assert (=> d!432701 (= res!666893 (not ((_ is Cons!15538) lt!512748)))))

(assert (=> d!432701 (not (isEmpty!9706 rules!4290))))

(assert (=> d!432701 (= (rulesProduceEachTokenIndividuallyList!790 thiss!27374 rules!4290 lt!512748) lt!512863)))

(declare-fun b!1475399 () Bool)

(declare-fun e!942614 () Bool)

(assert (=> b!1475399 (= e!942615 e!942614)))

(declare-fun res!666892 () Bool)

(assert (=> b!1475399 (=> (not res!666892) (not e!942614))))

(assert (=> b!1475399 (= res!666892 (rulesProduceIndividualToken!1282 thiss!27374 rules!4290 (h!20939 lt!512748)))))

(declare-fun b!1475400 () Bool)

(assert (=> b!1475400 (= e!942614 (rulesProduceEachTokenIndividuallyList!790 thiss!27374 rules!4290 (t!136395 lt!512748)))))

(assert (= (and d!432701 (not res!666893)) b!1475399))

(assert (= (and b!1475399 res!666892) b!1475400))

(declare-fun m!1720617 () Bool)

(assert (=> d!432701 m!1720617))

(assert (=> d!432701 m!1720191))

(declare-fun m!1720619 () Bool)

(assert (=> b!1475399 m!1720619))

(declare-fun m!1720621 () Bool)

(assert (=> b!1475400 m!1720621))

(assert (=> b!1475112 d!432701))

(declare-fun b!1475404 () Bool)

(declare-fun e!942621 () Bool)

(assert (=> b!1475404 (= e!942621 (inv!15 (value!88507 (h!20939 l2!3105))))))

(declare-fun b!1475405 () Bool)

(declare-fun e!942619 () Bool)

(assert (=> b!1475405 (= e!942619 (inv!16 (value!88507 (h!20939 l2!3105))))))

(declare-fun b!1475406 () Bool)

(declare-fun e!942620 () Bool)

(assert (=> b!1475406 (= e!942620 (inv!17 (value!88507 (h!20939 l2!3105))))))

(declare-fun d!432703 () Bool)

(declare-fun c!242546 () Bool)

(assert (=> d!432703 (= c!242546 ((_ is IntegerValue!8571) (value!88507 (h!20939 l2!3105))))))

(assert (=> d!432703 (= (inv!21 (value!88507 (h!20939 l2!3105))) e!942619)))

(declare-fun b!1475407 () Bool)

(declare-fun res!666894 () Bool)

(assert (=> b!1475407 (=> res!666894 e!942621)))

(assert (=> b!1475407 (= res!666894 (not ((_ is IntegerValue!8573) (value!88507 (h!20939 l2!3105)))))))

(assert (=> b!1475407 (= e!942620 e!942621)))

(declare-fun b!1475408 () Bool)

(assert (=> b!1475408 (= e!942619 e!942620)))

(declare-fun c!242545 () Bool)

(assert (=> b!1475408 (= c!242545 ((_ is IntegerValue!8572) (value!88507 (h!20939 l2!3105))))))

(assert (= (and d!432703 c!242546) b!1475405))

(assert (= (and d!432703 (not c!242546)) b!1475408))

(assert (= (and b!1475408 c!242545) b!1475406))

(assert (= (and b!1475408 (not c!242545)) b!1475407))

(assert (= (and b!1475407 (not res!666894)) b!1475404))

(declare-fun m!1720623 () Bool)

(assert (=> b!1475404 m!1720623))

(declare-fun m!1720625 () Bool)

(assert (=> b!1475405 m!1720625))

(declare-fun m!1720627 () Bool)

(assert (=> b!1475406 m!1720627))

(assert (=> b!1475101 d!432703))

(declare-fun b!1475422 () Bool)

(declare-fun b_free!37647 () Bool)

(declare-fun b_next!38351 () Bool)

(assert (=> b!1475422 (= b_free!37647 (not b_next!38351))))

(declare-fun tp!417314 () Bool)

(declare-fun b_and!101765 () Bool)

(assert (=> b!1475422 (= tp!417314 b_and!101765)))

(declare-fun b_free!37649 () Bool)

(declare-fun b_next!38353 () Bool)

(assert (=> b!1475422 (= b_free!37649 (not b_next!38353))))

(declare-fun t!136451 () Bool)

(declare-fun tb!83945 () Bool)

(assert (=> (and b!1475422 (= (toChars!3957 (transformation!2767 (rule!4544 (h!20939 (t!136395 l1!3136))))) (toChars!3957 (transformation!2767 (rule!4544 (h!20939 l1!3136))))) t!136451) tb!83945))

(declare-fun result!100888 () Bool)

(assert (= result!100888 result!100838))

(assert (=> b!1475170 t!136451))

(declare-fun t!136453 () Bool)

(declare-fun tb!83947 () Bool)

(assert (=> (and b!1475422 (= (toChars!3957 (transformation!2767 (rule!4544 (h!20939 (t!136395 l1!3136))))) (toChars!3957 (transformation!2767 (rule!4544 (h!20939 l2!3105))))) t!136453) tb!83947))

(declare-fun result!100890 () Bool)

(assert (= result!100890 result!100860))

(assert (=> b!1475318 t!136453))

(declare-fun tp!417317 () Bool)

(declare-fun b_and!101767 () Bool)

(assert (=> b!1475422 (= tp!417317 (and (=> t!136451 result!100888) (=> t!136453 result!100890) b_and!101767))))

(declare-fun e!942634 () Bool)

(assert (=> b!1475422 (= e!942634 (and tp!417314 tp!417317))))

(declare-fun e!942635 () Bool)

(declare-fun tp!417316 () Bool)

(declare-fun e!942636 () Bool)

(declare-fun b!1475419 () Bool)

(assert (=> b!1475419 (= e!942635 (and (inv!20746 (h!20939 (t!136395 l1!3136))) e!942636 tp!417316))))

(assert (=> b!1475104 (= tp!417223 e!942635)))

(declare-fun e!942638 () Bool)

(declare-fun tp!417318 () Bool)

(declare-fun b!1475420 () Bool)

(assert (=> b!1475420 (= e!942636 (and (inv!21 (value!88507 (h!20939 (t!136395 l1!3136)))) e!942638 tp!417318))))

(declare-fun tp!417315 () Bool)

(declare-fun b!1475421 () Bool)

(assert (=> b!1475421 (= e!942638 (and tp!417315 (inv!20742 (tag!3031 (rule!4544 (h!20939 (t!136395 l1!3136))))) (inv!20745 (transformation!2767 (rule!4544 (h!20939 (t!136395 l1!3136))))) e!942634))))

(assert (= b!1475421 b!1475422))

(assert (= b!1475420 b!1475421))

(assert (= b!1475419 b!1475420))

(assert (= (and b!1475104 ((_ is Cons!15538) (t!136395 l1!3136))) b!1475419))

(declare-fun m!1720629 () Bool)

(assert (=> b!1475419 m!1720629))

(declare-fun m!1720631 () Bool)

(assert (=> b!1475420 m!1720631))

(declare-fun m!1720633 () Bool)

(assert (=> b!1475421 m!1720633))

(declare-fun m!1720635 () Bool)

(assert (=> b!1475421 m!1720635))

(declare-fun b!1475433 () Bool)

(declare-fun e!942642 () Bool)

(declare-fun tp_is_empty!6939 () Bool)

(assert (=> b!1475433 (= e!942642 tp_is_empty!6939)))

(assert (=> b!1475103 (= tp!417232 e!942642)))

(declare-fun b!1475435 () Bool)

(declare-fun tp!417331 () Bool)

(assert (=> b!1475435 (= e!942642 tp!417331)))

(declare-fun b!1475436 () Bool)

(declare-fun tp!417329 () Bool)

(declare-fun tp!417333 () Bool)

(assert (=> b!1475436 (= e!942642 (and tp!417329 tp!417333))))

(declare-fun b!1475434 () Bool)

(declare-fun tp!417330 () Bool)

(declare-fun tp!417332 () Bool)

(assert (=> b!1475434 (= e!942642 (and tp!417330 tp!417332))))

(assert (= (and b!1475103 ((_ is ElementMatch!4081) (regex!2767 (rule!4544 (h!20939 l1!3136))))) b!1475433))

(assert (= (and b!1475103 ((_ is Concat!6939) (regex!2767 (rule!4544 (h!20939 l1!3136))))) b!1475434))

(assert (= (and b!1475103 ((_ is Star!4081) (regex!2767 (rule!4544 (h!20939 l1!3136))))) b!1475435))

(assert (= (and b!1475103 ((_ is Union!4081) (regex!2767 (rule!4544 (h!20939 l1!3136))))) b!1475436))

(declare-fun b!1475441 () Bool)

(declare-fun e!942645 () Bool)

(declare-fun tp!417336 () Bool)

(assert (=> b!1475441 (= e!942645 (and tp_is_empty!6939 tp!417336))))

(assert (=> b!1475108 (= tp!417224 e!942645)))

(assert (= (and b!1475108 ((_ is Cons!15537) (originalCharacters!3629 (h!20939 l1!3136)))) b!1475441))

(declare-fun b!1475442 () Bool)

(declare-fun e!942646 () Bool)

(assert (=> b!1475442 (= e!942646 tp_is_empty!6939)))

(assert (=> b!1475109 (= tp!417230 e!942646)))

(declare-fun b!1475444 () Bool)

(declare-fun tp!417339 () Bool)

(assert (=> b!1475444 (= e!942646 tp!417339)))

(declare-fun b!1475445 () Bool)

(declare-fun tp!417337 () Bool)

(declare-fun tp!417341 () Bool)

(assert (=> b!1475445 (= e!942646 (and tp!417337 tp!417341))))

(declare-fun b!1475443 () Bool)

(declare-fun tp!417338 () Bool)

(declare-fun tp!417340 () Bool)

(assert (=> b!1475443 (= e!942646 (and tp!417338 tp!417340))))

(assert (= (and b!1475109 ((_ is ElementMatch!4081) (regex!2767 (h!20940 rules!4290)))) b!1475442))

(assert (= (and b!1475109 ((_ is Concat!6939) (regex!2767 (h!20940 rules!4290)))) b!1475443))

(assert (= (and b!1475109 ((_ is Star!4081) (regex!2767 (h!20940 rules!4290)))) b!1475444))

(assert (= (and b!1475109 ((_ is Union!4081) (regex!2767 (h!20940 rules!4290)))) b!1475445))

(declare-fun b!1475449 () Bool)

(declare-fun b_free!37651 () Bool)

(declare-fun b_next!38355 () Bool)

(assert (=> b!1475449 (= b_free!37651 (not b_next!38355))))

(declare-fun tp!417342 () Bool)

(declare-fun b_and!101769 () Bool)

(assert (=> b!1475449 (= tp!417342 b_and!101769)))

(declare-fun b_free!37653 () Bool)

(declare-fun b_next!38357 () Bool)

(assert (=> b!1475449 (= b_free!37653 (not b_next!38357))))

(declare-fun tb!83949 () Bool)

(declare-fun t!136455 () Bool)

(assert (=> (and b!1475449 (= (toChars!3957 (transformation!2767 (rule!4544 (h!20939 (t!136395 l2!3105))))) (toChars!3957 (transformation!2767 (rule!4544 (h!20939 l1!3136))))) t!136455) tb!83949))

(declare-fun result!100896 () Bool)

(assert (= result!100896 result!100838))

(assert (=> b!1475170 t!136455))

(declare-fun t!136457 () Bool)

(declare-fun tb!83951 () Bool)

(assert (=> (and b!1475449 (= (toChars!3957 (transformation!2767 (rule!4544 (h!20939 (t!136395 l2!3105))))) (toChars!3957 (transformation!2767 (rule!4544 (h!20939 l2!3105))))) t!136457) tb!83951))

(declare-fun result!100898 () Bool)

(assert (= result!100898 result!100860))

(assert (=> b!1475318 t!136457))

(declare-fun tp!417345 () Bool)

(declare-fun b_and!101771 () Bool)

(assert (=> b!1475449 (= tp!417345 (and (=> t!136455 result!100896) (=> t!136457 result!100898) b_and!101771))))

(declare-fun e!942647 () Bool)

(assert (=> b!1475449 (= e!942647 (and tp!417342 tp!417345))))

(declare-fun tp!417344 () Bool)

(declare-fun b!1475446 () Bool)

(declare-fun e!942649 () Bool)

(declare-fun e!942648 () Bool)

(assert (=> b!1475446 (= e!942648 (and (inv!20746 (h!20939 (t!136395 l2!3105))) e!942649 tp!417344))))

(assert (=> b!1475119 (= tp!417228 e!942648)))

(declare-fun b!1475447 () Bool)

(declare-fun e!942651 () Bool)

(declare-fun tp!417346 () Bool)

(assert (=> b!1475447 (= e!942649 (and (inv!21 (value!88507 (h!20939 (t!136395 l2!3105)))) e!942651 tp!417346))))

(declare-fun tp!417343 () Bool)

(declare-fun b!1475448 () Bool)

(assert (=> b!1475448 (= e!942651 (and tp!417343 (inv!20742 (tag!3031 (rule!4544 (h!20939 (t!136395 l2!3105))))) (inv!20745 (transformation!2767 (rule!4544 (h!20939 (t!136395 l2!3105))))) e!942647))))

(assert (= b!1475448 b!1475449))

(assert (= b!1475447 b!1475448))

(assert (= b!1475446 b!1475447))

(assert (= (and b!1475119 ((_ is Cons!15538) (t!136395 l2!3105))) b!1475446))

(declare-fun m!1720637 () Bool)

(assert (=> b!1475446 m!1720637))

(declare-fun m!1720639 () Bool)

(assert (=> b!1475447 m!1720639))

(declare-fun m!1720641 () Bool)

(assert (=> b!1475448 m!1720641))

(declare-fun m!1720643 () Bool)

(assert (=> b!1475448 m!1720643))

(declare-fun b!1475450 () Bool)

(declare-fun e!942653 () Bool)

(assert (=> b!1475450 (= e!942653 tp_is_empty!6939)))

(assert (=> b!1475113 (= tp!417225 e!942653)))

(declare-fun b!1475452 () Bool)

(declare-fun tp!417349 () Bool)

(assert (=> b!1475452 (= e!942653 tp!417349)))

(declare-fun b!1475453 () Bool)

(declare-fun tp!417347 () Bool)

(declare-fun tp!417351 () Bool)

(assert (=> b!1475453 (= e!942653 (and tp!417347 tp!417351))))

(declare-fun b!1475451 () Bool)

(declare-fun tp!417348 () Bool)

(declare-fun tp!417350 () Bool)

(assert (=> b!1475451 (= e!942653 (and tp!417348 tp!417350))))

(assert (= (and b!1475113 ((_ is ElementMatch!4081) (regex!2767 (rule!4544 (h!20939 l2!3105))))) b!1475450))

(assert (= (and b!1475113 ((_ is Concat!6939) (regex!2767 (rule!4544 (h!20939 l2!3105))))) b!1475451))

(assert (= (and b!1475113 ((_ is Star!4081) (regex!2767 (rule!4544 (h!20939 l2!3105))))) b!1475452))

(assert (= (and b!1475113 ((_ is Union!4081) (regex!2767 (rule!4544 (h!20939 l2!3105))))) b!1475453))

(declare-fun b!1475454 () Bool)

(declare-fun e!942654 () Bool)

(declare-fun tp!417352 () Bool)

(assert (=> b!1475454 (= e!942654 (and tp_is_empty!6939 tp!417352))))

(assert (=> b!1475101 (= tp!417226 e!942654)))

(assert (= (and b!1475101 ((_ is Cons!15537) (originalCharacters!3629 (h!20939 l2!3105)))) b!1475454))

(declare-fun b!1475465 () Bool)

(declare-fun b_free!37655 () Bool)

(declare-fun b_next!38359 () Bool)

(assert (=> b!1475465 (= b_free!37655 (not b_next!38359))))

(declare-fun tp!417363 () Bool)

(declare-fun b_and!101773 () Bool)

(assert (=> b!1475465 (= tp!417363 b_and!101773)))

(declare-fun b_free!37657 () Bool)

(declare-fun b_next!38361 () Bool)

(assert (=> b!1475465 (= b_free!37657 (not b_next!38361))))

(declare-fun t!136459 () Bool)

(declare-fun tb!83953 () Bool)

(assert (=> (and b!1475465 (= (toChars!3957 (transformation!2767 (h!20940 (t!136396 rules!4290)))) (toChars!3957 (transformation!2767 (rule!4544 (h!20939 l1!3136))))) t!136459) tb!83953))

(declare-fun result!100902 () Bool)

(assert (= result!100902 result!100838))

(assert (=> b!1475170 t!136459))

(declare-fun t!136461 () Bool)

(declare-fun tb!83955 () Bool)

(assert (=> (and b!1475465 (= (toChars!3957 (transformation!2767 (h!20940 (t!136396 rules!4290)))) (toChars!3957 (transformation!2767 (rule!4544 (h!20939 l2!3105))))) t!136461) tb!83955))

(declare-fun result!100904 () Bool)

(assert (= result!100904 result!100860))

(assert (=> b!1475318 t!136461))

(declare-fun b_and!101775 () Bool)

(declare-fun tp!417361 () Bool)

(assert (=> b!1475465 (= tp!417361 (and (=> t!136459 result!100902) (=> t!136461 result!100904) b_and!101775))))

(declare-fun e!942664 () Bool)

(assert (=> b!1475465 (= e!942664 (and tp!417363 tp!417361))))

(declare-fun e!942663 () Bool)

(declare-fun tp!417362 () Bool)

(declare-fun b!1475464 () Bool)

(assert (=> b!1475464 (= e!942663 (and tp!417362 (inv!20742 (tag!3031 (h!20940 (t!136396 rules!4290)))) (inv!20745 (transformation!2767 (h!20940 (t!136396 rules!4290)))) e!942664))))

(declare-fun b!1475463 () Bool)

(declare-fun e!942665 () Bool)

(declare-fun tp!417364 () Bool)

(assert (=> b!1475463 (= e!942665 (and e!942663 tp!417364))))

(assert (=> b!1475111 (= tp!417231 e!942665)))

(assert (= b!1475464 b!1475465))

(assert (= b!1475463 b!1475464))

(assert (= (and b!1475111 ((_ is Cons!15539) (t!136396 rules!4290))) b!1475463))

(declare-fun m!1720645 () Bool)

(assert (=> b!1475464 m!1720645))

(declare-fun m!1720647 () Bool)

(assert (=> b!1475464 m!1720647))

(declare-fun b_lambda!46135 () Bool)

(assert (= b_lambda!46123 (or (and b!1475449 b_free!37653 (= (toChars!3957 (transformation!2767 (rule!4544 (h!20939 (t!136395 l2!3105))))) (toChars!3957 (transformation!2767 (rule!4544 (h!20939 l1!3136)))))) (and b!1475116 b_free!37629 (= (toChars!3957 (transformation!2767 (rule!4544 (h!20939 l2!3105)))) (toChars!3957 (transformation!2767 (rule!4544 (h!20939 l1!3136)))))) (and b!1475102 b_free!37625 (= (toChars!3957 (transformation!2767 (h!20940 rules!4290))) (toChars!3957 (transformation!2767 (rule!4544 (h!20939 l1!3136)))))) (and b!1475422 b_free!37649 (= (toChars!3957 (transformation!2767 (rule!4544 (h!20939 (t!136395 l1!3136))))) (toChars!3957 (transformation!2767 (rule!4544 (h!20939 l1!3136)))))) (and b!1475465 b_free!37657 (= (toChars!3957 (transformation!2767 (h!20940 (t!136396 rules!4290)))) (toChars!3957 (transformation!2767 (rule!4544 (h!20939 l1!3136)))))) (and b!1475120 b_free!37633) b_lambda!46135)))

(declare-fun b_lambda!46137 () Bool)

(assert (= b_lambda!46129 (or (and b!1475449 b_free!37653 (= (toChars!3957 (transformation!2767 (rule!4544 (h!20939 (t!136395 l2!3105))))) (toChars!3957 (transformation!2767 (rule!4544 (h!20939 l2!3105)))))) (and b!1475465 b_free!37657 (= (toChars!3957 (transformation!2767 (h!20940 (t!136396 rules!4290)))) (toChars!3957 (transformation!2767 (rule!4544 (h!20939 l2!3105)))))) (and b!1475120 b_free!37633 (= (toChars!3957 (transformation!2767 (rule!4544 (h!20939 l1!3136)))) (toChars!3957 (transformation!2767 (rule!4544 (h!20939 l2!3105)))))) (and b!1475102 b_free!37625 (= (toChars!3957 (transformation!2767 (h!20940 rules!4290))) (toChars!3957 (transformation!2767 (rule!4544 (h!20939 l2!3105)))))) (and b!1475422 b_free!37649 (= (toChars!3957 (transformation!2767 (rule!4544 (h!20939 (t!136395 l1!3136))))) (toChars!3957 (transformation!2767 (rule!4544 (h!20939 l2!3105)))))) (and b!1475116 b_free!37629) b_lambda!46137)))

(check-sat b_and!101769 (not b_next!38353) (not b!1475303) (not b!1475436) (not b!1475395) (not b!1475452) b_and!101721 (not d!432701) (not b!1475197) (not b_next!38361) (not b_next!38337) (not b_next!38351) (not b!1475192) (not d!432681) (not d!432603) (not b!1475171) (not b_lambda!46135) (not b!1475316) (not b!1475421) (not d!432635) (not b_next!38355) (not b!1475319) (not b!1475419) (not b!1475399) (not tb!83927) (not d!432609) (not b!1475400) (not b_next!38335) (not b!1475396) (not b!1475196) (not b_next!38331) (not d!432693) (not b!1475327) (not d!432695) (not b!1475191) (not b!1475357) (not d!432641) (not b!1475308) (not b!1475441) (not b!1475190) (not tb!83909) (not b!1475448) b_and!101765 (not b_lambda!46137) (not b!1475434) (not b!1475447) (not b!1475161) (not b!1475443) b_and!101773 (not b_next!38359) (not b_next!38357) (not b!1475406) (not d!432699) (not b!1475445) (not b!1475310) (not d!432685) (not b!1475195) (not b!1475404) (not b!1475302) (not d!432639) (not d!432691) b_and!101775 b_and!101751 b_and!101749 (not d!432611) (not b!1475444) (not b!1475249) (not d!432633) (not b!1475446) (not b!1475435) (not b_next!38333) b_and!101717 tp_is_empty!6939 (not b!1475241) b_and!101747 (not b!1475451) (not b!1475257) (not b!1475464) (not b!1475170) (not b!1475454) (not b!1475463) (not d!432597) (not b!1475401) (not b!1475258) (not b_next!38329) (not d!432673) (not b!1475453) b_and!101725 (not b!1475256) (not b!1475179) (not b!1475242) (not b!1475151) b_and!101771 (not b!1475318) (not d!432621) (not b!1475358) (not b!1475176) (not b!1475322) (not b_next!38327) (not b!1475405) (not b!1475152) (not d!432697) (not b!1475307) (not d!432589) (not b!1475420) b_and!101767 (not b!1475243))
(check-sat b_and!101769 (not b_next!38355) (not b_next!38335) (not b_next!38331) (not b_next!38353) b_and!101765 (not b_next!38357) b_and!101749 b_and!101747 (not b_next!38329) b_and!101725 b_and!101771 (not b_next!38327) b_and!101767 b_and!101721 (not b_next!38361) (not b_next!38337) (not b_next!38351) b_and!101773 (not b_next!38359) b_and!101775 b_and!101751 (not b_next!38333) b_and!101717)
(get-model)

(declare-fun d!432745 () Bool)

(declare-fun charsToInt!0 (List!15602) (_ BitVec 32))

(assert (=> d!432745 (= (inv!16 (value!88507 (h!20939 l2!3105))) (= (charsToInt!0 (text!20446 (value!88507 (h!20939 l2!3105)))) (value!88498 (value!88507 (h!20939 l2!3105)))))))

(declare-fun bs!345543 () Bool)

(assert (= bs!345543 d!432745))

(declare-fun m!1720751 () Bool)

(assert (=> bs!345543 m!1720751))

(assert (=> b!1475405 d!432745))

(assert (=> d!432635 d!432621))

(declare-fun d!432747 () Bool)

(assert (=> d!432747 (rulesProduceIndividualToken!1282 thiss!27374 rules!4290 lt!512749)))

(assert (=> d!432747 true))

(declare-fun _$77!643 () Unit!25281)

(assert (=> d!432747 (= (choose!9042 thiss!27374 rules!4290 l2!3105 lt!512749) _$77!643)))

(declare-fun bs!345561 () Bool)

(assert (= bs!345561 d!432747))

(assert (=> bs!345561 m!1720213))

(assert (=> d!432635 d!432747))

(assert (=> d!432635 d!432607))

(declare-fun d!432803 () Bool)

(declare-fun e!942750 () Bool)

(assert (=> d!432803 e!942750))

(declare-fun res!666975 () Bool)

(assert (=> d!432803 (=> (not res!666975) (not e!942750))))

(declare-fun lt!512949 () BalanceConc!10532)

(assert (=> d!432803 (= res!666975 (= (list!6189 lt!512949) lt!512748))))

(declare-fun fromList!348 (List!15604) Conc!5296)

(assert (=> d!432803 (= lt!512949 (BalanceConc!10533 (fromList!348 lt!512748)))))

(assert (=> d!432803 (= (fromListB!746 lt!512748) lt!512949)))

(declare-fun b!1475585 () Bool)

(declare-fun isBalanced!1581 (Conc!5296) Bool)

(assert (=> b!1475585 (= e!942750 (isBalanced!1581 (fromList!348 lt!512748)))))

(assert (= (and d!432803 res!666975) b!1475585))

(declare-fun m!1720939 () Bool)

(assert (=> d!432803 m!1720939))

(declare-fun m!1720941 () Bool)

(assert (=> d!432803 m!1720941))

(assert (=> b!1475585 m!1720941))

(assert (=> b!1475585 m!1720941))

(declare-fun m!1720943 () Bool)

(assert (=> b!1475585 m!1720943))

(assert (=> d!432695 d!432803))

(declare-fun d!432807 () Bool)

(declare-fun lt!512955 () Int)

(assert (=> d!432807 (>= lt!512955 0)))

(declare-fun e!942754 () Int)

(assert (=> d!432807 (= lt!512955 e!942754)))

(declare-fun c!242570 () Bool)

(assert (=> d!432807 (= c!242570 ((_ is Nil!15537) (originalCharacters!3629 (h!20939 l1!3136))))))

(assert (=> d!432807 (= (size!12596 (originalCharacters!3629 (h!20939 l1!3136))) lt!512955)))

(declare-fun b!1475591 () Bool)

(assert (=> b!1475591 (= e!942754 0)))

(declare-fun b!1475592 () Bool)

(assert (=> b!1475592 (= e!942754 (+ 1 (size!12596 (t!136394 (originalCharacters!3629 (h!20939 l1!3136))))))))

(assert (= (and d!432807 c!242570) b!1475591))

(assert (= (and d!432807 (not c!242570)) b!1475592))

(declare-fun m!1720953 () Bool)

(assert (=> b!1475592 m!1720953))

(assert (=> b!1475171 d!432807))

(assert (=> d!432641 d!432639))

(declare-fun d!432811 () Bool)

(assert (=> d!432811 (rulesProduceIndividualToken!1282 thiss!27374 rules!4290 lt!512747)))

(assert (=> d!432811 true))

(declare-fun _$77!644 () Unit!25281)

(assert (=> d!432811 (= (choose!9042 thiss!27374 rules!4290 l1!3136 lt!512747) _$77!644)))

(declare-fun bs!345563 () Bool)

(assert (= bs!345563 d!432811))

(assert (=> bs!345563 m!1720207))

(assert (=> d!432641 d!432811))

(assert (=> d!432641 d!432607))

(declare-fun d!432813 () Bool)

(declare-fun res!666977 () Bool)

(declare-fun e!942755 () Bool)

(assert (=> d!432813 (=> res!666977 e!942755)))

(assert (=> d!432813 (= res!666977 (or (not ((_ is Cons!15538) (Cons!15538 (h!20939 (t!136395 l2!3105)) (t!136395 (t!136395 l2!3105))))) (not ((_ is Cons!15538) (t!136395 (Cons!15538 (h!20939 (t!136395 l2!3105)) (t!136395 (t!136395 l2!3105))))))))))

(assert (=> d!432813 (= (tokensListTwoByTwoPredicateSeparableList!283 thiss!27374 (Cons!15538 (h!20939 (t!136395 l2!3105)) (t!136395 (t!136395 l2!3105))) rules!4290) e!942755)))

(declare-fun b!1475593 () Bool)

(declare-fun e!942756 () Bool)

(assert (=> b!1475593 (= e!942755 e!942756)))

(declare-fun res!666976 () Bool)

(assert (=> b!1475593 (=> (not res!666976) (not e!942756))))

(assert (=> b!1475593 (= res!666976 (separableTokensPredicate!566 thiss!27374 (h!20939 (Cons!15538 (h!20939 (t!136395 l2!3105)) (t!136395 (t!136395 l2!3105)))) (h!20939 (t!136395 (Cons!15538 (h!20939 (t!136395 l2!3105)) (t!136395 (t!136395 l2!3105))))) rules!4290))))

(declare-fun lt!512959 () Unit!25281)

(declare-fun Unit!25298 () Unit!25281)

(assert (=> b!1475593 (= lt!512959 Unit!25298)))

(assert (=> b!1475593 (> (size!12598 (charsOf!1584 (h!20939 (t!136395 (Cons!15538 (h!20939 (t!136395 l2!3105)) (t!136395 (t!136395 l2!3105))))))) 0)))

(declare-fun lt!512960 () Unit!25281)

(declare-fun Unit!25299 () Unit!25281)

(assert (=> b!1475593 (= lt!512960 Unit!25299)))

(assert (=> b!1475593 (rulesProduceIndividualToken!1282 thiss!27374 rules!4290 (h!20939 (t!136395 (Cons!15538 (h!20939 (t!136395 l2!3105)) (t!136395 (t!136395 l2!3105))))))))

(declare-fun lt!512957 () Unit!25281)

(declare-fun Unit!25300 () Unit!25281)

(assert (=> b!1475593 (= lt!512957 Unit!25300)))

(assert (=> b!1475593 (rulesProduceIndividualToken!1282 thiss!27374 rules!4290 (h!20939 (Cons!15538 (h!20939 (t!136395 l2!3105)) (t!136395 (t!136395 l2!3105)))))))

(declare-fun lt!512962 () Unit!25281)

(declare-fun lt!512956 () Unit!25281)

(assert (=> b!1475593 (= lt!512962 lt!512956)))

(assert (=> b!1475593 (rulesProduceIndividualToken!1282 thiss!27374 rules!4290 (h!20939 (t!136395 (Cons!15538 (h!20939 (t!136395 l2!3105)) (t!136395 (t!136395 l2!3105))))))))

(assert (=> b!1475593 (= lt!512956 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!463 thiss!27374 rules!4290 (Cons!15538 (h!20939 (t!136395 l2!3105)) (t!136395 (t!136395 l2!3105))) (h!20939 (t!136395 (Cons!15538 (h!20939 (t!136395 l2!3105)) (t!136395 (t!136395 l2!3105)))))))))

(declare-fun lt!512958 () Unit!25281)

(declare-fun lt!512961 () Unit!25281)

(assert (=> b!1475593 (= lt!512958 lt!512961)))

(assert (=> b!1475593 (rulesProduceIndividualToken!1282 thiss!27374 rules!4290 (h!20939 (Cons!15538 (h!20939 (t!136395 l2!3105)) (t!136395 (t!136395 l2!3105)))))))

(assert (=> b!1475593 (= lt!512961 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!463 thiss!27374 rules!4290 (Cons!15538 (h!20939 (t!136395 l2!3105)) (t!136395 (t!136395 l2!3105))) (h!20939 (Cons!15538 (h!20939 (t!136395 l2!3105)) (t!136395 (t!136395 l2!3105))))))))

(declare-fun b!1475594 () Bool)

(assert (=> b!1475594 (= e!942756 (tokensListTwoByTwoPredicateSeparableList!283 thiss!27374 (Cons!15538 (h!20939 (t!136395 (Cons!15538 (h!20939 (t!136395 l2!3105)) (t!136395 (t!136395 l2!3105))))) (t!136395 (t!136395 (Cons!15538 (h!20939 (t!136395 l2!3105)) (t!136395 (t!136395 l2!3105)))))) rules!4290))))

(assert (= (and d!432813 (not res!666977)) b!1475593))

(assert (= (and b!1475593 res!666976) b!1475594))

(declare-fun m!1720955 () Bool)

(assert (=> b!1475593 m!1720955))

(declare-fun m!1720957 () Bool)

(assert (=> b!1475593 m!1720957))

(declare-fun m!1720959 () Bool)

(assert (=> b!1475593 m!1720959))

(declare-fun m!1720961 () Bool)

(assert (=> b!1475593 m!1720961))

(assert (=> b!1475593 m!1720955))

(declare-fun m!1720963 () Bool)

(assert (=> b!1475593 m!1720963))

(declare-fun m!1720965 () Bool)

(assert (=> b!1475593 m!1720965))

(declare-fun m!1720967 () Bool)

(assert (=> b!1475593 m!1720967))

(declare-fun m!1720969 () Bool)

(assert (=> b!1475594 m!1720969))

(assert (=> b!1475303 d!432813))

(declare-fun d!432815 () Bool)

(declare-fun res!666982 () Bool)

(declare-fun e!942761 () Bool)

(assert (=> d!432815 (=> res!666982 e!942761)))

(assert (=> d!432815 (= res!666982 ((_ is Nil!15538) (list!6189 (seqFromList!1728 lt!512748))))))

(assert (=> d!432815 (= (forall!3785 (list!6189 (seqFromList!1728 lt!512748)) lambda!63628) e!942761)))

(declare-fun b!1475599 () Bool)

(declare-fun e!942762 () Bool)

(assert (=> b!1475599 (= e!942761 e!942762)))

(declare-fun res!666983 () Bool)

(assert (=> b!1475599 (=> (not res!666983) (not e!942762))))

(declare-fun dynLambda!7054 (Int Token!5196) Bool)

(assert (=> b!1475599 (= res!666983 (dynLambda!7054 lambda!63628 (h!20939 (list!6189 (seqFromList!1728 lt!512748)))))))

(declare-fun b!1475600 () Bool)

(assert (=> b!1475600 (= e!942762 (forall!3785 (t!136395 (list!6189 (seqFromList!1728 lt!512748))) lambda!63628))))

(assert (= (and d!432815 (not res!666982)) b!1475599))

(assert (= (and b!1475599 res!666983) b!1475600))

(declare-fun b_lambda!46149 () Bool)

(assert (=> (not b_lambda!46149) (not b!1475599)))

(declare-fun m!1720977 () Bool)

(assert (=> b!1475599 m!1720977))

(declare-fun m!1720979 () Bool)

(assert (=> b!1475600 m!1720979))

(assert (=> d!432699 d!432815))

(declare-fun d!432819 () Bool)

(declare-fun list!6192 (Conc!5296) List!15604)

(assert (=> d!432819 (= (list!6189 (seqFromList!1728 lt!512748)) (list!6192 (c!242518 (seqFromList!1728 lt!512748))))))

(declare-fun bs!345565 () Bool)

(assert (= bs!345565 d!432819))

(declare-fun m!1720981 () Bool)

(assert (=> bs!345565 m!1720981))

(assert (=> d!432699 d!432819))

(declare-fun d!432821 () Bool)

(declare-fun lt!512971 () Bool)

(assert (=> d!432821 (= lt!512971 (forall!3785 (list!6189 (seqFromList!1728 lt!512748)) lambda!63628))))

(declare-fun forall!3789 (Conc!5296 Int) Bool)

(assert (=> d!432821 (= lt!512971 (forall!3789 (c!242518 (seqFromList!1728 lt!512748)) lambda!63628))))

(assert (=> d!432821 (= (forall!3786 (seqFromList!1728 lt!512748) lambda!63628) lt!512971)))

(declare-fun bs!345566 () Bool)

(assert (= bs!345566 d!432821))

(assert (=> bs!345566 m!1720199))

(assert (=> bs!345566 m!1720609))

(assert (=> bs!345566 m!1720609))

(assert (=> bs!345566 m!1720611))

(declare-fun m!1720989 () Bool)

(assert (=> bs!345566 m!1720989))

(assert (=> d!432699 d!432821))

(assert (=> d!432699 d!432607))

(declare-fun d!432825 () Bool)

(declare-fun lt!512976 () Bool)

(assert (=> d!432825 (= lt!512976 (isEmpty!9709 (list!6188 (_2!8036 lt!512812))))))

(declare-fun isEmpty!9713 (Conc!5295) Bool)

(assert (=> d!432825 (= lt!512976 (isEmpty!9713 (c!242517 (_2!8036 lt!512812))))))

(assert (=> d!432825 (= (isEmpty!9710 (_2!8036 lt!512812)) lt!512976)))

(declare-fun bs!345567 () Bool)

(assert (= bs!345567 d!432825))

(declare-fun m!1720991 () Bool)

(assert (=> bs!345567 m!1720991))

(assert (=> bs!345567 m!1720991))

(declare-fun m!1720993 () Bool)

(assert (=> bs!345567 m!1720993))

(declare-fun m!1720995 () Bool)

(assert (=> bs!345567 m!1720995))

(assert (=> b!1475257 d!432825))

(declare-fun d!432827 () Bool)

(declare-fun c!242573 () Bool)

(assert (=> d!432827 (= c!242573 ((_ is Node!5295) (c!242517 (dynLambda!7052 (toChars!3957 (transformation!2767 (rule!4544 (h!20939 l1!3136)))) (value!88507 (h!20939 l1!3136))))))))

(declare-fun e!942774 () Bool)

(assert (=> d!432827 (= (inv!20749 (c!242517 (dynLambda!7052 (toChars!3957 (transformation!2767 (rule!4544 (h!20939 l1!3136)))) (value!88507 (h!20939 l1!3136))))) e!942774)))

(declare-fun b!1475614 () Bool)

(declare-fun inv!20753 (Conc!5295) Bool)

(assert (=> b!1475614 (= e!942774 (inv!20753 (c!242517 (dynLambda!7052 (toChars!3957 (transformation!2767 (rule!4544 (h!20939 l1!3136)))) (value!88507 (h!20939 l1!3136))))))))

(declare-fun b!1475615 () Bool)

(declare-fun e!942775 () Bool)

(assert (=> b!1475615 (= e!942774 e!942775)))

(declare-fun res!666992 () Bool)

(assert (=> b!1475615 (= res!666992 (not ((_ is Leaf!7880) (c!242517 (dynLambda!7052 (toChars!3957 (transformation!2767 (rule!4544 (h!20939 l1!3136)))) (value!88507 (h!20939 l1!3136)))))))))

(assert (=> b!1475615 (=> res!666992 e!942775)))

(declare-fun b!1475616 () Bool)

(declare-fun inv!20754 (Conc!5295) Bool)

(assert (=> b!1475616 (= e!942775 (inv!20754 (c!242517 (dynLambda!7052 (toChars!3957 (transformation!2767 (rule!4544 (h!20939 l1!3136)))) (value!88507 (h!20939 l1!3136))))))))

(assert (= (and d!432827 c!242573) b!1475614))

(assert (= (and d!432827 (not c!242573)) b!1475615))

(assert (= (and b!1475615 (not res!666992)) b!1475616))

(declare-fun m!1721013 () Bool)

(assert (=> b!1475614 m!1721013))

(declare-fun m!1721015 () Bool)

(assert (=> b!1475616 m!1721015))

(assert (=> b!1475176 d!432827))

(declare-fun d!432833 () Bool)

(assert (=> d!432833 (= (inv!16 (value!88507 (h!20939 l1!3136))) (= (charsToInt!0 (text!20446 (value!88507 (h!20939 l1!3136)))) (value!88498 (value!88507 (h!20939 l1!3136)))))))

(declare-fun bs!345568 () Bool)

(assert (= bs!345568 d!432833))

(declare-fun m!1721017 () Bool)

(assert (=> bs!345568 m!1721017))

(assert (=> b!1475191 d!432833))

(declare-fun d!432835 () Bool)

(declare-fun isBalanced!1582 (Conc!5295) Bool)

(assert (=> d!432835 (= (inv!20750 (dynLambda!7052 (toChars!3957 (transformation!2767 (rule!4544 (h!20939 l1!3136)))) (value!88507 (h!20939 l1!3136)))) (isBalanced!1582 (c!242517 (dynLambda!7052 (toChars!3957 (transformation!2767 (rule!4544 (h!20939 l1!3136)))) (value!88507 (h!20939 l1!3136))))))))

(declare-fun bs!345570 () Bool)

(assert (= bs!345570 d!432835))

(declare-fun m!1721021 () Bool)

(assert (=> bs!345570 m!1721021))

(assert (=> tb!83909 d!432835))

(declare-fun d!432839 () Bool)

(declare-fun res!666993 () Bool)

(declare-fun e!942776 () Bool)

(assert (=> d!432839 (=> res!666993 e!942776)))

(assert (=> d!432839 (= res!666993 ((_ is Nil!15538) lt!512748))))

(assert (=> d!432839 (= (forall!3785 lt!512748 lambda!63629) e!942776)))

(declare-fun b!1475621 () Bool)

(declare-fun e!942777 () Bool)

(assert (=> b!1475621 (= e!942776 e!942777)))

(declare-fun res!666994 () Bool)

(assert (=> b!1475621 (=> (not res!666994) (not e!942777))))

(assert (=> b!1475621 (= res!666994 (dynLambda!7054 lambda!63629 (h!20939 lt!512748)))))

(declare-fun b!1475622 () Bool)

(assert (=> b!1475622 (= e!942777 (forall!3785 (t!136395 lt!512748) lambda!63629))))

(assert (= (and d!432839 (not res!666993)) b!1475621))

(assert (= (and b!1475621 res!666994) b!1475622))

(declare-fun b_lambda!46153 () Bool)

(assert (=> (not b_lambda!46153) (not b!1475621)))

(declare-fun m!1721023 () Bool)

(assert (=> b!1475621 m!1721023))

(declare-fun m!1721025 () Bool)

(assert (=> b!1475622 m!1721025))

(assert (=> d!432701 d!432839))

(assert (=> d!432701 d!432607))

(declare-fun d!432841 () Bool)

(declare-fun lt!512980 () Bool)

(declare-fun e!942779 () Bool)

(assert (=> d!432841 (= lt!512980 e!942779)))

(declare-fun res!666997 () Bool)

(assert (=> d!432841 (=> (not res!666997) (not e!942779))))

(assert (=> d!432841 (= res!666997 (= (list!6189 (_1!8036 (lex!1091 thiss!27374 rules!4290 (print!1126 thiss!27374 (singletonSeq!1305 (h!20939 l2!3105)))))) (list!6189 (singletonSeq!1305 (h!20939 l2!3105)))))))

(declare-fun e!942778 () Bool)

(assert (=> d!432841 (= lt!512980 e!942778)))

(declare-fun res!666995 () Bool)

(assert (=> d!432841 (=> (not res!666995) (not e!942778))))

(declare-fun lt!512979 () tuple2!14300)

(assert (=> d!432841 (= res!666995 (= (size!12597 (_1!8036 lt!512979)) 1))))

(assert (=> d!432841 (= lt!512979 (lex!1091 thiss!27374 rules!4290 (print!1126 thiss!27374 (singletonSeq!1305 (h!20939 l2!3105)))))))

(assert (=> d!432841 (not (isEmpty!9706 rules!4290))))

(assert (=> d!432841 (= (rulesProduceIndividualToken!1282 thiss!27374 rules!4290 (h!20939 l2!3105)) lt!512980)))

(declare-fun b!1475623 () Bool)

(declare-fun res!666996 () Bool)

(assert (=> b!1475623 (=> (not res!666996) (not e!942778))))

(assert (=> b!1475623 (= res!666996 (= (apply!4012 (_1!8036 lt!512979) 0) (h!20939 l2!3105)))))

(declare-fun b!1475624 () Bool)

(assert (=> b!1475624 (= e!942778 (isEmpty!9710 (_2!8036 lt!512979)))))

(declare-fun b!1475625 () Bool)

(assert (=> b!1475625 (= e!942779 (isEmpty!9710 (_2!8036 (lex!1091 thiss!27374 rules!4290 (print!1126 thiss!27374 (singletonSeq!1305 (h!20939 l2!3105)))))))))

(assert (= (and d!432841 res!666995) b!1475623))

(assert (= (and b!1475623 res!666996) b!1475624))

(assert (= (and d!432841 res!666997) b!1475625))

(declare-fun m!1721035 () Bool)

(assert (=> d!432841 m!1721035))

(declare-fun m!1721037 () Bool)

(assert (=> d!432841 m!1721037))

(declare-fun m!1721039 () Bool)

(assert (=> d!432841 m!1721039))

(declare-fun m!1721041 () Bool)

(assert (=> d!432841 m!1721041))

(assert (=> d!432841 m!1721039))

(assert (=> d!432841 m!1721035))

(assert (=> d!432841 m!1720191))

(assert (=> d!432841 m!1721039))

(declare-fun m!1721043 () Bool)

(assert (=> d!432841 m!1721043))

(declare-fun m!1721045 () Bool)

(assert (=> d!432841 m!1721045))

(declare-fun m!1721047 () Bool)

(assert (=> b!1475623 m!1721047))

(declare-fun m!1721051 () Bool)

(assert (=> b!1475624 m!1721051))

(assert (=> b!1475625 m!1721039))

(assert (=> b!1475625 m!1721039))

(assert (=> b!1475625 m!1721035))

(assert (=> b!1475625 m!1721035))

(assert (=> b!1475625 m!1721037))

(declare-fun m!1721055 () Bool)

(assert (=> b!1475625 m!1721055))

(assert (=> b!1475195 d!432841))

(declare-fun d!432849 () Bool)

(declare-fun charsToBigInt!1 (List!15602) Int)

(assert (=> d!432849 (= (inv!17 (value!88507 (h!20939 l1!3136))) (= (charsToBigInt!1 (text!20447 (value!88507 (h!20939 l1!3136)))) (value!88499 (value!88507 (h!20939 l1!3136)))))))

(declare-fun bs!345574 () Bool)

(assert (= bs!345574 d!432849))

(declare-fun m!1721061 () Bool)

(assert (=> bs!345574 m!1721061))

(assert (=> b!1475192 d!432849))

(declare-fun d!432853 () Bool)

(declare-fun list!6193 (Conc!5295) List!15603)

(assert (=> d!432853 (= (list!6188 (dynLambda!7052 (toChars!3957 (transformation!2767 (rule!4544 (h!20939 l2!3105)))) (value!88507 (h!20939 l2!3105)))) (list!6193 (c!242517 (dynLambda!7052 (toChars!3957 (transformation!2767 (rule!4544 (h!20939 l2!3105)))) (value!88507 (h!20939 l2!3105))))))))

(declare-fun bs!345575 () Bool)

(assert (= bs!345575 d!432853))

(declare-fun m!1721079 () Bool)

(assert (=> bs!345575 m!1721079))

(assert (=> b!1475318 d!432853))

(declare-fun d!432857 () Bool)

(declare-fun lt!512989 () Token!5196)

(assert (=> d!432857 (contains!2932 (t!136395 l1!3136) lt!512989)))

(declare-fun e!942786 () Token!5196)

(assert (=> d!432857 (= lt!512989 e!942786)))

(declare-fun c!242575 () Bool)

(assert (=> d!432857 (= c!242575 (and ((_ is Cons!15538) (t!136395 l1!3136)) ((_ is Nil!15538) (t!136395 (t!136395 l1!3136)))))))

(assert (=> d!432857 (not (isEmpty!9705 (t!136395 l1!3136)))))

(assert (=> d!432857 (= (last!325 (t!136395 l1!3136)) lt!512989)))

(declare-fun b!1475633 () Bool)

(assert (=> b!1475633 (= e!942786 (h!20939 (t!136395 l1!3136)))))

(declare-fun b!1475634 () Bool)

(assert (=> b!1475634 (= e!942786 (last!325 (t!136395 (t!136395 l1!3136))))))

(assert (= (and d!432857 c!242575) b!1475633))

(assert (= (and d!432857 (not c!242575)) b!1475634))

(declare-fun m!1721081 () Bool)

(assert (=> d!432857 m!1721081))

(assert (=> d!432857 m!1720219))

(declare-fun m!1721083 () Bool)

(assert (=> b!1475634 m!1721083))

(assert (=> b!1475249 d!432857))

(declare-fun d!432859 () Bool)

(declare-fun res!667007 () Bool)

(declare-fun e!942795 () Bool)

(assert (=> d!432859 (=> res!667007 e!942795)))

(assert (=> d!432859 (= res!667007 ((_ is Nil!15539) rules!4290))))

(assert (=> d!432859 (= (noDuplicateTag!1008 thiss!27374 rules!4290 Nil!15541) e!942795)))

(declare-fun b!1475647 () Bool)

(declare-fun e!942796 () Bool)

(assert (=> b!1475647 (= e!942795 e!942796)))

(declare-fun res!667008 () Bool)

(assert (=> b!1475647 (=> (not res!667008) (not e!942796))))

(declare-fun contains!2933 (List!15607 String!18541) Bool)

(assert (=> b!1475647 (= res!667008 (not (contains!2933 Nil!15541 (tag!3031 (h!20940 rules!4290)))))))

(declare-fun b!1475648 () Bool)

(assert (=> b!1475648 (= e!942796 (noDuplicateTag!1008 thiss!27374 (t!136396 rules!4290) (Cons!15541 (tag!3031 (h!20940 rules!4290)) Nil!15541)))))

(assert (= (and d!432859 (not res!667007)) b!1475647))

(assert (= (and b!1475647 res!667008) b!1475648))

(declare-fun m!1721089 () Bool)

(assert (=> b!1475647 m!1721089))

(declare-fun m!1721091 () Bool)

(assert (=> b!1475648 m!1721091))

(assert (=> b!1475316 d!432859))

(declare-fun d!432867 () Bool)

(assert (=> d!432867 (rulesProduceIndividualToken!1282 thiss!27374 rules!4290 (h!20939 l1!3136))))

(declare-fun lt!512994 () Unit!25281)

(assert (=> d!432867 (= lt!512994 (choose!9042 thiss!27374 rules!4290 l1!3136 (h!20939 l1!3136)))))

(assert (=> d!432867 (not (isEmpty!9706 rules!4290))))

(assert (=> d!432867 (= (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!463 thiss!27374 rules!4290 l1!3136 (h!20939 l1!3136)) lt!512994)))

(declare-fun bs!345576 () Bool)

(assert (= bs!345576 d!432867))

(assert (=> bs!345576 m!1720279))

(declare-fun m!1721093 () Bool)

(assert (=> bs!345576 m!1721093))

(assert (=> bs!345576 m!1720191))

(assert (=> b!1475307 d!432867))

(declare-fun d!432869 () Bool)

(assert (=> d!432869 (rulesProduceIndividualToken!1282 thiss!27374 rules!4290 (h!20939 (t!136395 l1!3136)))))

(declare-fun lt!512995 () Unit!25281)

(assert (=> d!432869 (= lt!512995 (choose!9042 thiss!27374 rules!4290 l1!3136 (h!20939 (t!136395 l1!3136))))))

(assert (=> d!432869 (not (isEmpty!9706 rules!4290))))

(assert (=> d!432869 (= (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!463 thiss!27374 rules!4290 l1!3136 (h!20939 (t!136395 l1!3136))) lt!512995)))

(declare-fun bs!345577 () Bool)

(assert (= bs!345577 d!432869))

(assert (=> bs!345577 m!1720509))

(declare-fun m!1721095 () Bool)

(assert (=> bs!345577 m!1721095))

(assert (=> bs!345577 m!1720191))

(assert (=> b!1475307 d!432869))

(declare-fun d!432871 () Bool)

(declare-fun lt!512998 () Int)

(assert (=> d!432871 (= lt!512998 (size!12596 (list!6188 (charsOf!1584 (h!20939 (t!136395 l1!3136))))))))

(declare-fun size!12601 (Conc!5295) Int)

(assert (=> d!432871 (= lt!512998 (size!12601 (c!242517 (charsOf!1584 (h!20939 (t!136395 l1!3136))))))))

(assert (=> d!432871 (= (size!12598 (charsOf!1584 (h!20939 (t!136395 l1!3136)))) lt!512998)))

(declare-fun bs!345578 () Bool)

(assert (= bs!345578 d!432871))

(assert (=> bs!345578 m!1720497))

(declare-fun m!1721097 () Bool)

(assert (=> bs!345578 m!1721097))

(assert (=> bs!345578 m!1721097))

(declare-fun m!1721099 () Bool)

(assert (=> bs!345578 m!1721099))

(declare-fun m!1721101 () Bool)

(assert (=> bs!345578 m!1721101))

(assert (=> b!1475307 d!432871))

(declare-fun d!432873 () Bool)

(declare-fun lt!513000 () Bool)

(declare-fun e!942800 () Bool)

(assert (=> d!432873 (= lt!513000 e!942800)))

(declare-fun res!667013 () Bool)

(assert (=> d!432873 (=> (not res!667013) (not e!942800))))

(assert (=> d!432873 (= res!667013 (= (list!6189 (_1!8036 (lex!1091 thiss!27374 rules!4290 (print!1126 thiss!27374 (singletonSeq!1305 (h!20939 l1!3136)))))) (list!6189 (singletonSeq!1305 (h!20939 l1!3136)))))))

(declare-fun e!942799 () Bool)

(assert (=> d!432873 (= lt!513000 e!942799)))

(declare-fun res!667011 () Bool)

(assert (=> d!432873 (=> (not res!667011) (not e!942799))))

(declare-fun lt!512999 () tuple2!14300)

(assert (=> d!432873 (= res!667011 (= (size!12597 (_1!8036 lt!512999)) 1))))

(assert (=> d!432873 (= lt!512999 (lex!1091 thiss!27374 rules!4290 (print!1126 thiss!27374 (singletonSeq!1305 (h!20939 l1!3136)))))))

(assert (=> d!432873 (not (isEmpty!9706 rules!4290))))

(assert (=> d!432873 (= (rulesProduceIndividualToken!1282 thiss!27374 rules!4290 (h!20939 l1!3136)) lt!513000)))

(declare-fun b!1475653 () Bool)

(declare-fun res!667012 () Bool)

(assert (=> b!1475653 (=> (not res!667012) (not e!942799))))

(assert (=> b!1475653 (= res!667012 (= (apply!4012 (_1!8036 lt!512999) 0) (h!20939 l1!3136)))))

(declare-fun b!1475654 () Bool)

(assert (=> b!1475654 (= e!942799 (isEmpty!9710 (_2!8036 lt!512999)))))

(declare-fun b!1475655 () Bool)

(assert (=> b!1475655 (= e!942800 (isEmpty!9710 (_2!8036 (lex!1091 thiss!27374 rules!4290 (print!1126 thiss!27374 (singletonSeq!1305 (h!20939 l1!3136)))))))))

(assert (= (and d!432873 res!667011) b!1475653))

(assert (= (and b!1475653 res!667012) b!1475654))

(assert (= (and d!432873 res!667013) b!1475655))

(declare-fun m!1721111 () Bool)

(assert (=> d!432873 m!1721111))

(declare-fun m!1721113 () Bool)

(assert (=> d!432873 m!1721113))

(declare-fun m!1721117 () Bool)

(assert (=> d!432873 m!1721117))

(declare-fun m!1721119 () Bool)

(assert (=> d!432873 m!1721119))

(assert (=> d!432873 m!1721117))

(assert (=> d!432873 m!1721111))

(assert (=> d!432873 m!1720191))

(assert (=> d!432873 m!1721117))

(declare-fun m!1721121 () Bool)

(assert (=> d!432873 m!1721121))

(declare-fun m!1721125 () Bool)

(assert (=> d!432873 m!1721125))

(declare-fun m!1721127 () Bool)

(assert (=> b!1475653 m!1721127))

(declare-fun m!1721129 () Bool)

(assert (=> b!1475654 m!1721129))

(assert (=> b!1475655 m!1721117))

(assert (=> b!1475655 m!1721117))

(assert (=> b!1475655 m!1721111))

(assert (=> b!1475655 m!1721111))

(assert (=> b!1475655 m!1721113))

(declare-fun m!1721131 () Bool)

(assert (=> b!1475655 m!1721131))

(assert (=> b!1475307 d!432873))

(declare-fun d!432885 () Bool)

(declare-fun lt!513005 () Bool)

(declare-fun e!942804 () Bool)

(assert (=> d!432885 (= lt!513005 e!942804)))

(declare-fun res!667019 () Bool)

(assert (=> d!432885 (=> (not res!667019) (not e!942804))))

(assert (=> d!432885 (= res!667019 (= (list!6189 (_1!8036 (lex!1091 thiss!27374 rules!4290 (print!1126 thiss!27374 (singletonSeq!1305 (h!20939 (t!136395 l1!3136))))))) (list!6189 (singletonSeq!1305 (h!20939 (t!136395 l1!3136))))))))

(declare-fun e!942803 () Bool)

(assert (=> d!432885 (= lt!513005 e!942803)))

(declare-fun res!667017 () Bool)

(assert (=> d!432885 (=> (not res!667017) (not e!942803))))

(declare-fun lt!513004 () tuple2!14300)

(assert (=> d!432885 (= res!667017 (= (size!12597 (_1!8036 lt!513004)) 1))))

(assert (=> d!432885 (= lt!513004 (lex!1091 thiss!27374 rules!4290 (print!1126 thiss!27374 (singletonSeq!1305 (h!20939 (t!136395 l1!3136))))))))

(assert (=> d!432885 (not (isEmpty!9706 rules!4290))))

(assert (=> d!432885 (= (rulesProduceIndividualToken!1282 thiss!27374 rules!4290 (h!20939 (t!136395 l1!3136))) lt!513005)))

(declare-fun b!1475659 () Bool)

(declare-fun res!667018 () Bool)

(assert (=> b!1475659 (=> (not res!667018) (not e!942803))))

(assert (=> b!1475659 (= res!667018 (= (apply!4012 (_1!8036 lt!513004) 0) (h!20939 (t!136395 l1!3136))))))

(declare-fun b!1475660 () Bool)

(assert (=> b!1475660 (= e!942803 (isEmpty!9710 (_2!8036 lt!513004)))))

(declare-fun b!1475661 () Bool)

(assert (=> b!1475661 (= e!942804 (isEmpty!9710 (_2!8036 (lex!1091 thiss!27374 rules!4290 (print!1126 thiss!27374 (singletonSeq!1305 (h!20939 (t!136395 l1!3136))))))))))

(assert (= (and d!432885 res!667017) b!1475659))

(assert (= (and b!1475659 res!667018) b!1475660))

(assert (= (and d!432885 res!667019) b!1475661))

(declare-fun m!1721137 () Bool)

(assert (=> d!432885 m!1721137))

(declare-fun m!1721141 () Bool)

(assert (=> d!432885 m!1721141))

(declare-fun m!1721143 () Bool)

(assert (=> d!432885 m!1721143))

(declare-fun m!1721147 () Bool)

(assert (=> d!432885 m!1721147))

(assert (=> d!432885 m!1721143))

(assert (=> d!432885 m!1721137))

(assert (=> d!432885 m!1720191))

(assert (=> d!432885 m!1721143))

(declare-fun m!1721155 () Bool)

(assert (=> d!432885 m!1721155))

(declare-fun m!1721159 () Bool)

(assert (=> d!432885 m!1721159))

(declare-fun m!1721161 () Bool)

(assert (=> b!1475659 m!1721161))

(declare-fun m!1721163 () Bool)

(assert (=> b!1475660 m!1721163))

(assert (=> b!1475661 m!1721143))

(assert (=> b!1475661 m!1721143))

(assert (=> b!1475661 m!1721137))

(assert (=> b!1475661 m!1721137))

(assert (=> b!1475661 m!1721141))

(declare-fun m!1721167 () Bool)

(assert (=> b!1475661 m!1721167))

(assert (=> b!1475307 d!432885))

(declare-fun d!432889 () Bool)

(assert (=> d!432889 (= (separableTokensPredicate!566 thiss!27374 (h!20939 l1!3136) (h!20939 (t!136395 l1!3136)) rules!4290) (not (prefixMatchZipperSequence!368 (rulesRegex!420 thiss!27374 rules!4290) (++!4199 (charsOf!1584 (h!20939 l1!3136)) (singletonSeq!1304 (apply!4011 (charsOf!1584 (h!20939 (t!136395 l1!3136))) 0))))))))

(declare-fun bs!345584 () Bool)

(assert (= bs!345584 d!432889))

(assert (=> bs!345584 m!1720351))

(declare-fun m!1721171 () Bool)

(assert (=> bs!345584 m!1721171))

(declare-fun m!1721173 () Bool)

(assert (=> bs!345584 m!1721173))

(declare-fun m!1721175 () Bool)

(assert (=> bs!345584 m!1721175))

(declare-fun m!1721177 () Bool)

(assert (=> bs!345584 m!1721177))

(assert (=> bs!345584 m!1721171))

(assert (=> bs!345584 m!1721175))

(declare-fun m!1721179 () Bool)

(assert (=> bs!345584 m!1721179))

(assert (=> bs!345584 m!1721177))

(assert (=> bs!345584 m!1720497))

(assert (=> bs!345584 m!1720497))

(assert (=> bs!345584 m!1721179))

(assert (=> bs!345584 m!1720351))

(assert (=> b!1475307 d!432889))

(declare-fun d!432893 () Bool)

(declare-fun lt!513011 () BalanceConc!10530)

(assert (=> d!432893 (= (list!6188 lt!513011) (originalCharacters!3629 (h!20939 (t!136395 l1!3136))))))

(assert (=> d!432893 (= lt!513011 (dynLambda!7052 (toChars!3957 (transformation!2767 (rule!4544 (h!20939 (t!136395 l1!3136))))) (value!88507 (h!20939 (t!136395 l1!3136)))))))

(assert (=> d!432893 (= (charsOf!1584 (h!20939 (t!136395 l1!3136))) lt!513011)))

(declare-fun b_lambda!46159 () Bool)

(assert (=> (not b_lambda!46159) (not d!432893)))

(declare-fun t!136515 () Bool)

(declare-fun tb!84005 () Bool)

(assert (=> (and b!1475102 (= (toChars!3957 (transformation!2767 (h!20940 rules!4290))) (toChars!3957 (transformation!2767 (rule!4544 (h!20939 (t!136395 l1!3136)))))) t!136515) tb!84005))

(declare-fun b!1475665 () Bool)

(declare-fun e!942807 () Bool)

(declare-fun tp!417369 () Bool)

(assert (=> b!1475665 (= e!942807 (and (inv!20749 (c!242517 (dynLambda!7052 (toChars!3957 (transformation!2767 (rule!4544 (h!20939 (t!136395 l1!3136))))) (value!88507 (h!20939 (t!136395 l1!3136)))))) tp!417369))))

(declare-fun result!100954 () Bool)

(assert (=> tb!84005 (= result!100954 (and (inv!20750 (dynLambda!7052 (toChars!3957 (transformation!2767 (rule!4544 (h!20939 (t!136395 l1!3136))))) (value!88507 (h!20939 (t!136395 l1!3136))))) e!942807))))

(assert (= tb!84005 b!1475665))

(declare-fun m!1721209 () Bool)

(assert (=> b!1475665 m!1721209))

(declare-fun m!1721211 () Bool)

(assert (=> tb!84005 m!1721211))

(assert (=> d!432893 t!136515))

(declare-fun b_and!101837 () Bool)

(assert (= b_and!101747 (and (=> t!136515 result!100954) b_and!101837)))

(declare-fun tb!84007 () Bool)

(declare-fun t!136517 () Bool)

(assert (=> (and b!1475465 (= (toChars!3957 (transformation!2767 (h!20940 (t!136396 rules!4290)))) (toChars!3957 (transformation!2767 (rule!4544 (h!20939 (t!136395 l1!3136)))))) t!136517) tb!84007))

(declare-fun result!100956 () Bool)

(assert (= result!100956 result!100954))

(assert (=> d!432893 t!136517))

(declare-fun b_and!101839 () Bool)

(assert (= b_and!101775 (and (=> t!136517 result!100956) b_and!101839)))

(declare-fun t!136519 () Bool)

(declare-fun tb!84009 () Bool)

(assert (=> (and b!1475422 (= (toChars!3957 (transformation!2767 (rule!4544 (h!20939 (t!136395 l1!3136))))) (toChars!3957 (transformation!2767 (rule!4544 (h!20939 (t!136395 l1!3136)))))) t!136519) tb!84009))

(declare-fun result!100958 () Bool)

(assert (= result!100958 result!100954))

(assert (=> d!432893 t!136519))

(declare-fun b_and!101841 () Bool)

(assert (= b_and!101767 (and (=> t!136519 result!100958) b_and!101841)))

(declare-fun t!136521 () Bool)

(declare-fun tb!84011 () Bool)

(assert (=> (and b!1475120 (= (toChars!3957 (transformation!2767 (rule!4544 (h!20939 l1!3136)))) (toChars!3957 (transformation!2767 (rule!4544 (h!20939 (t!136395 l1!3136)))))) t!136521) tb!84011))

(declare-fun result!100960 () Bool)

(assert (= result!100960 result!100954))

(assert (=> d!432893 t!136521))

(declare-fun b_and!101843 () Bool)

(assert (= b_and!101751 (and (=> t!136521 result!100960) b_and!101843)))

(declare-fun tb!84013 () Bool)

(declare-fun t!136523 () Bool)

(assert (=> (and b!1475449 (= (toChars!3957 (transformation!2767 (rule!4544 (h!20939 (t!136395 l2!3105))))) (toChars!3957 (transformation!2767 (rule!4544 (h!20939 (t!136395 l1!3136)))))) t!136523) tb!84013))

(declare-fun result!100962 () Bool)

(assert (= result!100962 result!100954))

(assert (=> d!432893 t!136523))

(declare-fun b_and!101845 () Bool)

(assert (= b_and!101771 (and (=> t!136523 result!100962) b_and!101845)))

(declare-fun t!136525 () Bool)

(declare-fun tb!84015 () Bool)

(assert (=> (and b!1475116 (= (toChars!3957 (transformation!2767 (rule!4544 (h!20939 l2!3105)))) (toChars!3957 (transformation!2767 (rule!4544 (h!20939 (t!136395 l1!3136)))))) t!136525) tb!84015))

(declare-fun result!100964 () Bool)

(assert (= result!100964 result!100954))

(assert (=> d!432893 t!136525))

(declare-fun b_and!101847 () Bool)

(assert (= b_and!101749 (and (=> t!136525 result!100964) b_and!101847)))

(declare-fun m!1721213 () Bool)

(assert (=> d!432893 m!1721213))

(declare-fun m!1721215 () Bool)

(assert (=> d!432893 m!1721215))

(assert (=> b!1475307 d!432893))

(declare-fun d!432899 () Bool)

(declare-fun res!667023 () Bool)

(declare-fun e!942808 () Bool)

(assert (=> d!432899 (=> (not res!667023) (not e!942808))))

(assert (=> d!432899 (= res!667023 (not (isEmpty!9709 (originalCharacters!3629 (h!20939 (t!136395 l1!3136))))))))

(assert (=> d!432899 (= (inv!20746 (h!20939 (t!136395 l1!3136))) e!942808)))

(declare-fun b!1475666 () Bool)

(declare-fun res!667024 () Bool)

(assert (=> b!1475666 (=> (not res!667024) (not e!942808))))

(assert (=> b!1475666 (= res!667024 (= (originalCharacters!3629 (h!20939 (t!136395 l1!3136))) (list!6188 (dynLambda!7052 (toChars!3957 (transformation!2767 (rule!4544 (h!20939 (t!136395 l1!3136))))) (value!88507 (h!20939 (t!136395 l1!3136)))))))))

(declare-fun b!1475667 () Bool)

(assert (=> b!1475667 (= e!942808 (= (size!12591 (h!20939 (t!136395 l1!3136))) (size!12596 (originalCharacters!3629 (h!20939 (t!136395 l1!3136))))))))

(assert (= (and d!432899 res!667023) b!1475666))

(assert (= (and b!1475666 res!667024) b!1475667))

(declare-fun b_lambda!46161 () Bool)

(assert (=> (not b_lambda!46161) (not b!1475666)))

(assert (=> b!1475666 t!136519))

(declare-fun b_and!101849 () Bool)

(assert (= b_and!101841 (and (=> t!136519 result!100958) b_and!101849)))

(assert (=> b!1475666 t!136523))

(declare-fun b_and!101851 () Bool)

(assert (= b_and!101845 (and (=> t!136523 result!100962) b_and!101851)))

(assert (=> b!1475666 t!136525))

(declare-fun b_and!101853 () Bool)

(assert (= b_and!101847 (and (=> t!136525 result!100964) b_and!101853)))

(assert (=> b!1475666 t!136517))

(declare-fun b_and!101855 () Bool)

(assert (= b_and!101839 (and (=> t!136517 result!100956) b_and!101855)))

(assert (=> b!1475666 t!136515))

(declare-fun b_and!101857 () Bool)

(assert (= b_and!101837 (and (=> t!136515 result!100954) b_and!101857)))

(assert (=> b!1475666 t!136521))

(declare-fun b_and!101859 () Bool)

(assert (= b_and!101843 (and (=> t!136521 result!100960) b_and!101859)))

(declare-fun m!1721223 () Bool)

(assert (=> d!432899 m!1721223))

(assert (=> b!1475666 m!1721215))

(assert (=> b!1475666 m!1721215))

(declare-fun m!1721225 () Bool)

(assert (=> b!1475666 m!1721225))

(declare-fun m!1721227 () Bool)

(assert (=> b!1475667 m!1721227))

(assert (=> b!1475419 d!432899))

(declare-fun d!432903 () Bool)

(declare-fun lt!513016 () Bool)

(assert (=> d!432903 (= lt!513016 (isEmpty!9709 (list!6188 (_2!8036 lt!512801))))))

(assert (=> d!432903 (= lt!513016 (isEmpty!9713 (c!242517 (_2!8036 lt!512801))))))

(assert (=> d!432903 (= (isEmpty!9710 (_2!8036 lt!512801)) lt!513016)))

(declare-fun bs!345588 () Bool)

(assert (= bs!345588 d!432903))

(declare-fun m!1721231 () Bool)

(assert (=> bs!345588 m!1721231))

(assert (=> bs!345588 m!1721231))

(declare-fun m!1721233 () Bool)

(assert (=> bs!345588 m!1721233))

(declare-fun m!1721235 () Bool)

(assert (=> bs!345588 m!1721235))

(assert (=> b!1475242 d!432903))

(declare-fun bs!345590 () Bool)

(declare-fun d!432907 () Bool)

(assert (= bs!345590 (and d!432907 d!432589)))

(declare-fun lambda!63646 () Int)

(assert (=> bs!345590 (= lambda!63646 lambda!63615)))

(declare-fun bs!345591 () Bool)

(assert (= bs!345591 (and d!432907 d!432609)))

(assert (=> bs!345591 (= lambda!63646 lambda!63616)))

(declare-fun bs!345592 () Bool)

(assert (= bs!345592 (and d!432907 d!432699)))

(assert (=> bs!345592 (= lambda!63646 lambda!63628)))

(declare-fun bs!345593 () Bool)

(assert (= bs!345593 (and d!432907 d!432701)))

(assert (=> bs!345593 (= lambda!63646 lambda!63629)))

(declare-fun b!1475676 () Bool)

(declare-fun e!942815 () Bool)

(assert (=> b!1475676 (= e!942815 true)))

(declare-fun b!1475675 () Bool)

(declare-fun e!942814 () Bool)

(assert (=> b!1475675 (= e!942814 e!942815)))

(declare-fun b!1475674 () Bool)

(declare-fun e!942813 () Bool)

(assert (=> b!1475674 (= e!942813 e!942814)))

(assert (=> d!432907 e!942813))

(assert (= b!1475675 b!1475676))

(assert (= b!1475674 b!1475675))

(assert (= (and d!432907 ((_ is Cons!15539) rules!4290)) b!1475674))

(assert (=> b!1475676 (< (dynLambda!7049 order!9333 (toValue!4098 (transformation!2767 (h!20940 rules!4290)))) (dynLambda!7050 order!9335 lambda!63646))))

(assert (=> b!1475676 (< (dynLambda!7051 order!9337 (toChars!3957 (transformation!2767 (h!20940 rules!4290)))) (dynLambda!7050 order!9335 lambda!63646))))

(assert (=> d!432907 true))

(declare-fun lt!513018 () Bool)

(assert (=> d!432907 (= lt!513018 (forall!3785 (list!6189 (seqFromList!1728 lt!512748)) lambda!63646))))

(declare-fun e!942810 () Bool)

(assert (=> d!432907 (= lt!513018 e!942810)))

(declare-fun res!667026 () Bool)

(assert (=> d!432907 (=> res!667026 e!942810)))

(assert (=> d!432907 (= res!667026 (not ((_ is Cons!15538) (list!6189 (seqFromList!1728 lt!512748)))))))

(assert (=> d!432907 (not (isEmpty!9706 rules!4290))))

(assert (=> d!432907 (= (rulesProduceEachTokenIndividuallyList!790 thiss!27374 rules!4290 (list!6189 (seqFromList!1728 lt!512748))) lt!513018)))

(declare-fun b!1475668 () Bool)

(declare-fun e!942809 () Bool)

(assert (=> b!1475668 (= e!942810 e!942809)))

(declare-fun res!667025 () Bool)

(assert (=> b!1475668 (=> (not res!667025) (not e!942809))))

(assert (=> b!1475668 (= res!667025 (rulesProduceIndividualToken!1282 thiss!27374 rules!4290 (h!20939 (list!6189 (seqFromList!1728 lt!512748)))))))

(declare-fun b!1475669 () Bool)

(assert (=> b!1475669 (= e!942809 (rulesProduceEachTokenIndividuallyList!790 thiss!27374 rules!4290 (t!136395 (list!6189 (seqFromList!1728 lt!512748)))))))

(assert (= (and d!432907 (not res!667026)) b!1475668))

(assert (= (and b!1475668 res!667025) b!1475669))

(assert (=> d!432907 m!1720609))

(declare-fun m!1721245 () Bool)

(assert (=> d!432907 m!1721245))

(assert (=> d!432907 m!1720191))

(declare-fun m!1721247 () Bool)

(assert (=> b!1475668 m!1721247))

(declare-fun m!1721249 () Bool)

(assert (=> b!1475669 m!1721249))

(assert (=> b!1475395 d!432907))

(assert (=> b!1475395 d!432819))

(declare-fun d!432913 () Bool)

(assert (=> d!432913 true))

(declare-fun lambda!63653 () Int)

(declare-fun order!9343 () Int)

(declare-fun dynLambda!7057 (Int Int) Int)

(assert (=> d!432913 (< (dynLambda!7049 order!9333 (toValue!4098 (transformation!2767 (rule!4544 (h!20939 l1!3136))))) (dynLambda!7057 order!9343 lambda!63653))))

(declare-fun Forall2!473 (Int) Bool)

(assert (=> d!432913 (= (equivClasses!994 (toChars!3957 (transformation!2767 (rule!4544 (h!20939 l1!3136)))) (toValue!4098 (transformation!2767 (rule!4544 (h!20939 l1!3136))))) (Forall2!473 lambda!63653))))

(declare-fun bs!345614 () Bool)

(assert (= bs!345614 d!432913))

(declare-fun m!1721265 () Bool)

(assert (=> bs!345614 m!1721265))

(assert (=> b!1475179 d!432913))

(declare-fun bs!345615 () Bool)

(declare-fun d!432923 () Bool)

(assert (= bs!345615 (and d!432923 d!432913)))

(declare-fun lambda!63654 () Int)

(assert (=> bs!345615 (= (= (toValue!4098 (transformation!2767 (rule!4544 (h!20939 l2!3105)))) (toValue!4098 (transformation!2767 (rule!4544 (h!20939 l1!3136))))) (= lambda!63654 lambda!63653))))

(assert (=> d!432923 true))

(assert (=> d!432923 (< (dynLambda!7049 order!9333 (toValue!4098 (transformation!2767 (rule!4544 (h!20939 l2!3105))))) (dynLambda!7057 order!9343 lambda!63654))))

(assert (=> d!432923 (= (equivClasses!994 (toChars!3957 (transformation!2767 (rule!4544 (h!20939 l2!3105)))) (toValue!4098 (transformation!2767 (rule!4544 (h!20939 l2!3105))))) (Forall2!473 lambda!63654))))

(declare-fun bs!345616 () Bool)

(assert (= bs!345616 d!432923))

(declare-fun m!1721267 () Bool)

(assert (=> bs!345616 m!1721267))

(assert (=> b!1475327 d!432923))

(declare-fun d!432925 () Bool)

(assert (=> d!432925 (= (inv!20742 (tag!3031 (rule!4544 (h!20939 (t!136395 l1!3136))))) (= (mod (str.len (value!88506 (tag!3031 (rule!4544 (h!20939 (t!136395 l1!3136)))))) 2) 0))))

(assert (=> b!1475421 d!432925))

(declare-fun d!432927 () Bool)

(declare-fun res!667035 () Bool)

(declare-fun e!942828 () Bool)

(assert (=> d!432927 (=> (not res!667035) (not e!942828))))

(assert (=> d!432927 (= res!667035 (semiInverseModEq!1035 (toChars!3957 (transformation!2767 (rule!4544 (h!20939 (t!136395 l1!3136))))) (toValue!4098 (transformation!2767 (rule!4544 (h!20939 (t!136395 l1!3136)))))))))

(assert (=> d!432927 (= (inv!20745 (transformation!2767 (rule!4544 (h!20939 (t!136395 l1!3136))))) e!942828)))

(declare-fun b!1475691 () Bool)

(assert (=> b!1475691 (= e!942828 (equivClasses!994 (toChars!3957 (transformation!2767 (rule!4544 (h!20939 (t!136395 l1!3136))))) (toValue!4098 (transformation!2767 (rule!4544 (h!20939 (t!136395 l1!3136)))))))))

(assert (= (and d!432927 res!667035) b!1475691))

(declare-fun m!1721269 () Bool)

(assert (=> d!432927 m!1721269))

(declare-fun m!1721271 () Bool)

(assert (=> b!1475691 m!1721271))

(assert (=> b!1475421 d!432927))

(declare-fun d!432929 () Bool)

(declare-fun res!667036 () Bool)

(declare-fun e!942829 () Bool)

(assert (=> d!432929 (=> res!667036 e!942829)))

(assert (=> d!432929 (= res!667036 ((_ is Nil!15538) l1!3136))))

(assert (=> d!432929 (= (forall!3785 l1!3136 lambda!63615) e!942829)))

(declare-fun b!1475692 () Bool)

(declare-fun e!942830 () Bool)

(assert (=> b!1475692 (= e!942829 e!942830)))

(declare-fun res!667037 () Bool)

(assert (=> b!1475692 (=> (not res!667037) (not e!942830))))

(assert (=> b!1475692 (= res!667037 (dynLambda!7054 lambda!63615 (h!20939 l1!3136)))))

(declare-fun b!1475693 () Bool)

(assert (=> b!1475693 (= e!942830 (forall!3785 (t!136395 l1!3136) lambda!63615))))

(assert (= (and d!432929 (not res!667036)) b!1475692))

(assert (= (and b!1475692 res!667037) b!1475693))

(declare-fun b_lambda!46163 () Bool)

(assert (=> (not b_lambda!46163) (not b!1475692)))

(declare-fun m!1721273 () Bool)

(assert (=> b!1475692 m!1721273))

(declare-fun m!1721275 () Bool)

(assert (=> b!1475693 m!1721275))

(assert (=> d!432589 d!432929))

(assert (=> d!432589 d!432607))

(declare-fun bs!345617 () Bool)

(declare-fun d!432931 () Bool)

(assert (= bs!345617 (and d!432931 d!432913)))

(declare-fun lambda!63655 () Int)

(assert (=> bs!345617 (= (= (toValue!4098 (transformation!2767 (h!20940 rules!4290))) (toValue!4098 (transformation!2767 (rule!4544 (h!20939 l1!3136))))) (= lambda!63655 lambda!63653))))

(declare-fun bs!345618 () Bool)

(assert (= bs!345618 (and d!432931 d!432923)))

(assert (=> bs!345618 (= (= (toValue!4098 (transformation!2767 (h!20940 rules!4290))) (toValue!4098 (transformation!2767 (rule!4544 (h!20939 l2!3105))))) (= lambda!63655 lambda!63654))))

(assert (=> d!432931 true))

(assert (=> d!432931 (< (dynLambda!7049 order!9333 (toValue!4098 (transformation!2767 (h!20940 rules!4290)))) (dynLambda!7057 order!9343 lambda!63655))))

(assert (=> d!432931 (= (equivClasses!994 (toChars!3957 (transformation!2767 (h!20940 rules!4290))) (toValue!4098 (transformation!2767 (h!20940 rules!4290)))) (Forall2!473 lambda!63655))))

(declare-fun bs!345619 () Bool)

(assert (= bs!345619 d!432931))

(declare-fun m!1721277 () Bool)

(assert (=> bs!345619 m!1721277))

(assert (=> b!1475310 d!432931))

(declare-fun bs!345620 () Bool)

(declare-fun d!432933 () Bool)

(assert (= bs!345620 (and d!432933 d!432609)))

(declare-fun lambda!63656 () Int)

(assert (=> bs!345620 (= lambda!63656 lambda!63616)))

(declare-fun bs!345621 () Bool)

(assert (= bs!345621 (and d!432933 d!432907)))

(assert (=> bs!345621 (= lambda!63656 lambda!63646)))

(declare-fun bs!345622 () Bool)

(assert (= bs!345622 (and d!432933 d!432699)))

(assert (=> bs!345622 (= lambda!63656 lambda!63628)))

(declare-fun bs!345623 () Bool)

(assert (= bs!345623 (and d!432933 d!432701)))

(assert (=> bs!345623 (= lambda!63656 lambda!63629)))

(declare-fun bs!345624 () Bool)

(assert (= bs!345624 (and d!432933 d!432589)))

(assert (=> bs!345624 (= lambda!63656 lambda!63615)))

(declare-fun b!1475701 () Bool)

(declare-fun e!942838 () Bool)

(assert (=> b!1475701 (= e!942838 true)))

(declare-fun b!1475700 () Bool)

(declare-fun e!942837 () Bool)

(assert (=> b!1475700 (= e!942837 e!942838)))

(declare-fun b!1475699 () Bool)

(declare-fun e!942836 () Bool)

(assert (=> b!1475699 (= e!942836 e!942837)))

(assert (=> d!432933 e!942836))

(assert (= b!1475700 b!1475701))

(assert (= b!1475699 b!1475700))

(assert (= (and d!432933 ((_ is Cons!15539) rules!4290)) b!1475699))

(assert (=> b!1475701 (< (dynLambda!7049 order!9333 (toValue!4098 (transformation!2767 (h!20940 rules!4290)))) (dynLambda!7050 order!9335 lambda!63656))))

(assert (=> b!1475701 (< (dynLambda!7051 order!9337 (toChars!3957 (transformation!2767 (h!20940 rules!4290)))) (dynLambda!7050 order!9335 lambda!63656))))

(assert (=> d!432933 true))

(declare-fun lt!513025 () Bool)

(assert (=> d!432933 (= lt!513025 (forall!3785 (t!136395 l1!3136) lambda!63656))))

(declare-fun e!942835 () Bool)

(assert (=> d!432933 (= lt!513025 e!942835)))

(declare-fun res!667042 () Bool)

(assert (=> d!432933 (=> res!667042 e!942835)))

(assert (=> d!432933 (= res!667042 (not ((_ is Cons!15538) (t!136395 l1!3136))))))

(assert (=> d!432933 (not (isEmpty!9706 rules!4290))))

(assert (=> d!432933 (= (rulesProduceEachTokenIndividuallyList!790 thiss!27374 rules!4290 (t!136395 l1!3136)) lt!513025)))

(declare-fun b!1475697 () Bool)

(declare-fun e!942834 () Bool)

(assert (=> b!1475697 (= e!942835 e!942834)))

(declare-fun res!667041 () Bool)

(assert (=> b!1475697 (=> (not res!667041) (not e!942834))))

(assert (=> b!1475697 (= res!667041 (rulesProduceIndividualToken!1282 thiss!27374 rules!4290 (h!20939 (t!136395 l1!3136))))))

(declare-fun b!1475698 () Bool)

(assert (=> b!1475698 (= e!942834 (rulesProduceEachTokenIndividuallyList!790 thiss!27374 rules!4290 (t!136395 (t!136395 l1!3136))))))

(assert (= (and d!432933 (not res!667042)) b!1475697))

(assert (= (and b!1475697 res!667041) b!1475698))

(declare-fun m!1721285 () Bool)

(assert (=> d!432933 m!1721285))

(assert (=> d!432933 m!1720191))

(assert (=> b!1475697 m!1720509))

(declare-fun m!1721287 () Bool)

(assert (=> b!1475698 m!1721287))

(assert (=> b!1475152 d!432933))

(declare-fun d!432937 () Bool)

(declare-fun c!242582 () Bool)

(assert (=> d!432937 (= c!242582 ((_ is Node!5295) (c!242517 (dynLambda!7052 (toChars!3957 (transformation!2767 (rule!4544 (h!20939 l2!3105)))) (value!88507 (h!20939 l2!3105))))))))

(declare-fun e!942839 () Bool)

(assert (=> d!432937 (= (inv!20749 (c!242517 (dynLambda!7052 (toChars!3957 (transformation!2767 (rule!4544 (h!20939 l2!3105)))) (value!88507 (h!20939 l2!3105))))) e!942839)))

(declare-fun b!1475702 () Bool)

(assert (=> b!1475702 (= e!942839 (inv!20753 (c!242517 (dynLambda!7052 (toChars!3957 (transformation!2767 (rule!4544 (h!20939 l2!3105)))) (value!88507 (h!20939 l2!3105))))))))

(declare-fun b!1475703 () Bool)

(declare-fun e!942840 () Bool)

(assert (=> b!1475703 (= e!942839 e!942840)))

(declare-fun res!667043 () Bool)

(assert (=> b!1475703 (= res!667043 (not ((_ is Leaf!7880) (c!242517 (dynLambda!7052 (toChars!3957 (transformation!2767 (rule!4544 (h!20939 l2!3105)))) (value!88507 (h!20939 l2!3105)))))))))

(assert (=> b!1475703 (=> res!667043 e!942840)))

(declare-fun b!1475704 () Bool)

(assert (=> b!1475704 (= e!942840 (inv!20754 (c!242517 (dynLambda!7052 (toChars!3957 (transformation!2767 (rule!4544 (h!20939 l2!3105)))) (value!88507 (h!20939 l2!3105))))))))

(assert (= (and d!432937 c!242582) b!1475702))

(assert (= (and d!432937 (not c!242582)) b!1475703))

(assert (= (and b!1475703 (not res!667043)) b!1475704))

(declare-fun m!1721289 () Bool)

(assert (=> b!1475702 m!1721289))

(declare-fun m!1721291 () Bool)

(assert (=> b!1475704 m!1721291))

(assert (=> b!1475322 d!432937))

(declare-fun d!432939 () Bool)

(declare-fun lt!513027 () Bool)

(declare-fun e!942842 () Bool)

(assert (=> d!432939 (= lt!513027 e!942842)))

(declare-fun res!667046 () Bool)

(assert (=> d!432939 (=> (not res!667046) (not e!942842))))

(assert (=> d!432939 (= res!667046 (= (list!6189 (_1!8036 (lex!1091 thiss!27374 rules!4290 (print!1126 thiss!27374 (singletonSeq!1305 (h!20939 lt!512748)))))) (list!6189 (singletonSeq!1305 (h!20939 lt!512748)))))))

(declare-fun e!942841 () Bool)

(assert (=> d!432939 (= lt!513027 e!942841)))

(declare-fun res!667044 () Bool)

(assert (=> d!432939 (=> (not res!667044) (not e!942841))))

(declare-fun lt!513026 () tuple2!14300)

(assert (=> d!432939 (= res!667044 (= (size!12597 (_1!8036 lt!513026)) 1))))

(assert (=> d!432939 (= lt!513026 (lex!1091 thiss!27374 rules!4290 (print!1126 thiss!27374 (singletonSeq!1305 (h!20939 lt!512748)))))))

(assert (=> d!432939 (not (isEmpty!9706 rules!4290))))

(assert (=> d!432939 (= (rulesProduceIndividualToken!1282 thiss!27374 rules!4290 (h!20939 lt!512748)) lt!513027)))

(declare-fun b!1475705 () Bool)

(declare-fun res!667045 () Bool)

(assert (=> b!1475705 (=> (not res!667045) (not e!942841))))

(assert (=> b!1475705 (= res!667045 (= (apply!4012 (_1!8036 lt!513026) 0) (h!20939 lt!512748)))))

(declare-fun b!1475706 () Bool)

(assert (=> b!1475706 (= e!942841 (isEmpty!9710 (_2!8036 lt!513026)))))

(declare-fun b!1475707 () Bool)

(assert (=> b!1475707 (= e!942842 (isEmpty!9710 (_2!8036 (lex!1091 thiss!27374 rules!4290 (print!1126 thiss!27374 (singletonSeq!1305 (h!20939 lt!512748)))))))))

(assert (= (and d!432939 res!667044) b!1475705))

(assert (= (and b!1475705 res!667045) b!1475706))

(assert (= (and d!432939 res!667046) b!1475707))

(declare-fun m!1721293 () Bool)

(assert (=> d!432939 m!1721293))

(declare-fun m!1721295 () Bool)

(assert (=> d!432939 m!1721295))

(declare-fun m!1721297 () Bool)

(assert (=> d!432939 m!1721297))

(declare-fun m!1721299 () Bool)

(assert (=> d!432939 m!1721299))

(assert (=> d!432939 m!1721297))

(assert (=> d!432939 m!1721293))

(assert (=> d!432939 m!1720191))

(assert (=> d!432939 m!1721297))

(declare-fun m!1721301 () Bool)

(assert (=> d!432939 m!1721301))

(declare-fun m!1721303 () Bool)

(assert (=> d!432939 m!1721303))

(declare-fun m!1721305 () Bool)

(assert (=> b!1475705 m!1721305))

(declare-fun m!1721307 () Bool)

(assert (=> b!1475706 m!1721307))

(assert (=> b!1475707 m!1721297))

(assert (=> b!1475707 m!1721297))

(assert (=> b!1475707 m!1721293))

(assert (=> b!1475707 m!1721293))

(assert (=> b!1475707 m!1721295))

(declare-fun m!1721309 () Bool)

(assert (=> b!1475707 m!1721309))

(assert (=> b!1475399 d!432939))

(declare-fun b!1475708 () Bool)

(declare-fun e!942845 () Bool)

(assert (=> b!1475708 (= e!942845 (inv!15 (value!88507 (h!20939 (t!136395 l2!3105)))))))

(declare-fun b!1475709 () Bool)

(declare-fun e!942843 () Bool)

(assert (=> b!1475709 (= e!942843 (inv!16 (value!88507 (h!20939 (t!136395 l2!3105)))))))

(declare-fun b!1475710 () Bool)

(declare-fun e!942844 () Bool)

(assert (=> b!1475710 (= e!942844 (inv!17 (value!88507 (h!20939 (t!136395 l2!3105)))))))

(declare-fun d!432941 () Bool)

(declare-fun c!242584 () Bool)

(assert (=> d!432941 (= c!242584 ((_ is IntegerValue!8571) (value!88507 (h!20939 (t!136395 l2!3105)))))))

(assert (=> d!432941 (= (inv!21 (value!88507 (h!20939 (t!136395 l2!3105)))) e!942843)))

(declare-fun b!1475711 () Bool)

(declare-fun res!667047 () Bool)

(assert (=> b!1475711 (=> res!667047 e!942845)))

(assert (=> b!1475711 (= res!667047 (not ((_ is IntegerValue!8573) (value!88507 (h!20939 (t!136395 l2!3105))))))))

(assert (=> b!1475711 (= e!942844 e!942845)))

(declare-fun b!1475712 () Bool)

(assert (=> b!1475712 (= e!942843 e!942844)))

(declare-fun c!242583 () Bool)

(assert (=> b!1475712 (= c!242583 ((_ is IntegerValue!8572) (value!88507 (h!20939 (t!136395 l2!3105)))))))

(assert (= (and d!432941 c!242584) b!1475709))

(assert (= (and d!432941 (not c!242584)) b!1475712))

(assert (= (and b!1475712 c!242583) b!1475710))

(assert (= (and b!1475712 (not c!242583)) b!1475711))

(assert (= (and b!1475711 (not res!667047)) b!1475708))

(declare-fun m!1721311 () Bool)

(assert (=> b!1475708 m!1721311))

(declare-fun m!1721313 () Bool)

(assert (=> b!1475709 m!1721313))

(declare-fun m!1721315 () Bool)

(assert (=> b!1475710 m!1721315))

(assert (=> b!1475447 d!432941))

(declare-fun d!432943 () Bool)

(declare-fun c!242587 () Bool)

(assert (=> d!432943 (= c!242587 ((_ is Nil!15538) lt!512856))))

(declare-fun e!942848 () (InoxSet Token!5196))

(assert (=> d!432943 (= (content!2269 lt!512856) e!942848)))

(declare-fun b!1475717 () Bool)

(assert (=> b!1475717 (= e!942848 ((as const (Array Token!5196 Bool)) false))))

(declare-fun b!1475718 () Bool)

(assert (=> b!1475718 (= e!942848 ((_ map or) (store ((as const (Array Token!5196 Bool)) false) (h!20939 lt!512856) true) (content!2269 (t!136395 lt!512856))))))

(assert (= (and d!432943 c!242587) b!1475717))

(assert (= (and d!432943 (not c!242587)) b!1475718))

(declare-fun m!1721317 () Bool)

(assert (=> b!1475718 m!1721317))

(declare-fun m!1721319 () Bool)

(assert (=> b!1475718 m!1721319))

(assert (=> d!432693 d!432943))

(declare-fun d!432945 () Bool)

(declare-fun c!242588 () Bool)

(assert (=> d!432945 (= c!242588 ((_ is Nil!15538) l1!3136))))

(declare-fun e!942849 () (InoxSet Token!5196))

(assert (=> d!432945 (= (content!2269 l1!3136) e!942849)))

(declare-fun b!1475719 () Bool)

(assert (=> b!1475719 (= e!942849 ((as const (Array Token!5196 Bool)) false))))

(declare-fun b!1475720 () Bool)

(assert (=> b!1475720 (= e!942849 ((_ map or) (store ((as const (Array Token!5196 Bool)) false) (h!20939 l1!3136) true) (content!2269 (t!136395 l1!3136))))))

(assert (= (and d!432945 c!242588) b!1475719))

(assert (= (and d!432945 (not c!242588)) b!1475720))

(declare-fun m!1721321 () Bool)

(assert (=> b!1475720 m!1721321))

(declare-fun m!1721323 () Bool)

(assert (=> b!1475720 m!1721323))

(assert (=> d!432693 d!432945))

(declare-fun d!432947 () Bool)

(declare-fun c!242589 () Bool)

(assert (=> d!432947 (= c!242589 ((_ is Nil!15538) l2!3105))))

(declare-fun e!942850 () (InoxSet Token!5196))

(assert (=> d!432947 (= (content!2269 l2!3105) e!942850)))

(declare-fun b!1475721 () Bool)

(assert (=> b!1475721 (= e!942850 ((as const (Array Token!5196 Bool)) false))))

(declare-fun b!1475722 () Bool)

(assert (=> b!1475722 (= e!942850 ((_ map or) (store ((as const (Array Token!5196 Bool)) false) (h!20939 l2!3105) true) (content!2269 (t!136395 l2!3105))))))

(assert (= (and d!432947 c!242589) b!1475721))

(assert (= (and d!432947 (not c!242589)) b!1475722))

(declare-fun m!1721325 () Bool)

(assert (=> b!1475722 m!1721325))

(declare-fun m!1721327 () Bool)

(assert (=> b!1475722 m!1721327))

(assert (=> d!432693 d!432947))

(declare-fun d!432949 () Bool)

(assert (=> d!432949 true))

(declare-fun order!9345 () Int)

(declare-fun lambda!63659 () Int)

(declare-fun dynLambda!7058 (Int Int) Int)

(assert (=> d!432949 (< (dynLambda!7051 order!9337 (toChars!3957 (transformation!2767 (rule!4544 (h!20939 l1!3136))))) (dynLambda!7058 order!9345 lambda!63659))))

(assert (=> d!432949 true))

(assert (=> d!432949 (< (dynLambda!7049 order!9333 (toValue!4098 (transformation!2767 (rule!4544 (h!20939 l1!3136))))) (dynLambda!7058 order!9345 lambda!63659))))

(declare-fun Forall!571 (Int) Bool)

(assert (=> d!432949 (= (semiInverseModEq!1035 (toChars!3957 (transformation!2767 (rule!4544 (h!20939 l1!3136)))) (toValue!4098 (transformation!2767 (rule!4544 (h!20939 l1!3136))))) (Forall!571 lambda!63659))))

(declare-fun bs!345625 () Bool)

(assert (= bs!345625 d!432949))

(declare-fun m!1721329 () Bool)

(assert (=> bs!345625 m!1721329))

(assert (=> d!432603 d!432949))

(declare-fun d!432951 () Bool)

(assert (=> d!432951 (= (inv!17 (value!88507 (h!20939 l2!3105))) (= (charsToBigInt!1 (text!20447 (value!88507 (h!20939 l2!3105)))) (value!88499 (value!88507 (h!20939 l2!3105)))))))

(declare-fun bs!345626 () Bool)

(assert (= bs!345626 d!432951))

(declare-fun m!1721331 () Bool)

(assert (=> bs!345626 m!1721331))

(assert (=> b!1475406 d!432951))

(declare-fun d!432953 () Bool)

(declare-fun charsToBigInt!0 (List!15602 Int) Int)

(assert (=> d!432953 (= (inv!15 (value!88507 (h!20939 l2!3105))) (= (charsToBigInt!0 (text!20448 (value!88507 (h!20939 l2!3105))) 0) (value!88502 (value!88507 (h!20939 l2!3105)))))))

(declare-fun bs!345627 () Bool)

(assert (= bs!345627 d!432953))

(declare-fun m!1721333 () Bool)

(assert (=> bs!345627 m!1721333))

(assert (=> b!1475404 d!432953))

(declare-fun d!432955 () Bool)

(declare-fun res!667048 () Bool)

(declare-fun e!942851 () Bool)

(assert (=> d!432955 (=> res!667048 e!942851)))

(assert (=> d!432955 (= res!667048 ((_ is Nil!15538) l2!3105))))

(assert (=> d!432955 (= (forall!3785 l2!3105 lambda!63616) e!942851)))

(declare-fun b!1475727 () Bool)

(declare-fun e!942852 () Bool)

(assert (=> b!1475727 (= e!942851 e!942852)))

(declare-fun res!667049 () Bool)

(assert (=> b!1475727 (=> (not res!667049) (not e!942852))))

(assert (=> b!1475727 (= res!667049 (dynLambda!7054 lambda!63616 (h!20939 l2!3105)))))

(declare-fun b!1475728 () Bool)

(assert (=> b!1475728 (= e!942852 (forall!3785 (t!136395 l2!3105) lambda!63616))))

(assert (= (and d!432955 (not res!667048)) b!1475727))

(assert (= (and b!1475727 res!667049) b!1475728))

(declare-fun b_lambda!46165 () Bool)

(assert (=> (not b_lambda!46165) (not b!1475727)))

(declare-fun m!1721335 () Bool)

(assert (=> b!1475727 m!1721335))

(declare-fun m!1721337 () Bool)

(assert (=> b!1475728 m!1721337))

(assert (=> d!432609 d!432955))

(assert (=> d!432609 d!432607))

(declare-fun d!432957 () Bool)

(assert (=> d!432957 (= (list!6188 (dynLambda!7052 (toChars!3957 (transformation!2767 (rule!4544 (h!20939 l1!3136)))) (value!88507 (h!20939 l1!3136)))) (list!6193 (c!242517 (dynLambda!7052 (toChars!3957 (transformation!2767 (rule!4544 (h!20939 l1!3136)))) (value!88507 (h!20939 l1!3136))))))))

(declare-fun bs!345628 () Bool)

(assert (= bs!345628 d!432957))

(declare-fun m!1721339 () Bool)

(assert (=> bs!345628 m!1721339))

(assert (=> b!1475170 d!432957))

(declare-fun d!432959 () Bool)

(assert (=> d!432959 (= (isEmpty!9709 (originalCharacters!3629 (h!20939 l2!3105))) ((_ is Nil!15537) (originalCharacters!3629 (h!20939 l2!3105))))))

(assert (=> d!432685 d!432959))

(declare-fun e!942854 () Bool)

(declare-fun b!1475732 () Bool)

(declare-fun lt!513028 () List!15604)

(assert (=> b!1475732 (= e!942854 (or (not (= l2!3105 Nil!15538)) (= lt!513028 (t!136395 l1!3136))))))

(declare-fun d!432961 () Bool)

(assert (=> d!432961 e!942854))

(declare-fun res!667050 () Bool)

(assert (=> d!432961 (=> (not res!667050) (not e!942854))))

(assert (=> d!432961 (= res!667050 (= (content!2269 lt!513028) ((_ map or) (content!2269 (t!136395 l1!3136)) (content!2269 l2!3105))))))

(declare-fun e!942853 () List!15604)

(assert (=> d!432961 (= lt!513028 e!942853)))

(declare-fun c!242590 () Bool)

(assert (=> d!432961 (= c!242590 ((_ is Nil!15538) (t!136395 l1!3136)))))

(assert (=> d!432961 (= (++!4197 (t!136395 l1!3136) l2!3105) lt!513028)))

(declare-fun b!1475730 () Bool)

(assert (=> b!1475730 (= e!942853 (Cons!15538 (h!20939 (t!136395 l1!3136)) (++!4197 (t!136395 (t!136395 l1!3136)) l2!3105)))))

(declare-fun b!1475729 () Bool)

(assert (=> b!1475729 (= e!942853 l2!3105)))

(declare-fun b!1475731 () Bool)

(declare-fun res!667051 () Bool)

(assert (=> b!1475731 (=> (not res!667051) (not e!942854))))

(assert (=> b!1475731 (= res!667051 (= (size!12599 lt!513028) (+ (size!12599 (t!136395 l1!3136)) (size!12599 l2!3105))))))

(assert (= (and d!432961 c!242590) b!1475729))

(assert (= (and d!432961 (not c!242590)) b!1475730))

(assert (= (and d!432961 res!667050) b!1475731))

(assert (= (and b!1475731 res!667051) b!1475732))

(declare-fun m!1721341 () Bool)

(assert (=> d!432961 m!1721341))

(assert (=> d!432961 m!1721323))

(assert (=> d!432961 m!1720581))

(declare-fun m!1721343 () Bool)

(assert (=> b!1475730 m!1721343))

(declare-fun m!1721345 () Bool)

(assert (=> b!1475731 m!1721345))

(declare-fun m!1721347 () Bool)

(assert (=> b!1475731 m!1721347))

(assert (=> b!1475731 m!1720589))

(assert (=> b!1475357 d!432961))

(declare-fun d!432963 () Bool)

(assert (=> d!432963 (= (isEmpty!9709 (originalCharacters!3629 (h!20939 l1!3136))) ((_ is Nil!15537) (originalCharacters!3629 (h!20939 l1!3136))))))

(assert (=> d!432597 d!432963))

(declare-fun lt!513031 () BalanceConc!10530)

(declare-fun b!1475744 () Bool)

(declare-fun e!942857 () Bool)

(declare-fun ++!4202 (List!15603 List!15603) List!15603)

(assert (=> b!1475744 (= e!942857 (= (list!6188 lt!513031) (++!4202 (list!6188 (charsOf!1584 lt!512747)) (list!6188 (singletonSeq!1304 (apply!4011 (charsOf!1584 lt!512749) 0))))))))

(declare-fun b!1475743 () Bool)

(declare-fun res!667062 () Bool)

(assert (=> b!1475743 (=> (not res!667062) (not e!942857))))

(declare-fun height!786 (Conc!5295) Int)

(declare-fun ++!4203 (Conc!5295 Conc!5295) Conc!5295)

(declare-fun max!0 (Int Int) Int)

(assert (=> b!1475743 (= res!667062 (>= (height!786 (++!4203 (c!242517 (charsOf!1584 lt!512747)) (c!242517 (singletonSeq!1304 (apply!4011 (charsOf!1584 lt!512749) 0))))) (max!0 (height!786 (c!242517 (charsOf!1584 lt!512747))) (height!786 (c!242517 (singletonSeq!1304 (apply!4011 (charsOf!1584 lt!512749) 0)))))))))

(declare-fun b!1475741 () Bool)

(declare-fun res!667060 () Bool)

(assert (=> b!1475741 (=> (not res!667060) (not e!942857))))

(assert (=> b!1475741 (= res!667060 (isBalanced!1582 (++!4203 (c!242517 (charsOf!1584 lt!512747)) (c!242517 (singletonSeq!1304 (apply!4011 (charsOf!1584 lt!512749) 0))))))))

(declare-fun b!1475742 () Bool)

(declare-fun res!667061 () Bool)

(assert (=> b!1475742 (=> (not res!667061) (not e!942857))))

(assert (=> b!1475742 (= res!667061 (<= (height!786 (++!4203 (c!242517 (charsOf!1584 lt!512747)) (c!242517 (singletonSeq!1304 (apply!4011 (charsOf!1584 lt!512749) 0))))) (+ (max!0 (height!786 (c!242517 (charsOf!1584 lt!512747))) (height!786 (c!242517 (singletonSeq!1304 (apply!4011 (charsOf!1584 lt!512749) 0))))) 1)))))

(declare-fun d!432965 () Bool)

(assert (=> d!432965 e!942857))

(declare-fun res!667063 () Bool)

(assert (=> d!432965 (=> (not res!667063) (not e!942857))))

(declare-fun appendAssocInst!345 (Conc!5295 Conc!5295) Bool)

(assert (=> d!432965 (= res!667063 (appendAssocInst!345 (c!242517 (charsOf!1584 lt!512747)) (c!242517 (singletonSeq!1304 (apply!4011 (charsOf!1584 lt!512749) 0)))))))

(assert (=> d!432965 (= lt!513031 (BalanceConc!10531 (++!4203 (c!242517 (charsOf!1584 lt!512747)) (c!242517 (singletonSeq!1304 (apply!4011 (charsOf!1584 lt!512749) 0))))))))

(assert (=> d!432965 (= (++!4199 (charsOf!1584 lt!512747) (singletonSeq!1304 (apply!4011 (charsOf!1584 lt!512749) 0))) lt!513031)))

(assert (= (and d!432965 res!667063) b!1475741))

(assert (= (and b!1475741 res!667060) b!1475742))

(assert (= (and b!1475742 res!667061) b!1475743))

(assert (= (and b!1475743 res!667062) b!1475744))

(declare-fun m!1721349 () Bool)

(assert (=> d!432965 m!1721349))

(declare-fun m!1721351 () Bool)

(assert (=> d!432965 m!1721351))

(assert (=> b!1475742 m!1721351))

(declare-fun m!1721353 () Bool)

(assert (=> b!1475742 m!1721353))

(assert (=> b!1475742 m!1721351))

(declare-fun m!1721355 () Bool)

(assert (=> b!1475742 m!1721355))

(assert (=> b!1475742 m!1721353))

(declare-fun m!1721357 () Bool)

(assert (=> b!1475742 m!1721357))

(declare-fun m!1721359 () Bool)

(assert (=> b!1475742 m!1721359))

(assert (=> b!1475742 m!1721357))

(assert (=> b!1475743 m!1721351))

(assert (=> b!1475743 m!1721353))

(assert (=> b!1475743 m!1721351))

(assert (=> b!1475743 m!1721355))

(assert (=> b!1475743 m!1721353))

(assert (=> b!1475743 m!1721357))

(assert (=> b!1475743 m!1721359))

(assert (=> b!1475743 m!1721357))

(assert (=> b!1475741 m!1721351))

(assert (=> b!1475741 m!1721351))

(declare-fun m!1721361 () Bool)

(assert (=> b!1475741 m!1721361))

(declare-fun m!1721363 () Bool)

(assert (=> b!1475744 m!1721363))

(assert (=> b!1475744 m!1720357))

(declare-fun m!1721365 () Bool)

(assert (=> b!1475744 m!1721365))

(assert (=> b!1475744 m!1720359))

(declare-fun m!1721367 () Bool)

(assert (=> b!1475744 m!1721367))

(assert (=> b!1475744 m!1721365))

(assert (=> b!1475744 m!1721367))

(declare-fun m!1721369 () Bool)

(assert (=> b!1475744 m!1721369))

(assert (=> d!432611 d!432965))

(declare-fun d!432967 () Bool)

(declare-fun lt!513034 () C!8340)

(declare-fun apply!4017 (List!15603 Int) C!8340)

(assert (=> d!432967 (= lt!513034 (apply!4017 (list!6188 (charsOf!1584 lt!512749)) 0))))

(declare-fun apply!4018 (Conc!5295 Int) C!8340)

(assert (=> d!432967 (= lt!513034 (apply!4018 (c!242517 (charsOf!1584 lt!512749)) 0))))

(declare-fun e!942860 () Bool)

(assert (=> d!432967 e!942860))

(declare-fun res!667066 () Bool)

(assert (=> d!432967 (=> (not res!667066) (not e!942860))))

(assert (=> d!432967 (= res!667066 (<= 0 0))))

(assert (=> d!432967 (= (apply!4011 (charsOf!1584 lt!512749) 0) lt!513034)))

(declare-fun b!1475747 () Bool)

(assert (=> b!1475747 (= e!942860 (< 0 (size!12598 (charsOf!1584 lt!512749))))))

(assert (= (and d!432967 res!667066) b!1475747))

(assert (=> d!432967 m!1720363))

(declare-fun m!1721371 () Bool)

(assert (=> d!432967 m!1721371))

(assert (=> d!432967 m!1721371))

(declare-fun m!1721373 () Bool)

(assert (=> d!432967 m!1721373))

(declare-fun m!1721375 () Bool)

(assert (=> d!432967 m!1721375))

(assert (=> b!1475747 m!1720363))

(declare-fun m!1721377 () Bool)

(assert (=> b!1475747 m!1721377))

(assert (=> d!432611 d!432967))

(declare-fun d!432969 () Bool)

(declare-fun lt!513035 () BalanceConc!10530)

(assert (=> d!432969 (= (list!6188 lt!513035) (originalCharacters!3629 lt!512749))))

(assert (=> d!432969 (= lt!513035 (dynLambda!7052 (toChars!3957 (transformation!2767 (rule!4544 lt!512749))) (value!88507 lt!512749)))))

(assert (=> d!432969 (= (charsOf!1584 lt!512749) lt!513035)))

(declare-fun b_lambda!46167 () Bool)

(assert (=> (not b_lambda!46167) (not d!432969)))

(declare-fun tb!84017 () Bool)

(declare-fun t!136527 () Bool)

(assert (=> (and b!1475422 (= (toChars!3957 (transformation!2767 (rule!4544 (h!20939 (t!136395 l1!3136))))) (toChars!3957 (transformation!2767 (rule!4544 lt!512749)))) t!136527) tb!84017))

(declare-fun b!1475748 () Bool)

(declare-fun e!942861 () Bool)

(declare-fun tp!417370 () Bool)

(assert (=> b!1475748 (= e!942861 (and (inv!20749 (c!242517 (dynLambda!7052 (toChars!3957 (transformation!2767 (rule!4544 lt!512749))) (value!88507 lt!512749)))) tp!417370))))

(declare-fun result!100966 () Bool)

(assert (=> tb!84017 (= result!100966 (and (inv!20750 (dynLambda!7052 (toChars!3957 (transformation!2767 (rule!4544 lt!512749))) (value!88507 lt!512749))) e!942861))))

(assert (= tb!84017 b!1475748))

(declare-fun m!1721379 () Bool)

(assert (=> b!1475748 m!1721379))

(declare-fun m!1721381 () Bool)

(assert (=> tb!84017 m!1721381))

(assert (=> d!432969 t!136527))

(declare-fun b_and!101861 () Bool)

(assert (= b_and!101849 (and (=> t!136527 result!100966) b_and!101861)))

(declare-fun tb!84019 () Bool)

(declare-fun t!136529 () Bool)

(assert (=> (and b!1475116 (= (toChars!3957 (transformation!2767 (rule!4544 (h!20939 l2!3105)))) (toChars!3957 (transformation!2767 (rule!4544 lt!512749)))) t!136529) tb!84019))

(declare-fun result!100968 () Bool)

(assert (= result!100968 result!100966))

(assert (=> d!432969 t!136529))

(declare-fun b_and!101863 () Bool)

(assert (= b_and!101853 (and (=> t!136529 result!100968) b_and!101863)))

(declare-fun tb!84021 () Bool)

(declare-fun t!136531 () Bool)

(assert (=> (and b!1475465 (= (toChars!3957 (transformation!2767 (h!20940 (t!136396 rules!4290)))) (toChars!3957 (transformation!2767 (rule!4544 lt!512749)))) t!136531) tb!84021))

(declare-fun result!100970 () Bool)

(assert (= result!100970 result!100966))

(assert (=> d!432969 t!136531))

(declare-fun b_and!101865 () Bool)

(assert (= b_and!101855 (and (=> t!136531 result!100970) b_and!101865)))

(declare-fun t!136533 () Bool)

(declare-fun tb!84023 () Bool)

(assert (=> (and b!1475449 (= (toChars!3957 (transformation!2767 (rule!4544 (h!20939 (t!136395 l2!3105))))) (toChars!3957 (transformation!2767 (rule!4544 lt!512749)))) t!136533) tb!84023))

(declare-fun result!100972 () Bool)

(assert (= result!100972 result!100966))

(assert (=> d!432969 t!136533))

(declare-fun b_and!101867 () Bool)

(assert (= b_and!101851 (and (=> t!136533 result!100972) b_and!101867)))

(declare-fun t!136535 () Bool)

(declare-fun tb!84025 () Bool)

(assert (=> (and b!1475120 (= (toChars!3957 (transformation!2767 (rule!4544 (h!20939 l1!3136)))) (toChars!3957 (transformation!2767 (rule!4544 lt!512749)))) t!136535) tb!84025))

(declare-fun result!100974 () Bool)

(assert (= result!100974 result!100966))

(assert (=> d!432969 t!136535))

(declare-fun b_and!101869 () Bool)

(assert (= b_and!101859 (and (=> t!136535 result!100974) b_and!101869)))

(declare-fun tb!84027 () Bool)

(declare-fun t!136537 () Bool)

(assert (=> (and b!1475102 (= (toChars!3957 (transformation!2767 (h!20940 rules!4290))) (toChars!3957 (transformation!2767 (rule!4544 lt!512749)))) t!136537) tb!84027))

(declare-fun result!100976 () Bool)

(assert (= result!100976 result!100966))

(assert (=> d!432969 t!136537))

(declare-fun b_and!101871 () Bool)

(assert (= b_and!101857 (and (=> t!136537 result!100976) b_and!101871)))

(declare-fun m!1721383 () Bool)

(assert (=> d!432969 m!1721383))

(declare-fun m!1721385 () Bool)

(assert (=> d!432969 m!1721385))

(assert (=> d!432611 d!432969))

(declare-fun d!432971 () Bool)

(declare-fun lt!513038 () Unit!25281)

(declare-fun lemma!183 (List!15605 LexerInterface!2423 List!15605) Unit!25281)

(assert (=> d!432971 (= lt!513038 (lemma!183 rules!4290 thiss!27374 rules!4290))))

(declare-fun lambda!63662 () Int)

(declare-datatypes ((List!15610 0))(
  ( (Nil!15544) (Cons!15544 (h!20945 Regex!4081) (t!136639 List!15610)) )
))
(declare-fun generalisedUnion!191 (List!15610) Regex!4081)

(declare-fun map!3352 (List!15605 Int) List!15610)

(assert (=> d!432971 (= (rulesRegex!420 thiss!27374 rules!4290) (generalisedUnion!191 (map!3352 rules!4290 lambda!63662)))))

(declare-fun bs!345629 () Bool)

(assert (= bs!345629 d!432971))

(declare-fun m!1721387 () Bool)

(assert (=> bs!345629 m!1721387))

(declare-fun m!1721389 () Bool)

(assert (=> bs!345629 m!1721389))

(assert (=> bs!345629 m!1721389))

(declare-fun m!1721391 () Bool)

(assert (=> bs!345629 m!1721391))

(assert (=> d!432611 d!432971))

(declare-fun lt!513065 () Bool)

(declare-fun d!432973 () Bool)

(declare-fun prefixMatch!324 (Regex!4081 List!15603) Bool)

(assert (=> d!432973 (= lt!513065 (prefixMatch!324 (rulesRegex!420 thiss!27374 rules!4290) (list!6188 (++!4199 (charsOf!1584 lt!512747) (singletonSeq!1304 (apply!4011 (charsOf!1584 lt!512749) 0))))))))

(declare-datatypes ((Context!1258 0))(
  ( (Context!1259 (exprs!1129 List!15610)) )
))
(declare-fun prefixMatchZipperSequence!370 ((InoxSet Context!1258) BalanceConc!10530 Int) Bool)

(declare-fun focus!120 (Regex!4081) (InoxSet Context!1258))

(assert (=> d!432973 (= lt!513065 (prefixMatchZipperSequence!370 (focus!120 (rulesRegex!420 thiss!27374 rules!4290)) (++!4199 (charsOf!1584 lt!512747) (singletonSeq!1304 (apply!4011 (charsOf!1584 lt!512749) 0))) 0))))

(declare-fun lt!513061 () Unit!25281)

(declare-fun lt!513060 () Unit!25281)

(assert (=> d!432973 (= lt!513061 lt!513060)))

(declare-fun lt!513064 () (InoxSet Context!1258))

(declare-fun lt!513063 () List!15603)

(declare-fun prefixMatchZipper!100 ((InoxSet Context!1258) List!15603) Bool)

(assert (=> d!432973 (= (prefixMatch!324 (rulesRegex!420 thiss!27374 rules!4290) lt!513063) (prefixMatchZipper!100 lt!513064 lt!513063))))

(declare-datatypes ((List!15611 0))(
  ( (Nil!15545) (Cons!15545 (h!20946 Context!1258) (t!136640 List!15611)) )
))
(declare-fun lt!513067 () List!15611)

(declare-fun prefixMatchZipperRegexEquiv!100 ((InoxSet Context!1258) List!15611 Regex!4081 List!15603) Unit!25281)

(assert (=> d!432973 (= lt!513060 (prefixMatchZipperRegexEquiv!100 lt!513064 lt!513067 (rulesRegex!420 thiss!27374 rules!4290) lt!513063))))

(assert (=> d!432973 (= lt!513063 (list!6188 (++!4199 (charsOf!1584 lt!512747) (singletonSeq!1304 (apply!4011 (charsOf!1584 lt!512749) 0)))))))

(declare-fun toList!784 ((InoxSet Context!1258)) List!15611)

(assert (=> d!432973 (= lt!513067 (toList!784 (focus!120 (rulesRegex!420 thiss!27374 rules!4290))))))

(assert (=> d!432973 (= lt!513064 (focus!120 (rulesRegex!420 thiss!27374 rules!4290)))))

(declare-fun lt!513066 () Unit!25281)

(declare-fun lt!513062 () Unit!25281)

(assert (=> d!432973 (= lt!513066 lt!513062)))

(declare-fun lt!513068 () Int)

(declare-fun lt!513059 () (InoxSet Context!1258))

(declare-fun dropList!492 (BalanceConc!10530 Int) List!15603)

(assert (=> d!432973 (= (prefixMatchZipper!100 lt!513059 (dropList!492 (++!4199 (charsOf!1584 lt!512747) (singletonSeq!1304 (apply!4011 (charsOf!1584 lt!512749) 0))) lt!513068)) (prefixMatchZipperSequence!370 lt!513059 (++!4199 (charsOf!1584 lt!512747) (singletonSeq!1304 (apply!4011 (charsOf!1584 lt!512749) 0))) lt!513068))))

(declare-fun lemmaprefixMatchZipperSequenceEquivalent!100 ((InoxSet Context!1258) BalanceConc!10530 Int) Unit!25281)

(assert (=> d!432973 (= lt!513062 (lemmaprefixMatchZipperSequenceEquivalent!100 lt!513059 (++!4199 (charsOf!1584 lt!512747) (singletonSeq!1304 (apply!4011 (charsOf!1584 lt!512749) 0))) lt!513068))))

(assert (=> d!432973 (= lt!513068 0)))

(assert (=> d!432973 (= lt!513059 (focus!120 (rulesRegex!420 thiss!27374 rules!4290)))))

(declare-fun validRegex!1689 (Regex!4081) Bool)

(assert (=> d!432973 (validRegex!1689 (rulesRegex!420 thiss!27374 rules!4290))))

(assert (=> d!432973 (= (prefixMatchZipperSequence!368 (rulesRegex!420 thiss!27374 rules!4290) (++!4199 (charsOf!1584 lt!512747) (singletonSeq!1304 (apply!4011 (charsOf!1584 lt!512749) 0)))) lt!513065)))

(declare-fun bs!345630 () Bool)

(assert (= bs!345630 d!432973))

(assert (=> bs!345630 m!1720351))

(declare-fun m!1721393 () Bool)

(assert (=> bs!345630 m!1721393))

(assert (=> bs!345630 m!1720351))

(declare-fun m!1721395 () Bool)

(assert (=> bs!345630 m!1721395))

(declare-fun m!1721397 () Bool)

(assert (=> bs!345630 m!1721397))

(declare-fun m!1721399 () Bool)

(assert (=> bs!345630 m!1721399))

(assert (=> bs!345630 m!1720353))

(declare-fun m!1721401 () Bool)

(assert (=> bs!345630 m!1721401))

(assert (=> bs!345630 m!1720351))

(declare-fun m!1721403 () Bool)

(assert (=> bs!345630 m!1721403))

(assert (=> bs!345630 m!1720351))

(declare-fun m!1721405 () Bool)

(assert (=> bs!345630 m!1721405))

(assert (=> bs!345630 m!1721403))

(declare-fun m!1721407 () Bool)

(assert (=> bs!345630 m!1721407))

(assert (=> bs!345630 m!1720353))

(assert (=> bs!345630 m!1721395))

(assert (=> bs!345630 m!1720351))

(declare-fun m!1721409 () Bool)

(assert (=> bs!345630 m!1721409))

(assert (=> bs!345630 m!1720353))

(declare-fun m!1721411 () Bool)

(assert (=> bs!345630 m!1721411))

(assert (=> bs!345630 m!1720353))

(declare-fun m!1721413 () Bool)

(assert (=> bs!345630 m!1721413))

(assert (=> bs!345630 m!1721401))

(declare-fun m!1721415 () Bool)

(assert (=> bs!345630 m!1721415))

(assert (=> bs!345630 m!1721403))

(assert (=> bs!345630 m!1720353))

(declare-fun m!1721417 () Bool)

(assert (=> bs!345630 m!1721417))

(assert (=> d!432611 d!432973))

(declare-fun d!432975 () Bool)

(declare-fun e!942870 () Bool)

(assert (=> d!432975 e!942870))

(declare-fun res!667071 () Bool)

(assert (=> d!432975 (=> (not res!667071) (not e!942870))))

(declare-fun lt!513071 () BalanceConc!10530)

(assert (=> d!432975 (= res!667071 (= (list!6188 lt!513071) (Cons!15537 (apply!4011 (charsOf!1584 lt!512749) 0) Nil!15537)))))

(declare-fun singleton!549 (C!8340) BalanceConc!10530)

(assert (=> d!432975 (= lt!513071 (singleton!549 (apply!4011 (charsOf!1584 lt!512749) 0)))))

(assert (=> d!432975 (= (singletonSeq!1304 (apply!4011 (charsOf!1584 lt!512749) 0)) lt!513071)))

(declare-fun b!1475761 () Bool)

(assert (=> b!1475761 (= e!942870 (isBalanced!1582 (c!242517 lt!513071)))))

(assert (= (and d!432975 res!667071) b!1475761))

(declare-fun m!1721435 () Bool)

(assert (=> d!432975 m!1721435))

(assert (=> d!432975 m!1720361))

(declare-fun m!1721437 () Bool)

(assert (=> d!432975 m!1721437))

(declare-fun m!1721441 () Bool)

(assert (=> b!1475761 m!1721441))

(assert (=> d!432611 d!432975))

(declare-fun d!432987 () Bool)

(declare-fun lt!513072 () BalanceConc!10530)

(assert (=> d!432987 (= (list!6188 lt!513072) (originalCharacters!3629 lt!512747))))

(assert (=> d!432987 (= lt!513072 (dynLambda!7052 (toChars!3957 (transformation!2767 (rule!4544 lt!512747))) (value!88507 lt!512747)))))

(assert (=> d!432987 (= (charsOf!1584 lt!512747) lt!513072)))

(declare-fun b_lambda!46169 () Bool)

(assert (=> (not b_lambda!46169) (not d!432987)))

(declare-fun tb!84029 () Bool)

(declare-fun t!136541 () Bool)

(assert (=> (and b!1475422 (= (toChars!3957 (transformation!2767 (rule!4544 (h!20939 (t!136395 l1!3136))))) (toChars!3957 (transformation!2767 (rule!4544 lt!512747)))) t!136541) tb!84029))

(declare-fun b!1475764 () Bool)

(declare-fun e!942873 () Bool)

(declare-fun tp!417371 () Bool)

(assert (=> b!1475764 (= e!942873 (and (inv!20749 (c!242517 (dynLambda!7052 (toChars!3957 (transformation!2767 (rule!4544 lt!512747))) (value!88507 lt!512747)))) tp!417371))))

(declare-fun result!100978 () Bool)

(assert (=> tb!84029 (= result!100978 (and (inv!20750 (dynLambda!7052 (toChars!3957 (transformation!2767 (rule!4544 lt!512747))) (value!88507 lt!512747))) e!942873))))

(assert (= tb!84029 b!1475764))

(declare-fun m!1721447 () Bool)

(assert (=> b!1475764 m!1721447))

(declare-fun m!1721449 () Bool)

(assert (=> tb!84029 m!1721449))

(assert (=> d!432987 t!136541))

(declare-fun b_and!101873 () Bool)

(assert (= b_and!101861 (and (=> t!136541 result!100978) b_and!101873)))

(declare-fun tb!84031 () Bool)

(declare-fun t!136543 () Bool)

(assert (=> (and b!1475120 (= (toChars!3957 (transformation!2767 (rule!4544 (h!20939 l1!3136)))) (toChars!3957 (transformation!2767 (rule!4544 lt!512747)))) t!136543) tb!84031))

(declare-fun result!100980 () Bool)

(assert (= result!100980 result!100978))

(assert (=> d!432987 t!136543))

(declare-fun b_and!101875 () Bool)

(assert (= b_and!101869 (and (=> t!136543 result!100980) b_and!101875)))

(declare-fun t!136545 () Bool)

(declare-fun tb!84033 () Bool)

(assert (=> (and b!1475116 (= (toChars!3957 (transformation!2767 (rule!4544 (h!20939 l2!3105)))) (toChars!3957 (transformation!2767 (rule!4544 lt!512747)))) t!136545) tb!84033))

(declare-fun result!100982 () Bool)

(assert (= result!100982 result!100978))

(assert (=> d!432987 t!136545))

(declare-fun b_and!101877 () Bool)

(assert (= b_and!101863 (and (=> t!136545 result!100982) b_and!101877)))

(declare-fun t!136547 () Bool)

(declare-fun tb!84035 () Bool)

(assert (=> (and b!1475102 (= (toChars!3957 (transformation!2767 (h!20940 rules!4290))) (toChars!3957 (transformation!2767 (rule!4544 lt!512747)))) t!136547) tb!84035))

(declare-fun result!100984 () Bool)

(assert (= result!100984 result!100978))

(assert (=> d!432987 t!136547))

(declare-fun b_and!101879 () Bool)

(assert (= b_and!101871 (and (=> t!136547 result!100984) b_and!101879)))

(declare-fun tb!84037 () Bool)

(declare-fun t!136549 () Bool)

(assert (=> (and b!1475465 (= (toChars!3957 (transformation!2767 (h!20940 (t!136396 rules!4290)))) (toChars!3957 (transformation!2767 (rule!4544 lt!512747)))) t!136549) tb!84037))

(declare-fun result!100986 () Bool)

(assert (= result!100986 result!100978))

(assert (=> d!432987 t!136549))

(declare-fun b_and!101881 () Bool)

(assert (= b_and!101865 (and (=> t!136549 result!100986) b_and!101881)))

(declare-fun tb!84039 () Bool)

(declare-fun t!136551 () Bool)

(assert (=> (and b!1475449 (= (toChars!3957 (transformation!2767 (rule!4544 (h!20939 (t!136395 l2!3105))))) (toChars!3957 (transformation!2767 (rule!4544 lt!512747)))) t!136551) tb!84039))

(declare-fun result!100988 () Bool)

(assert (= result!100988 result!100978))

(assert (=> d!432987 t!136551))

(declare-fun b_and!101883 () Bool)

(assert (= b_and!101867 (and (=> t!136551 result!100988) b_and!101883)))

(declare-fun m!1721451 () Bool)

(assert (=> d!432987 m!1721451))

(declare-fun m!1721453 () Bool)

(assert (=> d!432987 m!1721453))

(assert (=> d!432611 d!432987))

(declare-fun d!432993 () Bool)

(declare-fun lt!513082 () Token!5196)

(declare-fun apply!4019 (List!15604 Int) Token!5196)

(assert (=> d!432993 (= lt!513082 (apply!4019 (list!6189 (_1!8036 lt!512812)) 0))))

(declare-fun apply!4020 (Conc!5296 Int) Token!5196)

(assert (=> d!432993 (= lt!513082 (apply!4020 (c!242518 (_1!8036 lt!512812)) 0))))

(declare-fun e!942878 () Bool)

(assert (=> d!432993 e!942878))

(declare-fun res!667079 () Bool)

(assert (=> d!432993 (=> (not res!667079) (not e!942878))))

(assert (=> d!432993 (= res!667079 (<= 0 0))))

(assert (=> d!432993 (= (apply!4012 (_1!8036 lt!512812) 0) lt!513082)))

(declare-fun b!1475770 () Bool)

(assert (=> b!1475770 (= e!942878 (< 0 (size!12597 (_1!8036 lt!512812))))))

(assert (= (and d!432993 res!667079) b!1475770))

(declare-fun m!1721505 () Bool)

(assert (=> d!432993 m!1721505))

(assert (=> d!432993 m!1721505))

(declare-fun m!1721509 () Bool)

(assert (=> d!432993 m!1721509))

(declare-fun m!1721511 () Bool)

(assert (=> d!432993 m!1721511))

(assert (=> b!1475770 m!1720431))

(assert (=> b!1475256 d!432993))

(declare-fun d!433017 () Bool)

(declare-fun lt!513085 () Bool)

(declare-fun e!942881 () Bool)

(assert (=> d!433017 (= lt!513085 e!942881)))

(declare-fun res!667082 () Bool)

(assert (=> d!433017 (=> (not res!667082) (not e!942881))))

(assert (=> d!433017 (= res!667082 (= (list!6189 (_1!8036 (lex!1091 thiss!27374 rules!4290 (print!1126 thiss!27374 (singletonSeq!1305 (h!20939 (t!136395 l2!3105))))))) (list!6189 (singletonSeq!1305 (h!20939 (t!136395 l2!3105))))))))

(declare-fun e!942880 () Bool)

(assert (=> d!433017 (= lt!513085 e!942880)))

(declare-fun res!667080 () Bool)

(assert (=> d!433017 (=> (not res!667080) (not e!942880))))

(declare-fun lt!513084 () tuple2!14300)

(assert (=> d!433017 (= res!667080 (= (size!12597 (_1!8036 lt!513084)) 1))))

(assert (=> d!433017 (= lt!513084 (lex!1091 thiss!27374 rules!4290 (print!1126 thiss!27374 (singletonSeq!1305 (h!20939 (t!136395 l2!3105))))))))

(assert (=> d!433017 (not (isEmpty!9706 rules!4290))))

(assert (=> d!433017 (= (rulesProduceIndividualToken!1282 thiss!27374 rules!4290 (h!20939 (t!136395 l2!3105))) lt!513085)))

(declare-fun b!1475773 () Bool)

(declare-fun res!667081 () Bool)

(assert (=> b!1475773 (=> (not res!667081) (not e!942880))))

(assert (=> b!1475773 (= res!667081 (= (apply!4012 (_1!8036 lt!513084) 0) (h!20939 (t!136395 l2!3105))))))

(declare-fun b!1475774 () Bool)

(assert (=> b!1475774 (= e!942880 (isEmpty!9710 (_2!8036 lt!513084)))))

(declare-fun b!1475775 () Bool)

(assert (=> b!1475775 (= e!942881 (isEmpty!9710 (_2!8036 (lex!1091 thiss!27374 rules!4290 (print!1126 thiss!27374 (singletonSeq!1305 (h!20939 (t!136395 l2!3105))))))))))

(assert (= (and d!433017 res!667080) b!1475773))

(assert (= (and b!1475773 res!667081) b!1475774))

(assert (= (and d!433017 res!667082) b!1475775))

(declare-fun m!1721517 () Bool)

(assert (=> d!433017 m!1721517))

(declare-fun m!1721519 () Bool)

(assert (=> d!433017 m!1721519))

(declare-fun m!1721521 () Bool)

(assert (=> d!433017 m!1721521))

(declare-fun m!1721523 () Bool)

(assert (=> d!433017 m!1721523))

(assert (=> d!433017 m!1721521))

(assert (=> d!433017 m!1721517))

(assert (=> d!433017 m!1720191))

(assert (=> d!433017 m!1721521))

(declare-fun m!1721525 () Bool)

(assert (=> d!433017 m!1721525))

(declare-fun m!1721527 () Bool)

(assert (=> d!433017 m!1721527))

(declare-fun m!1721529 () Bool)

(assert (=> b!1475773 m!1721529))

(declare-fun m!1721531 () Bool)

(assert (=> b!1475774 m!1721531))

(assert (=> b!1475775 m!1721521))

(assert (=> b!1475775 m!1721521))

(assert (=> b!1475775 m!1721517))

(assert (=> b!1475775 m!1721517))

(assert (=> b!1475775 m!1721519))

(declare-fun m!1721533 () Bool)

(assert (=> b!1475775 m!1721533))

(assert (=> b!1475302 d!433017))

(declare-fun d!433021 () Bool)

(declare-fun lt!513086 () BalanceConc!10530)

(assert (=> d!433021 (= (list!6188 lt!513086) (originalCharacters!3629 (h!20939 (t!136395 l2!3105))))))

(assert (=> d!433021 (= lt!513086 (dynLambda!7052 (toChars!3957 (transformation!2767 (rule!4544 (h!20939 (t!136395 l2!3105))))) (value!88507 (h!20939 (t!136395 l2!3105)))))))

(assert (=> d!433021 (= (charsOf!1584 (h!20939 (t!136395 l2!3105))) lt!513086)))

(declare-fun b_lambda!46175 () Bool)

(assert (=> (not b_lambda!46175) (not d!433021)))

(declare-fun tb!84041 () Bool)

(declare-fun t!136553 () Bool)

(assert (=> (and b!1475422 (= (toChars!3957 (transformation!2767 (rule!4544 (h!20939 (t!136395 l1!3136))))) (toChars!3957 (transformation!2767 (rule!4544 (h!20939 (t!136395 l2!3105)))))) t!136553) tb!84041))

(declare-fun b!1475776 () Bool)

(declare-fun e!942882 () Bool)

(declare-fun tp!417372 () Bool)

(assert (=> b!1475776 (= e!942882 (and (inv!20749 (c!242517 (dynLambda!7052 (toChars!3957 (transformation!2767 (rule!4544 (h!20939 (t!136395 l2!3105))))) (value!88507 (h!20939 (t!136395 l2!3105)))))) tp!417372))))

(declare-fun result!100990 () Bool)

(assert (=> tb!84041 (= result!100990 (and (inv!20750 (dynLambda!7052 (toChars!3957 (transformation!2767 (rule!4544 (h!20939 (t!136395 l2!3105))))) (value!88507 (h!20939 (t!136395 l2!3105))))) e!942882))))

(assert (= tb!84041 b!1475776))

(declare-fun m!1721535 () Bool)

(assert (=> b!1475776 m!1721535))

(declare-fun m!1721537 () Bool)

(assert (=> tb!84041 m!1721537))

(assert (=> d!433021 t!136553))

(declare-fun b_and!101897 () Bool)

(assert (= b_and!101873 (and (=> t!136553 result!100990) b_and!101897)))

(declare-fun t!136555 () Bool)

(declare-fun tb!84043 () Bool)

(assert (=> (and b!1475120 (= (toChars!3957 (transformation!2767 (rule!4544 (h!20939 l1!3136)))) (toChars!3957 (transformation!2767 (rule!4544 (h!20939 (t!136395 l2!3105)))))) t!136555) tb!84043))

(declare-fun result!100992 () Bool)

(assert (= result!100992 result!100990))

(assert (=> d!433021 t!136555))

(declare-fun b_and!101899 () Bool)

(assert (= b_and!101875 (and (=> t!136555 result!100992) b_and!101899)))

(declare-fun tb!84045 () Bool)

(declare-fun t!136557 () Bool)

(assert (=> (and b!1475465 (= (toChars!3957 (transformation!2767 (h!20940 (t!136396 rules!4290)))) (toChars!3957 (transformation!2767 (rule!4544 (h!20939 (t!136395 l2!3105)))))) t!136557) tb!84045))

(declare-fun result!100994 () Bool)

(assert (= result!100994 result!100990))

(assert (=> d!433021 t!136557))

(declare-fun b_and!101901 () Bool)

(assert (= b_and!101881 (and (=> t!136557 result!100994) b_and!101901)))

(declare-fun tb!84047 () Bool)

(declare-fun t!136559 () Bool)

(assert (=> (and b!1475102 (= (toChars!3957 (transformation!2767 (h!20940 rules!4290))) (toChars!3957 (transformation!2767 (rule!4544 (h!20939 (t!136395 l2!3105)))))) t!136559) tb!84047))

(declare-fun result!100996 () Bool)

(assert (= result!100996 result!100990))

(assert (=> d!433021 t!136559))

(declare-fun b_and!101903 () Bool)

(assert (= b_and!101879 (and (=> t!136559 result!100996) b_and!101903)))

(declare-fun t!136561 () Bool)

(declare-fun tb!84049 () Bool)

(assert (=> (and b!1475116 (= (toChars!3957 (transformation!2767 (rule!4544 (h!20939 l2!3105)))) (toChars!3957 (transformation!2767 (rule!4544 (h!20939 (t!136395 l2!3105)))))) t!136561) tb!84049))

(declare-fun result!100998 () Bool)

(assert (= result!100998 result!100990))

(assert (=> d!433021 t!136561))

(declare-fun b_and!101905 () Bool)

(assert (= b_and!101877 (and (=> t!136561 result!100998) b_and!101905)))

(declare-fun t!136563 () Bool)

(declare-fun tb!84051 () Bool)

(assert (=> (and b!1475449 (= (toChars!3957 (transformation!2767 (rule!4544 (h!20939 (t!136395 l2!3105))))) (toChars!3957 (transformation!2767 (rule!4544 (h!20939 (t!136395 l2!3105)))))) t!136563) tb!84051))

(declare-fun result!101000 () Bool)

(assert (= result!101000 result!100990))

(assert (=> d!433021 t!136563))

(declare-fun b_and!101907 () Bool)

(assert (= b_and!101883 (and (=> t!136563 result!101000) b_and!101907)))

(declare-fun m!1721539 () Bool)

(assert (=> d!433021 m!1721539))

(declare-fun m!1721541 () Bool)

(assert (=> d!433021 m!1721541))

(assert (=> b!1475302 d!433021))

(assert (=> b!1475302 d!432841))

(declare-fun d!433023 () Bool)

(assert (=> d!433023 (= (separableTokensPredicate!566 thiss!27374 (h!20939 l2!3105) (h!20939 (t!136395 l2!3105)) rules!4290) (not (prefixMatchZipperSequence!368 (rulesRegex!420 thiss!27374 rules!4290) (++!4199 (charsOf!1584 (h!20939 l2!3105)) (singletonSeq!1304 (apply!4011 (charsOf!1584 (h!20939 (t!136395 l2!3105))) 0))))))))

(declare-fun bs!345646 () Bool)

(assert (= bs!345646 d!433023))

(assert (=> bs!345646 m!1720351))

(declare-fun m!1721543 () Bool)

(assert (=> bs!345646 m!1721543))

(declare-fun m!1721545 () Bool)

(assert (=> bs!345646 m!1721545))

(declare-fun m!1721547 () Bool)

(assert (=> bs!345646 m!1721547))

(declare-fun m!1721549 () Bool)

(assert (=> bs!345646 m!1721549))

(assert (=> bs!345646 m!1721543))

(assert (=> bs!345646 m!1721547))

(declare-fun m!1721551 () Bool)

(assert (=> bs!345646 m!1721551))

(assert (=> bs!345646 m!1721549))

(assert (=> bs!345646 m!1720479))

(assert (=> bs!345646 m!1720479))

(assert (=> bs!345646 m!1721551))

(assert (=> bs!345646 m!1720351))

(assert (=> b!1475302 d!433023))

(declare-fun d!433025 () Bool)

(declare-fun lt!513087 () Int)

(assert (=> d!433025 (= lt!513087 (size!12596 (list!6188 (charsOf!1584 (h!20939 (t!136395 l2!3105))))))))

(assert (=> d!433025 (= lt!513087 (size!12601 (c!242517 (charsOf!1584 (h!20939 (t!136395 l2!3105))))))))

(assert (=> d!433025 (= (size!12598 (charsOf!1584 (h!20939 (t!136395 l2!3105)))) lt!513087)))

(declare-fun bs!345647 () Bool)

(assert (= bs!345647 d!433025))

(assert (=> bs!345647 m!1720479))

(declare-fun m!1721555 () Bool)

(assert (=> bs!345647 m!1721555))

(assert (=> bs!345647 m!1721555))

(declare-fun m!1721559 () Bool)

(assert (=> bs!345647 m!1721559))

(declare-fun m!1721561 () Bool)

(assert (=> bs!345647 m!1721561))

(assert (=> b!1475302 d!433025))

(declare-fun d!433029 () Bool)

(assert (=> d!433029 (rulesProduceIndividualToken!1282 thiss!27374 rules!4290 (h!20939 l2!3105))))

(declare-fun lt!513089 () Unit!25281)

(assert (=> d!433029 (= lt!513089 (choose!9042 thiss!27374 rules!4290 l2!3105 (h!20939 l2!3105)))))

(assert (=> d!433029 (not (isEmpty!9706 rules!4290))))

(assert (=> d!433029 (= (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!463 thiss!27374 rules!4290 l2!3105 (h!20939 l2!3105)) lt!513089)))

(declare-fun bs!345649 () Bool)

(assert (= bs!345649 d!433029))

(assert (=> bs!345649 m!1720307))

(declare-fun m!1721569 () Bool)

(assert (=> bs!345649 m!1721569))

(assert (=> bs!345649 m!1720191))

(assert (=> b!1475302 d!433029))

(declare-fun d!433031 () Bool)

(assert (=> d!433031 (rulesProduceIndividualToken!1282 thiss!27374 rules!4290 (h!20939 (t!136395 l2!3105)))))

(declare-fun lt!513090 () Unit!25281)

(assert (=> d!433031 (= lt!513090 (choose!9042 thiss!27374 rules!4290 l2!3105 (h!20939 (t!136395 l2!3105))))))

(assert (=> d!433031 (not (isEmpty!9706 rules!4290))))

(assert (=> d!433031 (= (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!463 thiss!27374 rules!4290 l2!3105 (h!20939 (t!136395 l2!3105))) lt!513090)))

(declare-fun bs!345650 () Bool)

(assert (= bs!345650 d!433031))

(assert (=> bs!345650 m!1720487))

(declare-fun m!1721571 () Bool)

(assert (=> bs!345650 m!1721571))

(assert (=> bs!345650 m!1720191))

(assert (=> b!1475302 d!433031))

(declare-fun d!433033 () Bool)

(declare-fun lt!513093 () Int)

(assert (=> d!433033 (>= lt!513093 0)))

(declare-fun e!942903 () Int)

(assert (=> d!433033 (= lt!513093 e!942903)))

(declare-fun c!242601 () Bool)

(assert (=> d!433033 (= c!242601 ((_ is Nil!15538) lt!512856))))

(assert (=> d!433033 (= (size!12599 lt!512856) lt!513093)))

(declare-fun b!1475799 () Bool)

(assert (=> b!1475799 (= e!942903 0)))

(declare-fun b!1475800 () Bool)

(assert (=> b!1475800 (= e!942903 (+ 1 (size!12599 (t!136395 lt!512856))))))

(assert (= (and d!433033 c!242601) b!1475799))

(assert (= (and d!433033 (not c!242601)) b!1475800))

(declare-fun m!1721581 () Bool)

(assert (=> b!1475800 m!1721581))

(assert (=> b!1475358 d!433033))

(declare-fun d!433035 () Bool)

(declare-fun lt!513094 () Int)

(assert (=> d!433035 (>= lt!513094 0)))

(declare-fun e!942906 () Int)

(assert (=> d!433035 (= lt!513094 e!942906)))

(declare-fun c!242602 () Bool)

(assert (=> d!433035 (= c!242602 ((_ is Nil!15538) l1!3136))))

(assert (=> d!433035 (= (size!12599 l1!3136) lt!513094)))

(declare-fun b!1475805 () Bool)

(assert (=> b!1475805 (= e!942906 0)))

(declare-fun b!1475806 () Bool)

(assert (=> b!1475806 (= e!942906 (+ 1 (size!12599 (t!136395 l1!3136))))))

(assert (= (and d!433035 c!242602) b!1475805))

(assert (= (and d!433035 (not c!242602)) b!1475806))

(assert (=> b!1475806 m!1721347))

(assert (=> b!1475358 d!433035))

(declare-fun d!433037 () Bool)

(declare-fun lt!513095 () Int)

(assert (=> d!433037 (>= lt!513095 0)))

(declare-fun e!942907 () Int)

(assert (=> d!433037 (= lt!513095 e!942907)))

(declare-fun c!242603 () Bool)

(assert (=> d!433037 (= c!242603 ((_ is Nil!15538) l2!3105))))

(assert (=> d!433037 (= (size!12599 l2!3105) lt!513095)))

(declare-fun b!1475807 () Bool)

(assert (=> b!1475807 (= e!942907 0)))

(declare-fun b!1475808 () Bool)

(assert (=> b!1475808 (= e!942907 (+ 1 (size!12599 (t!136395 l2!3105))))))

(assert (= (and d!433037 c!242603) b!1475807))

(assert (= (and d!433037 (not c!242603)) b!1475808))

(declare-fun m!1721583 () Bool)

(assert (=> b!1475808 m!1721583))

(assert (=> b!1475358 d!433037))

(declare-fun d!433039 () Bool)

(declare-fun lt!513096 () Bool)

(assert (=> d!433039 (= lt!513096 (isEmpty!9709 (list!6188 (_2!8036 (lex!1091 thiss!27374 rules!4290 (print!1126 thiss!27374 (singletonSeq!1305 lt!512747)))))))))

(assert (=> d!433039 (= lt!513096 (isEmpty!9713 (c!242517 (_2!8036 (lex!1091 thiss!27374 rules!4290 (print!1126 thiss!27374 (singletonSeq!1305 lt!512747)))))))))

(assert (=> d!433039 (= (isEmpty!9710 (_2!8036 (lex!1091 thiss!27374 rules!4290 (print!1126 thiss!27374 (singletonSeq!1305 lt!512747))))) lt!513096)))

(declare-fun bs!345651 () Bool)

(assert (= bs!345651 d!433039))

(declare-fun m!1721585 () Bool)

(assert (=> bs!345651 m!1721585))

(assert (=> bs!345651 m!1721585))

(declare-fun m!1721587 () Bool)

(assert (=> bs!345651 m!1721587))

(declare-fun m!1721589 () Bool)

(assert (=> bs!345651 m!1721589))

(assert (=> b!1475258 d!433039))

(declare-fun b!1475916 () Bool)

(declare-fun e!942960 () Bool)

(declare-fun e!942958 () Bool)

(assert (=> b!1475916 (= e!942960 e!942958)))

(declare-fun res!667097 () Bool)

(declare-fun lt!513099 () tuple2!14300)

(assert (=> b!1475916 (= res!667097 (< (size!12598 (_2!8036 lt!513099)) (size!12598 (print!1126 thiss!27374 (singletonSeq!1305 lt!512747)))))))

(assert (=> b!1475916 (=> (not res!667097) (not e!942958))))

(declare-fun b!1475917 () Bool)

(assert (=> b!1475917 (= e!942960 (= (_2!8036 lt!513099) (print!1126 thiss!27374 (singletonSeq!1305 lt!512747))))))

(declare-fun d!433041 () Bool)

(declare-fun e!942959 () Bool)

(assert (=> d!433041 e!942959))

(declare-fun res!667096 () Bool)

(assert (=> d!433041 (=> (not res!667096) (not e!942959))))

(assert (=> d!433041 (= res!667096 e!942960)))

(declare-fun c!242606 () Bool)

(assert (=> d!433041 (= c!242606 (> (size!12597 (_1!8036 lt!513099)) 0))))

(declare-fun lexTailRecV2!477 (LexerInterface!2423 List!15605 BalanceConc!10530 BalanceConc!10530 BalanceConc!10530 BalanceConc!10532) tuple2!14300)

(assert (=> d!433041 (= lt!513099 (lexTailRecV2!477 thiss!27374 rules!4290 (print!1126 thiss!27374 (singletonSeq!1305 lt!512747)) (BalanceConc!10531 Empty!5295) (print!1126 thiss!27374 (singletonSeq!1305 lt!512747)) (BalanceConc!10533 Empty!5296)))))

(assert (=> d!433041 (= (lex!1091 thiss!27374 rules!4290 (print!1126 thiss!27374 (singletonSeq!1305 lt!512747))) lt!513099)))

(declare-fun b!1475918 () Bool)

(declare-datatypes ((tuple2!14304 0))(
  ( (tuple2!14305 (_1!8038 List!15604) (_2!8038 List!15603)) )
))
(declare-fun lexList!722 (LexerInterface!2423 List!15605 List!15603) tuple2!14304)

(assert (=> b!1475918 (= e!942959 (= (list!6188 (_2!8036 lt!513099)) (_2!8038 (lexList!722 thiss!27374 rules!4290 (list!6188 (print!1126 thiss!27374 (singletonSeq!1305 lt!512747)))))))))

(declare-fun b!1475919 () Bool)

(declare-fun isEmpty!9714 (BalanceConc!10532) Bool)

(assert (=> b!1475919 (= e!942958 (not (isEmpty!9714 (_1!8036 lt!513099))))))

(declare-fun b!1475920 () Bool)

(declare-fun res!667095 () Bool)

(assert (=> b!1475920 (=> (not res!667095) (not e!942959))))

(assert (=> b!1475920 (= res!667095 (= (list!6189 (_1!8036 lt!513099)) (_1!8038 (lexList!722 thiss!27374 rules!4290 (list!6188 (print!1126 thiss!27374 (singletonSeq!1305 lt!512747)))))))))

(assert (= (and d!433041 c!242606) b!1475916))

(assert (= (and d!433041 (not c!242606)) b!1475917))

(assert (= (and b!1475916 res!667097) b!1475919))

(assert (= (and d!433041 res!667096) b!1475920))

(assert (= (and b!1475920 res!667095) b!1475918))

(declare-fun m!1721615 () Bool)

(assert (=> b!1475918 m!1721615))

(assert (=> b!1475918 m!1720421))

(declare-fun m!1721617 () Bool)

(assert (=> b!1475918 m!1721617))

(assert (=> b!1475918 m!1721617))

(declare-fun m!1721619 () Bool)

(assert (=> b!1475918 m!1721619))

(declare-fun m!1721621 () Bool)

(assert (=> d!433041 m!1721621))

(assert (=> d!433041 m!1720421))

(assert (=> d!433041 m!1720421))

(declare-fun m!1721623 () Bool)

(assert (=> d!433041 m!1721623))

(declare-fun m!1721625 () Bool)

(assert (=> b!1475919 m!1721625))

(declare-fun m!1721627 () Bool)

(assert (=> b!1475920 m!1721627))

(assert (=> b!1475920 m!1720421))

(assert (=> b!1475920 m!1721617))

(assert (=> b!1475920 m!1721617))

(assert (=> b!1475920 m!1721619))

(declare-fun m!1721629 () Bool)

(assert (=> b!1475916 m!1721629))

(assert (=> b!1475916 m!1720421))

(declare-fun m!1721631 () Bool)

(assert (=> b!1475916 m!1721631))

(assert (=> b!1475258 d!433041))

(declare-fun d!433051 () Bool)

(declare-fun lt!513102 () BalanceConc!10530)

(declare-fun printList!769 (LexerInterface!2423 List!15604) List!15603)

(assert (=> d!433051 (= (list!6188 lt!513102) (printList!769 thiss!27374 (list!6189 (singletonSeq!1305 lt!512747))))))

(declare-fun printTailRec!705 (LexerInterface!2423 BalanceConc!10532 Int BalanceConc!10530) BalanceConc!10530)

(assert (=> d!433051 (= lt!513102 (printTailRec!705 thiss!27374 (singletonSeq!1305 lt!512747) 0 (BalanceConc!10531 Empty!5295)))))

(assert (=> d!433051 (= (print!1126 thiss!27374 (singletonSeq!1305 lt!512747)) lt!513102)))

(declare-fun bs!345656 () Bool)

(assert (= bs!345656 d!433051))

(declare-fun m!1721633 () Bool)

(assert (=> bs!345656 m!1721633))

(assert (=> bs!345656 m!1720425))

(assert (=> bs!345656 m!1720429))

(assert (=> bs!345656 m!1720429))

(declare-fun m!1721635 () Bool)

(assert (=> bs!345656 m!1721635))

(assert (=> bs!345656 m!1720425))

(declare-fun m!1721637 () Bool)

(assert (=> bs!345656 m!1721637))

(assert (=> b!1475258 d!433051))

(declare-fun d!433053 () Bool)

(declare-fun e!942963 () Bool)

(assert (=> d!433053 e!942963))

(declare-fun res!667100 () Bool)

(assert (=> d!433053 (=> (not res!667100) (not e!942963))))

(declare-fun lt!513105 () BalanceConc!10532)

(assert (=> d!433053 (= res!667100 (= (list!6189 lt!513105) (Cons!15538 lt!512747 Nil!15538)))))

(declare-fun singleton!550 (Token!5196) BalanceConc!10532)

(assert (=> d!433053 (= lt!513105 (singleton!550 lt!512747))))

(assert (=> d!433053 (= (singletonSeq!1305 lt!512747) lt!513105)))

(declare-fun b!1475923 () Bool)

(assert (=> b!1475923 (= e!942963 (isBalanced!1581 (c!242518 lt!513105)))))

(assert (= (and d!433053 res!667100) b!1475923))

(declare-fun m!1721639 () Bool)

(assert (=> d!433053 m!1721639))

(declare-fun m!1721641 () Bool)

(assert (=> d!433053 m!1721641))

(declare-fun m!1721643 () Bool)

(assert (=> b!1475923 m!1721643))

(assert (=> b!1475258 d!433053))

(declare-fun d!433055 () Bool)

(assert (=> d!433055 (= (inv!15 (value!88507 (h!20939 l1!3136))) (= (charsToBigInt!0 (text!20448 (value!88507 (h!20939 l1!3136))) 0) (value!88502 (value!88507 (h!20939 l1!3136)))))))

(declare-fun bs!345657 () Bool)

(assert (= bs!345657 d!433055))

(declare-fun m!1721645 () Bool)

(assert (=> bs!345657 m!1721645))

(assert (=> b!1475190 d!433055))

(declare-fun d!433057 () Bool)

(assert (=> d!433057 true))

(declare-fun lt!513108 () Bool)

(declare-fun rulesValidInductive!842 (LexerInterface!2423 List!15605) Bool)

(assert (=> d!433057 (= lt!513108 (rulesValidInductive!842 thiss!27374 rules!4290))))

(declare-fun lambda!63666 () Int)

(declare-fun forall!3790 (List!15605 Int) Bool)

(assert (=> d!433057 (= lt!513108 (forall!3790 rules!4290 lambda!63666))))

(assert (=> d!433057 (= (rulesValid!1008 thiss!27374 rules!4290) lt!513108)))

(declare-fun bs!345658 () Bool)

(assert (= bs!345658 d!433057))

(declare-fun m!1721647 () Bool)

(assert (=> bs!345658 m!1721647))

(declare-fun m!1721649 () Bool)

(assert (=> bs!345658 m!1721649))

(assert (=> d!432681 d!433057))

(declare-fun bs!345659 () Bool)

(declare-fun d!433059 () Bool)

(assert (= bs!345659 (and d!433059 d!432949)))

(declare-fun lambda!63667 () Int)

(assert (=> bs!345659 (= (and (= (toChars!3957 (transformation!2767 (rule!4544 (h!20939 l2!3105)))) (toChars!3957 (transformation!2767 (rule!4544 (h!20939 l1!3136))))) (= (toValue!4098 (transformation!2767 (rule!4544 (h!20939 l2!3105)))) (toValue!4098 (transformation!2767 (rule!4544 (h!20939 l1!3136)))))) (= lambda!63667 lambda!63659))))

(assert (=> d!433059 true))

(assert (=> d!433059 (< (dynLambda!7051 order!9337 (toChars!3957 (transformation!2767 (rule!4544 (h!20939 l2!3105))))) (dynLambda!7058 order!9345 lambda!63667))))

(assert (=> d!433059 true))

(assert (=> d!433059 (< (dynLambda!7049 order!9333 (toValue!4098 (transformation!2767 (rule!4544 (h!20939 l2!3105))))) (dynLambda!7058 order!9345 lambda!63667))))

(assert (=> d!433059 (= (semiInverseModEq!1035 (toChars!3957 (transformation!2767 (rule!4544 (h!20939 l2!3105)))) (toValue!4098 (transformation!2767 (rule!4544 (h!20939 l2!3105))))) (Forall!571 lambda!63667))))

(declare-fun bs!345660 () Bool)

(assert (= bs!345660 d!433059))

(declare-fun m!1721651 () Bool)

(assert (=> bs!345660 m!1721651))

(assert (=> d!432691 d!433059))

(declare-fun d!433061 () Bool)

(declare-fun lt!513109 () Int)

(assert (=> d!433061 (>= lt!513109 0)))

(declare-fun e!942964 () Int)

(assert (=> d!433061 (= lt!513109 e!942964)))

(declare-fun c!242607 () Bool)

(assert (=> d!433061 (= c!242607 ((_ is Nil!15537) (originalCharacters!3629 (h!20939 l2!3105))))))

(assert (=> d!433061 (= (size!12596 (originalCharacters!3629 (h!20939 l2!3105))) lt!513109)))

(declare-fun b!1475926 () Bool)

(assert (=> b!1475926 (= e!942964 0)))

(declare-fun b!1475927 () Bool)

(assert (=> b!1475927 (= e!942964 (+ 1 (size!12596 (t!136394 (originalCharacters!3629 (h!20939 l2!3105))))))))

(assert (= (and d!433061 c!242607) b!1475926))

(assert (= (and d!433061 (not c!242607)) b!1475927))

(declare-fun m!1721653 () Bool)

(assert (=> b!1475927 m!1721653))

(assert (=> b!1475319 d!433061))

(declare-fun d!433063 () Bool)

(assert (=> d!433063 (= (inv!20750 (dynLambda!7052 (toChars!3957 (transformation!2767 (rule!4544 (h!20939 l2!3105)))) (value!88507 (h!20939 l2!3105)))) (isBalanced!1582 (c!242517 (dynLambda!7052 (toChars!3957 (transformation!2767 (rule!4544 (h!20939 l2!3105)))) (value!88507 (h!20939 l2!3105))))))))

(declare-fun bs!345661 () Bool)

(assert (= bs!345661 d!433063))

(declare-fun m!1721655 () Bool)

(assert (=> bs!345661 m!1721655))

(assert (=> tb!83927 d!433063))

(declare-fun bs!345662 () Bool)

(declare-fun d!433065 () Bool)

(assert (= bs!345662 (and d!433065 d!432609)))

(declare-fun lambda!63668 () Int)

(assert (=> bs!345662 (= lambda!63668 lambda!63616)))

(declare-fun bs!345663 () Bool)

(assert (= bs!345663 (and d!433065 d!432907)))

(assert (=> bs!345663 (= lambda!63668 lambda!63646)))

(declare-fun bs!345664 () Bool)

(assert (= bs!345664 (and d!433065 d!432699)))

(assert (=> bs!345664 (= lambda!63668 lambda!63628)))

(declare-fun bs!345665 () Bool)

(assert (= bs!345665 (and d!433065 d!432933)))

(assert (=> bs!345665 (= lambda!63668 lambda!63656)))

(declare-fun bs!345666 () Bool)

(assert (= bs!345666 (and d!433065 d!432701)))

(assert (=> bs!345666 (= lambda!63668 lambda!63629)))

(declare-fun bs!345667 () Bool)

(assert (= bs!345667 (and d!433065 d!432589)))

(assert (=> bs!345667 (= lambda!63668 lambda!63615)))

(declare-fun b!1475932 () Bool)

(declare-fun e!942969 () Bool)

(assert (=> b!1475932 (= e!942969 true)))

(declare-fun b!1475931 () Bool)

(declare-fun e!942968 () Bool)

(assert (=> b!1475931 (= e!942968 e!942969)))

(declare-fun b!1475930 () Bool)

(declare-fun e!942967 () Bool)

(assert (=> b!1475930 (= e!942967 e!942968)))

(assert (=> d!433065 e!942967))

(assert (= b!1475931 b!1475932))

(assert (= b!1475930 b!1475931))

(assert (= (and d!433065 ((_ is Cons!15539) rules!4290)) b!1475930))

(assert (=> b!1475932 (< (dynLambda!7049 order!9333 (toValue!4098 (transformation!2767 (h!20940 rules!4290)))) (dynLambda!7050 order!9335 lambda!63668))))

(assert (=> b!1475932 (< (dynLambda!7051 order!9337 (toChars!3957 (transformation!2767 (h!20940 rules!4290)))) (dynLambda!7050 order!9335 lambda!63668))))

(assert (=> d!433065 true))

(declare-fun lt!513110 () Bool)

(assert (=> d!433065 (= lt!513110 (forall!3785 (t!136395 l2!3105) lambda!63668))))

(declare-fun e!942966 () Bool)

(assert (=> d!433065 (= lt!513110 e!942966)))

(declare-fun res!667102 () Bool)

(assert (=> d!433065 (=> res!667102 e!942966)))

(assert (=> d!433065 (= res!667102 (not ((_ is Cons!15538) (t!136395 l2!3105))))))

(assert (=> d!433065 (not (isEmpty!9706 rules!4290))))

(assert (=> d!433065 (= (rulesProduceEachTokenIndividuallyList!790 thiss!27374 rules!4290 (t!136395 l2!3105)) lt!513110)))

(declare-fun b!1475928 () Bool)

(declare-fun e!942965 () Bool)

(assert (=> b!1475928 (= e!942966 e!942965)))

(declare-fun res!667101 () Bool)

(assert (=> b!1475928 (=> (not res!667101) (not e!942965))))

(assert (=> b!1475928 (= res!667101 (rulesProduceIndividualToken!1282 thiss!27374 rules!4290 (h!20939 (t!136395 l2!3105))))))

(declare-fun b!1475929 () Bool)

(assert (=> b!1475929 (= e!942965 (rulesProduceEachTokenIndividuallyList!790 thiss!27374 rules!4290 (t!136395 (t!136395 l2!3105))))))

(assert (= (and d!433065 (not res!667102)) b!1475928))

(assert (= (and b!1475928 res!667101) b!1475929))

(declare-fun m!1721657 () Bool)

(assert (=> d!433065 m!1721657))

(assert (=> d!433065 m!1720191))

(assert (=> b!1475928 m!1720487))

(declare-fun m!1721659 () Bool)

(assert (=> b!1475929 m!1721659))

(assert (=> b!1475196 d!433065))

(declare-fun bs!345668 () Bool)

(declare-fun d!433067 () Bool)

(assert (= bs!345668 (and d!433067 d!432949)))

(declare-fun lambda!63669 () Int)

(assert (=> bs!345668 (= (and (= (toChars!3957 (transformation!2767 (h!20940 rules!4290))) (toChars!3957 (transformation!2767 (rule!4544 (h!20939 l1!3136))))) (= (toValue!4098 (transformation!2767 (h!20940 rules!4290))) (toValue!4098 (transformation!2767 (rule!4544 (h!20939 l1!3136)))))) (= lambda!63669 lambda!63659))))

(declare-fun bs!345669 () Bool)

(assert (= bs!345669 (and d!433067 d!433059)))

(assert (=> bs!345669 (= (and (= (toChars!3957 (transformation!2767 (h!20940 rules!4290))) (toChars!3957 (transformation!2767 (rule!4544 (h!20939 l2!3105))))) (= (toValue!4098 (transformation!2767 (h!20940 rules!4290))) (toValue!4098 (transformation!2767 (rule!4544 (h!20939 l2!3105)))))) (= lambda!63669 lambda!63667))))

(assert (=> d!433067 true))

(assert (=> d!433067 (< (dynLambda!7051 order!9337 (toChars!3957 (transformation!2767 (h!20940 rules!4290)))) (dynLambda!7058 order!9345 lambda!63669))))

(assert (=> d!433067 true))

(assert (=> d!433067 (< (dynLambda!7049 order!9333 (toValue!4098 (transformation!2767 (h!20940 rules!4290)))) (dynLambda!7058 order!9345 lambda!63669))))

(assert (=> d!433067 (= (semiInverseModEq!1035 (toChars!3957 (transformation!2767 (h!20940 rules!4290))) (toValue!4098 (transformation!2767 (h!20940 rules!4290)))) (Forall!571 lambda!63669))))

(declare-fun bs!345670 () Bool)

(assert (= bs!345670 d!433067))

(declare-fun m!1721661 () Bool)

(assert (=> bs!345670 m!1721661))

(assert (=> d!432673 d!433067))

(declare-fun d!433069 () Bool)

(declare-fun e!942970 () Bool)

(assert (=> d!433069 e!942970))

(declare-fun res!667103 () Bool)

(assert (=> d!433069 (=> (not res!667103) (not e!942970))))

(declare-fun lt!513111 () BalanceConc!10532)

(assert (=> d!433069 (= res!667103 (= (list!6189 lt!513111) (Cons!15538 lt!512749 Nil!15538)))))

(assert (=> d!433069 (= lt!513111 (singleton!550 lt!512749))))

(assert (=> d!433069 (= (singletonSeq!1305 lt!512749) lt!513111)))

(declare-fun b!1475933 () Bool)

(assert (=> b!1475933 (= e!942970 (isBalanced!1581 (c!242518 lt!513111)))))

(assert (= (and d!433069 res!667103) b!1475933))

(declare-fun m!1721663 () Bool)

(assert (=> d!433069 m!1721663))

(declare-fun m!1721665 () Bool)

(assert (=> d!433069 m!1721665))

(declare-fun m!1721667 () Bool)

(assert (=> b!1475933 m!1721667))

(assert (=> d!432621 d!433069))

(declare-fun d!433071 () Bool)

(assert (=> d!433071 (= (list!6189 (_1!8036 (lex!1091 thiss!27374 rules!4290 (print!1126 thiss!27374 (singletonSeq!1305 lt!512749))))) (list!6192 (c!242518 (_1!8036 (lex!1091 thiss!27374 rules!4290 (print!1126 thiss!27374 (singletonSeq!1305 lt!512749)))))))))

(declare-fun bs!345671 () Bool)

(assert (= bs!345671 d!433071))

(declare-fun m!1721669 () Bool)

(assert (=> bs!345671 m!1721669))

(assert (=> d!432621 d!433071))

(declare-fun d!433073 () Bool)

(declare-fun lt!513112 () BalanceConc!10530)

(assert (=> d!433073 (= (list!6188 lt!513112) (printList!769 thiss!27374 (list!6189 (singletonSeq!1305 lt!512749))))))

(assert (=> d!433073 (= lt!513112 (printTailRec!705 thiss!27374 (singletonSeq!1305 lt!512749) 0 (BalanceConc!10531 Empty!5295)))))

(assert (=> d!433073 (= (print!1126 thiss!27374 (singletonSeq!1305 lt!512749)) lt!513112)))

(declare-fun bs!345672 () Bool)

(assert (= bs!345672 d!433073))

(declare-fun m!1721671 () Bool)

(assert (=> bs!345672 m!1721671))

(assert (=> bs!345672 m!1720393))

(assert (=> bs!345672 m!1720397))

(assert (=> bs!345672 m!1720397))

(declare-fun m!1721673 () Bool)

(assert (=> bs!345672 m!1721673))

(assert (=> bs!345672 m!1720393))

(declare-fun m!1721675 () Bool)

(assert (=> bs!345672 m!1721675))

(assert (=> d!432621 d!433073))

(declare-fun b!1475934 () Bool)

(declare-fun e!942973 () Bool)

(declare-fun e!942971 () Bool)

(assert (=> b!1475934 (= e!942973 e!942971)))

(declare-fun lt!513113 () tuple2!14300)

(declare-fun res!667106 () Bool)

(assert (=> b!1475934 (= res!667106 (< (size!12598 (_2!8036 lt!513113)) (size!12598 (print!1126 thiss!27374 (singletonSeq!1305 lt!512749)))))))

(assert (=> b!1475934 (=> (not res!667106) (not e!942971))))

(declare-fun b!1475935 () Bool)

(assert (=> b!1475935 (= e!942973 (= (_2!8036 lt!513113) (print!1126 thiss!27374 (singletonSeq!1305 lt!512749))))))

(declare-fun d!433075 () Bool)

(declare-fun e!942972 () Bool)

(assert (=> d!433075 e!942972))

(declare-fun res!667105 () Bool)

(assert (=> d!433075 (=> (not res!667105) (not e!942972))))

(assert (=> d!433075 (= res!667105 e!942973)))

(declare-fun c!242608 () Bool)

(assert (=> d!433075 (= c!242608 (> (size!12597 (_1!8036 lt!513113)) 0))))

(assert (=> d!433075 (= lt!513113 (lexTailRecV2!477 thiss!27374 rules!4290 (print!1126 thiss!27374 (singletonSeq!1305 lt!512749)) (BalanceConc!10531 Empty!5295) (print!1126 thiss!27374 (singletonSeq!1305 lt!512749)) (BalanceConc!10533 Empty!5296)))))

(assert (=> d!433075 (= (lex!1091 thiss!27374 rules!4290 (print!1126 thiss!27374 (singletonSeq!1305 lt!512749))) lt!513113)))

(declare-fun b!1475936 () Bool)

(assert (=> b!1475936 (= e!942972 (= (list!6188 (_2!8036 lt!513113)) (_2!8038 (lexList!722 thiss!27374 rules!4290 (list!6188 (print!1126 thiss!27374 (singletonSeq!1305 lt!512749)))))))))

(declare-fun b!1475937 () Bool)

(assert (=> b!1475937 (= e!942971 (not (isEmpty!9714 (_1!8036 lt!513113))))))

(declare-fun b!1475938 () Bool)

(declare-fun res!667104 () Bool)

(assert (=> b!1475938 (=> (not res!667104) (not e!942972))))

(assert (=> b!1475938 (= res!667104 (= (list!6189 (_1!8036 lt!513113)) (_1!8038 (lexList!722 thiss!27374 rules!4290 (list!6188 (print!1126 thiss!27374 (singletonSeq!1305 lt!512749)))))))))

(assert (= (and d!433075 c!242608) b!1475934))

(assert (= (and d!433075 (not c!242608)) b!1475935))

(assert (= (and b!1475934 res!667106) b!1475937))

(assert (= (and d!433075 res!667105) b!1475938))

(assert (= (and b!1475938 res!667104) b!1475936))

(declare-fun m!1721677 () Bool)

(assert (=> b!1475936 m!1721677))

(assert (=> b!1475936 m!1720389))

(declare-fun m!1721679 () Bool)

(assert (=> b!1475936 m!1721679))

(assert (=> b!1475936 m!1721679))

(declare-fun m!1721681 () Bool)

(assert (=> b!1475936 m!1721681))

(declare-fun m!1721683 () Bool)

(assert (=> d!433075 m!1721683))

(assert (=> d!433075 m!1720389))

(assert (=> d!433075 m!1720389))

(declare-fun m!1721685 () Bool)

(assert (=> d!433075 m!1721685))

(declare-fun m!1721687 () Bool)

(assert (=> b!1475937 m!1721687))

(declare-fun m!1721689 () Bool)

(assert (=> b!1475938 m!1721689))

(assert (=> b!1475938 m!1720389))

(assert (=> b!1475938 m!1721679))

(assert (=> b!1475938 m!1721679))

(assert (=> b!1475938 m!1721681))

(declare-fun m!1721691 () Bool)

(assert (=> b!1475934 m!1721691))

(assert (=> b!1475934 m!1720389))

(declare-fun m!1721693 () Bool)

(assert (=> b!1475934 m!1721693))

(assert (=> d!432621 d!433075))

(declare-fun d!433077 () Bool)

(assert (=> d!433077 (= (list!6189 (singletonSeq!1305 lt!512749)) (list!6192 (c!242518 (singletonSeq!1305 lt!512749))))))

(declare-fun bs!345673 () Bool)

(assert (= bs!345673 d!433077))

(declare-fun m!1721695 () Bool)

(assert (=> bs!345673 m!1721695))

(assert (=> d!432621 d!433077))

(declare-fun d!433079 () Bool)

(declare-fun lt!513116 () Int)

(assert (=> d!433079 (= lt!513116 (size!12599 (list!6189 (_1!8036 lt!512801))))))

(declare-fun size!12603 (Conc!5296) Int)

(assert (=> d!433079 (= lt!513116 (size!12603 (c!242518 (_1!8036 lt!512801))))))

(assert (=> d!433079 (= (size!12597 (_1!8036 lt!512801)) lt!513116)))

(declare-fun bs!345674 () Bool)

(assert (= bs!345674 d!433079))

(declare-fun m!1721697 () Bool)

(assert (=> bs!345674 m!1721697))

(assert (=> bs!345674 m!1721697))

(declare-fun m!1721699 () Bool)

(assert (=> bs!345674 m!1721699))

(declare-fun m!1721701 () Bool)

(assert (=> bs!345674 m!1721701))

(assert (=> d!432621 d!433079))

(assert (=> d!432621 d!432607))

(declare-fun d!433081 () Bool)

(declare-fun lt!513117 () Bool)

(assert (=> d!433081 (= lt!513117 (isEmpty!9709 (list!6188 (_2!8036 (lex!1091 thiss!27374 rules!4290 (print!1126 thiss!27374 (singletonSeq!1305 lt!512749)))))))))

(assert (=> d!433081 (= lt!513117 (isEmpty!9713 (c!242517 (_2!8036 (lex!1091 thiss!27374 rules!4290 (print!1126 thiss!27374 (singletonSeq!1305 lt!512749)))))))))

(assert (=> d!433081 (= (isEmpty!9710 (_2!8036 (lex!1091 thiss!27374 rules!4290 (print!1126 thiss!27374 (singletonSeq!1305 lt!512749))))) lt!513117)))

(declare-fun bs!345675 () Bool)

(assert (= bs!345675 d!433081))

(declare-fun m!1721703 () Bool)

(assert (=> bs!345675 m!1721703))

(assert (=> bs!345675 m!1721703))

(declare-fun m!1721705 () Bool)

(assert (=> bs!345675 m!1721705))

(declare-fun m!1721707 () Bool)

(assert (=> bs!345675 m!1721707))

(assert (=> b!1475243 d!433081))

(assert (=> b!1475243 d!433075))

(assert (=> b!1475243 d!433073))

(assert (=> b!1475243 d!433069))

(declare-fun bs!345676 () Bool)

(declare-fun d!433083 () Bool)

(assert (= bs!345676 (and d!433083 d!432609)))

(declare-fun lambda!63670 () Int)

(assert (=> bs!345676 (= lambda!63670 lambda!63616)))

(declare-fun bs!345677 () Bool)

(assert (= bs!345677 (and d!433083 d!433065)))

(assert (=> bs!345677 (= lambda!63670 lambda!63668)))

(declare-fun bs!345678 () Bool)

(assert (= bs!345678 (and d!433083 d!432907)))

(assert (=> bs!345678 (= lambda!63670 lambda!63646)))

(declare-fun bs!345679 () Bool)

(assert (= bs!345679 (and d!433083 d!432699)))

(assert (=> bs!345679 (= lambda!63670 lambda!63628)))

(declare-fun bs!345680 () Bool)

(assert (= bs!345680 (and d!433083 d!432933)))

(assert (=> bs!345680 (= lambda!63670 lambda!63656)))

(declare-fun bs!345681 () Bool)

(assert (= bs!345681 (and d!433083 d!432701)))

(assert (=> bs!345681 (= lambda!63670 lambda!63629)))

(declare-fun bs!345682 () Bool)

(assert (= bs!345682 (and d!433083 d!432589)))

(assert (=> bs!345682 (= lambda!63670 lambda!63615)))

(declare-fun b!1475943 () Bool)

(declare-fun e!942978 () Bool)

(assert (=> b!1475943 (= e!942978 true)))

(declare-fun b!1475942 () Bool)

(declare-fun e!942977 () Bool)

(assert (=> b!1475942 (= e!942977 e!942978)))

(declare-fun b!1475941 () Bool)

(declare-fun e!942976 () Bool)

(assert (=> b!1475941 (= e!942976 e!942977)))

(assert (=> d!433083 e!942976))

(assert (= b!1475942 b!1475943))

(assert (= b!1475941 b!1475942))

(assert (= (and d!433083 ((_ is Cons!15539) rules!4290)) b!1475941))

(assert (=> b!1475943 (< (dynLambda!7049 order!9333 (toValue!4098 (transformation!2767 (h!20940 rules!4290)))) (dynLambda!7050 order!9335 lambda!63670))))

(assert (=> b!1475943 (< (dynLambda!7051 order!9337 (toChars!3957 (transformation!2767 (h!20940 rules!4290)))) (dynLambda!7050 order!9335 lambda!63670))))

(assert (=> d!433083 true))

(declare-fun lt!513118 () Bool)

(assert (=> d!433083 (= lt!513118 (forall!3785 (++!4197 l1!3136 l2!3105) lambda!63670))))

(declare-fun e!942975 () Bool)

(assert (=> d!433083 (= lt!513118 e!942975)))

(declare-fun res!667108 () Bool)

(assert (=> d!433083 (=> res!667108 e!942975)))

(assert (=> d!433083 (= res!667108 (not ((_ is Cons!15538) (++!4197 l1!3136 l2!3105))))))

(assert (=> d!433083 (not (isEmpty!9706 rules!4290))))

(assert (=> d!433083 (= (rulesProduceEachTokenIndividuallyList!790 thiss!27374 rules!4290 (++!4197 l1!3136 l2!3105)) lt!513118)))

(declare-fun b!1475939 () Bool)

(declare-fun e!942974 () Bool)

(assert (=> b!1475939 (= e!942975 e!942974)))

(declare-fun res!667107 () Bool)

(assert (=> b!1475939 (=> (not res!667107) (not e!942974))))

(assert (=> b!1475939 (= res!667107 (rulesProduceIndividualToken!1282 thiss!27374 rules!4290 (h!20939 (++!4197 l1!3136 l2!3105))))))

(declare-fun b!1475940 () Bool)

(assert (=> b!1475940 (= e!942974 (rulesProduceEachTokenIndividuallyList!790 thiss!27374 rules!4290 (t!136395 (++!4197 l1!3136 l2!3105))))))

(assert (= (and d!433083 (not res!667108)) b!1475939))

(assert (= (and b!1475939 res!667107) b!1475940))

(assert (=> d!433083 m!1720197))

(declare-fun m!1721709 () Bool)

(assert (=> d!433083 m!1721709))

(assert (=> d!433083 m!1720191))

(declare-fun m!1721711 () Bool)

(assert (=> b!1475939 m!1721711))

(declare-fun m!1721713 () Bool)

(assert (=> b!1475940 m!1721713))

(assert (=> d!432697 d!433083))

(assert (=> d!432697 d!432693))

(declare-fun d!433085 () Bool)

(assert (=> d!433085 (rulesProduceEachTokenIndividuallyList!790 thiss!27374 rules!4290 (++!4197 l1!3136 l2!3105))))

(assert (=> d!433085 true))

(declare-fun _$79!123 () Unit!25281)

(assert (=> d!433085 (= (choose!9043 thiss!27374 rules!4290 l1!3136 l2!3105) _$79!123)))

(declare-fun bs!345683 () Bool)

(assert (= bs!345683 d!433085))

(assert (=> bs!345683 m!1720197))

(assert (=> bs!345683 m!1720197))

(assert (=> bs!345683 m!1720605))

(assert (=> d!432697 d!433085))

(assert (=> d!432697 d!432607))

(assert (=> b!1475151 d!432873))

(declare-fun d!433087 () Bool)

(declare-fun lt!513119 () Token!5196)

(assert (=> d!433087 (= lt!513119 (apply!4019 (list!6189 (_1!8036 lt!512801)) 0))))

(assert (=> d!433087 (= lt!513119 (apply!4020 (c!242518 (_1!8036 lt!512801)) 0))))

(declare-fun e!942979 () Bool)

(assert (=> d!433087 e!942979))

(declare-fun res!667109 () Bool)

(assert (=> d!433087 (=> (not res!667109) (not e!942979))))

(assert (=> d!433087 (= res!667109 (<= 0 0))))

(assert (=> d!433087 (= (apply!4012 (_1!8036 lt!512801) 0) lt!513119)))

(declare-fun b!1475944 () Bool)

(assert (=> b!1475944 (= e!942979 (< 0 (size!12597 (_1!8036 lt!512801))))))

(assert (= (and d!433087 res!667109) b!1475944))

(assert (=> d!433087 m!1721697))

(assert (=> d!433087 m!1721697))

(declare-fun m!1721715 () Bool)

(assert (=> d!433087 m!1721715))

(declare-fun m!1721717 () Bool)

(assert (=> d!433087 m!1721717))

(assert (=> b!1475944 m!1720399))

(assert (=> b!1475241 d!433087))

(declare-fun bs!345684 () Bool)

(declare-fun d!433089 () Bool)

(assert (= bs!345684 (and d!433089 d!432609)))

(declare-fun lambda!63671 () Int)

(assert (=> bs!345684 (= lambda!63671 lambda!63616)))

(declare-fun bs!345685 () Bool)

(assert (= bs!345685 (and d!433089 d!433083)))

(assert (=> bs!345685 (= lambda!63671 lambda!63670)))

(declare-fun bs!345686 () Bool)

(assert (= bs!345686 (and d!433089 d!433065)))

(assert (=> bs!345686 (= lambda!63671 lambda!63668)))

(declare-fun bs!345687 () Bool)

(assert (= bs!345687 (and d!433089 d!432907)))

(assert (=> bs!345687 (= lambda!63671 lambda!63646)))

(declare-fun bs!345688 () Bool)

(assert (= bs!345688 (and d!433089 d!432699)))

(assert (=> bs!345688 (= lambda!63671 lambda!63628)))

(declare-fun bs!345689 () Bool)

(assert (= bs!345689 (and d!433089 d!432933)))

(assert (=> bs!345689 (= lambda!63671 lambda!63656)))

(declare-fun bs!345690 () Bool)

(assert (= bs!345690 (and d!433089 d!432701)))

(assert (=> bs!345690 (= lambda!63671 lambda!63629)))

(declare-fun bs!345691 () Bool)

(assert (= bs!345691 (and d!433089 d!432589)))

(assert (=> bs!345691 (= lambda!63671 lambda!63615)))

(declare-fun b!1475949 () Bool)

(declare-fun e!942984 () Bool)

(assert (=> b!1475949 (= e!942984 true)))

(declare-fun b!1475948 () Bool)

(declare-fun e!942983 () Bool)

(assert (=> b!1475948 (= e!942983 e!942984)))

(declare-fun b!1475947 () Bool)

(declare-fun e!942982 () Bool)

(assert (=> b!1475947 (= e!942982 e!942983)))

(assert (=> d!433089 e!942982))

(assert (= b!1475948 b!1475949))

(assert (= b!1475947 b!1475948))

(assert (= (and d!433089 ((_ is Cons!15539) rules!4290)) b!1475947))

(assert (=> b!1475949 (< (dynLambda!7049 order!9333 (toValue!4098 (transformation!2767 (h!20940 rules!4290)))) (dynLambda!7050 order!9335 lambda!63671))))

(assert (=> b!1475949 (< (dynLambda!7051 order!9337 (toChars!3957 (transformation!2767 (h!20940 rules!4290)))) (dynLambda!7050 order!9335 lambda!63671))))

(assert (=> d!433089 true))

(declare-fun lt!513120 () Bool)

(assert (=> d!433089 (= lt!513120 (forall!3785 (t!136395 lt!512748) lambda!63671))))

(declare-fun e!942981 () Bool)

(assert (=> d!433089 (= lt!513120 e!942981)))

(declare-fun res!667111 () Bool)

(assert (=> d!433089 (=> res!667111 e!942981)))

(assert (=> d!433089 (= res!667111 (not ((_ is Cons!15538) (t!136395 lt!512748))))))

(assert (=> d!433089 (not (isEmpty!9706 rules!4290))))

(assert (=> d!433089 (= (rulesProduceEachTokenIndividuallyList!790 thiss!27374 rules!4290 (t!136395 lt!512748)) lt!513120)))

(declare-fun b!1475945 () Bool)

(declare-fun e!942980 () Bool)

(assert (=> b!1475945 (= e!942981 e!942980)))

(declare-fun res!667110 () Bool)

(assert (=> b!1475945 (=> (not res!667110) (not e!942980))))

(assert (=> b!1475945 (= res!667110 (rulesProduceIndividualToken!1282 thiss!27374 rules!4290 (h!20939 (t!136395 lt!512748))))))

(declare-fun b!1475946 () Bool)

(assert (=> b!1475946 (= e!942980 (rulesProduceEachTokenIndividuallyList!790 thiss!27374 rules!4290 (t!136395 (t!136395 lt!512748))))))

(assert (= (and d!433089 (not res!667111)) b!1475945))

(assert (= (and b!1475945 res!667110) b!1475946))

(declare-fun m!1721719 () Bool)

(assert (=> d!433089 m!1721719))

(assert (=> d!433089 m!1720191))

(declare-fun m!1721721 () Bool)

(assert (=> b!1475945 m!1721721))

(declare-fun m!1721723 () Bool)

(assert (=> b!1475946 m!1721723))

(assert (=> b!1475400 d!433089))

(declare-fun d!433091 () Bool)

(declare-fun res!667113 () Bool)

(declare-fun e!942985 () Bool)

(assert (=> d!433091 (=> res!667113 e!942985)))

(assert (=> d!433091 (= res!667113 (or (not ((_ is Cons!15538) (Cons!15538 (h!20939 (t!136395 l1!3136)) (t!136395 (t!136395 l1!3136))))) (not ((_ is Cons!15538) (t!136395 (Cons!15538 (h!20939 (t!136395 l1!3136)) (t!136395 (t!136395 l1!3136))))))))))

(assert (=> d!433091 (= (tokensListTwoByTwoPredicateSeparableList!283 thiss!27374 (Cons!15538 (h!20939 (t!136395 l1!3136)) (t!136395 (t!136395 l1!3136))) rules!4290) e!942985)))

(declare-fun b!1475950 () Bool)

(declare-fun e!942986 () Bool)

(assert (=> b!1475950 (= e!942985 e!942986)))

(declare-fun res!667112 () Bool)

(assert (=> b!1475950 (=> (not res!667112) (not e!942986))))

(assert (=> b!1475950 (= res!667112 (separableTokensPredicate!566 thiss!27374 (h!20939 (Cons!15538 (h!20939 (t!136395 l1!3136)) (t!136395 (t!136395 l1!3136)))) (h!20939 (t!136395 (Cons!15538 (h!20939 (t!136395 l1!3136)) (t!136395 (t!136395 l1!3136))))) rules!4290))))

(declare-fun lt!513124 () Unit!25281)

(declare-fun Unit!25304 () Unit!25281)

(assert (=> b!1475950 (= lt!513124 Unit!25304)))

(assert (=> b!1475950 (> (size!12598 (charsOf!1584 (h!20939 (t!136395 (Cons!15538 (h!20939 (t!136395 l1!3136)) (t!136395 (t!136395 l1!3136))))))) 0)))

(declare-fun lt!513125 () Unit!25281)

(declare-fun Unit!25305 () Unit!25281)

(assert (=> b!1475950 (= lt!513125 Unit!25305)))

(assert (=> b!1475950 (rulesProduceIndividualToken!1282 thiss!27374 rules!4290 (h!20939 (t!136395 (Cons!15538 (h!20939 (t!136395 l1!3136)) (t!136395 (t!136395 l1!3136))))))))

(declare-fun lt!513122 () Unit!25281)

(declare-fun Unit!25306 () Unit!25281)

(assert (=> b!1475950 (= lt!513122 Unit!25306)))

(assert (=> b!1475950 (rulesProduceIndividualToken!1282 thiss!27374 rules!4290 (h!20939 (Cons!15538 (h!20939 (t!136395 l1!3136)) (t!136395 (t!136395 l1!3136)))))))

(declare-fun lt!513127 () Unit!25281)

(declare-fun lt!513121 () Unit!25281)

(assert (=> b!1475950 (= lt!513127 lt!513121)))

(assert (=> b!1475950 (rulesProduceIndividualToken!1282 thiss!27374 rules!4290 (h!20939 (t!136395 (Cons!15538 (h!20939 (t!136395 l1!3136)) (t!136395 (t!136395 l1!3136))))))))

(assert (=> b!1475950 (= lt!513121 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!463 thiss!27374 rules!4290 (Cons!15538 (h!20939 (t!136395 l1!3136)) (t!136395 (t!136395 l1!3136))) (h!20939 (t!136395 (Cons!15538 (h!20939 (t!136395 l1!3136)) (t!136395 (t!136395 l1!3136)))))))))

(declare-fun lt!513123 () Unit!25281)

(declare-fun lt!513126 () Unit!25281)

(assert (=> b!1475950 (= lt!513123 lt!513126)))

(assert (=> b!1475950 (rulesProduceIndividualToken!1282 thiss!27374 rules!4290 (h!20939 (Cons!15538 (h!20939 (t!136395 l1!3136)) (t!136395 (t!136395 l1!3136)))))))

(assert (=> b!1475950 (= lt!513126 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!463 thiss!27374 rules!4290 (Cons!15538 (h!20939 (t!136395 l1!3136)) (t!136395 (t!136395 l1!3136))) (h!20939 (Cons!15538 (h!20939 (t!136395 l1!3136)) (t!136395 (t!136395 l1!3136))))))))

(declare-fun b!1475951 () Bool)

(assert (=> b!1475951 (= e!942986 (tokensListTwoByTwoPredicateSeparableList!283 thiss!27374 (Cons!15538 (h!20939 (t!136395 (Cons!15538 (h!20939 (t!136395 l1!3136)) (t!136395 (t!136395 l1!3136))))) (t!136395 (t!136395 (Cons!15538 (h!20939 (t!136395 l1!3136)) (t!136395 (t!136395 l1!3136)))))) rules!4290))))

(assert (= (and d!433091 (not res!667113)) b!1475950))

(assert (= (and b!1475950 res!667112) b!1475951))

(declare-fun m!1721725 () Bool)

(assert (=> b!1475950 m!1721725))

(declare-fun m!1721727 () Bool)

(assert (=> b!1475950 m!1721727))

(declare-fun m!1721729 () Bool)

(assert (=> b!1475950 m!1721729))

(declare-fun m!1721731 () Bool)

(assert (=> b!1475950 m!1721731))

(assert (=> b!1475950 m!1721725))

(declare-fun m!1721733 () Bool)

(assert (=> b!1475950 m!1721733))

(declare-fun m!1721735 () Bool)

(assert (=> b!1475950 m!1721735))

(declare-fun m!1721737 () Bool)

(assert (=> b!1475950 m!1721737))

(declare-fun m!1721739 () Bool)

(assert (=> b!1475951 m!1721739))

(assert (=> b!1475308 d!433091))

(declare-fun b!1475952 () Bool)

(declare-fun e!942989 () Bool)

(assert (=> b!1475952 (= e!942989 (inv!15 (value!88507 (h!20939 (t!136395 l1!3136)))))))

(declare-fun b!1475953 () Bool)

(declare-fun e!942987 () Bool)

(assert (=> b!1475953 (= e!942987 (inv!16 (value!88507 (h!20939 (t!136395 l1!3136)))))))

(declare-fun b!1475954 () Bool)

(declare-fun e!942988 () Bool)

(assert (=> b!1475954 (= e!942988 (inv!17 (value!88507 (h!20939 (t!136395 l1!3136)))))))

(declare-fun d!433093 () Bool)

(declare-fun c!242610 () Bool)

(assert (=> d!433093 (= c!242610 ((_ is IntegerValue!8571) (value!88507 (h!20939 (t!136395 l1!3136)))))))

(assert (=> d!433093 (= (inv!21 (value!88507 (h!20939 (t!136395 l1!3136)))) e!942987)))

(declare-fun b!1475955 () Bool)

(declare-fun res!667114 () Bool)

(assert (=> b!1475955 (=> res!667114 e!942989)))

(assert (=> b!1475955 (= res!667114 (not ((_ is IntegerValue!8573) (value!88507 (h!20939 (t!136395 l1!3136))))))))

(assert (=> b!1475955 (= e!942988 e!942989)))

(declare-fun b!1475956 () Bool)

(assert (=> b!1475956 (= e!942987 e!942988)))

(declare-fun c!242609 () Bool)

(assert (=> b!1475956 (= c!242609 ((_ is IntegerValue!8572) (value!88507 (h!20939 (t!136395 l1!3136)))))))

(assert (= (and d!433093 c!242610) b!1475953))

(assert (= (and d!433093 (not c!242610)) b!1475956))

(assert (= (and b!1475956 c!242609) b!1475954))

(assert (= (and b!1475956 (not c!242609)) b!1475955))

(assert (= (and b!1475955 (not res!667114)) b!1475952))

(declare-fun m!1721741 () Bool)

(assert (=> b!1475952 m!1721741))

(declare-fun m!1721743 () Bool)

(assert (=> b!1475953 m!1721743))

(declare-fun m!1721745 () Bool)

(assert (=> b!1475954 m!1721745))

(assert (=> b!1475420 d!433093))

(declare-fun d!433095 () Bool)

(assert (=> d!433095 (= (inv!20742 (tag!3031 (rule!4544 (h!20939 (t!136395 l2!3105))))) (= (mod (str.len (value!88506 (tag!3031 (rule!4544 (h!20939 (t!136395 l2!3105)))))) 2) 0))))

(assert (=> b!1475448 d!433095))

(declare-fun d!433097 () Bool)

(declare-fun res!667115 () Bool)

(declare-fun e!942990 () Bool)

(assert (=> d!433097 (=> (not res!667115) (not e!942990))))

(assert (=> d!433097 (= res!667115 (semiInverseModEq!1035 (toChars!3957 (transformation!2767 (rule!4544 (h!20939 (t!136395 l2!3105))))) (toValue!4098 (transformation!2767 (rule!4544 (h!20939 (t!136395 l2!3105)))))))))

(assert (=> d!433097 (= (inv!20745 (transformation!2767 (rule!4544 (h!20939 (t!136395 l2!3105))))) e!942990)))

(declare-fun b!1475957 () Bool)

(assert (=> b!1475957 (= e!942990 (equivClasses!994 (toChars!3957 (transformation!2767 (rule!4544 (h!20939 (t!136395 l2!3105))))) (toValue!4098 (transformation!2767 (rule!4544 (h!20939 (t!136395 l2!3105)))))))))

(assert (= (and d!433097 res!667115) b!1475957))

(declare-fun m!1721747 () Bool)

(assert (=> d!433097 m!1721747))

(declare-fun m!1721749 () Bool)

(assert (=> b!1475957 m!1721749))

(assert (=> b!1475448 d!433097))

(declare-fun d!433099 () Bool)

(declare-fun res!667116 () Bool)

(declare-fun e!942991 () Bool)

(assert (=> d!433099 (=> (not res!667116) (not e!942991))))

(assert (=> d!433099 (= res!667116 (not (isEmpty!9709 (originalCharacters!3629 (h!20939 (t!136395 l2!3105))))))))

(assert (=> d!433099 (= (inv!20746 (h!20939 (t!136395 l2!3105))) e!942991)))

(declare-fun b!1475958 () Bool)

(declare-fun res!667117 () Bool)

(assert (=> b!1475958 (=> (not res!667117) (not e!942991))))

(assert (=> b!1475958 (= res!667117 (= (originalCharacters!3629 (h!20939 (t!136395 l2!3105))) (list!6188 (dynLambda!7052 (toChars!3957 (transformation!2767 (rule!4544 (h!20939 (t!136395 l2!3105))))) (value!88507 (h!20939 (t!136395 l2!3105)))))))))

(declare-fun b!1475959 () Bool)

(assert (=> b!1475959 (= e!942991 (= (size!12591 (h!20939 (t!136395 l2!3105))) (size!12596 (originalCharacters!3629 (h!20939 (t!136395 l2!3105))))))))

(assert (= (and d!433099 res!667116) b!1475958))

(assert (= (and b!1475958 res!667117) b!1475959))

(declare-fun b_lambda!46193 () Bool)

(assert (=> (not b_lambda!46193) (not b!1475958)))

(assert (=> b!1475958 t!136561))

(declare-fun b_and!101921 () Bool)

(assert (= b_and!101905 (and (=> t!136561 result!100998) b_and!101921)))

(assert (=> b!1475958 t!136553))

(declare-fun b_and!101923 () Bool)

(assert (= b_and!101897 (and (=> t!136553 result!100990) b_and!101923)))

(assert (=> b!1475958 t!136563))

(declare-fun b_and!101925 () Bool)

(assert (= b_and!101907 (and (=> t!136563 result!101000) b_and!101925)))

(assert (=> b!1475958 t!136559))

(declare-fun b_and!101927 () Bool)

(assert (= b_and!101903 (and (=> t!136559 result!100996) b_and!101927)))

(assert (=> b!1475958 t!136555))

(declare-fun b_and!101929 () Bool)

(assert (= b_and!101899 (and (=> t!136555 result!100992) b_and!101929)))

(assert (=> b!1475958 t!136557))

(declare-fun b_and!101931 () Bool)

(assert (= b_and!101901 (and (=> t!136557 result!100994) b_and!101931)))

(declare-fun m!1721751 () Bool)

(assert (=> d!433099 m!1721751))

(assert (=> b!1475958 m!1721541))

(assert (=> b!1475958 m!1721541))

(declare-fun m!1721753 () Bool)

(assert (=> b!1475958 m!1721753))

(declare-fun m!1721755 () Bool)

(assert (=> b!1475959 m!1721755))

(assert (=> b!1475446 d!433099))

(assert (=> d!432639 d!433051))

(assert (=> d!432639 d!433053))

(declare-fun d!433101 () Bool)

(declare-fun lt!513128 () Int)

(assert (=> d!433101 (= lt!513128 (size!12599 (list!6189 (_1!8036 lt!512812))))))

(assert (=> d!433101 (= lt!513128 (size!12603 (c!242518 (_1!8036 lt!512812))))))

(assert (=> d!433101 (= (size!12597 (_1!8036 lt!512812)) lt!513128)))

(declare-fun bs!345692 () Bool)

(assert (= bs!345692 d!433101))

(assert (=> bs!345692 m!1721505))

(assert (=> bs!345692 m!1721505))

(declare-fun m!1721757 () Bool)

(assert (=> bs!345692 m!1721757))

(declare-fun m!1721759 () Bool)

(assert (=> bs!345692 m!1721759))

(assert (=> d!432639 d!433101))

(declare-fun d!433103 () Bool)

(assert (=> d!433103 (= (list!6189 (singletonSeq!1305 lt!512747)) (list!6192 (c!242518 (singletonSeq!1305 lt!512747))))))

(declare-fun bs!345693 () Bool)

(assert (= bs!345693 d!433103))

(declare-fun m!1721761 () Bool)

(assert (=> bs!345693 m!1721761))

(assert (=> d!432639 d!433103))

(assert (=> d!432639 d!432607))

(declare-fun d!433105 () Bool)

(assert (=> d!433105 (= (list!6189 (_1!8036 (lex!1091 thiss!27374 rules!4290 (print!1126 thiss!27374 (singletonSeq!1305 lt!512747))))) (list!6192 (c!242518 (_1!8036 (lex!1091 thiss!27374 rules!4290 (print!1126 thiss!27374 (singletonSeq!1305 lt!512747)))))))))

(declare-fun bs!345694 () Bool)

(assert (= bs!345694 d!433105))

(declare-fun m!1721763 () Bool)

(assert (=> bs!345694 m!1721763))

(assert (=> d!432639 d!433105))

(assert (=> d!432639 d!433041))

(declare-fun d!433107 () Bool)

(declare-fun lt!513131 () Bool)

(assert (=> d!433107 (= lt!513131 (select (content!2269 l1!3136) lt!512805))))

(declare-fun e!942996 () Bool)

(assert (=> d!433107 (= lt!513131 e!942996)))

(declare-fun res!667122 () Bool)

(assert (=> d!433107 (=> (not res!667122) (not e!942996))))

(assert (=> d!433107 (= res!667122 ((_ is Cons!15538) l1!3136))))

(assert (=> d!433107 (= (contains!2932 l1!3136 lt!512805) lt!513131)))

(declare-fun b!1475964 () Bool)

(declare-fun e!942997 () Bool)

(assert (=> b!1475964 (= e!942996 e!942997)))

(declare-fun res!667123 () Bool)

(assert (=> b!1475964 (=> res!667123 e!942997)))

(assert (=> b!1475964 (= res!667123 (= (h!20939 l1!3136) lt!512805))))

(declare-fun b!1475965 () Bool)

(assert (=> b!1475965 (= e!942997 (contains!2932 (t!136395 l1!3136) lt!512805))))

(assert (= (and d!433107 res!667122) b!1475964))

(assert (= (and b!1475964 (not res!667123)) b!1475965))

(assert (=> d!433107 m!1720579))

(declare-fun m!1721765 () Bool)

(assert (=> d!433107 m!1721765))

(declare-fun m!1721767 () Bool)

(assert (=> b!1475965 m!1721767))

(assert (=> d!432633 d!433107))

(assert (=> d!432633 d!432643))

(declare-fun d!433109 () Bool)

(assert (=> d!433109 (= (inv!20742 (tag!3031 (h!20940 (t!136396 rules!4290)))) (= (mod (str.len (value!88506 (tag!3031 (h!20940 (t!136396 rules!4290))))) 2) 0))))

(assert (=> b!1475464 d!433109))

(declare-fun d!433111 () Bool)

(declare-fun res!667124 () Bool)

(declare-fun e!942998 () Bool)

(assert (=> d!433111 (=> (not res!667124) (not e!942998))))

(assert (=> d!433111 (= res!667124 (semiInverseModEq!1035 (toChars!3957 (transformation!2767 (h!20940 (t!136396 rules!4290)))) (toValue!4098 (transformation!2767 (h!20940 (t!136396 rules!4290))))))))

(assert (=> d!433111 (= (inv!20745 (transformation!2767 (h!20940 (t!136396 rules!4290)))) e!942998)))

(declare-fun b!1475966 () Bool)

(assert (=> b!1475966 (= e!942998 (equivClasses!994 (toChars!3957 (transformation!2767 (h!20940 (t!136396 rules!4290)))) (toValue!4098 (transformation!2767 (h!20940 (t!136396 rules!4290))))))))

(assert (= (and d!433111 res!667124) b!1475966))

(declare-fun m!1721769 () Bool)

(assert (=> d!433111 m!1721769))

(declare-fun m!1721771 () Bool)

(assert (=> b!1475966 m!1721771))

(assert (=> b!1475464 d!433111))

(declare-fun b!1475969 () Bool)

(declare-fun e!943001 () Bool)

(assert (=> b!1475969 (= e!943001 true)))

(declare-fun b!1475968 () Bool)

(declare-fun e!943000 () Bool)

(assert (=> b!1475968 (= e!943000 e!943001)))

(declare-fun b!1475967 () Bool)

(declare-fun e!942999 () Bool)

(assert (=> b!1475967 (= e!942999 e!943000)))

(assert (=> b!1475401 e!942999))

(assert (= b!1475968 b!1475969))

(assert (= b!1475967 b!1475968))

(assert (= (and b!1475401 ((_ is Cons!15539) (t!136396 rules!4290))) b!1475967))

(assert (=> b!1475969 (< (dynLambda!7049 order!9333 (toValue!4098 (transformation!2767 (h!20940 (t!136396 rules!4290))))) (dynLambda!7050 order!9335 lambda!63629))))

(assert (=> b!1475969 (< (dynLambda!7051 order!9337 (toChars!3957 (transformation!2767 (h!20940 (t!136396 rules!4290))))) (dynLambda!7050 order!9335 lambda!63629))))

(declare-fun b!1475970 () Bool)

(declare-fun e!943002 () Bool)

(assert (=> b!1475970 (= e!943002 tp_is_empty!6939)))

(assert (=> b!1475434 (= tp!417330 e!943002)))

(declare-fun b!1475972 () Bool)

(declare-fun tp!417495 () Bool)

(assert (=> b!1475972 (= e!943002 tp!417495)))

(declare-fun b!1475973 () Bool)

(declare-fun tp!417493 () Bool)

(declare-fun tp!417497 () Bool)

(assert (=> b!1475973 (= e!943002 (and tp!417493 tp!417497))))

(declare-fun b!1475971 () Bool)

(declare-fun tp!417494 () Bool)

(declare-fun tp!417496 () Bool)

(assert (=> b!1475971 (= e!943002 (and tp!417494 tp!417496))))

(assert (= (and b!1475434 ((_ is ElementMatch!4081) (regOne!8674 (regex!2767 (rule!4544 (h!20939 l1!3136)))))) b!1475970))

(assert (= (and b!1475434 ((_ is Concat!6939) (regOne!8674 (regex!2767 (rule!4544 (h!20939 l1!3136)))))) b!1475971))

(assert (= (and b!1475434 ((_ is Star!4081) (regOne!8674 (regex!2767 (rule!4544 (h!20939 l1!3136)))))) b!1475972))

(assert (= (and b!1475434 ((_ is Union!4081) (regOne!8674 (regex!2767 (rule!4544 (h!20939 l1!3136)))))) b!1475973))

(declare-fun b!1475974 () Bool)

(declare-fun e!943003 () Bool)

(assert (=> b!1475974 (= e!943003 tp_is_empty!6939)))

(assert (=> b!1475434 (= tp!417332 e!943003)))

(declare-fun b!1475976 () Bool)

(declare-fun tp!417500 () Bool)

(assert (=> b!1475976 (= e!943003 tp!417500)))

(declare-fun b!1475977 () Bool)

(declare-fun tp!417498 () Bool)

(declare-fun tp!417502 () Bool)

(assert (=> b!1475977 (= e!943003 (and tp!417498 tp!417502))))

(declare-fun b!1475975 () Bool)

(declare-fun tp!417499 () Bool)

(declare-fun tp!417501 () Bool)

(assert (=> b!1475975 (= e!943003 (and tp!417499 tp!417501))))

(assert (= (and b!1475434 ((_ is ElementMatch!4081) (regTwo!8674 (regex!2767 (rule!4544 (h!20939 l1!3136)))))) b!1475974))

(assert (= (and b!1475434 ((_ is Concat!6939) (regTwo!8674 (regex!2767 (rule!4544 (h!20939 l1!3136)))))) b!1475975))

(assert (= (and b!1475434 ((_ is Star!4081) (regTwo!8674 (regex!2767 (rule!4544 (h!20939 l1!3136)))))) b!1475976))

(assert (= (and b!1475434 ((_ is Union!4081) (regTwo!8674 (regex!2767 (rule!4544 (h!20939 l1!3136)))))) b!1475977))

(declare-fun b!1475978 () Bool)

(declare-fun e!943004 () Bool)

(assert (=> b!1475978 (= e!943004 tp_is_empty!6939)))

(assert (=> b!1475435 (= tp!417331 e!943004)))

(declare-fun b!1475980 () Bool)

(declare-fun tp!417505 () Bool)

(assert (=> b!1475980 (= e!943004 tp!417505)))

(declare-fun b!1475981 () Bool)

(declare-fun tp!417503 () Bool)

(declare-fun tp!417507 () Bool)

(assert (=> b!1475981 (= e!943004 (and tp!417503 tp!417507))))

(declare-fun b!1475979 () Bool)

(declare-fun tp!417504 () Bool)

(declare-fun tp!417506 () Bool)

(assert (=> b!1475979 (= e!943004 (and tp!417504 tp!417506))))

(assert (= (and b!1475435 ((_ is ElementMatch!4081) (reg!4410 (regex!2767 (rule!4544 (h!20939 l1!3136)))))) b!1475978))

(assert (= (and b!1475435 ((_ is Concat!6939) (reg!4410 (regex!2767 (rule!4544 (h!20939 l1!3136)))))) b!1475979))

(assert (= (and b!1475435 ((_ is Star!4081) (reg!4410 (regex!2767 (rule!4544 (h!20939 l1!3136)))))) b!1475980))

(assert (= (and b!1475435 ((_ is Union!4081) (reg!4410 (regex!2767 (rule!4544 (h!20939 l1!3136)))))) b!1475981))

(declare-fun b!1475982 () Bool)

(declare-fun e!943005 () Bool)

(assert (=> b!1475982 (= e!943005 tp_is_empty!6939)))

(assert (=> b!1475453 (= tp!417347 e!943005)))

(declare-fun b!1475984 () Bool)

(declare-fun tp!417510 () Bool)

(assert (=> b!1475984 (= e!943005 tp!417510)))

(declare-fun b!1475985 () Bool)

(declare-fun tp!417508 () Bool)

(declare-fun tp!417512 () Bool)

(assert (=> b!1475985 (= e!943005 (and tp!417508 tp!417512))))

(declare-fun b!1475983 () Bool)

(declare-fun tp!417509 () Bool)

(declare-fun tp!417511 () Bool)

(assert (=> b!1475983 (= e!943005 (and tp!417509 tp!417511))))

(assert (= (and b!1475453 ((_ is ElementMatch!4081) (regOne!8675 (regex!2767 (rule!4544 (h!20939 l2!3105)))))) b!1475982))

(assert (= (and b!1475453 ((_ is Concat!6939) (regOne!8675 (regex!2767 (rule!4544 (h!20939 l2!3105)))))) b!1475983))

(assert (= (and b!1475453 ((_ is Star!4081) (regOne!8675 (regex!2767 (rule!4544 (h!20939 l2!3105)))))) b!1475984))

(assert (= (and b!1475453 ((_ is Union!4081) (regOne!8675 (regex!2767 (rule!4544 (h!20939 l2!3105)))))) b!1475985))

(declare-fun b!1475986 () Bool)

(declare-fun e!943006 () Bool)

(assert (=> b!1475986 (= e!943006 tp_is_empty!6939)))

(assert (=> b!1475453 (= tp!417351 e!943006)))

(declare-fun b!1475988 () Bool)

(declare-fun tp!417515 () Bool)

(assert (=> b!1475988 (= e!943006 tp!417515)))

(declare-fun b!1475989 () Bool)

(declare-fun tp!417513 () Bool)

(declare-fun tp!417517 () Bool)

(assert (=> b!1475989 (= e!943006 (and tp!417513 tp!417517))))

(declare-fun b!1475987 () Bool)

(declare-fun tp!417514 () Bool)

(declare-fun tp!417516 () Bool)

(assert (=> b!1475987 (= e!943006 (and tp!417514 tp!417516))))

(assert (= (and b!1475453 ((_ is ElementMatch!4081) (regTwo!8675 (regex!2767 (rule!4544 (h!20939 l2!3105)))))) b!1475986))

(assert (= (and b!1475453 ((_ is Concat!6939) (regTwo!8675 (regex!2767 (rule!4544 (h!20939 l2!3105)))))) b!1475987))

(assert (= (and b!1475453 ((_ is Star!4081) (regTwo!8675 (regex!2767 (rule!4544 (h!20939 l2!3105)))))) b!1475988))

(assert (= (and b!1475453 ((_ is Union!4081) (regTwo!8675 (regex!2767 (rule!4544 (h!20939 l2!3105)))))) b!1475989))

(declare-fun b!1475990 () Bool)

(declare-fun e!943007 () Bool)

(assert (=> b!1475990 (= e!943007 tp_is_empty!6939)))

(assert (=> b!1475443 (= tp!417338 e!943007)))

(declare-fun b!1475992 () Bool)

(declare-fun tp!417520 () Bool)

(assert (=> b!1475992 (= e!943007 tp!417520)))

(declare-fun b!1475993 () Bool)

(declare-fun tp!417518 () Bool)

(declare-fun tp!417522 () Bool)

(assert (=> b!1475993 (= e!943007 (and tp!417518 tp!417522))))

(declare-fun b!1475991 () Bool)

(declare-fun tp!417519 () Bool)

(declare-fun tp!417521 () Bool)

(assert (=> b!1475991 (= e!943007 (and tp!417519 tp!417521))))

(assert (= (and b!1475443 ((_ is ElementMatch!4081) (regOne!8674 (regex!2767 (h!20940 rules!4290))))) b!1475990))

(assert (= (and b!1475443 ((_ is Concat!6939) (regOne!8674 (regex!2767 (h!20940 rules!4290))))) b!1475991))

(assert (= (and b!1475443 ((_ is Star!4081) (regOne!8674 (regex!2767 (h!20940 rules!4290))))) b!1475992))

(assert (= (and b!1475443 ((_ is Union!4081) (regOne!8674 (regex!2767 (h!20940 rules!4290))))) b!1475993))

(declare-fun b!1475994 () Bool)

(declare-fun e!943008 () Bool)

(assert (=> b!1475994 (= e!943008 tp_is_empty!6939)))

(assert (=> b!1475443 (= tp!417340 e!943008)))

(declare-fun b!1475996 () Bool)

(declare-fun tp!417525 () Bool)

(assert (=> b!1475996 (= e!943008 tp!417525)))

(declare-fun b!1475997 () Bool)

(declare-fun tp!417523 () Bool)

(declare-fun tp!417527 () Bool)

(assert (=> b!1475997 (= e!943008 (and tp!417523 tp!417527))))

(declare-fun b!1475995 () Bool)

(declare-fun tp!417524 () Bool)

(declare-fun tp!417526 () Bool)

(assert (=> b!1475995 (= e!943008 (and tp!417524 tp!417526))))

(assert (= (and b!1475443 ((_ is ElementMatch!4081) (regTwo!8674 (regex!2767 (h!20940 rules!4290))))) b!1475994))

(assert (= (and b!1475443 ((_ is Concat!6939) (regTwo!8674 (regex!2767 (h!20940 rules!4290))))) b!1475995))

(assert (= (and b!1475443 ((_ is Star!4081) (regTwo!8674 (regex!2767 (h!20940 rules!4290))))) b!1475996))

(assert (= (and b!1475443 ((_ is Union!4081) (regTwo!8674 (regex!2767 (h!20940 rules!4290))))) b!1475997))

(declare-fun b!1475998 () Bool)

(declare-fun e!943009 () Bool)

(declare-fun tp!417528 () Bool)

(assert (=> b!1475998 (= e!943009 (and tp_is_empty!6939 tp!417528))))

(assert (=> b!1475454 (= tp!417352 e!943009)))

(assert (= (and b!1475454 ((_ is Cons!15537) (t!136394 (originalCharacters!3629 (h!20939 l2!3105))))) b!1475998))

(declare-fun b!1475999 () Bool)

(declare-fun e!943010 () Bool)

(assert (=> b!1475999 (= e!943010 tp_is_empty!6939)))

(assert (=> b!1475436 (= tp!417329 e!943010)))

(declare-fun b!1476001 () Bool)

(declare-fun tp!417531 () Bool)

(assert (=> b!1476001 (= e!943010 tp!417531)))

(declare-fun b!1476002 () Bool)

(declare-fun tp!417529 () Bool)

(declare-fun tp!417533 () Bool)

(assert (=> b!1476002 (= e!943010 (and tp!417529 tp!417533))))

(declare-fun b!1476000 () Bool)

(declare-fun tp!417530 () Bool)

(declare-fun tp!417532 () Bool)

(assert (=> b!1476000 (= e!943010 (and tp!417530 tp!417532))))

(assert (= (and b!1475436 ((_ is ElementMatch!4081) (regOne!8675 (regex!2767 (rule!4544 (h!20939 l1!3136)))))) b!1475999))

(assert (= (and b!1475436 ((_ is Concat!6939) (regOne!8675 (regex!2767 (rule!4544 (h!20939 l1!3136)))))) b!1476000))

(assert (= (and b!1475436 ((_ is Star!4081) (regOne!8675 (regex!2767 (rule!4544 (h!20939 l1!3136)))))) b!1476001))

(assert (= (and b!1475436 ((_ is Union!4081) (regOne!8675 (regex!2767 (rule!4544 (h!20939 l1!3136)))))) b!1476002))

(declare-fun b!1476003 () Bool)

(declare-fun e!943011 () Bool)

(assert (=> b!1476003 (= e!943011 tp_is_empty!6939)))

(assert (=> b!1475436 (= tp!417333 e!943011)))

(declare-fun b!1476005 () Bool)

(declare-fun tp!417536 () Bool)

(assert (=> b!1476005 (= e!943011 tp!417536)))

(declare-fun b!1476006 () Bool)

(declare-fun tp!417534 () Bool)

(declare-fun tp!417538 () Bool)

(assert (=> b!1476006 (= e!943011 (and tp!417534 tp!417538))))

(declare-fun b!1476004 () Bool)

(declare-fun tp!417535 () Bool)

(declare-fun tp!417537 () Bool)

(assert (=> b!1476004 (= e!943011 (and tp!417535 tp!417537))))

(assert (= (and b!1475436 ((_ is ElementMatch!4081) (regTwo!8675 (regex!2767 (rule!4544 (h!20939 l1!3136)))))) b!1476003))

(assert (= (and b!1475436 ((_ is Concat!6939) (regTwo!8675 (regex!2767 (rule!4544 (h!20939 l1!3136)))))) b!1476004))

(assert (= (and b!1475436 ((_ is Star!4081) (regTwo!8675 (regex!2767 (rule!4544 (h!20939 l1!3136)))))) b!1476005))

(assert (= (and b!1475436 ((_ is Union!4081) (regTwo!8675 (regex!2767 (rule!4544 (h!20939 l1!3136)))))) b!1476006))

(declare-fun b!1476007 () Bool)

(declare-fun e!943012 () Bool)

(assert (=> b!1476007 (= e!943012 tp_is_empty!6939)))

(assert (=> b!1475445 (= tp!417337 e!943012)))

(declare-fun b!1476009 () Bool)

(declare-fun tp!417541 () Bool)

(assert (=> b!1476009 (= e!943012 tp!417541)))

(declare-fun b!1476010 () Bool)

(declare-fun tp!417539 () Bool)

(declare-fun tp!417543 () Bool)

(assert (=> b!1476010 (= e!943012 (and tp!417539 tp!417543))))

(declare-fun b!1476008 () Bool)

(declare-fun tp!417540 () Bool)

(declare-fun tp!417542 () Bool)

(assert (=> b!1476008 (= e!943012 (and tp!417540 tp!417542))))

(assert (= (and b!1475445 ((_ is ElementMatch!4081) (regOne!8675 (regex!2767 (h!20940 rules!4290))))) b!1476007))

(assert (= (and b!1475445 ((_ is Concat!6939) (regOne!8675 (regex!2767 (h!20940 rules!4290))))) b!1476008))

(assert (= (and b!1475445 ((_ is Star!4081) (regOne!8675 (regex!2767 (h!20940 rules!4290))))) b!1476009))

(assert (= (and b!1475445 ((_ is Union!4081) (regOne!8675 (regex!2767 (h!20940 rules!4290))))) b!1476010))

(declare-fun b!1476011 () Bool)

(declare-fun e!943013 () Bool)

(assert (=> b!1476011 (= e!943013 tp_is_empty!6939)))

(assert (=> b!1475445 (= tp!417341 e!943013)))

(declare-fun b!1476013 () Bool)

(declare-fun tp!417546 () Bool)

(assert (=> b!1476013 (= e!943013 tp!417546)))

(declare-fun b!1476014 () Bool)

(declare-fun tp!417544 () Bool)

(declare-fun tp!417548 () Bool)

(assert (=> b!1476014 (= e!943013 (and tp!417544 tp!417548))))

(declare-fun b!1476012 () Bool)

(declare-fun tp!417545 () Bool)

(declare-fun tp!417547 () Bool)

(assert (=> b!1476012 (= e!943013 (and tp!417545 tp!417547))))

(assert (= (and b!1475445 ((_ is ElementMatch!4081) (regTwo!8675 (regex!2767 (h!20940 rules!4290))))) b!1476011))

(assert (= (and b!1475445 ((_ is Concat!6939) (regTwo!8675 (regex!2767 (h!20940 rules!4290))))) b!1476012))

(assert (= (and b!1475445 ((_ is Star!4081) (regTwo!8675 (regex!2767 (h!20940 rules!4290))))) b!1476013))

(assert (= (and b!1475445 ((_ is Union!4081) (regTwo!8675 (regex!2767 (h!20940 rules!4290))))) b!1476014))

(declare-fun tp!417556 () Bool)

(declare-fun tp!417555 () Bool)

(declare-fun e!943018 () Bool)

(declare-fun b!1476023 () Bool)

(assert (=> b!1476023 (= e!943018 (and (inv!20749 (left!13117 (c!242517 (dynLambda!7052 (toChars!3957 (transformation!2767 (rule!4544 (h!20939 l1!3136)))) (value!88507 (h!20939 l1!3136)))))) tp!417555 (inv!20749 (right!13447 (c!242517 (dynLambda!7052 (toChars!3957 (transformation!2767 (rule!4544 (h!20939 l1!3136)))) (value!88507 (h!20939 l1!3136)))))) tp!417556))))

(declare-fun b!1476025 () Bool)

(declare-fun e!943019 () Bool)

(declare-fun tp!417557 () Bool)

(assert (=> b!1476025 (= e!943019 tp!417557)))

(declare-fun b!1476024 () Bool)

(declare-fun inv!20756 (IArray!10595) Bool)

(assert (=> b!1476024 (= e!943018 (and (inv!20756 (xs!8050 (c!242517 (dynLambda!7052 (toChars!3957 (transformation!2767 (rule!4544 (h!20939 l1!3136)))) (value!88507 (h!20939 l1!3136)))))) e!943019))))

(assert (=> b!1475176 (= tp!417237 (and (inv!20749 (c!242517 (dynLambda!7052 (toChars!3957 (transformation!2767 (rule!4544 (h!20939 l1!3136)))) (value!88507 (h!20939 l1!3136))))) e!943018))))

(assert (= (and b!1475176 ((_ is Node!5295) (c!242517 (dynLambda!7052 (toChars!3957 (transformation!2767 (rule!4544 (h!20939 l1!3136)))) (value!88507 (h!20939 l1!3136)))))) b!1476023))

(assert (= b!1476024 b!1476025))

(assert (= (and b!1475176 ((_ is Leaf!7880) (c!242517 (dynLambda!7052 (toChars!3957 (transformation!2767 (rule!4544 (h!20939 l1!3136)))) (value!88507 (h!20939 l1!3136)))))) b!1476024))

(declare-fun m!1721773 () Bool)

(assert (=> b!1476023 m!1721773))

(declare-fun m!1721775 () Bool)

(assert (=> b!1476023 m!1721775))

(declare-fun m!1721777 () Bool)

(assert (=> b!1476024 m!1721777))

(assert (=> b!1475176 m!1720283))

(declare-fun b!1476026 () Bool)

(declare-fun e!943020 () Bool)

(assert (=> b!1476026 (= e!943020 tp_is_empty!6939)))

(assert (=> b!1475444 (= tp!417339 e!943020)))

(declare-fun b!1476028 () Bool)

(declare-fun tp!417560 () Bool)

(assert (=> b!1476028 (= e!943020 tp!417560)))

(declare-fun b!1476029 () Bool)

(declare-fun tp!417558 () Bool)

(declare-fun tp!417562 () Bool)

(assert (=> b!1476029 (= e!943020 (and tp!417558 tp!417562))))

(declare-fun b!1476027 () Bool)

(declare-fun tp!417559 () Bool)

(declare-fun tp!417561 () Bool)

(assert (=> b!1476027 (= e!943020 (and tp!417559 tp!417561))))

(assert (= (and b!1475444 ((_ is ElementMatch!4081) (reg!4410 (regex!2767 (h!20940 rules!4290))))) b!1476026))

(assert (= (and b!1475444 ((_ is Concat!6939) (reg!4410 (regex!2767 (h!20940 rules!4290))))) b!1476027))

(assert (= (and b!1475444 ((_ is Star!4081) (reg!4410 (regex!2767 (h!20940 rules!4290))))) b!1476028))

(assert (= (and b!1475444 ((_ is Union!4081) (reg!4410 (regex!2767 (h!20940 rules!4290))))) b!1476029))

(declare-fun b!1476032 () Bool)

(declare-fun e!943023 () Bool)

(assert (=> b!1476032 (= e!943023 true)))

(declare-fun b!1476031 () Bool)

(declare-fun e!943022 () Bool)

(assert (=> b!1476031 (= e!943022 e!943023)))

(declare-fun b!1476030 () Bool)

(declare-fun e!943021 () Bool)

(assert (=> b!1476030 (= e!943021 e!943022)))

(assert (=> b!1475161 e!943021))

(assert (= b!1476031 b!1476032))

(assert (= b!1476030 b!1476031))

(assert (= (and b!1475161 ((_ is Cons!15539) (t!136396 rules!4290))) b!1476030))

(assert (=> b!1476032 (< (dynLambda!7049 order!9333 (toValue!4098 (transformation!2767 (h!20940 (t!136396 rules!4290))))) (dynLambda!7050 order!9335 lambda!63615))))

(assert (=> b!1476032 (< (dynLambda!7051 order!9337 (toChars!3957 (transformation!2767 (h!20940 (t!136396 rules!4290))))) (dynLambda!7050 order!9335 lambda!63615))))

(declare-fun b!1476036 () Bool)

(declare-fun b_free!37671 () Bool)

(declare-fun b_next!38375 () Bool)

(assert (=> b!1476036 (= b_free!37671 (not b_next!38375))))

(declare-fun tp!417563 () Bool)

(declare-fun b_and!101933 () Bool)

(assert (=> b!1476036 (= tp!417563 b_and!101933)))

(declare-fun b_free!37673 () Bool)

(declare-fun b_next!38377 () Bool)

(assert (=> b!1476036 (= b_free!37673 (not b_next!38377))))

(declare-fun t!136602 () Bool)

(declare-fun tb!84089 () Bool)

(assert (=> (and b!1476036 (= (toChars!3957 (transformation!2767 (rule!4544 (h!20939 (t!136395 (t!136395 l1!3136)))))) (toChars!3957 (transformation!2767 (rule!4544 (h!20939 (t!136395 l1!3136)))))) t!136602) tb!84089))

(declare-fun result!101042 () Bool)

(assert (= result!101042 result!100954))

(assert (=> d!432893 t!136602))

(declare-fun t!136604 () Bool)

(declare-fun tb!84091 () Bool)

(assert (=> (and b!1476036 (= (toChars!3957 (transformation!2767 (rule!4544 (h!20939 (t!136395 (t!136395 l1!3136)))))) (toChars!3957 (transformation!2767 (rule!4544 (h!20939 (t!136395 l2!3105)))))) t!136604) tb!84091))

(declare-fun result!101044 () Bool)

(assert (= result!101044 result!100990))

(assert (=> b!1475958 t!136604))

(declare-fun tb!84093 () Bool)

(declare-fun t!136606 () Bool)

(assert (=> (and b!1476036 (= (toChars!3957 (transformation!2767 (rule!4544 (h!20939 (t!136395 (t!136395 l1!3136)))))) (toChars!3957 (transformation!2767 (rule!4544 (h!20939 l2!3105))))) t!136606) tb!84093))

(declare-fun result!101046 () Bool)

(assert (= result!101046 result!100860))

(assert (=> b!1475318 t!136606))

(declare-fun tb!84095 () Bool)

(declare-fun t!136608 () Bool)

(assert (=> (and b!1476036 (= (toChars!3957 (transformation!2767 (rule!4544 (h!20939 (t!136395 (t!136395 l1!3136)))))) (toChars!3957 (transformation!2767 (rule!4544 lt!512749)))) t!136608) tb!84095))

(declare-fun result!101048 () Bool)

(assert (= result!101048 result!100966))

(assert (=> d!432969 t!136608))

(declare-fun tb!84097 () Bool)

(declare-fun t!136610 () Bool)

(assert (=> (and b!1476036 (= (toChars!3957 (transformation!2767 (rule!4544 (h!20939 (t!136395 (t!136395 l1!3136)))))) (toChars!3957 (transformation!2767 (rule!4544 lt!512747)))) t!136610) tb!84097))

(declare-fun result!101050 () Bool)

(assert (= result!101050 result!100978))

(assert (=> d!432987 t!136610))

(assert (=> d!433021 t!136604))

(declare-fun t!136612 () Bool)

(declare-fun tb!84099 () Bool)

(assert (=> (and b!1476036 (= (toChars!3957 (transformation!2767 (rule!4544 (h!20939 (t!136395 (t!136395 l1!3136)))))) (toChars!3957 (transformation!2767 (rule!4544 (h!20939 l1!3136))))) t!136612) tb!84099))

(declare-fun result!101052 () Bool)

(assert (= result!101052 result!100838))

(assert (=> b!1475170 t!136612))

(assert (=> b!1475666 t!136602))

(declare-fun tp!417566 () Bool)

(declare-fun b_and!101935 () Bool)

(assert (=> b!1476036 (= tp!417566 (and (=> t!136608 result!101048) (=> t!136606 result!101046) (=> t!136602 result!101042) (=> t!136612 result!101052) (=> t!136604 result!101044) (=> t!136610 result!101050) b_and!101935))))

(declare-fun e!943024 () Bool)

(assert (=> b!1476036 (= e!943024 (and tp!417563 tp!417566))))

(declare-fun e!943026 () Bool)

(declare-fun e!943025 () Bool)

(declare-fun tp!417565 () Bool)

(declare-fun b!1476033 () Bool)

(assert (=> b!1476033 (= e!943025 (and (inv!20746 (h!20939 (t!136395 (t!136395 l1!3136)))) e!943026 tp!417565))))

(assert (=> b!1475419 (= tp!417316 e!943025)))

(declare-fun e!943028 () Bool)

(declare-fun b!1476034 () Bool)

(declare-fun tp!417567 () Bool)

(assert (=> b!1476034 (= e!943026 (and (inv!21 (value!88507 (h!20939 (t!136395 (t!136395 l1!3136))))) e!943028 tp!417567))))

(declare-fun tp!417564 () Bool)

(declare-fun b!1476035 () Bool)

(assert (=> b!1476035 (= e!943028 (and tp!417564 (inv!20742 (tag!3031 (rule!4544 (h!20939 (t!136395 (t!136395 l1!3136)))))) (inv!20745 (transformation!2767 (rule!4544 (h!20939 (t!136395 (t!136395 l1!3136)))))) e!943024))))

(assert (= b!1476035 b!1476036))

(assert (= b!1476034 b!1476035))

(assert (= b!1476033 b!1476034))

(assert (= (and b!1475419 ((_ is Cons!15538) (t!136395 (t!136395 l1!3136)))) b!1476033))

(declare-fun m!1721779 () Bool)

(assert (=> b!1476033 m!1721779))

(declare-fun m!1721781 () Bool)

(assert (=> b!1476034 m!1721781))

(declare-fun m!1721783 () Bool)

(assert (=> b!1476035 m!1721783))

(declare-fun m!1721785 () Bool)

(assert (=> b!1476035 m!1721785))

(declare-fun b!1476037 () Bool)

(declare-fun e!943030 () Bool)

(assert (=> b!1476037 (= e!943030 tp_is_empty!6939)))

(assert (=> b!1475421 (= tp!417315 e!943030)))

(declare-fun b!1476039 () Bool)

(declare-fun tp!417570 () Bool)

(assert (=> b!1476039 (= e!943030 tp!417570)))

(declare-fun b!1476040 () Bool)

(declare-fun tp!417568 () Bool)

(declare-fun tp!417572 () Bool)

(assert (=> b!1476040 (= e!943030 (and tp!417568 tp!417572))))

(declare-fun b!1476038 () Bool)

(declare-fun tp!417569 () Bool)

(declare-fun tp!417571 () Bool)

(assert (=> b!1476038 (= e!943030 (and tp!417569 tp!417571))))

(assert (= (and b!1475421 ((_ is ElementMatch!4081) (regex!2767 (rule!4544 (h!20939 (t!136395 l1!3136)))))) b!1476037))

(assert (= (and b!1475421 ((_ is Concat!6939) (regex!2767 (rule!4544 (h!20939 (t!136395 l1!3136)))))) b!1476038))

(assert (= (and b!1475421 ((_ is Star!4081) (regex!2767 (rule!4544 (h!20939 (t!136395 l1!3136)))))) b!1476039))

(assert (= (and b!1475421 ((_ is Union!4081) (regex!2767 (rule!4544 (h!20939 (t!136395 l1!3136)))))) b!1476040))

(declare-fun b!1476043 () Bool)

(declare-fun e!943033 () Bool)

(assert (=> b!1476043 (= e!943033 true)))

(declare-fun b!1476042 () Bool)

(declare-fun e!943032 () Bool)

(assert (=> b!1476042 (= e!943032 e!943033)))

(declare-fun b!1476041 () Bool)

(declare-fun e!943031 () Bool)

(assert (=> b!1476041 (= e!943031 e!943032)))

(assert (=> b!1475396 e!943031))

(assert (= b!1476042 b!1476043))

(assert (= b!1476041 b!1476042))

(assert (= (and b!1475396 ((_ is Cons!15539) (t!136396 rules!4290))) b!1476041))

(assert (=> b!1476043 (< (dynLambda!7049 order!9333 (toValue!4098 (transformation!2767 (h!20940 (t!136396 rules!4290))))) (dynLambda!7050 order!9335 lambda!63628))))

(assert (=> b!1476043 (< (dynLambda!7051 order!9337 (toChars!3957 (transformation!2767 (h!20940 (t!136396 rules!4290))))) (dynLambda!7050 order!9335 lambda!63628))))

(declare-fun b!1476044 () Bool)

(declare-fun e!943034 () Bool)

(declare-fun tp!417573 () Bool)

(assert (=> b!1476044 (= e!943034 (and tp_is_empty!6939 tp!417573))))

(assert (=> b!1475441 (= tp!417336 e!943034)))

(assert (= (and b!1475441 ((_ is Cons!15537) (t!136394 (originalCharacters!3629 (h!20939 l1!3136))))) b!1476044))

(declare-fun b!1476047 () Bool)

(declare-fun e!943037 () Bool)

(assert (=> b!1476047 (= e!943037 true)))

(declare-fun b!1476046 () Bool)

(declare-fun e!943036 () Bool)

(assert (=> b!1476046 (= e!943036 e!943037)))

(declare-fun b!1476045 () Bool)

(declare-fun e!943035 () Bool)

(assert (=> b!1476045 (= e!943035 e!943036)))

(assert (=> b!1475197 e!943035))

(assert (= b!1476046 b!1476047))

(assert (= b!1476045 b!1476046))

(assert (= (and b!1475197 ((_ is Cons!15539) (t!136396 rules!4290))) b!1476045))

(assert (=> b!1476047 (< (dynLambda!7049 order!9333 (toValue!4098 (transformation!2767 (h!20940 (t!136396 rules!4290))))) (dynLambda!7050 order!9335 lambda!63616))))

(assert (=> b!1476047 (< (dynLambda!7051 order!9337 (toChars!3957 (transformation!2767 (h!20940 (t!136396 rules!4290))))) (dynLambda!7050 order!9335 lambda!63616))))

(declare-fun e!943038 () Bool)

(declare-fun tp!417574 () Bool)

(declare-fun tp!417575 () Bool)

(declare-fun b!1476048 () Bool)

(assert (=> b!1476048 (= e!943038 (and (inv!20749 (left!13117 (c!242517 (dynLambda!7052 (toChars!3957 (transformation!2767 (rule!4544 (h!20939 l2!3105)))) (value!88507 (h!20939 l2!3105)))))) tp!417574 (inv!20749 (right!13447 (c!242517 (dynLambda!7052 (toChars!3957 (transformation!2767 (rule!4544 (h!20939 l2!3105)))) (value!88507 (h!20939 l2!3105)))))) tp!417575))))

(declare-fun b!1476050 () Bool)

(declare-fun e!943039 () Bool)

(declare-fun tp!417576 () Bool)

(assert (=> b!1476050 (= e!943039 tp!417576)))

(declare-fun b!1476049 () Bool)

(assert (=> b!1476049 (= e!943038 (and (inv!20756 (xs!8050 (c!242517 (dynLambda!7052 (toChars!3957 (transformation!2767 (rule!4544 (h!20939 l2!3105)))) (value!88507 (h!20939 l2!3105)))))) e!943039))))

(assert (=> b!1475322 (= tp!417242 (and (inv!20749 (c!242517 (dynLambda!7052 (toChars!3957 (transformation!2767 (rule!4544 (h!20939 l2!3105)))) (value!88507 (h!20939 l2!3105))))) e!943038))))

(assert (= (and b!1475322 ((_ is Node!5295) (c!242517 (dynLambda!7052 (toChars!3957 (transformation!2767 (rule!4544 (h!20939 l2!3105)))) (value!88507 (h!20939 l2!3105)))))) b!1476048))

(assert (= b!1476049 b!1476050))

(assert (= (and b!1475322 ((_ is Leaf!7880) (c!242517 (dynLambda!7052 (toChars!3957 (transformation!2767 (rule!4544 (h!20939 l2!3105)))) (value!88507 (h!20939 l2!3105)))))) b!1476049))

(declare-fun m!1721787 () Bool)

(assert (=> b!1476048 m!1721787))

(declare-fun m!1721789 () Bool)

(assert (=> b!1476048 m!1721789))

(declare-fun m!1721791 () Bool)

(assert (=> b!1476049 m!1721791))

(assert (=> b!1475322 m!1720539))

(declare-fun b!1476051 () Bool)

(declare-fun e!943040 () Bool)

(declare-fun tp!417577 () Bool)

(assert (=> b!1476051 (= e!943040 (and tp_is_empty!6939 tp!417577))))

(assert (=> b!1475420 (= tp!417318 e!943040)))

(assert (= (and b!1475420 ((_ is Cons!15537) (originalCharacters!3629 (h!20939 (t!136395 l1!3136))))) b!1476051))

(declare-fun b!1476052 () Bool)

(declare-fun e!943041 () Bool)

(declare-fun tp!417578 () Bool)

(assert (=> b!1476052 (= e!943041 (and tp_is_empty!6939 tp!417578))))

(assert (=> b!1475447 (= tp!417346 e!943041)))

(assert (= (and b!1475447 ((_ is Cons!15537) (originalCharacters!3629 (h!20939 (t!136395 l2!3105))))) b!1476052))

(declare-fun b!1476053 () Bool)

(declare-fun e!943042 () Bool)

(assert (=> b!1476053 (= e!943042 tp_is_empty!6939)))

(assert (=> b!1475452 (= tp!417349 e!943042)))

(declare-fun b!1476055 () Bool)

(declare-fun tp!417581 () Bool)

(assert (=> b!1476055 (= e!943042 tp!417581)))

(declare-fun b!1476056 () Bool)

(declare-fun tp!417579 () Bool)

(declare-fun tp!417583 () Bool)

(assert (=> b!1476056 (= e!943042 (and tp!417579 tp!417583))))

(declare-fun b!1476054 () Bool)

(declare-fun tp!417580 () Bool)

(declare-fun tp!417582 () Bool)

(assert (=> b!1476054 (= e!943042 (and tp!417580 tp!417582))))

(assert (= (and b!1475452 ((_ is ElementMatch!4081) (reg!4410 (regex!2767 (rule!4544 (h!20939 l2!3105)))))) b!1476053))

(assert (= (and b!1475452 ((_ is Concat!6939) (reg!4410 (regex!2767 (rule!4544 (h!20939 l2!3105)))))) b!1476054))

(assert (= (and b!1475452 ((_ is Star!4081) (reg!4410 (regex!2767 (rule!4544 (h!20939 l2!3105)))))) b!1476055))

(assert (= (and b!1475452 ((_ is Union!4081) (reg!4410 (regex!2767 (rule!4544 (h!20939 l2!3105)))))) b!1476056))

(declare-fun b!1476057 () Bool)

(declare-fun e!943043 () Bool)

(assert (=> b!1476057 (= e!943043 tp_is_empty!6939)))

(assert (=> b!1475448 (= tp!417343 e!943043)))

(declare-fun b!1476059 () Bool)

(declare-fun tp!417586 () Bool)

(assert (=> b!1476059 (= e!943043 tp!417586)))

(declare-fun b!1476060 () Bool)

(declare-fun tp!417584 () Bool)

(declare-fun tp!417588 () Bool)

(assert (=> b!1476060 (= e!943043 (and tp!417584 tp!417588))))

(declare-fun b!1476058 () Bool)

(declare-fun tp!417585 () Bool)

(declare-fun tp!417587 () Bool)

(assert (=> b!1476058 (= e!943043 (and tp!417585 tp!417587))))

(assert (= (and b!1475448 ((_ is ElementMatch!4081) (regex!2767 (rule!4544 (h!20939 (t!136395 l2!3105)))))) b!1476057))

(assert (= (and b!1475448 ((_ is Concat!6939) (regex!2767 (rule!4544 (h!20939 (t!136395 l2!3105)))))) b!1476058))

(assert (= (and b!1475448 ((_ is Star!4081) (regex!2767 (rule!4544 (h!20939 (t!136395 l2!3105)))))) b!1476059))

(assert (= (and b!1475448 ((_ is Union!4081) (regex!2767 (rule!4544 (h!20939 (t!136395 l2!3105)))))) b!1476060))

(declare-fun b!1476063 () Bool)

(declare-fun b_free!37675 () Bool)

(declare-fun b_next!38379 () Bool)

(assert (=> b!1476063 (= b_free!37675 (not b_next!38379))))

(declare-fun tp!417591 () Bool)

(declare-fun b_and!101937 () Bool)

(assert (=> b!1476063 (= tp!417591 b_and!101937)))

(declare-fun b_free!37677 () Bool)

(declare-fun b_next!38381 () Bool)

(assert (=> b!1476063 (= b_free!37677 (not b_next!38381))))

(declare-fun t!136614 () Bool)

(declare-fun tb!84101 () Bool)

(assert (=> (and b!1476063 (= (toChars!3957 (transformation!2767 (h!20940 (t!136396 (t!136396 rules!4290))))) (toChars!3957 (transformation!2767 (rule!4544 (h!20939 (t!136395 l1!3136)))))) t!136614) tb!84101))

(declare-fun result!101054 () Bool)

(assert (= result!101054 result!100954))

(assert (=> d!432893 t!136614))

(declare-fun tb!84103 () Bool)

(declare-fun t!136616 () Bool)

(assert (=> (and b!1476063 (= (toChars!3957 (transformation!2767 (h!20940 (t!136396 (t!136396 rules!4290))))) (toChars!3957 (transformation!2767 (rule!4544 (h!20939 (t!136395 l2!3105)))))) t!136616) tb!84103))

(declare-fun result!101056 () Bool)

(assert (= result!101056 result!100990))

(assert (=> b!1475958 t!136616))

(declare-fun t!136618 () Bool)

(declare-fun tb!84105 () Bool)

(assert (=> (and b!1476063 (= (toChars!3957 (transformation!2767 (h!20940 (t!136396 (t!136396 rules!4290))))) (toChars!3957 (transformation!2767 (rule!4544 (h!20939 l2!3105))))) t!136618) tb!84105))

(declare-fun result!101058 () Bool)

(assert (= result!101058 result!100860))

(assert (=> b!1475318 t!136618))

(declare-fun t!136620 () Bool)

(declare-fun tb!84107 () Bool)

(assert (=> (and b!1476063 (= (toChars!3957 (transformation!2767 (h!20940 (t!136396 (t!136396 rules!4290))))) (toChars!3957 (transformation!2767 (rule!4544 lt!512749)))) t!136620) tb!84107))

(declare-fun result!101060 () Bool)

(assert (= result!101060 result!100966))

(assert (=> d!432969 t!136620))

(declare-fun tb!84109 () Bool)

(declare-fun t!136622 () Bool)

(assert (=> (and b!1476063 (= (toChars!3957 (transformation!2767 (h!20940 (t!136396 (t!136396 rules!4290))))) (toChars!3957 (transformation!2767 (rule!4544 lt!512747)))) t!136622) tb!84109))

(declare-fun result!101062 () Bool)

(assert (= result!101062 result!100978))

(assert (=> d!432987 t!136622))

(assert (=> d!433021 t!136616))

(declare-fun tb!84111 () Bool)

(declare-fun t!136624 () Bool)

(assert (=> (and b!1476063 (= (toChars!3957 (transformation!2767 (h!20940 (t!136396 (t!136396 rules!4290))))) (toChars!3957 (transformation!2767 (rule!4544 (h!20939 l1!3136))))) t!136624) tb!84111))

(declare-fun result!101064 () Bool)

(assert (= result!101064 result!100838))

(assert (=> b!1475170 t!136624))

(assert (=> b!1475666 t!136614))

(declare-fun tp!417589 () Bool)

(declare-fun b_and!101939 () Bool)

(assert (=> b!1476063 (= tp!417589 (and (=> t!136618 result!101058) (=> t!136620 result!101060) (=> t!136624 result!101064) (=> t!136616 result!101056) (=> t!136614 result!101054) (=> t!136622 result!101062) b_and!101939))))

(declare-fun e!943045 () Bool)

(assert (=> b!1476063 (= e!943045 (and tp!417591 tp!417589))))

(declare-fun e!943044 () Bool)

(declare-fun tp!417590 () Bool)

(declare-fun b!1476062 () Bool)

(assert (=> b!1476062 (= e!943044 (and tp!417590 (inv!20742 (tag!3031 (h!20940 (t!136396 (t!136396 rules!4290))))) (inv!20745 (transformation!2767 (h!20940 (t!136396 (t!136396 rules!4290))))) e!943045))))

(declare-fun b!1476061 () Bool)

(declare-fun e!943046 () Bool)

(declare-fun tp!417592 () Bool)

(assert (=> b!1476061 (= e!943046 (and e!943044 tp!417592))))

(assert (=> b!1475463 (= tp!417364 e!943046)))

(assert (= b!1476062 b!1476063))

(assert (= b!1476061 b!1476062))

(assert (= (and b!1475463 ((_ is Cons!15539) (t!136396 (t!136396 rules!4290)))) b!1476061))

(declare-fun m!1721793 () Bool)

(assert (=> b!1476062 m!1721793))

(declare-fun m!1721795 () Bool)

(assert (=> b!1476062 m!1721795))

(declare-fun b!1476067 () Bool)

(declare-fun b_free!37679 () Bool)

(declare-fun b_next!38383 () Bool)

(assert (=> b!1476067 (= b_free!37679 (not b_next!38383))))

(declare-fun tp!417593 () Bool)

(declare-fun b_and!101941 () Bool)

(assert (=> b!1476067 (= tp!417593 b_and!101941)))

(declare-fun b_free!37681 () Bool)

(declare-fun b_next!38385 () Bool)

(assert (=> b!1476067 (= b_free!37681 (not b_next!38385))))

(declare-fun t!136626 () Bool)

(declare-fun tb!84113 () Bool)

(assert (=> (and b!1476067 (= (toChars!3957 (transformation!2767 (rule!4544 (h!20939 (t!136395 (t!136395 l2!3105)))))) (toChars!3957 (transformation!2767 (rule!4544 (h!20939 (t!136395 l1!3136)))))) t!136626) tb!84113))

(declare-fun result!101066 () Bool)

(assert (= result!101066 result!100954))

(assert (=> d!432893 t!136626))

(declare-fun t!136628 () Bool)

(declare-fun tb!84115 () Bool)

(assert (=> (and b!1476067 (= (toChars!3957 (transformation!2767 (rule!4544 (h!20939 (t!136395 (t!136395 l2!3105)))))) (toChars!3957 (transformation!2767 (rule!4544 (h!20939 (t!136395 l2!3105)))))) t!136628) tb!84115))

(declare-fun result!101068 () Bool)

(assert (= result!101068 result!100990))

(assert (=> b!1475958 t!136628))

(declare-fun t!136630 () Bool)

(declare-fun tb!84117 () Bool)

(assert (=> (and b!1476067 (= (toChars!3957 (transformation!2767 (rule!4544 (h!20939 (t!136395 (t!136395 l2!3105)))))) (toChars!3957 (transformation!2767 (rule!4544 (h!20939 l2!3105))))) t!136630) tb!84117))

(declare-fun result!101070 () Bool)

(assert (= result!101070 result!100860))

(assert (=> b!1475318 t!136630))

(declare-fun t!136632 () Bool)

(declare-fun tb!84119 () Bool)

(assert (=> (and b!1476067 (= (toChars!3957 (transformation!2767 (rule!4544 (h!20939 (t!136395 (t!136395 l2!3105)))))) (toChars!3957 (transformation!2767 (rule!4544 lt!512749)))) t!136632) tb!84119))

(declare-fun result!101072 () Bool)

(assert (= result!101072 result!100966))

(assert (=> d!432969 t!136632))

(declare-fun tb!84121 () Bool)

(declare-fun t!136634 () Bool)

(assert (=> (and b!1476067 (= (toChars!3957 (transformation!2767 (rule!4544 (h!20939 (t!136395 (t!136395 l2!3105)))))) (toChars!3957 (transformation!2767 (rule!4544 lt!512747)))) t!136634) tb!84121))

(declare-fun result!101074 () Bool)

(assert (= result!101074 result!100978))

(assert (=> d!432987 t!136634))

(assert (=> d!433021 t!136628))

(declare-fun t!136636 () Bool)

(declare-fun tb!84123 () Bool)

(assert (=> (and b!1476067 (= (toChars!3957 (transformation!2767 (rule!4544 (h!20939 (t!136395 (t!136395 l2!3105)))))) (toChars!3957 (transformation!2767 (rule!4544 (h!20939 l1!3136))))) t!136636) tb!84123))

(declare-fun result!101076 () Bool)

(assert (= result!101076 result!100838))

(assert (=> b!1475170 t!136636))

(assert (=> b!1475666 t!136626))

(declare-fun tp!417596 () Bool)

(declare-fun b_and!101943 () Bool)

(assert (=> b!1476067 (= tp!417596 (and (=> t!136634 result!101074) (=> t!136636 result!101076) (=> t!136630 result!101070) (=> t!136628 result!101068) (=> t!136632 result!101072) (=> t!136626 result!101066) b_and!101943))))

(declare-fun e!943048 () Bool)

(assert (=> b!1476067 (= e!943048 (and tp!417593 tp!417596))))

(declare-fun tp!417595 () Bool)

(declare-fun e!943049 () Bool)

(declare-fun e!943050 () Bool)

(declare-fun b!1476064 () Bool)

(assert (=> b!1476064 (= e!943049 (and (inv!20746 (h!20939 (t!136395 (t!136395 l2!3105)))) e!943050 tp!417595))))

(assert (=> b!1475446 (= tp!417344 e!943049)))

(declare-fun b!1476065 () Bool)

(declare-fun e!943052 () Bool)

(declare-fun tp!417597 () Bool)

(assert (=> b!1476065 (= e!943050 (and (inv!21 (value!88507 (h!20939 (t!136395 (t!136395 l2!3105))))) e!943052 tp!417597))))

(declare-fun tp!417594 () Bool)

(declare-fun b!1476066 () Bool)

(assert (=> b!1476066 (= e!943052 (and tp!417594 (inv!20742 (tag!3031 (rule!4544 (h!20939 (t!136395 (t!136395 l2!3105)))))) (inv!20745 (transformation!2767 (rule!4544 (h!20939 (t!136395 (t!136395 l2!3105)))))) e!943048))))

(assert (= b!1476066 b!1476067))

(assert (= b!1476065 b!1476066))

(assert (= b!1476064 b!1476065))

(assert (= (and b!1475446 ((_ is Cons!15538) (t!136395 (t!136395 l2!3105)))) b!1476064))

(declare-fun m!1721797 () Bool)

(assert (=> b!1476064 m!1721797))

(declare-fun m!1721799 () Bool)

(assert (=> b!1476065 m!1721799))

(declare-fun m!1721801 () Bool)

(assert (=> b!1476066 m!1721801))

(declare-fun m!1721803 () Bool)

(assert (=> b!1476066 m!1721803))

(declare-fun b!1476068 () Bool)

(declare-fun e!943054 () Bool)

(assert (=> b!1476068 (= e!943054 tp_is_empty!6939)))

(assert (=> b!1475451 (= tp!417348 e!943054)))

(declare-fun b!1476070 () Bool)

(declare-fun tp!417600 () Bool)

(assert (=> b!1476070 (= e!943054 tp!417600)))

(declare-fun b!1476071 () Bool)

(declare-fun tp!417598 () Bool)

(declare-fun tp!417602 () Bool)

(assert (=> b!1476071 (= e!943054 (and tp!417598 tp!417602))))

(declare-fun b!1476069 () Bool)

(declare-fun tp!417599 () Bool)

(declare-fun tp!417601 () Bool)

(assert (=> b!1476069 (= e!943054 (and tp!417599 tp!417601))))

(assert (= (and b!1475451 ((_ is ElementMatch!4081) (regOne!8674 (regex!2767 (rule!4544 (h!20939 l2!3105)))))) b!1476068))

(assert (= (and b!1475451 ((_ is Concat!6939) (regOne!8674 (regex!2767 (rule!4544 (h!20939 l2!3105)))))) b!1476069))

(assert (= (and b!1475451 ((_ is Star!4081) (regOne!8674 (regex!2767 (rule!4544 (h!20939 l2!3105)))))) b!1476070))

(assert (= (and b!1475451 ((_ is Union!4081) (regOne!8674 (regex!2767 (rule!4544 (h!20939 l2!3105)))))) b!1476071))

(declare-fun b!1476072 () Bool)

(declare-fun e!943055 () Bool)

(assert (=> b!1476072 (= e!943055 tp_is_empty!6939)))

(assert (=> b!1475451 (= tp!417350 e!943055)))

(declare-fun b!1476074 () Bool)

(declare-fun tp!417605 () Bool)

(assert (=> b!1476074 (= e!943055 tp!417605)))

(declare-fun b!1476075 () Bool)

(declare-fun tp!417603 () Bool)

(declare-fun tp!417607 () Bool)

(assert (=> b!1476075 (= e!943055 (and tp!417603 tp!417607))))

(declare-fun b!1476073 () Bool)

(declare-fun tp!417604 () Bool)

(declare-fun tp!417606 () Bool)

(assert (=> b!1476073 (= e!943055 (and tp!417604 tp!417606))))

(assert (= (and b!1475451 ((_ is ElementMatch!4081) (regTwo!8674 (regex!2767 (rule!4544 (h!20939 l2!3105)))))) b!1476072))

(assert (= (and b!1475451 ((_ is Concat!6939) (regTwo!8674 (regex!2767 (rule!4544 (h!20939 l2!3105)))))) b!1476073))

(assert (= (and b!1475451 ((_ is Star!4081) (regTwo!8674 (regex!2767 (rule!4544 (h!20939 l2!3105)))))) b!1476074))

(assert (= (and b!1475451 ((_ is Union!4081) (regTwo!8674 (regex!2767 (rule!4544 (h!20939 l2!3105)))))) b!1476075))

(declare-fun b!1476076 () Bool)

(declare-fun e!943056 () Bool)

(assert (=> b!1476076 (= e!943056 tp_is_empty!6939)))

(assert (=> b!1475464 (= tp!417362 e!943056)))

(declare-fun b!1476078 () Bool)

(declare-fun tp!417610 () Bool)

(assert (=> b!1476078 (= e!943056 tp!417610)))

(declare-fun b!1476079 () Bool)

(declare-fun tp!417608 () Bool)

(declare-fun tp!417612 () Bool)

(assert (=> b!1476079 (= e!943056 (and tp!417608 tp!417612))))

(declare-fun b!1476077 () Bool)

(declare-fun tp!417609 () Bool)

(declare-fun tp!417611 () Bool)

(assert (=> b!1476077 (= e!943056 (and tp!417609 tp!417611))))

(assert (= (and b!1475464 ((_ is ElementMatch!4081) (regex!2767 (h!20940 (t!136396 rules!4290))))) b!1476076))

(assert (= (and b!1475464 ((_ is Concat!6939) (regex!2767 (h!20940 (t!136396 rules!4290))))) b!1476077))

(assert (= (and b!1475464 ((_ is Star!4081) (regex!2767 (h!20940 (t!136396 rules!4290))))) b!1476078))

(assert (= (and b!1475464 ((_ is Union!4081) (regex!2767 (h!20940 (t!136396 rules!4290))))) b!1476079))

(declare-fun b_lambda!46195 () Bool)

(assert (= b_lambda!46149 (or d!432699 b_lambda!46195)))

(declare-fun bs!345695 () Bool)

(declare-fun d!433113 () Bool)

(assert (= bs!345695 (and d!433113 d!432699)))

(assert (=> bs!345695 (= (dynLambda!7054 lambda!63628 (h!20939 (list!6189 (seqFromList!1728 lt!512748)))) (rulesProduceIndividualToken!1282 thiss!27374 rules!4290 (h!20939 (list!6189 (seqFromList!1728 lt!512748)))))))

(assert (=> bs!345695 m!1721247))

(assert (=> b!1475599 d!433113))

(declare-fun b_lambda!46197 () Bool)

(assert (= b_lambda!46159 (or (and b!1475449 b_free!37653 (= (toChars!3957 (transformation!2767 (rule!4544 (h!20939 (t!136395 l2!3105))))) (toChars!3957 (transformation!2767 (rule!4544 (h!20939 (t!136395 l1!3136))))))) (and b!1475422 b_free!37649) (and b!1476063 b_free!37677 (= (toChars!3957 (transformation!2767 (h!20940 (t!136396 (t!136396 rules!4290))))) (toChars!3957 (transformation!2767 (rule!4544 (h!20939 (t!136395 l1!3136))))))) (and b!1476036 b_free!37673 (= (toChars!3957 (transformation!2767 (rule!4544 (h!20939 (t!136395 (t!136395 l1!3136)))))) (toChars!3957 (transformation!2767 (rule!4544 (h!20939 (t!136395 l1!3136))))))) (and b!1476067 b_free!37681 (= (toChars!3957 (transformation!2767 (rule!4544 (h!20939 (t!136395 (t!136395 l2!3105)))))) (toChars!3957 (transformation!2767 (rule!4544 (h!20939 (t!136395 l1!3136))))))) (and b!1475116 b_free!37629 (= (toChars!3957 (transformation!2767 (rule!4544 (h!20939 l2!3105)))) (toChars!3957 (transformation!2767 (rule!4544 (h!20939 (t!136395 l1!3136))))))) (and b!1475102 b_free!37625 (= (toChars!3957 (transformation!2767 (h!20940 rules!4290))) (toChars!3957 (transformation!2767 (rule!4544 (h!20939 (t!136395 l1!3136))))))) (and b!1475465 b_free!37657 (= (toChars!3957 (transformation!2767 (h!20940 (t!136396 rules!4290)))) (toChars!3957 (transformation!2767 (rule!4544 (h!20939 (t!136395 l1!3136))))))) (and b!1475120 b_free!37633 (= (toChars!3957 (transformation!2767 (rule!4544 (h!20939 l1!3136)))) (toChars!3957 (transformation!2767 (rule!4544 (h!20939 (t!136395 l1!3136))))))) b_lambda!46197)))

(declare-fun b_lambda!46199 () Bool)

(assert (= b_lambda!46165 (or d!432609 b_lambda!46199)))

(declare-fun bs!345696 () Bool)

(declare-fun d!433115 () Bool)

(assert (= bs!345696 (and d!433115 d!432609)))

(assert (=> bs!345696 (= (dynLambda!7054 lambda!63616 (h!20939 l2!3105)) (rulesProduceIndividualToken!1282 thiss!27374 rules!4290 (h!20939 l2!3105)))))

(assert (=> bs!345696 m!1720307))

(assert (=> b!1475727 d!433115))

(declare-fun b_lambda!46201 () Bool)

(assert (= b_lambda!46161 (or (and b!1475449 b_free!37653 (= (toChars!3957 (transformation!2767 (rule!4544 (h!20939 (t!136395 l2!3105))))) (toChars!3957 (transformation!2767 (rule!4544 (h!20939 (t!136395 l1!3136))))))) (and b!1475422 b_free!37649) (and b!1476063 b_free!37677 (= (toChars!3957 (transformation!2767 (h!20940 (t!136396 (t!136396 rules!4290))))) (toChars!3957 (transformation!2767 (rule!4544 (h!20939 (t!136395 l1!3136))))))) (and b!1476036 b_free!37673 (= (toChars!3957 (transformation!2767 (rule!4544 (h!20939 (t!136395 (t!136395 l1!3136)))))) (toChars!3957 (transformation!2767 (rule!4544 (h!20939 (t!136395 l1!3136))))))) (and b!1476067 b_free!37681 (= (toChars!3957 (transformation!2767 (rule!4544 (h!20939 (t!136395 (t!136395 l2!3105)))))) (toChars!3957 (transformation!2767 (rule!4544 (h!20939 (t!136395 l1!3136))))))) (and b!1475116 b_free!37629 (= (toChars!3957 (transformation!2767 (rule!4544 (h!20939 l2!3105)))) (toChars!3957 (transformation!2767 (rule!4544 (h!20939 (t!136395 l1!3136))))))) (and b!1475102 b_free!37625 (= (toChars!3957 (transformation!2767 (h!20940 rules!4290))) (toChars!3957 (transformation!2767 (rule!4544 (h!20939 (t!136395 l1!3136))))))) (and b!1475465 b_free!37657 (= (toChars!3957 (transformation!2767 (h!20940 (t!136396 rules!4290)))) (toChars!3957 (transformation!2767 (rule!4544 (h!20939 (t!136395 l1!3136))))))) (and b!1475120 b_free!37633 (= (toChars!3957 (transformation!2767 (rule!4544 (h!20939 l1!3136)))) (toChars!3957 (transformation!2767 (rule!4544 (h!20939 (t!136395 l1!3136))))))) b_lambda!46201)))

(declare-fun b_lambda!46203 () Bool)

(assert (= b_lambda!46193 (or (and b!1475449 b_free!37653) (and b!1475120 b_free!37633 (= (toChars!3957 (transformation!2767 (rule!4544 (h!20939 l1!3136)))) (toChars!3957 (transformation!2767 (rule!4544 (h!20939 (t!136395 l2!3105))))))) (and b!1475116 b_free!37629 (= (toChars!3957 (transformation!2767 (rule!4544 (h!20939 l2!3105)))) (toChars!3957 (transformation!2767 (rule!4544 (h!20939 (t!136395 l2!3105))))))) (and b!1476036 b_free!37673 (= (toChars!3957 (transformation!2767 (rule!4544 (h!20939 (t!136395 (t!136395 l1!3136)))))) (toChars!3957 (transformation!2767 (rule!4544 (h!20939 (t!136395 l2!3105))))))) (and b!1475465 b_free!37657 (= (toChars!3957 (transformation!2767 (h!20940 (t!136396 rules!4290)))) (toChars!3957 (transformation!2767 (rule!4544 (h!20939 (t!136395 l2!3105))))))) (and b!1475102 b_free!37625 (= (toChars!3957 (transformation!2767 (h!20940 rules!4290))) (toChars!3957 (transformation!2767 (rule!4544 (h!20939 (t!136395 l2!3105))))))) (and b!1476067 b_free!37681 (= (toChars!3957 (transformation!2767 (rule!4544 (h!20939 (t!136395 (t!136395 l2!3105)))))) (toChars!3957 (transformation!2767 (rule!4544 (h!20939 (t!136395 l2!3105))))))) (and b!1476063 b_free!37677 (= (toChars!3957 (transformation!2767 (h!20940 (t!136396 (t!136396 rules!4290))))) (toChars!3957 (transformation!2767 (rule!4544 (h!20939 (t!136395 l2!3105))))))) (and b!1475422 b_free!37649 (= (toChars!3957 (transformation!2767 (rule!4544 (h!20939 (t!136395 l1!3136))))) (toChars!3957 (transformation!2767 (rule!4544 (h!20939 (t!136395 l2!3105))))))) b_lambda!46203)))

(declare-fun b_lambda!46205 () Bool)

(assert (= b_lambda!46175 (or (and b!1475449 b_free!37653) (and b!1475120 b_free!37633 (= (toChars!3957 (transformation!2767 (rule!4544 (h!20939 l1!3136)))) (toChars!3957 (transformation!2767 (rule!4544 (h!20939 (t!136395 l2!3105))))))) (and b!1475116 b_free!37629 (= (toChars!3957 (transformation!2767 (rule!4544 (h!20939 l2!3105)))) (toChars!3957 (transformation!2767 (rule!4544 (h!20939 (t!136395 l2!3105))))))) (and b!1476036 b_free!37673 (= (toChars!3957 (transformation!2767 (rule!4544 (h!20939 (t!136395 (t!136395 l1!3136)))))) (toChars!3957 (transformation!2767 (rule!4544 (h!20939 (t!136395 l2!3105))))))) (and b!1475465 b_free!37657 (= (toChars!3957 (transformation!2767 (h!20940 (t!136396 rules!4290)))) (toChars!3957 (transformation!2767 (rule!4544 (h!20939 (t!136395 l2!3105))))))) (and b!1475102 b_free!37625 (= (toChars!3957 (transformation!2767 (h!20940 rules!4290))) (toChars!3957 (transformation!2767 (rule!4544 (h!20939 (t!136395 l2!3105))))))) (and b!1476067 b_free!37681 (= (toChars!3957 (transformation!2767 (rule!4544 (h!20939 (t!136395 (t!136395 l2!3105)))))) (toChars!3957 (transformation!2767 (rule!4544 (h!20939 (t!136395 l2!3105))))))) (and b!1476063 b_free!37677 (= (toChars!3957 (transformation!2767 (h!20940 (t!136396 (t!136396 rules!4290))))) (toChars!3957 (transformation!2767 (rule!4544 (h!20939 (t!136395 l2!3105))))))) (and b!1475422 b_free!37649 (= (toChars!3957 (transformation!2767 (rule!4544 (h!20939 (t!136395 l1!3136))))) (toChars!3957 (transformation!2767 (rule!4544 (h!20939 (t!136395 l2!3105))))))) b_lambda!46205)))

(declare-fun b_lambda!46207 () Bool)

(assert (= b_lambda!46163 (or d!432589 b_lambda!46207)))

(declare-fun bs!345697 () Bool)

(declare-fun d!433117 () Bool)

(assert (= bs!345697 (and d!433117 d!432589)))

(assert (=> bs!345697 (= (dynLambda!7054 lambda!63615 (h!20939 l1!3136)) (rulesProduceIndividualToken!1282 thiss!27374 rules!4290 (h!20939 l1!3136)))))

(assert (=> bs!345697 m!1720279))

(assert (=> b!1475692 d!433117))

(declare-fun b_lambda!46209 () Bool)

(assert (= b_lambda!46153 (or d!432701 b_lambda!46209)))

(declare-fun bs!345698 () Bool)

(declare-fun d!433119 () Bool)

(assert (= bs!345698 (and d!433119 d!432701)))

(assert (=> bs!345698 (= (dynLambda!7054 lambda!63629 (h!20939 lt!512748)) (rulesProduceIndividualToken!1282 thiss!27374 rules!4290 (h!20939 lt!512748)))))

(assert (=> bs!345698 m!1720619))

(assert (=> b!1475621 d!433119))

(check-sat (not d!432933) (not b!1475691) (not b!1476002) b_and!101721 (not b_next!38361) (not b_lambda!46207) (not bs!345696) (not b!1475665) (not b_lambda!46195) (not b_lambda!46203) (not b!1475585) (not b!1476054) (not b_next!38337) (not b!1475973) (not b_next!38351) (not b!1476040) (not b!1475946) b_and!101769 (not b!1475702) (not d!433069) (not b!1475930) (not b!1475773) (not d!432849) (not b!1475967) (not b!1475706) (not b!1475743) (not b!1476073) (not d!433031) (not b!1476004) b_and!101927 (not b_lambda!46167) (not d!432987) (not b!1475950) (not d!432923) (not b!1476070) (not b_lambda!46135) (not d!433079) (not b!1476025) (not d!433021) (not b!1476058) (not b!1475697) b_and!101939 (not b!1475654) (not b_next!38355) (not b!1475927) (not b!1475972) (not b!1475666) (not b!1475616) (not d!432969) (not b!1475985) (not b!1475659) (not d!433087) (not b!1476029) (not b!1476059) (not b!1475987) (not b!1475945) (not b!1475958) (not b!1476006) (not b!1475959) (not b!1475709) (not b!1475624) (not d!432949) (not d!433029) (not d!432819) (not d!432873) (not b_lambda!46197) (not d!432973) (not b_next!38335) (not b!1475625) (not b!1476065) (not b!1475800) (not b!1476009) (not b_next!38331) (not b!1475660) (not d!432975) (not b!1475776) (not d!432889) (not d!432899) (not d!432857) (not b_lambda!46205) (not b!1475667) (not b!1476061) (not b!1475933) (not b!1476055) (not b_next!38353) (not b!1476075) (not b!1475731) (not d!432961) (not b!1475699) b_and!101933 (not d!433067) (not d!432835) (not b!1475661) (not b!1475774) (not b!1475954) (not b!1475707) (not d!432821) b_and!101923 (not b!1475977) (not d!432971) (not b!1475614) (not b!1475770) (not b!1476050) (not b!1475966) (not d!432871) (not d!432825) (not d!432869) (not d!433081) (not d!432867) (not b!1476039) (not b!1476060) (not d!433025) b_and!101935 (not d!433111) (not b!1476010) (not d!433105) (not d!432745) (not d!433085) (not b!1475594) (not d!433059) (not b_next!38385) (not b!1475989) (not b!1475674) (not b!1475698) (not d!432893) b_and!101765 (not d!433057) (not b!1475775) (not b!1475983) (not d!433071) (not b!1475940) b_and!101929 (not d!432965) (not b!1476048) (not b_next!38383) (not b!1475718) (not b!1475939) (not b!1476035) (not b!1475979) (not b_lambda!46137) (not b!1476056) (not b!1475975) (not d!432951) (not b!1475951) (not b_lambda!46199) (not d!432811) b_and!101773 (not b_next!38359) (not b!1475744) (not b!1475980) (not b!1475981) (not d!433063) (not b!1475936) (not d!432833) (not d!432931) (not b_next!38357) (not b!1475988) (not b_lambda!46209) (not tb!84017) (not b!1475622) (not b!1475934) (not b!1476045) (not bs!345695) (not b!1476069) (not b!1475919) (not d!433051) (not b!1475996) (not b!1475997) (not d!432927) (not b!1476062) (not d!433099) (not d!432913) (not b!1475761) (not b!1475747) b_and!101921 (not b!1475992) (not d!432903) (not d!433041) (not b!1476071) (not b!1475916) (not b!1476074) b_and!101937 (not d!432939) (not d!433089) (not b!1475653) (not b!1476012) (not b!1475722) (not b!1475928) (not b!1475655) (not bs!345698) (not b!1475957) (not d!433103) (not d!433075) (not d!433107) (not tb!84005) (not d!432885) (not b!1476005) (not b!1475952) (not b!1475705) (not d!433101) (not b_next!38379) (not b!1475941) (not d!433023) (not b!1476044) b_and!101943 (not b!1476041) (not bs!345697) (not b!1475668) (not b!1475748) (not b!1476000) (not b_next!38333) b_and!101717 tp_is_empty!6939 (not b!1475730) (not b!1475944) (not d!433097) (not b_next!38377) (not b!1476078) (not b!1475669) (not d!432747) (not b!1475720) b_and!101925 (not b!1475764) (not b!1475947) (not b!1476077) (not b!1476013) (not d!433053) (not d!432993) (not b!1475648) (not b!1475923) (not b!1475710) (not b!1475929) (not b!1475920) (not tb!84041) (not d!433077) (not b!1475704) (not b_next!38381) (not d!432803) (not d!432907) (not b!1476014) (not b!1475991) (not b!1476079) (not b!1476023) (not b!1475806) (not d!433039) (not b!1476033) (not b!1475693) (not b!1475741) (not b!1475937) (not d!432953) (not b_next!38329) (not b!1476066) (not d!432853) b_and!101931 b_and!101725 (not d!433083) (not b!1475600) (not b!1475728) (not b_lambda!46201) (not b!1475742) (not tb!84029) (not b!1475965) (not b!1475623) (not b!1475976) (not b!1476051) (not b!1476064) (not d!433073) (not d!433055) (not b!1475938) (not b_next!38327) b_and!101941 (not d!432967) (not b_next!38375) (not b!1475971) (not b!1475176) (not b!1476027) (not b!1475322) (not b!1475647) (not b!1476052) (not b!1476038) (not b!1475593) (not b!1475634) (not b!1476028) (not b!1475808) (not d!433017) (not b!1475984) (not b!1476034) (not b!1476049) (not b!1475993) (not b!1475995) (not b!1475708) (not b!1475998) (not d!433065) (not b!1476030) (not b!1476024) (not b!1475953) (not b!1475592) (not d!432957) (not b!1476008) (not b!1476001) (not b_lambda!46169) (not b!1475918) (not d!432841))
(check-sat b_and!101769 b_and!101927 (not b_next!38335) (not b_next!38331) (not b_next!38353) b_and!101935 (not b_next!38357) b_and!101921 b_and!101937 b_and!101925 (not b_next!38381) (not b_next!38329) b_and!101721 (not b_next!38361) (not b_next!38337) (not b_next!38351) b_and!101939 (not b_next!38355) b_and!101933 b_and!101923 (not b_next!38385) b_and!101765 b_and!101929 (not b_next!38383) b_and!101773 (not b_next!38359) (not b_next!38379) b_and!101943 (not b_next!38377) (not b_next!38333) b_and!101717 b_and!101931 b_and!101725 (not b_next!38327) b_and!101941 (not b_next!38375))
