; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!147714 () Bool)

(assert start!147714)

(declare-fun b!1578692 () Bool)

(declare-fun b_free!42551 () Bool)

(declare-fun b_next!43255 () Bool)

(assert (=> b!1578692 (= b_free!42551 (not b_next!43255))))

(declare-fun tp!464688 () Bool)

(declare-fun b_and!110541 () Bool)

(assert (=> b!1578692 (= tp!464688 b_and!110541)))

(declare-fun b_free!42553 () Bool)

(declare-fun b_next!43257 () Bool)

(assert (=> b!1578692 (= b_free!42553 (not b_next!43257))))

(declare-fun tp!464693 () Bool)

(declare-fun b_and!110543 () Bool)

(assert (=> b!1578692 (= tp!464693 b_and!110543)))

(declare-fun b!1578689 () Bool)

(declare-fun b_free!42555 () Bool)

(declare-fun b_next!43259 () Bool)

(assert (=> b!1578689 (= b_free!42555 (not b_next!43259))))

(declare-fun tp!464692 () Bool)

(declare-fun b_and!110545 () Bool)

(assert (=> b!1578689 (= tp!464692 b_and!110545)))

(declare-fun b_free!42557 () Bool)

(declare-fun b_next!43261 () Bool)

(assert (=> b!1578689 (= b_free!42557 (not b_next!43261))))

(declare-fun tp!464696 () Bool)

(declare-fun b_and!110547 () Bool)

(assert (=> b!1578689 (= tp!464696 b_and!110547)))

(declare-fun tp!464690 () Bool)

(declare-fun e!1014032 () Bool)

(declare-fun b!1578684 () Bool)

(declare-fun e!1014036 () Bool)

(declare-datatypes ((List!17373 0))(
  ( (Nil!17303) (Cons!17303 (h!22704 (_ BitVec 16)) (t!143550 List!17373)) )
))
(declare-datatypes ((TokenValue!3135 0))(
  ( (FloatLiteralValue!6270 (text!22390 List!17373)) (TokenValueExt!3134 (__x!11572 Int)) (Broken!15675 (value!96429 List!17373)) (Object!3204) (End!3135) (Def!3135) (Underscore!3135) (Match!3135) (Else!3135) (Error!3135) (Case!3135) (If!3135) (Extends!3135) (Abstract!3135) (Class!3135) (Val!3135) (DelimiterValue!6270 (del!3195 List!17373)) (KeywordValue!3141 (value!96430 List!17373)) (CommentValue!6270 (value!96431 List!17373)) (WhitespaceValue!6270 (value!96432 List!17373)) (IndentationValue!3135 (value!96433 List!17373)) (String!20006) (Int32!3135) (Broken!15676 (value!96434 List!17373)) (Boolean!3136) (Unit!26928) (OperatorValue!3138 (op!3195 List!17373)) (IdentifierValue!6270 (value!96435 List!17373)) (IdentifierValue!6271 (value!96436 List!17373)) (WhitespaceValue!6271 (value!96437 List!17373)) (True!6270) (False!6270) (Broken!15677 (value!96438 List!17373)) (Broken!15678 (value!96439 List!17373)) (True!6271) (RightBrace!3135) (RightBracket!3135) (Colon!3135) (Null!3135) (Comma!3135) (LeftBracket!3135) (False!6271) (LeftBrace!3135) (ImaginaryLiteralValue!3135 (text!22391 List!17373)) (StringLiteralValue!9405 (value!96440 List!17373)) (EOFValue!3135 (value!96441 List!17373)) (IdentValue!3135 (value!96442 List!17373)) (DelimiterValue!6271 (value!96443 List!17373)) (DedentValue!3135 (value!96444 List!17373)) (NewLineValue!3135 (value!96445 List!17373)) (IntegerValue!9405 (value!96446 (_ BitVec 32)) (text!22392 List!17373)) (IntegerValue!9406 (value!96447 Int) (text!22393 List!17373)) (Times!3135) (Or!3135) (Equal!3135) (Minus!3135) (Broken!15679 (value!96448 List!17373)) (And!3135) (Div!3135) (LessEqual!3135) (Mod!3135) (Concat!7508) (Not!3135) (Plus!3135) (SpaceValue!3135 (value!96449 List!17373)) (IntegerValue!9407 (value!96450 Int) (text!22394 List!17373)) (StringLiteralValue!9406 (text!22395 List!17373)) (FloatLiteralValue!6271 (text!22396 List!17373)) (BytesLiteralValue!3135 (value!96451 List!17373)) (CommentValue!6271 (value!96452 List!17373)) (StringLiteralValue!9407 (value!96453 List!17373)) (ErrorTokenValue!3135 (msg!3196 List!17373)) )
))
(declare-datatypes ((C!8920 0))(
  ( (C!8921 (val!5056 Int)) )
))
(declare-datatypes ((List!17374 0))(
  ( (Nil!17304) (Cons!17304 (h!22705 C!8920) (t!143551 List!17374)) )
))
(declare-datatypes ((IArray!11481 0))(
  ( (IArray!11482 (innerList!5798 List!17374)) )
))
(declare-datatypes ((Conc!5738 0))(
  ( (Node!5738 (left!13990 Conc!5738) (right!14320 Conc!5738) (csize!11706 Int) (cheight!5949 Int)) (Leaf!8481 (xs!8542 IArray!11481) (csize!11707 Int)) (Empty!5738) )
))
(declare-datatypes ((BalanceConc!11420 0))(
  ( (BalanceConc!11421 (c!255899 Conc!5738)) )
))
(declare-datatypes ((Regex!4373 0))(
  ( (ElementMatch!4373 (c!255900 C!8920)) (Concat!7509 (regOne!9258 Regex!4373) (regTwo!9258 Regex!4373)) (EmptyExpr!4373) (Star!4373 (reg!4702 Regex!4373)) (EmptyLang!4373) (Union!4373 (regOne!9259 Regex!4373) (regTwo!9259 Regex!4373)) )
))
(declare-datatypes ((String!20007 0))(
  ( (String!20008 (value!96454 String)) )
))
(declare-datatypes ((TokenValueInjection!5930 0))(
  ( (TokenValueInjection!5931 (toValue!4448 Int) (toChars!4307 Int)) )
))
(declare-datatypes ((Rule!5890 0))(
  ( (Rule!5891 (regex!3045 Regex!4373) (tag!3311 String!20007) (isSeparator!3045 Bool) (transformation!3045 TokenValueInjection!5930)) )
))
(declare-datatypes ((List!17375 0))(
  ( (Nil!17305) (Cons!17305 (h!22706 Rule!5890) (t!143552 List!17375)) )
))
(declare-fun rules!1846 () List!17375)

(declare-fun inv!22720 (String!20007) Bool)

(declare-fun inv!22723 (TokenValueInjection!5930) Bool)

(assert (=> b!1578684 (= e!1014032 (and tp!464690 (inv!22720 (tag!3311 (h!22706 rules!1846))) (inv!22723 (transformation!3045 (h!22706 rules!1846))) e!1014036))))

(declare-fun b!1578685 () Bool)

(declare-fun res!703621 () Bool)

(declare-fun e!1014035 () Bool)

(assert (=> b!1578685 (=> (not res!703621) (not e!1014035))))

(declare-fun isEmpty!10343 (List!17375) Bool)

(assert (=> b!1578685 (= res!703621 (not (isEmpty!10343 rules!1846)))))

(declare-fun b!1578686 () Bool)

(declare-fun e!1014039 () Bool)

(declare-fun e!1014038 () Bool)

(assert (=> b!1578686 (= e!1014039 (not e!1014038))))

(declare-fun res!703622 () Bool)

(assert (=> b!1578686 (=> res!703622 e!1014038)))

(declare-datatypes ((Token!5656 0))(
  ( (Token!5657 (value!96455 TokenValue!3135) (rule!4841 Rule!5890) (size!13946 Int) (originalCharacters!3859 List!17374)) )
))
(declare-datatypes ((List!17376 0))(
  ( (Nil!17306) (Cons!17306 (h!22707 Token!5656) (t!143553 List!17376)) )
))
(declare-fun lt!551431 () List!17376)

(declare-fun tokens!457 () List!17376)

(assert (=> b!1578686 (= res!703622 (not (= lt!551431 (t!143553 tokens!457))))))

(declare-datatypes ((IArray!11483 0))(
  ( (IArray!11484 (innerList!5799 List!17376)) )
))
(declare-datatypes ((Conc!5739 0))(
  ( (Node!5739 (left!13991 Conc!5739) (right!14321 Conc!5739) (csize!11708 Int) (cheight!5950 Int)) (Leaf!8482 (xs!8543 IArray!11483) (csize!11709 Int)) (Empty!5739) )
))
(declare-datatypes ((BalanceConc!11422 0))(
  ( (BalanceConc!11423 (c!255901 Conc!5739)) )
))
(declare-datatypes ((tuple2!16774 0))(
  ( (tuple2!16775 (_1!9789 BalanceConc!11422) (_2!9789 BalanceConc!11420)) )
))
(declare-fun lt!551436 () tuple2!16774)

(declare-fun list!6679 (BalanceConc!11422) List!17376)

(assert (=> b!1578686 (= lt!551431 (list!6679 (_1!9789 lt!551436)))))

(declare-datatypes ((Unit!26929 0))(
  ( (Unit!26930) )
))
(declare-fun lt!551430 () Unit!26929)

(declare-datatypes ((LexerInterface!2674 0))(
  ( (LexerInterfaceExt!2671 (__x!11573 Int)) (Lexer!2672) )
))
(declare-fun thiss!17113 () LexerInterface!2674)

(declare-fun theoremInvertabilityWhenTokenListSeparable!119 (LexerInterface!2674 List!17375 List!17376) Unit!26929)

(assert (=> b!1578686 (= lt!551430 (theoremInvertabilityWhenTokenListSeparable!119 thiss!17113 rules!1846 (t!143553 tokens!457)))))

(declare-fun lt!551427 () List!17374)

(declare-fun lt!551434 () List!17374)

(declare-fun isPrefix!1305 (List!17374 List!17374) Bool)

(assert (=> b!1578686 (isPrefix!1305 lt!551427 lt!551434)))

(declare-fun lt!551428 () Unit!26929)

(declare-fun lt!551439 () List!17374)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!830 (List!17374 List!17374) Unit!26929)

(assert (=> b!1578686 (= lt!551428 (lemmaConcatTwoListThenFirstIsPrefix!830 lt!551427 lt!551439))))

(declare-fun e!1014033 () Bool)

(declare-fun tp!464694 () Bool)

(declare-fun b!1578687 () Bool)

(declare-fun e!1014027 () Bool)

(declare-fun inv!21 (TokenValue!3135) Bool)

(assert (=> b!1578687 (= e!1014033 (and (inv!21 (value!96455 (h!22707 tokens!457))) e!1014027 tp!464694))))

(declare-fun tp!464691 () Bool)

(declare-fun b!1578688 () Bool)

(declare-fun e!1014037 () Bool)

(assert (=> b!1578688 (= e!1014027 (and tp!464691 (inv!22720 (tag!3311 (rule!4841 (h!22707 tokens!457)))) (inv!22723 (transformation!3045 (rule!4841 (h!22707 tokens!457)))) e!1014037))))

(assert (=> b!1578689 (= e!1014036 (and tp!464692 tp!464696))))

(declare-fun b!1578690 () Bool)

(declare-fun e!1014031 () Bool)

(declare-fun tp!464689 () Bool)

(assert (=> b!1578690 (= e!1014031 (and e!1014032 tp!464689))))

(declare-fun res!703620 () Bool)

(assert (=> start!147714 (=> (not res!703620) (not e!1014035))))

(get-info :version)

(assert (=> start!147714 (= res!703620 ((_ is Lexer!2672) thiss!17113))))

(assert (=> start!147714 e!1014035))

(assert (=> start!147714 true))

(assert (=> start!147714 e!1014031))

(declare-fun e!1014030 () Bool)

(assert (=> start!147714 e!1014030))

(declare-fun b!1578691 () Bool)

(declare-fun e!1014029 () Bool)

(assert (=> b!1578691 (= e!1014038 e!1014029)))

(declare-fun res!703618 () Bool)

(assert (=> b!1578691 (=> res!703618 e!1014029)))

(declare-fun lt!551440 () List!17376)

(declare-fun lt!551433 () List!17376)

(assert (=> b!1578691 (= res!703618 (or (not (= lt!551431 lt!551433)) (not (= lt!551433 lt!551440))))))

(declare-fun lt!551435 () BalanceConc!11422)

(assert (=> b!1578691 (= lt!551433 (list!6679 lt!551435))))

(assert (=> b!1578691 (= lt!551431 lt!551440)))

(declare-fun prepend!519 (BalanceConc!11422 Token!5656) BalanceConc!11422)

(declare-fun seqFromList!1846 (List!17376) BalanceConc!11422)

(assert (=> b!1578691 (= lt!551440 (list!6679 (prepend!519 (seqFromList!1846 (t!143553 (t!143553 tokens!457))) (h!22707 (t!143553 tokens!457)))))))

(declare-fun lt!551429 () Unit!26929)

(declare-fun seqFromListBHdTlConstructive!122 (Token!5656 List!17376 BalanceConc!11422) Unit!26929)

(assert (=> b!1578691 (= lt!551429 (seqFromListBHdTlConstructive!122 (h!22707 (t!143553 tokens!457)) (t!143553 (t!143553 tokens!457)) (_1!9789 lt!551436)))))

(assert (=> b!1578692 (= e!1014037 (and tp!464688 tp!464693))))

(declare-fun b!1578693 () Bool)

(declare-fun res!703617 () Bool)

(assert (=> b!1578693 (=> (not res!703617) (not e!1014035))))

(declare-fun rulesInvariant!2343 (LexerInterface!2674 List!17375) Bool)

(assert (=> b!1578693 (= res!703617 (rulesInvariant!2343 thiss!17113 rules!1846))))

(declare-fun b!1578694 () Bool)

(assert (=> b!1578694 (= e!1014029 true)))

(declare-fun lt!551438 () Bool)

(declare-fun rulesValidInductive!908 (LexerInterface!2674 List!17375) Bool)

(assert (=> b!1578694 (= lt!551438 (rulesValidInductive!908 thiss!17113 rules!1846))))

(declare-fun b!1578695 () Bool)

(declare-fun res!703619 () Bool)

(assert (=> b!1578695 (=> res!703619 e!1014029)))

(declare-fun separableTokensPredicate!616 (LexerInterface!2674 Token!5656 Token!5656 List!17375) Bool)

(assert (=> b!1578695 (= res!703619 (not (separableTokensPredicate!616 thiss!17113 (h!22707 tokens!457) (h!22707 (t!143553 tokens!457)) rules!1846)))))

(declare-fun b!1578696 () Bool)

(declare-fun res!703623 () Bool)

(assert (=> b!1578696 (=> (not res!703623) (not e!1014035))))

(declare-fun rulesProduceEachTokenIndividuallyList!876 (LexerInterface!2674 List!17375 List!17376) Bool)

(assert (=> b!1578696 (= res!703623 (rulesProduceEachTokenIndividuallyList!876 thiss!17113 rules!1846 tokens!457))))

(declare-fun b!1578697 () Bool)

(declare-fun tp!464695 () Bool)

(declare-fun inv!22724 (Token!5656) Bool)

(assert (=> b!1578697 (= e!1014030 (and (inv!22724 (h!22707 tokens!457)) e!1014033 tp!464695))))

(declare-fun b!1578698 () Bool)

(assert (=> b!1578698 (= e!1014035 e!1014039)))

(declare-fun res!703625 () Bool)

(assert (=> b!1578698 (=> (not res!703625) (not e!1014039))))

(declare-fun lt!551437 () List!17374)

(assert (=> b!1578698 (= res!703625 (= lt!551437 lt!551434))))

(declare-fun ++!4493 (List!17374 List!17374) List!17374)

(assert (=> b!1578698 (= lt!551434 (++!4493 lt!551427 lt!551439))))

(declare-fun lt!551426 () BalanceConc!11420)

(declare-fun list!6680 (BalanceConc!11420) List!17374)

(assert (=> b!1578698 (= lt!551437 (list!6680 lt!551426))))

(declare-fun lt!551432 () BalanceConc!11420)

(assert (=> b!1578698 (= lt!551439 (list!6680 lt!551432))))

(declare-fun charsOf!1694 (Token!5656) BalanceConc!11420)

(assert (=> b!1578698 (= lt!551427 (list!6680 (charsOf!1694 (h!22707 tokens!457))))))

(declare-fun lex!1158 (LexerInterface!2674 List!17375 BalanceConc!11420) tuple2!16774)

(assert (=> b!1578698 (= lt!551436 (lex!1158 thiss!17113 rules!1846 lt!551432))))

(declare-fun print!1205 (LexerInterface!2674 BalanceConc!11422) BalanceConc!11420)

(assert (=> b!1578698 (= lt!551432 (print!1205 thiss!17113 lt!551435))))

(assert (=> b!1578698 (= lt!551435 (seqFromList!1846 (t!143553 tokens!457)))))

(assert (=> b!1578698 (= lt!551426 (print!1205 thiss!17113 (seqFromList!1846 tokens!457)))))

(declare-fun b!1578699 () Bool)

(declare-fun res!703626 () Bool)

(assert (=> b!1578699 (=> (not res!703626) (not e!1014035))))

(assert (=> b!1578699 (= res!703626 (and (not ((_ is Nil!17306) tokens!457)) (not ((_ is Nil!17306) (t!143553 tokens!457)))))))

(declare-fun b!1578700 () Bool)

(declare-fun res!703624 () Bool)

(assert (=> b!1578700 (=> (not res!703624) (not e!1014035))))

(declare-fun tokensListTwoByTwoPredicateSeparableList!367 (LexerInterface!2674 List!17376 List!17375) Bool)

(assert (=> b!1578700 (= res!703624 (tokensListTwoByTwoPredicateSeparableList!367 thiss!17113 tokens!457 rules!1846))))

(assert (= (and start!147714 res!703620) b!1578685))

(assert (= (and b!1578685 res!703621) b!1578693))

(assert (= (and b!1578693 res!703617) b!1578696))

(assert (= (and b!1578696 res!703623) b!1578700))

(assert (= (and b!1578700 res!703624) b!1578699))

(assert (= (and b!1578699 res!703626) b!1578698))

(assert (= (and b!1578698 res!703625) b!1578686))

(assert (= (and b!1578686 (not res!703622)) b!1578691))

(assert (= (and b!1578691 (not res!703618)) b!1578695))

(assert (= (and b!1578695 (not res!703619)) b!1578694))

(assert (= b!1578684 b!1578689))

(assert (= b!1578690 b!1578684))

(assert (= (and start!147714 ((_ is Cons!17305) rules!1846)) b!1578690))

(assert (= b!1578688 b!1578692))

(assert (= b!1578687 b!1578688))

(assert (= b!1578697 b!1578687))

(assert (= (and start!147714 ((_ is Cons!17306) tokens!457)) b!1578697))

(declare-fun m!1860991 () Bool)

(assert (=> b!1578696 m!1860991))

(declare-fun m!1860993 () Bool)

(assert (=> b!1578691 m!1860993))

(declare-fun m!1860995 () Bool)

(assert (=> b!1578691 m!1860995))

(declare-fun m!1860997 () Bool)

(assert (=> b!1578691 m!1860997))

(declare-fun m!1860999 () Bool)

(assert (=> b!1578691 m!1860999))

(declare-fun m!1861001 () Bool)

(assert (=> b!1578691 m!1861001))

(assert (=> b!1578691 m!1860995))

(assert (=> b!1578691 m!1860997))

(declare-fun m!1861003 () Bool)

(assert (=> b!1578694 m!1861003))

(declare-fun m!1861005 () Bool)

(assert (=> b!1578693 m!1861005))

(declare-fun m!1861007 () Bool)

(assert (=> b!1578695 m!1861007))

(declare-fun m!1861009 () Bool)

(assert (=> b!1578700 m!1861009))

(declare-fun m!1861011 () Bool)

(assert (=> b!1578698 m!1861011))

(declare-fun m!1861013 () Bool)

(assert (=> b!1578698 m!1861013))

(declare-fun m!1861015 () Bool)

(assert (=> b!1578698 m!1861015))

(declare-fun m!1861017 () Bool)

(assert (=> b!1578698 m!1861017))

(declare-fun m!1861019 () Bool)

(assert (=> b!1578698 m!1861019))

(declare-fun m!1861021 () Bool)

(assert (=> b!1578698 m!1861021))

(assert (=> b!1578698 m!1861013))

(declare-fun m!1861023 () Bool)

(assert (=> b!1578698 m!1861023))

(declare-fun m!1861025 () Bool)

(assert (=> b!1578698 m!1861025))

(declare-fun m!1861027 () Bool)

(assert (=> b!1578698 m!1861027))

(assert (=> b!1578698 m!1861019))

(declare-fun m!1861029 () Bool)

(assert (=> b!1578698 m!1861029))

(declare-fun m!1861031 () Bool)

(assert (=> b!1578685 m!1861031))

(declare-fun m!1861033 () Bool)

(assert (=> b!1578687 m!1861033))

(declare-fun m!1861035 () Bool)

(assert (=> b!1578697 m!1861035))

(declare-fun m!1861037 () Bool)

(assert (=> b!1578684 m!1861037))

(declare-fun m!1861039 () Bool)

(assert (=> b!1578684 m!1861039))

(declare-fun m!1861041 () Bool)

(assert (=> b!1578686 m!1861041))

(declare-fun m!1861043 () Bool)

(assert (=> b!1578686 m!1861043))

(declare-fun m!1861045 () Bool)

(assert (=> b!1578686 m!1861045))

(declare-fun m!1861047 () Bool)

(assert (=> b!1578686 m!1861047))

(declare-fun m!1861049 () Bool)

(assert (=> b!1578688 m!1861049))

(declare-fun m!1861051 () Bool)

(assert (=> b!1578688 m!1861051))

(check-sat (not b_next!43259) (not b!1578695) (not b_next!43257) b_and!110547 (not b!1578685) (not b_next!43261) (not b!1578684) b_and!110541 (not b!1578696) (not b!1578694) (not b_next!43255) b_and!110543 (not b!1578690) (not b!1578693) (not b!1578691) (not b!1578688) (not b!1578698) (not b!1578687) (not b!1578697) (not b!1578700) b_and!110545 (not b!1578686))
(check-sat (not b_next!43259) b_and!110543 (not b_next!43257) b_and!110547 (not b_next!43261) b_and!110541 b_and!110545 (not b_next!43255))
