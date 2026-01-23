; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!335510 () Bool)

(assert start!335510)

(declare-fun b!3605706 () Bool)

(declare-fun b_free!93425 () Bool)

(declare-fun b_next!94129 () Bool)

(assert (=> b!3605706 (= b_free!93425 (not b_next!94129))))

(declare-fun tp!1102548 () Bool)

(declare-fun b_and!262467 () Bool)

(assert (=> b!3605706 (= tp!1102548 b_and!262467)))

(declare-fun b_free!93427 () Bool)

(declare-fun b_next!94131 () Bool)

(assert (=> b!3605706 (= b_free!93427 (not b_next!94131))))

(declare-fun tp!1102547 () Bool)

(declare-fun b_and!262469 () Bool)

(assert (=> b!3605706 (= tp!1102547 b_and!262469)))

(declare-fun b!3605688 () Bool)

(declare-fun b_free!93429 () Bool)

(declare-fun b_next!94133 () Bool)

(assert (=> b!3605688 (= b_free!93429 (not b_next!94133))))

(declare-fun tp!1102542 () Bool)

(declare-fun b_and!262471 () Bool)

(assert (=> b!3605688 (= tp!1102542 b_and!262471)))

(declare-fun b_free!93431 () Bool)

(declare-fun b_next!94135 () Bool)

(assert (=> b!3605688 (= b_free!93431 (not b_next!94135))))

(declare-fun tp!1102541 () Bool)

(declare-fun b_and!262473 () Bool)

(assert (=> b!3605688 (= tp!1102541 b_and!262473)))

(declare-fun b!3605691 () Bool)

(declare-fun b_free!93433 () Bool)

(declare-fun b_next!94137 () Bool)

(assert (=> b!3605691 (= b_free!93433 (not b_next!94137))))

(declare-fun tp!1102550 () Bool)

(declare-fun b_and!262475 () Bool)

(assert (=> b!3605691 (= tp!1102550 b_and!262475)))

(declare-fun b_free!93435 () Bool)

(declare-fun b_next!94139 () Bool)

(assert (=> b!3605691 (= b_free!93435 (not b_next!94139))))

(declare-fun tp!1102551 () Bool)

(declare-fun b_and!262477 () Bool)

(assert (=> b!3605691 (= tp!1102551 b_and!262477)))

(declare-fun b!3605700 () Bool)

(declare-fun b_free!93437 () Bool)

(declare-fun b_next!94141 () Bool)

(assert (=> b!3605700 (= b_free!93437 (not b_next!94141))))

(declare-fun tp!1102549 () Bool)

(declare-fun b_and!262479 () Bool)

(assert (=> b!3605700 (= tp!1102549 b_and!262479)))

(declare-fun b_free!93439 () Bool)

(declare-fun b_next!94143 () Bool)

(assert (=> b!3605700 (= b_free!93439 (not b_next!94143))))

(declare-fun tp!1102538 () Bool)

(declare-fun b_and!262481 () Bool)

(assert (=> b!3605700 (= tp!1102538 b_and!262481)))

(declare-fun b!3605673 () Bool)

(declare-fun e!2231299 () Bool)

(declare-fun e!2231308 () Bool)

(assert (=> b!3605673 (= e!2231299 e!2231308)))

(declare-fun res!1457885 () Bool)

(assert (=> b!3605673 (=> (not res!1457885) (not e!2231308))))

(declare-datatypes ((List!38057 0))(
  ( (Nil!37933) (Cons!37933 (h!43353 (_ BitVec 16)) (t!292868 List!38057)) )
))
(declare-datatypes ((TokenValue!5850 0))(
  ( (FloatLiteralValue!11700 (text!41395 List!38057)) (TokenValueExt!5849 (__x!23917 Int)) (Broken!29250 (value!180604 List!38057)) (Object!5973) (End!5850) (Def!5850) (Underscore!5850) (Match!5850) (Else!5850) (Error!5850) (Case!5850) (If!5850) (Extends!5850) (Abstract!5850) (Class!5850) (Val!5850) (DelimiterValue!11700 (del!5910 List!38057)) (KeywordValue!5856 (value!180605 List!38057)) (CommentValue!11700 (value!180606 List!38057)) (WhitespaceValue!11700 (value!180607 List!38057)) (IndentationValue!5850 (value!180608 List!38057)) (String!42583) (Int32!5850) (Broken!29251 (value!180609 List!38057)) (Boolean!5851) (Unit!54007) (OperatorValue!5853 (op!5910 List!38057)) (IdentifierValue!11700 (value!180610 List!38057)) (IdentifierValue!11701 (value!180611 List!38057)) (WhitespaceValue!11701 (value!180612 List!38057)) (True!11700) (False!11700) (Broken!29252 (value!180613 List!38057)) (Broken!29253 (value!180614 List!38057)) (True!11701) (RightBrace!5850) (RightBracket!5850) (Colon!5850) (Null!5850) (Comma!5850) (LeftBracket!5850) (False!11701) (LeftBrace!5850) (ImaginaryLiteralValue!5850 (text!41396 List!38057)) (StringLiteralValue!17550 (value!180615 List!38057)) (EOFValue!5850 (value!180616 List!38057)) (IdentValue!5850 (value!180617 List!38057)) (DelimiterValue!11701 (value!180618 List!38057)) (DedentValue!5850 (value!180619 List!38057)) (NewLineValue!5850 (value!180620 List!38057)) (IntegerValue!17550 (value!180621 (_ BitVec 32)) (text!41397 List!38057)) (IntegerValue!17551 (value!180622 Int) (text!41398 List!38057)) (Times!5850) (Or!5850) (Equal!5850) (Minus!5850) (Broken!29254 (value!180623 List!38057)) (And!5850) (Div!5850) (LessEqual!5850) (Mod!5850) (Concat!16229) (Not!5850) (Plus!5850) (SpaceValue!5850 (value!180624 List!38057)) (IntegerValue!17552 (value!180625 Int) (text!41399 List!38057)) (StringLiteralValue!17551 (text!41400 List!38057)) (FloatLiteralValue!11701 (text!41401 List!38057)) (BytesLiteralValue!5850 (value!180626 List!38057)) (CommentValue!11701 (value!180627 List!38057)) (StringLiteralValue!17552 (value!180628 List!38057)) (ErrorTokenValue!5850 (msg!5911 List!38057)) )
))
(declare-datatypes ((C!20944 0))(
  ( (C!20945 (val!12520 Int)) )
))
(declare-datatypes ((Regex!10379 0))(
  ( (ElementMatch!10379 (c!623884 C!20944)) (Concat!16230 (regOne!21270 Regex!10379) (regTwo!21270 Regex!10379)) (EmptyExpr!10379) (Star!10379 (reg!10708 Regex!10379)) (EmptyLang!10379) (Union!10379 (regOne!21271 Regex!10379) (regTwo!21271 Regex!10379)) )
))
(declare-datatypes ((String!42584 0))(
  ( (String!42585 (value!180629 String)) )
))
(declare-datatypes ((List!38058 0))(
  ( (Nil!37934) (Cons!37934 (h!43354 C!20944) (t!292869 List!38058)) )
))
(declare-datatypes ((IArray!23115 0))(
  ( (IArray!23116 (innerList!11615 List!38058)) )
))
(declare-datatypes ((Conc!11555 0))(
  ( (Node!11555 (left!29643 Conc!11555) (right!29973 Conc!11555) (csize!23340 Int) (cheight!11766 Int)) (Leaf!17976 (xs!14757 IArray!23115) (csize!23341 Int)) (Empty!11555) )
))
(declare-datatypes ((BalanceConc!22724 0))(
  ( (BalanceConc!22725 (c!623885 Conc!11555)) )
))
(declare-datatypes ((TokenValueInjection!11128 0))(
  ( (TokenValueInjection!11129 (toValue!7904 Int) (toChars!7763 Int)) )
))
(declare-datatypes ((Rule!11040 0))(
  ( (Rule!11041 (regex!5620 Regex!10379) (tag!6320 String!42584) (isSeparator!5620 Bool) (transformation!5620 TokenValueInjection!11128)) )
))
(declare-datatypes ((Token!10606 0))(
  ( (Token!10607 (value!180630 TokenValue!5850) (rule!8364 Rule!11040) (size!28911 Int) (originalCharacters!6334 List!38058)) )
))
(declare-datatypes ((tuple2!37832 0))(
  ( (tuple2!37833 (_1!22050 Token!10606) (_2!22050 List!38058)) )
))
(declare-datatypes ((Option!7870 0))(
  ( (None!7869) (Some!7869 (v!37599 tuple2!37832)) )
))
(declare-fun lt!1239763 () Option!7870)

(declare-fun isDefined!6102 (Option!7870) Bool)

(assert (=> b!3605673 (= res!1457885 (isDefined!6102 lt!1239763))))

(declare-datatypes ((List!38059 0))(
  ( (Nil!37935) (Cons!37935 (h!43355 Rule!11040) (t!292870 List!38059)) )
))
(declare-fun rules!3307 () List!38059)

(declare-datatypes ((LexerInterface!5209 0))(
  ( (LexerInterfaceExt!5206 (__x!23918 Int)) (Lexer!5207) )
))
(declare-fun thiss!23823 () LexerInterface!5209)

(declare-fun lt!1239774 () List!38058)

(declare-fun maxPrefix!2743 (LexerInterface!5209 List!38059 List!38058) Option!7870)

(assert (=> b!3605673 (= lt!1239763 (maxPrefix!2743 thiss!23823 rules!3307 lt!1239774))))

(declare-fun token!511 () Token!10606)

(declare-fun list!13984 (BalanceConc!22724) List!38058)

(declare-fun charsOf!3634 (Token!10606) BalanceConc!22724)

(assert (=> b!3605673 (= lt!1239774 (list!13984 (charsOf!3634 token!511)))))

(declare-fun b!3605674 () Bool)

(declare-fun e!2231312 () Bool)

(declare-fun e!2231316 () Bool)

(assert (=> b!3605674 (= e!2231312 e!2231316)))

(declare-fun res!1457889 () Bool)

(assert (=> b!3605674 (=> (not res!1457889) (not e!2231316))))

(declare-fun lt!1239764 () Rule!11040)

(declare-fun lt!1239789 () tuple2!37832)

(declare-fun matchR!4948 (Regex!10379 List!38058) Bool)

(assert (=> b!3605674 (= res!1457889 (matchR!4948 (regex!5620 lt!1239764) (list!13984 (charsOf!3634 (_1!22050 lt!1239789)))))))

(declare-datatypes ((Option!7871 0))(
  ( (None!7870) (Some!7870 (v!37600 Rule!11040)) )
))
(declare-fun lt!1239792 () Option!7871)

(declare-fun get!12290 (Option!7871) Rule!11040)

(assert (=> b!3605674 (= lt!1239764 (get!12290 lt!1239792))))

(declare-fun b!3605675 () Bool)

(declare-fun e!2231310 () Bool)

(declare-fun e!2231304 () Bool)

(assert (=> b!3605675 (= e!2231310 e!2231304)))

(declare-fun res!1457891 () Bool)

(assert (=> b!3605675 (=> res!1457891 e!2231304)))

(declare-fun validRegex!4753 (Regex!10379) Bool)

(assert (=> b!3605675 (= res!1457891 (not (validRegex!4753 (regex!5620 (rule!8364 (_1!22050 lt!1239789))))))))

(declare-fun lt!1239777 () C!20944)

(declare-fun contains!7303 (List!38058 C!20944) Bool)

(declare-fun usedCharacters!834 (Regex!10379) List!38058)

(assert (=> b!3605675 (not (contains!7303 (usedCharacters!834 (regex!5620 (rule!8364 (_1!22050 lt!1239789)))) lt!1239777))))

(declare-datatypes ((Unit!54008 0))(
  ( (Unit!54009) )
))
(declare-fun lt!1239782 () Unit!54008)

(declare-fun rule!403 () Rule!11040)

(declare-fun lemmaSepRuleNotContainsCharContainedInANonSepRule!208 (LexerInterface!5209 List!38059 List!38059 Rule!11040 Rule!11040 C!20944) Unit!54008)

(assert (=> b!3605675 (= lt!1239782 (lemmaSepRuleNotContainsCharContainedInANonSepRule!208 thiss!23823 rules!3307 rules!3307 rule!403 (rule!8364 (_1!22050 lt!1239789)) lt!1239777))))

(declare-fun b!3605676 () Bool)

(declare-fun res!1457877 () Bool)

(declare-fun e!2231321 () Bool)

(assert (=> b!3605676 (=> res!1457877 e!2231321)))

(declare-fun suffix!1395 () List!38058)

(declare-fun isEmpty!22390 (List!38058) Bool)

(assert (=> b!3605676 (= res!1457877 (isEmpty!22390 suffix!1395))))

(declare-fun b!3605677 () Bool)

(declare-fun res!1457873 () Bool)

(assert (=> b!3605677 (=> (not res!1457873) (not e!2231299))))

(declare-fun isEmpty!22391 (List!38059) Bool)

(assert (=> b!3605677 (= res!1457873 (not (isEmpty!22391 rules!3307)))))

(declare-fun b!3605678 () Bool)

(assert (=> b!3605678 (= e!2231316 (= (rule!8364 (_1!22050 lt!1239789)) lt!1239764))))

(declare-fun b!3605679 () Bool)

(declare-fun tp!1102543 () Bool)

(declare-fun e!2231313 () Bool)

(declare-fun anOtherTypeRule!33 () Rule!11040)

(declare-fun e!2231302 () Bool)

(declare-fun inv!51296 (String!42584) Bool)

(declare-fun inv!51299 (TokenValueInjection!11128) Bool)

(assert (=> b!3605679 (= e!2231313 (and tp!1102543 (inv!51296 (tag!6320 anOtherTypeRule!33)) (inv!51299 (transformation!5620 anOtherTypeRule!33)) e!2231302))))

(declare-fun b!3605680 () Bool)

(declare-fun res!1457871 () Bool)

(declare-fun e!2231309 () Bool)

(assert (=> b!3605680 (=> (not res!1457871) (not e!2231309))))

(assert (=> b!3605680 (= res!1457871 (= (rule!8364 token!511) rule!403))))

(declare-fun b!3605681 () Bool)

(declare-fun e!2231322 () Unit!54008)

(declare-fun Unit!54010 () Unit!54008)

(assert (=> b!3605681 (= e!2231322 Unit!54010)))

(declare-fun lt!1239772 () Unit!54008)

(declare-fun lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!604 (Regex!10379 List!38058 C!20944) Unit!54008)

(assert (=> b!3605681 (= lt!1239772 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!604 (regex!5620 rule!403) lt!1239774 lt!1239777))))

(assert (=> b!3605681 false))

(declare-fun b!3605682 () Bool)

(declare-fun res!1457882 () Bool)

(declare-fun e!2231300 () Bool)

(assert (=> b!3605682 (=> res!1457882 e!2231300)))

(declare-fun sepAndNonSepRulesDisjointChars!1790 (List!38059 List!38059) Bool)

(assert (=> b!3605682 (= res!1457882 (not (sepAndNonSepRulesDisjointChars!1790 rules!3307 rules!3307)))))

(declare-fun b!3605684 () Bool)

(declare-fun res!1457884 () Bool)

(assert (=> b!3605684 (=> res!1457884 e!2231300)))

(declare-fun lt!1239784 () C!20944)

(assert (=> b!3605684 (= res!1457884 (not (contains!7303 (usedCharacters!834 (regex!5620 anOtherTypeRule!33)) lt!1239784)))))

(declare-fun b!3605685 () Bool)

(assert (=> b!3605685 (= e!2231309 (not e!2231321))))

(declare-fun res!1457893 () Bool)

(assert (=> b!3605685 (=> res!1457893 e!2231321)))

(assert (=> b!3605685 (= res!1457893 (not (matchR!4948 (regex!5620 rule!403) lt!1239774)))))

(declare-fun ruleValid!1885 (LexerInterface!5209 Rule!11040) Bool)

(assert (=> b!3605685 (ruleValid!1885 thiss!23823 rule!403)))

(declare-fun lt!1239785 () Unit!54008)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1040 (LexerInterface!5209 Rule!11040 List!38059) Unit!54008)

(assert (=> b!3605685 (= lt!1239785 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1040 thiss!23823 rule!403 rules!3307))))

(declare-fun b!3605686 () Bool)

(declare-fun res!1457872 () Bool)

(assert (=> b!3605686 (=> (not res!1457872) (not e!2231299))))

(declare-fun contains!7304 (List!38059 Rule!11040) Bool)

(assert (=> b!3605686 (= res!1457872 (contains!7304 rules!3307 anOtherTypeRule!33))))

(declare-fun tp!1102540 () Bool)

(declare-fun e!2231301 () Bool)

(declare-fun e!2231298 () Bool)

(declare-fun b!3605687 () Bool)

(assert (=> b!3605687 (= e!2231298 (and tp!1102540 (inv!51296 (tag!6320 (rule!8364 token!511))) (inv!51299 (transformation!5620 (rule!8364 token!511))) e!2231301))))

(declare-fun e!2231323 () Bool)

(assert (=> b!3605688 (= e!2231323 (and tp!1102542 tp!1102541))))

(declare-fun b!3605689 () Bool)

(assert (=> b!3605689 (= e!2231304 true)))

(declare-fun lt!1239771 () Bool)

(declare-fun lt!1239775 () List!38058)

(assert (=> b!3605689 (= lt!1239771 (contains!7303 lt!1239775 lt!1239777))))

(declare-fun e!2231318 () Bool)

(declare-fun tp!1102544 () Bool)

(declare-fun b!3605690 () Bool)

(assert (=> b!3605690 (= e!2231318 (and tp!1102544 (inv!51296 (tag!6320 rule!403)) (inv!51299 (transformation!5620 rule!403)) e!2231323))))

(assert (=> b!3605691 (= e!2231302 (and tp!1102550 tp!1102551))))

(declare-fun b!3605692 () Bool)

(declare-fun e!2231314 () Bool)

(assert (=> b!3605692 (= e!2231300 e!2231314)))

(declare-fun res!1457894 () Bool)

(assert (=> b!3605692 (=> res!1457894 e!2231314)))

(declare-fun lt!1239793 () List!38058)

(declare-fun isPrefix!2983 (List!38058 List!38058) Bool)

(assert (=> b!3605692 (= res!1457894 (not (isPrefix!2983 lt!1239775 lt!1239793)))))

(declare-fun ++!9436 (List!38058 List!38058) List!38058)

(assert (=> b!3605692 (isPrefix!2983 lt!1239775 (++!9436 lt!1239775 (_2!22050 lt!1239789)))))

(declare-fun lt!1239790 () Unit!54008)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1904 (List!38058 List!38058) Unit!54008)

(assert (=> b!3605692 (= lt!1239790 (lemmaConcatTwoListThenFirstIsPrefix!1904 lt!1239775 (_2!22050 lt!1239789)))))

(declare-fun lt!1239773 () BalanceConc!22724)

(assert (=> b!3605692 (= lt!1239775 (list!13984 lt!1239773))))

(assert (=> b!3605692 (= lt!1239773 (charsOf!3634 (_1!22050 lt!1239789)))))

(assert (=> b!3605692 e!2231312))

(declare-fun res!1457888 () Bool)

(assert (=> b!3605692 (=> (not res!1457888) (not e!2231312))))

(declare-fun isDefined!6103 (Option!7871) Bool)

(assert (=> b!3605692 (= res!1457888 (isDefined!6103 lt!1239792))))

(declare-fun getRuleFromTag!1226 (LexerInterface!5209 List!38059 String!42584) Option!7871)

(assert (=> b!3605692 (= lt!1239792 (getRuleFromTag!1226 thiss!23823 rules!3307 (tag!6320 (rule!8364 (_1!22050 lt!1239789)))))))

(declare-fun lt!1239766 () Unit!54008)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1226 (LexerInterface!5209 List!38059 List!38058 Token!10606) Unit!54008)

(assert (=> b!3605692 (= lt!1239766 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1226 thiss!23823 rules!3307 lt!1239793 (_1!22050 lt!1239789)))))

(declare-fun lt!1239781 () Option!7870)

(declare-fun get!12291 (Option!7870) tuple2!37832)

(assert (=> b!3605692 (= lt!1239789 (get!12291 lt!1239781))))

(declare-fun lt!1239770 () Unit!54008)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!889 (LexerInterface!5209 List!38059 List!38058 List!38058) Unit!54008)

(assert (=> b!3605692 (= lt!1239770 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!889 thiss!23823 rules!3307 lt!1239774 suffix!1395))))

(assert (=> b!3605692 (= lt!1239781 (maxPrefix!2743 thiss!23823 rules!3307 lt!1239793))))

(assert (=> b!3605692 (isPrefix!2983 lt!1239774 lt!1239793)))

(declare-fun lt!1239794 () Unit!54008)

(assert (=> b!3605692 (= lt!1239794 (lemmaConcatTwoListThenFirstIsPrefix!1904 lt!1239774 suffix!1395))))

(assert (=> b!3605692 (= lt!1239793 (++!9436 lt!1239774 suffix!1395))))

(declare-fun b!3605693 () Bool)

(declare-fun res!1457887 () Bool)

(assert (=> b!3605693 (=> (not res!1457887) (not e!2231299))))

(assert (=> b!3605693 (= res!1457887 (contains!7304 rules!3307 rule!403))))

(declare-fun b!3605694 () Bool)

(declare-fun res!1457875 () Bool)

(assert (=> b!3605694 (=> res!1457875 e!2231314)))

(assert (=> b!3605694 (= res!1457875 (not (matchR!4948 (regex!5620 (rule!8364 (_1!22050 lt!1239789))) lt!1239775)))))

(declare-fun b!3605695 () Bool)

(declare-fun res!1457881 () Bool)

(assert (=> b!3605695 (=> (not res!1457881) (not e!2231299))))

(assert (=> b!3605695 (= res!1457881 (not (= (isSeparator!5620 anOtherTypeRule!33) (isSeparator!5620 rule!403))))))

(declare-fun b!3605696 () Bool)

(declare-fun e!2231307 () Bool)

(declare-fun tp_is_empty!17841 () Bool)

(declare-fun tp!1102545 () Bool)

(assert (=> b!3605696 (= e!2231307 (and tp_is_empty!17841 tp!1102545))))

(declare-fun b!3605697 () Bool)

(declare-fun e!2231317 () Bool)

(assert (=> b!3605697 (= e!2231317 e!2231310)))

(declare-fun res!1457880 () Bool)

(assert (=> b!3605697 (=> res!1457880 e!2231310)))

(assert (=> b!3605697 (= res!1457880 (or (isSeparator!5620 rule!403) (not (isSeparator!5620 (rule!8364 (_1!22050 lt!1239789))))))))

(declare-fun lt!1239779 () Unit!54008)

(assert (=> b!3605697 (= lt!1239779 e!2231322)))

(declare-fun c!623883 () Bool)

(declare-fun lt!1239768 () Bool)

(assert (=> b!3605697 (= c!623883 lt!1239768)))

(declare-fun lt!1239769 () List!38058)

(assert (=> b!3605697 (= lt!1239768 (not (contains!7303 lt!1239769 lt!1239777)))))

(declare-fun head!7572 (List!38058) C!20944)

(assert (=> b!3605697 (= lt!1239777 (head!7572 lt!1239775))))

(declare-fun b!3605698 () Bool)

(assert (=> b!3605698 (= e!2231321 e!2231300)))

(declare-fun res!1457870 () Bool)

(assert (=> b!3605698 (=> res!1457870 e!2231300)))

(assert (=> b!3605698 (= res!1457870 (contains!7303 lt!1239769 lt!1239784))))

(assert (=> b!3605698 (= lt!1239784 (head!7572 suffix!1395))))

(assert (=> b!3605698 (= lt!1239769 (usedCharacters!834 (regex!5620 rule!403)))))

(declare-fun b!3605699 () Bool)

(assert (=> b!3605699 (= e!2231308 e!2231309)))

(declare-fun res!1457890 () Bool)

(assert (=> b!3605699 (=> (not res!1457890) (not e!2231309))))

(declare-fun lt!1239788 () tuple2!37832)

(assert (=> b!3605699 (= res!1457890 (= (_1!22050 lt!1239788) token!511))))

(assert (=> b!3605699 (= lt!1239788 (get!12291 lt!1239763))))

(assert (=> b!3605700 (= e!2231301 (and tp!1102549 tp!1102538))))

(declare-fun b!3605701 () Bool)

(declare-fun Unit!54011 () Unit!54008)

(assert (=> b!3605701 (= e!2231322 Unit!54011)))

(declare-fun b!3605702 () Bool)

(declare-fun e!2231319 () Bool)

(assert (=> b!3605702 (= e!2231319 e!2231317)))

(declare-fun res!1457892 () Bool)

(assert (=> b!3605702 (=> res!1457892 e!2231317)))

(declare-fun lt!1239783 () Option!7870)

(declare-fun lt!1239786 () List!38058)

(assert (=> b!3605702 (= res!1457892 (or (not (= lt!1239786 (_2!22050 lt!1239789))) (not (= lt!1239783 (Some!7869 (tuple2!37833 (_1!22050 lt!1239789) lt!1239786))))))))

(assert (=> b!3605702 (= (_2!22050 lt!1239789) lt!1239786)))

(declare-fun lt!1239791 () Unit!54008)

(declare-fun lemmaSamePrefixThenSameSuffix!1338 (List!38058 List!38058 List!38058 List!38058 List!38058) Unit!54008)

(assert (=> b!3605702 (= lt!1239791 (lemmaSamePrefixThenSameSuffix!1338 lt!1239775 (_2!22050 lt!1239789) lt!1239775 lt!1239786 lt!1239793))))

(declare-fun getSuffix!1558 (List!38058 List!38058) List!38058)

(assert (=> b!3605702 (= lt!1239786 (getSuffix!1558 lt!1239793 lt!1239775))))

(declare-fun lt!1239767 () Int)

(declare-fun lt!1239778 () TokenValue!5850)

(assert (=> b!3605702 (= lt!1239783 (Some!7869 (tuple2!37833 (Token!10607 lt!1239778 (rule!8364 (_1!22050 lt!1239789)) lt!1239767 lt!1239775) (_2!22050 lt!1239789))))))

(declare-fun maxPrefixOneRule!1887 (LexerInterface!5209 Rule!11040 List!38058) Option!7870)

(assert (=> b!3605702 (= lt!1239783 (maxPrefixOneRule!1887 thiss!23823 (rule!8364 (_1!22050 lt!1239789)) lt!1239793))))

(declare-fun size!28912 (List!38058) Int)

(assert (=> b!3605702 (= lt!1239767 (size!28912 lt!1239775))))

(declare-fun apply!9126 (TokenValueInjection!11128 BalanceConc!22724) TokenValue!5850)

(declare-fun seqFromList!4173 (List!38058) BalanceConc!22724)

(assert (=> b!3605702 (= lt!1239778 (apply!9126 (transformation!5620 (rule!8364 (_1!22050 lt!1239789))) (seqFromList!4173 lt!1239775)))))

(declare-fun lt!1239787 () Unit!54008)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!959 (LexerInterface!5209 List!38059 List!38058 List!38058 List!38058 Rule!11040) Unit!54008)

(assert (=> b!3605702 (= lt!1239787 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!959 thiss!23823 rules!3307 lt!1239775 lt!1239793 (_2!22050 lt!1239789) (rule!8364 (_1!22050 lt!1239789))))))

(declare-fun b!3605703 () Bool)

(declare-fun res!1457883 () Bool)

(assert (=> b!3605703 (=> res!1457883 e!2231310)))

(assert (=> b!3605703 (= res!1457883 (not (contains!7303 lt!1239774 lt!1239777)))))

(declare-fun b!3605704 () Bool)

(declare-fun e!2231320 () Bool)

(declare-fun e!2231325 () Bool)

(declare-fun tp!1102552 () Bool)

(assert (=> b!3605704 (= e!2231320 (and e!2231325 tp!1102552))))

(declare-fun b!3605705 () Bool)

(declare-fun res!1457876 () Bool)

(assert (=> b!3605705 (=> (not res!1457876) (not e!2231309))))

(assert (=> b!3605705 (= res!1457876 (isEmpty!22390 (_2!22050 lt!1239788)))))

(declare-fun res!1457879 () Bool)

(assert (=> start!335510 (=> (not res!1457879) (not e!2231299))))

(get-info :version)

(assert (=> start!335510 (= res!1457879 ((_ is Lexer!5207) thiss!23823))))

(assert (=> start!335510 e!2231299))

(assert (=> start!335510 e!2231320))

(assert (=> start!335510 e!2231307))

(assert (=> start!335510 true))

(declare-fun e!2231303 () Bool)

(declare-fun inv!51300 (Token!10606) Bool)

(assert (=> start!335510 (and (inv!51300 token!511) e!2231303)))

(assert (=> start!335510 e!2231318))

(assert (=> start!335510 e!2231313))

(declare-fun b!3605683 () Bool)

(assert (=> b!3605683 (= e!2231314 e!2231319)))

(declare-fun res!1457874 () Bool)

(assert (=> b!3605683 (=> res!1457874 e!2231319)))

(declare-fun size!28913 (BalanceConc!22724) Int)

(assert (=> b!3605683 (= res!1457874 (not (= lt!1239781 (Some!7869 (tuple2!37833 (Token!10607 (apply!9126 (transformation!5620 (rule!8364 (_1!22050 lt!1239789))) lt!1239773) (rule!8364 (_1!22050 lt!1239789)) (size!28913 lt!1239773) lt!1239775) (_2!22050 lt!1239789))))))))

(declare-fun lt!1239765 () Unit!54008)

(declare-fun lemmaCharactersSize!673 (Token!10606) Unit!54008)

(assert (=> b!3605683 (= lt!1239765 (lemmaCharactersSize!673 (_1!22050 lt!1239789)))))

(declare-fun lt!1239780 () Unit!54008)

(declare-fun lemmaEqSameImage!811 (TokenValueInjection!11128 BalanceConc!22724 BalanceConc!22724) Unit!54008)

(assert (=> b!3605683 (= lt!1239780 (lemmaEqSameImage!811 (transformation!5620 (rule!8364 (_1!22050 lt!1239789))) lt!1239773 (seqFromList!4173 (originalCharacters!6334 (_1!22050 lt!1239789)))))))

(declare-fun lt!1239776 () Unit!54008)

(declare-fun lemmaSemiInverse!1377 (TokenValueInjection!11128 BalanceConc!22724) Unit!54008)

(assert (=> b!3605683 (= lt!1239776 (lemmaSemiInverse!1377 (transformation!5620 (rule!8364 (_1!22050 lt!1239789))) lt!1239773))))

(declare-fun e!2231311 () Bool)

(assert (=> b!3605706 (= e!2231311 (and tp!1102548 tp!1102547))))

(declare-fun tp!1102546 () Bool)

(declare-fun b!3605707 () Bool)

(assert (=> b!3605707 (= e!2231325 (and tp!1102546 (inv!51296 (tag!6320 (h!43355 rules!3307))) (inv!51299 (transformation!5620 (h!43355 rules!3307))) e!2231311))))

(declare-fun b!3605708 () Bool)

(declare-fun res!1457878 () Bool)

(assert (=> b!3605708 (=> res!1457878 e!2231310)))

(assert (=> b!3605708 (= res!1457878 lt!1239768)))

(declare-fun tp!1102539 () Bool)

(declare-fun b!3605709 () Bool)

(declare-fun inv!21 (TokenValue!5850) Bool)

(assert (=> b!3605709 (= e!2231303 (and (inv!21 (value!180630 token!511)) e!2231298 tp!1102539))))

(declare-fun b!3605710 () Bool)

(declare-fun res!1457886 () Bool)

(assert (=> b!3605710 (=> (not res!1457886) (not e!2231299))))

(declare-fun rulesInvariant!4606 (LexerInterface!5209 List!38059) Bool)

(assert (=> b!3605710 (= res!1457886 (rulesInvariant!4606 thiss!23823 rules!3307))))

(assert (= (and start!335510 res!1457879) b!3605677))

(assert (= (and b!3605677 res!1457873) b!3605710))

(assert (= (and b!3605710 res!1457886) b!3605693))

(assert (= (and b!3605693 res!1457887) b!3605686))

(assert (= (and b!3605686 res!1457872) b!3605695))

(assert (= (and b!3605695 res!1457881) b!3605673))

(assert (= (and b!3605673 res!1457885) b!3605699))

(assert (= (and b!3605699 res!1457890) b!3605705))

(assert (= (and b!3605705 res!1457876) b!3605680))

(assert (= (and b!3605680 res!1457871) b!3605685))

(assert (= (and b!3605685 (not res!1457893)) b!3605676))

(assert (= (and b!3605676 (not res!1457877)) b!3605698))

(assert (= (and b!3605698 (not res!1457870)) b!3605684))

(assert (= (and b!3605684 (not res!1457884)) b!3605682))

(assert (= (and b!3605682 (not res!1457882)) b!3605692))

(assert (= (and b!3605692 res!1457888) b!3605674))

(assert (= (and b!3605674 res!1457889) b!3605678))

(assert (= (and b!3605692 (not res!1457894)) b!3605694))

(assert (= (and b!3605694 (not res!1457875)) b!3605683))

(assert (= (and b!3605683 (not res!1457874)) b!3605702))

(assert (= (and b!3605702 (not res!1457892)) b!3605697))

(assert (= (and b!3605697 c!623883) b!3605681))

(assert (= (and b!3605697 (not c!623883)) b!3605701))

(assert (= (and b!3605697 (not res!1457880)) b!3605703))

(assert (= (and b!3605703 (not res!1457883)) b!3605708))

(assert (= (and b!3605708 (not res!1457878)) b!3605675))

(assert (= (and b!3605675 (not res!1457891)) b!3605689))

(assert (= b!3605707 b!3605706))

(assert (= b!3605704 b!3605707))

(assert (= (and start!335510 ((_ is Cons!37935) rules!3307)) b!3605704))

(assert (= (and start!335510 ((_ is Cons!37934) suffix!1395)) b!3605696))

(assert (= b!3605687 b!3605700))

(assert (= b!3605709 b!3605687))

(assert (= start!335510 b!3605709))

(assert (= b!3605690 b!3605688))

(assert (= start!335510 b!3605690))

(assert (= b!3605679 b!3605691))

(assert (= start!335510 b!3605679))

(declare-fun m!4102379 () Bool)

(assert (=> b!3605692 m!4102379))

(declare-fun m!4102381 () Bool)

(assert (=> b!3605692 m!4102381))

(declare-fun m!4102383 () Bool)

(assert (=> b!3605692 m!4102383))

(assert (=> b!3605692 m!4102379))

(declare-fun m!4102385 () Bool)

(assert (=> b!3605692 m!4102385))

(declare-fun m!4102387 () Bool)

(assert (=> b!3605692 m!4102387))

(declare-fun m!4102389 () Bool)

(assert (=> b!3605692 m!4102389))

(declare-fun m!4102391 () Bool)

(assert (=> b!3605692 m!4102391))

(declare-fun m!4102393 () Bool)

(assert (=> b!3605692 m!4102393))

(declare-fun m!4102395 () Bool)

(assert (=> b!3605692 m!4102395))

(declare-fun m!4102397 () Bool)

(assert (=> b!3605692 m!4102397))

(declare-fun m!4102399 () Bool)

(assert (=> b!3605692 m!4102399))

(declare-fun m!4102401 () Bool)

(assert (=> b!3605692 m!4102401))

(declare-fun m!4102403 () Bool)

(assert (=> b!3605692 m!4102403))

(declare-fun m!4102405 () Bool)

(assert (=> b!3605692 m!4102405))

(declare-fun m!4102407 () Bool)

(assert (=> b!3605692 m!4102407))

(declare-fun m!4102409 () Bool)

(assert (=> b!3605673 m!4102409))

(declare-fun m!4102411 () Bool)

(assert (=> b!3605673 m!4102411))

(declare-fun m!4102413 () Bool)

(assert (=> b!3605673 m!4102413))

(assert (=> b!3605673 m!4102413))

(declare-fun m!4102415 () Bool)

(assert (=> b!3605673 m!4102415))

(declare-fun m!4102417 () Bool)

(assert (=> b!3605705 m!4102417))

(declare-fun m!4102419 () Bool)

(assert (=> b!3605681 m!4102419))

(declare-fun m!4102421 () Bool)

(assert (=> b!3605702 m!4102421))

(declare-fun m!4102423 () Bool)

(assert (=> b!3605702 m!4102423))

(declare-fun m!4102425 () Bool)

(assert (=> b!3605702 m!4102425))

(declare-fun m!4102427 () Bool)

(assert (=> b!3605702 m!4102427))

(declare-fun m!4102429 () Bool)

(assert (=> b!3605702 m!4102429))

(declare-fun m!4102431 () Bool)

(assert (=> b!3605702 m!4102431))

(declare-fun m!4102433 () Bool)

(assert (=> b!3605702 m!4102433))

(assert (=> b!3605702 m!4102427))

(declare-fun m!4102435 () Bool)

(assert (=> b!3605693 m!4102435))

(declare-fun m!4102437 () Bool)

(assert (=> b!3605709 m!4102437))

(declare-fun m!4102439 () Bool)

(assert (=> b!3605689 m!4102439))

(declare-fun m!4102441 () Bool)

(assert (=> b!3605697 m!4102441))

(declare-fun m!4102443 () Bool)

(assert (=> b!3605697 m!4102443))

(declare-fun m!4102445 () Bool)

(assert (=> b!3605679 m!4102445))

(declare-fun m!4102447 () Bool)

(assert (=> b!3605679 m!4102447))

(declare-fun m!4102449 () Bool)

(assert (=> b!3605699 m!4102449))

(declare-fun m!4102451 () Bool)

(assert (=> b!3605694 m!4102451))

(declare-fun m!4102453 () Bool)

(assert (=> b!3605685 m!4102453))

(declare-fun m!4102455 () Bool)

(assert (=> b!3605685 m!4102455))

(declare-fun m!4102457 () Bool)

(assert (=> b!3605685 m!4102457))

(declare-fun m!4102459 () Bool)

(assert (=> b!3605686 m!4102459))

(declare-fun m!4102461 () Bool)

(assert (=> b!3605687 m!4102461))

(declare-fun m!4102463 () Bool)

(assert (=> b!3605687 m!4102463))

(declare-fun m!4102465 () Bool)

(assert (=> b!3605683 m!4102465))

(declare-fun m!4102467 () Bool)

(assert (=> b!3605683 m!4102467))

(declare-fun m!4102469 () Bool)

(assert (=> b!3605683 m!4102469))

(declare-fun m!4102471 () Bool)

(assert (=> b!3605683 m!4102471))

(declare-fun m!4102473 () Bool)

(assert (=> b!3605683 m!4102473))

(declare-fun m!4102475 () Bool)

(assert (=> b!3605683 m!4102475))

(assert (=> b!3605683 m!4102465))

(assert (=> b!3605674 m!4102395))

(assert (=> b!3605674 m!4102395))

(declare-fun m!4102477 () Bool)

(assert (=> b!3605674 m!4102477))

(assert (=> b!3605674 m!4102477))

(declare-fun m!4102479 () Bool)

(assert (=> b!3605674 m!4102479))

(declare-fun m!4102481 () Bool)

(assert (=> b!3605674 m!4102481))

(declare-fun m!4102483 () Bool)

(assert (=> b!3605682 m!4102483))

(declare-fun m!4102485 () Bool)

(assert (=> start!335510 m!4102485))

(declare-fun m!4102487 () Bool)

(assert (=> b!3605677 m!4102487))

(declare-fun m!4102489 () Bool)

(assert (=> b!3605675 m!4102489))

(declare-fun m!4102491 () Bool)

(assert (=> b!3605675 m!4102491))

(assert (=> b!3605675 m!4102491))

(declare-fun m!4102493 () Bool)

(assert (=> b!3605675 m!4102493))

(declare-fun m!4102495 () Bool)

(assert (=> b!3605675 m!4102495))

(declare-fun m!4102497 () Bool)

(assert (=> b!3605710 m!4102497))

(declare-fun m!4102499 () Bool)

(assert (=> b!3605676 m!4102499))

(declare-fun m!4102501 () Bool)

(assert (=> b!3605684 m!4102501))

(assert (=> b!3605684 m!4102501))

(declare-fun m!4102503 () Bool)

(assert (=> b!3605684 m!4102503))

(declare-fun m!4102505 () Bool)

(assert (=> b!3605698 m!4102505))

(declare-fun m!4102507 () Bool)

(assert (=> b!3605698 m!4102507))

(declare-fun m!4102509 () Bool)

(assert (=> b!3605698 m!4102509))

(declare-fun m!4102511 () Bool)

(assert (=> b!3605703 m!4102511))

(declare-fun m!4102513 () Bool)

(assert (=> b!3605690 m!4102513))

(declare-fun m!4102515 () Bool)

(assert (=> b!3605690 m!4102515))

(declare-fun m!4102517 () Bool)

(assert (=> b!3605707 m!4102517))

(declare-fun m!4102519 () Bool)

(assert (=> b!3605707 m!4102519))

(check-sat (not b!3605684) (not b_next!94139) (not b_next!94129) (not b!3605703) b_and!262467 (not b!3605677) (not b!3605702) (not b!3605673) (not b_next!94133) b_and!262481 (not b!3605682) (not b!3605690) (not b_next!94137) (not b!3605710) (not b!3605685) (not b!3605705) (not b!3605707) (not b!3605689) (not b!3605699) (not b!3605681) (not b!3605692) (not b!3605693) (not b!3605676) (not b_next!94135) tp_is_empty!17841 (not start!335510) (not b_next!94141) (not b!3605704) (not b!3605694) (not b!3605683) b_and!262469 (not b_next!94143) (not b!3605687) b_and!262471 (not b!3605679) b_and!262477 b_and!262473 (not b!3605686) (not b!3605697) (not b!3605674) (not b!3605675) (not b!3605696) (not b!3605709) (not b_next!94131) (not b!3605698) b_and!262479 b_and!262475)
(check-sat b_and!262481 (not b_next!94139) (not b_next!94137) (not b_next!94129) b_and!262467 (not b_next!94135) (not b_next!94141) b_and!262469 (not b_next!94131) (not b_next!94133) (not b_next!94143) b_and!262471 b_and!262477 b_and!262473 b_and!262479 b_and!262475)
