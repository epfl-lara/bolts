; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!395954 () Bool)

(assert start!395954)

(declare-fun b!4157578 () Bool)

(declare-fun b_free!119571 () Bool)

(declare-fun b_next!120275 () Bool)

(assert (=> b!4157578 (= b_free!119571 (not b_next!120275))))

(declare-fun tp!1268707 () Bool)

(declare-fun b_and!323933 () Bool)

(assert (=> b!4157578 (= tp!1268707 b_and!323933)))

(declare-fun b_free!119573 () Bool)

(declare-fun b_next!120277 () Bool)

(assert (=> b!4157578 (= b_free!119573 (not b_next!120277))))

(declare-fun tp!1268708 () Bool)

(declare-fun b_and!323935 () Bool)

(assert (=> b!4157578 (= tp!1268708 b_and!323935)))

(declare-fun b!4157581 () Bool)

(declare-fun b_free!119575 () Bool)

(declare-fun b_next!120279 () Bool)

(assert (=> b!4157581 (= b_free!119575 (not b_next!120279))))

(declare-fun tp!1268710 () Bool)

(declare-fun b_and!323937 () Bool)

(assert (=> b!4157581 (= tp!1268710 b_and!323937)))

(declare-fun b_free!119577 () Bool)

(declare-fun b_next!120281 () Bool)

(assert (=> b!4157581 (= b_free!119577 (not b_next!120281))))

(declare-fun tp!1268712 () Bool)

(declare-fun b_and!323939 () Bool)

(assert (=> b!4157581 (= tp!1268712 b_and!323939)))

(declare-fun b!4157582 () Bool)

(declare-fun b_free!119579 () Bool)

(declare-fun b_next!120283 () Bool)

(assert (=> b!4157582 (= b_free!119579 (not b_next!120283))))

(declare-fun tp!1268706 () Bool)

(declare-fun b_and!323941 () Bool)

(assert (=> b!4157582 (= tp!1268706 b_and!323941)))

(declare-fun b_free!119581 () Bool)

(declare-fun b_next!120285 () Bool)

(assert (=> b!4157582 (= b_free!119581 (not b_next!120285))))

(declare-fun tp!1268711 () Bool)

(declare-fun b_and!323943 () Bool)

(assert (=> b!4157582 (= tp!1268711 b_and!323943)))

(declare-fun b!4157577 () Bool)

(declare-fun res!1702829 () Bool)

(declare-fun e!2580266 () Bool)

(assert (=> b!4157577 (=> (not res!1702829) (not e!2580266))))

(declare-datatypes ((List!45468 0))(
  ( (Nil!45344) (Cons!45344 (h!50764 (_ BitVec 16)) (t!343499 List!45468)) )
))
(declare-datatypes ((TokenValue!7722 0))(
  ( (FloatLiteralValue!15444 (text!54499 List!45468)) (TokenValueExt!7721 (__x!27661 Int)) (Broken!38610 (value!233995 List!45468)) (Object!7845) (End!7722) (Def!7722) (Underscore!7722) (Match!7722) (Else!7722) (Error!7722) (Case!7722) (If!7722) (Extends!7722) (Abstract!7722) (Class!7722) (Val!7722) (DelimiterValue!15444 (del!7782 List!45468)) (KeywordValue!7728 (value!233996 List!45468)) (CommentValue!15444 (value!233997 List!45468)) (WhitespaceValue!15444 (value!233998 List!45468)) (IndentationValue!7722 (value!233999 List!45468)) (String!52359) (Int32!7722) (Broken!38611 (value!234000 List!45468)) (Boolean!7723) (Unit!64502) (OperatorValue!7725 (op!7782 List!45468)) (IdentifierValue!15444 (value!234001 List!45468)) (IdentifierValue!15445 (value!234002 List!45468)) (WhitespaceValue!15445 (value!234003 List!45468)) (True!15444) (False!15444) (Broken!38612 (value!234004 List!45468)) (Broken!38613 (value!234005 List!45468)) (True!15445) (RightBrace!7722) (RightBracket!7722) (Colon!7722) (Null!7722) (Comma!7722) (LeftBracket!7722) (False!15445) (LeftBrace!7722) (ImaginaryLiteralValue!7722 (text!54500 List!45468)) (StringLiteralValue!23166 (value!234006 List!45468)) (EOFValue!7722 (value!234007 List!45468)) (IdentValue!7722 (value!234008 List!45468)) (DelimiterValue!15445 (value!234009 List!45468)) (DedentValue!7722 (value!234010 List!45468)) (NewLineValue!7722 (value!234011 List!45468)) (IntegerValue!23166 (value!234012 (_ BitVec 32)) (text!54501 List!45468)) (IntegerValue!23167 (value!234013 Int) (text!54502 List!45468)) (Times!7722) (Or!7722) (Equal!7722) (Minus!7722) (Broken!38614 (value!234014 List!45468)) (And!7722) (Div!7722) (LessEqual!7722) (Mod!7722) (Concat!20119) (Not!7722) (Plus!7722) (SpaceValue!7722 (value!234015 List!45468)) (IntegerValue!23168 (value!234016 Int) (text!54503 List!45468)) (StringLiteralValue!23167 (text!54504 List!45468)) (FloatLiteralValue!15445 (text!54505 List!45468)) (BytesLiteralValue!7722 (value!234017 List!45468)) (CommentValue!15445 (value!234018 List!45468)) (StringLiteralValue!23168 (value!234019 List!45468)) (ErrorTokenValue!7722 (msg!7783 List!45468)) )
))
(declare-datatypes ((C!24980 0))(
  ( (C!24981 (val!14600 Int)) )
))
(declare-datatypes ((List!45469 0))(
  ( (Nil!45345) (Cons!45345 (h!50765 C!24980) (t!343500 List!45469)) )
))
(declare-datatypes ((IArray!27411 0))(
  ( (IArray!27412 (innerList!13763 List!45469)) )
))
(declare-datatypes ((Conc!13703 0))(
  ( (Node!13703 (left!33871 Conc!13703) (right!34201 Conc!13703) (csize!27636 Int) (cheight!13914 Int)) (Leaf!21164 (xs!17009 IArray!27411) (csize!27637 Int)) (Empty!13703) )
))
(declare-datatypes ((Regex!12397 0))(
  ( (ElementMatch!12397 (c!711536 C!24980)) (Concat!20120 (regOne!25306 Regex!12397) (regTwo!25306 Regex!12397)) (EmptyExpr!12397) (Star!12397 (reg!12726 Regex!12397)) (EmptyLang!12397) (Union!12397 (regOne!25307 Regex!12397) (regTwo!25307 Regex!12397)) )
))
(declare-datatypes ((String!52360 0))(
  ( (String!52361 (value!234020 String)) )
))
(declare-datatypes ((BalanceConc!27000 0))(
  ( (BalanceConc!27001 (c!711537 Conc!13703)) )
))
(declare-datatypes ((TokenValueInjection!14872 0))(
  ( (TokenValueInjection!14873 (toValue!10156 Int) (toChars!10015 Int)) )
))
(declare-datatypes ((Rule!14784 0))(
  ( (Rule!14785 (regex!7492 Regex!12397) (tag!8356 String!52360) (isSeparator!7492 Bool) (transformation!7492 TokenValueInjection!14872)) )
))
(declare-datatypes ((List!45470 0))(
  ( (Nil!45346) (Cons!45346 (h!50766 Rule!14784) (t!343501 List!45470)) )
))
(declare-fun rules!4102 () List!45470)

(declare-fun r1!615 () Rule!14784)

(declare-fun contains!9209 (List!45470 Rule!14784) Bool)

(assert (=> b!4157577 (= res!1702829 (contains!9209 rules!4102 r1!615))))

(declare-fun e!2580269 () Bool)

(assert (=> b!4157578 (= e!2580269 (and tp!1268707 tp!1268708))))

(declare-fun b!4157580 () Bool)

(declare-fun e!2580273 () Bool)

(declare-fun e!2580270 () Bool)

(assert (=> b!4157580 (= e!2580273 (not e!2580270))))

(declare-fun res!1702826 () Bool)

(assert (=> b!4157580 (=> res!1702826 e!2580270)))

(declare-fun lt!1481802 () List!45470)

(assert (=> b!4157580 (= res!1702826 (not (contains!9209 lt!1481802 r1!615)))))

(declare-fun r2!597 () Rule!14784)

(assert (=> b!4157580 (contains!9209 lt!1481802 r2!597)))

(declare-datatypes ((Unit!64503 0))(
  ( (Unit!64504) )
))
(declare-fun lt!1481800 () Unit!64503)

(declare-fun lemmaGetIndexBiggerAndHeadNotEqThenTailContains!16 (List!45470 Rule!14784 Rule!14784) Unit!64503)

(assert (=> b!4157580 (= lt!1481800 (lemmaGetIndexBiggerAndHeadNotEqThenTailContains!16 rules!4102 r1!615 r2!597))))

(declare-datatypes ((LexerInterface!7081 0))(
  ( (LexerInterfaceExt!7078 (__x!27662 Int)) (Lexer!7079) )
))
(declare-fun thiss!26968 () LexerInterface!7081)

(declare-datatypes ((List!45471 0))(
  ( (Nil!45347) (Cons!45347 (h!50767 String!52360) (t!343502 List!45471)) )
))
(declare-fun noDuplicateTag!3069 (LexerInterface!7081 List!45470 List!45471) Bool)

(assert (=> b!4157580 (noDuplicateTag!3069 thiss!26968 lt!1481802 Nil!45347)))

(declare-fun lt!1481803 () Unit!64503)

(declare-fun lt!1481804 () Rule!14784)

(declare-fun lemmaNoDupTagThenAlsoWithSubListAcc!44 (LexerInterface!7081 List!45471 List!45471 List!45470) Unit!64503)

(assert (=> b!4157580 (= lt!1481803 (lemmaNoDupTagThenAlsoWithSubListAcc!44 thiss!26968 (Cons!45347 (tag!8356 lt!1481804) Nil!45347) Nil!45347 lt!1481802))))

(declare-fun tail!6647 (List!45470) List!45470)

(assert (=> b!4157580 (= lt!1481802 (tail!6647 rules!4102))))

(declare-fun e!2580264 () Bool)

(assert (=> b!4157581 (= e!2580264 (and tp!1268710 tp!1268712))))

(declare-fun e!2580265 () Bool)

(assert (=> b!4157582 (= e!2580265 (and tp!1268706 tp!1268711))))

(declare-fun b!4157583 () Bool)

(declare-fun e!2580263 () Bool)

(assert (=> b!4157583 (= e!2580266 e!2580263)))

(declare-fun res!1702823 () Bool)

(assert (=> b!4157583 (=> (not res!1702823) (not e!2580263))))

(declare-fun lt!1481801 () List!45471)

(assert (=> b!4157583 (= res!1702823 (noDuplicateTag!3069 thiss!26968 rules!4102 lt!1481801))))

(declare-fun noDuplicateTag$default$2!74 (LexerInterface!7081) List!45471)

(assert (=> b!4157583 (= lt!1481801 (noDuplicateTag$default$2!74 thiss!26968))))

(declare-fun b!4157584 () Bool)

(declare-fun res!1702827 () Bool)

(assert (=> b!4157584 (=> (not res!1702827) (not e!2580266))))

(assert (=> b!4157584 (= res!1702827 (contains!9209 rules!4102 r2!597))))

(declare-fun tp!1268705 () Bool)

(declare-fun b!4157585 () Bool)

(declare-fun e!2580271 () Bool)

(declare-fun inv!59875 (String!52360) Bool)

(declare-fun inv!59877 (TokenValueInjection!14872) Bool)

(assert (=> b!4157585 (= e!2580271 (and tp!1268705 (inv!59875 (tag!8356 (h!50766 rules!4102))) (inv!59877 (transformation!7492 (h!50766 rules!4102))) e!2580265))))

(declare-fun b!4157586 () Bool)

(assert (=> b!4157586 (= e!2580263 e!2580273)))

(declare-fun res!1702828 () Bool)

(assert (=> b!4157586 (=> (not res!1702828) (not e!2580273))))

(assert (=> b!4157586 (= res!1702828 (not (= lt!1481804 r1!615)))))

(declare-fun head!8814 (List!45470) Rule!14784)

(assert (=> b!4157586 (= lt!1481804 (head!8814 rules!4102))))

(declare-fun b!4157579 () Bool)

(declare-fun res!1702824 () Bool)

(assert (=> b!4157579 (=> res!1702824 e!2580270)))

(declare-fun getIndex!834 (List!45470 Rule!14784) Int)

(assert (=> b!4157579 (= res!1702824 (>= (getIndex!834 lt!1481802 r1!615) (getIndex!834 lt!1481802 r2!597)))))

(declare-fun res!1702825 () Bool)

(assert (=> start!395954 (=> (not res!1702825) (not e!2580266))))

(get-info :version)

(assert (=> start!395954 (= res!1702825 ((_ is Lexer!7079) thiss!26968))))

(assert (=> start!395954 e!2580266))

(assert (=> start!395954 true))

(declare-fun e!2580274 () Bool)

(assert (=> start!395954 e!2580274))

(declare-fun e!2580276 () Bool)

(assert (=> start!395954 e!2580276))

(declare-fun e!2580267 () Bool)

(assert (=> start!395954 e!2580267))

(declare-fun b!4157587 () Bool)

(declare-fun tp!1268709 () Bool)

(assert (=> b!4157587 (= e!2580274 (and e!2580271 tp!1268709))))

(declare-fun b!4157588 () Bool)

(declare-fun tp!1268704 () Bool)

(assert (=> b!4157588 (= e!2580276 (and tp!1268704 (inv!59875 (tag!8356 r1!615)) (inv!59877 (transformation!7492 r1!615)) e!2580269))))

(declare-fun b!4157589 () Bool)

(declare-fun tp!1268703 () Bool)

(assert (=> b!4157589 (= e!2580267 (and tp!1268703 (inv!59875 (tag!8356 r2!597)) (inv!59877 (transformation!7492 r2!597)) e!2580264))))

(declare-fun b!4157590 () Bool)

(declare-fun res!1702822 () Bool)

(assert (=> b!4157590 (=> res!1702822 e!2580270)))

(assert (=> b!4157590 (= res!1702822 (not (noDuplicateTag!3069 thiss!26968 lt!1481802 lt!1481801)))))

(declare-fun b!4157591 () Bool)

(declare-fun ListPrimitiveSize!291 (List!45470) Int)

(assert (=> b!4157591 (= e!2580270 (< (ListPrimitiveSize!291 lt!1481802) (ListPrimitiveSize!291 rules!4102)))))

(declare-fun b!4157592 () Bool)

(declare-fun res!1702830 () Bool)

(assert (=> b!4157592 (=> (not res!1702830) (not e!2580263))))

(assert (=> b!4157592 (= res!1702830 (< (getIndex!834 rules!4102 r1!615) (getIndex!834 rules!4102 r2!597)))))

(assert (= (and start!395954 res!1702825) b!4157577))

(assert (= (and b!4157577 res!1702829) b!4157584))

(assert (= (and b!4157584 res!1702827) b!4157583))

(assert (= (and b!4157583 res!1702823) b!4157592))

(assert (= (and b!4157592 res!1702830) b!4157586))

(assert (= (and b!4157586 res!1702828) b!4157580))

(assert (= (and b!4157580 (not res!1702826)) b!4157590))

(assert (= (and b!4157590 (not res!1702822)) b!4157579))

(assert (= (and b!4157579 (not res!1702824)) b!4157591))

(assert (= b!4157585 b!4157582))

(assert (= b!4157587 b!4157585))

(assert (= (and start!395954 ((_ is Cons!45346) rules!4102)) b!4157587))

(assert (= b!4157588 b!4157578))

(assert (= start!395954 b!4157588))

(assert (= b!4157589 b!4157581))

(assert (= start!395954 b!4157589))

(declare-fun m!4751481 () Bool)

(assert (=> b!4157592 m!4751481))

(declare-fun m!4751483 () Bool)

(assert (=> b!4157592 m!4751483))

(declare-fun m!4751485 () Bool)

(assert (=> b!4157577 m!4751485))

(declare-fun m!4751487 () Bool)

(assert (=> b!4157584 m!4751487))

(declare-fun m!4751489 () Bool)

(assert (=> b!4157591 m!4751489))

(declare-fun m!4751491 () Bool)

(assert (=> b!4157591 m!4751491))

(declare-fun m!4751493 () Bool)

(assert (=> b!4157586 m!4751493))

(declare-fun m!4751495 () Bool)

(assert (=> b!4157589 m!4751495))

(declare-fun m!4751497 () Bool)

(assert (=> b!4157589 m!4751497))

(declare-fun m!4751499 () Bool)

(assert (=> b!4157590 m!4751499))

(declare-fun m!4751501 () Bool)

(assert (=> b!4157583 m!4751501))

(declare-fun m!4751503 () Bool)

(assert (=> b!4157583 m!4751503))

(declare-fun m!4751505 () Bool)

(assert (=> b!4157585 m!4751505))

(declare-fun m!4751507 () Bool)

(assert (=> b!4157585 m!4751507))

(declare-fun m!4751509 () Bool)

(assert (=> b!4157580 m!4751509))

(declare-fun m!4751511 () Bool)

(assert (=> b!4157580 m!4751511))

(declare-fun m!4751513 () Bool)

(assert (=> b!4157580 m!4751513))

(declare-fun m!4751515 () Bool)

(assert (=> b!4157580 m!4751515))

(declare-fun m!4751517 () Bool)

(assert (=> b!4157580 m!4751517))

(declare-fun m!4751519 () Bool)

(assert (=> b!4157580 m!4751519))

(declare-fun m!4751521 () Bool)

(assert (=> b!4157579 m!4751521))

(declare-fun m!4751523 () Bool)

(assert (=> b!4157579 m!4751523))

(declare-fun m!4751525 () Bool)

(assert (=> b!4157588 m!4751525))

(declare-fun m!4751527 () Bool)

(assert (=> b!4157588 m!4751527))

(check-sat (not b_next!120279) (not b_next!120285) b_and!323933 b_and!323939 (not b!4157592) (not b!4157586) b_and!323935 (not b!4157584) (not b!4157583) (not b_next!120283) (not b!4157588) (not b!4157577) (not b!4157580) (not b!4157579) (not b!4157590) (not b!4157589) b_and!323943 (not b_next!120275) b_and!323941 (not b!4157587) (not b!4157585) (not b_next!120277) (not b_next!120281) b_and!323937 (not b!4157591))
(check-sat (not b_next!120279) (not b_next!120285) b_and!323941 b_and!323933 b_and!323939 b_and!323935 (not b_next!120283) b_and!323937 b_and!323943 (not b_next!120275) (not b_next!120277) (not b_next!120281))
(get-model)

(declare-fun d!1229337 () Bool)

(declare-fun lt!1481811 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!7017 (List!45470) (InoxSet Rule!14784))

(assert (=> d!1229337 (= lt!1481811 (select (content!7017 rules!4102) r2!597))))

(declare-fun e!2580291 () Bool)

(assert (=> d!1229337 (= lt!1481811 e!2580291)))

(declare-fun res!1702854 () Bool)

(assert (=> d!1229337 (=> (not res!1702854) (not e!2580291))))

(assert (=> d!1229337 (= res!1702854 ((_ is Cons!45346) rules!4102))))

(assert (=> d!1229337 (= (contains!9209 rules!4102 r2!597) lt!1481811)))

(declare-fun b!4157611 () Bool)

(declare-fun e!2580292 () Bool)

(assert (=> b!4157611 (= e!2580291 e!2580292)))

(declare-fun res!1702853 () Bool)

(assert (=> b!4157611 (=> res!1702853 e!2580292)))

(assert (=> b!4157611 (= res!1702853 (= (h!50766 rules!4102) r2!597))))

(declare-fun b!4157612 () Bool)

(assert (=> b!4157612 (= e!2580292 (contains!9209 (t!343501 rules!4102) r2!597))))

(assert (= (and d!1229337 res!1702854) b!4157611))

(assert (= (and b!4157611 (not res!1702853)) b!4157612))

(declare-fun m!4751537 () Bool)

(assert (=> d!1229337 m!4751537))

(declare-fun m!4751539 () Bool)

(assert (=> d!1229337 m!4751539))

(declare-fun m!4751541 () Bool)

(assert (=> b!4157612 m!4751541))

(assert (=> b!4157584 d!1229337))

(declare-fun d!1229345 () Bool)

(assert (=> d!1229345 (= (inv!59875 (tag!8356 (h!50766 rules!4102))) (= (mod (str.len (value!234020 (tag!8356 (h!50766 rules!4102)))) 2) 0))))

(assert (=> b!4157585 d!1229345))

(declare-fun d!1229347 () Bool)

(declare-fun res!1702857 () Bool)

(declare-fun e!2580304 () Bool)

(assert (=> d!1229347 (=> (not res!1702857) (not e!2580304))))

(declare-fun semiInverseModEq!3251 (Int Int) Bool)

(assert (=> d!1229347 (= res!1702857 (semiInverseModEq!3251 (toChars!10015 (transformation!7492 (h!50766 rules!4102))) (toValue!10156 (transformation!7492 (h!50766 rules!4102)))))))

(assert (=> d!1229347 (= (inv!59877 (transformation!7492 (h!50766 rules!4102))) e!2580304)))

(declare-fun b!4157631 () Bool)

(declare-fun equivClasses!3150 (Int Int) Bool)

(assert (=> b!4157631 (= e!2580304 (equivClasses!3150 (toChars!10015 (transformation!7492 (h!50766 rules!4102))) (toValue!10156 (transformation!7492 (h!50766 rules!4102)))))))

(assert (= (and d!1229347 res!1702857) b!4157631))

(declare-fun m!4751547 () Bool)

(assert (=> d!1229347 m!4751547))

(declare-fun m!4751549 () Bool)

(assert (=> b!4157631 m!4751549))

(assert (=> b!4157585 d!1229347))

(declare-fun d!1229355 () Bool)

(declare-fun res!1702864 () Bool)

(declare-fun e!2580311 () Bool)

(assert (=> d!1229355 (=> res!1702864 e!2580311)))

(assert (=> d!1229355 (= res!1702864 ((_ is Nil!45346) rules!4102))))

(assert (=> d!1229355 (= (noDuplicateTag!3069 thiss!26968 rules!4102 lt!1481801) e!2580311)))

(declare-fun b!4157639 () Bool)

(declare-fun e!2580313 () Bool)

(assert (=> b!4157639 (= e!2580311 e!2580313)))

(declare-fun res!1702866 () Bool)

(assert (=> b!4157639 (=> (not res!1702866) (not e!2580313))))

(declare-fun contains!9211 (List!45471 String!52360) Bool)

(assert (=> b!4157639 (= res!1702866 (not (contains!9211 lt!1481801 (tag!8356 (h!50766 rules!4102)))))))

(declare-fun b!4157640 () Bool)

(assert (=> b!4157640 (= e!2580313 (noDuplicateTag!3069 thiss!26968 (t!343501 rules!4102) (Cons!45347 (tag!8356 (h!50766 rules!4102)) lt!1481801)))))

(assert (= (and d!1229355 (not res!1702864)) b!4157639))

(assert (= (and b!4157639 res!1702866) b!4157640))

(declare-fun m!4751555 () Bool)

(assert (=> b!4157639 m!4751555))

(declare-fun m!4751557 () Bool)

(assert (=> b!4157640 m!4751557))

(assert (=> b!4157583 d!1229355))

(declare-fun d!1229361 () Bool)

(assert (=> d!1229361 (= (noDuplicateTag$default$2!74 thiss!26968) Nil!45347)))

(assert (=> b!4157583 d!1229361))

(declare-fun d!1229365 () Bool)

(declare-fun lt!1481816 () Bool)

(assert (=> d!1229365 (= lt!1481816 (select (content!7017 rules!4102) r1!615))))

(declare-fun e!2580317 () Bool)

(assert (=> d!1229365 (= lt!1481816 e!2580317)))

(declare-fun res!1702871 () Bool)

(assert (=> d!1229365 (=> (not res!1702871) (not e!2580317))))

(assert (=> d!1229365 (= res!1702871 ((_ is Cons!45346) rules!4102))))

(assert (=> d!1229365 (= (contains!9209 rules!4102 r1!615) lt!1481816)))

(declare-fun b!4157644 () Bool)

(declare-fun e!2580318 () Bool)

(assert (=> b!4157644 (= e!2580317 e!2580318)))

(declare-fun res!1702870 () Bool)

(assert (=> b!4157644 (=> res!1702870 e!2580318)))

(assert (=> b!4157644 (= res!1702870 (= (h!50766 rules!4102) r1!615))))

(declare-fun b!4157645 () Bool)

(assert (=> b!4157645 (= e!2580318 (contains!9209 (t!343501 rules!4102) r1!615))))

(assert (= (and d!1229365 res!1702871) b!4157644))

(assert (= (and b!4157644 (not res!1702870)) b!4157645))

(assert (=> d!1229365 m!4751537))

(declare-fun m!4751567 () Bool)

(assert (=> d!1229365 m!4751567))

(declare-fun m!4751569 () Bool)

(assert (=> b!4157645 m!4751569))

(assert (=> b!4157577 d!1229365))

(declare-fun d!1229369 () Bool)

(assert (=> d!1229369 (= (head!8814 rules!4102) (h!50766 rules!4102))))

(assert (=> b!4157586 d!1229369))

(declare-fun b!4157676 () Bool)

(declare-fun e!2580342 () Int)

(declare-fun e!2580341 () Int)

(assert (=> b!4157676 (= e!2580342 e!2580341)))

(declare-fun c!711559 () Bool)

(assert (=> b!4157676 (= c!711559 (and ((_ is Cons!45346) lt!1481802) (not (= (h!50766 lt!1481802) r1!615))))))

(declare-fun b!4157675 () Bool)

(assert (=> b!4157675 (= e!2580342 0)))

(declare-fun b!4157678 () Bool)

(assert (=> b!4157678 (= e!2580341 (- 1))))

(declare-fun d!1229373 () Bool)

(declare-fun lt!1481826 () Int)

(assert (=> d!1229373 (>= lt!1481826 0)))

(assert (=> d!1229373 (= lt!1481826 e!2580342)))

(declare-fun c!711558 () Bool)

(assert (=> d!1229373 (= c!711558 (and ((_ is Cons!45346) lt!1481802) (= (h!50766 lt!1481802) r1!615)))))

(assert (=> d!1229373 (contains!9209 lt!1481802 r1!615)))

(assert (=> d!1229373 (= (getIndex!834 lt!1481802 r1!615) lt!1481826)))

(declare-fun b!4157677 () Bool)

(assert (=> b!4157677 (= e!2580341 (+ 1 (getIndex!834 (t!343501 lt!1481802) r1!615)))))

(assert (= (and d!1229373 c!711558) b!4157675))

(assert (= (and d!1229373 (not c!711558)) b!4157676))

(assert (= (and b!4157676 c!711559) b!4157677))

(assert (= (and b!4157676 (not c!711559)) b!4157678))

(assert (=> d!1229373 m!4751513))

(declare-fun m!4751599 () Bool)

(assert (=> b!4157677 m!4751599))

(assert (=> b!4157579 d!1229373))

(declare-fun b!4157680 () Bool)

(declare-fun e!2580344 () Int)

(declare-fun e!2580343 () Int)

(assert (=> b!4157680 (= e!2580344 e!2580343)))

(declare-fun c!711561 () Bool)

(assert (=> b!4157680 (= c!711561 (and ((_ is Cons!45346) lt!1481802) (not (= (h!50766 lt!1481802) r2!597))))))

(declare-fun b!4157679 () Bool)

(assert (=> b!4157679 (= e!2580344 0)))

(declare-fun b!4157682 () Bool)

(assert (=> b!4157682 (= e!2580343 (- 1))))

(declare-fun d!1229391 () Bool)

(declare-fun lt!1481827 () Int)

(assert (=> d!1229391 (>= lt!1481827 0)))

(assert (=> d!1229391 (= lt!1481827 e!2580344)))

(declare-fun c!711560 () Bool)

(assert (=> d!1229391 (= c!711560 (and ((_ is Cons!45346) lt!1481802) (= (h!50766 lt!1481802) r2!597)))))

(assert (=> d!1229391 (contains!9209 lt!1481802 r2!597)))

(assert (=> d!1229391 (= (getIndex!834 lt!1481802 r2!597) lt!1481827)))

(declare-fun b!4157681 () Bool)

(assert (=> b!4157681 (= e!2580343 (+ 1 (getIndex!834 (t!343501 lt!1481802) r2!597)))))

(assert (= (and d!1229391 c!711560) b!4157679))

(assert (= (and d!1229391 (not c!711560)) b!4157680))

(assert (= (and b!4157680 c!711561) b!4157681))

(assert (= (and b!4157680 (not c!711561)) b!4157682))

(assert (=> d!1229391 m!4751517))

(declare-fun m!4751601 () Bool)

(assert (=> b!4157681 m!4751601))

(assert (=> b!4157579 d!1229391))

(declare-fun d!1229393 () Bool)

(declare-fun res!1702885 () Bool)

(declare-fun e!2580345 () Bool)

(assert (=> d!1229393 (=> res!1702885 e!2580345)))

(assert (=> d!1229393 (= res!1702885 ((_ is Nil!45346) lt!1481802))))

(assert (=> d!1229393 (= (noDuplicateTag!3069 thiss!26968 lt!1481802 lt!1481801) e!2580345)))

(declare-fun b!4157683 () Bool)

(declare-fun e!2580346 () Bool)

(assert (=> b!4157683 (= e!2580345 e!2580346)))

(declare-fun res!1702886 () Bool)

(assert (=> b!4157683 (=> (not res!1702886) (not e!2580346))))

(assert (=> b!4157683 (= res!1702886 (not (contains!9211 lt!1481801 (tag!8356 (h!50766 lt!1481802)))))))

(declare-fun b!4157684 () Bool)

(assert (=> b!4157684 (= e!2580346 (noDuplicateTag!3069 thiss!26968 (t!343501 lt!1481802) (Cons!45347 (tag!8356 (h!50766 lt!1481802)) lt!1481801)))))

(assert (= (and d!1229393 (not res!1702885)) b!4157683))

(assert (= (and b!4157683 res!1702886) b!4157684))

(declare-fun m!4751603 () Bool)

(assert (=> b!4157683 m!4751603))

(declare-fun m!4751605 () Bool)

(assert (=> b!4157684 m!4751605))

(assert (=> b!4157590 d!1229393))

(declare-fun d!1229395 () Bool)

(assert (=> d!1229395 (= (inv!59875 (tag!8356 r1!615)) (= (mod (str.len (value!234020 (tag!8356 r1!615))) 2) 0))))

(assert (=> b!4157588 d!1229395))

(declare-fun d!1229397 () Bool)

(declare-fun res!1702887 () Bool)

(declare-fun e!2580347 () Bool)

(assert (=> d!1229397 (=> (not res!1702887) (not e!2580347))))

(assert (=> d!1229397 (= res!1702887 (semiInverseModEq!3251 (toChars!10015 (transformation!7492 r1!615)) (toValue!10156 (transformation!7492 r1!615))))))

(assert (=> d!1229397 (= (inv!59877 (transformation!7492 r1!615)) e!2580347)))

(declare-fun b!4157685 () Bool)

(assert (=> b!4157685 (= e!2580347 (equivClasses!3150 (toChars!10015 (transformation!7492 r1!615)) (toValue!10156 (transformation!7492 r1!615))))))

(assert (= (and d!1229397 res!1702887) b!4157685))

(declare-fun m!4751607 () Bool)

(assert (=> d!1229397 m!4751607))

(declare-fun m!4751609 () Bool)

(assert (=> b!4157685 m!4751609))

(assert (=> b!4157588 d!1229397))

(declare-fun d!1229399 () Bool)

(assert (=> d!1229399 (= (inv!59875 (tag!8356 r2!597)) (= (mod (str.len (value!234020 (tag!8356 r2!597))) 2) 0))))

(assert (=> b!4157589 d!1229399))

(declare-fun d!1229401 () Bool)

(declare-fun res!1702888 () Bool)

(declare-fun e!2580348 () Bool)

(assert (=> d!1229401 (=> (not res!1702888) (not e!2580348))))

(assert (=> d!1229401 (= res!1702888 (semiInverseModEq!3251 (toChars!10015 (transformation!7492 r2!597)) (toValue!10156 (transformation!7492 r2!597))))))

(assert (=> d!1229401 (= (inv!59877 (transformation!7492 r2!597)) e!2580348)))

(declare-fun b!4157686 () Bool)

(assert (=> b!4157686 (= e!2580348 (equivClasses!3150 (toChars!10015 (transformation!7492 r2!597)) (toValue!10156 (transformation!7492 r2!597))))))

(assert (= (and d!1229401 res!1702888) b!4157686))

(declare-fun m!4751611 () Bool)

(assert (=> d!1229401 m!4751611))

(declare-fun m!4751613 () Bool)

(assert (=> b!4157686 m!4751613))

(assert (=> b!4157589 d!1229401))

(declare-fun b!4157688 () Bool)

(declare-fun e!2580350 () Int)

(declare-fun e!2580349 () Int)

(assert (=> b!4157688 (= e!2580350 e!2580349)))

(declare-fun c!711563 () Bool)

(assert (=> b!4157688 (= c!711563 (and ((_ is Cons!45346) rules!4102) (not (= (h!50766 rules!4102) r1!615))))))

(declare-fun b!4157687 () Bool)

(assert (=> b!4157687 (= e!2580350 0)))

(declare-fun b!4157690 () Bool)

(assert (=> b!4157690 (= e!2580349 (- 1))))

(declare-fun d!1229403 () Bool)

(declare-fun lt!1481830 () Int)

(assert (=> d!1229403 (>= lt!1481830 0)))

(assert (=> d!1229403 (= lt!1481830 e!2580350)))

(declare-fun c!711562 () Bool)

(assert (=> d!1229403 (= c!711562 (and ((_ is Cons!45346) rules!4102) (= (h!50766 rules!4102) r1!615)))))

(assert (=> d!1229403 (contains!9209 rules!4102 r1!615)))

(assert (=> d!1229403 (= (getIndex!834 rules!4102 r1!615) lt!1481830)))

(declare-fun b!4157689 () Bool)

(assert (=> b!4157689 (= e!2580349 (+ 1 (getIndex!834 (t!343501 rules!4102) r1!615)))))

(assert (= (and d!1229403 c!711562) b!4157687))

(assert (= (and d!1229403 (not c!711562)) b!4157688))

(assert (= (and b!4157688 c!711563) b!4157689))

(assert (= (and b!4157688 (not c!711563)) b!4157690))

(assert (=> d!1229403 m!4751485))

(declare-fun m!4751615 () Bool)

(assert (=> b!4157689 m!4751615))

(assert (=> b!4157592 d!1229403))

(declare-fun b!4157692 () Bool)

(declare-fun e!2580352 () Int)

(declare-fun e!2580351 () Int)

(assert (=> b!4157692 (= e!2580352 e!2580351)))

(declare-fun c!711565 () Bool)

(assert (=> b!4157692 (= c!711565 (and ((_ is Cons!45346) rules!4102) (not (= (h!50766 rules!4102) r2!597))))))

(declare-fun b!4157691 () Bool)

(assert (=> b!4157691 (= e!2580352 0)))

(declare-fun b!4157694 () Bool)

(assert (=> b!4157694 (= e!2580351 (- 1))))

(declare-fun d!1229405 () Bool)

(declare-fun lt!1481832 () Int)

(assert (=> d!1229405 (>= lt!1481832 0)))

(assert (=> d!1229405 (= lt!1481832 e!2580352)))

(declare-fun c!711564 () Bool)

(assert (=> d!1229405 (= c!711564 (and ((_ is Cons!45346) rules!4102) (= (h!50766 rules!4102) r2!597)))))

(assert (=> d!1229405 (contains!9209 rules!4102 r2!597)))

(assert (=> d!1229405 (= (getIndex!834 rules!4102 r2!597) lt!1481832)))

(declare-fun b!4157693 () Bool)

(assert (=> b!4157693 (= e!2580351 (+ 1 (getIndex!834 (t!343501 rules!4102) r2!597)))))

(assert (= (and d!1229405 c!711564) b!4157691))

(assert (= (and d!1229405 (not c!711564)) b!4157692))

(assert (= (and b!4157692 c!711565) b!4157693))

(assert (= (and b!4157692 (not c!711565)) b!4157694))

(assert (=> d!1229405 m!4751487))

(declare-fun m!4751621 () Bool)

(assert (=> b!4157693 m!4751621))

(assert (=> b!4157592 d!1229405))

(declare-fun d!1229409 () Bool)

(declare-fun lt!1481839 () Int)

(assert (=> d!1229409 (>= lt!1481839 0)))

(declare-fun e!2580360 () Int)

(assert (=> d!1229409 (= lt!1481839 e!2580360)))

(declare-fun c!711568 () Bool)

(assert (=> d!1229409 (= c!711568 ((_ is Nil!45346) lt!1481802))))

(assert (=> d!1229409 (= (ListPrimitiveSize!291 lt!1481802) lt!1481839)))

(declare-fun b!4157704 () Bool)

(assert (=> b!4157704 (= e!2580360 0)))

(declare-fun b!4157705 () Bool)

(assert (=> b!4157705 (= e!2580360 (+ 1 (ListPrimitiveSize!291 (t!343501 lt!1481802))))))

(assert (= (and d!1229409 c!711568) b!4157704))

(assert (= (and d!1229409 (not c!711568)) b!4157705))

(declare-fun m!4751631 () Bool)

(assert (=> b!4157705 m!4751631))

(assert (=> b!4157591 d!1229409))

(declare-fun d!1229415 () Bool)

(declare-fun lt!1481840 () Int)

(assert (=> d!1229415 (>= lt!1481840 0)))

(declare-fun e!2580361 () Int)

(assert (=> d!1229415 (= lt!1481840 e!2580361)))

(declare-fun c!711569 () Bool)

(assert (=> d!1229415 (= c!711569 ((_ is Nil!45346) rules!4102))))

(assert (=> d!1229415 (= (ListPrimitiveSize!291 rules!4102) lt!1481840)))

(declare-fun b!4157706 () Bool)

(assert (=> b!4157706 (= e!2580361 0)))

(declare-fun b!4157707 () Bool)

(assert (=> b!4157707 (= e!2580361 (+ 1 (ListPrimitiveSize!291 (t!343501 rules!4102))))))

(assert (= (and d!1229415 c!711569) b!4157706))

(assert (= (and d!1229415 (not c!711569)) b!4157707))

(declare-fun m!4751633 () Bool)

(assert (=> b!4157707 m!4751633))

(assert (=> b!4157591 d!1229415))

(declare-fun d!1229417 () Bool)

(assert (=> d!1229417 (noDuplicateTag!3069 thiss!26968 lt!1481802 Nil!45347)))

(declare-fun lt!1481843 () Unit!64503)

(declare-fun choose!25456 (LexerInterface!7081 List!45471 List!45471 List!45470) Unit!64503)

(assert (=> d!1229417 (= lt!1481843 (choose!25456 thiss!26968 (Cons!45347 (tag!8356 lt!1481804) Nil!45347) Nil!45347 lt!1481802))))

(declare-fun subseq!569 (List!45471 List!45471) Bool)

(assert (=> d!1229417 (subseq!569 Nil!45347 (Cons!45347 (tag!8356 lt!1481804) Nil!45347))))

(assert (=> d!1229417 (= (lemmaNoDupTagThenAlsoWithSubListAcc!44 thiss!26968 (Cons!45347 (tag!8356 lt!1481804) Nil!45347) Nil!45347 lt!1481802) lt!1481843)))

(declare-fun bs!595549 () Bool)

(assert (= bs!595549 d!1229417))

(assert (=> bs!595549 m!4751519))

(declare-fun m!4751639 () Bool)

(assert (=> bs!595549 m!4751639))

(declare-fun m!4751641 () Bool)

(assert (=> bs!595549 m!4751641))

(assert (=> b!4157580 d!1229417))

(declare-fun d!1229419 () Bool)

(declare-fun res!1702894 () Bool)

(declare-fun e!2580379 () Bool)

(assert (=> d!1229419 (=> res!1702894 e!2580379)))

(assert (=> d!1229419 (= res!1702894 ((_ is Nil!45346) lt!1481802))))

(assert (=> d!1229419 (= (noDuplicateTag!3069 thiss!26968 lt!1481802 Nil!45347) e!2580379)))

(declare-fun b!4157741 () Bool)

(declare-fun e!2580380 () Bool)

(assert (=> b!4157741 (= e!2580379 e!2580380)))

(declare-fun res!1702895 () Bool)

(assert (=> b!4157741 (=> (not res!1702895) (not e!2580380))))

(assert (=> b!4157741 (= res!1702895 (not (contains!9211 Nil!45347 (tag!8356 (h!50766 lt!1481802)))))))

(declare-fun b!4157742 () Bool)

(assert (=> b!4157742 (= e!2580380 (noDuplicateTag!3069 thiss!26968 (t!343501 lt!1481802) (Cons!45347 (tag!8356 (h!50766 lt!1481802)) Nil!45347)))))

(assert (= (and d!1229419 (not res!1702894)) b!4157741))

(assert (= (and b!4157741 res!1702895) b!4157742))

(declare-fun m!4751643 () Bool)

(assert (=> b!4157741 m!4751643))

(declare-fun m!4751645 () Bool)

(assert (=> b!4157742 m!4751645))

(assert (=> b!4157580 d!1229419))

(declare-fun d!1229421 () Bool)

(declare-fun lt!1481844 () Bool)

(assert (=> d!1229421 (= lt!1481844 (select (content!7017 lt!1481802) r1!615))))

(declare-fun e!2580381 () Bool)

(assert (=> d!1229421 (= lt!1481844 e!2580381)))

(declare-fun res!1702897 () Bool)

(assert (=> d!1229421 (=> (not res!1702897) (not e!2580381))))

(assert (=> d!1229421 (= res!1702897 ((_ is Cons!45346) lt!1481802))))

(assert (=> d!1229421 (= (contains!9209 lt!1481802 r1!615) lt!1481844)))

(declare-fun b!4157743 () Bool)

(declare-fun e!2580382 () Bool)

(assert (=> b!4157743 (= e!2580381 e!2580382)))

(declare-fun res!1702896 () Bool)

(assert (=> b!4157743 (=> res!1702896 e!2580382)))

(assert (=> b!4157743 (= res!1702896 (= (h!50766 lt!1481802) r1!615))))

(declare-fun b!4157744 () Bool)

(assert (=> b!4157744 (= e!2580382 (contains!9209 (t!343501 lt!1481802) r1!615))))

(assert (= (and d!1229421 res!1702897) b!4157743))

(assert (= (and b!4157743 (not res!1702896)) b!4157744))

(declare-fun m!4751647 () Bool)

(assert (=> d!1229421 m!4751647))

(declare-fun m!4751649 () Bool)

(assert (=> d!1229421 m!4751649))

(declare-fun m!4751651 () Bool)

(assert (=> b!4157744 m!4751651))

(assert (=> b!4157580 d!1229421))

(declare-fun d!1229423 () Bool)

(assert (=> d!1229423 (contains!9209 (tail!6647 rules!4102) r2!597)))

(declare-fun lt!1481847 () Unit!64503)

(declare-fun choose!25457 (List!45470 Rule!14784 Rule!14784) Unit!64503)

(assert (=> d!1229423 (= lt!1481847 (choose!25457 rules!4102 r1!615 r2!597))))

(declare-fun e!2580385 () Bool)

(assert (=> d!1229423 e!2580385))

(declare-fun res!1702900 () Bool)

(assert (=> d!1229423 (=> (not res!1702900) (not e!2580385))))

(assert (=> d!1229423 (= res!1702900 (contains!9209 rules!4102 r1!615))))

(assert (=> d!1229423 (= (lemmaGetIndexBiggerAndHeadNotEqThenTailContains!16 rules!4102 r1!615 r2!597) lt!1481847)))

(declare-fun b!4157747 () Bool)

(assert (=> b!4157747 (= e!2580385 (contains!9209 rules!4102 r2!597))))

(assert (= (and d!1229423 res!1702900) b!4157747))

(assert (=> d!1229423 m!4751515))

(assert (=> d!1229423 m!4751515))

(declare-fun m!4751653 () Bool)

(assert (=> d!1229423 m!4751653))

(declare-fun m!4751655 () Bool)

(assert (=> d!1229423 m!4751655))

(assert (=> d!1229423 m!4751485))

(assert (=> b!4157747 m!4751487))

(assert (=> b!4157580 d!1229423))

(declare-fun d!1229425 () Bool)

(assert (=> d!1229425 (= (tail!6647 rules!4102) (t!343501 rules!4102))))

(assert (=> b!4157580 d!1229425))

(declare-fun d!1229427 () Bool)

(declare-fun lt!1481848 () Bool)

(assert (=> d!1229427 (= lt!1481848 (select (content!7017 lt!1481802) r2!597))))

(declare-fun e!2580386 () Bool)

(assert (=> d!1229427 (= lt!1481848 e!2580386)))

(declare-fun res!1702902 () Bool)

(assert (=> d!1229427 (=> (not res!1702902) (not e!2580386))))

(assert (=> d!1229427 (= res!1702902 ((_ is Cons!45346) lt!1481802))))

(assert (=> d!1229427 (= (contains!9209 lt!1481802 r2!597) lt!1481848)))

(declare-fun b!4157748 () Bool)

(declare-fun e!2580387 () Bool)

(assert (=> b!4157748 (= e!2580386 e!2580387)))

(declare-fun res!1702901 () Bool)

(assert (=> b!4157748 (=> res!1702901 e!2580387)))

(assert (=> b!4157748 (= res!1702901 (= (h!50766 lt!1481802) r2!597))))

(declare-fun b!4157749 () Bool)

(assert (=> b!4157749 (= e!2580387 (contains!9209 (t!343501 lt!1481802) r2!597))))

(assert (= (and d!1229427 res!1702902) b!4157748))

(assert (= (and b!4157748 (not res!1702901)) b!4157749))

(assert (=> d!1229427 m!4751647))

(declare-fun m!4751657 () Bool)

(assert (=> d!1229427 m!4751657))

(declare-fun m!4751659 () Bool)

(assert (=> b!4157749 m!4751659))

(assert (=> b!4157580 d!1229427))

(declare-fun b!4157763 () Bool)

(declare-fun e!2580390 () Bool)

(declare-fun tp!1268762 () Bool)

(declare-fun tp!1268764 () Bool)

(assert (=> b!4157763 (= e!2580390 (and tp!1268762 tp!1268764))))

(declare-fun b!4157761 () Bool)

(declare-fun tp!1268760 () Bool)

(declare-fun tp!1268761 () Bool)

(assert (=> b!4157761 (= e!2580390 (and tp!1268760 tp!1268761))))

(declare-fun b!4157762 () Bool)

(declare-fun tp!1268763 () Bool)

(assert (=> b!4157762 (= e!2580390 tp!1268763)))

(declare-fun b!4157760 () Bool)

(declare-fun tp_is_empty!21669 () Bool)

(assert (=> b!4157760 (= e!2580390 tp_is_empty!21669)))

(assert (=> b!4157585 (= tp!1268705 e!2580390)))

(assert (= (and b!4157585 ((_ is ElementMatch!12397) (regex!7492 (h!50766 rules!4102)))) b!4157760))

(assert (= (and b!4157585 ((_ is Concat!20120) (regex!7492 (h!50766 rules!4102)))) b!4157761))

(assert (= (and b!4157585 ((_ is Star!12397) (regex!7492 (h!50766 rules!4102)))) b!4157762))

(assert (= (and b!4157585 ((_ is Union!12397) (regex!7492 (h!50766 rules!4102)))) b!4157763))

(declare-fun b!4157767 () Bool)

(declare-fun e!2580391 () Bool)

(declare-fun tp!1268767 () Bool)

(declare-fun tp!1268769 () Bool)

(assert (=> b!4157767 (= e!2580391 (and tp!1268767 tp!1268769))))

(declare-fun b!4157765 () Bool)

(declare-fun tp!1268765 () Bool)

(declare-fun tp!1268766 () Bool)

(assert (=> b!4157765 (= e!2580391 (and tp!1268765 tp!1268766))))

(declare-fun b!4157766 () Bool)

(declare-fun tp!1268768 () Bool)

(assert (=> b!4157766 (= e!2580391 tp!1268768)))

(declare-fun b!4157764 () Bool)

(assert (=> b!4157764 (= e!2580391 tp_is_empty!21669)))

(assert (=> b!4157588 (= tp!1268704 e!2580391)))

(assert (= (and b!4157588 ((_ is ElementMatch!12397) (regex!7492 r1!615))) b!4157764))

(assert (= (and b!4157588 ((_ is Concat!20120) (regex!7492 r1!615))) b!4157765))

(assert (= (and b!4157588 ((_ is Star!12397) (regex!7492 r1!615))) b!4157766))

(assert (= (and b!4157588 ((_ is Union!12397) (regex!7492 r1!615))) b!4157767))

(declare-fun b!4157771 () Bool)

(declare-fun e!2580392 () Bool)

(declare-fun tp!1268772 () Bool)

(declare-fun tp!1268774 () Bool)

(assert (=> b!4157771 (= e!2580392 (and tp!1268772 tp!1268774))))

(declare-fun b!4157769 () Bool)

(declare-fun tp!1268770 () Bool)

(declare-fun tp!1268771 () Bool)

(assert (=> b!4157769 (= e!2580392 (and tp!1268770 tp!1268771))))

(declare-fun b!4157770 () Bool)

(declare-fun tp!1268773 () Bool)

(assert (=> b!4157770 (= e!2580392 tp!1268773)))

(declare-fun b!4157768 () Bool)

(assert (=> b!4157768 (= e!2580392 tp_is_empty!21669)))

(assert (=> b!4157589 (= tp!1268703 e!2580392)))

(assert (= (and b!4157589 ((_ is ElementMatch!12397) (regex!7492 r2!597))) b!4157768))

(assert (= (and b!4157589 ((_ is Concat!20120) (regex!7492 r2!597))) b!4157769))

(assert (= (and b!4157589 ((_ is Star!12397) (regex!7492 r2!597))) b!4157770))

(assert (= (and b!4157589 ((_ is Union!12397) (regex!7492 r2!597))) b!4157771))

(declare-fun b!4157782 () Bool)

(declare-fun b_free!119587 () Bool)

(declare-fun b_next!120291 () Bool)

(assert (=> b!4157782 (= b_free!119587 (not b_next!120291))))

(declare-fun tp!1268786 () Bool)

(declare-fun b_and!323949 () Bool)

(assert (=> b!4157782 (= tp!1268786 b_and!323949)))

(declare-fun b_free!119589 () Bool)

(declare-fun b_next!120293 () Bool)

(assert (=> b!4157782 (= b_free!119589 (not b_next!120293))))

(declare-fun tp!1268783 () Bool)

(declare-fun b_and!323951 () Bool)

(assert (=> b!4157782 (= tp!1268783 b_and!323951)))

(declare-fun e!2580404 () Bool)

(assert (=> b!4157782 (= e!2580404 (and tp!1268786 tp!1268783))))

(declare-fun tp!1268784 () Bool)

(declare-fun b!4157781 () Bool)

(declare-fun e!2580402 () Bool)

(assert (=> b!4157781 (= e!2580402 (and tp!1268784 (inv!59875 (tag!8356 (h!50766 (t!343501 rules!4102)))) (inv!59877 (transformation!7492 (h!50766 (t!343501 rules!4102)))) e!2580404))))

(declare-fun b!4157780 () Bool)

(declare-fun e!2580401 () Bool)

(declare-fun tp!1268785 () Bool)

(assert (=> b!4157780 (= e!2580401 (and e!2580402 tp!1268785))))

(assert (=> b!4157587 (= tp!1268709 e!2580401)))

(assert (= b!4157781 b!4157782))

(assert (= b!4157780 b!4157781))

(assert (= (and b!4157587 ((_ is Cons!45346) (t!343501 rules!4102))) b!4157780))

(declare-fun m!4751661 () Bool)

(assert (=> b!4157781 m!4751661))

(declare-fun m!4751663 () Bool)

(assert (=> b!4157781 m!4751663))

(check-sat (not d!1229337) (not b!4157612) (not b!4157770) (not b!4157707) (not b!4157685) (not b_next!120293) (not b!4157749) (not d!1229421) (not b!4157640) (not d!1229417) (not b!4157639) b_and!323943 (not b_next!120275) (not b!4157765) (not b_next!120279) (not b!4157762) (not b_next!120285) (not b!4157689) (not d!1229401) (not b!4157781) (not b_next!120291) (not b!4157681) (not b!4157766) b_and!323941 (not d!1229405) (not b!4157705) tp_is_empty!21669 (not d!1229403) (not d!1229391) b_and!323933 b_and!323939 (not b!4157761) (not d!1229373) b_and!323949 (not b!4157693) (not b!4157742) (not b!4157741) (not b!4157631) b_and!323951 b_and!323935 (not d!1229397) (not d!1229427) (not d!1229423) (not b!4157677) (not b!4157686) (not d!1229347) (not b_next!120283) (not b!4157645) (not b!4157771) (not b!4157683) (not b!4157769) (not b!4157767) (not b!4157684) (not d!1229365) (not b!4157744) (not b!4157763) (not b_next!120277) (not b!4157747) (not b_next!120281) b_and!323937 (not b!4157780))
(check-sat (not b_next!120279) (not b_next!120285) (not b_next!120291) b_and!323941 b_and!323933 b_and!323939 b_and!323949 (not b_next!120283) (not b_next!120293) b_and!323937 b_and!323943 (not b_next!120275) b_and!323951 b_and!323935 (not b_next!120277) (not b_next!120281))
