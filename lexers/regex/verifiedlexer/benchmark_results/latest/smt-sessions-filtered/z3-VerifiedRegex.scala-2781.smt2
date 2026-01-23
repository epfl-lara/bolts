; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!153382 () Bool)

(assert start!153382)

(declare-fun b!1619442 () Bool)

(declare-fun b_free!43623 () Bool)

(declare-fun b_next!44327 () Bool)

(assert (=> b!1619442 (= b_free!43623 (not b_next!44327))))

(declare-fun tp!471569 () Bool)

(declare-fun b_and!114877 () Bool)

(assert (=> b!1619442 (= tp!471569 b_and!114877)))

(declare-fun b_free!43625 () Bool)

(declare-fun b_next!44329 () Bool)

(assert (=> b!1619442 (= b_free!43625 (not b_next!44329))))

(declare-fun tp!471573 () Bool)

(declare-fun b_and!114879 () Bool)

(assert (=> b!1619442 (= tp!471573 b_and!114879)))

(declare-fun b!1619430 () Bool)

(declare-fun b_free!43627 () Bool)

(declare-fun b_next!44331 () Bool)

(assert (=> b!1619430 (= b_free!43627 (not b_next!44331))))

(declare-fun tp!471567 () Bool)

(declare-fun b_and!114881 () Bool)

(assert (=> b!1619430 (= tp!471567 b_and!114881)))

(declare-fun b_free!43629 () Bool)

(declare-fun b_next!44333 () Bool)

(assert (=> b!1619430 (= b_free!43629 (not b_next!44333))))

(declare-fun tp!471568 () Bool)

(declare-fun b_and!114883 () Bool)

(assert (=> b!1619430 (= tp!471568 b_and!114883)))

(declare-fun b!1619424 () Bool)

(declare-fun e!1038654 () Bool)

(declare-datatypes ((List!17793 0))(
  ( (Nil!17723) (Cons!17723 (h!23124 (_ BitVec 16)) (t!148632 List!17793)) )
))
(declare-datatypes ((TokenValue!3213 0))(
  ( (FloatLiteralValue!6426 (text!22936 List!17793)) (TokenValueExt!3212 (__x!11728 Int)) (Broken!16065 (value!98652 List!17793)) (Object!3282) (End!3213) (Def!3213) (Underscore!3213) (Match!3213) (Else!3213) (Error!3213) (Case!3213) (If!3213) (Extends!3213) (Abstract!3213) (Class!3213) (Val!3213) (DelimiterValue!6426 (del!3273 List!17793)) (KeywordValue!3219 (value!98653 List!17793)) (CommentValue!6426 (value!98654 List!17793)) (WhitespaceValue!6426 (value!98655 List!17793)) (IndentationValue!3213 (value!98656 List!17793)) (String!20396) (Int32!3213) (Broken!16066 (value!98657 List!17793)) (Boolean!3214) (Unit!28590) (OperatorValue!3216 (op!3273 List!17793)) (IdentifierValue!6426 (value!98658 List!17793)) (IdentifierValue!6427 (value!98659 List!17793)) (WhitespaceValue!6427 (value!98660 List!17793)) (True!6426) (False!6426) (Broken!16067 (value!98661 List!17793)) (Broken!16068 (value!98662 List!17793)) (True!6427) (RightBrace!3213) (RightBracket!3213) (Colon!3213) (Null!3213) (Comma!3213) (LeftBracket!3213) (False!6427) (LeftBrace!3213) (ImaginaryLiteralValue!3213 (text!22937 List!17793)) (StringLiteralValue!9639 (value!98663 List!17793)) (EOFValue!3213 (value!98664 List!17793)) (IdentValue!3213 (value!98665 List!17793)) (DelimiterValue!6427 (value!98666 List!17793)) (DedentValue!3213 (value!98667 List!17793)) (NewLineValue!3213 (value!98668 List!17793)) (IntegerValue!9639 (value!98669 (_ BitVec 32)) (text!22938 List!17793)) (IntegerValue!9640 (value!98670 Int) (text!22939 List!17793)) (Times!3213) (Or!3213) (Equal!3213) (Minus!3213) (Broken!16069 (value!98671 List!17793)) (And!3213) (Div!3213) (LessEqual!3213) (Mod!3213) (Concat!7664) (Not!3213) (Plus!3213) (SpaceValue!3213 (value!98672 List!17793)) (IntegerValue!9641 (value!98673 Int) (text!22940 List!17793)) (StringLiteralValue!9640 (text!22941 List!17793)) (FloatLiteralValue!6427 (text!22942 List!17793)) (BytesLiteralValue!3213 (value!98674 List!17793)) (CommentValue!6427 (value!98675 List!17793)) (StringLiteralValue!9641 (value!98676 List!17793)) (ErrorTokenValue!3213 (msg!3274 List!17793)) )
))
(declare-datatypes ((C!9076 0))(
  ( (C!9077 (val!5134 Int)) )
))
(declare-datatypes ((List!17794 0))(
  ( (Nil!17724) (Cons!17724 (h!23125 C!9076) (t!148633 List!17794)) )
))
(declare-datatypes ((IArray!11793 0))(
  ( (IArray!11794 (innerList!5954 List!17794)) )
))
(declare-datatypes ((Conc!5894 0))(
  ( (Node!5894 (left!14265 Conc!5894) (right!14595 Conc!5894) (csize!12018 Int) (cheight!6105 Int)) (Leaf!8676 (xs!8726 IArray!11793) (csize!12019 Int)) (Empty!5894) )
))
(declare-datatypes ((BalanceConc!11732 0))(
  ( (BalanceConc!11733 (c!263787 Conc!5894)) )
))
(declare-datatypes ((Regex!4451 0))(
  ( (ElementMatch!4451 (c!263788 C!9076)) (Concat!7665 (regOne!9414 Regex!4451) (regTwo!9414 Regex!4451)) (EmptyExpr!4451) (Star!4451 (reg!4780 Regex!4451)) (EmptyLang!4451) (Union!4451 (regOne!9415 Regex!4451) (regTwo!9415 Regex!4451)) )
))
(declare-datatypes ((String!20397 0))(
  ( (String!20398 (value!98677 String)) )
))
(declare-datatypes ((TokenValueInjection!6086 0))(
  ( (TokenValueInjection!6087 (toValue!4550 Int) (toChars!4409 Int)) )
))
(declare-datatypes ((Rule!6046 0))(
  ( (Rule!6047 (regex!3123 Regex!4451) (tag!3401 String!20397) (isSeparator!3123 Bool) (transformation!3123 TokenValueInjection!6086)) )
))
(declare-datatypes ((Token!5812 0))(
  ( (Token!5813 (value!98678 TokenValue!3213) (rule!4949 Rule!6046) (size!14214 Int) (originalCharacters!3937 List!17794)) )
))
(declare-datatypes ((List!17795 0))(
  ( (Nil!17725) (Cons!17725 (h!23126 Token!5812) (t!148634 List!17795)) )
))
(declare-fun tokens!457 () List!17795)

(declare-fun lt!581796 () List!17794)

(declare-fun matchR!1950 (Regex!4451 List!17794) Bool)

(assert (=> b!1619424 (= e!1038654 (matchR!1950 (regex!3123 (rule!4949 (h!23126 tokens!457))) lt!581796))))

(declare-fun b!1619425 () Bool)

(declare-fun res!723040 () Bool)

(declare-fun e!1038657 () Bool)

(assert (=> b!1619425 (=> (not res!723040) (not e!1038657))))

(declare-datatypes ((List!17796 0))(
  ( (Nil!17726) (Cons!17726 (h!23127 Rule!6046) (t!148635 List!17796)) )
))
(declare-fun rules!1846 () List!17796)

(declare-datatypes ((LexerInterface!2752 0))(
  ( (LexerInterfaceExt!2749 (__x!11729 Int)) (Lexer!2750) )
))
(declare-fun thiss!17113 () LexerInterface!2752)

(declare-fun tokensListTwoByTwoPredicateSeparableList!445 (LexerInterface!2752 List!17795 List!17796) Bool)

(assert (=> b!1619425 (= res!723040 (tokensListTwoByTwoPredicateSeparableList!445 thiss!17113 tokens!457 rules!1846))))

(declare-fun b!1619426 () Bool)

(declare-fun res!723049 () Bool)

(declare-fun e!1038646 () Bool)

(assert (=> b!1619426 (=> (not res!723049) (not e!1038646))))

(declare-fun lt!581807 () List!17794)

(declare-fun lt!581805 () List!17794)

(declare-fun head!3376 (List!17794) C!9076)

(assert (=> b!1619426 (= res!723049 (= lt!581807 (Cons!17724 (head!3376 lt!581805) Nil!17724)))))

(declare-fun b!1619427 () Bool)

(declare-fun e!1038661 () Bool)

(declare-fun e!1038666 () Bool)

(assert (=> b!1619427 (= e!1038661 e!1038666)))

(declare-fun res!723046 () Bool)

(assert (=> b!1619427 (=> res!723046 e!1038666)))

(declare-fun lt!581802 () BalanceConc!11732)

(declare-fun lt!581812 () Regex!4451)

(declare-fun lt!581795 () BalanceConc!11732)

(declare-fun prefixMatchZipperSequence!499 (Regex!4451 BalanceConc!11732) Bool)

(declare-fun ++!4693 (BalanceConc!11732 BalanceConc!11732) BalanceConc!11732)

(assert (=> b!1619427 (= res!723046 (prefixMatchZipperSequence!499 lt!581812 (++!4693 lt!581802 lt!581795)))))

(declare-fun singletonSeq!1524 (C!9076) BalanceConc!11732)

(declare-fun apply!4476 (BalanceConc!11732 Int) C!9076)

(declare-fun charsOf!1772 (Token!5812) BalanceConc!11732)

(assert (=> b!1619427 (= lt!581795 (singletonSeq!1524 (apply!4476 (charsOf!1772 (h!23126 (t!148634 tokens!457))) 0)))))

(declare-fun rulesRegex!513 (LexerInterface!2752 List!17796) Regex!4451)

(assert (=> b!1619427 (= lt!581812 (rulesRegex!513 thiss!17113 rules!1846))))

(declare-fun b!1619428 () Bool)

(declare-fun res!723032 () Bool)

(assert (=> b!1619428 (=> (not res!723032) (not e!1038646))))

(assert (=> b!1619428 (= res!723032 (= lt!581807 (Cons!17724 (head!3376 (originalCharacters!3937 (h!23126 (t!148634 tokens!457)))) Nil!17724)))))

(declare-fun b!1619429 () Bool)

(declare-fun e!1038664 () Bool)

(declare-fun e!1038655 () Bool)

(declare-fun tp!471570 () Bool)

(declare-fun inv!23120 (String!20397) Bool)

(declare-fun inv!23123 (TokenValueInjection!6086) Bool)

(assert (=> b!1619429 (= e!1038655 (and tp!471570 (inv!23120 (tag!3401 (h!23127 rules!1846))) (inv!23123 (transformation!3123 (h!23127 rules!1846))) e!1038664))))

(assert (=> b!1619430 (= e!1038664 (and tp!471567 tp!471568))))

(declare-fun b!1619431 () Bool)

(declare-fun tp!471572 () Bool)

(declare-fun e!1038656 () Bool)

(declare-fun e!1038659 () Bool)

(declare-fun inv!23124 (Token!5812) Bool)

(assert (=> b!1619431 (= e!1038656 (and (inv!23124 (h!23126 tokens!457)) e!1038659 tp!471572))))

(declare-fun b!1619432 () Bool)

(declare-fun e!1038647 () Bool)

(assert (=> b!1619432 (= e!1038666 e!1038647)))

(declare-fun res!723053 () Bool)

(assert (=> b!1619432 (=> res!723053 e!1038647)))

(declare-fun prefixMatch!386 (Regex!4451 List!17794) Bool)

(declare-fun ++!4694 (List!17794 List!17794) List!17794)

(assert (=> b!1619432 (= res!723053 (prefixMatch!386 lt!581812 (++!4694 lt!581796 lt!581807)))))

(declare-fun list!6939 (BalanceConc!11732) List!17794)

(assert (=> b!1619432 (= lt!581807 (list!6939 lt!581795))))

(declare-fun b!1619433 () Bool)

(declare-fun res!723043 () Bool)

(assert (=> b!1619433 (=> (not res!723043) (not e!1038654))))

(declare-datatypes ((tuple2!17270 0))(
  ( (tuple2!17271 (_1!10037 Token!5812) (_2!10037 List!17794)) )
))
(declare-fun lt!581792 () tuple2!17270)

(declare-fun isEmpty!10741 (List!17794) Bool)

(assert (=> b!1619433 (= res!723043 (isEmpty!10741 (_2!10037 lt!581792)))))

(declare-fun b!1619434 () Bool)

(declare-fun e!1038665 () Bool)

(declare-fun e!1038652 () Bool)

(assert (=> b!1619434 (= e!1038665 e!1038652)))

(declare-fun res!723042 () Bool)

(assert (=> b!1619434 (=> res!723042 e!1038652)))

(declare-fun lt!581797 () List!17794)

(declare-fun lt!581810 () List!17794)

(assert (=> b!1619434 (= res!723042 (or (not (= lt!581797 lt!581810)) (not (= lt!581810 lt!581796)) (not (= lt!581797 lt!581796))))))

(declare-fun printList!867 (LexerInterface!2752 List!17795) List!17794)

(assert (=> b!1619434 (= lt!581810 (printList!867 thiss!17113 (Cons!17725 (h!23126 tokens!457) Nil!17725)))))

(declare-fun lt!581799 () BalanceConc!11732)

(assert (=> b!1619434 (= lt!581797 (list!6939 lt!581799))))

(declare-datatypes ((IArray!11795 0))(
  ( (IArray!11796 (innerList!5955 List!17795)) )
))
(declare-datatypes ((Conc!5895 0))(
  ( (Node!5895 (left!14266 Conc!5895) (right!14596 Conc!5895) (csize!12020 Int) (cheight!6106 Int)) (Leaf!8677 (xs!8727 IArray!11795) (csize!12021 Int)) (Empty!5895) )
))
(declare-datatypes ((BalanceConc!11734 0))(
  ( (BalanceConc!11735 (c!263789 Conc!5895)) )
))
(declare-fun lt!581800 () BalanceConc!11734)

(declare-fun printTailRec!805 (LexerInterface!2752 BalanceConc!11734 Int BalanceConc!11732) BalanceConc!11732)

(assert (=> b!1619434 (= lt!581799 (printTailRec!805 thiss!17113 lt!581800 0 (BalanceConc!11733 Empty!5894)))))

(declare-fun print!1283 (LexerInterface!2752 BalanceConc!11734) BalanceConc!11732)

(assert (=> b!1619434 (= lt!581799 (print!1283 thiss!17113 lt!581800))))

(declare-fun singletonSeq!1525 (Token!5812) BalanceConc!11734)

(assert (=> b!1619434 (= lt!581800 (singletonSeq!1525 (h!23126 tokens!457)))))

(declare-fun lt!581801 () List!17794)

(declare-datatypes ((Option!3257 0))(
  ( (None!3256) (Some!3256 (v!24255 tuple2!17270)) )
))
(declare-fun lt!581806 () Option!3257)

(declare-fun maxPrefix!1316 (LexerInterface!2752 List!17796 List!17794) Option!3257)

(assert (=> b!1619434 (= lt!581806 (maxPrefix!1316 thiss!17113 rules!1846 lt!581801))))

(declare-fun b!1619435 () Bool)

(declare-fun e!1038650 () Bool)

(assert (=> b!1619435 (= e!1038650 e!1038665)))

(declare-fun res!723041 () Bool)

(assert (=> b!1619435 (=> res!723041 e!1038665)))

(declare-fun lt!581808 () List!17795)

(declare-fun lt!581811 () List!17795)

(declare-fun lt!581788 () List!17795)

(assert (=> b!1619435 (= res!723041 (or (not (= lt!581788 lt!581811)) (not (= lt!581811 lt!581808))))))

(declare-fun lt!581791 () BalanceConc!11734)

(declare-fun list!6940 (BalanceConc!11734) List!17795)

(assert (=> b!1619435 (= lt!581811 (list!6940 lt!581791))))

(assert (=> b!1619435 (= lt!581788 lt!581808)))

(declare-fun prepend!637 (BalanceConc!11734 Token!5812) BalanceConc!11734)

(declare-fun seqFromList!1995 (List!17795) BalanceConc!11734)

(assert (=> b!1619435 (= lt!581808 (list!6940 (prepend!637 (seqFromList!1995 (t!148634 (t!148634 tokens!457))) (h!23126 (t!148634 tokens!457)))))))

(declare-datatypes ((Unit!28591 0))(
  ( (Unit!28592) )
))
(declare-fun lt!581794 () Unit!28591)

(declare-datatypes ((tuple2!17272 0))(
  ( (tuple2!17273 (_1!10038 BalanceConc!11734) (_2!10038 BalanceConc!11732)) )
))
(declare-fun lt!581787 () tuple2!17272)

(declare-fun seqFromListBHdTlConstructive!200 (Token!5812 List!17795 BalanceConc!11734) Unit!28591)

(assert (=> b!1619435 (= lt!581794 (seqFromListBHdTlConstructive!200 (h!23126 (t!148634 tokens!457)) (t!148634 (t!148634 tokens!457)) (_1!10038 lt!581787)))))

(declare-fun b!1619436 () Bool)

(declare-fun res!723039 () Bool)

(assert (=> b!1619436 (=> res!723039 e!1038652)))

(declare-fun isEmpty!10742 (BalanceConc!11734) Bool)

(declare-fun lex!1236 (LexerInterface!2752 List!17796 BalanceConc!11732) tuple2!17272)

(declare-fun seqFromList!1996 (List!17794) BalanceConc!11732)

(assert (=> b!1619436 (= res!723039 (isEmpty!10742 (_1!10038 (lex!1236 thiss!17113 rules!1846 (seqFromList!1996 lt!581796)))))))

(declare-fun b!1619437 () Bool)

(declare-fun e!1038651 () Bool)

(declare-fun tp!471566 () Bool)

(declare-fun inv!21 (TokenValue!3213) Bool)

(assert (=> b!1619437 (= e!1038659 (and (inv!21 (value!98678 (h!23126 tokens!457))) e!1038651 tp!471566))))

(declare-fun b!1619438 () Bool)

(declare-fun e!1038658 () Bool)

(declare-fun tp!471571 () Bool)

(assert (=> b!1619438 (= e!1038658 (and e!1038655 tp!471571))))

(declare-fun tp!471574 () Bool)

(declare-fun e!1038660 () Bool)

(declare-fun b!1619439 () Bool)

(assert (=> b!1619439 (= e!1038651 (and tp!471574 (inv!23120 (tag!3401 (rule!4949 (h!23126 tokens!457)))) (inv!23123 (transformation!3123 (rule!4949 (h!23126 tokens!457)))) e!1038660))))

(declare-fun b!1619440 () Bool)

(assert (=> b!1619440 (= e!1038652 e!1038661)))

(declare-fun res!723048 () Bool)

(assert (=> b!1619440 (=> res!723048 e!1038661)))

(declare-fun isDefined!2624 (Option!3257) Bool)

(assert (=> b!1619440 (= res!723048 (not (isDefined!2624 lt!581806)))))

(declare-fun lt!581793 () Unit!28591)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!326 (LexerInterface!2752 List!17796 List!17794 List!17794) Unit!28591)

(assert (=> b!1619440 (= lt!581793 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!326 thiss!17113 rules!1846 lt!581796 lt!581805))))

(declare-fun b!1619441 () Bool)

(declare-fun res!723044 () Bool)

(assert (=> b!1619441 (=> (not res!723044) (not e!1038657))))

(declare-fun rulesInvariant!2421 (LexerInterface!2752 List!17796) Bool)

(assert (=> b!1619441 (= res!723044 (rulesInvariant!2421 thiss!17113 rules!1846))))

(assert (=> b!1619442 (= e!1038660 (and tp!471569 tp!471573))))

(declare-fun b!1619443 () Bool)

(declare-fun res!723035 () Bool)

(assert (=> b!1619443 (=> res!723035 e!1038665)))

(declare-fun separableTokensPredicate!694 (LexerInterface!2752 Token!5812 Token!5812 List!17796) Bool)

(assert (=> b!1619443 (= res!723035 (not (separableTokensPredicate!694 thiss!17113 (h!23126 tokens!457) (h!23126 (t!148634 tokens!457)) rules!1846)))))

(declare-fun b!1619444 () Bool)

(declare-fun res!723051 () Bool)

(assert (=> b!1619444 (=> (not res!723051) (not e!1038657))))

(get-info :version)

(assert (=> b!1619444 (= res!723051 (and (not ((_ is Nil!17725) tokens!457)) (not ((_ is Nil!17725) (t!148634 tokens!457)))))))

(declare-fun b!1619445 () Bool)

(declare-fun e!1038649 () Bool)

(assert (=> b!1619445 (= e!1038657 e!1038649)))

(declare-fun res!723050 () Bool)

(assert (=> b!1619445 (=> (not res!723050) (not e!1038649))))

(declare-fun lt!581804 () List!17794)

(assert (=> b!1619445 (= res!723050 (= lt!581801 lt!581804))))

(assert (=> b!1619445 (= lt!581804 (++!4694 lt!581796 lt!581805))))

(declare-fun lt!581798 () BalanceConc!11732)

(assert (=> b!1619445 (= lt!581801 (list!6939 lt!581798))))

(declare-fun lt!581790 () BalanceConc!11732)

(assert (=> b!1619445 (= lt!581805 (list!6939 lt!581790))))

(assert (=> b!1619445 (= lt!581796 (list!6939 lt!581802))))

(assert (=> b!1619445 (= lt!581802 (charsOf!1772 (h!23126 tokens!457)))))

(assert (=> b!1619445 (= lt!581787 (lex!1236 thiss!17113 rules!1846 lt!581790))))

(assert (=> b!1619445 (= lt!581790 (print!1283 thiss!17113 lt!581791))))

(assert (=> b!1619445 (= lt!581791 (seqFromList!1995 (t!148634 tokens!457)))))

(assert (=> b!1619445 (= lt!581798 (print!1283 thiss!17113 (seqFromList!1995 tokens!457)))))

(declare-fun b!1619446 () Bool)

(declare-fun e!1038662 () Bool)

(assert (=> b!1619446 (= e!1038647 e!1038662)))

(declare-fun res!723038 () Bool)

(assert (=> b!1619446 (=> res!723038 e!1038662)))

(declare-datatypes ((tuple2!17274 0))(
  ( (tuple2!17275 (_1!10039 Token!5812) (_2!10039 BalanceConc!11732)) )
))
(declare-datatypes ((Option!3258 0))(
  ( (None!3257) (Some!3257 (v!24256 tuple2!17274)) )
))
(declare-fun isDefined!2625 (Option!3258) Bool)

(declare-fun maxPrefixZipperSequence!647 (LexerInterface!2752 List!17796 BalanceConc!11732) Option!3258)

(assert (=> b!1619446 (= res!723038 (not (isDefined!2625 (maxPrefixZipperSequence!647 thiss!17113 rules!1846 (seqFromList!1996 (originalCharacters!3937 (h!23126 tokens!457)))))))))

(assert (=> b!1619446 e!1038646))

(declare-fun res!723045 () Bool)

(assert (=> b!1619446 (=> (not res!723045) (not e!1038646))))

(assert (=> b!1619446 (= res!723045 (= lt!581796 (originalCharacters!3937 (h!23126 tokens!457))))))

(declare-fun b!1619447 () Bool)

(declare-fun rulesValidInductive!960 (LexerInterface!2752 List!17796) Bool)

(assert (=> b!1619447 (= e!1038662 (rulesValidInductive!960 thiss!17113 rules!1846))))

(assert (=> b!1619447 e!1038654))

(declare-fun res!723047 () Bool)

(assert (=> b!1619447 (=> (not res!723047) (not e!1038654))))

(assert (=> b!1619447 (= res!723047 (= (_1!10037 lt!581792) (h!23126 tokens!457)))))

(declare-fun lt!581809 () Option!3257)

(declare-fun get!5089 (Option!3257) tuple2!17270)

(assert (=> b!1619447 (= lt!581792 (get!5089 lt!581809))))

(assert (=> b!1619447 (isDefined!2624 lt!581809)))

(assert (=> b!1619447 (= lt!581809 (maxPrefix!1316 thiss!17113 rules!1846 lt!581796))))

(assert (=> b!1619447 (isDefined!2624 (maxPrefix!1316 thiss!17113 rules!1846 (originalCharacters!3937 (h!23126 tokens!457))))))

(declare-fun b!1619448 () Bool)

(declare-fun res!723052 () Bool)

(assert (=> b!1619448 (=> (not res!723052) (not e!1038657))))

(declare-fun rulesProduceEachTokenIndividuallyList!954 (LexerInterface!2752 List!17796 List!17795) Bool)

(assert (=> b!1619448 (= res!723052 (rulesProduceEachTokenIndividuallyList!954 thiss!17113 rules!1846 tokens!457))))

(declare-fun res!723036 () Bool)

(assert (=> start!153382 (=> (not res!723036) (not e!1038657))))

(assert (=> start!153382 (= res!723036 ((_ is Lexer!2750) thiss!17113))))

(assert (=> start!153382 e!1038657))

(assert (=> start!153382 true))

(assert (=> start!153382 e!1038658))

(assert (=> start!153382 e!1038656))

(declare-fun b!1619449 () Bool)

(declare-fun head!3377 (BalanceConc!11732) C!9076)

(assert (=> b!1619449 (= e!1038646 (= lt!581807 (Cons!17724 (head!3377 lt!581790) Nil!17724)))))

(declare-fun b!1619450 () Bool)

(declare-fun res!723033 () Bool)

(assert (=> b!1619450 (=> (not res!723033) (not e!1038657))))

(declare-fun isEmpty!10743 (List!17796) Bool)

(assert (=> b!1619450 (= res!723033 (not (isEmpty!10743 rules!1846)))))

(declare-fun b!1619451 () Bool)

(assert (=> b!1619451 (= e!1038649 (not e!1038650))))

(declare-fun res!723037 () Bool)

(assert (=> b!1619451 (=> res!723037 e!1038650)))

(assert (=> b!1619451 (= res!723037 (not (= lt!581788 (t!148634 tokens!457))))))

(assert (=> b!1619451 (= lt!581788 (list!6940 (_1!10038 lt!581787)))))

(declare-fun lt!581803 () Unit!28591)

(declare-fun theoremInvertabilityWhenTokenListSeparable!197 (LexerInterface!2752 List!17796 List!17795) Unit!28591)

(assert (=> b!1619451 (= lt!581803 (theoremInvertabilityWhenTokenListSeparable!197 thiss!17113 rules!1846 (t!148634 tokens!457)))))

(declare-fun isPrefix!1383 (List!17794 List!17794) Bool)

(assert (=> b!1619451 (isPrefix!1383 lt!581796 lt!581804)))

(declare-fun lt!581789 () Unit!28591)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!908 (List!17794 List!17794) Unit!28591)

(assert (=> b!1619451 (= lt!581789 (lemmaConcatTwoListThenFirstIsPrefix!908 lt!581796 lt!581805))))

(declare-fun b!1619452 () Bool)

(declare-fun res!723034 () Bool)

(assert (=> b!1619452 (=> res!723034 e!1038652)))

(declare-fun rulesProduceIndividualToken!1404 (LexerInterface!2752 List!17796 Token!5812) Bool)

(assert (=> b!1619452 (= res!723034 (not (rulesProduceIndividualToken!1404 thiss!17113 rules!1846 (h!23126 tokens!457))))))

(assert (= (and start!153382 res!723036) b!1619450))

(assert (= (and b!1619450 res!723033) b!1619441))

(assert (= (and b!1619441 res!723044) b!1619448))

(assert (= (and b!1619448 res!723052) b!1619425))

(assert (= (and b!1619425 res!723040) b!1619444))

(assert (= (and b!1619444 res!723051) b!1619445))

(assert (= (and b!1619445 res!723050) b!1619451))

(assert (= (and b!1619451 (not res!723037)) b!1619435))

(assert (= (and b!1619435 (not res!723041)) b!1619443))

(assert (= (and b!1619443 (not res!723035)) b!1619434))

(assert (= (and b!1619434 (not res!723042)) b!1619452))

(assert (= (and b!1619452 (not res!723034)) b!1619436))

(assert (= (and b!1619436 (not res!723039)) b!1619440))

(assert (= (and b!1619440 (not res!723048)) b!1619427))

(assert (= (and b!1619427 (not res!723046)) b!1619432))

(assert (= (and b!1619432 (not res!723053)) b!1619446))

(assert (= (and b!1619446 res!723045) b!1619428))

(assert (= (and b!1619428 res!723032) b!1619426))

(assert (= (and b!1619426 res!723049) b!1619449))

(assert (= (and b!1619446 (not res!723038)) b!1619447))

(assert (= (and b!1619447 res!723047) b!1619433))

(assert (= (and b!1619433 res!723043) b!1619424))

(assert (= b!1619429 b!1619430))

(assert (= b!1619438 b!1619429))

(assert (= (and start!153382 ((_ is Cons!17726) rules!1846)) b!1619438))

(assert (= b!1619439 b!1619442))

(assert (= b!1619437 b!1619439))

(assert (= b!1619431 b!1619437))

(assert (= (and start!153382 ((_ is Cons!17725) tokens!457)) b!1619431))

(declare-fun m!1943027 () Bool)

(assert (=> b!1619429 m!1943027))

(declare-fun m!1943029 () Bool)

(assert (=> b!1619429 m!1943029))

(declare-fun m!1943031 () Bool)

(assert (=> b!1619450 m!1943031))

(declare-fun m!1943033 () Bool)

(assert (=> b!1619424 m!1943033))

(declare-fun m!1943035 () Bool)

(assert (=> b!1619443 m!1943035))

(declare-fun m!1943037 () Bool)

(assert (=> b!1619448 m!1943037))

(declare-fun m!1943039 () Bool)

(assert (=> b!1619446 m!1943039))

(assert (=> b!1619446 m!1943039))

(declare-fun m!1943041 () Bool)

(assert (=> b!1619446 m!1943041))

(assert (=> b!1619446 m!1943041))

(declare-fun m!1943043 () Bool)

(assert (=> b!1619446 m!1943043))

(declare-fun m!1943045 () Bool)

(assert (=> b!1619452 m!1943045))

(declare-fun m!1943047 () Bool)

(assert (=> b!1619427 m!1943047))

(declare-fun m!1943049 () Bool)

(assert (=> b!1619427 m!1943049))

(declare-fun m!1943051 () Bool)

(assert (=> b!1619427 m!1943051))

(declare-fun m!1943053 () Bool)

(assert (=> b!1619427 m!1943053))

(assert (=> b!1619427 m!1943049))

(declare-fun m!1943055 () Bool)

(assert (=> b!1619427 m!1943055))

(declare-fun m!1943057 () Bool)

(assert (=> b!1619427 m!1943057))

(assert (=> b!1619427 m!1943051))

(assert (=> b!1619427 m!1943057))

(declare-fun m!1943059 () Bool)

(assert (=> b!1619449 m!1943059))

(declare-fun m!1943061 () Bool)

(assert (=> b!1619435 m!1943061))

(declare-fun m!1943063 () Bool)

(assert (=> b!1619435 m!1943063))

(declare-fun m!1943065 () Bool)

(assert (=> b!1619435 m!1943065))

(declare-fun m!1943067 () Bool)

(assert (=> b!1619435 m!1943067))

(declare-fun m!1943069 () Bool)

(assert (=> b!1619435 m!1943069))

(assert (=> b!1619435 m!1943065))

(assert (=> b!1619435 m!1943067))

(declare-fun m!1943071 () Bool)

(assert (=> b!1619432 m!1943071))

(assert (=> b!1619432 m!1943071))

(declare-fun m!1943073 () Bool)

(assert (=> b!1619432 m!1943073))

(declare-fun m!1943075 () Bool)

(assert (=> b!1619432 m!1943075))

(declare-fun m!1943077 () Bool)

(assert (=> b!1619441 m!1943077))

(declare-fun m!1943079 () Bool)

(assert (=> b!1619431 m!1943079))

(declare-fun m!1943081 () Bool)

(assert (=> b!1619445 m!1943081))

(declare-fun m!1943083 () Bool)

(assert (=> b!1619445 m!1943083))

(declare-fun m!1943085 () Bool)

(assert (=> b!1619445 m!1943085))

(declare-fun m!1943087 () Bool)

(assert (=> b!1619445 m!1943087))

(declare-fun m!1943089 () Bool)

(assert (=> b!1619445 m!1943089))

(declare-fun m!1943091 () Bool)

(assert (=> b!1619445 m!1943091))

(assert (=> b!1619445 m!1943085))

(declare-fun m!1943093 () Bool)

(assert (=> b!1619445 m!1943093))

(declare-fun m!1943095 () Bool)

(assert (=> b!1619445 m!1943095))

(declare-fun m!1943097 () Bool)

(assert (=> b!1619445 m!1943097))

(declare-fun m!1943099 () Bool)

(assert (=> b!1619445 m!1943099))

(declare-fun m!1943101 () Bool)

(assert (=> b!1619437 m!1943101))

(declare-fun m!1943103 () Bool)

(assert (=> b!1619451 m!1943103))

(declare-fun m!1943105 () Bool)

(assert (=> b!1619451 m!1943105))

(declare-fun m!1943107 () Bool)

(assert (=> b!1619451 m!1943107))

(declare-fun m!1943109 () Bool)

(assert (=> b!1619451 m!1943109))

(declare-fun m!1943111 () Bool)

(assert (=> b!1619433 m!1943111))

(declare-fun m!1943113 () Bool)

(assert (=> b!1619436 m!1943113))

(assert (=> b!1619436 m!1943113))

(declare-fun m!1943115 () Bool)

(assert (=> b!1619436 m!1943115))

(declare-fun m!1943117 () Bool)

(assert (=> b!1619436 m!1943117))

(declare-fun m!1943119 () Bool)

(assert (=> b!1619434 m!1943119))

(declare-fun m!1943121 () Bool)

(assert (=> b!1619434 m!1943121))

(declare-fun m!1943123 () Bool)

(assert (=> b!1619434 m!1943123))

(declare-fun m!1943125 () Bool)

(assert (=> b!1619434 m!1943125))

(declare-fun m!1943127 () Bool)

(assert (=> b!1619434 m!1943127))

(declare-fun m!1943129 () Bool)

(assert (=> b!1619434 m!1943129))

(declare-fun m!1943131 () Bool)

(assert (=> b!1619425 m!1943131))

(declare-fun m!1943133 () Bool)

(assert (=> b!1619447 m!1943133))

(declare-fun m!1943135 () Bool)

(assert (=> b!1619447 m!1943135))

(declare-fun m!1943137 () Bool)

(assert (=> b!1619447 m!1943137))

(declare-fun m!1943139 () Bool)

(assert (=> b!1619447 m!1943139))

(declare-fun m!1943141 () Bool)

(assert (=> b!1619447 m!1943141))

(declare-fun m!1943143 () Bool)

(assert (=> b!1619447 m!1943143))

(assert (=> b!1619447 m!1943137))

(declare-fun m!1943145 () Bool)

(assert (=> b!1619440 m!1943145))

(declare-fun m!1943147 () Bool)

(assert (=> b!1619440 m!1943147))

(declare-fun m!1943149 () Bool)

(assert (=> b!1619428 m!1943149))

(declare-fun m!1943151 () Bool)

(assert (=> b!1619439 m!1943151))

(declare-fun m!1943153 () Bool)

(assert (=> b!1619439 m!1943153))

(declare-fun m!1943155 () Bool)

(assert (=> b!1619426 m!1943155))

(check-sat (not b!1619438) (not b!1619445) (not b!1619437) (not b_next!44331) (not b!1619428) (not b!1619441) (not b!1619439) (not b!1619425) b_and!114877 (not b!1619433) (not b!1619446) (not b!1619440) (not b!1619436) b_and!114883 (not b!1619435) (not b!1619426) (not b!1619424) (not b!1619443) (not b!1619449) (not b!1619432) (not b!1619448) (not b!1619452) (not b!1619434) (not b!1619431) (not b_next!44329) (not b_next!44327) (not b!1619450) b_and!114879 (not b!1619429) (not b!1619451) (not b_next!44333) b_and!114881 (not b!1619427) (not b!1619447))
(check-sat (not b_next!44331) b_and!114877 b_and!114879 (not b_next!44333) b_and!114881 b_and!114883 (not b_next!44329) (not b_next!44327))
(get-model)

(declare-fun d!487658 () Bool)

(declare-fun res!723095 () Bool)

(declare-fun e!1038696 () Bool)

(assert (=> d!487658 (=> (not res!723095) (not e!1038696))))

(declare-fun rulesValid!1115 (LexerInterface!2752 List!17796) Bool)

(assert (=> d!487658 (= res!723095 (rulesValid!1115 thiss!17113 rules!1846))))

(assert (=> d!487658 (= (rulesInvariant!2421 thiss!17113 rules!1846) e!1038696)))

(declare-fun b!1619509 () Bool)

(declare-datatypes ((List!17799 0))(
  ( (Nil!17729) (Cons!17729 (h!23130 String!20397) (t!148680 List!17799)) )
))
(declare-fun noDuplicateTag!1115 (LexerInterface!2752 List!17796 List!17799) Bool)

(assert (=> b!1619509 (= e!1038696 (noDuplicateTag!1115 thiss!17113 rules!1846 Nil!17729))))

(assert (= (and d!487658 res!723095) b!1619509))

(declare-fun m!1943187 () Bool)

(assert (=> d!487658 m!1943187))

(declare-fun m!1943189 () Bool)

(assert (=> b!1619509 m!1943189))

(assert (=> b!1619441 d!487658))

(declare-fun d!487660 () Bool)

(declare-fun isEmpty!10746 (Option!3257) Bool)

(assert (=> d!487660 (= (isDefined!2624 lt!581806) (not (isEmpty!10746 lt!581806)))))

(declare-fun bs!394398 () Bool)

(assert (= bs!394398 d!487660))

(declare-fun m!1943191 () Bool)

(assert (=> bs!394398 m!1943191))

(assert (=> b!1619440 d!487660))

(declare-fun b!1619601 () Bool)

(declare-fun res!723145 () Bool)

(declare-fun e!1038750 () Bool)

(assert (=> b!1619601 (=> (not res!723145) (not e!1038750))))

(declare-fun lt!581938 () Token!5812)

(declare-datatypes ((Option!3259 0))(
  ( (None!3258) (Some!3258 (v!24263 Rule!6046)) )
))
(declare-fun get!5090 (Option!3259) Rule!6046)

(declare-fun getRuleFromTag!271 (LexerInterface!2752 List!17796 String!20397) Option!3259)

(assert (=> b!1619601 (= res!723145 (matchR!1950 (regex!3123 (get!5090 (getRuleFromTag!271 thiss!17113 rules!1846 (tag!3401 (rule!4949 lt!581938))))) (list!6939 (charsOf!1772 lt!581938))))))

(declare-fun b!1619603 () Bool)

(declare-fun e!1038751 () Unit!28591)

(declare-fun Unit!28593 () Unit!28591)

(assert (=> b!1619603 (= e!1038751 Unit!28593)))

(declare-fun lt!581950 () List!17794)

(assert (=> b!1619603 (= lt!581950 (++!4694 lt!581796 lt!581805))))

(declare-fun lt!581948 () Unit!28591)

(declare-fun lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!165 (LexerInterface!2752 Rule!6046 List!17796 List!17794) Unit!28591)

(assert (=> b!1619603 (= lt!581948 (lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!165 thiss!17113 (rule!4949 lt!581938) rules!1846 lt!581950))))

(declare-fun maxPrefixOneRule!762 (LexerInterface!2752 Rule!6046 List!17794) Option!3257)

(assert (=> b!1619603 (isEmpty!10746 (maxPrefixOneRule!762 thiss!17113 (rule!4949 lt!581938) lt!581950))))

(declare-fun lt!581936 () Unit!28591)

(assert (=> b!1619603 (= lt!581936 lt!581948)))

(declare-fun lt!581947 () List!17794)

(assert (=> b!1619603 (= lt!581947 (list!6939 (charsOf!1772 lt!581938)))))

(declare-fun lt!581935 () Unit!28591)

(declare-fun lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!161 (LexerInterface!2752 Rule!6046 List!17794 List!17794) Unit!28591)

(assert (=> b!1619603 (= lt!581935 (lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!161 thiss!17113 (rule!4949 lt!581938) lt!581947 (++!4694 lt!581796 lt!581805)))))

(assert (=> b!1619603 (not (matchR!1950 (regex!3123 (rule!4949 lt!581938)) lt!581947))))

(declare-fun lt!581946 () Unit!28591)

(assert (=> b!1619603 (= lt!581946 lt!581935)))

(assert (=> b!1619603 false))

(declare-fun b!1619602 () Bool)

(assert (=> b!1619602 (= e!1038750 (= (rule!4949 lt!581938) (get!5090 (getRuleFromTag!271 thiss!17113 rules!1846 (tag!3401 (rule!4949 lt!581938))))))))

(declare-fun d!487662 () Bool)

(assert (=> d!487662 (isDefined!2624 (maxPrefix!1316 thiss!17113 rules!1846 (++!4694 lt!581796 lt!581805)))))

(declare-fun lt!581941 () Unit!28591)

(assert (=> d!487662 (= lt!581941 e!1038751)))

(declare-fun c!263823 () Bool)

(assert (=> d!487662 (= c!263823 (isEmpty!10746 (maxPrefix!1316 thiss!17113 rules!1846 (++!4694 lt!581796 lt!581805))))))

(declare-fun lt!581944 () Unit!28591)

(declare-fun lt!581943 () Unit!28591)

(assert (=> d!487662 (= lt!581944 lt!581943)))

(assert (=> d!487662 e!1038750))

(declare-fun res!723146 () Bool)

(assert (=> d!487662 (=> (not res!723146) (not e!1038750))))

(declare-fun isDefined!2626 (Option!3259) Bool)

(assert (=> d!487662 (= res!723146 (isDefined!2626 (getRuleFromTag!271 thiss!17113 rules!1846 (tag!3401 (rule!4949 lt!581938)))))))

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!271 (LexerInterface!2752 List!17796 List!17794 Token!5812) Unit!28591)

(assert (=> d!487662 (= lt!581943 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!271 thiss!17113 rules!1846 lt!581796 lt!581938))))

(declare-fun lt!581942 () Unit!28591)

(declare-fun lt!581940 () Unit!28591)

(assert (=> d!487662 (= lt!581942 lt!581940)))

(declare-fun lt!581945 () List!17794)

(assert (=> d!487662 (isPrefix!1383 lt!581945 (++!4694 lt!581796 lt!581805))))

(declare-fun lemmaPrefixStaysPrefixWhenAddingToSuffix!157 (List!17794 List!17794 List!17794) Unit!28591)

(assert (=> d!487662 (= lt!581940 (lemmaPrefixStaysPrefixWhenAddingToSuffix!157 lt!581945 lt!581796 lt!581805))))

(assert (=> d!487662 (= lt!581945 (list!6939 (charsOf!1772 lt!581938)))))

(declare-fun lt!581949 () Unit!28591)

(declare-fun lt!581937 () Unit!28591)

(assert (=> d!487662 (= lt!581949 lt!581937)))

(declare-fun lt!581951 () List!17794)

(declare-fun lt!581939 () List!17794)

(assert (=> d!487662 (isPrefix!1383 lt!581951 (++!4694 lt!581951 lt!581939))))

(assert (=> d!487662 (= lt!581937 (lemmaConcatTwoListThenFirstIsPrefix!908 lt!581951 lt!581939))))

(assert (=> d!487662 (= lt!581939 (_2!10037 (get!5089 (maxPrefix!1316 thiss!17113 rules!1846 lt!581796))))))

(assert (=> d!487662 (= lt!581951 (list!6939 (charsOf!1772 lt!581938)))))

(declare-fun head!3378 (List!17795) Token!5812)

(assert (=> d!487662 (= lt!581938 (head!3378 (list!6940 (_1!10038 (lex!1236 thiss!17113 rules!1846 (seqFromList!1996 lt!581796))))))))

(assert (=> d!487662 (not (isEmpty!10743 rules!1846))))

(assert (=> d!487662 (= (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!326 thiss!17113 rules!1846 lt!581796 lt!581805) lt!581941)))

(declare-fun b!1619604 () Bool)

(declare-fun Unit!28594 () Unit!28591)

(assert (=> b!1619604 (= e!1038751 Unit!28594)))

(assert (= (and d!487662 res!723146) b!1619601))

(assert (= (and b!1619601 res!723145) b!1619602))

(assert (= (and d!487662 c!263823) b!1619603))

(assert (= (and d!487662 (not c!263823)) b!1619604))

(declare-fun m!1943407 () Bool)

(assert (=> b!1619601 m!1943407))

(declare-fun m!1943409 () Bool)

(assert (=> b!1619601 m!1943409))

(declare-fun m!1943411 () Bool)

(assert (=> b!1619601 m!1943411))

(assert (=> b!1619601 m!1943407))

(assert (=> b!1619601 m!1943409))

(declare-fun m!1943413 () Bool)

(assert (=> b!1619601 m!1943413))

(assert (=> b!1619601 m!1943411))

(declare-fun m!1943415 () Bool)

(assert (=> b!1619601 m!1943415))

(assert (=> b!1619603 m!1943089))

(declare-fun m!1943417 () Bool)

(assert (=> b!1619603 m!1943417))

(assert (=> b!1619603 m!1943407))

(assert (=> b!1619603 m!1943089))

(declare-fun m!1943419 () Bool)

(assert (=> b!1619603 m!1943419))

(declare-fun m!1943421 () Bool)

(assert (=> b!1619603 m!1943421))

(declare-fun m!1943423 () Bool)

(assert (=> b!1619603 m!1943423))

(declare-fun m!1943425 () Bool)

(assert (=> b!1619603 m!1943425))

(assert (=> b!1619603 m!1943407))

(assert (=> b!1619603 m!1943409))

(assert (=> b!1619603 m!1943421))

(assert (=> b!1619602 m!1943411))

(assert (=> b!1619602 m!1943411))

(assert (=> b!1619602 m!1943415))

(assert (=> d!487662 m!1943089))

(declare-fun m!1943427 () Bool)

(assert (=> d!487662 m!1943427))

(declare-fun m!1943429 () Bool)

(assert (=> d!487662 m!1943429))

(assert (=> d!487662 m!1943113))

(assert (=> d!487662 m!1943115))

(assert (=> d!487662 m!1943407))

(declare-fun m!1943431 () Bool)

(assert (=> d!487662 m!1943431))

(declare-fun m!1943433 () Bool)

(assert (=> d!487662 m!1943433))

(declare-fun m!1943435 () Bool)

(assert (=> d!487662 m!1943435))

(assert (=> d!487662 m!1943031))

(declare-fun m!1943437 () Bool)

(assert (=> d!487662 m!1943437))

(declare-fun m!1943439 () Bool)

(assert (=> d!487662 m!1943439))

(assert (=> d!487662 m!1943141))

(declare-fun m!1943441 () Bool)

(assert (=> d!487662 m!1943441))

(declare-fun m!1943443 () Bool)

(assert (=> d!487662 m!1943443))

(assert (=> d!487662 m!1943407))

(assert (=> d!487662 m!1943409))

(assert (=> d!487662 m!1943089))

(declare-fun m!1943445 () Bool)

(assert (=> d!487662 m!1943445))

(assert (=> d!487662 m!1943437))

(assert (=> d!487662 m!1943141))

(declare-fun m!1943447 () Bool)

(assert (=> d!487662 m!1943447))

(assert (=> d!487662 m!1943427))

(declare-fun m!1943449 () Bool)

(assert (=> d!487662 m!1943449))

(assert (=> d!487662 m!1943411))

(assert (=> d!487662 m!1943089))

(assert (=> d!487662 m!1943427))

(assert (=> d!487662 m!1943113))

(assert (=> d!487662 m!1943411))

(declare-fun m!1943451 () Bool)

(assert (=> d!487662 m!1943451))

(assert (=> d!487662 m!1943431))

(assert (=> b!1619440 d!487662))

(declare-fun d!487718 () Bool)

(assert (=> d!487718 (= (inv!23120 (tag!3401 (rule!4949 (h!23126 tokens!457)))) (= (mod (str.len (value!98677 (tag!3401 (rule!4949 (h!23126 tokens!457))))) 2) 0))))

(assert (=> b!1619439 d!487718))

(declare-fun d!487720 () Bool)

(declare-fun res!723163 () Bool)

(declare-fun e!1038760 () Bool)

(assert (=> d!487720 (=> (not res!723163) (not e!1038760))))

(declare-fun semiInverseModEq!1187 (Int Int) Bool)

(assert (=> d!487720 (= res!723163 (semiInverseModEq!1187 (toChars!4409 (transformation!3123 (rule!4949 (h!23126 tokens!457)))) (toValue!4550 (transformation!3123 (rule!4949 (h!23126 tokens!457))))))))

(assert (=> d!487720 (= (inv!23123 (transformation!3123 (rule!4949 (h!23126 tokens!457)))) e!1038760)))

(declare-fun b!1619625 () Bool)

(declare-fun equivClasses!1128 (Int Int) Bool)

(assert (=> b!1619625 (= e!1038760 (equivClasses!1128 (toChars!4409 (transformation!3123 (rule!4949 (h!23126 tokens!457)))) (toValue!4550 (transformation!3123 (rule!4949 (h!23126 tokens!457))))))))

(assert (= (and d!487720 res!723163) b!1619625))

(declare-fun m!1943453 () Bool)

(assert (=> d!487720 m!1943453))

(declare-fun m!1943455 () Bool)

(assert (=> b!1619625 m!1943455))

(assert (=> b!1619439 d!487720))

(declare-fun b!1619645 () Bool)

(declare-fun e!1038772 () Bool)

(declare-fun inv!17 (TokenValue!3213) Bool)

(assert (=> b!1619645 (= e!1038772 (inv!17 (value!98678 (h!23126 tokens!457))))))

(declare-fun b!1619646 () Bool)

(declare-fun e!1038771 () Bool)

(declare-fun inv!16 (TokenValue!3213) Bool)

(assert (=> b!1619646 (= e!1038771 (inv!16 (value!98678 (h!23126 tokens!457))))))

(declare-fun d!487722 () Bool)

(declare-fun c!263831 () Bool)

(assert (=> d!487722 (= c!263831 ((_ is IntegerValue!9639) (value!98678 (h!23126 tokens!457))))))

(assert (=> d!487722 (= (inv!21 (value!98678 (h!23126 tokens!457))) e!1038771)))

(declare-fun b!1619647 () Bool)

(declare-fun e!1038770 () Bool)

(declare-fun inv!15 (TokenValue!3213) Bool)

(assert (=> b!1619647 (= e!1038770 (inv!15 (value!98678 (h!23126 tokens!457))))))

(declare-fun b!1619648 () Bool)

(assert (=> b!1619648 (= e!1038771 e!1038772)))

(declare-fun c!263832 () Bool)

(assert (=> b!1619648 (= c!263832 ((_ is IntegerValue!9640) (value!98678 (h!23126 tokens!457))))))

(declare-fun b!1619649 () Bool)

(declare-fun res!723173 () Bool)

(assert (=> b!1619649 (=> res!723173 e!1038770)))

(assert (=> b!1619649 (= res!723173 (not ((_ is IntegerValue!9641) (value!98678 (h!23126 tokens!457)))))))

(assert (=> b!1619649 (= e!1038772 e!1038770)))

(assert (= (and d!487722 c!263831) b!1619646))

(assert (= (and d!487722 (not c!263831)) b!1619648))

(assert (= (and b!1619648 c!263832) b!1619645))

(assert (= (and b!1619648 (not c!263832)) b!1619649))

(assert (= (and b!1619649 (not res!723173)) b!1619647))

(declare-fun m!1943457 () Bool)

(assert (=> b!1619645 m!1943457))

(declare-fun m!1943459 () Bool)

(assert (=> b!1619646 m!1943459))

(declare-fun m!1943461 () Bool)

(assert (=> b!1619647 m!1943461))

(assert (=> b!1619437 d!487722))

(declare-fun d!487724 () Bool)

(declare-fun lt!581969 () Bool)

(declare-fun isEmpty!10747 (List!17795) Bool)

(assert (=> d!487724 (= lt!581969 (isEmpty!10747 (list!6940 (_1!10038 (lex!1236 thiss!17113 rules!1846 (seqFromList!1996 lt!581796))))))))

(declare-fun isEmpty!10748 (Conc!5895) Bool)

(assert (=> d!487724 (= lt!581969 (isEmpty!10748 (c!263789 (_1!10038 (lex!1236 thiss!17113 rules!1846 (seqFromList!1996 lt!581796))))))))

(assert (=> d!487724 (= (isEmpty!10742 (_1!10038 (lex!1236 thiss!17113 rules!1846 (seqFromList!1996 lt!581796)))) lt!581969)))

(declare-fun bs!394412 () Bool)

(assert (= bs!394412 d!487724))

(assert (=> bs!394412 m!1943431))

(assert (=> bs!394412 m!1943431))

(declare-fun m!1943493 () Bool)

(assert (=> bs!394412 m!1943493))

(declare-fun m!1943497 () Bool)

(assert (=> bs!394412 m!1943497))

(assert (=> b!1619436 d!487724))

(declare-fun b!1619660 () Bool)

(declare-fun e!1038781 () Bool)

(declare-fun lt!581972 () tuple2!17272)

(assert (=> b!1619660 (= e!1038781 (not (isEmpty!10742 (_1!10038 lt!581972))))))

(declare-fun d!487726 () Bool)

(declare-fun e!1038779 () Bool)

(assert (=> d!487726 e!1038779))

(declare-fun res!723181 () Bool)

(assert (=> d!487726 (=> (not res!723181) (not e!1038779))))

(declare-fun e!1038780 () Bool)

(assert (=> d!487726 (= res!723181 e!1038780)))

(declare-fun c!263835 () Bool)

(declare-fun size!14218 (BalanceConc!11734) Int)

(assert (=> d!487726 (= c!263835 (> (size!14218 (_1!10038 lt!581972)) 0))))

(declare-fun lexTailRecV2!540 (LexerInterface!2752 List!17796 BalanceConc!11732 BalanceConc!11732 BalanceConc!11732 BalanceConc!11734) tuple2!17272)

(assert (=> d!487726 (= lt!581972 (lexTailRecV2!540 thiss!17113 rules!1846 (seqFromList!1996 lt!581796) (BalanceConc!11733 Empty!5894) (seqFromList!1996 lt!581796) (BalanceConc!11735 Empty!5895)))))

(assert (=> d!487726 (= (lex!1236 thiss!17113 rules!1846 (seqFromList!1996 lt!581796)) lt!581972)))

(declare-fun b!1619661 () Bool)

(assert (=> b!1619661 (= e!1038780 (= (_2!10038 lt!581972) (seqFromList!1996 lt!581796)))))

(declare-fun b!1619662 () Bool)

(declare-fun res!723182 () Bool)

(assert (=> b!1619662 (=> (not res!723182) (not e!1038779))))

(declare-datatypes ((tuple2!17278 0))(
  ( (tuple2!17279 (_1!10041 List!17795) (_2!10041 List!17794)) )
))
(declare-fun lexList!817 (LexerInterface!2752 List!17796 List!17794) tuple2!17278)

(assert (=> b!1619662 (= res!723182 (= (list!6940 (_1!10038 lt!581972)) (_1!10041 (lexList!817 thiss!17113 rules!1846 (list!6939 (seqFromList!1996 lt!581796))))))))

(declare-fun b!1619663 () Bool)

(assert (=> b!1619663 (= e!1038779 (= (list!6939 (_2!10038 lt!581972)) (_2!10041 (lexList!817 thiss!17113 rules!1846 (list!6939 (seqFromList!1996 lt!581796))))))))

(declare-fun b!1619664 () Bool)

(assert (=> b!1619664 (= e!1038780 e!1038781)))

(declare-fun res!723180 () Bool)

(declare-fun size!14219 (BalanceConc!11732) Int)

(assert (=> b!1619664 (= res!723180 (< (size!14219 (_2!10038 lt!581972)) (size!14219 (seqFromList!1996 lt!581796))))))

(assert (=> b!1619664 (=> (not res!723180) (not e!1038781))))

(assert (= (and d!487726 c!263835) b!1619664))

(assert (= (and d!487726 (not c!263835)) b!1619661))

(assert (= (and b!1619664 res!723180) b!1619660))

(assert (= (and d!487726 res!723181) b!1619662))

(assert (= (and b!1619662 res!723182) b!1619663))

(declare-fun m!1943501 () Bool)

(assert (=> b!1619660 m!1943501))

(declare-fun m!1943503 () Bool)

(assert (=> d!487726 m!1943503))

(assert (=> d!487726 m!1943113))

(assert (=> d!487726 m!1943113))

(declare-fun m!1943505 () Bool)

(assert (=> d!487726 m!1943505))

(declare-fun m!1943507 () Bool)

(assert (=> b!1619662 m!1943507))

(assert (=> b!1619662 m!1943113))

(declare-fun m!1943509 () Bool)

(assert (=> b!1619662 m!1943509))

(assert (=> b!1619662 m!1943509))

(declare-fun m!1943511 () Bool)

(assert (=> b!1619662 m!1943511))

(declare-fun m!1943513 () Bool)

(assert (=> b!1619663 m!1943513))

(assert (=> b!1619663 m!1943113))

(assert (=> b!1619663 m!1943509))

(assert (=> b!1619663 m!1943509))

(assert (=> b!1619663 m!1943511))

(declare-fun m!1943515 () Bool)

(assert (=> b!1619664 m!1943515))

(assert (=> b!1619664 m!1943113))

(declare-fun m!1943517 () Bool)

(assert (=> b!1619664 m!1943517))

(assert (=> b!1619436 d!487726))

(declare-fun d!487732 () Bool)

(declare-fun fromListB!870 (List!17794) BalanceConc!11732)

(assert (=> d!487732 (= (seqFromList!1996 lt!581796) (fromListB!870 lt!581796))))

(declare-fun bs!394414 () Bool)

(assert (= bs!394414 d!487732))

(declare-fun m!1943519 () Bool)

(assert (=> bs!394414 m!1943519))

(assert (=> b!1619436 d!487732))

(declare-fun d!487734 () Bool)

(declare-fun e!1038784 () Bool)

(assert (=> d!487734 e!1038784))

(declare-fun res!723185 () Bool)

(assert (=> d!487734 (=> (not res!723185) (not e!1038784))))

(declare-fun isBalanced!1765 (Conc!5895) Bool)

(declare-fun prepend!638 (Conc!5895 Token!5812) Conc!5895)

(assert (=> d!487734 (= res!723185 (isBalanced!1765 (prepend!638 (c!263789 (seqFromList!1995 (t!148634 (t!148634 tokens!457)))) (h!23126 (t!148634 tokens!457)))))))

(declare-fun lt!581975 () BalanceConc!11734)

(assert (=> d!487734 (= lt!581975 (BalanceConc!11735 (prepend!638 (c!263789 (seqFromList!1995 (t!148634 (t!148634 tokens!457)))) (h!23126 (t!148634 tokens!457)))))))

(assert (=> d!487734 (= (prepend!637 (seqFromList!1995 (t!148634 (t!148634 tokens!457))) (h!23126 (t!148634 tokens!457))) lt!581975)))

(declare-fun b!1619667 () Bool)

(assert (=> b!1619667 (= e!1038784 (= (list!6940 lt!581975) (Cons!17725 (h!23126 (t!148634 tokens!457)) (list!6940 (seqFromList!1995 (t!148634 (t!148634 tokens!457)))))))))

(assert (= (and d!487734 res!723185) b!1619667))

(declare-fun m!1943521 () Bool)

(assert (=> d!487734 m!1943521))

(assert (=> d!487734 m!1943521))

(declare-fun m!1943523 () Bool)

(assert (=> d!487734 m!1943523))

(declare-fun m!1943525 () Bool)

(assert (=> b!1619667 m!1943525))

(assert (=> b!1619667 m!1943065))

(declare-fun m!1943527 () Bool)

(assert (=> b!1619667 m!1943527))

(assert (=> b!1619435 d!487734))

(declare-fun d!487736 () Bool)

(declare-fun list!6942 (Conc!5895) List!17795)

(assert (=> d!487736 (= (list!6940 (prepend!637 (seqFromList!1995 (t!148634 (t!148634 tokens!457))) (h!23126 (t!148634 tokens!457)))) (list!6942 (c!263789 (prepend!637 (seqFromList!1995 (t!148634 (t!148634 tokens!457))) (h!23126 (t!148634 tokens!457))))))))

(declare-fun bs!394415 () Bool)

(assert (= bs!394415 d!487736))

(declare-fun m!1943529 () Bool)

(assert (=> bs!394415 m!1943529))

(assert (=> b!1619435 d!487736))

(declare-fun d!487738 () Bool)

(declare-fun fromListB!871 (List!17795) BalanceConc!11734)

(assert (=> d!487738 (= (seqFromList!1995 (t!148634 (t!148634 tokens!457))) (fromListB!871 (t!148634 (t!148634 tokens!457))))))

(declare-fun bs!394416 () Bool)

(assert (= bs!394416 d!487738))

(declare-fun m!1943531 () Bool)

(assert (=> bs!394416 m!1943531))

(assert (=> b!1619435 d!487738))

(declare-fun d!487740 () Bool)

(assert (=> d!487740 (= (list!6940 (_1!10038 lt!581787)) (list!6940 (prepend!637 (seqFromList!1995 (t!148634 (t!148634 tokens!457))) (h!23126 (t!148634 tokens!457)))))))

(declare-fun lt!581978 () Unit!28591)

(declare-fun choose!9749 (Token!5812 List!17795 BalanceConc!11734) Unit!28591)

(assert (=> d!487740 (= lt!581978 (choose!9749 (h!23126 (t!148634 tokens!457)) (t!148634 (t!148634 tokens!457)) (_1!10038 lt!581787)))))

(declare-fun $colon$colon!316 (List!17795 Token!5812) List!17795)

(assert (=> d!487740 (= (list!6940 (_1!10038 lt!581787)) (list!6940 (seqFromList!1995 ($colon$colon!316 (t!148634 (t!148634 tokens!457)) (h!23126 (t!148634 tokens!457))))))))

(assert (=> d!487740 (= (seqFromListBHdTlConstructive!200 (h!23126 (t!148634 tokens!457)) (t!148634 (t!148634 tokens!457)) (_1!10038 lt!581787)) lt!581978)))

(declare-fun bs!394417 () Bool)

(assert (= bs!394417 d!487740))

(assert (=> bs!394417 m!1943067))

(assert (=> bs!394417 m!1943069))

(declare-fun m!1943533 () Bool)

(assert (=> bs!394417 m!1943533))

(declare-fun m!1943535 () Bool)

(assert (=> bs!394417 m!1943535))

(assert (=> bs!394417 m!1943533))

(declare-fun m!1943537 () Bool)

(assert (=> bs!394417 m!1943537))

(assert (=> bs!394417 m!1943065))

(assert (=> bs!394417 m!1943067))

(assert (=> bs!394417 m!1943103))

(assert (=> bs!394417 m!1943535))

(declare-fun m!1943539 () Bool)

(assert (=> bs!394417 m!1943539))

(assert (=> bs!394417 m!1943065))

(assert (=> b!1619435 d!487740))

(declare-fun d!487742 () Bool)

(assert (=> d!487742 (= (list!6940 lt!581791) (list!6942 (c!263789 lt!581791)))))

(declare-fun bs!394418 () Bool)

(assert (= bs!394418 d!487742))

(declare-fun m!1943541 () Bool)

(assert (=> bs!394418 m!1943541))

(assert (=> b!1619435 d!487742))

(declare-fun d!487744 () Bool)

(declare-fun lt!581981 () BalanceConc!11732)

(assert (=> d!487744 (= (list!6939 lt!581981) (printList!867 thiss!17113 (list!6940 lt!581800)))))

(assert (=> d!487744 (= lt!581981 (printTailRec!805 thiss!17113 lt!581800 0 (BalanceConc!11733 Empty!5894)))))

(assert (=> d!487744 (= (print!1283 thiss!17113 lt!581800) lt!581981)))

(declare-fun bs!394419 () Bool)

(assert (= bs!394419 d!487744))

(declare-fun m!1943543 () Bool)

(assert (=> bs!394419 m!1943543))

(declare-fun m!1943545 () Bool)

(assert (=> bs!394419 m!1943545))

(assert (=> bs!394419 m!1943545))

(declare-fun m!1943547 () Bool)

(assert (=> bs!394419 m!1943547))

(assert (=> bs!394419 m!1943121))

(assert (=> b!1619434 d!487744))

(declare-fun d!487746 () Bool)

(declare-fun list!6943 (Conc!5894) List!17794)

(assert (=> d!487746 (= (list!6939 lt!581799) (list!6943 (c!263787 lt!581799)))))

(declare-fun bs!394420 () Bool)

(assert (= bs!394420 d!487746))

(declare-fun m!1943549 () Bool)

(assert (=> bs!394420 m!1943549))

(assert (=> b!1619434 d!487746))

(declare-fun d!487748 () Bool)

(declare-fun lt!582048 () BalanceConc!11732)

(declare-fun printListTailRec!343 (LexerInterface!2752 List!17795 List!17794) List!17794)

(declare-fun dropList!583 (BalanceConc!11734 Int) List!17795)

(assert (=> d!487748 (= (list!6939 lt!582048) (printListTailRec!343 thiss!17113 (dropList!583 lt!581800 0) (list!6939 (BalanceConc!11733 Empty!5894))))))

(declare-fun e!1038799 () BalanceConc!11732)

(assert (=> d!487748 (= lt!582048 e!1038799)))

(declare-fun c!263842 () Bool)

(assert (=> d!487748 (= c!263842 (>= 0 (size!14218 lt!581800)))))

(declare-fun e!1038798 () Bool)

(assert (=> d!487748 e!1038798))

(declare-fun res!723197 () Bool)

(assert (=> d!487748 (=> (not res!723197) (not e!1038798))))

(assert (=> d!487748 (= res!723197 (>= 0 0))))

(assert (=> d!487748 (= (printTailRec!805 thiss!17113 lt!581800 0 (BalanceConc!11733 Empty!5894)) lt!582048)))

(declare-fun b!1619689 () Bool)

(assert (=> b!1619689 (= e!1038798 (<= 0 (size!14218 lt!581800)))))

(declare-fun b!1619690 () Bool)

(assert (=> b!1619690 (= e!1038799 (BalanceConc!11733 Empty!5894))))

(declare-fun b!1619691 () Bool)

(declare-fun apply!4482 (BalanceConc!11734 Int) Token!5812)

(assert (=> b!1619691 (= e!1038799 (printTailRec!805 thiss!17113 lt!581800 (+ 0 1) (++!4693 (BalanceConc!11733 Empty!5894) (charsOf!1772 (apply!4482 lt!581800 0)))))))

(declare-fun lt!582049 () List!17795)

(assert (=> b!1619691 (= lt!582049 (list!6940 lt!581800))))

(declare-fun lt!582050 () Unit!28591)

(declare-fun lemmaDropApply!550 (List!17795 Int) Unit!28591)

(assert (=> b!1619691 (= lt!582050 (lemmaDropApply!550 lt!582049 0))))

(declare-fun drop!860 (List!17795 Int) List!17795)

(declare-fun apply!4483 (List!17795 Int) Token!5812)

(assert (=> b!1619691 (= (head!3378 (drop!860 lt!582049 0)) (apply!4483 lt!582049 0))))

(declare-fun lt!582051 () Unit!28591)

(assert (=> b!1619691 (= lt!582051 lt!582050)))

(declare-fun lt!582053 () List!17795)

(assert (=> b!1619691 (= lt!582053 (list!6940 lt!581800))))

(declare-fun lt!582052 () Unit!28591)

(declare-fun lemmaDropTail!530 (List!17795 Int) Unit!28591)

(assert (=> b!1619691 (= lt!582052 (lemmaDropTail!530 lt!582053 0))))

(declare-fun tail!2339 (List!17795) List!17795)

(assert (=> b!1619691 (= (tail!2339 (drop!860 lt!582053 0)) (drop!860 lt!582053 (+ 0 1)))))

(declare-fun lt!582047 () Unit!28591)

(assert (=> b!1619691 (= lt!582047 lt!582052)))

(assert (= (and d!487748 res!723197) b!1619689))

(assert (= (and d!487748 c!263842) b!1619690))

(assert (= (and d!487748 (not c!263842)) b!1619691))

(declare-fun m!1943599 () Bool)

(assert (=> d!487748 m!1943599))

(declare-fun m!1943601 () Bool)

(assert (=> d!487748 m!1943601))

(assert (=> d!487748 m!1943601))

(declare-fun m!1943603 () Bool)

(assert (=> d!487748 m!1943603))

(declare-fun m!1943605 () Bool)

(assert (=> d!487748 m!1943605))

(assert (=> d!487748 m!1943603))

(declare-fun m!1943607 () Bool)

(assert (=> d!487748 m!1943607))

(assert (=> b!1619689 m!1943607))

(declare-fun m!1943609 () Bool)

(assert (=> b!1619691 m!1943609))

(declare-fun m!1943611 () Bool)

(assert (=> b!1619691 m!1943611))

(declare-fun m!1943613 () Bool)

(assert (=> b!1619691 m!1943613))

(declare-fun m!1943615 () Bool)

(assert (=> b!1619691 m!1943615))

(declare-fun m!1943617 () Bool)

(assert (=> b!1619691 m!1943617))

(declare-fun m!1943619 () Bool)

(assert (=> b!1619691 m!1943619))

(assert (=> b!1619691 m!1943615))

(declare-fun m!1943621 () Bool)

(assert (=> b!1619691 m!1943621))

(declare-fun m!1943623 () Bool)

(assert (=> b!1619691 m!1943623))

(assert (=> b!1619691 m!1943609))

(declare-fun m!1943625 () Bool)

(assert (=> b!1619691 m!1943625))

(declare-fun m!1943627 () Bool)

(assert (=> b!1619691 m!1943627))

(declare-fun m!1943629 () Bool)

(assert (=> b!1619691 m!1943629))

(assert (=> b!1619691 m!1943623))

(assert (=> b!1619691 m!1943625))

(assert (=> b!1619691 m!1943545))

(assert (=> b!1619691 m!1943611))

(declare-fun m!1943631 () Bool)

(assert (=> b!1619691 m!1943631))

(assert (=> b!1619434 d!487748))

(declare-fun d!487756 () Bool)

(declare-fun e!1038802 () Bool)

(assert (=> d!487756 e!1038802))

(declare-fun res!723200 () Bool)

(assert (=> d!487756 (=> (not res!723200) (not e!1038802))))

(declare-fun lt!582056 () BalanceConc!11734)

(assert (=> d!487756 (= res!723200 (= (list!6940 lt!582056) (Cons!17725 (h!23126 tokens!457) Nil!17725)))))

(declare-fun singleton!645 (Token!5812) BalanceConc!11734)

(assert (=> d!487756 (= lt!582056 (singleton!645 (h!23126 tokens!457)))))

(assert (=> d!487756 (= (singletonSeq!1525 (h!23126 tokens!457)) lt!582056)))

(declare-fun b!1619694 () Bool)

(assert (=> b!1619694 (= e!1038802 (isBalanced!1765 (c!263789 lt!582056)))))

(assert (= (and d!487756 res!723200) b!1619694))

(declare-fun m!1943633 () Bool)

(assert (=> d!487756 m!1943633))

(declare-fun m!1943635 () Bool)

(assert (=> d!487756 m!1943635))

(declare-fun m!1943637 () Bool)

(assert (=> b!1619694 m!1943637))

(assert (=> b!1619434 d!487756))

(declare-fun b!1619713 () Bool)

(declare-fun e!1038811 () Bool)

(declare-fun lt!582067 () Option!3257)

(declare-fun contains!3102 (List!17796 Rule!6046) Bool)

(assert (=> b!1619713 (= e!1038811 (contains!3102 rules!1846 (rule!4949 (_1!10037 (get!5089 lt!582067)))))))

(declare-fun b!1619714 () Bool)

(declare-fun res!723219 () Bool)

(assert (=> b!1619714 (=> (not res!723219) (not e!1038811))))

(assert (=> b!1619714 (= res!723219 (matchR!1950 (regex!3123 (rule!4949 (_1!10037 (get!5089 lt!582067)))) (list!6939 (charsOf!1772 (_1!10037 (get!5089 lt!582067))))))))

(declare-fun b!1619715 () Bool)

(declare-fun res!723217 () Bool)

(assert (=> b!1619715 (=> (not res!723217) (not e!1038811))))

(declare-fun size!14220 (List!17794) Int)

(assert (=> b!1619715 (= res!723217 (< (size!14220 (_2!10037 (get!5089 lt!582067))) (size!14220 lt!581801)))))

(declare-fun b!1619716 () Bool)

(declare-fun e!1038809 () Option!3257)

(declare-fun call!105073 () Option!3257)

(assert (=> b!1619716 (= e!1038809 call!105073)))

(declare-fun b!1619717 () Bool)

(declare-fun res!723216 () Bool)

(assert (=> b!1619717 (=> (not res!723216) (not e!1038811))))

(declare-fun apply!4484 (TokenValueInjection!6086 BalanceConc!11732) TokenValue!3213)

(assert (=> b!1619717 (= res!723216 (= (value!98678 (_1!10037 (get!5089 lt!582067))) (apply!4484 (transformation!3123 (rule!4949 (_1!10037 (get!5089 lt!582067)))) (seqFromList!1996 (originalCharacters!3937 (_1!10037 (get!5089 lt!582067)))))))))

(declare-fun b!1619718 () Bool)

(declare-fun e!1038810 () Bool)

(assert (=> b!1619718 (= e!1038810 e!1038811)))

(declare-fun res!723221 () Bool)

(assert (=> b!1619718 (=> (not res!723221) (not e!1038811))))

(assert (=> b!1619718 (= res!723221 (isDefined!2624 lt!582067))))

(declare-fun d!487758 () Bool)

(assert (=> d!487758 e!1038810))

(declare-fun res!723220 () Bool)

(assert (=> d!487758 (=> res!723220 e!1038810)))

(assert (=> d!487758 (= res!723220 (isEmpty!10746 lt!582067))))

(assert (=> d!487758 (= lt!582067 e!1038809)))

(declare-fun c!263845 () Bool)

(assert (=> d!487758 (= c!263845 (and ((_ is Cons!17726) rules!1846) ((_ is Nil!17726) (t!148635 rules!1846))))))

(declare-fun lt!582069 () Unit!28591)

(declare-fun lt!582068 () Unit!28591)

(assert (=> d!487758 (= lt!582069 lt!582068)))

(assert (=> d!487758 (isPrefix!1383 lt!581801 lt!581801)))

(declare-fun lemmaIsPrefixRefl!948 (List!17794 List!17794) Unit!28591)

(assert (=> d!487758 (= lt!582068 (lemmaIsPrefixRefl!948 lt!581801 lt!581801))))

(assert (=> d!487758 (rulesValidInductive!960 thiss!17113 rules!1846)))

(assert (=> d!487758 (= (maxPrefix!1316 thiss!17113 rules!1846 lt!581801) lt!582067)))

(declare-fun b!1619719 () Bool)

(declare-fun res!723218 () Bool)

(assert (=> b!1619719 (=> (not res!723218) (not e!1038811))))

(assert (=> b!1619719 (= res!723218 (= (++!4694 (list!6939 (charsOf!1772 (_1!10037 (get!5089 lt!582067)))) (_2!10037 (get!5089 lt!582067))) lt!581801))))

(declare-fun b!1619720 () Bool)

(declare-fun lt!582070 () Option!3257)

(declare-fun lt!582071 () Option!3257)

(assert (=> b!1619720 (= e!1038809 (ite (and ((_ is None!3256) lt!582070) ((_ is None!3256) lt!582071)) None!3256 (ite ((_ is None!3256) lt!582071) lt!582070 (ite ((_ is None!3256) lt!582070) lt!582071 (ite (>= (size!14214 (_1!10037 (v!24255 lt!582070))) (size!14214 (_1!10037 (v!24255 lt!582071)))) lt!582070 lt!582071)))))))

(assert (=> b!1619720 (= lt!582070 call!105073)))

(assert (=> b!1619720 (= lt!582071 (maxPrefix!1316 thiss!17113 (t!148635 rules!1846) lt!581801))))

(declare-fun b!1619721 () Bool)

(declare-fun res!723215 () Bool)

(assert (=> b!1619721 (=> (not res!723215) (not e!1038811))))

(assert (=> b!1619721 (= res!723215 (= (list!6939 (charsOf!1772 (_1!10037 (get!5089 lt!582067)))) (originalCharacters!3937 (_1!10037 (get!5089 lt!582067)))))))

(declare-fun bm!105068 () Bool)

(assert (=> bm!105068 (= call!105073 (maxPrefixOneRule!762 thiss!17113 (h!23127 rules!1846) lt!581801))))

(assert (= (and d!487758 c!263845) b!1619716))

(assert (= (and d!487758 (not c!263845)) b!1619720))

(assert (= (or b!1619716 b!1619720) bm!105068))

(assert (= (and d!487758 (not res!723220)) b!1619718))

(assert (= (and b!1619718 res!723221) b!1619721))

(assert (= (and b!1619721 res!723215) b!1619715))

(assert (= (and b!1619715 res!723217) b!1619719))

(assert (= (and b!1619719 res!723218) b!1619717))

(assert (= (and b!1619717 res!723216) b!1619714))

(assert (= (and b!1619714 res!723219) b!1619713))

(declare-fun m!1943639 () Bool)

(assert (=> b!1619718 m!1943639))

(declare-fun m!1943641 () Bool)

(assert (=> b!1619721 m!1943641))

(declare-fun m!1943643 () Bool)

(assert (=> b!1619721 m!1943643))

(assert (=> b!1619721 m!1943643))

(declare-fun m!1943645 () Bool)

(assert (=> b!1619721 m!1943645))

(declare-fun m!1943647 () Bool)

(assert (=> b!1619720 m!1943647))

(assert (=> b!1619715 m!1943641))

(declare-fun m!1943649 () Bool)

(assert (=> b!1619715 m!1943649))

(declare-fun m!1943651 () Bool)

(assert (=> b!1619715 m!1943651))

(assert (=> b!1619719 m!1943641))

(assert (=> b!1619719 m!1943643))

(assert (=> b!1619719 m!1943643))

(assert (=> b!1619719 m!1943645))

(assert (=> b!1619719 m!1943645))

(declare-fun m!1943653 () Bool)

(assert (=> b!1619719 m!1943653))

(declare-fun m!1943655 () Bool)

(assert (=> bm!105068 m!1943655))

(declare-fun m!1943657 () Bool)

(assert (=> d!487758 m!1943657))

(declare-fun m!1943659 () Bool)

(assert (=> d!487758 m!1943659))

(declare-fun m!1943661 () Bool)

(assert (=> d!487758 m!1943661))

(assert (=> d!487758 m!1943143))

(assert (=> b!1619714 m!1943641))

(assert (=> b!1619714 m!1943643))

(assert (=> b!1619714 m!1943643))

(assert (=> b!1619714 m!1943645))

(assert (=> b!1619714 m!1943645))

(declare-fun m!1943663 () Bool)

(assert (=> b!1619714 m!1943663))

(assert (=> b!1619713 m!1943641))

(declare-fun m!1943665 () Bool)

(assert (=> b!1619713 m!1943665))

(assert (=> b!1619717 m!1943641))

(declare-fun m!1943667 () Bool)

(assert (=> b!1619717 m!1943667))

(assert (=> b!1619717 m!1943667))

(declare-fun m!1943669 () Bool)

(assert (=> b!1619717 m!1943669))

(assert (=> b!1619434 d!487758))

(declare-fun d!487760 () Bool)

(declare-fun c!263848 () Bool)

(assert (=> d!487760 (= c!263848 ((_ is Cons!17725) (Cons!17725 (h!23126 tokens!457) Nil!17725)))))

(declare-fun e!1038814 () List!17794)

(assert (=> d!487760 (= (printList!867 thiss!17113 (Cons!17725 (h!23126 tokens!457) Nil!17725)) e!1038814)))

(declare-fun b!1619726 () Bool)

(assert (=> b!1619726 (= e!1038814 (++!4694 (list!6939 (charsOf!1772 (h!23126 (Cons!17725 (h!23126 tokens!457) Nil!17725)))) (printList!867 thiss!17113 (t!148634 (Cons!17725 (h!23126 tokens!457) Nil!17725)))))))

(declare-fun b!1619727 () Bool)

(assert (=> b!1619727 (= e!1038814 Nil!17724)))

(assert (= (and d!487760 c!263848) b!1619726))

(assert (= (and d!487760 (not c!263848)) b!1619727))

(declare-fun m!1943671 () Bool)

(assert (=> b!1619726 m!1943671))

(assert (=> b!1619726 m!1943671))

(declare-fun m!1943673 () Bool)

(assert (=> b!1619726 m!1943673))

(declare-fun m!1943675 () Bool)

(assert (=> b!1619726 m!1943675))

(assert (=> b!1619726 m!1943673))

(assert (=> b!1619726 m!1943675))

(declare-fun m!1943677 () Bool)

(assert (=> b!1619726 m!1943677))

(assert (=> b!1619434 d!487760))

(declare-fun d!487762 () Bool)

(assert (=> d!487762 (= (isEmpty!10741 (_2!10037 lt!581792)) ((_ is Nil!17724) (_2!10037 lt!581792)))))

(assert (=> b!1619433 d!487762))

(declare-fun d!487764 () Bool)

(declare-fun c!263851 () Bool)

(assert (=> d!487764 (= c!263851 (isEmpty!10741 (++!4694 lt!581796 lt!581807)))))

(declare-fun e!1038817 () Bool)

(assert (=> d!487764 (= (prefixMatch!386 lt!581812 (++!4694 lt!581796 lt!581807)) e!1038817)))

(declare-fun b!1619732 () Bool)

(declare-fun lostCause!426 (Regex!4451) Bool)

(assert (=> b!1619732 (= e!1038817 (not (lostCause!426 lt!581812)))))

(declare-fun b!1619733 () Bool)

(declare-fun derivativeStep!1070 (Regex!4451 C!9076) Regex!4451)

(declare-fun tail!2340 (List!17794) List!17794)

(assert (=> b!1619733 (= e!1038817 (prefixMatch!386 (derivativeStep!1070 lt!581812 (head!3376 (++!4694 lt!581796 lt!581807))) (tail!2340 (++!4694 lt!581796 lt!581807))))))

(assert (= (and d!487764 c!263851) b!1619732))

(assert (= (and d!487764 (not c!263851)) b!1619733))

(assert (=> d!487764 m!1943071))

(declare-fun m!1943679 () Bool)

(assert (=> d!487764 m!1943679))

(declare-fun m!1943681 () Bool)

(assert (=> b!1619732 m!1943681))

(assert (=> b!1619733 m!1943071))

(declare-fun m!1943683 () Bool)

(assert (=> b!1619733 m!1943683))

(assert (=> b!1619733 m!1943683))

(declare-fun m!1943685 () Bool)

(assert (=> b!1619733 m!1943685))

(assert (=> b!1619733 m!1943071))

(declare-fun m!1943687 () Bool)

(assert (=> b!1619733 m!1943687))

(assert (=> b!1619733 m!1943685))

(assert (=> b!1619733 m!1943687))

(declare-fun m!1943689 () Bool)

(assert (=> b!1619733 m!1943689))

(assert (=> b!1619432 d!487764))

(declare-fun b!1619744 () Bool)

(declare-fun res!723226 () Bool)

(declare-fun e!1038823 () Bool)

(assert (=> b!1619744 (=> (not res!723226) (not e!1038823))))

(declare-fun lt!582074 () List!17794)

(assert (=> b!1619744 (= res!723226 (= (size!14220 lt!582074) (+ (size!14220 lt!581796) (size!14220 lt!581807))))))

(declare-fun b!1619745 () Bool)

(assert (=> b!1619745 (= e!1038823 (or (not (= lt!581807 Nil!17724)) (= lt!582074 lt!581796)))))

(declare-fun b!1619742 () Bool)

(declare-fun e!1038822 () List!17794)

(assert (=> b!1619742 (= e!1038822 lt!581807)))

(declare-fun d!487766 () Bool)

(assert (=> d!487766 e!1038823))

(declare-fun res!723227 () Bool)

(assert (=> d!487766 (=> (not res!723227) (not e!1038823))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!2459 (List!17794) (InoxSet C!9076))

(assert (=> d!487766 (= res!723227 (= (content!2459 lt!582074) ((_ map or) (content!2459 lt!581796) (content!2459 lt!581807))))))

(assert (=> d!487766 (= lt!582074 e!1038822)))

(declare-fun c!263854 () Bool)

(assert (=> d!487766 (= c!263854 ((_ is Nil!17724) lt!581796))))

(assert (=> d!487766 (= (++!4694 lt!581796 lt!581807) lt!582074)))

(declare-fun b!1619743 () Bool)

(assert (=> b!1619743 (= e!1038822 (Cons!17724 (h!23125 lt!581796) (++!4694 (t!148633 lt!581796) lt!581807)))))

(assert (= (and d!487766 c!263854) b!1619742))

(assert (= (and d!487766 (not c!263854)) b!1619743))

(assert (= (and d!487766 res!723227) b!1619744))

(assert (= (and b!1619744 res!723226) b!1619745))

(declare-fun m!1943691 () Bool)

(assert (=> b!1619744 m!1943691))

(declare-fun m!1943693 () Bool)

(assert (=> b!1619744 m!1943693))

(declare-fun m!1943695 () Bool)

(assert (=> b!1619744 m!1943695))

(declare-fun m!1943697 () Bool)

(assert (=> d!487766 m!1943697))

(declare-fun m!1943699 () Bool)

(assert (=> d!487766 m!1943699))

(declare-fun m!1943701 () Bool)

(assert (=> d!487766 m!1943701))

(declare-fun m!1943703 () Bool)

(assert (=> b!1619743 m!1943703))

(assert (=> b!1619432 d!487766))

(declare-fun d!487768 () Bool)

(assert (=> d!487768 (= (list!6939 lt!581795) (list!6943 (c!263787 lt!581795)))))

(declare-fun bs!394421 () Bool)

(assert (= bs!394421 d!487768))

(declare-fun m!1943705 () Bool)

(assert (=> bs!394421 m!1943705))

(assert (=> b!1619432 d!487768))

(declare-fun d!487770 () Bool)

(declare-fun lt!582111 () Bool)

(declare-fun e!1038843 () Bool)

(assert (=> d!487770 (= lt!582111 e!1038843)))

(declare-fun res!723246 () Bool)

(assert (=> d!487770 (=> (not res!723246) (not e!1038843))))

(assert (=> d!487770 (= res!723246 (= (list!6940 (_1!10038 (lex!1236 thiss!17113 rules!1846 (print!1283 thiss!17113 (singletonSeq!1525 (h!23126 tokens!457)))))) (list!6940 (singletonSeq!1525 (h!23126 tokens!457)))))))

(declare-fun e!1038842 () Bool)

(assert (=> d!487770 (= lt!582111 e!1038842)))

(declare-fun res!723245 () Bool)

(assert (=> d!487770 (=> (not res!723245) (not e!1038842))))

(declare-fun lt!582110 () tuple2!17272)

(assert (=> d!487770 (= res!723245 (= (size!14218 (_1!10038 lt!582110)) 1))))

(assert (=> d!487770 (= lt!582110 (lex!1236 thiss!17113 rules!1846 (print!1283 thiss!17113 (singletonSeq!1525 (h!23126 tokens!457)))))))

(assert (=> d!487770 (not (isEmpty!10743 rules!1846))))

(assert (=> d!487770 (= (rulesProduceIndividualToken!1404 thiss!17113 rules!1846 (h!23126 tokens!457)) lt!582111)))

(declare-fun b!1619771 () Bool)

(declare-fun res!723247 () Bool)

(assert (=> b!1619771 (=> (not res!723247) (not e!1038842))))

(assert (=> b!1619771 (= res!723247 (= (apply!4482 (_1!10038 lt!582110) 0) (h!23126 tokens!457)))))

(declare-fun b!1619772 () Bool)

(declare-fun isEmpty!10751 (BalanceConc!11732) Bool)

(assert (=> b!1619772 (= e!1038842 (isEmpty!10751 (_2!10038 lt!582110)))))

(declare-fun b!1619773 () Bool)

(assert (=> b!1619773 (= e!1038843 (isEmpty!10751 (_2!10038 (lex!1236 thiss!17113 rules!1846 (print!1283 thiss!17113 (singletonSeq!1525 (h!23126 tokens!457)))))))))

(assert (= (and d!487770 res!723245) b!1619771))

(assert (= (and b!1619771 res!723247) b!1619772))

(assert (= (and d!487770 res!723246) b!1619773))

(assert (=> d!487770 m!1943127))

(declare-fun m!1943769 () Bool)

(assert (=> d!487770 m!1943769))

(declare-fun m!1943771 () Bool)

(assert (=> d!487770 m!1943771))

(declare-fun m!1943773 () Bool)

(assert (=> d!487770 m!1943773))

(declare-fun m!1943775 () Bool)

(assert (=> d!487770 m!1943775))

(assert (=> d!487770 m!1943031))

(assert (=> d!487770 m!1943127))

(assert (=> d!487770 m!1943773))

(assert (=> d!487770 m!1943127))

(declare-fun m!1943777 () Bool)

(assert (=> d!487770 m!1943777))

(declare-fun m!1943779 () Bool)

(assert (=> b!1619771 m!1943779))

(declare-fun m!1943781 () Bool)

(assert (=> b!1619772 m!1943781))

(assert (=> b!1619773 m!1943127))

(assert (=> b!1619773 m!1943127))

(assert (=> b!1619773 m!1943773))

(assert (=> b!1619773 m!1943773))

(assert (=> b!1619773 m!1943775))

(declare-fun m!1943783 () Bool)

(assert (=> b!1619773 m!1943783))

(assert (=> b!1619452 d!487770))

(declare-fun d!487794 () Bool)

(declare-fun res!723252 () Bool)

(declare-fun e!1038846 () Bool)

(assert (=> d!487794 (=> (not res!723252) (not e!1038846))))

(assert (=> d!487794 (= res!723252 (not (isEmpty!10741 (originalCharacters!3937 (h!23126 tokens!457)))))))

(assert (=> d!487794 (= (inv!23124 (h!23126 tokens!457)) e!1038846)))

(declare-fun b!1619778 () Bool)

(declare-fun res!723253 () Bool)

(assert (=> b!1619778 (=> (not res!723253) (not e!1038846))))

(declare-fun dynLambda!7905 (Int TokenValue!3213) BalanceConc!11732)

(assert (=> b!1619778 (= res!723253 (= (originalCharacters!3937 (h!23126 tokens!457)) (list!6939 (dynLambda!7905 (toChars!4409 (transformation!3123 (rule!4949 (h!23126 tokens!457)))) (value!98678 (h!23126 tokens!457))))))))

(declare-fun b!1619779 () Bool)

(assert (=> b!1619779 (= e!1038846 (= (size!14214 (h!23126 tokens!457)) (size!14220 (originalCharacters!3937 (h!23126 tokens!457)))))))

(assert (= (and d!487794 res!723252) b!1619778))

(assert (= (and b!1619778 res!723253) b!1619779))

(declare-fun b_lambda!51063 () Bool)

(assert (=> (not b_lambda!51063) (not b!1619778)))

(declare-fun t!148649 () Bool)

(declare-fun tb!93119 () Bool)

(assert (=> (and b!1619442 (= (toChars!4409 (transformation!3123 (rule!4949 (h!23126 tokens!457)))) (toChars!4409 (transformation!3123 (rule!4949 (h!23126 tokens!457))))) t!148649) tb!93119))

(declare-fun b!1619784 () Bool)

(declare-fun e!1038849 () Bool)

(declare-fun tp!471581 () Bool)

(declare-fun inv!23127 (Conc!5894) Bool)

(assert (=> b!1619784 (= e!1038849 (and (inv!23127 (c!263787 (dynLambda!7905 (toChars!4409 (transformation!3123 (rule!4949 (h!23126 tokens!457)))) (value!98678 (h!23126 tokens!457))))) tp!471581))))

(declare-fun result!112220 () Bool)

(declare-fun inv!23128 (BalanceConc!11732) Bool)

(assert (=> tb!93119 (= result!112220 (and (inv!23128 (dynLambda!7905 (toChars!4409 (transformation!3123 (rule!4949 (h!23126 tokens!457)))) (value!98678 (h!23126 tokens!457)))) e!1038849))))

(assert (= tb!93119 b!1619784))

(declare-fun m!1943785 () Bool)

(assert (=> b!1619784 m!1943785))

(declare-fun m!1943787 () Bool)

(assert (=> tb!93119 m!1943787))

(assert (=> b!1619778 t!148649))

(declare-fun b_and!114897 () Bool)

(assert (= b_and!114879 (and (=> t!148649 result!112220) b_and!114897)))

(declare-fun tb!93121 () Bool)

(declare-fun t!148651 () Bool)

(assert (=> (and b!1619430 (= (toChars!4409 (transformation!3123 (h!23127 rules!1846))) (toChars!4409 (transformation!3123 (rule!4949 (h!23126 tokens!457))))) t!148651) tb!93121))

(declare-fun result!112224 () Bool)

(assert (= result!112224 result!112220))

(assert (=> b!1619778 t!148651))

(declare-fun b_and!114899 () Bool)

(assert (= b_and!114883 (and (=> t!148651 result!112224) b_and!114899)))

(declare-fun m!1943789 () Bool)

(assert (=> d!487794 m!1943789))

(declare-fun m!1943791 () Bool)

(assert (=> b!1619778 m!1943791))

(assert (=> b!1619778 m!1943791))

(declare-fun m!1943793 () Bool)

(assert (=> b!1619778 m!1943793))

(declare-fun m!1943795 () Bool)

(assert (=> b!1619779 m!1943795))

(assert (=> b!1619431 d!487794))

(declare-fun d!487796 () Bool)

(assert (=> d!487796 (= (list!6940 (_1!10038 lt!581787)) (list!6942 (c!263789 (_1!10038 lt!581787))))))

(declare-fun bs!394429 () Bool)

(assert (= bs!394429 d!487796))

(declare-fun m!1943797 () Bool)

(assert (=> bs!394429 m!1943797))

(assert (=> b!1619451 d!487796))

(declare-fun d!487798 () Bool)

(declare-fun e!1038876 () Bool)

(assert (=> d!487798 e!1038876))

(declare-fun res!723278 () Bool)

(assert (=> d!487798 (=> (not res!723278) (not e!1038876))))

(assert (=> d!487798 (= res!723278 (= (list!6940 (_1!10038 (lex!1236 thiss!17113 rules!1846 (print!1283 thiss!17113 (seqFromList!1995 (t!148634 tokens!457)))))) (t!148634 tokens!457)))))

(declare-fun lt!582194 () Unit!28591)

(declare-fun e!1038877 () Unit!28591)

(assert (=> d!487798 (= lt!582194 e!1038877)))

(declare-fun c!263865 () Bool)

(assert (=> d!487798 (= c!263865 (or ((_ is Nil!17725) (t!148634 tokens!457)) ((_ is Nil!17725) (t!148634 (t!148634 tokens!457)))))))

(assert (=> d!487798 (not (isEmpty!10743 rules!1846))))

(assert (=> d!487798 (= (theoremInvertabilityWhenTokenListSeparable!197 thiss!17113 rules!1846 (t!148634 tokens!457)) lt!582194)))

(declare-fun b!1619819 () Bool)

(declare-fun Unit!28600 () Unit!28591)

(assert (=> b!1619819 (= e!1038877 Unit!28600)))

(declare-fun b!1619820 () Bool)

(declare-fun Unit!28601 () Unit!28591)

(assert (=> b!1619820 (= e!1038877 Unit!28601)))

(declare-fun lt!582205 () BalanceConc!11732)

(assert (=> b!1619820 (= lt!582205 (print!1283 thiss!17113 (seqFromList!1995 (t!148634 tokens!457))))))

(declare-fun lt!582189 () BalanceConc!11732)

(assert (=> b!1619820 (= lt!582189 (print!1283 thiss!17113 (seqFromList!1995 (t!148634 (t!148634 tokens!457)))))))

(declare-fun lt!582198 () tuple2!17272)

(assert (=> b!1619820 (= lt!582198 (lex!1236 thiss!17113 rules!1846 lt!582189))))

(declare-fun lt!582190 () List!17794)

(assert (=> b!1619820 (= lt!582190 (list!6939 (charsOf!1772 (h!23126 (t!148634 tokens!457)))))))

(declare-fun lt!582193 () List!17794)

(assert (=> b!1619820 (= lt!582193 (list!6939 lt!582189))))

(declare-fun lt!582187 () Unit!28591)

(assert (=> b!1619820 (= lt!582187 (lemmaConcatTwoListThenFirstIsPrefix!908 lt!582190 lt!582193))))

(assert (=> b!1619820 (isPrefix!1383 lt!582190 (++!4694 lt!582190 lt!582193))))

(declare-fun lt!582210 () Unit!28591)

(assert (=> b!1619820 (= lt!582210 lt!582187)))

(declare-fun lt!582199 () Unit!28591)

(assert (=> b!1619820 (= lt!582199 (theoremInvertabilityWhenTokenListSeparable!197 thiss!17113 rules!1846 (t!148634 (t!148634 tokens!457))))))

(declare-fun lt!582203 () Unit!28591)

(assert (=> b!1619820 (= lt!582203 (seqFromListBHdTlConstructive!200 (h!23126 (t!148634 (t!148634 tokens!457))) (t!148634 (t!148634 (t!148634 tokens!457))) (_1!10038 lt!582198)))))

(assert (=> b!1619820 (= (list!6940 (_1!10038 lt!582198)) (list!6940 (prepend!637 (seqFromList!1995 (t!148634 (t!148634 (t!148634 tokens!457)))) (h!23126 (t!148634 (t!148634 tokens!457))))))))

(declare-fun lt!582204 () Unit!28591)

(assert (=> b!1619820 (= lt!582204 lt!582203)))

(declare-fun lt!582211 () Option!3257)

(assert (=> b!1619820 (= lt!582211 (maxPrefix!1316 thiss!17113 rules!1846 (list!6939 lt!582205)))))

(assert (=> b!1619820 (= (print!1283 thiss!17113 (singletonSeq!1525 (h!23126 (t!148634 tokens!457)))) (printTailRec!805 thiss!17113 (singletonSeq!1525 (h!23126 (t!148634 tokens!457))) 0 (BalanceConc!11733 Empty!5894)))))

(declare-fun lt!582202 () Unit!28591)

(declare-fun Unit!28602 () Unit!28591)

(assert (=> b!1619820 (= lt!582202 Unit!28602)))

(declare-fun lt!582200 () Unit!28591)

(assert (=> b!1619820 (= lt!582200 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!326 thiss!17113 rules!1846 (list!6939 (charsOf!1772 (h!23126 (t!148634 tokens!457)))) (list!6939 lt!582189)))))

(assert (=> b!1619820 (= (list!6939 (charsOf!1772 (h!23126 (t!148634 tokens!457)))) (originalCharacters!3937 (h!23126 (t!148634 tokens!457))))))

(declare-fun lt!582207 () Unit!28591)

(declare-fun Unit!28603 () Unit!28591)

(assert (=> b!1619820 (= lt!582207 Unit!28603)))

(assert (=> b!1619820 (= (list!6939 (singletonSeq!1524 (apply!4476 (charsOf!1772 (h!23126 (t!148634 (t!148634 tokens!457)))) 0))) (Cons!17724 (head!3376 (originalCharacters!3937 (h!23126 (t!148634 (t!148634 tokens!457))))) Nil!17724))))

(declare-fun lt!582206 () Unit!28591)

(declare-fun Unit!28604 () Unit!28591)

(assert (=> b!1619820 (= lt!582206 Unit!28604)))

(assert (=> b!1619820 (= (list!6939 (singletonSeq!1524 (apply!4476 (charsOf!1772 (h!23126 (t!148634 (t!148634 tokens!457)))) 0))) (Cons!17724 (head!3376 (list!6939 lt!582189)) Nil!17724))))

(declare-fun lt!582208 () Unit!28591)

(declare-fun Unit!28605 () Unit!28591)

(assert (=> b!1619820 (= lt!582208 Unit!28605)))

(assert (=> b!1619820 (= (list!6939 (singletonSeq!1524 (apply!4476 (charsOf!1772 (h!23126 (t!148634 (t!148634 tokens!457)))) 0))) (Cons!17724 (head!3377 lt!582189) Nil!17724))))

(declare-fun lt!582192 () Unit!28591)

(declare-fun Unit!28606 () Unit!28591)

(assert (=> b!1619820 (= lt!582192 Unit!28606)))

(assert (=> b!1619820 (isDefined!2624 (maxPrefix!1316 thiss!17113 rules!1846 (originalCharacters!3937 (h!23126 (t!148634 tokens!457)))))))

(declare-fun lt!582212 () Unit!28591)

(declare-fun Unit!28607 () Unit!28591)

(assert (=> b!1619820 (= lt!582212 Unit!28607)))

(assert (=> b!1619820 (isDefined!2624 (maxPrefix!1316 thiss!17113 rules!1846 (list!6939 (charsOf!1772 (h!23126 (t!148634 tokens!457))))))))

(declare-fun lt!582196 () Unit!28591)

(declare-fun Unit!28608 () Unit!28591)

(assert (=> b!1619820 (= lt!582196 Unit!28608)))

(declare-fun lt!582209 () Unit!28591)

(declare-fun Unit!28609 () Unit!28591)

(assert (=> b!1619820 (= lt!582209 Unit!28609)))

(assert (=> b!1619820 (= (_1!10037 (get!5089 (maxPrefix!1316 thiss!17113 rules!1846 (list!6939 (charsOf!1772 (h!23126 (t!148634 tokens!457))))))) (h!23126 (t!148634 tokens!457)))))

(declare-fun lt!582197 () Unit!28591)

(declare-fun Unit!28610 () Unit!28591)

(assert (=> b!1619820 (= lt!582197 Unit!28610)))

(assert (=> b!1619820 (isEmpty!10741 (_2!10037 (get!5089 (maxPrefix!1316 thiss!17113 rules!1846 (list!6939 (charsOf!1772 (h!23126 (t!148634 tokens!457))))))))))

(declare-fun lt!582191 () Unit!28591)

(declare-fun Unit!28611 () Unit!28591)

(assert (=> b!1619820 (= lt!582191 Unit!28611)))

(assert (=> b!1619820 (matchR!1950 (regex!3123 (rule!4949 (h!23126 (t!148634 tokens!457)))) (list!6939 (charsOf!1772 (h!23126 (t!148634 tokens!457)))))))

(declare-fun lt!582201 () Unit!28591)

(declare-fun Unit!28612 () Unit!28591)

(assert (=> b!1619820 (= lt!582201 Unit!28612)))

(assert (=> b!1619820 (= (rule!4949 (h!23126 (t!148634 tokens!457))) (rule!4949 (h!23126 (t!148634 tokens!457))))))

(declare-fun lt!582188 () Unit!28591)

(declare-fun Unit!28613 () Unit!28591)

(assert (=> b!1619820 (= lt!582188 Unit!28613)))

(declare-fun lt!582195 () Unit!28591)

(declare-fun lemmaMaxPrefWithNoPrefixMatchAllRulesThenSuffixReturnSame!97 (LexerInterface!2752 List!17796 Token!5812 Rule!6046 List!17794) Unit!28591)

(assert (=> b!1619820 (= lt!582195 (lemmaMaxPrefWithNoPrefixMatchAllRulesThenSuffixReturnSame!97 thiss!17113 rules!1846 (h!23126 (t!148634 tokens!457)) (rule!4949 (h!23126 (t!148634 tokens!457))) (list!6939 lt!582189)))))

(declare-fun b!1619821 () Bool)

(assert (=> b!1619821 (= e!1038876 (isEmpty!10751 (_2!10038 (lex!1236 thiss!17113 rules!1846 (print!1283 thiss!17113 (seqFromList!1995 (t!148634 tokens!457)))))))))

(assert (= (and d!487798 c!263865) b!1619819))

(assert (= (and d!487798 (not c!263865)) b!1619820))

(assert (= (and d!487798 res!723278) b!1619821))

(assert (=> d!487798 m!1943083))

(declare-fun m!1943827 () Bool)

(assert (=> d!487798 m!1943827))

(assert (=> d!487798 m!1943083))

(assert (=> d!487798 m!1943827))

(declare-fun m!1943829 () Bool)

(assert (=> d!487798 m!1943829))

(assert (=> d!487798 m!1943031))

(declare-fun m!1943831 () Bool)

(assert (=> d!487798 m!1943831))

(assert (=> b!1619820 m!1943083))

(assert (=> b!1619820 m!1943827))

(assert (=> b!1619820 m!1943065))

(declare-fun m!1943833 () Bool)

(assert (=> b!1619820 m!1943833))

(declare-fun m!1943835 () Bool)

(assert (=> b!1619820 m!1943835))

(declare-fun m!1943837 () Bool)

(assert (=> b!1619820 m!1943837))

(declare-fun m!1943839 () Bool)

(assert (=> b!1619820 m!1943839))

(declare-fun m!1943841 () Bool)

(assert (=> b!1619820 m!1943841))

(declare-fun m!1943843 () Bool)

(assert (=> b!1619820 m!1943843))

(declare-fun m!1943845 () Bool)

(assert (=> b!1619820 m!1943845))

(declare-fun m!1943847 () Bool)

(assert (=> b!1619820 m!1943847))

(declare-fun m!1943849 () Bool)

(assert (=> b!1619820 m!1943849))

(declare-fun m!1943851 () Bool)

(assert (=> b!1619820 m!1943851))

(declare-fun m!1943853 () Bool)

(assert (=> b!1619820 m!1943853))

(declare-fun m!1943855 () Bool)

(assert (=> b!1619820 m!1943855))

(declare-fun m!1943857 () Bool)

(assert (=> b!1619820 m!1943857))

(declare-fun m!1943859 () Bool)

(assert (=> b!1619820 m!1943859))

(declare-fun m!1943861 () Bool)

(assert (=> b!1619820 m!1943861))

(declare-fun m!1943863 () Bool)

(assert (=> b!1619820 m!1943863))

(declare-fun m!1943865 () Bool)

(assert (=> b!1619820 m!1943865))

(assert (=> b!1619820 m!1943863))

(declare-fun m!1943867 () Bool)

(assert (=> b!1619820 m!1943867))

(declare-fun m!1943869 () Bool)

(assert (=> b!1619820 m!1943869))

(declare-fun m!1943871 () Bool)

(assert (=> b!1619820 m!1943871))

(declare-fun m!1943873 () Bool)

(assert (=> b!1619820 m!1943873))

(assert (=> b!1619820 m!1943083))

(assert (=> b!1619820 m!1943841))

(declare-fun m!1943875 () Bool)

(assert (=> b!1619820 m!1943875))

(assert (=> b!1619820 m!1943857))

(assert (=> b!1619820 m!1943871))

(assert (=> b!1619820 m!1943853))

(assert (=> b!1619820 m!1943843))

(assert (=> b!1619820 m!1943839))

(assert (=> b!1619820 m!1943845))

(assert (=> b!1619820 m!1943857))

(declare-fun m!1943877 () Bool)

(assert (=> b!1619820 m!1943877))

(declare-fun m!1943879 () Bool)

(assert (=> b!1619820 m!1943879))

(assert (=> b!1619820 m!1943057))

(assert (=> b!1619820 m!1943871))

(assert (=> b!1619820 m!1943869))

(declare-fun m!1943881 () Bool)

(assert (=> b!1619820 m!1943881))

(assert (=> b!1619820 m!1943065))

(assert (=> b!1619820 m!1943871))

(assert (=> b!1619820 m!1943863))

(declare-fun m!1943883 () Bool)

(assert (=> b!1619820 m!1943883))

(assert (=> b!1619820 m!1943867))

(declare-fun m!1943885 () Bool)

(assert (=> b!1619820 m!1943885))

(declare-fun m!1943887 () Bool)

(assert (=> b!1619820 m!1943887))

(declare-fun m!1943889 () Bool)

(assert (=> b!1619820 m!1943889))

(declare-fun m!1943891 () Bool)

(assert (=> b!1619820 m!1943891))

(assert (=> b!1619820 m!1943835))

(assert (=> b!1619820 m!1943057))

(declare-fun m!1943893 () Bool)

(assert (=> b!1619820 m!1943893))

(assert (=> b!1619820 m!1943863))

(declare-fun m!1943895 () Bool)

(assert (=> b!1619820 m!1943895))

(assert (=> b!1619820 m!1943891))

(assert (=> b!1619820 m!1943853))

(declare-fun m!1943897 () Bool)

(assert (=> b!1619820 m!1943897))

(declare-fun m!1943899 () Bool)

(assert (=> b!1619820 m!1943899))

(assert (=> b!1619821 m!1943083))

(assert (=> b!1619821 m!1943083))

(assert (=> b!1619821 m!1943827))

(assert (=> b!1619821 m!1943827))

(assert (=> b!1619821 m!1943829))

(declare-fun m!1943901 () Bool)

(assert (=> b!1619821 m!1943901))

(assert (=> b!1619451 d!487798))

(declare-fun b!1619833 () Bool)

(declare-fun e!1038886 () Bool)

(assert (=> b!1619833 (= e!1038886 (>= (size!14220 lt!581804) (size!14220 lt!581796)))))

(declare-fun b!1619831 () Bool)

(declare-fun res!723288 () Bool)

(declare-fun e!1038884 () Bool)

(assert (=> b!1619831 (=> (not res!723288) (not e!1038884))))

(assert (=> b!1619831 (= res!723288 (= (head!3376 lt!581796) (head!3376 lt!581804)))))

(declare-fun d!487804 () Bool)

(assert (=> d!487804 e!1038886))

(declare-fun res!723290 () Bool)

(assert (=> d!487804 (=> res!723290 e!1038886)))

(declare-fun lt!582215 () Bool)

(assert (=> d!487804 (= res!723290 (not lt!582215))))

(declare-fun e!1038885 () Bool)

(assert (=> d!487804 (= lt!582215 e!1038885)))

(declare-fun res!723287 () Bool)

(assert (=> d!487804 (=> res!723287 e!1038885)))

(assert (=> d!487804 (= res!723287 ((_ is Nil!17724) lt!581796))))

(assert (=> d!487804 (= (isPrefix!1383 lt!581796 lt!581804) lt!582215)))

(declare-fun b!1619832 () Bool)

(assert (=> b!1619832 (= e!1038884 (isPrefix!1383 (tail!2340 lt!581796) (tail!2340 lt!581804)))))

(declare-fun b!1619830 () Bool)

(assert (=> b!1619830 (= e!1038885 e!1038884)))

(declare-fun res!723289 () Bool)

(assert (=> b!1619830 (=> (not res!723289) (not e!1038884))))

(assert (=> b!1619830 (= res!723289 (not ((_ is Nil!17724) lt!581804)))))

(assert (= (and d!487804 (not res!723287)) b!1619830))

(assert (= (and b!1619830 res!723289) b!1619831))

(assert (= (and b!1619831 res!723288) b!1619832))

(assert (= (and d!487804 (not res!723290)) b!1619833))

(declare-fun m!1943903 () Bool)

(assert (=> b!1619833 m!1943903))

(assert (=> b!1619833 m!1943693))

(declare-fun m!1943905 () Bool)

(assert (=> b!1619831 m!1943905))

(declare-fun m!1943907 () Bool)

(assert (=> b!1619831 m!1943907))

(declare-fun m!1943909 () Bool)

(assert (=> b!1619832 m!1943909))

(declare-fun m!1943911 () Bool)

(assert (=> b!1619832 m!1943911))

(assert (=> b!1619832 m!1943909))

(assert (=> b!1619832 m!1943911))

(declare-fun m!1943913 () Bool)

(assert (=> b!1619832 m!1943913))

(assert (=> b!1619451 d!487804))

(declare-fun d!487806 () Bool)

(assert (=> d!487806 (isPrefix!1383 lt!581796 (++!4694 lt!581796 lt!581805))))

(declare-fun lt!582218 () Unit!28591)

(declare-fun choose!9751 (List!17794 List!17794) Unit!28591)

(assert (=> d!487806 (= lt!582218 (choose!9751 lt!581796 lt!581805))))

(assert (=> d!487806 (= (lemmaConcatTwoListThenFirstIsPrefix!908 lt!581796 lt!581805) lt!582218)))

(declare-fun bs!394431 () Bool)

(assert (= bs!394431 d!487806))

(assert (=> bs!394431 m!1943089))

(assert (=> bs!394431 m!1943089))

(declare-fun m!1943915 () Bool)

(assert (=> bs!394431 m!1943915))

(declare-fun m!1943917 () Bool)

(assert (=> bs!394431 m!1943917))

(assert (=> b!1619451 d!487806))

(declare-fun d!487808 () Bool)

(assert (=> d!487808 (= (isEmpty!10743 rules!1846) ((_ is Nil!17726) rules!1846))))

(assert (=> b!1619450 d!487808))

(declare-fun d!487810 () Bool)

(assert (=> d!487810 (= (inv!23120 (tag!3401 (h!23127 rules!1846))) (= (mod (str.len (value!98677 (tag!3401 (h!23127 rules!1846)))) 2) 0))))

(assert (=> b!1619429 d!487810))

(declare-fun d!487812 () Bool)

(declare-fun res!723291 () Bool)

(declare-fun e!1038887 () Bool)

(assert (=> d!487812 (=> (not res!723291) (not e!1038887))))

(assert (=> d!487812 (= res!723291 (semiInverseModEq!1187 (toChars!4409 (transformation!3123 (h!23127 rules!1846))) (toValue!4550 (transformation!3123 (h!23127 rules!1846)))))))

(assert (=> d!487812 (= (inv!23123 (transformation!3123 (h!23127 rules!1846))) e!1038887)))

(declare-fun b!1619834 () Bool)

(assert (=> b!1619834 (= e!1038887 (equivClasses!1128 (toChars!4409 (transformation!3123 (h!23127 rules!1846))) (toValue!4550 (transformation!3123 (h!23127 rules!1846)))))))

(assert (= (and d!487812 res!723291) b!1619834))

(declare-fun m!1943919 () Bool)

(assert (=> d!487812 m!1943919))

(declare-fun m!1943921 () Bool)

(assert (=> b!1619834 m!1943921))

(assert (=> b!1619429 d!487812))

(declare-fun d!487814 () Bool)

(assert (=> d!487814 (= (head!3376 (originalCharacters!3937 (h!23126 (t!148634 tokens!457)))) (h!23125 (originalCharacters!3937 (h!23126 (t!148634 tokens!457)))))))

(assert (=> b!1619428 d!487814))

(declare-fun d!487816 () Bool)

(declare-fun lt!582221 () C!9076)

(assert (=> d!487816 (= lt!582221 (head!3376 (list!6939 lt!581790)))))

(declare-fun head!3381 (Conc!5894) C!9076)

(assert (=> d!487816 (= lt!582221 (head!3381 (c!263787 lt!581790)))))

(assert (=> d!487816 (not (isEmpty!10751 lt!581790))))

(assert (=> d!487816 (= (head!3377 lt!581790) lt!582221)))

(declare-fun bs!394432 () Bool)

(assert (= bs!394432 d!487816))

(assert (=> bs!394432 m!1943099))

(assert (=> bs!394432 m!1943099))

(declare-fun m!1943923 () Bool)

(assert (=> bs!394432 m!1943923))

(declare-fun m!1943925 () Bool)

(assert (=> bs!394432 m!1943925))

(declare-fun m!1943927 () Bool)

(assert (=> bs!394432 m!1943927))

(assert (=> b!1619449 d!487816))

(declare-fun b!1619902 () Bool)

(declare-fun e!1038932 () Bool)

(assert (=> b!1619902 (= e!1038932 true)))

(declare-fun b!1619901 () Bool)

(declare-fun e!1038931 () Bool)

(assert (=> b!1619901 (= e!1038931 e!1038932)))

(declare-fun b!1619900 () Bool)

(declare-fun e!1038930 () Bool)

(assert (=> b!1619900 (= e!1038930 e!1038931)))

(declare-fun d!487818 () Bool)

(assert (=> d!487818 e!1038930))

(assert (= b!1619901 b!1619902))

(assert (= b!1619900 b!1619901))

(assert (= (and d!487818 ((_ is Cons!17726) rules!1846)) b!1619900))

(declare-fun order!10509 () Int)

(declare-fun order!10507 () Int)

(declare-fun lambda!67180 () Int)

(declare-fun dynLambda!7909 (Int Int) Int)

(declare-fun dynLambda!7910 (Int Int) Int)

(assert (=> b!1619902 (< (dynLambda!7909 order!10507 (toValue!4550 (transformation!3123 (h!23127 rules!1846)))) (dynLambda!7910 order!10509 lambda!67180))))

(declare-fun order!10511 () Int)

(declare-fun dynLambda!7911 (Int Int) Int)

(assert (=> b!1619902 (< (dynLambda!7911 order!10511 (toChars!4409 (transformation!3123 (h!23127 rules!1846)))) (dynLambda!7910 order!10509 lambda!67180))))

(assert (=> d!487818 true))

(declare-fun lt!582244 () Bool)

(declare-fun forall!4068 (List!17795 Int) Bool)

(assert (=> d!487818 (= lt!582244 (forall!4068 tokens!457 lambda!67180))))

(declare-fun e!1038922 () Bool)

(assert (=> d!487818 (= lt!582244 e!1038922)))

(declare-fun res!723328 () Bool)

(assert (=> d!487818 (=> res!723328 e!1038922)))

(assert (=> d!487818 (= res!723328 (not ((_ is Cons!17725) tokens!457)))))

(assert (=> d!487818 (not (isEmpty!10743 rules!1846))))

(assert (=> d!487818 (= (rulesProduceEachTokenIndividuallyList!954 thiss!17113 rules!1846 tokens!457) lt!582244)))

(declare-fun b!1619890 () Bool)

(declare-fun e!1038923 () Bool)

(assert (=> b!1619890 (= e!1038922 e!1038923)))

(declare-fun res!723329 () Bool)

(assert (=> b!1619890 (=> (not res!723329) (not e!1038923))))

(assert (=> b!1619890 (= res!723329 (rulesProduceIndividualToken!1404 thiss!17113 rules!1846 (h!23126 tokens!457)))))

(declare-fun b!1619891 () Bool)

(assert (=> b!1619891 (= e!1038923 (rulesProduceEachTokenIndividuallyList!954 thiss!17113 rules!1846 (t!148634 tokens!457)))))

(assert (= (and d!487818 (not res!723328)) b!1619890))

(assert (= (and b!1619890 res!723329) b!1619891))

(declare-fun m!1944025 () Bool)

(assert (=> d!487818 m!1944025))

(assert (=> d!487818 m!1943031))

(assert (=> b!1619890 m!1943045))

(declare-fun m!1944027 () Bool)

(assert (=> b!1619891 m!1944027))

(assert (=> b!1619448 d!487818))

(declare-fun d!487842 () Bool)

(declare-fun e!1038935 () Bool)

(assert (=> d!487842 e!1038935))

(declare-fun res!723332 () Bool)

(assert (=> d!487842 (=> (not res!723332) (not e!1038935))))

(declare-fun lt!582247 () BalanceConc!11732)

(assert (=> d!487842 (= res!723332 (= (list!6939 lt!582247) (Cons!17724 (apply!4476 (charsOf!1772 (h!23126 (t!148634 tokens!457))) 0) Nil!17724)))))

(declare-fun singleton!646 (C!9076) BalanceConc!11732)

(assert (=> d!487842 (= lt!582247 (singleton!646 (apply!4476 (charsOf!1772 (h!23126 (t!148634 tokens!457))) 0)))))

(assert (=> d!487842 (= (singletonSeq!1524 (apply!4476 (charsOf!1772 (h!23126 (t!148634 tokens!457))) 0)) lt!582247)))

(declare-fun b!1619907 () Bool)

(declare-fun isBalanced!1766 (Conc!5894) Bool)

(assert (=> b!1619907 (= e!1038935 (isBalanced!1766 (c!263787 lt!582247)))))

(assert (= (and d!487842 res!723332) b!1619907))

(declare-fun m!1944029 () Bool)

(assert (=> d!487842 m!1944029))

(assert (=> d!487842 m!1943051))

(declare-fun m!1944031 () Bool)

(assert (=> d!487842 m!1944031))

(declare-fun m!1944033 () Bool)

(assert (=> b!1619907 m!1944033))

(assert (=> b!1619427 d!487842))

(declare-fun lt!582274 () Bool)

(declare-fun d!487844 () Bool)

(assert (=> d!487844 (= lt!582274 (prefixMatch!386 lt!581812 (list!6939 (++!4693 lt!581802 lt!581795))))))

(declare-datatypes ((List!17800 0))(
  ( (Nil!17730) (Cons!17730 (h!23131 Regex!4451) (t!148681 List!17800)) )
))
(declare-datatypes ((Context!1710 0))(
  ( (Context!1711 (exprs!1355 List!17800)) )
))
(declare-fun prefixMatchZipperSequence!501 ((InoxSet Context!1710) BalanceConc!11732 Int) Bool)

(declare-fun focus!161 (Regex!4451) (InoxSet Context!1710))

(assert (=> d!487844 (= lt!582274 (prefixMatchZipperSequence!501 (focus!161 lt!581812) (++!4693 lt!581802 lt!581795) 0))))

(declare-fun lt!582271 () Unit!28591)

(declare-fun lt!582268 () Unit!28591)

(assert (=> d!487844 (= lt!582271 lt!582268)))

(declare-fun lt!582273 () List!17794)

(declare-fun lt!582275 () (InoxSet Context!1710))

(declare-fun prefixMatchZipper!140 ((InoxSet Context!1710) List!17794) Bool)

(assert (=> d!487844 (= (prefixMatch!386 lt!581812 lt!582273) (prefixMatchZipper!140 lt!582275 lt!582273))))

(declare-datatypes ((List!17801 0))(
  ( (Nil!17731) (Cons!17731 (h!23132 Context!1710) (t!148682 List!17801)) )
))
(declare-fun lt!582270 () List!17801)

(declare-fun prefixMatchZipperRegexEquiv!140 ((InoxSet Context!1710) List!17801 Regex!4451 List!17794) Unit!28591)

(assert (=> d!487844 (= lt!582268 (prefixMatchZipperRegexEquiv!140 lt!582275 lt!582270 lt!581812 lt!582273))))

(assert (=> d!487844 (= lt!582273 (list!6939 (++!4693 lt!581802 lt!581795)))))

(declare-fun toList!901 ((InoxSet Context!1710)) List!17801)

(assert (=> d!487844 (= lt!582270 (toList!901 (focus!161 lt!581812)))))

(assert (=> d!487844 (= lt!582275 (focus!161 lt!581812))))

(declare-fun lt!582269 () Unit!28591)

(declare-fun lt!582276 () Unit!28591)

(assert (=> d!487844 (= lt!582269 lt!582276)))

(declare-fun lt!582272 () (InoxSet Context!1710))

(declare-fun lt!582277 () Int)

(declare-fun dropList!584 (BalanceConc!11732 Int) List!17794)

(assert (=> d!487844 (= (prefixMatchZipper!140 lt!582272 (dropList!584 (++!4693 lt!581802 lt!581795) lt!582277)) (prefixMatchZipperSequence!501 lt!582272 (++!4693 lt!581802 lt!581795) lt!582277))))

(declare-fun lemmaprefixMatchZipperSequenceEquivalent!140 ((InoxSet Context!1710) BalanceConc!11732 Int) Unit!28591)

(assert (=> d!487844 (= lt!582276 (lemmaprefixMatchZipperSequenceEquivalent!140 lt!582272 (++!4693 lt!581802 lt!581795) lt!582277))))

(assert (=> d!487844 (= lt!582277 0)))

(assert (=> d!487844 (= lt!582272 (focus!161 lt!581812))))

(declare-fun validRegex!1766 (Regex!4451) Bool)

(assert (=> d!487844 (validRegex!1766 lt!581812)))

(assert (=> d!487844 (= (prefixMatchZipperSequence!499 lt!581812 (++!4693 lt!581802 lt!581795)) lt!582274)))

(declare-fun bs!394436 () Bool)

(assert (= bs!394436 d!487844))

(assert (=> bs!394436 m!1943049))

(declare-fun m!1944035 () Bool)

(assert (=> bs!394436 m!1944035))

(declare-fun m!1944037 () Bool)

(assert (=> bs!394436 m!1944037))

(declare-fun m!1944039 () Bool)

(assert (=> bs!394436 m!1944039))

(declare-fun m!1944041 () Bool)

(assert (=> bs!394436 m!1944041))

(declare-fun m!1944043 () Bool)

(assert (=> bs!394436 m!1944043))

(assert (=> bs!394436 m!1943049))

(declare-fun m!1944045 () Bool)

(assert (=> bs!394436 m!1944045))

(assert (=> bs!394436 m!1943049))

(declare-fun m!1944047 () Bool)

(assert (=> bs!394436 m!1944047))

(declare-fun m!1944049 () Bool)

(assert (=> bs!394436 m!1944049))

(declare-fun m!1944051 () Bool)

(assert (=> bs!394436 m!1944051))

(assert (=> bs!394436 m!1943049))

(declare-fun m!1944053 () Bool)

(assert (=> bs!394436 m!1944053))

(assert (=> bs!394436 m!1943049))

(assert (=> bs!394436 m!1944041))

(assert (=> bs!394436 m!1944047))

(declare-fun m!1944055 () Bool)

(assert (=> bs!394436 m!1944055))

(assert (=> bs!394436 m!1944051))

(declare-fun m!1944057 () Bool)

(assert (=> bs!394436 m!1944057))

(assert (=> bs!394436 m!1944051))

(declare-fun m!1944059 () Bool)

(assert (=> bs!394436 m!1944059))

(assert (=> b!1619427 d!487844))

(declare-fun d!487846 () Bool)

(declare-fun e!1038938 () Bool)

(assert (=> d!487846 e!1038938))

(declare-fun res!723341 () Bool)

(assert (=> d!487846 (=> (not res!723341) (not e!1038938))))

(declare-fun appendAssocInst!423 (Conc!5894 Conc!5894) Bool)

(assert (=> d!487846 (= res!723341 (appendAssocInst!423 (c!263787 lt!581802) (c!263787 lt!581795)))))

(declare-fun lt!582280 () BalanceConc!11732)

(declare-fun ++!4696 (Conc!5894 Conc!5894) Conc!5894)

(assert (=> d!487846 (= lt!582280 (BalanceConc!11733 (++!4696 (c!263787 lt!581802) (c!263787 lt!581795))))))

(assert (=> d!487846 (= (++!4693 lt!581802 lt!581795) lt!582280)))

(declare-fun b!1619916 () Bool)

(declare-fun res!723344 () Bool)

(assert (=> b!1619916 (=> (not res!723344) (not e!1038938))))

(assert (=> b!1619916 (= res!723344 (isBalanced!1766 (++!4696 (c!263787 lt!581802) (c!263787 lt!581795))))))

(declare-fun b!1619918 () Bool)

(declare-fun res!723343 () Bool)

(assert (=> b!1619918 (=> (not res!723343) (not e!1038938))))

(declare-fun height!893 (Conc!5894) Int)

(declare-fun max!0 (Int Int) Int)

(assert (=> b!1619918 (= res!723343 (>= (height!893 (++!4696 (c!263787 lt!581802) (c!263787 lt!581795))) (max!0 (height!893 (c!263787 lt!581802)) (height!893 (c!263787 lt!581795)))))))

(declare-fun b!1619919 () Bool)

(assert (=> b!1619919 (= e!1038938 (= (list!6939 lt!582280) (++!4694 (list!6939 lt!581802) (list!6939 lt!581795))))))

(declare-fun b!1619917 () Bool)

(declare-fun res!723342 () Bool)

(assert (=> b!1619917 (=> (not res!723342) (not e!1038938))))

(assert (=> b!1619917 (= res!723342 (<= (height!893 (++!4696 (c!263787 lt!581802) (c!263787 lt!581795))) (+ (max!0 (height!893 (c!263787 lt!581802)) (height!893 (c!263787 lt!581795))) 1)))))

(assert (= (and d!487846 res!723341) b!1619916))

(assert (= (and b!1619916 res!723344) b!1619917))

(assert (= (and b!1619917 res!723342) b!1619918))

(assert (= (and b!1619918 res!723343) b!1619919))

(declare-fun m!1944061 () Bool)

(assert (=> b!1619919 m!1944061))

(assert (=> b!1619919 m!1943091))

(assert (=> b!1619919 m!1943075))

(assert (=> b!1619919 m!1943091))

(assert (=> b!1619919 m!1943075))

(declare-fun m!1944063 () Bool)

(assert (=> b!1619919 m!1944063))

(declare-fun m!1944065 () Bool)

(assert (=> b!1619917 m!1944065))

(declare-fun m!1944067 () Bool)

(assert (=> b!1619917 m!1944067))

(declare-fun m!1944069 () Bool)

(assert (=> b!1619917 m!1944069))

(declare-fun m!1944071 () Bool)

(assert (=> b!1619917 m!1944071))

(declare-fun m!1944073 () Bool)

(assert (=> b!1619917 m!1944073))

(assert (=> b!1619917 m!1944065))

(assert (=> b!1619917 m!1944067))

(assert (=> b!1619917 m!1944071))

(declare-fun m!1944075 () Bool)

(assert (=> d!487846 m!1944075))

(assert (=> d!487846 m!1944071))

(assert (=> b!1619916 m!1944071))

(assert (=> b!1619916 m!1944071))

(declare-fun m!1944077 () Bool)

(assert (=> b!1619916 m!1944077))

(assert (=> b!1619918 m!1944065))

(assert (=> b!1619918 m!1944067))

(assert (=> b!1619918 m!1944069))

(assert (=> b!1619918 m!1944071))

(assert (=> b!1619918 m!1944073))

(assert (=> b!1619918 m!1944065))

(assert (=> b!1619918 m!1944067))

(assert (=> b!1619918 m!1944071))

(assert (=> b!1619427 d!487846))

(declare-fun d!487848 () Bool)

(declare-fun lt!582283 () C!9076)

(declare-fun apply!4485 (List!17794 Int) C!9076)

(assert (=> d!487848 (= lt!582283 (apply!4485 (list!6939 (charsOf!1772 (h!23126 (t!148634 tokens!457)))) 0))))

(declare-fun apply!4486 (Conc!5894 Int) C!9076)

(assert (=> d!487848 (= lt!582283 (apply!4486 (c!263787 (charsOf!1772 (h!23126 (t!148634 tokens!457)))) 0))))

(declare-fun e!1038941 () Bool)

(assert (=> d!487848 e!1038941))

(declare-fun res!723347 () Bool)

(assert (=> d!487848 (=> (not res!723347) (not e!1038941))))

(assert (=> d!487848 (= res!723347 (<= 0 0))))

(assert (=> d!487848 (= (apply!4476 (charsOf!1772 (h!23126 (t!148634 tokens!457))) 0) lt!582283)))

(declare-fun b!1619922 () Bool)

(assert (=> b!1619922 (= e!1038941 (< 0 (size!14219 (charsOf!1772 (h!23126 (t!148634 tokens!457))))))))

(assert (= (and d!487848 res!723347) b!1619922))

(assert (=> d!487848 m!1943057))

(assert (=> d!487848 m!1943871))

(assert (=> d!487848 m!1943871))

(declare-fun m!1944079 () Bool)

(assert (=> d!487848 m!1944079))

(declare-fun m!1944081 () Bool)

(assert (=> d!487848 m!1944081))

(assert (=> b!1619922 m!1943057))

(declare-fun m!1944083 () Bool)

(assert (=> b!1619922 m!1944083))

(assert (=> b!1619427 d!487848))

(declare-fun d!487850 () Bool)

(declare-fun lt!582286 () Unit!28591)

(declare-fun lemma!227 (List!17796 LexerInterface!2752 List!17796) Unit!28591)

(assert (=> d!487850 (= lt!582286 (lemma!227 rules!1846 thiss!17113 rules!1846))))

(declare-fun lambda!67183 () Int)

(declare-fun generalisedUnion!235 (List!17800) Regex!4451)

(declare-fun map!3668 (List!17796 Int) List!17800)

(assert (=> d!487850 (= (rulesRegex!513 thiss!17113 rules!1846) (generalisedUnion!235 (map!3668 rules!1846 lambda!67183)))))

(declare-fun bs!394437 () Bool)

(assert (= bs!394437 d!487850))

(declare-fun m!1944085 () Bool)

(assert (=> bs!394437 m!1944085))

(declare-fun m!1944087 () Bool)

(assert (=> bs!394437 m!1944087))

(assert (=> bs!394437 m!1944087))

(declare-fun m!1944089 () Bool)

(assert (=> bs!394437 m!1944089))

(assert (=> b!1619427 d!487850))

(declare-fun d!487852 () Bool)

(declare-fun lt!582289 () BalanceConc!11732)

(assert (=> d!487852 (= (list!6939 lt!582289) (originalCharacters!3937 (h!23126 (t!148634 tokens!457))))))

(assert (=> d!487852 (= lt!582289 (dynLambda!7905 (toChars!4409 (transformation!3123 (rule!4949 (h!23126 (t!148634 tokens!457))))) (value!98678 (h!23126 (t!148634 tokens!457)))))))

(assert (=> d!487852 (= (charsOf!1772 (h!23126 (t!148634 tokens!457))) lt!582289)))

(declare-fun b_lambda!51065 () Bool)

(assert (=> (not b_lambda!51065) (not d!487852)))

(declare-fun t!148659 () Bool)

(declare-fun tb!93123 () Bool)

(assert (=> (and b!1619442 (= (toChars!4409 (transformation!3123 (rule!4949 (h!23126 tokens!457)))) (toChars!4409 (transformation!3123 (rule!4949 (h!23126 (t!148634 tokens!457)))))) t!148659) tb!93123))

(declare-fun b!1619923 () Bool)

(declare-fun e!1038942 () Bool)

(declare-fun tp!471582 () Bool)

(assert (=> b!1619923 (= e!1038942 (and (inv!23127 (c!263787 (dynLambda!7905 (toChars!4409 (transformation!3123 (rule!4949 (h!23126 (t!148634 tokens!457))))) (value!98678 (h!23126 (t!148634 tokens!457)))))) tp!471582))))

(declare-fun result!112226 () Bool)

(assert (=> tb!93123 (= result!112226 (and (inv!23128 (dynLambda!7905 (toChars!4409 (transformation!3123 (rule!4949 (h!23126 (t!148634 tokens!457))))) (value!98678 (h!23126 (t!148634 tokens!457))))) e!1038942))))

(assert (= tb!93123 b!1619923))

(declare-fun m!1944091 () Bool)

(assert (=> b!1619923 m!1944091))

(declare-fun m!1944093 () Bool)

(assert (=> tb!93123 m!1944093))

(assert (=> d!487852 t!148659))

(declare-fun b_and!114901 () Bool)

(assert (= b_and!114897 (and (=> t!148659 result!112226) b_and!114901)))

(declare-fun tb!93125 () Bool)

(declare-fun t!148661 () Bool)

(assert (=> (and b!1619430 (= (toChars!4409 (transformation!3123 (h!23127 rules!1846))) (toChars!4409 (transformation!3123 (rule!4949 (h!23126 (t!148634 tokens!457)))))) t!148661) tb!93125))

(declare-fun result!112228 () Bool)

(assert (= result!112228 result!112226))

(assert (=> d!487852 t!148661))

(declare-fun b_and!114903 () Bool)

(assert (= b_and!114899 (and (=> t!148661 result!112228) b_and!114903)))

(declare-fun m!1944095 () Bool)

(assert (=> d!487852 m!1944095))

(declare-fun m!1944097 () Bool)

(assert (=> d!487852 m!1944097))

(assert (=> b!1619427 d!487852))

(declare-fun d!487854 () Bool)

(assert (=> d!487854 (= (head!3376 lt!581805) (h!23125 lt!581805))))

(assert (=> b!1619426 d!487854))

(declare-fun b!1619924 () Bool)

(declare-fun e!1038945 () Bool)

(declare-fun lt!582290 () Option!3257)

(assert (=> b!1619924 (= e!1038945 (contains!3102 rules!1846 (rule!4949 (_1!10037 (get!5089 lt!582290)))))))

(declare-fun b!1619925 () Bool)

(declare-fun res!723352 () Bool)

(assert (=> b!1619925 (=> (not res!723352) (not e!1038945))))

(assert (=> b!1619925 (= res!723352 (matchR!1950 (regex!3123 (rule!4949 (_1!10037 (get!5089 lt!582290)))) (list!6939 (charsOf!1772 (_1!10037 (get!5089 lt!582290))))))))

(declare-fun b!1619926 () Bool)

(declare-fun res!723350 () Bool)

(assert (=> b!1619926 (=> (not res!723350) (not e!1038945))))

(assert (=> b!1619926 (= res!723350 (< (size!14220 (_2!10037 (get!5089 lt!582290))) (size!14220 (originalCharacters!3937 (h!23126 tokens!457)))))))

(declare-fun b!1619927 () Bool)

(declare-fun e!1038943 () Option!3257)

(declare-fun call!105079 () Option!3257)

(assert (=> b!1619927 (= e!1038943 call!105079)))

(declare-fun b!1619928 () Bool)

(declare-fun res!723349 () Bool)

(assert (=> b!1619928 (=> (not res!723349) (not e!1038945))))

(assert (=> b!1619928 (= res!723349 (= (value!98678 (_1!10037 (get!5089 lt!582290))) (apply!4484 (transformation!3123 (rule!4949 (_1!10037 (get!5089 lt!582290)))) (seqFromList!1996 (originalCharacters!3937 (_1!10037 (get!5089 lt!582290)))))))))

(declare-fun b!1619929 () Bool)

(declare-fun e!1038944 () Bool)

(assert (=> b!1619929 (= e!1038944 e!1038945)))

(declare-fun res!723354 () Bool)

(assert (=> b!1619929 (=> (not res!723354) (not e!1038945))))

(assert (=> b!1619929 (= res!723354 (isDefined!2624 lt!582290))))

(declare-fun d!487856 () Bool)

(assert (=> d!487856 e!1038944))

(declare-fun res!723353 () Bool)

(assert (=> d!487856 (=> res!723353 e!1038944)))

(assert (=> d!487856 (= res!723353 (isEmpty!10746 lt!582290))))

(assert (=> d!487856 (= lt!582290 e!1038943)))

(declare-fun c!263871 () Bool)

(assert (=> d!487856 (= c!263871 (and ((_ is Cons!17726) rules!1846) ((_ is Nil!17726) (t!148635 rules!1846))))))

(declare-fun lt!582292 () Unit!28591)

(declare-fun lt!582291 () Unit!28591)

(assert (=> d!487856 (= lt!582292 lt!582291)))

(assert (=> d!487856 (isPrefix!1383 (originalCharacters!3937 (h!23126 tokens!457)) (originalCharacters!3937 (h!23126 tokens!457)))))

(assert (=> d!487856 (= lt!582291 (lemmaIsPrefixRefl!948 (originalCharacters!3937 (h!23126 tokens!457)) (originalCharacters!3937 (h!23126 tokens!457))))))

(assert (=> d!487856 (rulesValidInductive!960 thiss!17113 rules!1846)))

(assert (=> d!487856 (= (maxPrefix!1316 thiss!17113 rules!1846 (originalCharacters!3937 (h!23126 tokens!457))) lt!582290)))

(declare-fun b!1619930 () Bool)

(declare-fun res!723351 () Bool)

(assert (=> b!1619930 (=> (not res!723351) (not e!1038945))))

(assert (=> b!1619930 (= res!723351 (= (++!4694 (list!6939 (charsOf!1772 (_1!10037 (get!5089 lt!582290)))) (_2!10037 (get!5089 lt!582290))) (originalCharacters!3937 (h!23126 tokens!457))))))

(declare-fun b!1619931 () Bool)

(declare-fun lt!582293 () Option!3257)

(declare-fun lt!582294 () Option!3257)

(assert (=> b!1619931 (= e!1038943 (ite (and ((_ is None!3256) lt!582293) ((_ is None!3256) lt!582294)) None!3256 (ite ((_ is None!3256) lt!582294) lt!582293 (ite ((_ is None!3256) lt!582293) lt!582294 (ite (>= (size!14214 (_1!10037 (v!24255 lt!582293))) (size!14214 (_1!10037 (v!24255 lt!582294)))) lt!582293 lt!582294)))))))

(assert (=> b!1619931 (= lt!582293 call!105079)))

(assert (=> b!1619931 (= lt!582294 (maxPrefix!1316 thiss!17113 (t!148635 rules!1846) (originalCharacters!3937 (h!23126 tokens!457))))))

(declare-fun b!1619932 () Bool)

(declare-fun res!723348 () Bool)

(assert (=> b!1619932 (=> (not res!723348) (not e!1038945))))

(assert (=> b!1619932 (= res!723348 (= (list!6939 (charsOf!1772 (_1!10037 (get!5089 lt!582290)))) (originalCharacters!3937 (_1!10037 (get!5089 lt!582290)))))))

(declare-fun bm!105074 () Bool)

(assert (=> bm!105074 (= call!105079 (maxPrefixOneRule!762 thiss!17113 (h!23127 rules!1846) (originalCharacters!3937 (h!23126 tokens!457))))))

(assert (= (and d!487856 c!263871) b!1619927))

(assert (= (and d!487856 (not c!263871)) b!1619931))

(assert (= (or b!1619927 b!1619931) bm!105074))

(assert (= (and d!487856 (not res!723353)) b!1619929))

(assert (= (and b!1619929 res!723354) b!1619932))

(assert (= (and b!1619932 res!723348) b!1619926))

(assert (= (and b!1619926 res!723350) b!1619930))

(assert (= (and b!1619930 res!723351) b!1619928))

(assert (= (and b!1619928 res!723349) b!1619925))

(assert (= (and b!1619925 res!723352) b!1619924))

(declare-fun m!1944099 () Bool)

(assert (=> b!1619929 m!1944099))

(declare-fun m!1944101 () Bool)

(assert (=> b!1619932 m!1944101))

(declare-fun m!1944103 () Bool)

(assert (=> b!1619932 m!1944103))

(assert (=> b!1619932 m!1944103))

(declare-fun m!1944105 () Bool)

(assert (=> b!1619932 m!1944105))

(declare-fun m!1944107 () Bool)

(assert (=> b!1619931 m!1944107))

(assert (=> b!1619926 m!1944101))

(declare-fun m!1944109 () Bool)

(assert (=> b!1619926 m!1944109))

(assert (=> b!1619926 m!1943795))

(assert (=> b!1619930 m!1944101))

(assert (=> b!1619930 m!1944103))

(assert (=> b!1619930 m!1944103))

(assert (=> b!1619930 m!1944105))

(assert (=> b!1619930 m!1944105))

(declare-fun m!1944111 () Bool)

(assert (=> b!1619930 m!1944111))

(declare-fun m!1944113 () Bool)

(assert (=> bm!105074 m!1944113))

(declare-fun m!1944115 () Bool)

(assert (=> d!487856 m!1944115))

(declare-fun m!1944117 () Bool)

(assert (=> d!487856 m!1944117))

(declare-fun m!1944119 () Bool)

(assert (=> d!487856 m!1944119))

(assert (=> d!487856 m!1943143))

(assert (=> b!1619925 m!1944101))

(assert (=> b!1619925 m!1944103))

(assert (=> b!1619925 m!1944103))

(assert (=> b!1619925 m!1944105))

(assert (=> b!1619925 m!1944105))

(declare-fun m!1944121 () Bool)

(assert (=> b!1619925 m!1944121))

(assert (=> b!1619924 m!1944101))

(declare-fun m!1944123 () Bool)

(assert (=> b!1619924 m!1944123))

(assert (=> b!1619928 m!1944101))

(declare-fun m!1944125 () Bool)

(assert (=> b!1619928 m!1944125))

(assert (=> b!1619928 m!1944125))

(declare-fun m!1944127 () Bool)

(assert (=> b!1619928 m!1944127))

(assert (=> b!1619447 d!487856))

(declare-fun d!487858 () Bool)

(assert (=> d!487858 true))

(declare-fun lt!582297 () Bool)

(declare-fun lambda!67186 () Int)

(declare-fun forall!4070 (List!17796 Int) Bool)

(assert (=> d!487858 (= lt!582297 (forall!4070 rules!1846 lambda!67186))))

(declare-fun e!1038951 () Bool)

(assert (=> d!487858 (= lt!582297 e!1038951)))

(declare-fun res!723359 () Bool)

(assert (=> d!487858 (=> res!723359 e!1038951)))

(assert (=> d!487858 (= res!723359 (not ((_ is Cons!17726) rules!1846)))))

(assert (=> d!487858 (= (rulesValidInductive!960 thiss!17113 rules!1846) lt!582297)))

(declare-fun b!1619937 () Bool)

(declare-fun e!1038950 () Bool)

(assert (=> b!1619937 (= e!1038951 e!1038950)))

(declare-fun res!723360 () Bool)

(assert (=> b!1619937 (=> (not res!723360) (not e!1038950))))

(declare-fun ruleValid!733 (LexerInterface!2752 Rule!6046) Bool)

(assert (=> b!1619937 (= res!723360 (ruleValid!733 thiss!17113 (h!23127 rules!1846)))))

(declare-fun b!1619938 () Bool)

(assert (=> b!1619938 (= e!1038950 (rulesValidInductive!960 thiss!17113 (t!148635 rules!1846)))))

(assert (= (and d!487858 (not res!723359)) b!1619937))

(assert (= (and b!1619937 res!723360) b!1619938))

(declare-fun m!1944129 () Bool)

(assert (=> d!487858 m!1944129))

(declare-fun m!1944131 () Bool)

(assert (=> b!1619937 m!1944131))

(declare-fun m!1944133 () Bool)

(assert (=> b!1619938 m!1944133))

(assert (=> b!1619447 d!487858))

(declare-fun d!487860 () Bool)

(assert (=> d!487860 (= (get!5089 lt!581809) (v!24255 lt!581809))))

(assert (=> b!1619447 d!487860))

(declare-fun d!487862 () Bool)

(assert (=> d!487862 (= (isDefined!2624 lt!581809) (not (isEmpty!10746 lt!581809)))))

(declare-fun bs!394438 () Bool)

(assert (= bs!394438 d!487862))

(declare-fun m!1944135 () Bool)

(assert (=> bs!394438 m!1944135))

(assert (=> b!1619447 d!487862))

(declare-fun d!487864 () Bool)

(assert (=> d!487864 (= (isDefined!2624 (maxPrefix!1316 thiss!17113 rules!1846 (originalCharacters!3937 (h!23126 tokens!457)))) (not (isEmpty!10746 (maxPrefix!1316 thiss!17113 rules!1846 (originalCharacters!3937 (h!23126 tokens!457))))))))

(declare-fun bs!394439 () Bool)

(assert (= bs!394439 d!487864))

(assert (=> bs!394439 m!1943137))

(declare-fun m!1944137 () Bool)

(assert (=> bs!394439 m!1944137))

(assert (=> b!1619447 d!487864))

(declare-fun b!1619941 () Bool)

(declare-fun e!1038954 () Bool)

(declare-fun lt!582298 () Option!3257)

(assert (=> b!1619941 (= e!1038954 (contains!3102 rules!1846 (rule!4949 (_1!10037 (get!5089 lt!582298)))))))

(declare-fun b!1619942 () Bool)

(declare-fun res!723365 () Bool)

(assert (=> b!1619942 (=> (not res!723365) (not e!1038954))))

(assert (=> b!1619942 (= res!723365 (matchR!1950 (regex!3123 (rule!4949 (_1!10037 (get!5089 lt!582298)))) (list!6939 (charsOf!1772 (_1!10037 (get!5089 lt!582298))))))))

(declare-fun b!1619943 () Bool)

(declare-fun res!723363 () Bool)

(assert (=> b!1619943 (=> (not res!723363) (not e!1038954))))

(assert (=> b!1619943 (= res!723363 (< (size!14220 (_2!10037 (get!5089 lt!582298))) (size!14220 lt!581796)))))

(declare-fun b!1619944 () Bool)

(declare-fun e!1038952 () Option!3257)

(declare-fun call!105080 () Option!3257)

(assert (=> b!1619944 (= e!1038952 call!105080)))

(declare-fun b!1619945 () Bool)

(declare-fun res!723362 () Bool)

(assert (=> b!1619945 (=> (not res!723362) (not e!1038954))))

(assert (=> b!1619945 (= res!723362 (= (value!98678 (_1!10037 (get!5089 lt!582298))) (apply!4484 (transformation!3123 (rule!4949 (_1!10037 (get!5089 lt!582298)))) (seqFromList!1996 (originalCharacters!3937 (_1!10037 (get!5089 lt!582298)))))))))

(declare-fun b!1619946 () Bool)

(declare-fun e!1038953 () Bool)

(assert (=> b!1619946 (= e!1038953 e!1038954)))

(declare-fun res!723367 () Bool)

(assert (=> b!1619946 (=> (not res!723367) (not e!1038954))))

(assert (=> b!1619946 (= res!723367 (isDefined!2624 lt!582298))))

(declare-fun d!487866 () Bool)

(assert (=> d!487866 e!1038953))

(declare-fun res!723366 () Bool)

(assert (=> d!487866 (=> res!723366 e!1038953)))

(assert (=> d!487866 (= res!723366 (isEmpty!10746 lt!582298))))

(assert (=> d!487866 (= lt!582298 e!1038952)))

(declare-fun c!263872 () Bool)

(assert (=> d!487866 (= c!263872 (and ((_ is Cons!17726) rules!1846) ((_ is Nil!17726) (t!148635 rules!1846))))))

(declare-fun lt!582300 () Unit!28591)

(declare-fun lt!582299 () Unit!28591)

(assert (=> d!487866 (= lt!582300 lt!582299)))

(assert (=> d!487866 (isPrefix!1383 lt!581796 lt!581796)))

(assert (=> d!487866 (= lt!582299 (lemmaIsPrefixRefl!948 lt!581796 lt!581796))))

(assert (=> d!487866 (rulesValidInductive!960 thiss!17113 rules!1846)))

(assert (=> d!487866 (= (maxPrefix!1316 thiss!17113 rules!1846 lt!581796) lt!582298)))

(declare-fun b!1619947 () Bool)

(declare-fun res!723364 () Bool)

(assert (=> b!1619947 (=> (not res!723364) (not e!1038954))))

(assert (=> b!1619947 (= res!723364 (= (++!4694 (list!6939 (charsOf!1772 (_1!10037 (get!5089 lt!582298)))) (_2!10037 (get!5089 lt!582298))) lt!581796))))

(declare-fun b!1619948 () Bool)

(declare-fun lt!582301 () Option!3257)

(declare-fun lt!582302 () Option!3257)

(assert (=> b!1619948 (= e!1038952 (ite (and ((_ is None!3256) lt!582301) ((_ is None!3256) lt!582302)) None!3256 (ite ((_ is None!3256) lt!582302) lt!582301 (ite ((_ is None!3256) lt!582301) lt!582302 (ite (>= (size!14214 (_1!10037 (v!24255 lt!582301))) (size!14214 (_1!10037 (v!24255 lt!582302)))) lt!582301 lt!582302)))))))

(assert (=> b!1619948 (= lt!582301 call!105080)))

(assert (=> b!1619948 (= lt!582302 (maxPrefix!1316 thiss!17113 (t!148635 rules!1846) lt!581796))))

(declare-fun b!1619949 () Bool)

(declare-fun res!723361 () Bool)

(assert (=> b!1619949 (=> (not res!723361) (not e!1038954))))

(assert (=> b!1619949 (= res!723361 (= (list!6939 (charsOf!1772 (_1!10037 (get!5089 lt!582298)))) (originalCharacters!3937 (_1!10037 (get!5089 lt!582298)))))))

(declare-fun bm!105075 () Bool)

(assert (=> bm!105075 (= call!105080 (maxPrefixOneRule!762 thiss!17113 (h!23127 rules!1846) lt!581796))))

(assert (= (and d!487866 c!263872) b!1619944))

(assert (= (and d!487866 (not c!263872)) b!1619948))

(assert (= (or b!1619944 b!1619948) bm!105075))

(assert (= (and d!487866 (not res!723366)) b!1619946))

(assert (= (and b!1619946 res!723367) b!1619949))

(assert (= (and b!1619949 res!723361) b!1619943))

(assert (= (and b!1619943 res!723363) b!1619947))

(assert (= (and b!1619947 res!723364) b!1619945))

(assert (= (and b!1619945 res!723362) b!1619942))

(assert (= (and b!1619942 res!723365) b!1619941))

(declare-fun m!1944139 () Bool)

(assert (=> b!1619946 m!1944139))

(declare-fun m!1944141 () Bool)

(assert (=> b!1619949 m!1944141))

(declare-fun m!1944143 () Bool)

(assert (=> b!1619949 m!1944143))

(assert (=> b!1619949 m!1944143))

(declare-fun m!1944145 () Bool)

(assert (=> b!1619949 m!1944145))

(declare-fun m!1944147 () Bool)

(assert (=> b!1619948 m!1944147))

(assert (=> b!1619943 m!1944141))

(declare-fun m!1944149 () Bool)

(assert (=> b!1619943 m!1944149))

(assert (=> b!1619943 m!1943693))

(assert (=> b!1619947 m!1944141))

(assert (=> b!1619947 m!1944143))

(assert (=> b!1619947 m!1944143))

(assert (=> b!1619947 m!1944145))

(assert (=> b!1619947 m!1944145))

(declare-fun m!1944151 () Bool)

(assert (=> b!1619947 m!1944151))

(declare-fun m!1944153 () Bool)

(assert (=> bm!105075 m!1944153))

(declare-fun m!1944155 () Bool)

(assert (=> d!487866 m!1944155))

(declare-fun m!1944157 () Bool)

(assert (=> d!487866 m!1944157))

(declare-fun m!1944159 () Bool)

(assert (=> d!487866 m!1944159))

(assert (=> d!487866 m!1943143))

(assert (=> b!1619942 m!1944141))

(assert (=> b!1619942 m!1944143))

(assert (=> b!1619942 m!1944143))

(assert (=> b!1619942 m!1944145))

(assert (=> b!1619942 m!1944145))

(declare-fun m!1944161 () Bool)

(assert (=> b!1619942 m!1944161))

(assert (=> b!1619941 m!1944141))

(declare-fun m!1944163 () Bool)

(assert (=> b!1619941 m!1944163))

(assert (=> b!1619945 m!1944141))

(declare-fun m!1944165 () Bool)

(assert (=> b!1619945 m!1944165))

(assert (=> b!1619945 m!1944165))

(declare-fun m!1944167 () Bool)

(assert (=> b!1619945 m!1944167))

(assert (=> b!1619447 d!487866))

(declare-fun d!487868 () Bool)

(declare-fun isEmpty!10753 (Option!3258) Bool)

(assert (=> d!487868 (= (isDefined!2625 (maxPrefixZipperSequence!647 thiss!17113 rules!1846 (seqFromList!1996 (originalCharacters!3937 (h!23126 tokens!457))))) (not (isEmpty!10753 (maxPrefixZipperSequence!647 thiss!17113 rules!1846 (seqFromList!1996 (originalCharacters!3937 (h!23126 tokens!457)))))))))

(declare-fun bs!394440 () Bool)

(assert (= bs!394440 d!487868))

(assert (=> bs!394440 m!1943041))

(declare-fun m!1944169 () Bool)

(assert (=> bs!394440 m!1944169))

(assert (=> b!1619446 d!487868))

(declare-fun call!105083 () Option!3258)

(declare-fun bm!105078 () Bool)

(declare-fun maxPrefixOneRuleZipperSequence!304 (LexerInterface!2752 Rule!6046 BalanceConc!11732) Option!3258)

(assert (=> bm!105078 (= call!105083 (maxPrefixOneRuleZipperSequence!304 thiss!17113 (h!23127 rules!1846) (seqFromList!1996 (originalCharacters!3937 (h!23126 tokens!457)))))))

(declare-fun b!1619990 () Bool)

(declare-fun e!1038989 () Bool)

(declare-fun e!1038985 () Bool)

(assert (=> b!1619990 (= e!1038989 e!1038985)))

(declare-fun res!723400 () Bool)

(assert (=> b!1619990 (=> res!723400 e!1038985)))

(declare-fun lt!582402 () Option!3258)

(assert (=> b!1619990 (= res!723400 (not (isDefined!2625 lt!582402)))))

(declare-fun b!1619991 () Bool)

(declare-fun e!1038987 () Bool)

(declare-fun e!1038990 () Bool)

(assert (=> b!1619991 (= e!1038987 e!1038990)))

(declare-fun res!723399 () Bool)

(assert (=> b!1619991 (=> (not res!723399) (not e!1038990))))

(declare-fun get!5093 (Option!3258) tuple2!17274)

(declare-fun maxPrefixZipper!294 (LexerInterface!2752 List!17796 List!17794) Option!3257)

(assert (=> b!1619991 (= res!723399 (= (_1!10039 (get!5093 lt!582402)) (_1!10037 (get!5089 (maxPrefixZipper!294 thiss!17113 rules!1846 (list!6939 (seqFromList!1996 (originalCharacters!3937 (h!23126 tokens!457)))))))))))

(declare-fun b!1619992 () Bool)

(declare-fun e!1038988 () Bool)

(assert (=> b!1619992 (= e!1038985 e!1038988)))

(declare-fun res!723398 () Bool)

(assert (=> b!1619992 (=> (not res!723398) (not e!1038988))))

(assert (=> b!1619992 (= res!723398 (= (_1!10039 (get!5093 lt!582402)) (_1!10037 (get!5089 (maxPrefix!1316 thiss!17113 rules!1846 (list!6939 (seqFromList!1996 (originalCharacters!3937 (h!23126 tokens!457)))))))))))

(declare-fun d!487870 () Bool)

(assert (=> d!487870 e!1038989))

(declare-fun res!723402 () Bool)

(assert (=> d!487870 (=> (not res!723402) (not e!1038989))))

(assert (=> d!487870 (= res!723402 (= (isDefined!2625 lt!582402) (isDefined!2624 (maxPrefixZipper!294 thiss!17113 rules!1846 (list!6939 (seqFromList!1996 (originalCharacters!3937 (h!23126 tokens!457))))))))))

(declare-fun e!1038986 () Option!3258)

(assert (=> d!487870 (= lt!582402 e!1038986)))

(declare-fun c!263878 () Bool)

(assert (=> d!487870 (= c!263878 (and ((_ is Cons!17726) rules!1846) ((_ is Nil!17726) (t!148635 rules!1846))))))

(declare-fun lt!582404 () Unit!28591)

(declare-fun lt!582405 () Unit!28591)

(assert (=> d!487870 (= lt!582404 lt!582405)))

(declare-fun lt!582403 () List!17794)

(declare-fun lt!582406 () List!17794)

(assert (=> d!487870 (isPrefix!1383 lt!582403 lt!582406)))

(assert (=> d!487870 (= lt!582405 (lemmaIsPrefixRefl!948 lt!582403 lt!582406))))

(assert (=> d!487870 (= lt!582406 (list!6939 (seqFromList!1996 (originalCharacters!3937 (h!23126 tokens!457)))))))

(assert (=> d!487870 (= lt!582403 (list!6939 (seqFromList!1996 (originalCharacters!3937 (h!23126 tokens!457)))))))

(assert (=> d!487870 (rulesValidInductive!960 thiss!17113 rules!1846)))

(assert (=> d!487870 (= (maxPrefixZipperSequence!647 thiss!17113 rules!1846 (seqFromList!1996 (originalCharacters!3937 (h!23126 tokens!457)))) lt!582402)))

(declare-fun b!1619993 () Bool)

(declare-fun res!723403 () Bool)

(assert (=> b!1619993 (=> (not res!723403) (not e!1038989))))

(assert (=> b!1619993 (= res!723403 e!1038987)))

(declare-fun res!723401 () Bool)

(assert (=> b!1619993 (=> res!723401 e!1038987)))

(assert (=> b!1619993 (= res!723401 (not (isDefined!2625 lt!582402)))))

(declare-fun b!1619994 () Bool)

(declare-fun lt!582407 () Option!3258)

(declare-fun lt!582401 () Option!3258)

(assert (=> b!1619994 (= e!1038986 (ite (and ((_ is None!3257) lt!582407) ((_ is None!3257) lt!582401)) None!3257 (ite ((_ is None!3257) lt!582401) lt!582407 (ite ((_ is None!3257) lt!582407) lt!582401 (ite (>= (size!14214 (_1!10039 (v!24256 lt!582407))) (size!14214 (_1!10039 (v!24256 lt!582401)))) lt!582407 lt!582401)))))))

(assert (=> b!1619994 (= lt!582407 call!105083)))

(assert (=> b!1619994 (= lt!582401 (maxPrefixZipperSequence!647 thiss!17113 (t!148635 rules!1846) (seqFromList!1996 (originalCharacters!3937 (h!23126 tokens!457)))))))

(declare-fun b!1619995 () Bool)

(assert (=> b!1619995 (= e!1038990 (= (list!6939 (_2!10039 (get!5093 lt!582402))) (_2!10037 (get!5089 (maxPrefixZipper!294 thiss!17113 rules!1846 (list!6939 (seqFromList!1996 (originalCharacters!3937 (h!23126 tokens!457)))))))))))

(declare-fun b!1619996 () Bool)

(assert (=> b!1619996 (= e!1038988 (= (list!6939 (_2!10039 (get!5093 lt!582402))) (_2!10037 (get!5089 (maxPrefix!1316 thiss!17113 rules!1846 (list!6939 (seqFromList!1996 (originalCharacters!3937 (h!23126 tokens!457)))))))))))

(declare-fun b!1619997 () Bool)

(assert (=> b!1619997 (= e!1038986 call!105083)))

(assert (= (and d!487870 c!263878) b!1619997))

(assert (= (and d!487870 (not c!263878)) b!1619994))

(assert (= (or b!1619997 b!1619994) bm!105078))

(assert (= (and d!487870 res!723402) b!1619993))

(assert (= (and b!1619993 (not res!723401)) b!1619991))

(assert (= (and b!1619991 res!723399) b!1619995))

(assert (= (and b!1619993 res!723403) b!1619990))

(assert (= (and b!1619990 (not res!723400)) b!1619992))

(assert (= (and b!1619992 res!723398) b!1619996))

(declare-fun m!1944261 () Bool)

(assert (=> b!1619991 m!1944261))

(assert (=> b!1619991 m!1943039))

(declare-fun m!1944263 () Bool)

(assert (=> b!1619991 m!1944263))

(assert (=> b!1619991 m!1944263))

(declare-fun m!1944265 () Bool)

(assert (=> b!1619991 m!1944265))

(assert (=> b!1619991 m!1944265))

(declare-fun m!1944267 () Bool)

(assert (=> b!1619991 m!1944267))

(assert (=> d!487870 m!1944265))

(declare-fun m!1944269 () Bool)

(assert (=> d!487870 m!1944269))

(assert (=> d!487870 m!1943039))

(assert (=> d!487870 m!1944263))

(declare-fun m!1944271 () Bool)

(assert (=> d!487870 m!1944271))

(declare-fun m!1944273 () Bool)

(assert (=> d!487870 m!1944273))

(assert (=> d!487870 m!1944263))

(assert (=> d!487870 m!1944265))

(declare-fun m!1944275 () Bool)

(assert (=> d!487870 m!1944275))

(assert (=> d!487870 m!1943143))

(assert (=> b!1619993 m!1944273))

(assert (=> b!1619992 m!1944261))

(assert (=> b!1619992 m!1943039))

(assert (=> b!1619992 m!1944263))

(assert (=> b!1619992 m!1944263))

(declare-fun m!1944277 () Bool)

(assert (=> b!1619992 m!1944277))

(assert (=> b!1619992 m!1944277))

(declare-fun m!1944279 () Bool)

(assert (=> b!1619992 m!1944279))

(assert (=> bm!105078 m!1943039))

(declare-fun m!1944281 () Bool)

(assert (=> bm!105078 m!1944281))

(assert (=> b!1619996 m!1944263))

(assert (=> b!1619996 m!1944277))

(assert (=> b!1619996 m!1944261))

(assert (=> b!1619996 m!1944277))

(assert (=> b!1619996 m!1944279))

(assert (=> b!1619996 m!1943039))

(assert (=> b!1619996 m!1944263))

(declare-fun m!1944283 () Bool)

(assert (=> b!1619996 m!1944283))

(assert (=> b!1619995 m!1944265))

(assert (=> b!1619995 m!1944267))

(assert (=> b!1619995 m!1944261))

(assert (=> b!1619995 m!1944263))

(assert (=> b!1619995 m!1944265))

(assert (=> b!1619995 m!1943039))

(assert (=> b!1619995 m!1944263))

(assert (=> b!1619995 m!1944283))

(assert (=> b!1619994 m!1943039))

(declare-fun m!1944285 () Bool)

(assert (=> b!1619994 m!1944285))

(assert (=> b!1619990 m!1944273))

(assert (=> b!1619446 d!487870))

(declare-fun d!487884 () Bool)

(assert (=> d!487884 (= (seqFromList!1996 (originalCharacters!3937 (h!23126 tokens!457))) (fromListB!870 (originalCharacters!3937 (h!23126 tokens!457))))))

(declare-fun bs!394442 () Bool)

(assert (= bs!394442 d!487884))

(declare-fun m!1944287 () Bool)

(assert (=> bs!394442 m!1944287))

(assert (=> b!1619446 d!487884))

(declare-fun d!487886 () Bool)

(declare-fun res!723409 () Bool)

(declare-fun e!1039033 () Bool)

(assert (=> d!487886 (=> res!723409 e!1039033)))

(assert (=> d!487886 (= res!723409 (or (not ((_ is Cons!17725) tokens!457)) (not ((_ is Cons!17725) (t!148634 tokens!457)))))))

(assert (=> d!487886 (= (tokensListTwoByTwoPredicateSeparableList!445 thiss!17113 tokens!457 rules!1846) e!1039033)))

(declare-fun b!1620050 () Bool)

(declare-fun e!1039032 () Bool)

(assert (=> b!1620050 (= e!1039033 e!1039032)))

(declare-fun res!723408 () Bool)

(assert (=> b!1620050 (=> (not res!723408) (not e!1039032))))

(assert (=> b!1620050 (= res!723408 (separableTokensPredicate!694 thiss!17113 (h!23126 tokens!457) (h!23126 (t!148634 tokens!457)) rules!1846))))

(declare-fun lt!582425 () Unit!28591)

(declare-fun Unit!28628 () Unit!28591)

(assert (=> b!1620050 (= lt!582425 Unit!28628)))

(assert (=> b!1620050 (> (size!14219 (charsOf!1772 (h!23126 (t!148634 tokens!457)))) 0)))

(declare-fun lt!582422 () Unit!28591)

(declare-fun Unit!28629 () Unit!28591)

(assert (=> b!1620050 (= lt!582422 Unit!28629)))

(assert (=> b!1620050 (rulesProduceIndividualToken!1404 thiss!17113 rules!1846 (h!23126 (t!148634 tokens!457)))))

(declare-fun lt!582427 () Unit!28591)

(declare-fun Unit!28630 () Unit!28591)

(assert (=> b!1620050 (= lt!582427 Unit!28630)))

(assert (=> b!1620050 (rulesProduceIndividualToken!1404 thiss!17113 rules!1846 (h!23126 tokens!457))))

(declare-fun lt!582426 () Unit!28591)

(declare-fun lt!582428 () Unit!28591)

(assert (=> b!1620050 (= lt!582426 lt!582428)))

(assert (=> b!1620050 (rulesProduceIndividualToken!1404 thiss!17113 rules!1846 (h!23126 (t!148634 tokens!457)))))

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!553 (LexerInterface!2752 List!17796 List!17795 Token!5812) Unit!28591)

(assert (=> b!1620050 (= lt!582428 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!553 thiss!17113 rules!1846 tokens!457 (h!23126 (t!148634 tokens!457))))))

(declare-fun lt!582424 () Unit!28591)

(declare-fun lt!582423 () Unit!28591)

(assert (=> b!1620050 (= lt!582424 lt!582423)))

(assert (=> b!1620050 (rulesProduceIndividualToken!1404 thiss!17113 rules!1846 (h!23126 tokens!457))))

(assert (=> b!1620050 (= lt!582423 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!553 thiss!17113 rules!1846 tokens!457 (h!23126 tokens!457)))))

(declare-fun b!1620051 () Bool)

(assert (=> b!1620051 (= e!1039032 (tokensListTwoByTwoPredicateSeparableList!445 thiss!17113 (Cons!17725 (h!23126 (t!148634 tokens!457)) (t!148634 (t!148634 tokens!457))) rules!1846))))

(assert (= (and d!487886 (not res!723409)) b!1620050))

(assert (= (and b!1620050 res!723408) b!1620051))

(assert (=> b!1620050 m!1943045))

(declare-fun m!1944305 () Bool)

(assert (=> b!1620050 m!1944305))

(declare-fun m!1944307 () Bool)

(assert (=> b!1620050 m!1944307))

(assert (=> b!1620050 m!1943057))

(assert (=> b!1620050 m!1943035))

(declare-fun m!1944309 () Bool)

(assert (=> b!1620050 m!1944309))

(assert (=> b!1620050 m!1943057))

(assert (=> b!1620050 m!1944083))

(declare-fun m!1944311 () Bool)

(assert (=> b!1620051 m!1944311))

(assert (=> b!1619425 d!487886))

(declare-fun bm!105081 () Bool)

(declare-fun call!105086 () Bool)

(assert (=> bm!105081 (= call!105086 (isEmpty!10741 lt!581796))))

(declare-fun b!1620080 () Bool)

(declare-fun e!1039051 () Bool)

(declare-fun e!1039050 () Bool)

(assert (=> b!1620080 (= e!1039051 e!1039050)))

(declare-fun res!723431 () Bool)

(assert (=> b!1620080 (=> res!723431 e!1039050)))

(assert (=> b!1620080 (= res!723431 call!105086)))

(declare-fun b!1620081 () Bool)

(declare-fun res!723426 () Bool)

(declare-fun e!1039049 () Bool)

(assert (=> b!1620081 (=> res!723426 e!1039049)))

(declare-fun e!1039052 () Bool)

(assert (=> b!1620081 (= res!723426 e!1039052)))

(declare-fun res!723427 () Bool)

(assert (=> b!1620081 (=> (not res!723427) (not e!1039052))))

(declare-fun lt!582431 () Bool)

(assert (=> b!1620081 (= res!723427 lt!582431)))

(declare-fun b!1620083 () Bool)

(declare-fun res!723429 () Bool)

(assert (=> b!1620083 (=> res!723429 e!1039049)))

(assert (=> b!1620083 (= res!723429 (not ((_ is ElementMatch!4451) (regex!3123 (rule!4949 (h!23126 tokens!457))))))))

(declare-fun e!1039048 () Bool)

(assert (=> b!1620083 (= e!1039048 e!1039049)))

(declare-fun b!1620084 () Bool)

(assert (=> b!1620084 (= e!1039048 (not lt!582431))))

(declare-fun b!1620085 () Bool)

(declare-fun res!723432 () Bool)

(assert (=> b!1620085 (=> (not res!723432) (not e!1039052))))

(assert (=> b!1620085 (= res!723432 (isEmpty!10741 (tail!2340 lt!581796)))))

(declare-fun b!1620086 () Bool)

(declare-fun res!723430 () Bool)

(assert (=> b!1620086 (=> (not res!723430) (not e!1039052))))

(assert (=> b!1620086 (= res!723430 (not call!105086))))

(declare-fun b!1620087 () Bool)

(assert (=> b!1620087 (= e!1039052 (= (head!3376 lt!581796) (c!263788 (regex!3123 (rule!4949 (h!23126 tokens!457))))))))

(declare-fun b!1620088 () Bool)

(declare-fun e!1039054 () Bool)

(declare-fun nullable!1305 (Regex!4451) Bool)

(assert (=> b!1620088 (= e!1039054 (nullable!1305 (regex!3123 (rule!4949 (h!23126 tokens!457)))))))

(declare-fun b!1620089 () Bool)

(assert (=> b!1620089 (= e!1039050 (not (= (head!3376 lt!581796) (c!263788 (regex!3123 (rule!4949 (h!23126 tokens!457)))))))))

(declare-fun b!1620090 () Bool)

(declare-fun e!1039053 () Bool)

(assert (=> b!1620090 (= e!1039053 (= lt!582431 call!105086))))

(declare-fun b!1620091 () Bool)

(declare-fun res!723433 () Bool)

(assert (=> b!1620091 (=> res!723433 e!1039050)))

(assert (=> b!1620091 (= res!723433 (not (isEmpty!10741 (tail!2340 lt!581796))))))

(declare-fun b!1620092 () Bool)

(assert (=> b!1620092 (= e!1039049 e!1039051)))

(declare-fun res!723428 () Bool)

(assert (=> b!1620092 (=> (not res!723428) (not e!1039051))))

(assert (=> b!1620092 (= res!723428 (not lt!582431))))

(declare-fun b!1620093 () Bool)

(assert (=> b!1620093 (= e!1039054 (matchR!1950 (derivativeStep!1070 (regex!3123 (rule!4949 (h!23126 tokens!457))) (head!3376 lt!581796)) (tail!2340 lt!581796)))))

(declare-fun d!487888 () Bool)

(assert (=> d!487888 e!1039053))

(declare-fun c!263886 () Bool)

(assert (=> d!487888 (= c!263886 ((_ is EmptyExpr!4451) (regex!3123 (rule!4949 (h!23126 tokens!457)))))))

(assert (=> d!487888 (= lt!582431 e!1039054)))

(declare-fun c!263887 () Bool)

(assert (=> d!487888 (= c!263887 (isEmpty!10741 lt!581796))))

(assert (=> d!487888 (validRegex!1766 (regex!3123 (rule!4949 (h!23126 tokens!457))))))

(assert (=> d!487888 (= (matchR!1950 (regex!3123 (rule!4949 (h!23126 tokens!457))) lt!581796) lt!582431)))

(declare-fun b!1620082 () Bool)

(assert (=> b!1620082 (= e!1039053 e!1039048)))

(declare-fun c!263885 () Bool)

(assert (=> b!1620082 (= c!263885 ((_ is EmptyLang!4451) (regex!3123 (rule!4949 (h!23126 tokens!457)))))))

(assert (= (and d!487888 c!263887) b!1620088))

(assert (= (and d!487888 (not c!263887)) b!1620093))

(assert (= (and d!487888 c!263886) b!1620090))

(assert (= (and d!487888 (not c!263886)) b!1620082))

(assert (= (and b!1620082 c!263885) b!1620084))

(assert (= (and b!1620082 (not c!263885)) b!1620083))

(assert (= (and b!1620083 (not res!723429)) b!1620081))

(assert (= (and b!1620081 res!723427) b!1620086))

(assert (= (and b!1620086 res!723430) b!1620085))

(assert (= (and b!1620085 res!723432) b!1620087))

(assert (= (and b!1620081 (not res!723426)) b!1620092))

(assert (= (and b!1620092 res!723428) b!1620080))

(assert (= (and b!1620080 (not res!723431)) b!1620091))

(assert (= (and b!1620091 (not res!723433)) b!1620089))

(assert (= (or b!1620090 b!1620080 b!1620086) bm!105081))

(assert (=> b!1620093 m!1943905))

(assert (=> b!1620093 m!1943905))

(declare-fun m!1944313 () Bool)

(assert (=> b!1620093 m!1944313))

(assert (=> b!1620093 m!1943909))

(assert (=> b!1620093 m!1944313))

(assert (=> b!1620093 m!1943909))

(declare-fun m!1944315 () Bool)

(assert (=> b!1620093 m!1944315))

(declare-fun m!1944317 () Bool)

(assert (=> d!487888 m!1944317))

(declare-fun m!1944319 () Bool)

(assert (=> d!487888 m!1944319))

(assert (=> b!1620087 m!1943905))

(assert (=> b!1620089 m!1943905))

(assert (=> b!1620091 m!1943909))

(assert (=> b!1620091 m!1943909))

(declare-fun m!1944321 () Bool)

(assert (=> b!1620091 m!1944321))

(assert (=> bm!105081 m!1944317))

(declare-fun m!1944323 () Bool)

(assert (=> b!1620088 m!1944323))

(assert (=> b!1620085 m!1943909))

(assert (=> b!1620085 m!1943909))

(assert (=> b!1620085 m!1944321))

(assert (=> b!1619424 d!487888))

(declare-fun d!487890 () Bool)

(declare-fun lt!582432 () BalanceConc!11732)

(assert (=> d!487890 (= (list!6939 lt!582432) (printList!867 thiss!17113 (list!6940 (seqFromList!1995 tokens!457))))))

(assert (=> d!487890 (= lt!582432 (printTailRec!805 thiss!17113 (seqFromList!1995 tokens!457) 0 (BalanceConc!11733 Empty!5894)))))

(assert (=> d!487890 (= (print!1283 thiss!17113 (seqFromList!1995 tokens!457)) lt!582432)))

(declare-fun bs!394444 () Bool)

(assert (= bs!394444 d!487890))

(declare-fun m!1944325 () Bool)

(assert (=> bs!394444 m!1944325))

(assert (=> bs!394444 m!1943085))

(declare-fun m!1944327 () Bool)

(assert (=> bs!394444 m!1944327))

(assert (=> bs!394444 m!1944327))

(declare-fun m!1944329 () Bool)

(assert (=> bs!394444 m!1944329))

(assert (=> bs!394444 m!1943085))

(declare-fun m!1944331 () Bool)

(assert (=> bs!394444 m!1944331))

(assert (=> b!1619445 d!487890))

(declare-fun b!1620096 () Bool)

(declare-fun res!723434 () Bool)

(declare-fun e!1039056 () Bool)

(assert (=> b!1620096 (=> (not res!723434) (not e!1039056))))

(declare-fun lt!582433 () List!17794)

(assert (=> b!1620096 (= res!723434 (= (size!14220 lt!582433) (+ (size!14220 lt!581796) (size!14220 lt!581805))))))

(declare-fun b!1620097 () Bool)

(assert (=> b!1620097 (= e!1039056 (or (not (= lt!581805 Nil!17724)) (= lt!582433 lt!581796)))))

(declare-fun b!1620094 () Bool)

(declare-fun e!1039055 () List!17794)

(assert (=> b!1620094 (= e!1039055 lt!581805)))

(declare-fun d!487892 () Bool)

(assert (=> d!487892 e!1039056))

(declare-fun res!723435 () Bool)

(assert (=> d!487892 (=> (not res!723435) (not e!1039056))))

(assert (=> d!487892 (= res!723435 (= (content!2459 lt!582433) ((_ map or) (content!2459 lt!581796) (content!2459 lt!581805))))))

(assert (=> d!487892 (= lt!582433 e!1039055)))

(declare-fun c!263888 () Bool)

(assert (=> d!487892 (= c!263888 ((_ is Nil!17724) lt!581796))))

(assert (=> d!487892 (= (++!4694 lt!581796 lt!581805) lt!582433)))

(declare-fun b!1620095 () Bool)

(assert (=> b!1620095 (= e!1039055 (Cons!17724 (h!23125 lt!581796) (++!4694 (t!148633 lt!581796) lt!581805)))))

(assert (= (and d!487892 c!263888) b!1620094))

(assert (= (and d!487892 (not c!263888)) b!1620095))

(assert (= (and d!487892 res!723435) b!1620096))

(assert (= (and b!1620096 res!723434) b!1620097))

(declare-fun m!1944333 () Bool)

(assert (=> b!1620096 m!1944333))

(assert (=> b!1620096 m!1943693))

(declare-fun m!1944335 () Bool)

(assert (=> b!1620096 m!1944335))

(declare-fun m!1944337 () Bool)

(assert (=> d!487892 m!1944337))

(assert (=> d!487892 m!1943699))

(declare-fun m!1944339 () Bool)

(assert (=> d!487892 m!1944339))

(declare-fun m!1944341 () Bool)

(assert (=> b!1620095 m!1944341))

(assert (=> b!1619445 d!487892))

(declare-fun d!487894 () Bool)

(assert (=> d!487894 (= (list!6939 lt!581798) (list!6943 (c!263787 lt!581798)))))

(declare-fun bs!394445 () Bool)

(assert (= bs!394445 d!487894))

(declare-fun m!1944343 () Bool)

(assert (=> bs!394445 m!1944343))

(assert (=> b!1619445 d!487894))

(declare-fun d!487896 () Bool)

(declare-fun lt!582434 () BalanceConc!11732)

(assert (=> d!487896 (= (list!6939 lt!582434) (printList!867 thiss!17113 (list!6940 lt!581791)))))

(assert (=> d!487896 (= lt!582434 (printTailRec!805 thiss!17113 lt!581791 0 (BalanceConc!11733 Empty!5894)))))

(assert (=> d!487896 (= (print!1283 thiss!17113 lt!581791) lt!582434)))

(declare-fun bs!394446 () Bool)

(assert (= bs!394446 d!487896))

(declare-fun m!1944345 () Bool)

(assert (=> bs!394446 m!1944345))

(assert (=> bs!394446 m!1943061))

(assert (=> bs!394446 m!1943061))

(declare-fun m!1944347 () Bool)

(assert (=> bs!394446 m!1944347))

(declare-fun m!1944349 () Bool)

(assert (=> bs!394446 m!1944349))

(assert (=> b!1619445 d!487896))

(declare-fun d!487898 () Bool)

(assert (=> d!487898 (= (list!6939 lt!581802) (list!6943 (c!263787 lt!581802)))))

(declare-fun bs!394447 () Bool)

(assert (= bs!394447 d!487898))

(declare-fun m!1944351 () Bool)

(assert (=> bs!394447 m!1944351))

(assert (=> b!1619445 d!487898))

(declare-fun d!487900 () Bool)

(assert (=> d!487900 (= (seqFromList!1995 tokens!457) (fromListB!871 tokens!457))))

(declare-fun bs!394448 () Bool)

(assert (= bs!394448 d!487900))

(declare-fun m!1944353 () Bool)

(assert (=> bs!394448 m!1944353))

(assert (=> b!1619445 d!487900))

(declare-fun d!487902 () Bool)

(declare-fun lt!582435 () BalanceConc!11732)

(assert (=> d!487902 (= (list!6939 lt!582435) (originalCharacters!3937 (h!23126 tokens!457)))))

(assert (=> d!487902 (= lt!582435 (dynLambda!7905 (toChars!4409 (transformation!3123 (rule!4949 (h!23126 tokens!457)))) (value!98678 (h!23126 tokens!457))))))

(assert (=> d!487902 (= (charsOf!1772 (h!23126 tokens!457)) lt!582435)))

(declare-fun b_lambda!51073 () Bool)

(assert (=> (not b_lambda!51073) (not d!487902)))

(assert (=> d!487902 t!148649))

(declare-fun b_and!114913 () Bool)

(assert (= b_and!114901 (and (=> t!148649 result!112220) b_and!114913)))

(assert (=> d!487902 t!148651))

(declare-fun b_and!114915 () Bool)

(assert (= b_and!114903 (and (=> t!148651 result!112224) b_and!114915)))

(declare-fun m!1944355 () Bool)

(assert (=> d!487902 m!1944355))

(assert (=> d!487902 m!1943791))

(assert (=> b!1619445 d!487902))

(declare-fun d!487904 () Bool)

(assert (=> d!487904 (= (list!6939 lt!581790) (list!6943 (c!263787 lt!581790)))))

(declare-fun bs!394449 () Bool)

(assert (= bs!394449 d!487904))

(declare-fun m!1944357 () Bool)

(assert (=> bs!394449 m!1944357))

(assert (=> b!1619445 d!487904))

(declare-fun d!487906 () Bool)

(assert (=> d!487906 (= (seqFromList!1995 (t!148634 tokens!457)) (fromListB!871 (t!148634 tokens!457)))))

(declare-fun bs!394450 () Bool)

(assert (= bs!394450 d!487906))

(declare-fun m!1944359 () Bool)

(assert (=> bs!394450 m!1944359))

(assert (=> b!1619445 d!487906))

(declare-fun b!1620098 () Bool)

(declare-fun e!1039059 () Bool)

(declare-fun lt!582436 () tuple2!17272)

(assert (=> b!1620098 (= e!1039059 (not (isEmpty!10742 (_1!10038 lt!582436))))))

(declare-fun d!487908 () Bool)

(declare-fun e!1039057 () Bool)

(assert (=> d!487908 e!1039057))

(declare-fun res!723437 () Bool)

(assert (=> d!487908 (=> (not res!723437) (not e!1039057))))

(declare-fun e!1039058 () Bool)

(assert (=> d!487908 (= res!723437 e!1039058)))

(declare-fun c!263889 () Bool)

(assert (=> d!487908 (= c!263889 (> (size!14218 (_1!10038 lt!582436)) 0))))

(assert (=> d!487908 (= lt!582436 (lexTailRecV2!540 thiss!17113 rules!1846 lt!581790 (BalanceConc!11733 Empty!5894) lt!581790 (BalanceConc!11735 Empty!5895)))))

(assert (=> d!487908 (= (lex!1236 thiss!17113 rules!1846 lt!581790) lt!582436)))

(declare-fun b!1620099 () Bool)

(assert (=> b!1620099 (= e!1039058 (= (_2!10038 lt!582436) lt!581790))))

(declare-fun b!1620100 () Bool)

(declare-fun res!723438 () Bool)

(assert (=> b!1620100 (=> (not res!723438) (not e!1039057))))

(assert (=> b!1620100 (= res!723438 (= (list!6940 (_1!10038 lt!582436)) (_1!10041 (lexList!817 thiss!17113 rules!1846 (list!6939 lt!581790)))))))

(declare-fun b!1620101 () Bool)

(assert (=> b!1620101 (= e!1039057 (= (list!6939 (_2!10038 lt!582436)) (_2!10041 (lexList!817 thiss!17113 rules!1846 (list!6939 lt!581790)))))))

(declare-fun b!1620102 () Bool)

(assert (=> b!1620102 (= e!1039058 e!1039059)))

(declare-fun res!723436 () Bool)

(assert (=> b!1620102 (= res!723436 (< (size!14219 (_2!10038 lt!582436)) (size!14219 lt!581790)))))

(assert (=> b!1620102 (=> (not res!723436) (not e!1039059))))

(assert (= (and d!487908 c!263889) b!1620102))

(assert (= (and d!487908 (not c!263889)) b!1620099))

(assert (= (and b!1620102 res!723436) b!1620098))

(assert (= (and d!487908 res!723437) b!1620100))

(assert (= (and b!1620100 res!723438) b!1620101))

(declare-fun m!1944361 () Bool)

(assert (=> b!1620098 m!1944361))

(declare-fun m!1944363 () Bool)

(assert (=> d!487908 m!1944363))

(declare-fun m!1944365 () Bool)

(assert (=> d!487908 m!1944365))

(declare-fun m!1944367 () Bool)

(assert (=> b!1620100 m!1944367))

(assert (=> b!1620100 m!1943099))

(assert (=> b!1620100 m!1943099))

(declare-fun m!1944369 () Bool)

(assert (=> b!1620100 m!1944369))

(declare-fun m!1944371 () Bool)

(assert (=> b!1620101 m!1944371))

(assert (=> b!1620101 m!1943099))

(assert (=> b!1620101 m!1943099))

(assert (=> b!1620101 m!1944369))

(declare-fun m!1944373 () Bool)

(assert (=> b!1620102 m!1944373))

(declare-fun m!1944375 () Bool)

(assert (=> b!1620102 m!1944375))

(assert (=> b!1619445 d!487908))

(declare-fun d!487910 () Bool)

(assert (=> d!487910 (= (separableTokensPredicate!694 thiss!17113 (h!23126 tokens!457) (h!23126 (t!148634 tokens!457)) rules!1846) (not (prefixMatchZipperSequence!499 (rulesRegex!513 thiss!17113 rules!1846) (++!4693 (charsOf!1772 (h!23126 tokens!457)) (singletonSeq!1524 (apply!4476 (charsOf!1772 (h!23126 (t!148634 tokens!457))) 0))))))))

(declare-fun bs!394451 () Bool)

(assert (= bs!394451 d!487910))

(assert (=> bs!394451 m!1943047))

(declare-fun m!1944377 () Bool)

(assert (=> bs!394451 m!1944377))

(declare-fun m!1944379 () Bool)

(assert (=> bs!394451 m!1944379))

(assert (=> bs!394451 m!1943057))

(assert (=> bs!394451 m!1943051))

(assert (=> bs!394451 m!1943081))

(assert (=> bs!394451 m!1943081))

(assert (=> bs!394451 m!1943053))

(assert (=> bs!394451 m!1944377))

(assert (=> bs!394451 m!1943057))

(assert (=> bs!394451 m!1943051))

(assert (=> bs!394451 m!1943053))

(assert (=> bs!394451 m!1943047))

(assert (=> b!1619443 d!487910))

(declare-fun b!1620107 () Bool)

(declare-fun e!1039062 () Bool)

(declare-fun tp_is_empty!7257 () Bool)

(declare-fun tp!471635 () Bool)

(assert (=> b!1620107 (= e!1039062 (and tp_is_empty!7257 tp!471635))))

(assert (=> b!1619437 (= tp!471566 e!1039062)))

(assert (= (and b!1619437 ((_ is Cons!17724) (originalCharacters!3937 (h!23126 tokens!457)))) b!1620107))

(declare-fun b!1620121 () Bool)

(declare-fun b_free!43639 () Bool)

(declare-fun b_next!44343 () Bool)

(assert (=> b!1620121 (= b_free!43639 (not b_next!44343))))

(declare-fun tp!471648 () Bool)

(declare-fun b_and!114917 () Bool)

(assert (=> b!1620121 (= tp!471648 b_and!114917)))

(declare-fun b_free!43641 () Bool)

(declare-fun b_next!44345 () Bool)

(assert (=> b!1620121 (= b_free!43641 (not b_next!44345))))

(declare-fun t!148673 () Bool)

(declare-fun tb!93135 () Bool)

(assert (=> (and b!1620121 (= (toChars!4409 (transformation!3123 (rule!4949 (h!23126 (t!148634 tokens!457))))) (toChars!4409 (transformation!3123 (rule!4949 (h!23126 tokens!457))))) t!148673) tb!93135))

(declare-fun result!112250 () Bool)

(assert (= result!112250 result!112220))

(assert (=> b!1619778 t!148673))

(declare-fun t!148675 () Bool)

(declare-fun tb!93137 () Bool)

(assert (=> (and b!1620121 (= (toChars!4409 (transformation!3123 (rule!4949 (h!23126 (t!148634 tokens!457))))) (toChars!4409 (transformation!3123 (rule!4949 (h!23126 (t!148634 tokens!457)))))) t!148675) tb!93137))

(declare-fun result!112252 () Bool)

(assert (= result!112252 result!112226))

(assert (=> d!487852 t!148675))

(assert (=> d!487902 t!148673))

(declare-fun b_and!114919 () Bool)

(declare-fun tp!471646 () Bool)

(assert (=> b!1620121 (= tp!471646 (and (=> t!148673 result!112250) (=> t!148675 result!112252) b_and!114919))))

(declare-fun e!1039077 () Bool)

(declare-fun e!1039078 () Bool)

(declare-fun tp!471649 () Bool)

(declare-fun b!1620118 () Bool)

(assert (=> b!1620118 (= e!1039078 (and (inv!23124 (h!23126 (t!148634 tokens!457))) e!1039077 tp!471649))))

(declare-fun e!1039075 () Bool)

(assert (=> b!1620121 (= e!1039075 (and tp!471648 tp!471646))))

(declare-fun e!1039080 () Bool)

(declare-fun b!1620120 () Bool)

(declare-fun tp!471647 () Bool)

(assert (=> b!1620120 (= e!1039080 (and tp!471647 (inv!23120 (tag!3401 (rule!4949 (h!23126 (t!148634 tokens!457))))) (inv!23123 (transformation!3123 (rule!4949 (h!23126 (t!148634 tokens!457))))) e!1039075))))

(declare-fun tp!471650 () Bool)

(declare-fun b!1620119 () Bool)

(assert (=> b!1620119 (= e!1039077 (and (inv!21 (value!98678 (h!23126 (t!148634 tokens!457)))) e!1039080 tp!471650))))

(assert (=> b!1619431 (= tp!471572 e!1039078)))

(assert (= b!1620120 b!1620121))

(assert (= b!1620119 b!1620120))

(assert (= b!1620118 b!1620119))

(assert (= (and b!1619431 ((_ is Cons!17725) (t!148634 tokens!457))) b!1620118))

(declare-fun m!1944381 () Bool)

(assert (=> b!1620118 m!1944381))

(declare-fun m!1944383 () Bool)

(assert (=> b!1620120 m!1944383))

(declare-fun m!1944385 () Bool)

(assert (=> b!1620120 m!1944385))

(declare-fun m!1944387 () Bool)

(assert (=> b!1620119 m!1944387))

(declare-fun e!1039083 () Bool)

(assert (=> b!1619429 (= tp!471570 e!1039083)))

(declare-fun b!1620135 () Bool)

(declare-fun tp!471661 () Bool)

(declare-fun tp!471662 () Bool)

(assert (=> b!1620135 (= e!1039083 (and tp!471661 tp!471662))))

(declare-fun b!1620134 () Bool)

(declare-fun tp!471663 () Bool)

(assert (=> b!1620134 (= e!1039083 tp!471663)))

(declare-fun b!1620132 () Bool)

(assert (=> b!1620132 (= e!1039083 tp_is_empty!7257)))

(declare-fun b!1620133 () Bool)

(declare-fun tp!471664 () Bool)

(declare-fun tp!471665 () Bool)

(assert (=> b!1620133 (= e!1039083 (and tp!471664 tp!471665))))

(assert (= (and b!1619429 ((_ is ElementMatch!4451) (regex!3123 (h!23127 rules!1846)))) b!1620132))

(assert (= (and b!1619429 ((_ is Concat!7665) (regex!3123 (h!23127 rules!1846)))) b!1620133))

(assert (= (and b!1619429 ((_ is Star!4451) (regex!3123 (h!23127 rules!1846)))) b!1620134))

(assert (= (and b!1619429 ((_ is Union!4451) (regex!3123 (h!23127 rules!1846)))) b!1620135))

(declare-fun e!1039084 () Bool)

(assert (=> b!1619439 (= tp!471574 e!1039084)))

(declare-fun b!1620139 () Bool)

(declare-fun tp!471666 () Bool)

(declare-fun tp!471667 () Bool)

(assert (=> b!1620139 (= e!1039084 (and tp!471666 tp!471667))))

(declare-fun b!1620138 () Bool)

(declare-fun tp!471668 () Bool)

(assert (=> b!1620138 (= e!1039084 tp!471668)))

(declare-fun b!1620136 () Bool)

(assert (=> b!1620136 (= e!1039084 tp_is_empty!7257)))

(declare-fun b!1620137 () Bool)

(declare-fun tp!471669 () Bool)

(declare-fun tp!471670 () Bool)

(assert (=> b!1620137 (= e!1039084 (and tp!471669 tp!471670))))

(assert (= (and b!1619439 ((_ is ElementMatch!4451) (regex!3123 (rule!4949 (h!23126 tokens!457))))) b!1620136))

(assert (= (and b!1619439 ((_ is Concat!7665) (regex!3123 (rule!4949 (h!23126 tokens!457))))) b!1620137))

(assert (= (and b!1619439 ((_ is Star!4451) (regex!3123 (rule!4949 (h!23126 tokens!457))))) b!1620138))

(assert (= (and b!1619439 ((_ is Union!4451) (regex!3123 (rule!4949 (h!23126 tokens!457))))) b!1620139))

(declare-fun b!1620150 () Bool)

(declare-fun b_free!43643 () Bool)

(declare-fun b_next!44347 () Bool)

(assert (=> b!1620150 (= b_free!43643 (not b_next!44347))))

(declare-fun tp!471682 () Bool)

(declare-fun b_and!114921 () Bool)

(assert (=> b!1620150 (= tp!471682 b_and!114921)))

(declare-fun b_free!43645 () Bool)

(declare-fun b_next!44349 () Bool)

(assert (=> b!1620150 (= b_free!43645 (not b_next!44349))))

(declare-fun t!148677 () Bool)

(declare-fun tb!93139 () Bool)

(assert (=> (and b!1620150 (= (toChars!4409 (transformation!3123 (h!23127 (t!148635 rules!1846)))) (toChars!4409 (transformation!3123 (rule!4949 (h!23126 tokens!457))))) t!148677) tb!93139))

(declare-fun result!112258 () Bool)

(assert (= result!112258 result!112220))

(assert (=> b!1619778 t!148677))

(declare-fun tb!93141 () Bool)

(declare-fun t!148679 () Bool)

(assert (=> (and b!1620150 (= (toChars!4409 (transformation!3123 (h!23127 (t!148635 rules!1846)))) (toChars!4409 (transformation!3123 (rule!4949 (h!23126 (t!148634 tokens!457)))))) t!148679) tb!93141))

(declare-fun result!112260 () Bool)

(assert (= result!112260 result!112226))

(assert (=> d!487852 t!148679))

(assert (=> d!487902 t!148677))

(declare-fun b_and!114923 () Bool)

(declare-fun tp!471680 () Bool)

(assert (=> b!1620150 (= tp!471680 (and (=> t!148677 result!112258) (=> t!148679 result!112260) b_and!114923))))

(declare-fun e!1039096 () Bool)

(assert (=> b!1620150 (= e!1039096 (and tp!471682 tp!471680))))

(declare-fun b!1620149 () Bool)

(declare-fun e!1039095 () Bool)

(declare-fun tp!471681 () Bool)

(assert (=> b!1620149 (= e!1039095 (and tp!471681 (inv!23120 (tag!3401 (h!23127 (t!148635 rules!1846)))) (inv!23123 (transformation!3123 (h!23127 (t!148635 rules!1846)))) e!1039096))))

(declare-fun b!1620148 () Bool)

(declare-fun e!1039093 () Bool)

(declare-fun tp!471679 () Bool)

(assert (=> b!1620148 (= e!1039093 (and e!1039095 tp!471679))))

(assert (=> b!1619438 (= tp!471571 e!1039093)))

(assert (= b!1620149 b!1620150))

(assert (= b!1620148 b!1620149))

(assert (= (and b!1619438 ((_ is Cons!17726) (t!148635 rules!1846))) b!1620148))

(declare-fun m!1944389 () Bool)

(assert (=> b!1620149 m!1944389))

(declare-fun m!1944391 () Bool)

(assert (=> b!1620149 m!1944391))

(declare-fun b_lambda!51075 () Bool)

(assert (= b_lambda!51065 (or (and b!1619442 b_free!43625 (= (toChars!4409 (transformation!3123 (rule!4949 (h!23126 tokens!457)))) (toChars!4409 (transformation!3123 (rule!4949 (h!23126 (t!148634 tokens!457))))))) (and b!1619430 b_free!43629 (= (toChars!4409 (transformation!3123 (h!23127 rules!1846))) (toChars!4409 (transformation!3123 (rule!4949 (h!23126 (t!148634 tokens!457))))))) (and b!1620121 b_free!43641) (and b!1620150 b_free!43645 (= (toChars!4409 (transformation!3123 (h!23127 (t!148635 rules!1846)))) (toChars!4409 (transformation!3123 (rule!4949 (h!23126 (t!148634 tokens!457))))))) b_lambda!51075)))

(declare-fun b_lambda!51077 () Bool)

(assert (= b_lambda!51063 (or (and b!1619442 b_free!43625) (and b!1619430 b_free!43629 (= (toChars!4409 (transformation!3123 (h!23127 rules!1846))) (toChars!4409 (transformation!3123 (rule!4949 (h!23126 tokens!457)))))) (and b!1620121 b_free!43641 (= (toChars!4409 (transformation!3123 (rule!4949 (h!23126 (t!148634 tokens!457))))) (toChars!4409 (transformation!3123 (rule!4949 (h!23126 tokens!457)))))) (and b!1620150 b_free!43645 (= (toChars!4409 (transformation!3123 (h!23127 (t!148635 rules!1846)))) (toChars!4409 (transformation!3123 (rule!4949 (h!23126 tokens!457)))))) b_lambda!51077)))

(declare-fun b_lambda!51079 () Bool)

(assert (= b_lambda!51073 (or (and b!1619442 b_free!43625) (and b!1619430 b_free!43629 (= (toChars!4409 (transformation!3123 (h!23127 rules!1846))) (toChars!4409 (transformation!3123 (rule!4949 (h!23126 tokens!457)))))) (and b!1620121 b_free!43641 (= (toChars!4409 (transformation!3123 (rule!4949 (h!23126 (t!148634 tokens!457))))) (toChars!4409 (transformation!3123 (rule!4949 (h!23126 tokens!457)))))) (and b!1620150 b_free!43645 (= (toChars!4409 (transformation!3123 (h!23127 (t!148635 rules!1846)))) (toChars!4409 (transformation!3123 (rule!4949 (h!23126 tokens!457)))))) b_lambda!51079)))

(check-sat (not b!1619691) (not bm!105074) (not d!487662) (not d!487732) b_and!114919 (not d!487796) (not d!487738) (not b!1619603) (not d!487858) (not b_next!44347) (not b!1619925) (not d!487744) (not b!1619948) (not d!487734) (not b!1619937) (not b!1619941) (not d!487768) (not b!1620102) (not b!1619832) (not b!1619990) (not b!1619834) (not b!1619928) (not b!1619821) (not d!487812) (not b!1619715) (not b!1619942) (not d!487844) (not bm!105081) (not b!1619779) (not b!1619721) (not b!1619907) (not d!487720) (not b_lambda!51079) (not d!487746) (not b!1619995) (not b!1619732) (not d!487898) (not b!1619733) b_and!114923 (not d!487736) (not b!1619718) (not d!487798) (not b!1619744) (not d!487758) (not b!1619773) (not bm!105068) (not b_lambda!51075) (not b!1619918) (not b_next!44331) (not b!1619916) (not b!1620089) (not d!487862) (not d!487756) (not d!487806) (not d!487848) (not b!1620138) (not b!1619943) (not b!1619601) (not d!487658) (not d!487908) (not b!1619713) (not d!487894) (not b!1620137) (not d!487900) (not b!1620085) (not tb!93123) (not d!487868) (not b!1619996) tp_is_empty!7257 (not d!487884) (not d!487850) (not b!1619646) (not b!1619645) (not b!1619833) (not b!1619932) (not b!1619689) (not d!487866) (not b!1620139) b_and!114915 (not b!1620101) (not b!1619784) (not b!1620098) (not b!1620095) (not b!1619662) (not b!1619726) (not b!1619720) (not d!487896) (not d!487660) (not b_next!44329) (not b_next!44327) (not b!1619924) (not b!1620091) (not b!1619994) (not b_lambda!51077) (not b!1619694) (not b_next!44345) (not b!1620096) (not b!1619771) (not b!1619667) b_and!114917 (not b!1619831) (not d!487888) (not d!487842) (not d!487864) (not b!1619919) (not b!1620100) (not b!1620107) (not b!1619714) (not d!487852) (not b!1619991) (not d!487904) (not b!1619930) b_and!114877 (not b!1619778) (not d!487740) (not b!1619509) (not bm!105075) (not d!487794) (not b!1619663) (not b!1620087) (not b!1619664) (not b!1619743) (not b!1619602) (not b!1620135) (not b!1620093) (not d!487856) (not b!1619900) (not d!487742) (not d!487846) (not b!1620050) (not b_next!44343) b_and!114921 (not b!1620148) (not d!487818) (not d!487910) (not b!1619660) (not bm!105078) (not b!1619772) (not b!1619625) b_and!114913 (not d!487764) (not b!1619992) (not b!1620133) (not b_next!44333) (not d!487724) (not b!1619993) (not b!1620119) (not b!1619820) (not b!1619946) (not tb!93119) (not d!487902) (not b!1620134) b_and!114881 (not d!487892) (not b!1619929) (not b!1620088) (not b_next!44349) (not b!1620118) (not b!1619891) (not b!1619949) (not b!1619945) (not d!487748) (not b!1619717) (not b!1619922) (not b!1619917) (not b!1619923) (not b!1619890) (not b!1620051) (not d!487906) (not d!487890) (not b!1619926) (not d!487726) (not d!487770) (not b!1619947) (not b!1619647) (not d!487816) (not b!1619938) (not b!1620149) (not b!1619931) (not b!1620120) (not d!487870) (not b!1619719) (not d!487766))
(check-sat b_and!114919 (not b_next!44347) b_and!114923 (not b_next!44331) b_and!114915 b_and!114917 b_and!114877 b_and!114913 (not b_next!44333) b_and!114881 (not b_next!44349) (not b_next!44329) (not b_next!44327) (not b_next!44345) (not b_next!44343) b_and!114921)
