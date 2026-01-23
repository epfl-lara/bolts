; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!147726 () Bool)

(assert start!147726)

(declare-fun b!1578998 () Bool)

(declare-fun b_free!42599 () Bool)

(declare-fun b_next!43303 () Bool)

(assert (=> b!1578998 (= b_free!42599 (not b_next!43303))))

(declare-fun tp!464854 () Bool)

(declare-fun b_and!110589 () Bool)

(assert (=> b!1578998 (= tp!464854 b_and!110589)))

(declare-fun b_free!42601 () Bool)

(declare-fun b_next!43305 () Bool)

(assert (=> b!1578998 (= b_free!42601 (not b_next!43305))))

(declare-fun tp!464858 () Bool)

(declare-fun b_and!110591 () Bool)

(assert (=> b!1578998 (= tp!464858 b_and!110591)))

(declare-fun b!1579001 () Bool)

(declare-fun b_free!42603 () Bool)

(declare-fun b_next!43307 () Bool)

(assert (=> b!1579001 (= b_free!42603 (not b_next!43307))))

(declare-fun tp!464855 () Bool)

(declare-fun b_and!110593 () Bool)

(assert (=> b!1579001 (= tp!464855 b_and!110593)))

(declare-fun b_free!42605 () Bool)

(declare-fun b_next!43309 () Bool)

(assert (=> b!1579001 (= b_free!42605 (not b_next!43309))))

(declare-fun tp!464851 () Bool)

(declare-fun b_and!110595 () Bool)

(assert (=> b!1579001 (= tp!464851 b_and!110595)))

(declare-fun b!1578990 () Bool)

(declare-fun e!1014286 () Bool)

(declare-fun e!1014284 () Bool)

(assert (=> b!1578990 (= e!1014286 e!1014284)))

(declare-fun res!703798 () Bool)

(assert (=> b!1578990 (=> (not res!703798) (not e!1014284))))

(declare-datatypes ((C!8932 0))(
  ( (C!8933 (val!5062 Int)) )
))
(declare-datatypes ((List!17397 0))(
  ( (Nil!17327) (Cons!17327 (h!22728 C!8932) (t!143574 List!17397)) )
))
(declare-fun lt!551734 () List!17397)

(declare-fun lt!551741 () List!17397)

(assert (=> b!1578990 (= res!703798 (= lt!551734 lt!551741))))

(declare-fun lt!551735 () List!17397)

(declare-fun lt!551744 () List!17397)

(declare-fun ++!4499 (List!17397 List!17397) List!17397)

(assert (=> b!1578990 (= lt!551741 (++!4499 lt!551735 lt!551744))))

(declare-datatypes ((IArray!11505 0))(
  ( (IArray!11506 (innerList!5810 List!17397)) )
))
(declare-datatypes ((Conc!5750 0))(
  ( (Node!5750 (left!14005 Conc!5750) (right!14335 Conc!5750) (csize!11730 Int) (cheight!5961 Int)) (Leaf!8496 (xs!8554 IArray!11505) (csize!11731 Int)) (Empty!5750) )
))
(declare-datatypes ((BalanceConc!11444 0))(
  ( (BalanceConc!11445 (c!255923 Conc!5750)) )
))
(declare-fun lt!551733 () BalanceConc!11444)

(declare-fun list!6691 (BalanceConc!11444) List!17397)

(assert (=> b!1578990 (= lt!551734 (list!6691 lt!551733))))

(declare-fun lt!551736 () BalanceConc!11444)

(assert (=> b!1578990 (= lt!551744 (list!6691 lt!551736))))

(declare-datatypes ((List!17398 0))(
  ( (Nil!17328) (Cons!17328 (h!22729 (_ BitVec 16)) (t!143575 List!17398)) )
))
(declare-datatypes ((TokenValue!3141 0))(
  ( (FloatLiteralValue!6282 (text!22432 List!17398)) (TokenValueExt!3140 (__x!11584 Int)) (Broken!15705 (value!96600 List!17398)) (Object!3210) (End!3141) (Def!3141) (Underscore!3141) (Match!3141) (Else!3141) (Error!3141) (Case!3141) (If!3141) (Extends!3141) (Abstract!3141) (Class!3141) (Val!3141) (DelimiterValue!6282 (del!3201 List!17398)) (KeywordValue!3147 (value!96601 List!17398)) (CommentValue!6282 (value!96602 List!17398)) (WhitespaceValue!6282 (value!96603 List!17398)) (IndentationValue!3141 (value!96604 List!17398)) (String!20036) (Int32!3141) (Broken!15706 (value!96605 List!17398)) (Boolean!3142) (Unit!26946) (OperatorValue!3144 (op!3201 List!17398)) (IdentifierValue!6282 (value!96606 List!17398)) (IdentifierValue!6283 (value!96607 List!17398)) (WhitespaceValue!6283 (value!96608 List!17398)) (True!6282) (False!6282) (Broken!15707 (value!96609 List!17398)) (Broken!15708 (value!96610 List!17398)) (True!6283) (RightBrace!3141) (RightBracket!3141) (Colon!3141) (Null!3141) (Comma!3141) (LeftBracket!3141) (False!6283) (LeftBrace!3141) (ImaginaryLiteralValue!3141 (text!22433 List!17398)) (StringLiteralValue!9423 (value!96611 List!17398)) (EOFValue!3141 (value!96612 List!17398)) (IdentValue!3141 (value!96613 List!17398)) (DelimiterValue!6283 (value!96614 List!17398)) (DedentValue!3141 (value!96615 List!17398)) (NewLineValue!3141 (value!96616 List!17398)) (IntegerValue!9423 (value!96617 (_ BitVec 32)) (text!22434 List!17398)) (IntegerValue!9424 (value!96618 Int) (text!22435 List!17398)) (Times!3141) (Or!3141) (Equal!3141) (Minus!3141) (Broken!15709 (value!96619 List!17398)) (And!3141) (Div!3141) (LessEqual!3141) (Mod!3141) (Concat!7520) (Not!3141) (Plus!3141) (SpaceValue!3141 (value!96620 List!17398)) (IntegerValue!9425 (value!96621 Int) (text!22436 List!17398)) (StringLiteralValue!9424 (text!22437 List!17398)) (FloatLiteralValue!6283 (text!22438 List!17398)) (BytesLiteralValue!3141 (value!96622 List!17398)) (CommentValue!6283 (value!96623 List!17398)) (StringLiteralValue!9425 (value!96624 List!17398)) (ErrorTokenValue!3141 (msg!3202 List!17398)) )
))
(declare-datatypes ((Regex!4379 0))(
  ( (ElementMatch!4379 (c!255924 C!8932)) (Concat!7521 (regOne!9270 Regex!4379) (regTwo!9270 Regex!4379)) (EmptyExpr!4379) (Star!4379 (reg!4708 Regex!4379)) (EmptyLang!4379) (Union!4379 (regOne!9271 Regex!4379) (regTwo!9271 Regex!4379)) )
))
(declare-datatypes ((String!20037 0))(
  ( (String!20038 (value!96625 String)) )
))
(declare-datatypes ((TokenValueInjection!5942 0))(
  ( (TokenValueInjection!5943 (toValue!4454 Int) (toChars!4313 Int)) )
))
(declare-datatypes ((Rule!5902 0))(
  ( (Rule!5903 (regex!3051 Regex!4379) (tag!3317 String!20037) (isSeparator!3051 Bool) (transformation!3051 TokenValueInjection!5942)) )
))
(declare-datatypes ((Token!5668 0))(
  ( (Token!5669 (value!96626 TokenValue!3141) (rule!4847 Rule!5902) (size!13952 Int) (originalCharacters!3865 List!17397)) )
))
(declare-datatypes ((List!17399 0))(
  ( (Nil!17329) (Cons!17329 (h!22730 Token!5668) (t!143576 List!17399)) )
))
(declare-fun tokens!457 () List!17399)

(declare-fun charsOf!1700 (Token!5668) BalanceConc!11444)

(assert (=> b!1578990 (= lt!551735 (list!6691 (charsOf!1700 (h!22730 tokens!457))))))

(declare-datatypes ((IArray!11507 0))(
  ( (IArray!11508 (innerList!5811 List!17399)) )
))
(declare-datatypes ((Conc!5751 0))(
  ( (Node!5751 (left!14006 Conc!5751) (right!14336 Conc!5751) (csize!11732 Int) (cheight!5962 Int)) (Leaf!8497 (xs!8555 IArray!11507) (csize!11733 Int)) (Empty!5751) )
))
(declare-datatypes ((BalanceConc!11446 0))(
  ( (BalanceConc!11447 (c!255925 Conc!5751)) )
))
(declare-datatypes ((tuple2!16796 0))(
  ( (tuple2!16797 (_1!9800 BalanceConc!11446) (_2!9800 BalanceConc!11444)) )
))
(declare-fun lt!551728 () tuple2!16796)

(declare-datatypes ((List!17400 0))(
  ( (Nil!17330) (Cons!17330 (h!22731 Rule!5902) (t!143577 List!17400)) )
))
(declare-fun rules!1846 () List!17400)

(declare-datatypes ((LexerInterface!2680 0))(
  ( (LexerInterfaceExt!2677 (__x!11585 Int)) (Lexer!2678) )
))
(declare-fun thiss!17113 () LexerInterface!2680)

(declare-fun lex!1164 (LexerInterface!2680 List!17400 BalanceConc!11444) tuple2!16796)

(assert (=> b!1578990 (= lt!551728 (lex!1164 thiss!17113 rules!1846 lt!551736))))

(declare-fun lt!551746 () BalanceConc!11446)

(declare-fun print!1211 (LexerInterface!2680 BalanceConc!11446) BalanceConc!11444)

(assert (=> b!1578990 (= lt!551736 (print!1211 thiss!17113 lt!551746))))

(declare-fun seqFromList!1852 (List!17399) BalanceConc!11446)

(assert (=> b!1578990 (= lt!551746 (seqFromList!1852 (t!143576 tokens!457)))))

(assert (=> b!1578990 (= lt!551733 (print!1211 thiss!17113 (seqFromList!1852 tokens!457)))))

(declare-fun b!1578991 () Bool)

(declare-fun e!1014281 () Bool)

(declare-fun e!1014285 () Bool)

(assert (=> b!1578991 (= e!1014281 e!1014285)))

(declare-fun res!703805 () Bool)

(assert (=> b!1578991 (=> res!703805 e!1014285)))

(declare-fun lt!551731 () List!17399)

(declare-fun lt!551737 () List!17399)

(declare-fun lt!551745 () List!17399)

(assert (=> b!1578991 (= res!703805 (or (not (= lt!551731 lt!551737)) (not (= lt!551737 lt!551745))))))

(declare-fun list!6692 (BalanceConc!11446) List!17399)

(assert (=> b!1578991 (= lt!551737 (list!6692 lt!551746))))

(assert (=> b!1578991 (= lt!551731 lt!551745)))

(declare-fun prepend!525 (BalanceConc!11446 Token!5668) BalanceConc!11446)

(assert (=> b!1578991 (= lt!551745 (list!6692 (prepend!525 (seqFromList!1852 (t!143576 (t!143576 tokens!457))) (h!22730 (t!143576 tokens!457)))))))

(declare-datatypes ((Unit!26947 0))(
  ( (Unit!26948) )
))
(declare-fun lt!551730 () Unit!26947)

(declare-fun seqFromListBHdTlConstructive!128 (Token!5668 List!17399 BalanceConc!11446) Unit!26947)

(assert (=> b!1578991 (= lt!551730 (seqFromListBHdTlConstructive!128 (h!22730 (t!143576 tokens!457)) (t!143576 (t!143576 tokens!457)) (_1!9800 lt!551728)))))

(declare-fun b!1578992 () Bool)

(declare-fun res!703799 () Bool)

(assert (=> b!1578992 (=> (not res!703799) (not e!1014286))))

(declare-fun tokensListTwoByTwoPredicateSeparableList!373 (LexerInterface!2680 List!17399 List!17400) Bool)

(assert (=> b!1578992 (= res!703799 (tokensListTwoByTwoPredicateSeparableList!373 thiss!17113 tokens!457 rules!1846))))

(declare-fun b!1578993 () Bool)

(assert (=> b!1578993 (= e!1014285 true)))

(declare-fun lt!551729 () List!17397)

(declare-fun printList!795 (LexerInterface!2680 List!17399) List!17397)

(assert (=> b!1578993 (= lt!551729 (printList!795 thiss!17113 (Cons!17329 (h!22730 tokens!457) Nil!17329)))))

(declare-fun lt!551743 () List!17397)

(declare-fun lt!551742 () BalanceConc!11444)

(assert (=> b!1578993 (= lt!551743 (list!6691 lt!551742))))

(declare-fun lt!551739 () BalanceConc!11446)

(declare-fun printTailRec!733 (LexerInterface!2680 BalanceConc!11446 Int BalanceConc!11444) BalanceConc!11444)

(assert (=> b!1578993 (= lt!551742 (printTailRec!733 thiss!17113 lt!551739 0 (BalanceConc!11445 Empty!5750)))))

(assert (=> b!1578993 (= lt!551742 (print!1211 thiss!17113 lt!551739))))

(declare-fun singletonSeq!1387 (Token!5668) BalanceConc!11446)

(assert (=> b!1578993 (= lt!551739 (singletonSeq!1387 (h!22730 tokens!457)))))

(declare-datatypes ((tuple2!16798 0))(
  ( (tuple2!16799 (_1!9801 Token!5668) (_2!9801 List!17397)) )
))
(declare-datatypes ((Option!3102 0))(
  ( (None!3101) (Some!3101 (v!23932 tuple2!16798)) )
))
(declare-fun lt!551732 () Option!3102)

(declare-fun maxPrefix!1244 (LexerInterface!2680 List!17400 List!17397) Option!3102)

(assert (=> b!1578993 (= lt!551732 (maxPrefix!1244 thiss!17113 rules!1846 lt!551734))))

(declare-fun b!1578994 () Bool)

(declare-fun e!1014283 () Bool)

(declare-fun e!1014291 () Bool)

(declare-fun tp!464853 () Bool)

(assert (=> b!1578994 (= e!1014283 (and e!1014291 tp!464853))))

(declare-fun b!1578995 () Bool)

(declare-fun e!1014279 () Bool)

(declare-fun tp!464850 () Bool)

(declare-fun e!1014282 () Bool)

(declare-fun inv!22741 (String!20037) Bool)

(declare-fun inv!22744 (TokenValueInjection!5942) Bool)

(assert (=> b!1578995 (= e!1014282 (and tp!464850 (inv!22741 (tag!3317 (rule!4847 (h!22730 tokens!457)))) (inv!22744 (transformation!3051 (rule!4847 (h!22730 tokens!457)))) e!1014279))))

(declare-fun b!1578996 () Bool)

(declare-fun res!703797 () Bool)

(assert (=> b!1578996 (=> (not res!703797) (not e!1014286))))

(declare-fun rulesProduceEachTokenIndividuallyList!882 (LexerInterface!2680 List!17400 List!17399) Bool)

(assert (=> b!1578996 (= res!703797 (rulesProduceEachTokenIndividuallyList!882 thiss!17113 rules!1846 tokens!457))))

(declare-fun b!1578997 () Bool)

(declare-fun res!703806 () Bool)

(assert (=> b!1578997 (=> res!703806 e!1014285)))

(declare-fun separableTokensPredicate!622 (LexerInterface!2680 Token!5668 Token!5668 List!17400) Bool)

(assert (=> b!1578997 (= res!703806 (not (separableTokensPredicate!622 thiss!17113 (h!22730 tokens!457) (h!22730 (t!143576 tokens!457)) rules!1846)))))

(declare-fun e!1014280 () Bool)

(assert (=> b!1578998 (= e!1014280 (and tp!464854 tp!464858))))

(declare-fun b!1578999 () Bool)

(assert (=> b!1578999 (= e!1014284 (not e!1014281))))

(declare-fun res!703802 () Bool)

(assert (=> b!1578999 (=> res!703802 e!1014281)))

(assert (=> b!1578999 (= res!703802 (not (= lt!551731 (t!143576 tokens!457))))))

(assert (=> b!1578999 (= lt!551731 (list!6692 (_1!9800 lt!551728)))))

(declare-fun lt!551738 () Unit!26947)

(declare-fun theoremInvertabilityWhenTokenListSeparable!125 (LexerInterface!2680 List!17400 List!17399) Unit!26947)

(assert (=> b!1578999 (= lt!551738 (theoremInvertabilityWhenTokenListSeparable!125 thiss!17113 rules!1846 (t!143576 tokens!457)))))

(declare-fun isPrefix!1311 (List!17397 List!17397) Bool)

(assert (=> b!1578999 (isPrefix!1311 lt!551735 lt!551741)))

(declare-fun lt!551740 () Unit!26947)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!836 (List!17397 List!17397) Unit!26947)

(assert (=> b!1578999 (= lt!551740 (lemmaConcatTwoListThenFirstIsPrefix!836 lt!551735 lt!551744))))

(declare-fun b!1579000 () Bool)

(declare-fun res!703800 () Bool)

(assert (=> b!1579000 (=> (not res!703800) (not e!1014286))))

(declare-fun isEmpty!10349 (List!17400) Bool)

(assert (=> b!1579000 (= res!703800 (not (isEmpty!10349 rules!1846)))))

(assert (=> b!1579001 (= e!1014279 (and tp!464855 tp!464851))))

(declare-fun res!703803 () Bool)

(assert (=> start!147726 (=> (not res!703803) (not e!1014286))))

(get-info :version)

(assert (=> start!147726 (= res!703803 ((_ is Lexer!2678) thiss!17113))))

(assert (=> start!147726 e!1014286))

(assert (=> start!147726 true))

(assert (=> start!147726 e!1014283))

(declare-fun e!1014289 () Bool)

(assert (=> start!147726 e!1014289))

(declare-fun b!1579002 () Bool)

(declare-fun tp!464856 () Bool)

(declare-fun e!1014292 () Bool)

(declare-fun inv!21 (TokenValue!3141) Bool)

(assert (=> b!1579002 (= e!1014292 (and (inv!21 (value!96626 (h!22730 tokens!457))) e!1014282 tp!464856))))

(declare-fun tp!464852 () Bool)

(declare-fun b!1579003 () Bool)

(assert (=> b!1579003 (= e!1014291 (and tp!464852 (inv!22741 (tag!3317 (h!22731 rules!1846))) (inv!22744 (transformation!3051 (h!22731 rules!1846))) e!1014280))))

(declare-fun tp!464857 () Bool)

(declare-fun b!1579004 () Bool)

(declare-fun inv!22745 (Token!5668) Bool)

(assert (=> b!1579004 (= e!1014289 (and (inv!22745 (h!22730 tokens!457)) e!1014292 tp!464857))))

(declare-fun b!1579005 () Bool)

(declare-fun res!703804 () Bool)

(assert (=> b!1579005 (=> (not res!703804) (not e!1014286))))

(assert (=> b!1579005 (= res!703804 (and (not ((_ is Nil!17329) tokens!457)) (not ((_ is Nil!17329) (t!143576 tokens!457)))))))

(declare-fun b!1579006 () Bool)

(declare-fun res!703801 () Bool)

(assert (=> b!1579006 (=> (not res!703801) (not e!1014286))))

(declare-fun rulesInvariant!2349 (LexerInterface!2680 List!17400) Bool)

(assert (=> b!1579006 (= res!703801 (rulesInvariant!2349 thiss!17113 rules!1846))))

(assert (= (and start!147726 res!703803) b!1579000))

(assert (= (and b!1579000 res!703800) b!1579006))

(assert (= (and b!1579006 res!703801) b!1578996))

(assert (= (and b!1578996 res!703797) b!1578992))

(assert (= (and b!1578992 res!703799) b!1579005))

(assert (= (and b!1579005 res!703804) b!1578990))

(assert (= (and b!1578990 res!703798) b!1578999))

(assert (= (and b!1578999 (not res!703802)) b!1578991))

(assert (= (and b!1578991 (not res!703805)) b!1578997))

(assert (= (and b!1578997 (not res!703806)) b!1578993))

(assert (= b!1579003 b!1578998))

(assert (= b!1578994 b!1579003))

(assert (= (and start!147726 ((_ is Cons!17330) rules!1846)) b!1578994))

(assert (= b!1578995 b!1579001))

(assert (= b!1579002 b!1578995))

(assert (= b!1579004 b!1579002))

(assert (= (and start!147726 ((_ is Cons!17329) tokens!457)) b!1579004))

(declare-fun m!1861389 () Bool)

(assert (=> b!1579004 m!1861389))

(declare-fun m!1861391 () Bool)

(assert (=> b!1578992 m!1861391))

(declare-fun m!1861393 () Bool)

(assert (=> b!1579003 m!1861393))

(declare-fun m!1861395 () Bool)

(assert (=> b!1579003 m!1861395))

(declare-fun m!1861397 () Bool)

(assert (=> b!1578996 m!1861397))

(declare-fun m!1861399 () Bool)

(assert (=> b!1578990 m!1861399))

(declare-fun m!1861401 () Bool)

(assert (=> b!1578990 m!1861401))

(declare-fun m!1861403 () Bool)

(assert (=> b!1578990 m!1861403))

(declare-fun m!1861405 () Bool)

(assert (=> b!1578990 m!1861405))

(declare-fun m!1861407 () Bool)

(assert (=> b!1578990 m!1861407))

(declare-fun m!1861409 () Bool)

(assert (=> b!1578990 m!1861409))

(declare-fun m!1861411 () Bool)

(assert (=> b!1578990 m!1861411))

(assert (=> b!1578990 m!1861401))

(declare-fun m!1861413 () Bool)

(assert (=> b!1578990 m!1861413))

(declare-fun m!1861415 () Bool)

(assert (=> b!1578990 m!1861415))

(declare-fun m!1861417 () Bool)

(assert (=> b!1578990 m!1861417))

(assert (=> b!1578990 m!1861409))

(declare-fun m!1861419 () Bool)

(assert (=> b!1579002 m!1861419))

(declare-fun m!1861421 () Bool)

(assert (=> b!1578991 m!1861421))

(declare-fun m!1861423 () Bool)

(assert (=> b!1578991 m!1861423))

(declare-fun m!1861425 () Bool)

(assert (=> b!1578991 m!1861425))

(declare-fun m!1861427 () Bool)

(assert (=> b!1578991 m!1861427))

(assert (=> b!1578991 m!1861423))

(declare-fun m!1861429 () Bool)

(assert (=> b!1578991 m!1861429))

(assert (=> b!1578991 m!1861427))

(declare-fun m!1861431 () Bool)

(assert (=> b!1578999 m!1861431))

(declare-fun m!1861433 () Bool)

(assert (=> b!1578999 m!1861433))

(declare-fun m!1861435 () Bool)

(assert (=> b!1578999 m!1861435))

(declare-fun m!1861437 () Bool)

(assert (=> b!1578999 m!1861437))

(declare-fun m!1861439 () Bool)

(assert (=> b!1578997 m!1861439))

(declare-fun m!1861441 () Bool)

(assert (=> b!1578993 m!1861441))

(declare-fun m!1861443 () Bool)

(assert (=> b!1578993 m!1861443))

(declare-fun m!1861445 () Bool)

(assert (=> b!1578993 m!1861445))

(declare-fun m!1861447 () Bool)

(assert (=> b!1578993 m!1861447))

(declare-fun m!1861449 () Bool)

(assert (=> b!1578993 m!1861449))

(declare-fun m!1861451 () Bool)

(assert (=> b!1578993 m!1861451))

(declare-fun m!1861453 () Bool)

(assert (=> b!1579000 m!1861453))

(declare-fun m!1861455 () Bool)

(assert (=> b!1579006 m!1861455))

(declare-fun m!1861457 () Bool)

(assert (=> b!1578995 m!1861457))

(declare-fun m!1861459 () Bool)

(assert (=> b!1578995 m!1861459))

(check-sat (not b!1578999) (not b!1578991) (not b_next!43309) (not b!1578990) (not b!1579000) (not b_next!43307) (not b!1579003) (not b!1579002) (not b_next!43305) b_and!110593 (not b!1578993) (not b!1578997) (not b!1578994) b_and!110589 (not b!1579006) b_and!110595 b_and!110591 (not b!1578995) (not b!1579004) (not b!1578992) (not b_next!43303) (not b!1578996))
(check-sat b_and!110595 b_and!110591 (not b_next!43309) (not b_next!43307) (not b_next!43303) (not b_next!43305) b_and!110593 b_and!110589)
