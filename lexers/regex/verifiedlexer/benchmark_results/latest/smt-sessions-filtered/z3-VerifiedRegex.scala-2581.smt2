; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!138026 () Bool)

(assert start!138026)

(declare-fun b!1473535 () Bool)

(declare-fun b_free!37503 () Bool)

(declare-fun b_next!38207 () Bool)

(assert (=> b!1473535 (= b_free!37503 (not b_next!38207))))

(declare-fun tp!416588 () Bool)

(declare-fun b_and!101357 () Bool)

(assert (=> b!1473535 (= tp!416588 b_and!101357)))

(declare-fun b_free!37505 () Bool)

(declare-fun b_next!38209 () Bool)

(assert (=> b!1473535 (= b_free!37505 (not b_next!38209))))

(declare-fun tp!416591 () Bool)

(declare-fun b_and!101359 () Bool)

(assert (=> b!1473535 (= tp!416591 b_and!101359)))

(declare-fun b!1473548 () Bool)

(declare-fun b_free!37507 () Bool)

(declare-fun b_next!38211 () Bool)

(assert (=> b!1473548 (= b_free!37507 (not b_next!38211))))

(declare-fun tp!416590 () Bool)

(declare-fun b_and!101361 () Bool)

(assert (=> b!1473548 (= tp!416590 b_and!101361)))

(declare-fun b_free!37509 () Bool)

(declare-fun b_next!38213 () Bool)

(assert (=> b!1473548 (= b_free!37509 (not b_next!38213))))

(declare-fun tp!416598 () Bool)

(declare-fun b_and!101363 () Bool)

(assert (=> b!1473548 (= tp!416598 b_and!101363)))

(declare-fun b!1473555 () Bool)

(declare-fun b_free!37511 () Bool)

(declare-fun b_next!38215 () Bool)

(assert (=> b!1473555 (= b_free!37511 (not b_next!38215))))

(declare-fun tp!416593 () Bool)

(declare-fun b_and!101365 () Bool)

(assert (=> b!1473555 (= tp!416593 b_and!101365)))

(declare-fun b_free!37513 () Bool)

(declare-fun b_next!38217 () Bool)

(assert (=> b!1473555 (= b_free!37513 (not b_next!38217))))

(declare-fun tp!416585 () Bool)

(declare-fun b_and!101367 () Bool)

(assert (=> b!1473555 (= tp!416585 b_and!101367)))

(declare-fun res!666066 () Bool)

(declare-fun e!941279 () Bool)

(assert (=> start!138026 (=> (not res!666066) (not e!941279))))

(declare-datatypes ((LexerInterface!2417 0))(
  ( (LexerInterfaceExt!2414 (__x!9492 Int)) (Lexer!2415) )
))
(declare-fun thiss!27374 () LexerInterface!2417)

(get-info :version)

(assert (=> start!138026 (= res!666066 ((_ is Lexer!2415) thiss!27374))))

(assert (=> start!138026 e!941279))

(assert (=> start!138026 true))

(declare-fun e!941286 () Bool)

(assert (=> start!138026 e!941286))

(declare-fun e!941291 () Bool)

(assert (=> start!138026 e!941291))

(declare-fun e!941289 () Bool)

(assert (=> start!138026 e!941289))

(declare-fun b!1473529 () Bool)

(declare-fun res!666061 () Bool)

(assert (=> b!1473529 (=> (not res!666061) (not e!941279))))

(declare-datatypes ((List!15572 0))(
  ( (Nil!15506) (Cons!15506 (h!20907 (_ BitVec 16)) (t!136017 List!15572)) )
))
(declare-datatypes ((C!8328 0))(
  ( (C!8329 (val!4734 Int)) )
))
(declare-datatypes ((List!15573 0))(
  ( (Nil!15507) (Cons!15507 (h!20908 C!8328) (t!136018 List!15573)) )
))
(declare-datatypes ((Regex!4075 0))(
  ( (ElementMatch!4075 (c!242394 C!8328)) (Concat!6926 (regOne!8662 Regex!4075) (regTwo!8662 Regex!4075)) (EmptyExpr!4075) (Star!4075 (reg!4404 Regex!4075)) (EmptyLang!4075) (Union!4075 (regOne!8663 Regex!4075) (regTwo!8663 Regex!4075)) )
))
(declare-datatypes ((String!18510 0))(
  ( (String!18511 (value!88310 String)) )
))
(declare-datatypes ((TokenValue!2851 0))(
  ( (FloatLiteralValue!5702 (text!20402 List!15572)) (TokenValueExt!2850 (__x!9493 Int)) (Broken!14255 (value!88311 List!15572)) (Object!2916) (End!2851) (Def!2851) (Underscore!2851) (Match!2851) (Else!2851) (Error!2851) (Case!2851) (If!2851) (Extends!2851) (Abstract!2851) (Class!2851) (Val!2851) (DelimiterValue!5702 (del!2911 List!15572)) (KeywordValue!2857 (value!88312 List!15572)) (CommentValue!5702 (value!88313 List!15572)) (WhitespaceValue!5702 (value!88314 List!15572)) (IndentationValue!2851 (value!88315 List!15572)) (String!18512) (Int32!2851) (Broken!14256 (value!88316 List!15572)) (Boolean!2852) (Unit!25208) (OperatorValue!2854 (op!2911 List!15572)) (IdentifierValue!5702 (value!88317 List!15572)) (IdentifierValue!5703 (value!88318 List!15572)) (WhitespaceValue!5703 (value!88319 List!15572)) (True!5702) (False!5702) (Broken!14257 (value!88320 List!15572)) (Broken!14258 (value!88321 List!15572)) (True!5703) (RightBrace!2851) (RightBracket!2851) (Colon!2851) (Null!2851) (Comma!2851) (LeftBracket!2851) (False!5703) (LeftBrace!2851) (ImaginaryLiteralValue!2851 (text!20403 List!15572)) (StringLiteralValue!8553 (value!88322 List!15572)) (EOFValue!2851 (value!88323 List!15572)) (IdentValue!2851 (value!88324 List!15572)) (DelimiterValue!5703 (value!88325 List!15572)) (DedentValue!2851 (value!88326 List!15572)) (NewLineValue!2851 (value!88327 List!15572)) (IntegerValue!8553 (value!88328 (_ BitVec 32)) (text!20404 List!15572)) (IntegerValue!8554 (value!88329 Int) (text!20405 List!15572)) (Times!2851) (Or!2851) (Equal!2851) (Minus!2851) (Broken!14259 (value!88330 List!15572)) (And!2851) (Div!2851) (LessEqual!2851) (Mod!2851) (Concat!6927) (Not!2851) (Plus!2851) (SpaceValue!2851 (value!88331 List!15572)) (IntegerValue!8555 (value!88332 Int) (text!20406 List!15572)) (StringLiteralValue!8554 (text!20407 List!15572)) (FloatLiteralValue!5703 (text!20408 List!15572)) (BytesLiteralValue!2851 (value!88333 List!15572)) (CommentValue!5703 (value!88334 List!15572)) (StringLiteralValue!8555 (value!88335 List!15572)) (ErrorTokenValue!2851 (msg!2912 List!15572)) )
))
(declare-datatypes ((IArray!10579 0))(
  ( (IArray!10580 (innerList!5347 List!15573)) )
))
(declare-datatypes ((Conc!5287 0))(
  ( (Node!5287 (left!13102 Conc!5287) (right!13432 Conc!5287) (csize!10804 Int) (cheight!5498 Int)) (Leaf!7869 (xs!8042 IArray!10579) (csize!10805 Int)) (Empty!5287) )
))
(declare-datatypes ((BalanceConc!10514 0))(
  ( (BalanceConc!10515 (c!242395 Conc!5287)) )
))
(declare-datatypes ((TokenValueInjection!5362 0))(
  ( (TokenValueInjection!5363 (toValue!4088 Int) (toChars!3947 Int)) )
))
(declare-datatypes ((Rule!5322 0))(
  ( (Rule!5323 (regex!2761 Regex!4075) (tag!3025 String!18510) (isSeparator!2761 Bool) (transformation!2761 TokenValueInjection!5362)) )
))
(declare-datatypes ((List!15574 0))(
  ( (Nil!15508) (Cons!15508 (h!20909 Rule!5322) (t!136019 List!15574)) )
))
(declare-fun rules!4290 () List!15574)

(declare-fun isEmpty!9685 (List!15574) Bool)

(assert (=> b!1473529 (= res!666061 (not (isEmpty!9685 rules!4290)))))

(declare-datatypes ((Token!5184 0))(
  ( (Token!5185 (value!88336 TokenValue!2851) (rule!4538 Rule!5322) (size!12573 Int) (originalCharacters!3623 List!15573)) )
))
(declare-datatypes ((List!15575 0))(
  ( (Nil!15509) (Cons!15509 (h!20910 Token!5184) (t!136020 List!15575)) )
))
(declare-fun lt!512073 () List!15575)

(declare-fun e!941288 () Bool)

(declare-fun b!1473530 () Bool)

(declare-datatypes ((IArray!10581 0))(
  ( (IArray!10582 (innerList!5348 List!15575)) )
))
(declare-datatypes ((Conc!5288 0))(
  ( (Node!5288 (left!13103 Conc!5288) (right!13433 Conc!5288) (csize!10806 Int) (cheight!5499 Int)) (Leaf!7870 (xs!8043 IArray!10581) (csize!10807 Int)) (Empty!5288) )
))
(declare-datatypes ((BalanceConc!10516 0))(
  ( (BalanceConc!10517 (c!242396 Conc!5288)) )
))
(declare-fun rulesProduceEachTokenIndividually!896 (LexerInterface!2417 List!15574 BalanceConc!10516) Bool)

(declare-fun seqFromList!1726 (List!15575) BalanceConc!10516)

(assert (=> b!1473530 (= e!941288 (rulesProduceEachTokenIndividually!896 thiss!27374 rules!4290 (seqFromList!1726 lt!512073)))))

(declare-fun rulesProduceEachTokenIndividuallyList!784 (LexerInterface!2417 List!15574 List!15575) Bool)

(assert (=> b!1473530 (rulesProduceEachTokenIndividuallyList!784 thiss!27374 rules!4290 lt!512073)))

(declare-fun l1!3136 () List!15575)

(declare-fun l2!3105 () List!15575)

(declare-fun ++!4187 (List!15575 List!15575) List!15575)

(assert (=> b!1473530 (= lt!512073 (++!4187 l1!3136 l2!3105))))

(declare-datatypes ((Unit!25209 0))(
  ( (Unit!25210) )
))
(declare-fun lt!512071 () Unit!25209)

(declare-fun lemmaRulesProduceEachTokenIndividuallyConcat!64 (LexerInterface!2417 List!15574 List!15575 List!15575) Unit!25209)

(assert (=> b!1473530 (= lt!512071 (lemmaRulesProduceEachTokenIndividuallyConcat!64 thiss!27374 rules!4290 l1!3136 l2!3105))))

(declare-fun e!941292 () Bool)

(assert (=> b!1473530 e!941292))

(declare-fun res!666064 () Bool)

(assert (=> b!1473530 (=> (not res!666064) (not e!941292))))

(declare-fun lt!512070 () List!15575)

(assert (=> b!1473530 (= res!666064 (rulesProduceEachTokenIndividuallyList!784 thiss!27374 rules!4290 lt!512070))))

(assert (=> b!1473530 (= lt!512070 (++!4187 (t!136020 l1!3136) l2!3105))))

(declare-fun lt!512079 () Unit!25209)

(assert (=> b!1473530 (= lt!512079 (lemmaRulesProduceEachTokenIndividuallyConcat!64 thiss!27374 rules!4290 (t!136020 l1!3136) l2!3105))))

(declare-fun lt!512072 () Unit!25209)

(declare-fun tokensListTwoByTwoPredicateConcatSeparableTokensList!64 (LexerInterface!2417 List!15575 List!15575 List!15574) Unit!25209)

(assert (=> b!1473530 (= lt!512072 (tokensListTwoByTwoPredicateConcatSeparableTokensList!64 thiss!27374 (t!136020 l1!3136) l2!3105 rules!4290))))

(declare-fun b!1473531 () Bool)

(declare-fun res!666062 () Bool)

(assert (=> b!1473531 (=> (not res!666062) (not e!941279))))

(assert (=> b!1473531 (= res!666062 (rulesProduceEachTokenIndividuallyList!784 thiss!27374 rules!4290 l1!3136))))

(declare-fun b!1473532 () Bool)

(declare-fun e!941282 () Bool)

(assert (=> b!1473532 (= e!941279 (not e!941282))))

(declare-fun res!666056 () Bool)

(assert (=> b!1473532 (=> res!666056 e!941282)))

(declare-fun lt!512074 () Token!5184)

(declare-fun lt!512069 () Token!5184)

(declare-fun separableTokensPredicate!560 (LexerInterface!2417 Token!5184 Token!5184 List!15574) Bool)

(assert (=> b!1473532 (= res!666056 (not (separableTokensPredicate!560 thiss!27374 lt!512069 lt!512074 rules!4290)))))

(declare-fun rulesProduceIndividualToken!1276 (LexerInterface!2417 List!15574 Token!5184) Bool)

(assert (=> b!1473532 (rulesProduceIndividualToken!1276 thiss!27374 rules!4290 lt!512074)))

(declare-fun lt!512077 () Unit!25209)

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!457 (LexerInterface!2417 List!15574 List!15575 Token!5184) Unit!25209)

(assert (=> b!1473532 (= lt!512077 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!457 thiss!27374 rules!4290 l2!3105 lt!512074))))

(declare-fun head!3055 (List!15575) Token!5184)

(assert (=> b!1473532 (= lt!512074 (head!3055 l2!3105))))

(assert (=> b!1473532 (rulesProduceIndividualToken!1276 thiss!27374 rules!4290 lt!512069)))

(declare-fun lt!512078 () Unit!25209)

(assert (=> b!1473532 (= lt!512078 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!457 thiss!27374 rules!4290 l1!3136 lt!512069))))

(declare-fun last!319 (List!15575) Token!5184)

(assert (=> b!1473532 (= lt!512069 (last!319 l1!3136))))

(declare-fun b!1473533 () Bool)

(declare-fun res!666067 () Bool)

(assert (=> b!1473533 (=> (not res!666067) (not e!941279))))

(declare-fun rulesInvariant!2206 (LexerInterface!2417 List!15574) Bool)

(assert (=> b!1473533 (= res!666067 (rulesInvariant!2206 thiss!27374 rules!4290))))

(declare-fun b!1473534 () Bool)

(declare-fun tokensListTwoByTwoPredicateSeparableList!277 (LexerInterface!2417 List!15575 List!15574) Bool)

(assert (=> b!1473534 (= e!941292 (tokensListTwoByTwoPredicateSeparableList!277 thiss!27374 lt!512070 rules!4290))))

(declare-fun e!941273 () Bool)

(assert (=> b!1473535 (= e!941273 (and tp!416588 tp!416591))))

(declare-fun tp!416596 () Bool)

(declare-fun e!941281 () Bool)

(declare-fun b!1473536 () Bool)

(declare-fun inv!20714 (Token!5184) Bool)

(assert (=> b!1473536 (= e!941291 (and (inv!20714 (h!20910 l1!3136)) e!941281 tp!416596))))

(declare-fun b!1473537 () Bool)

(declare-fun res!666063 () Bool)

(assert (=> b!1473537 (=> (not res!666063) (not e!941279))))

(declare-fun isEmpty!9686 (List!15575) Bool)

(assert (=> b!1473537 (= res!666063 (not (isEmpty!9686 l1!3136)))))

(declare-fun b!1473538 () Bool)

(declare-fun tp!416589 () Bool)

(declare-fun e!941287 () Bool)

(declare-fun inv!21 (TokenValue!2851) Bool)

(assert (=> b!1473538 (= e!941281 (and (inv!21 (value!88336 (h!20910 l1!3136))) e!941287 tp!416589))))

(declare-fun tp!416592 () Bool)

(declare-fun b!1473539 () Bool)

(declare-fun e!941285 () Bool)

(declare-fun e!941276 () Bool)

(declare-fun inv!20711 (String!18510) Bool)

(declare-fun inv!20715 (TokenValueInjection!5362) Bool)

(assert (=> b!1473539 (= e!941276 (and tp!416592 (inv!20711 (tag!3025 (h!20909 rules!4290))) (inv!20715 (transformation!2761 (h!20909 rules!4290))) e!941285))))

(declare-fun b!1473540 () Bool)

(assert (=> b!1473540 (= e!941282 e!941288)))

(declare-fun res!666060 () Bool)

(assert (=> b!1473540 (=> res!666060 e!941288)))

(declare-fun lt!512076 () Token!5184)

(assert (=> b!1473540 (= res!666060 (not (separableTokensPredicate!560 thiss!27374 lt!512076 lt!512074 rules!4290)))))

(assert (=> b!1473540 (rulesProduceIndividualToken!1276 thiss!27374 rules!4290 lt!512076)))

(declare-fun lt!512075 () Unit!25209)

(assert (=> b!1473540 (= lt!512075 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!457 thiss!27374 rules!4290 (t!136020 l1!3136) lt!512076))))

(assert (=> b!1473540 (= lt!512076 (last!319 (t!136020 l1!3136)))))

(declare-fun b!1473541 () Bool)

(declare-fun res!666065 () Bool)

(assert (=> b!1473541 (=> (not res!666065) (not e!941279))))

(assert (=> b!1473541 (= res!666065 (not (isEmpty!9686 l2!3105)))))

(declare-fun b!1473542 () Bool)

(declare-fun e!941277 () Bool)

(declare-fun e!941274 () Bool)

(declare-fun tp!416586 () Bool)

(assert (=> b!1473542 (= e!941274 (and (inv!21 (value!88336 (h!20910 l2!3105))) e!941277 tp!416586))))

(declare-fun b!1473543 () Bool)

(declare-fun res!666070 () Bool)

(assert (=> b!1473543 (=> res!666070 e!941282)))

(assert (=> b!1473543 (= res!666070 (not (rulesProduceEachTokenIndividuallyList!784 thiss!27374 rules!4290 (t!136020 l1!3136))))))

(declare-fun b!1473544 () Bool)

(declare-fun res!666059 () Bool)

(assert (=> b!1473544 (=> (not res!666059) (not e!941279))))

(assert (=> b!1473544 (= res!666059 (tokensListTwoByTwoPredicateSeparableList!277 thiss!27374 l1!3136 rules!4290))))

(declare-fun b!1473545 () Bool)

(declare-fun res!666058 () Bool)

(assert (=> b!1473545 (=> res!666058 e!941282)))

(assert (=> b!1473545 (= res!666058 (not (tokensListTwoByTwoPredicateSeparableList!277 thiss!27374 (t!136020 l1!3136) rules!4290)))))

(declare-fun b!1473546 () Bool)

(declare-fun res!666069 () Bool)

(assert (=> b!1473546 (=> res!666069 e!941282)))

(assert (=> b!1473546 (= res!666069 (not ((_ is Cons!15509) l1!3136)))))

(declare-fun b!1473547 () Bool)

(declare-fun res!666071 () Bool)

(assert (=> b!1473547 (=> res!666071 e!941282)))

(assert (=> b!1473547 (= res!666071 (isEmpty!9686 (t!136020 l1!3136)))))

(assert (=> b!1473548 (= e!941285 (and tp!416590 tp!416598))))

(declare-fun tp!416597 () Bool)

(declare-fun b!1473549 () Bool)

(assert (=> b!1473549 (= e!941277 (and tp!416597 (inv!20711 (tag!3025 (rule!4538 (h!20910 l2!3105)))) (inv!20715 (transformation!2761 (rule!4538 (h!20910 l2!3105)))) e!941273))))

(declare-fun b!1473550 () Bool)

(declare-fun res!666057 () Bool)

(assert (=> b!1473550 (=> (not res!666057) (not e!941279))))

(assert (=> b!1473550 (= res!666057 (rulesProduceEachTokenIndividuallyList!784 thiss!27374 rules!4290 l2!3105))))

(declare-fun b!1473551 () Bool)

(declare-fun tp!416595 () Bool)

(assert (=> b!1473551 (= e!941289 (and (inv!20714 (h!20910 l2!3105)) e!941274 tp!416595))))

(declare-fun b!1473552 () Bool)

(declare-fun res!666068 () Bool)

(assert (=> b!1473552 (=> (not res!666068) (not e!941279))))

(assert (=> b!1473552 (= res!666068 (tokensListTwoByTwoPredicateSeparableList!277 thiss!27374 l2!3105 rules!4290))))

(declare-fun b!1473553 () Bool)

(declare-fun e!941283 () Bool)

(declare-fun tp!416594 () Bool)

(assert (=> b!1473553 (= e!941287 (and tp!416594 (inv!20711 (tag!3025 (rule!4538 (h!20910 l1!3136)))) (inv!20715 (transformation!2761 (rule!4538 (h!20910 l1!3136)))) e!941283))))

(declare-fun b!1473554 () Bool)

(declare-fun tp!416587 () Bool)

(assert (=> b!1473554 (= e!941286 (and e!941276 tp!416587))))

(assert (=> b!1473555 (= e!941283 (and tp!416593 tp!416585))))

(assert (= (and start!138026 res!666066) b!1473529))

(assert (= (and b!1473529 res!666061) b!1473533))

(assert (= (and b!1473533 res!666067) b!1473531))

(assert (= (and b!1473531 res!666062) b!1473550))

(assert (= (and b!1473550 res!666057) b!1473544))

(assert (= (and b!1473544 res!666059) b!1473552))

(assert (= (and b!1473552 res!666068) b!1473537))

(assert (= (and b!1473537 res!666063) b!1473541))

(assert (= (and b!1473541 res!666065) b!1473532))

(assert (= (and b!1473532 (not res!666056)) b!1473546))

(assert (= (and b!1473546 (not res!666069)) b!1473547))

(assert (= (and b!1473547 (not res!666071)) b!1473543))

(assert (= (and b!1473543 (not res!666070)) b!1473545))

(assert (= (and b!1473545 (not res!666058)) b!1473540))

(assert (= (and b!1473540 (not res!666060)) b!1473530))

(assert (= (and b!1473530 res!666064) b!1473534))

(assert (= b!1473539 b!1473548))

(assert (= b!1473554 b!1473539))

(assert (= (and start!138026 ((_ is Cons!15508) rules!4290)) b!1473554))

(assert (= b!1473553 b!1473555))

(assert (= b!1473538 b!1473553))

(assert (= b!1473536 b!1473538))

(assert (= (and start!138026 ((_ is Cons!15509) l1!3136)) b!1473536))

(assert (= b!1473549 b!1473535))

(assert (= b!1473542 b!1473549))

(assert (= b!1473551 b!1473542))

(assert (= (and start!138026 ((_ is Cons!15509) l2!3105)) b!1473551))

(declare-fun m!1717517 () Bool)

(assert (=> b!1473541 m!1717517))

(declare-fun m!1717519 () Bool)

(assert (=> b!1473552 m!1717519))

(declare-fun m!1717521 () Bool)

(assert (=> b!1473545 m!1717521))

(declare-fun m!1717523 () Bool)

(assert (=> b!1473539 m!1717523))

(declare-fun m!1717525 () Bool)

(assert (=> b!1473539 m!1717525))

(declare-fun m!1717527 () Bool)

(assert (=> b!1473544 m!1717527))

(declare-fun m!1717529 () Bool)

(assert (=> b!1473532 m!1717529))

(declare-fun m!1717531 () Bool)

(assert (=> b!1473532 m!1717531))

(declare-fun m!1717533 () Bool)

(assert (=> b!1473532 m!1717533))

(declare-fun m!1717535 () Bool)

(assert (=> b!1473532 m!1717535))

(declare-fun m!1717537 () Bool)

(assert (=> b!1473532 m!1717537))

(declare-fun m!1717539 () Bool)

(assert (=> b!1473532 m!1717539))

(declare-fun m!1717541 () Bool)

(assert (=> b!1473532 m!1717541))

(declare-fun m!1717543 () Bool)

(assert (=> b!1473534 m!1717543))

(declare-fun m!1717545 () Bool)

(assert (=> b!1473536 m!1717545))

(declare-fun m!1717547 () Bool)

(assert (=> b!1473531 m!1717547))

(declare-fun m!1717549 () Bool)

(assert (=> b!1473547 m!1717549))

(declare-fun m!1717551 () Bool)

(assert (=> b!1473551 m!1717551))

(declare-fun m!1717553 () Bool)

(assert (=> b!1473530 m!1717553))

(declare-fun m!1717555 () Bool)

(assert (=> b!1473530 m!1717555))

(declare-fun m!1717557 () Bool)

(assert (=> b!1473530 m!1717557))

(declare-fun m!1717559 () Bool)

(assert (=> b!1473530 m!1717559))

(declare-fun m!1717561 () Bool)

(assert (=> b!1473530 m!1717561))

(declare-fun m!1717563 () Bool)

(assert (=> b!1473530 m!1717563))

(declare-fun m!1717565 () Bool)

(assert (=> b!1473530 m!1717565))

(declare-fun m!1717567 () Bool)

(assert (=> b!1473530 m!1717567))

(declare-fun m!1717569 () Bool)

(assert (=> b!1473530 m!1717569))

(assert (=> b!1473530 m!1717567))

(declare-fun m!1717571 () Bool)

(assert (=> b!1473550 m!1717571))

(declare-fun m!1717573 () Bool)

(assert (=> b!1473529 m!1717573))

(declare-fun m!1717575 () Bool)

(assert (=> b!1473543 m!1717575))

(declare-fun m!1717577 () Bool)

(assert (=> b!1473540 m!1717577))

(declare-fun m!1717579 () Bool)

(assert (=> b!1473540 m!1717579))

(declare-fun m!1717581 () Bool)

(assert (=> b!1473540 m!1717581))

(declare-fun m!1717583 () Bool)

(assert (=> b!1473540 m!1717583))

(declare-fun m!1717585 () Bool)

(assert (=> b!1473553 m!1717585))

(declare-fun m!1717587 () Bool)

(assert (=> b!1473553 m!1717587))

(declare-fun m!1717589 () Bool)

(assert (=> b!1473542 m!1717589))

(declare-fun m!1717591 () Bool)

(assert (=> b!1473537 m!1717591))

(declare-fun m!1717593 () Bool)

(assert (=> b!1473549 m!1717593))

(declare-fun m!1717595 () Bool)

(assert (=> b!1473549 m!1717595))

(declare-fun m!1717597 () Bool)

(assert (=> b!1473533 m!1717597))

(declare-fun m!1717599 () Bool)

(assert (=> b!1473538 m!1717599))

(check-sat b_and!101359 b_and!101367 (not b!1473539) (not b!1473532) (not b!1473553) (not b!1473537) (not b_next!38215) (not b!1473551) (not b!1473540) b_and!101365 (not b!1473538) (not b!1473530) (not b_next!38209) (not b!1473545) (not b_next!38207) b_and!101361 (not b!1473547) (not b!1473529) b_and!101357 (not b!1473541) (not b!1473533) (not b!1473536) (not b!1473550) (not b!1473542) (not b_next!38213) (not b!1473552) b_and!101363 (not b_next!38217) (not b_next!38211) (not b!1473531) (not b!1473554) (not b!1473543) (not b!1473544) (not b!1473534) (not b!1473549))
(check-sat b_and!101361 b_and!101359 b_and!101357 b_and!101367 (not b_next!38215) b_and!101365 (not b_next!38213) b_and!101363 (not b_next!38209) (not b_next!38207) (not b_next!38217) (not b_next!38211))
(get-model)

(declare-fun b!1473591 () Bool)

(declare-fun e!941320 () Bool)

(assert (=> b!1473591 (= e!941320 true)))

(declare-fun b!1473590 () Bool)

(declare-fun e!941319 () Bool)

(assert (=> b!1473590 (= e!941319 e!941320)))

(declare-fun b!1473589 () Bool)

(declare-fun e!941318 () Bool)

(assert (=> b!1473589 (= e!941318 e!941319)))

(declare-fun d!431830 () Bool)

(assert (=> d!431830 e!941318))

(assert (= b!1473590 b!1473591))

(assert (= b!1473589 b!1473590))

(assert (= (and d!431830 ((_ is Cons!15508) rules!4290)) b!1473589))

(declare-fun order!9307 () Int)

(declare-fun order!9309 () Int)

(declare-fun lambda!63542 () Int)

(declare-fun dynLambda!7035 (Int Int) Int)

(declare-fun dynLambda!7036 (Int Int) Int)

(assert (=> b!1473591 (< (dynLambda!7035 order!9307 (toValue!4088 (transformation!2761 (h!20909 rules!4290)))) (dynLambda!7036 order!9309 lambda!63542))))

(declare-fun order!9311 () Int)

(declare-fun dynLambda!7037 (Int Int) Int)

(assert (=> b!1473591 (< (dynLambda!7037 order!9311 (toChars!3947 (transformation!2761 (h!20909 rules!4290)))) (dynLambda!7036 order!9309 lambda!63542))))

(assert (=> d!431830 true))

(declare-fun lt!512096 () Bool)

(declare-fun forall!3777 (List!15575 Int) Bool)

(assert (=> d!431830 (= lt!512096 (forall!3777 l2!3105 lambda!63542))))

(declare-fun e!941310 () Bool)

(assert (=> d!431830 (= lt!512096 e!941310)))

(declare-fun res!666097 () Bool)

(assert (=> d!431830 (=> res!666097 e!941310)))

(assert (=> d!431830 (= res!666097 (not ((_ is Cons!15509) l2!3105)))))

(assert (=> d!431830 (not (isEmpty!9685 rules!4290))))

(assert (=> d!431830 (= (rulesProduceEachTokenIndividuallyList!784 thiss!27374 rules!4290 l2!3105) lt!512096)))

(declare-fun b!1473579 () Bool)

(declare-fun e!941311 () Bool)

(assert (=> b!1473579 (= e!941310 e!941311)))

(declare-fun res!666096 () Bool)

(assert (=> b!1473579 (=> (not res!666096) (not e!941311))))

(assert (=> b!1473579 (= res!666096 (rulesProduceIndividualToken!1276 thiss!27374 rules!4290 (h!20910 l2!3105)))))

(declare-fun b!1473580 () Bool)

(assert (=> b!1473580 (= e!941311 (rulesProduceEachTokenIndividuallyList!784 thiss!27374 rules!4290 (t!136020 l2!3105)))))

(assert (= (and d!431830 (not res!666097)) b!1473579))

(assert (= (and b!1473579 res!666096) b!1473580))

(declare-fun m!1717639 () Bool)

(assert (=> d!431830 m!1717639))

(assert (=> d!431830 m!1717573))

(declare-fun m!1717641 () Bool)

(assert (=> b!1473579 m!1717641))

(declare-fun m!1717643 () Bool)

(assert (=> b!1473580 m!1717643))

(assert (=> b!1473550 d!431830))

(declare-fun d!431838 () Bool)

(assert (=> d!431838 (= (inv!20711 (tag!3025 (h!20909 rules!4290))) (= (mod (str.len (value!88310 (tag!3025 (h!20909 rules!4290)))) 2) 0))))

(assert (=> b!1473539 d!431838))

(declare-fun d!431840 () Bool)

(declare-fun res!666100 () Bool)

(declare-fun e!941323 () Bool)

(assert (=> d!431840 (=> (not res!666100) (not e!941323))))

(declare-fun semiInverseModEq!1033 (Int Int) Bool)

(assert (=> d!431840 (= res!666100 (semiInverseModEq!1033 (toChars!3947 (transformation!2761 (h!20909 rules!4290))) (toValue!4088 (transformation!2761 (h!20909 rules!4290)))))))

(assert (=> d!431840 (= (inv!20715 (transformation!2761 (h!20909 rules!4290))) e!941323)))

(declare-fun b!1473596 () Bool)

(declare-fun equivClasses!992 (Int Int) Bool)

(assert (=> b!1473596 (= e!941323 (equivClasses!992 (toChars!3947 (transformation!2761 (h!20909 rules!4290))) (toValue!4088 (transformation!2761 (h!20909 rules!4290)))))))

(assert (= (and d!431840 res!666100) b!1473596))

(declare-fun m!1717645 () Bool)

(assert (=> d!431840 m!1717645))

(declare-fun m!1717647 () Bool)

(assert (=> b!1473596 m!1717647))

(assert (=> b!1473539 d!431840))

(declare-fun d!431842 () Bool)

(assert (=> d!431842 (= (inv!20711 (tag!3025 (rule!4538 (h!20910 l2!3105)))) (= (mod (str.len (value!88310 (tag!3025 (rule!4538 (h!20910 l2!3105))))) 2) 0))))

(assert (=> b!1473549 d!431842))

(declare-fun d!431844 () Bool)

(declare-fun res!666101 () Bool)

(declare-fun e!941324 () Bool)

(assert (=> d!431844 (=> (not res!666101) (not e!941324))))

(assert (=> d!431844 (= res!666101 (semiInverseModEq!1033 (toChars!3947 (transformation!2761 (rule!4538 (h!20910 l2!3105)))) (toValue!4088 (transformation!2761 (rule!4538 (h!20910 l2!3105))))))))

(assert (=> d!431844 (= (inv!20715 (transformation!2761 (rule!4538 (h!20910 l2!3105)))) e!941324)))

(declare-fun b!1473597 () Bool)

(assert (=> b!1473597 (= e!941324 (equivClasses!992 (toChars!3947 (transformation!2761 (rule!4538 (h!20910 l2!3105)))) (toValue!4088 (transformation!2761 (rule!4538 (h!20910 l2!3105))))))))

(assert (= (and d!431844 res!666101) b!1473597))

(declare-fun m!1717649 () Bool)

(assert (=> d!431844 m!1717649))

(declare-fun m!1717651 () Bool)

(assert (=> b!1473597 m!1717651))

(assert (=> b!1473549 d!431844))

(declare-fun d!431846 () Bool)

(declare-fun e!941330 () Bool)

(assert (=> d!431846 e!941330))

(declare-fun res!666107 () Bool)

(assert (=> d!431846 (=> (not res!666107) (not e!941330))))

(declare-fun lt!512099 () List!15575)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!2267 (List!15575) (InoxSet Token!5184))

(assert (=> d!431846 (= res!666107 (= (content!2267 lt!512099) ((_ map or) (content!2267 (t!136020 l1!3136)) (content!2267 l2!3105))))))

(declare-fun e!941329 () List!15575)

(assert (=> d!431846 (= lt!512099 e!941329)))

(declare-fun c!242402 () Bool)

(assert (=> d!431846 (= c!242402 ((_ is Nil!15509) (t!136020 l1!3136)))))

(assert (=> d!431846 (= (++!4187 (t!136020 l1!3136) l2!3105) lt!512099)))

(declare-fun b!1473606 () Bool)

(assert (=> b!1473606 (= e!941329 l2!3105)))

(declare-fun b!1473609 () Bool)

(assert (=> b!1473609 (= e!941330 (or (not (= l2!3105 Nil!15509)) (= lt!512099 (t!136020 l1!3136))))))

(declare-fun b!1473608 () Bool)

(declare-fun res!666106 () Bool)

(assert (=> b!1473608 (=> (not res!666106) (not e!941330))))

(declare-fun size!12578 (List!15575) Int)

(assert (=> b!1473608 (= res!666106 (= (size!12578 lt!512099) (+ (size!12578 (t!136020 l1!3136)) (size!12578 l2!3105))))))

(declare-fun b!1473607 () Bool)

(assert (=> b!1473607 (= e!941329 (Cons!15509 (h!20910 (t!136020 l1!3136)) (++!4187 (t!136020 (t!136020 l1!3136)) l2!3105)))))

(assert (= (and d!431846 c!242402) b!1473606))

(assert (= (and d!431846 (not c!242402)) b!1473607))

(assert (= (and d!431846 res!666107) b!1473608))

(assert (= (and b!1473608 res!666106) b!1473609))

(declare-fun m!1717653 () Bool)

(assert (=> d!431846 m!1717653))

(declare-fun m!1717655 () Bool)

(assert (=> d!431846 m!1717655))

(declare-fun m!1717657 () Bool)

(assert (=> d!431846 m!1717657))

(declare-fun m!1717659 () Bool)

(assert (=> b!1473608 m!1717659))

(declare-fun m!1717661 () Bool)

(assert (=> b!1473608 m!1717661))

(declare-fun m!1717663 () Bool)

(assert (=> b!1473608 m!1717663))

(declare-fun m!1717665 () Bool)

(assert (=> b!1473607 m!1717665))

(assert (=> b!1473530 d!431846))

(declare-fun d!431848 () Bool)

(assert (=> d!431848 (rulesProduceEachTokenIndividuallyList!784 thiss!27374 rules!4290 (++!4187 (t!136020 l1!3136) l2!3105))))

(declare-fun lt!512103 () Unit!25209)

(declare-fun choose!9037 (LexerInterface!2417 List!15574 List!15575 List!15575) Unit!25209)

(assert (=> d!431848 (= lt!512103 (choose!9037 thiss!27374 rules!4290 (t!136020 l1!3136) l2!3105))))

(assert (=> d!431848 (not (isEmpty!9685 rules!4290))))

(assert (=> d!431848 (= (lemmaRulesProduceEachTokenIndividuallyConcat!64 thiss!27374 rules!4290 (t!136020 l1!3136) l2!3105) lt!512103)))

(declare-fun bs!345185 () Bool)

(assert (= bs!345185 d!431848))

(assert (=> bs!345185 m!1717559))

(assert (=> bs!345185 m!1717559))

(declare-fun m!1717673 () Bool)

(assert (=> bs!345185 m!1717673))

(declare-fun m!1717675 () Bool)

(assert (=> bs!345185 m!1717675))

(assert (=> bs!345185 m!1717573))

(assert (=> b!1473530 d!431848))

(declare-fun bs!345186 () Bool)

(declare-fun d!431852 () Bool)

(assert (= bs!345186 (and d!431852 d!431830)))

(declare-fun lambda!63546 () Int)

(assert (=> bs!345186 (= lambda!63546 lambda!63542)))

(declare-fun b!1473629 () Bool)

(declare-fun e!941346 () Bool)

(assert (=> b!1473629 (= e!941346 true)))

(declare-fun b!1473628 () Bool)

(declare-fun e!941345 () Bool)

(assert (=> b!1473628 (= e!941345 e!941346)))

(declare-fun b!1473627 () Bool)

(declare-fun e!941344 () Bool)

(assert (=> b!1473627 (= e!941344 e!941345)))

(assert (=> d!431852 e!941344))

(assert (= b!1473628 b!1473629))

(assert (= b!1473627 b!1473628))

(assert (= (and d!431852 ((_ is Cons!15508) rules!4290)) b!1473627))

(assert (=> b!1473629 (< (dynLambda!7035 order!9307 (toValue!4088 (transformation!2761 (h!20909 rules!4290)))) (dynLambda!7036 order!9309 lambda!63546))))

(assert (=> b!1473629 (< (dynLambda!7037 order!9311 (toChars!3947 (transformation!2761 (h!20909 rules!4290)))) (dynLambda!7036 order!9309 lambda!63546))))

(assert (=> d!431852 true))

(declare-fun lt!512104 () Bool)

(assert (=> d!431852 (= lt!512104 (forall!3777 lt!512073 lambda!63546))))

(declare-fun e!941342 () Bool)

(assert (=> d!431852 (= lt!512104 e!941342)))

(declare-fun res!666111 () Bool)

(assert (=> d!431852 (=> res!666111 e!941342)))

(assert (=> d!431852 (= res!666111 (not ((_ is Cons!15509) lt!512073)))))

(assert (=> d!431852 (not (isEmpty!9685 rules!4290))))

(assert (=> d!431852 (= (rulesProduceEachTokenIndividuallyList!784 thiss!27374 rules!4290 lt!512073) lt!512104)))

(declare-fun b!1473625 () Bool)

(declare-fun e!941343 () Bool)

(assert (=> b!1473625 (= e!941342 e!941343)))

(declare-fun res!666110 () Bool)

(assert (=> b!1473625 (=> (not res!666110) (not e!941343))))

(assert (=> b!1473625 (= res!666110 (rulesProduceIndividualToken!1276 thiss!27374 rules!4290 (h!20910 lt!512073)))))

(declare-fun b!1473626 () Bool)

(assert (=> b!1473626 (= e!941343 (rulesProduceEachTokenIndividuallyList!784 thiss!27374 rules!4290 (t!136020 lt!512073)))))

(assert (= (and d!431852 (not res!666111)) b!1473625))

(assert (= (and b!1473625 res!666110) b!1473626))

(declare-fun m!1717677 () Bool)

(assert (=> d!431852 m!1717677))

(assert (=> d!431852 m!1717573))

(declare-fun m!1717679 () Bool)

(assert (=> b!1473625 m!1717679))

(declare-fun m!1717681 () Bool)

(assert (=> b!1473626 m!1717681))

(assert (=> b!1473530 d!431852))

(declare-fun d!431854 () Bool)

(declare-fun e!941348 () Bool)

(assert (=> d!431854 e!941348))

(declare-fun res!666113 () Bool)

(assert (=> d!431854 (=> (not res!666113) (not e!941348))))

(declare-fun lt!512105 () List!15575)

(assert (=> d!431854 (= res!666113 (= (content!2267 lt!512105) ((_ map or) (content!2267 l1!3136) (content!2267 l2!3105))))))

(declare-fun e!941347 () List!15575)

(assert (=> d!431854 (= lt!512105 e!941347)))

(declare-fun c!242403 () Bool)

(assert (=> d!431854 (= c!242403 ((_ is Nil!15509) l1!3136))))

(assert (=> d!431854 (= (++!4187 l1!3136 l2!3105) lt!512105)))

(declare-fun b!1473630 () Bool)

(assert (=> b!1473630 (= e!941347 l2!3105)))

(declare-fun b!1473633 () Bool)

(assert (=> b!1473633 (= e!941348 (or (not (= l2!3105 Nil!15509)) (= lt!512105 l1!3136)))))

(declare-fun b!1473632 () Bool)

(declare-fun res!666112 () Bool)

(assert (=> b!1473632 (=> (not res!666112) (not e!941348))))

(assert (=> b!1473632 (= res!666112 (= (size!12578 lt!512105) (+ (size!12578 l1!3136) (size!12578 l2!3105))))))

(declare-fun b!1473631 () Bool)

(assert (=> b!1473631 (= e!941347 (Cons!15509 (h!20910 l1!3136) (++!4187 (t!136020 l1!3136) l2!3105)))))

(assert (= (and d!431854 c!242403) b!1473630))

(assert (= (and d!431854 (not c!242403)) b!1473631))

(assert (= (and d!431854 res!666113) b!1473632))

(assert (= (and b!1473632 res!666112) b!1473633))

(declare-fun m!1717683 () Bool)

(assert (=> d!431854 m!1717683))

(declare-fun m!1717685 () Bool)

(assert (=> d!431854 m!1717685))

(assert (=> d!431854 m!1717657))

(declare-fun m!1717687 () Bool)

(assert (=> b!1473632 m!1717687))

(declare-fun m!1717689 () Bool)

(assert (=> b!1473632 m!1717689))

(assert (=> b!1473632 m!1717663))

(assert (=> b!1473631 m!1717559))

(assert (=> b!1473530 d!431854))

(declare-fun bs!345187 () Bool)

(declare-fun d!431856 () Bool)

(assert (= bs!345187 (and d!431856 d!431830)))

(declare-fun lambda!63547 () Int)

(assert (=> bs!345187 (= lambda!63547 lambda!63542)))

(declare-fun bs!345188 () Bool)

(assert (= bs!345188 (and d!431856 d!431852)))

(assert (=> bs!345188 (= lambda!63547 lambda!63546)))

(declare-fun b!1473638 () Bool)

(declare-fun e!941353 () Bool)

(assert (=> b!1473638 (= e!941353 true)))

(declare-fun b!1473637 () Bool)

(declare-fun e!941352 () Bool)

(assert (=> b!1473637 (= e!941352 e!941353)))

(declare-fun b!1473636 () Bool)

(declare-fun e!941351 () Bool)

(assert (=> b!1473636 (= e!941351 e!941352)))

(assert (=> d!431856 e!941351))

(assert (= b!1473637 b!1473638))

(assert (= b!1473636 b!1473637))

(assert (= (and d!431856 ((_ is Cons!15508) rules!4290)) b!1473636))

(assert (=> b!1473638 (< (dynLambda!7035 order!9307 (toValue!4088 (transformation!2761 (h!20909 rules!4290)))) (dynLambda!7036 order!9309 lambda!63547))))

(assert (=> b!1473638 (< (dynLambda!7037 order!9311 (toChars!3947 (transformation!2761 (h!20909 rules!4290)))) (dynLambda!7036 order!9309 lambda!63547))))

(assert (=> d!431856 true))

(declare-fun lt!512106 () Bool)

(assert (=> d!431856 (= lt!512106 (forall!3777 lt!512070 lambda!63547))))

(declare-fun e!941349 () Bool)

(assert (=> d!431856 (= lt!512106 e!941349)))

(declare-fun res!666115 () Bool)

(assert (=> d!431856 (=> res!666115 e!941349)))

(assert (=> d!431856 (= res!666115 (not ((_ is Cons!15509) lt!512070)))))

(assert (=> d!431856 (not (isEmpty!9685 rules!4290))))

(assert (=> d!431856 (= (rulesProduceEachTokenIndividuallyList!784 thiss!27374 rules!4290 lt!512070) lt!512106)))

(declare-fun b!1473634 () Bool)

(declare-fun e!941350 () Bool)

(assert (=> b!1473634 (= e!941349 e!941350)))

(declare-fun res!666114 () Bool)

(assert (=> b!1473634 (=> (not res!666114) (not e!941350))))

(assert (=> b!1473634 (= res!666114 (rulesProduceIndividualToken!1276 thiss!27374 rules!4290 (h!20910 lt!512070)))))

(declare-fun b!1473635 () Bool)

(assert (=> b!1473635 (= e!941350 (rulesProduceEachTokenIndividuallyList!784 thiss!27374 rules!4290 (t!136020 lt!512070)))))

(assert (= (and d!431856 (not res!666115)) b!1473634))

(assert (= (and b!1473634 res!666114) b!1473635))

(declare-fun m!1717691 () Bool)

(assert (=> d!431856 m!1717691))

(assert (=> d!431856 m!1717573))

(declare-fun m!1717693 () Bool)

(assert (=> b!1473634 m!1717693))

(declare-fun m!1717695 () Bool)

(assert (=> b!1473635 m!1717695))

(assert (=> b!1473530 d!431856))

(declare-fun d!431858 () Bool)

(declare-fun fromListB!744 (List!15575) BalanceConc!10516)

(assert (=> d!431858 (= (seqFromList!1726 lt!512073) (fromListB!744 lt!512073))))

(declare-fun bs!345189 () Bool)

(assert (= bs!345189 d!431858))

(declare-fun m!1717697 () Bool)

(assert (=> bs!345189 m!1717697))

(assert (=> b!1473530 d!431858))

(declare-fun d!431860 () Bool)

(assert (=> d!431860 (rulesProduceEachTokenIndividuallyList!784 thiss!27374 rules!4290 (++!4187 l1!3136 l2!3105))))

(declare-fun lt!512107 () Unit!25209)

(assert (=> d!431860 (= lt!512107 (choose!9037 thiss!27374 rules!4290 l1!3136 l2!3105))))

(assert (=> d!431860 (not (isEmpty!9685 rules!4290))))

(assert (=> d!431860 (= (lemmaRulesProduceEachTokenIndividuallyConcat!64 thiss!27374 rules!4290 l1!3136 l2!3105) lt!512107)))

(declare-fun bs!345190 () Bool)

(assert (= bs!345190 d!431860))

(assert (=> bs!345190 m!1717557))

(assert (=> bs!345190 m!1717557))

(declare-fun m!1717699 () Bool)

(assert (=> bs!345190 m!1717699))

(declare-fun m!1717701 () Bool)

(assert (=> bs!345190 m!1717701))

(assert (=> bs!345190 m!1717573))

(assert (=> b!1473530 d!431860))

(declare-fun d!431862 () Bool)

(declare-fun e!941383 () Bool)

(assert (=> d!431862 e!941383))

(declare-fun res!666153 () Bool)

(assert (=> d!431862 (=> (not res!666153) (not e!941383))))

(assert (=> d!431862 (= res!666153 ((_ is Lexer!2415) thiss!27374))))

(declare-fun lt!512153 () Unit!25209)

(declare-fun choose!9038 (LexerInterface!2417 List!15575 List!15575 List!15574) Unit!25209)

(assert (=> d!431862 (= lt!512153 (choose!9038 thiss!27374 (t!136020 l1!3136) l2!3105 rules!4290))))

(assert (=> d!431862 (not (isEmpty!9685 rules!4290))))

(assert (=> d!431862 (= (tokensListTwoByTwoPredicateConcatSeparableTokensList!64 thiss!27374 (t!136020 l1!3136) l2!3105 rules!4290) lt!512153)))

(declare-fun b!1473684 () Bool)

(declare-fun res!666152 () Bool)

(assert (=> b!1473684 (=> (not res!666152) (not e!941383))))

(assert (=> b!1473684 (= res!666152 (rulesProduceEachTokenIndividuallyList!784 thiss!27374 rules!4290 (t!136020 l1!3136)))))

(declare-fun b!1473683 () Bool)

(declare-fun res!666154 () Bool)

(assert (=> b!1473683 (=> (not res!666154) (not e!941383))))

(assert (=> b!1473683 (= res!666154 (rulesInvariant!2206 thiss!27374 rules!4290))))

(declare-fun b!1473685 () Bool)

(declare-fun res!666155 () Bool)

(assert (=> b!1473685 (=> (not res!666155) (not e!941383))))

(assert (=> b!1473685 (= res!666155 (rulesProduceEachTokenIndividuallyList!784 thiss!27374 rules!4290 l2!3105))))

(declare-fun b!1473686 () Bool)

(assert (=> b!1473686 (= e!941383 (tokensListTwoByTwoPredicateSeparableList!277 thiss!27374 (++!4187 (t!136020 l1!3136) l2!3105) rules!4290))))

(declare-fun lt!512154 () Unit!25209)

(declare-fun lt!512152 () Unit!25209)

(assert (=> b!1473686 (= lt!512154 lt!512152)))

(assert (=> b!1473686 (rulesProduceEachTokenIndividuallyList!784 thiss!27374 rules!4290 (++!4187 (t!136020 l1!3136) l2!3105))))

(assert (=> b!1473686 (= lt!512152 (lemmaRulesProduceEachTokenIndividuallyConcat!64 thiss!27374 rules!4290 (t!136020 l1!3136) l2!3105))))

(assert (= (and d!431862 res!666153) b!1473683))

(assert (= (and b!1473683 res!666154) b!1473684))

(assert (= (and b!1473684 res!666152) b!1473685))

(assert (= (and b!1473685 res!666155) b!1473686))

(assert (=> b!1473684 m!1717575))

(declare-fun m!1717813 () Bool)

(assert (=> d!431862 m!1717813))

(assert (=> d!431862 m!1717573))

(assert (=> b!1473685 m!1717571))

(assert (=> b!1473683 m!1717597))

(assert (=> b!1473686 m!1717559))

(assert (=> b!1473686 m!1717559))

(declare-fun m!1717815 () Bool)

(assert (=> b!1473686 m!1717815))

(assert (=> b!1473686 m!1717559))

(assert (=> b!1473686 m!1717673))

(assert (=> b!1473686 m!1717565))

(assert (=> b!1473530 d!431862))

(declare-fun bs!345196 () Bool)

(declare-fun d!431904 () Bool)

(assert (= bs!345196 (and d!431904 d!431830)))

(declare-fun lambda!63553 () Int)

(assert (=> bs!345196 (= lambda!63553 lambda!63542)))

(declare-fun bs!345197 () Bool)

(assert (= bs!345197 (and d!431904 d!431852)))

(assert (=> bs!345197 (= lambda!63553 lambda!63546)))

(declare-fun bs!345198 () Bool)

(assert (= bs!345198 (and d!431904 d!431856)))

(assert (=> bs!345198 (= lambda!63553 lambda!63547)))

(declare-fun b!1473697 () Bool)

(declare-fun e!941394 () Bool)

(assert (=> b!1473697 (= e!941394 true)))

(declare-fun b!1473696 () Bool)

(declare-fun e!941393 () Bool)

(assert (=> b!1473696 (= e!941393 e!941394)))

(declare-fun b!1473695 () Bool)

(declare-fun e!941392 () Bool)

(assert (=> b!1473695 (= e!941392 e!941393)))

(assert (=> d!431904 e!941392))

(assert (= b!1473696 b!1473697))

(assert (= b!1473695 b!1473696))

(assert (= (and d!431904 ((_ is Cons!15508) rules!4290)) b!1473695))

(assert (=> b!1473697 (< (dynLambda!7035 order!9307 (toValue!4088 (transformation!2761 (h!20909 rules!4290)))) (dynLambda!7036 order!9309 lambda!63553))))

(assert (=> b!1473697 (< (dynLambda!7037 order!9311 (toChars!3947 (transformation!2761 (h!20909 rules!4290)))) (dynLambda!7036 order!9309 lambda!63553))))

(assert (=> d!431904 true))

(declare-fun e!941391 () Bool)

(assert (=> d!431904 e!941391))

(declare-fun res!666160 () Bool)

(assert (=> d!431904 (=> (not res!666160) (not e!941391))))

(declare-fun lt!512161 () Bool)

(declare-fun list!6180 (BalanceConc!10516) List!15575)

(assert (=> d!431904 (= res!666160 (= lt!512161 (forall!3777 (list!6180 (seqFromList!1726 lt!512073)) lambda!63553)))))

(declare-fun forall!3778 (BalanceConc!10516 Int) Bool)

(assert (=> d!431904 (= lt!512161 (forall!3778 (seqFromList!1726 lt!512073) lambda!63553))))

(assert (=> d!431904 (not (isEmpty!9685 rules!4290))))

(assert (=> d!431904 (= (rulesProduceEachTokenIndividually!896 thiss!27374 rules!4290 (seqFromList!1726 lt!512073)) lt!512161)))

(declare-fun b!1473694 () Bool)

(assert (=> b!1473694 (= e!941391 (= lt!512161 (rulesProduceEachTokenIndividuallyList!784 thiss!27374 rules!4290 (list!6180 (seqFromList!1726 lt!512073)))))))

(assert (= (and d!431904 res!666160) b!1473694))

(assert (=> d!431904 m!1717567))

(declare-fun m!1717825 () Bool)

(assert (=> d!431904 m!1717825))

(assert (=> d!431904 m!1717825))

(declare-fun m!1717827 () Bool)

(assert (=> d!431904 m!1717827))

(assert (=> d!431904 m!1717567))

(declare-fun m!1717829 () Bool)

(assert (=> d!431904 m!1717829))

(assert (=> d!431904 m!1717573))

(assert (=> b!1473694 m!1717567))

(assert (=> b!1473694 m!1717825))

(assert (=> b!1473694 m!1717825))

(declare-fun m!1717831 () Bool)

(assert (=> b!1473694 m!1717831))

(assert (=> b!1473530 d!431904))

(declare-fun d!431910 () Bool)

(declare-fun res!666165 () Bool)

(declare-fun e!941397 () Bool)

(assert (=> d!431910 (=> (not res!666165) (not e!941397))))

(declare-fun isEmpty!9689 (List!15573) Bool)

(assert (=> d!431910 (= res!666165 (not (isEmpty!9689 (originalCharacters!3623 (h!20910 l2!3105)))))))

(assert (=> d!431910 (= (inv!20714 (h!20910 l2!3105)) e!941397)))

(declare-fun b!1473702 () Bool)

(declare-fun res!666166 () Bool)

(assert (=> b!1473702 (=> (not res!666166) (not e!941397))))

(declare-fun list!6181 (BalanceConc!10514) List!15573)

(declare-fun dynLambda!7038 (Int TokenValue!2851) BalanceConc!10514)

(assert (=> b!1473702 (= res!666166 (= (originalCharacters!3623 (h!20910 l2!3105)) (list!6181 (dynLambda!7038 (toChars!3947 (transformation!2761 (rule!4538 (h!20910 l2!3105)))) (value!88336 (h!20910 l2!3105))))))))

(declare-fun b!1473703 () Bool)

(declare-fun size!12579 (List!15573) Int)

(assert (=> b!1473703 (= e!941397 (= (size!12573 (h!20910 l2!3105)) (size!12579 (originalCharacters!3623 (h!20910 l2!3105)))))))

(assert (= (and d!431910 res!666165) b!1473702))

(assert (= (and b!1473702 res!666166) b!1473703))

(declare-fun b_lambda!46003 () Bool)

(assert (=> (not b_lambda!46003) (not b!1473702)))

(declare-fun t!136032 () Bool)

(declare-fun tb!83585 () Bool)

(assert (=> (and b!1473535 (= (toChars!3947 (transformation!2761 (rule!4538 (h!20910 l2!3105)))) (toChars!3947 (transformation!2761 (rule!4538 (h!20910 l2!3105))))) t!136032) tb!83585))

(declare-fun b!1473708 () Bool)

(declare-fun e!941400 () Bool)

(declare-fun tp!416601 () Bool)

(declare-fun inv!20718 (Conc!5287) Bool)

(assert (=> b!1473708 (= e!941400 (and (inv!20718 (c!242395 (dynLambda!7038 (toChars!3947 (transformation!2761 (rule!4538 (h!20910 l2!3105)))) (value!88336 (h!20910 l2!3105))))) tp!416601))))

(declare-fun result!100490 () Bool)

(declare-fun inv!20719 (BalanceConc!10514) Bool)

(assert (=> tb!83585 (= result!100490 (and (inv!20719 (dynLambda!7038 (toChars!3947 (transformation!2761 (rule!4538 (h!20910 l2!3105)))) (value!88336 (h!20910 l2!3105)))) e!941400))))

(assert (= tb!83585 b!1473708))

(declare-fun m!1717833 () Bool)

(assert (=> b!1473708 m!1717833))

(declare-fun m!1717835 () Bool)

(assert (=> tb!83585 m!1717835))

(assert (=> b!1473702 t!136032))

(declare-fun b_and!101369 () Bool)

(assert (= b_and!101359 (and (=> t!136032 result!100490) b_and!101369)))

(declare-fun tb!83587 () Bool)

(declare-fun t!136034 () Bool)

(assert (=> (and b!1473548 (= (toChars!3947 (transformation!2761 (h!20909 rules!4290))) (toChars!3947 (transformation!2761 (rule!4538 (h!20910 l2!3105))))) t!136034) tb!83587))

(declare-fun result!100494 () Bool)

(assert (= result!100494 result!100490))

(assert (=> b!1473702 t!136034))

(declare-fun b_and!101371 () Bool)

(assert (= b_and!101363 (and (=> t!136034 result!100494) b_and!101371)))

(declare-fun tb!83589 () Bool)

(declare-fun t!136036 () Bool)

(assert (=> (and b!1473555 (= (toChars!3947 (transformation!2761 (rule!4538 (h!20910 l1!3136)))) (toChars!3947 (transformation!2761 (rule!4538 (h!20910 l2!3105))))) t!136036) tb!83589))

(declare-fun result!100496 () Bool)

(assert (= result!100496 result!100490))

(assert (=> b!1473702 t!136036))

(declare-fun b_and!101373 () Bool)

(assert (= b_and!101367 (and (=> t!136036 result!100496) b_and!101373)))

(declare-fun m!1717837 () Bool)

(assert (=> d!431910 m!1717837))

(declare-fun m!1717839 () Bool)

(assert (=> b!1473702 m!1717839))

(assert (=> b!1473702 m!1717839))

(declare-fun m!1717841 () Bool)

(assert (=> b!1473702 m!1717841))

(declare-fun m!1717843 () Bool)

(assert (=> b!1473703 m!1717843))

(assert (=> b!1473551 d!431910))

(declare-fun d!431912 () Bool)

(declare-fun prefixMatchZipperSequence!364 (Regex!4075 BalanceConc!10514) Bool)

(declare-fun rulesRegex!418 (LexerInterface!2417 List!15574) Regex!4075)

(declare-fun ++!4189 (BalanceConc!10514 BalanceConc!10514) BalanceConc!10514)

(declare-fun charsOf!1582 (Token!5184) BalanceConc!10514)

(declare-fun singletonSeq!1300 (C!8328) BalanceConc!10514)

(declare-fun apply!3999 (BalanceConc!10514 Int) C!8328)

(assert (=> d!431912 (= (separableTokensPredicate!560 thiss!27374 lt!512076 lt!512074 rules!4290) (not (prefixMatchZipperSequence!364 (rulesRegex!418 thiss!27374 rules!4290) (++!4189 (charsOf!1582 lt!512076) (singletonSeq!1300 (apply!3999 (charsOf!1582 lt!512074) 0))))))))

(declare-fun bs!345199 () Bool)

(assert (= bs!345199 d!431912))

(declare-fun m!1717845 () Bool)

(assert (=> bs!345199 m!1717845))

(declare-fun m!1717847 () Bool)

(assert (=> bs!345199 m!1717847))

(assert (=> bs!345199 m!1717845))

(declare-fun m!1717849 () Bool)

(assert (=> bs!345199 m!1717849))

(declare-fun m!1717851 () Bool)

(assert (=> bs!345199 m!1717851))

(declare-fun m!1717853 () Bool)

(assert (=> bs!345199 m!1717853))

(declare-fun m!1717855 () Bool)

(assert (=> bs!345199 m!1717855))

(assert (=> bs!345199 m!1717851))

(assert (=> bs!345199 m!1717847))

(assert (=> bs!345199 m!1717853))

(assert (=> bs!345199 m!1717849))

(assert (=> bs!345199 m!1717855))

(declare-fun m!1717857 () Bool)

(assert (=> bs!345199 m!1717857))

(assert (=> b!1473540 d!431912))

(declare-fun d!431914 () Bool)

(declare-fun lt!512172 () Bool)

(declare-fun e!941418 () Bool)

(assert (=> d!431914 (= lt!512172 e!941418)))

(declare-fun res!666180 () Bool)

(assert (=> d!431914 (=> (not res!666180) (not e!941418))))

(declare-datatypes ((tuple2!14292 0))(
  ( (tuple2!14293 (_1!8032 BalanceConc!10516) (_2!8032 BalanceConc!10514)) )
))
(declare-fun lex!1089 (LexerInterface!2417 List!15574 BalanceConc!10514) tuple2!14292)

(declare-fun print!1124 (LexerInterface!2417 BalanceConc!10516) BalanceConc!10514)

(declare-fun singletonSeq!1301 (Token!5184) BalanceConc!10516)

(assert (=> d!431914 (= res!666180 (= (list!6180 (_1!8032 (lex!1089 thiss!27374 rules!4290 (print!1124 thiss!27374 (singletonSeq!1301 lt!512076))))) (list!6180 (singletonSeq!1301 lt!512076))))))

(declare-fun e!941419 () Bool)

(assert (=> d!431914 (= lt!512172 e!941419)))

(declare-fun res!666182 () Bool)

(assert (=> d!431914 (=> (not res!666182) (not e!941419))))

(declare-fun lt!512173 () tuple2!14292)

(declare-fun size!12580 (BalanceConc!10516) Int)

(assert (=> d!431914 (= res!666182 (= (size!12580 (_1!8032 lt!512173)) 1))))

(assert (=> d!431914 (= lt!512173 (lex!1089 thiss!27374 rules!4290 (print!1124 thiss!27374 (singletonSeq!1301 lt!512076))))))

(assert (=> d!431914 (not (isEmpty!9685 rules!4290))))

(assert (=> d!431914 (= (rulesProduceIndividualToken!1276 thiss!27374 rules!4290 lt!512076) lt!512172)))

(declare-fun b!1473730 () Bool)

(declare-fun res!666181 () Bool)

(assert (=> b!1473730 (=> (not res!666181) (not e!941419))))

(declare-fun apply!4000 (BalanceConc!10516 Int) Token!5184)

(assert (=> b!1473730 (= res!666181 (= (apply!4000 (_1!8032 lt!512173) 0) lt!512076))))

(declare-fun b!1473731 () Bool)

(declare-fun isEmpty!9690 (BalanceConc!10514) Bool)

(assert (=> b!1473731 (= e!941419 (isEmpty!9690 (_2!8032 lt!512173)))))

(declare-fun b!1473732 () Bool)

(assert (=> b!1473732 (= e!941418 (isEmpty!9690 (_2!8032 (lex!1089 thiss!27374 rules!4290 (print!1124 thiss!27374 (singletonSeq!1301 lt!512076))))))))

(assert (= (and d!431914 res!666182) b!1473730))

(assert (= (and b!1473730 res!666181) b!1473731))

(assert (= (and d!431914 res!666180) b!1473732))

(declare-fun m!1717887 () Bool)

(assert (=> d!431914 m!1717887))

(declare-fun m!1717889 () Bool)

(assert (=> d!431914 m!1717889))

(declare-fun m!1717891 () Bool)

(assert (=> d!431914 m!1717891))

(declare-fun m!1717893 () Bool)

(assert (=> d!431914 m!1717893))

(declare-fun m!1717895 () Bool)

(assert (=> d!431914 m!1717895))

(assert (=> d!431914 m!1717887))

(declare-fun m!1717897 () Bool)

(assert (=> d!431914 m!1717897))

(assert (=> d!431914 m!1717887))

(assert (=> d!431914 m!1717893))

(assert (=> d!431914 m!1717573))

(declare-fun m!1717899 () Bool)

(assert (=> b!1473730 m!1717899))

(declare-fun m!1717901 () Bool)

(assert (=> b!1473731 m!1717901))

(assert (=> b!1473732 m!1717887))

(assert (=> b!1473732 m!1717887))

(assert (=> b!1473732 m!1717893))

(assert (=> b!1473732 m!1717893))

(assert (=> b!1473732 m!1717895))

(declare-fun m!1717903 () Bool)

(assert (=> b!1473732 m!1717903))

(assert (=> b!1473540 d!431914))

(declare-fun d!431926 () Bool)

(assert (=> d!431926 (rulesProduceIndividualToken!1276 thiss!27374 rules!4290 lt!512076)))

(declare-fun lt!512201 () Unit!25209)

(declare-fun choose!9039 (LexerInterface!2417 List!15574 List!15575 Token!5184) Unit!25209)

(assert (=> d!431926 (= lt!512201 (choose!9039 thiss!27374 rules!4290 (t!136020 l1!3136) lt!512076))))

(assert (=> d!431926 (not (isEmpty!9685 rules!4290))))

(assert (=> d!431926 (= (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!457 thiss!27374 rules!4290 (t!136020 l1!3136) lt!512076) lt!512201)))

(declare-fun bs!345216 () Bool)

(assert (= bs!345216 d!431926))

(assert (=> bs!345216 m!1717579))

(declare-fun m!1717999 () Bool)

(assert (=> bs!345216 m!1717999))

(assert (=> bs!345216 m!1717573))

(assert (=> b!1473540 d!431926))

(declare-fun d!431946 () Bool)

(declare-fun lt!512204 () Token!5184)

(declare-fun contains!2928 (List!15575 Token!5184) Bool)

(assert (=> d!431946 (contains!2928 (t!136020 l1!3136) lt!512204)))

(declare-fun e!941504 () Token!5184)

(assert (=> d!431946 (= lt!512204 e!941504)))

(declare-fun c!242419 () Bool)

(assert (=> d!431946 (= c!242419 (and ((_ is Cons!15509) (t!136020 l1!3136)) ((_ is Nil!15509) (t!136020 (t!136020 l1!3136)))))))

(assert (=> d!431946 (not (isEmpty!9686 (t!136020 l1!3136)))))

(assert (=> d!431946 (= (last!319 (t!136020 l1!3136)) lt!512204)))

(declare-fun b!1473854 () Bool)

(assert (=> b!1473854 (= e!941504 (h!20910 (t!136020 l1!3136)))))

(declare-fun b!1473855 () Bool)

(assert (=> b!1473855 (= e!941504 (last!319 (t!136020 (t!136020 l1!3136))))))

(assert (= (and d!431946 c!242419) b!1473854))

(assert (= (and d!431946 (not c!242419)) b!1473855))

(declare-fun m!1718001 () Bool)

(assert (=> d!431946 m!1718001))

(assert (=> d!431946 m!1717549))

(declare-fun m!1718003 () Bool)

(assert (=> b!1473855 m!1718003))

(assert (=> b!1473540 d!431946))

(declare-fun d!431948 () Bool)

(assert (=> d!431948 (= (isEmpty!9685 rules!4290) ((_ is Nil!15508) rules!4290))))

(assert (=> b!1473529 d!431948))

(declare-fun b!1473866 () Bool)

(declare-fun e!941512 () Bool)

(declare-fun e!941511 () Bool)

(assert (=> b!1473866 (= e!941512 e!941511)))

(declare-fun c!242425 () Bool)

(assert (=> b!1473866 (= c!242425 ((_ is IntegerValue!8554) (value!88336 (h!20910 l2!3105))))))

(declare-fun b!1473867 () Bool)

(declare-fun e!941513 () Bool)

(declare-fun inv!15 (TokenValue!2851) Bool)

(assert (=> b!1473867 (= e!941513 (inv!15 (value!88336 (h!20910 l2!3105))))))

(declare-fun b!1473868 () Bool)

(declare-fun res!666217 () Bool)

(assert (=> b!1473868 (=> res!666217 e!941513)))

(assert (=> b!1473868 (= res!666217 (not ((_ is IntegerValue!8555) (value!88336 (h!20910 l2!3105)))))))

(assert (=> b!1473868 (= e!941511 e!941513)))

(declare-fun b!1473869 () Bool)

(declare-fun inv!16 (TokenValue!2851) Bool)

(assert (=> b!1473869 (= e!941512 (inv!16 (value!88336 (h!20910 l2!3105))))))

(declare-fun d!431950 () Bool)

(declare-fun c!242424 () Bool)

(assert (=> d!431950 (= c!242424 ((_ is IntegerValue!8553) (value!88336 (h!20910 l2!3105))))))

(assert (=> d!431950 (= (inv!21 (value!88336 (h!20910 l2!3105))) e!941512)))

(declare-fun b!1473870 () Bool)

(declare-fun inv!17 (TokenValue!2851) Bool)

(assert (=> b!1473870 (= e!941511 (inv!17 (value!88336 (h!20910 l2!3105))))))

(assert (= (and d!431950 c!242424) b!1473869))

(assert (= (and d!431950 (not c!242424)) b!1473866))

(assert (= (and b!1473866 c!242425) b!1473870))

(assert (= (and b!1473866 (not c!242425)) b!1473868))

(assert (= (and b!1473868 (not res!666217)) b!1473867))

(declare-fun m!1718005 () Bool)

(assert (=> b!1473867 m!1718005))

(declare-fun m!1718007 () Bool)

(assert (=> b!1473869 m!1718007))

(declare-fun m!1718009 () Bool)

(assert (=> b!1473870 m!1718009))

(assert (=> b!1473542 d!431950))

(declare-fun bs!345217 () Bool)

(declare-fun d!431952 () Bool)

(assert (= bs!345217 (and d!431952 d!431830)))

(declare-fun lambda!63562 () Int)

(assert (=> bs!345217 (= lambda!63562 lambda!63542)))

(declare-fun bs!345218 () Bool)

(assert (= bs!345218 (and d!431952 d!431852)))

(assert (=> bs!345218 (= lambda!63562 lambda!63546)))

(declare-fun bs!345219 () Bool)

(assert (= bs!345219 (and d!431952 d!431856)))

(assert (=> bs!345219 (= lambda!63562 lambda!63547)))

(declare-fun bs!345220 () Bool)

(assert (= bs!345220 (and d!431952 d!431904)))

(assert (=> bs!345220 (= lambda!63562 lambda!63553)))

(declare-fun b!1473875 () Bool)

(declare-fun e!941518 () Bool)

(assert (=> b!1473875 (= e!941518 true)))

(declare-fun b!1473874 () Bool)

(declare-fun e!941517 () Bool)

(assert (=> b!1473874 (= e!941517 e!941518)))

(declare-fun b!1473873 () Bool)

(declare-fun e!941516 () Bool)

(assert (=> b!1473873 (= e!941516 e!941517)))

(assert (=> d!431952 e!941516))

(assert (= b!1473874 b!1473875))

(assert (= b!1473873 b!1473874))

(assert (= (and d!431952 ((_ is Cons!15508) rules!4290)) b!1473873))

(assert (=> b!1473875 (< (dynLambda!7035 order!9307 (toValue!4088 (transformation!2761 (h!20909 rules!4290)))) (dynLambda!7036 order!9309 lambda!63562))))

(assert (=> b!1473875 (< (dynLambda!7037 order!9311 (toChars!3947 (transformation!2761 (h!20909 rules!4290)))) (dynLambda!7036 order!9309 lambda!63562))))

(assert (=> d!431952 true))

(declare-fun lt!512205 () Bool)

(assert (=> d!431952 (= lt!512205 (forall!3777 l1!3136 lambda!63562))))

(declare-fun e!941514 () Bool)

(assert (=> d!431952 (= lt!512205 e!941514)))

(declare-fun res!666219 () Bool)

(assert (=> d!431952 (=> res!666219 e!941514)))

(assert (=> d!431952 (= res!666219 (not ((_ is Cons!15509) l1!3136)))))

(assert (=> d!431952 (not (isEmpty!9685 rules!4290))))

(assert (=> d!431952 (= (rulesProduceEachTokenIndividuallyList!784 thiss!27374 rules!4290 l1!3136) lt!512205)))

(declare-fun b!1473871 () Bool)

(declare-fun e!941515 () Bool)

(assert (=> b!1473871 (= e!941514 e!941515)))

(declare-fun res!666218 () Bool)

(assert (=> b!1473871 (=> (not res!666218) (not e!941515))))

(assert (=> b!1473871 (= res!666218 (rulesProduceIndividualToken!1276 thiss!27374 rules!4290 (h!20910 l1!3136)))))

(declare-fun b!1473872 () Bool)

(assert (=> b!1473872 (= e!941515 (rulesProduceEachTokenIndividuallyList!784 thiss!27374 rules!4290 (t!136020 l1!3136)))))

(assert (= (and d!431952 (not res!666219)) b!1473871))

(assert (= (and b!1473871 res!666218) b!1473872))

(declare-fun m!1718011 () Bool)

(assert (=> d!431952 m!1718011))

(assert (=> d!431952 m!1717573))

(declare-fun m!1718013 () Bool)

(assert (=> b!1473871 m!1718013))

(assert (=> b!1473872 m!1717575))

(assert (=> b!1473531 d!431952))

(declare-fun d!431954 () Bool)

(declare-fun res!666224 () Bool)

(declare-fun e!941523 () Bool)

(assert (=> d!431954 (=> res!666224 e!941523)))

(assert (=> d!431954 (= res!666224 (or (not ((_ is Cons!15509) l2!3105)) (not ((_ is Cons!15509) (t!136020 l2!3105)))))))

(assert (=> d!431954 (= (tokensListTwoByTwoPredicateSeparableList!277 thiss!27374 l2!3105 rules!4290) e!941523)))

(declare-fun b!1473880 () Bool)

(declare-fun e!941524 () Bool)

(assert (=> b!1473880 (= e!941523 e!941524)))

(declare-fun res!666225 () Bool)

(assert (=> b!1473880 (=> (not res!666225) (not e!941524))))

(assert (=> b!1473880 (= res!666225 (separableTokensPredicate!560 thiss!27374 (h!20910 l2!3105) (h!20910 (t!136020 l2!3105)) rules!4290))))

(declare-fun lt!512224 () Unit!25209)

(declare-fun Unit!25223 () Unit!25209)

(assert (=> b!1473880 (= lt!512224 Unit!25223)))

(declare-fun size!12581 (BalanceConc!10514) Int)

(assert (=> b!1473880 (> (size!12581 (charsOf!1582 (h!20910 (t!136020 l2!3105)))) 0)))

(declare-fun lt!512220 () Unit!25209)

(declare-fun Unit!25224 () Unit!25209)

(assert (=> b!1473880 (= lt!512220 Unit!25224)))

(assert (=> b!1473880 (rulesProduceIndividualToken!1276 thiss!27374 rules!4290 (h!20910 (t!136020 l2!3105)))))

(declare-fun lt!512225 () Unit!25209)

(declare-fun Unit!25225 () Unit!25209)

(assert (=> b!1473880 (= lt!512225 Unit!25225)))

(assert (=> b!1473880 (rulesProduceIndividualToken!1276 thiss!27374 rules!4290 (h!20910 l2!3105))))

(declare-fun lt!512223 () Unit!25209)

(declare-fun lt!512221 () Unit!25209)

(assert (=> b!1473880 (= lt!512223 lt!512221)))

(assert (=> b!1473880 (rulesProduceIndividualToken!1276 thiss!27374 rules!4290 (h!20910 (t!136020 l2!3105)))))

(assert (=> b!1473880 (= lt!512221 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!457 thiss!27374 rules!4290 l2!3105 (h!20910 (t!136020 l2!3105))))))

(declare-fun lt!512222 () Unit!25209)

(declare-fun lt!512226 () Unit!25209)

(assert (=> b!1473880 (= lt!512222 lt!512226)))

(assert (=> b!1473880 (rulesProduceIndividualToken!1276 thiss!27374 rules!4290 (h!20910 l2!3105))))

(assert (=> b!1473880 (= lt!512226 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!457 thiss!27374 rules!4290 l2!3105 (h!20910 l2!3105)))))

(declare-fun b!1473881 () Bool)

(assert (=> b!1473881 (= e!941524 (tokensListTwoByTwoPredicateSeparableList!277 thiss!27374 (Cons!15509 (h!20910 (t!136020 l2!3105)) (t!136020 (t!136020 l2!3105))) rules!4290))))

(assert (= (and d!431954 (not res!666224)) b!1473880))

(assert (= (and b!1473880 res!666225) b!1473881))

(declare-fun m!1718015 () Bool)

(assert (=> b!1473880 m!1718015))

(declare-fun m!1718017 () Bool)

(assert (=> b!1473880 m!1718017))

(declare-fun m!1718019 () Bool)

(assert (=> b!1473880 m!1718019))

(declare-fun m!1718021 () Bool)

(assert (=> b!1473880 m!1718021))

(assert (=> b!1473880 m!1718015))

(declare-fun m!1718023 () Bool)

(assert (=> b!1473880 m!1718023))

(assert (=> b!1473880 m!1717641))

(declare-fun m!1718025 () Bool)

(assert (=> b!1473880 m!1718025))

(declare-fun m!1718027 () Bool)

(assert (=> b!1473881 m!1718027))

(assert (=> b!1473552 d!431954))

(declare-fun d!431956 () Bool)

(assert (=> d!431956 (= (isEmpty!9686 l2!3105) ((_ is Nil!15509) l2!3105))))

(assert (=> b!1473541 d!431956))

(declare-fun bs!345221 () Bool)

(declare-fun d!431958 () Bool)

(assert (= bs!345221 (and d!431958 d!431952)))

(declare-fun lambda!63563 () Int)

(assert (=> bs!345221 (= lambda!63563 lambda!63562)))

(declare-fun bs!345222 () Bool)

(assert (= bs!345222 (and d!431958 d!431830)))

(assert (=> bs!345222 (= lambda!63563 lambda!63542)))

(declare-fun bs!345223 () Bool)

(assert (= bs!345223 (and d!431958 d!431904)))

(assert (=> bs!345223 (= lambda!63563 lambda!63553)))

(declare-fun bs!345224 () Bool)

(assert (= bs!345224 (and d!431958 d!431852)))

(assert (=> bs!345224 (= lambda!63563 lambda!63546)))

(declare-fun bs!345225 () Bool)

(assert (= bs!345225 (and d!431958 d!431856)))

(assert (=> bs!345225 (= lambda!63563 lambda!63547)))

(declare-fun b!1473886 () Bool)

(declare-fun e!941529 () Bool)

(assert (=> b!1473886 (= e!941529 true)))

(declare-fun b!1473885 () Bool)

(declare-fun e!941528 () Bool)

(assert (=> b!1473885 (= e!941528 e!941529)))

(declare-fun b!1473884 () Bool)

(declare-fun e!941527 () Bool)

(assert (=> b!1473884 (= e!941527 e!941528)))

(assert (=> d!431958 e!941527))

(assert (= b!1473885 b!1473886))

(assert (= b!1473884 b!1473885))

(assert (= (and d!431958 ((_ is Cons!15508) rules!4290)) b!1473884))

(assert (=> b!1473886 (< (dynLambda!7035 order!9307 (toValue!4088 (transformation!2761 (h!20909 rules!4290)))) (dynLambda!7036 order!9309 lambda!63563))))

(assert (=> b!1473886 (< (dynLambda!7037 order!9311 (toChars!3947 (transformation!2761 (h!20909 rules!4290)))) (dynLambda!7036 order!9309 lambda!63563))))

(assert (=> d!431958 true))

(declare-fun lt!512227 () Bool)

(assert (=> d!431958 (= lt!512227 (forall!3777 (t!136020 l1!3136) lambda!63563))))

(declare-fun e!941525 () Bool)

(assert (=> d!431958 (= lt!512227 e!941525)))

(declare-fun res!666227 () Bool)

(assert (=> d!431958 (=> res!666227 e!941525)))

(assert (=> d!431958 (= res!666227 (not ((_ is Cons!15509) (t!136020 l1!3136))))))

(assert (=> d!431958 (not (isEmpty!9685 rules!4290))))

(assert (=> d!431958 (= (rulesProduceEachTokenIndividuallyList!784 thiss!27374 rules!4290 (t!136020 l1!3136)) lt!512227)))

(declare-fun b!1473882 () Bool)

(declare-fun e!941526 () Bool)

(assert (=> b!1473882 (= e!941525 e!941526)))

(declare-fun res!666226 () Bool)

(assert (=> b!1473882 (=> (not res!666226) (not e!941526))))

(assert (=> b!1473882 (= res!666226 (rulesProduceIndividualToken!1276 thiss!27374 rules!4290 (h!20910 (t!136020 l1!3136))))))

(declare-fun b!1473883 () Bool)

(assert (=> b!1473883 (= e!941526 (rulesProduceEachTokenIndividuallyList!784 thiss!27374 rules!4290 (t!136020 (t!136020 l1!3136))))))

(assert (= (and d!431958 (not res!666227)) b!1473882))

(assert (= (and b!1473882 res!666226) b!1473883))

(declare-fun m!1718029 () Bool)

(assert (=> d!431958 m!1718029))

(assert (=> d!431958 m!1717573))

(declare-fun m!1718031 () Bool)

(assert (=> b!1473882 m!1718031))

(declare-fun m!1718033 () Bool)

(assert (=> b!1473883 m!1718033))

(assert (=> b!1473543 d!431958))

(declare-fun d!431960 () Bool)

(assert (=> d!431960 (= (separableTokensPredicate!560 thiss!27374 lt!512069 lt!512074 rules!4290) (not (prefixMatchZipperSequence!364 (rulesRegex!418 thiss!27374 rules!4290) (++!4189 (charsOf!1582 lt!512069) (singletonSeq!1300 (apply!3999 (charsOf!1582 lt!512074) 0))))))))

(declare-fun bs!345226 () Bool)

(assert (= bs!345226 d!431960))

(assert (=> bs!345226 m!1717845))

(assert (=> bs!345226 m!1717847))

(assert (=> bs!345226 m!1717845))

(assert (=> bs!345226 m!1717849))

(declare-fun m!1718035 () Bool)

(assert (=> bs!345226 m!1718035))

(assert (=> bs!345226 m!1717853))

(declare-fun m!1718037 () Bool)

(assert (=> bs!345226 m!1718037))

(assert (=> bs!345226 m!1718035))

(assert (=> bs!345226 m!1717847))

(assert (=> bs!345226 m!1717853))

(assert (=> bs!345226 m!1717849))

(assert (=> bs!345226 m!1718037))

(declare-fun m!1718039 () Bool)

(assert (=> bs!345226 m!1718039))

(assert (=> b!1473532 d!431960))

(declare-fun d!431962 () Bool)

(assert (=> d!431962 (rulesProduceIndividualToken!1276 thiss!27374 rules!4290 lt!512069)))

(declare-fun lt!512228 () Unit!25209)

(assert (=> d!431962 (= lt!512228 (choose!9039 thiss!27374 rules!4290 l1!3136 lt!512069))))

(assert (=> d!431962 (not (isEmpty!9685 rules!4290))))

(assert (=> d!431962 (= (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!457 thiss!27374 rules!4290 l1!3136 lt!512069) lt!512228)))

(declare-fun bs!345227 () Bool)

(assert (= bs!345227 d!431962))

(assert (=> bs!345227 m!1717531))

(declare-fun m!1718041 () Bool)

(assert (=> bs!345227 m!1718041))

(assert (=> bs!345227 m!1717573))

(assert (=> b!1473532 d!431962))

(declare-fun d!431964 () Bool)

(declare-fun lt!512229 () Bool)

(declare-fun e!941530 () Bool)

(assert (=> d!431964 (= lt!512229 e!941530)))

(declare-fun res!666228 () Bool)

(assert (=> d!431964 (=> (not res!666228) (not e!941530))))

(assert (=> d!431964 (= res!666228 (= (list!6180 (_1!8032 (lex!1089 thiss!27374 rules!4290 (print!1124 thiss!27374 (singletonSeq!1301 lt!512074))))) (list!6180 (singletonSeq!1301 lt!512074))))))

(declare-fun e!941531 () Bool)

(assert (=> d!431964 (= lt!512229 e!941531)))

(declare-fun res!666230 () Bool)

(assert (=> d!431964 (=> (not res!666230) (not e!941531))))

(declare-fun lt!512230 () tuple2!14292)

(assert (=> d!431964 (= res!666230 (= (size!12580 (_1!8032 lt!512230)) 1))))

(assert (=> d!431964 (= lt!512230 (lex!1089 thiss!27374 rules!4290 (print!1124 thiss!27374 (singletonSeq!1301 lt!512074))))))

(assert (=> d!431964 (not (isEmpty!9685 rules!4290))))

(assert (=> d!431964 (= (rulesProduceIndividualToken!1276 thiss!27374 rules!4290 lt!512074) lt!512229)))

(declare-fun b!1473887 () Bool)

(declare-fun res!666229 () Bool)

(assert (=> b!1473887 (=> (not res!666229) (not e!941531))))

(assert (=> b!1473887 (= res!666229 (= (apply!4000 (_1!8032 lt!512230) 0) lt!512074))))

(declare-fun b!1473888 () Bool)

(assert (=> b!1473888 (= e!941531 (isEmpty!9690 (_2!8032 lt!512230)))))

(declare-fun b!1473889 () Bool)

(assert (=> b!1473889 (= e!941530 (isEmpty!9690 (_2!8032 (lex!1089 thiss!27374 rules!4290 (print!1124 thiss!27374 (singletonSeq!1301 lt!512074))))))))

(assert (= (and d!431964 res!666230) b!1473887))

(assert (= (and b!1473887 res!666229) b!1473888))

(assert (= (and d!431964 res!666228) b!1473889))

(declare-fun m!1718043 () Bool)

(assert (=> d!431964 m!1718043))

(declare-fun m!1718045 () Bool)

(assert (=> d!431964 m!1718045))

(declare-fun m!1718047 () Bool)

(assert (=> d!431964 m!1718047))

(declare-fun m!1718049 () Bool)

(assert (=> d!431964 m!1718049))

(declare-fun m!1718051 () Bool)

(assert (=> d!431964 m!1718051))

(assert (=> d!431964 m!1718043))

(declare-fun m!1718053 () Bool)

(assert (=> d!431964 m!1718053))

(assert (=> d!431964 m!1718043))

(assert (=> d!431964 m!1718049))

(assert (=> d!431964 m!1717573))

(declare-fun m!1718055 () Bool)

(assert (=> b!1473887 m!1718055))

(declare-fun m!1718057 () Bool)

(assert (=> b!1473888 m!1718057))

(assert (=> b!1473889 m!1718043))

(assert (=> b!1473889 m!1718043))

(assert (=> b!1473889 m!1718049))

(assert (=> b!1473889 m!1718049))

(assert (=> b!1473889 m!1718051))

(declare-fun m!1718059 () Bool)

(assert (=> b!1473889 m!1718059))

(assert (=> b!1473532 d!431964))

(declare-fun d!431966 () Bool)

(assert (=> d!431966 (= (head!3055 l2!3105) (h!20910 l2!3105))))

(assert (=> b!1473532 d!431966))

(declare-fun d!431968 () Bool)

(declare-fun lt!512231 () Token!5184)

(assert (=> d!431968 (contains!2928 l1!3136 lt!512231)))

(declare-fun e!941532 () Token!5184)

(assert (=> d!431968 (= lt!512231 e!941532)))

(declare-fun c!242426 () Bool)

(assert (=> d!431968 (= c!242426 (and ((_ is Cons!15509) l1!3136) ((_ is Nil!15509) (t!136020 l1!3136))))))

(assert (=> d!431968 (not (isEmpty!9686 l1!3136))))

(assert (=> d!431968 (= (last!319 l1!3136) lt!512231)))

(declare-fun b!1473890 () Bool)

(assert (=> b!1473890 (= e!941532 (h!20910 l1!3136))))

(declare-fun b!1473891 () Bool)

(assert (=> b!1473891 (= e!941532 (last!319 (t!136020 l1!3136)))))

(assert (= (and d!431968 c!242426) b!1473890))

(assert (= (and d!431968 (not c!242426)) b!1473891))

(declare-fun m!1718061 () Bool)

(assert (=> d!431968 m!1718061))

(assert (=> d!431968 m!1717591))

(assert (=> b!1473891 m!1717583))

(assert (=> b!1473532 d!431968))

(declare-fun d!431970 () Bool)

(assert (=> d!431970 (rulesProduceIndividualToken!1276 thiss!27374 rules!4290 lt!512074)))

(declare-fun lt!512232 () Unit!25209)

(assert (=> d!431970 (= lt!512232 (choose!9039 thiss!27374 rules!4290 l2!3105 lt!512074))))

(assert (=> d!431970 (not (isEmpty!9685 rules!4290))))

(assert (=> d!431970 (= (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!457 thiss!27374 rules!4290 l2!3105 lt!512074) lt!512232)))

(declare-fun bs!345228 () Bool)

(assert (= bs!345228 d!431970))

(assert (=> bs!345228 m!1717537))

(declare-fun m!1718063 () Bool)

(assert (=> bs!345228 m!1718063))

(assert (=> bs!345228 m!1717573))

(assert (=> b!1473532 d!431970))

(declare-fun d!431972 () Bool)

(declare-fun lt!512233 () Bool)

(declare-fun e!941533 () Bool)

(assert (=> d!431972 (= lt!512233 e!941533)))

(declare-fun res!666231 () Bool)

(assert (=> d!431972 (=> (not res!666231) (not e!941533))))

(assert (=> d!431972 (= res!666231 (= (list!6180 (_1!8032 (lex!1089 thiss!27374 rules!4290 (print!1124 thiss!27374 (singletonSeq!1301 lt!512069))))) (list!6180 (singletonSeq!1301 lt!512069))))))

(declare-fun e!941534 () Bool)

(assert (=> d!431972 (= lt!512233 e!941534)))

(declare-fun res!666233 () Bool)

(assert (=> d!431972 (=> (not res!666233) (not e!941534))))

(declare-fun lt!512234 () tuple2!14292)

(assert (=> d!431972 (= res!666233 (= (size!12580 (_1!8032 lt!512234)) 1))))

(assert (=> d!431972 (= lt!512234 (lex!1089 thiss!27374 rules!4290 (print!1124 thiss!27374 (singletonSeq!1301 lt!512069))))))

(assert (=> d!431972 (not (isEmpty!9685 rules!4290))))

(assert (=> d!431972 (= (rulesProduceIndividualToken!1276 thiss!27374 rules!4290 lt!512069) lt!512233)))

(declare-fun b!1473892 () Bool)

(declare-fun res!666232 () Bool)

(assert (=> b!1473892 (=> (not res!666232) (not e!941534))))

(assert (=> b!1473892 (= res!666232 (= (apply!4000 (_1!8032 lt!512234) 0) lt!512069))))

(declare-fun b!1473893 () Bool)

(assert (=> b!1473893 (= e!941534 (isEmpty!9690 (_2!8032 lt!512234)))))

(declare-fun b!1473894 () Bool)

(assert (=> b!1473894 (= e!941533 (isEmpty!9690 (_2!8032 (lex!1089 thiss!27374 rules!4290 (print!1124 thiss!27374 (singletonSeq!1301 lt!512069))))))))

(assert (= (and d!431972 res!666233) b!1473892))

(assert (= (and b!1473892 res!666232) b!1473893))

(assert (= (and d!431972 res!666231) b!1473894))

(declare-fun m!1718065 () Bool)

(assert (=> d!431972 m!1718065))

(declare-fun m!1718067 () Bool)

(assert (=> d!431972 m!1718067))

(declare-fun m!1718069 () Bool)

(assert (=> d!431972 m!1718069))

(declare-fun m!1718071 () Bool)

(assert (=> d!431972 m!1718071))

(declare-fun m!1718073 () Bool)

(assert (=> d!431972 m!1718073))

(assert (=> d!431972 m!1718065))

(declare-fun m!1718075 () Bool)

(assert (=> d!431972 m!1718075))

(assert (=> d!431972 m!1718065))

(assert (=> d!431972 m!1718071))

(assert (=> d!431972 m!1717573))

(declare-fun m!1718077 () Bool)

(assert (=> b!1473892 m!1718077))

(declare-fun m!1718079 () Bool)

(assert (=> b!1473893 m!1718079))

(assert (=> b!1473894 m!1718065))

(assert (=> b!1473894 m!1718065))

(assert (=> b!1473894 m!1718071))

(assert (=> b!1473894 m!1718071))

(assert (=> b!1473894 m!1718073))

(declare-fun m!1718081 () Bool)

(assert (=> b!1473894 m!1718081))

(assert (=> b!1473532 d!431972))

(declare-fun d!431974 () Bool)

(assert (=> d!431974 (= (inv!20711 (tag!3025 (rule!4538 (h!20910 l1!3136)))) (= (mod (str.len (value!88310 (tag!3025 (rule!4538 (h!20910 l1!3136))))) 2) 0))))

(assert (=> b!1473553 d!431974))

(declare-fun d!431976 () Bool)

(declare-fun res!666234 () Bool)

(declare-fun e!941535 () Bool)

(assert (=> d!431976 (=> (not res!666234) (not e!941535))))

(assert (=> d!431976 (= res!666234 (semiInverseModEq!1033 (toChars!3947 (transformation!2761 (rule!4538 (h!20910 l1!3136)))) (toValue!4088 (transformation!2761 (rule!4538 (h!20910 l1!3136))))))))

(assert (=> d!431976 (= (inv!20715 (transformation!2761 (rule!4538 (h!20910 l1!3136)))) e!941535)))

(declare-fun b!1473895 () Bool)

(assert (=> b!1473895 (= e!941535 (equivClasses!992 (toChars!3947 (transformation!2761 (rule!4538 (h!20910 l1!3136)))) (toValue!4088 (transformation!2761 (rule!4538 (h!20910 l1!3136))))))))

(assert (= (and d!431976 res!666234) b!1473895))

(declare-fun m!1718083 () Bool)

(assert (=> d!431976 m!1718083))

(declare-fun m!1718085 () Bool)

(assert (=> b!1473895 m!1718085))

(assert (=> b!1473553 d!431976))

(declare-fun d!431978 () Bool)

(declare-fun res!666235 () Bool)

(declare-fun e!941536 () Bool)

(assert (=> d!431978 (=> res!666235 e!941536)))

(assert (=> d!431978 (= res!666235 (or (not ((_ is Cons!15509) lt!512070)) (not ((_ is Cons!15509) (t!136020 lt!512070)))))))

(assert (=> d!431978 (= (tokensListTwoByTwoPredicateSeparableList!277 thiss!27374 lt!512070 rules!4290) e!941536)))

(declare-fun b!1473896 () Bool)

(declare-fun e!941537 () Bool)

(assert (=> b!1473896 (= e!941536 e!941537)))

(declare-fun res!666236 () Bool)

(assert (=> b!1473896 (=> (not res!666236) (not e!941537))))

(assert (=> b!1473896 (= res!666236 (separableTokensPredicate!560 thiss!27374 (h!20910 lt!512070) (h!20910 (t!136020 lt!512070)) rules!4290))))

(declare-fun lt!512239 () Unit!25209)

(declare-fun Unit!25226 () Unit!25209)

(assert (=> b!1473896 (= lt!512239 Unit!25226)))

(assert (=> b!1473896 (> (size!12581 (charsOf!1582 (h!20910 (t!136020 lt!512070)))) 0)))

(declare-fun lt!512235 () Unit!25209)

(declare-fun Unit!25227 () Unit!25209)

(assert (=> b!1473896 (= lt!512235 Unit!25227)))

(assert (=> b!1473896 (rulesProduceIndividualToken!1276 thiss!27374 rules!4290 (h!20910 (t!136020 lt!512070)))))

(declare-fun lt!512240 () Unit!25209)

(declare-fun Unit!25228 () Unit!25209)

(assert (=> b!1473896 (= lt!512240 Unit!25228)))

(assert (=> b!1473896 (rulesProduceIndividualToken!1276 thiss!27374 rules!4290 (h!20910 lt!512070))))

(declare-fun lt!512238 () Unit!25209)

(declare-fun lt!512236 () Unit!25209)

(assert (=> b!1473896 (= lt!512238 lt!512236)))

(assert (=> b!1473896 (rulesProduceIndividualToken!1276 thiss!27374 rules!4290 (h!20910 (t!136020 lt!512070)))))

(assert (=> b!1473896 (= lt!512236 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!457 thiss!27374 rules!4290 lt!512070 (h!20910 (t!136020 lt!512070))))))

(declare-fun lt!512237 () Unit!25209)

(declare-fun lt!512241 () Unit!25209)

(assert (=> b!1473896 (= lt!512237 lt!512241)))

(assert (=> b!1473896 (rulesProduceIndividualToken!1276 thiss!27374 rules!4290 (h!20910 lt!512070))))

(assert (=> b!1473896 (= lt!512241 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!457 thiss!27374 rules!4290 lt!512070 (h!20910 lt!512070)))))

(declare-fun b!1473897 () Bool)

(assert (=> b!1473897 (= e!941537 (tokensListTwoByTwoPredicateSeparableList!277 thiss!27374 (Cons!15509 (h!20910 (t!136020 lt!512070)) (t!136020 (t!136020 lt!512070))) rules!4290))))

(assert (= (and d!431978 (not res!666235)) b!1473896))

(assert (= (and b!1473896 res!666236) b!1473897))

(declare-fun m!1718087 () Bool)

(assert (=> b!1473896 m!1718087))

(declare-fun m!1718089 () Bool)

(assert (=> b!1473896 m!1718089))

(declare-fun m!1718091 () Bool)

(assert (=> b!1473896 m!1718091))

(declare-fun m!1718093 () Bool)

(assert (=> b!1473896 m!1718093))

(assert (=> b!1473896 m!1718087))

(declare-fun m!1718095 () Bool)

(assert (=> b!1473896 m!1718095))

(assert (=> b!1473896 m!1717693))

(declare-fun m!1718097 () Bool)

(assert (=> b!1473896 m!1718097))

(declare-fun m!1718099 () Bool)

(assert (=> b!1473897 m!1718099))

(assert (=> b!1473534 d!431978))

(declare-fun d!431980 () Bool)

(declare-fun res!666237 () Bool)

(declare-fun e!941538 () Bool)

(assert (=> d!431980 (=> res!666237 e!941538)))

(assert (=> d!431980 (= res!666237 (or (not ((_ is Cons!15509) l1!3136)) (not ((_ is Cons!15509) (t!136020 l1!3136)))))))

(assert (=> d!431980 (= (tokensListTwoByTwoPredicateSeparableList!277 thiss!27374 l1!3136 rules!4290) e!941538)))

(declare-fun b!1473898 () Bool)

(declare-fun e!941539 () Bool)

(assert (=> b!1473898 (= e!941538 e!941539)))

(declare-fun res!666238 () Bool)

(assert (=> b!1473898 (=> (not res!666238) (not e!941539))))

(assert (=> b!1473898 (= res!666238 (separableTokensPredicate!560 thiss!27374 (h!20910 l1!3136) (h!20910 (t!136020 l1!3136)) rules!4290))))

(declare-fun lt!512246 () Unit!25209)

(declare-fun Unit!25229 () Unit!25209)

(assert (=> b!1473898 (= lt!512246 Unit!25229)))

(assert (=> b!1473898 (> (size!12581 (charsOf!1582 (h!20910 (t!136020 l1!3136)))) 0)))

(declare-fun lt!512242 () Unit!25209)

(declare-fun Unit!25230 () Unit!25209)

(assert (=> b!1473898 (= lt!512242 Unit!25230)))

(assert (=> b!1473898 (rulesProduceIndividualToken!1276 thiss!27374 rules!4290 (h!20910 (t!136020 l1!3136)))))

(declare-fun lt!512247 () Unit!25209)

(declare-fun Unit!25231 () Unit!25209)

(assert (=> b!1473898 (= lt!512247 Unit!25231)))

(assert (=> b!1473898 (rulesProduceIndividualToken!1276 thiss!27374 rules!4290 (h!20910 l1!3136))))

(declare-fun lt!512245 () Unit!25209)

(declare-fun lt!512243 () Unit!25209)

(assert (=> b!1473898 (= lt!512245 lt!512243)))

(assert (=> b!1473898 (rulesProduceIndividualToken!1276 thiss!27374 rules!4290 (h!20910 (t!136020 l1!3136)))))

(assert (=> b!1473898 (= lt!512243 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!457 thiss!27374 rules!4290 l1!3136 (h!20910 (t!136020 l1!3136))))))

(declare-fun lt!512244 () Unit!25209)

(declare-fun lt!512248 () Unit!25209)

(assert (=> b!1473898 (= lt!512244 lt!512248)))

(assert (=> b!1473898 (rulesProduceIndividualToken!1276 thiss!27374 rules!4290 (h!20910 l1!3136))))

(assert (=> b!1473898 (= lt!512248 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!457 thiss!27374 rules!4290 l1!3136 (h!20910 l1!3136)))))

(declare-fun b!1473899 () Bool)

(assert (=> b!1473899 (= e!941539 (tokensListTwoByTwoPredicateSeparableList!277 thiss!27374 (Cons!15509 (h!20910 (t!136020 l1!3136)) (t!136020 (t!136020 l1!3136))) rules!4290))))

(assert (= (and d!431980 (not res!666237)) b!1473898))

(assert (= (and b!1473898 res!666238) b!1473899))

(declare-fun m!1718101 () Bool)

(assert (=> b!1473898 m!1718101))

(declare-fun m!1718103 () Bool)

(assert (=> b!1473898 m!1718103))

(declare-fun m!1718105 () Bool)

(assert (=> b!1473898 m!1718105))

(assert (=> b!1473898 m!1718031))

(assert (=> b!1473898 m!1718101))

(declare-fun m!1718107 () Bool)

(assert (=> b!1473898 m!1718107))

(assert (=> b!1473898 m!1718013))

(declare-fun m!1718109 () Bool)

(assert (=> b!1473898 m!1718109))

(declare-fun m!1718111 () Bool)

(assert (=> b!1473899 m!1718111))

(assert (=> b!1473544 d!431980))

(declare-fun d!431982 () Bool)

(declare-fun res!666241 () Bool)

(declare-fun e!941542 () Bool)

(assert (=> d!431982 (=> (not res!666241) (not e!941542))))

(declare-fun rulesValid!1006 (LexerInterface!2417 List!15574) Bool)

(assert (=> d!431982 (= res!666241 (rulesValid!1006 thiss!27374 rules!4290))))

(assert (=> d!431982 (= (rulesInvariant!2206 thiss!27374 rules!4290) e!941542)))

(declare-fun b!1473902 () Bool)

(declare-datatypes ((List!15577 0))(
  ( (Nil!15511) (Cons!15511 (h!20912 String!18510) (t!136086 List!15577)) )
))
(declare-fun noDuplicateTag!1006 (LexerInterface!2417 List!15574 List!15577) Bool)

(assert (=> b!1473902 (= e!941542 (noDuplicateTag!1006 thiss!27374 rules!4290 Nil!15511))))

(assert (= (and d!431982 res!666241) b!1473902))

(declare-fun m!1718113 () Bool)

(assert (=> d!431982 m!1718113))

(declare-fun m!1718115 () Bool)

(assert (=> b!1473902 m!1718115))

(assert (=> b!1473533 d!431982))

(declare-fun d!431984 () Bool)

(declare-fun res!666242 () Bool)

(declare-fun e!941543 () Bool)

(assert (=> d!431984 (=> res!666242 e!941543)))

(assert (=> d!431984 (= res!666242 (or (not ((_ is Cons!15509) (t!136020 l1!3136))) (not ((_ is Cons!15509) (t!136020 (t!136020 l1!3136))))))))

(assert (=> d!431984 (= (tokensListTwoByTwoPredicateSeparableList!277 thiss!27374 (t!136020 l1!3136) rules!4290) e!941543)))

(declare-fun b!1473903 () Bool)

(declare-fun e!941544 () Bool)

(assert (=> b!1473903 (= e!941543 e!941544)))

(declare-fun res!666243 () Bool)

(assert (=> b!1473903 (=> (not res!666243) (not e!941544))))

(assert (=> b!1473903 (= res!666243 (separableTokensPredicate!560 thiss!27374 (h!20910 (t!136020 l1!3136)) (h!20910 (t!136020 (t!136020 l1!3136))) rules!4290))))

(declare-fun lt!512253 () Unit!25209)

(declare-fun Unit!25232 () Unit!25209)

(assert (=> b!1473903 (= lt!512253 Unit!25232)))

(assert (=> b!1473903 (> (size!12581 (charsOf!1582 (h!20910 (t!136020 (t!136020 l1!3136))))) 0)))

(declare-fun lt!512249 () Unit!25209)

(declare-fun Unit!25233 () Unit!25209)

(assert (=> b!1473903 (= lt!512249 Unit!25233)))

(assert (=> b!1473903 (rulesProduceIndividualToken!1276 thiss!27374 rules!4290 (h!20910 (t!136020 (t!136020 l1!3136))))))

(declare-fun lt!512254 () Unit!25209)

(declare-fun Unit!25234 () Unit!25209)

(assert (=> b!1473903 (= lt!512254 Unit!25234)))

(assert (=> b!1473903 (rulesProduceIndividualToken!1276 thiss!27374 rules!4290 (h!20910 (t!136020 l1!3136)))))

(declare-fun lt!512252 () Unit!25209)

(declare-fun lt!512250 () Unit!25209)

(assert (=> b!1473903 (= lt!512252 lt!512250)))

(assert (=> b!1473903 (rulesProduceIndividualToken!1276 thiss!27374 rules!4290 (h!20910 (t!136020 (t!136020 l1!3136))))))

(assert (=> b!1473903 (= lt!512250 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!457 thiss!27374 rules!4290 (t!136020 l1!3136) (h!20910 (t!136020 (t!136020 l1!3136)))))))

(declare-fun lt!512251 () Unit!25209)

(declare-fun lt!512255 () Unit!25209)

(assert (=> b!1473903 (= lt!512251 lt!512255)))

(assert (=> b!1473903 (rulesProduceIndividualToken!1276 thiss!27374 rules!4290 (h!20910 (t!136020 l1!3136)))))

(assert (=> b!1473903 (= lt!512255 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!457 thiss!27374 rules!4290 (t!136020 l1!3136) (h!20910 (t!136020 l1!3136))))))

(declare-fun b!1473904 () Bool)

(assert (=> b!1473904 (= e!941544 (tokensListTwoByTwoPredicateSeparableList!277 thiss!27374 (Cons!15509 (h!20910 (t!136020 (t!136020 l1!3136))) (t!136020 (t!136020 (t!136020 l1!3136)))) rules!4290))))

(assert (= (and d!431984 (not res!666242)) b!1473903))

(assert (= (and b!1473903 res!666243) b!1473904))

(declare-fun m!1718117 () Bool)

(assert (=> b!1473903 m!1718117))

(declare-fun m!1718119 () Bool)

(assert (=> b!1473903 m!1718119))

(declare-fun m!1718121 () Bool)

(assert (=> b!1473903 m!1718121))

(declare-fun m!1718123 () Bool)

(assert (=> b!1473903 m!1718123))

(assert (=> b!1473903 m!1718117))

(declare-fun m!1718125 () Bool)

(assert (=> b!1473903 m!1718125))

(assert (=> b!1473903 m!1718031))

(declare-fun m!1718127 () Bool)

(assert (=> b!1473903 m!1718127))

(declare-fun m!1718129 () Bool)

(assert (=> b!1473904 m!1718129))

(assert (=> b!1473545 d!431984))

(declare-fun d!431986 () Bool)

(assert (=> d!431986 (= (isEmpty!9686 (t!136020 l1!3136)) ((_ is Nil!15509) (t!136020 l1!3136)))))

(assert (=> b!1473547 d!431986))

(declare-fun d!431988 () Bool)

(declare-fun res!666244 () Bool)

(declare-fun e!941545 () Bool)

(assert (=> d!431988 (=> (not res!666244) (not e!941545))))

(assert (=> d!431988 (= res!666244 (not (isEmpty!9689 (originalCharacters!3623 (h!20910 l1!3136)))))))

(assert (=> d!431988 (= (inv!20714 (h!20910 l1!3136)) e!941545)))

(declare-fun b!1473905 () Bool)

(declare-fun res!666245 () Bool)

(assert (=> b!1473905 (=> (not res!666245) (not e!941545))))

(assert (=> b!1473905 (= res!666245 (= (originalCharacters!3623 (h!20910 l1!3136)) (list!6181 (dynLambda!7038 (toChars!3947 (transformation!2761 (rule!4538 (h!20910 l1!3136)))) (value!88336 (h!20910 l1!3136))))))))

(declare-fun b!1473906 () Bool)

(assert (=> b!1473906 (= e!941545 (= (size!12573 (h!20910 l1!3136)) (size!12579 (originalCharacters!3623 (h!20910 l1!3136)))))))

(assert (= (and d!431988 res!666244) b!1473905))

(assert (= (and b!1473905 res!666245) b!1473906))

(declare-fun b_lambda!46013 () Bool)

(assert (=> (not b_lambda!46013) (not b!1473905)))

(declare-fun t!136069 () Bool)

(declare-fun tb!83615 () Bool)

(assert (=> (and b!1473535 (= (toChars!3947 (transformation!2761 (rule!4538 (h!20910 l2!3105)))) (toChars!3947 (transformation!2761 (rule!4538 (h!20910 l1!3136))))) t!136069) tb!83615))

(declare-fun b!1473907 () Bool)

(declare-fun e!941546 () Bool)

(declare-fun tp!416667 () Bool)

(assert (=> b!1473907 (= e!941546 (and (inv!20718 (c!242395 (dynLambda!7038 (toChars!3947 (transformation!2761 (rule!4538 (h!20910 l1!3136)))) (value!88336 (h!20910 l1!3136))))) tp!416667))))

(declare-fun result!100532 () Bool)

(assert (=> tb!83615 (= result!100532 (and (inv!20719 (dynLambda!7038 (toChars!3947 (transformation!2761 (rule!4538 (h!20910 l1!3136)))) (value!88336 (h!20910 l1!3136)))) e!941546))))

(assert (= tb!83615 b!1473907))

(declare-fun m!1718131 () Bool)

(assert (=> b!1473907 m!1718131))

(declare-fun m!1718133 () Bool)

(assert (=> tb!83615 m!1718133))

(assert (=> b!1473905 t!136069))

(declare-fun b_and!101399 () Bool)

(assert (= b_and!101369 (and (=> t!136069 result!100532) b_and!101399)))

(declare-fun tb!83617 () Bool)

(declare-fun t!136071 () Bool)

(assert (=> (and b!1473548 (= (toChars!3947 (transformation!2761 (h!20909 rules!4290))) (toChars!3947 (transformation!2761 (rule!4538 (h!20910 l1!3136))))) t!136071) tb!83617))

(declare-fun result!100534 () Bool)

(assert (= result!100534 result!100532))

(assert (=> b!1473905 t!136071))

(declare-fun b_and!101401 () Bool)

(assert (= b_and!101371 (and (=> t!136071 result!100534) b_and!101401)))

(declare-fun t!136073 () Bool)

(declare-fun tb!83619 () Bool)

(assert (=> (and b!1473555 (= (toChars!3947 (transformation!2761 (rule!4538 (h!20910 l1!3136)))) (toChars!3947 (transformation!2761 (rule!4538 (h!20910 l1!3136))))) t!136073) tb!83619))

(declare-fun result!100536 () Bool)

(assert (= result!100536 result!100532))

(assert (=> b!1473905 t!136073))

(declare-fun b_and!101403 () Bool)

(assert (= b_and!101373 (and (=> t!136073 result!100536) b_and!101403)))

(declare-fun m!1718135 () Bool)

(assert (=> d!431988 m!1718135))

(declare-fun m!1718137 () Bool)

(assert (=> b!1473905 m!1718137))

(assert (=> b!1473905 m!1718137))

(declare-fun m!1718139 () Bool)

(assert (=> b!1473905 m!1718139))

(declare-fun m!1718141 () Bool)

(assert (=> b!1473906 m!1718141))

(assert (=> b!1473536 d!431988))

(declare-fun b!1473908 () Bool)

(declare-fun e!941548 () Bool)

(declare-fun e!941547 () Bool)

(assert (=> b!1473908 (= e!941548 e!941547)))

(declare-fun c!242428 () Bool)

(assert (=> b!1473908 (= c!242428 ((_ is IntegerValue!8554) (value!88336 (h!20910 l1!3136))))))

(declare-fun b!1473909 () Bool)

(declare-fun e!941549 () Bool)

(assert (=> b!1473909 (= e!941549 (inv!15 (value!88336 (h!20910 l1!3136))))))

(declare-fun b!1473910 () Bool)

(declare-fun res!666246 () Bool)

(assert (=> b!1473910 (=> res!666246 e!941549)))

(assert (=> b!1473910 (= res!666246 (not ((_ is IntegerValue!8555) (value!88336 (h!20910 l1!3136)))))))

(assert (=> b!1473910 (= e!941547 e!941549)))

(declare-fun b!1473911 () Bool)

(assert (=> b!1473911 (= e!941548 (inv!16 (value!88336 (h!20910 l1!3136))))))

(declare-fun d!431990 () Bool)

(declare-fun c!242427 () Bool)

(assert (=> d!431990 (= c!242427 ((_ is IntegerValue!8553) (value!88336 (h!20910 l1!3136))))))

(assert (=> d!431990 (= (inv!21 (value!88336 (h!20910 l1!3136))) e!941548)))

(declare-fun b!1473912 () Bool)

(assert (=> b!1473912 (= e!941547 (inv!17 (value!88336 (h!20910 l1!3136))))))

(assert (= (and d!431990 c!242427) b!1473911))

(assert (= (and d!431990 (not c!242427)) b!1473908))

(assert (= (and b!1473908 c!242428) b!1473912))

(assert (= (and b!1473908 (not c!242428)) b!1473910))

(assert (= (and b!1473910 (not res!666246)) b!1473909))

(declare-fun m!1718143 () Bool)

(assert (=> b!1473909 m!1718143))

(declare-fun m!1718145 () Bool)

(assert (=> b!1473911 m!1718145))

(declare-fun m!1718147 () Bool)

(assert (=> b!1473912 m!1718147))

(assert (=> b!1473538 d!431990))

(declare-fun d!431992 () Bool)

(assert (=> d!431992 (= (isEmpty!9686 l1!3136) ((_ is Nil!15509) l1!3136))))

(assert (=> b!1473537 d!431992))

(declare-fun e!941552 () Bool)

(assert (=> b!1473539 (= tp!416592 e!941552)))

(declare-fun b!1473924 () Bool)

(declare-fun tp!416678 () Bool)

(declare-fun tp!416681 () Bool)

(assert (=> b!1473924 (= e!941552 (and tp!416678 tp!416681))))

(declare-fun b!1473925 () Bool)

(declare-fun tp!416682 () Bool)

(assert (=> b!1473925 (= e!941552 tp!416682)))

(declare-fun b!1473926 () Bool)

(declare-fun tp!416680 () Bool)

(declare-fun tp!416679 () Bool)

(assert (=> b!1473926 (= e!941552 (and tp!416680 tp!416679))))

(declare-fun b!1473923 () Bool)

(declare-fun tp_is_empty!6935 () Bool)

(assert (=> b!1473923 (= e!941552 tp_is_empty!6935)))

(assert (= (and b!1473539 ((_ is ElementMatch!4075) (regex!2761 (h!20909 rules!4290)))) b!1473923))

(assert (= (and b!1473539 ((_ is Concat!6926) (regex!2761 (h!20909 rules!4290)))) b!1473924))

(assert (= (and b!1473539 ((_ is Star!4075) (regex!2761 (h!20909 rules!4290)))) b!1473925))

(assert (= (and b!1473539 ((_ is Union!4075) (regex!2761 (h!20909 rules!4290)))) b!1473926))

(declare-fun e!941553 () Bool)

(assert (=> b!1473549 (= tp!416597 e!941553)))

(declare-fun b!1473928 () Bool)

(declare-fun tp!416683 () Bool)

(declare-fun tp!416686 () Bool)

(assert (=> b!1473928 (= e!941553 (and tp!416683 tp!416686))))

(declare-fun b!1473929 () Bool)

(declare-fun tp!416687 () Bool)

(assert (=> b!1473929 (= e!941553 tp!416687)))

(declare-fun b!1473930 () Bool)

(declare-fun tp!416685 () Bool)

(declare-fun tp!416684 () Bool)

(assert (=> b!1473930 (= e!941553 (and tp!416685 tp!416684))))

(declare-fun b!1473927 () Bool)

(assert (=> b!1473927 (= e!941553 tp_is_empty!6935)))

(assert (= (and b!1473549 ((_ is ElementMatch!4075) (regex!2761 (rule!4538 (h!20910 l2!3105))))) b!1473927))

(assert (= (and b!1473549 ((_ is Concat!6926) (regex!2761 (rule!4538 (h!20910 l2!3105))))) b!1473928))

(assert (= (and b!1473549 ((_ is Star!4075) (regex!2761 (rule!4538 (h!20910 l2!3105))))) b!1473929))

(assert (= (and b!1473549 ((_ is Union!4075) (regex!2761 (rule!4538 (h!20910 l2!3105))))) b!1473930))

(declare-fun b!1473944 () Bool)

(declare-fun b_free!37527 () Bool)

(declare-fun b_next!38231 () Bool)

(assert (=> b!1473944 (= b_free!37527 (not b_next!38231))))

(declare-fun tp!416702 () Bool)

(declare-fun b_and!101405 () Bool)

(assert (=> b!1473944 (= tp!416702 b_and!101405)))

(declare-fun b_free!37529 () Bool)

(declare-fun b_next!38233 () Bool)

(assert (=> b!1473944 (= b_free!37529 (not b_next!38233))))

(declare-fun t!136075 () Bool)

(declare-fun tb!83621 () Bool)

(assert (=> (and b!1473944 (= (toChars!3947 (transformation!2761 (rule!4538 (h!20910 (t!136020 l2!3105))))) (toChars!3947 (transformation!2761 (rule!4538 (h!20910 l2!3105))))) t!136075) tb!83621))

(declare-fun result!100542 () Bool)

(assert (= result!100542 result!100490))

(assert (=> b!1473702 t!136075))

(declare-fun t!136077 () Bool)

(declare-fun tb!83623 () Bool)

(assert (=> (and b!1473944 (= (toChars!3947 (transformation!2761 (rule!4538 (h!20910 (t!136020 l2!3105))))) (toChars!3947 (transformation!2761 (rule!4538 (h!20910 l1!3136))))) t!136077) tb!83623))

(declare-fun result!100544 () Bool)

(assert (= result!100544 result!100532))

(assert (=> b!1473905 t!136077))

(declare-fun tp!416700 () Bool)

(declare-fun b_and!101407 () Bool)

(assert (=> b!1473944 (= tp!416700 (and (=> t!136075 result!100542) (=> t!136077 result!100544) b_and!101407))))

(declare-fun tp!416701 () Bool)

(declare-fun b!1473943 () Bool)

(declare-fun e!941569 () Bool)

(declare-fun e!941567 () Bool)

(assert (=> b!1473943 (= e!941569 (and tp!416701 (inv!20711 (tag!3025 (rule!4538 (h!20910 (t!136020 l2!3105))))) (inv!20715 (transformation!2761 (rule!4538 (h!20910 (t!136020 l2!3105))))) e!941567))))

(declare-fun b!1473941 () Bool)

(declare-fun e!941568 () Bool)

(declare-fun tp!416698 () Bool)

(declare-fun e!941566 () Bool)

(assert (=> b!1473941 (= e!941568 (and (inv!20714 (h!20910 (t!136020 l2!3105))) e!941566 tp!416698))))

(assert (=> b!1473551 (= tp!416595 e!941568)))

(assert (=> b!1473944 (= e!941567 (and tp!416702 tp!416700))))

(declare-fun b!1473942 () Bool)

(declare-fun tp!416699 () Bool)

(assert (=> b!1473942 (= e!941566 (and (inv!21 (value!88336 (h!20910 (t!136020 l2!3105)))) e!941569 tp!416699))))

(assert (= b!1473943 b!1473944))

(assert (= b!1473942 b!1473943))

(assert (= b!1473941 b!1473942))

(assert (= (and b!1473551 ((_ is Cons!15509) (t!136020 l2!3105))) b!1473941))

(declare-fun m!1718149 () Bool)

(assert (=> b!1473943 m!1718149))

(declare-fun m!1718151 () Bool)

(assert (=> b!1473943 m!1718151))

(declare-fun m!1718153 () Bool)

(assert (=> b!1473941 m!1718153))

(declare-fun m!1718155 () Bool)

(assert (=> b!1473942 m!1718155))

(declare-fun b!1473949 () Bool)

(declare-fun e!941574 () Bool)

(declare-fun tp!416705 () Bool)

(assert (=> b!1473949 (= e!941574 (and tp_is_empty!6935 tp!416705))))

(assert (=> b!1473542 (= tp!416586 e!941574)))

(assert (= (and b!1473542 ((_ is Cons!15507) (originalCharacters!3623 (h!20910 l2!3105)))) b!1473949))

(declare-fun b!1473960 () Bool)

(declare-fun b_free!37531 () Bool)

(declare-fun b_next!38235 () Bool)

(assert (=> b!1473960 (= b_free!37531 (not b_next!38235))))

(declare-fun tp!416714 () Bool)

(declare-fun b_and!101409 () Bool)

(assert (=> b!1473960 (= tp!416714 b_and!101409)))

(declare-fun b_free!37533 () Bool)

(declare-fun b_next!38237 () Bool)

(assert (=> b!1473960 (= b_free!37533 (not b_next!38237))))

(declare-fun tb!83625 () Bool)

(declare-fun t!136079 () Bool)

(assert (=> (and b!1473960 (= (toChars!3947 (transformation!2761 (h!20909 (t!136019 rules!4290)))) (toChars!3947 (transformation!2761 (rule!4538 (h!20910 l2!3105))))) t!136079) tb!83625))

(declare-fun result!100550 () Bool)

(assert (= result!100550 result!100490))

(assert (=> b!1473702 t!136079))

(declare-fun t!136081 () Bool)

(declare-fun tb!83627 () Bool)

(assert (=> (and b!1473960 (= (toChars!3947 (transformation!2761 (h!20909 (t!136019 rules!4290)))) (toChars!3947 (transformation!2761 (rule!4538 (h!20910 l1!3136))))) t!136081) tb!83627))

(declare-fun result!100552 () Bool)

(assert (= result!100552 result!100532))

(assert (=> b!1473905 t!136081))

(declare-fun b_and!101411 () Bool)

(declare-fun tp!416716 () Bool)

(assert (=> b!1473960 (= tp!416716 (and (=> t!136079 result!100550) (=> t!136081 result!100552) b_and!101411))))

(declare-fun e!941585 () Bool)

(assert (=> b!1473960 (= e!941585 (and tp!416714 tp!416716))))

(declare-fun tp!416715 () Bool)

(declare-fun b!1473959 () Bool)

(declare-fun e!941586 () Bool)

(assert (=> b!1473959 (= e!941586 (and tp!416715 (inv!20711 (tag!3025 (h!20909 (t!136019 rules!4290)))) (inv!20715 (transformation!2761 (h!20909 (t!136019 rules!4290)))) e!941585))))

(declare-fun b!1473958 () Bool)

(declare-fun e!941583 () Bool)

(declare-fun tp!416717 () Bool)

(assert (=> b!1473958 (= e!941583 (and e!941586 tp!416717))))

(assert (=> b!1473554 (= tp!416587 e!941583)))

(assert (= b!1473959 b!1473960))

(assert (= b!1473958 b!1473959))

(assert (= (and b!1473554 ((_ is Cons!15508) (t!136019 rules!4290))) b!1473958))

(declare-fun m!1718157 () Bool)

(assert (=> b!1473959 m!1718157))

(declare-fun m!1718159 () Bool)

(assert (=> b!1473959 m!1718159))

(declare-fun e!941587 () Bool)

(assert (=> b!1473553 (= tp!416594 e!941587)))

(declare-fun b!1473962 () Bool)

(declare-fun tp!416718 () Bool)

(declare-fun tp!416721 () Bool)

(assert (=> b!1473962 (= e!941587 (and tp!416718 tp!416721))))

(declare-fun b!1473963 () Bool)

(declare-fun tp!416722 () Bool)

(assert (=> b!1473963 (= e!941587 tp!416722)))

(declare-fun b!1473964 () Bool)

(declare-fun tp!416720 () Bool)

(declare-fun tp!416719 () Bool)

(assert (=> b!1473964 (= e!941587 (and tp!416720 tp!416719))))

(declare-fun b!1473961 () Bool)

(assert (=> b!1473961 (= e!941587 tp_is_empty!6935)))

(assert (= (and b!1473553 ((_ is ElementMatch!4075) (regex!2761 (rule!4538 (h!20910 l1!3136))))) b!1473961))

(assert (= (and b!1473553 ((_ is Concat!6926) (regex!2761 (rule!4538 (h!20910 l1!3136))))) b!1473962))

(assert (= (and b!1473553 ((_ is Star!4075) (regex!2761 (rule!4538 (h!20910 l1!3136))))) b!1473963))

(assert (= (and b!1473553 ((_ is Union!4075) (regex!2761 (rule!4538 (h!20910 l1!3136))))) b!1473964))

(declare-fun b!1473968 () Bool)

(declare-fun b_free!37535 () Bool)

(declare-fun b_next!38239 () Bool)

(assert (=> b!1473968 (= b_free!37535 (not b_next!38239))))

(declare-fun tp!416727 () Bool)

(declare-fun b_and!101413 () Bool)

(assert (=> b!1473968 (= tp!416727 b_and!101413)))

(declare-fun b_free!37537 () Bool)

(declare-fun b_next!38241 () Bool)

(assert (=> b!1473968 (= b_free!37537 (not b_next!38241))))

(declare-fun tb!83629 () Bool)

(declare-fun t!136083 () Bool)

(assert (=> (and b!1473968 (= (toChars!3947 (transformation!2761 (rule!4538 (h!20910 (t!136020 l1!3136))))) (toChars!3947 (transformation!2761 (rule!4538 (h!20910 l2!3105))))) t!136083) tb!83629))

(declare-fun result!100554 () Bool)

(assert (= result!100554 result!100490))

(assert (=> b!1473702 t!136083))

(declare-fun t!136085 () Bool)

(declare-fun tb!83631 () Bool)

(assert (=> (and b!1473968 (= (toChars!3947 (transformation!2761 (rule!4538 (h!20910 (t!136020 l1!3136))))) (toChars!3947 (transformation!2761 (rule!4538 (h!20910 l1!3136))))) t!136085) tb!83631))

(declare-fun result!100556 () Bool)

(assert (= result!100556 result!100532))

(assert (=> b!1473905 t!136085))

(declare-fun b_and!101415 () Bool)

(declare-fun tp!416725 () Bool)

(assert (=> b!1473968 (= tp!416725 (and (=> t!136083 result!100554) (=> t!136085 result!100556) b_and!101415))))

(declare-fun e!941589 () Bool)

(declare-fun e!941591 () Bool)

(declare-fun b!1473967 () Bool)

(declare-fun tp!416726 () Bool)

(assert (=> b!1473967 (= e!941591 (and tp!416726 (inv!20711 (tag!3025 (rule!4538 (h!20910 (t!136020 l1!3136))))) (inv!20715 (transformation!2761 (rule!4538 (h!20910 (t!136020 l1!3136))))) e!941589))))

(declare-fun e!941590 () Bool)

(declare-fun e!941588 () Bool)

(declare-fun b!1473965 () Bool)

(declare-fun tp!416723 () Bool)

(assert (=> b!1473965 (= e!941590 (and (inv!20714 (h!20910 (t!136020 l1!3136))) e!941588 tp!416723))))

(assert (=> b!1473536 (= tp!416596 e!941590)))

(assert (=> b!1473968 (= e!941589 (and tp!416727 tp!416725))))

(declare-fun tp!416724 () Bool)

(declare-fun b!1473966 () Bool)

(assert (=> b!1473966 (= e!941588 (and (inv!21 (value!88336 (h!20910 (t!136020 l1!3136)))) e!941591 tp!416724))))

(assert (= b!1473967 b!1473968))

(assert (= b!1473966 b!1473967))

(assert (= b!1473965 b!1473966))

(assert (= (and b!1473536 ((_ is Cons!15509) (t!136020 l1!3136))) b!1473965))

(declare-fun m!1718161 () Bool)

(assert (=> b!1473967 m!1718161))

(declare-fun m!1718163 () Bool)

(assert (=> b!1473967 m!1718163))

(declare-fun m!1718165 () Bool)

(assert (=> b!1473965 m!1718165))

(declare-fun m!1718167 () Bool)

(assert (=> b!1473966 m!1718167))

(declare-fun b!1473969 () Bool)

(declare-fun e!941594 () Bool)

(declare-fun tp!416728 () Bool)

(assert (=> b!1473969 (= e!941594 (and tp_is_empty!6935 tp!416728))))

(assert (=> b!1473538 (= tp!416589 e!941594)))

(assert (= (and b!1473538 ((_ is Cons!15507) (originalCharacters!3623 (h!20910 l1!3136)))) b!1473969))

(declare-fun b_lambda!46015 () Bool)

(assert (= b_lambda!46003 (or (and b!1473960 b_free!37533 (= (toChars!3947 (transformation!2761 (h!20909 (t!136019 rules!4290)))) (toChars!3947 (transformation!2761 (rule!4538 (h!20910 l2!3105)))))) (and b!1473968 b_free!37537 (= (toChars!3947 (transformation!2761 (rule!4538 (h!20910 (t!136020 l1!3136))))) (toChars!3947 (transformation!2761 (rule!4538 (h!20910 l2!3105)))))) (and b!1473555 b_free!37513 (= (toChars!3947 (transformation!2761 (rule!4538 (h!20910 l1!3136)))) (toChars!3947 (transformation!2761 (rule!4538 (h!20910 l2!3105)))))) (and b!1473548 b_free!37509 (= (toChars!3947 (transformation!2761 (h!20909 rules!4290))) (toChars!3947 (transformation!2761 (rule!4538 (h!20910 l2!3105)))))) (and b!1473944 b_free!37529 (= (toChars!3947 (transformation!2761 (rule!4538 (h!20910 (t!136020 l2!3105))))) (toChars!3947 (transformation!2761 (rule!4538 (h!20910 l2!3105)))))) (and b!1473535 b_free!37505) b_lambda!46015)))

(declare-fun b_lambda!46017 () Bool)

(assert (= b_lambda!46013 (or (and b!1473555 b_free!37513) (and b!1473548 b_free!37509 (= (toChars!3947 (transformation!2761 (h!20909 rules!4290))) (toChars!3947 (transformation!2761 (rule!4538 (h!20910 l1!3136)))))) (and b!1473968 b_free!37537 (= (toChars!3947 (transformation!2761 (rule!4538 (h!20910 (t!136020 l1!3136))))) (toChars!3947 (transformation!2761 (rule!4538 (h!20910 l1!3136)))))) (and b!1473944 b_free!37529 (= (toChars!3947 (transformation!2761 (rule!4538 (h!20910 (t!136020 l2!3105))))) (toChars!3947 (transformation!2761 (rule!4538 (h!20910 l1!3136)))))) (and b!1473535 b_free!37505 (= (toChars!3947 (transformation!2761 (rule!4538 (h!20910 l2!3105)))) (toChars!3947 (transformation!2761 (rule!4538 (h!20910 l1!3136)))))) (and b!1473960 b_free!37533 (= (toChars!3947 (transformation!2761 (h!20909 (t!136019 rules!4290)))) (toChars!3947 (transformation!2761 (rule!4538 (h!20910 l1!3136)))))) b_lambda!46017)))

(check-sat b_and!101361 (not b!1473903) (not d!431982) (not b!1473884) (not b!1473928) (not b!1473870) (not b!1473943) (not b!1473899) tp_is_empty!6935 (not b!1473941) b_and!101399 b_and!101413 (not b!1473873) (not b!1473695) (not d!431962) (not b!1473887) (not d!431970) (not b!1473580) (not d!431856) (not b!1473964) (not b!1473702) (not b!1473703) b_and!101357 (not b!1473962) (not b!1473930) (not b!1473963) (not b!1473635) (not b!1473949) (not d!431912) (not b!1473634) (not d!431840) b_and!101411 (not b!1473911) (not b!1473904) (not b_next!38233) (not d!431960) (not b!1473881) (not b!1473686) (not b_lambda!46017) (not d!431976) (not b!1473882) (not b!1473694) (not tb!83585) (not b!1473895) (not b!1473872) (not b_next!38215) (not b!1473684) (not b!1473589) (not d!431952) (not d!431852) (not d!431946) (not b!1473597) (not b_lambda!46015) (not b!1473925) (not b!1473608) (not b_next!38231) (not b!1473942) (not d!431988) (not d!431830) b_and!101403 (not b!1473926) b_and!101405 (not b!1473596) (not d!431858) (not d!431914) (not b!1473912) (not b!1473909) (not b!1473627) (not b!1473959) (not b!1473632) b_and!101415 (not b!1473894) (not b!1473731) (not b!1473896) (not b!1473625) (not tb!83615) (not b!1473626) (not d!431846) (not b!1473966) (not d!431860) b_and!101409 (not d!431848) b_and!101365 (not d!431844) (not b!1473730) (not b!1473965) (not b!1473892) (not b!1473889) (not d!431958) (not b!1473929) (not b_next!38241) (not b!1473631) (not b!1473967) (not b!1473867) (not b_next!38213) (not d!431904) (not b!1473907) (not b!1473893) (not d!431862) b_and!101407 (not d!431854) (not b!1473708) (not b!1473958) (not b!1473871) (not b!1473883) (not b!1473636) (not b_next!38217) (not d!431964) (not b!1473897) (not b!1473891) (not b_next!38211) (not b!1473906) (not b!1473869) (not b_next!38209) (not b!1473924) (not d!431926) (not b!1473880) (not d!431972) (not d!431968) (not b!1473855) (not b_next!38235) (not b!1473888) b_and!101401 (not b!1473685) (not b!1473969) (not b!1473898) (not b_next!38237) (not b!1473905) (not b_next!38207) (not b!1473902) (not b_next!38239) (not d!431910) (not b!1473683) (not b!1473607) (not b!1473732) (not b!1473579))
(check-sat b_and!101361 b_and!101357 b_and!101411 (not b_next!38233) (not b_next!38215) (not b_next!38231) b_and!101415 (not b_next!38241) (not b_next!38213) b_and!101407 (not b_next!38209) (not b_next!38235) b_and!101399 b_and!101413 b_and!101403 b_and!101405 b_and!101409 b_and!101365 (not b_next!38217) (not b_next!38211) b_and!101401 (not b_next!38207) (not b_next!38239) (not b_next!38237))
(get-model)

(declare-fun d!432036 () Bool)

(declare-fun lt!512292 () BalanceConc!10514)

(assert (=> d!432036 (= (list!6181 lt!512292) (originalCharacters!3623 lt!512074))))

(assert (=> d!432036 (= lt!512292 (dynLambda!7038 (toChars!3947 (transformation!2761 (rule!4538 lt!512074))) (value!88336 lt!512074)))))

(assert (=> d!432036 (= (charsOf!1582 lt!512074) lt!512292)))

(declare-fun b_lambda!46021 () Bool)

(assert (=> (not b_lambda!46021) (not d!432036)))

(declare-fun t!136100 () Bool)

(declare-fun tb!83645 () Bool)

(assert (=> (and b!1473548 (= (toChars!3947 (transformation!2761 (h!20909 rules!4290))) (toChars!3947 (transformation!2761 (rule!4538 lt!512074)))) t!136100) tb!83645))

(declare-fun b!1474002 () Bool)

(declare-fun e!941619 () Bool)

(declare-fun tp!416730 () Bool)

(assert (=> b!1474002 (= e!941619 (and (inv!20718 (c!242395 (dynLambda!7038 (toChars!3947 (transformation!2761 (rule!4538 lt!512074))) (value!88336 lt!512074)))) tp!416730))))

(declare-fun result!100570 () Bool)

(assert (=> tb!83645 (= result!100570 (and (inv!20719 (dynLambda!7038 (toChars!3947 (transformation!2761 (rule!4538 lt!512074))) (value!88336 lt!512074))) e!941619))))

(assert (= tb!83645 b!1474002))

(declare-fun m!1718323 () Bool)

(assert (=> b!1474002 m!1718323))

(declare-fun m!1718325 () Bool)

(assert (=> tb!83645 m!1718325))

(assert (=> d!432036 t!136100))

(declare-fun b_and!101429 () Bool)

(assert (= b_and!101401 (and (=> t!136100 result!100570) b_and!101429)))

(declare-fun t!136102 () Bool)

(declare-fun tb!83647 () Bool)

(assert (=> (and b!1473968 (= (toChars!3947 (transformation!2761 (rule!4538 (h!20910 (t!136020 l1!3136))))) (toChars!3947 (transformation!2761 (rule!4538 lt!512074)))) t!136102) tb!83647))

(declare-fun result!100572 () Bool)

(assert (= result!100572 result!100570))

(assert (=> d!432036 t!136102))

(declare-fun b_and!101431 () Bool)

(assert (= b_and!101415 (and (=> t!136102 result!100572) b_and!101431)))

(declare-fun t!136104 () Bool)

(declare-fun tb!83649 () Bool)

(assert (=> (and b!1473535 (= (toChars!3947 (transformation!2761 (rule!4538 (h!20910 l2!3105)))) (toChars!3947 (transformation!2761 (rule!4538 lt!512074)))) t!136104) tb!83649))

(declare-fun result!100574 () Bool)

(assert (= result!100574 result!100570))

(assert (=> d!432036 t!136104))

(declare-fun b_and!101433 () Bool)

(assert (= b_and!101399 (and (=> t!136104 result!100574) b_and!101433)))

(declare-fun tb!83651 () Bool)

(declare-fun t!136106 () Bool)

(assert (=> (and b!1473555 (= (toChars!3947 (transformation!2761 (rule!4538 (h!20910 l1!3136)))) (toChars!3947 (transformation!2761 (rule!4538 lt!512074)))) t!136106) tb!83651))

(declare-fun result!100576 () Bool)

(assert (= result!100576 result!100570))

(assert (=> d!432036 t!136106))

(declare-fun b_and!101435 () Bool)

(assert (= b_and!101403 (and (=> t!136106 result!100576) b_and!101435)))

(declare-fun t!136108 () Bool)

(declare-fun tb!83653 () Bool)

(assert (=> (and b!1473960 (= (toChars!3947 (transformation!2761 (h!20909 (t!136019 rules!4290)))) (toChars!3947 (transformation!2761 (rule!4538 lt!512074)))) t!136108) tb!83653))

(declare-fun result!100578 () Bool)

(assert (= result!100578 result!100570))

(assert (=> d!432036 t!136108))

(declare-fun b_and!101437 () Bool)

(assert (= b_and!101411 (and (=> t!136108 result!100578) b_and!101437)))

(declare-fun t!136110 () Bool)

(declare-fun tb!83655 () Bool)

(assert (=> (and b!1473944 (= (toChars!3947 (transformation!2761 (rule!4538 (h!20910 (t!136020 l2!3105))))) (toChars!3947 (transformation!2761 (rule!4538 lt!512074)))) t!136110) tb!83655))

(declare-fun result!100580 () Bool)

(assert (= result!100580 result!100570))

(assert (=> d!432036 t!136110))

(declare-fun b_and!101439 () Bool)

(assert (= b_and!101407 (and (=> t!136110 result!100580) b_and!101439)))

(declare-fun m!1718327 () Bool)

(assert (=> d!432036 m!1718327))

(declare-fun m!1718329 () Bool)

(assert (=> d!432036 m!1718329))

(assert (=> d!431960 d!432036))

(declare-fun d!432038 () Bool)

(declare-fun lt!512293 () BalanceConc!10514)

(assert (=> d!432038 (= (list!6181 lt!512293) (originalCharacters!3623 lt!512069))))

(assert (=> d!432038 (= lt!512293 (dynLambda!7038 (toChars!3947 (transformation!2761 (rule!4538 lt!512069))) (value!88336 lt!512069)))))

(assert (=> d!432038 (= (charsOf!1582 lt!512069) lt!512293)))

(declare-fun b_lambda!46023 () Bool)

(assert (=> (not b_lambda!46023) (not d!432038)))

(declare-fun t!136112 () Bool)

(declare-fun tb!83657 () Bool)

(assert (=> (and b!1473535 (= (toChars!3947 (transformation!2761 (rule!4538 (h!20910 l2!3105)))) (toChars!3947 (transformation!2761 (rule!4538 lt!512069)))) t!136112) tb!83657))

(declare-fun b!1474003 () Bool)

(declare-fun e!941620 () Bool)

(declare-fun tp!416731 () Bool)

(assert (=> b!1474003 (= e!941620 (and (inv!20718 (c!242395 (dynLambda!7038 (toChars!3947 (transformation!2761 (rule!4538 lt!512069))) (value!88336 lt!512069)))) tp!416731))))

(declare-fun result!100582 () Bool)

(assert (=> tb!83657 (= result!100582 (and (inv!20719 (dynLambda!7038 (toChars!3947 (transformation!2761 (rule!4538 lt!512069))) (value!88336 lt!512069))) e!941620))))

(assert (= tb!83657 b!1474003))

(declare-fun m!1718331 () Bool)

(assert (=> b!1474003 m!1718331))

(declare-fun m!1718333 () Bool)

(assert (=> tb!83657 m!1718333))

(assert (=> d!432038 t!136112))

(declare-fun b_and!101441 () Bool)

(assert (= b_and!101433 (and (=> t!136112 result!100582) b_and!101441)))

(declare-fun tb!83659 () Bool)

(declare-fun t!136114 () Bool)

(assert (=> (and b!1473960 (= (toChars!3947 (transformation!2761 (h!20909 (t!136019 rules!4290)))) (toChars!3947 (transformation!2761 (rule!4538 lt!512069)))) t!136114) tb!83659))

(declare-fun result!100584 () Bool)

(assert (= result!100584 result!100582))

(assert (=> d!432038 t!136114))

(declare-fun b_and!101443 () Bool)

(assert (= b_and!101437 (and (=> t!136114 result!100584) b_and!101443)))

(declare-fun tb!83661 () Bool)

(declare-fun t!136116 () Bool)

(assert (=> (and b!1473548 (= (toChars!3947 (transformation!2761 (h!20909 rules!4290))) (toChars!3947 (transformation!2761 (rule!4538 lt!512069)))) t!136116) tb!83661))

(declare-fun result!100586 () Bool)

(assert (= result!100586 result!100582))

(assert (=> d!432038 t!136116))

(declare-fun b_and!101445 () Bool)

(assert (= b_and!101429 (and (=> t!136116 result!100586) b_and!101445)))

(declare-fun tb!83663 () Bool)

(declare-fun t!136118 () Bool)

(assert (=> (and b!1473555 (= (toChars!3947 (transformation!2761 (rule!4538 (h!20910 l1!3136)))) (toChars!3947 (transformation!2761 (rule!4538 lt!512069)))) t!136118) tb!83663))

(declare-fun result!100588 () Bool)

(assert (= result!100588 result!100582))

(assert (=> d!432038 t!136118))

(declare-fun b_and!101447 () Bool)

(assert (= b_and!101435 (and (=> t!136118 result!100588) b_and!101447)))

(declare-fun t!136120 () Bool)

(declare-fun tb!83665 () Bool)

(assert (=> (and b!1473968 (= (toChars!3947 (transformation!2761 (rule!4538 (h!20910 (t!136020 l1!3136))))) (toChars!3947 (transformation!2761 (rule!4538 lt!512069)))) t!136120) tb!83665))

(declare-fun result!100590 () Bool)

(assert (= result!100590 result!100582))

(assert (=> d!432038 t!136120))

(declare-fun b_and!101449 () Bool)

(assert (= b_and!101431 (and (=> t!136120 result!100590) b_and!101449)))

(declare-fun tb!83667 () Bool)

(declare-fun t!136122 () Bool)

(assert (=> (and b!1473944 (= (toChars!3947 (transformation!2761 (rule!4538 (h!20910 (t!136020 l2!3105))))) (toChars!3947 (transformation!2761 (rule!4538 lt!512069)))) t!136122) tb!83667))

(declare-fun result!100592 () Bool)

(assert (= result!100592 result!100582))

(assert (=> d!432038 t!136122))

(declare-fun b_and!101451 () Bool)

(assert (= b_and!101439 (and (=> t!136122 result!100592) b_and!101451)))

(declare-fun m!1718335 () Bool)

(assert (=> d!432038 m!1718335))

(declare-fun m!1718337 () Bool)

(assert (=> d!432038 m!1718337))

(assert (=> d!431960 d!432038))

(declare-fun b!1474013 () Bool)

(declare-fun res!666289 () Bool)

(declare-fun e!941623 () Bool)

(assert (=> b!1474013 (=> (not res!666289) (not e!941623))))

(declare-fun height!783 (Conc!5287) Int)

(declare-fun ++!4190 (Conc!5287 Conc!5287) Conc!5287)

(declare-fun max!0 (Int Int) Int)

(assert (=> b!1474013 (= res!666289 (<= (height!783 (++!4190 (c!242395 (charsOf!1582 lt!512069)) (c!242395 (singletonSeq!1300 (apply!3999 (charsOf!1582 lt!512074) 0))))) (+ (max!0 (height!783 (c!242395 (charsOf!1582 lt!512069))) (height!783 (c!242395 (singletonSeq!1300 (apply!3999 (charsOf!1582 lt!512074) 0))))) 1)))))

(declare-fun b!1474014 () Bool)

(declare-fun res!666288 () Bool)

(assert (=> b!1474014 (=> (not res!666288) (not e!941623))))

(assert (=> b!1474014 (= res!666288 (>= (height!783 (++!4190 (c!242395 (charsOf!1582 lt!512069)) (c!242395 (singletonSeq!1300 (apply!3999 (charsOf!1582 lt!512074) 0))))) (max!0 (height!783 (c!242395 (charsOf!1582 lt!512069))) (height!783 (c!242395 (singletonSeq!1300 (apply!3999 (charsOf!1582 lt!512074) 0)))))))))

(declare-fun b!1474015 () Bool)

(declare-fun lt!512296 () BalanceConc!10514)

(declare-fun ++!4191 (List!15573 List!15573) List!15573)

(assert (=> b!1474015 (= e!941623 (= (list!6181 lt!512296) (++!4191 (list!6181 (charsOf!1582 lt!512069)) (list!6181 (singletonSeq!1300 (apply!3999 (charsOf!1582 lt!512074) 0))))))))

(declare-fun b!1474012 () Bool)

(declare-fun res!666290 () Bool)

(assert (=> b!1474012 (=> (not res!666290) (not e!941623))))

(declare-fun isBalanced!1576 (Conc!5287) Bool)

(assert (=> b!1474012 (= res!666290 (isBalanced!1576 (++!4190 (c!242395 (charsOf!1582 lt!512069)) (c!242395 (singletonSeq!1300 (apply!3999 (charsOf!1582 lt!512074) 0))))))))

(declare-fun d!432040 () Bool)

(assert (=> d!432040 e!941623))

(declare-fun res!666291 () Bool)

(assert (=> d!432040 (=> (not res!666291) (not e!941623))))

(declare-fun appendAssocInst!342 (Conc!5287 Conc!5287) Bool)

(assert (=> d!432040 (= res!666291 (appendAssocInst!342 (c!242395 (charsOf!1582 lt!512069)) (c!242395 (singletonSeq!1300 (apply!3999 (charsOf!1582 lt!512074) 0)))))))

(assert (=> d!432040 (= lt!512296 (BalanceConc!10515 (++!4190 (c!242395 (charsOf!1582 lt!512069)) (c!242395 (singletonSeq!1300 (apply!3999 (charsOf!1582 lt!512074) 0))))))))

(assert (=> d!432040 (= (++!4189 (charsOf!1582 lt!512069) (singletonSeq!1300 (apply!3999 (charsOf!1582 lt!512074) 0))) lt!512296)))

(assert (= (and d!432040 res!666291) b!1474012))

(assert (= (and b!1474012 res!666290) b!1474013))

(assert (= (and b!1474013 res!666289) b!1474014))

(assert (= (and b!1474014 res!666288) b!1474015))

(declare-fun m!1718339 () Bool)

(assert (=> d!432040 m!1718339))

(declare-fun m!1718341 () Bool)

(assert (=> d!432040 m!1718341))

(declare-fun m!1718343 () Bool)

(assert (=> b!1474014 m!1718343))

(declare-fun m!1718345 () Bool)

(assert (=> b!1474014 m!1718345))

(assert (=> b!1474014 m!1718341))

(declare-fun m!1718347 () Bool)

(assert (=> b!1474014 m!1718347))

(assert (=> b!1474014 m!1718345))

(assert (=> b!1474014 m!1718343))

(declare-fun m!1718349 () Bool)

(assert (=> b!1474014 m!1718349))

(assert (=> b!1474014 m!1718341))

(assert (=> b!1474012 m!1718341))

(assert (=> b!1474012 m!1718341))

(declare-fun m!1718351 () Bool)

(assert (=> b!1474012 m!1718351))

(assert (=> b!1474013 m!1718343))

(assert (=> b!1474013 m!1718345))

(assert (=> b!1474013 m!1718341))

(assert (=> b!1474013 m!1718347))

(assert (=> b!1474013 m!1718345))

(assert (=> b!1474013 m!1718343))

(assert (=> b!1474013 m!1718349))

(assert (=> b!1474013 m!1718341))

(declare-fun m!1718353 () Bool)

(assert (=> b!1474015 m!1718353))

(assert (=> b!1474015 m!1718035))

(declare-fun m!1718355 () Bool)

(assert (=> b!1474015 m!1718355))

(assert (=> b!1474015 m!1717853))

(declare-fun m!1718357 () Bool)

(assert (=> b!1474015 m!1718357))

(assert (=> b!1474015 m!1718355))

(assert (=> b!1474015 m!1718357))

(declare-fun m!1718359 () Bool)

(assert (=> b!1474015 m!1718359))

(assert (=> d!431960 d!432040))

(declare-fun d!432042 () Bool)

(declare-fun lt!512305 () Unit!25209)

(declare-fun lemma!180 (List!15574 LexerInterface!2417 List!15574) Unit!25209)

(assert (=> d!432042 (= lt!512305 (lemma!180 rules!4290 thiss!27374 rules!4290))))

(declare-fun lambda!63570 () Int)

(declare-datatypes ((List!15578 0))(
  ( (Nil!15512) (Cons!15512 (h!20913 Regex!4075) (t!136369 List!15578)) )
))
(declare-fun generalisedUnion!188 (List!15578) Regex!4075)

(declare-fun map!3346 (List!15574 Int) List!15578)

(assert (=> d!432042 (= (rulesRegex!418 thiss!27374 rules!4290) (generalisedUnion!188 (map!3346 rules!4290 lambda!63570)))))

(declare-fun bs!345245 () Bool)

(assert (= bs!345245 d!432042))

(declare-fun m!1718361 () Bool)

(assert (=> bs!345245 m!1718361))

(declare-fun m!1718363 () Bool)

(assert (=> bs!345245 m!1718363))

(assert (=> bs!345245 m!1718363))

(declare-fun m!1718365 () Bool)

(assert (=> bs!345245 m!1718365))

(assert (=> d!431960 d!432042))

(declare-fun d!432046 () Bool)

(declare-fun lt!512311 () C!8328)

(declare-fun apply!4003 (List!15573 Int) C!8328)

(assert (=> d!432046 (= lt!512311 (apply!4003 (list!6181 (charsOf!1582 lt!512074)) 0))))

(declare-fun apply!4004 (Conc!5287 Int) C!8328)

(assert (=> d!432046 (= lt!512311 (apply!4004 (c!242395 (charsOf!1582 lt!512074)) 0))))

(declare-fun e!941632 () Bool)

(assert (=> d!432046 e!941632))

(declare-fun res!666300 () Bool)

(assert (=> d!432046 (=> (not res!666300) (not e!941632))))

(assert (=> d!432046 (= res!666300 (<= 0 0))))

(assert (=> d!432046 (= (apply!3999 (charsOf!1582 lt!512074) 0) lt!512311)))

(declare-fun b!1474024 () Bool)

(assert (=> b!1474024 (= e!941632 (< 0 (size!12581 (charsOf!1582 lt!512074))))))

(assert (= (and d!432046 res!666300) b!1474024))

(assert (=> d!432046 m!1717845))

(declare-fun m!1718377 () Bool)

(assert (=> d!432046 m!1718377))

(assert (=> d!432046 m!1718377))

(declare-fun m!1718379 () Bool)

(assert (=> d!432046 m!1718379))

(declare-fun m!1718381 () Bool)

(assert (=> d!432046 m!1718381))

(assert (=> b!1474024 m!1717845))

(declare-fun m!1718383 () Bool)

(assert (=> b!1474024 m!1718383))

(assert (=> d!431960 d!432046))

(declare-fun d!432052 () Bool)

(declare-fun e!941635 () Bool)

(assert (=> d!432052 e!941635))

(declare-fun res!666303 () Bool)

(assert (=> d!432052 (=> (not res!666303) (not e!941635))))

(declare-fun lt!512314 () BalanceConc!10514)

(assert (=> d!432052 (= res!666303 (= (list!6181 lt!512314) (Cons!15507 (apply!3999 (charsOf!1582 lt!512074) 0) Nil!15507)))))

(declare-fun singleton!544 (C!8328) BalanceConc!10514)

(assert (=> d!432052 (= lt!512314 (singleton!544 (apply!3999 (charsOf!1582 lt!512074) 0)))))

(assert (=> d!432052 (= (singletonSeq!1300 (apply!3999 (charsOf!1582 lt!512074) 0)) lt!512314)))

(declare-fun b!1474027 () Bool)

(assert (=> b!1474027 (= e!941635 (isBalanced!1576 (c!242395 lt!512314)))))

(assert (= (and d!432052 res!666303) b!1474027))

(declare-fun m!1718385 () Bool)

(assert (=> d!432052 m!1718385))

(assert (=> d!432052 m!1717847))

(declare-fun m!1718387 () Bool)

(assert (=> d!432052 m!1718387))

(declare-fun m!1718389 () Bool)

(assert (=> b!1474027 m!1718389))

(assert (=> d!431960 d!432052))

(declare-fun d!432054 () Bool)

(declare-fun lt!512337 () Bool)

(declare-fun prefixMatch!321 (Regex!4075 List!15573) Bool)

(assert (=> d!432054 (= lt!512337 (prefixMatch!321 (rulesRegex!418 thiss!27374 rules!4290) (list!6181 (++!4189 (charsOf!1582 lt!512069) (singletonSeq!1300 (apply!3999 (charsOf!1582 lt!512074) 0))))))))

(declare-datatypes ((Context!1252 0))(
  ( (Context!1253 (exprs!1126 List!15578)) )
))
(declare-fun prefixMatchZipperSequence!365 ((InoxSet Context!1252) BalanceConc!10514 Int) Bool)

(declare-fun focus!117 (Regex!4075) (InoxSet Context!1252))

(assert (=> d!432054 (= lt!512337 (prefixMatchZipperSequence!365 (focus!117 (rulesRegex!418 thiss!27374 rules!4290)) (++!4189 (charsOf!1582 lt!512069) (singletonSeq!1300 (apply!3999 (charsOf!1582 lt!512074) 0))) 0))))

(declare-fun lt!512344 () Unit!25209)

(declare-fun lt!512342 () Unit!25209)

(assert (=> d!432054 (= lt!512344 lt!512342)))

(declare-fun lt!512338 () List!15573)

(declare-fun lt!512341 () (InoxSet Context!1252))

(declare-fun prefixMatchZipper!97 ((InoxSet Context!1252) List!15573) Bool)

(assert (=> d!432054 (= (prefixMatch!321 (rulesRegex!418 thiss!27374 rules!4290) lt!512338) (prefixMatchZipper!97 lt!512341 lt!512338))))

(declare-datatypes ((List!15579 0))(
  ( (Nil!15513) (Cons!15513 (h!20914 Context!1252) (t!136370 List!15579)) )
))
(declare-fun lt!512336 () List!15579)

(declare-fun prefixMatchZipperRegexEquiv!97 ((InoxSet Context!1252) List!15579 Regex!4075 List!15573) Unit!25209)

(assert (=> d!432054 (= lt!512342 (prefixMatchZipperRegexEquiv!97 lt!512341 lt!512336 (rulesRegex!418 thiss!27374 rules!4290) lt!512338))))

(assert (=> d!432054 (= lt!512338 (list!6181 (++!4189 (charsOf!1582 lt!512069) (singletonSeq!1300 (apply!3999 (charsOf!1582 lt!512074) 0)))))))

(declare-fun toList!781 ((InoxSet Context!1252)) List!15579)

(assert (=> d!432054 (= lt!512336 (toList!781 (focus!117 (rulesRegex!418 thiss!27374 rules!4290))))))

(assert (=> d!432054 (= lt!512341 (focus!117 (rulesRegex!418 thiss!27374 rules!4290)))))

(declare-fun lt!512339 () Unit!25209)

(declare-fun lt!512343 () Unit!25209)

(assert (=> d!432054 (= lt!512339 lt!512343)))

(declare-fun lt!512335 () Int)

(declare-fun lt!512340 () (InoxSet Context!1252))

(declare-fun dropList!489 (BalanceConc!10514 Int) List!15573)

(assert (=> d!432054 (= (prefixMatchZipper!97 lt!512340 (dropList!489 (++!4189 (charsOf!1582 lt!512069) (singletonSeq!1300 (apply!3999 (charsOf!1582 lt!512074) 0))) lt!512335)) (prefixMatchZipperSequence!365 lt!512340 (++!4189 (charsOf!1582 lt!512069) (singletonSeq!1300 (apply!3999 (charsOf!1582 lt!512074) 0))) lt!512335))))

(declare-fun lemmaprefixMatchZipperSequenceEquivalent!97 ((InoxSet Context!1252) BalanceConc!10514 Int) Unit!25209)

(assert (=> d!432054 (= lt!512343 (lemmaprefixMatchZipperSequenceEquivalent!97 lt!512340 (++!4189 (charsOf!1582 lt!512069) (singletonSeq!1300 (apply!3999 (charsOf!1582 lt!512074) 0))) lt!512335))))

(assert (=> d!432054 (= lt!512335 0)))

(assert (=> d!432054 (= lt!512340 (focus!117 (rulesRegex!418 thiss!27374 rules!4290)))))

(declare-fun validRegex!1686 (Regex!4075) Bool)

(assert (=> d!432054 (validRegex!1686 (rulesRegex!418 thiss!27374 rules!4290))))

(assert (=> d!432054 (= (prefixMatchZipperSequence!364 (rulesRegex!418 thiss!27374 rules!4290) (++!4189 (charsOf!1582 lt!512069) (singletonSeq!1300 (apply!3999 (charsOf!1582 lt!512074) 0)))) lt!512337)))

(declare-fun bs!345247 () Bool)

(assert (= bs!345247 d!432054))

(assert (=> bs!345247 m!1717849))

(declare-fun m!1718391 () Bool)

(assert (=> bs!345247 m!1718391))

(declare-fun m!1718393 () Bool)

(assert (=> bs!345247 m!1718393))

(assert (=> bs!345247 m!1717849))

(declare-fun m!1718395 () Bool)

(assert (=> bs!345247 m!1718395))

(assert (=> bs!345247 m!1718037))

(declare-fun m!1718397 () Bool)

(assert (=> bs!345247 m!1718397))

(declare-fun m!1718399 () Bool)

(assert (=> bs!345247 m!1718399))

(declare-fun m!1718401 () Bool)

(assert (=> bs!345247 m!1718401))

(assert (=> bs!345247 m!1717849))

(assert (=> bs!345247 m!1718397))

(declare-fun m!1718403 () Bool)

(assert (=> bs!345247 m!1718403))

(assert (=> bs!345247 m!1718391))

(declare-fun m!1718405 () Bool)

(assert (=> bs!345247 m!1718405))

(assert (=> bs!345247 m!1718391))

(assert (=> bs!345247 m!1718037))

(declare-fun m!1718407 () Bool)

(assert (=> bs!345247 m!1718407))

(assert (=> bs!345247 m!1717849))

(declare-fun m!1718409 () Bool)

(assert (=> bs!345247 m!1718409))

(assert (=> bs!345247 m!1718037))

(declare-fun m!1718411 () Bool)

(assert (=> bs!345247 m!1718411))

(assert (=> bs!345247 m!1718037))

(declare-fun m!1718413 () Bool)

(assert (=> bs!345247 m!1718413))

(assert (=> bs!345247 m!1717849))

(declare-fun m!1718415 () Bool)

(assert (=> bs!345247 m!1718415))

(assert (=> bs!345247 m!1718037))

(assert (=> bs!345247 m!1718399))

(assert (=> d!431960 d!432054))

(declare-fun d!432056 () Bool)

(declare-fun res!666304 () Bool)

(declare-fun e!941636 () Bool)

(assert (=> d!432056 (=> res!666304 e!941636)))

(assert (=> d!432056 (= res!666304 (or (not ((_ is Cons!15509) (Cons!15509 (h!20910 (t!136020 l1!3136)) (t!136020 (t!136020 l1!3136))))) (not ((_ is Cons!15509) (t!136020 (Cons!15509 (h!20910 (t!136020 l1!3136)) (t!136020 (t!136020 l1!3136))))))))))

(assert (=> d!432056 (= (tokensListTwoByTwoPredicateSeparableList!277 thiss!27374 (Cons!15509 (h!20910 (t!136020 l1!3136)) (t!136020 (t!136020 l1!3136))) rules!4290) e!941636)))

(declare-fun b!1474028 () Bool)

(declare-fun e!941637 () Bool)

(assert (=> b!1474028 (= e!941636 e!941637)))

(declare-fun res!666305 () Bool)

(assert (=> b!1474028 (=> (not res!666305) (not e!941637))))

(assert (=> b!1474028 (= res!666305 (separableTokensPredicate!560 thiss!27374 (h!20910 (Cons!15509 (h!20910 (t!136020 l1!3136)) (t!136020 (t!136020 l1!3136)))) (h!20910 (t!136020 (Cons!15509 (h!20910 (t!136020 l1!3136)) (t!136020 (t!136020 l1!3136))))) rules!4290))))

(declare-fun lt!512349 () Unit!25209)

(declare-fun Unit!25238 () Unit!25209)

(assert (=> b!1474028 (= lt!512349 Unit!25238)))

(assert (=> b!1474028 (> (size!12581 (charsOf!1582 (h!20910 (t!136020 (Cons!15509 (h!20910 (t!136020 l1!3136)) (t!136020 (t!136020 l1!3136))))))) 0)))

(declare-fun lt!512345 () Unit!25209)

(declare-fun Unit!25239 () Unit!25209)

(assert (=> b!1474028 (= lt!512345 Unit!25239)))

(assert (=> b!1474028 (rulesProduceIndividualToken!1276 thiss!27374 rules!4290 (h!20910 (t!136020 (Cons!15509 (h!20910 (t!136020 l1!3136)) (t!136020 (t!136020 l1!3136))))))))

(declare-fun lt!512350 () Unit!25209)

(declare-fun Unit!25240 () Unit!25209)

(assert (=> b!1474028 (= lt!512350 Unit!25240)))

(assert (=> b!1474028 (rulesProduceIndividualToken!1276 thiss!27374 rules!4290 (h!20910 (Cons!15509 (h!20910 (t!136020 l1!3136)) (t!136020 (t!136020 l1!3136)))))))

(declare-fun lt!512348 () Unit!25209)

(declare-fun lt!512346 () Unit!25209)

(assert (=> b!1474028 (= lt!512348 lt!512346)))

(assert (=> b!1474028 (rulesProduceIndividualToken!1276 thiss!27374 rules!4290 (h!20910 (t!136020 (Cons!15509 (h!20910 (t!136020 l1!3136)) (t!136020 (t!136020 l1!3136))))))))

(assert (=> b!1474028 (= lt!512346 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!457 thiss!27374 rules!4290 (Cons!15509 (h!20910 (t!136020 l1!3136)) (t!136020 (t!136020 l1!3136))) (h!20910 (t!136020 (Cons!15509 (h!20910 (t!136020 l1!3136)) (t!136020 (t!136020 l1!3136)))))))))

(declare-fun lt!512347 () Unit!25209)

(declare-fun lt!512351 () Unit!25209)

(assert (=> b!1474028 (= lt!512347 lt!512351)))

(assert (=> b!1474028 (rulesProduceIndividualToken!1276 thiss!27374 rules!4290 (h!20910 (Cons!15509 (h!20910 (t!136020 l1!3136)) (t!136020 (t!136020 l1!3136)))))))

(assert (=> b!1474028 (= lt!512351 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!457 thiss!27374 rules!4290 (Cons!15509 (h!20910 (t!136020 l1!3136)) (t!136020 (t!136020 l1!3136))) (h!20910 (Cons!15509 (h!20910 (t!136020 l1!3136)) (t!136020 (t!136020 l1!3136))))))))

(declare-fun b!1474029 () Bool)

(assert (=> b!1474029 (= e!941637 (tokensListTwoByTwoPredicateSeparableList!277 thiss!27374 (Cons!15509 (h!20910 (t!136020 (Cons!15509 (h!20910 (t!136020 l1!3136)) (t!136020 (t!136020 l1!3136))))) (t!136020 (t!136020 (Cons!15509 (h!20910 (t!136020 l1!3136)) (t!136020 (t!136020 l1!3136)))))) rules!4290))))

(assert (= (and d!432056 (not res!666304)) b!1474028))

(assert (= (and b!1474028 res!666305) b!1474029))

(declare-fun m!1718417 () Bool)

(assert (=> b!1474028 m!1718417))

(declare-fun m!1718419 () Bool)

(assert (=> b!1474028 m!1718419))

(declare-fun m!1718421 () Bool)

(assert (=> b!1474028 m!1718421))

(declare-fun m!1718423 () Bool)

(assert (=> b!1474028 m!1718423))

(assert (=> b!1474028 m!1718417))

(declare-fun m!1718425 () Bool)

(assert (=> b!1474028 m!1718425))

(declare-fun m!1718427 () Bool)

(assert (=> b!1474028 m!1718427))

(declare-fun m!1718429 () Bool)

(assert (=> b!1474028 m!1718429))

(declare-fun m!1718431 () Bool)

(assert (=> b!1474029 m!1718431))

(assert (=> b!1473899 d!432056))

(declare-fun d!432058 () Bool)

(declare-fun lt!512354 () Int)

(assert (=> d!432058 (>= lt!512354 0)))

(declare-fun e!941640 () Int)

(assert (=> d!432058 (= lt!512354 e!941640)))

(declare-fun c!242436 () Bool)

(assert (=> d!432058 (= c!242436 ((_ is Nil!15507) (originalCharacters!3623 (h!20910 l2!3105))))))

(assert (=> d!432058 (= (size!12579 (originalCharacters!3623 (h!20910 l2!3105))) lt!512354)))

(declare-fun b!1474034 () Bool)

(assert (=> b!1474034 (= e!941640 0)))

(declare-fun b!1474035 () Bool)

(assert (=> b!1474035 (= e!941640 (+ 1 (size!12579 (t!136018 (originalCharacters!3623 (h!20910 l2!3105))))))))

(assert (= (and d!432058 c!242436) b!1474034))

(assert (= (and d!432058 (not c!242436)) b!1474035))

(declare-fun m!1718433 () Bool)

(assert (=> b!1474035 m!1718433))

(assert (=> b!1473703 d!432058))

(declare-fun d!432060 () Bool)

(assert (=> d!432060 (= (inv!20711 (tag!3025 (rule!4538 (h!20910 (t!136020 l2!3105))))) (= (mod (str.len (value!88310 (tag!3025 (rule!4538 (h!20910 (t!136020 l2!3105)))))) 2) 0))))

(assert (=> b!1473943 d!432060))

(declare-fun d!432062 () Bool)

(declare-fun res!666306 () Bool)

(declare-fun e!941641 () Bool)

(assert (=> d!432062 (=> (not res!666306) (not e!941641))))

(assert (=> d!432062 (= res!666306 (semiInverseModEq!1033 (toChars!3947 (transformation!2761 (rule!4538 (h!20910 (t!136020 l2!3105))))) (toValue!4088 (transformation!2761 (rule!4538 (h!20910 (t!136020 l2!3105)))))))))

(assert (=> d!432062 (= (inv!20715 (transformation!2761 (rule!4538 (h!20910 (t!136020 l2!3105))))) e!941641)))

(declare-fun b!1474036 () Bool)

(assert (=> b!1474036 (= e!941641 (equivClasses!992 (toChars!3947 (transformation!2761 (rule!4538 (h!20910 (t!136020 l2!3105))))) (toValue!4088 (transformation!2761 (rule!4538 (h!20910 (t!136020 l2!3105)))))))))

(assert (= (and d!432062 res!666306) b!1474036))

(declare-fun m!1718435 () Bool)

(assert (=> d!432062 m!1718435))

(declare-fun m!1718437 () Bool)

(assert (=> b!1474036 m!1718437))

(assert (=> b!1473943 d!432062))

(declare-fun d!432064 () Bool)

(declare-fun c!242439 () Bool)

(assert (=> d!432064 (= c!242439 ((_ is Node!5287) (c!242395 (dynLambda!7038 (toChars!3947 (transformation!2761 (rule!4538 (h!20910 l2!3105)))) (value!88336 (h!20910 l2!3105))))))))

(declare-fun e!941646 () Bool)

(assert (=> d!432064 (= (inv!20718 (c!242395 (dynLambda!7038 (toChars!3947 (transformation!2761 (rule!4538 (h!20910 l2!3105)))) (value!88336 (h!20910 l2!3105))))) e!941646)))

(declare-fun b!1474043 () Bool)

(declare-fun inv!20720 (Conc!5287) Bool)

(assert (=> b!1474043 (= e!941646 (inv!20720 (c!242395 (dynLambda!7038 (toChars!3947 (transformation!2761 (rule!4538 (h!20910 l2!3105)))) (value!88336 (h!20910 l2!3105))))))))

(declare-fun b!1474044 () Bool)

(declare-fun e!941647 () Bool)

(assert (=> b!1474044 (= e!941646 e!941647)))

(declare-fun res!666309 () Bool)

(assert (=> b!1474044 (= res!666309 (not ((_ is Leaf!7869) (c!242395 (dynLambda!7038 (toChars!3947 (transformation!2761 (rule!4538 (h!20910 l2!3105)))) (value!88336 (h!20910 l2!3105)))))))))

(assert (=> b!1474044 (=> res!666309 e!941647)))

(declare-fun b!1474045 () Bool)

(declare-fun inv!20721 (Conc!5287) Bool)

(assert (=> b!1474045 (= e!941647 (inv!20721 (c!242395 (dynLambda!7038 (toChars!3947 (transformation!2761 (rule!4538 (h!20910 l2!3105)))) (value!88336 (h!20910 l2!3105))))))))

(assert (= (and d!432064 c!242439) b!1474043))

(assert (= (and d!432064 (not c!242439)) b!1474044))

(assert (= (and b!1474044 (not res!666309)) b!1474045))

(declare-fun m!1718439 () Bool)

(assert (=> b!1474043 m!1718439))

(declare-fun m!1718441 () Bool)

(assert (=> b!1474045 m!1718441))

(assert (=> b!1473708 d!432064))

(declare-fun d!432066 () Bool)

(declare-fun lt!512355 () Bool)

(declare-fun e!941648 () Bool)

(assert (=> d!432066 (= lt!512355 e!941648)))

(declare-fun res!666310 () Bool)

(assert (=> d!432066 (=> (not res!666310) (not e!941648))))

(assert (=> d!432066 (= res!666310 (= (list!6180 (_1!8032 (lex!1089 thiss!27374 rules!4290 (print!1124 thiss!27374 (singletonSeq!1301 (h!20910 (t!136020 l1!3136))))))) (list!6180 (singletonSeq!1301 (h!20910 (t!136020 l1!3136))))))))

(declare-fun e!941649 () Bool)

(assert (=> d!432066 (= lt!512355 e!941649)))

(declare-fun res!666312 () Bool)

(assert (=> d!432066 (=> (not res!666312) (not e!941649))))

(declare-fun lt!512356 () tuple2!14292)

(assert (=> d!432066 (= res!666312 (= (size!12580 (_1!8032 lt!512356)) 1))))

(assert (=> d!432066 (= lt!512356 (lex!1089 thiss!27374 rules!4290 (print!1124 thiss!27374 (singletonSeq!1301 (h!20910 (t!136020 l1!3136))))))))

(assert (=> d!432066 (not (isEmpty!9685 rules!4290))))

(assert (=> d!432066 (= (rulesProduceIndividualToken!1276 thiss!27374 rules!4290 (h!20910 (t!136020 l1!3136))) lt!512355)))

(declare-fun b!1474046 () Bool)

(declare-fun res!666311 () Bool)

(assert (=> b!1474046 (=> (not res!666311) (not e!941649))))

(assert (=> b!1474046 (= res!666311 (= (apply!4000 (_1!8032 lt!512356) 0) (h!20910 (t!136020 l1!3136))))))

(declare-fun b!1474047 () Bool)

(assert (=> b!1474047 (= e!941649 (isEmpty!9690 (_2!8032 lt!512356)))))

(declare-fun b!1474048 () Bool)

(assert (=> b!1474048 (= e!941648 (isEmpty!9690 (_2!8032 (lex!1089 thiss!27374 rules!4290 (print!1124 thiss!27374 (singletonSeq!1301 (h!20910 (t!136020 l1!3136))))))))))

(assert (= (and d!432066 res!666312) b!1474046))

(assert (= (and b!1474046 res!666311) b!1474047))

(assert (= (and d!432066 res!666310) b!1474048))

(declare-fun m!1718443 () Bool)

(assert (=> d!432066 m!1718443))

(declare-fun m!1718445 () Bool)

(assert (=> d!432066 m!1718445))

(declare-fun m!1718447 () Bool)

(assert (=> d!432066 m!1718447))

(declare-fun m!1718449 () Bool)

(assert (=> d!432066 m!1718449))

(declare-fun m!1718451 () Bool)

(assert (=> d!432066 m!1718451))

(assert (=> d!432066 m!1718443))

(declare-fun m!1718453 () Bool)

(assert (=> d!432066 m!1718453))

(assert (=> d!432066 m!1718443))

(assert (=> d!432066 m!1718449))

(assert (=> d!432066 m!1717573))

(declare-fun m!1718455 () Bool)

(assert (=> b!1474046 m!1718455))

(declare-fun m!1718457 () Bool)

(assert (=> b!1474047 m!1718457))

(assert (=> b!1474048 m!1718443))

(assert (=> b!1474048 m!1718443))

(assert (=> b!1474048 m!1718449))

(assert (=> b!1474048 m!1718449))

(assert (=> b!1474048 m!1718451))

(declare-fun m!1718459 () Bool)

(assert (=> b!1474048 m!1718459))

(assert (=> b!1473882 d!432066))

(declare-fun d!432068 () Bool)

(assert (=> d!432068 (= (inv!20711 (tag!3025 (h!20909 (t!136019 rules!4290)))) (= (mod (str.len (value!88310 (tag!3025 (h!20909 (t!136019 rules!4290))))) 2) 0))))

(assert (=> b!1473959 d!432068))

(declare-fun d!432070 () Bool)

(declare-fun res!666313 () Bool)

(declare-fun e!941650 () Bool)

(assert (=> d!432070 (=> (not res!666313) (not e!941650))))

(assert (=> d!432070 (= res!666313 (semiInverseModEq!1033 (toChars!3947 (transformation!2761 (h!20909 (t!136019 rules!4290)))) (toValue!4088 (transformation!2761 (h!20909 (t!136019 rules!4290))))))))

(assert (=> d!432070 (= (inv!20715 (transformation!2761 (h!20909 (t!136019 rules!4290)))) e!941650)))

(declare-fun b!1474049 () Bool)

(assert (=> b!1474049 (= e!941650 (equivClasses!992 (toChars!3947 (transformation!2761 (h!20909 (t!136019 rules!4290)))) (toValue!4088 (transformation!2761 (h!20909 (t!136019 rules!4290))))))))

(assert (= (and d!432070 res!666313) b!1474049))

(declare-fun m!1718461 () Bool)

(assert (=> d!432070 m!1718461))

(declare-fun m!1718463 () Bool)

(assert (=> b!1474049 m!1718463))

(assert (=> b!1473959 d!432070))

(declare-fun d!432072 () Bool)

(assert (=> d!432072 true))

(declare-fun lambda!63573 () Int)

(declare-fun order!9319 () Int)

(declare-fun dynLambda!7041 (Int Int) Int)

(assert (=> d!432072 (< (dynLambda!7035 order!9307 (toValue!4088 (transformation!2761 (h!20909 rules!4290)))) (dynLambda!7041 order!9319 lambda!63573))))

(declare-fun Forall2!471 (Int) Bool)

(assert (=> d!432072 (= (equivClasses!992 (toChars!3947 (transformation!2761 (h!20909 rules!4290))) (toValue!4088 (transformation!2761 (h!20909 rules!4290)))) (Forall2!471 lambda!63573))))

(declare-fun bs!345248 () Bool)

(assert (= bs!345248 d!432072))

(declare-fun m!1718465 () Bool)

(assert (=> bs!345248 m!1718465))

(assert (=> b!1473596 d!432072))

(declare-fun d!432074 () Bool)

(declare-fun e!941655 () Bool)

(assert (=> d!432074 e!941655))

(declare-fun res!666318 () Bool)

(assert (=> d!432074 (=> (not res!666318) (not e!941655))))

(declare-fun lt!512359 () BalanceConc!10516)

(assert (=> d!432074 (= res!666318 (= (list!6180 lt!512359) (Cons!15509 lt!512069 Nil!15509)))))

(declare-fun singleton!545 (Token!5184) BalanceConc!10516)

(assert (=> d!432074 (= lt!512359 (singleton!545 lt!512069))))

(assert (=> d!432074 (= (singletonSeq!1301 lt!512069) lt!512359)))

(declare-fun b!1474056 () Bool)

(declare-fun isBalanced!1577 (Conc!5288) Bool)

(assert (=> b!1474056 (= e!941655 (isBalanced!1577 (c!242396 lt!512359)))))

(assert (= (and d!432074 res!666318) b!1474056))

(declare-fun m!1718467 () Bool)

(assert (=> d!432074 m!1718467))

(declare-fun m!1718469 () Bool)

(assert (=> d!432074 m!1718469))

(declare-fun m!1718471 () Bool)

(assert (=> b!1474056 m!1718471))

(assert (=> d!431972 d!432074))

(declare-fun d!432076 () Bool)

(declare-fun lt!512362 () BalanceConc!10514)

(declare-fun printList!767 (LexerInterface!2417 List!15575) List!15573)

(assert (=> d!432076 (= (list!6181 lt!512362) (printList!767 thiss!27374 (list!6180 (singletonSeq!1301 lt!512069))))))

(declare-fun printTailRec!703 (LexerInterface!2417 BalanceConc!10516 Int BalanceConc!10514) BalanceConc!10514)

(assert (=> d!432076 (= lt!512362 (printTailRec!703 thiss!27374 (singletonSeq!1301 lt!512069) 0 (BalanceConc!10515 Empty!5287)))))

(assert (=> d!432076 (= (print!1124 thiss!27374 (singletonSeq!1301 lt!512069)) lt!512362)))

(declare-fun bs!345249 () Bool)

(assert (= bs!345249 d!432076))

(declare-fun m!1718473 () Bool)

(assert (=> bs!345249 m!1718473))

(assert (=> bs!345249 m!1718065))

(assert (=> bs!345249 m!1718075))

(assert (=> bs!345249 m!1718075))

(declare-fun m!1718475 () Bool)

(assert (=> bs!345249 m!1718475))

(assert (=> bs!345249 m!1718065))

(declare-fun m!1718477 () Bool)

(assert (=> bs!345249 m!1718477))

(assert (=> d!431972 d!432076))

(declare-fun d!432078 () Bool)

(declare-fun lt!512365 () Int)

(assert (=> d!432078 (= lt!512365 (size!12578 (list!6180 (_1!8032 lt!512234))))))

(declare-fun size!12583 (Conc!5288) Int)

(assert (=> d!432078 (= lt!512365 (size!12583 (c!242396 (_1!8032 lt!512234))))))

(assert (=> d!432078 (= (size!12580 (_1!8032 lt!512234)) lt!512365)))

(declare-fun bs!345250 () Bool)

(assert (= bs!345250 d!432078))

(declare-fun m!1718479 () Bool)

(assert (=> bs!345250 m!1718479))

(assert (=> bs!345250 m!1718479))

(declare-fun m!1718481 () Bool)

(assert (=> bs!345250 m!1718481))

(declare-fun m!1718483 () Bool)

(assert (=> bs!345250 m!1718483))

(assert (=> d!431972 d!432078))

(declare-fun d!432080 () Bool)

(declare-fun list!6184 (Conc!5288) List!15575)

(assert (=> d!432080 (= (list!6180 (_1!8032 (lex!1089 thiss!27374 rules!4290 (print!1124 thiss!27374 (singletonSeq!1301 lt!512069))))) (list!6184 (c!242396 (_1!8032 (lex!1089 thiss!27374 rules!4290 (print!1124 thiss!27374 (singletonSeq!1301 lt!512069)))))))))

(declare-fun bs!345251 () Bool)

(assert (= bs!345251 d!432080))

(declare-fun m!1718485 () Bool)

(assert (=> bs!345251 m!1718485))

(assert (=> d!431972 d!432080))

(declare-fun d!432082 () Bool)

(assert (=> d!432082 (= (list!6180 (singletonSeq!1301 lt!512069)) (list!6184 (c!242396 (singletonSeq!1301 lt!512069))))))

(declare-fun bs!345252 () Bool)

(assert (= bs!345252 d!432082))

(declare-fun m!1718487 () Bool)

(assert (=> bs!345252 m!1718487))

(assert (=> d!431972 d!432082))

(assert (=> d!431972 d!431948))

(declare-fun e!941742 () Bool)

(declare-fun b!1474167 () Bool)

(declare-fun lt!512424 () tuple2!14292)

(declare-datatypes ((tuple2!14296 0))(
  ( (tuple2!14297 (_1!8034 List!15575) (_2!8034 List!15573)) )
))
(declare-fun lexList!720 (LexerInterface!2417 List!15574 List!15573) tuple2!14296)

(assert (=> b!1474167 (= e!941742 (= (list!6181 (_2!8032 lt!512424)) (_2!8034 (lexList!720 thiss!27374 rules!4290 (list!6181 (print!1124 thiss!27374 (singletonSeq!1301 lt!512069)))))))))

(declare-fun b!1474168 () Bool)

(declare-fun e!941740 () Bool)

(declare-fun e!941741 () Bool)

(assert (=> b!1474168 (= e!941740 e!941741)))

(declare-fun res!666386 () Bool)

(assert (=> b!1474168 (= res!666386 (< (size!12581 (_2!8032 lt!512424)) (size!12581 (print!1124 thiss!27374 (singletonSeq!1301 lt!512069)))))))

(assert (=> b!1474168 (=> (not res!666386) (not e!941741))))

(declare-fun b!1474170 () Bool)

(declare-fun res!666385 () Bool)

(assert (=> b!1474170 (=> (not res!666385) (not e!941742))))

(assert (=> b!1474170 (= res!666385 (= (list!6180 (_1!8032 lt!512424)) (_1!8034 (lexList!720 thiss!27374 rules!4290 (list!6181 (print!1124 thiss!27374 (singletonSeq!1301 lt!512069)))))))))

(declare-fun b!1474171 () Bool)

(assert (=> b!1474171 (= e!941740 (= (_2!8032 lt!512424) (print!1124 thiss!27374 (singletonSeq!1301 lt!512069))))))

(declare-fun d!432084 () Bool)

(assert (=> d!432084 e!941742))

(declare-fun res!666384 () Bool)

(assert (=> d!432084 (=> (not res!666384) (not e!941742))))

(assert (=> d!432084 (= res!666384 e!941740)))

(declare-fun c!242453 () Bool)

(assert (=> d!432084 (= c!242453 (> (size!12580 (_1!8032 lt!512424)) 0))))

(declare-fun lexTailRecV2!475 (LexerInterface!2417 List!15574 BalanceConc!10514 BalanceConc!10514 BalanceConc!10514 BalanceConc!10516) tuple2!14292)

(assert (=> d!432084 (= lt!512424 (lexTailRecV2!475 thiss!27374 rules!4290 (print!1124 thiss!27374 (singletonSeq!1301 lt!512069)) (BalanceConc!10515 Empty!5287) (print!1124 thiss!27374 (singletonSeq!1301 lt!512069)) (BalanceConc!10517 Empty!5288)))))

(assert (=> d!432084 (= (lex!1089 thiss!27374 rules!4290 (print!1124 thiss!27374 (singletonSeq!1301 lt!512069))) lt!512424)))

(declare-fun b!1474169 () Bool)

(declare-fun isEmpty!9693 (BalanceConc!10516) Bool)

(assert (=> b!1474169 (= e!941741 (not (isEmpty!9693 (_1!8032 lt!512424))))))

(assert (= (and d!432084 c!242453) b!1474168))

(assert (= (and d!432084 (not c!242453)) b!1474171))

(assert (= (and b!1474168 res!666386) b!1474169))

(assert (= (and d!432084 res!666384) b!1474170))

(assert (= (and b!1474170 res!666385) b!1474167))

(declare-fun m!1718715 () Bool)

(assert (=> b!1474169 m!1718715))

(declare-fun m!1718717 () Bool)

(assert (=> b!1474167 m!1718717))

(assert (=> b!1474167 m!1718071))

(declare-fun m!1718719 () Bool)

(assert (=> b!1474167 m!1718719))

(assert (=> b!1474167 m!1718719))

(declare-fun m!1718721 () Bool)

(assert (=> b!1474167 m!1718721))

(declare-fun m!1718723 () Bool)

(assert (=> b!1474168 m!1718723))

(assert (=> b!1474168 m!1718071))

(declare-fun m!1718725 () Bool)

(assert (=> b!1474168 m!1718725))

(declare-fun m!1718727 () Bool)

(assert (=> b!1474170 m!1718727))

(assert (=> b!1474170 m!1718071))

(assert (=> b!1474170 m!1718719))

(assert (=> b!1474170 m!1718719))

(assert (=> b!1474170 m!1718721))

(declare-fun m!1718729 () Bool)

(assert (=> d!432084 m!1718729))

(assert (=> d!432084 m!1718071))

(assert (=> d!432084 m!1718071))

(declare-fun m!1718731 () Bool)

(assert (=> d!432084 m!1718731))

(assert (=> d!431972 d!432084))

(assert (=> b!1473872 d!431958))

(declare-fun d!432170 () Bool)

(declare-fun lt!512427 () Token!5184)

(declare-fun apply!4005 (List!15575 Int) Token!5184)

(assert (=> d!432170 (= lt!512427 (apply!4005 (list!6180 (_1!8032 lt!512230)) 0))))

(declare-fun apply!4006 (Conc!5288 Int) Token!5184)

(assert (=> d!432170 (= lt!512427 (apply!4006 (c!242396 (_1!8032 lt!512230)) 0))))

(declare-fun e!941745 () Bool)

(assert (=> d!432170 e!941745))

(declare-fun res!666389 () Bool)

(assert (=> d!432170 (=> (not res!666389) (not e!941745))))

(assert (=> d!432170 (= res!666389 (<= 0 0))))

(assert (=> d!432170 (= (apply!4000 (_1!8032 lt!512230) 0) lt!512427)))

(declare-fun b!1474174 () Bool)

(assert (=> b!1474174 (= e!941745 (< 0 (size!12580 (_1!8032 lt!512230))))))

(assert (= (and d!432170 res!666389) b!1474174))

(declare-fun m!1718733 () Bool)

(assert (=> d!432170 m!1718733))

(assert (=> d!432170 m!1718733))

(declare-fun m!1718735 () Bool)

(assert (=> d!432170 m!1718735))

(declare-fun m!1718737 () Bool)

(assert (=> d!432170 m!1718737))

(assert (=> b!1474174 m!1718047))

(assert (=> b!1473887 d!432170))

(declare-fun d!432172 () Bool)

(declare-fun res!666390 () Bool)

(declare-fun e!941746 () Bool)

(assert (=> d!432172 (=> res!666390 e!941746)))

(assert (=> d!432172 (= res!666390 (or (not ((_ is Cons!15509) (Cons!15509 (h!20910 (t!136020 (t!136020 l1!3136))) (t!136020 (t!136020 (t!136020 l1!3136)))))) (not ((_ is Cons!15509) (t!136020 (Cons!15509 (h!20910 (t!136020 (t!136020 l1!3136))) (t!136020 (t!136020 (t!136020 l1!3136)))))))))))

(assert (=> d!432172 (= (tokensListTwoByTwoPredicateSeparableList!277 thiss!27374 (Cons!15509 (h!20910 (t!136020 (t!136020 l1!3136))) (t!136020 (t!136020 (t!136020 l1!3136)))) rules!4290) e!941746)))

(declare-fun b!1474175 () Bool)

(declare-fun e!941747 () Bool)

(assert (=> b!1474175 (= e!941746 e!941747)))

(declare-fun res!666391 () Bool)

(assert (=> b!1474175 (=> (not res!666391) (not e!941747))))

(assert (=> b!1474175 (= res!666391 (separableTokensPredicate!560 thiss!27374 (h!20910 (Cons!15509 (h!20910 (t!136020 (t!136020 l1!3136))) (t!136020 (t!136020 (t!136020 l1!3136))))) (h!20910 (t!136020 (Cons!15509 (h!20910 (t!136020 (t!136020 l1!3136))) (t!136020 (t!136020 (t!136020 l1!3136)))))) rules!4290))))

(declare-fun lt!512432 () Unit!25209)

(declare-fun Unit!25244 () Unit!25209)

(assert (=> b!1474175 (= lt!512432 Unit!25244)))

(assert (=> b!1474175 (> (size!12581 (charsOf!1582 (h!20910 (t!136020 (Cons!15509 (h!20910 (t!136020 (t!136020 l1!3136))) (t!136020 (t!136020 (t!136020 l1!3136)))))))) 0)))

(declare-fun lt!512428 () Unit!25209)

(declare-fun Unit!25245 () Unit!25209)

(assert (=> b!1474175 (= lt!512428 Unit!25245)))

(assert (=> b!1474175 (rulesProduceIndividualToken!1276 thiss!27374 rules!4290 (h!20910 (t!136020 (Cons!15509 (h!20910 (t!136020 (t!136020 l1!3136))) (t!136020 (t!136020 (t!136020 l1!3136)))))))))

(declare-fun lt!512433 () Unit!25209)

(declare-fun Unit!25246 () Unit!25209)

(assert (=> b!1474175 (= lt!512433 Unit!25246)))

(assert (=> b!1474175 (rulesProduceIndividualToken!1276 thiss!27374 rules!4290 (h!20910 (Cons!15509 (h!20910 (t!136020 (t!136020 l1!3136))) (t!136020 (t!136020 (t!136020 l1!3136))))))))

(declare-fun lt!512431 () Unit!25209)

(declare-fun lt!512429 () Unit!25209)

(assert (=> b!1474175 (= lt!512431 lt!512429)))

(assert (=> b!1474175 (rulesProduceIndividualToken!1276 thiss!27374 rules!4290 (h!20910 (t!136020 (Cons!15509 (h!20910 (t!136020 (t!136020 l1!3136))) (t!136020 (t!136020 (t!136020 l1!3136)))))))))

(assert (=> b!1474175 (= lt!512429 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!457 thiss!27374 rules!4290 (Cons!15509 (h!20910 (t!136020 (t!136020 l1!3136))) (t!136020 (t!136020 (t!136020 l1!3136)))) (h!20910 (t!136020 (Cons!15509 (h!20910 (t!136020 (t!136020 l1!3136))) (t!136020 (t!136020 (t!136020 l1!3136))))))))))

(declare-fun lt!512430 () Unit!25209)

(declare-fun lt!512434 () Unit!25209)

(assert (=> b!1474175 (= lt!512430 lt!512434)))

(assert (=> b!1474175 (rulesProduceIndividualToken!1276 thiss!27374 rules!4290 (h!20910 (Cons!15509 (h!20910 (t!136020 (t!136020 l1!3136))) (t!136020 (t!136020 (t!136020 l1!3136))))))))

(assert (=> b!1474175 (= lt!512434 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!457 thiss!27374 rules!4290 (Cons!15509 (h!20910 (t!136020 (t!136020 l1!3136))) (t!136020 (t!136020 (t!136020 l1!3136)))) (h!20910 (Cons!15509 (h!20910 (t!136020 (t!136020 l1!3136))) (t!136020 (t!136020 (t!136020 l1!3136)))))))))

(declare-fun b!1474176 () Bool)

(assert (=> b!1474176 (= e!941747 (tokensListTwoByTwoPredicateSeparableList!277 thiss!27374 (Cons!15509 (h!20910 (t!136020 (Cons!15509 (h!20910 (t!136020 (t!136020 l1!3136))) (t!136020 (t!136020 (t!136020 l1!3136)))))) (t!136020 (t!136020 (Cons!15509 (h!20910 (t!136020 (t!136020 l1!3136))) (t!136020 (t!136020 (t!136020 l1!3136))))))) rules!4290))))

(assert (= (and d!432172 (not res!666390)) b!1474175))

(assert (= (and b!1474175 res!666391) b!1474176))

(declare-fun m!1718739 () Bool)

(assert (=> b!1474175 m!1718739))

(declare-fun m!1718741 () Bool)

(assert (=> b!1474175 m!1718741))

(declare-fun m!1718743 () Bool)

(assert (=> b!1474175 m!1718743))

(declare-fun m!1718745 () Bool)

(assert (=> b!1474175 m!1718745))

(assert (=> b!1474175 m!1718739))

(declare-fun m!1718747 () Bool)

(assert (=> b!1474175 m!1718747))

(declare-fun m!1718749 () Bool)

(assert (=> b!1474175 m!1718749))

(declare-fun m!1718751 () Bool)

(assert (=> b!1474175 m!1718751))

(declare-fun m!1718753 () Bool)

(assert (=> b!1474176 m!1718753))

(assert (=> b!1473904 d!432172))

(declare-fun d!432174 () Bool)

(declare-fun res!666396 () Bool)

(declare-fun e!941752 () Bool)

(assert (=> d!432174 (=> res!666396 e!941752)))

(assert (=> d!432174 (= res!666396 ((_ is Nil!15509) lt!512073))))

(assert (=> d!432174 (= (forall!3777 lt!512073 lambda!63546) e!941752)))

(declare-fun b!1474181 () Bool)

(declare-fun e!941753 () Bool)

(assert (=> b!1474181 (= e!941752 e!941753)))

(declare-fun res!666397 () Bool)

(assert (=> b!1474181 (=> (not res!666397) (not e!941753))))

(declare-fun dynLambda!7042 (Int Token!5184) Bool)

(assert (=> b!1474181 (= res!666397 (dynLambda!7042 lambda!63546 (h!20910 lt!512073)))))

(declare-fun b!1474182 () Bool)

(assert (=> b!1474182 (= e!941753 (forall!3777 (t!136020 lt!512073) lambda!63546))))

(assert (= (and d!432174 (not res!666396)) b!1474181))

(assert (= (and b!1474181 res!666397) b!1474182))

(declare-fun b_lambda!46035 () Bool)

(assert (=> (not b_lambda!46035) (not b!1474181)))

(declare-fun m!1718755 () Bool)

(assert (=> b!1474181 m!1718755))

(declare-fun m!1718757 () Bool)

(assert (=> b!1474182 m!1718757))

(assert (=> d!431852 d!432174))

(assert (=> d!431852 d!431948))

(declare-fun bs!345301 () Bool)

(declare-fun d!432176 () Bool)

(assert (= bs!345301 (and d!432176 d!431952)))

(declare-fun lambda!63585 () Int)

(assert (=> bs!345301 (= lambda!63585 lambda!63562)))

(declare-fun bs!345302 () Bool)

(assert (= bs!345302 (and d!432176 d!431830)))

(assert (=> bs!345302 (= lambda!63585 lambda!63542)))

(declare-fun bs!345303 () Bool)

(assert (= bs!345303 (and d!432176 d!431904)))

(assert (=> bs!345303 (= lambda!63585 lambda!63553)))

(declare-fun bs!345304 () Bool)

(assert (= bs!345304 (and d!432176 d!431958)))

(assert (=> bs!345304 (= lambda!63585 lambda!63563)))

(declare-fun bs!345305 () Bool)

(assert (= bs!345305 (and d!432176 d!431852)))

(assert (=> bs!345305 (= lambda!63585 lambda!63546)))

(declare-fun bs!345306 () Bool)

(assert (= bs!345306 (and d!432176 d!431856)))

(assert (=> bs!345306 (= lambda!63585 lambda!63547)))

(declare-fun b!1474187 () Bool)

(declare-fun e!941758 () Bool)

(assert (=> b!1474187 (= e!941758 true)))

(declare-fun b!1474186 () Bool)

(declare-fun e!941757 () Bool)

(assert (=> b!1474186 (= e!941757 e!941758)))

(declare-fun b!1474185 () Bool)

(declare-fun e!941756 () Bool)

(assert (=> b!1474185 (= e!941756 e!941757)))

(assert (=> d!432176 e!941756))

(assert (= b!1474186 b!1474187))

(assert (= b!1474185 b!1474186))

(assert (= (and d!432176 ((_ is Cons!15508) rules!4290)) b!1474185))

(assert (=> b!1474187 (< (dynLambda!7035 order!9307 (toValue!4088 (transformation!2761 (h!20909 rules!4290)))) (dynLambda!7036 order!9309 lambda!63585))))

(assert (=> b!1474187 (< (dynLambda!7037 order!9311 (toChars!3947 (transformation!2761 (h!20909 rules!4290)))) (dynLambda!7036 order!9309 lambda!63585))))

(assert (=> d!432176 true))

(declare-fun lt!512435 () Bool)

(assert (=> d!432176 (= lt!512435 (forall!3777 (list!6180 (seqFromList!1726 lt!512073)) lambda!63585))))

(declare-fun e!941754 () Bool)

(assert (=> d!432176 (= lt!512435 e!941754)))

(declare-fun res!666399 () Bool)

(assert (=> d!432176 (=> res!666399 e!941754)))

(assert (=> d!432176 (= res!666399 (not ((_ is Cons!15509) (list!6180 (seqFromList!1726 lt!512073)))))))

(assert (=> d!432176 (not (isEmpty!9685 rules!4290))))

(assert (=> d!432176 (= (rulesProduceEachTokenIndividuallyList!784 thiss!27374 rules!4290 (list!6180 (seqFromList!1726 lt!512073))) lt!512435)))

(declare-fun b!1474183 () Bool)

(declare-fun e!941755 () Bool)

(assert (=> b!1474183 (= e!941754 e!941755)))

(declare-fun res!666398 () Bool)

(assert (=> b!1474183 (=> (not res!666398) (not e!941755))))

(assert (=> b!1474183 (= res!666398 (rulesProduceIndividualToken!1276 thiss!27374 rules!4290 (h!20910 (list!6180 (seqFromList!1726 lt!512073)))))))

(declare-fun b!1474184 () Bool)

(assert (=> b!1474184 (= e!941755 (rulesProduceEachTokenIndividuallyList!784 thiss!27374 rules!4290 (t!136020 (list!6180 (seqFromList!1726 lt!512073)))))))

(assert (= (and d!432176 (not res!666399)) b!1474183))

(assert (= (and b!1474183 res!666398) b!1474184))

(assert (=> d!432176 m!1717825))

(declare-fun m!1718759 () Bool)

(assert (=> d!432176 m!1718759))

(assert (=> d!432176 m!1717573))

(declare-fun m!1718761 () Bool)

(assert (=> b!1474183 m!1718761))

(declare-fun m!1718763 () Bool)

(assert (=> b!1474184 m!1718763))

(assert (=> b!1473694 d!432176))

(declare-fun d!432178 () Bool)

(assert (=> d!432178 (= (list!6180 (seqFromList!1726 lt!512073)) (list!6184 (c!242396 (seqFromList!1726 lt!512073))))))

(declare-fun bs!345307 () Bool)

(assert (= bs!345307 d!432178))

(declare-fun m!1718765 () Bool)

(assert (=> bs!345307 m!1718765))

(assert (=> b!1473694 d!432178))

(declare-fun bs!345308 () Bool)

(declare-fun d!432180 () Bool)

(assert (= bs!345308 (and d!432180 d!431830)))

(declare-fun lambda!63586 () Int)

(assert (=> bs!345308 (= lambda!63586 lambda!63542)))

(declare-fun bs!345309 () Bool)

(assert (= bs!345309 (and d!432180 d!431904)))

(assert (=> bs!345309 (= lambda!63586 lambda!63553)))

(declare-fun bs!345310 () Bool)

(assert (= bs!345310 (and d!432180 d!431958)))

(assert (=> bs!345310 (= lambda!63586 lambda!63563)))

(declare-fun bs!345311 () Bool)

(assert (= bs!345311 (and d!432180 d!431852)))

(assert (=> bs!345311 (= lambda!63586 lambda!63546)))

(declare-fun bs!345312 () Bool)

(assert (= bs!345312 (and d!432180 d!431856)))

(assert (=> bs!345312 (= lambda!63586 lambda!63547)))

(declare-fun bs!345313 () Bool)

(assert (= bs!345313 (and d!432180 d!432176)))

(assert (=> bs!345313 (= lambda!63586 lambda!63585)))

(declare-fun bs!345314 () Bool)

(assert (= bs!345314 (and d!432180 d!431952)))

(assert (=> bs!345314 (= lambda!63586 lambda!63562)))

(declare-fun b!1474192 () Bool)

(declare-fun e!941763 () Bool)

(assert (=> b!1474192 (= e!941763 true)))

(declare-fun b!1474191 () Bool)

(declare-fun e!941762 () Bool)

(assert (=> b!1474191 (= e!941762 e!941763)))

(declare-fun b!1474190 () Bool)

(declare-fun e!941761 () Bool)

(assert (=> b!1474190 (= e!941761 e!941762)))

(assert (=> d!432180 e!941761))

(assert (= b!1474191 b!1474192))

(assert (= b!1474190 b!1474191))

(assert (= (and d!432180 ((_ is Cons!15508) rules!4290)) b!1474190))

(assert (=> b!1474192 (< (dynLambda!7035 order!9307 (toValue!4088 (transformation!2761 (h!20909 rules!4290)))) (dynLambda!7036 order!9309 lambda!63586))))

(assert (=> b!1474192 (< (dynLambda!7037 order!9311 (toChars!3947 (transformation!2761 (h!20909 rules!4290)))) (dynLambda!7036 order!9309 lambda!63586))))

(assert (=> d!432180 true))

(declare-fun lt!512436 () Bool)

(assert (=> d!432180 (= lt!512436 (forall!3777 (++!4187 (t!136020 l1!3136) l2!3105) lambda!63586))))

(declare-fun e!941759 () Bool)

(assert (=> d!432180 (= lt!512436 e!941759)))

(declare-fun res!666401 () Bool)

(assert (=> d!432180 (=> res!666401 e!941759)))

(assert (=> d!432180 (= res!666401 (not ((_ is Cons!15509) (++!4187 (t!136020 l1!3136) l2!3105))))))

(assert (=> d!432180 (not (isEmpty!9685 rules!4290))))

(assert (=> d!432180 (= (rulesProduceEachTokenIndividuallyList!784 thiss!27374 rules!4290 (++!4187 (t!136020 l1!3136) l2!3105)) lt!512436)))

(declare-fun b!1474188 () Bool)

(declare-fun e!941760 () Bool)

(assert (=> b!1474188 (= e!941759 e!941760)))

(declare-fun res!666400 () Bool)

(assert (=> b!1474188 (=> (not res!666400) (not e!941760))))

(assert (=> b!1474188 (= res!666400 (rulesProduceIndividualToken!1276 thiss!27374 rules!4290 (h!20910 (++!4187 (t!136020 l1!3136) l2!3105))))))

(declare-fun b!1474189 () Bool)

(assert (=> b!1474189 (= e!941760 (rulesProduceEachTokenIndividuallyList!784 thiss!27374 rules!4290 (t!136020 (++!4187 (t!136020 l1!3136) l2!3105))))))

(assert (= (and d!432180 (not res!666401)) b!1474188))

(assert (= (and b!1474188 res!666400) b!1474189))

(assert (=> d!432180 m!1717559))

(declare-fun m!1718767 () Bool)

(assert (=> d!432180 m!1718767))

(assert (=> d!432180 m!1717573))

(declare-fun m!1718769 () Bool)

(assert (=> b!1474188 m!1718769))

(declare-fun m!1718771 () Bool)

(assert (=> b!1474189 m!1718771))

(assert (=> d!431848 d!432180))

(assert (=> d!431848 d!431846))

(declare-fun d!432182 () Bool)

(assert (=> d!432182 (rulesProduceEachTokenIndividuallyList!784 thiss!27374 rules!4290 (++!4187 (t!136020 l1!3136) l2!3105))))

(assert (=> d!432182 true))

(declare-fun _$79!115 () Unit!25209)

(assert (=> d!432182 (= (choose!9037 thiss!27374 rules!4290 (t!136020 l1!3136) l2!3105) _$79!115)))

(declare-fun bs!345322 () Bool)

(assert (= bs!345322 d!432182))

(assert (=> bs!345322 m!1717559))

(assert (=> bs!345322 m!1717559))

(assert (=> bs!345322 m!1717673))

(assert (=> d!431848 d!432182))

(assert (=> d!431848 d!431948))

(declare-fun d!432204 () Bool)

(declare-fun lt!512453 () Bool)

(assert (=> d!432204 (= lt!512453 (isEmpty!9689 (list!6181 (_2!8032 (lex!1089 thiss!27374 rules!4290 (print!1124 thiss!27374 (singletonSeq!1301 lt!512074)))))))))

(declare-fun isEmpty!9694 (Conc!5287) Bool)

(assert (=> d!432204 (= lt!512453 (isEmpty!9694 (c!242395 (_2!8032 (lex!1089 thiss!27374 rules!4290 (print!1124 thiss!27374 (singletonSeq!1301 lt!512074)))))))))

(assert (=> d!432204 (= (isEmpty!9690 (_2!8032 (lex!1089 thiss!27374 rules!4290 (print!1124 thiss!27374 (singletonSeq!1301 lt!512074))))) lt!512453)))

(declare-fun bs!345323 () Bool)

(assert (= bs!345323 d!432204))

(declare-fun m!1718833 () Bool)

(assert (=> bs!345323 m!1718833))

(assert (=> bs!345323 m!1718833))

(declare-fun m!1718835 () Bool)

(assert (=> bs!345323 m!1718835))

(declare-fun m!1718837 () Bool)

(assert (=> bs!345323 m!1718837))

(assert (=> b!1473889 d!432204))

(declare-fun e!941776 () Bool)

(declare-fun lt!512454 () tuple2!14292)

(declare-fun b!1474212 () Bool)

(assert (=> b!1474212 (= e!941776 (= (list!6181 (_2!8032 lt!512454)) (_2!8034 (lexList!720 thiss!27374 rules!4290 (list!6181 (print!1124 thiss!27374 (singletonSeq!1301 lt!512074)))))))))

(declare-fun b!1474213 () Bool)

(declare-fun e!941774 () Bool)

(declare-fun e!941775 () Bool)

(assert (=> b!1474213 (= e!941774 e!941775)))

(declare-fun res!666422 () Bool)

(assert (=> b!1474213 (= res!666422 (< (size!12581 (_2!8032 lt!512454)) (size!12581 (print!1124 thiss!27374 (singletonSeq!1301 lt!512074)))))))

(assert (=> b!1474213 (=> (not res!666422) (not e!941775))))

(declare-fun b!1474215 () Bool)

(declare-fun res!666421 () Bool)

(assert (=> b!1474215 (=> (not res!666421) (not e!941776))))

(assert (=> b!1474215 (= res!666421 (= (list!6180 (_1!8032 lt!512454)) (_1!8034 (lexList!720 thiss!27374 rules!4290 (list!6181 (print!1124 thiss!27374 (singletonSeq!1301 lt!512074)))))))))

(declare-fun b!1474216 () Bool)

(assert (=> b!1474216 (= e!941774 (= (_2!8032 lt!512454) (print!1124 thiss!27374 (singletonSeq!1301 lt!512074))))))

(declare-fun d!432206 () Bool)

(assert (=> d!432206 e!941776))

(declare-fun res!666420 () Bool)

(assert (=> d!432206 (=> (not res!666420) (not e!941776))))

(assert (=> d!432206 (= res!666420 e!941774)))

(declare-fun c!242457 () Bool)

(assert (=> d!432206 (= c!242457 (> (size!12580 (_1!8032 lt!512454)) 0))))

(assert (=> d!432206 (= lt!512454 (lexTailRecV2!475 thiss!27374 rules!4290 (print!1124 thiss!27374 (singletonSeq!1301 lt!512074)) (BalanceConc!10515 Empty!5287) (print!1124 thiss!27374 (singletonSeq!1301 lt!512074)) (BalanceConc!10517 Empty!5288)))))

(assert (=> d!432206 (= (lex!1089 thiss!27374 rules!4290 (print!1124 thiss!27374 (singletonSeq!1301 lt!512074))) lt!512454)))

(declare-fun b!1474214 () Bool)

(assert (=> b!1474214 (= e!941775 (not (isEmpty!9693 (_1!8032 lt!512454))))))

(assert (= (and d!432206 c!242457) b!1474213))

(assert (= (and d!432206 (not c!242457)) b!1474216))

(assert (= (and b!1474213 res!666422) b!1474214))

(assert (= (and d!432206 res!666420) b!1474215))

(assert (= (and b!1474215 res!666421) b!1474212))

(declare-fun m!1718839 () Bool)

(assert (=> b!1474214 m!1718839))

(declare-fun m!1718841 () Bool)

(assert (=> b!1474212 m!1718841))

(assert (=> b!1474212 m!1718049))

(declare-fun m!1718843 () Bool)

(assert (=> b!1474212 m!1718843))

(assert (=> b!1474212 m!1718843))

(declare-fun m!1718845 () Bool)

(assert (=> b!1474212 m!1718845))

(declare-fun m!1718847 () Bool)

(assert (=> b!1474213 m!1718847))

(assert (=> b!1474213 m!1718049))

(declare-fun m!1718849 () Bool)

(assert (=> b!1474213 m!1718849))

(declare-fun m!1718851 () Bool)

(assert (=> b!1474215 m!1718851))

(assert (=> b!1474215 m!1718049))

(assert (=> b!1474215 m!1718843))

(assert (=> b!1474215 m!1718843))

(assert (=> b!1474215 m!1718845))

(declare-fun m!1718853 () Bool)

(assert (=> d!432206 m!1718853))

(assert (=> d!432206 m!1718049))

(assert (=> d!432206 m!1718049))

(declare-fun m!1718855 () Bool)

(assert (=> d!432206 m!1718855))

(assert (=> b!1473889 d!432206))

(declare-fun d!432208 () Bool)

(declare-fun lt!512455 () BalanceConc!10514)

(assert (=> d!432208 (= (list!6181 lt!512455) (printList!767 thiss!27374 (list!6180 (singletonSeq!1301 lt!512074))))))

(assert (=> d!432208 (= lt!512455 (printTailRec!703 thiss!27374 (singletonSeq!1301 lt!512074) 0 (BalanceConc!10515 Empty!5287)))))

(assert (=> d!432208 (= (print!1124 thiss!27374 (singletonSeq!1301 lt!512074)) lt!512455)))

(declare-fun bs!345324 () Bool)

(assert (= bs!345324 d!432208))

(declare-fun m!1718857 () Bool)

(assert (=> bs!345324 m!1718857))

(assert (=> bs!345324 m!1718043))

(assert (=> bs!345324 m!1718053))

(assert (=> bs!345324 m!1718053))

(declare-fun m!1718859 () Bool)

(assert (=> bs!345324 m!1718859))

(assert (=> bs!345324 m!1718043))

(declare-fun m!1718861 () Bool)

(assert (=> bs!345324 m!1718861))

(assert (=> b!1473889 d!432208))

(declare-fun d!432210 () Bool)

(declare-fun e!941777 () Bool)

(assert (=> d!432210 e!941777))

(declare-fun res!666423 () Bool)

(assert (=> d!432210 (=> (not res!666423) (not e!941777))))

(declare-fun lt!512456 () BalanceConc!10516)

(assert (=> d!432210 (= res!666423 (= (list!6180 lt!512456) (Cons!15509 lt!512074 Nil!15509)))))

(assert (=> d!432210 (= lt!512456 (singleton!545 lt!512074))))

(assert (=> d!432210 (= (singletonSeq!1301 lt!512074) lt!512456)))

(declare-fun b!1474217 () Bool)

(assert (=> b!1474217 (= e!941777 (isBalanced!1577 (c!242396 lt!512456)))))

(assert (= (and d!432210 res!666423) b!1474217))

(declare-fun m!1718863 () Bool)

(assert (=> d!432210 m!1718863))

(declare-fun m!1718865 () Bool)

(assert (=> d!432210 m!1718865))

(declare-fun m!1718867 () Bool)

(assert (=> b!1474217 m!1718867))

(assert (=> b!1473889 d!432210))

(declare-fun d!432212 () Bool)

(declare-fun charsToBigInt!0 (List!15572 Int) Int)

(assert (=> d!432212 (= (inv!15 (value!88336 (h!20910 l1!3136))) (= (charsToBigInt!0 (text!20406 (value!88336 (h!20910 l1!3136))) 0) (value!88332 (value!88336 (h!20910 l1!3136)))))))

(declare-fun bs!345325 () Bool)

(assert (= bs!345325 d!432212))

(declare-fun m!1718869 () Bool)

(assert (=> bs!345325 m!1718869))

(assert (=> b!1473909 d!432212))

(assert (=> d!431964 d!432210))

(assert (=> d!431964 d!432208))

(declare-fun d!432214 () Bool)

(assert (=> d!432214 (= (list!6180 (singletonSeq!1301 lt!512074)) (list!6184 (c!242396 (singletonSeq!1301 lt!512074))))))

(declare-fun bs!345326 () Bool)

(assert (= bs!345326 d!432214))

(declare-fun m!1718871 () Bool)

(assert (=> bs!345326 m!1718871))

(assert (=> d!431964 d!432214))

(assert (=> d!431964 d!432206))

(declare-fun d!432216 () Bool)

(declare-fun lt!512457 () Int)

(assert (=> d!432216 (= lt!512457 (size!12578 (list!6180 (_1!8032 lt!512230))))))

(assert (=> d!432216 (= lt!512457 (size!12583 (c!242396 (_1!8032 lt!512230))))))

(assert (=> d!432216 (= (size!12580 (_1!8032 lt!512230)) lt!512457)))

(declare-fun bs!345327 () Bool)

(assert (= bs!345327 d!432216))

(assert (=> bs!345327 m!1718733))

(assert (=> bs!345327 m!1718733))

(declare-fun m!1718873 () Bool)

(assert (=> bs!345327 m!1718873))

(declare-fun m!1718875 () Bool)

(assert (=> bs!345327 m!1718875))

(assert (=> d!431964 d!432216))

(assert (=> d!431964 d!431948))

(declare-fun d!432218 () Bool)

(assert (=> d!432218 (= (list!6180 (_1!8032 (lex!1089 thiss!27374 rules!4290 (print!1124 thiss!27374 (singletonSeq!1301 lt!512074))))) (list!6184 (c!242396 (_1!8032 (lex!1089 thiss!27374 rules!4290 (print!1124 thiss!27374 (singletonSeq!1301 lt!512074)))))))))

(declare-fun bs!345328 () Bool)

(assert (= bs!345328 d!432218))

(declare-fun m!1718877 () Bool)

(assert (=> bs!345328 m!1718877))

(assert (=> d!431964 d!432218))

(declare-fun d!432220 () Bool)

(declare-fun res!666424 () Bool)

(declare-fun e!941778 () Bool)

(assert (=> d!432220 (=> res!666424 e!941778)))

(assert (=> d!432220 (= res!666424 (or (not ((_ is Cons!15509) (Cons!15509 (h!20910 (t!136020 l2!3105)) (t!136020 (t!136020 l2!3105))))) (not ((_ is Cons!15509) (t!136020 (Cons!15509 (h!20910 (t!136020 l2!3105)) (t!136020 (t!136020 l2!3105))))))))))

(assert (=> d!432220 (= (tokensListTwoByTwoPredicateSeparableList!277 thiss!27374 (Cons!15509 (h!20910 (t!136020 l2!3105)) (t!136020 (t!136020 l2!3105))) rules!4290) e!941778)))

(declare-fun b!1474218 () Bool)

(declare-fun e!941779 () Bool)

(assert (=> b!1474218 (= e!941778 e!941779)))

(declare-fun res!666425 () Bool)

(assert (=> b!1474218 (=> (not res!666425) (not e!941779))))

(assert (=> b!1474218 (= res!666425 (separableTokensPredicate!560 thiss!27374 (h!20910 (Cons!15509 (h!20910 (t!136020 l2!3105)) (t!136020 (t!136020 l2!3105)))) (h!20910 (t!136020 (Cons!15509 (h!20910 (t!136020 l2!3105)) (t!136020 (t!136020 l2!3105))))) rules!4290))))

(declare-fun lt!512462 () Unit!25209)

(declare-fun Unit!25253 () Unit!25209)

(assert (=> b!1474218 (= lt!512462 Unit!25253)))

(assert (=> b!1474218 (> (size!12581 (charsOf!1582 (h!20910 (t!136020 (Cons!15509 (h!20910 (t!136020 l2!3105)) (t!136020 (t!136020 l2!3105))))))) 0)))

(declare-fun lt!512458 () Unit!25209)

(declare-fun Unit!25254 () Unit!25209)

(assert (=> b!1474218 (= lt!512458 Unit!25254)))

(assert (=> b!1474218 (rulesProduceIndividualToken!1276 thiss!27374 rules!4290 (h!20910 (t!136020 (Cons!15509 (h!20910 (t!136020 l2!3105)) (t!136020 (t!136020 l2!3105))))))))

(declare-fun lt!512463 () Unit!25209)

(declare-fun Unit!25255 () Unit!25209)

(assert (=> b!1474218 (= lt!512463 Unit!25255)))

(assert (=> b!1474218 (rulesProduceIndividualToken!1276 thiss!27374 rules!4290 (h!20910 (Cons!15509 (h!20910 (t!136020 l2!3105)) (t!136020 (t!136020 l2!3105)))))))

(declare-fun lt!512461 () Unit!25209)

(declare-fun lt!512459 () Unit!25209)

(assert (=> b!1474218 (= lt!512461 lt!512459)))

(assert (=> b!1474218 (rulesProduceIndividualToken!1276 thiss!27374 rules!4290 (h!20910 (t!136020 (Cons!15509 (h!20910 (t!136020 l2!3105)) (t!136020 (t!136020 l2!3105))))))))

(assert (=> b!1474218 (= lt!512459 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!457 thiss!27374 rules!4290 (Cons!15509 (h!20910 (t!136020 l2!3105)) (t!136020 (t!136020 l2!3105))) (h!20910 (t!136020 (Cons!15509 (h!20910 (t!136020 l2!3105)) (t!136020 (t!136020 l2!3105)))))))))

(declare-fun lt!512460 () Unit!25209)

(declare-fun lt!512464 () Unit!25209)

(assert (=> b!1474218 (= lt!512460 lt!512464)))

(assert (=> b!1474218 (rulesProduceIndividualToken!1276 thiss!27374 rules!4290 (h!20910 (Cons!15509 (h!20910 (t!136020 l2!3105)) (t!136020 (t!136020 l2!3105)))))))

(assert (=> b!1474218 (= lt!512464 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!457 thiss!27374 rules!4290 (Cons!15509 (h!20910 (t!136020 l2!3105)) (t!136020 (t!136020 l2!3105))) (h!20910 (Cons!15509 (h!20910 (t!136020 l2!3105)) (t!136020 (t!136020 l2!3105))))))))

(declare-fun b!1474219 () Bool)

(assert (=> b!1474219 (= e!941779 (tokensListTwoByTwoPredicateSeparableList!277 thiss!27374 (Cons!15509 (h!20910 (t!136020 (Cons!15509 (h!20910 (t!136020 l2!3105)) (t!136020 (t!136020 l2!3105))))) (t!136020 (t!136020 (Cons!15509 (h!20910 (t!136020 l2!3105)) (t!136020 (t!136020 l2!3105)))))) rules!4290))))

(assert (= (and d!432220 (not res!666424)) b!1474218))

(assert (= (and b!1474218 res!666425) b!1474219))

(declare-fun m!1718879 () Bool)

(assert (=> b!1474218 m!1718879))

(declare-fun m!1718881 () Bool)

(assert (=> b!1474218 m!1718881))

(declare-fun m!1718883 () Bool)

(assert (=> b!1474218 m!1718883))

(declare-fun m!1718885 () Bool)

(assert (=> b!1474218 m!1718885))

(assert (=> b!1474218 m!1718879))

(declare-fun m!1718887 () Bool)

(assert (=> b!1474218 m!1718887))

(declare-fun m!1718889 () Bool)

(assert (=> b!1474218 m!1718889))

(declare-fun m!1718891 () Bool)

(assert (=> b!1474218 m!1718891))

(declare-fun m!1718893 () Bool)

(assert (=> b!1474219 m!1718893))

(assert (=> b!1473881 d!432220))

(declare-fun d!432222 () Bool)

(declare-fun res!666426 () Bool)

(declare-fun e!941780 () Bool)

(assert (=> d!432222 (=> res!666426 e!941780)))

(assert (=> d!432222 (= res!666426 ((_ is Nil!15509) (t!136020 l1!3136)))))

(assert (=> d!432222 (= (forall!3777 (t!136020 l1!3136) lambda!63563) e!941780)))

(declare-fun b!1474220 () Bool)

(declare-fun e!941781 () Bool)

(assert (=> b!1474220 (= e!941780 e!941781)))

(declare-fun res!666427 () Bool)

(assert (=> b!1474220 (=> (not res!666427) (not e!941781))))

(assert (=> b!1474220 (= res!666427 (dynLambda!7042 lambda!63563 (h!20910 (t!136020 l1!3136))))))

(declare-fun b!1474221 () Bool)

(assert (=> b!1474221 (= e!941781 (forall!3777 (t!136020 (t!136020 l1!3136)) lambda!63563))))

(assert (= (and d!432222 (not res!666426)) b!1474220))

(assert (= (and b!1474220 res!666427) b!1474221))

(declare-fun b_lambda!46039 () Bool)

(assert (=> (not b_lambda!46039) (not b!1474220)))

(declare-fun m!1718895 () Bool)

(assert (=> b!1474220 m!1718895))

(declare-fun m!1718897 () Bool)

(assert (=> b!1474221 m!1718897))

(assert (=> d!431958 d!432222))

(assert (=> d!431958 d!431948))

(declare-fun e!941784 () Bool)

(declare-fun lt!512465 () tuple2!14292)

(declare-fun b!1474222 () Bool)

(assert (=> b!1474222 (= e!941784 (= (list!6181 (_2!8032 lt!512465)) (_2!8034 (lexList!720 thiss!27374 rules!4290 (list!6181 (print!1124 thiss!27374 (singletonSeq!1301 lt!512076)))))))))

(declare-fun b!1474223 () Bool)

(declare-fun e!941782 () Bool)

(declare-fun e!941783 () Bool)

(assert (=> b!1474223 (= e!941782 e!941783)))

(declare-fun res!666430 () Bool)

(assert (=> b!1474223 (= res!666430 (< (size!12581 (_2!8032 lt!512465)) (size!12581 (print!1124 thiss!27374 (singletonSeq!1301 lt!512076)))))))

(assert (=> b!1474223 (=> (not res!666430) (not e!941783))))

(declare-fun b!1474225 () Bool)

(declare-fun res!666429 () Bool)

(assert (=> b!1474225 (=> (not res!666429) (not e!941784))))

(assert (=> b!1474225 (= res!666429 (= (list!6180 (_1!8032 lt!512465)) (_1!8034 (lexList!720 thiss!27374 rules!4290 (list!6181 (print!1124 thiss!27374 (singletonSeq!1301 lt!512076)))))))))

(declare-fun b!1474226 () Bool)

(assert (=> b!1474226 (= e!941782 (= (_2!8032 lt!512465) (print!1124 thiss!27374 (singletonSeq!1301 lt!512076))))))

(declare-fun d!432224 () Bool)

(assert (=> d!432224 e!941784))

(declare-fun res!666428 () Bool)

(assert (=> d!432224 (=> (not res!666428) (not e!941784))))

(assert (=> d!432224 (= res!666428 e!941782)))

(declare-fun c!242458 () Bool)

(assert (=> d!432224 (= c!242458 (> (size!12580 (_1!8032 lt!512465)) 0))))

(assert (=> d!432224 (= lt!512465 (lexTailRecV2!475 thiss!27374 rules!4290 (print!1124 thiss!27374 (singletonSeq!1301 lt!512076)) (BalanceConc!10515 Empty!5287) (print!1124 thiss!27374 (singletonSeq!1301 lt!512076)) (BalanceConc!10517 Empty!5288)))))

(assert (=> d!432224 (= (lex!1089 thiss!27374 rules!4290 (print!1124 thiss!27374 (singletonSeq!1301 lt!512076))) lt!512465)))

(declare-fun b!1474224 () Bool)

(assert (=> b!1474224 (= e!941783 (not (isEmpty!9693 (_1!8032 lt!512465))))))

(assert (= (and d!432224 c!242458) b!1474223))

(assert (= (and d!432224 (not c!242458)) b!1474226))

(assert (= (and b!1474223 res!666430) b!1474224))

(assert (= (and d!432224 res!666428) b!1474225))

(assert (= (and b!1474225 res!666429) b!1474222))

(declare-fun m!1718899 () Bool)

(assert (=> b!1474224 m!1718899))

(declare-fun m!1718901 () Bool)

(assert (=> b!1474222 m!1718901))

(assert (=> b!1474222 m!1717893))

(declare-fun m!1718903 () Bool)

(assert (=> b!1474222 m!1718903))

(assert (=> b!1474222 m!1718903))

(declare-fun m!1718905 () Bool)

(assert (=> b!1474222 m!1718905))

(declare-fun m!1718907 () Bool)

(assert (=> b!1474223 m!1718907))

(assert (=> b!1474223 m!1717893))

(declare-fun m!1718909 () Bool)

(assert (=> b!1474223 m!1718909))

(declare-fun m!1718911 () Bool)

(assert (=> b!1474225 m!1718911))

(assert (=> b!1474225 m!1717893))

(assert (=> b!1474225 m!1718903))

(assert (=> b!1474225 m!1718903))

(assert (=> b!1474225 m!1718905))

(declare-fun m!1718913 () Bool)

(assert (=> d!432224 m!1718913))

(assert (=> d!432224 m!1717893))

(assert (=> d!432224 m!1717893))

(declare-fun m!1718915 () Bool)

(assert (=> d!432224 m!1718915))

(assert (=> d!431914 d!432224))

(declare-fun d!432226 () Bool)

(assert (=> d!432226 (= (list!6180 (singletonSeq!1301 lt!512076)) (list!6184 (c!242396 (singletonSeq!1301 lt!512076))))))

(declare-fun bs!345329 () Bool)

(assert (= bs!345329 d!432226))

(declare-fun m!1718917 () Bool)

(assert (=> bs!345329 m!1718917))

(assert (=> d!431914 d!432226))

(declare-fun d!432228 () Bool)

(assert (=> d!432228 (= (list!6180 (_1!8032 (lex!1089 thiss!27374 rules!4290 (print!1124 thiss!27374 (singletonSeq!1301 lt!512076))))) (list!6184 (c!242396 (_1!8032 (lex!1089 thiss!27374 rules!4290 (print!1124 thiss!27374 (singletonSeq!1301 lt!512076)))))))))

(declare-fun bs!345330 () Bool)

(assert (= bs!345330 d!432228))

(declare-fun m!1718919 () Bool)

(assert (=> bs!345330 m!1718919))

(assert (=> d!431914 d!432228))

(assert (=> d!431914 d!431948))

(declare-fun d!432230 () Bool)

(declare-fun lt!512466 () BalanceConc!10514)

(assert (=> d!432230 (= (list!6181 lt!512466) (printList!767 thiss!27374 (list!6180 (singletonSeq!1301 lt!512076))))))

(assert (=> d!432230 (= lt!512466 (printTailRec!703 thiss!27374 (singletonSeq!1301 lt!512076) 0 (BalanceConc!10515 Empty!5287)))))

(assert (=> d!432230 (= (print!1124 thiss!27374 (singletonSeq!1301 lt!512076)) lt!512466)))

(declare-fun bs!345331 () Bool)

(assert (= bs!345331 d!432230))

(declare-fun m!1718921 () Bool)

(assert (=> bs!345331 m!1718921))

(assert (=> bs!345331 m!1717887))

(assert (=> bs!345331 m!1717897))

(assert (=> bs!345331 m!1717897))

(declare-fun m!1718923 () Bool)

(assert (=> bs!345331 m!1718923))

(assert (=> bs!345331 m!1717887))

(declare-fun m!1718925 () Bool)

(assert (=> bs!345331 m!1718925))

(assert (=> d!431914 d!432230))

(declare-fun d!432232 () Bool)

(declare-fun lt!512467 () Int)

(assert (=> d!432232 (= lt!512467 (size!12578 (list!6180 (_1!8032 lt!512173))))))

(assert (=> d!432232 (= lt!512467 (size!12583 (c!242396 (_1!8032 lt!512173))))))

(assert (=> d!432232 (= (size!12580 (_1!8032 lt!512173)) lt!512467)))

(declare-fun bs!345332 () Bool)

(assert (= bs!345332 d!432232))

(declare-fun m!1718927 () Bool)

(assert (=> bs!345332 m!1718927))

(assert (=> bs!345332 m!1718927))

(declare-fun m!1718929 () Bool)

(assert (=> bs!345332 m!1718929))

(declare-fun m!1718931 () Bool)

(assert (=> bs!345332 m!1718931))

(assert (=> d!431914 d!432232))

(declare-fun d!432234 () Bool)

(declare-fun e!941785 () Bool)

(assert (=> d!432234 e!941785))

(declare-fun res!666431 () Bool)

(assert (=> d!432234 (=> (not res!666431) (not e!941785))))

(declare-fun lt!512468 () BalanceConc!10516)

(assert (=> d!432234 (= res!666431 (= (list!6180 lt!512468) (Cons!15509 lt!512076 Nil!15509)))))

(assert (=> d!432234 (= lt!512468 (singleton!545 lt!512076))))

(assert (=> d!432234 (= (singletonSeq!1301 lt!512076) lt!512468)))

(declare-fun b!1474227 () Bool)

(assert (=> b!1474227 (= e!941785 (isBalanced!1577 (c!242396 lt!512468)))))

(assert (= (and d!432234 res!666431) b!1474227))

(declare-fun m!1718933 () Bool)

(assert (=> d!432234 m!1718933))

(declare-fun m!1718935 () Bool)

(assert (=> d!432234 m!1718935))

(declare-fun m!1718937 () Bool)

(assert (=> b!1474227 m!1718937))

(assert (=> d!431914 d!432234))

(declare-fun d!432236 () Bool)

(declare-fun c!242461 () Bool)

(assert (=> d!432236 (= c!242461 ((_ is Nil!15509) lt!512099))))

(declare-fun e!941788 () (InoxSet Token!5184))

(assert (=> d!432236 (= (content!2267 lt!512099) e!941788)))

(declare-fun b!1474232 () Bool)

(assert (=> b!1474232 (= e!941788 ((as const (Array Token!5184 Bool)) false))))

(declare-fun b!1474233 () Bool)

(assert (=> b!1474233 (= e!941788 ((_ map or) (store ((as const (Array Token!5184 Bool)) false) (h!20910 lt!512099) true) (content!2267 (t!136020 lt!512099))))))

(assert (= (and d!432236 c!242461) b!1474232))

(assert (= (and d!432236 (not c!242461)) b!1474233))

(declare-fun m!1718939 () Bool)

(assert (=> b!1474233 m!1718939))

(declare-fun m!1718941 () Bool)

(assert (=> b!1474233 m!1718941))

(assert (=> d!431846 d!432236))

(declare-fun d!432238 () Bool)

(declare-fun c!242462 () Bool)

(assert (=> d!432238 (= c!242462 ((_ is Nil!15509) (t!136020 l1!3136)))))

(declare-fun e!941789 () (InoxSet Token!5184))

(assert (=> d!432238 (= (content!2267 (t!136020 l1!3136)) e!941789)))

(declare-fun b!1474234 () Bool)

(assert (=> b!1474234 (= e!941789 ((as const (Array Token!5184 Bool)) false))))

(declare-fun b!1474235 () Bool)

(assert (=> b!1474235 (= e!941789 ((_ map or) (store ((as const (Array Token!5184 Bool)) false) (h!20910 (t!136020 l1!3136)) true) (content!2267 (t!136020 (t!136020 l1!3136)))))))

(assert (= (and d!432238 c!242462) b!1474234))

(assert (= (and d!432238 (not c!242462)) b!1474235))

(declare-fun m!1718943 () Bool)

(assert (=> b!1474235 m!1718943))

(declare-fun m!1718945 () Bool)

(assert (=> b!1474235 m!1718945))

(assert (=> d!431846 d!432238))

(declare-fun d!432240 () Bool)

(declare-fun c!242463 () Bool)

(assert (=> d!432240 (= c!242463 ((_ is Nil!15509) l2!3105))))

(declare-fun e!941790 () (InoxSet Token!5184))

(assert (=> d!432240 (= (content!2267 l2!3105) e!941790)))

(declare-fun b!1474236 () Bool)

(assert (=> b!1474236 (= e!941790 ((as const (Array Token!5184 Bool)) false))))

(declare-fun b!1474237 () Bool)

(assert (=> b!1474237 (= e!941790 ((_ map or) (store ((as const (Array Token!5184 Bool)) false) (h!20910 l2!3105) true) (content!2267 (t!136020 l2!3105))))))

(assert (= (and d!432240 c!242463) b!1474236))

(assert (= (and d!432240 (not c!242463)) b!1474237))

(declare-fun m!1718947 () Bool)

(assert (=> b!1474237 m!1718947))

(declare-fun m!1718949 () Bool)

(assert (=> b!1474237 m!1718949))

(assert (=> d!431846 d!432240))

(assert (=> d!431970 d!431964))

(declare-fun d!432242 () Bool)

(assert (=> d!432242 (rulesProduceIndividualToken!1276 thiss!27374 rules!4290 lt!512074)))

(assert (=> d!432242 true))

(declare-fun _$77!633 () Unit!25209)

(assert (=> d!432242 (= (choose!9039 thiss!27374 rules!4290 l2!3105 lt!512074) _$77!633)))

(declare-fun bs!345350 () Bool)

(assert (= bs!345350 d!432242))

(assert (=> bs!345350 m!1717537))

(assert (=> d!431970 d!432242))

(assert (=> d!431970 d!431948))

(assert (=> b!1473685 d!431830))

(declare-fun d!432274 () Bool)

(declare-fun charsToInt!0 (List!15572) (_ BitVec 32))

(assert (=> d!432274 (= (inv!16 (value!88336 (h!20910 l1!3136))) (= (charsToInt!0 (text!20404 (value!88336 (h!20910 l1!3136)))) (value!88328 (value!88336 (h!20910 l1!3136)))))))

(declare-fun bs!345351 () Bool)

(assert (= bs!345351 d!432274))

(declare-fun m!1719067 () Bool)

(assert (=> bs!345351 m!1719067))

(assert (=> b!1473911 d!432274))

(declare-fun d!432276 () Bool)

(declare-fun res!666442 () Bool)

(declare-fun e!941808 () Bool)

(assert (=> d!432276 (=> (not res!666442) (not e!941808))))

(assert (=> d!432276 (= res!666442 (not (isEmpty!9689 (originalCharacters!3623 (h!20910 (t!136020 l2!3105))))))))

(assert (=> d!432276 (= (inv!20714 (h!20910 (t!136020 l2!3105))) e!941808)))

(declare-fun b!1474263 () Bool)

(declare-fun res!666443 () Bool)

(assert (=> b!1474263 (=> (not res!666443) (not e!941808))))

(assert (=> b!1474263 (= res!666443 (= (originalCharacters!3623 (h!20910 (t!136020 l2!3105))) (list!6181 (dynLambda!7038 (toChars!3947 (transformation!2761 (rule!4538 (h!20910 (t!136020 l2!3105))))) (value!88336 (h!20910 (t!136020 l2!3105)))))))))

(declare-fun b!1474264 () Bool)

(assert (=> b!1474264 (= e!941808 (= (size!12573 (h!20910 (t!136020 l2!3105))) (size!12579 (originalCharacters!3623 (h!20910 (t!136020 l2!3105))))))))

(assert (= (and d!432276 res!666442) b!1474263))

(assert (= (and b!1474263 res!666443) b!1474264))

(declare-fun b_lambda!46047 () Bool)

(assert (=> (not b_lambda!46047) (not b!1474263)))

(declare-fun t!136177 () Bool)

(declare-fun tb!83717 () Bool)

(assert (=> (and b!1473535 (= (toChars!3947 (transformation!2761 (rule!4538 (h!20910 l2!3105)))) (toChars!3947 (transformation!2761 (rule!4538 (h!20910 (t!136020 l2!3105)))))) t!136177) tb!83717))

(declare-fun b!1474265 () Bool)

(declare-fun e!941809 () Bool)

(declare-fun tp!416736 () Bool)

(assert (=> b!1474265 (= e!941809 (and (inv!20718 (c!242395 (dynLambda!7038 (toChars!3947 (transformation!2761 (rule!4538 (h!20910 (t!136020 l2!3105))))) (value!88336 (h!20910 (t!136020 l2!3105)))))) tp!416736))))

(declare-fun result!100642 () Bool)

(assert (=> tb!83717 (= result!100642 (and (inv!20719 (dynLambda!7038 (toChars!3947 (transformation!2761 (rule!4538 (h!20910 (t!136020 l2!3105))))) (value!88336 (h!20910 (t!136020 l2!3105))))) e!941809))))

(assert (= tb!83717 b!1474265))

(declare-fun m!1719069 () Bool)

(assert (=> b!1474265 m!1719069))

(declare-fun m!1719071 () Bool)

(assert (=> tb!83717 m!1719071))

(assert (=> b!1474263 t!136177))

(declare-fun b_and!101501 () Bool)

(assert (= b_and!101441 (and (=> t!136177 result!100642) b_and!101501)))

(declare-fun t!136179 () Bool)

(declare-fun tb!83719 () Bool)

(assert (=> (and b!1473960 (= (toChars!3947 (transformation!2761 (h!20909 (t!136019 rules!4290)))) (toChars!3947 (transformation!2761 (rule!4538 (h!20910 (t!136020 l2!3105)))))) t!136179) tb!83719))

(declare-fun result!100644 () Bool)

(assert (= result!100644 result!100642))

(assert (=> b!1474263 t!136179))

(declare-fun b_and!101503 () Bool)

(assert (= b_and!101443 (and (=> t!136179 result!100644) b_and!101503)))

(declare-fun t!136181 () Bool)

(declare-fun tb!83721 () Bool)

(assert (=> (and b!1473944 (= (toChars!3947 (transformation!2761 (rule!4538 (h!20910 (t!136020 l2!3105))))) (toChars!3947 (transformation!2761 (rule!4538 (h!20910 (t!136020 l2!3105)))))) t!136181) tb!83721))

(declare-fun result!100646 () Bool)

(assert (= result!100646 result!100642))

(assert (=> b!1474263 t!136181))

(declare-fun b_and!101505 () Bool)

(assert (= b_and!101451 (and (=> t!136181 result!100646) b_and!101505)))

(declare-fun t!136183 () Bool)

(declare-fun tb!83723 () Bool)

(assert (=> (and b!1473555 (= (toChars!3947 (transformation!2761 (rule!4538 (h!20910 l1!3136)))) (toChars!3947 (transformation!2761 (rule!4538 (h!20910 (t!136020 l2!3105)))))) t!136183) tb!83723))

(declare-fun result!100648 () Bool)

(assert (= result!100648 result!100642))

(assert (=> b!1474263 t!136183))

(declare-fun b_and!101507 () Bool)

(assert (= b_and!101447 (and (=> t!136183 result!100648) b_and!101507)))

(declare-fun t!136185 () Bool)

(declare-fun tb!83725 () Bool)

(assert (=> (and b!1473968 (= (toChars!3947 (transformation!2761 (rule!4538 (h!20910 (t!136020 l1!3136))))) (toChars!3947 (transformation!2761 (rule!4538 (h!20910 (t!136020 l2!3105)))))) t!136185) tb!83725))

(declare-fun result!100650 () Bool)

(assert (= result!100650 result!100642))

(assert (=> b!1474263 t!136185))

(declare-fun b_and!101509 () Bool)

(assert (= b_and!101449 (and (=> t!136185 result!100650) b_and!101509)))

(declare-fun t!136187 () Bool)

(declare-fun tb!83727 () Bool)

(assert (=> (and b!1473548 (= (toChars!3947 (transformation!2761 (h!20909 rules!4290))) (toChars!3947 (transformation!2761 (rule!4538 (h!20910 (t!136020 l2!3105)))))) t!136187) tb!83727))

(declare-fun result!100652 () Bool)

(assert (= result!100652 result!100642))

(assert (=> b!1474263 t!136187))

(declare-fun b_and!101511 () Bool)

(assert (= b_and!101445 (and (=> t!136187 result!100652) b_and!101511)))

(declare-fun m!1719073 () Bool)

(assert (=> d!432276 m!1719073))

(declare-fun m!1719075 () Bool)

(assert (=> b!1474263 m!1719075))

(assert (=> b!1474263 m!1719075))

(declare-fun m!1719077 () Bool)

(assert (=> b!1474263 m!1719077))

(declare-fun m!1719079 () Bool)

(assert (=> b!1474264 m!1719079))

(assert (=> b!1473941 d!432276))

(declare-fun d!432278 () Bool)

(declare-fun lt!512525 () Bool)

(declare-fun e!941810 () Bool)

(assert (=> d!432278 (= lt!512525 e!941810)))

(declare-fun res!666444 () Bool)

(assert (=> d!432278 (=> (not res!666444) (not e!941810))))

(assert (=> d!432278 (= res!666444 (= (list!6180 (_1!8032 (lex!1089 thiss!27374 rules!4290 (print!1124 thiss!27374 (singletonSeq!1301 (h!20910 lt!512070)))))) (list!6180 (singletonSeq!1301 (h!20910 lt!512070)))))))

(declare-fun e!941811 () Bool)

(assert (=> d!432278 (= lt!512525 e!941811)))

(declare-fun res!666446 () Bool)

(assert (=> d!432278 (=> (not res!666446) (not e!941811))))

(declare-fun lt!512526 () tuple2!14292)

(assert (=> d!432278 (= res!666446 (= (size!12580 (_1!8032 lt!512526)) 1))))

(assert (=> d!432278 (= lt!512526 (lex!1089 thiss!27374 rules!4290 (print!1124 thiss!27374 (singletonSeq!1301 (h!20910 lt!512070)))))))

(assert (=> d!432278 (not (isEmpty!9685 rules!4290))))

(assert (=> d!432278 (= (rulesProduceIndividualToken!1276 thiss!27374 rules!4290 (h!20910 lt!512070)) lt!512525)))

(declare-fun b!1474266 () Bool)

(declare-fun res!666445 () Bool)

(assert (=> b!1474266 (=> (not res!666445) (not e!941811))))

(assert (=> b!1474266 (= res!666445 (= (apply!4000 (_1!8032 lt!512526) 0) (h!20910 lt!512070)))))

(declare-fun b!1474267 () Bool)

(assert (=> b!1474267 (= e!941811 (isEmpty!9690 (_2!8032 lt!512526)))))

(declare-fun b!1474268 () Bool)

(assert (=> b!1474268 (= e!941810 (isEmpty!9690 (_2!8032 (lex!1089 thiss!27374 rules!4290 (print!1124 thiss!27374 (singletonSeq!1301 (h!20910 lt!512070)))))))))

(assert (= (and d!432278 res!666446) b!1474266))

(assert (= (and b!1474266 res!666445) b!1474267))

(assert (= (and d!432278 res!666444) b!1474268))

(declare-fun m!1719081 () Bool)

(assert (=> d!432278 m!1719081))

(declare-fun m!1719083 () Bool)

(assert (=> d!432278 m!1719083))

(declare-fun m!1719085 () Bool)

(assert (=> d!432278 m!1719085))

(declare-fun m!1719087 () Bool)

(assert (=> d!432278 m!1719087))

(declare-fun m!1719089 () Bool)

(assert (=> d!432278 m!1719089))

(assert (=> d!432278 m!1719081))

(declare-fun m!1719091 () Bool)

(assert (=> d!432278 m!1719091))

(assert (=> d!432278 m!1719081))

(assert (=> d!432278 m!1719087))

(assert (=> d!432278 m!1717573))

(declare-fun m!1719093 () Bool)

(assert (=> b!1474266 m!1719093))

(declare-fun m!1719095 () Bool)

(assert (=> b!1474267 m!1719095))

(assert (=> b!1474268 m!1719081))

(assert (=> b!1474268 m!1719081))

(assert (=> b!1474268 m!1719087))

(assert (=> b!1474268 m!1719087))

(assert (=> b!1474268 m!1719089))

(declare-fun m!1719097 () Bool)

(assert (=> b!1474268 m!1719097))

(assert (=> b!1473634 d!432278))

(declare-fun d!432280 () Bool)

(declare-fun lt!512527 () Bool)

(assert (=> d!432280 (= lt!512527 (isEmpty!9689 (list!6181 (_2!8032 lt!512234))))))

(assert (=> d!432280 (= lt!512527 (isEmpty!9694 (c!242395 (_2!8032 lt!512234))))))

(assert (=> d!432280 (= (isEmpty!9690 (_2!8032 lt!512234)) lt!512527)))

(declare-fun bs!345352 () Bool)

(assert (= bs!345352 d!432280))

(declare-fun m!1719099 () Bool)

(assert (=> bs!345352 m!1719099))

(assert (=> bs!345352 m!1719099))

(declare-fun m!1719101 () Bool)

(assert (=> bs!345352 m!1719101))

(declare-fun m!1719103 () Bool)

(assert (=> bs!345352 m!1719103))

(assert (=> b!1473893 d!432280))

(declare-fun d!432282 () Bool)

(assert (=> d!432282 true))

(declare-fun lambda!63594 () Int)

(declare-fun order!9325 () Int)

(declare-fun dynLambda!7044 (Int Int) Int)

(assert (=> d!432282 (< (dynLambda!7037 order!9311 (toChars!3947 (transformation!2761 (h!20909 rules!4290)))) (dynLambda!7044 order!9325 lambda!63594))))

(assert (=> d!432282 true))

(assert (=> d!432282 (< (dynLambda!7035 order!9307 (toValue!4088 (transformation!2761 (h!20909 rules!4290)))) (dynLambda!7044 order!9325 lambda!63594))))

(declare-fun Forall!569 (Int) Bool)

(assert (=> d!432282 (= (semiInverseModEq!1033 (toChars!3947 (transformation!2761 (h!20909 rules!4290))) (toValue!4088 (transformation!2761 (h!20909 rules!4290)))) (Forall!569 lambda!63594))))

(declare-fun bs!345353 () Bool)

(assert (= bs!345353 d!432282))

(declare-fun m!1719105 () Bool)

(assert (=> bs!345353 m!1719105))

(assert (=> d!431840 d!432282))

(assert (=> d!431926 d!431914))

(declare-fun d!432284 () Bool)

(assert (=> d!432284 (rulesProduceIndividualToken!1276 thiss!27374 rules!4290 lt!512076)))

(assert (=> d!432284 true))

(declare-fun _$77!634 () Unit!25209)

(assert (=> d!432284 (= (choose!9039 thiss!27374 rules!4290 (t!136020 l1!3136) lt!512076) _$77!634)))

(declare-fun bs!345354 () Bool)

(assert (= bs!345354 d!432284))

(assert (=> bs!345354 m!1717579))

(assert (=> d!431926 d!432284))

(assert (=> d!431926 d!431948))

(assert (=> d!431912 d!432036))

(declare-fun d!432286 () Bool)

(declare-fun lt!512528 () BalanceConc!10514)

(assert (=> d!432286 (= (list!6181 lt!512528) (originalCharacters!3623 lt!512076))))

(assert (=> d!432286 (= lt!512528 (dynLambda!7038 (toChars!3947 (transformation!2761 (rule!4538 lt!512076))) (value!88336 lt!512076)))))

(assert (=> d!432286 (= (charsOf!1582 lt!512076) lt!512528)))

(declare-fun b_lambda!46049 () Bool)

(assert (=> (not b_lambda!46049) (not d!432286)))

(declare-fun t!136189 () Bool)

(declare-fun tb!83729 () Bool)

(assert (=> (and b!1473535 (= (toChars!3947 (transformation!2761 (rule!4538 (h!20910 l2!3105)))) (toChars!3947 (transformation!2761 (rule!4538 lt!512076)))) t!136189) tb!83729))

(declare-fun b!1474273 () Bool)

(declare-fun e!941812 () Bool)

(declare-fun tp!416737 () Bool)

(assert (=> b!1474273 (= e!941812 (and (inv!20718 (c!242395 (dynLambda!7038 (toChars!3947 (transformation!2761 (rule!4538 lt!512076))) (value!88336 lt!512076)))) tp!416737))))

(declare-fun result!100654 () Bool)

(assert (=> tb!83729 (= result!100654 (and (inv!20719 (dynLambda!7038 (toChars!3947 (transformation!2761 (rule!4538 lt!512076))) (value!88336 lt!512076))) e!941812))))

(assert (= tb!83729 b!1474273))

(declare-fun m!1719107 () Bool)

(assert (=> b!1474273 m!1719107))

(declare-fun m!1719109 () Bool)

(assert (=> tb!83729 m!1719109))

(assert (=> d!432286 t!136189))

(declare-fun b_and!101513 () Bool)

(assert (= b_and!101501 (and (=> t!136189 result!100654) b_and!101513)))

(declare-fun tb!83731 () Bool)

(declare-fun t!136191 () Bool)

(assert (=> (and b!1473555 (= (toChars!3947 (transformation!2761 (rule!4538 (h!20910 l1!3136)))) (toChars!3947 (transformation!2761 (rule!4538 lt!512076)))) t!136191) tb!83731))

(declare-fun result!100656 () Bool)

(assert (= result!100656 result!100654))

(assert (=> d!432286 t!136191))

(declare-fun b_and!101515 () Bool)

(assert (= b_and!101507 (and (=> t!136191 result!100656) b_and!101515)))

(declare-fun tb!83733 () Bool)

(declare-fun t!136193 () Bool)

(assert (=> (and b!1473548 (= (toChars!3947 (transformation!2761 (h!20909 rules!4290))) (toChars!3947 (transformation!2761 (rule!4538 lt!512076)))) t!136193) tb!83733))

(declare-fun result!100658 () Bool)

(assert (= result!100658 result!100654))

(assert (=> d!432286 t!136193))

(declare-fun b_and!101517 () Bool)

(assert (= b_and!101511 (and (=> t!136193 result!100658) b_and!101517)))

(declare-fun tb!83735 () Bool)

(declare-fun t!136195 () Bool)

(assert (=> (and b!1473944 (= (toChars!3947 (transformation!2761 (rule!4538 (h!20910 (t!136020 l2!3105))))) (toChars!3947 (transformation!2761 (rule!4538 lt!512076)))) t!136195) tb!83735))

(declare-fun result!100660 () Bool)

(assert (= result!100660 result!100654))

(assert (=> d!432286 t!136195))

(declare-fun b_and!101519 () Bool)

(assert (= b_and!101505 (and (=> t!136195 result!100660) b_and!101519)))

(declare-fun tb!83737 () Bool)

(declare-fun t!136197 () Bool)

(assert (=> (and b!1473968 (= (toChars!3947 (transformation!2761 (rule!4538 (h!20910 (t!136020 l1!3136))))) (toChars!3947 (transformation!2761 (rule!4538 lt!512076)))) t!136197) tb!83737))

(declare-fun result!100662 () Bool)

(assert (= result!100662 result!100654))

(assert (=> d!432286 t!136197))

(declare-fun b_and!101521 () Bool)

(assert (= b_and!101509 (and (=> t!136197 result!100662) b_and!101521)))

(declare-fun tb!83739 () Bool)

(declare-fun t!136199 () Bool)

(assert (=> (and b!1473960 (= (toChars!3947 (transformation!2761 (h!20909 (t!136019 rules!4290)))) (toChars!3947 (transformation!2761 (rule!4538 lt!512076)))) t!136199) tb!83739))

(declare-fun result!100664 () Bool)

(assert (= result!100664 result!100654))

(assert (=> d!432286 t!136199))

(declare-fun b_and!101523 () Bool)

(assert (= b_and!101503 (and (=> t!136199 result!100664) b_and!101523)))

(declare-fun m!1719111 () Bool)

(assert (=> d!432286 m!1719111))

(declare-fun m!1719113 () Bool)

(assert (=> d!432286 m!1719113))

(assert (=> d!431912 d!432286))

(declare-fun b!1474275 () Bool)

(declare-fun res!666448 () Bool)

(declare-fun e!941813 () Bool)

(assert (=> b!1474275 (=> (not res!666448) (not e!941813))))

(assert (=> b!1474275 (= res!666448 (<= (height!783 (++!4190 (c!242395 (charsOf!1582 lt!512076)) (c!242395 (singletonSeq!1300 (apply!3999 (charsOf!1582 lt!512074) 0))))) (+ (max!0 (height!783 (c!242395 (charsOf!1582 lt!512076))) (height!783 (c!242395 (singletonSeq!1300 (apply!3999 (charsOf!1582 lt!512074) 0))))) 1)))))

(declare-fun b!1474276 () Bool)

(declare-fun res!666447 () Bool)

(assert (=> b!1474276 (=> (not res!666447) (not e!941813))))

(assert (=> b!1474276 (= res!666447 (>= (height!783 (++!4190 (c!242395 (charsOf!1582 lt!512076)) (c!242395 (singletonSeq!1300 (apply!3999 (charsOf!1582 lt!512074) 0))))) (max!0 (height!783 (c!242395 (charsOf!1582 lt!512076))) (height!783 (c!242395 (singletonSeq!1300 (apply!3999 (charsOf!1582 lt!512074) 0)))))))))

(declare-fun lt!512529 () BalanceConc!10514)

(declare-fun b!1474277 () Bool)

(assert (=> b!1474277 (= e!941813 (= (list!6181 lt!512529) (++!4191 (list!6181 (charsOf!1582 lt!512076)) (list!6181 (singletonSeq!1300 (apply!3999 (charsOf!1582 lt!512074) 0))))))))

(declare-fun b!1474274 () Bool)

(declare-fun res!666449 () Bool)

(assert (=> b!1474274 (=> (not res!666449) (not e!941813))))

(assert (=> b!1474274 (= res!666449 (isBalanced!1576 (++!4190 (c!242395 (charsOf!1582 lt!512076)) (c!242395 (singletonSeq!1300 (apply!3999 (charsOf!1582 lt!512074) 0))))))))

(declare-fun d!432288 () Bool)

(assert (=> d!432288 e!941813))

(declare-fun res!666450 () Bool)

(assert (=> d!432288 (=> (not res!666450) (not e!941813))))

(assert (=> d!432288 (= res!666450 (appendAssocInst!342 (c!242395 (charsOf!1582 lt!512076)) (c!242395 (singletonSeq!1300 (apply!3999 (charsOf!1582 lt!512074) 0)))))))

(assert (=> d!432288 (= lt!512529 (BalanceConc!10515 (++!4190 (c!242395 (charsOf!1582 lt!512076)) (c!242395 (singletonSeq!1300 (apply!3999 (charsOf!1582 lt!512074) 0))))))))

(assert (=> d!432288 (= (++!4189 (charsOf!1582 lt!512076) (singletonSeq!1300 (apply!3999 (charsOf!1582 lt!512074) 0))) lt!512529)))

(assert (= (and d!432288 res!666450) b!1474274))

(assert (= (and b!1474274 res!666449) b!1474275))

(assert (= (and b!1474275 res!666448) b!1474276))

(assert (= (and b!1474276 res!666447) b!1474277))

(declare-fun m!1719115 () Bool)

(assert (=> d!432288 m!1719115))

(declare-fun m!1719117 () Bool)

(assert (=> d!432288 m!1719117))

(assert (=> b!1474276 m!1718343))

(declare-fun m!1719119 () Bool)

(assert (=> b!1474276 m!1719119))

(assert (=> b!1474276 m!1719117))

(declare-fun m!1719121 () Bool)

(assert (=> b!1474276 m!1719121))

(assert (=> b!1474276 m!1719119))

(assert (=> b!1474276 m!1718343))

(declare-fun m!1719123 () Bool)

(assert (=> b!1474276 m!1719123))

(assert (=> b!1474276 m!1719117))

(assert (=> b!1474274 m!1719117))

(assert (=> b!1474274 m!1719117))

(declare-fun m!1719125 () Bool)

(assert (=> b!1474274 m!1719125))

(assert (=> b!1474275 m!1718343))

(assert (=> b!1474275 m!1719119))

(assert (=> b!1474275 m!1719117))

(assert (=> b!1474275 m!1719121))

(assert (=> b!1474275 m!1719119))

(assert (=> b!1474275 m!1718343))

(assert (=> b!1474275 m!1719123))

(assert (=> b!1474275 m!1719117))

(declare-fun m!1719127 () Bool)

(assert (=> b!1474277 m!1719127))

(assert (=> b!1474277 m!1717851))

(declare-fun m!1719129 () Bool)

(assert (=> b!1474277 m!1719129))

(assert (=> b!1474277 m!1717853))

(assert (=> b!1474277 m!1718357))

(assert (=> b!1474277 m!1719129))

(assert (=> b!1474277 m!1718357))

(declare-fun m!1719131 () Bool)

(assert (=> b!1474277 m!1719131))

(assert (=> d!431912 d!432288))

(assert (=> d!431912 d!432042))

(assert (=> d!431912 d!432046))

(assert (=> d!431912 d!432052))

(declare-fun lt!512532 () Bool)

(declare-fun d!432290 () Bool)

(assert (=> d!432290 (= lt!512532 (prefixMatch!321 (rulesRegex!418 thiss!27374 rules!4290) (list!6181 (++!4189 (charsOf!1582 lt!512076) (singletonSeq!1300 (apply!3999 (charsOf!1582 lt!512074) 0))))))))

(assert (=> d!432290 (= lt!512532 (prefixMatchZipperSequence!365 (focus!117 (rulesRegex!418 thiss!27374 rules!4290)) (++!4189 (charsOf!1582 lt!512076) (singletonSeq!1300 (apply!3999 (charsOf!1582 lt!512074) 0))) 0))))

(declare-fun lt!512539 () Unit!25209)

(declare-fun lt!512537 () Unit!25209)

(assert (=> d!432290 (= lt!512539 lt!512537)))

(declare-fun lt!512536 () (InoxSet Context!1252))

(declare-fun lt!512533 () List!15573)

(assert (=> d!432290 (= (prefixMatch!321 (rulesRegex!418 thiss!27374 rules!4290) lt!512533) (prefixMatchZipper!97 lt!512536 lt!512533))))

(declare-fun lt!512531 () List!15579)

(assert (=> d!432290 (= lt!512537 (prefixMatchZipperRegexEquiv!97 lt!512536 lt!512531 (rulesRegex!418 thiss!27374 rules!4290) lt!512533))))

(assert (=> d!432290 (= lt!512533 (list!6181 (++!4189 (charsOf!1582 lt!512076) (singletonSeq!1300 (apply!3999 (charsOf!1582 lt!512074) 0)))))))

(assert (=> d!432290 (= lt!512531 (toList!781 (focus!117 (rulesRegex!418 thiss!27374 rules!4290))))))

(assert (=> d!432290 (= lt!512536 (focus!117 (rulesRegex!418 thiss!27374 rules!4290)))))

(declare-fun lt!512534 () Unit!25209)

(declare-fun lt!512538 () Unit!25209)

(assert (=> d!432290 (= lt!512534 lt!512538)))

(declare-fun lt!512530 () Int)

(declare-fun lt!512535 () (InoxSet Context!1252))

(assert (=> d!432290 (= (prefixMatchZipper!97 lt!512535 (dropList!489 (++!4189 (charsOf!1582 lt!512076) (singletonSeq!1300 (apply!3999 (charsOf!1582 lt!512074) 0))) lt!512530)) (prefixMatchZipperSequence!365 lt!512535 (++!4189 (charsOf!1582 lt!512076) (singletonSeq!1300 (apply!3999 (charsOf!1582 lt!512074) 0))) lt!512530))))

(assert (=> d!432290 (= lt!512538 (lemmaprefixMatchZipperSequenceEquivalent!97 lt!512535 (++!4189 (charsOf!1582 lt!512076) (singletonSeq!1300 (apply!3999 (charsOf!1582 lt!512074) 0))) lt!512530))))

(assert (=> d!432290 (= lt!512530 0)))

(assert (=> d!432290 (= lt!512535 (focus!117 (rulesRegex!418 thiss!27374 rules!4290)))))

(assert (=> d!432290 (validRegex!1686 (rulesRegex!418 thiss!27374 rules!4290))))

(assert (=> d!432290 (= (prefixMatchZipperSequence!364 (rulesRegex!418 thiss!27374 rules!4290) (++!4189 (charsOf!1582 lt!512076) (singletonSeq!1300 (apply!3999 (charsOf!1582 lt!512074) 0)))) lt!512532)))

(declare-fun bs!345355 () Bool)

(assert (= bs!345355 d!432290))

(assert (=> bs!345355 m!1717849))

(assert (=> bs!345355 m!1718391))

(declare-fun m!1719133 () Bool)

(assert (=> bs!345355 m!1719133))

(assert (=> bs!345355 m!1717849))

(declare-fun m!1719135 () Bool)

(assert (=> bs!345355 m!1719135))

(assert (=> bs!345355 m!1717855))

(declare-fun m!1719137 () Bool)

(assert (=> bs!345355 m!1719137))

(declare-fun m!1719139 () Bool)

(assert (=> bs!345355 m!1719139))

(declare-fun m!1719141 () Bool)

(assert (=> bs!345355 m!1719141))

(assert (=> bs!345355 m!1717849))

(assert (=> bs!345355 m!1719137))

(declare-fun m!1719143 () Bool)

(assert (=> bs!345355 m!1719143))

(assert (=> bs!345355 m!1718391))

(assert (=> bs!345355 m!1718405))

(assert (=> bs!345355 m!1718391))

(assert (=> bs!345355 m!1717855))

(declare-fun m!1719145 () Bool)

(assert (=> bs!345355 m!1719145))

(assert (=> bs!345355 m!1717849))

(declare-fun m!1719147 () Bool)

(assert (=> bs!345355 m!1719147))

(assert (=> bs!345355 m!1717855))

(declare-fun m!1719149 () Bool)

(assert (=> bs!345355 m!1719149))

(assert (=> bs!345355 m!1717855))

(declare-fun m!1719151 () Bool)

(assert (=> bs!345355 m!1719151))

(assert (=> bs!345355 m!1717849))

(assert (=> bs!345355 m!1718415))

(assert (=> bs!345355 m!1717855))

(assert (=> bs!345355 m!1719139))

(assert (=> d!431912 d!432290))

(declare-fun d!432292 () Bool)

(assert (=> d!432292 (= (inv!20711 (tag!3025 (rule!4538 (h!20910 (t!136020 l1!3136))))) (= (mod (str.len (value!88310 (tag!3025 (rule!4538 (h!20910 (t!136020 l1!3136)))))) 2) 0))))

(assert (=> b!1473967 d!432292))

(declare-fun d!432294 () Bool)

(declare-fun res!666451 () Bool)

(declare-fun e!941814 () Bool)

(assert (=> d!432294 (=> (not res!666451) (not e!941814))))

(assert (=> d!432294 (= res!666451 (semiInverseModEq!1033 (toChars!3947 (transformation!2761 (rule!4538 (h!20910 (t!136020 l1!3136))))) (toValue!4088 (transformation!2761 (rule!4538 (h!20910 (t!136020 l1!3136)))))))))

(assert (=> d!432294 (= (inv!20715 (transformation!2761 (rule!4538 (h!20910 (t!136020 l1!3136))))) e!941814)))

(declare-fun b!1474278 () Bool)

(assert (=> b!1474278 (= e!941814 (equivClasses!992 (toChars!3947 (transformation!2761 (rule!4538 (h!20910 (t!136020 l1!3136))))) (toValue!4088 (transformation!2761 (rule!4538 (h!20910 (t!136020 l1!3136)))))))))

(assert (= (and d!432294 res!666451) b!1474278))

(declare-fun m!1719153 () Bool)

(assert (=> d!432294 m!1719153))

(declare-fun m!1719155 () Bool)

(assert (=> b!1474278 m!1719155))

(assert (=> b!1473967 d!432294))

(declare-fun d!432296 () Bool)

(declare-fun lt!512540 () Bool)

(assert (=> d!432296 (= lt!512540 (isEmpty!9689 (list!6181 (_2!8032 lt!512173))))))

(assert (=> d!432296 (= lt!512540 (isEmpty!9694 (c!242395 (_2!8032 lt!512173))))))

(assert (=> d!432296 (= (isEmpty!9690 (_2!8032 lt!512173)) lt!512540)))

(declare-fun bs!345356 () Bool)

(assert (= bs!345356 d!432296))

(declare-fun m!1719157 () Bool)

(assert (=> bs!345356 m!1719157))

(assert (=> bs!345356 m!1719157))

(declare-fun m!1719159 () Bool)

(assert (=> bs!345356 m!1719159))

(declare-fun m!1719161 () Bool)

(assert (=> bs!345356 m!1719161))

(assert (=> b!1473731 d!432296))

(declare-fun d!432298 () Bool)

(assert (=> d!432298 (rulesProduceIndividualToken!1276 thiss!27374 rules!4290 (h!20910 (t!136020 lt!512070)))))

(declare-fun lt!512541 () Unit!25209)

(assert (=> d!432298 (= lt!512541 (choose!9039 thiss!27374 rules!4290 lt!512070 (h!20910 (t!136020 lt!512070))))))

(assert (=> d!432298 (not (isEmpty!9685 rules!4290))))

(assert (=> d!432298 (= (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!457 thiss!27374 rules!4290 lt!512070 (h!20910 (t!136020 lt!512070))) lt!512541)))

(declare-fun bs!345357 () Bool)

(assert (= bs!345357 d!432298))

(assert (=> bs!345357 m!1718093))

(declare-fun m!1719163 () Bool)

(assert (=> bs!345357 m!1719163))

(assert (=> bs!345357 m!1717573))

(assert (=> b!1473896 d!432298))

(assert (=> b!1473896 d!432278))

(declare-fun d!432300 () Bool)

(declare-fun lt!512542 () Bool)

(declare-fun e!941815 () Bool)

(assert (=> d!432300 (= lt!512542 e!941815)))

(declare-fun res!666452 () Bool)

(assert (=> d!432300 (=> (not res!666452) (not e!941815))))

(assert (=> d!432300 (= res!666452 (= (list!6180 (_1!8032 (lex!1089 thiss!27374 rules!4290 (print!1124 thiss!27374 (singletonSeq!1301 (h!20910 (t!136020 lt!512070))))))) (list!6180 (singletonSeq!1301 (h!20910 (t!136020 lt!512070))))))))

(declare-fun e!941816 () Bool)

(assert (=> d!432300 (= lt!512542 e!941816)))

(declare-fun res!666454 () Bool)

(assert (=> d!432300 (=> (not res!666454) (not e!941816))))

(declare-fun lt!512543 () tuple2!14292)

(assert (=> d!432300 (= res!666454 (= (size!12580 (_1!8032 lt!512543)) 1))))

(assert (=> d!432300 (= lt!512543 (lex!1089 thiss!27374 rules!4290 (print!1124 thiss!27374 (singletonSeq!1301 (h!20910 (t!136020 lt!512070))))))))

(assert (=> d!432300 (not (isEmpty!9685 rules!4290))))

(assert (=> d!432300 (= (rulesProduceIndividualToken!1276 thiss!27374 rules!4290 (h!20910 (t!136020 lt!512070))) lt!512542)))

(declare-fun b!1474279 () Bool)

(declare-fun res!666453 () Bool)

(assert (=> b!1474279 (=> (not res!666453) (not e!941816))))

(assert (=> b!1474279 (= res!666453 (= (apply!4000 (_1!8032 lt!512543) 0) (h!20910 (t!136020 lt!512070))))))

(declare-fun b!1474280 () Bool)

(assert (=> b!1474280 (= e!941816 (isEmpty!9690 (_2!8032 lt!512543)))))

(declare-fun b!1474281 () Bool)

(assert (=> b!1474281 (= e!941815 (isEmpty!9690 (_2!8032 (lex!1089 thiss!27374 rules!4290 (print!1124 thiss!27374 (singletonSeq!1301 (h!20910 (t!136020 lt!512070))))))))))

(assert (= (and d!432300 res!666454) b!1474279))

(assert (= (and b!1474279 res!666453) b!1474280))

(assert (= (and d!432300 res!666452) b!1474281))

(declare-fun m!1719165 () Bool)

(assert (=> d!432300 m!1719165))

(declare-fun m!1719167 () Bool)

(assert (=> d!432300 m!1719167))

(declare-fun m!1719169 () Bool)

(assert (=> d!432300 m!1719169))

(declare-fun m!1719171 () Bool)

(assert (=> d!432300 m!1719171))

(declare-fun m!1719173 () Bool)

(assert (=> d!432300 m!1719173))

(assert (=> d!432300 m!1719165))

(declare-fun m!1719175 () Bool)

(assert (=> d!432300 m!1719175))

(assert (=> d!432300 m!1719165))

(assert (=> d!432300 m!1719171))

(assert (=> d!432300 m!1717573))

(declare-fun m!1719177 () Bool)

(assert (=> b!1474279 m!1719177))

(declare-fun m!1719179 () Bool)

(assert (=> b!1474280 m!1719179))

(assert (=> b!1474281 m!1719165))

(assert (=> b!1474281 m!1719165))

(assert (=> b!1474281 m!1719171))

(assert (=> b!1474281 m!1719171))

(assert (=> b!1474281 m!1719173))

(declare-fun m!1719181 () Bool)

(assert (=> b!1474281 m!1719181))

(assert (=> b!1473896 d!432300))

(declare-fun d!432302 () Bool)

(assert (=> d!432302 (= (separableTokensPredicate!560 thiss!27374 (h!20910 lt!512070) (h!20910 (t!136020 lt!512070)) rules!4290) (not (prefixMatchZipperSequence!364 (rulesRegex!418 thiss!27374 rules!4290) (++!4189 (charsOf!1582 (h!20910 lt!512070)) (singletonSeq!1300 (apply!3999 (charsOf!1582 (h!20910 (t!136020 lt!512070))) 0))))))))

(declare-fun bs!345358 () Bool)

(assert (= bs!345358 d!432302))

(assert (=> bs!345358 m!1718087))

(declare-fun m!1719183 () Bool)

(assert (=> bs!345358 m!1719183))

(assert (=> bs!345358 m!1718087))

(assert (=> bs!345358 m!1717849))

(declare-fun m!1719185 () Bool)

(assert (=> bs!345358 m!1719185))

(declare-fun m!1719187 () Bool)

(assert (=> bs!345358 m!1719187))

(declare-fun m!1719189 () Bool)

(assert (=> bs!345358 m!1719189))

(assert (=> bs!345358 m!1719185))

(assert (=> bs!345358 m!1719183))

(assert (=> bs!345358 m!1719187))

(assert (=> bs!345358 m!1717849))

(assert (=> bs!345358 m!1719189))

(declare-fun m!1719191 () Bool)

(assert (=> bs!345358 m!1719191))

(assert (=> b!1473896 d!432302))

(declare-fun d!432304 () Bool)

(declare-fun lt!512546 () Int)

(assert (=> d!432304 (= lt!512546 (size!12579 (list!6181 (charsOf!1582 (h!20910 (t!136020 lt!512070))))))))

(declare-fun size!12585 (Conc!5287) Int)

(assert (=> d!432304 (= lt!512546 (size!12585 (c!242395 (charsOf!1582 (h!20910 (t!136020 lt!512070))))))))

(assert (=> d!432304 (= (size!12581 (charsOf!1582 (h!20910 (t!136020 lt!512070)))) lt!512546)))

(declare-fun bs!345359 () Bool)

(assert (= bs!345359 d!432304))

(assert (=> bs!345359 m!1718087))

(declare-fun m!1719193 () Bool)

(assert (=> bs!345359 m!1719193))

(assert (=> bs!345359 m!1719193))

(declare-fun m!1719195 () Bool)

(assert (=> bs!345359 m!1719195))

(declare-fun m!1719197 () Bool)

(assert (=> bs!345359 m!1719197))

(assert (=> b!1473896 d!432304))

(declare-fun d!432306 () Bool)

(assert (=> d!432306 (rulesProduceIndividualToken!1276 thiss!27374 rules!4290 (h!20910 lt!512070))))

(declare-fun lt!512547 () Unit!25209)

(assert (=> d!432306 (= lt!512547 (choose!9039 thiss!27374 rules!4290 lt!512070 (h!20910 lt!512070)))))

(assert (=> d!432306 (not (isEmpty!9685 rules!4290))))

(assert (=> d!432306 (= (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!457 thiss!27374 rules!4290 lt!512070 (h!20910 lt!512070)) lt!512547)))

(declare-fun bs!345360 () Bool)

(assert (= bs!345360 d!432306))

(assert (=> bs!345360 m!1717693))

(declare-fun m!1719199 () Bool)

(assert (=> bs!345360 m!1719199))

(assert (=> bs!345360 m!1717573))

(assert (=> b!1473896 d!432306))

(declare-fun d!432308 () Bool)

(declare-fun lt!512548 () BalanceConc!10514)

(assert (=> d!432308 (= (list!6181 lt!512548) (originalCharacters!3623 (h!20910 (t!136020 lt!512070))))))

(assert (=> d!432308 (= lt!512548 (dynLambda!7038 (toChars!3947 (transformation!2761 (rule!4538 (h!20910 (t!136020 lt!512070))))) (value!88336 (h!20910 (t!136020 lt!512070)))))))

(assert (=> d!432308 (= (charsOf!1582 (h!20910 (t!136020 lt!512070))) lt!512548)))

(declare-fun b_lambda!46051 () Bool)

(assert (=> (not b_lambda!46051) (not d!432308)))

(declare-fun t!136201 () Bool)

(declare-fun tb!83741 () Bool)

(assert (=> (and b!1473960 (= (toChars!3947 (transformation!2761 (h!20909 (t!136019 rules!4290)))) (toChars!3947 (transformation!2761 (rule!4538 (h!20910 (t!136020 lt!512070)))))) t!136201) tb!83741))

(declare-fun b!1474282 () Bool)

(declare-fun e!941817 () Bool)

(declare-fun tp!416738 () Bool)

(assert (=> b!1474282 (= e!941817 (and (inv!20718 (c!242395 (dynLambda!7038 (toChars!3947 (transformation!2761 (rule!4538 (h!20910 (t!136020 lt!512070))))) (value!88336 (h!20910 (t!136020 lt!512070)))))) tp!416738))))

(declare-fun result!100666 () Bool)

(assert (=> tb!83741 (= result!100666 (and (inv!20719 (dynLambda!7038 (toChars!3947 (transformation!2761 (rule!4538 (h!20910 (t!136020 lt!512070))))) (value!88336 (h!20910 (t!136020 lt!512070))))) e!941817))))

(assert (= tb!83741 b!1474282))

(declare-fun m!1719201 () Bool)

(assert (=> b!1474282 m!1719201))

(declare-fun m!1719203 () Bool)

(assert (=> tb!83741 m!1719203))

(assert (=> d!432308 t!136201))

(declare-fun b_and!101525 () Bool)

(assert (= b_and!101523 (and (=> t!136201 result!100666) b_and!101525)))

(declare-fun t!136203 () Bool)

(declare-fun tb!83743 () Bool)

(assert (=> (and b!1473535 (= (toChars!3947 (transformation!2761 (rule!4538 (h!20910 l2!3105)))) (toChars!3947 (transformation!2761 (rule!4538 (h!20910 (t!136020 lt!512070)))))) t!136203) tb!83743))

(declare-fun result!100668 () Bool)

(assert (= result!100668 result!100666))

(assert (=> d!432308 t!136203))

(declare-fun b_and!101527 () Bool)

(assert (= b_and!101513 (and (=> t!136203 result!100668) b_and!101527)))

(declare-fun tb!83745 () Bool)

(declare-fun t!136205 () Bool)

(assert (=> (and b!1473548 (= (toChars!3947 (transformation!2761 (h!20909 rules!4290))) (toChars!3947 (transformation!2761 (rule!4538 (h!20910 (t!136020 lt!512070)))))) t!136205) tb!83745))

(declare-fun result!100670 () Bool)

(assert (= result!100670 result!100666))

(assert (=> d!432308 t!136205))

(declare-fun b_and!101529 () Bool)

(assert (= b_and!101517 (and (=> t!136205 result!100670) b_and!101529)))

(declare-fun t!136207 () Bool)

(declare-fun tb!83747 () Bool)

(assert (=> (and b!1473944 (= (toChars!3947 (transformation!2761 (rule!4538 (h!20910 (t!136020 l2!3105))))) (toChars!3947 (transformation!2761 (rule!4538 (h!20910 (t!136020 lt!512070)))))) t!136207) tb!83747))

(declare-fun result!100672 () Bool)

(assert (= result!100672 result!100666))

(assert (=> d!432308 t!136207))

(declare-fun b_and!101531 () Bool)

(assert (= b_and!101519 (and (=> t!136207 result!100672) b_and!101531)))

(declare-fun t!136209 () Bool)

(declare-fun tb!83749 () Bool)

(assert (=> (and b!1473555 (= (toChars!3947 (transformation!2761 (rule!4538 (h!20910 l1!3136)))) (toChars!3947 (transformation!2761 (rule!4538 (h!20910 (t!136020 lt!512070)))))) t!136209) tb!83749))

(declare-fun result!100674 () Bool)

(assert (= result!100674 result!100666))

(assert (=> d!432308 t!136209))

(declare-fun b_and!101533 () Bool)

(assert (= b_and!101515 (and (=> t!136209 result!100674) b_and!101533)))

(declare-fun tb!83751 () Bool)

(declare-fun t!136211 () Bool)

(assert (=> (and b!1473968 (= (toChars!3947 (transformation!2761 (rule!4538 (h!20910 (t!136020 l1!3136))))) (toChars!3947 (transformation!2761 (rule!4538 (h!20910 (t!136020 lt!512070)))))) t!136211) tb!83751))

(declare-fun result!100676 () Bool)

(assert (= result!100676 result!100666))

(assert (=> d!432308 t!136211))

(declare-fun b_and!101535 () Bool)

(assert (= b_and!101521 (and (=> t!136211 result!100676) b_and!101535)))

(declare-fun m!1719205 () Bool)

(assert (=> d!432308 m!1719205))

(declare-fun m!1719207 () Bool)

(assert (=> d!432308 m!1719207))

(assert (=> b!1473896 d!432308))

(declare-fun bs!345361 () Bool)

(declare-fun d!432310 () Bool)

(assert (= bs!345361 (and d!432310 d!432180)))

(declare-fun lambda!63595 () Int)

(assert (=> bs!345361 (= lambda!63595 lambda!63586)))

(declare-fun bs!345362 () Bool)

(assert (= bs!345362 (and d!432310 d!431830)))

(assert (=> bs!345362 (= lambda!63595 lambda!63542)))

(declare-fun bs!345363 () Bool)

(assert (= bs!345363 (and d!432310 d!431904)))

(assert (=> bs!345363 (= lambda!63595 lambda!63553)))

(declare-fun bs!345364 () Bool)

(assert (= bs!345364 (and d!432310 d!431958)))

(assert (=> bs!345364 (= lambda!63595 lambda!63563)))

(declare-fun bs!345365 () Bool)

(assert (= bs!345365 (and d!432310 d!431852)))

(assert (=> bs!345365 (= lambda!63595 lambda!63546)))

(declare-fun bs!345366 () Bool)

(assert (= bs!345366 (and d!432310 d!431856)))

(assert (=> bs!345366 (= lambda!63595 lambda!63547)))

(declare-fun bs!345367 () Bool)

(assert (= bs!345367 (and d!432310 d!432176)))

(assert (=> bs!345367 (= lambda!63595 lambda!63585)))

(declare-fun bs!345368 () Bool)

(assert (= bs!345368 (and d!432310 d!431952)))

(assert (=> bs!345368 (= lambda!63595 lambda!63562)))

(declare-fun b!1474287 () Bool)

(declare-fun e!941822 () Bool)

(assert (=> b!1474287 (= e!941822 true)))

(declare-fun b!1474286 () Bool)

(declare-fun e!941821 () Bool)

(assert (=> b!1474286 (= e!941821 e!941822)))

(declare-fun b!1474285 () Bool)

(declare-fun e!941820 () Bool)

(assert (=> b!1474285 (= e!941820 e!941821)))

(assert (=> d!432310 e!941820))

(assert (= b!1474286 b!1474287))

(assert (= b!1474285 b!1474286))

(assert (= (and d!432310 ((_ is Cons!15508) rules!4290)) b!1474285))

(assert (=> b!1474287 (< (dynLambda!7035 order!9307 (toValue!4088 (transformation!2761 (h!20909 rules!4290)))) (dynLambda!7036 order!9309 lambda!63595))))

(assert (=> b!1474287 (< (dynLambda!7037 order!9311 (toChars!3947 (transformation!2761 (h!20909 rules!4290)))) (dynLambda!7036 order!9309 lambda!63595))))

(assert (=> d!432310 true))

(declare-fun lt!512549 () Bool)

(assert (=> d!432310 (= lt!512549 (forall!3777 (t!136020 lt!512073) lambda!63595))))

(declare-fun e!941818 () Bool)

(assert (=> d!432310 (= lt!512549 e!941818)))

(declare-fun res!666456 () Bool)

(assert (=> d!432310 (=> res!666456 e!941818)))

(assert (=> d!432310 (= res!666456 (not ((_ is Cons!15509) (t!136020 lt!512073))))))

(assert (=> d!432310 (not (isEmpty!9685 rules!4290))))

(assert (=> d!432310 (= (rulesProduceEachTokenIndividuallyList!784 thiss!27374 rules!4290 (t!136020 lt!512073)) lt!512549)))

(declare-fun b!1474283 () Bool)

(declare-fun e!941819 () Bool)

(assert (=> b!1474283 (= e!941818 e!941819)))

(declare-fun res!666455 () Bool)

(assert (=> b!1474283 (=> (not res!666455) (not e!941819))))

(assert (=> b!1474283 (= res!666455 (rulesProduceIndividualToken!1276 thiss!27374 rules!4290 (h!20910 (t!136020 lt!512073))))))

(declare-fun b!1474284 () Bool)

(assert (=> b!1474284 (= e!941819 (rulesProduceEachTokenIndividuallyList!784 thiss!27374 rules!4290 (t!136020 (t!136020 lt!512073))))))

(assert (= (and d!432310 (not res!666456)) b!1474283))

(assert (= (and b!1474283 res!666455) b!1474284))

(declare-fun m!1719209 () Bool)

(assert (=> d!432310 m!1719209))

(assert (=> d!432310 m!1717573))

(declare-fun m!1719211 () Bool)

(assert (=> b!1474283 m!1719211))

(declare-fun m!1719213 () Bool)

(assert (=> b!1474284 m!1719213))

(assert (=> b!1473626 d!432310))

(declare-fun bs!345369 () Bool)

(declare-fun d!432312 () Bool)

(assert (= bs!345369 (and d!432312 d!432282)))

(declare-fun lambda!63596 () Int)

(assert (=> bs!345369 (= (and (= (toChars!3947 (transformation!2761 (rule!4538 (h!20910 l1!3136)))) (toChars!3947 (transformation!2761 (h!20909 rules!4290)))) (= (toValue!4088 (transformation!2761 (rule!4538 (h!20910 l1!3136)))) (toValue!4088 (transformation!2761 (h!20909 rules!4290))))) (= lambda!63596 lambda!63594))))

(assert (=> d!432312 true))

(assert (=> d!432312 (< (dynLambda!7037 order!9311 (toChars!3947 (transformation!2761 (rule!4538 (h!20910 l1!3136))))) (dynLambda!7044 order!9325 lambda!63596))))

(assert (=> d!432312 true))

(assert (=> d!432312 (< (dynLambda!7035 order!9307 (toValue!4088 (transformation!2761 (rule!4538 (h!20910 l1!3136))))) (dynLambda!7044 order!9325 lambda!63596))))

(assert (=> d!432312 (= (semiInverseModEq!1033 (toChars!3947 (transformation!2761 (rule!4538 (h!20910 l1!3136)))) (toValue!4088 (transformation!2761 (rule!4538 (h!20910 l1!3136))))) (Forall!569 lambda!63596))))

(declare-fun bs!345370 () Bool)

(assert (= bs!345370 d!432312))

(declare-fun m!1719215 () Bool)

(assert (=> bs!345370 m!1719215))

(assert (=> d!431976 d!432312))

(declare-fun d!432314 () Bool)

(assert (=> d!432314 (= (inv!20719 (dynLambda!7038 (toChars!3947 (transformation!2761 (rule!4538 (h!20910 l1!3136)))) (value!88336 (h!20910 l1!3136)))) (isBalanced!1576 (c!242395 (dynLambda!7038 (toChars!3947 (transformation!2761 (rule!4538 (h!20910 l1!3136)))) (value!88336 (h!20910 l1!3136))))))))

(declare-fun bs!345371 () Bool)

(assert (= bs!345371 d!432314))

(declare-fun m!1719217 () Bool)

(assert (=> bs!345371 m!1719217))

(assert (=> tb!83615 d!432314))

(declare-fun bs!345372 () Bool)

(declare-fun d!432316 () Bool)

(assert (= bs!345372 (and d!432316 d!432072)))

(declare-fun lambda!63597 () Int)

(assert (=> bs!345372 (= (= (toValue!4088 (transformation!2761 (rule!4538 (h!20910 l2!3105)))) (toValue!4088 (transformation!2761 (h!20909 rules!4290)))) (= lambda!63597 lambda!63573))))

(assert (=> d!432316 true))

(assert (=> d!432316 (< (dynLambda!7035 order!9307 (toValue!4088 (transformation!2761 (rule!4538 (h!20910 l2!3105))))) (dynLambda!7041 order!9319 lambda!63597))))

(assert (=> d!432316 (= (equivClasses!992 (toChars!3947 (transformation!2761 (rule!4538 (h!20910 l2!3105)))) (toValue!4088 (transformation!2761 (rule!4538 (h!20910 l2!3105))))) (Forall2!471 lambda!63597))))

(declare-fun bs!345373 () Bool)

(assert (= bs!345373 d!432316))

(declare-fun m!1719219 () Bool)

(assert (=> bs!345373 m!1719219))

(assert (=> b!1473597 d!432316))

(declare-fun d!432318 () Bool)

(declare-fun res!666457 () Bool)

(declare-fun e!941823 () Bool)

(assert (=> d!432318 (=> res!666457 e!941823)))

(assert (=> d!432318 (= res!666457 ((_ is Nil!15509) l2!3105))))

(assert (=> d!432318 (= (forall!3777 l2!3105 lambda!63542) e!941823)))

(declare-fun b!1474288 () Bool)

(declare-fun e!941824 () Bool)

(assert (=> b!1474288 (= e!941823 e!941824)))

(declare-fun res!666458 () Bool)

(assert (=> b!1474288 (=> (not res!666458) (not e!941824))))

(assert (=> b!1474288 (= res!666458 (dynLambda!7042 lambda!63542 (h!20910 l2!3105)))))

(declare-fun b!1474289 () Bool)

(assert (=> b!1474289 (= e!941824 (forall!3777 (t!136020 l2!3105) lambda!63542))))

(assert (= (and d!432318 (not res!666457)) b!1474288))

(assert (= (and b!1474288 res!666458) b!1474289))

(declare-fun b_lambda!46053 () Bool)

(assert (=> (not b_lambda!46053) (not b!1474288)))

(declare-fun m!1719221 () Bool)

(assert (=> b!1474288 m!1719221))

(declare-fun m!1719223 () Bool)

(assert (=> b!1474289 m!1719223))

(assert (=> d!431830 d!432318))

(assert (=> d!431830 d!431948))

(assert (=> b!1473891 d!431946))

(declare-fun d!432320 () Bool)

(declare-fun lt!512550 () Bool)

(declare-fun e!941825 () Bool)

(assert (=> d!432320 (= lt!512550 e!941825)))

(declare-fun res!666459 () Bool)

(assert (=> d!432320 (=> (not res!666459) (not e!941825))))

(assert (=> d!432320 (= res!666459 (= (list!6180 (_1!8032 (lex!1089 thiss!27374 rules!4290 (print!1124 thiss!27374 (singletonSeq!1301 (h!20910 l2!3105)))))) (list!6180 (singletonSeq!1301 (h!20910 l2!3105)))))))

(declare-fun e!941826 () Bool)

(assert (=> d!432320 (= lt!512550 e!941826)))

(declare-fun res!666461 () Bool)

(assert (=> d!432320 (=> (not res!666461) (not e!941826))))

(declare-fun lt!512551 () tuple2!14292)

(assert (=> d!432320 (= res!666461 (= (size!12580 (_1!8032 lt!512551)) 1))))

(assert (=> d!432320 (= lt!512551 (lex!1089 thiss!27374 rules!4290 (print!1124 thiss!27374 (singletonSeq!1301 (h!20910 l2!3105)))))))

(assert (=> d!432320 (not (isEmpty!9685 rules!4290))))

(assert (=> d!432320 (= (rulesProduceIndividualToken!1276 thiss!27374 rules!4290 (h!20910 l2!3105)) lt!512550)))

(declare-fun b!1474290 () Bool)

(declare-fun res!666460 () Bool)

(assert (=> b!1474290 (=> (not res!666460) (not e!941826))))

(assert (=> b!1474290 (= res!666460 (= (apply!4000 (_1!8032 lt!512551) 0) (h!20910 l2!3105)))))

(declare-fun b!1474291 () Bool)

(assert (=> b!1474291 (= e!941826 (isEmpty!9690 (_2!8032 lt!512551)))))

(declare-fun b!1474292 () Bool)

(assert (=> b!1474292 (= e!941825 (isEmpty!9690 (_2!8032 (lex!1089 thiss!27374 rules!4290 (print!1124 thiss!27374 (singletonSeq!1301 (h!20910 l2!3105)))))))))

(assert (= (and d!432320 res!666461) b!1474290))

(assert (= (and b!1474290 res!666460) b!1474291))

(assert (= (and d!432320 res!666459) b!1474292))

(declare-fun m!1719225 () Bool)

(assert (=> d!432320 m!1719225))

(declare-fun m!1719227 () Bool)

(assert (=> d!432320 m!1719227))

(declare-fun m!1719229 () Bool)

(assert (=> d!432320 m!1719229))

(declare-fun m!1719231 () Bool)

(assert (=> d!432320 m!1719231))

(declare-fun m!1719233 () Bool)

(assert (=> d!432320 m!1719233))

(assert (=> d!432320 m!1719225))

(declare-fun m!1719235 () Bool)

(assert (=> d!432320 m!1719235))

(assert (=> d!432320 m!1719225))

(assert (=> d!432320 m!1719231))

(assert (=> d!432320 m!1717573))

(declare-fun m!1719237 () Bool)

(assert (=> b!1474290 m!1719237))

(declare-fun m!1719239 () Bool)

(assert (=> b!1474291 m!1719239))

(assert (=> b!1474292 m!1719225))

(assert (=> b!1474292 m!1719225))

(assert (=> b!1474292 m!1719231))

(assert (=> b!1474292 m!1719231))

(assert (=> b!1474292 m!1719233))

(declare-fun m!1719241 () Bool)

(assert (=> b!1474292 m!1719241))

(assert (=> b!1473579 d!432320))

(assert (=> b!1473683 d!431982))

(declare-fun d!432322 () Bool)

(declare-fun lt!512554 () Int)

(assert (=> d!432322 (>= lt!512554 0)))

(declare-fun e!941829 () Int)

(assert (=> d!432322 (= lt!512554 e!941829)))

(declare-fun c!242471 () Bool)

(assert (=> d!432322 (= c!242471 ((_ is Nil!15509) lt!512105))))

(assert (=> d!432322 (= (size!12578 lt!512105) lt!512554)))

(declare-fun b!1474297 () Bool)

(assert (=> b!1474297 (= e!941829 0)))

(declare-fun b!1474298 () Bool)

(assert (=> b!1474298 (= e!941829 (+ 1 (size!12578 (t!136020 lt!512105))))))

(assert (= (and d!432322 c!242471) b!1474297))

(assert (= (and d!432322 (not c!242471)) b!1474298))

(declare-fun m!1719243 () Bool)

(assert (=> b!1474298 m!1719243))

(assert (=> b!1473632 d!432322))

(declare-fun d!432324 () Bool)

(declare-fun lt!512555 () Int)

(assert (=> d!432324 (>= lt!512555 0)))

(declare-fun e!941830 () Int)

(assert (=> d!432324 (= lt!512555 e!941830)))

(declare-fun c!242472 () Bool)

(assert (=> d!432324 (= c!242472 ((_ is Nil!15509) l1!3136))))

(assert (=> d!432324 (= (size!12578 l1!3136) lt!512555)))

(declare-fun b!1474299 () Bool)

(assert (=> b!1474299 (= e!941830 0)))

(declare-fun b!1474300 () Bool)

(assert (=> b!1474300 (= e!941830 (+ 1 (size!12578 (t!136020 l1!3136))))))

(assert (= (and d!432324 c!242472) b!1474299))

(assert (= (and d!432324 (not c!242472)) b!1474300))

(assert (=> b!1474300 m!1717661))

(assert (=> b!1473632 d!432324))

(declare-fun d!432326 () Bool)

(declare-fun lt!512556 () Int)

(assert (=> d!432326 (>= lt!512556 0)))

(declare-fun e!941831 () Int)

(assert (=> d!432326 (= lt!512556 e!941831)))

(declare-fun c!242473 () Bool)

(assert (=> d!432326 (= c!242473 ((_ is Nil!15509) l2!3105))))

(assert (=> d!432326 (= (size!12578 l2!3105) lt!512556)))

(declare-fun b!1474301 () Bool)

(assert (=> b!1474301 (= e!941831 0)))

(declare-fun b!1474302 () Bool)

(assert (=> b!1474302 (= e!941831 (+ 1 (size!12578 (t!136020 l2!3105))))))

(assert (= (and d!432326 c!242473) b!1474301))

(assert (= (and d!432326 (not c!242473)) b!1474302))

(declare-fun m!1719245 () Bool)

(assert (=> b!1474302 m!1719245))

(assert (=> b!1473632 d!432326))

(declare-fun d!432328 () Bool)

(declare-fun res!666462 () Bool)

(declare-fun e!941832 () Bool)

(assert (=> d!432328 (=> res!666462 e!941832)))

(assert (=> d!432328 (= res!666462 ((_ is Nil!15509) lt!512070))))

(assert (=> d!432328 (= (forall!3777 lt!512070 lambda!63547) e!941832)))

(declare-fun b!1474303 () Bool)

(declare-fun e!941833 () Bool)

(assert (=> b!1474303 (= e!941832 e!941833)))

(declare-fun res!666463 () Bool)

(assert (=> b!1474303 (=> (not res!666463) (not e!941833))))

(assert (=> b!1474303 (= res!666463 (dynLambda!7042 lambda!63547 (h!20910 lt!512070)))))

(declare-fun b!1474304 () Bool)

(assert (=> b!1474304 (= e!941833 (forall!3777 (t!136020 lt!512070) lambda!63547))))

(assert (= (and d!432328 (not res!666462)) b!1474303))

(assert (= (and b!1474303 res!666463) b!1474304))

(declare-fun b_lambda!46055 () Bool)

(assert (=> (not b_lambda!46055) (not b!1474303)))

(declare-fun m!1719247 () Bool)

(assert (=> b!1474303 m!1719247))

(declare-fun m!1719249 () Bool)

(assert (=> b!1474304 m!1719249))

(assert (=> d!431856 d!432328))

(assert (=> d!431856 d!431948))

(declare-fun d!432330 () Bool)

(assert (=> d!432330 (= (inv!15 (value!88336 (h!20910 l2!3105))) (= (charsToBigInt!0 (text!20406 (value!88336 (h!20910 l2!3105))) 0) (value!88332 (value!88336 (h!20910 l2!3105)))))))

(declare-fun bs!345374 () Bool)

(assert (= bs!345374 d!432330))

(declare-fun m!1719251 () Bool)

(assert (=> bs!345374 m!1719251))

(assert (=> b!1473867 d!432330))

(declare-fun d!432332 () Bool)

(declare-fun e!941835 () Bool)

(assert (=> d!432332 e!941835))

(declare-fun res!666465 () Bool)

(assert (=> d!432332 (=> (not res!666465) (not e!941835))))

(declare-fun lt!512557 () List!15575)

(assert (=> d!432332 (= res!666465 (= (content!2267 lt!512557) ((_ map or) (content!2267 (t!136020 (t!136020 l1!3136))) (content!2267 l2!3105))))))

(declare-fun e!941834 () List!15575)

(assert (=> d!432332 (= lt!512557 e!941834)))

(declare-fun c!242474 () Bool)

(assert (=> d!432332 (= c!242474 ((_ is Nil!15509) (t!136020 (t!136020 l1!3136))))))

(assert (=> d!432332 (= (++!4187 (t!136020 (t!136020 l1!3136)) l2!3105) lt!512557)))

(declare-fun b!1474305 () Bool)

(assert (=> b!1474305 (= e!941834 l2!3105)))

(declare-fun b!1474308 () Bool)

(assert (=> b!1474308 (= e!941835 (or (not (= l2!3105 Nil!15509)) (= lt!512557 (t!136020 (t!136020 l1!3136)))))))

(declare-fun b!1474307 () Bool)

(declare-fun res!666464 () Bool)

(assert (=> b!1474307 (=> (not res!666464) (not e!941835))))

(assert (=> b!1474307 (= res!666464 (= (size!12578 lt!512557) (+ (size!12578 (t!136020 (t!136020 l1!3136))) (size!12578 l2!3105))))))

(declare-fun b!1474306 () Bool)

(assert (=> b!1474306 (= e!941834 (Cons!15509 (h!20910 (t!136020 (t!136020 l1!3136))) (++!4187 (t!136020 (t!136020 (t!136020 l1!3136))) l2!3105)))))

(assert (= (and d!432332 c!242474) b!1474305))

(assert (= (and d!432332 (not c!242474)) b!1474306))

(assert (= (and d!432332 res!666465) b!1474307))

(assert (= (and b!1474307 res!666464) b!1474308))

(declare-fun m!1719253 () Bool)

(assert (=> d!432332 m!1719253))

(assert (=> d!432332 m!1718945))

(assert (=> d!432332 m!1717657))

(declare-fun m!1719255 () Bool)

(assert (=> b!1474307 m!1719255))

(declare-fun m!1719257 () Bool)

(assert (=> b!1474307 m!1719257))

(assert (=> b!1474307 m!1717663))

(declare-fun m!1719259 () Bool)

(assert (=> b!1474306 m!1719259))

(assert (=> b!1473607 d!432332))

(declare-fun d!432336 () Bool)

(assert (=> d!432336 (= (inv!16 (value!88336 (h!20910 l2!3105))) (= (charsToInt!0 (text!20404 (value!88336 (h!20910 l2!3105)))) (value!88328 (value!88336 (h!20910 l2!3105)))))))

(declare-fun bs!345376 () Bool)

(assert (= bs!345376 d!432336))

(declare-fun m!1719261 () Bool)

(assert (=> bs!345376 m!1719261))

(assert (=> b!1473869 d!432336))

(declare-fun d!432338 () Bool)

(declare-fun res!666466 () Bool)

(declare-fun e!941836 () Bool)

(assert (=> d!432338 (=> (not res!666466) (not e!941836))))

(assert (=> d!432338 (= res!666466 (not (isEmpty!9689 (originalCharacters!3623 (h!20910 (t!136020 l1!3136))))))))

(assert (=> d!432338 (= (inv!20714 (h!20910 (t!136020 l1!3136))) e!941836)))

(declare-fun b!1474309 () Bool)

(declare-fun res!666467 () Bool)

(assert (=> b!1474309 (=> (not res!666467) (not e!941836))))

(assert (=> b!1474309 (= res!666467 (= (originalCharacters!3623 (h!20910 (t!136020 l1!3136))) (list!6181 (dynLambda!7038 (toChars!3947 (transformation!2761 (rule!4538 (h!20910 (t!136020 l1!3136))))) (value!88336 (h!20910 (t!136020 l1!3136)))))))))

(declare-fun b!1474310 () Bool)

(assert (=> b!1474310 (= e!941836 (= (size!12573 (h!20910 (t!136020 l1!3136))) (size!12579 (originalCharacters!3623 (h!20910 (t!136020 l1!3136))))))))

(assert (= (and d!432338 res!666466) b!1474309))

(assert (= (and b!1474309 res!666467) b!1474310))

(declare-fun b_lambda!46057 () Bool)

(assert (=> (not b_lambda!46057) (not b!1474309)))

(declare-fun tb!83753 () Bool)

(declare-fun t!136214 () Bool)

(assert (=> (and b!1473944 (= (toChars!3947 (transformation!2761 (rule!4538 (h!20910 (t!136020 l2!3105))))) (toChars!3947 (transformation!2761 (rule!4538 (h!20910 (t!136020 l1!3136)))))) t!136214) tb!83753))

(declare-fun b!1474312 () Bool)

(declare-fun e!941838 () Bool)

(declare-fun tp!416739 () Bool)

(assert (=> b!1474312 (= e!941838 (and (inv!20718 (c!242395 (dynLambda!7038 (toChars!3947 (transformation!2761 (rule!4538 (h!20910 (t!136020 l1!3136))))) (value!88336 (h!20910 (t!136020 l1!3136)))))) tp!416739))))

(declare-fun result!100678 () Bool)

(assert (=> tb!83753 (= result!100678 (and (inv!20719 (dynLambda!7038 (toChars!3947 (transformation!2761 (rule!4538 (h!20910 (t!136020 l1!3136))))) (value!88336 (h!20910 (t!136020 l1!3136))))) e!941838))))

(assert (= tb!83753 b!1474312))

(declare-fun m!1719275 () Bool)

(assert (=> b!1474312 m!1719275))

(declare-fun m!1719277 () Bool)

(assert (=> tb!83753 m!1719277))

(assert (=> b!1474309 t!136214))

(declare-fun b_and!101537 () Bool)

(assert (= b_and!101531 (and (=> t!136214 result!100678) b_and!101537)))

(declare-fun t!136216 () Bool)

(declare-fun tb!83755 () Bool)

(assert (=> (and b!1473555 (= (toChars!3947 (transformation!2761 (rule!4538 (h!20910 l1!3136)))) (toChars!3947 (transformation!2761 (rule!4538 (h!20910 (t!136020 l1!3136)))))) t!136216) tb!83755))

(declare-fun result!100680 () Bool)

(assert (= result!100680 result!100678))

(assert (=> b!1474309 t!136216))

(declare-fun b_and!101539 () Bool)

(assert (= b_and!101533 (and (=> t!136216 result!100680) b_and!101539)))

(declare-fun tb!83757 () Bool)

(declare-fun t!136218 () Bool)

(assert (=> (and b!1473960 (= (toChars!3947 (transformation!2761 (h!20909 (t!136019 rules!4290)))) (toChars!3947 (transformation!2761 (rule!4538 (h!20910 (t!136020 l1!3136)))))) t!136218) tb!83757))

(declare-fun result!100682 () Bool)

(assert (= result!100682 result!100678))

(assert (=> b!1474309 t!136218))

(declare-fun b_and!101541 () Bool)

(assert (= b_and!101525 (and (=> t!136218 result!100682) b_and!101541)))

(declare-fun t!136220 () Bool)

(declare-fun tb!83759 () Bool)

(assert (=> (and b!1473968 (= (toChars!3947 (transformation!2761 (rule!4538 (h!20910 (t!136020 l1!3136))))) (toChars!3947 (transformation!2761 (rule!4538 (h!20910 (t!136020 l1!3136)))))) t!136220) tb!83759))

(declare-fun result!100684 () Bool)

(assert (= result!100684 result!100678))

(assert (=> b!1474309 t!136220))

(declare-fun b_and!101543 () Bool)

(assert (= b_and!101535 (and (=> t!136220 result!100684) b_and!101543)))

(declare-fun t!136222 () Bool)

(declare-fun tb!83761 () Bool)

(assert (=> (and b!1473548 (= (toChars!3947 (transformation!2761 (h!20909 rules!4290))) (toChars!3947 (transformation!2761 (rule!4538 (h!20910 (t!136020 l1!3136)))))) t!136222) tb!83761))

(declare-fun result!100686 () Bool)

(assert (= result!100686 result!100678))

(assert (=> b!1474309 t!136222))

(declare-fun b_and!101545 () Bool)

(assert (= b_and!101529 (and (=> t!136222 result!100686) b_and!101545)))

(declare-fun t!136224 () Bool)

(declare-fun tb!83763 () Bool)

(assert (=> (and b!1473535 (= (toChars!3947 (transformation!2761 (rule!4538 (h!20910 l2!3105)))) (toChars!3947 (transformation!2761 (rule!4538 (h!20910 (t!136020 l1!3136)))))) t!136224) tb!83763))

(declare-fun result!100688 () Bool)

(assert (= result!100688 result!100678))

(assert (=> b!1474309 t!136224))

(declare-fun b_and!101547 () Bool)

(assert (= b_and!101527 (and (=> t!136224 result!100688) b_and!101547)))

(declare-fun m!1719281 () Bool)

(assert (=> d!432338 m!1719281))

(declare-fun m!1719283 () Bool)

(assert (=> b!1474309 m!1719283))

(assert (=> b!1474309 m!1719283))

(declare-fun m!1719285 () Bool)

(assert (=> b!1474309 m!1719285))

(declare-fun m!1719287 () Bool)

(assert (=> b!1474310 m!1719287))

(assert (=> b!1473965 d!432338))

(assert (=> d!431962 d!431972))

(declare-fun d!432348 () Bool)

(assert (=> d!432348 (rulesProduceIndividualToken!1276 thiss!27374 rules!4290 lt!512069)))

(assert (=> d!432348 true))

(declare-fun _$77!638 () Unit!25209)

(assert (=> d!432348 (= (choose!9039 thiss!27374 rules!4290 l1!3136 lt!512069) _$77!638)))

(declare-fun bs!345380 () Bool)

(assert (= bs!345380 d!432348))

(assert (=> bs!345380 m!1717531))

(assert (=> d!431962 d!432348))

(assert (=> d!431962 d!431948))

(declare-fun b!1474318 () Bool)

(declare-fun e!941843 () Bool)

(declare-fun e!941842 () Bool)

(assert (=> b!1474318 (= e!941843 e!941842)))

(declare-fun c!242477 () Bool)

(assert (=> b!1474318 (= c!242477 ((_ is IntegerValue!8554) (value!88336 (h!20910 (t!136020 l2!3105)))))))

(declare-fun b!1474319 () Bool)

(declare-fun e!941844 () Bool)

(assert (=> b!1474319 (= e!941844 (inv!15 (value!88336 (h!20910 (t!136020 l2!3105)))))))

(declare-fun b!1474320 () Bool)

(declare-fun res!666472 () Bool)

(assert (=> b!1474320 (=> res!666472 e!941844)))

(assert (=> b!1474320 (= res!666472 (not ((_ is IntegerValue!8555) (value!88336 (h!20910 (t!136020 l2!3105))))))))

(assert (=> b!1474320 (= e!941842 e!941844)))

(declare-fun b!1474321 () Bool)

(assert (=> b!1474321 (= e!941843 (inv!16 (value!88336 (h!20910 (t!136020 l2!3105)))))))

(declare-fun d!432350 () Bool)

(declare-fun c!242476 () Bool)

(assert (=> d!432350 (= c!242476 ((_ is IntegerValue!8553) (value!88336 (h!20910 (t!136020 l2!3105)))))))

(assert (=> d!432350 (= (inv!21 (value!88336 (h!20910 (t!136020 l2!3105)))) e!941843)))

(declare-fun b!1474322 () Bool)

(assert (=> b!1474322 (= e!941842 (inv!17 (value!88336 (h!20910 (t!136020 l2!3105)))))))

(assert (= (and d!432350 c!242476) b!1474321))

(assert (= (and d!432350 (not c!242476)) b!1474318))

(assert (= (and b!1474318 c!242477) b!1474322))

(assert (= (and b!1474318 (not c!242477)) b!1474320))

(assert (= (and b!1474320 (not res!666472)) b!1474319))

(declare-fun m!1719301 () Bool)

(assert (=> b!1474319 m!1719301))

(declare-fun m!1719303 () Bool)

(assert (=> b!1474321 m!1719303))

(declare-fun m!1719305 () Bool)

(assert (=> b!1474322 m!1719305))

(assert (=> b!1473942 d!432350))

(declare-fun d!432352 () Bool)

(declare-fun lt!512561 () Token!5184)

(assert (=> d!432352 (contains!2928 (t!136020 (t!136020 l1!3136)) lt!512561)))

(declare-fun e!941845 () Token!5184)

(assert (=> d!432352 (= lt!512561 e!941845)))

(declare-fun c!242478 () Bool)

(assert (=> d!432352 (= c!242478 (and ((_ is Cons!15509) (t!136020 (t!136020 l1!3136))) ((_ is Nil!15509) (t!136020 (t!136020 (t!136020 l1!3136))))))))

(assert (=> d!432352 (not (isEmpty!9686 (t!136020 (t!136020 l1!3136))))))

(assert (=> d!432352 (= (last!319 (t!136020 (t!136020 l1!3136))) lt!512561)))

(declare-fun b!1474323 () Bool)

(assert (=> b!1474323 (= e!941845 (h!20910 (t!136020 (t!136020 l1!3136))))))

(declare-fun b!1474324 () Bool)

(assert (=> b!1474324 (= e!941845 (last!319 (t!136020 (t!136020 (t!136020 l1!3136)))))))

(assert (= (and d!432352 c!242478) b!1474323))

(assert (= (and d!432352 (not c!242478)) b!1474324))

(declare-fun m!1719313 () Bool)

(assert (=> d!432352 m!1719313))

(declare-fun m!1719317 () Bool)

(assert (=> d!432352 m!1719317))

(declare-fun m!1719319 () Bool)

(assert (=> b!1474324 m!1719319))

(assert (=> b!1473855 d!432352))

(declare-fun d!432356 () Bool)

(assert (=> d!432356 (= (isEmpty!9689 (originalCharacters!3623 (h!20910 l1!3136))) ((_ is Nil!15507) (originalCharacters!3623 (h!20910 l1!3136))))))

(assert (=> d!431988 d!432356))

(declare-fun bs!345383 () Bool)

(declare-fun d!432362 () Bool)

(assert (= bs!345383 (and d!432362 d!432180)))

(declare-fun lambda!63598 () Int)

(assert (=> bs!345383 (= lambda!63598 lambda!63586)))

(declare-fun bs!345384 () Bool)

(assert (= bs!345384 (and d!432362 d!431830)))

(assert (=> bs!345384 (= lambda!63598 lambda!63542)))

(declare-fun bs!345385 () Bool)

(assert (= bs!345385 (and d!432362 d!431904)))

(assert (=> bs!345385 (= lambda!63598 lambda!63553)))

(declare-fun bs!345386 () Bool)

(assert (= bs!345386 (and d!432362 d!431958)))

(assert (=> bs!345386 (= lambda!63598 lambda!63563)))

(declare-fun bs!345387 () Bool)

(assert (= bs!345387 (and d!432362 d!431852)))

(assert (=> bs!345387 (= lambda!63598 lambda!63546)))

(declare-fun bs!345388 () Bool)

(assert (= bs!345388 (and d!432362 d!432310)))

(assert (=> bs!345388 (= lambda!63598 lambda!63595)))

(declare-fun bs!345389 () Bool)

(assert (= bs!345389 (and d!432362 d!431856)))

(assert (=> bs!345389 (= lambda!63598 lambda!63547)))

(declare-fun bs!345390 () Bool)

(assert (= bs!345390 (and d!432362 d!432176)))

(assert (=> bs!345390 (= lambda!63598 lambda!63585)))

(declare-fun bs!345391 () Bool)

(assert (= bs!345391 (and d!432362 d!431952)))

(assert (=> bs!345391 (= lambda!63598 lambda!63562)))

(declare-fun b!1474332 () Bool)

(declare-fun e!941852 () Bool)

(assert (=> b!1474332 (= e!941852 true)))

(declare-fun b!1474331 () Bool)

(declare-fun e!941851 () Bool)

(assert (=> b!1474331 (= e!941851 e!941852)))

(declare-fun b!1474330 () Bool)

(declare-fun e!941850 () Bool)

(assert (=> b!1474330 (= e!941850 e!941851)))

(assert (=> d!432362 e!941850))

(assert (= b!1474331 b!1474332))

(assert (= b!1474330 b!1474331))

(assert (= (and d!432362 ((_ is Cons!15508) rules!4290)) b!1474330))

(assert (=> b!1474332 (< (dynLambda!7035 order!9307 (toValue!4088 (transformation!2761 (h!20909 rules!4290)))) (dynLambda!7036 order!9309 lambda!63598))))

(assert (=> b!1474332 (< (dynLambda!7037 order!9311 (toChars!3947 (transformation!2761 (h!20909 rules!4290)))) (dynLambda!7036 order!9309 lambda!63598))))

(assert (=> d!432362 true))

(declare-fun lt!512566 () Bool)

(assert (=> d!432362 (= lt!512566 (forall!3777 (t!136020 (t!136020 l1!3136)) lambda!63598))))

(declare-fun e!941848 () Bool)

(assert (=> d!432362 (= lt!512566 e!941848)))

(declare-fun res!666477 () Bool)

(assert (=> d!432362 (=> res!666477 e!941848)))

(assert (=> d!432362 (= res!666477 (not ((_ is Cons!15509) (t!136020 (t!136020 l1!3136)))))))

(assert (=> d!432362 (not (isEmpty!9685 rules!4290))))

(assert (=> d!432362 (= (rulesProduceEachTokenIndividuallyList!784 thiss!27374 rules!4290 (t!136020 (t!136020 l1!3136))) lt!512566)))

(declare-fun b!1474328 () Bool)

(declare-fun e!941849 () Bool)

(assert (=> b!1474328 (= e!941848 e!941849)))

(declare-fun res!666476 () Bool)

(assert (=> b!1474328 (=> (not res!666476) (not e!941849))))

(assert (=> b!1474328 (= res!666476 (rulesProduceIndividualToken!1276 thiss!27374 rules!4290 (h!20910 (t!136020 (t!136020 l1!3136)))))))

(declare-fun b!1474329 () Bool)

(assert (=> b!1474329 (= e!941849 (rulesProduceEachTokenIndividuallyList!784 thiss!27374 rules!4290 (t!136020 (t!136020 (t!136020 l1!3136)))))))

(assert (= (and d!432362 (not res!666477)) b!1474328))

(assert (= (and b!1474328 res!666476) b!1474329))

(declare-fun m!1719351 () Bool)

(assert (=> d!432362 m!1719351))

(assert (=> d!432362 m!1717573))

(assert (=> b!1474328 m!1718123))

(declare-fun m!1719355 () Bool)

(assert (=> b!1474329 m!1719355))

(assert (=> b!1473883 d!432362))

(declare-fun d!432370 () Bool)

(declare-fun lt!512570 () Bool)

(declare-fun e!941853 () Bool)

(assert (=> d!432370 (= lt!512570 e!941853)))

(declare-fun res!666478 () Bool)

(assert (=> d!432370 (=> (not res!666478) (not e!941853))))

(assert (=> d!432370 (= res!666478 (= (list!6180 (_1!8032 (lex!1089 thiss!27374 rules!4290 (print!1124 thiss!27374 (singletonSeq!1301 (h!20910 l1!3136)))))) (list!6180 (singletonSeq!1301 (h!20910 l1!3136)))))))

(declare-fun e!941854 () Bool)

(assert (=> d!432370 (= lt!512570 e!941854)))

(declare-fun res!666480 () Bool)

(assert (=> d!432370 (=> (not res!666480) (not e!941854))))

(declare-fun lt!512571 () tuple2!14292)

(assert (=> d!432370 (= res!666480 (= (size!12580 (_1!8032 lt!512571)) 1))))

(assert (=> d!432370 (= lt!512571 (lex!1089 thiss!27374 rules!4290 (print!1124 thiss!27374 (singletonSeq!1301 (h!20910 l1!3136)))))))

(assert (=> d!432370 (not (isEmpty!9685 rules!4290))))

(assert (=> d!432370 (= (rulesProduceIndividualToken!1276 thiss!27374 rules!4290 (h!20910 l1!3136)) lt!512570)))

(declare-fun b!1474333 () Bool)

(declare-fun res!666479 () Bool)

(assert (=> b!1474333 (=> (not res!666479) (not e!941854))))

(assert (=> b!1474333 (= res!666479 (= (apply!4000 (_1!8032 lt!512571) 0) (h!20910 l1!3136)))))

(declare-fun b!1474334 () Bool)

(assert (=> b!1474334 (= e!941854 (isEmpty!9690 (_2!8032 lt!512571)))))

(declare-fun b!1474335 () Bool)

(assert (=> b!1474335 (= e!941853 (isEmpty!9690 (_2!8032 (lex!1089 thiss!27374 rules!4290 (print!1124 thiss!27374 (singletonSeq!1301 (h!20910 l1!3136)))))))))

(assert (= (and d!432370 res!666480) b!1474333))

(assert (= (and b!1474333 res!666479) b!1474334))

(assert (= (and d!432370 res!666478) b!1474335))

(declare-fun m!1719365 () Bool)

(assert (=> d!432370 m!1719365))

(declare-fun m!1719369 () Bool)

(assert (=> d!432370 m!1719369))

(declare-fun m!1719373 () Bool)

(assert (=> d!432370 m!1719373))

(declare-fun m!1719377 () Bool)

(assert (=> d!432370 m!1719377))

(declare-fun m!1719379 () Bool)

(assert (=> d!432370 m!1719379))

(assert (=> d!432370 m!1719365))

(declare-fun m!1719381 () Bool)

(assert (=> d!432370 m!1719381))

(assert (=> d!432370 m!1719365))

(assert (=> d!432370 m!1719377))

(assert (=> d!432370 m!1717573))

(declare-fun m!1719383 () Bool)

(assert (=> b!1474333 m!1719383))

(declare-fun m!1719387 () Bool)

(assert (=> b!1474334 m!1719387))

(assert (=> b!1474335 m!1719365))

(assert (=> b!1474335 m!1719365))

(assert (=> b!1474335 m!1719377))

(assert (=> b!1474335 m!1719377))

(assert (=> b!1474335 m!1719379))

(declare-fun m!1719389 () Bool)

(assert (=> b!1474335 m!1719389))

(assert (=> b!1473871 d!432370))

(declare-fun d!432376 () Bool)

(assert (=> d!432376 (= (isEmpty!9689 (originalCharacters!3623 (h!20910 l2!3105))) ((_ is Nil!15507) (originalCharacters!3623 (h!20910 l2!3105))))))

(assert (=> d!431910 d!432376))

(declare-fun d!432378 () Bool)

(assert (=> d!432378 (rulesProduceIndividualToken!1276 thiss!27374 rules!4290 (h!20910 (t!136020 l1!3136)))))

(declare-fun lt!512573 () Unit!25209)

(assert (=> d!432378 (= lt!512573 (choose!9039 thiss!27374 rules!4290 (t!136020 l1!3136) (h!20910 (t!136020 l1!3136))))))

(assert (=> d!432378 (not (isEmpty!9685 rules!4290))))

(assert (=> d!432378 (= (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!457 thiss!27374 rules!4290 (t!136020 l1!3136) (h!20910 (t!136020 l1!3136))) lt!512573)))

(declare-fun bs!345396 () Bool)

(assert (= bs!345396 d!432378))

(assert (=> bs!345396 m!1718031))

(declare-fun m!1719391 () Bool)

(assert (=> bs!345396 m!1719391))

(assert (=> bs!345396 m!1717573))

(assert (=> b!1473903 d!432378))

(declare-fun d!432380 () Bool)

(assert (=> d!432380 (= (separableTokensPredicate!560 thiss!27374 (h!20910 (t!136020 l1!3136)) (h!20910 (t!136020 (t!136020 l1!3136))) rules!4290) (not (prefixMatchZipperSequence!364 (rulesRegex!418 thiss!27374 rules!4290) (++!4189 (charsOf!1582 (h!20910 (t!136020 l1!3136))) (singletonSeq!1300 (apply!3999 (charsOf!1582 (h!20910 (t!136020 (t!136020 l1!3136)))) 0))))))))

(declare-fun bs!345397 () Bool)

(assert (= bs!345397 d!432380))

(assert (=> bs!345397 m!1718117))

(declare-fun m!1719397 () Bool)

(assert (=> bs!345397 m!1719397))

(assert (=> bs!345397 m!1718117))

(assert (=> bs!345397 m!1717849))

(assert (=> bs!345397 m!1718101))

(declare-fun m!1719399 () Bool)

(assert (=> bs!345397 m!1719399))

(declare-fun m!1719401 () Bool)

(assert (=> bs!345397 m!1719401))

(assert (=> bs!345397 m!1718101))

(assert (=> bs!345397 m!1719397))

(assert (=> bs!345397 m!1719399))

(assert (=> bs!345397 m!1717849))

(assert (=> bs!345397 m!1719401))

(declare-fun m!1719407 () Bool)

(assert (=> bs!345397 m!1719407))

(assert (=> b!1473903 d!432380))

(declare-fun d!432384 () Bool)

(declare-fun lt!512574 () Bool)

(declare-fun e!941856 () Bool)

(assert (=> d!432384 (= lt!512574 e!941856)))

(declare-fun res!666481 () Bool)

(assert (=> d!432384 (=> (not res!666481) (not e!941856))))

(assert (=> d!432384 (= res!666481 (= (list!6180 (_1!8032 (lex!1089 thiss!27374 rules!4290 (print!1124 thiss!27374 (singletonSeq!1301 (h!20910 (t!136020 (t!136020 l1!3136)))))))) (list!6180 (singletonSeq!1301 (h!20910 (t!136020 (t!136020 l1!3136)))))))))

(declare-fun e!941857 () Bool)

(assert (=> d!432384 (= lt!512574 e!941857)))

(declare-fun res!666483 () Bool)

(assert (=> d!432384 (=> (not res!666483) (not e!941857))))

(declare-fun lt!512575 () tuple2!14292)

(assert (=> d!432384 (= res!666483 (= (size!12580 (_1!8032 lt!512575)) 1))))

(assert (=> d!432384 (= lt!512575 (lex!1089 thiss!27374 rules!4290 (print!1124 thiss!27374 (singletonSeq!1301 (h!20910 (t!136020 (t!136020 l1!3136)))))))))

(assert (=> d!432384 (not (isEmpty!9685 rules!4290))))

(assert (=> d!432384 (= (rulesProduceIndividualToken!1276 thiss!27374 rules!4290 (h!20910 (t!136020 (t!136020 l1!3136)))) lt!512574)))

(declare-fun b!1474337 () Bool)

(declare-fun res!666482 () Bool)

(assert (=> b!1474337 (=> (not res!666482) (not e!941857))))

(assert (=> b!1474337 (= res!666482 (= (apply!4000 (_1!8032 lt!512575) 0) (h!20910 (t!136020 (t!136020 l1!3136)))))))

(declare-fun b!1474338 () Bool)

(assert (=> b!1474338 (= e!941857 (isEmpty!9690 (_2!8032 lt!512575)))))

(declare-fun b!1474339 () Bool)

(assert (=> b!1474339 (= e!941856 (isEmpty!9690 (_2!8032 (lex!1089 thiss!27374 rules!4290 (print!1124 thiss!27374 (singletonSeq!1301 (h!20910 (t!136020 (t!136020 l1!3136)))))))))))

(assert (= (and d!432384 res!666483) b!1474337))

(assert (= (and b!1474337 res!666482) b!1474338))

(assert (= (and d!432384 res!666481) b!1474339))

(declare-fun m!1719409 () Bool)

(assert (=> d!432384 m!1719409))

(declare-fun m!1719411 () Bool)

(assert (=> d!432384 m!1719411))

(declare-fun m!1719413 () Bool)

(assert (=> d!432384 m!1719413))

(declare-fun m!1719417 () Bool)

(assert (=> d!432384 m!1719417))

(declare-fun m!1719421 () Bool)

(assert (=> d!432384 m!1719421))

(assert (=> d!432384 m!1719409))

(declare-fun m!1719423 () Bool)

(assert (=> d!432384 m!1719423))

(assert (=> d!432384 m!1719409))

(assert (=> d!432384 m!1719417))

(assert (=> d!432384 m!1717573))

(declare-fun m!1719429 () Bool)

(assert (=> b!1474337 m!1719429))

(declare-fun m!1719431 () Bool)

(assert (=> b!1474338 m!1719431))

(assert (=> b!1474339 m!1719409))

(assert (=> b!1474339 m!1719409))

(assert (=> b!1474339 m!1719417))

(assert (=> b!1474339 m!1719417))

(assert (=> b!1474339 m!1719421))

(declare-fun m!1719441 () Bool)

(assert (=> b!1474339 m!1719441))

(assert (=> b!1473903 d!432384))

(assert (=> b!1473903 d!432066))

(declare-fun d!432388 () Bool)

(declare-fun lt!512578 () Int)

(assert (=> d!432388 (= lt!512578 (size!12579 (list!6181 (charsOf!1582 (h!20910 (t!136020 (t!136020 l1!3136)))))))))

(assert (=> d!432388 (= lt!512578 (size!12585 (c!242395 (charsOf!1582 (h!20910 (t!136020 (t!136020 l1!3136)))))))))

(assert (=> d!432388 (= (size!12581 (charsOf!1582 (h!20910 (t!136020 (t!136020 l1!3136))))) lt!512578)))

(declare-fun bs!345399 () Bool)

(assert (= bs!345399 d!432388))

(assert (=> bs!345399 m!1718117))

(declare-fun m!1719445 () Bool)

(assert (=> bs!345399 m!1719445))

(assert (=> bs!345399 m!1719445))

(declare-fun m!1719447 () Bool)

(assert (=> bs!345399 m!1719447))

(declare-fun m!1719449 () Bool)

(assert (=> bs!345399 m!1719449))

(assert (=> b!1473903 d!432388))

(declare-fun d!432392 () Bool)

(assert (=> d!432392 (rulesProduceIndividualToken!1276 thiss!27374 rules!4290 (h!20910 (t!136020 (t!136020 l1!3136))))))

(declare-fun lt!512580 () Unit!25209)

(assert (=> d!432392 (= lt!512580 (choose!9039 thiss!27374 rules!4290 (t!136020 l1!3136) (h!20910 (t!136020 (t!136020 l1!3136)))))))

(assert (=> d!432392 (not (isEmpty!9685 rules!4290))))

(assert (=> d!432392 (= (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!457 thiss!27374 rules!4290 (t!136020 l1!3136) (h!20910 (t!136020 (t!136020 l1!3136)))) lt!512580)))

(declare-fun bs!345400 () Bool)

(assert (= bs!345400 d!432392))

(assert (=> bs!345400 m!1718123))

(declare-fun m!1719451 () Bool)

(assert (=> bs!345400 m!1719451))

(assert (=> bs!345400 m!1717573))

(assert (=> b!1473903 d!432392))

(declare-fun d!432394 () Bool)

(declare-fun lt!512581 () BalanceConc!10514)

(assert (=> d!432394 (= (list!6181 lt!512581) (originalCharacters!3623 (h!20910 (t!136020 (t!136020 l1!3136)))))))

(assert (=> d!432394 (= lt!512581 (dynLambda!7038 (toChars!3947 (transformation!2761 (rule!4538 (h!20910 (t!136020 (t!136020 l1!3136)))))) (value!88336 (h!20910 (t!136020 (t!136020 l1!3136))))))))

(assert (=> d!432394 (= (charsOf!1582 (h!20910 (t!136020 (t!136020 l1!3136)))) lt!512581)))

(declare-fun b_lambda!46061 () Bool)

(assert (=> (not b_lambda!46061) (not d!432394)))

(declare-fun t!136238 () Bool)

(declare-fun tb!83777 () Bool)

(assert (=> (and b!1473968 (= (toChars!3947 (transformation!2761 (rule!4538 (h!20910 (t!136020 l1!3136))))) (toChars!3947 (transformation!2761 (rule!4538 (h!20910 (t!136020 (t!136020 l1!3136))))))) t!136238) tb!83777))

(declare-fun b!1474348 () Bool)

(declare-fun e!941865 () Bool)

(declare-fun tp!416741 () Bool)

(assert (=> b!1474348 (= e!941865 (and (inv!20718 (c!242395 (dynLambda!7038 (toChars!3947 (transformation!2761 (rule!4538 (h!20910 (t!136020 (t!136020 l1!3136)))))) (value!88336 (h!20910 (t!136020 (t!136020 l1!3136))))))) tp!416741))))

(declare-fun result!100702 () Bool)

(assert (=> tb!83777 (= result!100702 (and (inv!20719 (dynLambda!7038 (toChars!3947 (transformation!2761 (rule!4538 (h!20910 (t!136020 (t!136020 l1!3136)))))) (value!88336 (h!20910 (t!136020 (t!136020 l1!3136)))))) e!941865))))

(assert (= tb!83777 b!1474348))

(declare-fun m!1719453 () Bool)

(assert (=> b!1474348 m!1719453))

(declare-fun m!1719455 () Bool)

(assert (=> tb!83777 m!1719455))

(assert (=> d!432394 t!136238))

(declare-fun b_and!101561 () Bool)

(assert (= b_and!101543 (and (=> t!136238 result!100702) b_and!101561)))

(declare-fun tb!83779 () Bool)

(declare-fun t!136240 () Bool)

(assert (=> (and b!1473548 (= (toChars!3947 (transformation!2761 (h!20909 rules!4290))) (toChars!3947 (transformation!2761 (rule!4538 (h!20910 (t!136020 (t!136020 l1!3136))))))) t!136240) tb!83779))

(declare-fun result!100704 () Bool)

(assert (= result!100704 result!100702))

(assert (=> d!432394 t!136240))

(declare-fun b_and!101563 () Bool)

(assert (= b_and!101545 (and (=> t!136240 result!100704) b_and!101563)))

(declare-fun tb!83781 () Bool)

(declare-fun t!136242 () Bool)

(assert (=> (and b!1473960 (= (toChars!3947 (transformation!2761 (h!20909 (t!136019 rules!4290)))) (toChars!3947 (transformation!2761 (rule!4538 (h!20910 (t!136020 (t!136020 l1!3136))))))) t!136242) tb!83781))

(declare-fun result!100706 () Bool)

(assert (= result!100706 result!100702))

(assert (=> d!432394 t!136242))

(declare-fun b_and!101565 () Bool)

(assert (= b_and!101541 (and (=> t!136242 result!100706) b_and!101565)))

(declare-fun tb!83783 () Bool)

(declare-fun t!136244 () Bool)

(assert (=> (and b!1473944 (= (toChars!3947 (transformation!2761 (rule!4538 (h!20910 (t!136020 l2!3105))))) (toChars!3947 (transformation!2761 (rule!4538 (h!20910 (t!136020 (t!136020 l1!3136))))))) t!136244) tb!83783))

(declare-fun result!100708 () Bool)

(assert (= result!100708 result!100702))

(assert (=> d!432394 t!136244))

(declare-fun b_and!101567 () Bool)

(assert (= b_and!101537 (and (=> t!136244 result!100708) b_and!101567)))

(declare-fun tb!83785 () Bool)

(declare-fun t!136246 () Bool)

(assert (=> (and b!1473535 (= (toChars!3947 (transformation!2761 (rule!4538 (h!20910 l2!3105)))) (toChars!3947 (transformation!2761 (rule!4538 (h!20910 (t!136020 (t!136020 l1!3136))))))) t!136246) tb!83785))

(declare-fun result!100710 () Bool)

(assert (= result!100710 result!100702))

(assert (=> d!432394 t!136246))

(declare-fun b_and!101569 () Bool)

(assert (= b_and!101547 (and (=> t!136246 result!100710) b_and!101569)))

(declare-fun t!136248 () Bool)

(declare-fun tb!83787 () Bool)

(assert (=> (and b!1473555 (= (toChars!3947 (transformation!2761 (rule!4538 (h!20910 l1!3136)))) (toChars!3947 (transformation!2761 (rule!4538 (h!20910 (t!136020 (t!136020 l1!3136))))))) t!136248) tb!83787))

(declare-fun result!100712 () Bool)

(assert (= result!100712 result!100702))

(assert (=> d!432394 t!136248))

(declare-fun b_and!101571 () Bool)

(assert (= b_and!101539 (and (=> t!136248 result!100712) b_and!101571)))

(declare-fun m!1719457 () Bool)

(assert (=> d!432394 m!1719457))

(declare-fun m!1719459 () Bool)

(assert (=> d!432394 m!1719459))

(assert (=> b!1473903 d!432394))

(declare-fun d!432396 () Bool)

(assert (=> d!432396 (tokensListTwoByTwoPredicateSeparableList!277 thiss!27374 (++!4187 (t!136020 l1!3136) l2!3105) rules!4290)))

(declare-fun lt!512602 () Unit!25209)

(declare-fun lt!512603 () Unit!25209)

(assert (=> d!432396 (= lt!512602 lt!512603)))

(assert (=> d!432396 (rulesProduceEachTokenIndividuallyList!784 thiss!27374 rules!4290 (++!4187 (t!136020 l1!3136) l2!3105))))

(assert (=> d!432396 (= lt!512603 (lemmaRulesProduceEachTokenIndividuallyConcat!64 thiss!27374 rules!4290 (t!136020 l1!3136) l2!3105))))

(assert (=> d!432396 true))

(declare-fun _$81!75 () Unit!25209)

(assert (=> d!432396 (= (choose!9038 thiss!27374 (t!136020 l1!3136) l2!3105 rules!4290) _$81!75)))

(declare-fun bs!345438 () Bool)

(assert (= bs!345438 d!432396))

(assert (=> bs!345438 m!1717559))

(assert (=> bs!345438 m!1717559))

(assert (=> bs!345438 m!1717815))

(assert (=> bs!345438 m!1717559))

(assert (=> bs!345438 m!1717673))

(assert (=> bs!345438 m!1717565))

(assert (=> d!431862 d!432396))

(assert (=> d!431862 d!431948))

(declare-fun d!432476 () Bool)

(declare-fun lt!512604 () Bool)

(assert (=> d!432476 (= lt!512604 (isEmpty!9689 (list!6181 (_2!8032 lt!512230))))))

(assert (=> d!432476 (= lt!512604 (isEmpty!9694 (c!242395 (_2!8032 lt!512230))))))

(assert (=> d!432476 (= (isEmpty!9690 (_2!8032 lt!512230)) lt!512604)))

(declare-fun bs!345439 () Bool)

(assert (= bs!345439 d!432476))

(declare-fun m!1719653 () Bool)

(assert (=> bs!345439 m!1719653))

(assert (=> bs!345439 m!1719653))

(declare-fun m!1719655 () Bool)

(assert (=> bs!345439 m!1719655))

(declare-fun m!1719657 () Bool)

(assert (=> bs!345439 m!1719657))

(assert (=> b!1473888 d!432476))

(declare-fun d!432478 () Bool)

(declare-fun res!666505 () Bool)

(declare-fun e!941959 () Bool)

(assert (=> d!432478 (=> res!666505 e!941959)))

(assert (=> d!432478 (= res!666505 ((_ is Nil!15509) (list!6180 (seqFromList!1726 lt!512073))))))

(assert (=> d!432478 (= (forall!3777 (list!6180 (seqFromList!1726 lt!512073)) lambda!63553) e!941959)))

(declare-fun b!1474515 () Bool)

(declare-fun e!941960 () Bool)

(assert (=> b!1474515 (= e!941959 e!941960)))

(declare-fun res!666506 () Bool)

(assert (=> b!1474515 (=> (not res!666506) (not e!941960))))

(assert (=> b!1474515 (= res!666506 (dynLambda!7042 lambda!63553 (h!20910 (list!6180 (seqFromList!1726 lt!512073)))))))

(declare-fun b!1474516 () Bool)

(assert (=> b!1474516 (= e!941960 (forall!3777 (t!136020 (list!6180 (seqFromList!1726 lt!512073))) lambda!63553))))

(assert (= (and d!432478 (not res!666505)) b!1474515))

(assert (= (and b!1474515 res!666506) b!1474516))

(declare-fun b_lambda!46093 () Bool)

(assert (=> (not b_lambda!46093) (not b!1474515)))

(declare-fun m!1719659 () Bool)

(assert (=> b!1474515 m!1719659))

(declare-fun m!1719661 () Bool)

(assert (=> b!1474516 m!1719661))

(assert (=> d!431904 d!432478))

(assert (=> d!431904 d!432178))

(declare-fun d!432480 () Bool)

(declare-fun lt!512607 () Bool)

(assert (=> d!432480 (= lt!512607 (forall!3777 (list!6180 (seqFromList!1726 lt!512073)) lambda!63553))))

(declare-fun forall!3781 (Conc!5288 Int) Bool)

(assert (=> d!432480 (= lt!512607 (forall!3781 (c!242396 (seqFromList!1726 lt!512073)) lambda!63553))))

(assert (=> d!432480 (= (forall!3778 (seqFromList!1726 lt!512073) lambda!63553) lt!512607)))

(declare-fun bs!345440 () Bool)

(assert (= bs!345440 d!432480))

(assert (=> bs!345440 m!1717567))

(assert (=> bs!345440 m!1717825))

(assert (=> bs!345440 m!1717825))

(assert (=> bs!345440 m!1717827))

(declare-fun m!1719663 () Bool)

(assert (=> bs!345440 m!1719663))

(assert (=> d!431904 d!432480))

(assert (=> d!431904 d!431948))

(declare-fun d!432482 () Bool)

(declare-fun lt!512610 () Bool)

(assert (=> d!432482 (= lt!512610 (select (content!2267 (t!136020 l1!3136)) lt!512204))))

(declare-fun e!941966 () Bool)

(assert (=> d!432482 (= lt!512610 e!941966)))

(declare-fun res!666511 () Bool)

(assert (=> d!432482 (=> (not res!666511) (not e!941966))))

(assert (=> d!432482 (= res!666511 ((_ is Cons!15509) (t!136020 l1!3136)))))

(assert (=> d!432482 (= (contains!2928 (t!136020 l1!3136) lt!512204) lt!512610)))

(declare-fun b!1474521 () Bool)

(declare-fun e!941965 () Bool)

(assert (=> b!1474521 (= e!941966 e!941965)))

(declare-fun res!666512 () Bool)

(assert (=> b!1474521 (=> res!666512 e!941965)))

(assert (=> b!1474521 (= res!666512 (= (h!20910 (t!136020 l1!3136)) lt!512204))))

(declare-fun b!1474522 () Bool)

(assert (=> b!1474522 (= e!941965 (contains!2928 (t!136020 (t!136020 l1!3136)) lt!512204))))

(assert (= (and d!432482 res!666511) b!1474521))

(assert (= (and b!1474521 (not res!666512)) b!1474522))

(assert (=> d!432482 m!1717655))

(declare-fun m!1719665 () Bool)

(assert (=> d!432482 m!1719665))

(declare-fun m!1719667 () Bool)

(assert (=> b!1474522 m!1719667))

(assert (=> d!431946 d!432482))

(assert (=> d!431946 d!431986))

(declare-fun d!432484 () Bool)

(declare-fun list!6185 (Conc!5287) List!15573)

(assert (=> d!432484 (= (list!6181 (dynLambda!7038 (toChars!3947 (transformation!2761 (rule!4538 (h!20910 l1!3136)))) (value!88336 (h!20910 l1!3136)))) (list!6185 (c!242395 (dynLambda!7038 (toChars!3947 (transformation!2761 (rule!4538 (h!20910 l1!3136)))) (value!88336 (h!20910 l1!3136))))))))

(declare-fun bs!345441 () Bool)

(assert (= bs!345441 d!432484))

(declare-fun m!1719669 () Bool)

(assert (=> bs!345441 m!1719669))

(assert (=> b!1473905 d!432484))

(declare-fun d!432486 () Bool)

(declare-fun lt!512611 () Bool)

(declare-fun e!941967 () Bool)

(assert (=> d!432486 (= lt!512611 e!941967)))

(declare-fun res!666513 () Bool)

(assert (=> d!432486 (=> (not res!666513) (not e!941967))))

(assert (=> d!432486 (= res!666513 (= (list!6180 (_1!8032 (lex!1089 thiss!27374 rules!4290 (print!1124 thiss!27374 (singletonSeq!1301 (h!20910 (t!136020 l2!3105))))))) (list!6180 (singletonSeq!1301 (h!20910 (t!136020 l2!3105))))))))

(declare-fun e!941968 () Bool)

(assert (=> d!432486 (= lt!512611 e!941968)))

(declare-fun res!666515 () Bool)

(assert (=> d!432486 (=> (not res!666515) (not e!941968))))

(declare-fun lt!512612 () tuple2!14292)

(assert (=> d!432486 (= res!666515 (= (size!12580 (_1!8032 lt!512612)) 1))))

(assert (=> d!432486 (= lt!512612 (lex!1089 thiss!27374 rules!4290 (print!1124 thiss!27374 (singletonSeq!1301 (h!20910 (t!136020 l2!3105))))))))

(assert (=> d!432486 (not (isEmpty!9685 rules!4290))))

(assert (=> d!432486 (= (rulesProduceIndividualToken!1276 thiss!27374 rules!4290 (h!20910 (t!136020 l2!3105))) lt!512611)))

(declare-fun b!1474523 () Bool)

(declare-fun res!666514 () Bool)

(assert (=> b!1474523 (=> (not res!666514) (not e!941968))))

(assert (=> b!1474523 (= res!666514 (= (apply!4000 (_1!8032 lt!512612) 0) (h!20910 (t!136020 l2!3105))))))

(declare-fun b!1474524 () Bool)

(assert (=> b!1474524 (= e!941968 (isEmpty!9690 (_2!8032 lt!512612)))))

(declare-fun b!1474525 () Bool)

(assert (=> b!1474525 (= e!941967 (isEmpty!9690 (_2!8032 (lex!1089 thiss!27374 rules!4290 (print!1124 thiss!27374 (singletonSeq!1301 (h!20910 (t!136020 l2!3105))))))))))

(assert (= (and d!432486 res!666515) b!1474523))

(assert (= (and b!1474523 res!666514) b!1474524))

(assert (= (and d!432486 res!666513) b!1474525))

(declare-fun m!1719671 () Bool)

(assert (=> d!432486 m!1719671))

(declare-fun m!1719673 () Bool)

(assert (=> d!432486 m!1719673))

(declare-fun m!1719675 () Bool)

(assert (=> d!432486 m!1719675))

(declare-fun m!1719677 () Bool)

(assert (=> d!432486 m!1719677))

(declare-fun m!1719679 () Bool)

(assert (=> d!432486 m!1719679))

(assert (=> d!432486 m!1719671))

(declare-fun m!1719681 () Bool)

(assert (=> d!432486 m!1719681))

(assert (=> d!432486 m!1719671))

(assert (=> d!432486 m!1719677))

(assert (=> d!432486 m!1717573))

(declare-fun m!1719683 () Bool)

(assert (=> b!1474523 m!1719683))

(declare-fun m!1719685 () Bool)

(assert (=> b!1474524 m!1719685))

(assert (=> b!1474525 m!1719671))

(assert (=> b!1474525 m!1719671))

(assert (=> b!1474525 m!1719677))

(assert (=> b!1474525 m!1719677))

(assert (=> b!1474525 m!1719679))

(declare-fun m!1719687 () Bool)

(assert (=> b!1474525 m!1719687))

(assert (=> b!1473880 d!432486))

(declare-fun d!432488 () Bool)

(declare-fun lt!512613 () BalanceConc!10514)

(assert (=> d!432488 (= (list!6181 lt!512613) (originalCharacters!3623 (h!20910 (t!136020 l2!3105))))))

(assert (=> d!432488 (= lt!512613 (dynLambda!7038 (toChars!3947 (transformation!2761 (rule!4538 (h!20910 (t!136020 l2!3105))))) (value!88336 (h!20910 (t!136020 l2!3105)))))))

(assert (=> d!432488 (= (charsOf!1582 (h!20910 (t!136020 l2!3105))) lt!512613)))

(declare-fun b_lambda!46095 () Bool)

(assert (=> (not b_lambda!46095) (not d!432488)))

(assert (=> d!432488 t!136179))

(declare-fun b_and!101621 () Bool)

(assert (= b_and!101565 (and (=> t!136179 result!100644) b_and!101621)))

(assert (=> d!432488 t!136181))

(declare-fun b_and!101623 () Bool)

(assert (= b_and!101567 (and (=> t!136181 result!100646) b_and!101623)))

(assert (=> d!432488 t!136183))

(declare-fun b_and!101625 () Bool)

(assert (= b_and!101571 (and (=> t!136183 result!100648) b_and!101625)))

(assert (=> d!432488 t!136187))

(declare-fun b_and!101627 () Bool)

(assert (= b_and!101563 (and (=> t!136187 result!100652) b_and!101627)))

(assert (=> d!432488 t!136185))

(declare-fun b_and!101629 () Bool)

(assert (= b_and!101561 (and (=> t!136185 result!100650) b_and!101629)))

(assert (=> d!432488 t!136177))

(declare-fun b_and!101631 () Bool)

(assert (= b_and!101569 (and (=> t!136177 result!100642) b_and!101631)))

(declare-fun m!1719689 () Bool)

(assert (=> d!432488 m!1719689))

(assert (=> d!432488 m!1719075))

(assert (=> b!1473880 d!432488))

(assert (=> b!1473880 d!432320))

(declare-fun d!432490 () Bool)

(assert (=> d!432490 (= (separableTokensPredicate!560 thiss!27374 (h!20910 l2!3105) (h!20910 (t!136020 l2!3105)) rules!4290) (not (prefixMatchZipperSequence!364 (rulesRegex!418 thiss!27374 rules!4290) (++!4189 (charsOf!1582 (h!20910 l2!3105)) (singletonSeq!1300 (apply!3999 (charsOf!1582 (h!20910 (t!136020 l2!3105))) 0))))))))

(declare-fun bs!345442 () Bool)

(assert (= bs!345442 d!432490))

(assert (=> bs!345442 m!1718015))

(declare-fun m!1719691 () Bool)

(assert (=> bs!345442 m!1719691))

(assert (=> bs!345442 m!1718015))

(assert (=> bs!345442 m!1717849))

(declare-fun m!1719693 () Bool)

(assert (=> bs!345442 m!1719693))

(declare-fun m!1719695 () Bool)

(assert (=> bs!345442 m!1719695))

(declare-fun m!1719697 () Bool)

(assert (=> bs!345442 m!1719697))

(assert (=> bs!345442 m!1719693))

(assert (=> bs!345442 m!1719691))

(assert (=> bs!345442 m!1719695))

(assert (=> bs!345442 m!1717849))

(assert (=> bs!345442 m!1719697))

(declare-fun m!1719699 () Bool)

(assert (=> bs!345442 m!1719699))

(assert (=> b!1473880 d!432490))

(declare-fun d!432492 () Bool)

(declare-fun lt!512614 () Int)

(assert (=> d!432492 (= lt!512614 (size!12579 (list!6181 (charsOf!1582 (h!20910 (t!136020 l2!3105))))))))

(assert (=> d!432492 (= lt!512614 (size!12585 (c!242395 (charsOf!1582 (h!20910 (t!136020 l2!3105))))))))

(assert (=> d!432492 (= (size!12581 (charsOf!1582 (h!20910 (t!136020 l2!3105)))) lt!512614)))

(declare-fun bs!345443 () Bool)

(assert (= bs!345443 d!432492))

(assert (=> bs!345443 m!1718015))

(declare-fun m!1719701 () Bool)

(assert (=> bs!345443 m!1719701))

(assert (=> bs!345443 m!1719701))

(declare-fun m!1719703 () Bool)

(assert (=> bs!345443 m!1719703))

(declare-fun m!1719705 () Bool)

(assert (=> bs!345443 m!1719705))

(assert (=> b!1473880 d!432492))

(declare-fun d!432494 () Bool)

(assert (=> d!432494 (rulesProduceIndividualToken!1276 thiss!27374 rules!4290 (h!20910 l2!3105))))

(declare-fun lt!512615 () Unit!25209)

(assert (=> d!432494 (= lt!512615 (choose!9039 thiss!27374 rules!4290 l2!3105 (h!20910 l2!3105)))))

(assert (=> d!432494 (not (isEmpty!9685 rules!4290))))

(assert (=> d!432494 (= (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!457 thiss!27374 rules!4290 l2!3105 (h!20910 l2!3105)) lt!512615)))

(declare-fun bs!345444 () Bool)

(assert (= bs!345444 d!432494))

(assert (=> bs!345444 m!1717641))

(declare-fun m!1719707 () Bool)

(assert (=> bs!345444 m!1719707))

(assert (=> bs!345444 m!1717573))

(assert (=> b!1473880 d!432494))

(declare-fun d!432496 () Bool)

(assert (=> d!432496 (rulesProduceIndividualToken!1276 thiss!27374 rules!4290 (h!20910 (t!136020 l2!3105)))))

(declare-fun lt!512616 () Unit!25209)

(assert (=> d!432496 (= lt!512616 (choose!9039 thiss!27374 rules!4290 l2!3105 (h!20910 (t!136020 l2!3105))))))

(assert (=> d!432496 (not (isEmpty!9685 rules!4290))))

(assert (=> d!432496 (= (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!457 thiss!27374 rules!4290 l2!3105 (h!20910 (t!136020 l2!3105))) lt!512616)))

(declare-fun bs!345445 () Bool)

(assert (= bs!345445 d!432496))

(assert (=> bs!345445 m!1718021))

(declare-fun m!1719709 () Bool)

(assert (=> bs!345445 m!1719709))

(assert (=> bs!345445 m!1717573))

(assert (=> b!1473880 d!432496))

(declare-fun bs!345446 () Bool)

(declare-fun d!432498 () Bool)

(assert (= bs!345446 (and d!432498 d!432180)))

(declare-fun lambda!63602 () Int)

(assert (=> bs!345446 (= lambda!63602 lambda!63586)))

(declare-fun bs!345447 () Bool)

(assert (= bs!345447 (and d!432498 d!432362)))

(assert (=> bs!345447 (= lambda!63602 lambda!63598)))

(declare-fun bs!345448 () Bool)

(assert (= bs!345448 (and d!432498 d!431830)))

(assert (=> bs!345448 (= lambda!63602 lambda!63542)))

(declare-fun bs!345449 () Bool)

(assert (= bs!345449 (and d!432498 d!431904)))

(assert (=> bs!345449 (= lambda!63602 lambda!63553)))

(declare-fun bs!345450 () Bool)

(assert (= bs!345450 (and d!432498 d!431958)))

(assert (=> bs!345450 (= lambda!63602 lambda!63563)))

(declare-fun bs!345451 () Bool)

(assert (= bs!345451 (and d!432498 d!431852)))

(assert (=> bs!345451 (= lambda!63602 lambda!63546)))

(declare-fun bs!345452 () Bool)

(assert (= bs!345452 (and d!432498 d!432310)))

(assert (=> bs!345452 (= lambda!63602 lambda!63595)))

(declare-fun bs!345453 () Bool)

(assert (= bs!345453 (and d!432498 d!431856)))

(assert (=> bs!345453 (= lambda!63602 lambda!63547)))

(declare-fun bs!345454 () Bool)

(assert (= bs!345454 (and d!432498 d!432176)))

(assert (=> bs!345454 (= lambda!63602 lambda!63585)))

(declare-fun bs!345455 () Bool)

(assert (= bs!345455 (and d!432498 d!431952)))

(assert (=> bs!345455 (= lambda!63602 lambda!63562)))

(declare-fun b!1474530 () Bool)

(declare-fun e!941973 () Bool)

(assert (=> b!1474530 (= e!941973 true)))

(declare-fun b!1474529 () Bool)

(declare-fun e!941972 () Bool)

(assert (=> b!1474529 (= e!941972 e!941973)))

(declare-fun b!1474528 () Bool)

(declare-fun e!941971 () Bool)

(assert (=> b!1474528 (= e!941971 e!941972)))

(assert (=> d!432498 e!941971))

(assert (= b!1474529 b!1474530))

(assert (= b!1474528 b!1474529))

(assert (= (and d!432498 ((_ is Cons!15508) rules!4290)) b!1474528))

(assert (=> b!1474530 (< (dynLambda!7035 order!9307 (toValue!4088 (transformation!2761 (h!20909 rules!4290)))) (dynLambda!7036 order!9309 lambda!63602))))

(assert (=> b!1474530 (< (dynLambda!7037 order!9311 (toChars!3947 (transformation!2761 (h!20909 rules!4290)))) (dynLambda!7036 order!9309 lambda!63602))))

(assert (=> d!432498 true))

(declare-fun lt!512617 () Bool)

(assert (=> d!432498 (= lt!512617 (forall!3777 (++!4187 l1!3136 l2!3105) lambda!63602))))

(declare-fun e!941969 () Bool)

(assert (=> d!432498 (= lt!512617 e!941969)))

(declare-fun res!666517 () Bool)

(assert (=> d!432498 (=> res!666517 e!941969)))

(assert (=> d!432498 (= res!666517 (not ((_ is Cons!15509) (++!4187 l1!3136 l2!3105))))))

(assert (=> d!432498 (not (isEmpty!9685 rules!4290))))

(assert (=> d!432498 (= (rulesProduceEachTokenIndividuallyList!784 thiss!27374 rules!4290 (++!4187 l1!3136 l2!3105)) lt!512617)))

(declare-fun b!1474526 () Bool)

(declare-fun e!941970 () Bool)

(assert (=> b!1474526 (= e!941969 e!941970)))

(declare-fun res!666516 () Bool)

(assert (=> b!1474526 (=> (not res!666516) (not e!941970))))

(assert (=> b!1474526 (= res!666516 (rulesProduceIndividualToken!1276 thiss!27374 rules!4290 (h!20910 (++!4187 l1!3136 l2!3105))))))

(declare-fun b!1474527 () Bool)

(assert (=> b!1474527 (= e!941970 (rulesProduceEachTokenIndividuallyList!784 thiss!27374 rules!4290 (t!136020 (++!4187 l1!3136 l2!3105))))))

(assert (= (and d!432498 (not res!666517)) b!1474526))

(assert (= (and b!1474526 res!666516) b!1474527))

(assert (=> d!432498 m!1717557))

(declare-fun m!1719711 () Bool)

(assert (=> d!432498 m!1719711))

(assert (=> d!432498 m!1717573))

(declare-fun m!1719713 () Bool)

(assert (=> b!1474526 m!1719713))

(declare-fun m!1719715 () Bool)

(assert (=> b!1474527 m!1719715))

(assert (=> d!431860 d!432498))

(assert (=> d!431860 d!431854))

(declare-fun d!432500 () Bool)

(assert (=> d!432500 (rulesProduceEachTokenIndividuallyList!784 thiss!27374 rules!4290 (++!4187 l1!3136 l2!3105))))

(assert (=> d!432500 true))

(declare-fun _$79!117 () Unit!25209)

(assert (=> d!432500 (= (choose!9037 thiss!27374 rules!4290 l1!3136 l2!3105) _$79!117)))

(declare-fun bs!345456 () Bool)

(assert (= bs!345456 d!432500))

(assert (=> bs!345456 m!1717557))

(assert (=> bs!345456 m!1717557))

(assert (=> bs!345456 m!1717699))

(assert (=> d!431860 d!432500))

(assert (=> d!431860 d!431948))

(assert (=> b!1473684 d!431958))

(declare-fun d!432502 () Bool)

(declare-fun res!666518 () Bool)

(declare-fun e!941974 () Bool)

(assert (=> d!432502 (=> res!666518 e!941974)))

(assert (=> d!432502 (= res!666518 (or (not ((_ is Cons!15509) (++!4187 (t!136020 l1!3136) l2!3105))) (not ((_ is Cons!15509) (t!136020 (++!4187 (t!136020 l1!3136) l2!3105))))))))

(assert (=> d!432502 (= (tokensListTwoByTwoPredicateSeparableList!277 thiss!27374 (++!4187 (t!136020 l1!3136) l2!3105) rules!4290) e!941974)))

(declare-fun b!1474531 () Bool)

(declare-fun e!941975 () Bool)

(assert (=> b!1474531 (= e!941974 e!941975)))

(declare-fun res!666519 () Bool)

(assert (=> b!1474531 (=> (not res!666519) (not e!941975))))

(assert (=> b!1474531 (= res!666519 (separableTokensPredicate!560 thiss!27374 (h!20910 (++!4187 (t!136020 l1!3136) l2!3105)) (h!20910 (t!136020 (++!4187 (t!136020 l1!3136) l2!3105))) rules!4290))))

(declare-fun lt!512622 () Unit!25209)

(declare-fun Unit!25259 () Unit!25209)

(assert (=> b!1474531 (= lt!512622 Unit!25259)))

(assert (=> b!1474531 (> (size!12581 (charsOf!1582 (h!20910 (t!136020 (++!4187 (t!136020 l1!3136) l2!3105))))) 0)))

(declare-fun lt!512618 () Unit!25209)

(declare-fun Unit!25260 () Unit!25209)

(assert (=> b!1474531 (= lt!512618 Unit!25260)))

(assert (=> b!1474531 (rulesProduceIndividualToken!1276 thiss!27374 rules!4290 (h!20910 (t!136020 (++!4187 (t!136020 l1!3136) l2!3105))))))

(declare-fun lt!512623 () Unit!25209)

(declare-fun Unit!25261 () Unit!25209)

(assert (=> b!1474531 (= lt!512623 Unit!25261)))

(assert (=> b!1474531 (rulesProduceIndividualToken!1276 thiss!27374 rules!4290 (h!20910 (++!4187 (t!136020 l1!3136) l2!3105)))))

(declare-fun lt!512621 () Unit!25209)

(declare-fun lt!512619 () Unit!25209)

(assert (=> b!1474531 (= lt!512621 lt!512619)))

(assert (=> b!1474531 (rulesProduceIndividualToken!1276 thiss!27374 rules!4290 (h!20910 (t!136020 (++!4187 (t!136020 l1!3136) l2!3105))))))

(assert (=> b!1474531 (= lt!512619 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!457 thiss!27374 rules!4290 (++!4187 (t!136020 l1!3136) l2!3105) (h!20910 (t!136020 (++!4187 (t!136020 l1!3136) l2!3105)))))))

(declare-fun lt!512620 () Unit!25209)

(declare-fun lt!512624 () Unit!25209)

(assert (=> b!1474531 (= lt!512620 lt!512624)))

(assert (=> b!1474531 (rulesProduceIndividualToken!1276 thiss!27374 rules!4290 (h!20910 (++!4187 (t!136020 l1!3136) l2!3105)))))

(assert (=> b!1474531 (= lt!512624 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!457 thiss!27374 rules!4290 (++!4187 (t!136020 l1!3136) l2!3105) (h!20910 (++!4187 (t!136020 l1!3136) l2!3105))))))

(declare-fun b!1474532 () Bool)

(assert (=> b!1474532 (= e!941975 (tokensListTwoByTwoPredicateSeparableList!277 thiss!27374 (Cons!15509 (h!20910 (t!136020 (++!4187 (t!136020 l1!3136) l2!3105))) (t!136020 (t!136020 (++!4187 (t!136020 l1!3136) l2!3105)))) rules!4290))))

(assert (= (and d!432502 (not res!666518)) b!1474531))

(assert (= (and b!1474531 res!666519) b!1474532))

(declare-fun m!1719717 () Bool)

(assert (=> b!1474531 m!1719717))

(declare-fun m!1719719 () Bool)

(assert (=> b!1474531 m!1719719))

(assert (=> b!1474531 m!1717559))

(declare-fun m!1719721 () Bool)

(assert (=> b!1474531 m!1719721))

(declare-fun m!1719723 () Bool)

(assert (=> b!1474531 m!1719723))

(assert (=> b!1474531 m!1719717))

(declare-fun m!1719725 () Bool)

(assert (=> b!1474531 m!1719725))

(assert (=> b!1474531 m!1718769))

(assert (=> b!1474531 m!1717559))

(declare-fun m!1719727 () Bool)

(assert (=> b!1474531 m!1719727))

(declare-fun m!1719729 () Bool)

(assert (=> b!1474532 m!1719729))

(assert (=> b!1473686 d!432502))

(assert (=> b!1473686 d!431846))

(assert (=> b!1473686 d!432180))

(assert (=> b!1473686 d!431848))

(declare-fun d!432504 () Bool)

(declare-fun res!666520 () Bool)

(declare-fun e!941976 () Bool)

(assert (=> d!432504 (=> res!666520 e!941976)))

(assert (=> d!432504 (= res!666520 ((_ is Nil!15509) l1!3136))))

(assert (=> d!432504 (= (forall!3777 l1!3136 lambda!63562) e!941976)))

(declare-fun b!1474533 () Bool)

(declare-fun e!941977 () Bool)

(assert (=> b!1474533 (= e!941976 e!941977)))

(declare-fun res!666521 () Bool)

(assert (=> b!1474533 (=> (not res!666521) (not e!941977))))

(assert (=> b!1474533 (= res!666521 (dynLambda!7042 lambda!63562 (h!20910 l1!3136)))))

(declare-fun b!1474534 () Bool)

(assert (=> b!1474534 (= e!941977 (forall!3777 (t!136020 l1!3136) lambda!63562))))

(assert (= (and d!432504 (not res!666520)) b!1474533))

(assert (= (and b!1474533 res!666521) b!1474534))

(declare-fun b_lambda!46097 () Bool)

(assert (=> (not b_lambda!46097) (not b!1474533)))

(declare-fun m!1719731 () Bool)

(assert (=> b!1474533 m!1719731))

(declare-fun m!1719733 () Bool)

(assert (=> b!1474534 m!1719733))

(assert (=> d!431952 d!432504))

(assert (=> d!431952 d!431948))

(declare-fun d!432506 () Bool)

(declare-fun c!242494 () Bool)

(assert (=> d!432506 (= c!242494 ((_ is Node!5287) (c!242395 (dynLambda!7038 (toChars!3947 (transformation!2761 (rule!4538 (h!20910 l1!3136)))) (value!88336 (h!20910 l1!3136))))))))

(declare-fun e!941978 () Bool)

(assert (=> d!432506 (= (inv!20718 (c!242395 (dynLambda!7038 (toChars!3947 (transformation!2761 (rule!4538 (h!20910 l1!3136)))) (value!88336 (h!20910 l1!3136))))) e!941978)))

(declare-fun b!1474535 () Bool)

(assert (=> b!1474535 (= e!941978 (inv!20720 (c!242395 (dynLambda!7038 (toChars!3947 (transformation!2761 (rule!4538 (h!20910 l1!3136)))) (value!88336 (h!20910 l1!3136))))))))

(declare-fun b!1474536 () Bool)

(declare-fun e!941979 () Bool)

(assert (=> b!1474536 (= e!941978 e!941979)))

(declare-fun res!666522 () Bool)

(assert (=> b!1474536 (= res!666522 (not ((_ is Leaf!7869) (c!242395 (dynLambda!7038 (toChars!3947 (transformation!2761 (rule!4538 (h!20910 l1!3136)))) (value!88336 (h!20910 l1!3136)))))))))

(assert (=> b!1474536 (=> res!666522 e!941979)))

(declare-fun b!1474537 () Bool)

(assert (=> b!1474537 (= e!941979 (inv!20721 (c!242395 (dynLambda!7038 (toChars!3947 (transformation!2761 (rule!4538 (h!20910 l1!3136)))) (value!88336 (h!20910 l1!3136))))))))

(assert (= (and d!432506 c!242494) b!1474535))

(assert (= (and d!432506 (not c!242494)) b!1474536))

(assert (= (and b!1474536 (not res!666522)) b!1474537))

(declare-fun m!1719735 () Bool)

(assert (=> b!1474535 m!1719735))

(declare-fun m!1719737 () Bool)

(assert (=> b!1474537 m!1719737))

(assert (=> b!1473907 d!432506))

(declare-fun d!432508 () Bool)

(declare-fun charsToBigInt!1 (List!15572) Int)

(assert (=> d!432508 (= (inv!17 (value!88336 (h!20910 l1!3136))) (= (charsToBigInt!1 (text!20405 (value!88336 (h!20910 l1!3136)))) (value!88329 (value!88336 (h!20910 l1!3136)))))))

(declare-fun bs!345457 () Bool)

(assert (= bs!345457 d!432508))

(declare-fun m!1719739 () Bool)

(assert (=> bs!345457 m!1719739))

(assert (=> b!1473912 d!432508))

(declare-fun d!432510 () Bool)

(assert (=> d!432510 (= (list!6181 (dynLambda!7038 (toChars!3947 (transformation!2761 (rule!4538 (h!20910 l2!3105)))) (value!88336 (h!20910 l2!3105)))) (list!6185 (c!242395 (dynLambda!7038 (toChars!3947 (transformation!2761 (rule!4538 (h!20910 l2!3105)))) (value!88336 (h!20910 l2!3105))))))))

(declare-fun bs!345458 () Bool)

(assert (= bs!345458 d!432510))

(declare-fun m!1719741 () Bool)

(assert (=> bs!345458 m!1719741))

(assert (=> b!1473702 d!432510))

(declare-fun d!432512 () Bool)

(assert (=> d!432512 (rulesProduceIndividualToken!1276 thiss!27374 rules!4290 (h!20910 l1!3136))))

(declare-fun lt!512625 () Unit!25209)

(assert (=> d!432512 (= lt!512625 (choose!9039 thiss!27374 rules!4290 l1!3136 (h!20910 l1!3136)))))

(assert (=> d!432512 (not (isEmpty!9685 rules!4290))))

(assert (=> d!432512 (= (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!457 thiss!27374 rules!4290 l1!3136 (h!20910 l1!3136)) lt!512625)))

(declare-fun bs!345459 () Bool)

(assert (= bs!345459 d!432512))

(assert (=> bs!345459 m!1718013))

(declare-fun m!1719743 () Bool)

(assert (=> bs!345459 m!1719743))

(assert (=> bs!345459 m!1717573))

(assert (=> b!1473898 d!432512))

(declare-fun d!432514 () Bool)

(assert (=> d!432514 (rulesProduceIndividualToken!1276 thiss!27374 rules!4290 (h!20910 (t!136020 l1!3136)))))

(declare-fun lt!512626 () Unit!25209)

(assert (=> d!432514 (= lt!512626 (choose!9039 thiss!27374 rules!4290 l1!3136 (h!20910 (t!136020 l1!3136))))))

(assert (=> d!432514 (not (isEmpty!9685 rules!4290))))

(assert (=> d!432514 (= (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!457 thiss!27374 rules!4290 l1!3136 (h!20910 (t!136020 l1!3136))) lt!512626)))

(declare-fun bs!345460 () Bool)

(assert (= bs!345460 d!432514))

(assert (=> bs!345460 m!1718031))

(declare-fun m!1719745 () Bool)

(assert (=> bs!345460 m!1719745))

(assert (=> bs!345460 m!1717573))

(assert (=> b!1473898 d!432514))

(declare-fun d!432516 () Bool)

(declare-fun lt!512627 () Int)

(assert (=> d!432516 (= lt!512627 (size!12579 (list!6181 (charsOf!1582 (h!20910 (t!136020 l1!3136))))))))

(assert (=> d!432516 (= lt!512627 (size!12585 (c!242395 (charsOf!1582 (h!20910 (t!136020 l1!3136))))))))

(assert (=> d!432516 (= (size!12581 (charsOf!1582 (h!20910 (t!136020 l1!3136)))) lt!512627)))

(declare-fun bs!345461 () Bool)

(assert (= bs!345461 d!432516))

(assert (=> bs!345461 m!1718101))

(declare-fun m!1719747 () Bool)

(assert (=> bs!345461 m!1719747))

(assert (=> bs!345461 m!1719747))

(declare-fun m!1719749 () Bool)

(assert (=> bs!345461 m!1719749))

(declare-fun m!1719751 () Bool)

(assert (=> bs!345461 m!1719751))

(assert (=> b!1473898 d!432516))

(assert (=> b!1473898 d!432370))

(assert (=> b!1473898 d!432066))

(declare-fun d!432518 () Bool)

(assert (=> d!432518 (= (separableTokensPredicate!560 thiss!27374 (h!20910 l1!3136) (h!20910 (t!136020 l1!3136)) rules!4290) (not (prefixMatchZipperSequence!364 (rulesRegex!418 thiss!27374 rules!4290) (++!4189 (charsOf!1582 (h!20910 l1!3136)) (singletonSeq!1300 (apply!3999 (charsOf!1582 (h!20910 (t!136020 l1!3136))) 0))))))))

(declare-fun bs!345462 () Bool)

(assert (= bs!345462 d!432518))

(assert (=> bs!345462 m!1718101))

(declare-fun m!1719753 () Bool)

(assert (=> bs!345462 m!1719753))

(assert (=> bs!345462 m!1718101))

(assert (=> bs!345462 m!1717849))

(declare-fun m!1719755 () Bool)

(assert (=> bs!345462 m!1719755))

(declare-fun m!1719757 () Bool)

(assert (=> bs!345462 m!1719757))

(declare-fun m!1719759 () Bool)

(assert (=> bs!345462 m!1719759))

(assert (=> bs!345462 m!1719755))

(assert (=> bs!345462 m!1719753))

(assert (=> bs!345462 m!1719757))

(assert (=> bs!345462 m!1717849))

(assert (=> bs!345462 m!1719759))

(declare-fun m!1719761 () Bool)

(assert (=> bs!345462 m!1719761))

(assert (=> b!1473898 d!432518))

(declare-fun d!432520 () Bool)

(declare-fun lt!512628 () BalanceConc!10514)

(assert (=> d!432520 (= (list!6181 lt!512628) (originalCharacters!3623 (h!20910 (t!136020 l1!3136))))))

(assert (=> d!432520 (= lt!512628 (dynLambda!7038 (toChars!3947 (transformation!2761 (rule!4538 (h!20910 (t!136020 l1!3136))))) (value!88336 (h!20910 (t!136020 l1!3136)))))))

(assert (=> d!432520 (= (charsOf!1582 (h!20910 (t!136020 l1!3136))) lt!512628)))

(declare-fun b_lambda!46099 () Bool)

(assert (=> (not b_lambda!46099) (not d!432520)))

(assert (=> d!432520 t!136222))

(declare-fun b_and!101633 () Bool)

(assert (= b_and!101627 (and (=> t!136222 result!100686) b_and!101633)))

(assert (=> d!432520 t!136214))

(declare-fun b_and!101635 () Bool)

(assert (= b_and!101623 (and (=> t!136214 result!100678) b_and!101635)))

(assert (=> d!432520 t!136218))

(declare-fun b_and!101637 () Bool)

(assert (= b_and!101621 (and (=> t!136218 result!100682) b_and!101637)))

(assert (=> d!432520 t!136220))

(declare-fun b_and!101639 () Bool)

(assert (= b_and!101629 (and (=> t!136220 result!100684) b_and!101639)))

(assert (=> d!432520 t!136224))

(declare-fun b_and!101641 () Bool)

(assert (= b_and!101631 (and (=> t!136224 result!100688) b_and!101641)))

(assert (=> d!432520 t!136216))

(declare-fun b_and!101643 () Bool)

(assert (= b_and!101625 (and (=> t!136216 result!100680) b_and!101643)))

(declare-fun m!1719763 () Bool)

(assert (=> d!432520 m!1719763))

(assert (=> d!432520 m!1719283))

(assert (=> b!1473898 d!432520))

(declare-fun d!432522 () Bool)

(declare-fun lt!512629 () Token!5184)

(assert (=> d!432522 (= lt!512629 (apply!4005 (list!6180 (_1!8032 lt!512173)) 0))))

(assert (=> d!432522 (= lt!512629 (apply!4006 (c!242396 (_1!8032 lt!512173)) 0))))

(declare-fun e!941980 () Bool)

(assert (=> d!432522 e!941980))

(declare-fun res!666523 () Bool)

(assert (=> d!432522 (=> (not res!666523) (not e!941980))))

(assert (=> d!432522 (= res!666523 (<= 0 0))))

(assert (=> d!432522 (= (apply!4000 (_1!8032 lt!512173) 0) lt!512629)))

(declare-fun b!1474538 () Bool)

(assert (=> b!1474538 (= e!941980 (< 0 (size!12580 (_1!8032 lt!512173))))))

(assert (= (and d!432522 res!666523) b!1474538))

(assert (=> d!432522 m!1718927))

(assert (=> d!432522 m!1718927))

(declare-fun m!1719765 () Bool)

(assert (=> d!432522 m!1719765))

(declare-fun m!1719767 () Bool)

(assert (=> d!432522 m!1719767))

(assert (=> b!1474538 m!1717891))

(assert (=> b!1473730 d!432522))

(declare-fun b!1474539 () Bool)

(declare-fun e!941982 () Bool)

(declare-fun e!941981 () Bool)

(assert (=> b!1474539 (= e!941982 e!941981)))

(declare-fun c!242496 () Bool)

(assert (=> b!1474539 (= c!242496 ((_ is IntegerValue!8554) (value!88336 (h!20910 (t!136020 l1!3136)))))))

(declare-fun b!1474540 () Bool)

(declare-fun e!941983 () Bool)

(assert (=> b!1474540 (= e!941983 (inv!15 (value!88336 (h!20910 (t!136020 l1!3136)))))))

(declare-fun b!1474541 () Bool)

(declare-fun res!666524 () Bool)

(assert (=> b!1474541 (=> res!666524 e!941983)))

(assert (=> b!1474541 (= res!666524 (not ((_ is IntegerValue!8555) (value!88336 (h!20910 (t!136020 l1!3136))))))))

(assert (=> b!1474541 (= e!941981 e!941983)))

(declare-fun b!1474542 () Bool)

(assert (=> b!1474542 (= e!941982 (inv!16 (value!88336 (h!20910 (t!136020 l1!3136)))))))

(declare-fun d!432524 () Bool)

(declare-fun c!242495 () Bool)

(assert (=> d!432524 (= c!242495 ((_ is IntegerValue!8553) (value!88336 (h!20910 (t!136020 l1!3136)))))))

(assert (=> d!432524 (= (inv!21 (value!88336 (h!20910 (t!136020 l1!3136)))) e!941982)))

(declare-fun b!1474543 () Bool)

(assert (=> b!1474543 (= e!941981 (inv!17 (value!88336 (h!20910 (t!136020 l1!3136)))))))

(assert (= (and d!432524 c!242495) b!1474542))

(assert (= (and d!432524 (not c!242495)) b!1474539))

(assert (= (and b!1474539 c!242496) b!1474543))

(assert (= (and b!1474539 (not c!242496)) b!1474541))

(assert (= (and b!1474541 (not res!666524)) b!1474540))

(declare-fun m!1719769 () Bool)

(assert (=> b!1474540 m!1719769))

(declare-fun m!1719771 () Bool)

(assert (=> b!1474542 m!1719771))

(declare-fun m!1719773 () Bool)

(assert (=> b!1474543 m!1719773))

(assert (=> b!1473966 d!432524))

(declare-fun d!432526 () Bool)

(declare-fun lt!512630 () Bool)

(declare-fun e!941984 () Bool)

(assert (=> d!432526 (= lt!512630 e!941984)))

(declare-fun res!666525 () Bool)

(assert (=> d!432526 (=> (not res!666525) (not e!941984))))

(assert (=> d!432526 (= res!666525 (= (list!6180 (_1!8032 (lex!1089 thiss!27374 rules!4290 (print!1124 thiss!27374 (singletonSeq!1301 (h!20910 lt!512073)))))) (list!6180 (singletonSeq!1301 (h!20910 lt!512073)))))))

(declare-fun e!941985 () Bool)

(assert (=> d!432526 (= lt!512630 e!941985)))

(declare-fun res!666527 () Bool)

(assert (=> d!432526 (=> (not res!666527) (not e!941985))))

(declare-fun lt!512631 () tuple2!14292)

(assert (=> d!432526 (= res!666527 (= (size!12580 (_1!8032 lt!512631)) 1))))

(assert (=> d!432526 (= lt!512631 (lex!1089 thiss!27374 rules!4290 (print!1124 thiss!27374 (singletonSeq!1301 (h!20910 lt!512073)))))))

(assert (=> d!432526 (not (isEmpty!9685 rules!4290))))

(assert (=> d!432526 (= (rulesProduceIndividualToken!1276 thiss!27374 rules!4290 (h!20910 lt!512073)) lt!512630)))

(declare-fun b!1474544 () Bool)

(declare-fun res!666526 () Bool)

(assert (=> b!1474544 (=> (not res!666526) (not e!941985))))

(assert (=> b!1474544 (= res!666526 (= (apply!4000 (_1!8032 lt!512631) 0) (h!20910 lt!512073)))))

(declare-fun b!1474545 () Bool)

(assert (=> b!1474545 (= e!941985 (isEmpty!9690 (_2!8032 lt!512631)))))

(declare-fun b!1474546 () Bool)

(assert (=> b!1474546 (= e!941984 (isEmpty!9690 (_2!8032 (lex!1089 thiss!27374 rules!4290 (print!1124 thiss!27374 (singletonSeq!1301 (h!20910 lt!512073)))))))))

(assert (= (and d!432526 res!666527) b!1474544))

(assert (= (and b!1474544 res!666526) b!1474545))

(assert (= (and d!432526 res!666525) b!1474546))

(declare-fun m!1719775 () Bool)

(assert (=> d!432526 m!1719775))

(declare-fun m!1719777 () Bool)

(assert (=> d!432526 m!1719777))

(declare-fun m!1719779 () Bool)

(assert (=> d!432526 m!1719779))

(declare-fun m!1719781 () Bool)

(assert (=> d!432526 m!1719781))

(declare-fun m!1719783 () Bool)

(assert (=> d!432526 m!1719783))

(assert (=> d!432526 m!1719775))

(declare-fun m!1719785 () Bool)

(assert (=> d!432526 m!1719785))

(assert (=> d!432526 m!1719775))

(assert (=> d!432526 m!1719781))

(assert (=> d!432526 m!1717573))

(declare-fun m!1719787 () Bool)

(assert (=> b!1474544 m!1719787))

(declare-fun m!1719789 () Bool)

(assert (=> b!1474545 m!1719789))

(assert (=> b!1474546 m!1719775))

(assert (=> b!1474546 m!1719775))

(assert (=> b!1474546 m!1719781))

(assert (=> b!1474546 m!1719781))

(assert (=> b!1474546 m!1719783))

(declare-fun m!1719791 () Bool)

(assert (=> b!1474546 m!1719791))

(assert (=> b!1473625 d!432526))

(declare-fun d!432528 () Bool)

(declare-fun lt!512632 () Bool)

(assert (=> d!432528 (= lt!512632 (isEmpty!9689 (list!6181 (_2!8032 (lex!1089 thiss!27374 rules!4290 (print!1124 thiss!27374 (singletonSeq!1301 lt!512069)))))))))

(assert (=> d!432528 (= lt!512632 (isEmpty!9694 (c!242395 (_2!8032 (lex!1089 thiss!27374 rules!4290 (print!1124 thiss!27374 (singletonSeq!1301 lt!512069)))))))))

(assert (=> d!432528 (= (isEmpty!9690 (_2!8032 (lex!1089 thiss!27374 rules!4290 (print!1124 thiss!27374 (singletonSeq!1301 lt!512069))))) lt!512632)))

(declare-fun bs!345463 () Bool)

(assert (= bs!345463 d!432528))

(declare-fun m!1719793 () Bool)

(assert (=> bs!345463 m!1719793))

(assert (=> bs!345463 m!1719793))

(declare-fun m!1719795 () Bool)

(assert (=> bs!345463 m!1719795))

(declare-fun m!1719797 () Bool)

(assert (=> bs!345463 m!1719797))

(assert (=> b!1473894 d!432528))

(assert (=> b!1473894 d!432084))

(assert (=> b!1473894 d!432076))

(assert (=> b!1473894 d!432074))

(declare-fun lt!512633 () Bool)

(declare-fun d!432530 () Bool)

(assert (=> d!432530 (= lt!512633 (isEmpty!9689 (list!6181 (_2!8032 (lex!1089 thiss!27374 rules!4290 (print!1124 thiss!27374 (singletonSeq!1301 lt!512076)))))))))

(assert (=> d!432530 (= lt!512633 (isEmpty!9694 (c!242395 (_2!8032 (lex!1089 thiss!27374 rules!4290 (print!1124 thiss!27374 (singletonSeq!1301 lt!512076)))))))))

(assert (=> d!432530 (= (isEmpty!9690 (_2!8032 (lex!1089 thiss!27374 rules!4290 (print!1124 thiss!27374 (singletonSeq!1301 lt!512076))))) lt!512633)))

(declare-fun bs!345464 () Bool)

(assert (= bs!345464 d!432530))

(declare-fun m!1719799 () Bool)

(assert (=> bs!345464 m!1719799))

(assert (=> bs!345464 m!1719799))

(declare-fun m!1719801 () Bool)

(assert (=> bs!345464 m!1719801))

(declare-fun m!1719803 () Bool)

(assert (=> bs!345464 m!1719803))

(assert (=> b!1473732 d!432530))

(assert (=> b!1473732 d!432224))

(assert (=> b!1473732 d!432230))

(assert (=> b!1473732 d!432234))

(declare-fun bs!345465 () Bool)

(declare-fun d!432532 () Bool)

(assert (= bs!345465 (and d!432532 d!432180)))

(declare-fun lambda!63603 () Int)

(assert (=> bs!345465 (= lambda!63603 lambda!63586)))

(declare-fun bs!345466 () Bool)

(assert (= bs!345466 (and d!432532 d!432362)))

(assert (=> bs!345466 (= lambda!63603 lambda!63598)))

(declare-fun bs!345467 () Bool)

(assert (= bs!345467 (and d!432532 d!432498)))

(assert (=> bs!345467 (= lambda!63603 lambda!63602)))

(declare-fun bs!345468 () Bool)

(assert (= bs!345468 (and d!432532 d!431830)))

(assert (=> bs!345468 (= lambda!63603 lambda!63542)))

(declare-fun bs!345469 () Bool)

(assert (= bs!345469 (and d!432532 d!431904)))

(assert (=> bs!345469 (= lambda!63603 lambda!63553)))

(declare-fun bs!345470 () Bool)

(assert (= bs!345470 (and d!432532 d!431958)))

(assert (=> bs!345470 (= lambda!63603 lambda!63563)))

(declare-fun bs!345471 () Bool)

(assert (= bs!345471 (and d!432532 d!431852)))

(assert (=> bs!345471 (= lambda!63603 lambda!63546)))

(declare-fun bs!345472 () Bool)

(assert (= bs!345472 (and d!432532 d!432310)))

(assert (=> bs!345472 (= lambda!63603 lambda!63595)))

(declare-fun bs!345473 () Bool)

(assert (= bs!345473 (and d!432532 d!431856)))

(assert (=> bs!345473 (= lambda!63603 lambda!63547)))

(declare-fun bs!345474 () Bool)

(assert (= bs!345474 (and d!432532 d!432176)))

(assert (=> bs!345474 (= lambda!63603 lambda!63585)))

(declare-fun bs!345475 () Bool)

(assert (= bs!345475 (and d!432532 d!431952)))

(assert (=> bs!345475 (= lambda!63603 lambda!63562)))

(declare-fun b!1474551 () Bool)

(declare-fun e!941990 () Bool)

(assert (=> b!1474551 (= e!941990 true)))

(declare-fun b!1474550 () Bool)

(declare-fun e!941989 () Bool)

(assert (=> b!1474550 (= e!941989 e!941990)))

(declare-fun b!1474549 () Bool)

(declare-fun e!941988 () Bool)

(assert (=> b!1474549 (= e!941988 e!941989)))

(assert (=> d!432532 e!941988))

(assert (= b!1474550 b!1474551))

(assert (= b!1474549 b!1474550))

(assert (= (and d!432532 ((_ is Cons!15508) rules!4290)) b!1474549))

(assert (=> b!1474551 (< (dynLambda!7035 order!9307 (toValue!4088 (transformation!2761 (h!20909 rules!4290)))) (dynLambda!7036 order!9309 lambda!63603))))

(assert (=> b!1474551 (< (dynLambda!7037 order!9311 (toChars!3947 (transformation!2761 (h!20909 rules!4290)))) (dynLambda!7036 order!9309 lambda!63603))))

(assert (=> d!432532 true))

(declare-fun lt!512634 () Bool)

(assert (=> d!432532 (= lt!512634 (forall!3777 (t!136020 lt!512070) lambda!63603))))

(declare-fun e!941986 () Bool)

(assert (=> d!432532 (= lt!512634 e!941986)))

(declare-fun res!666529 () Bool)

(assert (=> d!432532 (=> res!666529 e!941986)))

(assert (=> d!432532 (= res!666529 (not ((_ is Cons!15509) (t!136020 lt!512070))))))

(assert (=> d!432532 (not (isEmpty!9685 rules!4290))))

(assert (=> d!432532 (= (rulesProduceEachTokenIndividuallyList!784 thiss!27374 rules!4290 (t!136020 lt!512070)) lt!512634)))

(declare-fun b!1474547 () Bool)

(declare-fun e!941987 () Bool)

(assert (=> b!1474547 (= e!941986 e!941987)))

(declare-fun res!666528 () Bool)

(assert (=> b!1474547 (=> (not res!666528) (not e!941987))))

(assert (=> b!1474547 (= res!666528 (rulesProduceIndividualToken!1276 thiss!27374 rules!4290 (h!20910 (t!136020 lt!512070))))))

(declare-fun b!1474548 () Bool)

(assert (=> b!1474548 (= e!941987 (rulesProduceEachTokenIndividuallyList!784 thiss!27374 rules!4290 (t!136020 (t!136020 lt!512070))))))

(assert (= (and d!432532 (not res!666529)) b!1474547))

(assert (= (and b!1474547 res!666528) b!1474548))

(declare-fun m!1719805 () Bool)

(assert (=> d!432532 m!1719805))

(assert (=> d!432532 m!1717573))

(assert (=> b!1474547 m!1718093))

(declare-fun m!1719807 () Bool)

(assert (=> b!1474548 m!1719807))

(assert (=> b!1473635 d!432532))

(declare-fun d!432534 () Bool)

(declare-fun res!666530 () Bool)

(declare-fun e!941991 () Bool)

(assert (=> d!432534 (=> res!666530 e!941991)))

(assert (=> d!432534 (= res!666530 (or (not ((_ is Cons!15509) (Cons!15509 (h!20910 (t!136020 lt!512070)) (t!136020 (t!136020 lt!512070))))) (not ((_ is Cons!15509) (t!136020 (Cons!15509 (h!20910 (t!136020 lt!512070)) (t!136020 (t!136020 lt!512070))))))))))

(assert (=> d!432534 (= (tokensListTwoByTwoPredicateSeparableList!277 thiss!27374 (Cons!15509 (h!20910 (t!136020 lt!512070)) (t!136020 (t!136020 lt!512070))) rules!4290) e!941991)))

(declare-fun b!1474552 () Bool)

(declare-fun e!941992 () Bool)

(assert (=> b!1474552 (= e!941991 e!941992)))

(declare-fun res!666531 () Bool)

(assert (=> b!1474552 (=> (not res!666531) (not e!941992))))

(assert (=> b!1474552 (= res!666531 (separableTokensPredicate!560 thiss!27374 (h!20910 (Cons!15509 (h!20910 (t!136020 lt!512070)) (t!136020 (t!136020 lt!512070)))) (h!20910 (t!136020 (Cons!15509 (h!20910 (t!136020 lt!512070)) (t!136020 (t!136020 lt!512070))))) rules!4290))))

(declare-fun lt!512639 () Unit!25209)

(declare-fun Unit!25262 () Unit!25209)

(assert (=> b!1474552 (= lt!512639 Unit!25262)))

(assert (=> b!1474552 (> (size!12581 (charsOf!1582 (h!20910 (t!136020 (Cons!15509 (h!20910 (t!136020 lt!512070)) (t!136020 (t!136020 lt!512070))))))) 0)))

(declare-fun lt!512635 () Unit!25209)

(declare-fun Unit!25263 () Unit!25209)

(assert (=> b!1474552 (= lt!512635 Unit!25263)))

(assert (=> b!1474552 (rulesProduceIndividualToken!1276 thiss!27374 rules!4290 (h!20910 (t!136020 (Cons!15509 (h!20910 (t!136020 lt!512070)) (t!136020 (t!136020 lt!512070))))))))

(declare-fun lt!512640 () Unit!25209)

(declare-fun Unit!25264 () Unit!25209)

(assert (=> b!1474552 (= lt!512640 Unit!25264)))

(assert (=> b!1474552 (rulesProduceIndividualToken!1276 thiss!27374 rules!4290 (h!20910 (Cons!15509 (h!20910 (t!136020 lt!512070)) (t!136020 (t!136020 lt!512070)))))))

(declare-fun lt!512638 () Unit!25209)

(declare-fun lt!512636 () Unit!25209)

(assert (=> b!1474552 (= lt!512638 lt!512636)))

(assert (=> b!1474552 (rulesProduceIndividualToken!1276 thiss!27374 rules!4290 (h!20910 (t!136020 (Cons!15509 (h!20910 (t!136020 lt!512070)) (t!136020 (t!136020 lt!512070))))))))

(assert (=> b!1474552 (= lt!512636 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!457 thiss!27374 rules!4290 (Cons!15509 (h!20910 (t!136020 lt!512070)) (t!136020 (t!136020 lt!512070))) (h!20910 (t!136020 (Cons!15509 (h!20910 (t!136020 lt!512070)) (t!136020 (t!136020 lt!512070)))))))))

(declare-fun lt!512637 () Unit!25209)

(declare-fun lt!512641 () Unit!25209)

(assert (=> b!1474552 (= lt!512637 lt!512641)))

(assert (=> b!1474552 (rulesProduceIndividualToken!1276 thiss!27374 rules!4290 (h!20910 (Cons!15509 (h!20910 (t!136020 lt!512070)) (t!136020 (t!136020 lt!512070)))))))

(assert (=> b!1474552 (= lt!512641 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!457 thiss!27374 rules!4290 (Cons!15509 (h!20910 (t!136020 lt!512070)) (t!136020 (t!136020 lt!512070))) (h!20910 (Cons!15509 (h!20910 (t!136020 lt!512070)) (t!136020 (t!136020 lt!512070))))))))

(declare-fun b!1474553 () Bool)

(assert (=> b!1474553 (= e!941992 (tokensListTwoByTwoPredicateSeparableList!277 thiss!27374 (Cons!15509 (h!20910 (t!136020 (Cons!15509 (h!20910 (t!136020 lt!512070)) (t!136020 (t!136020 lt!512070))))) (t!136020 (t!136020 (Cons!15509 (h!20910 (t!136020 lt!512070)) (t!136020 (t!136020 lt!512070)))))) rules!4290))))

(assert (= (and d!432534 (not res!666530)) b!1474552))

(assert (= (and b!1474552 res!666531) b!1474553))

(declare-fun m!1719809 () Bool)

(assert (=> b!1474552 m!1719809))

(declare-fun m!1719811 () Bool)

(assert (=> b!1474552 m!1719811))

(declare-fun m!1719813 () Bool)

(assert (=> b!1474552 m!1719813))

(declare-fun m!1719815 () Bool)

(assert (=> b!1474552 m!1719815))

(assert (=> b!1474552 m!1719809))

(declare-fun m!1719817 () Bool)

(assert (=> b!1474552 m!1719817))

(declare-fun m!1719819 () Bool)

(assert (=> b!1474552 m!1719819))

(declare-fun m!1719821 () Bool)

(assert (=> b!1474552 m!1719821))

(declare-fun m!1719823 () Bool)

(assert (=> b!1474553 m!1719823))

(assert (=> b!1473897 d!432534))

(declare-fun d!432536 () Bool)

(assert (=> d!432536 true))

(declare-fun lt!512644 () Bool)

(declare-fun rulesValidInductive!840 (LexerInterface!2417 List!15574) Bool)

(assert (=> d!432536 (= lt!512644 (rulesValidInductive!840 thiss!27374 rules!4290))))

(declare-fun lambda!63606 () Int)

(declare-fun forall!3782 (List!15574 Int) Bool)

(assert (=> d!432536 (= lt!512644 (forall!3782 rules!4290 lambda!63606))))

(assert (=> d!432536 (= (rulesValid!1006 thiss!27374 rules!4290) lt!512644)))

(declare-fun bs!345476 () Bool)

(assert (= bs!345476 d!432536))

(declare-fun m!1719825 () Bool)

(assert (=> bs!345476 m!1719825))

(declare-fun m!1719827 () Bool)

(assert (=> bs!345476 m!1719827))

(assert (=> d!431982 d!432536))

(declare-fun bs!345477 () Bool)

(declare-fun d!432538 () Bool)

(assert (= bs!345477 (and d!432538 d!432180)))

(declare-fun lambda!63607 () Int)

(assert (=> bs!345477 (= lambda!63607 lambda!63586)))

(declare-fun bs!345478 () Bool)

(assert (= bs!345478 (and d!432538 d!432362)))

(assert (=> bs!345478 (= lambda!63607 lambda!63598)))

(declare-fun bs!345479 () Bool)

(assert (= bs!345479 (and d!432538 d!432498)))

(assert (=> bs!345479 (= lambda!63607 lambda!63602)))

(declare-fun bs!345480 () Bool)

(assert (= bs!345480 (and d!432538 d!431830)))

(assert (=> bs!345480 (= lambda!63607 lambda!63542)))

(declare-fun bs!345481 () Bool)

(assert (= bs!345481 (and d!432538 d!431904)))

(assert (=> bs!345481 (= lambda!63607 lambda!63553)))

(declare-fun bs!345482 () Bool)

(assert (= bs!345482 (and d!432538 d!431958)))

(assert (=> bs!345482 (= lambda!63607 lambda!63563)))

(declare-fun bs!345483 () Bool)

(assert (= bs!345483 (and d!432538 d!431852)))

(assert (=> bs!345483 (= lambda!63607 lambda!63546)))

(declare-fun bs!345484 () Bool)

(assert (= bs!345484 (and d!432538 d!432310)))

(assert (=> bs!345484 (= lambda!63607 lambda!63595)))

(declare-fun bs!345485 () Bool)

(assert (= bs!345485 (and d!432538 d!432532)))

(assert (=> bs!345485 (= lambda!63607 lambda!63603)))

(declare-fun bs!345486 () Bool)

(assert (= bs!345486 (and d!432538 d!431856)))

(assert (=> bs!345486 (= lambda!63607 lambda!63547)))

(declare-fun bs!345487 () Bool)

(assert (= bs!345487 (and d!432538 d!432176)))

(assert (=> bs!345487 (= lambda!63607 lambda!63585)))

(declare-fun bs!345488 () Bool)

(assert (= bs!345488 (and d!432538 d!431952)))

(assert (=> bs!345488 (= lambda!63607 lambda!63562)))

(declare-fun b!1474560 () Bool)

(declare-fun e!941997 () Bool)

(assert (=> b!1474560 (= e!941997 true)))

(declare-fun b!1474559 () Bool)

(declare-fun e!941996 () Bool)

(assert (=> b!1474559 (= e!941996 e!941997)))

(declare-fun b!1474558 () Bool)

(declare-fun e!941995 () Bool)

(assert (=> b!1474558 (= e!941995 e!941996)))

(assert (=> d!432538 e!941995))

(assert (= b!1474559 b!1474560))

(assert (= b!1474558 b!1474559))

(assert (= (and d!432538 ((_ is Cons!15508) rules!4290)) b!1474558))

(assert (=> b!1474560 (< (dynLambda!7035 order!9307 (toValue!4088 (transformation!2761 (h!20909 rules!4290)))) (dynLambda!7036 order!9309 lambda!63607))))

(assert (=> b!1474560 (< (dynLambda!7037 order!9311 (toChars!3947 (transformation!2761 (h!20909 rules!4290)))) (dynLambda!7036 order!9309 lambda!63607))))

(assert (=> d!432538 true))

(declare-fun lt!512645 () Bool)

(assert (=> d!432538 (= lt!512645 (forall!3777 (t!136020 l2!3105) lambda!63607))))

(declare-fun e!941993 () Bool)

(assert (=> d!432538 (= lt!512645 e!941993)))

(declare-fun res!666533 () Bool)

(assert (=> d!432538 (=> res!666533 e!941993)))

(assert (=> d!432538 (= res!666533 (not ((_ is Cons!15509) (t!136020 l2!3105))))))

(assert (=> d!432538 (not (isEmpty!9685 rules!4290))))

(assert (=> d!432538 (= (rulesProduceEachTokenIndividuallyList!784 thiss!27374 rules!4290 (t!136020 l2!3105)) lt!512645)))

(declare-fun b!1474556 () Bool)

(declare-fun e!941994 () Bool)

(assert (=> b!1474556 (= e!941993 e!941994)))

(declare-fun res!666532 () Bool)

(assert (=> b!1474556 (=> (not res!666532) (not e!941994))))

(assert (=> b!1474556 (= res!666532 (rulesProduceIndividualToken!1276 thiss!27374 rules!4290 (h!20910 (t!136020 l2!3105))))))

(declare-fun b!1474557 () Bool)

(assert (=> b!1474557 (= e!941994 (rulesProduceEachTokenIndividuallyList!784 thiss!27374 rules!4290 (t!136020 (t!136020 l2!3105))))))

(assert (= (and d!432538 (not res!666533)) b!1474556))

(assert (= (and b!1474556 res!666532) b!1474557))

(declare-fun m!1719829 () Bool)

(assert (=> d!432538 m!1719829))

(assert (=> d!432538 m!1717573))

(assert (=> b!1474556 m!1718021))

(declare-fun m!1719831 () Bool)

(assert (=> b!1474557 m!1719831))

(assert (=> b!1473580 d!432538))

(assert (=> b!1473631 d!431846))

(declare-fun bs!345489 () Bool)

(declare-fun d!432540 () Bool)

(assert (= bs!345489 (and d!432540 d!432072)))

(declare-fun lambda!63608 () Int)

(assert (=> bs!345489 (= (= (toValue!4088 (transformation!2761 (rule!4538 (h!20910 l1!3136)))) (toValue!4088 (transformation!2761 (h!20909 rules!4290)))) (= lambda!63608 lambda!63573))))

(declare-fun bs!345490 () Bool)

(assert (= bs!345490 (and d!432540 d!432316)))

(assert (=> bs!345490 (= (= (toValue!4088 (transformation!2761 (rule!4538 (h!20910 l1!3136)))) (toValue!4088 (transformation!2761 (rule!4538 (h!20910 l2!3105))))) (= lambda!63608 lambda!63597))))

(assert (=> d!432540 true))

(assert (=> d!432540 (< (dynLambda!7035 order!9307 (toValue!4088 (transformation!2761 (rule!4538 (h!20910 l1!3136))))) (dynLambda!7041 order!9319 lambda!63608))))

(assert (=> d!432540 (= (equivClasses!992 (toChars!3947 (transformation!2761 (rule!4538 (h!20910 l1!3136)))) (toValue!4088 (transformation!2761 (rule!4538 (h!20910 l1!3136))))) (Forall2!471 lambda!63608))))

(declare-fun bs!345491 () Bool)

(assert (= bs!345491 d!432540))

(declare-fun m!1719833 () Bool)

(assert (=> bs!345491 m!1719833))

(assert (=> b!1473895 d!432540))

(declare-fun d!432542 () Bool)

(assert (=> d!432542 (= (inv!20719 (dynLambda!7038 (toChars!3947 (transformation!2761 (rule!4538 (h!20910 l2!3105)))) (value!88336 (h!20910 l2!3105)))) (isBalanced!1576 (c!242395 (dynLambda!7038 (toChars!3947 (transformation!2761 (rule!4538 (h!20910 l2!3105)))) (value!88336 (h!20910 l2!3105))))))))

(declare-fun bs!345492 () Bool)

(assert (= bs!345492 d!432542))

(declare-fun m!1719835 () Bool)

(assert (=> bs!345492 m!1719835))

(assert (=> tb!83585 d!432542))

(declare-fun d!432544 () Bool)

(declare-fun lt!512646 () Int)

(assert (=> d!432544 (>= lt!512646 0)))

(declare-fun e!941998 () Int)

(assert (=> d!432544 (= lt!512646 e!941998)))

(declare-fun c!242497 () Bool)

(assert (=> d!432544 (= c!242497 ((_ is Nil!15507) (originalCharacters!3623 (h!20910 l1!3136))))))

(assert (=> d!432544 (= (size!12579 (originalCharacters!3623 (h!20910 l1!3136))) lt!512646)))

(declare-fun b!1474561 () Bool)

(assert (=> b!1474561 (= e!941998 0)))

(declare-fun b!1474562 () Bool)

(assert (=> b!1474562 (= e!941998 (+ 1 (size!12579 (t!136018 (originalCharacters!3623 (h!20910 l1!3136))))))))

(assert (= (and d!432544 c!242497) b!1474561))

(assert (= (and d!432544 (not c!242497)) b!1474562))

(declare-fun m!1719837 () Bool)

(assert (=> b!1474562 m!1719837))

(assert (=> b!1473906 d!432544))

(declare-fun d!432546 () Bool)

(declare-fun res!666538 () Bool)

(declare-fun e!942003 () Bool)

(assert (=> d!432546 (=> res!666538 e!942003)))

(assert (=> d!432546 (= res!666538 ((_ is Nil!15508) rules!4290))))

(assert (=> d!432546 (= (noDuplicateTag!1006 thiss!27374 rules!4290 Nil!15511) e!942003)))

(declare-fun b!1474567 () Bool)

(declare-fun e!942004 () Bool)

(assert (=> b!1474567 (= e!942003 e!942004)))

(declare-fun res!666539 () Bool)

(assert (=> b!1474567 (=> (not res!666539) (not e!942004))))

(declare-fun contains!2930 (List!15577 String!18510) Bool)

(assert (=> b!1474567 (= res!666539 (not (contains!2930 Nil!15511 (tag!3025 (h!20909 rules!4290)))))))

(declare-fun b!1474568 () Bool)

(assert (=> b!1474568 (= e!942004 (noDuplicateTag!1006 thiss!27374 (t!136019 rules!4290) (Cons!15511 (tag!3025 (h!20909 rules!4290)) Nil!15511)))))

(assert (= (and d!432546 (not res!666538)) b!1474567))

(assert (= (and b!1474567 res!666539) b!1474568))

(declare-fun m!1719839 () Bool)

(assert (=> b!1474567 m!1719839))

(declare-fun m!1719841 () Bool)

(assert (=> b!1474568 m!1719841))

(assert (=> b!1473902 d!432546))

(declare-fun d!432548 () Bool)

(declare-fun c!242498 () Bool)

(assert (=> d!432548 (= c!242498 ((_ is Nil!15509) lt!512105))))

(declare-fun e!942005 () (InoxSet Token!5184))

(assert (=> d!432548 (= (content!2267 lt!512105) e!942005)))

(declare-fun b!1474569 () Bool)

(assert (=> b!1474569 (= e!942005 ((as const (Array Token!5184 Bool)) false))))

(declare-fun b!1474570 () Bool)

(assert (=> b!1474570 (= e!942005 ((_ map or) (store ((as const (Array Token!5184 Bool)) false) (h!20910 lt!512105) true) (content!2267 (t!136020 lt!512105))))))

(assert (= (and d!432548 c!242498) b!1474569))

(assert (= (and d!432548 (not c!242498)) b!1474570))

(declare-fun m!1719843 () Bool)

(assert (=> b!1474570 m!1719843))

(declare-fun m!1719845 () Bool)

(assert (=> b!1474570 m!1719845))

(assert (=> d!431854 d!432548))

(declare-fun d!432550 () Bool)

(declare-fun c!242499 () Bool)

(assert (=> d!432550 (= c!242499 ((_ is Nil!15509) l1!3136))))

(declare-fun e!942006 () (InoxSet Token!5184))

(assert (=> d!432550 (= (content!2267 l1!3136) e!942006)))

(declare-fun b!1474571 () Bool)

(assert (=> b!1474571 (= e!942006 ((as const (Array Token!5184 Bool)) false))))

(declare-fun b!1474572 () Bool)

(assert (=> b!1474572 (= e!942006 ((_ map or) (store ((as const (Array Token!5184 Bool)) false) (h!20910 l1!3136) true) (content!2267 (t!136020 l1!3136))))))

(assert (= (and d!432550 c!242499) b!1474571))

(assert (= (and d!432550 (not c!242499)) b!1474572))

(declare-fun m!1719847 () Bool)

(assert (=> b!1474572 m!1719847))

(assert (=> b!1474572 m!1717655))

(assert (=> d!431854 d!432550))

(assert (=> d!431854 d!432240))

(declare-fun d!432552 () Bool)

(declare-fun lt!512647 () Int)

(assert (=> d!432552 (>= lt!512647 0)))

(declare-fun e!942007 () Int)

(assert (=> d!432552 (= lt!512647 e!942007)))

(declare-fun c!242500 () Bool)

(assert (=> d!432552 (= c!242500 ((_ is Nil!15509) lt!512099))))

(assert (=> d!432552 (= (size!12578 lt!512099) lt!512647)))

(declare-fun b!1474573 () Bool)

(assert (=> b!1474573 (= e!942007 0)))

(declare-fun b!1474574 () Bool)

(assert (=> b!1474574 (= e!942007 (+ 1 (size!12578 (t!136020 lt!512099))))))

(assert (= (and d!432552 c!242500) b!1474573))

(assert (= (and d!432552 (not c!242500)) b!1474574))

(declare-fun m!1719849 () Bool)

(assert (=> b!1474574 m!1719849))

(assert (=> b!1473608 d!432552))

(declare-fun d!432554 () Bool)

(declare-fun lt!512648 () Int)

(assert (=> d!432554 (>= lt!512648 0)))

(declare-fun e!942008 () Int)

(assert (=> d!432554 (= lt!512648 e!942008)))

(declare-fun c!242501 () Bool)

(assert (=> d!432554 (= c!242501 ((_ is Nil!15509) (t!136020 l1!3136)))))

(assert (=> d!432554 (= (size!12578 (t!136020 l1!3136)) lt!512648)))

(declare-fun b!1474575 () Bool)

(assert (=> b!1474575 (= e!942008 0)))

(declare-fun b!1474576 () Bool)

(assert (=> b!1474576 (= e!942008 (+ 1 (size!12578 (t!136020 (t!136020 l1!3136)))))))

(assert (= (and d!432554 c!242501) b!1474575))

(assert (= (and d!432554 (not c!242501)) b!1474576))

(assert (=> b!1474576 m!1719257))

(assert (=> b!1473608 d!432554))

(assert (=> b!1473608 d!432326))

(declare-fun d!432556 () Bool)

(declare-fun lt!512649 () Bool)

(assert (=> d!432556 (= lt!512649 (select (content!2267 l1!3136) lt!512231))))

(declare-fun e!942010 () Bool)

(assert (=> d!432556 (= lt!512649 e!942010)))

(declare-fun res!666540 () Bool)

(assert (=> d!432556 (=> (not res!666540) (not e!942010))))

(assert (=> d!432556 (= res!666540 ((_ is Cons!15509) l1!3136))))

(assert (=> d!432556 (= (contains!2928 l1!3136 lt!512231) lt!512649)))

(declare-fun b!1474577 () Bool)

(declare-fun e!942009 () Bool)

(assert (=> b!1474577 (= e!942010 e!942009)))

(declare-fun res!666541 () Bool)

(assert (=> b!1474577 (=> res!666541 e!942009)))

(assert (=> b!1474577 (= res!666541 (= (h!20910 l1!3136) lt!512231))))

(declare-fun b!1474578 () Bool)

(assert (=> b!1474578 (= e!942009 (contains!2928 (t!136020 l1!3136) lt!512231))))

(assert (= (and d!432556 res!666540) b!1474577))

(assert (= (and b!1474577 (not res!666541)) b!1474578))

(assert (=> d!432556 m!1717685))

(declare-fun m!1719851 () Bool)

(assert (=> d!432556 m!1719851))

(declare-fun m!1719853 () Bool)

(assert (=> b!1474578 m!1719853))

(assert (=> d!431968 d!432556))

(assert (=> d!431968 d!431992))

(declare-fun d!432558 () Bool)

(declare-fun e!942013 () Bool)

(assert (=> d!432558 e!942013))

(declare-fun res!666544 () Bool)

(assert (=> d!432558 (=> (not res!666544) (not e!942013))))

(declare-fun lt!512652 () BalanceConc!10516)

(assert (=> d!432558 (= res!666544 (= (list!6180 lt!512652) lt!512073))))

(declare-fun fromList!347 (List!15575) Conc!5288)

(assert (=> d!432558 (= lt!512652 (BalanceConc!10517 (fromList!347 lt!512073)))))

(assert (=> d!432558 (= (fromListB!744 lt!512073) lt!512652)))

(declare-fun b!1474581 () Bool)

(assert (=> b!1474581 (= e!942013 (isBalanced!1577 (fromList!347 lt!512073)))))

(assert (= (and d!432558 res!666544) b!1474581))

(declare-fun m!1719855 () Bool)

(assert (=> d!432558 m!1719855))

(declare-fun m!1719857 () Bool)

(assert (=> d!432558 m!1719857))

(assert (=> b!1474581 m!1719857))

(assert (=> b!1474581 m!1719857))

(declare-fun m!1719859 () Bool)

(assert (=> b!1474581 m!1719859))

(assert (=> d!431858 d!432558))

(declare-fun d!432560 () Bool)

(assert (=> d!432560 (= (inv!17 (value!88336 (h!20910 l2!3105))) (= (charsToBigInt!1 (text!20405 (value!88336 (h!20910 l2!3105)))) (value!88329 (value!88336 (h!20910 l2!3105)))))))

(declare-fun bs!345493 () Bool)

(assert (= bs!345493 d!432560))

(declare-fun m!1719861 () Bool)

(assert (=> bs!345493 m!1719861))

(assert (=> b!1473870 d!432560))

(declare-fun bs!345494 () Bool)

(declare-fun d!432562 () Bool)

(assert (= bs!345494 (and d!432562 d!432282)))

(declare-fun lambda!63609 () Int)

(assert (=> bs!345494 (= (and (= (toChars!3947 (transformation!2761 (rule!4538 (h!20910 l2!3105)))) (toChars!3947 (transformation!2761 (h!20909 rules!4290)))) (= (toValue!4088 (transformation!2761 (rule!4538 (h!20910 l2!3105)))) (toValue!4088 (transformation!2761 (h!20909 rules!4290))))) (= lambda!63609 lambda!63594))))

(declare-fun bs!345495 () Bool)

(assert (= bs!345495 (and d!432562 d!432312)))

(assert (=> bs!345495 (= (and (= (toChars!3947 (transformation!2761 (rule!4538 (h!20910 l2!3105)))) (toChars!3947 (transformation!2761 (rule!4538 (h!20910 l1!3136))))) (= (toValue!4088 (transformation!2761 (rule!4538 (h!20910 l2!3105)))) (toValue!4088 (transformation!2761 (rule!4538 (h!20910 l1!3136)))))) (= lambda!63609 lambda!63596))))

(assert (=> d!432562 true))

(assert (=> d!432562 (< (dynLambda!7037 order!9311 (toChars!3947 (transformation!2761 (rule!4538 (h!20910 l2!3105))))) (dynLambda!7044 order!9325 lambda!63609))))

(assert (=> d!432562 true))

(assert (=> d!432562 (< (dynLambda!7035 order!9307 (toValue!4088 (transformation!2761 (rule!4538 (h!20910 l2!3105))))) (dynLambda!7044 order!9325 lambda!63609))))

(assert (=> d!432562 (= (semiInverseModEq!1033 (toChars!3947 (transformation!2761 (rule!4538 (h!20910 l2!3105)))) (toValue!4088 (transformation!2761 (rule!4538 (h!20910 l2!3105))))) (Forall!569 lambda!63609))))

(declare-fun bs!345496 () Bool)

(assert (= bs!345496 d!432562))

(declare-fun m!1719863 () Bool)

(assert (=> bs!345496 m!1719863))

(assert (=> d!431844 d!432562))

(declare-fun d!432564 () Bool)

(declare-fun lt!512653 () Token!5184)

(assert (=> d!432564 (= lt!512653 (apply!4005 (list!6180 (_1!8032 lt!512234)) 0))))

(assert (=> d!432564 (= lt!512653 (apply!4006 (c!242396 (_1!8032 lt!512234)) 0))))

(declare-fun e!942014 () Bool)

(assert (=> d!432564 e!942014))

(declare-fun res!666545 () Bool)

(assert (=> d!432564 (=> (not res!666545) (not e!942014))))

(assert (=> d!432564 (= res!666545 (<= 0 0))))

(assert (=> d!432564 (= (apply!4000 (_1!8032 lt!512234) 0) lt!512653)))

(declare-fun b!1474582 () Bool)

(assert (=> b!1474582 (= e!942014 (< 0 (size!12580 (_1!8032 lt!512234))))))

(assert (= (and d!432564 res!666545) b!1474582))

(assert (=> d!432564 m!1718479))

(assert (=> d!432564 m!1718479))

(declare-fun m!1719865 () Bool)

(assert (=> d!432564 m!1719865))

(declare-fun m!1719867 () Bool)

(assert (=> d!432564 m!1719867))

(assert (=> b!1474582 m!1718069))

(assert (=> b!1473892 d!432564))

(declare-fun b!1474583 () Bool)

(declare-fun e!942015 () Bool)

(declare-fun tp!416863 () Bool)

(assert (=> b!1474583 (= e!942015 (and tp_is_empty!6935 tp!416863))))

(assert (=> b!1473942 (= tp!416699 e!942015)))

(assert (= (and b!1473942 ((_ is Cons!15507) (originalCharacters!3623 (h!20910 (t!136020 l2!3105))))) b!1474583))

(declare-fun b!1474586 () Bool)

(declare-fun b_free!37551 () Bool)

(declare-fun b_next!38255 () Bool)

(assert (=> b!1474586 (= b_free!37551 (not b_next!38255))))

(declare-fun tp!416864 () Bool)

(declare-fun b_and!101645 () Bool)

(assert (=> b!1474586 (= tp!416864 b_and!101645)))

(declare-fun b_free!37553 () Bool)

(declare-fun b_next!38257 () Bool)

(assert (=> b!1474586 (= b_free!37553 (not b_next!38257))))

(declare-fun tb!83855 () Bool)

(declare-fun t!136316 () Bool)

(assert (=> (and b!1474586 (= (toChars!3947 (transformation!2761 (h!20909 (t!136019 (t!136019 rules!4290))))) (toChars!3947 (transformation!2761 (rule!4538 (h!20910 (t!136020 l2!3105)))))) t!136316) tb!83855))

(declare-fun result!100782 () Bool)

(assert (= result!100782 result!100642))

(assert (=> d!432488 t!136316))

(declare-fun t!136318 () Bool)

(declare-fun tb!83857 () Bool)

(assert (=> (and b!1474586 (= (toChars!3947 (transformation!2761 (h!20909 (t!136019 (t!136019 rules!4290))))) (toChars!3947 (transformation!2761 (rule!4538 (h!20910 (t!136020 l1!3136)))))) t!136318) tb!83857))

(declare-fun result!100784 () Bool)

(assert (= result!100784 result!100678))

(assert (=> b!1474309 t!136318))

(declare-fun t!136320 () Bool)

(declare-fun tb!83859 () Bool)

(assert (=> (and b!1474586 (= (toChars!3947 (transformation!2761 (h!20909 (t!136019 (t!136019 rules!4290))))) (toChars!3947 (transformation!2761 (rule!4538 (h!20910 (t!136020 (t!136020 l1!3136))))))) t!136320) tb!83859))

(declare-fun result!100786 () Bool)

(assert (= result!100786 result!100702))

(assert (=> d!432394 t!136320))

(declare-fun t!136322 () Bool)

(declare-fun tb!83861 () Bool)

(assert (=> (and b!1474586 (= (toChars!3947 (transformation!2761 (h!20909 (t!136019 (t!136019 rules!4290))))) (toChars!3947 (transformation!2761 (rule!4538 lt!512076)))) t!136322) tb!83861))

(declare-fun result!100788 () Bool)

(assert (= result!100788 result!100654))

(assert (=> d!432286 t!136322))

(declare-fun tb!83863 () Bool)

(declare-fun t!136324 () Bool)

(assert (=> (and b!1474586 (= (toChars!3947 (transformation!2761 (h!20909 (t!136019 (t!136019 rules!4290))))) (toChars!3947 (transformation!2761 (rule!4538 lt!512074)))) t!136324) tb!83863))

(declare-fun result!100790 () Bool)

(assert (= result!100790 result!100570))

(assert (=> d!432036 t!136324))

(declare-fun tb!83865 () Bool)

(declare-fun t!136326 () Bool)

(assert (=> (and b!1474586 (= (toChars!3947 (transformation!2761 (h!20909 (t!136019 (t!136019 rules!4290))))) (toChars!3947 (transformation!2761 (rule!4538 (h!20910 l2!3105))))) t!136326) tb!83865))

(declare-fun result!100792 () Bool)

(assert (= result!100792 result!100490))

(assert (=> b!1473702 t!136326))

(declare-fun t!136328 () Bool)

(declare-fun tb!83867 () Bool)

(assert (=> (and b!1474586 (= (toChars!3947 (transformation!2761 (h!20909 (t!136019 (t!136019 rules!4290))))) (toChars!3947 (transformation!2761 (rule!4538 (h!20910 (t!136020 lt!512070)))))) t!136328) tb!83867))

(declare-fun result!100794 () Bool)

(assert (= result!100794 result!100666))

(assert (=> d!432308 t!136328))

(declare-fun tb!83869 () Bool)

(declare-fun t!136330 () Bool)

(assert (=> (and b!1474586 (= (toChars!3947 (transformation!2761 (h!20909 (t!136019 (t!136019 rules!4290))))) (toChars!3947 (transformation!2761 (rule!4538 (h!20910 l1!3136))))) t!136330) tb!83869))

(declare-fun result!100796 () Bool)

(assert (= result!100796 result!100532))

(assert (=> b!1473905 t!136330))

(declare-fun t!136332 () Bool)

(declare-fun tb!83871 () Bool)

(assert (=> (and b!1474586 (= (toChars!3947 (transformation!2761 (h!20909 (t!136019 (t!136019 rules!4290))))) (toChars!3947 (transformation!2761 (rule!4538 lt!512069)))) t!136332) tb!83871))

(declare-fun result!100798 () Bool)

(assert (= result!100798 result!100582))

(assert (=> d!432038 t!136332))

(assert (=> d!432520 t!136318))

(assert (=> b!1474263 t!136316))

(declare-fun tp!416866 () Bool)

(declare-fun b_and!101647 () Bool)

(assert (=> b!1474586 (= tp!416866 (and (=> t!136322 result!100788) (=> t!136316 result!100782) (=> t!136318 result!100784) (=> t!136320 result!100786) (=> t!136330 result!100796) (=> t!136328 result!100794) (=> t!136324 result!100790) (=> t!136332 result!100798) (=> t!136326 result!100792) b_and!101647))))

(declare-fun e!942018 () Bool)

(assert (=> b!1474586 (= e!942018 (and tp!416864 tp!416866))))

(declare-fun tp!416865 () Bool)

(declare-fun e!942019 () Bool)

(declare-fun b!1474585 () Bool)

(assert (=> b!1474585 (= e!942019 (and tp!416865 (inv!20711 (tag!3025 (h!20909 (t!136019 (t!136019 rules!4290))))) (inv!20715 (transformation!2761 (h!20909 (t!136019 (t!136019 rules!4290))))) e!942018))))

(declare-fun b!1474584 () Bool)

(declare-fun e!942016 () Bool)

(declare-fun tp!416867 () Bool)

(assert (=> b!1474584 (= e!942016 (and e!942019 tp!416867))))

(assert (=> b!1473958 (= tp!416717 e!942016)))

(assert (= b!1474585 b!1474586))

(assert (= b!1474584 b!1474585))

(assert (= (and b!1473958 ((_ is Cons!15508) (t!136019 (t!136019 rules!4290)))) b!1474584))

(declare-fun m!1719869 () Bool)

(assert (=> b!1474585 m!1719869))

(declare-fun m!1719871 () Bool)

(assert (=> b!1474585 m!1719871))

(declare-fun e!942020 () Bool)

(assert (=> b!1473924 (= tp!416678 e!942020)))

(declare-fun b!1474588 () Bool)

(declare-fun tp!416868 () Bool)

(declare-fun tp!416871 () Bool)

(assert (=> b!1474588 (= e!942020 (and tp!416868 tp!416871))))

(declare-fun b!1474589 () Bool)

(declare-fun tp!416872 () Bool)

(assert (=> b!1474589 (= e!942020 tp!416872)))

(declare-fun b!1474590 () Bool)

(declare-fun tp!416870 () Bool)

(declare-fun tp!416869 () Bool)

(assert (=> b!1474590 (= e!942020 (and tp!416870 tp!416869))))

(declare-fun b!1474587 () Bool)

(assert (=> b!1474587 (= e!942020 tp_is_empty!6935)))

(assert (= (and b!1473924 ((_ is ElementMatch!4075) (regOne!8662 (regex!2761 (h!20909 rules!4290))))) b!1474587))

(assert (= (and b!1473924 ((_ is Concat!6926) (regOne!8662 (regex!2761 (h!20909 rules!4290))))) b!1474588))

(assert (= (and b!1473924 ((_ is Star!4075) (regOne!8662 (regex!2761 (h!20909 rules!4290))))) b!1474589))

(assert (= (and b!1473924 ((_ is Union!4075) (regOne!8662 (regex!2761 (h!20909 rules!4290))))) b!1474590))

(declare-fun e!942021 () Bool)

(assert (=> b!1473924 (= tp!416681 e!942021)))

(declare-fun b!1474592 () Bool)

(declare-fun tp!416873 () Bool)

(declare-fun tp!416876 () Bool)

(assert (=> b!1474592 (= e!942021 (and tp!416873 tp!416876))))

(declare-fun b!1474593 () Bool)

(declare-fun tp!416877 () Bool)

(assert (=> b!1474593 (= e!942021 tp!416877)))

(declare-fun b!1474594 () Bool)

(declare-fun tp!416875 () Bool)

(declare-fun tp!416874 () Bool)

(assert (=> b!1474594 (= e!942021 (and tp!416875 tp!416874))))

(declare-fun b!1474591 () Bool)

(assert (=> b!1474591 (= e!942021 tp_is_empty!6935)))

(assert (= (and b!1473924 ((_ is ElementMatch!4075) (regTwo!8662 (regex!2761 (h!20909 rules!4290))))) b!1474591))

(assert (= (and b!1473924 ((_ is Concat!6926) (regTwo!8662 (regex!2761 (h!20909 rules!4290))))) b!1474592))

(assert (= (and b!1473924 ((_ is Star!4075) (regTwo!8662 (regex!2761 (h!20909 rules!4290))))) b!1474593))

(assert (= (and b!1473924 ((_ is Union!4075) (regTwo!8662 (regex!2761 (h!20909 rules!4290))))) b!1474594))

(declare-fun e!942022 () Bool)

(assert (=> b!1473943 (= tp!416701 e!942022)))

(declare-fun b!1474596 () Bool)

(declare-fun tp!416878 () Bool)

(declare-fun tp!416881 () Bool)

(assert (=> b!1474596 (= e!942022 (and tp!416878 tp!416881))))

(declare-fun b!1474597 () Bool)

(declare-fun tp!416882 () Bool)

(assert (=> b!1474597 (= e!942022 tp!416882)))

(declare-fun b!1474598 () Bool)

(declare-fun tp!416880 () Bool)

(declare-fun tp!416879 () Bool)

(assert (=> b!1474598 (= e!942022 (and tp!416880 tp!416879))))

(declare-fun b!1474595 () Bool)

(assert (=> b!1474595 (= e!942022 tp_is_empty!6935)))

(assert (= (and b!1473943 ((_ is ElementMatch!4075) (regex!2761 (rule!4538 (h!20910 (t!136020 l2!3105)))))) b!1474595))

(assert (= (and b!1473943 ((_ is Concat!6926) (regex!2761 (rule!4538 (h!20910 (t!136020 l2!3105)))))) b!1474596))

(assert (= (and b!1473943 ((_ is Star!4075) (regex!2761 (rule!4538 (h!20910 (t!136020 l2!3105)))))) b!1474597))

(assert (= (and b!1473943 ((_ is Union!4075) (regex!2761 (rule!4538 (h!20910 (t!136020 l2!3105)))))) b!1474598))

(declare-fun e!942028 () Bool)

(declare-fun b!1474607 () Bool)

(declare-fun tp!416891 () Bool)

(declare-fun tp!416889 () Bool)

(assert (=> b!1474607 (= e!942028 (and (inv!20718 (left!13102 (c!242395 (dynLambda!7038 (toChars!3947 (transformation!2761 (rule!4538 (h!20910 l2!3105)))) (value!88336 (h!20910 l2!3105)))))) tp!416889 (inv!20718 (right!13432 (c!242395 (dynLambda!7038 (toChars!3947 (transformation!2761 (rule!4538 (h!20910 l2!3105)))) (value!88336 (h!20910 l2!3105)))))) tp!416891))))

(declare-fun b!1474609 () Bool)

(declare-fun e!942027 () Bool)

(declare-fun tp!416890 () Bool)

(assert (=> b!1474609 (= e!942027 tp!416890)))

(declare-fun b!1474608 () Bool)

(declare-fun inv!20725 (IArray!10579) Bool)

(assert (=> b!1474608 (= e!942028 (and (inv!20725 (xs!8042 (c!242395 (dynLambda!7038 (toChars!3947 (transformation!2761 (rule!4538 (h!20910 l2!3105)))) (value!88336 (h!20910 l2!3105)))))) e!942027))))

(assert (=> b!1473708 (= tp!416601 (and (inv!20718 (c!242395 (dynLambda!7038 (toChars!3947 (transformation!2761 (rule!4538 (h!20910 l2!3105)))) (value!88336 (h!20910 l2!3105))))) e!942028))))

(assert (= (and b!1473708 ((_ is Node!5287) (c!242395 (dynLambda!7038 (toChars!3947 (transformation!2761 (rule!4538 (h!20910 l2!3105)))) (value!88336 (h!20910 l2!3105)))))) b!1474607))

(assert (= b!1474608 b!1474609))

(assert (= (and b!1473708 ((_ is Leaf!7869) (c!242395 (dynLambda!7038 (toChars!3947 (transformation!2761 (rule!4538 (h!20910 l2!3105)))) (value!88336 (h!20910 l2!3105)))))) b!1474608))

(declare-fun m!1719873 () Bool)

(assert (=> b!1474607 m!1719873))

(declare-fun m!1719875 () Bool)

(assert (=> b!1474607 m!1719875))

(declare-fun m!1719877 () Bool)

(assert (=> b!1474608 m!1719877))

(assert (=> b!1473708 m!1717833))

(declare-fun e!942029 () Bool)

(assert (=> b!1473959 (= tp!416715 e!942029)))

(declare-fun b!1474611 () Bool)

(declare-fun tp!416892 () Bool)

(declare-fun tp!416895 () Bool)

(assert (=> b!1474611 (= e!942029 (and tp!416892 tp!416895))))

(declare-fun b!1474612 () Bool)

(declare-fun tp!416896 () Bool)

(assert (=> b!1474612 (= e!942029 tp!416896)))

(declare-fun b!1474613 () Bool)

(declare-fun tp!416894 () Bool)

(declare-fun tp!416893 () Bool)

(assert (=> b!1474613 (= e!942029 (and tp!416894 tp!416893))))

(declare-fun b!1474610 () Bool)

(assert (=> b!1474610 (= e!942029 tp_is_empty!6935)))

(assert (= (and b!1473959 ((_ is ElementMatch!4075) (regex!2761 (h!20909 (t!136019 rules!4290))))) b!1474610))

(assert (= (and b!1473959 ((_ is Concat!6926) (regex!2761 (h!20909 (t!136019 rules!4290))))) b!1474611))

(assert (= (and b!1473959 ((_ is Star!4075) (regex!2761 (h!20909 (t!136019 rules!4290))))) b!1474612))

(assert (= (and b!1473959 ((_ is Union!4075) (regex!2761 (h!20909 (t!136019 rules!4290))))) b!1474613))

(declare-fun e!942030 () Bool)

(assert (=> b!1473925 (= tp!416682 e!942030)))

(declare-fun b!1474615 () Bool)

(declare-fun tp!416897 () Bool)

(declare-fun tp!416900 () Bool)

(assert (=> b!1474615 (= e!942030 (and tp!416897 tp!416900))))

(declare-fun b!1474616 () Bool)

(declare-fun tp!416901 () Bool)

(assert (=> b!1474616 (= e!942030 tp!416901)))

(declare-fun b!1474617 () Bool)

(declare-fun tp!416899 () Bool)

(declare-fun tp!416898 () Bool)

(assert (=> b!1474617 (= e!942030 (and tp!416899 tp!416898))))

(declare-fun b!1474614 () Bool)

(assert (=> b!1474614 (= e!942030 tp_is_empty!6935)))

(assert (= (and b!1473925 ((_ is ElementMatch!4075) (reg!4404 (regex!2761 (h!20909 rules!4290))))) b!1474614))

(assert (= (and b!1473925 ((_ is Concat!6926) (reg!4404 (regex!2761 (h!20909 rules!4290))))) b!1474615))

(assert (= (and b!1473925 ((_ is Star!4075) (reg!4404 (regex!2761 (h!20909 rules!4290))))) b!1474616))

(assert (= (and b!1473925 ((_ is Union!4075) (reg!4404 (regex!2761 (h!20909 rules!4290))))) b!1474617))

(declare-fun e!942031 () Bool)

(assert (=> b!1473926 (= tp!416680 e!942031)))

(declare-fun b!1474619 () Bool)

(declare-fun tp!416902 () Bool)

(declare-fun tp!416905 () Bool)

(assert (=> b!1474619 (= e!942031 (and tp!416902 tp!416905))))

(declare-fun b!1474620 () Bool)

(declare-fun tp!416906 () Bool)

(assert (=> b!1474620 (= e!942031 tp!416906)))

(declare-fun b!1474621 () Bool)

(declare-fun tp!416904 () Bool)

(declare-fun tp!416903 () Bool)

(assert (=> b!1474621 (= e!942031 (and tp!416904 tp!416903))))

(declare-fun b!1474618 () Bool)

(assert (=> b!1474618 (= e!942031 tp_is_empty!6935)))

(assert (= (and b!1473926 ((_ is ElementMatch!4075) (regOne!8663 (regex!2761 (h!20909 rules!4290))))) b!1474618))

(assert (= (and b!1473926 ((_ is Concat!6926) (regOne!8663 (regex!2761 (h!20909 rules!4290))))) b!1474619))

(assert (= (and b!1473926 ((_ is Star!4075) (regOne!8663 (regex!2761 (h!20909 rules!4290))))) b!1474620))

(assert (= (and b!1473926 ((_ is Union!4075) (regOne!8663 (regex!2761 (h!20909 rules!4290))))) b!1474621))

(declare-fun e!942032 () Bool)

(assert (=> b!1473926 (= tp!416679 e!942032)))

(declare-fun b!1474623 () Bool)

(declare-fun tp!416907 () Bool)

(declare-fun tp!416910 () Bool)

(assert (=> b!1474623 (= e!942032 (and tp!416907 tp!416910))))

(declare-fun b!1474624 () Bool)

(declare-fun tp!416911 () Bool)

(assert (=> b!1474624 (= e!942032 tp!416911)))

(declare-fun b!1474625 () Bool)

(declare-fun tp!416909 () Bool)

(declare-fun tp!416908 () Bool)

(assert (=> b!1474625 (= e!942032 (and tp!416909 tp!416908))))

(declare-fun b!1474622 () Bool)

(assert (=> b!1474622 (= e!942032 tp_is_empty!6935)))

(assert (= (and b!1473926 ((_ is ElementMatch!4075) (regTwo!8663 (regex!2761 (h!20909 rules!4290))))) b!1474622))

(assert (= (and b!1473926 ((_ is Concat!6926) (regTwo!8663 (regex!2761 (h!20909 rules!4290))))) b!1474623))

(assert (= (and b!1473926 ((_ is Star!4075) (regTwo!8663 (regex!2761 (h!20909 rules!4290))))) b!1474624))

(assert (= (and b!1473926 ((_ is Union!4075) (regTwo!8663 (regex!2761 (h!20909 rules!4290))))) b!1474625))

(declare-fun b!1474628 () Bool)

(declare-fun e!942035 () Bool)

(assert (=> b!1474628 (= e!942035 true)))

(declare-fun b!1474627 () Bool)

(declare-fun e!942034 () Bool)

(assert (=> b!1474627 (= e!942034 e!942035)))

(declare-fun b!1474626 () Bool)

(declare-fun e!942033 () Bool)

(assert (=> b!1474626 (= e!942033 e!942034)))

(assert (=> b!1473627 e!942033))

(assert (= b!1474627 b!1474628))

(assert (= b!1474626 b!1474627))

(assert (= (and b!1473627 ((_ is Cons!15508) (t!136019 rules!4290))) b!1474626))

(assert (=> b!1474628 (< (dynLambda!7035 order!9307 (toValue!4088 (transformation!2761 (h!20909 (t!136019 rules!4290))))) (dynLambda!7036 order!9309 lambda!63546))))

(assert (=> b!1474628 (< (dynLambda!7037 order!9311 (toChars!3947 (transformation!2761 (h!20909 (t!136019 rules!4290))))) (dynLambda!7036 order!9309 lambda!63546))))

(declare-fun e!942036 () Bool)

(assert (=> b!1473962 (= tp!416718 e!942036)))

(declare-fun b!1474630 () Bool)

(declare-fun tp!416912 () Bool)

(declare-fun tp!416915 () Bool)

(assert (=> b!1474630 (= e!942036 (and tp!416912 tp!416915))))

(declare-fun b!1474631 () Bool)

(declare-fun tp!416916 () Bool)

(assert (=> b!1474631 (= e!942036 tp!416916)))

(declare-fun b!1474632 () Bool)

(declare-fun tp!416914 () Bool)

(declare-fun tp!416913 () Bool)

(assert (=> b!1474632 (= e!942036 (and tp!416914 tp!416913))))

(declare-fun b!1474629 () Bool)

(assert (=> b!1474629 (= e!942036 tp_is_empty!6935)))

(assert (= (and b!1473962 ((_ is ElementMatch!4075) (regOne!8662 (regex!2761 (rule!4538 (h!20910 l1!3136)))))) b!1474629))

(assert (= (and b!1473962 ((_ is Concat!6926) (regOne!8662 (regex!2761 (rule!4538 (h!20910 l1!3136)))))) b!1474630))

(assert (= (and b!1473962 ((_ is Star!4075) (regOne!8662 (regex!2761 (rule!4538 (h!20910 l1!3136)))))) b!1474631))

(assert (= (and b!1473962 ((_ is Union!4075) (regOne!8662 (regex!2761 (rule!4538 (h!20910 l1!3136)))))) b!1474632))

(declare-fun e!942037 () Bool)

(assert (=> b!1473962 (= tp!416721 e!942037)))

(declare-fun b!1474634 () Bool)

(declare-fun tp!416917 () Bool)

(declare-fun tp!416920 () Bool)

(assert (=> b!1474634 (= e!942037 (and tp!416917 tp!416920))))

(declare-fun b!1474635 () Bool)

(declare-fun tp!416921 () Bool)

(assert (=> b!1474635 (= e!942037 tp!416921)))

(declare-fun b!1474636 () Bool)

(declare-fun tp!416919 () Bool)

(declare-fun tp!416918 () Bool)

(assert (=> b!1474636 (= e!942037 (and tp!416919 tp!416918))))

(declare-fun b!1474633 () Bool)

(assert (=> b!1474633 (= e!942037 tp_is_empty!6935)))

(assert (= (and b!1473962 ((_ is ElementMatch!4075) (regTwo!8662 (regex!2761 (rule!4538 (h!20910 l1!3136)))))) b!1474633))

(assert (= (and b!1473962 ((_ is Concat!6926) (regTwo!8662 (regex!2761 (rule!4538 (h!20910 l1!3136)))))) b!1474634))

(assert (= (and b!1473962 ((_ is Star!4075) (regTwo!8662 (regex!2761 (rule!4538 (h!20910 l1!3136)))))) b!1474635))

(assert (= (and b!1473962 ((_ is Union!4075) (regTwo!8662 (regex!2761 (rule!4538 (h!20910 l1!3136)))))) b!1474636))

(declare-fun e!942039 () Bool)

(declare-fun b!1474637 () Bool)

(declare-fun tp!416922 () Bool)

(declare-fun tp!416924 () Bool)

(assert (=> b!1474637 (= e!942039 (and (inv!20718 (left!13102 (c!242395 (dynLambda!7038 (toChars!3947 (transformation!2761 (rule!4538 (h!20910 l1!3136)))) (value!88336 (h!20910 l1!3136)))))) tp!416922 (inv!20718 (right!13432 (c!242395 (dynLambda!7038 (toChars!3947 (transformation!2761 (rule!4538 (h!20910 l1!3136)))) (value!88336 (h!20910 l1!3136)))))) tp!416924))))

(declare-fun b!1474639 () Bool)

(declare-fun e!942038 () Bool)

(declare-fun tp!416923 () Bool)

(assert (=> b!1474639 (= e!942038 tp!416923)))

(declare-fun b!1474638 () Bool)

(assert (=> b!1474638 (= e!942039 (and (inv!20725 (xs!8042 (c!242395 (dynLambda!7038 (toChars!3947 (transformation!2761 (rule!4538 (h!20910 l1!3136)))) (value!88336 (h!20910 l1!3136)))))) e!942038))))

(assert (=> b!1473907 (= tp!416667 (and (inv!20718 (c!242395 (dynLambda!7038 (toChars!3947 (transformation!2761 (rule!4538 (h!20910 l1!3136)))) (value!88336 (h!20910 l1!3136))))) e!942039))))

(assert (= (and b!1473907 ((_ is Node!5287) (c!242395 (dynLambda!7038 (toChars!3947 (transformation!2761 (rule!4538 (h!20910 l1!3136)))) (value!88336 (h!20910 l1!3136)))))) b!1474637))

(assert (= b!1474638 b!1474639))

(assert (= (and b!1473907 ((_ is Leaf!7869) (c!242395 (dynLambda!7038 (toChars!3947 (transformation!2761 (rule!4538 (h!20910 l1!3136)))) (value!88336 (h!20910 l1!3136)))))) b!1474638))

(declare-fun m!1719879 () Bool)

(assert (=> b!1474637 m!1719879))

(declare-fun m!1719881 () Bool)

(assert (=> b!1474637 m!1719881))

(declare-fun m!1719883 () Bool)

(assert (=> b!1474638 m!1719883))

(assert (=> b!1473907 m!1718131))

(declare-fun b!1474642 () Bool)

(declare-fun e!942042 () Bool)

(assert (=> b!1474642 (= e!942042 true)))

(declare-fun b!1474641 () Bool)

(declare-fun e!942041 () Bool)

(assert (=> b!1474641 (= e!942041 e!942042)))

(declare-fun b!1474640 () Bool)

(declare-fun e!942040 () Bool)

(assert (=> b!1474640 (= e!942040 e!942041)))

(assert (=> b!1473636 e!942040))

(assert (= b!1474641 b!1474642))

(assert (= b!1474640 b!1474641))

(assert (= (and b!1473636 ((_ is Cons!15508) (t!136019 rules!4290))) b!1474640))

(assert (=> b!1474642 (< (dynLambda!7035 order!9307 (toValue!4088 (transformation!2761 (h!20909 (t!136019 rules!4290))))) (dynLambda!7036 order!9309 lambda!63547))))

(assert (=> b!1474642 (< (dynLambda!7037 order!9311 (toChars!3947 (transformation!2761 (h!20909 (t!136019 rules!4290))))) (dynLambda!7036 order!9309 lambda!63547))))

(declare-fun e!942043 () Bool)

(assert (=> b!1473963 (= tp!416722 e!942043)))

(declare-fun b!1474644 () Bool)

(declare-fun tp!416925 () Bool)

(declare-fun tp!416928 () Bool)

(assert (=> b!1474644 (= e!942043 (and tp!416925 tp!416928))))

(declare-fun b!1474645 () Bool)

(declare-fun tp!416929 () Bool)

(assert (=> b!1474645 (= e!942043 tp!416929)))

(declare-fun b!1474646 () Bool)

(declare-fun tp!416927 () Bool)

(declare-fun tp!416926 () Bool)

(assert (=> b!1474646 (= e!942043 (and tp!416927 tp!416926))))

(declare-fun b!1474643 () Bool)

(assert (=> b!1474643 (= e!942043 tp_is_empty!6935)))

(assert (= (and b!1473963 ((_ is ElementMatch!4075) (reg!4404 (regex!2761 (rule!4538 (h!20910 l1!3136)))))) b!1474643))

(assert (= (and b!1473963 ((_ is Concat!6926) (reg!4404 (regex!2761 (rule!4538 (h!20910 l1!3136)))))) b!1474644))

(assert (= (and b!1473963 ((_ is Star!4075) (reg!4404 (regex!2761 (rule!4538 (h!20910 l1!3136)))))) b!1474645))

(assert (= (and b!1473963 ((_ is Union!4075) (reg!4404 (regex!2761 (rule!4538 (h!20910 l1!3136)))))) b!1474646))

(declare-fun e!942044 () Bool)

(assert (=> b!1473964 (= tp!416720 e!942044)))

(declare-fun b!1474648 () Bool)

(declare-fun tp!416930 () Bool)

(declare-fun tp!416933 () Bool)

(assert (=> b!1474648 (= e!942044 (and tp!416930 tp!416933))))

(declare-fun b!1474649 () Bool)

(declare-fun tp!416934 () Bool)

(assert (=> b!1474649 (= e!942044 tp!416934)))

(declare-fun b!1474650 () Bool)

(declare-fun tp!416932 () Bool)

(declare-fun tp!416931 () Bool)

(assert (=> b!1474650 (= e!942044 (and tp!416932 tp!416931))))

(declare-fun b!1474647 () Bool)

(assert (=> b!1474647 (= e!942044 tp_is_empty!6935)))

(assert (= (and b!1473964 ((_ is ElementMatch!4075) (regOne!8663 (regex!2761 (rule!4538 (h!20910 l1!3136)))))) b!1474647))

(assert (= (and b!1473964 ((_ is Concat!6926) (regOne!8663 (regex!2761 (rule!4538 (h!20910 l1!3136)))))) b!1474648))

(assert (= (and b!1473964 ((_ is Star!4075) (regOne!8663 (regex!2761 (rule!4538 (h!20910 l1!3136)))))) b!1474649))

(assert (= (and b!1473964 ((_ is Union!4075) (regOne!8663 (regex!2761 (rule!4538 (h!20910 l1!3136)))))) b!1474650))

(declare-fun e!942045 () Bool)

(assert (=> b!1473964 (= tp!416719 e!942045)))

(declare-fun b!1474652 () Bool)

(declare-fun tp!416935 () Bool)

(declare-fun tp!416938 () Bool)

(assert (=> b!1474652 (= e!942045 (and tp!416935 tp!416938))))

(declare-fun b!1474653 () Bool)

(declare-fun tp!416939 () Bool)

(assert (=> b!1474653 (= e!942045 tp!416939)))

(declare-fun b!1474654 () Bool)

(declare-fun tp!416937 () Bool)

(declare-fun tp!416936 () Bool)

(assert (=> b!1474654 (= e!942045 (and tp!416937 tp!416936))))

(declare-fun b!1474651 () Bool)

(assert (=> b!1474651 (= e!942045 tp_is_empty!6935)))

(assert (= (and b!1473964 ((_ is ElementMatch!4075) (regTwo!8663 (regex!2761 (rule!4538 (h!20910 l1!3136)))))) b!1474651))

(assert (= (and b!1473964 ((_ is Concat!6926) (regTwo!8663 (regex!2761 (rule!4538 (h!20910 l1!3136)))))) b!1474652))

(assert (= (and b!1473964 ((_ is Star!4075) (regTwo!8663 (regex!2761 (rule!4538 (h!20910 l1!3136)))))) b!1474653))

(assert (= (and b!1473964 ((_ is Union!4075) (regTwo!8663 (regex!2761 (rule!4538 (h!20910 l1!3136)))))) b!1474654))

(declare-fun b!1474658 () Bool)

(declare-fun b_free!37555 () Bool)

(declare-fun b_next!38259 () Bool)

(assert (=> b!1474658 (= b_free!37555 (not b_next!38259))))

(declare-fun tp!416944 () Bool)

(declare-fun b_and!101649 () Bool)

(assert (=> b!1474658 (= tp!416944 b_and!101649)))

(declare-fun b_free!37557 () Bool)

(declare-fun b_next!38261 () Bool)

(assert (=> b!1474658 (= b_free!37557 (not b_next!38261))))

(declare-fun t!136334 () Bool)

(declare-fun tb!83873 () Bool)

(assert (=> (and b!1474658 (= (toChars!3947 (transformation!2761 (rule!4538 (h!20910 (t!136020 (t!136020 l2!3105)))))) (toChars!3947 (transformation!2761 (rule!4538 (h!20910 (t!136020 l2!3105)))))) t!136334) tb!83873))

(declare-fun result!100802 () Bool)

(assert (= result!100802 result!100642))

(assert (=> d!432488 t!136334))

(declare-fun t!136336 () Bool)

(declare-fun tb!83875 () Bool)

(assert (=> (and b!1474658 (= (toChars!3947 (transformation!2761 (rule!4538 (h!20910 (t!136020 (t!136020 l2!3105)))))) (toChars!3947 (transformation!2761 (rule!4538 (h!20910 (t!136020 l1!3136)))))) t!136336) tb!83875))

(declare-fun result!100804 () Bool)

(assert (= result!100804 result!100678))

(assert (=> b!1474309 t!136336))

(declare-fun tb!83877 () Bool)

(declare-fun t!136338 () Bool)

(assert (=> (and b!1474658 (= (toChars!3947 (transformation!2761 (rule!4538 (h!20910 (t!136020 (t!136020 l2!3105)))))) (toChars!3947 (transformation!2761 (rule!4538 (h!20910 (t!136020 (t!136020 l1!3136))))))) t!136338) tb!83877))

(declare-fun result!100806 () Bool)

(assert (= result!100806 result!100702))

(assert (=> d!432394 t!136338))

(declare-fun t!136340 () Bool)

(declare-fun tb!83879 () Bool)

(assert (=> (and b!1474658 (= (toChars!3947 (transformation!2761 (rule!4538 (h!20910 (t!136020 (t!136020 l2!3105)))))) (toChars!3947 (transformation!2761 (rule!4538 lt!512076)))) t!136340) tb!83879))

(declare-fun result!100808 () Bool)

(assert (= result!100808 result!100654))

(assert (=> d!432286 t!136340))

(declare-fun t!136342 () Bool)

(declare-fun tb!83881 () Bool)

(assert (=> (and b!1474658 (= (toChars!3947 (transformation!2761 (rule!4538 (h!20910 (t!136020 (t!136020 l2!3105)))))) (toChars!3947 (transformation!2761 (rule!4538 lt!512074)))) t!136342) tb!83881))

(declare-fun result!100810 () Bool)

(assert (= result!100810 result!100570))

(assert (=> d!432036 t!136342))

(declare-fun t!136344 () Bool)

(declare-fun tb!83883 () Bool)

(assert (=> (and b!1474658 (= (toChars!3947 (transformation!2761 (rule!4538 (h!20910 (t!136020 (t!136020 l2!3105)))))) (toChars!3947 (transformation!2761 (rule!4538 (h!20910 l2!3105))))) t!136344) tb!83883))

(declare-fun result!100812 () Bool)

(assert (= result!100812 result!100490))

(assert (=> b!1473702 t!136344))

(declare-fun tb!83885 () Bool)

(declare-fun t!136346 () Bool)

(assert (=> (and b!1474658 (= (toChars!3947 (transformation!2761 (rule!4538 (h!20910 (t!136020 (t!136020 l2!3105)))))) (toChars!3947 (transformation!2761 (rule!4538 (h!20910 (t!136020 lt!512070)))))) t!136346) tb!83885))

(declare-fun result!100814 () Bool)

(assert (= result!100814 result!100666))

(assert (=> d!432308 t!136346))

(declare-fun tb!83887 () Bool)

(declare-fun t!136348 () Bool)

(assert (=> (and b!1474658 (= (toChars!3947 (transformation!2761 (rule!4538 (h!20910 (t!136020 (t!136020 l2!3105)))))) (toChars!3947 (transformation!2761 (rule!4538 (h!20910 l1!3136))))) t!136348) tb!83887))

(declare-fun result!100816 () Bool)

(assert (= result!100816 result!100532))

(assert (=> b!1473905 t!136348))

(declare-fun t!136350 () Bool)

(declare-fun tb!83889 () Bool)

(assert (=> (and b!1474658 (= (toChars!3947 (transformation!2761 (rule!4538 (h!20910 (t!136020 (t!136020 l2!3105)))))) (toChars!3947 (transformation!2761 (rule!4538 lt!512069)))) t!136350) tb!83889))

(declare-fun result!100818 () Bool)

(assert (= result!100818 result!100582))

(assert (=> d!432038 t!136350))

(assert (=> d!432520 t!136336))

(assert (=> b!1474263 t!136334))

(declare-fun b_and!101651 () Bool)

(declare-fun tp!416942 () Bool)

(assert (=> b!1474658 (= tp!416942 (and (=> t!136340 result!100808) (=> t!136342 result!100810) (=> t!136338 result!100806) (=> t!136334 result!100802) (=> t!136348 result!100816) (=> t!136346 result!100814) (=> t!136344 result!100812) (=> t!136350 result!100818) (=> t!136336 result!100804) b_and!101651))))

(declare-fun e!942049 () Bool)

(declare-fun b!1474657 () Bool)

(declare-fun e!942047 () Bool)

(declare-fun tp!416943 () Bool)

(assert (=> b!1474657 (= e!942049 (and tp!416943 (inv!20711 (tag!3025 (rule!4538 (h!20910 (t!136020 (t!136020 l2!3105)))))) (inv!20715 (transformation!2761 (rule!4538 (h!20910 (t!136020 (t!136020 l2!3105)))))) e!942047))))

(declare-fun tp!416940 () Bool)

(declare-fun e!942048 () Bool)

(declare-fun b!1474655 () Bool)

(declare-fun e!942046 () Bool)

(assert (=> b!1474655 (= e!942048 (and (inv!20714 (h!20910 (t!136020 (t!136020 l2!3105)))) e!942046 tp!416940))))

(assert (=> b!1473941 (= tp!416698 e!942048)))

(assert (=> b!1474658 (= e!942047 (and tp!416944 tp!416942))))

(declare-fun b!1474656 () Bool)

(declare-fun tp!416941 () Bool)

(assert (=> b!1474656 (= e!942046 (and (inv!21 (value!88336 (h!20910 (t!136020 (t!136020 l2!3105))))) e!942049 tp!416941))))

(assert (= b!1474657 b!1474658))

(assert (= b!1474656 b!1474657))

(assert (= b!1474655 b!1474656))

(assert (= (and b!1473941 ((_ is Cons!15509) (t!136020 (t!136020 l2!3105)))) b!1474655))

(declare-fun m!1719885 () Bool)

(assert (=> b!1474657 m!1719885))

(declare-fun m!1719887 () Bool)

(assert (=> b!1474657 m!1719887))

(declare-fun m!1719889 () Bool)

(assert (=> b!1474655 m!1719889))

(declare-fun m!1719891 () Bool)

(assert (=> b!1474656 m!1719891))

(declare-fun e!942052 () Bool)

(assert (=> b!1473928 (= tp!416683 e!942052)))

(declare-fun b!1474660 () Bool)

(declare-fun tp!416945 () Bool)

(declare-fun tp!416948 () Bool)

(assert (=> b!1474660 (= e!942052 (and tp!416945 tp!416948))))

(declare-fun b!1474661 () Bool)

(declare-fun tp!416949 () Bool)

(assert (=> b!1474661 (= e!942052 tp!416949)))

(declare-fun b!1474662 () Bool)

(declare-fun tp!416947 () Bool)

(declare-fun tp!416946 () Bool)

(assert (=> b!1474662 (= e!942052 (and tp!416947 tp!416946))))

(declare-fun b!1474659 () Bool)

(assert (=> b!1474659 (= e!942052 tp_is_empty!6935)))

(assert (= (and b!1473928 ((_ is ElementMatch!4075) (regOne!8662 (regex!2761 (rule!4538 (h!20910 l2!3105)))))) b!1474659))

(assert (= (and b!1473928 ((_ is Concat!6926) (regOne!8662 (regex!2761 (rule!4538 (h!20910 l2!3105)))))) b!1474660))

(assert (= (and b!1473928 ((_ is Star!4075) (regOne!8662 (regex!2761 (rule!4538 (h!20910 l2!3105)))))) b!1474661))

(assert (= (and b!1473928 ((_ is Union!4075) (regOne!8662 (regex!2761 (rule!4538 (h!20910 l2!3105)))))) b!1474662))

(declare-fun e!942053 () Bool)

(assert (=> b!1473928 (= tp!416686 e!942053)))

(declare-fun b!1474664 () Bool)

(declare-fun tp!416950 () Bool)

(declare-fun tp!416953 () Bool)

(assert (=> b!1474664 (= e!942053 (and tp!416950 tp!416953))))

(declare-fun b!1474665 () Bool)

(declare-fun tp!416954 () Bool)

(assert (=> b!1474665 (= e!942053 tp!416954)))

(declare-fun b!1474666 () Bool)

(declare-fun tp!416952 () Bool)

(declare-fun tp!416951 () Bool)

(assert (=> b!1474666 (= e!942053 (and tp!416952 tp!416951))))

(declare-fun b!1474663 () Bool)

(assert (=> b!1474663 (= e!942053 tp_is_empty!6935)))

(assert (= (and b!1473928 ((_ is ElementMatch!4075) (regTwo!8662 (regex!2761 (rule!4538 (h!20910 l2!3105)))))) b!1474663))

(assert (= (and b!1473928 ((_ is Concat!6926) (regTwo!8662 (regex!2761 (rule!4538 (h!20910 l2!3105)))))) b!1474664))

(assert (= (and b!1473928 ((_ is Star!4075) (regTwo!8662 (regex!2761 (rule!4538 (h!20910 l2!3105)))))) b!1474665))

(assert (= (and b!1473928 ((_ is Union!4075) (regTwo!8662 (regex!2761 (rule!4538 (h!20910 l2!3105)))))) b!1474666))

(declare-fun b!1474667 () Bool)

(declare-fun e!942054 () Bool)

(declare-fun tp!416955 () Bool)

(assert (=> b!1474667 (= e!942054 (and tp_is_empty!6935 tp!416955))))

(assert (=> b!1473966 (= tp!416724 e!942054)))

(assert (= (and b!1473966 ((_ is Cons!15507) (originalCharacters!3623 (h!20910 (t!136020 l1!3136))))) b!1474667))

(declare-fun b!1474670 () Bool)

(declare-fun e!942057 () Bool)

(assert (=> b!1474670 (= e!942057 true)))

(declare-fun b!1474669 () Bool)

(declare-fun e!942056 () Bool)

(assert (=> b!1474669 (= e!942056 e!942057)))

(declare-fun b!1474668 () Bool)

(declare-fun e!942055 () Bool)

(assert (=> b!1474668 (= e!942055 e!942056)))

(assert (=> b!1473589 e!942055))

(assert (= b!1474669 b!1474670))

(assert (= b!1474668 b!1474669))

(assert (= (and b!1473589 ((_ is Cons!15508) (t!136019 rules!4290))) b!1474668))

(assert (=> b!1474670 (< (dynLambda!7035 order!9307 (toValue!4088 (transformation!2761 (h!20909 (t!136019 rules!4290))))) (dynLambda!7036 order!9309 lambda!63542))))

(assert (=> b!1474670 (< (dynLambda!7037 order!9311 (toChars!3947 (transformation!2761 (h!20909 (t!136019 rules!4290))))) (dynLambda!7036 order!9309 lambda!63542))))

(declare-fun e!942058 () Bool)

(assert (=> b!1473929 (= tp!416687 e!942058)))

(declare-fun b!1474672 () Bool)

(declare-fun tp!416956 () Bool)

(declare-fun tp!416959 () Bool)

(assert (=> b!1474672 (= e!942058 (and tp!416956 tp!416959))))

(declare-fun b!1474673 () Bool)

(declare-fun tp!416960 () Bool)

(assert (=> b!1474673 (= e!942058 tp!416960)))

(declare-fun b!1474674 () Bool)

(declare-fun tp!416958 () Bool)

(declare-fun tp!416957 () Bool)

(assert (=> b!1474674 (= e!942058 (and tp!416958 tp!416957))))

(declare-fun b!1474671 () Bool)

(assert (=> b!1474671 (= e!942058 tp_is_empty!6935)))

(assert (= (and b!1473929 ((_ is ElementMatch!4075) (reg!4404 (regex!2761 (rule!4538 (h!20910 l2!3105)))))) b!1474671))

(assert (= (and b!1473929 ((_ is Concat!6926) (reg!4404 (regex!2761 (rule!4538 (h!20910 l2!3105)))))) b!1474672))

(assert (= (and b!1473929 ((_ is Star!4075) (reg!4404 (regex!2761 (rule!4538 (h!20910 l2!3105)))))) b!1474673))

(assert (= (and b!1473929 ((_ is Union!4075) (reg!4404 (regex!2761 (rule!4538 (h!20910 l2!3105)))))) b!1474674))

(declare-fun e!942059 () Bool)

(assert (=> b!1473967 (= tp!416726 e!942059)))

(declare-fun b!1474676 () Bool)

(declare-fun tp!416961 () Bool)

(declare-fun tp!416964 () Bool)

(assert (=> b!1474676 (= e!942059 (and tp!416961 tp!416964))))

(declare-fun b!1474677 () Bool)

(declare-fun tp!416965 () Bool)

(assert (=> b!1474677 (= e!942059 tp!416965)))

(declare-fun b!1474678 () Bool)

(declare-fun tp!416963 () Bool)

(declare-fun tp!416962 () Bool)

(assert (=> b!1474678 (= e!942059 (and tp!416963 tp!416962))))

(declare-fun b!1474675 () Bool)

(assert (=> b!1474675 (= e!942059 tp_is_empty!6935)))

(assert (= (and b!1473967 ((_ is ElementMatch!4075) (regex!2761 (rule!4538 (h!20910 (t!136020 l1!3136)))))) b!1474675))

(assert (= (and b!1473967 ((_ is Concat!6926) (regex!2761 (rule!4538 (h!20910 (t!136020 l1!3136)))))) b!1474676))

(assert (= (and b!1473967 ((_ is Star!4075) (regex!2761 (rule!4538 (h!20910 (t!136020 l1!3136)))))) b!1474677))

(assert (= (and b!1473967 ((_ is Union!4075) (regex!2761 (rule!4538 (h!20910 (t!136020 l1!3136)))))) b!1474678))

(declare-fun e!942060 () Bool)

(assert (=> b!1473930 (= tp!416685 e!942060)))

(declare-fun b!1474680 () Bool)

(declare-fun tp!416966 () Bool)

(declare-fun tp!416969 () Bool)

(assert (=> b!1474680 (= e!942060 (and tp!416966 tp!416969))))

(declare-fun b!1474681 () Bool)

(declare-fun tp!416970 () Bool)

(assert (=> b!1474681 (= e!942060 tp!416970)))

(declare-fun b!1474682 () Bool)

(declare-fun tp!416968 () Bool)

(declare-fun tp!416967 () Bool)

(assert (=> b!1474682 (= e!942060 (and tp!416968 tp!416967))))

(declare-fun b!1474679 () Bool)

(assert (=> b!1474679 (= e!942060 tp_is_empty!6935)))

(assert (= (and b!1473930 ((_ is ElementMatch!4075) (regOne!8663 (regex!2761 (rule!4538 (h!20910 l2!3105)))))) b!1474679))

(assert (= (and b!1473930 ((_ is Concat!6926) (regOne!8663 (regex!2761 (rule!4538 (h!20910 l2!3105)))))) b!1474680))

(assert (= (and b!1473930 ((_ is Star!4075) (regOne!8663 (regex!2761 (rule!4538 (h!20910 l2!3105)))))) b!1474681))

(assert (= (and b!1473930 ((_ is Union!4075) (regOne!8663 (regex!2761 (rule!4538 (h!20910 l2!3105)))))) b!1474682))

(declare-fun e!942061 () Bool)

(assert (=> b!1473930 (= tp!416684 e!942061)))

(declare-fun b!1474684 () Bool)

(declare-fun tp!416971 () Bool)

(declare-fun tp!416974 () Bool)

(assert (=> b!1474684 (= e!942061 (and tp!416971 tp!416974))))

(declare-fun b!1474685 () Bool)

(declare-fun tp!416975 () Bool)

(assert (=> b!1474685 (= e!942061 tp!416975)))

(declare-fun b!1474686 () Bool)

(declare-fun tp!416973 () Bool)

(declare-fun tp!416972 () Bool)

(assert (=> b!1474686 (= e!942061 (and tp!416973 tp!416972))))

(declare-fun b!1474683 () Bool)

(assert (=> b!1474683 (= e!942061 tp_is_empty!6935)))

(assert (= (and b!1473930 ((_ is ElementMatch!4075) (regTwo!8663 (regex!2761 (rule!4538 (h!20910 l2!3105)))))) b!1474683))

(assert (= (and b!1473930 ((_ is Concat!6926) (regTwo!8663 (regex!2761 (rule!4538 (h!20910 l2!3105)))))) b!1474684))

(assert (= (and b!1473930 ((_ is Star!4075) (regTwo!8663 (regex!2761 (rule!4538 (h!20910 l2!3105)))))) b!1474685))

(assert (= (and b!1473930 ((_ is Union!4075) (regTwo!8663 (regex!2761 (rule!4538 (h!20910 l2!3105)))))) b!1474686))

(declare-fun b!1474687 () Bool)

(declare-fun e!942062 () Bool)

(declare-fun tp!416976 () Bool)

(assert (=> b!1474687 (= e!942062 (and tp_is_empty!6935 tp!416976))))

(assert (=> b!1473969 (= tp!416728 e!942062)))

(assert (= (and b!1473969 ((_ is Cons!15507) (t!136018 (originalCharacters!3623 (h!20910 l1!3136))))) b!1474687))

(declare-fun b!1474688 () Bool)

(declare-fun e!942063 () Bool)

(declare-fun tp!416977 () Bool)

(assert (=> b!1474688 (= e!942063 (and tp_is_empty!6935 tp!416977))))

(assert (=> b!1473949 (= tp!416705 e!942063)))

(assert (= (and b!1473949 ((_ is Cons!15507) (t!136018 (originalCharacters!3623 (h!20910 l2!3105))))) b!1474688))

(declare-fun b!1474691 () Bool)

(declare-fun e!942066 () Bool)

(assert (=> b!1474691 (= e!942066 true)))

(declare-fun b!1474690 () Bool)

(declare-fun e!942065 () Bool)

(assert (=> b!1474690 (= e!942065 e!942066)))

(declare-fun b!1474689 () Bool)

(declare-fun e!942064 () Bool)

(assert (=> b!1474689 (= e!942064 e!942065)))

(assert (=> b!1473884 e!942064))

(assert (= b!1474690 b!1474691))

(assert (= b!1474689 b!1474690))

(assert (= (and b!1473884 ((_ is Cons!15508) (t!136019 rules!4290))) b!1474689))

(assert (=> b!1474691 (< (dynLambda!7035 order!9307 (toValue!4088 (transformation!2761 (h!20909 (t!136019 rules!4290))))) (dynLambda!7036 order!9309 lambda!63563))))

(assert (=> b!1474691 (< (dynLambda!7037 order!9311 (toChars!3947 (transformation!2761 (h!20909 (t!136019 rules!4290))))) (dynLambda!7036 order!9309 lambda!63563))))

(declare-fun b!1474694 () Bool)

(declare-fun e!942069 () Bool)

(assert (=> b!1474694 (= e!942069 true)))

(declare-fun b!1474693 () Bool)

(declare-fun e!942068 () Bool)

(assert (=> b!1474693 (= e!942068 e!942069)))

(declare-fun b!1474692 () Bool)

(declare-fun e!942067 () Bool)

(assert (=> b!1474692 (= e!942067 e!942068)))

(assert (=> b!1473873 e!942067))

(assert (= b!1474693 b!1474694))

(assert (= b!1474692 b!1474693))

(assert (= (and b!1473873 ((_ is Cons!15508) (t!136019 rules!4290))) b!1474692))

(assert (=> b!1474694 (< (dynLambda!7035 order!9307 (toValue!4088 (transformation!2761 (h!20909 (t!136019 rules!4290))))) (dynLambda!7036 order!9309 lambda!63562))))

(assert (=> b!1474694 (< (dynLambda!7037 order!9311 (toChars!3947 (transformation!2761 (h!20909 (t!136019 rules!4290))))) (dynLambda!7036 order!9309 lambda!63562))))

(declare-fun b!1474697 () Bool)

(declare-fun e!942072 () Bool)

(assert (=> b!1474697 (= e!942072 true)))

(declare-fun b!1474696 () Bool)

(declare-fun e!942071 () Bool)

(assert (=> b!1474696 (= e!942071 e!942072)))

(declare-fun b!1474695 () Bool)

(declare-fun e!942070 () Bool)

(assert (=> b!1474695 (= e!942070 e!942071)))

(assert (=> b!1473695 e!942070))

(assert (= b!1474696 b!1474697))

(assert (= b!1474695 b!1474696))

(assert (= (and b!1473695 ((_ is Cons!15508) (t!136019 rules!4290))) b!1474695))

(assert (=> b!1474697 (< (dynLambda!7035 order!9307 (toValue!4088 (transformation!2761 (h!20909 (t!136019 rules!4290))))) (dynLambda!7036 order!9309 lambda!63553))))

(assert (=> b!1474697 (< (dynLambda!7037 order!9311 (toChars!3947 (transformation!2761 (h!20909 (t!136019 rules!4290))))) (dynLambda!7036 order!9309 lambda!63553))))

(declare-fun b!1474701 () Bool)

(declare-fun b_free!37559 () Bool)

(declare-fun b_next!38263 () Bool)

(assert (=> b!1474701 (= b_free!37559 (not b_next!38263))))

(declare-fun tp!416982 () Bool)

(declare-fun b_and!101653 () Bool)

(assert (=> b!1474701 (= tp!416982 b_and!101653)))

(declare-fun b_free!37561 () Bool)

(declare-fun b_next!38265 () Bool)

(assert (=> b!1474701 (= b_free!37561 (not b_next!38265))))

(declare-fun t!136352 () Bool)

(declare-fun tb!83891 () Bool)

(assert (=> (and b!1474701 (= (toChars!3947 (transformation!2761 (rule!4538 (h!20910 (t!136020 (t!136020 l1!3136)))))) (toChars!3947 (transformation!2761 (rule!4538 (h!20910 (t!136020 l2!3105)))))) t!136352) tb!83891))

(declare-fun result!100820 () Bool)

(assert (= result!100820 result!100642))

(assert (=> d!432488 t!136352))

(declare-fun t!136354 () Bool)

(declare-fun tb!83893 () Bool)

(assert (=> (and b!1474701 (= (toChars!3947 (transformation!2761 (rule!4538 (h!20910 (t!136020 (t!136020 l1!3136)))))) (toChars!3947 (transformation!2761 (rule!4538 (h!20910 (t!136020 l1!3136)))))) t!136354) tb!83893))

(declare-fun result!100822 () Bool)

(assert (= result!100822 result!100678))

(assert (=> b!1474309 t!136354))

(declare-fun t!136356 () Bool)

(declare-fun tb!83895 () Bool)

(assert (=> (and b!1474701 (= (toChars!3947 (transformation!2761 (rule!4538 (h!20910 (t!136020 (t!136020 l1!3136)))))) (toChars!3947 (transformation!2761 (rule!4538 (h!20910 (t!136020 (t!136020 l1!3136))))))) t!136356) tb!83895))

(declare-fun result!100824 () Bool)

(assert (= result!100824 result!100702))

(assert (=> d!432394 t!136356))

(declare-fun tb!83897 () Bool)

(declare-fun t!136358 () Bool)

(assert (=> (and b!1474701 (= (toChars!3947 (transformation!2761 (rule!4538 (h!20910 (t!136020 (t!136020 l1!3136)))))) (toChars!3947 (transformation!2761 (rule!4538 lt!512076)))) t!136358) tb!83897))

(declare-fun result!100826 () Bool)

(assert (= result!100826 result!100654))

(assert (=> d!432286 t!136358))

(declare-fun tb!83899 () Bool)

(declare-fun t!136360 () Bool)

(assert (=> (and b!1474701 (= (toChars!3947 (transformation!2761 (rule!4538 (h!20910 (t!136020 (t!136020 l1!3136)))))) (toChars!3947 (transformation!2761 (rule!4538 lt!512074)))) t!136360) tb!83899))

(declare-fun result!100828 () Bool)

(assert (= result!100828 result!100570))

(assert (=> d!432036 t!136360))

(declare-fun t!136362 () Bool)

(declare-fun tb!83901 () Bool)

(assert (=> (and b!1474701 (= (toChars!3947 (transformation!2761 (rule!4538 (h!20910 (t!136020 (t!136020 l1!3136)))))) (toChars!3947 (transformation!2761 (rule!4538 (h!20910 l2!3105))))) t!136362) tb!83901))

(declare-fun result!100830 () Bool)

(assert (= result!100830 result!100490))

(assert (=> b!1473702 t!136362))

(declare-fun tb!83903 () Bool)

(declare-fun t!136364 () Bool)

(assert (=> (and b!1474701 (= (toChars!3947 (transformation!2761 (rule!4538 (h!20910 (t!136020 (t!136020 l1!3136)))))) (toChars!3947 (transformation!2761 (rule!4538 (h!20910 (t!136020 lt!512070)))))) t!136364) tb!83903))

(declare-fun result!100832 () Bool)

(assert (= result!100832 result!100666))

(assert (=> d!432308 t!136364))

(declare-fun t!136366 () Bool)

(declare-fun tb!83905 () Bool)

(assert (=> (and b!1474701 (= (toChars!3947 (transformation!2761 (rule!4538 (h!20910 (t!136020 (t!136020 l1!3136)))))) (toChars!3947 (transformation!2761 (rule!4538 (h!20910 l1!3136))))) t!136366) tb!83905))

(declare-fun result!100834 () Bool)

(assert (= result!100834 result!100532))

(assert (=> b!1473905 t!136366))

(declare-fun t!136368 () Bool)

(declare-fun tb!83907 () Bool)

(assert (=> (and b!1474701 (= (toChars!3947 (transformation!2761 (rule!4538 (h!20910 (t!136020 (t!136020 l1!3136)))))) (toChars!3947 (transformation!2761 (rule!4538 lt!512069)))) t!136368) tb!83907))

(declare-fun result!100836 () Bool)

(assert (= result!100836 result!100582))

(assert (=> d!432038 t!136368))

(assert (=> d!432520 t!136354))

(assert (=> b!1474263 t!136352))

(declare-fun b_and!101655 () Bool)

(declare-fun tp!416980 () Bool)

(assert (=> b!1474701 (= tp!416980 (and (=> t!136360 result!100828) (=> t!136358 result!100826) (=> t!136364 result!100832) (=> t!136366 result!100834) (=> t!136354 result!100822) (=> t!136368 result!100836) (=> t!136352 result!100820) (=> t!136362 result!100830) (=> t!136356 result!100824) b_and!101655))))

(declare-fun tp!416981 () Bool)

(declare-fun e!942074 () Bool)

(declare-fun b!1474700 () Bool)

(declare-fun e!942076 () Bool)

(assert (=> b!1474700 (= e!942076 (and tp!416981 (inv!20711 (tag!3025 (rule!4538 (h!20910 (t!136020 (t!136020 l1!3136)))))) (inv!20715 (transformation!2761 (rule!4538 (h!20910 (t!136020 (t!136020 l1!3136)))))) e!942074))))

(declare-fun e!942075 () Bool)

(declare-fun tp!416978 () Bool)

(declare-fun e!942073 () Bool)

(declare-fun b!1474698 () Bool)

(assert (=> b!1474698 (= e!942075 (and (inv!20714 (h!20910 (t!136020 (t!136020 l1!3136)))) e!942073 tp!416978))))

(assert (=> b!1473965 (= tp!416723 e!942075)))

(assert (=> b!1474701 (= e!942074 (and tp!416982 tp!416980))))

(declare-fun b!1474699 () Bool)

(declare-fun tp!416979 () Bool)

(assert (=> b!1474699 (= e!942073 (and (inv!21 (value!88336 (h!20910 (t!136020 (t!136020 l1!3136))))) e!942076 tp!416979))))

(assert (= b!1474700 b!1474701))

(assert (= b!1474699 b!1474700))

(assert (= b!1474698 b!1474699))

(assert (= (and b!1473965 ((_ is Cons!15509) (t!136020 (t!136020 l1!3136)))) b!1474698))

(declare-fun m!1719893 () Bool)

(assert (=> b!1474700 m!1719893))

(declare-fun m!1719895 () Bool)

(assert (=> b!1474700 m!1719895))

(declare-fun m!1719897 () Bool)

(assert (=> b!1474698 m!1719897))

(declare-fun m!1719899 () Bool)

(assert (=> b!1474699 m!1719899))

(declare-fun b_lambda!46101 () Bool)

(assert (= b_lambda!46097 (or d!431952 b_lambda!46101)))

(declare-fun bs!345497 () Bool)

(declare-fun d!432566 () Bool)

(assert (= bs!345497 (and d!432566 d!431952)))

(assert (=> bs!345497 (= (dynLambda!7042 lambda!63562 (h!20910 l1!3136)) (rulesProduceIndividualToken!1276 thiss!27374 rules!4290 (h!20910 l1!3136)))))

(assert (=> bs!345497 m!1718013))

(assert (=> b!1474533 d!432566))

(declare-fun b_lambda!46103 () Bool)

(assert (= b_lambda!46099 (or (and b!1474658 b_free!37557 (= (toChars!3947 (transformation!2761 (rule!4538 (h!20910 (t!136020 (t!136020 l2!3105)))))) (toChars!3947 (transformation!2761 (rule!4538 (h!20910 (t!136020 l1!3136))))))) (and b!1473960 b_free!37533 (= (toChars!3947 (transformation!2761 (h!20909 (t!136019 rules!4290)))) (toChars!3947 (transformation!2761 (rule!4538 (h!20910 (t!136020 l1!3136))))))) (and b!1473535 b_free!37505 (= (toChars!3947 (transformation!2761 (rule!4538 (h!20910 l2!3105)))) (toChars!3947 (transformation!2761 (rule!4538 (h!20910 (t!136020 l1!3136))))))) (and b!1473548 b_free!37509 (= (toChars!3947 (transformation!2761 (h!20909 rules!4290))) (toChars!3947 (transformation!2761 (rule!4538 (h!20910 (t!136020 l1!3136))))))) (and b!1473944 b_free!37529 (= (toChars!3947 (transformation!2761 (rule!4538 (h!20910 (t!136020 l2!3105))))) (toChars!3947 (transformation!2761 (rule!4538 (h!20910 (t!136020 l1!3136))))))) (and b!1473968 b_free!37537) (and b!1473555 b_free!37513 (= (toChars!3947 (transformation!2761 (rule!4538 (h!20910 l1!3136)))) (toChars!3947 (transformation!2761 (rule!4538 (h!20910 (t!136020 l1!3136))))))) (and b!1474586 b_free!37553 (= (toChars!3947 (transformation!2761 (h!20909 (t!136019 (t!136019 rules!4290))))) (toChars!3947 (transformation!2761 (rule!4538 (h!20910 (t!136020 l1!3136))))))) (and b!1474701 b_free!37561 (= (toChars!3947 (transformation!2761 (rule!4538 (h!20910 (t!136020 (t!136020 l1!3136)))))) (toChars!3947 (transformation!2761 (rule!4538 (h!20910 (t!136020 l1!3136))))))) b_lambda!46103)))

(declare-fun b_lambda!46105 () Bool)

(assert (= b_lambda!46061 (or (and b!1473548 b_free!37509 (= (toChars!3947 (transformation!2761 (h!20909 rules!4290))) (toChars!3947 (transformation!2761 (rule!4538 (h!20910 (t!136020 (t!136020 l1!3136)))))))) (and b!1473968 b_free!37537 (= (toChars!3947 (transformation!2761 (rule!4538 (h!20910 (t!136020 l1!3136))))) (toChars!3947 (transformation!2761 (rule!4538 (h!20910 (t!136020 (t!136020 l1!3136)))))))) (and b!1473960 b_free!37533 (= (toChars!3947 (transformation!2761 (h!20909 (t!136019 rules!4290)))) (toChars!3947 (transformation!2761 (rule!4538 (h!20910 (t!136020 (t!136020 l1!3136)))))))) (and b!1474658 b_free!37557 (= (toChars!3947 (transformation!2761 (rule!4538 (h!20910 (t!136020 (t!136020 l2!3105)))))) (toChars!3947 (transformation!2761 (rule!4538 (h!20910 (t!136020 (t!136020 l1!3136)))))))) (and b!1473944 b_free!37529 (= (toChars!3947 (transformation!2761 (rule!4538 (h!20910 (t!136020 l2!3105))))) (toChars!3947 (transformation!2761 (rule!4538 (h!20910 (t!136020 (t!136020 l1!3136)))))))) (and b!1473535 b_free!37505 (= (toChars!3947 (transformation!2761 (rule!4538 (h!20910 l2!3105)))) (toChars!3947 (transformation!2761 (rule!4538 (h!20910 (t!136020 (t!136020 l1!3136)))))))) (and b!1474701 b_free!37561) (and b!1474586 b_free!37553 (= (toChars!3947 (transformation!2761 (h!20909 (t!136019 (t!136019 rules!4290))))) (toChars!3947 (transformation!2761 (rule!4538 (h!20910 (t!136020 (t!136020 l1!3136)))))))) (and b!1473555 b_free!37513 (= (toChars!3947 (transformation!2761 (rule!4538 (h!20910 l1!3136)))) (toChars!3947 (transformation!2761 (rule!4538 (h!20910 (t!136020 (t!136020 l1!3136)))))))) b_lambda!46105)))

(declare-fun b_lambda!46107 () Bool)

(assert (= b_lambda!46095 (or (and b!1473944 b_free!37529) (and b!1473960 b_free!37533 (= (toChars!3947 (transformation!2761 (h!20909 (t!136019 rules!4290)))) (toChars!3947 (transformation!2761 (rule!4538 (h!20910 (t!136020 l2!3105))))))) (and b!1474586 b_free!37553 (= (toChars!3947 (transformation!2761 (h!20909 (t!136019 (t!136019 rules!4290))))) (toChars!3947 (transformation!2761 (rule!4538 (h!20910 (t!136020 l2!3105))))))) (and b!1473968 b_free!37537 (= (toChars!3947 (transformation!2761 (rule!4538 (h!20910 (t!136020 l1!3136))))) (toChars!3947 (transformation!2761 (rule!4538 (h!20910 (t!136020 l2!3105))))))) (and b!1474701 b_free!37561 (= (toChars!3947 (transformation!2761 (rule!4538 (h!20910 (t!136020 (t!136020 l1!3136)))))) (toChars!3947 (transformation!2761 (rule!4538 (h!20910 (t!136020 l2!3105))))))) (and b!1473548 b_free!37509 (= (toChars!3947 (transformation!2761 (h!20909 rules!4290))) (toChars!3947 (transformation!2761 (rule!4538 (h!20910 (t!136020 l2!3105))))))) (and b!1473535 b_free!37505 (= (toChars!3947 (transformation!2761 (rule!4538 (h!20910 l2!3105)))) (toChars!3947 (transformation!2761 (rule!4538 (h!20910 (t!136020 l2!3105))))))) (and b!1474658 b_free!37557 (= (toChars!3947 (transformation!2761 (rule!4538 (h!20910 (t!136020 (t!136020 l2!3105)))))) (toChars!3947 (transformation!2761 (rule!4538 (h!20910 (t!136020 l2!3105))))))) (and b!1473555 b_free!37513 (= (toChars!3947 (transformation!2761 (rule!4538 (h!20910 l1!3136)))) (toChars!3947 (transformation!2761 (rule!4538 (h!20910 (t!136020 l2!3105))))))) b_lambda!46107)))

(declare-fun b_lambda!46109 () Bool)

(assert (= b_lambda!46035 (or d!431852 b_lambda!46109)))

(declare-fun bs!345498 () Bool)

(declare-fun d!432568 () Bool)

(assert (= bs!345498 (and d!432568 d!431852)))

(assert (=> bs!345498 (= (dynLambda!7042 lambda!63546 (h!20910 lt!512073)) (rulesProduceIndividualToken!1276 thiss!27374 rules!4290 (h!20910 lt!512073)))))

(assert (=> bs!345498 m!1717679))

(assert (=> b!1474181 d!432568))

(declare-fun b_lambda!46111 () Bool)

(assert (= b_lambda!46055 (or d!431856 b_lambda!46111)))

(declare-fun bs!345499 () Bool)

(declare-fun d!432570 () Bool)

(assert (= bs!345499 (and d!432570 d!431856)))

(assert (=> bs!345499 (= (dynLambda!7042 lambda!63547 (h!20910 lt!512070)) (rulesProduceIndividualToken!1276 thiss!27374 rules!4290 (h!20910 lt!512070)))))

(assert (=> bs!345499 m!1717693))

(assert (=> b!1474303 d!432570))

(declare-fun b_lambda!46113 () Bool)

(assert (= b_lambda!46057 (or (and b!1474658 b_free!37557 (= (toChars!3947 (transformation!2761 (rule!4538 (h!20910 (t!136020 (t!136020 l2!3105)))))) (toChars!3947 (transformation!2761 (rule!4538 (h!20910 (t!136020 l1!3136))))))) (and b!1473960 b_free!37533 (= (toChars!3947 (transformation!2761 (h!20909 (t!136019 rules!4290)))) (toChars!3947 (transformation!2761 (rule!4538 (h!20910 (t!136020 l1!3136))))))) (and b!1473535 b_free!37505 (= (toChars!3947 (transformation!2761 (rule!4538 (h!20910 l2!3105)))) (toChars!3947 (transformation!2761 (rule!4538 (h!20910 (t!136020 l1!3136))))))) (and b!1473548 b_free!37509 (= (toChars!3947 (transformation!2761 (h!20909 rules!4290))) (toChars!3947 (transformation!2761 (rule!4538 (h!20910 (t!136020 l1!3136))))))) (and b!1473944 b_free!37529 (= (toChars!3947 (transformation!2761 (rule!4538 (h!20910 (t!136020 l2!3105))))) (toChars!3947 (transformation!2761 (rule!4538 (h!20910 (t!136020 l1!3136))))))) (and b!1473968 b_free!37537) (and b!1473555 b_free!37513 (= (toChars!3947 (transformation!2761 (rule!4538 (h!20910 l1!3136)))) (toChars!3947 (transformation!2761 (rule!4538 (h!20910 (t!136020 l1!3136))))))) (and b!1474586 b_free!37553 (= (toChars!3947 (transformation!2761 (h!20909 (t!136019 (t!136019 rules!4290))))) (toChars!3947 (transformation!2761 (rule!4538 (h!20910 (t!136020 l1!3136))))))) (and b!1474701 b_free!37561 (= (toChars!3947 (transformation!2761 (rule!4538 (h!20910 (t!136020 (t!136020 l1!3136)))))) (toChars!3947 (transformation!2761 (rule!4538 (h!20910 (t!136020 l1!3136))))))) b_lambda!46113)))

(declare-fun b_lambda!46115 () Bool)

(assert (= b_lambda!46093 (or d!431904 b_lambda!46115)))

(declare-fun bs!345500 () Bool)

(declare-fun d!432572 () Bool)

(assert (= bs!345500 (and d!432572 d!431904)))

(assert (=> bs!345500 (= (dynLambda!7042 lambda!63553 (h!20910 (list!6180 (seqFromList!1726 lt!512073)))) (rulesProduceIndividualToken!1276 thiss!27374 rules!4290 (h!20910 (list!6180 (seqFromList!1726 lt!512073)))))))

(assert (=> bs!345500 m!1718761))

(assert (=> b!1474515 d!432572))

(declare-fun b_lambda!46117 () Bool)

(assert (= b_lambda!46047 (or (and b!1473944 b_free!37529) (and b!1473960 b_free!37533 (= (toChars!3947 (transformation!2761 (h!20909 (t!136019 rules!4290)))) (toChars!3947 (transformation!2761 (rule!4538 (h!20910 (t!136020 l2!3105))))))) (and b!1474586 b_free!37553 (= (toChars!3947 (transformation!2761 (h!20909 (t!136019 (t!136019 rules!4290))))) (toChars!3947 (transformation!2761 (rule!4538 (h!20910 (t!136020 l2!3105))))))) (and b!1473968 b_free!37537 (= (toChars!3947 (transformation!2761 (rule!4538 (h!20910 (t!136020 l1!3136))))) (toChars!3947 (transformation!2761 (rule!4538 (h!20910 (t!136020 l2!3105))))))) (and b!1474701 b_free!37561 (= (toChars!3947 (transformation!2761 (rule!4538 (h!20910 (t!136020 (t!136020 l1!3136)))))) (toChars!3947 (transformation!2761 (rule!4538 (h!20910 (t!136020 l2!3105))))))) (and b!1473548 b_free!37509 (= (toChars!3947 (transformation!2761 (h!20909 rules!4290))) (toChars!3947 (transformation!2761 (rule!4538 (h!20910 (t!136020 l2!3105))))))) (and b!1473535 b_free!37505 (= (toChars!3947 (transformation!2761 (rule!4538 (h!20910 l2!3105)))) (toChars!3947 (transformation!2761 (rule!4538 (h!20910 (t!136020 l2!3105))))))) (and b!1474658 b_free!37557 (= (toChars!3947 (transformation!2761 (rule!4538 (h!20910 (t!136020 (t!136020 l2!3105)))))) (toChars!3947 (transformation!2761 (rule!4538 (h!20910 (t!136020 l2!3105))))))) (and b!1473555 b_free!37513 (= (toChars!3947 (transformation!2761 (rule!4538 (h!20910 l1!3136)))) (toChars!3947 (transformation!2761 (rule!4538 (h!20910 (t!136020 l2!3105))))))) b_lambda!46117)))

(declare-fun b_lambda!46119 () Bool)

(assert (= b_lambda!46053 (or d!431830 b_lambda!46119)))

(declare-fun bs!345501 () Bool)

(declare-fun d!432574 () Bool)

(assert (= bs!345501 (and d!432574 d!431830)))

(assert (=> bs!345501 (= (dynLambda!7042 lambda!63542 (h!20910 l2!3105)) (rulesProduceIndividualToken!1276 thiss!27374 rules!4290 (h!20910 l2!3105)))))

(assert (=> bs!345501 m!1717641))

(assert (=> b!1474288 d!432574))

(declare-fun b_lambda!46121 () Bool)

(assert (= b_lambda!46039 (or d!431958 b_lambda!46121)))

(declare-fun bs!345502 () Bool)

(declare-fun d!432576 () Bool)

(assert (= bs!345502 (and d!432576 d!431958)))

(assert (=> bs!345502 (= (dynLambda!7042 lambda!63563 (h!20910 (t!136020 l1!3136))) (rulesProduceIndividualToken!1276 thiss!27374 rules!4290 (h!20910 (t!136020 l1!3136))))))

(assert (=> bs!345502 m!1718031))

(assert (=> b!1474220 d!432576))

(check-sat b_and!101361 (not b!1474588) (not d!432488) (not b!1474298) (not d!432082) (not d!432052) (not d!432316) (not b!1474321) (not d!432072) (not b!1474337) (not b!1474534) (not b!1474547) (not b!1474568) (not b!1474174) (not b!1474338) (not b!1474516) (not b!1474583) (not d!432210) (not b!1474319) b_and!101651 (not d!432330) (not b!1474677) (not b!1474699) (not b_next!38261) (not b!1474597) (not b!1474265) (not b!1474035) tp_is_empty!6935 (not b!1474235) (not b!1474616) (not d!432320) (not b!1474538) (not b!1474646) b_and!101413 (not d!432084) b_and!101635 (not b!1474522) (not d!432046) (not b!1474553) (not d!432536) (not b!1474540) (not d!432362) (not b!1474661) (not b!1474688) (not b_lambda!46051) (not b!1474273) (not d!432492) (not b!1474284) (not d!432486) (not d!432290) (not d!432280) (not d!432498) (not b!1474657) (not b!1474655) (not b!1474175) (not d!432228) (not b!1474170) (not tb!83741) (not d!432312) (not b!1474637) (not d!432224) (not b!1474662) (not d!432038) (not b!1474634) b_and!101357 (not d!432204) (not b!1474185) (not b!1474578) (not b!1474638) (not b!1474590) (not b!1474660) (not d!432302) (not b_lambda!46021) (not d!432482) (not b!1474233) (not b!1474237) (not d!432234) (not b!1474680) (not d!432496) b_and!101633 b_and!101639 (not b!1474289) (not d!432530) (not b!1474014) (not d!432208) (not d!432336) b_and!101647 (not b!1474682) (not d!432216) (not b!1474275) (not b!1474648) (not b!1474002) (not b_lambda!46017) (not b_lambda!46109) (not b!1474649) (not b_lambda!46101) (not b_next!38233) (not d!432284) (not b!1474190) (not d!432282) (not bs!345502) (not b!1474227) (not bs!345498) (not b!1474225) (not b!1474639) (not d!432242) (not b!1474339) (not b!1474523) (not d!432214) (not b!1474626) (not b!1474598) (not d!432542) (not d!432480) (not b!1474334) (not b!1474672) (not b!1474552) (not b!1474528) (not b!1474584) b_and!101645 b_and!101641 (not b!1474029) (not b_lambda!46121) (not b!1474333) (not b!1474689) (not b!1474224) (not b!1474686) (not b!1474274) (not b!1474653) (not b!1474619) (not d!432276) (not d!432296) (not b!1474650) (not b!1474632) (not b!1474676) (not b_next!38215) (not b!1474176) (not b!1474542) (not d!432348) (not d!432074) (not b!1474692) (not b!1474545) (not d!432512) b_and!101653 (not d!432170) (not b_lambda!46015) (not d!432040) (not d!432538) (not b_next!38231) (not d!432528) (not b!1474310) (not d!432230) (not b!1474612) (not b!1474189) (not b!1474617) (not b!1474049) (not d!432494) (not d!432476) (not b!1474527) b_and!101655 (not d!432518) (not b!1474263) (not d!432314) b_and!101405 (not b!1474283) (not b!1474168) (not b!1474306) (not b!1474543) (not b!1474635) (not b!1474667) (not d!432278) (not b!1474329) (not b!1474574) (not b!1474526) (not d!432294) (not d!432484) (not b!1474324) (not b!1474695) (not b!1474182) (not d!432558) (not d!432070) (not d!432042) (not b_next!38265) (not b!1474532) (not tb!83729) (not d!432522) (not b!1474624) (not b_lambda!46105) (not b!1474549) (not b!1474636) (not tb!83645) (not b!1474036) (not d!432562) (not b_next!38257) (not b!1474264) (not b!1474015) (not b!1474609) (not b!1474167) (not d!432182) (not b!1474221) (not b!1474266) (not b!1474685) (not b!1474684) (not b!1474582) (not b!1474328) (not b!1474572) (not b!1474656) (not b_lambda!46117) (not b!1474047) (not b!1474307) (not d!432560) (not b!1474581) (not b!1474183) (not b_next!38255) (not d!432176) (not b!1474531) (not b!1474562) (not b!1474024) (not b!1474212) (not d!432306) (not b!1474570) (not b!1474535) (not d!432510) (not b!1474219) (not b!1474589) (not b!1474607) (not b!1474267) b_and!101409 (not b!1474188) (not b_next!38263) (not d!432080) (not bs!345497) (not b_lambda!46023) (not d!432286) (not b!1474013) (not b!1474608) (not b!1474537) (not b!1474330) (not b!1474335) (not b!1474594) (not b!1474218) (not b!1474630) (not b!1474666) b_and!101365 (not d!432392) (not b!1474304) (not b!1474557) (not b!1474215) (not d!432500) (not b!1474698) (not b!1474217) (not b!1474625) (not b!1474621) (not b!1474292) (not b!1474558) (not b!1474640) (not b_lambda!46115) (not b_lambda!46049) (not b!1474045) (not b!1474645) (not b!1474524) (not b!1474576) (not b!1474213) (not b!1474278) (not b!1474687) (not d!432298) (not b_next!38241) (not b!1474596) (not tb!83753) (not d!432370) (not d!432288) b_and!101649 (not b!1474556) (not d!432218) (not b!1474184) (not tb!83657) (not d!432178) (not b!1474631) (not b_next!38213) (not d!432520) (not b!1474348) (not b!1474592) (not d!432310) (not b!1474222) (not b!1474300) (not d!432508) (not bs!345501) (not b!1474223) (not b!1474309) (not b!1474282) (not d!432226) (not b_lambda!46103) (not b!1474291) (not b_lambda!46119) (not d!432384) (not d!432212) (not b!1474281) (not b!1474268) (not d!432396) (not d!432338) (not b!1473907) (not b!1474046) (not b!1474544) (not d!432490) (not b!1474169) (not b!1474276) (not bs!345499) (not b!1474644) (not b!1474623) (not b!1473708) (not b!1474043) (not b!1474674) b_and!101637 (not b!1474028) (not d!432540) (not b!1474012) (not d!432066) (not d!432206) (not d!432180) (not b!1474277) (not tb!83717) (not d!432378) (not b_next!38217) (not d!432304) (not d!432556) (not tb!83777) (not b_lambda!46113) (not b_next!38211) (not b_lambda!46111) (not b!1474681) (not d!432352) (not b!1474280) (not b!1474700) (not b_next!38209) (not d!432564) (not d!432308) (not d!432062) (not b!1474302) (not b!1474620) (not b!1474214) (not b!1474593) (not d!432300) (not d!432274) (not bs!345500) (not b!1474279) (not d!432076) (not b!1474027) (not d!432514) (not d!432036) (not b!1474312) (not b!1474652) (not d!432054) (not b!1474654) (not b!1474664) (not b!1474613) (not b!1474678) (not b_next!38259) (not b_next!38235) (not d!432232) (not d!432332) (not b!1474615) (not b!1474585) (not b!1474003) (not b!1474668) (not d!432394) (not b_next!38207) (not b_next!38239) (not d!432516) (not b!1474056) (not b!1474673) (not b_next!38237) (not d!432380) (not b!1474546) (not b!1474611) (not b!1474322) (not b!1474567) (not b!1474665) b_and!101643 (not d!432078) (not d!432526) (not d!432388) (not b!1474525) (not b!1474048) (not b!1474290) (not b!1474285) (not d!432532) (not b_lambda!46107) (not b!1474548))
(check-sat b_and!101361 b_and!101357 b_and!101647 (not b_next!38233) (not b_next!38231) (not b_next!38265) (not b_next!38257) (not b_next!38255) (not b_next!38213) b_and!101637 (not b_next!38209) b_and!101643 b_and!101651 (not b_next!38261) b_and!101635 b_and!101413 b_and!101633 b_and!101639 b_and!101645 b_and!101641 b_and!101653 (not b_next!38215) b_and!101655 b_and!101405 b_and!101409 (not b_next!38263) b_and!101365 (not b_next!38241) b_and!101649 (not b_next!38217) (not b_next!38211) (not b_next!38259) (not b_next!38235) (not b_next!38207) (not b_next!38239) (not b_next!38237))
