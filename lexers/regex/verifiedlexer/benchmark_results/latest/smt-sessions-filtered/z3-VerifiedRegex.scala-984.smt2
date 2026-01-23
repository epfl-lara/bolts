; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!49404 () Bool)

(assert start!49404)

(declare-fun b!535883 () Bool)

(declare-fun b_free!14657 () Bool)

(declare-fun b_next!14673 () Bool)

(assert (=> b!535883 (= b_free!14657 (not b_next!14673))))

(declare-fun tp!171031 () Bool)

(declare-fun b_and!52411 () Bool)

(assert (=> b!535883 (= tp!171031 b_and!52411)))

(declare-fun b_free!14659 () Bool)

(declare-fun b_next!14675 () Bool)

(assert (=> b!535883 (= b_free!14659 (not b_next!14675))))

(declare-fun tp!171038 () Bool)

(declare-fun b_and!52413 () Bool)

(assert (=> b!535883 (= tp!171038 b_and!52413)))

(declare-fun b!535888 () Bool)

(declare-fun b_free!14661 () Bool)

(declare-fun b_next!14677 () Bool)

(assert (=> b!535888 (= b_free!14661 (not b_next!14677))))

(declare-fun tp!171037 () Bool)

(declare-fun b_and!52415 () Bool)

(assert (=> b!535888 (= tp!171037 b_and!52415)))

(declare-fun b_free!14663 () Bool)

(declare-fun b_next!14679 () Bool)

(assert (=> b!535888 (= b_free!14663 (not b_next!14679))))

(declare-fun tp!171034 () Bool)

(declare-fun b_and!52417 () Bool)

(assert (=> b!535888 (= tp!171034 b_and!52417)))

(declare-datatypes ((C!3500 0))(
  ( (C!3501 (val!1976 Int)) )
))
(declare-datatypes ((List!5199 0))(
  ( (Nil!5189) (Cons!5189 (h!10590 C!3500) (t!74104 List!5199)) )
))
(declare-fun suffix!1342 () List!5199)

(declare-fun e!323163 () Bool)

(declare-datatypes ((Regex!1289 0))(
  ( (ElementMatch!1289 (c!101954 C!3500)) (Concat!2268 (regOne!3090 Regex!1289) (regTwo!3090 Regex!1289)) (EmptyExpr!1289) (Star!1289 (reg!1618 Regex!1289)) (EmptyLang!1289) (Union!1289 (regOne!3091 Regex!1289) (regTwo!3091 Regex!1289)) )
))
(declare-datatypes ((List!5200 0))(
  ( (Nil!5190) (Cons!5190 (h!10591 (_ BitVec 16)) (t!74105 List!5200)) )
))
(declare-datatypes ((TokenValue!979 0))(
  ( (FloatLiteralValue!1958 (text!7298 List!5200)) (TokenValueExt!978 (__x!3856 Int)) (Broken!4895 (value!32058 List!5200)) (Object!988) (End!979) (Def!979) (Underscore!979) (Match!979) (Else!979) (Error!979) (Case!979) (If!979) (Extends!979) (Abstract!979) (Class!979) (Val!979) (DelimiterValue!1958 (del!1039 List!5200)) (KeywordValue!985 (value!32059 List!5200)) (CommentValue!1958 (value!32060 List!5200)) (WhitespaceValue!1958 (value!32061 List!5200)) (IndentationValue!979 (value!32062 List!5200)) (String!6638) (Int32!979) (Broken!4896 (value!32063 List!5200)) (Boolean!980) (Unit!9058) (OperatorValue!982 (op!1039 List!5200)) (IdentifierValue!1958 (value!32064 List!5200)) (IdentifierValue!1959 (value!32065 List!5200)) (WhitespaceValue!1959 (value!32066 List!5200)) (True!1958) (False!1958) (Broken!4897 (value!32067 List!5200)) (Broken!4898 (value!32068 List!5200)) (True!1959) (RightBrace!979) (RightBracket!979) (Colon!979) (Null!979) (Comma!979) (LeftBracket!979) (False!1959) (LeftBrace!979) (ImaginaryLiteralValue!979 (text!7299 List!5200)) (StringLiteralValue!2937 (value!32069 List!5200)) (EOFValue!979 (value!32070 List!5200)) (IdentValue!979 (value!32071 List!5200)) (DelimiterValue!1959 (value!32072 List!5200)) (DedentValue!979 (value!32073 List!5200)) (NewLineValue!979 (value!32074 List!5200)) (IntegerValue!2937 (value!32075 (_ BitVec 32)) (text!7300 List!5200)) (IntegerValue!2938 (value!32076 Int) (text!7301 List!5200)) (Times!979) (Or!979) (Equal!979) (Minus!979) (Broken!4899 (value!32077 List!5200)) (And!979) (Div!979) (LessEqual!979) (Mod!979) (Concat!2269) (Not!979) (Plus!979) (SpaceValue!979 (value!32078 List!5200)) (IntegerValue!2939 (value!32079 Int) (text!7302 List!5200)) (StringLiteralValue!2938 (text!7303 List!5200)) (FloatLiteralValue!1959 (text!7304 List!5200)) (BytesLiteralValue!979 (value!32080 List!5200)) (CommentValue!1959 (value!32081 List!5200)) (StringLiteralValue!2939 (value!32082 List!5200)) (ErrorTokenValue!979 (msg!1040 List!5200)) )
))
(declare-datatypes ((String!6639 0))(
  ( (String!6640 (value!32083 String)) )
))
(declare-datatypes ((IArray!3345 0))(
  ( (IArray!3346 (innerList!1730 List!5199)) )
))
(declare-datatypes ((Conc!1672 0))(
  ( (Node!1672 (left!4346 Conc!1672) (right!4676 Conc!1672) (csize!3574 Int) (cheight!1883 Int)) (Leaf!2657 (xs!4309 IArray!3345) (csize!3575 Int)) (Empty!1672) )
))
(declare-datatypes ((BalanceConc!3352 0))(
  ( (BalanceConc!3353 (c!101955 Conc!1672)) )
))
(declare-datatypes ((TokenValueInjection!1726 0))(
  ( (TokenValueInjection!1727 (toValue!1802 Int) (toChars!1661 Int)) )
))
(declare-datatypes ((Rule!1710 0))(
  ( (Rule!1711 (regex!955 Regex!1289) (tag!1217 String!6639) (isSeparator!955 Bool) (transformation!955 TokenValueInjection!1726)) )
))
(declare-datatypes ((Token!1646 0))(
  ( (Token!1647 (value!32084 TokenValue!979) (rule!1657 Rule!1710) (size!4180 Int) (originalCharacters!994 List!5199)) )
))
(declare-fun token!491 () Token!1646)

(declare-fun b!535867 () Bool)

(declare-fun lt!221543 () List!5199)

(declare-fun lt!221549 () Int)

(declare-fun lt!221554 () TokenValue!979)

(declare-fun lt!221558 () List!5199)

(declare-datatypes ((tuple2!6268 0))(
  ( (tuple2!6269 (_1!3398 Token!1646) (_2!3398 List!5199)) )
))
(assert (=> b!535867 (= e!323163 (and (= (size!4180 token!491) lt!221549) (= (originalCharacters!994 token!491) lt!221543) (= (tuple2!6269 token!491 suffix!1342) (tuple2!6269 (Token!1647 lt!221554 (rule!1657 token!491) lt!221549 lt!221543) lt!221558))))))

(declare-fun b!535868 () Bool)

(declare-fun e!323173 () Bool)

(declare-fun e!323167 () Bool)

(assert (=> b!535868 (= e!323173 e!323167)))

(declare-fun res!226764 () Bool)

(assert (=> b!535868 (=> (not res!226764) (not e!323167))))

(declare-fun input!2705 () List!5199)

(assert (=> b!535868 (= res!226764 (= lt!221543 input!2705))))

(declare-fun list!2157 (BalanceConc!3352) List!5199)

(declare-fun charsOf!584 (Token!1646) BalanceConc!3352)

(assert (=> b!535868 (= lt!221543 (list!2157 (charsOf!584 token!491)))))

(declare-fun b!535869 () Bool)

(declare-fun res!226755 () Bool)

(assert (=> b!535869 (=> (not res!226755) (not e!323173))))

(declare-datatypes ((List!5201 0))(
  ( (Nil!5191) (Cons!5191 (h!10592 Rule!1710) (t!74106 List!5201)) )
))
(declare-fun rules!3103 () List!5201)

(declare-fun isEmpty!3752 (List!5201) Bool)

(assert (=> b!535869 (= res!226755 (not (isEmpty!3752 rules!3103)))))

(declare-fun b!535871 () Bool)

(declare-fun res!226765 () Bool)

(assert (=> b!535871 (=> (not res!226765) (not e!323163))))

(declare-fun size!4181 (List!5199) Int)

(assert (=> b!535871 (= res!226765 (= (size!4180 token!491) (size!4181 (originalCharacters!994 token!491))))))

(declare-fun tp!171033 () Bool)

(declare-fun e!323161 () Bool)

(declare-fun b!535872 () Bool)

(declare-fun e!323157 () Bool)

(declare-fun inv!21 (TokenValue!979) Bool)

(assert (=> b!535872 (= e!323161 (and (inv!21 (value!32084 token!491)) e!323157 tp!171033))))

(declare-fun b!535873 () Bool)

(declare-fun e!323160 () Bool)

(declare-fun e!323174 () Bool)

(declare-fun tp!171035 () Bool)

(assert (=> b!535873 (= e!323160 (and e!323174 tp!171035))))

(declare-fun b!535874 () Bool)

(declare-fun e!323159 () Bool)

(declare-fun e!323155 () Bool)

(assert (=> b!535874 (= e!323159 e!323155)))

(declare-fun res!226756 () Bool)

(assert (=> b!535874 (=> (not res!226756) (not e!323155))))

(declare-datatypes ((Option!1305 0))(
  ( (None!1304) (Some!1304 (v!16111 tuple2!6268)) )
))
(declare-fun lt!221561 () Option!1305)

(get-info :version)

(assert (=> b!535874 (= res!226756 ((_ is Some!1304) lt!221561))))

(declare-datatypes ((LexerInterface!841 0))(
  ( (LexerInterfaceExt!838 (__x!3857 Int)) (Lexer!839) )
))
(declare-fun thiss!22590 () LexerInterface!841)

(declare-fun maxPrefix!539 (LexerInterface!841 List!5201 List!5199) Option!1305)

(assert (=> b!535874 (= lt!221561 (maxPrefix!539 thiss!22590 rules!3103 input!2705))))

(declare-fun b!535875 () Bool)

(declare-fun e!323176 () Bool)

(assert (=> b!535875 (= e!323167 e!323176)))

(declare-fun res!226753 () Bool)

(assert (=> b!535875 (=> (not res!226753) (not e!323176))))

(declare-fun lt!221560 () Option!1305)

(declare-fun isDefined!1117 (Option!1305) Bool)

(assert (=> b!535875 (= res!226753 (isDefined!1117 lt!221560))))

(declare-fun lt!221542 () List!5199)

(assert (=> b!535875 (= lt!221560 (maxPrefix!539 thiss!22590 rules!3103 lt!221542))))

(declare-fun ++!1443 (List!5199 List!5199) List!5199)

(assert (=> b!535875 (= lt!221542 (++!1443 input!2705 suffix!1342))))

(declare-fun b!535876 () Bool)

(declare-fun e!323164 () Bool)

(declare-fun tp_is_empty!2933 () Bool)

(declare-fun tp!171036 () Bool)

(assert (=> b!535876 (= e!323164 (and tp_is_empty!2933 tp!171036))))

(declare-fun e!323175 () Bool)

(declare-fun b!535877 () Bool)

(declare-fun tp!171030 () Bool)

(declare-fun inv!6511 (String!6639) Bool)

(declare-fun inv!6514 (TokenValueInjection!1726) Bool)

(assert (=> b!535877 (= e!323157 (and tp!171030 (inv!6511 (tag!1217 (rule!1657 token!491))) (inv!6514 (transformation!955 (rule!1657 token!491))) e!323175))))

(declare-fun lt!221555 () Int)

(declare-fun lt!221557 () List!5199)

(declare-fun lt!221569 () List!5199)

(declare-fun b!535878 () Bool)

(declare-fun e!323172 () Bool)

(declare-fun lt!221546 () TokenValue!979)

(assert (=> b!535878 (= e!323172 (and (= (size!4180 (_1!3398 (v!16111 lt!221561))) lt!221555) (= (originalCharacters!994 (_1!3398 (v!16111 lt!221561))) lt!221569) (= (v!16111 lt!221561) (tuple2!6269 (Token!1647 lt!221546 (rule!1657 (_1!3398 (v!16111 lt!221561))) lt!221555 lt!221569) lt!221557))))))

(declare-fun e!323165 () Bool)

(declare-fun b!535879 () Bool)

(declare-fun tp!171029 () Bool)

(assert (=> b!535879 (= e!323174 (and tp!171029 (inv!6511 (tag!1217 (h!10592 rules!3103))) (inv!6514 (transformation!955 (h!10592 rules!3103))) e!323165))))

(declare-fun b!535880 () Bool)

(declare-fun e!323168 () Bool)

(assert (=> b!535880 (= e!323155 e!323168)))

(declare-fun res!226758 () Bool)

(assert (=> b!535880 (=> (not res!226758) (not e!323168))))

(declare-fun lt!221552 () List!5199)

(assert (=> b!535880 (= res!226758 (= lt!221552 lt!221542))))

(assert (=> b!535880 (= lt!221552 (++!1443 lt!221543 suffix!1342))))

(declare-fun b!535881 () Bool)

(declare-datatypes ((Unit!9059 0))(
  ( (Unit!9060) )
))
(declare-fun e!323162 () Unit!9059)

(declare-fun Unit!9061 () Unit!9059)

(assert (=> b!535881 (= e!323162 Unit!9061)))

(assert (=> b!535881 false))

(declare-fun b!535882 () Bool)

(declare-fun res!226761 () Bool)

(assert (=> b!535882 (=> (not res!226761) (not e!323173))))

(declare-fun rulesInvariant!804 (LexerInterface!841 List!5201) Bool)

(assert (=> b!535882 (= res!226761 (rulesInvariant!804 thiss!22590 rules!3103))))

(declare-fun res!226759 () Bool)

(assert (=> start!49404 (=> (not res!226759) (not e!323173))))

(assert (=> start!49404 (= res!226759 ((_ is Lexer!839) thiss!22590))))

(assert (=> start!49404 e!323173))

(assert (=> start!49404 e!323164))

(assert (=> start!49404 e!323160))

(declare-fun inv!6515 (Token!1646) Bool)

(assert (=> start!49404 (and (inv!6515 token!491) e!323161)))

(assert (=> start!49404 true))

(declare-fun e!323166 () Bool)

(assert (=> start!49404 e!323166))

(declare-fun b!535870 () Bool)

(declare-fun tp!171032 () Bool)

(assert (=> b!535870 (= e!323166 (and tp_is_empty!2933 tp!171032))))

(assert (=> b!535883 (= e!323165 (and tp!171031 tp!171038))))

(declare-fun b!535884 () Bool)

(declare-fun Unit!9062 () Unit!9059)

(assert (=> b!535884 (= e!323162 Unit!9062)))

(declare-fun b!535885 () Bool)

(declare-fun e!323171 () Bool)

(declare-fun e!323170 () Bool)

(assert (=> b!535885 (= e!323171 e!323170)))

(declare-fun res!226754 () Bool)

(assert (=> b!535885 (=> res!226754 e!323170)))

(assert (=> b!535885 (= res!226754 (>= lt!221555 lt!221549))))

(declare-fun maxPrefixOneRule!254 (LexerInterface!841 Rule!1710 List!5199) Option!1305)

(assert (=> b!535885 (= (maxPrefixOneRule!254 thiss!22590 (rule!1657 token!491) lt!221542) (Some!1304 (tuple2!6269 (Token!1647 lt!221554 (rule!1657 token!491) lt!221549 lt!221543) suffix!1342)))))

(declare-fun lt!221550 () Unit!9059)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!6 (LexerInterface!841 List!5201 List!5199 List!5199 List!5199 Rule!1710) Unit!9059)

(assert (=> b!535885 (= lt!221550 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!6 thiss!22590 rules!3103 lt!221543 lt!221542 suffix!1342 (rule!1657 token!491)))))

(assert (=> b!535885 (= (maxPrefixOneRule!254 thiss!22590 (rule!1657 (_1!3398 (v!16111 lt!221561))) input!2705) (Some!1304 (tuple2!6269 (Token!1647 lt!221546 (rule!1657 (_1!3398 (v!16111 lt!221561))) lt!221555 lt!221569) (_2!3398 (v!16111 lt!221561)))))))

(declare-fun lt!221541 () Unit!9059)

(assert (=> b!535885 (= lt!221541 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!6 thiss!22590 rules!3103 lt!221569 input!2705 (_2!3398 (v!16111 lt!221561)) (rule!1657 (_1!3398 (v!16111 lt!221561)))))))

(assert (=> b!535885 e!323163))

(declare-fun res!226757 () Bool)

(assert (=> b!535885 (=> (not res!226757) (not e!323163))))

(assert (=> b!535885 (= res!226757 (= (value!32084 token!491) lt!221554))))

(declare-fun apply!1230 (TokenValueInjection!1726 BalanceConc!3352) TokenValue!979)

(declare-fun seqFromList!1153 (List!5199) BalanceConc!3352)

(assert (=> b!535885 (= lt!221554 (apply!1230 (transformation!955 (rule!1657 token!491)) (seqFromList!1153 lt!221543)))))

(assert (=> b!535885 (= suffix!1342 lt!221558)))

(declare-fun lt!221566 () Unit!9059)

(declare-fun lemmaSamePrefixThenSameSuffix!324 (List!5199 List!5199 List!5199 List!5199 List!5199) Unit!9059)

(assert (=> b!535885 (= lt!221566 (lemmaSamePrefixThenSameSuffix!324 lt!221543 suffix!1342 lt!221543 lt!221558 lt!221542))))

(declare-fun getSuffix!120 (List!5199 List!5199) List!5199)

(assert (=> b!535885 (= lt!221558 (getSuffix!120 lt!221542 lt!221543))))

(declare-fun b!535886 () Bool)

(assert (=> b!535886 (= e!323168 (not e!323171))))

(declare-fun res!226760 () Bool)

(assert (=> b!535886 (=> res!226760 e!323171)))

(declare-fun isPrefix!597 (List!5199 List!5199) Bool)

(assert (=> b!535886 (= res!226760 (not (isPrefix!597 input!2705 lt!221552)))))

(assert (=> b!535886 (isPrefix!597 lt!221543 lt!221552)))

(declare-fun lt!221556 () Unit!9059)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!448 (List!5199 List!5199) Unit!9059)

(assert (=> b!535886 (= lt!221556 (lemmaConcatTwoListThenFirstIsPrefix!448 lt!221543 suffix!1342))))

(assert (=> b!535886 (isPrefix!597 input!2705 lt!221542)))

(declare-fun lt!221544 () Unit!9059)

(assert (=> b!535886 (= lt!221544 (lemmaConcatTwoListThenFirstIsPrefix!448 input!2705 suffix!1342))))

(assert (=> b!535886 e!323172))

(declare-fun res!226766 () Bool)

(assert (=> b!535886 (=> (not res!226766) (not e!323172))))

(assert (=> b!535886 (= res!226766 (= (value!32084 (_1!3398 (v!16111 lt!221561))) lt!221546))))

(assert (=> b!535886 (= lt!221546 (apply!1230 (transformation!955 (rule!1657 (_1!3398 (v!16111 lt!221561)))) (seqFromList!1153 lt!221569)))))

(declare-fun lt!221568 () Unit!9059)

(declare-fun lemmaInv!103 (TokenValueInjection!1726) Unit!9059)

(assert (=> b!535886 (= lt!221568 (lemmaInv!103 (transformation!955 (rule!1657 token!491))))))

(declare-fun lt!221564 () Unit!9059)

(assert (=> b!535886 (= lt!221564 (lemmaInv!103 (transformation!955 (rule!1657 (_1!3398 (v!16111 lt!221561))))))))

(declare-fun ruleValid!175 (LexerInterface!841 Rule!1710) Bool)

(assert (=> b!535886 (ruleValid!175 thiss!22590 (rule!1657 token!491))))

(declare-fun lt!221551 () Unit!9059)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!34 (LexerInterface!841 Rule!1710 List!5201) Unit!9059)

(assert (=> b!535886 (= lt!221551 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!34 thiss!22590 (rule!1657 token!491) rules!3103))))

(assert (=> b!535886 (ruleValid!175 thiss!22590 (rule!1657 (_1!3398 (v!16111 lt!221561))))))

(declare-fun lt!221547 () Unit!9059)

(assert (=> b!535886 (= lt!221547 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!34 thiss!22590 (rule!1657 (_1!3398 (v!16111 lt!221561))) rules!3103))))

(assert (=> b!535886 (isPrefix!597 input!2705 input!2705)))

(declare-fun lt!221563 () Unit!9059)

(declare-fun lemmaIsPrefixRefl!337 (List!5199 List!5199) Unit!9059)

(assert (=> b!535886 (= lt!221563 (lemmaIsPrefixRefl!337 input!2705 input!2705))))

(assert (=> b!535886 (= (_2!3398 (v!16111 lt!221561)) lt!221557)))

(declare-fun lt!221545 () Unit!9059)

(assert (=> b!535886 (= lt!221545 (lemmaSamePrefixThenSameSuffix!324 lt!221569 (_2!3398 (v!16111 lt!221561)) lt!221569 lt!221557 input!2705))))

(assert (=> b!535886 (= lt!221557 (getSuffix!120 input!2705 lt!221569))))

(assert (=> b!535886 (isPrefix!597 lt!221569 (++!1443 lt!221569 (_2!3398 (v!16111 lt!221561))))))

(declare-fun lt!221562 () Unit!9059)

(assert (=> b!535886 (= lt!221562 (lemmaConcatTwoListThenFirstIsPrefix!448 lt!221569 (_2!3398 (v!16111 lt!221561))))))

(declare-fun lt!221548 () Unit!9059)

(declare-fun lemmaCharactersSize!34 (Token!1646) Unit!9059)

(assert (=> b!535886 (= lt!221548 (lemmaCharactersSize!34 token!491))))

(declare-fun lt!221565 () Unit!9059)

(assert (=> b!535886 (= lt!221565 (lemmaCharactersSize!34 (_1!3398 (v!16111 lt!221561))))))

(declare-fun lt!221567 () Unit!9059)

(assert (=> b!535886 (= lt!221567 e!323162)))

(declare-fun c!101953 () Bool)

(assert (=> b!535886 (= c!101953 (> lt!221555 lt!221549))))

(assert (=> b!535886 (= lt!221549 (size!4181 lt!221543))))

(assert (=> b!535886 (= lt!221555 (size!4181 lt!221569))))

(assert (=> b!535886 (= lt!221569 (list!2157 (charsOf!584 (_1!3398 (v!16111 lt!221561)))))))

(assert (=> b!535886 (= lt!221561 (Some!1304 (v!16111 lt!221561)))))

(declare-fun lt!221553 () Unit!9059)

(declare-fun lemmaConcatSameAndSameSizesThenSameLists!40 (List!5199 List!5199 List!5199 List!5199) Unit!9059)

(assert (=> b!535886 (= lt!221553 (lemmaConcatSameAndSameSizesThenSameLists!40 lt!221543 suffix!1342 input!2705 suffix!1342))))

(declare-fun b!535887 () Bool)

(declare-fun res!226752 () Bool)

(assert (=> b!535887 (=> (not res!226752) (not e!323172))))

(assert (=> b!535887 (= res!226752 (= (size!4180 (_1!3398 (v!16111 lt!221561))) (size!4181 (originalCharacters!994 (_1!3398 (v!16111 lt!221561))))))))

(assert (=> b!535888 (= e!323175 (and tp!171037 tp!171034))))

(declare-fun b!535889 () Bool)

(assert (=> b!535889 (= e!323176 e!323159)))

(declare-fun res!226763 () Bool)

(assert (=> b!535889 (=> (not res!226763) (not e!323159))))

(declare-fun lt!221559 () tuple2!6268)

(assert (=> b!535889 (= res!226763 (and (= (_1!3398 lt!221559) token!491) (= (_2!3398 lt!221559) suffix!1342)))))

(declare-fun get!1947 (Option!1305) tuple2!6268)

(assert (=> b!535889 (= lt!221559 (get!1947 lt!221560))))

(declare-fun b!535890 () Bool)

(declare-fun res!226762 () Bool)

(assert (=> b!535890 (=> (not res!226762) (not e!323173))))

(declare-fun isEmpty!3753 (List!5199) Bool)

(assert (=> b!535890 (= res!226762 (not (isEmpty!3753 input!2705)))))

(declare-fun b!535891 () Bool)

(declare-fun rulesValidInductive!332 (LexerInterface!841 List!5201) Bool)

(assert (=> b!535891 (= e!323170 (rulesValidInductive!332 thiss!22590 rules!3103))))

(assert (= (and start!49404 res!226759) b!535869))

(assert (= (and b!535869 res!226755) b!535882))

(assert (= (and b!535882 res!226761) b!535890))

(assert (= (and b!535890 res!226762) b!535868))

(assert (= (and b!535868 res!226764) b!535875))

(assert (= (and b!535875 res!226753) b!535889))

(assert (= (and b!535889 res!226763) b!535874))

(assert (= (and b!535874 res!226756) b!535880))

(assert (= (and b!535880 res!226758) b!535886))

(assert (= (and b!535886 c!101953) b!535881))

(assert (= (and b!535886 (not c!101953)) b!535884))

(assert (= (and b!535886 res!226766) b!535887))

(assert (= (and b!535887 res!226752) b!535878))

(assert (= (and b!535886 (not res!226760)) b!535885))

(assert (= (and b!535885 res!226757) b!535871))

(assert (= (and b!535871 res!226765) b!535867))

(assert (= (and b!535885 (not res!226754)) b!535891))

(assert (= (and start!49404 ((_ is Cons!5189) suffix!1342)) b!535876))

(assert (= b!535879 b!535883))

(assert (= b!535873 b!535879))

(assert (= (and start!49404 ((_ is Cons!5191) rules!3103)) b!535873))

(assert (= b!535877 b!535888))

(assert (= b!535872 b!535877))

(assert (= start!49404 b!535872))

(assert (= (and start!49404 ((_ is Cons!5189) input!2705)) b!535870))

(declare-fun m!782001 () Bool)

(assert (=> b!535874 m!782001))

(declare-fun m!782003 () Bool)

(assert (=> b!535885 m!782003))

(declare-fun m!782005 () Bool)

(assert (=> b!535885 m!782005))

(declare-fun m!782007 () Bool)

(assert (=> b!535885 m!782007))

(declare-fun m!782009 () Bool)

(assert (=> b!535885 m!782009))

(assert (=> b!535885 m!782005))

(declare-fun m!782011 () Bool)

(assert (=> b!535885 m!782011))

(declare-fun m!782013 () Bool)

(assert (=> b!535885 m!782013))

(declare-fun m!782015 () Bool)

(assert (=> b!535885 m!782015))

(declare-fun m!782017 () Bool)

(assert (=> b!535885 m!782017))

(declare-fun m!782019 () Bool)

(assert (=> b!535875 m!782019))

(declare-fun m!782021 () Bool)

(assert (=> b!535875 m!782021))

(declare-fun m!782023 () Bool)

(assert (=> b!535875 m!782023))

(declare-fun m!782025 () Bool)

(assert (=> b!535871 m!782025))

(declare-fun m!782027 () Bool)

(assert (=> b!535889 m!782027))

(declare-fun m!782029 () Bool)

(assert (=> b!535872 m!782029))

(declare-fun m!782031 () Bool)

(assert (=> b!535886 m!782031))

(declare-fun m!782033 () Bool)

(assert (=> b!535886 m!782033))

(declare-fun m!782035 () Bool)

(assert (=> b!535886 m!782035))

(declare-fun m!782037 () Bool)

(assert (=> b!535886 m!782037))

(declare-fun m!782039 () Bool)

(assert (=> b!535886 m!782039))

(declare-fun m!782041 () Bool)

(assert (=> b!535886 m!782041))

(declare-fun m!782043 () Bool)

(assert (=> b!535886 m!782043))

(declare-fun m!782045 () Bool)

(assert (=> b!535886 m!782045))

(declare-fun m!782047 () Bool)

(assert (=> b!535886 m!782047))

(declare-fun m!782049 () Bool)

(assert (=> b!535886 m!782049))

(declare-fun m!782051 () Bool)

(assert (=> b!535886 m!782051))

(declare-fun m!782053 () Bool)

(assert (=> b!535886 m!782053))

(declare-fun m!782055 () Bool)

(assert (=> b!535886 m!782055))

(declare-fun m!782057 () Bool)

(assert (=> b!535886 m!782057))

(declare-fun m!782059 () Bool)

(assert (=> b!535886 m!782059))

(declare-fun m!782061 () Bool)

(assert (=> b!535886 m!782061))

(declare-fun m!782063 () Bool)

(assert (=> b!535886 m!782063))

(declare-fun m!782065 () Bool)

(assert (=> b!535886 m!782065))

(declare-fun m!782067 () Bool)

(assert (=> b!535886 m!782067))

(declare-fun m!782069 () Bool)

(assert (=> b!535886 m!782069))

(declare-fun m!782071 () Bool)

(assert (=> b!535886 m!782071))

(assert (=> b!535886 m!782069))

(declare-fun m!782073 () Bool)

(assert (=> b!535886 m!782073))

(declare-fun m!782075 () Bool)

(assert (=> b!535886 m!782075))

(declare-fun m!782077 () Bool)

(assert (=> b!535886 m!782077))

(assert (=> b!535886 m!782063))

(declare-fun m!782079 () Bool)

(assert (=> b!535886 m!782079))

(assert (=> b!535886 m!782037))

(declare-fun m!782081 () Bool)

(assert (=> b!535886 m!782081))

(declare-fun m!782083 () Bool)

(assert (=> b!535886 m!782083))

(declare-fun m!782085 () Bool)

(assert (=> b!535882 m!782085))

(declare-fun m!782087 () Bool)

(assert (=> b!535887 m!782087))

(declare-fun m!782089 () Bool)

(assert (=> b!535879 m!782089))

(declare-fun m!782091 () Bool)

(assert (=> b!535879 m!782091))

(declare-fun m!782093 () Bool)

(assert (=> b!535877 m!782093))

(declare-fun m!782095 () Bool)

(assert (=> b!535877 m!782095))

(declare-fun m!782097 () Bool)

(assert (=> b!535869 m!782097))

(declare-fun m!782099 () Bool)

(assert (=> b!535880 m!782099))

(declare-fun m!782101 () Bool)

(assert (=> b!535868 m!782101))

(assert (=> b!535868 m!782101))

(declare-fun m!782103 () Bool)

(assert (=> b!535868 m!782103))

(declare-fun m!782105 () Bool)

(assert (=> start!49404 m!782105))

(declare-fun m!782107 () Bool)

(assert (=> b!535890 m!782107))

(declare-fun m!782109 () Bool)

(assert (=> b!535891 m!782109))

(check-sat (not b!535889) (not b!535877) (not b!535879) tp_is_empty!2933 (not b_next!14675) (not b_next!14677) (not b!535890) (not b_next!14673) (not b_next!14679) (not b!535876) (not b!535882) (not b!535868) (not start!49404) (not b!535885) (not b!535887) (not b!535891) (not b!535886) (not b!535874) (not b!535873) b_and!52415 (not b!535869) (not b!535880) (not b!535875) b_and!52413 b_and!52417 b_and!52411 (not b!535872) (not b!535871) (not b!535870))
(check-sat b_and!52415 (not b_next!14675) (not b_next!14677) (not b_next!14673) (not b_next!14679) b_and!52411 b_and!52413 b_and!52417)
(get-model)

(declare-fun b!535935 () Bool)

(declare-fun res!226793 () Bool)

(declare-fun e!323206 () Bool)

(assert (=> b!535935 (=> res!226793 e!323206)))

(assert (=> b!535935 (= res!226793 (not ((_ is IntegerValue!2939) (value!32084 token!491))))))

(declare-fun e!323207 () Bool)

(assert (=> b!535935 (= e!323207 e!323206)))

(declare-fun b!535936 () Bool)

(declare-fun e!323205 () Bool)

(declare-fun inv!16 (TokenValue!979) Bool)

(assert (=> b!535936 (= e!323205 (inv!16 (value!32084 token!491)))))

(declare-fun b!535937 () Bool)

(declare-fun inv!17 (TokenValue!979) Bool)

(assert (=> b!535937 (= e!323207 (inv!17 (value!32084 token!491)))))

(declare-fun d!189453 () Bool)

(declare-fun c!101967 () Bool)

(assert (=> d!189453 (= c!101967 ((_ is IntegerValue!2937) (value!32084 token!491)))))

(assert (=> d!189453 (= (inv!21 (value!32084 token!491)) e!323205)))

(declare-fun b!535938 () Bool)

(declare-fun inv!15 (TokenValue!979) Bool)

(assert (=> b!535938 (= e!323206 (inv!15 (value!32084 token!491)))))

(declare-fun b!535939 () Bool)

(assert (=> b!535939 (= e!323205 e!323207)))

(declare-fun c!101966 () Bool)

(assert (=> b!535939 (= c!101966 ((_ is IntegerValue!2938) (value!32084 token!491)))))

(assert (= (and d!189453 c!101967) b!535936))

(assert (= (and d!189453 (not c!101967)) b!535939))

(assert (= (and b!535939 c!101966) b!535937))

(assert (= (and b!535939 (not c!101966)) b!535935))

(assert (= (and b!535935 (not res!226793)) b!535938))

(declare-fun m!782131 () Bool)

(assert (=> b!535936 m!782131))

(declare-fun m!782133 () Bool)

(assert (=> b!535937 m!782133))

(declare-fun m!782135 () Bool)

(assert (=> b!535938 m!782135))

(assert (=> b!535872 d!189453))

(declare-fun d!189455 () Bool)

(declare-fun res!226796 () Bool)

(declare-fun e!323210 () Bool)

(assert (=> d!189455 (=> (not res!226796) (not e!323210))))

(declare-fun rulesValid!342 (LexerInterface!841 List!5201) Bool)

(assert (=> d!189455 (= res!226796 (rulesValid!342 thiss!22590 rules!3103))))

(assert (=> d!189455 (= (rulesInvariant!804 thiss!22590 rules!3103) e!323210)))

(declare-fun b!535942 () Bool)

(declare-datatypes ((List!5203 0))(
  ( (Nil!5193) (Cons!5193 (h!10594 String!6639) (t!74156 List!5203)) )
))
(declare-fun noDuplicateTag!342 (LexerInterface!841 List!5201 List!5203) Bool)

(assert (=> b!535942 (= e!323210 (noDuplicateTag!342 thiss!22590 rules!3103 Nil!5193))))

(assert (= (and d!189455 res!226796) b!535942))

(declare-fun m!782137 () Bool)

(assert (=> d!189455 m!782137))

(declare-fun m!782139 () Bool)

(assert (=> b!535942 m!782139))

(assert (=> b!535882 d!189455))

(declare-fun d!189457 () Bool)

(declare-fun lt!221574 () Int)

(assert (=> d!189457 (>= lt!221574 0)))

(declare-fun e!323213 () Int)

(assert (=> d!189457 (= lt!221574 e!323213)))

(declare-fun c!101970 () Bool)

(assert (=> d!189457 (= c!101970 ((_ is Nil!5189) (originalCharacters!994 token!491)))))

(assert (=> d!189457 (= (size!4181 (originalCharacters!994 token!491)) lt!221574)))

(declare-fun b!535947 () Bool)

(assert (=> b!535947 (= e!323213 0)))

(declare-fun b!535948 () Bool)

(assert (=> b!535948 (= e!323213 (+ 1 (size!4181 (t!74104 (originalCharacters!994 token!491)))))))

(assert (= (and d!189457 c!101970) b!535947))

(assert (= (and d!189457 (not c!101970)) b!535948))

(declare-fun m!782141 () Bool)

(assert (=> b!535948 m!782141))

(assert (=> b!535871 d!189457))

(declare-fun d!189459 () Bool)

(assert (=> d!189459 true))

(declare-fun lt!221599 () Bool)

(declare-fun lambda!15439 () Int)

(declare-fun forall!1516 (List!5201 Int) Bool)

(assert (=> d!189459 (= lt!221599 (forall!1516 rules!3103 lambda!15439))))

(declare-fun e!323236 () Bool)

(assert (=> d!189459 (= lt!221599 e!323236)))

(declare-fun res!226827 () Bool)

(assert (=> d!189459 (=> res!226827 e!323236)))

(assert (=> d!189459 (= res!226827 (not ((_ is Cons!5191) rules!3103)))))

(assert (=> d!189459 (= (rulesValidInductive!332 thiss!22590 rules!3103) lt!221599)))

(declare-fun b!535993 () Bool)

(declare-fun e!323235 () Bool)

(assert (=> b!535993 (= e!323236 e!323235)))

(declare-fun res!226828 () Bool)

(assert (=> b!535993 (=> (not res!226828) (not e!323235))))

(assert (=> b!535993 (= res!226828 (ruleValid!175 thiss!22590 (h!10592 rules!3103)))))

(declare-fun b!535994 () Bool)

(assert (=> b!535994 (= e!323235 (rulesValidInductive!332 thiss!22590 (t!74106 rules!3103)))))

(assert (= (and d!189459 (not res!226827)) b!535993))

(assert (= (and b!535993 res!226828) b!535994))

(declare-fun m!782187 () Bool)

(assert (=> d!189459 m!782187))

(declare-fun m!782189 () Bool)

(assert (=> b!535993 m!782189))

(declare-fun m!782191 () Bool)

(assert (=> b!535994 m!782191))

(assert (=> b!535891 d!189459))

(declare-fun d!189477 () Bool)

(declare-fun e!323242 () Bool)

(assert (=> d!189477 e!323242))

(declare-fun res!226834 () Bool)

(assert (=> d!189477 (=> (not res!226834) (not e!323242))))

(declare-fun lt!221602 () List!5199)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!911 (List!5199) (InoxSet C!3500))

(assert (=> d!189477 (= res!226834 (= (content!911 lt!221602) ((_ map or) (content!911 lt!221543) (content!911 suffix!1342))))))

(declare-fun e!323241 () List!5199)

(assert (=> d!189477 (= lt!221602 e!323241)))

(declare-fun c!101979 () Bool)

(assert (=> d!189477 (= c!101979 ((_ is Nil!5189) lt!221543))))

(assert (=> d!189477 (= (++!1443 lt!221543 suffix!1342) lt!221602)))

(declare-fun b!536006 () Bool)

(assert (=> b!536006 (= e!323241 (Cons!5189 (h!10590 lt!221543) (++!1443 (t!74104 lt!221543) suffix!1342)))))

(declare-fun b!536008 () Bool)

(assert (=> b!536008 (= e!323242 (or (not (= suffix!1342 Nil!5189)) (= lt!221602 lt!221543)))))

(declare-fun b!536005 () Bool)

(assert (=> b!536005 (= e!323241 suffix!1342)))

(declare-fun b!536007 () Bool)

(declare-fun res!226833 () Bool)

(assert (=> b!536007 (=> (not res!226833) (not e!323242))))

(assert (=> b!536007 (= res!226833 (= (size!4181 lt!221602) (+ (size!4181 lt!221543) (size!4181 suffix!1342))))))

(assert (= (and d!189477 c!101979) b!536005))

(assert (= (and d!189477 (not c!101979)) b!536006))

(assert (= (and d!189477 res!226834) b!536007))

(assert (= (and b!536007 res!226833) b!536008))

(declare-fun m!782193 () Bool)

(assert (=> d!189477 m!782193))

(declare-fun m!782195 () Bool)

(assert (=> d!189477 m!782195))

(declare-fun m!782197 () Bool)

(assert (=> d!189477 m!782197))

(declare-fun m!782199 () Bool)

(assert (=> b!536006 m!782199))

(declare-fun m!782201 () Bool)

(assert (=> b!536007 m!782201))

(assert (=> b!536007 m!782041))

(declare-fun m!782203 () Bool)

(assert (=> b!536007 m!782203))

(assert (=> b!535880 d!189477))

(declare-fun d!189479 () Bool)

(assert (=> d!189479 (= (isEmpty!3752 rules!3103) ((_ is Nil!5191) rules!3103))))

(assert (=> b!535869 d!189479))

(declare-fun d!189481 () Bool)

(assert (=> d!189481 (= (isEmpty!3753 input!2705) ((_ is Nil!5189) input!2705))))

(assert (=> b!535890 d!189481))

(declare-fun d!189483 () Bool)

(assert (=> d!189483 (= (inv!6511 (tag!1217 (h!10592 rules!3103))) (= (mod (str.len (value!32083 (tag!1217 (h!10592 rules!3103)))) 2) 0))))

(assert (=> b!535879 d!189483))

(declare-fun d!189485 () Bool)

(declare-fun res!226837 () Bool)

(declare-fun e!323245 () Bool)

(assert (=> d!189485 (=> (not res!226837) (not e!323245))))

(declare-fun semiInverseModEq!377 (Int Int) Bool)

(assert (=> d!189485 (= res!226837 (semiInverseModEq!377 (toChars!1661 (transformation!955 (h!10592 rules!3103))) (toValue!1802 (transformation!955 (h!10592 rules!3103)))))))

(assert (=> d!189485 (= (inv!6514 (transformation!955 (h!10592 rules!3103))) e!323245)))

(declare-fun b!536011 () Bool)

(declare-fun equivClasses!360 (Int Int) Bool)

(assert (=> b!536011 (= e!323245 (equivClasses!360 (toChars!1661 (transformation!955 (h!10592 rules!3103))) (toValue!1802 (transformation!955 (h!10592 rules!3103)))))))

(assert (= (and d!189485 res!226837) b!536011))

(declare-fun m!782205 () Bool)

(assert (=> d!189485 m!782205))

(declare-fun m!782207 () Bool)

(assert (=> b!536011 m!782207))

(assert (=> b!535879 d!189485))

(declare-fun d!189487 () Bool)

(declare-fun list!2159 (Conc!1672) List!5199)

(assert (=> d!189487 (= (list!2157 (charsOf!584 token!491)) (list!2159 (c!101955 (charsOf!584 token!491))))))

(declare-fun bs!67326 () Bool)

(assert (= bs!67326 d!189487))

(declare-fun m!782209 () Bool)

(assert (=> bs!67326 m!782209))

(assert (=> b!535868 d!189487))

(declare-fun d!189489 () Bool)

(declare-fun lt!221613 () BalanceConc!3352)

(assert (=> d!189489 (= (list!2157 lt!221613) (originalCharacters!994 token!491))))

(declare-fun dynLambda!3088 (Int TokenValue!979) BalanceConc!3352)

(assert (=> d!189489 (= lt!221613 (dynLambda!3088 (toChars!1661 (transformation!955 (rule!1657 token!491))) (value!32084 token!491)))))

(assert (=> d!189489 (= (charsOf!584 token!491) lt!221613)))

(declare-fun b_lambda!20681 () Bool)

(assert (=> (not b_lambda!20681) (not d!189489)))

(declare-fun tb!47479 () Bool)

(declare-fun t!74112 () Bool)

(assert (=> (and b!535883 (= (toChars!1661 (transformation!955 (h!10592 rules!3103))) (toChars!1661 (transformation!955 (rule!1657 token!491)))) t!74112) tb!47479))

(declare-fun b!536033 () Bool)

(declare-fun e!323256 () Bool)

(declare-fun tp!171044 () Bool)

(declare-fun inv!6518 (Conc!1672) Bool)

(assert (=> b!536033 (= e!323256 (and (inv!6518 (c!101955 (dynLambda!3088 (toChars!1661 (transformation!955 (rule!1657 token!491))) (value!32084 token!491)))) tp!171044))))

(declare-fun result!52996 () Bool)

(declare-fun inv!6519 (BalanceConc!3352) Bool)

(assert (=> tb!47479 (= result!52996 (and (inv!6519 (dynLambda!3088 (toChars!1661 (transformation!955 (rule!1657 token!491))) (value!32084 token!491))) e!323256))))

(assert (= tb!47479 b!536033))

(declare-fun m!782211 () Bool)

(assert (=> b!536033 m!782211))

(declare-fun m!782213 () Bool)

(assert (=> tb!47479 m!782213))

(assert (=> d!189489 t!74112))

(declare-fun b_and!52423 () Bool)

(assert (= b_and!52413 (and (=> t!74112 result!52996) b_and!52423)))

(declare-fun t!74114 () Bool)

(declare-fun tb!47481 () Bool)

(assert (=> (and b!535888 (= (toChars!1661 (transformation!955 (rule!1657 token!491))) (toChars!1661 (transformation!955 (rule!1657 token!491)))) t!74114) tb!47481))

(declare-fun result!53000 () Bool)

(assert (= result!53000 result!52996))

(assert (=> d!189489 t!74114))

(declare-fun b_and!52425 () Bool)

(assert (= b_and!52417 (and (=> t!74114 result!53000) b_and!52425)))

(declare-fun m!782215 () Bool)

(assert (=> d!189489 m!782215))

(declare-fun m!782217 () Bool)

(assert (=> d!189489 m!782217))

(assert (=> b!535868 d!189489))

(declare-fun d!189491 () Bool)

(assert (=> d!189491 (= (get!1947 lt!221560) (v!16111 lt!221560))))

(assert (=> b!535889 d!189491))

(declare-fun d!189493 () Bool)

(assert (=> d!189493 (= (inv!6511 (tag!1217 (rule!1657 token!491))) (= (mod (str.len (value!32083 (tag!1217 (rule!1657 token!491)))) 2) 0))))

(assert (=> b!535877 d!189493))

(declare-fun d!189495 () Bool)

(declare-fun res!226852 () Bool)

(declare-fun e!323257 () Bool)

(assert (=> d!189495 (=> (not res!226852) (not e!323257))))

(assert (=> d!189495 (= res!226852 (semiInverseModEq!377 (toChars!1661 (transformation!955 (rule!1657 token!491))) (toValue!1802 (transformation!955 (rule!1657 token!491)))))))

(assert (=> d!189495 (= (inv!6514 (transformation!955 (rule!1657 token!491))) e!323257)))

(declare-fun b!536035 () Bool)

(assert (=> b!536035 (= e!323257 (equivClasses!360 (toChars!1661 (transformation!955 (rule!1657 token!491))) (toValue!1802 (transformation!955 (rule!1657 token!491)))))))

(assert (= (and d!189495 res!226852) b!536035))

(declare-fun m!782219 () Bool)

(assert (=> d!189495 m!782219))

(declare-fun m!782221 () Bool)

(assert (=> b!536035 m!782221))

(assert (=> b!535877 d!189495))

(declare-fun d!189497 () Bool)

(declare-fun lt!221616 () Int)

(assert (=> d!189497 (>= lt!221616 0)))

(declare-fun e!323258 () Int)

(assert (=> d!189497 (= lt!221616 e!323258)))

(declare-fun c!101982 () Bool)

(assert (=> d!189497 (= c!101982 ((_ is Nil!5189) (originalCharacters!994 (_1!3398 (v!16111 lt!221561)))))))

(assert (=> d!189497 (= (size!4181 (originalCharacters!994 (_1!3398 (v!16111 lt!221561)))) lt!221616)))

(declare-fun b!536036 () Bool)

(assert (=> b!536036 (= e!323258 0)))

(declare-fun b!536037 () Bool)

(assert (=> b!536037 (= e!323258 (+ 1 (size!4181 (t!74104 (originalCharacters!994 (_1!3398 (v!16111 lt!221561)))))))))

(assert (= (and d!189497 c!101982) b!536036))

(assert (= (and d!189497 (not c!101982)) b!536037))

(declare-fun m!782223 () Bool)

(assert (=> b!536037 m!782223))

(assert (=> b!535887 d!189497))

(declare-fun d!189499 () Bool)

(assert (=> d!189499 (= (size!4180 (_1!3398 (v!16111 lt!221561))) (size!4181 (originalCharacters!994 (_1!3398 (v!16111 lt!221561)))))))

(declare-fun Unit!9063 () Unit!9059)

(assert (=> d!189499 (= (lemmaCharactersSize!34 (_1!3398 (v!16111 lt!221561))) Unit!9063)))

(declare-fun bs!67327 () Bool)

(assert (= bs!67327 d!189499))

(assert (=> bs!67327 m!782087))

(assert (=> b!535886 d!189499))

(declare-fun d!189501 () Bool)

(assert (=> d!189501 (isPrefix!597 lt!221569 (++!1443 lt!221569 (_2!3398 (v!16111 lt!221561))))))

(declare-fun lt!221619 () Unit!9059)

(declare-fun choose!3775 (List!5199 List!5199) Unit!9059)

(assert (=> d!189501 (= lt!221619 (choose!3775 lt!221569 (_2!3398 (v!16111 lt!221561))))))

(assert (=> d!189501 (= (lemmaConcatTwoListThenFirstIsPrefix!448 lt!221569 (_2!3398 (v!16111 lt!221561))) lt!221619)))

(declare-fun bs!67328 () Bool)

(assert (= bs!67328 d!189501))

(assert (=> bs!67328 m!782063))

(assert (=> bs!67328 m!782063))

(assert (=> bs!67328 m!782065))

(declare-fun m!782225 () Bool)

(assert (=> bs!67328 m!782225))

(assert (=> b!535886 d!189501))

(declare-fun d!189503 () Bool)

(assert (=> d!189503 (isPrefix!597 lt!221543 (++!1443 lt!221543 suffix!1342))))

(declare-fun lt!221620 () Unit!9059)

(assert (=> d!189503 (= lt!221620 (choose!3775 lt!221543 suffix!1342))))

(assert (=> d!189503 (= (lemmaConcatTwoListThenFirstIsPrefix!448 lt!221543 suffix!1342) lt!221620)))

(declare-fun bs!67329 () Bool)

(assert (= bs!67329 d!189503))

(assert (=> bs!67329 m!782099))

(assert (=> bs!67329 m!782099))

(declare-fun m!782227 () Bool)

(assert (=> bs!67329 m!782227))

(declare-fun m!782229 () Bool)

(assert (=> bs!67329 m!782229))

(assert (=> b!535886 d!189503))

(declare-fun d!189505 () Bool)

(declare-fun lt!221621 () Int)

(assert (=> d!189505 (>= lt!221621 0)))

(declare-fun e!323259 () Int)

(assert (=> d!189505 (= lt!221621 e!323259)))

(declare-fun c!101983 () Bool)

(assert (=> d!189505 (= c!101983 ((_ is Nil!5189) lt!221543))))

(assert (=> d!189505 (= (size!4181 lt!221543) lt!221621)))

(declare-fun b!536038 () Bool)

(assert (=> b!536038 (= e!323259 0)))

(declare-fun b!536039 () Bool)

(assert (=> b!536039 (= e!323259 (+ 1 (size!4181 (t!74104 lt!221543))))))

(assert (= (and d!189505 c!101983) b!536038))

(assert (= (and d!189505 (not c!101983)) b!536039))

(declare-fun m!782231 () Bool)

(assert (=> b!536039 m!782231))

(assert (=> b!535886 d!189505))

(declare-fun b!536059 () Bool)

(declare-fun e!323272 () Bool)

(declare-fun tail!705 (List!5199) List!5199)

(assert (=> b!536059 (= e!323272 (isPrefix!597 (tail!705 lt!221569) (tail!705 (++!1443 lt!221569 (_2!3398 (v!16111 lt!221561))))))))

(declare-fun b!536058 () Bool)

(declare-fun res!226870 () Bool)

(assert (=> b!536058 (=> (not res!226870) (not e!323272))))

(declare-fun head!1175 (List!5199) C!3500)

(assert (=> b!536058 (= res!226870 (= (head!1175 lt!221569) (head!1175 (++!1443 lt!221569 (_2!3398 (v!16111 lt!221561))))))))

(declare-fun b!536057 () Bool)

(declare-fun e!323270 () Bool)

(assert (=> b!536057 (= e!323270 e!323272)))

(declare-fun res!226868 () Bool)

(assert (=> b!536057 (=> (not res!226868) (not e!323272))))

(assert (=> b!536057 (= res!226868 (not ((_ is Nil!5189) (++!1443 lt!221569 (_2!3398 (v!16111 lt!221561))))))))

(declare-fun d!189507 () Bool)

(declare-fun e!323271 () Bool)

(assert (=> d!189507 e!323271))

(declare-fun res!226869 () Bool)

(assert (=> d!189507 (=> res!226869 e!323271)))

(declare-fun lt!221629 () Bool)

(assert (=> d!189507 (= res!226869 (not lt!221629))))

(assert (=> d!189507 (= lt!221629 e!323270)))

(declare-fun res!226871 () Bool)

(assert (=> d!189507 (=> res!226871 e!323270)))

(assert (=> d!189507 (= res!226871 ((_ is Nil!5189) lt!221569))))

(assert (=> d!189507 (= (isPrefix!597 lt!221569 (++!1443 lt!221569 (_2!3398 (v!16111 lt!221561)))) lt!221629)))

(declare-fun b!536060 () Bool)

(assert (=> b!536060 (= e!323271 (>= (size!4181 (++!1443 lt!221569 (_2!3398 (v!16111 lt!221561)))) (size!4181 lt!221569)))))

(assert (= (and d!189507 (not res!226871)) b!536057))

(assert (= (and b!536057 res!226868) b!536058))

(assert (= (and b!536058 res!226870) b!536059))

(assert (= (and d!189507 (not res!226869)) b!536060))

(declare-fun m!782263 () Bool)

(assert (=> b!536059 m!782263))

(assert (=> b!536059 m!782063))

(declare-fun m!782267 () Bool)

(assert (=> b!536059 m!782267))

(assert (=> b!536059 m!782263))

(assert (=> b!536059 m!782267))

(declare-fun m!782273 () Bool)

(assert (=> b!536059 m!782273))

(declare-fun m!782275 () Bool)

(assert (=> b!536058 m!782275))

(assert (=> b!536058 m!782063))

(declare-fun m!782277 () Bool)

(assert (=> b!536058 m!782277))

(assert (=> b!536060 m!782063))

(declare-fun m!782281 () Bool)

(assert (=> b!536060 m!782281))

(assert (=> b!536060 m!782055))

(assert (=> b!535886 d!189507))

(declare-fun d!189509 () Bool)

(declare-fun res!226876 () Bool)

(declare-fun e!323275 () Bool)

(assert (=> d!189509 (=> (not res!226876) (not e!323275))))

(declare-fun validRegex!433 (Regex!1289) Bool)

(assert (=> d!189509 (= res!226876 (validRegex!433 (regex!955 (rule!1657 token!491))))))

(assert (=> d!189509 (= (ruleValid!175 thiss!22590 (rule!1657 token!491)) e!323275)))

(declare-fun b!536065 () Bool)

(declare-fun res!226877 () Bool)

(assert (=> b!536065 (=> (not res!226877) (not e!323275))))

(declare-fun nullable!338 (Regex!1289) Bool)

(assert (=> b!536065 (= res!226877 (not (nullable!338 (regex!955 (rule!1657 token!491)))))))

(declare-fun b!536066 () Bool)

(assert (=> b!536066 (= e!323275 (not (= (tag!1217 (rule!1657 token!491)) (String!6640 ""))))))

(assert (= (and d!189509 res!226876) b!536065))

(assert (= (and b!536065 res!226877) b!536066))

(declare-fun m!782291 () Bool)

(assert (=> d!189509 m!782291))

(declare-fun m!782293 () Bool)

(assert (=> b!536065 m!782293))

(assert (=> b!535886 d!189509))

(declare-fun d!189515 () Bool)

(declare-fun fromListB!513 (List!5199) BalanceConc!3352)

(assert (=> d!189515 (= (seqFromList!1153 lt!221569) (fromListB!513 lt!221569))))

(declare-fun bs!67332 () Bool)

(assert (= bs!67332 d!189515))

(declare-fun m!782299 () Bool)

(assert (=> bs!67332 m!782299))

(assert (=> b!535886 d!189515))

(declare-fun d!189519 () Bool)

(declare-fun lt!221634 () Int)

(assert (=> d!189519 (>= lt!221634 0)))

(declare-fun e!323276 () Int)

(assert (=> d!189519 (= lt!221634 e!323276)))

(declare-fun c!101985 () Bool)

(assert (=> d!189519 (= c!101985 ((_ is Nil!5189) lt!221569))))

(assert (=> d!189519 (= (size!4181 lt!221569) lt!221634)))

(declare-fun b!536067 () Bool)

(assert (=> b!536067 (= e!323276 0)))

(declare-fun b!536068 () Bool)

(assert (=> b!536068 (= e!323276 (+ 1 (size!4181 (t!74104 lt!221569))))))

(assert (= (and d!189519 c!101985) b!536067))

(assert (= (and d!189519 (not c!101985)) b!536068))

(declare-fun m!782301 () Bool)

(assert (=> b!536068 m!782301))

(assert (=> b!535886 d!189519))

(declare-fun d!189521 () Bool)

(assert (=> d!189521 (= (size!4180 token!491) (size!4181 (originalCharacters!994 token!491)))))

(declare-fun Unit!9064 () Unit!9059)

(assert (=> d!189521 (= (lemmaCharactersSize!34 token!491) Unit!9064)))

(declare-fun bs!67333 () Bool)

(assert (= bs!67333 d!189521))

(assert (=> bs!67333 m!782025))

(assert (=> b!535886 d!189521))

(declare-fun d!189523 () Bool)

(declare-fun e!323280 () Bool)

(assert (=> d!189523 e!323280))

(declare-fun res!226879 () Bool)

(assert (=> d!189523 (=> (not res!226879) (not e!323280))))

(declare-fun lt!221635 () List!5199)

(assert (=> d!189523 (= res!226879 (= (content!911 lt!221635) ((_ map or) (content!911 lt!221569) (content!911 (_2!3398 (v!16111 lt!221561))))))))

(declare-fun e!323279 () List!5199)

(assert (=> d!189523 (= lt!221635 e!323279)))

(declare-fun c!101986 () Bool)

(assert (=> d!189523 (= c!101986 ((_ is Nil!5189) lt!221569))))

(assert (=> d!189523 (= (++!1443 lt!221569 (_2!3398 (v!16111 lt!221561))) lt!221635)))

(declare-fun b!536072 () Bool)

(assert (=> b!536072 (= e!323279 (Cons!5189 (h!10590 lt!221569) (++!1443 (t!74104 lt!221569) (_2!3398 (v!16111 lt!221561)))))))

(declare-fun b!536074 () Bool)

(assert (=> b!536074 (= e!323280 (or (not (= (_2!3398 (v!16111 lt!221561)) Nil!5189)) (= lt!221635 lt!221569)))))

(declare-fun b!536071 () Bool)

(assert (=> b!536071 (= e!323279 (_2!3398 (v!16111 lt!221561)))))

(declare-fun b!536073 () Bool)

(declare-fun res!226878 () Bool)

(assert (=> b!536073 (=> (not res!226878) (not e!323280))))

(assert (=> b!536073 (= res!226878 (= (size!4181 lt!221635) (+ (size!4181 lt!221569) (size!4181 (_2!3398 (v!16111 lt!221561))))))))

(assert (= (and d!189523 c!101986) b!536071))

(assert (= (and d!189523 (not c!101986)) b!536072))

(assert (= (and d!189523 res!226879) b!536073))

(assert (= (and b!536073 res!226878) b!536074))

(declare-fun m!782305 () Bool)

(assert (=> d!189523 m!782305))

(declare-fun m!782307 () Bool)

(assert (=> d!189523 m!782307))

(declare-fun m!782309 () Bool)

(assert (=> d!189523 m!782309))

(declare-fun m!782311 () Bool)

(assert (=> b!536072 m!782311))

(declare-fun m!782315 () Bool)

(assert (=> b!536073 m!782315))

(assert (=> b!536073 m!782055))

(declare-fun m!782317 () Bool)

(assert (=> b!536073 m!782317))

(assert (=> b!535886 d!189523))

(declare-fun b!536077 () Bool)

(declare-fun e!323284 () Bool)

(assert (=> b!536077 (= e!323284 (isPrefix!597 (tail!705 input!2705) (tail!705 lt!221542)))))

(declare-fun b!536076 () Bool)

(declare-fun res!226882 () Bool)

(assert (=> b!536076 (=> (not res!226882) (not e!323284))))

(assert (=> b!536076 (= res!226882 (= (head!1175 input!2705) (head!1175 lt!221542)))))

(declare-fun b!536075 () Bool)

(declare-fun e!323282 () Bool)

(assert (=> b!536075 (= e!323282 e!323284)))

(declare-fun res!226880 () Bool)

(assert (=> b!536075 (=> (not res!226880) (not e!323284))))

(assert (=> b!536075 (= res!226880 (not ((_ is Nil!5189) lt!221542)))))

(declare-fun d!189527 () Bool)

(declare-fun e!323283 () Bool)

(assert (=> d!189527 e!323283))

(declare-fun res!226881 () Bool)

(assert (=> d!189527 (=> res!226881 e!323283)))

(declare-fun lt!221636 () Bool)

(assert (=> d!189527 (= res!226881 (not lt!221636))))

(assert (=> d!189527 (= lt!221636 e!323282)))

(declare-fun res!226883 () Bool)

(assert (=> d!189527 (=> res!226883 e!323282)))

(assert (=> d!189527 (= res!226883 ((_ is Nil!5189) input!2705))))

(assert (=> d!189527 (= (isPrefix!597 input!2705 lt!221542) lt!221636)))

(declare-fun b!536078 () Bool)

(assert (=> b!536078 (= e!323283 (>= (size!4181 lt!221542) (size!4181 input!2705)))))

(assert (= (and d!189527 (not res!226883)) b!536075))

(assert (= (and b!536075 res!226880) b!536076))

(assert (= (and b!536076 res!226882) b!536077))

(assert (= (and d!189527 (not res!226881)) b!536078))

(declare-fun m!782319 () Bool)

(assert (=> b!536077 m!782319))

(declare-fun m!782321 () Bool)

(assert (=> b!536077 m!782321))

(assert (=> b!536077 m!782319))

(assert (=> b!536077 m!782321))

(declare-fun m!782323 () Bool)

(assert (=> b!536077 m!782323))

(declare-fun m!782325 () Bool)

(assert (=> b!536076 m!782325))

(declare-fun m!782327 () Bool)

(assert (=> b!536076 m!782327))

(declare-fun m!782329 () Bool)

(assert (=> b!536078 m!782329))

(declare-fun m!782331 () Bool)

(assert (=> b!536078 m!782331))

(assert (=> b!535886 d!189527))

(declare-fun b!536081 () Bool)

(declare-fun e!323287 () Bool)

(assert (=> b!536081 (= e!323287 (isPrefix!597 (tail!705 lt!221543) (tail!705 lt!221552)))))

(declare-fun b!536080 () Bool)

(declare-fun res!226886 () Bool)

(assert (=> b!536080 (=> (not res!226886) (not e!323287))))

(assert (=> b!536080 (= res!226886 (= (head!1175 lt!221543) (head!1175 lt!221552)))))

(declare-fun b!536079 () Bool)

(declare-fun e!323285 () Bool)

(assert (=> b!536079 (= e!323285 e!323287)))

(declare-fun res!226884 () Bool)

(assert (=> b!536079 (=> (not res!226884) (not e!323287))))

(assert (=> b!536079 (= res!226884 (not ((_ is Nil!5189) lt!221552)))))

(declare-fun d!189529 () Bool)

(declare-fun e!323286 () Bool)

(assert (=> d!189529 e!323286))

(declare-fun res!226885 () Bool)

(assert (=> d!189529 (=> res!226885 e!323286)))

(declare-fun lt!221637 () Bool)

(assert (=> d!189529 (= res!226885 (not lt!221637))))

(assert (=> d!189529 (= lt!221637 e!323285)))

(declare-fun res!226887 () Bool)

(assert (=> d!189529 (=> res!226887 e!323285)))

(assert (=> d!189529 (= res!226887 ((_ is Nil!5189) lt!221543))))

(assert (=> d!189529 (= (isPrefix!597 lt!221543 lt!221552) lt!221637)))

(declare-fun b!536082 () Bool)

(assert (=> b!536082 (= e!323286 (>= (size!4181 lt!221552) (size!4181 lt!221543)))))

(assert (= (and d!189529 (not res!226887)) b!536079))

(assert (= (and b!536079 res!226884) b!536080))

(assert (= (and b!536080 res!226886) b!536081))

(assert (= (and d!189529 (not res!226885)) b!536082))

(declare-fun m!782333 () Bool)

(assert (=> b!536081 m!782333))

(declare-fun m!782335 () Bool)

(assert (=> b!536081 m!782335))

(assert (=> b!536081 m!782333))

(assert (=> b!536081 m!782335))

(declare-fun m!782337 () Bool)

(assert (=> b!536081 m!782337))

(declare-fun m!782339 () Bool)

(assert (=> b!536080 m!782339))

(declare-fun m!782341 () Bool)

(assert (=> b!536080 m!782341))

(declare-fun m!782343 () Bool)

(assert (=> b!536082 m!782343))

(assert (=> b!536082 m!782041))

(assert (=> b!535886 d!189529))

(declare-fun d!189531 () Bool)

(assert (=> d!189531 (ruleValid!175 thiss!22590 (rule!1657 (_1!3398 (v!16111 lt!221561))))))

(declare-fun lt!221643 () Unit!9059)

(declare-fun choose!3777 (LexerInterface!841 Rule!1710 List!5201) Unit!9059)

(assert (=> d!189531 (= lt!221643 (choose!3777 thiss!22590 (rule!1657 (_1!3398 (v!16111 lt!221561))) rules!3103))))

(declare-fun contains!1205 (List!5201 Rule!1710) Bool)

(assert (=> d!189531 (contains!1205 rules!3103 (rule!1657 (_1!3398 (v!16111 lt!221561))))))

(assert (=> d!189531 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!34 thiss!22590 (rule!1657 (_1!3398 (v!16111 lt!221561))) rules!3103) lt!221643)))

(declare-fun bs!67334 () Bool)

(assert (= bs!67334 d!189531))

(assert (=> bs!67334 m!782039))

(declare-fun m!782347 () Bool)

(assert (=> bs!67334 m!782347))

(declare-fun m!782351 () Bool)

(assert (=> bs!67334 m!782351))

(assert (=> b!535886 d!189531))

(declare-fun d!189533 () Bool)

(declare-fun res!226888 () Bool)

(declare-fun e!323291 () Bool)

(assert (=> d!189533 (=> (not res!226888) (not e!323291))))

(assert (=> d!189533 (= res!226888 (validRegex!433 (regex!955 (rule!1657 (_1!3398 (v!16111 lt!221561))))))))

(assert (=> d!189533 (= (ruleValid!175 thiss!22590 (rule!1657 (_1!3398 (v!16111 lt!221561)))) e!323291)))

(declare-fun b!536089 () Bool)

(declare-fun res!226889 () Bool)

(assert (=> b!536089 (=> (not res!226889) (not e!323291))))

(assert (=> b!536089 (= res!226889 (not (nullable!338 (regex!955 (rule!1657 (_1!3398 (v!16111 lt!221561)))))))))

(declare-fun b!536090 () Bool)

(assert (=> b!536090 (= e!323291 (not (= (tag!1217 (rule!1657 (_1!3398 (v!16111 lt!221561)))) (String!6640 ""))))))

(assert (= (and d!189533 res!226888) b!536089))

(assert (= (and b!536089 res!226889) b!536090))

(declare-fun m!782355 () Bool)

(assert (=> d!189533 m!782355))

(declare-fun m!782357 () Bool)

(assert (=> b!536089 m!782357))

(assert (=> b!535886 d!189533))

(declare-fun d!189537 () Bool)

(assert (=> d!189537 (and (= lt!221543 input!2705) (= suffix!1342 suffix!1342))))

(declare-fun lt!221651 () Unit!9059)

(declare-fun choose!3779 (List!5199 List!5199 List!5199 List!5199) Unit!9059)

(assert (=> d!189537 (= lt!221651 (choose!3779 lt!221543 suffix!1342 input!2705 suffix!1342))))

(assert (=> d!189537 (= (++!1443 lt!221543 suffix!1342) (++!1443 input!2705 suffix!1342))))

(assert (=> d!189537 (= (lemmaConcatSameAndSameSizesThenSameLists!40 lt!221543 suffix!1342 input!2705 suffix!1342) lt!221651)))

(declare-fun bs!67335 () Bool)

(assert (= bs!67335 d!189537))

(declare-fun m!782383 () Bool)

(assert (=> bs!67335 m!782383))

(assert (=> bs!67335 m!782099))

(assert (=> bs!67335 m!782023))

(assert (=> b!535886 d!189537))

(declare-fun b!536102 () Bool)

(declare-fun e!323298 () Bool)

(assert (=> b!536102 (= e!323298 (isPrefix!597 (tail!705 input!2705) (tail!705 input!2705)))))

(declare-fun b!536101 () Bool)

(declare-fun res!226899 () Bool)

(assert (=> b!536101 (=> (not res!226899) (not e!323298))))

(assert (=> b!536101 (= res!226899 (= (head!1175 input!2705) (head!1175 input!2705)))))

(declare-fun b!536100 () Bool)

(declare-fun e!323296 () Bool)

(assert (=> b!536100 (= e!323296 e!323298)))

(declare-fun res!226897 () Bool)

(assert (=> b!536100 (=> (not res!226897) (not e!323298))))

(assert (=> b!536100 (= res!226897 (not ((_ is Nil!5189) input!2705)))))

(declare-fun d!189539 () Bool)

(declare-fun e!323297 () Bool)

(assert (=> d!189539 e!323297))

(declare-fun res!226898 () Bool)

(assert (=> d!189539 (=> res!226898 e!323297)))

(declare-fun lt!221652 () Bool)

(assert (=> d!189539 (= res!226898 (not lt!221652))))

(assert (=> d!189539 (= lt!221652 e!323296)))

(declare-fun res!226900 () Bool)

(assert (=> d!189539 (=> res!226900 e!323296)))

(assert (=> d!189539 (= res!226900 ((_ is Nil!5189) input!2705))))

(assert (=> d!189539 (= (isPrefix!597 input!2705 input!2705) lt!221652)))

(declare-fun b!536103 () Bool)

(assert (=> b!536103 (= e!323297 (>= (size!4181 input!2705) (size!4181 input!2705)))))

(assert (= (and d!189539 (not res!226900)) b!536100))

(assert (= (and b!536100 res!226897) b!536101))

(assert (= (and b!536101 res!226899) b!536102))

(assert (= (and d!189539 (not res!226898)) b!536103))

(assert (=> b!536102 m!782319))

(assert (=> b!536102 m!782319))

(assert (=> b!536102 m!782319))

(assert (=> b!536102 m!782319))

(declare-fun m!782401 () Bool)

(assert (=> b!536102 m!782401))

(assert (=> b!536101 m!782325))

(assert (=> b!536101 m!782325))

(assert (=> b!536103 m!782331))

(assert (=> b!536103 m!782331))

(assert (=> b!535886 d!189539))

(declare-fun d!189543 () Bool)

(declare-fun lt!221653 () BalanceConc!3352)

(assert (=> d!189543 (= (list!2157 lt!221653) (originalCharacters!994 (_1!3398 (v!16111 lt!221561))))))

(assert (=> d!189543 (= lt!221653 (dynLambda!3088 (toChars!1661 (transformation!955 (rule!1657 (_1!3398 (v!16111 lt!221561))))) (value!32084 (_1!3398 (v!16111 lt!221561)))))))

(assert (=> d!189543 (= (charsOf!584 (_1!3398 (v!16111 lt!221561))) lt!221653)))

(declare-fun b_lambda!20685 () Bool)

(assert (=> (not b_lambda!20685) (not d!189543)))

(declare-fun t!74120 () Bool)

(declare-fun tb!47487 () Bool)

(assert (=> (and b!535883 (= (toChars!1661 (transformation!955 (h!10592 rules!3103))) (toChars!1661 (transformation!955 (rule!1657 (_1!3398 (v!16111 lt!221561)))))) t!74120) tb!47487))

(declare-fun b!536104 () Bool)

(declare-fun e!323299 () Bool)

(declare-fun tp!171045 () Bool)

(assert (=> b!536104 (= e!323299 (and (inv!6518 (c!101955 (dynLambda!3088 (toChars!1661 (transformation!955 (rule!1657 (_1!3398 (v!16111 lt!221561))))) (value!32084 (_1!3398 (v!16111 lt!221561)))))) tp!171045))))

(declare-fun result!53008 () Bool)

(assert (=> tb!47487 (= result!53008 (and (inv!6519 (dynLambda!3088 (toChars!1661 (transformation!955 (rule!1657 (_1!3398 (v!16111 lt!221561))))) (value!32084 (_1!3398 (v!16111 lt!221561))))) e!323299))))

(assert (= tb!47487 b!536104))

(declare-fun m!782403 () Bool)

(assert (=> b!536104 m!782403))

(declare-fun m!782405 () Bool)

(assert (=> tb!47487 m!782405))

(assert (=> d!189543 t!74120))

(declare-fun b_and!52431 () Bool)

(assert (= b_and!52423 (and (=> t!74120 result!53008) b_and!52431)))

(declare-fun t!74122 () Bool)

(declare-fun tb!47489 () Bool)

(assert (=> (and b!535888 (= (toChars!1661 (transformation!955 (rule!1657 token!491))) (toChars!1661 (transformation!955 (rule!1657 (_1!3398 (v!16111 lt!221561)))))) t!74122) tb!47489))

(declare-fun result!53010 () Bool)

(assert (= result!53010 result!53008))

(assert (=> d!189543 t!74122))

(declare-fun b_and!52433 () Bool)

(assert (= b_and!52425 (and (=> t!74122 result!53010) b_and!52433)))

(declare-fun m!782407 () Bool)

(assert (=> d!189543 m!782407))

(declare-fun m!782409 () Bool)

(assert (=> d!189543 m!782409))

(assert (=> b!535886 d!189543))

(declare-fun d!189545 () Bool)

(declare-fun dynLambda!3089 (Int BalanceConc!3352) TokenValue!979)

(assert (=> d!189545 (= (apply!1230 (transformation!955 (rule!1657 (_1!3398 (v!16111 lt!221561)))) (seqFromList!1153 lt!221569)) (dynLambda!3089 (toValue!1802 (transformation!955 (rule!1657 (_1!3398 (v!16111 lt!221561))))) (seqFromList!1153 lt!221569)))))

(declare-fun b_lambda!20687 () Bool)

(assert (=> (not b_lambda!20687) (not d!189545)))

(declare-fun t!74124 () Bool)

(declare-fun tb!47491 () Bool)

(assert (=> (and b!535883 (= (toValue!1802 (transformation!955 (h!10592 rules!3103))) (toValue!1802 (transformation!955 (rule!1657 (_1!3398 (v!16111 lt!221561)))))) t!74124) tb!47491))

(declare-fun result!53012 () Bool)

(assert (=> tb!47491 (= result!53012 (inv!21 (dynLambda!3089 (toValue!1802 (transformation!955 (rule!1657 (_1!3398 (v!16111 lt!221561))))) (seqFromList!1153 lt!221569))))))

(declare-fun m!782413 () Bool)

(assert (=> tb!47491 m!782413))

(assert (=> d!189545 t!74124))

(declare-fun b_and!52435 () Bool)

(assert (= b_and!52411 (and (=> t!74124 result!53012) b_and!52435)))

(declare-fun t!74126 () Bool)

(declare-fun tb!47493 () Bool)

(assert (=> (and b!535888 (= (toValue!1802 (transformation!955 (rule!1657 token!491))) (toValue!1802 (transformation!955 (rule!1657 (_1!3398 (v!16111 lt!221561)))))) t!74126) tb!47493))

(declare-fun result!53016 () Bool)

(assert (= result!53016 result!53012))

(assert (=> d!189545 t!74126))

(declare-fun b_and!52437 () Bool)

(assert (= b_and!52415 (and (=> t!74126 result!53016) b_and!52437)))

(assert (=> d!189545 m!782069))

(declare-fun m!782415 () Bool)

(assert (=> d!189545 m!782415))

(assert (=> b!535886 d!189545))

(declare-fun d!189549 () Bool)

(assert (=> d!189549 (= (list!2157 (charsOf!584 (_1!3398 (v!16111 lt!221561)))) (list!2159 (c!101955 (charsOf!584 (_1!3398 (v!16111 lt!221561))))))))

(declare-fun bs!67337 () Bool)

(assert (= bs!67337 d!189549))

(declare-fun m!782417 () Bool)

(assert (=> bs!67337 m!782417))

(assert (=> b!535886 d!189549))

(declare-fun d!189551 () Bool)

(assert (=> d!189551 (ruleValid!175 thiss!22590 (rule!1657 token!491))))

(declare-fun lt!221657 () Unit!9059)

(assert (=> d!189551 (= lt!221657 (choose!3777 thiss!22590 (rule!1657 token!491) rules!3103))))

(assert (=> d!189551 (contains!1205 rules!3103 (rule!1657 token!491))))

(assert (=> d!189551 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!34 thiss!22590 (rule!1657 token!491) rules!3103) lt!221657)))

(declare-fun bs!67338 () Bool)

(assert (= bs!67338 d!189551))

(assert (=> bs!67338 m!782035))

(declare-fun m!782419 () Bool)

(assert (=> bs!67338 m!782419))

(declare-fun m!782423 () Bool)

(assert (=> bs!67338 m!782423))

(assert (=> b!535886 d!189551))

(declare-fun d!189553 () Bool)

(assert (=> d!189553 (isPrefix!597 input!2705 (++!1443 input!2705 suffix!1342))))

(declare-fun lt!221658 () Unit!9059)

(assert (=> d!189553 (= lt!221658 (choose!3775 input!2705 suffix!1342))))

(assert (=> d!189553 (= (lemmaConcatTwoListThenFirstIsPrefix!448 input!2705 suffix!1342) lt!221658)))

(declare-fun bs!67339 () Bool)

(assert (= bs!67339 d!189553))

(assert (=> bs!67339 m!782023))

(assert (=> bs!67339 m!782023))

(declare-fun m!782425 () Bool)

(assert (=> bs!67339 m!782425))

(declare-fun m!782427 () Bool)

(assert (=> bs!67339 m!782427))

(assert (=> b!535886 d!189553))

(declare-fun d!189557 () Bool)

(assert (=> d!189557 (isPrefix!597 input!2705 input!2705)))

(declare-fun lt!221661 () Unit!9059)

(declare-fun choose!3781 (List!5199 List!5199) Unit!9059)

(assert (=> d!189557 (= lt!221661 (choose!3781 input!2705 input!2705))))

(assert (=> d!189557 (= (lemmaIsPrefixRefl!337 input!2705 input!2705) lt!221661)))

(declare-fun bs!67340 () Bool)

(assert (= bs!67340 d!189557))

(assert (=> bs!67340 m!782061))

(declare-fun m!782433 () Bool)

(assert (=> bs!67340 m!782433))

(assert (=> b!535886 d!189557))

(declare-fun d!189567 () Bool)

(declare-fun lt!221666 () List!5199)

(assert (=> d!189567 (= (++!1443 lt!221569 lt!221666) input!2705)))

(declare-fun e!323310 () List!5199)

(assert (=> d!189567 (= lt!221666 e!323310)))

(declare-fun c!101995 () Bool)

(assert (=> d!189567 (= c!101995 ((_ is Cons!5189) lt!221569))))

(assert (=> d!189567 (>= (size!4181 input!2705) (size!4181 lt!221569))))

(assert (=> d!189567 (= (getSuffix!120 input!2705 lt!221569) lt!221666)))

(declare-fun b!536120 () Bool)

(assert (=> b!536120 (= e!323310 (getSuffix!120 (tail!705 input!2705) (t!74104 lt!221569)))))

(declare-fun b!536121 () Bool)

(assert (=> b!536121 (= e!323310 input!2705)))

(assert (= (and d!189567 c!101995) b!536120))

(assert (= (and d!189567 (not c!101995)) b!536121))

(declare-fun m!782435 () Bool)

(assert (=> d!189567 m!782435))

(assert (=> d!189567 m!782331))

(assert (=> d!189567 m!782055))

(assert (=> b!536120 m!782319))

(assert (=> b!536120 m!782319))

(declare-fun m!782437 () Bool)

(assert (=> b!536120 m!782437))

(assert (=> b!535886 d!189567))

(declare-fun d!189569 () Bool)

(assert (=> d!189569 (= (_2!3398 (v!16111 lt!221561)) lt!221557)))

(declare-fun lt!221675 () Unit!9059)

(declare-fun choose!3782 (List!5199 List!5199 List!5199 List!5199 List!5199) Unit!9059)

(assert (=> d!189569 (= lt!221675 (choose!3782 lt!221569 (_2!3398 (v!16111 lt!221561)) lt!221569 lt!221557 input!2705))))

(assert (=> d!189569 (isPrefix!597 lt!221569 input!2705)))

(assert (=> d!189569 (= (lemmaSamePrefixThenSameSuffix!324 lt!221569 (_2!3398 (v!16111 lt!221561)) lt!221569 lt!221557 input!2705) lt!221675)))

(declare-fun bs!67342 () Bool)

(assert (= bs!67342 d!189569))

(declare-fun m!782453 () Bool)

(assert (=> bs!67342 m!782453))

(declare-fun m!782455 () Bool)

(assert (=> bs!67342 m!782455))

(assert (=> b!535886 d!189569))

(declare-fun d!189575 () Bool)

(declare-fun e!323318 () Bool)

(assert (=> d!189575 e!323318))

(declare-fun res!226917 () Bool)

(assert (=> d!189575 (=> (not res!226917) (not e!323318))))

(assert (=> d!189575 (= res!226917 (semiInverseModEq!377 (toChars!1661 (transformation!955 (rule!1657 (_1!3398 (v!16111 lt!221561))))) (toValue!1802 (transformation!955 (rule!1657 (_1!3398 (v!16111 lt!221561)))))))))

(declare-fun Unit!9067 () Unit!9059)

(assert (=> d!189575 (= (lemmaInv!103 (transformation!955 (rule!1657 (_1!3398 (v!16111 lt!221561))))) Unit!9067)))

(declare-fun b!536137 () Bool)

(assert (=> b!536137 (= e!323318 (equivClasses!360 (toChars!1661 (transformation!955 (rule!1657 (_1!3398 (v!16111 lt!221561))))) (toValue!1802 (transformation!955 (rule!1657 (_1!3398 (v!16111 lt!221561)))))))))

(assert (= (and d!189575 res!226917) b!536137))

(declare-fun m!782487 () Bool)

(assert (=> d!189575 m!782487))

(declare-fun m!782489 () Bool)

(assert (=> b!536137 m!782489))

(assert (=> b!535886 d!189575))

(declare-fun b!536144 () Bool)

(declare-fun e!323323 () Bool)

(assert (=> b!536144 (= e!323323 (isPrefix!597 (tail!705 input!2705) (tail!705 lt!221552)))))

(declare-fun b!536143 () Bool)

(declare-fun res!226922 () Bool)

(assert (=> b!536143 (=> (not res!226922) (not e!323323))))

(assert (=> b!536143 (= res!226922 (= (head!1175 input!2705) (head!1175 lt!221552)))))

(declare-fun b!536142 () Bool)

(declare-fun e!323321 () Bool)

(assert (=> b!536142 (= e!323321 e!323323)))

(declare-fun res!226920 () Bool)

(assert (=> b!536142 (=> (not res!226920) (not e!323323))))

(assert (=> b!536142 (= res!226920 (not ((_ is Nil!5189) lt!221552)))))

(declare-fun d!189579 () Bool)

(declare-fun e!323322 () Bool)

(assert (=> d!189579 e!323322))

(declare-fun res!226921 () Bool)

(assert (=> d!189579 (=> res!226921 e!323322)))

(declare-fun lt!221677 () Bool)

(assert (=> d!189579 (= res!226921 (not lt!221677))))

(assert (=> d!189579 (= lt!221677 e!323321)))

(declare-fun res!226923 () Bool)

(assert (=> d!189579 (=> res!226923 e!323321)))

(assert (=> d!189579 (= res!226923 ((_ is Nil!5189) input!2705))))

(assert (=> d!189579 (= (isPrefix!597 input!2705 lt!221552) lt!221677)))

(declare-fun b!536145 () Bool)

(assert (=> b!536145 (= e!323322 (>= (size!4181 lt!221552) (size!4181 input!2705)))))

(assert (= (and d!189579 (not res!226923)) b!536142))

(assert (= (and b!536142 res!226920) b!536143))

(assert (= (and b!536143 res!226922) b!536144))

(assert (= (and d!189579 (not res!226921)) b!536145))

(assert (=> b!536144 m!782319))

(assert (=> b!536144 m!782335))

(assert (=> b!536144 m!782319))

(assert (=> b!536144 m!782335))

(declare-fun m!782499 () Bool)

(assert (=> b!536144 m!782499))

(assert (=> b!536143 m!782325))

(assert (=> b!536143 m!782341))

(assert (=> b!536145 m!782343))

(assert (=> b!536145 m!782331))

(assert (=> b!535886 d!189579))

(declare-fun d!189583 () Bool)

(declare-fun e!323325 () Bool)

(assert (=> d!189583 e!323325))

(declare-fun res!226924 () Bool)

(assert (=> d!189583 (=> (not res!226924) (not e!323325))))

(assert (=> d!189583 (= res!226924 (semiInverseModEq!377 (toChars!1661 (transformation!955 (rule!1657 token!491))) (toValue!1802 (transformation!955 (rule!1657 token!491)))))))

(declare-fun Unit!9068 () Unit!9059)

(assert (=> d!189583 (= (lemmaInv!103 (transformation!955 (rule!1657 token!491))) Unit!9068)))

(declare-fun b!536148 () Bool)

(assert (=> b!536148 (= e!323325 (equivClasses!360 (toChars!1661 (transformation!955 (rule!1657 token!491))) (toValue!1802 (transformation!955 (rule!1657 token!491)))))))

(assert (= (and d!189583 res!226924) b!536148))

(assert (=> d!189583 m!782219))

(assert (=> b!536148 m!782221))

(assert (=> b!535886 d!189583))

(declare-fun d!189589 () Bool)

(declare-fun isEmpty!3755 (Option!1305) Bool)

(assert (=> d!189589 (= (isDefined!1117 lt!221560) (not (isEmpty!3755 lt!221560)))))

(declare-fun bs!67344 () Bool)

(assert (= bs!67344 d!189589))

(declare-fun m!782505 () Bool)

(assert (=> bs!67344 m!782505))

(assert (=> b!535875 d!189589))

(declare-fun b!536250 () Bool)

(declare-fun res!226984 () Bool)

(declare-fun e!323388 () Bool)

(assert (=> b!536250 (=> (not res!226984) (not e!323388))))

(declare-fun lt!221717 () Option!1305)

(assert (=> b!536250 (= res!226984 (= (value!32084 (_1!3398 (get!1947 lt!221717))) (apply!1230 (transformation!955 (rule!1657 (_1!3398 (get!1947 lt!221717)))) (seqFromList!1153 (originalCharacters!994 (_1!3398 (get!1947 lt!221717)))))))))

(declare-fun b!536251 () Bool)

(declare-fun res!226987 () Bool)

(assert (=> b!536251 (=> (not res!226987) (not e!323388))))

(declare-fun matchR!454 (Regex!1289 List!5199) Bool)

(assert (=> b!536251 (= res!226987 (matchR!454 (regex!955 (rule!1657 (_1!3398 (get!1947 lt!221717)))) (list!2157 (charsOf!584 (_1!3398 (get!1947 lt!221717))))))))

(declare-fun b!536252 () Bool)

(declare-fun e!323390 () Bool)

(assert (=> b!536252 (= e!323390 e!323388)))

(declare-fun res!226982 () Bool)

(assert (=> b!536252 (=> (not res!226982) (not e!323388))))

(assert (=> b!536252 (= res!226982 (isDefined!1117 lt!221717))))

(declare-fun b!536253 () Bool)

(declare-fun e!323389 () Option!1305)

(declare-fun lt!221719 () Option!1305)

(declare-fun lt!221720 () Option!1305)

(assert (=> b!536253 (= e!323389 (ite (and ((_ is None!1304) lt!221719) ((_ is None!1304) lt!221720)) None!1304 (ite ((_ is None!1304) lt!221720) lt!221719 (ite ((_ is None!1304) lt!221719) lt!221720 (ite (>= (size!4180 (_1!3398 (v!16111 lt!221719))) (size!4180 (_1!3398 (v!16111 lt!221720)))) lt!221719 lt!221720)))))))

(declare-fun call!38210 () Option!1305)

(assert (=> b!536253 (= lt!221719 call!38210)))

(assert (=> b!536253 (= lt!221720 (maxPrefix!539 thiss!22590 (t!74106 rules!3103) lt!221542))))

(declare-fun b!536254 () Bool)

(assert (=> b!536254 (= e!323389 call!38210)))

(declare-fun b!536255 () Bool)

(declare-fun res!226983 () Bool)

(assert (=> b!536255 (=> (not res!226983) (not e!323388))))

(assert (=> b!536255 (= res!226983 (= (list!2157 (charsOf!584 (_1!3398 (get!1947 lt!221717)))) (originalCharacters!994 (_1!3398 (get!1947 lt!221717)))))))

(declare-fun b!536256 () Bool)

(declare-fun res!226981 () Bool)

(assert (=> b!536256 (=> (not res!226981) (not e!323388))))

(assert (=> b!536256 (= res!226981 (< (size!4181 (_2!3398 (get!1947 lt!221717))) (size!4181 lt!221542)))))

(declare-fun bm!38205 () Bool)

(assert (=> bm!38205 (= call!38210 (maxPrefixOneRule!254 thiss!22590 (h!10592 rules!3103) lt!221542))))

(declare-fun b!536258 () Bool)

(assert (=> b!536258 (= e!323388 (contains!1205 rules!3103 (rule!1657 (_1!3398 (get!1947 lt!221717)))))))

(declare-fun d!189591 () Bool)

(assert (=> d!189591 e!323390))

(declare-fun res!226986 () Bool)

(assert (=> d!189591 (=> res!226986 e!323390)))

(assert (=> d!189591 (= res!226986 (isEmpty!3755 lt!221717))))

(assert (=> d!189591 (= lt!221717 e!323389)))

(declare-fun c!102006 () Bool)

(assert (=> d!189591 (= c!102006 (and ((_ is Cons!5191) rules!3103) ((_ is Nil!5191) (t!74106 rules!3103))))))

(declare-fun lt!221721 () Unit!9059)

(declare-fun lt!221718 () Unit!9059)

(assert (=> d!189591 (= lt!221721 lt!221718)))

(assert (=> d!189591 (isPrefix!597 lt!221542 lt!221542)))

(assert (=> d!189591 (= lt!221718 (lemmaIsPrefixRefl!337 lt!221542 lt!221542))))

(assert (=> d!189591 (rulesValidInductive!332 thiss!22590 rules!3103)))

(assert (=> d!189591 (= (maxPrefix!539 thiss!22590 rules!3103 lt!221542) lt!221717)))

(declare-fun b!536257 () Bool)

(declare-fun res!226985 () Bool)

(assert (=> b!536257 (=> (not res!226985) (not e!323388))))

(assert (=> b!536257 (= res!226985 (= (++!1443 (list!2157 (charsOf!584 (_1!3398 (get!1947 lt!221717)))) (_2!3398 (get!1947 lt!221717))) lt!221542))))

(assert (= (and d!189591 c!102006) b!536254))

(assert (= (and d!189591 (not c!102006)) b!536253))

(assert (= (or b!536254 b!536253) bm!38205))

(assert (= (and d!189591 (not res!226986)) b!536252))

(assert (= (and b!536252 res!226982) b!536255))

(assert (= (and b!536255 res!226983) b!536256))

(assert (= (and b!536256 res!226981) b!536257))

(assert (= (and b!536257 res!226985) b!536250))

(assert (= (and b!536250 res!226984) b!536251))

(assert (= (and b!536251 res!226987) b!536258))

(declare-fun m!782619 () Bool)

(assert (=> b!536253 m!782619))

(declare-fun m!782621 () Bool)

(assert (=> b!536255 m!782621))

(declare-fun m!782623 () Bool)

(assert (=> b!536255 m!782623))

(assert (=> b!536255 m!782623))

(declare-fun m!782625 () Bool)

(assert (=> b!536255 m!782625))

(assert (=> b!536250 m!782621))

(declare-fun m!782627 () Bool)

(assert (=> b!536250 m!782627))

(assert (=> b!536250 m!782627))

(declare-fun m!782629 () Bool)

(assert (=> b!536250 m!782629))

(declare-fun m!782631 () Bool)

(assert (=> b!536252 m!782631))

(declare-fun m!782633 () Bool)

(assert (=> bm!38205 m!782633))

(assert (=> b!536251 m!782621))

(assert (=> b!536251 m!782623))

(assert (=> b!536251 m!782623))

(assert (=> b!536251 m!782625))

(assert (=> b!536251 m!782625))

(declare-fun m!782635 () Bool)

(assert (=> b!536251 m!782635))

(assert (=> b!536257 m!782621))

(assert (=> b!536257 m!782623))

(assert (=> b!536257 m!782623))

(assert (=> b!536257 m!782625))

(assert (=> b!536257 m!782625))

(declare-fun m!782637 () Bool)

(assert (=> b!536257 m!782637))

(declare-fun m!782639 () Bool)

(assert (=> d!189591 m!782639))

(declare-fun m!782641 () Bool)

(assert (=> d!189591 m!782641))

(declare-fun m!782643 () Bool)

(assert (=> d!189591 m!782643))

(assert (=> d!189591 m!782109))

(assert (=> b!536258 m!782621))

(declare-fun m!782645 () Bool)

(assert (=> b!536258 m!782645))

(assert (=> b!536256 m!782621))

(declare-fun m!782647 () Bool)

(assert (=> b!536256 m!782647))

(assert (=> b!536256 m!782329))

(assert (=> b!535875 d!189591))

(declare-fun d!189643 () Bool)

(declare-fun e!323393 () Bool)

(assert (=> d!189643 e!323393))

(declare-fun res!226989 () Bool)

(assert (=> d!189643 (=> (not res!226989) (not e!323393))))

(declare-fun lt!221722 () List!5199)

(assert (=> d!189643 (= res!226989 (= (content!911 lt!221722) ((_ map or) (content!911 input!2705) (content!911 suffix!1342))))))

(declare-fun e!323392 () List!5199)

(assert (=> d!189643 (= lt!221722 e!323392)))

(declare-fun c!102007 () Bool)

(assert (=> d!189643 (= c!102007 ((_ is Nil!5189) input!2705))))

(assert (=> d!189643 (= (++!1443 input!2705 suffix!1342) lt!221722)))

(declare-fun b!536264 () Bool)

(assert (=> b!536264 (= e!323392 (Cons!5189 (h!10590 input!2705) (++!1443 (t!74104 input!2705) suffix!1342)))))

(declare-fun b!536266 () Bool)

(assert (=> b!536266 (= e!323393 (or (not (= suffix!1342 Nil!5189)) (= lt!221722 input!2705)))))

(declare-fun b!536263 () Bool)

(assert (=> b!536263 (= e!323392 suffix!1342)))

(declare-fun b!536265 () Bool)

(declare-fun res!226988 () Bool)

(assert (=> b!536265 (=> (not res!226988) (not e!323393))))

(assert (=> b!536265 (= res!226988 (= (size!4181 lt!221722) (+ (size!4181 input!2705) (size!4181 suffix!1342))))))

(assert (= (and d!189643 c!102007) b!536263))

(assert (= (and d!189643 (not c!102007)) b!536264))

(assert (= (and d!189643 res!226989) b!536265))

(assert (= (and b!536265 res!226988) b!536266))

(declare-fun m!782649 () Bool)

(assert (=> d!189643 m!782649))

(declare-fun m!782651 () Bool)

(assert (=> d!189643 m!782651))

(assert (=> d!189643 m!782197))

(declare-fun m!782653 () Bool)

(assert (=> b!536264 m!782653))

(declare-fun m!782655 () Bool)

(assert (=> b!536265 m!782655))

(assert (=> b!536265 m!782331))

(assert (=> b!536265 m!782203))

(assert (=> b!535875 d!189643))

(declare-fun d!189645 () Bool)

(declare-fun res!226994 () Bool)

(declare-fun e!323396 () Bool)

(assert (=> d!189645 (=> (not res!226994) (not e!323396))))

(assert (=> d!189645 (= res!226994 (not (isEmpty!3753 (originalCharacters!994 token!491))))))

(assert (=> d!189645 (= (inv!6515 token!491) e!323396)))

(declare-fun b!536271 () Bool)

(declare-fun res!226995 () Bool)

(assert (=> b!536271 (=> (not res!226995) (not e!323396))))

(assert (=> b!536271 (= res!226995 (= (originalCharacters!994 token!491) (list!2157 (dynLambda!3088 (toChars!1661 (transformation!955 (rule!1657 token!491))) (value!32084 token!491)))))))

(declare-fun b!536272 () Bool)

(assert (=> b!536272 (= e!323396 (= (size!4180 token!491) (size!4181 (originalCharacters!994 token!491))))))

(assert (= (and d!189645 res!226994) b!536271))

(assert (= (and b!536271 res!226995) b!536272))

(declare-fun b_lambda!20701 () Bool)

(assert (=> (not b_lambda!20701) (not b!536271)))

(assert (=> b!536271 t!74112))

(declare-fun b_and!52455 () Bool)

(assert (= b_and!52431 (and (=> t!74112 result!52996) b_and!52455)))

(assert (=> b!536271 t!74114))

(declare-fun b_and!52457 () Bool)

(assert (= b_and!52433 (and (=> t!74114 result!53000) b_and!52457)))

(declare-fun m!782657 () Bool)

(assert (=> d!189645 m!782657))

(assert (=> b!536271 m!782217))

(assert (=> b!536271 m!782217))

(declare-fun m!782659 () Bool)

(assert (=> b!536271 m!782659))

(assert (=> b!536272 m!782025))

(assert (=> start!49404 d!189645))

(declare-fun b!536291 () Bool)

(declare-fun res!227011 () Bool)

(declare-fun e!323406 () Bool)

(assert (=> b!536291 (=> (not res!227011) (not e!323406))))

(declare-fun lt!221736 () Option!1305)

(assert (=> b!536291 (= res!227011 (< (size!4181 (_2!3398 (get!1947 lt!221736))) (size!4181 input!2705)))))

(declare-fun d!189647 () Bool)

(declare-fun e!323407 () Bool)

(assert (=> d!189647 e!323407))

(declare-fun res!227013 () Bool)

(assert (=> d!189647 (=> res!227013 e!323407)))

(assert (=> d!189647 (= res!227013 (isEmpty!3755 lt!221736))))

(declare-fun e!323408 () Option!1305)

(assert (=> d!189647 (= lt!221736 e!323408)))

(declare-fun c!102010 () Bool)

(declare-datatypes ((tuple2!6272 0))(
  ( (tuple2!6273 (_1!3400 List!5199) (_2!3400 List!5199)) )
))
(declare-fun lt!221735 () tuple2!6272)

(assert (=> d!189647 (= c!102010 (isEmpty!3753 (_1!3400 lt!221735)))))

(declare-fun findLongestMatch!102 (Regex!1289 List!5199) tuple2!6272)

(assert (=> d!189647 (= lt!221735 (findLongestMatch!102 (regex!955 (rule!1657 (_1!3398 (v!16111 lt!221561)))) input!2705))))

(assert (=> d!189647 (ruleValid!175 thiss!22590 (rule!1657 (_1!3398 (v!16111 lt!221561))))))

(assert (=> d!189647 (= (maxPrefixOneRule!254 thiss!22590 (rule!1657 (_1!3398 (v!16111 lt!221561))) input!2705) lt!221736)))

(declare-fun b!536292 () Bool)

(declare-fun e!323405 () Bool)

(declare-fun findLongestMatchInner!123 (Regex!1289 List!5199 Int List!5199 List!5199 Int) tuple2!6272)

(assert (=> b!536292 (= e!323405 (matchR!454 (regex!955 (rule!1657 (_1!3398 (v!16111 lt!221561)))) (_1!3400 (findLongestMatchInner!123 (regex!955 (rule!1657 (_1!3398 (v!16111 lt!221561)))) Nil!5189 (size!4181 Nil!5189) input!2705 input!2705 (size!4181 input!2705)))))))

(declare-fun b!536293 () Bool)

(assert (=> b!536293 (= e!323407 e!323406)))

(declare-fun res!227010 () Bool)

(assert (=> b!536293 (=> (not res!227010) (not e!323406))))

(assert (=> b!536293 (= res!227010 (matchR!454 (regex!955 (rule!1657 (_1!3398 (v!16111 lt!221561)))) (list!2157 (charsOf!584 (_1!3398 (get!1947 lt!221736))))))))

(declare-fun b!536294 () Bool)

(assert (=> b!536294 (= e!323406 (= (size!4180 (_1!3398 (get!1947 lt!221736))) (size!4181 (originalCharacters!994 (_1!3398 (get!1947 lt!221736))))))))

(declare-fun b!536295 () Bool)

(declare-fun size!4183 (BalanceConc!3352) Int)

(assert (=> b!536295 (= e!323408 (Some!1304 (tuple2!6269 (Token!1647 (apply!1230 (transformation!955 (rule!1657 (_1!3398 (v!16111 lt!221561)))) (seqFromList!1153 (_1!3400 lt!221735))) (rule!1657 (_1!3398 (v!16111 lt!221561))) (size!4183 (seqFromList!1153 (_1!3400 lt!221735))) (_1!3400 lt!221735)) (_2!3400 lt!221735))))))

(declare-fun lt!221733 () Unit!9059)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!107 (Regex!1289 List!5199) Unit!9059)

(assert (=> b!536295 (= lt!221733 (longestMatchIsAcceptedByMatchOrIsEmpty!107 (regex!955 (rule!1657 (_1!3398 (v!16111 lt!221561)))) input!2705))))

(declare-fun res!227012 () Bool)

(assert (=> b!536295 (= res!227012 (isEmpty!3753 (_1!3400 (findLongestMatchInner!123 (regex!955 (rule!1657 (_1!3398 (v!16111 lt!221561)))) Nil!5189 (size!4181 Nil!5189) input!2705 input!2705 (size!4181 input!2705)))))))

(assert (=> b!536295 (=> res!227012 e!323405)))

(assert (=> b!536295 e!323405))

(declare-fun lt!221737 () Unit!9059)

(assert (=> b!536295 (= lt!221737 lt!221733)))

(declare-fun lt!221734 () Unit!9059)

(declare-fun lemmaSemiInverse!104 (TokenValueInjection!1726 BalanceConc!3352) Unit!9059)

(assert (=> b!536295 (= lt!221734 (lemmaSemiInverse!104 (transformation!955 (rule!1657 (_1!3398 (v!16111 lt!221561)))) (seqFromList!1153 (_1!3400 lt!221735))))))

(declare-fun b!536296 () Bool)

(assert (=> b!536296 (= e!323408 None!1304)))

(declare-fun b!536297 () Bool)

(declare-fun res!227014 () Bool)

(assert (=> b!536297 (=> (not res!227014) (not e!323406))))

(assert (=> b!536297 (= res!227014 (= (value!32084 (_1!3398 (get!1947 lt!221736))) (apply!1230 (transformation!955 (rule!1657 (_1!3398 (get!1947 lt!221736)))) (seqFromList!1153 (originalCharacters!994 (_1!3398 (get!1947 lt!221736)))))))))

(declare-fun b!536298 () Bool)

(declare-fun res!227016 () Bool)

(assert (=> b!536298 (=> (not res!227016) (not e!323406))))

(assert (=> b!536298 (= res!227016 (= (rule!1657 (_1!3398 (get!1947 lt!221736))) (rule!1657 (_1!3398 (v!16111 lt!221561)))))))

(declare-fun b!536299 () Bool)

(declare-fun res!227015 () Bool)

(assert (=> b!536299 (=> (not res!227015) (not e!323406))))

(assert (=> b!536299 (= res!227015 (= (++!1443 (list!2157 (charsOf!584 (_1!3398 (get!1947 lt!221736)))) (_2!3398 (get!1947 lt!221736))) input!2705))))

(assert (= (and d!189647 c!102010) b!536296))

(assert (= (and d!189647 (not c!102010)) b!536295))

(assert (= (and b!536295 (not res!227012)) b!536292))

(assert (= (and d!189647 (not res!227013)) b!536293))

(assert (= (and b!536293 res!227010) b!536299))

(assert (= (and b!536299 res!227015) b!536291))

(assert (= (and b!536291 res!227011) b!536298))

(assert (= (and b!536298 res!227016) b!536297))

(assert (= (and b!536297 res!227014) b!536294))

(declare-fun m!782661 () Bool)

(assert (=> b!536292 m!782661))

(assert (=> b!536292 m!782331))

(assert (=> b!536292 m!782661))

(assert (=> b!536292 m!782331))

(declare-fun m!782663 () Bool)

(assert (=> b!536292 m!782663))

(declare-fun m!782665 () Bool)

(assert (=> b!536292 m!782665))

(declare-fun m!782667 () Bool)

(assert (=> d!189647 m!782667))

(declare-fun m!782669 () Bool)

(assert (=> d!189647 m!782669))

(declare-fun m!782671 () Bool)

(assert (=> d!189647 m!782671))

(assert (=> d!189647 m!782039))

(declare-fun m!782673 () Bool)

(assert (=> b!536299 m!782673))

(declare-fun m!782675 () Bool)

(assert (=> b!536299 m!782675))

(assert (=> b!536299 m!782675))

(declare-fun m!782677 () Bool)

(assert (=> b!536299 m!782677))

(assert (=> b!536299 m!782677))

(declare-fun m!782679 () Bool)

(assert (=> b!536299 m!782679))

(assert (=> b!536293 m!782673))

(assert (=> b!536293 m!782675))

(assert (=> b!536293 m!782675))

(assert (=> b!536293 m!782677))

(assert (=> b!536293 m!782677))

(declare-fun m!782681 () Bool)

(assert (=> b!536293 m!782681))

(assert (=> b!536291 m!782673))

(declare-fun m!782683 () Bool)

(assert (=> b!536291 m!782683))

(assert (=> b!536291 m!782331))

(assert (=> b!536297 m!782673))

(declare-fun m!782685 () Bool)

(assert (=> b!536297 m!782685))

(assert (=> b!536297 m!782685))

(declare-fun m!782687 () Bool)

(assert (=> b!536297 m!782687))

(assert (=> b!536298 m!782673))

(assert (=> b!536294 m!782673))

(declare-fun m!782689 () Bool)

(assert (=> b!536294 m!782689))

(declare-fun m!782691 () Bool)

(assert (=> b!536295 m!782691))

(declare-fun m!782693 () Bool)

(assert (=> b!536295 m!782693))

(declare-fun m!782695 () Bool)

(assert (=> b!536295 m!782695))

(assert (=> b!536295 m!782331))

(declare-fun m!782697 () Bool)

(assert (=> b!536295 m!782697))

(assert (=> b!536295 m!782661))

(assert (=> b!536295 m!782693))

(assert (=> b!536295 m!782693))

(declare-fun m!782699 () Bool)

(assert (=> b!536295 m!782699))

(assert (=> b!536295 m!782693))

(declare-fun m!782701 () Bool)

(assert (=> b!536295 m!782701))

(assert (=> b!536295 m!782661))

(assert (=> b!536295 m!782331))

(assert (=> b!536295 m!782663))

(assert (=> b!535885 d!189647))

(declare-fun b!536300 () Bool)

(declare-fun res!227018 () Bool)

(declare-fun e!323410 () Bool)

(assert (=> b!536300 (=> (not res!227018) (not e!323410))))

(declare-fun lt!221741 () Option!1305)

(assert (=> b!536300 (= res!227018 (< (size!4181 (_2!3398 (get!1947 lt!221741))) (size!4181 lt!221542)))))

(declare-fun d!189649 () Bool)

(declare-fun e!323411 () Bool)

(assert (=> d!189649 e!323411))

(declare-fun res!227020 () Bool)

(assert (=> d!189649 (=> res!227020 e!323411)))

(assert (=> d!189649 (= res!227020 (isEmpty!3755 lt!221741))))

(declare-fun e!323412 () Option!1305)

(assert (=> d!189649 (= lt!221741 e!323412)))

(declare-fun c!102011 () Bool)

(declare-fun lt!221740 () tuple2!6272)

(assert (=> d!189649 (= c!102011 (isEmpty!3753 (_1!3400 lt!221740)))))

(assert (=> d!189649 (= lt!221740 (findLongestMatch!102 (regex!955 (rule!1657 token!491)) lt!221542))))

(assert (=> d!189649 (ruleValid!175 thiss!22590 (rule!1657 token!491))))

(assert (=> d!189649 (= (maxPrefixOneRule!254 thiss!22590 (rule!1657 token!491) lt!221542) lt!221741)))

(declare-fun b!536301 () Bool)

(declare-fun e!323409 () Bool)

(assert (=> b!536301 (= e!323409 (matchR!454 (regex!955 (rule!1657 token!491)) (_1!3400 (findLongestMatchInner!123 (regex!955 (rule!1657 token!491)) Nil!5189 (size!4181 Nil!5189) lt!221542 lt!221542 (size!4181 lt!221542)))))))

(declare-fun b!536302 () Bool)

(assert (=> b!536302 (= e!323411 e!323410)))

(declare-fun res!227017 () Bool)

(assert (=> b!536302 (=> (not res!227017) (not e!323410))))

(assert (=> b!536302 (= res!227017 (matchR!454 (regex!955 (rule!1657 token!491)) (list!2157 (charsOf!584 (_1!3398 (get!1947 lt!221741))))))))

(declare-fun b!536303 () Bool)

(assert (=> b!536303 (= e!323410 (= (size!4180 (_1!3398 (get!1947 lt!221741))) (size!4181 (originalCharacters!994 (_1!3398 (get!1947 lt!221741))))))))

(declare-fun b!536304 () Bool)

(assert (=> b!536304 (= e!323412 (Some!1304 (tuple2!6269 (Token!1647 (apply!1230 (transformation!955 (rule!1657 token!491)) (seqFromList!1153 (_1!3400 lt!221740))) (rule!1657 token!491) (size!4183 (seqFromList!1153 (_1!3400 lt!221740))) (_1!3400 lt!221740)) (_2!3400 lt!221740))))))

(declare-fun lt!221738 () Unit!9059)

(assert (=> b!536304 (= lt!221738 (longestMatchIsAcceptedByMatchOrIsEmpty!107 (regex!955 (rule!1657 token!491)) lt!221542))))

(declare-fun res!227019 () Bool)

(assert (=> b!536304 (= res!227019 (isEmpty!3753 (_1!3400 (findLongestMatchInner!123 (regex!955 (rule!1657 token!491)) Nil!5189 (size!4181 Nil!5189) lt!221542 lt!221542 (size!4181 lt!221542)))))))

(assert (=> b!536304 (=> res!227019 e!323409)))

(assert (=> b!536304 e!323409))

(declare-fun lt!221742 () Unit!9059)

(assert (=> b!536304 (= lt!221742 lt!221738)))

(declare-fun lt!221739 () Unit!9059)

(assert (=> b!536304 (= lt!221739 (lemmaSemiInverse!104 (transformation!955 (rule!1657 token!491)) (seqFromList!1153 (_1!3400 lt!221740))))))

(declare-fun b!536305 () Bool)

(assert (=> b!536305 (= e!323412 None!1304)))

(declare-fun b!536306 () Bool)

(declare-fun res!227021 () Bool)

(assert (=> b!536306 (=> (not res!227021) (not e!323410))))

(assert (=> b!536306 (= res!227021 (= (value!32084 (_1!3398 (get!1947 lt!221741))) (apply!1230 (transformation!955 (rule!1657 (_1!3398 (get!1947 lt!221741)))) (seqFromList!1153 (originalCharacters!994 (_1!3398 (get!1947 lt!221741)))))))))

(declare-fun b!536307 () Bool)

(declare-fun res!227023 () Bool)

(assert (=> b!536307 (=> (not res!227023) (not e!323410))))

(assert (=> b!536307 (= res!227023 (= (rule!1657 (_1!3398 (get!1947 lt!221741))) (rule!1657 token!491)))))

(declare-fun b!536308 () Bool)

(declare-fun res!227022 () Bool)

(assert (=> b!536308 (=> (not res!227022) (not e!323410))))

(assert (=> b!536308 (= res!227022 (= (++!1443 (list!2157 (charsOf!584 (_1!3398 (get!1947 lt!221741)))) (_2!3398 (get!1947 lt!221741))) lt!221542))))

(assert (= (and d!189649 c!102011) b!536305))

(assert (= (and d!189649 (not c!102011)) b!536304))

(assert (= (and b!536304 (not res!227019)) b!536301))

(assert (= (and d!189649 (not res!227020)) b!536302))

(assert (= (and b!536302 res!227017) b!536308))

(assert (= (and b!536308 res!227022) b!536300))

(assert (= (and b!536300 res!227018) b!536307))

(assert (= (and b!536307 res!227023) b!536306))

(assert (= (and b!536306 res!227021) b!536303))

(assert (=> b!536301 m!782661))

(assert (=> b!536301 m!782329))

(assert (=> b!536301 m!782661))

(assert (=> b!536301 m!782329))

(declare-fun m!782703 () Bool)

(assert (=> b!536301 m!782703))

(declare-fun m!782705 () Bool)

(assert (=> b!536301 m!782705))

(declare-fun m!782707 () Bool)

(assert (=> d!189649 m!782707))

(declare-fun m!782709 () Bool)

(assert (=> d!189649 m!782709))

(declare-fun m!782711 () Bool)

(assert (=> d!189649 m!782711))

(assert (=> d!189649 m!782035))

(declare-fun m!782713 () Bool)

(assert (=> b!536308 m!782713))

(declare-fun m!782715 () Bool)

(assert (=> b!536308 m!782715))

(assert (=> b!536308 m!782715))

(declare-fun m!782717 () Bool)

(assert (=> b!536308 m!782717))

(assert (=> b!536308 m!782717))

(declare-fun m!782719 () Bool)

(assert (=> b!536308 m!782719))

(assert (=> b!536302 m!782713))

(assert (=> b!536302 m!782715))

(assert (=> b!536302 m!782715))

(assert (=> b!536302 m!782717))

(assert (=> b!536302 m!782717))

(declare-fun m!782721 () Bool)

(assert (=> b!536302 m!782721))

(assert (=> b!536300 m!782713))

(declare-fun m!782723 () Bool)

(assert (=> b!536300 m!782723))

(assert (=> b!536300 m!782329))

(assert (=> b!536306 m!782713))

(declare-fun m!782725 () Bool)

(assert (=> b!536306 m!782725))

(assert (=> b!536306 m!782725))

(declare-fun m!782727 () Bool)

(assert (=> b!536306 m!782727))

(assert (=> b!536307 m!782713))

(assert (=> b!536303 m!782713))

(declare-fun m!782729 () Bool)

(assert (=> b!536303 m!782729))

(declare-fun m!782731 () Bool)

(assert (=> b!536304 m!782731))

(declare-fun m!782733 () Bool)

(assert (=> b!536304 m!782733))

(declare-fun m!782735 () Bool)

(assert (=> b!536304 m!782735))

(assert (=> b!536304 m!782329))

(declare-fun m!782737 () Bool)

(assert (=> b!536304 m!782737))

(assert (=> b!536304 m!782661))

(assert (=> b!536304 m!782733))

(assert (=> b!536304 m!782733))

(declare-fun m!782739 () Bool)

(assert (=> b!536304 m!782739))

(assert (=> b!536304 m!782733))

(declare-fun m!782741 () Bool)

(assert (=> b!536304 m!782741))

(assert (=> b!536304 m!782661))

(assert (=> b!536304 m!782329))

(assert (=> b!536304 m!782703))

(assert (=> b!535885 d!189649))

(declare-fun d!189651 () Bool)

(assert (=> d!189651 (= suffix!1342 lt!221558)))

(declare-fun lt!221743 () Unit!9059)

(assert (=> d!189651 (= lt!221743 (choose!3782 lt!221543 suffix!1342 lt!221543 lt!221558 lt!221542))))

(assert (=> d!189651 (isPrefix!597 lt!221543 lt!221542)))

(assert (=> d!189651 (= (lemmaSamePrefixThenSameSuffix!324 lt!221543 suffix!1342 lt!221543 lt!221558 lt!221542) lt!221743)))

(declare-fun bs!67356 () Bool)

(assert (= bs!67356 d!189651))

(declare-fun m!782743 () Bool)

(assert (=> bs!67356 m!782743))

(declare-fun m!782745 () Bool)

(assert (=> bs!67356 m!782745))

(assert (=> b!535885 d!189651))

(declare-fun d!189653 () Bool)

(assert (=> d!189653 (= (apply!1230 (transformation!955 (rule!1657 token!491)) (seqFromList!1153 lt!221543)) (dynLambda!3089 (toValue!1802 (transformation!955 (rule!1657 token!491))) (seqFromList!1153 lt!221543)))))

(declare-fun b_lambda!20703 () Bool)

(assert (=> (not b_lambda!20703) (not d!189653)))

(declare-fun t!74145 () Bool)

(declare-fun tb!47511 () Bool)

(assert (=> (and b!535883 (= (toValue!1802 (transformation!955 (h!10592 rules!3103))) (toValue!1802 (transformation!955 (rule!1657 token!491)))) t!74145) tb!47511))

(declare-fun result!53040 () Bool)

(assert (=> tb!47511 (= result!53040 (inv!21 (dynLambda!3089 (toValue!1802 (transformation!955 (rule!1657 token!491))) (seqFromList!1153 lt!221543))))))

(declare-fun m!782747 () Bool)

(assert (=> tb!47511 m!782747))

(assert (=> d!189653 t!74145))

(declare-fun b_and!52459 () Bool)

(assert (= b_and!52435 (and (=> t!74145 result!53040) b_and!52459)))

(declare-fun t!74147 () Bool)

(declare-fun tb!47513 () Bool)

(assert (=> (and b!535888 (= (toValue!1802 (transformation!955 (rule!1657 token!491))) (toValue!1802 (transformation!955 (rule!1657 token!491)))) t!74147) tb!47513))

(declare-fun result!53042 () Bool)

(assert (= result!53042 result!53040))

(assert (=> d!189653 t!74147))

(declare-fun b_and!52461 () Bool)

(assert (= b_and!52437 (and (=> t!74147 result!53042) b_and!52461)))

(assert (=> d!189653 m!782005))

(declare-fun m!782749 () Bool)

(assert (=> d!189653 m!782749))

(assert (=> b!535885 d!189653))

(declare-fun d!189655 () Bool)

(assert (=> d!189655 (= (maxPrefixOneRule!254 thiss!22590 (rule!1657 token!491) lt!221542) (Some!1304 (tuple2!6269 (Token!1647 (apply!1230 (transformation!955 (rule!1657 token!491)) (seqFromList!1153 lt!221543)) (rule!1657 token!491) (size!4181 lt!221543) lt!221543) suffix!1342)))))

(declare-fun lt!221746 () Unit!9059)

(declare-fun choose!3784 (LexerInterface!841 List!5201 List!5199 List!5199 List!5199 Rule!1710) Unit!9059)

(assert (=> d!189655 (= lt!221746 (choose!3784 thiss!22590 rules!3103 lt!221543 lt!221542 suffix!1342 (rule!1657 token!491)))))

(assert (=> d!189655 (not (isEmpty!3752 rules!3103))))

(assert (=> d!189655 (= (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!6 thiss!22590 rules!3103 lt!221543 lt!221542 suffix!1342 (rule!1657 token!491)) lt!221746)))

(declare-fun bs!67357 () Bool)

(assert (= bs!67357 d!189655))

(assert (=> bs!67357 m!782097))

(assert (=> bs!67357 m!782005))

(declare-fun m!782751 () Bool)

(assert (=> bs!67357 m!782751))

(assert (=> bs!67357 m!782005))

(assert (=> bs!67357 m!782007))

(assert (=> bs!67357 m!782013))

(assert (=> bs!67357 m!782041))

(assert (=> b!535885 d!189655))

(declare-fun d!189657 () Bool)

(assert (=> d!189657 (= (maxPrefixOneRule!254 thiss!22590 (rule!1657 (_1!3398 (v!16111 lt!221561))) input!2705) (Some!1304 (tuple2!6269 (Token!1647 (apply!1230 (transformation!955 (rule!1657 (_1!3398 (v!16111 lt!221561)))) (seqFromList!1153 lt!221569)) (rule!1657 (_1!3398 (v!16111 lt!221561))) (size!4181 lt!221569) lt!221569) (_2!3398 (v!16111 lt!221561)))))))

(declare-fun lt!221747 () Unit!9059)

(assert (=> d!189657 (= lt!221747 (choose!3784 thiss!22590 rules!3103 lt!221569 input!2705 (_2!3398 (v!16111 lt!221561)) (rule!1657 (_1!3398 (v!16111 lt!221561)))))))

(assert (=> d!189657 (not (isEmpty!3752 rules!3103))))

(assert (=> d!189657 (= (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!6 thiss!22590 rules!3103 lt!221569 input!2705 (_2!3398 (v!16111 lt!221561)) (rule!1657 (_1!3398 (v!16111 lt!221561)))) lt!221747)))

(declare-fun bs!67358 () Bool)

(assert (= bs!67358 d!189657))

(assert (=> bs!67358 m!782097))

(assert (=> bs!67358 m!782069))

(declare-fun m!782753 () Bool)

(assert (=> bs!67358 m!782753))

(assert (=> bs!67358 m!782069))

(assert (=> bs!67358 m!782071))

(assert (=> bs!67358 m!782003))

(assert (=> bs!67358 m!782055))

(assert (=> b!535885 d!189657))

(declare-fun d!189659 () Bool)

(declare-fun lt!221748 () List!5199)

(assert (=> d!189659 (= (++!1443 lt!221543 lt!221748) lt!221542)))

(declare-fun e!323414 () List!5199)

(assert (=> d!189659 (= lt!221748 e!323414)))

(declare-fun c!102012 () Bool)

(assert (=> d!189659 (= c!102012 ((_ is Cons!5189) lt!221543))))

(assert (=> d!189659 (>= (size!4181 lt!221542) (size!4181 lt!221543))))

(assert (=> d!189659 (= (getSuffix!120 lt!221542 lt!221543) lt!221748)))

(declare-fun b!536309 () Bool)

(assert (=> b!536309 (= e!323414 (getSuffix!120 (tail!705 lt!221542) (t!74104 lt!221543)))))

(declare-fun b!536310 () Bool)

(assert (=> b!536310 (= e!323414 lt!221542)))

(assert (= (and d!189659 c!102012) b!536309))

(assert (= (and d!189659 (not c!102012)) b!536310))

(declare-fun m!782755 () Bool)

(assert (=> d!189659 m!782755))

(assert (=> d!189659 m!782329))

(assert (=> d!189659 m!782041))

(assert (=> b!536309 m!782321))

(assert (=> b!536309 m!782321))

(declare-fun m!782757 () Bool)

(assert (=> b!536309 m!782757))

(assert (=> b!535885 d!189659))

(declare-fun d!189661 () Bool)

(assert (=> d!189661 (= (seqFromList!1153 lt!221543) (fromListB!513 lt!221543))))

(declare-fun bs!67359 () Bool)

(assert (= bs!67359 d!189661))

(declare-fun m!782759 () Bool)

(assert (=> bs!67359 m!782759))

(assert (=> b!535885 d!189661))

(declare-fun b!536311 () Bool)

(declare-fun res!227027 () Bool)

(declare-fun e!323415 () Bool)

(assert (=> b!536311 (=> (not res!227027) (not e!323415))))

(declare-fun lt!221749 () Option!1305)

(assert (=> b!536311 (= res!227027 (= (value!32084 (_1!3398 (get!1947 lt!221749))) (apply!1230 (transformation!955 (rule!1657 (_1!3398 (get!1947 lt!221749)))) (seqFromList!1153 (originalCharacters!994 (_1!3398 (get!1947 lt!221749)))))))))

(declare-fun b!536312 () Bool)

(declare-fun res!227030 () Bool)

(assert (=> b!536312 (=> (not res!227030) (not e!323415))))

(assert (=> b!536312 (= res!227030 (matchR!454 (regex!955 (rule!1657 (_1!3398 (get!1947 lt!221749)))) (list!2157 (charsOf!584 (_1!3398 (get!1947 lt!221749))))))))

(declare-fun b!536313 () Bool)

(declare-fun e!323417 () Bool)

(assert (=> b!536313 (= e!323417 e!323415)))

(declare-fun res!227025 () Bool)

(assert (=> b!536313 (=> (not res!227025) (not e!323415))))

(assert (=> b!536313 (= res!227025 (isDefined!1117 lt!221749))))

(declare-fun b!536314 () Bool)

(declare-fun e!323416 () Option!1305)

(declare-fun lt!221751 () Option!1305)

(declare-fun lt!221752 () Option!1305)

(assert (=> b!536314 (= e!323416 (ite (and ((_ is None!1304) lt!221751) ((_ is None!1304) lt!221752)) None!1304 (ite ((_ is None!1304) lt!221752) lt!221751 (ite ((_ is None!1304) lt!221751) lt!221752 (ite (>= (size!4180 (_1!3398 (v!16111 lt!221751))) (size!4180 (_1!3398 (v!16111 lt!221752)))) lt!221751 lt!221752)))))))

(declare-fun call!38211 () Option!1305)

(assert (=> b!536314 (= lt!221751 call!38211)))

(assert (=> b!536314 (= lt!221752 (maxPrefix!539 thiss!22590 (t!74106 rules!3103) input!2705))))

(declare-fun b!536315 () Bool)

(assert (=> b!536315 (= e!323416 call!38211)))

(declare-fun b!536316 () Bool)

(declare-fun res!227026 () Bool)

(assert (=> b!536316 (=> (not res!227026) (not e!323415))))

(assert (=> b!536316 (= res!227026 (= (list!2157 (charsOf!584 (_1!3398 (get!1947 lt!221749)))) (originalCharacters!994 (_1!3398 (get!1947 lt!221749)))))))

(declare-fun b!536317 () Bool)

(declare-fun res!227024 () Bool)

(assert (=> b!536317 (=> (not res!227024) (not e!323415))))

(assert (=> b!536317 (= res!227024 (< (size!4181 (_2!3398 (get!1947 lt!221749))) (size!4181 input!2705)))))

(declare-fun bm!38206 () Bool)

(assert (=> bm!38206 (= call!38211 (maxPrefixOneRule!254 thiss!22590 (h!10592 rules!3103) input!2705))))

(declare-fun b!536319 () Bool)

(assert (=> b!536319 (= e!323415 (contains!1205 rules!3103 (rule!1657 (_1!3398 (get!1947 lt!221749)))))))

(declare-fun d!189663 () Bool)

(assert (=> d!189663 e!323417))

(declare-fun res!227029 () Bool)

(assert (=> d!189663 (=> res!227029 e!323417)))

(assert (=> d!189663 (= res!227029 (isEmpty!3755 lt!221749))))

(assert (=> d!189663 (= lt!221749 e!323416)))

(declare-fun c!102013 () Bool)

(assert (=> d!189663 (= c!102013 (and ((_ is Cons!5191) rules!3103) ((_ is Nil!5191) (t!74106 rules!3103))))))

(declare-fun lt!221753 () Unit!9059)

(declare-fun lt!221750 () Unit!9059)

(assert (=> d!189663 (= lt!221753 lt!221750)))

(assert (=> d!189663 (isPrefix!597 input!2705 input!2705)))

(assert (=> d!189663 (= lt!221750 (lemmaIsPrefixRefl!337 input!2705 input!2705))))

(assert (=> d!189663 (rulesValidInductive!332 thiss!22590 rules!3103)))

(assert (=> d!189663 (= (maxPrefix!539 thiss!22590 rules!3103 input!2705) lt!221749)))

(declare-fun b!536318 () Bool)

(declare-fun res!227028 () Bool)

(assert (=> b!536318 (=> (not res!227028) (not e!323415))))

(assert (=> b!536318 (= res!227028 (= (++!1443 (list!2157 (charsOf!584 (_1!3398 (get!1947 lt!221749)))) (_2!3398 (get!1947 lt!221749))) input!2705))))

(assert (= (and d!189663 c!102013) b!536315))

(assert (= (and d!189663 (not c!102013)) b!536314))

(assert (= (or b!536315 b!536314) bm!38206))

(assert (= (and d!189663 (not res!227029)) b!536313))

(assert (= (and b!536313 res!227025) b!536316))

(assert (= (and b!536316 res!227026) b!536317))

(assert (= (and b!536317 res!227024) b!536318))

(assert (= (and b!536318 res!227028) b!536311))

(assert (= (and b!536311 res!227027) b!536312))

(assert (= (and b!536312 res!227030) b!536319))

(declare-fun m!782761 () Bool)

(assert (=> b!536314 m!782761))

(declare-fun m!782763 () Bool)

(assert (=> b!536316 m!782763))

(declare-fun m!782765 () Bool)

(assert (=> b!536316 m!782765))

(assert (=> b!536316 m!782765))

(declare-fun m!782767 () Bool)

(assert (=> b!536316 m!782767))

(assert (=> b!536311 m!782763))

(declare-fun m!782769 () Bool)

(assert (=> b!536311 m!782769))

(assert (=> b!536311 m!782769))

(declare-fun m!782771 () Bool)

(assert (=> b!536311 m!782771))

(declare-fun m!782773 () Bool)

(assert (=> b!536313 m!782773))

(declare-fun m!782775 () Bool)

(assert (=> bm!38206 m!782775))

(assert (=> b!536312 m!782763))

(assert (=> b!536312 m!782765))

(assert (=> b!536312 m!782765))

(assert (=> b!536312 m!782767))

(assert (=> b!536312 m!782767))

(declare-fun m!782777 () Bool)

(assert (=> b!536312 m!782777))

(assert (=> b!536318 m!782763))

(assert (=> b!536318 m!782765))

(assert (=> b!536318 m!782765))

(assert (=> b!536318 m!782767))

(assert (=> b!536318 m!782767))

(declare-fun m!782779 () Bool)

(assert (=> b!536318 m!782779))

(declare-fun m!782781 () Bool)

(assert (=> d!189663 m!782781))

(assert (=> d!189663 m!782061))

(assert (=> d!189663 m!782079))

(assert (=> d!189663 m!782109))

(assert (=> b!536319 m!782763))

(declare-fun m!782783 () Bool)

(assert (=> b!536319 m!782783))

(assert (=> b!536317 m!782763))

(declare-fun m!782785 () Bool)

(assert (=> b!536317 m!782785))

(assert (=> b!536317 m!782331))

(assert (=> b!535874 d!189663))

(declare-fun b!536330 () Bool)

(declare-fun b_free!14669 () Bool)

(declare-fun b_next!14685 () Bool)

(assert (=> b!536330 (= b_free!14669 (not b_next!14685))))

(declare-fun tb!47515 () Bool)

(declare-fun t!74149 () Bool)

(assert (=> (and b!536330 (= (toValue!1802 (transformation!955 (h!10592 (t!74106 rules!3103)))) (toValue!1802 (transformation!955 (rule!1657 (_1!3398 (v!16111 lt!221561)))))) t!74149) tb!47515))

(declare-fun result!53046 () Bool)

(assert (= result!53046 result!53012))

(assert (=> d!189545 t!74149))

(declare-fun tb!47517 () Bool)

(declare-fun t!74151 () Bool)

(assert (=> (and b!536330 (= (toValue!1802 (transformation!955 (h!10592 (t!74106 rules!3103)))) (toValue!1802 (transformation!955 (rule!1657 token!491)))) t!74151) tb!47517))

(declare-fun result!53048 () Bool)

(assert (= result!53048 result!53040))

(assert (=> d!189653 t!74151))

(declare-fun b_and!52463 () Bool)

(declare-fun tp!171092 () Bool)

(assert (=> b!536330 (= tp!171092 (and (=> t!74149 result!53046) (=> t!74151 result!53048) b_and!52463))))

(declare-fun b_free!14671 () Bool)

(declare-fun b_next!14687 () Bool)

(assert (=> b!536330 (= b_free!14671 (not b_next!14687))))

(declare-fun tb!47519 () Bool)

(declare-fun t!74153 () Bool)

(assert (=> (and b!536330 (= (toChars!1661 (transformation!955 (h!10592 (t!74106 rules!3103)))) (toChars!1661 (transformation!955 (rule!1657 token!491)))) t!74153) tb!47519))

(declare-fun result!53050 () Bool)

(assert (= result!53050 result!52996))

(assert (=> d!189489 t!74153))

(declare-fun t!74155 () Bool)

(declare-fun tb!47521 () Bool)

(assert (=> (and b!536330 (= (toChars!1661 (transformation!955 (h!10592 (t!74106 rules!3103)))) (toChars!1661 (transformation!955 (rule!1657 (_1!3398 (v!16111 lt!221561)))))) t!74155) tb!47521))

(declare-fun result!53052 () Bool)

(assert (= result!53052 result!53008))

(assert (=> d!189543 t!74155))

(assert (=> b!536271 t!74153))

(declare-fun b_and!52465 () Bool)

(declare-fun tp!171094 () Bool)

(assert (=> b!536330 (= tp!171094 (and (=> t!74153 result!53050) (=> t!74155 result!53052) b_and!52465))))

(declare-fun e!323427 () Bool)

(assert (=> b!536330 (= e!323427 (and tp!171092 tp!171094))))

(declare-fun e!323426 () Bool)

(declare-fun tp!171093 () Bool)

(declare-fun b!536329 () Bool)

(assert (=> b!536329 (= e!323426 (and tp!171093 (inv!6511 (tag!1217 (h!10592 (t!74106 rules!3103)))) (inv!6514 (transformation!955 (h!10592 (t!74106 rules!3103)))) e!323427))))

(declare-fun b!536328 () Bool)

(declare-fun e!323428 () Bool)

(declare-fun tp!171095 () Bool)

(assert (=> b!536328 (= e!323428 (and e!323426 tp!171095))))

(assert (=> b!535873 (= tp!171035 e!323428)))

(assert (= b!536329 b!536330))

(assert (= b!536328 b!536329))

(assert (= (and b!535873 ((_ is Cons!5191) (t!74106 rules!3103))) b!536328))

(declare-fun m!782787 () Bool)

(assert (=> b!536329 m!782787))

(declare-fun m!782789 () Bool)

(assert (=> b!536329 m!782789))

(declare-fun b!536335 () Bool)

(declare-fun e!323432 () Bool)

(declare-fun tp!171098 () Bool)

(assert (=> b!536335 (= e!323432 (and tp_is_empty!2933 tp!171098))))

(assert (=> b!535872 (= tp!171033 e!323432)))

(assert (= (and b!535872 ((_ is Cons!5189) (originalCharacters!994 token!491))) b!536335))

(declare-fun b!536347 () Bool)

(declare-fun e!323435 () Bool)

(declare-fun tp!171109 () Bool)

(declare-fun tp!171113 () Bool)

(assert (=> b!536347 (= e!323435 (and tp!171109 tp!171113))))

(assert (=> b!535877 (= tp!171030 e!323435)))

(declare-fun b!536348 () Bool)

(declare-fun tp!171112 () Bool)

(assert (=> b!536348 (= e!323435 tp!171112)))

(declare-fun b!536349 () Bool)

(declare-fun tp!171110 () Bool)

(declare-fun tp!171111 () Bool)

(assert (=> b!536349 (= e!323435 (and tp!171110 tp!171111))))

(declare-fun b!536346 () Bool)

(assert (=> b!536346 (= e!323435 tp_is_empty!2933)))

(assert (= (and b!535877 ((_ is ElementMatch!1289) (regex!955 (rule!1657 token!491)))) b!536346))

(assert (= (and b!535877 ((_ is Concat!2268) (regex!955 (rule!1657 token!491)))) b!536347))

(assert (= (and b!535877 ((_ is Star!1289) (regex!955 (rule!1657 token!491)))) b!536348))

(assert (= (and b!535877 ((_ is Union!1289) (regex!955 (rule!1657 token!491)))) b!536349))

(declare-fun b!536350 () Bool)

(declare-fun e!323436 () Bool)

(declare-fun tp!171114 () Bool)

(assert (=> b!536350 (= e!323436 (and tp_is_empty!2933 tp!171114))))

(assert (=> b!535876 (= tp!171036 e!323436)))

(assert (= (and b!535876 ((_ is Cons!5189) (t!74104 suffix!1342))) b!536350))

(declare-fun b!536351 () Bool)

(declare-fun e!323437 () Bool)

(declare-fun tp!171115 () Bool)

(assert (=> b!536351 (= e!323437 (and tp_is_empty!2933 tp!171115))))

(assert (=> b!535870 (= tp!171032 e!323437)))

(assert (= (and b!535870 ((_ is Cons!5189) (t!74104 input!2705))) b!536351))

(declare-fun b!536353 () Bool)

(declare-fun e!323438 () Bool)

(declare-fun tp!171116 () Bool)

(declare-fun tp!171120 () Bool)

(assert (=> b!536353 (= e!323438 (and tp!171116 tp!171120))))

(assert (=> b!535879 (= tp!171029 e!323438)))

(declare-fun b!536354 () Bool)

(declare-fun tp!171119 () Bool)

(assert (=> b!536354 (= e!323438 tp!171119)))

(declare-fun b!536355 () Bool)

(declare-fun tp!171117 () Bool)

(declare-fun tp!171118 () Bool)

(assert (=> b!536355 (= e!323438 (and tp!171117 tp!171118))))

(declare-fun b!536352 () Bool)

(assert (=> b!536352 (= e!323438 tp_is_empty!2933)))

(assert (= (and b!535879 ((_ is ElementMatch!1289) (regex!955 (h!10592 rules!3103)))) b!536352))

(assert (= (and b!535879 ((_ is Concat!2268) (regex!955 (h!10592 rules!3103)))) b!536353))

(assert (= (and b!535879 ((_ is Star!1289) (regex!955 (h!10592 rules!3103)))) b!536354))

(assert (= (and b!535879 ((_ is Union!1289) (regex!955 (h!10592 rules!3103)))) b!536355))

(declare-fun b_lambda!20705 () Bool)

(assert (= b_lambda!20703 (or (and b!535883 b_free!14657 (= (toValue!1802 (transformation!955 (h!10592 rules!3103))) (toValue!1802 (transformation!955 (rule!1657 token!491))))) (and b!535888 b_free!14661) (and b!536330 b_free!14669 (= (toValue!1802 (transformation!955 (h!10592 (t!74106 rules!3103)))) (toValue!1802 (transformation!955 (rule!1657 token!491))))) b_lambda!20705)))

(declare-fun b_lambda!20707 () Bool)

(assert (= b_lambda!20681 (or (and b!535883 b_free!14659 (= (toChars!1661 (transformation!955 (h!10592 rules!3103))) (toChars!1661 (transformation!955 (rule!1657 token!491))))) (and b!535888 b_free!14663) (and b!536330 b_free!14671 (= (toChars!1661 (transformation!955 (h!10592 (t!74106 rules!3103)))) (toChars!1661 (transformation!955 (rule!1657 token!491))))) b_lambda!20707)))

(declare-fun b_lambda!20709 () Bool)

(assert (= b_lambda!20701 (or (and b!535883 b_free!14659 (= (toChars!1661 (transformation!955 (h!10592 rules!3103))) (toChars!1661 (transformation!955 (rule!1657 token!491))))) (and b!535888 b_free!14663) (and b!536330 b_free!14671 (= (toChars!1661 (transformation!955 (h!10592 (t!74106 rules!3103)))) (toChars!1661 (transformation!955 (rule!1657 token!491))))) b_lambda!20709)))

(check-sat (not b!536073) (not b!536295) (not d!189589) (not b!536258) (not b!536272) (not b!536251) (not b!536329) (not b!536301) (not b!536104) b_and!52459 (not b!536065) (not b!536307) (not b_next!14685) (not d!189523) (not b!536006) (not b!535938) (not b!536072) (not d!189521) (not b!535937) (not b!535948) (not b!536308) (not b!536348) (not b!536255) tp_is_empty!2933 (not b!536120) (not d!189551) (not b!536294) (not b!536317) (not d!189459) (not b_lambda!20685) (not b!536256) (not b!536145) (not b!536291) (not tb!47491) (not b!536264) (not d!189495) (not d!189583) (not b_lambda!20705) (not b!536039) (not d!189575) (not b!536137) (not b!536316) (not b!536304) (not d!189515) (not d!189537) (not b!536302) (not tb!47479) (not b!536060) (not d!189569) (not d!189531) (not b!536335) (not b!536078) (not b!536298) (not b!536353) (not d!189489) (not b!536306) (not d!189661) (not b!536257) (not b_next!14675) (not b!536033) (not d!189503) (not b!536355) (not b_lambda!20707) b_and!52457 b_and!52455 (not bm!38205) (not b!536058) (not b_next!14677) (not b!536347) (not b!536313) (not b!536293) (not b!536265) b_and!52465 (not d!189549) (not b!536007) (not b!536328) (not d!189543) (not b!536309) (not d!189647) (not b!536297) (not b!536080) (not b!536318) (not b!536354) (not b!536103) (not d!189533) (not d!189477) (not b_next!14687) (not b!536059) (not b!536011) (not d!189567) (not b!536349) (not b!536314) (not d!189487) (not b!536068) (not b_next!14673) (not d!189557) (not b!536101) (not b_next!14679) (not b!536253) (not b!536076) (not b!536081) (not b!536035) (not b!536148) (not d!189643) (not d!189553) (not b_lambda!20687) b_and!52461 (not b!536144) (not tb!47511) (not b!535942) (not b!535936) (not b!536089) (not b!536252) (not b_lambda!20709) (not b!536250) (not b!536300) (not d!189651) (not bm!38206) (not b!536350) (not d!189645) (not b!536082) (not d!189649) (not d!189657) (not d!189659) b_and!52463 (not d!189499) (not b!536351) (not b!536077) (not tb!47487) (not d!189591) (not b!535994) (not b!536271) (not d!189455) (not b!536303) (not b!536311) (not d!189485) (not b!536102) (not b!536319) (not b!536292) (not d!189655) (not d!189663) (not d!189501) (not d!189509) (not b!536299) (not b!536037) (not b!536312) (not b!535993) (not b!536143))
(check-sat b_and!52459 (not b_next!14685) (not b_next!14675) b_and!52457 (not b_next!14687) (not b_next!14673) (not b_next!14679) b_and!52461 b_and!52463 b_and!52455 b_and!52465 (not b_next!14677))
