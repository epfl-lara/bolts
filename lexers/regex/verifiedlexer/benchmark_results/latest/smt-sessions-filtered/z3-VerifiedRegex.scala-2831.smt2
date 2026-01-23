; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!159682 () Bool)

(assert start!159682)

(declare-fun b!1655672 () Bool)

(declare-fun b_free!45015 () Bool)

(declare-fun b_next!45719 () Bool)

(assert (=> b!1655672 (= b_free!45015 (not b_next!45719))))

(declare-fun tp!478622 () Bool)

(declare-fun b_and!117533 () Bool)

(assert (=> b!1655672 (= tp!478622 b_and!117533)))

(declare-fun b_free!45017 () Bool)

(declare-fun b_next!45721 () Bool)

(assert (=> b!1655672 (= b_free!45017 (not b_next!45721))))

(declare-fun tp!478620 () Bool)

(declare-fun b_and!117535 () Bool)

(assert (=> b!1655672 (= tp!478620 b_and!117535)))

(declare-fun b!1655670 () Bool)

(declare-fun b_free!45019 () Bool)

(declare-fun b_next!45723 () Bool)

(assert (=> b!1655670 (= b_free!45019 (not b_next!45723))))

(declare-fun tp!478626 () Bool)

(declare-fun b_and!117537 () Bool)

(assert (=> b!1655670 (= tp!478626 b_and!117537)))

(declare-fun b_free!45021 () Bool)

(declare-fun b_next!45725 () Bool)

(assert (=> b!1655670 (= b_free!45021 (not b_next!45725))))

(declare-fun tp!478625 () Bool)

(declare-fun b_and!117539 () Bool)

(assert (=> b!1655670 (= tp!478625 b_and!117539)))

(declare-fun b!1655663 () Bool)

(declare-fun e!1061685 () Bool)

(declare-fun e!1061667 () Bool)

(assert (=> b!1655663 (= e!1061685 e!1061667)))

(declare-fun res!742450 () Bool)

(assert (=> b!1655663 (=> res!742450 e!1061667)))

(declare-datatypes ((C!9276 0))(
  ( (C!9277 (val!5234 Int)) )
))
(declare-datatypes ((List!18351 0))(
  ( (Nil!18281) (Cons!18281 (h!23682 C!9276) (t!151230 List!18351)) )
))
(declare-fun lt!617908 () List!18351)

(declare-fun lt!617901 () List!18351)

(declare-datatypes ((Regex!4551 0))(
  ( (ElementMatch!4551 (c!269303 C!9276)) (Concat!7864 (regOne!9614 Regex!4551) (regTwo!9614 Regex!4551)) (EmptyExpr!4551) (Star!4551 (reg!4880 Regex!4551)) (EmptyLang!4551) (Union!4551 (regOne!9615 Regex!4551) (regTwo!9615 Regex!4551)) )
))
(declare-fun lt!617910 () Regex!4551)

(declare-fun prefixMatch!468 (Regex!4551 List!18351) Bool)

(declare-fun ++!4957 (List!18351 List!18351) List!18351)

(assert (=> b!1655663 (= res!742450 (prefixMatch!468 lt!617910 (++!4957 lt!617908 lt!617901)))))

(declare-datatypes ((IArray!12193 0))(
  ( (IArray!12194 (innerList!6154 List!18351)) )
))
(declare-datatypes ((Conc!6094 0))(
  ( (Node!6094 (left!14639 Conc!6094) (right!14969 Conc!6094) (csize!12418 Int) (cheight!6305 Int)) (Leaf!8926 (xs!8934 IArray!12193) (csize!12419 Int)) (Empty!6094) )
))
(declare-datatypes ((BalanceConc!12132 0))(
  ( (BalanceConc!12133 (c!269304 Conc!6094)) )
))
(declare-fun lt!617915 () BalanceConc!12132)

(declare-fun list!7285 (BalanceConc!12132) List!18351)

(assert (=> b!1655663 (= lt!617901 (list!7285 lt!617915))))

(declare-fun b!1655664 () Bool)

(declare-fun e!1061668 () Bool)

(declare-fun e!1061674 () Bool)

(assert (=> b!1655664 (= e!1061668 e!1061674)))

(declare-fun res!742457 () Bool)

(assert (=> b!1655664 (=> res!742457 e!1061674)))

(declare-datatypes ((List!18352 0))(
  ( (Nil!18282) (Cons!18282 (h!23683 (_ BitVec 16)) (t!151231 List!18352)) )
))
(declare-datatypes ((TokenValue!3313 0))(
  ( (FloatLiteralValue!6626 (text!23636 List!18352)) (TokenValueExt!3312 (__x!11928 Int)) (Broken!16565 (value!101502 List!18352)) (Object!3382) (End!3313) (Def!3313) (Underscore!3313) (Match!3313) (Else!3313) (Error!3313) (Case!3313) (If!3313) (Extends!3313) (Abstract!3313) (Class!3313) (Val!3313) (DelimiterValue!6626 (del!3373 List!18352)) (KeywordValue!3319 (value!101503 List!18352)) (CommentValue!6626 (value!101504 List!18352)) (WhitespaceValue!6626 (value!101505 List!18352)) (IndentationValue!3313 (value!101506 List!18352)) (String!20896) (Int32!3313) (Broken!16566 (value!101507 List!18352)) (Boolean!3314) (Unit!30656) (OperatorValue!3316 (op!3373 List!18352)) (IdentifierValue!6626 (value!101508 List!18352)) (IdentifierValue!6627 (value!101509 List!18352)) (WhitespaceValue!6627 (value!101510 List!18352)) (True!6626) (False!6626) (Broken!16567 (value!101511 List!18352)) (Broken!16568 (value!101512 List!18352)) (True!6627) (RightBrace!3313) (RightBracket!3313) (Colon!3313) (Null!3313) (Comma!3313) (LeftBracket!3313) (False!6627) (LeftBrace!3313) (ImaginaryLiteralValue!3313 (text!23637 List!18352)) (StringLiteralValue!9939 (value!101513 List!18352)) (EOFValue!3313 (value!101514 List!18352)) (IdentValue!3313 (value!101515 List!18352)) (DelimiterValue!6627 (value!101516 List!18352)) (DedentValue!3313 (value!101517 List!18352)) (NewLineValue!3313 (value!101518 List!18352)) (IntegerValue!9939 (value!101519 (_ BitVec 32)) (text!23638 List!18352)) (IntegerValue!9940 (value!101520 Int) (text!23639 List!18352)) (Times!3313) (Or!3313) (Equal!3313) (Minus!3313) (Broken!16569 (value!101521 List!18352)) (And!3313) (Div!3313) (LessEqual!3313) (Mod!3313) (Concat!7865) (Not!3313) (Plus!3313) (SpaceValue!3313 (value!101522 List!18352)) (IntegerValue!9941 (value!101523 Int) (text!23640 List!18352)) (StringLiteralValue!9940 (text!23641 List!18352)) (FloatLiteralValue!6627 (text!23642 List!18352)) (BytesLiteralValue!3313 (value!101524 List!18352)) (CommentValue!6627 (value!101525 List!18352)) (StringLiteralValue!9941 (value!101526 List!18352)) (ErrorTokenValue!3313 (msg!3374 List!18352)) )
))
(declare-datatypes ((String!20897 0))(
  ( (String!20898 (value!101527 String)) )
))
(declare-datatypes ((TokenValueInjection!6286 0))(
  ( (TokenValueInjection!6287 (toValue!4674 Int) (toChars!4533 Int)) )
))
(declare-datatypes ((Rule!6246 0))(
  ( (Rule!6247 (regex!3223 Regex!4551) (tag!3505 String!20897) (isSeparator!3223 Bool) (transformation!3223 TokenValueInjection!6286)) )
))
(declare-datatypes ((Token!6012 0))(
  ( (Token!6013 (value!101528 TokenValue!3313) (rule!5093 Rule!6246) (size!14544 Int) (originalCharacters!4037 List!18351)) )
))
(declare-datatypes ((List!18353 0))(
  ( (Nil!18283) (Cons!18283 (h!23684 Token!6012) (t!151232 List!18353)) )
))
(declare-fun tokens!457 () List!18353)

(declare-fun lt!617902 () List!18351)

(assert (=> b!1655664 (= res!742457 (prefixMatch!468 lt!617910 (++!4957 (originalCharacters!4037 (h!23684 tokens!457)) lt!617902)))))

(declare-fun e!1061672 () Bool)

(assert (=> b!1655664 e!1061672))

(declare-fun res!742459 () Bool)

(assert (=> b!1655664 (=> (not res!742459) (not e!1061672))))

(declare-datatypes ((tuple2!17978 0))(
  ( (tuple2!17979 (_1!10391 Token!6012) (_2!10391 List!18351)) )
))
(declare-fun lt!617904 () tuple2!17978)

(assert (=> b!1655664 (= res!742459 (= (_1!10391 lt!617904) (h!23684 tokens!457)))))

(declare-datatypes ((Option!3489 0))(
  ( (None!3488) (Some!3488 (v!24685 tuple2!17978)) )
))
(declare-fun lt!617916 () Option!3489)

(declare-fun get!5336 (Option!3489) tuple2!17978)

(assert (=> b!1655664 (= lt!617904 (get!5336 lt!617916))))

(declare-fun isDefined!2844 (Option!3489) Bool)

(assert (=> b!1655664 (isDefined!2844 lt!617916)))

(declare-datatypes ((List!18354 0))(
  ( (Nil!18284) (Cons!18284 (h!23685 Rule!6246) (t!151233 List!18354)) )
))
(declare-fun rules!1846 () List!18354)

(declare-datatypes ((LexerInterface!2852 0))(
  ( (LexerInterfaceExt!2849 (__x!11929 Int)) (Lexer!2850) )
))
(declare-fun thiss!17113 () LexerInterface!2852)

(declare-fun maxPrefix!1414 (LexerInterface!2852 List!18354 List!18351) Option!3489)

(assert (=> b!1655664 (= lt!617916 (maxPrefix!1414 thiss!17113 rules!1846 lt!617908))))

(assert (=> b!1655664 (isDefined!2844 (maxPrefix!1414 thiss!17113 rules!1846 (originalCharacters!4037 (h!23684 tokens!457))))))

(declare-fun b!1655665 () Bool)

(declare-fun res!742436 () Bool)

(declare-fun e!1061684 () Bool)

(assert (=> b!1655665 (=> (not res!742436) (not e!1061684))))

(get-info :version)

(assert (=> b!1655665 (= res!742436 (and (not ((_ is Nil!18283) tokens!457)) (not ((_ is Nil!18283) (t!151232 tokens!457)))))))

(declare-fun b!1655666 () Bool)

(declare-fun res!742451 () Bool)

(assert (=> b!1655666 (=> res!742451 e!1061674)))

(assert (=> b!1655666 (= res!742451 (prefixMatch!468 lt!617910 (++!4957 lt!617908 lt!617902)))))

(declare-fun e!1061673 () Bool)

(declare-fun b!1655667 () Bool)

(declare-fun lt!617917 () BalanceConc!12132)

(declare-datatypes ((tuple2!17980 0))(
  ( (tuple2!17981 (_1!10392 Token!6012) (_2!10392 BalanceConc!12132)) )
))
(declare-datatypes ((Option!3490 0))(
  ( (None!3489) (Some!3489 (v!24686 tuple2!17980)) )
))
(declare-fun get!5337 (Option!3490) tuple2!17980)

(declare-fun maxPrefixZipperSequence!729 (LexerInterface!2852 List!18354 BalanceConc!12132) Option!3490)

(assert (=> b!1655667 (= e!1061673 (= (h!23684 tokens!457) (_1!10392 (get!5337 (maxPrefixZipperSequence!729 thiss!17113 rules!1846 lt!617917)))))))

(declare-fun b!1655668 () Bool)

(declare-fun res!742438 () Bool)

(assert (=> b!1655668 (=> (not res!742438) (not e!1061684))))

(declare-fun rulesInvariant!2521 (LexerInterface!2852 List!18354) Bool)

(assert (=> b!1655668 (= res!742438 (rulesInvariant!2521 thiss!17113 rules!1846))))

(declare-fun b!1655669 () Bool)

(declare-fun e!1061671 () Bool)

(declare-fun e!1061678 () Bool)

(declare-fun tp!478618 () Bool)

(assert (=> b!1655669 (= e!1061671 (and e!1061678 tp!478618))))

(declare-fun e!1061669 () Bool)

(assert (=> b!1655670 (= e!1061669 (and tp!478626 tp!478625))))

(declare-fun b!1655671 () Bool)

(declare-fun res!742447 () Bool)

(assert (=> b!1655671 (=> res!742447 e!1061673)))

(declare-fun lt!617924 () List!18351)

(declare-fun maxPrefixZipper!350 (LexerInterface!2852 List!18354 List!18351) Option!3489)

(assert (=> b!1655671 (= res!742447 (not (= (h!23684 tokens!457) (_1!10391 (get!5336 (maxPrefixZipper!350 thiss!17113 rules!1846 lt!617924))))))))

(declare-fun e!1061679 () Bool)

(assert (=> b!1655672 (= e!1061679 (and tp!478622 tp!478620))))

(declare-fun b!1655673 () Bool)

(declare-fun res!742441 () Bool)

(declare-fun e!1061681 () Bool)

(assert (=> b!1655673 (=> res!742441 e!1061681)))

(declare-fun rulesProduceIndividualToken!1500 (LexerInterface!2852 List!18354 Token!6012) Bool)

(assert (=> b!1655673 (= res!742441 (not (rulesProduceIndividualToken!1500 thiss!17113 rules!1846 (h!23684 tokens!457))))))

(declare-fun res!742435 () Bool)

(assert (=> start!159682 (=> (not res!742435) (not e!1061684))))

(assert (=> start!159682 (= res!742435 ((_ is Lexer!2850) thiss!17113))))

(assert (=> start!159682 e!1061684))

(assert (=> start!159682 true))

(assert (=> start!159682 e!1061671))

(declare-fun e!1061680 () Bool)

(assert (=> start!159682 e!1061680))

(declare-fun b!1655674 () Bool)

(declare-fun e!1061688 () Bool)

(declare-fun e!1061683 () Bool)

(assert (=> b!1655674 (= e!1061688 (not e!1061683))))

(declare-fun res!742442 () Bool)

(assert (=> b!1655674 (=> res!742442 e!1061683)))

(declare-fun lt!617903 () List!18353)

(assert (=> b!1655674 (= res!742442 (not (= lt!617903 (t!151232 tokens!457))))))

(declare-datatypes ((IArray!12195 0))(
  ( (IArray!12196 (innerList!6155 List!18353)) )
))
(declare-datatypes ((Conc!6095 0))(
  ( (Node!6095 (left!14640 Conc!6095) (right!14970 Conc!6095) (csize!12420 Int) (cheight!6306 Int)) (Leaf!8927 (xs!8935 IArray!12195) (csize!12421 Int)) (Empty!6095) )
))
(declare-datatypes ((BalanceConc!12134 0))(
  ( (BalanceConc!12135 (c!269305 Conc!6095)) )
))
(declare-datatypes ((tuple2!17982 0))(
  ( (tuple2!17983 (_1!10393 BalanceConc!12134) (_2!10393 BalanceConc!12132)) )
))
(declare-fun lt!617918 () tuple2!17982)

(declare-fun list!7286 (BalanceConc!12134) List!18353)

(assert (=> b!1655674 (= lt!617903 (list!7286 (_1!10393 lt!617918)))))

(declare-datatypes ((Unit!30657 0))(
  ( (Unit!30658) )
))
(declare-fun lt!617900 () Unit!30657)

(declare-fun theoremInvertabilityWhenTokenListSeparable!295 (LexerInterface!2852 List!18354 List!18353) Unit!30657)

(assert (=> b!1655674 (= lt!617900 (theoremInvertabilityWhenTokenListSeparable!295 thiss!17113 rules!1846 (t!151232 tokens!457)))))

(declare-fun lt!617920 () List!18351)

(declare-fun isPrefix!1481 (List!18351 List!18351) Bool)

(assert (=> b!1655674 (isPrefix!1481 lt!617908 lt!617920)))

(declare-fun lt!617927 () Unit!30657)

(declare-fun lt!617923 () List!18351)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1006 (List!18351 List!18351) Unit!30657)

(assert (=> b!1655674 (= lt!617927 (lemmaConcatTwoListThenFirstIsPrefix!1006 lt!617908 lt!617923))))

(declare-fun b!1655675 () Bool)

(assert (=> b!1655675 (= e!1061674 e!1061673)))

(declare-fun res!742443 () Bool)

(assert (=> b!1655675 (=> res!742443 e!1061673)))

(declare-fun lt!617912 () tuple2!17978)

(assert (=> b!1655675 (= res!742443 (or (not (= (_1!10391 lt!617912) (h!23684 tokens!457))) (not (= (_2!10391 lt!617912) lt!617923))))))

(declare-fun lt!617919 () Option!3489)

(assert (=> b!1655675 (= lt!617912 (get!5336 lt!617919))))

(declare-fun lt!617921 () Unit!30657)

(declare-fun lemmaMaxPrefWithNoPrefixMatchAllRulesThenSuffixReturnSame!178 (LexerInterface!2852 List!18354 Token!6012 Rule!6246 List!18351) Unit!30657)

(assert (=> b!1655675 (= lt!617921 (lemmaMaxPrefWithNoPrefixMatchAllRulesThenSuffixReturnSame!178 thiss!17113 rules!1846 (h!23684 tokens!457) (rule!5093 (h!23684 tokens!457)) lt!617923))))

(declare-fun b!1655676 () Bool)

(declare-fun e!1061676 () Bool)

(assert (=> b!1655676 (= e!1061676 e!1061685)))

(declare-fun res!742453 () Bool)

(assert (=> b!1655676 (=> res!742453 e!1061685)))

(declare-fun lt!617925 () BalanceConc!12132)

(declare-fun prefixMatchZipperSequence!641 (Regex!4551 BalanceConc!12132) Bool)

(declare-fun ++!4958 (BalanceConc!12132 BalanceConc!12132) BalanceConc!12132)

(assert (=> b!1655676 (= res!742453 (prefixMatchZipperSequence!641 lt!617910 (++!4958 lt!617925 lt!617915)))))

(declare-fun singletonSeq!1718 (C!9276) BalanceConc!12132)

(declare-fun apply!4854 (BalanceConc!12132 Int) C!9276)

(declare-fun charsOf!1872 (Token!6012) BalanceConc!12132)

(assert (=> b!1655676 (= lt!617915 (singletonSeq!1718 (apply!4854 (charsOf!1872 (h!23684 (t!151232 tokens!457))) 0)))))

(declare-fun rulesRegex!607 (LexerInterface!2852 List!18354) Regex!4551)

(assert (=> b!1655676 (= lt!617910 (rulesRegex!607 thiss!17113 rules!1846))))

(declare-fun b!1655677 () Bool)

(declare-fun res!742455 () Bool)

(assert (=> b!1655677 (=> (not res!742455) (not e!1061684))))

(declare-fun tokensListTwoByTwoPredicateSeparableList!545 (LexerInterface!2852 List!18353 List!18354) Bool)

(assert (=> b!1655677 (= res!742455 (tokensListTwoByTwoPredicateSeparableList!545 thiss!17113 tokens!457 rules!1846))))

(declare-fun tp!478623 () Bool)

(declare-fun e!1061682 () Bool)

(declare-fun b!1655678 () Bool)

(declare-fun e!1061675 () Bool)

(declare-fun inv!21 (TokenValue!3313) Bool)

(assert (=> b!1655678 (= e!1061682 (and (inv!21 (value!101528 (h!23684 tokens!457))) e!1061675 tp!478623))))

(declare-fun b!1655679 () Bool)

(declare-fun matchR!2044 (Regex!4551 List!18351) Bool)

(assert (=> b!1655679 (= e!1061672 (matchR!2044 (regex!3223 (rule!5093 (h!23684 tokens!457))) lt!617908))))

(declare-fun b!1655680 () Bool)

(declare-fun res!742440 () Bool)

(assert (=> b!1655680 (=> res!742440 e!1061681)))

(declare-fun isEmpty!11321 (BalanceConc!12134) Bool)

(declare-fun lex!1336 (LexerInterface!2852 List!18354 BalanceConc!12132) tuple2!17982)

(declare-fun seqFromList!2185 (List!18351) BalanceConc!12132)

(assert (=> b!1655680 (= res!742440 (isEmpty!11321 (_1!10393 (lex!1336 thiss!17113 rules!1846 (seqFromList!2185 lt!617908)))))))

(declare-fun b!1655681 () Bool)

(declare-fun res!742454 () Bool)

(assert (=> b!1655681 (=> (not res!742454) (not e!1061672))))

(declare-fun isEmpty!11322 (List!18351) Bool)

(assert (=> b!1655681 (= res!742454 (isEmpty!11322 (_2!10391 lt!617904)))))

(declare-fun tp!478619 () Bool)

(declare-fun b!1655682 () Bool)

(declare-fun inv!23633 (Token!6012) Bool)

(assert (=> b!1655682 (= e!1061680 (and (inv!23633 (h!23684 tokens!457)) e!1061682 tp!478619))))

(declare-fun b!1655683 () Bool)

(declare-fun e!1061670 () Bool)

(declare-fun head!3672 (List!18351) C!9276)

(assert (=> b!1655683 (= e!1061670 (= lt!617901 (Cons!18281 (head!3672 lt!617923) Nil!18281)))))

(declare-fun b!1655684 () Bool)

(declare-fun res!742449 () Bool)

(assert (=> b!1655684 (=> (not res!742449) (not e!1061684))))

(declare-fun isEmpty!11323 (List!18354) Bool)

(assert (=> b!1655684 (= res!742449 (not (isEmpty!11323 rules!1846)))))

(declare-fun b!1655685 () Bool)

(declare-fun res!742448 () Bool)

(assert (=> b!1655685 (=> (not res!742448) (not e!1061684))))

(declare-fun rulesProduceEachTokenIndividuallyList!1054 (LexerInterface!2852 List!18354 List!18353) Bool)

(assert (=> b!1655685 (= res!742448 (rulesProduceEachTokenIndividuallyList!1054 thiss!17113 rules!1846 tokens!457))))

(declare-fun b!1655686 () Bool)

(declare-fun res!742439 () Bool)

(declare-fun e!1061666 () Bool)

(assert (=> b!1655686 (=> res!742439 e!1061666)))

(declare-fun separableTokensPredicate!792 (LexerInterface!2852 Token!6012 Token!6012 List!18354) Bool)

(assert (=> b!1655686 (= res!742439 (not (separableTokensPredicate!792 thiss!17113 (h!23684 tokens!457) (h!23684 (t!151232 tokens!457)) rules!1846)))))

(declare-fun b!1655687 () Bool)

(assert (=> b!1655687 (= e!1061681 e!1061676)))

(declare-fun res!742437 () Bool)

(assert (=> b!1655687 (=> res!742437 e!1061676)))

(assert (=> b!1655687 (= res!742437 (not (isDefined!2844 lt!617919)))))

(declare-fun lt!617909 () Unit!30657)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!420 (LexerInterface!2852 List!18354 List!18351 List!18351) Unit!30657)

(assert (=> b!1655687 (= lt!617909 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!420 thiss!17113 rules!1846 lt!617908 lt!617923))))

(declare-fun b!1655688 () Bool)

(declare-fun res!742458 () Bool)

(assert (=> b!1655688 (=> (not res!742458) (not e!1061670))))

(assert (=> b!1655688 (= res!742458 (= lt!617901 (Cons!18281 (head!3672 (originalCharacters!4037 (h!23684 (t!151232 tokens!457)))) Nil!18281)))))

(declare-fun b!1655689 () Bool)

(assert (=> b!1655689 (= e!1061684 e!1061688)))

(declare-fun res!742452 () Bool)

(assert (=> b!1655689 (=> (not res!742452) (not e!1061688))))

(assert (=> b!1655689 (= res!742452 (= lt!617924 lt!617920))))

(assert (=> b!1655689 (= lt!617920 (++!4957 lt!617908 lt!617923))))

(assert (=> b!1655689 (= lt!617924 (list!7285 lt!617917))))

(declare-fun lt!617911 () BalanceConc!12132)

(assert (=> b!1655689 (= lt!617923 (list!7285 lt!617911))))

(assert (=> b!1655689 (= lt!617908 (list!7285 lt!617925))))

(assert (=> b!1655689 (= lt!617925 (charsOf!1872 (h!23684 tokens!457)))))

(assert (=> b!1655689 (= lt!617918 (lex!1336 thiss!17113 rules!1846 lt!617911))))

(declare-fun lt!617907 () BalanceConc!12134)

(declare-fun print!1383 (LexerInterface!2852 BalanceConc!12134) BalanceConc!12132)

(assert (=> b!1655689 (= lt!617911 (print!1383 thiss!17113 lt!617907))))

(declare-fun seqFromList!2186 (List!18353) BalanceConc!12134)

(assert (=> b!1655689 (= lt!617907 (seqFromList!2186 (t!151232 tokens!457)))))

(assert (=> b!1655689 (= lt!617917 (print!1383 thiss!17113 (seqFromList!2186 tokens!457)))))

(declare-fun b!1655690 () Bool)

(assert (=> b!1655690 (= e!1061667 e!1061668)))

(declare-fun res!742444 () Bool)

(assert (=> b!1655690 (=> res!742444 e!1061668)))

(declare-fun isDefined!2845 (Option!3490) Bool)

(assert (=> b!1655690 (= res!742444 (not (isDefined!2845 (maxPrefixZipperSequence!729 thiss!17113 rules!1846 (seqFromList!2185 (originalCharacters!4037 (h!23684 tokens!457)))))))))

(assert (=> b!1655690 (= lt!617901 lt!617902)))

(declare-fun head!3673 (BalanceConc!12132) C!9276)

(assert (=> b!1655690 (= lt!617902 (Cons!18281 (head!3673 lt!617911) Nil!18281))))

(assert (=> b!1655690 e!1061670))

(declare-fun res!742456 () Bool)

(assert (=> b!1655690 (=> (not res!742456) (not e!1061670))))

(assert (=> b!1655690 (= res!742456 (= lt!617908 (originalCharacters!4037 (h!23684 tokens!457))))))

(declare-fun b!1655691 () Bool)

(declare-fun tp!478624 () Bool)

(declare-fun inv!23630 (String!20897) Bool)

(declare-fun inv!23634 (TokenValueInjection!6286) Bool)

(assert (=> b!1655691 (= e!1061675 (and tp!478624 (inv!23630 (tag!3505 (rule!5093 (h!23684 tokens!457)))) (inv!23634 (transformation!3223 (rule!5093 (h!23684 tokens!457)))) e!1061679))))

(declare-fun b!1655692 () Bool)

(assert (=> b!1655692 (= e!1061666 e!1061681)))

(declare-fun res!742446 () Bool)

(assert (=> b!1655692 (=> res!742446 e!1061681)))

(declare-fun lt!617928 () List!18351)

(declare-fun lt!617913 () List!18351)

(assert (=> b!1655692 (= res!742446 (or (not (= lt!617913 lt!617928)) (not (= lt!617928 lt!617908)) (not (= lt!617913 lt!617908))))))

(declare-fun printList!965 (LexerInterface!2852 List!18353) List!18351)

(assert (=> b!1655692 (= lt!617928 (printList!965 thiss!17113 (Cons!18283 (h!23684 tokens!457) Nil!18283)))))

(declare-fun lt!617905 () BalanceConc!12132)

(assert (=> b!1655692 (= lt!617913 (list!7285 lt!617905))))

(declare-fun lt!617906 () BalanceConc!12134)

(declare-fun printTailRec!903 (LexerInterface!2852 BalanceConc!12134 Int BalanceConc!12132) BalanceConc!12132)

(assert (=> b!1655692 (= lt!617905 (printTailRec!903 thiss!17113 lt!617906 0 (BalanceConc!12133 Empty!6094)))))

(assert (=> b!1655692 (= lt!617905 (print!1383 thiss!17113 lt!617906))))

(declare-fun singletonSeq!1719 (Token!6012) BalanceConc!12134)

(assert (=> b!1655692 (= lt!617906 (singletonSeq!1719 (h!23684 tokens!457)))))

(assert (=> b!1655692 (= lt!617919 (maxPrefix!1414 thiss!17113 rules!1846 lt!617924))))

(declare-fun b!1655693 () Bool)

(assert (=> b!1655693 (= e!1061683 e!1061666)))

(declare-fun res!742445 () Bool)

(assert (=> b!1655693 (=> res!742445 e!1061666)))

(declare-fun lt!617926 () List!18353)

(declare-fun lt!617922 () List!18353)

(assert (=> b!1655693 (= res!742445 (or (not (= lt!617903 lt!617922)) (not (= lt!617922 lt!617926))))))

(assert (=> b!1655693 (= lt!617922 (list!7286 lt!617907))))

(assert (=> b!1655693 (= lt!617903 lt!617926)))

(declare-fun prepend!795 (BalanceConc!12134 Token!6012) BalanceConc!12134)

(assert (=> b!1655693 (= lt!617926 (list!7286 (prepend!795 (seqFromList!2186 (t!151232 (t!151232 tokens!457))) (h!23684 (t!151232 tokens!457)))))))

(declare-fun lt!617914 () Unit!30657)

(declare-fun seqFromListBHdTlConstructive!298 (Token!6012 List!18353 BalanceConc!12134) Unit!30657)

(assert (=> b!1655693 (= lt!617914 (seqFromListBHdTlConstructive!298 (h!23684 (t!151232 tokens!457)) (t!151232 (t!151232 tokens!457)) (_1!10393 lt!617918)))))

(declare-fun b!1655694 () Bool)

(declare-fun tp!478621 () Bool)

(assert (=> b!1655694 (= e!1061678 (and tp!478621 (inv!23630 (tag!3505 (h!23685 rules!1846))) (inv!23634 (transformation!3223 (h!23685 rules!1846))) e!1061669))))

(assert (= (and start!159682 res!742435) b!1655684))

(assert (= (and b!1655684 res!742449) b!1655668))

(assert (= (and b!1655668 res!742438) b!1655685))

(assert (= (and b!1655685 res!742448) b!1655677))

(assert (= (and b!1655677 res!742455) b!1655665))

(assert (= (and b!1655665 res!742436) b!1655689))

(assert (= (and b!1655689 res!742452) b!1655674))

(assert (= (and b!1655674 (not res!742442)) b!1655693))

(assert (= (and b!1655693 (not res!742445)) b!1655686))

(assert (= (and b!1655686 (not res!742439)) b!1655692))

(assert (= (and b!1655692 (not res!742446)) b!1655673))

(assert (= (and b!1655673 (not res!742441)) b!1655680))

(assert (= (and b!1655680 (not res!742440)) b!1655687))

(assert (= (and b!1655687 (not res!742437)) b!1655676))

(assert (= (and b!1655676 (not res!742453)) b!1655663))

(assert (= (and b!1655663 (not res!742450)) b!1655690))

(assert (= (and b!1655690 res!742456) b!1655688))

(assert (= (and b!1655688 res!742458) b!1655683))

(assert (= (and b!1655690 (not res!742444)) b!1655664))

(assert (= (and b!1655664 res!742459) b!1655681))

(assert (= (and b!1655681 res!742454) b!1655679))

(assert (= (and b!1655664 (not res!742457)) b!1655666))

(assert (= (and b!1655666 (not res!742451)) b!1655675))

(assert (= (and b!1655675 (not res!742443)) b!1655671))

(assert (= (and b!1655671 (not res!742447)) b!1655667))

(assert (= b!1655694 b!1655670))

(assert (= b!1655669 b!1655694))

(assert (= (and start!159682 ((_ is Cons!18284) rules!1846)) b!1655669))

(assert (= b!1655691 b!1655672))

(assert (= b!1655678 b!1655691))

(assert (= b!1655682 b!1655678))

(assert (= (and start!159682 ((_ is Cons!18283) tokens!457)) b!1655682))

(declare-fun m!2009569 () Bool)

(assert (=> b!1655680 m!2009569))

(assert (=> b!1655680 m!2009569))

(declare-fun m!2009571 () Bool)

(assert (=> b!1655680 m!2009571))

(declare-fun m!2009573 () Bool)

(assert (=> b!1655680 m!2009573))

(declare-fun m!2009575 () Bool)

(assert (=> b!1655676 m!2009575))

(declare-fun m!2009577 () Bool)

(assert (=> b!1655676 m!2009577))

(assert (=> b!1655676 m!2009577))

(declare-fun m!2009579 () Bool)

(assert (=> b!1655676 m!2009579))

(declare-fun m!2009581 () Bool)

(assert (=> b!1655676 m!2009581))

(declare-fun m!2009583 () Bool)

(assert (=> b!1655676 m!2009583))

(declare-fun m!2009585 () Bool)

(assert (=> b!1655676 m!2009585))

(assert (=> b!1655676 m!2009581))

(assert (=> b!1655676 m!2009585))

(declare-fun m!2009587 () Bool)

(assert (=> b!1655693 m!2009587))

(declare-fun m!2009589 () Bool)

(assert (=> b!1655693 m!2009589))

(declare-fun m!2009591 () Bool)

(assert (=> b!1655693 m!2009591))

(declare-fun m!2009593 () Bool)

(assert (=> b!1655693 m!2009593))

(assert (=> b!1655693 m!2009589))

(assert (=> b!1655693 m!2009593))

(declare-fun m!2009595 () Bool)

(assert (=> b!1655693 m!2009595))

(declare-fun m!2009597 () Bool)

(assert (=> b!1655668 m!2009597))

(declare-fun m!2009599 () Bool)

(assert (=> b!1655671 m!2009599))

(assert (=> b!1655671 m!2009599))

(declare-fun m!2009601 () Bool)

(assert (=> b!1655671 m!2009601))

(declare-fun m!2009603 () Bool)

(assert (=> b!1655681 m!2009603))

(declare-fun m!2009605 () Bool)

(assert (=> b!1655683 m!2009605))

(declare-fun m!2009607 () Bool)

(assert (=> b!1655674 m!2009607))

(declare-fun m!2009609 () Bool)

(assert (=> b!1655674 m!2009609))

(declare-fun m!2009611 () Bool)

(assert (=> b!1655674 m!2009611))

(declare-fun m!2009613 () Bool)

(assert (=> b!1655674 m!2009613))

(declare-fun m!2009615 () Bool)

(assert (=> b!1655663 m!2009615))

(assert (=> b!1655663 m!2009615))

(declare-fun m!2009617 () Bool)

(assert (=> b!1655663 m!2009617))

(declare-fun m!2009619 () Bool)

(assert (=> b!1655663 m!2009619))

(declare-fun m!2009621 () Bool)

(assert (=> b!1655687 m!2009621))

(declare-fun m!2009623 () Bool)

(assert (=> b!1655687 m!2009623))

(declare-fun m!2009625 () Bool)

(assert (=> b!1655678 m!2009625))

(declare-fun m!2009627 () Bool)

(assert (=> b!1655689 m!2009627))

(declare-fun m!2009629 () Bool)

(assert (=> b!1655689 m!2009629))

(declare-fun m!2009631 () Bool)

(assert (=> b!1655689 m!2009631))

(declare-fun m!2009633 () Bool)

(assert (=> b!1655689 m!2009633))

(declare-fun m!2009635 () Bool)

(assert (=> b!1655689 m!2009635))

(declare-fun m!2009637 () Bool)

(assert (=> b!1655689 m!2009637))

(declare-fun m!2009639 () Bool)

(assert (=> b!1655689 m!2009639))

(declare-fun m!2009641 () Bool)

(assert (=> b!1655689 m!2009641))

(assert (=> b!1655689 m!2009635))

(declare-fun m!2009643 () Bool)

(assert (=> b!1655689 m!2009643))

(declare-fun m!2009645 () Bool)

(assert (=> b!1655689 m!2009645))

(declare-fun m!2009647 () Bool)

(assert (=> b!1655688 m!2009647))

(declare-fun m!2009649 () Bool)

(assert (=> b!1655691 m!2009649))

(declare-fun m!2009651 () Bool)

(assert (=> b!1655691 m!2009651))

(declare-fun m!2009653 () Bool)

(assert (=> b!1655684 m!2009653))

(declare-fun m!2009655 () Bool)

(assert (=> b!1655694 m!2009655))

(declare-fun m!2009657 () Bool)

(assert (=> b!1655694 m!2009657))

(declare-fun m!2009659 () Bool)

(assert (=> b!1655666 m!2009659))

(assert (=> b!1655666 m!2009659))

(declare-fun m!2009661 () Bool)

(assert (=> b!1655666 m!2009661))

(declare-fun m!2009663 () Bool)

(assert (=> b!1655679 m!2009663))

(declare-fun m!2009665 () Bool)

(assert (=> b!1655692 m!2009665))

(declare-fun m!2009667 () Bool)

(assert (=> b!1655692 m!2009667))

(declare-fun m!2009669 () Bool)

(assert (=> b!1655692 m!2009669))

(declare-fun m!2009671 () Bool)

(assert (=> b!1655692 m!2009671))

(declare-fun m!2009673 () Bool)

(assert (=> b!1655692 m!2009673))

(declare-fun m!2009675 () Bool)

(assert (=> b!1655692 m!2009675))

(declare-fun m!2009677 () Bool)

(assert (=> b!1655675 m!2009677))

(declare-fun m!2009679 () Bool)

(assert (=> b!1655675 m!2009679))

(declare-fun m!2009681 () Bool)

(assert (=> b!1655686 m!2009681))

(declare-fun m!2009683 () Bool)

(assert (=> b!1655667 m!2009683))

(assert (=> b!1655667 m!2009683))

(declare-fun m!2009685 () Bool)

(assert (=> b!1655667 m!2009685))

(declare-fun m!2009687 () Bool)

(assert (=> b!1655682 m!2009687))

(declare-fun m!2009689 () Bool)

(assert (=> b!1655673 m!2009689))

(declare-fun m!2009691 () Bool)

(assert (=> b!1655685 m!2009691))

(declare-fun m!2009693 () Bool)

(assert (=> b!1655677 m!2009693))

(declare-fun m!2009695 () Bool)

(assert (=> b!1655664 m!2009695))

(declare-fun m!2009697 () Bool)

(assert (=> b!1655664 m!2009697))

(declare-fun m!2009699 () Bool)

(assert (=> b!1655664 m!2009699))

(declare-fun m!2009701 () Bool)

(assert (=> b!1655664 m!2009701))

(declare-fun m!2009703 () Bool)

(assert (=> b!1655664 m!2009703))

(declare-fun m!2009705 () Bool)

(assert (=> b!1655664 m!2009705))

(declare-fun m!2009707 () Bool)

(assert (=> b!1655664 m!2009707))

(assert (=> b!1655664 m!2009697))

(assert (=> b!1655664 m!2009701))

(declare-fun m!2009709 () Bool)

(assert (=> b!1655690 m!2009709))

(assert (=> b!1655690 m!2009709))

(declare-fun m!2009711 () Bool)

(assert (=> b!1655690 m!2009711))

(assert (=> b!1655690 m!2009711))

(declare-fun m!2009713 () Bool)

(assert (=> b!1655690 m!2009713))

(declare-fun m!2009715 () Bool)

(assert (=> b!1655690 m!2009715))

(check-sat (not b!1655691) (not b_next!45725) (not b!1655684) (not b!1655674) (not b!1655679) (not b!1655689) (not b!1655676) (not b!1655671) (not b!1655673) (not b!1655666) (not b!1655687) (not b!1655681) b_and!117535 (not b_next!45719) (not b!1655669) (not b!1655677) (not b!1655685) (not b!1655694) (not b!1655680) (not b!1655675) (not b!1655690) b_and!117533 (not b_next!45721) (not b!1655686) (not b!1655693) (not b!1655682) b_and!117539 (not b!1655667) (not b!1655663) (not b!1655688) b_and!117537 (not b!1655683) (not b!1655668) (not b!1655692) (not b_next!45723) (not b!1655664) (not b!1655678))
(check-sat (not b_next!45725) (not b_next!45719) b_and!117533 (not b_next!45721) b_and!117539 b_and!117537 (not b_next!45723) b_and!117535)
(get-model)

(declare-fun d!499388 () Bool)

(assert (=> d!499388 (= (inv!23630 (tag!3505 (h!23685 rules!1846))) (= (mod (str.len (value!101527 (tag!3505 (h!23685 rules!1846)))) 2) 0))))

(assert (=> b!1655694 d!499388))

(declare-fun d!499390 () Bool)

(declare-fun res!742475 () Bool)

(declare-fun e!1061693 () Bool)

(assert (=> d!499390 (=> (not res!742475) (not e!1061693))))

(declare-fun semiInverseModEq!1249 (Int Int) Bool)

(assert (=> d!499390 (= res!742475 (semiInverseModEq!1249 (toChars!4533 (transformation!3223 (h!23685 rules!1846))) (toValue!4674 (transformation!3223 (h!23685 rules!1846)))))))

(assert (=> d!499390 (= (inv!23634 (transformation!3223 (h!23685 rules!1846))) e!1061693)))

(declare-fun b!1655701 () Bool)

(declare-fun equivClasses!1190 (Int Int) Bool)

(assert (=> b!1655701 (= e!1061693 (equivClasses!1190 (toChars!4533 (transformation!3223 (h!23685 rules!1846))) (toValue!4674 (transformation!3223 (h!23685 rules!1846)))))))

(assert (= (and d!499390 res!742475) b!1655701))

(declare-fun m!2009721 () Bool)

(assert (=> d!499390 m!2009721))

(declare-fun m!2009723 () Bool)

(assert (=> b!1655701 m!2009723))

(assert (=> b!1655694 d!499390))

(declare-fun d!499394 () Bool)

(declare-fun lt!618009 () Bool)

(declare-fun e!1061737 () Bool)

(assert (=> d!499394 (= lt!618009 e!1061737)))

(declare-fun res!742527 () Bool)

(assert (=> d!499394 (=> (not res!742527) (not e!1061737))))

(assert (=> d!499394 (= res!742527 (= (list!7286 (_1!10393 (lex!1336 thiss!17113 rules!1846 (print!1383 thiss!17113 (singletonSeq!1719 (h!23684 tokens!457)))))) (list!7286 (singletonSeq!1719 (h!23684 tokens!457)))))))

(declare-fun e!1061736 () Bool)

(assert (=> d!499394 (= lt!618009 e!1061736)))

(declare-fun res!742528 () Bool)

(assert (=> d!499394 (=> (not res!742528) (not e!1061736))))

(declare-fun lt!618010 () tuple2!17982)

(declare-fun size!14547 (BalanceConc!12134) Int)

(assert (=> d!499394 (= res!742528 (= (size!14547 (_1!10393 lt!618010)) 1))))

(assert (=> d!499394 (= lt!618010 (lex!1336 thiss!17113 rules!1846 (print!1383 thiss!17113 (singletonSeq!1719 (h!23684 tokens!457)))))))

(assert (=> d!499394 (not (isEmpty!11323 rules!1846))))

(assert (=> d!499394 (= (rulesProduceIndividualToken!1500 thiss!17113 rules!1846 (h!23684 tokens!457)) lt!618009)))

(declare-fun b!1655766 () Bool)

(declare-fun res!742526 () Bool)

(assert (=> b!1655766 (=> (not res!742526) (not e!1061736))))

(declare-fun apply!4857 (BalanceConc!12134 Int) Token!6012)

(assert (=> b!1655766 (= res!742526 (= (apply!4857 (_1!10393 lt!618010) 0) (h!23684 tokens!457)))))

(declare-fun b!1655767 () Bool)

(declare-fun isEmpty!11326 (BalanceConc!12132) Bool)

(assert (=> b!1655767 (= e!1061736 (isEmpty!11326 (_2!10393 lt!618010)))))

(declare-fun b!1655768 () Bool)

(assert (=> b!1655768 (= e!1061737 (isEmpty!11326 (_2!10393 (lex!1336 thiss!17113 rules!1846 (print!1383 thiss!17113 (singletonSeq!1719 (h!23684 tokens!457)))))))))

(assert (= (and d!499394 res!742528) b!1655766))

(assert (= (and b!1655766 res!742526) b!1655767))

(assert (= (and d!499394 res!742527) b!1655768))

(assert (=> d!499394 m!2009653))

(assert (=> d!499394 m!2009673))

(declare-fun m!2009871 () Bool)

(assert (=> d!499394 m!2009871))

(assert (=> d!499394 m!2009673))

(declare-fun m!2009873 () Bool)

(assert (=> d!499394 m!2009873))

(assert (=> d!499394 m!2009673))

(declare-fun m!2009875 () Bool)

(assert (=> d!499394 m!2009875))

(assert (=> d!499394 m!2009871))

(declare-fun m!2009877 () Bool)

(assert (=> d!499394 m!2009877))

(declare-fun m!2009879 () Bool)

(assert (=> d!499394 m!2009879))

(declare-fun m!2009881 () Bool)

(assert (=> b!1655766 m!2009881))

(declare-fun m!2009883 () Bool)

(assert (=> b!1655767 m!2009883))

(assert (=> b!1655768 m!2009673))

(assert (=> b!1655768 m!2009673))

(assert (=> b!1655768 m!2009871))

(assert (=> b!1655768 m!2009871))

(assert (=> b!1655768 m!2009877))

(declare-fun m!2009885 () Bool)

(assert (=> b!1655768 m!2009885))

(assert (=> b!1655673 d!499394))

(declare-fun d!499422 () Bool)

(assert (=> d!499422 (= (get!5336 (maxPrefixZipper!350 thiss!17113 rules!1846 lt!617924)) (v!24685 (maxPrefixZipper!350 thiss!17113 rules!1846 lt!617924)))))

(assert (=> b!1655671 d!499422))

(declare-fun d!499424 () Bool)

(declare-fun lt!618023 () Option!3489)

(assert (=> d!499424 (= lt!618023 (maxPrefix!1414 thiss!17113 rules!1846 lt!617924))))

(declare-fun e!1061740 () Option!3489)

(assert (=> d!499424 (= lt!618023 e!1061740)))

(declare-fun c!269315 () Bool)

(assert (=> d!499424 (= c!269315 (and ((_ is Cons!18284) rules!1846) ((_ is Nil!18284) (t!151233 rules!1846))))))

(declare-fun lt!618025 () Unit!30657)

(declare-fun lt!618024 () Unit!30657)

(assert (=> d!499424 (= lt!618025 lt!618024)))

(assert (=> d!499424 (isPrefix!1481 lt!617924 lt!617924)))

(declare-fun lemmaIsPrefixRefl!1004 (List!18351 List!18351) Unit!30657)

(assert (=> d!499424 (= lt!618024 (lemmaIsPrefixRefl!1004 lt!617924 lt!617924))))

(declare-fun rulesValidInductive!1026 (LexerInterface!2852 List!18354) Bool)

(assert (=> d!499424 (rulesValidInductive!1026 thiss!17113 rules!1846)))

(assert (=> d!499424 (= (maxPrefixZipper!350 thiss!17113 rules!1846 lt!617924) lt!618023)))

(declare-fun call!106115 () Option!3489)

(declare-fun bm!106110 () Bool)

(declare-fun maxPrefixOneRuleZipper!126 (LexerInterface!2852 Rule!6246 List!18351) Option!3489)

(assert (=> bm!106110 (= call!106115 (maxPrefixOneRuleZipper!126 thiss!17113 (h!23685 rules!1846) lt!617924))))

(declare-fun b!1655773 () Bool)

(assert (=> b!1655773 (= e!1061740 call!106115)))

(declare-fun b!1655774 () Bool)

(declare-fun lt!618021 () Option!3489)

(declare-fun lt!618022 () Option!3489)

(assert (=> b!1655774 (= e!1061740 (ite (and ((_ is None!3488) lt!618021) ((_ is None!3488) lt!618022)) None!3488 (ite ((_ is None!3488) lt!618022) lt!618021 (ite ((_ is None!3488) lt!618021) lt!618022 (ite (>= (size!14544 (_1!10391 (v!24685 lt!618021))) (size!14544 (_1!10391 (v!24685 lt!618022)))) lt!618021 lt!618022)))))))

(assert (=> b!1655774 (= lt!618021 call!106115)))

(assert (=> b!1655774 (= lt!618022 (maxPrefixZipper!350 thiss!17113 (t!151233 rules!1846) lt!617924))))

(assert (= (and d!499424 c!269315) b!1655773))

(assert (= (and d!499424 (not c!269315)) b!1655774))

(assert (= (or b!1655773 b!1655774) bm!106110))

(assert (=> d!499424 m!2009669))

(declare-fun m!2009887 () Bool)

(assert (=> d!499424 m!2009887))

(declare-fun m!2009889 () Bool)

(assert (=> d!499424 m!2009889))

(declare-fun m!2009891 () Bool)

(assert (=> d!499424 m!2009891))

(declare-fun m!2009893 () Bool)

(assert (=> bm!106110 m!2009893))

(declare-fun m!2009895 () Bool)

(assert (=> b!1655774 m!2009895))

(assert (=> b!1655671 d!499424))

(declare-fun d!499426 () Bool)

(declare-fun e!1061743 () Bool)

(assert (=> d!499426 e!1061743))

(declare-fun res!742531 () Bool)

(assert (=> d!499426 (=> (not res!742531) (not e!1061743))))

(declare-fun isBalanced!1876 (Conc!6095) Bool)

(declare-fun prepend!796 (Conc!6095 Token!6012) Conc!6095)

(assert (=> d!499426 (= res!742531 (isBalanced!1876 (prepend!796 (c!269305 (seqFromList!2186 (t!151232 (t!151232 tokens!457)))) (h!23684 (t!151232 tokens!457)))))))

(declare-fun lt!618028 () BalanceConc!12134)

(assert (=> d!499426 (= lt!618028 (BalanceConc!12135 (prepend!796 (c!269305 (seqFromList!2186 (t!151232 (t!151232 tokens!457)))) (h!23684 (t!151232 tokens!457)))))))

(assert (=> d!499426 (= (prepend!795 (seqFromList!2186 (t!151232 (t!151232 tokens!457))) (h!23684 (t!151232 tokens!457))) lt!618028)))

(declare-fun b!1655777 () Bool)

(assert (=> b!1655777 (= e!1061743 (= (list!7286 lt!618028) (Cons!18283 (h!23684 (t!151232 tokens!457)) (list!7286 (seqFromList!2186 (t!151232 (t!151232 tokens!457)))))))))

(assert (= (and d!499426 res!742531) b!1655777))

(declare-fun m!2009897 () Bool)

(assert (=> d!499426 m!2009897))

(assert (=> d!499426 m!2009897))

(declare-fun m!2009899 () Bool)

(assert (=> d!499426 m!2009899))

(declare-fun m!2009901 () Bool)

(assert (=> b!1655777 m!2009901))

(assert (=> b!1655777 m!2009593))

(declare-fun m!2009903 () Bool)

(assert (=> b!1655777 m!2009903))

(assert (=> b!1655693 d!499426))

(declare-fun d!499428 () Bool)

(declare-fun list!7287 (Conc!6095) List!18353)

(assert (=> d!499428 (= (list!7286 (prepend!795 (seqFromList!2186 (t!151232 (t!151232 tokens!457))) (h!23684 (t!151232 tokens!457)))) (list!7287 (c!269305 (prepend!795 (seqFromList!2186 (t!151232 (t!151232 tokens!457))) (h!23684 (t!151232 tokens!457))))))))

(declare-fun bs!396830 () Bool)

(assert (= bs!396830 d!499428))

(declare-fun m!2009905 () Bool)

(assert (=> bs!396830 m!2009905))

(assert (=> b!1655693 d!499428))

(declare-fun d!499430 () Bool)

(declare-fun fromListB!981 (List!18353) BalanceConc!12134)

(assert (=> d!499430 (= (seqFromList!2186 (t!151232 (t!151232 tokens!457))) (fromListB!981 (t!151232 (t!151232 tokens!457))))))

(declare-fun bs!396831 () Bool)

(assert (= bs!396831 d!499430))

(declare-fun m!2009907 () Bool)

(assert (=> bs!396831 m!2009907))

(assert (=> b!1655693 d!499430))

(declare-fun d!499432 () Bool)

(assert (=> d!499432 (= (list!7286 (_1!10393 lt!617918)) (list!7286 (prepend!795 (seqFromList!2186 (t!151232 (t!151232 tokens!457))) (h!23684 (t!151232 tokens!457)))))))

(declare-fun lt!618031 () Unit!30657)

(declare-fun choose!9944 (Token!6012 List!18353 BalanceConc!12134) Unit!30657)

(assert (=> d!499432 (= lt!618031 (choose!9944 (h!23684 (t!151232 tokens!457)) (t!151232 (t!151232 tokens!457)) (_1!10393 lt!617918)))))

(declare-fun $colon$colon!377 (List!18353 Token!6012) List!18353)

(assert (=> d!499432 (= (list!7286 (_1!10393 lt!617918)) (list!7286 (seqFromList!2186 ($colon$colon!377 (t!151232 (t!151232 tokens!457)) (h!23684 (t!151232 tokens!457))))))))

(assert (=> d!499432 (= (seqFromListBHdTlConstructive!298 (h!23684 (t!151232 tokens!457)) (t!151232 (t!151232 tokens!457)) (_1!10393 lt!617918)) lt!618031)))

(declare-fun bs!396832 () Bool)

(assert (= bs!396832 d!499432))

(assert (=> bs!396832 m!2009593))

(declare-fun m!2009909 () Bool)

(assert (=> bs!396832 m!2009909))

(declare-fun m!2009911 () Bool)

(assert (=> bs!396832 m!2009911))

(assert (=> bs!396832 m!2009593))

(assert (=> bs!396832 m!2009589))

(assert (=> bs!396832 m!2009607))

(assert (=> bs!396832 m!2009909))

(declare-fun m!2009913 () Bool)

(assert (=> bs!396832 m!2009913))

(assert (=> bs!396832 m!2009913))

(declare-fun m!2009915 () Bool)

(assert (=> bs!396832 m!2009915))

(assert (=> bs!396832 m!2009589))

(assert (=> bs!396832 m!2009591))

(assert (=> b!1655693 d!499432))

(declare-fun d!499434 () Bool)

(assert (=> d!499434 (= (list!7286 lt!617907) (list!7287 (c!269305 lt!617907)))))

(declare-fun bs!396833 () Bool)

(assert (= bs!396833 d!499434))

(declare-fun m!2009917 () Bool)

(assert (=> bs!396833 m!2009917))

(assert (=> b!1655693 d!499434))

(declare-fun d!499436 () Bool)

(assert (=> d!499436 (= (get!5336 lt!617919) (v!24685 lt!617919))))

(assert (=> b!1655675 d!499436))

(declare-fun d!499438 () Bool)

(assert (=> d!499438 (= (maxPrefix!1414 thiss!17113 rules!1846 (++!4957 (list!7285 (charsOf!1872 (h!23684 tokens!457))) lt!617923)) (Some!3488 (tuple2!17979 (h!23684 tokens!457) lt!617923)))))

(declare-fun lt!618447 () Unit!30657)

(declare-fun Unit!30662 () Unit!30657)

(assert (=> d!499438 (= lt!618447 Unit!30662)))

(declare-fun lt!618475 () Unit!30657)

(declare-fun e!1061876 () Unit!30657)

(assert (=> d!499438 (= lt!618475 e!1061876)))

(declare-fun c!269373 () Bool)

(declare-fun lt!618437 () Token!6012)

(assert (=> d!499438 (= c!269373 (not (= (rule!5093 lt!618437) (rule!5093 (h!23684 tokens!457)))))))

(declare-fun lt!618460 () Unit!30657)

(declare-fun lt!618472 () Unit!30657)

(assert (=> d!499438 (= lt!618460 lt!618472)))

(declare-fun lt!618452 () List!18351)

(assert (=> d!499438 (= lt!617923 lt!618452)))

(declare-fun lt!618474 () List!18351)

(declare-fun lemmaSamePrefixThenSameSuffix!683 (List!18351 List!18351 List!18351 List!18351 List!18351) Unit!30657)

(assert (=> d!499438 (= lt!618472 (lemmaSamePrefixThenSameSuffix!683 (list!7285 (charsOf!1872 (h!23684 tokens!457))) lt!617923 (list!7285 (charsOf!1872 (h!23684 tokens!457))) lt!618452 lt!618474))))

(declare-fun lt!618435 () Unit!30657)

(declare-fun lt!618428 () Unit!30657)

(assert (=> d!499438 (= lt!618435 lt!618428)))

(declare-fun lt!618436 () List!18351)

(declare-fun lt!618456 () List!18351)

(assert (=> d!499438 (= lt!618436 lt!618456)))

(declare-fun lemmaIsPrefixSameLengthThenSameList!184 (List!18351 List!18351 List!18351) Unit!30657)

(assert (=> d!499438 (= lt!618428 (lemmaIsPrefixSameLengthThenSameList!184 lt!618436 lt!618456 lt!618474))))

(assert (=> d!499438 (= lt!618456 (list!7285 (charsOf!1872 (h!23684 tokens!457))))))

(assert (=> d!499438 (= lt!618436 (list!7285 (charsOf!1872 lt!618437)))))

(declare-fun lt!618433 () Unit!30657)

(declare-fun e!1061873 () Unit!30657)

(assert (=> d!499438 (= lt!618433 e!1061873)))

(declare-fun c!269375 () Bool)

(declare-fun size!14548 (BalanceConc!12132) Int)

(assert (=> d!499438 (= c!269375 (< (size!14548 (charsOf!1872 lt!618437)) (size!14548 (charsOf!1872 (h!23684 tokens!457)))))))

(declare-fun lt!618451 () Unit!30657)

(declare-fun e!1061875 () Unit!30657)

(assert (=> d!499438 (= lt!618451 e!1061875)))

(declare-fun c!269374 () Bool)

(assert (=> d!499438 (= c!269374 (> (size!14548 (charsOf!1872 lt!618437)) (size!14548 (charsOf!1872 (h!23684 tokens!457)))))))

(declare-fun lt!618465 () Unit!30657)

(declare-fun lt!618464 () Unit!30657)

(assert (=> d!499438 (= lt!618465 lt!618464)))

(assert (=> d!499438 (matchR!2044 (rulesRegex!607 thiss!17113 rules!1846) (list!7285 (charsOf!1872 (h!23684 tokens!457))))))

(declare-fun lemmaMaxPrefixThenMatchesRulesRegex!61 (LexerInterface!2852 List!18354 List!18351 Token!6012 Rule!6246 List!18351) Unit!30657)

(assert (=> d!499438 (= lt!618464 (lemmaMaxPrefixThenMatchesRulesRegex!61 thiss!17113 rules!1846 (list!7285 (charsOf!1872 (h!23684 tokens!457))) (h!23684 tokens!457) (rule!5093 (h!23684 tokens!457)) Nil!18281))))

(declare-fun lt!618443 () Unit!30657)

(declare-fun lt!618442 () Unit!30657)

(assert (=> d!499438 (= lt!618443 lt!618442)))

(declare-fun lt!618459 () List!18351)

(assert (=> d!499438 (= lt!618452 lt!618459)))

(declare-fun lt!618429 () List!18351)

(declare-fun lt!618468 () List!18351)

(assert (=> d!499438 (= lt!618442 (lemmaSamePrefixThenSameSuffix!683 lt!618468 lt!618452 lt!618429 lt!618459 lt!618474))))

(declare-fun getSuffix!731 (List!18351 List!18351) List!18351)

(assert (=> d!499438 (= lt!618459 (getSuffix!731 lt!618474 (list!7285 (charsOf!1872 lt!618437))))))

(assert (=> d!499438 (= lt!618429 (list!7285 (charsOf!1872 lt!618437)))))

(assert (=> d!499438 (= lt!618468 (list!7285 (charsOf!1872 lt!618437)))))

(declare-fun lt!618488 () Unit!30657)

(declare-fun lt!618466 () Unit!30657)

(assert (=> d!499438 (= lt!618488 lt!618466)))

(declare-fun lt!618458 () List!18351)

(declare-fun maxPrefixOneRule!819 (LexerInterface!2852 Rule!6246 List!18351) Option!3489)

(declare-fun apply!4859 (TokenValueInjection!6286 BalanceConc!12132) TokenValue!3313)

(declare-fun size!14549 (List!18351) Int)

(assert (=> d!499438 (= (maxPrefixOneRule!819 thiss!17113 (rule!5093 lt!618437) lt!618474) (Some!3488 (tuple2!17979 (Token!6013 (apply!4859 (transformation!3223 (rule!5093 lt!618437)) (seqFromList!2185 lt!618458)) (rule!5093 lt!618437) (size!14549 lt!618458) lt!618458) lt!618452)))))

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!250 (LexerInterface!2852 List!18354 List!18351 List!18351 List!18351 Rule!6246) Unit!30657)

(assert (=> d!499438 (= lt!618466 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!250 thiss!17113 rules!1846 lt!618458 lt!618474 lt!618452 (rule!5093 lt!618437)))))

(assert (=> d!499438 (= lt!618458 (list!7285 (charsOf!1872 lt!618437)))))

(declare-fun lt!618434 () Unit!30657)

(declare-fun lemmaCharactersSize!356 (Token!6012) Unit!30657)

(assert (=> d!499438 (= lt!618434 (lemmaCharactersSize!356 lt!618437))))

(declare-fun lt!618473 () Unit!30657)

(declare-fun lemmaEqSameImage!209 (TokenValueInjection!6286 BalanceConc!12132 BalanceConc!12132) Unit!30657)

(assert (=> d!499438 (= lt!618473 (lemmaEqSameImage!209 (transformation!3223 (rule!5093 lt!618437)) (charsOf!1872 lt!618437) (seqFromList!2185 (originalCharacters!4037 lt!618437))))))

(declare-fun lt!618484 () Unit!30657)

(declare-fun lemmaSemiInverse!424 (TokenValueInjection!6286 BalanceConc!12132) Unit!30657)

(assert (=> d!499438 (= lt!618484 (lemmaSemiInverse!424 (transformation!3223 (rule!5093 lt!618437)) (charsOf!1872 lt!618437)))))

(declare-fun lt!618469 () Unit!30657)

(declare-fun lemmaInv!489 (TokenValueInjection!6286) Unit!30657)

(assert (=> d!499438 (= lt!618469 (lemmaInv!489 (transformation!3223 (rule!5093 lt!618437))))))

(declare-fun lt!618439 () Unit!30657)

(declare-fun lt!618422 () Unit!30657)

(assert (=> d!499438 (= lt!618439 lt!618422)))

(declare-fun lt!618421 () List!18351)

(assert (=> d!499438 (isPrefix!1481 lt!618421 (++!4957 lt!618421 lt!618452))))

(assert (=> d!499438 (= lt!618422 (lemmaConcatTwoListThenFirstIsPrefix!1006 lt!618421 lt!618452))))

(assert (=> d!499438 (= lt!618421 (list!7285 (charsOf!1872 lt!618437)))))

(declare-fun lt!618426 () Unit!30657)

(declare-fun lt!618444 () Unit!30657)

(assert (=> d!499438 (= lt!618426 lt!618444)))

(declare-fun e!1061874 () Bool)

(assert (=> d!499438 e!1061874))

(declare-fun res!742652 () Bool)

(assert (=> d!499438 (=> (not res!742652) (not e!1061874))))

(declare-datatypes ((Option!3491 0))(
  ( (None!3490) (Some!3490 (v!24693 Rule!6246)) )
))
(declare-fun isDefined!2846 (Option!3491) Bool)

(declare-fun getRuleFromTag!323 (LexerInterface!2852 List!18354 String!20897) Option!3491)

(assert (=> d!499438 (= res!742652 (isDefined!2846 (getRuleFromTag!323 thiss!17113 rules!1846 (tag!3505 (rule!5093 lt!618437)))))))

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!323 (LexerInterface!2852 List!18354 List!18351 Token!6012) Unit!30657)

(assert (=> d!499438 (= lt!618444 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!323 thiss!17113 rules!1846 lt!618474 lt!618437))))

(declare-fun lt!618463 () Option!3489)

(assert (=> d!499438 (= lt!618452 (_2!10391 (get!5336 lt!618463)))))

(assert (=> d!499438 (= lt!618437 (_1!10391 (get!5336 lt!618463)))))

(declare-fun lt!618455 () Unit!30657)

(assert (=> d!499438 (= lt!618455 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!420 thiss!17113 rules!1846 (list!7285 (charsOf!1872 (h!23684 tokens!457))) lt!617923))))

(assert (=> d!499438 (= lt!618463 (maxPrefix!1414 thiss!17113 rules!1846 lt!618474))))

(declare-fun lt!618481 () Unit!30657)

(declare-fun lt!618478 () Unit!30657)

(assert (=> d!499438 (= lt!618481 lt!618478)))

(declare-fun lt!618476 () List!18351)

(assert (=> d!499438 (isPrefix!1481 lt!618476 (++!4957 lt!618476 lt!617923))))

(assert (=> d!499438 (= lt!618478 (lemmaConcatTwoListThenFirstIsPrefix!1006 lt!618476 lt!617923))))

(assert (=> d!499438 (= lt!618476 (list!7285 (charsOf!1872 (h!23684 tokens!457))))))

(assert (=> d!499438 (= lt!618474 (++!4957 (list!7285 (charsOf!1872 (h!23684 tokens!457))) lt!617923))))

(assert (=> d!499438 (not (isEmpty!11323 rules!1846))))

(assert (=> d!499438 (= (lemmaMaxPrefWithNoPrefixMatchAllRulesThenSuffixReturnSame!178 thiss!17113 rules!1846 (h!23684 tokens!457) (rule!5093 (h!23684 tokens!457)) lt!617923) lt!618447)))

(declare-fun b!1656003 () Bool)

(declare-fun get!5338 (Option!3491) Rule!6246)

(assert (=> b!1656003 (= e!1061874 (= (rule!5093 lt!618437) (get!5338 (getRuleFromTag!323 thiss!17113 rules!1846 (tag!3505 (rule!5093 lt!618437))))))))

(declare-fun b!1656004 () Bool)

(assert (=> b!1656004 false))

(declare-fun lt!618477 () Unit!30657)

(declare-fun lt!618485 () Unit!30657)

(assert (=> b!1656004 (= lt!618477 lt!618485)))

(assert (=> b!1656004 (= (rule!5093 lt!618437) (rule!5093 (h!23684 tokens!457)))))

(declare-fun lemmaSameIndexThenSameElement!77 (List!18354 Rule!6246 Rule!6246) Unit!30657)

(assert (=> b!1656004 (= lt!618485 (lemmaSameIndexThenSameElement!77 rules!1846 (rule!5093 lt!618437) (rule!5093 (h!23684 tokens!457))))))

(declare-fun e!1061871 () Unit!30657)

(declare-fun Unit!30663 () Unit!30657)

(assert (=> b!1656004 (= e!1061871 Unit!30663)))

(declare-fun b!1656005 () Bool)

(declare-fun Unit!30664 () Unit!30657)

(assert (=> b!1656005 (= e!1061873 Unit!30664)))

(declare-fun lt!618446 () List!18351)

(assert (=> b!1656005 (= lt!618446 (list!7285 (charsOf!1872 lt!618437)))))

(declare-fun lt!618479 () List!18351)

(assert (=> b!1656005 (= lt!618479 (list!7285 (charsOf!1872 (h!23684 tokens!457))))))

(declare-fun lt!618448 () Unit!30657)

(declare-fun lemmaMaxPrefixOutputsMaxPrefix!151 (LexerInterface!2852 List!18354 Rule!6246 List!18351 List!18351 List!18351 Rule!6246) Unit!30657)

(assert (=> b!1656005 (= lt!618448 (lemmaMaxPrefixOutputsMaxPrefix!151 thiss!17113 rules!1846 (rule!5093 lt!618437) lt!618446 lt!618474 lt!618479 (rule!5093 (h!23684 tokens!457))))))

(assert (=> b!1656005 (not (matchR!2044 (regex!3223 (rule!5093 (h!23684 tokens!457))) lt!618479))))

(declare-fun lt!618454 () Unit!30657)

(assert (=> b!1656005 (= lt!618454 lt!618448)))

(assert (=> b!1656005 false))

(declare-fun b!1656006 () Bool)

(declare-fun Unit!30665 () Unit!30657)

(assert (=> b!1656006 (= e!1061876 Unit!30665)))

(declare-fun b!1656007 () Bool)

(declare-fun res!742651 () Bool)

(assert (=> b!1656007 (=> (not res!742651) (not e!1061874))))

(assert (=> b!1656007 (= res!742651 (matchR!2044 (regex!3223 (get!5338 (getRuleFromTag!323 thiss!17113 rules!1846 (tag!3505 (rule!5093 lt!618437))))) (list!7285 (charsOf!1872 lt!618437))))))

(declare-fun b!1656008 () Bool)

(declare-fun e!1061872 () Unit!30657)

(declare-fun Unit!30666 () Unit!30657)

(assert (=> b!1656008 (= e!1061872 Unit!30666)))

(declare-fun b!1656009 () Bool)

(declare-fun Unit!30667 () Unit!30657)

(assert (=> b!1656009 (= e!1061873 Unit!30667)))

(declare-fun b!1656010 () Bool)

(assert (=> b!1656010 false))

(declare-fun lt!618440 () Unit!30657)

(declare-fun lt!618430 () Unit!30657)

(assert (=> b!1656010 (= lt!618440 lt!618430)))

(declare-fun lt!618453 () List!18351)

(assert (=> b!1656010 (not (matchR!2044 (regex!3223 (rule!5093 lt!618437)) lt!618453))))

(declare-fun lemmaMaxPrefNoSmallerRuleMatches!101 (LexerInterface!2852 List!18354 Rule!6246 List!18351 List!18351 Rule!6246) Unit!30657)

(assert (=> b!1656010 (= lt!618430 (lemmaMaxPrefNoSmallerRuleMatches!101 thiss!17113 rules!1846 (rule!5093 (h!23684 tokens!457)) lt!618453 (list!7285 (charsOf!1872 (h!23684 tokens!457))) (rule!5093 lt!618437)))))

(assert (=> b!1656010 (= lt!618453 (list!7285 (charsOf!1872 (h!23684 tokens!457))))))

(declare-fun e!1061870 () Unit!30657)

(declare-fun Unit!30668 () Unit!30657)

(assert (=> b!1656010 (= e!1061870 Unit!30668)))

(declare-fun b!1656011 () Bool)

(declare-fun Unit!30669 () Unit!30657)

(assert (=> b!1656011 (= e!1061875 Unit!30669)))

(declare-fun lt!618487 () Unit!30657)

(assert (=> b!1656011 (= lt!618487 (lemmaMaxPrefixThenMatchesRulesRegex!61 thiss!17113 rules!1846 lt!618474 lt!618437 (rule!5093 lt!618437) lt!618452))))

(assert (=> b!1656011 (matchR!2044 (rulesRegex!607 thiss!17113 rules!1846) (list!7285 (charsOf!1872 lt!618437)))))

(declare-fun lt!618438 () Unit!30657)

(assert (=> b!1656011 (= lt!618438 lt!618487)))

(declare-fun lt!618482 () List!18351)

(assert (=> b!1656011 (= lt!618482 (list!7285 (charsOf!1872 (h!23684 tokens!457))))))

(declare-fun lt!618461 () List!18351)

(assert (=> b!1656011 (= lt!618461 (list!7285 (charsOf!1872 (h!23684 tokens!457))))))

(declare-fun lt!618425 () List!18351)

(assert (=> b!1656011 (= lt!618425 (getSuffix!731 lt!618474 (list!7285 (charsOf!1872 (h!23684 tokens!457)))))))

(declare-fun lt!618423 () Unit!30657)

(assert (=> b!1656011 (= lt!618423 (lemmaSamePrefixThenSameSuffix!683 lt!618482 lt!617923 lt!618461 lt!618425 lt!618474))))

(assert (=> b!1656011 (= lt!617923 lt!618425)))

(declare-fun lt!618467 () Unit!30657)

(assert (=> b!1656011 (= lt!618467 lt!618423)))

(declare-fun lt!618470 () List!18351)

(assert (=> b!1656011 (= lt!618470 (list!7285 (charsOf!1872 (h!23684 tokens!457))))))

(declare-fun lt!618486 () Unit!30657)

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!174 (List!18351 List!18351) Unit!30657)

(assert (=> b!1656011 (= lt!618486 (lemmaAddHeadSuffixToPrefixStillPrefix!174 lt!618470 lt!618474))))

(assert (=> b!1656011 (isPrefix!1481 (++!4957 lt!618470 (Cons!18281 (head!3672 (getSuffix!731 lt!618474 lt!618470)) Nil!18281)) lt!618474)))

(declare-fun lt!618441 () Unit!30657)

(assert (=> b!1656011 (= lt!618441 lt!618486)))

(declare-fun lt!618489 () List!18351)

(assert (=> b!1656011 (= lt!618489 (list!7285 (charsOf!1872 lt!618437)))))

(declare-fun lt!618471 () List!18351)

(assert (=> b!1656011 (= lt!618471 (++!4957 (list!7285 (charsOf!1872 (h!23684 tokens!457))) (Cons!18281 (head!3672 lt!617923) Nil!18281)))))

(declare-fun lt!618424 () Unit!30657)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!60 (List!18351 List!18351 List!18351) Unit!30657)

(assert (=> b!1656011 (= lt!618424 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!60 lt!618489 lt!618471 lt!618474))))

(assert (=> b!1656011 (isPrefix!1481 lt!618471 lt!618489)))

(declare-fun lt!618462 () Unit!30657)

(assert (=> b!1656011 (= lt!618462 lt!618424)))

(declare-fun lt!618427 () Regex!4551)

(assert (=> b!1656011 (= lt!618427 (rulesRegex!607 thiss!17113 rules!1846))))

(declare-fun lt!618483 () List!18351)

(assert (=> b!1656011 (= lt!618483 (++!4957 (list!7285 (charsOf!1872 (h!23684 tokens!457))) (Cons!18281 (head!3672 lt!617923) Nil!18281)))))

(declare-fun lt!618491 () List!18351)

(assert (=> b!1656011 (= lt!618491 (list!7285 (charsOf!1872 lt!618437)))))

(declare-fun lt!618480 () Unit!30657)

(declare-fun lemmaNotPrefixMatchThenCannotMatchLonger!61 (Regex!4551 List!18351 List!18351) Unit!30657)

(assert (=> b!1656011 (= lt!618480 (lemmaNotPrefixMatchThenCannotMatchLonger!61 lt!618427 lt!618483 lt!618491))))

(assert (=> b!1656011 (not (matchR!2044 lt!618427 lt!618491))))

(declare-fun lt!618490 () Unit!30657)

(assert (=> b!1656011 (= lt!618490 lt!618480)))

(assert (=> b!1656011 false))

(declare-fun b!1656012 () Bool)

(assert (=> b!1656012 false))

(declare-fun lt!618445 () Unit!30657)

(declare-fun lt!618449 () Unit!30657)

(assert (=> b!1656012 (= lt!618445 lt!618449)))

(declare-fun lt!618431 () List!18351)

(assert (=> b!1656012 (not (matchR!2044 (regex!3223 (rule!5093 (h!23684 tokens!457))) lt!618431))))

(assert (=> b!1656012 (= lt!618449 (lemmaMaxPrefNoSmallerRuleMatches!101 thiss!17113 rules!1846 (rule!5093 lt!618437) lt!618431 lt!618474 (rule!5093 (h!23684 tokens!457))))))

(assert (=> b!1656012 (= lt!618431 (list!7285 (charsOf!1872 lt!618437)))))

(declare-fun Unit!30670 () Unit!30657)

(assert (=> b!1656012 (= e!1061872 Unit!30670)))

(declare-fun b!1656013 () Bool)

(declare-fun Unit!30671 () Unit!30657)

(assert (=> b!1656013 (= e!1061876 Unit!30671)))

(declare-fun c!269370 () Bool)

(declare-fun getIndex!129 (List!18354 Rule!6246) Int)

(assert (=> b!1656013 (= c!269370 (< (getIndex!129 rules!1846 (rule!5093 (h!23684 tokens!457))) (getIndex!129 rules!1846 (rule!5093 lt!618437))))))

(declare-fun lt!618450 () Unit!30657)

(assert (=> b!1656013 (= lt!618450 e!1061872)))

(declare-fun c!269372 () Bool)

(assert (=> b!1656013 (= c!269372 (< (getIndex!129 rules!1846 (rule!5093 lt!618437)) (getIndex!129 rules!1846 (rule!5093 (h!23684 tokens!457)))))))

(declare-fun lt!618432 () Unit!30657)

(assert (=> b!1656013 (= lt!618432 e!1061870)))

(declare-fun c!269371 () Bool)

(assert (=> b!1656013 (= c!269371 (= (getIndex!129 rules!1846 (rule!5093 lt!618437)) (getIndex!129 rules!1846 (rule!5093 (h!23684 tokens!457)))))))

(declare-fun lt!618457 () Unit!30657)

(assert (=> b!1656013 (= lt!618457 e!1061871)))

(assert (=> b!1656013 false))

(declare-fun b!1656014 () Bool)

(declare-fun Unit!30672 () Unit!30657)

(assert (=> b!1656014 (= e!1061875 Unit!30672)))

(declare-fun b!1656015 () Bool)

(declare-fun Unit!30673 () Unit!30657)

(assert (=> b!1656015 (= e!1061870 Unit!30673)))

(declare-fun b!1656016 () Bool)

(declare-fun Unit!30674 () Unit!30657)

(assert (=> b!1656016 (= e!1061871 Unit!30674)))

(assert (= (and d!499438 res!742652) b!1656007))

(assert (= (and b!1656007 res!742651) b!1656003))

(assert (= (and d!499438 c!269374) b!1656011))

(assert (= (and d!499438 (not c!269374)) b!1656014))

(assert (= (and d!499438 c!269375) b!1656005))

(assert (= (and d!499438 (not c!269375)) b!1656009))

(assert (= (and d!499438 c!269373) b!1656013))

(assert (= (and d!499438 (not c!269373)) b!1656006))

(assert (= (and b!1656013 c!269370) b!1656012))

(assert (= (and b!1656013 (not c!269370)) b!1656008))

(assert (= (and b!1656013 c!269372) b!1656010))

(assert (= (and b!1656013 (not c!269372)) b!1656015))

(assert (= (and b!1656013 c!269371) b!1656004))

(assert (= (and b!1656013 (not c!269371)) b!1656016))

(declare-fun m!2010399 () Bool)

(assert (=> b!1656010 m!2010399))

(assert (=> b!1656010 m!2009631))

(assert (=> b!1656010 m!2009631))

(declare-fun m!2010401 () Bool)

(assert (=> b!1656010 m!2010401))

(assert (=> b!1656010 m!2010401))

(declare-fun m!2010403 () Bool)

(assert (=> b!1656010 m!2010403))

(declare-fun m!2010405 () Bool)

(assert (=> b!1656003 m!2010405))

(assert (=> b!1656003 m!2010405))

(declare-fun m!2010407 () Bool)

(assert (=> b!1656003 m!2010407))

(declare-fun m!2010409 () Bool)

(assert (=> b!1656004 m!2010409))

(assert (=> d!499438 m!2010401))

(assert (=> d!499438 m!2010401))

(declare-fun m!2010411 () Bool)

(assert (=> d!499438 m!2010411))

(declare-fun m!2010413 () Bool)

(assert (=> d!499438 m!2010413))

(declare-fun m!2010415 () Bool)

(assert (=> d!499438 m!2010415))

(declare-fun m!2010417 () Bool)

(assert (=> d!499438 m!2010417))

(declare-fun m!2010419 () Bool)

(assert (=> d!499438 m!2010419))

(assert (=> d!499438 m!2009653))

(declare-fun m!2010421 () Bool)

(assert (=> d!499438 m!2010421))

(declare-fun m!2010423 () Bool)

(assert (=> d!499438 m!2010423))

(declare-fun m!2010425 () Bool)

(assert (=> d!499438 m!2010425))

(assert (=> d!499438 m!2009575))

(assert (=> d!499438 m!2010401))

(declare-fun m!2010427 () Bool)

(assert (=> d!499438 m!2010427))

(declare-fun m!2010429 () Bool)

(assert (=> d!499438 m!2010429))

(declare-fun m!2010431 () Bool)

(assert (=> d!499438 m!2010431))

(assert (=> d!499438 m!2010423))

(declare-fun m!2010433 () Bool)

(assert (=> d!499438 m!2010433))

(assert (=> d!499438 m!2010433))

(declare-fun m!2010435 () Bool)

(assert (=> d!499438 m!2010435))

(declare-fun m!2010437 () Bool)

(assert (=> d!499438 m!2010437))

(declare-fun m!2010439 () Bool)

(assert (=> d!499438 m!2010439))

(declare-fun m!2010441 () Bool)

(assert (=> d!499438 m!2010441))

(assert (=> d!499438 m!2010423))

(assert (=> d!499438 m!2010439))

(declare-fun m!2010443 () Bool)

(assert (=> d!499438 m!2010443))

(assert (=> d!499438 m!2009575))

(assert (=> d!499438 m!2010401))

(declare-fun m!2010445 () Bool)

(assert (=> d!499438 m!2010445))

(assert (=> d!499438 m!2009631))

(assert (=> d!499438 m!2010401))

(assert (=> d!499438 m!2010405))

(assert (=> d!499438 m!2010401))

(declare-fun m!2010447 () Bool)

(assert (=> d!499438 m!2010447))

(declare-fun m!2010449 () Bool)

(assert (=> d!499438 m!2010449))

(assert (=> d!499438 m!2009631))

(assert (=> d!499438 m!2010405))

(declare-fun m!2010451 () Bool)

(assert (=> d!499438 m!2010451))

(assert (=> d!499438 m!2010413))

(declare-fun m!2010453 () Bool)

(assert (=> d!499438 m!2010453))

(assert (=> d!499438 m!2010423))

(declare-fun m!2010455 () Bool)

(assert (=> d!499438 m!2010455))

(assert (=> d!499438 m!2010423))

(declare-fun m!2010457 () Bool)

(assert (=> d!499438 m!2010457))

(assert (=> d!499438 m!2010417))

(declare-fun m!2010459 () Bool)

(assert (=> d!499438 m!2010459))

(declare-fun m!2010461 () Bool)

(assert (=> d!499438 m!2010461))

(assert (=> d!499438 m!2010401))

(declare-fun m!2010463 () Bool)

(assert (=> d!499438 m!2010463))

(declare-fun m!2010465 () Bool)

(assert (=> d!499438 m!2010465))

(assert (=> d!499438 m!2009631))

(declare-fun m!2010467 () Bool)

(assert (=> d!499438 m!2010467))

(assert (=> d!499438 m!2010447))

(declare-fun m!2010469 () Bool)

(assert (=> d!499438 m!2010469))

(declare-fun m!2010471 () Bool)

(assert (=> d!499438 m!2010471))

(assert (=> d!499438 m!2010441))

(declare-fun m!2010473 () Bool)

(assert (=> d!499438 m!2010473))

(declare-fun m!2010475 () Bool)

(assert (=> d!499438 m!2010475))

(declare-fun m!2010477 () Bool)

(assert (=> b!1656005 m!2010477))

(assert (=> b!1656005 m!2009631))

(assert (=> b!1656005 m!2010401))

(assert (=> b!1656005 m!2009631))

(assert (=> b!1656005 m!2010423))

(declare-fun m!2010479 () Bool)

(assert (=> b!1656005 m!2010479))

(assert (=> b!1656005 m!2010423))

(assert (=> b!1656005 m!2010433))

(declare-fun m!2010481 () Bool)

(assert (=> b!1656012 m!2010481))

(declare-fun m!2010483 () Bool)

(assert (=> b!1656012 m!2010483))

(assert (=> b!1656012 m!2010423))

(assert (=> b!1656012 m!2010423))

(assert (=> b!1656012 m!2010433))

(declare-fun m!2010485 () Bool)

(assert (=> b!1656011 m!2010485))

(declare-fun m!2010487 () Bool)

(assert (=> b!1656011 m!2010487))

(declare-fun m!2010489 () Bool)

(assert (=> b!1656011 m!2010489))

(assert (=> b!1656011 m!2010401))

(declare-fun m!2010491 () Bool)

(assert (=> b!1656011 m!2010491))

(declare-fun m!2010493 () Bool)

(assert (=> b!1656011 m!2010493))

(declare-fun m!2010495 () Bool)

(assert (=> b!1656011 m!2010495))

(assert (=> b!1656011 m!2009575))

(assert (=> b!1656011 m!2009631))

(assert (=> b!1656011 m!2010401))

(declare-fun m!2010497 () Bool)

(assert (=> b!1656011 m!2010497))

(assert (=> b!1656011 m!2009631))

(declare-fun m!2010499 () Bool)

(assert (=> b!1656011 m!2010499))

(declare-fun m!2010501 () Bool)

(assert (=> b!1656011 m!2010501))

(declare-fun m!2010503 () Bool)

(assert (=> b!1656011 m!2010503))

(assert (=> b!1656011 m!2010401))

(declare-fun m!2010505 () Bool)

(assert (=> b!1656011 m!2010505))

(assert (=> b!1656011 m!2009575))

(assert (=> b!1656011 m!2010433))

(declare-fun m!2010507 () Bool)

(assert (=> b!1656011 m!2010507))

(declare-fun m!2010509 () Bool)

(assert (=> b!1656011 m!2010509))

(assert (=> b!1656011 m!2010487))

(declare-fun m!2010511 () Bool)

(assert (=> b!1656011 m!2010511))

(assert (=> b!1656011 m!2010493))

(assert (=> b!1656011 m!2010423))

(assert (=> b!1656011 m!2010423))

(assert (=> b!1656011 m!2010433))

(assert (=> b!1656011 m!2009605))

(assert (=> b!1656007 m!2010405))

(assert (=> b!1656007 m!2010407))

(assert (=> b!1656007 m!2010433))

(declare-fun m!2010513 () Bool)

(assert (=> b!1656007 m!2010513))

(assert (=> b!1656007 m!2010405))

(assert (=> b!1656007 m!2010423))

(assert (=> b!1656007 m!2010423))

(assert (=> b!1656007 m!2010433))

(declare-fun m!2010515 () Bool)

(assert (=> b!1656013 m!2010515))

(declare-fun m!2010517 () Bool)

(assert (=> b!1656013 m!2010517))

(assert (=> b!1655675 d!499438))

(declare-fun lt!618521 () Bool)

(declare-fun d!499542 () Bool)

(assert (=> d!499542 (= lt!618521 (prefixMatch!468 lt!617910 (list!7285 (++!4958 lt!617925 lt!617915))))))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((List!18358 0))(
  ( (Nil!18288) (Cons!18288 (h!23689 Regex!4551) (t!151279 List!18358)) )
))
(declare-datatypes ((Context!1806 0))(
  ( (Context!1807 (exprs!1403 List!18358)) )
))
(declare-fun prefixMatchZipperSequence!643 ((InoxSet Context!1806) BalanceConc!12132 Int) Bool)

(declare-fun focus!209 (Regex!4551) (InoxSet Context!1806))

(assert (=> d!499542 (= lt!618521 (prefixMatchZipperSequence!643 (focus!209 lt!617910) (++!4958 lt!617925 lt!617915) 0))))

(declare-fun lt!618514 () Unit!30657)

(declare-fun lt!618516 () Unit!30657)

(assert (=> d!499542 (= lt!618514 lt!618516)))

(declare-fun lt!618512 () List!18351)

(declare-fun lt!618513 () (InoxSet Context!1806))

(declare-fun prefixMatchZipper!188 ((InoxSet Context!1806) List!18351) Bool)

(assert (=> d!499542 (= (prefixMatch!468 lt!617910 lt!618512) (prefixMatchZipper!188 lt!618513 lt!618512))))

(declare-datatypes ((List!18359 0))(
  ( (Nil!18289) (Cons!18289 (h!23690 Context!1806) (t!151280 List!18359)) )
))
(declare-fun lt!618515 () List!18359)

(declare-fun prefixMatchZipperRegexEquiv!188 ((InoxSet Context!1806) List!18359 Regex!4551 List!18351) Unit!30657)

(assert (=> d!499542 (= lt!618516 (prefixMatchZipperRegexEquiv!188 lt!618513 lt!618515 lt!617910 lt!618512))))

(assert (=> d!499542 (= lt!618512 (list!7285 (++!4958 lt!617925 lt!617915)))))

(declare-fun toList!949 ((InoxSet Context!1806)) List!18359)

(assert (=> d!499542 (= lt!618515 (toList!949 (focus!209 lt!617910)))))

(assert (=> d!499542 (= lt!618513 (focus!209 lt!617910))))

(declare-fun lt!618520 () Unit!30657)

(declare-fun lt!618517 () Unit!30657)

(assert (=> d!499542 (= lt!618520 lt!618517)))

(declare-fun lt!618518 () Int)

(declare-fun lt!618519 () (InoxSet Context!1806))

(declare-fun dropList!688 (BalanceConc!12132 Int) List!18351)

(assert (=> d!499542 (= (prefixMatchZipper!188 lt!618519 (dropList!688 (++!4958 lt!617925 lt!617915) lt!618518)) (prefixMatchZipperSequence!643 lt!618519 (++!4958 lt!617925 lt!617915) lt!618518))))

(declare-fun lemmaprefixMatchZipperSequenceEquivalent!188 ((InoxSet Context!1806) BalanceConc!12132 Int) Unit!30657)

(assert (=> d!499542 (= lt!618517 (lemmaprefixMatchZipperSequenceEquivalent!188 lt!618519 (++!4958 lt!617925 lt!617915) lt!618518))))

(assert (=> d!499542 (= lt!618518 0)))

(assert (=> d!499542 (= lt!618519 (focus!209 lt!617910))))

(declare-fun validRegex!1816 (Regex!4551) Bool)

(assert (=> d!499542 (validRegex!1816 lt!617910)))

(assert (=> d!499542 (= (prefixMatchZipperSequence!641 lt!617910 (++!4958 lt!617925 lt!617915)) lt!618521)))

(declare-fun bs!396851 () Bool)

(assert (= bs!396851 d!499542))

(declare-fun m!2010519 () Bool)

(assert (=> bs!396851 m!2010519))

(declare-fun m!2010521 () Bool)

(assert (=> bs!396851 m!2010521))

(assert (=> bs!396851 m!2009577))

(declare-fun m!2010523 () Bool)

(assert (=> bs!396851 m!2010523))

(declare-fun m!2010525 () Bool)

(assert (=> bs!396851 m!2010525))

(declare-fun m!2010527 () Bool)

(assert (=> bs!396851 m!2010527))

(declare-fun m!2010529 () Bool)

(assert (=> bs!396851 m!2010529))

(declare-fun m!2010531 () Bool)

(assert (=> bs!396851 m!2010531))

(assert (=> bs!396851 m!2010521))

(assert (=> bs!396851 m!2009577))

(declare-fun m!2010533 () Bool)

(assert (=> bs!396851 m!2010533))

(assert (=> bs!396851 m!2010521))

(declare-fun m!2010535 () Bool)

(assert (=> bs!396851 m!2010535))

(assert (=> bs!396851 m!2010523))

(declare-fun m!2010537 () Bool)

(assert (=> bs!396851 m!2010537))

(declare-fun m!2010539 () Bool)

(assert (=> bs!396851 m!2010539))

(assert (=> bs!396851 m!2009577))

(declare-fun m!2010541 () Bool)

(assert (=> bs!396851 m!2010541))

(assert (=> bs!396851 m!2009577))

(declare-fun m!2010543 () Bool)

(assert (=> bs!396851 m!2010543))

(assert (=> bs!396851 m!2009577))

(assert (=> bs!396851 m!2010527))

(assert (=> b!1655676 d!499542))

(declare-fun d!499544 () Bool)

(declare-fun lt!618524 () C!9276)

(declare-fun apply!4861 (List!18351 Int) C!9276)

(assert (=> d!499544 (= lt!618524 (apply!4861 (list!7285 (charsOf!1872 (h!23684 (t!151232 tokens!457)))) 0))))

(declare-fun apply!4862 (Conc!6094 Int) C!9276)

(assert (=> d!499544 (= lt!618524 (apply!4862 (c!269304 (charsOf!1872 (h!23684 (t!151232 tokens!457)))) 0))))

(declare-fun e!1061879 () Bool)

(assert (=> d!499544 e!1061879))

(declare-fun res!742655 () Bool)

(assert (=> d!499544 (=> (not res!742655) (not e!1061879))))

(assert (=> d!499544 (= res!742655 (<= 0 0))))

(assert (=> d!499544 (= (apply!4854 (charsOf!1872 (h!23684 (t!151232 tokens!457))) 0) lt!618524)))

(declare-fun b!1656019 () Bool)

(assert (=> b!1656019 (= e!1061879 (< 0 (size!14548 (charsOf!1872 (h!23684 (t!151232 tokens!457))))))))

(assert (= (and d!499544 res!742655) b!1656019))

(assert (=> d!499544 m!2009585))

(declare-fun m!2010545 () Bool)

(assert (=> d!499544 m!2010545))

(assert (=> d!499544 m!2010545))

(declare-fun m!2010547 () Bool)

(assert (=> d!499544 m!2010547))

(declare-fun m!2010549 () Bool)

(assert (=> d!499544 m!2010549))

(assert (=> b!1656019 m!2009585))

(declare-fun m!2010551 () Bool)

(assert (=> b!1656019 m!2010551))

(assert (=> b!1655676 d!499544))

(declare-fun d!499546 () Bool)

(declare-fun e!1061882 () Bool)

(assert (=> d!499546 e!1061882))

(declare-fun res!742658 () Bool)

(assert (=> d!499546 (=> (not res!742658) (not e!1061882))))

(declare-fun lt!618527 () BalanceConc!12132)

(assert (=> d!499546 (= res!742658 (= (list!7285 lt!618527) (Cons!18281 (apply!4854 (charsOf!1872 (h!23684 (t!151232 tokens!457))) 0) Nil!18281)))))

(declare-fun singleton!750 (C!9276) BalanceConc!12132)

(assert (=> d!499546 (= lt!618527 (singleton!750 (apply!4854 (charsOf!1872 (h!23684 (t!151232 tokens!457))) 0)))))

(assert (=> d!499546 (= (singletonSeq!1718 (apply!4854 (charsOf!1872 (h!23684 (t!151232 tokens!457))) 0)) lt!618527)))

(declare-fun b!1656022 () Bool)

(declare-fun isBalanced!1877 (Conc!6094) Bool)

(assert (=> b!1656022 (= e!1061882 (isBalanced!1877 (c!269304 lt!618527)))))

(assert (= (and d!499546 res!742658) b!1656022))

(declare-fun m!2010553 () Bool)

(assert (=> d!499546 m!2010553))

(assert (=> d!499546 m!2009581))

(declare-fun m!2010555 () Bool)

(assert (=> d!499546 m!2010555))

(declare-fun m!2010557 () Bool)

(assert (=> b!1656022 m!2010557))

(assert (=> b!1655676 d!499546))

(declare-fun b!1656032 () Bool)

(declare-fun res!742668 () Bool)

(declare-fun e!1061885 () Bool)

(assert (=> b!1656032 (=> (not res!742668) (not e!1061885))))

(declare-fun height!951 (Conc!6094) Int)

(declare-fun ++!4960 (Conc!6094 Conc!6094) Conc!6094)

(declare-fun max!0 (Int Int) Int)

(assert (=> b!1656032 (= res!742668 (<= (height!951 (++!4960 (c!269304 lt!617925) (c!269304 lt!617915))) (+ (max!0 (height!951 (c!269304 lt!617925)) (height!951 (c!269304 lt!617915))) 1)))))

(declare-fun b!1656034 () Bool)

(declare-fun lt!618530 () BalanceConc!12132)

(assert (=> b!1656034 (= e!1061885 (= (list!7285 lt!618530) (++!4957 (list!7285 lt!617925) (list!7285 lt!617915))))))

(declare-fun b!1656031 () Bool)

(declare-fun res!742669 () Bool)

(assert (=> b!1656031 (=> (not res!742669) (not e!1061885))))

(assert (=> b!1656031 (= res!742669 (isBalanced!1877 (++!4960 (c!269304 lt!617925) (c!269304 lt!617915))))))

(declare-fun b!1656033 () Bool)

(declare-fun res!742670 () Bool)

(assert (=> b!1656033 (=> (not res!742670) (not e!1061885))))

(assert (=> b!1656033 (= res!742670 (>= (height!951 (++!4960 (c!269304 lt!617925) (c!269304 lt!617915))) (max!0 (height!951 (c!269304 lt!617925)) (height!951 (c!269304 lt!617915)))))))

(declare-fun d!499548 () Bool)

(assert (=> d!499548 e!1061885))

(declare-fun res!742667 () Bool)

(assert (=> d!499548 (=> (not res!742667) (not e!1061885))))

(declare-fun appendAssocInst!471 (Conc!6094 Conc!6094) Bool)

(assert (=> d!499548 (= res!742667 (appendAssocInst!471 (c!269304 lt!617925) (c!269304 lt!617915)))))

(assert (=> d!499548 (= lt!618530 (BalanceConc!12133 (++!4960 (c!269304 lt!617925) (c!269304 lt!617915))))))

(assert (=> d!499548 (= (++!4958 lt!617925 lt!617915) lt!618530)))

(assert (= (and d!499548 res!742667) b!1656031))

(assert (= (and b!1656031 res!742669) b!1656032))

(assert (= (and b!1656032 res!742668) b!1656033))

(assert (= (and b!1656033 res!742670) b!1656034))

(declare-fun m!2010559 () Bool)

(assert (=> b!1656032 m!2010559))

(assert (=> b!1656032 m!2010559))

(declare-fun m!2010561 () Bool)

(assert (=> b!1656032 m!2010561))

(declare-fun m!2010563 () Bool)

(assert (=> b!1656032 m!2010563))

(declare-fun m!2010565 () Bool)

(assert (=> b!1656032 m!2010565))

(assert (=> b!1656032 m!2010565))

(assert (=> b!1656032 m!2010563))

(declare-fun m!2010567 () Bool)

(assert (=> b!1656032 m!2010567))

(declare-fun m!2010569 () Bool)

(assert (=> b!1656034 m!2010569))

(assert (=> b!1656034 m!2009627))

(assert (=> b!1656034 m!2009619))

(assert (=> b!1656034 m!2009627))

(assert (=> b!1656034 m!2009619))

(declare-fun m!2010571 () Bool)

(assert (=> b!1656034 m!2010571))

(assert (=> b!1656033 m!2010559))

(assert (=> b!1656033 m!2010559))

(assert (=> b!1656033 m!2010561))

(assert (=> b!1656033 m!2010563))

(assert (=> b!1656033 m!2010565))

(assert (=> b!1656033 m!2010565))

(assert (=> b!1656033 m!2010563))

(assert (=> b!1656033 m!2010567))

(declare-fun m!2010573 () Bool)

(assert (=> d!499548 m!2010573))

(assert (=> d!499548 m!2010559))

(assert (=> b!1656031 m!2010559))

(assert (=> b!1656031 m!2010559))

(declare-fun m!2010575 () Bool)

(assert (=> b!1656031 m!2010575))

(assert (=> b!1655676 d!499548))

(declare-fun d!499550 () Bool)

(declare-fun lt!618533 () Unit!30657)

(declare-fun lemma!274 (List!18354 LexerInterface!2852 List!18354) Unit!30657)

(assert (=> d!499550 (= lt!618533 (lemma!274 rules!1846 thiss!17113 rules!1846))))

(declare-fun lambda!67764 () Int)

(declare-fun generalisedUnion!282 (List!18358) Regex!4551)

(declare-fun map!3765 (List!18354 Int) List!18358)

(assert (=> d!499550 (= (rulesRegex!607 thiss!17113 rules!1846) (generalisedUnion!282 (map!3765 rules!1846 lambda!67764)))))

(declare-fun bs!396852 () Bool)

(assert (= bs!396852 d!499550))

(declare-fun m!2010577 () Bool)

(assert (=> bs!396852 m!2010577))

(declare-fun m!2010579 () Bool)

(assert (=> bs!396852 m!2010579))

(assert (=> bs!396852 m!2010579))

(declare-fun m!2010581 () Bool)

(assert (=> bs!396852 m!2010581))

(assert (=> b!1655676 d!499550))

(declare-fun d!499552 () Bool)

(declare-fun lt!618536 () BalanceConc!12132)

(assert (=> d!499552 (= (list!7285 lt!618536) (originalCharacters!4037 (h!23684 (t!151232 tokens!457))))))

(declare-fun dynLambda!8201 (Int TokenValue!3313) BalanceConc!12132)

(assert (=> d!499552 (= lt!618536 (dynLambda!8201 (toChars!4533 (transformation!3223 (rule!5093 (h!23684 (t!151232 tokens!457))))) (value!101528 (h!23684 (t!151232 tokens!457)))))))

(assert (=> d!499552 (= (charsOf!1872 (h!23684 (t!151232 tokens!457))) lt!618536)))

(declare-fun b_lambda!52007 () Bool)

(assert (=> (not b_lambda!52007) (not d!499552)))

(declare-fun t!151250 () Bool)

(declare-fun tb!94775 () Bool)

(assert (=> (and b!1655672 (= (toChars!4533 (transformation!3223 (rule!5093 (h!23684 tokens!457)))) (toChars!4533 (transformation!3223 (rule!5093 (h!23684 (t!151232 tokens!457)))))) t!151250) tb!94775))

(declare-fun b!1656039 () Bool)

(declare-fun e!1061888 () Bool)

(declare-fun tp!478633 () Bool)

(declare-fun inv!23637 (Conc!6094) Bool)

(assert (=> b!1656039 (= e!1061888 (and (inv!23637 (c!269304 (dynLambda!8201 (toChars!4533 (transformation!3223 (rule!5093 (h!23684 (t!151232 tokens!457))))) (value!101528 (h!23684 (t!151232 tokens!457)))))) tp!478633))))

(declare-fun result!114536 () Bool)

(declare-fun inv!23638 (BalanceConc!12132) Bool)

(assert (=> tb!94775 (= result!114536 (and (inv!23638 (dynLambda!8201 (toChars!4533 (transformation!3223 (rule!5093 (h!23684 (t!151232 tokens!457))))) (value!101528 (h!23684 (t!151232 tokens!457))))) e!1061888))))

(assert (= tb!94775 b!1656039))

(declare-fun m!2010583 () Bool)

(assert (=> b!1656039 m!2010583))

(declare-fun m!2010585 () Bool)

(assert (=> tb!94775 m!2010585))

(assert (=> d!499552 t!151250))

(declare-fun b_and!117553 () Bool)

(assert (= b_and!117535 (and (=> t!151250 result!114536) b_and!117553)))

(declare-fun tb!94777 () Bool)

(declare-fun t!151252 () Bool)

(assert (=> (and b!1655670 (= (toChars!4533 (transformation!3223 (h!23685 rules!1846))) (toChars!4533 (transformation!3223 (rule!5093 (h!23684 (t!151232 tokens!457)))))) t!151252) tb!94777))

(declare-fun result!114540 () Bool)

(assert (= result!114540 result!114536))

(assert (=> d!499552 t!151252))

(declare-fun b_and!117555 () Bool)

(assert (= b_and!117539 (and (=> t!151252 result!114540) b_and!117555)))

(declare-fun m!2010587 () Bool)

(assert (=> d!499552 m!2010587))

(declare-fun m!2010589 () Bool)

(assert (=> d!499552 m!2010589))

(assert (=> b!1655676 d!499552))

(declare-fun d!499554 () Bool)

(assert (=> d!499554 (= (list!7286 (_1!10393 lt!617918)) (list!7287 (c!269305 (_1!10393 lt!617918))))))

(declare-fun bs!396853 () Bool)

(assert (= bs!396853 d!499554))

(declare-fun m!2010591 () Bool)

(assert (=> bs!396853 m!2010591))

(assert (=> b!1655674 d!499554))

(declare-fun d!499556 () Bool)

(declare-fun e!1061904 () Bool)

(assert (=> d!499556 e!1061904))

(declare-fun res!742675 () Bool)

(assert (=> d!499556 (=> (not res!742675) (not e!1061904))))

(assert (=> d!499556 (= res!742675 (= (list!7286 (_1!10393 (lex!1336 thiss!17113 rules!1846 (print!1383 thiss!17113 (seqFromList!2186 (t!151232 tokens!457)))))) (t!151232 tokens!457)))))

(declare-fun lt!618597 () Unit!30657)

(declare-fun e!1061905 () Unit!30657)

(assert (=> d!499556 (= lt!618597 e!1061905)))

(declare-fun c!269381 () Bool)

(assert (=> d!499556 (= c!269381 (or ((_ is Nil!18283) (t!151232 tokens!457)) ((_ is Nil!18283) (t!151232 (t!151232 tokens!457)))))))

(assert (=> d!499556 (not (isEmpty!11323 rules!1846))))

(assert (=> d!499556 (= (theoremInvertabilityWhenTokenListSeparable!295 thiss!17113 rules!1846 (t!151232 tokens!457)) lt!618597)))

(declare-fun b!1656061 () Bool)

(declare-fun Unit!30675 () Unit!30657)

(assert (=> b!1656061 (= e!1061905 Unit!30675)))

(declare-fun b!1656062 () Bool)

(declare-fun Unit!30676 () Unit!30657)

(assert (=> b!1656062 (= e!1061905 Unit!30676)))

(declare-fun lt!618610 () BalanceConc!12132)

(assert (=> b!1656062 (= lt!618610 (print!1383 thiss!17113 (seqFromList!2186 (t!151232 tokens!457))))))

(declare-fun lt!618612 () BalanceConc!12132)

(assert (=> b!1656062 (= lt!618612 (print!1383 thiss!17113 (seqFromList!2186 (t!151232 (t!151232 tokens!457)))))))

(declare-fun lt!618611 () tuple2!17982)

(assert (=> b!1656062 (= lt!618611 (lex!1336 thiss!17113 rules!1846 lt!618612))))

(declare-fun lt!618604 () List!18351)

(assert (=> b!1656062 (= lt!618604 (list!7285 (charsOf!1872 (h!23684 (t!151232 tokens!457)))))))

(declare-fun lt!618593 () List!18351)

(assert (=> b!1656062 (= lt!618593 (list!7285 lt!618612))))

(declare-fun lt!618592 () Unit!30657)

(assert (=> b!1656062 (= lt!618592 (lemmaConcatTwoListThenFirstIsPrefix!1006 lt!618604 lt!618593))))

(assert (=> b!1656062 (isPrefix!1481 lt!618604 (++!4957 lt!618604 lt!618593))))

(declare-fun lt!618595 () Unit!30657)

(assert (=> b!1656062 (= lt!618595 lt!618592)))

(declare-fun lt!618600 () Unit!30657)

(assert (=> b!1656062 (= lt!618600 (theoremInvertabilityWhenTokenListSeparable!295 thiss!17113 rules!1846 (t!151232 (t!151232 tokens!457))))))

(declare-fun lt!618598 () Unit!30657)

(assert (=> b!1656062 (= lt!618598 (seqFromListBHdTlConstructive!298 (h!23684 (t!151232 (t!151232 tokens!457))) (t!151232 (t!151232 (t!151232 tokens!457))) (_1!10393 lt!618611)))))

(assert (=> b!1656062 (= (list!7286 (_1!10393 lt!618611)) (list!7286 (prepend!795 (seqFromList!2186 (t!151232 (t!151232 (t!151232 tokens!457)))) (h!23684 (t!151232 (t!151232 tokens!457))))))))

(declare-fun lt!618590 () Unit!30657)

(assert (=> b!1656062 (= lt!618590 lt!618598)))

(declare-fun lt!618615 () Option!3489)

(assert (=> b!1656062 (= lt!618615 (maxPrefix!1414 thiss!17113 rules!1846 (list!7285 lt!618610)))))

(assert (=> b!1656062 (= (print!1383 thiss!17113 (singletonSeq!1719 (h!23684 (t!151232 tokens!457)))) (printTailRec!903 thiss!17113 (singletonSeq!1719 (h!23684 (t!151232 tokens!457))) 0 (BalanceConc!12133 Empty!6094)))))

(declare-fun lt!618602 () Unit!30657)

(declare-fun Unit!30677 () Unit!30657)

(assert (=> b!1656062 (= lt!618602 Unit!30677)))

(declare-fun lt!618594 () Unit!30657)

(assert (=> b!1656062 (= lt!618594 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!420 thiss!17113 rules!1846 (list!7285 (charsOf!1872 (h!23684 (t!151232 tokens!457)))) (list!7285 lt!618612)))))

(assert (=> b!1656062 (= (list!7285 (charsOf!1872 (h!23684 (t!151232 tokens!457)))) (originalCharacters!4037 (h!23684 (t!151232 tokens!457))))))

(declare-fun lt!618605 () Unit!30657)

(declare-fun Unit!30678 () Unit!30657)

(assert (=> b!1656062 (= lt!618605 Unit!30678)))

(assert (=> b!1656062 (= (list!7285 (singletonSeq!1718 (apply!4854 (charsOf!1872 (h!23684 (t!151232 (t!151232 tokens!457)))) 0))) (Cons!18281 (head!3672 (originalCharacters!4037 (h!23684 (t!151232 (t!151232 tokens!457))))) Nil!18281))))

(declare-fun lt!618596 () Unit!30657)

(declare-fun Unit!30679 () Unit!30657)

(assert (=> b!1656062 (= lt!618596 Unit!30679)))

(assert (=> b!1656062 (= (list!7285 (singletonSeq!1718 (apply!4854 (charsOf!1872 (h!23684 (t!151232 (t!151232 tokens!457)))) 0))) (Cons!18281 (head!3672 (list!7285 lt!618612)) Nil!18281))))

(declare-fun lt!618607 () Unit!30657)

(declare-fun Unit!30680 () Unit!30657)

(assert (=> b!1656062 (= lt!618607 Unit!30680)))

(assert (=> b!1656062 (= (list!7285 (singletonSeq!1718 (apply!4854 (charsOf!1872 (h!23684 (t!151232 (t!151232 tokens!457)))) 0))) (Cons!18281 (head!3673 lt!618612) Nil!18281))))

(declare-fun lt!618609 () Unit!30657)

(declare-fun Unit!30683 () Unit!30657)

(assert (=> b!1656062 (= lt!618609 Unit!30683)))

(assert (=> b!1656062 (isDefined!2844 (maxPrefix!1414 thiss!17113 rules!1846 (originalCharacters!4037 (h!23684 (t!151232 tokens!457)))))))

(declare-fun lt!618603 () Unit!30657)

(declare-fun Unit!30684 () Unit!30657)

(assert (=> b!1656062 (= lt!618603 Unit!30684)))

(assert (=> b!1656062 (isDefined!2844 (maxPrefix!1414 thiss!17113 rules!1846 (list!7285 (charsOf!1872 (h!23684 (t!151232 tokens!457))))))))

(declare-fun lt!618606 () Unit!30657)

(declare-fun Unit!30685 () Unit!30657)

(assert (=> b!1656062 (= lt!618606 Unit!30685)))

(declare-fun lt!618613 () Unit!30657)

(declare-fun Unit!30686 () Unit!30657)

(assert (=> b!1656062 (= lt!618613 Unit!30686)))

(assert (=> b!1656062 (= (_1!10391 (get!5336 (maxPrefix!1414 thiss!17113 rules!1846 (list!7285 (charsOf!1872 (h!23684 (t!151232 tokens!457))))))) (h!23684 (t!151232 tokens!457)))))

(declare-fun lt!618591 () Unit!30657)

(declare-fun Unit!30687 () Unit!30657)

(assert (=> b!1656062 (= lt!618591 Unit!30687)))

(assert (=> b!1656062 (isEmpty!11322 (_2!10391 (get!5336 (maxPrefix!1414 thiss!17113 rules!1846 (list!7285 (charsOf!1872 (h!23684 (t!151232 tokens!457))))))))))

(declare-fun lt!618608 () Unit!30657)

(declare-fun Unit!30688 () Unit!30657)

(assert (=> b!1656062 (= lt!618608 Unit!30688)))

(assert (=> b!1656062 (matchR!2044 (regex!3223 (rule!5093 (h!23684 (t!151232 tokens!457)))) (list!7285 (charsOf!1872 (h!23684 (t!151232 tokens!457)))))))

(declare-fun lt!618614 () Unit!30657)

(declare-fun Unit!30689 () Unit!30657)

(assert (=> b!1656062 (= lt!618614 Unit!30689)))

(assert (=> b!1656062 (= (rule!5093 (h!23684 (t!151232 tokens!457))) (rule!5093 (h!23684 (t!151232 tokens!457))))))

(declare-fun lt!618599 () Unit!30657)

(declare-fun Unit!30690 () Unit!30657)

(assert (=> b!1656062 (= lt!618599 Unit!30690)))

(declare-fun lt!618601 () Unit!30657)

(assert (=> b!1656062 (= lt!618601 (lemmaMaxPrefWithNoPrefixMatchAllRulesThenSuffixReturnSame!178 thiss!17113 rules!1846 (h!23684 (t!151232 tokens!457)) (rule!5093 (h!23684 (t!151232 tokens!457))) (list!7285 lt!618612)))))

(declare-fun b!1656063 () Bool)

(assert (=> b!1656063 (= e!1061904 (isEmpty!11326 (_2!10393 (lex!1336 thiss!17113 rules!1846 (print!1383 thiss!17113 (seqFromList!2186 (t!151232 tokens!457)))))))))

(assert (= (and d!499556 c!269381) b!1656061))

(assert (= (and d!499556 (not c!269381)) b!1656062))

(assert (= (and d!499556 res!742675) b!1656063))

(assert (=> d!499556 m!2009633))

(declare-fun m!2010597 () Bool)

(assert (=> d!499556 m!2010597))

(assert (=> d!499556 m!2009633))

(assert (=> d!499556 m!2010597))

(declare-fun m!2010599 () Bool)

(assert (=> d!499556 m!2010599))

(declare-fun m!2010601 () Bool)

(assert (=> d!499556 m!2010601))

(assert (=> d!499556 m!2009653))

(declare-fun m!2010603 () Bool)

(assert (=> b!1656062 m!2010603))

(declare-fun m!2010605 () Bool)

(assert (=> b!1656062 m!2010605))

(assert (=> b!1656062 m!2009633))

(assert (=> b!1656062 m!2010545))

(declare-fun m!2010607 () Bool)

(assert (=> b!1656062 m!2010607))

(assert (=> b!1656062 m!2009593))

(declare-fun m!2010609 () Bool)

(assert (=> b!1656062 m!2010609))

(assert (=> b!1656062 m!2010545))

(declare-fun m!2010611 () Bool)

(assert (=> b!1656062 m!2010611))

(assert (=> b!1656062 m!2010609))

(declare-fun m!2010613 () Bool)

(assert (=> b!1656062 m!2010613))

(declare-fun m!2010615 () Bool)

(assert (=> b!1656062 m!2010615))

(declare-fun m!2010617 () Bool)

(assert (=> b!1656062 m!2010617))

(declare-fun m!2010619 () Bool)

(assert (=> b!1656062 m!2010619))

(assert (=> b!1656062 m!2010611))

(declare-fun m!2010621 () Bool)

(assert (=> b!1656062 m!2010621))

(declare-fun m!2010623 () Bool)

(assert (=> b!1656062 m!2010623))

(declare-fun m!2010625 () Bool)

(assert (=> b!1656062 m!2010625))

(declare-fun m!2010627 () Bool)

(assert (=> b!1656062 m!2010627))

(assert (=> b!1656062 m!2010609))

(declare-fun m!2010629 () Bool)

(assert (=> b!1656062 m!2010629))

(declare-fun m!2010631 () Bool)

(assert (=> b!1656062 m!2010631))

(assert (=> b!1656062 m!2009633))

(assert (=> b!1656062 m!2010597))

(declare-fun m!2010633 () Bool)

(assert (=> b!1656062 m!2010633))

(declare-fun m!2010635 () Bool)

(assert (=> b!1656062 m!2010635))

(assert (=> b!1656062 m!2010603))

(assert (=> b!1656062 m!2010635))

(declare-fun m!2010637 () Bool)

(assert (=> b!1656062 m!2010637))

(assert (=> b!1656062 m!2010615))

(declare-fun m!2010639 () Bool)

(assert (=> b!1656062 m!2010639))

(declare-fun m!2010641 () Bool)

(assert (=> b!1656062 m!2010641))

(assert (=> b!1656062 m!2010611))

(declare-fun m!2010643 () Bool)

(assert (=> b!1656062 m!2010643))

(declare-fun m!2010645 () Bool)

(assert (=> b!1656062 m!2010645))

(declare-fun m!2010647 () Bool)

(assert (=> b!1656062 m!2010647))

(assert (=> b!1656062 m!2010625))

(assert (=> b!1656062 m!2010641))

(declare-fun m!2010649 () Bool)

(assert (=> b!1656062 m!2010649))

(assert (=> b!1656062 m!2009585))

(assert (=> b!1656062 m!2009593))

(declare-fun m!2010651 () Bool)

(assert (=> b!1656062 m!2010651))

(declare-fun m!2010653 () Bool)

(assert (=> b!1656062 m!2010653))

(assert (=> b!1656062 m!2010631))

(assert (=> b!1656062 m!2010637))

(declare-fun m!2010655 () Bool)

(assert (=> b!1656062 m!2010655))

(assert (=> b!1656062 m!2010647))

(declare-fun m!2010657 () Bool)

(assert (=> b!1656062 m!2010657))

(assert (=> b!1656062 m!2010647))

(declare-fun m!2010659 () Bool)

(assert (=> b!1656062 m!2010659))

(declare-fun m!2010661 () Bool)

(assert (=> b!1656062 m!2010661))

(assert (=> b!1656062 m!2009585))

(assert (=> b!1656062 m!2010545))

(declare-fun m!2010663 () Bool)

(assert (=> b!1656062 m!2010663))

(assert (=> b!1656062 m!2010653))

(declare-fun m!2010665 () Bool)

(assert (=> b!1656062 m!2010665))

(assert (=> b!1656062 m!2010545))

(assert (=> b!1656062 m!2010647))

(declare-fun m!2010667 () Bool)

(assert (=> b!1656062 m!2010667))

(assert (=> b!1656063 m!2009633))

(assert (=> b!1656063 m!2009633))

(assert (=> b!1656063 m!2010597))

(assert (=> b!1656063 m!2010597))

(assert (=> b!1656063 m!2010599))

(declare-fun m!2010669 () Bool)

(assert (=> b!1656063 m!2010669))

(assert (=> b!1655674 d!499556))

(declare-fun b!1656074 () Bool)

(declare-fun e!1061912 () Bool)

(declare-fun tail!2461 (List!18351) List!18351)

(assert (=> b!1656074 (= e!1061912 (isPrefix!1481 (tail!2461 lt!617908) (tail!2461 lt!617920)))))

(declare-fun b!1656073 () Bool)

(declare-fun res!742687 () Bool)

(assert (=> b!1656073 (=> (not res!742687) (not e!1061912))))

(assert (=> b!1656073 (= res!742687 (= (head!3672 lt!617908) (head!3672 lt!617920)))))

(declare-fun b!1656072 () Bool)

(declare-fun e!1061914 () Bool)

(assert (=> b!1656072 (= e!1061914 e!1061912)))

(declare-fun res!742685 () Bool)

(assert (=> b!1656072 (=> (not res!742685) (not e!1061912))))

(assert (=> b!1656072 (= res!742685 (not ((_ is Nil!18281) lt!617920)))))

(declare-fun d!499562 () Bool)

(declare-fun e!1061913 () Bool)

(assert (=> d!499562 e!1061913))

(declare-fun res!742684 () Bool)

(assert (=> d!499562 (=> res!742684 e!1061913)))

(declare-fun lt!618618 () Bool)

(assert (=> d!499562 (= res!742684 (not lt!618618))))

(assert (=> d!499562 (= lt!618618 e!1061914)))

(declare-fun res!742686 () Bool)

(assert (=> d!499562 (=> res!742686 e!1061914)))

(assert (=> d!499562 (= res!742686 ((_ is Nil!18281) lt!617908))))

(assert (=> d!499562 (= (isPrefix!1481 lt!617908 lt!617920) lt!618618)))

(declare-fun b!1656075 () Bool)

(assert (=> b!1656075 (= e!1061913 (>= (size!14549 lt!617920) (size!14549 lt!617908)))))

(assert (= (and d!499562 (not res!742686)) b!1656072))

(assert (= (and b!1656072 res!742685) b!1656073))

(assert (= (and b!1656073 res!742687) b!1656074))

(assert (= (and d!499562 (not res!742684)) b!1656075))

(declare-fun m!2010671 () Bool)

(assert (=> b!1656074 m!2010671))

(declare-fun m!2010673 () Bool)

(assert (=> b!1656074 m!2010673))

(assert (=> b!1656074 m!2010671))

(assert (=> b!1656074 m!2010673))

(declare-fun m!2010675 () Bool)

(assert (=> b!1656074 m!2010675))

(declare-fun m!2010677 () Bool)

(assert (=> b!1656073 m!2010677))

(declare-fun m!2010679 () Bool)

(assert (=> b!1656073 m!2010679))

(declare-fun m!2010681 () Bool)

(assert (=> b!1656075 m!2010681))

(declare-fun m!2010683 () Bool)

(assert (=> b!1656075 m!2010683))

(assert (=> b!1655674 d!499562))

(declare-fun d!499564 () Bool)

(assert (=> d!499564 (isPrefix!1481 lt!617908 (++!4957 lt!617908 lt!617923))))

(declare-fun lt!618621 () Unit!30657)

(declare-fun choose!9945 (List!18351 List!18351) Unit!30657)

(assert (=> d!499564 (= lt!618621 (choose!9945 lt!617908 lt!617923))))

(assert (=> d!499564 (= (lemmaConcatTwoListThenFirstIsPrefix!1006 lt!617908 lt!617923) lt!618621)))

(declare-fun bs!396854 () Bool)

(assert (= bs!396854 d!499564))

(assert (=> bs!396854 m!2009629))

(assert (=> bs!396854 m!2009629))

(declare-fun m!2010685 () Bool)

(assert (=> bs!396854 m!2010685))

(declare-fun m!2010687 () Bool)

(assert (=> bs!396854 m!2010687))

(assert (=> b!1655674 d!499564))

(declare-fun d!499566 () Bool)

(assert (=> d!499566 (= (get!5337 (maxPrefixZipperSequence!729 thiss!17113 rules!1846 lt!617917)) (v!24686 (maxPrefixZipperSequence!729 thiss!17113 rules!1846 lt!617917)))))

(assert (=> b!1655667 d!499566))

(declare-fun b!1656092 () Bool)

(declare-fun lt!618637 () Option!3490)

(declare-fun e!1061931 () Bool)

(assert (=> b!1656092 (= e!1061931 (= (list!7285 (_2!10392 (get!5337 lt!618637))) (_2!10391 (get!5336 (maxPrefixZipper!350 thiss!17113 rules!1846 (list!7285 lt!617917))))))))

(declare-fun b!1656093 () Bool)

(declare-fun e!1061930 () Option!3490)

(declare-fun call!106126 () Option!3490)

(assert (=> b!1656093 (= e!1061930 call!106126)))

(declare-fun bm!106121 () Bool)

(declare-fun maxPrefixOneRuleZipperSequence!344 (LexerInterface!2852 Rule!6246 BalanceConc!12132) Option!3490)

(assert (=> bm!106121 (= call!106126 (maxPrefixOneRuleZipperSequence!344 thiss!17113 (h!23685 rules!1846) lt!617917))))

(declare-fun b!1656094 () Bool)

(declare-fun e!1061929 () Bool)

(declare-fun e!1061928 () Bool)

(assert (=> b!1656094 (= e!1061929 e!1061928)))

(declare-fun res!742705 () Bool)

(assert (=> b!1656094 (=> (not res!742705) (not e!1061928))))

(assert (=> b!1656094 (= res!742705 (= (_1!10392 (get!5337 lt!618637)) (_1!10391 (get!5336 (maxPrefix!1414 thiss!17113 rules!1846 (list!7285 lt!617917))))))))

(declare-fun d!499568 () Bool)

(declare-fun e!1061927 () Bool)

(assert (=> d!499568 e!1061927))

(declare-fun res!742702 () Bool)

(assert (=> d!499568 (=> (not res!742702) (not e!1061927))))

(assert (=> d!499568 (= res!742702 (= (isDefined!2845 lt!618637) (isDefined!2844 (maxPrefixZipper!350 thiss!17113 rules!1846 (list!7285 lt!617917)))))))

(assert (=> d!499568 (= lt!618637 e!1061930)))

(declare-fun c!269384 () Bool)

(assert (=> d!499568 (= c!269384 (and ((_ is Cons!18284) rules!1846) ((_ is Nil!18284) (t!151233 rules!1846))))))

(declare-fun lt!618639 () Unit!30657)

(declare-fun lt!618640 () Unit!30657)

(assert (=> d!499568 (= lt!618639 lt!618640)))

(declare-fun lt!618641 () List!18351)

(declare-fun lt!618638 () List!18351)

(assert (=> d!499568 (isPrefix!1481 lt!618641 lt!618638)))

(assert (=> d!499568 (= lt!618640 (lemmaIsPrefixRefl!1004 lt!618641 lt!618638))))

(assert (=> d!499568 (= lt!618638 (list!7285 lt!617917))))

(assert (=> d!499568 (= lt!618641 (list!7285 lt!617917))))

(assert (=> d!499568 (rulesValidInductive!1026 thiss!17113 rules!1846)))

(assert (=> d!499568 (= (maxPrefixZipperSequence!729 thiss!17113 rules!1846 lt!617917) lt!618637)))

(declare-fun b!1656095 () Bool)

(assert (=> b!1656095 (= e!1061927 e!1061929)))

(declare-fun res!742701 () Bool)

(assert (=> b!1656095 (=> res!742701 e!1061929)))

(assert (=> b!1656095 (= res!742701 (not (isDefined!2845 lt!618637)))))

(declare-fun b!1656096 () Bool)

(declare-fun lt!618642 () Option!3490)

(declare-fun lt!618636 () Option!3490)

(assert (=> b!1656096 (= e!1061930 (ite (and ((_ is None!3489) lt!618642) ((_ is None!3489) lt!618636)) None!3489 (ite ((_ is None!3489) lt!618636) lt!618642 (ite ((_ is None!3489) lt!618642) lt!618636 (ite (>= (size!14544 (_1!10392 (v!24686 lt!618642))) (size!14544 (_1!10392 (v!24686 lt!618636)))) lt!618642 lt!618636)))))))

(assert (=> b!1656096 (= lt!618642 call!106126)))

(assert (=> b!1656096 (= lt!618636 (maxPrefixZipperSequence!729 thiss!17113 (t!151233 rules!1846) lt!617917))))

(declare-fun b!1656097 () Bool)

(assert (=> b!1656097 (= e!1061928 (= (list!7285 (_2!10392 (get!5337 lt!618637))) (_2!10391 (get!5336 (maxPrefix!1414 thiss!17113 rules!1846 (list!7285 lt!617917))))))))

(declare-fun b!1656098 () Bool)

(declare-fun res!742700 () Bool)

(assert (=> b!1656098 (=> (not res!742700) (not e!1061927))))

(declare-fun e!1061932 () Bool)

(assert (=> b!1656098 (= res!742700 e!1061932)))

(declare-fun res!742703 () Bool)

(assert (=> b!1656098 (=> res!742703 e!1061932)))

(assert (=> b!1656098 (= res!742703 (not (isDefined!2845 lt!618637)))))

(declare-fun b!1656099 () Bool)

(assert (=> b!1656099 (= e!1061932 e!1061931)))

(declare-fun res!742704 () Bool)

(assert (=> b!1656099 (=> (not res!742704) (not e!1061931))))

(assert (=> b!1656099 (= res!742704 (= (_1!10392 (get!5337 lt!618637)) (_1!10391 (get!5336 (maxPrefixZipper!350 thiss!17113 rules!1846 (list!7285 lt!617917))))))))

(assert (= (and d!499568 c!269384) b!1656093))

(assert (= (and d!499568 (not c!269384)) b!1656096))

(assert (= (or b!1656093 b!1656096) bm!106121))

(assert (= (and d!499568 res!742702) b!1656098))

(assert (= (and b!1656098 (not res!742703)) b!1656099))

(assert (= (and b!1656099 res!742704) b!1656092))

(assert (= (and b!1656098 res!742700) b!1656095))

(assert (= (and b!1656095 (not res!742701)) b!1656094))

(assert (= (and b!1656094 res!742705) b!1656097))

(declare-fun m!2010689 () Bool)

(assert (=> bm!106121 m!2010689))

(declare-fun m!2010691 () Bool)

(assert (=> d!499568 m!2010691))

(declare-fun m!2010693 () Bool)

(assert (=> d!499568 m!2010693))

(declare-fun m!2010695 () Bool)

(assert (=> d!499568 m!2010695))

(assert (=> d!499568 m!2009643))

(assert (=> d!499568 m!2010693))

(declare-fun m!2010697 () Bool)

(assert (=> d!499568 m!2010697))

(assert (=> d!499568 m!2009891))

(assert (=> d!499568 m!2009643))

(declare-fun m!2010699 () Bool)

(assert (=> d!499568 m!2010699))

(assert (=> b!1656095 m!2010691))

(assert (=> b!1656098 m!2010691))

(declare-fun m!2010701 () Bool)

(assert (=> b!1656096 m!2010701))

(declare-fun m!2010703 () Bool)

(assert (=> b!1656097 m!2010703))

(declare-fun m!2010705 () Bool)

(assert (=> b!1656097 m!2010705))

(declare-fun m!2010707 () Bool)

(assert (=> b!1656097 m!2010707))

(assert (=> b!1656097 m!2009643))

(assert (=> b!1656097 m!2010705))

(declare-fun m!2010709 () Bool)

(assert (=> b!1656097 m!2010709))

(assert (=> b!1656097 m!2009643))

(assert (=> b!1656099 m!2010709))

(assert (=> b!1656099 m!2009643))

(assert (=> b!1656099 m!2009643))

(assert (=> b!1656099 m!2010693))

(assert (=> b!1656099 m!2010693))

(declare-fun m!2010711 () Bool)

(assert (=> b!1656099 m!2010711))

(assert (=> b!1656094 m!2010709))

(assert (=> b!1656094 m!2009643))

(assert (=> b!1656094 m!2009643))

(assert (=> b!1656094 m!2010705))

(assert (=> b!1656094 m!2010705))

(assert (=> b!1656094 m!2010707))

(assert (=> b!1656092 m!2010703))

(assert (=> b!1656092 m!2010693))

(assert (=> b!1656092 m!2010711))

(assert (=> b!1656092 m!2009643))

(assert (=> b!1656092 m!2010693))

(assert (=> b!1656092 m!2010709))

(assert (=> b!1656092 m!2009643))

(assert (=> b!1655667 d!499568))

(declare-fun d!499570 () Bool)

(declare-fun res!742708 () Bool)

(declare-fun e!1061935 () Bool)

(assert (=> d!499570 (=> (not res!742708) (not e!1061935))))

(declare-fun rulesValid!1178 (LexerInterface!2852 List!18354) Bool)

(assert (=> d!499570 (= res!742708 (rulesValid!1178 thiss!17113 rules!1846))))

(assert (=> d!499570 (= (rulesInvariant!2521 thiss!17113 rules!1846) e!1061935)))

(declare-fun b!1656102 () Bool)

(declare-datatypes ((List!18360 0))(
  ( (Nil!18290) (Cons!18290 (h!23691 String!20897) (t!151281 List!18360)) )
))
(declare-fun noDuplicateTag!1178 (LexerInterface!2852 List!18354 List!18360) Bool)

(assert (=> b!1656102 (= e!1061935 (noDuplicateTag!1178 thiss!17113 rules!1846 Nil!18290))))

(assert (= (and d!499570 res!742708) b!1656102))

(declare-fun m!2010713 () Bool)

(assert (=> d!499570 m!2010713))

(declare-fun m!2010715 () Bool)

(assert (=> b!1656102 m!2010715))

(assert (=> b!1655668 d!499570))

(declare-fun d!499572 () Bool)

(declare-fun list!7290 (Conc!6094) List!18351)

(assert (=> d!499572 (= (list!7285 lt!617925) (list!7290 (c!269304 lt!617925)))))

(declare-fun bs!396855 () Bool)

(assert (= bs!396855 d!499572))

(declare-fun m!2010717 () Bool)

(assert (=> bs!396855 m!2010717))

(assert (=> b!1655689 d!499572))

(declare-fun d!499574 () Bool)

(assert (=> d!499574 (= (list!7285 lt!617917) (list!7290 (c!269304 lt!617917)))))

(declare-fun bs!396856 () Bool)

(assert (= bs!396856 d!499574))

(declare-fun m!2010719 () Bool)

(assert (=> bs!396856 m!2010719))

(assert (=> b!1655689 d!499574))

(declare-fun b!1656113 () Bool)

(declare-fun e!1061942 () Bool)

(declare-fun lt!618645 () tuple2!17982)

(assert (=> b!1656113 (= e!1061942 (not (isEmpty!11321 (_1!10393 lt!618645))))))

(declare-fun b!1656114 () Bool)

(declare-fun e!1061943 () Bool)

(assert (=> b!1656114 (= e!1061943 e!1061942)))

(declare-fun res!742715 () Bool)

(assert (=> b!1656114 (= res!742715 (< (size!14548 (_2!10393 lt!618645)) (size!14548 lt!617911)))))

(assert (=> b!1656114 (=> (not res!742715) (not e!1061942))))

(declare-fun b!1656115 () Bool)

(assert (=> b!1656115 (= e!1061943 (= (_2!10393 lt!618645) lt!617911))))

(declare-fun b!1656117 () Bool)

(declare-fun res!742716 () Bool)

(declare-fun e!1061944 () Bool)

(assert (=> b!1656117 (=> (not res!742716) (not e!1061944))))

(declare-datatypes ((tuple2!17984 0))(
  ( (tuple2!17985 (_1!10394 List!18353) (_2!10394 List!18351)) )
))
(declare-fun lexList!878 (LexerInterface!2852 List!18354 List!18351) tuple2!17984)

(assert (=> b!1656117 (= res!742716 (= (list!7286 (_1!10393 lt!618645)) (_1!10394 (lexList!878 thiss!17113 rules!1846 (list!7285 lt!617911)))))))

(declare-fun d!499576 () Bool)

(assert (=> d!499576 e!1061944))

(declare-fun res!742717 () Bool)

(assert (=> d!499576 (=> (not res!742717) (not e!1061944))))

(assert (=> d!499576 (= res!742717 e!1061943)))

(declare-fun c!269387 () Bool)

(assert (=> d!499576 (= c!269387 (> (size!14547 (_1!10393 lt!618645)) 0))))

(declare-fun lexTailRecV2!601 (LexerInterface!2852 List!18354 BalanceConc!12132 BalanceConc!12132 BalanceConc!12132 BalanceConc!12134) tuple2!17982)

(assert (=> d!499576 (= lt!618645 (lexTailRecV2!601 thiss!17113 rules!1846 lt!617911 (BalanceConc!12133 Empty!6094) lt!617911 (BalanceConc!12135 Empty!6095)))))

(assert (=> d!499576 (= (lex!1336 thiss!17113 rules!1846 lt!617911) lt!618645)))

(declare-fun b!1656116 () Bool)

(assert (=> b!1656116 (= e!1061944 (= (list!7285 (_2!10393 lt!618645)) (_2!10394 (lexList!878 thiss!17113 rules!1846 (list!7285 lt!617911)))))))

(assert (= (and d!499576 c!269387) b!1656114))

(assert (= (and d!499576 (not c!269387)) b!1656115))

(assert (= (and b!1656114 res!742715) b!1656113))

(assert (= (and d!499576 res!742717) b!1656117))

(assert (= (and b!1656117 res!742716) b!1656116))

(declare-fun m!2010721 () Bool)

(assert (=> b!1656117 m!2010721))

(assert (=> b!1656117 m!2009641))

(assert (=> b!1656117 m!2009641))

(declare-fun m!2010723 () Bool)

(assert (=> b!1656117 m!2010723))

(declare-fun m!2010725 () Bool)

(assert (=> b!1656116 m!2010725))

(assert (=> b!1656116 m!2009641))

(assert (=> b!1656116 m!2009641))

(assert (=> b!1656116 m!2010723))

(declare-fun m!2010727 () Bool)

(assert (=> b!1656113 m!2010727))

(declare-fun m!2010729 () Bool)

(assert (=> b!1656114 m!2010729))

(declare-fun m!2010731 () Bool)

(assert (=> b!1656114 m!2010731))

(declare-fun m!2010733 () Bool)

(assert (=> d!499576 m!2010733))

(declare-fun m!2010735 () Bool)

(assert (=> d!499576 m!2010735))

(assert (=> b!1655689 d!499576))

(declare-fun d!499578 () Bool)

(assert (=> d!499578 (= (list!7285 lt!617911) (list!7290 (c!269304 lt!617911)))))

(declare-fun bs!396857 () Bool)

(assert (= bs!396857 d!499578))

(declare-fun m!2010737 () Bool)

(assert (=> bs!396857 m!2010737))

(assert (=> b!1655689 d!499578))

(declare-fun d!499580 () Bool)

(assert (=> d!499580 (= (seqFromList!2186 tokens!457) (fromListB!981 tokens!457))))

(declare-fun bs!396858 () Bool)

(assert (= bs!396858 d!499580))

(declare-fun m!2010739 () Bool)

(assert (=> bs!396858 m!2010739))

(assert (=> b!1655689 d!499580))

(declare-fun d!499582 () Bool)

(declare-fun lt!618648 () BalanceConc!12132)

(assert (=> d!499582 (= (list!7285 lt!618648) (printList!965 thiss!17113 (list!7286 lt!617907)))))

(assert (=> d!499582 (= lt!618648 (printTailRec!903 thiss!17113 lt!617907 0 (BalanceConc!12133 Empty!6094)))))

(assert (=> d!499582 (= (print!1383 thiss!17113 lt!617907) lt!618648)))

(declare-fun bs!396859 () Bool)

(assert (= bs!396859 d!499582))

(declare-fun m!2010741 () Bool)

(assert (=> bs!396859 m!2010741))

(assert (=> bs!396859 m!2009587))

(assert (=> bs!396859 m!2009587))

(declare-fun m!2010743 () Bool)

(assert (=> bs!396859 m!2010743))

(declare-fun m!2010745 () Bool)

(assert (=> bs!396859 m!2010745))

(assert (=> b!1655689 d!499582))

(declare-fun d!499584 () Bool)

(declare-fun lt!618649 () BalanceConc!12132)

(assert (=> d!499584 (= (list!7285 lt!618649) (originalCharacters!4037 (h!23684 tokens!457)))))

(assert (=> d!499584 (= lt!618649 (dynLambda!8201 (toChars!4533 (transformation!3223 (rule!5093 (h!23684 tokens!457)))) (value!101528 (h!23684 tokens!457))))))

(assert (=> d!499584 (= (charsOf!1872 (h!23684 tokens!457)) lt!618649)))

(declare-fun b_lambda!52009 () Bool)

(assert (=> (not b_lambda!52009) (not d!499584)))

(declare-fun t!151254 () Bool)

(declare-fun tb!94779 () Bool)

(assert (=> (and b!1655672 (= (toChars!4533 (transformation!3223 (rule!5093 (h!23684 tokens!457)))) (toChars!4533 (transformation!3223 (rule!5093 (h!23684 tokens!457))))) t!151254) tb!94779))

(declare-fun b!1656118 () Bool)

(declare-fun e!1061945 () Bool)

(declare-fun tp!478634 () Bool)

(assert (=> b!1656118 (= e!1061945 (and (inv!23637 (c!269304 (dynLambda!8201 (toChars!4533 (transformation!3223 (rule!5093 (h!23684 tokens!457)))) (value!101528 (h!23684 tokens!457))))) tp!478634))))

(declare-fun result!114542 () Bool)

(assert (=> tb!94779 (= result!114542 (and (inv!23638 (dynLambda!8201 (toChars!4533 (transformation!3223 (rule!5093 (h!23684 tokens!457)))) (value!101528 (h!23684 tokens!457)))) e!1061945))))

(assert (= tb!94779 b!1656118))

(declare-fun m!2010747 () Bool)

(assert (=> b!1656118 m!2010747))

(declare-fun m!2010749 () Bool)

(assert (=> tb!94779 m!2010749))

(assert (=> d!499584 t!151254))

(declare-fun b_and!117557 () Bool)

(assert (= b_and!117553 (and (=> t!151254 result!114542) b_and!117557)))

(declare-fun t!151256 () Bool)

(declare-fun tb!94781 () Bool)

(assert (=> (and b!1655670 (= (toChars!4533 (transformation!3223 (h!23685 rules!1846))) (toChars!4533 (transformation!3223 (rule!5093 (h!23684 tokens!457))))) t!151256) tb!94781))

(declare-fun result!114544 () Bool)

(assert (= result!114544 result!114542))

(assert (=> d!499584 t!151256))

(declare-fun b_and!117559 () Bool)

(assert (= b_and!117555 (and (=> t!151256 result!114544) b_and!117559)))

(declare-fun m!2010751 () Bool)

(assert (=> d!499584 m!2010751))

(declare-fun m!2010753 () Bool)

(assert (=> d!499584 m!2010753))

(assert (=> b!1655689 d!499584))

(declare-fun d!499586 () Bool)

(assert (=> d!499586 (= (seqFromList!2186 (t!151232 tokens!457)) (fromListB!981 (t!151232 tokens!457)))))

(declare-fun bs!396860 () Bool)

(assert (= bs!396860 d!499586))

(declare-fun m!2010755 () Bool)

(assert (=> bs!396860 m!2010755))

(assert (=> b!1655689 d!499586))

(declare-fun d!499588 () Bool)

(declare-fun lt!618650 () BalanceConc!12132)

(assert (=> d!499588 (= (list!7285 lt!618650) (printList!965 thiss!17113 (list!7286 (seqFromList!2186 tokens!457))))))

(assert (=> d!499588 (= lt!618650 (printTailRec!903 thiss!17113 (seqFromList!2186 tokens!457) 0 (BalanceConc!12133 Empty!6094)))))

(assert (=> d!499588 (= (print!1383 thiss!17113 (seqFromList!2186 tokens!457)) lt!618650)))

(declare-fun bs!396861 () Bool)

(assert (= bs!396861 d!499588))

(declare-fun m!2010757 () Bool)

(assert (=> bs!396861 m!2010757))

(assert (=> bs!396861 m!2009635))

(declare-fun m!2010759 () Bool)

(assert (=> bs!396861 m!2010759))

(assert (=> bs!396861 m!2010759))

(declare-fun m!2010761 () Bool)

(assert (=> bs!396861 m!2010761))

(assert (=> bs!396861 m!2009635))

(declare-fun m!2010763 () Bool)

(assert (=> bs!396861 m!2010763))

(assert (=> b!1655689 d!499588))

(declare-fun b!1656129 () Bool)

(declare-fun res!742723 () Bool)

(declare-fun e!1061951 () Bool)

(assert (=> b!1656129 (=> (not res!742723) (not e!1061951))))

(declare-fun lt!618653 () List!18351)

(assert (=> b!1656129 (= res!742723 (= (size!14549 lt!618653) (+ (size!14549 lt!617908) (size!14549 lt!617923))))))

(declare-fun d!499590 () Bool)

(assert (=> d!499590 e!1061951))

(declare-fun res!742722 () Bool)

(assert (=> d!499590 (=> (not res!742722) (not e!1061951))))

(declare-fun content!2543 (List!18351) (InoxSet C!9276))

(assert (=> d!499590 (= res!742722 (= (content!2543 lt!618653) ((_ map or) (content!2543 lt!617908) (content!2543 lt!617923))))))

(declare-fun e!1061950 () List!18351)

(assert (=> d!499590 (= lt!618653 e!1061950)))

(declare-fun c!269390 () Bool)

(assert (=> d!499590 (= c!269390 ((_ is Nil!18281) lt!617908))))

(assert (=> d!499590 (= (++!4957 lt!617908 lt!617923) lt!618653)))

(declare-fun b!1656127 () Bool)

(assert (=> b!1656127 (= e!1061950 lt!617923)))

(declare-fun b!1656128 () Bool)

(assert (=> b!1656128 (= e!1061950 (Cons!18281 (h!23682 lt!617908) (++!4957 (t!151230 lt!617908) lt!617923)))))

(declare-fun b!1656130 () Bool)

(assert (=> b!1656130 (= e!1061951 (or (not (= lt!617923 Nil!18281)) (= lt!618653 lt!617908)))))

(assert (= (and d!499590 c!269390) b!1656127))

(assert (= (and d!499590 (not c!269390)) b!1656128))

(assert (= (and d!499590 res!742722) b!1656129))

(assert (= (and b!1656129 res!742723) b!1656130))

(declare-fun m!2010765 () Bool)

(assert (=> b!1656129 m!2010765))

(assert (=> b!1656129 m!2010683))

(declare-fun m!2010767 () Bool)

(assert (=> b!1656129 m!2010767))

(declare-fun m!2010769 () Bool)

(assert (=> d!499590 m!2010769))

(declare-fun m!2010771 () Bool)

(assert (=> d!499590 m!2010771))

(declare-fun m!2010773 () Bool)

(assert (=> d!499590 m!2010773))

(declare-fun m!2010775 () Bool)

(assert (=> b!1656128 m!2010775))

(assert (=> b!1655689 d!499590))

(declare-fun d!499592 () Bool)

(declare-fun c!269393 () Bool)

(assert (=> d!499592 (= c!269393 (isEmpty!11322 (++!4957 lt!617908 lt!617902)))))

(declare-fun e!1061954 () Bool)

(assert (=> d!499592 (= (prefixMatch!468 lt!617910 (++!4957 lt!617908 lt!617902)) e!1061954)))

(declare-fun b!1656135 () Bool)

(declare-fun lostCause!468 (Regex!4551) Bool)

(assert (=> b!1656135 (= e!1061954 (not (lostCause!468 lt!617910)))))

(declare-fun b!1656136 () Bool)

(declare-fun derivativeStep!1118 (Regex!4551 C!9276) Regex!4551)

(assert (=> b!1656136 (= e!1061954 (prefixMatch!468 (derivativeStep!1118 lt!617910 (head!3672 (++!4957 lt!617908 lt!617902))) (tail!2461 (++!4957 lt!617908 lt!617902))))))

(assert (= (and d!499592 c!269393) b!1656135))

(assert (= (and d!499592 (not c!269393)) b!1656136))

(assert (=> d!499592 m!2009659))

(declare-fun m!2010777 () Bool)

(assert (=> d!499592 m!2010777))

(declare-fun m!2010779 () Bool)

(assert (=> b!1656135 m!2010779))

(assert (=> b!1656136 m!2009659))

(declare-fun m!2010781 () Bool)

(assert (=> b!1656136 m!2010781))

(assert (=> b!1656136 m!2010781))

(declare-fun m!2010783 () Bool)

(assert (=> b!1656136 m!2010783))

(assert (=> b!1656136 m!2009659))

(declare-fun m!2010785 () Bool)

(assert (=> b!1656136 m!2010785))

(assert (=> b!1656136 m!2010783))

(assert (=> b!1656136 m!2010785))

(declare-fun m!2010787 () Bool)

(assert (=> b!1656136 m!2010787))

(assert (=> b!1655666 d!499592))

(declare-fun b!1656139 () Bool)

(declare-fun res!742725 () Bool)

(declare-fun e!1061956 () Bool)

(assert (=> b!1656139 (=> (not res!742725) (not e!1061956))))

(declare-fun lt!618654 () List!18351)

(assert (=> b!1656139 (= res!742725 (= (size!14549 lt!618654) (+ (size!14549 lt!617908) (size!14549 lt!617902))))))

(declare-fun d!499594 () Bool)

(assert (=> d!499594 e!1061956))

(declare-fun res!742724 () Bool)

(assert (=> d!499594 (=> (not res!742724) (not e!1061956))))

(assert (=> d!499594 (= res!742724 (= (content!2543 lt!618654) ((_ map or) (content!2543 lt!617908) (content!2543 lt!617902))))))

(declare-fun e!1061955 () List!18351)

(assert (=> d!499594 (= lt!618654 e!1061955)))

(declare-fun c!269394 () Bool)

(assert (=> d!499594 (= c!269394 ((_ is Nil!18281) lt!617908))))

(assert (=> d!499594 (= (++!4957 lt!617908 lt!617902) lt!618654)))

(declare-fun b!1656137 () Bool)

(assert (=> b!1656137 (= e!1061955 lt!617902)))

(declare-fun b!1656138 () Bool)

(assert (=> b!1656138 (= e!1061955 (Cons!18281 (h!23682 lt!617908) (++!4957 (t!151230 lt!617908) lt!617902)))))

(declare-fun b!1656140 () Bool)

(assert (=> b!1656140 (= e!1061956 (or (not (= lt!617902 Nil!18281)) (= lt!618654 lt!617908)))))

(assert (= (and d!499594 c!269394) b!1656137))

(assert (= (and d!499594 (not c!269394)) b!1656138))

(assert (= (and d!499594 res!742724) b!1656139))

(assert (= (and b!1656139 res!742725) b!1656140))

(declare-fun m!2010789 () Bool)

(assert (=> b!1656139 m!2010789))

(assert (=> b!1656139 m!2010683))

(declare-fun m!2010791 () Bool)

(assert (=> b!1656139 m!2010791))

(declare-fun m!2010793 () Bool)

(assert (=> d!499594 m!2010793))

(assert (=> d!499594 m!2010771))

(declare-fun m!2010795 () Bool)

(assert (=> d!499594 m!2010795))

(declare-fun m!2010797 () Bool)

(assert (=> b!1656138 m!2010797))

(assert (=> b!1655666 d!499594))

(declare-fun d!499596 () Bool)

(declare-fun isEmpty!11328 (Option!3489) Bool)

(assert (=> d!499596 (= (isDefined!2844 lt!617919) (not (isEmpty!11328 lt!617919)))))

(declare-fun bs!396862 () Bool)

(assert (= bs!396862 d!499596))

(declare-fun m!2010799 () Bool)

(assert (=> bs!396862 m!2010799))

(assert (=> b!1655687 d!499596))

(declare-fun b!1656150 () Bool)

(declare-fun lt!618695 () Token!6012)

(declare-fun e!1061962 () Bool)

(assert (=> b!1656150 (= e!1061962 (= (rule!5093 lt!618695) (get!5338 (getRuleFromTag!323 thiss!17113 rules!1846 (tag!3505 (rule!5093 lt!618695))))))))

(declare-fun b!1656151 () Bool)

(declare-fun e!1061961 () Unit!30657)

(declare-fun Unit!30705 () Unit!30657)

(assert (=> b!1656151 (= e!1061961 Unit!30705)))

(declare-fun lt!618691 () List!18351)

(assert (=> b!1656151 (= lt!618691 (++!4957 lt!617908 lt!617923))))

(declare-fun lt!618694 () Unit!30657)

(declare-fun lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!218 (LexerInterface!2852 Rule!6246 List!18354 List!18351) Unit!30657)

(assert (=> b!1656151 (= lt!618694 (lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!218 thiss!17113 (rule!5093 lt!618695) rules!1846 lt!618691))))

(assert (=> b!1656151 (isEmpty!11328 (maxPrefixOneRule!819 thiss!17113 (rule!5093 lt!618695) lt!618691))))

(declare-fun lt!618702 () Unit!30657)

(assert (=> b!1656151 (= lt!618702 lt!618694)))

(declare-fun lt!618704 () List!18351)

(assert (=> b!1656151 (= lt!618704 (list!7285 (charsOf!1872 lt!618695)))))

(declare-fun lt!618690 () Unit!30657)

(declare-fun lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!214 (LexerInterface!2852 Rule!6246 List!18351 List!18351) Unit!30657)

(assert (=> b!1656151 (= lt!618690 (lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!214 thiss!17113 (rule!5093 lt!618695) lt!618704 (++!4957 lt!617908 lt!617923)))))

(assert (=> b!1656151 (not (matchR!2044 (regex!3223 (rule!5093 lt!618695)) lt!618704))))

(declare-fun lt!618705 () Unit!30657)

(assert (=> b!1656151 (= lt!618705 lt!618690)))

(assert (=> b!1656151 false))

(declare-fun d!499598 () Bool)

(assert (=> d!499598 (isDefined!2844 (maxPrefix!1414 thiss!17113 rules!1846 (++!4957 lt!617908 lt!617923)))))

(declare-fun lt!618697 () Unit!30657)

(assert (=> d!499598 (= lt!618697 e!1061961)))

(declare-fun c!269397 () Bool)

(assert (=> d!499598 (= c!269397 (isEmpty!11328 (maxPrefix!1414 thiss!17113 rules!1846 (++!4957 lt!617908 lt!617923))))))

(declare-fun lt!618692 () Unit!30657)

(declare-fun lt!618698 () Unit!30657)

(assert (=> d!499598 (= lt!618692 lt!618698)))

(assert (=> d!499598 e!1061962))

(declare-fun res!742730 () Bool)

(assert (=> d!499598 (=> (not res!742730) (not e!1061962))))

(assert (=> d!499598 (= res!742730 (isDefined!2846 (getRuleFromTag!323 thiss!17113 rules!1846 (tag!3505 (rule!5093 lt!618695)))))))

(assert (=> d!499598 (= lt!618698 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!323 thiss!17113 rules!1846 lt!617908 lt!618695))))

(declare-fun lt!618696 () Unit!30657)

(declare-fun lt!618703 () Unit!30657)

(assert (=> d!499598 (= lt!618696 lt!618703)))

(declare-fun lt!618701 () List!18351)

(assert (=> d!499598 (isPrefix!1481 lt!618701 (++!4957 lt!617908 lt!617923))))

(declare-fun lemmaPrefixStaysPrefixWhenAddingToSuffix!210 (List!18351 List!18351 List!18351) Unit!30657)

(assert (=> d!499598 (= lt!618703 (lemmaPrefixStaysPrefixWhenAddingToSuffix!210 lt!618701 lt!617908 lt!617923))))

(assert (=> d!499598 (= lt!618701 (list!7285 (charsOf!1872 lt!618695)))))

(declare-fun lt!618693 () Unit!30657)

(declare-fun lt!618700 () Unit!30657)

(assert (=> d!499598 (= lt!618693 lt!618700)))

(declare-fun lt!618699 () List!18351)

(declare-fun lt!618689 () List!18351)

(assert (=> d!499598 (isPrefix!1481 lt!618699 (++!4957 lt!618699 lt!618689))))

(assert (=> d!499598 (= lt!618700 (lemmaConcatTwoListThenFirstIsPrefix!1006 lt!618699 lt!618689))))

(assert (=> d!499598 (= lt!618689 (_2!10391 (get!5336 (maxPrefix!1414 thiss!17113 rules!1846 lt!617908))))))

(assert (=> d!499598 (= lt!618699 (list!7285 (charsOf!1872 lt!618695)))))

(declare-fun head!3676 (List!18353) Token!6012)

(assert (=> d!499598 (= lt!618695 (head!3676 (list!7286 (_1!10393 (lex!1336 thiss!17113 rules!1846 (seqFromList!2185 lt!617908))))))))

(assert (=> d!499598 (not (isEmpty!11323 rules!1846))))

(assert (=> d!499598 (= (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!420 thiss!17113 rules!1846 lt!617908 lt!617923) lt!618697)))

(declare-fun b!1656152 () Bool)

(declare-fun Unit!30706 () Unit!30657)

(assert (=> b!1656152 (= e!1061961 Unit!30706)))

(declare-fun b!1656149 () Bool)

(declare-fun res!742731 () Bool)

(assert (=> b!1656149 (=> (not res!742731) (not e!1061962))))

(assert (=> b!1656149 (= res!742731 (matchR!2044 (regex!3223 (get!5338 (getRuleFromTag!323 thiss!17113 rules!1846 (tag!3505 (rule!5093 lt!618695))))) (list!7285 (charsOf!1872 lt!618695))))))

(assert (= (and d!499598 res!742730) b!1656149))

(assert (= (and b!1656149 res!742731) b!1656150))

(assert (= (and d!499598 c!269397) b!1656151))

(assert (= (and d!499598 (not c!269397)) b!1656152))

(declare-fun m!2010801 () Bool)

(assert (=> b!1656150 m!2010801))

(assert (=> b!1656150 m!2010801))

(declare-fun m!2010803 () Bool)

(assert (=> b!1656150 m!2010803))

(assert (=> b!1656151 m!2009629))

(declare-fun m!2010805 () Bool)

(assert (=> b!1656151 m!2010805))

(declare-fun m!2010807 () Bool)

(assert (=> b!1656151 m!2010807))

(declare-fun m!2010809 () Bool)

(assert (=> b!1656151 m!2010809))

(assert (=> b!1656151 m!2009629))

(declare-fun m!2010811 () Bool)

(assert (=> b!1656151 m!2010811))

(declare-fun m!2010813 () Bool)

(assert (=> b!1656151 m!2010813))

(declare-fun m!2010815 () Bool)

(assert (=> b!1656151 m!2010815))

(assert (=> b!1656151 m!2010807))

(assert (=> b!1656151 m!2010813))

(declare-fun m!2010817 () Bool)

(assert (=> b!1656151 m!2010817))

(assert (=> d!499598 m!2010813))

(declare-fun m!2010819 () Bool)

(assert (=> d!499598 m!2010819))

(declare-fun m!2010821 () Bool)

(assert (=> d!499598 m!2010821))

(assert (=> d!499598 m!2009629))

(declare-fun m!2010823 () Bool)

(assert (=> d!499598 m!2010823))

(assert (=> d!499598 m!2009695))

(assert (=> d!499598 m!2009629))

(declare-fun m!2010825 () Bool)

(assert (=> d!499598 m!2010825))

(declare-fun m!2010827 () Bool)

(assert (=> d!499598 m!2010827))

(declare-fun m!2010829 () Bool)

(assert (=> d!499598 m!2010829))

(assert (=> d!499598 m!2009569))

(assert (=> d!499598 m!2009571))

(assert (=> d!499598 m!2009629))

(assert (=> d!499598 m!2010827))

(assert (=> d!499598 m!2009653))

(assert (=> d!499598 m!2009569))

(assert (=> d!499598 m!2009695))

(declare-fun m!2010831 () Bool)

(assert (=> d!499598 m!2010831))

(declare-fun m!2010833 () Bool)

(assert (=> d!499598 m!2010833))

(declare-fun m!2010835 () Bool)

(assert (=> d!499598 m!2010835))

(assert (=> d!499598 m!2010813))

(assert (=> d!499598 m!2010815))

(assert (=> d!499598 m!2010801))

(declare-fun m!2010837 () Bool)

(assert (=> d!499598 m!2010837))

(assert (=> d!499598 m!2010801))

(assert (=> d!499598 m!2010825))

(declare-fun m!2010839 () Bool)

(assert (=> d!499598 m!2010839))

(assert (=> d!499598 m!2010825))

(declare-fun m!2010841 () Bool)

(assert (=> d!499598 m!2010841))

(assert (=> d!499598 m!2010821))

(declare-fun m!2010843 () Bool)

(assert (=> d!499598 m!2010843))

(assert (=> b!1656149 m!2010801))

(assert (=> b!1656149 m!2010813))

(assert (=> b!1656149 m!2010815))

(declare-fun m!2010845 () Bool)

(assert (=> b!1656149 m!2010845))

(assert (=> b!1656149 m!2010801))

(assert (=> b!1656149 m!2010803))

(assert (=> b!1656149 m!2010813))

(assert (=> b!1656149 m!2010815))

(assert (=> b!1655687 d!499598))

(declare-fun d!499600 () Bool)

(assert (=> d!499600 (= (head!3672 (originalCharacters!4037 (h!23684 (t!151232 tokens!457)))) (h!23682 (originalCharacters!4037 (h!23684 (t!151232 tokens!457)))))))

(assert (=> b!1655688 d!499600))

(declare-fun d!499602 () Bool)

(assert (=> d!499602 (= (inv!23630 (tag!3505 (rule!5093 (h!23684 tokens!457)))) (= (mod (str.len (value!101527 (tag!3505 (rule!5093 (h!23684 tokens!457))))) 2) 0))))

(assert (=> b!1655691 d!499602))

(declare-fun d!499604 () Bool)

(declare-fun res!742732 () Bool)

(declare-fun e!1061963 () Bool)

(assert (=> d!499604 (=> (not res!742732) (not e!1061963))))

(assert (=> d!499604 (= res!742732 (semiInverseModEq!1249 (toChars!4533 (transformation!3223 (rule!5093 (h!23684 tokens!457)))) (toValue!4674 (transformation!3223 (rule!5093 (h!23684 tokens!457))))))))

(assert (=> d!499604 (= (inv!23634 (transformation!3223 (rule!5093 (h!23684 tokens!457)))) e!1061963)))

(declare-fun b!1656153 () Bool)

(assert (=> b!1656153 (= e!1061963 (equivClasses!1190 (toChars!4533 (transformation!3223 (rule!5093 (h!23684 tokens!457)))) (toValue!4674 (transformation!3223 (rule!5093 (h!23684 tokens!457))))))))

(assert (= (and d!499604 res!742732) b!1656153))

(declare-fun m!2010847 () Bool)

(assert (=> d!499604 m!2010847))

(declare-fun m!2010849 () Bool)

(assert (=> b!1656153 m!2010849))

(assert (=> b!1655691 d!499604))

(declare-fun b!1656172 () Bool)

(declare-fun e!1061972 () Option!3489)

(declare-fun lt!618717 () Option!3489)

(declare-fun lt!618719 () Option!3489)

(assert (=> b!1656172 (= e!1061972 (ite (and ((_ is None!3488) lt!618717) ((_ is None!3488) lt!618719)) None!3488 (ite ((_ is None!3488) lt!618719) lt!618717 (ite ((_ is None!3488) lt!618717) lt!618719 (ite (>= (size!14544 (_1!10391 (v!24685 lt!618717))) (size!14544 (_1!10391 (v!24685 lt!618719)))) lt!618717 lt!618719)))))))

(declare-fun call!106129 () Option!3489)

(assert (=> b!1656172 (= lt!618717 call!106129)))

(assert (=> b!1656172 (= lt!618719 (maxPrefix!1414 thiss!17113 (t!151233 rules!1846) lt!617924))))

(declare-fun b!1656173 () Bool)

(declare-fun res!742748 () Bool)

(declare-fun e!1061971 () Bool)

(assert (=> b!1656173 (=> (not res!742748) (not e!1061971))))

(declare-fun lt!618718 () Option!3489)

(assert (=> b!1656173 (= res!742748 (< (size!14549 (_2!10391 (get!5336 lt!618718))) (size!14549 lt!617924)))))

(declare-fun b!1656174 () Bool)

(declare-fun res!742749 () Bool)

(assert (=> b!1656174 (=> (not res!742749) (not e!1061971))))

(assert (=> b!1656174 (= res!742749 (= (++!4957 (list!7285 (charsOf!1872 (_1!10391 (get!5336 lt!618718)))) (_2!10391 (get!5336 lt!618718))) lt!617924))))

(declare-fun d!499606 () Bool)

(declare-fun e!1061970 () Bool)

(assert (=> d!499606 e!1061970))

(declare-fun res!742753 () Bool)

(assert (=> d!499606 (=> res!742753 e!1061970)))

(assert (=> d!499606 (= res!742753 (isEmpty!11328 lt!618718))))

(assert (=> d!499606 (= lt!618718 e!1061972)))

(declare-fun c!269400 () Bool)

(assert (=> d!499606 (= c!269400 (and ((_ is Cons!18284) rules!1846) ((_ is Nil!18284) (t!151233 rules!1846))))))

(declare-fun lt!618720 () Unit!30657)

(declare-fun lt!618716 () Unit!30657)

(assert (=> d!499606 (= lt!618720 lt!618716)))

(assert (=> d!499606 (isPrefix!1481 lt!617924 lt!617924)))

(assert (=> d!499606 (= lt!618716 (lemmaIsPrefixRefl!1004 lt!617924 lt!617924))))

(assert (=> d!499606 (rulesValidInductive!1026 thiss!17113 rules!1846)))

(assert (=> d!499606 (= (maxPrefix!1414 thiss!17113 rules!1846 lt!617924) lt!618718)))

(declare-fun bm!106124 () Bool)

(assert (=> bm!106124 (= call!106129 (maxPrefixOneRule!819 thiss!17113 (h!23685 rules!1846) lt!617924))))

(declare-fun b!1656175 () Bool)

(declare-fun res!742752 () Bool)

(assert (=> b!1656175 (=> (not res!742752) (not e!1061971))))

(assert (=> b!1656175 (= res!742752 (= (list!7285 (charsOf!1872 (_1!10391 (get!5336 lt!618718)))) (originalCharacters!4037 (_1!10391 (get!5336 lt!618718)))))))

(declare-fun b!1656176 () Bool)

(declare-fun res!742751 () Bool)

(assert (=> b!1656176 (=> (not res!742751) (not e!1061971))))

(assert (=> b!1656176 (= res!742751 (= (value!101528 (_1!10391 (get!5336 lt!618718))) (apply!4859 (transformation!3223 (rule!5093 (_1!10391 (get!5336 lt!618718)))) (seqFromList!2185 (originalCharacters!4037 (_1!10391 (get!5336 lt!618718)))))))))

(declare-fun b!1656177 () Bool)

(declare-fun contains!3188 (List!18354 Rule!6246) Bool)

(assert (=> b!1656177 (= e!1061971 (contains!3188 rules!1846 (rule!5093 (_1!10391 (get!5336 lt!618718)))))))

(declare-fun b!1656178 () Bool)

(assert (=> b!1656178 (= e!1061970 e!1061971)))

(declare-fun res!742747 () Bool)

(assert (=> b!1656178 (=> (not res!742747) (not e!1061971))))

(assert (=> b!1656178 (= res!742747 (isDefined!2844 lt!618718))))

(declare-fun b!1656179 () Bool)

(declare-fun res!742750 () Bool)

(assert (=> b!1656179 (=> (not res!742750) (not e!1061971))))

(assert (=> b!1656179 (= res!742750 (matchR!2044 (regex!3223 (rule!5093 (_1!10391 (get!5336 lt!618718)))) (list!7285 (charsOf!1872 (_1!10391 (get!5336 lt!618718))))))))

(declare-fun b!1656180 () Bool)

(assert (=> b!1656180 (= e!1061972 call!106129)))

(assert (= (and d!499606 c!269400) b!1656180))

(assert (= (and d!499606 (not c!269400)) b!1656172))

(assert (= (or b!1656180 b!1656172) bm!106124))

(assert (= (and d!499606 (not res!742753)) b!1656178))

(assert (= (and b!1656178 res!742747) b!1656175))

(assert (= (and b!1656175 res!742752) b!1656173))

(assert (= (and b!1656173 res!742748) b!1656174))

(assert (= (and b!1656174 res!742749) b!1656176))

(assert (= (and b!1656176 res!742751) b!1656179))

(assert (= (and b!1656179 res!742750) b!1656177))

(declare-fun m!2010851 () Bool)

(assert (=> b!1656175 m!2010851))

(declare-fun m!2010853 () Bool)

(assert (=> b!1656175 m!2010853))

(assert (=> b!1656175 m!2010853))

(declare-fun m!2010855 () Bool)

(assert (=> b!1656175 m!2010855))

(declare-fun m!2010857 () Bool)

(assert (=> b!1656172 m!2010857))

(assert (=> b!1656177 m!2010851))

(declare-fun m!2010859 () Bool)

(assert (=> b!1656177 m!2010859))

(assert (=> b!1656179 m!2010851))

(assert (=> b!1656179 m!2010853))

(assert (=> b!1656179 m!2010853))

(assert (=> b!1656179 m!2010855))

(assert (=> b!1656179 m!2010855))

(declare-fun m!2010861 () Bool)

(assert (=> b!1656179 m!2010861))

(declare-fun m!2010863 () Bool)

(assert (=> bm!106124 m!2010863))

(assert (=> b!1656176 m!2010851))

(declare-fun m!2010865 () Bool)

(assert (=> b!1656176 m!2010865))

(assert (=> b!1656176 m!2010865))

(declare-fun m!2010867 () Bool)

(assert (=> b!1656176 m!2010867))

(assert (=> b!1656174 m!2010851))

(assert (=> b!1656174 m!2010853))

(assert (=> b!1656174 m!2010853))

(assert (=> b!1656174 m!2010855))

(assert (=> b!1656174 m!2010855))

(declare-fun m!2010869 () Bool)

(assert (=> b!1656174 m!2010869))

(declare-fun m!2010871 () Bool)

(assert (=> b!1656178 m!2010871))

(declare-fun m!2010873 () Bool)

(assert (=> d!499606 m!2010873))

(assert (=> d!499606 m!2009887))

(assert (=> d!499606 m!2009889))

(assert (=> d!499606 m!2009891))

(assert (=> b!1656173 m!2010851))

(declare-fun m!2010875 () Bool)

(assert (=> b!1656173 m!2010875))

(declare-fun m!2010877 () Bool)

(assert (=> b!1656173 m!2010877))

(assert (=> b!1655692 d!499606))

(declare-fun d!499608 () Bool)

(declare-fun lt!618721 () BalanceConc!12132)

(assert (=> d!499608 (= (list!7285 lt!618721) (printList!965 thiss!17113 (list!7286 lt!617906)))))

(assert (=> d!499608 (= lt!618721 (printTailRec!903 thiss!17113 lt!617906 0 (BalanceConc!12133 Empty!6094)))))

(assert (=> d!499608 (= (print!1383 thiss!17113 lt!617906) lt!618721)))

(declare-fun bs!396863 () Bool)

(assert (= bs!396863 d!499608))

(declare-fun m!2010879 () Bool)

(assert (=> bs!396863 m!2010879))

(declare-fun m!2010881 () Bool)

(assert (=> bs!396863 m!2010881))

(assert (=> bs!396863 m!2010881))

(declare-fun m!2010883 () Bool)

(assert (=> bs!396863 m!2010883))

(assert (=> bs!396863 m!2009665))

(assert (=> b!1655692 d!499608))

(declare-fun d!499610 () Bool)

(declare-fun lt!618740 () BalanceConc!12132)

(declare-fun printListTailRec!401 (LexerInterface!2852 List!18353 List!18351) List!18351)

(declare-fun dropList!690 (BalanceConc!12134 Int) List!18353)

(assert (=> d!499610 (= (list!7285 lt!618740) (printListTailRec!401 thiss!17113 (dropList!690 lt!617906 0) (list!7285 (BalanceConc!12133 Empty!6094))))))

(declare-fun e!1061978 () BalanceConc!12132)

(assert (=> d!499610 (= lt!618740 e!1061978)))

(declare-fun c!269403 () Bool)

(assert (=> d!499610 (= c!269403 (>= 0 (size!14547 lt!617906)))))

(declare-fun e!1061977 () Bool)

(assert (=> d!499610 e!1061977))

(declare-fun res!742756 () Bool)

(assert (=> d!499610 (=> (not res!742756) (not e!1061977))))

(assert (=> d!499610 (= res!742756 (>= 0 0))))

(assert (=> d!499610 (= (printTailRec!903 thiss!17113 lt!617906 0 (BalanceConc!12133 Empty!6094)) lt!618740)))

(declare-fun b!1656187 () Bool)

(assert (=> b!1656187 (= e!1061977 (<= 0 (size!14547 lt!617906)))))

(declare-fun b!1656188 () Bool)

(assert (=> b!1656188 (= e!1061978 (BalanceConc!12133 Empty!6094))))

(declare-fun b!1656189 () Bool)

(assert (=> b!1656189 (= e!1061978 (printTailRec!903 thiss!17113 lt!617906 (+ 0 1) (++!4958 (BalanceConc!12133 Empty!6094) (charsOf!1872 (apply!4857 lt!617906 0)))))))

(declare-fun lt!618736 () List!18353)

(assert (=> b!1656189 (= lt!618736 (list!7286 lt!617906))))

(declare-fun lt!618742 () Unit!30657)

(declare-fun lemmaDropApply!608 (List!18353 Int) Unit!30657)

(assert (=> b!1656189 (= lt!618742 (lemmaDropApply!608 lt!618736 0))))

(declare-fun drop!922 (List!18353 Int) List!18353)

(declare-fun apply!4864 (List!18353 Int) Token!6012)

(assert (=> b!1656189 (= (head!3676 (drop!922 lt!618736 0)) (apply!4864 lt!618736 0))))

(declare-fun lt!618737 () Unit!30657)

(assert (=> b!1656189 (= lt!618737 lt!618742)))

(declare-fun lt!618739 () List!18353)

(assert (=> b!1656189 (= lt!618739 (list!7286 lt!617906))))

(declare-fun lt!618741 () Unit!30657)

(declare-fun lemmaDropTail!588 (List!18353 Int) Unit!30657)

(assert (=> b!1656189 (= lt!618741 (lemmaDropTail!588 lt!618739 0))))

(declare-fun tail!2462 (List!18353) List!18353)

(assert (=> b!1656189 (= (tail!2462 (drop!922 lt!618739 0)) (drop!922 lt!618739 (+ 0 1)))))

(declare-fun lt!618738 () Unit!30657)

(assert (=> b!1656189 (= lt!618738 lt!618741)))

(assert (= (and d!499610 res!742756) b!1656187))

(assert (= (and d!499610 c!269403) b!1656188))

(assert (= (and d!499610 (not c!269403)) b!1656189))

(declare-fun m!2010885 () Bool)

(assert (=> d!499610 m!2010885))

(declare-fun m!2010887 () Bool)

(assert (=> d!499610 m!2010887))

(declare-fun m!2010889 () Bool)

(assert (=> d!499610 m!2010889))

(declare-fun m!2010891 () Bool)

(assert (=> d!499610 m!2010891))

(assert (=> d!499610 m!2010891))

(assert (=> d!499610 m!2010887))

(declare-fun m!2010893 () Bool)

(assert (=> d!499610 m!2010893))

(assert (=> b!1656187 m!2010885))

(declare-fun m!2010895 () Bool)

(assert (=> b!1656189 m!2010895))

(declare-fun m!2010897 () Bool)

(assert (=> b!1656189 m!2010897))

(declare-fun m!2010899 () Bool)

(assert (=> b!1656189 m!2010899))

(declare-fun m!2010901 () Bool)

(assert (=> b!1656189 m!2010901))

(assert (=> b!1656189 m!2010901))

(declare-fun m!2010903 () Bool)

(assert (=> b!1656189 m!2010903))

(declare-fun m!2010905 () Bool)

(assert (=> b!1656189 m!2010905))

(assert (=> b!1656189 m!2010899))

(declare-fun m!2010907 () Bool)

(assert (=> b!1656189 m!2010907))

(assert (=> b!1656189 m!2010897))

(declare-fun m!2010909 () Bool)

(assert (=> b!1656189 m!2010909))

(assert (=> b!1656189 m!2010881))

(declare-fun m!2010911 () Bool)

(assert (=> b!1656189 m!2010911))

(declare-fun m!2010913 () Bool)

(assert (=> b!1656189 m!2010913))

(declare-fun m!2010915 () Bool)

(assert (=> b!1656189 m!2010915))

(assert (=> b!1656189 m!2010903))

(declare-fun m!2010917 () Bool)

(assert (=> b!1656189 m!2010917))

(assert (=> b!1656189 m!2010913))

(assert (=> b!1655692 d!499610))

(declare-fun d!499612 () Bool)

(assert (=> d!499612 (= (list!7285 lt!617905) (list!7290 (c!269304 lt!617905)))))

(declare-fun bs!396864 () Bool)

(assert (= bs!396864 d!499612))

(declare-fun m!2010919 () Bool)

(assert (=> bs!396864 m!2010919))

(assert (=> b!1655692 d!499612))

(declare-fun d!499614 () Bool)

(declare-fun c!269406 () Bool)

(assert (=> d!499614 (= c!269406 ((_ is Cons!18283) (Cons!18283 (h!23684 tokens!457) Nil!18283)))))

(declare-fun e!1061981 () List!18351)

(assert (=> d!499614 (= (printList!965 thiss!17113 (Cons!18283 (h!23684 tokens!457) Nil!18283)) e!1061981)))

(declare-fun b!1656194 () Bool)

(assert (=> b!1656194 (= e!1061981 (++!4957 (list!7285 (charsOf!1872 (h!23684 (Cons!18283 (h!23684 tokens!457) Nil!18283)))) (printList!965 thiss!17113 (t!151232 (Cons!18283 (h!23684 tokens!457) Nil!18283)))))))

(declare-fun b!1656195 () Bool)

(assert (=> b!1656195 (= e!1061981 Nil!18281)))

(assert (= (and d!499614 c!269406) b!1656194))

(assert (= (and d!499614 (not c!269406)) b!1656195))

(declare-fun m!2010921 () Bool)

(assert (=> b!1656194 m!2010921))

(assert (=> b!1656194 m!2010921))

(declare-fun m!2010923 () Bool)

(assert (=> b!1656194 m!2010923))

(declare-fun m!2010925 () Bool)

(assert (=> b!1656194 m!2010925))

(assert (=> b!1656194 m!2010923))

(assert (=> b!1656194 m!2010925))

(declare-fun m!2010927 () Bool)

(assert (=> b!1656194 m!2010927))

(assert (=> b!1655692 d!499614))

(declare-fun d!499616 () Bool)

(declare-fun e!1061984 () Bool)

(assert (=> d!499616 e!1061984))

(declare-fun res!742759 () Bool)

(assert (=> d!499616 (=> (not res!742759) (not e!1061984))))

(declare-fun lt!618745 () BalanceConc!12134)

(assert (=> d!499616 (= res!742759 (= (list!7286 lt!618745) (Cons!18283 (h!23684 tokens!457) Nil!18283)))))

(declare-fun singleton!752 (Token!6012) BalanceConc!12134)

(assert (=> d!499616 (= lt!618745 (singleton!752 (h!23684 tokens!457)))))

(assert (=> d!499616 (= (singletonSeq!1719 (h!23684 tokens!457)) lt!618745)))

(declare-fun b!1656198 () Bool)

(assert (=> b!1656198 (= e!1061984 (isBalanced!1876 (c!269305 lt!618745)))))

(assert (= (and d!499616 res!742759) b!1656198))

(declare-fun m!2010929 () Bool)

(assert (=> d!499616 m!2010929))

(declare-fun m!2010931 () Bool)

(assert (=> d!499616 m!2010931))

(declare-fun m!2010933 () Bool)

(assert (=> b!1656198 m!2010933))

(assert (=> b!1655692 d!499616))

(declare-fun d!499618 () Bool)

(declare-fun isEmpty!11331 (Option!3490) Bool)

(assert (=> d!499618 (= (isDefined!2845 (maxPrefixZipperSequence!729 thiss!17113 rules!1846 (seqFromList!2185 (originalCharacters!4037 (h!23684 tokens!457))))) (not (isEmpty!11331 (maxPrefixZipperSequence!729 thiss!17113 rules!1846 (seqFromList!2185 (originalCharacters!4037 (h!23684 tokens!457)))))))))

(declare-fun bs!396865 () Bool)

(assert (= bs!396865 d!499618))

(assert (=> bs!396865 m!2009711))

(declare-fun m!2010935 () Bool)

(assert (=> bs!396865 m!2010935))

(assert (=> b!1655690 d!499618))

(declare-fun b!1656199 () Bool)

(declare-fun e!1061989 () Bool)

(declare-fun lt!618747 () Option!3490)

(assert (=> b!1656199 (= e!1061989 (= (list!7285 (_2!10392 (get!5337 lt!618747))) (_2!10391 (get!5336 (maxPrefixZipper!350 thiss!17113 rules!1846 (list!7285 (seqFromList!2185 (originalCharacters!4037 (h!23684 tokens!457)))))))))))

(declare-fun b!1656200 () Bool)

(declare-fun e!1061988 () Option!3490)

(declare-fun call!106130 () Option!3490)

(assert (=> b!1656200 (= e!1061988 call!106130)))

(declare-fun bm!106125 () Bool)

(assert (=> bm!106125 (= call!106130 (maxPrefixOneRuleZipperSequence!344 thiss!17113 (h!23685 rules!1846) (seqFromList!2185 (originalCharacters!4037 (h!23684 tokens!457)))))))

(declare-fun b!1656201 () Bool)

(declare-fun e!1061987 () Bool)

(declare-fun e!1061986 () Bool)

(assert (=> b!1656201 (= e!1061987 e!1061986)))

(declare-fun res!742765 () Bool)

(assert (=> b!1656201 (=> (not res!742765) (not e!1061986))))

(assert (=> b!1656201 (= res!742765 (= (_1!10392 (get!5337 lt!618747)) (_1!10391 (get!5336 (maxPrefix!1414 thiss!17113 rules!1846 (list!7285 (seqFromList!2185 (originalCharacters!4037 (h!23684 tokens!457)))))))))))

(declare-fun d!499620 () Bool)

(declare-fun e!1061985 () Bool)

(assert (=> d!499620 e!1061985))

(declare-fun res!742762 () Bool)

(assert (=> d!499620 (=> (not res!742762) (not e!1061985))))

(assert (=> d!499620 (= res!742762 (= (isDefined!2845 lt!618747) (isDefined!2844 (maxPrefixZipper!350 thiss!17113 rules!1846 (list!7285 (seqFromList!2185 (originalCharacters!4037 (h!23684 tokens!457))))))))))

(assert (=> d!499620 (= lt!618747 e!1061988)))

(declare-fun c!269407 () Bool)

(assert (=> d!499620 (= c!269407 (and ((_ is Cons!18284) rules!1846) ((_ is Nil!18284) (t!151233 rules!1846))))))

(declare-fun lt!618749 () Unit!30657)

(declare-fun lt!618750 () Unit!30657)

(assert (=> d!499620 (= lt!618749 lt!618750)))

(declare-fun lt!618751 () List!18351)

(declare-fun lt!618748 () List!18351)

(assert (=> d!499620 (isPrefix!1481 lt!618751 lt!618748)))

(assert (=> d!499620 (= lt!618750 (lemmaIsPrefixRefl!1004 lt!618751 lt!618748))))

(assert (=> d!499620 (= lt!618748 (list!7285 (seqFromList!2185 (originalCharacters!4037 (h!23684 tokens!457)))))))

(assert (=> d!499620 (= lt!618751 (list!7285 (seqFromList!2185 (originalCharacters!4037 (h!23684 tokens!457)))))))

(assert (=> d!499620 (rulesValidInductive!1026 thiss!17113 rules!1846)))

(assert (=> d!499620 (= (maxPrefixZipperSequence!729 thiss!17113 rules!1846 (seqFromList!2185 (originalCharacters!4037 (h!23684 tokens!457)))) lt!618747)))

(declare-fun b!1656202 () Bool)

(assert (=> b!1656202 (= e!1061985 e!1061987)))

(declare-fun res!742761 () Bool)

(assert (=> b!1656202 (=> res!742761 e!1061987)))

(assert (=> b!1656202 (= res!742761 (not (isDefined!2845 lt!618747)))))

(declare-fun b!1656203 () Bool)

(declare-fun lt!618752 () Option!3490)

(declare-fun lt!618746 () Option!3490)

(assert (=> b!1656203 (= e!1061988 (ite (and ((_ is None!3489) lt!618752) ((_ is None!3489) lt!618746)) None!3489 (ite ((_ is None!3489) lt!618746) lt!618752 (ite ((_ is None!3489) lt!618752) lt!618746 (ite (>= (size!14544 (_1!10392 (v!24686 lt!618752))) (size!14544 (_1!10392 (v!24686 lt!618746)))) lt!618752 lt!618746)))))))

(assert (=> b!1656203 (= lt!618752 call!106130)))

(assert (=> b!1656203 (= lt!618746 (maxPrefixZipperSequence!729 thiss!17113 (t!151233 rules!1846) (seqFromList!2185 (originalCharacters!4037 (h!23684 tokens!457)))))))

(declare-fun b!1656204 () Bool)

(assert (=> b!1656204 (= e!1061986 (= (list!7285 (_2!10392 (get!5337 lt!618747))) (_2!10391 (get!5336 (maxPrefix!1414 thiss!17113 rules!1846 (list!7285 (seqFromList!2185 (originalCharacters!4037 (h!23684 tokens!457)))))))))))

(declare-fun b!1656205 () Bool)

(declare-fun res!742760 () Bool)

(assert (=> b!1656205 (=> (not res!742760) (not e!1061985))))

(declare-fun e!1061990 () Bool)

(assert (=> b!1656205 (= res!742760 e!1061990)))

(declare-fun res!742763 () Bool)

(assert (=> b!1656205 (=> res!742763 e!1061990)))

(assert (=> b!1656205 (= res!742763 (not (isDefined!2845 lt!618747)))))

(declare-fun b!1656206 () Bool)

(assert (=> b!1656206 (= e!1061990 e!1061989)))

(declare-fun res!742764 () Bool)

(assert (=> b!1656206 (=> (not res!742764) (not e!1061989))))

(assert (=> b!1656206 (= res!742764 (= (_1!10392 (get!5337 lt!618747)) (_1!10391 (get!5336 (maxPrefixZipper!350 thiss!17113 rules!1846 (list!7285 (seqFromList!2185 (originalCharacters!4037 (h!23684 tokens!457)))))))))))

(assert (= (and d!499620 c!269407) b!1656200))

(assert (= (and d!499620 (not c!269407)) b!1656203))

(assert (= (or b!1656200 b!1656203) bm!106125))

(assert (= (and d!499620 res!742762) b!1656205))

(assert (= (and b!1656205 (not res!742763)) b!1656206))

(assert (= (and b!1656206 res!742764) b!1656199))

(assert (= (and b!1656205 res!742760) b!1656202))

(assert (= (and b!1656202 (not res!742761)) b!1656201))

(assert (= (and b!1656201 res!742765) b!1656204))

(assert (=> bm!106125 m!2009709))

(declare-fun m!2010937 () Bool)

(assert (=> bm!106125 m!2010937))

(declare-fun m!2010939 () Bool)

(assert (=> d!499620 m!2010939))

(declare-fun m!2010941 () Bool)

(assert (=> d!499620 m!2010941))

(declare-fun m!2010943 () Bool)

(assert (=> d!499620 m!2010943))

(declare-fun m!2010945 () Bool)

(assert (=> d!499620 m!2010945))

(assert (=> d!499620 m!2010941))

(declare-fun m!2010947 () Bool)

(assert (=> d!499620 m!2010947))

(assert (=> d!499620 m!2009891))

(assert (=> d!499620 m!2009709))

(assert (=> d!499620 m!2010945))

(declare-fun m!2010949 () Bool)

(assert (=> d!499620 m!2010949))

(assert (=> b!1656202 m!2010939))

(assert (=> b!1656205 m!2010939))

(assert (=> b!1656203 m!2009709))

(declare-fun m!2010951 () Bool)

(assert (=> b!1656203 m!2010951))

(declare-fun m!2010953 () Bool)

(assert (=> b!1656204 m!2010953))

(declare-fun m!2010955 () Bool)

(assert (=> b!1656204 m!2010955))

(declare-fun m!2010957 () Bool)

(assert (=> b!1656204 m!2010957))

(assert (=> b!1656204 m!2010945))

(assert (=> b!1656204 m!2010955))

(declare-fun m!2010959 () Bool)

(assert (=> b!1656204 m!2010959))

(assert (=> b!1656204 m!2009709))

(assert (=> b!1656204 m!2010945))

(assert (=> b!1656206 m!2010959))

(assert (=> b!1656206 m!2009709))

(assert (=> b!1656206 m!2010945))

(assert (=> b!1656206 m!2010945))

(assert (=> b!1656206 m!2010941))

(assert (=> b!1656206 m!2010941))

(declare-fun m!2010961 () Bool)

(assert (=> b!1656206 m!2010961))

(assert (=> b!1656201 m!2010959))

(assert (=> b!1656201 m!2009709))

(assert (=> b!1656201 m!2010945))

(assert (=> b!1656201 m!2010945))

(assert (=> b!1656201 m!2010955))

(assert (=> b!1656201 m!2010955))

(assert (=> b!1656201 m!2010957))

(assert (=> b!1656199 m!2010953))

(assert (=> b!1656199 m!2010941))

(assert (=> b!1656199 m!2010961))

(assert (=> b!1656199 m!2010945))

(assert (=> b!1656199 m!2010941))

(assert (=> b!1656199 m!2010959))

(assert (=> b!1656199 m!2009709))

(assert (=> b!1656199 m!2010945))

(assert (=> b!1655690 d!499620))

(declare-fun d!499622 () Bool)

(declare-fun fromListB!983 (List!18351) BalanceConc!12132)

(assert (=> d!499622 (= (seqFromList!2185 (originalCharacters!4037 (h!23684 tokens!457))) (fromListB!983 (originalCharacters!4037 (h!23684 tokens!457))))))

(declare-fun bs!396866 () Bool)

(assert (= bs!396866 d!499622))

(declare-fun m!2010963 () Bool)

(assert (=> bs!396866 m!2010963))

(assert (=> b!1655690 d!499622))

(declare-fun d!499624 () Bool)

(declare-fun lt!618755 () C!9276)

(assert (=> d!499624 (= lt!618755 (head!3672 (list!7285 lt!617911)))))

(declare-fun head!3677 (Conc!6094) C!9276)

(assert (=> d!499624 (= lt!618755 (head!3677 (c!269304 lt!617911)))))

(assert (=> d!499624 (not (isEmpty!11326 lt!617911))))

(assert (=> d!499624 (= (head!3673 lt!617911) lt!618755)))

(declare-fun bs!396867 () Bool)

(assert (= bs!396867 d!499624))

(assert (=> bs!396867 m!2009641))

(assert (=> bs!396867 m!2009641))

(declare-fun m!2010965 () Bool)

(assert (=> bs!396867 m!2010965))

(declare-fun m!2010967 () Bool)

(assert (=> bs!396867 m!2010967))

(declare-fun m!2010969 () Bool)

(assert (=> bs!396867 m!2010969))

(assert (=> b!1655690 d!499624))

(declare-fun d!499626 () Bool)

(assert (=> d!499626 (= (head!3672 lt!617923) (h!23682 lt!617923))))

(assert (=> b!1655683 d!499626))

(declare-fun d!499628 () Bool)

(assert (=> d!499628 (= (isEmpty!11323 rules!1846) ((_ is Nil!18284) rules!1846))))

(assert (=> b!1655684 d!499628))

(declare-fun d!499630 () Bool)

(declare-fun res!742770 () Bool)

(declare-fun e!1061993 () Bool)

(assert (=> d!499630 (=> (not res!742770) (not e!1061993))))

(assert (=> d!499630 (= res!742770 (not (isEmpty!11322 (originalCharacters!4037 (h!23684 tokens!457)))))))

(assert (=> d!499630 (= (inv!23633 (h!23684 tokens!457)) e!1061993)))

(declare-fun b!1656211 () Bool)

(declare-fun res!742771 () Bool)

(assert (=> b!1656211 (=> (not res!742771) (not e!1061993))))

(assert (=> b!1656211 (= res!742771 (= (originalCharacters!4037 (h!23684 tokens!457)) (list!7285 (dynLambda!8201 (toChars!4533 (transformation!3223 (rule!5093 (h!23684 tokens!457)))) (value!101528 (h!23684 tokens!457))))))))

(declare-fun b!1656212 () Bool)

(assert (=> b!1656212 (= e!1061993 (= (size!14544 (h!23684 tokens!457)) (size!14549 (originalCharacters!4037 (h!23684 tokens!457)))))))

(assert (= (and d!499630 res!742770) b!1656211))

(assert (= (and b!1656211 res!742771) b!1656212))

(declare-fun b_lambda!52011 () Bool)

(assert (=> (not b_lambda!52011) (not b!1656211)))

(assert (=> b!1656211 t!151254))

(declare-fun b_and!117561 () Bool)

(assert (= b_and!117557 (and (=> t!151254 result!114542) b_and!117561)))

(assert (=> b!1656211 t!151256))

(declare-fun b_and!117563 () Bool)

(assert (= b_and!117559 (and (=> t!151256 result!114544) b_and!117563)))

(declare-fun m!2010971 () Bool)

(assert (=> d!499630 m!2010971))

(assert (=> b!1656211 m!2010753))

(assert (=> b!1656211 m!2010753))

(declare-fun m!2010973 () Bool)

(assert (=> b!1656211 m!2010973))

(declare-fun m!2010975 () Bool)

(assert (=> b!1656212 m!2010975))

(assert (=> b!1655682 d!499630))

(declare-fun d!499632 () Bool)

(assert (=> d!499632 (= (separableTokensPredicate!792 thiss!17113 (h!23684 tokens!457) (h!23684 (t!151232 tokens!457)) rules!1846) (not (prefixMatchZipperSequence!641 (rulesRegex!607 thiss!17113 rules!1846) (++!4958 (charsOf!1872 (h!23684 tokens!457)) (singletonSeq!1718 (apply!4854 (charsOf!1872 (h!23684 (t!151232 tokens!457))) 0))))))))

(declare-fun bs!396868 () Bool)

(assert (= bs!396868 d!499632))

(assert (=> bs!396868 m!2009581))

(assert (=> bs!396868 m!2009583))

(assert (=> bs!396868 m!2009631))

(assert (=> bs!396868 m!2009583))

(declare-fun m!2010977 () Bool)

(assert (=> bs!396868 m!2010977))

(assert (=> bs!396868 m!2009575))

(assert (=> bs!396868 m!2009585))

(assert (=> bs!396868 m!2009581))

(assert (=> bs!396868 m!2009575))

(assert (=> bs!396868 m!2010977))

(declare-fun m!2010979 () Bool)

(assert (=> bs!396868 m!2010979))

(assert (=> bs!396868 m!2009585))

(assert (=> bs!396868 m!2009631))

(assert (=> b!1655686 d!499632))

(declare-fun d!499634 () Bool)

(declare-fun c!269408 () Bool)

(assert (=> d!499634 (= c!269408 (isEmpty!11322 (++!4957 lt!617908 lt!617901)))))

(declare-fun e!1061994 () Bool)

(assert (=> d!499634 (= (prefixMatch!468 lt!617910 (++!4957 lt!617908 lt!617901)) e!1061994)))

(declare-fun b!1656213 () Bool)

(assert (=> b!1656213 (= e!1061994 (not (lostCause!468 lt!617910)))))

(declare-fun b!1656214 () Bool)

(assert (=> b!1656214 (= e!1061994 (prefixMatch!468 (derivativeStep!1118 lt!617910 (head!3672 (++!4957 lt!617908 lt!617901))) (tail!2461 (++!4957 lt!617908 lt!617901))))))

(assert (= (and d!499634 c!269408) b!1656213))

(assert (= (and d!499634 (not c!269408)) b!1656214))

(assert (=> d!499634 m!2009615))

(declare-fun m!2010981 () Bool)

(assert (=> d!499634 m!2010981))

(assert (=> b!1656213 m!2010779))

(assert (=> b!1656214 m!2009615))

(declare-fun m!2010983 () Bool)

(assert (=> b!1656214 m!2010983))

(assert (=> b!1656214 m!2010983))

(declare-fun m!2010985 () Bool)

(assert (=> b!1656214 m!2010985))

(assert (=> b!1656214 m!2009615))

(declare-fun m!2010987 () Bool)

(assert (=> b!1656214 m!2010987))

(assert (=> b!1656214 m!2010985))

(assert (=> b!1656214 m!2010987))

(declare-fun m!2010989 () Bool)

(assert (=> b!1656214 m!2010989))

(assert (=> b!1655663 d!499634))

(declare-fun b!1656217 () Bool)

(declare-fun res!742773 () Bool)

(declare-fun e!1061996 () Bool)

(assert (=> b!1656217 (=> (not res!742773) (not e!1061996))))

(declare-fun lt!618756 () List!18351)

(assert (=> b!1656217 (= res!742773 (= (size!14549 lt!618756) (+ (size!14549 lt!617908) (size!14549 lt!617901))))))

(declare-fun d!499636 () Bool)

(assert (=> d!499636 e!1061996))

(declare-fun res!742772 () Bool)

(assert (=> d!499636 (=> (not res!742772) (not e!1061996))))

(assert (=> d!499636 (= res!742772 (= (content!2543 lt!618756) ((_ map or) (content!2543 lt!617908) (content!2543 lt!617901))))))

(declare-fun e!1061995 () List!18351)

(assert (=> d!499636 (= lt!618756 e!1061995)))

(declare-fun c!269409 () Bool)

(assert (=> d!499636 (= c!269409 ((_ is Nil!18281) lt!617908))))

(assert (=> d!499636 (= (++!4957 lt!617908 lt!617901) lt!618756)))

(declare-fun b!1656215 () Bool)

(assert (=> b!1656215 (= e!1061995 lt!617901)))

(declare-fun b!1656216 () Bool)

(assert (=> b!1656216 (= e!1061995 (Cons!18281 (h!23682 lt!617908) (++!4957 (t!151230 lt!617908) lt!617901)))))

(declare-fun b!1656218 () Bool)

(assert (=> b!1656218 (= e!1061996 (or (not (= lt!617901 Nil!18281)) (= lt!618756 lt!617908)))))

(assert (= (and d!499636 c!269409) b!1656215))

(assert (= (and d!499636 (not c!269409)) b!1656216))

(assert (= (and d!499636 res!742772) b!1656217))

(assert (= (and b!1656217 res!742773) b!1656218))

(declare-fun m!2010991 () Bool)

(assert (=> b!1656217 m!2010991))

(assert (=> b!1656217 m!2010683))

(declare-fun m!2010993 () Bool)

(assert (=> b!1656217 m!2010993))

(declare-fun m!2010995 () Bool)

(assert (=> d!499636 m!2010995))

(assert (=> d!499636 m!2010771))

(declare-fun m!2010997 () Bool)

(assert (=> d!499636 m!2010997))

(declare-fun m!2010999 () Bool)

(assert (=> b!1656216 m!2010999))

(assert (=> b!1655663 d!499636))

(declare-fun d!499638 () Bool)

(assert (=> d!499638 (= (list!7285 lt!617915) (list!7290 (c!269304 lt!617915)))))

(declare-fun bs!396869 () Bool)

(assert (= bs!396869 d!499638))

(declare-fun m!2011001 () Bool)

(assert (=> bs!396869 m!2011001))

(assert (=> b!1655663 d!499638))

(declare-fun b!1656219 () Bool)

(declare-fun e!1061999 () Option!3489)

(declare-fun lt!618758 () Option!3489)

(declare-fun lt!618760 () Option!3489)

(assert (=> b!1656219 (= e!1061999 (ite (and ((_ is None!3488) lt!618758) ((_ is None!3488) lt!618760)) None!3488 (ite ((_ is None!3488) lt!618760) lt!618758 (ite ((_ is None!3488) lt!618758) lt!618760 (ite (>= (size!14544 (_1!10391 (v!24685 lt!618758))) (size!14544 (_1!10391 (v!24685 lt!618760)))) lt!618758 lt!618760)))))))

(declare-fun call!106131 () Option!3489)

(assert (=> b!1656219 (= lt!618758 call!106131)))

(assert (=> b!1656219 (= lt!618760 (maxPrefix!1414 thiss!17113 (t!151233 rules!1846) (originalCharacters!4037 (h!23684 tokens!457))))))

(declare-fun b!1656220 () Bool)

(declare-fun res!742775 () Bool)

(declare-fun e!1061998 () Bool)

(assert (=> b!1656220 (=> (not res!742775) (not e!1061998))))

(declare-fun lt!618759 () Option!3489)

(assert (=> b!1656220 (= res!742775 (< (size!14549 (_2!10391 (get!5336 lt!618759))) (size!14549 (originalCharacters!4037 (h!23684 tokens!457)))))))

(declare-fun b!1656221 () Bool)

(declare-fun res!742776 () Bool)

(assert (=> b!1656221 (=> (not res!742776) (not e!1061998))))

(assert (=> b!1656221 (= res!742776 (= (++!4957 (list!7285 (charsOf!1872 (_1!10391 (get!5336 lt!618759)))) (_2!10391 (get!5336 lt!618759))) (originalCharacters!4037 (h!23684 tokens!457))))))

(declare-fun d!499640 () Bool)

(declare-fun e!1061997 () Bool)

(assert (=> d!499640 e!1061997))

(declare-fun res!742780 () Bool)

(assert (=> d!499640 (=> res!742780 e!1061997)))

(assert (=> d!499640 (= res!742780 (isEmpty!11328 lt!618759))))

(assert (=> d!499640 (= lt!618759 e!1061999)))

(declare-fun c!269410 () Bool)

(assert (=> d!499640 (= c!269410 (and ((_ is Cons!18284) rules!1846) ((_ is Nil!18284) (t!151233 rules!1846))))))

(declare-fun lt!618761 () Unit!30657)

(declare-fun lt!618757 () Unit!30657)

(assert (=> d!499640 (= lt!618761 lt!618757)))

(assert (=> d!499640 (isPrefix!1481 (originalCharacters!4037 (h!23684 tokens!457)) (originalCharacters!4037 (h!23684 tokens!457)))))

(assert (=> d!499640 (= lt!618757 (lemmaIsPrefixRefl!1004 (originalCharacters!4037 (h!23684 tokens!457)) (originalCharacters!4037 (h!23684 tokens!457))))))

(assert (=> d!499640 (rulesValidInductive!1026 thiss!17113 rules!1846)))

(assert (=> d!499640 (= (maxPrefix!1414 thiss!17113 rules!1846 (originalCharacters!4037 (h!23684 tokens!457))) lt!618759)))

(declare-fun bm!106126 () Bool)

(assert (=> bm!106126 (= call!106131 (maxPrefixOneRule!819 thiss!17113 (h!23685 rules!1846) (originalCharacters!4037 (h!23684 tokens!457))))))

(declare-fun b!1656222 () Bool)

(declare-fun res!742779 () Bool)

(assert (=> b!1656222 (=> (not res!742779) (not e!1061998))))

(assert (=> b!1656222 (= res!742779 (= (list!7285 (charsOf!1872 (_1!10391 (get!5336 lt!618759)))) (originalCharacters!4037 (_1!10391 (get!5336 lt!618759)))))))

(declare-fun b!1656223 () Bool)

(declare-fun res!742778 () Bool)

(assert (=> b!1656223 (=> (not res!742778) (not e!1061998))))

(assert (=> b!1656223 (= res!742778 (= (value!101528 (_1!10391 (get!5336 lt!618759))) (apply!4859 (transformation!3223 (rule!5093 (_1!10391 (get!5336 lt!618759)))) (seqFromList!2185 (originalCharacters!4037 (_1!10391 (get!5336 lt!618759)))))))))

(declare-fun b!1656224 () Bool)

(assert (=> b!1656224 (= e!1061998 (contains!3188 rules!1846 (rule!5093 (_1!10391 (get!5336 lt!618759)))))))

(declare-fun b!1656225 () Bool)

(assert (=> b!1656225 (= e!1061997 e!1061998)))

(declare-fun res!742774 () Bool)

(assert (=> b!1656225 (=> (not res!742774) (not e!1061998))))

(assert (=> b!1656225 (= res!742774 (isDefined!2844 lt!618759))))

(declare-fun b!1656226 () Bool)

(declare-fun res!742777 () Bool)

(assert (=> b!1656226 (=> (not res!742777) (not e!1061998))))

(assert (=> b!1656226 (= res!742777 (matchR!2044 (regex!3223 (rule!5093 (_1!10391 (get!5336 lt!618759)))) (list!7285 (charsOf!1872 (_1!10391 (get!5336 lt!618759))))))))

(declare-fun b!1656227 () Bool)

(assert (=> b!1656227 (= e!1061999 call!106131)))

(assert (= (and d!499640 c!269410) b!1656227))

(assert (= (and d!499640 (not c!269410)) b!1656219))

(assert (= (or b!1656227 b!1656219) bm!106126))

(assert (= (and d!499640 (not res!742780)) b!1656225))

(assert (= (and b!1656225 res!742774) b!1656222))

(assert (= (and b!1656222 res!742779) b!1656220))

(assert (= (and b!1656220 res!742775) b!1656221))

(assert (= (and b!1656221 res!742776) b!1656223))

(assert (= (and b!1656223 res!742778) b!1656226))

(assert (= (and b!1656226 res!742777) b!1656224))

(declare-fun m!2011003 () Bool)

(assert (=> b!1656222 m!2011003))

(declare-fun m!2011005 () Bool)

(assert (=> b!1656222 m!2011005))

(assert (=> b!1656222 m!2011005))

(declare-fun m!2011007 () Bool)

(assert (=> b!1656222 m!2011007))

(declare-fun m!2011009 () Bool)

(assert (=> b!1656219 m!2011009))

(assert (=> b!1656224 m!2011003))

(declare-fun m!2011011 () Bool)

(assert (=> b!1656224 m!2011011))

(assert (=> b!1656226 m!2011003))

(assert (=> b!1656226 m!2011005))

(assert (=> b!1656226 m!2011005))

(assert (=> b!1656226 m!2011007))

(assert (=> b!1656226 m!2011007))

(declare-fun m!2011013 () Bool)

(assert (=> b!1656226 m!2011013))

(declare-fun m!2011015 () Bool)

(assert (=> bm!106126 m!2011015))

(assert (=> b!1656223 m!2011003))

(declare-fun m!2011017 () Bool)

(assert (=> b!1656223 m!2011017))

(assert (=> b!1656223 m!2011017))

(declare-fun m!2011019 () Bool)

(assert (=> b!1656223 m!2011019))

(assert (=> b!1656221 m!2011003))

(assert (=> b!1656221 m!2011005))

(assert (=> b!1656221 m!2011005))

(assert (=> b!1656221 m!2011007))

(assert (=> b!1656221 m!2011007))

(declare-fun m!2011021 () Bool)

(assert (=> b!1656221 m!2011021))

(declare-fun m!2011023 () Bool)

(assert (=> b!1656225 m!2011023))

(declare-fun m!2011025 () Bool)

(assert (=> d!499640 m!2011025))

(declare-fun m!2011027 () Bool)

(assert (=> d!499640 m!2011027))

(declare-fun m!2011029 () Bool)

(assert (=> d!499640 m!2011029))

(assert (=> d!499640 m!2009891))

(assert (=> b!1656220 m!2011003))

(declare-fun m!2011031 () Bool)

(assert (=> b!1656220 m!2011031))

(assert (=> b!1656220 m!2010975))

(assert (=> b!1655664 d!499640))

(declare-fun d!499642 () Bool)

(assert (=> d!499642 (= (isDefined!2844 (maxPrefix!1414 thiss!17113 rules!1846 (originalCharacters!4037 (h!23684 tokens!457)))) (not (isEmpty!11328 (maxPrefix!1414 thiss!17113 rules!1846 (originalCharacters!4037 (h!23684 tokens!457))))))))

(declare-fun bs!396870 () Bool)

(assert (= bs!396870 d!499642))

(assert (=> bs!396870 m!2009701))

(declare-fun m!2011033 () Bool)

(assert (=> bs!396870 m!2011033))

(assert (=> b!1655664 d!499642))

(declare-fun b!1656230 () Bool)

(declare-fun res!742782 () Bool)

(declare-fun e!1062001 () Bool)

(assert (=> b!1656230 (=> (not res!742782) (not e!1062001))))

(declare-fun lt!618762 () List!18351)

(assert (=> b!1656230 (= res!742782 (= (size!14549 lt!618762) (+ (size!14549 (originalCharacters!4037 (h!23684 tokens!457))) (size!14549 lt!617902))))))

(declare-fun d!499644 () Bool)

(assert (=> d!499644 e!1062001))

(declare-fun res!742781 () Bool)

(assert (=> d!499644 (=> (not res!742781) (not e!1062001))))

(assert (=> d!499644 (= res!742781 (= (content!2543 lt!618762) ((_ map or) (content!2543 (originalCharacters!4037 (h!23684 tokens!457))) (content!2543 lt!617902))))))

(declare-fun e!1062000 () List!18351)

(assert (=> d!499644 (= lt!618762 e!1062000)))

(declare-fun c!269411 () Bool)

(assert (=> d!499644 (= c!269411 ((_ is Nil!18281) (originalCharacters!4037 (h!23684 tokens!457))))))

(assert (=> d!499644 (= (++!4957 (originalCharacters!4037 (h!23684 tokens!457)) lt!617902) lt!618762)))

(declare-fun b!1656228 () Bool)

(assert (=> b!1656228 (= e!1062000 lt!617902)))

(declare-fun b!1656229 () Bool)

(assert (=> b!1656229 (= e!1062000 (Cons!18281 (h!23682 (originalCharacters!4037 (h!23684 tokens!457))) (++!4957 (t!151230 (originalCharacters!4037 (h!23684 tokens!457))) lt!617902)))))

(declare-fun b!1656231 () Bool)

(assert (=> b!1656231 (= e!1062001 (or (not (= lt!617902 Nil!18281)) (= lt!618762 (originalCharacters!4037 (h!23684 tokens!457)))))))

(assert (= (and d!499644 c!269411) b!1656228))

(assert (= (and d!499644 (not c!269411)) b!1656229))

(assert (= (and d!499644 res!742781) b!1656230))

(assert (= (and b!1656230 res!742782) b!1656231))

(declare-fun m!2011035 () Bool)

(assert (=> b!1656230 m!2011035))

(assert (=> b!1656230 m!2010975))

(assert (=> b!1656230 m!2010791))

(declare-fun m!2011037 () Bool)

(assert (=> d!499644 m!2011037))

(declare-fun m!2011039 () Bool)

(assert (=> d!499644 m!2011039))

(assert (=> d!499644 m!2010795))

(declare-fun m!2011041 () Bool)

(assert (=> b!1656229 m!2011041))

(assert (=> b!1655664 d!499644))

(declare-fun b!1656232 () Bool)

(declare-fun e!1062004 () Option!3489)

(declare-fun lt!618764 () Option!3489)

(declare-fun lt!618766 () Option!3489)

(assert (=> b!1656232 (= e!1062004 (ite (and ((_ is None!3488) lt!618764) ((_ is None!3488) lt!618766)) None!3488 (ite ((_ is None!3488) lt!618766) lt!618764 (ite ((_ is None!3488) lt!618764) lt!618766 (ite (>= (size!14544 (_1!10391 (v!24685 lt!618764))) (size!14544 (_1!10391 (v!24685 lt!618766)))) lt!618764 lt!618766)))))))

(declare-fun call!106132 () Option!3489)

(assert (=> b!1656232 (= lt!618764 call!106132)))

(assert (=> b!1656232 (= lt!618766 (maxPrefix!1414 thiss!17113 (t!151233 rules!1846) lt!617908))))

(declare-fun b!1656233 () Bool)

(declare-fun res!742784 () Bool)

(declare-fun e!1062003 () Bool)

(assert (=> b!1656233 (=> (not res!742784) (not e!1062003))))

(declare-fun lt!618765 () Option!3489)

(assert (=> b!1656233 (= res!742784 (< (size!14549 (_2!10391 (get!5336 lt!618765))) (size!14549 lt!617908)))))

(declare-fun b!1656234 () Bool)

(declare-fun res!742785 () Bool)

(assert (=> b!1656234 (=> (not res!742785) (not e!1062003))))

(assert (=> b!1656234 (= res!742785 (= (++!4957 (list!7285 (charsOf!1872 (_1!10391 (get!5336 lt!618765)))) (_2!10391 (get!5336 lt!618765))) lt!617908))))

(declare-fun d!499646 () Bool)

(declare-fun e!1062002 () Bool)

(assert (=> d!499646 e!1062002))

(declare-fun res!742789 () Bool)

(assert (=> d!499646 (=> res!742789 e!1062002)))

(assert (=> d!499646 (= res!742789 (isEmpty!11328 lt!618765))))

(assert (=> d!499646 (= lt!618765 e!1062004)))

(declare-fun c!269412 () Bool)

(assert (=> d!499646 (= c!269412 (and ((_ is Cons!18284) rules!1846) ((_ is Nil!18284) (t!151233 rules!1846))))))

(declare-fun lt!618767 () Unit!30657)

(declare-fun lt!618763 () Unit!30657)

(assert (=> d!499646 (= lt!618767 lt!618763)))

(assert (=> d!499646 (isPrefix!1481 lt!617908 lt!617908)))

(assert (=> d!499646 (= lt!618763 (lemmaIsPrefixRefl!1004 lt!617908 lt!617908))))

(assert (=> d!499646 (rulesValidInductive!1026 thiss!17113 rules!1846)))

(assert (=> d!499646 (= (maxPrefix!1414 thiss!17113 rules!1846 lt!617908) lt!618765)))

(declare-fun bm!106127 () Bool)

(assert (=> bm!106127 (= call!106132 (maxPrefixOneRule!819 thiss!17113 (h!23685 rules!1846) lt!617908))))

(declare-fun b!1656235 () Bool)

(declare-fun res!742788 () Bool)

(assert (=> b!1656235 (=> (not res!742788) (not e!1062003))))

(assert (=> b!1656235 (= res!742788 (= (list!7285 (charsOf!1872 (_1!10391 (get!5336 lt!618765)))) (originalCharacters!4037 (_1!10391 (get!5336 lt!618765)))))))

(declare-fun b!1656236 () Bool)

(declare-fun res!742787 () Bool)

(assert (=> b!1656236 (=> (not res!742787) (not e!1062003))))

(assert (=> b!1656236 (= res!742787 (= (value!101528 (_1!10391 (get!5336 lt!618765))) (apply!4859 (transformation!3223 (rule!5093 (_1!10391 (get!5336 lt!618765)))) (seqFromList!2185 (originalCharacters!4037 (_1!10391 (get!5336 lt!618765)))))))))

(declare-fun b!1656237 () Bool)

(assert (=> b!1656237 (= e!1062003 (contains!3188 rules!1846 (rule!5093 (_1!10391 (get!5336 lt!618765)))))))

(declare-fun b!1656238 () Bool)

(assert (=> b!1656238 (= e!1062002 e!1062003)))

(declare-fun res!742783 () Bool)

(assert (=> b!1656238 (=> (not res!742783) (not e!1062003))))

(assert (=> b!1656238 (= res!742783 (isDefined!2844 lt!618765))))

(declare-fun b!1656239 () Bool)

(declare-fun res!742786 () Bool)

(assert (=> b!1656239 (=> (not res!742786) (not e!1062003))))

(assert (=> b!1656239 (= res!742786 (matchR!2044 (regex!3223 (rule!5093 (_1!10391 (get!5336 lt!618765)))) (list!7285 (charsOf!1872 (_1!10391 (get!5336 lt!618765))))))))

(declare-fun b!1656240 () Bool)

(assert (=> b!1656240 (= e!1062004 call!106132)))

(assert (= (and d!499646 c!269412) b!1656240))

(assert (= (and d!499646 (not c!269412)) b!1656232))

(assert (= (or b!1656240 b!1656232) bm!106127))

(assert (= (and d!499646 (not res!742789)) b!1656238))

(assert (= (and b!1656238 res!742783) b!1656235))

(assert (= (and b!1656235 res!742788) b!1656233))

(assert (= (and b!1656233 res!742784) b!1656234))

(assert (= (and b!1656234 res!742785) b!1656236))

(assert (= (and b!1656236 res!742787) b!1656239))

(assert (= (and b!1656239 res!742786) b!1656237))

(declare-fun m!2011043 () Bool)

(assert (=> b!1656235 m!2011043))

(declare-fun m!2011045 () Bool)

(assert (=> b!1656235 m!2011045))

(assert (=> b!1656235 m!2011045))

(declare-fun m!2011047 () Bool)

(assert (=> b!1656235 m!2011047))

(declare-fun m!2011049 () Bool)

(assert (=> b!1656232 m!2011049))

(assert (=> b!1656237 m!2011043))

(declare-fun m!2011051 () Bool)

(assert (=> b!1656237 m!2011051))

(assert (=> b!1656239 m!2011043))

(assert (=> b!1656239 m!2011045))

(assert (=> b!1656239 m!2011045))

(assert (=> b!1656239 m!2011047))

(assert (=> b!1656239 m!2011047))

(declare-fun m!2011053 () Bool)

(assert (=> b!1656239 m!2011053))

(declare-fun m!2011055 () Bool)

(assert (=> bm!106127 m!2011055))

(assert (=> b!1656236 m!2011043))

(declare-fun m!2011057 () Bool)

(assert (=> b!1656236 m!2011057))

(assert (=> b!1656236 m!2011057))

(declare-fun m!2011059 () Bool)

(assert (=> b!1656236 m!2011059))

(assert (=> b!1656234 m!2011043))

(assert (=> b!1656234 m!2011045))

(assert (=> b!1656234 m!2011045))

(assert (=> b!1656234 m!2011047))

(assert (=> b!1656234 m!2011047))

(declare-fun m!2011061 () Bool)

(assert (=> b!1656234 m!2011061))

(declare-fun m!2011063 () Bool)

(assert (=> b!1656238 m!2011063))

(declare-fun m!2011065 () Bool)

(assert (=> d!499646 m!2011065))

(declare-fun m!2011067 () Bool)

(assert (=> d!499646 m!2011067))

(declare-fun m!2011069 () Bool)

(assert (=> d!499646 m!2011069))

(assert (=> d!499646 m!2009891))

(assert (=> b!1656233 m!2011043))

(declare-fun m!2011071 () Bool)

(assert (=> b!1656233 m!2011071))

(assert (=> b!1656233 m!2010683))

(assert (=> b!1655664 d!499646))

(declare-fun d!499648 () Bool)

(assert (=> d!499648 (= (get!5336 lt!617916) (v!24685 lt!617916))))

(assert (=> b!1655664 d!499648))

(declare-fun d!499650 () Bool)

(assert (=> d!499650 (= (isDefined!2844 lt!617916) (not (isEmpty!11328 lt!617916)))))

(declare-fun bs!396871 () Bool)

(assert (= bs!396871 d!499650))

(declare-fun m!2011073 () Bool)

(assert (=> bs!396871 m!2011073))

(assert (=> b!1655664 d!499650))

(declare-fun d!499652 () Bool)

(declare-fun c!269413 () Bool)

(assert (=> d!499652 (= c!269413 (isEmpty!11322 (++!4957 (originalCharacters!4037 (h!23684 tokens!457)) lt!617902)))))

(declare-fun e!1062005 () Bool)

(assert (=> d!499652 (= (prefixMatch!468 lt!617910 (++!4957 (originalCharacters!4037 (h!23684 tokens!457)) lt!617902)) e!1062005)))

(declare-fun b!1656241 () Bool)

(assert (=> b!1656241 (= e!1062005 (not (lostCause!468 lt!617910)))))

(declare-fun b!1656242 () Bool)

(assert (=> b!1656242 (= e!1062005 (prefixMatch!468 (derivativeStep!1118 lt!617910 (head!3672 (++!4957 (originalCharacters!4037 (h!23684 tokens!457)) lt!617902))) (tail!2461 (++!4957 (originalCharacters!4037 (h!23684 tokens!457)) lt!617902))))))

(assert (= (and d!499652 c!269413) b!1656241))

(assert (= (and d!499652 (not c!269413)) b!1656242))

(assert (=> d!499652 m!2009697))

(declare-fun m!2011075 () Bool)

(assert (=> d!499652 m!2011075))

(assert (=> b!1656241 m!2010779))

(assert (=> b!1656242 m!2009697))

(declare-fun m!2011077 () Bool)

(assert (=> b!1656242 m!2011077))

(assert (=> b!1656242 m!2011077))

(declare-fun m!2011079 () Bool)

(assert (=> b!1656242 m!2011079))

(assert (=> b!1656242 m!2009697))

(declare-fun m!2011081 () Bool)

(assert (=> b!1656242 m!2011081))

(assert (=> b!1656242 m!2011079))

(assert (=> b!1656242 m!2011081))

(declare-fun m!2011083 () Bool)

(assert (=> b!1656242 m!2011083))

(assert (=> b!1655664 d!499652))

(declare-fun b!1656301 () Bool)

(declare-fun e!1062041 () Bool)

(assert (=> b!1656301 (= e!1062041 true)))

(declare-fun b!1656300 () Bool)

(declare-fun e!1062040 () Bool)

(assert (=> b!1656300 (= e!1062040 e!1062041)))

(declare-fun b!1656299 () Bool)

(declare-fun e!1062039 () Bool)

(assert (=> b!1656299 (= e!1062039 e!1062040)))

(declare-fun d!499654 () Bool)

(assert (=> d!499654 e!1062039))

(assert (= b!1656300 b!1656301))

(assert (= b!1656299 b!1656300))

(assert (= (and d!499654 ((_ is Cons!18284) rules!1846)) b!1656299))

(declare-fun order!10929 () Int)

(declare-fun order!10927 () Int)

(declare-fun lambda!67770 () Int)

(declare-fun dynLambda!8205 (Int Int) Int)

(declare-fun dynLambda!8206 (Int Int) Int)

(assert (=> b!1656301 (< (dynLambda!8205 order!10927 (toValue!4674 (transformation!3223 (h!23685 rules!1846)))) (dynLambda!8206 order!10929 lambda!67770))))

(declare-fun order!10931 () Int)

(declare-fun dynLambda!8207 (Int Int) Int)

(assert (=> b!1656301 (< (dynLambda!8207 order!10931 (toChars!4533 (transformation!3223 (h!23685 rules!1846)))) (dynLambda!8206 order!10929 lambda!67770))))

(assert (=> d!499654 true))

(declare-fun lt!618983 () Bool)

(declare-fun forall!4158 (List!18353 Int) Bool)

(assert (=> d!499654 (= lt!618983 (forall!4158 tokens!457 lambda!67770))))

(declare-fun e!1062031 () Bool)

(assert (=> d!499654 (= lt!618983 e!1062031)))

(declare-fun res!742800 () Bool)

(assert (=> d!499654 (=> res!742800 e!1062031)))

(assert (=> d!499654 (= res!742800 (not ((_ is Cons!18283) tokens!457)))))

(assert (=> d!499654 (not (isEmpty!11323 rules!1846))))

(assert (=> d!499654 (= (rulesProduceEachTokenIndividuallyList!1054 thiss!17113 rules!1846 tokens!457) lt!618983)))

(declare-fun b!1656289 () Bool)

(declare-fun e!1062032 () Bool)

(assert (=> b!1656289 (= e!1062031 e!1062032)))

(declare-fun res!742801 () Bool)

(assert (=> b!1656289 (=> (not res!742801) (not e!1062032))))

(assert (=> b!1656289 (= res!742801 (rulesProduceIndividualToken!1500 thiss!17113 rules!1846 (h!23684 tokens!457)))))

(declare-fun b!1656290 () Bool)

(assert (=> b!1656290 (= e!1062032 (rulesProduceEachTokenIndividuallyList!1054 thiss!17113 rules!1846 (t!151232 tokens!457)))))

(assert (= (and d!499654 (not res!742800)) b!1656289))

(assert (= (and b!1656289 res!742801) b!1656290))

(declare-fun m!2011097 () Bool)

(assert (=> d!499654 m!2011097))

(assert (=> d!499654 m!2009653))

(assert (=> b!1656289 m!2009689))

(declare-fun m!2011103 () Bool)

(assert (=> b!1656290 m!2011103))

(assert (=> b!1655685 d!499654))

(declare-fun d!499656 () Bool)

(declare-fun c!269436 () Bool)

(assert (=> d!499656 (= c!269436 ((_ is IntegerValue!9939) (value!101528 (h!23684 tokens!457))))))

(declare-fun e!1062050 () Bool)

(assert (=> d!499656 (= (inv!21 (value!101528 (h!23684 tokens!457))) e!1062050)))

(declare-fun b!1656314 () Bool)

(declare-fun res!742804 () Bool)

(declare-fun e!1062049 () Bool)

(assert (=> b!1656314 (=> res!742804 e!1062049)))

(assert (=> b!1656314 (= res!742804 (not ((_ is IntegerValue!9941) (value!101528 (h!23684 tokens!457)))))))

(declare-fun e!1062048 () Bool)

(assert (=> b!1656314 (= e!1062048 e!1062049)))

(declare-fun b!1656315 () Bool)

(declare-fun inv!17 (TokenValue!3313) Bool)

(assert (=> b!1656315 (= e!1062048 (inv!17 (value!101528 (h!23684 tokens!457))))))

(declare-fun b!1656316 () Bool)

(declare-fun inv!15 (TokenValue!3313) Bool)

(assert (=> b!1656316 (= e!1062049 (inv!15 (value!101528 (h!23684 tokens!457))))))

(declare-fun b!1656317 () Bool)

(declare-fun inv!16 (TokenValue!3313) Bool)

(assert (=> b!1656317 (= e!1062050 (inv!16 (value!101528 (h!23684 tokens!457))))))

(declare-fun b!1656318 () Bool)

(assert (=> b!1656318 (= e!1062050 e!1062048)))

(declare-fun c!269437 () Bool)

(assert (=> b!1656318 (= c!269437 ((_ is IntegerValue!9940) (value!101528 (h!23684 tokens!457))))))

(assert (= (and d!499656 c!269436) b!1656317))

(assert (= (and d!499656 (not c!269436)) b!1656318))

(assert (= (and b!1656318 c!269437) b!1656315))

(assert (= (and b!1656318 (not c!269437)) b!1656314))

(assert (= (and b!1656314 (not res!742804)) b!1656316))

(declare-fun m!2011209 () Bool)

(assert (=> b!1656315 m!2011209))

(declare-fun m!2011211 () Bool)

(assert (=> b!1656316 m!2011211))

(declare-fun m!2011213 () Bool)

(assert (=> b!1656317 m!2011213))

(assert (=> b!1655678 d!499656))

(declare-fun d!499660 () Bool)

(declare-fun res!742836 () Bool)

(declare-fun e!1062117 () Bool)

(assert (=> d!499660 (=> res!742836 e!1062117)))

(assert (=> d!499660 (= res!742836 (or (not ((_ is Cons!18283) tokens!457)) (not ((_ is Cons!18283) (t!151232 tokens!457)))))))

(assert (=> d!499660 (= (tokensListTwoByTwoPredicateSeparableList!545 thiss!17113 tokens!457 rules!1846) e!1062117)))

(declare-fun b!1656416 () Bool)

(declare-fun e!1062116 () Bool)

(assert (=> b!1656416 (= e!1062117 e!1062116)))

(declare-fun res!742837 () Bool)

(assert (=> b!1656416 (=> (not res!742837) (not e!1062116))))

(assert (=> b!1656416 (= res!742837 (separableTokensPredicate!792 thiss!17113 (h!23684 tokens!457) (h!23684 (t!151232 tokens!457)) rules!1846))))

(declare-fun lt!619010 () Unit!30657)

(declare-fun Unit!30720 () Unit!30657)

(assert (=> b!1656416 (= lt!619010 Unit!30720)))

(assert (=> b!1656416 (> (size!14548 (charsOf!1872 (h!23684 (t!151232 tokens!457)))) 0)))

(declare-fun lt!619011 () Unit!30657)

(declare-fun Unit!30721 () Unit!30657)

(assert (=> b!1656416 (= lt!619011 Unit!30721)))

(assert (=> b!1656416 (rulesProduceIndividualToken!1500 thiss!17113 rules!1846 (h!23684 (t!151232 tokens!457)))))

(declare-fun lt!619008 () Unit!30657)

(declare-fun Unit!30722 () Unit!30657)

(assert (=> b!1656416 (= lt!619008 Unit!30722)))

(assert (=> b!1656416 (rulesProduceIndividualToken!1500 thiss!17113 rules!1846 (h!23684 tokens!457))))

(declare-fun lt!619012 () Unit!30657)

(declare-fun lt!619013 () Unit!30657)

(assert (=> b!1656416 (= lt!619012 lt!619013)))

(assert (=> b!1656416 (rulesProduceIndividualToken!1500 thiss!17113 rules!1846 (h!23684 (t!151232 tokens!457)))))

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!614 (LexerInterface!2852 List!18354 List!18353 Token!6012) Unit!30657)

(assert (=> b!1656416 (= lt!619013 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!614 thiss!17113 rules!1846 tokens!457 (h!23684 (t!151232 tokens!457))))))

(declare-fun lt!619007 () Unit!30657)

(declare-fun lt!619009 () Unit!30657)

(assert (=> b!1656416 (= lt!619007 lt!619009)))

(assert (=> b!1656416 (rulesProduceIndividualToken!1500 thiss!17113 rules!1846 (h!23684 tokens!457))))

(assert (=> b!1656416 (= lt!619009 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!614 thiss!17113 rules!1846 tokens!457 (h!23684 tokens!457)))))

(declare-fun b!1656417 () Bool)

(assert (=> b!1656417 (= e!1062116 (tokensListTwoByTwoPredicateSeparableList!545 thiss!17113 (Cons!18283 (h!23684 (t!151232 tokens!457)) (t!151232 (t!151232 tokens!457))) rules!1846))))

(assert (= (and d!499660 (not res!742836)) b!1656416))

(assert (= (and b!1656416 res!742837) b!1656417))

(assert (=> b!1656416 m!2009585))

(assert (=> b!1656416 m!2009681))

(assert (=> b!1656416 m!2009585))

(assert (=> b!1656416 m!2010551))

(declare-fun m!2011261 () Bool)

(assert (=> b!1656416 m!2011261))

(declare-fun m!2011263 () Bool)

(assert (=> b!1656416 m!2011263))

(declare-fun m!2011265 () Bool)

(assert (=> b!1656416 m!2011265))

(assert (=> b!1656416 m!2009689))

(declare-fun m!2011267 () Bool)

(assert (=> b!1656417 m!2011267))

(assert (=> b!1655677 d!499660))

(declare-fun d!499672 () Bool)

(assert (=> d!499672 (= (isEmpty!11322 (_2!10391 lt!617904)) ((_ is Nil!18281) (_2!10391 lt!617904)))))

(assert (=> b!1655681 d!499672))

(declare-fun b!1656446 () Bool)

(declare-fun e!1062138 () Bool)

(declare-fun e!1062132 () Bool)

(assert (=> b!1656446 (= e!1062138 e!1062132)))

(declare-fun res!742859 () Bool)

(assert (=> b!1656446 (=> (not res!742859) (not e!1062132))))

(declare-fun lt!619016 () Bool)

(assert (=> b!1656446 (= res!742859 (not lt!619016))))

(declare-fun b!1656447 () Bool)

(declare-fun res!742858 () Bool)

(declare-fun e!1062133 () Bool)

(assert (=> b!1656447 (=> (not res!742858) (not e!1062133))))

(declare-fun call!106138 () Bool)

(assert (=> b!1656447 (= res!742858 (not call!106138))))

(declare-fun b!1656448 () Bool)

(declare-fun res!742860 () Bool)

(declare-fun e!1062134 () Bool)

(assert (=> b!1656448 (=> res!742860 e!1062134)))

(assert (=> b!1656448 (= res!742860 (not (isEmpty!11322 (tail!2461 lt!617908))))))

(declare-fun b!1656449 () Bool)

(declare-fun e!1062136 () Bool)

(declare-fun e!1062135 () Bool)

(assert (=> b!1656449 (= e!1062136 e!1062135)))

(declare-fun c!269456 () Bool)

(assert (=> b!1656449 (= c!269456 ((_ is EmptyLang!4551) (regex!3223 (rule!5093 (h!23684 tokens!457)))))))

(declare-fun bm!106133 () Bool)

(assert (=> bm!106133 (= call!106138 (isEmpty!11322 lt!617908))))

(declare-fun b!1656450 () Bool)

(declare-fun res!742856 () Bool)

(assert (=> b!1656450 (=> (not res!742856) (not e!1062133))))

(assert (=> b!1656450 (= res!742856 (isEmpty!11322 (tail!2461 lt!617908)))))

(declare-fun b!1656451 () Bool)

(assert (=> b!1656451 (= e!1062132 e!1062134)))

(declare-fun res!742854 () Bool)

(assert (=> b!1656451 (=> res!742854 e!1062134)))

(assert (=> b!1656451 (= res!742854 call!106138)))

(declare-fun b!1656452 () Bool)

(declare-fun e!1062137 () Bool)

(assert (=> b!1656452 (= e!1062137 (matchR!2044 (derivativeStep!1118 (regex!3223 (rule!5093 (h!23684 tokens!457))) (head!3672 lt!617908)) (tail!2461 lt!617908)))))

(declare-fun b!1656453 () Bool)

(assert (=> b!1656453 (= e!1062134 (not (= (head!3672 lt!617908) (c!269303 (regex!3223 (rule!5093 (h!23684 tokens!457)))))))))

(declare-fun b!1656454 () Bool)

(declare-fun res!742857 () Bool)

(assert (=> b!1656454 (=> res!742857 e!1062138)))

(assert (=> b!1656454 (= res!742857 (not ((_ is ElementMatch!4551) (regex!3223 (rule!5093 (h!23684 tokens!457))))))))

(assert (=> b!1656454 (= e!1062135 e!1062138)))

(declare-fun d!499674 () Bool)

(assert (=> d!499674 e!1062136))

(declare-fun c!269455 () Bool)

(assert (=> d!499674 (= c!269455 ((_ is EmptyExpr!4551) (regex!3223 (rule!5093 (h!23684 tokens!457)))))))

(assert (=> d!499674 (= lt!619016 e!1062137)))

(declare-fun c!269454 () Bool)

(assert (=> d!499674 (= c!269454 (isEmpty!11322 lt!617908))))

(assert (=> d!499674 (validRegex!1816 (regex!3223 (rule!5093 (h!23684 tokens!457))))))

(assert (=> d!499674 (= (matchR!2044 (regex!3223 (rule!5093 (h!23684 tokens!457))) lt!617908) lt!619016)))

(declare-fun b!1656455 () Bool)

(declare-fun nullable!1351 (Regex!4551) Bool)

(assert (=> b!1656455 (= e!1062137 (nullable!1351 (regex!3223 (rule!5093 (h!23684 tokens!457)))))))

(declare-fun b!1656456 () Bool)

(assert (=> b!1656456 (= e!1062136 (= lt!619016 call!106138))))

(declare-fun b!1656457 () Bool)

(assert (=> b!1656457 (= e!1062133 (= (head!3672 lt!617908) (c!269303 (regex!3223 (rule!5093 (h!23684 tokens!457))))))))

(declare-fun b!1656458 () Bool)

(declare-fun res!742855 () Bool)

(assert (=> b!1656458 (=> res!742855 e!1062138)))

(assert (=> b!1656458 (= res!742855 e!1062133)))

(declare-fun res!742861 () Bool)

(assert (=> b!1656458 (=> (not res!742861) (not e!1062133))))

(assert (=> b!1656458 (= res!742861 lt!619016)))

(declare-fun b!1656459 () Bool)

(assert (=> b!1656459 (= e!1062135 (not lt!619016))))

(assert (= (and d!499674 c!269454) b!1656455))

(assert (= (and d!499674 (not c!269454)) b!1656452))

(assert (= (and d!499674 c!269455) b!1656456))

(assert (= (and d!499674 (not c!269455)) b!1656449))

(assert (= (and b!1656449 c!269456) b!1656459))

(assert (= (and b!1656449 (not c!269456)) b!1656454))

(assert (= (and b!1656454 (not res!742857)) b!1656458))

(assert (= (and b!1656458 res!742861) b!1656447))

(assert (= (and b!1656447 res!742858) b!1656450))

(assert (= (and b!1656450 res!742856) b!1656457))

(assert (= (and b!1656458 (not res!742855)) b!1656446))

(assert (= (and b!1656446 res!742859) b!1656451))

(assert (= (and b!1656451 (not res!742854)) b!1656448))

(assert (= (and b!1656448 (not res!742860)) b!1656453))

(assert (= (or b!1656456 b!1656447 b!1656451) bm!106133))

(assert (=> b!1656453 m!2010677))

(declare-fun m!2011269 () Bool)

(assert (=> bm!106133 m!2011269))

(declare-fun m!2011271 () Bool)

(assert (=> b!1656455 m!2011271))

(assert (=> b!1656448 m!2010671))

(assert (=> b!1656448 m!2010671))

(declare-fun m!2011273 () Bool)

(assert (=> b!1656448 m!2011273))

(assert (=> d!499674 m!2011269))

(declare-fun m!2011275 () Bool)

(assert (=> d!499674 m!2011275))

(assert (=> b!1656450 m!2010671))

(assert (=> b!1656450 m!2010671))

(assert (=> b!1656450 m!2011273))

(assert (=> b!1656452 m!2010677))

(assert (=> b!1656452 m!2010677))

(declare-fun m!2011277 () Bool)

(assert (=> b!1656452 m!2011277))

(assert (=> b!1656452 m!2010671))

(assert (=> b!1656452 m!2011277))

(assert (=> b!1656452 m!2010671))

(declare-fun m!2011279 () Bool)

(assert (=> b!1656452 m!2011279))

(assert (=> b!1656457 m!2010677))

(assert (=> b!1655679 d!499674))

(declare-fun d!499676 () Bool)

(declare-fun lt!619019 () Bool)

(declare-fun isEmpty!11332 (List!18353) Bool)

(assert (=> d!499676 (= lt!619019 (isEmpty!11332 (list!7286 (_1!10393 (lex!1336 thiss!17113 rules!1846 (seqFromList!2185 lt!617908))))))))

(declare-fun isEmpty!11333 (Conc!6095) Bool)

(assert (=> d!499676 (= lt!619019 (isEmpty!11333 (c!269305 (_1!10393 (lex!1336 thiss!17113 rules!1846 (seqFromList!2185 lt!617908))))))))

(assert (=> d!499676 (= (isEmpty!11321 (_1!10393 (lex!1336 thiss!17113 rules!1846 (seqFromList!2185 lt!617908)))) lt!619019)))

(declare-fun bs!396876 () Bool)

(assert (= bs!396876 d!499676))

(assert (=> bs!396876 m!2010827))

(assert (=> bs!396876 m!2010827))

(declare-fun m!2011281 () Bool)

(assert (=> bs!396876 m!2011281))

(declare-fun m!2011283 () Bool)

(assert (=> bs!396876 m!2011283))

(assert (=> b!1655680 d!499676))

(declare-fun b!1656460 () Bool)

(declare-fun e!1062139 () Bool)

(declare-fun lt!619020 () tuple2!17982)

(assert (=> b!1656460 (= e!1062139 (not (isEmpty!11321 (_1!10393 lt!619020))))))

(declare-fun b!1656461 () Bool)

(declare-fun e!1062140 () Bool)

(assert (=> b!1656461 (= e!1062140 e!1062139)))

(declare-fun res!742862 () Bool)

(assert (=> b!1656461 (= res!742862 (< (size!14548 (_2!10393 lt!619020)) (size!14548 (seqFromList!2185 lt!617908))))))

(assert (=> b!1656461 (=> (not res!742862) (not e!1062139))))

(declare-fun b!1656462 () Bool)

(assert (=> b!1656462 (= e!1062140 (= (_2!10393 lt!619020) (seqFromList!2185 lt!617908)))))

(declare-fun b!1656464 () Bool)

(declare-fun res!742863 () Bool)

(declare-fun e!1062141 () Bool)

(assert (=> b!1656464 (=> (not res!742863) (not e!1062141))))

(assert (=> b!1656464 (= res!742863 (= (list!7286 (_1!10393 lt!619020)) (_1!10394 (lexList!878 thiss!17113 rules!1846 (list!7285 (seqFromList!2185 lt!617908))))))))

(declare-fun d!499678 () Bool)

(assert (=> d!499678 e!1062141))

(declare-fun res!742864 () Bool)

(assert (=> d!499678 (=> (not res!742864) (not e!1062141))))

(assert (=> d!499678 (= res!742864 e!1062140)))

(declare-fun c!269457 () Bool)

(assert (=> d!499678 (= c!269457 (> (size!14547 (_1!10393 lt!619020)) 0))))

(assert (=> d!499678 (= lt!619020 (lexTailRecV2!601 thiss!17113 rules!1846 (seqFromList!2185 lt!617908) (BalanceConc!12133 Empty!6094) (seqFromList!2185 lt!617908) (BalanceConc!12135 Empty!6095)))))

(assert (=> d!499678 (= (lex!1336 thiss!17113 rules!1846 (seqFromList!2185 lt!617908)) lt!619020)))

(declare-fun b!1656463 () Bool)

(assert (=> b!1656463 (= e!1062141 (= (list!7285 (_2!10393 lt!619020)) (_2!10394 (lexList!878 thiss!17113 rules!1846 (list!7285 (seqFromList!2185 lt!617908))))))))

(assert (= (and d!499678 c!269457) b!1656461))

(assert (= (and d!499678 (not c!269457)) b!1656462))

(assert (= (and b!1656461 res!742862) b!1656460))

(assert (= (and d!499678 res!742864) b!1656464))

(assert (= (and b!1656464 res!742863) b!1656463))

(declare-fun m!2011285 () Bool)

(assert (=> b!1656464 m!2011285))

(assert (=> b!1656464 m!2009569))

(declare-fun m!2011287 () Bool)

(assert (=> b!1656464 m!2011287))

(assert (=> b!1656464 m!2011287))

(declare-fun m!2011289 () Bool)

(assert (=> b!1656464 m!2011289))

(declare-fun m!2011291 () Bool)

(assert (=> b!1656463 m!2011291))

(assert (=> b!1656463 m!2009569))

(assert (=> b!1656463 m!2011287))

(assert (=> b!1656463 m!2011287))

(assert (=> b!1656463 m!2011289))

(declare-fun m!2011293 () Bool)

(assert (=> b!1656460 m!2011293))

(declare-fun m!2011295 () Bool)

(assert (=> b!1656461 m!2011295))

(assert (=> b!1656461 m!2009569))

(declare-fun m!2011297 () Bool)

(assert (=> b!1656461 m!2011297))

(declare-fun m!2011299 () Bool)

(assert (=> d!499678 m!2011299))

(assert (=> d!499678 m!2009569))

(assert (=> d!499678 m!2009569))

(declare-fun m!2011301 () Bool)

(assert (=> d!499678 m!2011301))

(assert (=> b!1655680 d!499678))

(declare-fun d!499680 () Bool)

(assert (=> d!499680 (= (seqFromList!2185 lt!617908) (fromListB!983 lt!617908))))

(declare-fun bs!396877 () Bool)

(assert (= bs!396877 d!499680))

(declare-fun m!2011303 () Bool)

(assert (=> bs!396877 m!2011303))

(assert (=> b!1655680 d!499680))

(declare-fun b!1656478 () Bool)

(declare-fun e!1062144 () Bool)

(declare-fun tp!478699 () Bool)

(declare-fun tp!478696 () Bool)

(assert (=> b!1656478 (= e!1062144 (and tp!478699 tp!478696))))

(declare-fun b!1656477 () Bool)

(declare-fun tp!478698 () Bool)

(assert (=> b!1656477 (= e!1062144 tp!478698)))

(declare-fun b!1656476 () Bool)

(declare-fun tp!478695 () Bool)

(declare-fun tp!478697 () Bool)

(assert (=> b!1656476 (= e!1062144 (and tp!478695 tp!478697))))

(declare-fun b!1656475 () Bool)

(declare-fun tp_is_empty!7381 () Bool)

(assert (=> b!1656475 (= e!1062144 tp_is_empty!7381)))

(assert (=> b!1655694 (= tp!478621 e!1062144)))

(assert (= (and b!1655694 ((_ is ElementMatch!4551) (regex!3223 (h!23685 rules!1846)))) b!1656475))

(assert (= (and b!1655694 ((_ is Concat!7864) (regex!3223 (h!23685 rules!1846)))) b!1656476))

(assert (= (and b!1655694 ((_ is Star!4551) (regex!3223 (h!23685 rules!1846)))) b!1656477))

(assert (= (and b!1655694 ((_ is Union!4551) (regex!3223 (h!23685 rules!1846)))) b!1656478))

(declare-fun b!1656483 () Bool)

(declare-fun e!1062147 () Bool)

(declare-fun tp!478702 () Bool)

(assert (=> b!1656483 (= e!1062147 (and tp_is_empty!7381 tp!478702))))

(assert (=> b!1655678 (= tp!478623 e!1062147)))

(assert (= (and b!1655678 ((_ is Cons!18281) (originalCharacters!4037 (h!23684 tokens!457)))) b!1656483))

(declare-fun b!1656497 () Bool)

(declare-fun b_free!45031 () Bool)

(declare-fun b_next!45735 () Bool)

(assert (=> b!1656497 (= b_free!45031 (not b_next!45735))))

(declare-fun tp!478715 () Bool)

(declare-fun b_and!117573 () Bool)

(assert (=> b!1656497 (= tp!478715 b_and!117573)))

(declare-fun b_free!45033 () Bool)

(declare-fun b_next!45737 () Bool)

(assert (=> b!1656497 (= b_free!45033 (not b_next!45737))))

(declare-fun t!151271 () Bool)

(declare-fun tb!94791 () Bool)

(assert (=> (and b!1656497 (= (toChars!4533 (transformation!3223 (rule!5093 (h!23684 (t!151232 tokens!457))))) (toChars!4533 (transformation!3223 (rule!5093 (h!23684 (t!151232 tokens!457)))))) t!151271) tb!94791))

(declare-fun result!114568 () Bool)

(assert (= result!114568 result!114536))

(assert (=> d!499552 t!151271))

(declare-fun t!151273 () Bool)

(declare-fun tb!94793 () Bool)

(assert (=> (and b!1656497 (= (toChars!4533 (transformation!3223 (rule!5093 (h!23684 (t!151232 tokens!457))))) (toChars!4533 (transformation!3223 (rule!5093 (h!23684 tokens!457))))) t!151273) tb!94793))

(declare-fun result!114570 () Bool)

(assert (= result!114570 result!114542))

(assert (=> d!499584 t!151273))

(assert (=> b!1656211 t!151273))

(declare-fun b_and!117575 () Bool)

(declare-fun tp!478713 () Bool)

(assert (=> b!1656497 (= tp!478713 (and (=> t!151271 result!114568) (=> t!151273 result!114570) b_and!117575))))

(declare-fun e!1062160 () Bool)

(assert (=> b!1655682 (= tp!478619 e!1062160)))

(declare-fun e!1062163 () Bool)

(assert (=> b!1656497 (= e!1062163 (and tp!478715 tp!478713))))

(declare-fun e!1062161 () Bool)

(declare-fun b!1656494 () Bool)

(declare-fun tp!478716 () Bool)

(assert (=> b!1656494 (= e!1062160 (and (inv!23633 (h!23684 (t!151232 tokens!457))) e!1062161 tp!478716))))

(declare-fun tp!478714 () Bool)

(declare-fun b!1656496 () Bool)

(declare-fun e!1062165 () Bool)

(assert (=> b!1656496 (= e!1062165 (and tp!478714 (inv!23630 (tag!3505 (rule!5093 (h!23684 (t!151232 tokens!457))))) (inv!23634 (transformation!3223 (rule!5093 (h!23684 (t!151232 tokens!457))))) e!1062163))))

(declare-fun tp!478717 () Bool)

(declare-fun b!1656495 () Bool)

(assert (=> b!1656495 (= e!1062161 (and (inv!21 (value!101528 (h!23684 (t!151232 tokens!457)))) e!1062165 tp!478717))))

(assert (= b!1656496 b!1656497))

(assert (= b!1656495 b!1656496))

(assert (= b!1656494 b!1656495))

(assert (= (and b!1655682 ((_ is Cons!18283) (t!151232 tokens!457))) b!1656494))

(declare-fun m!2011305 () Bool)

(assert (=> b!1656494 m!2011305))

(declare-fun m!2011307 () Bool)

(assert (=> b!1656496 m!2011307))

(declare-fun m!2011309 () Bool)

(assert (=> b!1656496 m!2011309))

(declare-fun m!2011311 () Bool)

(assert (=> b!1656495 m!2011311))

(declare-fun b!1656501 () Bool)

(declare-fun e!1062166 () Bool)

(declare-fun tp!478722 () Bool)

(declare-fun tp!478719 () Bool)

(assert (=> b!1656501 (= e!1062166 (and tp!478722 tp!478719))))

(declare-fun b!1656500 () Bool)

(declare-fun tp!478721 () Bool)

(assert (=> b!1656500 (= e!1062166 tp!478721)))

(declare-fun b!1656499 () Bool)

(declare-fun tp!478718 () Bool)

(declare-fun tp!478720 () Bool)

(assert (=> b!1656499 (= e!1062166 (and tp!478718 tp!478720))))

(declare-fun b!1656498 () Bool)

(assert (=> b!1656498 (= e!1062166 tp_is_empty!7381)))

(assert (=> b!1655691 (= tp!478624 e!1062166)))

(assert (= (and b!1655691 ((_ is ElementMatch!4551) (regex!3223 (rule!5093 (h!23684 tokens!457))))) b!1656498))

(assert (= (and b!1655691 ((_ is Concat!7864) (regex!3223 (rule!5093 (h!23684 tokens!457))))) b!1656499))

(assert (= (and b!1655691 ((_ is Star!4551) (regex!3223 (rule!5093 (h!23684 tokens!457))))) b!1656500))

(assert (= (and b!1655691 ((_ is Union!4551) (regex!3223 (rule!5093 (h!23684 tokens!457))))) b!1656501))

(declare-fun b!1656512 () Bool)

(declare-fun b_free!45035 () Bool)

(declare-fun b_next!45739 () Bool)

(assert (=> b!1656512 (= b_free!45035 (not b_next!45739))))

(declare-fun tp!478732 () Bool)

(declare-fun b_and!117577 () Bool)

(assert (=> b!1656512 (= tp!478732 b_and!117577)))

(declare-fun b_free!45037 () Bool)

(declare-fun b_next!45741 () Bool)

(assert (=> b!1656512 (= b_free!45037 (not b_next!45741))))

(declare-fun tb!94795 () Bool)

(declare-fun t!151275 () Bool)

(assert (=> (and b!1656512 (= (toChars!4533 (transformation!3223 (h!23685 (t!151233 rules!1846)))) (toChars!4533 (transformation!3223 (rule!5093 (h!23684 (t!151232 tokens!457)))))) t!151275) tb!94795))

(declare-fun result!114574 () Bool)

(assert (= result!114574 result!114536))

(assert (=> d!499552 t!151275))

(declare-fun t!151277 () Bool)

(declare-fun tb!94797 () Bool)

(assert (=> (and b!1656512 (= (toChars!4533 (transformation!3223 (h!23685 (t!151233 rules!1846)))) (toChars!4533 (transformation!3223 (rule!5093 (h!23684 tokens!457))))) t!151277) tb!94797))

(declare-fun result!114576 () Bool)

(assert (= result!114576 result!114542))

(assert (=> d!499584 t!151277))

(assert (=> b!1656211 t!151277))

(declare-fun tp!478731 () Bool)

(declare-fun b_and!117579 () Bool)

(assert (=> b!1656512 (= tp!478731 (and (=> t!151275 result!114574) (=> t!151277 result!114576) b_and!117579))))

(declare-fun e!1062175 () Bool)

(assert (=> b!1656512 (= e!1062175 (and tp!478732 tp!478731))))

(declare-fun e!1062178 () Bool)

(declare-fun tp!478733 () Bool)

(declare-fun b!1656511 () Bool)

(assert (=> b!1656511 (= e!1062178 (and tp!478733 (inv!23630 (tag!3505 (h!23685 (t!151233 rules!1846)))) (inv!23634 (transformation!3223 (h!23685 (t!151233 rules!1846)))) e!1062175))))

(declare-fun b!1656510 () Bool)

(declare-fun e!1062176 () Bool)

(declare-fun tp!478734 () Bool)

(assert (=> b!1656510 (= e!1062176 (and e!1062178 tp!478734))))

(assert (=> b!1655669 (= tp!478618 e!1062176)))

(assert (= b!1656511 b!1656512))

(assert (= b!1656510 b!1656511))

(assert (= (and b!1655669 ((_ is Cons!18284) (t!151233 rules!1846))) b!1656510))

(declare-fun m!2011313 () Bool)

(assert (=> b!1656511 m!2011313))

(declare-fun m!2011315 () Bool)

(assert (=> b!1656511 m!2011315))

(declare-fun b_lambda!52019 () Bool)

(assert (= b_lambda!52009 (or (and b!1655672 b_free!45017) (and b!1655670 b_free!45021 (= (toChars!4533 (transformation!3223 (h!23685 rules!1846))) (toChars!4533 (transformation!3223 (rule!5093 (h!23684 tokens!457)))))) (and b!1656497 b_free!45033 (= (toChars!4533 (transformation!3223 (rule!5093 (h!23684 (t!151232 tokens!457))))) (toChars!4533 (transformation!3223 (rule!5093 (h!23684 tokens!457)))))) (and b!1656512 b_free!45037 (= (toChars!4533 (transformation!3223 (h!23685 (t!151233 rules!1846)))) (toChars!4533 (transformation!3223 (rule!5093 (h!23684 tokens!457)))))) b_lambda!52019)))

(declare-fun b_lambda!52021 () Bool)

(assert (= b_lambda!52007 (or (and b!1655672 b_free!45017 (= (toChars!4533 (transformation!3223 (rule!5093 (h!23684 tokens!457)))) (toChars!4533 (transformation!3223 (rule!5093 (h!23684 (t!151232 tokens!457))))))) (and b!1655670 b_free!45021 (= (toChars!4533 (transformation!3223 (h!23685 rules!1846))) (toChars!4533 (transformation!3223 (rule!5093 (h!23684 (t!151232 tokens!457))))))) (and b!1656497 b_free!45033) (and b!1656512 b_free!45037 (= (toChars!4533 (transformation!3223 (h!23685 (t!151233 rules!1846)))) (toChars!4533 (transformation!3223 (rule!5093 (h!23684 (t!151232 tokens!457))))))) b_lambda!52021)))

(declare-fun b_lambda!52023 () Bool)

(assert (= b_lambda!52011 (or (and b!1655672 b_free!45017) (and b!1655670 b_free!45021 (= (toChars!4533 (transformation!3223 (h!23685 rules!1846))) (toChars!4533 (transformation!3223 (rule!5093 (h!23684 tokens!457)))))) (and b!1656497 b_free!45033 (= (toChars!4533 (transformation!3223 (rule!5093 (h!23684 (t!151232 tokens!457))))) (toChars!4533 (transformation!3223 (rule!5093 (h!23684 tokens!457)))))) (and b!1656512 b_free!45037 (= (toChars!4533 (transformation!3223 (h!23685 (t!151233 rules!1846)))) (toChars!4533 (transformation!3223 (rule!5093 (h!23684 tokens!457)))))) b_lambda!52023)))

(check-sat (not d!499622) (not b!1656225) (not d!499564) (not b!1656189) (not b!1656464) b_and!117579 (not b!1656241) (not b_next!45725) (not b!1655766) (not b!1656237) (not d!499548) (not tb!94775) (not d!499612) (not b!1656073) (not d!499604) (not d!499676) (not b!1656224) (not d!499434) (not d!499618) (not b!1656476) (not b!1656204) (not d!499596) (not d!499594) (not b!1656450) (not b!1656007) (not bm!106126) (not d!499586) (not b!1656213) (not b!1656500) (not b!1656448) (not d!499680) (not b_next!45719) (not d!499642) (not b!1656483) (not b!1656187) (not b!1656463) (not b!1656495) b_and!117575 (not b!1656499) b_and!117573 (not d!499606) (not b!1656477) (not b!1656455) (not b!1656461) (not b!1656214) (not d!499554) (not b!1656205) (not b!1656022) (not b!1656201) (not d!499582) (not b!1656242) (not b!1656034) (not b!1656232) (not b!1656033) (not b!1656221) (not b!1656013) (not b!1656216) (not b!1656063) (not d!499644) (not b!1655774) (not bm!106127) (not b!1656217) (not d!499588) (not b!1656151) (not b!1656139) (not d!499550) (not d!499556) (not d!499574) (not b!1656172) (not d!499390) (not b!1656235) (not d!499592) (not b!1655768) (not bm!106110) (not b!1656128) (not d!499634) (not b!1656417) (not d!499394) (not b!1656226) (not d!499630) (not b!1656062) (not d!499616) (not d!499646) (not b!1656289) (not d!499636) b_and!117533 (not b!1656004) (not d!499678) (not b_next!45735) (not b!1656223) (not b!1656496) (not d!499580) (not b!1656212) (not b!1656511) (not d!499578) (not d!499650) (not b!1656452) (not b!1656501) (not d!499542) (not b!1656233) (not d!499438) (not b!1656149) (not b!1656494) (not b_lambda!52023) (not bm!106124) (not b!1656019) (not b!1656176) (not b!1656010) (not b!1656290) (not b_next!45721) (not d!499552) (not b!1656005) (not b!1656457) (not b!1655701) (not b!1656460) (not b_next!45741) (not b!1656113) (not b!1655767) (not b!1656092) (not d!499590) (not b!1656102) (not d!499426) b_and!117561 (not b!1656032) (not b!1656198) (not b!1656097) (not b!1656203) (not b!1656114) (not b!1656478) (not b!1656116) (not b!1656229) (not b!1656135) (not d!499430) (not b!1656317) (not d!499598) (not d!499584) (not b!1656416) (not b!1656039) (not d!499428) (not d!499432) (not b!1656316) (not d!499546) (not b!1656117) (not b!1656206) (not bm!106121) (not b!1656129) (not b!1656178) (not b!1656510) (not b!1656179) (not d!499608) (not d!499654) (not b!1656153) (not b!1656096) (not b!1656075) (not b_next!45737) (not b!1656202) (not b!1656074) b_and!117537 (not d!499632) (not b!1656095) (not b!1656453) (not b!1656175) (not tb!94779) (not b!1656299) (not b!1656098) (not b!1656150) (not b_next!45723) (not d!499640) (not d!499638) (not d!499568) (not b!1656012) (not b!1656238) (not d!499620) (not b!1656174) (not b!1656222) (not b!1656138) (not b!1656199) (not b!1656031) (not d!499652) (not d!499624) (not b!1656099) (not d!499544) (not d!499570) (not b!1656220) tp_is_empty!7381 (not b!1656234) (not b!1656239) (not b!1656011) (not b!1655777) (not bm!106133) (not b!1656230) (not d!499424) (not b!1656211) b_and!117577 (not d!499610) (not d!499576) (not b!1656315) (not b_lambda!52019) (not b!1656118) (not b!1656219) (not d!499572) (not b_lambda!52021) (not bm!106125) (not d!499674) (not b!1656003) (not b!1656173) b_and!117563 (not b!1656194) (not b!1656236) (not b!1656136) (not b!1656094) (not b_next!45739) (not b!1656177))
(check-sat b_and!117573 b_and!117561 (not b_next!45737) b_and!117537 (not b_next!45723) b_and!117577 b_and!117579 (not b_next!45725) b_and!117575 (not b_next!45719) b_and!117533 (not b_next!45735) (not b_next!45741) (not b_next!45721) b_and!117563 (not b_next!45739))
