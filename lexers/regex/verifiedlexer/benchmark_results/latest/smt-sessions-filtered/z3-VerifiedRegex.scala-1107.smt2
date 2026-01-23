; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!57280 () Bool)

(assert start!57280)

(declare-fun b!602661 () Bool)

(declare-fun b_free!17157 () Bool)

(declare-fun b_next!17173 () Bool)

(assert (=> b!602661 (= b_free!17157 (not b_next!17173))))

(declare-fun tp!187572 () Bool)

(declare-fun b_and!59523 () Bool)

(assert (=> b!602661 (= tp!187572 b_and!59523)))

(declare-fun b_free!17159 () Bool)

(declare-fun b_next!17175 () Bool)

(assert (=> b!602661 (= b_free!17159 (not b_next!17175))))

(declare-fun tp!187565 () Bool)

(declare-fun b_and!59525 () Bool)

(assert (=> b!602661 (= tp!187565 b_and!59525)))

(declare-fun b!602652 () Bool)

(declare-fun b_free!17161 () Bool)

(declare-fun b_next!17177 () Bool)

(assert (=> b!602652 (= b_free!17161 (not b_next!17177))))

(declare-fun tp!187574 () Bool)

(declare-fun b_and!59527 () Bool)

(assert (=> b!602652 (= tp!187574 b_and!59527)))

(declare-fun b_free!17163 () Bool)

(declare-fun b_next!17179 () Bool)

(assert (=> b!602652 (= b_free!17163 (not b_next!17179))))

(declare-fun tp!187568 () Bool)

(declare-fun b_and!59529 () Bool)

(assert (=> b!602652 (= tp!187568 b_and!59529)))

(declare-fun b!602650 () Bool)

(declare-fun e!365172 () Bool)

(declare-fun e!365179 () Bool)

(assert (=> b!602650 (= e!365172 e!365179)))

(declare-fun res!260819 () Bool)

(assert (=> b!602650 (=> (not res!260819) (not e!365179))))

(declare-datatypes ((C!3992 0))(
  ( (C!3993 (val!2222 Int)) )
))
(declare-datatypes ((Regex!1535 0))(
  ( (ElementMatch!1535 (c!111795 C!3992)) (Concat!2760 (regOne!3582 Regex!1535) (regTwo!3582 Regex!1535)) (EmptyExpr!1535) (Star!1535 (reg!1864 Regex!1535)) (EmptyLang!1535) (Union!1535 (regOne!3583 Regex!1535) (regTwo!3583 Regex!1535)) )
))
(declare-datatypes ((List!6038 0))(
  ( (Nil!6028) (Cons!6028 (h!11429 (_ BitVec 16)) (t!80039 List!6038)) )
))
(declare-datatypes ((List!6039 0))(
  ( (Nil!6029) (Cons!6029 (h!11430 C!3992) (t!80040 List!6039)) )
))
(declare-datatypes ((IArray!3837 0))(
  ( (IArray!3838 (innerList!1976 List!6039)) )
))
(declare-datatypes ((Conc!1918 0))(
  ( (Node!1918 (left!4839 Conc!1918) (right!5169 Conc!1918) (csize!4066 Int) (cheight!2129 Int)) (Leaf!3026 (xs!4555 IArray!3837) (csize!4067 Int)) (Empty!1918) )
))
(declare-datatypes ((BalanceConc!3844 0))(
  ( (BalanceConc!3845 (c!111796 Conc!1918)) )
))
(declare-datatypes ((TokenValue!1225 0))(
  ( (FloatLiteralValue!2450 (text!9020 List!6038)) (TokenValueExt!1224 (__x!4348 Int)) (Broken!6125 (value!39069 List!6038)) (Object!1234) (End!1225) (Def!1225) (Underscore!1225) (Match!1225) (Else!1225) (Error!1225) (Case!1225) (If!1225) (Extends!1225) (Abstract!1225) (Class!1225) (Val!1225) (DelimiterValue!2450 (del!1285 List!6038)) (KeywordValue!1231 (value!39070 List!6038)) (CommentValue!2450 (value!39071 List!6038)) (WhitespaceValue!2450 (value!39072 List!6038)) (IndentationValue!1225 (value!39073 List!6038)) (String!7868) (Int32!1225) (Broken!6126 (value!39074 List!6038)) (Boolean!1226) (Unit!10977) (OperatorValue!1228 (op!1285 List!6038)) (IdentifierValue!2450 (value!39075 List!6038)) (IdentifierValue!2451 (value!39076 List!6038)) (WhitespaceValue!2451 (value!39077 List!6038)) (True!2450) (False!2450) (Broken!6127 (value!39078 List!6038)) (Broken!6128 (value!39079 List!6038)) (True!2451) (RightBrace!1225) (RightBracket!1225) (Colon!1225) (Null!1225) (Comma!1225) (LeftBracket!1225) (False!2451) (LeftBrace!1225) (ImaginaryLiteralValue!1225 (text!9021 List!6038)) (StringLiteralValue!3675 (value!39080 List!6038)) (EOFValue!1225 (value!39081 List!6038)) (IdentValue!1225 (value!39082 List!6038)) (DelimiterValue!2451 (value!39083 List!6038)) (DedentValue!1225 (value!39084 List!6038)) (NewLineValue!1225 (value!39085 List!6038)) (IntegerValue!3675 (value!39086 (_ BitVec 32)) (text!9022 List!6038)) (IntegerValue!3676 (value!39087 Int) (text!9023 List!6038)) (Times!1225) (Or!1225) (Equal!1225) (Minus!1225) (Broken!6129 (value!39088 List!6038)) (And!1225) (Div!1225) (LessEqual!1225) (Mod!1225) (Concat!2761) (Not!1225) (Plus!1225) (SpaceValue!1225 (value!39089 List!6038)) (IntegerValue!3677 (value!39090 Int) (text!9024 List!6038)) (StringLiteralValue!3676 (text!9025 List!6038)) (FloatLiteralValue!2451 (text!9026 List!6038)) (BytesLiteralValue!1225 (value!39091 List!6038)) (CommentValue!2451 (value!39092 List!6038)) (StringLiteralValue!3677 (value!39093 List!6038)) (ErrorTokenValue!1225 (msg!1286 List!6038)) )
))
(declare-datatypes ((String!7869 0))(
  ( (String!7870 (value!39094 String)) )
))
(declare-datatypes ((TokenValueInjection!2218 0))(
  ( (TokenValueInjection!2219 (toValue!2100 Int) (toChars!1959 Int)) )
))
(declare-datatypes ((Rule!2202 0))(
  ( (Rule!2203 (regex!1201 Regex!1535) (tag!1463 String!7869) (isSeparator!1201 Bool) (transformation!1201 TokenValueInjection!2218)) )
))
(declare-datatypes ((Token!2138 0))(
  ( (Token!2139 (value!39095 TokenValue!1225) (rule!1977 Rule!2202) (size!4742 Int) (originalCharacters!1240 List!6039)) )
))
(declare-datatypes ((tuple2!6908 0))(
  ( (tuple2!6909 (_1!3718 Token!2138) (_2!3718 List!6039)) )
))
(declare-fun lt!256885 () tuple2!6908)

(declare-fun token!491 () Token!2138)

(declare-fun suffix!1342 () List!6039)

(assert (=> b!602650 (= res!260819 (and (= (_1!3718 lt!256885) token!491) (= (_2!3718 lt!256885) suffix!1342)))))

(declare-datatypes ((Option!1552 0))(
  ( (None!1551) (Some!1551 (v!16448 tuple2!6908)) )
))
(declare-fun lt!256869 () Option!1552)

(declare-fun get!2316 (Option!1552) tuple2!6908)

(assert (=> b!602650 (= lt!256885 (get!2316 lt!256869))))

(declare-fun b!602651 () Bool)

(declare-fun res!260832 () Bool)

(declare-fun e!365183 () Bool)

(assert (=> b!602651 (=> (not res!260832) (not e!365183))))

(declare-fun size!4743 (List!6039) Int)

(assert (=> b!602651 (= res!260832 (= (size!4742 token!491) (size!4743 (originalCharacters!1240 token!491))))))

(declare-fun e!365178 () Bool)

(assert (=> b!602652 (= e!365178 (and tp!187574 tp!187568))))

(declare-fun b!602653 () Bool)

(declare-fun res!260821 () Bool)

(declare-fun e!365174 () Bool)

(assert (=> b!602653 (=> (not res!260821) (not e!365174))))

(declare-datatypes ((LexerInterface!1087 0))(
  ( (LexerInterfaceExt!1084 (__x!4349 Int)) (Lexer!1085) )
))
(declare-fun thiss!22590 () LexerInterface!1087)

(declare-datatypes ((List!6040 0))(
  ( (Nil!6030) (Cons!6030 (h!11431 Rule!2202) (t!80041 List!6040)) )
))
(declare-fun rules!3103 () List!6040)

(declare-fun rulesInvariant!1050 (LexerInterface!1087 List!6040) Bool)

(assert (=> b!602653 (= res!260821 (rulesInvariant!1050 thiss!22590 rules!3103))))

(declare-fun e!365189 () Bool)

(declare-fun lt!256892 () TokenValue!1225)

(declare-fun lt!256893 () Int)

(declare-fun lt!256881 () List!6039)

(declare-fun lt!256884 () Option!1552)

(declare-fun b!602654 () Bool)

(declare-fun lt!256873 () List!6039)

(assert (=> b!602654 (= e!365189 (and (= (size!4742 (_1!3718 (v!16448 lt!256884))) lt!256893) (= (originalCharacters!1240 (_1!3718 (v!16448 lt!256884))) lt!256873) (= (v!16448 lt!256884) (tuple2!6909 (Token!2139 lt!256892 (rule!1977 (_1!3718 (v!16448 lt!256884))) lt!256893 lt!256873) lt!256881))))))

(declare-fun b!602655 () Bool)

(declare-fun lt!256871 () TokenValue!1225)

(declare-fun lt!256883 () Int)

(declare-fun lt!256886 () List!6039)

(declare-fun lt!256878 () List!6039)

(assert (=> b!602655 (= e!365183 (and (= (size!4742 token!491) lt!256883) (= (originalCharacters!1240 token!491) lt!256886) (= (tuple2!6909 token!491 suffix!1342) (tuple2!6909 (Token!2139 lt!256871 (rule!1977 token!491) lt!256883 lt!256886) lt!256878))))))

(declare-fun b!602656 () Bool)

(declare-fun e!365184 () Bool)

(declare-fun tp_is_empty!3425 () Bool)

(declare-fun tp!187573 () Bool)

(assert (=> b!602656 (= e!365184 (and tp_is_empty!3425 tp!187573))))

(declare-fun b!602658 () Bool)

(declare-fun res!260827 () Bool)

(declare-fun e!365187 () Bool)

(assert (=> b!602658 (=> res!260827 e!365187)))

(declare-fun lt!256872 () List!6039)

(declare-fun lt!256876 () List!6039)

(assert (=> b!602658 (= res!260827 (not (= lt!256872 lt!256876)))))

(declare-fun b!602659 () Bool)

(declare-fun res!260826 () Bool)

(assert (=> b!602659 (=> (not res!260826) (not e!365189))))

(assert (=> b!602659 (= res!260826 (= (size!4742 (_1!3718 (v!16448 lt!256884))) (size!4743 (originalCharacters!1240 (_1!3718 (v!16448 lt!256884))))))))

(declare-fun b!602660 () Bool)

(declare-datatypes ((Unit!10978 0))(
  ( (Unit!10979) )
))
(declare-fun e!365185 () Unit!10978)

(declare-fun Unit!10980 () Unit!10978)

(assert (=> b!602660 (= e!365185 Unit!10980)))

(declare-fun e!365191 () Bool)

(assert (=> b!602661 (= e!365191 (and tp!187572 tp!187565))))

(declare-fun e!365182 () Bool)

(declare-fun tp!187569 () Bool)

(declare-fun e!365171 () Bool)

(declare-fun b!602662 () Bool)

(declare-fun inv!21 (TokenValue!1225) Bool)

(assert (=> b!602662 (= e!365171 (and (inv!21 (value!39095 token!491)) e!365182 tp!187569))))

(declare-fun b!602663 () Bool)

(declare-fun tp!187566 () Bool)

(declare-fun e!365188 () Bool)

(declare-fun inv!7651 (String!7869) Bool)

(declare-fun inv!7654 (TokenValueInjection!2218) Bool)

(assert (=> b!602663 (= e!365188 (and tp!187566 (inv!7651 (tag!1463 (h!11431 rules!3103))) (inv!7654 (transformation!1201 (h!11431 rules!3103))) e!365178))))

(declare-fun b!602664 () Bool)

(declare-fun res!260825 () Bool)

(assert (=> b!602664 (=> (not res!260825) (not e!365174))))

(declare-fun isEmpty!4351 (List!6040) Bool)

(assert (=> b!602664 (= res!260825 (not (isEmpty!4351 rules!3103)))))

(declare-fun b!602665 () Bool)

(declare-fun e!365176 () Bool)

(declare-fun tp!187571 () Bool)

(assert (=> b!602665 (= e!365176 (and e!365188 tp!187571))))

(declare-fun b!602666 () Bool)

(declare-fun e!365177 () Bool)

(assert (=> b!602666 (= e!365177 e!365172)))

(declare-fun res!260824 () Bool)

(assert (=> b!602666 (=> (not res!260824) (not e!365172))))

(declare-fun isDefined!1363 (Option!1552) Bool)

(assert (=> b!602666 (= res!260824 (isDefined!1363 lt!256869))))

(declare-fun maxPrefix!785 (LexerInterface!1087 List!6040 List!6039) Option!1552)

(assert (=> b!602666 (= lt!256869 (maxPrefix!785 thiss!22590 rules!3103 lt!256872))))

(declare-fun input!2705 () List!6039)

(declare-fun ++!1689 (List!6039 List!6039) List!6039)

(assert (=> b!602666 (= lt!256872 (++!1689 input!2705 suffix!1342))))

(declare-fun b!602667 () Bool)

(declare-fun e!365173 () Bool)

(declare-fun e!365175 () Bool)

(assert (=> b!602667 (= e!365173 e!365175)))

(declare-fun res!260828 () Bool)

(assert (=> b!602667 (=> (not res!260828) (not e!365175))))

(assert (=> b!602667 (= res!260828 (= lt!256876 lt!256872))))

(assert (=> b!602667 (= lt!256876 (++!1689 lt!256886 suffix!1342))))

(declare-fun b!602668 () Bool)

(declare-fun e!365186 () Bool)

(assert (=> b!602668 (= e!365175 (not e!365186))))

(declare-fun res!260818 () Bool)

(assert (=> b!602668 (=> res!260818 e!365186)))

(declare-fun isPrefix!829 (List!6039 List!6039) Bool)

(assert (=> b!602668 (= res!260818 (not (isPrefix!829 input!2705 lt!256876)))))

(assert (=> b!602668 (isPrefix!829 lt!256886 lt!256876)))

(declare-fun lt!256874 () Unit!10978)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!674 (List!6039 List!6039) Unit!10978)

(assert (=> b!602668 (= lt!256874 (lemmaConcatTwoListThenFirstIsPrefix!674 lt!256886 suffix!1342))))

(assert (=> b!602668 (isPrefix!829 input!2705 lt!256872)))

(declare-fun lt!256870 () Unit!10978)

(assert (=> b!602668 (= lt!256870 (lemmaConcatTwoListThenFirstIsPrefix!674 input!2705 suffix!1342))))

(assert (=> b!602668 e!365189))

(declare-fun res!260822 () Bool)

(assert (=> b!602668 (=> (not res!260822) (not e!365189))))

(assert (=> b!602668 (= res!260822 (= (value!39095 (_1!3718 (v!16448 lt!256884))) lt!256892))))

(declare-fun apply!1454 (TokenValueInjection!2218 BalanceConc!3844) TokenValue!1225)

(declare-fun seqFromList!1377 (List!6039) BalanceConc!3844)

(assert (=> b!602668 (= lt!256892 (apply!1454 (transformation!1201 (rule!1977 (_1!3718 (v!16448 lt!256884)))) (seqFromList!1377 lt!256873)))))

(declare-fun lt!256891 () Unit!10978)

(declare-fun lemmaInv!309 (TokenValueInjection!2218) Unit!10978)

(assert (=> b!602668 (= lt!256891 (lemmaInv!309 (transformation!1201 (rule!1977 token!491))))))

(declare-fun lt!256896 () Unit!10978)

(assert (=> b!602668 (= lt!256896 (lemmaInv!309 (transformation!1201 (rule!1977 (_1!3718 (v!16448 lt!256884))))))))

(declare-fun ruleValid!399 (LexerInterface!1087 Rule!2202) Bool)

(assert (=> b!602668 (ruleValid!399 thiss!22590 (rule!1977 token!491))))

(declare-fun lt!256875 () Unit!10978)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!246 (LexerInterface!1087 Rule!2202 List!6040) Unit!10978)

(assert (=> b!602668 (= lt!256875 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!246 thiss!22590 (rule!1977 token!491) rules!3103))))

(assert (=> b!602668 (ruleValid!399 thiss!22590 (rule!1977 (_1!3718 (v!16448 lt!256884))))))

(declare-fun lt!256882 () Unit!10978)

(assert (=> b!602668 (= lt!256882 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!246 thiss!22590 (rule!1977 (_1!3718 (v!16448 lt!256884))) rules!3103))))

(assert (=> b!602668 (isPrefix!829 input!2705 input!2705)))

(declare-fun lt!256877 () Unit!10978)

(declare-fun lemmaIsPrefixRefl!565 (List!6039 List!6039) Unit!10978)

(assert (=> b!602668 (= lt!256877 (lemmaIsPrefixRefl!565 input!2705 input!2705))))

(assert (=> b!602668 (= (_2!3718 (v!16448 lt!256884)) lt!256881)))

(declare-fun lt!256894 () Unit!10978)

(declare-fun lemmaSamePrefixThenSameSuffix!542 (List!6039 List!6039 List!6039 List!6039 List!6039) Unit!10978)

(assert (=> b!602668 (= lt!256894 (lemmaSamePrefixThenSameSuffix!542 lt!256873 (_2!3718 (v!16448 lt!256884)) lt!256873 lt!256881 input!2705))))

(declare-fun getSuffix!346 (List!6039 List!6039) List!6039)

(assert (=> b!602668 (= lt!256881 (getSuffix!346 input!2705 lt!256873))))

(assert (=> b!602668 (isPrefix!829 lt!256873 (++!1689 lt!256873 (_2!3718 (v!16448 lt!256884))))))

(declare-fun lt!256889 () Unit!10978)

(assert (=> b!602668 (= lt!256889 (lemmaConcatTwoListThenFirstIsPrefix!674 lt!256873 (_2!3718 (v!16448 lt!256884))))))

(declare-fun lt!256895 () Unit!10978)

(declare-fun lemmaCharactersSize!260 (Token!2138) Unit!10978)

(assert (=> b!602668 (= lt!256895 (lemmaCharactersSize!260 token!491))))

(declare-fun lt!256888 () Unit!10978)

(assert (=> b!602668 (= lt!256888 (lemmaCharactersSize!260 (_1!3718 (v!16448 lt!256884))))))

(declare-fun lt!256887 () Unit!10978)

(assert (=> b!602668 (= lt!256887 e!365185)))

(declare-fun c!111794 () Bool)

(assert (=> b!602668 (= c!111794 (> lt!256893 lt!256883))))

(assert (=> b!602668 (= lt!256883 (size!4743 lt!256886))))

(assert (=> b!602668 (= lt!256893 (size!4743 lt!256873))))

(declare-fun list!2530 (BalanceConc!3844) List!6039)

(declare-fun charsOf!830 (Token!2138) BalanceConc!3844)

(assert (=> b!602668 (= lt!256873 (list!2530 (charsOf!830 (_1!3718 (v!16448 lt!256884)))))))

(assert (=> b!602668 (= lt!256884 (Some!1551 (v!16448 lt!256884)))))

(declare-fun lt!256880 () Unit!10978)

(declare-fun lemmaConcatSameAndSameSizesThenSameLists!274 (List!6039 List!6039 List!6039 List!6039) Unit!10978)

(assert (=> b!602668 (= lt!256880 (lemmaConcatSameAndSameSizesThenSameLists!274 lt!256886 suffix!1342 input!2705 suffix!1342))))

(declare-fun res!260830 () Bool)

(assert (=> start!57280 (=> (not res!260830) (not e!365174))))

(get-info :version)

(assert (=> start!57280 (= res!260830 ((_ is Lexer!1085) thiss!22590))))

(assert (=> start!57280 e!365174))

(assert (=> start!57280 e!365184))

(assert (=> start!57280 e!365176))

(declare-fun inv!7655 (Token!2138) Bool)

(assert (=> start!57280 (and (inv!7655 token!491) e!365171)))

(assert (=> start!57280 true))

(declare-fun e!365170 () Bool)

(assert (=> start!57280 e!365170))

(declare-fun b!602657 () Bool)

(declare-fun Unit!10981 () Unit!10978)

(assert (=> b!602657 (= e!365185 Unit!10981)))

(assert (=> b!602657 false))

(declare-fun b!602669 () Bool)

(assert (=> b!602669 (= e!365174 e!365177)))

(declare-fun res!260823 () Bool)

(assert (=> b!602669 (=> (not res!260823) (not e!365177))))

(assert (=> b!602669 (= res!260823 (= lt!256886 input!2705))))

(assert (=> b!602669 (= lt!256886 (list!2530 (charsOf!830 token!491)))))

(declare-fun b!602670 () Bool)

(assert (=> b!602670 (= e!365179 e!365173)))

(declare-fun res!260829 () Bool)

(assert (=> b!602670 (=> (not res!260829) (not e!365173))))

(assert (=> b!602670 (= res!260829 ((_ is Some!1551) lt!256884))))

(assert (=> b!602670 (= lt!256884 (maxPrefix!785 thiss!22590 rules!3103 input!2705))))

(declare-fun b!602671 () Bool)

(declare-fun tp!187570 () Bool)

(assert (=> b!602671 (= e!365170 (and tp_is_empty!3425 tp!187570))))

(declare-fun b!602672 () Bool)

(declare-fun tp!187567 () Bool)

(assert (=> b!602672 (= e!365182 (and tp!187567 (inv!7651 (tag!1463 (rule!1977 token!491))) (inv!7654 (transformation!1201 (rule!1977 token!491))) e!365191))))

(declare-fun b!602673 () Bool)

(declare-fun res!260831 () Bool)

(assert (=> b!602673 (=> (not res!260831) (not e!365174))))

(declare-fun isEmpty!4352 (List!6039) Bool)

(assert (=> b!602673 (= res!260831 (not (isEmpty!4352 input!2705)))))

(declare-fun b!602674 () Bool)

(assert (=> b!602674 (= e!365186 e!365187)))

(declare-fun res!260817 () Bool)

(assert (=> b!602674 (=> res!260817 e!365187)))

(declare-fun contains!1413 (List!6040 Rule!2202) Bool)

(assert (=> b!602674 (= res!260817 (not (contains!1413 rules!3103 (rule!1977 token!491))))))

(declare-fun maxPrefixOneRule!448 (LexerInterface!1087 Rule!2202 List!6039) Option!1552)

(assert (=> b!602674 (= (maxPrefixOneRule!448 thiss!22590 (rule!1977 (_1!3718 (v!16448 lt!256884))) input!2705) (Some!1551 (tuple2!6909 (Token!2139 lt!256892 (rule!1977 (_1!3718 (v!16448 lt!256884))) lt!256893 lt!256873) (_2!3718 (v!16448 lt!256884)))))))

(declare-fun lt!256879 () Unit!10978)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!154 (LexerInterface!1087 List!6040 List!6039 List!6039 List!6039 Rule!2202) Unit!10978)

(assert (=> b!602674 (= lt!256879 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!154 thiss!22590 rules!3103 lt!256873 input!2705 (_2!3718 (v!16448 lt!256884)) (rule!1977 (_1!3718 (v!16448 lt!256884)))))))

(assert (=> b!602674 e!365183))

(declare-fun res!260820 () Bool)

(assert (=> b!602674 (=> (not res!260820) (not e!365183))))

(assert (=> b!602674 (= res!260820 (= (value!39095 token!491) lt!256871))))

(assert (=> b!602674 (= lt!256871 (apply!1454 (transformation!1201 (rule!1977 token!491)) (seqFromList!1377 lt!256886)))))

(assert (=> b!602674 (= suffix!1342 lt!256878)))

(declare-fun lt!256890 () Unit!10978)

(assert (=> b!602674 (= lt!256890 (lemmaSamePrefixThenSameSuffix!542 lt!256886 suffix!1342 lt!256886 lt!256878 lt!256872))))

(assert (=> b!602674 (= lt!256878 (getSuffix!346 lt!256872 lt!256886))))

(declare-fun b!602675 () Bool)

(assert (=> b!602675 (= e!365187 (not (isEmpty!4352 lt!256886)))))

(assert (= (and start!57280 res!260830) b!602664))

(assert (= (and b!602664 res!260825) b!602653))

(assert (= (and b!602653 res!260821) b!602673))

(assert (= (and b!602673 res!260831) b!602669))

(assert (= (and b!602669 res!260823) b!602666))

(assert (= (and b!602666 res!260824) b!602650))

(assert (= (and b!602650 res!260819) b!602670))

(assert (= (and b!602670 res!260829) b!602667))

(assert (= (and b!602667 res!260828) b!602668))

(assert (= (and b!602668 c!111794) b!602657))

(assert (= (and b!602668 (not c!111794)) b!602660))

(assert (= (and b!602668 res!260822) b!602659))

(assert (= (and b!602659 res!260826) b!602654))

(assert (= (and b!602668 (not res!260818)) b!602674))

(assert (= (and b!602674 res!260820) b!602651))

(assert (= (and b!602651 res!260832) b!602655))

(assert (= (and b!602674 (not res!260817)) b!602658))

(assert (= (and b!602658 (not res!260827)) b!602675))

(assert (= (and start!57280 ((_ is Cons!6029) suffix!1342)) b!602656))

(assert (= b!602663 b!602652))

(assert (= b!602665 b!602663))

(assert (= (and start!57280 ((_ is Cons!6030) rules!3103)) b!602665))

(assert (= b!602672 b!602661))

(assert (= b!602662 b!602672))

(assert (= start!57280 b!602662))

(assert (= (and start!57280 ((_ is Cons!6029) input!2705)) b!602671))

(declare-fun m!867549 () Bool)

(assert (=> b!602673 m!867549))

(declare-fun m!867551 () Bool)

(assert (=> b!602674 m!867551))

(declare-fun m!867553 () Bool)

(assert (=> b!602674 m!867553))

(declare-fun m!867555 () Bool)

(assert (=> b!602674 m!867555))

(declare-fun m!867557 () Bool)

(assert (=> b!602674 m!867557))

(declare-fun m!867559 () Bool)

(assert (=> b!602674 m!867559))

(assert (=> b!602674 m!867557))

(declare-fun m!867561 () Bool)

(assert (=> b!602674 m!867561))

(declare-fun m!867563 () Bool)

(assert (=> b!602674 m!867563))

(declare-fun m!867565 () Bool)

(assert (=> b!602650 m!867565))

(declare-fun m!867567 () Bool)

(assert (=> b!602663 m!867567))

(declare-fun m!867569 () Bool)

(assert (=> b!602663 m!867569))

(declare-fun m!867571 () Bool)

(assert (=> b!602666 m!867571))

(declare-fun m!867573 () Bool)

(assert (=> b!602666 m!867573))

(declare-fun m!867575 () Bool)

(assert (=> b!602666 m!867575))

(declare-fun m!867577 () Bool)

(assert (=> b!602664 m!867577))

(declare-fun m!867579 () Bool)

(assert (=> b!602667 m!867579))

(declare-fun m!867581 () Bool)

(assert (=> b!602659 m!867581))

(declare-fun m!867583 () Bool)

(assert (=> b!602651 m!867583))

(declare-fun m!867585 () Bool)

(assert (=> b!602662 m!867585))

(declare-fun m!867587 () Bool)

(assert (=> b!602670 m!867587))

(declare-fun m!867589 () Bool)

(assert (=> b!602675 m!867589))

(declare-fun m!867591 () Bool)

(assert (=> b!602672 m!867591))

(declare-fun m!867593 () Bool)

(assert (=> b!602672 m!867593))

(declare-fun m!867595 () Bool)

(assert (=> start!57280 m!867595))

(declare-fun m!867597 () Bool)

(assert (=> b!602668 m!867597))

(declare-fun m!867599 () Bool)

(assert (=> b!602668 m!867599))

(declare-fun m!867601 () Bool)

(assert (=> b!602668 m!867601))

(declare-fun m!867603 () Bool)

(assert (=> b!602668 m!867603))

(declare-fun m!867605 () Bool)

(assert (=> b!602668 m!867605))

(declare-fun m!867607 () Bool)

(assert (=> b!602668 m!867607))

(declare-fun m!867609 () Bool)

(assert (=> b!602668 m!867609))

(declare-fun m!867611 () Bool)

(assert (=> b!602668 m!867611))

(declare-fun m!867613 () Bool)

(assert (=> b!602668 m!867613))

(declare-fun m!867615 () Bool)

(assert (=> b!602668 m!867615))

(declare-fun m!867617 () Bool)

(assert (=> b!602668 m!867617))

(declare-fun m!867619 () Bool)

(assert (=> b!602668 m!867619))

(declare-fun m!867621 () Bool)

(assert (=> b!602668 m!867621))

(declare-fun m!867623 () Bool)

(assert (=> b!602668 m!867623))

(declare-fun m!867625 () Bool)

(assert (=> b!602668 m!867625))

(declare-fun m!867627 () Bool)

(assert (=> b!602668 m!867627))

(declare-fun m!867629 () Bool)

(assert (=> b!602668 m!867629))

(assert (=> b!602668 m!867615))

(declare-fun m!867631 () Bool)

(assert (=> b!602668 m!867631))

(assert (=> b!602668 m!867623))

(declare-fun m!867633 () Bool)

(assert (=> b!602668 m!867633))

(declare-fun m!867635 () Bool)

(assert (=> b!602668 m!867635))

(declare-fun m!867637 () Bool)

(assert (=> b!602668 m!867637))

(declare-fun m!867639 () Bool)

(assert (=> b!602668 m!867639))

(assert (=> b!602668 m!867637))

(declare-fun m!867641 () Bool)

(assert (=> b!602668 m!867641))

(declare-fun m!867643 () Bool)

(assert (=> b!602668 m!867643))

(declare-fun m!867645 () Bool)

(assert (=> b!602668 m!867645))

(declare-fun m!867647 () Bool)

(assert (=> b!602668 m!867647))

(declare-fun m!867649 () Bool)

(assert (=> b!602668 m!867649))

(declare-fun m!867651 () Bool)

(assert (=> b!602669 m!867651))

(assert (=> b!602669 m!867651))

(declare-fun m!867653 () Bool)

(assert (=> b!602669 m!867653))

(declare-fun m!867655 () Bool)

(assert (=> b!602653 m!867655))

(check-sat (not b!602674) b_and!59523 (not b!602672) b_and!59527 (not b!602668) (not b!602665) (not b!602667) (not b!602662) (not b!602651) (not b_next!17177) tp_is_empty!3425 (not b!602656) (not b!602659) (not b!602673) (not b!602671) b_and!59525 (not b_next!17175) (not b!602669) (not b!602663) (not b!602675) (not b!602650) (not b!602653) (not b!602666) (not b!602664) (not b_next!17179) (not b_next!17173) b_and!59529 (not b!602670) (not start!57280))
(check-sat b_and!59523 b_and!59527 (not b_next!17177) (not b_next!17179) b_and!59525 (not b_next!17175) (not b_next!17173) b_and!59529)
