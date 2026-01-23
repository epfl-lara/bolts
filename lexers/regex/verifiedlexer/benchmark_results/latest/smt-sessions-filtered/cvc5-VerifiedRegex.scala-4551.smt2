; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!241052 () Bool)

(assert start!241052)

(declare-fun b!2471577 () Bool)

(declare-fun b_free!71381 () Bool)

(declare-fun b_next!72085 () Bool)

(assert (=> b!2471577 (= b_free!71381 (not b_next!72085))))

(declare-fun tp!789701 () Bool)

(declare-fun b_and!187269 () Bool)

(assert (=> b!2471577 (= tp!789701 b_and!187269)))

(declare-fun b_free!71383 () Bool)

(declare-fun b_next!72087 () Bool)

(assert (=> b!2471577 (= b_free!71383 (not b_next!72087))))

(declare-fun tp!789693 () Bool)

(declare-fun b_and!187271 () Bool)

(assert (=> b!2471577 (= tp!789693 b_and!187271)))

(declare-fun b!2471579 () Bool)

(declare-fun b_free!71385 () Bool)

(declare-fun b_next!72089 () Bool)

(assert (=> b!2471579 (= b_free!71385 (not b_next!72089))))

(declare-fun tp!789703 () Bool)

(declare-fun b_and!187273 () Bool)

(assert (=> b!2471579 (= tp!789703 b_and!187273)))

(declare-fun b_free!71387 () Bool)

(declare-fun b_next!72091 () Bool)

(assert (=> b!2471579 (= b_free!71387 (not b_next!72091))))

(declare-fun tp!789698 () Bool)

(declare-fun b_and!187275 () Bool)

(assert (=> b!2471579 (= tp!789698 b_and!187275)))

(declare-fun b!2471575 () Bool)

(declare-fun b_free!71389 () Bool)

(declare-fun b_next!72093 () Bool)

(assert (=> b!2471575 (= b_free!71389 (not b_next!72093))))

(declare-fun tp!789706 () Bool)

(declare-fun b_and!187277 () Bool)

(assert (=> b!2471575 (= tp!789706 b_and!187277)))

(declare-fun b_free!71391 () Bool)

(declare-fun b_next!72095 () Bool)

(assert (=> b!2471575 (= b_free!71391 (not b_next!72095))))

(declare-fun tp!789695 () Bool)

(declare-fun b_and!187279 () Bool)

(assert (=> b!2471575 (= tp!789695 b_and!187279)))

(declare-fun b!2471587 () Bool)

(declare-fun b_free!71393 () Bool)

(declare-fun b_next!72097 () Bool)

(assert (=> b!2471587 (= b_free!71393 (not b_next!72097))))

(declare-fun tp!789704 () Bool)

(declare-fun b_and!187281 () Bool)

(assert (=> b!2471587 (= tp!789704 b_and!187281)))

(declare-fun b_free!71395 () Bool)

(declare-fun b_next!72099 () Bool)

(assert (=> b!2471587 (= b_free!71395 (not b_next!72099))))

(declare-fun tp!789697 () Bool)

(declare-fun b_and!187283 () Bool)

(assert (=> b!2471587 (= tp!789697 b_and!187283)))

(declare-fun b!2471571 () Bool)

(declare-fun e!1567517 () Bool)

(assert (=> b!2471571 (= e!1567517 (not true))))

(declare-datatypes ((LexerInterface!4085 0))(
  ( (LexerInterfaceExt!4082 (__x!18603 Int)) (Lexer!4083) )
))
(declare-fun thiss!27932 () LexerInterface!4085)

(declare-datatypes ((List!28908 0))(
  ( (Nil!28808) (Cons!28808 (h!34209 (_ BitVec 16)) (t!209995 List!28908)) )
))
(declare-datatypes ((TokenValue!4674 0))(
  ( (FloatLiteralValue!9348 (text!33163 List!28908)) (TokenValueExt!4673 (__x!18604 Int)) (Broken!23370 (value!143289 List!28908)) (Object!4773) (End!4674) (Def!4674) (Underscore!4674) (Match!4674) (Else!4674) (Error!4674) (Case!4674) (If!4674) (Extends!4674) (Abstract!4674) (Class!4674) (Val!4674) (DelimiterValue!9348 (del!4734 List!28908)) (KeywordValue!4680 (value!143290 List!28908)) (CommentValue!9348 (value!143291 List!28908)) (WhitespaceValue!9348 (value!143292 List!28908)) (IndentationValue!4674 (value!143293 List!28908)) (String!31667) (Int32!4674) (Broken!23371 (value!143294 List!28908)) (Boolean!4675) (Unit!42156) (OperatorValue!4677 (op!4734 List!28908)) (IdentifierValue!9348 (value!143295 List!28908)) (IdentifierValue!9349 (value!143296 List!28908)) (WhitespaceValue!9349 (value!143297 List!28908)) (True!9348) (False!9348) (Broken!23372 (value!143298 List!28908)) (Broken!23373 (value!143299 List!28908)) (True!9349) (RightBrace!4674) (RightBracket!4674) (Colon!4674) (Null!4674) (Comma!4674) (LeftBracket!4674) (False!9349) (LeftBrace!4674) (ImaginaryLiteralValue!4674 (text!33164 List!28908)) (StringLiteralValue!14022 (value!143300 List!28908)) (EOFValue!4674 (value!143301 List!28908)) (IdentValue!4674 (value!143302 List!28908)) (DelimiterValue!9349 (value!143303 List!28908)) (DedentValue!4674 (value!143304 List!28908)) (NewLineValue!4674 (value!143305 List!28908)) (IntegerValue!14022 (value!143306 (_ BitVec 32)) (text!33165 List!28908)) (IntegerValue!14023 (value!143307 Int) (text!33166 List!28908)) (Times!4674) (Or!4674) (Equal!4674) (Minus!4674) (Broken!23374 (value!143308 List!28908)) (And!4674) (Div!4674) (LessEqual!4674) (Mod!4674) (Concat!11950) (Not!4674) (Plus!4674) (SpaceValue!4674 (value!143309 List!28908)) (IntegerValue!14024 (value!143310 Int) (text!33167 List!28908)) (StringLiteralValue!14023 (text!33168 List!28908)) (FloatLiteralValue!9349 (text!33169 List!28908)) (BytesLiteralValue!4674 (value!143311 List!28908)) (CommentValue!9349 (value!143312 List!28908)) (StringLiteralValue!14024 (value!143313 List!28908)) (ErrorTokenValue!4674 (msg!4735 List!28908)) )
))
(declare-datatypes ((C!14710 0))(
  ( (C!14711 (val!8615 Int)) )
))
(declare-datatypes ((List!28909 0))(
  ( (Nil!28809) (Cons!28809 (h!34210 C!14710) (t!209996 List!28909)) )
))
(declare-datatypes ((IArray!18413 0))(
  ( (IArray!18414 (innerList!9264 List!28909)) )
))
(declare-datatypes ((Conc!9204 0))(
  ( (Node!9204 (left!22103 Conc!9204) (right!22433 Conc!9204) (csize!18638 Int) (cheight!9415 Int)) (Leaf!13756 (xs!12188 IArray!18413) (csize!18639 Int)) (Empty!9204) )
))
(declare-datatypes ((BalanceConc!18022 0))(
  ( (BalanceConc!18023 (c!393728 Conc!9204)) )
))
(declare-datatypes ((Regex!7276 0))(
  ( (ElementMatch!7276 (c!393729 C!14710)) (Concat!11951 (regOne!15064 Regex!7276) (regTwo!15064 Regex!7276)) (EmptyExpr!7276) (Star!7276 (reg!7605 Regex!7276)) (EmptyLang!7276) (Union!7276 (regOne!15065 Regex!7276) (regTwo!15065 Regex!7276)) )
))
(declare-datatypes ((String!31668 0))(
  ( (String!31669 (value!143314 String)) )
))
(declare-datatypes ((TokenValueInjection!8848 0))(
  ( (TokenValueInjection!8849 (toValue!6352 Int) (toChars!6211 Int)) )
))
(declare-datatypes ((Rule!8776 0))(
  ( (Rule!8777 (regex!4488 Regex!7276) (tag!4978 String!31668) (isSeparator!4488 Bool) (transformation!4488 TokenValueInjection!8848)) )
))
(declare-datatypes ((List!28910 0))(
  ( (Nil!28810) (Cons!28810 (h!34211 Rule!8776) (t!209997 List!28910)) )
))
(declare-fun rules!4472 () List!28910)

(declare-datatypes ((Token!8446 0))(
  ( (Token!8447 (value!143315 TokenValue!4674) (rule!6846 Rule!8776) (size!22421 Int) (originalCharacters!5254 List!28909)) )
))
(declare-fun t1!67 () Token!8446)

(declare-fun rulesProduceIndividualToken!1815 (LexerInterface!4085 List!28910 Token!8446) Bool)

(assert (=> b!2471571 (rulesProduceIndividualToken!1815 thiss!27932 rules!4472 t1!67)))

(declare-datatypes ((Unit!42157 0))(
  ( (Unit!42158) )
))
(declare-fun lt!883271 () Unit!42157)

(declare-datatypes ((List!28911 0))(
  ( (Nil!28811) (Cons!28811 (h!34212 Token!8446) (t!209998 List!28911)) )
))
(declare-fun l!6611 () List!28911)

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!676 (LexerInterface!4085 List!28910 List!28911 Token!8446) Unit!42157)

(assert (=> b!2471571 (= lt!883271 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!676 thiss!27932 rules!4472 l!6611 t1!67))))

(declare-fun b!2471572 () Bool)

(declare-fun res!1046461 () Bool)

(assert (=> b!2471572 (=> (not res!1046461) (not e!1567517))))

(declare-fun i!1803 () Int)

(assert (=> b!2471572 (= res!1046461 (= i!1803 0))))

(declare-fun e!1567503 () Bool)

(declare-fun tp!789694 () Bool)

(declare-fun e!1567519 () Bool)

(declare-fun b!2471573 () Bool)

(declare-fun inv!38898 (String!31668) Bool)

(declare-fun inv!38901 (TokenValueInjection!8848) Bool)

(assert (=> b!2471573 (= e!1567503 (and tp!789694 (inv!38898 (tag!4978 (h!34211 rules!4472))) (inv!38901 (transformation!4488 (h!34211 rules!4472))) e!1567519))))

(declare-fun b!2471574 () Bool)

(declare-fun e!1567510 () Bool)

(declare-fun tp!789702 () Bool)

(assert (=> b!2471574 (= e!1567510 (and e!1567503 tp!789702))))

(assert (=> b!2471575 (= e!1567519 (and tp!789706 tp!789695))))

(declare-fun b!2471576 () Bool)

(declare-fun res!1046465 () Bool)

(assert (=> b!2471576 (=> (not res!1046465) (not e!1567517))))

(declare-fun rulesInvariant!3585 (LexerInterface!4085 List!28910) Bool)

(assert (=> b!2471576 (= res!1046465 (rulesInvariant!3585 thiss!27932 rules!4472))))

(declare-fun e!1567504 () Bool)

(assert (=> b!2471577 (= e!1567504 (and tp!789701 tp!789693))))

(declare-fun b!2471578 () Bool)

(declare-fun res!1046470 () Bool)

(assert (=> b!2471578 (=> (not res!1046470) (not e!1567517))))

(assert (=> b!2471578 (= res!1046470 (>= i!1803 0))))

(declare-fun e!1567508 () Bool)

(assert (=> b!2471579 (= e!1567508 (and tp!789703 tp!789698))))

(declare-fun b!2471581 () Bool)

(declare-fun res!1046463 () Bool)

(assert (=> b!2471581 (=> (not res!1046463) (not e!1567517))))

(declare-fun apply!6793 (List!28911 Int) Token!8446)

(assert (=> b!2471581 (= res!1046463 (= (apply!6793 l!6611 i!1803) t1!67))))

(declare-fun tp!789699 () Bool)

(declare-fun e!1567521 () Bool)

(declare-fun b!2471582 () Bool)

(declare-fun e!1567518 () Bool)

(declare-fun inv!38902 (Token!8446) Bool)

(assert (=> b!2471582 (= e!1567518 (and (inv!38902 (h!34212 l!6611)) e!1567521 tp!789699))))

(declare-fun b!2471583 () Bool)

(declare-fun res!1046469 () Bool)

(assert (=> b!2471583 (=> (not res!1046469) (not e!1567517))))

(declare-fun t2!67 () Token!8446)

(assert (=> b!2471583 (= res!1046469 (= (apply!6793 l!6611 (+ 1 i!1803)) t2!67))))

(declare-fun b!2471584 () Bool)

(declare-fun res!1046466 () Bool)

(assert (=> b!2471584 (=> (not res!1046466) (not e!1567517))))

(declare-fun separableTokensPredicate!862 (LexerInterface!4085 Token!8446 Token!8446 List!28910) Bool)

(assert (=> b!2471584 (= res!1046466 (separableTokensPredicate!862 thiss!27932 t1!67 t2!67 rules!4472))))

(declare-fun b!2471585 () Bool)

(declare-fun res!1046460 () Bool)

(assert (=> b!2471585 (=> (not res!1046460) (not e!1567517))))

(declare-fun tokensListTwoByTwoPredicateSeparableList!624 (LexerInterface!4085 List!28911 List!28910) Bool)

(assert (=> b!2471585 (= res!1046460 (tokensListTwoByTwoPredicateSeparableList!624 thiss!27932 l!6611 rules!4472))))

(declare-fun b!2471586 () Bool)

(declare-fun res!1046468 () Bool)

(assert (=> b!2471586 (=> (not res!1046468) (not e!1567517))))

(declare-fun rulesProduceEachTokenIndividuallyList!1401 (LexerInterface!4085 List!28910 List!28911) Bool)

(assert (=> b!2471586 (= res!1046468 (rulesProduceEachTokenIndividuallyList!1401 thiss!27932 rules!4472 l!6611))))

(declare-fun e!1567511 () Bool)

(assert (=> b!2471587 (= e!1567511 (and tp!789704 tp!789697))))

(declare-fun b!2471588 () Bool)

(declare-fun res!1046464 () Bool)

(assert (=> b!2471588 (=> (not res!1046464) (not e!1567517))))

(declare-fun size!22422 (List!28911) Int)

(assert (=> b!2471588 (= res!1046464 (< (+ 1 i!1803) (size!22422 l!6611)))))

(declare-fun e!1567502 () Bool)

(declare-fun b!2471589 () Bool)

(declare-fun tp!789705 () Bool)

(assert (=> b!2471589 (= e!1567502 (and tp!789705 (inv!38898 (tag!4978 (rule!6846 t2!67))) (inv!38901 (transformation!4488 (rule!6846 t2!67))) e!1567504))))

(declare-fun tp!789707 () Bool)

(declare-fun b!2471590 () Bool)

(declare-fun e!1567514 () Bool)

(declare-fun inv!21 (TokenValue!4674) Bool)

(assert (=> b!2471590 (= e!1567521 (and (inv!21 (value!143315 (h!34212 l!6611))) e!1567514 tp!789707))))

(declare-fun b!2471591 () Bool)

(declare-fun res!1046462 () Bool)

(assert (=> b!2471591 (=> (not res!1046462) (not e!1567517))))

(declare-fun isEmpty!16735 (List!28910) Bool)

(assert (=> b!2471591 (= res!1046462 (not (isEmpty!16735 rules!4472)))))

(declare-fun tp!789708 () Bool)

(declare-fun e!1567516 () Bool)

(declare-fun b!2471592 () Bool)

(assert (=> b!2471592 (= e!1567516 (and tp!789708 (inv!38898 (tag!4978 (rule!6846 t1!67))) (inv!38901 (transformation!4488 (rule!6846 t1!67))) e!1567508))))

(declare-fun b!2471580 () Bool)

(declare-fun tp!789696 () Bool)

(assert (=> b!2471580 (= e!1567514 (and tp!789696 (inv!38898 (tag!4978 (rule!6846 (h!34212 l!6611)))) (inv!38901 (transformation!4488 (rule!6846 (h!34212 l!6611)))) e!1567511))))

(declare-fun res!1046467 () Bool)

(assert (=> start!241052 (=> (not res!1046467) (not e!1567517))))

(assert (=> start!241052 (= res!1046467 (is-Lexer!4083 thiss!27932))))

(assert (=> start!241052 e!1567517))

(assert (=> start!241052 true))

(assert (=> start!241052 e!1567510))

(declare-fun e!1567509 () Bool)

(assert (=> start!241052 (and (inv!38902 t2!67) e!1567509)))

(assert (=> start!241052 e!1567518))

(declare-fun e!1567505 () Bool)

(assert (=> start!241052 (and (inv!38902 t1!67) e!1567505)))

(declare-fun tp!789700 () Bool)

(declare-fun b!2471593 () Bool)

(assert (=> b!2471593 (= e!1567509 (and (inv!21 (value!143315 t2!67)) e!1567502 tp!789700))))

(declare-fun b!2471594 () Bool)

(declare-fun tp!789692 () Bool)

(assert (=> b!2471594 (= e!1567505 (and (inv!21 (value!143315 t1!67)) e!1567516 tp!789692))))

(assert (= (and start!241052 res!1046467) b!2471591))

(assert (= (and b!2471591 res!1046462) b!2471576))

(assert (= (and b!2471576 res!1046465) b!2471586))

(assert (= (and b!2471586 res!1046468) b!2471585))

(assert (= (and b!2471585 res!1046460) b!2471578))

(assert (= (and b!2471578 res!1046470) b!2471588))

(assert (= (and b!2471588 res!1046464) b!2471581))

(assert (= (and b!2471581 res!1046463) b!2471583))

(assert (= (and b!2471583 res!1046469) b!2471572))

(assert (= (and b!2471572 res!1046461) b!2471584))

(assert (= (and b!2471584 res!1046466) b!2471571))

(assert (= b!2471573 b!2471575))

(assert (= b!2471574 b!2471573))

(assert (= (and start!241052 (is-Cons!28810 rules!4472)) b!2471574))

(assert (= b!2471589 b!2471577))

(assert (= b!2471593 b!2471589))

(assert (= start!241052 b!2471593))

(assert (= b!2471580 b!2471587))

(assert (= b!2471590 b!2471580))

(assert (= b!2471582 b!2471590))

(assert (= (and start!241052 (is-Cons!28811 l!6611)) b!2471582))

(assert (= b!2471592 b!2471579))

(assert (= b!2471594 b!2471592))

(assert (= start!241052 b!2471594))

(declare-fun m!2840443 () Bool)

(assert (=> b!2471571 m!2840443))

(declare-fun m!2840445 () Bool)

(assert (=> b!2471571 m!2840445))

(declare-fun m!2840447 () Bool)

(assert (=> b!2471585 m!2840447))

(declare-fun m!2840449 () Bool)

(assert (=> b!2471582 m!2840449))

(declare-fun m!2840451 () Bool)

(assert (=> b!2471584 m!2840451))

(declare-fun m!2840453 () Bool)

(assert (=> b!2471594 m!2840453))

(declare-fun m!2840455 () Bool)

(assert (=> b!2471588 m!2840455))

(declare-fun m!2840457 () Bool)

(assert (=> b!2471583 m!2840457))

(declare-fun m!2840459 () Bool)

(assert (=> b!2471586 m!2840459))

(declare-fun m!2840461 () Bool)

(assert (=> start!241052 m!2840461))

(declare-fun m!2840463 () Bool)

(assert (=> start!241052 m!2840463))

(declare-fun m!2840465 () Bool)

(assert (=> b!2471581 m!2840465))

(declare-fun m!2840467 () Bool)

(assert (=> b!2471589 m!2840467))

(declare-fun m!2840469 () Bool)

(assert (=> b!2471589 m!2840469))

(declare-fun m!2840471 () Bool)

(assert (=> b!2471593 m!2840471))

(declare-fun m!2840473 () Bool)

(assert (=> b!2471590 m!2840473))

(declare-fun m!2840475 () Bool)

(assert (=> b!2471573 m!2840475))

(declare-fun m!2840477 () Bool)

(assert (=> b!2471573 m!2840477))

(declare-fun m!2840479 () Bool)

(assert (=> b!2471576 m!2840479))

(declare-fun m!2840481 () Bool)

(assert (=> b!2471591 m!2840481))

(declare-fun m!2840483 () Bool)

(assert (=> b!2471592 m!2840483))

(declare-fun m!2840485 () Bool)

(assert (=> b!2471592 m!2840485))

(declare-fun m!2840487 () Bool)

(assert (=> b!2471580 m!2840487))

(declare-fun m!2840489 () Bool)

(assert (=> b!2471580 m!2840489))

(push 1)

(assert b_and!187273)

(assert b_and!187279)

(assert (not b_next!72093))

(assert (not b!2471589))

(assert (not b!2471594))

(assert (not b!2471586))

(assert (not b!2471583))

(assert (not b_next!72095))

(assert (not b!2471580))

(assert (not b!2471582))

(assert b_and!187281)

(assert (not b!2471571))

(assert (not b!2471591))

(assert (not b_next!72091))

(assert b_and!187269)

(assert (not b_next!72099))

(assert b_and!187275)

(assert (not start!241052))

(assert b_and!187277)

(assert (not b!2471576))

(assert (not b_next!72089))

(assert (not b!2471574))

(assert (not b!2471585))

(assert (not b!2471581))

(assert b_and!187283)

(assert (not b_next!72097))

(assert (not b!2471584))

(assert (not b!2471590))

(assert (not b_next!72087))

(assert (not b_next!72085))

(assert (not b!2471592))

(assert (not b!2471593))

(assert b_and!187271)

(assert (not b!2471573))

(assert (not b!2471588))

(check-sat)

(pop 1)

(push 1)

(assert b_and!187273)

(assert b_and!187279)

(assert (not b_next!72093))

(assert (not b_next!72089))

(assert (not b_next!72095))

(assert b_and!187281)

(assert b_and!187271)

(assert (not b_next!72091))

(assert b_and!187269)

(assert (not b_next!72099))

(assert b_and!187275)

(assert b_and!187277)

(assert b_and!187283)

(assert (not b_next!72097))

(assert (not b_next!72087))

(assert (not b_next!72085))

(check-sat)

(pop 1)

