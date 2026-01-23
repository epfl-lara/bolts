; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!337066 () Bool)

(assert start!337066)

(declare-fun b!3619861 () Bool)

(declare-fun b_free!94353 () Bool)

(declare-fun b_next!95057 () Bool)

(assert (=> b!3619861 (= b_free!94353 (not b_next!95057))))

(declare-fun tp!1105795 () Bool)

(declare-fun b_and!264563 () Bool)

(assert (=> b!3619861 (= tp!1105795 b_and!264563)))

(declare-fun b_free!94355 () Bool)

(declare-fun b_next!95059 () Bool)

(assert (=> b!3619861 (= b_free!94355 (not b_next!95059))))

(declare-fun tp!1105792 () Bool)

(declare-fun b_and!264565 () Bool)

(assert (=> b!3619861 (= tp!1105792 b_and!264565)))

(declare-fun b!3619851 () Bool)

(declare-fun b_free!94357 () Bool)

(declare-fun b_next!95061 () Bool)

(assert (=> b!3619851 (= b_free!94357 (not b_next!95061))))

(declare-fun tp!1105796 () Bool)

(declare-fun b_and!264567 () Bool)

(assert (=> b!3619851 (= tp!1105796 b_and!264567)))

(declare-fun b_free!94359 () Bool)

(declare-fun b_next!95063 () Bool)

(assert (=> b!3619851 (= b_free!94359 (not b_next!95063))))

(declare-fun tp!1105786 () Bool)

(declare-fun b_and!264569 () Bool)

(assert (=> b!3619851 (= tp!1105786 b_and!264569)))

(declare-fun b!3619893 () Bool)

(declare-fun b_free!94361 () Bool)

(declare-fun b_next!95065 () Bool)

(assert (=> b!3619893 (= b_free!94361 (not b_next!95065))))

(declare-fun tp!1105790 () Bool)

(declare-fun b_and!264571 () Bool)

(assert (=> b!3619893 (= tp!1105790 b_and!264571)))

(declare-fun b_free!94363 () Bool)

(declare-fun b_next!95067 () Bool)

(assert (=> b!3619893 (= b_free!94363 (not b_next!95067))))

(declare-fun tp!1105798 () Bool)

(declare-fun b_and!264573 () Bool)

(assert (=> b!3619893 (= tp!1105798 b_and!264573)))

(declare-fun b!3619862 () Bool)

(declare-fun b_free!94365 () Bool)

(declare-fun b_next!95069 () Bool)

(assert (=> b!3619862 (= b_free!94365 (not b_next!95069))))

(declare-fun tp!1105785 () Bool)

(declare-fun b_and!264575 () Bool)

(assert (=> b!3619862 (= tp!1105785 b_and!264575)))

(declare-fun b_free!94367 () Bool)

(declare-fun b_next!95071 () Bool)

(assert (=> b!3619862 (= b_free!94367 (not b_next!95071))))

(declare-fun tp!1105784 () Bool)

(declare-fun b_and!264577 () Bool)

(assert (=> b!3619862 (= tp!1105784 b_and!264577)))

(declare-fun bm!261900 () Bool)

(declare-fun call!261905 () Bool)

(declare-datatypes ((C!21052 0))(
  ( (C!21053 (val!12574 Int)) )
))
(declare-datatypes ((List!38251 0))(
  ( (Nil!38127) (Cons!38127 (h!43547 C!21052) (t!294042 List!38251)) )
))
(declare-fun call!261909 () List!38251)

(declare-fun lt!1250635 () C!21052)

(declare-fun contains!7411 (List!38251 C!21052) Bool)

(assert (=> bm!261900 (= call!261905 (contains!7411 call!261909 lt!1250635))))

(declare-fun b!3619841 () Bool)

(assert (=> b!3619841 false))

(declare-datatypes ((Unit!54822 0))(
  ( (Unit!54823) )
))
(declare-fun lt!1250674 () Unit!54822)

(declare-fun call!261907 () Unit!54822)

(assert (=> b!3619841 (= lt!1250674 call!261907)))

(declare-fun call!261906 () Bool)

(assert (=> b!3619841 (not call!261906)))

(declare-datatypes ((List!38252 0))(
  ( (Nil!38128) (Cons!38128 (h!43548 (_ BitVec 16)) (t!294043 List!38252)) )
))
(declare-datatypes ((TokenValue!5904 0))(
  ( (FloatLiteralValue!11808 (text!41773 List!38252)) (TokenValueExt!5903 (__x!24025 Int)) (Broken!29520 (value!182143 List!38252)) (Object!6027) (End!5904) (Def!5904) (Underscore!5904) (Match!5904) (Else!5904) (Error!5904) (Case!5904) (If!5904) (Extends!5904) (Abstract!5904) (Class!5904) (Val!5904) (DelimiterValue!11808 (del!5964 List!38252)) (KeywordValue!5910 (value!182144 List!38252)) (CommentValue!11808 (value!182145 List!38252)) (WhitespaceValue!11808 (value!182146 List!38252)) (IndentationValue!5904 (value!182147 List!38252)) (String!42853) (Int32!5904) (Broken!29521 (value!182148 List!38252)) (Boolean!5905) (Unit!54824) (OperatorValue!5907 (op!5964 List!38252)) (IdentifierValue!11808 (value!182149 List!38252)) (IdentifierValue!11809 (value!182150 List!38252)) (WhitespaceValue!11809 (value!182151 List!38252)) (True!11808) (False!11808) (Broken!29522 (value!182152 List!38252)) (Broken!29523 (value!182153 List!38252)) (True!11809) (RightBrace!5904) (RightBracket!5904) (Colon!5904) (Null!5904) (Comma!5904) (LeftBracket!5904) (False!11809) (LeftBrace!5904) (ImaginaryLiteralValue!5904 (text!41774 List!38252)) (StringLiteralValue!17712 (value!182154 List!38252)) (EOFValue!5904 (value!182155 List!38252)) (IdentValue!5904 (value!182156 List!38252)) (DelimiterValue!11809 (value!182157 List!38252)) (DedentValue!5904 (value!182158 List!38252)) (NewLineValue!5904 (value!182159 List!38252)) (IntegerValue!17712 (value!182160 (_ BitVec 32)) (text!41775 List!38252)) (IntegerValue!17713 (value!182161 Int) (text!41776 List!38252)) (Times!5904) (Or!5904) (Equal!5904) (Minus!5904) (Broken!29524 (value!182162 List!38252)) (And!5904) (Div!5904) (LessEqual!5904) (Mod!5904) (Concat!16337) (Not!5904) (Plus!5904) (SpaceValue!5904 (value!182163 List!38252)) (IntegerValue!17714 (value!182164 Int) (text!41777 List!38252)) (StringLiteralValue!17713 (text!41778 List!38252)) (FloatLiteralValue!11809 (text!41779 List!38252)) (BytesLiteralValue!5904 (value!182165 List!38252)) (CommentValue!11809 (value!182166 List!38252)) (StringLiteralValue!17714 (value!182167 List!38252)) (ErrorTokenValue!5904 (msg!5965 List!38252)) )
))
(declare-datatypes ((Regex!10433 0))(
  ( (ElementMatch!10433 (c!626424 C!21052)) (Concat!16338 (regOne!21378 Regex!10433) (regTwo!21378 Regex!10433)) (EmptyExpr!10433) (Star!10433 (reg!10762 Regex!10433)) (EmptyLang!10433) (Union!10433 (regOne!21379 Regex!10433) (regTwo!21379 Regex!10433)) )
))
(declare-datatypes ((String!42854 0))(
  ( (String!42855 (value!182168 String)) )
))
(declare-datatypes ((IArray!23255 0))(
  ( (IArray!23256 (innerList!11685 List!38251)) )
))
(declare-datatypes ((Conc!11625 0))(
  ( (Node!11625 (left!29772 Conc!11625) (right!30102 Conc!11625) (csize!23480 Int) (cheight!11836 Int)) (Leaf!18073 (xs!14827 IArray!23255) (csize!23481 Int)) (Empty!11625) )
))
(declare-datatypes ((BalanceConc!22864 0))(
  ( (BalanceConc!22865 (c!626425 Conc!11625)) )
))
(declare-datatypes ((TokenValueInjection!11236 0))(
  ( (TokenValueInjection!11237 (toValue!7958 Int) (toChars!7817 Int)) )
))
(declare-datatypes ((Rule!11148 0))(
  ( (Rule!11149 (regex!5674 Regex!10433) (tag!6390 String!42854) (isSeparator!5674 Bool) (transformation!5674 TokenValueInjection!11236)) )
))
(declare-datatypes ((List!38253 0))(
  ( (Nil!38129) (Cons!38129 (h!43549 Rule!11148) (t!294044 List!38253)) )
))
(declare-fun rules!3307 () List!38253)

(declare-fun lt!1250637 () Unit!54822)

(declare-datatypes ((LexerInterface!5263 0))(
  ( (LexerInterfaceExt!5260 (__x!24026 Int)) (Lexer!5261) )
))
(declare-fun thiss!23823 () LexerInterface!5263)

(declare-fun rule!403 () Rule!11148)

(declare-fun lt!1250632 () C!21052)

(declare-datatypes ((Token!10714 0))(
  ( (Token!10715 (value!182169 TokenValue!5904) (rule!8434 Rule!11148) (size!29089 Int) (originalCharacters!6388 List!38251)) )
))
(declare-datatypes ((tuple2!38004 0))(
  ( (tuple2!38005 (_1!22136 Token!10714) (_2!22136 List!38251)) )
))
(declare-fun lt!1250630 () tuple2!38004)

(declare-fun lemmaSepRuleNotContainsCharContainedInANonSepRule!262 (LexerInterface!5263 List!38253 List!38253 Rule!11148 Rule!11148 C!21052) Unit!54822)

(assert (=> b!3619841 (= lt!1250637 (lemmaSepRuleNotContainsCharContainedInANonSepRule!262 thiss!23823 rules!3307 rules!3307 rule!403 (rule!8434 (_1!22136 lt!1250630)) lt!1250632))))

(declare-fun e!2240588 () Unit!54822)

(declare-fun Unit!54825 () Unit!54822)

(assert (=> b!3619841 (= e!2240588 Unit!54825)))

(declare-fun tp!1105788 () Bool)

(declare-fun b!3619842 () Bool)

(declare-fun e!2240605 () Bool)

(declare-fun anOtherTypeRule!33 () Rule!11148)

(declare-fun e!2240592 () Bool)

(declare-fun inv!51517 (String!42854) Bool)

(declare-fun inv!51520 (TokenValueInjection!11236) Bool)

(assert (=> b!3619842 (= e!2240592 (and tp!1105788 (inv!51517 (tag!6390 anOtherTypeRule!33)) (inv!51520 (transformation!5674 anOtherTypeRule!33)) e!2240605))))

(declare-fun b!3619843 () Bool)

(declare-fun res!1464782 () Bool)

(declare-fun e!2240585 () Bool)

(assert (=> b!3619843 (=> (not res!1464782) (not e!2240585))))

(declare-fun isEmpty!22530 (List!38253) Bool)

(assert (=> b!3619843 (= res!1464782 (not (isEmpty!22530 rules!3307)))))

(declare-fun e!2240577 () Bool)

(declare-fun e!2240575 () Bool)

(declare-fun b!3619844 () Bool)

(declare-fun token!511 () Token!10714)

(declare-fun tp!1105797 () Bool)

(declare-fun inv!21 (TokenValue!5904) Bool)

(assert (=> b!3619844 (= e!2240575 (and (inv!21 (value!182169 token!511)) e!2240577 tp!1105797))))

(declare-fun b!3619845 () Bool)

(declare-fun e!2240602 () Unit!54822)

(declare-fun e!2240576 () Unit!54822)

(assert (=> b!3619845 (= e!2240602 e!2240576)))

(declare-fun lt!1250663 () List!38251)

(declare-fun suffix!1395 () List!38251)

(declare-fun lt!1250671 () List!38251)

(declare-fun lt!1250641 () List!38251)

(declare-fun lt!1250640 () Unit!54822)

(declare-fun lemmaLongerPrefixContainsHeadOfSuffixOfSmallerPref!52 (List!38251 List!38251 List!38251 List!38251) Unit!54822)

(assert (=> b!3619845 (= lt!1250640 (lemmaLongerPrefixContainsHeadOfSuffixOfSmallerPref!52 lt!1250663 suffix!1395 lt!1250641 lt!1250671))))

(assert (=> b!3619845 (contains!7411 lt!1250641 lt!1250635)))

(declare-fun c!626418 () Bool)

(assert (=> b!3619845 (= c!626418 (isSeparator!5674 rule!403))))

(declare-fun b!3619846 () Bool)

(declare-fun e!2240596 () Unit!54822)

(declare-fun Unit!54826 () Unit!54822)

(assert (=> b!3619846 (= e!2240596 Unit!54826)))

(declare-fun lt!1250675 () Unit!54822)

(declare-fun lemmaMaxPrefixOutputsMaxPrefix!322 (LexerInterface!5263 List!38253 Rule!11148 List!38251 List!38251 List!38251 Rule!11148) Unit!54822)

(assert (=> b!3619846 (= lt!1250675 (lemmaMaxPrefixOutputsMaxPrefix!322 thiss!23823 rules!3307 (rule!8434 (_1!22136 lt!1250630)) lt!1250641 lt!1250671 lt!1250663 rule!403))))

(assert (=> b!3619846 false))

(declare-fun bm!261901 () Bool)

(declare-fun call!261910 () Unit!54822)

(declare-fun lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!658 (Regex!10433 List!38251 C!21052) Unit!54822)

(assert (=> bm!261901 (= call!261910 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!658 (regex!5674 (rule!8434 (_1!22136 lt!1250630))) lt!1250641 lt!1250635))))

(declare-fun b!3619847 () Bool)

(declare-fun res!1464783 () Bool)

(declare-fun e!2240606 () Bool)

(assert (=> b!3619847 (=> (not res!1464783) (not e!2240606))))

(assert (=> b!3619847 (= res!1464783 (= (rule!8434 token!511) rule!403))))

(declare-fun b!3619848 () Bool)

(declare-fun e!2240578 () Bool)

(declare-fun e!2240604 () Bool)

(declare-fun tp!1105787 () Bool)

(assert (=> b!3619848 (= e!2240604 (and tp!1105787 (inv!51517 (tag!6390 (h!43549 rules!3307))) (inv!51520 (transformation!5674 (h!43549 rules!3307))) e!2240578))))

(declare-fun b!3619849 () Bool)

(declare-fun res!1464777 () Bool)

(assert (=> b!3619849 (=> (not res!1464777) (not e!2240585))))

(assert (=> b!3619849 (= res!1464777 (not (= (isSeparator!5674 anOtherTypeRule!33) (isSeparator!5674 rule!403))))))

(declare-fun b!3619850 () Bool)

(declare-fun res!1464770 () Bool)

(declare-fun e!2240603 () Bool)

(assert (=> b!3619850 (=> res!1464770 e!2240603)))

(declare-fun sepAndNonSepRulesDisjointChars!1844 (List!38253 List!38253) Bool)

(assert (=> b!3619850 (= res!1464770 (not (sepAndNonSepRulesDisjointChars!1844 rules!3307 rules!3307)))))

(declare-fun e!2240601 () Bool)

(assert (=> b!3619851 (= e!2240601 (and tp!1105796 tp!1105786))))

(declare-fun b!3619852 () Bool)

(declare-fun e!2240610 () Bool)

(declare-fun rulesValidInductive!1991 (LexerInterface!5263 List!38253) Bool)

(assert (=> b!3619852 (= e!2240610 (rulesValidInductive!1991 thiss!23823 rules!3307))))

(assert (=> b!3619852 (= suffix!1395 (_2!22136 lt!1250630))))

(declare-fun lt!1250659 () Unit!54822)

(declare-fun lemmaSamePrefixThenSameSuffix!1392 (List!38251 List!38251 List!38251 List!38251 List!38251) Unit!54822)

(assert (=> b!3619852 (= lt!1250659 (lemmaSamePrefixThenSameSuffix!1392 lt!1250663 suffix!1395 lt!1250641 (_2!22136 lt!1250630) lt!1250671))))

(declare-fun b!3619853 () Bool)

(declare-fun e!2240580 () Bool)

(assert (=> b!3619853 (= e!2240580 e!2240603)))

(declare-fun res!1464768 () Bool)

(assert (=> b!3619853 (=> res!1464768 e!2240603)))

(declare-fun lt!1250669 () List!38251)

(assert (=> b!3619853 (= res!1464768 (contains!7411 lt!1250669 lt!1250635))))

(declare-fun head!7642 (List!38251) C!21052)

(assert (=> b!3619853 (= lt!1250635 (head!7642 suffix!1395))))

(declare-fun usedCharacters!888 (Regex!10433) List!38251)

(assert (=> b!3619853 (= lt!1250669 (usedCharacters!888 (regex!5674 rule!403)))))

(declare-fun b!3619854 () Bool)

(declare-fun Unit!54827 () Unit!54822)

(assert (=> b!3619854 (= e!2240588 Unit!54827)))

(declare-fun b!3619855 () Bool)

(declare-fun res!1464779 () Bool)

(assert (=> b!3619855 (=> (not res!1464779) (not e!2240585))))

(declare-fun rulesInvariant!4660 (LexerInterface!5263 List!38253) Bool)

(assert (=> b!3619855 (= res!1464779 (rulesInvariant!4660 thiss!23823 rules!3307))))

(declare-fun b!3619856 () Bool)

(assert (=> b!3619856 false))

(declare-fun lt!1250679 () Unit!54822)

(assert (=> b!3619856 (= lt!1250679 call!261907)))

(assert (=> b!3619856 (not call!261906)))

(declare-fun lt!1250666 () Unit!54822)

(declare-fun lemmaNonSepRuleNotContainsCharContainedInASepRule!380 (LexerInterface!5263 List!38253 List!38253 Rule!11148 Rule!11148 C!21052) Unit!54822)

(assert (=> b!3619856 (= lt!1250666 (lemmaNonSepRuleNotContainsCharContainedInASepRule!380 thiss!23823 rules!3307 rules!3307 (rule!8434 (_1!22136 lt!1250630)) rule!403 lt!1250632))))

(declare-fun e!2240581 () Unit!54822)

(declare-fun Unit!54828 () Unit!54822)

(assert (=> b!3619856 (= e!2240581 Unit!54828)))

(declare-fun b!3619857 () Bool)

(declare-fun e!2240593 () Bool)

(declare-fun lt!1250650 () Rule!11148)

(assert (=> b!3619857 (= e!2240593 (= (rule!8434 (_1!22136 lt!1250630)) lt!1250650))))

(declare-fun b!3619858 () Bool)

(declare-fun res!1464765 () Bool)

(assert (=> b!3619858 (=> (not res!1464765) (not e!2240585))))

(declare-fun contains!7412 (List!38253 Rule!11148) Bool)

(assert (=> b!3619858 (= res!1464765 (contains!7412 rules!3307 anOtherTypeRule!33))))

(declare-fun b!3619859 () Bool)

(declare-fun tp!1105789 () Bool)

(assert (=> b!3619859 (= e!2240577 (and tp!1105789 (inv!51517 (tag!6390 (rule!8434 token!511))) (inv!51520 (transformation!5674 (rule!8434 token!511))) e!2240601))))

(declare-fun b!3619860 () Bool)

(assert (=> b!3619860 (= e!2240606 (not e!2240580))))

(declare-fun res!1464773 () Bool)

(assert (=> b!3619860 (=> res!1464773 e!2240580)))

(declare-fun matchR!5002 (Regex!10433 List!38251) Bool)

(assert (=> b!3619860 (= res!1464773 (not (matchR!5002 (regex!5674 rule!403) lt!1250663)))))

(declare-fun ruleValid!1939 (LexerInterface!5263 Rule!11148) Bool)

(assert (=> b!3619860 (ruleValid!1939 thiss!23823 rule!403)))

(declare-fun lt!1250623 () Unit!54822)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1094 (LexerInterface!5263 Rule!11148 List!38253) Unit!54822)

(assert (=> b!3619860 (= lt!1250623 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1094 thiss!23823 rule!403 rules!3307))))

(declare-fun bm!261902 () Bool)

(assert (=> bm!261902 (= call!261909 (usedCharacters!888 (regex!5674 (rule!8434 (_1!22136 lt!1250630)))))))

(assert (=> b!3619861 (= e!2240578 (and tp!1105795 tp!1105792))))

(declare-fun e!2240607 () Bool)

(assert (=> b!3619862 (= e!2240607 (and tp!1105785 tp!1105784))))

(declare-fun b!3619863 () Bool)

(declare-fun e!2240583 () Bool)

(assert (=> b!3619863 (= e!2240583 e!2240606)))

(declare-fun res!1464771 () Bool)

(assert (=> b!3619863 (=> (not res!1464771) (not e!2240606))))

(declare-fun lt!1250636 () tuple2!38004)

(assert (=> b!3619863 (= res!1464771 (= (_1!22136 lt!1250636) token!511))))

(declare-datatypes ((Option!7978 0))(
  ( (None!7977) (Some!7977 (v!37739 tuple2!38004)) )
))
(declare-fun lt!1250628 () Option!7978)

(declare-fun get!12425 (Option!7978) tuple2!38004)

(assert (=> b!3619863 (= lt!1250636 (get!12425 lt!1250628))))

(declare-fun b!3619864 () Bool)

(declare-fun e!2240573 () Bool)

(assert (=> b!3619864 e!2240573))

(declare-fun res!1464781 () Bool)

(assert (=> b!3619864 (=> (not res!1464781) (not e!2240573))))

(assert (=> b!3619864 (= res!1464781 (not (matchR!5002 (regex!5674 (rule!8434 (_1!22136 lt!1250630))) lt!1250663)))))

(declare-fun lt!1250651 () Unit!54822)

(declare-fun lemmaMaxPrefNoSmallerRuleMatches!208 (LexerInterface!5263 List!38253 Rule!11148 List!38251 List!38251 Rule!11148) Unit!54822)

(assert (=> b!3619864 (= lt!1250651 (lemmaMaxPrefNoSmallerRuleMatches!208 thiss!23823 rules!3307 rule!403 lt!1250663 lt!1250663 (rule!8434 (_1!22136 lt!1250630))))))

(declare-fun isEmpty!22531 (List!38251) Bool)

(declare-fun getSuffix!1612 (List!38251 List!38251) List!38251)

(assert (=> b!3619864 (isEmpty!22531 (getSuffix!1612 lt!1250663 lt!1250663))))

(declare-fun lt!1250673 () Unit!54822)

(declare-fun lemmaGetSuffixOnListWithItSelfIsEmpty!168 (List!38251) Unit!54822)

(assert (=> b!3619864 (= lt!1250673 (lemmaGetSuffixOnListWithItSelfIsEmpty!168 lt!1250663))))

(declare-fun e!2240598 () Unit!54822)

(declare-fun Unit!54829 () Unit!54822)

(assert (=> b!3619864 (= e!2240598 Unit!54829)))

(declare-fun b!3619865 () Bool)

(declare-fun e!2240590 () Bool)

(declare-fun tp!1105794 () Bool)

(assert (=> b!3619865 (= e!2240590 (and e!2240604 tp!1105794))))

(declare-fun b!3619866 () Bool)

(declare-fun e!2240582 () Unit!54822)

(declare-fun Unit!54830 () Unit!54822)

(assert (=> b!3619866 (= e!2240582 Unit!54830)))

(declare-fun lt!1250631 () Int)

(declare-fun getIndex!456 (List!38253 Rule!11148) Int)

(assert (=> b!3619866 (= lt!1250631 (getIndex!456 rules!3307 (rule!8434 (_1!22136 lt!1250630))))))

(declare-fun lt!1250655 () Int)

(assert (=> b!3619866 (= lt!1250655 (getIndex!456 rules!3307 rule!403))))

(declare-fun c!626414 () Bool)

(assert (=> b!3619866 (= c!626414 (< lt!1250631 lt!1250655))))

(declare-fun lt!1250677 () Unit!54822)

(assert (=> b!3619866 (= lt!1250677 e!2240598)))

(declare-fun c!626419 () Bool)

(assert (=> b!3619866 (= c!626419 (< lt!1250655 lt!1250631))))

(declare-fun lt!1250661 () Unit!54822)

(declare-fun e!2240587 () Unit!54822)

(assert (=> b!3619866 (= lt!1250661 e!2240587)))

(declare-fun lt!1250633 () Unit!54822)

(declare-fun lemmaSameIndexThenSameElement!224 (List!38253 Rule!11148 Rule!11148) Unit!54822)

(assert (=> b!3619866 (= lt!1250633 (lemmaSameIndexThenSameElement!224 rules!3307 (rule!8434 (_1!22136 lt!1250630)) rule!403))))

(assert (=> b!3619866 false))

(declare-fun b!3619867 () Bool)

(declare-fun Unit!54831 () Unit!54822)

(assert (=> b!3619867 (= e!2240602 Unit!54831)))

(declare-fun b!3619868 () Bool)

(assert (=> b!3619868 false))

(declare-fun lt!1250644 () Unit!54822)

(assert (=> b!3619868 (= lt!1250644 call!261910)))

(assert (=> b!3619868 (not call!261905)))

(declare-fun lt!1250653 () Unit!54822)

(assert (=> b!3619868 (= lt!1250653 (lemmaNonSepRuleNotContainsCharContainedInASepRule!380 thiss!23823 rules!3307 rules!3307 (rule!8434 (_1!22136 lt!1250630)) anOtherTypeRule!33 lt!1250635))))

(declare-fun Unit!54832 () Unit!54822)

(assert (=> b!3619868 (= e!2240576 Unit!54832)))

(declare-fun b!3619869 () Bool)

(assert (=> b!3619869 (= e!2240573 false)))

(declare-fun b!3619870 () Bool)

(assert (=> b!3619870 false))

(declare-fun lt!1250621 () Unit!54822)

(assert (=> b!3619870 (= lt!1250621 call!261910)))

(assert (=> b!3619870 (not call!261905)))

(declare-fun lt!1250657 () Unit!54822)

(assert (=> b!3619870 (= lt!1250657 (lemmaSepRuleNotContainsCharContainedInANonSepRule!262 thiss!23823 rules!3307 rules!3307 anOtherTypeRule!33 (rule!8434 (_1!22136 lt!1250630)) lt!1250635))))

(declare-fun Unit!54833 () Unit!54822)

(assert (=> b!3619870 (= e!2240576 Unit!54833)))

(declare-fun b!3619871 () Bool)

(declare-fun res!1464785 () Bool)

(assert (=> b!3619871 (=> res!1464785 e!2240580)))

(assert (=> b!3619871 (= res!1464785 (isEmpty!22531 suffix!1395))))

(declare-fun b!3619872 () Bool)

(declare-fun e!2240600 () Bool)

(assert (=> b!3619872 (= e!2240600 e!2240593)))

(declare-fun res!1464787 () Bool)

(assert (=> b!3619872 (=> (not res!1464787) (not e!2240593))))

(declare-fun list!14070 (BalanceConc!22864) List!38251)

(declare-fun charsOf!3688 (Token!10714) BalanceConc!22864)

(assert (=> b!3619872 (= res!1464787 (matchR!5002 (regex!5674 lt!1250650) (list!14070 (charsOf!3688 (_1!22136 lt!1250630)))))))

(declare-datatypes ((Option!7979 0))(
  ( (None!7978) (Some!7978 (v!37740 Rule!11148)) )
))
(declare-fun lt!1250634 () Option!7979)

(declare-fun get!12426 (Option!7979) Rule!11148)

(assert (=> b!3619872 (= lt!1250650 (get!12426 lt!1250634))))

(declare-fun b!3619873 () Bool)

(declare-fun e!2240591 () Bool)

(declare-fun tp_is_empty!17949 () Bool)

(declare-fun tp!1105793 () Bool)

(assert (=> b!3619873 (= e!2240591 (and tp_is_empty!17949 tp!1105793))))

(declare-fun b!3619874 () Bool)

(declare-fun Unit!54834 () Unit!54822)

(assert (=> b!3619874 (= e!2240596 Unit!54834)))

(declare-fun b!3619875 () Bool)

(declare-fun Unit!54835 () Unit!54822)

(assert (=> b!3619875 (= e!2240587 Unit!54835)))

(declare-fun b!3619876 () Bool)

(declare-fun Unit!54836 () Unit!54822)

(assert (=> b!3619876 (= e!2240582 Unit!54836)))

(declare-fun bm!261903 () Bool)

(declare-fun call!261908 () List!38251)

(assert (=> bm!261903 (= call!261906 (contains!7411 call!261908 lt!1250632))))

(declare-fun b!3619877 () Bool)

(declare-fun e!2240579 () Bool)

(declare-fun e!2240595 () Bool)

(assert (=> b!3619877 (= e!2240579 e!2240595)))

(declare-fun res!1464780 () Bool)

(assert (=> b!3619877 (=> res!1464780 e!2240595)))

(declare-fun lt!1250647 () Int)

(declare-fun lt!1250662 () Option!7978)

(declare-fun lt!1250667 () TokenValue!5904)

(assert (=> b!3619877 (= res!1464780 (not (= lt!1250662 (Some!7977 (tuple2!38005 (Token!10715 lt!1250667 (rule!8434 (_1!22136 lt!1250630)) lt!1250647 lt!1250641) (_2!22136 lt!1250630))))))))

(declare-fun lt!1250642 () BalanceConc!22864)

(declare-fun size!29090 (BalanceConc!22864) Int)

(assert (=> b!3619877 (= lt!1250647 (size!29090 lt!1250642))))

(declare-fun apply!9180 (TokenValueInjection!11236 BalanceConc!22864) TokenValue!5904)

(assert (=> b!3619877 (= lt!1250667 (apply!9180 (transformation!5674 (rule!8434 (_1!22136 lt!1250630))) lt!1250642))))

(declare-fun lt!1250648 () Unit!54822)

(declare-fun lemmaCharactersSize!727 (Token!10714) Unit!54822)

(assert (=> b!3619877 (= lt!1250648 (lemmaCharactersSize!727 (_1!22136 lt!1250630)))))

(declare-fun lt!1250649 () Unit!54822)

(declare-fun lemmaEqSameImage!865 (TokenValueInjection!11236 BalanceConc!22864 BalanceConc!22864) Unit!54822)

(declare-fun seqFromList!4227 (List!38251) BalanceConc!22864)

(assert (=> b!3619877 (= lt!1250649 (lemmaEqSameImage!865 (transformation!5674 (rule!8434 (_1!22136 lt!1250630))) lt!1250642 (seqFromList!4227 (originalCharacters!6388 (_1!22136 lt!1250630)))))))

(declare-fun lt!1250678 () Unit!54822)

(declare-fun lemmaSemiInverse!1431 (TokenValueInjection!11236 BalanceConc!22864) Unit!54822)

(assert (=> b!3619877 (= lt!1250678 (lemmaSemiInverse!1431 (transformation!5674 (rule!8434 (_1!22136 lt!1250630))) lt!1250642))))

(declare-fun b!3619878 () Bool)

(declare-fun res!1464766 () Bool)

(assert (=> b!3619878 (=> res!1464766 e!2240579)))

(assert (=> b!3619878 (= res!1464766 (not (matchR!5002 (regex!5674 (rule!8434 (_1!22136 lt!1250630))) lt!1250641)))))

(declare-fun b!3619879 () Bool)

(declare-fun e!2240589 () Bool)

(assert (=> b!3619879 (= e!2240589 e!2240610)))

(declare-fun res!1464772 () Bool)

(assert (=> b!3619879 (=> res!1464772 e!2240610)))

(declare-fun lt!1250652 () List!38251)

(assert (=> b!3619879 (= res!1464772 (or (not (= lt!1250652 lt!1250671)) (not (= lt!1250663 lt!1250641))))))

(declare-fun lt!1250654 () List!38251)

(assert (=> b!3619879 (= lt!1250654 (_2!22136 lt!1250630))))

(declare-fun lt!1250625 () Unit!54822)

(assert (=> b!3619879 (= lt!1250625 (lemmaSamePrefixThenSameSuffix!1392 lt!1250663 lt!1250654 lt!1250641 (_2!22136 lt!1250630) lt!1250671))))

(declare-fun maxPrefixOneRule!1941 (LexerInterface!5263 Rule!11148 List!38251) Option!7978)

(declare-fun size!29091 (List!38251) Int)

(assert (=> b!3619879 (= (maxPrefixOneRule!1941 thiss!23823 rule!403 lt!1250671) (Some!7977 (tuple2!38005 (Token!10715 (apply!9180 (transformation!5674 rule!403) (seqFromList!4227 lt!1250663)) rule!403 (size!29091 lt!1250663) lt!1250663) lt!1250654)))))

(declare-fun lt!1250638 () Unit!54822)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1013 (LexerInterface!5263 List!38253 List!38251 List!38251 List!38251 Rule!11148) Unit!54822)

(assert (=> b!3619879 (= lt!1250638 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1013 thiss!23823 rules!3307 lt!1250663 lt!1250671 lt!1250654 rule!403))))

(assert (=> b!3619879 (= lt!1250654 (getSuffix!1612 lt!1250671 lt!1250663))))

(declare-fun lt!1250676 () Unit!54822)

(assert (=> b!3619879 (= lt!1250676 e!2240582)))

(declare-fun c!626421 () Bool)

(assert (=> b!3619879 (= c!626421 (not (= (rule!8434 (_1!22136 lt!1250630)) (rule!8434 token!511))))))

(assert (=> b!3619879 (= lt!1250641 lt!1250663)))

(declare-fun lt!1250672 () Unit!54822)

(declare-fun lemmaIsPrefixSameLengthThenSameList!611 (List!38251 List!38251 List!38251) Unit!54822)

(assert (=> b!3619879 (= lt!1250672 (lemmaIsPrefixSameLengthThenSameList!611 lt!1250641 lt!1250663 lt!1250671))))

(declare-fun lt!1250668 () Unit!54822)

(assert (=> b!3619879 (= lt!1250668 e!2240596)))

(declare-fun c!626422 () Bool)

(declare-fun lt!1250622 () Int)

(assert (=> b!3619879 (= c!626422 (< lt!1250647 lt!1250622))))

(declare-fun lt!1250645 () Unit!54822)

(assert (=> b!3619879 (= lt!1250645 e!2240602)))

(declare-fun c!626417 () Bool)

(assert (=> b!3619879 (= c!626417 (> lt!1250647 lt!1250622))))

(declare-fun lt!1250664 () BalanceConc!22864)

(assert (=> b!3619879 (= lt!1250622 (size!29090 lt!1250664))))

(declare-fun lt!1250658 () Unit!54822)

(declare-fun e!2240584 () Unit!54822)

(assert (=> b!3619879 (= lt!1250658 e!2240584)))

(declare-fun c!626416 () Bool)

(assert (=> b!3619879 (= c!626416 (isSeparator!5674 rule!403))))

(declare-fun lt!1250626 () Unit!54822)

(declare-fun e!2240608 () Unit!54822)

(assert (=> b!3619879 (= lt!1250626 e!2240608)))

(declare-fun c!626420 () Bool)

(assert (=> b!3619879 (= c!626420 (not (contains!7411 lt!1250669 lt!1250632)))))

(assert (=> b!3619879 (= lt!1250632 (head!7642 lt!1250641))))

(declare-fun b!3619880 () Bool)

(assert (=> b!3619880 (= e!2240584 e!2240588)))

(declare-fun c!626415 () Bool)

(assert (=> b!3619880 (= c!626415 (isSeparator!5674 (rule!8434 (_1!22136 lt!1250630))))))

(declare-fun b!3619881 () Bool)

(declare-fun res!1464784 () Bool)

(assert (=> b!3619881 (=> res!1464784 e!2240603)))

(assert (=> b!3619881 (= res!1464784 (not (contains!7411 (usedCharacters!888 (regex!5674 anOtherTypeRule!33)) lt!1250635)))))

(declare-fun b!3619882 () Bool)

(assert (=> b!3619882 (= e!2240595 e!2240589)))

(declare-fun res!1464769 () Bool)

(assert (=> b!3619882 (=> res!1464769 e!2240589)))

(declare-fun lt!1250660 () List!38251)

(declare-fun lt!1250670 () Option!7978)

(assert (=> b!3619882 (= res!1464769 (or (not (= lt!1250660 (_2!22136 lt!1250630))) (not (= lt!1250670 (Some!7977 (tuple2!38005 (_1!22136 lt!1250630) lt!1250660))))))))

(assert (=> b!3619882 (= (_2!22136 lt!1250630) lt!1250660)))

(declare-fun lt!1250680 () Unit!54822)

(assert (=> b!3619882 (= lt!1250680 (lemmaSamePrefixThenSameSuffix!1392 lt!1250641 (_2!22136 lt!1250630) lt!1250641 lt!1250660 lt!1250671))))

(assert (=> b!3619882 (= lt!1250660 (getSuffix!1612 lt!1250671 lt!1250641))))

(declare-fun lt!1250629 () TokenValue!5904)

(declare-fun lt!1250643 () Int)

(assert (=> b!3619882 (= lt!1250670 (Some!7977 (tuple2!38005 (Token!10715 lt!1250629 (rule!8434 (_1!22136 lt!1250630)) lt!1250643 lt!1250641) (_2!22136 lt!1250630))))))

(assert (=> b!3619882 (= lt!1250670 (maxPrefixOneRule!1941 thiss!23823 (rule!8434 (_1!22136 lt!1250630)) lt!1250671))))

(assert (=> b!3619882 (= lt!1250643 (size!29091 lt!1250641))))

(assert (=> b!3619882 (= lt!1250629 (apply!9180 (transformation!5674 (rule!8434 (_1!22136 lt!1250630))) (seqFromList!4227 lt!1250641)))))

(declare-fun lt!1250639 () Unit!54822)

(assert (=> b!3619882 (= lt!1250639 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1013 thiss!23823 rules!3307 lt!1250641 lt!1250671 (_2!22136 lt!1250630) (rule!8434 (_1!22136 lt!1250630))))))

(declare-fun e!2240599 () Bool)

(declare-fun tp!1105791 () Bool)

(declare-fun b!3619883 () Bool)

(assert (=> b!3619883 (= e!2240599 (and tp!1105791 (inv!51517 (tag!6390 rule!403)) (inv!51520 (transformation!5674 rule!403)) e!2240607))))

(declare-fun bm!261904 () Bool)

(assert (=> bm!261904 (= call!261908 (usedCharacters!888 (regex!5674 (rule!8434 (_1!22136 lt!1250630)))))))

(declare-fun b!3619884 () Bool)

(declare-fun Unit!54837 () Unit!54822)

(assert (=> b!3619884 (= e!2240608 Unit!54837)))

(declare-fun lt!1250624 () Unit!54822)

(assert (=> b!3619884 (= lt!1250624 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!658 (regex!5674 rule!403) lt!1250663 lt!1250632))))

(assert (=> b!3619884 false))

(declare-fun b!3619885 () Bool)

(assert (=> b!3619885 (= e!2240585 e!2240583)))

(declare-fun res!1464775 () Bool)

(assert (=> b!3619885 (=> (not res!1464775) (not e!2240583))))

(declare-fun isDefined!6210 (Option!7978) Bool)

(assert (=> b!3619885 (= res!1464775 (isDefined!6210 lt!1250628))))

(declare-fun maxPrefix!2797 (LexerInterface!5263 List!38253 List!38251) Option!7978)

(assert (=> b!3619885 (= lt!1250628 (maxPrefix!2797 thiss!23823 rules!3307 lt!1250663))))

(assert (=> b!3619885 (= lt!1250663 (list!14070 lt!1250664))))

(assert (=> b!3619885 (= lt!1250664 (charsOf!3688 token!511))))

(declare-fun bm!261905 () Bool)

(assert (=> bm!261905 (= call!261907 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!658 (regex!5674 (rule!8434 (_1!22136 lt!1250630))) lt!1250641 lt!1250632))))

(declare-fun b!3619886 () Bool)

(declare-fun Unit!54838 () Unit!54822)

(assert (=> b!3619886 (= e!2240581 Unit!54838)))

(declare-fun b!3619887 () Bool)

(assert (=> b!3619887 (= e!2240603 e!2240579)))

(declare-fun res!1464786 () Bool)

(assert (=> b!3619887 (=> res!1464786 e!2240579)))

(declare-fun isPrefix!3037 (List!38251 List!38251) Bool)

(assert (=> b!3619887 (= res!1464786 (not (isPrefix!3037 lt!1250641 lt!1250671)))))

(assert (=> b!3619887 (isPrefix!3037 lt!1250641 lt!1250652)))

(declare-fun ++!9490 (List!38251 List!38251) List!38251)

(assert (=> b!3619887 (= lt!1250652 (++!9490 lt!1250641 (_2!22136 lt!1250630)))))

(declare-fun lt!1250665 () Unit!54822)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1958 (List!38251 List!38251) Unit!54822)

(assert (=> b!3619887 (= lt!1250665 (lemmaConcatTwoListThenFirstIsPrefix!1958 lt!1250641 (_2!22136 lt!1250630)))))

(assert (=> b!3619887 (= lt!1250641 (list!14070 lt!1250642))))

(assert (=> b!3619887 (= lt!1250642 (charsOf!3688 (_1!22136 lt!1250630)))))

(assert (=> b!3619887 e!2240600))

(declare-fun res!1464776 () Bool)

(assert (=> b!3619887 (=> (not res!1464776) (not e!2240600))))

(declare-fun isDefined!6211 (Option!7979) Bool)

(assert (=> b!3619887 (= res!1464776 (isDefined!6211 lt!1250634))))

(declare-fun getRuleFromTag!1280 (LexerInterface!5263 List!38253 String!42854) Option!7979)

(assert (=> b!3619887 (= lt!1250634 (getRuleFromTag!1280 thiss!23823 rules!3307 (tag!6390 (rule!8434 (_1!22136 lt!1250630)))))))

(declare-fun lt!1250627 () Unit!54822)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1280 (LexerInterface!5263 List!38253 List!38251 Token!10714) Unit!54822)

(assert (=> b!3619887 (= lt!1250627 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1280 thiss!23823 rules!3307 lt!1250671 (_1!22136 lt!1250630)))))

(assert (=> b!3619887 (= lt!1250630 (get!12425 lt!1250662))))

(declare-fun lt!1250646 () Unit!54822)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!943 (LexerInterface!5263 List!38253 List!38251 List!38251) Unit!54822)

(assert (=> b!3619887 (= lt!1250646 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!943 thiss!23823 rules!3307 lt!1250663 suffix!1395))))

(assert (=> b!3619887 (= lt!1250662 (maxPrefix!2797 thiss!23823 rules!3307 lt!1250671))))

(assert (=> b!3619887 (isPrefix!3037 lt!1250663 lt!1250671)))

(declare-fun lt!1250656 () Unit!54822)

(assert (=> b!3619887 (= lt!1250656 (lemmaConcatTwoListThenFirstIsPrefix!1958 lt!1250663 suffix!1395))))

(assert (=> b!3619887 (= lt!1250671 (++!9490 lt!1250663 suffix!1395))))

(declare-fun b!3619888 () Bool)

(assert (=> b!3619888 (= e!2240584 e!2240581)))

(declare-fun c!626423 () Bool)

(assert (=> b!3619888 (= c!626423 (not (isSeparator!5674 (rule!8434 (_1!22136 lt!1250630)))))))

(declare-fun b!3619889 () Bool)

(assert (=> b!3619889 false))

(declare-fun lt!1250620 () Unit!54822)

(assert (=> b!3619889 (= lt!1250620 (lemmaMaxPrefNoSmallerRuleMatches!208 thiss!23823 rules!3307 (rule!8434 (_1!22136 lt!1250630)) lt!1250663 lt!1250671 rule!403))))

(declare-fun Unit!54839 () Unit!54822)

(assert (=> b!3619889 (= e!2240587 Unit!54839)))

(declare-fun b!3619890 () Bool)

(declare-fun res!1464778 () Bool)

(assert (=> b!3619890 (=> (not res!1464778) (not e!2240585))))

(assert (=> b!3619890 (= res!1464778 (contains!7412 rules!3307 rule!403))))

(declare-fun b!3619891 () Bool)

(declare-fun Unit!54840 () Unit!54822)

(assert (=> b!3619891 (= e!2240598 Unit!54840)))

(declare-fun b!3619892 () Bool)

(declare-fun res!1464767 () Bool)

(assert (=> b!3619892 (=> (not res!1464767) (not e!2240606))))

(assert (=> b!3619892 (= res!1464767 (isEmpty!22531 (_2!22136 lt!1250636)))))

(declare-fun res!1464774 () Bool)

(assert (=> start!337066 (=> (not res!1464774) (not e!2240585))))

(get-info :version)

(assert (=> start!337066 (= res!1464774 ((_ is Lexer!5261) thiss!23823))))

(assert (=> start!337066 e!2240585))

(assert (=> start!337066 e!2240590))

(assert (=> start!337066 e!2240591))

(assert (=> start!337066 true))

(declare-fun inv!51521 (Token!10714) Bool)

(assert (=> start!337066 (and (inv!51521 token!511) e!2240575)))

(assert (=> start!337066 e!2240599))

(assert (=> start!337066 e!2240592))

(assert (=> b!3619893 (= e!2240605 (and tp!1105790 tp!1105798))))

(declare-fun b!3619894 () Bool)

(declare-fun Unit!54841 () Unit!54822)

(assert (=> b!3619894 (= e!2240608 Unit!54841)))

(assert (= (and start!337066 res!1464774) b!3619843))

(assert (= (and b!3619843 res!1464782) b!3619855))

(assert (= (and b!3619855 res!1464779) b!3619890))

(assert (= (and b!3619890 res!1464778) b!3619858))

(assert (= (and b!3619858 res!1464765) b!3619849))

(assert (= (and b!3619849 res!1464777) b!3619885))

(assert (= (and b!3619885 res!1464775) b!3619863))

(assert (= (and b!3619863 res!1464771) b!3619892))

(assert (= (and b!3619892 res!1464767) b!3619847))

(assert (= (and b!3619847 res!1464783) b!3619860))

(assert (= (and b!3619860 (not res!1464773)) b!3619871))

(assert (= (and b!3619871 (not res!1464785)) b!3619853))

(assert (= (and b!3619853 (not res!1464768)) b!3619881))

(assert (= (and b!3619881 (not res!1464784)) b!3619850))

(assert (= (and b!3619850 (not res!1464770)) b!3619887))

(assert (= (and b!3619887 res!1464776) b!3619872))

(assert (= (and b!3619872 res!1464787) b!3619857))

(assert (= (and b!3619887 (not res!1464786)) b!3619878))

(assert (= (and b!3619878 (not res!1464766)) b!3619877))

(assert (= (and b!3619877 (not res!1464780)) b!3619882))

(assert (= (and b!3619882 (not res!1464769)) b!3619879))

(assert (= (and b!3619879 c!626420) b!3619884))

(assert (= (and b!3619879 (not c!626420)) b!3619894))

(assert (= (and b!3619879 c!626416) b!3619888))

(assert (= (and b!3619879 (not c!626416)) b!3619880))

(assert (= (and b!3619888 c!626423) b!3619856))

(assert (= (and b!3619888 (not c!626423)) b!3619886))

(assert (= (and b!3619880 c!626415) b!3619841))

(assert (= (and b!3619880 (not c!626415)) b!3619854))

(assert (= (or b!3619856 b!3619841) bm!261905))

(assert (= (or b!3619856 b!3619841) bm!261904))

(assert (= (or b!3619856 b!3619841) bm!261903))

(assert (= (and b!3619879 c!626417) b!3619845))

(assert (= (and b!3619879 (not c!626417)) b!3619867))

(assert (= (and b!3619845 c!626418) b!3619870))

(assert (= (and b!3619845 (not c!626418)) b!3619868))

(assert (= (or b!3619870 b!3619868) bm!261901))

(assert (= (or b!3619870 b!3619868) bm!261902))

(assert (= (or b!3619870 b!3619868) bm!261900))

(assert (= (and b!3619879 c!626422) b!3619846))

(assert (= (and b!3619879 (not c!626422)) b!3619874))

(assert (= (and b!3619879 c!626421) b!3619866))

(assert (= (and b!3619879 (not c!626421)) b!3619876))

(assert (= (and b!3619866 c!626414) b!3619864))

(assert (= (and b!3619866 (not c!626414)) b!3619891))

(assert (= (and b!3619864 res!1464781) b!3619869))

(assert (= (and b!3619866 c!626419) b!3619889))

(assert (= (and b!3619866 (not c!626419)) b!3619875))

(assert (= (and b!3619879 (not res!1464772)) b!3619852))

(assert (= b!3619848 b!3619861))

(assert (= b!3619865 b!3619848))

(assert (= (and start!337066 ((_ is Cons!38129) rules!3307)) b!3619865))

(assert (= (and start!337066 ((_ is Cons!38127) suffix!1395)) b!3619873))

(assert (= b!3619859 b!3619851))

(assert (= b!3619844 b!3619859))

(assert (= start!337066 b!3619844))

(assert (= b!3619883 b!3619862))

(assert (= start!337066 b!3619883))

(assert (= b!3619842 b!3619893))

(assert (= start!337066 b!3619842))

(declare-fun m!4119175 () Bool)

(assert (=> b!3619885 m!4119175))

(declare-fun m!4119177 () Bool)

(assert (=> b!3619885 m!4119177))

(declare-fun m!4119179 () Bool)

(assert (=> b!3619885 m!4119179))

(declare-fun m!4119181 () Bool)

(assert (=> b!3619885 m!4119181))

(declare-fun m!4119183 () Bool)

(assert (=> b!3619870 m!4119183))

(declare-fun m!4119185 () Bool)

(assert (=> b!3619884 m!4119185))

(declare-fun m!4119187 () Bool)

(assert (=> bm!261901 m!4119187))

(declare-fun m!4119189 () Bool)

(assert (=> bm!261904 m!4119189))

(declare-fun m!4119191 () Bool)

(assert (=> b!3619852 m!4119191))

(declare-fun m!4119193 () Bool)

(assert (=> b!3619852 m!4119193))

(declare-fun m!4119195 () Bool)

(assert (=> b!3619868 m!4119195))

(declare-fun m!4119197 () Bool)

(assert (=> bm!261900 m!4119197))

(declare-fun m!4119199 () Bool)

(assert (=> b!3619877 m!4119199))

(declare-fun m!4119201 () Bool)

(assert (=> b!3619877 m!4119201))

(declare-fun m!4119203 () Bool)

(assert (=> b!3619877 m!4119203))

(assert (=> b!3619877 m!4119199))

(declare-fun m!4119205 () Bool)

(assert (=> b!3619877 m!4119205))

(declare-fun m!4119207 () Bool)

(assert (=> b!3619877 m!4119207))

(declare-fun m!4119209 () Bool)

(assert (=> b!3619877 m!4119209))

(declare-fun m!4119211 () Bool)

(assert (=> b!3619860 m!4119211))

(declare-fun m!4119213 () Bool)

(assert (=> b!3619860 m!4119213))

(declare-fun m!4119215 () Bool)

(assert (=> b!3619860 m!4119215))

(declare-fun m!4119217 () Bool)

(assert (=> b!3619889 m!4119217))

(declare-fun m!4119219 () Bool)

(assert (=> b!3619881 m!4119219))

(assert (=> b!3619881 m!4119219))

(declare-fun m!4119221 () Bool)

(assert (=> b!3619881 m!4119221))

(declare-fun m!4119223 () Bool)

(assert (=> b!3619858 m!4119223))

(declare-fun m!4119225 () Bool)

(assert (=> b!3619890 m!4119225))

(declare-fun m!4119227 () Bool)

(assert (=> b!3619872 m!4119227))

(assert (=> b!3619872 m!4119227))

(declare-fun m!4119229 () Bool)

(assert (=> b!3619872 m!4119229))

(assert (=> b!3619872 m!4119229))

(declare-fun m!4119231 () Bool)

(assert (=> b!3619872 m!4119231))

(declare-fun m!4119233 () Bool)

(assert (=> b!3619872 m!4119233))

(declare-fun m!4119235 () Bool)

(assert (=> b!3619850 m!4119235))

(declare-fun m!4119237 () Bool)

(assert (=> b!3619842 m!4119237))

(declare-fun m!4119239 () Bool)

(assert (=> b!3619842 m!4119239))

(declare-fun m!4119241 () Bool)

(assert (=> b!3619841 m!4119241))

(declare-fun m!4119243 () Bool)

(assert (=> b!3619879 m!4119243))

(declare-fun m!4119245 () Bool)

(assert (=> b!3619879 m!4119245))

(declare-fun m!4119247 () Bool)

(assert (=> b!3619879 m!4119247))

(declare-fun m!4119249 () Bool)

(assert (=> b!3619879 m!4119249))

(declare-fun m!4119251 () Bool)

(assert (=> b!3619879 m!4119251))

(declare-fun m!4119253 () Bool)

(assert (=> b!3619879 m!4119253))

(declare-fun m!4119255 () Bool)

(assert (=> b!3619879 m!4119255))

(assert (=> b!3619879 m!4119243))

(declare-fun m!4119257 () Bool)

(assert (=> b!3619879 m!4119257))

(declare-fun m!4119259 () Bool)

(assert (=> b!3619879 m!4119259))

(declare-fun m!4119261 () Bool)

(assert (=> b!3619879 m!4119261))

(declare-fun m!4119263 () Bool)

(assert (=> b!3619879 m!4119263))

(declare-fun m!4119265 () Bool)

(assert (=> b!3619848 m!4119265))

(declare-fun m!4119267 () Bool)

(assert (=> b!3619848 m!4119267))

(declare-fun m!4119269 () Bool)

(assert (=> b!3619863 m!4119269))

(declare-fun m!4119271 () Bool)

(assert (=> b!3619846 m!4119271))

(declare-fun m!4119273 () Bool)

(assert (=> b!3619859 m!4119273))

(declare-fun m!4119275 () Bool)

(assert (=> b!3619859 m!4119275))

(declare-fun m!4119277 () Bool)

(assert (=> b!3619871 m!4119277))

(declare-fun m!4119279 () Bool)

(assert (=> bm!261903 m!4119279))

(declare-fun m!4119281 () Bool)

(assert (=> b!3619855 m!4119281))

(declare-fun m!4119283 () Bool)

(assert (=> start!337066 m!4119283))

(declare-fun m!4119285 () Bool)

(assert (=> b!3619878 m!4119285))

(declare-fun m!4119287 () Bool)

(assert (=> b!3619844 m!4119287))

(declare-fun m!4119289 () Bool)

(assert (=> b!3619892 m!4119289))

(declare-fun m!4119291 () Bool)

(assert (=> b!3619853 m!4119291))

(declare-fun m!4119293 () Bool)

(assert (=> b!3619853 m!4119293))

(declare-fun m!4119295 () Bool)

(assert (=> b!3619853 m!4119295))

(declare-fun m!4119297 () Bool)

(assert (=> b!3619883 m!4119297))

(declare-fun m!4119299 () Bool)

(assert (=> b!3619883 m!4119299))

(declare-fun m!4119301 () Bool)

(assert (=> b!3619843 m!4119301))

(declare-fun m!4119303 () Bool)

(assert (=> bm!261905 m!4119303))

(declare-fun m!4119305 () Bool)

(assert (=> b!3619882 m!4119305))

(declare-fun m!4119307 () Bool)

(assert (=> b!3619882 m!4119307))

(assert (=> b!3619882 m!4119305))

(declare-fun m!4119309 () Bool)

(assert (=> b!3619882 m!4119309))

(declare-fun m!4119311 () Bool)

(assert (=> b!3619882 m!4119311))

(declare-fun m!4119313 () Bool)

(assert (=> b!3619882 m!4119313))

(declare-fun m!4119315 () Bool)

(assert (=> b!3619882 m!4119315))

(declare-fun m!4119317 () Bool)

(assert (=> b!3619882 m!4119317))

(declare-fun m!4119319 () Bool)

(assert (=> b!3619866 m!4119319))

(declare-fun m!4119321 () Bool)

(assert (=> b!3619866 m!4119321))

(declare-fun m!4119323 () Bool)

(assert (=> b!3619866 m!4119323))

(declare-fun m!4119325 () Bool)

(assert (=> b!3619845 m!4119325))

(declare-fun m!4119327 () Bool)

(assert (=> b!3619845 m!4119327))

(declare-fun m!4119329 () Bool)

(assert (=> b!3619864 m!4119329))

(declare-fun m!4119331 () Bool)

(assert (=> b!3619864 m!4119331))

(declare-fun m!4119333 () Bool)

(assert (=> b!3619864 m!4119333))

(assert (=> b!3619864 m!4119331))

(declare-fun m!4119335 () Bool)

(assert (=> b!3619864 m!4119335))

(declare-fun m!4119337 () Bool)

(assert (=> b!3619864 m!4119337))

(assert (=> bm!261902 m!4119189))

(declare-fun m!4119339 () Bool)

(assert (=> b!3619856 m!4119339))

(declare-fun m!4119341 () Bool)

(assert (=> b!3619887 m!4119341))

(declare-fun m!4119343 () Bool)

(assert (=> b!3619887 m!4119343))

(declare-fun m!4119345 () Bool)

(assert (=> b!3619887 m!4119345))

(declare-fun m!4119347 () Bool)

(assert (=> b!3619887 m!4119347))

(declare-fun m!4119349 () Bool)

(assert (=> b!3619887 m!4119349))

(declare-fun m!4119351 () Bool)

(assert (=> b!3619887 m!4119351))

(declare-fun m!4119353 () Bool)

(assert (=> b!3619887 m!4119353))

(declare-fun m!4119355 () Bool)

(assert (=> b!3619887 m!4119355))

(declare-fun m!4119357 () Bool)

(assert (=> b!3619887 m!4119357))

(assert (=> b!3619887 m!4119227))

(declare-fun m!4119359 () Bool)

(assert (=> b!3619887 m!4119359))

(declare-fun m!4119361 () Bool)

(assert (=> b!3619887 m!4119361))

(declare-fun m!4119363 () Bool)

(assert (=> b!3619887 m!4119363))

(declare-fun m!4119365 () Bool)

(assert (=> b!3619887 m!4119365))

(declare-fun m!4119367 () Bool)

(assert (=> b!3619887 m!4119367))

(check-sat (not b!3619843) b_and!264563 (not b_next!95059) (not b_next!95063) b_and!264573 (not b!3619844) (not b!3619878) (not b!3619845) (not b!3619853) (not b!3619877) (not b!3619855) (not b!3619883) (not b!3619866) (not b!3619846) (not b!3619871) b_and!264565 (not b!3619885) (not b!3619860) (not start!337066) (not bm!261900) (not bm!261904) b_and!264571 (not b!3619892) (not b_next!95067) (not b!3619868) b_and!264567 (not bm!261901) (not b!3619890) (not b_next!95057) (not b!3619841) (not b!3619856) tp_is_empty!17949 (not b!3619872) (not b_next!95065) (not b!3619863) (not bm!261902) (not b!3619859) (not b!3619882) (not b!3619850) (not b!3619864) (not b!3619884) (not b_next!95061) b_and!264577 (not b!3619870) (not b!3619852) (not b!3619887) b_and!264569 (not b_next!95069) (not b!3619889) (not bm!261903) (not b!3619842) (not b!3619848) b_and!264575 (not bm!261905) (not b!3619858) (not b!3619865) (not b!3619879) (not b!3619881) (not b!3619873) (not b_next!95071))
(check-sat b_and!264571 (not b_next!95067) b_and!264563 (not b_next!95059) (not b_next!95063) (not b_next!95065) b_and!264573 b_and!264575 b_and!264565 (not b_next!95071) b_and!264567 (not b_next!95057) (not b_next!95061) b_and!264577 b_and!264569 (not b_next!95069))
(get-model)

(declare-fun d!1064804 () Bool)

(assert (=> d!1064804 (= (isEmpty!22531 suffix!1395) ((_ is Nil!38127) suffix!1395))))

(assert (=> b!3619871 d!1064804))

(declare-fun d!1064808 () Bool)

(declare-fun lt!1250701 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!5455 (List!38253) (InoxSet Rule!11148))

(assert (=> d!1064808 (= lt!1250701 (select (content!5455 rules!3307) rule!403))))

(declare-fun e!2240667 () Bool)

(assert (=> d!1064808 (= lt!1250701 e!2240667)))

(declare-fun res!1464833 () Bool)

(assert (=> d!1064808 (=> (not res!1464833) (not e!2240667))))

(assert (=> d!1064808 (= res!1464833 ((_ is Cons!38129) rules!3307))))

(assert (=> d!1064808 (= (contains!7412 rules!3307 rule!403) lt!1250701)))

(declare-fun b!3619992 () Bool)

(declare-fun e!2240666 () Bool)

(assert (=> b!3619992 (= e!2240667 e!2240666)))

(declare-fun res!1464834 () Bool)

(assert (=> b!3619992 (=> res!1464834 e!2240666)))

(assert (=> b!3619992 (= res!1464834 (= (h!43549 rules!3307) rule!403))))

(declare-fun b!3619993 () Bool)

(assert (=> b!3619993 (= e!2240666 (contains!7412 (t!294044 rules!3307) rule!403))))

(assert (= (and d!1064808 res!1464833) b!3619992))

(assert (= (and b!3619992 (not res!1464834)) b!3619993))

(declare-fun m!4119417 () Bool)

(assert (=> d!1064808 m!4119417))

(declare-fun m!4119419 () Bool)

(assert (=> d!1064808 m!4119419))

(declare-fun m!4119421 () Bool)

(assert (=> b!3619993 m!4119421))

(assert (=> b!3619890 d!1064808))

(declare-fun b!3620050 () Bool)

(declare-fun res!1464869 () Bool)

(declare-fun e!2240705 () Bool)

(assert (=> b!3620050 (=> res!1464869 e!2240705)))

(declare-fun e!2240704 () Bool)

(assert (=> b!3620050 (= res!1464869 e!2240704)))

(declare-fun res!1464871 () Bool)

(assert (=> b!3620050 (=> (not res!1464871) (not e!2240704))))

(declare-fun lt!1250716 () Bool)

(assert (=> b!3620050 (= res!1464871 lt!1250716)))

(declare-fun bm!261928 () Bool)

(declare-fun call!261933 () Bool)

(assert (=> bm!261928 (= call!261933 (isEmpty!22531 (list!14070 (charsOf!3688 (_1!22136 lt!1250630)))))))

(declare-fun b!3620051 () Bool)

(declare-fun res!1464867 () Bool)

(assert (=> b!3620051 (=> res!1464867 e!2240705)))

(assert (=> b!3620051 (= res!1464867 (not ((_ is ElementMatch!10433) (regex!5674 lt!1250650))))))

(declare-fun e!2240699 () Bool)

(assert (=> b!3620051 (= e!2240699 e!2240705)))

(declare-fun b!3620052 () Bool)

(assert (=> b!3620052 (= e!2240704 (= (head!7642 (list!14070 (charsOf!3688 (_1!22136 lt!1250630)))) (c!626424 (regex!5674 lt!1250650))))))

(declare-fun b!3620053 () Bool)

(declare-fun e!2240701 () Bool)

(declare-fun nullable!3609 (Regex!10433) Bool)

(assert (=> b!3620053 (= e!2240701 (nullable!3609 (regex!5674 lt!1250650)))))

(declare-fun b!3620054 () Bool)

(declare-fun res!1464865 () Bool)

(assert (=> b!3620054 (=> (not res!1464865) (not e!2240704))))

(assert (=> b!3620054 (= res!1464865 (not call!261933))))

(declare-fun d!1064812 () Bool)

(declare-fun e!2240703 () Bool)

(assert (=> d!1064812 e!2240703))

(declare-fun c!626471 () Bool)

(assert (=> d!1064812 (= c!626471 ((_ is EmptyExpr!10433) (regex!5674 lt!1250650)))))

(assert (=> d!1064812 (= lt!1250716 e!2240701)))

(declare-fun c!626473 () Bool)

(assert (=> d!1064812 (= c!626473 (isEmpty!22531 (list!14070 (charsOf!3688 (_1!22136 lt!1250630)))))))

(declare-fun validRegex!4771 (Regex!10433) Bool)

(assert (=> d!1064812 (validRegex!4771 (regex!5674 lt!1250650))))

(assert (=> d!1064812 (= (matchR!5002 (regex!5674 lt!1250650) (list!14070 (charsOf!3688 (_1!22136 lt!1250630)))) lt!1250716)))

(declare-fun b!3620055 () Bool)

(declare-fun res!1464870 () Bool)

(assert (=> b!3620055 (=> (not res!1464870) (not e!2240704))))

(declare-fun tail!5607 (List!38251) List!38251)

(assert (=> b!3620055 (= res!1464870 (isEmpty!22531 (tail!5607 (list!14070 (charsOf!3688 (_1!22136 lt!1250630))))))))

(declare-fun b!3620056 () Bool)

(assert (=> b!3620056 (= e!2240703 e!2240699)))

(declare-fun c!626472 () Bool)

(assert (=> b!3620056 (= c!626472 ((_ is EmptyLang!10433) (regex!5674 lt!1250650)))))

(declare-fun b!3620057 () Bool)

(declare-fun e!2240700 () Bool)

(assert (=> b!3620057 (= e!2240700 (not (= (head!7642 (list!14070 (charsOf!3688 (_1!22136 lt!1250630)))) (c!626424 (regex!5674 lt!1250650)))))))

(declare-fun b!3620058 () Bool)

(assert (=> b!3620058 (= e!2240699 (not lt!1250716))))

(declare-fun b!3620059 () Bool)

(assert (=> b!3620059 (= e!2240703 (= lt!1250716 call!261933))))

(declare-fun b!3620060 () Bool)

(declare-fun e!2240702 () Bool)

(assert (=> b!3620060 (= e!2240705 e!2240702)))

(declare-fun res!1464866 () Bool)

(assert (=> b!3620060 (=> (not res!1464866) (not e!2240702))))

(assert (=> b!3620060 (= res!1464866 (not lt!1250716))))

(declare-fun b!3620061 () Bool)

(declare-fun res!1464872 () Bool)

(assert (=> b!3620061 (=> res!1464872 e!2240700)))

(assert (=> b!3620061 (= res!1464872 (not (isEmpty!22531 (tail!5607 (list!14070 (charsOf!3688 (_1!22136 lt!1250630)))))))))

(declare-fun b!3620062 () Bool)

(declare-fun derivativeStep!3158 (Regex!10433 C!21052) Regex!10433)

(assert (=> b!3620062 (= e!2240701 (matchR!5002 (derivativeStep!3158 (regex!5674 lt!1250650) (head!7642 (list!14070 (charsOf!3688 (_1!22136 lt!1250630))))) (tail!5607 (list!14070 (charsOf!3688 (_1!22136 lt!1250630))))))))

(declare-fun b!3620063 () Bool)

(assert (=> b!3620063 (= e!2240702 e!2240700)))

(declare-fun res!1464868 () Bool)

(assert (=> b!3620063 (=> res!1464868 e!2240700)))

(assert (=> b!3620063 (= res!1464868 call!261933)))

(assert (= (and d!1064812 c!626473) b!3620053))

(assert (= (and d!1064812 (not c!626473)) b!3620062))

(assert (= (and d!1064812 c!626471) b!3620059))

(assert (= (and d!1064812 (not c!626471)) b!3620056))

(assert (= (and b!3620056 c!626472) b!3620058))

(assert (= (and b!3620056 (not c!626472)) b!3620051))

(assert (= (and b!3620051 (not res!1464867)) b!3620050))

(assert (= (and b!3620050 res!1464871) b!3620054))

(assert (= (and b!3620054 res!1464865) b!3620055))

(assert (= (and b!3620055 res!1464870) b!3620052))

(assert (= (and b!3620050 (not res!1464869)) b!3620060))

(assert (= (and b!3620060 res!1464866) b!3620063))

(assert (= (and b!3620063 (not res!1464868)) b!3620061))

(assert (= (and b!3620061 (not res!1464872)) b!3620057))

(assert (= (or b!3620059 b!3620063 b!3620054) bm!261928))

(assert (=> d!1064812 m!4119229))

(declare-fun m!4119467 () Bool)

(assert (=> d!1064812 m!4119467))

(declare-fun m!4119469 () Bool)

(assert (=> d!1064812 m!4119469))

(assert (=> b!3620057 m!4119229))

(declare-fun m!4119471 () Bool)

(assert (=> b!3620057 m!4119471))

(assert (=> b!3620061 m!4119229))

(declare-fun m!4119473 () Bool)

(assert (=> b!3620061 m!4119473))

(assert (=> b!3620061 m!4119473))

(declare-fun m!4119475 () Bool)

(assert (=> b!3620061 m!4119475))

(declare-fun m!4119477 () Bool)

(assert (=> b!3620053 m!4119477))

(assert (=> b!3620052 m!4119229))

(assert (=> b!3620052 m!4119471))

(assert (=> b!3620062 m!4119229))

(assert (=> b!3620062 m!4119471))

(assert (=> b!3620062 m!4119471))

(declare-fun m!4119479 () Bool)

(assert (=> b!3620062 m!4119479))

(assert (=> b!3620062 m!4119229))

(assert (=> b!3620062 m!4119473))

(assert (=> b!3620062 m!4119479))

(assert (=> b!3620062 m!4119473))

(declare-fun m!4119481 () Bool)

(assert (=> b!3620062 m!4119481))

(assert (=> b!3620055 m!4119229))

(assert (=> b!3620055 m!4119473))

(assert (=> b!3620055 m!4119473))

(assert (=> b!3620055 m!4119475))

(assert (=> bm!261928 m!4119229))

(assert (=> bm!261928 m!4119467))

(assert (=> b!3619872 d!1064812))

(declare-fun d!1064838 () Bool)

(declare-fun list!14072 (Conc!11625) List!38251)

(assert (=> d!1064838 (= (list!14070 (charsOf!3688 (_1!22136 lt!1250630))) (list!14072 (c!626425 (charsOf!3688 (_1!22136 lt!1250630)))))))

(declare-fun bs!571140 () Bool)

(assert (= bs!571140 d!1064838))

(declare-fun m!4119483 () Bool)

(assert (=> bs!571140 m!4119483))

(assert (=> b!3619872 d!1064838))

(declare-fun d!1064840 () Bool)

(declare-fun lt!1250719 () BalanceConc!22864)

(assert (=> d!1064840 (= (list!14070 lt!1250719) (originalCharacters!6388 (_1!22136 lt!1250630)))))

(declare-fun dynLambda!16495 (Int TokenValue!5904) BalanceConc!22864)

(assert (=> d!1064840 (= lt!1250719 (dynLambda!16495 (toChars!7817 (transformation!5674 (rule!8434 (_1!22136 lt!1250630)))) (value!182169 (_1!22136 lt!1250630))))))

(assert (=> d!1064840 (= (charsOf!3688 (_1!22136 lt!1250630)) lt!1250719)))

(declare-fun b_lambda!107047 () Bool)

(assert (=> (not b_lambda!107047) (not d!1064840)))

(declare-fun t!294046 () Bool)

(declare-fun tb!207557 () Bool)

(assert (=> (and b!3619861 (= (toChars!7817 (transformation!5674 (h!43549 rules!3307))) (toChars!7817 (transformation!5674 (rule!8434 (_1!22136 lt!1250630))))) t!294046) tb!207557))

(declare-fun b!3620068 () Bool)

(declare-fun e!2240708 () Bool)

(declare-fun tp!1105801 () Bool)

(declare-fun inv!51524 (Conc!11625) Bool)

(assert (=> b!3620068 (= e!2240708 (and (inv!51524 (c!626425 (dynLambda!16495 (toChars!7817 (transformation!5674 (rule!8434 (_1!22136 lt!1250630)))) (value!182169 (_1!22136 lt!1250630))))) tp!1105801))))

(declare-fun result!252918 () Bool)

(declare-fun inv!51525 (BalanceConc!22864) Bool)

(assert (=> tb!207557 (= result!252918 (and (inv!51525 (dynLambda!16495 (toChars!7817 (transformation!5674 (rule!8434 (_1!22136 lt!1250630)))) (value!182169 (_1!22136 lt!1250630)))) e!2240708))))

(assert (= tb!207557 b!3620068))

(declare-fun m!4119485 () Bool)

(assert (=> b!3620068 m!4119485))

(declare-fun m!4119487 () Bool)

(assert (=> tb!207557 m!4119487))

(assert (=> d!1064840 t!294046))

(declare-fun b_and!264579 () Bool)

(assert (= b_and!264565 (and (=> t!294046 result!252918) b_and!264579)))

(declare-fun tb!207559 () Bool)

(declare-fun t!294048 () Bool)

(assert (=> (and b!3619851 (= (toChars!7817 (transformation!5674 (rule!8434 token!511))) (toChars!7817 (transformation!5674 (rule!8434 (_1!22136 lt!1250630))))) t!294048) tb!207559))

(declare-fun result!252922 () Bool)

(assert (= result!252922 result!252918))

(assert (=> d!1064840 t!294048))

(declare-fun b_and!264581 () Bool)

(assert (= b_and!264569 (and (=> t!294048 result!252922) b_and!264581)))

(declare-fun tb!207561 () Bool)

(declare-fun t!294050 () Bool)

(assert (=> (and b!3619893 (= (toChars!7817 (transformation!5674 anOtherTypeRule!33)) (toChars!7817 (transformation!5674 (rule!8434 (_1!22136 lt!1250630))))) t!294050) tb!207561))

(declare-fun result!252924 () Bool)

(assert (= result!252924 result!252918))

(assert (=> d!1064840 t!294050))

(declare-fun b_and!264583 () Bool)

(assert (= b_and!264573 (and (=> t!294050 result!252924) b_and!264583)))

(declare-fun tb!207563 () Bool)

(declare-fun t!294052 () Bool)

(assert (=> (and b!3619862 (= (toChars!7817 (transformation!5674 rule!403)) (toChars!7817 (transformation!5674 (rule!8434 (_1!22136 lt!1250630))))) t!294052) tb!207563))

(declare-fun result!252926 () Bool)

(assert (= result!252926 result!252918))

(assert (=> d!1064840 t!294052))

(declare-fun b_and!264585 () Bool)

(assert (= b_and!264577 (and (=> t!294052 result!252926) b_and!264585)))

(declare-fun m!4119489 () Bool)

(assert (=> d!1064840 m!4119489))

(declare-fun m!4119491 () Bool)

(assert (=> d!1064840 m!4119491))

(assert (=> b!3619872 d!1064840))

(declare-fun d!1064842 () Bool)

(assert (=> d!1064842 (= (get!12426 lt!1250634) (v!37740 lt!1250634))))

(assert (=> b!3619872 d!1064842))

(declare-fun d!1064844 () Bool)

(assert (=> d!1064844 true))

(declare-fun lt!1250870 () Bool)

(declare-fun lambda!124116 () Int)

(declare-fun forall!8148 (List!38253 Int) Bool)

(assert (=> d!1064844 (= lt!1250870 (forall!8148 rules!3307 lambda!124116))))

(declare-fun e!2240813 () Bool)

(assert (=> d!1064844 (= lt!1250870 e!2240813)))

(declare-fun res!1464991 () Bool)

(assert (=> d!1064844 (=> res!1464991 e!2240813)))

(assert (=> d!1064844 (= res!1464991 (not ((_ is Cons!38129) rules!3307)))))

(assert (=> d!1064844 (= (rulesValidInductive!1991 thiss!23823 rules!3307) lt!1250870)))

(declare-fun b!3620257 () Bool)

(declare-fun e!2240812 () Bool)

(assert (=> b!3620257 (= e!2240813 e!2240812)))

(declare-fun res!1464992 () Bool)

(assert (=> b!3620257 (=> (not res!1464992) (not e!2240812))))

(assert (=> b!3620257 (= res!1464992 (ruleValid!1939 thiss!23823 (h!43549 rules!3307)))))

(declare-fun b!3620258 () Bool)

(assert (=> b!3620258 (= e!2240812 (rulesValidInductive!1991 thiss!23823 (t!294044 rules!3307)))))

(assert (= (and d!1064844 (not res!1464991)) b!3620257))

(assert (= (and b!3620257 res!1464992) b!3620258))

(declare-fun m!4119847 () Bool)

(assert (=> d!1064844 m!4119847))

(declare-fun m!4119849 () Bool)

(assert (=> b!3620257 m!4119849))

(declare-fun m!4119851 () Bool)

(assert (=> b!3620258 m!4119851))

(assert (=> b!3619852 d!1064844))

(declare-fun d!1064940 () Bool)

(assert (=> d!1064940 (= suffix!1395 (_2!22136 lt!1250630))))

(declare-fun lt!1250873 () Unit!54822)

(declare-fun choose!21228 (List!38251 List!38251 List!38251 List!38251 List!38251) Unit!54822)

(assert (=> d!1064940 (= lt!1250873 (choose!21228 lt!1250663 suffix!1395 lt!1250641 (_2!22136 lt!1250630) lt!1250671))))

(assert (=> d!1064940 (isPrefix!3037 lt!1250663 lt!1250671)))

(assert (=> d!1064940 (= (lemmaSamePrefixThenSameSuffix!1392 lt!1250663 suffix!1395 lt!1250641 (_2!22136 lt!1250630) lt!1250671) lt!1250873)))

(declare-fun bs!571157 () Bool)

(assert (= bs!571157 d!1064940))

(declare-fun m!4119857 () Bool)

(assert (=> bs!571157 m!4119857))

(assert (=> bs!571157 m!4119357))

(assert (=> b!3619852 d!1064940))

(declare-fun d!1064944 () Bool)

(declare-fun lt!1250879 () Bool)

(declare-fun content!5456 (List!38251) (InoxSet C!21052))

(assert (=> d!1064944 (= lt!1250879 (select (content!5456 lt!1250669) lt!1250635))))

(declare-fun e!2240829 () Bool)

(assert (=> d!1064944 (= lt!1250879 e!2240829)))

(declare-fun res!1465008 () Bool)

(assert (=> d!1064944 (=> (not res!1465008) (not e!2240829))))

(assert (=> d!1064944 (= res!1465008 ((_ is Cons!38127) lt!1250669))))

(assert (=> d!1064944 (= (contains!7411 lt!1250669 lt!1250635) lt!1250879)))

(declare-fun b!3620275 () Bool)

(declare-fun e!2240828 () Bool)

(assert (=> b!3620275 (= e!2240829 e!2240828)))

(declare-fun res!1465007 () Bool)

(assert (=> b!3620275 (=> res!1465007 e!2240828)))

(assert (=> b!3620275 (= res!1465007 (= (h!43547 lt!1250669) lt!1250635))))

(declare-fun b!3620276 () Bool)

(assert (=> b!3620276 (= e!2240828 (contains!7411 (t!294042 lt!1250669) lt!1250635))))

(assert (= (and d!1064944 res!1465008) b!3620275))

(assert (= (and b!3620275 (not res!1465007)) b!3620276))

(declare-fun m!4119871 () Bool)

(assert (=> d!1064944 m!4119871))

(declare-fun m!4119873 () Bool)

(assert (=> d!1064944 m!4119873))

(declare-fun m!4119875 () Bool)

(assert (=> b!3620276 m!4119875))

(assert (=> b!3619853 d!1064944))

(declare-fun d!1064954 () Bool)

(assert (=> d!1064954 (= (head!7642 suffix!1395) (h!43547 suffix!1395))))

(assert (=> b!3619853 d!1064954))

(declare-fun bm!261945 () Bool)

(declare-fun call!261950 () List!38251)

(declare-fun c!626516 () Bool)

(assert (=> bm!261945 (= call!261950 (usedCharacters!888 (ite c!626516 (regTwo!21379 (regex!5674 rule!403)) (regOne!21378 (regex!5674 rule!403)))))))

(declare-fun b!3620293 () Bool)

(declare-fun c!626517 () Bool)

(assert (=> b!3620293 (= c!626517 ((_ is Star!10433) (regex!5674 rule!403)))))

(declare-fun e!2240839 () List!38251)

(declare-fun e!2240840 () List!38251)

(assert (=> b!3620293 (= e!2240839 e!2240840)))

(declare-fun b!3620294 () Bool)

(declare-fun e!2240838 () List!38251)

(assert (=> b!3620294 (= e!2240840 e!2240838)))

(assert (=> b!3620294 (= c!626516 ((_ is Union!10433) (regex!5674 rule!403)))))

(declare-fun b!3620295 () Bool)

(declare-fun call!261951 () List!38251)

(assert (=> b!3620295 (= e!2240838 call!261951)))

(declare-fun d!1064956 () Bool)

(declare-fun c!626515 () Bool)

(assert (=> d!1064956 (= c!626515 (or ((_ is EmptyExpr!10433) (regex!5674 rule!403)) ((_ is EmptyLang!10433) (regex!5674 rule!403))))))

(declare-fun e!2240841 () List!38251)

(assert (=> d!1064956 (= (usedCharacters!888 (regex!5674 rule!403)) e!2240841)))

(declare-fun call!261952 () List!38251)

(declare-fun bm!261946 () Bool)

(assert (=> bm!261946 (= call!261952 (usedCharacters!888 (ite c!626517 (reg!10762 (regex!5674 rule!403)) (ite c!626516 (regOne!21379 (regex!5674 rule!403)) (regTwo!21378 (regex!5674 rule!403))))))))

(declare-fun b!3620296 () Bool)

(assert (=> b!3620296 (= e!2240838 call!261951)))

(declare-fun bm!261947 () Bool)

(declare-fun call!261953 () List!38251)

(assert (=> bm!261947 (= call!261953 call!261952)))

(declare-fun b!3620297 () Bool)

(assert (=> b!3620297 (= e!2240841 Nil!38127)))

(declare-fun b!3620298 () Bool)

(assert (=> b!3620298 (= e!2240840 call!261952)))

(declare-fun b!3620299 () Bool)

(assert (=> b!3620299 (= e!2240839 (Cons!38127 (c!626424 (regex!5674 rule!403)) Nil!38127))))

(declare-fun bm!261948 () Bool)

(assert (=> bm!261948 (= call!261951 (++!9490 (ite c!626516 call!261953 call!261950) (ite c!626516 call!261950 call!261953)))))

(declare-fun b!3620300 () Bool)

(assert (=> b!3620300 (= e!2240841 e!2240839)))

(declare-fun c!626514 () Bool)

(assert (=> b!3620300 (= c!626514 ((_ is ElementMatch!10433) (regex!5674 rule!403)))))

(assert (= (and d!1064956 c!626515) b!3620297))

(assert (= (and d!1064956 (not c!626515)) b!3620300))

(assert (= (and b!3620300 c!626514) b!3620299))

(assert (= (and b!3620300 (not c!626514)) b!3620293))

(assert (= (and b!3620293 c!626517) b!3620298))

(assert (= (and b!3620293 (not c!626517)) b!3620294))

(assert (= (and b!3620294 c!626516) b!3620295))

(assert (= (and b!3620294 (not c!626516)) b!3620296))

(assert (= (or b!3620295 b!3620296) bm!261947))

(assert (= (or b!3620295 b!3620296) bm!261945))

(assert (= (or b!3620295 b!3620296) bm!261948))

(assert (= (or b!3620298 bm!261947) bm!261946))

(declare-fun m!4119877 () Bool)

(assert (=> bm!261945 m!4119877))

(declare-fun m!4119879 () Bool)

(assert (=> bm!261946 m!4119879))

(declare-fun m!4119881 () Bool)

(assert (=> bm!261948 m!4119881))

(assert (=> b!3619853 d!1064956))

(declare-fun d!1064958 () Bool)

(assert (=> d!1064958 (= (inv!51517 (tag!6390 (h!43549 rules!3307))) (= (mod (str.len (value!182168 (tag!6390 (h!43549 rules!3307)))) 2) 0))))

(assert (=> b!3619848 d!1064958))

(declare-fun d!1064960 () Bool)

(declare-fun res!1465011 () Bool)

(declare-fun e!2240844 () Bool)

(assert (=> d!1064960 (=> (not res!1465011) (not e!2240844))))

(declare-fun semiInverseModEq!2407 (Int Int) Bool)

(assert (=> d!1064960 (= res!1465011 (semiInverseModEq!2407 (toChars!7817 (transformation!5674 (h!43549 rules!3307))) (toValue!7958 (transformation!5674 (h!43549 rules!3307)))))))

(assert (=> d!1064960 (= (inv!51520 (transformation!5674 (h!43549 rules!3307))) e!2240844)))

(declare-fun b!3620303 () Bool)

(declare-fun equivClasses!2306 (Int Int) Bool)

(assert (=> b!3620303 (= e!2240844 (equivClasses!2306 (toChars!7817 (transformation!5674 (h!43549 rules!3307))) (toValue!7958 (transformation!5674 (h!43549 rules!3307)))))))

(assert (= (and d!1064960 res!1465011) b!3620303))

(declare-fun m!4119883 () Bool)

(assert (=> d!1064960 m!4119883))

(declare-fun m!4119885 () Bool)

(assert (=> b!3620303 m!4119885))

(assert (=> b!3619848 d!1064960))

(declare-fun b!3620312 () Bool)

(declare-fun e!2240853 () Bool)

(declare-fun e!2240851 () Bool)

(assert (=> b!3620312 (= e!2240853 e!2240851)))

(declare-fun res!1465021 () Bool)

(assert (=> b!3620312 (=> (not res!1465021) (not e!2240851))))

(assert (=> b!3620312 (= res!1465021 (not ((_ is Nil!38127) lt!1250671)))))

(declare-fun b!3620314 () Bool)

(assert (=> b!3620314 (= e!2240851 (isPrefix!3037 (tail!5607 lt!1250641) (tail!5607 lt!1250671)))))

(declare-fun d!1064962 () Bool)

(declare-fun e!2240852 () Bool)

(assert (=> d!1064962 e!2240852))

(declare-fun res!1465023 () Bool)

(assert (=> d!1064962 (=> res!1465023 e!2240852)))

(declare-fun lt!1250884 () Bool)

(assert (=> d!1064962 (= res!1465023 (not lt!1250884))))

(assert (=> d!1064962 (= lt!1250884 e!2240853)))

(declare-fun res!1465022 () Bool)

(assert (=> d!1064962 (=> res!1465022 e!2240853)))

(assert (=> d!1064962 (= res!1465022 ((_ is Nil!38127) lt!1250641))))

(assert (=> d!1064962 (= (isPrefix!3037 lt!1250641 lt!1250671) lt!1250884)))

(declare-fun b!3620315 () Bool)

(assert (=> b!3620315 (= e!2240852 (>= (size!29091 lt!1250671) (size!29091 lt!1250641)))))

(declare-fun b!3620313 () Bool)

(declare-fun res!1465020 () Bool)

(assert (=> b!3620313 (=> (not res!1465020) (not e!2240851))))

(assert (=> b!3620313 (= res!1465020 (= (head!7642 lt!1250641) (head!7642 lt!1250671)))))

(assert (= (and d!1064962 (not res!1465022)) b!3620312))

(assert (= (and b!3620312 res!1465021) b!3620313))

(assert (= (and b!3620313 res!1465020) b!3620314))

(assert (= (and d!1064962 (not res!1465023)) b!3620315))

(declare-fun m!4119887 () Bool)

(assert (=> b!3620314 m!4119887))

(declare-fun m!4119889 () Bool)

(assert (=> b!3620314 m!4119889))

(assert (=> b!3620314 m!4119887))

(assert (=> b!3620314 m!4119889))

(declare-fun m!4119891 () Bool)

(assert (=> b!3620314 m!4119891))

(declare-fun m!4119893 () Bool)

(assert (=> b!3620315 m!4119893))

(assert (=> b!3620315 m!4119315))

(assert (=> b!3620313 m!4119249))

(declare-fun m!4119895 () Bool)

(assert (=> b!3620313 m!4119895))

(assert (=> b!3619887 d!1064962))

(declare-fun b!3620334 () Bool)

(declare-fun e!2240862 () Option!7978)

(declare-fun call!261956 () Option!7978)

(assert (=> b!3620334 (= e!2240862 call!261956)))

(declare-fun b!3620335 () Bool)

(declare-fun res!1465041 () Bool)

(declare-fun e!2240861 () Bool)

(assert (=> b!3620335 (=> (not res!1465041) (not e!2240861))))

(declare-fun lt!1250896 () Option!7978)

(assert (=> b!3620335 (= res!1465041 (= (++!9490 (list!14070 (charsOf!3688 (_1!22136 (get!12425 lt!1250896)))) (_2!22136 (get!12425 lt!1250896))) lt!1250671))))

(declare-fun b!3620336 () Bool)

(declare-fun e!2240860 () Bool)

(assert (=> b!3620336 (= e!2240860 e!2240861)))

(declare-fun res!1465038 () Bool)

(assert (=> b!3620336 (=> (not res!1465038) (not e!2240861))))

(assert (=> b!3620336 (= res!1465038 (isDefined!6210 lt!1250896))))

(declare-fun b!3620337 () Bool)

(declare-fun res!1465040 () Bool)

(assert (=> b!3620337 (=> (not res!1465040) (not e!2240861))))

(assert (=> b!3620337 (= res!1465040 (< (size!29091 (_2!22136 (get!12425 lt!1250896))) (size!29091 lt!1250671)))))

(declare-fun b!3620338 () Bool)

(declare-fun res!1465039 () Bool)

(assert (=> b!3620338 (=> (not res!1465039) (not e!2240861))))

(assert (=> b!3620338 (= res!1465039 (= (list!14070 (charsOf!3688 (_1!22136 (get!12425 lt!1250896)))) (originalCharacters!6388 (_1!22136 (get!12425 lt!1250896)))))))

(declare-fun bm!261951 () Bool)

(assert (=> bm!261951 (= call!261956 (maxPrefixOneRule!1941 thiss!23823 (h!43549 rules!3307) lt!1250671))))

(declare-fun b!3620339 () Bool)

(declare-fun lt!1250897 () Option!7978)

(declare-fun lt!1250898 () Option!7978)

(assert (=> b!3620339 (= e!2240862 (ite (and ((_ is None!7977) lt!1250897) ((_ is None!7977) lt!1250898)) None!7977 (ite ((_ is None!7977) lt!1250898) lt!1250897 (ite ((_ is None!7977) lt!1250897) lt!1250898 (ite (>= (size!29089 (_1!22136 (v!37739 lt!1250897))) (size!29089 (_1!22136 (v!37739 lt!1250898)))) lt!1250897 lt!1250898)))))))

(assert (=> b!3620339 (= lt!1250897 call!261956)))

(assert (=> b!3620339 (= lt!1250898 (maxPrefix!2797 thiss!23823 (t!294044 rules!3307) lt!1250671))))

(declare-fun b!3620341 () Bool)

(assert (=> b!3620341 (= e!2240861 (contains!7412 rules!3307 (rule!8434 (_1!22136 (get!12425 lt!1250896)))))))

(declare-fun b!3620342 () Bool)

(declare-fun res!1465042 () Bool)

(assert (=> b!3620342 (=> (not res!1465042) (not e!2240861))))

(assert (=> b!3620342 (= res!1465042 (= (value!182169 (_1!22136 (get!12425 lt!1250896))) (apply!9180 (transformation!5674 (rule!8434 (_1!22136 (get!12425 lt!1250896)))) (seqFromList!4227 (originalCharacters!6388 (_1!22136 (get!12425 lt!1250896)))))))))

(declare-fun d!1064964 () Bool)

(assert (=> d!1064964 e!2240860))

(declare-fun res!1465044 () Bool)

(assert (=> d!1064964 (=> res!1465044 e!2240860)))

(declare-fun isEmpty!22533 (Option!7978) Bool)

(assert (=> d!1064964 (= res!1465044 (isEmpty!22533 lt!1250896))))

(assert (=> d!1064964 (= lt!1250896 e!2240862)))

(declare-fun c!626520 () Bool)

(assert (=> d!1064964 (= c!626520 (and ((_ is Cons!38129) rules!3307) ((_ is Nil!38129) (t!294044 rules!3307))))))

(declare-fun lt!1250899 () Unit!54822)

(declare-fun lt!1250895 () Unit!54822)

(assert (=> d!1064964 (= lt!1250899 lt!1250895)))

(assert (=> d!1064964 (isPrefix!3037 lt!1250671 lt!1250671)))

(declare-fun lemmaIsPrefixRefl!1928 (List!38251 List!38251) Unit!54822)

(assert (=> d!1064964 (= lt!1250895 (lemmaIsPrefixRefl!1928 lt!1250671 lt!1250671))))

(assert (=> d!1064964 (rulesValidInductive!1991 thiss!23823 rules!3307)))

(assert (=> d!1064964 (= (maxPrefix!2797 thiss!23823 rules!3307 lt!1250671) lt!1250896)))

(declare-fun b!3620340 () Bool)

(declare-fun res!1465043 () Bool)

(assert (=> b!3620340 (=> (not res!1465043) (not e!2240861))))

(assert (=> b!3620340 (= res!1465043 (matchR!5002 (regex!5674 (rule!8434 (_1!22136 (get!12425 lt!1250896)))) (list!14070 (charsOf!3688 (_1!22136 (get!12425 lt!1250896))))))))

(assert (= (and d!1064964 c!626520) b!3620334))

(assert (= (and d!1064964 (not c!626520)) b!3620339))

(assert (= (or b!3620334 b!3620339) bm!261951))

(assert (= (and d!1064964 (not res!1465044)) b!3620336))

(assert (= (and b!3620336 res!1465038) b!3620338))

(assert (= (and b!3620338 res!1465039) b!3620337))

(assert (= (and b!3620337 res!1465040) b!3620335))

(assert (= (and b!3620335 res!1465041) b!3620342))

(assert (= (and b!3620342 res!1465042) b!3620340))

(assert (= (and b!3620340 res!1465043) b!3620341))

(declare-fun m!4119897 () Bool)

(assert (=> b!3620341 m!4119897))

(declare-fun m!4119899 () Bool)

(assert (=> b!3620341 m!4119899))

(assert (=> b!3620335 m!4119897))

(declare-fun m!4119901 () Bool)

(assert (=> b!3620335 m!4119901))

(assert (=> b!3620335 m!4119901))

(declare-fun m!4119903 () Bool)

(assert (=> b!3620335 m!4119903))

(assert (=> b!3620335 m!4119903))

(declare-fun m!4119905 () Bool)

(assert (=> b!3620335 m!4119905))

(assert (=> b!3620338 m!4119897))

(assert (=> b!3620338 m!4119901))

(assert (=> b!3620338 m!4119901))

(assert (=> b!3620338 m!4119903))

(assert (=> b!3620340 m!4119897))

(assert (=> b!3620340 m!4119901))

(assert (=> b!3620340 m!4119901))

(assert (=> b!3620340 m!4119903))

(assert (=> b!3620340 m!4119903))

(declare-fun m!4119907 () Bool)

(assert (=> b!3620340 m!4119907))

(assert (=> b!3620337 m!4119897))

(declare-fun m!4119909 () Bool)

(assert (=> b!3620337 m!4119909))

(assert (=> b!3620337 m!4119893))

(declare-fun m!4119911 () Bool)

(assert (=> b!3620336 m!4119911))

(declare-fun m!4119913 () Bool)

(assert (=> bm!261951 m!4119913))

(declare-fun m!4119915 () Bool)

(assert (=> d!1064964 m!4119915))

(declare-fun m!4119917 () Bool)

(assert (=> d!1064964 m!4119917))

(declare-fun m!4119919 () Bool)

(assert (=> d!1064964 m!4119919))

(assert (=> d!1064964 m!4119191))

(declare-fun m!4119921 () Bool)

(assert (=> b!3620339 m!4119921))

(assert (=> b!3620342 m!4119897))

(declare-fun m!4119923 () Bool)

(assert (=> b!3620342 m!4119923))

(assert (=> b!3620342 m!4119923))

(declare-fun m!4119925 () Bool)

(assert (=> b!3620342 m!4119925))

(assert (=> b!3619887 d!1064964))

(declare-fun d!1064966 () Bool)

(assert (=> d!1064966 (= (list!14070 lt!1250642) (list!14072 (c!626425 lt!1250642)))))

(declare-fun bs!571159 () Bool)

(assert (= bs!571159 d!1064966))

(declare-fun m!4119927 () Bool)

(assert (=> bs!571159 m!4119927))

(assert (=> b!3619887 d!1064966))

(declare-fun b!3620343 () Bool)

(declare-fun e!2240865 () Bool)

(declare-fun e!2240863 () Bool)

(assert (=> b!3620343 (= e!2240865 e!2240863)))

(declare-fun res!1465046 () Bool)

(assert (=> b!3620343 (=> (not res!1465046) (not e!2240863))))

(assert (=> b!3620343 (= res!1465046 (not ((_ is Nil!38127) lt!1250671)))))

(declare-fun b!3620345 () Bool)

(assert (=> b!3620345 (= e!2240863 (isPrefix!3037 (tail!5607 lt!1250663) (tail!5607 lt!1250671)))))

(declare-fun d!1064968 () Bool)

(declare-fun e!2240864 () Bool)

(assert (=> d!1064968 e!2240864))

(declare-fun res!1465048 () Bool)

(assert (=> d!1064968 (=> res!1465048 e!2240864)))

(declare-fun lt!1250900 () Bool)

(assert (=> d!1064968 (= res!1465048 (not lt!1250900))))

(assert (=> d!1064968 (= lt!1250900 e!2240865)))

(declare-fun res!1465047 () Bool)

(assert (=> d!1064968 (=> res!1465047 e!2240865)))

(assert (=> d!1064968 (= res!1465047 ((_ is Nil!38127) lt!1250663))))

(assert (=> d!1064968 (= (isPrefix!3037 lt!1250663 lt!1250671) lt!1250900)))

(declare-fun b!3620346 () Bool)

(assert (=> b!3620346 (= e!2240864 (>= (size!29091 lt!1250671) (size!29091 lt!1250663)))))

(declare-fun b!3620344 () Bool)

(declare-fun res!1465045 () Bool)

(assert (=> b!3620344 (=> (not res!1465045) (not e!2240863))))

(assert (=> b!3620344 (= res!1465045 (= (head!7642 lt!1250663) (head!7642 lt!1250671)))))

(assert (= (and d!1064968 (not res!1465047)) b!3620343))

(assert (= (and b!3620343 res!1465046) b!3620344))

(assert (= (and b!3620344 res!1465045) b!3620345))

(assert (= (and d!1064968 (not res!1465048)) b!3620346))

(declare-fun m!4119929 () Bool)

(assert (=> b!3620345 m!4119929))

(assert (=> b!3620345 m!4119889))

(assert (=> b!3620345 m!4119929))

(assert (=> b!3620345 m!4119889))

(declare-fun m!4119931 () Bool)

(assert (=> b!3620345 m!4119931))

(assert (=> b!3620346 m!4119893))

(assert (=> b!3620346 m!4119251))

(declare-fun m!4119933 () Bool)

(assert (=> b!3620344 m!4119933))

(assert (=> b!3620344 m!4119895))

(assert (=> b!3619887 d!1064968))

(declare-fun b!3620357 () Bool)

(declare-fun res!1465054 () Bool)

(declare-fun e!2240871 () Bool)

(assert (=> b!3620357 (=> (not res!1465054) (not e!2240871))))

(declare-fun lt!1250903 () List!38251)

(assert (=> b!3620357 (= res!1465054 (= (size!29091 lt!1250903) (+ (size!29091 lt!1250641) (size!29091 (_2!22136 lt!1250630)))))))

(declare-fun b!3620358 () Bool)

(assert (=> b!3620358 (= e!2240871 (or (not (= (_2!22136 lt!1250630) Nil!38127)) (= lt!1250903 lt!1250641)))))

(declare-fun b!3620356 () Bool)

(declare-fun e!2240870 () List!38251)

(assert (=> b!3620356 (= e!2240870 (Cons!38127 (h!43547 lt!1250641) (++!9490 (t!294042 lt!1250641) (_2!22136 lt!1250630))))))

(declare-fun b!3620355 () Bool)

(assert (=> b!3620355 (= e!2240870 (_2!22136 lt!1250630))))

(declare-fun d!1064970 () Bool)

(assert (=> d!1064970 e!2240871))

(declare-fun res!1465053 () Bool)

(assert (=> d!1064970 (=> (not res!1465053) (not e!2240871))))

(assert (=> d!1064970 (= res!1465053 (= (content!5456 lt!1250903) ((_ map or) (content!5456 lt!1250641) (content!5456 (_2!22136 lt!1250630)))))))

(assert (=> d!1064970 (= lt!1250903 e!2240870)))

(declare-fun c!626523 () Bool)

(assert (=> d!1064970 (= c!626523 ((_ is Nil!38127) lt!1250641))))

(assert (=> d!1064970 (= (++!9490 lt!1250641 (_2!22136 lt!1250630)) lt!1250903)))

(assert (= (and d!1064970 c!626523) b!3620355))

(assert (= (and d!1064970 (not c!626523)) b!3620356))

(assert (= (and d!1064970 res!1465053) b!3620357))

(assert (= (and b!3620357 res!1465054) b!3620358))

(declare-fun m!4119935 () Bool)

(assert (=> b!3620357 m!4119935))

(assert (=> b!3620357 m!4119315))

(declare-fun m!4119937 () Bool)

(assert (=> b!3620357 m!4119937))

(declare-fun m!4119939 () Bool)

(assert (=> b!3620356 m!4119939))

(declare-fun m!4119941 () Bool)

(assert (=> d!1064970 m!4119941))

(declare-fun m!4119943 () Bool)

(assert (=> d!1064970 m!4119943))

(declare-fun m!4119945 () Bool)

(assert (=> d!1064970 m!4119945))

(assert (=> b!3619887 d!1064970))

(declare-fun d!1064972 () Bool)

(assert (=> d!1064972 (isPrefix!3037 lt!1250641 (++!9490 lt!1250641 (_2!22136 lt!1250630)))))

(declare-fun lt!1250906 () Unit!54822)

(declare-fun choose!21230 (List!38251 List!38251) Unit!54822)

(assert (=> d!1064972 (= lt!1250906 (choose!21230 lt!1250641 (_2!22136 lt!1250630)))))

(assert (=> d!1064972 (= (lemmaConcatTwoListThenFirstIsPrefix!1958 lt!1250641 (_2!22136 lt!1250630)) lt!1250906)))

(declare-fun bs!571160 () Bool)

(assert (= bs!571160 d!1064972))

(assert (=> bs!571160 m!4119359))

(assert (=> bs!571160 m!4119359))

(declare-fun m!4119947 () Bool)

(assert (=> bs!571160 m!4119947))

(declare-fun m!4119949 () Bool)

(assert (=> bs!571160 m!4119949))

(assert (=> b!3619887 d!1064972))

(declare-fun d!1064974 () Bool)

(declare-fun isEmpty!22534 (Option!7979) Bool)

(assert (=> d!1064974 (= (isDefined!6211 lt!1250634) (not (isEmpty!22534 lt!1250634)))))

(declare-fun bs!571161 () Bool)

(assert (= bs!571161 d!1064974))

(declare-fun m!4119951 () Bool)

(assert (=> bs!571161 m!4119951))

(assert (=> b!3619887 d!1064974))

(declare-fun d!1064976 () Bool)

(assert (=> d!1064976 (= (get!12425 lt!1250662) (v!37739 lt!1250662))))

(assert (=> b!3619887 d!1064976))

(declare-fun b!3620359 () Bool)

(declare-fun e!2240874 () Bool)

(declare-fun e!2240872 () Bool)

(assert (=> b!3620359 (= e!2240874 e!2240872)))

(declare-fun res!1465056 () Bool)

(assert (=> b!3620359 (=> (not res!1465056) (not e!2240872))))

(assert (=> b!3620359 (= res!1465056 (not ((_ is Nil!38127) lt!1250652)))))

(declare-fun b!3620361 () Bool)

(assert (=> b!3620361 (= e!2240872 (isPrefix!3037 (tail!5607 lt!1250641) (tail!5607 lt!1250652)))))

(declare-fun d!1064978 () Bool)

(declare-fun e!2240873 () Bool)

(assert (=> d!1064978 e!2240873))

(declare-fun res!1465058 () Bool)

(assert (=> d!1064978 (=> res!1465058 e!2240873)))

(declare-fun lt!1250907 () Bool)

(assert (=> d!1064978 (= res!1465058 (not lt!1250907))))

(assert (=> d!1064978 (= lt!1250907 e!2240874)))

(declare-fun res!1465057 () Bool)

(assert (=> d!1064978 (=> res!1465057 e!2240874)))

(assert (=> d!1064978 (= res!1465057 ((_ is Nil!38127) lt!1250641))))

(assert (=> d!1064978 (= (isPrefix!3037 lt!1250641 lt!1250652) lt!1250907)))

(declare-fun b!3620362 () Bool)

(assert (=> b!3620362 (= e!2240873 (>= (size!29091 lt!1250652) (size!29091 lt!1250641)))))

(declare-fun b!3620360 () Bool)

(declare-fun res!1465055 () Bool)

(assert (=> b!3620360 (=> (not res!1465055) (not e!2240872))))

(assert (=> b!3620360 (= res!1465055 (= (head!7642 lt!1250641) (head!7642 lt!1250652)))))

(assert (= (and d!1064978 (not res!1465057)) b!3620359))

(assert (= (and b!3620359 res!1465056) b!3620360))

(assert (= (and b!3620360 res!1465055) b!3620361))

(assert (= (and d!1064978 (not res!1465058)) b!3620362))

(assert (=> b!3620361 m!4119887))

(declare-fun m!4119953 () Bool)

(assert (=> b!3620361 m!4119953))

(assert (=> b!3620361 m!4119887))

(assert (=> b!3620361 m!4119953))

(declare-fun m!4119955 () Bool)

(assert (=> b!3620361 m!4119955))

(declare-fun m!4119957 () Bool)

(assert (=> b!3620362 m!4119957))

(assert (=> b!3620362 m!4119315))

(assert (=> b!3620360 m!4119249))

(declare-fun m!4119959 () Bool)

(assert (=> b!3620360 m!4119959))

(assert (=> b!3619887 d!1064978))

(declare-fun b!3620365 () Bool)

(declare-fun res!1465060 () Bool)

(declare-fun e!2240876 () Bool)

(assert (=> b!3620365 (=> (not res!1465060) (not e!2240876))))

(declare-fun lt!1250908 () List!38251)

(assert (=> b!3620365 (= res!1465060 (= (size!29091 lt!1250908) (+ (size!29091 lt!1250663) (size!29091 suffix!1395))))))

(declare-fun b!3620366 () Bool)

(assert (=> b!3620366 (= e!2240876 (or (not (= suffix!1395 Nil!38127)) (= lt!1250908 lt!1250663)))))

(declare-fun b!3620364 () Bool)

(declare-fun e!2240875 () List!38251)

(assert (=> b!3620364 (= e!2240875 (Cons!38127 (h!43547 lt!1250663) (++!9490 (t!294042 lt!1250663) suffix!1395)))))

(declare-fun b!3620363 () Bool)

(assert (=> b!3620363 (= e!2240875 suffix!1395)))

(declare-fun d!1064980 () Bool)

(assert (=> d!1064980 e!2240876))

(declare-fun res!1465059 () Bool)

(assert (=> d!1064980 (=> (not res!1465059) (not e!2240876))))

(assert (=> d!1064980 (= res!1465059 (= (content!5456 lt!1250908) ((_ map or) (content!5456 lt!1250663) (content!5456 suffix!1395))))))

(assert (=> d!1064980 (= lt!1250908 e!2240875)))

(declare-fun c!626524 () Bool)

(assert (=> d!1064980 (= c!626524 ((_ is Nil!38127) lt!1250663))))

(assert (=> d!1064980 (= (++!9490 lt!1250663 suffix!1395) lt!1250908)))

(assert (= (and d!1064980 c!626524) b!3620363))

(assert (= (and d!1064980 (not c!626524)) b!3620364))

(assert (= (and d!1064980 res!1465059) b!3620365))

(assert (= (and b!3620365 res!1465060) b!3620366))

(declare-fun m!4119961 () Bool)

(assert (=> b!3620365 m!4119961))

(assert (=> b!3620365 m!4119251))

(declare-fun m!4119963 () Bool)

(assert (=> b!3620365 m!4119963))

(declare-fun m!4119965 () Bool)

(assert (=> b!3620364 m!4119965))

(declare-fun m!4119967 () Bool)

(assert (=> d!1064980 m!4119967))

(declare-fun m!4119969 () Bool)

(assert (=> d!1064980 m!4119969))

(declare-fun m!4119971 () Bool)

(assert (=> d!1064980 m!4119971))

(assert (=> b!3619887 d!1064980))

(declare-fun d!1064982 () Bool)

(assert (=> d!1064982 (isPrefix!3037 lt!1250663 (++!9490 lt!1250663 suffix!1395))))

(declare-fun lt!1250909 () Unit!54822)

(assert (=> d!1064982 (= lt!1250909 (choose!21230 lt!1250663 suffix!1395))))

(assert (=> d!1064982 (= (lemmaConcatTwoListThenFirstIsPrefix!1958 lt!1250663 suffix!1395) lt!1250909)))

(declare-fun bs!571162 () Bool)

(assert (= bs!571162 d!1064982))

(assert (=> bs!571162 m!4119347))

(assert (=> bs!571162 m!4119347))

(declare-fun m!4119973 () Bool)

(assert (=> bs!571162 m!4119973))

(declare-fun m!4119975 () Bool)

(assert (=> bs!571162 m!4119975))

(assert (=> b!3619887 d!1064982))

(declare-fun b!3620378 () Bool)

(declare-fun e!2240882 () Unit!54822)

(declare-fun Unit!54844 () Unit!54822)

(assert (=> b!3620378 (= e!2240882 Unit!54844)))

(declare-fun b!3620377 () Bool)

(declare-fun Unit!54845 () Unit!54822)

(assert (=> b!3620377 (= e!2240882 Unit!54845)))

(declare-fun lt!1250960 () List!38251)

(assert (=> b!3620377 (= lt!1250960 (++!9490 lt!1250663 suffix!1395))))

(declare-fun lt!1250953 () Token!10714)

(declare-fun lt!1250948 () Unit!54822)

(declare-fun lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!496 (LexerInterface!5263 Rule!11148 List!38253 List!38251) Unit!54822)

(assert (=> b!3620377 (= lt!1250948 (lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!496 thiss!23823 (rule!8434 lt!1250953) rules!3307 lt!1250960))))

(assert (=> b!3620377 (isEmpty!22533 (maxPrefixOneRule!1941 thiss!23823 (rule!8434 lt!1250953) lt!1250960))))

(declare-fun lt!1250944 () Unit!54822)

(assert (=> b!3620377 (= lt!1250944 lt!1250948)))

(declare-fun lt!1250949 () List!38251)

(assert (=> b!3620377 (= lt!1250949 (list!14070 (charsOf!3688 lt!1250953)))))

(declare-fun lt!1250951 () Unit!54822)

(declare-fun lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!484 (LexerInterface!5263 Rule!11148 List!38251 List!38251) Unit!54822)

(assert (=> b!3620377 (= lt!1250951 (lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!484 thiss!23823 (rule!8434 lt!1250953) lt!1250949 (++!9490 lt!1250663 suffix!1395)))))

(assert (=> b!3620377 (not (matchR!5002 (regex!5674 (rule!8434 lt!1250953)) lt!1250949))))

(declare-fun lt!1250957 () Unit!54822)

(assert (=> b!3620377 (= lt!1250957 lt!1250951)))

(assert (=> b!3620377 false))

(declare-fun b!3620375 () Bool)

(declare-fun res!1465066 () Bool)

(declare-fun e!2240881 () Bool)

(assert (=> b!3620375 (=> (not res!1465066) (not e!2240881))))

(assert (=> b!3620375 (= res!1465066 (matchR!5002 (regex!5674 (get!12426 (getRuleFromTag!1280 thiss!23823 rules!3307 (tag!6390 (rule!8434 lt!1250953))))) (list!14070 (charsOf!3688 lt!1250953))))))

(declare-fun d!1064984 () Bool)

(assert (=> d!1064984 (isDefined!6210 (maxPrefix!2797 thiss!23823 rules!3307 (++!9490 lt!1250663 suffix!1395)))))

(declare-fun lt!1250946 () Unit!54822)

(assert (=> d!1064984 (= lt!1250946 e!2240882)))

(declare-fun c!626527 () Bool)

(assert (=> d!1064984 (= c!626527 (isEmpty!22533 (maxPrefix!2797 thiss!23823 rules!3307 (++!9490 lt!1250663 suffix!1395))))))

(declare-fun lt!1250959 () Unit!54822)

(declare-fun lt!1250952 () Unit!54822)

(assert (=> d!1064984 (= lt!1250959 lt!1250952)))

(assert (=> d!1064984 e!2240881))

(declare-fun res!1465065 () Bool)

(assert (=> d!1064984 (=> (not res!1465065) (not e!2240881))))

(assert (=> d!1064984 (= res!1465065 (isDefined!6211 (getRuleFromTag!1280 thiss!23823 rules!3307 (tag!6390 (rule!8434 lt!1250953)))))))

(assert (=> d!1064984 (= lt!1250952 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1280 thiss!23823 rules!3307 lt!1250663 lt!1250953))))

(declare-fun lt!1250955 () Unit!54822)

(declare-fun lt!1250956 () Unit!54822)

(assert (=> d!1064984 (= lt!1250955 lt!1250956)))

(declare-fun lt!1250947 () List!38251)

(assert (=> d!1064984 (isPrefix!3037 lt!1250947 (++!9490 lt!1250663 suffix!1395))))

(declare-fun lemmaPrefixStaysPrefixWhenAddingToSuffix!460 (List!38251 List!38251 List!38251) Unit!54822)

(assert (=> d!1064984 (= lt!1250956 (lemmaPrefixStaysPrefixWhenAddingToSuffix!460 lt!1250947 lt!1250663 suffix!1395))))

(assert (=> d!1064984 (= lt!1250947 (list!14070 (charsOf!3688 lt!1250953)))))

(declare-fun lt!1250950 () Unit!54822)

(declare-fun lt!1250954 () Unit!54822)

(assert (=> d!1064984 (= lt!1250950 lt!1250954)))

(declare-fun lt!1250945 () List!38251)

(declare-fun lt!1250958 () List!38251)

(assert (=> d!1064984 (isPrefix!3037 lt!1250945 (++!9490 lt!1250945 lt!1250958))))

(assert (=> d!1064984 (= lt!1250954 (lemmaConcatTwoListThenFirstIsPrefix!1958 lt!1250945 lt!1250958))))

(assert (=> d!1064984 (= lt!1250958 (_2!22136 (get!12425 (maxPrefix!2797 thiss!23823 rules!3307 lt!1250663))))))

(assert (=> d!1064984 (= lt!1250945 (list!14070 (charsOf!3688 lt!1250953)))))

(declare-datatypes ((List!38255 0))(
  ( (Nil!38131) (Cons!38131 (h!43551 Token!10714) (t!294186 List!38255)) )
))
(declare-fun head!7644 (List!38255) Token!10714)

(declare-datatypes ((IArray!23259 0))(
  ( (IArray!23260 (innerList!11687 List!38255)) )
))
(declare-datatypes ((Conc!11627 0))(
  ( (Node!11627 (left!29778 Conc!11627) (right!30108 Conc!11627) (csize!23484 Int) (cheight!11838 Int)) (Leaf!18075 (xs!14829 IArray!23259) (csize!23485 Int)) (Empty!11627) )
))
(declare-datatypes ((BalanceConc!22868 0))(
  ( (BalanceConc!22869 (c!626599 Conc!11627)) )
))
(declare-fun list!14074 (BalanceConc!22868) List!38255)

(declare-datatypes ((tuple2!38010 0))(
  ( (tuple2!38011 (_1!22139 BalanceConc!22868) (_2!22139 BalanceConc!22864)) )
))
(declare-fun lex!2492 (LexerInterface!5263 List!38253 BalanceConc!22864) tuple2!38010)

(assert (=> d!1064984 (= lt!1250953 (head!7644 (list!14074 (_1!22139 (lex!2492 thiss!23823 rules!3307 (seqFromList!4227 lt!1250663))))))))

(assert (=> d!1064984 (not (isEmpty!22530 rules!3307))))

(assert (=> d!1064984 (= (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!943 thiss!23823 rules!3307 lt!1250663 suffix!1395) lt!1250946)))

(declare-fun b!3620376 () Bool)

(assert (=> b!3620376 (= e!2240881 (= (rule!8434 lt!1250953) (get!12426 (getRuleFromTag!1280 thiss!23823 rules!3307 (tag!6390 (rule!8434 lt!1250953))))))))

(assert (= (and d!1064984 res!1465065) b!3620375))

(assert (= (and b!3620375 res!1465066) b!3620376))

(assert (= (and d!1064984 c!626527) b!3620377))

(assert (= (and d!1064984 (not c!626527)) b!3620378))

(assert (=> b!3620377 m!4119347))

(declare-fun m!4119977 () Bool)

(assert (=> b!3620377 m!4119977))

(declare-fun m!4119979 () Bool)

(assert (=> b!3620377 m!4119979))

(assert (=> b!3620377 m!4119977))

(declare-fun m!4119981 () Bool)

(assert (=> b!3620377 m!4119981))

(assert (=> b!3620377 m!4119347))

(declare-fun m!4119983 () Bool)

(assert (=> b!3620377 m!4119983))

(assert (=> b!3620377 m!4119979))

(declare-fun m!4119985 () Bool)

(assert (=> b!3620377 m!4119985))

(declare-fun m!4119987 () Bool)

(assert (=> b!3620377 m!4119987))

(declare-fun m!4119989 () Bool)

(assert (=> b!3620377 m!4119989))

(declare-fun m!4119991 () Bool)

(assert (=> b!3620375 m!4119991))

(declare-fun m!4119993 () Bool)

(assert (=> b!3620375 m!4119993))

(assert (=> b!3620375 m!4119979))

(assert (=> b!3620375 m!4119991))

(assert (=> b!3620375 m!4119985))

(declare-fun m!4119995 () Bool)

(assert (=> b!3620375 m!4119995))

(assert (=> b!3620375 m!4119979))

(assert (=> b!3620375 m!4119985))

(assert (=> d!1064984 m!4119177))

(declare-fun m!4119997 () Bool)

(assert (=> d!1064984 m!4119997))

(assert (=> d!1064984 m!4119301))

(declare-fun m!4119999 () Bool)

(assert (=> d!1064984 m!4119999))

(declare-fun m!4120001 () Bool)

(assert (=> d!1064984 m!4120001))

(assert (=> d!1064984 m!4119347))

(declare-fun m!4120003 () Bool)

(assert (=> d!1064984 m!4120003))

(assert (=> d!1064984 m!4119979))

(assert (=> d!1064984 m!4119991))

(declare-fun m!4120005 () Bool)

(assert (=> d!1064984 m!4120005))

(declare-fun m!4120007 () Bool)

(assert (=> d!1064984 m!4120007))

(declare-fun m!4120009 () Bool)

(assert (=> d!1064984 m!4120009))

(assert (=> d!1064984 m!4119991))

(declare-fun m!4120011 () Bool)

(assert (=> d!1064984 m!4120011))

(assert (=> d!1064984 m!4119243))

(declare-fun m!4120013 () Bool)

(assert (=> d!1064984 m!4120013))

(assert (=> d!1064984 m!4119177))

(assert (=> d!1064984 m!4120005))

(declare-fun m!4120015 () Bool)

(assert (=> d!1064984 m!4120015))

(assert (=> d!1064984 m!4120009))

(declare-fun m!4120017 () Bool)

(assert (=> d!1064984 m!4120017))

(assert (=> d!1064984 m!4119347))

(assert (=> d!1064984 m!4119347))

(assert (=> d!1064984 m!4120005))

(declare-fun m!4120019 () Bool)

(assert (=> d!1064984 m!4120019))

(assert (=> d!1064984 m!4120001))

(declare-fun m!4120021 () Bool)

(assert (=> d!1064984 m!4120021))

(assert (=> d!1064984 m!4119243))

(declare-fun m!4120023 () Bool)

(assert (=> d!1064984 m!4120023))

(assert (=> d!1064984 m!4119979))

(assert (=> d!1064984 m!4119985))

(assert (=> b!3620376 m!4119991))

(assert (=> b!3620376 m!4119991))

(assert (=> b!3620376 m!4119993))

(assert (=> b!3619887 d!1064984))

(declare-fun d!1064986 () Bool)

(declare-fun e!2240885 () Bool)

(assert (=> d!1064986 e!2240885))

(declare-fun res!1465071 () Bool)

(assert (=> d!1064986 (=> (not res!1465071) (not e!2240885))))

(assert (=> d!1064986 (= res!1465071 (isDefined!6211 (getRuleFromTag!1280 thiss!23823 rules!3307 (tag!6390 (rule!8434 (_1!22136 lt!1250630))))))))

(declare-fun lt!1250963 () Unit!54822)

(declare-fun choose!21232 (LexerInterface!5263 List!38253 List!38251 Token!10714) Unit!54822)

(assert (=> d!1064986 (= lt!1250963 (choose!21232 thiss!23823 rules!3307 lt!1250671 (_1!22136 lt!1250630)))))

(assert (=> d!1064986 (rulesInvariant!4660 thiss!23823 rules!3307)))

(assert (=> d!1064986 (= (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1280 thiss!23823 rules!3307 lt!1250671 (_1!22136 lt!1250630)) lt!1250963)))

(declare-fun b!3620383 () Bool)

(declare-fun res!1465072 () Bool)

(assert (=> b!3620383 (=> (not res!1465072) (not e!2240885))))

(assert (=> b!3620383 (= res!1465072 (matchR!5002 (regex!5674 (get!12426 (getRuleFromTag!1280 thiss!23823 rules!3307 (tag!6390 (rule!8434 (_1!22136 lt!1250630)))))) (list!14070 (charsOf!3688 (_1!22136 lt!1250630)))))))

(declare-fun b!3620384 () Bool)

(assert (=> b!3620384 (= e!2240885 (= (rule!8434 (_1!22136 lt!1250630)) (get!12426 (getRuleFromTag!1280 thiss!23823 rules!3307 (tag!6390 (rule!8434 (_1!22136 lt!1250630)))))))))

(assert (= (and d!1064986 res!1465071) b!3620383))

(assert (= (and b!3620383 res!1465072) b!3620384))

(assert (=> d!1064986 m!4119361))

(assert (=> d!1064986 m!4119361))

(declare-fun m!4120025 () Bool)

(assert (=> d!1064986 m!4120025))

(declare-fun m!4120027 () Bool)

(assert (=> d!1064986 m!4120027))

(assert (=> d!1064986 m!4119281))

(assert (=> b!3620383 m!4119361))

(declare-fun m!4120029 () Bool)

(assert (=> b!3620383 m!4120029))

(assert (=> b!3620383 m!4119227))

(assert (=> b!3620383 m!4119229))

(assert (=> b!3620383 m!4119361))

(assert (=> b!3620383 m!4119229))

(declare-fun m!4120031 () Bool)

(assert (=> b!3620383 m!4120031))

(assert (=> b!3620383 m!4119227))

(assert (=> b!3620384 m!4119361))

(assert (=> b!3620384 m!4119361))

(assert (=> b!3620384 m!4120029))

(assert (=> b!3619887 d!1064986))

(assert (=> b!3619887 d!1064840))

(declare-fun b!3620397 () Bool)

(declare-fun e!2240895 () Option!7979)

(declare-fun e!2240896 () Option!7979)

(assert (=> b!3620397 (= e!2240895 e!2240896)))

(declare-fun c!626532 () Bool)

(assert (=> b!3620397 (= c!626532 (and ((_ is Cons!38129) rules!3307) (not (= (tag!6390 (h!43549 rules!3307)) (tag!6390 (rule!8434 (_1!22136 lt!1250630)))))))))

(declare-fun b!3620398 () Bool)

(declare-fun e!2240894 () Bool)

(declare-fun lt!1250972 () Option!7979)

(assert (=> b!3620398 (= e!2240894 (= (tag!6390 (get!12426 lt!1250972)) (tag!6390 (rule!8434 (_1!22136 lt!1250630)))))))

(declare-fun d!1064988 () Bool)

(declare-fun e!2240897 () Bool)

(assert (=> d!1064988 e!2240897))

(declare-fun res!1465077 () Bool)

(assert (=> d!1064988 (=> res!1465077 e!2240897)))

(assert (=> d!1064988 (= res!1465077 (isEmpty!22534 lt!1250972))))

(assert (=> d!1064988 (= lt!1250972 e!2240895)))

(declare-fun c!626533 () Bool)

(assert (=> d!1064988 (= c!626533 (and ((_ is Cons!38129) rules!3307) (= (tag!6390 (h!43549 rules!3307)) (tag!6390 (rule!8434 (_1!22136 lt!1250630))))))))

(assert (=> d!1064988 (rulesInvariant!4660 thiss!23823 rules!3307)))

(assert (=> d!1064988 (= (getRuleFromTag!1280 thiss!23823 rules!3307 (tag!6390 (rule!8434 (_1!22136 lt!1250630)))) lt!1250972)))

(declare-fun b!3620399 () Bool)

(assert (=> b!3620399 (= e!2240897 e!2240894)))

(declare-fun res!1465078 () Bool)

(assert (=> b!3620399 (=> (not res!1465078) (not e!2240894))))

(assert (=> b!3620399 (= res!1465078 (contains!7412 rules!3307 (get!12426 lt!1250972)))))

(declare-fun b!3620400 () Bool)

(assert (=> b!3620400 (= e!2240896 None!7978)))

(declare-fun b!3620401 () Bool)

(declare-fun lt!1250971 () Unit!54822)

(declare-fun lt!1250970 () Unit!54822)

(assert (=> b!3620401 (= lt!1250971 lt!1250970)))

(assert (=> b!3620401 (rulesInvariant!4660 thiss!23823 (t!294044 rules!3307))))

(declare-fun lemmaInvariantOnRulesThenOnTail!538 (LexerInterface!5263 Rule!11148 List!38253) Unit!54822)

(assert (=> b!3620401 (= lt!1250970 (lemmaInvariantOnRulesThenOnTail!538 thiss!23823 (h!43549 rules!3307) (t!294044 rules!3307)))))

(assert (=> b!3620401 (= e!2240896 (getRuleFromTag!1280 thiss!23823 (t!294044 rules!3307) (tag!6390 (rule!8434 (_1!22136 lt!1250630)))))))

(declare-fun b!3620402 () Bool)

(assert (=> b!3620402 (= e!2240895 (Some!7978 (h!43549 rules!3307)))))

(assert (= (and d!1064988 c!626533) b!3620402))

(assert (= (and d!1064988 (not c!626533)) b!3620397))

(assert (= (and b!3620397 c!626532) b!3620401))

(assert (= (and b!3620397 (not c!626532)) b!3620400))

(assert (= (and d!1064988 (not res!1465077)) b!3620399))

(assert (= (and b!3620399 res!1465078) b!3620398))

(declare-fun m!4120033 () Bool)

(assert (=> b!3620398 m!4120033))

(declare-fun m!4120035 () Bool)

(assert (=> d!1064988 m!4120035))

(assert (=> d!1064988 m!4119281))

(assert (=> b!3620399 m!4120033))

(assert (=> b!3620399 m!4120033))

(declare-fun m!4120037 () Bool)

(assert (=> b!3620399 m!4120037))

(declare-fun m!4120039 () Bool)

(assert (=> b!3620401 m!4120039))

(declare-fun m!4120041 () Bool)

(assert (=> b!3620401 m!4120041))

(declare-fun m!4120043 () Bool)

(assert (=> b!3620401 m!4120043))

(assert (=> b!3619887 d!1064988))

(declare-fun d!1064990 () Bool)

(assert (=> d!1064990 (not (contains!7411 (usedCharacters!888 (regex!5674 (rule!8434 (_1!22136 lt!1250630)))) lt!1250635))))

(declare-fun lt!1250975 () Unit!54822)

(declare-fun choose!21233 (LexerInterface!5263 List!38253 List!38253 Rule!11148 Rule!11148 C!21052) Unit!54822)

(assert (=> d!1064990 (= lt!1250975 (choose!21233 thiss!23823 rules!3307 rules!3307 anOtherTypeRule!33 (rule!8434 (_1!22136 lt!1250630)) lt!1250635))))

(assert (=> d!1064990 (rulesInvariant!4660 thiss!23823 rules!3307)))

(assert (=> d!1064990 (= (lemmaSepRuleNotContainsCharContainedInANonSepRule!262 thiss!23823 rules!3307 rules!3307 anOtherTypeRule!33 (rule!8434 (_1!22136 lt!1250630)) lt!1250635) lt!1250975)))

(declare-fun bs!571163 () Bool)

(assert (= bs!571163 d!1064990))

(assert (=> bs!571163 m!4119189))

(assert (=> bs!571163 m!4119189))

(declare-fun m!4120045 () Bool)

(assert (=> bs!571163 m!4120045))

(declare-fun m!4120047 () Bool)

(assert (=> bs!571163 m!4120047))

(assert (=> bs!571163 m!4119281))

(assert (=> b!3619870 d!1064990))

(declare-fun d!1064992 () Bool)

(declare-fun res!1465083 () Bool)

(declare-fun e!2240902 () Bool)

(assert (=> d!1064992 (=> res!1465083 e!2240902)))

(assert (=> d!1064992 (= res!1465083 (not ((_ is Cons!38129) rules!3307)))))

(assert (=> d!1064992 (= (sepAndNonSepRulesDisjointChars!1844 rules!3307 rules!3307) e!2240902)))

(declare-fun b!3620407 () Bool)

(declare-fun e!2240903 () Bool)

(assert (=> b!3620407 (= e!2240902 e!2240903)))

(declare-fun res!1465084 () Bool)

(assert (=> b!3620407 (=> (not res!1465084) (not e!2240903))))

(declare-fun ruleDisjointCharsFromAllFromOtherType!832 (Rule!11148 List!38253) Bool)

(assert (=> b!3620407 (= res!1465084 (ruleDisjointCharsFromAllFromOtherType!832 (h!43549 rules!3307) rules!3307))))

(declare-fun b!3620408 () Bool)

(assert (=> b!3620408 (= e!2240903 (sepAndNonSepRulesDisjointChars!1844 rules!3307 (t!294044 rules!3307)))))

(assert (= (and d!1064992 (not res!1465083)) b!3620407))

(assert (= (and b!3620407 res!1465084) b!3620408))

(declare-fun m!4120049 () Bool)

(assert (=> b!3620407 m!4120049))

(declare-fun m!4120051 () Bool)

(assert (=> b!3620408 m!4120051))

(assert (=> b!3619850 d!1064992))

(declare-fun d!1064994 () Bool)

(assert (=> d!1064994 (not (matchR!5002 (regex!5674 rule!403) lt!1250663))))

(declare-fun lt!1250978 () Unit!54822)

(declare-fun choose!21234 (LexerInterface!5263 List!38253 Rule!11148 List!38251 List!38251 Rule!11148) Unit!54822)

(assert (=> d!1064994 (= lt!1250978 (choose!21234 thiss!23823 rules!3307 (rule!8434 (_1!22136 lt!1250630)) lt!1250663 lt!1250671 rule!403))))

(assert (=> d!1064994 (isPrefix!3037 lt!1250663 lt!1250671)))

(assert (=> d!1064994 (= (lemmaMaxPrefNoSmallerRuleMatches!208 thiss!23823 rules!3307 (rule!8434 (_1!22136 lt!1250630)) lt!1250663 lt!1250671 rule!403) lt!1250978)))

(declare-fun bs!571164 () Bool)

(assert (= bs!571164 d!1064994))

(assert (=> bs!571164 m!4119211))

(declare-fun m!4120053 () Bool)

(assert (=> bs!571164 m!4120053))

(assert (=> bs!571164 m!4119357))

(assert (=> b!3619889 d!1064994))

(declare-fun d!1064996 () Bool)

(assert (=> d!1064996 (not (contains!7411 (usedCharacters!888 (regex!5674 (rule!8434 (_1!22136 lt!1250630)))) lt!1250632))))

(declare-fun lt!1250981 () Unit!54822)

(declare-fun choose!21235 (LexerInterface!5263 List!38253 List!38253 Rule!11148 Rule!11148 C!21052) Unit!54822)

(assert (=> d!1064996 (= lt!1250981 (choose!21235 thiss!23823 rules!3307 rules!3307 (rule!8434 (_1!22136 lt!1250630)) rule!403 lt!1250632))))

(assert (=> d!1064996 (rulesInvariant!4660 thiss!23823 rules!3307)))

(assert (=> d!1064996 (= (lemmaNonSepRuleNotContainsCharContainedInASepRule!380 thiss!23823 rules!3307 rules!3307 (rule!8434 (_1!22136 lt!1250630)) rule!403 lt!1250632) lt!1250981)))

(declare-fun bs!571165 () Bool)

(assert (= bs!571165 d!1064996))

(assert (=> bs!571165 m!4119189))

(assert (=> bs!571165 m!4119189))

(declare-fun m!4120055 () Bool)

(assert (=> bs!571165 m!4120055))

(declare-fun m!4120057 () Bool)

(assert (=> bs!571165 m!4120057))

(assert (=> bs!571165 m!4119281))

(assert (=> b!3619856 d!1064996))

(declare-fun d!1064998 () Bool)

(declare-fun lt!1250982 () Bool)

(assert (=> d!1064998 (= lt!1250982 (select (content!5456 call!261908) lt!1250632))))

(declare-fun e!2240905 () Bool)

(assert (=> d!1064998 (= lt!1250982 e!2240905)))

(declare-fun res!1465086 () Bool)

(assert (=> d!1064998 (=> (not res!1465086) (not e!2240905))))

(assert (=> d!1064998 (= res!1465086 ((_ is Cons!38127) call!261908))))

(assert (=> d!1064998 (= (contains!7411 call!261908 lt!1250632) lt!1250982)))

(declare-fun b!3620409 () Bool)

(declare-fun e!2240904 () Bool)

(assert (=> b!3620409 (= e!2240905 e!2240904)))

(declare-fun res!1465085 () Bool)

(assert (=> b!3620409 (=> res!1465085 e!2240904)))

(assert (=> b!3620409 (= res!1465085 (= (h!43547 call!261908) lt!1250632))))

(declare-fun b!3620410 () Bool)

(assert (=> b!3620410 (= e!2240904 (contains!7411 (t!294042 call!261908) lt!1250632))))

(assert (= (and d!1064998 res!1465086) b!3620409))

(assert (= (and b!3620409 (not res!1465085)) b!3620410))

(declare-fun m!4120059 () Bool)

(assert (=> d!1064998 m!4120059))

(declare-fun m!4120061 () Bool)

(assert (=> d!1064998 m!4120061))

(declare-fun m!4120063 () Bool)

(assert (=> b!3620410 m!4120063))

(assert (=> bm!261903 d!1064998))

(declare-fun b!3620424 () Bool)

(declare-fun e!2240916 () Bool)

(assert (=> b!3620424 (= e!2240916 true)))

(declare-fun d!1065000 () Bool)

(assert (=> d!1065000 e!2240916))

(assert (= d!1065000 b!3620424))

(declare-fun order!20843 () Int)

(declare-fun order!20841 () Int)

(declare-fun lambda!124122 () Int)

(declare-fun dynLambda!16497 (Int Int) Int)

(declare-fun dynLambda!16498 (Int Int) Int)

(assert (=> b!3620424 (< (dynLambda!16497 order!20841 (toValue!7958 (transformation!5674 (rule!8434 (_1!22136 lt!1250630))))) (dynLambda!16498 order!20843 lambda!124122))))

(declare-fun order!20845 () Int)

(declare-fun dynLambda!16499 (Int Int) Int)

(assert (=> b!3620424 (< (dynLambda!16499 order!20845 (toChars!7817 (transformation!5674 (rule!8434 (_1!22136 lt!1250630))))) (dynLambda!16498 order!20843 lambda!124122))))

(declare-fun dynLambda!16500 (Int BalanceConc!22864) TokenValue!5904)

(assert (=> d!1065000 (= (dynLambda!16500 (toValue!7958 (transformation!5674 (rule!8434 (_1!22136 lt!1250630)))) lt!1250642) (dynLambda!16500 (toValue!7958 (transformation!5674 (rule!8434 (_1!22136 lt!1250630)))) (seqFromList!4227 (originalCharacters!6388 (_1!22136 lt!1250630)))))))

(declare-fun lt!1250986 () Unit!54822)

(declare-fun Forall2of!325 (Int BalanceConc!22864 BalanceConc!22864) Unit!54822)

(assert (=> d!1065000 (= lt!1250986 (Forall2of!325 lambda!124122 lt!1250642 (seqFromList!4227 (originalCharacters!6388 (_1!22136 lt!1250630)))))))

(assert (=> d!1065000 (= (list!14070 lt!1250642) (list!14070 (seqFromList!4227 (originalCharacters!6388 (_1!22136 lt!1250630)))))))

(assert (=> d!1065000 (= (lemmaEqSameImage!865 (transformation!5674 (rule!8434 (_1!22136 lt!1250630))) lt!1250642 (seqFromList!4227 (originalCharacters!6388 (_1!22136 lt!1250630)))) lt!1250986)))

(declare-fun b_lambda!107061 () Bool)

(assert (=> (not b_lambda!107061) (not d!1065000)))

(declare-fun t!294094 () Bool)

(declare-fun tb!207605 () Bool)

(assert (=> (and b!3619861 (= (toValue!7958 (transformation!5674 (h!43549 rules!3307))) (toValue!7958 (transformation!5674 (rule!8434 (_1!22136 lt!1250630))))) t!294094) tb!207605))

(declare-fun result!252972 () Bool)

(assert (=> tb!207605 (= result!252972 (inv!21 (dynLambda!16500 (toValue!7958 (transformation!5674 (rule!8434 (_1!22136 lt!1250630)))) lt!1250642)))))

(declare-fun m!4120069 () Bool)

(assert (=> tb!207605 m!4120069))

(assert (=> d!1065000 t!294094))

(declare-fun b_and!264641 () Bool)

(assert (= b_and!264563 (and (=> t!294094 result!252972) b_and!264641)))

(declare-fun tb!207615 () Bool)

(declare-fun t!294104 () Bool)

(assert (=> (and b!3619851 (= (toValue!7958 (transformation!5674 (rule!8434 token!511))) (toValue!7958 (transformation!5674 (rule!8434 (_1!22136 lt!1250630))))) t!294104) tb!207615))

(declare-fun result!252984 () Bool)

(assert (= result!252984 result!252972))

(assert (=> d!1065000 t!294104))

(declare-fun b_and!264645 () Bool)

(assert (= b_and!264567 (and (=> t!294104 result!252984) b_and!264645)))

(declare-fun t!294106 () Bool)

(declare-fun tb!207617 () Bool)

(assert (=> (and b!3619893 (= (toValue!7958 (transformation!5674 anOtherTypeRule!33)) (toValue!7958 (transformation!5674 (rule!8434 (_1!22136 lt!1250630))))) t!294106) tb!207617))

(declare-fun result!252986 () Bool)

(assert (= result!252986 result!252972))

(assert (=> d!1065000 t!294106))

(declare-fun b_and!264647 () Bool)

(assert (= b_and!264571 (and (=> t!294106 result!252986) b_and!264647)))

(declare-fun t!294108 () Bool)

(declare-fun tb!207619 () Bool)

(assert (=> (and b!3619862 (= (toValue!7958 (transformation!5674 rule!403)) (toValue!7958 (transformation!5674 (rule!8434 (_1!22136 lt!1250630))))) t!294108) tb!207619))

(declare-fun result!252988 () Bool)

(assert (= result!252988 result!252972))

(assert (=> d!1065000 t!294108))

(declare-fun b_and!264649 () Bool)

(assert (= b_and!264575 (and (=> t!294108 result!252988) b_and!264649)))

(declare-fun b_lambda!107065 () Bool)

(assert (=> (not b_lambda!107065) (not d!1065000)))

(declare-fun tb!207621 () Bool)

(declare-fun t!294110 () Bool)

(assert (=> (and b!3619861 (= (toValue!7958 (transformation!5674 (h!43549 rules!3307))) (toValue!7958 (transformation!5674 (rule!8434 (_1!22136 lt!1250630))))) t!294110) tb!207621))

(declare-fun result!252990 () Bool)

(assert (=> tb!207621 (= result!252990 (inv!21 (dynLambda!16500 (toValue!7958 (transformation!5674 (rule!8434 (_1!22136 lt!1250630)))) (seqFromList!4227 (originalCharacters!6388 (_1!22136 lt!1250630))))))))

(declare-fun m!4120083 () Bool)

(assert (=> tb!207621 m!4120083))

(assert (=> d!1065000 t!294110))

(declare-fun b_and!264651 () Bool)

(assert (= b_and!264641 (and (=> t!294110 result!252990) b_and!264651)))

(declare-fun tb!207623 () Bool)

(declare-fun t!294112 () Bool)

(assert (=> (and b!3619851 (= (toValue!7958 (transformation!5674 (rule!8434 token!511))) (toValue!7958 (transformation!5674 (rule!8434 (_1!22136 lt!1250630))))) t!294112) tb!207623))

(declare-fun result!252992 () Bool)

(assert (= result!252992 result!252990))

(assert (=> d!1065000 t!294112))

(declare-fun b_and!264655 () Bool)

(assert (= b_and!264645 (and (=> t!294112 result!252992) b_and!264655)))

(declare-fun t!294114 () Bool)

(declare-fun tb!207625 () Bool)

(assert (=> (and b!3619893 (= (toValue!7958 (transformation!5674 anOtherTypeRule!33)) (toValue!7958 (transformation!5674 (rule!8434 (_1!22136 lt!1250630))))) t!294114) tb!207625))

(declare-fun result!252994 () Bool)

(assert (= result!252994 result!252990))

(assert (=> d!1065000 t!294114))

(declare-fun b_and!264663 () Bool)

(assert (= b_and!264647 (and (=> t!294114 result!252994) b_and!264663)))

(declare-fun tb!207627 () Bool)

(declare-fun t!294116 () Bool)

(assert (=> (and b!3619862 (= (toValue!7958 (transformation!5674 rule!403)) (toValue!7958 (transformation!5674 (rule!8434 (_1!22136 lt!1250630))))) t!294116) tb!207627))

(declare-fun result!252996 () Bool)

(assert (= result!252996 result!252990))

(assert (=> d!1065000 t!294116))

(declare-fun b_and!264665 () Bool)

(assert (= b_and!264649 (and (=> t!294116 result!252996) b_and!264665)))

(assert (=> d!1065000 m!4119199))

(declare-fun m!4120085 () Bool)

(assert (=> d!1065000 m!4120085))

(declare-fun m!4120087 () Bool)

(assert (=> d!1065000 m!4120087))

(assert (=> d!1065000 m!4119199))

(declare-fun m!4120089 () Bool)

(assert (=> d!1065000 m!4120089))

(assert (=> d!1065000 m!4119199))

(declare-fun m!4120091 () Bool)

(assert (=> d!1065000 m!4120091))

(assert (=> d!1065000 m!4119355))

(assert (=> b!3619877 d!1065000))

(declare-fun b!3620431 () Bool)

(declare-fun e!2240924 () Bool)

(assert (=> b!3620431 (= e!2240924 true)))

(declare-fun d!1065008 () Bool)

(assert (=> d!1065008 e!2240924))

(assert (= d!1065008 b!3620431))

(declare-fun order!20847 () Int)

(declare-fun lambda!124127 () Int)

(declare-fun dynLambda!16501 (Int Int) Int)

(assert (=> b!3620431 (< (dynLambda!16497 order!20841 (toValue!7958 (transformation!5674 (rule!8434 (_1!22136 lt!1250630))))) (dynLambda!16501 order!20847 lambda!124127))))

(assert (=> b!3620431 (< (dynLambda!16499 order!20845 (toChars!7817 (transformation!5674 (rule!8434 (_1!22136 lt!1250630))))) (dynLambda!16501 order!20847 lambda!124127))))

(assert (=> d!1065008 (= (list!14070 (dynLambda!16495 (toChars!7817 (transformation!5674 (rule!8434 (_1!22136 lt!1250630)))) (dynLambda!16500 (toValue!7958 (transformation!5674 (rule!8434 (_1!22136 lt!1250630)))) lt!1250642))) (list!14070 lt!1250642))))

(declare-fun lt!1250992 () Unit!54822)

(declare-fun ForallOf!667 (Int BalanceConc!22864) Unit!54822)

(assert (=> d!1065008 (= lt!1250992 (ForallOf!667 lambda!124127 lt!1250642))))

(assert (=> d!1065008 (= (lemmaSemiInverse!1431 (transformation!5674 (rule!8434 (_1!22136 lt!1250630))) lt!1250642) lt!1250992)))

(declare-fun b_lambda!107069 () Bool)

(assert (=> (not b_lambda!107069) (not d!1065008)))

(declare-fun t!294118 () Bool)

(declare-fun tb!207629 () Bool)

(assert (=> (and b!3619861 (= (toChars!7817 (transformation!5674 (h!43549 rules!3307))) (toChars!7817 (transformation!5674 (rule!8434 (_1!22136 lt!1250630))))) t!294118) tb!207629))

(declare-fun b!3620436 () Bool)

(declare-fun tp!1105806 () Bool)

(declare-fun e!2240927 () Bool)

(assert (=> b!3620436 (= e!2240927 (and (inv!51524 (c!626425 (dynLambda!16495 (toChars!7817 (transformation!5674 (rule!8434 (_1!22136 lt!1250630)))) (dynLambda!16500 (toValue!7958 (transformation!5674 (rule!8434 (_1!22136 lt!1250630)))) lt!1250642)))) tp!1105806))))

(declare-fun result!252998 () Bool)

(assert (=> tb!207629 (= result!252998 (and (inv!51525 (dynLambda!16495 (toChars!7817 (transformation!5674 (rule!8434 (_1!22136 lt!1250630)))) (dynLambda!16500 (toValue!7958 (transformation!5674 (rule!8434 (_1!22136 lt!1250630)))) lt!1250642))) e!2240927))))

(assert (= tb!207629 b!3620436))

(declare-fun m!4120095 () Bool)

(assert (=> b!3620436 m!4120095))

(declare-fun m!4120097 () Bool)

(assert (=> tb!207629 m!4120097))

(assert (=> d!1065008 t!294118))

(declare-fun b_and!264667 () Bool)

(assert (= b_and!264579 (and (=> t!294118 result!252998) b_and!264667)))

(declare-fun tb!207631 () Bool)

(declare-fun t!294120 () Bool)

(assert (=> (and b!3619851 (= (toChars!7817 (transformation!5674 (rule!8434 token!511))) (toChars!7817 (transformation!5674 (rule!8434 (_1!22136 lt!1250630))))) t!294120) tb!207631))

(declare-fun result!253000 () Bool)

(assert (= result!253000 result!252998))

(assert (=> d!1065008 t!294120))

(declare-fun b_and!264669 () Bool)

(assert (= b_and!264581 (and (=> t!294120 result!253000) b_and!264669)))

(declare-fun tb!207633 () Bool)

(declare-fun t!294122 () Bool)

(assert (=> (and b!3619893 (= (toChars!7817 (transformation!5674 anOtherTypeRule!33)) (toChars!7817 (transformation!5674 (rule!8434 (_1!22136 lt!1250630))))) t!294122) tb!207633))

(declare-fun result!253002 () Bool)

(assert (= result!253002 result!252998))

(assert (=> d!1065008 t!294122))

(declare-fun b_and!264671 () Bool)

(assert (= b_and!264583 (and (=> t!294122 result!253002) b_and!264671)))

(declare-fun tb!207635 () Bool)

(declare-fun t!294124 () Bool)

(assert (=> (and b!3619862 (= (toChars!7817 (transformation!5674 rule!403)) (toChars!7817 (transformation!5674 (rule!8434 (_1!22136 lt!1250630))))) t!294124) tb!207635))

(declare-fun result!253004 () Bool)

(assert (= result!253004 result!252998))

(assert (=> d!1065008 t!294124))

(declare-fun b_and!264673 () Bool)

(assert (= b_and!264585 (and (=> t!294124 result!253004) b_and!264673)))

(declare-fun b_lambda!107073 () Bool)

(assert (=> (not b_lambda!107073) (not d!1065008)))

(assert (=> d!1065008 t!294094))

(declare-fun b_and!264675 () Bool)

(assert (= b_and!264651 (and (=> t!294094 result!252972) b_and!264675)))

(assert (=> d!1065008 t!294104))

(declare-fun b_and!264677 () Bool)

(assert (= b_and!264655 (and (=> t!294104 result!252984) b_and!264677)))

(assert (=> d!1065008 t!294106))

(declare-fun b_and!264679 () Bool)

(assert (= b_and!264663 (and (=> t!294106 result!252986) b_and!264679)))

(assert (=> d!1065008 t!294108))

(declare-fun b_and!264681 () Bool)

(assert (= b_and!264665 (and (=> t!294108 result!252988) b_and!264681)))

(assert (=> d!1065008 m!4120087))

(declare-fun m!4120099 () Bool)

(assert (=> d!1065008 m!4120099))

(assert (=> d!1065008 m!4120087))

(declare-fun m!4120101 () Bool)

(assert (=> d!1065008 m!4120101))

(assert (=> d!1065008 m!4120101))

(declare-fun m!4120103 () Bool)

(assert (=> d!1065008 m!4120103))

(assert (=> d!1065008 m!4119355))

(assert (=> b!3619877 d!1065008))

(declare-fun d!1065012 () Bool)

(declare-fun fromListB!1947 (List!38251) BalanceConc!22864)

(assert (=> d!1065012 (= (seqFromList!4227 (originalCharacters!6388 (_1!22136 lt!1250630))) (fromListB!1947 (originalCharacters!6388 (_1!22136 lt!1250630))))))

(declare-fun bs!571168 () Bool)

(assert (= bs!571168 d!1065012))

(declare-fun m!4120115 () Bool)

(assert (=> bs!571168 m!4120115))

(assert (=> b!3619877 d!1065012))

(declare-fun d!1065016 () Bool)

(assert (=> d!1065016 (= (size!29089 (_1!22136 lt!1250630)) (size!29091 (originalCharacters!6388 (_1!22136 lt!1250630))))))

(declare-fun Unit!54846 () Unit!54822)

(assert (=> d!1065016 (= (lemmaCharactersSize!727 (_1!22136 lt!1250630)) Unit!54846)))

(declare-fun bs!571169 () Bool)

(assert (= bs!571169 d!1065016))

(declare-fun m!4120117 () Bool)

(assert (=> bs!571169 m!4120117))

(assert (=> b!3619877 d!1065016))

(declare-fun d!1065018 () Bool)

(declare-fun lt!1250998 () Int)

(assert (=> d!1065018 (= lt!1250998 (size!29091 (list!14070 lt!1250642)))))

(declare-fun size!29093 (Conc!11625) Int)

(assert (=> d!1065018 (= lt!1250998 (size!29093 (c!626425 lt!1250642)))))

(assert (=> d!1065018 (= (size!29090 lt!1250642) lt!1250998)))

(declare-fun bs!571170 () Bool)

(assert (= bs!571170 d!1065018))

(assert (=> bs!571170 m!4119355))

(assert (=> bs!571170 m!4119355))

(declare-fun m!4120119 () Bool)

(assert (=> bs!571170 m!4120119))

(declare-fun m!4120121 () Bool)

(assert (=> bs!571170 m!4120121))

(assert (=> b!3619877 d!1065018))

(declare-fun d!1065020 () Bool)

(assert (=> d!1065020 (= (apply!9180 (transformation!5674 (rule!8434 (_1!22136 lt!1250630))) lt!1250642) (dynLambda!16500 (toValue!7958 (transformation!5674 (rule!8434 (_1!22136 lt!1250630)))) lt!1250642))))

(declare-fun b_lambda!107077 () Bool)

(assert (=> (not b_lambda!107077) (not d!1065020)))

(assert (=> d!1065020 t!294094))

(declare-fun b_and!264699 () Bool)

(assert (= b_and!264675 (and (=> t!294094 result!252972) b_and!264699)))

(assert (=> d!1065020 t!294104))

(declare-fun b_and!264701 () Bool)

(assert (= b_and!264677 (and (=> t!294104 result!252984) b_and!264701)))

(assert (=> d!1065020 t!294106))

(declare-fun b_and!264703 () Bool)

(assert (= b_and!264679 (and (=> t!294106 result!252986) b_and!264703)))

(assert (=> d!1065020 t!294108))

(declare-fun b_and!264705 () Bool)

(assert (= b_and!264681 (and (=> t!294108 result!252988) b_and!264705)))

(assert (=> d!1065020 m!4120087))

(assert (=> b!3619877 d!1065020))

(declare-fun d!1065026 () Bool)

(declare-fun lt!1251001 () Bool)

(assert (=> d!1065026 (= lt!1251001 (select (content!5455 rules!3307) anOtherTypeRule!33))))

(declare-fun e!2240940 () Bool)

(assert (=> d!1065026 (= lt!1251001 e!2240940)))

(declare-fun res!1465091 () Bool)

(assert (=> d!1065026 (=> (not res!1465091) (not e!2240940))))

(assert (=> d!1065026 (= res!1465091 ((_ is Cons!38129) rules!3307))))

(assert (=> d!1065026 (= (contains!7412 rules!3307 anOtherTypeRule!33) lt!1251001)))

(declare-fun b!3620455 () Bool)

(declare-fun e!2240939 () Bool)

(assert (=> b!3620455 (= e!2240940 e!2240939)))

(declare-fun res!1465092 () Bool)

(assert (=> b!3620455 (=> res!1465092 e!2240939)))

(assert (=> b!3620455 (= res!1465092 (= (h!43549 rules!3307) anOtherTypeRule!33))))

(declare-fun b!3620456 () Bool)

(assert (=> b!3620456 (= e!2240939 (contains!7412 (t!294044 rules!3307) anOtherTypeRule!33))))

(assert (= (and d!1065026 res!1465091) b!3620455))

(assert (= (and b!3620455 (not res!1465092)) b!3620456))

(assert (=> d!1065026 m!4119417))

(declare-fun m!4120129 () Bool)

(assert (=> d!1065026 m!4120129))

(declare-fun m!4120131 () Bool)

(assert (=> b!3620456 m!4120131))

(assert (=> b!3619858 d!1065026))

(declare-fun d!1065028 () Bool)

(declare-fun res!1465105 () Bool)

(declare-fun e!2240950 () Bool)

(assert (=> d!1065028 (=> (not res!1465105) (not e!2240950))))

(assert (=> d!1065028 (= res!1465105 (not (isEmpty!22531 (originalCharacters!6388 token!511))))))

(assert (=> d!1065028 (= (inv!51521 token!511) e!2240950)))

(declare-fun b!3620475 () Bool)

(declare-fun res!1465106 () Bool)

(assert (=> b!3620475 (=> (not res!1465106) (not e!2240950))))

(assert (=> b!3620475 (= res!1465106 (= (originalCharacters!6388 token!511) (list!14070 (dynLambda!16495 (toChars!7817 (transformation!5674 (rule!8434 token!511))) (value!182169 token!511)))))))

(declare-fun b!3620476 () Bool)

(assert (=> b!3620476 (= e!2240950 (= (size!29089 token!511) (size!29091 (originalCharacters!6388 token!511))))))

(assert (= (and d!1065028 res!1465105) b!3620475))

(assert (= (and b!3620475 res!1465106) b!3620476))

(declare-fun b_lambda!107079 () Bool)

(assert (=> (not b_lambda!107079) (not b!3620475)))

(declare-fun tb!207645 () Bool)

(declare-fun t!294134 () Bool)

(assert (=> (and b!3619861 (= (toChars!7817 (transformation!5674 (h!43549 rules!3307))) (toChars!7817 (transformation!5674 (rule!8434 token!511)))) t!294134) tb!207645))

(declare-fun b!3620477 () Bool)

(declare-fun e!2240951 () Bool)

(declare-fun tp!1105808 () Bool)

(assert (=> b!3620477 (= e!2240951 (and (inv!51524 (c!626425 (dynLambda!16495 (toChars!7817 (transformation!5674 (rule!8434 token!511))) (value!182169 token!511)))) tp!1105808))))

(declare-fun result!253014 () Bool)

(assert (=> tb!207645 (= result!253014 (and (inv!51525 (dynLambda!16495 (toChars!7817 (transformation!5674 (rule!8434 token!511))) (value!182169 token!511))) e!2240951))))

(assert (= tb!207645 b!3620477))

(declare-fun m!4120141 () Bool)

(assert (=> b!3620477 m!4120141))

(declare-fun m!4120143 () Bool)

(assert (=> tb!207645 m!4120143))

(assert (=> b!3620475 t!294134))

(declare-fun b_and!264707 () Bool)

(assert (= b_and!264667 (and (=> t!294134 result!253014) b_and!264707)))

(declare-fun t!294136 () Bool)

(declare-fun tb!207647 () Bool)

(assert (=> (and b!3619851 (= (toChars!7817 (transformation!5674 (rule!8434 token!511))) (toChars!7817 (transformation!5674 (rule!8434 token!511)))) t!294136) tb!207647))

(declare-fun result!253016 () Bool)

(assert (= result!253016 result!253014))

(assert (=> b!3620475 t!294136))

(declare-fun b_and!264709 () Bool)

(assert (= b_and!264669 (and (=> t!294136 result!253016) b_and!264709)))

(declare-fun t!294138 () Bool)

(declare-fun tb!207649 () Bool)

(assert (=> (and b!3619893 (= (toChars!7817 (transformation!5674 anOtherTypeRule!33)) (toChars!7817 (transformation!5674 (rule!8434 token!511)))) t!294138) tb!207649))

(declare-fun result!253018 () Bool)

(assert (= result!253018 result!253014))

(assert (=> b!3620475 t!294138))

(declare-fun b_and!264711 () Bool)

(assert (= b_and!264671 (and (=> t!294138 result!253018) b_and!264711)))

(declare-fun tb!207651 () Bool)

(declare-fun t!294140 () Bool)

(assert (=> (and b!3619862 (= (toChars!7817 (transformation!5674 rule!403)) (toChars!7817 (transformation!5674 (rule!8434 token!511)))) t!294140) tb!207651))

(declare-fun result!253020 () Bool)

(assert (= result!253020 result!253014))

(assert (=> b!3620475 t!294140))

(declare-fun b_and!264713 () Bool)

(assert (= b_and!264673 (and (=> t!294140 result!253020) b_and!264713)))

(declare-fun m!4120145 () Bool)

(assert (=> d!1065028 m!4120145))

(declare-fun m!4120147 () Bool)

(assert (=> b!3620475 m!4120147))

(assert (=> b!3620475 m!4120147))

(declare-fun m!4120149 () Bool)

(assert (=> b!3620475 m!4120149))

(declare-fun m!4120151 () Bool)

(assert (=> b!3620476 m!4120151))

(assert (=> start!337066 d!1065028))

(declare-fun d!1065034 () Bool)

(assert (=> d!1065034 (= (isEmpty!22531 (_2!22136 lt!1250636)) ((_ is Nil!38127) (_2!22136 lt!1250636)))))

(assert (=> b!3619892 d!1065034))

(declare-fun d!1065036 () Bool)

(declare-fun res!1465115 () Bool)

(declare-fun e!2240957 () Bool)

(assert (=> d!1065036 (=> (not res!1465115) (not e!2240957))))

(declare-fun rulesValid!2163 (LexerInterface!5263 List!38253) Bool)

(assert (=> d!1065036 (= res!1465115 (rulesValid!2163 thiss!23823 rules!3307))))

(assert (=> d!1065036 (= (rulesInvariant!4660 thiss!23823 rules!3307) e!2240957)))

(declare-fun b!3620486 () Bool)

(declare-datatypes ((List!38256 0))(
  ( (Nil!38132) (Cons!38132 (h!43552 String!42854) (t!294187 List!38256)) )
))
(declare-fun noDuplicateTag!2159 (LexerInterface!5263 List!38253 List!38256) Bool)

(assert (=> b!3620486 (= e!2240957 (noDuplicateTag!2159 thiss!23823 rules!3307 Nil!38132))))

(assert (= (and d!1065036 res!1465115) b!3620486))

(declare-fun m!4120153 () Bool)

(assert (=> d!1065036 m!4120153))

(declare-fun m!4120155 () Bool)

(assert (=> b!3620486 m!4120155))

(assert (=> b!3619855 d!1065036))

(declare-fun d!1065040 () Bool)

(assert (=> d!1065040 (not (contains!7411 (usedCharacters!888 (regex!5674 (rule!8434 (_1!22136 lt!1250630)))) lt!1250632))))

(declare-fun lt!1251006 () Unit!54822)

(assert (=> d!1065040 (= lt!1251006 (choose!21233 thiss!23823 rules!3307 rules!3307 rule!403 (rule!8434 (_1!22136 lt!1250630)) lt!1250632))))

(assert (=> d!1065040 (rulesInvariant!4660 thiss!23823 rules!3307)))

(assert (=> d!1065040 (= (lemmaSepRuleNotContainsCharContainedInANonSepRule!262 thiss!23823 rules!3307 rules!3307 rule!403 (rule!8434 (_1!22136 lt!1250630)) lt!1250632) lt!1251006)))

(declare-fun bs!571172 () Bool)

(assert (= bs!571172 d!1065040))

(assert (=> bs!571172 m!4119189))

(assert (=> bs!571172 m!4119189))

(assert (=> bs!571172 m!4120055))

(declare-fun m!4120157 () Bool)

(assert (=> bs!571172 m!4120157))

(assert (=> bs!571172 m!4119281))

(assert (=> b!3619841 d!1065040))

(declare-fun d!1065042 () Bool)

(declare-fun lt!1251007 () Bool)

(assert (=> d!1065042 (= lt!1251007 (select (content!5456 (usedCharacters!888 (regex!5674 anOtherTypeRule!33))) lt!1250635))))

(declare-fun e!2240959 () Bool)

(assert (=> d!1065042 (= lt!1251007 e!2240959)))

(declare-fun res!1465117 () Bool)

(assert (=> d!1065042 (=> (not res!1465117) (not e!2240959))))

(assert (=> d!1065042 (= res!1465117 ((_ is Cons!38127) (usedCharacters!888 (regex!5674 anOtherTypeRule!33))))))

(assert (=> d!1065042 (= (contains!7411 (usedCharacters!888 (regex!5674 anOtherTypeRule!33)) lt!1250635) lt!1251007)))

(declare-fun b!3620487 () Bool)

(declare-fun e!2240958 () Bool)

(assert (=> b!3620487 (= e!2240959 e!2240958)))

(declare-fun res!1465116 () Bool)

(assert (=> b!3620487 (=> res!1465116 e!2240958)))

(assert (=> b!3620487 (= res!1465116 (= (h!43547 (usedCharacters!888 (regex!5674 anOtherTypeRule!33))) lt!1250635))))

(declare-fun b!3620488 () Bool)

(assert (=> b!3620488 (= e!2240958 (contains!7411 (t!294042 (usedCharacters!888 (regex!5674 anOtherTypeRule!33))) lt!1250635))))

(assert (= (and d!1065042 res!1465117) b!3620487))

(assert (= (and b!3620487 (not res!1465116)) b!3620488))

(assert (=> d!1065042 m!4119219))

(declare-fun m!4120159 () Bool)

(assert (=> d!1065042 m!4120159))

(declare-fun m!4120161 () Bool)

(assert (=> d!1065042 m!4120161))

(declare-fun m!4120163 () Bool)

(assert (=> b!3620488 m!4120163))

(assert (=> b!3619881 d!1065042))

(declare-fun bm!261953 () Bool)

(declare-fun call!261958 () List!38251)

(declare-fun c!626551 () Bool)

(assert (=> bm!261953 (= call!261958 (usedCharacters!888 (ite c!626551 (regTwo!21379 (regex!5674 anOtherTypeRule!33)) (regOne!21378 (regex!5674 anOtherTypeRule!33)))))))

(declare-fun b!3620489 () Bool)

(declare-fun c!626552 () Bool)

(assert (=> b!3620489 (= c!626552 ((_ is Star!10433) (regex!5674 anOtherTypeRule!33)))))

(declare-fun e!2240961 () List!38251)

(declare-fun e!2240962 () List!38251)

(assert (=> b!3620489 (= e!2240961 e!2240962)))

(declare-fun b!3620490 () Bool)

(declare-fun e!2240960 () List!38251)

(assert (=> b!3620490 (= e!2240962 e!2240960)))

(assert (=> b!3620490 (= c!626551 ((_ is Union!10433) (regex!5674 anOtherTypeRule!33)))))

(declare-fun b!3620491 () Bool)

(declare-fun call!261959 () List!38251)

(assert (=> b!3620491 (= e!2240960 call!261959)))

(declare-fun d!1065044 () Bool)

(declare-fun c!626550 () Bool)

(assert (=> d!1065044 (= c!626550 (or ((_ is EmptyExpr!10433) (regex!5674 anOtherTypeRule!33)) ((_ is EmptyLang!10433) (regex!5674 anOtherTypeRule!33))))))

(declare-fun e!2240963 () List!38251)

(assert (=> d!1065044 (= (usedCharacters!888 (regex!5674 anOtherTypeRule!33)) e!2240963)))

(declare-fun bm!261954 () Bool)

(declare-fun call!261960 () List!38251)

(assert (=> bm!261954 (= call!261960 (usedCharacters!888 (ite c!626552 (reg!10762 (regex!5674 anOtherTypeRule!33)) (ite c!626551 (regOne!21379 (regex!5674 anOtherTypeRule!33)) (regTwo!21378 (regex!5674 anOtherTypeRule!33))))))))

(declare-fun b!3620492 () Bool)

(assert (=> b!3620492 (= e!2240960 call!261959)))

(declare-fun bm!261955 () Bool)

(declare-fun call!261961 () List!38251)

(assert (=> bm!261955 (= call!261961 call!261960)))

(declare-fun b!3620493 () Bool)

(assert (=> b!3620493 (= e!2240963 Nil!38127)))

(declare-fun b!3620494 () Bool)

(assert (=> b!3620494 (= e!2240962 call!261960)))

(declare-fun b!3620495 () Bool)

(assert (=> b!3620495 (= e!2240961 (Cons!38127 (c!626424 (regex!5674 anOtherTypeRule!33)) Nil!38127))))

(declare-fun bm!261956 () Bool)

(assert (=> bm!261956 (= call!261959 (++!9490 (ite c!626551 call!261961 call!261958) (ite c!626551 call!261958 call!261961)))))

(declare-fun b!3620496 () Bool)

(assert (=> b!3620496 (= e!2240963 e!2240961)))

(declare-fun c!626549 () Bool)

(assert (=> b!3620496 (= c!626549 ((_ is ElementMatch!10433) (regex!5674 anOtherTypeRule!33)))))

(assert (= (and d!1065044 c!626550) b!3620493))

(assert (= (and d!1065044 (not c!626550)) b!3620496))

(assert (= (and b!3620496 c!626549) b!3620495))

(assert (= (and b!3620496 (not c!626549)) b!3620489))

(assert (= (and b!3620489 c!626552) b!3620494))

(assert (= (and b!3620489 (not c!626552)) b!3620490))

(assert (= (and b!3620490 c!626551) b!3620491))

(assert (= (and b!3620490 (not c!626551)) b!3620492))

(assert (= (or b!3620491 b!3620492) bm!261955))

(assert (= (or b!3620491 b!3620492) bm!261953))

(assert (= (or b!3620491 b!3620492) bm!261956))

(assert (= (or b!3620494 bm!261955) bm!261954))

(declare-fun m!4120167 () Bool)

(assert (=> bm!261953 m!4120167))

(declare-fun m!4120169 () Bool)

(assert (=> bm!261954 m!4120169))

(declare-fun m!4120171 () Bool)

(assert (=> bm!261956 m!4120171))

(assert (=> b!3619881 d!1065044))

(declare-fun d!1065048 () Bool)

(assert (=> d!1065048 (= (inv!51517 (tag!6390 anOtherTypeRule!33)) (= (mod (str.len (value!182168 (tag!6390 anOtherTypeRule!33))) 2) 0))))

(assert (=> b!3619842 d!1065048))

(declare-fun d!1065050 () Bool)

(declare-fun res!1465118 () Bool)

(declare-fun e!2240964 () Bool)

(assert (=> d!1065050 (=> (not res!1465118) (not e!2240964))))

(assert (=> d!1065050 (= res!1465118 (semiInverseModEq!2407 (toChars!7817 (transformation!5674 anOtherTypeRule!33)) (toValue!7958 (transformation!5674 anOtherTypeRule!33))))))

(assert (=> d!1065050 (= (inv!51520 (transformation!5674 anOtherTypeRule!33)) e!2240964)))

(declare-fun b!3620497 () Bool)

(assert (=> b!3620497 (= e!2240964 (equivClasses!2306 (toChars!7817 (transformation!5674 anOtherTypeRule!33)) (toValue!7958 (transformation!5674 anOtherTypeRule!33))))))

(assert (= (and d!1065050 res!1465118) b!3620497))

(declare-fun m!4120173 () Bool)

(assert (=> d!1065050 m!4120173))

(declare-fun m!4120175 () Bool)

(assert (=> b!3620497 m!4120175))

(assert (=> b!3619842 d!1065050))

(declare-fun d!1065052 () Bool)

(assert (=> d!1065052 (= (seqFromList!4227 lt!1250641) (fromListB!1947 lt!1250641))))

(declare-fun bs!571174 () Bool)

(assert (= bs!571174 d!1065052))

(declare-fun m!4120177 () Bool)

(assert (=> bs!571174 m!4120177))

(assert (=> b!3619882 d!1065052))

(declare-fun d!1065054 () Bool)

(declare-fun lt!1251013 () Int)

(assert (=> d!1065054 (>= lt!1251013 0)))

(declare-fun e!2240971 () Int)

(assert (=> d!1065054 (= lt!1251013 e!2240971)))

(declare-fun c!626555 () Bool)

(assert (=> d!1065054 (= c!626555 ((_ is Nil!38127) lt!1250641))))

(assert (=> d!1065054 (= (size!29091 lt!1250641) lt!1251013)))

(declare-fun b!3620506 () Bool)

(assert (=> b!3620506 (= e!2240971 0)))

(declare-fun b!3620507 () Bool)

(assert (=> b!3620507 (= e!2240971 (+ 1 (size!29091 (t!294042 lt!1250641))))))

(assert (= (and d!1065054 c!626555) b!3620506))

(assert (= (and d!1065054 (not c!626555)) b!3620507))

(declare-fun m!4120179 () Bool)

(assert (=> b!3620507 m!4120179))

(assert (=> b!3619882 d!1065054))

(declare-fun d!1065056 () Bool)

(assert (=> d!1065056 (= (apply!9180 (transformation!5674 (rule!8434 (_1!22136 lt!1250630))) (seqFromList!4227 lt!1250641)) (dynLambda!16500 (toValue!7958 (transformation!5674 (rule!8434 (_1!22136 lt!1250630)))) (seqFromList!4227 lt!1250641)))))

(declare-fun b_lambda!107081 () Bool)

(assert (=> (not b_lambda!107081) (not d!1065056)))

(declare-fun tb!207653 () Bool)

(declare-fun t!294142 () Bool)

(assert (=> (and b!3619861 (= (toValue!7958 (transformation!5674 (h!43549 rules!3307))) (toValue!7958 (transformation!5674 (rule!8434 (_1!22136 lt!1250630))))) t!294142) tb!207653))

(declare-fun result!253022 () Bool)

(assert (=> tb!207653 (= result!253022 (inv!21 (dynLambda!16500 (toValue!7958 (transformation!5674 (rule!8434 (_1!22136 lt!1250630)))) (seqFromList!4227 lt!1250641))))))

(declare-fun m!4120187 () Bool)

(assert (=> tb!207653 m!4120187))

(assert (=> d!1065056 t!294142))

(declare-fun b_and!264715 () Bool)

(assert (= b_and!264699 (and (=> t!294142 result!253022) b_and!264715)))

(declare-fun t!294144 () Bool)

(declare-fun tb!207655 () Bool)

(assert (=> (and b!3619851 (= (toValue!7958 (transformation!5674 (rule!8434 token!511))) (toValue!7958 (transformation!5674 (rule!8434 (_1!22136 lt!1250630))))) t!294144) tb!207655))

(declare-fun result!253024 () Bool)

(assert (= result!253024 result!253022))

(assert (=> d!1065056 t!294144))

(declare-fun b_and!264717 () Bool)

(assert (= b_and!264701 (and (=> t!294144 result!253024) b_and!264717)))

(declare-fun tb!207657 () Bool)

(declare-fun t!294146 () Bool)

(assert (=> (and b!3619893 (= (toValue!7958 (transformation!5674 anOtherTypeRule!33)) (toValue!7958 (transformation!5674 (rule!8434 (_1!22136 lt!1250630))))) t!294146) tb!207657))

(declare-fun result!253026 () Bool)

(assert (= result!253026 result!253022))

(assert (=> d!1065056 t!294146))

(declare-fun b_and!264719 () Bool)

(assert (= b_and!264703 (and (=> t!294146 result!253026) b_and!264719)))

(declare-fun t!294148 () Bool)

(declare-fun tb!207659 () Bool)

(assert (=> (and b!3619862 (= (toValue!7958 (transformation!5674 rule!403)) (toValue!7958 (transformation!5674 (rule!8434 (_1!22136 lt!1250630))))) t!294148) tb!207659))

(declare-fun result!253028 () Bool)

(assert (= result!253028 result!253022))

(assert (=> d!1065056 t!294148))

(declare-fun b_and!264721 () Bool)

(assert (= b_and!264705 (and (=> t!294148 result!253028) b_and!264721)))

(assert (=> d!1065056 m!4119305))

(declare-fun m!4120193 () Bool)

(assert (=> d!1065056 m!4120193))

(assert (=> b!3619882 d!1065056))

(declare-fun d!1065062 () Bool)

(declare-fun lt!1251018 () List!38251)

(assert (=> d!1065062 (= (++!9490 lt!1250641 lt!1251018) lt!1250671)))

(declare-fun e!2240986 () List!38251)

(assert (=> d!1065062 (= lt!1251018 e!2240986)))

(declare-fun c!626561 () Bool)

(assert (=> d!1065062 (= c!626561 ((_ is Cons!38127) lt!1250641))))

(assert (=> d!1065062 (>= (size!29091 lt!1250671) (size!29091 lt!1250641))))

(assert (=> d!1065062 (= (getSuffix!1612 lt!1250671 lt!1250641) lt!1251018)))

(declare-fun b!3620530 () Bool)

(assert (=> b!3620530 (= e!2240986 (getSuffix!1612 (tail!5607 lt!1250671) (t!294042 lt!1250641)))))

(declare-fun b!3620531 () Bool)

(assert (=> b!3620531 (= e!2240986 lt!1250671)))

(assert (= (and d!1065062 c!626561) b!3620530))

(assert (= (and d!1065062 (not c!626561)) b!3620531))

(declare-fun m!4120213 () Bool)

(assert (=> d!1065062 m!4120213))

(assert (=> d!1065062 m!4119893))

(assert (=> d!1065062 m!4119315))

(assert (=> b!3620530 m!4119889))

(assert (=> b!3620530 m!4119889))

(declare-fun m!4120215 () Bool)

(assert (=> b!3620530 m!4120215))

(assert (=> b!3619882 d!1065062))

(declare-fun d!1065070 () Bool)

(assert (=> d!1065070 (= (_2!22136 lt!1250630) lt!1250660)))

(declare-fun lt!1251019 () Unit!54822)

(assert (=> d!1065070 (= lt!1251019 (choose!21228 lt!1250641 (_2!22136 lt!1250630) lt!1250641 lt!1250660 lt!1250671))))

(assert (=> d!1065070 (isPrefix!3037 lt!1250641 lt!1250671)))

(assert (=> d!1065070 (= (lemmaSamePrefixThenSameSuffix!1392 lt!1250641 (_2!22136 lt!1250630) lt!1250641 lt!1250660 lt!1250671) lt!1251019)))

(declare-fun bs!571176 () Bool)

(assert (= bs!571176 d!1065070))

(declare-fun m!4120217 () Bool)

(assert (=> bs!571176 m!4120217))

(assert (=> bs!571176 m!4119363))

(assert (=> b!3619882 d!1065070))

(declare-fun b!3620604 () Bool)

(declare-fun e!2241026 () Option!7978)

(declare-datatypes ((tuple2!38012 0))(
  ( (tuple2!38013 (_1!22140 List!38251) (_2!22140 List!38251)) )
))
(declare-fun lt!1251037 () tuple2!38012)

(assert (=> b!3620604 (= e!2241026 (Some!7977 (tuple2!38005 (Token!10715 (apply!9180 (transformation!5674 (rule!8434 (_1!22136 lt!1250630))) (seqFromList!4227 (_1!22140 lt!1251037))) (rule!8434 (_1!22136 lt!1250630)) (size!29090 (seqFromList!4227 (_1!22140 lt!1251037))) (_1!22140 lt!1251037)) (_2!22140 lt!1251037))))))

(declare-fun lt!1251041 () Unit!54822)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!988 (Regex!10433 List!38251) Unit!54822)

(assert (=> b!3620604 (= lt!1251041 (longestMatchIsAcceptedByMatchOrIsEmpty!988 (regex!5674 (rule!8434 (_1!22136 lt!1250630))) lt!1250671))))

(declare-fun res!1465161 () Bool)

(declare-fun findLongestMatchInner!1015 (Regex!10433 List!38251 Int List!38251 List!38251 Int) tuple2!38012)

(assert (=> b!3620604 (= res!1465161 (isEmpty!22531 (_1!22140 (findLongestMatchInner!1015 (regex!5674 (rule!8434 (_1!22136 lt!1250630))) Nil!38127 (size!29091 Nil!38127) lt!1250671 lt!1250671 (size!29091 lt!1250671)))))))

(declare-fun e!2241029 () Bool)

(assert (=> b!3620604 (=> res!1465161 e!2241029)))

(assert (=> b!3620604 e!2241029))

(declare-fun lt!1251040 () Unit!54822)

(assert (=> b!3620604 (= lt!1251040 lt!1251041)))

(declare-fun lt!1251039 () Unit!54822)

(assert (=> b!3620604 (= lt!1251039 (lemmaSemiInverse!1431 (transformation!5674 (rule!8434 (_1!22136 lt!1250630))) (seqFromList!4227 (_1!22140 lt!1251037))))))

(declare-fun b!3620605 () Bool)

(assert (=> b!3620605 (= e!2241029 (matchR!5002 (regex!5674 (rule!8434 (_1!22136 lt!1250630))) (_1!22140 (findLongestMatchInner!1015 (regex!5674 (rule!8434 (_1!22136 lt!1250630))) Nil!38127 (size!29091 Nil!38127) lt!1250671 lt!1250671 (size!29091 lt!1250671)))))))

(declare-fun b!3620606 () Bool)

(declare-fun res!1465162 () Bool)

(declare-fun e!2241028 () Bool)

(assert (=> b!3620606 (=> (not res!1465162) (not e!2241028))))

(declare-fun lt!1251038 () Option!7978)

(assert (=> b!3620606 (= res!1465162 (< (size!29091 (_2!22136 (get!12425 lt!1251038))) (size!29091 lt!1250671)))))

(declare-fun b!3620607 () Bool)

(assert (=> b!3620607 (= e!2241026 None!7977)))

(declare-fun b!3620608 () Bool)

(declare-fun res!1465160 () Bool)

(assert (=> b!3620608 (=> (not res!1465160) (not e!2241028))))

(assert (=> b!3620608 (= res!1465160 (= (++!9490 (list!14070 (charsOf!3688 (_1!22136 (get!12425 lt!1251038)))) (_2!22136 (get!12425 lt!1251038))) lt!1250671))))

(declare-fun d!1065072 () Bool)

(declare-fun e!2241027 () Bool)

(assert (=> d!1065072 e!2241027))

(declare-fun res!1465159 () Bool)

(assert (=> d!1065072 (=> res!1465159 e!2241027)))

(assert (=> d!1065072 (= res!1465159 (isEmpty!22533 lt!1251038))))

(assert (=> d!1065072 (= lt!1251038 e!2241026)))

(declare-fun c!626564 () Bool)

(assert (=> d!1065072 (= c!626564 (isEmpty!22531 (_1!22140 lt!1251037)))))

(declare-fun findLongestMatch!930 (Regex!10433 List!38251) tuple2!38012)

(assert (=> d!1065072 (= lt!1251037 (findLongestMatch!930 (regex!5674 (rule!8434 (_1!22136 lt!1250630))) lt!1250671))))

(assert (=> d!1065072 (ruleValid!1939 thiss!23823 (rule!8434 (_1!22136 lt!1250630)))))

(assert (=> d!1065072 (= (maxPrefixOneRule!1941 thiss!23823 (rule!8434 (_1!22136 lt!1250630)) lt!1250671) lt!1251038)))

(declare-fun b!3620609 () Bool)

(assert (=> b!3620609 (= e!2241028 (= (size!29089 (_1!22136 (get!12425 lt!1251038))) (size!29091 (originalCharacters!6388 (_1!22136 (get!12425 lt!1251038))))))))

(declare-fun b!3620610 () Bool)

(declare-fun res!1465164 () Bool)

(assert (=> b!3620610 (=> (not res!1465164) (not e!2241028))))

(assert (=> b!3620610 (= res!1465164 (= (value!182169 (_1!22136 (get!12425 lt!1251038))) (apply!9180 (transformation!5674 (rule!8434 (_1!22136 (get!12425 lt!1251038)))) (seqFromList!4227 (originalCharacters!6388 (_1!22136 (get!12425 lt!1251038)))))))))

(declare-fun b!3620611 () Bool)

(declare-fun res!1465163 () Bool)

(assert (=> b!3620611 (=> (not res!1465163) (not e!2241028))))

(assert (=> b!3620611 (= res!1465163 (= (rule!8434 (_1!22136 (get!12425 lt!1251038))) (rule!8434 (_1!22136 lt!1250630))))))

(declare-fun b!3620612 () Bool)

(assert (=> b!3620612 (= e!2241027 e!2241028)))

(declare-fun res!1465158 () Bool)

(assert (=> b!3620612 (=> (not res!1465158) (not e!2241028))))

(assert (=> b!3620612 (= res!1465158 (matchR!5002 (regex!5674 (rule!8434 (_1!22136 lt!1250630))) (list!14070 (charsOf!3688 (_1!22136 (get!12425 lt!1251038))))))))

(assert (= (and d!1065072 c!626564) b!3620607))

(assert (= (and d!1065072 (not c!626564)) b!3620604))

(assert (= (and b!3620604 (not res!1465161)) b!3620605))

(assert (= (and d!1065072 (not res!1465159)) b!3620612))

(assert (= (and b!3620612 res!1465158) b!3620608))

(assert (= (and b!3620608 res!1465160) b!3620606))

(assert (= (and b!3620606 res!1465162) b!3620611))

(assert (= (and b!3620611 res!1465163) b!3620610))

(assert (= (and b!3620610 res!1465164) b!3620609))

(declare-fun m!4120243 () Bool)

(assert (=> b!3620610 m!4120243))

(declare-fun m!4120245 () Bool)

(assert (=> b!3620610 m!4120245))

(assert (=> b!3620610 m!4120245))

(declare-fun m!4120247 () Bool)

(assert (=> b!3620610 m!4120247))

(declare-fun m!4120249 () Bool)

(assert (=> b!3620605 m!4120249))

(assert (=> b!3620605 m!4119893))

(assert (=> b!3620605 m!4120249))

(assert (=> b!3620605 m!4119893))

(declare-fun m!4120251 () Bool)

(assert (=> b!3620605 m!4120251))

(declare-fun m!4120253 () Bool)

(assert (=> b!3620605 m!4120253))

(declare-fun m!4120255 () Bool)

(assert (=> b!3620604 m!4120255))

(assert (=> b!3620604 m!4120249))

(assert (=> b!3620604 m!4119893))

(assert (=> b!3620604 m!4120251))

(assert (=> b!3620604 m!4119893))

(declare-fun m!4120257 () Bool)

(assert (=> b!3620604 m!4120257))

(declare-fun m!4120259 () Bool)

(assert (=> b!3620604 m!4120259))

(assert (=> b!3620604 m!4120257))

(declare-fun m!4120261 () Bool)

(assert (=> b!3620604 m!4120261))

(assert (=> b!3620604 m!4120257))

(declare-fun m!4120263 () Bool)

(assert (=> b!3620604 m!4120263))

(assert (=> b!3620604 m!4120257))

(declare-fun m!4120265 () Bool)

(assert (=> b!3620604 m!4120265))

(assert (=> b!3620604 m!4120249))

(assert (=> b!3620606 m!4120243))

(declare-fun m!4120267 () Bool)

(assert (=> b!3620606 m!4120267))

(assert (=> b!3620606 m!4119893))

(assert (=> b!3620611 m!4120243))

(assert (=> b!3620609 m!4120243))

(declare-fun m!4120269 () Bool)

(assert (=> b!3620609 m!4120269))

(declare-fun m!4120271 () Bool)

(assert (=> d!1065072 m!4120271))

(declare-fun m!4120273 () Bool)

(assert (=> d!1065072 m!4120273))

(declare-fun m!4120275 () Bool)

(assert (=> d!1065072 m!4120275))

(declare-fun m!4120277 () Bool)

(assert (=> d!1065072 m!4120277))

(assert (=> b!3620608 m!4120243))

(declare-fun m!4120279 () Bool)

(assert (=> b!3620608 m!4120279))

(assert (=> b!3620608 m!4120279))

(declare-fun m!4120281 () Bool)

(assert (=> b!3620608 m!4120281))

(assert (=> b!3620608 m!4120281))

(declare-fun m!4120283 () Bool)

(assert (=> b!3620608 m!4120283))

(assert (=> b!3620612 m!4120243))

(assert (=> b!3620612 m!4120279))

(assert (=> b!3620612 m!4120279))

(assert (=> b!3620612 m!4120281))

(assert (=> b!3620612 m!4120281))

(declare-fun m!4120285 () Bool)

(assert (=> b!3620612 m!4120285))

(assert (=> b!3619882 d!1065072))

(declare-fun d!1065086 () Bool)

(assert (=> d!1065086 (= (maxPrefixOneRule!1941 thiss!23823 (rule!8434 (_1!22136 lt!1250630)) lt!1250671) (Some!7977 (tuple2!38005 (Token!10715 (apply!9180 (transformation!5674 (rule!8434 (_1!22136 lt!1250630))) (seqFromList!4227 lt!1250641)) (rule!8434 (_1!22136 lt!1250630)) (size!29091 lt!1250641) lt!1250641) (_2!22136 lt!1250630))))))

(declare-fun lt!1251044 () Unit!54822)

(declare-fun choose!21237 (LexerInterface!5263 List!38253 List!38251 List!38251 List!38251 Rule!11148) Unit!54822)

(assert (=> d!1065086 (= lt!1251044 (choose!21237 thiss!23823 rules!3307 lt!1250641 lt!1250671 (_2!22136 lt!1250630) (rule!8434 (_1!22136 lt!1250630))))))

(assert (=> d!1065086 (not (isEmpty!22530 rules!3307))))

(assert (=> d!1065086 (= (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1013 thiss!23823 rules!3307 lt!1250641 lt!1250671 (_2!22136 lt!1250630) (rule!8434 (_1!22136 lt!1250630))) lt!1251044)))

(declare-fun bs!571180 () Bool)

(assert (= bs!571180 d!1065086))

(declare-fun m!4120287 () Bool)

(assert (=> bs!571180 m!4120287))

(assert (=> bs!571180 m!4119305))

(assert (=> bs!571180 m!4119315))

(assert (=> bs!571180 m!4119301))

(assert (=> bs!571180 m!4119305))

(assert (=> bs!571180 m!4119309))

(assert (=> bs!571180 m!4119317))

(assert (=> b!3619882 d!1065086))

(declare-fun d!1065088 () Bool)

(assert (=> d!1065088 (= (isEmpty!22530 rules!3307) ((_ is Nil!38129) rules!3307))))

(assert (=> b!3619843 d!1065088))

(declare-fun d!1065090 () Bool)

(assert (=> d!1065090 (= (inv!51517 (tag!6390 rule!403)) (= (mod (str.len (value!182168 (tag!6390 rule!403))) 2) 0))))

(assert (=> b!3619883 d!1065090))

(declare-fun d!1065092 () Bool)

(declare-fun res!1465165 () Bool)

(declare-fun e!2241030 () Bool)

(assert (=> d!1065092 (=> (not res!1465165) (not e!2241030))))

(assert (=> d!1065092 (= res!1465165 (semiInverseModEq!2407 (toChars!7817 (transformation!5674 rule!403)) (toValue!7958 (transformation!5674 rule!403))))))

(assert (=> d!1065092 (= (inv!51520 (transformation!5674 rule!403)) e!2241030)))

(declare-fun b!3620613 () Bool)

(assert (=> b!3620613 (= e!2241030 (equivClasses!2306 (toChars!7817 (transformation!5674 rule!403)) (toValue!7958 (transformation!5674 rule!403))))))

(assert (= (and d!1065092 res!1465165) b!3620613))

(declare-fun m!4120289 () Bool)

(assert (=> d!1065092 m!4120289))

(declare-fun m!4120291 () Bool)

(assert (=> b!3620613 m!4120291))

(assert (=> b!3619883 d!1065092))

(declare-fun b!3620614 () Bool)

(declare-fun res!1465170 () Bool)

(declare-fun e!2241037 () Bool)

(assert (=> b!3620614 (=> res!1465170 e!2241037)))

(declare-fun e!2241036 () Bool)

(assert (=> b!3620614 (= res!1465170 e!2241036)))

(declare-fun res!1465172 () Bool)

(assert (=> b!3620614 (=> (not res!1465172) (not e!2241036))))

(declare-fun lt!1251045 () Bool)

(assert (=> b!3620614 (= res!1465172 lt!1251045)))

(declare-fun bm!261958 () Bool)

(declare-fun call!261963 () Bool)

(assert (=> bm!261958 (= call!261963 (isEmpty!22531 lt!1250641))))

(declare-fun b!3620615 () Bool)

(declare-fun res!1465168 () Bool)

(assert (=> b!3620615 (=> res!1465168 e!2241037)))

(assert (=> b!3620615 (= res!1465168 (not ((_ is ElementMatch!10433) (regex!5674 (rule!8434 (_1!22136 lt!1250630))))))))

(declare-fun e!2241031 () Bool)

(assert (=> b!3620615 (= e!2241031 e!2241037)))

(declare-fun b!3620616 () Bool)

(assert (=> b!3620616 (= e!2241036 (= (head!7642 lt!1250641) (c!626424 (regex!5674 (rule!8434 (_1!22136 lt!1250630))))))))

(declare-fun b!3620617 () Bool)

(declare-fun e!2241033 () Bool)

(assert (=> b!3620617 (= e!2241033 (nullable!3609 (regex!5674 (rule!8434 (_1!22136 lt!1250630)))))))

(declare-fun b!3620618 () Bool)

(declare-fun res!1465166 () Bool)

(assert (=> b!3620618 (=> (not res!1465166) (not e!2241036))))

(assert (=> b!3620618 (= res!1465166 (not call!261963))))

(declare-fun d!1065094 () Bool)

(declare-fun e!2241035 () Bool)

(assert (=> d!1065094 e!2241035))

(declare-fun c!626565 () Bool)

(assert (=> d!1065094 (= c!626565 ((_ is EmptyExpr!10433) (regex!5674 (rule!8434 (_1!22136 lt!1250630)))))))

(assert (=> d!1065094 (= lt!1251045 e!2241033)))

(declare-fun c!626567 () Bool)

(assert (=> d!1065094 (= c!626567 (isEmpty!22531 lt!1250641))))

(assert (=> d!1065094 (validRegex!4771 (regex!5674 (rule!8434 (_1!22136 lt!1250630))))))

(assert (=> d!1065094 (= (matchR!5002 (regex!5674 (rule!8434 (_1!22136 lt!1250630))) lt!1250641) lt!1251045)))

(declare-fun b!3620619 () Bool)

(declare-fun res!1465171 () Bool)

(assert (=> b!3620619 (=> (not res!1465171) (not e!2241036))))

(assert (=> b!3620619 (= res!1465171 (isEmpty!22531 (tail!5607 lt!1250641)))))

(declare-fun b!3620620 () Bool)

(assert (=> b!3620620 (= e!2241035 e!2241031)))

(declare-fun c!626566 () Bool)

(assert (=> b!3620620 (= c!626566 ((_ is EmptyLang!10433) (regex!5674 (rule!8434 (_1!22136 lt!1250630)))))))

(declare-fun b!3620621 () Bool)

(declare-fun e!2241032 () Bool)

(assert (=> b!3620621 (= e!2241032 (not (= (head!7642 lt!1250641) (c!626424 (regex!5674 (rule!8434 (_1!22136 lt!1250630)))))))))

(declare-fun b!3620622 () Bool)

(assert (=> b!3620622 (= e!2241031 (not lt!1251045))))

(declare-fun b!3620623 () Bool)

(assert (=> b!3620623 (= e!2241035 (= lt!1251045 call!261963))))

(declare-fun b!3620624 () Bool)

(declare-fun e!2241034 () Bool)

(assert (=> b!3620624 (= e!2241037 e!2241034)))

(declare-fun res!1465167 () Bool)

(assert (=> b!3620624 (=> (not res!1465167) (not e!2241034))))

(assert (=> b!3620624 (= res!1465167 (not lt!1251045))))

(declare-fun b!3620625 () Bool)

(declare-fun res!1465173 () Bool)

(assert (=> b!3620625 (=> res!1465173 e!2241032)))

(assert (=> b!3620625 (= res!1465173 (not (isEmpty!22531 (tail!5607 lt!1250641))))))

(declare-fun b!3620626 () Bool)

(assert (=> b!3620626 (= e!2241033 (matchR!5002 (derivativeStep!3158 (regex!5674 (rule!8434 (_1!22136 lt!1250630))) (head!7642 lt!1250641)) (tail!5607 lt!1250641)))))

(declare-fun b!3620627 () Bool)

(assert (=> b!3620627 (= e!2241034 e!2241032)))

(declare-fun res!1465169 () Bool)

(assert (=> b!3620627 (=> res!1465169 e!2241032)))

(assert (=> b!3620627 (= res!1465169 call!261963)))

(assert (= (and d!1065094 c!626567) b!3620617))

(assert (= (and d!1065094 (not c!626567)) b!3620626))

(assert (= (and d!1065094 c!626565) b!3620623))

(assert (= (and d!1065094 (not c!626565)) b!3620620))

(assert (= (and b!3620620 c!626566) b!3620622))

(assert (= (and b!3620620 (not c!626566)) b!3620615))

(assert (= (and b!3620615 (not res!1465168)) b!3620614))

(assert (= (and b!3620614 res!1465172) b!3620618))

(assert (= (and b!3620618 res!1465166) b!3620619))

(assert (= (and b!3620619 res!1465171) b!3620616))

(assert (= (and b!3620614 (not res!1465170)) b!3620624))

(assert (= (and b!3620624 res!1465167) b!3620627))

(assert (= (and b!3620627 (not res!1465169)) b!3620625))

(assert (= (and b!3620625 (not res!1465173)) b!3620621))

(assert (= (or b!3620623 b!3620627 b!3620618) bm!261958))

(declare-fun m!4120293 () Bool)

(assert (=> d!1065094 m!4120293))

(declare-fun m!4120295 () Bool)

(assert (=> d!1065094 m!4120295))

(assert (=> b!3620621 m!4119249))

(assert (=> b!3620625 m!4119887))

(assert (=> b!3620625 m!4119887))

(declare-fun m!4120297 () Bool)

(assert (=> b!3620625 m!4120297))

(declare-fun m!4120299 () Bool)

(assert (=> b!3620617 m!4120299))

(assert (=> b!3620616 m!4119249))

(assert (=> b!3620626 m!4119249))

(assert (=> b!3620626 m!4119249))

(declare-fun m!4120301 () Bool)

(assert (=> b!3620626 m!4120301))

(assert (=> b!3620626 m!4119887))

(assert (=> b!3620626 m!4120301))

(assert (=> b!3620626 m!4119887))

(declare-fun m!4120303 () Bool)

(assert (=> b!3620626 m!4120303))

(assert (=> b!3620619 m!4119887))

(assert (=> b!3620619 m!4119887))

(assert (=> b!3620619 m!4120297))

(assert (=> bm!261958 m!4120293))

(assert (=> b!3619878 d!1065094))

(declare-fun d!1065096 () Bool)

(assert (=> d!1065096 (= (inv!51517 (tag!6390 (rule!8434 token!511))) (= (mod (str.len (value!182168 (tag!6390 (rule!8434 token!511)))) 2) 0))))

(assert (=> b!3619859 d!1065096))

(declare-fun d!1065098 () Bool)

(declare-fun res!1465174 () Bool)

(declare-fun e!2241038 () Bool)

(assert (=> d!1065098 (=> (not res!1465174) (not e!2241038))))

(assert (=> d!1065098 (= res!1465174 (semiInverseModEq!2407 (toChars!7817 (transformation!5674 (rule!8434 token!511))) (toValue!7958 (transformation!5674 (rule!8434 token!511)))))))

(assert (=> d!1065098 (= (inv!51520 (transformation!5674 (rule!8434 token!511))) e!2241038)))

(declare-fun b!3620628 () Bool)

(assert (=> b!3620628 (= e!2241038 (equivClasses!2306 (toChars!7817 (transformation!5674 (rule!8434 token!511))) (toValue!7958 (transformation!5674 (rule!8434 token!511)))))))

(assert (= (and d!1065098 res!1465174) b!3620628))

(declare-fun m!4120305 () Bool)

(assert (=> d!1065098 m!4120305))

(declare-fun m!4120307 () Bool)

(assert (=> b!3620628 m!4120307))

(assert (=> b!3619859 d!1065098))

(declare-fun d!1065100 () Bool)

(declare-fun lt!1251046 () Bool)

(assert (=> d!1065100 (= lt!1251046 (select (content!5456 lt!1250669) lt!1250632))))

(declare-fun e!2241040 () Bool)

(assert (=> d!1065100 (= lt!1251046 e!2241040)))

(declare-fun res!1465176 () Bool)

(assert (=> d!1065100 (=> (not res!1465176) (not e!2241040))))

(assert (=> d!1065100 (= res!1465176 ((_ is Cons!38127) lt!1250669))))

(assert (=> d!1065100 (= (contains!7411 lt!1250669 lt!1250632) lt!1251046)))

(declare-fun b!3620629 () Bool)

(declare-fun e!2241039 () Bool)

(assert (=> b!3620629 (= e!2241040 e!2241039)))

(declare-fun res!1465175 () Bool)

(assert (=> b!3620629 (=> res!1465175 e!2241039)))

(assert (=> b!3620629 (= res!1465175 (= (h!43547 lt!1250669) lt!1250632))))

(declare-fun b!3620630 () Bool)

(assert (=> b!3620630 (= e!2241039 (contains!7411 (t!294042 lt!1250669) lt!1250632))))

(assert (= (and d!1065100 res!1465176) b!3620629))

(assert (= (and b!3620629 (not res!1465175)) b!3620630))

(assert (=> d!1065100 m!4119871))

(declare-fun m!4120309 () Bool)

(assert (=> d!1065100 m!4120309))

(declare-fun m!4120311 () Bool)

(assert (=> b!3620630 m!4120311))

(assert (=> b!3619879 d!1065100))

(declare-fun d!1065102 () Bool)

(declare-fun lt!1251047 () List!38251)

(assert (=> d!1065102 (= (++!9490 lt!1250663 lt!1251047) lt!1250671)))

(declare-fun e!2241041 () List!38251)

(assert (=> d!1065102 (= lt!1251047 e!2241041)))

(declare-fun c!626568 () Bool)

(assert (=> d!1065102 (= c!626568 ((_ is Cons!38127) lt!1250663))))

(assert (=> d!1065102 (>= (size!29091 lt!1250671) (size!29091 lt!1250663))))

(assert (=> d!1065102 (= (getSuffix!1612 lt!1250671 lt!1250663) lt!1251047)))

(declare-fun b!3620631 () Bool)

(assert (=> b!3620631 (= e!2241041 (getSuffix!1612 (tail!5607 lt!1250671) (t!294042 lt!1250663)))))

(declare-fun b!3620632 () Bool)

(assert (=> b!3620632 (= e!2241041 lt!1250671)))

(assert (= (and d!1065102 c!626568) b!3620631))

(assert (= (and d!1065102 (not c!626568)) b!3620632))

(declare-fun m!4120313 () Bool)

(assert (=> d!1065102 m!4120313))

(assert (=> d!1065102 m!4119893))

(assert (=> d!1065102 m!4119251))

(assert (=> b!3620631 m!4119889))

(assert (=> b!3620631 m!4119889))

(declare-fun m!4120315 () Bool)

(assert (=> b!3620631 m!4120315))

(assert (=> b!3619879 d!1065102))

(declare-fun d!1065104 () Bool)

(declare-fun lt!1251048 () Int)

(assert (=> d!1065104 (= lt!1251048 (size!29091 (list!14070 lt!1250664)))))

(assert (=> d!1065104 (= lt!1251048 (size!29093 (c!626425 lt!1250664)))))

(assert (=> d!1065104 (= (size!29090 lt!1250664) lt!1251048)))

(declare-fun bs!571181 () Bool)

(assert (= bs!571181 d!1065104))

(assert (=> bs!571181 m!4119179))

(assert (=> bs!571181 m!4119179))

(declare-fun m!4120317 () Bool)

(assert (=> bs!571181 m!4120317))

(declare-fun m!4120319 () Bool)

(assert (=> bs!571181 m!4120319))

(assert (=> b!3619879 d!1065104))

(declare-fun d!1065106 () Bool)

(assert (=> d!1065106 (= lt!1250654 (_2!22136 lt!1250630))))

(declare-fun lt!1251049 () Unit!54822)

(assert (=> d!1065106 (= lt!1251049 (choose!21228 lt!1250663 lt!1250654 lt!1250641 (_2!22136 lt!1250630) lt!1250671))))

(assert (=> d!1065106 (isPrefix!3037 lt!1250663 lt!1250671)))

(assert (=> d!1065106 (= (lemmaSamePrefixThenSameSuffix!1392 lt!1250663 lt!1250654 lt!1250641 (_2!22136 lt!1250630) lt!1250671) lt!1251049)))

(declare-fun bs!571182 () Bool)

(assert (= bs!571182 d!1065106))

(declare-fun m!4120321 () Bool)

(assert (=> bs!571182 m!4120321))

(assert (=> bs!571182 m!4119357))

(assert (=> b!3619879 d!1065106))

(declare-fun d!1065108 () Bool)

(assert (=> d!1065108 (= (head!7642 lt!1250641) (h!43547 lt!1250641))))

(assert (=> b!3619879 d!1065108))

(declare-fun d!1065110 () Bool)

(declare-fun lt!1251050 () Int)

(assert (=> d!1065110 (>= lt!1251050 0)))

(declare-fun e!2241042 () Int)

(assert (=> d!1065110 (= lt!1251050 e!2241042)))

(declare-fun c!626569 () Bool)

(assert (=> d!1065110 (= c!626569 ((_ is Nil!38127) lt!1250663))))

(assert (=> d!1065110 (= (size!29091 lt!1250663) lt!1251050)))

(declare-fun b!3620633 () Bool)

(assert (=> b!3620633 (= e!2241042 0)))

(declare-fun b!3620634 () Bool)

(assert (=> b!3620634 (= e!2241042 (+ 1 (size!29091 (t!294042 lt!1250663))))))

(assert (= (and d!1065110 c!626569) b!3620633))

(assert (= (and d!1065110 (not c!626569)) b!3620634))

(declare-fun m!4120323 () Bool)

(assert (=> b!3620634 m!4120323))

(assert (=> b!3619879 d!1065110))

(declare-fun d!1065112 () Bool)

(assert (=> d!1065112 (= (maxPrefixOneRule!1941 thiss!23823 rule!403 lt!1250671) (Some!7977 (tuple2!38005 (Token!10715 (apply!9180 (transformation!5674 rule!403) (seqFromList!4227 lt!1250663)) rule!403 (size!29091 lt!1250663) lt!1250663) lt!1250654)))))

(declare-fun lt!1251051 () Unit!54822)

(assert (=> d!1065112 (= lt!1251051 (choose!21237 thiss!23823 rules!3307 lt!1250663 lt!1250671 lt!1250654 rule!403))))

(assert (=> d!1065112 (not (isEmpty!22530 rules!3307))))

(assert (=> d!1065112 (= (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1013 thiss!23823 rules!3307 lt!1250663 lt!1250671 lt!1250654 rule!403) lt!1251051)))

(declare-fun bs!571183 () Bool)

(assert (= bs!571183 d!1065112))

(declare-fun m!4120325 () Bool)

(assert (=> bs!571183 m!4120325))

(assert (=> bs!571183 m!4119243))

(assert (=> bs!571183 m!4119251))

(assert (=> bs!571183 m!4119301))

(assert (=> bs!571183 m!4119243))

(assert (=> bs!571183 m!4119257))

(assert (=> bs!571183 m!4119259))

(assert (=> b!3619879 d!1065112))

(declare-fun d!1065114 () Bool)

(assert (=> d!1065114 (= (apply!9180 (transformation!5674 rule!403) (seqFromList!4227 lt!1250663)) (dynLambda!16500 (toValue!7958 (transformation!5674 rule!403)) (seqFromList!4227 lt!1250663)))))

(declare-fun b_lambda!107089 () Bool)

(assert (=> (not b_lambda!107089) (not d!1065114)))

(declare-fun tb!207675 () Bool)

(declare-fun t!294164 () Bool)

(assert (=> (and b!3619861 (= (toValue!7958 (transformation!5674 (h!43549 rules!3307))) (toValue!7958 (transformation!5674 rule!403))) t!294164) tb!207675))

(declare-fun result!253050 () Bool)

(assert (=> tb!207675 (= result!253050 (inv!21 (dynLambda!16500 (toValue!7958 (transformation!5674 rule!403)) (seqFromList!4227 lt!1250663))))))

(declare-fun m!4120327 () Bool)

(assert (=> tb!207675 m!4120327))

(assert (=> d!1065114 t!294164))

(declare-fun b_and!264727 () Bool)

(assert (= b_and!264715 (and (=> t!294164 result!253050) b_and!264727)))

(declare-fun tb!207677 () Bool)

(declare-fun t!294166 () Bool)

(assert (=> (and b!3619851 (= (toValue!7958 (transformation!5674 (rule!8434 token!511))) (toValue!7958 (transformation!5674 rule!403))) t!294166) tb!207677))

(declare-fun result!253052 () Bool)

(assert (= result!253052 result!253050))

(assert (=> d!1065114 t!294166))

(declare-fun b_and!264729 () Bool)

(assert (= b_and!264717 (and (=> t!294166 result!253052) b_and!264729)))

(declare-fun t!294168 () Bool)

(declare-fun tb!207679 () Bool)

(assert (=> (and b!3619893 (= (toValue!7958 (transformation!5674 anOtherTypeRule!33)) (toValue!7958 (transformation!5674 rule!403))) t!294168) tb!207679))

(declare-fun result!253054 () Bool)

(assert (= result!253054 result!253050))

(assert (=> d!1065114 t!294168))

(declare-fun b_and!264731 () Bool)

(assert (= b_and!264719 (and (=> t!294168 result!253054) b_and!264731)))

(declare-fun t!294170 () Bool)

(declare-fun tb!207681 () Bool)

(assert (=> (and b!3619862 (= (toValue!7958 (transformation!5674 rule!403)) (toValue!7958 (transformation!5674 rule!403))) t!294170) tb!207681))

(declare-fun result!253056 () Bool)

(assert (= result!253056 result!253050))

(assert (=> d!1065114 t!294170))

(declare-fun b_and!264733 () Bool)

(assert (= b_and!264721 (and (=> t!294170 result!253056) b_and!264733)))

(assert (=> d!1065114 m!4119243))

(declare-fun m!4120329 () Bool)

(assert (=> d!1065114 m!4120329))

(assert (=> b!3619879 d!1065114))

(declare-fun d!1065116 () Bool)

(assert (=> d!1065116 (= (seqFromList!4227 lt!1250663) (fromListB!1947 lt!1250663))))

(declare-fun bs!571184 () Bool)

(assert (= bs!571184 d!1065116))

(declare-fun m!4120331 () Bool)

(assert (=> bs!571184 m!4120331))

(assert (=> b!3619879 d!1065116))

(declare-fun b!3620635 () Bool)

(declare-fun e!2241044 () Option!7978)

(declare-fun lt!1251052 () tuple2!38012)

(assert (=> b!3620635 (= e!2241044 (Some!7977 (tuple2!38005 (Token!10715 (apply!9180 (transformation!5674 rule!403) (seqFromList!4227 (_1!22140 lt!1251052))) rule!403 (size!29090 (seqFromList!4227 (_1!22140 lt!1251052))) (_1!22140 lt!1251052)) (_2!22140 lt!1251052))))))

(declare-fun lt!1251056 () Unit!54822)

(assert (=> b!3620635 (= lt!1251056 (longestMatchIsAcceptedByMatchOrIsEmpty!988 (regex!5674 rule!403) lt!1250671))))

(declare-fun res!1465180 () Bool)

(assert (=> b!3620635 (= res!1465180 (isEmpty!22531 (_1!22140 (findLongestMatchInner!1015 (regex!5674 rule!403) Nil!38127 (size!29091 Nil!38127) lt!1250671 lt!1250671 (size!29091 lt!1250671)))))))

(declare-fun e!2241047 () Bool)

(assert (=> b!3620635 (=> res!1465180 e!2241047)))

(assert (=> b!3620635 e!2241047))

(declare-fun lt!1251055 () Unit!54822)

(assert (=> b!3620635 (= lt!1251055 lt!1251056)))

(declare-fun lt!1251054 () Unit!54822)

(assert (=> b!3620635 (= lt!1251054 (lemmaSemiInverse!1431 (transformation!5674 rule!403) (seqFromList!4227 (_1!22140 lt!1251052))))))

(declare-fun b!3620636 () Bool)

(assert (=> b!3620636 (= e!2241047 (matchR!5002 (regex!5674 rule!403) (_1!22140 (findLongestMatchInner!1015 (regex!5674 rule!403) Nil!38127 (size!29091 Nil!38127) lt!1250671 lt!1250671 (size!29091 lt!1250671)))))))

(declare-fun b!3620637 () Bool)

(declare-fun res!1465181 () Bool)

(declare-fun e!2241046 () Bool)

(assert (=> b!3620637 (=> (not res!1465181) (not e!2241046))))

(declare-fun lt!1251053 () Option!7978)

(assert (=> b!3620637 (= res!1465181 (< (size!29091 (_2!22136 (get!12425 lt!1251053))) (size!29091 lt!1250671)))))

(declare-fun b!3620638 () Bool)

(assert (=> b!3620638 (= e!2241044 None!7977)))

(declare-fun b!3620639 () Bool)

(declare-fun res!1465179 () Bool)

(assert (=> b!3620639 (=> (not res!1465179) (not e!2241046))))

(assert (=> b!3620639 (= res!1465179 (= (++!9490 (list!14070 (charsOf!3688 (_1!22136 (get!12425 lt!1251053)))) (_2!22136 (get!12425 lt!1251053))) lt!1250671))))

(declare-fun d!1065118 () Bool)

(declare-fun e!2241045 () Bool)

(assert (=> d!1065118 e!2241045))

(declare-fun res!1465178 () Bool)

(assert (=> d!1065118 (=> res!1465178 e!2241045)))

(assert (=> d!1065118 (= res!1465178 (isEmpty!22533 lt!1251053))))

(assert (=> d!1065118 (= lt!1251053 e!2241044)))

(declare-fun c!626570 () Bool)

(assert (=> d!1065118 (= c!626570 (isEmpty!22531 (_1!22140 lt!1251052)))))

(assert (=> d!1065118 (= lt!1251052 (findLongestMatch!930 (regex!5674 rule!403) lt!1250671))))

(assert (=> d!1065118 (ruleValid!1939 thiss!23823 rule!403)))

(assert (=> d!1065118 (= (maxPrefixOneRule!1941 thiss!23823 rule!403 lt!1250671) lt!1251053)))

(declare-fun b!3620640 () Bool)

(assert (=> b!3620640 (= e!2241046 (= (size!29089 (_1!22136 (get!12425 lt!1251053))) (size!29091 (originalCharacters!6388 (_1!22136 (get!12425 lt!1251053))))))))

(declare-fun b!3620641 () Bool)

(declare-fun res!1465183 () Bool)

(assert (=> b!3620641 (=> (not res!1465183) (not e!2241046))))

(assert (=> b!3620641 (= res!1465183 (= (value!182169 (_1!22136 (get!12425 lt!1251053))) (apply!9180 (transformation!5674 (rule!8434 (_1!22136 (get!12425 lt!1251053)))) (seqFromList!4227 (originalCharacters!6388 (_1!22136 (get!12425 lt!1251053)))))))))

(declare-fun b!3620642 () Bool)

(declare-fun res!1465182 () Bool)

(assert (=> b!3620642 (=> (not res!1465182) (not e!2241046))))

(assert (=> b!3620642 (= res!1465182 (= (rule!8434 (_1!22136 (get!12425 lt!1251053))) rule!403))))

(declare-fun b!3620643 () Bool)

(assert (=> b!3620643 (= e!2241045 e!2241046)))

(declare-fun res!1465177 () Bool)

(assert (=> b!3620643 (=> (not res!1465177) (not e!2241046))))

(assert (=> b!3620643 (= res!1465177 (matchR!5002 (regex!5674 rule!403) (list!14070 (charsOf!3688 (_1!22136 (get!12425 lt!1251053))))))))

(assert (= (and d!1065118 c!626570) b!3620638))

(assert (= (and d!1065118 (not c!626570)) b!3620635))

(assert (= (and b!3620635 (not res!1465180)) b!3620636))

(assert (= (and d!1065118 (not res!1465178)) b!3620643))

(assert (= (and b!3620643 res!1465177) b!3620639))

(assert (= (and b!3620639 res!1465179) b!3620637))

(assert (= (and b!3620637 res!1465181) b!3620642))

(assert (= (and b!3620642 res!1465182) b!3620641))

(assert (= (and b!3620641 res!1465183) b!3620640))

(declare-fun m!4120333 () Bool)

(assert (=> b!3620641 m!4120333))

(declare-fun m!4120335 () Bool)

(assert (=> b!3620641 m!4120335))

(assert (=> b!3620641 m!4120335))

(declare-fun m!4120337 () Bool)

(assert (=> b!3620641 m!4120337))

(assert (=> b!3620636 m!4120249))

(assert (=> b!3620636 m!4119893))

(assert (=> b!3620636 m!4120249))

(assert (=> b!3620636 m!4119893))

(declare-fun m!4120339 () Bool)

(assert (=> b!3620636 m!4120339))

(declare-fun m!4120341 () Bool)

(assert (=> b!3620636 m!4120341))

(declare-fun m!4120343 () Bool)

(assert (=> b!3620635 m!4120343))

(assert (=> b!3620635 m!4120249))

(assert (=> b!3620635 m!4119893))

(assert (=> b!3620635 m!4120339))

(assert (=> b!3620635 m!4119893))

(declare-fun m!4120345 () Bool)

(assert (=> b!3620635 m!4120345))

(declare-fun m!4120347 () Bool)

(assert (=> b!3620635 m!4120347))

(assert (=> b!3620635 m!4120345))

(declare-fun m!4120349 () Bool)

(assert (=> b!3620635 m!4120349))

(assert (=> b!3620635 m!4120345))

(declare-fun m!4120351 () Bool)

(assert (=> b!3620635 m!4120351))

(assert (=> b!3620635 m!4120345))

(declare-fun m!4120353 () Bool)

(assert (=> b!3620635 m!4120353))

(assert (=> b!3620635 m!4120249))

(assert (=> b!3620637 m!4120333))

(declare-fun m!4120355 () Bool)

(assert (=> b!3620637 m!4120355))

(assert (=> b!3620637 m!4119893))

(assert (=> b!3620642 m!4120333))

(assert (=> b!3620640 m!4120333))

(declare-fun m!4120357 () Bool)

(assert (=> b!3620640 m!4120357))

(declare-fun m!4120359 () Bool)

(assert (=> d!1065118 m!4120359))

(declare-fun m!4120361 () Bool)

(assert (=> d!1065118 m!4120361))

(declare-fun m!4120363 () Bool)

(assert (=> d!1065118 m!4120363))

(assert (=> d!1065118 m!4119213))

(assert (=> b!3620639 m!4120333))

(declare-fun m!4120365 () Bool)

(assert (=> b!3620639 m!4120365))

(assert (=> b!3620639 m!4120365))

(declare-fun m!4120367 () Bool)

(assert (=> b!3620639 m!4120367))

(assert (=> b!3620639 m!4120367))

(declare-fun m!4120369 () Bool)

(assert (=> b!3620639 m!4120369))

(assert (=> b!3620643 m!4120333))

(assert (=> b!3620643 m!4120365))

(assert (=> b!3620643 m!4120365))

(assert (=> b!3620643 m!4120367))

(assert (=> b!3620643 m!4120367))

(declare-fun m!4120371 () Bool)

(assert (=> b!3620643 m!4120371))

(assert (=> b!3619879 d!1065118))

(declare-fun d!1065120 () Bool)

(assert (=> d!1065120 (= lt!1250641 lt!1250663)))

(declare-fun lt!1251059 () Unit!54822)

(declare-fun choose!21239 (List!38251 List!38251 List!38251) Unit!54822)

(assert (=> d!1065120 (= lt!1251059 (choose!21239 lt!1250641 lt!1250663 lt!1250671))))

(assert (=> d!1065120 (isPrefix!3037 lt!1250641 lt!1250671)))

(assert (=> d!1065120 (= (lemmaIsPrefixSameLengthThenSameList!611 lt!1250641 lt!1250663 lt!1250671) lt!1251059)))

(declare-fun bs!571185 () Bool)

(assert (= bs!571185 d!1065120))

(declare-fun m!4120373 () Bool)

(assert (=> bs!571185 m!4120373))

(assert (=> bs!571185 m!4119363))

(assert (=> b!3619879 d!1065120))

(declare-fun b!3620644 () Bool)

(declare-fun res!1465188 () Bool)

(declare-fun e!2241054 () Bool)

(assert (=> b!3620644 (=> res!1465188 e!2241054)))

(declare-fun e!2241053 () Bool)

(assert (=> b!3620644 (= res!1465188 e!2241053)))

(declare-fun res!1465190 () Bool)

(assert (=> b!3620644 (=> (not res!1465190) (not e!2241053))))

(declare-fun lt!1251060 () Bool)

(assert (=> b!3620644 (= res!1465190 lt!1251060)))

(declare-fun bm!261959 () Bool)

(declare-fun call!261964 () Bool)

(assert (=> bm!261959 (= call!261964 (isEmpty!22531 lt!1250663))))

(declare-fun b!3620645 () Bool)

(declare-fun res!1465186 () Bool)

(assert (=> b!3620645 (=> res!1465186 e!2241054)))

(assert (=> b!3620645 (= res!1465186 (not ((_ is ElementMatch!10433) (regex!5674 rule!403))))))

(declare-fun e!2241048 () Bool)

(assert (=> b!3620645 (= e!2241048 e!2241054)))

(declare-fun b!3620646 () Bool)

(assert (=> b!3620646 (= e!2241053 (= (head!7642 lt!1250663) (c!626424 (regex!5674 rule!403))))))

(declare-fun b!3620647 () Bool)

(declare-fun e!2241050 () Bool)

(assert (=> b!3620647 (= e!2241050 (nullable!3609 (regex!5674 rule!403)))))

(declare-fun b!3620648 () Bool)

(declare-fun res!1465184 () Bool)

(assert (=> b!3620648 (=> (not res!1465184) (not e!2241053))))

(assert (=> b!3620648 (= res!1465184 (not call!261964))))

(declare-fun d!1065122 () Bool)

(declare-fun e!2241052 () Bool)

(assert (=> d!1065122 e!2241052))

(declare-fun c!626571 () Bool)

(assert (=> d!1065122 (= c!626571 ((_ is EmptyExpr!10433) (regex!5674 rule!403)))))

(assert (=> d!1065122 (= lt!1251060 e!2241050)))

(declare-fun c!626573 () Bool)

(assert (=> d!1065122 (= c!626573 (isEmpty!22531 lt!1250663))))

(assert (=> d!1065122 (validRegex!4771 (regex!5674 rule!403))))

(assert (=> d!1065122 (= (matchR!5002 (regex!5674 rule!403) lt!1250663) lt!1251060)))

(declare-fun b!3620649 () Bool)

(declare-fun res!1465189 () Bool)

(assert (=> b!3620649 (=> (not res!1465189) (not e!2241053))))

(assert (=> b!3620649 (= res!1465189 (isEmpty!22531 (tail!5607 lt!1250663)))))

(declare-fun b!3620650 () Bool)

(assert (=> b!3620650 (= e!2241052 e!2241048)))

(declare-fun c!626572 () Bool)

(assert (=> b!3620650 (= c!626572 ((_ is EmptyLang!10433) (regex!5674 rule!403)))))

(declare-fun b!3620651 () Bool)

(declare-fun e!2241049 () Bool)

(assert (=> b!3620651 (= e!2241049 (not (= (head!7642 lt!1250663) (c!626424 (regex!5674 rule!403)))))))

(declare-fun b!3620652 () Bool)

(assert (=> b!3620652 (= e!2241048 (not lt!1251060))))

(declare-fun b!3620653 () Bool)

(assert (=> b!3620653 (= e!2241052 (= lt!1251060 call!261964))))

(declare-fun b!3620654 () Bool)

(declare-fun e!2241051 () Bool)

(assert (=> b!3620654 (= e!2241054 e!2241051)))

(declare-fun res!1465185 () Bool)

(assert (=> b!3620654 (=> (not res!1465185) (not e!2241051))))

(assert (=> b!3620654 (= res!1465185 (not lt!1251060))))

(declare-fun b!3620655 () Bool)

(declare-fun res!1465191 () Bool)

(assert (=> b!3620655 (=> res!1465191 e!2241049)))

(assert (=> b!3620655 (= res!1465191 (not (isEmpty!22531 (tail!5607 lt!1250663))))))

(declare-fun b!3620656 () Bool)

(assert (=> b!3620656 (= e!2241050 (matchR!5002 (derivativeStep!3158 (regex!5674 rule!403) (head!7642 lt!1250663)) (tail!5607 lt!1250663)))))

(declare-fun b!3620657 () Bool)

(assert (=> b!3620657 (= e!2241051 e!2241049)))

(declare-fun res!1465187 () Bool)

(assert (=> b!3620657 (=> res!1465187 e!2241049)))

(assert (=> b!3620657 (= res!1465187 call!261964)))

(assert (= (and d!1065122 c!626573) b!3620647))

(assert (= (and d!1065122 (not c!626573)) b!3620656))

(assert (= (and d!1065122 c!626571) b!3620653))

(assert (= (and d!1065122 (not c!626571)) b!3620650))

(assert (= (and b!3620650 c!626572) b!3620652))

(assert (= (and b!3620650 (not c!626572)) b!3620645))

(assert (= (and b!3620645 (not res!1465186)) b!3620644))

(assert (= (and b!3620644 res!1465190) b!3620648))

(assert (= (and b!3620648 res!1465184) b!3620649))

(assert (= (and b!3620649 res!1465189) b!3620646))

(assert (= (and b!3620644 (not res!1465188)) b!3620654))

(assert (= (and b!3620654 res!1465185) b!3620657))

(assert (= (and b!3620657 (not res!1465187)) b!3620655))

(assert (= (and b!3620655 (not res!1465191)) b!3620651))

(assert (= (or b!3620653 b!3620657 b!3620648) bm!261959))

(declare-fun m!4120375 () Bool)

(assert (=> d!1065122 m!4120375))

(declare-fun m!4120377 () Bool)

(assert (=> d!1065122 m!4120377))

(assert (=> b!3620651 m!4119933))

(assert (=> b!3620655 m!4119929))

(assert (=> b!3620655 m!4119929))

(declare-fun m!4120379 () Bool)

(assert (=> b!3620655 m!4120379))

(declare-fun m!4120381 () Bool)

(assert (=> b!3620647 m!4120381))

(assert (=> b!3620646 m!4119933))

(assert (=> b!3620656 m!4119933))

(assert (=> b!3620656 m!4119933))

(declare-fun m!4120383 () Bool)

(assert (=> b!3620656 m!4120383))

(assert (=> b!3620656 m!4119929))

(assert (=> b!3620656 m!4120383))

(assert (=> b!3620656 m!4119929))

(declare-fun m!4120385 () Bool)

(assert (=> b!3620656 m!4120385))

(assert (=> b!3620649 m!4119929))

(assert (=> b!3620649 m!4119929))

(assert (=> b!3620649 m!4120379))

(assert (=> bm!261959 m!4120375))

(assert (=> b!3619860 d!1065122))

(declare-fun d!1065124 () Bool)

(declare-fun res!1465196 () Bool)

(declare-fun e!2241057 () Bool)

(assert (=> d!1065124 (=> (not res!1465196) (not e!2241057))))

(assert (=> d!1065124 (= res!1465196 (validRegex!4771 (regex!5674 rule!403)))))

(assert (=> d!1065124 (= (ruleValid!1939 thiss!23823 rule!403) e!2241057)))

(declare-fun b!3620662 () Bool)

(declare-fun res!1465197 () Bool)

(assert (=> b!3620662 (=> (not res!1465197) (not e!2241057))))

(assert (=> b!3620662 (= res!1465197 (not (nullable!3609 (regex!5674 rule!403))))))

(declare-fun b!3620663 () Bool)

(assert (=> b!3620663 (= e!2241057 (not (= (tag!6390 rule!403) (String!42855 ""))))))

(assert (= (and d!1065124 res!1465196) b!3620662))

(assert (= (and b!3620662 res!1465197) b!3620663))

(assert (=> d!1065124 m!4120377))

(assert (=> b!3620662 m!4120381))

(assert (=> b!3619860 d!1065124))

(declare-fun d!1065126 () Bool)

(assert (=> d!1065126 (ruleValid!1939 thiss!23823 rule!403)))

(declare-fun lt!1251063 () Unit!54822)

(declare-fun choose!21241 (LexerInterface!5263 Rule!11148 List!38253) Unit!54822)

(assert (=> d!1065126 (= lt!1251063 (choose!21241 thiss!23823 rule!403 rules!3307))))

(assert (=> d!1065126 (contains!7412 rules!3307 rule!403)))

(assert (=> d!1065126 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1094 thiss!23823 rule!403 rules!3307) lt!1251063)))

(declare-fun bs!571186 () Bool)

(assert (= bs!571186 d!1065126))

(assert (=> bs!571186 m!4119213))

(declare-fun m!4120387 () Bool)

(assert (=> bs!571186 m!4120387))

(assert (=> bs!571186 m!4119225))

(assert (=> b!3619860 d!1065126))

(declare-fun d!1065128 () Bool)

(declare-fun lt!1251064 () Bool)

(assert (=> d!1065128 (= lt!1251064 (select (content!5456 call!261909) lt!1250635))))

(declare-fun e!2241059 () Bool)

(assert (=> d!1065128 (= lt!1251064 e!2241059)))

(declare-fun res!1465199 () Bool)

(assert (=> d!1065128 (=> (not res!1465199) (not e!2241059))))

(assert (=> d!1065128 (= res!1465199 ((_ is Cons!38127) call!261909))))

(assert (=> d!1065128 (= (contains!7411 call!261909 lt!1250635) lt!1251064)))

(declare-fun b!3620664 () Bool)

(declare-fun e!2241058 () Bool)

(assert (=> b!3620664 (= e!2241059 e!2241058)))

(declare-fun res!1465198 () Bool)

(assert (=> b!3620664 (=> res!1465198 e!2241058)))

(assert (=> b!3620664 (= res!1465198 (= (h!43547 call!261909) lt!1250635))))

(declare-fun b!3620665 () Bool)

(assert (=> b!3620665 (= e!2241058 (contains!7411 (t!294042 call!261909) lt!1250635))))

(assert (= (and d!1065128 res!1465199) b!3620664))

(assert (= (and b!3620664 (not res!1465198)) b!3620665))

(declare-fun m!4120389 () Bool)

(assert (=> d!1065128 m!4120389))

(declare-fun m!4120391 () Bool)

(assert (=> d!1065128 m!4120391))

(declare-fun m!4120393 () Bool)

(assert (=> b!3620665 m!4120393))

(assert (=> bm!261900 d!1065128))

(declare-fun bm!261960 () Bool)

(declare-fun call!261965 () List!38251)

(declare-fun c!626576 () Bool)

(assert (=> bm!261960 (= call!261965 (usedCharacters!888 (ite c!626576 (regTwo!21379 (regex!5674 (rule!8434 (_1!22136 lt!1250630)))) (regOne!21378 (regex!5674 (rule!8434 (_1!22136 lt!1250630)))))))))

(declare-fun b!3620666 () Bool)

(declare-fun c!626577 () Bool)

(assert (=> b!3620666 (= c!626577 ((_ is Star!10433) (regex!5674 (rule!8434 (_1!22136 lt!1250630)))))))

(declare-fun e!2241061 () List!38251)

(declare-fun e!2241062 () List!38251)

(assert (=> b!3620666 (= e!2241061 e!2241062)))

(declare-fun b!3620667 () Bool)

(declare-fun e!2241060 () List!38251)

(assert (=> b!3620667 (= e!2241062 e!2241060)))

(assert (=> b!3620667 (= c!626576 ((_ is Union!10433) (regex!5674 (rule!8434 (_1!22136 lt!1250630)))))))

(declare-fun b!3620668 () Bool)

(declare-fun call!261966 () List!38251)

(assert (=> b!3620668 (= e!2241060 call!261966)))

(declare-fun d!1065130 () Bool)

(declare-fun c!626575 () Bool)

(assert (=> d!1065130 (= c!626575 (or ((_ is EmptyExpr!10433) (regex!5674 (rule!8434 (_1!22136 lt!1250630)))) ((_ is EmptyLang!10433) (regex!5674 (rule!8434 (_1!22136 lt!1250630))))))))

(declare-fun e!2241063 () List!38251)

(assert (=> d!1065130 (= (usedCharacters!888 (regex!5674 (rule!8434 (_1!22136 lt!1250630)))) e!2241063)))

(declare-fun bm!261961 () Bool)

(declare-fun call!261967 () List!38251)

(assert (=> bm!261961 (= call!261967 (usedCharacters!888 (ite c!626577 (reg!10762 (regex!5674 (rule!8434 (_1!22136 lt!1250630)))) (ite c!626576 (regOne!21379 (regex!5674 (rule!8434 (_1!22136 lt!1250630)))) (regTwo!21378 (regex!5674 (rule!8434 (_1!22136 lt!1250630))))))))))

(declare-fun b!3620669 () Bool)

(assert (=> b!3620669 (= e!2241060 call!261966)))

(declare-fun bm!261962 () Bool)

(declare-fun call!261968 () List!38251)

(assert (=> bm!261962 (= call!261968 call!261967)))

(declare-fun b!3620670 () Bool)

(assert (=> b!3620670 (= e!2241063 Nil!38127)))

(declare-fun b!3620671 () Bool)

(assert (=> b!3620671 (= e!2241062 call!261967)))

(declare-fun b!3620672 () Bool)

(assert (=> b!3620672 (= e!2241061 (Cons!38127 (c!626424 (regex!5674 (rule!8434 (_1!22136 lt!1250630)))) Nil!38127))))

(declare-fun bm!261963 () Bool)

(assert (=> bm!261963 (= call!261966 (++!9490 (ite c!626576 call!261968 call!261965) (ite c!626576 call!261965 call!261968)))))

(declare-fun b!3620673 () Bool)

(assert (=> b!3620673 (= e!2241063 e!2241061)))

(declare-fun c!626574 () Bool)

(assert (=> b!3620673 (= c!626574 ((_ is ElementMatch!10433) (regex!5674 (rule!8434 (_1!22136 lt!1250630)))))))

(assert (= (and d!1065130 c!626575) b!3620670))

(assert (= (and d!1065130 (not c!626575)) b!3620673))

(assert (= (and b!3620673 c!626574) b!3620672))

(assert (= (and b!3620673 (not c!626574)) b!3620666))

(assert (= (and b!3620666 c!626577) b!3620671))

(assert (= (and b!3620666 (not c!626577)) b!3620667))

(assert (= (and b!3620667 c!626576) b!3620668))

(assert (= (and b!3620667 (not c!626576)) b!3620669))

(assert (= (or b!3620668 b!3620669) bm!261962))

(assert (= (or b!3620668 b!3620669) bm!261960))

(assert (= (or b!3620668 b!3620669) bm!261963))

(assert (= (or b!3620671 bm!261962) bm!261961))

(declare-fun m!4120395 () Bool)

(assert (=> bm!261960 m!4120395))

(declare-fun m!4120397 () Bool)

(assert (=> bm!261961 m!4120397))

(declare-fun m!4120399 () Bool)

(assert (=> bm!261963 m!4120399))

(assert (=> bm!261902 d!1065130))

(declare-fun d!1065132 () Bool)

(assert (=> d!1065132 (= (isDefined!6210 lt!1250628) (not (isEmpty!22533 lt!1250628)))))

(declare-fun bs!571187 () Bool)

(assert (= bs!571187 d!1065132))

(declare-fun m!4120401 () Bool)

(assert (=> bs!571187 m!4120401))

(assert (=> b!3619885 d!1065132))

(declare-fun b!3620674 () Bool)

(declare-fun e!2241066 () Option!7978)

(declare-fun call!261969 () Option!7978)

(assert (=> b!3620674 (= e!2241066 call!261969)))

(declare-fun b!3620675 () Bool)

(declare-fun res!1465203 () Bool)

(declare-fun e!2241065 () Bool)

(assert (=> b!3620675 (=> (not res!1465203) (not e!2241065))))

(declare-fun lt!1251066 () Option!7978)

(assert (=> b!3620675 (= res!1465203 (= (++!9490 (list!14070 (charsOf!3688 (_1!22136 (get!12425 lt!1251066)))) (_2!22136 (get!12425 lt!1251066))) lt!1250663))))

(declare-fun b!3620676 () Bool)

(declare-fun e!2241064 () Bool)

(assert (=> b!3620676 (= e!2241064 e!2241065)))

(declare-fun res!1465200 () Bool)

(assert (=> b!3620676 (=> (not res!1465200) (not e!2241065))))

(assert (=> b!3620676 (= res!1465200 (isDefined!6210 lt!1251066))))

(declare-fun b!3620677 () Bool)

(declare-fun res!1465202 () Bool)

(assert (=> b!3620677 (=> (not res!1465202) (not e!2241065))))

(assert (=> b!3620677 (= res!1465202 (< (size!29091 (_2!22136 (get!12425 lt!1251066))) (size!29091 lt!1250663)))))

(declare-fun b!3620678 () Bool)

(declare-fun res!1465201 () Bool)

(assert (=> b!3620678 (=> (not res!1465201) (not e!2241065))))

(assert (=> b!3620678 (= res!1465201 (= (list!14070 (charsOf!3688 (_1!22136 (get!12425 lt!1251066)))) (originalCharacters!6388 (_1!22136 (get!12425 lt!1251066)))))))

(declare-fun bm!261964 () Bool)

(assert (=> bm!261964 (= call!261969 (maxPrefixOneRule!1941 thiss!23823 (h!43549 rules!3307) lt!1250663))))

(declare-fun b!3620679 () Bool)

(declare-fun lt!1251067 () Option!7978)

(declare-fun lt!1251068 () Option!7978)

(assert (=> b!3620679 (= e!2241066 (ite (and ((_ is None!7977) lt!1251067) ((_ is None!7977) lt!1251068)) None!7977 (ite ((_ is None!7977) lt!1251068) lt!1251067 (ite ((_ is None!7977) lt!1251067) lt!1251068 (ite (>= (size!29089 (_1!22136 (v!37739 lt!1251067))) (size!29089 (_1!22136 (v!37739 lt!1251068)))) lt!1251067 lt!1251068)))))))

(assert (=> b!3620679 (= lt!1251067 call!261969)))

(assert (=> b!3620679 (= lt!1251068 (maxPrefix!2797 thiss!23823 (t!294044 rules!3307) lt!1250663))))

(declare-fun b!3620681 () Bool)

(assert (=> b!3620681 (= e!2241065 (contains!7412 rules!3307 (rule!8434 (_1!22136 (get!12425 lt!1251066)))))))

(declare-fun b!3620682 () Bool)

(declare-fun res!1465204 () Bool)

(assert (=> b!3620682 (=> (not res!1465204) (not e!2241065))))

(assert (=> b!3620682 (= res!1465204 (= (value!182169 (_1!22136 (get!12425 lt!1251066))) (apply!9180 (transformation!5674 (rule!8434 (_1!22136 (get!12425 lt!1251066)))) (seqFromList!4227 (originalCharacters!6388 (_1!22136 (get!12425 lt!1251066)))))))))

(declare-fun d!1065134 () Bool)

(assert (=> d!1065134 e!2241064))

(declare-fun res!1465206 () Bool)

(assert (=> d!1065134 (=> res!1465206 e!2241064)))

(assert (=> d!1065134 (= res!1465206 (isEmpty!22533 lt!1251066))))

(assert (=> d!1065134 (= lt!1251066 e!2241066)))

(declare-fun c!626578 () Bool)

(assert (=> d!1065134 (= c!626578 (and ((_ is Cons!38129) rules!3307) ((_ is Nil!38129) (t!294044 rules!3307))))))

(declare-fun lt!1251069 () Unit!54822)

(declare-fun lt!1251065 () Unit!54822)

(assert (=> d!1065134 (= lt!1251069 lt!1251065)))

(assert (=> d!1065134 (isPrefix!3037 lt!1250663 lt!1250663)))

(assert (=> d!1065134 (= lt!1251065 (lemmaIsPrefixRefl!1928 lt!1250663 lt!1250663))))

(assert (=> d!1065134 (rulesValidInductive!1991 thiss!23823 rules!3307)))

(assert (=> d!1065134 (= (maxPrefix!2797 thiss!23823 rules!3307 lt!1250663) lt!1251066)))

(declare-fun b!3620680 () Bool)

(declare-fun res!1465205 () Bool)

(assert (=> b!3620680 (=> (not res!1465205) (not e!2241065))))

(assert (=> b!3620680 (= res!1465205 (matchR!5002 (regex!5674 (rule!8434 (_1!22136 (get!12425 lt!1251066)))) (list!14070 (charsOf!3688 (_1!22136 (get!12425 lt!1251066))))))))

(assert (= (and d!1065134 c!626578) b!3620674))

(assert (= (and d!1065134 (not c!626578)) b!3620679))

(assert (= (or b!3620674 b!3620679) bm!261964))

(assert (= (and d!1065134 (not res!1465206)) b!3620676))

(assert (= (and b!3620676 res!1465200) b!3620678))

(assert (= (and b!3620678 res!1465201) b!3620677))

(assert (= (and b!3620677 res!1465202) b!3620675))

(assert (= (and b!3620675 res!1465203) b!3620682))

(assert (= (and b!3620682 res!1465204) b!3620680))

(assert (= (and b!3620680 res!1465205) b!3620681))

(declare-fun m!4120403 () Bool)

(assert (=> b!3620681 m!4120403))

(declare-fun m!4120405 () Bool)

(assert (=> b!3620681 m!4120405))

(assert (=> b!3620675 m!4120403))

(declare-fun m!4120407 () Bool)

(assert (=> b!3620675 m!4120407))

(assert (=> b!3620675 m!4120407))

(declare-fun m!4120409 () Bool)

(assert (=> b!3620675 m!4120409))

(assert (=> b!3620675 m!4120409))

(declare-fun m!4120411 () Bool)

(assert (=> b!3620675 m!4120411))

(assert (=> b!3620678 m!4120403))

(assert (=> b!3620678 m!4120407))

(assert (=> b!3620678 m!4120407))

(assert (=> b!3620678 m!4120409))

(assert (=> b!3620680 m!4120403))

(assert (=> b!3620680 m!4120407))

(assert (=> b!3620680 m!4120407))

(assert (=> b!3620680 m!4120409))

(assert (=> b!3620680 m!4120409))

(declare-fun m!4120413 () Bool)

(assert (=> b!3620680 m!4120413))

(assert (=> b!3620677 m!4120403))

(declare-fun m!4120415 () Bool)

(assert (=> b!3620677 m!4120415))

(assert (=> b!3620677 m!4119251))

(declare-fun m!4120417 () Bool)

(assert (=> b!3620676 m!4120417))

(declare-fun m!4120419 () Bool)

(assert (=> bm!261964 m!4120419))

(declare-fun m!4120421 () Bool)

(assert (=> d!1065134 m!4120421))

(declare-fun m!4120423 () Bool)

(assert (=> d!1065134 m!4120423))

(declare-fun m!4120425 () Bool)

(assert (=> d!1065134 m!4120425))

(assert (=> d!1065134 m!4119191))

(declare-fun m!4120427 () Bool)

(assert (=> b!3620679 m!4120427))

(assert (=> b!3620682 m!4120403))

(declare-fun m!4120429 () Bool)

(assert (=> b!3620682 m!4120429))

(assert (=> b!3620682 m!4120429))

(declare-fun m!4120431 () Bool)

(assert (=> b!3620682 m!4120431))

(assert (=> b!3619885 d!1065134))

(declare-fun d!1065136 () Bool)

(assert (=> d!1065136 (= (list!14070 lt!1250664) (list!14072 (c!626425 lt!1250664)))))

(declare-fun bs!571188 () Bool)

(assert (= bs!571188 d!1065136))

(declare-fun m!4120433 () Bool)

(assert (=> bs!571188 m!4120433))

(assert (=> b!3619885 d!1065136))

(declare-fun d!1065138 () Bool)

(declare-fun lt!1251070 () BalanceConc!22864)

(assert (=> d!1065138 (= (list!14070 lt!1251070) (originalCharacters!6388 token!511))))

(assert (=> d!1065138 (= lt!1251070 (dynLambda!16495 (toChars!7817 (transformation!5674 (rule!8434 token!511))) (value!182169 token!511)))))

(assert (=> d!1065138 (= (charsOf!3688 token!511) lt!1251070)))

(declare-fun b_lambda!107091 () Bool)

(assert (=> (not b_lambda!107091) (not d!1065138)))

(assert (=> d!1065138 t!294134))

(declare-fun b_and!264735 () Bool)

(assert (= b_and!264707 (and (=> t!294134 result!253014) b_and!264735)))

(assert (=> d!1065138 t!294136))

(declare-fun b_and!264737 () Bool)

(assert (= b_and!264709 (and (=> t!294136 result!253016) b_and!264737)))

(assert (=> d!1065138 t!294138))

(declare-fun b_and!264739 () Bool)

(assert (= b_and!264711 (and (=> t!294138 result!253018) b_and!264739)))

(assert (=> d!1065138 t!294140))

(declare-fun b_and!264741 () Bool)

(assert (= b_and!264713 (and (=> t!294140 result!253020) b_and!264741)))

(declare-fun m!4120435 () Bool)

(assert (=> d!1065138 m!4120435))

(assert (=> d!1065138 m!4120147))

(assert (=> b!3619885 d!1065138))

(declare-fun b!3620694 () Bool)

(declare-fun e!2241072 () Int)

(assert (=> b!3620694 (= e!2241072 (- 1))))

(declare-fun b!3620691 () Bool)

(declare-fun e!2241073 () Int)

(assert (=> b!3620691 (= e!2241073 0)))

(declare-fun b!3620693 () Bool)

(assert (=> b!3620693 (= e!2241072 (+ 1 (getIndex!456 (t!294044 rules!3307) (rule!8434 (_1!22136 lt!1250630)))))))

(declare-fun b!3620692 () Bool)

(assert (=> b!3620692 (= e!2241073 e!2241072)))

(declare-fun c!626584 () Bool)

(assert (=> b!3620692 (= c!626584 (and ((_ is Cons!38129) rules!3307) (not (= (h!43549 rules!3307) (rule!8434 (_1!22136 lt!1250630))))))))

(declare-fun d!1065140 () Bool)

(declare-fun lt!1251073 () Int)

(assert (=> d!1065140 (>= lt!1251073 0)))

(assert (=> d!1065140 (= lt!1251073 e!2241073)))

(declare-fun c!626583 () Bool)

(assert (=> d!1065140 (= c!626583 (and ((_ is Cons!38129) rules!3307) (= (h!43549 rules!3307) (rule!8434 (_1!22136 lt!1250630)))))))

(assert (=> d!1065140 (contains!7412 rules!3307 (rule!8434 (_1!22136 lt!1250630)))))

(assert (=> d!1065140 (= (getIndex!456 rules!3307 (rule!8434 (_1!22136 lt!1250630))) lt!1251073)))

(assert (= (and d!1065140 c!626583) b!3620691))

(assert (= (and d!1065140 (not c!626583)) b!3620692))

(assert (= (and b!3620692 c!626584) b!3620693))

(assert (= (and b!3620692 (not c!626584)) b!3620694))

(declare-fun m!4120437 () Bool)

(assert (=> b!3620693 m!4120437))

(declare-fun m!4120439 () Bool)

(assert (=> d!1065140 m!4120439))

(assert (=> b!3619866 d!1065140))

(declare-fun b!3620698 () Bool)

(declare-fun e!2241074 () Int)

(assert (=> b!3620698 (= e!2241074 (- 1))))

(declare-fun b!3620695 () Bool)

(declare-fun e!2241075 () Int)

(assert (=> b!3620695 (= e!2241075 0)))

(declare-fun b!3620697 () Bool)

(assert (=> b!3620697 (= e!2241074 (+ 1 (getIndex!456 (t!294044 rules!3307) rule!403)))))

(declare-fun b!3620696 () Bool)

(assert (=> b!3620696 (= e!2241075 e!2241074)))

(declare-fun c!626586 () Bool)

(assert (=> b!3620696 (= c!626586 (and ((_ is Cons!38129) rules!3307) (not (= (h!43549 rules!3307) rule!403))))))

(declare-fun d!1065142 () Bool)

(declare-fun lt!1251074 () Int)

(assert (=> d!1065142 (>= lt!1251074 0)))

(assert (=> d!1065142 (= lt!1251074 e!2241075)))

(declare-fun c!626585 () Bool)

(assert (=> d!1065142 (= c!626585 (and ((_ is Cons!38129) rules!3307) (= (h!43549 rules!3307) rule!403)))))

(assert (=> d!1065142 (contains!7412 rules!3307 rule!403)))

(assert (=> d!1065142 (= (getIndex!456 rules!3307 rule!403) lt!1251074)))

(assert (= (and d!1065142 c!626585) b!3620695))

(assert (= (and d!1065142 (not c!626585)) b!3620696))

(assert (= (and b!3620696 c!626586) b!3620697))

(assert (= (and b!3620696 (not c!626586)) b!3620698))

(declare-fun m!4120441 () Bool)

(assert (=> b!3620697 m!4120441))

(assert (=> d!1065142 m!4119225))

(assert (=> b!3619866 d!1065142))

(declare-fun d!1065144 () Bool)

(assert (=> d!1065144 (= (rule!8434 (_1!22136 lt!1250630)) rule!403)))

(declare-fun lt!1251077 () Unit!54822)

(declare-fun choose!21242 (List!38253 Rule!11148 Rule!11148) Unit!54822)

(assert (=> d!1065144 (= lt!1251077 (choose!21242 rules!3307 (rule!8434 (_1!22136 lt!1250630)) rule!403))))

(assert (=> d!1065144 (contains!7412 rules!3307 (rule!8434 (_1!22136 lt!1250630)))))

(assert (=> d!1065144 (= (lemmaSameIndexThenSameElement!224 rules!3307 (rule!8434 (_1!22136 lt!1250630)) rule!403) lt!1251077)))

(declare-fun bs!571189 () Bool)

(assert (= bs!571189 d!1065144))

(declare-fun m!4120443 () Bool)

(assert (=> bs!571189 m!4120443))

(assert (=> bs!571189 m!4120439))

(assert (=> b!3619866 d!1065144))

(declare-fun d!1065146 () Bool)

(assert (=> d!1065146 (not (matchR!5002 (regex!5674 (rule!8434 (_1!22136 lt!1250630))) lt!1250641))))

(declare-fun lt!1251080 () Unit!54822)

(declare-fun choose!21243 (Regex!10433 List!38251 C!21052) Unit!54822)

(assert (=> d!1065146 (= lt!1251080 (choose!21243 (regex!5674 (rule!8434 (_1!22136 lt!1250630))) lt!1250641 lt!1250635))))

(assert (=> d!1065146 (validRegex!4771 (regex!5674 (rule!8434 (_1!22136 lt!1250630))))))

(assert (=> d!1065146 (= (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!658 (regex!5674 (rule!8434 (_1!22136 lt!1250630))) lt!1250641 lt!1250635) lt!1251080)))

(declare-fun bs!571190 () Bool)

(assert (= bs!571190 d!1065146))

(assert (=> bs!571190 m!4119285))

(declare-fun m!4120445 () Bool)

(assert (=> bs!571190 m!4120445))

(assert (=> bs!571190 m!4120295))

(assert (=> bm!261901 d!1065146))

(declare-fun d!1065148 () Bool)

(assert (=> d!1065148 (not (matchR!5002 (regex!5674 (rule!8434 (_1!22136 lt!1250630))) lt!1250641))))

(declare-fun lt!1251081 () Unit!54822)

(assert (=> d!1065148 (= lt!1251081 (choose!21243 (regex!5674 (rule!8434 (_1!22136 lt!1250630))) lt!1250641 lt!1250632))))

(assert (=> d!1065148 (validRegex!4771 (regex!5674 (rule!8434 (_1!22136 lt!1250630))))))

(assert (=> d!1065148 (= (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!658 (regex!5674 (rule!8434 (_1!22136 lt!1250630))) lt!1250641 lt!1250632) lt!1251081)))

(declare-fun bs!571191 () Bool)

(assert (= bs!571191 d!1065148))

(assert (=> bs!571191 m!4119285))

(declare-fun m!4120447 () Bool)

(assert (=> bs!571191 m!4120447))

(assert (=> bs!571191 m!4120295))

(assert (=> bm!261905 d!1065148))

(declare-fun d!1065150 () Bool)

(assert (=> d!1065150 (not (contains!7411 (usedCharacters!888 (regex!5674 (rule!8434 (_1!22136 lt!1250630)))) lt!1250635))))

(declare-fun lt!1251082 () Unit!54822)

(assert (=> d!1065150 (= lt!1251082 (choose!21235 thiss!23823 rules!3307 rules!3307 (rule!8434 (_1!22136 lt!1250630)) anOtherTypeRule!33 lt!1250635))))

(assert (=> d!1065150 (rulesInvariant!4660 thiss!23823 rules!3307)))

(assert (=> d!1065150 (= (lemmaNonSepRuleNotContainsCharContainedInASepRule!380 thiss!23823 rules!3307 rules!3307 (rule!8434 (_1!22136 lt!1250630)) anOtherTypeRule!33 lt!1250635) lt!1251082)))

(declare-fun bs!571192 () Bool)

(assert (= bs!571192 d!1065150))

(assert (=> bs!571192 m!4119189))

(assert (=> bs!571192 m!4119189))

(assert (=> bs!571192 m!4120045))

(declare-fun m!4120449 () Bool)

(assert (=> bs!571192 m!4120449))

(assert (=> bs!571192 m!4119281))

(assert (=> b!3619868 d!1065150))

(declare-fun d!1065152 () Bool)

(assert (=> d!1065152 (= (get!12425 lt!1250628) (v!37739 lt!1250628))))

(assert (=> b!3619863 d!1065152))

(declare-fun b!3620709 () Bool)

(declare-fun e!2241084 () Bool)

(declare-fun e!2241083 () Bool)

(assert (=> b!3620709 (= e!2241084 e!2241083)))

(declare-fun c!626592 () Bool)

(assert (=> b!3620709 (= c!626592 ((_ is IntegerValue!17713) (value!182169 token!511)))))

(declare-fun b!3620710 () Bool)

(declare-fun res!1465209 () Bool)

(declare-fun e!2241082 () Bool)

(assert (=> b!3620710 (=> res!1465209 e!2241082)))

(assert (=> b!3620710 (= res!1465209 (not ((_ is IntegerValue!17714) (value!182169 token!511))))))

(assert (=> b!3620710 (= e!2241083 e!2241082)))

(declare-fun b!3620711 () Bool)

(declare-fun inv!17 (TokenValue!5904) Bool)

(assert (=> b!3620711 (= e!2241083 (inv!17 (value!182169 token!511)))))

(declare-fun d!1065154 () Bool)

(declare-fun c!626593 () Bool)

(assert (=> d!1065154 (= c!626593 ((_ is IntegerValue!17712) (value!182169 token!511)))))

(assert (=> d!1065154 (= (inv!21 (value!182169 token!511)) e!2241084)))

(declare-fun b!3620712 () Bool)

(declare-fun inv!15 (TokenValue!5904) Bool)

(assert (=> b!3620712 (= e!2241082 (inv!15 (value!182169 token!511)))))

(declare-fun b!3620713 () Bool)

(declare-fun inv!16 (TokenValue!5904) Bool)

(assert (=> b!3620713 (= e!2241084 (inv!16 (value!182169 token!511)))))

(assert (= (and d!1065154 c!626593) b!3620713))

(assert (= (and d!1065154 (not c!626593)) b!3620709))

(assert (= (and b!3620709 c!626592) b!3620711))

(assert (= (and b!3620709 (not c!626592)) b!3620710))

(assert (= (and b!3620710 (not res!1465209)) b!3620712))

(declare-fun m!4120451 () Bool)

(assert (=> b!3620711 m!4120451))

(declare-fun m!4120453 () Bool)

(assert (=> b!3620712 m!4120453))

(declare-fun m!4120455 () Bool)

(assert (=> b!3620713 m!4120455))

(assert (=> b!3619844 d!1065154))

(assert (=> bm!261904 d!1065130))

(declare-fun d!1065156 () Bool)

(assert (=> d!1065156 (not (matchR!5002 (regex!5674 (rule!8434 (_1!22136 lt!1250630))) lt!1250663))))

(declare-fun lt!1251083 () Unit!54822)

(assert (=> d!1065156 (= lt!1251083 (choose!21234 thiss!23823 rules!3307 rule!403 lt!1250663 lt!1250663 (rule!8434 (_1!22136 lt!1250630))))))

(assert (=> d!1065156 (isPrefix!3037 lt!1250663 lt!1250663)))

(assert (=> d!1065156 (= (lemmaMaxPrefNoSmallerRuleMatches!208 thiss!23823 rules!3307 rule!403 lt!1250663 lt!1250663 (rule!8434 (_1!22136 lt!1250630))) lt!1251083)))

(declare-fun bs!571193 () Bool)

(assert (= bs!571193 d!1065156))

(assert (=> bs!571193 m!4119333))

(declare-fun m!4120457 () Bool)

(assert (=> bs!571193 m!4120457))

(assert (=> bs!571193 m!4120423))

(assert (=> b!3619864 d!1065156))

(declare-fun d!1065158 () Bool)

(assert (=> d!1065158 (isEmpty!22531 (getSuffix!1612 lt!1250663 lt!1250663))))

(declare-fun lt!1251086 () Unit!54822)

(declare-fun choose!21244 (List!38251) Unit!54822)

(assert (=> d!1065158 (= lt!1251086 (choose!21244 lt!1250663))))

(assert (=> d!1065158 (= (lemmaGetSuffixOnListWithItSelfIsEmpty!168 lt!1250663) lt!1251086)))

(declare-fun bs!571194 () Bool)

(assert (= bs!571194 d!1065158))

(assert (=> bs!571194 m!4119331))

(assert (=> bs!571194 m!4119331))

(assert (=> bs!571194 m!4119335))

(declare-fun m!4120459 () Bool)

(assert (=> bs!571194 m!4120459))

(assert (=> b!3619864 d!1065158))

(declare-fun b!3620714 () Bool)

(declare-fun res!1465214 () Bool)

(declare-fun e!2241091 () Bool)

(assert (=> b!3620714 (=> res!1465214 e!2241091)))

(declare-fun e!2241090 () Bool)

(assert (=> b!3620714 (= res!1465214 e!2241090)))

(declare-fun res!1465216 () Bool)

(assert (=> b!3620714 (=> (not res!1465216) (not e!2241090))))

(declare-fun lt!1251087 () Bool)

(assert (=> b!3620714 (= res!1465216 lt!1251087)))

(declare-fun bm!261965 () Bool)

(declare-fun call!261970 () Bool)

(assert (=> bm!261965 (= call!261970 (isEmpty!22531 lt!1250663))))

(declare-fun b!3620715 () Bool)

(declare-fun res!1465212 () Bool)

(assert (=> b!3620715 (=> res!1465212 e!2241091)))

(assert (=> b!3620715 (= res!1465212 (not ((_ is ElementMatch!10433) (regex!5674 (rule!8434 (_1!22136 lt!1250630))))))))

(declare-fun e!2241085 () Bool)

(assert (=> b!3620715 (= e!2241085 e!2241091)))

(declare-fun b!3620716 () Bool)

(assert (=> b!3620716 (= e!2241090 (= (head!7642 lt!1250663) (c!626424 (regex!5674 (rule!8434 (_1!22136 lt!1250630))))))))

(declare-fun b!3620717 () Bool)

(declare-fun e!2241087 () Bool)

(assert (=> b!3620717 (= e!2241087 (nullable!3609 (regex!5674 (rule!8434 (_1!22136 lt!1250630)))))))

(declare-fun b!3620718 () Bool)

(declare-fun res!1465210 () Bool)

(assert (=> b!3620718 (=> (not res!1465210) (not e!2241090))))

(assert (=> b!3620718 (= res!1465210 (not call!261970))))

(declare-fun d!1065160 () Bool)

(declare-fun e!2241089 () Bool)

(assert (=> d!1065160 e!2241089))

(declare-fun c!626594 () Bool)

(assert (=> d!1065160 (= c!626594 ((_ is EmptyExpr!10433) (regex!5674 (rule!8434 (_1!22136 lt!1250630)))))))

(assert (=> d!1065160 (= lt!1251087 e!2241087)))

(declare-fun c!626596 () Bool)

(assert (=> d!1065160 (= c!626596 (isEmpty!22531 lt!1250663))))

(assert (=> d!1065160 (validRegex!4771 (regex!5674 (rule!8434 (_1!22136 lt!1250630))))))

(assert (=> d!1065160 (= (matchR!5002 (regex!5674 (rule!8434 (_1!22136 lt!1250630))) lt!1250663) lt!1251087)))

(declare-fun b!3620719 () Bool)

(declare-fun res!1465215 () Bool)

(assert (=> b!3620719 (=> (not res!1465215) (not e!2241090))))

(assert (=> b!3620719 (= res!1465215 (isEmpty!22531 (tail!5607 lt!1250663)))))

(declare-fun b!3620720 () Bool)

(assert (=> b!3620720 (= e!2241089 e!2241085)))

(declare-fun c!626595 () Bool)

(assert (=> b!3620720 (= c!626595 ((_ is EmptyLang!10433) (regex!5674 (rule!8434 (_1!22136 lt!1250630)))))))

(declare-fun b!3620721 () Bool)

(declare-fun e!2241086 () Bool)

(assert (=> b!3620721 (= e!2241086 (not (= (head!7642 lt!1250663) (c!626424 (regex!5674 (rule!8434 (_1!22136 lt!1250630)))))))))

(declare-fun b!3620722 () Bool)

(assert (=> b!3620722 (= e!2241085 (not lt!1251087))))

(declare-fun b!3620723 () Bool)

(assert (=> b!3620723 (= e!2241089 (= lt!1251087 call!261970))))

(declare-fun b!3620724 () Bool)

(declare-fun e!2241088 () Bool)

(assert (=> b!3620724 (= e!2241091 e!2241088)))

(declare-fun res!1465211 () Bool)

(assert (=> b!3620724 (=> (not res!1465211) (not e!2241088))))

(assert (=> b!3620724 (= res!1465211 (not lt!1251087))))

(declare-fun b!3620725 () Bool)

(declare-fun res!1465217 () Bool)

(assert (=> b!3620725 (=> res!1465217 e!2241086)))

(assert (=> b!3620725 (= res!1465217 (not (isEmpty!22531 (tail!5607 lt!1250663))))))

(declare-fun b!3620726 () Bool)

(assert (=> b!3620726 (= e!2241087 (matchR!5002 (derivativeStep!3158 (regex!5674 (rule!8434 (_1!22136 lt!1250630))) (head!7642 lt!1250663)) (tail!5607 lt!1250663)))))

(declare-fun b!3620727 () Bool)

(assert (=> b!3620727 (= e!2241088 e!2241086)))

(declare-fun res!1465213 () Bool)

(assert (=> b!3620727 (=> res!1465213 e!2241086)))

(assert (=> b!3620727 (= res!1465213 call!261970)))

(assert (= (and d!1065160 c!626596) b!3620717))

(assert (= (and d!1065160 (not c!626596)) b!3620726))

(assert (= (and d!1065160 c!626594) b!3620723))

(assert (= (and d!1065160 (not c!626594)) b!3620720))

(assert (= (and b!3620720 c!626595) b!3620722))

(assert (= (and b!3620720 (not c!626595)) b!3620715))

(assert (= (and b!3620715 (not res!1465212)) b!3620714))

(assert (= (and b!3620714 res!1465216) b!3620718))

(assert (= (and b!3620718 res!1465210) b!3620719))

(assert (= (and b!3620719 res!1465215) b!3620716))

(assert (= (and b!3620714 (not res!1465214)) b!3620724))

(assert (= (and b!3620724 res!1465211) b!3620727))

(assert (= (and b!3620727 (not res!1465213)) b!3620725))

(assert (= (and b!3620725 (not res!1465217)) b!3620721))

(assert (= (or b!3620723 b!3620727 b!3620718) bm!261965))

(assert (=> d!1065160 m!4120375))

(assert (=> d!1065160 m!4120295))

(assert (=> b!3620721 m!4119933))

(assert (=> b!3620725 m!4119929))

(assert (=> b!3620725 m!4119929))

(assert (=> b!3620725 m!4120379))

(assert (=> b!3620717 m!4120299))

(assert (=> b!3620716 m!4119933))

(assert (=> b!3620726 m!4119933))

(assert (=> b!3620726 m!4119933))

(declare-fun m!4120461 () Bool)

(assert (=> b!3620726 m!4120461))

(assert (=> b!3620726 m!4119929))

(assert (=> b!3620726 m!4120461))

(assert (=> b!3620726 m!4119929))

(declare-fun m!4120463 () Bool)

(assert (=> b!3620726 m!4120463))

(assert (=> b!3620719 m!4119929))

(assert (=> b!3620719 m!4119929))

(assert (=> b!3620719 m!4120379))

(assert (=> bm!261965 m!4120375))

(assert (=> b!3619864 d!1065160))

(declare-fun d!1065162 () Bool)

(assert (=> d!1065162 (= (isEmpty!22531 (getSuffix!1612 lt!1250663 lt!1250663)) ((_ is Nil!38127) (getSuffix!1612 lt!1250663 lt!1250663)))))

(assert (=> b!3619864 d!1065162))

(declare-fun d!1065164 () Bool)

(declare-fun lt!1251088 () List!38251)

(assert (=> d!1065164 (= (++!9490 lt!1250663 lt!1251088) lt!1250663)))

(declare-fun e!2241092 () List!38251)

(assert (=> d!1065164 (= lt!1251088 e!2241092)))

(declare-fun c!626597 () Bool)

(assert (=> d!1065164 (= c!626597 ((_ is Cons!38127) lt!1250663))))

(assert (=> d!1065164 (>= (size!29091 lt!1250663) (size!29091 lt!1250663))))

(assert (=> d!1065164 (= (getSuffix!1612 lt!1250663 lt!1250663) lt!1251088)))

(declare-fun b!3620728 () Bool)

(assert (=> b!3620728 (= e!2241092 (getSuffix!1612 (tail!5607 lt!1250663) (t!294042 lt!1250663)))))

(declare-fun b!3620729 () Bool)

(assert (=> b!3620729 (= e!2241092 lt!1250663)))

(assert (= (and d!1065164 c!626597) b!3620728))

(assert (= (and d!1065164 (not c!626597)) b!3620729))

(declare-fun m!4120465 () Bool)

(assert (=> d!1065164 m!4120465))

(assert (=> d!1065164 m!4119251))

(assert (=> d!1065164 m!4119251))

(assert (=> b!3620728 m!4119929))

(assert (=> b!3620728 m!4119929))

(declare-fun m!4120467 () Bool)

(assert (=> b!3620728 m!4120467))

(assert (=> b!3619864 d!1065164))

(declare-fun d!1065166 () Bool)

(assert (=> d!1065166 (contains!7411 lt!1250641 (head!7642 suffix!1395))))

(declare-fun lt!1251091 () Unit!54822)

(declare-fun choose!21245 (List!38251 List!38251 List!38251 List!38251) Unit!54822)

(assert (=> d!1065166 (= lt!1251091 (choose!21245 lt!1250663 suffix!1395 lt!1250641 lt!1250671))))

(assert (=> d!1065166 (isPrefix!3037 lt!1250641 lt!1250671)))

(assert (=> d!1065166 (= (lemmaLongerPrefixContainsHeadOfSuffixOfSmallerPref!52 lt!1250663 suffix!1395 lt!1250641 lt!1250671) lt!1251091)))

(declare-fun bs!571195 () Bool)

(assert (= bs!571195 d!1065166))

(assert (=> bs!571195 m!4119293))

(assert (=> bs!571195 m!4119293))

(declare-fun m!4120469 () Bool)

(assert (=> bs!571195 m!4120469))

(declare-fun m!4120471 () Bool)

(assert (=> bs!571195 m!4120471))

(assert (=> bs!571195 m!4119363))

(assert (=> b!3619845 d!1065166))

(declare-fun d!1065168 () Bool)

(declare-fun lt!1251092 () Bool)

(assert (=> d!1065168 (= lt!1251092 (select (content!5456 lt!1250641) lt!1250635))))

(declare-fun e!2241094 () Bool)

(assert (=> d!1065168 (= lt!1251092 e!2241094)))

(declare-fun res!1465219 () Bool)

(assert (=> d!1065168 (=> (not res!1465219) (not e!2241094))))

(assert (=> d!1065168 (= res!1465219 ((_ is Cons!38127) lt!1250641))))

(assert (=> d!1065168 (= (contains!7411 lt!1250641 lt!1250635) lt!1251092)))

(declare-fun b!3620730 () Bool)

(declare-fun e!2241093 () Bool)

(assert (=> b!3620730 (= e!2241094 e!2241093)))

(declare-fun res!1465218 () Bool)

(assert (=> b!3620730 (=> res!1465218 e!2241093)))

(assert (=> b!3620730 (= res!1465218 (= (h!43547 lt!1250641) lt!1250635))))

(declare-fun b!3620731 () Bool)

(assert (=> b!3620731 (= e!2241093 (contains!7411 (t!294042 lt!1250641) lt!1250635))))

(assert (= (and d!1065168 res!1465219) b!3620730))

(assert (= (and b!3620730 (not res!1465218)) b!3620731))

(assert (=> d!1065168 m!4119943))

(declare-fun m!4120473 () Bool)

(assert (=> d!1065168 m!4120473))

(declare-fun m!4120475 () Bool)

(assert (=> b!3620731 m!4120475))

(assert (=> b!3619845 d!1065168))

(declare-fun d!1065170 () Bool)

(assert (=> d!1065170 (not (matchR!5002 (regex!5674 rule!403) lt!1250663))))

(declare-fun lt!1251093 () Unit!54822)

(assert (=> d!1065170 (= lt!1251093 (choose!21243 (regex!5674 rule!403) lt!1250663 lt!1250632))))

(assert (=> d!1065170 (validRegex!4771 (regex!5674 rule!403))))

(assert (=> d!1065170 (= (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!658 (regex!5674 rule!403) lt!1250663 lt!1250632) lt!1251093)))

(declare-fun bs!571196 () Bool)

(assert (= bs!571196 d!1065170))

(assert (=> bs!571196 m!4119211))

(declare-fun m!4120477 () Bool)

(assert (=> bs!571196 m!4120477))

(assert (=> bs!571196 m!4120377))

(assert (=> b!3619884 d!1065170))

(declare-fun d!1065172 () Bool)

(assert (=> d!1065172 (not (matchR!5002 (regex!5674 rule!403) lt!1250663))))

(declare-fun lt!1251096 () Unit!54822)

(declare-fun choose!21246 (LexerInterface!5263 List!38253 Rule!11148 List!38251 List!38251 List!38251 Rule!11148) Unit!54822)

(assert (=> d!1065172 (= lt!1251096 (choose!21246 thiss!23823 rules!3307 (rule!8434 (_1!22136 lt!1250630)) lt!1250641 lt!1250671 lt!1250663 rule!403))))

(assert (=> d!1065172 (isPrefix!3037 lt!1250641 lt!1250671)))

(assert (=> d!1065172 (= (lemmaMaxPrefixOutputsMaxPrefix!322 thiss!23823 rules!3307 (rule!8434 (_1!22136 lt!1250630)) lt!1250641 lt!1250671 lt!1250663 rule!403) lt!1251096)))

(declare-fun bs!571197 () Bool)

(assert (= bs!571197 d!1065172))

(assert (=> bs!571197 m!4119211))

(declare-fun m!4120479 () Bool)

(assert (=> bs!571197 m!4120479))

(assert (=> bs!571197 m!4119363))

(assert (=> b!3619846 d!1065172))

(declare-fun e!2241097 () Bool)

(assert (=> b!3619842 (= tp!1105788 e!2241097)))

(declare-fun b!3620743 () Bool)

(declare-fun tp!1105868 () Bool)

(declare-fun tp!1105865 () Bool)

(assert (=> b!3620743 (= e!2241097 (and tp!1105868 tp!1105865))))

(declare-fun b!3620744 () Bool)

(declare-fun tp!1105866 () Bool)

(assert (=> b!3620744 (= e!2241097 tp!1105866)))

(declare-fun b!3620742 () Bool)

(assert (=> b!3620742 (= e!2241097 tp_is_empty!17949)))

(declare-fun b!3620745 () Bool)

(declare-fun tp!1105867 () Bool)

(declare-fun tp!1105869 () Bool)

(assert (=> b!3620745 (= e!2241097 (and tp!1105867 tp!1105869))))

(assert (= (and b!3619842 ((_ is ElementMatch!10433) (regex!5674 anOtherTypeRule!33))) b!3620742))

(assert (= (and b!3619842 ((_ is Concat!16338) (regex!5674 anOtherTypeRule!33))) b!3620743))

(assert (= (and b!3619842 ((_ is Star!10433) (regex!5674 anOtherTypeRule!33))) b!3620744))

(assert (= (and b!3619842 ((_ is Union!10433) (regex!5674 anOtherTypeRule!33))) b!3620745))

(declare-fun b!3620750 () Bool)

(declare-fun e!2241100 () Bool)

(declare-fun tp!1105872 () Bool)

(assert (=> b!3620750 (= e!2241100 (and tp_is_empty!17949 tp!1105872))))

(assert (=> b!3619873 (= tp!1105793 e!2241100)))

(assert (= (and b!3619873 ((_ is Cons!38127) (t!294042 suffix!1395))) b!3620750))

(declare-fun e!2241101 () Bool)

(assert (=> b!3619883 (= tp!1105791 e!2241101)))

(declare-fun b!3620752 () Bool)

(declare-fun tp!1105876 () Bool)

(declare-fun tp!1105873 () Bool)

(assert (=> b!3620752 (= e!2241101 (and tp!1105876 tp!1105873))))

(declare-fun b!3620753 () Bool)

(declare-fun tp!1105874 () Bool)

(assert (=> b!3620753 (= e!2241101 tp!1105874)))

(declare-fun b!3620751 () Bool)

(assert (=> b!3620751 (= e!2241101 tp_is_empty!17949)))

(declare-fun b!3620754 () Bool)

(declare-fun tp!1105875 () Bool)

(declare-fun tp!1105877 () Bool)

(assert (=> b!3620754 (= e!2241101 (and tp!1105875 tp!1105877))))

(assert (= (and b!3619883 ((_ is ElementMatch!10433) (regex!5674 rule!403))) b!3620751))

(assert (= (and b!3619883 ((_ is Concat!16338) (regex!5674 rule!403))) b!3620752))

(assert (= (and b!3619883 ((_ is Star!10433) (regex!5674 rule!403))) b!3620753))

(assert (= (and b!3619883 ((_ is Union!10433) (regex!5674 rule!403))) b!3620754))

(declare-fun e!2241102 () Bool)

(assert (=> b!3619848 (= tp!1105787 e!2241102)))

(declare-fun b!3620756 () Bool)

(declare-fun tp!1105881 () Bool)

(declare-fun tp!1105878 () Bool)

(assert (=> b!3620756 (= e!2241102 (and tp!1105881 tp!1105878))))

(declare-fun b!3620757 () Bool)

(declare-fun tp!1105879 () Bool)

(assert (=> b!3620757 (= e!2241102 tp!1105879)))

(declare-fun b!3620755 () Bool)

(assert (=> b!3620755 (= e!2241102 tp_is_empty!17949)))

(declare-fun b!3620758 () Bool)

(declare-fun tp!1105880 () Bool)

(declare-fun tp!1105882 () Bool)

(assert (=> b!3620758 (= e!2241102 (and tp!1105880 tp!1105882))))

(assert (= (and b!3619848 ((_ is ElementMatch!10433) (regex!5674 (h!43549 rules!3307)))) b!3620755))

(assert (= (and b!3619848 ((_ is Concat!16338) (regex!5674 (h!43549 rules!3307)))) b!3620756))

(assert (= (and b!3619848 ((_ is Star!10433) (regex!5674 (h!43549 rules!3307)))) b!3620757))

(assert (= (and b!3619848 ((_ is Union!10433) (regex!5674 (h!43549 rules!3307)))) b!3620758))

(declare-fun e!2241103 () Bool)

(assert (=> b!3619859 (= tp!1105789 e!2241103)))

(declare-fun b!3620760 () Bool)

(declare-fun tp!1105886 () Bool)

(declare-fun tp!1105883 () Bool)

(assert (=> b!3620760 (= e!2241103 (and tp!1105886 tp!1105883))))

(declare-fun b!3620761 () Bool)

(declare-fun tp!1105884 () Bool)

(assert (=> b!3620761 (= e!2241103 tp!1105884)))

(declare-fun b!3620759 () Bool)

(assert (=> b!3620759 (= e!2241103 tp_is_empty!17949)))

(declare-fun b!3620762 () Bool)

(declare-fun tp!1105885 () Bool)

(declare-fun tp!1105887 () Bool)

(assert (=> b!3620762 (= e!2241103 (and tp!1105885 tp!1105887))))

(assert (= (and b!3619859 ((_ is ElementMatch!10433) (regex!5674 (rule!8434 token!511)))) b!3620759))

(assert (= (and b!3619859 ((_ is Concat!16338) (regex!5674 (rule!8434 token!511)))) b!3620760))

(assert (= (and b!3619859 ((_ is Star!10433) (regex!5674 (rule!8434 token!511)))) b!3620761))

(assert (= (and b!3619859 ((_ is Union!10433) (regex!5674 (rule!8434 token!511)))) b!3620762))

(declare-fun b!3620763 () Bool)

(declare-fun e!2241104 () Bool)

(declare-fun tp!1105888 () Bool)

(assert (=> b!3620763 (= e!2241104 (and tp_is_empty!17949 tp!1105888))))

(assert (=> b!3619844 (= tp!1105797 e!2241104)))

(assert (= (and b!3619844 ((_ is Cons!38127) (originalCharacters!6388 token!511))) b!3620763))

(declare-fun b!3620774 () Bool)

(declare-fun b_free!94373 () Bool)

(declare-fun b_next!95077 () Bool)

(assert (=> b!3620774 (= b_free!94373 (not b_next!95077))))

(declare-fun t!294172 () Bool)

(declare-fun tb!207683 () Bool)

(assert (=> (and b!3620774 (= (toValue!7958 (transformation!5674 (h!43549 (t!294044 rules!3307)))) (toValue!7958 (transformation!5674 (rule!8434 (_1!22136 lt!1250630))))) t!294172) tb!207683))

(declare-fun result!253064 () Bool)

(assert (= result!253064 result!252972))

(assert (=> d!1065008 t!294172))

(declare-fun tb!207685 () Bool)

(declare-fun t!294174 () Bool)

(assert (=> (and b!3620774 (= (toValue!7958 (transformation!5674 (h!43549 (t!294044 rules!3307)))) (toValue!7958 (transformation!5674 (rule!8434 (_1!22136 lt!1250630))))) t!294174) tb!207685))

(declare-fun result!253066 () Bool)

(assert (= result!253066 result!253022))

(assert (=> d!1065056 t!294174))

(assert (=> d!1065020 t!294172))

(assert (=> d!1065000 t!294172))

(declare-fun t!294176 () Bool)

(declare-fun tb!207687 () Bool)

(assert (=> (and b!3620774 (= (toValue!7958 (transformation!5674 (h!43549 (t!294044 rules!3307)))) (toValue!7958 (transformation!5674 (rule!8434 (_1!22136 lt!1250630))))) t!294176) tb!207687))

(declare-fun result!253068 () Bool)

(assert (= result!253068 result!252990))

(assert (=> d!1065000 t!294176))

(declare-fun tb!207689 () Bool)

(declare-fun t!294178 () Bool)

(assert (=> (and b!3620774 (= (toValue!7958 (transformation!5674 (h!43549 (t!294044 rules!3307)))) (toValue!7958 (transformation!5674 rule!403))) t!294178) tb!207689))

(declare-fun result!253070 () Bool)

(assert (= result!253070 result!253050))

(assert (=> d!1065114 t!294178))

(declare-fun b_and!264743 () Bool)

(declare-fun tp!1105899 () Bool)

(assert (=> b!3620774 (= tp!1105899 (and (=> t!294176 result!253068) (=> t!294174 result!253066) (=> t!294172 result!253064) (=> t!294178 result!253070) b_and!264743))))

(declare-fun b_free!94375 () Bool)

(declare-fun b_next!95079 () Bool)

(assert (=> b!3620774 (= b_free!94375 (not b_next!95079))))

(declare-fun tb!207691 () Bool)

(declare-fun t!294180 () Bool)

(assert (=> (and b!3620774 (= (toChars!7817 (transformation!5674 (h!43549 (t!294044 rules!3307)))) (toChars!7817 (transformation!5674 (rule!8434 (_1!22136 lt!1250630))))) t!294180) tb!207691))

(declare-fun result!253072 () Bool)

(assert (= result!253072 result!252918))

(assert (=> d!1064840 t!294180))

(declare-fun t!294182 () Bool)

(declare-fun tb!207693 () Bool)

(assert (=> (and b!3620774 (= (toChars!7817 (transformation!5674 (h!43549 (t!294044 rules!3307)))) (toChars!7817 (transformation!5674 (rule!8434 (_1!22136 lt!1250630))))) t!294182) tb!207693))

(declare-fun result!253074 () Bool)

(assert (= result!253074 result!252998))

(assert (=> d!1065008 t!294182))

(declare-fun tb!207695 () Bool)

(declare-fun t!294184 () Bool)

(assert (=> (and b!3620774 (= (toChars!7817 (transformation!5674 (h!43549 (t!294044 rules!3307)))) (toChars!7817 (transformation!5674 (rule!8434 token!511)))) t!294184) tb!207695))

(declare-fun result!253076 () Bool)

(assert (= result!253076 result!253014))

(assert (=> b!3620475 t!294184))

(assert (=> d!1065138 t!294184))

(declare-fun b_and!264745 () Bool)

(declare-fun tp!1105897 () Bool)

(assert (=> b!3620774 (= tp!1105897 (and (=> t!294180 result!253072) (=> t!294182 result!253074) (=> t!294184 result!253076) b_and!264745))))

(declare-fun e!2241115 () Bool)

(assert (=> b!3620774 (= e!2241115 (and tp!1105899 tp!1105897))))

(declare-fun b!3620773 () Bool)

(declare-fun e!2241116 () Bool)

(declare-fun tp!1105900 () Bool)

(assert (=> b!3620773 (= e!2241116 (and tp!1105900 (inv!51517 (tag!6390 (h!43549 (t!294044 rules!3307)))) (inv!51520 (transformation!5674 (h!43549 (t!294044 rules!3307)))) e!2241115))))

(declare-fun b!3620772 () Bool)

(declare-fun e!2241114 () Bool)

(declare-fun tp!1105898 () Bool)

(assert (=> b!3620772 (= e!2241114 (and e!2241116 tp!1105898))))

(assert (=> b!3619865 (= tp!1105794 e!2241114)))

(assert (= b!3620773 b!3620774))

(assert (= b!3620772 b!3620773))

(assert (= (and b!3619865 ((_ is Cons!38129) (t!294044 rules!3307))) b!3620772))

(declare-fun m!4120481 () Bool)

(assert (=> b!3620773 m!4120481))

(declare-fun m!4120483 () Bool)

(assert (=> b!3620773 m!4120483))

(declare-fun b_lambda!107093 () Bool)

(assert (= b_lambda!107091 (or (and b!3620774 b_free!94375 (= (toChars!7817 (transformation!5674 (h!43549 (t!294044 rules!3307)))) (toChars!7817 (transformation!5674 (rule!8434 token!511))))) (and b!3619851 b_free!94359) (and b!3619861 b_free!94355 (= (toChars!7817 (transformation!5674 (h!43549 rules!3307))) (toChars!7817 (transformation!5674 (rule!8434 token!511))))) (and b!3619893 b_free!94363 (= (toChars!7817 (transformation!5674 anOtherTypeRule!33)) (toChars!7817 (transformation!5674 (rule!8434 token!511))))) (and b!3619862 b_free!94367 (= (toChars!7817 (transformation!5674 rule!403)) (toChars!7817 (transformation!5674 (rule!8434 token!511))))) b_lambda!107093)))

(declare-fun b_lambda!107095 () Bool)

(assert (= b_lambda!107079 (or (and b!3620774 b_free!94375 (= (toChars!7817 (transformation!5674 (h!43549 (t!294044 rules!3307)))) (toChars!7817 (transformation!5674 (rule!8434 token!511))))) (and b!3619851 b_free!94359) (and b!3619861 b_free!94355 (= (toChars!7817 (transformation!5674 (h!43549 rules!3307))) (toChars!7817 (transformation!5674 (rule!8434 token!511))))) (and b!3619893 b_free!94363 (= (toChars!7817 (transformation!5674 anOtherTypeRule!33)) (toChars!7817 (transformation!5674 (rule!8434 token!511))))) (and b!3619862 b_free!94367 (= (toChars!7817 (transformation!5674 rule!403)) (toChars!7817 (transformation!5674 (rule!8434 token!511))))) b_lambda!107095)))

(declare-fun b_lambda!107097 () Bool)

(assert (= b_lambda!107089 (or (and b!3619861 b_free!94353 (= (toValue!7958 (transformation!5674 (h!43549 rules!3307))) (toValue!7958 (transformation!5674 rule!403)))) (and b!3619862 b_free!94365) (and b!3619851 b_free!94357 (= (toValue!7958 (transformation!5674 (rule!8434 token!511))) (toValue!7958 (transformation!5674 rule!403)))) (and b!3620774 b_free!94373 (= (toValue!7958 (transformation!5674 (h!43549 (t!294044 rules!3307)))) (toValue!7958 (transformation!5674 rule!403)))) (and b!3619893 b_free!94361 (= (toValue!7958 (transformation!5674 anOtherTypeRule!33)) (toValue!7958 (transformation!5674 rule!403)))) b_lambda!107097)))

(check-sat (not b!3620682) (not b_lambda!107065) (not b_lambda!107095) (not bm!261965) (not b!3620377) (not b!3620711) (not d!1065086) (not d!1065116) (not b!3620621) (not b!3620619) (not d!1064988) (not d!1064980) (not d!1064960) (not b!3620365) (not d!1065098) (not b!3620604) (not b_next!95067) (not tb!207653) (not bm!261928) (not b!3620678) (not b!3620760) (not d!1064808) b_and!264741 (not b!3620637) (not d!1065008) (not b_next!95057) (not b!3620407) (not d!1065102) (not b!3620762) (not b!3620339) (not b!3620605) (not b!3620634) (not b_lambda!107073) (not b!3619993) (not d!1065050) (not b!3620062) (not d!1065036) (not b!3620754) (not bm!261945) (not d!1065026) (not b!3620477) (not b!3620693) (not bm!261958) (not b!3620606) (not b!3620744) (not b!3620360) (not d!1065104) (not d!1065124) (not d!1065136) (not b!3620635) (not b!3620763) (not b_lambda!107097) (not d!1065164) (not b_next!95079) (not b_next!95059) (not b!3620364) (not b_lambda!107093) (not b!3620679) (not b_next!95063) (not b!3620647) (not d!1065132) (not b!3620497) (not b!3620636) (not d!1064986) (not b!3620677) (not d!1064970) (not b_next!95065) (not d!1065144) (not b!3620611) (not b!3620719) (not d!1065128) tp_is_empty!17949 (not b!3620651) (not b!3620530) (not b_lambda!107081) (not b!3620697) (not b!3620303) b_and!264731 (not b!3620345) (not d!1065028) (not b!3620757) (not d!1064944) (not b!3620384) (not b!3620055) (not d!1064998) (not bm!261954) (not tb!207645) (not d!1065138) (not d!1064994) (not bm!261946) (not b!3620475) (not d!1064990) (not b_lambda!107077) (not d!1064984) (not d!1065092) (not b!3620357) (not d!1065168) (not b!3620773) (not b!3620346) (not bm!261960) (not b!3620335) (not d!1065042) (not b!3620361) (not b!3620276) (not b_lambda!107069) (not b!3620758) (not tb!207629) (not b!3620752) (not bm!261961) (not b!3620337) (not b!3620616) (not b!3620375) b_and!264727 (not bm!261953) (not b!3620643) (not d!1064966) (not b!3620507) (not d!1065094) (not d!1064838) (not b!3620646) (not d!1065000) (not tb!207675) (not d!1065016) (not d!1064844) (not b!3620362) (not b!3620726) (not b!3620315) (not b!3620314) (not d!1065112) (not d!1065156) (not tb!207621) b_and!264743 (not b!3620712) (not b!3620680) (not b!3620313) (not b!3620750) (not b!3620731) (not d!1065148) (not b!3620639) (not b!3620772) (not b!3620068) (not b!3620761) (not b_next!95061) (not b!3620656) (not b!3620609) (not d!1065170) (not b!3620721) (not b!3620608) (not d!1065072) (not b!3620617) (not b!3620053) (not d!1065142) (not b!3620675) (not b!3620488) (not b_lambda!107061) (not d!1065166) (not d!1065012) (not b!3620681) (not b!3620630) (not b!3620376) (not d!1065122) (not d!1065040) b_and!264745 (not b!3620061) (not d!1065158) (not b!3620641) b_and!264735 (not b_lambda!107047) (not b!3620640) (not d!1065150) (not d!1065118) (not b!3620486) (not b!3620057) (not b!3620613) (not b!3620717) (not b!3620625) (not b!3620336) (not d!1065070) (not d!1064974) (not b!3620398) (not b!3620401) (not b!3620662) (not d!1065062) (not d!1064996) (not b!3620344) (not b!3620628) (not d!1065134) (not d!1065146) b_and!264729 (not d!1064964) (not b!3620728) (not b!3620476) (not b!3620655) (not b!3620631) (not b_next!95069) (not bm!261959) (not d!1065172) (not d!1064812) (not b_next!95077) (not d!1065052) (not b!3620356) (not b!3620257) (not b!3620456) (not d!1065018) (not b!3620258) (not d!1065160) (not b!3620716) (not d!1065126) (not b!3620753) (not bm!261964) (not b!3620612) (not b!3620676) (not b!3620642) (not b!3620665) (not bm!261963) (not d!1065140) (not b!3620725) (not b!3620342) (not d!1064840) (not b!3620743) (not d!1065100) (not b!3620713) (not bm!261948) (not b!3620340) (not d!1064940) (not d!1065120) (not b!3620410) b_and!264739 (not b!3620610) (not d!1065106) (not b!3620408) (not d!1064982) (not bm!261956) (not b!3620649) (not tb!207557) (not b!3620626) b_and!264737 (not b!3620756) (not b!3620399) (not b!3620383) (not d!1064972) (not b!3620341) (not tb!207605) (not b!3620745) (not b!3620436) (not b!3620338) (not b!3620052) (not bm!261951) (not b_next!95071) b_and!264733)
(check-sat (not b_next!95067) (not b_next!95063) (not b_next!95065) b_and!264731 b_and!264727 b_and!264743 (not b_next!95061) b_and!264745 b_and!264735 b_and!264729 b_and!264739 b_and!264737 b_and!264741 (not b_next!95057) (not b_next!95079) (not b_next!95059) (not b_next!95077) (not b_next!95069) (not b_next!95071) b_and!264733)
