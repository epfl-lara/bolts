; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!57152 () Bool)

(assert start!57152)

(declare-fun b!601764 () Bool)

(declare-fun b_free!17101 () Bool)

(declare-fun b_next!17117 () Bool)

(assert (=> b!601764 (= b_free!17101 (not b_next!17117))))

(declare-fun tp!187309 () Bool)

(declare-fun b_and!59427 () Bool)

(assert (=> b!601764 (= tp!187309 b_and!59427)))

(declare-fun b_free!17103 () Bool)

(declare-fun b_next!17119 () Bool)

(assert (=> b!601764 (= b_free!17103 (not b_next!17119))))

(declare-fun tp!187310 () Bool)

(declare-fun b_and!59429 () Bool)

(assert (=> b!601764 (= tp!187310 b_and!59429)))

(declare-fun b!601779 () Bool)

(declare-fun b_free!17105 () Bool)

(declare-fun b_next!17121 () Bool)

(assert (=> b!601779 (= b_free!17105 (not b_next!17121))))

(declare-fun tp!187303 () Bool)

(declare-fun b_and!59431 () Bool)

(assert (=> b!601779 (= tp!187303 b_and!59431)))

(declare-fun b_free!17107 () Bool)

(declare-fun b_next!17123 () Bool)

(assert (=> b!601779 (= b_free!17107 (not b_next!17123))))

(declare-fun tp!187307 () Bool)

(declare-fun b_and!59433 () Bool)

(assert (=> b!601779 (= tp!187307 b_and!59433)))

(declare-fun b!601760 () Bool)

(declare-datatypes ((Unit!10939 0))(
  ( (Unit!10940) )
))
(declare-fun e!364535 () Unit!10939)

(declare-fun Unit!10941 () Unit!10939)

(assert (=> b!601760 (= e!364535 Unit!10941)))

(declare-fun b!601761 () Bool)

(declare-fun res!260301 () Bool)

(declare-fun e!364546 () Bool)

(assert (=> b!601761 (=> (not res!260301) (not e!364546))))

(declare-datatypes ((C!3980 0))(
  ( (C!3981 (val!2216 Int)) )
))
(declare-datatypes ((Regex!1529 0))(
  ( (ElementMatch!1529 (c!111703 C!3980)) (Concat!2748 (regOne!3570 Regex!1529) (regTwo!3570 Regex!1529)) (EmptyExpr!1529) (Star!1529 (reg!1858 Regex!1529)) (EmptyLang!1529) (Union!1529 (regOne!3571 Regex!1529) (regTwo!3571 Regex!1529)) )
))
(declare-datatypes ((String!7838 0))(
  ( (String!7839 (value!38898 String)) )
))
(declare-datatypes ((List!6018 0))(
  ( (Nil!6008) (Cons!6008 (h!11409 (_ BitVec 16)) (t!79971 List!6018)) )
))
(declare-datatypes ((TokenValue!1219 0))(
  ( (FloatLiteralValue!2438 (text!8978 List!6018)) (TokenValueExt!1218 (__x!4336 Int)) (Broken!6095 (value!38899 List!6018)) (Object!1228) (End!1219) (Def!1219) (Underscore!1219) (Match!1219) (Else!1219) (Error!1219) (Case!1219) (If!1219) (Extends!1219) (Abstract!1219) (Class!1219) (Val!1219) (DelimiterValue!2438 (del!1279 List!6018)) (KeywordValue!1225 (value!38900 List!6018)) (CommentValue!2438 (value!38901 List!6018)) (WhitespaceValue!2438 (value!38902 List!6018)) (IndentationValue!1219 (value!38903 List!6018)) (String!7840) (Int32!1219) (Broken!6096 (value!38904 List!6018)) (Boolean!1220) (Unit!10942) (OperatorValue!1222 (op!1279 List!6018)) (IdentifierValue!2438 (value!38905 List!6018)) (IdentifierValue!2439 (value!38906 List!6018)) (WhitespaceValue!2439 (value!38907 List!6018)) (True!2438) (False!2438) (Broken!6097 (value!38908 List!6018)) (Broken!6098 (value!38909 List!6018)) (True!2439) (RightBrace!1219) (RightBracket!1219) (Colon!1219) (Null!1219) (Comma!1219) (LeftBracket!1219) (False!2439) (LeftBrace!1219) (ImaginaryLiteralValue!1219 (text!8979 List!6018)) (StringLiteralValue!3657 (value!38910 List!6018)) (EOFValue!1219 (value!38911 List!6018)) (IdentValue!1219 (value!38912 List!6018)) (DelimiterValue!2439 (value!38913 List!6018)) (DedentValue!1219 (value!38914 List!6018)) (NewLineValue!1219 (value!38915 List!6018)) (IntegerValue!3657 (value!38916 (_ BitVec 32)) (text!8980 List!6018)) (IntegerValue!3658 (value!38917 Int) (text!8981 List!6018)) (Times!1219) (Or!1219) (Equal!1219) (Minus!1219) (Broken!6099 (value!38918 List!6018)) (And!1219) (Div!1219) (LessEqual!1219) (Mod!1219) (Concat!2749) (Not!1219) (Plus!1219) (SpaceValue!1219 (value!38919 List!6018)) (IntegerValue!3659 (value!38920 Int) (text!8982 List!6018)) (StringLiteralValue!3658 (text!8983 List!6018)) (FloatLiteralValue!2439 (text!8984 List!6018)) (BytesLiteralValue!1219 (value!38921 List!6018)) (CommentValue!2439 (value!38922 List!6018)) (StringLiteralValue!3659 (value!38923 List!6018)) (ErrorTokenValue!1219 (msg!1280 List!6018)) )
))
(declare-datatypes ((List!6019 0))(
  ( (Nil!6009) (Cons!6009 (h!11410 C!3980) (t!79972 List!6019)) )
))
(declare-datatypes ((IArray!3825 0))(
  ( (IArray!3826 (innerList!1970 List!6019)) )
))
(declare-datatypes ((Conc!1912 0))(
  ( (Node!1912 (left!4830 Conc!1912) (right!5160 Conc!1912) (csize!4054 Int) (cheight!2123 Int)) (Leaf!3017 (xs!4549 IArray!3825) (csize!4055 Int)) (Empty!1912) )
))
(declare-datatypes ((BalanceConc!3832 0))(
  ( (BalanceConc!3833 (c!111704 Conc!1912)) )
))
(declare-datatypes ((TokenValueInjection!2206 0))(
  ( (TokenValueInjection!2207 (toValue!2094 Int) (toChars!1953 Int)) )
))
(declare-datatypes ((Rule!2190 0))(
  ( (Rule!2191 (regex!1195 Regex!1529) (tag!1457 String!7838) (isSeparator!1195 Bool) (transformation!1195 TokenValueInjection!2206)) )
))
(declare-datatypes ((List!6020 0))(
  ( (Nil!6010) (Cons!6010 (h!11411 Rule!2190) (t!79973 List!6020)) )
))
(declare-fun rules!3103 () List!6020)

(declare-fun isEmpty!4337 (List!6020) Bool)

(assert (=> b!601761 (= res!260301 (not (isEmpty!4337 rules!3103)))))

(declare-fun b!601762 () Bool)

(declare-fun e!364536 () Bool)

(declare-fun e!364541 () Bool)

(assert (=> b!601762 (= e!364536 (not e!364541))))

(declare-fun res!260302 () Bool)

(assert (=> b!601762 (=> res!260302 e!364541)))

(declare-fun input!2705 () List!6019)

(declare-fun lt!256194 () List!6019)

(declare-fun isPrefix!823 (List!6019 List!6019) Bool)

(assert (=> b!601762 (= res!260302 (not (isPrefix!823 input!2705 lt!256194)))))

(declare-fun lt!256220 () List!6019)

(assert (=> b!601762 (isPrefix!823 lt!256220 lt!256194)))

(declare-fun lt!256214 () Unit!10939)

(declare-fun suffix!1342 () List!6019)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!668 (List!6019 List!6019) Unit!10939)

(assert (=> b!601762 (= lt!256214 (lemmaConcatTwoListThenFirstIsPrefix!668 lt!256220 suffix!1342))))

(declare-fun lt!256200 () List!6019)

(assert (=> b!601762 (isPrefix!823 input!2705 lt!256200)))

(declare-fun lt!256219 () Unit!10939)

(assert (=> b!601762 (= lt!256219 (lemmaConcatTwoListThenFirstIsPrefix!668 input!2705 suffix!1342))))

(declare-fun e!364533 () Bool)

(assert (=> b!601762 e!364533))

(declare-fun res!260310 () Bool)

(assert (=> b!601762 (=> (not res!260310) (not e!364533))))

(declare-datatypes ((Token!2126 0))(
  ( (Token!2127 (value!38924 TokenValue!1219) (rule!1969 Rule!2190) (size!4728 Int) (originalCharacters!1234 List!6019)) )
))
(declare-datatypes ((tuple2!6892 0))(
  ( (tuple2!6893 (_1!3710 Token!2126) (_2!3710 List!6019)) )
))
(declare-datatypes ((Option!1546 0))(
  ( (None!1545) (Some!1545 (v!16440 tuple2!6892)) )
))
(declare-fun lt!256198 () Option!1546)

(declare-fun lt!256206 () TokenValue!1219)

(assert (=> b!601762 (= res!260310 (= (value!38924 (_1!3710 (v!16440 lt!256198))) lt!256206))))

(declare-fun lt!256216 () List!6019)

(declare-fun apply!1448 (TokenValueInjection!2206 BalanceConc!3832) TokenValue!1219)

(declare-fun seqFromList!1371 (List!6019) BalanceConc!3832)

(assert (=> b!601762 (= lt!256206 (apply!1448 (transformation!1195 (rule!1969 (_1!3710 (v!16440 lt!256198)))) (seqFromList!1371 lt!256216)))))

(declare-fun lt!256201 () Unit!10939)

(declare-fun token!491 () Token!2126)

(declare-fun lemmaInv!303 (TokenValueInjection!2206) Unit!10939)

(assert (=> b!601762 (= lt!256201 (lemmaInv!303 (transformation!1195 (rule!1969 token!491))))))

(declare-fun lt!256218 () Unit!10939)

(assert (=> b!601762 (= lt!256218 (lemmaInv!303 (transformation!1195 (rule!1969 (_1!3710 (v!16440 lt!256198))))))))

(declare-datatypes ((LexerInterface!1081 0))(
  ( (LexerInterfaceExt!1078 (__x!4337 Int)) (Lexer!1079) )
))
(declare-fun thiss!22590 () LexerInterface!1081)

(declare-fun ruleValid!393 (LexerInterface!1081 Rule!2190) Bool)

(assert (=> b!601762 (ruleValid!393 thiss!22590 (rule!1969 token!491))))

(declare-fun lt!256197 () Unit!10939)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!240 (LexerInterface!1081 Rule!2190 List!6020) Unit!10939)

(assert (=> b!601762 (= lt!256197 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!240 thiss!22590 (rule!1969 token!491) rules!3103))))

(assert (=> b!601762 (ruleValid!393 thiss!22590 (rule!1969 (_1!3710 (v!16440 lt!256198))))))

(declare-fun lt!256210 () Unit!10939)

(assert (=> b!601762 (= lt!256210 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!240 thiss!22590 (rule!1969 (_1!3710 (v!16440 lt!256198))) rules!3103))))

(assert (=> b!601762 (isPrefix!823 input!2705 input!2705)))

(declare-fun lt!256212 () Unit!10939)

(declare-fun lemmaIsPrefixRefl!559 (List!6019 List!6019) Unit!10939)

(assert (=> b!601762 (= lt!256212 (lemmaIsPrefixRefl!559 input!2705 input!2705))))

(declare-fun lt!256207 () List!6019)

(assert (=> b!601762 (= (_2!3710 (v!16440 lt!256198)) lt!256207)))

(declare-fun lt!256217 () Unit!10939)

(declare-fun lemmaSamePrefixThenSameSuffix!536 (List!6019 List!6019 List!6019 List!6019 List!6019) Unit!10939)

(assert (=> b!601762 (= lt!256217 (lemmaSamePrefixThenSameSuffix!536 lt!256216 (_2!3710 (v!16440 lt!256198)) lt!256216 lt!256207 input!2705))))

(declare-fun getSuffix!340 (List!6019 List!6019) List!6019)

(assert (=> b!601762 (= lt!256207 (getSuffix!340 input!2705 lt!256216))))

(declare-fun ++!1683 (List!6019 List!6019) List!6019)

(assert (=> b!601762 (isPrefix!823 lt!256216 (++!1683 lt!256216 (_2!3710 (v!16440 lt!256198))))))

(declare-fun lt!256193 () Unit!10939)

(assert (=> b!601762 (= lt!256193 (lemmaConcatTwoListThenFirstIsPrefix!668 lt!256216 (_2!3710 (v!16440 lt!256198))))))

(declare-fun lt!256211 () Unit!10939)

(declare-fun lemmaCharactersSize!254 (Token!2126) Unit!10939)

(assert (=> b!601762 (= lt!256211 (lemmaCharactersSize!254 token!491))))

(declare-fun lt!256202 () Unit!10939)

(assert (=> b!601762 (= lt!256202 (lemmaCharactersSize!254 (_1!3710 (v!16440 lt!256198))))))

(declare-fun lt!256204 () Unit!10939)

(assert (=> b!601762 (= lt!256204 e!364535)))

(declare-fun c!111702 () Bool)

(declare-fun lt!256208 () Int)

(declare-fun lt!256209 () Int)

(assert (=> b!601762 (= c!111702 (> lt!256208 lt!256209))))

(declare-fun size!4729 (List!6019) Int)

(assert (=> b!601762 (= lt!256209 (size!4729 lt!256220))))

(assert (=> b!601762 (= lt!256208 (size!4729 lt!256216))))

(declare-fun list!2522 (BalanceConc!3832) List!6019)

(declare-fun charsOf!824 (Token!2126) BalanceConc!3832)

(assert (=> b!601762 (= lt!256216 (list!2522 (charsOf!824 (_1!3710 (v!16440 lt!256198)))))))

(assert (=> b!601762 (= lt!256198 (Some!1545 (v!16440 lt!256198)))))

(declare-fun lt!256205 () Unit!10939)

(declare-fun lemmaConcatSameAndSameSizesThenSameLists!268 (List!6019 List!6019 List!6019 List!6019) Unit!10939)

(assert (=> b!601762 (= lt!256205 (lemmaConcatSameAndSameSizesThenSameLists!268 lt!256220 suffix!1342 input!2705 suffix!1342))))

(declare-fun b!601763 () Bool)

(declare-fun e!364529 () Bool)

(declare-fun e!364539 () Bool)

(assert (=> b!601763 (= e!364529 e!364539)))

(declare-fun res!260309 () Bool)

(assert (=> b!601763 (=> (not res!260309) (not e!364539))))

(declare-fun lt!256215 () Option!1546)

(declare-fun isDefined!1357 (Option!1546) Bool)

(assert (=> b!601763 (= res!260309 (isDefined!1357 lt!256215))))

(declare-fun maxPrefix!779 (LexerInterface!1081 List!6020 List!6019) Option!1546)

(assert (=> b!601763 (= lt!256215 (maxPrefix!779 thiss!22590 rules!3103 lt!256200))))

(assert (=> b!601763 (= lt!256200 (++!1683 input!2705 suffix!1342))))

(declare-fun e!364532 () Bool)

(assert (=> b!601764 (= e!364532 (and tp!187309 tp!187310))))

(declare-fun b!601765 () Bool)

(declare-fun e!364537 () Bool)

(assert (=> b!601765 (= e!364537 e!364536)))

(declare-fun res!260305 () Bool)

(assert (=> b!601765 (=> (not res!260305) (not e!364536))))

(assert (=> b!601765 (= res!260305 (= lt!256194 lt!256200))))

(assert (=> b!601765 (= lt!256194 (++!1683 lt!256220 suffix!1342))))

(declare-fun b!601766 () Bool)

(declare-fun res!260307 () Bool)

(assert (=> b!601766 (=> (not res!260307) (not e!364546))))

(declare-fun rulesInvariant!1044 (LexerInterface!1081 List!6020) Bool)

(assert (=> b!601766 (= res!260307 (rulesInvariant!1044 thiss!22590 rules!3103))))

(declare-fun b!601767 () Bool)

(declare-fun e!364531 () Bool)

(assert (=> b!601767 (= e!364539 e!364531)))

(declare-fun res!260304 () Bool)

(assert (=> b!601767 (=> (not res!260304) (not e!364531))))

(declare-fun lt!256199 () tuple2!6892)

(assert (=> b!601767 (= res!260304 (and (= (_1!3710 lt!256199) token!491) (= (_2!3710 lt!256199) suffix!1342)))))

(declare-fun get!2307 (Option!1546) tuple2!6892)

(assert (=> b!601767 (= lt!256199 (get!2307 lt!256215))))

(declare-fun b!601768 () Bool)

(declare-fun tp!187305 () Bool)

(declare-fun e!364528 () Bool)

(declare-fun e!364527 () Bool)

(declare-fun inv!7626 (String!7838) Bool)

(declare-fun inv!7629 (TokenValueInjection!2206) Bool)

(assert (=> b!601768 (= e!364527 (and tp!187305 (inv!7626 (tag!1457 (rule!1969 token!491))) (inv!7629 (transformation!1195 (rule!1969 token!491))) e!364528))))

(declare-fun b!601770 () Bool)

(declare-fun res!260311 () Bool)

(assert (=> b!601770 (=> (not res!260311) (not e!364546))))

(declare-fun isEmpty!4338 (List!6019) Bool)

(assert (=> b!601770 (= res!260311 (not (isEmpty!4338 input!2705)))))

(declare-fun b!601771 () Bool)

(assert (=> b!601771 (= e!364531 e!364537)))

(declare-fun res!260312 () Bool)

(assert (=> b!601771 (=> (not res!260312) (not e!364537))))

(get-info :version)

(assert (=> b!601771 (= res!260312 ((_ is Some!1545) lt!256198))))

(assert (=> b!601771 (= lt!256198 (maxPrefix!779 thiss!22590 rules!3103 input!2705))))

(declare-fun b!601772 () Bool)

(assert (=> b!601772 (= e!364533 (and (= (size!4728 (_1!3710 (v!16440 lt!256198))) lt!256208) (= (originalCharacters!1234 (_1!3710 (v!16440 lt!256198))) lt!256216) (= (v!16440 lt!256198) (tuple2!6893 (Token!2127 lt!256206 (rule!1969 (_1!3710 (v!16440 lt!256198))) lt!256208 lt!256216) lt!256207))))))

(declare-fun b!601773 () Bool)

(assert (=> b!601773 (= e!364546 e!364529)))

(declare-fun res!260308 () Bool)

(assert (=> b!601773 (=> (not res!260308) (not e!364529))))

(assert (=> b!601773 (= res!260308 (= lt!256220 input!2705))))

(assert (=> b!601773 (= lt!256220 (list!2522 (charsOf!824 token!491)))))

(declare-fun b!601774 () Bool)

(declare-fun res!260306 () Bool)

(declare-fun e!364530 () Bool)

(assert (=> b!601774 (=> (not res!260306) (not e!364530))))

(assert (=> b!601774 (= res!260306 (= (size!4728 token!491) (size!4729 (originalCharacters!1234 token!491))))))

(declare-fun res!260300 () Bool)

(assert (=> start!57152 (=> (not res!260300) (not e!364546))))

(assert (=> start!57152 (= res!260300 ((_ is Lexer!1079) thiss!22590))))

(assert (=> start!57152 e!364546))

(declare-fun e!364544 () Bool)

(assert (=> start!57152 e!364544))

(declare-fun e!364534 () Bool)

(assert (=> start!57152 e!364534))

(declare-fun e!364543 () Bool)

(declare-fun inv!7630 (Token!2126) Bool)

(assert (=> start!57152 (and (inv!7630 token!491) e!364543)))

(assert (=> start!57152 true))

(declare-fun e!364540 () Bool)

(assert (=> start!57152 e!364540))

(declare-fun b!601769 () Bool)

(assert (=> b!601769 (= e!364541 true)))

(declare-fun maxPrefixOneRule!442 (LexerInterface!1081 Rule!2190 List!6019) Option!1546)

(assert (=> b!601769 (= (maxPrefixOneRule!442 thiss!22590 (rule!1969 (_1!3710 (v!16440 lt!256198))) input!2705) (Some!1545 (tuple2!6893 (Token!2127 lt!256206 (rule!1969 (_1!3710 (v!16440 lt!256198))) lt!256208 lt!256216) (_2!3710 (v!16440 lt!256198)))))))

(declare-fun lt!256196 () Unit!10939)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!148 (LexerInterface!1081 List!6020 List!6019 List!6019 List!6019 Rule!2190) Unit!10939)

(assert (=> b!601769 (= lt!256196 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!148 thiss!22590 rules!3103 lt!256216 input!2705 (_2!3710 (v!16440 lt!256198)) (rule!1969 (_1!3710 (v!16440 lt!256198)))))))

(assert (=> b!601769 e!364530))

(declare-fun res!260303 () Bool)

(assert (=> b!601769 (=> (not res!260303) (not e!364530))))

(declare-fun lt!256203 () TokenValue!1219)

(assert (=> b!601769 (= res!260303 (= (value!38924 token!491) lt!256203))))

(assert (=> b!601769 (= lt!256203 (apply!1448 (transformation!1195 (rule!1969 token!491)) (seqFromList!1371 lt!256220)))))

(declare-fun lt!256213 () List!6019)

(assert (=> b!601769 (= suffix!1342 lt!256213)))

(declare-fun lt!256195 () Unit!10939)

(assert (=> b!601769 (= lt!256195 (lemmaSamePrefixThenSameSuffix!536 lt!256220 suffix!1342 lt!256220 lt!256213 lt!256200))))

(assert (=> b!601769 (= lt!256213 (getSuffix!340 lt!256200 lt!256220))))

(declare-fun tp!187304 () Bool)

(declare-fun e!364542 () Bool)

(declare-fun b!601775 () Bool)

(assert (=> b!601775 (= e!364542 (and tp!187304 (inv!7626 (tag!1457 (h!11411 rules!3103))) (inv!7629 (transformation!1195 (h!11411 rules!3103))) e!364532))))

(declare-fun b!601776 () Bool)

(declare-fun tp!187312 () Bool)

(assert (=> b!601776 (= e!364534 (and e!364542 tp!187312))))

(declare-fun b!601777 () Bool)

(declare-fun tp_is_empty!3413 () Bool)

(declare-fun tp!187311 () Bool)

(assert (=> b!601777 (= e!364540 (and tp_is_empty!3413 tp!187311))))

(declare-fun b!601778 () Bool)

(declare-fun res!260299 () Bool)

(assert (=> b!601778 (=> (not res!260299) (not e!364533))))

(assert (=> b!601778 (= res!260299 (= (size!4728 (_1!3710 (v!16440 lt!256198))) (size!4729 (originalCharacters!1234 (_1!3710 (v!16440 lt!256198))))))))

(assert (=> b!601779 (= e!364528 (and tp!187303 tp!187307))))

(declare-fun b!601780 () Bool)

(declare-fun Unit!10943 () Unit!10939)

(assert (=> b!601780 (= e!364535 Unit!10943)))

(assert (=> b!601780 false))

(declare-fun b!601781 () Bool)

(assert (=> b!601781 (= e!364530 (and (= (size!4728 token!491) lt!256209) (= (originalCharacters!1234 token!491) lt!256220) (= (tuple2!6893 token!491 suffix!1342) (tuple2!6893 (Token!2127 lt!256203 (rule!1969 token!491) lt!256209 lt!256220) lt!256213))))))

(declare-fun b!601782 () Bool)

(declare-fun tp!187308 () Bool)

(assert (=> b!601782 (= e!364544 (and tp_is_empty!3413 tp!187308))))

(declare-fun b!601783 () Bool)

(declare-fun tp!187306 () Bool)

(declare-fun inv!21 (TokenValue!1219) Bool)

(assert (=> b!601783 (= e!364543 (and (inv!21 (value!38924 token!491)) e!364527 tp!187306))))

(assert (= (and start!57152 res!260300) b!601761))

(assert (= (and b!601761 res!260301) b!601766))

(assert (= (and b!601766 res!260307) b!601770))

(assert (= (and b!601770 res!260311) b!601773))

(assert (= (and b!601773 res!260308) b!601763))

(assert (= (and b!601763 res!260309) b!601767))

(assert (= (and b!601767 res!260304) b!601771))

(assert (= (and b!601771 res!260312) b!601765))

(assert (= (and b!601765 res!260305) b!601762))

(assert (= (and b!601762 c!111702) b!601780))

(assert (= (and b!601762 (not c!111702)) b!601760))

(assert (= (and b!601762 res!260310) b!601778))

(assert (= (and b!601778 res!260299) b!601772))

(assert (= (and b!601762 (not res!260302)) b!601769))

(assert (= (and b!601769 res!260303) b!601774))

(assert (= (and b!601774 res!260306) b!601781))

(assert (= (and start!57152 ((_ is Cons!6009) suffix!1342)) b!601782))

(assert (= b!601775 b!601764))

(assert (= b!601776 b!601775))

(assert (= (and start!57152 ((_ is Cons!6010) rules!3103)) b!601776))

(assert (= b!601768 b!601779))

(assert (= b!601783 b!601768))

(assert (= start!57152 b!601783))

(assert (= (and start!57152 ((_ is Cons!6009) input!2705)) b!601777))

(declare-fun m!866317 () Bool)

(assert (=> b!601763 m!866317))

(declare-fun m!866319 () Bool)

(assert (=> b!601763 m!866319))

(declare-fun m!866321 () Bool)

(assert (=> b!601763 m!866321))

(declare-fun m!866323 () Bool)

(assert (=> b!601766 m!866323))

(declare-fun m!866325 () Bool)

(assert (=> b!601783 m!866325))

(declare-fun m!866327 () Bool)

(assert (=> b!601771 m!866327))

(declare-fun m!866329 () Bool)

(assert (=> b!601762 m!866329))

(declare-fun m!866331 () Bool)

(assert (=> b!601762 m!866331))

(declare-fun m!866333 () Bool)

(assert (=> b!601762 m!866333))

(declare-fun m!866335 () Bool)

(assert (=> b!601762 m!866335))

(declare-fun m!866337 () Bool)

(assert (=> b!601762 m!866337))

(declare-fun m!866339 () Bool)

(assert (=> b!601762 m!866339))

(declare-fun m!866341 () Bool)

(assert (=> b!601762 m!866341))

(declare-fun m!866343 () Bool)

(assert (=> b!601762 m!866343))

(assert (=> b!601762 m!866329))

(declare-fun m!866345 () Bool)

(assert (=> b!601762 m!866345))

(declare-fun m!866347 () Bool)

(assert (=> b!601762 m!866347))

(declare-fun m!866349 () Bool)

(assert (=> b!601762 m!866349))

(declare-fun m!866351 () Bool)

(assert (=> b!601762 m!866351))

(declare-fun m!866353 () Bool)

(assert (=> b!601762 m!866353))

(declare-fun m!866355 () Bool)

(assert (=> b!601762 m!866355))

(declare-fun m!866357 () Bool)

(assert (=> b!601762 m!866357))

(declare-fun m!866359 () Bool)

(assert (=> b!601762 m!866359))

(declare-fun m!866361 () Bool)

(assert (=> b!601762 m!866361))

(assert (=> b!601762 m!866347))

(declare-fun m!866363 () Bool)

(assert (=> b!601762 m!866363))

(declare-fun m!866365 () Bool)

(assert (=> b!601762 m!866365))

(declare-fun m!866367 () Bool)

(assert (=> b!601762 m!866367))

(declare-fun m!866369 () Bool)

(assert (=> b!601762 m!866369))

(declare-fun m!866371 () Bool)

(assert (=> b!601762 m!866371))

(declare-fun m!866373 () Bool)

(assert (=> b!601762 m!866373))

(declare-fun m!866375 () Bool)

(assert (=> b!601762 m!866375))

(assert (=> b!601762 m!866339))

(declare-fun m!866377 () Bool)

(assert (=> b!601762 m!866377))

(declare-fun m!866379 () Bool)

(assert (=> b!601762 m!866379))

(declare-fun m!866381 () Bool)

(assert (=> b!601762 m!866381))

(declare-fun m!866383 () Bool)

(assert (=> b!601761 m!866383))

(declare-fun m!866385 () Bool)

(assert (=> b!601775 m!866385))

(declare-fun m!866387 () Bool)

(assert (=> b!601775 m!866387))

(declare-fun m!866389 () Bool)

(assert (=> b!601773 m!866389))

(assert (=> b!601773 m!866389))

(declare-fun m!866391 () Bool)

(assert (=> b!601773 m!866391))

(declare-fun m!866393 () Bool)

(assert (=> b!601767 m!866393))

(declare-fun m!866395 () Bool)

(assert (=> b!601765 m!866395))

(declare-fun m!866397 () Bool)

(assert (=> b!601778 m!866397))

(declare-fun m!866399 () Bool)

(assert (=> b!601770 m!866399))

(declare-fun m!866401 () Bool)

(assert (=> start!57152 m!866401))

(declare-fun m!866403 () Bool)

(assert (=> b!601774 m!866403))

(declare-fun m!866405 () Bool)

(assert (=> b!601769 m!866405))

(declare-fun m!866407 () Bool)

(assert (=> b!601769 m!866407))

(declare-fun m!866409 () Bool)

(assert (=> b!601769 m!866409))

(declare-fun m!866411 () Bool)

(assert (=> b!601769 m!866411))

(declare-fun m!866413 () Bool)

(assert (=> b!601769 m!866413))

(declare-fun m!866415 () Bool)

(assert (=> b!601769 m!866415))

(assert (=> b!601769 m!866407))

(declare-fun m!866417 () Bool)

(assert (=> b!601768 m!866417))

(declare-fun m!866419 () Bool)

(assert (=> b!601768 m!866419))

(check-sat (not b_next!17119) (not b!601762) (not b!601766) (not b_next!17123) (not b_next!17121) (not b!601768) b_and!59429 (not b!601769) (not b!601778) (not b!601767) (not b!601775) (not b!601783) (not b!601773) (not b!601782) (not b!601761) b_and!59431 b_and!59433 (not b!601774) (not b!601763) (not b_next!17117) (not b!601777) tp_is_empty!3413 (not b!601770) (not start!57152) (not b!601765) b_and!59427 (not b!601771) (not b!601776))
(check-sat (not b_next!17119) b_and!59431 (not b_next!17123) (not b_next!17121) b_and!59429 b_and!59433 (not b_next!17117) b_and!59427)
