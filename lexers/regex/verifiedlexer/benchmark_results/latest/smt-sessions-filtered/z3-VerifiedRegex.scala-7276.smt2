; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!388240 () Bool)

(assert start!388240)

(declare-fun b!4098546 () Bool)

(declare-fun b_free!114697 () Bool)

(declare-fun b_next!115401 () Bool)

(assert (=> b!4098546 (= b_free!114697 (not b_next!115401))))

(declare-fun tp!1240565 () Bool)

(declare-fun b_and!316375 () Bool)

(assert (=> b!4098546 (= tp!1240565 b_and!316375)))

(declare-fun b_free!114699 () Bool)

(declare-fun b_next!115403 () Bool)

(assert (=> b!4098546 (= b_free!114699 (not b_next!115403))))

(declare-fun tp!1240567 () Bool)

(declare-fun b_and!316377 () Bool)

(assert (=> b!4098546 (= tp!1240567 b_and!316377)))

(declare-fun b!4098554 () Bool)

(declare-fun b_free!114701 () Bool)

(declare-fun b_next!115405 () Bool)

(assert (=> b!4098554 (= b_free!114701 (not b_next!115405))))

(declare-fun tp!1240566 () Bool)

(declare-fun b_and!316379 () Bool)

(assert (=> b!4098554 (= tp!1240566 b_and!316379)))

(declare-fun b_free!114703 () Bool)

(declare-fun b_next!115407 () Bool)

(assert (=> b!4098554 (= b_free!114703 (not b_next!115407))))

(declare-fun tp!1240568 () Bool)

(declare-fun b_and!316381 () Bool)

(assert (=> b!4098554 (= tp!1240568 b_and!316381)))

(declare-fun b!4098543 () Bool)

(declare-fun res!1675559 () Bool)

(declare-fun e!2543385 () Bool)

(assert (=> b!4098543 (=> res!1675559 e!2543385)))

(declare-datatypes ((LexerInterface!6713 0))(
  ( (LexerInterfaceExt!6710 (__x!26925 Int)) (Lexer!6711) )
))
(declare-fun thiss!26455 () LexerInterface!6713)

(declare-datatypes ((C!24244 0))(
  ( (C!24245 (val!14232 Int)) )
))
(declare-datatypes ((List!44098 0))(
  ( (Nil!43974) (Cons!43974 (h!49394 C!24244) (t!339593 List!44098)) )
))
(declare-datatypes ((IArray!26675 0))(
  ( (IArray!26676 (innerList!13395 List!44098)) )
))
(declare-datatypes ((Conc!13335 0))(
  ( (Node!13335 (left!33051 Conc!13335) (right!33381 Conc!13335) (csize!26900 Int) (cheight!13546 Int)) (Leaf!20612 (xs!16641 IArray!26675) (csize!26901 Int)) (Empty!13335) )
))
(declare-datatypes ((List!44099 0))(
  ( (Nil!43975) (Cons!43975 (h!49395 (_ BitVec 16)) (t!339594 List!44099)) )
))
(declare-datatypes ((Regex!12029 0))(
  ( (ElementMatch!12029 (c!706210 C!24244)) (Concat!19383 (regOne!24570 Regex!12029) (regTwo!24570 Regex!12029)) (EmptyExpr!12029) (Star!12029 (reg!12358 Regex!12029)) (EmptyLang!12029) (Union!12029 (regOne!24571 Regex!12029) (regTwo!24571 Regex!12029)) )
))
(declare-datatypes ((String!50519 0))(
  ( (String!50520 (value!223657 String)) )
))
(declare-datatypes ((TokenValue!7354 0))(
  ( (FloatLiteralValue!14708 (text!51923 List!44099)) (TokenValueExt!7353 (__x!26926 Int)) (Broken!36770 (value!223658 List!44099)) (Object!7477) (End!7354) (Def!7354) (Underscore!7354) (Match!7354) (Else!7354) (Error!7354) (Case!7354) (If!7354) (Extends!7354) (Abstract!7354) (Class!7354) (Val!7354) (DelimiterValue!14708 (del!7414 List!44099)) (KeywordValue!7360 (value!223659 List!44099)) (CommentValue!14708 (value!223660 List!44099)) (WhitespaceValue!14708 (value!223661 List!44099)) (IndentationValue!7354 (value!223662 List!44099)) (String!50521) (Int32!7354) (Broken!36771 (value!223663 List!44099)) (Boolean!7355) (Unit!63506) (OperatorValue!7357 (op!7414 List!44099)) (IdentifierValue!14708 (value!223664 List!44099)) (IdentifierValue!14709 (value!223665 List!44099)) (WhitespaceValue!14709 (value!223666 List!44099)) (True!14708) (False!14708) (Broken!36772 (value!223667 List!44099)) (Broken!36773 (value!223668 List!44099)) (True!14709) (RightBrace!7354) (RightBracket!7354) (Colon!7354) (Null!7354) (Comma!7354) (LeftBracket!7354) (False!14709) (LeftBrace!7354) (ImaginaryLiteralValue!7354 (text!51924 List!44099)) (StringLiteralValue!22062 (value!223669 List!44099)) (EOFValue!7354 (value!223670 List!44099)) (IdentValue!7354 (value!223671 List!44099)) (DelimiterValue!14709 (value!223672 List!44099)) (DedentValue!7354 (value!223673 List!44099)) (NewLineValue!7354 (value!223674 List!44099)) (IntegerValue!22062 (value!223675 (_ BitVec 32)) (text!51925 List!44099)) (IntegerValue!22063 (value!223676 Int) (text!51926 List!44099)) (Times!7354) (Or!7354) (Equal!7354) (Minus!7354) (Broken!36774 (value!223677 List!44099)) (And!7354) (Div!7354) (LessEqual!7354) (Mod!7354) (Concat!19384) (Not!7354) (Plus!7354) (SpaceValue!7354 (value!223678 List!44099)) (IntegerValue!22064 (value!223679 Int) (text!51927 List!44099)) (StringLiteralValue!22063 (text!51928 List!44099)) (FloatLiteralValue!14709 (text!51929 List!44099)) (BytesLiteralValue!7354 (value!223680 List!44099)) (CommentValue!14709 (value!223681 List!44099)) (StringLiteralValue!22064 (value!223682 List!44099)) (ErrorTokenValue!7354 (msg!7415 List!44099)) )
))
(declare-datatypes ((BalanceConc!26264 0))(
  ( (BalanceConc!26265 (c!706211 Conc!13335)) )
))
(declare-datatypes ((TokenValueInjection!14136 0))(
  ( (TokenValueInjection!14137 (toValue!9728 Int) (toChars!9587 Int)) )
))
(declare-datatypes ((Rule!14048 0))(
  ( (Rule!14049 (regex!7124 Regex!12029) (tag!7984 String!50519) (isSeparator!7124 Bool) (transformation!7124 TokenValueInjection!14136)) )
))
(declare-datatypes ((List!44100 0))(
  ( (Nil!43976) (Cons!43976 (h!49396 Rule!14048) (t!339595 List!44100)) )
))
(declare-fun lt!1465954 () List!44100)

(declare-datatypes ((List!44101 0))(
  ( (Nil!43977) (Cons!43977 (h!49397 String!50519) (t!339596 List!44101)) )
))
(declare-fun noDuplicateTag!2803 (LexerInterface!6713 List!44100 List!44101) Bool)

(declare-fun noDuplicateTag$default$2!2 (LexerInterface!6713) List!44101)

(assert (=> b!4098543 (= res!1675559 (not (noDuplicateTag!2803 thiss!26455 lt!1465954 (noDuplicateTag$default$2!2 thiss!26455))))))

(declare-fun b!4098544 () Bool)

(declare-fun e!2543384 () Bool)

(declare-fun e!2543386 () Bool)

(assert (=> b!4098544 (= e!2543384 e!2543386)))

(declare-fun res!1675561 () Bool)

(assert (=> b!4098544 (=> (not res!1675561) (not e!2543386))))

(declare-fun rulesInvariant!6056 (LexerInterface!6713 List!44100) Bool)

(assert (=> b!4098544 (= res!1675561 (rulesInvariant!6056 thiss!26455 lt!1465954))))

(declare-fun rHead!24 () Rule!14048)

(declare-fun rTail!27 () List!44100)

(assert (=> b!4098544 (= lt!1465954 (Cons!43976 rHead!24 rTail!27))))

(declare-fun b!4098545 () Bool)

(assert (=> b!4098545 (= e!2543386 (not e!2543385))))

(declare-fun res!1675560 () Bool)

(assert (=> b!4098545 (=> res!1675560 e!2543385)))

(declare-fun contains!8809 (List!44100 Rule!14048) Bool)

(assert (=> b!4098545 (= res!1675560 (not (contains!8809 lt!1465954 rHead!24)))))

(assert (=> b!4098545 (noDuplicateTag!2803 thiss!26455 (Cons!43976 (h!49396 rTail!27) (Cons!43976 rHead!24 (t!339595 rTail!27))) Nil!43977)))

(declare-datatypes ((Unit!63507 0))(
  ( (Unit!63508) )
))
(declare-fun lt!1465956 () Unit!63507)

(declare-fun lemmaNoDuplicateCanReorder!2 (LexerInterface!6713 Rule!14048 Rule!14048 List!44100) Unit!63507)

(assert (=> b!4098545 (= lt!1465956 (lemmaNoDuplicateCanReorder!2 thiss!26455 rHead!24 (h!49396 rTail!27) (t!339595 rTail!27)))))

(declare-fun e!2543387 () Bool)

(assert (=> b!4098546 (= e!2543387 (and tp!1240565 tp!1240567))))

(declare-fun b!4098547 () Bool)

(declare-fun e!2543390 () Bool)

(declare-fun e!2543391 () Bool)

(declare-fun tp!1240570 () Bool)

(assert (=> b!4098547 (= e!2543390 (and e!2543391 tp!1240570))))

(declare-fun b!4098548 () Bool)

(declare-fun res!1675562 () Bool)

(assert (=> b!4098548 (=> (not res!1675562) (not e!2543386))))

(get-info :version)

(assert (=> b!4098548 (= res!1675562 ((_ is Cons!43976) rTail!27))))

(declare-fun b!4098549 () Bool)

(declare-fun res!1675565 () Bool)

(assert (=> b!4098549 (=> (not res!1675565) (not e!2543384))))

(declare-fun isEmpty!26313 (List!44100) Bool)

(assert (=> b!4098549 (= res!1675565 (not (isEmpty!26313 rTail!27)))))

(declare-fun b!4098550 () Bool)

(assert (=> b!4098550 (= e!2543385 true)))

(declare-fun lt!1465957 () Int)

(declare-fun getIndex!594 (List!44100 Rule!14048) Int)

(assert (=> b!4098550 (= lt!1465957 (getIndex!594 lt!1465954 (h!49396 rTail!27)))))

(declare-fun lt!1465955 () Int)

(assert (=> b!4098550 (= lt!1465955 (getIndex!594 lt!1465954 rHead!24))))

(declare-fun e!2543383 () Bool)

(declare-fun b!4098551 () Bool)

(declare-fun tp!1240569 () Bool)

(declare-fun inv!58703 (String!50519) Bool)

(declare-fun inv!58705 (TokenValueInjection!14136) Bool)

(assert (=> b!4098551 (= e!2543383 (and tp!1240569 (inv!58703 (tag!7984 rHead!24)) (inv!58705 (transformation!7124 rHead!24)) e!2543387))))

(declare-fun res!1675564 () Bool)

(assert (=> start!388240 (=> (not res!1675564) (not e!2543384))))

(assert (=> start!388240 (= res!1675564 ((_ is Lexer!6711) thiss!26455))))

(assert (=> start!388240 e!2543384))

(assert (=> start!388240 true))

(assert (=> start!388240 e!2543390))

(assert (=> start!388240 e!2543383))

(declare-fun b!4098552 () Bool)

(declare-fun tp!1240564 () Bool)

(declare-fun e!2543392 () Bool)

(assert (=> b!4098552 (= e!2543391 (and tp!1240564 (inv!58703 (tag!7984 (h!49396 rTail!27))) (inv!58705 (transformation!7124 (h!49396 rTail!27))) e!2543392))))

(declare-fun b!4098553 () Bool)

(declare-fun res!1675563 () Bool)

(assert (=> b!4098553 (=> res!1675563 e!2543385)))

(assert (=> b!4098553 (= res!1675563 (not (contains!8809 lt!1465954 (h!49396 rTail!27))))))

(assert (=> b!4098554 (= e!2543392 (and tp!1240566 tp!1240568))))

(assert (= (and start!388240 res!1675564) b!4098549))

(assert (= (and b!4098549 res!1675565) b!4098544))

(assert (= (and b!4098544 res!1675561) b!4098548))

(assert (= (and b!4098548 res!1675562) b!4098545))

(assert (= (and b!4098545 (not res!1675560)) b!4098553))

(assert (= (and b!4098553 (not res!1675563)) b!4098543))

(assert (= (and b!4098543 (not res!1675559)) b!4098550))

(assert (= b!4098552 b!4098554))

(assert (= b!4098547 b!4098552))

(assert (= (and start!388240 ((_ is Cons!43976) rTail!27)) b!4098547))

(assert (= b!4098551 b!4098546))

(assert (= start!388240 b!4098551))

(declare-fun m!4705481 () Bool)

(assert (=> b!4098553 m!4705481))

(declare-fun m!4705483 () Bool)

(assert (=> b!4098543 m!4705483))

(assert (=> b!4098543 m!4705483))

(declare-fun m!4705485 () Bool)

(assert (=> b!4098543 m!4705485))

(declare-fun m!4705487 () Bool)

(assert (=> b!4098552 m!4705487))

(declare-fun m!4705489 () Bool)

(assert (=> b!4098552 m!4705489))

(declare-fun m!4705491 () Bool)

(assert (=> b!4098550 m!4705491))

(declare-fun m!4705493 () Bool)

(assert (=> b!4098550 m!4705493))

(declare-fun m!4705495 () Bool)

(assert (=> b!4098549 m!4705495))

(declare-fun m!4705497 () Bool)

(assert (=> b!4098551 m!4705497))

(declare-fun m!4705499 () Bool)

(assert (=> b!4098551 m!4705499))

(declare-fun m!4705501 () Bool)

(assert (=> b!4098545 m!4705501))

(declare-fun m!4705503 () Bool)

(assert (=> b!4098545 m!4705503))

(declare-fun m!4705505 () Bool)

(assert (=> b!4098545 m!4705505))

(declare-fun m!4705507 () Bool)

(assert (=> b!4098544 m!4705507))

(check-sat b_and!316381 (not b!4098547) (not b!4098549) b_and!316377 (not b!4098552) b_and!316379 (not b!4098551) (not b!4098543) (not b!4098544) (not b_next!115405) (not b_next!115401) (not b!4098553) (not b!4098545) b_and!316375 (not b!4098550) (not b_next!115403) (not b_next!115407))
(check-sat b_and!316381 b_and!316377 b_and!316379 (not b_next!115405) (not b_next!115401) b_and!316375 (not b_next!115403) (not b_next!115407))
