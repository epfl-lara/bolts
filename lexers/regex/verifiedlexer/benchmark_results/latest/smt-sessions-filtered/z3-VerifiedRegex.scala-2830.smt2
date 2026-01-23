; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!159498 () Bool)

(assert start!159498)

(declare-fun b!1654674 () Bool)

(declare-fun b_free!44983 () Bool)

(declare-fun b_next!45687 () Bool)

(assert (=> b!1654674 (= b_free!44983 (not b_next!45687))))

(declare-fun tp!478462 () Bool)

(declare-fun b_and!117477 () Bool)

(assert (=> b!1654674 (= tp!478462 b_and!117477)))

(declare-fun b_free!44985 () Bool)

(declare-fun b_next!45689 () Bool)

(assert (=> b!1654674 (= b_free!44985 (not b_next!45689))))

(declare-fun tp!478461 () Bool)

(declare-fun b_and!117479 () Bool)

(assert (=> b!1654674 (= tp!478461 b_and!117479)))

(declare-fun b!1654672 () Bool)

(declare-fun b_free!44987 () Bool)

(declare-fun b_next!45691 () Bool)

(assert (=> b!1654672 (= b_free!44987 (not b_next!45691))))

(declare-fun tp!478459 () Bool)

(declare-fun b_and!117481 () Bool)

(assert (=> b!1654672 (= tp!478459 b_and!117481)))

(declare-fun b_free!44989 () Bool)

(declare-fun b_next!45693 () Bool)

(assert (=> b!1654672 (= b_free!44989 (not b_next!45693))))

(declare-fun tp!478464 () Bool)

(declare-fun b_and!117483 () Bool)

(assert (=> b!1654672 (= tp!478464 b_and!117483)))

(declare-fun b!1654670 () Bool)

(declare-fun e!1061054 () Bool)

(declare-fun e!1061070 () Bool)

(assert (=> b!1654670 (= e!1061054 e!1061070)))

(declare-fun res!741893 () Bool)

(assert (=> b!1654670 (=> res!741893 e!1061070)))

(declare-datatypes ((List!18337 0))(
  ( (Nil!18267) (Cons!18267 (h!23668 (_ BitVec 16)) (t!151174 List!18337)) )
))
(declare-datatypes ((TokenValue!3311 0))(
  ( (FloatLiteralValue!6622 (text!23622 List!18337)) (TokenValueExt!3310 (__x!11924 Int)) (Broken!16555 (value!101445 List!18337)) (Object!3380) (End!3311) (Def!3311) (Underscore!3311) (Match!3311) (Else!3311) (Error!3311) (Case!3311) (If!3311) (Extends!3311) (Abstract!3311) (Class!3311) (Val!3311) (DelimiterValue!6622 (del!3371 List!18337)) (KeywordValue!3317 (value!101446 List!18337)) (CommentValue!6622 (value!101447 List!18337)) (WhitespaceValue!6622 (value!101448 List!18337)) (IndentationValue!3311 (value!101449 List!18337)) (String!20886) (Int32!3311) (Broken!16556 (value!101450 List!18337)) (Boolean!3312) (Unit!30586) (OperatorValue!3314 (op!3371 List!18337)) (IdentifierValue!6622 (value!101451 List!18337)) (IdentifierValue!6623 (value!101452 List!18337)) (WhitespaceValue!6623 (value!101453 List!18337)) (True!6622) (False!6622) (Broken!16557 (value!101454 List!18337)) (Broken!16558 (value!101455 List!18337)) (True!6623) (RightBrace!3311) (RightBracket!3311) (Colon!3311) (Null!3311) (Comma!3311) (LeftBracket!3311) (False!6623) (LeftBrace!3311) (ImaginaryLiteralValue!3311 (text!23623 List!18337)) (StringLiteralValue!9933 (value!101456 List!18337)) (EOFValue!3311 (value!101457 List!18337)) (IdentValue!3311 (value!101458 List!18337)) (DelimiterValue!6623 (value!101459 List!18337)) (DedentValue!3311 (value!101460 List!18337)) (NewLineValue!3311 (value!101461 List!18337)) (IntegerValue!9933 (value!101462 (_ BitVec 32)) (text!23624 List!18337)) (IntegerValue!9934 (value!101463 Int) (text!23625 List!18337)) (Times!3311) (Or!3311) (Equal!3311) (Minus!3311) (Broken!16559 (value!101464 List!18337)) (And!3311) (Div!3311) (LessEqual!3311) (Mod!3311) (Concat!7860) (Not!3311) (Plus!3311) (SpaceValue!3311 (value!101465 List!18337)) (IntegerValue!9935 (value!101466 Int) (text!23626 List!18337)) (StringLiteralValue!9934 (text!23627 List!18337)) (FloatLiteralValue!6623 (text!23628 List!18337)) (BytesLiteralValue!3311 (value!101467 List!18337)) (CommentValue!6623 (value!101468 List!18337)) (StringLiteralValue!9935 (value!101469 List!18337)) (ErrorTokenValue!3311 (msg!3372 List!18337)) )
))
(declare-datatypes ((C!9272 0))(
  ( (C!9273 (val!5232 Int)) )
))
(declare-datatypes ((List!18338 0))(
  ( (Nil!18268) (Cons!18268 (h!23669 C!9272) (t!151175 List!18338)) )
))
(declare-datatypes ((IArray!12185 0))(
  ( (IArray!12186 (innerList!6150 List!18338)) )
))
(declare-datatypes ((Conc!6090 0))(
  ( (Node!6090 (left!14630 Conc!6090) (right!14960 Conc!6090) (csize!12410 Int) (cheight!6301 Int)) (Leaf!8921 (xs!8930 IArray!12185) (csize!12411 Int)) (Empty!6090) )
))
(declare-datatypes ((BalanceConc!12124 0))(
  ( (BalanceConc!12125 (c!269145 Conc!6090)) )
))
(declare-datatypes ((Regex!4549 0))(
  ( (ElementMatch!4549 (c!269146 C!9272)) (Concat!7861 (regOne!9610 Regex!4549) (regTwo!9610 Regex!4549)) (EmptyExpr!4549) (Star!4549 (reg!4878 Regex!4549)) (EmptyLang!4549) (Union!4549 (regOne!9611 Regex!4549) (regTwo!9611 Regex!4549)) )
))
(declare-datatypes ((String!20887 0))(
  ( (String!20888 (value!101470 String)) )
))
(declare-datatypes ((TokenValueInjection!6282 0))(
  ( (TokenValueInjection!6283 (toValue!4672 Int) (toChars!4531 Int)) )
))
(declare-datatypes ((Rule!6242 0))(
  ( (Rule!6243 (regex!3221 Regex!4549) (tag!3503 String!20887) (isSeparator!3221 Bool) (transformation!3221 TokenValueInjection!6282)) )
))
(declare-datatypes ((List!18339 0))(
  ( (Nil!18269) (Cons!18269 (h!23670 Rule!6242) (t!151176 List!18339)) )
))
(declare-fun rules!1846 () List!18339)

(declare-datatypes ((LexerInterface!2850 0))(
  ( (LexerInterfaceExt!2847 (__x!11925 Int)) (Lexer!2848) )
))
(declare-fun thiss!17113 () LexerInterface!2850)

(declare-datatypes ((Token!6008 0))(
  ( (Token!6009 (value!101471 TokenValue!3311) (rule!5089 Rule!6242) (size!14536 Int) (originalCharacters!4035 List!18338)) )
))
(declare-datatypes ((List!18340 0))(
  ( (Nil!18270) (Cons!18270 (h!23671 Token!6008) (t!151177 List!18340)) )
))
(declare-fun tokens!457 () List!18340)

(declare-datatypes ((tuple2!17962 0))(
  ( (tuple2!17963 (_1!10383 Token!6008) (_2!10383 BalanceConc!12124)) )
))
(declare-datatypes ((Option!3483 0))(
  ( (None!3482) (Some!3482 (v!24673 tuple2!17962)) )
))
(declare-fun isDefined!2838 (Option!3483) Bool)

(declare-fun maxPrefixZipperSequence!727 (LexerInterface!2850 List!18339 BalanceConc!12124) Option!3483)

(declare-fun seqFromList!2181 (List!18338) BalanceConc!12124)

(assert (=> b!1654670 (= res!741893 (not (isDefined!2838 (maxPrefixZipperSequence!727 thiss!17113 rules!1846 (seqFromList!2181 (originalCharacters!4035 (h!23671 tokens!457)))))))))

(declare-fun lt!616656 () List!18338)

(declare-fun lt!616660 () List!18338)

(assert (=> b!1654670 (= lt!616656 lt!616660)))

(declare-fun lt!616655 () BalanceConc!12124)

(declare-fun head!3664 (BalanceConc!12124) C!9272)

(assert (=> b!1654670 (= lt!616660 (Cons!18268 (head!3664 lt!616655) Nil!18268))))

(declare-fun e!1061072 () Bool)

(assert (=> b!1654670 e!1061072))

(declare-fun res!741912 () Bool)

(assert (=> b!1654670 (=> (not res!741912) (not e!1061072))))

(declare-fun lt!616664 () List!18338)

(assert (=> b!1654670 (= res!741912 (= lt!616664 (originalCharacters!4035 (h!23671 tokens!457))))))

(declare-fun b!1654671 () Bool)

(declare-fun e!1061053 () Bool)

(declare-fun e!1061066 () Bool)

(assert (=> b!1654671 (= e!1061053 e!1061066)))

(declare-fun res!741905 () Bool)

(assert (=> b!1654671 (=> res!741905 e!1061066)))

(declare-datatypes ((tuple2!17964 0))(
  ( (tuple2!17965 (_1!10384 Token!6008) (_2!10384 List!18338)) )
))
(declare-fun lt!616650 () tuple2!17964)

(declare-fun lt!616662 () List!18338)

(assert (=> b!1654671 (= res!741905 (or (not (= (_1!10384 lt!616650) (h!23671 tokens!457))) (not (= (_2!10384 lt!616650) lt!616662))))))

(declare-datatypes ((Option!3484 0))(
  ( (None!3483) (Some!3483 (v!24674 tuple2!17964)) )
))
(declare-fun lt!616667 () Option!3484)

(declare-fun get!5328 (Option!3484) tuple2!17964)

(assert (=> b!1654671 (= lt!616650 (get!5328 lt!616667))))

(declare-datatypes ((Unit!30587 0))(
  ( (Unit!30588) )
))
(declare-fun lt!616659 () Unit!30587)

(declare-fun lemmaMaxPrefWithNoPrefixMatchAllRulesThenSuffixReturnSame!176 (LexerInterface!2850 List!18339 Token!6008 Rule!6242 List!18338) Unit!30587)

(assert (=> b!1654671 (= lt!616659 (lemmaMaxPrefWithNoPrefixMatchAllRulesThenSuffixReturnSame!176 thiss!17113 rules!1846 (h!23671 tokens!457) (rule!5089 (h!23671 tokens!457)) lt!616662))))

(declare-fun e!1061055 () Bool)

(assert (=> b!1654672 (= e!1061055 (and tp!478459 tp!478464))))

(declare-fun b!1654673 () Bool)

(declare-fun e!1061056 () Bool)

(declare-fun e!1061052 () Bool)

(assert (=> b!1654673 (= e!1061056 e!1061052)))

(declare-fun res!741900 () Bool)

(assert (=> b!1654673 (=> res!741900 e!1061052)))

(declare-fun lt!616671 () List!18338)

(declare-fun lt!616663 () List!18338)

(assert (=> b!1654673 (= res!741900 (or (not (= lt!616663 lt!616671)) (not (= lt!616671 lt!616664)) (not (= lt!616663 lt!616664))))))

(declare-fun printList!963 (LexerInterface!2850 List!18340) List!18338)

(assert (=> b!1654673 (= lt!616671 (printList!963 thiss!17113 (Cons!18270 (h!23671 tokens!457) Nil!18270)))))

(declare-fun lt!616661 () BalanceConc!12124)

(declare-fun list!7277 (BalanceConc!12124) List!18338)

(assert (=> b!1654673 (= lt!616663 (list!7277 lt!616661))))

(declare-datatypes ((IArray!12187 0))(
  ( (IArray!12188 (innerList!6151 List!18340)) )
))
(declare-datatypes ((Conc!6091 0))(
  ( (Node!6091 (left!14631 Conc!6091) (right!14961 Conc!6091) (csize!12412 Int) (cheight!6302 Int)) (Leaf!8922 (xs!8931 IArray!12187) (csize!12413 Int)) (Empty!6091) )
))
(declare-datatypes ((BalanceConc!12126 0))(
  ( (BalanceConc!12127 (c!269147 Conc!6091)) )
))
(declare-fun lt!616668 () BalanceConc!12126)

(declare-fun printTailRec!901 (LexerInterface!2850 BalanceConc!12126 Int BalanceConc!12124) BalanceConc!12124)

(assert (=> b!1654673 (= lt!616661 (printTailRec!901 thiss!17113 lt!616668 0 (BalanceConc!12125 Empty!6090)))))

(declare-fun print!1381 (LexerInterface!2850 BalanceConc!12126) BalanceConc!12124)

(assert (=> b!1654673 (= lt!616661 (print!1381 thiss!17113 lt!616668))))

(declare-fun singletonSeq!1714 (Token!6008) BalanceConc!12126)

(assert (=> b!1654673 (= lt!616668 (singletonSeq!1714 (h!23671 tokens!457)))))

(declare-fun lt!616675 () List!18338)

(declare-fun maxPrefix!1412 (LexerInterface!2850 List!18339 List!18338) Option!3484)

(assert (=> b!1654673 (= lt!616667 (maxPrefix!1412 thiss!17113 rules!1846 lt!616675))))

(declare-fun e!1061064 () Bool)

(assert (=> b!1654674 (= e!1061064 (and tp!478462 tp!478461))))

(declare-fun b!1654676 () Bool)

(declare-fun tp!478456 () Bool)

(declare-fun e!1061063 () Bool)

(declare-fun inv!23619 (String!20887) Bool)

(declare-fun inv!23622 (TokenValueInjection!6282) Bool)

(assert (=> b!1654676 (= e!1061063 (and tp!478456 (inv!23619 (tag!3503 (h!23670 rules!1846))) (inv!23622 (transformation!3221 (h!23670 rules!1846))) e!1061064))))

(declare-fun b!1654677 () Bool)

(declare-fun e!1061059 () Bool)

(assert (=> b!1654677 (= e!1061052 e!1061059)))

(declare-fun res!741899 () Bool)

(assert (=> b!1654677 (=> res!741899 e!1061059)))

(declare-fun isDefined!2839 (Option!3484) Bool)

(assert (=> b!1654677 (= res!741899 (not (isDefined!2839 lt!616667)))))

(declare-fun lt!616648 () Unit!30587)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!418 (LexerInterface!2850 List!18339 List!18338 List!18338) Unit!30587)

(assert (=> b!1654677 (= lt!616648 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!418 thiss!17113 rules!1846 lt!616664 lt!616662))))

(declare-fun b!1654678 () Bool)

(declare-fun res!741910 () Bool)

(assert (=> b!1654678 (=> res!741910 e!1061052)))

(declare-fun isEmpty!11305 (BalanceConc!12126) Bool)

(declare-datatypes ((tuple2!17966 0))(
  ( (tuple2!17967 (_1!10385 BalanceConc!12126) (_2!10385 BalanceConc!12124)) )
))
(declare-fun lex!1334 (LexerInterface!2850 List!18339 BalanceConc!12124) tuple2!17966)

(assert (=> b!1654678 (= res!741910 (isEmpty!11305 (_1!10385 (lex!1334 thiss!17113 rules!1846 (seqFromList!2181 lt!616664)))))))

(declare-fun b!1654679 () Bool)

(declare-fun res!741903 () Bool)

(assert (=> b!1654679 (=> res!741903 e!1061056)))

(declare-fun separableTokensPredicate!790 (LexerInterface!2850 Token!6008 Token!6008 List!18339) Bool)

(assert (=> b!1654679 (= res!741903 (not (separableTokensPredicate!790 thiss!17113 (h!23671 tokens!457) (h!23671 (t!151177 tokens!457)) rules!1846)))))

(declare-fun tp!478460 () Bool)

(declare-fun b!1654680 () Bool)

(declare-fun e!1061058 () Bool)

(declare-fun e!1061068 () Bool)

(declare-fun inv!23623 (Token!6008) Bool)

(assert (=> b!1654680 (= e!1061068 (and (inv!23623 (h!23671 tokens!457)) e!1061058 tp!478460))))

(declare-fun b!1654681 () Bool)

(assert (=> b!1654681 (= e!1061070 e!1061053)))

(declare-fun res!741897 () Bool)

(assert (=> b!1654681 (=> res!741897 e!1061053)))

(declare-fun lt!616658 () Regex!4549)

(declare-fun prefixMatch!466 (Regex!4549 List!18338) Bool)

(declare-fun ++!4951 (List!18338 List!18338) List!18338)

(assert (=> b!1654681 (= res!741897 (prefixMatch!466 lt!616658 (++!4951 (originalCharacters!4035 (h!23671 tokens!457)) lt!616660)))))

(declare-fun e!1061057 () Bool)

(assert (=> b!1654681 e!1061057))

(declare-fun res!741909 () Bool)

(assert (=> b!1654681 (=> (not res!741909) (not e!1061057))))

(declare-fun lt!616651 () tuple2!17964)

(assert (=> b!1654681 (= res!741909 (= (_1!10384 lt!616651) (h!23671 tokens!457)))))

(declare-fun lt!616670 () Option!3484)

(assert (=> b!1654681 (= lt!616651 (get!5328 lt!616670))))

(assert (=> b!1654681 (isDefined!2839 lt!616670)))

(assert (=> b!1654681 (= lt!616670 (maxPrefix!1412 thiss!17113 rules!1846 lt!616664))))

(assert (=> b!1654681 (isDefined!2839 (maxPrefix!1412 thiss!17113 rules!1846 (originalCharacters!4035 (h!23671 tokens!457))))))

(declare-fun b!1654682 () Bool)

(declare-fun head!3665 (List!18338) C!9272)

(assert (=> b!1654682 (= e!1061072 (= lt!616656 (Cons!18268 (head!3665 lt!616662) Nil!18268)))))

(declare-fun e!1061071 () Bool)

(declare-fun tp!478457 () Bool)

(declare-fun b!1654683 () Bool)

(assert (=> b!1654683 (= e!1061071 (and tp!478457 (inv!23619 (tag!3503 (rule!5089 (h!23671 tokens!457)))) (inv!23622 (transformation!3221 (rule!5089 (h!23671 tokens!457)))) e!1061055))))

(declare-fun b!1654684 () Bool)

(declare-fun res!741894 () Bool)

(assert (=> b!1654684 (=> (not res!741894) (not e!1061057))))

(declare-fun isEmpty!11306 (List!18338) Bool)

(assert (=> b!1654684 (= res!741894 (isEmpty!11306 (_2!10384 lt!616651)))))

(declare-fun b!1654685 () Bool)

(declare-fun res!741916 () Bool)

(declare-fun e!1061065 () Bool)

(assert (=> b!1654685 (=> (not res!741916) (not e!1061065))))

(get-info :version)

(assert (=> b!1654685 (= res!741916 (and (not ((_ is Nil!18270) tokens!457)) (not ((_ is Nil!18270) (t!151177 tokens!457)))))))

(declare-fun b!1654686 () Bool)

(declare-fun res!741901 () Bool)

(assert (=> b!1654686 (=> res!741901 e!1061052)))

(declare-fun rulesProduceIndividualToken!1498 (LexerInterface!2850 List!18339 Token!6008) Bool)

(assert (=> b!1654686 (= res!741901 (not (rulesProduceIndividualToken!1498 thiss!17113 rules!1846 (h!23671 tokens!457))))))

(declare-fun b!1654687 () Bool)

(declare-fun e!1061060 () Bool)

(assert (=> b!1654687 (= e!1061065 e!1061060)))

(declare-fun res!741904 () Bool)

(assert (=> b!1654687 (=> (not res!741904) (not e!1061060))))

(declare-fun lt!616672 () List!18338)

(assert (=> b!1654687 (= res!741904 (= lt!616675 lt!616672))))

(assert (=> b!1654687 (= lt!616672 (++!4951 lt!616664 lt!616662))))

(declare-fun lt!616665 () BalanceConc!12124)

(assert (=> b!1654687 (= lt!616675 (list!7277 lt!616665))))

(assert (=> b!1654687 (= lt!616662 (list!7277 lt!616655))))

(declare-fun lt!616666 () BalanceConc!12124)

(assert (=> b!1654687 (= lt!616664 (list!7277 lt!616666))))

(declare-fun charsOf!1870 (Token!6008) BalanceConc!12124)

(assert (=> b!1654687 (= lt!616666 (charsOf!1870 (h!23671 tokens!457)))))

(declare-fun lt!616653 () tuple2!17966)

(assert (=> b!1654687 (= lt!616653 (lex!1334 thiss!17113 rules!1846 lt!616655))))

(declare-fun lt!616676 () BalanceConc!12126)

(assert (=> b!1654687 (= lt!616655 (print!1381 thiss!17113 lt!616676))))

(declare-fun seqFromList!2182 (List!18340) BalanceConc!12126)

(assert (=> b!1654687 (= lt!616676 (seqFromList!2182 (t!151177 tokens!457)))))

(assert (=> b!1654687 (= lt!616665 (print!1381 thiss!17113 (seqFromList!2182 tokens!457)))))

(declare-fun b!1654688 () Bool)

(declare-fun maxPrefixZipper!348 (LexerInterface!2850 List!18339 List!18338) Option!3484)

(assert (=> b!1654688 (= e!1061066 (= (h!23671 tokens!457) (_1!10384 (get!5328 (maxPrefixZipper!348 thiss!17113 rules!1846 lt!616675)))))))

(declare-fun b!1654689 () Bool)

(declare-fun res!741902 () Bool)

(assert (=> b!1654689 (=> (not res!741902) (not e!1061065))))

(declare-fun rulesProduceEachTokenIndividuallyList!1052 (LexerInterface!2850 List!18339 List!18340) Bool)

(assert (=> b!1654689 (= res!741902 (rulesProduceEachTokenIndividuallyList!1052 thiss!17113 rules!1846 tokens!457))))

(declare-fun b!1654690 () Bool)

(declare-fun res!741913 () Bool)

(assert (=> b!1654690 (=> res!741913 e!1061053)))

(assert (=> b!1654690 (= res!741913 (prefixMatch!466 lt!616658 (++!4951 lt!616664 lt!616660)))))

(declare-fun b!1654691 () Bool)

(declare-fun res!741915 () Bool)

(assert (=> b!1654691 (=> (not res!741915) (not e!1061065))))

(declare-fun rulesInvariant!2519 (LexerInterface!2850 List!18339) Bool)

(assert (=> b!1654691 (= res!741915 (rulesInvariant!2519 thiss!17113 rules!1846))))

(declare-fun b!1654692 () Bool)

(declare-fun e!1061051 () Bool)

(declare-fun tp!478463 () Bool)

(assert (=> b!1654692 (= e!1061051 (and e!1061063 tp!478463))))

(declare-fun b!1654693 () Bool)

(declare-fun matchR!2042 (Regex!4549 List!18338) Bool)

(assert (=> b!1654693 (= e!1061057 (matchR!2042 (regex!3221 (rule!5089 (h!23671 tokens!457))) lt!616664))))

(declare-fun b!1654675 () Bool)

(declare-fun e!1061050 () Bool)

(assert (=> b!1654675 (= e!1061060 (not e!1061050))))

(declare-fun res!741906 () Bool)

(assert (=> b!1654675 (=> res!741906 e!1061050)))

(declare-fun lt!616654 () List!18340)

(assert (=> b!1654675 (= res!741906 (not (= lt!616654 (t!151177 tokens!457))))))

(declare-fun list!7278 (BalanceConc!12126) List!18340)

(assert (=> b!1654675 (= lt!616654 (list!7278 (_1!10385 lt!616653)))))

(declare-fun lt!616649 () Unit!30587)

(declare-fun theoremInvertabilityWhenTokenListSeparable!293 (LexerInterface!2850 List!18339 List!18340) Unit!30587)

(assert (=> b!1654675 (= lt!616649 (theoremInvertabilityWhenTokenListSeparable!293 thiss!17113 rules!1846 (t!151177 tokens!457)))))

(declare-fun isPrefix!1479 (List!18338 List!18338) Bool)

(assert (=> b!1654675 (isPrefix!1479 lt!616664 lt!616672)))

(declare-fun lt!616652 () Unit!30587)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1004 (List!18338 List!18338) Unit!30587)

(assert (=> b!1654675 (= lt!616652 (lemmaConcatTwoListThenFirstIsPrefix!1004 lt!616664 lt!616662))))

(declare-fun res!741898 () Bool)

(assert (=> start!159498 (=> (not res!741898) (not e!1061065))))

(assert (=> start!159498 (= res!741898 ((_ is Lexer!2848) thiss!17113))))

(assert (=> start!159498 e!1061065))

(assert (=> start!159498 true))

(assert (=> start!159498 e!1061051))

(assert (=> start!159498 e!1061068))

(declare-fun b!1654694 () Bool)

(assert (=> b!1654694 (= e!1061050 e!1061056)))

(declare-fun res!741907 () Bool)

(assert (=> b!1654694 (=> res!741907 e!1061056)))

(declare-fun lt!616673 () List!18340)

(declare-fun lt!616669 () List!18340)

(assert (=> b!1654694 (= res!741907 (or (not (= lt!616654 lt!616673)) (not (= lt!616673 lt!616669))))))

(assert (=> b!1654694 (= lt!616673 (list!7278 lt!616676))))

(assert (=> b!1654694 (= lt!616654 lt!616669)))

(declare-fun prepend!791 (BalanceConc!12126 Token!6008) BalanceConc!12126)

(assert (=> b!1654694 (= lt!616669 (list!7278 (prepend!791 (seqFromList!2182 (t!151177 (t!151177 tokens!457))) (h!23671 (t!151177 tokens!457)))))))

(declare-fun lt!616657 () Unit!30587)

(declare-fun seqFromListBHdTlConstructive!296 (Token!6008 List!18340 BalanceConc!12126) Unit!30587)

(assert (=> b!1654694 (= lt!616657 (seqFromListBHdTlConstructive!296 (h!23671 (t!151177 tokens!457)) (t!151177 (t!151177 tokens!457)) (_1!10385 lt!616653)))))

(declare-fun b!1654695 () Bool)

(declare-fun e!1061067 () Bool)

(assert (=> b!1654695 (= e!1061067 e!1061054)))

(declare-fun res!741896 () Bool)

(assert (=> b!1654695 (=> res!741896 e!1061054)))

(assert (=> b!1654695 (= res!741896 (prefixMatch!466 lt!616658 (++!4951 lt!616664 lt!616656)))))

(declare-fun lt!616674 () BalanceConc!12124)

(assert (=> b!1654695 (= lt!616656 (list!7277 lt!616674))))

(declare-fun b!1654696 () Bool)

(declare-fun res!741911 () Bool)

(assert (=> b!1654696 (=> (not res!741911) (not e!1061065))))

(declare-fun tokensListTwoByTwoPredicateSeparableList!543 (LexerInterface!2850 List!18340 List!18339) Bool)

(assert (=> b!1654696 (= res!741911 (tokensListTwoByTwoPredicateSeparableList!543 thiss!17113 tokens!457 rules!1846))))

(declare-fun b!1654697 () Bool)

(declare-fun res!741895 () Bool)

(assert (=> b!1654697 (=> (not res!741895) (not e!1061072))))

(assert (=> b!1654697 (= res!741895 (= lt!616656 (Cons!18268 (head!3665 (originalCharacters!4035 (h!23671 (t!151177 tokens!457)))) Nil!18268)))))

(declare-fun tp!478458 () Bool)

(declare-fun b!1654698 () Bool)

(declare-fun inv!21 (TokenValue!3311) Bool)

(assert (=> b!1654698 (= e!1061058 (and (inv!21 (value!101471 (h!23671 tokens!457))) e!1061071 tp!478458))))

(declare-fun b!1654699 () Bool)

(declare-fun res!741908 () Bool)

(assert (=> b!1654699 (=> (not res!741908) (not e!1061065))))

(declare-fun isEmpty!11307 (List!18339) Bool)

(assert (=> b!1654699 (= res!741908 (not (isEmpty!11307 rules!1846)))))

(declare-fun b!1654700 () Bool)

(assert (=> b!1654700 (= e!1061059 e!1061067)))

(declare-fun res!741914 () Bool)

(assert (=> b!1654700 (=> res!741914 e!1061067)))

(declare-fun prefixMatchZipperSequence!637 (Regex!4549 BalanceConc!12124) Bool)

(declare-fun ++!4952 (BalanceConc!12124 BalanceConc!12124) BalanceConc!12124)

(assert (=> b!1654700 (= res!741914 (prefixMatchZipperSequence!637 lt!616658 (++!4952 lt!616666 lt!616674)))))

(declare-fun singletonSeq!1715 (C!9272) BalanceConc!12124)

(declare-fun apply!4842 (BalanceConc!12124 Int) C!9272)

(assert (=> b!1654700 (= lt!616674 (singletonSeq!1715 (apply!4842 (charsOf!1870 (h!23671 (t!151177 tokens!457))) 0)))))

(declare-fun rulesRegex!605 (LexerInterface!2850 List!18339) Regex!4549)

(assert (=> b!1654700 (= lt!616658 (rulesRegex!605 thiss!17113 rules!1846))))

(assert (= (and start!159498 res!741898) b!1654699))

(assert (= (and b!1654699 res!741908) b!1654691))

(assert (= (and b!1654691 res!741915) b!1654689))

(assert (= (and b!1654689 res!741902) b!1654696))

(assert (= (and b!1654696 res!741911) b!1654685))

(assert (= (and b!1654685 res!741916) b!1654687))

(assert (= (and b!1654687 res!741904) b!1654675))

(assert (= (and b!1654675 (not res!741906)) b!1654694))

(assert (= (and b!1654694 (not res!741907)) b!1654679))

(assert (= (and b!1654679 (not res!741903)) b!1654673))

(assert (= (and b!1654673 (not res!741900)) b!1654686))

(assert (= (and b!1654686 (not res!741901)) b!1654678))

(assert (= (and b!1654678 (not res!741910)) b!1654677))

(assert (= (and b!1654677 (not res!741899)) b!1654700))

(assert (= (and b!1654700 (not res!741914)) b!1654695))

(assert (= (and b!1654695 (not res!741896)) b!1654670))

(assert (= (and b!1654670 res!741912) b!1654697))

(assert (= (and b!1654697 res!741895) b!1654682))

(assert (= (and b!1654670 (not res!741893)) b!1654681))

(assert (= (and b!1654681 res!741909) b!1654684))

(assert (= (and b!1654684 res!741894) b!1654693))

(assert (= (and b!1654681 (not res!741897)) b!1654690))

(assert (= (and b!1654690 (not res!741913)) b!1654671))

(assert (= (and b!1654671 (not res!741905)) b!1654688))

(assert (= b!1654676 b!1654674))

(assert (= b!1654692 b!1654676))

(assert (= (and start!159498 ((_ is Cons!18269) rules!1846)) b!1654692))

(assert (= b!1654683 b!1654672))

(assert (= b!1654698 b!1654683))

(assert (= b!1654680 b!1654698))

(assert (= (and start!159498 ((_ is Cons!18270) tokens!457)) b!1654680))

(declare-fun m!2007725 () Bool)

(assert (=> b!1654693 m!2007725))

(declare-fun m!2007727 () Bool)

(assert (=> b!1654679 m!2007727))

(declare-fun m!2007729 () Bool)

(assert (=> b!1654699 m!2007729))

(declare-fun m!2007731 () Bool)

(assert (=> b!1654688 m!2007731))

(assert (=> b!1654688 m!2007731))

(declare-fun m!2007733 () Bool)

(assert (=> b!1654688 m!2007733))

(declare-fun m!2007735 () Bool)

(assert (=> b!1654675 m!2007735))

(declare-fun m!2007737 () Bool)

(assert (=> b!1654675 m!2007737))

(declare-fun m!2007739 () Bool)

(assert (=> b!1654675 m!2007739))

(declare-fun m!2007741 () Bool)

(assert (=> b!1654675 m!2007741))

(declare-fun m!2007743 () Bool)

(assert (=> b!1654690 m!2007743))

(assert (=> b!1654690 m!2007743))

(declare-fun m!2007745 () Bool)

(assert (=> b!1654690 m!2007745))

(declare-fun m!2007747 () Bool)

(assert (=> b!1654682 m!2007747))

(declare-fun m!2007749 () Bool)

(assert (=> b!1654697 m!2007749))

(declare-fun m!2007751 () Bool)

(assert (=> b!1654673 m!2007751))

(declare-fun m!2007753 () Bool)

(assert (=> b!1654673 m!2007753))

(declare-fun m!2007755 () Bool)

(assert (=> b!1654673 m!2007755))

(declare-fun m!2007757 () Bool)

(assert (=> b!1654673 m!2007757))

(declare-fun m!2007759 () Bool)

(assert (=> b!1654673 m!2007759))

(declare-fun m!2007761 () Bool)

(assert (=> b!1654673 m!2007761))

(declare-fun m!2007763 () Bool)

(assert (=> b!1654686 m!2007763))

(declare-fun m!2007765 () Bool)

(assert (=> b!1654695 m!2007765))

(assert (=> b!1654695 m!2007765))

(declare-fun m!2007767 () Bool)

(assert (=> b!1654695 m!2007767))

(declare-fun m!2007769 () Bool)

(assert (=> b!1654695 m!2007769))

(declare-fun m!2007771 () Bool)

(assert (=> b!1654671 m!2007771))

(declare-fun m!2007773 () Bool)

(assert (=> b!1654671 m!2007773))

(declare-fun m!2007775 () Bool)

(assert (=> b!1654684 m!2007775))

(declare-fun m!2007777 () Bool)

(assert (=> b!1654694 m!2007777))

(declare-fun m!2007779 () Bool)

(assert (=> b!1654694 m!2007779))

(declare-fun m!2007781 () Bool)

(assert (=> b!1654694 m!2007781))

(declare-fun m!2007783 () Bool)

(assert (=> b!1654694 m!2007783))

(declare-fun m!2007785 () Bool)

(assert (=> b!1654694 m!2007785))

(assert (=> b!1654694 m!2007781))

(assert (=> b!1654694 m!2007783))

(declare-fun m!2007787 () Bool)

(assert (=> b!1654670 m!2007787))

(assert (=> b!1654670 m!2007787))

(declare-fun m!2007789 () Bool)

(assert (=> b!1654670 m!2007789))

(assert (=> b!1654670 m!2007789))

(declare-fun m!2007791 () Bool)

(assert (=> b!1654670 m!2007791))

(declare-fun m!2007793 () Bool)

(assert (=> b!1654670 m!2007793))

(declare-fun m!2007795 () Bool)

(assert (=> b!1654676 m!2007795))

(declare-fun m!2007797 () Bool)

(assert (=> b!1654676 m!2007797))

(declare-fun m!2007799 () Bool)

(assert (=> b!1654678 m!2007799))

(assert (=> b!1654678 m!2007799))

(declare-fun m!2007801 () Bool)

(assert (=> b!1654678 m!2007801))

(declare-fun m!2007803 () Bool)

(assert (=> b!1654678 m!2007803))

(declare-fun m!2007805 () Bool)

(assert (=> b!1654696 m!2007805))

(declare-fun m!2007807 () Bool)

(assert (=> b!1654700 m!2007807))

(declare-fun m!2007809 () Bool)

(assert (=> b!1654700 m!2007809))

(assert (=> b!1654700 m!2007809))

(declare-fun m!2007811 () Bool)

(assert (=> b!1654700 m!2007811))

(declare-fun m!2007813 () Bool)

(assert (=> b!1654700 m!2007813))

(declare-fun m!2007815 () Bool)

(assert (=> b!1654700 m!2007815))

(declare-fun m!2007817 () Bool)

(assert (=> b!1654700 m!2007817))

(assert (=> b!1654700 m!2007813))

(assert (=> b!1654700 m!2007817))

(declare-fun m!2007819 () Bool)

(assert (=> b!1654691 m!2007819))

(declare-fun m!2007821 () Bool)

(assert (=> b!1654683 m!2007821))

(declare-fun m!2007823 () Bool)

(assert (=> b!1654683 m!2007823))

(declare-fun m!2007825 () Bool)

(assert (=> b!1654689 m!2007825))

(declare-fun m!2007827 () Bool)

(assert (=> b!1654677 m!2007827))

(declare-fun m!2007829 () Bool)

(assert (=> b!1654677 m!2007829))

(declare-fun m!2007831 () Bool)

(assert (=> b!1654680 m!2007831))

(declare-fun m!2007833 () Bool)

(assert (=> b!1654681 m!2007833))

(declare-fun m!2007835 () Bool)

(assert (=> b!1654681 m!2007835))

(declare-fun m!2007837 () Bool)

(assert (=> b!1654681 m!2007837))

(declare-fun m!2007839 () Bool)

(assert (=> b!1654681 m!2007839))

(declare-fun m!2007841 () Bool)

(assert (=> b!1654681 m!2007841))

(assert (=> b!1654681 m!2007833))

(declare-fun m!2007843 () Bool)

(assert (=> b!1654681 m!2007843))

(declare-fun m!2007845 () Bool)

(assert (=> b!1654681 m!2007845))

(assert (=> b!1654681 m!2007839))

(declare-fun m!2007847 () Bool)

(assert (=> b!1654687 m!2007847))

(declare-fun m!2007849 () Bool)

(assert (=> b!1654687 m!2007849))

(declare-fun m!2007851 () Bool)

(assert (=> b!1654687 m!2007851))

(declare-fun m!2007853 () Bool)

(assert (=> b!1654687 m!2007853))

(declare-fun m!2007855 () Bool)

(assert (=> b!1654687 m!2007855))

(declare-fun m!2007857 () Bool)

(assert (=> b!1654687 m!2007857))

(declare-fun m!2007859 () Bool)

(assert (=> b!1654687 m!2007859))

(declare-fun m!2007861 () Bool)

(assert (=> b!1654687 m!2007861))

(assert (=> b!1654687 m!2007855))

(declare-fun m!2007863 () Bool)

(assert (=> b!1654687 m!2007863))

(declare-fun m!2007865 () Bool)

(assert (=> b!1654687 m!2007865))

(declare-fun m!2007867 () Bool)

(assert (=> b!1654698 m!2007867))

(check-sat (not b!1654700) (not b!1654684) (not b!1654693) (not b!1654691) (not b!1654683) (not b!1654699) (not b!1654692) (not b!1654675) (not b!1654690) b_and!117479 (not b!1654694) (not b!1654682) (not b!1654686) (not b!1654688) (not b!1654676) (not b!1654678) (not b!1654696) (not b!1654698) (not b!1654679) (not b!1654673) (not b!1654681) (not b_next!45687) (not b!1654697) b_and!117477 (not b!1654670) (not b!1654680) (not b_next!45693) b_and!117481 (not b!1654687) (not b!1654689) (not b_next!45689) b_and!117483 (not b!1654677) (not b!1654671) (not b_next!45691) (not b!1654695))
(check-sat (not b_next!45687) b_and!117477 b_and!117479 (not b_next!45691) (not b_next!45693) b_and!117481 (not b_next!45689) b_and!117483)
(get-model)

(declare-fun d!499111 () Bool)

(assert (=> d!499111 (= (isEmpty!11306 (_2!10384 lt!616651)) ((_ is Nil!18268) (_2!10384 lt!616651)))))

(assert (=> b!1654684 d!499111))

(declare-fun d!499115 () Bool)

(assert (=> d!499115 (= (head!3665 lt!616662) (h!23669 lt!616662))))

(assert (=> b!1654682 d!499115))

(declare-fun d!499117 () Bool)

(assert (=> d!499117 (= (inv!23619 (tag!3503 (rule!5089 (h!23671 tokens!457)))) (= (mod (str.len (value!101470 (tag!3503 (rule!5089 (h!23671 tokens!457))))) 2) 0))))

(assert (=> b!1654683 d!499117))

(declare-fun d!499119 () Bool)

(declare-fun res!741965 () Bool)

(declare-fun e!1061099 () Bool)

(assert (=> d!499119 (=> (not res!741965) (not e!1061099))))

(declare-fun semiInverseModEq!1247 (Int Int) Bool)

(assert (=> d!499119 (= res!741965 (semiInverseModEq!1247 (toChars!4531 (transformation!3221 (rule!5089 (h!23671 tokens!457)))) (toValue!4672 (transformation!3221 (rule!5089 (h!23671 tokens!457))))))))

(assert (=> d!499119 (= (inv!23622 (transformation!3221 (rule!5089 (h!23671 tokens!457)))) e!1061099)))

(declare-fun b!1654760 () Bool)

(declare-fun equivClasses!1188 (Int Int) Bool)

(assert (=> b!1654760 (= e!1061099 (equivClasses!1188 (toChars!4531 (transformation!3221 (rule!5089 (h!23671 tokens!457)))) (toValue!4672 (transformation!3221 (rule!5089 (h!23671 tokens!457))))))))

(assert (= (and d!499119 res!741965) b!1654760))

(declare-fun m!2007977 () Bool)

(assert (=> d!499119 m!2007977))

(declare-fun m!2007979 () Bool)

(assert (=> b!1654760 m!2007979))

(assert (=> b!1654683 d!499119))

(declare-fun b!1654803 () Bool)

(declare-fun e!1061126 () Bool)

(declare-fun e!1061125 () Bool)

(assert (=> b!1654803 (= e!1061126 e!1061125)))

(declare-fun res!741999 () Bool)

(assert (=> b!1654803 (=> (not res!741999) (not e!1061125))))

(declare-fun lt!616743 () Option!3484)

(assert (=> b!1654803 (= res!741999 (isDefined!2839 lt!616743))))

(declare-fun b!1654804 () Bool)

(declare-fun res!742002 () Bool)

(assert (=> b!1654804 (=> (not res!742002) (not e!1061125))))

(declare-fun apply!4844 (TokenValueInjection!6282 BalanceConc!12124) TokenValue!3311)

(assert (=> b!1654804 (= res!742002 (= (value!101471 (_1!10384 (get!5328 lt!616743))) (apply!4844 (transformation!3221 (rule!5089 (_1!10384 (get!5328 lt!616743)))) (seqFromList!2181 (originalCharacters!4035 (_1!10384 (get!5328 lt!616743)))))))))

(declare-fun b!1654805 () Bool)

(declare-fun contains!3186 (List!18339 Rule!6242) Bool)

(assert (=> b!1654805 (= e!1061125 (contains!3186 rules!1846 (rule!5089 (_1!10384 (get!5328 lt!616743)))))))

(declare-fun b!1654806 () Bool)

(declare-fun e!1061124 () Option!3484)

(declare-fun lt!616741 () Option!3484)

(declare-fun lt!616742 () Option!3484)

(assert (=> b!1654806 (= e!1061124 (ite (and ((_ is None!3483) lt!616741) ((_ is None!3483) lt!616742)) None!3483 (ite ((_ is None!3483) lt!616742) lt!616741 (ite ((_ is None!3483) lt!616741) lt!616742 (ite (>= (size!14536 (_1!10384 (v!24674 lt!616741))) (size!14536 (_1!10384 (v!24674 lt!616742)))) lt!616741 lt!616742)))))))

(declare-fun call!106090 () Option!3484)

(assert (=> b!1654806 (= lt!616741 call!106090)))

(assert (=> b!1654806 (= lt!616742 (maxPrefix!1412 thiss!17113 (t!151176 rules!1846) (originalCharacters!4035 (h!23671 tokens!457))))))

(declare-fun b!1654807 () Bool)

(declare-fun res!742004 () Bool)

(assert (=> b!1654807 (=> (not res!742004) (not e!1061125))))

(declare-fun size!14540 (List!18338) Int)

(assert (=> b!1654807 (= res!742004 (< (size!14540 (_2!10384 (get!5328 lt!616743))) (size!14540 (originalCharacters!4035 (h!23671 tokens!457)))))))

(declare-fun d!499129 () Bool)

(assert (=> d!499129 e!1061126))

(declare-fun res!742000 () Bool)

(assert (=> d!499129 (=> res!742000 e!1061126)))

(declare-fun isEmpty!11311 (Option!3484) Bool)

(assert (=> d!499129 (= res!742000 (isEmpty!11311 lt!616743))))

(assert (=> d!499129 (= lt!616743 e!1061124)))

(declare-fun c!269164 () Bool)

(assert (=> d!499129 (= c!269164 (and ((_ is Cons!18269) rules!1846) ((_ is Nil!18269) (t!151176 rules!1846))))))

(declare-fun lt!616740 () Unit!30587)

(declare-fun lt!616744 () Unit!30587)

(assert (=> d!499129 (= lt!616740 lt!616744)))

(assert (=> d!499129 (isPrefix!1479 (originalCharacters!4035 (h!23671 tokens!457)) (originalCharacters!4035 (h!23671 tokens!457)))))

(declare-fun lemmaIsPrefixRefl!1002 (List!18338 List!18338) Unit!30587)

(assert (=> d!499129 (= lt!616744 (lemmaIsPrefixRefl!1002 (originalCharacters!4035 (h!23671 tokens!457)) (originalCharacters!4035 (h!23671 tokens!457))))))

(declare-fun rulesValidInductive!1024 (LexerInterface!2850 List!18339) Bool)

(assert (=> d!499129 (rulesValidInductive!1024 thiss!17113 rules!1846)))

(assert (=> d!499129 (= (maxPrefix!1412 thiss!17113 rules!1846 (originalCharacters!4035 (h!23671 tokens!457))) lt!616743)))

(declare-fun b!1654808 () Bool)

(declare-fun res!742003 () Bool)

(assert (=> b!1654808 (=> (not res!742003) (not e!1061125))))

(assert (=> b!1654808 (= res!742003 (matchR!2042 (regex!3221 (rule!5089 (_1!10384 (get!5328 lt!616743)))) (list!7277 (charsOf!1870 (_1!10384 (get!5328 lt!616743))))))))

(declare-fun b!1654809 () Bool)

(assert (=> b!1654809 (= e!1061124 call!106090)))

(declare-fun b!1654810 () Bool)

(declare-fun res!741998 () Bool)

(assert (=> b!1654810 (=> (not res!741998) (not e!1061125))))

(assert (=> b!1654810 (= res!741998 (= (list!7277 (charsOf!1870 (_1!10384 (get!5328 lt!616743)))) (originalCharacters!4035 (_1!10384 (get!5328 lt!616743)))))))

(declare-fun bm!106085 () Bool)

(declare-fun maxPrefixOneRule!817 (LexerInterface!2850 Rule!6242 List!18338) Option!3484)

(assert (=> bm!106085 (= call!106090 (maxPrefixOneRule!817 thiss!17113 (h!23670 rules!1846) (originalCharacters!4035 (h!23671 tokens!457))))))

(declare-fun b!1654811 () Bool)

(declare-fun res!742001 () Bool)

(assert (=> b!1654811 (=> (not res!742001) (not e!1061125))))

(assert (=> b!1654811 (= res!742001 (= (++!4951 (list!7277 (charsOf!1870 (_1!10384 (get!5328 lt!616743)))) (_2!10384 (get!5328 lt!616743))) (originalCharacters!4035 (h!23671 tokens!457))))))

(assert (= (and d!499129 c!269164) b!1654809))

(assert (= (and d!499129 (not c!269164)) b!1654806))

(assert (= (or b!1654809 b!1654806) bm!106085))

(assert (= (and d!499129 (not res!742000)) b!1654803))

(assert (= (and b!1654803 res!741999) b!1654810))

(assert (= (and b!1654810 res!741998) b!1654807))

(assert (= (and b!1654807 res!742004) b!1654811))

(assert (= (and b!1654811 res!742001) b!1654804))

(assert (= (and b!1654804 res!742002) b!1654808))

(assert (= (and b!1654808 res!742003) b!1654805))

(declare-fun m!2008025 () Bool)

(assert (=> b!1654803 m!2008025))

(declare-fun m!2008027 () Bool)

(assert (=> bm!106085 m!2008027))

(declare-fun m!2008029 () Bool)

(assert (=> b!1654810 m!2008029))

(declare-fun m!2008031 () Bool)

(assert (=> b!1654810 m!2008031))

(assert (=> b!1654810 m!2008031))

(declare-fun m!2008033 () Bool)

(assert (=> b!1654810 m!2008033))

(assert (=> b!1654808 m!2008029))

(assert (=> b!1654808 m!2008031))

(assert (=> b!1654808 m!2008031))

(assert (=> b!1654808 m!2008033))

(assert (=> b!1654808 m!2008033))

(declare-fun m!2008035 () Bool)

(assert (=> b!1654808 m!2008035))

(declare-fun m!2008037 () Bool)

(assert (=> d!499129 m!2008037))

(declare-fun m!2008039 () Bool)

(assert (=> d!499129 m!2008039))

(declare-fun m!2008041 () Bool)

(assert (=> d!499129 m!2008041))

(declare-fun m!2008043 () Bool)

(assert (=> d!499129 m!2008043))

(assert (=> b!1654807 m!2008029))

(declare-fun m!2008045 () Bool)

(assert (=> b!1654807 m!2008045))

(declare-fun m!2008047 () Bool)

(assert (=> b!1654807 m!2008047))

(declare-fun m!2008049 () Bool)

(assert (=> b!1654806 m!2008049))

(assert (=> b!1654811 m!2008029))

(assert (=> b!1654811 m!2008031))

(assert (=> b!1654811 m!2008031))

(assert (=> b!1654811 m!2008033))

(assert (=> b!1654811 m!2008033))

(declare-fun m!2008051 () Bool)

(assert (=> b!1654811 m!2008051))

(assert (=> b!1654805 m!2008029))

(declare-fun m!2008053 () Bool)

(assert (=> b!1654805 m!2008053))

(assert (=> b!1654804 m!2008029))

(declare-fun m!2008055 () Bool)

(assert (=> b!1654804 m!2008055))

(assert (=> b!1654804 m!2008055))

(declare-fun m!2008057 () Bool)

(assert (=> b!1654804 m!2008057))

(assert (=> b!1654681 d!499129))

(declare-fun d!499141 () Bool)

(assert (=> d!499141 (= (isDefined!2839 lt!616670) (not (isEmpty!11311 lt!616670)))))

(declare-fun bs!396777 () Bool)

(assert (= bs!396777 d!499141))

(declare-fun m!2008059 () Bool)

(assert (=> bs!396777 m!2008059))

(assert (=> b!1654681 d!499141))

(declare-fun d!499143 () Bool)

(assert (=> d!499143 (= (isDefined!2839 (maxPrefix!1412 thiss!17113 rules!1846 (originalCharacters!4035 (h!23671 tokens!457)))) (not (isEmpty!11311 (maxPrefix!1412 thiss!17113 rules!1846 (originalCharacters!4035 (h!23671 tokens!457))))))))

(declare-fun bs!396778 () Bool)

(assert (= bs!396778 d!499143))

(assert (=> bs!396778 m!2007839))

(declare-fun m!2008061 () Bool)

(assert (=> bs!396778 m!2008061))

(assert (=> b!1654681 d!499143))

(declare-fun lt!616751 () List!18338)

(declare-fun e!1061132 () Bool)

(declare-fun b!1654823 () Bool)

(assert (=> b!1654823 (= e!1061132 (or (not (= lt!616660 Nil!18268)) (= lt!616751 (originalCharacters!4035 (h!23671 tokens!457)))))))

(declare-fun b!1654822 () Bool)

(declare-fun res!742010 () Bool)

(assert (=> b!1654822 (=> (not res!742010) (not e!1061132))))

(assert (=> b!1654822 (= res!742010 (= (size!14540 lt!616751) (+ (size!14540 (originalCharacters!4035 (h!23671 tokens!457))) (size!14540 lt!616660))))))

(declare-fun b!1654820 () Bool)

(declare-fun e!1061131 () List!18338)

(assert (=> b!1654820 (= e!1061131 lt!616660)))

(declare-fun b!1654821 () Bool)

(assert (=> b!1654821 (= e!1061131 (Cons!18268 (h!23669 (originalCharacters!4035 (h!23671 tokens!457))) (++!4951 (t!151175 (originalCharacters!4035 (h!23671 tokens!457))) lt!616660)))))

(declare-fun d!499145 () Bool)

(assert (=> d!499145 e!1061132))

(declare-fun res!742009 () Bool)

(assert (=> d!499145 (=> (not res!742009) (not e!1061132))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!2541 (List!18338) (InoxSet C!9272))

(assert (=> d!499145 (= res!742009 (= (content!2541 lt!616751) ((_ map or) (content!2541 (originalCharacters!4035 (h!23671 tokens!457))) (content!2541 lt!616660))))))

(assert (=> d!499145 (= lt!616751 e!1061131)))

(declare-fun c!269167 () Bool)

(assert (=> d!499145 (= c!269167 ((_ is Nil!18268) (originalCharacters!4035 (h!23671 tokens!457))))))

(assert (=> d!499145 (= (++!4951 (originalCharacters!4035 (h!23671 tokens!457)) lt!616660) lt!616751)))

(assert (= (and d!499145 c!269167) b!1654820))

(assert (= (and d!499145 (not c!269167)) b!1654821))

(assert (= (and d!499145 res!742009) b!1654822))

(assert (= (and b!1654822 res!742010) b!1654823))

(declare-fun m!2008079 () Bool)

(assert (=> b!1654822 m!2008079))

(assert (=> b!1654822 m!2008047))

(declare-fun m!2008081 () Bool)

(assert (=> b!1654822 m!2008081))

(declare-fun m!2008083 () Bool)

(assert (=> b!1654821 m!2008083))

(declare-fun m!2008085 () Bool)

(assert (=> d!499145 m!2008085))

(declare-fun m!2008087 () Bool)

(assert (=> d!499145 m!2008087))

(declare-fun m!2008089 () Bool)

(assert (=> d!499145 m!2008089))

(assert (=> b!1654681 d!499145))

(declare-fun d!499153 () Bool)

(declare-fun c!269170 () Bool)

(assert (=> d!499153 (= c!269170 (isEmpty!11306 (++!4951 (originalCharacters!4035 (h!23671 tokens!457)) lt!616660)))))

(declare-fun e!1061135 () Bool)

(assert (=> d!499153 (= (prefixMatch!466 lt!616658 (++!4951 (originalCharacters!4035 (h!23671 tokens!457)) lt!616660)) e!1061135)))

(declare-fun b!1654828 () Bool)

(declare-fun lostCause!466 (Regex!4549) Bool)

(assert (=> b!1654828 (= e!1061135 (not (lostCause!466 lt!616658)))))

(declare-fun b!1654829 () Bool)

(declare-fun derivativeStep!1116 (Regex!4549 C!9272) Regex!4549)

(declare-fun tail!2456 (List!18338) List!18338)

(assert (=> b!1654829 (= e!1061135 (prefixMatch!466 (derivativeStep!1116 lt!616658 (head!3665 (++!4951 (originalCharacters!4035 (h!23671 tokens!457)) lt!616660))) (tail!2456 (++!4951 (originalCharacters!4035 (h!23671 tokens!457)) lt!616660))))))

(assert (= (and d!499153 c!269170) b!1654828))

(assert (= (and d!499153 (not c!269170)) b!1654829))

(assert (=> d!499153 m!2007833))

(declare-fun m!2008091 () Bool)

(assert (=> d!499153 m!2008091))

(declare-fun m!2008093 () Bool)

(assert (=> b!1654828 m!2008093))

(assert (=> b!1654829 m!2007833))

(declare-fun m!2008095 () Bool)

(assert (=> b!1654829 m!2008095))

(assert (=> b!1654829 m!2008095))

(declare-fun m!2008097 () Bool)

(assert (=> b!1654829 m!2008097))

(assert (=> b!1654829 m!2007833))

(declare-fun m!2008099 () Bool)

(assert (=> b!1654829 m!2008099))

(assert (=> b!1654829 m!2008097))

(assert (=> b!1654829 m!2008099))

(declare-fun m!2008101 () Bool)

(assert (=> b!1654829 m!2008101))

(assert (=> b!1654681 d!499153))

(declare-fun d!499155 () Bool)

(assert (=> d!499155 (= (get!5328 lt!616670) (v!24674 lt!616670))))

(assert (=> b!1654681 d!499155))

(declare-fun b!1654830 () Bool)

(declare-fun e!1061138 () Bool)

(declare-fun e!1061137 () Bool)

(assert (=> b!1654830 (= e!1061138 e!1061137)))

(declare-fun res!742012 () Bool)

(assert (=> b!1654830 (=> (not res!742012) (not e!1061137))))

(declare-fun lt!616755 () Option!3484)

(assert (=> b!1654830 (= res!742012 (isDefined!2839 lt!616755))))

(declare-fun b!1654831 () Bool)

(declare-fun res!742015 () Bool)

(assert (=> b!1654831 (=> (not res!742015) (not e!1061137))))

(assert (=> b!1654831 (= res!742015 (= (value!101471 (_1!10384 (get!5328 lt!616755))) (apply!4844 (transformation!3221 (rule!5089 (_1!10384 (get!5328 lt!616755)))) (seqFromList!2181 (originalCharacters!4035 (_1!10384 (get!5328 lt!616755)))))))))

(declare-fun b!1654832 () Bool)

(assert (=> b!1654832 (= e!1061137 (contains!3186 rules!1846 (rule!5089 (_1!10384 (get!5328 lt!616755)))))))

(declare-fun b!1654833 () Bool)

(declare-fun e!1061136 () Option!3484)

(declare-fun lt!616753 () Option!3484)

(declare-fun lt!616754 () Option!3484)

(assert (=> b!1654833 (= e!1061136 (ite (and ((_ is None!3483) lt!616753) ((_ is None!3483) lt!616754)) None!3483 (ite ((_ is None!3483) lt!616754) lt!616753 (ite ((_ is None!3483) lt!616753) lt!616754 (ite (>= (size!14536 (_1!10384 (v!24674 lt!616753))) (size!14536 (_1!10384 (v!24674 lt!616754)))) lt!616753 lt!616754)))))))

(declare-fun call!106091 () Option!3484)

(assert (=> b!1654833 (= lt!616753 call!106091)))

(assert (=> b!1654833 (= lt!616754 (maxPrefix!1412 thiss!17113 (t!151176 rules!1846) lt!616664))))

(declare-fun b!1654834 () Bool)

(declare-fun res!742017 () Bool)

(assert (=> b!1654834 (=> (not res!742017) (not e!1061137))))

(assert (=> b!1654834 (= res!742017 (< (size!14540 (_2!10384 (get!5328 lt!616755))) (size!14540 lt!616664)))))

(declare-fun d!499157 () Bool)

(assert (=> d!499157 e!1061138))

(declare-fun res!742013 () Bool)

(assert (=> d!499157 (=> res!742013 e!1061138)))

(assert (=> d!499157 (= res!742013 (isEmpty!11311 lt!616755))))

(assert (=> d!499157 (= lt!616755 e!1061136)))

(declare-fun c!269171 () Bool)

(assert (=> d!499157 (= c!269171 (and ((_ is Cons!18269) rules!1846) ((_ is Nil!18269) (t!151176 rules!1846))))))

(declare-fun lt!616752 () Unit!30587)

(declare-fun lt!616756 () Unit!30587)

(assert (=> d!499157 (= lt!616752 lt!616756)))

(assert (=> d!499157 (isPrefix!1479 lt!616664 lt!616664)))

(assert (=> d!499157 (= lt!616756 (lemmaIsPrefixRefl!1002 lt!616664 lt!616664))))

(assert (=> d!499157 (rulesValidInductive!1024 thiss!17113 rules!1846)))

(assert (=> d!499157 (= (maxPrefix!1412 thiss!17113 rules!1846 lt!616664) lt!616755)))

(declare-fun b!1654835 () Bool)

(declare-fun res!742016 () Bool)

(assert (=> b!1654835 (=> (not res!742016) (not e!1061137))))

(assert (=> b!1654835 (= res!742016 (matchR!2042 (regex!3221 (rule!5089 (_1!10384 (get!5328 lt!616755)))) (list!7277 (charsOf!1870 (_1!10384 (get!5328 lt!616755))))))))

(declare-fun b!1654836 () Bool)

(assert (=> b!1654836 (= e!1061136 call!106091)))

(declare-fun b!1654837 () Bool)

(declare-fun res!742011 () Bool)

(assert (=> b!1654837 (=> (not res!742011) (not e!1061137))))

(assert (=> b!1654837 (= res!742011 (= (list!7277 (charsOf!1870 (_1!10384 (get!5328 lt!616755)))) (originalCharacters!4035 (_1!10384 (get!5328 lt!616755)))))))

(declare-fun bm!106086 () Bool)

(assert (=> bm!106086 (= call!106091 (maxPrefixOneRule!817 thiss!17113 (h!23670 rules!1846) lt!616664))))

(declare-fun b!1654838 () Bool)

(declare-fun res!742014 () Bool)

(assert (=> b!1654838 (=> (not res!742014) (not e!1061137))))

(assert (=> b!1654838 (= res!742014 (= (++!4951 (list!7277 (charsOf!1870 (_1!10384 (get!5328 lt!616755)))) (_2!10384 (get!5328 lt!616755))) lt!616664))))

(assert (= (and d!499157 c!269171) b!1654836))

(assert (= (and d!499157 (not c!269171)) b!1654833))

(assert (= (or b!1654836 b!1654833) bm!106086))

(assert (= (and d!499157 (not res!742013)) b!1654830))

(assert (= (and b!1654830 res!742012) b!1654837))

(assert (= (and b!1654837 res!742011) b!1654834))

(assert (= (and b!1654834 res!742017) b!1654838))

(assert (= (and b!1654838 res!742014) b!1654831))

(assert (= (and b!1654831 res!742015) b!1654835))

(assert (= (and b!1654835 res!742016) b!1654832))

(declare-fun m!2008103 () Bool)

(assert (=> b!1654830 m!2008103))

(declare-fun m!2008105 () Bool)

(assert (=> bm!106086 m!2008105))

(declare-fun m!2008107 () Bool)

(assert (=> b!1654837 m!2008107))

(declare-fun m!2008109 () Bool)

(assert (=> b!1654837 m!2008109))

(assert (=> b!1654837 m!2008109))

(declare-fun m!2008111 () Bool)

(assert (=> b!1654837 m!2008111))

(assert (=> b!1654835 m!2008107))

(assert (=> b!1654835 m!2008109))

(assert (=> b!1654835 m!2008109))

(assert (=> b!1654835 m!2008111))

(assert (=> b!1654835 m!2008111))

(declare-fun m!2008113 () Bool)

(assert (=> b!1654835 m!2008113))

(declare-fun m!2008115 () Bool)

(assert (=> d!499157 m!2008115))

(declare-fun m!2008117 () Bool)

(assert (=> d!499157 m!2008117))

(declare-fun m!2008119 () Bool)

(assert (=> d!499157 m!2008119))

(assert (=> d!499157 m!2008043))

(assert (=> b!1654834 m!2008107))

(declare-fun m!2008121 () Bool)

(assert (=> b!1654834 m!2008121))

(declare-fun m!2008123 () Bool)

(assert (=> b!1654834 m!2008123))

(declare-fun m!2008125 () Bool)

(assert (=> b!1654833 m!2008125))

(assert (=> b!1654838 m!2008107))

(assert (=> b!1654838 m!2008109))

(assert (=> b!1654838 m!2008109))

(assert (=> b!1654838 m!2008111))

(assert (=> b!1654838 m!2008111))

(declare-fun m!2008127 () Bool)

(assert (=> b!1654838 m!2008127))

(assert (=> b!1654832 m!2008107))

(declare-fun m!2008129 () Bool)

(assert (=> b!1654832 m!2008129))

(assert (=> b!1654831 m!2008107))

(declare-fun m!2008131 () Bool)

(assert (=> b!1654831 m!2008131))

(assert (=> b!1654831 m!2008131))

(declare-fun m!2008133 () Bool)

(assert (=> b!1654831 m!2008133))

(assert (=> b!1654681 d!499157))

(declare-fun d!499159 () Bool)

(declare-fun res!742022 () Bool)

(declare-fun e!1061141 () Bool)

(assert (=> d!499159 (=> (not res!742022) (not e!1061141))))

(assert (=> d!499159 (= res!742022 (not (isEmpty!11306 (originalCharacters!4035 (h!23671 tokens!457)))))))

(assert (=> d!499159 (= (inv!23623 (h!23671 tokens!457)) e!1061141)))

(declare-fun b!1654843 () Bool)

(declare-fun res!742023 () Bool)

(assert (=> b!1654843 (=> (not res!742023) (not e!1061141))))

(declare-fun dynLambda!8193 (Int TokenValue!3311) BalanceConc!12124)

(assert (=> b!1654843 (= res!742023 (= (originalCharacters!4035 (h!23671 tokens!457)) (list!7277 (dynLambda!8193 (toChars!4531 (transformation!3221 (rule!5089 (h!23671 tokens!457)))) (value!101471 (h!23671 tokens!457))))))))

(declare-fun b!1654844 () Bool)

(assert (=> b!1654844 (= e!1061141 (= (size!14536 (h!23671 tokens!457)) (size!14540 (originalCharacters!4035 (h!23671 tokens!457)))))))

(assert (= (and d!499159 res!742022) b!1654843))

(assert (= (and b!1654843 res!742023) b!1654844))

(declare-fun b_lambda!51977 () Bool)

(assert (=> (not b_lambda!51977) (not b!1654843)))

(declare-fun t!151179 () Bool)

(declare-fun tb!94735 () Bool)

(assert (=> (and b!1654674 (= (toChars!4531 (transformation!3221 (h!23670 rules!1846))) (toChars!4531 (transformation!3221 (rule!5089 (h!23671 tokens!457))))) t!151179) tb!94735))

(declare-fun b!1654849 () Bool)

(declare-fun e!1061144 () Bool)

(declare-fun tp!478467 () Bool)

(declare-fun inv!23626 (Conc!6090) Bool)

(assert (=> b!1654849 (= e!1061144 (and (inv!23626 (c!269145 (dynLambda!8193 (toChars!4531 (transformation!3221 (rule!5089 (h!23671 tokens!457)))) (value!101471 (h!23671 tokens!457))))) tp!478467))))

(declare-fun result!114474 () Bool)

(declare-fun inv!23627 (BalanceConc!12124) Bool)

(assert (=> tb!94735 (= result!114474 (and (inv!23627 (dynLambda!8193 (toChars!4531 (transformation!3221 (rule!5089 (h!23671 tokens!457)))) (value!101471 (h!23671 tokens!457)))) e!1061144))))

(assert (= tb!94735 b!1654849))

(declare-fun m!2008135 () Bool)

(assert (=> b!1654849 m!2008135))

(declare-fun m!2008137 () Bool)

(assert (=> tb!94735 m!2008137))

(assert (=> b!1654843 t!151179))

(declare-fun b_and!117485 () Bool)

(assert (= b_and!117479 (and (=> t!151179 result!114474) b_and!117485)))

(declare-fun t!151181 () Bool)

(declare-fun tb!94737 () Bool)

(assert (=> (and b!1654672 (= (toChars!4531 (transformation!3221 (rule!5089 (h!23671 tokens!457)))) (toChars!4531 (transformation!3221 (rule!5089 (h!23671 tokens!457))))) t!151181) tb!94737))

(declare-fun result!114478 () Bool)

(assert (= result!114478 result!114474))

(assert (=> b!1654843 t!151181))

(declare-fun b_and!117487 () Bool)

(assert (= b_and!117483 (and (=> t!151181 result!114478) b_and!117487)))

(declare-fun m!2008139 () Bool)

(assert (=> d!499159 m!2008139))

(declare-fun m!2008141 () Bool)

(assert (=> b!1654843 m!2008141))

(assert (=> b!1654843 m!2008141))

(declare-fun m!2008143 () Bool)

(assert (=> b!1654843 m!2008143))

(assert (=> b!1654844 m!2008047))

(assert (=> b!1654680 d!499159))

(declare-fun d!499161 () Bool)

(declare-fun lt!616759 () Bool)

(declare-fun isEmpty!11312 (List!18340) Bool)

(assert (=> d!499161 (= lt!616759 (isEmpty!11312 (list!7278 (_1!10385 (lex!1334 thiss!17113 rules!1846 (seqFromList!2181 lt!616664))))))))

(declare-fun isEmpty!11313 (Conc!6091) Bool)

(assert (=> d!499161 (= lt!616759 (isEmpty!11313 (c!269147 (_1!10385 (lex!1334 thiss!17113 rules!1846 (seqFromList!2181 lt!616664))))))))

(assert (=> d!499161 (= (isEmpty!11305 (_1!10385 (lex!1334 thiss!17113 rules!1846 (seqFromList!2181 lt!616664)))) lt!616759)))

(declare-fun bs!396782 () Bool)

(assert (= bs!396782 d!499161))

(declare-fun m!2008145 () Bool)

(assert (=> bs!396782 m!2008145))

(assert (=> bs!396782 m!2008145))

(declare-fun m!2008147 () Bool)

(assert (=> bs!396782 m!2008147))

(declare-fun m!2008149 () Bool)

(assert (=> bs!396782 m!2008149))

(assert (=> b!1654678 d!499161))

(declare-fun b!1654884 () Bool)

(declare-fun e!1061166 () Bool)

(declare-fun lt!616769 () tuple2!17966)

(declare-datatypes ((tuple2!17970 0))(
  ( (tuple2!17971 (_1!10387 List!18340) (_2!10387 List!18338)) )
))
(declare-fun lexList!877 (LexerInterface!2850 List!18339 List!18338) tuple2!17970)

(assert (=> b!1654884 (= e!1061166 (= (list!7277 (_2!10385 lt!616769)) (_2!10387 (lexList!877 thiss!17113 rules!1846 (list!7277 (seqFromList!2181 lt!616664))))))))

(declare-fun b!1654885 () Bool)

(declare-fun e!1061167 () Bool)

(assert (=> b!1654885 (= e!1061167 (= (_2!10385 lt!616769) (seqFromList!2181 lt!616664)))))

(declare-fun b!1654886 () Bool)

(declare-fun res!742042 () Bool)

(assert (=> b!1654886 (=> (not res!742042) (not e!1061166))))

(assert (=> b!1654886 (= res!742042 (= (list!7278 (_1!10385 lt!616769)) (_1!10387 (lexList!877 thiss!17113 rules!1846 (list!7277 (seqFromList!2181 lt!616664))))))))

(declare-fun b!1654887 () Bool)

(declare-fun e!1061165 () Bool)

(assert (=> b!1654887 (= e!1061167 e!1061165)))

(declare-fun res!742043 () Bool)

(declare-fun size!14541 (BalanceConc!12124) Int)

(assert (=> b!1654887 (= res!742043 (< (size!14541 (_2!10385 lt!616769)) (size!14541 (seqFromList!2181 lt!616664))))))

(assert (=> b!1654887 (=> (not res!742043) (not e!1061165))))

(declare-fun d!499163 () Bool)

(assert (=> d!499163 e!1061166))

(declare-fun res!742041 () Bool)

(assert (=> d!499163 (=> (not res!742041) (not e!1061166))))

(assert (=> d!499163 (= res!742041 e!1061167)))

(declare-fun c!269178 () Bool)

(declare-fun size!14542 (BalanceConc!12126) Int)

(assert (=> d!499163 (= c!269178 (> (size!14542 (_1!10385 lt!616769)) 0))))

(declare-fun lexTailRecV2!600 (LexerInterface!2850 List!18339 BalanceConc!12124 BalanceConc!12124 BalanceConc!12124 BalanceConc!12126) tuple2!17966)

(assert (=> d!499163 (= lt!616769 (lexTailRecV2!600 thiss!17113 rules!1846 (seqFromList!2181 lt!616664) (BalanceConc!12125 Empty!6090) (seqFromList!2181 lt!616664) (BalanceConc!12127 Empty!6091)))))

(assert (=> d!499163 (= (lex!1334 thiss!17113 rules!1846 (seqFromList!2181 lt!616664)) lt!616769)))

(declare-fun b!1654888 () Bool)

(assert (=> b!1654888 (= e!1061165 (not (isEmpty!11305 (_1!10385 lt!616769))))))

(assert (= (and d!499163 c!269178) b!1654887))

(assert (= (and d!499163 (not c!269178)) b!1654885))

(assert (= (and b!1654887 res!742043) b!1654888))

(assert (= (and d!499163 res!742041) b!1654886))

(assert (= (and b!1654886 res!742042) b!1654884))

(declare-fun m!2008197 () Bool)

(assert (=> b!1654886 m!2008197))

(assert (=> b!1654886 m!2007799))

(declare-fun m!2008199 () Bool)

(assert (=> b!1654886 m!2008199))

(assert (=> b!1654886 m!2008199))

(declare-fun m!2008201 () Bool)

(assert (=> b!1654886 m!2008201))

(declare-fun m!2008203 () Bool)

(assert (=> b!1654888 m!2008203))

(declare-fun m!2008205 () Bool)

(assert (=> b!1654887 m!2008205))

(assert (=> b!1654887 m!2007799))

(declare-fun m!2008207 () Bool)

(assert (=> b!1654887 m!2008207))

(declare-fun m!2008209 () Bool)

(assert (=> d!499163 m!2008209))

(assert (=> d!499163 m!2007799))

(assert (=> d!499163 m!2007799))

(declare-fun m!2008211 () Bool)

(assert (=> d!499163 m!2008211))

(declare-fun m!2008213 () Bool)

(assert (=> b!1654884 m!2008213))

(assert (=> b!1654884 m!2007799))

(assert (=> b!1654884 m!2008199))

(assert (=> b!1654884 m!2008199))

(assert (=> b!1654884 m!2008201))

(assert (=> b!1654678 d!499163))

(declare-fun d!499181 () Bool)

(declare-fun fromListB!978 (List!18338) BalanceConc!12124)

(assert (=> d!499181 (= (seqFromList!2181 lt!616664) (fromListB!978 lt!616664))))

(declare-fun bs!396788 () Bool)

(assert (= bs!396788 d!499181))

(declare-fun m!2008215 () Bool)

(assert (=> bs!396788 m!2008215))

(assert (=> b!1654678 d!499181))

(declare-fun d!499183 () Bool)

(declare-fun e!1061170 () Bool)

(assert (=> d!499183 e!1061170))

(declare-fun res!742046 () Bool)

(assert (=> d!499183 (=> (not res!742046) (not e!1061170))))

(declare-fun lt!616772 () BalanceConc!12124)

(assert (=> d!499183 (= res!742046 (= (list!7277 lt!616772) (Cons!18268 (apply!4842 (charsOf!1870 (h!23671 (t!151177 tokens!457))) 0) Nil!18268)))))

(declare-fun singleton!745 (C!9272) BalanceConc!12124)

(assert (=> d!499183 (= lt!616772 (singleton!745 (apply!4842 (charsOf!1870 (h!23671 (t!151177 tokens!457))) 0)))))

(assert (=> d!499183 (= (singletonSeq!1715 (apply!4842 (charsOf!1870 (h!23671 (t!151177 tokens!457))) 0)) lt!616772)))

(declare-fun b!1654891 () Bool)

(declare-fun isBalanced!1872 (Conc!6090) Bool)

(assert (=> b!1654891 (= e!1061170 (isBalanced!1872 (c!269145 lt!616772)))))

(assert (= (and d!499183 res!742046) b!1654891))

(declare-fun m!2008217 () Bool)

(assert (=> d!499183 m!2008217))

(assert (=> d!499183 m!2007813))

(declare-fun m!2008219 () Bool)

(assert (=> d!499183 m!2008219))

(declare-fun m!2008221 () Bool)

(assert (=> b!1654891 m!2008221))

(assert (=> b!1654700 d!499183))

(declare-fun d!499185 () Bool)

(declare-fun lt!616796 () Bool)

(assert (=> d!499185 (= lt!616796 (prefixMatch!466 lt!616658 (list!7277 (++!4952 lt!616666 lt!616674))))))

(declare-datatypes ((List!18341 0))(
  ( (Nil!18271) (Cons!18271 (h!23672 Regex!4549) (t!151220 List!18341)) )
))
(declare-datatypes ((Context!1800 0))(
  ( (Context!1801 (exprs!1400 List!18341)) )
))
(declare-fun prefixMatchZipperSequence!638 ((InoxSet Context!1800) BalanceConc!12124 Int) Bool)

(declare-fun focus!206 (Regex!4549) (InoxSet Context!1800))

(assert (=> d!499185 (= lt!616796 (prefixMatchZipperSequence!638 (focus!206 lt!616658) (++!4952 lt!616666 lt!616674) 0))))

(declare-fun lt!616793 () Unit!30587)

(declare-fun lt!616802 () Unit!30587)

(assert (=> d!499185 (= lt!616793 lt!616802)))

(declare-fun lt!616800 () List!18338)

(declare-fun lt!616794 () (InoxSet Context!1800))

(declare-fun prefixMatchZipper!185 ((InoxSet Context!1800) List!18338) Bool)

(assert (=> d!499185 (= (prefixMatch!466 lt!616658 lt!616800) (prefixMatchZipper!185 lt!616794 lt!616800))))

(declare-datatypes ((List!18342 0))(
  ( (Nil!18272) (Cons!18272 (h!23673 Context!1800) (t!151221 List!18342)) )
))
(declare-fun lt!616801 () List!18342)

(declare-fun prefixMatchZipperRegexEquiv!185 ((InoxSet Context!1800) List!18342 Regex!4549 List!18338) Unit!30587)

(assert (=> d!499185 (= lt!616802 (prefixMatchZipperRegexEquiv!185 lt!616794 lt!616801 lt!616658 lt!616800))))

(assert (=> d!499185 (= lt!616800 (list!7277 (++!4952 lt!616666 lt!616674)))))

(declare-fun toList!946 ((InoxSet Context!1800)) List!18342)

(assert (=> d!499185 (= lt!616801 (toList!946 (focus!206 lt!616658)))))

(assert (=> d!499185 (= lt!616794 (focus!206 lt!616658))))

(declare-fun lt!616798 () Unit!30587)

(declare-fun lt!616795 () Unit!30587)

(assert (=> d!499185 (= lt!616798 lt!616795)))

(declare-fun lt!616797 () Int)

(declare-fun lt!616799 () (InoxSet Context!1800))

(declare-fun dropList!683 (BalanceConc!12124 Int) List!18338)

(assert (=> d!499185 (= (prefixMatchZipper!185 lt!616799 (dropList!683 (++!4952 lt!616666 lt!616674) lt!616797)) (prefixMatchZipperSequence!638 lt!616799 (++!4952 lt!616666 lt!616674) lt!616797))))

(declare-fun lemmaprefixMatchZipperSequenceEquivalent!185 ((InoxSet Context!1800) BalanceConc!12124 Int) Unit!30587)

(assert (=> d!499185 (= lt!616795 (lemmaprefixMatchZipperSequenceEquivalent!185 lt!616799 (++!4952 lt!616666 lt!616674) lt!616797))))

(assert (=> d!499185 (= lt!616797 0)))

(assert (=> d!499185 (= lt!616799 (focus!206 lt!616658))))

(declare-fun validRegex!1813 (Regex!4549) Bool)

(assert (=> d!499185 (validRegex!1813 lt!616658)))

(assert (=> d!499185 (= (prefixMatchZipperSequence!637 lt!616658 (++!4952 lt!616666 lt!616674)) lt!616796)))

(declare-fun bs!396789 () Bool)

(assert (= bs!396789 d!499185))

(declare-fun m!2008223 () Bool)

(assert (=> bs!396789 m!2008223))

(declare-fun m!2008225 () Bool)

(assert (=> bs!396789 m!2008225))

(declare-fun m!2008227 () Bool)

(assert (=> bs!396789 m!2008227))

(declare-fun m!2008229 () Bool)

(assert (=> bs!396789 m!2008229))

(declare-fun m!2008231 () Bool)

(assert (=> bs!396789 m!2008231))

(declare-fun m!2008233 () Bool)

(assert (=> bs!396789 m!2008233))

(declare-fun m!2008235 () Bool)

(assert (=> bs!396789 m!2008235))

(declare-fun m!2008237 () Bool)

(assert (=> bs!396789 m!2008237))

(assert (=> bs!396789 m!2007809))

(assert (=> bs!396789 m!2008235))

(assert (=> bs!396789 m!2008227))

(declare-fun m!2008239 () Bool)

(assert (=> bs!396789 m!2008239))

(assert (=> bs!396789 m!2007809))

(declare-fun m!2008241 () Bool)

(assert (=> bs!396789 m!2008241))

(assert (=> bs!396789 m!2007809))

(assert (=> bs!396789 m!2008223))

(assert (=> bs!396789 m!2008227))

(assert (=> bs!396789 m!2007809))

(declare-fun m!2008243 () Bool)

(assert (=> bs!396789 m!2008243))

(declare-fun m!2008245 () Bool)

(assert (=> bs!396789 m!2008245))

(assert (=> bs!396789 m!2007809))

(declare-fun m!2008247 () Bool)

(assert (=> bs!396789 m!2008247))

(assert (=> b!1654700 d!499185))

(declare-fun d!499187 () Bool)

(declare-fun lt!616805 () C!9272)

(declare-fun apply!4846 (List!18338 Int) C!9272)

(assert (=> d!499187 (= lt!616805 (apply!4846 (list!7277 (charsOf!1870 (h!23671 (t!151177 tokens!457)))) 0))))

(declare-fun apply!4847 (Conc!6090 Int) C!9272)

(assert (=> d!499187 (= lt!616805 (apply!4847 (c!269145 (charsOf!1870 (h!23671 (t!151177 tokens!457)))) 0))))

(declare-fun e!1061173 () Bool)

(assert (=> d!499187 e!1061173))

(declare-fun res!742049 () Bool)

(assert (=> d!499187 (=> (not res!742049) (not e!1061173))))

(assert (=> d!499187 (= res!742049 (<= 0 0))))

(assert (=> d!499187 (= (apply!4842 (charsOf!1870 (h!23671 (t!151177 tokens!457))) 0) lt!616805)))

(declare-fun b!1654894 () Bool)

(assert (=> b!1654894 (= e!1061173 (< 0 (size!14541 (charsOf!1870 (h!23671 (t!151177 tokens!457))))))))

(assert (= (and d!499187 res!742049) b!1654894))

(assert (=> d!499187 m!2007817))

(declare-fun m!2008249 () Bool)

(assert (=> d!499187 m!2008249))

(assert (=> d!499187 m!2008249))

(declare-fun m!2008251 () Bool)

(assert (=> d!499187 m!2008251))

(declare-fun m!2008253 () Bool)

(assert (=> d!499187 m!2008253))

(assert (=> b!1654894 m!2007817))

(declare-fun m!2008255 () Bool)

(assert (=> b!1654894 m!2008255))

(assert (=> b!1654700 d!499187))

(declare-fun b!1654906 () Bool)

(declare-fun e!1061176 () Bool)

(declare-fun lt!616808 () BalanceConc!12124)

(assert (=> b!1654906 (= e!1061176 (= (list!7277 lt!616808) (++!4951 (list!7277 lt!616666) (list!7277 lt!616674))))))

(declare-fun d!499189 () Bool)

(assert (=> d!499189 e!1061176))

(declare-fun res!742059 () Bool)

(assert (=> d!499189 (=> (not res!742059) (not e!1061176))))

(declare-fun appendAssocInst!468 (Conc!6090 Conc!6090) Bool)

(assert (=> d!499189 (= res!742059 (appendAssocInst!468 (c!269145 lt!616666) (c!269145 lt!616674)))))

(declare-fun ++!4953 (Conc!6090 Conc!6090) Conc!6090)

(assert (=> d!499189 (= lt!616808 (BalanceConc!12125 (++!4953 (c!269145 lt!616666) (c!269145 lt!616674))))))

(assert (=> d!499189 (= (++!4952 lt!616666 lt!616674) lt!616808)))

(declare-fun b!1654903 () Bool)

(declare-fun res!742061 () Bool)

(assert (=> b!1654903 (=> (not res!742061) (not e!1061176))))

(assert (=> b!1654903 (= res!742061 (isBalanced!1872 (++!4953 (c!269145 lt!616666) (c!269145 lt!616674))))))

(declare-fun b!1654905 () Bool)

(declare-fun res!742060 () Bool)

(assert (=> b!1654905 (=> (not res!742060) (not e!1061176))))

(declare-fun height!948 (Conc!6090) Int)

(declare-fun max!0 (Int Int) Int)

(assert (=> b!1654905 (= res!742060 (>= (height!948 (++!4953 (c!269145 lt!616666) (c!269145 lt!616674))) (max!0 (height!948 (c!269145 lt!616666)) (height!948 (c!269145 lt!616674)))))))

(declare-fun b!1654904 () Bool)

(declare-fun res!742058 () Bool)

(assert (=> b!1654904 (=> (not res!742058) (not e!1061176))))

(assert (=> b!1654904 (= res!742058 (<= (height!948 (++!4953 (c!269145 lt!616666) (c!269145 lt!616674))) (+ (max!0 (height!948 (c!269145 lt!616666)) (height!948 (c!269145 lt!616674))) 1)))))

(assert (= (and d!499189 res!742059) b!1654903))

(assert (= (and b!1654903 res!742061) b!1654904))

(assert (= (and b!1654904 res!742058) b!1654905))

(assert (= (and b!1654905 res!742060) b!1654906))

(declare-fun m!2008257 () Bool)

(assert (=> d!499189 m!2008257))

(declare-fun m!2008259 () Bool)

(assert (=> d!499189 m!2008259))

(assert (=> b!1654903 m!2008259))

(assert (=> b!1654903 m!2008259))

(declare-fun m!2008261 () Bool)

(assert (=> b!1654903 m!2008261))

(declare-fun m!2008263 () Bool)

(assert (=> b!1654905 m!2008263))

(declare-fun m!2008265 () Bool)

(assert (=> b!1654905 m!2008265))

(declare-fun m!2008267 () Bool)

(assert (=> b!1654905 m!2008267))

(assert (=> b!1654905 m!2008265))

(assert (=> b!1654905 m!2008259))

(declare-fun m!2008269 () Bool)

(assert (=> b!1654905 m!2008269))

(assert (=> b!1654905 m!2008259))

(assert (=> b!1654905 m!2008263))

(assert (=> b!1654904 m!2008263))

(assert (=> b!1654904 m!2008265))

(assert (=> b!1654904 m!2008267))

(assert (=> b!1654904 m!2008265))

(assert (=> b!1654904 m!2008259))

(assert (=> b!1654904 m!2008269))

(assert (=> b!1654904 m!2008259))

(assert (=> b!1654904 m!2008263))

(declare-fun m!2008271 () Bool)

(assert (=> b!1654906 m!2008271))

(assert (=> b!1654906 m!2007849))

(assert (=> b!1654906 m!2007769))

(assert (=> b!1654906 m!2007849))

(assert (=> b!1654906 m!2007769))

(declare-fun m!2008273 () Bool)

(assert (=> b!1654906 m!2008273))

(assert (=> b!1654700 d!499189))

(declare-fun d!499191 () Bool)

(declare-fun lt!616811 () Unit!30587)

(declare-fun lemma!271 (List!18339 LexerInterface!2850 List!18339) Unit!30587)

(assert (=> d!499191 (= lt!616811 (lemma!271 rules!1846 thiss!17113 rules!1846))))

(declare-fun lambda!67749 () Int)

(declare-fun generalisedUnion!279 (List!18341) Regex!4549)

(declare-fun map!3761 (List!18339 Int) List!18341)

(assert (=> d!499191 (= (rulesRegex!605 thiss!17113 rules!1846) (generalisedUnion!279 (map!3761 rules!1846 lambda!67749)))))

(declare-fun bs!396790 () Bool)

(assert (= bs!396790 d!499191))

(declare-fun m!2008275 () Bool)

(assert (=> bs!396790 m!2008275))

(declare-fun m!2008277 () Bool)

(assert (=> bs!396790 m!2008277))

(assert (=> bs!396790 m!2008277))

(declare-fun m!2008279 () Bool)

(assert (=> bs!396790 m!2008279))

(assert (=> b!1654700 d!499191))

(declare-fun d!499193 () Bool)

(declare-fun lt!616814 () BalanceConc!12124)

(assert (=> d!499193 (= (list!7277 lt!616814) (originalCharacters!4035 (h!23671 (t!151177 tokens!457))))))

(assert (=> d!499193 (= lt!616814 (dynLambda!8193 (toChars!4531 (transformation!3221 (rule!5089 (h!23671 (t!151177 tokens!457))))) (value!101471 (h!23671 (t!151177 tokens!457)))))))

(assert (=> d!499193 (= (charsOf!1870 (h!23671 (t!151177 tokens!457))) lt!616814)))

(declare-fun b_lambda!51981 () Bool)

(assert (=> (not b_lambda!51981) (not d!499193)))

(declare-fun tb!94743 () Bool)

(declare-fun t!151188 () Bool)

(assert (=> (and b!1654674 (= (toChars!4531 (transformation!3221 (h!23670 rules!1846))) (toChars!4531 (transformation!3221 (rule!5089 (h!23671 (t!151177 tokens!457)))))) t!151188) tb!94743))

(declare-fun b!1654907 () Bool)

(declare-fun e!1061177 () Bool)

(declare-fun tp!478471 () Bool)

(assert (=> b!1654907 (= e!1061177 (and (inv!23626 (c!269145 (dynLambda!8193 (toChars!4531 (transformation!3221 (rule!5089 (h!23671 (t!151177 tokens!457))))) (value!101471 (h!23671 (t!151177 tokens!457)))))) tp!478471))))

(declare-fun result!114486 () Bool)

(assert (=> tb!94743 (= result!114486 (and (inv!23627 (dynLambda!8193 (toChars!4531 (transformation!3221 (rule!5089 (h!23671 (t!151177 tokens!457))))) (value!101471 (h!23671 (t!151177 tokens!457))))) e!1061177))))

(assert (= tb!94743 b!1654907))

(declare-fun m!2008281 () Bool)

(assert (=> b!1654907 m!2008281))

(declare-fun m!2008283 () Bool)

(assert (=> tb!94743 m!2008283))

(assert (=> d!499193 t!151188))

(declare-fun b_and!117493 () Bool)

(assert (= b_and!117485 (and (=> t!151188 result!114486) b_and!117493)))

(declare-fun t!151190 () Bool)

(declare-fun tb!94745 () Bool)

(assert (=> (and b!1654672 (= (toChars!4531 (transformation!3221 (rule!5089 (h!23671 tokens!457)))) (toChars!4531 (transformation!3221 (rule!5089 (h!23671 (t!151177 tokens!457)))))) t!151190) tb!94745))

(declare-fun result!114488 () Bool)

(assert (= result!114488 result!114486))

(assert (=> d!499193 t!151190))

(declare-fun b_and!117495 () Bool)

(assert (= b_and!117487 (and (=> t!151190 result!114488) b_and!117495)))

(declare-fun m!2008285 () Bool)

(assert (=> d!499193 m!2008285))

(declare-fun m!2008287 () Bool)

(assert (=> d!499193 m!2008287))

(assert (=> b!1654700 d!499193))

(declare-fun d!499195 () Bool)

(assert (=> d!499195 (= (separableTokensPredicate!790 thiss!17113 (h!23671 tokens!457) (h!23671 (t!151177 tokens!457)) rules!1846) (not (prefixMatchZipperSequence!637 (rulesRegex!605 thiss!17113 rules!1846) (++!4952 (charsOf!1870 (h!23671 tokens!457)) (singletonSeq!1715 (apply!4842 (charsOf!1870 (h!23671 (t!151177 tokens!457))) 0))))))))

(declare-fun bs!396791 () Bool)

(assert (= bs!396791 d!499195))

(assert (=> bs!396791 m!2007853))

(assert (=> bs!396791 m!2007815))

(declare-fun m!2008289 () Bool)

(assert (=> bs!396791 m!2008289))

(assert (=> bs!396791 m!2007817))

(assert (=> bs!396791 m!2007813))

(assert (=> bs!396791 m!2007813))

(assert (=> bs!396791 m!2007815))

(assert (=> bs!396791 m!2007807))

(assert (=> bs!396791 m!2008289))

(declare-fun m!2008291 () Bool)

(assert (=> bs!396791 m!2008291))

(assert (=> bs!396791 m!2007817))

(assert (=> bs!396791 m!2007807))

(assert (=> bs!396791 m!2007853))

(assert (=> b!1654679 d!499195))

(declare-fun b!1654918 () Bool)

(declare-fun res!742064 () Bool)

(declare-fun e!1061185 () Bool)

(assert (=> b!1654918 (=> res!742064 e!1061185)))

(assert (=> b!1654918 (= res!742064 (not ((_ is IntegerValue!9935) (value!101471 (h!23671 tokens!457)))))))

(declare-fun e!1061184 () Bool)

(assert (=> b!1654918 (= e!1061184 e!1061185)))

(declare-fun b!1654919 () Bool)

(declare-fun e!1061186 () Bool)

(assert (=> b!1654919 (= e!1061186 e!1061184)))

(declare-fun c!269187 () Bool)

(assert (=> b!1654919 (= c!269187 ((_ is IntegerValue!9934) (value!101471 (h!23671 tokens!457))))))

(declare-fun b!1654920 () Bool)

(declare-fun inv!16 (TokenValue!3311) Bool)

(assert (=> b!1654920 (= e!1061186 (inv!16 (value!101471 (h!23671 tokens!457))))))

(declare-fun b!1654922 () Bool)

(declare-fun inv!17 (TokenValue!3311) Bool)

(assert (=> b!1654922 (= e!1061184 (inv!17 (value!101471 (h!23671 tokens!457))))))

(declare-fun d!499197 () Bool)

(declare-fun c!269186 () Bool)

(assert (=> d!499197 (= c!269186 ((_ is IntegerValue!9933) (value!101471 (h!23671 tokens!457))))))

(assert (=> d!499197 (= (inv!21 (value!101471 (h!23671 tokens!457))) e!1061186)))

(declare-fun b!1654921 () Bool)

(declare-fun inv!15 (TokenValue!3311) Bool)

(assert (=> b!1654921 (= e!1061185 (inv!15 (value!101471 (h!23671 tokens!457))))))

(assert (= (and d!499197 c!269186) b!1654920))

(assert (= (and d!499197 (not c!269186)) b!1654919))

(assert (= (and b!1654919 c!269187) b!1654922))

(assert (= (and b!1654919 (not c!269187)) b!1654918))

(assert (= (and b!1654918 (not res!742064)) b!1654921))

(declare-fun m!2008293 () Bool)

(assert (=> b!1654920 m!2008293))

(declare-fun m!2008295 () Bool)

(assert (=> b!1654922 m!2008295))

(declare-fun m!2008297 () Bool)

(assert (=> b!1654921 m!2008297))

(assert (=> b!1654698 d!499197))

(declare-fun d!499199 () Bool)

(assert (=> d!499199 (= (isDefined!2839 lt!616667) (not (isEmpty!11311 lt!616667)))))

(declare-fun bs!396792 () Bool)

(assert (= bs!396792 d!499199))

(declare-fun m!2008299 () Bool)

(assert (=> bs!396792 m!2008299))

(assert (=> b!1654677 d!499199))

(declare-fun b!1654943 () Bool)

(declare-fun e!1061198 () Unit!30587)

(declare-fun Unit!30606 () Unit!30587)

(assert (=> b!1654943 (= e!1061198 Unit!30606)))

(declare-fun b!1654942 () Bool)

(declare-fun Unit!30607 () Unit!30587)

(assert (=> b!1654942 (= e!1061198 Unit!30607)))

(declare-fun lt!616936 () List!18338)

(assert (=> b!1654942 (= lt!616936 (++!4951 lt!616664 lt!616662))))

(declare-fun lt!616939 () Token!6008)

(declare-fun lt!616934 () Unit!30587)

(declare-fun lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!215 (LexerInterface!2850 Rule!6242 List!18339 List!18338) Unit!30587)

(assert (=> b!1654942 (= lt!616934 (lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!215 thiss!17113 (rule!5089 lt!616939) rules!1846 lt!616936))))

(assert (=> b!1654942 (isEmpty!11311 (maxPrefixOneRule!817 thiss!17113 (rule!5089 lt!616939) lt!616936))))

(declare-fun lt!616938 () Unit!30587)

(assert (=> b!1654942 (= lt!616938 lt!616934)))

(declare-fun lt!616933 () List!18338)

(assert (=> b!1654942 (= lt!616933 (list!7277 (charsOf!1870 lt!616939)))))

(declare-fun lt!616931 () Unit!30587)

(declare-fun lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!211 (LexerInterface!2850 Rule!6242 List!18338 List!18338) Unit!30587)

(assert (=> b!1654942 (= lt!616931 (lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!211 thiss!17113 (rule!5089 lt!616939) lt!616933 (++!4951 lt!616664 lt!616662)))))

(assert (=> b!1654942 (not (matchR!2042 (regex!3221 (rule!5089 lt!616939)) lt!616933))))

(declare-fun lt!616941 () Unit!30587)

(assert (=> b!1654942 (= lt!616941 lt!616931)))

(assert (=> b!1654942 false))

(declare-fun d!499201 () Bool)

(assert (=> d!499201 (isDefined!2839 (maxPrefix!1412 thiss!17113 rules!1846 (++!4951 lt!616664 lt!616662)))))

(declare-fun lt!616927 () Unit!30587)

(assert (=> d!499201 (= lt!616927 e!1061198)))

(declare-fun c!269193 () Bool)

(assert (=> d!499201 (= c!269193 (isEmpty!11311 (maxPrefix!1412 thiss!17113 rules!1846 (++!4951 lt!616664 lt!616662))))))

(declare-fun lt!616943 () Unit!30587)

(declare-fun lt!616937 () Unit!30587)

(assert (=> d!499201 (= lt!616943 lt!616937)))

(declare-fun e!1061197 () Bool)

(assert (=> d!499201 e!1061197))

(declare-fun res!742073 () Bool)

(assert (=> d!499201 (=> (not res!742073) (not e!1061197))))

(declare-datatypes ((Option!3486 0))(
  ( (None!3485) (Some!3485 (v!24682 Rule!6242)) )
))
(declare-fun isDefined!2840 (Option!3486) Bool)

(declare-fun getRuleFromTag!322 (LexerInterface!2850 List!18339 String!20887) Option!3486)

(assert (=> d!499201 (= res!742073 (isDefined!2840 (getRuleFromTag!322 thiss!17113 rules!1846 (tag!3503 (rule!5089 lt!616939)))))))

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!321 (LexerInterface!2850 List!18339 List!18338 Token!6008) Unit!30587)

(assert (=> d!499201 (= lt!616937 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!321 thiss!17113 rules!1846 lt!616664 lt!616939))))

(declare-fun lt!616929 () Unit!30587)

(declare-fun lt!616942 () Unit!30587)

(assert (=> d!499201 (= lt!616929 lt!616942)))

(declare-fun lt!616940 () List!18338)

(assert (=> d!499201 (isPrefix!1479 lt!616940 (++!4951 lt!616664 lt!616662))))

(declare-fun lemmaPrefixStaysPrefixWhenAddingToSuffix!207 (List!18338 List!18338 List!18338) Unit!30587)

(assert (=> d!499201 (= lt!616942 (lemmaPrefixStaysPrefixWhenAddingToSuffix!207 lt!616940 lt!616664 lt!616662))))

(assert (=> d!499201 (= lt!616940 (list!7277 (charsOf!1870 lt!616939)))))

(declare-fun lt!616928 () Unit!30587)

(declare-fun lt!616932 () Unit!30587)

(assert (=> d!499201 (= lt!616928 lt!616932)))

(declare-fun lt!616930 () List!18338)

(declare-fun lt!616935 () List!18338)

(assert (=> d!499201 (isPrefix!1479 lt!616930 (++!4951 lt!616930 lt!616935))))

(assert (=> d!499201 (= lt!616932 (lemmaConcatTwoListThenFirstIsPrefix!1004 lt!616930 lt!616935))))

(assert (=> d!499201 (= lt!616935 (_2!10384 (get!5328 (maxPrefix!1412 thiss!17113 rules!1846 lt!616664))))))

(assert (=> d!499201 (= lt!616930 (list!7277 (charsOf!1870 lt!616939)))))

(declare-fun head!3667 (List!18340) Token!6008)

(assert (=> d!499201 (= lt!616939 (head!3667 (list!7278 (_1!10385 (lex!1334 thiss!17113 rules!1846 (seqFromList!2181 lt!616664))))))))

(assert (=> d!499201 (not (isEmpty!11307 rules!1846))))

(assert (=> d!499201 (= (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!418 thiss!17113 rules!1846 lt!616664 lt!616662) lt!616927)))

(declare-fun b!1654940 () Bool)

(declare-fun res!742072 () Bool)

(assert (=> b!1654940 (=> (not res!742072) (not e!1061197))))

(declare-fun get!5331 (Option!3486) Rule!6242)

(assert (=> b!1654940 (= res!742072 (matchR!2042 (regex!3221 (get!5331 (getRuleFromTag!322 thiss!17113 rules!1846 (tag!3503 (rule!5089 lt!616939))))) (list!7277 (charsOf!1870 lt!616939))))))

(declare-fun b!1654941 () Bool)

(assert (=> b!1654941 (= e!1061197 (= (rule!5089 lt!616939) (get!5331 (getRuleFromTag!322 thiss!17113 rules!1846 (tag!3503 (rule!5089 lt!616939))))))))

(assert (= (and d!499201 res!742073) b!1654940))

(assert (= (and b!1654940 res!742072) b!1654941))

(assert (= (and d!499201 c!269193) b!1654942))

(assert (= (and d!499201 (not c!269193)) b!1654943))

(declare-fun m!2008377 () Bool)

(assert (=> b!1654942 m!2008377))

(declare-fun m!2008379 () Bool)

(assert (=> b!1654942 m!2008379))

(declare-fun m!2008381 () Bool)

(assert (=> b!1654942 m!2008381))

(declare-fun m!2008383 () Bool)

(assert (=> b!1654942 m!2008383))

(assert (=> b!1654942 m!2008381))

(assert (=> b!1654942 m!2008377))

(declare-fun m!2008385 () Bool)

(assert (=> b!1654942 m!2008385))

(assert (=> b!1654942 m!2007859))

(declare-fun m!2008387 () Bool)

(assert (=> b!1654942 m!2008387))

(assert (=> b!1654942 m!2007859))

(declare-fun m!2008389 () Bool)

(assert (=> b!1654942 m!2008389))

(assert (=> d!499201 m!2007859))

(declare-fun m!2008391 () Bool)

(assert (=> d!499201 m!2008391))

(assert (=> d!499201 m!2008145))

(declare-fun m!2008393 () Bool)

(assert (=> d!499201 m!2008393))

(assert (=> d!499201 m!2007859))

(declare-fun m!2008395 () Bool)

(assert (=> d!499201 m!2008395))

(assert (=> d!499201 m!2007799))

(assert (=> d!499201 m!2007801))

(assert (=> d!499201 m!2008391))

(declare-fun m!2008397 () Bool)

(assert (=> d!499201 m!2008397))

(assert (=> d!499201 m!2008391))

(declare-fun m!2008399 () Bool)

(assert (=> d!499201 m!2008399))

(assert (=> d!499201 m!2007859))

(assert (=> d!499201 m!2008381))

(assert (=> d!499201 m!2008383))

(assert (=> d!499201 m!2008145))

(assert (=> d!499201 m!2007843))

(declare-fun m!2008401 () Bool)

(assert (=> d!499201 m!2008401))

(declare-fun m!2008403 () Bool)

(assert (=> d!499201 m!2008403))

(declare-fun m!2008405 () Bool)

(assert (=> d!499201 m!2008405))

(declare-fun m!2008407 () Bool)

(assert (=> d!499201 m!2008407))

(declare-fun m!2008409 () Bool)

(assert (=> d!499201 m!2008409))

(declare-fun m!2008411 () Bool)

(assert (=> d!499201 m!2008411))

(declare-fun m!2008413 () Bool)

(assert (=> d!499201 m!2008413))

(assert (=> d!499201 m!2007843))

(assert (=> d!499201 m!2008381))

(assert (=> d!499201 m!2008411))

(assert (=> d!499201 m!2008403))

(declare-fun m!2008415 () Bool)

(assert (=> d!499201 m!2008415))

(assert (=> d!499201 m!2007729))

(assert (=> d!499201 m!2007799))

(assert (=> b!1654940 m!2008381))

(assert (=> b!1654940 m!2008383))

(assert (=> b!1654940 m!2008403))

(declare-fun m!2008417 () Bool)

(assert (=> b!1654940 m!2008417))

(assert (=> b!1654940 m!2008383))

(declare-fun m!2008419 () Bool)

(assert (=> b!1654940 m!2008419))

(assert (=> b!1654940 m!2008381))

(assert (=> b!1654940 m!2008403))

(assert (=> b!1654941 m!2008403))

(assert (=> b!1654941 m!2008403))

(assert (=> b!1654941 m!2008417))

(assert (=> b!1654677 d!499201))

(declare-fun d!499205 () Bool)

(assert (=> d!499205 (= (isEmpty!11307 rules!1846) ((_ is Nil!18269) rules!1846))))

(assert (=> b!1654699 d!499205))

(declare-fun d!499207 () Bool)

(assert (=> d!499207 (= (head!3665 (originalCharacters!4035 (h!23671 (t!151177 tokens!457)))) (h!23669 (originalCharacters!4035 (h!23671 (t!151177 tokens!457)))))))

(assert (=> b!1654697 d!499207))

(declare-fun d!499209 () Bool)

(assert (=> d!499209 (= (inv!23619 (tag!3503 (h!23670 rules!1846))) (= (mod (str.len (value!101470 (tag!3503 (h!23670 rules!1846)))) 2) 0))))

(assert (=> b!1654676 d!499209))

(declare-fun d!499213 () Bool)

(declare-fun res!742086 () Bool)

(declare-fun e!1061208 () Bool)

(assert (=> d!499213 (=> (not res!742086) (not e!1061208))))

(assert (=> d!499213 (= res!742086 (semiInverseModEq!1247 (toChars!4531 (transformation!3221 (h!23670 rules!1846))) (toValue!4672 (transformation!3221 (h!23670 rules!1846)))))))

(assert (=> d!499213 (= (inv!23622 (transformation!3221 (h!23670 rules!1846))) e!1061208)))

(declare-fun b!1654956 () Bool)

(assert (=> b!1654956 (= e!1061208 (equivClasses!1188 (toChars!4531 (transformation!3221 (h!23670 rules!1846))) (toValue!4672 (transformation!3221 (h!23670 rules!1846)))))))

(assert (= (and d!499213 res!742086) b!1654956))

(declare-fun m!2008433 () Bool)

(assert (=> d!499213 m!2008433))

(declare-fun m!2008435 () Bool)

(assert (=> b!1654956 m!2008435))

(assert (=> b!1654676 d!499213))

(declare-fun d!499215 () Bool)

(declare-fun res!742098 () Bool)

(declare-fun e!1061225 () Bool)

(assert (=> d!499215 (=> res!742098 e!1061225)))

(assert (=> d!499215 (= res!742098 (or (not ((_ is Cons!18270) tokens!457)) (not ((_ is Cons!18270) (t!151177 tokens!457)))))))

(assert (=> d!499215 (= (tokensListTwoByTwoPredicateSeparableList!543 thiss!17113 tokens!457 rules!1846) e!1061225)))

(declare-fun b!1654979 () Bool)

(declare-fun e!1061226 () Bool)

(assert (=> b!1654979 (= e!1061225 e!1061226)))

(declare-fun res!742097 () Bool)

(assert (=> b!1654979 (=> (not res!742097) (not e!1061226))))

(assert (=> b!1654979 (= res!742097 (separableTokensPredicate!790 thiss!17113 (h!23671 tokens!457) (h!23671 (t!151177 tokens!457)) rules!1846))))

(declare-fun lt!616966 () Unit!30587)

(declare-fun Unit!30615 () Unit!30587)

(assert (=> b!1654979 (= lt!616966 Unit!30615)))

(assert (=> b!1654979 (> (size!14541 (charsOf!1870 (h!23671 (t!151177 tokens!457)))) 0)))

(declare-fun lt!616970 () Unit!30587)

(declare-fun Unit!30616 () Unit!30587)

(assert (=> b!1654979 (= lt!616970 Unit!30616)))

(assert (=> b!1654979 (rulesProduceIndividualToken!1498 thiss!17113 rules!1846 (h!23671 (t!151177 tokens!457)))))

(declare-fun lt!616965 () Unit!30587)

(declare-fun Unit!30617 () Unit!30587)

(assert (=> b!1654979 (= lt!616965 Unit!30617)))

(assert (=> b!1654979 (rulesProduceIndividualToken!1498 thiss!17113 rules!1846 (h!23671 tokens!457))))

(declare-fun lt!616969 () Unit!30587)

(declare-fun lt!616968 () Unit!30587)

(assert (=> b!1654979 (= lt!616969 lt!616968)))

(assert (=> b!1654979 (rulesProduceIndividualToken!1498 thiss!17113 rules!1846 (h!23671 (t!151177 tokens!457)))))

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!611 (LexerInterface!2850 List!18339 List!18340 Token!6008) Unit!30587)

(assert (=> b!1654979 (= lt!616968 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!611 thiss!17113 rules!1846 tokens!457 (h!23671 (t!151177 tokens!457))))))

(declare-fun lt!616967 () Unit!30587)

(declare-fun lt!616964 () Unit!30587)

(assert (=> b!1654979 (= lt!616967 lt!616964)))

(assert (=> b!1654979 (rulesProduceIndividualToken!1498 thiss!17113 rules!1846 (h!23671 tokens!457))))

(assert (=> b!1654979 (= lt!616964 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!611 thiss!17113 rules!1846 tokens!457 (h!23671 tokens!457)))))

(declare-fun b!1654980 () Bool)

(assert (=> b!1654980 (= e!1061226 (tokensListTwoByTwoPredicateSeparableList!543 thiss!17113 (Cons!18270 (h!23671 (t!151177 tokens!457)) (t!151177 (t!151177 tokens!457))) rules!1846))))

(assert (= (and d!499215 (not res!742098)) b!1654979))

(assert (= (and b!1654979 res!742097) b!1654980))

(assert (=> b!1654979 m!2007763))

(assert (=> b!1654979 m!2007817))

(assert (=> b!1654979 m!2008255))

(assert (=> b!1654979 m!2007817))

(declare-fun m!2008455 () Bool)

(assert (=> b!1654979 m!2008455))

(declare-fun m!2008457 () Bool)

(assert (=> b!1654979 m!2008457))

(assert (=> b!1654979 m!2007727))

(declare-fun m!2008459 () Bool)

(assert (=> b!1654979 m!2008459))

(declare-fun m!2008461 () Bool)

(assert (=> b!1654980 m!2008461))

(assert (=> b!1654696 d!499215))

(declare-fun d!499227 () Bool)

(declare-fun list!7281 (Conc!6091) List!18340)

(assert (=> d!499227 (= (list!7278 (_1!10385 lt!616653)) (list!7281 (c!269147 (_1!10385 lt!616653))))))

(declare-fun bs!396795 () Bool)

(assert (= bs!396795 d!499227))

(declare-fun m!2008463 () Bool)

(assert (=> bs!396795 m!2008463))

(assert (=> b!1654675 d!499227))

(declare-fun d!499229 () Bool)

(declare-fun e!1061246 () Bool)

(assert (=> d!499229 e!1061246))

(declare-fun res!742121 () Bool)

(assert (=> d!499229 (=> (not res!742121) (not e!1061246))))

(assert (=> d!499229 (= res!742121 (= (list!7278 (_1!10385 (lex!1334 thiss!17113 rules!1846 (print!1381 thiss!17113 (seqFromList!2182 (t!151177 tokens!457)))))) (t!151177 tokens!457)))))

(declare-fun lt!617044 () Unit!30587)

(declare-fun e!1061247 () Unit!30587)

(assert (=> d!499229 (= lt!617044 e!1061247)))

(declare-fun c!269205 () Bool)

(assert (=> d!499229 (= c!269205 (or ((_ is Nil!18270) (t!151177 tokens!457)) ((_ is Nil!18270) (t!151177 (t!151177 tokens!457)))))))

(assert (=> d!499229 (not (isEmpty!11307 rules!1846))))

(assert (=> d!499229 (= (theoremInvertabilityWhenTokenListSeparable!293 thiss!17113 rules!1846 (t!151177 tokens!457)) lt!617044)))

(declare-fun b!1655013 () Bool)

(declare-fun Unit!30620 () Unit!30587)

(assert (=> b!1655013 (= e!1061247 Unit!30620)))

(declare-fun b!1655014 () Bool)

(declare-fun Unit!30621 () Unit!30587)

(assert (=> b!1655014 (= e!1061247 Unit!30621)))

(declare-fun lt!617053 () BalanceConc!12124)

(assert (=> b!1655014 (= lt!617053 (print!1381 thiss!17113 (seqFromList!2182 (t!151177 tokens!457))))))

(declare-fun lt!617035 () BalanceConc!12124)

(assert (=> b!1655014 (= lt!617035 (print!1381 thiss!17113 (seqFromList!2182 (t!151177 (t!151177 tokens!457)))))))

(declare-fun lt!617040 () tuple2!17966)

(assert (=> b!1655014 (= lt!617040 (lex!1334 thiss!17113 rules!1846 lt!617035))))

(declare-fun lt!617050 () List!18338)

(assert (=> b!1655014 (= lt!617050 (list!7277 (charsOf!1870 (h!23671 (t!151177 tokens!457)))))))

(declare-fun lt!617037 () List!18338)

(assert (=> b!1655014 (= lt!617037 (list!7277 lt!617035))))

(declare-fun lt!617038 () Unit!30587)

(assert (=> b!1655014 (= lt!617038 (lemmaConcatTwoListThenFirstIsPrefix!1004 lt!617050 lt!617037))))

(assert (=> b!1655014 (isPrefix!1479 lt!617050 (++!4951 lt!617050 lt!617037))))

(declare-fun lt!617049 () Unit!30587)

(assert (=> b!1655014 (= lt!617049 lt!617038)))

(declare-fun lt!617056 () Unit!30587)

(assert (=> b!1655014 (= lt!617056 (theoremInvertabilityWhenTokenListSeparable!293 thiss!17113 rules!1846 (t!151177 (t!151177 tokens!457))))))

(declare-fun lt!617051 () Unit!30587)

(assert (=> b!1655014 (= lt!617051 (seqFromListBHdTlConstructive!296 (h!23671 (t!151177 (t!151177 tokens!457))) (t!151177 (t!151177 (t!151177 tokens!457))) (_1!10385 lt!617040)))))

(assert (=> b!1655014 (= (list!7278 (_1!10385 lt!617040)) (list!7278 (prepend!791 (seqFromList!2182 (t!151177 (t!151177 (t!151177 tokens!457)))) (h!23671 (t!151177 (t!151177 tokens!457))))))))

(declare-fun lt!617054 () Unit!30587)

(assert (=> b!1655014 (= lt!617054 lt!617051)))

(declare-fun lt!617045 () Option!3484)

(assert (=> b!1655014 (= lt!617045 (maxPrefix!1412 thiss!17113 rules!1846 (list!7277 lt!617053)))))

(assert (=> b!1655014 (= (print!1381 thiss!17113 (singletonSeq!1714 (h!23671 (t!151177 tokens!457)))) (printTailRec!901 thiss!17113 (singletonSeq!1714 (h!23671 (t!151177 tokens!457))) 0 (BalanceConc!12125 Empty!6090)))))

(declare-fun lt!617048 () Unit!30587)

(declare-fun Unit!30623 () Unit!30587)

(assert (=> b!1655014 (= lt!617048 Unit!30623)))

(declare-fun lt!617036 () Unit!30587)

(assert (=> b!1655014 (= lt!617036 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!418 thiss!17113 rules!1846 (list!7277 (charsOf!1870 (h!23671 (t!151177 tokens!457)))) (list!7277 lt!617035)))))

(assert (=> b!1655014 (= (list!7277 (charsOf!1870 (h!23671 (t!151177 tokens!457)))) (originalCharacters!4035 (h!23671 (t!151177 tokens!457))))))

(declare-fun lt!617043 () Unit!30587)

(declare-fun Unit!30624 () Unit!30587)

(assert (=> b!1655014 (= lt!617043 Unit!30624)))

(assert (=> b!1655014 (= (list!7277 (singletonSeq!1715 (apply!4842 (charsOf!1870 (h!23671 (t!151177 (t!151177 tokens!457)))) 0))) (Cons!18268 (head!3665 (originalCharacters!4035 (h!23671 (t!151177 (t!151177 tokens!457))))) Nil!18268))))

(declare-fun lt!617055 () Unit!30587)

(declare-fun Unit!30625 () Unit!30587)

(assert (=> b!1655014 (= lt!617055 Unit!30625)))

(assert (=> b!1655014 (= (list!7277 (singletonSeq!1715 (apply!4842 (charsOf!1870 (h!23671 (t!151177 (t!151177 tokens!457)))) 0))) (Cons!18268 (head!3665 (list!7277 lt!617035)) Nil!18268))))

(declare-fun lt!617034 () Unit!30587)

(declare-fun Unit!30626 () Unit!30587)

(assert (=> b!1655014 (= lt!617034 Unit!30626)))

(assert (=> b!1655014 (= (list!7277 (singletonSeq!1715 (apply!4842 (charsOf!1870 (h!23671 (t!151177 (t!151177 tokens!457)))) 0))) (Cons!18268 (head!3664 lt!617035) Nil!18268))))

(declare-fun lt!617042 () Unit!30587)

(declare-fun Unit!30627 () Unit!30587)

(assert (=> b!1655014 (= lt!617042 Unit!30627)))

(assert (=> b!1655014 (isDefined!2839 (maxPrefix!1412 thiss!17113 rules!1846 (originalCharacters!4035 (h!23671 (t!151177 tokens!457)))))))

(declare-fun lt!617057 () Unit!30587)

(declare-fun Unit!30628 () Unit!30587)

(assert (=> b!1655014 (= lt!617057 Unit!30628)))

(assert (=> b!1655014 (isDefined!2839 (maxPrefix!1412 thiss!17113 rules!1846 (list!7277 (charsOf!1870 (h!23671 (t!151177 tokens!457))))))))

(declare-fun lt!617059 () Unit!30587)

(declare-fun Unit!30629 () Unit!30587)

(assert (=> b!1655014 (= lt!617059 Unit!30629)))

(declare-fun lt!617052 () Unit!30587)

(declare-fun Unit!30630 () Unit!30587)

(assert (=> b!1655014 (= lt!617052 Unit!30630)))

(assert (=> b!1655014 (= (_1!10384 (get!5328 (maxPrefix!1412 thiss!17113 rules!1846 (list!7277 (charsOf!1870 (h!23671 (t!151177 tokens!457))))))) (h!23671 (t!151177 tokens!457)))))

(declare-fun lt!617041 () Unit!30587)

(declare-fun Unit!30631 () Unit!30587)

(assert (=> b!1655014 (= lt!617041 Unit!30631)))

(assert (=> b!1655014 (isEmpty!11306 (_2!10384 (get!5328 (maxPrefix!1412 thiss!17113 rules!1846 (list!7277 (charsOf!1870 (h!23671 (t!151177 tokens!457))))))))))

(declare-fun lt!617058 () Unit!30587)

(declare-fun Unit!30632 () Unit!30587)

(assert (=> b!1655014 (= lt!617058 Unit!30632)))

(assert (=> b!1655014 (matchR!2042 (regex!3221 (rule!5089 (h!23671 (t!151177 tokens!457)))) (list!7277 (charsOf!1870 (h!23671 (t!151177 tokens!457)))))))

(declare-fun lt!617047 () Unit!30587)

(declare-fun Unit!30633 () Unit!30587)

(assert (=> b!1655014 (= lt!617047 Unit!30633)))

(assert (=> b!1655014 (= (rule!5089 (h!23671 (t!151177 tokens!457))) (rule!5089 (h!23671 (t!151177 tokens!457))))))

(declare-fun lt!617046 () Unit!30587)

(declare-fun Unit!30634 () Unit!30587)

(assert (=> b!1655014 (= lt!617046 Unit!30634)))

(declare-fun lt!617039 () Unit!30587)

(assert (=> b!1655014 (= lt!617039 (lemmaMaxPrefWithNoPrefixMatchAllRulesThenSuffixReturnSame!176 thiss!17113 rules!1846 (h!23671 (t!151177 tokens!457)) (rule!5089 (h!23671 (t!151177 tokens!457))) (list!7277 lt!617035)))))

(declare-fun b!1655015 () Bool)

(declare-fun isEmpty!11316 (BalanceConc!12124) Bool)

(assert (=> b!1655015 (= e!1061246 (isEmpty!11316 (_2!10385 (lex!1334 thiss!17113 rules!1846 (print!1381 thiss!17113 (seqFromList!2182 (t!151177 tokens!457)))))))))

(assert (= (and d!499229 c!269205) b!1655013))

(assert (= (and d!499229 (not c!269205)) b!1655014))

(assert (= (and d!499229 res!742121) b!1655015))

(assert (=> d!499229 m!2007865))

(declare-fun m!2008527 () Bool)

(assert (=> d!499229 m!2008527))

(declare-fun m!2008529 () Bool)

(assert (=> d!499229 m!2008529))

(assert (=> d!499229 m!2007729))

(declare-fun m!2008531 () Bool)

(assert (=> d!499229 m!2008531))

(assert (=> d!499229 m!2007865))

(assert (=> d!499229 m!2008527))

(declare-fun m!2008533 () Bool)

(assert (=> b!1655014 m!2008533))

(declare-fun m!2008535 () Bool)

(assert (=> b!1655014 m!2008535))

(assert (=> b!1655014 m!2008533))

(declare-fun m!2008537 () Bool)

(assert (=> b!1655014 m!2008537))

(declare-fun m!2008539 () Bool)

(assert (=> b!1655014 m!2008539))

(declare-fun m!2008541 () Bool)

(assert (=> b!1655014 m!2008541))

(declare-fun m!2008543 () Bool)

(assert (=> b!1655014 m!2008543))

(declare-fun m!2008545 () Bool)

(assert (=> b!1655014 m!2008545))

(assert (=> b!1655014 m!2007781))

(declare-fun m!2008547 () Bool)

(assert (=> b!1655014 m!2008547))

(declare-fun m!2008549 () Bool)

(assert (=> b!1655014 m!2008549))

(declare-fun m!2008551 () Bool)

(assert (=> b!1655014 m!2008551))

(declare-fun m!2008553 () Bool)

(assert (=> b!1655014 m!2008553))

(assert (=> b!1655014 m!2008249))

(declare-fun m!2008555 () Bool)

(assert (=> b!1655014 m!2008555))

(declare-fun m!2008557 () Bool)

(assert (=> b!1655014 m!2008557))

(declare-fun m!2008559 () Bool)

(assert (=> b!1655014 m!2008559))

(assert (=> b!1655014 m!2007865))

(assert (=> b!1655014 m!2008527))

(declare-fun m!2008561 () Bool)

(assert (=> b!1655014 m!2008561))

(declare-fun m!2008563 () Bool)

(assert (=> b!1655014 m!2008563))

(declare-fun m!2008565 () Bool)

(assert (=> b!1655014 m!2008565))

(declare-fun m!2008567 () Bool)

(assert (=> b!1655014 m!2008567))

(assert (=> b!1655014 m!2008533))

(declare-fun m!2008569 () Bool)

(assert (=> b!1655014 m!2008569))

(declare-fun m!2008571 () Bool)

(assert (=> b!1655014 m!2008571))

(declare-fun m!2008573 () Bool)

(assert (=> b!1655014 m!2008573))

(declare-fun m!2008575 () Bool)

(assert (=> b!1655014 m!2008575))

(assert (=> b!1655014 m!2008563))

(assert (=> b!1655014 m!2008537))

(assert (=> b!1655014 m!2008573))

(declare-fun m!2008577 () Bool)

(assert (=> b!1655014 m!2008577))

(declare-fun m!2008579 () Bool)

(assert (=> b!1655014 m!2008579))

(assert (=> b!1655014 m!2008577))

(declare-fun m!2008581 () Bool)

(assert (=> b!1655014 m!2008581))

(assert (=> b!1655014 m!2007865))

(declare-fun m!2008583 () Bool)

(assert (=> b!1655014 m!2008583))

(assert (=> b!1655014 m!2007817))

(declare-fun m!2008585 () Bool)

(assert (=> b!1655014 m!2008585))

(assert (=> b!1655014 m!2008543))

(declare-fun m!2008587 () Bool)

(assert (=> b!1655014 m!2008587))

(assert (=> b!1655014 m!2008565))

(declare-fun m!2008589 () Bool)

(assert (=> b!1655014 m!2008589))

(declare-fun m!2008591 () Bool)

(assert (=> b!1655014 m!2008591))

(assert (=> b!1655014 m!2007781))

(declare-fun m!2008593 () Bool)

(assert (=> b!1655014 m!2008593))

(assert (=> b!1655014 m!2007817))

(assert (=> b!1655014 m!2008249))

(assert (=> b!1655014 m!2008549))

(assert (=> b!1655014 m!2008557))

(assert (=> b!1655014 m!2008553))

(declare-fun m!2008595 () Bool)

(assert (=> b!1655014 m!2008595))

(assert (=> b!1655014 m!2008577))

(assert (=> b!1655014 m!2008249))

(assert (=> b!1655014 m!2008565))

(assert (=> b!1655014 m!2008249))

(assert (=> b!1655014 m!2008577))

(declare-fun m!2008597 () Bool)

(assert (=> b!1655014 m!2008597))

(assert (=> b!1655014 m!2008561))

(assert (=> b!1655015 m!2007865))

(assert (=> b!1655015 m!2007865))

(assert (=> b!1655015 m!2008527))

(assert (=> b!1655015 m!2008527))

(assert (=> b!1655015 m!2008529))

(declare-fun m!2008599 () Bool)

(assert (=> b!1655015 m!2008599))

(assert (=> b!1654675 d!499229))

(declare-fun d!499249 () Bool)

(declare-fun e!1061256 () Bool)

(assert (=> d!499249 e!1061256))

(declare-fun res!742131 () Bool)

(assert (=> d!499249 (=> res!742131 e!1061256)))

(declare-fun lt!617062 () Bool)

(assert (=> d!499249 (= res!742131 (not lt!617062))))

(declare-fun e!1061254 () Bool)

(assert (=> d!499249 (= lt!617062 e!1061254)))

(declare-fun res!742133 () Bool)

(assert (=> d!499249 (=> res!742133 e!1061254)))

(assert (=> d!499249 (= res!742133 ((_ is Nil!18268) lt!616664))))

(assert (=> d!499249 (= (isPrefix!1479 lt!616664 lt!616672) lt!617062)))

(declare-fun b!1655027 () Bool)

(assert (=> b!1655027 (= e!1061256 (>= (size!14540 lt!616672) (size!14540 lt!616664)))))

(declare-fun b!1655026 () Bool)

(declare-fun e!1061255 () Bool)

(assert (=> b!1655026 (= e!1061255 (isPrefix!1479 (tail!2456 lt!616664) (tail!2456 lt!616672)))))

(declare-fun b!1655025 () Bool)

(declare-fun res!742130 () Bool)

(assert (=> b!1655025 (=> (not res!742130) (not e!1061255))))

(assert (=> b!1655025 (= res!742130 (= (head!3665 lt!616664) (head!3665 lt!616672)))))

(declare-fun b!1655024 () Bool)

(assert (=> b!1655024 (= e!1061254 e!1061255)))

(declare-fun res!742132 () Bool)

(assert (=> b!1655024 (=> (not res!742132) (not e!1061255))))

(assert (=> b!1655024 (= res!742132 (not ((_ is Nil!18268) lt!616672)))))

(assert (= (and d!499249 (not res!742133)) b!1655024))

(assert (= (and b!1655024 res!742132) b!1655025))

(assert (= (and b!1655025 res!742130) b!1655026))

(assert (= (and d!499249 (not res!742131)) b!1655027))

(declare-fun m!2008601 () Bool)

(assert (=> b!1655027 m!2008601))

(assert (=> b!1655027 m!2008123))

(declare-fun m!2008603 () Bool)

(assert (=> b!1655026 m!2008603))

(declare-fun m!2008605 () Bool)

(assert (=> b!1655026 m!2008605))

(assert (=> b!1655026 m!2008603))

(assert (=> b!1655026 m!2008605))

(declare-fun m!2008607 () Bool)

(assert (=> b!1655026 m!2008607))

(declare-fun m!2008609 () Bool)

(assert (=> b!1655025 m!2008609))

(declare-fun m!2008611 () Bool)

(assert (=> b!1655025 m!2008611))

(assert (=> b!1654675 d!499249))

(declare-fun d!499251 () Bool)

(assert (=> d!499251 (isPrefix!1479 lt!616664 (++!4951 lt!616664 lt!616662))))

(declare-fun lt!617065 () Unit!30587)

(declare-fun choose!9942 (List!18338 List!18338) Unit!30587)

(assert (=> d!499251 (= lt!617065 (choose!9942 lt!616664 lt!616662))))

(assert (=> d!499251 (= (lemmaConcatTwoListThenFirstIsPrefix!1004 lt!616664 lt!616662) lt!617065)))

(declare-fun bs!396798 () Bool)

(assert (= bs!396798 d!499251))

(assert (=> bs!396798 m!2007859))

(assert (=> bs!396798 m!2007859))

(declare-fun m!2008613 () Bool)

(assert (=> bs!396798 m!2008613))

(declare-fun m!2008615 () Bool)

(assert (=> bs!396798 m!2008615))

(assert (=> b!1654675 d!499251))

(declare-fun d!499253 () Bool)

(assert (=> d!499253 (= (list!7278 (_1!10385 lt!616653)) (list!7278 (prepend!791 (seqFromList!2182 (t!151177 (t!151177 tokens!457))) (h!23671 (t!151177 tokens!457)))))))

(declare-fun lt!617068 () Unit!30587)

(declare-fun choose!9943 (Token!6008 List!18340 BalanceConc!12126) Unit!30587)

(assert (=> d!499253 (= lt!617068 (choose!9943 (h!23671 (t!151177 tokens!457)) (t!151177 (t!151177 tokens!457)) (_1!10385 lt!616653)))))

(declare-fun $colon$colon!376 (List!18340 Token!6008) List!18340)

(assert (=> d!499253 (= (list!7278 (_1!10385 lt!616653)) (list!7278 (seqFromList!2182 ($colon$colon!376 (t!151177 (t!151177 tokens!457)) (h!23671 (t!151177 tokens!457))))))))

(assert (=> d!499253 (= (seqFromListBHdTlConstructive!296 (h!23671 (t!151177 tokens!457)) (t!151177 (t!151177 tokens!457)) (_1!10385 lt!616653)) lt!617068)))

(declare-fun bs!396799 () Bool)

(assert (= bs!396799 d!499253))

(declare-fun m!2008617 () Bool)

(assert (=> bs!396799 m!2008617))

(declare-fun m!2008619 () Bool)

(assert (=> bs!396799 m!2008619))

(declare-fun m!2008621 () Bool)

(assert (=> bs!396799 m!2008621))

(assert (=> bs!396799 m!2007781))

(assert (=> bs!396799 m!2007735))

(assert (=> bs!396799 m!2008619))

(assert (=> bs!396799 m!2008621))

(declare-fun m!2008623 () Bool)

(assert (=> bs!396799 m!2008623))

(assert (=> bs!396799 m!2007781))

(assert (=> bs!396799 m!2007783))

(assert (=> bs!396799 m!2007783))

(assert (=> bs!396799 m!2007785))

(assert (=> b!1654694 d!499253))

(declare-fun d!499255 () Bool)

(declare-fun e!1061259 () Bool)

(assert (=> d!499255 e!1061259))

(declare-fun res!742136 () Bool)

(assert (=> d!499255 (=> (not res!742136) (not e!1061259))))

(declare-fun isBalanced!1873 (Conc!6091) Bool)

(declare-fun prepend!793 (Conc!6091 Token!6008) Conc!6091)

(assert (=> d!499255 (= res!742136 (isBalanced!1873 (prepend!793 (c!269147 (seqFromList!2182 (t!151177 (t!151177 tokens!457)))) (h!23671 (t!151177 tokens!457)))))))

(declare-fun lt!617071 () BalanceConc!12126)

(assert (=> d!499255 (= lt!617071 (BalanceConc!12127 (prepend!793 (c!269147 (seqFromList!2182 (t!151177 (t!151177 tokens!457)))) (h!23671 (t!151177 tokens!457)))))))

(assert (=> d!499255 (= (prepend!791 (seqFromList!2182 (t!151177 (t!151177 tokens!457))) (h!23671 (t!151177 tokens!457))) lt!617071)))

(declare-fun b!1655030 () Bool)

(assert (=> b!1655030 (= e!1061259 (= (list!7278 lt!617071) (Cons!18270 (h!23671 (t!151177 tokens!457)) (list!7278 (seqFromList!2182 (t!151177 (t!151177 tokens!457)))))))))

(assert (= (and d!499255 res!742136) b!1655030))

(declare-fun m!2008625 () Bool)

(assert (=> d!499255 m!2008625))

(assert (=> d!499255 m!2008625))

(declare-fun m!2008627 () Bool)

(assert (=> d!499255 m!2008627))

(declare-fun m!2008629 () Bool)

(assert (=> b!1655030 m!2008629))

(assert (=> b!1655030 m!2007781))

(declare-fun m!2008631 () Bool)

(assert (=> b!1655030 m!2008631))

(assert (=> b!1654694 d!499255))

(declare-fun d!499257 () Bool)

(assert (=> d!499257 (= (list!7278 (prepend!791 (seqFromList!2182 (t!151177 (t!151177 tokens!457))) (h!23671 (t!151177 tokens!457)))) (list!7281 (c!269147 (prepend!791 (seqFromList!2182 (t!151177 (t!151177 tokens!457))) (h!23671 (t!151177 tokens!457))))))))

(declare-fun bs!396800 () Bool)

(assert (= bs!396800 d!499257))

(declare-fun m!2008633 () Bool)

(assert (=> bs!396800 m!2008633))

(assert (=> b!1654694 d!499257))

(declare-fun d!499259 () Bool)

(declare-fun fromListB!979 (List!18340) BalanceConc!12126)

(assert (=> d!499259 (= (seqFromList!2182 (t!151177 (t!151177 tokens!457))) (fromListB!979 (t!151177 (t!151177 tokens!457))))))

(declare-fun bs!396801 () Bool)

(assert (= bs!396801 d!499259))

(declare-fun m!2008635 () Bool)

(assert (=> bs!396801 m!2008635))

(assert (=> b!1654694 d!499259))

(declare-fun d!499261 () Bool)

(assert (=> d!499261 (= (list!7278 lt!616676) (list!7281 (c!269147 lt!616676)))))

(declare-fun bs!396802 () Bool)

(assert (= bs!396802 d!499261))

(declare-fun m!2008637 () Bool)

(assert (=> bs!396802 m!2008637))

(assert (=> b!1654694 d!499261))

(declare-fun b!1655031 () Bool)

(declare-fun e!1061262 () Bool)

(declare-fun e!1061261 () Bool)

(assert (=> b!1655031 (= e!1061262 e!1061261)))

(declare-fun res!742138 () Bool)

(assert (=> b!1655031 (=> (not res!742138) (not e!1061261))))

(declare-fun lt!617075 () Option!3484)

(assert (=> b!1655031 (= res!742138 (isDefined!2839 lt!617075))))

(declare-fun b!1655032 () Bool)

(declare-fun res!742141 () Bool)

(assert (=> b!1655032 (=> (not res!742141) (not e!1061261))))

(assert (=> b!1655032 (= res!742141 (= (value!101471 (_1!10384 (get!5328 lt!617075))) (apply!4844 (transformation!3221 (rule!5089 (_1!10384 (get!5328 lt!617075)))) (seqFromList!2181 (originalCharacters!4035 (_1!10384 (get!5328 lt!617075)))))))))

(declare-fun b!1655033 () Bool)

(assert (=> b!1655033 (= e!1061261 (contains!3186 rules!1846 (rule!5089 (_1!10384 (get!5328 lt!617075)))))))

(declare-fun b!1655034 () Bool)

(declare-fun e!1061260 () Option!3484)

(declare-fun lt!617073 () Option!3484)

(declare-fun lt!617074 () Option!3484)

(assert (=> b!1655034 (= e!1061260 (ite (and ((_ is None!3483) lt!617073) ((_ is None!3483) lt!617074)) None!3483 (ite ((_ is None!3483) lt!617074) lt!617073 (ite ((_ is None!3483) lt!617073) lt!617074 (ite (>= (size!14536 (_1!10384 (v!24674 lt!617073))) (size!14536 (_1!10384 (v!24674 lt!617074)))) lt!617073 lt!617074)))))))

(declare-fun call!106092 () Option!3484)

(assert (=> b!1655034 (= lt!617073 call!106092)))

(assert (=> b!1655034 (= lt!617074 (maxPrefix!1412 thiss!17113 (t!151176 rules!1846) lt!616675))))

(declare-fun b!1655035 () Bool)

(declare-fun res!742143 () Bool)

(assert (=> b!1655035 (=> (not res!742143) (not e!1061261))))

(assert (=> b!1655035 (= res!742143 (< (size!14540 (_2!10384 (get!5328 lt!617075))) (size!14540 lt!616675)))))

(declare-fun d!499263 () Bool)

(assert (=> d!499263 e!1061262))

(declare-fun res!742139 () Bool)

(assert (=> d!499263 (=> res!742139 e!1061262)))

(assert (=> d!499263 (= res!742139 (isEmpty!11311 lt!617075))))

(assert (=> d!499263 (= lt!617075 e!1061260)))

(declare-fun c!269207 () Bool)

(assert (=> d!499263 (= c!269207 (and ((_ is Cons!18269) rules!1846) ((_ is Nil!18269) (t!151176 rules!1846))))))

(declare-fun lt!617072 () Unit!30587)

(declare-fun lt!617076 () Unit!30587)

(assert (=> d!499263 (= lt!617072 lt!617076)))

(assert (=> d!499263 (isPrefix!1479 lt!616675 lt!616675)))

(assert (=> d!499263 (= lt!617076 (lemmaIsPrefixRefl!1002 lt!616675 lt!616675))))

(assert (=> d!499263 (rulesValidInductive!1024 thiss!17113 rules!1846)))

(assert (=> d!499263 (= (maxPrefix!1412 thiss!17113 rules!1846 lt!616675) lt!617075)))

(declare-fun b!1655036 () Bool)

(declare-fun res!742142 () Bool)

(assert (=> b!1655036 (=> (not res!742142) (not e!1061261))))

(assert (=> b!1655036 (= res!742142 (matchR!2042 (regex!3221 (rule!5089 (_1!10384 (get!5328 lt!617075)))) (list!7277 (charsOf!1870 (_1!10384 (get!5328 lt!617075))))))))

(declare-fun b!1655037 () Bool)

(assert (=> b!1655037 (= e!1061260 call!106092)))

(declare-fun b!1655038 () Bool)

(declare-fun res!742137 () Bool)

(assert (=> b!1655038 (=> (not res!742137) (not e!1061261))))

(assert (=> b!1655038 (= res!742137 (= (list!7277 (charsOf!1870 (_1!10384 (get!5328 lt!617075)))) (originalCharacters!4035 (_1!10384 (get!5328 lt!617075)))))))

(declare-fun bm!106087 () Bool)

(assert (=> bm!106087 (= call!106092 (maxPrefixOneRule!817 thiss!17113 (h!23670 rules!1846) lt!616675))))

(declare-fun b!1655039 () Bool)

(declare-fun res!742140 () Bool)

(assert (=> b!1655039 (=> (not res!742140) (not e!1061261))))

(assert (=> b!1655039 (= res!742140 (= (++!4951 (list!7277 (charsOf!1870 (_1!10384 (get!5328 lt!617075)))) (_2!10384 (get!5328 lt!617075))) lt!616675))))

(assert (= (and d!499263 c!269207) b!1655037))

(assert (= (and d!499263 (not c!269207)) b!1655034))

(assert (= (or b!1655037 b!1655034) bm!106087))

(assert (= (and d!499263 (not res!742139)) b!1655031))

(assert (= (and b!1655031 res!742138) b!1655038))

(assert (= (and b!1655038 res!742137) b!1655035))

(assert (= (and b!1655035 res!742143) b!1655039))

(assert (= (and b!1655039 res!742140) b!1655032))

(assert (= (and b!1655032 res!742141) b!1655036))

(assert (= (and b!1655036 res!742142) b!1655033))

(declare-fun m!2008639 () Bool)

(assert (=> b!1655031 m!2008639))

(declare-fun m!2008641 () Bool)

(assert (=> bm!106087 m!2008641))

(declare-fun m!2008643 () Bool)

(assert (=> b!1655038 m!2008643))

(declare-fun m!2008645 () Bool)

(assert (=> b!1655038 m!2008645))

(assert (=> b!1655038 m!2008645))

(declare-fun m!2008647 () Bool)

(assert (=> b!1655038 m!2008647))

(assert (=> b!1655036 m!2008643))

(assert (=> b!1655036 m!2008645))

(assert (=> b!1655036 m!2008645))

(assert (=> b!1655036 m!2008647))

(assert (=> b!1655036 m!2008647))

(declare-fun m!2008649 () Bool)

(assert (=> b!1655036 m!2008649))

(declare-fun m!2008651 () Bool)

(assert (=> d!499263 m!2008651))

(declare-fun m!2008653 () Bool)

(assert (=> d!499263 m!2008653))

(declare-fun m!2008655 () Bool)

(assert (=> d!499263 m!2008655))

(assert (=> d!499263 m!2008043))

(assert (=> b!1655035 m!2008643))

(declare-fun m!2008657 () Bool)

(assert (=> b!1655035 m!2008657))

(declare-fun m!2008659 () Bool)

(assert (=> b!1655035 m!2008659))

(declare-fun m!2008661 () Bool)

(assert (=> b!1655034 m!2008661))

(assert (=> b!1655039 m!2008643))

(assert (=> b!1655039 m!2008645))

(assert (=> b!1655039 m!2008645))

(assert (=> b!1655039 m!2008647))

(assert (=> b!1655039 m!2008647))

(declare-fun m!2008663 () Bool)

(assert (=> b!1655039 m!2008663))

(assert (=> b!1655033 m!2008643))

(declare-fun m!2008665 () Bool)

(assert (=> b!1655033 m!2008665))

(assert (=> b!1655032 m!2008643))

(declare-fun m!2008667 () Bool)

(assert (=> b!1655032 m!2008667))

(assert (=> b!1655032 m!2008667))

(declare-fun m!2008669 () Bool)

(assert (=> b!1655032 m!2008669))

(assert (=> b!1654673 d!499263))

(declare-fun d!499265 () Bool)

(declare-fun list!7282 (Conc!6090) List!18338)

(assert (=> d!499265 (= (list!7277 lt!616661) (list!7282 (c!269145 lt!616661)))))

(declare-fun bs!396803 () Bool)

(assert (= bs!396803 d!499265))

(declare-fun m!2008671 () Bool)

(assert (=> bs!396803 m!2008671))

(assert (=> b!1654673 d!499265))

(declare-fun d!499267 () Bool)

(declare-fun lt!617079 () BalanceConc!12124)

(assert (=> d!499267 (= (list!7277 lt!617079) (printList!963 thiss!17113 (list!7278 lt!616668)))))

(assert (=> d!499267 (= lt!617079 (printTailRec!901 thiss!17113 lt!616668 0 (BalanceConc!12125 Empty!6090)))))

(assert (=> d!499267 (= (print!1381 thiss!17113 lt!616668) lt!617079)))

(declare-fun bs!396804 () Bool)

(assert (= bs!396804 d!499267))

(declare-fun m!2008673 () Bool)

(assert (=> bs!396804 m!2008673))

(declare-fun m!2008675 () Bool)

(assert (=> bs!396804 m!2008675))

(assert (=> bs!396804 m!2008675))

(declare-fun m!2008677 () Bool)

(assert (=> bs!396804 m!2008677))

(assert (=> bs!396804 m!2007753))

(assert (=> b!1654673 d!499267))

(declare-fun d!499269 () Bool)

(declare-fun lt!617099 () BalanceConc!12124)

(declare-fun printListTailRec!399 (LexerInterface!2850 List!18340 List!18338) List!18338)

(declare-fun dropList!685 (BalanceConc!12126 Int) List!18340)

(assert (=> d!499269 (= (list!7277 lt!617099) (printListTailRec!399 thiss!17113 (dropList!685 lt!616668 0) (list!7277 (BalanceConc!12125 Empty!6090))))))

(declare-fun e!1061268 () BalanceConc!12124)

(assert (=> d!499269 (= lt!617099 e!1061268)))

(declare-fun c!269210 () Bool)

(assert (=> d!499269 (= c!269210 (>= 0 (size!14542 lt!616668)))))

(declare-fun e!1061267 () Bool)

(assert (=> d!499269 e!1061267))

(declare-fun res!742146 () Bool)

(assert (=> d!499269 (=> (not res!742146) (not e!1061267))))

(assert (=> d!499269 (= res!742146 (>= 0 0))))

(assert (=> d!499269 (= (printTailRec!901 thiss!17113 lt!616668 0 (BalanceConc!12125 Empty!6090)) lt!617099)))

(declare-fun b!1655046 () Bool)

(assert (=> b!1655046 (= e!1061267 (<= 0 (size!14542 lt!616668)))))

(declare-fun b!1655047 () Bool)

(assert (=> b!1655047 (= e!1061268 (BalanceConc!12125 Empty!6090))))

(declare-fun b!1655048 () Bool)

(declare-fun apply!4849 (BalanceConc!12126 Int) Token!6008)

(assert (=> b!1655048 (= e!1061268 (printTailRec!901 thiss!17113 lt!616668 (+ 0 1) (++!4952 (BalanceConc!12125 Empty!6090) (charsOf!1870 (apply!4849 lt!616668 0)))))))

(declare-fun lt!617100 () List!18340)

(assert (=> b!1655048 (= lt!617100 (list!7278 lt!616668))))

(declare-fun lt!617096 () Unit!30587)

(declare-fun lemmaDropApply!606 (List!18340 Int) Unit!30587)

(assert (=> b!1655048 (= lt!617096 (lemmaDropApply!606 lt!617100 0))))

(declare-fun drop!920 (List!18340 Int) List!18340)

(declare-fun apply!4850 (List!18340 Int) Token!6008)

(assert (=> b!1655048 (= (head!3667 (drop!920 lt!617100 0)) (apply!4850 lt!617100 0))))

(declare-fun lt!617098 () Unit!30587)

(assert (=> b!1655048 (= lt!617098 lt!617096)))

(declare-fun lt!617097 () List!18340)

(assert (=> b!1655048 (= lt!617097 (list!7278 lt!616668))))

(declare-fun lt!617094 () Unit!30587)

(declare-fun lemmaDropTail!586 (List!18340 Int) Unit!30587)

(assert (=> b!1655048 (= lt!617094 (lemmaDropTail!586 lt!617097 0))))

(declare-fun tail!2458 (List!18340) List!18340)

(assert (=> b!1655048 (= (tail!2458 (drop!920 lt!617097 0)) (drop!920 lt!617097 (+ 0 1)))))

(declare-fun lt!617095 () Unit!30587)

(assert (=> b!1655048 (= lt!617095 lt!617094)))

(assert (= (and d!499269 res!742146) b!1655046))

(assert (= (and d!499269 c!269210) b!1655047))

(assert (= (and d!499269 (not c!269210)) b!1655048))

(declare-fun m!2008679 () Bool)

(assert (=> d!499269 m!2008679))

(declare-fun m!2008681 () Bool)

(assert (=> d!499269 m!2008681))

(declare-fun m!2008683 () Bool)

(assert (=> d!499269 m!2008683))

(declare-fun m!2008685 () Bool)

(assert (=> d!499269 m!2008685))

(assert (=> d!499269 m!2008683))

(assert (=> d!499269 m!2008681))

(declare-fun m!2008687 () Bool)

(assert (=> d!499269 m!2008687))

(assert (=> b!1655046 m!2008679))

(declare-fun m!2008689 () Bool)

(assert (=> b!1655048 m!2008689))

(declare-fun m!2008691 () Bool)

(assert (=> b!1655048 m!2008691))

(declare-fun m!2008693 () Bool)

(assert (=> b!1655048 m!2008693))

(declare-fun m!2008695 () Bool)

(assert (=> b!1655048 m!2008695))

(declare-fun m!2008697 () Bool)

(assert (=> b!1655048 m!2008697))

(declare-fun m!2008699 () Bool)

(assert (=> b!1655048 m!2008699))

(declare-fun m!2008701 () Bool)

(assert (=> b!1655048 m!2008701))

(declare-fun m!2008703 () Bool)

(assert (=> b!1655048 m!2008703))

(declare-fun m!2008705 () Bool)

(assert (=> b!1655048 m!2008705))

(assert (=> b!1655048 m!2008689))

(declare-fun m!2008707 () Bool)

(assert (=> b!1655048 m!2008707))

(assert (=> b!1655048 m!2008703))

(assert (=> b!1655048 m!2008705))

(assert (=> b!1655048 m!2008693))

(declare-fun m!2008709 () Bool)

(assert (=> b!1655048 m!2008709))

(assert (=> b!1655048 m!2008675))

(declare-fun m!2008711 () Bool)

(assert (=> b!1655048 m!2008711))

(assert (=> b!1655048 m!2008697))

(assert (=> b!1654673 d!499269))

(declare-fun d!499271 () Bool)

(declare-fun c!269213 () Bool)

(assert (=> d!499271 (= c!269213 ((_ is Cons!18270) (Cons!18270 (h!23671 tokens!457) Nil!18270)))))

(declare-fun e!1061271 () List!18338)

(assert (=> d!499271 (= (printList!963 thiss!17113 (Cons!18270 (h!23671 tokens!457) Nil!18270)) e!1061271)))

(declare-fun b!1655053 () Bool)

(assert (=> b!1655053 (= e!1061271 (++!4951 (list!7277 (charsOf!1870 (h!23671 (Cons!18270 (h!23671 tokens!457) Nil!18270)))) (printList!963 thiss!17113 (t!151177 (Cons!18270 (h!23671 tokens!457) Nil!18270)))))))

(declare-fun b!1655054 () Bool)

(assert (=> b!1655054 (= e!1061271 Nil!18268)))

(assert (= (and d!499271 c!269213) b!1655053))

(assert (= (and d!499271 (not c!269213)) b!1655054))

(declare-fun m!2008713 () Bool)

(assert (=> b!1655053 m!2008713))

(assert (=> b!1655053 m!2008713))

(declare-fun m!2008715 () Bool)

(assert (=> b!1655053 m!2008715))

(declare-fun m!2008717 () Bool)

(assert (=> b!1655053 m!2008717))

(assert (=> b!1655053 m!2008715))

(assert (=> b!1655053 m!2008717))

(declare-fun m!2008719 () Bool)

(assert (=> b!1655053 m!2008719))

(assert (=> b!1654673 d!499271))

(declare-fun d!499273 () Bool)

(declare-fun e!1061274 () Bool)

(assert (=> d!499273 e!1061274))

(declare-fun res!742149 () Bool)

(assert (=> d!499273 (=> (not res!742149) (not e!1061274))))

(declare-fun lt!617103 () BalanceConc!12126)

(assert (=> d!499273 (= res!742149 (= (list!7278 lt!617103) (Cons!18270 (h!23671 tokens!457) Nil!18270)))))

(declare-fun singleton!747 (Token!6008) BalanceConc!12126)

(assert (=> d!499273 (= lt!617103 (singleton!747 (h!23671 tokens!457)))))

(assert (=> d!499273 (= (singletonSeq!1714 (h!23671 tokens!457)) lt!617103)))

(declare-fun b!1655057 () Bool)

(assert (=> b!1655057 (= e!1061274 (isBalanced!1873 (c!269147 lt!617103)))))

(assert (= (and d!499273 res!742149) b!1655057))

(declare-fun m!2008721 () Bool)

(assert (=> d!499273 m!2008721))

(declare-fun m!2008723 () Bool)

(assert (=> d!499273 m!2008723))

(declare-fun m!2008725 () Bool)

(assert (=> b!1655057 m!2008725))

(assert (=> b!1654673 d!499273))

(declare-fun d!499275 () Bool)

(declare-fun c!269214 () Bool)

(assert (=> d!499275 (= c!269214 (isEmpty!11306 (++!4951 lt!616664 lt!616656)))))

(declare-fun e!1061275 () Bool)

(assert (=> d!499275 (= (prefixMatch!466 lt!616658 (++!4951 lt!616664 lt!616656)) e!1061275)))

(declare-fun b!1655058 () Bool)

(assert (=> b!1655058 (= e!1061275 (not (lostCause!466 lt!616658)))))

(declare-fun b!1655059 () Bool)

(assert (=> b!1655059 (= e!1061275 (prefixMatch!466 (derivativeStep!1116 lt!616658 (head!3665 (++!4951 lt!616664 lt!616656))) (tail!2456 (++!4951 lt!616664 lt!616656))))))

(assert (= (and d!499275 c!269214) b!1655058))

(assert (= (and d!499275 (not c!269214)) b!1655059))

(assert (=> d!499275 m!2007765))

(declare-fun m!2008727 () Bool)

(assert (=> d!499275 m!2008727))

(assert (=> b!1655058 m!2008093))

(assert (=> b!1655059 m!2007765))

(declare-fun m!2008729 () Bool)

(assert (=> b!1655059 m!2008729))

(assert (=> b!1655059 m!2008729))

(declare-fun m!2008731 () Bool)

(assert (=> b!1655059 m!2008731))

(assert (=> b!1655059 m!2007765))

(declare-fun m!2008733 () Bool)

(assert (=> b!1655059 m!2008733))

(assert (=> b!1655059 m!2008731))

(assert (=> b!1655059 m!2008733))

(declare-fun m!2008735 () Bool)

(assert (=> b!1655059 m!2008735))

(assert (=> b!1654695 d!499275))

(declare-fun b!1655063 () Bool)

(declare-fun lt!617104 () List!18338)

(declare-fun e!1061277 () Bool)

(assert (=> b!1655063 (= e!1061277 (or (not (= lt!616656 Nil!18268)) (= lt!617104 lt!616664)))))

(declare-fun b!1655062 () Bool)

(declare-fun res!742151 () Bool)

(assert (=> b!1655062 (=> (not res!742151) (not e!1061277))))

(assert (=> b!1655062 (= res!742151 (= (size!14540 lt!617104) (+ (size!14540 lt!616664) (size!14540 lt!616656))))))

(declare-fun b!1655060 () Bool)

(declare-fun e!1061276 () List!18338)

(assert (=> b!1655060 (= e!1061276 lt!616656)))

(declare-fun b!1655061 () Bool)

(assert (=> b!1655061 (= e!1061276 (Cons!18268 (h!23669 lt!616664) (++!4951 (t!151175 lt!616664) lt!616656)))))

(declare-fun d!499277 () Bool)

(assert (=> d!499277 e!1061277))

(declare-fun res!742150 () Bool)

(assert (=> d!499277 (=> (not res!742150) (not e!1061277))))

(assert (=> d!499277 (= res!742150 (= (content!2541 lt!617104) ((_ map or) (content!2541 lt!616664) (content!2541 lt!616656))))))

(assert (=> d!499277 (= lt!617104 e!1061276)))

(declare-fun c!269215 () Bool)

(assert (=> d!499277 (= c!269215 ((_ is Nil!18268) lt!616664))))

(assert (=> d!499277 (= (++!4951 lt!616664 lt!616656) lt!617104)))

(assert (= (and d!499277 c!269215) b!1655060))

(assert (= (and d!499277 (not c!269215)) b!1655061))

(assert (= (and d!499277 res!742150) b!1655062))

(assert (= (and b!1655062 res!742151) b!1655063))

(declare-fun m!2008737 () Bool)

(assert (=> b!1655062 m!2008737))

(assert (=> b!1655062 m!2008123))

(declare-fun m!2008739 () Bool)

(assert (=> b!1655062 m!2008739))

(declare-fun m!2008741 () Bool)

(assert (=> b!1655061 m!2008741))

(declare-fun m!2008743 () Bool)

(assert (=> d!499277 m!2008743))

(declare-fun m!2008745 () Bool)

(assert (=> d!499277 m!2008745))

(declare-fun m!2008747 () Bool)

(assert (=> d!499277 m!2008747))

(assert (=> b!1654695 d!499277))

(declare-fun d!499279 () Bool)

(assert (=> d!499279 (= (list!7277 lt!616674) (list!7282 (c!269145 lt!616674)))))

(declare-fun bs!396805 () Bool)

(assert (= bs!396805 d!499279))

(declare-fun m!2008749 () Bool)

(assert (=> bs!396805 m!2008749))

(assert (=> b!1654695 d!499279))

(declare-fun b!1655092 () Bool)

(declare-fun e!1061294 () Bool)

(assert (=> b!1655092 (= e!1061294 (= (head!3665 lt!616664) (c!269146 (regex!3221 (rule!5089 (h!23671 tokens!457))))))))

(declare-fun b!1655093 () Bool)

(declare-fun e!1061296 () Bool)

(declare-fun e!1061295 () Bool)

(assert (=> b!1655093 (= e!1061296 e!1061295)))

(declare-fun res!742168 () Bool)

(assert (=> b!1655093 (=> res!742168 e!1061295)))

(declare-fun call!106095 () Bool)

(assert (=> b!1655093 (= res!742168 call!106095)))

(declare-fun b!1655094 () Bool)

(declare-fun res!742175 () Bool)

(assert (=> b!1655094 (=> res!742175 e!1061295)))

(assert (=> b!1655094 (= res!742175 (not (isEmpty!11306 (tail!2456 lt!616664))))))

(declare-fun b!1655095 () Bool)

(declare-fun res!742169 () Bool)

(assert (=> b!1655095 (=> (not res!742169) (not e!1061294))))

(assert (=> b!1655095 (= res!742169 (not call!106095))))

(declare-fun b!1655096 () Bool)

(assert (=> b!1655096 (= e!1061295 (not (= (head!3665 lt!616664) (c!269146 (regex!3221 (rule!5089 (h!23671 tokens!457)))))))))

(declare-fun b!1655097 () Bool)

(declare-fun res!742172 () Bool)

(declare-fun e!1061298 () Bool)

(assert (=> b!1655097 (=> res!742172 e!1061298)))

(assert (=> b!1655097 (= res!742172 e!1061294)))

(declare-fun res!742171 () Bool)

(assert (=> b!1655097 (=> (not res!742171) (not e!1061294))))

(declare-fun lt!617107 () Bool)

(assert (=> b!1655097 (= res!742171 lt!617107)))

(declare-fun b!1655098 () Bool)

(declare-fun e!1061292 () Bool)

(assert (=> b!1655098 (= e!1061292 (not lt!617107))))

(declare-fun bm!106090 () Bool)

(assert (=> bm!106090 (= call!106095 (isEmpty!11306 lt!616664))))

(declare-fun b!1655099 () Bool)

(declare-fun e!1061293 () Bool)

(assert (=> b!1655099 (= e!1061293 (= lt!617107 call!106095))))

(declare-fun b!1655100 () Bool)

(assert (=> b!1655100 (= e!1061293 e!1061292)))

(declare-fun c!269224 () Bool)

(assert (=> b!1655100 (= c!269224 ((_ is EmptyLang!4549) (regex!3221 (rule!5089 (h!23671 tokens!457)))))))

(declare-fun b!1655101 () Bool)

(declare-fun e!1061297 () Bool)

(declare-fun nullable!1349 (Regex!4549) Bool)

(assert (=> b!1655101 (= e!1061297 (nullable!1349 (regex!3221 (rule!5089 (h!23671 tokens!457)))))))

(declare-fun d!499281 () Bool)

(assert (=> d!499281 e!1061293))

(declare-fun c!269222 () Bool)

(assert (=> d!499281 (= c!269222 ((_ is EmptyExpr!4549) (regex!3221 (rule!5089 (h!23671 tokens!457)))))))

(assert (=> d!499281 (= lt!617107 e!1061297)))

(declare-fun c!269223 () Bool)

(assert (=> d!499281 (= c!269223 (isEmpty!11306 lt!616664))))

(assert (=> d!499281 (validRegex!1813 (regex!3221 (rule!5089 (h!23671 tokens!457))))))

(assert (=> d!499281 (= (matchR!2042 (regex!3221 (rule!5089 (h!23671 tokens!457))) lt!616664) lt!617107)))

(declare-fun b!1655102 () Bool)

(declare-fun res!742173 () Bool)

(assert (=> b!1655102 (=> (not res!742173) (not e!1061294))))

(assert (=> b!1655102 (= res!742173 (isEmpty!11306 (tail!2456 lt!616664)))))

(declare-fun b!1655103 () Bool)

(declare-fun res!742174 () Bool)

(assert (=> b!1655103 (=> res!742174 e!1061298)))

(assert (=> b!1655103 (= res!742174 (not ((_ is ElementMatch!4549) (regex!3221 (rule!5089 (h!23671 tokens!457))))))))

(assert (=> b!1655103 (= e!1061292 e!1061298)))

(declare-fun b!1655104 () Bool)

(assert (=> b!1655104 (= e!1061298 e!1061296)))

(declare-fun res!742170 () Bool)

(assert (=> b!1655104 (=> (not res!742170) (not e!1061296))))

(assert (=> b!1655104 (= res!742170 (not lt!617107))))

(declare-fun b!1655105 () Bool)

(assert (=> b!1655105 (= e!1061297 (matchR!2042 (derivativeStep!1116 (regex!3221 (rule!5089 (h!23671 tokens!457))) (head!3665 lt!616664)) (tail!2456 lt!616664)))))

(assert (= (and d!499281 c!269223) b!1655101))

(assert (= (and d!499281 (not c!269223)) b!1655105))

(assert (= (and d!499281 c!269222) b!1655099))

(assert (= (and d!499281 (not c!269222)) b!1655100))

(assert (= (and b!1655100 c!269224) b!1655098))

(assert (= (and b!1655100 (not c!269224)) b!1655103))

(assert (= (and b!1655103 (not res!742174)) b!1655097))

(assert (= (and b!1655097 res!742171) b!1655095))

(assert (= (and b!1655095 res!742169) b!1655102))

(assert (= (and b!1655102 res!742173) b!1655092))

(assert (= (and b!1655097 (not res!742172)) b!1655104))

(assert (= (and b!1655104 res!742170) b!1655093))

(assert (= (and b!1655093 (not res!742168)) b!1655094))

(assert (= (and b!1655094 (not res!742175)) b!1655096))

(assert (= (or b!1655099 b!1655093 b!1655095) bm!106090))

(declare-fun m!2008751 () Bool)

(assert (=> bm!106090 m!2008751))

(declare-fun m!2008753 () Bool)

(assert (=> b!1655101 m!2008753))

(assert (=> b!1655096 m!2008609))

(assert (=> b!1655102 m!2008603))

(assert (=> b!1655102 m!2008603))

(declare-fun m!2008755 () Bool)

(assert (=> b!1655102 m!2008755))

(assert (=> b!1655105 m!2008609))

(assert (=> b!1655105 m!2008609))

(declare-fun m!2008757 () Bool)

(assert (=> b!1655105 m!2008757))

(assert (=> b!1655105 m!2008603))

(assert (=> b!1655105 m!2008757))

(assert (=> b!1655105 m!2008603))

(declare-fun m!2008759 () Bool)

(assert (=> b!1655105 m!2008759))

(assert (=> b!1655092 m!2008609))

(assert (=> d!499281 m!2008751))

(declare-fun m!2008761 () Bool)

(assert (=> d!499281 m!2008761))

(assert (=> b!1655094 m!2008603))

(assert (=> b!1655094 m!2008603))

(assert (=> b!1655094 m!2008755))

(assert (=> b!1654693 d!499281))

(declare-fun d!499283 () Bool)

(declare-fun isEmpty!11317 (Option!3483) Bool)

(assert (=> d!499283 (= (isDefined!2838 (maxPrefixZipperSequence!727 thiss!17113 rules!1846 (seqFromList!2181 (originalCharacters!4035 (h!23671 tokens!457))))) (not (isEmpty!11317 (maxPrefixZipperSequence!727 thiss!17113 rules!1846 (seqFromList!2181 (originalCharacters!4035 (h!23671 tokens!457)))))))))

(declare-fun bs!396806 () Bool)

(assert (= bs!396806 d!499283))

(assert (=> bs!396806 m!2007789))

(declare-fun m!2008763 () Bool)

(assert (=> bs!396806 m!2008763))

(assert (=> b!1654670 d!499283))

(declare-fun b!1655122 () Bool)

(declare-fun e!1061313 () Bool)

(declare-fun e!1061315 () Bool)

(assert (=> b!1655122 (= e!1061313 e!1061315)))

(declare-fun res!742193 () Bool)

(assert (=> b!1655122 (=> (not res!742193) (not e!1061315))))

(declare-fun lt!617128 () Option!3483)

(declare-fun get!5332 (Option!3483) tuple2!17962)

(assert (=> b!1655122 (= res!742193 (= (_1!10383 (get!5332 lt!617128)) (_1!10384 (get!5328 (maxPrefixZipper!348 thiss!17113 rules!1846 (list!7277 (seqFromList!2181 (originalCharacters!4035 (h!23671 tokens!457)))))))))))

(declare-fun d!499285 () Bool)

(declare-fun e!1061316 () Bool)

(assert (=> d!499285 e!1061316))

(declare-fun res!742190 () Bool)

(assert (=> d!499285 (=> (not res!742190) (not e!1061316))))

(assert (=> d!499285 (= res!742190 (= (isDefined!2838 lt!617128) (isDefined!2839 (maxPrefixZipper!348 thiss!17113 rules!1846 (list!7277 (seqFromList!2181 (originalCharacters!4035 (h!23671 tokens!457))))))))))

(declare-fun e!1061314 () Option!3483)

(assert (=> d!499285 (= lt!617128 e!1061314)))

(declare-fun c!269227 () Bool)

(assert (=> d!499285 (= c!269227 (and ((_ is Cons!18269) rules!1846) ((_ is Nil!18269) (t!151176 rules!1846))))))

(declare-fun lt!617127 () Unit!30587)

(declare-fun lt!617126 () Unit!30587)

(assert (=> d!499285 (= lt!617127 lt!617126)))

(declare-fun lt!617125 () List!18338)

(declare-fun lt!617124 () List!18338)

(assert (=> d!499285 (isPrefix!1479 lt!617125 lt!617124)))

(assert (=> d!499285 (= lt!617126 (lemmaIsPrefixRefl!1002 lt!617125 lt!617124))))

(assert (=> d!499285 (= lt!617124 (list!7277 (seqFromList!2181 (originalCharacters!4035 (h!23671 tokens!457)))))))

(assert (=> d!499285 (= lt!617125 (list!7277 (seqFromList!2181 (originalCharacters!4035 (h!23671 tokens!457)))))))

(assert (=> d!499285 (rulesValidInductive!1024 thiss!17113 rules!1846)))

(assert (=> d!499285 (= (maxPrefixZipperSequence!727 thiss!17113 rules!1846 (seqFromList!2181 (originalCharacters!4035 (h!23671 tokens!457)))) lt!617128)))

(declare-fun b!1655123 () Bool)

(declare-fun res!742188 () Bool)

(assert (=> b!1655123 (=> (not res!742188) (not e!1061316))))

(assert (=> b!1655123 (= res!742188 e!1061313)))

(declare-fun res!742191 () Bool)

(assert (=> b!1655123 (=> res!742191 e!1061313)))

(assert (=> b!1655123 (= res!742191 (not (isDefined!2838 lt!617128)))))

(declare-fun b!1655124 () Bool)

(declare-fun call!106098 () Option!3483)

(assert (=> b!1655124 (= e!1061314 call!106098)))

(declare-fun b!1655125 () Bool)

(declare-fun e!1061312 () Bool)

(assert (=> b!1655125 (= e!1061312 (= (list!7277 (_2!10383 (get!5332 lt!617128))) (_2!10384 (get!5328 (maxPrefix!1412 thiss!17113 rules!1846 (list!7277 (seqFromList!2181 (originalCharacters!4035 (h!23671 tokens!457)))))))))))

(declare-fun bm!106093 () Bool)

(declare-fun maxPrefixOneRuleZipperSequence!342 (LexerInterface!2850 Rule!6242 BalanceConc!12124) Option!3483)

(assert (=> bm!106093 (= call!106098 (maxPrefixOneRuleZipperSequence!342 thiss!17113 (h!23670 rules!1846) (seqFromList!2181 (originalCharacters!4035 (h!23671 tokens!457)))))))

(declare-fun b!1655126 () Bool)

(declare-fun e!1061311 () Bool)

(assert (=> b!1655126 (= e!1061311 e!1061312)))

(declare-fun res!742192 () Bool)

(assert (=> b!1655126 (=> (not res!742192) (not e!1061312))))

(assert (=> b!1655126 (= res!742192 (= (_1!10383 (get!5332 lt!617128)) (_1!10384 (get!5328 (maxPrefix!1412 thiss!17113 rules!1846 (list!7277 (seqFromList!2181 (originalCharacters!4035 (h!23671 tokens!457)))))))))))

(declare-fun b!1655127 () Bool)

(declare-fun lt!617123 () Option!3483)

(declare-fun lt!617122 () Option!3483)

(assert (=> b!1655127 (= e!1061314 (ite (and ((_ is None!3482) lt!617123) ((_ is None!3482) lt!617122)) None!3482 (ite ((_ is None!3482) lt!617122) lt!617123 (ite ((_ is None!3482) lt!617123) lt!617122 (ite (>= (size!14536 (_1!10383 (v!24673 lt!617123))) (size!14536 (_1!10383 (v!24673 lt!617122)))) lt!617123 lt!617122)))))))

(assert (=> b!1655127 (= lt!617123 call!106098)))

(assert (=> b!1655127 (= lt!617122 (maxPrefixZipperSequence!727 thiss!17113 (t!151176 rules!1846) (seqFromList!2181 (originalCharacters!4035 (h!23671 tokens!457)))))))

(declare-fun b!1655128 () Bool)

(assert (=> b!1655128 (= e!1061315 (= (list!7277 (_2!10383 (get!5332 lt!617128))) (_2!10384 (get!5328 (maxPrefixZipper!348 thiss!17113 rules!1846 (list!7277 (seqFromList!2181 (originalCharacters!4035 (h!23671 tokens!457)))))))))))

(declare-fun b!1655129 () Bool)

(assert (=> b!1655129 (= e!1061316 e!1061311)))

(declare-fun res!742189 () Bool)

(assert (=> b!1655129 (=> res!742189 e!1061311)))

(assert (=> b!1655129 (= res!742189 (not (isDefined!2838 lt!617128)))))

(assert (= (and d!499285 c!269227) b!1655124))

(assert (= (and d!499285 (not c!269227)) b!1655127))

(assert (= (or b!1655124 b!1655127) bm!106093))

(assert (= (and d!499285 res!742190) b!1655123))

(assert (= (and b!1655123 (not res!742191)) b!1655122))

(assert (= (and b!1655122 res!742193) b!1655128))

(assert (= (and b!1655123 res!742188) b!1655129))

(assert (= (and b!1655129 (not res!742189)) b!1655126))

(assert (= (and b!1655126 res!742192) b!1655125))

(declare-fun m!2008765 () Bool)

(assert (=> b!1655129 m!2008765))

(declare-fun m!2008767 () Bool)

(assert (=> b!1655122 m!2008767))

(assert (=> b!1655122 m!2007787))

(declare-fun m!2008769 () Bool)

(assert (=> b!1655122 m!2008769))

(assert (=> b!1655122 m!2008769))

(declare-fun m!2008771 () Bool)

(assert (=> b!1655122 m!2008771))

(assert (=> b!1655122 m!2008771))

(declare-fun m!2008773 () Bool)

(assert (=> b!1655122 m!2008773))

(assert (=> b!1655123 m!2008765))

(assert (=> d!499285 m!2008043))

(declare-fun m!2008775 () Bool)

(assert (=> d!499285 m!2008775))

(assert (=> d!499285 m!2007787))

(assert (=> d!499285 m!2008769))

(declare-fun m!2008777 () Bool)

(assert (=> d!499285 m!2008777))

(assert (=> d!499285 m!2008771))

(declare-fun m!2008779 () Bool)

(assert (=> d!499285 m!2008779))

(assert (=> d!499285 m!2008769))

(assert (=> d!499285 m!2008771))

(assert (=> d!499285 m!2008765))

(assert (=> b!1655126 m!2008767))

(assert (=> b!1655126 m!2007787))

(assert (=> b!1655126 m!2008769))

(assert (=> b!1655126 m!2008769))

(declare-fun m!2008781 () Bool)

(assert (=> b!1655126 m!2008781))

(assert (=> b!1655126 m!2008781))

(declare-fun m!2008783 () Bool)

(assert (=> b!1655126 m!2008783))

(assert (=> b!1655127 m!2007787))

(declare-fun m!2008785 () Bool)

(assert (=> b!1655127 m!2008785))

(assert (=> b!1655125 m!2008781))

(assert (=> b!1655125 m!2008783))

(declare-fun m!2008787 () Bool)

(assert (=> b!1655125 m!2008787))

(assert (=> b!1655125 m!2008769))

(assert (=> b!1655125 m!2008781))

(assert (=> b!1655125 m!2007787))

(assert (=> b!1655125 m!2008769))

(assert (=> b!1655125 m!2008767))

(assert (=> b!1655128 m!2008771))

(assert (=> b!1655128 m!2008773))

(assert (=> b!1655128 m!2008769))

(assert (=> b!1655128 m!2008771))

(assert (=> b!1655128 m!2008787))

(assert (=> b!1655128 m!2007787))

(assert (=> b!1655128 m!2008769))

(assert (=> b!1655128 m!2008767))

(assert (=> bm!106093 m!2007787))

(declare-fun m!2008789 () Bool)

(assert (=> bm!106093 m!2008789))

(assert (=> b!1654670 d!499285))

(declare-fun d!499287 () Bool)

(assert (=> d!499287 (= (seqFromList!2181 (originalCharacters!4035 (h!23671 tokens!457))) (fromListB!978 (originalCharacters!4035 (h!23671 tokens!457))))))

(declare-fun bs!396807 () Bool)

(assert (= bs!396807 d!499287))

(declare-fun m!2008791 () Bool)

(assert (=> bs!396807 m!2008791))

(assert (=> b!1654670 d!499287))

(declare-fun d!499289 () Bool)

(declare-fun lt!617131 () C!9272)

(assert (=> d!499289 (= lt!617131 (head!3665 (list!7277 lt!616655)))))

(declare-fun head!3669 (Conc!6090) C!9272)

(assert (=> d!499289 (= lt!617131 (head!3669 (c!269145 lt!616655)))))

(assert (=> d!499289 (not (isEmpty!11316 lt!616655))))

(assert (=> d!499289 (= (head!3664 lt!616655) lt!617131)))

(declare-fun bs!396808 () Bool)

(assert (= bs!396808 d!499289))

(assert (=> bs!396808 m!2007861))

(assert (=> bs!396808 m!2007861))

(declare-fun m!2008793 () Bool)

(assert (=> bs!396808 m!2008793))

(declare-fun m!2008795 () Bool)

(assert (=> bs!396808 m!2008795))

(declare-fun m!2008797 () Bool)

(assert (=> bs!396808 m!2008797))

(assert (=> b!1654670 d!499289))

(declare-fun d!499291 () Bool)

(assert (=> d!499291 (= (get!5328 lt!616667) (v!24674 lt!616667))))

(assert (=> b!1654671 d!499291))

(declare-fun b!1655309 () Bool)

(declare-fun e!1061414 () Unit!30587)

(declare-fun Unit!30638 () Unit!30587)

(assert (=> b!1655309 (= e!1061414 Unit!30638)))

(declare-fun lt!617668 () Unit!30587)

(declare-fun lt!617649 () Token!6008)

(declare-fun lt!617616 () List!18338)

(declare-fun lt!617600 () List!18338)

(declare-fun lemmaMaxPrefixThenMatchesRulesRegex!60 (LexerInterface!2850 List!18339 List!18338 Token!6008 Rule!6242 List!18338) Unit!30587)

(assert (=> b!1655309 (= lt!617668 (lemmaMaxPrefixThenMatchesRulesRegex!60 thiss!17113 rules!1846 lt!617600 lt!617649 (rule!5089 lt!617649) lt!617616))))

(assert (=> b!1655309 (matchR!2042 (rulesRegex!605 thiss!17113 rules!1846) (list!7277 (charsOf!1870 lt!617649)))))

(declare-fun lt!617651 () Unit!30587)

(assert (=> b!1655309 (= lt!617651 lt!617668)))

(declare-fun lt!617643 () List!18338)

(assert (=> b!1655309 (= lt!617643 (list!7277 (charsOf!1870 (h!23671 tokens!457))))))

(declare-fun lt!617612 () List!18338)

(assert (=> b!1655309 (= lt!617612 (list!7277 (charsOf!1870 (h!23671 tokens!457))))))

(declare-fun lt!617670 () List!18338)

(declare-fun getSuffix!730 (List!18338 List!18338) List!18338)

(assert (=> b!1655309 (= lt!617670 (getSuffix!730 lt!617600 (list!7277 (charsOf!1870 (h!23671 tokens!457)))))))

(declare-fun lt!617662 () Unit!30587)

(declare-fun lemmaSamePrefixThenSameSuffix!682 (List!18338 List!18338 List!18338 List!18338 List!18338) Unit!30587)

(assert (=> b!1655309 (= lt!617662 (lemmaSamePrefixThenSameSuffix!682 lt!617643 lt!616662 lt!617612 lt!617670 lt!617600))))

(assert (=> b!1655309 (= lt!616662 lt!617670)))

(declare-fun lt!617650 () Unit!30587)

(assert (=> b!1655309 (= lt!617650 lt!617662)))

(declare-fun lt!617655 () List!18338)

(assert (=> b!1655309 (= lt!617655 (list!7277 (charsOf!1870 (h!23671 tokens!457))))))

(declare-fun lt!617633 () Unit!30587)

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!173 (List!18338 List!18338) Unit!30587)

(assert (=> b!1655309 (= lt!617633 (lemmaAddHeadSuffixToPrefixStillPrefix!173 lt!617655 lt!617600))))

(assert (=> b!1655309 (isPrefix!1479 (++!4951 lt!617655 (Cons!18268 (head!3665 (getSuffix!730 lt!617600 lt!617655)) Nil!18268)) lt!617600)))

(declare-fun lt!617622 () Unit!30587)

(assert (=> b!1655309 (= lt!617622 lt!617633)))

(declare-fun lt!617601 () List!18338)

(assert (=> b!1655309 (= lt!617601 (list!7277 (charsOf!1870 lt!617649)))))

(declare-fun lt!617661 () List!18338)

(assert (=> b!1655309 (= lt!617661 (++!4951 (list!7277 (charsOf!1870 (h!23671 tokens!457))) (Cons!18268 (head!3665 lt!616662) Nil!18268)))))

(declare-fun lt!617608 () Unit!30587)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!59 (List!18338 List!18338 List!18338) Unit!30587)

(assert (=> b!1655309 (= lt!617608 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!59 lt!617601 lt!617661 lt!617600))))

(assert (=> b!1655309 (isPrefix!1479 lt!617661 lt!617601)))

(declare-fun lt!617625 () Unit!30587)

(assert (=> b!1655309 (= lt!617625 lt!617608)))

(declare-fun lt!617644 () Regex!4549)

(assert (=> b!1655309 (= lt!617644 (rulesRegex!605 thiss!17113 rules!1846))))

(declare-fun lt!617623 () List!18338)

(assert (=> b!1655309 (= lt!617623 (++!4951 (list!7277 (charsOf!1870 (h!23671 tokens!457))) (Cons!18268 (head!3665 lt!616662) Nil!18268)))))

(declare-fun lt!617605 () List!18338)

(assert (=> b!1655309 (= lt!617605 (list!7277 (charsOf!1870 lt!617649)))))

(declare-fun lt!617657 () Unit!30587)

(declare-fun lemmaNotPrefixMatchThenCannotMatchLonger!60 (Regex!4549 List!18338 List!18338) Unit!30587)

(assert (=> b!1655309 (= lt!617657 (lemmaNotPrefixMatchThenCannotMatchLonger!60 lt!617644 lt!617623 lt!617605))))

(assert (=> b!1655309 (not (matchR!2042 lt!617644 lt!617605))))

(declare-fun lt!617654 () Unit!30587)

(assert (=> b!1655309 (= lt!617654 lt!617657)))

(assert (=> b!1655309 false))

(declare-fun e!1061418 () Bool)

(declare-fun b!1655310 () Bool)

(assert (=> b!1655310 (= e!1061418 (= (rule!5089 lt!617649) (get!5331 (getRuleFromTag!322 thiss!17113 rules!1846 (tag!3503 (rule!5089 lt!617649))))))))

(declare-fun b!1655311 () Bool)

(declare-fun e!1061415 () Unit!30587)

(declare-fun Unit!30639 () Unit!30587)

(assert (=> b!1655311 (= e!1061415 Unit!30639)))

(declare-fun b!1655312 () Bool)

(assert (=> b!1655312 false))

(declare-fun lt!617666 () Unit!30587)

(declare-fun lt!617630 () Unit!30587)

(assert (=> b!1655312 (= lt!617666 lt!617630)))

(declare-fun lt!617637 () List!18338)

(assert (=> b!1655312 (not (matchR!2042 (regex!3221 (rule!5089 (h!23671 tokens!457))) lt!617637))))

(declare-fun lemmaMaxPrefNoSmallerRuleMatches!100 (LexerInterface!2850 List!18339 Rule!6242 List!18338 List!18338 Rule!6242) Unit!30587)

(assert (=> b!1655312 (= lt!617630 (lemmaMaxPrefNoSmallerRuleMatches!100 thiss!17113 rules!1846 (rule!5089 lt!617649) lt!617637 lt!617600 (rule!5089 (h!23671 tokens!457))))))

(assert (=> b!1655312 (= lt!617637 (list!7277 (charsOf!1870 lt!617649)))))

(declare-fun Unit!30640 () Unit!30587)

(assert (=> b!1655312 (= e!1061415 Unit!30640)))

(declare-fun b!1655313 () Bool)

(declare-fun e!1061416 () Unit!30587)

(declare-fun Unit!30641 () Unit!30587)

(assert (=> b!1655313 (= e!1061416 Unit!30641)))

(declare-fun b!1655314 () Bool)

(declare-fun e!1061417 () Unit!30587)

(declare-fun Unit!30642 () Unit!30587)

(assert (=> b!1655314 (= e!1061417 Unit!30642)))

(declare-fun lt!617602 () List!18338)

(assert (=> b!1655314 (= lt!617602 (list!7277 (charsOf!1870 lt!617649)))))

(declare-fun lt!617613 () List!18338)

(assert (=> b!1655314 (= lt!617613 (list!7277 (charsOf!1870 (h!23671 tokens!457))))))

(declare-fun lt!617638 () Unit!30587)

(declare-fun lemmaMaxPrefixOutputsMaxPrefix!150 (LexerInterface!2850 List!18339 Rule!6242 List!18338 List!18338 List!18338 Rule!6242) Unit!30587)

(assert (=> b!1655314 (= lt!617638 (lemmaMaxPrefixOutputsMaxPrefix!150 thiss!17113 rules!1846 (rule!5089 lt!617649) lt!617602 lt!617600 lt!617613 (rule!5089 (h!23671 tokens!457))))))

(assert (=> b!1655314 (not (matchR!2042 (regex!3221 (rule!5089 (h!23671 tokens!457))) lt!617613))))

(declare-fun lt!617647 () Unit!30587)

(assert (=> b!1655314 (= lt!617647 lt!617638)))

(assert (=> b!1655314 false))

(declare-fun b!1655315 () Bool)

(assert (=> b!1655315 false))

(declare-fun lt!617629 () Unit!30587)

(declare-fun lt!617653 () Unit!30587)

(assert (=> b!1655315 (= lt!617629 lt!617653)))

(assert (=> b!1655315 (= (rule!5089 lt!617649) (rule!5089 (h!23671 tokens!457)))))

(declare-fun lemmaSameIndexThenSameElement!76 (List!18339 Rule!6242 Rule!6242) Unit!30587)

(assert (=> b!1655315 (= lt!617653 (lemmaSameIndexThenSameElement!76 rules!1846 (rule!5089 lt!617649) (rule!5089 (h!23671 tokens!457))))))

(declare-fun Unit!30643 () Unit!30587)

(assert (=> b!1655315 (= e!1061416 Unit!30643)))

(declare-fun b!1655316 () Bool)

(assert (=> b!1655316 false))

(declare-fun lt!617618 () Unit!30587)

(declare-fun lt!617624 () Unit!30587)

(assert (=> b!1655316 (= lt!617618 lt!617624)))

(declare-fun lt!617656 () List!18338)

(assert (=> b!1655316 (not (matchR!2042 (regex!3221 (rule!5089 lt!617649)) lt!617656))))

(assert (=> b!1655316 (= lt!617624 (lemmaMaxPrefNoSmallerRuleMatches!100 thiss!17113 rules!1846 (rule!5089 (h!23671 tokens!457)) lt!617656 (list!7277 (charsOf!1870 (h!23671 tokens!457))) (rule!5089 lt!617649)))))

(assert (=> b!1655316 (= lt!617656 (list!7277 (charsOf!1870 (h!23671 tokens!457))))))

(declare-fun e!1061419 () Unit!30587)

(declare-fun Unit!30644 () Unit!30587)

(assert (=> b!1655316 (= e!1061419 Unit!30644)))

(declare-fun b!1655317 () Bool)

(declare-fun e!1061413 () Unit!30587)

(declare-fun Unit!30645 () Unit!30587)

(assert (=> b!1655317 (= e!1061413 Unit!30645)))

(declare-fun c!269283 () Bool)

(declare-fun getIndex!128 (List!18339 Rule!6242) Int)

(assert (=> b!1655317 (= c!269283 (< (getIndex!128 rules!1846 (rule!5089 (h!23671 tokens!457))) (getIndex!128 rules!1846 (rule!5089 lt!617649))))))

(declare-fun lt!617639 () Unit!30587)

(assert (=> b!1655317 (= lt!617639 e!1061415)))

(declare-fun c!269284 () Bool)

(assert (=> b!1655317 (= c!269284 (< (getIndex!128 rules!1846 (rule!5089 lt!617649)) (getIndex!128 rules!1846 (rule!5089 (h!23671 tokens!457)))))))

(declare-fun lt!617663 () Unit!30587)

(assert (=> b!1655317 (= lt!617663 e!1061419)))

(declare-fun c!269287 () Bool)

(assert (=> b!1655317 (= c!269287 (= (getIndex!128 rules!1846 (rule!5089 lt!617649)) (getIndex!128 rules!1846 (rule!5089 (h!23671 tokens!457)))))))

(declare-fun lt!617614 () Unit!30587)

(assert (=> b!1655317 (= lt!617614 e!1061416)))

(assert (=> b!1655317 false))

(declare-fun b!1655319 () Bool)

(declare-fun Unit!30647 () Unit!30587)

(assert (=> b!1655319 (= e!1061414 Unit!30647)))

(declare-fun b!1655320 () Bool)

(declare-fun Unit!30648 () Unit!30587)

(assert (=> b!1655320 (= e!1061413 Unit!30648)))

(declare-fun b!1655321 () Bool)

(declare-fun res!742271 () Bool)

(assert (=> b!1655321 (=> (not res!742271) (not e!1061418))))

(assert (=> b!1655321 (= res!742271 (matchR!2042 (regex!3221 (get!5331 (getRuleFromTag!322 thiss!17113 rules!1846 (tag!3503 (rule!5089 lt!617649))))) (list!7277 (charsOf!1870 lt!617649))))))

(declare-fun b!1655322 () Bool)

(declare-fun Unit!30649 () Unit!30587)

(assert (=> b!1655322 (= e!1061419 Unit!30649)))

(declare-fun b!1655318 () Bool)

(declare-fun Unit!30650 () Unit!30587)

(assert (=> b!1655318 (= e!1061417 Unit!30650)))

(declare-fun d!499293 () Bool)

(assert (=> d!499293 (= (maxPrefix!1412 thiss!17113 rules!1846 (++!4951 (list!7277 (charsOf!1870 (h!23671 tokens!457))) lt!616662)) (Some!3483 (tuple2!17965 (h!23671 tokens!457) lt!616662)))))

(declare-fun lt!617620 () Unit!30587)

(declare-fun Unit!30651 () Unit!30587)

(assert (=> d!499293 (= lt!617620 Unit!30651)))

(declare-fun lt!617659 () Unit!30587)

(assert (=> d!499293 (= lt!617659 e!1061413)))

(declare-fun c!269285 () Bool)

(assert (=> d!499293 (= c!269285 (not (= (rule!5089 lt!617649) (rule!5089 (h!23671 tokens!457)))))))

(declare-fun lt!617658 () Unit!30587)

(declare-fun lt!617636 () Unit!30587)

(assert (=> d!499293 (= lt!617658 lt!617636)))

(assert (=> d!499293 (= lt!616662 lt!617616)))

(assert (=> d!499293 (= lt!617636 (lemmaSamePrefixThenSameSuffix!682 (list!7277 (charsOf!1870 (h!23671 tokens!457))) lt!616662 (list!7277 (charsOf!1870 (h!23671 tokens!457))) lt!617616 lt!617600))))

(declare-fun lt!617665 () Unit!30587)

(declare-fun lt!617646 () Unit!30587)

(assert (=> d!499293 (= lt!617665 lt!617646)))

(declare-fun lt!617632 () List!18338)

(declare-fun lt!617664 () List!18338)

(assert (=> d!499293 (= lt!617632 lt!617664)))

(declare-fun lemmaIsPrefixSameLengthThenSameList!183 (List!18338 List!18338 List!18338) Unit!30587)

(assert (=> d!499293 (= lt!617646 (lemmaIsPrefixSameLengthThenSameList!183 lt!617632 lt!617664 lt!617600))))

(assert (=> d!499293 (= lt!617664 (list!7277 (charsOf!1870 (h!23671 tokens!457))))))

(assert (=> d!499293 (= lt!617632 (list!7277 (charsOf!1870 lt!617649)))))

(declare-fun lt!617604 () Unit!30587)

(assert (=> d!499293 (= lt!617604 e!1061417)))

(declare-fun c!269286 () Bool)

(assert (=> d!499293 (= c!269286 (< (size!14541 (charsOf!1870 lt!617649)) (size!14541 (charsOf!1870 (h!23671 tokens!457)))))))

(declare-fun lt!617627 () Unit!30587)

(assert (=> d!499293 (= lt!617627 e!1061414)))

(declare-fun c!269282 () Bool)

(assert (=> d!499293 (= c!269282 (> (size!14541 (charsOf!1870 lt!617649)) (size!14541 (charsOf!1870 (h!23671 tokens!457)))))))

(declare-fun lt!617621 () Unit!30587)

(declare-fun lt!617626 () Unit!30587)

(assert (=> d!499293 (= lt!617621 lt!617626)))

(assert (=> d!499293 (matchR!2042 (rulesRegex!605 thiss!17113 rules!1846) (list!7277 (charsOf!1870 (h!23671 tokens!457))))))

(assert (=> d!499293 (= lt!617626 (lemmaMaxPrefixThenMatchesRulesRegex!60 thiss!17113 rules!1846 (list!7277 (charsOf!1870 (h!23671 tokens!457))) (h!23671 tokens!457) (rule!5089 (h!23671 tokens!457)) Nil!18268))))

(declare-fun lt!617660 () Unit!30587)

(declare-fun lt!617640 () Unit!30587)

(assert (=> d!499293 (= lt!617660 lt!617640)))

(declare-fun lt!617669 () List!18338)

(assert (=> d!499293 (= lt!617616 lt!617669)))

(declare-fun lt!617603 () List!18338)

(declare-fun lt!617611 () List!18338)

(assert (=> d!499293 (= lt!617640 (lemmaSamePrefixThenSameSuffix!682 lt!617611 lt!617616 lt!617603 lt!617669 lt!617600))))

(assert (=> d!499293 (= lt!617669 (getSuffix!730 lt!617600 (list!7277 (charsOf!1870 lt!617649))))))

(assert (=> d!499293 (= lt!617603 (list!7277 (charsOf!1870 lt!617649)))))

(assert (=> d!499293 (= lt!617611 (list!7277 (charsOf!1870 lt!617649)))))

(declare-fun lt!617609 () Unit!30587)

(declare-fun lt!617610 () Unit!30587)

(assert (=> d!499293 (= lt!617609 lt!617610)))

(declare-fun lt!617617 () List!18338)

(assert (=> d!499293 (= (maxPrefixOneRule!817 thiss!17113 (rule!5089 lt!617649) lt!617600) (Some!3483 (tuple2!17965 (Token!6009 (apply!4844 (transformation!3221 (rule!5089 lt!617649)) (seqFromList!2181 lt!617617)) (rule!5089 lt!617649) (size!14540 lt!617617) lt!617617) lt!617616)))))

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!249 (LexerInterface!2850 List!18339 List!18338 List!18338 List!18338 Rule!6242) Unit!30587)

(assert (=> d!499293 (= lt!617610 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!249 thiss!17113 rules!1846 lt!617617 lt!617600 lt!617616 (rule!5089 lt!617649)))))

(assert (=> d!499293 (= lt!617617 (list!7277 (charsOf!1870 lt!617649)))))

(declare-fun lt!617648 () Unit!30587)

(declare-fun lemmaCharactersSize!355 (Token!6008) Unit!30587)

(assert (=> d!499293 (= lt!617648 (lemmaCharactersSize!355 lt!617649))))

(declare-fun lt!617607 () Unit!30587)

(declare-fun lemmaEqSameImage!208 (TokenValueInjection!6282 BalanceConc!12124 BalanceConc!12124) Unit!30587)

(assert (=> d!499293 (= lt!617607 (lemmaEqSameImage!208 (transformation!3221 (rule!5089 lt!617649)) (charsOf!1870 lt!617649) (seqFromList!2181 (originalCharacters!4035 lt!617649))))))

(declare-fun lt!617635 () Unit!30587)

(declare-fun lemmaSemiInverse!423 (TokenValueInjection!6282 BalanceConc!12124) Unit!30587)

(assert (=> d!499293 (= lt!617635 (lemmaSemiInverse!423 (transformation!3221 (rule!5089 lt!617649)) (charsOf!1870 lt!617649)))))

(declare-fun lt!617642 () Unit!30587)

(declare-fun lemmaInv!488 (TokenValueInjection!6282) Unit!30587)

(assert (=> d!499293 (= lt!617642 (lemmaInv!488 (transformation!3221 (rule!5089 lt!617649))))))

(declare-fun lt!617645 () Unit!30587)

(declare-fun lt!617641 () Unit!30587)

(assert (=> d!499293 (= lt!617645 lt!617641)))

(declare-fun lt!617631 () List!18338)

(assert (=> d!499293 (isPrefix!1479 lt!617631 (++!4951 lt!617631 lt!617616))))

(assert (=> d!499293 (= lt!617641 (lemmaConcatTwoListThenFirstIsPrefix!1004 lt!617631 lt!617616))))

(assert (=> d!499293 (= lt!617631 (list!7277 (charsOf!1870 lt!617649)))))

(declare-fun lt!617619 () Unit!30587)

(declare-fun lt!617628 () Unit!30587)

(assert (=> d!499293 (= lt!617619 lt!617628)))

(assert (=> d!499293 e!1061418))

(declare-fun res!742270 () Bool)

(assert (=> d!499293 (=> (not res!742270) (not e!1061418))))

(assert (=> d!499293 (= res!742270 (isDefined!2840 (getRuleFromTag!322 thiss!17113 rules!1846 (tag!3503 (rule!5089 lt!617649)))))))

(assert (=> d!499293 (= lt!617628 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!321 thiss!17113 rules!1846 lt!617600 lt!617649))))

(declare-fun lt!617606 () Option!3484)

(assert (=> d!499293 (= lt!617616 (_2!10384 (get!5328 lt!617606)))))

(assert (=> d!499293 (= lt!617649 (_1!10384 (get!5328 lt!617606)))))

(declare-fun lt!617615 () Unit!30587)

(assert (=> d!499293 (= lt!617615 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!418 thiss!17113 rules!1846 (list!7277 (charsOf!1870 (h!23671 tokens!457))) lt!616662))))

(assert (=> d!499293 (= lt!617606 (maxPrefix!1412 thiss!17113 rules!1846 lt!617600))))

(declare-fun lt!617652 () Unit!30587)

(declare-fun lt!617634 () Unit!30587)

(assert (=> d!499293 (= lt!617652 lt!617634)))

(declare-fun lt!617667 () List!18338)

(assert (=> d!499293 (isPrefix!1479 lt!617667 (++!4951 lt!617667 lt!616662))))

(assert (=> d!499293 (= lt!617634 (lemmaConcatTwoListThenFirstIsPrefix!1004 lt!617667 lt!616662))))

(assert (=> d!499293 (= lt!617667 (list!7277 (charsOf!1870 (h!23671 tokens!457))))))

(assert (=> d!499293 (= lt!617600 (++!4951 (list!7277 (charsOf!1870 (h!23671 tokens!457))) lt!616662))))

(assert (=> d!499293 (not (isEmpty!11307 rules!1846))))

(assert (=> d!499293 (= (lemmaMaxPrefWithNoPrefixMatchAllRulesThenSuffixReturnSame!176 thiss!17113 rules!1846 (h!23671 tokens!457) (rule!5089 (h!23671 tokens!457)) lt!616662) lt!617620)))

(assert (= (and d!499293 res!742270) b!1655321))

(assert (= (and b!1655321 res!742271) b!1655310))

(assert (= (and d!499293 c!269282) b!1655309))

(assert (= (and d!499293 (not c!269282)) b!1655319))

(assert (= (and d!499293 c!269286) b!1655314))

(assert (= (and d!499293 (not c!269286)) b!1655318))

(assert (= (and d!499293 c!269285) b!1655317))

(assert (= (and d!499293 (not c!269285)) b!1655320))

(assert (= (and b!1655317 c!269283) b!1655312))

(assert (= (and b!1655317 (not c!269283)) b!1655311))

(assert (= (and b!1655317 c!269284) b!1655316))

(assert (= (and b!1655317 (not c!269284)) b!1655322))

(assert (= (and b!1655317 c!269287) b!1655315))

(assert (= (and b!1655317 (not c!269287)) b!1655313))

(declare-fun m!2009129 () Bool)

(assert (=> b!1655315 m!2009129))

(declare-fun m!2009131 () Bool)

(assert (=> d!499293 m!2009131))

(declare-fun m!2009133 () Bool)

(assert (=> d!499293 m!2009133))

(declare-fun m!2009135 () Bool)

(assert (=> d!499293 m!2009135))

(declare-fun m!2009137 () Bool)

(assert (=> d!499293 m!2009137))

(declare-fun m!2009139 () Bool)

(assert (=> d!499293 m!2009139))

(declare-fun m!2009141 () Bool)

(assert (=> d!499293 m!2009141))

(declare-fun m!2009143 () Bool)

(assert (=> d!499293 m!2009143))

(assert (=> d!499293 m!2007853))

(declare-fun m!2009145 () Bool)

(assert (=> d!499293 m!2009145))

(declare-fun m!2009147 () Bool)

(assert (=> d!499293 m!2009147))

(declare-fun m!2009149 () Bool)

(assert (=> d!499293 m!2009149))

(declare-fun m!2009151 () Bool)

(assert (=> d!499293 m!2009151))

(declare-fun m!2009153 () Bool)

(assert (=> d!499293 m!2009153))

(declare-fun m!2009155 () Bool)

(assert (=> d!499293 m!2009155))

(declare-fun m!2009157 () Bool)

(assert (=> d!499293 m!2009157))

(declare-fun m!2009159 () Bool)

(assert (=> d!499293 m!2009159))

(assert (=> d!499293 m!2009155))

(declare-fun m!2009161 () Bool)

(assert (=> d!499293 m!2009161))

(assert (=> d!499293 m!2007853))

(declare-fun m!2009163 () Bool)

(assert (=> d!499293 m!2009163))

(assert (=> d!499293 m!2009139))

(declare-fun m!2009165 () Bool)

(assert (=> d!499293 m!2009165))

(assert (=> d!499293 m!2009157))

(declare-fun m!2009167 () Bool)

(assert (=> d!499293 m!2009167))

(declare-fun m!2009169 () Bool)

(assert (=> d!499293 m!2009169))

(assert (=> d!499293 m!2009163))

(declare-fun m!2009171 () Bool)

(assert (=> d!499293 m!2009171))

(declare-fun m!2009173 () Bool)

(assert (=> d!499293 m!2009173))

(assert (=> d!499293 m!2009149))

(declare-fun m!2009175 () Bool)

(assert (=> d!499293 m!2009175))

(declare-fun m!2009177 () Bool)

(assert (=> d!499293 m!2009177))

(assert (=> d!499293 m!2009155))

(declare-fun m!2009179 () Bool)

(assert (=> d!499293 m!2009179))

(assert (=> d!499293 m!2007853))

(assert (=> d!499293 m!2009149))

(assert (=> d!499293 m!2007729))

(assert (=> d!499293 m!2009149))

(assert (=> d!499293 m!2009167))

(assert (=> d!499293 m!2007807))

(declare-fun m!2009181 () Bool)

(assert (=> d!499293 m!2009181))

(declare-fun m!2009183 () Bool)

(assert (=> d!499293 m!2009183))

(assert (=> d!499293 m!2007807))

(assert (=> d!499293 m!2009149))

(declare-fun m!2009185 () Bool)

(assert (=> d!499293 m!2009185))

(assert (=> d!499293 m!2009161))

(declare-fun m!2009187 () Bool)

(assert (=> d!499293 m!2009187))

(assert (=> d!499293 m!2009149))

(assert (=> d!499293 m!2009149))

(declare-fun m!2009189 () Bool)

(assert (=> d!499293 m!2009189))

(declare-fun m!2009191 () Bool)

(assert (=> d!499293 m!2009191))

(assert (=> d!499293 m!2009155))

(declare-fun m!2009193 () Bool)

(assert (=> d!499293 m!2009193))

(declare-fun m!2009195 () Bool)

(assert (=> d!499293 m!2009195))

(assert (=> d!499293 m!2009155))

(assert (=> d!499293 m!2009165))

(declare-fun m!2009197 () Bool)

(assert (=> d!499293 m!2009197))

(assert (=> d!499293 m!2009147))

(declare-fun m!2009199 () Bool)

(assert (=> d!499293 m!2009199))

(declare-fun m!2009201 () Bool)

(assert (=> b!1655314 m!2009201))

(assert (=> b!1655314 m!2007853))

(assert (=> b!1655314 m!2009149))

(declare-fun m!2009203 () Bool)

(assert (=> b!1655314 m!2009203))

(assert (=> b!1655314 m!2009155))

(assert (=> b!1655314 m!2009155))

(assert (=> b!1655314 m!2009161))

(assert (=> b!1655314 m!2007853))

(assert (=> b!1655310 m!2009147))

(assert (=> b!1655310 m!2009147))

(declare-fun m!2009205 () Bool)

(assert (=> b!1655310 m!2009205))

(declare-fun m!2009207 () Bool)

(assert (=> b!1655316 m!2009207))

(assert (=> b!1655316 m!2007853))

(assert (=> b!1655316 m!2007853))

(assert (=> b!1655316 m!2009149))

(assert (=> b!1655316 m!2009149))

(declare-fun m!2009209 () Bool)

(assert (=> b!1655316 m!2009209))

(declare-fun m!2009211 () Bool)

(assert (=> b!1655309 m!2009211))

(assert (=> b!1655309 m!2009149))

(declare-fun m!2009213 () Bool)

(assert (=> b!1655309 m!2009213))

(declare-fun m!2009215 () Bool)

(assert (=> b!1655309 m!2009215))

(assert (=> b!1655309 m!2007747))

(assert (=> b!1655309 m!2009149))

(declare-fun m!2009217 () Bool)

(assert (=> b!1655309 m!2009217))

(assert (=> b!1655309 m!2007853))

(assert (=> b!1655309 m!2009149))

(declare-fun m!2009219 () Bool)

(assert (=> b!1655309 m!2009219))

(declare-fun m!2009221 () Bool)

(assert (=> b!1655309 m!2009221))

(declare-fun m!2009223 () Bool)

(assert (=> b!1655309 m!2009223))

(declare-fun m!2009225 () Bool)

(assert (=> b!1655309 m!2009225))

(declare-fun m!2009227 () Bool)

(assert (=> b!1655309 m!2009227))

(assert (=> b!1655309 m!2009155))

(assert (=> b!1655309 m!2009161))

(assert (=> b!1655309 m!2007853))

(declare-fun m!2009229 () Bool)

(assert (=> b!1655309 m!2009229))

(declare-fun m!2009231 () Bool)

(assert (=> b!1655309 m!2009231))

(declare-fun m!2009233 () Bool)

(assert (=> b!1655309 m!2009233))

(assert (=> b!1655309 m!2009223))

(assert (=> b!1655309 m!2007807))

(assert (=> b!1655309 m!2009161))

(declare-fun m!2009235 () Bool)

(assert (=> b!1655309 m!2009235))

(declare-fun m!2009237 () Bool)

(assert (=> b!1655309 m!2009237))

(assert (=> b!1655309 m!2007807))

(assert (=> b!1655309 m!2009155))

(assert (=> b!1655309 m!2009231))

(declare-fun m!2009239 () Bool)

(assert (=> b!1655312 m!2009239))

(declare-fun m!2009241 () Bool)

(assert (=> b!1655312 m!2009241))

(assert (=> b!1655312 m!2009155))

(assert (=> b!1655312 m!2009155))

(assert (=> b!1655312 m!2009161))

(declare-fun m!2009243 () Bool)

(assert (=> b!1655317 m!2009243))

(declare-fun m!2009245 () Bool)

(assert (=> b!1655317 m!2009245))

(assert (=> b!1655321 m!2009155))

(assert (=> b!1655321 m!2009161))

(assert (=> b!1655321 m!2009147))

(assert (=> b!1655321 m!2009205))

(assert (=> b!1655321 m!2009161))

(declare-fun m!2009247 () Bool)

(assert (=> b!1655321 m!2009247))

(assert (=> b!1655321 m!2009147))

(assert (=> b!1655321 m!2009155))

(assert (=> b!1654671 d!499293))

(declare-fun d!499343 () Bool)

(declare-fun c!269288 () Bool)

(assert (=> d!499343 (= c!269288 (isEmpty!11306 (++!4951 lt!616664 lt!616660)))))

(declare-fun e!1061420 () Bool)

(assert (=> d!499343 (= (prefixMatch!466 lt!616658 (++!4951 lt!616664 lt!616660)) e!1061420)))

(declare-fun b!1655323 () Bool)

(assert (=> b!1655323 (= e!1061420 (not (lostCause!466 lt!616658)))))

(declare-fun b!1655324 () Bool)

(assert (=> b!1655324 (= e!1061420 (prefixMatch!466 (derivativeStep!1116 lt!616658 (head!3665 (++!4951 lt!616664 lt!616660))) (tail!2456 (++!4951 lt!616664 lt!616660))))))

(assert (= (and d!499343 c!269288) b!1655323))

(assert (= (and d!499343 (not c!269288)) b!1655324))

(assert (=> d!499343 m!2007743))

(declare-fun m!2009249 () Bool)

(assert (=> d!499343 m!2009249))

(assert (=> b!1655323 m!2008093))

(assert (=> b!1655324 m!2007743))

(declare-fun m!2009251 () Bool)

(assert (=> b!1655324 m!2009251))

(assert (=> b!1655324 m!2009251))

(declare-fun m!2009253 () Bool)

(assert (=> b!1655324 m!2009253))

(assert (=> b!1655324 m!2007743))

(declare-fun m!2009255 () Bool)

(assert (=> b!1655324 m!2009255))

(assert (=> b!1655324 m!2009253))

(assert (=> b!1655324 m!2009255))

(declare-fun m!2009257 () Bool)

(assert (=> b!1655324 m!2009257))

(assert (=> b!1654690 d!499343))

(declare-fun lt!617671 () List!18338)

(declare-fun e!1061422 () Bool)

(declare-fun b!1655328 () Bool)

(assert (=> b!1655328 (= e!1061422 (or (not (= lt!616660 Nil!18268)) (= lt!617671 lt!616664)))))

(declare-fun b!1655327 () Bool)

(declare-fun res!742273 () Bool)

(assert (=> b!1655327 (=> (not res!742273) (not e!1061422))))

(assert (=> b!1655327 (= res!742273 (= (size!14540 lt!617671) (+ (size!14540 lt!616664) (size!14540 lt!616660))))))

(declare-fun b!1655325 () Bool)

(declare-fun e!1061421 () List!18338)

(assert (=> b!1655325 (= e!1061421 lt!616660)))

(declare-fun b!1655326 () Bool)

(assert (=> b!1655326 (= e!1061421 (Cons!18268 (h!23669 lt!616664) (++!4951 (t!151175 lt!616664) lt!616660)))))

(declare-fun d!499345 () Bool)

(assert (=> d!499345 e!1061422))

(declare-fun res!742272 () Bool)

(assert (=> d!499345 (=> (not res!742272) (not e!1061422))))

(assert (=> d!499345 (= res!742272 (= (content!2541 lt!617671) ((_ map or) (content!2541 lt!616664) (content!2541 lt!616660))))))

(assert (=> d!499345 (= lt!617671 e!1061421)))

(declare-fun c!269289 () Bool)

(assert (=> d!499345 (= c!269289 ((_ is Nil!18268) lt!616664))))

(assert (=> d!499345 (= (++!4951 lt!616664 lt!616660) lt!617671)))

(assert (= (and d!499345 c!269289) b!1655325))

(assert (= (and d!499345 (not c!269289)) b!1655326))

(assert (= (and d!499345 res!742272) b!1655327))

(assert (= (and b!1655327 res!742273) b!1655328))

(declare-fun m!2009259 () Bool)

(assert (=> b!1655327 m!2009259))

(assert (=> b!1655327 m!2008123))

(assert (=> b!1655327 m!2008081))

(declare-fun m!2009261 () Bool)

(assert (=> b!1655326 m!2009261))

(declare-fun m!2009263 () Bool)

(assert (=> d!499345 m!2009263))

(assert (=> d!499345 m!2008745))

(assert (=> d!499345 m!2008089))

(assert (=> b!1654690 d!499345))

(declare-fun d!499347 () Bool)

(declare-fun res!742276 () Bool)

(declare-fun e!1061425 () Bool)

(assert (=> d!499347 (=> (not res!742276) (not e!1061425))))

(declare-fun rulesValid!1176 (LexerInterface!2850 List!18339) Bool)

(assert (=> d!499347 (= res!742276 (rulesValid!1176 thiss!17113 rules!1846))))

(assert (=> d!499347 (= (rulesInvariant!2519 thiss!17113 rules!1846) e!1061425)))

(declare-fun b!1655331 () Bool)

(declare-datatypes ((List!18346 0))(
  ( (Nil!18276) (Cons!18276 (h!23677 String!20887) (t!151225 List!18346)) )
))
(declare-fun noDuplicateTag!1176 (LexerInterface!2850 List!18339 List!18346) Bool)

(assert (=> b!1655331 (= e!1061425 (noDuplicateTag!1176 thiss!17113 rules!1846 Nil!18276))))

(assert (= (and d!499347 res!742276) b!1655331))

(declare-fun m!2009265 () Bool)

(assert (=> d!499347 m!2009265))

(declare-fun m!2009267 () Bool)

(assert (=> b!1655331 m!2009267))

(assert (=> b!1654691 d!499347))

(declare-fun b!1655365 () Bool)

(declare-fun e!1061451 () Bool)

(assert (=> b!1655365 (= e!1061451 true)))

(declare-fun b!1655364 () Bool)

(declare-fun e!1061450 () Bool)

(assert (=> b!1655364 (= e!1061450 e!1061451)))

(declare-fun b!1655363 () Bool)

(declare-fun e!1061449 () Bool)

(assert (=> b!1655363 (= e!1061449 e!1061450)))

(declare-fun d!499349 () Bool)

(assert (=> d!499349 e!1061449))

(assert (= b!1655364 b!1655365))

(assert (= b!1655363 b!1655364))

(assert (= (and d!499349 ((_ is Cons!18269) rules!1846)) b!1655363))

(declare-fun order!10911 () Int)

(declare-fun lambda!67755 () Int)

(declare-fun order!10909 () Int)

(declare-fun dynLambda!8197 (Int Int) Int)

(declare-fun dynLambda!8198 (Int Int) Int)

(assert (=> b!1655365 (< (dynLambda!8197 order!10909 (toValue!4672 (transformation!3221 (h!23670 rules!1846)))) (dynLambda!8198 order!10911 lambda!67755))))

(declare-fun order!10913 () Int)

(declare-fun dynLambda!8199 (Int Int) Int)

(assert (=> b!1655365 (< (dynLambda!8199 order!10913 (toChars!4531 (transformation!3221 (h!23670 rules!1846)))) (dynLambda!8198 order!10911 lambda!67755))))

(assert (=> d!499349 true))

(declare-fun lt!617727 () Bool)

(declare-fun forall!4156 (List!18340 Int) Bool)

(assert (=> d!499349 (= lt!617727 (forall!4156 tokens!457 lambda!67755))))

(declare-fun e!1061442 () Bool)

(assert (=> d!499349 (= lt!617727 e!1061442)))

(declare-fun res!742293 () Bool)

(assert (=> d!499349 (=> res!742293 e!1061442)))

(assert (=> d!499349 (= res!742293 (not ((_ is Cons!18270) tokens!457)))))

(assert (=> d!499349 (not (isEmpty!11307 rules!1846))))

(assert (=> d!499349 (= (rulesProduceEachTokenIndividuallyList!1052 thiss!17113 rules!1846 tokens!457) lt!617727)))

(declare-fun b!1655353 () Bool)

(declare-fun e!1061441 () Bool)

(assert (=> b!1655353 (= e!1061442 e!1061441)))

(declare-fun res!742292 () Bool)

(assert (=> b!1655353 (=> (not res!742292) (not e!1061441))))

(assert (=> b!1655353 (= res!742292 (rulesProduceIndividualToken!1498 thiss!17113 rules!1846 (h!23671 tokens!457)))))

(declare-fun b!1655354 () Bool)

(assert (=> b!1655354 (= e!1061441 (rulesProduceEachTokenIndividuallyList!1052 thiss!17113 rules!1846 (t!151177 tokens!457)))))

(assert (= (and d!499349 (not res!742293)) b!1655353))

(assert (= (and b!1655353 res!742292) b!1655354))

(declare-fun m!2009317 () Bool)

(assert (=> d!499349 m!2009317))

(assert (=> d!499349 m!2007729))

(assert (=> b!1655353 m!2007763))

(declare-fun m!2009319 () Bool)

(assert (=> b!1655354 m!2009319))

(assert (=> b!1654689 d!499349))

(declare-fun d!499359 () Bool)

(assert (=> d!499359 (= (get!5328 (maxPrefixZipper!348 thiss!17113 rules!1846 lt!616675)) (v!24674 (maxPrefixZipper!348 thiss!17113 rules!1846 lt!616675)))))

(assert (=> b!1654688 d!499359))

(declare-fun lt!617742 () Option!3484)

(declare-fun d!499361 () Bool)

(assert (=> d!499361 (= lt!617742 (maxPrefix!1412 thiss!17113 rules!1846 lt!616675))))

(declare-fun e!1061502 () Option!3484)

(assert (=> d!499361 (= lt!617742 e!1061502)))

(declare-fun c!269295 () Bool)

(assert (=> d!499361 (= c!269295 (and ((_ is Cons!18269) rules!1846) ((_ is Nil!18269) (t!151176 rules!1846))))))

(declare-fun lt!617740 () Unit!30587)

(declare-fun lt!617743 () Unit!30587)

(assert (=> d!499361 (= lt!617740 lt!617743)))

(assert (=> d!499361 (isPrefix!1479 lt!616675 lt!616675)))

(assert (=> d!499361 (= lt!617743 (lemmaIsPrefixRefl!1002 lt!616675 lt!616675))))

(assert (=> d!499361 (rulesValidInductive!1024 thiss!17113 rules!1846)))

(assert (=> d!499361 (= (maxPrefixZipper!348 thiss!17113 rules!1846 lt!616675) lt!617742)))

(declare-fun call!106108 () Option!3484)

(declare-fun bm!106103 () Bool)

(declare-fun maxPrefixOneRuleZipper!125 (LexerInterface!2850 Rule!6242 List!18338) Option!3484)

(assert (=> bm!106103 (= call!106108 (maxPrefixOneRuleZipper!125 thiss!17113 (h!23670 rules!1846) lt!616675))))

(declare-fun b!1655435 () Bool)

(assert (=> b!1655435 (= e!1061502 call!106108)))

(declare-fun b!1655436 () Bool)

(declare-fun lt!617741 () Option!3484)

(declare-fun lt!617739 () Option!3484)

(assert (=> b!1655436 (= e!1061502 (ite (and ((_ is None!3483) lt!617741) ((_ is None!3483) lt!617739)) None!3483 (ite ((_ is None!3483) lt!617739) lt!617741 (ite ((_ is None!3483) lt!617741) lt!617739 (ite (>= (size!14536 (_1!10384 (v!24674 lt!617741))) (size!14536 (_1!10384 (v!24674 lt!617739)))) lt!617741 lt!617739)))))))

(assert (=> b!1655436 (= lt!617741 call!106108)))

(assert (=> b!1655436 (= lt!617739 (maxPrefixZipper!348 thiss!17113 (t!151176 rules!1846) lt!616675))))

(assert (= (and d!499361 c!269295) b!1655435))

(assert (= (and d!499361 (not c!269295)) b!1655436))

(assert (= (or b!1655435 b!1655436) bm!106103))

(assert (=> d!499361 m!2007761))

(assert (=> d!499361 m!2008653))

(assert (=> d!499361 m!2008655))

(assert (=> d!499361 m!2008043))

(declare-fun m!2009337 () Bool)

(assert (=> bm!106103 m!2009337))

(declare-fun m!2009339 () Bool)

(assert (=> b!1655436 m!2009339))

(assert (=> b!1654688 d!499361))

(declare-fun d!499363 () Bool)

(declare-fun lt!617748 () Bool)

(declare-fun e!1061508 () Bool)

(assert (=> d!499363 (= lt!617748 e!1061508)))

(declare-fun res!742304 () Bool)

(assert (=> d!499363 (=> (not res!742304) (not e!1061508))))

(assert (=> d!499363 (= res!742304 (= (list!7278 (_1!10385 (lex!1334 thiss!17113 rules!1846 (print!1381 thiss!17113 (singletonSeq!1714 (h!23671 tokens!457)))))) (list!7278 (singletonSeq!1714 (h!23671 tokens!457)))))))

(declare-fun e!1061507 () Bool)

(assert (=> d!499363 (= lt!617748 e!1061507)))

(declare-fun res!742302 () Bool)

(assert (=> d!499363 (=> (not res!742302) (not e!1061507))))

(declare-fun lt!617749 () tuple2!17966)

(assert (=> d!499363 (= res!742302 (= (size!14542 (_1!10385 lt!617749)) 1))))

(assert (=> d!499363 (= lt!617749 (lex!1334 thiss!17113 rules!1846 (print!1381 thiss!17113 (singletonSeq!1714 (h!23671 tokens!457)))))))

(assert (=> d!499363 (not (isEmpty!11307 rules!1846))))

(assert (=> d!499363 (= (rulesProduceIndividualToken!1498 thiss!17113 rules!1846 (h!23671 tokens!457)) lt!617748)))

(declare-fun b!1655443 () Bool)

(declare-fun res!742303 () Bool)

(assert (=> b!1655443 (=> (not res!742303) (not e!1061507))))

(assert (=> b!1655443 (= res!742303 (= (apply!4849 (_1!10385 lt!617749) 0) (h!23671 tokens!457)))))

(declare-fun b!1655444 () Bool)

(assert (=> b!1655444 (= e!1061507 (isEmpty!11316 (_2!10385 lt!617749)))))

(declare-fun b!1655445 () Bool)

(assert (=> b!1655445 (= e!1061508 (isEmpty!11316 (_2!10385 (lex!1334 thiss!17113 rules!1846 (print!1381 thiss!17113 (singletonSeq!1714 (h!23671 tokens!457)))))))))

(assert (= (and d!499363 res!742302) b!1655443))

(assert (= (and b!1655443 res!742303) b!1655444))

(assert (= (and d!499363 res!742304) b!1655445))

(assert (=> d!499363 m!2007755))

(declare-fun m!2009341 () Bool)

(assert (=> d!499363 m!2009341))

(declare-fun m!2009343 () Bool)

(assert (=> d!499363 m!2009343))

(declare-fun m!2009345 () Bool)

(assert (=> d!499363 m!2009345))

(assert (=> d!499363 m!2007755))

(declare-fun m!2009347 () Bool)

(assert (=> d!499363 m!2009347))

(assert (=> d!499363 m!2007755))

(assert (=> d!499363 m!2009347))

(declare-fun m!2009349 () Bool)

(assert (=> d!499363 m!2009349))

(assert (=> d!499363 m!2007729))

(declare-fun m!2009351 () Bool)

(assert (=> b!1655443 m!2009351))

(declare-fun m!2009353 () Bool)

(assert (=> b!1655444 m!2009353))

(assert (=> b!1655445 m!2007755))

(assert (=> b!1655445 m!2007755))

(assert (=> b!1655445 m!2009347))

(assert (=> b!1655445 m!2009347))

(assert (=> b!1655445 m!2009349))

(declare-fun m!2009355 () Bool)

(assert (=> b!1655445 m!2009355))

(assert (=> b!1654686 d!499363))

(declare-fun d!499365 () Bool)

(assert (=> d!499365 (= (list!7277 lt!616666) (list!7282 (c!269145 lt!616666)))))

(declare-fun bs!396815 () Bool)

(assert (= bs!396815 d!499365))

(declare-fun m!2009357 () Bool)

(assert (=> bs!396815 m!2009357))

(assert (=> b!1654687 d!499365))

(declare-fun d!499367 () Bool)

(assert (=> d!499367 (= (list!7277 lt!616655) (list!7282 (c!269145 lt!616655)))))

(declare-fun bs!396816 () Bool)

(assert (= bs!396816 d!499367))

(declare-fun m!2009359 () Bool)

(assert (=> bs!396816 m!2009359))

(assert (=> b!1654687 d!499367))

(declare-fun d!499369 () Bool)

(assert (=> d!499369 (= (list!7277 lt!616665) (list!7282 (c!269145 lt!616665)))))

(declare-fun bs!396817 () Bool)

(assert (= bs!396817 d!499369))

(declare-fun m!2009361 () Bool)

(assert (=> bs!396817 m!2009361))

(assert (=> b!1654687 d!499369))

(declare-fun d!499371 () Bool)

(declare-fun lt!617750 () BalanceConc!12124)

(assert (=> d!499371 (= (list!7277 lt!617750) (originalCharacters!4035 (h!23671 tokens!457)))))

(assert (=> d!499371 (= lt!617750 (dynLambda!8193 (toChars!4531 (transformation!3221 (rule!5089 (h!23671 tokens!457)))) (value!101471 (h!23671 tokens!457))))))

(assert (=> d!499371 (= (charsOf!1870 (h!23671 tokens!457)) lt!617750)))

(declare-fun b_lambda!51993 () Bool)

(assert (=> (not b_lambda!51993) (not d!499371)))

(assert (=> d!499371 t!151179))

(declare-fun b_and!117513 () Bool)

(assert (= b_and!117493 (and (=> t!151179 result!114474) b_and!117513)))

(assert (=> d!499371 t!151181))

(declare-fun b_and!117515 () Bool)

(assert (= b_and!117495 (and (=> t!151181 result!114478) b_and!117515)))

(declare-fun m!2009363 () Bool)

(assert (=> d!499371 m!2009363))

(assert (=> d!499371 m!2008141))

(assert (=> b!1654687 d!499371))

(declare-fun d!499373 () Bool)

(assert (=> d!499373 (= (seqFromList!2182 (t!151177 tokens!457)) (fromListB!979 (t!151177 tokens!457)))))

(declare-fun bs!396818 () Bool)

(assert (= bs!396818 d!499373))

(declare-fun m!2009365 () Bool)

(assert (=> bs!396818 m!2009365))

(assert (=> b!1654687 d!499373))

(declare-fun d!499375 () Bool)

(declare-fun lt!617751 () BalanceConc!12124)

(assert (=> d!499375 (= (list!7277 lt!617751) (printList!963 thiss!17113 (list!7278 lt!616676)))))

(assert (=> d!499375 (= lt!617751 (printTailRec!901 thiss!17113 lt!616676 0 (BalanceConc!12125 Empty!6090)))))

(assert (=> d!499375 (= (print!1381 thiss!17113 lt!616676) lt!617751)))

(declare-fun bs!396819 () Bool)

(assert (= bs!396819 d!499375))

(declare-fun m!2009367 () Bool)

(assert (=> bs!396819 m!2009367))

(assert (=> bs!396819 m!2007779))

(assert (=> bs!396819 m!2007779))

(declare-fun m!2009369 () Bool)

(assert (=> bs!396819 m!2009369))

(declare-fun m!2009371 () Bool)

(assert (=> bs!396819 m!2009371))

(assert (=> b!1654687 d!499375))

(declare-fun d!499377 () Bool)

(declare-fun lt!617752 () BalanceConc!12124)

(assert (=> d!499377 (= (list!7277 lt!617752) (printList!963 thiss!17113 (list!7278 (seqFromList!2182 tokens!457))))))

(assert (=> d!499377 (= lt!617752 (printTailRec!901 thiss!17113 (seqFromList!2182 tokens!457) 0 (BalanceConc!12125 Empty!6090)))))

(assert (=> d!499377 (= (print!1381 thiss!17113 (seqFromList!2182 tokens!457)) lt!617752)))

(declare-fun bs!396820 () Bool)

(assert (= bs!396820 d!499377))

(declare-fun m!2009373 () Bool)

(assert (=> bs!396820 m!2009373))

(assert (=> bs!396820 m!2007855))

(declare-fun m!2009375 () Bool)

(assert (=> bs!396820 m!2009375))

(assert (=> bs!396820 m!2009375))

(declare-fun m!2009377 () Bool)

(assert (=> bs!396820 m!2009377))

(assert (=> bs!396820 m!2007855))

(declare-fun m!2009379 () Bool)

(assert (=> bs!396820 m!2009379))

(assert (=> b!1654687 d!499377))

(declare-fun lt!617753 () List!18338)

(declare-fun b!1655449 () Bool)

(declare-fun e!1061510 () Bool)

(assert (=> b!1655449 (= e!1061510 (or (not (= lt!616662 Nil!18268)) (= lt!617753 lt!616664)))))

(declare-fun b!1655448 () Bool)

(declare-fun res!742306 () Bool)

(assert (=> b!1655448 (=> (not res!742306) (not e!1061510))))

(assert (=> b!1655448 (= res!742306 (= (size!14540 lt!617753) (+ (size!14540 lt!616664) (size!14540 lt!616662))))))

(declare-fun b!1655446 () Bool)

(declare-fun e!1061509 () List!18338)

(assert (=> b!1655446 (= e!1061509 lt!616662)))

(declare-fun b!1655447 () Bool)

(assert (=> b!1655447 (= e!1061509 (Cons!18268 (h!23669 lt!616664) (++!4951 (t!151175 lt!616664) lt!616662)))))

(declare-fun d!499379 () Bool)

(assert (=> d!499379 e!1061510))

(declare-fun res!742305 () Bool)

(assert (=> d!499379 (=> (not res!742305) (not e!1061510))))

(assert (=> d!499379 (= res!742305 (= (content!2541 lt!617753) ((_ map or) (content!2541 lt!616664) (content!2541 lt!616662))))))

(assert (=> d!499379 (= lt!617753 e!1061509)))

(declare-fun c!269296 () Bool)

(assert (=> d!499379 (= c!269296 ((_ is Nil!18268) lt!616664))))

(assert (=> d!499379 (= (++!4951 lt!616664 lt!616662) lt!617753)))

(assert (= (and d!499379 c!269296) b!1655446))

(assert (= (and d!499379 (not c!269296)) b!1655447))

(assert (= (and d!499379 res!742305) b!1655448))

(assert (= (and b!1655448 res!742306) b!1655449))

(declare-fun m!2009381 () Bool)

(assert (=> b!1655448 m!2009381))

(assert (=> b!1655448 m!2008123))

(declare-fun m!2009383 () Bool)

(assert (=> b!1655448 m!2009383))

(declare-fun m!2009385 () Bool)

(assert (=> b!1655447 m!2009385))

(declare-fun m!2009387 () Bool)

(assert (=> d!499379 m!2009387))

(assert (=> d!499379 m!2008745))

(declare-fun m!2009389 () Bool)

(assert (=> d!499379 m!2009389))

(assert (=> b!1654687 d!499379))

(declare-fun lt!617754 () tuple2!17966)

(declare-fun b!1655450 () Bool)

(declare-fun e!1061512 () Bool)

(assert (=> b!1655450 (= e!1061512 (= (list!7277 (_2!10385 lt!617754)) (_2!10387 (lexList!877 thiss!17113 rules!1846 (list!7277 lt!616655)))))))

(declare-fun b!1655451 () Bool)

(declare-fun e!1061513 () Bool)

(assert (=> b!1655451 (= e!1061513 (= (_2!10385 lt!617754) lt!616655))))

(declare-fun b!1655452 () Bool)

(declare-fun res!742308 () Bool)

(assert (=> b!1655452 (=> (not res!742308) (not e!1061512))))

(assert (=> b!1655452 (= res!742308 (= (list!7278 (_1!10385 lt!617754)) (_1!10387 (lexList!877 thiss!17113 rules!1846 (list!7277 lt!616655)))))))

(declare-fun b!1655453 () Bool)

(declare-fun e!1061511 () Bool)

(assert (=> b!1655453 (= e!1061513 e!1061511)))

(declare-fun res!742309 () Bool)

(assert (=> b!1655453 (= res!742309 (< (size!14541 (_2!10385 lt!617754)) (size!14541 lt!616655)))))

(assert (=> b!1655453 (=> (not res!742309) (not e!1061511))))

(declare-fun d!499381 () Bool)

(assert (=> d!499381 e!1061512))

(declare-fun res!742307 () Bool)

(assert (=> d!499381 (=> (not res!742307) (not e!1061512))))

(assert (=> d!499381 (= res!742307 e!1061513)))

(declare-fun c!269297 () Bool)

(assert (=> d!499381 (= c!269297 (> (size!14542 (_1!10385 lt!617754)) 0))))

(assert (=> d!499381 (= lt!617754 (lexTailRecV2!600 thiss!17113 rules!1846 lt!616655 (BalanceConc!12125 Empty!6090) lt!616655 (BalanceConc!12127 Empty!6091)))))

(assert (=> d!499381 (= (lex!1334 thiss!17113 rules!1846 lt!616655) lt!617754)))

(declare-fun b!1655454 () Bool)

(assert (=> b!1655454 (= e!1061511 (not (isEmpty!11305 (_1!10385 lt!617754))))))

(assert (= (and d!499381 c!269297) b!1655453))

(assert (= (and d!499381 (not c!269297)) b!1655451))

(assert (= (and b!1655453 res!742309) b!1655454))

(assert (= (and d!499381 res!742307) b!1655452))

(assert (= (and b!1655452 res!742308) b!1655450))

(declare-fun m!2009391 () Bool)

(assert (=> b!1655452 m!2009391))

(assert (=> b!1655452 m!2007861))

(assert (=> b!1655452 m!2007861))

(declare-fun m!2009393 () Bool)

(assert (=> b!1655452 m!2009393))

(declare-fun m!2009395 () Bool)

(assert (=> b!1655454 m!2009395))

(declare-fun m!2009397 () Bool)

(assert (=> b!1655453 m!2009397))

(declare-fun m!2009399 () Bool)

(assert (=> b!1655453 m!2009399))

(declare-fun m!2009401 () Bool)

(assert (=> d!499381 m!2009401))

(declare-fun m!2009403 () Bool)

(assert (=> d!499381 m!2009403))

(declare-fun m!2009405 () Bool)

(assert (=> b!1655450 m!2009405))

(assert (=> b!1655450 m!2007861))

(assert (=> b!1655450 m!2007861))

(assert (=> b!1655450 m!2009393))

(assert (=> b!1654687 d!499381))

(declare-fun d!499383 () Bool)

(assert (=> d!499383 (= (seqFromList!2182 tokens!457) (fromListB!979 tokens!457))))

(declare-fun bs!396821 () Bool)

(assert (= bs!396821 d!499383))

(declare-fun m!2009407 () Bool)

(assert (=> bs!396821 m!2009407))

(assert (=> b!1654687 d!499383))

(declare-fun b!1655468 () Bool)

(declare-fun b_free!44999 () Bool)

(declare-fun b_next!45703 () Bool)

(assert (=> b!1655468 (= b_free!44999 (not b_next!45703))))

(declare-fun tp!478535 () Bool)

(declare-fun b_and!117517 () Bool)

(assert (=> b!1655468 (= tp!478535 b_and!117517)))

(declare-fun b_free!45001 () Bool)

(declare-fun b_next!45705 () Bool)

(assert (=> b!1655468 (= b_free!45001 (not b_next!45705))))

(declare-fun t!151213 () Bool)

(declare-fun tb!94759 () Bool)

(assert (=> (and b!1655468 (= (toChars!4531 (transformation!3221 (rule!5089 (h!23671 (t!151177 tokens!457))))) (toChars!4531 (transformation!3221 (rule!5089 (h!23671 tokens!457))))) t!151213) tb!94759))

(declare-fun result!114512 () Bool)

(assert (= result!114512 result!114474))

(assert (=> b!1654843 t!151213))

(declare-fun t!151215 () Bool)

(declare-fun tb!94761 () Bool)

(assert (=> (and b!1655468 (= (toChars!4531 (transformation!3221 (rule!5089 (h!23671 (t!151177 tokens!457))))) (toChars!4531 (transformation!3221 (rule!5089 (h!23671 (t!151177 tokens!457)))))) t!151215) tb!94761))

(declare-fun result!114514 () Bool)

(assert (= result!114514 result!114486))

(assert (=> d!499193 t!151215))

(assert (=> d!499371 t!151213))

(declare-fun b_and!117519 () Bool)

(declare-fun tp!478534 () Bool)

(assert (=> b!1655468 (= tp!478534 (and (=> t!151213 result!114512) (=> t!151215 result!114514) b_and!117519))))

(declare-fun b!1655465 () Bool)

(declare-fun e!1061530 () Bool)

(declare-fun tp!478533 () Bool)

(declare-fun e!1061527 () Bool)

(assert (=> b!1655465 (= e!1061527 (and (inv!23623 (h!23671 (t!151177 tokens!457))) e!1061530 tp!478533))))

(declare-fun b!1655466 () Bool)

(declare-fun tp!478537 () Bool)

(declare-fun e!1061531 () Bool)

(assert (=> b!1655466 (= e!1061530 (and (inv!21 (value!101471 (h!23671 (t!151177 tokens!457)))) e!1061531 tp!478537))))

(declare-fun tp!478536 () Bool)

(declare-fun b!1655467 () Bool)

(declare-fun e!1061526 () Bool)

(assert (=> b!1655467 (= e!1061531 (and tp!478536 (inv!23619 (tag!3503 (rule!5089 (h!23671 (t!151177 tokens!457))))) (inv!23622 (transformation!3221 (rule!5089 (h!23671 (t!151177 tokens!457))))) e!1061526))))

(assert (=> b!1654680 (= tp!478460 e!1061527)))

(assert (=> b!1655468 (= e!1061526 (and tp!478535 tp!478534))))

(assert (= b!1655467 b!1655468))

(assert (= b!1655466 b!1655467))

(assert (= b!1655465 b!1655466))

(assert (= (and b!1654680 ((_ is Cons!18270) (t!151177 tokens!457))) b!1655465))

(declare-fun m!2009409 () Bool)

(assert (=> b!1655465 m!2009409))

(declare-fun m!2009411 () Bool)

(assert (=> b!1655466 m!2009411))

(declare-fun m!2009413 () Bool)

(assert (=> b!1655467 m!2009413))

(declare-fun m!2009415 () Bool)

(assert (=> b!1655467 m!2009415))

(declare-fun b!1655473 () Bool)

(declare-fun e!1061534 () Bool)

(declare-fun tp_is_empty!7377 () Bool)

(declare-fun tp!478540 () Bool)

(assert (=> b!1655473 (= e!1061534 (and tp_is_empty!7377 tp!478540))))

(assert (=> b!1654698 (= tp!478458 e!1061534)))

(assert (= (and b!1654698 ((_ is Cons!18268) (originalCharacters!4035 (h!23671 tokens!457)))) b!1655473))

(declare-fun b!1655484 () Bool)

(declare-fun e!1061537 () Bool)

(assert (=> b!1655484 (= e!1061537 tp_is_empty!7377)))

(declare-fun b!1655485 () Bool)

(declare-fun tp!478551 () Bool)

(declare-fun tp!478554 () Bool)

(assert (=> b!1655485 (= e!1061537 (and tp!478551 tp!478554))))

(assert (=> b!1654683 (= tp!478457 e!1061537)))

(declare-fun b!1655487 () Bool)

(declare-fun tp!478553 () Bool)

(declare-fun tp!478552 () Bool)

(assert (=> b!1655487 (= e!1061537 (and tp!478553 tp!478552))))

(declare-fun b!1655486 () Bool)

(declare-fun tp!478555 () Bool)

(assert (=> b!1655486 (= e!1061537 tp!478555)))

(assert (= (and b!1654683 ((_ is ElementMatch!4549) (regex!3221 (rule!5089 (h!23671 tokens!457))))) b!1655484))

(assert (= (and b!1654683 ((_ is Concat!7861) (regex!3221 (rule!5089 (h!23671 tokens!457))))) b!1655485))

(assert (= (and b!1654683 ((_ is Star!4549) (regex!3221 (rule!5089 (h!23671 tokens!457))))) b!1655486))

(assert (= (and b!1654683 ((_ is Union!4549) (regex!3221 (rule!5089 (h!23671 tokens!457))))) b!1655487))

(declare-fun b!1655488 () Bool)

(declare-fun e!1061538 () Bool)

(assert (=> b!1655488 (= e!1061538 tp_is_empty!7377)))

(declare-fun b!1655489 () Bool)

(declare-fun tp!478556 () Bool)

(declare-fun tp!478559 () Bool)

(assert (=> b!1655489 (= e!1061538 (and tp!478556 tp!478559))))

(assert (=> b!1654676 (= tp!478456 e!1061538)))

(declare-fun b!1655491 () Bool)

(declare-fun tp!478558 () Bool)

(declare-fun tp!478557 () Bool)

(assert (=> b!1655491 (= e!1061538 (and tp!478558 tp!478557))))

(declare-fun b!1655490 () Bool)

(declare-fun tp!478560 () Bool)

(assert (=> b!1655490 (= e!1061538 tp!478560)))

(assert (= (and b!1654676 ((_ is ElementMatch!4549) (regex!3221 (h!23670 rules!1846)))) b!1655488))

(assert (= (and b!1654676 ((_ is Concat!7861) (regex!3221 (h!23670 rules!1846)))) b!1655489))

(assert (= (and b!1654676 ((_ is Star!4549) (regex!3221 (h!23670 rules!1846)))) b!1655490))

(assert (= (and b!1654676 ((_ is Union!4549) (regex!3221 (h!23670 rules!1846)))) b!1655491))

(declare-fun b!1655502 () Bool)

(declare-fun b_free!45003 () Bool)

(declare-fun b_next!45707 () Bool)

(assert (=> b!1655502 (= b_free!45003 (not b_next!45707))))

(declare-fun tp!478571 () Bool)

(declare-fun b_and!117521 () Bool)

(assert (=> b!1655502 (= tp!478571 b_and!117521)))

(declare-fun b_free!45005 () Bool)

(declare-fun b_next!45709 () Bool)

(assert (=> b!1655502 (= b_free!45005 (not b_next!45709))))

(declare-fun t!151217 () Bool)

(declare-fun tb!94763 () Bool)

(assert (=> (and b!1655502 (= (toChars!4531 (transformation!3221 (h!23670 (t!151176 rules!1846)))) (toChars!4531 (transformation!3221 (rule!5089 (h!23671 tokens!457))))) t!151217) tb!94763))

(declare-fun result!114522 () Bool)

(assert (= result!114522 result!114474))

(assert (=> b!1654843 t!151217))

(declare-fun t!151219 () Bool)

(declare-fun tb!94765 () Bool)

(assert (=> (and b!1655502 (= (toChars!4531 (transformation!3221 (h!23670 (t!151176 rules!1846)))) (toChars!4531 (transformation!3221 (rule!5089 (h!23671 (t!151177 tokens!457)))))) t!151219) tb!94765))

(declare-fun result!114524 () Bool)

(assert (= result!114524 result!114486))

(assert (=> d!499193 t!151219))

(assert (=> d!499371 t!151217))

(declare-fun tp!478570 () Bool)

(declare-fun b_and!117523 () Bool)

(assert (=> b!1655502 (= tp!478570 (and (=> t!151217 result!114522) (=> t!151219 result!114524) b_and!117523))))

(declare-fun e!1061549 () Bool)

(assert (=> b!1655502 (= e!1061549 (and tp!478571 tp!478570))))

(declare-fun e!1061550 () Bool)

(declare-fun tp!478569 () Bool)

(declare-fun b!1655501 () Bool)

(assert (=> b!1655501 (= e!1061550 (and tp!478569 (inv!23619 (tag!3503 (h!23670 (t!151176 rules!1846)))) (inv!23622 (transformation!3221 (h!23670 (t!151176 rules!1846)))) e!1061549))))

(declare-fun b!1655500 () Bool)

(declare-fun e!1061547 () Bool)

(declare-fun tp!478572 () Bool)

(assert (=> b!1655500 (= e!1061547 (and e!1061550 tp!478572))))

(assert (=> b!1654692 (= tp!478463 e!1061547)))

(assert (= b!1655501 b!1655502))

(assert (= b!1655500 b!1655501))

(assert (= (and b!1654692 ((_ is Cons!18269) (t!151176 rules!1846))) b!1655500))

(declare-fun m!2009417 () Bool)

(assert (=> b!1655501 m!2009417))

(declare-fun m!2009419 () Bool)

(assert (=> b!1655501 m!2009419))

(declare-fun b_lambda!51995 () Bool)

(assert (= b_lambda!51981 (or (and b!1654674 b_free!44985 (= (toChars!4531 (transformation!3221 (h!23670 rules!1846))) (toChars!4531 (transformation!3221 (rule!5089 (h!23671 (t!151177 tokens!457))))))) (and b!1654672 b_free!44989 (= (toChars!4531 (transformation!3221 (rule!5089 (h!23671 tokens!457)))) (toChars!4531 (transformation!3221 (rule!5089 (h!23671 (t!151177 tokens!457))))))) (and b!1655468 b_free!45001) (and b!1655502 b_free!45005 (= (toChars!4531 (transformation!3221 (h!23670 (t!151176 rules!1846)))) (toChars!4531 (transformation!3221 (rule!5089 (h!23671 (t!151177 tokens!457))))))) b_lambda!51995)))

(declare-fun b_lambda!51997 () Bool)

(assert (= b_lambda!51993 (or (and b!1654674 b_free!44985 (= (toChars!4531 (transformation!3221 (h!23670 rules!1846))) (toChars!4531 (transformation!3221 (rule!5089 (h!23671 tokens!457)))))) (and b!1654672 b_free!44989) (and b!1655468 b_free!45001 (= (toChars!4531 (transformation!3221 (rule!5089 (h!23671 (t!151177 tokens!457))))) (toChars!4531 (transformation!3221 (rule!5089 (h!23671 tokens!457)))))) (and b!1655502 b_free!45005 (= (toChars!4531 (transformation!3221 (h!23670 (t!151176 rules!1846)))) (toChars!4531 (transformation!3221 (rule!5089 (h!23671 tokens!457)))))) b_lambda!51997)))

(declare-fun b_lambda!51999 () Bool)

(assert (= b_lambda!51977 (or (and b!1654674 b_free!44985 (= (toChars!4531 (transformation!3221 (h!23670 rules!1846))) (toChars!4531 (transformation!3221 (rule!5089 (h!23671 tokens!457)))))) (and b!1654672 b_free!44989) (and b!1655468 b_free!45001 (= (toChars!4531 (transformation!3221 (rule!5089 (h!23671 (t!151177 tokens!457))))) (toChars!4531 (transformation!3221 (rule!5089 (h!23671 tokens!457)))))) (and b!1655502 b_free!45005 (= (toChars!4531 (transformation!3221 (h!23670 (t!151176 rules!1846)))) (toChars!4531 (transformation!3221 (rule!5089 (h!23671 tokens!457)))))) b_lambda!51999)))

(check-sat (not d!499279) (not b!1654941) (not b!1654835) (not b!1655331) (not b!1655102) (not b!1654905) (not d!499191) (not d!499267) (not d!499289) (not b!1655032) (not b!1655125) (not b!1655490) (not b!1655324) (not b!1655058) (not d!499265) (not b!1655473) (not b!1655128) (not b!1655465) (not d!499277) (not d!499375) (not b!1655316) (not b!1654940) (not d!499251) (not b!1654811) (not bm!106093) (not d!499287) (not b!1654849) (not d!499141) tp_is_empty!7377 (not d!499275) (not d!499157) (not d!499373) (not d!499349) (not b!1654831) (not b_next!45707) (not b!1655026) (not d!499213) (not tb!94743) (not b!1655039) (not b_lambda!51999) (not d!499381) (not b!1655444) (not d!499185) (not b!1654807) (not b!1655031) (not b!1655015) (not d!499379) (not d!499159) (not d!499293) (not d!499285) (not b!1655453) (not b!1655452) (not d!499377) (not b!1655057) (not b!1655312) (not b!1654888) (not b!1655315) (not b!1655129) (not b!1654904) (not b!1655027) (not b!1655447) (not b!1655327) b_and!117515 (not b!1654887) (not d!499163) (not d!499363) (not b!1654844) (not b!1655036) (not d!499161) (not d!499143) (not b!1655317) (not b!1654830) (not d!499189) (not b!1654834) (not d!499365) (not b!1655363) (not d!499181) (not b!1655048) (not d!499195) (not b!1654906) (not b!1655491) (not b!1654942) (not b_next!45709) (not b!1655466) (not b!1655487) (not b_lambda!51997) (not b!1655035) (not b!1655101) b_and!117517 (not b!1655443) (not b!1654921) (not d!499361) (not d!499281) (not b!1655033) (not d!499273) (not b!1655353) (not b!1655500) (not bm!106090) (not b!1654886) (not b!1654821) (not b!1654828) (not b!1655105) (not b_next!45687) (not b!1655354) (not d!499229) (not b!1655122) (not d!499347) (not b!1655486) (not b!1654980) (not b!1654833) (not b!1654922) (not b!1654760) (not d!499129) (not b!1654829) (not b!1655309) (not b!1655127) b_and!117477 (not d!499253) (not b!1655314) (not b!1654956) (not b!1655061) (not b!1655450) (not b_next!45693) (not b!1655467) b_and!117521 (not b!1655059) (not b!1655062) (not b!1655034) (not b!1655038) b_and!117481 (not b!1655123) (not b!1654806) (not b!1655053) (not b_next!45705) (not d!499283) (not b!1655485) (not bm!106085) (not bm!106086) (not b_next!45703) (not d!499343) (not b!1655489) (not b!1655445) (not b!1655501) (not b!1655092) (not b!1654803) (not b!1654920) (not b!1654810) (not d!499263) (not b!1654838) (not d!499145) (not bm!106087) (not b!1654891) (not b!1654804) (not d!499153) (not b!1654907) (not b!1654979) (not b!1654808) (not b!1654884) (not d!499369) (not b!1655046) (not d!499183) (not b!1654843) (not b!1655310) (not b!1654805) (not b_next!45689) (not d!499367) b_and!117513 b_and!117523 (not d!499371) (not d!499193) (not b!1655436) (not d!499259) (not b_next!45691) (not b!1654832) (not d!499261) (not b!1655126) (not d!499269) (not d!499227) (not b_lambda!51995) b_and!117519 (not d!499187) (not b!1654837) (not b!1655030) (not b!1655096) (not d!499201) (not d!499255) (not b!1654822) (not b!1655454) (not bm!106103) (not d!499119) (not d!499199) (not b!1654894) (not b!1655326) (not b!1654903) (not tb!94735) (not b!1655448) (not d!499345) (not b!1655321) (not b!1655094) (not b!1655025) (not b!1655323) (not b!1655014) (not d!499383) (not d!499257))
(check-sat (not b_next!45707) b_and!117515 (not b_next!45709) b_and!117517 (not b_next!45687) b_and!117477 (not b_next!45689) (not b_next!45691) b_and!117519 (not b_next!45693) b_and!117521 b_and!117481 (not b_next!45705) (not b_next!45703) b_and!117513 b_and!117523)
