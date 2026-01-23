; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!56704 () Bool)

(assert start!56704)

(declare-fun b!598700 () Bool)

(declare-fun b_free!17021 () Bool)

(declare-fun b_next!17037 () Bool)

(assert (=> b!598700 (= b_free!17021 (not b_next!17037))))

(declare-fun tp!186655 () Bool)

(declare-fun b_and!59123 () Bool)

(assert (=> b!598700 (= tp!186655 b_and!59123)))

(declare-fun b_free!17023 () Bool)

(declare-fun b_next!17039 () Bool)

(assert (=> b!598700 (= b_free!17023 (not b_next!17039))))

(declare-fun tp!186651 () Bool)

(declare-fun b_and!59125 () Bool)

(assert (=> b!598700 (= tp!186651 b_and!59125)))

(declare-fun b!598713 () Bool)

(declare-fun b_free!17025 () Bool)

(declare-fun b_next!17041 () Bool)

(assert (=> b!598713 (= b_free!17025 (not b_next!17041))))

(declare-fun tp!186652 () Bool)

(declare-fun b_and!59127 () Bool)

(assert (=> b!598713 (= tp!186652 b_and!59127)))

(declare-fun b_free!17027 () Bool)

(declare-fun b_next!17043 () Bool)

(assert (=> b!598713 (= b_free!17027 (not b_next!17043))))

(declare-fun tp!186650 () Bool)

(declare-fun b_and!59129 () Bool)

(assert (=> b!598713 (= tp!186650 b_and!59129)))

(declare-fun b!598701 () Bool)

(declare-fun e!362668 () Bool)

(declare-fun tp_is_empty!3401 () Bool)

(declare-fun tp!186654 () Bool)

(assert (=> b!598701 (= e!362668 (and tp_is_empty!3401 tp!186654))))

(declare-fun b!598702 () Bool)

(declare-fun e!362681 () Bool)

(declare-fun tp!186656 () Bool)

(assert (=> b!598702 (= e!362681 (and tp_is_empty!3401 tp!186656))))

(declare-fun b!598703 () Bool)

(declare-fun e!362667 () Bool)

(declare-datatypes ((C!3968 0))(
  ( (C!3969 (val!2210 Int)) )
))
(declare-datatypes ((List!5996 0))(
  ( (Nil!5986) (Cons!5986 (h!11387 C!3968) (t!79673 List!5996)) )
))
(declare-fun lt!255021 () List!5996)

(declare-fun isEmpty!4321 (List!5996) Bool)

(assert (=> b!598703 (= e!362667 (not (isEmpty!4321 lt!255021)))))

(declare-fun b!598704 () Bool)

(declare-fun res!258820 () Bool)

(declare-fun e!362665 () Bool)

(assert (=> b!598704 (=> (not res!258820) (not e!362665))))

(declare-datatypes ((Regex!1523 0))(
  ( (ElementMatch!1523 (c!111201 C!3968)) (Concat!2736 (regOne!3558 Regex!1523) (regTwo!3558 Regex!1523)) (EmptyExpr!1523) (Star!1523 (reg!1852 Regex!1523)) (EmptyLang!1523) (Union!1523 (regOne!3559 Regex!1523) (regTwo!3559 Regex!1523)) )
))
(declare-datatypes ((String!7808 0))(
  ( (String!7809 (value!38727 String)) )
))
(declare-datatypes ((List!5997 0))(
  ( (Nil!5987) (Cons!5987 (h!11388 (_ BitVec 16)) (t!79674 List!5997)) )
))
(declare-datatypes ((TokenValue!1213 0))(
  ( (FloatLiteralValue!2426 (text!8936 List!5997)) (TokenValueExt!1212 (__x!4324 Int)) (Broken!6065 (value!38728 List!5997)) (Object!1222) (End!1213) (Def!1213) (Underscore!1213) (Match!1213) (Else!1213) (Error!1213) (Case!1213) (If!1213) (Extends!1213) (Abstract!1213) (Class!1213) (Val!1213) (DelimiterValue!2426 (del!1273 List!5997)) (KeywordValue!1219 (value!38729 List!5997)) (CommentValue!2426 (value!38730 List!5997)) (WhitespaceValue!2426 (value!38731 List!5997)) (IndentationValue!1213 (value!38732 List!5997)) (String!7810) (Int32!1213) (Broken!6066 (value!38733 List!5997)) (Boolean!1214) (Unit!10893) (OperatorValue!1216 (op!1273 List!5997)) (IdentifierValue!2426 (value!38734 List!5997)) (IdentifierValue!2427 (value!38735 List!5997)) (WhitespaceValue!2427 (value!38736 List!5997)) (True!2426) (False!2426) (Broken!6067 (value!38737 List!5997)) (Broken!6068 (value!38738 List!5997)) (True!2427) (RightBrace!1213) (RightBracket!1213) (Colon!1213) (Null!1213) (Comma!1213) (LeftBracket!1213) (False!2427) (LeftBrace!1213) (ImaginaryLiteralValue!1213 (text!8937 List!5997)) (StringLiteralValue!3639 (value!38739 List!5997)) (EOFValue!1213 (value!38740 List!5997)) (IdentValue!1213 (value!38741 List!5997)) (DelimiterValue!2427 (value!38742 List!5997)) (DedentValue!1213 (value!38743 List!5997)) (NewLineValue!1213 (value!38744 List!5997)) (IntegerValue!3639 (value!38745 (_ BitVec 32)) (text!8938 List!5997)) (IntegerValue!3640 (value!38746 Int) (text!8939 List!5997)) (Times!1213) (Or!1213) (Equal!1213) (Minus!1213) (Broken!6069 (value!38747 List!5997)) (And!1213) (Div!1213) (LessEqual!1213) (Mod!1213) (Concat!2737) (Not!1213) (Plus!1213) (SpaceValue!1213 (value!38748 List!5997)) (IntegerValue!3641 (value!38749 Int) (text!8940 List!5997)) (StringLiteralValue!3640 (text!8941 List!5997)) (FloatLiteralValue!2427 (text!8942 List!5997)) (BytesLiteralValue!1213 (value!38750 List!5997)) (CommentValue!2427 (value!38751 List!5997)) (StringLiteralValue!3641 (value!38752 List!5997)) (ErrorTokenValue!1213 (msg!1274 List!5997)) )
))
(declare-datatypes ((IArray!3813 0))(
  ( (IArray!3814 (innerList!1964 List!5996)) )
))
(declare-datatypes ((Conc!1906 0))(
  ( (Node!1906 (left!4813 Conc!1906) (right!5143 Conc!1906) (csize!4042 Int) (cheight!2117 Int)) (Leaf!3008 (xs!4543 IArray!3813) (csize!4043 Int)) (Empty!1906) )
))
(declare-datatypes ((BalanceConc!3820 0))(
  ( (BalanceConc!3821 (c!111202 Conc!1906)) )
))
(declare-datatypes ((TokenValueInjection!2194 0))(
  ( (TokenValueInjection!2195 (toValue!2080 Int) (toChars!1939 Int)) )
))
(declare-datatypes ((Rule!2178 0))(
  ( (Rule!2179 (regex!1189 Regex!1523) (tag!1451 String!7808) (isSeparator!1189 Bool) (transformation!1189 TokenValueInjection!2194)) )
))
(declare-datatypes ((List!5998 0))(
  ( (Nil!5988) (Cons!5988 (h!11389 Rule!2178) (t!79675 List!5998)) )
))
(declare-fun rules!3103 () List!5998)

(declare-fun isEmpty!4322 (List!5998) Bool)

(assert (=> b!598704 (= res!258820 (not (isEmpty!4322 rules!3103)))))

(declare-fun b!598705 () Bool)

(declare-fun res!258814 () Bool)

(assert (=> b!598705 (=> (not res!258814) (not e!362665))))

(declare-fun input!2705 () List!5996)

(assert (=> b!598705 (= res!258814 (not (isEmpty!4321 input!2705)))))

(declare-fun b!598706 () Bool)

(declare-fun e!362662 () Bool)

(declare-fun e!362672 () Bool)

(assert (=> b!598706 (= e!362662 (not e!362672))))

(declare-fun res!258822 () Bool)

(assert (=> b!598706 (=> res!258822 e!362672)))

(declare-fun lt!255032 () List!5996)

(declare-fun isPrefix!817 (List!5996 List!5996) Bool)

(assert (=> b!598706 (= res!258822 (not (isPrefix!817 input!2705 lt!255032)))))

(declare-fun lt!255024 () List!5996)

(assert (=> b!598706 (isPrefix!817 lt!255024 lt!255032)))

(declare-datatypes ((Unit!10894 0))(
  ( (Unit!10895) )
))
(declare-fun lt!255029 () Unit!10894)

(declare-fun suffix!1342 () List!5996)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!662 (List!5996 List!5996) Unit!10894)

(assert (=> b!598706 (= lt!255029 (lemmaConcatTwoListThenFirstIsPrefix!662 lt!255024 suffix!1342))))

(declare-fun lt!255016 () List!5996)

(assert (=> b!598706 (isPrefix!817 input!2705 lt!255016)))

(declare-fun lt!255038 () Unit!10894)

(assert (=> b!598706 (= lt!255038 (lemmaConcatTwoListThenFirstIsPrefix!662 input!2705 suffix!1342))))

(declare-fun e!362666 () Bool)

(assert (=> b!598706 e!362666))

(declare-fun res!258825 () Bool)

(assert (=> b!598706 (=> (not res!258825) (not e!362666))))

(declare-datatypes ((Token!2114 0))(
  ( (Token!2115 (value!38753 TokenValue!1213) (rule!1959 Rule!2178) (size!4712 Int) (originalCharacters!1228 List!5996)) )
))
(declare-datatypes ((tuple2!6872 0))(
  ( (tuple2!6873 (_1!3700 Token!2114) (_2!3700 List!5996)) )
))
(declare-datatypes ((Option!1540 0))(
  ( (None!1539) (Some!1539 (v!16430 tuple2!6872)) )
))
(declare-fun lt!255028 () Option!1540)

(declare-fun lt!255031 () TokenValue!1213)

(assert (=> b!598706 (= res!258825 (= (value!38753 (_1!3700 (v!16430 lt!255028))) lt!255031))))

(declare-fun apply!1442 (TokenValueInjection!2194 BalanceConc!3820) TokenValue!1213)

(declare-fun seqFromList!1365 (List!5996) BalanceConc!3820)

(assert (=> b!598706 (= lt!255031 (apply!1442 (transformation!1189 (rule!1959 (_1!3700 (v!16430 lt!255028)))) (seqFromList!1365 lt!255021)))))

(declare-fun lt!255022 () Unit!10894)

(declare-fun token!491 () Token!2114)

(declare-fun lemmaInv!297 (TokenValueInjection!2194) Unit!10894)

(assert (=> b!598706 (= lt!255022 (lemmaInv!297 (transformation!1189 (rule!1959 token!491))))))

(declare-fun lt!255023 () Unit!10894)

(assert (=> b!598706 (= lt!255023 (lemmaInv!297 (transformation!1189 (rule!1959 (_1!3700 (v!16430 lt!255028))))))))

(declare-datatypes ((LexerInterface!1075 0))(
  ( (LexerInterfaceExt!1072 (__x!4325 Int)) (Lexer!1073) )
))
(declare-fun thiss!22590 () LexerInterface!1075)

(declare-fun ruleValid!387 (LexerInterface!1075 Rule!2178) Bool)

(assert (=> b!598706 (ruleValid!387 thiss!22590 (rule!1959 token!491))))

(declare-fun lt!255035 () Unit!10894)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!234 (LexerInterface!1075 Rule!2178 List!5998) Unit!10894)

(assert (=> b!598706 (= lt!255035 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!234 thiss!22590 (rule!1959 token!491) rules!3103))))

(assert (=> b!598706 (ruleValid!387 thiss!22590 (rule!1959 (_1!3700 (v!16430 lt!255028))))))

(declare-fun lt!255026 () Unit!10894)

(assert (=> b!598706 (= lt!255026 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!234 thiss!22590 (rule!1959 (_1!3700 (v!16430 lt!255028))) rules!3103))))

(assert (=> b!598706 (isPrefix!817 input!2705 input!2705)))

(declare-fun lt!255042 () Unit!10894)

(declare-fun lemmaIsPrefixRefl!553 (List!5996 List!5996) Unit!10894)

(assert (=> b!598706 (= lt!255042 (lemmaIsPrefixRefl!553 input!2705 input!2705))))

(declare-fun lt!255041 () List!5996)

(assert (=> b!598706 (= (_2!3700 (v!16430 lt!255028)) lt!255041)))

(declare-fun lt!255027 () Unit!10894)

(declare-fun lemmaSamePrefixThenSameSuffix!530 (List!5996 List!5996 List!5996 List!5996 List!5996) Unit!10894)

(assert (=> b!598706 (= lt!255027 (lemmaSamePrefixThenSameSuffix!530 lt!255021 (_2!3700 (v!16430 lt!255028)) lt!255021 lt!255041 input!2705))))

(declare-fun getSuffix!334 (List!5996 List!5996) List!5996)

(assert (=> b!598706 (= lt!255041 (getSuffix!334 input!2705 lt!255021))))

(declare-fun lt!255039 () List!5996)

(assert (=> b!598706 (isPrefix!817 lt!255021 lt!255039)))

(declare-fun ++!1677 (List!5996 List!5996) List!5996)

(assert (=> b!598706 (= lt!255039 (++!1677 lt!255021 (_2!3700 (v!16430 lt!255028))))))

(declare-fun lt!255017 () Unit!10894)

(assert (=> b!598706 (= lt!255017 (lemmaConcatTwoListThenFirstIsPrefix!662 lt!255021 (_2!3700 (v!16430 lt!255028))))))

(declare-fun lt!255015 () Unit!10894)

(declare-fun lemmaCharactersSize!248 (Token!2114) Unit!10894)

(assert (=> b!598706 (= lt!255015 (lemmaCharactersSize!248 token!491))))

(declare-fun lt!255033 () Unit!10894)

(assert (=> b!598706 (= lt!255033 (lemmaCharactersSize!248 (_1!3700 (v!16430 lt!255028))))))

(declare-fun lt!255036 () Unit!10894)

(declare-fun e!362673 () Unit!10894)

(assert (=> b!598706 (= lt!255036 e!362673)))

(declare-fun c!111200 () Bool)

(declare-fun lt!255018 () Int)

(declare-fun lt!255037 () Int)

(assert (=> b!598706 (= c!111200 (> lt!255018 lt!255037))))

(declare-fun size!4713 (List!5996) Int)

(assert (=> b!598706 (= lt!255037 (size!4713 lt!255024))))

(assert (=> b!598706 (= lt!255018 (size!4713 lt!255021))))

(declare-fun list!2508 (BalanceConc!3820) List!5996)

(declare-fun charsOf!818 (Token!2114) BalanceConc!3820)

(assert (=> b!598706 (= lt!255021 (list!2508 (charsOf!818 (_1!3700 (v!16430 lt!255028)))))))

(assert (=> b!598706 (= lt!255028 (Some!1539 (v!16430 lt!255028)))))

(declare-fun lt!255034 () Unit!10894)

(declare-fun lemmaConcatSameAndSameSizesThenSameLists!262 (List!5996 List!5996 List!5996 List!5996) Unit!10894)

(assert (=> b!598706 (= lt!255034 (lemmaConcatSameAndSameSizesThenSameLists!262 lt!255024 suffix!1342 input!2705 suffix!1342))))

(declare-fun b!598707 () Bool)

(declare-fun res!258817 () Bool)

(declare-fun e!362678 () Bool)

(assert (=> b!598707 (=> (not res!258817) (not e!362678))))

(assert (=> b!598707 (= res!258817 (= (size!4712 token!491) (size!4713 (originalCharacters!1228 token!491))))))

(declare-fun b!598708 () Bool)

(declare-fun Unit!10896 () Unit!10894)

(assert (=> b!598708 (= e!362673 Unit!10896)))

(assert (=> b!598708 false))

(declare-fun b!598709 () Bool)

(declare-fun res!258819 () Bool)

(assert (=> b!598709 (=> (not res!258819) (not e!362666))))

(assert (=> b!598709 (= res!258819 (= (size!4712 (_1!3700 (v!16430 lt!255028))) (size!4713 (originalCharacters!1228 (_1!3700 (v!16430 lt!255028))))))))

(declare-fun b!598710 () Bool)

(declare-fun e!362674 () Bool)

(assert (=> b!598710 (= e!362674 e!362662)))

(declare-fun res!258816 () Bool)

(assert (=> b!598710 (=> (not res!258816) (not e!362662))))

(assert (=> b!598710 (= res!258816 (= lt!255032 lt!255016))))

(assert (=> b!598710 (= lt!255032 (++!1677 lt!255024 suffix!1342))))

(declare-fun lt!255025 () List!5996)

(declare-fun b!598711 () Bool)

(declare-fun lt!255019 () TokenValue!1213)

(assert (=> b!598711 (= e!362678 (and (= (size!4712 token!491) lt!255037) (= (originalCharacters!1228 token!491) lt!255024) (= (tuple2!6873 token!491 suffix!1342) (tuple2!6873 (Token!2115 lt!255019 (rule!1959 token!491) lt!255037 lt!255024) lt!255025))))))

(declare-fun b!598712 () Bool)

(assert (=> b!598712 (= e!362672 e!362667)))

(declare-fun res!258818 () Bool)

(assert (=> b!598712 (=> res!258818 e!362667)))

(declare-fun contains!1399 (List!5998 Rule!2178) Bool)

(assert (=> b!598712 (= res!258818 (not (contains!1399 rules!3103 (rule!1959 (_1!3700 (v!16430 lt!255028))))))))

(assert (=> b!598712 e!362678))

(declare-fun res!258826 () Bool)

(assert (=> b!598712 (=> (not res!258826) (not e!362678))))

(assert (=> b!598712 (= res!258826 (= (value!38753 token!491) lt!255019))))

(assert (=> b!598712 (= lt!255019 (apply!1442 (transformation!1189 (rule!1959 token!491)) (seqFromList!1365 lt!255024)))))

(assert (=> b!598712 (= suffix!1342 lt!255025)))

(declare-fun lt!255020 () Unit!10894)

(assert (=> b!598712 (= lt!255020 (lemmaSamePrefixThenSameSuffix!530 lt!255024 suffix!1342 lt!255024 lt!255025 lt!255016))))

(assert (=> b!598712 (= lt!255025 (getSuffix!334 lt!255016 lt!255024))))

(declare-fun e!362671 () Bool)

(assert (=> b!598713 (= e!362671 (and tp!186652 tp!186650))))

(declare-fun res!258823 () Bool)

(assert (=> start!56704 (=> (not res!258823) (not e!362665))))

(get-info :version)

(assert (=> start!56704 (= res!258823 ((_ is Lexer!1073) thiss!22590))))

(assert (=> start!56704 e!362665))

(assert (=> start!56704 e!362681))

(declare-fun e!362679 () Bool)

(assert (=> start!56704 e!362679))

(declare-fun e!362677 () Bool)

(declare-fun inv!7588 (Token!2114) Bool)

(assert (=> start!56704 (and (inv!7588 token!491) e!362677)))

(assert (=> start!56704 true))

(assert (=> start!56704 e!362668))

(declare-fun e!362660 () Bool)

(assert (=> b!598700 (= e!362660 (and tp!186655 tp!186651))))

(declare-fun b!598714 () Bool)

(declare-fun e!362664 () Bool)

(declare-fun tp!186647 () Bool)

(assert (=> b!598714 (= e!362679 (and e!362664 tp!186647))))

(declare-fun b!598715 () Bool)

(declare-fun res!258824 () Bool)

(assert (=> b!598715 (=> (not res!258824) (not e!362665))))

(declare-fun rulesInvariant!1038 (LexerInterface!1075 List!5998) Bool)

(assert (=> b!598715 (= res!258824 (rulesInvariant!1038 thiss!22590 rules!3103))))

(declare-fun e!362680 () Bool)

(declare-fun b!598716 () Bool)

(declare-fun tp!186648 () Bool)

(declare-fun inv!21 (TokenValue!1213) Bool)

(assert (=> b!598716 (= e!362677 (and (inv!21 (value!38753 token!491)) e!362680 tp!186648))))

(declare-fun b!598717 () Bool)

(declare-fun res!258821 () Bool)

(assert (=> b!598717 (=> res!258821 e!362667)))

(assert (=> b!598717 (= res!258821 (not (= input!2705 lt!255039)))))

(declare-fun b!598718 () Bool)

(assert (=> b!598718 (= e!362666 (and (= (size!4712 (_1!3700 (v!16430 lt!255028))) lt!255018) (= (originalCharacters!1228 (_1!3700 (v!16430 lt!255028))) lt!255021) (= (v!16430 lt!255028) (tuple2!6873 (Token!2115 lt!255031 (rule!1959 (_1!3700 (v!16430 lt!255028))) lt!255018 lt!255021) lt!255041))))))

(declare-fun b!598719 () Bool)

(declare-fun tp!186653 () Bool)

(declare-fun inv!7585 (String!7808) Bool)

(declare-fun inv!7589 (TokenValueInjection!2194) Bool)

(assert (=> b!598719 (= e!362664 (and tp!186653 (inv!7585 (tag!1451 (h!11389 rules!3103))) (inv!7589 (transformation!1189 (h!11389 rules!3103))) e!362671))))

(declare-fun b!598720 () Bool)

(declare-fun e!362661 () Bool)

(declare-fun e!362670 () Bool)

(assert (=> b!598720 (= e!362661 e!362670)))

(declare-fun res!258815 () Bool)

(assert (=> b!598720 (=> (not res!258815) (not e!362670))))

(declare-fun lt!255030 () Option!1540)

(declare-fun isDefined!1351 (Option!1540) Bool)

(assert (=> b!598720 (= res!258815 (isDefined!1351 lt!255030))))

(declare-fun maxPrefix!773 (LexerInterface!1075 List!5998 List!5996) Option!1540)

(assert (=> b!598720 (= lt!255030 (maxPrefix!773 thiss!22590 rules!3103 lt!255016))))

(assert (=> b!598720 (= lt!255016 (++!1677 input!2705 suffix!1342))))

(declare-fun b!598721 () Bool)

(declare-fun tp!186649 () Bool)

(assert (=> b!598721 (= e!362680 (and tp!186649 (inv!7585 (tag!1451 (rule!1959 token!491))) (inv!7589 (transformation!1189 (rule!1959 token!491))) e!362660))))

(declare-fun b!598722 () Bool)

(assert (=> b!598722 (= e!362665 e!362661)))

(declare-fun res!258813 () Bool)

(assert (=> b!598722 (=> (not res!258813) (not e!362661))))

(assert (=> b!598722 (= res!258813 (= lt!255024 input!2705))))

(assert (=> b!598722 (= lt!255024 (list!2508 (charsOf!818 token!491)))))

(declare-fun b!598723 () Bool)

(declare-fun e!362663 () Bool)

(assert (=> b!598723 (= e!362663 e!362674)))

(declare-fun res!258827 () Bool)

(assert (=> b!598723 (=> (not res!258827) (not e!362674))))

(assert (=> b!598723 (= res!258827 ((_ is Some!1539) lt!255028))))

(assert (=> b!598723 (= lt!255028 (maxPrefix!773 thiss!22590 rules!3103 input!2705))))

(declare-fun b!598724 () Bool)

(declare-fun Unit!10897 () Unit!10894)

(assert (=> b!598724 (= e!362673 Unit!10897)))

(declare-fun b!598725 () Bool)

(assert (=> b!598725 (= e!362670 e!362663)))

(declare-fun res!258828 () Bool)

(assert (=> b!598725 (=> (not res!258828) (not e!362663))))

(declare-fun lt!255040 () tuple2!6872)

(assert (=> b!598725 (= res!258828 (and (= (_1!3700 lt!255040) token!491) (= (_2!3700 lt!255040) suffix!1342)))))

(declare-fun get!2298 (Option!1540) tuple2!6872)

(assert (=> b!598725 (= lt!255040 (get!2298 lt!255030))))

(assert (= (and start!56704 res!258823) b!598704))

(assert (= (and b!598704 res!258820) b!598715))

(assert (= (and b!598715 res!258824) b!598705))

(assert (= (and b!598705 res!258814) b!598722))

(assert (= (and b!598722 res!258813) b!598720))

(assert (= (and b!598720 res!258815) b!598725))

(assert (= (and b!598725 res!258828) b!598723))

(assert (= (and b!598723 res!258827) b!598710))

(assert (= (and b!598710 res!258816) b!598706))

(assert (= (and b!598706 c!111200) b!598708))

(assert (= (and b!598706 (not c!111200)) b!598724))

(assert (= (and b!598706 res!258825) b!598709))

(assert (= (and b!598709 res!258819) b!598718))

(assert (= (and b!598706 (not res!258822)) b!598712))

(assert (= (and b!598712 res!258826) b!598707))

(assert (= (and b!598707 res!258817) b!598711))

(assert (= (and b!598712 (not res!258818)) b!598717))

(assert (= (and b!598717 (not res!258821)) b!598703))

(assert (= (and start!56704 ((_ is Cons!5986) suffix!1342)) b!598702))

(assert (= b!598719 b!598713))

(assert (= b!598714 b!598719))

(assert (= (and start!56704 ((_ is Cons!5988) rules!3103)) b!598714))

(assert (= b!598721 b!598700))

(assert (= b!598716 b!598721))

(assert (= start!56704 b!598716))

(assert (= (and start!56704 ((_ is Cons!5986) input!2705)) b!598701))

(declare-fun m!862333 () Bool)

(assert (=> b!598707 m!862333))

(declare-fun m!862335 () Bool)

(assert (=> b!598712 m!862335))

(declare-fun m!862337 () Bool)

(assert (=> b!598712 m!862337))

(declare-fun m!862339 () Bool)

(assert (=> b!598712 m!862339))

(assert (=> b!598712 m!862339))

(declare-fun m!862341 () Bool)

(assert (=> b!598712 m!862341))

(declare-fun m!862343 () Bool)

(assert (=> b!598712 m!862343))

(declare-fun m!862345 () Bool)

(assert (=> b!598719 m!862345))

(declare-fun m!862347 () Bool)

(assert (=> b!598719 m!862347))

(declare-fun m!862349 () Bool)

(assert (=> b!598723 m!862349))

(declare-fun m!862351 () Bool)

(assert (=> b!598716 m!862351))

(declare-fun m!862353 () Bool)

(assert (=> b!598722 m!862353))

(assert (=> b!598722 m!862353))

(declare-fun m!862355 () Bool)

(assert (=> b!598722 m!862355))

(declare-fun m!862357 () Bool)

(assert (=> b!598725 m!862357))

(declare-fun m!862359 () Bool)

(assert (=> b!598703 m!862359))

(declare-fun m!862361 () Bool)

(assert (=> b!598705 m!862361))

(declare-fun m!862363 () Bool)

(assert (=> start!56704 m!862363))

(declare-fun m!862365 () Bool)

(assert (=> b!598721 m!862365))

(declare-fun m!862367 () Bool)

(assert (=> b!598721 m!862367))

(declare-fun m!862369 () Bool)

(assert (=> b!598706 m!862369))

(declare-fun m!862371 () Bool)

(assert (=> b!598706 m!862371))

(declare-fun m!862373 () Bool)

(assert (=> b!598706 m!862373))

(declare-fun m!862375 () Bool)

(assert (=> b!598706 m!862375))

(declare-fun m!862377 () Bool)

(assert (=> b!598706 m!862377))

(declare-fun m!862379 () Bool)

(assert (=> b!598706 m!862379))

(declare-fun m!862381 () Bool)

(assert (=> b!598706 m!862381))

(declare-fun m!862383 () Bool)

(assert (=> b!598706 m!862383))

(declare-fun m!862385 () Bool)

(assert (=> b!598706 m!862385))

(declare-fun m!862387 () Bool)

(assert (=> b!598706 m!862387))

(declare-fun m!862389 () Bool)

(assert (=> b!598706 m!862389))

(declare-fun m!862391 () Bool)

(assert (=> b!598706 m!862391))

(declare-fun m!862393 () Bool)

(assert (=> b!598706 m!862393))

(declare-fun m!862395 () Bool)

(assert (=> b!598706 m!862395))

(declare-fun m!862397 () Bool)

(assert (=> b!598706 m!862397))

(declare-fun m!862399 () Bool)

(assert (=> b!598706 m!862399))

(declare-fun m!862401 () Bool)

(assert (=> b!598706 m!862401))

(declare-fun m!862403 () Bool)

(assert (=> b!598706 m!862403))

(declare-fun m!862405 () Bool)

(assert (=> b!598706 m!862405))

(declare-fun m!862407 () Bool)

(assert (=> b!598706 m!862407))

(declare-fun m!862409 () Bool)

(assert (=> b!598706 m!862409))

(declare-fun m!862411 () Bool)

(assert (=> b!598706 m!862411))

(assert (=> b!598706 m!862387))

(declare-fun m!862413 () Bool)

(assert (=> b!598706 m!862413))

(declare-fun m!862415 () Bool)

(assert (=> b!598706 m!862415))

(declare-fun m!862417 () Bool)

(assert (=> b!598706 m!862417))

(declare-fun m!862419 () Bool)

(assert (=> b!598706 m!862419))

(assert (=> b!598706 m!862417))

(declare-fun m!862421 () Bool)

(assert (=> b!598706 m!862421))

(declare-fun m!862423 () Bool)

(assert (=> b!598709 m!862423))

(declare-fun m!862425 () Bool)

(assert (=> b!598704 m!862425))

(declare-fun m!862427 () Bool)

(assert (=> b!598715 m!862427))

(declare-fun m!862429 () Bool)

(assert (=> b!598710 m!862429))

(declare-fun m!862431 () Bool)

(assert (=> b!598720 m!862431))

(declare-fun m!862433 () Bool)

(assert (=> b!598720 m!862433))

(declare-fun m!862435 () Bool)

(assert (=> b!598720 m!862435))

(check-sat (not b!598709) (not b!598721) (not b!598706) tp_is_empty!3401 (not b!598719) (not b!598707) (not b_next!17039) (not b!598723) (not b!598714) (not b!598703) (not b!598712) (not b!598722) (not b!598702) (not b!598710) b_and!59125 (not b_next!17043) (not b!598716) (not b!598725) b_and!59127 (not b_next!17041) (not b!598705) (not b_next!17037) (not b!598704) b_and!59123 (not b!598701) (not start!56704) b_and!59129 (not b!598720) (not b!598715))
(check-sat b_and!59125 (not b_next!17043) b_and!59127 (not b_next!17041) (not b_next!17037) b_and!59123 (not b_next!17039) b_and!59129)
(get-model)

(declare-fun d!210374 () Bool)

(assert (=> d!210374 (= (inv!7585 (tag!1451 (h!11389 rules!3103))) (= (mod (str.len (value!38727 (tag!1451 (h!11389 rules!3103)))) 2) 0))))

(assert (=> b!598719 d!210374))

(declare-fun d!210376 () Bool)

(declare-fun res!258869 () Bool)

(declare-fun e!362708 () Bool)

(assert (=> d!210376 (=> (not res!258869) (not e!362708))))

(declare-fun semiInverseModEq!473 (Int Int) Bool)

(assert (=> d!210376 (= res!258869 (semiInverseModEq!473 (toChars!1939 (transformation!1189 (h!11389 rules!3103))) (toValue!2080 (transformation!1189 (h!11389 rules!3103)))))))

(assert (=> d!210376 (= (inv!7589 (transformation!1189 (h!11389 rules!3103))) e!362708)))

(declare-fun b!598781 () Bool)

(declare-fun equivClasses!456 (Int Int) Bool)

(assert (=> b!598781 (= e!362708 (equivClasses!456 (toChars!1939 (transformation!1189 (h!11389 rules!3103))) (toValue!2080 (transformation!1189 (h!11389 rules!3103)))))))

(assert (= (and d!210376 res!258869) b!598781))

(declare-fun m!862467 () Bool)

(assert (=> d!210376 m!862467))

(declare-fun m!862469 () Bool)

(assert (=> b!598781 m!862469))

(assert (=> b!598719 d!210376))

(declare-fun d!210378 () Bool)

(declare-fun lt!255073 () Int)

(assert (=> d!210378 (>= lt!255073 0)))

(declare-fun e!362720 () Int)

(assert (=> d!210378 (= lt!255073 e!362720)))

(declare-fun c!111216 () Bool)

(assert (=> d!210378 (= c!111216 ((_ is Nil!5986) (originalCharacters!1228 (_1!3700 (v!16430 lt!255028)))))))

(assert (=> d!210378 (= (size!4713 (originalCharacters!1228 (_1!3700 (v!16430 lt!255028)))) lt!255073)))

(declare-fun b!598800 () Bool)

(assert (=> b!598800 (= e!362720 0)))

(declare-fun b!598801 () Bool)

(assert (=> b!598801 (= e!362720 (+ 1 (size!4713 (t!79673 (originalCharacters!1228 (_1!3700 (v!16430 lt!255028)))))))))

(assert (= (and d!210378 c!111216) b!598800))

(assert (= (and d!210378 (not c!111216)) b!598801))

(declare-fun m!862517 () Bool)

(assert (=> b!598801 m!862517))

(assert (=> b!598709 d!210378))

(declare-fun d!210386 () Bool)

(declare-fun isEmpty!4324 (Option!1540) Bool)

(assert (=> d!210386 (= (isDefined!1351 lt!255030) (not (isEmpty!4324 lt!255030)))))

(declare-fun bs!70763 () Bool)

(assert (= bs!70763 d!210386))

(declare-fun m!862535 () Bool)

(assert (=> bs!70763 m!862535))

(assert (=> b!598720 d!210386))

(declare-fun d!210394 () Bool)

(declare-fun e!362811 () Bool)

(assert (=> d!210394 e!362811))

(declare-fun res!258956 () Bool)

(assert (=> d!210394 (=> res!258956 e!362811)))

(declare-fun lt!255125 () Option!1540)

(assert (=> d!210394 (= res!258956 (isEmpty!4324 lt!255125))))

(declare-fun e!362810 () Option!1540)

(assert (=> d!210394 (= lt!255125 e!362810)))

(declare-fun c!111233 () Bool)

(assert (=> d!210394 (= c!111233 (and ((_ is Cons!5988) rules!3103) ((_ is Nil!5988) (t!79675 rules!3103))))))

(declare-fun lt!255124 () Unit!10894)

(declare-fun lt!255128 () Unit!10894)

(assert (=> d!210394 (= lt!255124 lt!255128)))

(assert (=> d!210394 (isPrefix!817 lt!255016 lt!255016)))

(assert (=> d!210394 (= lt!255128 (lemmaIsPrefixRefl!553 lt!255016 lt!255016))))

(declare-fun rulesValidInductive!442 (LexerInterface!1075 List!5998) Bool)

(assert (=> d!210394 (rulesValidInductive!442 thiss!22590 rules!3103)))

(assert (=> d!210394 (= (maxPrefix!773 thiss!22590 rules!3103 lt!255016) lt!255125)))

(declare-fun b!598947 () Bool)

(declare-fun call!40444 () Option!1540)

(assert (=> b!598947 (= e!362810 call!40444)))

(declare-fun b!598948 () Bool)

(declare-fun res!258955 () Bool)

(declare-fun e!362809 () Bool)

(assert (=> b!598948 (=> (not res!258955) (not e!362809))))

(declare-fun matchR!634 (Regex!1523 List!5996) Bool)

(assert (=> b!598948 (= res!258955 (matchR!634 (regex!1189 (rule!1959 (_1!3700 (get!2298 lt!255125)))) (list!2508 (charsOf!818 (_1!3700 (get!2298 lt!255125))))))))

(declare-fun b!598949 () Bool)

(declare-fun res!258960 () Bool)

(assert (=> b!598949 (=> (not res!258960) (not e!362809))))

(assert (=> b!598949 (= res!258960 (= (++!1677 (list!2508 (charsOf!818 (_1!3700 (get!2298 lt!255125)))) (_2!3700 (get!2298 lt!255125))) lt!255016))))

(declare-fun b!598950 () Bool)

(declare-fun res!258958 () Bool)

(assert (=> b!598950 (=> (not res!258958) (not e!362809))))

(assert (=> b!598950 (= res!258958 (= (list!2508 (charsOf!818 (_1!3700 (get!2298 lt!255125)))) (originalCharacters!1228 (_1!3700 (get!2298 lt!255125)))))))

(declare-fun b!598951 () Bool)

(declare-fun res!258957 () Bool)

(assert (=> b!598951 (=> (not res!258957) (not e!362809))))

(assert (=> b!598951 (= res!258957 (< (size!4713 (_2!3700 (get!2298 lt!255125))) (size!4713 lt!255016)))))

(declare-fun b!598952 () Bool)

(assert (=> b!598952 (= e!362809 (contains!1399 rules!3103 (rule!1959 (_1!3700 (get!2298 lt!255125)))))))

(declare-fun bm!40439 () Bool)

(declare-fun maxPrefixOneRule!438 (LexerInterface!1075 Rule!2178 List!5996) Option!1540)

(assert (=> bm!40439 (= call!40444 (maxPrefixOneRule!438 thiss!22590 (h!11389 rules!3103) lt!255016))))

(declare-fun b!598953 () Bool)

(declare-fun lt!255126 () Option!1540)

(declare-fun lt!255127 () Option!1540)

(assert (=> b!598953 (= e!362810 (ite (and ((_ is None!1539) lt!255126) ((_ is None!1539) lt!255127)) None!1539 (ite ((_ is None!1539) lt!255127) lt!255126 (ite ((_ is None!1539) lt!255126) lt!255127 (ite (>= (size!4712 (_1!3700 (v!16430 lt!255126))) (size!4712 (_1!3700 (v!16430 lt!255127)))) lt!255126 lt!255127)))))))

(assert (=> b!598953 (= lt!255126 call!40444)))

(assert (=> b!598953 (= lt!255127 (maxPrefix!773 thiss!22590 (t!79675 rules!3103) lt!255016))))

(declare-fun b!598954 () Bool)

(declare-fun res!258954 () Bool)

(assert (=> b!598954 (=> (not res!258954) (not e!362809))))

(assert (=> b!598954 (= res!258954 (= (value!38753 (_1!3700 (get!2298 lt!255125))) (apply!1442 (transformation!1189 (rule!1959 (_1!3700 (get!2298 lt!255125)))) (seqFromList!1365 (originalCharacters!1228 (_1!3700 (get!2298 lt!255125)))))))))

(declare-fun b!598955 () Bool)

(assert (=> b!598955 (= e!362811 e!362809)))

(declare-fun res!258959 () Bool)

(assert (=> b!598955 (=> (not res!258959) (not e!362809))))

(assert (=> b!598955 (= res!258959 (isDefined!1351 lt!255125))))

(assert (= (and d!210394 c!111233) b!598947))

(assert (= (and d!210394 (not c!111233)) b!598953))

(assert (= (or b!598947 b!598953) bm!40439))

(assert (= (and d!210394 (not res!258956)) b!598955))

(assert (= (and b!598955 res!258959) b!598950))

(assert (= (and b!598950 res!258958) b!598951))

(assert (= (and b!598951 res!258957) b!598949))

(assert (= (and b!598949 res!258960) b!598954))

(assert (= (and b!598954 res!258954) b!598948))

(assert (= (and b!598948 res!258955) b!598952))

(declare-fun m!862701 () Bool)

(assert (=> b!598952 m!862701))

(declare-fun m!862703 () Bool)

(assert (=> b!598952 m!862703))

(assert (=> b!598951 m!862701))

(declare-fun m!862705 () Bool)

(assert (=> b!598951 m!862705))

(declare-fun m!862707 () Bool)

(assert (=> b!598951 m!862707))

(declare-fun m!862709 () Bool)

(assert (=> b!598953 m!862709))

(declare-fun m!862711 () Bool)

(assert (=> bm!40439 m!862711))

(declare-fun m!862713 () Bool)

(assert (=> b!598955 m!862713))

(assert (=> b!598954 m!862701))

(declare-fun m!862715 () Bool)

(assert (=> b!598954 m!862715))

(assert (=> b!598954 m!862715))

(declare-fun m!862717 () Bool)

(assert (=> b!598954 m!862717))

(assert (=> b!598949 m!862701))

(declare-fun m!862719 () Bool)

(assert (=> b!598949 m!862719))

(assert (=> b!598949 m!862719))

(declare-fun m!862721 () Bool)

(assert (=> b!598949 m!862721))

(assert (=> b!598949 m!862721))

(declare-fun m!862723 () Bool)

(assert (=> b!598949 m!862723))

(assert (=> b!598950 m!862701))

(assert (=> b!598950 m!862719))

(assert (=> b!598950 m!862719))

(assert (=> b!598950 m!862721))

(declare-fun m!862725 () Bool)

(assert (=> d!210394 m!862725))

(declare-fun m!862727 () Bool)

(assert (=> d!210394 m!862727))

(declare-fun m!862729 () Bool)

(assert (=> d!210394 m!862729))

(declare-fun m!862731 () Bool)

(assert (=> d!210394 m!862731))

(assert (=> b!598948 m!862701))

(assert (=> b!598948 m!862719))

(assert (=> b!598948 m!862719))

(assert (=> b!598948 m!862721))

(assert (=> b!598948 m!862721))

(declare-fun m!862733 () Bool)

(assert (=> b!598948 m!862733))

(assert (=> b!598720 d!210394))

(declare-fun b!598965 () Bool)

(declare-fun e!362816 () List!5996)

(assert (=> b!598965 (= e!362816 (Cons!5986 (h!11387 input!2705) (++!1677 (t!79673 input!2705) suffix!1342)))))

(declare-fun b!598966 () Bool)

(declare-fun res!258966 () Bool)

(declare-fun e!362817 () Bool)

(assert (=> b!598966 (=> (not res!258966) (not e!362817))))

(declare-fun lt!255131 () List!5996)

(assert (=> b!598966 (= res!258966 (= (size!4713 lt!255131) (+ (size!4713 input!2705) (size!4713 suffix!1342))))))

(declare-fun b!598964 () Bool)

(assert (=> b!598964 (= e!362816 suffix!1342)))

(declare-fun b!598967 () Bool)

(assert (=> b!598967 (= e!362817 (or (not (= suffix!1342 Nil!5986)) (= lt!255131 input!2705)))))

(declare-fun d!210472 () Bool)

(assert (=> d!210472 e!362817))

(declare-fun res!258965 () Bool)

(assert (=> d!210472 (=> (not res!258965) (not e!362817))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!1079 (List!5996) (InoxSet C!3968))

(assert (=> d!210472 (= res!258965 (= (content!1079 lt!255131) ((_ map or) (content!1079 input!2705) (content!1079 suffix!1342))))))

(assert (=> d!210472 (= lt!255131 e!362816)))

(declare-fun c!111236 () Bool)

(assert (=> d!210472 (= c!111236 ((_ is Nil!5986) input!2705))))

(assert (=> d!210472 (= (++!1677 input!2705 suffix!1342) lt!255131)))

(assert (= (and d!210472 c!111236) b!598964))

(assert (= (and d!210472 (not c!111236)) b!598965))

(assert (= (and d!210472 res!258965) b!598966))

(assert (= (and b!598966 res!258966) b!598967))

(declare-fun m!862735 () Bool)

(assert (=> b!598965 m!862735))

(declare-fun m!862737 () Bool)

(assert (=> b!598966 m!862737))

(declare-fun m!862739 () Bool)

(assert (=> b!598966 m!862739))

(declare-fun m!862741 () Bool)

(assert (=> b!598966 m!862741))

(declare-fun m!862743 () Bool)

(assert (=> d!210472 m!862743))

(declare-fun m!862745 () Bool)

(assert (=> d!210472 m!862745))

(declare-fun m!862747 () Bool)

(assert (=> d!210472 m!862747))

(assert (=> b!598720 d!210472))

(declare-fun b!598969 () Bool)

(declare-fun e!362818 () List!5996)

(assert (=> b!598969 (= e!362818 (Cons!5986 (h!11387 lt!255024) (++!1677 (t!79673 lt!255024) suffix!1342)))))

(declare-fun b!598970 () Bool)

(declare-fun res!258968 () Bool)

(declare-fun e!362819 () Bool)

(assert (=> b!598970 (=> (not res!258968) (not e!362819))))

(declare-fun lt!255132 () List!5996)

(assert (=> b!598970 (= res!258968 (= (size!4713 lt!255132) (+ (size!4713 lt!255024) (size!4713 suffix!1342))))))

(declare-fun b!598968 () Bool)

(assert (=> b!598968 (= e!362818 suffix!1342)))

(declare-fun b!598971 () Bool)

(assert (=> b!598971 (= e!362819 (or (not (= suffix!1342 Nil!5986)) (= lt!255132 lt!255024)))))

(declare-fun d!210474 () Bool)

(assert (=> d!210474 e!362819))

(declare-fun res!258967 () Bool)

(assert (=> d!210474 (=> (not res!258967) (not e!362819))))

(assert (=> d!210474 (= res!258967 (= (content!1079 lt!255132) ((_ map or) (content!1079 lt!255024) (content!1079 suffix!1342))))))

(assert (=> d!210474 (= lt!255132 e!362818)))

(declare-fun c!111237 () Bool)

(assert (=> d!210474 (= c!111237 ((_ is Nil!5986) lt!255024))))

(assert (=> d!210474 (= (++!1677 lt!255024 suffix!1342) lt!255132)))

(assert (= (and d!210474 c!111237) b!598968))

(assert (= (and d!210474 (not c!111237)) b!598969))

(assert (= (and d!210474 res!258967) b!598970))

(assert (= (and b!598970 res!258968) b!598971))

(declare-fun m!862749 () Bool)

(assert (=> b!598969 m!862749))

(declare-fun m!862751 () Bool)

(assert (=> b!598970 m!862751))

(assert (=> b!598970 m!862395))

(assert (=> b!598970 m!862741))

(declare-fun m!862753 () Bool)

(assert (=> d!210474 m!862753))

(declare-fun m!862755 () Bool)

(assert (=> d!210474 m!862755))

(assert (=> d!210474 m!862747))

(assert (=> b!598710 d!210474))

(declare-fun d!210476 () Bool)

(assert (=> d!210476 (= (inv!7585 (tag!1451 (rule!1959 token!491))) (= (mod (str.len (value!38727 (tag!1451 (rule!1959 token!491)))) 2) 0))))

(assert (=> b!598721 d!210476))

(declare-fun d!210478 () Bool)

(declare-fun res!258969 () Bool)

(declare-fun e!362820 () Bool)

(assert (=> d!210478 (=> (not res!258969) (not e!362820))))

(assert (=> d!210478 (= res!258969 (semiInverseModEq!473 (toChars!1939 (transformation!1189 (rule!1959 token!491))) (toValue!2080 (transformation!1189 (rule!1959 token!491)))))))

(assert (=> d!210478 (= (inv!7589 (transformation!1189 (rule!1959 token!491))) e!362820)))

(declare-fun b!598972 () Bool)

(assert (=> b!598972 (= e!362820 (equivClasses!456 (toChars!1939 (transformation!1189 (rule!1959 token!491))) (toValue!2080 (transformation!1189 (rule!1959 token!491)))))))

(assert (= (and d!210478 res!258969) b!598972))

(declare-fun m!862757 () Bool)

(assert (=> d!210478 m!862757))

(declare-fun m!862759 () Bool)

(assert (=> b!598972 m!862759))

(assert (=> b!598721 d!210478))

(declare-fun d!210480 () Bool)

(declare-fun list!2510 (Conc!1906) List!5996)

(assert (=> d!210480 (= (list!2508 (charsOf!818 token!491)) (list!2510 (c!111202 (charsOf!818 token!491))))))

(declare-fun bs!70777 () Bool)

(assert (= bs!70777 d!210480))

(declare-fun m!862761 () Bool)

(assert (=> bs!70777 m!862761))

(assert (=> b!598722 d!210480))

(declare-fun d!210482 () Bool)

(declare-fun lt!255135 () BalanceConc!3820)

(assert (=> d!210482 (= (list!2508 lt!255135) (originalCharacters!1228 token!491))))

(declare-fun dynLambda!3455 (Int TokenValue!1213) BalanceConc!3820)

(assert (=> d!210482 (= lt!255135 (dynLambda!3455 (toChars!1939 (transformation!1189 (rule!1959 token!491))) (value!38753 token!491)))))

(assert (=> d!210482 (= (charsOf!818 token!491) lt!255135)))

(declare-fun b_lambda!23625 () Bool)

(assert (=> (not b_lambda!23625) (not d!210482)))

(declare-fun t!79701 () Bool)

(declare-fun tb!52239 () Bool)

(assert (=> (and b!598700 (= (toChars!1939 (transformation!1189 (rule!1959 token!491))) (toChars!1939 (transformation!1189 (rule!1959 token!491)))) t!79701) tb!52239))

(declare-fun b!598977 () Bool)

(declare-fun e!362823 () Bool)

(declare-fun tp!186700 () Bool)

(declare-fun inv!7592 (Conc!1906) Bool)

(assert (=> b!598977 (= e!362823 (and (inv!7592 (c!111202 (dynLambda!3455 (toChars!1939 (transformation!1189 (rule!1959 token!491))) (value!38753 token!491)))) tp!186700))))

(declare-fun result!58752 () Bool)

(declare-fun inv!7593 (BalanceConc!3820) Bool)

(assert (=> tb!52239 (= result!58752 (and (inv!7593 (dynLambda!3455 (toChars!1939 (transformation!1189 (rule!1959 token!491))) (value!38753 token!491))) e!362823))))

(assert (= tb!52239 b!598977))

(declare-fun m!862763 () Bool)

(assert (=> b!598977 m!862763))

(declare-fun m!862765 () Bool)

(assert (=> tb!52239 m!862765))

(assert (=> d!210482 t!79701))

(declare-fun b_and!59155 () Bool)

(assert (= b_and!59125 (and (=> t!79701 result!58752) b_and!59155)))

(declare-fun t!79703 () Bool)

(declare-fun tb!52241 () Bool)

(assert (=> (and b!598713 (= (toChars!1939 (transformation!1189 (h!11389 rules!3103))) (toChars!1939 (transformation!1189 (rule!1959 token!491)))) t!79703) tb!52241))

(declare-fun result!58756 () Bool)

(assert (= result!58756 result!58752))

(assert (=> d!210482 t!79703))

(declare-fun b_and!59157 () Bool)

(assert (= b_and!59129 (and (=> t!79703 result!58756) b_and!59157)))

(declare-fun m!862767 () Bool)

(assert (=> d!210482 m!862767))

(declare-fun m!862769 () Bool)

(assert (=> d!210482 m!862769))

(assert (=> b!598722 d!210482))

(declare-fun d!210484 () Bool)

(declare-fun res!258974 () Bool)

(declare-fun e!362826 () Bool)

(assert (=> d!210484 (=> (not res!258974) (not e!362826))))

(assert (=> d!210484 (= res!258974 (not (isEmpty!4321 (originalCharacters!1228 token!491))))))

(assert (=> d!210484 (= (inv!7588 token!491) e!362826)))

(declare-fun b!598982 () Bool)

(declare-fun res!258975 () Bool)

(assert (=> b!598982 (=> (not res!258975) (not e!362826))))

(assert (=> b!598982 (= res!258975 (= (originalCharacters!1228 token!491) (list!2508 (dynLambda!3455 (toChars!1939 (transformation!1189 (rule!1959 token!491))) (value!38753 token!491)))))))

(declare-fun b!598983 () Bool)

(assert (=> b!598983 (= e!362826 (= (size!4712 token!491) (size!4713 (originalCharacters!1228 token!491))))))

(assert (= (and d!210484 res!258974) b!598982))

(assert (= (and b!598982 res!258975) b!598983))

(declare-fun b_lambda!23627 () Bool)

(assert (=> (not b_lambda!23627) (not b!598982)))

(assert (=> b!598982 t!79701))

(declare-fun b_and!59159 () Bool)

(assert (= b_and!59155 (and (=> t!79701 result!58752) b_and!59159)))

(assert (=> b!598982 t!79703))

(declare-fun b_and!59161 () Bool)

(assert (= b_and!59157 (and (=> t!79703 result!58756) b_and!59161)))

(declare-fun m!862771 () Bool)

(assert (=> d!210484 m!862771))

(assert (=> b!598982 m!862769))

(assert (=> b!598982 m!862769))

(declare-fun m!862773 () Bool)

(assert (=> b!598982 m!862773))

(assert (=> b!598983 m!862333))

(assert (=> start!56704 d!210484))

(declare-fun d!210486 () Bool)

(assert (=> d!210486 (= suffix!1342 lt!255025)))

(declare-fun lt!255138 () Unit!10894)

(declare-fun choose!4371 (List!5996 List!5996 List!5996 List!5996 List!5996) Unit!10894)

(assert (=> d!210486 (= lt!255138 (choose!4371 lt!255024 suffix!1342 lt!255024 lt!255025 lt!255016))))

(assert (=> d!210486 (isPrefix!817 lt!255024 lt!255016)))

(assert (=> d!210486 (= (lemmaSamePrefixThenSameSuffix!530 lt!255024 suffix!1342 lt!255024 lt!255025 lt!255016) lt!255138)))

(declare-fun bs!70778 () Bool)

(assert (= bs!70778 d!210486))

(declare-fun m!862775 () Bool)

(assert (=> bs!70778 m!862775))

(declare-fun m!862777 () Bool)

(assert (=> bs!70778 m!862777))

(assert (=> b!598712 d!210486))

(declare-fun d!210488 () Bool)

(declare-fun fromListB!600 (List!5996) BalanceConc!3820)

(assert (=> d!210488 (= (seqFromList!1365 lt!255024) (fromListB!600 lt!255024))))

(declare-fun bs!70779 () Bool)

(assert (= bs!70779 d!210488))

(declare-fun m!862779 () Bool)

(assert (=> bs!70779 m!862779))

(assert (=> b!598712 d!210488))

(declare-fun d!210490 () Bool)

(declare-fun lt!255141 () List!5996)

(assert (=> d!210490 (= (++!1677 lt!255024 lt!255141) lt!255016)))

(declare-fun e!362829 () List!5996)

(assert (=> d!210490 (= lt!255141 e!362829)))

(declare-fun c!111240 () Bool)

(assert (=> d!210490 (= c!111240 ((_ is Cons!5986) lt!255024))))

(assert (=> d!210490 (>= (size!4713 lt!255016) (size!4713 lt!255024))))

(assert (=> d!210490 (= (getSuffix!334 lt!255016 lt!255024) lt!255141)))

(declare-fun b!598988 () Bool)

(declare-fun tail!801 (List!5996) List!5996)

(assert (=> b!598988 (= e!362829 (getSuffix!334 (tail!801 lt!255016) (t!79673 lt!255024)))))

(declare-fun b!598989 () Bool)

(assert (=> b!598989 (= e!362829 lt!255016)))

(assert (= (and d!210490 c!111240) b!598988))

(assert (= (and d!210490 (not c!111240)) b!598989))

(declare-fun m!862781 () Bool)

(assert (=> d!210490 m!862781))

(assert (=> d!210490 m!862707))

(assert (=> d!210490 m!862395))

(declare-fun m!862783 () Bool)

(assert (=> b!598988 m!862783))

(assert (=> b!598988 m!862783))

(declare-fun m!862785 () Bool)

(assert (=> b!598988 m!862785))

(assert (=> b!598712 d!210490))

(declare-fun d!210492 () Bool)

(declare-fun lt!255144 () Bool)

(declare-fun content!1080 (List!5998) (InoxSet Rule!2178))

(assert (=> d!210492 (= lt!255144 (select (content!1080 rules!3103) (rule!1959 (_1!3700 (v!16430 lt!255028)))))))

(declare-fun e!362834 () Bool)

(assert (=> d!210492 (= lt!255144 e!362834)))

(declare-fun res!258981 () Bool)

(assert (=> d!210492 (=> (not res!258981) (not e!362834))))

(assert (=> d!210492 (= res!258981 ((_ is Cons!5988) rules!3103))))

(assert (=> d!210492 (= (contains!1399 rules!3103 (rule!1959 (_1!3700 (v!16430 lt!255028)))) lt!255144)))

(declare-fun b!598994 () Bool)

(declare-fun e!362835 () Bool)

(assert (=> b!598994 (= e!362834 e!362835)))

(declare-fun res!258980 () Bool)

(assert (=> b!598994 (=> res!258980 e!362835)))

(assert (=> b!598994 (= res!258980 (= (h!11389 rules!3103) (rule!1959 (_1!3700 (v!16430 lt!255028)))))))

(declare-fun b!598995 () Bool)

(assert (=> b!598995 (= e!362835 (contains!1399 (t!79675 rules!3103) (rule!1959 (_1!3700 (v!16430 lt!255028)))))))

(assert (= (and d!210492 res!258981) b!598994))

(assert (= (and b!598994 (not res!258980)) b!598995))

(declare-fun m!862787 () Bool)

(assert (=> d!210492 m!862787))

(declare-fun m!862789 () Bool)

(assert (=> d!210492 m!862789))

(declare-fun m!862791 () Bool)

(assert (=> b!598995 m!862791))

(assert (=> b!598712 d!210492))

(declare-fun d!210494 () Bool)

(declare-fun dynLambda!3456 (Int BalanceConc!3820) TokenValue!1213)

(assert (=> d!210494 (= (apply!1442 (transformation!1189 (rule!1959 token!491)) (seqFromList!1365 lt!255024)) (dynLambda!3456 (toValue!2080 (transformation!1189 (rule!1959 token!491))) (seqFromList!1365 lt!255024)))))

(declare-fun b_lambda!23629 () Bool)

(assert (=> (not b_lambda!23629) (not d!210494)))

(declare-fun t!79705 () Bool)

(declare-fun tb!52243 () Bool)

(assert (=> (and b!598700 (= (toValue!2080 (transformation!1189 (rule!1959 token!491))) (toValue!2080 (transformation!1189 (rule!1959 token!491)))) t!79705) tb!52243))

(declare-fun result!58758 () Bool)

(assert (=> tb!52243 (= result!58758 (inv!21 (dynLambda!3456 (toValue!2080 (transformation!1189 (rule!1959 token!491))) (seqFromList!1365 lt!255024))))))

(declare-fun m!862793 () Bool)

(assert (=> tb!52243 m!862793))

(assert (=> d!210494 t!79705))

(declare-fun b_and!59163 () Bool)

(assert (= b_and!59123 (and (=> t!79705 result!58758) b_and!59163)))

(declare-fun tb!52245 () Bool)

(declare-fun t!79707 () Bool)

(assert (=> (and b!598713 (= (toValue!2080 (transformation!1189 (h!11389 rules!3103))) (toValue!2080 (transformation!1189 (rule!1959 token!491)))) t!79707) tb!52245))

(declare-fun result!58762 () Bool)

(assert (= result!58762 result!58758))

(assert (=> d!210494 t!79707))

(declare-fun b_and!59165 () Bool)

(assert (= b_and!59127 (and (=> t!79707 result!58762) b_and!59165)))

(assert (=> d!210494 m!862339))

(declare-fun m!862795 () Bool)

(assert (=> d!210494 m!862795))

(assert (=> b!598712 d!210494))

(declare-fun d!210496 () Bool)

(declare-fun e!362841 () Bool)

(assert (=> d!210496 e!362841))

(declare-fun res!258984 () Bool)

(assert (=> d!210496 (=> res!258984 e!362841)))

(declare-fun lt!255146 () Option!1540)

(assert (=> d!210496 (= res!258984 (isEmpty!4324 lt!255146))))

(declare-fun e!362840 () Option!1540)

(assert (=> d!210496 (= lt!255146 e!362840)))

(declare-fun c!111241 () Bool)

(assert (=> d!210496 (= c!111241 (and ((_ is Cons!5988) rules!3103) ((_ is Nil!5988) (t!79675 rules!3103))))))

(declare-fun lt!255145 () Unit!10894)

(declare-fun lt!255149 () Unit!10894)

(assert (=> d!210496 (= lt!255145 lt!255149)))

(assert (=> d!210496 (isPrefix!817 input!2705 input!2705)))

(assert (=> d!210496 (= lt!255149 (lemmaIsPrefixRefl!553 input!2705 input!2705))))

(assert (=> d!210496 (rulesValidInductive!442 thiss!22590 rules!3103)))

(assert (=> d!210496 (= (maxPrefix!773 thiss!22590 rules!3103 input!2705) lt!255146)))

(declare-fun b!598998 () Bool)

(declare-fun call!40445 () Option!1540)

(assert (=> b!598998 (= e!362840 call!40445)))

(declare-fun b!598999 () Bool)

(declare-fun res!258983 () Bool)

(declare-fun e!362839 () Bool)

(assert (=> b!598999 (=> (not res!258983) (not e!362839))))

(assert (=> b!598999 (= res!258983 (matchR!634 (regex!1189 (rule!1959 (_1!3700 (get!2298 lt!255146)))) (list!2508 (charsOf!818 (_1!3700 (get!2298 lt!255146))))))))

(declare-fun b!599000 () Bool)

(declare-fun res!258988 () Bool)

(assert (=> b!599000 (=> (not res!258988) (not e!362839))))

(assert (=> b!599000 (= res!258988 (= (++!1677 (list!2508 (charsOf!818 (_1!3700 (get!2298 lt!255146)))) (_2!3700 (get!2298 lt!255146))) input!2705))))

(declare-fun b!599001 () Bool)

(declare-fun res!258986 () Bool)

(assert (=> b!599001 (=> (not res!258986) (not e!362839))))

(assert (=> b!599001 (= res!258986 (= (list!2508 (charsOf!818 (_1!3700 (get!2298 lt!255146)))) (originalCharacters!1228 (_1!3700 (get!2298 lt!255146)))))))

(declare-fun b!599002 () Bool)

(declare-fun res!258985 () Bool)

(assert (=> b!599002 (=> (not res!258985) (not e!362839))))

(assert (=> b!599002 (= res!258985 (< (size!4713 (_2!3700 (get!2298 lt!255146))) (size!4713 input!2705)))))

(declare-fun b!599003 () Bool)

(assert (=> b!599003 (= e!362839 (contains!1399 rules!3103 (rule!1959 (_1!3700 (get!2298 lt!255146)))))))

(declare-fun bm!40440 () Bool)

(assert (=> bm!40440 (= call!40445 (maxPrefixOneRule!438 thiss!22590 (h!11389 rules!3103) input!2705))))

(declare-fun b!599004 () Bool)

(declare-fun lt!255147 () Option!1540)

(declare-fun lt!255148 () Option!1540)

(assert (=> b!599004 (= e!362840 (ite (and ((_ is None!1539) lt!255147) ((_ is None!1539) lt!255148)) None!1539 (ite ((_ is None!1539) lt!255148) lt!255147 (ite ((_ is None!1539) lt!255147) lt!255148 (ite (>= (size!4712 (_1!3700 (v!16430 lt!255147))) (size!4712 (_1!3700 (v!16430 lt!255148)))) lt!255147 lt!255148)))))))

(assert (=> b!599004 (= lt!255147 call!40445)))

(assert (=> b!599004 (= lt!255148 (maxPrefix!773 thiss!22590 (t!79675 rules!3103) input!2705))))

(declare-fun b!599005 () Bool)

(declare-fun res!258982 () Bool)

(assert (=> b!599005 (=> (not res!258982) (not e!362839))))

(assert (=> b!599005 (= res!258982 (= (value!38753 (_1!3700 (get!2298 lt!255146))) (apply!1442 (transformation!1189 (rule!1959 (_1!3700 (get!2298 lt!255146)))) (seqFromList!1365 (originalCharacters!1228 (_1!3700 (get!2298 lt!255146)))))))))

(declare-fun b!599006 () Bool)

(assert (=> b!599006 (= e!362841 e!362839)))

(declare-fun res!258987 () Bool)

(assert (=> b!599006 (=> (not res!258987) (not e!362839))))

(assert (=> b!599006 (= res!258987 (isDefined!1351 lt!255146))))

(assert (= (and d!210496 c!111241) b!598998))

(assert (= (and d!210496 (not c!111241)) b!599004))

(assert (= (or b!598998 b!599004) bm!40440))

(assert (= (and d!210496 (not res!258984)) b!599006))

(assert (= (and b!599006 res!258987) b!599001))

(assert (= (and b!599001 res!258986) b!599002))

(assert (= (and b!599002 res!258985) b!599000))

(assert (= (and b!599000 res!258988) b!599005))

(assert (= (and b!599005 res!258982) b!598999))

(assert (= (and b!598999 res!258983) b!599003))

(declare-fun m!862797 () Bool)

(assert (=> b!599003 m!862797))

(declare-fun m!862799 () Bool)

(assert (=> b!599003 m!862799))

(assert (=> b!599002 m!862797))

(declare-fun m!862801 () Bool)

(assert (=> b!599002 m!862801))

(assert (=> b!599002 m!862739))

(declare-fun m!862803 () Bool)

(assert (=> b!599004 m!862803))

(declare-fun m!862805 () Bool)

(assert (=> bm!40440 m!862805))

(declare-fun m!862807 () Bool)

(assert (=> b!599006 m!862807))

(assert (=> b!599005 m!862797))

(declare-fun m!862809 () Bool)

(assert (=> b!599005 m!862809))

(assert (=> b!599005 m!862809))

(declare-fun m!862811 () Bool)

(assert (=> b!599005 m!862811))

(assert (=> b!599000 m!862797))

(declare-fun m!862813 () Bool)

(assert (=> b!599000 m!862813))

(assert (=> b!599000 m!862813))

(declare-fun m!862815 () Bool)

(assert (=> b!599000 m!862815))

(assert (=> b!599000 m!862815))

(declare-fun m!862817 () Bool)

(assert (=> b!599000 m!862817))

(assert (=> b!599001 m!862797))

(assert (=> b!599001 m!862813))

(assert (=> b!599001 m!862813))

(assert (=> b!599001 m!862815))

(declare-fun m!862819 () Bool)

(assert (=> d!210496 m!862819))

(assert (=> d!210496 m!862421))

(assert (=> d!210496 m!862407))

(assert (=> d!210496 m!862731))

(assert (=> b!598999 m!862797))

(assert (=> b!598999 m!862813))

(assert (=> b!598999 m!862813))

(assert (=> b!598999 m!862815))

(assert (=> b!598999 m!862815))

(declare-fun m!862821 () Bool)

(assert (=> b!598999 m!862821))

(assert (=> b!598723 d!210496))

(declare-fun d!210498 () Bool)

(assert (=> d!210498 (= (isEmpty!4321 lt!255021) ((_ is Nil!5986) lt!255021))))

(assert (=> b!598703 d!210498))

(declare-fun d!210500 () Bool)

(assert (=> d!210500 (= (get!2298 lt!255030) (v!16430 lt!255030))))

(assert (=> b!598725 d!210500))

(declare-fun d!210502 () Bool)

(assert (=> d!210502 (= (isEmpty!4322 rules!3103) ((_ is Nil!5988) rules!3103))))

(assert (=> b!598704 d!210502))

(declare-fun d!210504 () Bool)

(declare-fun res!258991 () Bool)

(declare-fun e!362844 () Bool)

(assert (=> d!210504 (=> (not res!258991) (not e!362844))))

(declare-fun rulesValid!437 (LexerInterface!1075 List!5998) Bool)

(assert (=> d!210504 (= res!258991 (rulesValid!437 thiss!22590 rules!3103))))

(assert (=> d!210504 (= (rulesInvariant!1038 thiss!22590 rules!3103) e!362844)))

(declare-fun b!599009 () Bool)

(declare-datatypes ((List!6000 0))(
  ( (Nil!5990) (Cons!5990 (h!11391 String!7808) (t!79725 List!6000)) )
))
(declare-fun noDuplicateTag!437 (LexerInterface!1075 List!5998 List!6000) Bool)

(assert (=> b!599009 (= e!362844 (noDuplicateTag!437 thiss!22590 rules!3103 Nil!5990))))

(assert (= (and d!210504 res!258991) b!599009))

(declare-fun m!862823 () Bool)

(assert (=> d!210504 m!862823))

(declare-fun m!862825 () Bool)

(assert (=> b!599009 m!862825))

(assert (=> b!598715 d!210504))

(declare-fun d!210506 () Bool)

(assert (=> d!210506 (= (isEmpty!4321 input!2705) ((_ is Nil!5986) input!2705))))

(assert (=> b!598705 d!210506))

(declare-fun b!599020 () Bool)

(declare-fun e!362853 () Bool)

(declare-fun inv!16 (TokenValue!1213) Bool)

(assert (=> b!599020 (= e!362853 (inv!16 (value!38753 token!491)))))

(declare-fun b!599021 () Bool)

(declare-fun e!362852 () Bool)

(declare-fun inv!17 (TokenValue!1213) Bool)

(assert (=> b!599021 (= e!362852 (inv!17 (value!38753 token!491)))))

(declare-fun d!210508 () Bool)

(declare-fun c!111246 () Bool)

(assert (=> d!210508 (= c!111246 ((_ is IntegerValue!3639) (value!38753 token!491)))))

(assert (=> d!210508 (= (inv!21 (value!38753 token!491)) e!362853)))

(declare-fun b!599022 () Bool)

(declare-fun res!258994 () Bool)

(declare-fun e!362851 () Bool)

(assert (=> b!599022 (=> res!258994 e!362851)))

(assert (=> b!599022 (= res!258994 (not ((_ is IntegerValue!3641) (value!38753 token!491))))))

(assert (=> b!599022 (= e!362852 e!362851)))

(declare-fun b!599023 () Bool)

(declare-fun inv!15 (TokenValue!1213) Bool)

(assert (=> b!599023 (= e!362851 (inv!15 (value!38753 token!491)))))

(declare-fun b!599024 () Bool)

(assert (=> b!599024 (= e!362853 e!362852)))

(declare-fun c!111247 () Bool)

(assert (=> b!599024 (= c!111247 ((_ is IntegerValue!3640) (value!38753 token!491)))))

(assert (= (and d!210508 c!111246) b!599020))

(assert (= (and d!210508 (not c!111246)) b!599024))

(assert (= (and b!599024 c!111247) b!599021))

(assert (= (and b!599024 (not c!111247)) b!599022))

(assert (= (and b!599022 (not res!258994)) b!599023))

(declare-fun m!862827 () Bool)

(assert (=> b!599020 m!862827))

(declare-fun m!862829 () Bool)

(assert (=> b!599021 m!862829))

(declare-fun m!862831 () Bool)

(assert (=> b!599023 m!862831))

(assert (=> b!598716 d!210508))

(declare-fun b!599033 () Bool)

(declare-fun e!362861 () Bool)

(declare-fun e!362860 () Bool)

(assert (=> b!599033 (= e!362861 e!362860)))

(declare-fun res!259004 () Bool)

(assert (=> b!599033 (=> (not res!259004) (not e!362860))))

(assert (=> b!599033 (= res!259004 (not ((_ is Nil!5986) lt!255016)))))

(declare-fun d!210510 () Bool)

(declare-fun e!362862 () Bool)

(assert (=> d!210510 e!362862))

(declare-fun res!259005 () Bool)

(assert (=> d!210510 (=> res!259005 e!362862)))

(declare-fun lt!255152 () Bool)

(assert (=> d!210510 (= res!259005 (not lt!255152))))

(assert (=> d!210510 (= lt!255152 e!362861)))

(declare-fun res!259003 () Bool)

(assert (=> d!210510 (=> res!259003 e!362861)))

(assert (=> d!210510 (= res!259003 ((_ is Nil!5986) input!2705))))

(assert (=> d!210510 (= (isPrefix!817 input!2705 lt!255016) lt!255152)))

(declare-fun b!599035 () Bool)

(assert (=> b!599035 (= e!362860 (isPrefix!817 (tail!801 input!2705) (tail!801 lt!255016)))))

(declare-fun b!599034 () Bool)

(declare-fun res!259006 () Bool)

(assert (=> b!599034 (=> (not res!259006) (not e!362860))))

(declare-fun head!1272 (List!5996) C!3968)

(assert (=> b!599034 (= res!259006 (= (head!1272 input!2705) (head!1272 lt!255016)))))

(declare-fun b!599036 () Bool)

(assert (=> b!599036 (= e!362862 (>= (size!4713 lt!255016) (size!4713 input!2705)))))

(assert (= (and d!210510 (not res!259003)) b!599033))

(assert (= (and b!599033 res!259004) b!599034))

(assert (= (and b!599034 res!259006) b!599035))

(assert (= (and d!210510 (not res!259005)) b!599036))

(declare-fun m!862833 () Bool)

(assert (=> b!599035 m!862833))

(assert (=> b!599035 m!862783))

(assert (=> b!599035 m!862833))

(assert (=> b!599035 m!862783))

(declare-fun m!862835 () Bool)

(assert (=> b!599035 m!862835))

(declare-fun m!862837 () Bool)

(assert (=> b!599034 m!862837))

(declare-fun m!862839 () Bool)

(assert (=> b!599034 m!862839))

(assert (=> b!599036 m!862707))

(assert (=> b!599036 m!862739))

(assert (=> b!598706 d!210510))

(declare-fun d!210512 () Bool)

(declare-fun res!259011 () Bool)

(declare-fun e!362865 () Bool)

(assert (=> d!210512 (=> (not res!259011) (not e!362865))))

(declare-fun validRegex!526 (Regex!1523) Bool)

(assert (=> d!210512 (= res!259011 (validRegex!526 (regex!1189 (rule!1959 (_1!3700 (v!16430 lt!255028))))))))

(assert (=> d!210512 (= (ruleValid!387 thiss!22590 (rule!1959 (_1!3700 (v!16430 lt!255028)))) e!362865)))

(declare-fun b!599041 () Bool)

(declare-fun res!259012 () Bool)

(assert (=> b!599041 (=> (not res!259012) (not e!362865))))

(declare-fun nullable!431 (Regex!1523) Bool)

(assert (=> b!599041 (= res!259012 (not (nullable!431 (regex!1189 (rule!1959 (_1!3700 (v!16430 lt!255028)))))))))

(declare-fun b!599042 () Bool)

(assert (=> b!599042 (= e!362865 (not (= (tag!1451 (rule!1959 (_1!3700 (v!16430 lt!255028)))) (String!7809 ""))))))

(assert (= (and d!210512 res!259011) b!599041))

(assert (= (and b!599041 res!259012) b!599042))

(declare-fun m!862841 () Bool)

(assert (=> d!210512 m!862841))

(declare-fun m!862843 () Bool)

(assert (=> b!599041 m!862843))

(assert (=> b!598706 d!210512))

(declare-fun d!210514 () Bool)

(assert (=> d!210514 (= (list!2508 (charsOf!818 (_1!3700 (v!16430 lt!255028)))) (list!2510 (c!111202 (charsOf!818 (_1!3700 (v!16430 lt!255028))))))))

(declare-fun bs!70780 () Bool)

(assert (= bs!70780 d!210514))

(declare-fun m!862845 () Bool)

(assert (=> bs!70780 m!862845))

(assert (=> b!598706 d!210514))

(declare-fun b!599043 () Bool)

(declare-fun e!362867 () Bool)

(declare-fun e!362866 () Bool)

(assert (=> b!599043 (= e!362867 e!362866)))

(declare-fun res!259014 () Bool)

(assert (=> b!599043 (=> (not res!259014) (not e!362866))))

(assert (=> b!599043 (= res!259014 (not ((_ is Nil!5986) lt!255032)))))

(declare-fun d!210516 () Bool)

(declare-fun e!362868 () Bool)

(assert (=> d!210516 e!362868))

(declare-fun res!259015 () Bool)

(assert (=> d!210516 (=> res!259015 e!362868)))

(declare-fun lt!255153 () Bool)

(assert (=> d!210516 (= res!259015 (not lt!255153))))

(assert (=> d!210516 (= lt!255153 e!362867)))

(declare-fun res!259013 () Bool)

(assert (=> d!210516 (=> res!259013 e!362867)))

(assert (=> d!210516 (= res!259013 ((_ is Nil!5986) lt!255024))))

(assert (=> d!210516 (= (isPrefix!817 lt!255024 lt!255032) lt!255153)))

(declare-fun b!599045 () Bool)

(assert (=> b!599045 (= e!362866 (isPrefix!817 (tail!801 lt!255024) (tail!801 lt!255032)))))

(declare-fun b!599044 () Bool)

(declare-fun res!259016 () Bool)

(assert (=> b!599044 (=> (not res!259016) (not e!362866))))

(assert (=> b!599044 (= res!259016 (= (head!1272 lt!255024) (head!1272 lt!255032)))))

(declare-fun b!599046 () Bool)

(assert (=> b!599046 (= e!362868 (>= (size!4713 lt!255032) (size!4713 lt!255024)))))

(assert (= (and d!210516 (not res!259013)) b!599043))

(assert (= (and b!599043 res!259014) b!599044))

(assert (= (and b!599044 res!259016) b!599045))

(assert (= (and d!210516 (not res!259015)) b!599046))

(declare-fun m!862847 () Bool)

(assert (=> b!599045 m!862847))

(declare-fun m!862849 () Bool)

(assert (=> b!599045 m!862849))

(assert (=> b!599045 m!862847))

(assert (=> b!599045 m!862849))

(declare-fun m!862851 () Bool)

(assert (=> b!599045 m!862851))

(declare-fun m!862853 () Bool)

(assert (=> b!599044 m!862853))

(declare-fun m!862855 () Bool)

(assert (=> b!599044 m!862855))

(declare-fun m!862857 () Bool)

(assert (=> b!599046 m!862857))

(assert (=> b!599046 m!862395))

(assert (=> b!598706 d!210516))

(declare-fun b!599047 () Bool)

(declare-fun e!362870 () Bool)

(declare-fun e!362869 () Bool)

(assert (=> b!599047 (= e!362870 e!362869)))

(declare-fun res!259018 () Bool)

(assert (=> b!599047 (=> (not res!259018) (not e!362869))))

(assert (=> b!599047 (= res!259018 (not ((_ is Nil!5986) input!2705)))))

(declare-fun d!210518 () Bool)

(declare-fun e!362871 () Bool)

(assert (=> d!210518 e!362871))

(declare-fun res!259019 () Bool)

(assert (=> d!210518 (=> res!259019 e!362871)))

(declare-fun lt!255154 () Bool)

(assert (=> d!210518 (= res!259019 (not lt!255154))))

(assert (=> d!210518 (= lt!255154 e!362870)))

(declare-fun res!259017 () Bool)

(assert (=> d!210518 (=> res!259017 e!362870)))

(assert (=> d!210518 (= res!259017 ((_ is Nil!5986) input!2705))))

(assert (=> d!210518 (= (isPrefix!817 input!2705 input!2705) lt!255154)))

(declare-fun b!599049 () Bool)

(assert (=> b!599049 (= e!362869 (isPrefix!817 (tail!801 input!2705) (tail!801 input!2705)))))

(declare-fun b!599048 () Bool)

(declare-fun res!259020 () Bool)

(assert (=> b!599048 (=> (not res!259020) (not e!362869))))

(assert (=> b!599048 (= res!259020 (= (head!1272 input!2705) (head!1272 input!2705)))))

(declare-fun b!599050 () Bool)

(assert (=> b!599050 (= e!362871 (>= (size!4713 input!2705) (size!4713 input!2705)))))

(assert (= (and d!210518 (not res!259017)) b!599047))

(assert (= (and b!599047 res!259018) b!599048))

(assert (= (and b!599048 res!259020) b!599049))

(assert (= (and d!210518 (not res!259019)) b!599050))

(assert (=> b!599049 m!862833))

(assert (=> b!599049 m!862833))

(assert (=> b!599049 m!862833))

(assert (=> b!599049 m!862833))

(declare-fun m!862859 () Bool)

(assert (=> b!599049 m!862859))

(assert (=> b!599048 m!862837))

(assert (=> b!599048 m!862837))

(assert (=> b!599050 m!862739))

(assert (=> b!599050 m!862739))

(assert (=> b!598706 d!210518))

(declare-fun d!210520 () Bool)

(declare-fun e!362874 () Bool)

(assert (=> d!210520 e!362874))

(declare-fun res!259023 () Bool)

(assert (=> d!210520 (=> (not res!259023) (not e!362874))))

(assert (=> d!210520 (= res!259023 (semiInverseModEq!473 (toChars!1939 (transformation!1189 (rule!1959 (_1!3700 (v!16430 lt!255028))))) (toValue!2080 (transformation!1189 (rule!1959 (_1!3700 (v!16430 lt!255028)))))))))

(declare-fun Unit!10902 () Unit!10894)

(assert (=> d!210520 (= (lemmaInv!297 (transformation!1189 (rule!1959 (_1!3700 (v!16430 lt!255028))))) Unit!10902)))

(declare-fun b!599053 () Bool)

(assert (=> b!599053 (= e!362874 (equivClasses!456 (toChars!1939 (transformation!1189 (rule!1959 (_1!3700 (v!16430 lt!255028))))) (toValue!2080 (transformation!1189 (rule!1959 (_1!3700 (v!16430 lt!255028)))))))))

(assert (= (and d!210520 res!259023) b!599053))

(declare-fun m!862861 () Bool)

(assert (=> d!210520 m!862861))

(declare-fun m!862863 () Bool)

(assert (=> b!599053 m!862863))

(assert (=> b!598706 d!210520))

(declare-fun d!210522 () Bool)

(declare-fun res!259024 () Bool)

(declare-fun e!362875 () Bool)

(assert (=> d!210522 (=> (not res!259024) (not e!362875))))

(assert (=> d!210522 (= res!259024 (validRegex!526 (regex!1189 (rule!1959 token!491))))))

(assert (=> d!210522 (= (ruleValid!387 thiss!22590 (rule!1959 token!491)) e!362875)))

(declare-fun b!599054 () Bool)

(declare-fun res!259025 () Bool)

(assert (=> b!599054 (=> (not res!259025) (not e!362875))))

(assert (=> b!599054 (= res!259025 (not (nullable!431 (regex!1189 (rule!1959 token!491)))))))

(declare-fun b!599055 () Bool)

(assert (=> b!599055 (= e!362875 (not (= (tag!1451 (rule!1959 token!491)) (String!7809 ""))))))

(assert (= (and d!210522 res!259024) b!599054))

(assert (= (and b!599054 res!259025) b!599055))

(declare-fun m!862865 () Bool)

(assert (=> d!210522 m!862865))

(declare-fun m!862867 () Bool)

(assert (=> b!599054 m!862867))

(assert (=> b!598706 d!210522))

(declare-fun d!210524 () Bool)

(declare-fun lt!255155 () BalanceConc!3820)

(assert (=> d!210524 (= (list!2508 lt!255155) (originalCharacters!1228 (_1!3700 (v!16430 lt!255028))))))

(assert (=> d!210524 (= lt!255155 (dynLambda!3455 (toChars!1939 (transformation!1189 (rule!1959 (_1!3700 (v!16430 lt!255028))))) (value!38753 (_1!3700 (v!16430 lt!255028)))))))

(assert (=> d!210524 (= (charsOf!818 (_1!3700 (v!16430 lt!255028))) lt!255155)))

(declare-fun b_lambda!23631 () Bool)

(assert (=> (not b_lambda!23631) (not d!210524)))

(declare-fun tb!52247 () Bool)

(declare-fun t!79709 () Bool)

(assert (=> (and b!598700 (= (toChars!1939 (transformation!1189 (rule!1959 token!491))) (toChars!1939 (transformation!1189 (rule!1959 (_1!3700 (v!16430 lt!255028)))))) t!79709) tb!52247))

(declare-fun b!599056 () Bool)

(declare-fun e!362876 () Bool)

(declare-fun tp!186701 () Bool)

(assert (=> b!599056 (= e!362876 (and (inv!7592 (c!111202 (dynLambda!3455 (toChars!1939 (transformation!1189 (rule!1959 (_1!3700 (v!16430 lt!255028))))) (value!38753 (_1!3700 (v!16430 lt!255028)))))) tp!186701))))

(declare-fun result!58764 () Bool)

(assert (=> tb!52247 (= result!58764 (and (inv!7593 (dynLambda!3455 (toChars!1939 (transformation!1189 (rule!1959 (_1!3700 (v!16430 lt!255028))))) (value!38753 (_1!3700 (v!16430 lt!255028))))) e!362876))))

(assert (= tb!52247 b!599056))

(declare-fun m!862869 () Bool)

(assert (=> b!599056 m!862869))

(declare-fun m!862871 () Bool)

(assert (=> tb!52247 m!862871))

(assert (=> d!210524 t!79709))

(declare-fun b_and!59167 () Bool)

(assert (= b_and!59159 (and (=> t!79709 result!58764) b_and!59167)))

(declare-fun tb!52249 () Bool)

(declare-fun t!79711 () Bool)

(assert (=> (and b!598713 (= (toChars!1939 (transformation!1189 (h!11389 rules!3103))) (toChars!1939 (transformation!1189 (rule!1959 (_1!3700 (v!16430 lt!255028)))))) t!79711) tb!52249))

(declare-fun result!58766 () Bool)

(assert (= result!58766 result!58764))

(assert (=> d!210524 t!79711))

(declare-fun b_and!59169 () Bool)

(assert (= b_and!59161 (and (=> t!79711 result!58766) b_and!59169)))

(declare-fun m!862873 () Bool)

(assert (=> d!210524 m!862873))

(declare-fun m!862875 () Bool)

(assert (=> d!210524 m!862875))

(assert (=> b!598706 d!210524))

(declare-fun d!210526 () Bool)

(assert (=> d!210526 (isPrefix!817 input!2705 input!2705)))

(declare-fun lt!255158 () Unit!10894)

(declare-fun choose!4372 (List!5996 List!5996) Unit!10894)

(assert (=> d!210526 (= lt!255158 (choose!4372 input!2705 input!2705))))

(assert (=> d!210526 (= (lemmaIsPrefixRefl!553 input!2705 input!2705) lt!255158)))

(declare-fun bs!70781 () Bool)

(assert (= bs!70781 d!210526))

(assert (=> bs!70781 m!862421))

(declare-fun m!862877 () Bool)

(assert (=> bs!70781 m!862877))

(assert (=> b!598706 d!210526))

(declare-fun b!599058 () Bool)

(declare-fun e!362877 () List!5996)

(assert (=> b!599058 (= e!362877 (Cons!5986 (h!11387 lt!255021) (++!1677 (t!79673 lt!255021) (_2!3700 (v!16430 lt!255028)))))))

(declare-fun b!599059 () Bool)

(declare-fun res!259027 () Bool)

(declare-fun e!362878 () Bool)

(assert (=> b!599059 (=> (not res!259027) (not e!362878))))

(declare-fun lt!255159 () List!5996)

(assert (=> b!599059 (= res!259027 (= (size!4713 lt!255159) (+ (size!4713 lt!255021) (size!4713 (_2!3700 (v!16430 lt!255028))))))))

(declare-fun b!599057 () Bool)

(assert (=> b!599057 (= e!362877 (_2!3700 (v!16430 lt!255028)))))

(declare-fun b!599060 () Bool)

(assert (=> b!599060 (= e!362878 (or (not (= (_2!3700 (v!16430 lt!255028)) Nil!5986)) (= lt!255159 lt!255021)))))

(declare-fun d!210528 () Bool)

(assert (=> d!210528 e!362878))

(declare-fun res!259026 () Bool)

(assert (=> d!210528 (=> (not res!259026) (not e!362878))))

(assert (=> d!210528 (= res!259026 (= (content!1079 lt!255159) ((_ map or) (content!1079 lt!255021) (content!1079 (_2!3700 (v!16430 lt!255028))))))))

(assert (=> d!210528 (= lt!255159 e!362877)))

(declare-fun c!111248 () Bool)

(assert (=> d!210528 (= c!111248 ((_ is Nil!5986) lt!255021))))

(assert (=> d!210528 (= (++!1677 lt!255021 (_2!3700 (v!16430 lt!255028))) lt!255159)))

(assert (= (and d!210528 c!111248) b!599057))

(assert (= (and d!210528 (not c!111248)) b!599058))

(assert (= (and d!210528 res!259026) b!599059))

(assert (= (and b!599059 res!259027) b!599060))

(declare-fun m!862879 () Bool)

(assert (=> b!599058 m!862879))

(declare-fun m!862881 () Bool)

(assert (=> b!599059 m!862881))

(assert (=> b!599059 m!862371))

(declare-fun m!862883 () Bool)

(assert (=> b!599059 m!862883))

(declare-fun m!862885 () Bool)

(assert (=> d!210528 m!862885))

(declare-fun m!862887 () Bool)

(assert (=> d!210528 m!862887))

(declare-fun m!862889 () Bool)

(assert (=> d!210528 m!862889))

(assert (=> b!598706 d!210528))

(declare-fun d!210530 () Bool)

(assert (=> d!210530 (= (size!4712 token!491) (size!4713 (originalCharacters!1228 token!491)))))

(declare-fun Unit!10903 () Unit!10894)

(assert (=> d!210530 (= (lemmaCharactersSize!248 token!491) Unit!10903)))

(declare-fun bs!70782 () Bool)

(assert (= bs!70782 d!210530))

(assert (=> bs!70782 m!862333))

(assert (=> b!598706 d!210530))

(declare-fun d!210532 () Bool)

(declare-fun lt!255160 () Int)

(assert (=> d!210532 (>= lt!255160 0)))

(declare-fun e!362879 () Int)

(assert (=> d!210532 (= lt!255160 e!362879)))

(declare-fun c!111249 () Bool)

(assert (=> d!210532 (= c!111249 ((_ is Nil!5986) lt!255024))))

(assert (=> d!210532 (= (size!4713 lt!255024) lt!255160)))

(declare-fun b!599061 () Bool)

(assert (=> b!599061 (= e!362879 0)))

(declare-fun b!599062 () Bool)

(assert (=> b!599062 (= e!362879 (+ 1 (size!4713 (t!79673 lt!255024))))))

(assert (= (and d!210532 c!111249) b!599061))

(assert (= (and d!210532 (not c!111249)) b!599062))

(declare-fun m!862891 () Bool)

(assert (=> b!599062 m!862891))

(assert (=> b!598706 d!210532))

(declare-fun b!599063 () Bool)

(declare-fun e!362881 () Bool)

(declare-fun e!362880 () Bool)

(assert (=> b!599063 (= e!362881 e!362880)))

(declare-fun res!259029 () Bool)

(assert (=> b!599063 (=> (not res!259029) (not e!362880))))

(assert (=> b!599063 (= res!259029 (not ((_ is Nil!5986) lt!255032)))))

(declare-fun d!210534 () Bool)

(declare-fun e!362882 () Bool)

(assert (=> d!210534 e!362882))

(declare-fun res!259030 () Bool)

(assert (=> d!210534 (=> res!259030 e!362882)))

(declare-fun lt!255161 () Bool)

(assert (=> d!210534 (= res!259030 (not lt!255161))))

(assert (=> d!210534 (= lt!255161 e!362881)))

(declare-fun res!259028 () Bool)

(assert (=> d!210534 (=> res!259028 e!362881)))

(assert (=> d!210534 (= res!259028 ((_ is Nil!5986) input!2705))))

(assert (=> d!210534 (= (isPrefix!817 input!2705 lt!255032) lt!255161)))

(declare-fun b!599065 () Bool)

(assert (=> b!599065 (= e!362880 (isPrefix!817 (tail!801 input!2705) (tail!801 lt!255032)))))

(declare-fun b!599064 () Bool)

(declare-fun res!259031 () Bool)

(assert (=> b!599064 (=> (not res!259031) (not e!362880))))

(assert (=> b!599064 (= res!259031 (= (head!1272 input!2705) (head!1272 lt!255032)))))

(declare-fun b!599066 () Bool)

(assert (=> b!599066 (= e!362882 (>= (size!4713 lt!255032) (size!4713 input!2705)))))

(assert (= (and d!210534 (not res!259028)) b!599063))

(assert (= (and b!599063 res!259029) b!599064))

(assert (= (and b!599064 res!259031) b!599065))

(assert (= (and d!210534 (not res!259030)) b!599066))

(assert (=> b!599065 m!862833))

(assert (=> b!599065 m!862849))

(assert (=> b!599065 m!862833))

(assert (=> b!599065 m!862849))

(declare-fun m!862893 () Bool)

(assert (=> b!599065 m!862893))

(assert (=> b!599064 m!862837))

(assert (=> b!599064 m!862855))

(assert (=> b!599066 m!862857))

(assert (=> b!599066 m!862739))

(assert (=> b!598706 d!210534))

(declare-fun d!210536 () Bool)

(assert (=> d!210536 (= (size!4712 (_1!3700 (v!16430 lt!255028))) (size!4713 (originalCharacters!1228 (_1!3700 (v!16430 lt!255028)))))))

(declare-fun Unit!10904 () Unit!10894)

(assert (=> d!210536 (= (lemmaCharactersSize!248 (_1!3700 (v!16430 lt!255028))) Unit!10904)))

(declare-fun bs!70783 () Bool)

(assert (= bs!70783 d!210536))

(assert (=> bs!70783 m!862423))

(assert (=> b!598706 d!210536))

(declare-fun b!599067 () Bool)

(declare-fun e!362884 () Bool)

(declare-fun e!362883 () Bool)

(assert (=> b!599067 (= e!362884 e!362883)))

(declare-fun res!259033 () Bool)

(assert (=> b!599067 (=> (not res!259033) (not e!362883))))

(assert (=> b!599067 (= res!259033 (not ((_ is Nil!5986) lt!255039)))))

(declare-fun d!210538 () Bool)

(declare-fun e!362885 () Bool)

(assert (=> d!210538 e!362885))

(declare-fun res!259034 () Bool)

(assert (=> d!210538 (=> res!259034 e!362885)))

(declare-fun lt!255162 () Bool)

(assert (=> d!210538 (= res!259034 (not lt!255162))))

(assert (=> d!210538 (= lt!255162 e!362884)))

(declare-fun res!259032 () Bool)

(assert (=> d!210538 (=> res!259032 e!362884)))

(assert (=> d!210538 (= res!259032 ((_ is Nil!5986) lt!255021))))

(assert (=> d!210538 (= (isPrefix!817 lt!255021 lt!255039) lt!255162)))

(declare-fun b!599069 () Bool)

(assert (=> b!599069 (= e!362883 (isPrefix!817 (tail!801 lt!255021) (tail!801 lt!255039)))))

(declare-fun b!599068 () Bool)

(declare-fun res!259035 () Bool)

(assert (=> b!599068 (=> (not res!259035) (not e!362883))))

(assert (=> b!599068 (= res!259035 (= (head!1272 lt!255021) (head!1272 lt!255039)))))

(declare-fun b!599070 () Bool)

(assert (=> b!599070 (= e!362885 (>= (size!4713 lt!255039) (size!4713 lt!255021)))))

(assert (= (and d!210538 (not res!259032)) b!599067))

(assert (= (and b!599067 res!259033) b!599068))

(assert (= (and b!599068 res!259035) b!599069))

(assert (= (and d!210538 (not res!259034)) b!599070))

(declare-fun m!862895 () Bool)

(assert (=> b!599069 m!862895))

(declare-fun m!862897 () Bool)

(assert (=> b!599069 m!862897))

(assert (=> b!599069 m!862895))

(assert (=> b!599069 m!862897))

(declare-fun m!862899 () Bool)

(assert (=> b!599069 m!862899))

(declare-fun m!862901 () Bool)

(assert (=> b!599068 m!862901))

(declare-fun m!862903 () Bool)

(assert (=> b!599068 m!862903))

(declare-fun m!862905 () Bool)

(assert (=> b!599070 m!862905))

(assert (=> b!599070 m!862371))

(assert (=> b!598706 d!210538))

(declare-fun d!210540 () Bool)

(declare-fun lt!255163 () List!5996)

(assert (=> d!210540 (= (++!1677 lt!255021 lt!255163) input!2705)))

(declare-fun e!362886 () List!5996)

(assert (=> d!210540 (= lt!255163 e!362886)))

(declare-fun c!111250 () Bool)

(assert (=> d!210540 (= c!111250 ((_ is Cons!5986) lt!255021))))

(assert (=> d!210540 (>= (size!4713 input!2705) (size!4713 lt!255021))))

(assert (=> d!210540 (= (getSuffix!334 input!2705 lt!255021) lt!255163)))

(declare-fun b!599071 () Bool)

(assert (=> b!599071 (= e!362886 (getSuffix!334 (tail!801 input!2705) (t!79673 lt!255021)))))

(declare-fun b!599072 () Bool)

(assert (=> b!599072 (= e!362886 input!2705)))

(assert (= (and d!210540 c!111250) b!599071))

(assert (= (and d!210540 (not c!111250)) b!599072))

(declare-fun m!862907 () Bool)

(assert (=> d!210540 m!862907))

(assert (=> d!210540 m!862739))

(assert (=> d!210540 m!862371))

(assert (=> b!599071 m!862833))

(assert (=> b!599071 m!862833))

(declare-fun m!862909 () Bool)

(assert (=> b!599071 m!862909))

(assert (=> b!598706 d!210540))

(declare-fun d!210542 () Bool)

(assert (=> d!210542 (and (= lt!255024 input!2705) (= suffix!1342 suffix!1342))))

(declare-fun lt!255166 () Unit!10894)

(declare-fun choose!4373 (List!5996 List!5996 List!5996 List!5996) Unit!10894)

(assert (=> d!210542 (= lt!255166 (choose!4373 lt!255024 suffix!1342 input!2705 suffix!1342))))

(assert (=> d!210542 (= (++!1677 lt!255024 suffix!1342) (++!1677 input!2705 suffix!1342))))

(assert (=> d!210542 (= (lemmaConcatSameAndSameSizesThenSameLists!262 lt!255024 suffix!1342 input!2705 suffix!1342) lt!255166)))

(declare-fun bs!70784 () Bool)

(assert (= bs!70784 d!210542))

(declare-fun m!862911 () Bool)

(assert (=> bs!70784 m!862911))

(assert (=> bs!70784 m!862429))

(assert (=> bs!70784 m!862435))

(assert (=> b!598706 d!210542))

(declare-fun d!210544 () Bool)

(assert (=> d!210544 (= (_2!3700 (v!16430 lt!255028)) lt!255041)))

(declare-fun lt!255167 () Unit!10894)

(assert (=> d!210544 (= lt!255167 (choose!4371 lt!255021 (_2!3700 (v!16430 lt!255028)) lt!255021 lt!255041 input!2705))))

(assert (=> d!210544 (isPrefix!817 lt!255021 input!2705)))

(assert (=> d!210544 (= (lemmaSamePrefixThenSameSuffix!530 lt!255021 (_2!3700 (v!16430 lt!255028)) lt!255021 lt!255041 input!2705) lt!255167)))

(declare-fun bs!70785 () Bool)

(assert (= bs!70785 d!210544))

(declare-fun m!862913 () Bool)

(assert (=> bs!70785 m!862913))

(declare-fun m!862915 () Bool)

(assert (=> bs!70785 m!862915))

(assert (=> b!598706 d!210544))

(declare-fun d!210546 () Bool)

(assert (=> d!210546 (= (seqFromList!1365 lt!255021) (fromListB!600 lt!255021))))

(declare-fun bs!70786 () Bool)

(assert (= bs!70786 d!210546))

(declare-fun m!862917 () Bool)

(assert (=> bs!70786 m!862917))

(assert (=> b!598706 d!210546))

(declare-fun d!210548 () Bool)

(assert (=> d!210548 (ruleValid!387 thiss!22590 (rule!1959 (_1!3700 (v!16430 lt!255028))))))

(declare-fun lt!255170 () Unit!10894)

(declare-fun choose!4374 (LexerInterface!1075 Rule!2178 List!5998) Unit!10894)

(assert (=> d!210548 (= lt!255170 (choose!4374 thiss!22590 (rule!1959 (_1!3700 (v!16430 lt!255028))) rules!3103))))

(assert (=> d!210548 (contains!1399 rules!3103 (rule!1959 (_1!3700 (v!16430 lt!255028))))))

(assert (=> d!210548 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!234 thiss!22590 (rule!1959 (_1!3700 (v!16430 lt!255028))) rules!3103) lt!255170)))

(declare-fun bs!70787 () Bool)

(assert (= bs!70787 d!210548))

(assert (=> bs!70787 m!862409))

(declare-fun m!862919 () Bool)

(assert (=> bs!70787 m!862919))

(assert (=> bs!70787 m!862337))

(assert (=> b!598706 d!210548))

(declare-fun d!210550 () Bool)

(declare-fun lt!255171 () Int)

(assert (=> d!210550 (>= lt!255171 0)))

(declare-fun e!362887 () Int)

(assert (=> d!210550 (= lt!255171 e!362887)))

(declare-fun c!111251 () Bool)

(assert (=> d!210550 (= c!111251 ((_ is Nil!5986) lt!255021))))

(assert (=> d!210550 (= (size!4713 lt!255021) lt!255171)))

(declare-fun b!599073 () Bool)

(assert (=> b!599073 (= e!362887 0)))

(declare-fun b!599074 () Bool)

(assert (=> b!599074 (= e!362887 (+ 1 (size!4713 (t!79673 lt!255021))))))

(assert (= (and d!210550 c!111251) b!599073))

(assert (= (and d!210550 (not c!111251)) b!599074))

(declare-fun m!862921 () Bool)

(assert (=> b!599074 m!862921))

(assert (=> b!598706 d!210550))

(declare-fun d!210552 () Bool)

(assert (=> d!210552 (isPrefix!817 lt!255024 (++!1677 lt!255024 suffix!1342))))

(declare-fun lt!255174 () Unit!10894)

(declare-fun choose!4375 (List!5996 List!5996) Unit!10894)

(assert (=> d!210552 (= lt!255174 (choose!4375 lt!255024 suffix!1342))))

(assert (=> d!210552 (= (lemmaConcatTwoListThenFirstIsPrefix!662 lt!255024 suffix!1342) lt!255174)))

(declare-fun bs!70788 () Bool)

(assert (= bs!70788 d!210552))

(assert (=> bs!70788 m!862429))

(assert (=> bs!70788 m!862429))

(declare-fun m!862923 () Bool)

(assert (=> bs!70788 m!862923))

(declare-fun m!862925 () Bool)

(assert (=> bs!70788 m!862925))

(assert (=> b!598706 d!210552))

(declare-fun d!210554 () Bool)

(assert (=> d!210554 (ruleValid!387 thiss!22590 (rule!1959 token!491))))

(declare-fun lt!255175 () Unit!10894)

(assert (=> d!210554 (= lt!255175 (choose!4374 thiss!22590 (rule!1959 token!491) rules!3103))))

(assert (=> d!210554 (contains!1399 rules!3103 (rule!1959 token!491))))

(assert (=> d!210554 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!234 thiss!22590 (rule!1959 token!491) rules!3103) lt!255175)))

(declare-fun bs!70789 () Bool)

(assert (= bs!70789 d!210554))

(assert (=> bs!70789 m!862391))

(declare-fun m!862927 () Bool)

(assert (=> bs!70789 m!862927))

(declare-fun m!862929 () Bool)

(assert (=> bs!70789 m!862929))

(assert (=> b!598706 d!210554))

(declare-fun d!210556 () Bool)

(assert (=> d!210556 (isPrefix!817 input!2705 (++!1677 input!2705 suffix!1342))))

(declare-fun lt!255176 () Unit!10894)

(assert (=> d!210556 (= lt!255176 (choose!4375 input!2705 suffix!1342))))

(assert (=> d!210556 (= (lemmaConcatTwoListThenFirstIsPrefix!662 input!2705 suffix!1342) lt!255176)))

(declare-fun bs!70790 () Bool)

(assert (= bs!70790 d!210556))

(assert (=> bs!70790 m!862435))

(assert (=> bs!70790 m!862435))

(declare-fun m!862931 () Bool)

(assert (=> bs!70790 m!862931))

(declare-fun m!862933 () Bool)

(assert (=> bs!70790 m!862933))

(assert (=> b!598706 d!210556))

(declare-fun d!210558 () Bool)

(assert (=> d!210558 (isPrefix!817 lt!255021 (++!1677 lt!255021 (_2!3700 (v!16430 lt!255028))))))

(declare-fun lt!255177 () Unit!10894)

(assert (=> d!210558 (= lt!255177 (choose!4375 lt!255021 (_2!3700 (v!16430 lt!255028))))))

(assert (=> d!210558 (= (lemmaConcatTwoListThenFirstIsPrefix!662 lt!255021 (_2!3700 (v!16430 lt!255028))) lt!255177)))

(declare-fun bs!70791 () Bool)

(assert (= bs!70791 d!210558))

(assert (=> bs!70791 m!862403))

(assert (=> bs!70791 m!862403))

(declare-fun m!862935 () Bool)

(assert (=> bs!70791 m!862935))

(declare-fun m!862937 () Bool)

(assert (=> bs!70791 m!862937))

(assert (=> b!598706 d!210558))

(declare-fun d!210560 () Bool)

(assert (=> d!210560 (= (apply!1442 (transformation!1189 (rule!1959 (_1!3700 (v!16430 lt!255028)))) (seqFromList!1365 lt!255021)) (dynLambda!3456 (toValue!2080 (transformation!1189 (rule!1959 (_1!3700 (v!16430 lt!255028))))) (seqFromList!1365 lt!255021)))))

(declare-fun b_lambda!23633 () Bool)

(assert (=> (not b_lambda!23633) (not d!210560)))

(declare-fun tb!52251 () Bool)

(declare-fun t!79713 () Bool)

(assert (=> (and b!598700 (= (toValue!2080 (transformation!1189 (rule!1959 token!491))) (toValue!2080 (transformation!1189 (rule!1959 (_1!3700 (v!16430 lt!255028)))))) t!79713) tb!52251))

(declare-fun result!58768 () Bool)

(assert (=> tb!52251 (= result!58768 (inv!21 (dynLambda!3456 (toValue!2080 (transformation!1189 (rule!1959 (_1!3700 (v!16430 lt!255028))))) (seqFromList!1365 lt!255021))))))

(declare-fun m!862939 () Bool)

(assert (=> tb!52251 m!862939))

(assert (=> d!210560 t!79713))

(declare-fun b_and!59171 () Bool)

(assert (= b_and!59163 (and (=> t!79713 result!58768) b_and!59171)))

(declare-fun t!79715 () Bool)

(declare-fun tb!52253 () Bool)

(assert (=> (and b!598713 (= (toValue!2080 (transformation!1189 (h!11389 rules!3103))) (toValue!2080 (transformation!1189 (rule!1959 (_1!3700 (v!16430 lt!255028)))))) t!79715) tb!52253))

(declare-fun result!58770 () Bool)

(assert (= result!58770 result!58768))

(assert (=> d!210560 t!79715))

(declare-fun b_and!59173 () Bool)

(assert (= b_and!59165 (and (=> t!79715 result!58770) b_and!59173)))

(assert (=> d!210560 m!862387))

(declare-fun m!862941 () Bool)

(assert (=> d!210560 m!862941))

(assert (=> b!598706 d!210560))

(declare-fun d!210562 () Bool)

(declare-fun e!362889 () Bool)

(assert (=> d!210562 e!362889))

(declare-fun res!259036 () Bool)

(assert (=> d!210562 (=> (not res!259036) (not e!362889))))

(assert (=> d!210562 (= res!259036 (semiInverseModEq!473 (toChars!1939 (transformation!1189 (rule!1959 token!491))) (toValue!2080 (transformation!1189 (rule!1959 token!491)))))))

(declare-fun Unit!10905 () Unit!10894)

(assert (=> d!210562 (= (lemmaInv!297 (transformation!1189 (rule!1959 token!491))) Unit!10905)))

(declare-fun b!599075 () Bool)

(assert (=> b!599075 (= e!362889 (equivClasses!456 (toChars!1939 (transformation!1189 (rule!1959 token!491))) (toValue!2080 (transformation!1189 (rule!1959 token!491)))))))

(assert (= (and d!210562 res!259036) b!599075))

(assert (=> d!210562 m!862757))

(assert (=> b!599075 m!862759))

(assert (=> b!598706 d!210562))

(declare-fun d!210564 () Bool)

(declare-fun lt!255178 () Int)

(assert (=> d!210564 (>= lt!255178 0)))

(declare-fun e!362890 () Int)

(assert (=> d!210564 (= lt!255178 e!362890)))

(declare-fun c!111252 () Bool)

(assert (=> d!210564 (= c!111252 ((_ is Nil!5986) (originalCharacters!1228 token!491)))))

(assert (=> d!210564 (= (size!4713 (originalCharacters!1228 token!491)) lt!255178)))

(declare-fun b!599076 () Bool)

(assert (=> b!599076 (= e!362890 0)))

(declare-fun b!599077 () Bool)

(assert (=> b!599077 (= e!362890 (+ 1 (size!4713 (t!79673 (originalCharacters!1228 token!491)))))))

(assert (= (and d!210564 c!111252) b!599076))

(assert (= (and d!210564 (not c!111252)) b!599077))

(declare-fun m!862943 () Bool)

(assert (=> b!599077 m!862943))

(assert (=> b!598707 d!210564))

(declare-fun e!362893 () Bool)

(assert (=> b!598719 (= tp!186653 e!362893)))

(declare-fun b!599089 () Bool)

(declare-fun tp!186714 () Bool)

(declare-fun tp!186713 () Bool)

(assert (=> b!599089 (= e!362893 (and tp!186714 tp!186713))))

(declare-fun b!599090 () Bool)

(declare-fun tp!186716 () Bool)

(assert (=> b!599090 (= e!362893 tp!186716)))

(declare-fun b!599091 () Bool)

(declare-fun tp!186712 () Bool)

(declare-fun tp!186715 () Bool)

(assert (=> b!599091 (= e!362893 (and tp!186712 tp!186715))))

(declare-fun b!599088 () Bool)

(assert (=> b!599088 (= e!362893 tp_is_empty!3401)))

(assert (= (and b!598719 ((_ is ElementMatch!1523) (regex!1189 (h!11389 rules!3103)))) b!599088))

(assert (= (and b!598719 ((_ is Concat!2736) (regex!1189 (h!11389 rules!3103)))) b!599089))

(assert (= (and b!598719 ((_ is Star!1523) (regex!1189 (h!11389 rules!3103)))) b!599090))

(assert (= (and b!598719 ((_ is Union!1523) (regex!1189 (h!11389 rules!3103)))) b!599091))

(declare-fun b!599102 () Bool)

(declare-fun b_free!17033 () Bool)

(declare-fun b_next!17049 () Bool)

(assert (=> b!599102 (= b_free!17033 (not b_next!17049))))

(declare-fun t!79717 () Bool)

(declare-fun tb!52255 () Bool)

(assert (=> (and b!599102 (= (toValue!2080 (transformation!1189 (h!11389 (t!79675 rules!3103)))) (toValue!2080 (transformation!1189 (rule!1959 token!491)))) t!79717) tb!52255))

(declare-fun result!58776 () Bool)

(assert (= result!58776 result!58758))

(assert (=> d!210494 t!79717))

(declare-fun tb!52257 () Bool)

(declare-fun t!79719 () Bool)

(assert (=> (and b!599102 (= (toValue!2080 (transformation!1189 (h!11389 (t!79675 rules!3103)))) (toValue!2080 (transformation!1189 (rule!1959 (_1!3700 (v!16430 lt!255028)))))) t!79719) tb!52257))

(declare-fun result!58778 () Bool)

(assert (= result!58778 result!58768))

(assert (=> d!210560 t!79719))

(declare-fun b_and!59175 () Bool)

(declare-fun tp!186725 () Bool)

(assert (=> b!599102 (= tp!186725 (and (=> t!79717 result!58776) (=> t!79719 result!58778) b_and!59175))))

(declare-fun b_free!17035 () Bool)

(declare-fun b_next!17051 () Bool)

(assert (=> b!599102 (= b_free!17035 (not b_next!17051))))

(declare-fun t!79721 () Bool)

(declare-fun tb!52259 () Bool)

(assert (=> (and b!599102 (= (toChars!1939 (transformation!1189 (h!11389 (t!79675 rules!3103)))) (toChars!1939 (transformation!1189 (rule!1959 token!491)))) t!79721) tb!52259))

(declare-fun result!58780 () Bool)

(assert (= result!58780 result!58752))

(assert (=> d!210482 t!79721))

(assert (=> b!598982 t!79721))

(declare-fun t!79723 () Bool)

(declare-fun tb!52261 () Bool)

(assert (=> (and b!599102 (= (toChars!1939 (transformation!1189 (h!11389 (t!79675 rules!3103)))) (toChars!1939 (transformation!1189 (rule!1959 (_1!3700 (v!16430 lt!255028)))))) t!79723) tb!52261))

(declare-fun result!58782 () Bool)

(assert (= result!58782 result!58764))

(assert (=> d!210524 t!79723))

(declare-fun tp!186728 () Bool)

(declare-fun b_and!59177 () Bool)

(assert (=> b!599102 (= tp!186728 (and (=> t!79721 result!58780) (=> t!79723 result!58782) b_and!59177))))

(declare-fun e!362905 () Bool)

(assert (=> b!599102 (= e!362905 (and tp!186725 tp!186728))))

(declare-fun b!599101 () Bool)

(declare-fun tp!186726 () Bool)

(declare-fun e!362902 () Bool)

(assert (=> b!599101 (= e!362902 (and tp!186726 (inv!7585 (tag!1451 (h!11389 (t!79675 rules!3103)))) (inv!7589 (transformation!1189 (h!11389 (t!79675 rules!3103)))) e!362905))))

(declare-fun b!599100 () Bool)

(declare-fun e!362903 () Bool)

(declare-fun tp!186727 () Bool)

(assert (=> b!599100 (= e!362903 (and e!362902 tp!186727))))

(assert (=> b!598714 (= tp!186647 e!362903)))

(assert (= b!599101 b!599102))

(assert (= b!599100 b!599101))

(assert (= (and b!598714 ((_ is Cons!5988) (t!79675 rules!3103))) b!599100))

(declare-fun m!862945 () Bool)

(assert (=> b!599101 m!862945))

(declare-fun m!862947 () Bool)

(assert (=> b!599101 m!862947))

(declare-fun e!362906 () Bool)

(assert (=> b!598721 (= tp!186649 e!362906)))

(declare-fun b!599104 () Bool)

(declare-fun tp!186731 () Bool)

(declare-fun tp!186730 () Bool)

(assert (=> b!599104 (= e!362906 (and tp!186731 tp!186730))))

(declare-fun b!599105 () Bool)

(declare-fun tp!186733 () Bool)

(assert (=> b!599105 (= e!362906 tp!186733)))

(declare-fun b!599106 () Bool)

(declare-fun tp!186729 () Bool)

(declare-fun tp!186732 () Bool)

(assert (=> b!599106 (= e!362906 (and tp!186729 tp!186732))))

(declare-fun b!599103 () Bool)

(assert (=> b!599103 (= e!362906 tp_is_empty!3401)))

(assert (= (and b!598721 ((_ is ElementMatch!1523) (regex!1189 (rule!1959 token!491)))) b!599103))

(assert (= (and b!598721 ((_ is Concat!2736) (regex!1189 (rule!1959 token!491)))) b!599104))

(assert (= (and b!598721 ((_ is Star!1523) (regex!1189 (rule!1959 token!491)))) b!599105))

(assert (= (and b!598721 ((_ is Union!1523) (regex!1189 (rule!1959 token!491)))) b!599106))

(declare-fun b!599111 () Bool)

(declare-fun e!362909 () Bool)

(declare-fun tp!186736 () Bool)

(assert (=> b!599111 (= e!362909 (and tp_is_empty!3401 tp!186736))))

(assert (=> b!598716 (= tp!186648 e!362909)))

(assert (= (and b!598716 ((_ is Cons!5986) (originalCharacters!1228 token!491))) b!599111))

(declare-fun b!599112 () Bool)

(declare-fun e!362910 () Bool)

(declare-fun tp!186737 () Bool)

(assert (=> b!599112 (= e!362910 (and tp_is_empty!3401 tp!186737))))

(assert (=> b!598701 (= tp!186654 e!362910)))

(assert (= (and b!598701 ((_ is Cons!5986) (t!79673 input!2705))) b!599112))

(declare-fun b!599113 () Bool)

(declare-fun e!362911 () Bool)

(declare-fun tp!186738 () Bool)

(assert (=> b!599113 (= e!362911 (and tp_is_empty!3401 tp!186738))))

(assert (=> b!598702 (= tp!186656 e!362911)))

(assert (= (and b!598702 ((_ is Cons!5986) (t!79673 suffix!1342))) b!599113))

(declare-fun b_lambda!23635 () Bool)

(assert (= b_lambda!23629 (or (and b!598700 b_free!17021) (and b!598713 b_free!17025 (= (toValue!2080 (transformation!1189 (h!11389 rules!3103))) (toValue!2080 (transformation!1189 (rule!1959 token!491))))) (and b!599102 b_free!17033 (= (toValue!2080 (transformation!1189 (h!11389 (t!79675 rules!3103)))) (toValue!2080 (transformation!1189 (rule!1959 token!491))))) b_lambda!23635)))

(declare-fun b_lambda!23637 () Bool)

(assert (= b_lambda!23627 (or (and b!598700 b_free!17023) (and b!598713 b_free!17027 (= (toChars!1939 (transformation!1189 (h!11389 rules!3103))) (toChars!1939 (transformation!1189 (rule!1959 token!491))))) (and b!599102 b_free!17035 (= (toChars!1939 (transformation!1189 (h!11389 (t!79675 rules!3103)))) (toChars!1939 (transformation!1189 (rule!1959 token!491))))) b_lambda!23637)))

(declare-fun b_lambda!23639 () Bool)

(assert (= b_lambda!23625 (or (and b!598700 b_free!17023) (and b!598713 b_free!17027 (= (toChars!1939 (transformation!1189 (h!11389 rules!3103))) (toChars!1939 (transformation!1189 (rule!1959 token!491))))) (and b!599102 b_free!17035 (= (toChars!1939 (transformation!1189 (h!11389 (t!79675 rules!3103)))) (toChars!1939 (transformation!1189 (rule!1959 token!491))))) b_lambda!23639)))

(check-sat (not b!599053) (not b!598965) (not b!598952) b_and!59171 (not b!598953) (not tb!52247) (not d!210556) (not b!599002) (not b!598970) b_and!59169 (not b!599090) (not b!599113) (not b!599009) (not b!599059) (not d!210514) (not b!599048) (not b_lambda!23637) (not b!599045) (not b!598969) (not d!210480) (not b!598983) (not d!210548) (not d!210558) (not b!598951) (not d!210482) (not b!598948) (not b!599004) (not b!599064) (not b!599112) (not b!599050) (not d!210530) (not d!210524) (not d!210386) (not d!210490) (not d!210512) (not d!210520) tp_is_empty!3401 (not b!599003) (not b!598949) (not b!599005) (not b!598977) b_and!59175 (not d!210492) (not d!210488) (not tb!52251) (not tb!52243) (not b!598781) (not d!210484) (not d!210544) (not d!210522) (not b_lambda!23635) (not b!599104) (not b!599066) (not d!210536) (not d!210562) (not b_next!17043) b_and!59167 (not bm!40440) (not d!210496) (not b!599021) (not d!210486) (not tb!52239) (not d!210472) (not b!598995) (not b!599071) (not b!598999) (not d!210504) (not b_next!17041) (not b!599069) (not b!599056) (not b_next!17049) (not b!599046) (not b_next!17037) (not b!599089) (not b!599020) (not b!598801) (not b!599023) (not b!599044) (not b!599058) (not b!599000) (not b!598988) (not b_next!17039) (not b!598972) (not b!598982) (not b!599100) (not b_next!17051) (not d!210552) (not b!598954) b_and!59173 (not b!599091) (not b!598955) (not b!599111) (not b!599041) (not d!210376) (not b!599077) (not b!599035) (not d!210478) (not b!599074) (not b!598966) b_and!59177 (not b!599105) (not bm!40439) (not b!599068) (not d!210540) (not b!599062) (not d!210542) (not d!210554) (not b_lambda!23639) (not b!599006) (not b!599034) (not d!210526) (not b!599065) (not b!599036) (not d!210394) (not b!599070) (not b!599001) (not b!599101) (not b!599049) (not d!210528) (not b_lambda!23631) (not b!599106) (not b!599075) (not b!599054) (not b!598950) (not d!210546) (not b_lambda!23633) (not d!210474))
(check-sat b_and!59175 (not b_next!17041) (not b_next!17049) (not b_next!17037) b_and!59173 b_and!59177 b_and!59171 b_and!59169 (not b_next!17043) b_and!59167 (not b_next!17039) (not b_next!17051))
(get-model)

(declare-fun d!210600 () Bool)

(assert (=> d!210600 (= (isEmpty!4321 (originalCharacters!1228 token!491)) ((_ is Nil!5986) (originalCharacters!1228 token!491)))))

(assert (=> d!210484 d!210600))

(declare-fun d!210602 () Bool)

(assert (=> d!210602 true))

(declare-fun order!4781 () Int)

(declare-fun order!4779 () Int)

(declare-fun lambda!16017 () Int)

(declare-fun dynLambda!3461 (Int Int) Int)

(declare-fun dynLambda!3462 (Int Int) Int)

(assert (=> d!210602 (< (dynLambda!3461 order!4779 (toValue!2080 (transformation!1189 (rule!1959 token!491)))) (dynLambda!3462 order!4781 lambda!16017))))

(declare-fun Forall2!226 (Int) Bool)

(assert (=> d!210602 (= (equivClasses!456 (toChars!1939 (transformation!1189 (rule!1959 token!491))) (toValue!2080 (transformation!1189 (rule!1959 token!491)))) (Forall2!226 lambda!16017))))

(declare-fun bs!70829 () Bool)

(assert (= bs!70829 d!210602))

(declare-fun m!863501 () Bool)

(assert (=> bs!70829 m!863501))

(assert (=> b!599075 d!210602))

(declare-fun d!210816 () Bool)

(assert (=> d!210816 (= (list!2508 lt!255155) (list!2510 (c!111202 lt!255155)))))

(declare-fun bs!70830 () Bool)

(assert (= bs!70830 d!210816))

(declare-fun m!863503 () Bool)

(assert (=> bs!70830 m!863503))

(assert (=> d!210524 d!210816))

(declare-fun d!210818 () Bool)

(declare-fun c!111335 () Bool)

(assert (=> d!210818 (= c!111335 ((_ is Nil!5988) rules!3103))))

(declare-fun e!363150 () (InoxSet Rule!2178))

(assert (=> d!210818 (= (content!1080 rules!3103) e!363150)))

(declare-fun b!599539 () Bool)

(assert (=> b!599539 (= e!363150 ((as const (Array Rule!2178 Bool)) false))))

(declare-fun b!599540 () Bool)

(assert (=> b!599540 (= e!363150 ((_ map or) (store ((as const (Array Rule!2178 Bool)) false) (h!11389 rules!3103) true) (content!1080 (t!79675 rules!3103))))))

(assert (= (and d!210818 c!111335) b!599539))

(assert (= (and d!210818 (not c!111335)) b!599540))

(declare-fun m!863505 () Bool)

(assert (=> b!599540 m!863505))

(declare-fun m!863507 () Bool)

(assert (=> b!599540 m!863507))

(assert (=> d!210492 d!210818))

(declare-fun d!210820 () Bool)

(declare-fun lt!255265 () Int)

(assert (=> d!210820 (>= lt!255265 0)))

(declare-fun e!363151 () Int)

(assert (=> d!210820 (= lt!255265 e!363151)))

(declare-fun c!111336 () Bool)

(assert (=> d!210820 (= c!111336 ((_ is Nil!5986) (t!79673 (originalCharacters!1228 (_1!3700 (v!16430 lt!255028))))))))

(assert (=> d!210820 (= (size!4713 (t!79673 (originalCharacters!1228 (_1!3700 (v!16430 lt!255028))))) lt!255265)))

(declare-fun b!599541 () Bool)

(assert (=> b!599541 (= e!363151 0)))

(declare-fun b!599542 () Bool)

(assert (=> b!599542 (= e!363151 (+ 1 (size!4713 (t!79673 (t!79673 (originalCharacters!1228 (_1!3700 (v!16430 lt!255028))))))))))

(assert (= (and d!210820 c!111336) b!599541))

(assert (= (and d!210820 (not c!111336)) b!599542))

(declare-fun m!863509 () Bool)

(assert (=> b!599542 m!863509))

(assert (=> b!598801 d!210820))

(declare-fun bs!70831 () Bool)

(declare-fun d!210822 () Bool)

(assert (= bs!70831 (and d!210822 d!210602)))

(declare-fun lambda!16018 () Int)

(assert (=> bs!70831 (= (= (toValue!2080 (transformation!1189 (rule!1959 (_1!3700 (v!16430 lt!255028))))) (toValue!2080 (transformation!1189 (rule!1959 token!491)))) (= lambda!16018 lambda!16017))))

(assert (=> d!210822 true))

(assert (=> d!210822 (< (dynLambda!3461 order!4779 (toValue!2080 (transformation!1189 (rule!1959 (_1!3700 (v!16430 lt!255028)))))) (dynLambda!3462 order!4781 lambda!16018))))

(assert (=> d!210822 (= (equivClasses!456 (toChars!1939 (transformation!1189 (rule!1959 (_1!3700 (v!16430 lt!255028))))) (toValue!2080 (transformation!1189 (rule!1959 (_1!3700 (v!16430 lt!255028)))))) (Forall2!226 lambda!16018))))

(declare-fun bs!70832 () Bool)

(assert (= bs!70832 d!210822))

(declare-fun m!863511 () Bool)

(assert (=> bs!70832 m!863511))

(assert (=> b!599053 d!210822))

(declare-fun b!599544 () Bool)

(declare-fun e!363152 () List!5996)

(assert (=> b!599544 (= e!363152 (Cons!5986 (h!11387 (list!2508 (charsOf!818 (_1!3700 (get!2298 lt!255146))))) (++!1677 (t!79673 (list!2508 (charsOf!818 (_1!3700 (get!2298 lt!255146))))) (_2!3700 (get!2298 lt!255146)))))))

(declare-fun b!599545 () Bool)

(declare-fun res!259225 () Bool)

(declare-fun e!363153 () Bool)

(assert (=> b!599545 (=> (not res!259225) (not e!363153))))

(declare-fun lt!255266 () List!5996)

(assert (=> b!599545 (= res!259225 (= (size!4713 lt!255266) (+ (size!4713 (list!2508 (charsOf!818 (_1!3700 (get!2298 lt!255146))))) (size!4713 (_2!3700 (get!2298 lt!255146))))))))

(declare-fun b!599543 () Bool)

(assert (=> b!599543 (= e!363152 (_2!3700 (get!2298 lt!255146)))))

(declare-fun b!599546 () Bool)

(assert (=> b!599546 (= e!363153 (or (not (= (_2!3700 (get!2298 lt!255146)) Nil!5986)) (= lt!255266 (list!2508 (charsOf!818 (_1!3700 (get!2298 lt!255146)))))))))

(declare-fun d!210824 () Bool)

(assert (=> d!210824 e!363153))

(declare-fun res!259224 () Bool)

(assert (=> d!210824 (=> (not res!259224) (not e!363153))))

(assert (=> d!210824 (= res!259224 (= (content!1079 lt!255266) ((_ map or) (content!1079 (list!2508 (charsOf!818 (_1!3700 (get!2298 lt!255146))))) (content!1079 (_2!3700 (get!2298 lt!255146))))))))

(assert (=> d!210824 (= lt!255266 e!363152)))

(declare-fun c!111337 () Bool)

(assert (=> d!210824 (= c!111337 ((_ is Nil!5986) (list!2508 (charsOf!818 (_1!3700 (get!2298 lt!255146))))))))

(assert (=> d!210824 (= (++!1677 (list!2508 (charsOf!818 (_1!3700 (get!2298 lt!255146)))) (_2!3700 (get!2298 lt!255146))) lt!255266)))

(assert (= (and d!210824 c!111337) b!599543))

(assert (= (and d!210824 (not c!111337)) b!599544))

(assert (= (and d!210824 res!259224) b!599545))

(assert (= (and b!599545 res!259225) b!599546))

(declare-fun m!863513 () Bool)

(assert (=> b!599544 m!863513))

(declare-fun m!863515 () Bool)

(assert (=> b!599545 m!863515))

(assert (=> b!599545 m!862815))

(declare-fun m!863517 () Bool)

(assert (=> b!599545 m!863517))

(assert (=> b!599545 m!862801))

(declare-fun m!863519 () Bool)

(assert (=> d!210824 m!863519))

(assert (=> d!210824 m!862815))

(declare-fun m!863521 () Bool)

(assert (=> d!210824 m!863521))

(declare-fun m!863523 () Bool)

(assert (=> d!210824 m!863523))

(assert (=> b!599000 d!210824))

(declare-fun d!210826 () Bool)

(assert (=> d!210826 (= (list!2508 (charsOf!818 (_1!3700 (get!2298 lt!255146)))) (list!2510 (c!111202 (charsOf!818 (_1!3700 (get!2298 lt!255146))))))))

(declare-fun bs!70833 () Bool)

(assert (= bs!70833 d!210826))

(declare-fun m!863525 () Bool)

(assert (=> bs!70833 m!863525))

(assert (=> b!599000 d!210826))

(declare-fun d!210828 () Bool)

(declare-fun lt!255267 () BalanceConc!3820)

(assert (=> d!210828 (= (list!2508 lt!255267) (originalCharacters!1228 (_1!3700 (get!2298 lt!255146))))))

(assert (=> d!210828 (= lt!255267 (dynLambda!3455 (toChars!1939 (transformation!1189 (rule!1959 (_1!3700 (get!2298 lt!255146))))) (value!38753 (_1!3700 (get!2298 lt!255146)))))))

(assert (=> d!210828 (= (charsOf!818 (_1!3700 (get!2298 lt!255146))) lt!255267)))

(declare-fun b_lambda!23653 () Bool)

(assert (=> (not b_lambda!23653) (not d!210828)))

(declare-fun t!79768 () Bool)

(declare-fun tb!52303 () Bool)

(assert (=> (and b!598700 (= (toChars!1939 (transformation!1189 (rule!1959 token!491))) (toChars!1939 (transformation!1189 (rule!1959 (_1!3700 (get!2298 lt!255146)))))) t!79768) tb!52303))

(declare-fun b!599547 () Bool)

(declare-fun e!363154 () Bool)

(declare-fun tp!186815 () Bool)

(assert (=> b!599547 (= e!363154 (and (inv!7592 (c!111202 (dynLambda!3455 (toChars!1939 (transformation!1189 (rule!1959 (_1!3700 (get!2298 lt!255146))))) (value!38753 (_1!3700 (get!2298 lt!255146)))))) tp!186815))))

(declare-fun result!58828 () Bool)

(assert (=> tb!52303 (= result!58828 (and (inv!7593 (dynLambda!3455 (toChars!1939 (transformation!1189 (rule!1959 (_1!3700 (get!2298 lt!255146))))) (value!38753 (_1!3700 (get!2298 lt!255146))))) e!363154))))

(assert (= tb!52303 b!599547))

(declare-fun m!863527 () Bool)

(assert (=> b!599547 m!863527))

(declare-fun m!863529 () Bool)

(assert (=> tb!52303 m!863529))

(assert (=> d!210828 t!79768))

(declare-fun b_and!59207 () Bool)

(assert (= b_and!59167 (and (=> t!79768 result!58828) b_and!59207)))

(declare-fun t!79770 () Bool)

(declare-fun tb!52305 () Bool)

(assert (=> (and b!598713 (= (toChars!1939 (transformation!1189 (h!11389 rules!3103))) (toChars!1939 (transformation!1189 (rule!1959 (_1!3700 (get!2298 lt!255146)))))) t!79770) tb!52305))

(declare-fun result!58830 () Bool)

(assert (= result!58830 result!58828))

(assert (=> d!210828 t!79770))

(declare-fun b_and!59209 () Bool)

(assert (= b_and!59169 (and (=> t!79770 result!58830) b_and!59209)))

(declare-fun tb!52307 () Bool)

(declare-fun t!79772 () Bool)

(assert (=> (and b!599102 (= (toChars!1939 (transformation!1189 (h!11389 (t!79675 rules!3103)))) (toChars!1939 (transformation!1189 (rule!1959 (_1!3700 (get!2298 lt!255146)))))) t!79772) tb!52307))

(declare-fun result!58832 () Bool)

(assert (= result!58832 result!58828))

(assert (=> d!210828 t!79772))

(declare-fun b_and!59211 () Bool)

(assert (= b_and!59177 (and (=> t!79772 result!58832) b_and!59211)))

(declare-fun m!863531 () Bool)

(assert (=> d!210828 m!863531))

(declare-fun m!863533 () Bool)

(assert (=> d!210828 m!863533))

(assert (=> b!599000 d!210828))

(declare-fun d!210830 () Bool)

(assert (=> d!210830 (= (get!2298 lt!255146) (v!16430 lt!255146))))

(assert (=> b!599000 d!210830))

(declare-fun b!599559 () Bool)

(declare-fun e!363160 () List!5996)

(assert (=> b!599559 (= e!363160 (++!1677 (list!2510 (left!4813 (c!111202 (charsOf!818 token!491)))) (list!2510 (right!5143 (c!111202 (charsOf!818 token!491))))))))

(declare-fun b!599558 () Bool)

(declare-fun list!2512 (IArray!3813) List!5996)

(assert (=> b!599558 (= e!363160 (list!2512 (xs!4543 (c!111202 (charsOf!818 token!491)))))))

(declare-fun d!210832 () Bool)

(declare-fun c!111342 () Bool)

(assert (=> d!210832 (= c!111342 ((_ is Empty!1906) (c!111202 (charsOf!818 token!491))))))

(declare-fun e!363159 () List!5996)

(assert (=> d!210832 (= (list!2510 (c!111202 (charsOf!818 token!491))) e!363159)))

(declare-fun b!599557 () Bool)

(assert (=> b!599557 (= e!363159 e!363160)))

(declare-fun c!111343 () Bool)

(assert (=> b!599557 (= c!111343 ((_ is Leaf!3008) (c!111202 (charsOf!818 token!491))))))

(declare-fun b!599556 () Bool)

(assert (=> b!599556 (= e!363159 Nil!5986)))

(assert (= (and d!210832 c!111342) b!599556))

(assert (= (and d!210832 (not c!111342)) b!599557))

(assert (= (and b!599557 c!111343) b!599558))

(assert (= (and b!599557 (not c!111343)) b!599559))

(declare-fun m!863535 () Bool)

(assert (=> b!599559 m!863535))

(declare-fun m!863537 () Bool)

(assert (=> b!599559 m!863537))

(assert (=> b!599559 m!863535))

(assert (=> b!599559 m!863537))

(declare-fun m!863539 () Bool)

(assert (=> b!599559 m!863539))

(declare-fun m!863541 () Bool)

(assert (=> b!599558 m!863541))

(assert (=> d!210480 d!210832))

(declare-fun d!210834 () Bool)

(assert (=> d!210834 (= (isEmpty!4324 lt!255030) (not ((_ is Some!1539) lt!255030)))))

(assert (=> d!210386 d!210834))

(declare-fun d!210836 () Bool)

(assert (=> d!210836 (= (head!1272 lt!255024) (h!11387 lt!255024))))

(assert (=> b!599044 d!210836))

(declare-fun d!210838 () Bool)

(assert (=> d!210838 (= (head!1272 lt!255032) (h!11387 lt!255032))))

(assert (=> b!599044 d!210838))

(declare-fun d!210840 () Bool)

(declare-fun lt!255268 () Int)

(assert (=> d!210840 (>= lt!255268 0)))

(declare-fun e!363161 () Int)

(assert (=> d!210840 (= lt!255268 e!363161)))

(declare-fun c!111344 () Bool)

(assert (=> d!210840 (= c!111344 ((_ is Nil!5986) lt!255032))))

(assert (=> d!210840 (= (size!4713 lt!255032) lt!255268)))

(declare-fun b!599560 () Bool)

(assert (=> b!599560 (= e!363161 0)))

(declare-fun b!599561 () Bool)

(assert (=> b!599561 (= e!363161 (+ 1 (size!4713 (t!79673 lt!255032))))))

(assert (= (and d!210840 c!111344) b!599560))

(assert (= (and d!210840 (not c!111344)) b!599561))

(declare-fun m!863543 () Bool)

(assert (=> b!599561 m!863543))

(assert (=> b!599066 d!210840))

(declare-fun d!210842 () Bool)

(declare-fun lt!255269 () Int)

(assert (=> d!210842 (>= lt!255269 0)))

(declare-fun e!363162 () Int)

(assert (=> d!210842 (= lt!255269 e!363162)))

(declare-fun c!111345 () Bool)

(assert (=> d!210842 (= c!111345 ((_ is Nil!5986) input!2705))))

(assert (=> d!210842 (= (size!4713 input!2705) lt!255269)))

(declare-fun b!599562 () Bool)

(assert (=> b!599562 (= e!363162 0)))

(declare-fun b!599563 () Bool)

(assert (=> b!599563 (= e!363162 (+ 1 (size!4713 (t!79673 input!2705))))))

(assert (= (and d!210842 c!111345) b!599562))

(assert (= (and d!210842 (not c!111345)) b!599563))

(declare-fun m!863545 () Bool)

(assert (=> b!599563 m!863545))

(assert (=> b!599066 d!210842))

(declare-fun d!210844 () Bool)

(declare-fun lt!255270 () List!5996)

(assert (=> d!210844 (= (++!1677 (t!79673 lt!255024) lt!255270) (tail!801 lt!255016))))

(declare-fun e!363163 () List!5996)

(assert (=> d!210844 (= lt!255270 e!363163)))

(declare-fun c!111346 () Bool)

(assert (=> d!210844 (= c!111346 ((_ is Cons!5986) (t!79673 lt!255024)))))

(assert (=> d!210844 (>= (size!4713 (tail!801 lt!255016)) (size!4713 (t!79673 lt!255024)))))

(assert (=> d!210844 (= (getSuffix!334 (tail!801 lt!255016) (t!79673 lt!255024)) lt!255270)))

(declare-fun b!599564 () Bool)

(assert (=> b!599564 (= e!363163 (getSuffix!334 (tail!801 (tail!801 lt!255016)) (t!79673 (t!79673 lt!255024))))))

(declare-fun b!599565 () Bool)

(assert (=> b!599565 (= e!363163 (tail!801 lt!255016))))

(assert (= (and d!210844 c!111346) b!599564))

(assert (= (and d!210844 (not c!111346)) b!599565))

(declare-fun m!863547 () Bool)

(assert (=> d!210844 m!863547))

(assert (=> d!210844 m!862783))

(declare-fun m!863549 () Bool)

(assert (=> d!210844 m!863549))

(assert (=> d!210844 m!862891))

(assert (=> b!599564 m!862783))

(declare-fun m!863551 () Bool)

(assert (=> b!599564 m!863551))

(assert (=> b!599564 m!863551))

(declare-fun m!863553 () Bool)

(assert (=> b!599564 m!863553))

(assert (=> b!598988 d!210844))

(declare-fun d!210846 () Bool)

(assert (=> d!210846 (= (tail!801 lt!255016) (t!79673 lt!255016))))

(assert (=> b!598988 d!210846))

(declare-fun d!210848 () Bool)

(declare-fun e!363166 () Bool)

(assert (=> d!210848 e!363166))

(declare-fun res!259228 () Bool)

(assert (=> d!210848 (=> res!259228 e!363166)))

(declare-fun lt!255272 () Option!1540)

(assert (=> d!210848 (= res!259228 (isEmpty!4324 lt!255272))))

(declare-fun e!363165 () Option!1540)

(assert (=> d!210848 (= lt!255272 e!363165)))

(declare-fun c!111347 () Bool)

(assert (=> d!210848 (= c!111347 (and ((_ is Cons!5988) (t!79675 rules!3103)) ((_ is Nil!5988) (t!79675 (t!79675 rules!3103)))))))

(declare-fun lt!255271 () Unit!10894)

(declare-fun lt!255275 () Unit!10894)

(assert (=> d!210848 (= lt!255271 lt!255275)))

(assert (=> d!210848 (isPrefix!817 lt!255016 lt!255016)))

(assert (=> d!210848 (= lt!255275 (lemmaIsPrefixRefl!553 lt!255016 lt!255016))))

(assert (=> d!210848 (rulesValidInductive!442 thiss!22590 (t!79675 rules!3103))))

(assert (=> d!210848 (= (maxPrefix!773 thiss!22590 (t!79675 rules!3103) lt!255016) lt!255272)))

(declare-fun b!599566 () Bool)

(declare-fun call!40464 () Option!1540)

(assert (=> b!599566 (= e!363165 call!40464)))

(declare-fun b!599567 () Bool)

(declare-fun res!259227 () Bool)

(declare-fun e!363164 () Bool)

(assert (=> b!599567 (=> (not res!259227) (not e!363164))))

(assert (=> b!599567 (= res!259227 (matchR!634 (regex!1189 (rule!1959 (_1!3700 (get!2298 lt!255272)))) (list!2508 (charsOf!818 (_1!3700 (get!2298 lt!255272))))))))

(declare-fun b!599568 () Bool)

(declare-fun res!259232 () Bool)

(assert (=> b!599568 (=> (not res!259232) (not e!363164))))

(assert (=> b!599568 (= res!259232 (= (++!1677 (list!2508 (charsOf!818 (_1!3700 (get!2298 lt!255272)))) (_2!3700 (get!2298 lt!255272))) lt!255016))))

(declare-fun b!599569 () Bool)

(declare-fun res!259230 () Bool)

(assert (=> b!599569 (=> (not res!259230) (not e!363164))))

(assert (=> b!599569 (= res!259230 (= (list!2508 (charsOf!818 (_1!3700 (get!2298 lt!255272)))) (originalCharacters!1228 (_1!3700 (get!2298 lt!255272)))))))

(declare-fun b!599570 () Bool)

(declare-fun res!259229 () Bool)

(assert (=> b!599570 (=> (not res!259229) (not e!363164))))

(assert (=> b!599570 (= res!259229 (< (size!4713 (_2!3700 (get!2298 lt!255272))) (size!4713 lt!255016)))))

(declare-fun b!599571 () Bool)

(assert (=> b!599571 (= e!363164 (contains!1399 (t!79675 rules!3103) (rule!1959 (_1!3700 (get!2298 lt!255272)))))))

(declare-fun bm!40459 () Bool)

(assert (=> bm!40459 (= call!40464 (maxPrefixOneRule!438 thiss!22590 (h!11389 (t!79675 rules!3103)) lt!255016))))

(declare-fun b!599572 () Bool)

(declare-fun lt!255273 () Option!1540)

(declare-fun lt!255274 () Option!1540)

(assert (=> b!599572 (= e!363165 (ite (and ((_ is None!1539) lt!255273) ((_ is None!1539) lt!255274)) None!1539 (ite ((_ is None!1539) lt!255274) lt!255273 (ite ((_ is None!1539) lt!255273) lt!255274 (ite (>= (size!4712 (_1!3700 (v!16430 lt!255273))) (size!4712 (_1!3700 (v!16430 lt!255274)))) lt!255273 lt!255274)))))))

(assert (=> b!599572 (= lt!255273 call!40464)))

(assert (=> b!599572 (= lt!255274 (maxPrefix!773 thiss!22590 (t!79675 (t!79675 rules!3103)) lt!255016))))

(declare-fun b!599573 () Bool)

(declare-fun res!259226 () Bool)

(assert (=> b!599573 (=> (not res!259226) (not e!363164))))

(assert (=> b!599573 (= res!259226 (= (value!38753 (_1!3700 (get!2298 lt!255272))) (apply!1442 (transformation!1189 (rule!1959 (_1!3700 (get!2298 lt!255272)))) (seqFromList!1365 (originalCharacters!1228 (_1!3700 (get!2298 lt!255272)))))))))

(declare-fun b!599574 () Bool)

(assert (=> b!599574 (= e!363166 e!363164)))

(declare-fun res!259231 () Bool)

(assert (=> b!599574 (=> (not res!259231) (not e!363164))))

(assert (=> b!599574 (= res!259231 (isDefined!1351 lt!255272))))

(assert (= (and d!210848 c!111347) b!599566))

(assert (= (and d!210848 (not c!111347)) b!599572))

(assert (= (or b!599566 b!599572) bm!40459))

(assert (= (and d!210848 (not res!259228)) b!599574))

(assert (= (and b!599574 res!259231) b!599569))

(assert (= (and b!599569 res!259230) b!599570))

(assert (= (and b!599570 res!259229) b!599568))

(assert (= (and b!599568 res!259232) b!599573))

(assert (= (and b!599573 res!259226) b!599567))

(assert (= (and b!599567 res!259227) b!599571))

(declare-fun m!863555 () Bool)

(assert (=> b!599571 m!863555))

(declare-fun m!863557 () Bool)

(assert (=> b!599571 m!863557))

(assert (=> b!599570 m!863555))

(declare-fun m!863559 () Bool)

(assert (=> b!599570 m!863559))

(assert (=> b!599570 m!862707))

(declare-fun m!863561 () Bool)

(assert (=> b!599572 m!863561))

(declare-fun m!863563 () Bool)

(assert (=> bm!40459 m!863563))

(declare-fun m!863565 () Bool)

(assert (=> b!599574 m!863565))

(assert (=> b!599573 m!863555))

(declare-fun m!863567 () Bool)

(assert (=> b!599573 m!863567))

(assert (=> b!599573 m!863567))

(declare-fun m!863569 () Bool)

(assert (=> b!599573 m!863569))

(assert (=> b!599568 m!863555))

(declare-fun m!863571 () Bool)

(assert (=> b!599568 m!863571))

(assert (=> b!599568 m!863571))

(declare-fun m!863573 () Bool)

(assert (=> b!599568 m!863573))

(assert (=> b!599568 m!863573))

(declare-fun m!863575 () Bool)

(assert (=> b!599568 m!863575))

(assert (=> b!599569 m!863555))

(assert (=> b!599569 m!863571))

(assert (=> b!599569 m!863571))

(assert (=> b!599569 m!863573))

(declare-fun m!863577 () Bool)

(assert (=> d!210848 m!863577))

(assert (=> d!210848 m!862727))

(assert (=> d!210848 m!862729))

(declare-fun m!863579 () Bool)

(assert (=> d!210848 m!863579))

(assert (=> b!599567 m!863555))

(assert (=> b!599567 m!863571))

(assert (=> b!599567 m!863571))

(assert (=> b!599567 m!863573))

(assert (=> b!599567 m!863573))

(declare-fun m!863581 () Bool)

(assert (=> b!599567 m!863581))

(assert (=> b!598953 d!210848))

(assert (=> b!599050 d!210842))

(declare-fun b!599593 () Bool)

(declare-fun res!259247 () Bool)

(declare-fun e!363175 () Bool)

(assert (=> b!599593 (=> (not res!259247) (not e!363175))))

(declare-fun lt!255288 () Option!1540)

(assert (=> b!599593 (= res!259247 (= (value!38753 (_1!3700 (get!2298 lt!255288))) (apply!1442 (transformation!1189 (rule!1959 (_1!3700 (get!2298 lt!255288)))) (seqFromList!1365 (originalCharacters!1228 (_1!3700 (get!2298 lt!255288)))))))))

(declare-fun d!210850 () Bool)

(declare-fun e!363176 () Bool)

(assert (=> d!210850 e!363176))

(declare-fun res!259253 () Bool)

(assert (=> d!210850 (=> res!259253 e!363176)))

(assert (=> d!210850 (= res!259253 (isEmpty!4324 lt!255288))))

(declare-fun e!363177 () Option!1540)

(assert (=> d!210850 (= lt!255288 e!363177)))

(declare-fun c!111350 () Bool)

(declare-datatypes ((tuple2!6876 0))(
  ( (tuple2!6877 (_1!3702 List!5996) (_2!3702 List!5996)) )
))
(declare-fun lt!255286 () tuple2!6876)

(assert (=> d!210850 (= c!111350 (isEmpty!4321 (_1!3702 lt!255286)))))

(declare-fun findLongestMatch!170 (Regex!1523 List!5996) tuple2!6876)

(assert (=> d!210850 (= lt!255286 (findLongestMatch!170 (regex!1189 (h!11389 rules!3103)) input!2705))))

(assert (=> d!210850 (ruleValid!387 thiss!22590 (h!11389 rules!3103))))

(assert (=> d!210850 (= (maxPrefixOneRule!438 thiss!22590 (h!11389 rules!3103) input!2705) lt!255288)))

(declare-fun b!599594 () Bool)

(declare-fun e!363178 () Bool)

(declare-fun findLongestMatchInner!191 (Regex!1523 List!5996 Int List!5996 List!5996 Int) tuple2!6876)

(assert (=> b!599594 (= e!363178 (matchR!634 (regex!1189 (h!11389 rules!3103)) (_1!3702 (findLongestMatchInner!191 (regex!1189 (h!11389 rules!3103)) Nil!5986 (size!4713 Nil!5986) input!2705 input!2705 (size!4713 input!2705)))))))

(declare-fun b!599595 () Bool)

(assert (=> b!599595 (= e!363177 None!1539)))

(declare-fun b!599596 () Bool)

(declare-fun res!259250 () Bool)

(assert (=> b!599596 (=> (not res!259250) (not e!363175))))

(assert (=> b!599596 (= res!259250 (= (rule!1959 (_1!3700 (get!2298 lt!255288))) (h!11389 rules!3103)))))

(declare-fun b!599597 () Bool)

(declare-fun size!4715 (BalanceConc!3820) Int)

(assert (=> b!599597 (= e!363177 (Some!1539 (tuple2!6873 (Token!2115 (apply!1442 (transformation!1189 (h!11389 rules!3103)) (seqFromList!1365 (_1!3702 lt!255286))) (h!11389 rules!3103) (size!4715 (seqFromList!1365 (_1!3702 lt!255286))) (_1!3702 lt!255286)) (_2!3702 lt!255286))))))

(declare-fun lt!255290 () Unit!10894)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!175 (Regex!1523 List!5996) Unit!10894)

(assert (=> b!599597 (= lt!255290 (longestMatchIsAcceptedByMatchOrIsEmpty!175 (regex!1189 (h!11389 rules!3103)) input!2705))))

(declare-fun res!259251 () Bool)

(assert (=> b!599597 (= res!259251 (isEmpty!4321 (_1!3702 (findLongestMatchInner!191 (regex!1189 (h!11389 rules!3103)) Nil!5986 (size!4713 Nil!5986) input!2705 input!2705 (size!4713 input!2705)))))))

(assert (=> b!599597 (=> res!259251 e!363178)))

(assert (=> b!599597 e!363178))

(declare-fun lt!255287 () Unit!10894)

(assert (=> b!599597 (= lt!255287 lt!255290)))

(declare-fun lt!255289 () Unit!10894)

(declare-fun lemmaSemiInverse!228 (TokenValueInjection!2194 BalanceConc!3820) Unit!10894)

(assert (=> b!599597 (= lt!255289 (lemmaSemiInverse!228 (transformation!1189 (h!11389 rules!3103)) (seqFromList!1365 (_1!3702 lt!255286))))))

(declare-fun b!599598 () Bool)

(assert (=> b!599598 (= e!363176 e!363175)))

(declare-fun res!259252 () Bool)

(assert (=> b!599598 (=> (not res!259252) (not e!363175))))

(assert (=> b!599598 (= res!259252 (matchR!634 (regex!1189 (h!11389 rules!3103)) (list!2508 (charsOf!818 (_1!3700 (get!2298 lt!255288))))))))

(declare-fun b!599599 () Bool)

(declare-fun res!259248 () Bool)

(assert (=> b!599599 (=> (not res!259248) (not e!363175))))

(assert (=> b!599599 (= res!259248 (= (++!1677 (list!2508 (charsOf!818 (_1!3700 (get!2298 lt!255288)))) (_2!3700 (get!2298 lt!255288))) input!2705))))

(declare-fun b!599600 () Bool)

(declare-fun res!259249 () Bool)

(assert (=> b!599600 (=> (not res!259249) (not e!363175))))

(assert (=> b!599600 (= res!259249 (< (size!4713 (_2!3700 (get!2298 lt!255288))) (size!4713 input!2705)))))

(declare-fun b!599601 () Bool)

(assert (=> b!599601 (= e!363175 (= (size!4712 (_1!3700 (get!2298 lt!255288))) (size!4713 (originalCharacters!1228 (_1!3700 (get!2298 lt!255288))))))))

(assert (= (and d!210850 c!111350) b!599595))

(assert (= (and d!210850 (not c!111350)) b!599597))

(assert (= (and b!599597 (not res!259251)) b!599594))

(assert (= (and d!210850 (not res!259253)) b!599598))

(assert (= (and b!599598 res!259252) b!599599))

(assert (= (and b!599599 res!259248) b!599600))

(assert (= (and b!599600 res!259249) b!599596))

(assert (= (and b!599596 res!259250) b!599593))

(assert (= (and b!599593 res!259247) b!599601))

(declare-fun m!863583 () Bool)

(assert (=> b!599594 m!863583))

(assert (=> b!599594 m!862739))

(assert (=> b!599594 m!863583))

(assert (=> b!599594 m!862739))

(declare-fun m!863585 () Bool)

(assert (=> b!599594 m!863585))

(declare-fun m!863587 () Bool)

(assert (=> b!599594 m!863587))

(declare-fun m!863589 () Bool)

(assert (=> b!599597 m!863589))

(declare-fun m!863591 () Bool)

(assert (=> b!599597 m!863591))

(declare-fun m!863593 () Bool)

(assert (=> b!599597 m!863593))

(assert (=> b!599597 m!863583))

(assert (=> b!599597 m!862739))

(assert (=> b!599597 m!863585))

(declare-fun m!863595 () Bool)

(assert (=> b!599597 m!863595))

(assert (=> b!599597 m!863583))

(assert (=> b!599597 m!863589))

(declare-fun m!863597 () Bool)

(assert (=> b!599597 m!863597))

(assert (=> b!599597 m!863589))

(declare-fun m!863599 () Bool)

(assert (=> b!599597 m!863599))

(assert (=> b!599597 m!862739))

(assert (=> b!599597 m!863589))

(declare-fun m!863601 () Bool)

(assert (=> d!210850 m!863601))

(declare-fun m!863603 () Bool)

(assert (=> d!210850 m!863603))

(declare-fun m!863605 () Bool)

(assert (=> d!210850 m!863605))

(declare-fun m!863607 () Bool)

(assert (=> d!210850 m!863607))

(declare-fun m!863609 () Bool)

(assert (=> b!599593 m!863609))

(declare-fun m!863611 () Bool)

(assert (=> b!599593 m!863611))

(assert (=> b!599593 m!863611))

(declare-fun m!863613 () Bool)

(assert (=> b!599593 m!863613))

(assert (=> b!599599 m!863609))

(declare-fun m!863615 () Bool)

(assert (=> b!599599 m!863615))

(assert (=> b!599599 m!863615))

(declare-fun m!863617 () Bool)

(assert (=> b!599599 m!863617))

(assert (=> b!599599 m!863617))

(declare-fun m!863619 () Bool)

(assert (=> b!599599 m!863619))

(assert (=> b!599598 m!863609))

(assert (=> b!599598 m!863615))

(assert (=> b!599598 m!863615))

(assert (=> b!599598 m!863617))

(assert (=> b!599598 m!863617))

(declare-fun m!863621 () Bool)

(assert (=> b!599598 m!863621))

(assert (=> b!599600 m!863609))

(declare-fun m!863623 () Bool)

(assert (=> b!599600 m!863623))

(assert (=> b!599600 m!862739))

(assert (=> b!599596 m!863609))

(assert (=> b!599601 m!863609))

(declare-fun m!863625 () Bool)

(assert (=> b!599601 m!863625))

(assert (=> bm!40440 d!210850))

(declare-fun d!210852 () Bool)

(assert (=> d!210852 (= (list!2508 (charsOf!818 (_1!3700 (get!2298 lt!255125)))) (list!2510 (c!111202 (charsOf!818 (_1!3700 (get!2298 lt!255125))))))))

(declare-fun bs!70834 () Bool)

(assert (= bs!70834 d!210852))

(declare-fun m!863627 () Bool)

(assert (=> bs!70834 m!863627))

(assert (=> b!598950 d!210852))

(declare-fun d!210854 () Bool)

(declare-fun lt!255291 () BalanceConc!3820)

(assert (=> d!210854 (= (list!2508 lt!255291) (originalCharacters!1228 (_1!3700 (get!2298 lt!255125))))))

(assert (=> d!210854 (= lt!255291 (dynLambda!3455 (toChars!1939 (transformation!1189 (rule!1959 (_1!3700 (get!2298 lt!255125))))) (value!38753 (_1!3700 (get!2298 lt!255125)))))))

(assert (=> d!210854 (= (charsOf!818 (_1!3700 (get!2298 lt!255125))) lt!255291)))

(declare-fun b_lambda!23655 () Bool)

(assert (=> (not b_lambda!23655) (not d!210854)))

(declare-fun t!79775 () Bool)

(declare-fun tb!52309 () Bool)

(assert (=> (and b!598700 (= (toChars!1939 (transformation!1189 (rule!1959 token!491))) (toChars!1939 (transformation!1189 (rule!1959 (_1!3700 (get!2298 lt!255125)))))) t!79775) tb!52309))

(declare-fun b!599602 () Bool)

(declare-fun e!363179 () Bool)

(declare-fun tp!186816 () Bool)

(assert (=> b!599602 (= e!363179 (and (inv!7592 (c!111202 (dynLambda!3455 (toChars!1939 (transformation!1189 (rule!1959 (_1!3700 (get!2298 lt!255125))))) (value!38753 (_1!3700 (get!2298 lt!255125)))))) tp!186816))))

(declare-fun result!58834 () Bool)

(assert (=> tb!52309 (= result!58834 (and (inv!7593 (dynLambda!3455 (toChars!1939 (transformation!1189 (rule!1959 (_1!3700 (get!2298 lt!255125))))) (value!38753 (_1!3700 (get!2298 lt!255125))))) e!363179))))

(assert (= tb!52309 b!599602))

(declare-fun m!863629 () Bool)

(assert (=> b!599602 m!863629))

(declare-fun m!863631 () Bool)

(assert (=> tb!52309 m!863631))

(assert (=> d!210854 t!79775))

(declare-fun b_and!59213 () Bool)

(assert (= b_and!59207 (and (=> t!79775 result!58834) b_and!59213)))

(declare-fun t!79777 () Bool)

(declare-fun tb!52311 () Bool)

(assert (=> (and b!598713 (= (toChars!1939 (transformation!1189 (h!11389 rules!3103))) (toChars!1939 (transformation!1189 (rule!1959 (_1!3700 (get!2298 lt!255125)))))) t!79777) tb!52311))

(declare-fun result!58836 () Bool)

(assert (= result!58836 result!58834))

(assert (=> d!210854 t!79777))

(declare-fun b_and!59215 () Bool)

(assert (= b_and!59209 (and (=> t!79777 result!58836) b_and!59215)))

(declare-fun t!79779 () Bool)

(declare-fun tb!52313 () Bool)

(assert (=> (and b!599102 (= (toChars!1939 (transformation!1189 (h!11389 (t!79675 rules!3103)))) (toChars!1939 (transformation!1189 (rule!1959 (_1!3700 (get!2298 lt!255125)))))) t!79779) tb!52313))

(declare-fun result!58838 () Bool)

(assert (= result!58838 result!58834))

(assert (=> d!210854 t!79779))

(declare-fun b_and!59217 () Bool)

(assert (= b_and!59211 (and (=> t!79779 result!58838) b_and!59217)))

(declare-fun m!863633 () Bool)

(assert (=> d!210854 m!863633))

(declare-fun m!863635 () Bool)

(assert (=> d!210854 m!863635))

(assert (=> b!598950 d!210854))

(declare-fun d!210856 () Bool)

(assert (=> d!210856 (= (get!2298 lt!255125) (v!16430 lt!255125))))

(assert (=> b!598950 d!210856))

(declare-fun d!210858 () Bool)

(assert (=> d!210858 (= (head!1272 lt!255021) (h!11387 lt!255021))))

(assert (=> b!599068 d!210858))

(declare-fun d!210860 () Bool)

(assert (=> d!210860 (= (head!1272 lt!255039) (h!11387 lt!255039))))

(assert (=> b!599068 d!210860))

(declare-fun d!210862 () Bool)

(assert (=> d!210862 true))

(declare-fun order!4783 () Int)

(declare-fun lambda!16021 () Int)

(declare-fun order!4785 () Int)

(declare-fun dynLambda!3463 (Int Int) Int)

(declare-fun dynLambda!3464 (Int Int) Int)

(assert (=> d!210862 (< (dynLambda!3463 order!4783 (toChars!1939 (transformation!1189 (h!11389 rules!3103)))) (dynLambda!3464 order!4785 lambda!16021))))

(assert (=> d!210862 true))

(assert (=> d!210862 (< (dynLambda!3461 order!4779 (toValue!2080 (transformation!1189 (h!11389 rules!3103)))) (dynLambda!3464 order!4785 lambda!16021))))

(declare-fun Forall!300 (Int) Bool)

(assert (=> d!210862 (= (semiInverseModEq!473 (toChars!1939 (transformation!1189 (h!11389 rules!3103))) (toValue!2080 (transformation!1189 (h!11389 rules!3103)))) (Forall!300 lambda!16021))))

(declare-fun bs!70835 () Bool)

(assert (= bs!70835 d!210862))

(declare-fun m!863637 () Bool)

(assert (=> bs!70835 m!863637))

(assert (=> d!210376 d!210862))

(declare-fun b!599607 () Bool)

(declare-fun e!363181 () Bool)

(declare-fun e!363180 () Bool)

(assert (=> b!599607 (= e!363181 e!363180)))

(declare-fun res!259255 () Bool)

(assert (=> b!599607 (=> (not res!259255) (not e!363180))))

(assert (=> b!599607 (= res!259255 (not ((_ is Nil!5986) (tail!801 lt!255016))))))

(declare-fun d!210864 () Bool)

(declare-fun e!363182 () Bool)

(assert (=> d!210864 e!363182))

(declare-fun res!259256 () Bool)

(assert (=> d!210864 (=> res!259256 e!363182)))

(declare-fun lt!255292 () Bool)

(assert (=> d!210864 (= res!259256 (not lt!255292))))

(assert (=> d!210864 (= lt!255292 e!363181)))

(declare-fun res!259254 () Bool)

(assert (=> d!210864 (=> res!259254 e!363181)))

(assert (=> d!210864 (= res!259254 ((_ is Nil!5986) (tail!801 input!2705)))))

(assert (=> d!210864 (= (isPrefix!817 (tail!801 input!2705) (tail!801 lt!255016)) lt!255292)))

(declare-fun b!599609 () Bool)

(assert (=> b!599609 (= e!363180 (isPrefix!817 (tail!801 (tail!801 input!2705)) (tail!801 (tail!801 lt!255016))))))

(declare-fun b!599608 () Bool)

(declare-fun res!259257 () Bool)

(assert (=> b!599608 (=> (not res!259257) (not e!363180))))

(assert (=> b!599608 (= res!259257 (= (head!1272 (tail!801 input!2705)) (head!1272 (tail!801 lt!255016))))))

(declare-fun b!599610 () Bool)

(assert (=> b!599610 (= e!363182 (>= (size!4713 (tail!801 lt!255016)) (size!4713 (tail!801 input!2705))))))

(assert (= (and d!210864 (not res!259254)) b!599607))

(assert (= (and b!599607 res!259255) b!599608))

(assert (= (and b!599608 res!259257) b!599609))

(assert (= (and d!210864 (not res!259256)) b!599610))

(assert (=> b!599609 m!862833))

(declare-fun m!863639 () Bool)

(assert (=> b!599609 m!863639))

(assert (=> b!599609 m!862783))

(assert (=> b!599609 m!863551))

(assert (=> b!599609 m!863639))

(assert (=> b!599609 m!863551))

(declare-fun m!863641 () Bool)

(assert (=> b!599609 m!863641))

(assert (=> b!599608 m!862833))

(declare-fun m!863643 () Bool)

(assert (=> b!599608 m!863643))

(assert (=> b!599608 m!862783))

(declare-fun m!863645 () Bool)

(assert (=> b!599608 m!863645))

(assert (=> b!599610 m!862783))

(assert (=> b!599610 m!863549))

(assert (=> b!599610 m!862833))

(declare-fun m!863647 () Bool)

(assert (=> b!599610 m!863647))

(assert (=> b!599035 d!210864))

(declare-fun d!210866 () Bool)

(assert (=> d!210866 (= (tail!801 input!2705) (t!79673 input!2705))))

(assert (=> b!599035 d!210866))

(assert (=> b!599035 d!210846))

(assert (=> d!210536 d!210378))

(declare-fun bs!70836 () Bool)

(declare-fun d!210868 () Bool)

(assert (= bs!70836 (and d!210868 d!210862)))

(declare-fun lambda!16022 () Int)

(assert (=> bs!70836 (= (and (= (toChars!1939 (transformation!1189 (rule!1959 (_1!3700 (v!16430 lt!255028))))) (toChars!1939 (transformation!1189 (h!11389 rules!3103)))) (= (toValue!2080 (transformation!1189 (rule!1959 (_1!3700 (v!16430 lt!255028))))) (toValue!2080 (transformation!1189 (h!11389 rules!3103))))) (= lambda!16022 lambda!16021))))

(assert (=> d!210868 true))

(assert (=> d!210868 (< (dynLambda!3463 order!4783 (toChars!1939 (transformation!1189 (rule!1959 (_1!3700 (v!16430 lt!255028)))))) (dynLambda!3464 order!4785 lambda!16022))))

(assert (=> d!210868 true))

(assert (=> d!210868 (< (dynLambda!3461 order!4779 (toValue!2080 (transformation!1189 (rule!1959 (_1!3700 (v!16430 lt!255028)))))) (dynLambda!3464 order!4785 lambda!16022))))

(assert (=> d!210868 (= (semiInverseModEq!473 (toChars!1939 (transformation!1189 (rule!1959 (_1!3700 (v!16430 lt!255028))))) (toValue!2080 (transformation!1189 (rule!1959 (_1!3700 (v!16430 lt!255028)))))) (Forall!300 lambda!16022))))

(declare-fun bs!70837 () Bool)

(assert (= bs!70837 d!210868))

(declare-fun m!863649 () Bool)

(assert (=> bs!70837 m!863649))

(assert (=> d!210520 d!210868))

(declare-fun d!210870 () Bool)

(declare-fun lt!255293 () Int)

(assert (=> d!210870 (>= lt!255293 0)))

(declare-fun e!363183 () Int)

(assert (=> d!210870 (= lt!255293 e!363183)))

(declare-fun c!111351 () Bool)

(assert (=> d!210870 (= c!111351 ((_ is Nil!5986) lt!255159))))

(assert (=> d!210870 (= (size!4713 lt!255159) lt!255293)))

(declare-fun b!599611 () Bool)

(assert (=> b!599611 (= e!363183 0)))

(declare-fun b!599612 () Bool)

(assert (=> b!599612 (= e!363183 (+ 1 (size!4713 (t!79673 lt!255159))))))

(assert (= (and d!210870 c!111351) b!599611))

(assert (= (and d!210870 (not c!111351)) b!599612))

(declare-fun m!863651 () Bool)

(assert (=> b!599612 m!863651))

(assert (=> b!599059 d!210870))

(assert (=> b!599059 d!210550))

(declare-fun d!210872 () Bool)

(declare-fun lt!255294 () Int)

(assert (=> d!210872 (>= lt!255294 0)))

(declare-fun e!363184 () Int)

(assert (=> d!210872 (= lt!255294 e!363184)))

(declare-fun c!111352 () Bool)

(assert (=> d!210872 (= c!111352 ((_ is Nil!5986) (_2!3700 (v!16430 lt!255028))))))

(assert (=> d!210872 (= (size!4713 (_2!3700 (v!16430 lt!255028))) lt!255294)))

(declare-fun b!599613 () Bool)

(assert (=> b!599613 (= e!363184 0)))

(declare-fun b!599614 () Bool)

(assert (=> b!599614 (= e!363184 (+ 1 (size!4713 (t!79673 (_2!3700 (v!16430 lt!255028))))))))

(assert (= (and d!210872 c!111352) b!599613))

(assert (= (and d!210872 (not c!111352)) b!599614))

(declare-fun m!863653 () Bool)

(assert (=> b!599614 m!863653))

(assert (=> b!599059 d!210872))

(assert (=> d!210526 d!210518))

(declare-fun d!210874 () Bool)

(assert (=> d!210874 (isPrefix!817 input!2705 input!2705)))

(assert (=> d!210874 true))

(declare-fun _$45!1312 () Unit!10894)

(assert (=> d!210874 (= (choose!4372 input!2705 input!2705) _$45!1312)))

(declare-fun bs!70838 () Bool)

(assert (= bs!70838 d!210874))

(assert (=> bs!70838 m!862421))

(assert (=> d!210526 d!210874))

(declare-fun b!599615 () Bool)

(declare-fun e!363186 () Bool)

(declare-fun e!363185 () Bool)

(assert (=> b!599615 (= e!363186 e!363185)))

(declare-fun res!259259 () Bool)

(assert (=> b!599615 (=> (not res!259259) (not e!363185))))

(assert (=> b!599615 (= res!259259 (not ((_ is Nil!5986) (++!1677 lt!255024 suffix!1342))))))

(declare-fun d!210876 () Bool)

(declare-fun e!363187 () Bool)

(assert (=> d!210876 e!363187))

(declare-fun res!259260 () Bool)

(assert (=> d!210876 (=> res!259260 e!363187)))

(declare-fun lt!255295 () Bool)

(assert (=> d!210876 (= res!259260 (not lt!255295))))

(assert (=> d!210876 (= lt!255295 e!363186)))

(declare-fun res!259258 () Bool)

(assert (=> d!210876 (=> res!259258 e!363186)))

(assert (=> d!210876 (= res!259258 ((_ is Nil!5986) lt!255024))))

(assert (=> d!210876 (= (isPrefix!817 lt!255024 (++!1677 lt!255024 suffix!1342)) lt!255295)))

(declare-fun b!599617 () Bool)

(assert (=> b!599617 (= e!363185 (isPrefix!817 (tail!801 lt!255024) (tail!801 (++!1677 lt!255024 suffix!1342))))))

(declare-fun b!599616 () Bool)

(declare-fun res!259261 () Bool)

(assert (=> b!599616 (=> (not res!259261) (not e!363185))))

(assert (=> b!599616 (= res!259261 (= (head!1272 lt!255024) (head!1272 (++!1677 lt!255024 suffix!1342))))))

(declare-fun b!599618 () Bool)

(assert (=> b!599618 (= e!363187 (>= (size!4713 (++!1677 lt!255024 suffix!1342)) (size!4713 lt!255024)))))

(assert (= (and d!210876 (not res!259258)) b!599615))

(assert (= (and b!599615 res!259259) b!599616))

(assert (= (and b!599616 res!259261) b!599617))

(assert (= (and d!210876 (not res!259260)) b!599618))

(assert (=> b!599617 m!862847))

(assert (=> b!599617 m!862429))

(declare-fun m!863655 () Bool)

(assert (=> b!599617 m!863655))

(assert (=> b!599617 m!862847))

(assert (=> b!599617 m!863655))

(declare-fun m!863657 () Bool)

(assert (=> b!599617 m!863657))

(assert (=> b!599616 m!862853))

(assert (=> b!599616 m!862429))

(declare-fun m!863659 () Bool)

(assert (=> b!599616 m!863659))

(assert (=> b!599618 m!862429))

(declare-fun m!863661 () Bool)

(assert (=> b!599618 m!863661))

(assert (=> b!599618 m!862395))

(assert (=> d!210552 d!210876))

(assert (=> d!210552 d!210474))

(declare-fun d!210878 () Bool)

(assert (=> d!210878 (isPrefix!817 lt!255024 (++!1677 lt!255024 suffix!1342))))

(assert (=> d!210878 true))

(declare-fun _$46!973 () Unit!10894)

(assert (=> d!210878 (= (choose!4375 lt!255024 suffix!1342) _$46!973)))

(declare-fun bs!70839 () Bool)

(assert (= bs!70839 d!210878))

(assert (=> bs!70839 m!862429))

(assert (=> bs!70839 m!862429))

(assert (=> bs!70839 m!862923))

(assert (=> d!210552 d!210878))

(declare-fun b!599620 () Bool)

(declare-fun e!363188 () List!5996)

(assert (=> b!599620 (= e!363188 (Cons!5986 (h!11387 (t!79673 input!2705)) (++!1677 (t!79673 (t!79673 input!2705)) suffix!1342)))))

(declare-fun b!599621 () Bool)

(declare-fun res!259263 () Bool)

(declare-fun e!363189 () Bool)

(assert (=> b!599621 (=> (not res!259263) (not e!363189))))

(declare-fun lt!255296 () List!5996)

(assert (=> b!599621 (= res!259263 (= (size!4713 lt!255296) (+ (size!4713 (t!79673 input!2705)) (size!4713 suffix!1342))))))

(declare-fun b!599619 () Bool)

(assert (=> b!599619 (= e!363188 suffix!1342)))

(declare-fun b!599622 () Bool)

(assert (=> b!599622 (= e!363189 (or (not (= suffix!1342 Nil!5986)) (= lt!255296 (t!79673 input!2705))))))

(declare-fun d!210880 () Bool)

(assert (=> d!210880 e!363189))

(declare-fun res!259262 () Bool)

(assert (=> d!210880 (=> (not res!259262) (not e!363189))))

(assert (=> d!210880 (= res!259262 (= (content!1079 lt!255296) ((_ map or) (content!1079 (t!79673 input!2705)) (content!1079 suffix!1342))))))

(assert (=> d!210880 (= lt!255296 e!363188)))

(declare-fun c!111353 () Bool)

(assert (=> d!210880 (= c!111353 ((_ is Nil!5986) (t!79673 input!2705)))))

(assert (=> d!210880 (= (++!1677 (t!79673 input!2705) suffix!1342) lt!255296)))

(assert (= (and d!210880 c!111353) b!599619))

(assert (= (and d!210880 (not c!111353)) b!599620))

(assert (= (and d!210880 res!259262) b!599621))

(assert (= (and b!599621 res!259263) b!599622))

(declare-fun m!863663 () Bool)

(assert (=> b!599620 m!863663))

(declare-fun m!863665 () Bool)

(assert (=> b!599621 m!863665))

(assert (=> b!599621 m!863545))

(assert (=> b!599621 m!862741))

(declare-fun m!863667 () Bool)

(assert (=> d!210880 m!863667))

(declare-fun m!863669 () Bool)

(assert (=> d!210880 m!863669))

(assert (=> d!210880 m!862747))

(assert (=> b!598965 d!210880))

(declare-fun d!210882 () Bool)

(assert (=> d!210882 (= (isEmpty!4324 lt!255125) (not ((_ is Some!1539) lt!255125)))))

(assert (=> d!210394 d!210882))

(declare-fun b!599623 () Bool)

(declare-fun e!363191 () Bool)

(declare-fun e!363190 () Bool)

(assert (=> b!599623 (= e!363191 e!363190)))

(declare-fun res!259265 () Bool)

(assert (=> b!599623 (=> (not res!259265) (not e!363190))))

(assert (=> b!599623 (= res!259265 (not ((_ is Nil!5986) lt!255016)))))

(declare-fun d!210884 () Bool)

(declare-fun e!363192 () Bool)

(assert (=> d!210884 e!363192))

(declare-fun res!259266 () Bool)

(assert (=> d!210884 (=> res!259266 e!363192)))

(declare-fun lt!255297 () Bool)

(assert (=> d!210884 (= res!259266 (not lt!255297))))

(assert (=> d!210884 (= lt!255297 e!363191)))

(declare-fun res!259264 () Bool)

(assert (=> d!210884 (=> res!259264 e!363191)))

(assert (=> d!210884 (= res!259264 ((_ is Nil!5986) lt!255016))))

(assert (=> d!210884 (= (isPrefix!817 lt!255016 lt!255016) lt!255297)))

(declare-fun b!599625 () Bool)

(assert (=> b!599625 (= e!363190 (isPrefix!817 (tail!801 lt!255016) (tail!801 lt!255016)))))

(declare-fun b!599624 () Bool)

(declare-fun res!259267 () Bool)

(assert (=> b!599624 (=> (not res!259267) (not e!363190))))

(assert (=> b!599624 (= res!259267 (= (head!1272 lt!255016) (head!1272 lt!255016)))))

(declare-fun b!599626 () Bool)

(assert (=> b!599626 (= e!363192 (>= (size!4713 lt!255016) (size!4713 lt!255016)))))

(assert (= (and d!210884 (not res!259264)) b!599623))

(assert (= (and b!599623 res!259265) b!599624))

(assert (= (and b!599624 res!259267) b!599625))

(assert (= (and d!210884 (not res!259266)) b!599626))

(assert (=> b!599625 m!862783))

(assert (=> b!599625 m!862783))

(assert (=> b!599625 m!862783))

(assert (=> b!599625 m!862783))

(declare-fun m!863671 () Bool)

(assert (=> b!599625 m!863671))

(assert (=> b!599624 m!862839))

(assert (=> b!599624 m!862839))

(assert (=> b!599626 m!862707))

(assert (=> b!599626 m!862707))

(assert (=> d!210394 d!210884))

(declare-fun d!210886 () Bool)

(assert (=> d!210886 (isPrefix!817 lt!255016 lt!255016)))

(declare-fun lt!255298 () Unit!10894)

(assert (=> d!210886 (= lt!255298 (choose!4372 lt!255016 lt!255016))))

(assert (=> d!210886 (= (lemmaIsPrefixRefl!553 lt!255016 lt!255016) lt!255298)))

(declare-fun bs!70840 () Bool)

(assert (= bs!70840 d!210886))

(assert (=> bs!70840 m!862727))

(declare-fun m!863673 () Bool)

(assert (=> bs!70840 m!863673))

(assert (=> d!210394 d!210886))

(declare-fun d!210888 () Bool)

(assert (=> d!210888 true))

(declare-fun lt!255301 () Bool)

(declare-fun lambda!16025 () Int)

(declare-fun forall!1556 (List!5998 Int) Bool)

(assert (=> d!210888 (= lt!255301 (forall!1556 rules!3103 lambda!16025))))

(declare-fun e!363197 () Bool)

(assert (=> d!210888 (= lt!255301 e!363197)))

(declare-fun res!259272 () Bool)

(assert (=> d!210888 (=> res!259272 e!363197)))

(assert (=> d!210888 (= res!259272 (not ((_ is Cons!5988) rules!3103)))))

(assert (=> d!210888 (= (rulesValidInductive!442 thiss!22590 rules!3103) lt!255301)))

(declare-fun b!599631 () Bool)

(declare-fun e!363198 () Bool)

(assert (=> b!599631 (= e!363197 e!363198)))

(declare-fun res!259273 () Bool)

(assert (=> b!599631 (=> (not res!259273) (not e!363198))))

(assert (=> b!599631 (= res!259273 (ruleValid!387 thiss!22590 (h!11389 rules!3103)))))

(declare-fun b!599632 () Bool)

(assert (=> b!599632 (= e!363198 (rulesValidInductive!442 thiss!22590 (t!79675 rules!3103)))))

(assert (= (and d!210888 (not res!259272)) b!599631))

(assert (= (and b!599631 res!259273) b!599632))

(declare-fun m!863675 () Bool)

(assert (=> d!210888 m!863675))

(assert (=> b!599631 m!863607))

(assert (=> b!599632 m!863579))

(assert (=> d!210394 d!210888))

(declare-fun bs!70841 () Bool)

(declare-fun d!210890 () Bool)

(assert (= bs!70841 (and d!210890 d!210862)))

(declare-fun lambda!16026 () Int)

(assert (=> bs!70841 (= (and (= (toChars!1939 (transformation!1189 (rule!1959 token!491))) (toChars!1939 (transformation!1189 (h!11389 rules!3103)))) (= (toValue!2080 (transformation!1189 (rule!1959 token!491))) (toValue!2080 (transformation!1189 (h!11389 rules!3103))))) (= lambda!16026 lambda!16021))))

(declare-fun bs!70842 () Bool)

(assert (= bs!70842 (and d!210890 d!210868)))

(assert (=> bs!70842 (= (and (= (toChars!1939 (transformation!1189 (rule!1959 token!491))) (toChars!1939 (transformation!1189 (rule!1959 (_1!3700 (v!16430 lt!255028)))))) (= (toValue!2080 (transformation!1189 (rule!1959 token!491))) (toValue!2080 (transformation!1189 (rule!1959 (_1!3700 (v!16430 lt!255028))))))) (= lambda!16026 lambda!16022))))

(assert (=> d!210890 true))

(assert (=> d!210890 (< (dynLambda!3463 order!4783 (toChars!1939 (transformation!1189 (rule!1959 token!491)))) (dynLambda!3464 order!4785 lambda!16026))))

(assert (=> d!210890 true))

(assert (=> d!210890 (< (dynLambda!3461 order!4779 (toValue!2080 (transformation!1189 (rule!1959 token!491)))) (dynLambda!3464 order!4785 lambda!16026))))

(assert (=> d!210890 (= (semiInverseModEq!473 (toChars!1939 (transformation!1189 (rule!1959 token!491))) (toValue!2080 (transformation!1189 (rule!1959 token!491)))) (Forall!300 lambda!16026))))

(declare-fun bs!70843 () Bool)

(assert (= bs!70843 d!210890))

(declare-fun m!863677 () Bool)

(assert (=> bs!70843 m!863677))

(assert (=> d!210562 d!210890))

(assert (=> b!598983 d!210564))

(assert (=> b!599001 d!210826))

(assert (=> b!599001 d!210828))

(assert (=> b!599001 d!210830))

(declare-fun d!210892 () Bool)

(declare-fun isBalanced!526 (Conc!1906) Bool)

(assert (=> d!210892 (= (inv!7593 (dynLambda!3455 (toChars!1939 (transformation!1189 (rule!1959 token!491))) (value!38753 token!491))) (isBalanced!526 (c!111202 (dynLambda!3455 (toChars!1939 (transformation!1189 (rule!1959 token!491))) (value!38753 token!491)))))))

(declare-fun bs!70844 () Bool)

(assert (= bs!70844 d!210892))

(declare-fun m!863679 () Bool)

(assert (=> bs!70844 m!863679))

(assert (=> tb!52239 d!210892))

(declare-fun d!210894 () Bool)

(declare-fun e!363201 () Bool)

(assert (=> d!210894 e!363201))

(declare-fun res!259276 () Bool)

(assert (=> d!210894 (=> (not res!259276) (not e!363201))))

(declare-fun lt!255304 () BalanceConc!3820)

(assert (=> d!210894 (= res!259276 (= (list!2508 lt!255304) lt!255024))))

(declare-fun fromList!277 (List!5996) Conc!1906)

(assert (=> d!210894 (= lt!255304 (BalanceConc!3821 (fromList!277 lt!255024)))))

(assert (=> d!210894 (= (fromListB!600 lt!255024) lt!255304)))

(declare-fun b!599637 () Bool)

(assert (=> b!599637 (= e!363201 (isBalanced!526 (fromList!277 lt!255024)))))

(assert (= (and d!210894 res!259276) b!599637))

(declare-fun m!863681 () Bool)

(assert (=> d!210894 m!863681))

(declare-fun m!863683 () Bool)

(assert (=> d!210894 m!863683))

(assert (=> b!599637 m!863683))

(assert (=> b!599637 m!863683))

(declare-fun m!863685 () Bool)

(assert (=> b!599637 m!863685))

(assert (=> d!210488 d!210894))

(declare-fun b!599638 () Bool)

(declare-fun e!363203 () Bool)

(declare-fun e!363202 () Bool)

(assert (=> b!599638 (= e!363203 e!363202)))

(declare-fun res!259278 () Bool)

(assert (=> b!599638 (=> (not res!259278) (not e!363202))))

(assert (=> b!599638 (= res!259278 (not ((_ is Nil!5986) (tail!801 lt!255032))))))

(declare-fun d!210896 () Bool)

(declare-fun e!363204 () Bool)

(assert (=> d!210896 e!363204))

(declare-fun res!259279 () Bool)

(assert (=> d!210896 (=> res!259279 e!363204)))

(declare-fun lt!255305 () Bool)

(assert (=> d!210896 (= res!259279 (not lt!255305))))

(assert (=> d!210896 (= lt!255305 e!363203)))

(declare-fun res!259277 () Bool)

(assert (=> d!210896 (=> res!259277 e!363203)))

(assert (=> d!210896 (= res!259277 ((_ is Nil!5986) (tail!801 lt!255024)))))

(assert (=> d!210896 (= (isPrefix!817 (tail!801 lt!255024) (tail!801 lt!255032)) lt!255305)))

(declare-fun b!599640 () Bool)

(assert (=> b!599640 (= e!363202 (isPrefix!817 (tail!801 (tail!801 lt!255024)) (tail!801 (tail!801 lt!255032))))))

(declare-fun b!599639 () Bool)

(declare-fun res!259280 () Bool)

(assert (=> b!599639 (=> (not res!259280) (not e!363202))))

(assert (=> b!599639 (= res!259280 (= (head!1272 (tail!801 lt!255024)) (head!1272 (tail!801 lt!255032))))))

(declare-fun b!599641 () Bool)

(assert (=> b!599641 (= e!363204 (>= (size!4713 (tail!801 lt!255032)) (size!4713 (tail!801 lt!255024))))))

(assert (= (and d!210896 (not res!259277)) b!599638))

(assert (= (and b!599638 res!259278) b!599639))

(assert (= (and b!599639 res!259280) b!599640))

(assert (= (and d!210896 (not res!259279)) b!599641))

(assert (=> b!599640 m!862847))

(declare-fun m!863687 () Bool)

(assert (=> b!599640 m!863687))

(assert (=> b!599640 m!862849))

(declare-fun m!863689 () Bool)

(assert (=> b!599640 m!863689))

(assert (=> b!599640 m!863687))

(assert (=> b!599640 m!863689))

(declare-fun m!863691 () Bool)

(assert (=> b!599640 m!863691))

(assert (=> b!599639 m!862847))

(declare-fun m!863693 () Bool)

(assert (=> b!599639 m!863693))

(assert (=> b!599639 m!862849))

(declare-fun m!863695 () Bool)

(assert (=> b!599639 m!863695))

(assert (=> b!599641 m!862849))

(declare-fun m!863697 () Bool)

(assert (=> b!599641 m!863697))

(assert (=> b!599641 m!862847))

(declare-fun m!863699 () Bool)

(assert (=> b!599641 m!863699))

(assert (=> b!599045 d!210896))

(declare-fun d!210898 () Bool)

(assert (=> d!210898 (= (tail!801 lt!255024) (t!79673 lt!255024))))

(assert (=> b!599045 d!210898))

(declare-fun d!210900 () Bool)

(assert (=> d!210900 (= (tail!801 lt!255032) (t!79673 lt!255032))))

(assert (=> b!599045 d!210900))

(declare-fun d!210902 () Bool)

(declare-fun c!111357 () Bool)

(assert (=> d!210902 (= c!111357 ((_ is Node!1906) (c!111202 (dynLambda!3455 (toChars!1939 (transformation!1189 (rule!1959 token!491))) (value!38753 token!491)))))))

(declare-fun e!363209 () Bool)

(assert (=> d!210902 (= (inv!7592 (c!111202 (dynLambda!3455 (toChars!1939 (transformation!1189 (rule!1959 token!491))) (value!38753 token!491)))) e!363209)))

(declare-fun b!599648 () Bool)

(declare-fun inv!7596 (Conc!1906) Bool)

(assert (=> b!599648 (= e!363209 (inv!7596 (c!111202 (dynLambda!3455 (toChars!1939 (transformation!1189 (rule!1959 token!491))) (value!38753 token!491)))))))

(declare-fun b!599649 () Bool)

(declare-fun e!363210 () Bool)

(assert (=> b!599649 (= e!363209 e!363210)))

(declare-fun res!259283 () Bool)

(assert (=> b!599649 (= res!259283 (not ((_ is Leaf!3008) (c!111202 (dynLambda!3455 (toChars!1939 (transformation!1189 (rule!1959 token!491))) (value!38753 token!491))))))))

(assert (=> b!599649 (=> res!259283 e!363210)))

(declare-fun b!599650 () Bool)

(declare-fun inv!7597 (Conc!1906) Bool)

(assert (=> b!599650 (= e!363210 (inv!7597 (c!111202 (dynLambda!3455 (toChars!1939 (transformation!1189 (rule!1959 token!491))) (value!38753 token!491)))))))

(assert (= (and d!210902 c!111357) b!599648))

(assert (= (and d!210902 (not c!111357)) b!599649))

(assert (= (and b!599649 (not res!259283)) b!599650))

(declare-fun m!863701 () Bool)

(assert (=> b!599648 m!863701))

(declare-fun m!863703 () Bool)

(assert (=> b!599650 m!863703))

(assert (=> b!598977 d!210902))

(declare-fun d!210904 () Bool)

(declare-fun e!363213 () Bool)

(assert (=> d!210904 e!363213))

(declare-fun res!259286 () Bool)

(assert (=> d!210904 (=> res!259286 e!363213)))

(declare-fun lt!255307 () Option!1540)

(assert (=> d!210904 (= res!259286 (isEmpty!4324 lt!255307))))

(declare-fun e!363212 () Option!1540)

(assert (=> d!210904 (= lt!255307 e!363212)))

(declare-fun c!111358 () Bool)

(assert (=> d!210904 (= c!111358 (and ((_ is Cons!5988) (t!79675 rules!3103)) ((_ is Nil!5988) (t!79675 (t!79675 rules!3103)))))))

(declare-fun lt!255306 () Unit!10894)

(declare-fun lt!255310 () Unit!10894)

(assert (=> d!210904 (= lt!255306 lt!255310)))

(assert (=> d!210904 (isPrefix!817 input!2705 input!2705)))

(assert (=> d!210904 (= lt!255310 (lemmaIsPrefixRefl!553 input!2705 input!2705))))

(assert (=> d!210904 (rulesValidInductive!442 thiss!22590 (t!79675 rules!3103))))

(assert (=> d!210904 (= (maxPrefix!773 thiss!22590 (t!79675 rules!3103) input!2705) lt!255307)))

(declare-fun b!599651 () Bool)

(declare-fun call!40465 () Option!1540)

(assert (=> b!599651 (= e!363212 call!40465)))

(declare-fun b!599652 () Bool)

(declare-fun res!259285 () Bool)

(declare-fun e!363211 () Bool)

(assert (=> b!599652 (=> (not res!259285) (not e!363211))))

(assert (=> b!599652 (= res!259285 (matchR!634 (regex!1189 (rule!1959 (_1!3700 (get!2298 lt!255307)))) (list!2508 (charsOf!818 (_1!3700 (get!2298 lt!255307))))))))

(declare-fun b!599653 () Bool)

(declare-fun res!259290 () Bool)

(assert (=> b!599653 (=> (not res!259290) (not e!363211))))

(assert (=> b!599653 (= res!259290 (= (++!1677 (list!2508 (charsOf!818 (_1!3700 (get!2298 lt!255307)))) (_2!3700 (get!2298 lt!255307))) input!2705))))

(declare-fun b!599654 () Bool)

(declare-fun res!259288 () Bool)

(assert (=> b!599654 (=> (not res!259288) (not e!363211))))

(assert (=> b!599654 (= res!259288 (= (list!2508 (charsOf!818 (_1!3700 (get!2298 lt!255307)))) (originalCharacters!1228 (_1!3700 (get!2298 lt!255307)))))))

(declare-fun b!599655 () Bool)

(declare-fun res!259287 () Bool)

(assert (=> b!599655 (=> (not res!259287) (not e!363211))))

(assert (=> b!599655 (= res!259287 (< (size!4713 (_2!3700 (get!2298 lt!255307))) (size!4713 input!2705)))))

(declare-fun b!599656 () Bool)

(assert (=> b!599656 (= e!363211 (contains!1399 (t!79675 rules!3103) (rule!1959 (_1!3700 (get!2298 lt!255307)))))))

(declare-fun bm!40460 () Bool)

(assert (=> bm!40460 (= call!40465 (maxPrefixOneRule!438 thiss!22590 (h!11389 (t!79675 rules!3103)) input!2705))))

(declare-fun b!599657 () Bool)

(declare-fun lt!255308 () Option!1540)

(declare-fun lt!255309 () Option!1540)

(assert (=> b!599657 (= e!363212 (ite (and ((_ is None!1539) lt!255308) ((_ is None!1539) lt!255309)) None!1539 (ite ((_ is None!1539) lt!255309) lt!255308 (ite ((_ is None!1539) lt!255308) lt!255309 (ite (>= (size!4712 (_1!3700 (v!16430 lt!255308))) (size!4712 (_1!3700 (v!16430 lt!255309)))) lt!255308 lt!255309)))))))

(assert (=> b!599657 (= lt!255308 call!40465)))

(assert (=> b!599657 (= lt!255309 (maxPrefix!773 thiss!22590 (t!79675 (t!79675 rules!3103)) input!2705))))

(declare-fun b!599658 () Bool)

(declare-fun res!259284 () Bool)

(assert (=> b!599658 (=> (not res!259284) (not e!363211))))

(assert (=> b!599658 (= res!259284 (= (value!38753 (_1!3700 (get!2298 lt!255307))) (apply!1442 (transformation!1189 (rule!1959 (_1!3700 (get!2298 lt!255307)))) (seqFromList!1365 (originalCharacters!1228 (_1!3700 (get!2298 lt!255307)))))))))

(declare-fun b!599659 () Bool)

(assert (=> b!599659 (= e!363213 e!363211)))

(declare-fun res!259289 () Bool)

(assert (=> b!599659 (=> (not res!259289) (not e!363211))))

(assert (=> b!599659 (= res!259289 (isDefined!1351 lt!255307))))

(assert (= (and d!210904 c!111358) b!599651))

(assert (= (and d!210904 (not c!111358)) b!599657))

(assert (= (or b!599651 b!599657) bm!40460))

(assert (= (and d!210904 (not res!259286)) b!599659))

(assert (= (and b!599659 res!259289) b!599654))

(assert (= (and b!599654 res!259288) b!599655))

(assert (= (and b!599655 res!259287) b!599653))

(assert (= (and b!599653 res!259290) b!599658))

(assert (= (and b!599658 res!259284) b!599652))

(assert (= (and b!599652 res!259285) b!599656))

(declare-fun m!863705 () Bool)

(assert (=> b!599656 m!863705))

(declare-fun m!863707 () Bool)

(assert (=> b!599656 m!863707))

(assert (=> b!599655 m!863705))

(declare-fun m!863709 () Bool)

(assert (=> b!599655 m!863709))

(assert (=> b!599655 m!862739))

(declare-fun m!863711 () Bool)

(assert (=> b!599657 m!863711))

(declare-fun m!863713 () Bool)

(assert (=> bm!40460 m!863713))

(declare-fun m!863715 () Bool)

(assert (=> b!599659 m!863715))

(assert (=> b!599658 m!863705))

(declare-fun m!863717 () Bool)

(assert (=> b!599658 m!863717))

(assert (=> b!599658 m!863717))

(declare-fun m!863719 () Bool)

(assert (=> b!599658 m!863719))

(assert (=> b!599653 m!863705))

(declare-fun m!863721 () Bool)

(assert (=> b!599653 m!863721))

(assert (=> b!599653 m!863721))

(declare-fun m!863723 () Bool)

(assert (=> b!599653 m!863723))

(assert (=> b!599653 m!863723))

(declare-fun m!863725 () Bool)

(assert (=> b!599653 m!863725))

(assert (=> b!599654 m!863705))

(assert (=> b!599654 m!863721))

(assert (=> b!599654 m!863721))

(assert (=> b!599654 m!863723))

(declare-fun m!863727 () Bool)

(assert (=> d!210904 m!863727))

(assert (=> d!210904 m!862421))

(assert (=> d!210904 m!862407))

(assert (=> d!210904 m!863579))

(assert (=> b!599652 m!863705))

(assert (=> b!599652 m!863721))

(assert (=> b!599652 m!863721))

(assert (=> b!599652 m!863723))

(assert (=> b!599652 m!863723))

(declare-fun m!863729 () Bool)

(assert (=> b!599652 m!863729))

(assert (=> b!599004 d!210904))

(declare-fun d!210906 () Bool)

(assert (=> d!210906 (= suffix!1342 lt!255025)))

(assert (=> d!210906 true))

(declare-fun _$63!734 () Unit!10894)

(assert (=> d!210906 (= (choose!4371 lt!255024 suffix!1342 lt!255024 lt!255025 lt!255016) _$63!734)))

(assert (=> d!210486 d!210906))

(declare-fun b!599660 () Bool)

(declare-fun e!363215 () Bool)

(declare-fun e!363214 () Bool)

(assert (=> b!599660 (= e!363215 e!363214)))

(declare-fun res!259292 () Bool)

(assert (=> b!599660 (=> (not res!259292) (not e!363214))))

(assert (=> b!599660 (= res!259292 (not ((_ is Nil!5986) lt!255016)))))

(declare-fun d!210908 () Bool)

(declare-fun e!363216 () Bool)

(assert (=> d!210908 e!363216))

(declare-fun res!259293 () Bool)

(assert (=> d!210908 (=> res!259293 e!363216)))

(declare-fun lt!255311 () Bool)

(assert (=> d!210908 (= res!259293 (not lt!255311))))

(assert (=> d!210908 (= lt!255311 e!363215)))

(declare-fun res!259291 () Bool)

(assert (=> d!210908 (=> res!259291 e!363215)))

(assert (=> d!210908 (= res!259291 ((_ is Nil!5986) lt!255024))))

(assert (=> d!210908 (= (isPrefix!817 lt!255024 lt!255016) lt!255311)))

(declare-fun b!599662 () Bool)

(assert (=> b!599662 (= e!363214 (isPrefix!817 (tail!801 lt!255024) (tail!801 lt!255016)))))

(declare-fun b!599661 () Bool)

(declare-fun res!259294 () Bool)

(assert (=> b!599661 (=> (not res!259294) (not e!363214))))

(assert (=> b!599661 (= res!259294 (= (head!1272 lt!255024) (head!1272 lt!255016)))))

(declare-fun b!599663 () Bool)

(assert (=> b!599663 (= e!363216 (>= (size!4713 lt!255016) (size!4713 lt!255024)))))

(assert (= (and d!210908 (not res!259291)) b!599660))

(assert (= (and b!599660 res!259292) b!599661))

(assert (= (and b!599661 res!259294) b!599662))

(assert (= (and d!210908 (not res!259293)) b!599663))

(assert (=> b!599662 m!862847))

(assert (=> b!599662 m!862783))

(assert (=> b!599662 m!862847))

(assert (=> b!599662 m!862783))

(declare-fun m!863731 () Bool)

(assert (=> b!599662 m!863731))

(assert (=> b!599661 m!862853))

(assert (=> b!599661 m!862839))

(assert (=> b!599663 m!862707))

(assert (=> b!599663 m!862395))

(assert (=> d!210486 d!210908))

(declare-fun b!599664 () Bool)

(declare-fun e!363218 () Bool)

(declare-fun e!363217 () Bool)

(assert (=> b!599664 (= e!363218 e!363217)))

(declare-fun res!259296 () Bool)

(assert (=> b!599664 (=> (not res!259296) (not e!363217))))

(assert (=> b!599664 (= res!259296 (not ((_ is Nil!5986) (tail!801 lt!255039))))))

(declare-fun d!210910 () Bool)

(declare-fun e!363219 () Bool)

(assert (=> d!210910 e!363219))

(declare-fun res!259297 () Bool)

(assert (=> d!210910 (=> res!259297 e!363219)))

(declare-fun lt!255312 () Bool)

(assert (=> d!210910 (= res!259297 (not lt!255312))))

(assert (=> d!210910 (= lt!255312 e!363218)))

(declare-fun res!259295 () Bool)

(assert (=> d!210910 (=> res!259295 e!363218)))

(assert (=> d!210910 (= res!259295 ((_ is Nil!5986) (tail!801 lt!255021)))))

(assert (=> d!210910 (= (isPrefix!817 (tail!801 lt!255021) (tail!801 lt!255039)) lt!255312)))

(declare-fun b!599666 () Bool)

(assert (=> b!599666 (= e!363217 (isPrefix!817 (tail!801 (tail!801 lt!255021)) (tail!801 (tail!801 lt!255039))))))

(declare-fun b!599665 () Bool)

(declare-fun res!259298 () Bool)

(assert (=> b!599665 (=> (not res!259298) (not e!363217))))

(assert (=> b!599665 (= res!259298 (= (head!1272 (tail!801 lt!255021)) (head!1272 (tail!801 lt!255039))))))

(declare-fun b!599667 () Bool)

(assert (=> b!599667 (= e!363219 (>= (size!4713 (tail!801 lt!255039)) (size!4713 (tail!801 lt!255021))))))

(assert (= (and d!210910 (not res!259295)) b!599664))

(assert (= (and b!599664 res!259296) b!599665))

(assert (= (and b!599665 res!259298) b!599666))

(assert (= (and d!210910 (not res!259297)) b!599667))

(assert (=> b!599666 m!862895))

(declare-fun m!863733 () Bool)

(assert (=> b!599666 m!863733))

(assert (=> b!599666 m!862897))

(declare-fun m!863735 () Bool)

(assert (=> b!599666 m!863735))

(assert (=> b!599666 m!863733))

(assert (=> b!599666 m!863735))

(declare-fun m!863737 () Bool)

(assert (=> b!599666 m!863737))

(assert (=> b!599665 m!862895))

(declare-fun m!863739 () Bool)

(assert (=> b!599665 m!863739))

(assert (=> b!599665 m!862897))

(declare-fun m!863741 () Bool)

(assert (=> b!599665 m!863741))

(assert (=> b!599667 m!862897))

(declare-fun m!863743 () Bool)

(assert (=> b!599667 m!863743))

(assert (=> b!599667 m!862895))

(declare-fun m!863745 () Bool)

(assert (=> b!599667 m!863745))

(assert (=> b!599069 d!210910))

(declare-fun d!210912 () Bool)

(assert (=> d!210912 (= (tail!801 lt!255021) (t!79673 lt!255021))))

(assert (=> b!599069 d!210912))

(declare-fun d!210914 () Bool)

(assert (=> d!210914 (= (tail!801 lt!255039) (t!79673 lt!255039))))

(assert (=> b!599069 d!210914))

(declare-fun d!210916 () Bool)

(declare-fun lt!255313 () Int)

(assert (=> d!210916 (>= lt!255313 0)))

(declare-fun e!363220 () Int)

(assert (=> d!210916 (= lt!255313 e!363220)))

(declare-fun c!111359 () Bool)

(assert (=> d!210916 (= c!111359 ((_ is Nil!5986) (_2!3700 (get!2298 lt!255125))))))

(assert (=> d!210916 (= (size!4713 (_2!3700 (get!2298 lt!255125))) lt!255313)))

(declare-fun b!599668 () Bool)

(assert (=> b!599668 (= e!363220 0)))

(declare-fun b!599669 () Bool)

(assert (=> b!599669 (= e!363220 (+ 1 (size!4713 (t!79673 (_2!3700 (get!2298 lt!255125))))))))

(assert (= (and d!210916 c!111359) b!599668))

(assert (= (and d!210916 (not c!111359)) b!599669))

(declare-fun m!863747 () Bool)

(assert (=> b!599669 m!863747))

(assert (=> b!598951 d!210916))

(assert (=> b!598951 d!210856))

(declare-fun d!210918 () Bool)

(declare-fun lt!255314 () Int)

(assert (=> d!210918 (>= lt!255314 0)))

(declare-fun e!363221 () Int)

(assert (=> d!210918 (= lt!255314 e!363221)))

(declare-fun c!111360 () Bool)

(assert (=> d!210918 (= c!111360 ((_ is Nil!5986) lt!255016))))

(assert (=> d!210918 (= (size!4713 lt!255016) lt!255314)))

(declare-fun b!599670 () Bool)

(assert (=> b!599670 (= e!363221 0)))

(declare-fun b!599671 () Bool)

(assert (=> b!599671 (= e!363221 (+ 1 (size!4713 (t!79673 lt!255016))))))

(assert (= (and d!210918 c!111360) b!599670))

(assert (= (and d!210918 (not c!111360)) b!599671))

(declare-fun m!863749 () Bool)

(assert (=> b!599671 m!863749))

(assert (=> b!598951 d!210918))

(declare-fun d!210920 () Bool)

(declare-fun charsToBigInt!0 (List!5997 Int) Int)

(assert (=> d!210920 (= (inv!15 (value!38753 token!491)) (= (charsToBigInt!0 (text!8940 (value!38753 token!491)) 0) (value!38749 (value!38753 token!491))))))

(declare-fun bs!70845 () Bool)

(assert (= bs!70845 d!210920))

(declare-fun m!863751 () Bool)

(assert (=> bs!70845 m!863751))

(assert (=> b!599023 d!210920))

(declare-fun d!210922 () Bool)

(assert (=> d!210922 (= (isEmpty!4324 lt!255146) (not ((_ is Some!1539) lt!255146)))))

(assert (=> d!210496 d!210922))

(assert (=> d!210496 d!210518))

(assert (=> d!210496 d!210526))

(assert (=> d!210496 d!210888))

(declare-fun d!210924 () Bool)

(assert (=> d!210924 (= (list!2508 (dynLambda!3455 (toChars!1939 (transformation!1189 (rule!1959 token!491))) (value!38753 token!491))) (list!2510 (c!111202 (dynLambda!3455 (toChars!1939 (transformation!1189 (rule!1959 token!491))) (value!38753 token!491)))))))

(declare-fun bs!70846 () Bool)

(assert (= bs!70846 d!210924))

(declare-fun m!863753 () Bool)

(assert (=> bs!70846 m!863753))

(assert (=> b!598982 d!210924))

(assert (=> b!599036 d!210918))

(assert (=> b!599036 d!210842))

(declare-fun d!210926 () Bool)

(declare-fun lt!255315 () Int)

(assert (=> d!210926 (>= lt!255315 0)))

(declare-fun e!363222 () Int)

(assert (=> d!210926 (= lt!255315 e!363222)))

(declare-fun c!111361 () Bool)

(assert (=> d!210926 (= c!111361 ((_ is Nil!5986) (t!79673 lt!255024)))))

(assert (=> d!210926 (= (size!4713 (t!79673 lt!255024)) lt!255315)))

(declare-fun b!599672 () Bool)

(assert (=> b!599672 (= e!363222 0)))

(declare-fun b!599673 () Bool)

(assert (=> b!599673 (= e!363222 (+ 1 (size!4713 (t!79673 (t!79673 lt!255024)))))))

(assert (= (and d!210926 c!111361) b!599672))

(assert (= (and d!210926 (not c!111361)) b!599673))

(declare-fun m!863755 () Bool)

(assert (=> b!599673 m!863755))

(assert (=> b!599062 d!210926))

(declare-fun d!210928 () Bool)

(assert (=> d!210928 (= (list!2508 lt!255135) (list!2510 (c!111202 lt!255135)))))

(declare-fun bs!70847 () Bool)

(assert (= bs!70847 d!210928))

(declare-fun m!863757 () Bool)

(assert (=> bs!70847 m!863757))

(assert (=> d!210482 d!210928))

(declare-fun d!210930 () Bool)

(declare-fun c!111362 () Bool)

(assert (=> d!210930 (= c!111362 ((_ is Node!1906) (c!111202 (dynLambda!3455 (toChars!1939 (transformation!1189 (rule!1959 (_1!3700 (v!16430 lt!255028))))) (value!38753 (_1!3700 (v!16430 lt!255028)))))))))

(declare-fun e!363223 () Bool)

(assert (=> d!210930 (= (inv!7592 (c!111202 (dynLambda!3455 (toChars!1939 (transformation!1189 (rule!1959 (_1!3700 (v!16430 lt!255028))))) (value!38753 (_1!3700 (v!16430 lt!255028)))))) e!363223)))

(declare-fun b!599674 () Bool)

(assert (=> b!599674 (= e!363223 (inv!7596 (c!111202 (dynLambda!3455 (toChars!1939 (transformation!1189 (rule!1959 (_1!3700 (v!16430 lt!255028))))) (value!38753 (_1!3700 (v!16430 lt!255028)))))))))

(declare-fun b!599675 () Bool)

(declare-fun e!363224 () Bool)

(assert (=> b!599675 (= e!363223 e!363224)))

(declare-fun res!259299 () Bool)

(assert (=> b!599675 (= res!259299 (not ((_ is Leaf!3008) (c!111202 (dynLambda!3455 (toChars!1939 (transformation!1189 (rule!1959 (_1!3700 (v!16430 lt!255028))))) (value!38753 (_1!3700 (v!16430 lt!255028))))))))))

(assert (=> b!599675 (=> res!259299 e!363224)))

(declare-fun b!599676 () Bool)

(assert (=> b!599676 (= e!363224 (inv!7597 (c!111202 (dynLambda!3455 (toChars!1939 (transformation!1189 (rule!1959 (_1!3700 (v!16430 lt!255028))))) (value!38753 (_1!3700 (v!16430 lt!255028)))))))))

(assert (= (and d!210930 c!111362) b!599674))

(assert (= (and d!210930 (not c!111362)) b!599675))

(assert (= (and b!599675 (not res!259299)) b!599676))

(declare-fun m!863759 () Bool)

(assert (=> b!599674 m!863759))

(declare-fun m!863761 () Bool)

(assert (=> b!599676 m!863761))

(assert (=> b!599056 d!210930))

(assert (=> b!598954 d!210856))

(declare-fun d!210932 () Bool)

(assert (=> d!210932 (= (apply!1442 (transformation!1189 (rule!1959 (_1!3700 (get!2298 lt!255125)))) (seqFromList!1365 (originalCharacters!1228 (_1!3700 (get!2298 lt!255125))))) (dynLambda!3456 (toValue!2080 (transformation!1189 (rule!1959 (_1!3700 (get!2298 lt!255125))))) (seqFromList!1365 (originalCharacters!1228 (_1!3700 (get!2298 lt!255125))))))))

(declare-fun b_lambda!23657 () Bool)

(assert (=> (not b_lambda!23657) (not d!210932)))

(declare-fun tb!52315 () Bool)

(declare-fun t!79781 () Bool)

(assert (=> (and b!598700 (= (toValue!2080 (transformation!1189 (rule!1959 token!491))) (toValue!2080 (transformation!1189 (rule!1959 (_1!3700 (get!2298 lt!255125)))))) t!79781) tb!52315))

(declare-fun result!58840 () Bool)

(assert (=> tb!52315 (= result!58840 (inv!21 (dynLambda!3456 (toValue!2080 (transformation!1189 (rule!1959 (_1!3700 (get!2298 lt!255125))))) (seqFromList!1365 (originalCharacters!1228 (_1!3700 (get!2298 lt!255125)))))))))

(declare-fun m!863763 () Bool)

(assert (=> tb!52315 m!863763))

(assert (=> d!210932 t!79781))

(declare-fun b_and!59219 () Bool)

(assert (= b_and!59171 (and (=> t!79781 result!58840) b_and!59219)))

(declare-fun t!79783 () Bool)

(declare-fun tb!52317 () Bool)

(assert (=> (and b!598713 (= (toValue!2080 (transformation!1189 (h!11389 rules!3103))) (toValue!2080 (transformation!1189 (rule!1959 (_1!3700 (get!2298 lt!255125)))))) t!79783) tb!52317))

(declare-fun result!58842 () Bool)

(assert (= result!58842 result!58840))

(assert (=> d!210932 t!79783))

(declare-fun b_and!59221 () Bool)

(assert (= b_and!59173 (and (=> t!79783 result!58842) b_and!59221)))

(declare-fun t!79785 () Bool)

(declare-fun tb!52319 () Bool)

(assert (=> (and b!599102 (= (toValue!2080 (transformation!1189 (h!11389 (t!79675 rules!3103)))) (toValue!2080 (transformation!1189 (rule!1959 (_1!3700 (get!2298 lt!255125)))))) t!79785) tb!52319))

(declare-fun result!58844 () Bool)

(assert (= result!58844 result!58840))

(assert (=> d!210932 t!79785))

(declare-fun b_and!59223 () Bool)

(assert (= b_and!59175 (and (=> t!79785 result!58844) b_and!59223)))

(assert (=> d!210932 m!862715))

(declare-fun m!863765 () Bool)

(assert (=> d!210932 m!863765))

(assert (=> b!598954 d!210932))

(declare-fun d!210934 () Bool)

(assert (=> d!210934 (= (seqFromList!1365 (originalCharacters!1228 (_1!3700 (get!2298 lt!255125)))) (fromListB!600 (originalCharacters!1228 (_1!3700 (get!2298 lt!255125)))))))

(declare-fun bs!70848 () Bool)

(assert (= bs!70848 d!210934))

(declare-fun m!863767 () Bool)

(assert (=> bs!70848 m!863767))

(assert (=> b!598954 d!210934))

(declare-fun d!210936 () Bool)

(declare-fun lt!255316 () Int)

(assert (=> d!210936 (>= lt!255316 0)))

(declare-fun e!363226 () Int)

(assert (=> d!210936 (= lt!255316 e!363226)))

(declare-fun c!111363 () Bool)

(assert (=> d!210936 (= c!111363 ((_ is Nil!5986) lt!255131))))

(assert (=> d!210936 (= (size!4713 lt!255131) lt!255316)))

(declare-fun b!599677 () Bool)

(assert (=> b!599677 (= e!363226 0)))

(declare-fun b!599678 () Bool)

(assert (=> b!599678 (= e!363226 (+ 1 (size!4713 (t!79673 lt!255131))))))

(assert (= (and d!210936 c!111363) b!599677))

(assert (= (and d!210936 (not c!111363)) b!599678))

(declare-fun m!863769 () Bool)

(assert (=> b!599678 m!863769))

(assert (=> b!598966 d!210936))

(assert (=> b!598966 d!210842))

(declare-fun d!210938 () Bool)

(declare-fun lt!255317 () Int)

(assert (=> d!210938 (>= lt!255317 0)))

(declare-fun e!363227 () Int)

(assert (=> d!210938 (= lt!255317 e!363227)))

(declare-fun c!111364 () Bool)

(assert (=> d!210938 (= c!111364 ((_ is Nil!5986) suffix!1342))))

(assert (=> d!210938 (= (size!4713 suffix!1342) lt!255317)))

(declare-fun b!599679 () Bool)

(assert (=> b!599679 (= e!363227 0)))

(declare-fun b!599680 () Bool)

(assert (=> b!599680 (= e!363227 (+ 1 (size!4713 (t!79673 suffix!1342))))))

(assert (= (and d!210938 c!111364) b!599679))

(assert (= (and d!210938 (not c!111364)) b!599680))

(declare-fun m!863771 () Bool)

(assert (=> b!599680 m!863771))

(assert (=> b!598966 d!210938))

(declare-fun b!599681 () Bool)

(declare-fun e!363229 () Bool)

(declare-fun e!363228 () Bool)

(assert (=> b!599681 (= e!363229 e!363228)))

(declare-fun res!259301 () Bool)

(assert (=> b!599681 (=> (not res!259301) (not e!363228))))

(assert (=> b!599681 (= res!259301 (not ((_ is Nil!5986) (++!1677 input!2705 suffix!1342))))))

(declare-fun d!210940 () Bool)

(declare-fun e!363230 () Bool)

(assert (=> d!210940 e!363230))

(declare-fun res!259302 () Bool)

(assert (=> d!210940 (=> res!259302 e!363230)))

(declare-fun lt!255318 () Bool)

(assert (=> d!210940 (= res!259302 (not lt!255318))))

(assert (=> d!210940 (= lt!255318 e!363229)))

(declare-fun res!259300 () Bool)

(assert (=> d!210940 (=> res!259300 e!363229)))

(assert (=> d!210940 (= res!259300 ((_ is Nil!5986) input!2705))))

(assert (=> d!210940 (= (isPrefix!817 input!2705 (++!1677 input!2705 suffix!1342)) lt!255318)))

(declare-fun b!599683 () Bool)

(assert (=> b!599683 (= e!363228 (isPrefix!817 (tail!801 input!2705) (tail!801 (++!1677 input!2705 suffix!1342))))))

(declare-fun b!599682 () Bool)

(declare-fun res!259303 () Bool)

(assert (=> b!599682 (=> (not res!259303) (not e!363228))))

(assert (=> b!599682 (= res!259303 (= (head!1272 input!2705) (head!1272 (++!1677 input!2705 suffix!1342))))))

(declare-fun b!599684 () Bool)

(assert (=> b!599684 (= e!363230 (>= (size!4713 (++!1677 input!2705 suffix!1342)) (size!4713 input!2705)))))

(assert (= (and d!210940 (not res!259300)) b!599681))

(assert (= (and b!599681 res!259301) b!599682))

(assert (= (and b!599682 res!259303) b!599683))

(assert (= (and d!210940 (not res!259302)) b!599684))

(assert (=> b!599683 m!862833))

(assert (=> b!599683 m!862435))

(declare-fun m!863773 () Bool)

(assert (=> b!599683 m!863773))

(assert (=> b!599683 m!862833))

(assert (=> b!599683 m!863773))

(declare-fun m!863775 () Bool)

(assert (=> b!599683 m!863775))

(assert (=> b!599682 m!862837))

(assert (=> b!599682 m!862435))

(declare-fun m!863777 () Bool)

(assert (=> b!599682 m!863777))

(assert (=> b!599684 m!862435))

(declare-fun m!863779 () Bool)

(assert (=> b!599684 m!863779))

(assert (=> b!599684 m!862739))

(assert (=> d!210556 d!210940))

(assert (=> d!210556 d!210472))

(declare-fun d!210942 () Bool)

(assert (=> d!210942 (isPrefix!817 input!2705 (++!1677 input!2705 suffix!1342))))

(assert (=> d!210942 true))

(declare-fun _$46!974 () Unit!10894)

(assert (=> d!210942 (= (choose!4375 input!2705 suffix!1342) _$46!974)))

(declare-fun bs!70849 () Bool)

(assert (= bs!70849 d!210942))

(assert (=> bs!70849 m!862435))

(assert (=> bs!70849 m!862435))

(assert (=> bs!70849 m!862931))

(assert (=> d!210556 d!210942))

(assert (=> b!598972 d!210602))

(declare-fun d!210944 () Bool)

(declare-fun charsToInt!0 (List!5997) (_ BitVec 32))

(assert (=> d!210944 (= (inv!16 (value!38753 token!491)) (= (charsToInt!0 (text!8938 (value!38753 token!491))) (value!38745 (value!38753 token!491))))))

(declare-fun bs!70850 () Bool)

(assert (= bs!70850 d!210944))

(declare-fun m!863781 () Bool)

(assert (=> bs!70850 m!863781))

(assert (=> b!599020 d!210944))

(assert (=> d!210530 d!210564))

(declare-fun b!599713 () Bool)

(declare-fun res!259325 () Bool)

(declare-fun e!363251 () Bool)

(assert (=> b!599713 (=> res!259325 e!363251)))

(assert (=> b!599713 (= res!259325 (not ((_ is ElementMatch!1523) (regex!1189 (rule!1959 (_1!3700 (get!2298 lt!255125)))))))))

(declare-fun e!363245 () Bool)

(assert (=> b!599713 (= e!363245 e!363251)))

(declare-fun b!599714 () Bool)

(declare-fun res!259324 () Bool)

(declare-fun e!363250 () Bool)

(assert (=> b!599714 (=> (not res!259324) (not e!363250))))

(assert (=> b!599714 (= res!259324 (isEmpty!4321 (tail!801 (list!2508 (charsOf!818 (_1!3700 (get!2298 lt!255125)))))))))

(declare-fun b!599715 () Bool)

(declare-fun lt!255321 () Bool)

(assert (=> b!599715 (= e!363245 (not lt!255321))))

(declare-fun d!210946 () Bool)

(declare-fun e!363248 () Bool)

(assert (=> d!210946 e!363248))

(declare-fun c!111372 () Bool)

(assert (=> d!210946 (= c!111372 ((_ is EmptyExpr!1523) (regex!1189 (rule!1959 (_1!3700 (get!2298 lt!255125))))))))

(declare-fun e!363249 () Bool)

(assert (=> d!210946 (= lt!255321 e!363249)))

(declare-fun c!111373 () Bool)

(assert (=> d!210946 (= c!111373 (isEmpty!4321 (list!2508 (charsOf!818 (_1!3700 (get!2298 lt!255125))))))))

(assert (=> d!210946 (validRegex!526 (regex!1189 (rule!1959 (_1!3700 (get!2298 lt!255125)))))))

(assert (=> d!210946 (= (matchR!634 (regex!1189 (rule!1959 (_1!3700 (get!2298 lt!255125)))) (list!2508 (charsOf!818 (_1!3700 (get!2298 lt!255125))))) lt!255321)))

(declare-fun b!599716 () Bool)

(declare-fun res!259323 () Bool)

(assert (=> b!599716 (=> res!259323 e!363251)))

(assert (=> b!599716 (= res!259323 e!363250)))

(declare-fun res!259327 () Bool)

(assert (=> b!599716 (=> (not res!259327) (not e!363250))))

(assert (=> b!599716 (= res!259327 lt!255321)))

(declare-fun b!599717 () Bool)

(declare-fun call!40468 () Bool)

(assert (=> b!599717 (= e!363248 (= lt!255321 call!40468))))

(declare-fun b!599718 () Bool)

(declare-fun res!259322 () Bool)

(assert (=> b!599718 (=> (not res!259322) (not e!363250))))

(assert (=> b!599718 (= res!259322 (not call!40468))))

(declare-fun bm!40463 () Bool)

(assert (=> bm!40463 (= call!40468 (isEmpty!4321 (list!2508 (charsOf!818 (_1!3700 (get!2298 lt!255125))))))))

(declare-fun b!599719 () Bool)

(assert (=> b!599719 (= e!363248 e!363245)))

(declare-fun c!111371 () Bool)

(assert (=> b!599719 (= c!111371 ((_ is EmptyLang!1523) (regex!1189 (rule!1959 (_1!3700 (get!2298 lt!255125))))))))

(declare-fun b!599720 () Bool)

(assert (=> b!599720 (= e!363249 (nullable!431 (regex!1189 (rule!1959 (_1!3700 (get!2298 lt!255125))))))))

(declare-fun b!599721 () Bool)

(declare-fun res!259321 () Bool)

(declare-fun e!363246 () Bool)

(assert (=> b!599721 (=> res!259321 e!363246)))

(assert (=> b!599721 (= res!259321 (not (isEmpty!4321 (tail!801 (list!2508 (charsOf!818 (_1!3700 (get!2298 lt!255125))))))))))

(declare-fun b!599722 () Bool)

(assert (=> b!599722 (= e!363250 (= (head!1272 (list!2508 (charsOf!818 (_1!3700 (get!2298 lt!255125))))) (c!111201 (regex!1189 (rule!1959 (_1!3700 (get!2298 lt!255125)))))))))

(declare-fun b!599723 () Bool)

(declare-fun e!363247 () Bool)

(assert (=> b!599723 (= e!363247 e!363246)))

(declare-fun res!259320 () Bool)

(assert (=> b!599723 (=> res!259320 e!363246)))

(assert (=> b!599723 (= res!259320 call!40468)))

(declare-fun b!599724 () Bool)

(assert (=> b!599724 (= e!363251 e!363247)))

(declare-fun res!259326 () Bool)

(assert (=> b!599724 (=> (not res!259326) (not e!363247))))

(assert (=> b!599724 (= res!259326 (not lt!255321))))

(declare-fun b!599725 () Bool)

(assert (=> b!599725 (= e!363246 (not (= (head!1272 (list!2508 (charsOf!818 (_1!3700 (get!2298 lt!255125))))) (c!111201 (regex!1189 (rule!1959 (_1!3700 (get!2298 lt!255125))))))))))

(declare-fun b!599726 () Bool)

(declare-fun derivativeStep!320 (Regex!1523 C!3968) Regex!1523)

(assert (=> b!599726 (= e!363249 (matchR!634 (derivativeStep!320 (regex!1189 (rule!1959 (_1!3700 (get!2298 lt!255125)))) (head!1272 (list!2508 (charsOf!818 (_1!3700 (get!2298 lt!255125)))))) (tail!801 (list!2508 (charsOf!818 (_1!3700 (get!2298 lt!255125)))))))))

(assert (= (and d!210946 c!111373) b!599720))

(assert (= (and d!210946 (not c!111373)) b!599726))

(assert (= (and d!210946 c!111372) b!599717))

(assert (= (and d!210946 (not c!111372)) b!599719))

(assert (= (and b!599719 c!111371) b!599715))

(assert (= (and b!599719 (not c!111371)) b!599713))

(assert (= (and b!599713 (not res!259325)) b!599716))

(assert (= (and b!599716 res!259327) b!599718))

(assert (= (and b!599718 res!259322) b!599714))

(assert (= (and b!599714 res!259324) b!599722))

(assert (= (and b!599716 (not res!259323)) b!599724))

(assert (= (and b!599724 res!259326) b!599723))

(assert (= (and b!599723 (not res!259320)) b!599721))

(assert (= (and b!599721 (not res!259321)) b!599725))

(assert (= (or b!599717 b!599718 b!599723) bm!40463))

(assert (=> b!599725 m!862721))

(declare-fun m!863783 () Bool)

(assert (=> b!599725 m!863783))

(assert (=> bm!40463 m!862721))

(declare-fun m!863785 () Bool)

(assert (=> bm!40463 m!863785))

(declare-fun m!863787 () Bool)

(assert (=> b!599720 m!863787))

(assert (=> b!599721 m!862721))

(declare-fun m!863789 () Bool)

(assert (=> b!599721 m!863789))

(assert (=> b!599721 m!863789))

(declare-fun m!863791 () Bool)

(assert (=> b!599721 m!863791))

(assert (=> d!210946 m!862721))

(assert (=> d!210946 m!863785))

(declare-fun m!863793 () Bool)

(assert (=> d!210946 m!863793))

(assert (=> b!599722 m!862721))

(assert (=> b!599722 m!863783))

(assert (=> b!599714 m!862721))

(assert (=> b!599714 m!863789))

(assert (=> b!599714 m!863789))

(assert (=> b!599714 m!863791))

(assert (=> b!599726 m!862721))

(assert (=> b!599726 m!863783))

(assert (=> b!599726 m!863783))

(declare-fun m!863795 () Bool)

(assert (=> b!599726 m!863795))

(assert (=> b!599726 m!862721))

(assert (=> b!599726 m!863789))

(assert (=> b!599726 m!863795))

(assert (=> b!599726 m!863789))

(declare-fun m!863797 () Bool)

(assert (=> b!599726 m!863797))

(assert (=> b!598948 d!210946))

(assert (=> b!598948 d!210856))

(assert (=> b!598948 d!210852))

(assert (=> b!598948 d!210854))

(assert (=> b!599046 d!210840))

(assert (=> b!599046 d!210532))

(declare-fun d!210948 () Bool)

(declare-fun lt!255322 () Bool)

(assert (=> d!210948 (= lt!255322 (select (content!1080 (t!79675 rules!3103)) (rule!1959 (_1!3700 (v!16430 lt!255028)))))))

(declare-fun e!363252 () Bool)

(assert (=> d!210948 (= lt!255322 e!363252)))

(declare-fun res!259329 () Bool)

(assert (=> d!210948 (=> (not res!259329) (not e!363252))))

(assert (=> d!210948 (= res!259329 ((_ is Cons!5988) (t!79675 rules!3103)))))

(assert (=> d!210948 (= (contains!1399 (t!79675 rules!3103) (rule!1959 (_1!3700 (v!16430 lt!255028)))) lt!255322)))

(declare-fun b!599727 () Bool)

(declare-fun e!363253 () Bool)

(assert (=> b!599727 (= e!363252 e!363253)))

(declare-fun res!259328 () Bool)

(assert (=> b!599727 (=> res!259328 e!363253)))

(assert (=> b!599727 (= res!259328 (= (h!11389 (t!79675 rules!3103)) (rule!1959 (_1!3700 (v!16430 lt!255028)))))))

(declare-fun b!599728 () Bool)

(assert (=> b!599728 (= e!363253 (contains!1399 (t!79675 (t!79675 rules!3103)) (rule!1959 (_1!3700 (v!16430 lt!255028)))))))

(assert (= (and d!210948 res!259329) b!599727))

(assert (= (and b!599727 (not res!259328)) b!599728))

(assert (=> d!210948 m!863507))

(declare-fun m!863799 () Bool)

(assert (=> d!210948 m!863799))

(declare-fun m!863801 () Bool)

(assert (=> b!599728 m!863801))

(assert (=> b!598995 d!210948))

(declare-fun b!599747 () Bool)

(declare-fun res!259343 () Bool)

(declare-fun e!363271 () Bool)

(assert (=> b!599747 (=> (not res!259343) (not e!363271))))

(declare-fun call!40475 () Bool)

(assert (=> b!599747 (= res!259343 call!40475)))

(declare-fun e!363273 () Bool)

(assert (=> b!599747 (= e!363273 e!363271)))

(declare-fun b!599748 () Bool)

(declare-fun e!363272 () Bool)

(assert (=> b!599748 (= e!363272 call!40475)))

(declare-fun b!599749 () Bool)

(declare-fun e!363270 () Bool)

(assert (=> b!599749 (= e!363270 e!363272)))

(declare-fun res!259340 () Bool)

(assert (=> b!599749 (=> (not res!259340) (not e!363272))))

(declare-fun call!40476 () Bool)

(assert (=> b!599749 (= res!259340 call!40476)))

(declare-fun b!599751 () Bool)

(declare-fun e!363274 () Bool)

(assert (=> b!599751 (= e!363274 e!363273)))

(declare-fun c!111378 () Bool)

(assert (=> b!599751 (= c!111378 ((_ is Union!1523) (regex!1189 (rule!1959 (_1!3700 (v!16430 lt!255028))))))))

(declare-fun bm!40470 () Bool)

(declare-fun call!40477 () Bool)

(assert (=> bm!40470 (= call!40476 call!40477)))

(declare-fun b!599752 () Bool)

(declare-fun res!259344 () Bool)

(assert (=> b!599752 (=> res!259344 e!363270)))

(assert (=> b!599752 (= res!259344 (not ((_ is Concat!2736) (regex!1189 (rule!1959 (_1!3700 (v!16430 lt!255028)))))))))

(assert (=> b!599752 (= e!363273 e!363270)))

(declare-fun b!599753 () Bool)

(declare-fun e!363269 () Bool)

(assert (=> b!599753 (= e!363269 call!40477)))

(declare-fun bm!40471 () Bool)

(assert (=> bm!40471 (= call!40475 (validRegex!526 (ite c!111378 (regOne!3559 (regex!1189 (rule!1959 (_1!3700 (v!16430 lt!255028))))) (regTwo!3558 (regex!1189 (rule!1959 (_1!3700 (v!16430 lt!255028))))))))))

(declare-fun b!599754 () Bool)

(declare-fun e!363268 () Bool)

(assert (=> b!599754 (= e!363268 e!363274)))

(declare-fun c!111379 () Bool)

(assert (=> b!599754 (= c!111379 ((_ is Star!1523) (regex!1189 (rule!1959 (_1!3700 (v!16430 lt!255028))))))))

(declare-fun b!599750 () Bool)

(assert (=> b!599750 (= e!363271 call!40476)))

(declare-fun d!210950 () Bool)

(declare-fun res!259342 () Bool)

(assert (=> d!210950 (=> res!259342 e!363268)))

(assert (=> d!210950 (= res!259342 ((_ is ElementMatch!1523) (regex!1189 (rule!1959 (_1!3700 (v!16430 lt!255028))))))))

(assert (=> d!210950 (= (validRegex!526 (regex!1189 (rule!1959 (_1!3700 (v!16430 lt!255028))))) e!363268)))

(declare-fun b!599755 () Bool)

(assert (=> b!599755 (= e!363274 e!363269)))

(declare-fun res!259341 () Bool)

(assert (=> b!599755 (= res!259341 (not (nullable!431 (reg!1852 (regex!1189 (rule!1959 (_1!3700 (v!16430 lt!255028))))))))))

(assert (=> b!599755 (=> (not res!259341) (not e!363269))))

(declare-fun bm!40472 () Bool)

(assert (=> bm!40472 (= call!40477 (validRegex!526 (ite c!111379 (reg!1852 (regex!1189 (rule!1959 (_1!3700 (v!16430 lt!255028))))) (ite c!111378 (regTwo!3559 (regex!1189 (rule!1959 (_1!3700 (v!16430 lt!255028))))) (regOne!3558 (regex!1189 (rule!1959 (_1!3700 (v!16430 lt!255028)))))))))))

(assert (= (and d!210950 (not res!259342)) b!599754))

(assert (= (and b!599754 c!111379) b!599755))

(assert (= (and b!599754 (not c!111379)) b!599751))

(assert (= (and b!599755 res!259341) b!599753))

(assert (= (and b!599751 c!111378) b!599747))

(assert (= (and b!599751 (not c!111378)) b!599752))

(assert (= (and b!599747 res!259343) b!599750))

(assert (= (and b!599752 (not res!259344)) b!599749))

(assert (= (and b!599749 res!259340) b!599748))

(assert (= (or b!599747 b!599748) bm!40471))

(assert (= (or b!599750 b!599749) bm!40470))

(assert (= (or b!599753 bm!40470) bm!40472))

(declare-fun m!863803 () Bool)

(assert (=> bm!40471 m!863803))

(declare-fun m!863805 () Bool)

(assert (=> b!599755 m!863805))

(declare-fun m!863807 () Bool)

(assert (=> bm!40472 m!863807))

(assert (=> d!210512 d!210950))

(declare-fun b!599757 () Bool)

(declare-fun e!363275 () List!5996)

(assert (=> b!599757 (= e!363275 (Cons!5986 (h!11387 (t!79673 lt!255024)) (++!1677 (t!79673 (t!79673 lt!255024)) suffix!1342)))))

(declare-fun b!599758 () Bool)

(declare-fun res!259346 () Bool)

(declare-fun e!363276 () Bool)

(assert (=> b!599758 (=> (not res!259346) (not e!363276))))

(declare-fun lt!255323 () List!5996)

(assert (=> b!599758 (= res!259346 (= (size!4713 lt!255323) (+ (size!4713 (t!79673 lt!255024)) (size!4713 suffix!1342))))))

(declare-fun b!599756 () Bool)

(assert (=> b!599756 (= e!363275 suffix!1342)))

(declare-fun b!599759 () Bool)

(assert (=> b!599759 (= e!363276 (or (not (= suffix!1342 Nil!5986)) (= lt!255323 (t!79673 lt!255024))))))

(declare-fun d!210952 () Bool)

(assert (=> d!210952 e!363276))

(declare-fun res!259345 () Bool)

(assert (=> d!210952 (=> (not res!259345) (not e!363276))))

(assert (=> d!210952 (= res!259345 (= (content!1079 lt!255323) ((_ map or) (content!1079 (t!79673 lt!255024)) (content!1079 suffix!1342))))))

(assert (=> d!210952 (= lt!255323 e!363275)))

(declare-fun c!111380 () Bool)

(assert (=> d!210952 (= c!111380 ((_ is Nil!5986) (t!79673 lt!255024)))))

(assert (=> d!210952 (= (++!1677 (t!79673 lt!255024) suffix!1342) lt!255323)))

(assert (= (and d!210952 c!111380) b!599756))

(assert (= (and d!210952 (not c!111380)) b!599757))

(assert (= (and d!210952 res!259345) b!599758))

(assert (= (and b!599758 res!259346) b!599759))

(declare-fun m!863809 () Bool)

(assert (=> b!599757 m!863809))

(declare-fun m!863811 () Bool)

(assert (=> b!599758 m!863811))

(assert (=> b!599758 m!862891))

(assert (=> b!599758 m!862741))

(declare-fun m!863813 () Bool)

(assert (=> d!210952 m!863813))

(declare-fun m!863815 () Bool)

(assert (=> d!210952 m!863815))

(assert (=> d!210952 m!862747))

(assert (=> b!598969 d!210952))

(assert (=> b!599005 d!210830))

(declare-fun d!210954 () Bool)

(assert (=> d!210954 (= (apply!1442 (transformation!1189 (rule!1959 (_1!3700 (get!2298 lt!255146)))) (seqFromList!1365 (originalCharacters!1228 (_1!3700 (get!2298 lt!255146))))) (dynLambda!3456 (toValue!2080 (transformation!1189 (rule!1959 (_1!3700 (get!2298 lt!255146))))) (seqFromList!1365 (originalCharacters!1228 (_1!3700 (get!2298 lt!255146))))))))

(declare-fun b_lambda!23659 () Bool)

(assert (=> (not b_lambda!23659) (not d!210954)))

(declare-fun t!79787 () Bool)

(declare-fun tb!52321 () Bool)

(assert (=> (and b!598700 (= (toValue!2080 (transformation!1189 (rule!1959 token!491))) (toValue!2080 (transformation!1189 (rule!1959 (_1!3700 (get!2298 lt!255146)))))) t!79787) tb!52321))

(declare-fun result!58846 () Bool)

(assert (=> tb!52321 (= result!58846 (inv!21 (dynLambda!3456 (toValue!2080 (transformation!1189 (rule!1959 (_1!3700 (get!2298 lt!255146))))) (seqFromList!1365 (originalCharacters!1228 (_1!3700 (get!2298 lt!255146)))))))))

(declare-fun m!863817 () Bool)

(assert (=> tb!52321 m!863817))

(assert (=> d!210954 t!79787))

(declare-fun b_and!59225 () Bool)

(assert (= b_and!59219 (and (=> t!79787 result!58846) b_and!59225)))

(declare-fun t!79789 () Bool)

(declare-fun tb!52323 () Bool)

(assert (=> (and b!598713 (= (toValue!2080 (transformation!1189 (h!11389 rules!3103))) (toValue!2080 (transformation!1189 (rule!1959 (_1!3700 (get!2298 lt!255146)))))) t!79789) tb!52323))

(declare-fun result!58848 () Bool)

(assert (= result!58848 result!58846))

(assert (=> d!210954 t!79789))

(declare-fun b_and!59227 () Bool)

(assert (= b_and!59221 (and (=> t!79789 result!58848) b_and!59227)))

(declare-fun t!79791 () Bool)

(declare-fun tb!52325 () Bool)

(assert (=> (and b!599102 (= (toValue!2080 (transformation!1189 (h!11389 (t!79675 rules!3103)))) (toValue!2080 (transformation!1189 (rule!1959 (_1!3700 (get!2298 lt!255146)))))) t!79791) tb!52325))

(declare-fun result!58850 () Bool)

(assert (= result!58850 result!58846))

(assert (=> d!210954 t!79791))

(declare-fun b_and!59229 () Bool)

(assert (= b_and!59223 (and (=> t!79791 result!58850) b_and!59229)))

(assert (=> d!210954 m!862809))

(declare-fun m!863819 () Bool)

(assert (=> d!210954 m!863819))

(assert (=> b!599005 d!210954))

(declare-fun d!210956 () Bool)

(assert (=> d!210956 (= (seqFromList!1365 (originalCharacters!1228 (_1!3700 (get!2298 lt!255146)))) (fromListB!600 (originalCharacters!1228 (_1!3700 (get!2298 lt!255146)))))))

(declare-fun bs!70851 () Bool)

(assert (= bs!70851 d!210956))

(declare-fun m!863821 () Bool)

(assert (=> bs!70851 m!863821))

(assert (=> b!599005 d!210956))

(declare-fun b!599760 () Bool)

(declare-fun res!259350 () Bool)

(declare-fun e!363281 () Bool)

(assert (=> b!599760 (=> (not res!259350) (not e!363281))))

(declare-fun call!40478 () Bool)

(assert (=> b!599760 (= res!259350 call!40478)))

(declare-fun e!363283 () Bool)

(assert (=> b!599760 (= e!363283 e!363281)))

(declare-fun b!599761 () Bool)

(declare-fun e!363282 () Bool)

(assert (=> b!599761 (= e!363282 call!40478)))

(declare-fun b!599762 () Bool)

(declare-fun e!363280 () Bool)

(assert (=> b!599762 (= e!363280 e!363282)))

(declare-fun res!259347 () Bool)

(assert (=> b!599762 (=> (not res!259347) (not e!363282))))

(declare-fun call!40479 () Bool)

(assert (=> b!599762 (= res!259347 call!40479)))

(declare-fun b!599764 () Bool)

(declare-fun e!363284 () Bool)

(assert (=> b!599764 (= e!363284 e!363283)))

(declare-fun c!111381 () Bool)

(assert (=> b!599764 (= c!111381 ((_ is Union!1523) (regex!1189 (rule!1959 token!491))))))

(declare-fun bm!40473 () Bool)

(declare-fun call!40480 () Bool)

(assert (=> bm!40473 (= call!40479 call!40480)))

(declare-fun b!599765 () Bool)

(declare-fun res!259351 () Bool)

(assert (=> b!599765 (=> res!259351 e!363280)))

(assert (=> b!599765 (= res!259351 (not ((_ is Concat!2736) (regex!1189 (rule!1959 token!491)))))))

(assert (=> b!599765 (= e!363283 e!363280)))

(declare-fun b!599766 () Bool)

(declare-fun e!363279 () Bool)

(assert (=> b!599766 (= e!363279 call!40480)))

(declare-fun bm!40474 () Bool)

(assert (=> bm!40474 (= call!40478 (validRegex!526 (ite c!111381 (regOne!3559 (regex!1189 (rule!1959 token!491))) (regTwo!3558 (regex!1189 (rule!1959 token!491))))))))

(declare-fun b!599767 () Bool)

(declare-fun e!363278 () Bool)

(assert (=> b!599767 (= e!363278 e!363284)))

(declare-fun c!111382 () Bool)

(assert (=> b!599767 (= c!111382 ((_ is Star!1523) (regex!1189 (rule!1959 token!491))))))

(declare-fun b!599763 () Bool)

(assert (=> b!599763 (= e!363281 call!40479)))

(declare-fun d!210958 () Bool)

(declare-fun res!259349 () Bool)

(assert (=> d!210958 (=> res!259349 e!363278)))

(assert (=> d!210958 (= res!259349 ((_ is ElementMatch!1523) (regex!1189 (rule!1959 token!491))))))

(assert (=> d!210958 (= (validRegex!526 (regex!1189 (rule!1959 token!491))) e!363278)))

(declare-fun b!599768 () Bool)

(assert (=> b!599768 (= e!363284 e!363279)))

(declare-fun res!259348 () Bool)

(assert (=> b!599768 (= res!259348 (not (nullable!431 (reg!1852 (regex!1189 (rule!1959 token!491))))))))

(assert (=> b!599768 (=> (not res!259348) (not e!363279))))

(declare-fun bm!40475 () Bool)

(assert (=> bm!40475 (= call!40480 (validRegex!526 (ite c!111382 (reg!1852 (regex!1189 (rule!1959 token!491))) (ite c!111381 (regTwo!3559 (regex!1189 (rule!1959 token!491))) (regOne!3558 (regex!1189 (rule!1959 token!491)))))))))

(assert (= (and d!210958 (not res!259349)) b!599767))

(assert (= (and b!599767 c!111382) b!599768))

(assert (= (and b!599767 (not c!111382)) b!599764))

(assert (= (and b!599768 res!259348) b!599766))

(assert (= (and b!599764 c!111381) b!599760))

(assert (= (and b!599764 (not c!111381)) b!599765))

(assert (= (and b!599760 res!259350) b!599763))

(assert (= (and b!599765 (not res!259351)) b!599762))

(assert (= (and b!599762 res!259347) b!599761))

(assert (= (or b!599760 b!599761) bm!40474))

(assert (= (or b!599763 b!599762) bm!40473))

(assert (= (or b!599766 bm!40473) bm!40475))

(declare-fun m!863823 () Bool)

(assert (=> bm!40474 m!863823))

(declare-fun m!863825 () Bool)

(assert (=> b!599768 m!863825))

(declare-fun m!863827 () Bool)

(assert (=> bm!40475 m!863827))

(assert (=> d!210522 d!210958))

(declare-fun d!210960 () Bool)

(assert (=> d!210960 (= (head!1272 input!2705) (h!11387 input!2705))))

(assert (=> b!599064 d!210960))

(assert (=> b!599064 d!210838))

(declare-fun d!210962 () Bool)

(declare-fun lt!255324 () Int)

(assert (=> d!210962 (>= lt!255324 0)))

(declare-fun e!363285 () Int)

(assert (=> d!210962 (= lt!255324 e!363285)))

(declare-fun c!111383 () Bool)

(assert (=> d!210962 (= c!111383 ((_ is Nil!5986) lt!255039))))

(assert (=> d!210962 (= (size!4713 lt!255039) lt!255324)))

(declare-fun b!599769 () Bool)

(assert (=> b!599769 (= e!363285 0)))

(declare-fun b!599770 () Bool)

(assert (=> b!599770 (= e!363285 (+ 1 (size!4713 (t!79673 lt!255039))))))

(assert (= (and d!210962 c!111383) b!599769))

(assert (= (and d!210962 (not c!111383)) b!599770))

(declare-fun m!863829 () Bool)

(assert (=> b!599770 m!863829))

(assert (=> b!599070 d!210962))

(assert (=> b!599070 d!210550))

(declare-fun b!599774 () Bool)

(declare-fun e!363287 () List!5996)

(assert (=> b!599774 (= e!363287 (++!1677 (list!2510 (left!4813 (c!111202 (charsOf!818 (_1!3700 (v!16430 lt!255028)))))) (list!2510 (right!5143 (c!111202 (charsOf!818 (_1!3700 (v!16430 lt!255028))))))))))

(declare-fun b!599773 () Bool)

(assert (=> b!599773 (= e!363287 (list!2512 (xs!4543 (c!111202 (charsOf!818 (_1!3700 (v!16430 lt!255028)))))))))

(declare-fun d!210964 () Bool)

(declare-fun c!111384 () Bool)

(assert (=> d!210964 (= c!111384 ((_ is Empty!1906) (c!111202 (charsOf!818 (_1!3700 (v!16430 lt!255028))))))))

(declare-fun e!363286 () List!5996)

(assert (=> d!210964 (= (list!2510 (c!111202 (charsOf!818 (_1!3700 (v!16430 lt!255028))))) e!363286)))

(declare-fun b!599772 () Bool)

(assert (=> b!599772 (= e!363286 e!363287)))

(declare-fun c!111385 () Bool)

(assert (=> b!599772 (= c!111385 ((_ is Leaf!3008) (c!111202 (charsOf!818 (_1!3700 (v!16430 lt!255028))))))))

(declare-fun b!599771 () Bool)

(assert (=> b!599771 (= e!363286 Nil!5986)))

(assert (= (and d!210964 c!111384) b!599771))

(assert (= (and d!210964 (not c!111384)) b!599772))

(assert (= (and b!599772 c!111385) b!599773))

(assert (= (and b!599772 (not c!111385)) b!599774))

(declare-fun m!863831 () Bool)

(assert (=> b!599774 m!863831))

(declare-fun m!863833 () Bool)

(assert (=> b!599774 m!863833))

(assert (=> b!599774 m!863831))

(assert (=> b!599774 m!863833))

(declare-fun m!863835 () Bool)

(assert (=> b!599774 m!863835))

(declare-fun m!863837 () Bool)

(assert (=> b!599773 m!863837))

(assert (=> d!210514 d!210964))

(declare-fun d!210966 () Bool)

(declare-fun lt!255325 () Bool)

(assert (=> d!210966 (= lt!255325 (select (content!1080 rules!3103) (rule!1959 (_1!3700 (get!2298 lt!255125)))))))

(declare-fun e!363288 () Bool)

(assert (=> d!210966 (= lt!255325 e!363288)))

(declare-fun res!259353 () Bool)

(assert (=> d!210966 (=> (not res!259353) (not e!363288))))

(assert (=> d!210966 (= res!259353 ((_ is Cons!5988) rules!3103))))

(assert (=> d!210966 (= (contains!1399 rules!3103 (rule!1959 (_1!3700 (get!2298 lt!255125)))) lt!255325)))

(declare-fun b!599775 () Bool)

(declare-fun e!363289 () Bool)

(assert (=> b!599775 (= e!363288 e!363289)))

(declare-fun res!259352 () Bool)

(assert (=> b!599775 (=> res!259352 e!363289)))

(assert (=> b!599775 (= res!259352 (= (h!11389 rules!3103) (rule!1959 (_1!3700 (get!2298 lt!255125)))))))

(declare-fun b!599776 () Bool)

(assert (=> b!599776 (= e!363289 (contains!1399 (t!79675 rules!3103) (rule!1959 (_1!3700 (get!2298 lt!255125)))))))

(assert (= (and d!210966 res!259353) b!599775))

(assert (= (and b!599775 (not res!259352)) b!599776))

(assert (=> d!210966 m!862787))

(declare-fun m!863839 () Bool)

(assert (=> d!210966 m!863839))

(declare-fun m!863841 () Bool)

(assert (=> b!599776 m!863841))

(assert (=> b!598952 d!210966))

(assert (=> b!598952 d!210856))

(declare-fun d!210968 () Bool)

(declare-fun lt!255326 () Int)

(assert (=> d!210968 (>= lt!255326 0)))

(declare-fun e!363290 () Int)

(assert (=> d!210968 (= lt!255326 e!363290)))

(declare-fun c!111386 () Bool)

(assert (=> d!210968 (= c!111386 ((_ is Nil!5986) (_2!3700 (get!2298 lt!255146))))))

(assert (=> d!210968 (= (size!4713 (_2!3700 (get!2298 lt!255146))) lt!255326)))

(declare-fun b!599777 () Bool)

(assert (=> b!599777 (= e!363290 0)))

(declare-fun b!599778 () Bool)

(assert (=> b!599778 (= e!363290 (+ 1 (size!4713 (t!79673 (_2!3700 (get!2298 lt!255146))))))))

(assert (= (and d!210968 c!111386) b!599777))

(assert (= (and d!210968 (not c!111386)) b!599778))

(declare-fun m!863843 () Bool)

(assert (=> b!599778 m!863843))

(assert (=> b!599002 d!210968))

(assert (=> b!599002 d!210830))

(assert (=> b!599002 d!210842))

(declare-fun b!599779 () Bool)

(declare-fun e!363292 () Bool)

(declare-fun e!363291 () Bool)

(assert (=> b!599779 (= e!363292 e!363291)))

(declare-fun res!259355 () Bool)

(assert (=> b!599779 (=> (not res!259355) (not e!363291))))

(assert (=> b!599779 (= res!259355 (not ((_ is Nil!5986) (++!1677 lt!255021 (_2!3700 (v!16430 lt!255028))))))))

(declare-fun d!210970 () Bool)

(declare-fun e!363293 () Bool)

(assert (=> d!210970 e!363293))

(declare-fun res!259356 () Bool)

(assert (=> d!210970 (=> res!259356 e!363293)))

(declare-fun lt!255327 () Bool)

(assert (=> d!210970 (= res!259356 (not lt!255327))))

(assert (=> d!210970 (= lt!255327 e!363292)))

(declare-fun res!259354 () Bool)

(assert (=> d!210970 (=> res!259354 e!363292)))

(assert (=> d!210970 (= res!259354 ((_ is Nil!5986) lt!255021))))

(assert (=> d!210970 (= (isPrefix!817 lt!255021 (++!1677 lt!255021 (_2!3700 (v!16430 lt!255028)))) lt!255327)))

(declare-fun b!599781 () Bool)

(assert (=> b!599781 (= e!363291 (isPrefix!817 (tail!801 lt!255021) (tail!801 (++!1677 lt!255021 (_2!3700 (v!16430 lt!255028))))))))

(declare-fun b!599780 () Bool)

(declare-fun res!259357 () Bool)

(assert (=> b!599780 (=> (not res!259357) (not e!363291))))

(assert (=> b!599780 (= res!259357 (= (head!1272 lt!255021) (head!1272 (++!1677 lt!255021 (_2!3700 (v!16430 lt!255028))))))))

(declare-fun b!599782 () Bool)

(assert (=> b!599782 (= e!363293 (>= (size!4713 (++!1677 lt!255021 (_2!3700 (v!16430 lt!255028)))) (size!4713 lt!255021)))))

(assert (= (and d!210970 (not res!259354)) b!599779))

(assert (= (and b!599779 res!259355) b!599780))

(assert (= (and b!599780 res!259357) b!599781))

(assert (= (and d!210970 (not res!259356)) b!599782))

(assert (=> b!599781 m!862895))

(assert (=> b!599781 m!862403))

(declare-fun m!863845 () Bool)

(assert (=> b!599781 m!863845))

(assert (=> b!599781 m!862895))

(assert (=> b!599781 m!863845))

(declare-fun m!863847 () Bool)

(assert (=> b!599781 m!863847))

(assert (=> b!599780 m!862901))

(assert (=> b!599780 m!862403))

(declare-fun m!863849 () Bool)

(assert (=> b!599780 m!863849))

(assert (=> b!599782 m!862403))

(declare-fun m!863851 () Bool)

(assert (=> b!599782 m!863851))

(assert (=> b!599782 m!862371))

(assert (=> d!210558 d!210970))

(assert (=> d!210558 d!210528))

(declare-fun d!210972 () Bool)

(assert (=> d!210972 (isPrefix!817 lt!255021 (++!1677 lt!255021 (_2!3700 (v!16430 lt!255028))))))

(assert (=> d!210972 true))

(declare-fun _$46!975 () Unit!10894)

(assert (=> d!210972 (= (choose!4375 lt!255021 (_2!3700 (v!16430 lt!255028))) _$46!975)))

(declare-fun bs!70852 () Bool)

(assert (= bs!70852 d!210972))

(assert (=> bs!70852 m!862403))

(assert (=> bs!70852 m!862403))

(assert (=> bs!70852 m!862935))

(assert (=> d!210558 d!210972))

(assert (=> b!599048 d!210960))

(declare-fun d!210974 () Bool)

(declare-fun lt!255328 () Int)

(assert (=> d!210974 (>= lt!255328 0)))

(declare-fun e!363294 () Int)

(assert (=> d!210974 (= lt!255328 e!363294)))

(declare-fun c!111387 () Bool)

(assert (=> d!210974 (= c!111387 ((_ is Nil!5986) (t!79673 lt!255021)))))

(assert (=> d!210974 (= (size!4713 (t!79673 lt!255021)) lt!255328)))

(declare-fun b!599783 () Bool)

(assert (=> b!599783 (= e!363294 0)))

(declare-fun b!599784 () Bool)

(assert (=> b!599784 (= e!363294 (+ 1 (size!4713 (t!79673 (t!79673 lt!255021)))))))

(assert (= (and d!210974 c!111387) b!599783))

(assert (= (and d!210974 (not c!111387)) b!599784))

(declare-fun m!863853 () Bool)

(assert (=> b!599784 m!863853))

(assert (=> b!599074 d!210974))

(declare-fun bs!70853 () Bool)

(declare-fun d!210976 () Bool)

(assert (= bs!70853 (and d!210976 d!210888)))

(declare-fun lambda!16029 () Int)

(assert (=> bs!70853 (= lambda!16029 lambda!16025)))

(assert (=> d!210976 true))

(declare-fun lt!255331 () Bool)

(assert (=> d!210976 (= lt!255331 (rulesValidInductive!442 thiss!22590 rules!3103))))

(assert (=> d!210976 (= lt!255331 (forall!1556 rules!3103 lambda!16029))))

(assert (=> d!210976 (= (rulesValid!437 thiss!22590 rules!3103) lt!255331)))

(declare-fun bs!70854 () Bool)

(assert (= bs!70854 d!210976))

(assert (=> bs!70854 m!862731))

(declare-fun m!863855 () Bool)

(assert (=> bs!70854 m!863855))

(assert (=> d!210504 d!210976))

(declare-fun d!210978 () Bool)

(declare-fun nullableFct!141 (Regex!1523) Bool)

(assert (=> d!210978 (= (nullable!431 (regex!1189 (rule!1959 token!491))) (nullableFct!141 (regex!1189 (rule!1959 token!491))))))

(declare-fun bs!70855 () Bool)

(assert (= bs!70855 d!210978))

(declare-fun m!863857 () Bool)

(assert (=> bs!70855 m!863857))

(assert (=> b!599054 d!210978))

(declare-fun d!210980 () Bool)

(assert (=> d!210980 (= (isDefined!1351 lt!255125) (not (isEmpty!4324 lt!255125)))))

(declare-fun bs!70856 () Bool)

(assert (= bs!70856 d!210980))

(assert (=> bs!70856 m!862725))

(assert (=> b!598955 d!210980))

(declare-fun d!210982 () Bool)

(assert (=> d!210982 (and (= lt!255024 input!2705) (= suffix!1342 suffix!1342))))

(assert (=> d!210982 true))

(declare-fun _$50!274 () Unit!10894)

(assert (=> d!210982 (= (choose!4373 lt!255024 suffix!1342 input!2705 suffix!1342) _$50!274)))

(assert (=> d!210542 d!210982))

(assert (=> d!210542 d!210474))

(assert (=> d!210542 d!210472))

(declare-fun b!599785 () Bool)

(declare-fun e!363297 () Bool)

(assert (=> b!599785 (= e!363297 (inv!16 (dynLambda!3456 (toValue!2080 (transformation!1189 (rule!1959 (_1!3700 (v!16430 lt!255028))))) (seqFromList!1365 lt!255021))))))

(declare-fun b!599786 () Bool)

(declare-fun e!363296 () Bool)

(assert (=> b!599786 (= e!363296 (inv!17 (dynLambda!3456 (toValue!2080 (transformation!1189 (rule!1959 (_1!3700 (v!16430 lt!255028))))) (seqFromList!1365 lt!255021))))))

(declare-fun d!210984 () Bool)

(declare-fun c!111388 () Bool)

(assert (=> d!210984 (= c!111388 ((_ is IntegerValue!3639) (dynLambda!3456 (toValue!2080 (transformation!1189 (rule!1959 (_1!3700 (v!16430 lt!255028))))) (seqFromList!1365 lt!255021))))))

(assert (=> d!210984 (= (inv!21 (dynLambda!3456 (toValue!2080 (transformation!1189 (rule!1959 (_1!3700 (v!16430 lt!255028))))) (seqFromList!1365 lt!255021))) e!363297)))

(declare-fun b!599787 () Bool)

(declare-fun res!259358 () Bool)

(declare-fun e!363295 () Bool)

(assert (=> b!599787 (=> res!259358 e!363295)))

(assert (=> b!599787 (= res!259358 (not ((_ is IntegerValue!3641) (dynLambda!3456 (toValue!2080 (transformation!1189 (rule!1959 (_1!3700 (v!16430 lt!255028))))) (seqFromList!1365 lt!255021)))))))

(assert (=> b!599787 (= e!363296 e!363295)))

(declare-fun b!599788 () Bool)

(assert (=> b!599788 (= e!363295 (inv!15 (dynLambda!3456 (toValue!2080 (transformation!1189 (rule!1959 (_1!3700 (v!16430 lt!255028))))) (seqFromList!1365 lt!255021))))))

(declare-fun b!599789 () Bool)

(assert (=> b!599789 (= e!363297 e!363296)))

(declare-fun c!111389 () Bool)

(assert (=> b!599789 (= c!111389 ((_ is IntegerValue!3640) (dynLambda!3456 (toValue!2080 (transformation!1189 (rule!1959 (_1!3700 (v!16430 lt!255028))))) (seqFromList!1365 lt!255021))))))

(assert (= (and d!210984 c!111388) b!599785))

(assert (= (and d!210984 (not c!111388)) b!599789))

(assert (= (and b!599789 c!111389) b!599786))

(assert (= (and b!599789 (not c!111389)) b!599787))

(assert (= (and b!599787 (not res!259358)) b!599788))

(declare-fun m!863859 () Bool)

(assert (=> b!599785 m!863859))

(declare-fun m!863861 () Bool)

(assert (=> b!599786 m!863861))

(declare-fun m!863863 () Bool)

(assert (=> b!599788 m!863863))

(assert (=> tb!52251 d!210984))

(declare-fun b!599790 () Bool)

(declare-fun e!363300 () Bool)

(assert (=> b!599790 (= e!363300 (inv!16 (dynLambda!3456 (toValue!2080 (transformation!1189 (rule!1959 token!491))) (seqFromList!1365 lt!255024))))))

(declare-fun b!599791 () Bool)

(declare-fun e!363299 () Bool)

(assert (=> b!599791 (= e!363299 (inv!17 (dynLambda!3456 (toValue!2080 (transformation!1189 (rule!1959 token!491))) (seqFromList!1365 lt!255024))))))

(declare-fun d!210986 () Bool)

(declare-fun c!111390 () Bool)

(assert (=> d!210986 (= c!111390 ((_ is IntegerValue!3639) (dynLambda!3456 (toValue!2080 (transformation!1189 (rule!1959 token!491))) (seqFromList!1365 lt!255024))))))

(assert (=> d!210986 (= (inv!21 (dynLambda!3456 (toValue!2080 (transformation!1189 (rule!1959 token!491))) (seqFromList!1365 lt!255024))) e!363300)))

(declare-fun b!599792 () Bool)

(declare-fun res!259359 () Bool)

(declare-fun e!363298 () Bool)

(assert (=> b!599792 (=> res!259359 e!363298)))

(assert (=> b!599792 (= res!259359 (not ((_ is IntegerValue!3641) (dynLambda!3456 (toValue!2080 (transformation!1189 (rule!1959 token!491))) (seqFromList!1365 lt!255024)))))))

(assert (=> b!599792 (= e!363299 e!363298)))

(declare-fun b!599793 () Bool)

(assert (=> b!599793 (= e!363298 (inv!15 (dynLambda!3456 (toValue!2080 (transformation!1189 (rule!1959 token!491))) (seqFromList!1365 lt!255024))))))

(declare-fun b!599794 () Bool)

(assert (=> b!599794 (= e!363300 e!363299)))

(declare-fun c!111391 () Bool)

(assert (=> b!599794 (= c!111391 ((_ is IntegerValue!3640) (dynLambda!3456 (toValue!2080 (transformation!1189 (rule!1959 token!491))) (seqFromList!1365 lt!255024))))))

(assert (= (and d!210986 c!111390) b!599790))

(assert (= (and d!210986 (not c!111390)) b!599794))

(assert (= (and b!599794 c!111391) b!599791))

(assert (= (and b!599794 (not c!111391)) b!599792))

(assert (= (and b!599792 (not res!259359)) b!599793))

(declare-fun m!863865 () Bool)

(assert (=> b!599790 m!863865))

(declare-fun m!863867 () Bool)

(assert (=> b!599791 m!863867))

(declare-fun m!863869 () Bool)

(assert (=> b!599793 m!863869))

(assert (=> tb!52243 d!210986))

(declare-fun d!210988 () Bool)

(assert (=> d!210988 (= (inv!7585 (tag!1451 (h!11389 (t!79675 rules!3103)))) (= (mod (str.len (value!38727 (tag!1451 (h!11389 (t!79675 rules!3103))))) 2) 0))))

(assert (=> b!599101 d!210988))

(declare-fun d!210990 () Bool)

(declare-fun res!259360 () Bool)

(declare-fun e!363301 () Bool)

(assert (=> d!210990 (=> (not res!259360) (not e!363301))))

(assert (=> d!210990 (= res!259360 (semiInverseModEq!473 (toChars!1939 (transformation!1189 (h!11389 (t!79675 rules!3103)))) (toValue!2080 (transformation!1189 (h!11389 (t!79675 rules!3103))))))))

(assert (=> d!210990 (= (inv!7589 (transformation!1189 (h!11389 (t!79675 rules!3103)))) e!363301)))

(declare-fun b!599795 () Bool)

(assert (=> b!599795 (= e!363301 (equivClasses!456 (toChars!1939 (transformation!1189 (h!11389 (t!79675 rules!3103)))) (toValue!2080 (transformation!1189 (h!11389 (t!79675 rules!3103))))))))

(assert (= (and d!210990 res!259360) b!599795))

(declare-fun m!863871 () Bool)

(assert (=> d!210990 m!863871))

(declare-fun m!863873 () Bool)

(assert (=> b!599795 m!863873))

(assert (=> b!599101 d!210990))

(assert (=> d!210548 d!210512))

(declare-fun d!210992 () Bool)

(assert (=> d!210992 (ruleValid!387 thiss!22590 (rule!1959 (_1!3700 (v!16430 lt!255028))))))

(assert (=> d!210992 true))

(declare-fun _$65!864 () Unit!10894)

(assert (=> d!210992 (= (choose!4374 thiss!22590 (rule!1959 (_1!3700 (v!16430 lt!255028))) rules!3103) _$65!864)))

(declare-fun bs!70857 () Bool)

(assert (= bs!70857 d!210992))

(assert (=> bs!70857 m!862409))

(assert (=> d!210548 d!210992))

(assert (=> d!210548 d!210492))

(assert (=> d!210478 d!210890))

(declare-fun bs!70858 () Bool)

(declare-fun d!210994 () Bool)

(assert (= bs!70858 (and d!210994 d!210602)))

(declare-fun lambda!16030 () Int)

(assert (=> bs!70858 (= (= (toValue!2080 (transformation!1189 (h!11389 rules!3103))) (toValue!2080 (transformation!1189 (rule!1959 token!491)))) (= lambda!16030 lambda!16017))))

(declare-fun bs!70859 () Bool)

(assert (= bs!70859 (and d!210994 d!210822)))

(assert (=> bs!70859 (= (= (toValue!2080 (transformation!1189 (h!11389 rules!3103))) (toValue!2080 (transformation!1189 (rule!1959 (_1!3700 (v!16430 lt!255028)))))) (= lambda!16030 lambda!16018))))

(assert (=> d!210994 true))

(assert (=> d!210994 (< (dynLambda!3461 order!4779 (toValue!2080 (transformation!1189 (h!11389 rules!3103)))) (dynLambda!3462 order!4781 lambda!16030))))

(assert (=> d!210994 (= (equivClasses!456 (toChars!1939 (transformation!1189 (h!11389 rules!3103))) (toValue!2080 (transformation!1189 (h!11389 rules!3103)))) (Forall2!226 lambda!16030))))

(declare-fun bs!70860 () Bool)

(assert (= bs!70860 d!210994))

(declare-fun m!863875 () Bool)

(assert (=> bs!70860 m!863875))

(assert (=> b!598781 d!210994))

(declare-fun b!599797 () Bool)

(declare-fun e!363302 () List!5996)

(assert (=> b!599797 (= e!363302 (Cons!5986 (h!11387 (list!2508 (charsOf!818 (_1!3700 (get!2298 lt!255125))))) (++!1677 (t!79673 (list!2508 (charsOf!818 (_1!3700 (get!2298 lt!255125))))) (_2!3700 (get!2298 lt!255125)))))))

(declare-fun b!599798 () Bool)

(declare-fun res!259362 () Bool)

(declare-fun e!363303 () Bool)

(assert (=> b!599798 (=> (not res!259362) (not e!363303))))

(declare-fun lt!255332 () List!5996)

(assert (=> b!599798 (= res!259362 (= (size!4713 lt!255332) (+ (size!4713 (list!2508 (charsOf!818 (_1!3700 (get!2298 lt!255125))))) (size!4713 (_2!3700 (get!2298 lt!255125))))))))

(declare-fun b!599796 () Bool)

(assert (=> b!599796 (= e!363302 (_2!3700 (get!2298 lt!255125)))))

(declare-fun b!599799 () Bool)

(assert (=> b!599799 (= e!363303 (or (not (= (_2!3700 (get!2298 lt!255125)) Nil!5986)) (= lt!255332 (list!2508 (charsOf!818 (_1!3700 (get!2298 lt!255125)))))))))

(declare-fun d!210996 () Bool)

(assert (=> d!210996 e!363303))

(declare-fun res!259361 () Bool)

(assert (=> d!210996 (=> (not res!259361) (not e!363303))))

(assert (=> d!210996 (= res!259361 (= (content!1079 lt!255332) ((_ map or) (content!1079 (list!2508 (charsOf!818 (_1!3700 (get!2298 lt!255125))))) (content!1079 (_2!3700 (get!2298 lt!255125))))))))

(assert (=> d!210996 (= lt!255332 e!363302)))

(declare-fun c!111392 () Bool)

(assert (=> d!210996 (= c!111392 ((_ is Nil!5986) (list!2508 (charsOf!818 (_1!3700 (get!2298 lt!255125))))))))

(assert (=> d!210996 (= (++!1677 (list!2508 (charsOf!818 (_1!3700 (get!2298 lt!255125)))) (_2!3700 (get!2298 lt!255125))) lt!255332)))

(assert (= (and d!210996 c!111392) b!599796))

(assert (= (and d!210996 (not c!111392)) b!599797))

(assert (= (and d!210996 res!259361) b!599798))

(assert (= (and b!599798 res!259362) b!599799))

(declare-fun m!863877 () Bool)

(assert (=> b!599797 m!863877))

(declare-fun m!863879 () Bool)

(assert (=> b!599798 m!863879))

(assert (=> b!599798 m!862721))

(declare-fun m!863881 () Bool)

(assert (=> b!599798 m!863881))

(assert (=> b!599798 m!862705))

(declare-fun m!863883 () Bool)

(assert (=> d!210996 m!863883))

(assert (=> d!210996 m!862721))

(declare-fun m!863885 () Bool)

(assert (=> d!210996 m!863885))

(declare-fun m!863887 () Bool)

(assert (=> d!210996 m!863887))

(assert (=> b!598949 d!210996))

(assert (=> b!598949 d!210852))

(assert (=> b!598949 d!210854))

(assert (=> b!598949 d!210856))

(declare-fun d!210998 () Bool)

(assert (=> d!210998 (= (_2!3700 (v!16430 lt!255028)) lt!255041)))

(assert (=> d!210998 true))

(declare-fun _$63!735 () Unit!10894)

(assert (=> d!210998 (= (choose!4371 lt!255021 (_2!3700 (v!16430 lt!255028)) lt!255021 lt!255041 input!2705) _$63!735)))

(assert (=> d!210544 d!210998))

(declare-fun b!599800 () Bool)

(declare-fun e!363305 () Bool)

(declare-fun e!363304 () Bool)

(assert (=> b!599800 (= e!363305 e!363304)))

(declare-fun res!259364 () Bool)

(assert (=> b!599800 (=> (not res!259364) (not e!363304))))

(assert (=> b!599800 (= res!259364 (not ((_ is Nil!5986) input!2705)))))

(declare-fun d!211000 () Bool)

(declare-fun e!363306 () Bool)

(assert (=> d!211000 e!363306))

(declare-fun res!259365 () Bool)

(assert (=> d!211000 (=> res!259365 e!363306)))

(declare-fun lt!255333 () Bool)

(assert (=> d!211000 (= res!259365 (not lt!255333))))

(assert (=> d!211000 (= lt!255333 e!363305)))

(declare-fun res!259363 () Bool)

(assert (=> d!211000 (=> res!259363 e!363305)))

(assert (=> d!211000 (= res!259363 ((_ is Nil!5986) lt!255021))))

(assert (=> d!211000 (= (isPrefix!817 lt!255021 input!2705) lt!255333)))

(declare-fun b!599802 () Bool)

(assert (=> b!599802 (= e!363304 (isPrefix!817 (tail!801 lt!255021) (tail!801 input!2705)))))

(declare-fun b!599801 () Bool)

(declare-fun res!259366 () Bool)

(assert (=> b!599801 (=> (not res!259366) (not e!363304))))

(assert (=> b!599801 (= res!259366 (= (head!1272 lt!255021) (head!1272 input!2705)))))

(declare-fun b!599803 () Bool)

(assert (=> b!599803 (= e!363306 (>= (size!4713 input!2705) (size!4713 lt!255021)))))

(assert (= (and d!211000 (not res!259363)) b!599800))

(assert (= (and b!599800 res!259364) b!599801))

(assert (= (and b!599801 res!259366) b!599802))

(assert (= (and d!211000 (not res!259365)) b!599803))

(assert (=> b!599802 m!862895))

(assert (=> b!599802 m!862833))

(assert (=> b!599802 m!862895))

(assert (=> b!599802 m!862833))

(declare-fun m!863889 () Bool)

(assert (=> b!599802 m!863889))

(assert (=> b!599801 m!862901))

(assert (=> b!599801 m!862837))

(assert (=> b!599803 m!862739))

(assert (=> b!599803 m!862371))

(assert (=> d!210544 d!211000))

(declare-fun d!211002 () Bool)

(declare-fun lt!255334 () List!5996)

(assert (=> d!211002 (= (++!1677 (t!79673 lt!255021) lt!255334) (tail!801 input!2705))))

(declare-fun e!363307 () List!5996)

(assert (=> d!211002 (= lt!255334 e!363307)))

(declare-fun c!111393 () Bool)

(assert (=> d!211002 (= c!111393 ((_ is Cons!5986) (t!79673 lt!255021)))))

(assert (=> d!211002 (>= (size!4713 (tail!801 input!2705)) (size!4713 (t!79673 lt!255021)))))

(assert (=> d!211002 (= (getSuffix!334 (tail!801 input!2705) (t!79673 lt!255021)) lt!255334)))

(declare-fun b!599804 () Bool)

(assert (=> b!599804 (= e!363307 (getSuffix!334 (tail!801 (tail!801 input!2705)) (t!79673 (t!79673 lt!255021))))))

(declare-fun b!599805 () Bool)

(assert (=> b!599805 (= e!363307 (tail!801 input!2705))))

(assert (= (and d!211002 c!111393) b!599804))

(assert (= (and d!211002 (not c!111393)) b!599805))

(declare-fun m!863891 () Bool)

(assert (=> d!211002 m!863891))

(assert (=> d!211002 m!862833))

(assert (=> d!211002 m!863647))

(assert (=> d!211002 m!862921))

(assert (=> b!599804 m!862833))

(assert (=> b!599804 m!863639))

(assert (=> b!599804 m!863639))

(declare-fun m!863893 () Bool)

(assert (=> b!599804 m!863893))

(assert (=> b!599071 d!211002))

(assert (=> b!599071 d!210866))

(declare-fun b!599806 () Bool)

(declare-fun res!259372 () Bool)

(declare-fun e!363314 () Bool)

(assert (=> b!599806 (=> res!259372 e!363314)))

(assert (=> b!599806 (= res!259372 (not ((_ is ElementMatch!1523) (regex!1189 (rule!1959 (_1!3700 (get!2298 lt!255146)))))))))

(declare-fun e!363308 () Bool)

(assert (=> b!599806 (= e!363308 e!363314)))

(declare-fun b!599807 () Bool)

(declare-fun res!259371 () Bool)

(declare-fun e!363313 () Bool)

(assert (=> b!599807 (=> (not res!259371) (not e!363313))))

(assert (=> b!599807 (= res!259371 (isEmpty!4321 (tail!801 (list!2508 (charsOf!818 (_1!3700 (get!2298 lt!255146)))))))))

(declare-fun b!599808 () Bool)

(declare-fun lt!255335 () Bool)

(assert (=> b!599808 (= e!363308 (not lt!255335))))

(declare-fun d!211004 () Bool)

(declare-fun e!363311 () Bool)

(assert (=> d!211004 e!363311))

(declare-fun c!111395 () Bool)

(assert (=> d!211004 (= c!111395 ((_ is EmptyExpr!1523) (regex!1189 (rule!1959 (_1!3700 (get!2298 lt!255146))))))))

(declare-fun e!363312 () Bool)

(assert (=> d!211004 (= lt!255335 e!363312)))

(declare-fun c!111396 () Bool)

(assert (=> d!211004 (= c!111396 (isEmpty!4321 (list!2508 (charsOf!818 (_1!3700 (get!2298 lt!255146))))))))

(assert (=> d!211004 (validRegex!526 (regex!1189 (rule!1959 (_1!3700 (get!2298 lt!255146)))))))

(assert (=> d!211004 (= (matchR!634 (regex!1189 (rule!1959 (_1!3700 (get!2298 lt!255146)))) (list!2508 (charsOf!818 (_1!3700 (get!2298 lt!255146))))) lt!255335)))

(declare-fun b!599809 () Bool)

(declare-fun res!259370 () Bool)

(assert (=> b!599809 (=> res!259370 e!363314)))

(assert (=> b!599809 (= res!259370 e!363313)))

(declare-fun res!259374 () Bool)

(assert (=> b!599809 (=> (not res!259374) (not e!363313))))

(assert (=> b!599809 (= res!259374 lt!255335)))

(declare-fun b!599810 () Bool)

(declare-fun call!40481 () Bool)

(assert (=> b!599810 (= e!363311 (= lt!255335 call!40481))))

(declare-fun b!599811 () Bool)

(declare-fun res!259369 () Bool)

(assert (=> b!599811 (=> (not res!259369) (not e!363313))))

(assert (=> b!599811 (= res!259369 (not call!40481))))

(declare-fun bm!40476 () Bool)

(assert (=> bm!40476 (= call!40481 (isEmpty!4321 (list!2508 (charsOf!818 (_1!3700 (get!2298 lt!255146))))))))

(declare-fun b!599812 () Bool)

(assert (=> b!599812 (= e!363311 e!363308)))

(declare-fun c!111394 () Bool)

(assert (=> b!599812 (= c!111394 ((_ is EmptyLang!1523) (regex!1189 (rule!1959 (_1!3700 (get!2298 lt!255146))))))))

(declare-fun b!599813 () Bool)

(assert (=> b!599813 (= e!363312 (nullable!431 (regex!1189 (rule!1959 (_1!3700 (get!2298 lt!255146))))))))

(declare-fun b!599814 () Bool)

(declare-fun res!259368 () Bool)

(declare-fun e!363309 () Bool)

(assert (=> b!599814 (=> res!259368 e!363309)))

(assert (=> b!599814 (= res!259368 (not (isEmpty!4321 (tail!801 (list!2508 (charsOf!818 (_1!3700 (get!2298 lt!255146))))))))))

(declare-fun b!599815 () Bool)

(assert (=> b!599815 (= e!363313 (= (head!1272 (list!2508 (charsOf!818 (_1!3700 (get!2298 lt!255146))))) (c!111201 (regex!1189 (rule!1959 (_1!3700 (get!2298 lt!255146)))))))))

(declare-fun b!599816 () Bool)

(declare-fun e!363310 () Bool)

(assert (=> b!599816 (= e!363310 e!363309)))

(declare-fun res!259367 () Bool)

(assert (=> b!599816 (=> res!259367 e!363309)))

(assert (=> b!599816 (= res!259367 call!40481)))

(declare-fun b!599817 () Bool)

(assert (=> b!599817 (= e!363314 e!363310)))

(declare-fun res!259373 () Bool)

(assert (=> b!599817 (=> (not res!259373) (not e!363310))))

(assert (=> b!599817 (= res!259373 (not lt!255335))))

(declare-fun b!599818 () Bool)

(assert (=> b!599818 (= e!363309 (not (= (head!1272 (list!2508 (charsOf!818 (_1!3700 (get!2298 lt!255146))))) (c!111201 (regex!1189 (rule!1959 (_1!3700 (get!2298 lt!255146))))))))))

(declare-fun b!599819 () Bool)

(assert (=> b!599819 (= e!363312 (matchR!634 (derivativeStep!320 (regex!1189 (rule!1959 (_1!3700 (get!2298 lt!255146)))) (head!1272 (list!2508 (charsOf!818 (_1!3700 (get!2298 lt!255146)))))) (tail!801 (list!2508 (charsOf!818 (_1!3700 (get!2298 lt!255146)))))))))

(assert (= (and d!211004 c!111396) b!599813))

(assert (= (and d!211004 (not c!111396)) b!599819))

(assert (= (and d!211004 c!111395) b!599810))

(assert (= (and d!211004 (not c!111395)) b!599812))

(assert (= (and b!599812 c!111394) b!599808))

(assert (= (and b!599812 (not c!111394)) b!599806))

(assert (= (and b!599806 (not res!259372)) b!599809))

(assert (= (and b!599809 res!259374) b!599811))

(assert (= (and b!599811 res!259369) b!599807))

(assert (= (and b!599807 res!259371) b!599815))

(assert (= (and b!599809 (not res!259370)) b!599817))

(assert (= (and b!599817 res!259373) b!599816))

(assert (= (and b!599816 (not res!259367)) b!599814))

(assert (= (and b!599814 (not res!259368)) b!599818))

(assert (= (or b!599810 b!599811 b!599816) bm!40476))

(assert (=> b!599818 m!862815))

(declare-fun m!863895 () Bool)

(assert (=> b!599818 m!863895))

(assert (=> bm!40476 m!862815))

(declare-fun m!863897 () Bool)

(assert (=> bm!40476 m!863897))

(declare-fun m!863899 () Bool)

(assert (=> b!599813 m!863899))

(assert (=> b!599814 m!862815))

(declare-fun m!863901 () Bool)

(assert (=> b!599814 m!863901))

(assert (=> b!599814 m!863901))

(declare-fun m!863903 () Bool)

(assert (=> b!599814 m!863903))

(assert (=> d!211004 m!862815))

(assert (=> d!211004 m!863897))

(declare-fun m!863905 () Bool)

(assert (=> d!211004 m!863905))

(assert (=> b!599815 m!862815))

(assert (=> b!599815 m!863895))

(assert (=> b!599807 m!862815))

(assert (=> b!599807 m!863901))

(assert (=> b!599807 m!863901))

(assert (=> b!599807 m!863903))

(assert (=> b!599819 m!862815))

(assert (=> b!599819 m!863895))

(assert (=> b!599819 m!863895))

(declare-fun m!863907 () Bool)

(assert (=> b!599819 m!863907))

(assert (=> b!599819 m!862815))

(assert (=> b!599819 m!863901))

(assert (=> b!599819 m!863907))

(assert (=> b!599819 m!863901))

(declare-fun m!863909 () Bool)

(assert (=> b!599819 m!863909))

(assert (=> b!598999 d!211004))

(assert (=> b!598999 d!210830))

(assert (=> b!598999 d!210826))

(assert (=> b!598999 d!210828))

(declare-fun d!211006 () Bool)

(declare-fun lt!255336 () Int)

(assert (=> d!211006 (>= lt!255336 0)))

(declare-fun e!363315 () Int)

(assert (=> d!211006 (= lt!255336 e!363315)))

(declare-fun c!111397 () Bool)

(assert (=> d!211006 (= c!111397 ((_ is Nil!5986) lt!255132))))

(assert (=> d!211006 (= (size!4713 lt!255132) lt!255336)))

(declare-fun b!599820 () Bool)

(assert (=> b!599820 (= e!363315 0)))

(declare-fun b!599821 () Bool)

(assert (=> b!599821 (= e!363315 (+ 1 (size!4713 (t!79673 lt!255132))))))

(assert (= (and d!211006 c!111397) b!599820))

(assert (= (and d!211006 (not c!111397)) b!599821))

(declare-fun m!863911 () Bool)

(assert (=> b!599821 m!863911))

(assert (=> b!598970 d!211006))

(assert (=> b!598970 d!210532))

(assert (=> b!598970 d!210938))

(declare-fun d!211008 () Bool)

(declare-fun c!111400 () Bool)

(assert (=> d!211008 (= c!111400 ((_ is Nil!5986) lt!255159))))

(declare-fun e!363318 () (InoxSet C!3968))

(assert (=> d!211008 (= (content!1079 lt!255159) e!363318)))

(declare-fun b!599826 () Bool)

(assert (=> b!599826 (= e!363318 ((as const (Array C!3968 Bool)) false))))

(declare-fun b!599827 () Bool)

(assert (=> b!599827 (= e!363318 ((_ map or) (store ((as const (Array C!3968 Bool)) false) (h!11387 lt!255159) true) (content!1079 (t!79673 lt!255159))))))

(assert (= (and d!211008 c!111400) b!599826))

(assert (= (and d!211008 (not c!111400)) b!599827))

(declare-fun m!863913 () Bool)

(assert (=> b!599827 m!863913))

(declare-fun m!863915 () Bool)

(assert (=> b!599827 m!863915))

(assert (=> d!210528 d!211008))

(declare-fun d!211010 () Bool)

(declare-fun c!111401 () Bool)

(assert (=> d!211010 (= c!111401 ((_ is Nil!5986) lt!255021))))

(declare-fun e!363319 () (InoxSet C!3968))

(assert (=> d!211010 (= (content!1079 lt!255021) e!363319)))

(declare-fun b!599828 () Bool)

(assert (=> b!599828 (= e!363319 ((as const (Array C!3968 Bool)) false))))

(declare-fun b!599829 () Bool)

(assert (=> b!599829 (= e!363319 ((_ map or) (store ((as const (Array C!3968 Bool)) false) (h!11387 lt!255021) true) (content!1079 (t!79673 lt!255021))))))

(assert (= (and d!211010 c!111401) b!599828))

(assert (= (and d!211010 (not c!111401)) b!599829))

(declare-fun m!863917 () Bool)

(assert (=> b!599829 m!863917))

(declare-fun m!863919 () Bool)

(assert (=> b!599829 m!863919))

(assert (=> d!210528 d!211010))

(declare-fun d!211012 () Bool)

(declare-fun c!111402 () Bool)

(assert (=> d!211012 (= c!111402 ((_ is Nil!5986) (_2!3700 (v!16430 lt!255028))))))

(declare-fun e!363320 () (InoxSet C!3968))

(assert (=> d!211012 (= (content!1079 (_2!3700 (v!16430 lt!255028))) e!363320)))

(declare-fun b!599830 () Bool)

(assert (=> b!599830 (= e!363320 ((as const (Array C!3968 Bool)) false))))

(declare-fun b!599831 () Bool)

(assert (=> b!599831 (= e!363320 ((_ map or) (store ((as const (Array C!3968 Bool)) false) (h!11387 (_2!3700 (v!16430 lt!255028))) true) (content!1079 (t!79673 (_2!3700 (v!16430 lt!255028))))))))

(assert (= (and d!211012 c!111402) b!599830))

(assert (= (and d!211012 (not c!111402)) b!599831))

(declare-fun m!863921 () Bool)

(assert (=> b!599831 m!863921))

(declare-fun m!863923 () Bool)

(assert (=> b!599831 m!863923))

(assert (=> d!210528 d!211012))

(declare-fun d!211014 () Bool)

(assert (=> d!211014 (= (nullable!431 (regex!1189 (rule!1959 (_1!3700 (v!16430 lt!255028))))) (nullableFct!141 (regex!1189 (rule!1959 (_1!3700 (v!16430 lt!255028))))))))

(declare-fun bs!70861 () Bool)

(assert (= bs!70861 d!211014))

(declare-fun m!863925 () Bool)

(assert (=> bs!70861 m!863925))

(assert (=> b!599041 d!211014))

(declare-fun b!599833 () Bool)

(declare-fun e!363321 () List!5996)

(assert (=> b!599833 (= e!363321 (Cons!5986 (h!11387 lt!255021) (++!1677 (t!79673 lt!255021) lt!255163)))))

(declare-fun b!599834 () Bool)

(declare-fun res!259376 () Bool)

(declare-fun e!363322 () Bool)

(assert (=> b!599834 (=> (not res!259376) (not e!363322))))

(declare-fun lt!255337 () List!5996)

(assert (=> b!599834 (= res!259376 (= (size!4713 lt!255337) (+ (size!4713 lt!255021) (size!4713 lt!255163))))))

(declare-fun b!599832 () Bool)

(assert (=> b!599832 (= e!363321 lt!255163)))

(declare-fun b!599835 () Bool)

(assert (=> b!599835 (= e!363322 (or (not (= lt!255163 Nil!5986)) (= lt!255337 lt!255021)))))

(declare-fun d!211016 () Bool)

(assert (=> d!211016 e!363322))

(declare-fun res!259375 () Bool)

(assert (=> d!211016 (=> (not res!259375) (not e!363322))))

(assert (=> d!211016 (= res!259375 (= (content!1079 lt!255337) ((_ map or) (content!1079 lt!255021) (content!1079 lt!255163))))))

(assert (=> d!211016 (= lt!255337 e!363321)))

(declare-fun c!111403 () Bool)

(assert (=> d!211016 (= c!111403 ((_ is Nil!5986) lt!255021))))

(assert (=> d!211016 (= (++!1677 lt!255021 lt!255163) lt!255337)))

(assert (= (and d!211016 c!111403) b!599832))

(assert (= (and d!211016 (not c!111403)) b!599833))

(assert (= (and d!211016 res!259375) b!599834))

(assert (= (and b!599834 res!259376) b!599835))

(declare-fun m!863927 () Bool)

(assert (=> b!599833 m!863927))

(declare-fun m!863929 () Bool)

(assert (=> b!599834 m!863929))

(assert (=> b!599834 m!862371))

(declare-fun m!863931 () Bool)

(assert (=> b!599834 m!863931))

(declare-fun m!863933 () Bool)

(assert (=> d!211016 m!863933))

(assert (=> d!211016 m!862887))

(declare-fun m!863935 () Bool)

(assert (=> d!211016 m!863935))

(assert (=> d!210540 d!211016))

(assert (=> d!210540 d!210842))

(assert (=> d!210540 d!210550))

(declare-fun b!599836 () Bool)

(declare-fun e!363324 () Bool)

(declare-fun e!363323 () Bool)

(assert (=> b!599836 (= e!363324 e!363323)))

(declare-fun res!259378 () Bool)

(assert (=> b!599836 (=> (not res!259378) (not e!363323))))

(assert (=> b!599836 (= res!259378 (not ((_ is Nil!5986) (tail!801 lt!255032))))))

(declare-fun d!211018 () Bool)

(declare-fun e!363325 () Bool)

(assert (=> d!211018 e!363325))

(declare-fun res!259379 () Bool)

(assert (=> d!211018 (=> res!259379 e!363325)))

(declare-fun lt!255338 () Bool)

(assert (=> d!211018 (= res!259379 (not lt!255338))))

(assert (=> d!211018 (= lt!255338 e!363324)))

(declare-fun res!259377 () Bool)

(assert (=> d!211018 (=> res!259377 e!363324)))

(assert (=> d!211018 (= res!259377 ((_ is Nil!5986) (tail!801 input!2705)))))

(assert (=> d!211018 (= (isPrefix!817 (tail!801 input!2705) (tail!801 lt!255032)) lt!255338)))

(declare-fun b!599838 () Bool)

(assert (=> b!599838 (= e!363323 (isPrefix!817 (tail!801 (tail!801 input!2705)) (tail!801 (tail!801 lt!255032))))))

(declare-fun b!599837 () Bool)

(declare-fun res!259380 () Bool)

(assert (=> b!599837 (=> (not res!259380) (not e!363323))))

(assert (=> b!599837 (= res!259380 (= (head!1272 (tail!801 input!2705)) (head!1272 (tail!801 lt!255032))))))

(declare-fun b!599839 () Bool)

(assert (=> b!599839 (= e!363325 (>= (size!4713 (tail!801 lt!255032)) (size!4713 (tail!801 input!2705))))))

(assert (= (and d!211018 (not res!259377)) b!599836))

(assert (= (and b!599836 res!259378) b!599837))

(assert (= (and b!599837 res!259380) b!599838))

(assert (= (and d!211018 (not res!259379)) b!599839))

(assert (=> b!599838 m!862833))

(assert (=> b!599838 m!863639))

(assert (=> b!599838 m!862849))

(assert (=> b!599838 m!863689))

(assert (=> b!599838 m!863639))

(assert (=> b!599838 m!863689))

(declare-fun m!863937 () Bool)

(assert (=> b!599838 m!863937))

(assert (=> b!599837 m!862833))

(assert (=> b!599837 m!863643))

(assert (=> b!599837 m!862849))

(assert (=> b!599837 m!863695))

(assert (=> b!599839 m!862849))

(assert (=> b!599839 m!863697))

(assert (=> b!599839 m!862833))

(assert (=> b!599839 m!863647))

(assert (=> b!599065 d!211018))

(assert (=> b!599065 d!210866))

(assert (=> b!599065 d!210900))

(declare-fun b!599841 () Bool)

(declare-fun e!363326 () List!5996)

(assert (=> b!599841 (= e!363326 (Cons!5986 (h!11387 (t!79673 lt!255021)) (++!1677 (t!79673 (t!79673 lt!255021)) (_2!3700 (v!16430 lt!255028)))))))

(declare-fun b!599842 () Bool)

(declare-fun res!259382 () Bool)

(declare-fun e!363327 () Bool)

(assert (=> b!599842 (=> (not res!259382) (not e!363327))))

(declare-fun lt!255339 () List!5996)

(assert (=> b!599842 (= res!259382 (= (size!4713 lt!255339) (+ (size!4713 (t!79673 lt!255021)) (size!4713 (_2!3700 (v!16430 lt!255028))))))))

(declare-fun b!599840 () Bool)

(assert (=> b!599840 (= e!363326 (_2!3700 (v!16430 lt!255028)))))

(declare-fun b!599843 () Bool)

(assert (=> b!599843 (= e!363327 (or (not (= (_2!3700 (v!16430 lt!255028)) Nil!5986)) (= lt!255339 (t!79673 lt!255021))))))

(declare-fun d!211020 () Bool)

(assert (=> d!211020 e!363327))

(declare-fun res!259381 () Bool)

(assert (=> d!211020 (=> (not res!259381) (not e!363327))))

(assert (=> d!211020 (= res!259381 (= (content!1079 lt!255339) ((_ map or) (content!1079 (t!79673 lt!255021)) (content!1079 (_2!3700 (v!16430 lt!255028))))))))

(assert (=> d!211020 (= lt!255339 e!363326)))

(declare-fun c!111404 () Bool)

(assert (=> d!211020 (= c!111404 ((_ is Nil!5986) (t!79673 lt!255021)))))

(assert (=> d!211020 (= (++!1677 (t!79673 lt!255021) (_2!3700 (v!16430 lt!255028))) lt!255339)))

(assert (= (and d!211020 c!111404) b!599840))

(assert (= (and d!211020 (not c!111404)) b!599841))

(assert (= (and d!211020 res!259381) b!599842))

(assert (= (and b!599842 res!259382) b!599843))

(declare-fun m!863939 () Bool)

(assert (=> b!599841 m!863939))

(declare-fun m!863941 () Bool)

(assert (=> b!599842 m!863941))

(assert (=> b!599842 m!862921))

(assert (=> b!599842 m!862883))

(declare-fun m!863943 () Bool)

(assert (=> d!211020 m!863943))

(assert (=> d!211020 m!863919))

(assert (=> d!211020 m!862889))

(assert (=> b!599058 d!211020))

(declare-fun b!599844 () Bool)

(declare-fun res!259383 () Bool)

(declare-fun e!363328 () Bool)

(assert (=> b!599844 (=> (not res!259383) (not e!363328))))

(declare-fun lt!255342 () Option!1540)

(assert (=> b!599844 (= res!259383 (= (value!38753 (_1!3700 (get!2298 lt!255342))) (apply!1442 (transformation!1189 (rule!1959 (_1!3700 (get!2298 lt!255342)))) (seqFromList!1365 (originalCharacters!1228 (_1!3700 (get!2298 lt!255342)))))))))

(declare-fun d!211022 () Bool)

(declare-fun e!363329 () Bool)

(assert (=> d!211022 e!363329))

(declare-fun res!259389 () Bool)

(assert (=> d!211022 (=> res!259389 e!363329)))

(assert (=> d!211022 (= res!259389 (isEmpty!4324 lt!255342))))

(declare-fun e!363330 () Option!1540)

(assert (=> d!211022 (= lt!255342 e!363330)))

(declare-fun c!111405 () Bool)

(declare-fun lt!255340 () tuple2!6876)

(assert (=> d!211022 (= c!111405 (isEmpty!4321 (_1!3702 lt!255340)))))

(assert (=> d!211022 (= lt!255340 (findLongestMatch!170 (regex!1189 (h!11389 rules!3103)) lt!255016))))

(assert (=> d!211022 (ruleValid!387 thiss!22590 (h!11389 rules!3103))))

(assert (=> d!211022 (= (maxPrefixOneRule!438 thiss!22590 (h!11389 rules!3103) lt!255016) lt!255342)))

(declare-fun b!599845 () Bool)

(declare-fun e!363331 () Bool)

(assert (=> b!599845 (= e!363331 (matchR!634 (regex!1189 (h!11389 rules!3103)) (_1!3702 (findLongestMatchInner!191 (regex!1189 (h!11389 rules!3103)) Nil!5986 (size!4713 Nil!5986) lt!255016 lt!255016 (size!4713 lt!255016)))))))

(declare-fun b!599846 () Bool)

(assert (=> b!599846 (= e!363330 None!1539)))

(declare-fun b!599847 () Bool)

(declare-fun res!259386 () Bool)

(assert (=> b!599847 (=> (not res!259386) (not e!363328))))

(assert (=> b!599847 (= res!259386 (= (rule!1959 (_1!3700 (get!2298 lt!255342))) (h!11389 rules!3103)))))

(declare-fun b!599848 () Bool)

(assert (=> b!599848 (= e!363330 (Some!1539 (tuple2!6873 (Token!2115 (apply!1442 (transformation!1189 (h!11389 rules!3103)) (seqFromList!1365 (_1!3702 lt!255340))) (h!11389 rules!3103) (size!4715 (seqFromList!1365 (_1!3702 lt!255340))) (_1!3702 lt!255340)) (_2!3702 lt!255340))))))

(declare-fun lt!255344 () Unit!10894)

(assert (=> b!599848 (= lt!255344 (longestMatchIsAcceptedByMatchOrIsEmpty!175 (regex!1189 (h!11389 rules!3103)) lt!255016))))

(declare-fun res!259387 () Bool)

(assert (=> b!599848 (= res!259387 (isEmpty!4321 (_1!3702 (findLongestMatchInner!191 (regex!1189 (h!11389 rules!3103)) Nil!5986 (size!4713 Nil!5986) lt!255016 lt!255016 (size!4713 lt!255016)))))))

(assert (=> b!599848 (=> res!259387 e!363331)))

(assert (=> b!599848 e!363331))

(declare-fun lt!255341 () Unit!10894)

(assert (=> b!599848 (= lt!255341 lt!255344)))

(declare-fun lt!255343 () Unit!10894)

(assert (=> b!599848 (= lt!255343 (lemmaSemiInverse!228 (transformation!1189 (h!11389 rules!3103)) (seqFromList!1365 (_1!3702 lt!255340))))))

(declare-fun b!599849 () Bool)

(assert (=> b!599849 (= e!363329 e!363328)))

(declare-fun res!259388 () Bool)

(assert (=> b!599849 (=> (not res!259388) (not e!363328))))

(assert (=> b!599849 (= res!259388 (matchR!634 (regex!1189 (h!11389 rules!3103)) (list!2508 (charsOf!818 (_1!3700 (get!2298 lt!255342))))))))

(declare-fun b!599850 () Bool)

(declare-fun res!259384 () Bool)

(assert (=> b!599850 (=> (not res!259384) (not e!363328))))

(assert (=> b!599850 (= res!259384 (= (++!1677 (list!2508 (charsOf!818 (_1!3700 (get!2298 lt!255342)))) (_2!3700 (get!2298 lt!255342))) lt!255016))))

(declare-fun b!599851 () Bool)

(declare-fun res!259385 () Bool)

(assert (=> b!599851 (=> (not res!259385) (not e!363328))))

(assert (=> b!599851 (= res!259385 (< (size!4713 (_2!3700 (get!2298 lt!255342))) (size!4713 lt!255016)))))

(declare-fun b!599852 () Bool)

(assert (=> b!599852 (= e!363328 (= (size!4712 (_1!3700 (get!2298 lt!255342))) (size!4713 (originalCharacters!1228 (_1!3700 (get!2298 lt!255342))))))))

(assert (= (and d!211022 c!111405) b!599846))

(assert (= (and d!211022 (not c!111405)) b!599848))

(assert (= (and b!599848 (not res!259387)) b!599845))

(assert (= (and d!211022 (not res!259389)) b!599849))

(assert (= (and b!599849 res!259388) b!599850))

(assert (= (and b!599850 res!259384) b!599851))

(assert (= (and b!599851 res!259385) b!599847))

(assert (= (and b!599847 res!259386) b!599844))

(assert (= (and b!599844 res!259383) b!599852))

(assert (=> b!599845 m!863583))

(assert (=> b!599845 m!862707))

(assert (=> b!599845 m!863583))

(assert (=> b!599845 m!862707))

(declare-fun m!863945 () Bool)

(assert (=> b!599845 m!863945))

(declare-fun m!863947 () Bool)

(assert (=> b!599845 m!863947))

(declare-fun m!863949 () Bool)

(assert (=> b!599848 m!863949))

(declare-fun m!863951 () Bool)

(assert (=> b!599848 m!863951))

(declare-fun m!863953 () Bool)

(assert (=> b!599848 m!863953))

(assert (=> b!599848 m!863583))

(assert (=> b!599848 m!862707))

(assert (=> b!599848 m!863945))

(declare-fun m!863955 () Bool)

(assert (=> b!599848 m!863955))

(assert (=> b!599848 m!863583))

(assert (=> b!599848 m!863949))

(declare-fun m!863957 () Bool)

(assert (=> b!599848 m!863957))

(assert (=> b!599848 m!863949))

(declare-fun m!863959 () Bool)

(assert (=> b!599848 m!863959))

(assert (=> b!599848 m!862707))

(assert (=> b!599848 m!863949))

(declare-fun m!863961 () Bool)

(assert (=> d!211022 m!863961))

(declare-fun m!863963 () Bool)

(assert (=> d!211022 m!863963))

(declare-fun m!863965 () Bool)

(assert (=> d!211022 m!863965))

(assert (=> d!211022 m!863607))

(declare-fun m!863967 () Bool)

(assert (=> b!599844 m!863967))

(declare-fun m!863969 () Bool)

(assert (=> b!599844 m!863969))

(assert (=> b!599844 m!863969))

(declare-fun m!863971 () Bool)

(assert (=> b!599844 m!863971))

(assert (=> b!599850 m!863967))

(declare-fun m!863973 () Bool)

(assert (=> b!599850 m!863973))

(assert (=> b!599850 m!863973))

(declare-fun m!863975 () Bool)

(assert (=> b!599850 m!863975))

(assert (=> b!599850 m!863975))

(declare-fun m!863977 () Bool)

(assert (=> b!599850 m!863977))

(assert (=> b!599849 m!863967))

(assert (=> b!599849 m!863973))

(assert (=> b!599849 m!863973))

(assert (=> b!599849 m!863975))

(assert (=> b!599849 m!863975))

(declare-fun m!863979 () Bool)

(assert (=> b!599849 m!863979))

(assert (=> b!599851 m!863967))

(declare-fun m!863981 () Bool)

(assert (=> b!599851 m!863981))

(assert (=> b!599851 m!862707))

(assert (=> b!599847 m!863967))

(assert (=> b!599852 m!863967))

(declare-fun m!863983 () Bool)

(assert (=> b!599852 m!863983))

(assert (=> bm!40439 d!211022))

(declare-fun d!211024 () Bool)

(declare-fun c!111406 () Bool)

(assert (=> d!211024 (= c!111406 ((_ is Nil!5986) lt!255131))))

(declare-fun e!363332 () (InoxSet C!3968))

(assert (=> d!211024 (= (content!1079 lt!255131) e!363332)))

(declare-fun b!599853 () Bool)

(assert (=> b!599853 (= e!363332 ((as const (Array C!3968 Bool)) false))))

(declare-fun b!599854 () Bool)

(assert (=> b!599854 (= e!363332 ((_ map or) (store ((as const (Array C!3968 Bool)) false) (h!11387 lt!255131) true) (content!1079 (t!79673 lt!255131))))))

(assert (= (and d!211024 c!111406) b!599853))

(assert (= (and d!211024 (not c!111406)) b!599854))

(declare-fun m!863985 () Bool)

(assert (=> b!599854 m!863985))

(declare-fun m!863987 () Bool)

(assert (=> b!599854 m!863987))

(assert (=> d!210472 d!211024))

(declare-fun d!211026 () Bool)

(declare-fun c!111407 () Bool)

(assert (=> d!211026 (= c!111407 ((_ is Nil!5986) input!2705))))

(declare-fun e!363333 () (InoxSet C!3968))

(assert (=> d!211026 (= (content!1079 input!2705) e!363333)))

(declare-fun b!599855 () Bool)

(assert (=> b!599855 (= e!363333 ((as const (Array C!3968 Bool)) false))))

(declare-fun b!599856 () Bool)

(assert (=> b!599856 (= e!363333 ((_ map or) (store ((as const (Array C!3968 Bool)) false) (h!11387 input!2705) true) (content!1079 (t!79673 input!2705))))))

(assert (= (and d!211026 c!111407) b!599855))

(assert (= (and d!211026 (not c!111407)) b!599856))

(declare-fun m!863989 () Bool)

(assert (=> b!599856 m!863989))

(assert (=> b!599856 m!863669))

(assert (=> d!210472 d!211026))

(declare-fun d!211028 () Bool)

(declare-fun c!111408 () Bool)

(assert (=> d!211028 (= c!111408 ((_ is Nil!5986) suffix!1342))))

(declare-fun e!363334 () (InoxSet C!3968))

(assert (=> d!211028 (= (content!1079 suffix!1342) e!363334)))

(declare-fun b!599857 () Bool)

(assert (=> b!599857 (= e!363334 ((as const (Array C!3968 Bool)) false))))

(declare-fun b!599858 () Bool)

(assert (=> b!599858 (= e!363334 ((_ map or) (store ((as const (Array C!3968 Bool)) false) (h!11387 suffix!1342) true) (content!1079 (t!79673 suffix!1342))))))

(assert (= (and d!211028 c!111408) b!599857))

(assert (= (and d!211028 (not c!111408)) b!599858))

(declare-fun m!863991 () Bool)

(assert (=> b!599858 m!863991))

(declare-fun m!863993 () Bool)

(assert (=> b!599858 m!863993))

(assert (=> d!210472 d!211028))

(declare-fun d!211030 () Bool)

(declare-fun lt!255345 () Int)

(assert (=> d!211030 (>= lt!255345 0)))

(declare-fun e!363335 () Int)

(assert (=> d!211030 (= lt!255345 e!363335)))

(declare-fun c!111409 () Bool)

(assert (=> d!211030 (= c!111409 ((_ is Nil!5986) (t!79673 (originalCharacters!1228 token!491))))))

(assert (=> d!211030 (= (size!4713 (t!79673 (originalCharacters!1228 token!491))) lt!255345)))

(declare-fun b!599859 () Bool)

(assert (=> b!599859 (= e!363335 0)))

(declare-fun b!599860 () Bool)

(assert (=> b!599860 (= e!363335 (+ 1 (size!4713 (t!79673 (t!79673 (originalCharacters!1228 token!491))))))))

(assert (= (and d!211030 c!111409) b!599859))

(assert (= (and d!211030 (not c!111409)) b!599860))

(declare-fun m!863995 () Bool)

(assert (=> b!599860 m!863995))

(assert (=> b!599077 d!211030))

(declare-fun d!211032 () Bool)

(assert (=> d!211032 (= (inv!7593 (dynLambda!3455 (toChars!1939 (transformation!1189 (rule!1959 (_1!3700 (v!16430 lt!255028))))) (value!38753 (_1!3700 (v!16430 lt!255028))))) (isBalanced!526 (c!111202 (dynLambda!3455 (toChars!1939 (transformation!1189 (rule!1959 (_1!3700 (v!16430 lt!255028))))) (value!38753 (_1!3700 (v!16430 lt!255028)))))))))

(declare-fun bs!70862 () Bool)

(assert (= bs!70862 d!211032))

(declare-fun m!863997 () Bool)

(assert (=> bs!70862 m!863997))

(assert (=> tb!52247 d!211032))

(declare-fun d!211034 () Bool)

(declare-fun lt!255346 () Bool)

(assert (=> d!211034 (= lt!255346 (select (content!1080 rules!3103) (rule!1959 (_1!3700 (get!2298 lt!255146)))))))

(declare-fun e!363336 () Bool)

(assert (=> d!211034 (= lt!255346 e!363336)))

(declare-fun res!259391 () Bool)

(assert (=> d!211034 (=> (not res!259391) (not e!363336))))

(assert (=> d!211034 (= res!259391 ((_ is Cons!5988) rules!3103))))

(assert (=> d!211034 (= (contains!1399 rules!3103 (rule!1959 (_1!3700 (get!2298 lt!255146)))) lt!255346)))

(declare-fun b!599861 () Bool)

(declare-fun e!363337 () Bool)

(assert (=> b!599861 (= e!363336 e!363337)))

(declare-fun res!259390 () Bool)

(assert (=> b!599861 (=> res!259390 e!363337)))

(assert (=> b!599861 (= res!259390 (= (h!11389 rules!3103) (rule!1959 (_1!3700 (get!2298 lt!255146)))))))

(declare-fun b!599862 () Bool)

(assert (=> b!599862 (= e!363337 (contains!1399 (t!79675 rules!3103) (rule!1959 (_1!3700 (get!2298 lt!255146)))))))

(assert (= (and d!211034 res!259391) b!599861))

(assert (= (and b!599861 (not res!259390)) b!599862))

(assert (=> d!211034 m!862787))

(declare-fun m!863999 () Bool)

(assert (=> d!211034 m!863999))

(declare-fun m!864001 () Bool)

(assert (=> b!599862 m!864001))

(assert (=> b!599003 d!211034))

(assert (=> b!599003 d!210830))

(declare-fun b!599863 () Bool)

(declare-fun e!363339 () Bool)

(declare-fun e!363338 () Bool)

(assert (=> b!599863 (= e!363339 e!363338)))

(declare-fun res!259393 () Bool)

(assert (=> b!599863 (=> (not res!259393) (not e!363338))))

(assert (=> b!599863 (= res!259393 (not ((_ is Nil!5986) (tail!801 input!2705))))))

(declare-fun d!211036 () Bool)

(declare-fun e!363340 () Bool)

(assert (=> d!211036 e!363340))

(declare-fun res!259394 () Bool)

(assert (=> d!211036 (=> res!259394 e!363340)))

(declare-fun lt!255347 () Bool)

(assert (=> d!211036 (= res!259394 (not lt!255347))))

(assert (=> d!211036 (= lt!255347 e!363339)))

(declare-fun res!259392 () Bool)

(assert (=> d!211036 (=> res!259392 e!363339)))

(assert (=> d!211036 (= res!259392 ((_ is Nil!5986) (tail!801 input!2705)))))

(assert (=> d!211036 (= (isPrefix!817 (tail!801 input!2705) (tail!801 input!2705)) lt!255347)))

(declare-fun b!599865 () Bool)

(assert (=> b!599865 (= e!363338 (isPrefix!817 (tail!801 (tail!801 input!2705)) (tail!801 (tail!801 input!2705))))))

(declare-fun b!599864 () Bool)

(declare-fun res!259395 () Bool)

(assert (=> b!599864 (=> (not res!259395) (not e!363338))))

(assert (=> b!599864 (= res!259395 (= (head!1272 (tail!801 input!2705)) (head!1272 (tail!801 input!2705))))))

(declare-fun b!599866 () Bool)

(assert (=> b!599866 (= e!363340 (>= (size!4713 (tail!801 input!2705)) (size!4713 (tail!801 input!2705))))))

(assert (= (and d!211036 (not res!259392)) b!599863))

(assert (= (and b!599863 res!259393) b!599864))

(assert (= (and b!599864 res!259395) b!599865))

(assert (= (and d!211036 (not res!259394)) b!599866))

(assert (=> b!599865 m!862833))

(assert (=> b!599865 m!863639))

(assert (=> b!599865 m!862833))

(assert (=> b!599865 m!863639))

(assert (=> b!599865 m!863639))

(assert (=> b!599865 m!863639))

(declare-fun m!864003 () Bool)

(assert (=> b!599865 m!864003))

(assert (=> b!599864 m!862833))

(assert (=> b!599864 m!863643))

(assert (=> b!599864 m!862833))

(assert (=> b!599864 m!863643))

(assert (=> b!599866 m!862833))

(assert (=> b!599866 m!863647))

(assert (=> b!599866 m!862833))

(assert (=> b!599866 m!863647))

(assert (=> b!599049 d!211036))

(assert (=> b!599049 d!210866))

(declare-fun d!211038 () Bool)

(declare-fun res!259400 () Bool)

(declare-fun e!363345 () Bool)

(assert (=> d!211038 (=> res!259400 e!363345)))

(assert (=> d!211038 (= res!259400 ((_ is Nil!5988) rules!3103))))

(assert (=> d!211038 (= (noDuplicateTag!437 thiss!22590 rules!3103 Nil!5990) e!363345)))

(declare-fun b!599871 () Bool)

(declare-fun e!363346 () Bool)

(assert (=> b!599871 (= e!363345 e!363346)))

(declare-fun res!259401 () Bool)

(assert (=> b!599871 (=> (not res!259401) (not e!363346))))

(declare-fun contains!1401 (List!6000 String!7808) Bool)

(assert (=> b!599871 (= res!259401 (not (contains!1401 Nil!5990 (tag!1451 (h!11389 rules!3103)))))))

(declare-fun b!599872 () Bool)

(assert (=> b!599872 (= e!363346 (noDuplicateTag!437 thiss!22590 (t!79675 rules!3103) (Cons!5990 (tag!1451 (h!11389 rules!3103)) Nil!5990)))))

(assert (= (and d!211038 (not res!259400)) b!599871))

(assert (= (and b!599871 res!259401) b!599872))

(declare-fun m!864005 () Bool)

(assert (=> b!599871 m!864005))

(declare-fun m!864007 () Bool)

(assert (=> b!599872 m!864007))

(assert (=> b!599009 d!211038))

(declare-fun d!211040 () Bool)

(declare-fun charsToBigInt!1 (List!5997) Int)

(assert (=> d!211040 (= (inv!17 (value!38753 token!491)) (= (charsToBigInt!1 (text!8939 (value!38753 token!491))) (value!38746 (value!38753 token!491))))))

(declare-fun bs!70863 () Bool)

(assert (= bs!70863 d!211040))

(declare-fun m!864009 () Bool)

(assert (=> bs!70863 m!864009))

(assert (=> b!599021 d!211040))

(declare-fun d!211042 () Bool)

(declare-fun c!111410 () Bool)

(assert (=> d!211042 (= c!111410 ((_ is Nil!5986) lt!255132))))

(declare-fun e!363347 () (InoxSet C!3968))

(assert (=> d!211042 (= (content!1079 lt!255132) e!363347)))

(declare-fun b!599873 () Bool)

(assert (=> b!599873 (= e!363347 ((as const (Array C!3968 Bool)) false))))

(declare-fun b!599874 () Bool)

(assert (=> b!599874 (= e!363347 ((_ map or) (store ((as const (Array C!3968 Bool)) false) (h!11387 lt!255132) true) (content!1079 (t!79673 lt!255132))))))

(assert (= (and d!211042 c!111410) b!599873))

(assert (= (and d!211042 (not c!111410)) b!599874))

(declare-fun m!864011 () Bool)

(assert (=> b!599874 m!864011))

(declare-fun m!864013 () Bool)

(assert (=> b!599874 m!864013))

(assert (=> d!210474 d!211042))

(declare-fun d!211044 () Bool)

(declare-fun c!111411 () Bool)

(assert (=> d!211044 (= c!111411 ((_ is Nil!5986) lt!255024))))

(declare-fun e!363348 () (InoxSet C!3968))

(assert (=> d!211044 (= (content!1079 lt!255024) e!363348)))

(declare-fun b!599875 () Bool)

(assert (=> b!599875 (= e!363348 ((as const (Array C!3968 Bool)) false))))

(declare-fun b!599876 () Bool)

(assert (=> b!599876 (= e!363348 ((_ map or) (store ((as const (Array C!3968 Bool)) false) (h!11387 lt!255024) true) (content!1079 (t!79673 lt!255024))))))

(assert (= (and d!211044 c!111411) b!599875))

(assert (= (and d!211044 (not c!111411)) b!599876))

(declare-fun m!864015 () Bool)

(assert (=> b!599876 m!864015))

(assert (=> b!599876 m!863815))

(assert (=> d!210474 d!211044))

(assert (=> d!210474 d!211028))

(declare-fun d!211046 () Bool)

(declare-fun e!363349 () Bool)

(assert (=> d!211046 e!363349))

(declare-fun res!259402 () Bool)

(assert (=> d!211046 (=> (not res!259402) (not e!363349))))

(declare-fun lt!255348 () BalanceConc!3820)

(assert (=> d!211046 (= res!259402 (= (list!2508 lt!255348) lt!255021))))

(assert (=> d!211046 (= lt!255348 (BalanceConc!3821 (fromList!277 lt!255021)))))

(assert (=> d!211046 (= (fromListB!600 lt!255021) lt!255348)))

(declare-fun b!599877 () Bool)

(assert (=> b!599877 (= e!363349 (isBalanced!526 (fromList!277 lt!255021)))))

(assert (= (and d!211046 res!259402) b!599877))

(declare-fun m!864017 () Bool)

(assert (=> d!211046 m!864017))

(declare-fun m!864019 () Bool)

(assert (=> d!211046 m!864019))

(assert (=> b!599877 m!864019))

(assert (=> b!599877 m!864019))

(declare-fun m!864021 () Bool)

(assert (=> b!599877 m!864021))

(assert (=> d!210546 d!211046))

(declare-fun b!599879 () Bool)

(declare-fun e!363350 () List!5996)

(assert (=> b!599879 (= e!363350 (Cons!5986 (h!11387 lt!255024) (++!1677 (t!79673 lt!255024) lt!255141)))))

(declare-fun b!599880 () Bool)

(declare-fun res!259404 () Bool)

(declare-fun e!363351 () Bool)

(assert (=> b!599880 (=> (not res!259404) (not e!363351))))

(declare-fun lt!255349 () List!5996)

(assert (=> b!599880 (= res!259404 (= (size!4713 lt!255349) (+ (size!4713 lt!255024) (size!4713 lt!255141))))))

(declare-fun b!599878 () Bool)

(assert (=> b!599878 (= e!363350 lt!255141)))

(declare-fun b!599881 () Bool)

(assert (=> b!599881 (= e!363351 (or (not (= lt!255141 Nil!5986)) (= lt!255349 lt!255024)))))

(declare-fun d!211048 () Bool)

(assert (=> d!211048 e!363351))

(declare-fun res!259403 () Bool)

(assert (=> d!211048 (=> (not res!259403) (not e!363351))))

(assert (=> d!211048 (= res!259403 (= (content!1079 lt!255349) ((_ map or) (content!1079 lt!255024) (content!1079 lt!255141))))))

(assert (=> d!211048 (= lt!255349 e!363350)))

(declare-fun c!111412 () Bool)

(assert (=> d!211048 (= c!111412 ((_ is Nil!5986) lt!255024))))

(assert (=> d!211048 (= (++!1677 lt!255024 lt!255141) lt!255349)))

(assert (= (and d!211048 c!111412) b!599878))

(assert (= (and d!211048 (not c!111412)) b!599879))

(assert (= (and d!211048 res!259403) b!599880))

(assert (= (and b!599880 res!259404) b!599881))

(declare-fun m!864023 () Bool)

(assert (=> b!599879 m!864023))

(declare-fun m!864025 () Bool)

(assert (=> b!599880 m!864025))

(assert (=> b!599880 m!862395))

(declare-fun m!864027 () Bool)

(assert (=> b!599880 m!864027))

(declare-fun m!864029 () Bool)

(assert (=> d!211048 m!864029))

(assert (=> d!211048 m!862755))

(declare-fun m!864031 () Bool)

(assert (=> d!211048 m!864031))

(assert (=> d!210490 d!211048))

(assert (=> d!210490 d!210918))

(assert (=> d!210490 d!210532))

(assert (=> b!599034 d!210960))

(declare-fun d!211050 () Bool)

(assert (=> d!211050 (= (head!1272 lt!255016) (h!11387 lt!255016))))

(assert (=> b!599034 d!211050))

(assert (=> d!210554 d!210522))

(declare-fun d!211052 () Bool)

(assert (=> d!211052 (ruleValid!387 thiss!22590 (rule!1959 token!491))))

(assert (=> d!211052 true))

(declare-fun _$65!865 () Unit!10894)

(assert (=> d!211052 (= (choose!4374 thiss!22590 (rule!1959 token!491) rules!3103) _$65!865)))

(declare-fun bs!70864 () Bool)

(assert (= bs!70864 d!211052))

(assert (=> bs!70864 m!862391))

(assert (=> d!210554 d!211052))

(declare-fun d!211054 () Bool)

(declare-fun lt!255350 () Bool)

(assert (=> d!211054 (= lt!255350 (select (content!1080 rules!3103) (rule!1959 token!491)))))

(declare-fun e!363352 () Bool)

(assert (=> d!211054 (= lt!255350 e!363352)))

(declare-fun res!259406 () Bool)

(assert (=> d!211054 (=> (not res!259406) (not e!363352))))

(assert (=> d!211054 (= res!259406 ((_ is Cons!5988) rules!3103))))

(assert (=> d!211054 (= (contains!1399 rules!3103 (rule!1959 token!491)) lt!255350)))

(declare-fun b!599882 () Bool)

(declare-fun e!363353 () Bool)

(assert (=> b!599882 (= e!363352 e!363353)))

(declare-fun res!259405 () Bool)

(assert (=> b!599882 (=> res!259405 e!363353)))

(assert (=> b!599882 (= res!259405 (= (h!11389 rules!3103) (rule!1959 token!491)))))

(declare-fun b!599883 () Bool)

(assert (=> b!599883 (= e!363353 (contains!1399 (t!79675 rules!3103) (rule!1959 token!491)))))

(assert (= (and d!211054 res!259406) b!599882))

(assert (= (and b!599882 (not res!259405)) b!599883))

(assert (=> d!211054 m!862787))

(declare-fun m!864033 () Bool)

(assert (=> d!211054 m!864033))

(declare-fun m!864035 () Bool)

(assert (=> b!599883 m!864035))

(assert (=> d!210554 d!211054))

(declare-fun d!211056 () Bool)

(assert (=> d!211056 (= (isDefined!1351 lt!255146) (not (isEmpty!4324 lt!255146)))))

(declare-fun bs!70865 () Bool)

(assert (= bs!70865 d!211056))

(assert (=> bs!70865 m!862819))

(assert (=> b!599006 d!211056))

(declare-fun b!599884 () Bool)

(declare-fun e!363354 () Bool)

(declare-fun tp!186817 () Bool)

(assert (=> b!599884 (= e!363354 (and tp_is_empty!3401 tp!186817))))

(assert (=> b!599111 (= tp!186736 e!363354)))

(assert (= (and b!599111 ((_ is Cons!5986) (t!79673 (originalCharacters!1228 token!491)))) b!599884))

(declare-fun e!363355 () Bool)

(assert (=> b!599101 (= tp!186726 e!363355)))

(declare-fun b!599886 () Bool)

(declare-fun tp!186820 () Bool)

(declare-fun tp!186819 () Bool)

(assert (=> b!599886 (= e!363355 (and tp!186820 tp!186819))))

(declare-fun b!599887 () Bool)

(declare-fun tp!186822 () Bool)

(assert (=> b!599887 (= e!363355 tp!186822)))

(declare-fun b!599888 () Bool)

(declare-fun tp!186818 () Bool)

(declare-fun tp!186821 () Bool)

(assert (=> b!599888 (= e!363355 (and tp!186818 tp!186821))))

(declare-fun b!599885 () Bool)

(assert (=> b!599885 (= e!363355 tp_is_empty!3401)))

(assert (= (and b!599101 ((_ is ElementMatch!1523) (regex!1189 (h!11389 (t!79675 rules!3103))))) b!599885))

(assert (= (and b!599101 ((_ is Concat!2736) (regex!1189 (h!11389 (t!79675 rules!3103))))) b!599886))

(assert (= (and b!599101 ((_ is Star!1523) (regex!1189 (h!11389 (t!79675 rules!3103))))) b!599887))

(assert (= (and b!599101 ((_ is Union!1523) (regex!1189 (h!11389 (t!79675 rules!3103))))) b!599888))

(declare-fun b!599891 () Bool)

(declare-fun b_free!17041 () Bool)

(declare-fun b_next!17057 () Bool)

(assert (=> b!599891 (= b_free!17041 (not b_next!17057))))

(declare-fun t!79793 () Bool)

(declare-fun tb!52327 () Bool)

(assert (=> (and b!599891 (= (toValue!2080 (transformation!1189 (h!11389 (t!79675 (t!79675 rules!3103))))) (toValue!2080 (transformation!1189 (rule!1959 token!491)))) t!79793) tb!52327))

(declare-fun result!58852 () Bool)

(assert (= result!58852 result!58758))

(assert (=> d!210494 t!79793))

(declare-fun t!79795 () Bool)

(declare-fun tb!52329 () Bool)

(assert (=> (and b!599891 (= (toValue!2080 (transformation!1189 (h!11389 (t!79675 (t!79675 rules!3103))))) (toValue!2080 (transformation!1189 (rule!1959 (_1!3700 (v!16430 lt!255028)))))) t!79795) tb!52329))

(declare-fun result!58854 () Bool)

(assert (= result!58854 result!58768))

(assert (=> d!210560 t!79795))

(declare-fun t!79797 () Bool)

(declare-fun tb!52331 () Bool)

(assert (=> (and b!599891 (= (toValue!2080 (transformation!1189 (h!11389 (t!79675 (t!79675 rules!3103))))) (toValue!2080 (transformation!1189 (rule!1959 (_1!3700 (get!2298 lt!255125)))))) t!79797) tb!52331))

(declare-fun result!58856 () Bool)

(assert (= result!58856 result!58840))

(assert (=> d!210932 t!79797))

(declare-fun t!79799 () Bool)

(declare-fun tb!52333 () Bool)

(assert (=> (and b!599891 (= (toValue!2080 (transformation!1189 (h!11389 (t!79675 (t!79675 rules!3103))))) (toValue!2080 (transformation!1189 (rule!1959 (_1!3700 (get!2298 lt!255146)))))) t!79799) tb!52333))

(declare-fun result!58858 () Bool)

(assert (= result!58858 result!58846))

(assert (=> d!210954 t!79799))

(declare-fun tp!186823 () Bool)

(declare-fun b_and!59231 () Bool)

(assert (=> b!599891 (= tp!186823 (and (=> t!79793 result!58852) (=> t!79795 result!58854) (=> t!79797 result!58856) (=> t!79799 result!58858) b_and!59231))))

(declare-fun b_free!17043 () Bool)

(declare-fun b_next!17059 () Bool)

(assert (=> b!599891 (= b_free!17043 (not b_next!17059))))

(declare-fun tb!52335 () Bool)

(declare-fun t!79801 () Bool)

(assert (=> (and b!599891 (= (toChars!1939 (transformation!1189 (h!11389 (t!79675 (t!79675 rules!3103))))) (toChars!1939 (transformation!1189 (rule!1959 (_1!3700 (get!2298 lt!255146)))))) t!79801) tb!52335))

(declare-fun result!58860 () Bool)

(assert (= result!58860 result!58828))

(assert (=> d!210828 t!79801))

(declare-fun tb!52337 () Bool)

(declare-fun t!79803 () Bool)

(assert (=> (and b!599891 (= (toChars!1939 (transformation!1189 (h!11389 (t!79675 (t!79675 rules!3103))))) (toChars!1939 (transformation!1189 (rule!1959 token!491)))) t!79803) tb!52337))

(declare-fun result!58862 () Bool)

(assert (= result!58862 result!58752))

(assert (=> b!598982 t!79803))

(declare-fun tb!52339 () Bool)

(declare-fun t!79805 () Bool)

(assert (=> (and b!599891 (= (toChars!1939 (transformation!1189 (h!11389 (t!79675 (t!79675 rules!3103))))) (toChars!1939 (transformation!1189 (rule!1959 (_1!3700 (v!16430 lt!255028)))))) t!79805) tb!52339))

(declare-fun result!58864 () Bool)

(assert (= result!58864 result!58764))

(assert (=> d!210524 t!79805))

(declare-fun t!79807 () Bool)

(declare-fun tb!52341 () Bool)

(assert (=> (and b!599891 (= (toChars!1939 (transformation!1189 (h!11389 (t!79675 (t!79675 rules!3103))))) (toChars!1939 (transformation!1189 (rule!1959 (_1!3700 (get!2298 lt!255125)))))) t!79807) tb!52341))

(declare-fun result!58866 () Bool)

(assert (= result!58866 result!58834))

(assert (=> d!210854 t!79807))

(assert (=> d!210482 t!79803))

(declare-fun b_and!59233 () Bool)

(declare-fun tp!186826 () Bool)

(assert (=> b!599891 (= tp!186826 (and (=> t!79803 result!58862) (=> t!79801 result!58860) (=> t!79805 result!58864) (=> t!79807 result!58866) b_and!59233))))

(declare-fun e!363359 () Bool)

(assert (=> b!599891 (= e!363359 (and tp!186823 tp!186826))))

(declare-fun tp!186824 () Bool)

(declare-fun e!363356 () Bool)

(declare-fun b!599890 () Bool)

(assert (=> b!599890 (= e!363356 (and tp!186824 (inv!7585 (tag!1451 (h!11389 (t!79675 (t!79675 rules!3103))))) (inv!7589 (transformation!1189 (h!11389 (t!79675 (t!79675 rules!3103))))) e!363359))))

(declare-fun b!599889 () Bool)

(declare-fun e!363357 () Bool)

(declare-fun tp!186825 () Bool)

(assert (=> b!599889 (= e!363357 (and e!363356 tp!186825))))

(assert (=> b!599100 (= tp!186727 e!363357)))

(assert (= b!599890 b!599891))

(assert (= b!599889 b!599890))

(assert (= (and b!599100 ((_ is Cons!5988) (t!79675 (t!79675 rules!3103)))) b!599889))

(declare-fun m!864037 () Bool)

(assert (=> b!599890 m!864037))

(declare-fun m!864039 () Bool)

(assert (=> b!599890 m!864039))

(declare-fun e!363360 () Bool)

(assert (=> b!599106 (= tp!186729 e!363360)))

(declare-fun b!599893 () Bool)

(declare-fun tp!186829 () Bool)

(declare-fun tp!186828 () Bool)

(assert (=> b!599893 (= e!363360 (and tp!186829 tp!186828))))

(declare-fun b!599894 () Bool)

(declare-fun tp!186831 () Bool)

(assert (=> b!599894 (= e!363360 tp!186831)))

(declare-fun b!599895 () Bool)

(declare-fun tp!186827 () Bool)

(declare-fun tp!186830 () Bool)

(assert (=> b!599895 (= e!363360 (and tp!186827 tp!186830))))

(declare-fun b!599892 () Bool)

(assert (=> b!599892 (= e!363360 tp_is_empty!3401)))

(assert (= (and b!599106 ((_ is ElementMatch!1523) (regOne!3559 (regex!1189 (rule!1959 token!491))))) b!599892))

(assert (= (and b!599106 ((_ is Concat!2736) (regOne!3559 (regex!1189 (rule!1959 token!491))))) b!599893))

(assert (= (and b!599106 ((_ is Star!1523) (regOne!3559 (regex!1189 (rule!1959 token!491))))) b!599894))

(assert (= (and b!599106 ((_ is Union!1523) (regOne!3559 (regex!1189 (rule!1959 token!491))))) b!599895))

(declare-fun e!363361 () Bool)

(assert (=> b!599106 (= tp!186732 e!363361)))

(declare-fun b!599897 () Bool)

(declare-fun tp!186834 () Bool)

(declare-fun tp!186833 () Bool)

(assert (=> b!599897 (= e!363361 (and tp!186834 tp!186833))))

(declare-fun b!599898 () Bool)

(declare-fun tp!186836 () Bool)

(assert (=> b!599898 (= e!363361 tp!186836)))

(declare-fun b!599899 () Bool)

(declare-fun tp!186832 () Bool)

(declare-fun tp!186835 () Bool)

(assert (=> b!599899 (= e!363361 (and tp!186832 tp!186835))))

(declare-fun b!599896 () Bool)

(assert (=> b!599896 (= e!363361 tp_is_empty!3401)))

(assert (= (and b!599106 ((_ is ElementMatch!1523) (regTwo!3559 (regex!1189 (rule!1959 token!491))))) b!599896))

(assert (= (and b!599106 ((_ is Concat!2736) (regTwo!3559 (regex!1189 (rule!1959 token!491))))) b!599897))

(assert (= (and b!599106 ((_ is Star!1523) (regTwo!3559 (regex!1189 (rule!1959 token!491))))) b!599898))

(assert (= (and b!599106 ((_ is Union!1523) (regTwo!3559 (regex!1189 (rule!1959 token!491))))) b!599899))

(declare-fun b!599900 () Bool)

(declare-fun e!363362 () Bool)

(declare-fun tp!186837 () Bool)

(assert (=> b!599900 (= e!363362 (and tp_is_empty!3401 tp!186837))))

(assert (=> b!599113 (= tp!186738 e!363362)))

(assert (= (and b!599113 ((_ is Cons!5986) (t!79673 (t!79673 suffix!1342)))) b!599900))

(declare-fun e!363363 () Bool)

(assert (=> b!599105 (= tp!186733 e!363363)))

(declare-fun b!599902 () Bool)

(declare-fun tp!186840 () Bool)

(declare-fun tp!186839 () Bool)

(assert (=> b!599902 (= e!363363 (and tp!186840 tp!186839))))

(declare-fun b!599903 () Bool)

(declare-fun tp!186842 () Bool)

(assert (=> b!599903 (= e!363363 tp!186842)))

(declare-fun b!599904 () Bool)

(declare-fun tp!186838 () Bool)

(declare-fun tp!186841 () Bool)

(assert (=> b!599904 (= e!363363 (and tp!186838 tp!186841))))

(declare-fun b!599901 () Bool)

(assert (=> b!599901 (= e!363363 tp_is_empty!3401)))

(assert (= (and b!599105 ((_ is ElementMatch!1523) (reg!1852 (regex!1189 (rule!1959 token!491))))) b!599901))

(assert (= (and b!599105 ((_ is Concat!2736) (reg!1852 (regex!1189 (rule!1959 token!491))))) b!599902))

(assert (= (and b!599105 ((_ is Star!1523) (reg!1852 (regex!1189 (rule!1959 token!491))))) b!599903))

(assert (= (and b!599105 ((_ is Union!1523) (reg!1852 (regex!1189 (rule!1959 token!491))))) b!599904))

(declare-fun e!363364 () Bool)

(assert (=> b!599104 (= tp!186731 e!363364)))

(declare-fun b!599906 () Bool)

(declare-fun tp!186845 () Bool)

(declare-fun tp!186844 () Bool)

(assert (=> b!599906 (= e!363364 (and tp!186845 tp!186844))))

(declare-fun b!599907 () Bool)

(declare-fun tp!186847 () Bool)

(assert (=> b!599907 (= e!363364 tp!186847)))

(declare-fun b!599908 () Bool)

(declare-fun tp!186843 () Bool)

(declare-fun tp!186846 () Bool)

(assert (=> b!599908 (= e!363364 (and tp!186843 tp!186846))))

(declare-fun b!599905 () Bool)

(assert (=> b!599905 (= e!363364 tp_is_empty!3401)))

(assert (= (and b!599104 ((_ is ElementMatch!1523) (regOne!3558 (regex!1189 (rule!1959 token!491))))) b!599905))

(assert (= (and b!599104 ((_ is Concat!2736) (regOne!3558 (regex!1189 (rule!1959 token!491))))) b!599906))

(assert (= (and b!599104 ((_ is Star!1523) (regOne!3558 (regex!1189 (rule!1959 token!491))))) b!599907))

(assert (= (and b!599104 ((_ is Union!1523) (regOne!3558 (regex!1189 (rule!1959 token!491))))) b!599908))

(declare-fun e!363365 () Bool)

(assert (=> b!599104 (= tp!186730 e!363365)))

(declare-fun b!599910 () Bool)

(declare-fun tp!186850 () Bool)

(declare-fun tp!186849 () Bool)

(assert (=> b!599910 (= e!363365 (and tp!186850 tp!186849))))

(declare-fun b!599911 () Bool)

(declare-fun tp!186852 () Bool)

(assert (=> b!599911 (= e!363365 tp!186852)))

(declare-fun b!599912 () Bool)

(declare-fun tp!186848 () Bool)

(declare-fun tp!186851 () Bool)

(assert (=> b!599912 (= e!363365 (and tp!186848 tp!186851))))

(declare-fun b!599909 () Bool)

(assert (=> b!599909 (= e!363365 tp_is_empty!3401)))

(assert (= (and b!599104 ((_ is ElementMatch!1523) (regTwo!3558 (regex!1189 (rule!1959 token!491))))) b!599909))

(assert (= (and b!599104 ((_ is Concat!2736) (regTwo!3558 (regex!1189 (rule!1959 token!491))))) b!599910))

(assert (= (and b!599104 ((_ is Star!1523) (regTwo!3558 (regex!1189 (rule!1959 token!491))))) b!599911))

(assert (= (and b!599104 ((_ is Union!1523) (regTwo!3558 (regex!1189 (rule!1959 token!491))))) b!599912))

(declare-fun b!599913 () Bool)

(declare-fun e!363366 () Bool)

(declare-fun tp!186853 () Bool)

(assert (=> b!599913 (= e!363366 (and tp_is_empty!3401 tp!186853))))

(assert (=> b!599112 (= tp!186737 e!363366)))

(assert (= (and b!599112 ((_ is Cons!5986) (t!79673 (t!79673 input!2705)))) b!599913))

(declare-fun e!363367 () Bool)

(assert (=> b!599091 (= tp!186712 e!363367)))

(declare-fun b!599915 () Bool)

(declare-fun tp!186856 () Bool)

(declare-fun tp!186855 () Bool)

(assert (=> b!599915 (= e!363367 (and tp!186856 tp!186855))))

(declare-fun b!599916 () Bool)

(declare-fun tp!186858 () Bool)

(assert (=> b!599916 (= e!363367 tp!186858)))

(declare-fun b!599917 () Bool)

(declare-fun tp!186854 () Bool)

(declare-fun tp!186857 () Bool)

(assert (=> b!599917 (= e!363367 (and tp!186854 tp!186857))))

(declare-fun b!599914 () Bool)

(assert (=> b!599914 (= e!363367 tp_is_empty!3401)))

(assert (= (and b!599091 ((_ is ElementMatch!1523) (regOne!3559 (regex!1189 (h!11389 rules!3103))))) b!599914))

(assert (= (and b!599091 ((_ is Concat!2736) (regOne!3559 (regex!1189 (h!11389 rules!3103))))) b!599915))

(assert (= (and b!599091 ((_ is Star!1523) (regOne!3559 (regex!1189 (h!11389 rules!3103))))) b!599916))

(assert (= (and b!599091 ((_ is Union!1523) (regOne!3559 (regex!1189 (h!11389 rules!3103))))) b!599917))

(declare-fun e!363368 () Bool)

(assert (=> b!599091 (= tp!186715 e!363368)))

(declare-fun b!599919 () Bool)

(declare-fun tp!186861 () Bool)

(declare-fun tp!186860 () Bool)

(assert (=> b!599919 (= e!363368 (and tp!186861 tp!186860))))

(declare-fun b!599920 () Bool)

(declare-fun tp!186863 () Bool)

(assert (=> b!599920 (= e!363368 tp!186863)))

(declare-fun b!599921 () Bool)

(declare-fun tp!186859 () Bool)

(declare-fun tp!186862 () Bool)

(assert (=> b!599921 (= e!363368 (and tp!186859 tp!186862))))

(declare-fun b!599918 () Bool)

(assert (=> b!599918 (= e!363368 tp_is_empty!3401)))

(assert (= (and b!599091 ((_ is ElementMatch!1523) (regTwo!3559 (regex!1189 (h!11389 rules!3103))))) b!599918))

(assert (= (and b!599091 ((_ is Concat!2736) (regTwo!3559 (regex!1189 (h!11389 rules!3103))))) b!599919))

(assert (= (and b!599091 ((_ is Star!1523) (regTwo!3559 (regex!1189 (h!11389 rules!3103))))) b!599920))

(assert (= (and b!599091 ((_ is Union!1523) (regTwo!3559 (regex!1189 (h!11389 rules!3103))))) b!599921))

(declare-fun e!363373 () Bool)

(declare-fun tp!186871 () Bool)

(declare-fun b!599930 () Bool)

(declare-fun tp!186870 () Bool)

(assert (=> b!599930 (= e!363373 (and (inv!7592 (left!4813 (c!111202 (dynLambda!3455 (toChars!1939 (transformation!1189 (rule!1959 (_1!3700 (v!16430 lt!255028))))) (value!38753 (_1!3700 (v!16430 lt!255028))))))) tp!186871 (inv!7592 (right!5143 (c!111202 (dynLambda!3455 (toChars!1939 (transformation!1189 (rule!1959 (_1!3700 (v!16430 lt!255028))))) (value!38753 (_1!3700 (v!16430 lt!255028))))))) tp!186870))))

(declare-fun b!599932 () Bool)

(declare-fun e!363374 () Bool)

(declare-fun tp!186872 () Bool)

(assert (=> b!599932 (= e!363374 tp!186872)))

(declare-fun b!599931 () Bool)

(declare-fun inv!7599 (IArray!3813) Bool)

(assert (=> b!599931 (= e!363373 (and (inv!7599 (xs!4543 (c!111202 (dynLambda!3455 (toChars!1939 (transformation!1189 (rule!1959 (_1!3700 (v!16430 lt!255028))))) (value!38753 (_1!3700 (v!16430 lt!255028))))))) e!363374))))

(assert (=> b!599056 (= tp!186701 (and (inv!7592 (c!111202 (dynLambda!3455 (toChars!1939 (transformation!1189 (rule!1959 (_1!3700 (v!16430 lt!255028))))) (value!38753 (_1!3700 (v!16430 lt!255028)))))) e!363373))))

(assert (= (and b!599056 ((_ is Node!1906) (c!111202 (dynLambda!3455 (toChars!1939 (transformation!1189 (rule!1959 (_1!3700 (v!16430 lt!255028))))) (value!38753 (_1!3700 (v!16430 lt!255028))))))) b!599930))

(assert (= b!599931 b!599932))

(assert (= (and b!599056 ((_ is Leaf!3008) (c!111202 (dynLambda!3455 (toChars!1939 (transformation!1189 (rule!1959 (_1!3700 (v!16430 lt!255028))))) (value!38753 (_1!3700 (v!16430 lt!255028))))))) b!599931))

(declare-fun m!864041 () Bool)

(assert (=> b!599930 m!864041))

(declare-fun m!864043 () Bool)

(assert (=> b!599930 m!864043))

(declare-fun m!864045 () Bool)

(assert (=> b!599931 m!864045))

(assert (=> b!599056 m!862869))

(declare-fun e!363375 () Bool)

(assert (=> b!599089 (= tp!186714 e!363375)))

(declare-fun b!599934 () Bool)

(declare-fun tp!186875 () Bool)

(declare-fun tp!186874 () Bool)

(assert (=> b!599934 (= e!363375 (and tp!186875 tp!186874))))

(declare-fun b!599935 () Bool)

(declare-fun tp!186877 () Bool)

(assert (=> b!599935 (= e!363375 tp!186877)))

(declare-fun b!599936 () Bool)

(declare-fun tp!186873 () Bool)

(declare-fun tp!186876 () Bool)

(assert (=> b!599936 (= e!363375 (and tp!186873 tp!186876))))

(declare-fun b!599933 () Bool)

(assert (=> b!599933 (= e!363375 tp_is_empty!3401)))

(assert (= (and b!599089 ((_ is ElementMatch!1523) (regOne!3558 (regex!1189 (h!11389 rules!3103))))) b!599933))

(assert (= (and b!599089 ((_ is Concat!2736) (regOne!3558 (regex!1189 (h!11389 rules!3103))))) b!599934))

(assert (= (and b!599089 ((_ is Star!1523) (regOne!3558 (regex!1189 (h!11389 rules!3103))))) b!599935))

(assert (= (and b!599089 ((_ is Union!1523) (regOne!3558 (regex!1189 (h!11389 rules!3103))))) b!599936))

(declare-fun e!363376 () Bool)

(assert (=> b!599089 (= tp!186713 e!363376)))

(declare-fun b!599938 () Bool)

(declare-fun tp!186880 () Bool)

(declare-fun tp!186879 () Bool)

(assert (=> b!599938 (= e!363376 (and tp!186880 tp!186879))))

(declare-fun b!599939 () Bool)

(declare-fun tp!186882 () Bool)

(assert (=> b!599939 (= e!363376 tp!186882)))

(declare-fun b!599940 () Bool)

(declare-fun tp!186878 () Bool)

(declare-fun tp!186881 () Bool)

(assert (=> b!599940 (= e!363376 (and tp!186878 tp!186881))))

(declare-fun b!599937 () Bool)

(assert (=> b!599937 (= e!363376 tp_is_empty!3401)))

(assert (= (and b!599089 ((_ is ElementMatch!1523) (regTwo!3558 (regex!1189 (h!11389 rules!3103))))) b!599937))

(assert (= (and b!599089 ((_ is Concat!2736) (regTwo!3558 (regex!1189 (h!11389 rules!3103))))) b!599938))

(assert (= (and b!599089 ((_ is Star!1523) (regTwo!3558 (regex!1189 (h!11389 rules!3103))))) b!599939))

(assert (= (and b!599089 ((_ is Union!1523) (regTwo!3558 (regex!1189 (h!11389 rules!3103))))) b!599940))

(declare-fun tp!186884 () Bool)

(declare-fun e!363377 () Bool)

(declare-fun tp!186883 () Bool)

(declare-fun b!599941 () Bool)

(assert (=> b!599941 (= e!363377 (and (inv!7592 (left!4813 (c!111202 (dynLambda!3455 (toChars!1939 (transformation!1189 (rule!1959 token!491))) (value!38753 token!491))))) tp!186884 (inv!7592 (right!5143 (c!111202 (dynLambda!3455 (toChars!1939 (transformation!1189 (rule!1959 token!491))) (value!38753 token!491))))) tp!186883))))

(declare-fun b!599943 () Bool)

(declare-fun e!363378 () Bool)

(declare-fun tp!186885 () Bool)

(assert (=> b!599943 (= e!363378 tp!186885)))

(declare-fun b!599942 () Bool)

(assert (=> b!599942 (= e!363377 (and (inv!7599 (xs!4543 (c!111202 (dynLambda!3455 (toChars!1939 (transformation!1189 (rule!1959 token!491))) (value!38753 token!491))))) e!363378))))

(assert (=> b!598977 (= tp!186700 (and (inv!7592 (c!111202 (dynLambda!3455 (toChars!1939 (transformation!1189 (rule!1959 token!491))) (value!38753 token!491)))) e!363377))))

(assert (= (and b!598977 ((_ is Node!1906) (c!111202 (dynLambda!3455 (toChars!1939 (transformation!1189 (rule!1959 token!491))) (value!38753 token!491))))) b!599941))

(assert (= b!599942 b!599943))

(assert (= (and b!598977 ((_ is Leaf!3008) (c!111202 (dynLambda!3455 (toChars!1939 (transformation!1189 (rule!1959 token!491))) (value!38753 token!491))))) b!599942))

(declare-fun m!864047 () Bool)

(assert (=> b!599941 m!864047))

(declare-fun m!864049 () Bool)

(assert (=> b!599941 m!864049))

(declare-fun m!864051 () Bool)

(assert (=> b!599942 m!864051))

(assert (=> b!598977 m!862763))

(declare-fun e!363379 () Bool)

(assert (=> b!599090 (= tp!186716 e!363379)))

(declare-fun b!599945 () Bool)

(declare-fun tp!186888 () Bool)

(declare-fun tp!186887 () Bool)

(assert (=> b!599945 (= e!363379 (and tp!186888 tp!186887))))

(declare-fun b!599946 () Bool)

(declare-fun tp!186890 () Bool)

(assert (=> b!599946 (= e!363379 tp!186890)))

(declare-fun b!599947 () Bool)

(declare-fun tp!186886 () Bool)

(declare-fun tp!186889 () Bool)

(assert (=> b!599947 (= e!363379 (and tp!186886 tp!186889))))

(declare-fun b!599944 () Bool)

(assert (=> b!599944 (= e!363379 tp_is_empty!3401)))

(assert (= (and b!599090 ((_ is ElementMatch!1523) (reg!1852 (regex!1189 (h!11389 rules!3103))))) b!599944))

(assert (= (and b!599090 ((_ is Concat!2736) (reg!1852 (regex!1189 (h!11389 rules!3103))))) b!599945))

(assert (= (and b!599090 ((_ is Star!1523) (reg!1852 (regex!1189 (h!11389 rules!3103))))) b!599946))

(assert (= (and b!599090 ((_ is Union!1523) (reg!1852 (regex!1189 (h!11389 rules!3103))))) b!599947))

(declare-fun b_lambda!23661 () Bool)

(assert (= b_lambda!23631 (or (and b!598700 b_free!17023 (= (toChars!1939 (transformation!1189 (rule!1959 token!491))) (toChars!1939 (transformation!1189 (rule!1959 (_1!3700 (v!16430 lt!255028))))))) (and b!598713 b_free!17027 (= (toChars!1939 (transformation!1189 (h!11389 rules!3103))) (toChars!1939 (transformation!1189 (rule!1959 (_1!3700 (v!16430 lt!255028))))))) (and b!599102 b_free!17035 (= (toChars!1939 (transformation!1189 (h!11389 (t!79675 rules!3103)))) (toChars!1939 (transformation!1189 (rule!1959 (_1!3700 (v!16430 lt!255028))))))) (and b!599891 b_free!17043 (= (toChars!1939 (transformation!1189 (h!11389 (t!79675 (t!79675 rules!3103))))) (toChars!1939 (transformation!1189 (rule!1959 (_1!3700 (v!16430 lt!255028))))))) b_lambda!23661)))

(declare-fun b_lambda!23663 () Bool)

(assert (= b_lambda!23633 (or (and b!598700 b_free!17021 (= (toValue!2080 (transformation!1189 (rule!1959 token!491))) (toValue!2080 (transformation!1189 (rule!1959 (_1!3700 (v!16430 lt!255028))))))) (and b!598713 b_free!17025 (= (toValue!2080 (transformation!1189 (h!11389 rules!3103))) (toValue!2080 (transformation!1189 (rule!1959 (_1!3700 (v!16430 lt!255028))))))) (and b!599102 b_free!17033 (= (toValue!2080 (transformation!1189 (h!11389 (t!79675 rules!3103)))) (toValue!2080 (transformation!1189 (rule!1959 (_1!3700 (v!16430 lt!255028))))))) (and b!599891 b_free!17041 (= (toValue!2080 (transformation!1189 (h!11389 (t!79675 (t!79675 rules!3103))))) (toValue!2080 (transformation!1189 (rule!1959 (_1!3700 (v!16430 lt!255028))))))) b_lambda!23663)))

(check-sat (not d!210878) (not d!210828) (not d!210854) (not d!210952) (not b!599657) b_and!59233 (not b!599821) (not b!599722) (not b!599666) b_and!59225 (not b!599802) (not b!599938) (not b!599942) (not b!599850) (not b!599614) (not b!599807) (not b_lambda!23661) (not b!599791) (not b!599602) (not b!599599) (not b!599893) (not b!599910) (not b!599776) (not b!599671) (not b!599844) (not b!599652) (not b!599934) (not b!599790) (not d!211014) (not b!599916) (not b!599656) b_and!59217 (not b!599803) (not b!599780) (not b!599930) (not d!210874) (not b!599755) (not bm!40472) (not b!599757) (not b!599902) (not b!599655) (not tb!52309) (not b!599574) (not b!599683) (not d!210948) (not b!599728) (not bm!40474) (not b_lambda!23637) (not bm!40463) b_and!59227 (not b!599919) (not b!599945) (not b_lambda!23657) (not d!211056) (not b!599573) (not b!599936) (not d!210888) (not d!210924) (not d!210904) (not b_lambda!23653) (not d!210824) (not d!210920) (not b!599894) (not b!599661) (not b!599829) (not b!599943) (not b!599658) (not b!599839) (not d!210602) (not b!599618) (not b!599567) (not d!210956) (not b!599854) (not d!210992) (not b!599860) (not d!211046) (not b!599563) (not b_next!17057) (not b!599640) (not d!211020) (not b!599908) tp_is_empty!3401 (not b!599788) (not b!599621) (not b!599837) (not b!598977) (not b_lambda!23655) (not d!210850) (not b!599939) (not b!599818) (not d!210844) (not d!210816) (not bm!40476) (not b!599768) (not d!210848) (not b!599897) (not b!599827) (not b!599906) (not b!599904) (not b!599641) (not b_lambda!23635) (not d!211054) (not b!599858) (not b!599758) (not b!599559) (not b!599598) (not b!599637) (not b_next!17043) (not b!599617) (not d!210886) (not b!599915) (not b!599819) (not b!599874) (not b!599570) (not b!599673) (not b!599888) (not tb!52303) (not b!599612) (not b!599625) b_and!59213 (not b!599616) (not b!599872) (not d!210852) (not b!599921) (not b!599601) (not d!211002) (not b!599849) (not b!599674) (not b!599596) (not b!599813) (not b!599852) (not b!599639) (not b!599544) (not b!599653) (not d!211032) (not b_next!17041) (not b!599815) (not b!599814) (not d!210928) (not b!599845) (not d!211040) (not b!599056) (not b!599879) (not b_next!17049) (not b_next!17059) (not b!599941) (not b!599678) (not b!599778) (not b!599662) (not d!210996) (not b!599600) (not b!599665) (not b!599540) (not b!599624) (not b_next!17037) (not b!599887) (not b!599895) (not b!599714) (not b!599898) (not b!599648) (not b!599877) (not b!599946) (not b!599865) (not b!599781) (not b!599834) (not b!599572) (not b!599667) (not b!599609) (not b!599684) (not b!599564) (not b!599900) (not d!210894) (not b!599899) (not b!599773) (not b!599626) (not d!210980) (not bm!40459) b_and!59231 (not tb!52315) (not b!599620) (not b!599682) (not b!599931) (not d!210934) (not b!599568) (not b!599571) (not b_next!17039) (not d!210978) (not b!599913) (not b!599935) (not b_next!17051) (not d!210976) (not b!599650) (not d!210944) (not b!599862) (not b!599848) (not b!599593) (not b!599770) (not b!599911) (not d!210868) (not b!599558) (not b!599720) (not b!599912) (not b!599545) (not d!211034) (not bm!40475) (not b!599654) (not b!599798) (not b!599594) (not b!599876) (not b!599659) (not b!599785) (not b!599947) (not b!599851) (not d!211016) b_and!59215 (not b!599597) (not d!210822) (not d!210880) (not b_lambda!23663) (not b!599786) (not b!599608) (not d!210994) (not b_lambda!23659) (not b!599676) (not d!210892) (not d!211022) (not d!211048) b_and!59229 (not b!599801) (not b!599940) (not d!210826) (not d!210942) (not b!599847) (not d!211004) (not b!599561) (not b!599889) (not b!599632) (not bm!40460) (not d!210990) (not b!599880) (not b!599782) (not d!210972) (not d!210862) (not b!599663) (not b!599932) (not b!599864) (not b!599831) (not b!599866) (not b!599917) (not b!599547) (not b!599804) (not b!599680) (not b!599610) (not b!599907) (not b!599797) (not d!210966) (not b!599884) (not b!599569) (not b_lambda!23639) (not b!599669) (not d!211052) (not b!599841) (not b!599631) (not b!599725) (not b!599833) (not b!599903) (not b!599793) (not b!599890) (not bm!40471) (not b!599883) (not b!599856) (not d!210890) (not d!210946) (not b!599886) (not b!599871) (not b!599795) (not b!599838) (not b!599920) (not b!599784) (not b!599774) (not tb!52321) (not b!599726) (not b!599721) (not b!599842) (not b!599542))
(check-sat b_and!59233 b_and!59225 b_and!59217 b_and!59227 (not b_next!17057) (not b_next!17043) b_and!59213 (not b_next!17041) (not b_next!17037) b_and!59231 b_and!59215 b_and!59229 (not b_next!17049) (not b_next!17059) (not b_next!17039) (not b_next!17051))
