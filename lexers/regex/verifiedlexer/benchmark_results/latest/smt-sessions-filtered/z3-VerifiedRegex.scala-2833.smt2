; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!160058 () Bool)

(assert start!160058)

(declare-fun b!1657707 () Bool)

(declare-fun b_free!45079 () Bool)

(declare-fun b_next!45783 () Bool)

(assert (=> b!1657707 (= b_free!45079 (not b_next!45783))))

(declare-fun tp!478947 () Bool)

(declare-fun b_and!117645 () Bool)

(assert (=> b!1657707 (= tp!478947 b_and!117645)))

(declare-fun b_free!45081 () Bool)

(declare-fun b_next!45785 () Bool)

(assert (=> b!1657707 (= b_free!45081 (not b_next!45785))))

(declare-fun tp!478945 () Bool)

(declare-fun b_and!117647 () Bool)

(assert (=> b!1657707 (= tp!478945 b_and!117647)))

(declare-fun b!1657706 () Bool)

(declare-fun b_free!45083 () Bool)

(declare-fun b_next!45787 () Bool)

(assert (=> b!1657706 (= b_free!45083 (not b_next!45787))))

(declare-fun tp!478949 () Bool)

(declare-fun b_and!117649 () Bool)

(assert (=> b!1657706 (= tp!478949 b_and!117649)))

(declare-fun b_free!45085 () Bool)

(declare-fun b_next!45789 () Bool)

(assert (=> b!1657706 (= b_free!45085 (not b_next!45789))))

(declare-fun tp!478950 () Bool)

(declare-fun b_and!117651 () Bool)

(assert (=> b!1657706 (= tp!478950 b_and!117651)))

(declare-fun b!1657694 () Bool)

(declare-fun res!743558 () Bool)

(declare-fun e!1062940 () Bool)

(assert (=> b!1657694 (=> (not res!743558) (not e!1062940))))

(declare-datatypes ((C!9284 0))(
  ( (C!9285 (val!5238 Int)) )
))
(declare-datatypes ((List!18379 0))(
  ( (Nil!18309) (Cons!18309 (h!23710 C!9284) (t!151342 List!18379)) )
))
(declare-fun lt!620457 () List!18379)

(declare-datatypes ((List!18380 0))(
  ( (Nil!18310) (Cons!18310 (h!23711 (_ BitVec 16)) (t!151343 List!18380)) )
))
(declare-datatypes ((TokenValue!3317 0))(
  ( (FloatLiteralValue!6634 (text!23664 List!18380)) (TokenValueExt!3316 (__x!11936 Int)) (Broken!16585 (value!101616 List!18380)) (Object!3386) (End!3317) (Def!3317) (Underscore!3317) (Match!3317) (Else!3317) (Error!3317) (Case!3317) (If!3317) (Extends!3317) (Abstract!3317) (Class!3317) (Val!3317) (DelimiterValue!6634 (del!3377 List!18380)) (KeywordValue!3323 (value!101617 List!18380)) (CommentValue!6634 (value!101618 List!18380)) (WhitespaceValue!6634 (value!101619 List!18380)) (IndentationValue!3317 (value!101620 List!18380)) (String!20916) (Int32!3317) (Broken!16586 (value!101621 List!18380)) (Boolean!3318) (Unit!30796) (OperatorValue!3320 (op!3377 List!18380)) (IdentifierValue!6634 (value!101622 List!18380)) (IdentifierValue!6635 (value!101623 List!18380)) (WhitespaceValue!6635 (value!101624 List!18380)) (True!6634) (False!6634) (Broken!16587 (value!101625 List!18380)) (Broken!16588 (value!101626 List!18380)) (True!6635) (RightBrace!3317) (RightBracket!3317) (Colon!3317) (Null!3317) (Comma!3317) (LeftBracket!3317) (False!6635) (LeftBrace!3317) (ImaginaryLiteralValue!3317 (text!23665 List!18380)) (StringLiteralValue!9951 (value!101627 List!18380)) (EOFValue!3317 (value!101628 List!18380)) (IdentValue!3317 (value!101629 List!18380)) (DelimiterValue!6635 (value!101630 List!18380)) (DedentValue!3317 (value!101631 List!18380)) (NewLineValue!3317 (value!101632 List!18380)) (IntegerValue!9951 (value!101633 (_ BitVec 32)) (text!23666 List!18380)) (IntegerValue!9952 (value!101634 Int) (text!23667 List!18380)) (Times!3317) (Or!3317) (Equal!3317) (Minus!3317) (Broken!16589 (value!101635 List!18380)) (And!3317) (Div!3317) (LessEqual!3317) (Mod!3317) (Concat!7872) (Not!3317) (Plus!3317) (SpaceValue!3317 (value!101636 List!18380)) (IntegerValue!9953 (value!101637 Int) (text!23668 List!18380)) (StringLiteralValue!9952 (text!23669 List!18380)) (FloatLiteralValue!6635 (text!23670 List!18380)) (BytesLiteralValue!3317 (value!101638 List!18380)) (CommentValue!6635 (value!101639 List!18380)) (StringLiteralValue!9953 (value!101640 List!18380)) (ErrorTokenValue!3317 (msg!3378 List!18380)) )
))
(declare-datatypes ((IArray!12209 0))(
  ( (IArray!12210 (innerList!6162 List!18379)) )
))
(declare-datatypes ((Conc!6102 0))(
  ( (Node!6102 (left!14657 Conc!6102) (right!14987 Conc!6102) (csize!12434 Int) (cheight!6313 Int)) (Leaf!8936 (xs!8942 IArray!12209) (csize!12435 Int)) (Empty!6102) )
))
(declare-datatypes ((BalanceConc!12148 0))(
  ( (BalanceConc!12149 (c!269623 Conc!6102)) )
))
(declare-datatypes ((Regex!4555 0))(
  ( (ElementMatch!4555 (c!269624 C!9284)) (Concat!7873 (regOne!9622 Regex!4555) (regTwo!9622 Regex!4555)) (EmptyExpr!4555) (Star!4555 (reg!4884 Regex!4555)) (EmptyLang!4555) (Union!4555 (regOne!9623 Regex!4555) (regTwo!9623 Regex!4555)) )
))
(declare-datatypes ((String!20917 0))(
  ( (String!20918 (value!101641 String)) )
))
(declare-datatypes ((TokenValueInjection!6294 0))(
  ( (TokenValueInjection!6295 (toValue!4678 Int) (toChars!4537 Int)) )
))
(declare-datatypes ((Rule!6254 0))(
  ( (Rule!6255 (regex!3227 Regex!4555) (tag!3509 String!20917) (isSeparator!3227 Bool) (transformation!3227 TokenValueInjection!6294)) )
))
(declare-datatypes ((Token!6020 0))(
  ( (Token!6021 (value!101642 TokenValue!3317) (rule!5101 Rule!6254) (size!14560 Int) (originalCharacters!4041 List!18379)) )
))
(declare-datatypes ((List!18381 0))(
  ( (Nil!18311) (Cons!18311 (h!23712 Token!6020) (t!151344 List!18381)) )
))
(declare-fun tokens!457 () List!18381)

(declare-fun head!3688 (List!18379) C!9284)

(assert (=> b!1657694 (= res!743558 (= lt!620457 (Cons!18309 (head!3688 (originalCharacters!4041 (h!23712 (t!151344 tokens!457)))) Nil!18309)))))

(declare-datatypes ((tuple2!18010 0))(
  ( (tuple2!18011 (_1!10407 Token!6020) (_2!10407 List!18379)) )
))
(declare-fun lt!620473 () tuple2!18010)

(declare-fun lt!620474 () List!18379)

(declare-fun lt!620460 () List!18379)

(declare-fun b!1657695 () Bool)

(declare-fun e!1062938 () Bool)

(assert (=> b!1657695 (= e!1062938 (or (not (= (_2!10407 lt!620473) lt!620460)) (= lt!620474 lt!620460)))))

(declare-datatypes ((tuple2!18012 0))(
  ( (tuple2!18013 (_1!10408 Token!6020) (_2!10408 BalanceConc!12148)) )
))
(declare-fun lt!620453 () tuple2!18012)

(declare-fun list!7301 (BalanceConc!12148) List!18379)

(assert (=> b!1657695 (= lt!620460 (list!7301 (_2!10408 lt!620453)))))

(declare-fun b!1657696 () Bool)

(declare-fun e!1062951 () Bool)

(declare-fun e!1062947 () Bool)

(assert (=> b!1657696 (= e!1062951 e!1062947)))

(declare-fun res!743559 () Bool)

(assert (=> b!1657696 (=> (not res!743559) (not e!1062947))))

(declare-fun lt!620454 () List!18379)

(declare-fun lt!620472 () List!18379)

(assert (=> b!1657696 (= res!743559 (= lt!620454 lt!620472))))

(declare-fun lt!620470 () List!18379)

(declare-fun ++!4969 (List!18379 List!18379) List!18379)

(assert (=> b!1657696 (= lt!620472 (++!4969 lt!620470 lt!620474))))

(declare-fun lt!620476 () BalanceConc!12148)

(assert (=> b!1657696 (= lt!620454 (list!7301 lt!620476))))

(declare-fun lt!620449 () BalanceConc!12148)

(assert (=> b!1657696 (= lt!620474 (list!7301 lt!620449))))

(declare-fun lt!620465 () BalanceConc!12148)

(assert (=> b!1657696 (= lt!620470 (list!7301 lt!620465))))

(declare-fun charsOf!1876 (Token!6020) BalanceConc!12148)

(assert (=> b!1657696 (= lt!620465 (charsOf!1876 (h!23712 tokens!457)))))

(declare-datatypes ((IArray!12211 0))(
  ( (IArray!12212 (innerList!6163 List!18381)) )
))
(declare-datatypes ((Conc!6103 0))(
  ( (Node!6103 (left!14658 Conc!6103) (right!14988 Conc!6103) (csize!12436 Int) (cheight!6314 Int)) (Leaf!8937 (xs!8943 IArray!12211) (csize!12437 Int)) (Empty!6103) )
))
(declare-datatypes ((BalanceConc!12150 0))(
  ( (BalanceConc!12151 (c!269625 Conc!6103)) )
))
(declare-datatypes ((tuple2!18014 0))(
  ( (tuple2!18015 (_1!10409 BalanceConc!12150) (_2!10409 BalanceConc!12148)) )
))
(declare-fun lt!620451 () tuple2!18014)

(declare-datatypes ((List!18382 0))(
  ( (Nil!18312) (Cons!18312 (h!23713 Rule!6254) (t!151345 List!18382)) )
))
(declare-fun rules!1846 () List!18382)

(declare-datatypes ((LexerInterface!2856 0))(
  ( (LexerInterfaceExt!2853 (__x!11937 Int)) (Lexer!2854) )
))
(declare-fun thiss!17113 () LexerInterface!2856)

(declare-fun lex!1340 (LexerInterface!2856 List!18382 BalanceConc!12148) tuple2!18014)

(assert (=> b!1657696 (= lt!620451 (lex!1340 thiss!17113 rules!1846 lt!620449))))

(declare-fun lt!620448 () BalanceConc!12150)

(declare-fun print!1387 (LexerInterface!2856 BalanceConc!12150) BalanceConc!12148)

(assert (=> b!1657696 (= lt!620449 (print!1387 thiss!17113 lt!620448))))

(declare-fun seqFromList!2193 (List!18381) BalanceConc!12150)

(assert (=> b!1657696 (= lt!620448 (seqFromList!2193 (t!151344 tokens!457)))))

(assert (=> b!1657696 (= lt!620476 (print!1387 thiss!17113 (seqFromList!2193 tokens!457)))))

(declare-fun b!1657697 () Bool)

(declare-fun res!743557 () Bool)

(declare-fun e!1062954 () Bool)

(assert (=> b!1657697 (=> res!743557 e!1062954)))

(declare-fun rulesProduceIndividualToken!1504 (LexerInterface!2856 List!18382 Token!6020) Bool)

(assert (=> b!1657697 (= res!743557 (not (rulesProduceIndividualToken!1504 thiss!17113 rules!1846 (h!23712 tokens!457))))))

(declare-fun tp!478942 () Bool)

(declare-fun b!1657698 () Bool)

(declare-fun e!1062955 () Bool)

(declare-fun e!1062950 () Bool)

(declare-fun inv!23652 (String!20917) Bool)

(declare-fun inv!23655 (TokenValueInjection!6294) Bool)

(assert (=> b!1657698 (= e!1062950 (and tp!478942 (inv!23652 (tag!3509 (h!23713 rules!1846))) (inv!23655 (transformation!3227 (h!23713 rules!1846))) e!1062955))))

(declare-fun b!1657699 () Bool)

(declare-fun res!743565 () Bool)

(assert (=> b!1657699 (=> (not res!743565) (not e!1062951))))

(declare-fun tokensListTwoByTwoPredicateSeparableList!549 (LexerInterface!2856 List!18381 List!18382) Bool)

(assert (=> b!1657699 (= res!743565 (tokensListTwoByTwoPredicateSeparableList!549 thiss!17113 tokens!457 rules!1846))))

(declare-fun b!1657700 () Bool)

(declare-fun e!1062941 () Bool)

(declare-fun e!1062942 () Bool)

(assert (=> b!1657700 (= e!1062941 e!1062942)))

(declare-fun res!743568 () Bool)

(assert (=> b!1657700 (=> res!743568 e!1062942)))

(declare-fun lt!620464 () List!18381)

(declare-fun lt!620478 () List!18381)

(declare-fun lt!620456 () List!18381)

(assert (=> b!1657700 (= res!743568 (or (not (= lt!620478 lt!620464)) (not (= lt!620464 lt!620456))))))

(declare-fun list!7302 (BalanceConc!12150) List!18381)

(assert (=> b!1657700 (= lt!620464 (list!7302 lt!620448))))

(assert (=> b!1657700 (= lt!620478 lt!620456)))

(declare-fun prepend!803 (BalanceConc!12150 Token!6020) BalanceConc!12150)

(assert (=> b!1657700 (= lt!620456 (list!7302 (prepend!803 (seqFromList!2193 (t!151344 (t!151344 tokens!457))) (h!23712 (t!151344 tokens!457)))))))

(declare-datatypes ((Unit!30797 0))(
  ( (Unit!30798) )
))
(declare-fun lt!620468 () Unit!30797)

(declare-fun seqFromListBHdTlConstructive!302 (Token!6020 List!18381 BalanceConc!12150) Unit!30797)

(assert (=> b!1657700 (= lt!620468 (seqFromListBHdTlConstructive!302 (h!23712 (t!151344 tokens!457)) (t!151344 (t!151344 tokens!457)) (_1!10409 lt!620451)))))

(declare-fun b!1657701 () Bool)

(declare-fun e!1062956 () Bool)

(declare-fun e!1062945 () Bool)

(assert (=> b!1657701 (= e!1062956 e!1062945)))

(declare-fun res!743574 () Bool)

(assert (=> b!1657701 (=> res!743574 e!1062945)))

(declare-fun lt!620471 () List!18379)

(declare-fun lt!620458 () Regex!4555)

(declare-fun prefixMatch!472 (Regex!4555 List!18379) Bool)

(assert (=> b!1657701 (= res!743574 (prefixMatch!472 lt!620458 (++!4969 (originalCharacters!4041 (h!23712 tokens!457)) lt!620471)))))

(declare-fun e!1062953 () Bool)

(assert (=> b!1657701 e!1062953))

(declare-fun res!743564 () Bool)

(assert (=> b!1657701 (=> (not res!743564) (not e!1062953))))

(declare-fun lt!620462 () tuple2!18010)

(assert (=> b!1657701 (= res!743564 (= (_1!10407 lt!620462) (h!23712 tokens!457)))))

(declare-datatypes ((Option!3501 0))(
  ( (None!3500) (Some!3500 (v!24709 tuple2!18010)) )
))
(declare-fun lt!620450 () Option!3501)

(declare-fun get!5350 (Option!3501) tuple2!18010)

(assert (=> b!1657701 (= lt!620462 (get!5350 lt!620450))))

(declare-fun isDefined!2856 (Option!3501) Bool)

(assert (=> b!1657701 (isDefined!2856 lt!620450)))

(declare-fun maxPrefix!1418 (LexerInterface!2856 List!18382 List!18379) Option!3501)

(assert (=> b!1657701 (= lt!620450 (maxPrefix!1418 thiss!17113 rules!1846 lt!620470))))

(assert (=> b!1657701 (isDefined!2856 (maxPrefix!1418 thiss!17113 rules!1846 (originalCharacters!4041 (h!23712 tokens!457))))))

(declare-fun b!1657702 () Bool)

(declare-fun res!743570 () Bool)

(assert (=> b!1657702 (=> res!743570 e!1062942)))

(declare-fun separableTokensPredicate!796 (LexerInterface!2856 Token!6020 Token!6020 List!18382) Bool)

(assert (=> b!1657702 (= res!743570 (not (separableTokensPredicate!796 thiss!17113 (h!23712 tokens!457) (h!23712 (t!151344 tokens!457)) rules!1846)))))

(declare-fun b!1657703 () Bool)

(declare-fun res!743567 () Bool)

(assert (=> b!1657703 (=> (not res!743567) (not e!1062951))))

(declare-fun rulesInvariant!2525 (LexerInterface!2856 List!18382) Bool)

(assert (=> b!1657703 (= res!743567 (rulesInvariant!2525 thiss!17113 rules!1846))))

(declare-fun e!1062944 () Bool)

(declare-fun b!1657704 () Bool)

(declare-fun tp!478948 () Bool)

(declare-fun e!1062933 () Bool)

(assert (=> b!1657704 (= e!1062944 (and tp!478948 (inv!23652 (tag!3509 (rule!5101 (h!23712 tokens!457)))) (inv!23655 (transformation!3227 (rule!5101 (h!23712 tokens!457)))) e!1062933))))

(declare-fun b!1657705 () Bool)

(declare-fun matchR!2048 (Regex!4555 List!18379) Bool)

(assert (=> b!1657705 (= e!1062953 (matchR!2048 (regex!3227 (rule!5101 (h!23712 tokens!457))) lt!620470))))

(assert (=> b!1657706 (= e!1062955 (and tp!478949 tp!478950))))

(assert (=> b!1657707 (= e!1062933 (and tp!478947 tp!478945))))

(declare-fun b!1657708 () Bool)

(declare-fun e!1062934 () Bool)

(assert (=> b!1657708 (= e!1062954 e!1062934)))

(declare-fun res!743561 () Bool)

(assert (=> b!1657708 (=> res!743561 e!1062934)))

(declare-fun lt!620469 () Option!3501)

(assert (=> b!1657708 (= res!743561 (not (isDefined!2856 lt!620469)))))

(declare-fun lt!620463 () Unit!30797)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!424 (LexerInterface!2856 List!18382 List!18379 List!18379) Unit!30797)

(assert (=> b!1657708 (= lt!620463 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!424 thiss!17113 rules!1846 lt!620470 lt!620474))))

(declare-fun b!1657709 () Bool)

(declare-fun res!743566 () Bool)

(assert (=> b!1657709 (=> (not res!743566) (not e!1062951))))

(get-info :version)

(assert (=> b!1657709 (= res!743566 (and (not ((_ is Nil!18311) tokens!457)) (not ((_ is Nil!18311) (t!151344 tokens!457)))))))

(declare-fun b!1657710 () Bool)

(declare-fun e!1062946 () Bool)

(assert (=> b!1657710 (= e!1062946 e!1062956)))

(declare-fun res!743578 () Bool)

(assert (=> b!1657710 (=> res!743578 e!1062956)))

(declare-datatypes ((Option!3502 0))(
  ( (None!3501) (Some!3501 (v!24710 tuple2!18012)) )
))
(declare-fun isDefined!2857 (Option!3502) Bool)

(declare-fun maxPrefixZipperSequence!733 (LexerInterface!2856 List!18382 BalanceConc!12148) Option!3502)

(declare-fun seqFromList!2194 (List!18379) BalanceConc!12148)

(assert (=> b!1657710 (= res!743578 (not (isDefined!2857 (maxPrefixZipperSequence!733 thiss!17113 rules!1846 (seqFromList!2194 (originalCharacters!4041 (h!23712 tokens!457)))))))))

(assert (=> b!1657710 (= lt!620457 lt!620471)))

(declare-fun head!3689 (BalanceConc!12148) C!9284)

(assert (=> b!1657710 (= lt!620471 (Cons!18309 (head!3689 lt!620449) Nil!18309))))

(assert (=> b!1657710 e!1062940))

(declare-fun res!743577 () Bool)

(assert (=> b!1657710 (=> (not res!743577) (not e!1062940))))

(assert (=> b!1657710 (= res!743577 (= lt!620470 (originalCharacters!4041 (h!23712 tokens!457))))))

(declare-fun b!1657712 () Bool)

(declare-fun e!1062936 () Bool)

(assert (=> b!1657712 (= e!1062936 e!1062946)))

(declare-fun res!743575 () Bool)

(assert (=> b!1657712 (=> res!743575 e!1062946)))

(assert (=> b!1657712 (= res!743575 (prefixMatch!472 lt!620458 (++!4969 lt!620470 lt!620457)))))

(declare-fun lt!620466 () BalanceConc!12148)

(assert (=> b!1657712 (= lt!620457 (list!7301 lt!620466))))

(declare-fun b!1657713 () Bool)

(assert (=> b!1657713 (= e!1062934 e!1062936)))

(declare-fun res!743563 () Bool)

(assert (=> b!1657713 (=> res!743563 e!1062936)))

(declare-fun prefixMatchZipperSequence!649 (Regex!4555 BalanceConc!12148) Bool)

(declare-fun ++!4970 (BalanceConc!12148 BalanceConc!12148) BalanceConc!12148)

(assert (=> b!1657713 (= res!743563 (prefixMatchZipperSequence!649 lt!620458 (++!4970 lt!620465 lt!620466)))))

(declare-fun singletonSeq!1726 (C!9284) BalanceConc!12148)

(declare-fun apply!4878 (BalanceConc!12148 Int) C!9284)

(assert (=> b!1657713 (= lt!620466 (singletonSeq!1726 (apply!4878 (charsOf!1876 (h!23712 (t!151344 tokens!457))) 0)))))

(declare-fun rulesRegex!611 (LexerInterface!2856 List!18382) Regex!4555)

(assert (=> b!1657713 (= lt!620458 (rulesRegex!611 thiss!17113 rules!1846))))

(declare-fun b!1657714 () Bool)

(declare-fun res!743556 () Bool)

(assert (=> b!1657714 (=> (not res!743556) (not e!1062953))))

(declare-fun isEmpty!11353 (List!18379) Bool)

(assert (=> b!1657714 (= res!743556 (isEmpty!11353 (_2!10407 lt!620462)))))

(declare-fun res!743571 () Bool)

(assert (=> start!160058 (=> (not res!743571) (not e!1062951))))

(assert (=> start!160058 (= res!743571 ((_ is Lexer!2854) thiss!17113))))

(assert (=> start!160058 e!1062951))

(assert (=> start!160058 true))

(declare-fun e!1062937 () Bool)

(assert (=> start!160058 e!1062937))

(declare-fun e!1062939 () Bool)

(assert (=> start!160058 e!1062939))

(declare-fun b!1657711 () Bool)

(assert (=> b!1657711 (= e!1062947 (not e!1062941))))

(declare-fun res!743560 () Bool)

(assert (=> b!1657711 (=> res!743560 e!1062941)))

(assert (=> b!1657711 (= res!743560 (not (= lt!620478 (t!151344 tokens!457))))))

(assert (=> b!1657711 (= lt!620478 (list!7302 (_1!10409 lt!620451)))))

(declare-fun lt!620475 () Unit!30797)

(declare-fun theoremInvertabilityWhenTokenListSeparable!299 (LexerInterface!2856 List!18382 List!18381) Unit!30797)

(assert (=> b!1657711 (= lt!620475 (theoremInvertabilityWhenTokenListSeparable!299 thiss!17113 rules!1846 (t!151344 tokens!457)))))

(declare-fun isPrefix!1485 (List!18379 List!18379) Bool)

(assert (=> b!1657711 (isPrefix!1485 lt!620470 lt!620472)))

(declare-fun lt!620467 () Unit!30797)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1010 (List!18379 List!18379) Unit!30797)

(assert (=> b!1657711 (= lt!620467 (lemmaConcatTwoListThenFirstIsPrefix!1010 lt!620470 lt!620474))))

(declare-fun b!1657715 () Bool)

(declare-fun e!1062935 () Bool)

(assert (=> b!1657715 (= e!1062945 e!1062935)))

(declare-fun res!743573 () Bool)

(assert (=> b!1657715 (=> res!743573 e!1062935)))

(assert (=> b!1657715 (= res!743573 (or (not (= (_1!10407 lt!620473) (h!23712 tokens!457))) (not (= (_2!10407 lt!620473) lt!620474))))))

(assert (=> b!1657715 (= lt!620473 (get!5350 lt!620469))))

(declare-fun lt!620455 () Unit!30797)

(declare-fun lemmaMaxPrefWithNoPrefixMatchAllRulesThenSuffixReturnSame!182 (LexerInterface!2856 List!18382 Token!6020 Rule!6254 List!18379) Unit!30797)

(assert (=> b!1657715 (= lt!620455 (lemmaMaxPrefWithNoPrefixMatchAllRulesThenSuffixReturnSame!182 thiss!17113 rules!1846 (h!23712 tokens!457) (rule!5101 (h!23712 tokens!457)) lt!620474))))

(declare-fun b!1657716 () Bool)

(assert (=> b!1657716 (= e!1062935 e!1062938)))

(declare-fun res!743569 () Bool)

(assert (=> b!1657716 (=> res!743569 e!1062938)))

(assert (=> b!1657716 (= res!743569 (not (= (h!23712 tokens!457) (_1!10408 lt!620453))))))

(declare-fun get!5351 (Option!3502) tuple2!18012)

(assert (=> b!1657716 (= lt!620453 (get!5351 (maxPrefixZipperSequence!733 thiss!17113 rules!1846 lt!620476)))))

(declare-fun b!1657717 () Bool)

(declare-fun res!743581 () Bool)

(assert (=> b!1657717 (=> (not res!743581) (not e!1062951))))

(declare-fun isEmpty!11354 (List!18382) Bool)

(assert (=> b!1657717 (= res!743581 (not (isEmpty!11354 rules!1846)))))

(declare-fun b!1657718 () Bool)

(declare-fun res!743562 () Bool)

(assert (=> b!1657718 (=> res!743562 e!1062935)))

(declare-fun maxPrefixZipper!354 (LexerInterface!2856 List!18382 List!18379) Option!3501)

(assert (=> b!1657718 (= res!743562 (not (= (h!23712 tokens!457) (_1!10407 (get!5350 (maxPrefixZipper!354 thiss!17113 rules!1846 lt!620454))))))))

(declare-fun b!1657719 () Bool)

(declare-fun res!743576 () Bool)

(assert (=> b!1657719 (=> res!743576 e!1062954)))

(declare-fun isEmpty!11355 (BalanceConc!12150) Bool)

(assert (=> b!1657719 (= res!743576 (isEmpty!11355 (_1!10409 (lex!1340 thiss!17113 rules!1846 (seqFromList!2194 lt!620470)))))))

(declare-fun e!1062949 () Bool)

(declare-fun b!1657720 () Bool)

(declare-fun tp!478944 () Bool)

(declare-fun inv!21 (TokenValue!3317) Bool)

(assert (=> b!1657720 (= e!1062949 (and (inv!21 (value!101642 (h!23712 tokens!457))) e!1062944 tp!478944))))

(declare-fun tp!478943 () Bool)

(declare-fun b!1657721 () Bool)

(declare-fun inv!23656 (Token!6020) Bool)

(assert (=> b!1657721 (= e!1062939 (and (inv!23656 (h!23712 tokens!457)) e!1062949 tp!478943))))

(declare-fun b!1657722 () Bool)

(declare-fun res!743580 () Bool)

(assert (=> b!1657722 (=> (not res!743580) (not e!1062951))))

(declare-fun rulesProduceEachTokenIndividuallyList!1058 (LexerInterface!2856 List!18382 List!18381) Bool)

(assert (=> b!1657722 (= res!743580 (rulesProduceEachTokenIndividuallyList!1058 thiss!17113 rules!1846 tokens!457))))

(declare-fun b!1657723 () Bool)

(assert (=> b!1657723 (= e!1062940 (= lt!620457 (Cons!18309 (head!3688 lt!620474) Nil!18309)))))

(declare-fun b!1657724 () Bool)

(assert (=> b!1657724 (= e!1062942 e!1062954)))

(declare-fun res!743572 () Bool)

(assert (=> b!1657724 (=> res!743572 e!1062954)))

(declare-fun lt!620461 () List!18379)

(declare-fun lt!620477 () List!18379)

(assert (=> b!1657724 (= res!743572 (or (not (= lt!620461 lt!620477)) (not (= lt!620477 lt!620470)) (not (= lt!620461 lt!620470))))))

(declare-fun printList!969 (LexerInterface!2856 List!18381) List!18379)

(assert (=> b!1657724 (= lt!620477 (printList!969 thiss!17113 (Cons!18311 (h!23712 tokens!457) Nil!18311)))))

(declare-fun lt!620452 () BalanceConc!12148)

(assert (=> b!1657724 (= lt!620461 (list!7301 lt!620452))))

(declare-fun lt!620459 () BalanceConc!12150)

(declare-fun printTailRec!907 (LexerInterface!2856 BalanceConc!12150 Int BalanceConc!12148) BalanceConc!12148)

(assert (=> b!1657724 (= lt!620452 (printTailRec!907 thiss!17113 lt!620459 0 (BalanceConc!12149 Empty!6102)))))

(assert (=> b!1657724 (= lt!620452 (print!1387 thiss!17113 lt!620459))))

(declare-fun singletonSeq!1727 (Token!6020) BalanceConc!12150)

(assert (=> b!1657724 (= lt!620459 (singletonSeq!1727 (h!23712 tokens!457)))))

(assert (=> b!1657724 (= lt!620469 (maxPrefix!1418 thiss!17113 rules!1846 lt!620454))))

(declare-fun b!1657725 () Bool)

(declare-fun tp!478946 () Bool)

(assert (=> b!1657725 (= e!1062937 (and e!1062950 tp!478946))))

(declare-fun b!1657726 () Bool)

(declare-fun res!743579 () Bool)

(assert (=> b!1657726 (=> res!743579 e!1062945)))

(assert (=> b!1657726 (= res!743579 (prefixMatch!472 lt!620458 (++!4969 lt!620470 lt!620471)))))

(assert (= (and start!160058 res!743571) b!1657717))

(assert (= (and b!1657717 res!743581) b!1657703))

(assert (= (and b!1657703 res!743567) b!1657722))

(assert (= (and b!1657722 res!743580) b!1657699))

(assert (= (and b!1657699 res!743565) b!1657709))

(assert (= (and b!1657709 res!743566) b!1657696))

(assert (= (and b!1657696 res!743559) b!1657711))

(assert (= (and b!1657711 (not res!743560)) b!1657700))

(assert (= (and b!1657700 (not res!743568)) b!1657702))

(assert (= (and b!1657702 (not res!743570)) b!1657724))

(assert (= (and b!1657724 (not res!743572)) b!1657697))

(assert (= (and b!1657697 (not res!743557)) b!1657719))

(assert (= (and b!1657719 (not res!743576)) b!1657708))

(assert (= (and b!1657708 (not res!743561)) b!1657713))

(assert (= (and b!1657713 (not res!743563)) b!1657712))

(assert (= (and b!1657712 (not res!743575)) b!1657710))

(assert (= (and b!1657710 res!743577) b!1657694))

(assert (= (and b!1657694 res!743558) b!1657723))

(assert (= (and b!1657710 (not res!743578)) b!1657701))

(assert (= (and b!1657701 res!743564) b!1657714))

(assert (= (and b!1657714 res!743556) b!1657705))

(assert (= (and b!1657701 (not res!743574)) b!1657726))

(assert (= (and b!1657726 (not res!743579)) b!1657715))

(assert (= (and b!1657715 (not res!743573)) b!1657718))

(assert (= (and b!1657718 (not res!743562)) b!1657716))

(assert (= (and b!1657716 (not res!743569)) b!1657695))

(assert (= b!1657698 b!1657706))

(assert (= b!1657725 b!1657698))

(assert (= (and start!160058 ((_ is Cons!18312) rules!1846)) b!1657725))

(assert (= b!1657704 b!1657707))

(assert (= b!1657720 b!1657704))

(assert (= b!1657721 b!1657720))

(assert (= (and start!160058 ((_ is Cons!18311) tokens!457)) b!1657721))

(declare-fun m!2013371 () Bool)

(assert (=> b!1657699 m!2013371))

(declare-fun m!2013373 () Bool)

(assert (=> b!1657702 m!2013373))

(declare-fun m!2013375 () Bool)

(assert (=> b!1657714 m!2013375))

(declare-fun m!2013377 () Bool)

(assert (=> b!1657716 m!2013377))

(assert (=> b!1657716 m!2013377))

(declare-fun m!2013379 () Bool)

(assert (=> b!1657716 m!2013379))

(declare-fun m!2013381 () Bool)

(assert (=> b!1657720 m!2013381))

(declare-fun m!2013383 () Bool)

(assert (=> b!1657703 m!2013383))

(declare-fun m!2013385 () Bool)

(assert (=> b!1657726 m!2013385))

(assert (=> b!1657726 m!2013385))

(declare-fun m!2013387 () Bool)

(assert (=> b!1657726 m!2013387))

(declare-fun m!2013389 () Bool)

(assert (=> b!1657701 m!2013389))

(declare-fun m!2013391 () Bool)

(assert (=> b!1657701 m!2013391))

(declare-fun m!2013393 () Bool)

(assert (=> b!1657701 m!2013393))

(declare-fun m!2013395 () Bool)

(assert (=> b!1657701 m!2013395))

(declare-fun m!2013397 () Bool)

(assert (=> b!1657701 m!2013397))

(assert (=> b!1657701 m!2013397))

(declare-fun m!2013399 () Bool)

(assert (=> b!1657701 m!2013399))

(declare-fun m!2013401 () Bool)

(assert (=> b!1657701 m!2013401))

(assert (=> b!1657701 m!2013393))

(declare-fun m!2013403 () Bool)

(assert (=> b!1657715 m!2013403))

(declare-fun m!2013405 () Bool)

(assert (=> b!1657715 m!2013405))

(declare-fun m!2013407 () Bool)

(assert (=> b!1657708 m!2013407))

(declare-fun m!2013409 () Bool)

(assert (=> b!1657708 m!2013409))

(declare-fun m!2013411 () Bool)

(assert (=> b!1657712 m!2013411))

(assert (=> b!1657712 m!2013411))

(declare-fun m!2013413 () Bool)

(assert (=> b!1657712 m!2013413))

(declare-fun m!2013415 () Bool)

(assert (=> b!1657712 m!2013415))

(declare-fun m!2013417 () Bool)

(assert (=> b!1657695 m!2013417))

(declare-fun m!2013419 () Bool)

(assert (=> b!1657713 m!2013419))

(declare-fun m!2013421 () Bool)

(assert (=> b!1657713 m!2013421))

(declare-fun m!2013423 () Bool)

(assert (=> b!1657713 m!2013423))

(assert (=> b!1657713 m!2013421))

(declare-fun m!2013425 () Bool)

(assert (=> b!1657713 m!2013425))

(declare-fun m!2013427 () Bool)

(assert (=> b!1657713 m!2013427))

(declare-fun m!2013429 () Bool)

(assert (=> b!1657713 m!2013429))

(assert (=> b!1657713 m!2013425))

(assert (=> b!1657713 m!2013429))

(declare-fun m!2013431 () Bool)

(assert (=> b!1657719 m!2013431))

(assert (=> b!1657719 m!2013431))

(declare-fun m!2013433 () Bool)

(assert (=> b!1657719 m!2013433))

(declare-fun m!2013435 () Bool)

(assert (=> b!1657719 m!2013435))

(declare-fun m!2013437 () Bool)

(assert (=> b!1657705 m!2013437))

(declare-fun m!2013439 () Bool)

(assert (=> b!1657697 m!2013439))

(declare-fun m!2013441 () Bool)

(assert (=> b!1657710 m!2013441))

(assert (=> b!1657710 m!2013441))

(declare-fun m!2013443 () Bool)

(assert (=> b!1657710 m!2013443))

(assert (=> b!1657710 m!2013443))

(declare-fun m!2013445 () Bool)

(assert (=> b!1657710 m!2013445))

(declare-fun m!2013447 () Bool)

(assert (=> b!1657710 m!2013447))

(declare-fun m!2013449 () Bool)

(assert (=> b!1657711 m!2013449))

(declare-fun m!2013451 () Bool)

(assert (=> b!1657711 m!2013451))

(declare-fun m!2013453 () Bool)

(assert (=> b!1657711 m!2013453))

(declare-fun m!2013455 () Bool)

(assert (=> b!1657711 m!2013455))

(declare-fun m!2013457 () Bool)

(assert (=> b!1657722 m!2013457))

(declare-fun m!2013459 () Bool)

(assert (=> b!1657723 m!2013459))

(declare-fun m!2013461 () Bool)

(assert (=> b!1657718 m!2013461))

(assert (=> b!1657718 m!2013461))

(declare-fun m!2013463 () Bool)

(assert (=> b!1657718 m!2013463))

(declare-fun m!2013465 () Bool)

(assert (=> b!1657704 m!2013465))

(declare-fun m!2013467 () Bool)

(assert (=> b!1657704 m!2013467))

(declare-fun m!2013469 () Bool)

(assert (=> b!1657724 m!2013469))

(declare-fun m!2013471 () Bool)

(assert (=> b!1657724 m!2013471))

(declare-fun m!2013473 () Bool)

(assert (=> b!1657724 m!2013473))

(declare-fun m!2013475 () Bool)

(assert (=> b!1657724 m!2013475))

(declare-fun m!2013477 () Bool)

(assert (=> b!1657724 m!2013477))

(declare-fun m!2013479 () Bool)

(assert (=> b!1657724 m!2013479))

(declare-fun m!2013481 () Bool)

(assert (=> b!1657717 m!2013481))

(declare-fun m!2013483 () Bool)

(assert (=> b!1657698 m!2013483))

(declare-fun m!2013485 () Bool)

(assert (=> b!1657698 m!2013485))

(declare-fun m!2013487 () Bool)

(assert (=> b!1657721 m!2013487))

(declare-fun m!2013489 () Bool)

(assert (=> b!1657694 m!2013489))

(declare-fun m!2013491 () Bool)

(assert (=> b!1657696 m!2013491))

(declare-fun m!2013493 () Bool)

(assert (=> b!1657696 m!2013493))

(declare-fun m!2013495 () Bool)

(assert (=> b!1657696 m!2013495))

(declare-fun m!2013497 () Bool)

(assert (=> b!1657696 m!2013497))

(declare-fun m!2013499 () Bool)

(assert (=> b!1657696 m!2013499))

(declare-fun m!2013501 () Bool)

(assert (=> b!1657696 m!2013501))

(assert (=> b!1657696 m!2013495))

(declare-fun m!2013503 () Bool)

(assert (=> b!1657696 m!2013503))

(declare-fun m!2013505 () Bool)

(assert (=> b!1657696 m!2013505))

(declare-fun m!2013507 () Bool)

(assert (=> b!1657696 m!2013507))

(declare-fun m!2013509 () Bool)

(assert (=> b!1657696 m!2013509))

(declare-fun m!2013511 () Bool)

(assert (=> b!1657700 m!2013511))

(declare-fun m!2013513 () Bool)

(assert (=> b!1657700 m!2013513))

(declare-fun m!2013515 () Bool)

(assert (=> b!1657700 m!2013515))

(declare-fun m!2013517 () Bool)

(assert (=> b!1657700 m!2013517))

(declare-fun m!2013519 () Bool)

(assert (=> b!1657700 m!2013519))

(assert (=> b!1657700 m!2013515))

(assert (=> b!1657700 m!2013517))

(check-sat (not b_next!45787) (not b!1657726) (not b_next!45785) (not b!1657719) (not b!1657699) (not b!1657703) (not b!1657717) (not b!1657694) (not b!1657723) (not b!1657715) b_and!117645 (not b!1657704) (not b!1657722) (not b!1657705) (not b!1657724) (not b!1657716) (not b!1657696) (not b!1657702) (not b!1657695) b_and!117649 (not b!1657697) (not b!1657698) b_and!117651 (not b!1657701) (not b!1657700) (not b!1657708) (not b!1657711) (not b!1657720) (not b!1657721) (not b!1657718) (not b!1657712) b_and!117647 (not b!1657725) (not b!1657713) (not b_next!45783) (not b!1657714) (not b!1657710) (not b_next!45789))
(check-sat b_and!117649 b_and!117651 (not b_next!45787) (not b_next!45785) b_and!117645 b_and!117647 (not b_next!45783) (not b_next!45789))
