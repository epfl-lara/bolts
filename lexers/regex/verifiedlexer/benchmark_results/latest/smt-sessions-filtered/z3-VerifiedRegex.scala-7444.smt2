; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!395534 () Bool)

(assert start!395534)

(declare-fun b!4154735 () Bool)

(declare-fun b_free!119107 () Bool)

(declare-fun b_next!119811 () Bool)

(assert (=> b!4154735 (= b_free!119107 (not b_next!119811))))

(declare-fun tp!1267008 () Bool)

(declare-fun b_and!323469 () Bool)

(assert (=> b!4154735 (= tp!1267008 b_and!323469)))

(declare-fun b_free!119109 () Bool)

(declare-fun b_next!119813 () Bool)

(assert (=> b!4154735 (= b_free!119109 (not b_next!119813))))

(declare-fun tp!1267003 () Bool)

(declare-fun b_and!323471 () Bool)

(assert (=> b!4154735 (= tp!1267003 b_and!323471)))

(declare-fun b!4154732 () Bool)

(declare-fun b_free!119111 () Bool)

(declare-fun b_next!119815 () Bool)

(assert (=> b!4154732 (= b_free!119111 (not b_next!119815))))

(declare-fun tp!1267006 () Bool)

(declare-fun b_and!323473 () Bool)

(assert (=> b!4154732 (= tp!1267006 b_and!323473)))

(declare-fun b_free!119113 () Bool)

(declare-fun b_next!119817 () Bool)

(assert (=> b!4154732 (= b_free!119113 (not b_next!119817))))

(declare-fun tp!1267011 () Bool)

(declare-fun b_and!323475 () Bool)

(assert (=> b!4154732 (= tp!1267011 b_and!323475)))

(declare-fun b!4154736 () Bool)

(declare-fun b_free!119115 () Bool)

(declare-fun b_next!119819 () Bool)

(assert (=> b!4154736 (= b_free!119115 (not b_next!119819))))

(declare-fun tp!1267004 () Bool)

(declare-fun b_and!323477 () Bool)

(assert (=> b!4154736 (= tp!1267004 b_and!323477)))

(declare-fun b_free!119117 () Bool)

(declare-fun b_next!119821 () Bool)

(assert (=> b!4154736 (= b_free!119117 (not b_next!119821))))

(declare-fun tp!1267012 () Bool)

(declare-fun b_and!323479 () Bool)

(assert (=> b!4154736 (= tp!1267012 b_and!323479)))

(declare-fun b!4154728 () Bool)

(declare-fun e!2578017 () Bool)

(declare-fun e!2578020 () Bool)

(assert (=> b!4154728 (= e!2578017 (not e!2578020))))

(declare-fun res!1701557 () Bool)

(assert (=> b!4154728 (=> res!1701557 e!2578020)))

(declare-datatypes ((List!45340 0))(
  ( (Nil!45216) (Cons!45216 (h!50636 (_ BitVec 16)) (t!343371 List!45340)) )
))
(declare-datatypes ((TokenValue!7690 0))(
  ( (FloatLiteralValue!15380 (text!54275 List!45340)) (TokenValueExt!7689 (__x!27597 Int)) (Broken!38450 (value!233115 List!45340)) (Object!7813) (End!7690) (Def!7690) (Underscore!7690) (Match!7690) (Else!7690) (Error!7690) (Case!7690) (If!7690) (Extends!7690) (Abstract!7690) (Class!7690) (Val!7690) (DelimiterValue!15380 (del!7750 List!45340)) (KeywordValue!7696 (value!233116 List!45340)) (CommentValue!15380 (value!233117 List!45340)) (WhitespaceValue!15380 (value!233118 List!45340)) (IndentationValue!7690 (value!233119 List!45340)) (String!52199) (Int32!7690) (Broken!38451 (value!233120 List!45340)) (Boolean!7691) (Unit!64434) (OperatorValue!7693 (op!7750 List!45340)) (IdentifierValue!15380 (value!233121 List!45340)) (IdentifierValue!15381 (value!233122 List!45340)) (WhitespaceValue!15381 (value!233123 List!45340)) (True!15380) (False!15380) (Broken!38452 (value!233124 List!45340)) (Broken!38453 (value!233125 List!45340)) (True!15381) (RightBrace!7690) (RightBracket!7690) (Colon!7690) (Null!7690) (Comma!7690) (LeftBracket!7690) (False!15381) (LeftBrace!7690) (ImaginaryLiteralValue!7690 (text!54276 List!45340)) (StringLiteralValue!23070 (value!233126 List!45340)) (EOFValue!7690 (value!233127 List!45340)) (IdentValue!7690 (value!233128 List!45340)) (DelimiterValue!15381 (value!233129 List!45340)) (DedentValue!7690 (value!233130 List!45340)) (NewLineValue!7690 (value!233131 List!45340)) (IntegerValue!23070 (value!233132 (_ BitVec 32)) (text!54277 List!45340)) (IntegerValue!23071 (value!233133 Int) (text!54278 List!45340)) (Times!7690) (Or!7690) (Equal!7690) (Minus!7690) (Broken!38454 (value!233134 List!45340)) (And!7690) (Div!7690) (LessEqual!7690) (Mod!7690) (Concat!20055) (Not!7690) (Plus!7690) (SpaceValue!7690 (value!233135 List!45340)) (IntegerValue!23072 (value!233136 Int) (text!54279 List!45340)) (StringLiteralValue!23071 (text!54280 List!45340)) (FloatLiteralValue!15381 (text!54281 List!45340)) (BytesLiteralValue!7690 (value!233137 List!45340)) (CommentValue!15381 (value!233138 List!45340)) (StringLiteralValue!23072 (value!233139 List!45340)) (ErrorTokenValue!7690 (msg!7751 List!45340)) )
))
(declare-datatypes ((C!24916 0))(
  ( (C!24917 (val!14568 Int)) )
))
(declare-datatypes ((List!45341 0))(
  ( (Nil!45217) (Cons!45217 (h!50637 C!24916) (t!343372 List!45341)) )
))
(declare-datatypes ((IArray!27347 0))(
  ( (IArray!27348 (innerList!13731 List!45341)) )
))
(declare-datatypes ((Conc!13671 0))(
  ( (Node!13671 (left!33823 Conc!13671) (right!34153 Conc!13671) (csize!27572 Int) (cheight!13882 Int)) (Leaf!21116 (xs!16977 IArray!27347) (csize!27573 Int)) (Empty!13671) )
))
(declare-datatypes ((BalanceConc!26936 0))(
  ( (BalanceConc!26937 (c!711298 Conc!13671)) )
))
(declare-datatypes ((Regex!12365 0))(
  ( (ElementMatch!12365 (c!711299 C!24916)) (Concat!20056 (regOne!25242 Regex!12365) (regTwo!25242 Regex!12365)) (EmptyExpr!12365) (Star!12365 (reg!12694 Regex!12365)) (EmptyLang!12365) (Union!12365 (regOne!25243 Regex!12365) (regTwo!25243 Regex!12365)) )
))
(declare-datatypes ((String!52200 0))(
  ( (String!52201 (value!233140 String)) )
))
(declare-datatypes ((TokenValueInjection!14808 0))(
  ( (TokenValueInjection!14809 (toValue!10124 Int) (toChars!9983 Int)) )
))
(declare-datatypes ((Rule!14720 0))(
  ( (Rule!14721 (regex!7460 Regex!12365) (tag!8322 String!52200) (isSeparator!7460 Bool) (transformation!7460 TokenValueInjection!14808)) )
))
(declare-datatypes ((List!45342 0))(
  ( (Nil!45218) (Cons!45218 (h!50638 Rule!14720) (t!343373 List!45342)) )
))
(declare-fun lt!1481287 () List!45342)

(declare-fun r1!615 () Rule!14720)

(declare-fun contains!9157 (List!45342 Rule!14720) Bool)

(assert (=> b!4154728 (= res!1701557 (not (contains!9157 lt!1481287 r1!615)))))

(declare-fun r2!597 () Rule!14720)

(assert (=> b!4154728 (contains!9157 lt!1481287 r2!597)))

(declare-fun rules!4102 () List!45342)

(declare-datatypes ((Unit!64435 0))(
  ( (Unit!64436) )
))
(declare-fun lt!1481285 () Unit!64435)

(declare-fun lemmaGetIndexBiggerAndHeadNotEqThenTailContains!4 (List!45342 Rule!14720 Rule!14720) Unit!64435)

(assert (=> b!4154728 (= lt!1481285 (lemmaGetIndexBiggerAndHeadNotEqThenTailContains!4 rules!4102 r1!615 r2!597))))

(declare-datatypes ((LexerInterface!7049 0))(
  ( (LexerInterfaceExt!7046 (__x!27598 Int)) (Lexer!7047) )
))
(declare-fun thiss!26968 () LexerInterface!7049)

(declare-datatypes ((List!45343 0))(
  ( (Nil!45219) (Cons!45219 (h!50639 String!52200) (t!343374 List!45343)) )
))
(declare-fun noDuplicateTag!3037 (LexerInterface!7049 List!45342 List!45343) Bool)

(assert (=> b!4154728 (noDuplicateTag!3037 thiss!26968 lt!1481287 Nil!45219)))

(declare-fun lt!1481289 () Rule!14720)

(declare-fun lt!1481290 () Unit!64435)

(declare-fun lemmaNoDupTagThenAlsoWithSubListAcc!30 (LexerInterface!7049 List!45343 List!45343 List!45342) Unit!64435)

(assert (=> b!4154728 (= lt!1481290 (lemmaNoDupTagThenAlsoWithSubListAcc!30 thiss!26968 (Cons!45219 (tag!8322 lt!1481289) Nil!45219) Nil!45219 lt!1481287))))

(declare-fun tail!6623 (List!45342) List!45342)

(assert (=> b!4154728 (= lt!1481287 (tail!6623 rules!4102))))

(declare-fun b!4154729 () Bool)

(declare-fun e!2578013 () Bool)

(declare-fun e!2578023 () Bool)

(declare-fun tp!1267010 () Bool)

(declare-fun inv!59795 (String!52200) Bool)

(declare-fun inv!59797 (TokenValueInjection!14808) Bool)

(assert (=> b!4154729 (= e!2578023 (and tp!1267010 (inv!59795 (tag!8322 r1!615)) (inv!59797 (transformation!7460 r1!615)) e!2578013))))

(declare-fun b!4154730 () Bool)

(assert (=> b!4154730 (= e!2578020 true)))

(declare-fun lt!1481286 () Int)

(declare-fun getIndex!802 (List!45342 Rule!14720) Int)

(assert (=> b!4154730 (= lt!1481286 (getIndex!802 lt!1481287 r2!597))))

(declare-fun lt!1481284 () Int)

(assert (=> b!4154730 (= lt!1481284 (getIndex!802 lt!1481287 r1!615))))

(declare-fun b!4154731 () Bool)

(declare-fun e!2578018 () Bool)

(declare-fun tp!1267007 () Bool)

(declare-fun e!2578014 () Bool)

(assert (=> b!4154731 (= e!2578018 (and tp!1267007 (inv!59795 (tag!8322 r2!597)) (inv!59797 (transformation!7460 r2!597)) e!2578014))))

(declare-fun e!2578015 () Bool)

(assert (=> b!4154732 (= e!2578015 (and tp!1267006 tp!1267011))))

(declare-fun b!4154733 () Bool)

(declare-fun res!1701556 () Bool)

(declare-fun e!2578026 () Bool)

(assert (=> b!4154733 (=> (not res!1701556) (not e!2578026))))

(assert (=> b!4154733 (= res!1701556 (< (getIndex!802 rules!4102 r1!615) (getIndex!802 rules!4102 r2!597)))))

(declare-fun b!4154734 () Bool)

(assert (=> b!4154734 (= e!2578026 e!2578017)))

(declare-fun res!1701550 () Bool)

(assert (=> b!4154734 (=> (not res!1701550) (not e!2578017))))

(assert (=> b!4154734 (= res!1701550 (not (= lt!1481289 r1!615)))))

(declare-fun head!8786 (List!45342) Rule!14720)

(assert (=> b!4154734 (= lt!1481289 (head!8786 rules!4102))))

(declare-fun res!1701552 () Bool)

(declare-fun e!2578021 () Bool)

(assert (=> start!395534 (=> (not res!1701552) (not e!2578021))))

(get-info :version)

(assert (=> start!395534 (= res!1701552 ((_ is Lexer!7047) thiss!26968))))

(assert (=> start!395534 e!2578021))

(assert (=> start!395534 true))

(declare-fun e!2578022 () Bool)

(assert (=> start!395534 e!2578022))

(assert (=> start!395534 e!2578023))

(assert (=> start!395534 e!2578018))

(assert (=> b!4154735 (= e!2578013 (and tp!1267008 tp!1267003))))

(assert (=> b!4154736 (= e!2578014 (and tp!1267004 tp!1267012))))

(declare-fun b!4154737 () Bool)

(declare-fun res!1701554 () Bool)

(assert (=> b!4154737 (=> (not res!1701554) (not e!2578021))))

(assert (=> b!4154737 (= res!1701554 (contains!9157 rules!4102 r2!597))))

(declare-fun b!4154738 () Bool)

(declare-fun res!1701555 () Bool)

(assert (=> b!4154738 (=> (not res!1701555) (not e!2578021))))

(assert (=> b!4154738 (= res!1701555 (contains!9157 rules!4102 r1!615))))

(declare-fun b!4154739 () Bool)

(declare-fun e!2578024 () Bool)

(declare-fun tp!1267005 () Bool)

(assert (=> b!4154739 (= e!2578022 (and e!2578024 tp!1267005))))

(declare-fun b!4154740 () Bool)

(declare-fun tp!1267009 () Bool)

(assert (=> b!4154740 (= e!2578024 (and tp!1267009 (inv!59795 (tag!8322 (h!50638 rules!4102))) (inv!59797 (transformation!7460 (h!50638 rules!4102))) e!2578015))))

(declare-fun b!4154741 () Bool)

(declare-fun res!1701551 () Bool)

(assert (=> b!4154741 (=> res!1701551 e!2578020)))

(declare-fun lt!1481288 () List!45343)

(assert (=> b!4154741 (= res!1701551 (not (noDuplicateTag!3037 thiss!26968 lt!1481287 lt!1481288)))))

(declare-fun b!4154742 () Bool)

(assert (=> b!4154742 (= e!2578021 e!2578026)))

(declare-fun res!1701553 () Bool)

(assert (=> b!4154742 (=> (not res!1701553) (not e!2578026))))

(assert (=> b!4154742 (= res!1701553 (noDuplicateTag!3037 thiss!26968 rules!4102 lt!1481288))))

(declare-fun noDuplicateTag$default$2!42 (LexerInterface!7049) List!45343)

(assert (=> b!4154742 (= lt!1481288 (noDuplicateTag$default$2!42 thiss!26968))))

(assert (= (and start!395534 res!1701552) b!4154738))

(assert (= (and b!4154738 res!1701555) b!4154737))

(assert (= (and b!4154737 res!1701554) b!4154742))

(assert (= (and b!4154742 res!1701553) b!4154733))

(assert (= (and b!4154733 res!1701556) b!4154734))

(assert (= (and b!4154734 res!1701550) b!4154728))

(assert (= (and b!4154728 (not res!1701557)) b!4154741))

(assert (= (and b!4154741 (not res!1701551)) b!4154730))

(assert (= b!4154740 b!4154732))

(assert (= b!4154739 b!4154740))

(assert (= (and start!395534 ((_ is Cons!45218) rules!4102)) b!4154739))

(assert (= b!4154729 b!4154735))

(assert (= start!395534 b!4154729))

(assert (= b!4154731 b!4154736))

(assert (= start!395534 b!4154731))

(declare-fun m!4749453 () Bool)

(assert (=> b!4154731 m!4749453))

(declare-fun m!4749455 () Bool)

(assert (=> b!4154731 m!4749455))

(declare-fun m!4749457 () Bool)

(assert (=> b!4154737 m!4749457))

(declare-fun m!4749459 () Bool)

(assert (=> b!4154740 m!4749459))

(declare-fun m!4749461 () Bool)

(assert (=> b!4154740 m!4749461))

(declare-fun m!4749463 () Bool)

(assert (=> b!4154730 m!4749463))

(declare-fun m!4749465 () Bool)

(assert (=> b!4154730 m!4749465))

(declare-fun m!4749467 () Bool)

(assert (=> b!4154729 m!4749467))

(declare-fun m!4749469 () Bool)

(assert (=> b!4154729 m!4749469))

(declare-fun m!4749471 () Bool)

(assert (=> b!4154742 m!4749471))

(declare-fun m!4749473 () Bool)

(assert (=> b!4154742 m!4749473))

(declare-fun m!4749475 () Bool)

(assert (=> b!4154738 m!4749475))

(declare-fun m!4749477 () Bool)

(assert (=> b!4154734 m!4749477))

(declare-fun m!4749479 () Bool)

(assert (=> b!4154733 m!4749479))

(declare-fun m!4749481 () Bool)

(assert (=> b!4154733 m!4749481))

(declare-fun m!4749483 () Bool)

(assert (=> b!4154741 m!4749483))

(declare-fun m!4749485 () Bool)

(assert (=> b!4154728 m!4749485))

(declare-fun m!4749487 () Bool)

(assert (=> b!4154728 m!4749487))

(declare-fun m!4749489 () Bool)

(assert (=> b!4154728 m!4749489))

(declare-fun m!4749491 () Bool)

(assert (=> b!4154728 m!4749491))

(declare-fun m!4749493 () Bool)

(assert (=> b!4154728 m!4749493))

(declare-fun m!4749495 () Bool)

(assert (=> b!4154728 m!4749495))

(check-sat (not b_next!119821) (not b!4154739) b_and!323471 (not b!4154728) (not b!4154729) (not b_next!119811) (not b!4154733) b_and!323473 (not b!4154730) (not b!4154740) (not b!4154731) (not b!4154738) b_and!323475 b_and!323477 (not b!4154742) (not b!4154734) b_and!323479 b_and!323469 (not b!4154737) (not b_next!119813) (not b_next!119819) (not b!4154741) (not b_next!119815) (not b_next!119817))
(check-sat (not b_next!119821) b_and!323471 b_and!323475 b_and!323477 (not b_next!119813) (not b_next!119811) (not b_next!119819) b_and!323473 b_and!323479 b_and!323469 (not b_next!119815) (not b_next!119817))
