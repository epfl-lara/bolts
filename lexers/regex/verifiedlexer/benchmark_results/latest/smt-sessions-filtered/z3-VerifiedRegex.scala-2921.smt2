; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!171154 () Bool)

(assert start!171154)

(declare-fun b!1739642 () Bool)

(declare-fun b_free!47803 () Bool)

(declare-fun b_next!48507 () Bool)

(assert (=> b!1739642 (= b_free!47803 (not b_next!48507))))

(declare-fun tp!495490 () Bool)

(declare-fun b_and!129187 () Bool)

(assert (=> b!1739642 (= tp!495490 b_and!129187)))

(declare-fun b_free!47805 () Bool)

(declare-fun b_next!48509 () Bool)

(assert (=> b!1739642 (= b_free!47805 (not b_next!48509))))

(declare-fun tp!495496 () Bool)

(declare-fun b_and!129189 () Bool)

(assert (=> b!1739642 (= tp!495496 b_and!129189)))

(declare-fun b!1739644 () Bool)

(declare-fun b_free!47807 () Bool)

(declare-fun b_next!48511 () Bool)

(assert (=> b!1739644 (= b_free!47807 (not b_next!48511))))

(declare-fun tp!495493 () Bool)

(declare-fun b_and!129191 () Bool)

(assert (=> b!1739644 (= tp!495493 b_and!129191)))

(declare-fun b_free!47809 () Bool)

(declare-fun b_next!48513 () Bool)

(assert (=> b!1739644 (= b_free!47809 (not b_next!48513))))

(declare-fun tp!495494 () Bool)

(declare-fun b_and!129193 () Bool)

(assert (=> b!1739644 (= tp!495494 b_and!129193)))

(declare-fun b!1739669 () Bool)

(declare-fun b_free!47811 () Bool)

(declare-fun b_next!48515 () Bool)

(assert (=> b!1739669 (= b_free!47811 (not b_next!48515))))

(declare-fun tp!495492 () Bool)

(declare-fun b_and!129195 () Bool)

(assert (=> b!1739669 (= tp!495492 b_and!129195)))

(declare-fun b_free!47813 () Bool)

(declare-fun b_next!48517 () Bool)

(assert (=> b!1739669 (= b_free!47813 (not b_next!48517))))

(declare-fun tp!495498 () Bool)

(declare-fun b_and!129197 () Bool)

(assert (=> b!1739669 (= tp!495498 b_and!129197)))

(declare-fun b!1739698 () Bool)

(declare-fun e!1113501 () Bool)

(assert (=> b!1739698 (= e!1113501 true)))

(declare-fun b!1739697 () Bool)

(declare-fun e!1113500 () Bool)

(assert (=> b!1739697 (= e!1113500 e!1113501)))

(declare-fun b!1739696 () Bool)

(declare-fun e!1113499 () Bool)

(assert (=> b!1739696 (= e!1113499 e!1113500)))

(declare-fun b!1739646 () Bool)

(assert (=> b!1739646 e!1113499))

(assert (= b!1739697 b!1739698))

(assert (= b!1739696 b!1739697))

(assert (= b!1739646 b!1739696))

(declare-datatypes ((List!19181 0))(
  ( (Nil!19111) (Cons!19111 (h!24512 (_ BitVec 16)) (t!161752 List!19181)) )
))
(declare-datatypes ((TokenValue!3493 0))(
  ( (FloatLiteralValue!6986 (text!24896 List!19181)) (TokenValueExt!3492 (__x!12288 Int)) (Broken!17465 (value!106632 List!19181)) (Object!3562) (End!3493) (Def!3493) (Underscore!3493) (Match!3493) (Else!3493) (Error!3493) (Case!3493) (If!3493) (Extends!3493) (Abstract!3493) (Class!3493) (Val!3493) (DelimiterValue!6986 (del!3553 List!19181)) (KeywordValue!3499 (value!106633 List!19181)) (CommentValue!6986 (value!106634 List!19181)) (WhitespaceValue!6986 (value!106635 List!19181)) (IndentationValue!3493 (value!106636 List!19181)) (String!21796) (Int32!3493) (Broken!17466 (value!106637 List!19181)) (Boolean!3494) (Unit!33142) (OperatorValue!3496 (op!3553 List!19181)) (IdentifierValue!6986 (value!106638 List!19181)) (IdentifierValue!6987 (value!106639 List!19181)) (WhitespaceValue!6987 (value!106640 List!19181)) (True!6986) (False!6986) (Broken!17467 (value!106641 List!19181)) (Broken!17468 (value!106642 List!19181)) (True!6987) (RightBrace!3493) (RightBracket!3493) (Colon!3493) (Null!3493) (Comma!3493) (LeftBracket!3493) (False!6987) (LeftBrace!3493) (ImaginaryLiteralValue!3493 (text!24897 List!19181)) (StringLiteralValue!10479 (value!106643 List!19181)) (EOFValue!3493 (value!106644 List!19181)) (IdentValue!3493 (value!106645 List!19181)) (DelimiterValue!6987 (value!106646 List!19181)) (DedentValue!3493 (value!106647 List!19181)) (NewLineValue!3493 (value!106648 List!19181)) (IntegerValue!10479 (value!106649 (_ BitVec 32)) (text!24898 List!19181)) (IntegerValue!10480 (value!106650 Int) (text!24899 List!19181)) (Times!3493) (Or!3493) (Equal!3493) (Minus!3493) (Broken!17469 (value!106651 List!19181)) (And!3493) (Div!3493) (LessEqual!3493) (Mod!3493) (Concat!8224) (Not!3493) (Plus!3493) (SpaceValue!3493 (value!106652 List!19181)) (IntegerValue!10481 (value!106653 Int) (text!24900 List!19181)) (StringLiteralValue!10480 (text!24901 List!19181)) (FloatLiteralValue!6987 (text!24902 List!19181)) (BytesLiteralValue!3493 (value!106654 List!19181)) (CommentValue!6987 (value!106655 List!19181)) (StringLiteralValue!10481 (value!106656 List!19181)) (ErrorTokenValue!3493 (msg!3554 List!19181)) )
))
(declare-datatypes ((C!9636 0))(
  ( (C!9637 (val!5414 Int)) )
))
(declare-datatypes ((List!19182 0))(
  ( (Nil!19112) (Cons!19112 (h!24513 C!9636) (t!161753 List!19182)) )
))
(declare-datatypes ((Regex!4731 0))(
  ( (ElementMatch!4731 (c!283868 C!9636)) (Concat!8225 (regOne!9974 Regex!4731) (regTwo!9974 Regex!4731)) (EmptyExpr!4731) (Star!4731 (reg!5060 Regex!4731)) (EmptyLang!4731) (Union!4731 (regOne!9975 Regex!4731) (regTwo!9975 Regex!4731)) )
))
(declare-datatypes ((String!21797 0))(
  ( (String!21798 (value!106657 String)) )
))
(declare-datatypes ((IArray!12719 0))(
  ( (IArray!12720 (innerList!6417 List!19182)) )
))
(declare-datatypes ((Conc!6357 0))(
  ( (Node!6357 (left!15288 Conc!6357) (right!15618 Conc!6357) (csize!12944 Int) (cheight!6568 Int)) (Leaf!9279 (xs!9233 IArray!12719) (csize!12945 Int)) (Empty!6357) )
))
(declare-datatypes ((BalanceConc!12658 0))(
  ( (BalanceConc!12659 (c!283869 Conc!6357)) )
))
(declare-datatypes ((TokenValueInjection!6646 0))(
  ( (TokenValueInjection!6647 (toValue!4910 Int) (toChars!4769 Int)) )
))
(declare-datatypes ((Rule!6606 0))(
  ( (Rule!6607 (regex!3403 Regex!4731) (tag!3739 String!21797) (isSeparator!3403 Bool) (transformation!3403 TokenValueInjection!6646)) )
))
(declare-datatypes ((Token!6372 0))(
  ( (Token!6373 (value!106658 TokenValue!3493) (rule!5401 Rule!6606) (size!15192 Int) (originalCharacters!4217 List!19182)) )
))
(declare-datatypes ((tuple2!18766 0))(
  ( (tuple2!18767 (_1!10785 Token!6372) (_2!10785 List!19182)) )
))
(declare-fun lt!670497 () tuple2!18766)

(declare-fun order!11925 () Int)

(declare-fun lambda!69566 () Int)

(declare-fun order!11923 () Int)

(declare-fun dynLambda!9028 (Int Int) Int)

(declare-fun dynLambda!9029 (Int Int) Int)

(assert (=> b!1739698 (< (dynLambda!9028 order!11923 (toValue!4910 (transformation!3403 (rule!5401 (_1!10785 lt!670497))))) (dynLambda!9029 order!11925 lambda!69566))))

(declare-fun order!11927 () Int)

(declare-fun dynLambda!9030 (Int Int) Int)

(assert (=> b!1739698 (< (dynLambda!9030 order!11927 (toChars!4769 (transformation!3403 (rule!5401 (_1!10785 lt!670497))))) (dynLambda!9029 order!11925 lambda!69566))))

(declare-fun e!1113477 () Bool)

(assert (=> b!1739642 (= e!1113477 (and tp!495490 tp!495496))))

(declare-fun b!1739643 () Bool)

(declare-fun e!1113492 () Bool)

(assert (=> b!1739643 e!1113492))

(declare-fun res!781980 () Bool)

(assert (=> b!1739643 (=> (not res!781980) (not e!1113492))))

(declare-fun token!523 () Token!6372)

(declare-fun lt!670501 () List!19182)

(declare-fun matchR!2205 (Regex!4731 List!19182) Bool)

(assert (=> b!1739643 (= res!781980 (not (matchR!2205 (regex!3403 (rule!5401 token!523)) lt!670501)))))

(declare-datatypes ((Unit!33143 0))(
  ( (Unit!33144) )
))
(declare-fun lt!670487 () Unit!33143)

(declare-fun lt!670463 () List!19182)

(declare-datatypes ((LexerInterface!3032 0))(
  ( (LexerInterfaceExt!3029 (__x!12289 Int)) (Lexer!3030) )
))
(declare-fun thiss!24550 () LexerInterface!3032)

(declare-datatypes ((List!19183 0))(
  ( (Nil!19113) (Cons!19113 (h!24514 Rule!6606) (t!161754 List!19183)) )
))
(declare-fun rules!3447 () List!19183)

(declare-fun lemmaMaxPrefNoSmallerRuleMatches!140 (LexerInterface!3032 List!19183 Rule!6606 List!19182 List!19182 Rule!6606) Unit!33143)

(assert (=> b!1739643 (= lt!670487 (lemmaMaxPrefNoSmallerRuleMatches!140 thiss!24550 rules!3447 (rule!5401 (_1!10785 lt!670497)) lt!670501 lt!670463 (rule!5401 token!523)))))

(declare-fun e!1113467 () Unit!33143)

(declare-fun Unit!33145 () Unit!33143)

(assert (=> b!1739643 (= e!1113467 Unit!33145)))

(declare-fun e!1113490 () Bool)

(assert (=> b!1739644 (= e!1113490 (and tp!495493 tp!495494))))

(declare-fun b!1739645 () Bool)

(declare-fun e!1113479 () Unit!33143)

(declare-fun Unit!33146 () Unit!33143)

(assert (=> b!1739645 (= e!1113479 Unit!33146)))

(declare-fun lt!670472 () Unit!33143)

(declare-fun lemmaMaxPrefixThenMatchesRulesRegex!152 (LexerInterface!3032 List!19183 List!19182 Token!6372 Rule!6606 List!19182) Unit!33143)

(assert (=> b!1739645 (= lt!670472 (lemmaMaxPrefixThenMatchesRulesRegex!152 thiss!24550 rules!3447 lt!670463 (_1!10785 lt!670497) (rule!5401 (_1!10785 lt!670497)) (_2!10785 lt!670497)))))

(declare-fun lt!670481 () Regex!4731)

(assert (=> b!1739645 (matchR!2205 lt!670481 lt!670501)))

(declare-fun lt!670510 () List!19182)

(declare-fun lt!670489 () List!19182)

(declare-fun getSuffix!838 (List!19182 List!19182) List!19182)

(assert (=> b!1739645 (= lt!670510 (getSuffix!838 lt!670463 lt!670489))))

(declare-fun suffix!1421 () List!19182)

(declare-fun lt!670491 () Unit!33143)

(declare-fun lemmaSamePrefixThenSameSuffix!788 (List!19182 List!19182 List!19182 List!19182 List!19182) Unit!33143)

(assert (=> b!1739645 (= lt!670491 (lemmaSamePrefixThenSameSuffix!788 lt!670489 suffix!1421 lt!670489 lt!670510 lt!670463))))

(assert (=> b!1739645 (= suffix!1421 lt!670510)))

(declare-fun lt!670498 () Unit!33143)

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!239 (List!19182 List!19182) Unit!33143)

(assert (=> b!1739645 (= lt!670498 (lemmaAddHeadSuffixToPrefixStillPrefix!239 lt!670489 lt!670463))))

(declare-fun isPrefix!1644 (List!19182 List!19182) Bool)

(declare-fun ++!5228 (List!19182 List!19182) List!19182)

(declare-fun head!3982 (List!19182) C!9636)

(assert (=> b!1739645 (isPrefix!1644 (++!5228 lt!670489 (Cons!19112 (head!3982 lt!670510) Nil!19112)) lt!670463)))

(declare-fun lt!670466 () Unit!33143)

(declare-fun lt!670512 () List!19182)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!119 (List!19182 List!19182 List!19182) Unit!33143)

(assert (=> b!1739645 (= lt!670466 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!119 lt!670501 lt!670512 lt!670463))))

(assert (=> b!1739645 (isPrefix!1644 lt!670512 lt!670501)))

(declare-fun lt!670513 () Unit!33143)

(declare-fun lemmaNotPrefixMatchThenCannotMatchLonger!112 (Regex!4731 List!19182 List!19182) Unit!33143)

(assert (=> b!1739645 (= lt!670513 (lemmaNotPrefixMatchThenCannotMatchLonger!112 lt!670481 lt!670512 lt!670501))))

(assert (=> b!1739645 false))

(declare-fun e!1113461 () Bool)

(declare-fun e!1113487 () Bool)

(assert (=> b!1739646 (= e!1113461 e!1113487)))

(declare-fun res!781983 () Bool)

(assert (=> b!1739646 (=> res!781983 e!1113487)))

(declare-fun Forall!778 (Int) Bool)

(assert (=> b!1739646 (= res!781983 (not (Forall!778 lambda!69566)))))

(declare-fun lt!670482 () Unit!33143)

(declare-fun lemmaInv!610 (TokenValueInjection!6646) Unit!33143)

(assert (=> b!1739646 (= lt!670482 (lemmaInv!610 (transformation!3403 (rule!5401 (_1!10785 lt!670497)))))))

(declare-fun b!1739647 () Bool)

(declare-fun e!1113459 () Bool)

(declare-fun e!1113481 () Bool)

(assert (=> b!1739647 (= e!1113459 e!1113481)))

(declare-fun res!781982 () Bool)

(assert (=> b!1739647 (=> res!781982 e!1113481)))

(declare-fun lt!670473 () List!19182)

(declare-datatypes ((Option!3830 0))(
  ( (None!3829) (Some!3829 (v!25258 tuple2!18766)) )
))
(declare-fun lt!670495 () Option!3830)

(assert (=> b!1739647 (= res!781982 (or (not (= lt!670473 (_2!10785 lt!670497))) (not (= lt!670495 (Some!3829 (tuple2!18767 (_1!10785 lt!670497) lt!670473))))))))

(assert (=> b!1739647 (= (_2!10785 lt!670497) lt!670473)))

(declare-fun lt!670478 () Unit!33143)

(assert (=> b!1739647 (= lt!670478 (lemmaSamePrefixThenSameSuffix!788 lt!670501 (_2!10785 lt!670497) lt!670501 lt!670473 lt!670463))))

(assert (=> b!1739647 (= lt!670473 (getSuffix!838 lt!670463 lt!670501))))

(declare-fun lt!670475 () TokenValue!3493)

(declare-fun lt!670514 () Int)

(assert (=> b!1739647 (= lt!670495 (Some!3829 (tuple2!18767 (Token!6373 lt!670475 (rule!5401 (_1!10785 lt!670497)) lt!670514 lt!670501) (_2!10785 lt!670497))))))

(declare-fun maxPrefixOneRule!962 (LexerInterface!3032 Rule!6606 List!19182) Option!3830)

(assert (=> b!1739647 (= lt!670495 (maxPrefixOneRule!962 thiss!24550 (rule!5401 (_1!10785 lt!670497)) lt!670463))))

(declare-fun size!15193 (List!19182) Int)

(assert (=> b!1739647 (= lt!670514 (size!15193 lt!670501))))

(declare-fun apply!5208 (TokenValueInjection!6646 BalanceConc!12658) TokenValue!3493)

(declare-fun seqFromList!2377 (List!19182) BalanceConc!12658)

(assert (=> b!1739647 (= lt!670475 (apply!5208 (transformation!3403 (rule!5401 (_1!10785 lt!670497))) (seqFromList!2377 lt!670501)))))

(declare-fun lt!670494 () Unit!33143)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!361 (LexerInterface!3032 List!19183 List!19182 List!19182 List!19182 Rule!6606) Unit!33143)

(assert (=> b!1739647 (= lt!670494 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!361 thiss!24550 rules!3447 lt!670501 lt!670463 (_2!10785 lt!670497) (rule!5401 (_1!10785 lt!670497))))))

(declare-fun b!1739648 () Bool)

(declare-fun e!1113474 () Unit!33143)

(declare-fun Unit!33147 () Unit!33143)

(assert (=> b!1739648 (= e!1113474 Unit!33147)))

(declare-fun tp!495489 () Bool)

(declare-fun b!1739649 () Bool)

(declare-fun e!1113485 () Bool)

(declare-fun inv!24762 (String!21797) Bool)

(declare-fun inv!24767 (TokenValueInjection!6646) Bool)

(assert (=> b!1739649 (= e!1113485 (and tp!495489 (inv!24762 (tag!3739 (rule!5401 token!523))) (inv!24767 (transformation!3403 (rule!5401 token!523))) e!1113490))))

(declare-fun b!1739650 () Bool)

(declare-fun Unit!33148 () Unit!33143)

(assert (=> b!1739650 (= e!1113467 Unit!33148)))

(declare-fun b!1739651 () Bool)

(declare-fun Unit!33149 () Unit!33143)

(assert (=> b!1739651 (= e!1113474 Unit!33149)))

(declare-fun lt!670477 () Int)

(declare-fun getIndex!170 (List!19183 Rule!6606) Int)

(assert (=> b!1739651 (= lt!670477 (getIndex!170 rules!3447 (rule!5401 token!523)))))

(declare-fun lt!670506 () Int)

(assert (=> b!1739651 (= lt!670506 (getIndex!170 rules!3447 (rule!5401 (_1!10785 lt!670497))))))

(declare-fun c!283863 () Bool)

(assert (=> b!1739651 (= c!283863 (< lt!670477 lt!670506))))

(declare-fun lt!670479 () Unit!33143)

(assert (=> b!1739651 (= lt!670479 e!1113467)))

(declare-fun c!283865 () Bool)

(assert (=> b!1739651 (= c!283865 (< lt!670506 lt!670477))))

(declare-fun lt!670511 () Unit!33143)

(declare-fun e!1113486 () Unit!33143)

(assert (=> b!1739651 (= lt!670511 e!1113486)))

(declare-fun c!283864 () Bool)

(assert (=> b!1739651 (= c!283864 (= lt!670506 lt!670477))))

(declare-fun lt!670499 () Unit!33143)

(declare-fun e!1113457 () Unit!33143)

(assert (=> b!1739651 (= lt!670499 e!1113457)))

(assert (=> b!1739651 false))

(declare-fun b!1739652 () Bool)

(declare-fun res!781988 () Bool)

(declare-fun e!1113472 () Bool)

(assert (=> b!1739652 (=> (not res!781988) (not e!1113472))))

(declare-fun lt!670485 () tuple2!18766)

(declare-fun isEmpty!12029 (List!19182) Bool)

(assert (=> b!1739652 (= res!781988 (isEmpty!12029 (_2!10785 lt!670485)))))

(declare-fun rule!422 () Rule!6606)

(declare-fun tp!495495 () Bool)

(declare-fun b!1739653 () Bool)

(declare-fun e!1113491 () Bool)

(assert (=> b!1739653 (= e!1113491 (and tp!495495 (inv!24762 (tag!3739 rule!422)) (inv!24767 (transformation!3403 rule!422)) e!1113477))))

(declare-fun b!1739654 () Bool)

(declare-fun e!1113462 () Bool)

(assert (=> b!1739654 (= e!1113472 (not e!1113462))))

(declare-fun res!782002 () Bool)

(assert (=> b!1739654 (=> res!782002 e!1113462)))

(assert (=> b!1739654 (= res!782002 (not (matchR!2205 (regex!3403 rule!422) lt!670489)))))

(declare-fun ruleValid!902 (LexerInterface!3032 Rule!6606) Bool)

(assert (=> b!1739654 (ruleValid!902 thiss!24550 rule!422)))

(declare-fun lt!670469 () Unit!33143)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!426 (LexerInterface!3032 Rule!6606 List!19183) Unit!33143)

(assert (=> b!1739654 (= lt!670469 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!426 thiss!24550 rule!422 rules!3447))))

(declare-fun b!1739655 () Bool)

(declare-fun Unit!33150 () Unit!33143)

(assert (=> b!1739655 (= e!1113457 Unit!33150)))

(declare-fun b!1739656 () Bool)

(declare-fun e!1113484 () Bool)

(assert (=> b!1739656 (= e!1113462 e!1113484)))

(declare-fun res!781989 () Bool)

(assert (=> b!1739656 (=> res!781989 e!1113484)))

(declare-fun prefixMatch!616 (Regex!4731 List!19182) Bool)

(assert (=> b!1739656 (= res!781989 (prefixMatch!616 lt!670481 lt!670512))))

(assert (=> b!1739656 (= lt!670512 (++!5228 lt!670489 (Cons!19112 (head!3982 suffix!1421) Nil!19112)))))

(declare-fun rulesRegex!761 (LexerInterface!3032 List!19183) Regex!4731)

(assert (=> b!1739656 (= lt!670481 (rulesRegex!761 thiss!24550 rules!3447))))

(declare-fun b!1739657 () Bool)

(declare-fun res!781993 () Bool)

(assert (=> b!1739657 (=> (not res!781993) (not e!1113472))))

(assert (=> b!1739657 (= res!781993 (= (rule!5401 token!523) rule!422))))

(declare-fun b!1739658 () Bool)

(declare-fun res!781992 () Bool)

(assert (=> b!1739658 (=> res!781992 e!1113462)))

(assert (=> b!1739658 (= res!781992 (isEmpty!12029 suffix!1421))))

(declare-fun b!1739659 () Bool)

(declare-fun e!1113471 () Unit!33143)

(declare-fun Unit!33151 () Unit!33143)

(assert (=> b!1739659 (= e!1113471 Unit!33151)))

(declare-fun b!1739660 () Bool)

(declare-fun res!781998 () Bool)

(declare-fun e!1113482 () Bool)

(assert (=> b!1739660 (=> (not res!781998) (not e!1113482))))

(declare-fun rulesInvariant!2701 (LexerInterface!3032 List!19183) Bool)

(assert (=> b!1739660 (= res!781998 (rulesInvariant!2701 thiss!24550 rules!3447))))

(declare-fun b!1739661 () Bool)

(declare-fun Unit!33152 () Unit!33143)

(assert (=> b!1739661 (= e!1113479 Unit!33152)))

(declare-fun b!1739662 () Bool)

(assert (=> b!1739662 (= e!1113484 e!1113461)))

(declare-fun res!781987 () Bool)

(assert (=> b!1739662 (=> res!781987 e!1113461)))

(assert (=> b!1739662 (= res!781987 (not (isPrefix!1644 lt!670501 lt!670463)))))

(assert (=> b!1739662 (isPrefix!1644 lt!670501 (++!5228 lt!670501 (_2!10785 lt!670497)))))

(declare-fun lt!670502 () Unit!33143)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1154 (List!19182 List!19182) Unit!33143)

(assert (=> b!1739662 (= lt!670502 (lemmaConcatTwoListThenFirstIsPrefix!1154 lt!670501 (_2!10785 lt!670497)))))

(declare-fun lt!670465 () BalanceConc!12658)

(declare-fun list!7728 (BalanceConc!12658) List!19182)

(assert (=> b!1739662 (= lt!670501 (list!7728 lt!670465))))

(declare-fun charsOf!2052 (Token!6372) BalanceConc!12658)

(assert (=> b!1739662 (= lt!670465 (charsOf!2052 (_1!10785 lt!670497)))))

(declare-fun e!1113470 () Bool)

(assert (=> b!1739662 e!1113470))

(declare-fun res!781986 () Bool)

(assert (=> b!1739662 (=> (not res!781986) (not e!1113470))))

(declare-datatypes ((Option!3831 0))(
  ( (None!3830) (Some!3830 (v!25259 Rule!6606)) )
))
(declare-fun lt!670480 () Option!3831)

(declare-fun isDefined!3173 (Option!3831) Bool)

(assert (=> b!1739662 (= res!781986 (isDefined!3173 lt!670480))))

(declare-fun getRuleFromTag!453 (LexerInterface!3032 List!19183 String!21797) Option!3831)

(assert (=> b!1739662 (= lt!670480 (getRuleFromTag!453 thiss!24550 rules!3447 (tag!3739 (rule!5401 (_1!10785 lt!670497)))))))

(declare-fun lt!670486 () Unit!33143)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!453 (LexerInterface!3032 List!19183 List!19182 Token!6372) Unit!33143)

(assert (=> b!1739662 (= lt!670486 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!453 thiss!24550 rules!3447 lt!670463 (_1!10785 lt!670497)))))

(declare-fun lt!670461 () Option!3830)

(declare-fun get!5749 (Option!3830) tuple2!18766)

(assert (=> b!1739662 (= lt!670497 (get!5749 lt!670461))))

(declare-fun lt!670488 () Unit!33143)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!556 (LexerInterface!3032 List!19183 List!19182 List!19182) Unit!33143)

(assert (=> b!1739662 (= lt!670488 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!556 thiss!24550 rules!3447 lt!670489 suffix!1421))))

(declare-fun maxPrefix!1586 (LexerInterface!3032 List!19183 List!19182) Option!3830)

(assert (=> b!1739662 (= lt!670461 (maxPrefix!1586 thiss!24550 rules!3447 lt!670463))))

(assert (=> b!1739662 (isPrefix!1644 lt!670489 lt!670463)))

(declare-fun lt!670507 () Unit!33143)

(assert (=> b!1739662 (= lt!670507 (lemmaConcatTwoListThenFirstIsPrefix!1154 lt!670489 suffix!1421))))

(assert (=> b!1739662 (= lt!670463 (++!5228 lt!670489 suffix!1421))))

(declare-fun b!1739663 () Bool)

(declare-fun res!782000 () Bool)

(assert (=> b!1739663 (=> (not res!782000) (not e!1113482))))

(declare-fun contains!3425 (List!19183 Rule!6606) Bool)

(assert (=> b!1739663 (= res!782000 (contains!3425 rules!3447 rule!422))))

(declare-fun b!1739664 () Bool)

(declare-fun e!1113464 () Bool)

(declare-fun e!1113476 () Bool)

(assert (=> b!1739664 (= e!1113464 e!1113476)))

(declare-fun res!781991 () Bool)

(assert (=> b!1739664 (=> res!781991 e!1113476)))

(declare-fun lt!670462 () Bool)

(assert (=> b!1739664 (= res!781991 (or lt!670462 (not (= token!523 (_1!10785 lt!670497)))))))

(declare-fun lt!670470 () Unit!33143)

(assert (=> b!1739664 (= lt!670470 e!1113474)))

(declare-fun c!283866 () Bool)

(assert (=> b!1739664 (= c!283866 lt!670462)))

(assert (=> b!1739664 (= lt!670462 (not (= (rule!5401 (_1!10785 lt!670497)) (rule!5401 token!523))))))

(assert (=> b!1739664 (= suffix!1421 (_2!10785 lt!670497))))

(declare-fun lt!670496 () Unit!33143)

(assert (=> b!1739664 (= lt!670496 (lemmaSamePrefixThenSameSuffix!788 lt!670489 suffix!1421 lt!670489 (_2!10785 lt!670497) lt!670463))))

(assert (=> b!1739664 (= lt!670501 lt!670489)))

(declare-fun lt!670468 () Unit!33143)

(declare-fun lemmaIsPrefixSameLengthThenSameList!231 (List!19182 List!19182 List!19182) Unit!33143)

(assert (=> b!1739664 (= lt!670468 (lemmaIsPrefixSameLengthThenSameList!231 lt!670501 lt!670489 lt!670463))))

(declare-fun b!1739665 () Bool)

(declare-fun e!1113483 () Bool)

(declare-fun lt!670493 () Rule!6606)

(assert (=> b!1739665 (= e!1113483 (= (rule!5401 (_1!10785 lt!670497)) lt!670493))))

(declare-fun b!1739666 () Bool)

(declare-fun e!1113468 () Bool)

(declare-fun tp_is_empty!7705 () Bool)

(declare-fun tp!495499 () Bool)

(assert (=> b!1739666 (= e!1113468 (and tp_is_empty!7705 tp!495499))))

(declare-fun b!1739667 () Bool)

(declare-fun e!1113469 () Bool)

(assert (=> b!1739667 (= e!1113469 e!1113472)))

(declare-fun res!781981 () Bool)

(assert (=> b!1739667 (=> (not res!781981) (not e!1113472))))

(assert (=> b!1739667 (= res!781981 (= (_1!10785 lt!670485) token!523))))

(declare-fun lt!670508 () Option!3830)

(assert (=> b!1739667 (= lt!670485 (get!5749 lt!670508))))

(declare-fun b!1739668 () Bool)

(assert (=> b!1739668 (= e!1113482 e!1113469)))

(declare-fun res!781994 () Bool)

(assert (=> b!1739668 (=> (not res!781994) (not e!1113469))))

(declare-fun isDefined!3174 (Option!3830) Bool)

(assert (=> b!1739668 (= res!781994 (isDefined!3174 lt!670508))))

(assert (=> b!1739668 (= lt!670508 (maxPrefix!1586 thiss!24550 rules!3447 lt!670489))))

(declare-fun lt!670505 () BalanceConc!12658)

(assert (=> b!1739668 (= lt!670489 (list!7728 lt!670505))))

(assert (=> b!1739668 (= lt!670505 (charsOf!2052 token!523))))

(declare-fun e!1113466 () Bool)

(assert (=> b!1739669 (= e!1113466 (and tp!495492 tp!495498))))

(declare-fun b!1739670 () Bool)

(assert (=> b!1739670 (= e!1113492 false)))

(declare-fun b!1739671 () Bool)

(assert (=> b!1739671 false))

(declare-fun lt!670490 () Unit!33143)

(declare-fun lemmaSameIndexThenSameElement!104 (List!19183 Rule!6606 Rule!6606) Unit!33143)

(assert (=> b!1739671 (= lt!670490 (lemmaSameIndexThenSameElement!104 rules!3447 (rule!5401 (_1!10785 lt!670497)) (rule!5401 token!523)))))

(declare-fun Unit!33153 () Unit!33143)

(assert (=> b!1739671 (= e!1113457 Unit!33153)))

(declare-fun b!1739672 () Bool)

(declare-fun rulesValidInductive!1132 (LexerInterface!3032 List!19183) Bool)

(assert (=> b!1739672 (= e!1113476 (rulesValidInductive!1132 thiss!24550 rules!3447))))

(declare-fun b!1739673 () Bool)

(declare-fun e!1113480 () Bool)

(assert (=> b!1739673 e!1113480))

(declare-fun res!781985 () Bool)

(assert (=> b!1739673 (=> (not res!781985) (not e!1113480))))

(assert (=> b!1739673 (= res!781985 (not (matchR!2205 (regex!3403 (rule!5401 (_1!10785 lt!670497))) lt!670489)))))

(declare-fun lt!670471 () Unit!33143)

(assert (=> b!1739673 (= lt!670471 (lemmaMaxPrefNoSmallerRuleMatches!140 thiss!24550 rules!3447 (rule!5401 token!523) lt!670489 lt!670489 (rule!5401 (_1!10785 lt!670497))))))

(declare-fun Unit!33154 () Unit!33143)

(assert (=> b!1739673 (= e!1113486 Unit!33154)))

(declare-fun b!1739674 () Bool)

(declare-fun res!781995 () Bool)

(declare-fun e!1113478 () Bool)

(assert (=> b!1739674 (=> res!781995 e!1113478)))

(declare-fun dynLambda!9031 (Int TokenValue!3493) BalanceConc!12658)

(assert (=> b!1739674 (= res!781995 (not (= lt!670465 (dynLambda!9031 (toChars!4769 (transformation!3403 (rule!5401 (_1!10785 lt!670497)))) (value!106658 (_1!10785 lt!670497))))))))

(declare-fun b!1739675 () Bool)

(assert (=> b!1739675 (= e!1113487 e!1113478)))

(declare-fun res!781979 () Bool)

(assert (=> b!1739675 (=> res!781979 e!1113478)))

(declare-fun dynLambda!9032 (Int BalanceConc!12658) TokenValue!3493)

(assert (=> b!1739675 (= res!781979 (not (= (list!7728 (dynLambda!9031 (toChars!4769 (transformation!3403 (rule!5401 (_1!10785 lt!670497)))) (dynLambda!9032 (toValue!4910 (transformation!3403 (rule!5401 (_1!10785 lt!670497)))) lt!670465))) lt!670501)))))

(declare-fun lt!670474 () Unit!33143)

(declare-fun lemmaSemiInverse!549 (TokenValueInjection!6646 BalanceConc!12658) Unit!33143)

(assert (=> b!1739675 (= lt!670474 (lemmaSemiInverse!549 (transformation!3403 (rule!5401 (_1!10785 lt!670497))) lt!670465))))

(declare-fun b!1739676 () Bool)

(declare-fun Unit!33155 () Unit!33143)

(assert (=> b!1739676 (= e!1113486 Unit!33155)))

(declare-fun b!1739677 () Bool)

(declare-fun e!1113475 () Bool)

(declare-fun e!1113463 () Bool)

(declare-fun tp!495491 () Bool)

(assert (=> b!1739677 (= e!1113475 (and e!1113463 tp!495491))))

(declare-fun b!1739678 () Bool)

(declare-fun e!1113465 () Bool)

(assert (=> b!1739678 (= e!1113465 e!1113464)))

(declare-fun res!781990 () Bool)

(assert (=> b!1739678 (=> res!781990 e!1113464)))

(declare-fun lt!670484 () Int)

(declare-fun lt!670500 () Int)

(assert (=> b!1739678 (= res!781990 (not (= lt!670484 lt!670500)))))

(declare-fun lt!670492 () Unit!33143)

(assert (=> b!1739678 (= lt!670492 e!1113471)))

(declare-fun c!283862 () Bool)

(assert (=> b!1739678 (= c!283862 (< lt!670484 lt!670500))))

(declare-fun b!1739679 () Bool)

(assert (=> b!1739679 (= e!1113480 false)))

(declare-fun e!1113460 () Bool)

(declare-fun tp!495497 () Bool)

(declare-fun b!1739680 () Bool)

(declare-fun inv!21 (TokenValue!3493) Bool)

(assert (=> b!1739680 (= e!1113460 (and (inv!21 (value!106658 token!523)) e!1113485 tp!495497))))

(declare-fun b!1739681 () Bool)

(declare-fun Unit!33156 () Unit!33143)

(assert (=> b!1739681 (= e!1113471 Unit!33156)))

(declare-fun lt!670467 () Unit!33143)

(declare-fun lemmaMaxPrefixOutputsMaxPrefix!200 (LexerInterface!3032 List!19183 Rule!6606 List!19182 List!19182 List!19182 Rule!6606) Unit!33143)

(assert (=> b!1739681 (= lt!670467 (lemmaMaxPrefixOutputsMaxPrefix!200 thiss!24550 rules!3447 (rule!5401 (_1!10785 lt!670497)) lt!670501 lt!670463 lt!670489 rule!422))))

(assert (=> b!1739681 false))

(declare-fun b!1739682 () Bool)

(declare-fun res!781999 () Bool)

(assert (=> b!1739682 (=> res!781999 e!1113461)))

(assert (=> b!1739682 (= res!781999 (not (matchR!2205 (regex!3403 (rule!5401 (_1!10785 lt!670497))) lt!670501)))))

(declare-fun res!781978 () Bool)

(assert (=> start!171154 (=> (not res!781978) (not e!1113482))))

(get-info :version)

(assert (=> start!171154 (= res!781978 ((_ is Lexer!3030) thiss!24550))))

(assert (=> start!171154 e!1113482))

(assert (=> start!171154 e!1113468))

(assert (=> start!171154 e!1113491))

(assert (=> start!171154 true))

(declare-fun inv!24768 (Token!6372) Bool)

(assert (=> start!171154 (and (inv!24768 token!523) e!1113460)))

(assert (=> start!171154 e!1113475))

(declare-fun b!1739683 () Bool)

(assert (=> b!1739683 (= e!1113470 e!1113483)))

(declare-fun res!781996 () Bool)

(assert (=> b!1739683 (=> (not res!781996) (not e!1113483))))

(assert (=> b!1739683 (= res!781996 (matchR!2205 (regex!3403 lt!670493) (list!7728 (charsOf!2052 (_1!10785 lt!670497)))))))

(declare-fun get!5750 (Option!3831) Rule!6606)

(assert (=> b!1739683 (= lt!670493 (get!5750 lt!670480))))

(declare-fun b!1739684 () Bool)

(declare-fun res!781984 () Bool)

(assert (=> b!1739684 (=> (not res!781984) (not e!1113482))))

(declare-fun isEmpty!12030 (List!19183) Bool)

(assert (=> b!1739684 (= res!781984 (not (isEmpty!12030 rules!3447)))))

(declare-fun b!1739685 () Bool)

(declare-fun tp!495500 () Bool)

(assert (=> b!1739685 (= e!1113463 (and tp!495500 (inv!24762 (tag!3739 (h!24514 rules!3447))) (inv!24767 (transformation!3403 (h!24514 rules!3447))) e!1113466))))

(declare-fun b!1739686 () Bool)

(assert (=> b!1739686 (= e!1113478 e!1113459)))

(declare-fun res!781997 () Bool)

(assert (=> b!1739686 (=> res!781997 e!1113459)))

(declare-fun lt!670509 () TokenValue!3493)

(assert (=> b!1739686 (= res!781997 (not (= lt!670461 (Some!3829 (tuple2!18767 (Token!6373 lt!670509 (rule!5401 (_1!10785 lt!670497)) lt!670484 lt!670501) (_2!10785 lt!670497))))))))

(declare-fun size!15194 (BalanceConc!12658) Int)

(assert (=> b!1739686 (= lt!670484 (size!15194 lt!670465))))

(assert (=> b!1739686 (= lt!670509 (apply!5208 (transformation!3403 (rule!5401 (_1!10785 lt!670497))) lt!670465))))

(declare-fun lt!670464 () Unit!33143)

(declare-fun lemmaCharactersSize!475 (Token!6372) Unit!33143)

(assert (=> b!1739686 (= lt!670464 (lemmaCharactersSize!475 (_1!10785 lt!670497)))))

(declare-fun lt!670503 () Unit!33143)

(declare-fun lemmaEqSameImage!328 (TokenValueInjection!6646 BalanceConc!12658 BalanceConc!12658) Unit!33143)

(assert (=> b!1739686 (= lt!670503 (lemmaEqSameImage!328 (transformation!3403 (rule!5401 (_1!10785 lt!670497))) lt!670465 (seqFromList!2377 (originalCharacters!4217 (_1!10785 lt!670497)))))))

(declare-fun b!1739687 () Bool)

(assert (=> b!1739687 (= e!1113481 e!1113465)))

(declare-fun res!782001 () Bool)

(assert (=> b!1739687 (=> res!782001 e!1113465)))

(declare-fun lt!670504 () Bool)

(assert (=> b!1739687 (= res!782001 lt!670504)))

(declare-fun lt!670483 () Unit!33143)

(assert (=> b!1739687 (= lt!670483 e!1113479)))

(declare-fun c!283867 () Bool)

(assert (=> b!1739687 (= c!283867 lt!670504)))

(assert (=> b!1739687 (= lt!670504 (> lt!670484 lt!670500))))

(assert (=> b!1739687 (= lt!670500 (size!15194 lt!670505))))

(assert (=> b!1739687 (matchR!2205 lt!670481 lt!670489)))

(declare-fun lt!670476 () Unit!33143)

(assert (=> b!1739687 (= lt!670476 (lemmaMaxPrefixThenMatchesRulesRegex!152 thiss!24550 rules!3447 lt!670489 token!523 rule!422 Nil!19112))))

(assert (= (and start!171154 res!781978) b!1739684))

(assert (= (and b!1739684 res!781984) b!1739660))

(assert (= (and b!1739660 res!781998) b!1739663))

(assert (= (and b!1739663 res!782000) b!1739668))

(assert (= (and b!1739668 res!781994) b!1739667))

(assert (= (and b!1739667 res!781981) b!1739652))

(assert (= (and b!1739652 res!781988) b!1739657))

(assert (= (and b!1739657 res!781993) b!1739654))

(assert (= (and b!1739654 (not res!782002)) b!1739658))

(assert (= (and b!1739658 (not res!781992)) b!1739656))

(assert (= (and b!1739656 (not res!781989)) b!1739662))

(assert (= (and b!1739662 res!781986) b!1739683))

(assert (= (and b!1739683 res!781996) b!1739665))

(assert (= (and b!1739662 (not res!781987)) b!1739682))

(assert (= (and b!1739682 (not res!781999)) b!1739646))

(assert (= (and b!1739646 (not res!781983)) b!1739675))

(assert (= (and b!1739675 (not res!781979)) b!1739674))

(assert (= (and b!1739674 (not res!781995)) b!1739686))

(assert (= (and b!1739686 (not res!781997)) b!1739647))

(assert (= (and b!1739647 (not res!781982)) b!1739687))

(assert (= (and b!1739687 c!283867) b!1739645))

(assert (= (and b!1739687 (not c!283867)) b!1739661))

(assert (= (and b!1739687 (not res!782001)) b!1739678))

(assert (= (and b!1739678 c!283862) b!1739681))

(assert (= (and b!1739678 (not c!283862)) b!1739659))

(assert (= (and b!1739678 (not res!781990)) b!1739664))

(assert (= (and b!1739664 c!283866) b!1739651))

(assert (= (and b!1739664 (not c!283866)) b!1739648))

(assert (= (and b!1739651 c!283863) b!1739643))

(assert (= (and b!1739651 (not c!283863)) b!1739650))

(assert (= (and b!1739643 res!781980) b!1739670))

(assert (= (and b!1739651 c!283865) b!1739673))

(assert (= (and b!1739651 (not c!283865)) b!1739676))

(assert (= (and b!1739673 res!781985) b!1739679))

(assert (= (and b!1739651 c!283864) b!1739671))

(assert (= (and b!1739651 (not c!283864)) b!1739655))

(assert (= (and b!1739664 (not res!781991)) b!1739672))

(assert (= (and start!171154 ((_ is Cons!19112) suffix!1421)) b!1739666))

(assert (= b!1739653 b!1739642))

(assert (= start!171154 b!1739653))

(assert (= b!1739649 b!1739644))

(assert (= b!1739680 b!1739649))

(assert (= start!171154 b!1739680))

(assert (= b!1739685 b!1739669))

(assert (= b!1739677 b!1739685))

(assert (= (and start!171154 ((_ is Cons!19113) rules!3447)) b!1739677))

(declare-fun b_lambda!55703 () Bool)

(assert (=> (not b_lambda!55703) (not b!1739674)))

(declare-fun tb!103989 () Bool)

(declare-fun t!161735 () Bool)

(assert (=> (and b!1739642 (= (toChars!4769 (transformation!3403 rule!422)) (toChars!4769 (transformation!3403 (rule!5401 (_1!10785 lt!670497))))) t!161735) tb!103989))

(declare-fun b!1739703 () Bool)

(declare-fun e!1113504 () Bool)

(declare-fun tp!495503 () Bool)

(declare-fun inv!24769 (Conc!6357) Bool)

(assert (=> b!1739703 (= e!1113504 (and (inv!24769 (c!283869 (dynLambda!9031 (toChars!4769 (transformation!3403 (rule!5401 (_1!10785 lt!670497)))) (value!106658 (_1!10785 lt!670497))))) tp!495503))))

(declare-fun result!125064 () Bool)

(declare-fun inv!24770 (BalanceConc!12658) Bool)

(assert (=> tb!103989 (= result!125064 (and (inv!24770 (dynLambda!9031 (toChars!4769 (transformation!3403 (rule!5401 (_1!10785 lt!670497)))) (value!106658 (_1!10785 lt!670497)))) e!1113504))))

(assert (= tb!103989 b!1739703))

(declare-fun m!2150255 () Bool)

(assert (=> b!1739703 m!2150255))

(declare-fun m!2150257 () Bool)

(assert (=> tb!103989 m!2150257))

(assert (=> b!1739674 t!161735))

(declare-fun b_and!129199 () Bool)

(assert (= b_and!129189 (and (=> t!161735 result!125064) b_and!129199)))

(declare-fun tb!103991 () Bool)

(declare-fun t!161737 () Bool)

(assert (=> (and b!1739644 (= (toChars!4769 (transformation!3403 (rule!5401 token!523))) (toChars!4769 (transformation!3403 (rule!5401 (_1!10785 lt!670497))))) t!161737) tb!103991))

(declare-fun result!125068 () Bool)

(assert (= result!125068 result!125064))

(assert (=> b!1739674 t!161737))

(declare-fun b_and!129201 () Bool)

(assert (= b_and!129193 (and (=> t!161737 result!125068) b_and!129201)))

(declare-fun tb!103993 () Bool)

(declare-fun t!161739 () Bool)

(assert (=> (and b!1739669 (= (toChars!4769 (transformation!3403 (h!24514 rules!3447))) (toChars!4769 (transformation!3403 (rule!5401 (_1!10785 lt!670497))))) t!161739) tb!103993))

(declare-fun result!125070 () Bool)

(assert (= result!125070 result!125064))

(assert (=> b!1739674 t!161739))

(declare-fun b_and!129203 () Bool)

(assert (= b_and!129197 (and (=> t!161739 result!125070) b_and!129203)))

(declare-fun b_lambda!55705 () Bool)

(assert (=> (not b_lambda!55705) (not b!1739675)))

(declare-fun t!161741 () Bool)

(declare-fun tb!103995 () Bool)

(assert (=> (and b!1739642 (= (toChars!4769 (transformation!3403 rule!422)) (toChars!4769 (transformation!3403 (rule!5401 (_1!10785 lt!670497))))) t!161741) tb!103995))

(declare-fun b!1739704 () Bool)

(declare-fun tp!495504 () Bool)

(declare-fun e!1113505 () Bool)

(assert (=> b!1739704 (= e!1113505 (and (inv!24769 (c!283869 (dynLambda!9031 (toChars!4769 (transformation!3403 (rule!5401 (_1!10785 lt!670497)))) (dynLambda!9032 (toValue!4910 (transformation!3403 (rule!5401 (_1!10785 lt!670497)))) lt!670465)))) tp!495504))))

(declare-fun result!125072 () Bool)

(assert (=> tb!103995 (= result!125072 (and (inv!24770 (dynLambda!9031 (toChars!4769 (transformation!3403 (rule!5401 (_1!10785 lt!670497)))) (dynLambda!9032 (toValue!4910 (transformation!3403 (rule!5401 (_1!10785 lt!670497)))) lt!670465))) e!1113505))))

(assert (= tb!103995 b!1739704))

(declare-fun m!2150259 () Bool)

(assert (=> b!1739704 m!2150259))

(declare-fun m!2150261 () Bool)

(assert (=> tb!103995 m!2150261))

(assert (=> b!1739675 t!161741))

(declare-fun b_and!129205 () Bool)

(assert (= b_and!129199 (and (=> t!161741 result!125072) b_and!129205)))

(declare-fun t!161743 () Bool)

(declare-fun tb!103997 () Bool)

(assert (=> (and b!1739644 (= (toChars!4769 (transformation!3403 (rule!5401 token!523))) (toChars!4769 (transformation!3403 (rule!5401 (_1!10785 lt!670497))))) t!161743) tb!103997))

(declare-fun result!125074 () Bool)

(assert (= result!125074 result!125072))

(assert (=> b!1739675 t!161743))

(declare-fun b_and!129207 () Bool)

(assert (= b_and!129201 (and (=> t!161743 result!125074) b_and!129207)))

(declare-fun t!161745 () Bool)

(declare-fun tb!103999 () Bool)

(assert (=> (and b!1739669 (= (toChars!4769 (transformation!3403 (h!24514 rules!3447))) (toChars!4769 (transformation!3403 (rule!5401 (_1!10785 lt!670497))))) t!161745) tb!103999))

(declare-fun result!125076 () Bool)

(assert (= result!125076 result!125072))

(assert (=> b!1739675 t!161745))

(declare-fun b_and!129209 () Bool)

(assert (= b_and!129203 (and (=> t!161745 result!125076) b_and!129209)))

(declare-fun b_lambda!55707 () Bool)

(assert (=> (not b_lambda!55707) (not b!1739675)))

(declare-fun tb!104001 () Bool)

(declare-fun t!161747 () Bool)

(assert (=> (and b!1739642 (= (toValue!4910 (transformation!3403 rule!422)) (toValue!4910 (transformation!3403 (rule!5401 (_1!10785 lt!670497))))) t!161747) tb!104001))

(declare-fun result!125078 () Bool)

(assert (=> tb!104001 (= result!125078 (inv!21 (dynLambda!9032 (toValue!4910 (transformation!3403 (rule!5401 (_1!10785 lt!670497)))) lt!670465)))))

(declare-fun m!2150263 () Bool)

(assert (=> tb!104001 m!2150263))

(assert (=> b!1739675 t!161747))

(declare-fun b_and!129211 () Bool)

(assert (= b_and!129187 (and (=> t!161747 result!125078) b_and!129211)))

(declare-fun t!161749 () Bool)

(declare-fun tb!104003 () Bool)

(assert (=> (and b!1739644 (= (toValue!4910 (transformation!3403 (rule!5401 token!523))) (toValue!4910 (transformation!3403 (rule!5401 (_1!10785 lt!670497))))) t!161749) tb!104003))

(declare-fun result!125082 () Bool)

(assert (= result!125082 result!125078))

(assert (=> b!1739675 t!161749))

(declare-fun b_and!129213 () Bool)

(assert (= b_and!129191 (and (=> t!161749 result!125082) b_and!129213)))

(declare-fun t!161751 () Bool)

(declare-fun tb!104005 () Bool)

(assert (=> (and b!1739669 (= (toValue!4910 (transformation!3403 (h!24514 rules!3447))) (toValue!4910 (transformation!3403 (rule!5401 (_1!10785 lt!670497))))) t!161751) tb!104005))

(declare-fun result!125084 () Bool)

(assert (= result!125084 result!125078))

(assert (=> b!1739675 t!161751))

(declare-fun b_and!129215 () Bool)

(assert (= b_and!129195 (and (=> t!161751 result!125084) b_and!129215)))

(declare-fun m!2150265 () Bool)

(assert (=> b!1739675 m!2150265))

(assert (=> b!1739675 m!2150265))

(declare-fun m!2150267 () Bool)

(assert (=> b!1739675 m!2150267))

(assert (=> b!1739675 m!2150267))

(declare-fun m!2150269 () Bool)

(assert (=> b!1739675 m!2150269))

(declare-fun m!2150271 () Bool)

(assert (=> b!1739675 m!2150271))

(declare-fun m!2150273 () Bool)

(assert (=> b!1739687 m!2150273))

(declare-fun m!2150275 () Bool)

(assert (=> b!1739687 m!2150275))

(declare-fun m!2150277 () Bool)

(assert (=> b!1739687 m!2150277))

(declare-fun m!2150279 () Bool)

(assert (=> b!1739671 m!2150279))

(declare-fun m!2150281 () Bool)

(assert (=> b!1739674 m!2150281))

(declare-fun m!2150283 () Bool)

(assert (=> b!1739653 m!2150283))

(declare-fun m!2150285 () Bool)

(assert (=> b!1739653 m!2150285))

(declare-fun m!2150287 () Bool)

(assert (=> b!1739681 m!2150287))

(declare-fun m!2150289 () Bool)

(assert (=> b!1739645 m!2150289))

(declare-fun m!2150291 () Bool)

(assert (=> b!1739645 m!2150291))

(declare-fun m!2150293 () Bool)

(assert (=> b!1739645 m!2150293))

(declare-fun m!2150295 () Bool)

(assert (=> b!1739645 m!2150295))

(declare-fun m!2150297 () Bool)

(assert (=> b!1739645 m!2150297))

(declare-fun m!2150299 () Bool)

(assert (=> b!1739645 m!2150299))

(declare-fun m!2150301 () Bool)

(assert (=> b!1739645 m!2150301))

(declare-fun m!2150303 () Bool)

(assert (=> b!1739645 m!2150303))

(declare-fun m!2150305 () Bool)

(assert (=> b!1739645 m!2150305))

(declare-fun m!2150307 () Bool)

(assert (=> b!1739645 m!2150307))

(assert (=> b!1739645 m!2150291))

(declare-fun m!2150309 () Bool)

(assert (=> b!1739645 m!2150309))

(declare-fun m!2150311 () Bool)

(assert (=> b!1739647 m!2150311))

(declare-fun m!2150313 () Bool)

(assert (=> b!1739647 m!2150313))

(declare-fun m!2150315 () Bool)

(assert (=> b!1739647 m!2150315))

(declare-fun m!2150317 () Bool)

(assert (=> b!1739647 m!2150317))

(declare-fun m!2150319 () Bool)

(assert (=> b!1739647 m!2150319))

(declare-fun m!2150321 () Bool)

(assert (=> b!1739647 m!2150321))

(assert (=> b!1739647 m!2150321))

(declare-fun m!2150323 () Bool)

(assert (=> b!1739647 m!2150323))

(declare-fun m!2150325 () Bool)

(assert (=> start!171154 m!2150325))

(declare-fun m!2150327 () Bool)

(assert (=> b!1739643 m!2150327))

(declare-fun m!2150329 () Bool)

(assert (=> b!1739643 m!2150329))

(declare-fun m!2150331 () Bool)

(assert (=> b!1739664 m!2150331))

(declare-fun m!2150333 () Bool)

(assert (=> b!1739664 m!2150333))

(declare-fun m!2150335 () Bool)

(assert (=> b!1739652 m!2150335))

(declare-fun m!2150337 () Bool)

(assert (=> b!1739680 m!2150337))

(declare-fun m!2150339 () Bool)

(assert (=> b!1739684 m!2150339))

(declare-fun m!2150341 () Bool)

(assert (=> b!1739663 m!2150341))

(declare-fun m!2150343 () Bool)

(assert (=> b!1739658 m!2150343))

(declare-fun m!2150345 () Bool)

(assert (=> b!1739668 m!2150345))

(declare-fun m!2150347 () Bool)

(assert (=> b!1739668 m!2150347))

(declare-fun m!2150349 () Bool)

(assert (=> b!1739668 m!2150349))

(declare-fun m!2150351 () Bool)

(assert (=> b!1739668 m!2150351))

(declare-fun m!2150353 () Bool)

(assert (=> b!1739654 m!2150353))

(declare-fun m!2150355 () Bool)

(assert (=> b!1739654 m!2150355))

(declare-fun m!2150357 () Bool)

(assert (=> b!1739654 m!2150357))

(declare-fun m!2150359 () Bool)

(assert (=> b!1739685 m!2150359))

(declare-fun m!2150361 () Bool)

(assert (=> b!1739685 m!2150361))

(declare-fun m!2150363 () Bool)

(assert (=> b!1739649 m!2150363))

(declare-fun m!2150365 () Bool)

(assert (=> b!1739649 m!2150365))

(declare-fun m!2150367 () Bool)

(assert (=> b!1739656 m!2150367))

(declare-fun m!2150369 () Bool)

(assert (=> b!1739656 m!2150369))

(declare-fun m!2150371 () Bool)

(assert (=> b!1739656 m!2150371))

(declare-fun m!2150373 () Bool)

(assert (=> b!1739656 m!2150373))

(declare-fun m!2150375 () Bool)

(assert (=> b!1739683 m!2150375))

(assert (=> b!1739683 m!2150375))

(declare-fun m!2150377 () Bool)

(assert (=> b!1739683 m!2150377))

(assert (=> b!1739683 m!2150377))

(declare-fun m!2150379 () Bool)

(assert (=> b!1739683 m!2150379))

(declare-fun m!2150381 () Bool)

(assert (=> b!1739683 m!2150381))

(declare-fun m!2150383 () Bool)

(assert (=> b!1739646 m!2150383))

(declare-fun m!2150385 () Bool)

(assert (=> b!1739646 m!2150385))

(declare-fun m!2150387 () Bool)

(assert (=> b!1739686 m!2150387))

(declare-fun m!2150389 () Bool)

(assert (=> b!1739686 m!2150389))

(assert (=> b!1739686 m!2150387))

(declare-fun m!2150391 () Bool)

(assert (=> b!1739686 m!2150391))

(declare-fun m!2150393 () Bool)

(assert (=> b!1739686 m!2150393))

(declare-fun m!2150395 () Bool)

(assert (=> b!1739686 m!2150395))

(declare-fun m!2150397 () Bool)

(assert (=> b!1739651 m!2150397))

(declare-fun m!2150399 () Bool)

(assert (=> b!1739651 m!2150399))

(declare-fun m!2150401 () Bool)

(assert (=> b!1739662 m!2150401))

(declare-fun m!2150403 () Bool)

(assert (=> b!1739662 m!2150403))

(declare-fun m!2150405 () Bool)

(assert (=> b!1739662 m!2150405))

(declare-fun m!2150407 () Bool)

(assert (=> b!1739662 m!2150407))

(declare-fun m!2150409 () Bool)

(assert (=> b!1739662 m!2150409))

(declare-fun m!2150411 () Bool)

(assert (=> b!1739662 m!2150411))

(declare-fun m!2150413 () Bool)

(assert (=> b!1739662 m!2150413))

(declare-fun m!2150415 () Bool)

(assert (=> b!1739662 m!2150415))

(declare-fun m!2150417 () Bool)

(assert (=> b!1739662 m!2150417))

(assert (=> b!1739662 m!2150375))

(declare-fun m!2150419 () Bool)

(assert (=> b!1739662 m!2150419))

(declare-fun m!2150421 () Bool)

(assert (=> b!1739662 m!2150421))

(declare-fun m!2150423 () Bool)

(assert (=> b!1739662 m!2150423))

(assert (=> b!1739662 m!2150413))

(declare-fun m!2150425 () Bool)

(assert (=> b!1739662 m!2150425))

(declare-fun m!2150427 () Bool)

(assert (=> b!1739662 m!2150427))

(declare-fun m!2150429 () Bool)

(assert (=> b!1739660 m!2150429))

(declare-fun m!2150431 () Bool)

(assert (=> b!1739672 m!2150431))

(declare-fun m!2150433 () Bool)

(assert (=> b!1739673 m!2150433))

(declare-fun m!2150435 () Bool)

(assert (=> b!1739673 m!2150435))

(declare-fun m!2150437 () Bool)

(assert (=> b!1739682 m!2150437))

(declare-fun m!2150439 () Bool)

(assert (=> b!1739667 m!2150439))

(check-sat (not b!1739652) (not b!1739654) (not b!1739704) (not b!1739668) (not b!1739677) (not b_next!48517) (not b!1739680) (not b!1739646) (not b!1739653) (not b_next!48513) (not b!1739675) (not b!1739647) (not b_next!48515) b_and!129207 tp_is_empty!7705 (not b_lambda!55703) (not b!1739681) (not b!1739703) (not b!1739664) (not b!1739685) (not b!1739671) (not b!1739687) (not b!1739662) (not b!1739649) (not start!171154) (not b_next!48511) (not b!1739672) b_and!129213 (not tb!103995) (not b!1739682) (not b!1739686) (not b!1739651) (not b!1739684) (not b_next!48509) b_and!129205 (not b_next!48507) (not b!1739643) (not b!1739656) (not b!1739667) b_and!129215 (not b_lambda!55707) (not b!1739673) b_and!129209 (not b_lambda!55705) (not b!1739658) (not tb!104001) (not tb!103989) b_and!129211 (not b!1739683) (not b!1739645) (not b!1739660) (not b!1739663) (not b!1739666))
(check-sat b_and!129207 (not b_next!48511) b_and!129213 (not b_next!48517) b_and!129215 b_and!129209 b_and!129211 (not b_next!48513) (not b_next!48515) (not b_next!48509) b_and!129205 (not b_next!48507))
(get-model)

(declare-fun d!531596 () Bool)

(assert (=> d!531596 (= (isEmpty!12030 rules!3447) ((_ is Nil!19113) rules!3447))))

(assert (=> b!1739684 d!531596))

(declare-fun b!1739735 () Bool)

(declare-fun res!782025 () Bool)

(declare-fun e!1113523 () Bool)

(assert (=> b!1739735 (=> res!782025 e!1113523)))

(declare-fun e!1113524 () Bool)

(assert (=> b!1739735 (= res!782025 e!1113524)))

(declare-fun res!782021 () Bool)

(assert (=> b!1739735 (=> (not res!782021) (not e!1113524))))

(declare-fun lt!670517 () Bool)

(assert (=> b!1739735 (= res!782021 lt!670517)))

(declare-fun b!1739737 () Bool)

(declare-fun e!1113528 () Bool)

(declare-fun call!110041 () Bool)

(assert (=> b!1739737 (= e!1113528 (= lt!670517 call!110041))))

(declare-fun b!1739738 () Bool)

(assert (=> b!1739738 (= e!1113524 (= (head!3982 (list!7728 (charsOf!2052 (_1!10785 lt!670497)))) (c!283868 (regex!3403 lt!670493))))))

(declare-fun b!1739739 () Bool)

(declare-fun e!1113526 () Bool)

(declare-fun derivativeStep!1199 (Regex!4731 C!9636) Regex!4731)

(declare-fun tail!2596 (List!19182) List!19182)

(assert (=> b!1739739 (= e!1113526 (matchR!2205 (derivativeStep!1199 (regex!3403 lt!670493) (head!3982 (list!7728 (charsOf!2052 (_1!10785 lt!670497))))) (tail!2596 (list!7728 (charsOf!2052 (_1!10785 lt!670497))))))))

(declare-fun b!1739740 () Bool)

(declare-fun res!782019 () Bool)

(assert (=> b!1739740 (=> (not res!782019) (not e!1113524))))

(assert (=> b!1739740 (= res!782019 (isEmpty!12029 (tail!2596 (list!7728 (charsOf!2052 (_1!10785 lt!670497))))))))

(declare-fun b!1739741 () Bool)

(declare-fun e!1113529 () Bool)

(assert (=> b!1739741 (= e!1113523 e!1113529)))

(declare-fun res!782022 () Bool)

(assert (=> b!1739741 (=> (not res!782022) (not e!1113529))))

(assert (=> b!1739741 (= res!782022 (not lt!670517))))

(declare-fun b!1739742 () Bool)

(declare-fun e!1113527 () Bool)

(assert (=> b!1739742 (= e!1113528 e!1113527)))

(declare-fun c!283877 () Bool)

(assert (=> b!1739742 (= c!283877 ((_ is EmptyLang!4731) (regex!3403 lt!670493)))))

(declare-fun bm!110036 () Bool)

(assert (=> bm!110036 (= call!110041 (isEmpty!12029 (list!7728 (charsOf!2052 (_1!10785 lt!670497)))))))

(declare-fun b!1739743 () Bool)

(assert (=> b!1739743 (= e!1113527 (not lt!670517))))

(declare-fun b!1739744 () Bool)

(declare-fun e!1113525 () Bool)

(assert (=> b!1739744 (= e!1113525 (not (= (head!3982 (list!7728 (charsOf!2052 (_1!10785 lt!670497)))) (c!283868 (regex!3403 lt!670493)))))))

(declare-fun d!531598 () Bool)

(assert (=> d!531598 e!1113528))

(declare-fun c!283876 () Bool)

(assert (=> d!531598 (= c!283876 ((_ is EmptyExpr!4731) (regex!3403 lt!670493)))))

(assert (=> d!531598 (= lt!670517 e!1113526)))

(declare-fun c!283878 () Bool)

(assert (=> d!531598 (= c!283878 (isEmpty!12029 (list!7728 (charsOf!2052 (_1!10785 lt!670497)))))))

(declare-fun validRegex!1905 (Regex!4731) Bool)

(assert (=> d!531598 (validRegex!1905 (regex!3403 lt!670493))))

(assert (=> d!531598 (= (matchR!2205 (regex!3403 lt!670493) (list!7728 (charsOf!2052 (_1!10785 lt!670497)))) lt!670517)))

(declare-fun b!1739736 () Bool)

(declare-fun res!782023 () Bool)

(assert (=> b!1739736 (=> res!782023 e!1113523)))

(assert (=> b!1739736 (= res!782023 (not ((_ is ElementMatch!4731) (regex!3403 lt!670493))))))

(assert (=> b!1739736 (= e!1113527 e!1113523)))

(declare-fun b!1739745 () Bool)

(declare-fun nullable!1431 (Regex!4731) Bool)

(assert (=> b!1739745 (= e!1113526 (nullable!1431 (regex!3403 lt!670493)))))

(declare-fun b!1739746 () Bool)

(assert (=> b!1739746 (= e!1113529 e!1113525)))

(declare-fun res!782026 () Bool)

(assert (=> b!1739746 (=> res!782026 e!1113525)))

(assert (=> b!1739746 (= res!782026 call!110041)))

(declare-fun b!1739747 () Bool)

(declare-fun res!782024 () Bool)

(assert (=> b!1739747 (=> res!782024 e!1113525)))

(assert (=> b!1739747 (= res!782024 (not (isEmpty!12029 (tail!2596 (list!7728 (charsOf!2052 (_1!10785 lt!670497)))))))))

(declare-fun b!1739748 () Bool)

(declare-fun res!782020 () Bool)

(assert (=> b!1739748 (=> (not res!782020) (not e!1113524))))

(assert (=> b!1739748 (= res!782020 (not call!110041))))

(assert (= (and d!531598 c!283878) b!1739745))

(assert (= (and d!531598 (not c!283878)) b!1739739))

(assert (= (and d!531598 c!283876) b!1739737))

(assert (= (and d!531598 (not c!283876)) b!1739742))

(assert (= (and b!1739742 c!283877) b!1739743))

(assert (= (and b!1739742 (not c!283877)) b!1739736))

(assert (= (and b!1739736 (not res!782023)) b!1739735))

(assert (= (and b!1739735 res!782021) b!1739748))

(assert (= (and b!1739748 res!782020) b!1739740))

(assert (= (and b!1739740 res!782019) b!1739738))

(assert (= (and b!1739735 (not res!782025)) b!1739741))

(assert (= (and b!1739741 res!782022) b!1739746))

(assert (= (and b!1739746 (not res!782026)) b!1739747))

(assert (= (and b!1739747 (not res!782024)) b!1739744))

(assert (= (or b!1739737 b!1739746 b!1739748) bm!110036))

(declare-fun m!2150441 () Bool)

(assert (=> b!1739745 m!2150441))

(assert (=> b!1739744 m!2150377))

(declare-fun m!2150443 () Bool)

(assert (=> b!1739744 m!2150443))

(assert (=> b!1739740 m!2150377))

(declare-fun m!2150445 () Bool)

(assert (=> b!1739740 m!2150445))

(assert (=> b!1739740 m!2150445))

(declare-fun m!2150447 () Bool)

(assert (=> b!1739740 m!2150447))

(assert (=> d!531598 m!2150377))

(declare-fun m!2150449 () Bool)

(assert (=> d!531598 m!2150449))

(declare-fun m!2150451 () Bool)

(assert (=> d!531598 m!2150451))

(assert (=> b!1739747 m!2150377))

(assert (=> b!1739747 m!2150445))

(assert (=> b!1739747 m!2150445))

(assert (=> b!1739747 m!2150447))

(assert (=> b!1739738 m!2150377))

(assert (=> b!1739738 m!2150443))

(assert (=> b!1739739 m!2150377))

(assert (=> b!1739739 m!2150443))

(assert (=> b!1739739 m!2150443))

(declare-fun m!2150453 () Bool)

(assert (=> b!1739739 m!2150453))

(assert (=> b!1739739 m!2150377))

(assert (=> b!1739739 m!2150445))

(assert (=> b!1739739 m!2150453))

(assert (=> b!1739739 m!2150445))

(declare-fun m!2150455 () Bool)

(assert (=> b!1739739 m!2150455))

(assert (=> bm!110036 m!2150377))

(assert (=> bm!110036 m!2150449))

(assert (=> b!1739683 d!531598))

(declare-fun d!531600 () Bool)

(declare-fun list!7729 (Conc!6357) List!19182)

(assert (=> d!531600 (= (list!7728 (charsOf!2052 (_1!10785 lt!670497))) (list!7729 (c!283869 (charsOf!2052 (_1!10785 lt!670497)))))))

(declare-fun bs!402940 () Bool)

(assert (= bs!402940 d!531600))

(declare-fun m!2150457 () Bool)

(assert (=> bs!402940 m!2150457))

(assert (=> b!1739683 d!531600))

(declare-fun d!531602 () Bool)

(declare-fun lt!670520 () BalanceConc!12658)

(assert (=> d!531602 (= (list!7728 lt!670520) (originalCharacters!4217 (_1!10785 lt!670497)))))

(assert (=> d!531602 (= lt!670520 (dynLambda!9031 (toChars!4769 (transformation!3403 (rule!5401 (_1!10785 lt!670497)))) (value!106658 (_1!10785 lt!670497))))))

(assert (=> d!531602 (= (charsOf!2052 (_1!10785 lt!670497)) lt!670520)))

(declare-fun b_lambda!55709 () Bool)

(assert (=> (not b_lambda!55709) (not d!531602)))

(assert (=> d!531602 t!161735))

(declare-fun b_and!129217 () Bool)

(assert (= b_and!129205 (and (=> t!161735 result!125064) b_and!129217)))

(assert (=> d!531602 t!161737))

(declare-fun b_and!129219 () Bool)

(assert (= b_and!129207 (and (=> t!161737 result!125068) b_and!129219)))

(assert (=> d!531602 t!161739))

(declare-fun b_and!129221 () Bool)

(assert (= b_and!129209 (and (=> t!161739 result!125070) b_and!129221)))

(declare-fun m!2150459 () Bool)

(assert (=> d!531602 m!2150459))

(assert (=> d!531602 m!2150281))

(assert (=> b!1739683 d!531602))

(declare-fun d!531604 () Bool)

(assert (=> d!531604 (= (get!5750 lt!670480) (v!25259 lt!670480))))

(assert (=> b!1739683 d!531604))

(declare-fun d!531606 () Bool)

(declare-fun e!1113539 () Bool)

(assert (=> d!531606 e!1113539))

(declare-fun res!782032 () Bool)

(assert (=> d!531606 (=> res!782032 e!1113539)))

(declare-fun lt!670527 () Option!3831)

(declare-fun isEmpty!12031 (Option!3831) Bool)

(assert (=> d!531606 (= res!782032 (isEmpty!12031 lt!670527))))

(declare-fun e!1113540 () Option!3831)

(assert (=> d!531606 (= lt!670527 e!1113540)))

(declare-fun c!283884 () Bool)

(assert (=> d!531606 (= c!283884 (and ((_ is Cons!19113) rules!3447) (= (tag!3739 (h!24514 rules!3447)) (tag!3739 (rule!5401 (_1!10785 lt!670497))))))))

(assert (=> d!531606 (rulesInvariant!2701 thiss!24550 rules!3447)))

(assert (=> d!531606 (= (getRuleFromTag!453 thiss!24550 rules!3447 (tag!3739 (rule!5401 (_1!10785 lt!670497)))) lt!670527)))

(declare-fun b!1739761 () Bool)

(declare-fun e!1113541 () Option!3831)

(assert (=> b!1739761 (= e!1113540 e!1113541)))

(declare-fun c!283883 () Bool)

(assert (=> b!1739761 (= c!283883 (and ((_ is Cons!19113) rules!3447) (not (= (tag!3739 (h!24514 rules!3447)) (tag!3739 (rule!5401 (_1!10785 lt!670497)))))))))

(declare-fun b!1739762 () Bool)

(assert (=> b!1739762 (= e!1113540 (Some!3830 (h!24514 rules!3447)))))

(declare-fun b!1739763 () Bool)

(declare-fun e!1113538 () Bool)

(assert (=> b!1739763 (= e!1113539 e!1113538)))

(declare-fun res!782031 () Bool)

(assert (=> b!1739763 (=> (not res!782031) (not e!1113538))))

(assert (=> b!1739763 (= res!782031 (contains!3425 rules!3447 (get!5750 lt!670527)))))

(declare-fun b!1739764 () Bool)

(assert (=> b!1739764 (= e!1113541 None!3830)))

(declare-fun b!1739765 () Bool)

(declare-fun lt!670529 () Unit!33143)

(declare-fun lt!670528 () Unit!33143)

(assert (=> b!1739765 (= lt!670529 lt!670528)))

(assert (=> b!1739765 (rulesInvariant!2701 thiss!24550 (t!161754 rules!3447))))

(declare-fun lemmaInvariantOnRulesThenOnTail!159 (LexerInterface!3032 Rule!6606 List!19183) Unit!33143)

(assert (=> b!1739765 (= lt!670528 (lemmaInvariantOnRulesThenOnTail!159 thiss!24550 (h!24514 rules!3447) (t!161754 rules!3447)))))

(assert (=> b!1739765 (= e!1113541 (getRuleFromTag!453 thiss!24550 (t!161754 rules!3447) (tag!3739 (rule!5401 (_1!10785 lt!670497)))))))

(declare-fun b!1739766 () Bool)

(assert (=> b!1739766 (= e!1113538 (= (tag!3739 (get!5750 lt!670527)) (tag!3739 (rule!5401 (_1!10785 lt!670497)))))))

(assert (= (and d!531606 c!283884) b!1739762))

(assert (= (and d!531606 (not c!283884)) b!1739761))

(assert (= (and b!1739761 c!283883) b!1739765))

(assert (= (and b!1739761 (not c!283883)) b!1739764))

(assert (= (and d!531606 (not res!782032)) b!1739763))

(assert (= (and b!1739763 res!782031) b!1739766))

(declare-fun m!2150461 () Bool)

(assert (=> d!531606 m!2150461))

(assert (=> d!531606 m!2150429))

(declare-fun m!2150463 () Bool)

(assert (=> b!1739763 m!2150463))

(assert (=> b!1739763 m!2150463))

(declare-fun m!2150465 () Bool)

(assert (=> b!1739763 m!2150465))

(declare-fun m!2150467 () Bool)

(assert (=> b!1739765 m!2150467))

(declare-fun m!2150469 () Bool)

(assert (=> b!1739765 m!2150469))

(declare-fun m!2150471 () Bool)

(assert (=> b!1739765 m!2150471))

(assert (=> b!1739766 m!2150463))

(assert (=> b!1739662 d!531606))

(assert (=> b!1739662 d!531602))

(declare-fun d!531608 () Bool)

(assert (=> d!531608 (isPrefix!1644 lt!670501 (++!5228 lt!670501 (_2!10785 lt!670497)))))

(declare-fun lt!670532 () Unit!33143)

(declare-fun choose!10690 (List!19182 List!19182) Unit!33143)

(assert (=> d!531608 (= lt!670532 (choose!10690 lt!670501 (_2!10785 lt!670497)))))

(assert (=> d!531608 (= (lemmaConcatTwoListThenFirstIsPrefix!1154 lt!670501 (_2!10785 lt!670497)) lt!670532)))

(declare-fun bs!402941 () Bool)

(assert (= bs!402941 d!531608))

(assert (=> bs!402941 m!2150413))

(assert (=> bs!402941 m!2150413))

(assert (=> bs!402941 m!2150425))

(declare-fun m!2150473 () Bool)

(assert (=> bs!402941 m!2150473))

(assert (=> b!1739662 d!531608))

(declare-fun b!1739776 () Bool)

(declare-fun e!1113546 () List!19182)

(assert (=> b!1739776 (= e!1113546 (Cons!19112 (h!24513 lt!670489) (++!5228 (t!161753 lt!670489) suffix!1421)))))

(declare-fun e!1113547 () Bool)

(declare-fun b!1739778 () Bool)

(declare-fun lt!670535 () List!19182)

(assert (=> b!1739778 (= e!1113547 (or (not (= suffix!1421 Nil!19112)) (= lt!670535 lt!670489)))))

(declare-fun b!1739777 () Bool)

(declare-fun res!782037 () Bool)

(assert (=> b!1739777 (=> (not res!782037) (not e!1113547))))

(assert (=> b!1739777 (= res!782037 (= (size!15193 lt!670535) (+ (size!15193 lt!670489) (size!15193 suffix!1421))))))

(declare-fun b!1739775 () Bool)

(assert (=> b!1739775 (= e!1113546 suffix!1421)))

(declare-fun d!531610 () Bool)

(assert (=> d!531610 e!1113547))

(declare-fun res!782038 () Bool)

(assert (=> d!531610 (=> (not res!782038) (not e!1113547))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!2737 (List!19182) (InoxSet C!9636))

(assert (=> d!531610 (= res!782038 (= (content!2737 lt!670535) ((_ map or) (content!2737 lt!670489) (content!2737 suffix!1421))))))

(assert (=> d!531610 (= lt!670535 e!1113546)))

(declare-fun c!283887 () Bool)

(assert (=> d!531610 (= c!283887 ((_ is Nil!19112) lt!670489))))

(assert (=> d!531610 (= (++!5228 lt!670489 suffix!1421) lt!670535)))

(assert (= (and d!531610 c!283887) b!1739775))

(assert (= (and d!531610 (not c!283887)) b!1739776))

(assert (= (and d!531610 res!782038) b!1739777))

(assert (= (and b!1739777 res!782037) b!1739778))

(declare-fun m!2150475 () Bool)

(assert (=> b!1739776 m!2150475))

(declare-fun m!2150477 () Bool)

(assert (=> b!1739777 m!2150477))

(declare-fun m!2150479 () Bool)

(assert (=> b!1739777 m!2150479))

(declare-fun m!2150481 () Bool)

(assert (=> b!1739777 m!2150481))

(declare-fun m!2150483 () Bool)

(assert (=> d!531610 m!2150483))

(declare-fun m!2150485 () Bool)

(assert (=> d!531610 m!2150485))

(declare-fun m!2150487 () Bool)

(assert (=> d!531610 m!2150487))

(assert (=> b!1739662 d!531610))

(declare-fun b!1739788 () Bool)

(declare-fun res!782049 () Bool)

(declare-fun e!1113554 () Bool)

(assert (=> b!1739788 (=> (not res!782049) (not e!1113554))))

(assert (=> b!1739788 (= res!782049 (= (head!3982 lt!670501) (head!3982 (++!5228 lt!670501 (_2!10785 lt!670497)))))))

(declare-fun b!1739790 () Bool)

(declare-fun e!1113555 () Bool)

(assert (=> b!1739790 (= e!1113555 (>= (size!15193 (++!5228 lt!670501 (_2!10785 lt!670497))) (size!15193 lt!670501)))))

(declare-fun b!1739789 () Bool)

(assert (=> b!1739789 (= e!1113554 (isPrefix!1644 (tail!2596 lt!670501) (tail!2596 (++!5228 lt!670501 (_2!10785 lt!670497)))))))

(declare-fun d!531612 () Bool)

(assert (=> d!531612 e!1113555))

(declare-fun res!782050 () Bool)

(assert (=> d!531612 (=> res!782050 e!1113555)))

(declare-fun lt!670538 () Bool)

(assert (=> d!531612 (= res!782050 (not lt!670538))))

(declare-fun e!1113556 () Bool)

(assert (=> d!531612 (= lt!670538 e!1113556)))

(declare-fun res!782048 () Bool)

(assert (=> d!531612 (=> res!782048 e!1113556)))

(assert (=> d!531612 (= res!782048 ((_ is Nil!19112) lt!670501))))

(assert (=> d!531612 (= (isPrefix!1644 lt!670501 (++!5228 lt!670501 (_2!10785 lt!670497))) lt!670538)))

(declare-fun b!1739787 () Bool)

(assert (=> b!1739787 (= e!1113556 e!1113554)))

(declare-fun res!782047 () Bool)

(assert (=> b!1739787 (=> (not res!782047) (not e!1113554))))

(assert (=> b!1739787 (= res!782047 (not ((_ is Nil!19112) (++!5228 lt!670501 (_2!10785 lt!670497)))))))

(assert (= (and d!531612 (not res!782048)) b!1739787))

(assert (= (and b!1739787 res!782047) b!1739788))

(assert (= (and b!1739788 res!782049) b!1739789))

(assert (= (and d!531612 (not res!782050)) b!1739790))

(declare-fun m!2150489 () Bool)

(assert (=> b!1739788 m!2150489))

(assert (=> b!1739788 m!2150413))

(declare-fun m!2150491 () Bool)

(assert (=> b!1739788 m!2150491))

(assert (=> b!1739790 m!2150413))

(declare-fun m!2150493 () Bool)

(assert (=> b!1739790 m!2150493))

(assert (=> b!1739790 m!2150317))

(declare-fun m!2150495 () Bool)

(assert (=> b!1739789 m!2150495))

(assert (=> b!1739789 m!2150413))

(declare-fun m!2150497 () Bool)

(assert (=> b!1739789 m!2150497))

(assert (=> b!1739789 m!2150495))

(assert (=> b!1739789 m!2150497))

(declare-fun m!2150499 () Bool)

(assert (=> b!1739789 m!2150499))

(assert (=> b!1739662 d!531612))

(declare-fun b!1739792 () Bool)

(declare-fun res!782053 () Bool)

(declare-fun e!1113557 () Bool)

(assert (=> b!1739792 (=> (not res!782053) (not e!1113557))))

(assert (=> b!1739792 (= res!782053 (= (head!3982 lt!670501) (head!3982 lt!670463)))))

(declare-fun b!1739794 () Bool)

(declare-fun e!1113558 () Bool)

(assert (=> b!1739794 (= e!1113558 (>= (size!15193 lt!670463) (size!15193 lt!670501)))))

(declare-fun b!1739793 () Bool)

(assert (=> b!1739793 (= e!1113557 (isPrefix!1644 (tail!2596 lt!670501) (tail!2596 lt!670463)))))

(declare-fun d!531614 () Bool)

(assert (=> d!531614 e!1113558))

(declare-fun res!782054 () Bool)

(assert (=> d!531614 (=> res!782054 e!1113558)))

(declare-fun lt!670539 () Bool)

(assert (=> d!531614 (= res!782054 (not lt!670539))))

(declare-fun e!1113559 () Bool)

(assert (=> d!531614 (= lt!670539 e!1113559)))

(declare-fun res!782052 () Bool)

(assert (=> d!531614 (=> res!782052 e!1113559)))

(assert (=> d!531614 (= res!782052 ((_ is Nil!19112) lt!670501))))

(assert (=> d!531614 (= (isPrefix!1644 lt!670501 lt!670463) lt!670539)))

(declare-fun b!1739791 () Bool)

(assert (=> b!1739791 (= e!1113559 e!1113557)))

(declare-fun res!782051 () Bool)

(assert (=> b!1739791 (=> (not res!782051) (not e!1113557))))

(assert (=> b!1739791 (= res!782051 (not ((_ is Nil!19112) lt!670463)))))

(assert (= (and d!531614 (not res!782052)) b!1739791))

(assert (= (and b!1739791 res!782051) b!1739792))

(assert (= (and b!1739792 res!782053) b!1739793))

(assert (= (and d!531614 (not res!782054)) b!1739794))

(assert (=> b!1739792 m!2150489))

(declare-fun m!2150501 () Bool)

(assert (=> b!1739792 m!2150501))

(declare-fun m!2150503 () Bool)

(assert (=> b!1739794 m!2150503))

(assert (=> b!1739794 m!2150317))

(assert (=> b!1739793 m!2150495))

(declare-fun m!2150505 () Bool)

(assert (=> b!1739793 m!2150505))

(assert (=> b!1739793 m!2150495))

(assert (=> b!1739793 m!2150505))

(declare-fun m!2150507 () Bool)

(assert (=> b!1739793 m!2150507))

(assert (=> b!1739662 d!531614))

(declare-fun b!1739817 () Bool)

(declare-fun res!782077 () Bool)

(declare-fun e!1113572 () Bool)

(assert (=> b!1739817 (=> (not res!782077) (not e!1113572))))

(declare-fun lt!670554 () Option!3830)

(assert (=> b!1739817 (= res!782077 (< (size!15193 (_2!10785 (get!5749 lt!670554))) (size!15193 lt!670463)))))

(declare-fun b!1739818 () Bool)

(declare-fun res!782078 () Bool)

(assert (=> b!1739818 (=> (not res!782078) (not e!1113572))))

(assert (=> b!1739818 (= res!782078 (= (++!5228 (list!7728 (charsOf!2052 (_1!10785 (get!5749 lt!670554)))) (_2!10785 (get!5749 lt!670554))) lt!670463))))

(declare-fun b!1739819 () Bool)

(declare-fun e!1113570 () Option!3830)

(declare-fun lt!670552 () Option!3830)

(declare-fun lt!670555 () Option!3830)

(assert (=> b!1739819 (= e!1113570 (ite (and ((_ is None!3829) lt!670552) ((_ is None!3829) lt!670555)) None!3829 (ite ((_ is None!3829) lt!670555) lt!670552 (ite ((_ is None!3829) lt!670552) lt!670555 (ite (>= (size!15192 (_1!10785 (v!25258 lt!670552))) (size!15192 (_1!10785 (v!25258 lt!670555)))) lt!670552 lt!670555)))))))

(declare-fun call!110044 () Option!3830)

(assert (=> b!1739819 (= lt!670552 call!110044)))

(assert (=> b!1739819 (= lt!670555 (maxPrefix!1586 thiss!24550 (t!161754 rules!3447) lt!670463))))

(declare-fun b!1739820 () Bool)

(declare-fun res!782075 () Bool)

(assert (=> b!1739820 (=> (not res!782075) (not e!1113572))))

(assert (=> b!1739820 (= res!782075 (matchR!2205 (regex!3403 (rule!5401 (_1!10785 (get!5749 lt!670554)))) (list!7728 (charsOf!2052 (_1!10785 (get!5749 lt!670554))))))))

(declare-fun b!1739821 () Bool)

(declare-fun res!782074 () Bool)

(assert (=> b!1739821 (=> (not res!782074) (not e!1113572))))

(assert (=> b!1739821 (= res!782074 (= (list!7728 (charsOf!2052 (_1!10785 (get!5749 lt!670554)))) (originalCharacters!4217 (_1!10785 (get!5749 lt!670554)))))))

(declare-fun d!531616 () Bool)

(declare-fun e!1113571 () Bool)

(assert (=> d!531616 e!1113571))

(declare-fun res!782079 () Bool)

(assert (=> d!531616 (=> res!782079 e!1113571)))

(declare-fun isEmpty!12032 (Option!3830) Bool)

(assert (=> d!531616 (= res!782079 (isEmpty!12032 lt!670554))))

(assert (=> d!531616 (= lt!670554 e!1113570)))

(declare-fun c!283890 () Bool)

(assert (=> d!531616 (= c!283890 (and ((_ is Cons!19113) rules!3447) ((_ is Nil!19113) (t!161754 rules!3447))))))

(declare-fun lt!670556 () Unit!33143)

(declare-fun lt!670553 () Unit!33143)

(assert (=> d!531616 (= lt!670556 lt!670553)))

(assert (=> d!531616 (isPrefix!1644 lt!670463 lt!670463)))

(declare-fun lemmaIsPrefixRefl!1096 (List!19182 List!19182) Unit!33143)

(assert (=> d!531616 (= lt!670553 (lemmaIsPrefixRefl!1096 lt!670463 lt!670463))))

(assert (=> d!531616 (rulesValidInductive!1132 thiss!24550 rules!3447)))

(assert (=> d!531616 (= (maxPrefix!1586 thiss!24550 rules!3447 lt!670463) lt!670554)))

(declare-fun b!1739822 () Bool)

(assert (=> b!1739822 (= e!1113572 (contains!3425 rules!3447 (rule!5401 (_1!10785 (get!5749 lt!670554)))))))

(declare-fun b!1739823 () Bool)

(assert (=> b!1739823 (= e!1113571 e!1113572)))

(declare-fun res!782073 () Bool)

(assert (=> b!1739823 (=> (not res!782073) (not e!1113572))))

(assert (=> b!1739823 (= res!782073 (isDefined!3174 lt!670554))))

(declare-fun b!1739824 () Bool)

(declare-fun res!782076 () Bool)

(assert (=> b!1739824 (=> (not res!782076) (not e!1113572))))

(assert (=> b!1739824 (= res!782076 (= (value!106658 (_1!10785 (get!5749 lt!670554))) (apply!5208 (transformation!3403 (rule!5401 (_1!10785 (get!5749 lt!670554)))) (seqFromList!2377 (originalCharacters!4217 (_1!10785 (get!5749 lt!670554)))))))))

(declare-fun bm!110039 () Bool)

(assert (=> bm!110039 (= call!110044 (maxPrefixOneRule!962 thiss!24550 (h!24514 rules!3447) lt!670463))))

(declare-fun b!1739825 () Bool)

(assert (=> b!1739825 (= e!1113570 call!110044)))

(assert (= (and d!531616 c!283890) b!1739825))

(assert (= (and d!531616 (not c!283890)) b!1739819))

(assert (= (or b!1739825 b!1739819) bm!110039))

(assert (= (and d!531616 (not res!782079)) b!1739823))

(assert (= (and b!1739823 res!782073) b!1739821))

(assert (= (and b!1739821 res!782074) b!1739817))

(assert (= (and b!1739817 res!782077) b!1739818))

(assert (= (and b!1739818 res!782078) b!1739824))

(assert (= (and b!1739824 res!782076) b!1739820))

(assert (= (and b!1739820 res!782075) b!1739822))

(declare-fun m!2150515 () Bool)

(assert (=> b!1739820 m!2150515))

(declare-fun m!2150517 () Bool)

(assert (=> b!1739820 m!2150517))

(assert (=> b!1739820 m!2150517))

(declare-fun m!2150519 () Bool)

(assert (=> b!1739820 m!2150519))

(assert (=> b!1739820 m!2150519))

(declare-fun m!2150521 () Bool)

(assert (=> b!1739820 m!2150521))

(declare-fun m!2150523 () Bool)

(assert (=> b!1739823 m!2150523))

(assert (=> b!1739824 m!2150515))

(declare-fun m!2150525 () Bool)

(assert (=> b!1739824 m!2150525))

(assert (=> b!1739824 m!2150525))

(declare-fun m!2150527 () Bool)

(assert (=> b!1739824 m!2150527))

(declare-fun m!2150529 () Bool)

(assert (=> b!1739819 m!2150529))

(assert (=> b!1739822 m!2150515))

(declare-fun m!2150531 () Bool)

(assert (=> b!1739822 m!2150531))

(assert (=> b!1739818 m!2150515))

(assert (=> b!1739818 m!2150517))

(assert (=> b!1739818 m!2150517))

(assert (=> b!1739818 m!2150519))

(assert (=> b!1739818 m!2150519))

(declare-fun m!2150533 () Bool)

(assert (=> b!1739818 m!2150533))

(assert (=> b!1739821 m!2150515))

(assert (=> b!1739821 m!2150517))

(assert (=> b!1739821 m!2150517))

(assert (=> b!1739821 m!2150519))

(declare-fun m!2150535 () Bool)

(assert (=> bm!110039 m!2150535))

(declare-fun m!2150537 () Bool)

(assert (=> d!531616 m!2150537))

(declare-fun m!2150539 () Bool)

(assert (=> d!531616 m!2150539))

(declare-fun m!2150541 () Bool)

(assert (=> d!531616 m!2150541))

(assert (=> d!531616 m!2150431))

(assert (=> b!1739817 m!2150515))

(declare-fun m!2150543 () Bool)

(assert (=> b!1739817 m!2150543))

(assert (=> b!1739817 m!2150503))

(assert (=> b!1739662 d!531616))

(declare-fun lt!670641 () Token!6372)

(declare-fun b!1739956 () Bool)

(declare-fun e!1113645 () Bool)

(assert (=> b!1739956 (= e!1113645 (= (rule!5401 lt!670641) (get!5750 (getRuleFromTag!453 thiss!24550 rules!3447 (tag!3739 (rule!5401 lt!670641))))))))

(declare-fun b!1739955 () Bool)

(declare-fun res!782146 () Bool)

(assert (=> b!1739955 (=> (not res!782146) (not e!1113645))))

(assert (=> b!1739955 (= res!782146 (matchR!2205 (regex!3403 (get!5750 (getRuleFromTag!453 thiss!24550 rules!3447 (tag!3739 (rule!5401 lt!670641))))) (list!7728 (charsOf!2052 lt!670641))))))

(declare-fun b!1739957 () Bool)

(declare-fun e!1113644 () Unit!33143)

(declare-fun Unit!33157 () Unit!33143)

(assert (=> b!1739957 (= e!1113644 Unit!33157)))

(declare-fun lt!670647 () List!19182)

(assert (=> b!1739957 (= lt!670647 (++!5228 lt!670489 suffix!1421))))

(declare-fun lt!670634 () Unit!33143)

(declare-fun lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!288 (LexerInterface!3032 Rule!6606 List!19183 List!19182) Unit!33143)

(assert (=> b!1739957 (= lt!670634 (lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!288 thiss!24550 (rule!5401 lt!670641) rules!3447 lt!670647))))

(assert (=> b!1739957 (isEmpty!12032 (maxPrefixOneRule!962 thiss!24550 (rule!5401 lt!670641) lt!670647))))

(declare-fun lt!670650 () Unit!33143)

(assert (=> b!1739957 (= lt!670650 lt!670634)))

(declare-fun lt!670648 () List!19182)

(assert (=> b!1739957 (= lt!670648 (list!7728 (charsOf!2052 lt!670641)))))

(declare-fun lt!670637 () Unit!33143)

(declare-fun lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!284 (LexerInterface!3032 Rule!6606 List!19182 List!19182) Unit!33143)

(assert (=> b!1739957 (= lt!670637 (lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!284 thiss!24550 (rule!5401 lt!670641) lt!670648 (++!5228 lt!670489 suffix!1421)))))

(assert (=> b!1739957 (not (matchR!2205 (regex!3403 (rule!5401 lt!670641)) lt!670648))))

(declare-fun lt!670635 () Unit!33143)

(assert (=> b!1739957 (= lt!670635 lt!670637)))

(assert (=> b!1739957 false))

(declare-fun b!1739958 () Bool)

(declare-fun Unit!33158 () Unit!33143)

(assert (=> b!1739958 (= e!1113644 Unit!33158)))

(declare-fun d!531622 () Bool)

(assert (=> d!531622 (isDefined!3174 (maxPrefix!1586 thiss!24550 rules!3447 (++!5228 lt!670489 suffix!1421)))))

(declare-fun lt!670649 () Unit!33143)

(assert (=> d!531622 (= lt!670649 e!1113644)))

(declare-fun c!283920 () Bool)

(assert (=> d!531622 (= c!283920 (isEmpty!12032 (maxPrefix!1586 thiss!24550 rules!3447 (++!5228 lt!670489 suffix!1421))))))

(declare-fun lt!670642 () Unit!33143)

(declare-fun lt!670640 () Unit!33143)

(assert (=> d!531622 (= lt!670642 lt!670640)))

(assert (=> d!531622 e!1113645))

(declare-fun res!782145 () Bool)

(assert (=> d!531622 (=> (not res!782145) (not e!1113645))))

(assert (=> d!531622 (= res!782145 (isDefined!3173 (getRuleFromTag!453 thiss!24550 rules!3447 (tag!3739 (rule!5401 lt!670641)))))))

(assert (=> d!531622 (= lt!670640 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!453 thiss!24550 rules!3447 lt!670489 lt!670641))))

(declare-fun lt!670644 () Unit!33143)

(declare-fun lt!670636 () Unit!33143)

(assert (=> d!531622 (= lt!670644 lt!670636)))

(declare-fun lt!670645 () List!19182)

(assert (=> d!531622 (isPrefix!1644 lt!670645 (++!5228 lt!670489 suffix!1421))))

(declare-fun lemmaPrefixStaysPrefixWhenAddingToSuffix!280 (List!19182 List!19182 List!19182) Unit!33143)

(assert (=> d!531622 (= lt!670636 (lemmaPrefixStaysPrefixWhenAddingToSuffix!280 lt!670645 lt!670489 suffix!1421))))

(assert (=> d!531622 (= lt!670645 (list!7728 (charsOf!2052 lt!670641)))))

(declare-fun lt!670639 () Unit!33143)

(declare-fun lt!670638 () Unit!33143)

(assert (=> d!531622 (= lt!670639 lt!670638)))

(declare-fun lt!670646 () List!19182)

(declare-fun lt!670643 () List!19182)

(assert (=> d!531622 (isPrefix!1644 lt!670646 (++!5228 lt!670646 lt!670643))))

(assert (=> d!531622 (= lt!670638 (lemmaConcatTwoListThenFirstIsPrefix!1154 lt!670646 lt!670643))))

(assert (=> d!531622 (= lt!670643 (_2!10785 (get!5749 (maxPrefix!1586 thiss!24550 rules!3447 lt!670489))))))

(assert (=> d!531622 (= lt!670646 (list!7728 (charsOf!2052 lt!670641)))))

(declare-datatypes ((List!19184 0))(
  ( (Nil!19114) (Cons!19114 (h!24515 Token!6372) (t!161815 List!19184)) )
))
(declare-fun head!3983 (List!19184) Token!6372)

(declare-datatypes ((IArray!12721 0))(
  ( (IArray!12722 (innerList!6418 List!19184)) )
))
(declare-datatypes ((Conc!6358 0))(
  ( (Node!6358 (left!15289 Conc!6358) (right!15619 Conc!6358) (csize!12946 Int) (cheight!6569 Int)) (Leaf!9280 (xs!9234 IArray!12721) (csize!12947 Int)) (Empty!6358) )
))
(declare-datatypes ((BalanceConc!12660 0))(
  ( (BalanceConc!12661 (c!284030 Conc!6358)) )
))
(declare-fun list!7730 (BalanceConc!12660) List!19184)

(declare-datatypes ((tuple2!18768 0))(
  ( (tuple2!18769 (_1!10786 BalanceConc!12660) (_2!10786 BalanceConc!12658)) )
))
(declare-fun lex!1419 (LexerInterface!3032 List!19183 BalanceConc!12658) tuple2!18768)

(assert (=> d!531622 (= lt!670641 (head!3983 (list!7730 (_1!10786 (lex!1419 thiss!24550 rules!3447 (seqFromList!2377 lt!670489))))))))

(assert (=> d!531622 (not (isEmpty!12030 rules!3447))))

(assert (=> d!531622 (= (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!556 thiss!24550 rules!3447 lt!670489 suffix!1421) lt!670649)))

(assert (= (and d!531622 res!782145) b!1739955))

(assert (= (and b!1739955 res!782146) b!1739956))

(assert (= (and d!531622 c!283920) b!1739957))

(assert (= (and d!531622 (not c!283920)) b!1739958))

(declare-fun m!2150665 () Bool)

(assert (=> b!1739956 m!2150665))

(assert (=> b!1739956 m!2150665))

(declare-fun m!2150667 () Bool)

(assert (=> b!1739956 m!2150667))

(declare-fun m!2150669 () Bool)

(assert (=> b!1739955 m!2150669))

(declare-fun m!2150671 () Bool)

(assert (=> b!1739955 m!2150671))

(assert (=> b!1739955 m!2150665))

(assert (=> b!1739955 m!2150669))

(assert (=> b!1739955 m!2150671))

(declare-fun m!2150673 () Bool)

(assert (=> b!1739955 m!2150673))

(assert (=> b!1739955 m!2150665))

(assert (=> b!1739955 m!2150667))

(assert (=> b!1739957 m!2150669))

(assert (=> b!1739957 m!2150671))

(declare-fun m!2150675 () Bool)

(assert (=> b!1739957 m!2150675))

(declare-fun m!2150677 () Bool)

(assert (=> b!1739957 m!2150677))

(assert (=> b!1739957 m!2150669))

(declare-fun m!2150679 () Bool)

(assert (=> b!1739957 m!2150679))

(assert (=> b!1739957 m!2150675))

(assert (=> b!1739957 m!2150421))

(declare-fun m!2150681 () Bool)

(assert (=> b!1739957 m!2150681))

(assert (=> b!1739957 m!2150421))

(declare-fun m!2150683 () Bool)

(assert (=> b!1739957 m!2150683))

(assert (=> d!531622 m!2150669))

(assert (=> d!531622 m!2150671))

(declare-fun m!2150685 () Bool)

(assert (=> d!531622 m!2150685))

(declare-fun m!2150687 () Bool)

(assert (=> d!531622 m!2150687))

(assert (=> d!531622 m!2150665))

(declare-fun m!2150689 () Bool)

(assert (=> d!531622 m!2150689))

(assert (=> d!531622 m!2150669))

(declare-fun m!2150691 () Bool)

(assert (=> d!531622 m!2150691))

(assert (=> d!531622 m!2150339))

(declare-fun m!2150693 () Bool)

(assert (=> d!531622 m!2150693))

(declare-fun m!2150695 () Bool)

(assert (=> d!531622 m!2150695))

(declare-fun m!2150697 () Bool)

(assert (=> d!531622 m!2150697))

(declare-fun m!2150699 () Bool)

(assert (=> d!531622 m!2150699))

(assert (=> d!531622 m!2150347))

(assert (=> d!531622 m!2150689))

(declare-fun m!2150701 () Bool)

(assert (=> d!531622 m!2150701))

(assert (=> d!531622 m!2150697))

(assert (=> d!531622 m!2150421))

(declare-fun m!2150703 () Bool)

(assert (=> d!531622 m!2150703))

(assert (=> d!531622 m!2150421))

(assert (=> d!531622 m!2150693))

(assert (=> d!531622 m!2150693))

(declare-fun m!2150705 () Bool)

(assert (=> d!531622 m!2150705))

(assert (=> d!531622 m!2150665))

(declare-fun m!2150707 () Bool)

(assert (=> d!531622 m!2150707))

(assert (=> d!531622 m!2150421))

(declare-fun m!2150709 () Bool)

(assert (=> d!531622 m!2150709))

(assert (=> d!531622 m!2150347))

(declare-fun m!2150711 () Bool)

(assert (=> d!531622 m!2150711))

(declare-fun m!2150713 () Bool)

(assert (=> d!531622 m!2150713))

(assert (=> d!531622 m!2150685))

(assert (=> b!1739662 d!531622))

(declare-fun d!531680 () Bool)

(assert (=> d!531680 (= (list!7728 lt!670465) (list!7729 (c!283869 lt!670465)))))

(declare-fun bs!402957 () Bool)

(assert (= bs!402957 d!531680))

(declare-fun m!2150715 () Bool)

(assert (=> bs!402957 m!2150715))

(assert (=> b!1739662 d!531680))

(declare-fun b!1739960 () Bool)

(declare-fun e!1113646 () List!19182)

(assert (=> b!1739960 (= e!1113646 (Cons!19112 (h!24513 lt!670501) (++!5228 (t!161753 lt!670501) (_2!10785 lt!670497))))))

(declare-fun lt!670651 () List!19182)

(declare-fun e!1113647 () Bool)

(declare-fun b!1739962 () Bool)

(assert (=> b!1739962 (= e!1113647 (or (not (= (_2!10785 lt!670497) Nil!19112)) (= lt!670651 lt!670501)))))

(declare-fun b!1739961 () Bool)

(declare-fun res!782147 () Bool)

(assert (=> b!1739961 (=> (not res!782147) (not e!1113647))))

(assert (=> b!1739961 (= res!782147 (= (size!15193 lt!670651) (+ (size!15193 lt!670501) (size!15193 (_2!10785 lt!670497)))))))

(declare-fun b!1739959 () Bool)

(assert (=> b!1739959 (= e!1113646 (_2!10785 lt!670497))))

(declare-fun d!531682 () Bool)

(assert (=> d!531682 e!1113647))

(declare-fun res!782148 () Bool)

(assert (=> d!531682 (=> (not res!782148) (not e!1113647))))

(assert (=> d!531682 (= res!782148 (= (content!2737 lt!670651) ((_ map or) (content!2737 lt!670501) (content!2737 (_2!10785 lt!670497)))))))

(assert (=> d!531682 (= lt!670651 e!1113646)))

(declare-fun c!283921 () Bool)

(assert (=> d!531682 (= c!283921 ((_ is Nil!19112) lt!670501))))

(assert (=> d!531682 (= (++!5228 lt!670501 (_2!10785 lt!670497)) lt!670651)))

(assert (= (and d!531682 c!283921) b!1739959))

(assert (= (and d!531682 (not c!283921)) b!1739960))

(assert (= (and d!531682 res!782148) b!1739961))

(assert (= (and b!1739961 res!782147) b!1739962))

(declare-fun m!2150717 () Bool)

(assert (=> b!1739960 m!2150717))

(declare-fun m!2150719 () Bool)

(assert (=> b!1739961 m!2150719))

(assert (=> b!1739961 m!2150317))

(declare-fun m!2150721 () Bool)

(assert (=> b!1739961 m!2150721))

(declare-fun m!2150723 () Bool)

(assert (=> d!531682 m!2150723))

(declare-fun m!2150725 () Bool)

(assert (=> d!531682 m!2150725))

(declare-fun m!2150727 () Bool)

(assert (=> d!531682 m!2150727))

(assert (=> b!1739662 d!531682))

(declare-fun b!1739964 () Bool)

(declare-fun res!782151 () Bool)

(declare-fun e!1113648 () Bool)

(assert (=> b!1739964 (=> (not res!782151) (not e!1113648))))

(assert (=> b!1739964 (= res!782151 (= (head!3982 lt!670489) (head!3982 lt!670463)))))

(declare-fun b!1739966 () Bool)

(declare-fun e!1113649 () Bool)

(assert (=> b!1739966 (= e!1113649 (>= (size!15193 lt!670463) (size!15193 lt!670489)))))

(declare-fun b!1739965 () Bool)

(assert (=> b!1739965 (= e!1113648 (isPrefix!1644 (tail!2596 lt!670489) (tail!2596 lt!670463)))))

(declare-fun d!531684 () Bool)

(assert (=> d!531684 e!1113649))

(declare-fun res!782152 () Bool)

(assert (=> d!531684 (=> res!782152 e!1113649)))

(declare-fun lt!670652 () Bool)

(assert (=> d!531684 (= res!782152 (not lt!670652))))

(declare-fun e!1113650 () Bool)

(assert (=> d!531684 (= lt!670652 e!1113650)))

(declare-fun res!782150 () Bool)

(assert (=> d!531684 (=> res!782150 e!1113650)))

(assert (=> d!531684 (= res!782150 ((_ is Nil!19112) lt!670489))))

(assert (=> d!531684 (= (isPrefix!1644 lt!670489 lt!670463) lt!670652)))

(declare-fun b!1739963 () Bool)

(assert (=> b!1739963 (= e!1113650 e!1113648)))

(declare-fun res!782149 () Bool)

(assert (=> b!1739963 (=> (not res!782149) (not e!1113648))))

(assert (=> b!1739963 (= res!782149 (not ((_ is Nil!19112) lt!670463)))))

(assert (= (and d!531684 (not res!782150)) b!1739963))

(assert (= (and b!1739963 res!782149) b!1739964))

(assert (= (and b!1739964 res!782151) b!1739965))

(assert (= (and d!531684 (not res!782152)) b!1739966))

(declare-fun m!2150729 () Bool)

(assert (=> b!1739964 m!2150729))

(assert (=> b!1739964 m!2150501))

(assert (=> b!1739966 m!2150503))

(assert (=> b!1739966 m!2150479))

(declare-fun m!2150731 () Bool)

(assert (=> b!1739965 m!2150731))

(assert (=> b!1739965 m!2150505))

(assert (=> b!1739965 m!2150731))

(assert (=> b!1739965 m!2150505))

(declare-fun m!2150733 () Bool)

(assert (=> b!1739965 m!2150733))

(assert (=> b!1739662 d!531684))

(declare-fun d!531686 () Bool)

(assert (=> d!531686 (isPrefix!1644 lt!670489 (++!5228 lt!670489 suffix!1421))))

(declare-fun lt!670653 () Unit!33143)

(assert (=> d!531686 (= lt!670653 (choose!10690 lt!670489 suffix!1421))))

(assert (=> d!531686 (= (lemmaConcatTwoListThenFirstIsPrefix!1154 lt!670489 suffix!1421) lt!670653)))

(declare-fun bs!402958 () Bool)

(assert (= bs!402958 d!531686))

(assert (=> bs!402958 m!2150421))

(assert (=> bs!402958 m!2150421))

(declare-fun m!2150735 () Bool)

(assert (=> bs!402958 m!2150735))

(declare-fun m!2150737 () Bool)

(assert (=> bs!402958 m!2150737))

(assert (=> b!1739662 d!531686))

(declare-fun d!531688 () Bool)

(declare-fun e!1113661 () Bool)

(assert (=> d!531688 e!1113661))

(declare-fun res!782171 () Bool)

(assert (=> d!531688 (=> (not res!782171) (not e!1113661))))

(assert (=> d!531688 (= res!782171 (isDefined!3173 (getRuleFromTag!453 thiss!24550 rules!3447 (tag!3739 (rule!5401 (_1!10785 lt!670497))))))))

(declare-fun lt!670666 () Unit!33143)

(declare-fun choose!10692 (LexerInterface!3032 List!19183 List!19182 Token!6372) Unit!33143)

(assert (=> d!531688 (= lt!670666 (choose!10692 thiss!24550 rules!3447 lt!670463 (_1!10785 lt!670497)))))

(assert (=> d!531688 (rulesInvariant!2701 thiss!24550 rules!3447)))

(assert (=> d!531688 (= (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!453 thiss!24550 rules!3447 lt!670463 (_1!10785 lt!670497)) lt!670666)))

(declare-fun b!1739989 () Bool)

(declare-fun res!782172 () Bool)

(assert (=> b!1739989 (=> (not res!782172) (not e!1113661))))

(assert (=> b!1739989 (= res!782172 (matchR!2205 (regex!3403 (get!5750 (getRuleFromTag!453 thiss!24550 rules!3447 (tag!3739 (rule!5401 (_1!10785 lt!670497)))))) (list!7728 (charsOf!2052 (_1!10785 lt!670497)))))))

(declare-fun b!1739990 () Bool)

(assert (=> b!1739990 (= e!1113661 (= (rule!5401 (_1!10785 lt!670497)) (get!5750 (getRuleFromTag!453 thiss!24550 rules!3447 (tag!3739 (rule!5401 (_1!10785 lt!670497)))))))))

(assert (= (and d!531688 res!782171) b!1739989))

(assert (= (and b!1739989 res!782172) b!1739990))

(assert (=> d!531688 m!2150405))

(assert (=> d!531688 m!2150405))

(declare-fun m!2150739 () Bool)

(assert (=> d!531688 m!2150739))

(declare-fun m!2150741 () Bool)

(assert (=> d!531688 m!2150741))

(assert (=> d!531688 m!2150429))

(assert (=> b!1739989 m!2150405))

(declare-fun m!2150743 () Bool)

(assert (=> b!1739989 m!2150743))

(assert (=> b!1739989 m!2150405))

(assert (=> b!1739989 m!2150377))

(declare-fun m!2150745 () Bool)

(assert (=> b!1739989 m!2150745))

(assert (=> b!1739989 m!2150375))

(assert (=> b!1739989 m!2150375))

(assert (=> b!1739989 m!2150377))

(assert (=> b!1739990 m!2150405))

(assert (=> b!1739990 m!2150405))

(assert (=> b!1739990 m!2150743))

(assert (=> b!1739662 d!531688))

(declare-fun d!531690 () Bool)

(assert (=> d!531690 (= (get!5749 lt!670461) (v!25258 lt!670461))))

(assert (=> b!1739662 d!531690))

(declare-fun d!531692 () Bool)

(assert (=> d!531692 (= (isDefined!3173 lt!670480) (not (isEmpty!12031 lt!670480)))))

(declare-fun bs!402959 () Bool)

(assert (= bs!402959 d!531692))

(declare-fun m!2150747 () Bool)

(assert (=> bs!402959 m!2150747))

(assert (=> b!1739662 d!531692))

(declare-fun b!1739991 () Bool)

(declare-fun res!782179 () Bool)

(declare-fun e!1113662 () Bool)

(assert (=> b!1739991 (=> res!782179 e!1113662)))

(declare-fun e!1113663 () Bool)

(assert (=> b!1739991 (= res!782179 e!1113663)))

(declare-fun res!782175 () Bool)

(assert (=> b!1739991 (=> (not res!782175) (not e!1113663))))

(declare-fun lt!670667 () Bool)

(assert (=> b!1739991 (= res!782175 lt!670667)))

(declare-fun b!1739993 () Bool)

(declare-fun e!1113667 () Bool)

(declare-fun call!110049 () Bool)

(assert (=> b!1739993 (= e!1113667 (= lt!670667 call!110049))))

(declare-fun b!1739994 () Bool)

(assert (=> b!1739994 (= e!1113663 (= (head!3982 lt!670501) (c!283868 (regex!3403 (rule!5401 (_1!10785 lt!670497))))))))

(declare-fun b!1739995 () Bool)

(declare-fun e!1113665 () Bool)

(assert (=> b!1739995 (= e!1113665 (matchR!2205 (derivativeStep!1199 (regex!3403 (rule!5401 (_1!10785 lt!670497))) (head!3982 lt!670501)) (tail!2596 lt!670501)))))

(declare-fun b!1739996 () Bool)

(declare-fun res!782173 () Bool)

(assert (=> b!1739996 (=> (not res!782173) (not e!1113663))))

(assert (=> b!1739996 (= res!782173 (isEmpty!12029 (tail!2596 lt!670501)))))

(declare-fun b!1739997 () Bool)

(declare-fun e!1113668 () Bool)

(assert (=> b!1739997 (= e!1113662 e!1113668)))

(declare-fun res!782176 () Bool)

(assert (=> b!1739997 (=> (not res!782176) (not e!1113668))))

(assert (=> b!1739997 (= res!782176 (not lt!670667))))

(declare-fun b!1739998 () Bool)

(declare-fun e!1113666 () Bool)

(assert (=> b!1739998 (= e!1113667 e!1113666)))

(declare-fun c!283925 () Bool)

(assert (=> b!1739998 (= c!283925 ((_ is EmptyLang!4731) (regex!3403 (rule!5401 (_1!10785 lt!670497)))))))

(declare-fun bm!110044 () Bool)

(assert (=> bm!110044 (= call!110049 (isEmpty!12029 lt!670501))))

(declare-fun b!1739999 () Bool)

(assert (=> b!1739999 (= e!1113666 (not lt!670667))))

(declare-fun b!1740000 () Bool)

(declare-fun e!1113664 () Bool)

(assert (=> b!1740000 (= e!1113664 (not (= (head!3982 lt!670501) (c!283868 (regex!3403 (rule!5401 (_1!10785 lt!670497)))))))))

(declare-fun d!531694 () Bool)

(assert (=> d!531694 e!1113667))

(declare-fun c!283924 () Bool)

(assert (=> d!531694 (= c!283924 ((_ is EmptyExpr!4731) (regex!3403 (rule!5401 (_1!10785 lt!670497)))))))

(assert (=> d!531694 (= lt!670667 e!1113665)))

(declare-fun c!283926 () Bool)

(assert (=> d!531694 (= c!283926 (isEmpty!12029 lt!670501))))

(assert (=> d!531694 (validRegex!1905 (regex!3403 (rule!5401 (_1!10785 lt!670497))))))

(assert (=> d!531694 (= (matchR!2205 (regex!3403 (rule!5401 (_1!10785 lt!670497))) lt!670501) lt!670667)))

(declare-fun b!1739992 () Bool)

(declare-fun res!782177 () Bool)

(assert (=> b!1739992 (=> res!782177 e!1113662)))

(assert (=> b!1739992 (= res!782177 (not ((_ is ElementMatch!4731) (regex!3403 (rule!5401 (_1!10785 lt!670497))))))))

(assert (=> b!1739992 (= e!1113666 e!1113662)))

(declare-fun b!1740001 () Bool)

(assert (=> b!1740001 (= e!1113665 (nullable!1431 (regex!3403 (rule!5401 (_1!10785 lt!670497)))))))

(declare-fun b!1740002 () Bool)

(assert (=> b!1740002 (= e!1113668 e!1113664)))

(declare-fun res!782180 () Bool)

(assert (=> b!1740002 (=> res!782180 e!1113664)))

(assert (=> b!1740002 (= res!782180 call!110049)))

(declare-fun b!1740003 () Bool)

(declare-fun res!782178 () Bool)

(assert (=> b!1740003 (=> res!782178 e!1113664)))

(assert (=> b!1740003 (= res!782178 (not (isEmpty!12029 (tail!2596 lt!670501))))))

(declare-fun b!1740004 () Bool)

(declare-fun res!782174 () Bool)

(assert (=> b!1740004 (=> (not res!782174) (not e!1113663))))

(assert (=> b!1740004 (= res!782174 (not call!110049))))

(assert (= (and d!531694 c!283926) b!1740001))

(assert (= (and d!531694 (not c!283926)) b!1739995))

(assert (= (and d!531694 c!283924) b!1739993))

(assert (= (and d!531694 (not c!283924)) b!1739998))

(assert (= (and b!1739998 c!283925) b!1739999))

(assert (= (and b!1739998 (not c!283925)) b!1739992))

(assert (= (and b!1739992 (not res!782177)) b!1739991))

(assert (= (and b!1739991 res!782175) b!1740004))

(assert (= (and b!1740004 res!782174) b!1739996))

(assert (= (and b!1739996 res!782173) b!1739994))

(assert (= (and b!1739991 (not res!782179)) b!1739997))

(assert (= (and b!1739997 res!782176) b!1740002))

(assert (= (and b!1740002 (not res!782180)) b!1740003))

(assert (= (and b!1740003 (not res!782178)) b!1740000))

(assert (= (or b!1739993 b!1740002 b!1740004) bm!110044))

(declare-fun m!2150749 () Bool)

(assert (=> b!1740001 m!2150749))

(assert (=> b!1740000 m!2150489))

(assert (=> b!1739996 m!2150495))

(assert (=> b!1739996 m!2150495))

(declare-fun m!2150751 () Bool)

(assert (=> b!1739996 m!2150751))

(declare-fun m!2150753 () Bool)

(assert (=> d!531694 m!2150753))

(declare-fun m!2150755 () Bool)

(assert (=> d!531694 m!2150755))

(assert (=> b!1740003 m!2150495))

(assert (=> b!1740003 m!2150495))

(assert (=> b!1740003 m!2150751))

(assert (=> b!1739994 m!2150489))

(assert (=> b!1739995 m!2150489))

(assert (=> b!1739995 m!2150489))

(declare-fun m!2150757 () Bool)

(assert (=> b!1739995 m!2150757))

(assert (=> b!1739995 m!2150495))

(assert (=> b!1739995 m!2150757))

(assert (=> b!1739995 m!2150495))

(declare-fun m!2150759 () Bool)

(assert (=> b!1739995 m!2150759))

(assert (=> bm!110044 m!2150753))

(assert (=> b!1739682 d!531694))

(declare-fun d!531696 () Bool)

(assert (=> d!531696 (not (matchR!2205 (regex!3403 rule!422) lt!670489))))

(declare-fun lt!670675 () Unit!33143)

(declare-fun choose!10694 (LexerInterface!3032 List!19183 Rule!6606 List!19182 List!19182 List!19182 Rule!6606) Unit!33143)

(assert (=> d!531696 (= lt!670675 (choose!10694 thiss!24550 rules!3447 (rule!5401 (_1!10785 lt!670497)) lt!670501 lt!670463 lt!670489 rule!422))))

(assert (=> d!531696 (isPrefix!1644 lt!670501 lt!670463)))

(assert (=> d!531696 (= (lemmaMaxPrefixOutputsMaxPrefix!200 thiss!24550 rules!3447 (rule!5401 (_1!10785 lt!670497)) lt!670501 lt!670463 lt!670489 rule!422) lt!670675)))

(declare-fun bs!402960 () Bool)

(assert (= bs!402960 d!531696))

(assert (=> bs!402960 m!2150353))

(declare-fun m!2150807 () Bool)

(assert (=> bs!402960 m!2150807))

(assert (=> bs!402960 m!2150417))

(assert (=> b!1739681 d!531696))

(declare-fun d!531700 () Bool)

(declare-fun res!782190 () Bool)

(declare-fun e!1113676 () Bool)

(assert (=> d!531700 (=> (not res!782190) (not e!1113676))))

(declare-fun rulesValid!1271 (LexerInterface!3032 List!19183) Bool)

(assert (=> d!531700 (= res!782190 (rulesValid!1271 thiss!24550 rules!3447))))

(assert (=> d!531700 (= (rulesInvariant!2701 thiss!24550 rules!3447) e!1113676)))

(declare-fun b!1740016 () Bool)

(declare-datatypes ((List!19186 0))(
  ( (Nil!19116) (Cons!19116 (h!24517 String!21797) (t!161817 List!19186)) )
))
(declare-fun noDuplicateTag!1271 (LexerInterface!3032 List!19183 List!19186) Bool)

(assert (=> b!1740016 (= e!1113676 (noDuplicateTag!1271 thiss!24550 rules!3447 Nil!19116))))

(assert (= (and d!531700 res!782190) b!1740016))

(declare-fun m!2150813 () Bool)

(assert (=> d!531700 m!2150813))

(declare-fun m!2150815 () Bool)

(assert (=> b!1740016 m!2150815))

(assert (=> b!1739660 d!531700))

(declare-fun d!531704 () Bool)

(declare-fun c!283930 () Bool)

(assert (=> d!531704 (= c!283930 ((_ is Node!6357) (c!283869 (dynLambda!9031 (toChars!4769 (transformation!3403 (rule!5401 (_1!10785 lt!670497)))) (value!106658 (_1!10785 lt!670497))))))))

(declare-fun e!1113681 () Bool)

(assert (=> d!531704 (= (inv!24769 (c!283869 (dynLambda!9031 (toChars!4769 (transformation!3403 (rule!5401 (_1!10785 lt!670497)))) (value!106658 (_1!10785 lt!670497))))) e!1113681)))

(declare-fun b!1740023 () Bool)

(declare-fun inv!24771 (Conc!6357) Bool)

(assert (=> b!1740023 (= e!1113681 (inv!24771 (c!283869 (dynLambda!9031 (toChars!4769 (transformation!3403 (rule!5401 (_1!10785 lt!670497)))) (value!106658 (_1!10785 lt!670497))))))))

(declare-fun b!1740024 () Bool)

(declare-fun e!1113682 () Bool)

(assert (=> b!1740024 (= e!1113681 e!1113682)))

(declare-fun res!782193 () Bool)

(assert (=> b!1740024 (= res!782193 (not ((_ is Leaf!9279) (c!283869 (dynLambda!9031 (toChars!4769 (transformation!3403 (rule!5401 (_1!10785 lt!670497)))) (value!106658 (_1!10785 lt!670497)))))))))

(assert (=> b!1740024 (=> res!782193 e!1113682)))

(declare-fun b!1740025 () Bool)

(declare-fun inv!24772 (Conc!6357) Bool)

(assert (=> b!1740025 (= e!1113682 (inv!24772 (c!283869 (dynLambda!9031 (toChars!4769 (transformation!3403 (rule!5401 (_1!10785 lt!670497)))) (value!106658 (_1!10785 lt!670497))))))))

(assert (= (and d!531704 c!283930) b!1740023))

(assert (= (and d!531704 (not c!283930)) b!1740024))

(assert (= (and b!1740024 (not res!782193)) b!1740025))

(declare-fun m!2150817 () Bool)

(assert (=> b!1740023 m!2150817))

(declare-fun m!2150819 () Bool)

(assert (=> b!1740025 m!2150819))

(assert (=> b!1739703 d!531704))

(declare-fun b!1740036 () Bool)

(declare-fun e!1113691 () Bool)

(declare-fun inv!17 (TokenValue!3493) Bool)

(assert (=> b!1740036 (= e!1113691 (inv!17 (value!106658 token!523)))))

(declare-fun b!1740037 () Bool)

(declare-fun e!1113689 () Bool)

(declare-fun inv!15 (TokenValue!3493) Bool)

(assert (=> b!1740037 (= e!1113689 (inv!15 (value!106658 token!523)))))

(declare-fun d!531706 () Bool)

(declare-fun c!283935 () Bool)

(assert (=> d!531706 (= c!283935 ((_ is IntegerValue!10479) (value!106658 token!523)))))

(declare-fun e!1113690 () Bool)

(assert (=> d!531706 (= (inv!21 (value!106658 token!523)) e!1113690)))

(declare-fun b!1740038 () Bool)

(declare-fun res!782196 () Bool)

(assert (=> b!1740038 (=> res!782196 e!1113689)))

(assert (=> b!1740038 (= res!782196 (not ((_ is IntegerValue!10481) (value!106658 token!523))))))

(assert (=> b!1740038 (= e!1113691 e!1113689)))

(declare-fun b!1740039 () Bool)

(declare-fun inv!16 (TokenValue!3493) Bool)

(assert (=> b!1740039 (= e!1113690 (inv!16 (value!106658 token!523)))))

(declare-fun b!1740040 () Bool)

(assert (=> b!1740040 (= e!1113690 e!1113691)))

(declare-fun c!283936 () Bool)

(assert (=> b!1740040 (= c!283936 ((_ is IntegerValue!10480) (value!106658 token!523)))))

(assert (= (and d!531706 c!283935) b!1740039))

(assert (= (and d!531706 (not c!283935)) b!1740040))

(assert (= (and b!1740040 c!283936) b!1740036))

(assert (= (and b!1740040 (not c!283936)) b!1740038))

(assert (= (and b!1740038 (not res!782196)) b!1740037))

(declare-fun m!2150821 () Bool)

(assert (=> b!1740036 m!2150821))

(declare-fun m!2150823 () Bool)

(assert (=> b!1740037 m!2150823))

(declare-fun m!2150825 () Bool)

(assert (=> b!1740039 m!2150825))

(assert (=> b!1739680 d!531706))

(declare-fun d!531708 () Bool)

(assert (=> d!531708 (= (isEmpty!12029 suffix!1421) ((_ is Nil!19112) suffix!1421))))

(assert (=> b!1739658 d!531708))

(declare-fun d!531710 () Bool)

(declare-fun c!283939 () Bool)

(assert (=> d!531710 (= c!283939 (isEmpty!12029 lt!670512))))

(declare-fun e!1113694 () Bool)

(assert (=> d!531710 (= (prefixMatch!616 lt!670481 lt!670512) e!1113694)))

(declare-fun b!1740045 () Bool)

(declare-fun lostCause!542 (Regex!4731) Bool)

(assert (=> b!1740045 (= e!1113694 (not (lostCause!542 lt!670481)))))

(declare-fun b!1740046 () Bool)

(assert (=> b!1740046 (= e!1113694 (prefixMatch!616 (derivativeStep!1199 lt!670481 (head!3982 lt!670512)) (tail!2596 lt!670512)))))

(assert (= (and d!531710 c!283939) b!1740045))

(assert (= (and d!531710 (not c!283939)) b!1740046))

(declare-fun m!2150827 () Bool)

(assert (=> d!531710 m!2150827))

(declare-fun m!2150829 () Bool)

(assert (=> b!1740045 m!2150829))

(declare-fun m!2150831 () Bool)

(assert (=> b!1740046 m!2150831))

(assert (=> b!1740046 m!2150831))

(declare-fun m!2150833 () Bool)

(assert (=> b!1740046 m!2150833))

(declare-fun m!2150835 () Bool)

(assert (=> b!1740046 m!2150835))

(assert (=> b!1740046 m!2150833))

(assert (=> b!1740046 m!2150835))

(declare-fun m!2150837 () Bool)

(assert (=> b!1740046 m!2150837))

(assert (=> b!1739656 d!531710))

(declare-fun b!1740048 () Bool)

(declare-fun e!1113695 () List!19182)

(assert (=> b!1740048 (= e!1113695 (Cons!19112 (h!24513 lt!670489) (++!5228 (t!161753 lt!670489) (Cons!19112 (head!3982 suffix!1421) Nil!19112))))))

(declare-fun e!1113696 () Bool)

(declare-fun lt!670678 () List!19182)

(declare-fun b!1740050 () Bool)

(assert (=> b!1740050 (= e!1113696 (or (not (= (Cons!19112 (head!3982 suffix!1421) Nil!19112) Nil!19112)) (= lt!670678 lt!670489)))))

(declare-fun b!1740049 () Bool)

(declare-fun res!782197 () Bool)

(assert (=> b!1740049 (=> (not res!782197) (not e!1113696))))

(assert (=> b!1740049 (= res!782197 (= (size!15193 lt!670678) (+ (size!15193 lt!670489) (size!15193 (Cons!19112 (head!3982 suffix!1421) Nil!19112)))))))

(declare-fun b!1740047 () Bool)

(assert (=> b!1740047 (= e!1113695 (Cons!19112 (head!3982 suffix!1421) Nil!19112))))

(declare-fun d!531712 () Bool)

(assert (=> d!531712 e!1113696))

(declare-fun res!782198 () Bool)

(assert (=> d!531712 (=> (not res!782198) (not e!1113696))))

(assert (=> d!531712 (= res!782198 (= (content!2737 lt!670678) ((_ map or) (content!2737 lt!670489) (content!2737 (Cons!19112 (head!3982 suffix!1421) Nil!19112)))))))

(assert (=> d!531712 (= lt!670678 e!1113695)))

(declare-fun c!283940 () Bool)

(assert (=> d!531712 (= c!283940 ((_ is Nil!19112) lt!670489))))

(assert (=> d!531712 (= (++!5228 lt!670489 (Cons!19112 (head!3982 suffix!1421) Nil!19112)) lt!670678)))

(assert (= (and d!531712 c!283940) b!1740047))

(assert (= (and d!531712 (not c!283940)) b!1740048))

(assert (= (and d!531712 res!782198) b!1740049))

(assert (= (and b!1740049 res!782197) b!1740050))

(declare-fun m!2150839 () Bool)

(assert (=> b!1740048 m!2150839))

(declare-fun m!2150841 () Bool)

(assert (=> b!1740049 m!2150841))

(assert (=> b!1740049 m!2150479))

(declare-fun m!2150843 () Bool)

(assert (=> b!1740049 m!2150843))

(declare-fun m!2150845 () Bool)

(assert (=> d!531712 m!2150845))

(assert (=> d!531712 m!2150485))

(declare-fun m!2150847 () Bool)

(assert (=> d!531712 m!2150847))

(assert (=> b!1739656 d!531712))

(declare-fun d!531714 () Bool)

(assert (=> d!531714 (= (head!3982 suffix!1421) (h!24513 suffix!1421))))

(assert (=> b!1739656 d!531714))

(declare-fun d!531716 () Bool)

(declare-fun lt!670685 () Unit!33143)

(declare-fun lemma!355 (List!19183 LexerInterface!3032 List!19183) Unit!33143)

(assert (=> d!531716 (= lt!670685 (lemma!355 rules!3447 thiss!24550 rules!3447))))

(declare-fun lambda!69578 () Int)

(declare-datatypes ((List!19187 0))(
  ( (Nil!19117) (Cons!19117 (h!24518 Regex!4731) (t!161818 List!19187)) )
))
(declare-fun generalisedUnion!363 (List!19187) Regex!4731)

(declare-fun map!3936 (List!19183 Int) List!19187)

(assert (=> d!531716 (= (rulesRegex!761 thiss!24550 rules!3447) (generalisedUnion!363 (map!3936 rules!3447 lambda!69578)))))

(declare-fun bs!402962 () Bool)

(assert (= bs!402962 d!531716))

(declare-fun m!2150853 () Bool)

(assert (=> bs!402962 m!2150853))

(declare-fun m!2150855 () Bool)

(assert (=> bs!402962 m!2150855))

(assert (=> bs!402962 m!2150855))

(declare-fun m!2150857 () Bool)

(assert (=> bs!402962 m!2150857))

(assert (=> b!1739656 d!531716))

(declare-fun b!1740057 () Bool)

(declare-fun e!1113702 () Bool)

(assert (=> b!1740057 (= e!1113702 (inv!17 (dynLambda!9032 (toValue!4910 (transformation!3403 (rule!5401 (_1!10785 lt!670497)))) lt!670465)))))

(declare-fun b!1740058 () Bool)

(declare-fun e!1113700 () Bool)

(assert (=> b!1740058 (= e!1113700 (inv!15 (dynLambda!9032 (toValue!4910 (transformation!3403 (rule!5401 (_1!10785 lt!670497)))) lt!670465)))))

(declare-fun d!531722 () Bool)

(declare-fun c!283944 () Bool)

(assert (=> d!531722 (= c!283944 ((_ is IntegerValue!10479) (dynLambda!9032 (toValue!4910 (transformation!3403 (rule!5401 (_1!10785 lt!670497)))) lt!670465)))))

(declare-fun e!1113701 () Bool)

(assert (=> d!531722 (= (inv!21 (dynLambda!9032 (toValue!4910 (transformation!3403 (rule!5401 (_1!10785 lt!670497)))) lt!670465)) e!1113701)))

(declare-fun b!1740059 () Bool)

(declare-fun res!782199 () Bool)

(assert (=> b!1740059 (=> res!782199 e!1113700)))

(assert (=> b!1740059 (= res!782199 (not ((_ is IntegerValue!10481) (dynLambda!9032 (toValue!4910 (transformation!3403 (rule!5401 (_1!10785 lt!670497)))) lt!670465))))))

(assert (=> b!1740059 (= e!1113702 e!1113700)))

(declare-fun b!1740060 () Bool)

(assert (=> b!1740060 (= e!1113701 (inv!16 (dynLambda!9032 (toValue!4910 (transformation!3403 (rule!5401 (_1!10785 lt!670497)))) lt!670465)))))

(declare-fun b!1740061 () Bool)

(assert (=> b!1740061 (= e!1113701 e!1113702)))

(declare-fun c!283945 () Bool)

(assert (=> b!1740061 (= c!283945 ((_ is IntegerValue!10480) (dynLambda!9032 (toValue!4910 (transformation!3403 (rule!5401 (_1!10785 lt!670497)))) lt!670465)))))

(assert (= (and d!531722 c!283944) b!1740060))

(assert (= (and d!531722 (not c!283944)) b!1740061))

(assert (= (and b!1740061 c!283945) b!1740057))

(assert (= (and b!1740061 (not c!283945)) b!1740059))

(assert (= (and b!1740059 (not res!782199)) b!1740058))

(declare-fun m!2150859 () Bool)

(assert (=> b!1740057 m!2150859))

(declare-fun m!2150861 () Bool)

(assert (=> b!1740058 m!2150861))

(declare-fun m!2150863 () Bool)

(assert (=> b!1740060 m!2150863))

(assert (=> tb!104001 d!531722))

(declare-fun d!531724 () Bool)

(assert (=> d!531724 (= (list!7728 (dynLambda!9031 (toChars!4769 (transformation!3403 (rule!5401 (_1!10785 lt!670497)))) (dynLambda!9032 (toValue!4910 (transformation!3403 (rule!5401 (_1!10785 lt!670497)))) lt!670465))) (list!7729 (c!283869 (dynLambda!9031 (toChars!4769 (transformation!3403 (rule!5401 (_1!10785 lt!670497)))) (dynLambda!9032 (toValue!4910 (transformation!3403 (rule!5401 (_1!10785 lt!670497)))) lt!670465)))))))

(declare-fun bs!402963 () Bool)

(assert (= bs!402963 d!531724))

(declare-fun m!2150865 () Bool)

(assert (=> bs!402963 m!2150865))

(assert (=> b!1739675 d!531724))

(declare-fun bs!402964 () Bool)

(declare-fun d!531726 () Bool)

(assert (= bs!402964 (and d!531726 b!1739646)))

(declare-fun lambda!69581 () Int)

(assert (=> bs!402964 (= lambda!69581 lambda!69566)))

(declare-fun b!1740072 () Bool)

(declare-fun e!1113708 () Bool)

(assert (=> b!1740072 (= e!1113708 true)))

(assert (=> d!531726 e!1113708))

(assert (= d!531726 b!1740072))

(assert (=> b!1740072 (< (dynLambda!9028 order!11923 (toValue!4910 (transformation!3403 (rule!5401 (_1!10785 lt!670497))))) (dynLambda!9029 order!11925 lambda!69581))))

(assert (=> b!1740072 (< (dynLambda!9030 order!11927 (toChars!4769 (transformation!3403 (rule!5401 (_1!10785 lt!670497))))) (dynLambda!9029 order!11925 lambda!69581))))

(assert (=> d!531726 (= (list!7728 (dynLambda!9031 (toChars!4769 (transformation!3403 (rule!5401 (_1!10785 lt!670497)))) (dynLambda!9032 (toValue!4910 (transformation!3403 (rule!5401 (_1!10785 lt!670497)))) lt!670465))) (list!7728 lt!670465))))

(declare-fun lt!670691 () Unit!33143)

(declare-fun ForallOf!288 (Int BalanceConc!12658) Unit!33143)

(assert (=> d!531726 (= lt!670691 (ForallOf!288 lambda!69581 lt!670465))))

(assert (=> d!531726 (= (lemmaSemiInverse!549 (transformation!3403 (rule!5401 (_1!10785 lt!670497))) lt!670465) lt!670691)))

(declare-fun b_lambda!55719 () Bool)

(assert (=> (not b_lambda!55719) (not d!531726)))

(assert (=> d!531726 t!161741))

(declare-fun b_and!129247 () Bool)

(assert (= b_and!129217 (and (=> t!161741 result!125072) b_and!129247)))

(assert (=> d!531726 t!161743))

(declare-fun b_and!129249 () Bool)

(assert (= b_and!129219 (and (=> t!161743 result!125074) b_and!129249)))

(assert (=> d!531726 t!161745))

(declare-fun b_and!129251 () Bool)

(assert (= b_and!129221 (and (=> t!161745 result!125076) b_and!129251)))

(declare-fun b_lambda!55721 () Bool)

(assert (=> (not b_lambda!55721) (not d!531726)))

(assert (=> d!531726 t!161747))

(declare-fun b_and!129253 () Bool)

(assert (= b_and!129211 (and (=> t!161747 result!125078) b_and!129253)))

(assert (=> d!531726 t!161749))

(declare-fun b_and!129255 () Bool)

(assert (= b_and!129213 (and (=> t!161749 result!125082) b_and!129255)))

(assert (=> d!531726 t!161751))

(declare-fun b_and!129257 () Bool)

(assert (= b_and!129215 (and (=> t!161751 result!125084) b_and!129257)))

(assert (=> d!531726 m!2150265))

(assert (=> d!531726 m!2150267))

(declare-fun m!2150873 () Bool)

(assert (=> d!531726 m!2150873))

(assert (=> d!531726 m!2150265))

(assert (=> d!531726 m!2150419))

(assert (=> d!531726 m!2150267))

(assert (=> d!531726 m!2150269))

(assert (=> b!1739675 d!531726))

(declare-fun b!1740073 () Bool)

(declare-fun res!782206 () Bool)

(declare-fun e!1113709 () Bool)

(assert (=> b!1740073 (=> res!782206 e!1113709)))

(declare-fun e!1113710 () Bool)

(assert (=> b!1740073 (= res!782206 e!1113710)))

(declare-fun res!782202 () Bool)

(assert (=> b!1740073 (=> (not res!782202) (not e!1113710))))

(declare-fun lt!670692 () Bool)

(assert (=> b!1740073 (= res!782202 lt!670692)))

(declare-fun b!1740075 () Bool)

(declare-fun e!1113714 () Bool)

(declare-fun call!110050 () Bool)

(assert (=> b!1740075 (= e!1113714 (= lt!670692 call!110050))))

(declare-fun b!1740076 () Bool)

(assert (=> b!1740076 (= e!1113710 (= (head!3982 lt!670489) (c!283868 (regex!3403 rule!422))))))

(declare-fun b!1740077 () Bool)

(declare-fun e!1113712 () Bool)

(assert (=> b!1740077 (= e!1113712 (matchR!2205 (derivativeStep!1199 (regex!3403 rule!422) (head!3982 lt!670489)) (tail!2596 lt!670489)))))

(declare-fun b!1740078 () Bool)

(declare-fun res!782200 () Bool)

(assert (=> b!1740078 (=> (not res!782200) (not e!1113710))))

(assert (=> b!1740078 (= res!782200 (isEmpty!12029 (tail!2596 lt!670489)))))

(declare-fun b!1740079 () Bool)

(declare-fun e!1113715 () Bool)

(assert (=> b!1740079 (= e!1113709 e!1113715)))

(declare-fun res!782203 () Bool)

(assert (=> b!1740079 (=> (not res!782203) (not e!1113715))))

(assert (=> b!1740079 (= res!782203 (not lt!670692))))

(declare-fun b!1740080 () Bool)

(declare-fun e!1113713 () Bool)

(assert (=> b!1740080 (= e!1113714 e!1113713)))

(declare-fun c!283951 () Bool)

(assert (=> b!1740080 (= c!283951 ((_ is EmptyLang!4731) (regex!3403 rule!422)))))

(declare-fun bm!110045 () Bool)

(assert (=> bm!110045 (= call!110050 (isEmpty!12029 lt!670489))))

(declare-fun b!1740081 () Bool)

(assert (=> b!1740081 (= e!1113713 (not lt!670692))))

(declare-fun b!1740082 () Bool)

(declare-fun e!1113711 () Bool)

(assert (=> b!1740082 (= e!1113711 (not (= (head!3982 lt!670489) (c!283868 (regex!3403 rule!422)))))))

(declare-fun d!531730 () Bool)

(assert (=> d!531730 e!1113714))

(declare-fun c!283950 () Bool)

(assert (=> d!531730 (= c!283950 ((_ is EmptyExpr!4731) (regex!3403 rule!422)))))

(assert (=> d!531730 (= lt!670692 e!1113712)))

(declare-fun c!283952 () Bool)

(assert (=> d!531730 (= c!283952 (isEmpty!12029 lt!670489))))

(assert (=> d!531730 (validRegex!1905 (regex!3403 rule!422))))

(assert (=> d!531730 (= (matchR!2205 (regex!3403 rule!422) lt!670489) lt!670692)))

(declare-fun b!1740074 () Bool)

(declare-fun res!782204 () Bool)

(assert (=> b!1740074 (=> res!782204 e!1113709)))

(assert (=> b!1740074 (= res!782204 (not ((_ is ElementMatch!4731) (regex!3403 rule!422))))))

(assert (=> b!1740074 (= e!1113713 e!1113709)))

(declare-fun b!1740083 () Bool)

(assert (=> b!1740083 (= e!1113712 (nullable!1431 (regex!3403 rule!422)))))

(declare-fun b!1740084 () Bool)

(assert (=> b!1740084 (= e!1113715 e!1113711)))

(declare-fun res!782207 () Bool)

(assert (=> b!1740084 (=> res!782207 e!1113711)))

(assert (=> b!1740084 (= res!782207 call!110050)))

(declare-fun b!1740085 () Bool)

(declare-fun res!782205 () Bool)

(assert (=> b!1740085 (=> res!782205 e!1113711)))

(assert (=> b!1740085 (= res!782205 (not (isEmpty!12029 (tail!2596 lt!670489))))))

(declare-fun b!1740086 () Bool)

(declare-fun res!782201 () Bool)

(assert (=> b!1740086 (=> (not res!782201) (not e!1113710))))

(assert (=> b!1740086 (= res!782201 (not call!110050))))

(assert (= (and d!531730 c!283952) b!1740083))

(assert (= (and d!531730 (not c!283952)) b!1740077))

(assert (= (and d!531730 c!283950) b!1740075))

(assert (= (and d!531730 (not c!283950)) b!1740080))

(assert (= (and b!1740080 c!283951) b!1740081))

(assert (= (and b!1740080 (not c!283951)) b!1740074))

(assert (= (and b!1740074 (not res!782204)) b!1740073))

(assert (= (and b!1740073 res!782202) b!1740086))

(assert (= (and b!1740086 res!782201) b!1740078))

(assert (= (and b!1740078 res!782200) b!1740076))

(assert (= (and b!1740073 (not res!782206)) b!1740079))

(assert (= (and b!1740079 res!782203) b!1740084))

(assert (= (and b!1740084 (not res!782207)) b!1740085))

(assert (= (and b!1740085 (not res!782205)) b!1740082))

(assert (= (or b!1740075 b!1740084 b!1740086) bm!110045))

(declare-fun m!2150875 () Bool)

(assert (=> b!1740083 m!2150875))

(assert (=> b!1740082 m!2150729))

(assert (=> b!1740078 m!2150731))

(assert (=> b!1740078 m!2150731))

(declare-fun m!2150877 () Bool)

(assert (=> b!1740078 m!2150877))

(declare-fun m!2150879 () Bool)

(assert (=> d!531730 m!2150879))

(declare-fun m!2150881 () Bool)

(assert (=> d!531730 m!2150881))

(assert (=> b!1740085 m!2150731))

(assert (=> b!1740085 m!2150731))

(assert (=> b!1740085 m!2150877))

(assert (=> b!1740076 m!2150729))

(assert (=> b!1740077 m!2150729))

(assert (=> b!1740077 m!2150729))

(declare-fun m!2150883 () Bool)

(assert (=> b!1740077 m!2150883))

(assert (=> b!1740077 m!2150731))

(assert (=> b!1740077 m!2150883))

(assert (=> b!1740077 m!2150731))

(declare-fun m!2150885 () Bool)

(assert (=> b!1740077 m!2150885))

(assert (=> bm!110045 m!2150879))

(assert (=> b!1739654 d!531730))

(declare-fun d!531732 () Bool)

(declare-fun res!782216 () Bool)

(declare-fun e!1113726 () Bool)

(assert (=> d!531732 (=> (not res!782216) (not e!1113726))))

(assert (=> d!531732 (= res!782216 (validRegex!1905 (regex!3403 rule!422)))))

(assert (=> d!531732 (= (ruleValid!902 thiss!24550 rule!422) e!1113726)))

(declare-fun b!1740103 () Bool)

(declare-fun res!782217 () Bool)

(assert (=> b!1740103 (=> (not res!782217) (not e!1113726))))

(assert (=> b!1740103 (= res!782217 (not (nullable!1431 (regex!3403 rule!422))))))

(declare-fun b!1740104 () Bool)

(assert (=> b!1740104 (= e!1113726 (not (= (tag!3739 rule!422) (String!21798 ""))))))

(assert (= (and d!531732 res!782216) b!1740103))

(assert (= (and b!1740103 res!782217) b!1740104))

(assert (=> d!531732 m!2150881))

(assert (=> b!1740103 m!2150875))

(assert (=> b!1739654 d!531732))

(declare-fun d!531734 () Bool)

(assert (=> d!531734 (ruleValid!902 thiss!24550 rule!422)))

(declare-fun lt!670704 () Unit!33143)

(declare-fun choose!10700 (LexerInterface!3032 Rule!6606 List!19183) Unit!33143)

(assert (=> d!531734 (= lt!670704 (choose!10700 thiss!24550 rule!422 rules!3447))))

(assert (=> d!531734 (contains!3425 rules!3447 rule!422)))

(assert (=> d!531734 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!426 thiss!24550 rule!422 rules!3447) lt!670704)))

(declare-fun bs!402965 () Bool)

(assert (= bs!402965 d!531734))

(assert (=> bs!402965 m!2150355))

(declare-fun m!2150899 () Bool)

(assert (=> bs!402965 m!2150899))

(assert (=> bs!402965 m!2150341))

(assert (=> b!1739654 d!531734))

(declare-fun d!531738 () Bool)

(assert (=> d!531738 (= (inv!24762 (tag!3739 rule!422)) (= (mod (str.len (value!106657 (tag!3739 rule!422))) 2) 0))))

(assert (=> b!1739653 d!531738))

(declare-fun d!531740 () Bool)

(declare-fun res!782230 () Bool)

(declare-fun e!1113739 () Bool)

(assert (=> d!531740 (=> (not res!782230) (not e!1113739))))

(declare-fun semiInverseModEq!1345 (Int Int) Bool)

(assert (=> d!531740 (= res!782230 (semiInverseModEq!1345 (toChars!4769 (transformation!3403 rule!422)) (toValue!4910 (transformation!3403 rule!422))))))

(assert (=> d!531740 (= (inv!24767 (transformation!3403 rule!422)) e!1113739)))

(declare-fun b!1740121 () Bool)

(declare-fun equivClasses!1286 (Int Int) Bool)

(assert (=> b!1740121 (= e!1113739 (equivClasses!1286 (toChars!4769 (transformation!3403 rule!422)) (toValue!4910 (transformation!3403 rule!422))))))

(assert (= (and d!531740 res!782230) b!1740121))

(declare-fun m!2150901 () Bool)

(assert (=> d!531740 m!2150901))

(declare-fun m!2150903 () Bool)

(assert (=> b!1740121 m!2150903))

(assert (=> b!1739653 d!531740))

(declare-fun b!1740126 () Bool)

(declare-fun res!782241 () Bool)

(declare-fun e!1113743 () Bool)

(assert (=> b!1740126 (=> res!782241 e!1113743)))

(declare-fun e!1113744 () Bool)

(assert (=> b!1740126 (= res!782241 e!1113744)))

(declare-fun res!782237 () Bool)

(assert (=> b!1740126 (=> (not res!782237) (not e!1113744))))

(declare-fun lt!670708 () Bool)

(assert (=> b!1740126 (= res!782237 lt!670708)))

(declare-fun b!1740128 () Bool)

(declare-fun e!1113748 () Bool)

(declare-fun call!110051 () Bool)

(assert (=> b!1740128 (= e!1113748 (= lt!670708 call!110051))))

(declare-fun b!1740129 () Bool)

(assert (=> b!1740129 (= e!1113744 (= (head!3982 lt!670489) (c!283868 (regex!3403 (rule!5401 (_1!10785 lt!670497))))))))

(declare-fun b!1740130 () Bool)

(declare-fun e!1113746 () Bool)

(assert (=> b!1740130 (= e!1113746 (matchR!2205 (derivativeStep!1199 (regex!3403 (rule!5401 (_1!10785 lt!670497))) (head!3982 lt!670489)) (tail!2596 lt!670489)))))

(declare-fun b!1740131 () Bool)

(declare-fun res!782235 () Bool)

(assert (=> b!1740131 (=> (not res!782235) (not e!1113744))))

(assert (=> b!1740131 (= res!782235 (isEmpty!12029 (tail!2596 lt!670489)))))

(declare-fun b!1740132 () Bool)

(declare-fun e!1113749 () Bool)

(assert (=> b!1740132 (= e!1113743 e!1113749)))

(declare-fun res!782238 () Bool)

(assert (=> b!1740132 (=> (not res!782238) (not e!1113749))))

(assert (=> b!1740132 (= res!782238 (not lt!670708))))

(declare-fun b!1740133 () Bool)

(declare-fun e!1113747 () Bool)

(assert (=> b!1740133 (= e!1113748 e!1113747)))

(declare-fun c!283960 () Bool)

(assert (=> b!1740133 (= c!283960 ((_ is EmptyLang!4731) (regex!3403 (rule!5401 (_1!10785 lt!670497)))))))

(declare-fun bm!110046 () Bool)

(assert (=> bm!110046 (= call!110051 (isEmpty!12029 lt!670489))))

(declare-fun b!1740134 () Bool)

(assert (=> b!1740134 (= e!1113747 (not lt!670708))))

(declare-fun b!1740135 () Bool)

(declare-fun e!1113745 () Bool)

(assert (=> b!1740135 (= e!1113745 (not (= (head!3982 lt!670489) (c!283868 (regex!3403 (rule!5401 (_1!10785 lt!670497)))))))))

(declare-fun d!531742 () Bool)

(assert (=> d!531742 e!1113748))

(declare-fun c!283959 () Bool)

(assert (=> d!531742 (= c!283959 ((_ is EmptyExpr!4731) (regex!3403 (rule!5401 (_1!10785 lt!670497)))))))

(assert (=> d!531742 (= lt!670708 e!1113746)))

(declare-fun c!283961 () Bool)

(assert (=> d!531742 (= c!283961 (isEmpty!12029 lt!670489))))

(assert (=> d!531742 (validRegex!1905 (regex!3403 (rule!5401 (_1!10785 lt!670497))))))

(assert (=> d!531742 (= (matchR!2205 (regex!3403 (rule!5401 (_1!10785 lt!670497))) lt!670489) lt!670708)))

(declare-fun b!1740127 () Bool)

(declare-fun res!782239 () Bool)

(assert (=> b!1740127 (=> res!782239 e!1113743)))

(assert (=> b!1740127 (= res!782239 (not ((_ is ElementMatch!4731) (regex!3403 (rule!5401 (_1!10785 lt!670497))))))))

(assert (=> b!1740127 (= e!1113747 e!1113743)))

(declare-fun b!1740136 () Bool)

(assert (=> b!1740136 (= e!1113746 (nullable!1431 (regex!3403 (rule!5401 (_1!10785 lt!670497)))))))

(declare-fun b!1740137 () Bool)

(assert (=> b!1740137 (= e!1113749 e!1113745)))

(declare-fun res!782242 () Bool)

(assert (=> b!1740137 (=> res!782242 e!1113745)))

(assert (=> b!1740137 (= res!782242 call!110051)))

(declare-fun b!1740138 () Bool)

(declare-fun res!782240 () Bool)

(assert (=> b!1740138 (=> res!782240 e!1113745)))

(assert (=> b!1740138 (= res!782240 (not (isEmpty!12029 (tail!2596 lt!670489))))))

(declare-fun b!1740139 () Bool)

(declare-fun res!782236 () Bool)

(assert (=> b!1740139 (=> (not res!782236) (not e!1113744))))

(assert (=> b!1740139 (= res!782236 (not call!110051))))

(assert (= (and d!531742 c!283961) b!1740136))

(assert (= (and d!531742 (not c!283961)) b!1740130))

(assert (= (and d!531742 c!283959) b!1740128))

(assert (= (and d!531742 (not c!283959)) b!1740133))

(assert (= (and b!1740133 c!283960) b!1740134))

(assert (= (and b!1740133 (not c!283960)) b!1740127))

(assert (= (and b!1740127 (not res!782239)) b!1740126))

(assert (= (and b!1740126 res!782237) b!1740139))

(assert (= (and b!1740139 res!782236) b!1740131))

(assert (= (and b!1740131 res!782235) b!1740129))

(assert (= (and b!1740126 (not res!782241)) b!1740132))

(assert (= (and b!1740132 res!782238) b!1740137))

(assert (= (and b!1740137 (not res!782242)) b!1740138))

(assert (= (and b!1740138 (not res!782240)) b!1740135))

(assert (= (or b!1740128 b!1740137 b!1740139) bm!110046))

(assert (=> b!1740136 m!2150749))

(assert (=> b!1740135 m!2150729))

(assert (=> b!1740131 m!2150731))

(assert (=> b!1740131 m!2150731))

(assert (=> b!1740131 m!2150877))

(assert (=> d!531742 m!2150879))

(assert (=> d!531742 m!2150755))

(assert (=> b!1740138 m!2150731))

(assert (=> b!1740138 m!2150731))

(assert (=> b!1740138 m!2150877))

(assert (=> b!1740129 m!2150729))

(assert (=> b!1740130 m!2150729))

(assert (=> b!1740130 m!2150729))

(declare-fun m!2150917 () Bool)

(assert (=> b!1740130 m!2150917))

(assert (=> b!1740130 m!2150731))

(assert (=> b!1740130 m!2150917))

(assert (=> b!1740130 m!2150731))

(declare-fun m!2150919 () Bool)

(assert (=> b!1740130 m!2150919))

(assert (=> bm!110046 m!2150879))

(assert (=> b!1739673 d!531742))

(declare-fun d!531746 () Bool)

(assert (=> d!531746 (not (matchR!2205 (regex!3403 (rule!5401 (_1!10785 lt!670497))) lt!670489))))

(declare-fun lt!670715 () Unit!33143)

(declare-fun choose!10701 (LexerInterface!3032 List!19183 Rule!6606 List!19182 List!19182 Rule!6606) Unit!33143)

(assert (=> d!531746 (= lt!670715 (choose!10701 thiss!24550 rules!3447 (rule!5401 token!523) lt!670489 lt!670489 (rule!5401 (_1!10785 lt!670497))))))

(assert (=> d!531746 (isPrefix!1644 lt!670489 lt!670489)))

(assert (=> d!531746 (= (lemmaMaxPrefNoSmallerRuleMatches!140 thiss!24550 rules!3447 (rule!5401 token!523) lt!670489 lt!670489 (rule!5401 (_1!10785 lt!670497))) lt!670715)))

(declare-fun bs!402967 () Bool)

(assert (= bs!402967 d!531746))

(assert (=> bs!402967 m!2150433))

(declare-fun m!2150929 () Bool)

(assert (=> bs!402967 m!2150929))

(declare-fun m!2150931 () Bool)

(assert (=> bs!402967 m!2150931))

(assert (=> b!1739673 d!531746))

(declare-fun d!531752 () Bool)

(assert (=> d!531752 (= (isEmpty!12029 (_2!10785 lt!670485)) ((_ is Nil!19112) (_2!10785 lt!670485)))))

(assert (=> b!1739652 d!531752))

(declare-fun b!1740152 () Bool)

(declare-fun e!1113758 () Int)

(assert (=> b!1740152 (= e!1113758 0)))

(declare-fun b!1740154 () Bool)

(declare-fun e!1113759 () Int)

(assert (=> b!1740154 (= e!1113759 (+ 1 (getIndex!170 (t!161754 rules!3447) (rule!5401 token!523))))))

(declare-fun b!1740155 () Bool)

(assert (=> b!1740155 (= e!1113759 (- 1))))

(declare-fun d!531754 () Bool)

(declare-fun lt!670718 () Int)

(assert (=> d!531754 (>= lt!670718 0)))

(assert (=> d!531754 (= lt!670718 e!1113758)))

(declare-fun c!283966 () Bool)

(assert (=> d!531754 (= c!283966 (and ((_ is Cons!19113) rules!3447) (= (h!24514 rules!3447) (rule!5401 token!523))))))

(assert (=> d!531754 (contains!3425 rules!3447 (rule!5401 token!523))))

(assert (=> d!531754 (= (getIndex!170 rules!3447 (rule!5401 token!523)) lt!670718)))

(declare-fun b!1740153 () Bool)

(assert (=> b!1740153 (= e!1113758 e!1113759)))

(declare-fun c!283967 () Bool)

(assert (=> b!1740153 (= c!283967 (and ((_ is Cons!19113) rules!3447) (not (= (h!24514 rules!3447) (rule!5401 token!523)))))))

(assert (= (and d!531754 c!283966) b!1740152))

(assert (= (and d!531754 (not c!283966)) b!1740153))

(assert (= (and b!1740153 c!283967) b!1740154))

(assert (= (and b!1740153 (not c!283967)) b!1740155))

(declare-fun m!2150933 () Bool)

(assert (=> b!1740154 m!2150933))

(declare-fun m!2150935 () Bool)

(assert (=> d!531754 m!2150935))

(assert (=> b!1739651 d!531754))

(declare-fun b!1740156 () Bool)

(declare-fun e!1113760 () Int)

(assert (=> b!1740156 (= e!1113760 0)))

(declare-fun b!1740158 () Bool)

(declare-fun e!1113761 () Int)

(assert (=> b!1740158 (= e!1113761 (+ 1 (getIndex!170 (t!161754 rules!3447) (rule!5401 (_1!10785 lt!670497)))))))

(declare-fun b!1740159 () Bool)

(assert (=> b!1740159 (= e!1113761 (- 1))))

(declare-fun d!531756 () Bool)

(declare-fun lt!670719 () Int)

(assert (=> d!531756 (>= lt!670719 0)))

(assert (=> d!531756 (= lt!670719 e!1113760)))

(declare-fun c!283968 () Bool)

(assert (=> d!531756 (= c!283968 (and ((_ is Cons!19113) rules!3447) (= (h!24514 rules!3447) (rule!5401 (_1!10785 lt!670497)))))))

(assert (=> d!531756 (contains!3425 rules!3447 (rule!5401 (_1!10785 lt!670497)))))

(assert (=> d!531756 (= (getIndex!170 rules!3447 (rule!5401 (_1!10785 lt!670497))) lt!670719)))

(declare-fun b!1740157 () Bool)

(assert (=> b!1740157 (= e!1113760 e!1113761)))

(declare-fun c!283969 () Bool)

(assert (=> b!1740157 (= c!283969 (and ((_ is Cons!19113) rules!3447) (not (= (h!24514 rules!3447) (rule!5401 (_1!10785 lt!670497))))))))

(assert (= (and d!531756 c!283968) b!1740156))

(assert (= (and d!531756 (not c!283968)) b!1740157))

(assert (= (and b!1740157 c!283969) b!1740158))

(assert (= (and b!1740157 (not c!283969)) b!1740159))

(declare-fun m!2150937 () Bool)

(assert (=> b!1740158 m!2150937))

(declare-fun m!2150939 () Bool)

(assert (=> d!531756 m!2150939))

(assert (=> b!1739651 d!531756))

(declare-fun d!531758 () Bool)

(assert (=> d!531758 true))

(declare-fun lt!670722 () Bool)

(declare-fun lambda!69584 () Int)

(declare-fun forall!4260 (List!19183 Int) Bool)

(assert (=> d!531758 (= lt!670722 (forall!4260 rules!3447 lambda!69584))))

(declare-fun e!1113766 () Bool)

(assert (=> d!531758 (= lt!670722 e!1113766)))

(declare-fun res!782252 () Bool)

(assert (=> d!531758 (=> res!782252 e!1113766)))

(assert (=> d!531758 (= res!782252 (not ((_ is Cons!19113) rules!3447)))))

(assert (=> d!531758 (= (rulesValidInductive!1132 thiss!24550 rules!3447) lt!670722)))

(declare-fun b!1740164 () Bool)

(declare-fun e!1113767 () Bool)

(assert (=> b!1740164 (= e!1113766 e!1113767)))

(declare-fun res!782251 () Bool)

(assert (=> b!1740164 (=> (not res!782251) (not e!1113767))))

(assert (=> b!1740164 (= res!782251 (ruleValid!902 thiss!24550 (h!24514 rules!3447)))))

(declare-fun b!1740165 () Bool)

(assert (=> b!1740165 (= e!1113767 (rulesValidInductive!1132 thiss!24550 (t!161754 rules!3447)))))

(assert (= (and d!531758 (not res!782252)) b!1740164))

(assert (= (and b!1740164 res!782251) b!1740165))

(declare-fun m!2150941 () Bool)

(assert (=> d!531758 m!2150941))

(declare-fun m!2150943 () Bool)

(assert (=> b!1740164 m!2150943))

(declare-fun m!2150945 () Bool)

(assert (=> b!1740165 m!2150945))

(assert (=> b!1739672 d!531758))

(declare-fun d!531760 () Bool)

(assert (=> d!531760 (= (rule!5401 (_1!10785 lt!670497)) (rule!5401 token!523))))

(declare-fun lt!670725 () Unit!33143)

(declare-fun choose!10703 (List!19183 Rule!6606 Rule!6606) Unit!33143)

(assert (=> d!531760 (= lt!670725 (choose!10703 rules!3447 (rule!5401 (_1!10785 lt!670497)) (rule!5401 token!523)))))

(assert (=> d!531760 (contains!3425 rules!3447 (rule!5401 (_1!10785 lt!670497)))))

(assert (=> d!531760 (= (lemmaSameIndexThenSameElement!104 rules!3447 (rule!5401 (_1!10785 lt!670497)) (rule!5401 token!523)) lt!670725)))

(declare-fun bs!402968 () Bool)

(assert (= bs!402968 d!531760))

(declare-fun m!2150947 () Bool)

(assert (=> bs!402968 m!2150947))

(assert (=> bs!402968 m!2150939))

(assert (=> b!1739671 d!531760))

(declare-fun d!531762 () Bool)

(assert (=> d!531762 (= (inv!24762 (tag!3739 (rule!5401 token!523))) (= (mod (str.len (value!106657 (tag!3739 (rule!5401 token!523)))) 2) 0))))

(assert (=> b!1739649 d!531762))

(declare-fun d!531764 () Bool)

(declare-fun res!782253 () Bool)

(declare-fun e!1113768 () Bool)

(assert (=> d!531764 (=> (not res!782253) (not e!1113768))))

(assert (=> d!531764 (= res!782253 (semiInverseModEq!1345 (toChars!4769 (transformation!3403 (rule!5401 token!523))) (toValue!4910 (transformation!3403 (rule!5401 token!523)))))))

(assert (=> d!531764 (= (inv!24767 (transformation!3403 (rule!5401 token!523))) e!1113768)))

(declare-fun b!1740168 () Bool)

(assert (=> b!1740168 (= e!1113768 (equivClasses!1286 (toChars!4769 (transformation!3403 (rule!5401 token!523))) (toValue!4910 (transformation!3403 (rule!5401 token!523)))))))

(assert (= (and d!531764 res!782253) b!1740168))

(declare-fun m!2150949 () Bool)

(assert (=> d!531764 m!2150949))

(declare-fun m!2150951 () Bool)

(assert (=> b!1740168 m!2150951))

(assert (=> b!1739649 d!531764))

(declare-fun d!531766 () Bool)

(declare-fun res!782258 () Bool)

(declare-fun e!1113771 () Bool)

(assert (=> d!531766 (=> (not res!782258) (not e!1113771))))

(assert (=> d!531766 (= res!782258 (not (isEmpty!12029 (originalCharacters!4217 token!523))))))

(assert (=> d!531766 (= (inv!24768 token!523) e!1113771)))

(declare-fun b!1740173 () Bool)

(declare-fun res!782259 () Bool)

(assert (=> b!1740173 (=> (not res!782259) (not e!1113771))))

(assert (=> b!1740173 (= res!782259 (= (originalCharacters!4217 token!523) (list!7728 (dynLambda!9031 (toChars!4769 (transformation!3403 (rule!5401 token!523))) (value!106658 token!523)))))))

(declare-fun b!1740174 () Bool)

(assert (=> b!1740174 (= e!1113771 (= (size!15192 token!523) (size!15193 (originalCharacters!4217 token!523))))))

(assert (= (and d!531766 res!782258) b!1740173))

(assert (= (and b!1740173 res!782259) b!1740174))

(declare-fun b_lambda!55723 () Bool)

(assert (=> (not b_lambda!55723) (not b!1740173)))

(declare-fun t!161768 () Bool)

(declare-fun tb!104019 () Bool)

(assert (=> (and b!1739642 (= (toChars!4769 (transformation!3403 rule!422)) (toChars!4769 (transformation!3403 (rule!5401 token!523)))) t!161768) tb!104019))

(declare-fun b!1740175 () Bool)

(declare-fun e!1113772 () Bool)

(declare-fun tp!495506 () Bool)

(assert (=> b!1740175 (= e!1113772 (and (inv!24769 (c!283869 (dynLambda!9031 (toChars!4769 (transformation!3403 (rule!5401 token!523))) (value!106658 token!523)))) tp!495506))))

(declare-fun result!125098 () Bool)

(assert (=> tb!104019 (= result!125098 (and (inv!24770 (dynLambda!9031 (toChars!4769 (transformation!3403 (rule!5401 token!523))) (value!106658 token!523))) e!1113772))))

(assert (= tb!104019 b!1740175))

(declare-fun m!2150953 () Bool)

(assert (=> b!1740175 m!2150953))

(declare-fun m!2150955 () Bool)

(assert (=> tb!104019 m!2150955))

(assert (=> b!1740173 t!161768))

(declare-fun b_and!129259 () Bool)

(assert (= b_and!129247 (and (=> t!161768 result!125098) b_and!129259)))

(declare-fun t!161770 () Bool)

(declare-fun tb!104021 () Bool)

(assert (=> (and b!1739644 (= (toChars!4769 (transformation!3403 (rule!5401 token!523))) (toChars!4769 (transformation!3403 (rule!5401 token!523)))) t!161770) tb!104021))

(declare-fun result!125100 () Bool)

(assert (= result!125100 result!125098))

(assert (=> b!1740173 t!161770))

(declare-fun b_and!129261 () Bool)

(assert (= b_and!129249 (and (=> t!161770 result!125100) b_and!129261)))

(declare-fun t!161772 () Bool)

(declare-fun tb!104023 () Bool)

(assert (=> (and b!1739669 (= (toChars!4769 (transformation!3403 (h!24514 rules!3447))) (toChars!4769 (transformation!3403 (rule!5401 token!523)))) t!161772) tb!104023))

(declare-fun result!125102 () Bool)

(assert (= result!125102 result!125098))

(assert (=> b!1740173 t!161772))

(declare-fun b_and!129263 () Bool)

(assert (= b_and!129251 (and (=> t!161772 result!125102) b_and!129263)))

(declare-fun m!2150957 () Bool)

(assert (=> d!531766 m!2150957))

(declare-fun m!2150959 () Bool)

(assert (=> b!1740173 m!2150959))

(assert (=> b!1740173 m!2150959))

(declare-fun m!2150961 () Bool)

(assert (=> b!1740173 m!2150961))

(declare-fun m!2150963 () Bool)

(assert (=> b!1740174 m!2150963))

(assert (=> start!171154 d!531766))

(declare-fun d!531768 () Bool)

(declare-fun c!283970 () Bool)

(assert (=> d!531768 (= c!283970 ((_ is Node!6357) (c!283869 (dynLambda!9031 (toChars!4769 (transformation!3403 (rule!5401 (_1!10785 lt!670497)))) (dynLambda!9032 (toValue!4910 (transformation!3403 (rule!5401 (_1!10785 lt!670497)))) lt!670465)))))))

(declare-fun e!1113773 () Bool)

(assert (=> d!531768 (= (inv!24769 (c!283869 (dynLambda!9031 (toChars!4769 (transformation!3403 (rule!5401 (_1!10785 lt!670497)))) (dynLambda!9032 (toValue!4910 (transformation!3403 (rule!5401 (_1!10785 lt!670497)))) lt!670465)))) e!1113773)))

(declare-fun b!1740176 () Bool)

(assert (=> b!1740176 (= e!1113773 (inv!24771 (c!283869 (dynLambda!9031 (toChars!4769 (transformation!3403 (rule!5401 (_1!10785 lt!670497)))) (dynLambda!9032 (toValue!4910 (transformation!3403 (rule!5401 (_1!10785 lt!670497)))) lt!670465)))))))

(declare-fun b!1740177 () Bool)

(declare-fun e!1113774 () Bool)

(assert (=> b!1740177 (= e!1113773 e!1113774)))

(declare-fun res!782260 () Bool)

(assert (=> b!1740177 (= res!782260 (not ((_ is Leaf!9279) (c!283869 (dynLambda!9031 (toChars!4769 (transformation!3403 (rule!5401 (_1!10785 lt!670497)))) (dynLambda!9032 (toValue!4910 (transformation!3403 (rule!5401 (_1!10785 lt!670497)))) lt!670465))))))))

(assert (=> b!1740177 (=> res!782260 e!1113774)))

(declare-fun b!1740178 () Bool)

(assert (=> b!1740178 (= e!1113774 (inv!24772 (c!283869 (dynLambda!9031 (toChars!4769 (transformation!3403 (rule!5401 (_1!10785 lt!670497)))) (dynLambda!9032 (toValue!4910 (transformation!3403 (rule!5401 (_1!10785 lt!670497)))) lt!670465)))))))

(assert (= (and d!531768 c!283970) b!1740176))

(assert (= (and d!531768 (not c!283970)) b!1740177))

(assert (= (and b!1740177 (not res!782260)) b!1740178))

(declare-fun m!2150965 () Bool)

(assert (=> b!1740176 m!2150965))

(declare-fun m!2150967 () Bool)

(assert (=> b!1740178 m!2150967))

(assert (=> b!1739704 d!531768))

(declare-fun d!531770 () Bool)

(assert (=> d!531770 (= (maxPrefixOneRule!962 thiss!24550 (rule!5401 (_1!10785 lt!670497)) lt!670463) (Some!3829 (tuple2!18767 (Token!6373 (apply!5208 (transformation!3403 (rule!5401 (_1!10785 lt!670497))) (seqFromList!2377 lt!670501)) (rule!5401 (_1!10785 lt!670497)) (size!15193 lt!670501) lt!670501) (_2!10785 lt!670497))))))

(declare-fun lt!670743 () Unit!33143)

(declare-fun choose!10705 (LexerInterface!3032 List!19183 List!19182 List!19182 List!19182 Rule!6606) Unit!33143)

(assert (=> d!531770 (= lt!670743 (choose!10705 thiss!24550 rules!3447 lt!670501 lt!670463 (_2!10785 lt!670497) (rule!5401 (_1!10785 lt!670497))))))

(assert (=> d!531770 (not (isEmpty!12030 rules!3447))))

(assert (=> d!531770 (= (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!361 thiss!24550 rules!3447 lt!670501 lt!670463 (_2!10785 lt!670497) (rule!5401 (_1!10785 lt!670497))) lt!670743)))

(declare-fun bs!402969 () Bool)

(assert (= bs!402969 d!531770))

(assert (=> bs!402969 m!2150315))

(assert (=> bs!402969 m!2150317))

(assert (=> bs!402969 m!2150321))

(assert (=> bs!402969 m!2150323))

(assert (=> bs!402969 m!2150339))

(assert (=> bs!402969 m!2150321))

(declare-fun m!2150969 () Bool)

(assert (=> bs!402969 m!2150969))

(assert (=> b!1739647 d!531770))

(declare-fun d!531772 () Bool)

(declare-fun lt!670747 () List!19182)

(assert (=> d!531772 (= (++!5228 lt!670501 lt!670747) lt!670463)))

(declare-fun e!1113788 () List!19182)

(assert (=> d!531772 (= lt!670747 e!1113788)))

(declare-fun c!283977 () Bool)

(assert (=> d!531772 (= c!283977 ((_ is Cons!19112) lt!670501))))

(assert (=> d!531772 (>= (size!15193 lt!670463) (size!15193 lt!670501))))

(assert (=> d!531772 (= (getSuffix!838 lt!670463 lt!670501) lt!670747)))

(declare-fun b!1740214 () Bool)

(assert (=> b!1740214 (= e!1113788 (getSuffix!838 (tail!2596 lt!670463) (t!161753 lt!670501)))))

(declare-fun b!1740215 () Bool)

(assert (=> b!1740215 (= e!1113788 lt!670463)))

(assert (= (and d!531772 c!283977) b!1740214))

(assert (= (and d!531772 (not c!283977)) b!1740215))

(declare-fun m!2151013 () Bool)

(assert (=> d!531772 m!2151013))

(assert (=> d!531772 m!2150503))

(assert (=> d!531772 m!2150317))

(assert (=> b!1740214 m!2150505))

(assert (=> b!1740214 m!2150505))

(declare-fun m!2151015 () Bool)

(assert (=> b!1740214 m!2151015))

(assert (=> b!1739647 d!531772))

(declare-fun d!531780 () Bool)

(declare-fun lt!670750 () Int)

(assert (=> d!531780 (>= lt!670750 0)))

(declare-fun e!1113791 () Int)

(assert (=> d!531780 (= lt!670750 e!1113791)))

(declare-fun c!283980 () Bool)

(assert (=> d!531780 (= c!283980 ((_ is Nil!19112) lt!670501))))

(assert (=> d!531780 (= (size!15193 lt!670501) lt!670750)))

(declare-fun b!1740220 () Bool)

(assert (=> b!1740220 (= e!1113791 0)))

(declare-fun b!1740221 () Bool)

(assert (=> b!1740221 (= e!1113791 (+ 1 (size!15193 (t!161753 lt!670501))))))

(assert (= (and d!531780 c!283980) b!1740220))

(assert (= (and d!531780 (not c!283980)) b!1740221))

(declare-fun m!2151017 () Bool)

(assert (=> b!1740221 m!2151017))

(assert (=> b!1739647 d!531780))

(declare-fun d!531782 () Bool)

(assert (=> d!531782 (= (apply!5208 (transformation!3403 (rule!5401 (_1!10785 lt!670497))) (seqFromList!2377 lt!670501)) (dynLambda!9032 (toValue!4910 (transformation!3403 (rule!5401 (_1!10785 lt!670497)))) (seqFromList!2377 lt!670501)))))

(declare-fun b_lambda!55725 () Bool)

(assert (=> (not b_lambda!55725) (not d!531782)))

(declare-fun t!161774 () Bool)

(declare-fun tb!104025 () Bool)

(assert (=> (and b!1739642 (= (toValue!4910 (transformation!3403 rule!422)) (toValue!4910 (transformation!3403 (rule!5401 (_1!10785 lt!670497))))) t!161774) tb!104025))

(declare-fun result!125104 () Bool)

(assert (=> tb!104025 (= result!125104 (inv!21 (dynLambda!9032 (toValue!4910 (transformation!3403 (rule!5401 (_1!10785 lt!670497)))) (seqFromList!2377 lt!670501))))))

(declare-fun m!2151019 () Bool)

(assert (=> tb!104025 m!2151019))

(assert (=> d!531782 t!161774))

(declare-fun b_and!129265 () Bool)

(assert (= b_and!129253 (and (=> t!161774 result!125104) b_and!129265)))

(declare-fun tb!104027 () Bool)

(declare-fun t!161776 () Bool)

(assert (=> (and b!1739644 (= (toValue!4910 (transformation!3403 (rule!5401 token!523))) (toValue!4910 (transformation!3403 (rule!5401 (_1!10785 lt!670497))))) t!161776) tb!104027))

(declare-fun result!125106 () Bool)

(assert (= result!125106 result!125104))

(assert (=> d!531782 t!161776))

(declare-fun b_and!129267 () Bool)

(assert (= b_and!129255 (and (=> t!161776 result!125106) b_and!129267)))

(declare-fun t!161778 () Bool)

(declare-fun tb!104029 () Bool)

(assert (=> (and b!1739669 (= (toValue!4910 (transformation!3403 (h!24514 rules!3447))) (toValue!4910 (transformation!3403 (rule!5401 (_1!10785 lt!670497))))) t!161778) tb!104029))

(declare-fun result!125108 () Bool)

(assert (= result!125108 result!125104))

(assert (=> d!531782 t!161778))

(declare-fun b_and!129269 () Bool)

(assert (= b_and!129257 (and (=> t!161778 result!125108) b_and!129269)))

(assert (=> d!531782 m!2150321))

(declare-fun m!2151021 () Bool)

(assert (=> d!531782 m!2151021))

(assert (=> b!1739647 d!531782))

(declare-fun d!531784 () Bool)

(assert (=> d!531784 (= (_2!10785 lt!670497) lt!670473)))

(declare-fun lt!670753 () Unit!33143)

(declare-fun choose!10706 (List!19182 List!19182 List!19182 List!19182 List!19182) Unit!33143)

(assert (=> d!531784 (= lt!670753 (choose!10706 lt!670501 (_2!10785 lt!670497) lt!670501 lt!670473 lt!670463))))

(assert (=> d!531784 (isPrefix!1644 lt!670501 lt!670463)))

(assert (=> d!531784 (= (lemmaSamePrefixThenSameSuffix!788 lt!670501 (_2!10785 lt!670497) lt!670501 lt!670473 lt!670463) lt!670753)))

(declare-fun bs!402971 () Bool)

(assert (= bs!402971 d!531784))

(declare-fun m!2151023 () Bool)

(assert (=> bs!402971 m!2151023))

(assert (=> bs!402971 m!2150417))

(assert (=> b!1739647 d!531784))

(declare-fun b!1740240 () Bool)

(declare-fun res!782303 () Bool)

(declare-fun e!1113803 () Bool)

(assert (=> b!1740240 (=> (not res!782303) (not e!1113803))))

(declare-fun lt!670767 () Option!3830)

(assert (=> b!1740240 (= res!782303 (< (size!15193 (_2!10785 (get!5749 lt!670767))) (size!15193 lt!670463)))))

(declare-fun b!1740241 () Bool)

(declare-fun res!782298 () Bool)

(assert (=> b!1740241 (=> (not res!782298) (not e!1113803))))

(assert (=> b!1740241 (= res!782298 (= (rule!5401 (_1!10785 (get!5749 lt!670767))) (rule!5401 (_1!10785 lt!670497))))))

(declare-fun d!531786 () Bool)

(declare-fun e!1113802 () Bool)

(assert (=> d!531786 e!1113802))

(declare-fun res!782299 () Bool)

(assert (=> d!531786 (=> res!782299 e!1113802)))

(assert (=> d!531786 (= res!782299 (isEmpty!12032 lt!670767))))

(declare-fun e!1113801 () Option!3830)

(assert (=> d!531786 (= lt!670767 e!1113801)))

(declare-fun c!283983 () Bool)

(declare-datatypes ((tuple2!18772 0))(
  ( (tuple2!18773 (_1!10788 List!19182) (_2!10788 List!19182)) )
))
(declare-fun lt!670768 () tuple2!18772)

(assert (=> d!531786 (= c!283983 (isEmpty!12029 (_1!10788 lt!670768)))))

(declare-fun findLongestMatch!350 (Regex!4731 List!19182) tuple2!18772)

(assert (=> d!531786 (= lt!670768 (findLongestMatch!350 (regex!3403 (rule!5401 (_1!10785 lt!670497))) lt!670463))))

(assert (=> d!531786 (ruleValid!902 thiss!24550 (rule!5401 (_1!10785 lt!670497)))))

(assert (=> d!531786 (= (maxPrefixOneRule!962 thiss!24550 (rule!5401 (_1!10785 lt!670497)) lt!670463) lt!670767)))

(declare-fun b!1740242 () Bool)

(assert (=> b!1740242 (= e!1113803 (= (size!15192 (_1!10785 (get!5749 lt!670767))) (size!15193 (originalCharacters!4217 (_1!10785 (get!5749 lt!670767))))))))

(declare-fun b!1740243 () Bool)

(assert (=> b!1740243 (= e!1113801 (Some!3829 (tuple2!18767 (Token!6373 (apply!5208 (transformation!3403 (rule!5401 (_1!10785 lt!670497))) (seqFromList!2377 (_1!10788 lt!670768))) (rule!5401 (_1!10785 lt!670497)) (size!15194 (seqFromList!2377 (_1!10788 lt!670768))) (_1!10788 lt!670768)) (_2!10788 lt!670768))))))

(declare-fun lt!670764 () Unit!33143)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!407 (Regex!4731 List!19182) Unit!33143)

(assert (=> b!1740243 (= lt!670764 (longestMatchIsAcceptedByMatchOrIsEmpty!407 (regex!3403 (rule!5401 (_1!10785 lt!670497))) lt!670463))))

(declare-fun res!782302 () Bool)

(declare-fun findLongestMatchInner!423 (Regex!4731 List!19182 Int List!19182 List!19182 Int) tuple2!18772)

(assert (=> b!1740243 (= res!782302 (isEmpty!12029 (_1!10788 (findLongestMatchInner!423 (regex!3403 (rule!5401 (_1!10785 lt!670497))) Nil!19112 (size!15193 Nil!19112) lt!670463 lt!670463 (size!15193 lt!670463)))))))

(declare-fun e!1113804 () Bool)

(assert (=> b!1740243 (=> res!782302 e!1113804)))

(assert (=> b!1740243 e!1113804))

(declare-fun lt!670766 () Unit!33143)

(assert (=> b!1740243 (= lt!670766 lt!670764)))

(declare-fun lt!670765 () Unit!33143)

(assert (=> b!1740243 (= lt!670765 (lemmaSemiInverse!549 (transformation!3403 (rule!5401 (_1!10785 lt!670497))) (seqFromList!2377 (_1!10788 lt!670768))))))

(declare-fun b!1740244 () Bool)

(declare-fun res!782300 () Bool)

(assert (=> b!1740244 (=> (not res!782300) (not e!1113803))))

(assert (=> b!1740244 (= res!782300 (= (++!5228 (list!7728 (charsOf!2052 (_1!10785 (get!5749 lt!670767)))) (_2!10785 (get!5749 lt!670767))) lt!670463))))

(declare-fun b!1740245 () Bool)

(assert (=> b!1740245 (= e!1113804 (matchR!2205 (regex!3403 (rule!5401 (_1!10785 lt!670497))) (_1!10788 (findLongestMatchInner!423 (regex!3403 (rule!5401 (_1!10785 lt!670497))) Nil!19112 (size!15193 Nil!19112) lt!670463 lt!670463 (size!15193 lt!670463)))))))

(declare-fun b!1740246 () Bool)

(assert (=> b!1740246 (= e!1113801 None!3829)))

(declare-fun b!1740247 () Bool)

(assert (=> b!1740247 (= e!1113802 e!1113803)))

(declare-fun res!782301 () Bool)

(assert (=> b!1740247 (=> (not res!782301) (not e!1113803))))

(assert (=> b!1740247 (= res!782301 (matchR!2205 (regex!3403 (rule!5401 (_1!10785 lt!670497))) (list!7728 (charsOf!2052 (_1!10785 (get!5749 lt!670767))))))))

(declare-fun b!1740248 () Bool)

(declare-fun res!782304 () Bool)

(assert (=> b!1740248 (=> (not res!782304) (not e!1113803))))

(assert (=> b!1740248 (= res!782304 (= (value!106658 (_1!10785 (get!5749 lt!670767))) (apply!5208 (transformation!3403 (rule!5401 (_1!10785 (get!5749 lt!670767)))) (seqFromList!2377 (originalCharacters!4217 (_1!10785 (get!5749 lt!670767)))))))))

(assert (= (and d!531786 c!283983) b!1740246))

(assert (= (and d!531786 (not c!283983)) b!1740243))

(assert (= (and b!1740243 (not res!782302)) b!1740245))

(assert (= (and d!531786 (not res!782299)) b!1740247))

(assert (= (and b!1740247 res!782301) b!1740244))

(assert (= (and b!1740244 res!782300) b!1740240))

(assert (= (and b!1740240 res!782303) b!1740241))

(assert (= (and b!1740241 res!782298) b!1740248))

(assert (= (and b!1740248 res!782304) b!1740242))

(declare-fun m!2151025 () Bool)

(assert (=> b!1740241 m!2151025))

(declare-fun m!2151027 () Bool)

(assert (=> d!531786 m!2151027))

(declare-fun m!2151029 () Bool)

(assert (=> d!531786 m!2151029))

(declare-fun m!2151031 () Bool)

(assert (=> d!531786 m!2151031))

(declare-fun m!2151033 () Bool)

(assert (=> d!531786 m!2151033))

(declare-fun m!2151035 () Bool)

(assert (=> b!1740243 m!2151035))

(assert (=> b!1740243 m!2151035))

(assert (=> b!1740243 m!2150503))

(declare-fun m!2151037 () Bool)

(assert (=> b!1740243 m!2151037))

(assert (=> b!1740243 m!2150503))

(declare-fun m!2151039 () Bool)

(assert (=> b!1740243 m!2151039))

(declare-fun m!2151041 () Bool)

(assert (=> b!1740243 m!2151041))

(assert (=> b!1740243 m!2151039))

(declare-fun m!2151043 () Bool)

(assert (=> b!1740243 m!2151043))

(assert (=> b!1740243 m!2151039))

(declare-fun m!2151045 () Bool)

(assert (=> b!1740243 m!2151045))

(assert (=> b!1740243 m!2151039))

(declare-fun m!2151047 () Bool)

(assert (=> b!1740243 m!2151047))

(declare-fun m!2151049 () Bool)

(assert (=> b!1740243 m!2151049))

(assert (=> b!1740247 m!2151025))

(declare-fun m!2151051 () Bool)

(assert (=> b!1740247 m!2151051))

(assert (=> b!1740247 m!2151051))

(declare-fun m!2151053 () Bool)

(assert (=> b!1740247 m!2151053))

(assert (=> b!1740247 m!2151053))

(declare-fun m!2151055 () Bool)

(assert (=> b!1740247 m!2151055))

(assert (=> b!1740242 m!2151025))

(declare-fun m!2151057 () Bool)

(assert (=> b!1740242 m!2151057))

(assert (=> b!1740240 m!2151025))

(declare-fun m!2151059 () Bool)

(assert (=> b!1740240 m!2151059))

(assert (=> b!1740240 m!2150503))

(assert (=> b!1740248 m!2151025))

(declare-fun m!2151061 () Bool)

(assert (=> b!1740248 m!2151061))

(assert (=> b!1740248 m!2151061))

(declare-fun m!2151063 () Bool)

(assert (=> b!1740248 m!2151063))

(assert (=> b!1740244 m!2151025))

(assert (=> b!1740244 m!2151051))

(assert (=> b!1740244 m!2151051))

(assert (=> b!1740244 m!2151053))

(assert (=> b!1740244 m!2151053))

(declare-fun m!2151065 () Bool)

(assert (=> b!1740244 m!2151065))

(assert (=> b!1740245 m!2151035))

(assert (=> b!1740245 m!2150503))

(assert (=> b!1740245 m!2151035))

(assert (=> b!1740245 m!2150503))

(assert (=> b!1740245 m!2151037))

(declare-fun m!2151067 () Bool)

(assert (=> b!1740245 m!2151067))

(assert (=> b!1739647 d!531786))

(declare-fun d!531788 () Bool)

(declare-fun fromListB!1086 (List!19182) BalanceConc!12658)

(assert (=> d!531788 (= (seqFromList!2377 lt!670501) (fromListB!1086 lt!670501))))

(declare-fun bs!402972 () Bool)

(assert (= bs!402972 d!531788))

(declare-fun m!2151069 () Bool)

(assert (=> bs!402972 m!2151069))

(assert (=> b!1739647 d!531788))

(declare-fun d!531790 () Bool)

(assert (=> d!531790 (= (isDefined!3174 lt!670508) (not (isEmpty!12032 lt!670508)))))

(declare-fun bs!402973 () Bool)

(assert (= bs!402973 d!531790))

(declare-fun m!2151071 () Bool)

(assert (=> bs!402973 m!2151071))

(assert (=> b!1739668 d!531790))

(declare-fun b!1740249 () Bool)

(declare-fun res!782309 () Bool)

(declare-fun e!1113807 () Bool)

(assert (=> b!1740249 (=> (not res!782309) (not e!1113807))))

(declare-fun lt!670771 () Option!3830)

(assert (=> b!1740249 (= res!782309 (< (size!15193 (_2!10785 (get!5749 lt!670771))) (size!15193 lt!670489)))))

(declare-fun b!1740250 () Bool)

(declare-fun res!782310 () Bool)

(assert (=> b!1740250 (=> (not res!782310) (not e!1113807))))

(assert (=> b!1740250 (= res!782310 (= (++!5228 (list!7728 (charsOf!2052 (_1!10785 (get!5749 lt!670771)))) (_2!10785 (get!5749 lt!670771))) lt!670489))))

(declare-fun b!1740251 () Bool)

(declare-fun e!1113805 () Option!3830)

(declare-fun lt!670769 () Option!3830)

(declare-fun lt!670772 () Option!3830)

(assert (=> b!1740251 (= e!1113805 (ite (and ((_ is None!3829) lt!670769) ((_ is None!3829) lt!670772)) None!3829 (ite ((_ is None!3829) lt!670772) lt!670769 (ite ((_ is None!3829) lt!670769) lt!670772 (ite (>= (size!15192 (_1!10785 (v!25258 lt!670769))) (size!15192 (_1!10785 (v!25258 lt!670772)))) lt!670769 lt!670772)))))))

(declare-fun call!110055 () Option!3830)

(assert (=> b!1740251 (= lt!670769 call!110055)))

(assert (=> b!1740251 (= lt!670772 (maxPrefix!1586 thiss!24550 (t!161754 rules!3447) lt!670489))))

(declare-fun b!1740252 () Bool)

(declare-fun res!782307 () Bool)

(assert (=> b!1740252 (=> (not res!782307) (not e!1113807))))

(assert (=> b!1740252 (= res!782307 (matchR!2205 (regex!3403 (rule!5401 (_1!10785 (get!5749 lt!670771)))) (list!7728 (charsOf!2052 (_1!10785 (get!5749 lt!670771))))))))

(declare-fun b!1740253 () Bool)

(declare-fun res!782306 () Bool)

(assert (=> b!1740253 (=> (not res!782306) (not e!1113807))))

(assert (=> b!1740253 (= res!782306 (= (list!7728 (charsOf!2052 (_1!10785 (get!5749 lt!670771)))) (originalCharacters!4217 (_1!10785 (get!5749 lt!670771)))))))

(declare-fun d!531792 () Bool)

(declare-fun e!1113806 () Bool)

(assert (=> d!531792 e!1113806))

(declare-fun res!782311 () Bool)

(assert (=> d!531792 (=> res!782311 e!1113806)))

(assert (=> d!531792 (= res!782311 (isEmpty!12032 lt!670771))))

(assert (=> d!531792 (= lt!670771 e!1113805)))

(declare-fun c!283984 () Bool)

(assert (=> d!531792 (= c!283984 (and ((_ is Cons!19113) rules!3447) ((_ is Nil!19113) (t!161754 rules!3447))))))

(declare-fun lt!670773 () Unit!33143)

(declare-fun lt!670770 () Unit!33143)

(assert (=> d!531792 (= lt!670773 lt!670770)))

(assert (=> d!531792 (isPrefix!1644 lt!670489 lt!670489)))

(assert (=> d!531792 (= lt!670770 (lemmaIsPrefixRefl!1096 lt!670489 lt!670489))))

(assert (=> d!531792 (rulesValidInductive!1132 thiss!24550 rules!3447)))

(assert (=> d!531792 (= (maxPrefix!1586 thiss!24550 rules!3447 lt!670489) lt!670771)))

(declare-fun b!1740254 () Bool)

(assert (=> b!1740254 (= e!1113807 (contains!3425 rules!3447 (rule!5401 (_1!10785 (get!5749 lt!670771)))))))

(declare-fun b!1740255 () Bool)

(assert (=> b!1740255 (= e!1113806 e!1113807)))

(declare-fun res!782305 () Bool)

(assert (=> b!1740255 (=> (not res!782305) (not e!1113807))))

(assert (=> b!1740255 (= res!782305 (isDefined!3174 lt!670771))))

(declare-fun b!1740256 () Bool)

(declare-fun res!782308 () Bool)

(assert (=> b!1740256 (=> (not res!782308) (not e!1113807))))

(assert (=> b!1740256 (= res!782308 (= (value!106658 (_1!10785 (get!5749 lt!670771))) (apply!5208 (transformation!3403 (rule!5401 (_1!10785 (get!5749 lt!670771)))) (seqFromList!2377 (originalCharacters!4217 (_1!10785 (get!5749 lt!670771)))))))))

(declare-fun bm!110050 () Bool)

(assert (=> bm!110050 (= call!110055 (maxPrefixOneRule!962 thiss!24550 (h!24514 rules!3447) lt!670489))))

(declare-fun b!1740257 () Bool)

(assert (=> b!1740257 (= e!1113805 call!110055)))

(assert (= (and d!531792 c!283984) b!1740257))

(assert (= (and d!531792 (not c!283984)) b!1740251))

(assert (= (or b!1740257 b!1740251) bm!110050))

(assert (= (and d!531792 (not res!782311)) b!1740255))

(assert (= (and b!1740255 res!782305) b!1740253))

(assert (= (and b!1740253 res!782306) b!1740249))

(assert (= (and b!1740249 res!782309) b!1740250))

(assert (= (and b!1740250 res!782310) b!1740256))

(assert (= (and b!1740256 res!782308) b!1740252))

(assert (= (and b!1740252 res!782307) b!1740254))

(declare-fun m!2151073 () Bool)

(assert (=> b!1740252 m!2151073))

(declare-fun m!2151075 () Bool)

(assert (=> b!1740252 m!2151075))

(assert (=> b!1740252 m!2151075))

(declare-fun m!2151077 () Bool)

(assert (=> b!1740252 m!2151077))

(assert (=> b!1740252 m!2151077))

(declare-fun m!2151079 () Bool)

(assert (=> b!1740252 m!2151079))

(declare-fun m!2151081 () Bool)

(assert (=> b!1740255 m!2151081))

(assert (=> b!1740256 m!2151073))

(declare-fun m!2151083 () Bool)

(assert (=> b!1740256 m!2151083))

(assert (=> b!1740256 m!2151083))

(declare-fun m!2151085 () Bool)

(assert (=> b!1740256 m!2151085))

(declare-fun m!2151087 () Bool)

(assert (=> b!1740251 m!2151087))

(assert (=> b!1740254 m!2151073))

(declare-fun m!2151089 () Bool)

(assert (=> b!1740254 m!2151089))

(assert (=> b!1740250 m!2151073))

(assert (=> b!1740250 m!2151075))

(assert (=> b!1740250 m!2151075))

(assert (=> b!1740250 m!2151077))

(assert (=> b!1740250 m!2151077))

(declare-fun m!2151091 () Bool)

(assert (=> b!1740250 m!2151091))

(assert (=> b!1740253 m!2151073))

(assert (=> b!1740253 m!2151075))

(assert (=> b!1740253 m!2151075))

(assert (=> b!1740253 m!2151077))

(declare-fun m!2151093 () Bool)

(assert (=> bm!110050 m!2151093))

(declare-fun m!2151095 () Bool)

(assert (=> d!531792 m!2151095))

(assert (=> d!531792 m!2150931))

(declare-fun m!2151097 () Bool)

(assert (=> d!531792 m!2151097))

(assert (=> d!531792 m!2150431))

(assert (=> b!1740249 m!2151073))

(declare-fun m!2151099 () Bool)

(assert (=> b!1740249 m!2151099))

(assert (=> b!1740249 m!2150479))

(assert (=> b!1739668 d!531792))

(declare-fun d!531794 () Bool)

(assert (=> d!531794 (= (list!7728 lt!670505) (list!7729 (c!283869 lt!670505)))))

(declare-fun bs!402974 () Bool)

(assert (= bs!402974 d!531794))

(declare-fun m!2151101 () Bool)

(assert (=> bs!402974 m!2151101))

(assert (=> b!1739668 d!531794))

(declare-fun d!531796 () Bool)

(declare-fun lt!670774 () BalanceConc!12658)

(assert (=> d!531796 (= (list!7728 lt!670774) (originalCharacters!4217 token!523))))

(assert (=> d!531796 (= lt!670774 (dynLambda!9031 (toChars!4769 (transformation!3403 (rule!5401 token!523))) (value!106658 token!523)))))

(assert (=> d!531796 (= (charsOf!2052 token!523) lt!670774)))

(declare-fun b_lambda!55727 () Bool)

(assert (=> (not b_lambda!55727) (not d!531796)))

(assert (=> d!531796 t!161768))

(declare-fun b_and!129271 () Bool)

(assert (= b_and!129259 (and (=> t!161768 result!125098) b_and!129271)))

(assert (=> d!531796 t!161770))

(declare-fun b_and!129273 () Bool)

(assert (= b_and!129261 (and (=> t!161770 result!125100) b_and!129273)))

(assert (=> d!531796 t!161772))

(declare-fun b_and!129275 () Bool)

(assert (= b_and!129263 (and (=> t!161772 result!125102) b_and!129275)))

(declare-fun m!2151103 () Bool)

(assert (=> d!531796 m!2151103))

(assert (=> d!531796 m!2150959))

(assert (=> b!1739668 d!531796))

(declare-fun d!531798 () Bool)

(assert (=> d!531798 (= (get!5749 lt!670508) (v!25258 lt!670508))))

(assert (=> b!1739667 d!531798))

(declare-fun d!531800 () Bool)

(declare-fun choose!10707 (Int) Bool)

(assert (=> d!531800 (= (Forall!778 lambda!69566) (choose!10707 lambda!69566))))

(declare-fun bs!402975 () Bool)

(assert (= bs!402975 d!531800))

(declare-fun m!2151105 () Bool)

(assert (=> bs!402975 m!2151105))

(assert (=> b!1739646 d!531800))

(declare-fun d!531802 () Bool)

(declare-fun e!1113810 () Bool)

(assert (=> d!531802 e!1113810))

(declare-fun res!782314 () Bool)

(assert (=> d!531802 (=> (not res!782314) (not e!1113810))))

(assert (=> d!531802 (= res!782314 (semiInverseModEq!1345 (toChars!4769 (transformation!3403 (rule!5401 (_1!10785 lt!670497)))) (toValue!4910 (transformation!3403 (rule!5401 (_1!10785 lt!670497))))))))

(declare-fun Unit!33162 () Unit!33143)

(assert (=> d!531802 (= (lemmaInv!610 (transformation!3403 (rule!5401 (_1!10785 lt!670497)))) Unit!33162)))

(declare-fun b!1740260 () Bool)

(assert (=> b!1740260 (= e!1113810 (equivClasses!1286 (toChars!4769 (transformation!3403 (rule!5401 (_1!10785 lt!670497)))) (toValue!4910 (transformation!3403 (rule!5401 (_1!10785 lt!670497))))))))

(assert (= (and d!531802 res!782314) b!1740260))

(declare-fun m!2151107 () Bool)

(assert (=> d!531802 m!2151107))

(declare-fun m!2151109 () Bool)

(assert (=> b!1740260 m!2151109))

(assert (=> b!1739646 d!531802))

(declare-fun b!1740262 () Bool)

(declare-fun e!1113811 () List!19182)

(assert (=> b!1740262 (= e!1113811 (Cons!19112 (h!24513 lt!670489) (++!5228 (t!161753 lt!670489) (Cons!19112 (head!3982 lt!670510) Nil!19112))))))

(declare-fun e!1113812 () Bool)

(declare-fun lt!670775 () List!19182)

(declare-fun b!1740264 () Bool)

(assert (=> b!1740264 (= e!1113812 (or (not (= (Cons!19112 (head!3982 lt!670510) Nil!19112) Nil!19112)) (= lt!670775 lt!670489)))))

(declare-fun b!1740263 () Bool)

(declare-fun res!782315 () Bool)

(assert (=> b!1740263 (=> (not res!782315) (not e!1113812))))

(assert (=> b!1740263 (= res!782315 (= (size!15193 lt!670775) (+ (size!15193 lt!670489) (size!15193 (Cons!19112 (head!3982 lt!670510) Nil!19112)))))))

(declare-fun b!1740261 () Bool)

(assert (=> b!1740261 (= e!1113811 (Cons!19112 (head!3982 lt!670510) Nil!19112))))

(declare-fun d!531804 () Bool)

(assert (=> d!531804 e!1113812))

(declare-fun res!782316 () Bool)

(assert (=> d!531804 (=> (not res!782316) (not e!1113812))))

(assert (=> d!531804 (= res!782316 (= (content!2737 lt!670775) ((_ map or) (content!2737 lt!670489) (content!2737 (Cons!19112 (head!3982 lt!670510) Nil!19112)))))))

(assert (=> d!531804 (= lt!670775 e!1113811)))

(declare-fun c!283985 () Bool)

(assert (=> d!531804 (= c!283985 ((_ is Nil!19112) lt!670489))))

(assert (=> d!531804 (= (++!5228 lt!670489 (Cons!19112 (head!3982 lt!670510) Nil!19112)) lt!670775)))

(assert (= (and d!531804 c!283985) b!1740261))

(assert (= (and d!531804 (not c!283985)) b!1740262))

(assert (= (and d!531804 res!782316) b!1740263))

(assert (= (and b!1740263 res!782315) b!1740264))

(declare-fun m!2151111 () Bool)

(assert (=> b!1740262 m!2151111))

(declare-fun m!2151113 () Bool)

(assert (=> b!1740263 m!2151113))

(assert (=> b!1740263 m!2150479))

(declare-fun m!2151115 () Bool)

(assert (=> b!1740263 m!2151115))

(declare-fun m!2151117 () Bool)

(assert (=> d!531804 m!2151117))

(assert (=> d!531804 m!2150485))

(declare-fun m!2151119 () Bool)

(assert (=> d!531804 m!2151119))

(assert (=> b!1739645 d!531804))

(declare-fun d!531806 () Bool)

(assert (=> d!531806 (not (matchR!2205 lt!670481 lt!670501))))

(declare-fun lt!670778 () Unit!33143)

(declare-fun choose!10709 (Regex!4731 List!19182 List!19182) Unit!33143)

(assert (=> d!531806 (= lt!670778 (choose!10709 lt!670481 lt!670512 lt!670501))))

(assert (=> d!531806 (validRegex!1905 lt!670481)))

(assert (=> d!531806 (= (lemmaNotPrefixMatchThenCannotMatchLonger!112 lt!670481 lt!670512 lt!670501) lt!670778)))

(declare-fun bs!402976 () Bool)

(assert (= bs!402976 d!531806))

(assert (=> bs!402976 m!2150303))

(declare-fun m!2151121 () Bool)

(assert (=> bs!402976 m!2151121))

(declare-fun m!2151123 () Bool)

(assert (=> bs!402976 m!2151123))

(assert (=> b!1739645 d!531806))

(declare-fun d!531808 () Bool)

(assert (=> d!531808 (isPrefix!1644 (++!5228 lt!670489 (Cons!19112 (head!3982 (getSuffix!838 lt!670463 lt!670489)) Nil!19112)) lt!670463)))

(declare-fun lt!670781 () Unit!33143)

(declare-fun choose!10710 (List!19182 List!19182) Unit!33143)

(assert (=> d!531808 (= lt!670781 (choose!10710 lt!670489 lt!670463))))

(assert (=> d!531808 (isPrefix!1644 lt!670489 lt!670463)))

(assert (=> d!531808 (= (lemmaAddHeadSuffixToPrefixStillPrefix!239 lt!670489 lt!670463) lt!670781)))

(declare-fun bs!402977 () Bool)

(assert (= bs!402977 d!531808))

(assert (=> bs!402977 m!2150415))

(assert (=> bs!402977 m!2150305))

(declare-fun m!2151125 () Bool)

(assert (=> bs!402977 m!2151125))

(assert (=> bs!402977 m!2151125))

(declare-fun m!2151127 () Bool)

(assert (=> bs!402977 m!2151127))

(declare-fun m!2151129 () Bool)

(assert (=> bs!402977 m!2151129))

(assert (=> bs!402977 m!2150305))

(declare-fun m!2151131 () Bool)

(assert (=> bs!402977 m!2151131))

(assert (=> b!1739645 d!531808))

(declare-fun d!531810 () Bool)

(assert (=> d!531810 (= suffix!1421 lt!670510)))

(declare-fun lt!670782 () Unit!33143)

(assert (=> d!531810 (= lt!670782 (choose!10706 lt!670489 suffix!1421 lt!670489 lt!670510 lt!670463))))

(assert (=> d!531810 (isPrefix!1644 lt!670489 lt!670463)))

(assert (=> d!531810 (= (lemmaSamePrefixThenSameSuffix!788 lt!670489 suffix!1421 lt!670489 lt!670510 lt!670463) lt!670782)))

(declare-fun bs!402978 () Bool)

(assert (= bs!402978 d!531810))

(declare-fun m!2151133 () Bool)

(assert (=> bs!402978 m!2151133))

(assert (=> bs!402978 m!2150415))

(assert (=> b!1739645 d!531810))

(declare-fun d!531812 () Bool)

(declare-fun lt!670783 () List!19182)

(assert (=> d!531812 (= (++!5228 lt!670489 lt!670783) lt!670463)))

(declare-fun e!1113813 () List!19182)

(assert (=> d!531812 (= lt!670783 e!1113813)))

(declare-fun c!283986 () Bool)

(assert (=> d!531812 (= c!283986 ((_ is Cons!19112) lt!670489))))

(assert (=> d!531812 (>= (size!15193 lt!670463) (size!15193 lt!670489))))

(assert (=> d!531812 (= (getSuffix!838 lt!670463 lt!670489) lt!670783)))

(declare-fun b!1740265 () Bool)

(assert (=> b!1740265 (= e!1113813 (getSuffix!838 (tail!2596 lt!670463) (t!161753 lt!670489)))))

(declare-fun b!1740266 () Bool)

(assert (=> b!1740266 (= e!1113813 lt!670463)))

(assert (= (and d!531812 c!283986) b!1740265))

(assert (= (and d!531812 (not c!283986)) b!1740266))

(declare-fun m!2151135 () Bool)

(assert (=> d!531812 m!2151135))

(assert (=> d!531812 m!2150503))

(assert (=> d!531812 m!2150479))

(assert (=> b!1740265 m!2150505))

(assert (=> b!1740265 m!2150505))

(declare-fun m!2151137 () Bool)

(assert (=> b!1740265 m!2151137))

(assert (=> b!1739645 d!531812))

(declare-fun b!1740268 () Bool)

(declare-fun res!782319 () Bool)

(declare-fun e!1113814 () Bool)

(assert (=> b!1740268 (=> (not res!782319) (not e!1113814))))

(assert (=> b!1740268 (= res!782319 (= (head!3982 lt!670512) (head!3982 lt!670501)))))

(declare-fun b!1740270 () Bool)

(declare-fun e!1113815 () Bool)

(assert (=> b!1740270 (= e!1113815 (>= (size!15193 lt!670501) (size!15193 lt!670512)))))

(declare-fun b!1740269 () Bool)

(assert (=> b!1740269 (= e!1113814 (isPrefix!1644 (tail!2596 lt!670512) (tail!2596 lt!670501)))))

(declare-fun d!531814 () Bool)

(assert (=> d!531814 e!1113815))

(declare-fun res!782320 () Bool)

(assert (=> d!531814 (=> res!782320 e!1113815)))

(declare-fun lt!670784 () Bool)

(assert (=> d!531814 (= res!782320 (not lt!670784))))

(declare-fun e!1113816 () Bool)

(assert (=> d!531814 (= lt!670784 e!1113816)))

(declare-fun res!782318 () Bool)

(assert (=> d!531814 (=> res!782318 e!1113816)))

(assert (=> d!531814 (= res!782318 ((_ is Nil!19112) lt!670512))))

(assert (=> d!531814 (= (isPrefix!1644 lt!670512 lt!670501) lt!670784)))

(declare-fun b!1740267 () Bool)

(assert (=> b!1740267 (= e!1113816 e!1113814)))

(declare-fun res!782317 () Bool)

(assert (=> b!1740267 (=> (not res!782317) (not e!1113814))))

(assert (=> b!1740267 (= res!782317 (not ((_ is Nil!19112) lt!670501)))))

(assert (= (and d!531814 (not res!782318)) b!1740267))

(assert (= (and b!1740267 res!782317) b!1740268))

(assert (= (and b!1740268 res!782319) b!1740269))

(assert (= (and d!531814 (not res!782320)) b!1740270))

(assert (=> b!1740268 m!2150831))

(assert (=> b!1740268 m!2150489))

(assert (=> b!1740270 m!2150317))

(declare-fun m!2151139 () Bool)

(assert (=> b!1740270 m!2151139))

(assert (=> b!1740269 m!2150835))

(assert (=> b!1740269 m!2150495))

(assert (=> b!1740269 m!2150835))

(assert (=> b!1740269 m!2150495))

(declare-fun m!2151141 () Bool)

(assert (=> b!1740269 m!2151141))

(assert (=> b!1739645 d!531814))

(declare-fun b!1740272 () Bool)

(declare-fun res!782323 () Bool)

(declare-fun e!1113817 () Bool)

(assert (=> b!1740272 (=> (not res!782323) (not e!1113817))))

(assert (=> b!1740272 (= res!782323 (= (head!3982 (++!5228 lt!670489 (Cons!19112 (head!3982 lt!670510) Nil!19112))) (head!3982 lt!670463)))))

(declare-fun e!1113818 () Bool)

(declare-fun b!1740274 () Bool)

(assert (=> b!1740274 (= e!1113818 (>= (size!15193 lt!670463) (size!15193 (++!5228 lt!670489 (Cons!19112 (head!3982 lt!670510) Nil!19112)))))))

(declare-fun b!1740273 () Bool)

(assert (=> b!1740273 (= e!1113817 (isPrefix!1644 (tail!2596 (++!5228 lt!670489 (Cons!19112 (head!3982 lt!670510) Nil!19112))) (tail!2596 lt!670463)))))

(declare-fun d!531816 () Bool)

(assert (=> d!531816 e!1113818))

(declare-fun res!782324 () Bool)

(assert (=> d!531816 (=> res!782324 e!1113818)))

(declare-fun lt!670785 () Bool)

(assert (=> d!531816 (= res!782324 (not lt!670785))))

(declare-fun e!1113819 () Bool)

(assert (=> d!531816 (= lt!670785 e!1113819)))

(declare-fun res!782322 () Bool)

(assert (=> d!531816 (=> res!782322 e!1113819)))

(assert (=> d!531816 (= res!782322 ((_ is Nil!19112) (++!5228 lt!670489 (Cons!19112 (head!3982 lt!670510) Nil!19112))))))

(assert (=> d!531816 (= (isPrefix!1644 (++!5228 lt!670489 (Cons!19112 (head!3982 lt!670510) Nil!19112)) lt!670463) lt!670785)))

(declare-fun b!1740271 () Bool)

(assert (=> b!1740271 (= e!1113819 e!1113817)))

(declare-fun res!782321 () Bool)

(assert (=> b!1740271 (=> (not res!782321) (not e!1113817))))

(assert (=> b!1740271 (= res!782321 (not ((_ is Nil!19112) lt!670463)))))

(assert (= (and d!531816 (not res!782322)) b!1740271))

(assert (= (and b!1740271 res!782321) b!1740272))

(assert (= (and b!1740272 res!782323) b!1740273))

(assert (= (and d!531816 (not res!782324)) b!1740274))

(assert (=> b!1740272 m!2150291))

(declare-fun m!2151143 () Bool)

(assert (=> b!1740272 m!2151143))

(assert (=> b!1740272 m!2150501))

(assert (=> b!1740274 m!2150503))

(assert (=> b!1740274 m!2150291))

(declare-fun m!2151145 () Bool)

(assert (=> b!1740274 m!2151145))

(assert (=> b!1740273 m!2150291))

(declare-fun m!2151147 () Bool)

(assert (=> b!1740273 m!2151147))

(assert (=> b!1740273 m!2150505))

(assert (=> b!1740273 m!2151147))

(assert (=> b!1740273 m!2150505))

(declare-fun m!2151149 () Bool)

(assert (=> b!1740273 m!2151149))

(assert (=> b!1739645 d!531816))

(declare-fun d!531818 () Bool)

(assert (=> d!531818 (matchR!2205 (rulesRegex!761 thiss!24550 rules!3447) (list!7728 (charsOf!2052 (_1!10785 lt!670497))))))

(declare-fun lt!670788 () Unit!33143)

(declare-fun choose!10711 (LexerInterface!3032 List!19183 List!19182 Token!6372 Rule!6606 List!19182) Unit!33143)

(assert (=> d!531818 (= lt!670788 (choose!10711 thiss!24550 rules!3447 lt!670463 (_1!10785 lt!670497) (rule!5401 (_1!10785 lt!670497)) (_2!10785 lt!670497)))))

(assert (=> d!531818 (not (isEmpty!12030 rules!3447))))

(assert (=> d!531818 (= (lemmaMaxPrefixThenMatchesRulesRegex!152 thiss!24550 rules!3447 lt!670463 (_1!10785 lt!670497) (rule!5401 (_1!10785 lt!670497)) (_2!10785 lt!670497)) lt!670788)))

(declare-fun bs!402979 () Bool)

(assert (= bs!402979 d!531818))

(assert (=> bs!402979 m!2150339))

(assert (=> bs!402979 m!2150373))

(assert (=> bs!402979 m!2150377))

(declare-fun m!2151151 () Bool)

(assert (=> bs!402979 m!2151151))

(assert (=> bs!402979 m!2150375))

(assert (=> bs!402979 m!2150377))

(assert (=> bs!402979 m!2150373))

(assert (=> bs!402979 m!2150375))

(declare-fun m!2151153 () Bool)

(assert (=> bs!402979 m!2151153))

(assert (=> b!1739645 d!531818))

(declare-fun b!1740275 () Bool)

(declare-fun res!782331 () Bool)

(declare-fun e!1113820 () Bool)

(assert (=> b!1740275 (=> res!782331 e!1113820)))

(declare-fun e!1113821 () Bool)

(assert (=> b!1740275 (= res!782331 e!1113821)))

(declare-fun res!782327 () Bool)

(assert (=> b!1740275 (=> (not res!782327) (not e!1113821))))

(declare-fun lt!670789 () Bool)

(assert (=> b!1740275 (= res!782327 lt!670789)))

(declare-fun b!1740277 () Bool)

(declare-fun e!1113825 () Bool)

(declare-fun call!110056 () Bool)

(assert (=> b!1740277 (= e!1113825 (= lt!670789 call!110056))))

(declare-fun b!1740278 () Bool)

(assert (=> b!1740278 (= e!1113821 (= (head!3982 lt!670501) (c!283868 lt!670481)))))

(declare-fun b!1740279 () Bool)

(declare-fun e!1113823 () Bool)

(assert (=> b!1740279 (= e!1113823 (matchR!2205 (derivativeStep!1199 lt!670481 (head!3982 lt!670501)) (tail!2596 lt!670501)))))

(declare-fun b!1740280 () Bool)

(declare-fun res!782325 () Bool)

(assert (=> b!1740280 (=> (not res!782325) (not e!1113821))))

(assert (=> b!1740280 (= res!782325 (isEmpty!12029 (tail!2596 lt!670501)))))

(declare-fun b!1740281 () Bool)

(declare-fun e!1113826 () Bool)

(assert (=> b!1740281 (= e!1113820 e!1113826)))

(declare-fun res!782328 () Bool)

(assert (=> b!1740281 (=> (not res!782328) (not e!1113826))))

(assert (=> b!1740281 (= res!782328 (not lt!670789))))

(declare-fun b!1740282 () Bool)

(declare-fun e!1113824 () Bool)

(assert (=> b!1740282 (= e!1113825 e!1113824)))

(declare-fun c!283988 () Bool)

(assert (=> b!1740282 (= c!283988 ((_ is EmptyLang!4731) lt!670481))))

(declare-fun bm!110051 () Bool)

(assert (=> bm!110051 (= call!110056 (isEmpty!12029 lt!670501))))

(declare-fun b!1740283 () Bool)

(assert (=> b!1740283 (= e!1113824 (not lt!670789))))

(declare-fun b!1740284 () Bool)

(declare-fun e!1113822 () Bool)

(assert (=> b!1740284 (= e!1113822 (not (= (head!3982 lt!670501) (c!283868 lt!670481))))))

(declare-fun d!531820 () Bool)

(assert (=> d!531820 e!1113825))

(declare-fun c!283987 () Bool)

(assert (=> d!531820 (= c!283987 ((_ is EmptyExpr!4731) lt!670481))))

(assert (=> d!531820 (= lt!670789 e!1113823)))

(declare-fun c!283989 () Bool)

(assert (=> d!531820 (= c!283989 (isEmpty!12029 lt!670501))))

(assert (=> d!531820 (validRegex!1905 lt!670481)))

(assert (=> d!531820 (= (matchR!2205 lt!670481 lt!670501) lt!670789)))

(declare-fun b!1740276 () Bool)

(declare-fun res!782329 () Bool)

(assert (=> b!1740276 (=> res!782329 e!1113820)))

(assert (=> b!1740276 (= res!782329 (not ((_ is ElementMatch!4731) lt!670481)))))

(assert (=> b!1740276 (= e!1113824 e!1113820)))

(declare-fun b!1740285 () Bool)

(assert (=> b!1740285 (= e!1113823 (nullable!1431 lt!670481))))

(declare-fun b!1740286 () Bool)

(assert (=> b!1740286 (= e!1113826 e!1113822)))

(declare-fun res!782332 () Bool)

(assert (=> b!1740286 (=> res!782332 e!1113822)))

(assert (=> b!1740286 (= res!782332 call!110056)))

(declare-fun b!1740287 () Bool)

(declare-fun res!782330 () Bool)

(assert (=> b!1740287 (=> res!782330 e!1113822)))

(assert (=> b!1740287 (= res!782330 (not (isEmpty!12029 (tail!2596 lt!670501))))))

(declare-fun b!1740288 () Bool)

(declare-fun res!782326 () Bool)

(assert (=> b!1740288 (=> (not res!782326) (not e!1113821))))

(assert (=> b!1740288 (= res!782326 (not call!110056))))

(assert (= (and d!531820 c!283989) b!1740285))

(assert (= (and d!531820 (not c!283989)) b!1740279))

(assert (= (and d!531820 c!283987) b!1740277))

(assert (= (and d!531820 (not c!283987)) b!1740282))

(assert (= (and b!1740282 c!283988) b!1740283))

(assert (= (and b!1740282 (not c!283988)) b!1740276))

(assert (= (and b!1740276 (not res!782329)) b!1740275))

(assert (= (and b!1740275 res!782327) b!1740288))

(assert (= (and b!1740288 res!782326) b!1740280))

(assert (= (and b!1740280 res!782325) b!1740278))

(assert (= (and b!1740275 (not res!782331)) b!1740281))

(assert (= (and b!1740281 res!782328) b!1740286))

(assert (= (and b!1740286 (not res!782332)) b!1740287))

(assert (= (and b!1740287 (not res!782330)) b!1740284))

(assert (= (or b!1740277 b!1740286 b!1740288) bm!110051))

(declare-fun m!2151155 () Bool)

(assert (=> b!1740285 m!2151155))

(assert (=> b!1740284 m!2150489))

(assert (=> b!1740280 m!2150495))

(assert (=> b!1740280 m!2150495))

(assert (=> b!1740280 m!2150751))

(assert (=> d!531820 m!2150753))

(assert (=> d!531820 m!2151123))

(assert (=> b!1740287 m!2150495))

(assert (=> b!1740287 m!2150495))

(assert (=> b!1740287 m!2150751))

(assert (=> b!1740278 m!2150489))

(assert (=> b!1740279 m!2150489))

(assert (=> b!1740279 m!2150489))

(declare-fun m!2151157 () Bool)

(assert (=> b!1740279 m!2151157))

(assert (=> b!1740279 m!2150495))

(assert (=> b!1740279 m!2151157))

(assert (=> b!1740279 m!2150495))

(declare-fun m!2151159 () Bool)

(assert (=> b!1740279 m!2151159))

(assert (=> bm!110051 m!2150753))

(assert (=> b!1739645 d!531820))

(declare-fun d!531822 () Bool)

(assert (=> d!531822 (= (head!3982 lt!670510) (h!24513 lt!670510))))

(assert (=> b!1739645 d!531822))

(declare-fun d!531824 () Bool)

(assert (=> d!531824 (isPrefix!1644 lt!670512 lt!670501)))

(declare-fun lt!670792 () Unit!33143)

(declare-fun choose!10712 (List!19182 List!19182 List!19182) Unit!33143)

(assert (=> d!531824 (= lt!670792 (choose!10712 lt!670501 lt!670512 lt!670463))))

(assert (=> d!531824 (isPrefix!1644 lt!670501 lt!670463)))

(assert (=> d!531824 (= (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!119 lt!670501 lt!670512 lt!670463) lt!670792)))

(declare-fun bs!402980 () Bool)

(assert (= bs!402980 d!531824))

(assert (=> bs!402980 m!2150307))

(declare-fun m!2151161 () Bool)

(assert (=> bs!402980 m!2151161))

(assert (=> bs!402980 m!2150417))

(assert (=> b!1739645 d!531824))

(declare-fun d!531826 () Bool)

(declare-fun lt!670795 () Int)

(assert (=> d!531826 (= lt!670795 (size!15193 (list!7728 lt!670505)))))

(declare-fun size!15196 (Conc!6357) Int)

(assert (=> d!531826 (= lt!670795 (size!15196 (c!283869 lt!670505)))))

(assert (=> d!531826 (= (size!15194 lt!670505) lt!670795)))

(declare-fun bs!402981 () Bool)

(assert (= bs!402981 d!531826))

(assert (=> bs!402981 m!2150349))

(assert (=> bs!402981 m!2150349))

(declare-fun m!2151163 () Bool)

(assert (=> bs!402981 m!2151163))

(declare-fun m!2151165 () Bool)

(assert (=> bs!402981 m!2151165))

(assert (=> b!1739687 d!531826))

(declare-fun b!1740289 () Bool)

(declare-fun res!782339 () Bool)

(declare-fun e!1113827 () Bool)

(assert (=> b!1740289 (=> res!782339 e!1113827)))

(declare-fun e!1113828 () Bool)

(assert (=> b!1740289 (= res!782339 e!1113828)))

(declare-fun res!782335 () Bool)

(assert (=> b!1740289 (=> (not res!782335) (not e!1113828))))

(declare-fun lt!670796 () Bool)

(assert (=> b!1740289 (= res!782335 lt!670796)))

(declare-fun b!1740291 () Bool)

(declare-fun e!1113832 () Bool)

(declare-fun call!110057 () Bool)

(assert (=> b!1740291 (= e!1113832 (= lt!670796 call!110057))))

(declare-fun b!1740292 () Bool)

(assert (=> b!1740292 (= e!1113828 (= (head!3982 lt!670489) (c!283868 lt!670481)))))

(declare-fun b!1740293 () Bool)

(declare-fun e!1113830 () Bool)

(assert (=> b!1740293 (= e!1113830 (matchR!2205 (derivativeStep!1199 lt!670481 (head!3982 lt!670489)) (tail!2596 lt!670489)))))

(declare-fun b!1740294 () Bool)

(declare-fun res!782333 () Bool)

(assert (=> b!1740294 (=> (not res!782333) (not e!1113828))))

(assert (=> b!1740294 (= res!782333 (isEmpty!12029 (tail!2596 lt!670489)))))

(declare-fun b!1740295 () Bool)

(declare-fun e!1113833 () Bool)

(assert (=> b!1740295 (= e!1113827 e!1113833)))

(declare-fun res!782336 () Bool)

(assert (=> b!1740295 (=> (not res!782336) (not e!1113833))))

(assert (=> b!1740295 (= res!782336 (not lt!670796))))

(declare-fun b!1740296 () Bool)

(declare-fun e!1113831 () Bool)

(assert (=> b!1740296 (= e!1113832 e!1113831)))

(declare-fun c!283991 () Bool)

(assert (=> b!1740296 (= c!283991 ((_ is EmptyLang!4731) lt!670481))))

(declare-fun bm!110052 () Bool)

(assert (=> bm!110052 (= call!110057 (isEmpty!12029 lt!670489))))

(declare-fun b!1740297 () Bool)

(assert (=> b!1740297 (= e!1113831 (not lt!670796))))

(declare-fun b!1740298 () Bool)

(declare-fun e!1113829 () Bool)

(assert (=> b!1740298 (= e!1113829 (not (= (head!3982 lt!670489) (c!283868 lt!670481))))))

(declare-fun d!531828 () Bool)

(assert (=> d!531828 e!1113832))

(declare-fun c!283990 () Bool)

(assert (=> d!531828 (= c!283990 ((_ is EmptyExpr!4731) lt!670481))))

(assert (=> d!531828 (= lt!670796 e!1113830)))

(declare-fun c!283992 () Bool)

(assert (=> d!531828 (= c!283992 (isEmpty!12029 lt!670489))))

(assert (=> d!531828 (validRegex!1905 lt!670481)))

(assert (=> d!531828 (= (matchR!2205 lt!670481 lt!670489) lt!670796)))

(declare-fun b!1740290 () Bool)

(declare-fun res!782337 () Bool)

(assert (=> b!1740290 (=> res!782337 e!1113827)))

(assert (=> b!1740290 (= res!782337 (not ((_ is ElementMatch!4731) lt!670481)))))

(assert (=> b!1740290 (= e!1113831 e!1113827)))

(declare-fun b!1740299 () Bool)

(assert (=> b!1740299 (= e!1113830 (nullable!1431 lt!670481))))

(declare-fun b!1740300 () Bool)

(assert (=> b!1740300 (= e!1113833 e!1113829)))

(declare-fun res!782340 () Bool)

(assert (=> b!1740300 (=> res!782340 e!1113829)))

(assert (=> b!1740300 (= res!782340 call!110057)))

(declare-fun b!1740301 () Bool)

(declare-fun res!782338 () Bool)

(assert (=> b!1740301 (=> res!782338 e!1113829)))

(assert (=> b!1740301 (= res!782338 (not (isEmpty!12029 (tail!2596 lt!670489))))))

(declare-fun b!1740302 () Bool)

(declare-fun res!782334 () Bool)

(assert (=> b!1740302 (=> (not res!782334) (not e!1113828))))

(assert (=> b!1740302 (= res!782334 (not call!110057))))

(assert (= (and d!531828 c!283992) b!1740299))

(assert (= (and d!531828 (not c!283992)) b!1740293))

(assert (= (and d!531828 c!283990) b!1740291))

(assert (= (and d!531828 (not c!283990)) b!1740296))

(assert (= (and b!1740296 c!283991) b!1740297))

(assert (= (and b!1740296 (not c!283991)) b!1740290))

(assert (= (and b!1740290 (not res!782337)) b!1740289))

(assert (= (and b!1740289 res!782335) b!1740302))

(assert (= (and b!1740302 res!782334) b!1740294))

(assert (= (and b!1740294 res!782333) b!1740292))

(assert (= (and b!1740289 (not res!782339)) b!1740295))

(assert (= (and b!1740295 res!782336) b!1740300))

(assert (= (and b!1740300 (not res!782340)) b!1740301))

(assert (= (and b!1740301 (not res!782338)) b!1740298))

(assert (= (or b!1740291 b!1740300 b!1740302) bm!110052))

(assert (=> b!1740299 m!2151155))

(assert (=> b!1740298 m!2150729))

(assert (=> b!1740294 m!2150731))

(assert (=> b!1740294 m!2150731))

(assert (=> b!1740294 m!2150877))

(assert (=> d!531828 m!2150879))

(assert (=> d!531828 m!2151123))

(assert (=> b!1740301 m!2150731))

(assert (=> b!1740301 m!2150731))

(assert (=> b!1740301 m!2150877))

(assert (=> b!1740292 m!2150729))

(assert (=> b!1740293 m!2150729))

(assert (=> b!1740293 m!2150729))

(declare-fun m!2151167 () Bool)

(assert (=> b!1740293 m!2151167))

(assert (=> b!1740293 m!2150731))

(assert (=> b!1740293 m!2151167))

(assert (=> b!1740293 m!2150731))

(declare-fun m!2151169 () Bool)

(assert (=> b!1740293 m!2151169))

(assert (=> bm!110052 m!2150879))

(assert (=> b!1739687 d!531828))

(declare-fun d!531830 () Bool)

(assert (=> d!531830 (matchR!2205 (rulesRegex!761 thiss!24550 rules!3447) (list!7728 (charsOf!2052 token!523)))))

(declare-fun lt!670797 () Unit!33143)

(assert (=> d!531830 (= lt!670797 (choose!10711 thiss!24550 rules!3447 lt!670489 token!523 rule!422 Nil!19112))))

(assert (=> d!531830 (not (isEmpty!12030 rules!3447))))

(assert (=> d!531830 (= (lemmaMaxPrefixThenMatchesRulesRegex!152 thiss!24550 rules!3447 lt!670489 token!523 rule!422 Nil!19112) lt!670797)))

(declare-fun bs!402982 () Bool)

(assert (= bs!402982 d!531830))

(assert (=> bs!402982 m!2150339))

(assert (=> bs!402982 m!2150373))

(declare-fun m!2151171 () Bool)

(assert (=> bs!402982 m!2151171))

(declare-fun m!2151173 () Bool)

(assert (=> bs!402982 m!2151173))

(assert (=> bs!402982 m!2150351))

(assert (=> bs!402982 m!2151171))

(assert (=> bs!402982 m!2150373))

(assert (=> bs!402982 m!2150351))

(declare-fun m!2151175 () Bool)

(assert (=> bs!402982 m!2151175))

(assert (=> b!1739687 d!531830))

(declare-fun d!531832 () Bool)

(declare-fun isBalanced!1986 (Conc!6357) Bool)

(assert (=> d!531832 (= (inv!24770 (dynLambda!9031 (toChars!4769 (transformation!3403 (rule!5401 (_1!10785 lt!670497)))) (dynLambda!9032 (toValue!4910 (transformation!3403 (rule!5401 (_1!10785 lt!670497)))) lt!670465))) (isBalanced!1986 (c!283869 (dynLambda!9031 (toChars!4769 (transformation!3403 (rule!5401 (_1!10785 lt!670497)))) (dynLambda!9032 (toValue!4910 (transformation!3403 (rule!5401 (_1!10785 lt!670497)))) lt!670465)))))))

(declare-fun bs!402983 () Bool)

(assert (= bs!402983 d!531832))

(declare-fun m!2151177 () Bool)

(assert (=> bs!402983 m!2151177))

(assert (=> tb!103995 d!531832))

(declare-fun b!1740303 () Bool)

(declare-fun res!782347 () Bool)

(declare-fun e!1113834 () Bool)

(assert (=> b!1740303 (=> res!782347 e!1113834)))

(declare-fun e!1113835 () Bool)

(assert (=> b!1740303 (= res!782347 e!1113835)))

(declare-fun res!782343 () Bool)

(assert (=> b!1740303 (=> (not res!782343) (not e!1113835))))

(declare-fun lt!670798 () Bool)

(assert (=> b!1740303 (= res!782343 lt!670798)))

(declare-fun b!1740305 () Bool)

(declare-fun e!1113839 () Bool)

(declare-fun call!110058 () Bool)

(assert (=> b!1740305 (= e!1113839 (= lt!670798 call!110058))))

(declare-fun b!1740306 () Bool)

(assert (=> b!1740306 (= e!1113835 (= (head!3982 lt!670501) (c!283868 (regex!3403 (rule!5401 token!523)))))))

(declare-fun b!1740307 () Bool)

(declare-fun e!1113837 () Bool)

(assert (=> b!1740307 (= e!1113837 (matchR!2205 (derivativeStep!1199 (regex!3403 (rule!5401 token!523)) (head!3982 lt!670501)) (tail!2596 lt!670501)))))

(declare-fun b!1740308 () Bool)

(declare-fun res!782341 () Bool)

(assert (=> b!1740308 (=> (not res!782341) (not e!1113835))))

(assert (=> b!1740308 (= res!782341 (isEmpty!12029 (tail!2596 lt!670501)))))

(declare-fun b!1740309 () Bool)

(declare-fun e!1113840 () Bool)

(assert (=> b!1740309 (= e!1113834 e!1113840)))

(declare-fun res!782344 () Bool)

(assert (=> b!1740309 (=> (not res!782344) (not e!1113840))))

(assert (=> b!1740309 (= res!782344 (not lt!670798))))

(declare-fun b!1740310 () Bool)

(declare-fun e!1113838 () Bool)

(assert (=> b!1740310 (= e!1113839 e!1113838)))

(declare-fun c!283994 () Bool)

(assert (=> b!1740310 (= c!283994 ((_ is EmptyLang!4731) (regex!3403 (rule!5401 token!523))))))

(declare-fun bm!110053 () Bool)

(assert (=> bm!110053 (= call!110058 (isEmpty!12029 lt!670501))))

(declare-fun b!1740311 () Bool)

(assert (=> b!1740311 (= e!1113838 (not lt!670798))))

(declare-fun b!1740312 () Bool)

(declare-fun e!1113836 () Bool)

(assert (=> b!1740312 (= e!1113836 (not (= (head!3982 lt!670501) (c!283868 (regex!3403 (rule!5401 token!523))))))))

(declare-fun d!531834 () Bool)

(assert (=> d!531834 e!1113839))

(declare-fun c!283993 () Bool)

(assert (=> d!531834 (= c!283993 ((_ is EmptyExpr!4731) (regex!3403 (rule!5401 token!523))))))

(assert (=> d!531834 (= lt!670798 e!1113837)))

(declare-fun c!283995 () Bool)

(assert (=> d!531834 (= c!283995 (isEmpty!12029 lt!670501))))

(assert (=> d!531834 (validRegex!1905 (regex!3403 (rule!5401 token!523)))))

(assert (=> d!531834 (= (matchR!2205 (regex!3403 (rule!5401 token!523)) lt!670501) lt!670798)))

(declare-fun b!1740304 () Bool)

(declare-fun res!782345 () Bool)

(assert (=> b!1740304 (=> res!782345 e!1113834)))

(assert (=> b!1740304 (= res!782345 (not ((_ is ElementMatch!4731) (regex!3403 (rule!5401 token!523)))))))

(assert (=> b!1740304 (= e!1113838 e!1113834)))

(declare-fun b!1740313 () Bool)

(assert (=> b!1740313 (= e!1113837 (nullable!1431 (regex!3403 (rule!5401 token!523))))))

(declare-fun b!1740314 () Bool)

(assert (=> b!1740314 (= e!1113840 e!1113836)))

(declare-fun res!782348 () Bool)

(assert (=> b!1740314 (=> res!782348 e!1113836)))

(assert (=> b!1740314 (= res!782348 call!110058)))

(declare-fun b!1740315 () Bool)

(declare-fun res!782346 () Bool)

(assert (=> b!1740315 (=> res!782346 e!1113836)))

(assert (=> b!1740315 (= res!782346 (not (isEmpty!12029 (tail!2596 lt!670501))))))

(declare-fun b!1740316 () Bool)

(declare-fun res!782342 () Bool)

(assert (=> b!1740316 (=> (not res!782342) (not e!1113835))))

(assert (=> b!1740316 (= res!782342 (not call!110058))))

(assert (= (and d!531834 c!283995) b!1740313))

(assert (= (and d!531834 (not c!283995)) b!1740307))

(assert (= (and d!531834 c!283993) b!1740305))

(assert (= (and d!531834 (not c!283993)) b!1740310))

(assert (= (and b!1740310 c!283994) b!1740311))

(assert (= (and b!1740310 (not c!283994)) b!1740304))

(assert (= (and b!1740304 (not res!782345)) b!1740303))

(assert (= (and b!1740303 res!782343) b!1740316))

(assert (= (and b!1740316 res!782342) b!1740308))

(assert (= (and b!1740308 res!782341) b!1740306))

(assert (= (and b!1740303 (not res!782347)) b!1740309))

(assert (= (and b!1740309 res!782344) b!1740314))

(assert (= (and b!1740314 (not res!782348)) b!1740315))

(assert (= (and b!1740315 (not res!782346)) b!1740312))

(assert (= (or b!1740305 b!1740314 b!1740316) bm!110053))

(declare-fun m!2151179 () Bool)

(assert (=> b!1740313 m!2151179))

(assert (=> b!1740312 m!2150489))

(assert (=> b!1740308 m!2150495))

(assert (=> b!1740308 m!2150495))

(assert (=> b!1740308 m!2150751))

(assert (=> d!531834 m!2150753))

(declare-fun m!2151181 () Bool)

(assert (=> d!531834 m!2151181))

(assert (=> b!1740315 m!2150495))

(assert (=> b!1740315 m!2150495))

(assert (=> b!1740315 m!2150751))

(assert (=> b!1740306 m!2150489))

(assert (=> b!1740307 m!2150489))

(assert (=> b!1740307 m!2150489))

(declare-fun m!2151183 () Bool)

(assert (=> b!1740307 m!2151183))

(assert (=> b!1740307 m!2150495))

(assert (=> b!1740307 m!2151183))

(assert (=> b!1740307 m!2150495))

(declare-fun m!2151185 () Bool)

(assert (=> b!1740307 m!2151185))

(assert (=> bm!110053 m!2150753))

(assert (=> b!1739643 d!531834))

(declare-fun d!531836 () Bool)

(assert (=> d!531836 (not (matchR!2205 (regex!3403 (rule!5401 token!523)) lt!670501))))

(declare-fun lt!670799 () Unit!33143)

(assert (=> d!531836 (= lt!670799 (choose!10701 thiss!24550 rules!3447 (rule!5401 (_1!10785 lt!670497)) lt!670501 lt!670463 (rule!5401 token!523)))))

(assert (=> d!531836 (isPrefix!1644 lt!670501 lt!670463)))

(assert (=> d!531836 (= (lemmaMaxPrefNoSmallerRuleMatches!140 thiss!24550 rules!3447 (rule!5401 (_1!10785 lt!670497)) lt!670501 lt!670463 (rule!5401 token!523)) lt!670799)))

(declare-fun bs!402984 () Bool)

(assert (= bs!402984 d!531836))

(assert (=> bs!402984 m!2150327))

(declare-fun m!2151187 () Bool)

(assert (=> bs!402984 m!2151187))

(assert (=> bs!402984 m!2150417))

(assert (=> b!1739643 d!531836))

(declare-fun b!1740323 () Bool)

(declare-fun e!1113845 () Bool)

(assert (=> b!1740323 (= e!1113845 true)))

(declare-fun d!531838 () Bool)

(assert (=> d!531838 e!1113845))

(assert (= d!531838 b!1740323))

(declare-fun order!11929 () Int)

(declare-fun lambda!69587 () Int)

(declare-fun dynLambda!9034 (Int Int) Int)

(assert (=> b!1740323 (< (dynLambda!9028 order!11923 (toValue!4910 (transformation!3403 (rule!5401 (_1!10785 lt!670497))))) (dynLambda!9034 order!11929 lambda!69587))))

(assert (=> b!1740323 (< (dynLambda!9030 order!11927 (toChars!4769 (transformation!3403 (rule!5401 (_1!10785 lt!670497))))) (dynLambda!9034 order!11929 lambda!69587))))

(assert (=> d!531838 (= (dynLambda!9032 (toValue!4910 (transformation!3403 (rule!5401 (_1!10785 lt!670497)))) lt!670465) (dynLambda!9032 (toValue!4910 (transformation!3403 (rule!5401 (_1!10785 lt!670497)))) (seqFromList!2377 (originalCharacters!4217 (_1!10785 lt!670497)))))))

(declare-fun lt!670802 () Unit!33143)

(declare-fun Forall2of!101 (Int BalanceConc!12658 BalanceConc!12658) Unit!33143)

(assert (=> d!531838 (= lt!670802 (Forall2of!101 lambda!69587 lt!670465 (seqFromList!2377 (originalCharacters!4217 (_1!10785 lt!670497)))))))

(assert (=> d!531838 (= (list!7728 lt!670465) (list!7728 (seqFromList!2377 (originalCharacters!4217 (_1!10785 lt!670497)))))))

(assert (=> d!531838 (= (lemmaEqSameImage!328 (transformation!3403 (rule!5401 (_1!10785 lt!670497))) lt!670465 (seqFromList!2377 (originalCharacters!4217 (_1!10785 lt!670497)))) lt!670802)))

(declare-fun b_lambda!55729 () Bool)

(assert (=> (not b_lambda!55729) (not d!531838)))

(assert (=> d!531838 t!161747))

(declare-fun b_and!129277 () Bool)

(assert (= b_and!129265 (and (=> t!161747 result!125078) b_and!129277)))

(assert (=> d!531838 t!161749))

(declare-fun b_and!129279 () Bool)

(assert (= b_and!129267 (and (=> t!161749 result!125082) b_and!129279)))

(assert (=> d!531838 t!161751))

(declare-fun b_and!129281 () Bool)

(assert (= b_and!129269 (and (=> t!161751 result!125084) b_and!129281)))

(declare-fun b_lambda!55731 () Bool)

(assert (=> (not b_lambda!55731) (not d!531838)))

(declare-fun t!161780 () Bool)

(declare-fun tb!104031 () Bool)

(assert (=> (and b!1739642 (= (toValue!4910 (transformation!3403 rule!422)) (toValue!4910 (transformation!3403 (rule!5401 (_1!10785 lt!670497))))) t!161780) tb!104031))

(declare-fun result!125110 () Bool)

(assert (=> tb!104031 (= result!125110 (inv!21 (dynLambda!9032 (toValue!4910 (transformation!3403 (rule!5401 (_1!10785 lt!670497)))) (seqFromList!2377 (originalCharacters!4217 (_1!10785 lt!670497))))))))

(declare-fun m!2151189 () Bool)

(assert (=> tb!104031 m!2151189))

(assert (=> d!531838 t!161780))

(declare-fun b_and!129283 () Bool)

(assert (= b_and!129277 (and (=> t!161780 result!125110) b_and!129283)))

(declare-fun t!161782 () Bool)

(declare-fun tb!104033 () Bool)

(assert (=> (and b!1739644 (= (toValue!4910 (transformation!3403 (rule!5401 token!523))) (toValue!4910 (transformation!3403 (rule!5401 (_1!10785 lt!670497))))) t!161782) tb!104033))

(declare-fun result!125112 () Bool)

(assert (= result!125112 result!125110))

(assert (=> d!531838 t!161782))

(declare-fun b_and!129285 () Bool)

(assert (= b_and!129279 (and (=> t!161782 result!125112) b_and!129285)))

(declare-fun tb!104035 () Bool)

(declare-fun t!161784 () Bool)

(assert (=> (and b!1739669 (= (toValue!4910 (transformation!3403 (h!24514 rules!3447))) (toValue!4910 (transformation!3403 (rule!5401 (_1!10785 lt!670497))))) t!161784) tb!104035))

(declare-fun result!125114 () Bool)

(assert (= result!125114 result!125110))

(assert (=> d!531838 t!161784))

(declare-fun b_and!129287 () Bool)

(assert (= b_and!129281 (and (=> t!161784 result!125114) b_and!129287)))

(assert (=> d!531838 m!2150265))

(assert (=> d!531838 m!2150387))

(declare-fun m!2151191 () Bool)

(assert (=> d!531838 m!2151191))

(assert (=> d!531838 m!2150387))

(declare-fun m!2151193 () Bool)

(assert (=> d!531838 m!2151193))

(assert (=> d!531838 m!2150419))

(assert (=> d!531838 m!2150387))

(declare-fun m!2151195 () Bool)

(assert (=> d!531838 m!2151195))

(assert (=> b!1739686 d!531838))

(declare-fun d!531840 () Bool)

(declare-fun lt!670825 () Int)

(assert (=> d!531840 (= lt!670825 (size!15193 (list!7728 lt!670465)))))

(assert (=> d!531840 (= lt!670825 (size!15196 (c!283869 lt!670465)))))

(assert (=> d!531840 (= (size!15194 lt!670465) lt!670825)))

(declare-fun bs!402985 () Bool)

(assert (= bs!402985 d!531840))

(assert (=> bs!402985 m!2150419))

(assert (=> bs!402985 m!2150419))

(declare-fun m!2151197 () Bool)

(assert (=> bs!402985 m!2151197))

(declare-fun m!2151199 () Bool)

(assert (=> bs!402985 m!2151199))

(assert (=> b!1739686 d!531840))

(declare-fun d!531842 () Bool)

(assert (=> d!531842 (= (apply!5208 (transformation!3403 (rule!5401 (_1!10785 lt!670497))) lt!670465) (dynLambda!9032 (toValue!4910 (transformation!3403 (rule!5401 (_1!10785 lt!670497)))) lt!670465))))

(declare-fun b_lambda!55733 () Bool)

(assert (=> (not b_lambda!55733) (not d!531842)))

(assert (=> d!531842 t!161747))

(declare-fun b_and!129289 () Bool)

(assert (= b_and!129283 (and (=> t!161747 result!125078) b_and!129289)))

(assert (=> d!531842 t!161749))

(declare-fun b_and!129291 () Bool)

(assert (= b_and!129285 (and (=> t!161749 result!125082) b_and!129291)))

(assert (=> d!531842 t!161751))

(declare-fun b_and!129293 () Bool)

(assert (= b_and!129287 (and (=> t!161751 result!125084) b_and!129293)))

(assert (=> d!531842 m!2150265))

(assert (=> b!1739686 d!531842))

(declare-fun d!531844 () Bool)

(assert (=> d!531844 (= (size!15192 (_1!10785 lt!670497)) (size!15193 (originalCharacters!4217 (_1!10785 lt!670497))))))

(declare-fun Unit!33164 () Unit!33143)

(assert (=> d!531844 (= (lemmaCharactersSize!475 (_1!10785 lt!670497)) Unit!33164)))

(declare-fun bs!402986 () Bool)

(assert (= bs!402986 d!531844))

(declare-fun m!2151201 () Bool)

(assert (=> bs!402986 m!2151201))

(assert (=> b!1739686 d!531844))

(declare-fun d!531846 () Bool)

(assert (=> d!531846 (= (seqFromList!2377 (originalCharacters!4217 (_1!10785 lt!670497))) (fromListB!1086 (originalCharacters!4217 (_1!10785 lt!670497))))))

(declare-fun bs!402987 () Bool)

(assert (= bs!402987 d!531846))

(declare-fun m!2151203 () Bool)

(assert (=> bs!402987 m!2151203))

(assert (=> b!1739686 d!531846))

(declare-fun d!531848 () Bool)

(assert (=> d!531848 (= (inv!24762 (tag!3739 (h!24514 rules!3447))) (= (mod (str.len (value!106657 (tag!3739 (h!24514 rules!3447)))) 2) 0))))

(assert (=> b!1739685 d!531848))

(declare-fun d!531850 () Bool)

(declare-fun res!782355 () Bool)

(declare-fun e!1113851 () Bool)

(assert (=> d!531850 (=> (not res!782355) (not e!1113851))))

(assert (=> d!531850 (= res!782355 (semiInverseModEq!1345 (toChars!4769 (transformation!3403 (h!24514 rules!3447))) (toValue!4910 (transformation!3403 (h!24514 rules!3447)))))))

(assert (=> d!531850 (= (inv!24767 (transformation!3403 (h!24514 rules!3447))) e!1113851)))

(declare-fun b!1740332 () Bool)

(assert (=> b!1740332 (= e!1113851 (equivClasses!1286 (toChars!4769 (transformation!3403 (h!24514 rules!3447))) (toValue!4910 (transformation!3403 (h!24514 rules!3447)))))))

(assert (= (and d!531850 res!782355) b!1740332))

(declare-fun m!2151205 () Bool)

(assert (=> d!531850 m!2151205))

(declare-fun m!2151207 () Bool)

(assert (=> b!1740332 m!2151207))

(assert (=> b!1739685 d!531850))

(declare-fun d!531852 () Bool)

(assert (=> d!531852 (= suffix!1421 (_2!10785 lt!670497))))

(declare-fun lt!670838 () Unit!33143)

(assert (=> d!531852 (= lt!670838 (choose!10706 lt!670489 suffix!1421 lt!670489 (_2!10785 lt!670497) lt!670463))))

(assert (=> d!531852 (isPrefix!1644 lt!670489 lt!670463)))

(assert (=> d!531852 (= (lemmaSamePrefixThenSameSuffix!788 lt!670489 suffix!1421 lt!670489 (_2!10785 lt!670497) lt!670463) lt!670838)))

(declare-fun bs!402988 () Bool)

(assert (= bs!402988 d!531852))

(declare-fun m!2151209 () Bool)

(assert (=> bs!402988 m!2151209))

(assert (=> bs!402988 m!2150415))

(assert (=> b!1739664 d!531852))

(declare-fun d!531854 () Bool)

(assert (=> d!531854 (= lt!670501 lt!670489)))

(declare-fun lt!670841 () Unit!33143)

(declare-fun choose!10714 (List!19182 List!19182 List!19182) Unit!33143)

(assert (=> d!531854 (= lt!670841 (choose!10714 lt!670501 lt!670489 lt!670463))))

(assert (=> d!531854 (isPrefix!1644 lt!670501 lt!670463)))

(assert (=> d!531854 (= (lemmaIsPrefixSameLengthThenSameList!231 lt!670501 lt!670489 lt!670463) lt!670841)))

(declare-fun bs!402989 () Bool)

(assert (= bs!402989 d!531854))

(declare-fun m!2151211 () Bool)

(assert (=> bs!402989 m!2151211))

(assert (=> bs!402989 m!2150417))

(assert (=> b!1739664 d!531854))

(declare-fun d!531856 () Bool)

(declare-fun lt!670861 () Bool)

(declare-fun content!2740 (List!19183) (InoxSet Rule!6606))

(assert (=> d!531856 (= lt!670861 (select (content!2740 rules!3447) rule!422))))

(declare-fun e!1113859 () Bool)

(assert (=> d!531856 (= lt!670861 e!1113859)))

(declare-fun res!782362 () Bool)

(assert (=> d!531856 (=> (not res!782362) (not e!1113859))))

(assert (=> d!531856 (= res!782362 ((_ is Cons!19113) rules!3447))))

(assert (=> d!531856 (= (contains!3425 rules!3447 rule!422) lt!670861)))

(declare-fun b!1740341 () Bool)

(declare-fun e!1113858 () Bool)

(assert (=> b!1740341 (= e!1113859 e!1113858)))

(declare-fun res!782363 () Bool)

(assert (=> b!1740341 (=> res!782363 e!1113858)))

(assert (=> b!1740341 (= res!782363 (= (h!24514 rules!3447) rule!422))))

(declare-fun b!1740342 () Bool)

(assert (=> b!1740342 (= e!1113858 (contains!3425 (t!161754 rules!3447) rule!422))))

(assert (= (and d!531856 res!782362) b!1740341))

(assert (= (and b!1740341 (not res!782363)) b!1740342))

(declare-fun m!2151213 () Bool)

(assert (=> d!531856 m!2151213))

(declare-fun m!2151215 () Bool)

(assert (=> d!531856 m!2151215))

(declare-fun m!2151217 () Bool)

(assert (=> b!1740342 m!2151217))

(assert (=> b!1739663 d!531856))

(declare-fun d!531858 () Bool)

(assert (=> d!531858 (= (inv!24770 (dynLambda!9031 (toChars!4769 (transformation!3403 (rule!5401 (_1!10785 lt!670497)))) (value!106658 (_1!10785 lt!670497)))) (isBalanced!1986 (c!283869 (dynLambda!9031 (toChars!4769 (transformation!3403 (rule!5401 (_1!10785 lt!670497)))) (value!106658 (_1!10785 lt!670497))))))))

(declare-fun bs!402990 () Bool)

(assert (= bs!402990 d!531858))

(declare-fun m!2151219 () Bool)

(assert (=> bs!402990 m!2151219))

(assert (=> tb!103989 d!531858))

(declare-fun b!1740353 () Bool)

(declare-fun b_free!47815 () Bool)

(declare-fun b_next!48519 () Bool)

(assert (=> b!1740353 (= b_free!47815 (not b_next!48519))))

(declare-fun tb!104037 () Bool)

(declare-fun t!161786 () Bool)

(assert (=> (and b!1740353 (= (toValue!4910 (transformation!3403 (h!24514 (t!161754 rules!3447)))) (toValue!4910 (transformation!3403 (rule!5401 (_1!10785 lt!670497))))) t!161786) tb!104037))

(declare-fun result!125118 () Bool)

(assert (= result!125118 result!125078))

(assert (=> b!1739675 t!161786))

(assert (=> d!531726 t!161786))

(declare-fun t!161788 () Bool)

(declare-fun tb!104039 () Bool)

(assert (=> (and b!1740353 (= (toValue!4910 (transformation!3403 (h!24514 (t!161754 rules!3447)))) (toValue!4910 (transformation!3403 (rule!5401 (_1!10785 lt!670497))))) t!161788) tb!104039))

(declare-fun result!125120 () Bool)

(assert (= result!125120 result!125110))

(assert (=> d!531838 t!161788))

(assert (=> d!531838 t!161786))

(assert (=> d!531842 t!161786))

(declare-fun tb!104041 () Bool)

(declare-fun t!161790 () Bool)

(assert (=> (and b!1740353 (= (toValue!4910 (transformation!3403 (h!24514 (t!161754 rules!3447)))) (toValue!4910 (transformation!3403 (rule!5401 (_1!10785 lt!670497))))) t!161790) tb!104041))

(declare-fun result!125122 () Bool)

(assert (= result!125122 result!125104))

(assert (=> d!531782 t!161790))

(declare-fun b_and!129295 () Bool)

(declare-fun tp!495518 () Bool)

(assert (=> b!1740353 (= tp!495518 (and (=> t!161786 result!125118) (=> t!161790 result!125122) (=> t!161788 result!125120) b_and!129295))))

(declare-fun b_free!47817 () Bool)

(declare-fun b_next!48521 () Bool)

(assert (=> b!1740353 (= b_free!47817 (not b_next!48521))))

(declare-fun tb!104043 () Bool)

(declare-fun t!161792 () Bool)

(assert (=> (and b!1740353 (= (toChars!4769 (transformation!3403 (h!24514 (t!161754 rules!3447)))) (toChars!4769 (transformation!3403 (rule!5401 token!523)))) t!161792) tb!104043))

(declare-fun result!125124 () Bool)

(assert (= result!125124 result!125098))

(assert (=> b!1740173 t!161792))

(declare-fun tb!104045 () Bool)

(declare-fun t!161794 () Bool)

(assert (=> (and b!1740353 (= (toChars!4769 (transformation!3403 (h!24514 (t!161754 rules!3447)))) (toChars!4769 (transformation!3403 (rule!5401 (_1!10785 lt!670497))))) t!161794) tb!104045))

(declare-fun result!125126 () Bool)

(assert (= result!125126 result!125072))

(assert (=> d!531726 t!161794))

(assert (=> d!531796 t!161792))

(declare-fun tb!104047 () Bool)

(declare-fun t!161796 () Bool)

(assert (=> (and b!1740353 (= (toChars!4769 (transformation!3403 (h!24514 (t!161754 rules!3447)))) (toChars!4769 (transformation!3403 (rule!5401 (_1!10785 lt!670497))))) t!161796) tb!104047))

(declare-fun result!125128 () Bool)

(assert (= result!125128 result!125064))

(assert (=> b!1739674 t!161796))

(assert (=> d!531602 t!161796))

(assert (=> b!1739675 t!161794))

(declare-fun b_and!129297 () Bool)

(declare-fun tp!495516 () Bool)

(assert (=> b!1740353 (= tp!495516 (and (=> t!161794 result!125126) (=> t!161796 result!125128) (=> t!161792 result!125124) b_and!129297))))

(declare-fun e!1113868 () Bool)

(assert (=> b!1740353 (= e!1113868 (and tp!495518 tp!495516))))

(declare-fun b!1740352 () Bool)

(declare-fun e!1113870 () Bool)

(declare-fun tp!495515 () Bool)

(assert (=> b!1740352 (= e!1113870 (and tp!495515 (inv!24762 (tag!3739 (h!24514 (t!161754 rules!3447)))) (inv!24767 (transformation!3403 (h!24514 (t!161754 rules!3447)))) e!1113868))))

(declare-fun b!1740351 () Bool)

(declare-fun e!1113871 () Bool)

(declare-fun tp!495517 () Bool)

(assert (=> b!1740351 (= e!1113871 (and e!1113870 tp!495517))))

(assert (=> b!1739677 (= tp!495491 e!1113871)))

(assert (= b!1740352 b!1740353))

(assert (= b!1740351 b!1740352))

(assert (= (and b!1739677 ((_ is Cons!19113) (t!161754 rules!3447))) b!1740351))

(declare-fun m!2151271 () Bool)

(assert (=> b!1740352 m!2151271))

(declare-fun m!2151273 () Bool)

(assert (=> b!1740352 m!2151273))

(declare-fun b!1740358 () Bool)

(declare-fun e!1113874 () Bool)

(declare-fun tp!495521 () Bool)

(assert (=> b!1740358 (= e!1113874 (and tp_is_empty!7705 tp!495521))))

(assert (=> b!1739666 (= tp!495499 e!1113874)))

(assert (= (and b!1739666 ((_ is Cons!19112) (t!161753 suffix!1421))) b!1740358))

(declare-fun b!1740374 () Bool)

(declare-fun e!1113879 () Bool)

(declare-fun tp!495535 () Bool)

(declare-fun tp!495533 () Bool)

(assert (=> b!1740374 (= e!1113879 (and tp!495535 tp!495533))))

(assert (=> b!1739649 (= tp!495489 e!1113879)))

(declare-fun b!1740376 () Bool)

(declare-fun tp!495536 () Bool)

(declare-fun tp!495534 () Bool)

(assert (=> b!1740376 (= e!1113879 (and tp!495536 tp!495534))))

(declare-fun b!1740375 () Bool)

(declare-fun tp!495532 () Bool)

(assert (=> b!1740375 (= e!1113879 tp!495532)))

(declare-fun b!1740373 () Bool)

(assert (=> b!1740373 (= e!1113879 tp_is_empty!7705)))

(assert (= (and b!1739649 ((_ is ElementMatch!4731) (regex!3403 (rule!5401 token!523)))) b!1740373))

(assert (= (and b!1739649 ((_ is Concat!8225) (regex!3403 (rule!5401 token!523)))) b!1740374))

(assert (= (and b!1739649 ((_ is Star!4731) (regex!3403 (rule!5401 token!523)))) b!1740375))

(assert (= (and b!1739649 ((_ is Union!4731) (regex!3403 (rule!5401 token!523)))) b!1740376))

(declare-fun tp!495543 () Bool)

(declare-fun tp!495544 () Bool)

(declare-fun b!1740385 () Bool)

(declare-fun e!1113884 () Bool)

(assert (=> b!1740385 (= e!1113884 (and (inv!24769 (left!15288 (c!283869 (dynLambda!9031 (toChars!4769 (transformation!3403 (rule!5401 (_1!10785 lt!670497)))) (dynLambda!9032 (toValue!4910 (transformation!3403 (rule!5401 (_1!10785 lt!670497)))) lt!670465))))) tp!495543 (inv!24769 (right!15618 (c!283869 (dynLambda!9031 (toChars!4769 (transformation!3403 (rule!5401 (_1!10785 lt!670497)))) (dynLambda!9032 (toValue!4910 (transformation!3403 (rule!5401 (_1!10785 lt!670497)))) lt!670465))))) tp!495544))))

(declare-fun b!1740387 () Bool)

(declare-fun e!1113885 () Bool)

(declare-fun tp!495545 () Bool)

(assert (=> b!1740387 (= e!1113885 tp!495545)))

(declare-fun b!1740386 () Bool)

(declare-fun inv!24775 (IArray!12719) Bool)

(assert (=> b!1740386 (= e!1113884 (and (inv!24775 (xs!9233 (c!283869 (dynLambda!9031 (toChars!4769 (transformation!3403 (rule!5401 (_1!10785 lt!670497)))) (dynLambda!9032 (toValue!4910 (transformation!3403 (rule!5401 (_1!10785 lt!670497)))) lt!670465))))) e!1113885))))

(assert (=> b!1739704 (= tp!495504 (and (inv!24769 (c!283869 (dynLambda!9031 (toChars!4769 (transformation!3403 (rule!5401 (_1!10785 lt!670497)))) (dynLambda!9032 (toValue!4910 (transformation!3403 (rule!5401 (_1!10785 lt!670497)))) lt!670465)))) e!1113884))))

(assert (= (and b!1739704 ((_ is Node!6357) (c!283869 (dynLambda!9031 (toChars!4769 (transformation!3403 (rule!5401 (_1!10785 lt!670497)))) (dynLambda!9032 (toValue!4910 (transformation!3403 (rule!5401 (_1!10785 lt!670497)))) lt!670465))))) b!1740385))

(assert (= b!1740386 b!1740387))

(assert (= (and b!1739704 ((_ is Leaf!9279) (c!283869 (dynLambda!9031 (toChars!4769 (transformation!3403 (rule!5401 (_1!10785 lt!670497)))) (dynLambda!9032 (toValue!4910 (transformation!3403 (rule!5401 (_1!10785 lt!670497)))) lt!670465))))) b!1740386))

(declare-fun m!2151291 () Bool)

(assert (=> b!1740385 m!2151291))

(declare-fun m!2151293 () Bool)

(assert (=> b!1740385 m!2151293))

(declare-fun m!2151295 () Bool)

(assert (=> b!1740386 m!2151295))

(assert (=> b!1739704 m!2150259))

(declare-fun e!1113886 () Bool)

(declare-fun b!1740388 () Bool)

(declare-fun tp!495546 () Bool)

(declare-fun tp!495547 () Bool)

(assert (=> b!1740388 (= e!1113886 (and (inv!24769 (left!15288 (c!283869 (dynLambda!9031 (toChars!4769 (transformation!3403 (rule!5401 (_1!10785 lt!670497)))) (value!106658 (_1!10785 lt!670497)))))) tp!495546 (inv!24769 (right!15618 (c!283869 (dynLambda!9031 (toChars!4769 (transformation!3403 (rule!5401 (_1!10785 lt!670497)))) (value!106658 (_1!10785 lt!670497)))))) tp!495547))))

(declare-fun b!1740390 () Bool)

(declare-fun e!1113887 () Bool)

(declare-fun tp!495548 () Bool)

(assert (=> b!1740390 (= e!1113887 tp!495548)))

(declare-fun b!1740389 () Bool)

(assert (=> b!1740389 (= e!1113886 (and (inv!24775 (xs!9233 (c!283869 (dynLambda!9031 (toChars!4769 (transformation!3403 (rule!5401 (_1!10785 lt!670497)))) (value!106658 (_1!10785 lt!670497)))))) e!1113887))))

(assert (=> b!1739703 (= tp!495503 (and (inv!24769 (c!283869 (dynLambda!9031 (toChars!4769 (transformation!3403 (rule!5401 (_1!10785 lt!670497)))) (value!106658 (_1!10785 lt!670497))))) e!1113886))))

(assert (= (and b!1739703 ((_ is Node!6357) (c!283869 (dynLambda!9031 (toChars!4769 (transformation!3403 (rule!5401 (_1!10785 lt!670497)))) (value!106658 (_1!10785 lt!670497)))))) b!1740388))

(assert (= b!1740389 b!1740390))

(assert (= (and b!1739703 ((_ is Leaf!9279) (c!283869 (dynLambda!9031 (toChars!4769 (transformation!3403 (rule!5401 (_1!10785 lt!670497)))) (value!106658 (_1!10785 lt!670497)))))) b!1740389))

(declare-fun m!2151297 () Bool)

(assert (=> b!1740388 m!2151297))

(declare-fun m!2151299 () Bool)

(assert (=> b!1740388 m!2151299))

(declare-fun m!2151301 () Bool)

(assert (=> b!1740389 m!2151301))

(assert (=> b!1739703 m!2150255))

(declare-fun b!1740392 () Bool)

(declare-fun e!1113888 () Bool)

(declare-fun tp!495552 () Bool)

(declare-fun tp!495550 () Bool)

(assert (=> b!1740392 (= e!1113888 (and tp!495552 tp!495550))))

(assert (=> b!1739653 (= tp!495495 e!1113888)))

(declare-fun b!1740394 () Bool)

(declare-fun tp!495553 () Bool)

(declare-fun tp!495551 () Bool)

(assert (=> b!1740394 (= e!1113888 (and tp!495553 tp!495551))))

(declare-fun b!1740393 () Bool)

(declare-fun tp!495549 () Bool)

(assert (=> b!1740393 (= e!1113888 tp!495549)))

(declare-fun b!1740391 () Bool)

(assert (=> b!1740391 (= e!1113888 tp_is_empty!7705)))

(assert (= (and b!1739653 ((_ is ElementMatch!4731) (regex!3403 rule!422))) b!1740391))

(assert (= (and b!1739653 ((_ is Concat!8225) (regex!3403 rule!422))) b!1740392))

(assert (= (and b!1739653 ((_ is Star!4731) (regex!3403 rule!422))) b!1740393))

(assert (= (and b!1739653 ((_ is Union!4731) (regex!3403 rule!422))) b!1740394))

(declare-fun b!1740396 () Bool)

(declare-fun e!1113889 () Bool)

(declare-fun tp!495557 () Bool)

(declare-fun tp!495555 () Bool)

(assert (=> b!1740396 (= e!1113889 (and tp!495557 tp!495555))))

(assert (=> b!1739685 (= tp!495500 e!1113889)))

(declare-fun b!1740398 () Bool)

(declare-fun tp!495558 () Bool)

(declare-fun tp!495556 () Bool)

(assert (=> b!1740398 (= e!1113889 (and tp!495558 tp!495556))))

(declare-fun b!1740397 () Bool)

(declare-fun tp!495554 () Bool)

(assert (=> b!1740397 (= e!1113889 tp!495554)))

(declare-fun b!1740395 () Bool)

(assert (=> b!1740395 (= e!1113889 tp_is_empty!7705)))

(assert (= (and b!1739685 ((_ is ElementMatch!4731) (regex!3403 (h!24514 rules!3447)))) b!1740395))

(assert (= (and b!1739685 ((_ is Concat!8225) (regex!3403 (h!24514 rules!3447)))) b!1740396))

(assert (= (and b!1739685 ((_ is Star!4731) (regex!3403 (h!24514 rules!3447)))) b!1740397))

(assert (= (and b!1739685 ((_ is Union!4731) (regex!3403 (h!24514 rules!3447)))) b!1740398))

(declare-fun b!1740399 () Bool)

(declare-fun e!1113890 () Bool)

(declare-fun tp!495559 () Bool)

(assert (=> b!1740399 (= e!1113890 (and tp_is_empty!7705 tp!495559))))

(assert (=> b!1739680 (= tp!495497 e!1113890)))

(assert (= (and b!1739680 ((_ is Cons!19112) (originalCharacters!4217 token!523))) b!1740399))

(declare-fun b_lambda!55737 () Bool)

(assert (= b_lambda!55727 (or (and b!1739642 b_free!47805 (= (toChars!4769 (transformation!3403 rule!422)) (toChars!4769 (transformation!3403 (rule!5401 token!523))))) (and b!1739644 b_free!47809) (and b!1739669 b_free!47813 (= (toChars!4769 (transformation!3403 (h!24514 rules!3447))) (toChars!4769 (transformation!3403 (rule!5401 token!523))))) (and b!1740353 b_free!47817 (= (toChars!4769 (transformation!3403 (h!24514 (t!161754 rules!3447)))) (toChars!4769 (transformation!3403 (rule!5401 token!523))))) b_lambda!55737)))

(declare-fun b_lambda!55739 () Bool)

(assert (= b_lambda!55703 (or (and b!1739642 b_free!47805 (= (toChars!4769 (transformation!3403 rule!422)) (toChars!4769 (transformation!3403 (rule!5401 (_1!10785 lt!670497)))))) (and b!1739644 b_free!47809 (= (toChars!4769 (transformation!3403 (rule!5401 token!523))) (toChars!4769 (transformation!3403 (rule!5401 (_1!10785 lt!670497)))))) (and b!1739669 b_free!47813 (= (toChars!4769 (transformation!3403 (h!24514 rules!3447))) (toChars!4769 (transformation!3403 (rule!5401 (_1!10785 lt!670497)))))) (and b!1740353 b_free!47817 (= (toChars!4769 (transformation!3403 (h!24514 (t!161754 rules!3447)))) (toChars!4769 (transformation!3403 (rule!5401 (_1!10785 lt!670497)))))) b_lambda!55739)))

(declare-fun b_lambda!55741 () Bool)

(assert (= b_lambda!55723 (or (and b!1739642 b_free!47805 (= (toChars!4769 (transformation!3403 rule!422)) (toChars!4769 (transformation!3403 (rule!5401 token!523))))) (and b!1739644 b_free!47809) (and b!1739669 b_free!47813 (= (toChars!4769 (transformation!3403 (h!24514 rules!3447))) (toChars!4769 (transformation!3403 (rule!5401 token!523))))) (and b!1740353 b_free!47817 (= (toChars!4769 (transformation!3403 (h!24514 (t!161754 rules!3447)))) (toChars!4769 (transformation!3403 (rule!5401 token!523))))) b_lambda!55741)))

(declare-fun b_lambda!55743 () Bool)

(assert (= b_lambda!55705 (or (and b!1739642 b_free!47805 (= (toChars!4769 (transformation!3403 rule!422)) (toChars!4769 (transformation!3403 (rule!5401 (_1!10785 lt!670497)))))) (and b!1739644 b_free!47809 (= (toChars!4769 (transformation!3403 (rule!5401 token!523))) (toChars!4769 (transformation!3403 (rule!5401 (_1!10785 lt!670497)))))) (and b!1739669 b_free!47813 (= (toChars!4769 (transformation!3403 (h!24514 rules!3447))) (toChars!4769 (transformation!3403 (rule!5401 (_1!10785 lt!670497)))))) (and b!1740353 b_free!47817 (= (toChars!4769 (transformation!3403 (h!24514 (t!161754 rules!3447)))) (toChars!4769 (transformation!3403 (rule!5401 (_1!10785 lt!670497)))))) b_lambda!55743)))

(declare-fun b_lambda!55745 () Bool)

(assert (= b_lambda!55707 (or (and b!1739642 b_free!47803 (= (toValue!4910 (transformation!3403 rule!422)) (toValue!4910 (transformation!3403 (rule!5401 (_1!10785 lt!670497)))))) (and b!1739644 b_free!47807 (= (toValue!4910 (transformation!3403 (rule!5401 token!523))) (toValue!4910 (transformation!3403 (rule!5401 (_1!10785 lt!670497)))))) (and b!1739669 b_free!47811 (= (toValue!4910 (transformation!3403 (h!24514 rules!3447))) (toValue!4910 (transformation!3403 (rule!5401 (_1!10785 lt!670497)))))) (and b!1740353 b_free!47815 (= (toValue!4910 (transformation!3403 (h!24514 (t!161754 rules!3447)))) (toValue!4910 (transformation!3403 (rule!5401 (_1!10785 lt!670497)))))) b_lambda!55745)))

(check-sat (not b!1740272) (not b!1739817) (not b!1740248) (not d!531840) (not b!1740397) (not b!1740131) (not b!1740393) (not d!531608) (not b!1740265) (not b!1740284) (not b!1740023) (not b_lambda!55719) (not b!1739793) (not b!1740255) (not b_lambda!55731) (not b_lambda!55743) (not b!1740245) tp_is_empty!7705 (not b!1739996) (not b!1740269) b_and!129291 (not b!1740037) (not d!531836) (not b_lambda!55725) (not bm!110036) (not b!1740386) (not d!531716) (not b!1740273) (not b!1740158) (not d!531802) (not bm!110053) (not d!531804) (not b!1739739) (not b!1740306) (not d!531844) (not b!1740060) (not d!531806) (not d!531808) b_and!129273 (not d!531694) (not d!531764) (not b!1740388) (not d!531602) b_and!129295 (not b!1739703) (not b!1740242) (not b!1740244) (not b!1740164) (not b!1740138) (not b!1739990) (not b!1740036) (not b!1739766) (not b!1740332) (not d!531800) (not b!1740268) (not d!531682) (not b!1739794) b_and!129289 (not b!1740249) (not b_lambda!55721) (not b!1740307) (not b!1740292) (not b!1739704) (not b!1739995) (not d!531724) (not b!1740399) (not b!1740254) (not d!531786) (not b!1740049) (not b!1740214) (not d!531740) (not b!1740392) (not b!1740168) (not b!1740301) (not b!1740385) (not b!1740389) (not b!1739747) (not b!1740136) (not bm!110050) (not bm!110046) (not b!1740358) (not b!1740293) (not b!1739789) (not b!1740243) (not d!531794) (not bm!110051) (not b!1740312) (not d!531820) (not b!1740016) (not d!531846) (not d!531850) (not b!1739744) (not d!531824) (not b!1740165) (not b!1740390) (not d!531858) (not b!1740176) (not b!1740315) (not d!531680) (not b!1739964) (not b!1740221) (not b!1740103) (not tb!104019) (not b!1740240) (not b!1740387) (not d!531616) (not b!1740270) (not b_next!48511) (not b!1739961) (not b!1740085) (not d!531838) (not d!531854) (not b!1740342) (not b!1739955) (not b!1740375) (not b!1740398) (not d!531712) (not b!1739821) (not b!1740279) (not b!1740045) (not b_lambda!55745) (not d!531830) (not b!1740251) (not b!1740351) (not b!1740274) (not b!1739957) (not b!1740135) (not d!531796) (not b!1739788) (not b!1739819) (not d!531700) (not b!1740313) (not b_lambda!55741) (not b!1740175) (not d!531788) (not b!1740121) (not d!531754) (not b_lambda!55737) (not b!1739824) (not b!1739823) (not b!1740247) (not b!1739745) (not b!1740253) (not b!1740299) (not d!531766) (not d!531856) (not b!1740058) (not b!1740252) (not b_next!48517) b_and!129293 (not b!1739956) (not b!1740000) (not d!531734) b_and!129271 (not d!531792) (not b_next!48509) (not b!1739989) (not b_next!48507) (not tb!104031) (not b!1740308) (not b!1740078) (not d!531818) (not b!1739994) (not d!531852) (not b!1740376) (not d!531756) (not b!1739763) (not b!1740250) (not b!1739820) (not b!1740083) b_and!129297 (not b!1740003) (not b_lambda!55729) (not b!1739765) (not d!531832) (not b!1740287) (not d!531610) (not d!531790) (not b!1740280) (not d!531834) (not b!1740298) (not b!1739740) (not b!1740374) (not b!1740039) (not d!531686) (not d!531696) (not d!531760) (not b_lambda!55709) (not d!531598) (not b!1740154) (not b!1740082) (not tb!104025) (not b!1740001) (not d!531606) (not bm!110044) (not b!1739965) (not b!1739792) (not d!531828) (not b!1740057) (not b!1740294) (not b!1740025) (not b!1739738) (not b!1740046) (not b!1740285) (not b_next!48521) (not b!1739818) (not d!531732) (not b!1740241) (not d!531784) (not b!1740256) (not b!1740396) (not b!1739960) (not bm!110045) (not d!531770) (not d!531812) (not b!1740278) (not b!1740048) (not b!1740394) (not d!531600) (not b!1739966) (not b!1740352) (not bm!110052) (not b!1739777) (not d!531710) (not b!1740173) (not d!531758) (not b!1739822) (not b_lambda!55733) (not b_next!48513) (not bm!110039) (not d!531826) (not d!531810) (not b!1740178) (not d!531622) (not b!1740263) (not b!1740077) (not b!1739776) (not d!531746) (not d!531730) (not b!1739790) (not b!1740076) (not b_next!48519) (not d!531692) (not d!531742) (not b!1740130) (not b!1740174) (not b_next!48515) (not b!1740262) b_and!129275 (not d!531688) (not b!1740260) (not b!1740129) (not d!531772) (not d!531726) (not b_lambda!55739))
(check-sat b_and!129291 b_and!129273 b_and!129295 b_and!129289 (not b_next!48511) b_and!129297 (not b_next!48521) (not b_next!48513) (not b_next!48519) (not b_next!48517) b_and!129293 b_and!129271 (not b_next!48509) (not b_next!48507) (not b_next!48515) b_and!129275)
