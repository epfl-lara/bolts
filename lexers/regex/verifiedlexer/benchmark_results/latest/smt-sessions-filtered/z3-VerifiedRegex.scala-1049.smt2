; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!52348 () Bool)

(assert start!52348)

(declare-fun b!568174 () Bool)

(declare-fun b_free!15877 () Bool)

(declare-fun b_next!15893 () Bool)

(assert (=> b!568174 (= b_free!15877 (not b_next!15893))))

(declare-fun tp!179005 () Bool)

(declare-fun b_and!55331 () Bool)

(assert (=> b!568174 (= tp!179005 b_and!55331)))

(declare-fun b_free!15879 () Bool)

(declare-fun b_next!15895 () Bool)

(assert (=> b!568174 (= b_free!15879 (not b_next!15895))))

(declare-fun tp!179004 () Bool)

(declare-fun b_and!55333 () Bool)

(assert (=> b!568174 (= tp!179004 b_and!55333)))

(declare-fun b!568154 () Bool)

(declare-fun b_free!15881 () Bool)

(declare-fun b_next!15897 () Bool)

(assert (=> b!568154 (= b_free!15881 (not b_next!15897))))

(declare-fun tp!179008 () Bool)

(declare-fun b_and!55335 () Bool)

(assert (=> b!568154 (= tp!179008 b_and!55335)))

(declare-fun b_free!15883 () Bool)

(declare-fun b_next!15899 () Bool)

(assert (=> b!568154 (= b_free!15883 (not b_next!15899))))

(declare-fun tp!179002 () Bool)

(declare-fun b_and!55337 () Bool)

(assert (=> b!568154 (= tp!179002 b_and!55337)))

(declare-fun b!568151 () Bool)

(declare-fun e!343464 () Bool)

(declare-fun e!343486 () Bool)

(declare-fun tp!179007 () Bool)

(assert (=> b!568151 (= e!343464 (and e!343486 tp!179007))))

(declare-fun lt!240063 () Int)

(declare-datatypes ((C!3760 0))(
  ( (C!3761 (val!2106 Int)) )
))
(declare-datatypes ((List!5626 0))(
  ( (Nil!5616) (Cons!5616 (h!11017 C!3760) (t!76405 List!5626)) )
))
(declare-fun input!2705 () List!5626)

(declare-fun e!343487 () Bool)

(declare-fun b!568152 () Bool)

(declare-fun lt!240055 () Int)

(declare-fun lt!240049 () List!5626)

(assert (=> b!568152 (= e!343487 (or (not (= lt!240055 lt!240063)) (= lt!240049 input!2705)))))

(declare-datatypes ((Unit!10050 0))(
  ( (Unit!10051) )
))
(declare-fun lt!240059 () Unit!10050)

(declare-datatypes ((Regex!1419 0))(
  ( (ElementMatch!1419 (c!106451 C!3760)) (Concat!2528 (regOne!3350 Regex!1419) (regTwo!3350 Regex!1419)) (EmptyExpr!1419) (Star!1419 (reg!1748 Regex!1419)) (EmptyLang!1419) (Union!1419 (regOne!3351 Regex!1419) (regTwo!3351 Regex!1419)) )
))
(declare-datatypes ((List!5627 0))(
  ( (Nil!5617) (Cons!5617 (h!11018 (_ BitVec 16)) (t!76406 List!5627)) )
))
(declare-datatypes ((TokenValue!1109 0))(
  ( (FloatLiteralValue!2218 (text!8208 List!5627)) (TokenValueExt!1108 (__x!4116 Int)) (Broken!5545 (value!35763 List!5627)) (Object!1118) (End!1109) (Def!1109) (Underscore!1109) (Match!1109) (Else!1109) (Error!1109) (Case!1109) (If!1109) (Extends!1109) (Abstract!1109) (Class!1109) (Val!1109) (DelimiterValue!2218 (del!1169 List!5627)) (KeywordValue!1115 (value!35764 List!5627)) (CommentValue!2218 (value!35765 List!5627)) (WhitespaceValue!2218 (value!35766 List!5627)) (IndentationValue!1109 (value!35767 List!5627)) (String!7288) (Int32!1109) (Broken!5546 (value!35768 List!5627)) (Boolean!1110) (Unit!10052) (OperatorValue!1112 (op!1169 List!5627)) (IdentifierValue!2218 (value!35769 List!5627)) (IdentifierValue!2219 (value!35770 List!5627)) (WhitespaceValue!2219 (value!35771 List!5627)) (True!2218) (False!2218) (Broken!5547 (value!35772 List!5627)) (Broken!5548 (value!35773 List!5627)) (True!2219) (RightBrace!1109) (RightBracket!1109) (Colon!1109) (Null!1109) (Comma!1109) (LeftBracket!1109) (False!2219) (LeftBrace!1109) (ImaginaryLiteralValue!1109 (text!8209 List!5627)) (StringLiteralValue!3327 (value!35774 List!5627)) (EOFValue!1109 (value!35775 List!5627)) (IdentValue!1109 (value!35776 List!5627)) (DelimiterValue!2219 (value!35777 List!5627)) (DedentValue!1109 (value!35778 List!5627)) (NewLineValue!1109 (value!35779 List!5627)) (IntegerValue!3327 (value!35780 (_ BitVec 32)) (text!8210 List!5627)) (IntegerValue!3328 (value!35781 Int) (text!8211 List!5627)) (Times!1109) (Or!1109) (Equal!1109) (Minus!1109) (Broken!5549 (value!35782 List!5627)) (And!1109) (Div!1109) (LessEqual!1109) (Mod!1109) (Concat!2529) (Not!1109) (Plus!1109) (SpaceValue!1109 (value!35783 List!5627)) (IntegerValue!3329 (value!35784 Int) (text!8212 List!5627)) (StringLiteralValue!3328 (text!8213 List!5627)) (FloatLiteralValue!2219 (text!8214 List!5627)) (BytesLiteralValue!1109 (value!35785 List!5627)) (CommentValue!2219 (value!35786 List!5627)) (StringLiteralValue!3329 (value!35787 List!5627)) (ErrorTokenValue!1109 (msg!1170 List!5627)) )
))
(declare-datatypes ((String!7289 0))(
  ( (String!7290 (value!35788 String)) )
))
(declare-datatypes ((IArray!3605 0))(
  ( (IArray!3606 (innerList!1860 List!5626)) )
))
(declare-datatypes ((Conc!1802 0))(
  ( (Node!1802 (left!4589 Conc!1802) (right!4919 Conc!1802) (csize!3834 Int) (cheight!2013 Int)) (Leaf!2852 (xs!4439 IArray!3605) (csize!3835 Int)) (Empty!1802) )
))
(declare-datatypes ((BalanceConc!3612 0))(
  ( (BalanceConc!3613 (c!106452 Conc!1802)) )
))
(declare-datatypes ((TokenValueInjection!1986 0))(
  ( (TokenValueInjection!1987 (toValue!1940 Int) (toChars!1799 Int)) )
))
(declare-datatypes ((Rule!1970 0))(
  ( (Rule!1971 (regex!1085 Regex!1419) (tag!1347 String!7289) (isSeparator!1085 Bool) (transformation!1085 TokenValueInjection!1986)) )
))
(declare-datatypes ((Token!1906 0))(
  ( (Token!1907 (value!35789 TokenValue!1109) (rule!1825 Rule!1970) (size!4472 Int) (originalCharacters!1124 List!5626)) )
))
(declare-fun token!491 () Token!1906)

(declare-fun lt!240057 () BalanceConc!3612)

(declare-fun lemmaSemiInverse!188 (TokenValueInjection!1986 BalanceConc!3612) Unit!10050)

(assert (=> b!568152 (= lt!240059 (lemmaSemiInverse!188 (transformation!1085 (rule!1825 token!491)) lt!240057))))

(declare-fun lt!240060 () Unit!10050)

(declare-datatypes ((tuple2!6604 0))(
  ( (tuple2!6605 (_1!3566 Token!1906) (_2!3566 List!5626)) )
))
(declare-datatypes ((Option!1436 0))(
  ( (None!1435) (Some!1435 (v!16284 tuple2!6604)) )
))
(declare-fun lt!240054 () Option!1436)

(declare-fun lt!240052 () BalanceConc!3612)

(assert (=> b!568152 (= lt!240060 (lemmaSemiInverse!188 (transformation!1085 (rule!1825 (_1!3566 (v!16284 lt!240054)))) lt!240052))))

(declare-fun lt!240042 () Unit!10050)

(declare-fun e!343472 () Unit!10050)

(assert (=> b!568152 (= lt!240042 e!343472)))

(declare-fun c!106449 () Bool)

(assert (=> b!568152 (= c!106449 (< lt!240055 lt!240063))))

(declare-fun e!343467 () Bool)

(assert (=> b!568152 e!343467))

(declare-fun res!244010 () Bool)

(assert (=> b!568152 (=> (not res!244010) (not e!343467))))

(declare-fun lt!240047 () TokenValue!1109)

(declare-datatypes ((LexerInterface!971 0))(
  ( (LexerInterfaceExt!968 (__x!4117 Int)) (Lexer!969) )
))
(declare-fun thiss!22590 () LexerInterface!971)

(declare-fun suffix!1342 () List!5626)

(declare-fun lt!240072 () List!5626)

(declare-fun lt!240071 () List!5626)

(declare-fun maxPrefixOneRule!370 (LexerInterface!971 Rule!1970 List!5626) Option!1436)

(assert (=> b!568152 (= res!244010 (= (maxPrefixOneRule!370 thiss!22590 (rule!1825 token!491) lt!240071) (Some!1435 (tuple2!6605 (Token!1907 lt!240047 (rule!1825 token!491) lt!240063 lt!240072) suffix!1342))))))

(declare-fun lt!240064 () Unit!10050)

(declare-datatypes ((List!5628 0))(
  ( (Nil!5618) (Cons!5618 (h!11019 Rule!1970) (t!76407 List!5628)) )
))
(declare-fun rules!3103 () List!5628)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!120 (LexerInterface!971 List!5628 List!5626 List!5626 List!5626 Rule!1970) Unit!10050)

(assert (=> b!568152 (= lt!240064 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!120 thiss!22590 rules!3103 lt!240072 lt!240071 suffix!1342 (rule!1825 token!491)))))

(declare-fun lt!240058 () TokenValue!1109)

(declare-fun lt!240069 () List!5626)

(assert (=> b!568152 (= (maxPrefixOneRule!370 thiss!22590 (rule!1825 (_1!3566 (v!16284 lt!240054))) input!2705) (Some!1435 (tuple2!6605 (Token!1907 lt!240058 (rule!1825 (_1!3566 (v!16284 lt!240054))) lt!240055 lt!240069) (_2!3566 (v!16284 lt!240054)))))))

(declare-fun lt!240044 () Unit!10050)

(assert (=> b!568152 (= lt!240044 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!120 thiss!22590 rules!3103 lt!240069 input!2705 (_2!3566 (v!16284 lt!240054)) (rule!1825 (_1!3566 (v!16284 lt!240054)))))))

(declare-fun e!343478 () Bool)

(assert (=> b!568152 e!343478))

(declare-fun res!243998 () Bool)

(assert (=> b!568152 (=> (not res!243998) (not e!343478))))

(assert (=> b!568152 (= res!243998 (= (value!35789 token!491) lt!240047))))

(declare-fun apply!1350 (TokenValueInjection!1986 BalanceConc!3612) TokenValue!1109)

(assert (=> b!568152 (= lt!240047 (apply!1350 (transformation!1085 (rule!1825 token!491)) lt!240057))))

(declare-fun seqFromList!1273 (List!5626) BalanceConc!3612)

(assert (=> b!568152 (= lt!240057 (seqFromList!1273 lt!240072))))

(declare-fun lt!240056 () List!5626)

(assert (=> b!568152 (= suffix!1342 lt!240056)))

(declare-fun lt!240045 () Unit!10050)

(declare-fun lemmaSamePrefixThenSameSuffix!442 (List!5626 List!5626 List!5626 List!5626 List!5626) Unit!10050)

(assert (=> b!568152 (= lt!240045 (lemmaSamePrefixThenSameSuffix!442 lt!240072 suffix!1342 lt!240072 lt!240056 lt!240071))))

(declare-fun getSuffix!238 (List!5626 List!5626) List!5626)

(assert (=> b!568152 (= lt!240056 (getSuffix!238 lt!240071 lt!240072))))

(declare-fun b!568153 () Bool)

(declare-fun e!343485 () Bool)

(declare-fun tp_is_empty!3193 () Bool)

(declare-fun tp!179003 () Bool)

(assert (=> b!568153 (= e!343485 (and tp_is_empty!3193 tp!179003))))

(declare-fun e!343481 () Bool)

(assert (=> b!568154 (= e!343481 (and tp!179008 tp!179002))))

(declare-fun b!568155 () Bool)

(assert (=> b!568155 (= e!343478 (and (= (size!4472 token!491) lt!240063) (= (originalCharacters!1124 token!491) lt!240072) (= (tuple2!6605 token!491 suffix!1342) (tuple2!6605 (Token!1907 lt!240047 (rule!1825 token!491) lt!240063 lt!240072) lt!240056))))))

(declare-fun b!568156 () Bool)

(declare-fun e!343479 () Unit!10050)

(declare-fun Unit!10053 () Unit!10050)

(assert (=> b!568156 (= e!343479 Unit!10053)))

(declare-fun tp!178999 () Bool)

(declare-fun b!568157 () Bool)

(declare-fun e!343474 () Bool)

(declare-fun inv!7054 (String!7289) Bool)

(declare-fun inv!7057 (TokenValueInjection!1986) Bool)

(assert (=> b!568157 (= e!343474 (and tp!178999 (inv!7054 (tag!1347 (rule!1825 token!491))) (inv!7057 (transformation!1085 (rule!1825 token!491))) e!343481))))

(declare-fun b!568158 () Bool)

(declare-fun e!343469 () Bool)

(declare-fun e!343480 () Bool)

(assert (=> b!568158 (= e!343469 e!343480)))

(declare-fun res!244007 () Bool)

(assert (=> b!568158 (=> (not res!244007) (not e!343480))))

(declare-fun lt!240041 () Option!1436)

(declare-fun isDefined!1247 (Option!1436) Bool)

(assert (=> b!568158 (= res!244007 (isDefined!1247 lt!240041))))

(declare-fun maxPrefix!669 (LexerInterface!971 List!5628 List!5626) Option!1436)

(assert (=> b!568158 (= lt!240041 (maxPrefix!669 thiss!22590 rules!3103 lt!240071))))

(declare-fun ++!1573 (List!5626 List!5626) List!5626)

(assert (=> b!568158 (= lt!240071 (++!1573 input!2705 suffix!1342))))

(declare-fun b!568159 () Bool)

(declare-fun Unit!10054 () Unit!10050)

(assert (=> b!568159 (= e!343472 Unit!10054)))

(declare-fun b!568160 () Bool)

(declare-fun res!244015 () Bool)

(declare-fun e!343471 () Bool)

(assert (=> b!568160 (=> (not res!244015) (not e!343471))))

(declare-fun get!2142 (Option!1436) tuple2!6604)

(assert (=> b!568160 (= res!244015 (= (_1!3566 (get!2142 lt!240054)) (_1!3566 (v!16284 lt!240054))))))

(declare-fun b!568161 () Bool)

(declare-fun res!244009 () Bool)

(declare-fun e!343470 () Bool)

(assert (=> b!568161 (=> (not res!244009) (not e!343470))))

(declare-fun isEmpty!4053 (List!5626) Bool)

(assert (=> b!568161 (= res!244009 (not (isEmpty!4053 input!2705)))))

(declare-fun b!568163 () Bool)

(declare-fun Unit!10055 () Unit!10050)

(assert (=> b!568163 (= e!343472 Unit!10055)))

(declare-fun lt!240062 () Unit!10050)

(assert (=> b!568163 (= lt!240062 (lemmaSemiInverse!188 (transformation!1085 (rule!1825 (_1!3566 (v!16284 lt!240054)))) lt!240052))))

(declare-fun lt!240048 () Unit!10050)

(declare-fun lemmaMaxPrefixOutputsMaxPrefix!44 (LexerInterface!971 List!5628 Rule!1970 List!5626 List!5626 List!5626 Rule!1970) Unit!10050)

(assert (=> b!568163 (= lt!240048 (lemmaMaxPrefixOutputsMaxPrefix!44 thiss!22590 rules!3103 (rule!1825 (_1!3566 (v!16284 lt!240054))) lt!240069 input!2705 input!2705 (rule!1825 token!491)))))

(declare-fun res!244002 () Bool)

(declare-fun matchR!566 (Regex!1419 List!5626) Bool)

(assert (=> b!568163 (= res!244002 (not (matchR!566 (regex!1085 (rule!1825 token!491)) input!2705)))))

(declare-fun e!343475 () Bool)

(assert (=> b!568163 (=> (not res!244002) (not e!343475))))

(assert (=> b!568163 e!343475))

(declare-fun e!343462 () Bool)

(declare-fun tp!179001 () Bool)

(declare-fun b!568164 () Bool)

(declare-fun inv!21 (TokenValue!1109) Bool)

(assert (=> b!568164 (= e!343462 (and (inv!21 (value!35789 token!491)) e!343474 tp!179001))))

(declare-fun b!568165 () Bool)

(declare-fun e!343473 () Bool)

(assert (=> b!568165 (= e!343473 (not e!343487))))

(declare-fun res!244008 () Bool)

(assert (=> b!568165 (=> res!244008 e!343487)))

(declare-fun lt!240066 () List!5626)

(declare-fun isPrefix!719 (List!5626 List!5626) Bool)

(assert (=> b!568165 (= res!244008 (not (isPrefix!719 input!2705 lt!240066)))))

(assert (=> b!568165 (isPrefix!719 lt!240072 lt!240066)))

(declare-fun lt!240073 () Unit!10050)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!566 (List!5626 List!5626) Unit!10050)

(assert (=> b!568165 (= lt!240073 (lemmaConcatTwoListThenFirstIsPrefix!566 lt!240072 suffix!1342))))

(assert (=> b!568165 (isPrefix!719 input!2705 lt!240071)))

(declare-fun lt!240053 () Unit!10050)

(assert (=> b!568165 (= lt!240053 (lemmaConcatTwoListThenFirstIsPrefix!566 input!2705 suffix!1342))))

(declare-fun e!343484 () Bool)

(assert (=> b!568165 e!343484))

(declare-fun res!244012 () Bool)

(assert (=> b!568165 (=> (not res!244012) (not e!343484))))

(assert (=> b!568165 (= res!244012 (= (value!35789 (_1!3566 (v!16284 lt!240054))) lt!240058))))

(assert (=> b!568165 (= lt!240058 (apply!1350 (transformation!1085 (rule!1825 (_1!3566 (v!16284 lt!240054)))) lt!240052))))

(assert (=> b!568165 (= lt!240052 (seqFromList!1273 lt!240069))))

(declare-fun lt!240074 () Unit!10050)

(declare-fun lemmaInv!221 (TokenValueInjection!1986) Unit!10050)

(assert (=> b!568165 (= lt!240074 (lemmaInv!221 (transformation!1085 (rule!1825 token!491))))))

(declare-fun lt!240043 () Unit!10050)

(assert (=> b!568165 (= lt!240043 (lemmaInv!221 (transformation!1085 (rule!1825 (_1!3566 (v!16284 lt!240054))))))))

(declare-fun ruleValid!295 (LexerInterface!971 Rule!1970) Bool)

(assert (=> b!568165 (ruleValid!295 thiss!22590 (rule!1825 token!491))))

(declare-fun lt!240075 () Unit!10050)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!152 (LexerInterface!971 Rule!1970 List!5628) Unit!10050)

(assert (=> b!568165 (= lt!240075 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!152 thiss!22590 (rule!1825 token!491) rules!3103))))

(assert (=> b!568165 (ruleValid!295 thiss!22590 (rule!1825 (_1!3566 (v!16284 lt!240054))))))

(declare-fun lt!240039 () Unit!10050)

(assert (=> b!568165 (= lt!240039 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!152 thiss!22590 (rule!1825 (_1!3566 (v!16284 lt!240054))) rules!3103))))

(assert (=> b!568165 (isPrefix!719 input!2705 input!2705)))

(declare-fun lt!240061 () Unit!10050)

(declare-fun lemmaIsPrefixRefl!457 (List!5626 List!5626) Unit!10050)

(assert (=> b!568165 (= lt!240061 (lemmaIsPrefixRefl!457 input!2705 input!2705))))

(declare-fun lt!240051 () List!5626)

(assert (=> b!568165 (= (_2!3566 (v!16284 lt!240054)) lt!240051)))

(declare-fun lt!240040 () Unit!10050)

(assert (=> b!568165 (= lt!240040 (lemmaSamePrefixThenSameSuffix!442 lt!240069 (_2!3566 (v!16284 lt!240054)) lt!240069 lt!240051 input!2705))))

(assert (=> b!568165 (= lt!240051 (getSuffix!238 input!2705 lt!240069))))

(assert (=> b!568165 (isPrefix!719 lt!240069 lt!240049)))

(assert (=> b!568165 (= lt!240049 (++!1573 lt!240069 (_2!3566 (v!16284 lt!240054))))))

(declare-fun lt!240046 () Unit!10050)

(assert (=> b!568165 (= lt!240046 (lemmaConcatTwoListThenFirstIsPrefix!566 lt!240069 (_2!3566 (v!16284 lt!240054))))))

(declare-fun lt!240067 () Unit!10050)

(declare-fun lemmaCharactersSize!152 (Token!1906) Unit!10050)

(assert (=> b!568165 (= lt!240067 (lemmaCharactersSize!152 token!491))))

(declare-fun lt!240065 () Unit!10050)

(assert (=> b!568165 (= lt!240065 (lemmaCharactersSize!152 (_1!3566 (v!16284 lt!240054))))))

(declare-fun lt!240076 () Unit!10050)

(assert (=> b!568165 (= lt!240076 e!343479)))

(declare-fun c!106450 () Bool)

(assert (=> b!568165 (= c!106450 (> lt!240055 lt!240063))))

(declare-fun size!4473 (List!5626) Int)

(assert (=> b!568165 (= lt!240063 (size!4473 lt!240072))))

(assert (=> b!568165 (= lt!240055 (size!4473 lt!240069))))

(declare-fun list!2329 (BalanceConc!3612) List!5626)

(declare-fun charsOf!714 (Token!1906) BalanceConc!3612)

(assert (=> b!568165 (= lt!240069 (list!2329 (charsOf!714 (_1!3566 (v!16284 lt!240054)))))))

(declare-fun lt!240050 () tuple2!6604)

(assert (=> b!568165 (= lt!240054 (Some!1435 lt!240050))))

(assert (=> b!568165 (= lt!240050 (tuple2!6605 (_1!3566 (v!16284 lt!240054)) (_2!3566 (v!16284 lt!240054))))))

(declare-fun lt!240068 () Unit!10050)

(declare-fun lemmaConcatSameAndSameSizesThenSameLists!162 (List!5626 List!5626 List!5626 List!5626) Unit!10050)

(assert (=> b!568165 (= lt!240068 (lemmaConcatSameAndSameSizesThenSameLists!162 lt!240072 suffix!1342 input!2705 suffix!1342))))

(declare-fun b!568166 () Bool)

(declare-fun e!343463 () Bool)

(declare-fun tp!179000 () Bool)

(assert (=> b!568166 (= e!343463 (and tp_is_empty!3193 tp!179000))))

(declare-fun b!568167 () Bool)

(assert (=> b!568167 (= e!343471 (= lt!240051 (_2!3566 (v!16284 lt!240054))))))

(declare-fun b!568168 () Bool)

(assert (=> b!568168 (= e!343470 e!343469)))

(declare-fun res!244016 () Bool)

(assert (=> b!568168 (=> (not res!244016) (not e!343469))))

(assert (=> b!568168 (= res!244016 (= lt!240072 input!2705))))

(assert (=> b!568168 (= lt!240072 (list!2329 (charsOf!714 token!491)))))

(declare-fun b!568169 () Bool)

(declare-fun res!244014 () Bool)

(assert (=> b!568169 (=> (not res!244014) (not e!343470))))

(declare-fun rulesInvariant!934 (LexerInterface!971 List!5628) Bool)

(assert (=> b!568169 (= res!244014 (rulesInvariant!934 thiss!22590 rules!3103))))

(declare-fun b!568170 () Bool)

(declare-fun e!343476 () Bool)

(assert (=> b!568170 (= e!343467 e!343476)))

(declare-fun res!244000 () Bool)

(assert (=> b!568170 (=> res!244000 e!343476)))

(assert (=> b!568170 (= res!244000 (>= lt!240055 lt!240063))))

(declare-fun b!568171 () Bool)

(declare-fun e!343468 () Bool)

(assert (=> b!568171 (= e!343468 e!343473)))

(declare-fun res!244001 () Bool)

(assert (=> b!568171 (=> (not res!244001) (not e!343473))))

(assert (=> b!568171 (= res!244001 (= lt!240066 lt!240071))))

(assert (=> b!568171 (= lt!240066 (++!1573 lt!240072 suffix!1342))))

(declare-fun b!568172 () Bool)

(assert (=> b!568172 (= e!343484 (and (= (size!4472 (_1!3566 (v!16284 lt!240054))) lt!240055) (= (originalCharacters!1124 (_1!3566 (v!16284 lt!240054))) lt!240069) (= lt!240050 (tuple2!6605 (Token!1907 lt!240058 (rule!1825 (_1!3566 (v!16284 lt!240054))) lt!240055 lt!240069) lt!240051))))))

(declare-fun b!568173 () Bool)

(declare-fun res!244006 () Bool)

(assert (=> b!568173 (=> (not res!244006) (not e!343470))))

(declare-fun isEmpty!4054 (List!5628) Bool)

(assert (=> b!568173 (= res!244006 (not (isEmpty!4054 rules!3103)))))

(declare-fun e!343466 () Bool)

(assert (=> b!568174 (= e!343466 (and tp!179005 tp!179004))))

(declare-fun b!568175 () Bool)

(declare-fun res!244005 () Bool)

(assert (=> b!568175 (=> (not res!244005) (not e!343478))))

(assert (=> b!568175 (= res!244005 (= (size!4472 token!491) (size!4473 (originalCharacters!1124 token!491))))))

(declare-fun b!568176 () Bool)

(assert (=> b!568176 (= e!343475 false)))

(declare-fun tp!179006 () Bool)

(declare-fun b!568177 () Bool)

(assert (=> b!568177 (= e!343486 (and tp!179006 (inv!7054 (tag!1347 (h!11019 rules!3103))) (inv!7057 (transformation!1085 (h!11019 rules!3103))) e!343466))))

(declare-fun b!568178 () Bool)

(declare-fun res!244003 () Bool)

(assert (=> b!568178 (=> (not res!244003) (not e!343484))))

(assert (=> b!568178 (= res!244003 (= (size!4472 (_1!3566 (v!16284 lt!240054))) (size!4473 (originalCharacters!1124 (_1!3566 (v!16284 lt!240054))))))))

(declare-fun b!568179 () Bool)

(assert (=> b!568179 (= e!343476 e!343471)))

(declare-fun res!244011 () Bool)

(assert (=> b!568179 (=> (not res!244011) (not e!343471))))

(assert (=> b!568179 (= res!244011 (isDefined!1247 lt!240054))))

(declare-fun res!244013 () Bool)

(assert (=> start!52348 (=> (not res!244013) (not e!343470))))

(get-info :version)

(assert (=> start!52348 (= res!244013 ((_ is Lexer!969) thiss!22590))))

(assert (=> start!52348 e!343470))

(assert (=> start!52348 e!343485))

(assert (=> start!52348 e!343464))

(declare-fun inv!7058 (Token!1906) Bool)

(assert (=> start!52348 (and (inv!7058 token!491) e!343462)))

(assert (=> start!52348 true))

(assert (=> start!52348 e!343463))

(declare-fun b!568162 () Bool)

(declare-fun e!343477 () Bool)

(assert (=> b!568162 (= e!343480 e!343477)))

(declare-fun res!243999 () Bool)

(assert (=> b!568162 (=> (not res!243999) (not e!343477))))

(declare-fun lt!240070 () tuple2!6604)

(assert (=> b!568162 (= res!243999 (and (= (_1!3566 lt!240070) token!491) (= (_2!3566 lt!240070) suffix!1342)))))

(assert (=> b!568162 (= lt!240070 (get!2142 lt!240041))))

(declare-fun b!568180 () Bool)

(assert (=> b!568180 (= e!343477 e!343468)))

(declare-fun res!244004 () Bool)

(assert (=> b!568180 (=> (not res!244004) (not e!343468))))

(assert (=> b!568180 (= res!244004 ((_ is Some!1435) lt!240054))))

(assert (=> b!568180 (= lt!240054 (maxPrefix!669 thiss!22590 rules!3103 input!2705))))

(declare-fun b!568181 () Bool)

(declare-fun Unit!10056 () Unit!10050)

(assert (=> b!568181 (= e!343479 Unit!10056)))

(assert (=> b!568181 false))

(assert (= (and start!52348 res!244013) b!568173))

(assert (= (and b!568173 res!244006) b!568169))

(assert (= (and b!568169 res!244014) b!568161))

(assert (= (and b!568161 res!244009) b!568168))

(assert (= (and b!568168 res!244016) b!568158))

(assert (= (and b!568158 res!244007) b!568162))

(assert (= (and b!568162 res!243999) b!568180))

(assert (= (and b!568180 res!244004) b!568171))

(assert (= (and b!568171 res!244001) b!568165))

(assert (= (and b!568165 c!106450) b!568181))

(assert (= (and b!568165 (not c!106450)) b!568156))

(assert (= (and b!568165 res!244012) b!568178))

(assert (= (and b!568178 res!244003) b!568172))

(assert (= (and b!568165 (not res!244008)) b!568152))

(assert (= (and b!568152 res!243998) b!568175))

(assert (= (and b!568175 res!244005) b!568155))

(assert (= (and b!568152 res!244010) b!568170))

(assert (= (and b!568170 (not res!244000)) b!568179))

(assert (= (and b!568179 res!244011) b!568160))

(assert (= (and b!568160 res!244015) b!568167))

(assert (= (and b!568152 c!106449) b!568163))

(assert (= (and b!568152 (not c!106449)) b!568159))

(assert (= (and b!568163 res!244002) b!568176))

(assert (= (and start!52348 ((_ is Cons!5616) suffix!1342)) b!568153))

(assert (= b!568177 b!568174))

(assert (= b!568151 b!568177))

(assert (= (and start!52348 ((_ is Cons!5618) rules!3103)) b!568151))

(assert (= b!568157 b!568154))

(assert (= b!568164 b!568157))

(assert (= start!52348 b!568164))

(assert (= (and start!52348 ((_ is Cons!5616) input!2705)) b!568166))

(declare-fun m!822185 () Bool)

(assert (=> b!568158 m!822185))

(declare-fun m!822187 () Bool)

(assert (=> b!568158 m!822187))

(declare-fun m!822189 () Bool)

(assert (=> b!568158 m!822189))

(declare-fun m!822191 () Bool)

(assert (=> b!568164 m!822191))

(declare-fun m!822193 () Bool)

(assert (=> b!568163 m!822193))

(declare-fun m!822195 () Bool)

(assert (=> b!568163 m!822195))

(declare-fun m!822197 () Bool)

(assert (=> b!568163 m!822197))

(declare-fun m!822199 () Bool)

(assert (=> b!568157 m!822199))

(declare-fun m!822201 () Bool)

(assert (=> b!568157 m!822201))

(declare-fun m!822203 () Bool)

(assert (=> b!568152 m!822203))

(declare-fun m!822205 () Bool)

(assert (=> b!568152 m!822205))

(declare-fun m!822207 () Bool)

(assert (=> b!568152 m!822207))

(declare-fun m!822209 () Bool)

(assert (=> b!568152 m!822209))

(assert (=> b!568152 m!822193))

(declare-fun m!822211 () Bool)

(assert (=> b!568152 m!822211))

(declare-fun m!822213 () Bool)

(assert (=> b!568152 m!822213))

(declare-fun m!822215 () Bool)

(assert (=> b!568152 m!822215))

(declare-fun m!822217 () Bool)

(assert (=> b!568152 m!822217))

(declare-fun m!822219 () Bool)

(assert (=> b!568152 m!822219))

(declare-fun m!822221 () Bool)

(assert (=> b!568161 m!822221))

(declare-fun m!822223 () Bool)

(assert (=> b!568171 m!822223))

(declare-fun m!822225 () Bool)

(assert (=> b!568178 m!822225))

(declare-fun m!822227 () Bool)

(assert (=> b!568177 m!822227))

(declare-fun m!822229 () Bool)

(assert (=> b!568177 m!822229))

(declare-fun m!822231 () Bool)

(assert (=> b!568162 m!822231))

(declare-fun m!822233 () Bool)

(assert (=> b!568168 m!822233))

(assert (=> b!568168 m!822233))

(declare-fun m!822235 () Bool)

(assert (=> b!568168 m!822235))

(declare-fun m!822237 () Bool)

(assert (=> start!52348 m!822237))

(declare-fun m!822239 () Bool)

(assert (=> b!568160 m!822239))

(declare-fun m!822241 () Bool)

(assert (=> b!568180 m!822241))

(declare-fun m!822243 () Bool)

(assert (=> b!568165 m!822243))

(declare-fun m!822245 () Bool)

(assert (=> b!568165 m!822245))

(declare-fun m!822247 () Bool)

(assert (=> b!568165 m!822247))

(declare-fun m!822249 () Bool)

(assert (=> b!568165 m!822249))

(declare-fun m!822251 () Bool)

(assert (=> b!568165 m!822251))

(declare-fun m!822253 () Bool)

(assert (=> b!568165 m!822253))

(declare-fun m!822255 () Bool)

(assert (=> b!568165 m!822255))

(declare-fun m!822257 () Bool)

(assert (=> b!568165 m!822257))

(declare-fun m!822259 () Bool)

(assert (=> b!568165 m!822259))

(declare-fun m!822261 () Bool)

(assert (=> b!568165 m!822261))

(declare-fun m!822263 () Bool)

(assert (=> b!568165 m!822263))

(declare-fun m!822265 () Bool)

(assert (=> b!568165 m!822265))

(declare-fun m!822267 () Bool)

(assert (=> b!568165 m!822267))

(declare-fun m!822269 () Bool)

(assert (=> b!568165 m!822269))

(declare-fun m!822271 () Bool)

(assert (=> b!568165 m!822271))

(declare-fun m!822273 () Bool)

(assert (=> b!568165 m!822273))

(declare-fun m!822275 () Bool)

(assert (=> b!568165 m!822275))

(declare-fun m!822277 () Bool)

(assert (=> b!568165 m!822277))

(declare-fun m!822279 () Bool)

(assert (=> b!568165 m!822279))

(assert (=> b!568165 m!822243))

(declare-fun m!822281 () Bool)

(assert (=> b!568165 m!822281))

(declare-fun m!822283 () Bool)

(assert (=> b!568165 m!822283))

(declare-fun m!822285 () Bool)

(assert (=> b!568165 m!822285))

(declare-fun m!822287 () Bool)

(assert (=> b!568165 m!822287))

(declare-fun m!822289 () Bool)

(assert (=> b!568165 m!822289))

(declare-fun m!822291 () Bool)

(assert (=> b!568165 m!822291))

(declare-fun m!822293 () Bool)

(assert (=> b!568165 m!822293))

(declare-fun m!822295 () Bool)

(assert (=> b!568165 m!822295))

(declare-fun m!822297 () Bool)

(assert (=> b!568169 m!822297))

(declare-fun m!822299 () Bool)

(assert (=> b!568173 m!822299))

(declare-fun m!822301 () Bool)

(assert (=> b!568175 m!822301))

(declare-fun m!822303 () Bool)

(assert (=> b!568179 m!822303))

(check-sat (not b_next!15899) (not b!568171) (not b!568165) (not start!52348) (not b!568152) (not b!568173) (not b!568163) b_and!55333 (not b!568162) (not b!568180) (not b_next!15897) (not b_next!15895) tp_is_empty!3193 (not b_next!15893) b_and!55331 (not b!568175) (not b!568158) (not b!568153) (not b!568164) b_and!55335 (not b!568157) (not b!568178) (not b!568177) (not b!568161) (not b!568160) (not b!568179) (not b!568151) b_and!55337 (not b!568169) (not b!568166) (not b!568168))
(check-sat (not b_next!15899) b_and!55335 b_and!55337 b_and!55333 (not b_next!15897) (not b_next!15895) (not b_next!15893) b_and!55331)
(get-model)

(declare-fun d!198680 () Bool)

(assert (=> d!198680 (= (isEmpty!4053 input!2705) ((_ is Nil!5616) input!2705))))

(assert (=> b!568161 d!198680))

(declare-fun b!568238 () Bool)

(declare-fun e!343515 () List!5626)

(assert (=> b!568238 (= e!343515 (Cons!5616 (h!11017 lt!240072) (++!1573 (t!76405 lt!240072) suffix!1342)))))

(declare-fun e!343514 () Bool)

(declare-fun lt!240097 () List!5626)

(declare-fun b!568240 () Bool)

(assert (=> b!568240 (= e!343514 (or (not (= suffix!1342 Nil!5616)) (= lt!240097 lt!240072)))))

(declare-fun d!198682 () Bool)

(assert (=> d!198682 e!343514))

(declare-fun res!244056 () Bool)

(assert (=> d!198682 (=> (not res!244056) (not e!343514))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!984 (List!5626) (InoxSet C!3760))

(assert (=> d!198682 (= res!244056 (= (content!984 lt!240097) ((_ map or) (content!984 lt!240072) (content!984 suffix!1342))))))

(assert (=> d!198682 (= lt!240097 e!343515)))

(declare-fun c!106465 () Bool)

(assert (=> d!198682 (= c!106465 ((_ is Nil!5616) lt!240072))))

(assert (=> d!198682 (= (++!1573 lt!240072 suffix!1342) lt!240097)))

(declare-fun b!568239 () Bool)

(declare-fun res!244057 () Bool)

(assert (=> b!568239 (=> (not res!244057) (not e!343514))))

(assert (=> b!568239 (= res!244057 (= (size!4473 lt!240097) (+ (size!4473 lt!240072) (size!4473 suffix!1342))))))

(declare-fun b!568237 () Bool)

(assert (=> b!568237 (= e!343515 suffix!1342)))

(assert (= (and d!198682 c!106465) b!568237))

(assert (= (and d!198682 (not c!106465)) b!568238))

(assert (= (and d!198682 res!244056) b!568239))

(assert (= (and b!568239 res!244057) b!568240))

(declare-fun m!822345 () Bool)

(assert (=> b!568238 m!822345))

(declare-fun m!822347 () Bool)

(assert (=> d!198682 m!822347))

(declare-fun m!822349 () Bool)

(assert (=> d!198682 m!822349))

(declare-fun m!822351 () Bool)

(assert (=> d!198682 m!822351))

(declare-fun m!822353 () Bool)

(assert (=> b!568239 m!822353))

(assert (=> b!568239 m!822255))

(declare-fun m!822355 () Bool)

(assert (=> b!568239 m!822355))

(assert (=> b!568171 d!198682))

(declare-fun d!198700 () Bool)

(assert (=> d!198700 (= (get!2142 lt!240054) (v!16284 lt!240054))))

(assert (=> b!568160 d!198700))

(declare-fun d!198704 () Bool)

(declare-fun lt!240102 () Int)

(assert (=> d!198704 (>= lt!240102 0)))

(declare-fun e!343521 () Int)

(assert (=> d!198704 (= lt!240102 e!343521)))

(declare-fun c!106471 () Bool)

(assert (=> d!198704 (= c!106471 ((_ is Nil!5616) (originalCharacters!1124 token!491)))))

(assert (=> d!198704 (= (size!4473 (originalCharacters!1124 token!491)) lt!240102)))

(declare-fun b!568250 () Bool)

(assert (=> b!568250 (= e!343521 0)))

(declare-fun b!568251 () Bool)

(assert (=> b!568251 (= e!343521 (+ 1 (size!4473 (t!76405 (originalCharacters!1124 token!491)))))))

(assert (= (and d!198704 c!106471) b!568250))

(assert (= (and d!198704 (not c!106471)) b!568251))

(declare-fun m!822363 () Bool)

(assert (=> b!568251 m!822363))

(assert (=> b!568175 d!198704))

(declare-fun b!568262 () Bool)

(declare-fun res!244061 () Bool)

(declare-fun e!343528 () Bool)

(assert (=> b!568262 (=> res!244061 e!343528)))

(assert (=> b!568262 (= res!244061 (not ((_ is IntegerValue!3329) (value!35789 token!491))))))

(declare-fun e!343530 () Bool)

(assert (=> b!568262 (= e!343530 e!343528)))

(declare-fun b!568263 () Bool)

(declare-fun e!343529 () Bool)

(declare-fun inv!16 (TokenValue!1109) Bool)

(assert (=> b!568263 (= e!343529 (inv!16 (value!35789 token!491)))))

(declare-fun b!568264 () Bool)

(declare-fun inv!17 (TokenValue!1109) Bool)

(assert (=> b!568264 (= e!343530 (inv!17 (value!35789 token!491)))))

(declare-fun b!568265 () Bool)

(assert (=> b!568265 (= e!343529 e!343530)))

(declare-fun c!106477 () Bool)

(assert (=> b!568265 (= c!106477 ((_ is IntegerValue!3328) (value!35789 token!491)))))

(declare-fun d!198706 () Bool)

(declare-fun c!106476 () Bool)

(assert (=> d!198706 (= c!106476 ((_ is IntegerValue!3327) (value!35789 token!491)))))

(assert (=> d!198706 (= (inv!21 (value!35789 token!491)) e!343529)))

(declare-fun b!568266 () Bool)

(declare-fun inv!15 (TokenValue!1109) Bool)

(assert (=> b!568266 (= e!343528 (inv!15 (value!35789 token!491)))))

(assert (= (and d!198706 c!106476) b!568263))

(assert (= (and d!198706 (not c!106476)) b!568265))

(assert (= (and b!568265 c!106477) b!568264))

(assert (= (and b!568265 (not c!106477)) b!568262))

(assert (= (and b!568262 (not res!244061)) b!568266))

(declare-fun m!822365 () Bool)

(assert (=> b!568263 m!822365))

(declare-fun m!822367 () Bool)

(assert (=> b!568264 m!822367))

(declare-fun m!822369 () Bool)

(assert (=> b!568266 m!822369))

(assert (=> b!568164 d!198706))

(declare-fun d!198708 () Bool)

(assert (=> d!198708 (= (isEmpty!4054 rules!3103) ((_ is Nil!5618) rules!3103))))

(assert (=> b!568173 d!198708))

(declare-fun d!198710 () Bool)

(assert (=> d!198710 (= (get!2142 lt!240041) (v!16284 lt!240041))))

(assert (=> b!568162 d!198710))

(declare-fun b!568408 () Bool)

(declare-fun e!343618 () Bool)

(assert (=> b!568408 (= e!343618 true)))

(declare-fun d!198712 () Bool)

(assert (=> d!198712 e!343618))

(assert (= d!198712 b!568408))

(declare-fun order!4563 () Int)

(declare-fun order!4561 () Int)

(declare-fun lambda!15627 () Int)

(declare-fun dynLambda!3235 (Int Int) Int)

(declare-fun dynLambda!3236 (Int Int) Int)

(assert (=> b!568408 (< (dynLambda!3235 order!4561 (toValue!1940 (transformation!1085 (rule!1825 (_1!3566 (v!16284 lt!240054)))))) (dynLambda!3236 order!4563 lambda!15627))))

(declare-fun order!4565 () Int)

(declare-fun dynLambda!3237 (Int Int) Int)

(assert (=> b!568408 (< (dynLambda!3237 order!4565 (toChars!1799 (transformation!1085 (rule!1825 (_1!3566 (v!16284 lt!240054)))))) (dynLambda!3236 order!4563 lambda!15627))))

(declare-fun dynLambda!3238 (Int TokenValue!1109) BalanceConc!3612)

(declare-fun dynLambda!3239 (Int BalanceConc!3612) TokenValue!1109)

(assert (=> d!198712 (= (list!2329 (dynLambda!3238 (toChars!1799 (transformation!1085 (rule!1825 (_1!3566 (v!16284 lt!240054))))) (dynLambda!3239 (toValue!1940 (transformation!1085 (rule!1825 (_1!3566 (v!16284 lt!240054))))) lt!240052))) (list!2329 lt!240052))))

(declare-fun lt!240152 () Unit!10050)

(declare-fun ForallOf!98 (Int BalanceConc!3612) Unit!10050)

(assert (=> d!198712 (= lt!240152 (ForallOf!98 lambda!15627 lt!240052))))

(assert (=> d!198712 (= (lemmaSemiInverse!188 (transformation!1085 (rule!1825 (_1!3566 (v!16284 lt!240054)))) lt!240052) lt!240152)))

(declare-fun b_lambda!21869 () Bool)

(assert (=> (not b_lambda!21869) (not d!198712)))

(declare-fun tb!49363 () Bool)

(declare-fun t!76433 () Bool)

(assert (=> (and b!568174 (= (toChars!1799 (transformation!1085 (h!11019 rules!3103))) (toChars!1799 (transformation!1085 (rule!1825 (_1!3566 (v!16284 lt!240054)))))) t!76433) tb!49363))

(declare-fun b!568413 () Bool)

(declare-fun e!343621 () Bool)

(declare-fun tp!179017 () Bool)

(declare-fun inv!7061 (Conc!1802) Bool)

(assert (=> b!568413 (= e!343621 (and (inv!7061 (c!106452 (dynLambda!3238 (toChars!1799 (transformation!1085 (rule!1825 (_1!3566 (v!16284 lt!240054))))) (dynLambda!3239 (toValue!1940 (transformation!1085 (rule!1825 (_1!3566 (v!16284 lt!240054))))) lt!240052)))) tp!179017))))

(declare-fun result!55270 () Bool)

(declare-fun inv!7062 (BalanceConc!3612) Bool)

(assert (=> tb!49363 (= result!55270 (and (inv!7062 (dynLambda!3238 (toChars!1799 (transformation!1085 (rule!1825 (_1!3566 (v!16284 lt!240054))))) (dynLambda!3239 (toValue!1940 (transformation!1085 (rule!1825 (_1!3566 (v!16284 lt!240054))))) lt!240052))) e!343621))))

(assert (= tb!49363 b!568413))

(declare-fun m!822557 () Bool)

(assert (=> b!568413 m!822557))

(declare-fun m!822559 () Bool)

(assert (=> tb!49363 m!822559))

(assert (=> d!198712 t!76433))

(declare-fun b_and!55371 () Bool)

(assert (= b_and!55333 (and (=> t!76433 result!55270) b_and!55371)))

(declare-fun t!76435 () Bool)

(declare-fun tb!49365 () Bool)

(assert (=> (and b!568154 (= (toChars!1799 (transformation!1085 (rule!1825 token!491))) (toChars!1799 (transformation!1085 (rule!1825 (_1!3566 (v!16284 lt!240054)))))) t!76435) tb!49365))

(declare-fun result!55274 () Bool)

(assert (= result!55274 result!55270))

(assert (=> d!198712 t!76435))

(declare-fun b_and!55373 () Bool)

(assert (= b_and!55337 (and (=> t!76435 result!55274) b_and!55373)))

(declare-fun b_lambda!21871 () Bool)

(assert (=> (not b_lambda!21871) (not d!198712)))

(declare-fun t!76437 () Bool)

(declare-fun tb!49367 () Bool)

(assert (=> (and b!568174 (= (toValue!1940 (transformation!1085 (h!11019 rules!3103))) (toValue!1940 (transformation!1085 (rule!1825 (_1!3566 (v!16284 lt!240054)))))) t!76437) tb!49367))

(declare-fun result!55276 () Bool)

(assert (=> tb!49367 (= result!55276 (inv!21 (dynLambda!3239 (toValue!1940 (transformation!1085 (rule!1825 (_1!3566 (v!16284 lt!240054))))) lt!240052)))))

(declare-fun m!822561 () Bool)

(assert (=> tb!49367 m!822561))

(assert (=> d!198712 t!76437))

(declare-fun b_and!55375 () Bool)

(assert (= b_and!55331 (and (=> t!76437 result!55276) b_and!55375)))

(declare-fun t!76439 () Bool)

(declare-fun tb!49369 () Bool)

(assert (=> (and b!568154 (= (toValue!1940 (transformation!1085 (rule!1825 token!491))) (toValue!1940 (transformation!1085 (rule!1825 (_1!3566 (v!16284 lt!240054)))))) t!76439) tb!49369))

(declare-fun result!55280 () Bool)

(assert (= result!55280 result!55276))

(assert (=> d!198712 t!76439))

(declare-fun b_and!55377 () Bool)

(assert (= b_and!55335 (and (=> t!76439 result!55280) b_and!55377)))

(declare-fun m!822563 () Bool)

(assert (=> d!198712 m!822563))

(assert (=> d!198712 m!822563))

(declare-fun m!822565 () Bool)

(assert (=> d!198712 m!822565))

(assert (=> d!198712 m!822565))

(declare-fun m!822567 () Bool)

(assert (=> d!198712 m!822567))

(declare-fun m!822569 () Bool)

(assert (=> d!198712 m!822569))

(declare-fun m!822571 () Bool)

(assert (=> d!198712 m!822571))

(assert (=> b!568163 d!198712))

(declare-fun d!198792 () Bool)

(assert (=> d!198792 (not (matchR!566 (regex!1085 (rule!1825 token!491)) input!2705))))

(declare-fun lt!240155 () Unit!10050)

(declare-fun choose!4041 (LexerInterface!971 List!5628 Rule!1970 List!5626 List!5626 List!5626 Rule!1970) Unit!10050)

(assert (=> d!198792 (= lt!240155 (choose!4041 thiss!22590 rules!3103 (rule!1825 (_1!3566 (v!16284 lt!240054))) lt!240069 input!2705 input!2705 (rule!1825 token!491)))))

(assert (=> d!198792 (isPrefix!719 lt!240069 input!2705)))

(assert (=> d!198792 (= (lemmaMaxPrefixOutputsMaxPrefix!44 thiss!22590 rules!3103 (rule!1825 (_1!3566 (v!16284 lt!240054))) lt!240069 input!2705 input!2705 (rule!1825 token!491)) lt!240155)))

(declare-fun bs!68775 () Bool)

(assert (= bs!68775 d!198792))

(assert (=> bs!68775 m!822197))

(declare-fun m!822573 () Bool)

(assert (=> bs!68775 m!822573))

(declare-fun m!822575 () Bool)

(assert (=> bs!68775 m!822575))

(assert (=> b!568163 d!198792))

(declare-fun b!568444 () Bool)

(declare-fun res!244160 () Bool)

(declare-fun e!343640 () Bool)

(assert (=> b!568444 (=> (not res!244160) (not e!343640))))

(declare-fun tail!743 (List!5626) List!5626)

(assert (=> b!568444 (= res!244160 (isEmpty!4053 (tail!743 input!2705)))))

(declare-fun b!568445 () Bool)

(declare-fun res!244159 () Bool)

(declare-fun e!343642 () Bool)

(assert (=> b!568445 (=> res!244159 e!343642)))

(assert (=> b!568445 (= res!244159 (not ((_ is ElementMatch!1419) (regex!1085 (rule!1825 token!491)))))))

(declare-fun e!343639 () Bool)

(assert (=> b!568445 (= e!343639 e!343642)))

(declare-fun b!568446 () Bool)

(declare-fun res!244161 () Bool)

(declare-fun e!343641 () Bool)

(assert (=> b!568446 (=> res!244161 e!343641)))

(assert (=> b!568446 (= res!244161 (not (isEmpty!4053 (tail!743 input!2705))))))

(declare-fun b!568447 () Bool)

(declare-fun e!343644 () Bool)

(assert (=> b!568447 (= e!343644 e!343641)))

(declare-fun res!244164 () Bool)

(assert (=> b!568447 (=> res!244164 e!343641)))

(declare-fun call!39358 () Bool)

(assert (=> b!568447 (= res!244164 call!39358)))

(declare-fun b!568448 () Bool)

(declare-fun lt!240158 () Bool)

(assert (=> b!568448 (= e!343639 (not lt!240158))))

(declare-fun b!568449 () Bool)

(declare-fun res!244162 () Bool)

(assert (=> b!568449 (=> (not res!244162) (not e!343640))))

(assert (=> b!568449 (= res!244162 (not call!39358))))

(declare-fun b!568450 () Bool)

(assert (=> b!568450 (= e!343642 e!343644)))

(declare-fun res!244166 () Bool)

(assert (=> b!568450 (=> (not res!244166) (not e!343644))))

(assert (=> b!568450 (= res!244166 (not lt!240158))))

(declare-fun b!568451 () Bool)

(declare-fun head!1214 (List!5626) C!3760)

(assert (=> b!568451 (= e!343640 (= (head!1214 input!2705) (c!106451 (regex!1085 (rule!1825 token!491)))))))

(declare-fun d!198794 () Bool)

(declare-fun e!343643 () Bool)

(assert (=> d!198794 e!343643))

(declare-fun c!106505 () Bool)

(assert (=> d!198794 (= c!106505 ((_ is EmptyExpr!1419) (regex!1085 (rule!1825 token!491))))))

(declare-fun e!343645 () Bool)

(assert (=> d!198794 (= lt!240158 e!343645)))

(declare-fun c!106507 () Bool)

(assert (=> d!198794 (= c!106507 (isEmpty!4053 input!2705))))

(declare-fun validRegex!472 (Regex!1419) Bool)

(assert (=> d!198794 (validRegex!472 (regex!1085 (rule!1825 token!491)))))

(assert (=> d!198794 (= (matchR!566 (regex!1085 (rule!1825 token!491)) input!2705) lt!240158)))

(declare-fun b!568452 () Bool)

(declare-fun res!244163 () Bool)

(assert (=> b!568452 (=> res!244163 e!343642)))

(assert (=> b!568452 (= res!244163 e!343640)))

(declare-fun res!244165 () Bool)

(assert (=> b!568452 (=> (not res!244165) (not e!343640))))

(assert (=> b!568452 (= res!244165 lt!240158)))

(declare-fun bm!39353 () Bool)

(assert (=> bm!39353 (= call!39358 (isEmpty!4053 input!2705))))

(declare-fun b!568453 () Bool)

(assert (=> b!568453 (= e!343641 (not (= (head!1214 input!2705) (c!106451 (regex!1085 (rule!1825 token!491))))))))

(declare-fun b!568454 () Bool)

(assert (=> b!568454 (= e!343643 e!343639)))

(declare-fun c!106506 () Bool)

(assert (=> b!568454 (= c!106506 ((_ is EmptyLang!1419) (regex!1085 (rule!1825 token!491))))))

(declare-fun b!568455 () Bool)

(declare-fun nullable!377 (Regex!1419) Bool)

(assert (=> b!568455 (= e!343645 (nullable!377 (regex!1085 (rule!1825 token!491))))))

(declare-fun b!568456 () Bool)

(declare-fun derivativeStep!291 (Regex!1419 C!3760) Regex!1419)

(assert (=> b!568456 (= e!343645 (matchR!566 (derivativeStep!291 (regex!1085 (rule!1825 token!491)) (head!1214 input!2705)) (tail!743 input!2705)))))

(declare-fun b!568457 () Bool)

(assert (=> b!568457 (= e!343643 (= lt!240158 call!39358))))

(assert (= (and d!198794 c!106507) b!568455))

(assert (= (and d!198794 (not c!106507)) b!568456))

(assert (= (and d!198794 c!106505) b!568457))

(assert (= (and d!198794 (not c!106505)) b!568454))

(assert (= (and b!568454 c!106506) b!568448))

(assert (= (and b!568454 (not c!106506)) b!568445))

(assert (= (and b!568445 (not res!244159)) b!568452))

(assert (= (and b!568452 res!244165) b!568449))

(assert (= (and b!568449 res!244162) b!568444))

(assert (= (and b!568444 res!244160) b!568451))

(assert (= (and b!568452 (not res!244163)) b!568450))

(assert (= (and b!568450 res!244166) b!568447))

(assert (= (and b!568447 (not res!244164)) b!568446))

(assert (= (and b!568446 (not res!244161)) b!568453))

(assert (= (or b!568457 b!568447 b!568449) bm!39353))

(assert (=> d!198794 m!822221))

(declare-fun m!822577 () Bool)

(assert (=> d!198794 m!822577))

(declare-fun m!822579 () Bool)

(assert (=> b!568453 m!822579))

(declare-fun m!822581 () Bool)

(assert (=> b!568455 m!822581))

(assert (=> b!568456 m!822579))

(assert (=> b!568456 m!822579))

(declare-fun m!822583 () Bool)

(assert (=> b!568456 m!822583))

(declare-fun m!822585 () Bool)

(assert (=> b!568456 m!822585))

(assert (=> b!568456 m!822583))

(assert (=> b!568456 m!822585))

(declare-fun m!822587 () Bool)

(assert (=> b!568456 m!822587))

(assert (=> b!568444 m!822585))

(assert (=> b!568444 m!822585))

(declare-fun m!822589 () Bool)

(assert (=> b!568444 m!822589))

(assert (=> b!568446 m!822585))

(assert (=> b!568446 m!822585))

(assert (=> b!568446 m!822589))

(assert (=> b!568451 m!822579))

(assert (=> bm!39353 m!822221))

(assert (=> b!568163 d!198794))

(declare-fun b!568561 () Bool)

(declare-fun res!244222 () Bool)

(declare-fun e!343696 () Bool)

(assert (=> b!568561 (=> (not res!244222) (not e!343696))))

(declare-fun lt!240204 () Option!1436)

(assert (=> b!568561 (= res!244222 (= (value!35789 (_1!3566 (get!2142 lt!240204))) (apply!1350 (transformation!1085 (rule!1825 (_1!3566 (get!2142 lt!240204)))) (seqFromList!1273 (originalCharacters!1124 (_1!3566 (get!2142 lt!240204)))))))))

(declare-fun b!568562 () Bool)

(assert (=> b!568562 (= e!343696 (= (size!4472 (_1!3566 (get!2142 lt!240204))) (size!4473 (originalCharacters!1124 (_1!3566 (get!2142 lt!240204))))))))

(declare-fun b!568563 () Bool)

(declare-fun res!244224 () Bool)

(assert (=> b!568563 (=> (not res!244224) (not e!343696))))

(assert (=> b!568563 (= res!244224 (= (++!1573 (list!2329 (charsOf!714 (_1!3566 (get!2142 lt!240204)))) (_2!3566 (get!2142 lt!240204))) lt!240071))))

(declare-fun b!568564 () Bool)

(declare-fun e!343698 () Bool)

(declare-datatypes ((tuple2!6606 0))(
  ( (tuple2!6607 (_1!3567 List!5626) (_2!3567 List!5626)) )
))
(declare-fun findLongestMatchInner!160 (Regex!1419 List!5626 Int List!5626 List!5626 Int) tuple2!6606)

(assert (=> b!568564 (= e!343698 (matchR!566 (regex!1085 (rule!1825 token!491)) (_1!3567 (findLongestMatchInner!160 (regex!1085 (rule!1825 token!491)) Nil!5616 (size!4473 Nil!5616) lt!240071 lt!240071 (size!4473 lt!240071)))))))

(declare-fun b!568565 () Bool)

(declare-fun e!343699 () Option!1436)

(declare-fun lt!240205 () tuple2!6606)

(declare-fun size!4474 (BalanceConc!3612) Int)

(assert (=> b!568565 (= e!343699 (Some!1435 (tuple2!6605 (Token!1907 (apply!1350 (transformation!1085 (rule!1825 token!491)) (seqFromList!1273 (_1!3567 lt!240205))) (rule!1825 token!491) (size!4474 (seqFromList!1273 (_1!3567 lt!240205))) (_1!3567 lt!240205)) (_2!3567 lt!240205))))))

(declare-fun lt!240202 () Unit!10050)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!144 (Regex!1419 List!5626) Unit!10050)

(assert (=> b!568565 (= lt!240202 (longestMatchIsAcceptedByMatchOrIsEmpty!144 (regex!1085 (rule!1825 token!491)) lt!240071))))

(declare-fun res!244223 () Bool)

(assert (=> b!568565 (= res!244223 (isEmpty!4053 (_1!3567 (findLongestMatchInner!160 (regex!1085 (rule!1825 token!491)) Nil!5616 (size!4473 Nil!5616) lt!240071 lt!240071 (size!4473 lt!240071)))))))

(assert (=> b!568565 (=> res!244223 e!343698)))

(assert (=> b!568565 e!343698))

(declare-fun lt!240203 () Unit!10050)

(assert (=> b!568565 (= lt!240203 lt!240202)))

(declare-fun lt!240201 () Unit!10050)

(assert (=> b!568565 (= lt!240201 (lemmaSemiInverse!188 (transformation!1085 (rule!1825 token!491)) (seqFromList!1273 (_1!3567 lt!240205))))))

(declare-fun b!568566 () Bool)

(declare-fun res!244221 () Bool)

(assert (=> b!568566 (=> (not res!244221) (not e!343696))))

(assert (=> b!568566 (= res!244221 (= (rule!1825 (_1!3566 (get!2142 lt!240204))) (rule!1825 token!491)))))

(declare-fun b!568567 () Bool)

(assert (=> b!568567 (= e!343699 None!1435)))

(declare-fun b!568568 () Bool)

(declare-fun res!244218 () Bool)

(assert (=> b!568568 (=> (not res!244218) (not e!343696))))

(assert (=> b!568568 (= res!244218 (< (size!4473 (_2!3566 (get!2142 lt!240204))) (size!4473 lt!240071)))))

(declare-fun b!568569 () Bool)

(declare-fun e!343697 () Bool)

(assert (=> b!568569 (= e!343697 e!343696)))

(declare-fun res!244219 () Bool)

(assert (=> b!568569 (=> (not res!244219) (not e!343696))))

(assert (=> b!568569 (= res!244219 (matchR!566 (regex!1085 (rule!1825 token!491)) (list!2329 (charsOf!714 (_1!3566 (get!2142 lt!240204))))))))

(declare-fun d!198796 () Bool)

(assert (=> d!198796 e!343697))

(declare-fun res!244220 () Bool)

(assert (=> d!198796 (=> res!244220 e!343697)))

(declare-fun isEmpty!4056 (Option!1436) Bool)

(assert (=> d!198796 (= res!244220 (isEmpty!4056 lt!240204))))

(assert (=> d!198796 (= lt!240204 e!343699)))

(declare-fun c!106516 () Bool)

(assert (=> d!198796 (= c!106516 (isEmpty!4053 (_1!3567 lt!240205)))))

(declare-fun findLongestMatch!139 (Regex!1419 List!5626) tuple2!6606)

(assert (=> d!198796 (= lt!240205 (findLongestMatch!139 (regex!1085 (rule!1825 token!491)) lt!240071))))

(assert (=> d!198796 (ruleValid!295 thiss!22590 (rule!1825 token!491))))

(assert (=> d!198796 (= (maxPrefixOneRule!370 thiss!22590 (rule!1825 token!491) lt!240071) lt!240204)))

(assert (= (and d!198796 c!106516) b!568567))

(assert (= (and d!198796 (not c!106516)) b!568565))

(assert (= (and b!568565 (not res!244223)) b!568564))

(assert (= (and d!198796 (not res!244220)) b!568569))

(assert (= (and b!568569 res!244219) b!568563))

(assert (= (and b!568563 res!244224) b!568568))

(assert (= (and b!568568 res!244218) b!568566))

(assert (= (and b!568566 res!244221) b!568561))

(assert (= (and b!568561 res!244222) b!568562))

(declare-fun m!822735 () Bool)

(assert (=> b!568565 m!822735))

(declare-fun m!822737 () Bool)

(assert (=> b!568565 m!822737))

(declare-fun m!822739 () Bool)

(assert (=> b!568565 m!822739))

(declare-fun m!822741 () Bool)

(assert (=> b!568565 m!822741))

(declare-fun m!822743 () Bool)

(assert (=> b!568565 m!822743))

(assert (=> b!568565 m!822741))

(assert (=> b!568565 m!822735))

(declare-fun m!822745 () Bool)

(assert (=> b!568565 m!822745))

(assert (=> b!568565 m!822739))

(declare-fun m!822747 () Bool)

(assert (=> b!568565 m!822747))

(assert (=> b!568565 m!822735))

(declare-fun m!822749 () Bool)

(assert (=> b!568565 m!822749))

(assert (=> b!568565 m!822735))

(declare-fun m!822751 () Bool)

(assert (=> b!568565 m!822751))

(assert (=> b!568564 m!822739))

(assert (=> b!568564 m!822741))

(assert (=> b!568564 m!822739))

(assert (=> b!568564 m!822741))

(assert (=> b!568564 m!822743))

(declare-fun m!822753 () Bool)

(assert (=> b!568564 m!822753))

(declare-fun m!822755 () Bool)

(assert (=> b!568562 m!822755))

(declare-fun m!822757 () Bool)

(assert (=> b!568562 m!822757))

(assert (=> b!568569 m!822755))

(declare-fun m!822759 () Bool)

(assert (=> b!568569 m!822759))

(assert (=> b!568569 m!822759))

(declare-fun m!822761 () Bool)

(assert (=> b!568569 m!822761))

(assert (=> b!568569 m!822761))

(declare-fun m!822763 () Bool)

(assert (=> b!568569 m!822763))

(assert (=> b!568563 m!822755))

(assert (=> b!568563 m!822759))

(assert (=> b!568563 m!822759))

(assert (=> b!568563 m!822761))

(assert (=> b!568563 m!822761))

(declare-fun m!822765 () Bool)

(assert (=> b!568563 m!822765))

(declare-fun m!822767 () Bool)

(assert (=> d!198796 m!822767))

(declare-fun m!822769 () Bool)

(assert (=> d!198796 m!822769))

(declare-fun m!822771 () Bool)

(assert (=> d!198796 m!822771))

(assert (=> d!198796 m!822251))

(assert (=> b!568566 m!822755))

(assert (=> b!568568 m!822755))

(declare-fun m!822773 () Bool)

(assert (=> b!568568 m!822773))

(assert (=> b!568568 m!822741))

(assert (=> b!568561 m!822755))

(declare-fun m!822775 () Bool)

(assert (=> b!568561 m!822775))

(assert (=> b!568561 m!822775))

(declare-fun m!822777 () Bool)

(assert (=> b!568561 m!822777))

(assert (=> b!568152 d!198796))

(assert (=> b!568152 d!198712))

(declare-fun d!198820 () Bool)

(assert (=> d!198820 (= (maxPrefixOneRule!370 thiss!22590 (rule!1825 token!491) lt!240071) (Some!1435 (tuple2!6605 (Token!1907 (apply!1350 (transformation!1085 (rule!1825 token!491)) (seqFromList!1273 lt!240072)) (rule!1825 token!491) (size!4473 lt!240072) lt!240072) suffix!1342)))))

(declare-fun lt!240208 () Unit!10050)

(declare-fun choose!4044 (LexerInterface!971 List!5628 List!5626 List!5626 List!5626 Rule!1970) Unit!10050)

(assert (=> d!198820 (= lt!240208 (choose!4044 thiss!22590 rules!3103 lt!240072 lt!240071 suffix!1342 (rule!1825 token!491)))))

(assert (=> d!198820 (not (isEmpty!4054 rules!3103))))

(assert (=> d!198820 (= (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!120 thiss!22590 rules!3103 lt!240072 lt!240071 suffix!1342 (rule!1825 token!491)) lt!240208)))

(declare-fun bs!68782 () Bool)

(assert (= bs!68782 d!198820))

(assert (=> bs!68782 m!822219))

(assert (=> bs!68782 m!822255))

(assert (=> bs!68782 m!822209))

(declare-fun m!822779 () Bool)

(assert (=> bs!68782 m!822779))

(assert (=> bs!68782 m!822209))

(declare-fun m!822781 () Bool)

(assert (=> bs!68782 m!822781))

(assert (=> bs!68782 m!822299))

(assert (=> b!568152 d!198820))

(declare-fun bs!68783 () Bool)

(declare-fun d!198822 () Bool)

(assert (= bs!68783 (and d!198822 d!198712)))

(declare-fun lambda!15628 () Int)

(assert (=> bs!68783 (= (and (= (toChars!1799 (transformation!1085 (rule!1825 token!491))) (toChars!1799 (transformation!1085 (rule!1825 (_1!3566 (v!16284 lt!240054)))))) (= (toValue!1940 (transformation!1085 (rule!1825 token!491))) (toValue!1940 (transformation!1085 (rule!1825 (_1!3566 (v!16284 lt!240054))))))) (= lambda!15628 lambda!15627))))

(declare-fun b!568570 () Bool)

(declare-fun e!343700 () Bool)

(assert (=> b!568570 (= e!343700 true)))

(assert (=> d!198822 e!343700))

(assert (= d!198822 b!568570))

(assert (=> b!568570 (< (dynLambda!3235 order!4561 (toValue!1940 (transformation!1085 (rule!1825 token!491)))) (dynLambda!3236 order!4563 lambda!15628))))

(assert (=> b!568570 (< (dynLambda!3237 order!4565 (toChars!1799 (transformation!1085 (rule!1825 token!491)))) (dynLambda!3236 order!4563 lambda!15628))))

(assert (=> d!198822 (= (list!2329 (dynLambda!3238 (toChars!1799 (transformation!1085 (rule!1825 token!491))) (dynLambda!3239 (toValue!1940 (transformation!1085 (rule!1825 token!491))) lt!240057))) (list!2329 lt!240057))))

(declare-fun lt!240209 () Unit!10050)

(assert (=> d!198822 (= lt!240209 (ForallOf!98 lambda!15628 lt!240057))))

(assert (=> d!198822 (= (lemmaSemiInverse!188 (transformation!1085 (rule!1825 token!491)) lt!240057) lt!240209)))

(declare-fun b_lambda!21885 () Bool)

(assert (=> (not b_lambda!21885) (not d!198822)))

(declare-fun t!76453 () Bool)

(declare-fun tb!49383 () Bool)

(assert (=> (and b!568174 (= (toChars!1799 (transformation!1085 (h!11019 rules!3103))) (toChars!1799 (transformation!1085 (rule!1825 token!491)))) t!76453) tb!49383))

(declare-fun b!568571 () Bool)

(declare-fun e!343701 () Bool)

(declare-fun tp!179055 () Bool)

(assert (=> b!568571 (= e!343701 (and (inv!7061 (c!106452 (dynLambda!3238 (toChars!1799 (transformation!1085 (rule!1825 token!491))) (dynLambda!3239 (toValue!1940 (transformation!1085 (rule!1825 token!491))) lt!240057)))) tp!179055))))

(declare-fun result!55300 () Bool)

(assert (=> tb!49383 (= result!55300 (and (inv!7062 (dynLambda!3238 (toChars!1799 (transformation!1085 (rule!1825 token!491))) (dynLambda!3239 (toValue!1940 (transformation!1085 (rule!1825 token!491))) lt!240057))) e!343701))))

(assert (= tb!49383 b!568571))

(declare-fun m!822783 () Bool)

(assert (=> b!568571 m!822783))

(declare-fun m!822785 () Bool)

(assert (=> tb!49383 m!822785))

(assert (=> d!198822 t!76453))

(declare-fun b_and!55387 () Bool)

(assert (= b_and!55371 (and (=> t!76453 result!55300) b_and!55387)))

(declare-fun t!76455 () Bool)

(declare-fun tb!49385 () Bool)

(assert (=> (and b!568154 (= (toChars!1799 (transformation!1085 (rule!1825 token!491))) (toChars!1799 (transformation!1085 (rule!1825 token!491)))) t!76455) tb!49385))

(declare-fun result!55302 () Bool)

(assert (= result!55302 result!55300))

(assert (=> d!198822 t!76455))

(declare-fun b_and!55389 () Bool)

(assert (= b_and!55373 (and (=> t!76455 result!55302) b_and!55389)))

(declare-fun b_lambda!21887 () Bool)

(assert (=> (not b_lambda!21887) (not d!198822)))

(declare-fun tb!49387 () Bool)

(declare-fun t!76457 () Bool)

(assert (=> (and b!568174 (= (toValue!1940 (transformation!1085 (h!11019 rules!3103))) (toValue!1940 (transformation!1085 (rule!1825 token!491)))) t!76457) tb!49387))

(declare-fun result!55304 () Bool)

(assert (=> tb!49387 (= result!55304 (inv!21 (dynLambda!3239 (toValue!1940 (transformation!1085 (rule!1825 token!491))) lt!240057)))))

(declare-fun m!822787 () Bool)

(assert (=> tb!49387 m!822787))

(assert (=> d!198822 t!76457))

(declare-fun b_and!55391 () Bool)

(assert (= b_and!55375 (and (=> t!76457 result!55304) b_and!55391)))

(declare-fun t!76459 () Bool)

(declare-fun tb!49389 () Bool)

(assert (=> (and b!568154 (= (toValue!1940 (transformation!1085 (rule!1825 token!491))) (toValue!1940 (transformation!1085 (rule!1825 token!491)))) t!76459) tb!49389))

(declare-fun result!55306 () Bool)

(assert (= result!55306 result!55304))

(assert (=> d!198822 t!76459))

(declare-fun b_and!55393 () Bool)

(assert (= b_and!55377 (and (=> t!76459 result!55306) b_and!55393)))

(declare-fun m!822789 () Bool)

(assert (=> d!198822 m!822789))

(assert (=> d!198822 m!822789))

(declare-fun m!822791 () Bool)

(assert (=> d!198822 m!822791))

(assert (=> d!198822 m!822791))

(declare-fun m!822793 () Bool)

(assert (=> d!198822 m!822793))

(declare-fun m!822795 () Bool)

(assert (=> d!198822 m!822795))

(declare-fun m!822797 () Bool)

(assert (=> d!198822 m!822797))

(assert (=> b!568152 d!198822))

(declare-fun b!568572 () Bool)

(declare-fun res!244229 () Bool)

(declare-fun e!343703 () Bool)

(assert (=> b!568572 (=> (not res!244229) (not e!343703))))

(declare-fun lt!240213 () Option!1436)

(assert (=> b!568572 (= res!244229 (= (value!35789 (_1!3566 (get!2142 lt!240213))) (apply!1350 (transformation!1085 (rule!1825 (_1!3566 (get!2142 lt!240213)))) (seqFromList!1273 (originalCharacters!1124 (_1!3566 (get!2142 lt!240213)))))))))

(declare-fun b!568573 () Bool)

(assert (=> b!568573 (= e!343703 (= (size!4472 (_1!3566 (get!2142 lt!240213))) (size!4473 (originalCharacters!1124 (_1!3566 (get!2142 lt!240213))))))))

(declare-fun b!568574 () Bool)

(declare-fun res!244231 () Bool)

(assert (=> b!568574 (=> (not res!244231) (not e!343703))))

(assert (=> b!568574 (= res!244231 (= (++!1573 (list!2329 (charsOf!714 (_1!3566 (get!2142 lt!240213)))) (_2!3566 (get!2142 lt!240213))) input!2705))))

(declare-fun b!568575 () Bool)

(declare-fun e!343705 () Bool)

(assert (=> b!568575 (= e!343705 (matchR!566 (regex!1085 (rule!1825 (_1!3566 (v!16284 lt!240054)))) (_1!3567 (findLongestMatchInner!160 (regex!1085 (rule!1825 (_1!3566 (v!16284 lt!240054)))) Nil!5616 (size!4473 Nil!5616) input!2705 input!2705 (size!4473 input!2705)))))))

(declare-fun b!568576 () Bool)

(declare-fun e!343706 () Option!1436)

(declare-fun lt!240214 () tuple2!6606)

(assert (=> b!568576 (= e!343706 (Some!1435 (tuple2!6605 (Token!1907 (apply!1350 (transformation!1085 (rule!1825 (_1!3566 (v!16284 lt!240054)))) (seqFromList!1273 (_1!3567 lt!240214))) (rule!1825 (_1!3566 (v!16284 lt!240054))) (size!4474 (seqFromList!1273 (_1!3567 lt!240214))) (_1!3567 lt!240214)) (_2!3567 lt!240214))))))

(declare-fun lt!240211 () Unit!10050)

(assert (=> b!568576 (= lt!240211 (longestMatchIsAcceptedByMatchOrIsEmpty!144 (regex!1085 (rule!1825 (_1!3566 (v!16284 lt!240054)))) input!2705))))

(declare-fun res!244230 () Bool)

(assert (=> b!568576 (= res!244230 (isEmpty!4053 (_1!3567 (findLongestMatchInner!160 (regex!1085 (rule!1825 (_1!3566 (v!16284 lt!240054)))) Nil!5616 (size!4473 Nil!5616) input!2705 input!2705 (size!4473 input!2705)))))))

(assert (=> b!568576 (=> res!244230 e!343705)))

(assert (=> b!568576 e!343705))

(declare-fun lt!240212 () Unit!10050)

(assert (=> b!568576 (= lt!240212 lt!240211)))

(declare-fun lt!240210 () Unit!10050)

(assert (=> b!568576 (= lt!240210 (lemmaSemiInverse!188 (transformation!1085 (rule!1825 (_1!3566 (v!16284 lt!240054)))) (seqFromList!1273 (_1!3567 lt!240214))))))

(declare-fun b!568577 () Bool)

(declare-fun res!244228 () Bool)

(assert (=> b!568577 (=> (not res!244228) (not e!343703))))

(assert (=> b!568577 (= res!244228 (= (rule!1825 (_1!3566 (get!2142 lt!240213))) (rule!1825 (_1!3566 (v!16284 lt!240054)))))))

(declare-fun b!568578 () Bool)

(assert (=> b!568578 (= e!343706 None!1435)))

(declare-fun b!568579 () Bool)

(declare-fun res!244225 () Bool)

(assert (=> b!568579 (=> (not res!244225) (not e!343703))))

(assert (=> b!568579 (= res!244225 (< (size!4473 (_2!3566 (get!2142 lt!240213))) (size!4473 input!2705)))))

(declare-fun b!568580 () Bool)

(declare-fun e!343704 () Bool)

(assert (=> b!568580 (= e!343704 e!343703)))

(declare-fun res!244226 () Bool)

(assert (=> b!568580 (=> (not res!244226) (not e!343703))))

(assert (=> b!568580 (= res!244226 (matchR!566 (regex!1085 (rule!1825 (_1!3566 (v!16284 lt!240054)))) (list!2329 (charsOf!714 (_1!3566 (get!2142 lt!240213))))))))

(declare-fun d!198824 () Bool)

(assert (=> d!198824 e!343704))

(declare-fun res!244227 () Bool)

(assert (=> d!198824 (=> res!244227 e!343704)))

(assert (=> d!198824 (= res!244227 (isEmpty!4056 lt!240213))))

(assert (=> d!198824 (= lt!240213 e!343706)))

(declare-fun c!106517 () Bool)

(assert (=> d!198824 (= c!106517 (isEmpty!4053 (_1!3567 lt!240214)))))

(assert (=> d!198824 (= lt!240214 (findLongestMatch!139 (regex!1085 (rule!1825 (_1!3566 (v!16284 lt!240054)))) input!2705))))

(assert (=> d!198824 (ruleValid!295 thiss!22590 (rule!1825 (_1!3566 (v!16284 lt!240054))))))

(assert (=> d!198824 (= (maxPrefixOneRule!370 thiss!22590 (rule!1825 (_1!3566 (v!16284 lt!240054))) input!2705) lt!240213)))

(assert (= (and d!198824 c!106517) b!568578))

(assert (= (and d!198824 (not c!106517)) b!568576))

(assert (= (and b!568576 (not res!244230)) b!568575))

(assert (= (and d!198824 (not res!244227)) b!568580))

(assert (= (and b!568580 res!244226) b!568574))

(assert (= (and b!568574 res!244231) b!568579))

(assert (= (and b!568579 res!244225) b!568577))

(assert (= (and b!568577 res!244228) b!568572))

(assert (= (and b!568572 res!244229) b!568573))

(declare-fun m!822799 () Bool)

(assert (=> b!568576 m!822799))

(declare-fun m!822801 () Bool)

(assert (=> b!568576 m!822801))

(assert (=> b!568576 m!822739))

(declare-fun m!822803 () Bool)

(assert (=> b!568576 m!822803))

(declare-fun m!822805 () Bool)

(assert (=> b!568576 m!822805))

(assert (=> b!568576 m!822803))

(assert (=> b!568576 m!822799))

(declare-fun m!822807 () Bool)

(assert (=> b!568576 m!822807))

(assert (=> b!568576 m!822739))

(declare-fun m!822809 () Bool)

(assert (=> b!568576 m!822809))

(assert (=> b!568576 m!822799))

(declare-fun m!822811 () Bool)

(assert (=> b!568576 m!822811))

(assert (=> b!568576 m!822799))

(declare-fun m!822813 () Bool)

(assert (=> b!568576 m!822813))

(assert (=> b!568575 m!822739))

(assert (=> b!568575 m!822803))

(assert (=> b!568575 m!822739))

(assert (=> b!568575 m!822803))

(assert (=> b!568575 m!822805))

(declare-fun m!822815 () Bool)

(assert (=> b!568575 m!822815))

(declare-fun m!822817 () Bool)

(assert (=> b!568573 m!822817))

(declare-fun m!822819 () Bool)

(assert (=> b!568573 m!822819))

(assert (=> b!568580 m!822817))

(declare-fun m!822821 () Bool)

(assert (=> b!568580 m!822821))

(assert (=> b!568580 m!822821))

(declare-fun m!822823 () Bool)

(assert (=> b!568580 m!822823))

(assert (=> b!568580 m!822823))

(declare-fun m!822825 () Bool)

(assert (=> b!568580 m!822825))

(assert (=> b!568574 m!822817))

(assert (=> b!568574 m!822821))

(assert (=> b!568574 m!822821))

(assert (=> b!568574 m!822823))

(assert (=> b!568574 m!822823))

(declare-fun m!822827 () Bool)

(assert (=> b!568574 m!822827))

(declare-fun m!822829 () Bool)

(assert (=> d!198824 m!822829))

(declare-fun m!822831 () Bool)

(assert (=> d!198824 m!822831))

(declare-fun m!822833 () Bool)

(assert (=> d!198824 m!822833))

(assert (=> d!198824 m!822249))

(assert (=> b!568577 m!822817))

(assert (=> b!568579 m!822817))

(declare-fun m!822835 () Bool)

(assert (=> b!568579 m!822835))

(assert (=> b!568579 m!822803))

(assert (=> b!568572 m!822817))

(declare-fun m!822837 () Bool)

(assert (=> b!568572 m!822837))

(assert (=> b!568572 m!822837))

(declare-fun m!822839 () Bool)

(assert (=> b!568572 m!822839))

(assert (=> b!568152 d!198824))

(declare-fun d!198826 () Bool)

(assert (=> d!198826 (= (apply!1350 (transformation!1085 (rule!1825 token!491)) lt!240057) (dynLambda!3239 (toValue!1940 (transformation!1085 (rule!1825 token!491))) lt!240057))))

(declare-fun b_lambda!21889 () Bool)

(assert (=> (not b_lambda!21889) (not d!198826)))

(assert (=> d!198826 t!76457))

(declare-fun b_and!55395 () Bool)

(assert (= b_and!55391 (and (=> t!76457 result!55304) b_and!55395)))

(assert (=> d!198826 t!76459))

(declare-fun b_and!55397 () Bool)

(assert (= b_and!55393 (and (=> t!76459 result!55306) b_and!55397)))

(assert (=> d!198826 m!822789))

(assert (=> b!568152 d!198826))

(declare-fun d!198828 () Bool)

(assert (=> d!198828 (= suffix!1342 lt!240056)))

(declare-fun lt!240217 () Unit!10050)

(declare-fun choose!4045 (List!5626 List!5626 List!5626 List!5626 List!5626) Unit!10050)

(assert (=> d!198828 (= lt!240217 (choose!4045 lt!240072 suffix!1342 lt!240072 lt!240056 lt!240071))))

(assert (=> d!198828 (isPrefix!719 lt!240072 lt!240071)))

(assert (=> d!198828 (= (lemmaSamePrefixThenSameSuffix!442 lt!240072 suffix!1342 lt!240072 lt!240056 lt!240071) lt!240217)))

(declare-fun bs!68784 () Bool)

(assert (= bs!68784 d!198828))

(declare-fun m!822841 () Bool)

(assert (=> bs!68784 m!822841))

(declare-fun m!822843 () Bool)

(assert (=> bs!68784 m!822843))

(assert (=> b!568152 d!198828))

(declare-fun d!198830 () Bool)

(declare-fun lt!240220 () List!5626)

(assert (=> d!198830 (= (++!1573 lt!240072 lt!240220) lt!240071)))

(declare-fun e!343709 () List!5626)

(assert (=> d!198830 (= lt!240220 e!343709)))

(declare-fun c!106520 () Bool)

(assert (=> d!198830 (= c!106520 ((_ is Cons!5616) lt!240072))))

(assert (=> d!198830 (>= (size!4473 lt!240071) (size!4473 lt!240072))))

(assert (=> d!198830 (= (getSuffix!238 lt!240071 lt!240072) lt!240220)))

(declare-fun b!568585 () Bool)

(assert (=> b!568585 (= e!343709 (getSuffix!238 (tail!743 lt!240071) (t!76405 lt!240072)))))

(declare-fun b!568586 () Bool)

(assert (=> b!568586 (= e!343709 lt!240071)))

(assert (= (and d!198830 c!106520) b!568585))

(assert (= (and d!198830 (not c!106520)) b!568586))

(declare-fun m!822845 () Bool)

(assert (=> d!198830 m!822845))

(assert (=> d!198830 m!822741))

(assert (=> d!198830 m!822255))

(declare-fun m!822847 () Bool)

(assert (=> b!568585 m!822847))

(assert (=> b!568585 m!822847))

(declare-fun m!822849 () Bool)

(assert (=> b!568585 m!822849))

(assert (=> b!568152 d!198830))

(declare-fun d!198832 () Bool)

(assert (=> d!198832 (= (maxPrefixOneRule!370 thiss!22590 (rule!1825 (_1!3566 (v!16284 lt!240054))) input!2705) (Some!1435 (tuple2!6605 (Token!1907 (apply!1350 (transformation!1085 (rule!1825 (_1!3566 (v!16284 lt!240054)))) (seqFromList!1273 lt!240069)) (rule!1825 (_1!3566 (v!16284 lt!240054))) (size!4473 lt!240069) lt!240069) (_2!3566 (v!16284 lt!240054)))))))

(declare-fun lt!240221 () Unit!10050)

(assert (=> d!198832 (= lt!240221 (choose!4044 thiss!22590 rules!3103 lt!240069 input!2705 (_2!3566 (v!16284 lt!240054)) (rule!1825 (_1!3566 (v!16284 lt!240054)))))))

(assert (=> d!198832 (not (isEmpty!4054 rules!3103))))

(assert (=> d!198832 (= (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!120 thiss!22590 rules!3103 lt!240069 input!2705 (_2!3566 (v!16284 lt!240054)) (rule!1825 (_1!3566 (v!16284 lt!240054)))) lt!240221)))

(declare-fun bs!68785 () Bool)

(assert (= bs!68785 d!198832))

(assert (=> bs!68785 m!822211))

(assert (=> bs!68785 m!822257))

(assert (=> bs!68785 m!822267))

(declare-fun m!822851 () Bool)

(assert (=> bs!68785 m!822851))

(assert (=> bs!68785 m!822267))

(declare-fun m!822853 () Bool)

(assert (=> bs!68785 m!822853))

(assert (=> bs!68785 m!822299))

(assert (=> b!568152 d!198832))

(declare-fun d!198834 () Bool)

(declare-fun fromListB!551 (List!5626) BalanceConc!3612)

(assert (=> d!198834 (= (seqFromList!1273 lt!240072) (fromListB!551 lt!240072))))

(declare-fun bs!68786 () Bool)

(assert (= bs!68786 d!198834))

(declare-fun m!822855 () Bool)

(assert (=> bs!68786 m!822855))

(assert (=> b!568152 d!198834))

(declare-fun d!198836 () Bool)

(assert (=> d!198836 (= (inv!7054 (tag!1347 (h!11019 rules!3103))) (= (mod (str.len (value!35788 (tag!1347 (h!11019 rules!3103)))) 2) 0))))

(assert (=> b!568177 d!198836))

(declare-fun d!198838 () Bool)

(declare-fun res!244234 () Bool)

(declare-fun e!343712 () Bool)

(assert (=> d!198838 (=> (not res!244234) (not e!343712))))

(declare-fun semiInverseModEq!415 (Int Int) Bool)

(assert (=> d!198838 (= res!244234 (semiInverseModEq!415 (toChars!1799 (transformation!1085 (h!11019 rules!3103))) (toValue!1940 (transformation!1085 (h!11019 rules!3103)))))))

(assert (=> d!198838 (= (inv!7057 (transformation!1085 (h!11019 rules!3103))) e!343712)))

(declare-fun b!568589 () Bool)

(declare-fun equivClasses!398 (Int Int) Bool)

(assert (=> b!568589 (= e!343712 (equivClasses!398 (toChars!1799 (transformation!1085 (h!11019 rules!3103))) (toValue!1940 (transformation!1085 (h!11019 rules!3103)))))))

(assert (= (and d!198838 res!244234) b!568589))

(declare-fun m!822857 () Bool)

(assert (=> d!198838 m!822857))

(declare-fun m!822859 () Bool)

(assert (=> b!568589 m!822859))

(assert (=> b!568177 d!198838))

(declare-fun d!198840 () Bool)

(declare-fun list!2331 (Conc!1802) List!5626)

(assert (=> d!198840 (= (list!2329 (charsOf!714 (_1!3566 (v!16284 lt!240054)))) (list!2331 (c!106452 (charsOf!714 (_1!3566 (v!16284 lt!240054))))))))

(declare-fun bs!68787 () Bool)

(assert (= bs!68787 d!198840))

(declare-fun m!822861 () Bool)

(assert (=> bs!68787 m!822861))

(assert (=> b!568165 d!198840))

(declare-fun d!198842 () Bool)

(assert (=> d!198842 (ruleValid!295 thiss!22590 (rule!1825 (_1!3566 (v!16284 lt!240054))))))

(declare-fun lt!240224 () Unit!10050)

(declare-fun choose!4046 (LexerInterface!971 Rule!1970 List!5628) Unit!10050)

(assert (=> d!198842 (= lt!240224 (choose!4046 thiss!22590 (rule!1825 (_1!3566 (v!16284 lt!240054))) rules!3103))))

(declare-fun contains!1317 (List!5628 Rule!1970) Bool)

(assert (=> d!198842 (contains!1317 rules!3103 (rule!1825 (_1!3566 (v!16284 lt!240054))))))

(assert (=> d!198842 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!152 thiss!22590 (rule!1825 (_1!3566 (v!16284 lt!240054))) rules!3103) lt!240224)))

(declare-fun bs!68788 () Bool)

(assert (= bs!68788 d!198842))

(assert (=> bs!68788 m!822249))

(declare-fun m!822863 () Bool)

(assert (=> bs!68788 m!822863))

(declare-fun m!822865 () Bool)

(assert (=> bs!68788 m!822865))

(assert (=> b!568165 d!198842))

(declare-fun d!198844 () Bool)

(declare-fun lt!240225 () Int)

(assert (=> d!198844 (>= lt!240225 0)))

(declare-fun e!343713 () Int)

(assert (=> d!198844 (= lt!240225 e!343713)))

(declare-fun c!106521 () Bool)

(assert (=> d!198844 (= c!106521 ((_ is Nil!5616) lt!240072))))

(assert (=> d!198844 (= (size!4473 lt!240072) lt!240225)))

(declare-fun b!568590 () Bool)

(assert (=> b!568590 (= e!343713 0)))

(declare-fun b!568591 () Bool)

(assert (=> b!568591 (= e!343713 (+ 1 (size!4473 (t!76405 lt!240072))))))

(assert (= (and d!198844 c!106521) b!568590))

(assert (= (and d!198844 (not c!106521)) b!568591))

(declare-fun m!822867 () Bool)

(assert (=> b!568591 m!822867))

(assert (=> b!568165 d!198844))

(declare-fun d!198846 () Bool)

(declare-fun lt!240226 () Int)

(assert (=> d!198846 (>= lt!240226 0)))

(declare-fun e!343714 () Int)

(assert (=> d!198846 (= lt!240226 e!343714)))

(declare-fun c!106522 () Bool)

(assert (=> d!198846 (= c!106522 ((_ is Nil!5616) lt!240069))))

(assert (=> d!198846 (= (size!4473 lt!240069) lt!240226)))

(declare-fun b!568592 () Bool)

(assert (=> b!568592 (= e!343714 0)))

(declare-fun b!568593 () Bool)

(assert (=> b!568593 (= e!343714 (+ 1 (size!4473 (t!76405 lt!240069))))))

(assert (= (and d!198846 c!106522) b!568592))

(assert (= (and d!198846 (not c!106522)) b!568593))

(declare-fun m!822869 () Bool)

(assert (=> b!568593 m!822869))

(assert (=> b!568165 d!198846))

(declare-fun b!568602 () Bool)

(declare-fun e!343721 () Bool)

(declare-fun e!343722 () Bool)

(assert (=> b!568602 (= e!343721 e!343722)))

(declare-fun res!244243 () Bool)

(assert (=> b!568602 (=> (not res!244243) (not e!343722))))

(assert (=> b!568602 (= res!244243 (not ((_ is Nil!5616) lt!240066)))))

(declare-fun b!568605 () Bool)

(declare-fun e!343723 () Bool)

(assert (=> b!568605 (= e!343723 (>= (size!4473 lt!240066) (size!4473 lt!240072)))))

(declare-fun d!198848 () Bool)

(assert (=> d!198848 e!343723))

(declare-fun res!244244 () Bool)

(assert (=> d!198848 (=> res!244244 e!343723)))

(declare-fun lt!240229 () Bool)

(assert (=> d!198848 (= res!244244 (not lt!240229))))

(assert (=> d!198848 (= lt!240229 e!343721)))

(declare-fun res!244245 () Bool)

(assert (=> d!198848 (=> res!244245 e!343721)))

(assert (=> d!198848 (= res!244245 ((_ is Nil!5616) lt!240072))))

(assert (=> d!198848 (= (isPrefix!719 lt!240072 lt!240066) lt!240229)))

(declare-fun b!568604 () Bool)

(assert (=> b!568604 (= e!343722 (isPrefix!719 (tail!743 lt!240072) (tail!743 lt!240066)))))

(declare-fun b!568603 () Bool)

(declare-fun res!244246 () Bool)

(assert (=> b!568603 (=> (not res!244246) (not e!343722))))

(assert (=> b!568603 (= res!244246 (= (head!1214 lt!240072) (head!1214 lt!240066)))))

(assert (= (and d!198848 (not res!244245)) b!568602))

(assert (= (and b!568602 res!244243) b!568603))

(assert (= (and b!568603 res!244246) b!568604))

(assert (= (and d!198848 (not res!244244)) b!568605))

(declare-fun m!822871 () Bool)

(assert (=> b!568605 m!822871))

(assert (=> b!568605 m!822255))

(declare-fun m!822873 () Bool)

(assert (=> b!568604 m!822873))

(declare-fun m!822875 () Bool)

(assert (=> b!568604 m!822875))

(assert (=> b!568604 m!822873))

(assert (=> b!568604 m!822875))

(declare-fun m!822877 () Bool)

(assert (=> b!568604 m!822877))

(declare-fun m!822879 () Bool)

(assert (=> b!568603 m!822879))

(declare-fun m!822881 () Bool)

(assert (=> b!568603 m!822881))

(assert (=> b!568165 d!198848))

(declare-fun d!198850 () Bool)

(declare-fun res!244251 () Bool)

(declare-fun e!343726 () Bool)

(assert (=> d!198850 (=> (not res!244251) (not e!343726))))

(assert (=> d!198850 (= res!244251 (validRegex!472 (regex!1085 (rule!1825 (_1!3566 (v!16284 lt!240054))))))))

(assert (=> d!198850 (= (ruleValid!295 thiss!22590 (rule!1825 (_1!3566 (v!16284 lt!240054)))) e!343726)))

(declare-fun b!568610 () Bool)

(declare-fun res!244252 () Bool)

(assert (=> b!568610 (=> (not res!244252) (not e!343726))))

(assert (=> b!568610 (= res!244252 (not (nullable!377 (regex!1085 (rule!1825 (_1!3566 (v!16284 lt!240054)))))))))

(declare-fun b!568611 () Bool)

(assert (=> b!568611 (= e!343726 (not (= (tag!1347 (rule!1825 (_1!3566 (v!16284 lt!240054)))) (String!7290 ""))))))

(assert (= (and d!198850 res!244251) b!568610))

(assert (= (and b!568610 res!244252) b!568611))

(declare-fun m!822883 () Bool)

(assert (=> d!198850 m!822883))

(declare-fun m!822885 () Bool)

(assert (=> b!568610 m!822885))

(assert (=> b!568165 d!198850))

(declare-fun d!198852 () Bool)

(declare-fun lt!240232 () BalanceConc!3612)

(assert (=> d!198852 (= (list!2329 lt!240232) (originalCharacters!1124 (_1!3566 (v!16284 lt!240054))))))

(assert (=> d!198852 (= lt!240232 (dynLambda!3238 (toChars!1799 (transformation!1085 (rule!1825 (_1!3566 (v!16284 lt!240054))))) (value!35789 (_1!3566 (v!16284 lt!240054)))))))

(assert (=> d!198852 (= (charsOf!714 (_1!3566 (v!16284 lt!240054))) lt!240232)))

(declare-fun b_lambda!21891 () Bool)

(assert (=> (not b_lambda!21891) (not d!198852)))

(declare-fun tb!49391 () Bool)

(declare-fun t!76461 () Bool)

(assert (=> (and b!568174 (= (toChars!1799 (transformation!1085 (h!11019 rules!3103))) (toChars!1799 (transformation!1085 (rule!1825 (_1!3566 (v!16284 lt!240054)))))) t!76461) tb!49391))

(declare-fun b!568612 () Bool)

(declare-fun e!343727 () Bool)

(declare-fun tp!179056 () Bool)

(assert (=> b!568612 (= e!343727 (and (inv!7061 (c!106452 (dynLambda!3238 (toChars!1799 (transformation!1085 (rule!1825 (_1!3566 (v!16284 lt!240054))))) (value!35789 (_1!3566 (v!16284 lt!240054)))))) tp!179056))))

(declare-fun result!55308 () Bool)

(assert (=> tb!49391 (= result!55308 (and (inv!7062 (dynLambda!3238 (toChars!1799 (transformation!1085 (rule!1825 (_1!3566 (v!16284 lt!240054))))) (value!35789 (_1!3566 (v!16284 lt!240054))))) e!343727))))

(assert (= tb!49391 b!568612))

(declare-fun m!822887 () Bool)

(assert (=> b!568612 m!822887))

(declare-fun m!822889 () Bool)

(assert (=> tb!49391 m!822889))

(assert (=> d!198852 t!76461))

(declare-fun b_and!55399 () Bool)

(assert (= b_and!55387 (and (=> t!76461 result!55308) b_and!55399)))

(declare-fun t!76463 () Bool)

(declare-fun tb!49393 () Bool)

(assert (=> (and b!568154 (= (toChars!1799 (transformation!1085 (rule!1825 token!491))) (toChars!1799 (transformation!1085 (rule!1825 (_1!3566 (v!16284 lt!240054)))))) t!76463) tb!49393))

(declare-fun result!55310 () Bool)

(assert (= result!55310 result!55308))

(assert (=> d!198852 t!76463))

(declare-fun b_and!55401 () Bool)

(assert (= b_and!55389 (and (=> t!76463 result!55310) b_and!55401)))

(declare-fun m!822891 () Bool)

(assert (=> d!198852 m!822891))

(declare-fun m!822893 () Bool)

(assert (=> d!198852 m!822893))

(assert (=> b!568165 d!198852))

(declare-fun d!198854 () Bool)

(assert (=> d!198854 (= (seqFromList!1273 lt!240069) (fromListB!551 lt!240069))))

(declare-fun bs!68789 () Bool)

(assert (= bs!68789 d!198854))

(declare-fun m!822895 () Bool)

(assert (=> bs!68789 m!822895))

(assert (=> b!568165 d!198854))

(declare-fun d!198856 () Bool)

(assert (=> d!198856 (and (= lt!240072 input!2705) (= suffix!1342 suffix!1342))))

(declare-fun lt!240235 () Unit!10050)

(declare-fun choose!4048 (List!5626 List!5626 List!5626 List!5626) Unit!10050)

(assert (=> d!198856 (= lt!240235 (choose!4048 lt!240072 suffix!1342 input!2705 suffix!1342))))

(assert (=> d!198856 (= (++!1573 lt!240072 suffix!1342) (++!1573 input!2705 suffix!1342))))

(assert (=> d!198856 (= (lemmaConcatSameAndSameSizesThenSameLists!162 lt!240072 suffix!1342 input!2705 suffix!1342) lt!240235)))

(declare-fun bs!68790 () Bool)

(assert (= bs!68790 d!198856))

(declare-fun m!822897 () Bool)

(assert (=> bs!68790 m!822897))

(assert (=> bs!68790 m!822223))

(assert (=> bs!68790 m!822189))

(assert (=> b!568165 d!198856))

(declare-fun d!198858 () Bool)

(assert (=> d!198858 (isPrefix!719 input!2705 input!2705)))

(declare-fun lt!240238 () Unit!10050)

(declare-fun choose!4049 (List!5626 List!5626) Unit!10050)

(assert (=> d!198858 (= lt!240238 (choose!4049 input!2705 input!2705))))

(assert (=> d!198858 (= (lemmaIsPrefixRefl!457 input!2705 input!2705) lt!240238)))

(declare-fun bs!68791 () Bool)

(assert (= bs!68791 d!198858))

(assert (=> bs!68791 m!822271))

(declare-fun m!822899 () Bool)

(assert (=> bs!68791 m!822899))

(assert (=> b!568165 d!198858))

(declare-fun b!568613 () Bool)

(declare-fun e!343728 () Bool)

(declare-fun e!343729 () Bool)

(assert (=> b!568613 (= e!343728 e!343729)))

(declare-fun res!244253 () Bool)

(assert (=> b!568613 (=> (not res!244253) (not e!343729))))

(assert (=> b!568613 (= res!244253 (not ((_ is Nil!5616) lt!240066)))))

(declare-fun b!568616 () Bool)

(declare-fun e!343730 () Bool)

(assert (=> b!568616 (= e!343730 (>= (size!4473 lt!240066) (size!4473 input!2705)))))

(declare-fun d!198860 () Bool)

(assert (=> d!198860 e!343730))

(declare-fun res!244254 () Bool)

(assert (=> d!198860 (=> res!244254 e!343730)))

(declare-fun lt!240239 () Bool)

(assert (=> d!198860 (= res!244254 (not lt!240239))))

(assert (=> d!198860 (= lt!240239 e!343728)))

(declare-fun res!244255 () Bool)

(assert (=> d!198860 (=> res!244255 e!343728)))

(assert (=> d!198860 (= res!244255 ((_ is Nil!5616) input!2705))))

(assert (=> d!198860 (= (isPrefix!719 input!2705 lt!240066) lt!240239)))

(declare-fun b!568615 () Bool)

(assert (=> b!568615 (= e!343729 (isPrefix!719 (tail!743 input!2705) (tail!743 lt!240066)))))

(declare-fun b!568614 () Bool)

(declare-fun res!244256 () Bool)

(assert (=> b!568614 (=> (not res!244256) (not e!343729))))

(assert (=> b!568614 (= res!244256 (= (head!1214 input!2705) (head!1214 lt!240066)))))

(assert (= (and d!198860 (not res!244255)) b!568613))

(assert (= (and b!568613 res!244253) b!568614))

(assert (= (and b!568614 res!244256) b!568615))

(assert (= (and d!198860 (not res!244254)) b!568616))

(assert (=> b!568616 m!822871))

(assert (=> b!568616 m!822803))

(assert (=> b!568615 m!822585))

(assert (=> b!568615 m!822875))

(assert (=> b!568615 m!822585))

(assert (=> b!568615 m!822875))

(declare-fun m!822901 () Bool)

(assert (=> b!568615 m!822901))

(assert (=> b!568614 m!822579))

(assert (=> b!568614 m!822881))

(assert (=> b!568165 d!198860))

(declare-fun d!198862 () Bool)

(declare-fun e!343733 () Bool)

(assert (=> d!198862 e!343733))

(declare-fun res!244259 () Bool)

(assert (=> d!198862 (=> (not res!244259) (not e!343733))))

(assert (=> d!198862 (= res!244259 (semiInverseModEq!415 (toChars!1799 (transformation!1085 (rule!1825 token!491))) (toValue!1940 (transformation!1085 (rule!1825 token!491)))))))

(declare-fun Unit!10061 () Unit!10050)

(assert (=> d!198862 (= (lemmaInv!221 (transformation!1085 (rule!1825 token!491))) Unit!10061)))

(declare-fun b!568619 () Bool)

(assert (=> b!568619 (= e!343733 (equivClasses!398 (toChars!1799 (transformation!1085 (rule!1825 token!491))) (toValue!1940 (transformation!1085 (rule!1825 token!491)))))))

(assert (= (and d!198862 res!244259) b!568619))

(declare-fun m!822903 () Bool)

(assert (=> d!198862 m!822903))

(declare-fun m!822905 () Bool)

(assert (=> b!568619 m!822905))

(assert (=> b!568165 d!198862))

(declare-fun d!198864 () Bool)

(assert (=> d!198864 (= (size!4472 token!491) (size!4473 (originalCharacters!1124 token!491)))))

(declare-fun Unit!10062 () Unit!10050)

(assert (=> d!198864 (= (lemmaCharactersSize!152 token!491) Unit!10062)))

(declare-fun bs!68792 () Bool)

(assert (= bs!68792 d!198864))

(assert (=> bs!68792 m!822301))

(assert (=> b!568165 d!198864))

(declare-fun b!568620 () Bool)

(declare-fun e!343734 () Bool)

(declare-fun e!343735 () Bool)

(assert (=> b!568620 (= e!343734 e!343735)))

(declare-fun res!244260 () Bool)

(assert (=> b!568620 (=> (not res!244260) (not e!343735))))

(assert (=> b!568620 (= res!244260 (not ((_ is Nil!5616) lt!240049)))))

(declare-fun b!568623 () Bool)

(declare-fun e!343736 () Bool)

(assert (=> b!568623 (= e!343736 (>= (size!4473 lt!240049) (size!4473 lt!240069)))))

(declare-fun d!198866 () Bool)

(assert (=> d!198866 e!343736))

(declare-fun res!244261 () Bool)

(assert (=> d!198866 (=> res!244261 e!343736)))

(declare-fun lt!240240 () Bool)

(assert (=> d!198866 (= res!244261 (not lt!240240))))

(assert (=> d!198866 (= lt!240240 e!343734)))

(declare-fun res!244262 () Bool)

(assert (=> d!198866 (=> res!244262 e!343734)))

(assert (=> d!198866 (= res!244262 ((_ is Nil!5616) lt!240069))))

(assert (=> d!198866 (= (isPrefix!719 lt!240069 lt!240049) lt!240240)))

(declare-fun b!568622 () Bool)

(assert (=> b!568622 (= e!343735 (isPrefix!719 (tail!743 lt!240069) (tail!743 lt!240049)))))

(declare-fun b!568621 () Bool)

(declare-fun res!244263 () Bool)

(assert (=> b!568621 (=> (not res!244263) (not e!343735))))

(assert (=> b!568621 (= res!244263 (= (head!1214 lt!240069) (head!1214 lt!240049)))))

(assert (= (and d!198866 (not res!244262)) b!568620))

(assert (= (and b!568620 res!244260) b!568621))

(assert (= (and b!568621 res!244263) b!568622))

(assert (= (and d!198866 (not res!244261)) b!568623))

(declare-fun m!822907 () Bool)

(assert (=> b!568623 m!822907))

(assert (=> b!568623 m!822257))

(declare-fun m!822909 () Bool)

(assert (=> b!568622 m!822909))

(declare-fun m!822911 () Bool)

(assert (=> b!568622 m!822911))

(assert (=> b!568622 m!822909))

(assert (=> b!568622 m!822911))

(declare-fun m!822913 () Bool)

(assert (=> b!568622 m!822913))

(declare-fun m!822915 () Bool)

(assert (=> b!568621 m!822915))

(declare-fun m!822917 () Bool)

(assert (=> b!568621 m!822917))

(assert (=> b!568165 d!198866))

(declare-fun b!568625 () Bool)

(declare-fun e!343738 () List!5626)

(assert (=> b!568625 (= e!343738 (Cons!5616 (h!11017 lt!240069) (++!1573 (t!76405 lt!240069) (_2!3566 (v!16284 lt!240054)))))))

(declare-fun e!343737 () Bool)

(declare-fun b!568627 () Bool)

(declare-fun lt!240241 () List!5626)

(assert (=> b!568627 (= e!343737 (or (not (= (_2!3566 (v!16284 lt!240054)) Nil!5616)) (= lt!240241 lt!240069)))))

(declare-fun d!198868 () Bool)

(assert (=> d!198868 e!343737))

(declare-fun res!244264 () Bool)

(assert (=> d!198868 (=> (not res!244264) (not e!343737))))

(assert (=> d!198868 (= res!244264 (= (content!984 lt!240241) ((_ map or) (content!984 lt!240069) (content!984 (_2!3566 (v!16284 lt!240054))))))))

(assert (=> d!198868 (= lt!240241 e!343738)))

(declare-fun c!106523 () Bool)

(assert (=> d!198868 (= c!106523 ((_ is Nil!5616) lt!240069))))

(assert (=> d!198868 (= (++!1573 lt!240069 (_2!3566 (v!16284 lt!240054))) lt!240241)))

(declare-fun b!568626 () Bool)

(declare-fun res!244265 () Bool)

(assert (=> b!568626 (=> (not res!244265) (not e!343737))))

(assert (=> b!568626 (= res!244265 (= (size!4473 lt!240241) (+ (size!4473 lt!240069) (size!4473 (_2!3566 (v!16284 lt!240054))))))))

(declare-fun b!568624 () Bool)

(assert (=> b!568624 (= e!343738 (_2!3566 (v!16284 lt!240054)))))

(assert (= (and d!198868 c!106523) b!568624))

(assert (= (and d!198868 (not c!106523)) b!568625))

(assert (= (and d!198868 res!244264) b!568626))

(assert (= (and b!568626 res!244265) b!568627))

(declare-fun m!822919 () Bool)

(assert (=> b!568625 m!822919))

(declare-fun m!822921 () Bool)

(assert (=> d!198868 m!822921))

(declare-fun m!822923 () Bool)

(assert (=> d!198868 m!822923))

(declare-fun m!822925 () Bool)

(assert (=> d!198868 m!822925))

(declare-fun m!822927 () Bool)

(assert (=> b!568626 m!822927))

(assert (=> b!568626 m!822257))

(declare-fun m!822929 () Bool)

(assert (=> b!568626 m!822929))

(assert (=> b!568165 d!198868))

(declare-fun d!198870 () Bool)

(assert (=> d!198870 (= (size!4472 (_1!3566 (v!16284 lt!240054))) (size!4473 (originalCharacters!1124 (_1!3566 (v!16284 lt!240054)))))))

(declare-fun Unit!10063 () Unit!10050)

(assert (=> d!198870 (= (lemmaCharactersSize!152 (_1!3566 (v!16284 lt!240054))) Unit!10063)))

(declare-fun bs!68793 () Bool)

(assert (= bs!68793 d!198870))

(assert (=> bs!68793 m!822225))

(assert (=> b!568165 d!198870))

(declare-fun b!568628 () Bool)

(declare-fun e!343739 () Bool)

(declare-fun e!343740 () Bool)

(assert (=> b!568628 (= e!343739 e!343740)))

(declare-fun res!244266 () Bool)

(assert (=> b!568628 (=> (not res!244266) (not e!343740))))

(assert (=> b!568628 (= res!244266 (not ((_ is Nil!5616) lt!240071)))))

(declare-fun b!568631 () Bool)

(declare-fun e!343741 () Bool)

(assert (=> b!568631 (= e!343741 (>= (size!4473 lt!240071) (size!4473 input!2705)))))

(declare-fun d!198872 () Bool)

(assert (=> d!198872 e!343741))

(declare-fun res!244267 () Bool)

(assert (=> d!198872 (=> res!244267 e!343741)))

(declare-fun lt!240242 () Bool)

(assert (=> d!198872 (= res!244267 (not lt!240242))))

(assert (=> d!198872 (= lt!240242 e!343739)))

(declare-fun res!244268 () Bool)

(assert (=> d!198872 (=> res!244268 e!343739)))

(assert (=> d!198872 (= res!244268 ((_ is Nil!5616) input!2705))))

(assert (=> d!198872 (= (isPrefix!719 input!2705 lt!240071) lt!240242)))

(declare-fun b!568630 () Bool)

(assert (=> b!568630 (= e!343740 (isPrefix!719 (tail!743 input!2705) (tail!743 lt!240071)))))

(declare-fun b!568629 () Bool)

(declare-fun res!244269 () Bool)

(assert (=> b!568629 (=> (not res!244269) (not e!343740))))

(assert (=> b!568629 (= res!244269 (= (head!1214 input!2705) (head!1214 lt!240071)))))

(assert (= (and d!198872 (not res!244268)) b!568628))

(assert (= (and b!568628 res!244266) b!568629))

(assert (= (and b!568629 res!244269) b!568630))

(assert (= (and d!198872 (not res!244267)) b!568631))

(assert (=> b!568631 m!822741))

(assert (=> b!568631 m!822803))

(assert (=> b!568630 m!822585))

(assert (=> b!568630 m!822847))

(assert (=> b!568630 m!822585))

(assert (=> b!568630 m!822847))

(declare-fun m!822931 () Bool)

(assert (=> b!568630 m!822931))

(assert (=> b!568629 m!822579))

(declare-fun m!822933 () Bool)

(assert (=> b!568629 m!822933))

(assert (=> b!568165 d!198872))

(declare-fun b!568632 () Bool)

(declare-fun e!343742 () Bool)

(declare-fun e!343743 () Bool)

(assert (=> b!568632 (= e!343742 e!343743)))

(declare-fun res!244270 () Bool)

(assert (=> b!568632 (=> (not res!244270) (not e!343743))))

(assert (=> b!568632 (= res!244270 (not ((_ is Nil!5616) input!2705)))))

(declare-fun b!568635 () Bool)

(declare-fun e!343744 () Bool)

(assert (=> b!568635 (= e!343744 (>= (size!4473 input!2705) (size!4473 input!2705)))))

(declare-fun d!198874 () Bool)

(assert (=> d!198874 e!343744))

(declare-fun res!244271 () Bool)

(assert (=> d!198874 (=> res!244271 e!343744)))

(declare-fun lt!240243 () Bool)

(assert (=> d!198874 (= res!244271 (not lt!240243))))

(assert (=> d!198874 (= lt!240243 e!343742)))

(declare-fun res!244272 () Bool)

(assert (=> d!198874 (=> res!244272 e!343742)))

(assert (=> d!198874 (= res!244272 ((_ is Nil!5616) input!2705))))

(assert (=> d!198874 (= (isPrefix!719 input!2705 input!2705) lt!240243)))

(declare-fun b!568634 () Bool)

(assert (=> b!568634 (= e!343743 (isPrefix!719 (tail!743 input!2705) (tail!743 input!2705)))))

(declare-fun b!568633 () Bool)

(declare-fun res!244273 () Bool)

(assert (=> b!568633 (=> (not res!244273) (not e!343743))))

(assert (=> b!568633 (= res!244273 (= (head!1214 input!2705) (head!1214 input!2705)))))

(assert (= (and d!198874 (not res!244272)) b!568632))

(assert (= (and b!568632 res!244270) b!568633))

(assert (= (and b!568633 res!244273) b!568634))

(assert (= (and d!198874 (not res!244271)) b!568635))

(assert (=> b!568635 m!822803))

(assert (=> b!568635 m!822803))

(assert (=> b!568634 m!822585))

(assert (=> b!568634 m!822585))

(assert (=> b!568634 m!822585))

(assert (=> b!568634 m!822585))

(declare-fun m!822935 () Bool)

(assert (=> b!568634 m!822935))

(assert (=> b!568633 m!822579))

(assert (=> b!568633 m!822579))

(assert (=> b!568165 d!198874))

(declare-fun d!198876 () Bool)

(declare-fun lt!240244 () List!5626)

(assert (=> d!198876 (= (++!1573 lt!240069 lt!240244) input!2705)))

(declare-fun e!343745 () List!5626)

(assert (=> d!198876 (= lt!240244 e!343745)))

(declare-fun c!106524 () Bool)

(assert (=> d!198876 (= c!106524 ((_ is Cons!5616) lt!240069))))

(assert (=> d!198876 (>= (size!4473 input!2705) (size!4473 lt!240069))))

(assert (=> d!198876 (= (getSuffix!238 input!2705 lt!240069) lt!240244)))

(declare-fun b!568636 () Bool)

(assert (=> b!568636 (= e!343745 (getSuffix!238 (tail!743 input!2705) (t!76405 lt!240069)))))

(declare-fun b!568637 () Bool)

(assert (=> b!568637 (= e!343745 input!2705)))

(assert (= (and d!198876 c!106524) b!568636))

(assert (= (and d!198876 (not c!106524)) b!568637))

(declare-fun m!822937 () Bool)

(assert (=> d!198876 m!822937))

(assert (=> d!198876 m!822803))

(assert (=> d!198876 m!822257))

(assert (=> b!568636 m!822585))

(assert (=> b!568636 m!822585))

(declare-fun m!822939 () Bool)

(assert (=> b!568636 m!822939))

(assert (=> b!568165 d!198876))

(declare-fun d!198878 () Bool)

(assert (=> d!198878 (ruleValid!295 thiss!22590 (rule!1825 token!491))))

(declare-fun lt!240245 () Unit!10050)

(assert (=> d!198878 (= lt!240245 (choose!4046 thiss!22590 (rule!1825 token!491) rules!3103))))

(assert (=> d!198878 (contains!1317 rules!3103 (rule!1825 token!491))))

(assert (=> d!198878 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!152 thiss!22590 (rule!1825 token!491) rules!3103) lt!240245)))

(declare-fun bs!68794 () Bool)

(assert (= bs!68794 d!198878))

(assert (=> bs!68794 m!822251))

(declare-fun m!822941 () Bool)

(assert (=> bs!68794 m!822941))

(declare-fun m!822943 () Bool)

(assert (=> bs!68794 m!822943))

(assert (=> b!568165 d!198878))

(declare-fun d!198880 () Bool)

(assert (=> d!198880 (isPrefix!719 input!2705 (++!1573 input!2705 suffix!1342))))

(declare-fun lt!240248 () Unit!10050)

(declare-fun choose!4050 (List!5626 List!5626) Unit!10050)

(assert (=> d!198880 (= lt!240248 (choose!4050 input!2705 suffix!1342))))

(assert (=> d!198880 (= (lemmaConcatTwoListThenFirstIsPrefix!566 input!2705 suffix!1342) lt!240248)))

(declare-fun bs!68795 () Bool)

(assert (= bs!68795 d!198880))

(assert (=> bs!68795 m!822189))

(assert (=> bs!68795 m!822189))

(declare-fun m!822945 () Bool)

(assert (=> bs!68795 m!822945))

(declare-fun m!822947 () Bool)

(assert (=> bs!68795 m!822947))

(assert (=> b!568165 d!198880))

(declare-fun d!198882 () Bool)

(assert (=> d!198882 (isPrefix!719 lt!240072 (++!1573 lt!240072 suffix!1342))))

(declare-fun lt!240249 () Unit!10050)

(assert (=> d!198882 (= lt!240249 (choose!4050 lt!240072 suffix!1342))))

(assert (=> d!198882 (= (lemmaConcatTwoListThenFirstIsPrefix!566 lt!240072 suffix!1342) lt!240249)))

(declare-fun bs!68796 () Bool)

(assert (= bs!68796 d!198882))

(assert (=> bs!68796 m!822223))

(assert (=> bs!68796 m!822223))

(declare-fun m!822949 () Bool)

(assert (=> bs!68796 m!822949))

(declare-fun m!822951 () Bool)

(assert (=> bs!68796 m!822951))

(assert (=> b!568165 d!198882))

(declare-fun d!198884 () Bool)

(declare-fun res!244274 () Bool)

(declare-fun e!343746 () Bool)

(assert (=> d!198884 (=> (not res!244274) (not e!343746))))

(assert (=> d!198884 (= res!244274 (validRegex!472 (regex!1085 (rule!1825 token!491))))))

(assert (=> d!198884 (= (ruleValid!295 thiss!22590 (rule!1825 token!491)) e!343746)))

(declare-fun b!568638 () Bool)

(declare-fun res!244275 () Bool)

(assert (=> b!568638 (=> (not res!244275) (not e!343746))))

(assert (=> b!568638 (= res!244275 (not (nullable!377 (regex!1085 (rule!1825 token!491)))))))

(declare-fun b!568639 () Bool)

(assert (=> b!568639 (= e!343746 (not (= (tag!1347 (rule!1825 token!491)) (String!7290 ""))))))

(assert (= (and d!198884 res!244274) b!568638))

(assert (= (and b!568638 res!244275) b!568639))

(assert (=> d!198884 m!822577))

(assert (=> b!568638 m!822581))

(assert (=> b!568165 d!198884))

(declare-fun d!198886 () Bool)

(declare-fun e!343747 () Bool)

(assert (=> d!198886 e!343747))

(declare-fun res!244276 () Bool)

(assert (=> d!198886 (=> (not res!244276) (not e!343747))))

(assert (=> d!198886 (= res!244276 (semiInverseModEq!415 (toChars!1799 (transformation!1085 (rule!1825 (_1!3566 (v!16284 lt!240054))))) (toValue!1940 (transformation!1085 (rule!1825 (_1!3566 (v!16284 lt!240054)))))))))

(declare-fun Unit!10064 () Unit!10050)

(assert (=> d!198886 (= (lemmaInv!221 (transformation!1085 (rule!1825 (_1!3566 (v!16284 lt!240054))))) Unit!10064)))

(declare-fun b!568640 () Bool)

(assert (=> b!568640 (= e!343747 (equivClasses!398 (toChars!1799 (transformation!1085 (rule!1825 (_1!3566 (v!16284 lt!240054))))) (toValue!1940 (transformation!1085 (rule!1825 (_1!3566 (v!16284 lt!240054)))))))))

(assert (= (and d!198886 res!244276) b!568640))

(declare-fun m!822953 () Bool)

(assert (=> d!198886 m!822953))

(declare-fun m!822955 () Bool)

(assert (=> b!568640 m!822955))

(assert (=> b!568165 d!198886))

(declare-fun d!198888 () Bool)

(assert (=> d!198888 (= (apply!1350 (transformation!1085 (rule!1825 (_1!3566 (v!16284 lt!240054)))) lt!240052) (dynLambda!3239 (toValue!1940 (transformation!1085 (rule!1825 (_1!3566 (v!16284 lt!240054))))) lt!240052))))

(declare-fun b_lambda!21893 () Bool)

(assert (=> (not b_lambda!21893) (not d!198888)))

(assert (=> d!198888 t!76437))

(declare-fun b_and!55403 () Bool)

(assert (= b_and!55395 (and (=> t!76437 result!55276) b_and!55403)))

(assert (=> d!198888 t!76439))

(declare-fun b_and!55405 () Bool)

(assert (= b_and!55397 (and (=> t!76439 result!55280) b_and!55405)))

(assert (=> d!198888 m!822563))

(assert (=> b!568165 d!198888))

(declare-fun d!198890 () Bool)

(assert (=> d!198890 (= (_2!3566 (v!16284 lt!240054)) lt!240051)))

(declare-fun lt!240250 () Unit!10050)

(assert (=> d!198890 (= lt!240250 (choose!4045 lt!240069 (_2!3566 (v!16284 lt!240054)) lt!240069 lt!240051 input!2705))))

(assert (=> d!198890 (isPrefix!719 lt!240069 input!2705)))

(assert (=> d!198890 (= (lemmaSamePrefixThenSameSuffix!442 lt!240069 (_2!3566 (v!16284 lt!240054)) lt!240069 lt!240051 input!2705) lt!240250)))

(declare-fun bs!68797 () Bool)

(assert (= bs!68797 d!198890))

(declare-fun m!822957 () Bool)

(assert (=> bs!68797 m!822957))

(assert (=> bs!68797 m!822575))

(assert (=> b!568165 d!198890))

(declare-fun d!198892 () Bool)

(assert (=> d!198892 (isPrefix!719 lt!240069 (++!1573 lt!240069 (_2!3566 (v!16284 lt!240054))))))

(declare-fun lt!240251 () Unit!10050)

(assert (=> d!198892 (= lt!240251 (choose!4050 lt!240069 (_2!3566 (v!16284 lt!240054))))))

(assert (=> d!198892 (= (lemmaConcatTwoListThenFirstIsPrefix!566 lt!240069 (_2!3566 (v!16284 lt!240054))) lt!240251)))

(declare-fun bs!68798 () Bool)

(assert (= bs!68798 d!198892))

(assert (=> bs!68798 m!822265))

(assert (=> bs!68798 m!822265))

(declare-fun m!822959 () Bool)

(assert (=> bs!68798 m!822959))

(declare-fun m!822961 () Bool)

(assert (=> bs!68798 m!822961))

(assert (=> b!568165 d!198892))

(declare-fun d!198894 () Bool)

(declare-fun res!244281 () Bool)

(declare-fun e!343750 () Bool)

(assert (=> d!198894 (=> (not res!244281) (not e!343750))))

(assert (=> d!198894 (= res!244281 (not (isEmpty!4053 (originalCharacters!1124 token!491))))))

(assert (=> d!198894 (= (inv!7058 token!491) e!343750)))

(declare-fun b!568645 () Bool)

(declare-fun res!244282 () Bool)

(assert (=> b!568645 (=> (not res!244282) (not e!343750))))

(assert (=> b!568645 (= res!244282 (= (originalCharacters!1124 token!491) (list!2329 (dynLambda!3238 (toChars!1799 (transformation!1085 (rule!1825 token!491))) (value!35789 token!491)))))))

(declare-fun b!568646 () Bool)

(assert (=> b!568646 (= e!343750 (= (size!4472 token!491) (size!4473 (originalCharacters!1124 token!491))))))

(assert (= (and d!198894 res!244281) b!568645))

(assert (= (and b!568645 res!244282) b!568646))

(declare-fun b_lambda!21895 () Bool)

(assert (=> (not b_lambda!21895) (not b!568645)))

(declare-fun tb!49395 () Bool)

(declare-fun t!76465 () Bool)

(assert (=> (and b!568174 (= (toChars!1799 (transformation!1085 (h!11019 rules!3103))) (toChars!1799 (transformation!1085 (rule!1825 token!491)))) t!76465) tb!49395))

(declare-fun b!568647 () Bool)

(declare-fun e!343751 () Bool)

(declare-fun tp!179057 () Bool)

(assert (=> b!568647 (= e!343751 (and (inv!7061 (c!106452 (dynLambda!3238 (toChars!1799 (transformation!1085 (rule!1825 token!491))) (value!35789 token!491)))) tp!179057))))

(declare-fun result!55312 () Bool)

(assert (=> tb!49395 (= result!55312 (and (inv!7062 (dynLambda!3238 (toChars!1799 (transformation!1085 (rule!1825 token!491))) (value!35789 token!491))) e!343751))))

(assert (= tb!49395 b!568647))

(declare-fun m!822963 () Bool)

(assert (=> b!568647 m!822963))

(declare-fun m!822965 () Bool)

(assert (=> tb!49395 m!822965))

(assert (=> b!568645 t!76465))

(declare-fun b_and!55407 () Bool)

(assert (= b_and!55399 (and (=> t!76465 result!55312) b_and!55407)))

(declare-fun t!76467 () Bool)

(declare-fun tb!49397 () Bool)

(assert (=> (and b!568154 (= (toChars!1799 (transformation!1085 (rule!1825 token!491))) (toChars!1799 (transformation!1085 (rule!1825 token!491)))) t!76467) tb!49397))

(declare-fun result!55314 () Bool)

(assert (= result!55314 result!55312))

(assert (=> b!568645 t!76467))

(declare-fun b_and!55409 () Bool)

(assert (= b_and!55401 (and (=> t!76467 result!55314) b_and!55409)))

(declare-fun m!822967 () Bool)

(assert (=> d!198894 m!822967))

(declare-fun m!822969 () Bool)

(assert (=> b!568645 m!822969))

(assert (=> b!568645 m!822969))

(declare-fun m!822971 () Bool)

(assert (=> b!568645 m!822971))

(assert (=> b!568646 m!822301))

(assert (=> start!52348 d!198894))

(declare-fun d!198896 () Bool)

(declare-fun res!244285 () Bool)

(declare-fun e!343754 () Bool)

(assert (=> d!198896 (=> (not res!244285) (not e!343754))))

(declare-fun rulesValid!379 (LexerInterface!971 List!5628) Bool)

(assert (=> d!198896 (= res!244285 (rulesValid!379 thiss!22590 rules!3103))))

(assert (=> d!198896 (= (rulesInvariant!934 thiss!22590 rules!3103) e!343754)))

(declare-fun b!568650 () Bool)

(declare-datatypes ((List!5630 0))(
  ( (Nil!5620) (Cons!5620 (h!11021 String!7289) (t!76481 List!5630)) )
))
(declare-fun noDuplicateTag!379 (LexerInterface!971 List!5628 List!5630) Bool)

(assert (=> b!568650 (= e!343754 (noDuplicateTag!379 thiss!22590 rules!3103 Nil!5620))))

(assert (= (and d!198896 res!244285) b!568650))

(declare-fun m!822973 () Bool)

(assert (=> d!198896 m!822973))

(declare-fun m!822975 () Bool)

(assert (=> b!568650 m!822975))

(assert (=> b!568169 d!198896))

(declare-fun d!198898 () Bool)

(assert (=> d!198898 (= (isDefined!1247 lt!240041) (not (isEmpty!4056 lt!240041)))))

(declare-fun bs!68799 () Bool)

(assert (= bs!68799 d!198898))

(declare-fun m!822977 () Bool)

(assert (=> bs!68799 m!822977))

(assert (=> b!568158 d!198898))

(declare-fun b!568669 () Bool)

(declare-fun res!244303 () Bool)

(declare-fun e!343761 () Bool)

(assert (=> b!568669 (=> (not res!244303) (not e!343761))))

(declare-fun lt!240262 () Option!1436)

(assert (=> b!568669 (= res!244303 (= (++!1573 (list!2329 (charsOf!714 (_1!3566 (get!2142 lt!240262)))) (_2!3566 (get!2142 lt!240262))) lt!240071))))

(declare-fun b!568670 () Bool)

(declare-fun res!244304 () Bool)

(assert (=> b!568670 (=> (not res!244304) (not e!343761))))

(assert (=> b!568670 (= res!244304 (= (value!35789 (_1!3566 (get!2142 lt!240262))) (apply!1350 (transformation!1085 (rule!1825 (_1!3566 (get!2142 lt!240262)))) (seqFromList!1273 (originalCharacters!1124 (_1!3566 (get!2142 lt!240262)))))))))

(declare-fun b!568671 () Bool)

(declare-fun res!244305 () Bool)

(assert (=> b!568671 (=> (not res!244305) (not e!343761))))

(assert (=> b!568671 (= res!244305 (= (list!2329 (charsOf!714 (_1!3566 (get!2142 lt!240262)))) (originalCharacters!1124 (_1!3566 (get!2142 lt!240262)))))))

(declare-fun b!568672 () Bool)

(declare-fun e!343762 () Option!1436)

(declare-fun call!39362 () Option!1436)

(assert (=> b!568672 (= e!343762 call!39362)))

(declare-fun d!198900 () Bool)

(declare-fun e!343763 () Bool)

(assert (=> d!198900 e!343763))

(declare-fun res!244302 () Bool)

(assert (=> d!198900 (=> res!244302 e!343763)))

(assert (=> d!198900 (= res!244302 (isEmpty!4056 lt!240262))))

(assert (=> d!198900 (= lt!240262 e!343762)))

(declare-fun c!106527 () Bool)

(assert (=> d!198900 (= c!106527 (and ((_ is Cons!5618) rules!3103) ((_ is Nil!5618) (t!76407 rules!3103))))))

(declare-fun lt!240266 () Unit!10050)

(declare-fun lt!240265 () Unit!10050)

(assert (=> d!198900 (= lt!240266 lt!240265)))

(assert (=> d!198900 (isPrefix!719 lt!240071 lt!240071)))

(assert (=> d!198900 (= lt!240265 (lemmaIsPrefixRefl!457 lt!240071 lt!240071))))

(declare-fun rulesValidInductive!384 (LexerInterface!971 List!5628) Bool)

(assert (=> d!198900 (rulesValidInductive!384 thiss!22590 rules!3103)))

(assert (=> d!198900 (= (maxPrefix!669 thiss!22590 rules!3103 lt!240071) lt!240262)))

(declare-fun b!568673 () Bool)

(assert (=> b!568673 (= e!343761 (contains!1317 rules!3103 (rule!1825 (_1!3566 (get!2142 lt!240262)))))))

(declare-fun b!568674 () Bool)

(declare-fun res!244306 () Bool)

(assert (=> b!568674 (=> (not res!244306) (not e!343761))))

(assert (=> b!568674 (= res!244306 (matchR!566 (regex!1085 (rule!1825 (_1!3566 (get!2142 lt!240262)))) (list!2329 (charsOf!714 (_1!3566 (get!2142 lt!240262))))))))

(declare-fun b!568675 () Bool)

(declare-fun res!244300 () Bool)

(assert (=> b!568675 (=> (not res!244300) (not e!343761))))

(assert (=> b!568675 (= res!244300 (< (size!4473 (_2!3566 (get!2142 lt!240262))) (size!4473 lt!240071)))))

(declare-fun bm!39357 () Bool)

(assert (=> bm!39357 (= call!39362 (maxPrefixOneRule!370 thiss!22590 (h!11019 rules!3103) lt!240071))))

(declare-fun b!568676 () Bool)

(declare-fun lt!240263 () Option!1436)

(declare-fun lt!240264 () Option!1436)

(assert (=> b!568676 (= e!343762 (ite (and ((_ is None!1435) lt!240263) ((_ is None!1435) lt!240264)) None!1435 (ite ((_ is None!1435) lt!240264) lt!240263 (ite ((_ is None!1435) lt!240263) lt!240264 (ite (>= (size!4472 (_1!3566 (v!16284 lt!240263))) (size!4472 (_1!3566 (v!16284 lt!240264)))) lt!240263 lt!240264)))))))

(assert (=> b!568676 (= lt!240263 call!39362)))

(assert (=> b!568676 (= lt!240264 (maxPrefix!669 thiss!22590 (t!76407 rules!3103) lt!240071))))

(declare-fun b!568677 () Bool)

(assert (=> b!568677 (= e!343763 e!343761)))

(declare-fun res!244301 () Bool)

(assert (=> b!568677 (=> (not res!244301) (not e!343761))))

(assert (=> b!568677 (= res!244301 (isDefined!1247 lt!240262))))

(assert (= (and d!198900 c!106527) b!568672))

(assert (= (and d!198900 (not c!106527)) b!568676))

(assert (= (or b!568672 b!568676) bm!39357))

(assert (= (and d!198900 (not res!244302)) b!568677))

(assert (= (and b!568677 res!244301) b!568671))

(assert (= (and b!568671 res!244305) b!568675))

(assert (= (and b!568675 res!244300) b!568669))

(assert (= (and b!568669 res!244303) b!568670))

(assert (= (and b!568670 res!244304) b!568674))

(assert (= (and b!568674 res!244306) b!568673))

(declare-fun m!822979 () Bool)

(assert (=> b!568675 m!822979))

(declare-fun m!822981 () Bool)

(assert (=> b!568675 m!822981))

(assert (=> b!568675 m!822741))

(declare-fun m!822983 () Bool)

(assert (=> bm!39357 m!822983))

(assert (=> b!568673 m!822979))

(declare-fun m!822985 () Bool)

(assert (=> b!568673 m!822985))

(assert (=> b!568669 m!822979))

(declare-fun m!822987 () Bool)

(assert (=> b!568669 m!822987))

(assert (=> b!568669 m!822987))

(declare-fun m!822989 () Bool)

(assert (=> b!568669 m!822989))

(assert (=> b!568669 m!822989))

(declare-fun m!822991 () Bool)

(assert (=> b!568669 m!822991))

(assert (=> b!568670 m!822979))

(declare-fun m!822993 () Bool)

(assert (=> b!568670 m!822993))

(assert (=> b!568670 m!822993))

(declare-fun m!822995 () Bool)

(assert (=> b!568670 m!822995))

(declare-fun m!822997 () Bool)

(assert (=> b!568676 m!822997))

(assert (=> b!568671 m!822979))

(assert (=> b!568671 m!822987))

(assert (=> b!568671 m!822987))

(assert (=> b!568671 m!822989))

(declare-fun m!822999 () Bool)

(assert (=> d!198900 m!822999))

(declare-fun m!823001 () Bool)

(assert (=> d!198900 m!823001))

(declare-fun m!823003 () Bool)

(assert (=> d!198900 m!823003))

(declare-fun m!823005 () Bool)

(assert (=> d!198900 m!823005))

(assert (=> b!568674 m!822979))

(assert (=> b!568674 m!822987))

(assert (=> b!568674 m!822987))

(assert (=> b!568674 m!822989))

(assert (=> b!568674 m!822989))

(declare-fun m!823007 () Bool)

(assert (=> b!568674 m!823007))

(declare-fun m!823009 () Bool)

(assert (=> b!568677 m!823009))

(assert (=> b!568158 d!198900))

(declare-fun b!568679 () Bool)

(declare-fun e!343765 () List!5626)

(assert (=> b!568679 (= e!343765 (Cons!5616 (h!11017 input!2705) (++!1573 (t!76405 input!2705) suffix!1342)))))

(declare-fun b!568681 () Bool)

(declare-fun e!343764 () Bool)

(declare-fun lt!240267 () List!5626)

(assert (=> b!568681 (= e!343764 (or (not (= suffix!1342 Nil!5616)) (= lt!240267 input!2705)))))

(declare-fun d!198902 () Bool)

(assert (=> d!198902 e!343764))

(declare-fun res!244307 () Bool)

(assert (=> d!198902 (=> (not res!244307) (not e!343764))))

(assert (=> d!198902 (= res!244307 (= (content!984 lt!240267) ((_ map or) (content!984 input!2705) (content!984 suffix!1342))))))

(assert (=> d!198902 (= lt!240267 e!343765)))

(declare-fun c!106528 () Bool)

(assert (=> d!198902 (= c!106528 ((_ is Nil!5616) input!2705))))

(assert (=> d!198902 (= (++!1573 input!2705 suffix!1342) lt!240267)))

(declare-fun b!568680 () Bool)

(declare-fun res!244308 () Bool)

(assert (=> b!568680 (=> (not res!244308) (not e!343764))))

(assert (=> b!568680 (= res!244308 (= (size!4473 lt!240267) (+ (size!4473 input!2705) (size!4473 suffix!1342))))))

(declare-fun b!568678 () Bool)

(assert (=> b!568678 (= e!343765 suffix!1342)))

(assert (= (and d!198902 c!106528) b!568678))

(assert (= (and d!198902 (not c!106528)) b!568679))

(assert (= (and d!198902 res!244307) b!568680))

(assert (= (and b!568680 res!244308) b!568681))

(declare-fun m!823011 () Bool)

(assert (=> b!568679 m!823011))

(declare-fun m!823013 () Bool)

(assert (=> d!198902 m!823013))

(declare-fun m!823015 () Bool)

(assert (=> d!198902 m!823015))

(assert (=> d!198902 m!822351))

(declare-fun m!823017 () Bool)

(assert (=> b!568680 m!823017))

(assert (=> b!568680 m!822803))

(assert (=> b!568680 m!822355))

(assert (=> b!568158 d!198902))

(declare-fun b!568682 () Bool)

(declare-fun res!244312 () Bool)

(declare-fun e!343766 () Bool)

(assert (=> b!568682 (=> (not res!244312) (not e!343766))))

(declare-fun lt!240268 () Option!1436)

(assert (=> b!568682 (= res!244312 (= (++!1573 (list!2329 (charsOf!714 (_1!3566 (get!2142 lt!240268)))) (_2!3566 (get!2142 lt!240268))) input!2705))))

(declare-fun b!568683 () Bool)

(declare-fun res!244313 () Bool)

(assert (=> b!568683 (=> (not res!244313) (not e!343766))))

(assert (=> b!568683 (= res!244313 (= (value!35789 (_1!3566 (get!2142 lt!240268))) (apply!1350 (transformation!1085 (rule!1825 (_1!3566 (get!2142 lt!240268)))) (seqFromList!1273 (originalCharacters!1124 (_1!3566 (get!2142 lt!240268)))))))))

(declare-fun b!568684 () Bool)

(declare-fun res!244314 () Bool)

(assert (=> b!568684 (=> (not res!244314) (not e!343766))))

(assert (=> b!568684 (= res!244314 (= (list!2329 (charsOf!714 (_1!3566 (get!2142 lt!240268)))) (originalCharacters!1124 (_1!3566 (get!2142 lt!240268)))))))

(declare-fun b!568685 () Bool)

(declare-fun e!343767 () Option!1436)

(declare-fun call!39363 () Option!1436)

(assert (=> b!568685 (= e!343767 call!39363)))

(declare-fun d!198904 () Bool)

(declare-fun e!343768 () Bool)

(assert (=> d!198904 e!343768))

(declare-fun res!244311 () Bool)

(assert (=> d!198904 (=> res!244311 e!343768)))

(assert (=> d!198904 (= res!244311 (isEmpty!4056 lt!240268))))

(assert (=> d!198904 (= lt!240268 e!343767)))

(declare-fun c!106529 () Bool)

(assert (=> d!198904 (= c!106529 (and ((_ is Cons!5618) rules!3103) ((_ is Nil!5618) (t!76407 rules!3103))))))

(declare-fun lt!240272 () Unit!10050)

(declare-fun lt!240271 () Unit!10050)

(assert (=> d!198904 (= lt!240272 lt!240271)))

(assert (=> d!198904 (isPrefix!719 input!2705 input!2705)))

(assert (=> d!198904 (= lt!240271 (lemmaIsPrefixRefl!457 input!2705 input!2705))))

(assert (=> d!198904 (rulesValidInductive!384 thiss!22590 rules!3103)))

(assert (=> d!198904 (= (maxPrefix!669 thiss!22590 rules!3103 input!2705) lt!240268)))

(declare-fun b!568686 () Bool)

(assert (=> b!568686 (= e!343766 (contains!1317 rules!3103 (rule!1825 (_1!3566 (get!2142 lt!240268)))))))

(declare-fun b!568687 () Bool)

(declare-fun res!244315 () Bool)

(assert (=> b!568687 (=> (not res!244315) (not e!343766))))

(assert (=> b!568687 (= res!244315 (matchR!566 (regex!1085 (rule!1825 (_1!3566 (get!2142 lt!240268)))) (list!2329 (charsOf!714 (_1!3566 (get!2142 lt!240268))))))))

(declare-fun b!568688 () Bool)

(declare-fun res!244309 () Bool)

(assert (=> b!568688 (=> (not res!244309) (not e!343766))))

(assert (=> b!568688 (= res!244309 (< (size!4473 (_2!3566 (get!2142 lt!240268))) (size!4473 input!2705)))))

(declare-fun bm!39358 () Bool)

(assert (=> bm!39358 (= call!39363 (maxPrefixOneRule!370 thiss!22590 (h!11019 rules!3103) input!2705))))

(declare-fun b!568689 () Bool)

(declare-fun lt!240269 () Option!1436)

(declare-fun lt!240270 () Option!1436)

(assert (=> b!568689 (= e!343767 (ite (and ((_ is None!1435) lt!240269) ((_ is None!1435) lt!240270)) None!1435 (ite ((_ is None!1435) lt!240270) lt!240269 (ite ((_ is None!1435) lt!240269) lt!240270 (ite (>= (size!4472 (_1!3566 (v!16284 lt!240269))) (size!4472 (_1!3566 (v!16284 lt!240270)))) lt!240269 lt!240270)))))))

(assert (=> b!568689 (= lt!240269 call!39363)))

(assert (=> b!568689 (= lt!240270 (maxPrefix!669 thiss!22590 (t!76407 rules!3103) input!2705))))

(declare-fun b!568690 () Bool)

(assert (=> b!568690 (= e!343768 e!343766)))

(declare-fun res!244310 () Bool)

(assert (=> b!568690 (=> (not res!244310) (not e!343766))))

(assert (=> b!568690 (= res!244310 (isDefined!1247 lt!240268))))

(assert (= (and d!198904 c!106529) b!568685))

(assert (= (and d!198904 (not c!106529)) b!568689))

(assert (= (or b!568685 b!568689) bm!39358))

(assert (= (and d!198904 (not res!244311)) b!568690))

(assert (= (and b!568690 res!244310) b!568684))

(assert (= (and b!568684 res!244314) b!568688))

(assert (= (and b!568688 res!244309) b!568682))

(assert (= (and b!568682 res!244312) b!568683))

(assert (= (and b!568683 res!244313) b!568687))

(assert (= (and b!568687 res!244315) b!568686))

(declare-fun m!823019 () Bool)

(assert (=> b!568688 m!823019))

(declare-fun m!823021 () Bool)

(assert (=> b!568688 m!823021))

(assert (=> b!568688 m!822803))

(declare-fun m!823023 () Bool)

(assert (=> bm!39358 m!823023))

(assert (=> b!568686 m!823019))

(declare-fun m!823025 () Bool)

(assert (=> b!568686 m!823025))

(assert (=> b!568682 m!823019))

(declare-fun m!823027 () Bool)

(assert (=> b!568682 m!823027))

(assert (=> b!568682 m!823027))

(declare-fun m!823029 () Bool)

(assert (=> b!568682 m!823029))

(assert (=> b!568682 m!823029))

(declare-fun m!823031 () Bool)

(assert (=> b!568682 m!823031))

(assert (=> b!568683 m!823019))

(declare-fun m!823033 () Bool)

(assert (=> b!568683 m!823033))

(assert (=> b!568683 m!823033))

(declare-fun m!823035 () Bool)

(assert (=> b!568683 m!823035))

(declare-fun m!823037 () Bool)

(assert (=> b!568689 m!823037))

(assert (=> b!568684 m!823019))

(assert (=> b!568684 m!823027))

(assert (=> b!568684 m!823027))

(assert (=> b!568684 m!823029))

(declare-fun m!823039 () Bool)

(assert (=> d!198904 m!823039))

(assert (=> d!198904 m!822271))

(assert (=> d!198904 m!822285))

(assert (=> d!198904 m!823005))

(assert (=> b!568687 m!823019))

(assert (=> b!568687 m!823027))

(assert (=> b!568687 m!823027))

(assert (=> b!568687 m!823029))

(assert (=> b!568687 m!823029))

(declare-fun m!823041 () Bool)

(assert (=> b!568687 m!823041))

(declare-fun m!823043 () Bool)

(assert (=> b!568690 m!823043))

(assert (=> b!568180 d!198904))

(declare-fun d!198906 () Bool)

(assert (=> d!198906 (= (inv!7054 (tag!1347 (rule!1825 token!491))) (= (mod (str.len (value!35788 (tag!1347 (rule!1825 token!491)))) 2) 0))))

(assert (=> b!568157 d!198906))

(declare-fun d!198908 () Bool)

(declare-fun res!244316 () Bool)

(declare-fun e!343769 () Bool)

(assert (=> d!198908 (=> (not res!244316) (not e!343769))))

(assert (=> d!198908 (= res!244316 (semiInverseModEq!415 (toChars!1799 (transformation!1085 (rule!1825 token!491))) (toValue!1940 (transformation!1085 (rule!1825 token!491)))))))

(assert (=> d!198908 (= (inv!7057 (transformation!1085 (rule!1825 token!491))) e!343769)))

(declare-fun b!568691 () Bool)

(assert (=> b!568691 (= e!343769 (equivClasses!398 (toChars!1799 (transformation!1085 (rule!1825 token!491))) (toValue!1940 (transformation!1085 (rule!1825 token!491)))))))

(assert (= (and d!198908 res!244316) b!568691))

(assert (=> d!198908 m!822903))

(assert (=> b!568691 m!822905))

(assert (=> b!568157 d!198908))

(declare-fun d!198910 () Bool)

(declare-fun lt!240273 () Int)

(assert (=> d!198910 (>= lt!240273 0)))

(declare-fun e!343770 () Int)

(assert (=> d!198910 (= lt!240273 e!343770)))

(declare-fun c!106530 () Bool)

(assert (=> d!198910 (= c!106530 ((_ is Nil!5616) (originalCharacters!1124 (_1!3566 (v!16284 lt!240054)))))))

(assert (=> d!198910 (= (size!4473 (originalCharacters!1124 (_1!3566 (v!16284 lt!240054)))) lt!240273)))

(declare-fun b!568692 () Bool)

(assert (=> b!568692 (= e!343770 0)))

(declare-fun b!568693 () Bool)

(assert (=> b!568693 (= e!343770 (+ 1 (size!4473 (t!76405 (originalCharacters!1124 (_1!3566 (v!16284 lt!240054)))))))))

(assert (= (and d!198910 c!106530) b!568692))

(assert (= (and d!198910 (not c!106530)) b!568693))

(declare-fun m!823045 () Bool)

(assert (=> b!568693 m!823045))

(assert (=> b!568178 d!198910))

(declare-fun d!198912 () Bool)

(assert (=> d!198912 (= (isDefined!1247 lt!240054) (not (isEmpty!4056 lt!240054)))))

(declare-fun bs!68800 () Bool)

(assert (= bs!68800 d!198912))

(declare-fun m!823047 () Bool)

(assert (=> bs!68800 m!823047))

(assert (=> b!568179 d!198912))

(declare-fun d!198914 () Bool)

(assert (=> d!198914 (= (list!2329 (charsOf!714 token!491)) (list!2331 (c!106452 (charsOf!714 token!491))))))

(declare-fun bs!68801 () Bool)

(assert (= bs!68801 d!198914))

(declare-fun m!823049 () Bool)

(assert (=> bs!68801 m!823049))

(assert (=> b!568168 d!198914))

(declare-fun d!198916 () Bool)

(declare-fun lt!240274 () BalanceConc!3612)

(assert (=> d!198916 (= (list!2329 lt!240274) (originalCharacters!1124 token!491))))

(assert (=> d!198916 (= lt!240274 (dynLambda!3238 (toChars!1799 (transformation!1085 (rule!1825 token!491))) (value!35789 token!491)))))

(assert (=> d!198916 (= (charsOf!714 token!491) lt!240274)))

(declare-fun b_lambda!21897 () Bool)

(assert (=> (not b_lambda!21897) (not d!198916)))

(assert (=> d!198916 t!76465))

(declare-fun b_and!55411 () Bool)

(assert (= b_and!55407 (and (=> t!76465 result!55312) b_and!55411)))

(assert (=> d!198916 t!76467))

(declare-fun b_and!55413 () Bool)

(assert (= b_and!55409 (and (=> t!76467 result!55314) b_and!55413)))

(declare-fun m!823051 () Bool)

(assert (=> d!198916 m!823051))

(assert (=> d!198916 m!822969))

(assert (=> b!568168 d!198916))

(declare-fun b!568706 () Bool)

(declare-fun e!343773 () Bool)

(declare-fun tp!179072 () Bool)

(assert (=> b!568706 (= e!343773 tp!179072)))

(declare-fun b!568704 () Bool)

(assert (=> b!568704 (= e!343773 tp_is_empty!3193)))

(assert (=> b!568177 (= tp!179006 e!343773)))

(declare-fun b!568705 () Bool)

(declare-fun tp!179071 () Bool)

(declare-fun tp!179069 () Bool)

(assert (=> b!568705 (= e!343773 (and tp!179071 tp!179069))))

(declare-fun b!568707 () Bool)

(declare-fun tp!179068 () Bool)

(declare-fun tp!179070 () Bool)

(assert (=> b!568707 (= e!343773 (and tp!179068 tp!179070))))

(assert (= (and b!568177 ((_ is ElementMatch!1419) (regex!1085 (h!11019 rules!3103)))) b!568704))

(assert (= (and b!568177 ((_ is Concat!2528) (regex!1085 (h!11019 rules!3103)))) b!568705))

(assert (= (and b!568177 ((_ is Star!1419) (regex!1085 (h!11019 rules!3103)))) b!568706))

(assert (= (and b!568177 ((_ is Union!1419) (regex!1085 (h!11019 rules!3103)))) b!568707))

(declare-fun b!568712 () Bool)

(declare-fun e!343776 () Bool)

(declare-fun tp!179075 () Bool)

(assert (=> b!568712 (= e!343776 (and tp_is_empty!3193 tp!179075))))

(assert (=> b!568166 (= tp!179000 e!343776)))

(assert (= (and b!568166 ((_ is Cons!5616) (t!76405 input!2705))) b!568712))

(declare-fun b!568723 () Bool)

(declare-fun b_free!15889 () Bool)

(declare-fun b_next!15905 () Bool)

(assert (=> b!568723 (= b_free!15889 (not b_next!15905))))

(declare-fun tb!49399 () Bool)

(declare-fun t!76469 () Bool)

(assert (=> (and b!568723 (= (toValue!1940 (transformation!1085 (h!11019 (t!76407 rules!3103)))) (toValue!1940 (transformation!1085 (rule!1825 (_1!3566 (v!16284 lt!240054)))))) t!76469) tb!49399))

(declare-fun result!55322 () Bool)

(assert (= result!55322 result!55276))

(assert (=> d!198712 t!76469))

(declare-fun tb!49401 () Bool)

(declare-fun t!76471 () Bool)

(assert (=> (and b!568723 (= (toValue!1940 (transformation!1085 (h!11019 (t!76407 rules!3103)))) (toValue!1940 (transformation!1085 (rule!1825 token!491)))) t!76471) tb!49401))

(declare-fun result!55324 () Bool)

(assert (= result!55324 result!55304))

(assert (=> d!198822 t!76471))

(assert (=> d!198826 t!76471))

(assert (=> d!198888 t!76469))

(declare-fun tp!179084 () Bool)

(declare-fun b_and!55415 () Bool)

(assert (=> b!568723 (= tp!179084 (and (=> t!76469 result!55322) (=> t!76471 result!55324) b_and!55415))))

(declare-fun b_free!15891 () Bool)

(declare-fun b_next!15907 () Bool)

(assert (=> b!568723 (= b_free!15891 (not b_next!15907))))

(declare-fun t!76473 () Bool)

(declare-fun tb!49403 () Bool)

(assert (=> (and b!568723 (= (toChars!1799 (transformation!1085 (h!11019 (t!76407 rules!3103)))) (toChars!1799 (transformation!1085 (rule!1825 token!491)))) t!76473) tb!49403))

(declare-fun result!55326 () Bool)

(assert (= result!55326 result!55312))

(assert (=> b!568645 t!76473))

(declare-fun tb!49405 () Bool)

(declare-fun t!76475 () Bool)

(assert (=> (and b!568723 (= (toChars!1799 (transformation!1085 (h!11019 (t!76407 rules!3103)))) (toChars!1799 (transformation!1085 (rule!1825 token!491)))) t!76475) tb!49405))

(declare-fun result!55328 () Bool)

(assert (= result!55328 result!55300))

(assert (=> d!198822 t!76475))

(declare-fun tb!49407 () Bool)

(declare-fun t!76477 () Bool)

(assert (=> (and b!568723 (= (toChars!1799 (transformation!1085 (h!11019 (t!76407 rules!3103)))) (toChars!1799 (transformation!1085 (rule!1825 (_1!3566 (v!16284 lt!240054)))))) t!76477) tb!49407))

(declare-fun result!55330 () Bool)

(assert (= result!55330 result!55270))

(assert (=> d!198712 t!76477))

(declare-fun tb!49409 () Bool)

(declare-fun t!76479 () Bool)

(assert (=> (and b!568723 (= (toChars!1799 (transformation!1085 (h!11019 (t!76407 rules!3103)))) (toChars!1799 (transformation!1085 (rule!1825 (_1!3566 (v!16284 lt!240054)))))) t!76479) tb!49409))

(declare-fun result!55332 () Bool)

(assert (= result!55332 result!55308))

(assert (=> d!198852 t!76479))

(assert (=> d!198916 t!76473))

(declare-fun b_and!55417 () Bool)

(declare-fun tp!179087 () Bool)

(assert (=> b!568723 (= tp!179087 (and (=> t!76473 result!55326) (=> t!76477 result!55330) (=> t!76475 result!55328) (=> t!76479 result!55332) b_and!55417))))

(declare-fun e!343786 () Bool)

(assert (=> b!568723 (= e!343786 (and tp!179084 tp!179087))))

(declare-fun tp!179086 () Bool)

(declare-fun b!568722 () Bool)

(declare-fun e!343785 () Bool)

(assert (=> b!568722 (= e!343785 (and tp!179086 (inv!7054 (tag!1347 (h!11019 (t!76407 rules!3103)))) (inv!7057 (transformation!1085 (h!11019 (t!76407 rules!3103)))) e!343786))))

(declare-fun b!568721 () Bool)

(declare-fun e!343788 () Bool)

(declare-fun tp!179085 () Bool)

(assert (=> b!568721 (= e!343788 (and e!343785 tp!179085))))

(assert (=> b!568151 (= tp!179007 e!343788)))

(assert (= b!568722 b!568723))

(assert (= b!568721 b!568722))

(assert (= (and b!568151 ((_ is Cons!5618) (t!76407 rules!3103))) b!568721))

(declare-fun m!823053 () Bool)

(assert (=> b!568722 m!823053))

(declare-fun m!823055 () Bool)

(assert (=> b!568722 m!823055))

(declare-fun b!568724 () Bool)

(declare-fun e!343789 () Bool)

(declare-fun tp!179088 () Bool)

(assert (=> b!568724 (= e!343789 (and tp_is_empty!3193 tp!179088))))

(assert (=> b!568153 (= tp!179003 e!343789)))

(assert (= (and b!568153 ((_ is Cons!5616) (t!76405 suffix!1342))) b!568724))

(declare-fun b!568725 () Bool)

(declare-fun e!343790 () Bool)

(declare-fun tp!179089 () Bool)

(assert (=> b!568725 (= e!343790 (and tp_is_empty!3193 tp!179089))))

(assert (=> b!568164 (= tp!179001 e!343790)))

(assert (= (and b!568164 ((_ is Cons!5616) (originalCharacters!1124 token!491))) b!568725))

(declare-fun b!568728 () Bool)

(declare-fun e!343791 () Bool)

(declare-fun tp!179094 () Bool)

(assert (=> b!568728 (= e!343791 tp!179094)))

(declare-fun b!568726 () Bool)

(assert (=> b!568726 (= e!343791 tp_is_empty!3193)))

(assert (=> b!568157 (= tp!178999 e!343791)))

(declare-fun b!568727 () Bool)

(declare-fun tp!179093 () Bool)

(declare-fun tp!179091 () Bool)

(assert (=> b!568727 (= e!343791 (and tp!179093 tp!179091))))

(declare-fun b!568729 () Bool)

(declare-fun tp!179090 () Bool)

(declare-fun tp!179092 () Bool)

(assert (=> b!568729 (= e!343791 (and tp!179090 tp!179092))))

(assert (= (and b!568157 ((_ is ElementMatch!1419) (regex!1085 (rule!1825 token!491)))) b!568726))

(assert (= (and b!568157 ((_ is Concat!2528) (regex!1085 (rule!1825 token!491)))) b!568727))

(assert (= (and b!568157 ((_ is Star!1419) (regex!1085 (rule!1825 token!491)))) b!568728))

(assert (= (and b!568157 ((_ is Union!1419) (regex!1085 (rule!1825 token!491)))) b!568729))

(declare-fun b_lambda!21899 () Bool)

(assert (= b_lambda!21885 (or (and b!568174 b_free!15879 (= (toChars!1799 (transformation!1085 (h!11019 rules!3103))) (toChars!1799 (transformation!1085 (rule!1825 token!491))))) (and b!568154 b_free!15883) (and b!568723 b_free!15891 (= (toChars!1799 (transformation!1085 (h!11019 (t!76407 rules!3103)))) (toChars!1799 (transformation!1085 (rule!1825 token!491))))) b_lambda!21899)))

(declare-fun b_lambda!21901 () Bool)

(assert (= b_lambda!21897 (or (and b!568174 b_free!15879 (= (toChars!1799 (transformation!1085 (h!11019 rules!3103))) (toChars!1799 (transformation!1085 (rule!1825 token!491))))) (and b!568154 b_free!15883) (and b!568723 b_free!15891 (= (toChars!1799 (transformation!1085 (h!11019 (t!76407 rules!3103)))) (toChars!1799 (transformation!1085 (rule!1825 token!491))))) b_lambda!21901)))

(declare-fun b_lambda!21903 () Bool)

(assert (= b_lambda!21895 (or (and b!568174 b_free!15879 (= (toChars!1799 (transformation!1085 (h!11019 rules!3103))) (toChars!1799 (transformation!1085 (rule!1825 token!491))))) (and b!568154 b_free!15883) (and b!568723 b_free!15891 (= (toChars!1799 (transformation!1085 (h!11019 (t!76407 rules!3103)))) (toChars!1799 (transformation!1085 (rule!1825 token!491))))) b_lambda!21903)))

(declare-fun b_lambda!21905 () Bool)

(assert (= b_lambda!21887 (or (and b!568174 b_free!15877 (= (toValue!1940 (transformation!1085 (h!11019 rules!3103))) (toValue!1940 (transformation!1085 (rule!1825 token!491))))) (and b!568154 b_free!15881) (and b!568723 b_free!15889 (= (toValue!1940 (transformation!1085 (h!11019 (t!76407 rules!3103)))) (toValue!1940 (transformation!1085 (rule!1825 token!491))))) b_lambda!21905)))

(declare-fun b_lambda!21907 () Bool)

(assert (= b_lambda!21889 (or (and b!568174 b_free!15877 (= (toValue!1940 (transformation!1085 (h!11019 rules!3103))) (toValue!1940 (transformation!1085 (rule!1825 token!491))))) (and b!568154 b_free!15881) (and b!568723 b_free!15889 (= (toValue!1940 (transformation!1085 (h!11019 (t!76407 rules!3103)))) (toValue!1940 (transformation!1085 (rule!1825 token!491))))) b_lambda!21907)))

(check-sat (not tb!49391) (not b_next!15899) (not b!568453) (not b!568650) (not b_next!15897) (not bm!39358) (not b_lambda!21907) (not b!568266) (not b_next!15895) (not b!568670) (not b_lambda!21891) tp_is_empty!3193 (not b!568626) (not b!568444) (not b!568621) (not b!568688) (not b!568563) (not d!198914) (not d!198876) (not b_next!15893) (not d!198838) (not d!198882) (not b!568683) (not b!568706) (not d!198892) (not d!198858) (not b!568571) (not b!568693) (not b!568729) (not b!568568) (not b!568251) (not b!568671) (not d!198912) (not b_lambda!21871) (not b!568413) b_and!55413 (not b!568707) (not d!198832) (not b!568630) (not b!568640) (not d!198842) (not d!198852) (not b!568727) (not b!568705) (not d!198856) b_and!55411 (not b!568239) (not b_next!15905) (not b_lambda!21905) (not d!198862) (not b!568682) (not d!198796) (not b!568645) (not d!198878) (not b!568721) (not tb!49363) (not b!568636) (not d!198824) (not b!568673) (not b!568622) (not d!198830) (not b!568589) b_and!55415 (not b!568728) b_and!55403 (not b_lambda!21899) (not b!568638) (not tb!49383) (not d!198794) (not b!568577) (not d!198712) (not b!568593) (not d!198822) (not d!198916) (not b!568724) (not b!568616) (not d!198908) (not b!568634) (not b!568561) (not b!568263) (not b!568610) (not bm!39357) (not d!198864) (not b!568565) (not d!198840) (not b!568677) (not b!568675) (not b!568625) (not tb!49367) (not b!568712) b_and!55417 (not b!568456) (not b!568646) (not b!568690) (not d!198902) (not b!568446) (not b_next!15907) (not b!568455) (not b!568603) (not tb!49395) (not b!568631) (not b!568605) (not d!198834) (not b_lambda!21901) (not b!568614) (not b!568238) (not b!568686) (not d!198682) (not b!568576) (not b!568674) (not b!568612) (not b_lambda!21893) (not b!568585) (not b!568573) (not b!568629) (not b!568615) (not b!568647) (not b!568591) (not bm!39353) (not b!568569) (not d!198880) (not d!198900) (not b!568691) (not b!568562) (not b_lambda!21869) (not d!198894) (not b!568676) (not b!568687) (not b!568264) (not d!198886) (not b!568451) b_and!55405 (not b!568689) (not b!568580) (not b!568679) (not d!198904) (not b!568579) (not b!568574) (not d!198898) (not b!568604) (not d!198854) (not b!568564) (not b!568633) (not b!568722) (not b!568635) (not b!568575) (not d!198884) (not d!198792) (not d!198868) (not d!198890) (not d!198828) (not b!568684) (not b!568725) (not b!568572) (not d!198896) (not b_lambda!21903) (not b!568619) (not b!568680) (not b!568669) (not b!568623) (not b!568566) (not d!198820) (not d!198850) (not d!198870) (not tb!49387))
(check-sat (not b_next!15899) (not b_next!15893) b_and!55413 b_and!55417 (not b_next!15907) b_and!55405 (not b_next!15897) (not b_next!15895) b_and!55411 (not b_next!15905) b_and!55415 b_and!55403)
