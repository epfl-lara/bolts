; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!395810 () Bool)

(assert start!395810)

(declare-fun b!4156590 () Bool)

(declare-fun b_free!119403 () Bool)

(declare-fun b_next!120107 () Bool)

(assert (=> b!4156590 (= b_free!119403 (not b_next!120107))))

(declare-fun tp!1268121 () Bool)

(declare-fun b_and!323765 () Bool)

(assert (=> b!4156590 (= tp!1268121 b_and!323765)))

(declare-fun b_free!119405 () Bool)

(declare-fun b_next!120109 () Bool)

(assert (=> b!4156590 (= b_free!119405 (not b_next!120109))))

(declare-fun tp!1268123 () Bool)

(declare-fun b_and!323767 () Bool)

(assert (=> b!4156590 (= tp!1268123 b_and!323767)))

(declare-fun b!4156599 () Bool)

(declare-fun b_free!119407 () Bool)

(declare-fun b_next!120111 () Bool)

(assert (=> b!4156599 (= b_free!119407 (not b_next!120111))))

(declare-fun tp!1268128 () Bool)

(declare-fun b_and!323769 () Bool)

(assert (=> b!4156599 (= tp!1268128 b_and!323769)))

(declare-fun b_free!119409 () Bool)

(declare-fun b_next!120113 () Bool)

(assert (=> b!4156599 (= b_free!119409 (not b_next!120113))))

(declare-fun tp!1268129 () Bool)

(declare-fun b_and!323771 () Bool)

(assert (=> b!4156599 (= tp!1268129 b_and!323771)))

(declare-fun b!4156596 () Bool)

(declare-fun b_free!119411 () Bool)

(declare-fun b_next!120115 () Bool)

(assert (=> b!4156596 (= b_free!119411 (not b_next!120115))))

(declare-fun tp!1268124 () Bool)

(declare-fun b_and!323773 () Bool)

(assert (=> b!4156596 (= tp!1268124 b_and!323773)))

(declare-fun b_free!119413 () Bool)

(declare-fun b_next!120117 () Bool)

(assert (=> b!4156596 (= b_free!119413 (not b_next!120117))))

(declare-fun tp!1268127 () Bool)

(declare-fun b_and!323775 () Bool)

(assert (=> b!4156596 (= tp!1268127 b_and!323775)))

(declare-fun e!2579464 () Bool)

(assert (=> b!4156590 (= e!2579464 (and tp!1268121 tp!1268123))))

(declare-fun b!4156591 () Bool)

(declare-fun e!2579466 () Bool)

(declare-fun e!2579462 () Bool)

(assert (=> b!4156591 (= e!2579466 e!2579462)))

(declare-fun res!1702360 () Bool)

(assert (=> b!4156591 (=> (not res!1702360) (not e!2579462))))

(declare-datatypes ((List!45420 0))(
  ( (Nil!45296) (Cons!45296 (h!50716 (_ BitVec 16)) (t!343451 List!45420)) )
))
(declare-datatypes ((TokenValue!7710 0))(
  ( (FloatLiteralValue!15420 (text!54415 List!45420)) (TokenValueExt!7709 (__x!27637 Int)) (Broken!38550 (value!233665 List!45420)) (Object!7833) (End!7710) (Def!7710) (Underscore!7710) (Match!7710) (Else!7710) (Error!7710) (Case!7710) (If!7710) (Extends!7710) (Abstract!7710) (Class!7710) (Val!7710) (DelimiterValue!15420 (del!7770 List!45420)) (KeywordValue!7716 (value!233666 List!45420)) (CommentValue!15420 (value!233667 List!45420)) (WhitespaceValue!15420 (value!233668 List!45420)) (IndentationValue!7710 (value!233669 List!45420)) (String!52299) (Int32!7710) (Broken!38551 (value!233670 List!45420)) (Boolean!7711) (Unit!64466) (OperatorValue!7713 (op!7770 List!45420)) (IdentifierValue!15420 (value!233671 List!45420)) (IdentifierValue!15421 (value!233672 List!45420)) (WhitespaceValue!15421 (value!233673 List!45420)) (True!15420) (False!15420) (Broken!38552 (value!233674 List!45420)) (Broken!38553 (value!233675 List!45420)) (True!15421) (RightBrace!7710) (RightBracket!7710) (Colon!7710) (Null!7710) (Comma!7710) (LeftBracket!7710) (False!15421) (LeftBrace!7710) (ImaginaryLiteralValue!7710 (text!54416 List!45420)) (StringLiteralValue!23130 (value!233676 List!45420)) (EOFValue!7710 (value!233677 List!45420)) (IdentValue!7710 (value!233678 List!45420)) (DelimiterValue!15421 (value!233679 List!45420)) (DedentValue!7710 (value!233680 List!45420)) (NewLineValue!7710 (value!233681 List!45420)) (IntegerValue!23130 (value!233682 (_ BitVec 32)) (text!54417 List!45420)) (IntegerValue!23131 (value!233683 Int) (text!54418 List!45420)) (Times!7710) (Or!7710) (Equal!7710) (Minus!7710) (Broken!38554 (value!233684 List!45420)) (And!7710) (Div!7710) (LessEqual!7710) (Mod!7710) (Concat!20095) (Not!7710) (Plus!7710) (SpaceValue!7710 (value!233685 List!45420)) (IntegerValue!23132 (value!233686 Int) (text!54419 List!45420)) (StringLiteralValue!23131 (text!54420 List!45420)) (FloatLiteralValue!15421 (text!54421 List!45420)) (BytesLiteralValue!7710 (value!233687 List!45420)) (CommentValue!15421 (value!233688 List!45420)) (StringLiteralValue!23132 (value!233689 List!45420)) (ErrorTokenValue!7710 (msg!7771 List!45420)) )
))
(declare-datatypes ((C!24956 0))(
  ( (C!24957 (val!14588 Int)) )
))
(declare-datatypes ((Regex!12385 0))(
  ( (ElementMatch!12385 (c!711456 C!24956)) (Concat!20096 (regOne!25282 Regex!12385) (regTwo!25282 Regex!12385)) (EmptyExpr!12385) (Star!12385 (reg!12714 Regex!12385)) (EmptyLang!12385) (Union!12385 (regOne!25283 Regex!12385) (regTwo!25283 Regex!12385)) )
))
(declare-datatypes ((List!45421 0))(
  ( (Nil!45297) (Cons!45297 (h!50717 C!24956) (t!343452 List!45421)) )
))
(declare-datatypes ((String!52300 0))(
  ( (String!52301 (value!233690 String)) )
))
(declare-datatypes ((IArray!27387 0))(
  ( (IArray!27388 (innerList!13751 List!45421)) )
))
(declare-datatypes ((Conc!13691 0))(
  ( (Node!13691 (left!33853 Conc!13691) (right!34183 Conc!13691) (csize!27612 Int) (cheight!13902 Int)) (Leaf!21146 (xs!16997 IArray!27387) (csize!27613 Int)) (Empty!13691) )
))
(declare-datatypes ((BalanceConc!26976 0))(
  ( (BalanceConc!26977 (c!711457 Conc!13691)) )
))
(declare-datatypes ((TokenValueInjection!14848 0))(
  ( (TokenValueInjection!14849 (toValue!10144 Int) (toChars!10003 Int)) )
))
(declare-datatypes ((Rule!14760 0))(
  ( (Rule!14761 (regex!7480 Regex!12385) (tag!8344 String!52300) (isSeparator!7480 Bool) (transformation!7480 TokenValueInjection!14848)) )
))
(declare-fun lt!1481535 () Rule!14760)

(declare-fun r1!615 () Rule!14760)

(assert (=> b!4156591 (= res!1702360 (not (= lt!1481535 r1!615)))))

(declare-datatypes ((List!45422 0))(
  ( (Nil!45298) (Cons!45298 (h!50718 Rule!14760) (t!343453 List!45422)) )
))
(declare-fun rules!4102 () List!45422)

(declare-fun head!8802 (List!45422) Rule!14760)

(assert (=> b!4156591 (= lt!1481535 (head!8802 rules!4102))))

(declare-fun e!2579457 () Bool)

(declare-fun tp!1268130 () Bool)

(declare-fun b!4156592 () Bool)

(declare-fun inv!59845 (String!52300) Bool)

(declare-fun inv!59847 (TokenValueInjection!14848) Bool)

(assert (=> b!4156592 (= e!2579457 (and tp!1268130 (inv!59845 (tag!8344 (h!50718 rules!4102))) (inv!59847 (transformation!7480 (h!50718 rules!4102))) e!2579464))))

(declare-fun e!2579463 () Bool)

(declare-fun b!4156593 () Bool)

(declare-fun e!2579461 () Bool)

(declare-fun tp!1268126 () Bool)

(assert (=> b!4156593 (= e!2579463 (and tp!1268126 (inv!59845 (tag!8344 r1!615)) (inv!59847 (transformation!7480 r1!615)) e!2579461))))

(declare-fun b!4156594 () Bool)

(declare-fun r2!597 () Rule!14760)

(assert (=> b!4156594 (= e!2579462 (not (not (= r1!615 r2!597))))))

(declare-datatypes ((LexerInterface!7069 0))(
  ( (LexerInterfaceExt!7066 (__x!27638 Int)) (Lexer!7067) )
))
(declare-fun thiss!26968 () LexerInterface!7069)

(declare-fun lt!1481536 () List!45422)

(declare-datatypes ((List!45423 0))(
  ( (Nil!45299) (Cons!45299 (h!50719 String!52300) (t!343454 List!45423)) )
))
(declare-fun noDuplicateTag!3057 (LexerInterface!7069 List!45422 List!45423) Bool)

(assert (=> b!4156594 (noDuplicateTag!3057 thiss!26968 lt!1481536 Nil!45299)))

(declare-datatypes ((Unit!64467 0))(
  ( (Unit!64468) )
))
(declare-fun lt!1481534 () Unit!64467)

(declare-fun lemmaNoDupTagThenAlsoWithSubListAcc!32 (LexerInterface!7069 List!45423 List!45423 List!45422) Unit!64467)

(assert (=> b!4156594 (= lt!1481534 (lemmaNoDupTagThenAlsoWithSubListAcc!32 thiss!26968 (Cons!45299 (tag!8344 lt!1481535) Nil!45299) Nil!45299 lt!1481536))))

(declare-fun tail!6635 (List!45422) List!45422)

(assert (=> b!4156594 (= lt!1481536 (tail!6635 rules!4102))))

(assert (=> b!4156596 (= e!2579461 (and tp!1268124 tp!1268127))))

(declare-fun b!4156597 () Bool)

(declare-fun res!1702364 () Bool)

(assert (=> b!4156597 (=> (not res!1702364) (not e!2579466))))

(declare-fun contains!9191 (List!45422 Rule!14760) Bool)

(assert (=> b!4156597 (= res!1702364 (contains!9191 rules!4102 r2!597))))

(declare-fun b!4156598 () Bool)

(declare-fun res!1702359 () Bool)

(assert (=> b!4156598 (=> (not res!1702359) (not e!2579466))))

(declare-fun noDuplicateTag$default$2!62 (LexerInterface!7069) List!45423)

(assert (=> b!4156598 (= res!1702359 (noDuplicateTag!3057 thiss!26968 rules!4102 (noDuplicateTag$default$2!62 thiss!26968)))))

(declare-fun e!2579459 () Bool)

(assert (=> b!4156599 (= e!2579459 (and tp!1268128 tp!1268129))))

(declare-fun b!4156600 () Bool)

(declare-fun res!1702362 () Bool)

(assert (=> b!4156600 (=> (not res!1702362) (not e!2579466))))

(declare-fun getIndex!822 (List!45422 Rule!14760) Int)

(assert (=> b!4156600 (= res!1702362 (< (getIndex!822 rules!4102 r1!615) (getIndex!822 rules!4102 r2!597)))))

(declare-fun b!4156601 () Bool)

(declare-fun res!1702361 () Bool)

(assert (=> b!4156601 (=> (not res!1702361) (not e!2579466))))

(assert (=> b!4156601 (= res!1702361 (contains!9191 rules!4102 r1!615))))

(declare-fun b!4156602 () Bool)

(declare-fun e!2579458 () Bool)

(declare-fun tp!1268125 () Bool)

(assert (=> b!4156602 (= e!2579458 (and e!2579457 tp!1268125))))

(declare-fun res!1702363 () Bool)

(assert (=> start!395810 (=> (not res!1702363) (not e!2579466))))

(get-info :version)

(assert (=> start!395810 (= res!1702363 ((_ is Lexer!7067) thiss!26968))))

(assert (=> start!395810 e!2579466))

(assert (=> start!395810 true))

(assert (=> start!395810 e!2579458))

(assert (=> start!395810 e!2579463))

(declare-fun e!2579468 () Bool)

(assert (=> start!395810 e!2579468))

(declare-fun tp!1268122 () Bool)

(declare-fun b!4156595 () Bool)

(assert (=> b!4156595 (= e!2579468 (and tp!1268122 (inv!59845 (tag!8344 r2!597)) (inv!59847 (transformation!7480 r2!597)) e!2579459))))

(assert (= (and start!395810 res!1702363) b!4156601))

(assert (= (and b!4156601 res!1702361) b!4156597))

(assert (= (and b!4156597 res!1702364) b!4156598))

(assert (= (and b!4156598 res!1702359) b!4156600))

(assert (= (and b!4156600 res!1702362) b!4156591))

(assert (= (and b!4156591 res!1702360) b!4156594))

(assert (= b!4156592 b!4156590))

(assert (= b!4156602 b!4156592))

(assert (= (and start!395810 ((_ is Cons!45298) rules!4102)) b!4156602))

(assert (= b!4156593 b!4156596))

(assert (= start!395810 b!4156593))

(assert (= b!4156595 b!4156599))

(assert (= start!395810 b!4156595))

(declare-fun m!4750649 () Bool)

(assert (=> b!4156600 m!4750649))

(declare-fun m!4750651 () Bool)

(assert (=> b!4156600 m!4750651))

(declare-fun m!4750653 () Bool)

(assert (=> b!4156593 m!4750653))

(declare-fun m!4750655 () Bool)

(assert (=> b!4156593 m!4750655))

(declare-fun m!4750657 () Bool)

(assert (=> b!4156592 m!4750657))

(declare-fun m!4750659 () Bool)

(assert (=> b!4156592 m!4750659))

(declare-fun m!4750661 () Bool)

(assert (=> b!4156595 m!4750661))

(declare-fun m!4750663 () Bool)

(assert (=> b!4156595 m!4750663))

(declare-fun m!4750665 () Bool)

(assert (=> b!4156598 m!4750665))

(assert (=> b!4156598 m!4750665))

(declare-fun m!4750667 () Bool)

(assert (=> b!4156598 m!4750667))

(declare-fun m!4750669 () Bool)

(assert (=> b!4156597 m!4750669))

(declare-fun m!4750671 () Bool)

(assert (=> b!4156601 m!4750671))

(declare-fun m!4750673 () Bool)

(assert (=> b!4156591 m!4750673))

(declare-fun m!4750675 () Bool)

(assert (=> b!4156594 m!4750675))

(declare-fun m!4750677 () Bool)

(assert (=> b!4156594 m!4750677))

(declare-fun m!4750679 () Bool)

(assert (=> b!4156594 m!4750679))

(check-sat (not b_next!120115) (not b!4156593) (not b!4156602) b_and!323765 b_and!323767 (not b!4156592) (not b!4156591) (not b_next!120107) b_and!323773 (not b_next!120113) b_and!323769 (not b!4156594) (not b!4156595) (not b!4156598) b_and!323775 (not b_next!120111) (not b!4156600) (not b!4156601) (not b_next!120117) (not b_next!120109) (not b!4156597) b_and!323771)
(check-sat (not b_next!120115) b_and!323765 b_and!323767 (not b_next!120107) b_and!323773 (not b_next!120113) b_and!323771 b_and!323769 b_and!323775 (not b_next!120111) (not b_next!120117) (not b_next!120109))
