; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!224896 () Bool)

(assert start!224896)

(declare-fun b!2291253 () Bool)

(declare-fun b_free!68877 () Bool)

(declare-fun b_next!69581 () Bool)

(assert (=> b!2291253 (= b_free!68877 (not b_next!69581))))

(declare-fun tp!726492 () Bool)

(declare-fun b_and!181873 () Bool)

(assert (=> b!2291253 (= tp!726492 b_and!181873)))

(declare-fun b_free!68879 () Bool)

(declare-fun b_next!69583 () Bool)

(assert (=> b!2291253 (= b_free!68879 (not b_next!69583))))

(declare-fun tp!726488 () Bool)

(declare-fun b_and!181875 () Bool)

(assert (=> b!2291253 (= tp!726488 b_and!181875)))

(declare-fun b!2291260 () Bool)

(declare-fun b_free!68881 () Bool)

(declare-fun b_next!69585 () Bool)

(assert (=> b!2291260 (= b_free!68881 (not b_next!69585))))

(declare-fun tp!726497 () Bool)

(declare-fun b_and!181877 () Bool)

(assert (=> b!2291260 (= tp!726497 b_and!181877)))

(declare-fun b_free!68883 () Bool)

(declare-fun b_next!69587 () Bool)

(assert (=> b!2291260 (= b_free!68883 (not b_next!69587))))

(declare-fun tp!726485 () Bool)

(declare-fun b_and!181879 () Bool)

(assert (=> b!2291260 (= tp!726485 b_and!181879)))

(declare-fun b!2291255 () Bool)

(declare-fun b_free!68885 () Bool)

(declare-fun b_next!69589 () Bool)

(assert (=> b!2291255 (= b_free!68885 (not b_next!69589))))

(declare-fun tp!726494 () Bool)

(declare-fun b_and!181881 () Bool)

(assert (=> b!2291255 (= tp!726494 b_and!181881)))

(declare-fun b_free!68887 () Bool)

(declare-fun b_next!69591 () Bool)

(assert (=> b!2291255 (= b_free!68887 (not b_next!69591))))

(declare-fun tp!726496 () Bool)

(declare-fun b_and!181883 () Bool)

(assert (=> b!2291255 (= tp!726496 b_and!181883)))

(declare-fun b!2291243 () Bool)

(declare-fun b_free!68889 () Bool)

(declare-fun b_next!69593 () Bool)

(assert (=> b!2291243 (= b_free!68889 (not b_next!69593))))

(declare-fun tp!726486 () Bool)

(declare-fun b_and!181885 () Bool)

(assert (=> b!2291243 (= tp!726486 b_and!181885)))

(declare-fun b_free!68891 () Bool)

(declare-fun b_next!69595 () Bool)

(assert (=> b!2291243 (= b_free!68891 (not b_next!69595))))

(declare-fun tp!726499 () Bool)

(declare-fun b_and!181887 () Bool)

(assert (=> b!2291243 (= tp!726499 b_and!181887)))

(declare-fun b!2291241 () Bool)

(declare-fun e!1468219 () Bool)

(declare-fun e!1468212 () Bool)

(assert (=> b!2291241 (= e!1468219 e!1468212)))

(declare-fun res!979848 () Bool)

(assert (=> b!2291241 (=> res!979848 e!1468212)))

(declare-datatypes ((C!13576 0))(
  ( (C!13577 (val!7836 Int)) )
))
(declare-datatypes ((List!27379 0))(
  ( (Nil!27285) (Cons!27285 (h!32686 C!13576) (t!204671 List!27379)) )
))
(declare-fun lt!850069 () List!27379)

(declare-fun input!1722 () List!27379)

(declare-fun isPrefix!2357 (List!27379 List!27379) Bool)

(assert (=> b!2291241 (= res!979848 (not (isPrefix!2357 lt!850069 input!1722)))))

(declare-datatypes ((List!27380 0))(
  ( (Nil!27286) (Cons!27286 (h!32687 (_ BitVec 16)) (t!204672 List!27380)) )
))
(declare-datatypes ((TokenValue!4529 0))(
  ( (FloatLiteralValue!9058 (text!32148 List!27380)) (TokenValueExt!4528 (__x!18118 Int)) (Broken!22645 (value!138253 List!27380)) (Object!4622) (End!4529) (Def!4529) (Underscore!4529) (Match!4529) (Else!4529) (Error!4529) (Case!4529) (If!4529) (Extends!4529) (Abstract!4529) (Class!4529) (Val!4529) (DelimiterValue!9058 (del!4589 List!27380)) (KeywordValue!4535 (value!138254 List!27380)) (CommentValue!9058 (value!138255 List!27380)) (WhitespaceValue!9058 (value!138256 List!27380)) (IndentationValue!4529 (value!138257 List!27380)) (String!29748) (Int32!4529) (Broken!22646 (value!138258 List!27380)) (Boolean!4530) (Unit!40163) (OperatorValue!4532 (op!4589 List!27380)) (IdentifierValue!9058 (value!138259 List!27380)) (IdentifierValue!9059 (value!138260 List!27380)) (WhitespaceValue!9059 (value!138261 List!27380)) (True!9058) (False!9058) (Broken!22647 (value!138262 List!27380)) (Broken!22648 (value!138263 List!27380)) (True!9059) (RightBrace!4529) (RightBracket!4529) (Colon!4529) (Null!4529) (Comma!4529) (LeftBracket!4529) (False!9059) (LeftBrace!4529) (ImaginaryLiteralValue!4529 (text!32149 List!27380)) (StringLiteralValue!13587 (value!138264 List!27380)) (EOFValue!4529 (value!138265 List!27380)) (IdentValue!4529 (value!138266 List!27380)) (DelimiterValue!9059 (value!138267 List!27380)) (DedentValue!4529 (value!138268 List!27380)) (NewLineValue!4529 (value!138269 List!27380)) (IntegerValue!13587 (value!138270 (_ BitVec 32)) (text!32150 List!27380)) (IntegerValue!13588 (value!138271 Int) (text!32151 List!27380)) (Times!4529) (Or!4529) (Equal!4529) (Minus!4529) (Broken!22649 (value!138272 List!27380)) (And!4529) (Div!4529) (LessEqual!4529) (Mod!4529) (Concat!11244) (Not!4529) (Plus!4529) (SpaceValue!4529 (value!138273 List!27380)) (IntegerValue!13589 (value!138274 Int) (text!32152 List!27380)) (StringLiteralValue!13588 (text!32153 List!27380)) (FloatLiteralValue!9059 (text!32154 List!27380)) (BytesLiteralValue!4529 (value!138275 List!27380)) (CommentValue!9059 (value!138276 List!27380)) (StringLiteralValue!13589 (value!138277 List!27380)) (ErrorTokenValue!4529 (msg!4590 List!27380)) )
))
(declare-datatypes ((IArray!17769 0))(
  ( (IArray!17770 (innerList!8942 List!27379)) )
))
(declare-datatypes ((Conc!8882 0))(
  ( (Node!8882 (left!20682 Conc!8882) (right!21012 Conc!8882) (csize!17994 Int) (cheight!9093 Int)) (Leaf!13051 (xs!11824 IArray!17769) (csize!17995 Int)) (Empty!8882) )
))
(declare-datatypes ((BalanceConc!17492 0))(
  ( (BalanceConc!17493 (c!363262 Conc!8882)) )
))
(declare-datatypes ((Regex!6715 0))(
  ( (ElementMatch!6715 (c!363263 C!13576)) (Concat!11245 (regOne!13942 Regex!6715) (regTwo!13942 Regex!6715)) (EmptyExpr!6715) (Star!6715 (reg!7044 Regex!6715)) (EmptyLang!6715) (Union!6715 (regOne!13943 Regex!6715) (regTwo!13943 Regex!6715)) )
))
(declare-datatypes ((String!29749 0))(
  ( (String!29750 (value!138278 String)) )
))
(declare-datatypes ((TokenValueInjection!8598 0))(
  ( (TokenValueInjection!8599 (toValue!6157 Int) (toChars!6016 Int)) )
))
(declare-datatypes ((Rule!8534 0))(
  ( (Rule!8535 (regex!4367 Regex!6715) (tag!4857 String!29749) (isSeparator!4367 Bool) (transformation!4367 TokenValueInjection!8598)) )
))
(declare-datatypes ((Token!8212 0))(
  ( (Token!8213 (value!138279 TokenValue!4529) (rule!6703 Rule!8534) (size!21480 Int) (originalCharacters!5137 List!27379)) )
))
(declare-datatypes ((tuple2!27102 0))(
  ( (tuple2!27103 (_1!16061 Token!8212) (_2!16061 List!27379)) )
))
(declare-datatypes ((Option!5357 0))(
  ( (None!5356) (Some!5356 (v!30438 tuple2!27102)) )
))
(declare-fun lt!850054 () Option!5357)

(declare-fun lt!850061 () Token!8212)

(declare-fun lt!850065 () tuple2!27102)

(assert (=> b!2291241 (= lt!850054 (Some!5356 (tuple2!27103 lt!850061 (_2!16061 lt!850065))))))

(declare-datatypes ((LexerInterface!3964 0))(
  ( (LexerInterfaceExt!3961 (__x!18119 Int)) (Lexer!3962) )
))
(declare-fun thiss!16613 () LexerInterface!3964)

(declare-fun r!2363 () Rule!8534)

(declare-fun maxPrefixOneRule!1398 (LexerInterface!3964 Rule!8534 List!27379) Option!5357)

(assert (=> b!2291241 (= lt!850054 (maxPrefixOneRule!1398 thiss!16613 r!2363 input!1722))))

(declare-fun lt!850055 () Int)

(declare-fun lt!850059 () BalanceConc!17492)

(declare-fun apply!6639 (TokenValueInjection!8598 BalanceConc!17492) TokenValue!4529)

(assert (=> b!2291241 (= lt!850061 (Token!8213 (apply!6639 (transformation!4367 r!2363) lt!850059) r!2363 lt!850055 lt!850069))))

(declare-fun seqFromList!3071 (List!27379) BalanceConc!17492)

(assert (=> b!2291241 (= lt!850059 (seqFromList!3071 lt!850069))))

(declare-datatypes ((Unit!40164 0))(
  ( (Unit!40165) )
))
(declare-fun lt!850056 () Unit!40164)

(declare-datatypes ((List!27381 0))(
  ( (Nil!27287) (Cons!27287 (h!32688 Rule!8534) (t!204673 List!27381)) )
))
(declare-fun rules!1750 () List!27381)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!591 (LexerInterface!3964 List!27381 List!27379 List!27379 List!27379 Rule!8534) Unit!40164)

(assert (=> b!2291241 (= lt!850056 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!591 thiss!16613 rules!1750 lt!850069 input!1722 (_2!16061 lt!850065) r!2363))))

(declare-fun b!2291242 () Bool)

(declare-fun e!1468213 () Bool)

(declare-fun tp_is_empty!10651 () Bool)

(declare-fun tp!726495 () Bool)

(assert (=> b!2291242 (= e!1468213 (and tp_is_empty!10651 tp!726495))))

(declare-fun e!1468218 () Bool)

(assert (=> b!2291243 (= e!1468218 (and tp!726486 tp!726499))))

(declare-fun b!2291244 () Bool)

(declare-fun res!979837 () Bool)

(declare-fun e!1468214 () Bool)

(assert (=> b!2291244 (=> res!979837 e!1468214)))

(declare-datatypes ((List!27382 0))(
  ( (Nil!27288) (Cons!27288 (h!32689 Token!8212) (t!204674 List!27382)) )
))
(declare-fun tokens!456 () List!27382)

(get-info :version)

(assert (=> b!2291244 (= res!979837 ((_ is Nil!27288) tokens!456))))

(declare-fun b!2291245 () Bool)

(declare-fun e!1468206 () Bool)

(declare-fun e!1468228 () Bool)

(assert (=> b!2291245 (= e!1468206 e!1468228)))

(declare-fun res!979844 () Bool)

(assert (=> b!2291245 (=> (not res!979844) (not e!1468228))))

(declare-fun e!1468208 () Bool)

(assert (=> b!2291245 (= res!979844 e!1468208)))

(declare-fun res!979850 () Bool)

(assert (=> b!2291245 (=> res!979850 e!1468208)))

(declare-fun lt!850072 () Bool)

(assert (=> b!2291245 (= res!979850 lt!850072)))

(declare-fun isEmpty!15539 (List!27382) Bool)

(assert (=> b!2291245 (= lt!850072 (isEmpty!15539 tokens!456))))

(declare-fun e!1468211 () Bool)

(declare-fun b!2291246 () Bool)

(declare-fun e!1468210 () Bool)

(declare-fun tp!726501 () Bool)

(declare-fun inv!21 (TokenValue!4529) Bool)

(assert (=> b!2291246 (= e!1468210 (and (inv!21 (value!138279 (h!32689 tokens!456))) e!1468211 tp!726501))))

(declare-fun b!2291247 () Bool)

(declare-fun e!1468221 () Bool)

(declare-fun matchR!2972 (Regex!6715 List!27379) Bool)

(declare-fun list!10688 (BalanceConc!17492) List!27379)

(declare-fun charsOf!2755 (Token!8212) BalanceConc!17492)

(declare-fun head!4996 (List!27382) Token!8212)

(assert (=> b!2291247 (= e!1468221 (not (matchR!2972 (regex!4367 r!2363) (list!10688 (charsOf!2755 (head!4996 tokens!456))))))))

(declare-fun b!2291248 () Bool)

(declare-fun res!979834 () Bool)

(declare-fun e!1468226 () Bool)

(assert (=> b!2291248 (=> (not res!979834) (not e!1468226))))

(declare-fun contains!4743 (List!27381 Rule!8534) Bool)

(assert (=> b!2291248 (= res!979834 (contains!4743 rules!1750 r!2363))))

(declare-fun b!2291249 () Bool)

(declare-fun e!1468229 () Bool)

(declare-fun otherR!12 () Rule!8534)

(declare-fun tp!726500 () Bool)

(declare-fun inv!36882 (String!29749) Bool)

(declare-fun inv!36885 (TokenValueInjection!8598) Bool)

(assert (=> b!2291249 (= e!1468229 (and tp!726500 (inv!36882 (tag!4857 otherR!12)) (inv!36885 (transformation!4367 otherR!12)) e!1468218))))

(declare-fun b!2291250 () Bool)

(declare-fun e!1468223 () Bool)

(assert (=> b!2291250 (= e!1468214 e!1468223)))

(declare-fun res!979836 () Bool)

(assert (=> b!2291250 (=> res!979836 e!1468223)))

(assert (=> b!2291250 (= res!979836 (not (= (h!32689 tokens!456) (_1!16061 lt!850065))))))

(declare-fun lt!850058 () Option!5357)

(declare-fun get!8230 (Option!5357) tuple2!27102)

(assert (=> b!2291250 (= lt!850065 (get!8230 lt!850058))))

(declare-fun maxPrefix!2228 (LexerInterface!3964 List!27381 List!27379) Option!5357)

(assert (=> b!2291250 (= lt!850058 (maxPrefix!2228 thiss!16613 rules!1750 input!1722))))

(declare-fun tp!726489 () Bool)

(declare-fun b!2291251 () Bool)

(declare-fun e!1468215 () Bool)

(declare-fun e!1468227 () Bool)

(assert (=> b!2291251 (= e!1468215 (and tp!726489 (inv!36882 (tag!4857 r!2363)) (inv!36885 (transformation!4367 r!2363)) e!1468227))))

(declare-fun b!2291252 () Bool)

(declare-fun res!979851 () Bool)

(assert (=> b!2291252 (=> res!979851 e!1468212)))

(assert (=> b!2291252 (= res!979851 (not (matchR!2972 (regex!4367 r!2363) lt!850069)))))

(assert (=> b!2291253 (= e!1468227 (and tp!726492 tp!726488))))

(declare-fun b!2291254 () Bool)

(declare-fun res!979852 () Bool)

(assert (=> b!2291254 (=> (not res!979852) (not e!1468226))))

(assert (=> b!2291254 (= res!979852 (contains!4743 rules!1750 otherR!12))))

(declare-fun e!1468220 () Bool)

(assert (=> b!2291255 (= e!1468220 (and tp!726494 tp!726496))))

(declare-fun b!2291256 () Bool)

(declare-fun e!1468231 () Bool)

(assert (=> b!2291256 (= e!1468228 (not e!1468231))))

(declare-fun res!979840 () Bool)

(assert (=> b!2291256 (=> res!979840 e!1468231)))

(assert (=> b!2291256 (= res!979840 e!1468221)))

(declare-fun res!979847 () Bool)

(assert (=> b!2291256 (=> (not res!979847) (not e!1468221))))

(assert (=> b!2291256 (= res!979847 (not lt!850072))))

(declare-fun ruleValid!1457 (LexerInterface!3964 Rule!8534) Bool)

(assert (=> b!2291256 (ruleValid!1457 thiss!16613 r!2363)))

(declare-fun lt!850067 () Unit!40164)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!862 (LexerInterface!3964 Rule!8534 List!27381) Unit!40164)

(assert (=> b!2291256 (= lt!850067 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!862 thiss!16613 r!2363 rules!1750))))

(declare-fun e!1468224 () Bool)

(declare-fun b!2291257 () Bool)

(declare-fun tp!726490 () Bool)

(declare-fun inv!36886 (Token!8212) Bool)

(assert (=> b!2291257 (= e!1468224 (and (inv!36886 (h!32689 tokens!456)) e!1468210 tp!726490))))

(declare-fun lt!850070 () Int)

(declare-fun lt!850066 () Option!5357)

(declare-fun b!2291258 () Bool)

(assert (=> b!2291258 (= e!1468212 (or (not (= lt!850054 lt!850066)) (<= lt!850070 lt!850055) (= lt!850058 lt!850066)))))

(declare-fun lt!850071 () List!27379)

(assert (=> b!2291258 (= lt!850066 (Some!5356 (tuple2!27103 lt!850061 lt!850071)))))

(assert (=> b!2291258 (isPrefix!2357 input!1722 input!1722)))

(declare-fun lt!850064 () Unit!40164)

(declare-fun lemmaIsPrefixRefl!1499 (List!27379 List!27379) Unit!40164)

(assert (=> b!2291258 (= lt!850064 (lemmaIsPrefixRefl!1499 input!1722 input!1722))))

(declare-fun lt!850068 () Unit!40164)

(declare-fun lemmaSemiInverse!1066 (TokenValueInjection!8598 BalanceConc!17492) Unit!40164)

(assert (=> b!2291258 (= lt!850068 (lemmaSemiInverse!1066 (transformation!4367 r!2363) lt!850059))))

(declare-fun b!2291259 () Bool)

(declare-fun res!979842 () Bool)

(assert (=> b!2291259 (=> (not res!979842) (not e!1468226))))

(declare-fun isEmpty!15540 (List!27381) Bool)

(assert (=> b!2291259 (= res!979842 (not (isEmpty!15540 rules!1750)))))

(declare-fun e!1468202 () Bool)

(assert (=> b!2291260 (= e!1468202 (and tp!726497 tp!726485))))

(declare-fun b!2291261 () Bool)

(declare-fun res!979841 () Bool)

(assert (=> b!2291261 (=> (not res!979841) (not e!1468228))))

(declare-fun otherP!12 () List!27379)

(assert (=> b!2291261 (= res!979841 (isPrefix!2357 otherP!12 input!1722))))

(declare-fun b!2291262 () Bool)

(assert (=> b!2291262 (= e!1468223 e!1468219)))

(declare-fun res!979846 () Bool)

(assert (=> b!2291262 (=> res!979846 e!1468219)))

(assert (=> b!2291262 (= res!979846 (= lt!850070 lt!850055))))

(declare-fun size!21481 (List!27379) Int)

(assert (=> b!2291262 (= lt!850055 (size!21481 lt!850069))))

(assert (=> b!2291262 (= lt!850070 (size!21481 otherP!12))))

(assert (=> b!2291262 (= (_2!16061 lt!850065) lt!850071)))

(declare-fun lt!850062 () Unit!40164)

(declare-fun lemmaSamePrefixThenSameSuffix!1058 (List!27379 List!27379 List!27379 List!27379 List!27379) Unit!40164)

(assert (=> b!2291262 (= lt!850062 (lemmaSamePrefixThenSameSuffix!1058 lt!850069 (_2!16061 lt!850065) lt!850069 lt!850071 input!1722))))

(declare-fun getSuffix!1148 (List!27379 List!27379) List!27379)

(assert (=> b!2291262 (= lt!850071 (getSuffix!1148 input!1722 lt!850069))))

(declare-fun ++!6667 (List!27379 List!27379) List!27379)

(assert (=> b!2291262 (isPrefix!2357 lt!850069 (++!6667 lt!850069 (_2!16061 lt!850065)))))

(declare-fun lt!850060 () Unit!40164)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1562 (List!27379 List!27379) Unit!40164)

(assert (=> b!2291262 (= lt!850060 (lemmaConcatTwoListThenFirstIsPrefix!1562 lt!850069 (_2!16061 lt!850065)))))

(assert (=> b!2291262 (= lt!850069 (list!10688 (charsOf!2755 (h!32689 tokens!456))))))

(declare-fun b!2291263 () Bool)

(assert (=> b!2291263 (= e!1468226 e!1468206)))

(declare-fun res!979833 () Bool)

(assert (=> b!2291263 (=> (not res!979833) (not e!1468206))))

(declare-datatypes ((IArray!17771 0))(
  ( (IArray!17772 (innerList!8943 List!27382)) )
))
(declare-datatypes ((Conc!8883 0))(
  ( (Node!8883 (left!20683 Conc!8883) (right!21013 Conc!8883) (csize!17996 Int) (cheight!9094 Int)) (Leaf!13052 (xs!11825 IArray!17771) (csize!17997 Int)) (Empty!8883) )
))
(declare-datatypes ((BalanceConc!17494 0))(
  ( (BalanceConc!17495 (c!363264 Conc!8883)) )
))
(declare-datatypes ((tuple2!27104 0))(
  ( (tuple2!27105 (_1!16062 BalanceConc!17494) (_2!16062 BalanceConc!17492)) )
))
(declare-fun lt!850063 () tuple2!27104)

(declare-fun suffix!886 () List!27379)

(declare-datatypes ((tuple2!27106 0))(
  ( (tuple2!27107 (_1!16063 List!27382) (_2!16063 List!27379)) )
))
(declare-fun list!10689 (BalanceConc!17494) List!27382)

(assert (=> b!2291263 (= res!979833 (= (tuple2!27107 (list!10689 (_1!16062 lt!850063)) (list!10688 (_2!16062 lt!850063))) (tuple2!27107 tokens!456 suffix!886)))))

(declare-fun lex!1803 (LexerInterface!3964 List!27381 BalanceConc!17492) tuple2!27104)

(assert (=> b!2291263 (= lt!850063 (lex!1803 thiss!16613 rules!1750 (seqFromList!3071 input!1722)))))

(declare-fun b!2291264 () Bool)

(declare-fun e!1468205 () Bool)

(declare-fun tp!726493 () Bool)

(assert (=> b!2291264 (= e!1468205 (and tp_is_empty!10651 tp!726493))))

(declare-fun b!2291265 () Bool)

(declare-fun e!1468207 () Bool)

(declare-fun tp!726498 () Bool)

(assert (=> b!2291265 (= e!1468207 (and tp_is_empty!10651 tp!726498))))

(declare-fun b!2291266 () Bool)

(declare-fun tp!726491 () Bool)

(assert (=> b!2291266 (= e!1468211 (and tp!726491 (inv!36882 (tag!4857 (rule!6703 (h!32689 tokens!456)))) (inv!36885 (transformation!4367 (rule!6703 (h!32689 tokens!456)))) e!1468202))))

(declare-fun b!2291267 () Bool)

(assert (=> b!2291267 (= e!1468231 e!1468214)))

(declare-fun res!979835 () Bool)

(assert (=> b!2291267 (=> res!979835 e!1468214)))

(declare-fun getIndex!380 (List!27381 Rule!8534) Int)

(assert (=> b!2291267 (= res!979835 (<= (getIndex!380 rules!1750 r!2363) (getIndex!380 rules!1750 otherR!12)))))

(assert (=> b!2291267 (ruleValid!1457 thiss!16613 otherR!12)))

(declare-fun lt!850057 () Unit!40164)

(assert (=> b!2291267 (= lt!850057 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!862 thiss!16613 otherR!12 rules!1750))))

(declare-fun b!2291268 () Bool)

(declare-fun res!979843 () Bool)

(assert (=> b!2291268 (=> (not res!979843) (not e!1468226))))

(declare-fun rulesInvariant!3466 (LexerInterface!3964 List!27381) Bool)

(assert (=> b!2291268 (= res!979843 (rulesInvariant!3466 thiss!16613 rules!1750))))

(declare-fun tp!726484 () Bool)

(declare-fun b!2291269 () Bool)

(declare-fun e!1468225 () Bool)

(assert (=> b!2291269 (= e!1468225 (and tp!726484 (inv!36882 (tag!4857 (h!32688 rules!1750))) (inv!36885 (transformation!4367 (h!32688 rules!1750))) e!1468220))))

(declare-fun b!2291270 () Bool)

(declare-fun res!979849 () Bool)

(assert (=> b!2291270 (=> (not res!979849) (not e!1468228))))

(declare-fun e!1468204 () Bool)

(assert (=> b!2291270 (= res!979849 e!1468204)))

(declare-fun res!979839 () Bool)

(assert (=> b!2291270 (=> res!979839 e!1468204)))

(assert (=> b!2291270 (= res!979839 lt!850072)))

(declare-fun b!2291271 () Bool)

(declare-fun e!1468230 () Bool)

(declare-fun tp!726487 () Bool)

(assert (=> b!2291271 (= e!1468230 (and e!1468225 tp!726487))))

(declare-fun b!2291272 () Bool)

(declare-fun size!21482 (BalanceConc!17492) Int)

(assert (=> b!2291272 (= e!1468208 (<= (size!21482 (charsOf!2755 (head!4996 tokens!456))) (size!21481 otherP!12)))))

(declare-fun b!2291273 () Bool)

(assert (=> b!2291273 (= e!1468204 (= (rule!6703 (head!4996 tokens!456)) r!2363))))

(declare-fun res!979845 () Bool)

(assert (=> start!224896 (=> (not res!979845) (not e!1468226))))

(assert (=> start!224896 (= res!979845 ((_ is Lexer!3962) thiss!16613))))

(assert (=> start!224896 e!1468226))

(assert (=> start!224896 true))

(assert (=> start!224896 e!1468207))

(assert (=> start!224896 e!1468229))

(assert (=> start!224896 e!1468205))

(assert (=> start!224896 e!1468213))

(assert (=> start!224896 e!1468230))

(assert (=> start!224896 e!1468215))

(assert (=> start!224896 e!1468224))

(declare-fun b!2291274 () Bool)

(declare-fun res!979838 () Bool)

(assert (=> b!2291274 (=> (not res!979838) (not e!1468228))))

(assert (=> b!2291274 (= res!979838 (not (= r!2363 otherR!12)))))

(assert (= (and start!224896 res!979845) b!2291259))

(assert (= (and b!2291259 res!979842) b!2291268))

(assert (= (and b!2291268 res!979843) b!2291248))

(assert (= (and b!2291248 res!979834) b!2291254))

(assert (= (and b!2291254 res!979852) b!2291263))

(assert (= (and b!2291263 res!979833) b!2291245))

(assert (= (and b!2291245 (not res!979850)) b!2291272))

(assert (= (and b!2291245 res!979844) b!2291270))

(assert (= (and b!2291270 (not res!979839)) b!2291273))

(assert (= (and b!2291270 res!979849) b!2291261))

(assert (= (and b!2291261 res!979841) b!2291274))

(assert (= (and b!2291274 res!979838) b!2291256))

(assert (= (and b!2291256 res!979847) b!2291247))

(assert (= (and b!2291256 (not res!979840)) b!2291267))

(assert (= (and b!2291267 (not res!979835)) b!2291244))

(assert (= (and b!2291244 (not res!979837)) b!2291250))

(assert (= (and b!2291250 (not res!979836)) b!2291262))

(assert (= (and b!2291262 (not res!979846)) b!2291241))

(assert (= (and b!2291241 (not res!979848)) b!2291252))

(assert (= (and b!2291252 (not res!979851)) b!2291258))

(assert (= (and start!224896 ((_ is Cons!27285) input!1722)) b!2291265))

(assert (= b!2291249 b!2291243))

(assert (= start!224896 b!2291249))

(assert (= (and start!224896 ((_ is Cons!27285) suffix!886)) b!2291264))

(assert (= (and start!224896 ((_ is Cons!27285) otherP!12)) b!2291242))

(assert (= b!2291269 b!2291255))

(assert (= b!2291271 b!2291269))

(assert (= (and start!224896 ((_ is Cons!27287) rules!1750)) b!2291271))

(assert (= b!2291251 b!2291253))

(assert (= start!224896 b!2291251))

(assert (= b!2291266 b!2291260))

(assert (= b!2291246 b!2291266))

(assert (= b!2291257 b!2291246))

(assert (= (and start!224896 ((_ is Cons!27288) tokens!456)) b!2291257))

(declare-fun m!2718805 () Bool)

(assert (=> b!2291251 m!2718805))

(declare-fun m!2718807 () Bool)

(assert (=> b!2291251 m!2718807))

(declare-fun m!2718809 () Bool)

(assert (=> b!2291261 m!2718809))

(declare-fun m!2718811 () Bool)

(assert (=> b!2291247 m!2718811))

(assert (=> b!2291247 m!2718811))

(declare-fun m!2718813 () Bool)

(assert (=> b!2291247 m!2718813))

(assert (=> b!2291247 m!2718813))

(declare-fun m!2718815 () Bool)

(assert (=> b!2291247 m!2718815))

(assert (=> b!2291247 m!2718815))

(declare-fun m!2718817 () Bool)

(assert (=> b!2291247 m!2718817))

(declare-fun m!2718819 () Bool)

(assert (=> b!2291268 m!2718819))

(assert (=> b!2291272 m!2718811))

(assert (=> b!2291272 m!2718811))

(assert (=> b!2291272 m!2718813))

(assert (=> b!2291272 m!2718813))

(declare-fun m!2718821 () Bool)

(assert (=> b!2291272 m!2718821))

(declare-fun m!2718823 () Bool)

(assert (=> b!2291272 m!2718823))

(declare-fun m!2718825 () Bool)

(assert (=> b!2291248 m!2718825))

(declare-fun m!2718827 () Bool)

(assert (=> b!2291256 m!2718827))

(declare-fun m!2718829 () Bool)

(assert (=> b!2291256 m!2718829))

(declare-fun m!2718831 () Bool)

(assert (=> b!2291269 m!2718831))

(declare-fun m!2718833 () Bool)

(assert (=> b!2291269 m!2718833))

(assert (=> b!2291273 m!2718811))

(declare-fun m!2718835 () Bool)

(assert (=> b!2291249 m!2718835))

(declare-fun m!2718837 () Bool)

(assert (=> b!2291249 m!2718837))

(declare-fun m!2718839 () Bool)

(assert (=> b!2291246 m!2718839))

(declare-fun m!2718841 () Bool)

(assert (=> b!2291257 m!2718841))

(declare-fun m!2718843 () Bool)

(assert (=> b!2291252 m!2718843))

(declare-fun m!2718845 () Bool)

(assert (=> b!2291262 m!2718845))

(declare-fun m!2718847 () Bool)

(assert (=> b!2291262 m!2718847))

(declare-fun m!2718849 () Bool)

(assert (=> b!2291262 m!2718849))

(assert (=> b!2291262 m!2718823))

(declare-fun m!2718851 () Bool)

(assert (=> b!2291262 m!2718851))

(declare-fun m!2718853 () Bool)

(assert (=> b!2291262 m!2718853))

(declare-fun m!2718855 () Bool)

(assert (=> b!2291262 m!2718855))

(declare-fun m!2718857 () Bool)

(assert (=> b!2291262 m!2718857))

(assert (=> b!2291262 m!2718855))

(assert (=> b!2291262 m!2718847))

(declare-fun m!2718859 () Bool)

(assert (=> b!2291262 m!2718859))

(declare-fun m!2718861 () Bool)

(assert (=> b!2291259 m!2718861))

(declare-fun m!2718863 () Bool)

(assert (=> b!2291258 m!2718863))

(declare-fun m!2718865 () Bool)

(assert (=> b!2291258 m!2718865))

(declare-fun m!2718867 () Bool)

(assert (=> b!2291258 m!2718867))

(declare-fun m!2718869 () Bool)

(assert (=> b!2291266 m!2718869))

(declare-fun m!2718871 () Bool)

(assert (=> b!2291266 m!2718871))

(declare-fun m!2718873 () Bool)

(assert (=> b!2291245 m!2718873))

(declare-fun m!2718875 () Bool)

(assert (=> b!2291263 m!2718875))

(declare-fun m!2718877 () Bool)

(assert (=> b!2291263 m!2718877))

(declare-fun m!2718879 () Bool)

(assert (=> b!2291263 m!2718879))

(assert (=> b!2291263 m!2718879))

(declare-fun m!2718881 () Bool)

(assert (=> b!2291263 m!2718881))

(declare-fun m!2718883 () Bool)

(assert (=> b!2291267 m!2718883))

(declare-fun m!2718885 () Bool)

(assert (=> b!2291267 m!2718885))

(declare-fun m!2718887 () Bool)

(assert (=> b!2291267 m!2718887))

(declare-fun m!2718889 () Bool)

(assert (=> b!2291267 m!2718889))

(declare-fun m!2718891 () Bool)

(assert (=> b!2291250 m!2718891))

(declare-fun m!2718893 () Bool)

(assert (=> b!2291250 m!2718893))

(declare-fun m!2718895 () Bool)

(assert (=> b!2291241 m!2718895))

(declare-fun m!2718897 () Bool)

(assert (=> b!2291241 m!2718897))

(declare-fun m!2718899 () Bool)

(assert (=> b!2291241 m!2718899))

(declare-fun m!2718901 () Bool)

(assert (=> b!2291241 m!2718901))

(declare-fun m!2718903 () Bool)

(assert (=> b!2291241 m!2718903))

(declare-fun m!2718905 () Bool)

(assert (=> b!2291254 m!2718905))

(check-sat (not b_next!69587) (not b!2291252) (not b!2291269) (not b_next!69593) (not b!2291265) (not b_next!69591) b_and!181885 (not b!2291263) (not b!2291251) (not b_next!69589) (not b_next!69583) (not b!2291261) (not b!2291254) (not b_next!69595) (not b!2291262) (not b!2291271) b_and!181879 b_and!181883 (not b!2291245) (not b!2291248) (not b_next!69581) (not b!2291256) b_and!181875 (not b!2291273) (not b!2291266) b_and!181873 (not b_next!69585) (not b!2291242) (not b!2291246) (not b!2291250) (not b!2291264) (not b!2291267) (not b!2291259) (not b!2291258) (not b!2291241) (not b!2291268) b_and!181877 (not b!2291247) (not b!2291249) b_and!181887 (not b!2291257) (not b!2291272) tp_is_empty!10651 b_and!181881)
(check-sat (not b_next!69587) (not b_next!69593) (not b_next!69595) (not b_next!69591) b_and!181879 b_and!181883 b_and!181885 (not b_next!69581) b_and!181875 b_and!181873 (not b_next!69585) (not b_next!69589) b_and!181877 b_and!181887 (not b_next!69583) b_and!181881)
(get-model)

(declare-fun b!2291365 () Bool)

(declare-fun res!979916 () Bool)

(declare-fun e!1468280 () Bool)

(assert (=> b!2291365 (=> (not res!979916) (not e!1468280))))

(declare-fun isEmpty!15543 (List!27379) Bool)

(declare-fun tail!3311 (List!27379) List!27379)

(assert (=> b!2291365 (= res!979916 (isEmpty!15543 (tail!3311 lt!850069)))))

(declare-fun b!2291366 () Bool)

(declare-fun res!979914 () Bool)

(declare-fun e!1468288 () Bool)

(assert (=> b!2291366 (=> res!979914 e!1468288)))

(assert (=> b!2291366 (= res!979914 (not (isEmpty!15543 (tail!3311 lt!850069))))))

(declare-fun b!2291367 () Bool)

(declare-fun head!4998 (List!27379) C!13576)

(assert (=> b!2291367 (= e!1468288 (not (= (head!4998 lt!850069) (c!363263 (regex!4367 r!2363)))))))

(declare-fun b!2291368 () Bool)

(declare-fun e!1468284 () Bool)

(declare-fun nullable!1868 (Regex!6715) Bool)

(assert (=> b!2291368 (= e!1468284 (nullable!1868 (regex!4367 r!2363)))))

(declare-fun b!2291369 () Bool)

(assert (=> b!2291369 (= e!1468280 (= (head!4998 lt!850069) (c!363263 (regex!4367 r!2363))))))

(declare-fun d!677657 () Bool)

(declare-fun e!1468283 () Bool)

(assert (=> d!677657 e!1468283))

(declare-fun c!363283 () Bool)

(assert (=> d!677657 (= c!363283 ((_ is EmptyExpr!6715) (regex!4367 r!2363)))))

(declare-fun lt!850083 () Bool)

(assert (=> d!677657 (= lt!850083 e!1468284)))

(declare-fun c!363282 () Bool)

(assert (=> d!677657 (= c!363282 (isEmpty!15543 lt!850069))))

(declare-fun validRegex!2530 (Regex!6715) Bool)

(assert (=> d!677657 (validRegex!2530 (regex!4367 r!2363))))

(assert (=> d!677657 (= (matchR!2972 (regex!4367 r!2363) lt!850069) lt!850083)))

(declare-fun b!2291370 () Bool)

(declare-fun call!136654 () Bool)

(assert (=> b!2291370 (= e!1468283 (= lt!850083 call!136654))))

(declare-fun b!2291371 () Bool)

(declare-fun res!979911 () Bool)

(declare-fun e!1468286 () Bool)

(assert (=> b!2291371 (=> res!979911 e!1468286)))

(assert (=> b!2291371 (= res!979911 e!1468280)))

(declare-fun res!979918 () Bool)

(assert (=> b!2291371 (=> (not res!979918) (not e!1468280))))

(assert (=> b!2291371 (= res!979918 lt!850083)))

(declare-fun b!2291372 () Bool)

(declare-fun e!1468287 () Bool)

(assert (=> b!2291372 (= e!1468287 (not lt!850083))))

(declare-fun b!2291373 () Bool)

(declare-fun res!979915 () Bool)

(assert (=> b!2291373 (=> (not res!979915) (not e!1468280))))

(assert (=> b!2291373 (= res!979915 (not call!136654))))

(declare-fun b!2291374 () Bool)

(declare-fun e!1468285 () Bool)

(assert (=> b!2291374 (= e!1468286 e!1468285)))

(declare-fun res!979913 () Bool)

(assert (=> b!2291374 (=> (not res!979913) (not e!1468285))))

(assert (=> b!2291374 (= res!979913 (not lt!850083))))

(declare-fun b!2291375 () Bool)

(assert (=> b!2291375 (= e!1468283 e!1468287)))

(declare-fun c!363285 () Bool)

(assert (=> b!2291375 (= c!363285 ((_ is EmptyLang!6715) (regex!4367 r!2363)))))

(declare-fun b!2291376 () Bool)

(assert (=> b!2291376 (= e!1468285 e!1468288)))

(declare-fun res!979912 () Bool)

(assert (=> b!2291376 (=> res!979912 e!1468288)))

(assert (=> b!2291376 (= res!979912 call!136654)))

(declare-fun b!2291377 () Bool)

(declare-fun res!979917 () Bool)

(assert (=> b!2291377 (=> res!979917 e!1468286)))

(assert (=> b!2291377 (= res!979917 (not ((_ is ElementMatch!6715) (regex!4367 r!2363))))))

(assert (=> b!2291377 (= e!1468287 e!1468286)))

(declare-fun bm!136649 () Bool)

(assert (=> bm!136649 (= call!136654 (isEmpty!15543 lt!850069))))

(declare-fun b!2291378 () Bool)

(declare-fun derivativeStep!1528 (Regex!6715 C!13576) Regex!6715)

(assert (=> b!2291378 (= e!1468284 (matchR!2972 (derivativeStep!1528 (regex!4367 r!2363) (head!4998 lt!850069)) (tail!3311 lt!850069)))))

(assert (= (and d!677657 c!363282) b!2291368))

(assert (= (and d!677657 (not c!363282)) b!2291378))

(assert (= (and d!677657 c!363283) b!2291370))

(assert (= (and d!677657 (not c!363283)) b!2291375))

(assert (= (and b!2291375 c!363285) b!2291372))

(assert (= (and b!2291375 (not c!363285)) b!2291377))

(assert (= (and b!2291377 (not res!979917)) b!2291371))

(assert (= (and b!2291371 res!979918) b!2291373))

(assert (= (and b!2291373 res!979915) b!2291365))

(assert (= (and b!2291365 res!979916) b!2291369))

(assert (= (and b!2291371 (not res!979911)) b!2291374))

(assert (= (and b!2291374 res!979913) b!2291376))

(assert (= (and b!2291376 (not res!979912)) b!2291366))

(assert (= (and b!2291366 (not res!979914)) b!2291367))

(assert (= (or b!2291370 b!2291373 b!2291376) bm!136649))

(declare-fun m!2718949 () Bool)

(assert (=> b!2291366 m!2718949))

(assert (=> b!2291366 m!2718949))

(declare-fun m!2718951 () Bool)

(assert (=> b!2291366 m!2718951))

(declare-fun m!2718953 () Bool)

(assert (=> b!2291367 m!2718953))

(assert (=> b!2291365 m!2718949))

(assert (=> b!2291365 m!2718949))

(assert (=> b!2291365 m!2718951))

(declare-fun m!2718955 () Bool)

(assert (=> d!677657 m!2718955))

(declare-fun m!2718957 () Bool)

(assert (=> d!677657 m!2718957))

(declare-fun m!2718959 () Bool)

(assert (=> b!2291368 m!2718959))

(assert (=> b!2291378 m!2718953))

(assert (=> b!2291378 m!2718953))

(declare-fun m!2718961 () Bool)

(assert (=> b!2291378 m!2718961))

(assert (=> b!2291378 m!2718949))

(assert (=> b!2291378 m!2718961))

(assert (=> b!2291378 m!2718949))

(declare-fun m!2718963 () Bool)

(assert (=> b!2291378 m!2718963))

(assert (=> b!2291369 m!2718953))

(assert (=> bm!136649 m!2718955))

(assert (=> b!2291252 d!677657))

(declare-fun d!677683 () Bool)

(assert (=> d!677683 (= (head!4996 tokens!456) (h!32689 tokens!456))))

(assert (=> b!2291273 d!677683))

(declare-fun d!677687 () Bool)

(declare-fun lt!850091 () Int)

(assert (=> d!677687 (= lt!850091 (size!21481 (list!10688 (charsOf!2755 (head!4996 tokens!456)))))))

(declare-fun size!21484 (Conc!8882) Int)

(assert (=> d!677687 (= lt!850091 (size!21484 (c!363262 (charsOf!2755 (head!4996 tokens!456)))))))

(assert (=> d!677687 (= (size!21482 (charsOf!2755 (head!4996 tokens!456))) lt!850091)))

(declare-fun bs!457046 () Bool)

(assert (= bs!457046 d!677687))

(assert (=> bs!457046 m!2718813))

(assert (=> bs!457046 m!2718815))

(assert (=> bs!457046 m!2718815))

(declare-fun m!2718975 () Bool)

(assert (=> bs!457046 m!2718975))

(declare-fun m!2718977 () Bool)

(assert (=> bs!457046 m!2718977))

(assert (=> b!2291272 d!677687))

(declare-fun d!677699 () Bool)

(declare-fun lt!850094 () BalanceConc!17492)

(assert (=> d!677699 (= (list!10688 lt!850094) (originalCharacters!5137 (head!4996 tokens!456)))))

(declare-fun dynLambda!11843 (Int TokenValue!4529) BalanceConc!17492)

(assert (=> d!677699 (= lt!850094 (dynLambda!11843 (toChars!6016 (transformation!4367 (rule!6703 (head!4996 tokens!456)))) (value!138279 (head!4996 tokens!456))))))

(assert (=> d!677699 (= (charsOf!2755 (head!4996 tokens!456)) lt!850094)))

(declare-fun b_lambda!72991 () Bool)

(assert (=> (not b_lambda!72991) (not d!677699)))

(declare-fun tb!136551 () Bool)

(declare-fun t!204684 () Bool)

(assert (=> (and b!2291253 (= (toChars!6016 (transformation!4367 r!2363)) (toChars!6016 (transformation!4367 (rule!6703 (head!4996 tokens!456))))) t!204684) tb!136551))

(declare-fun b!2291397 () Bool)

(declare-fun e!1468298 () Bool)

(declare-fun tp!726507 () Bool)

(declare-fun inv!36889 (Conc!8882) Bool)

(assert (=> b!2291397 (= e!1468298 (and (inv!36889 (c!363262 (dynLambda!11843 (toChars!6016 (transformation!4367 (rule!6703 (head!4996 tokens!456)))) (value!138279 (head!4996 tokens!456))))) tp!726507))))

(declare-fun result!166512 () Bool)

(declare-fun inv!36890 (BalanceConc!17492) Bool)

(assert (=> tb!136551 (= result!166512 (and (inv!36890 (dynLambda!11843 (toChars!6016 (transformation!4367 (rule!6703 (head!4996 tokens!456)))) (value!138279 (head!4996 tokens!456)))) e!1468298))))

(assert (= tb!136551 b!2291397))

(declare-fun m!2718979 () Bool)

(assert (=> b!2291397 m!2718979))

(declare-fun m!2718981 () Bool)

(assert (=> tb!136551 m!2718981))

(assert (=> d!677699 t!204684))

(declare-fun b_and!181897 () Bool)

(assert (= b_and!181875 (and (=> t!204684 result!166512) b_and!181897)))

(declare-fun t!204686 () Bool)

(declare-fun tb!136553 () Bool)

(assert (=> (and b!2291260 (= (toChars!6016 (transformation!4367 (rule!6703 (h!32689 tokens!456)))) (toChars!6016 (transformation!4367 (rule!6703 (head!4996 tokens!456))))) t!204686) tb!136553))

(declare-fun result!166516 () Bool)

(assert (= result!166516 result!166512))

(assert (=> d!677699 t!204686))

(declare-fun b_and!181899 () Bool)

(assert (= b_and!181879 (and (=> t!204686 result!166516) b_and!181899)))

(declare-fun t!204688 () Bool)

(declare-fun tb!136555 () Bool)

(assert (=> (and b!2291255 (= (toChars!6016 (transformation!4367 (h!32688 rules!1750))) (toChars!6016 (transformation!4367 (rule!6703 (head!4996 tokens!456))))) t!204688) tb!136555))

(declare-fun result!166518 () Bool)

(assert (= result!166518 result!166512))

(assert (=> d!677699 t!204688))

(declare-fun b_and!181901 () Bool)

(assert (= b_and!181883 (and (=> t!204688 result!166518) b_and!181901)))

(declare-fun t!204690 () Bool)

(declare-fun tb!136557 () Bool)

(assert (=> (and b!2291243 (= (toChars!6016 (transformation!4367 otherR!12)) (toChars!6016 (transformation!4367 (rule!6703 (head!4996 tokens!456))))) t!204690) tb!136557))

(declare-fun result!166520 () Bool)

(assert (= result!166520 result!166512))

(assert (=> d!677699 t!204690))

(declare-fun b_and!181903 () Bool)

(assert (= b_and!181887 (and (=> t!204690 result!166520) b_and!181903)))

(declare-fun m!2718983 () Bool)

(assert (=> d!677699 m!2718983))

(declare-fun m!2718985 () Bool)

(assert (=> d!677699 m!2718985))

(assert (=> b!2291272 d!677699))

(assert (=> b!2291272 d!677683))

(declare-fun d!677701 () Bool)

(declare-fun lt!850097 () Int)

(assert (=> d!677701 (>= lt!850097 0)))

(declare-fun e!1468301 () Int)

(assert (=> d!677701 (= lt!850097 e!1468301)))

(declare-fun c!363293 () Bool)

(assert (=> d!677701 (= c!363293 ((_ is Nil!27285) otherP!12))))

(assert (=> d!677701 (= (size!21481 otherP!12) lt!850097)))

(declare-fun b!2291402 () Bool)

(assert (=> b!2291402 (= e!1468301 0)))

(declare-fun b!2291403 () Bool)

(assert (=> b!2291403 (= e!1468301 (+ 1 (size!21481 (t!204671 otherP!12))))))

(assert (= (and d!677701 c!363293) b!2291402))

(assert (= (and d!677701 (not c!363293)) b!2291403))

(declare-fun m!2718987 () Bool)

(assert (=> b!2291403 m!2718987))

(assert (=> b!2291272 d!677701))

(declare-fun d!677703 () Bool)

(assert (=> d!677703 (= (inv!36882 (tag!4857 r!2363)) (= (mod (str.len (value!138278 (tag!4857 r!2363))) 2) 0))))

(assert (=> b!2291251 d!677703))

(declare-fun d!677705 () Bool)

(declare-fun res!979927 () Bool)

(declare-fun e!1468304 () Bool)

(assert (=> d!677705 (=> (not res!979927) (not e!1468304))))

(declare-fun semiInverseModEq!1770 (Int Int) Bool)

(assert (=> d!677705 (= res!979927 (semiInverseModEq!1770 (toChars!6016 (transformation!4367 r!2363)) (toValue!6157 (transformation!4367 r!2363))))))

(assert (=> d!677705 (= (inv!36885 (transformation!4367 r!2363)) e!1468304)))

(declare-fun b!2291406 () Bool)

(declare-fun equivClasses!1689 (Int Int) Bool)

(assert (=> b!2291406 (= e!1468304 (equivClasses!1689 (toChars!6016 (transformation!4367 r!2363)) (toValue!6157 (transformation!4367 r!2363))))))

(assert (= (and d!677705 res!979927) b!2291406))

(declare-fun m!2718989 () Bool)

(assert (=> d!677705 m!2718989))

(declare-fun m!2718991 () Bool)

(assert (=> b!2291406 m!2718991))

(assert (=> b!2291251 d!677705))

(declare-fun d!677707 () Bool)

(assert (=> d!677707 (= (get!8230 lt!850058) (v!30438 lt!850058))))

(assert (=> b!2291250 d!677707))

(declare-fun b!2291463 () Bool)

(declare-fun res!979965 () Bool)

(declare-fun e!1468339 () Bool)

(assert (=> b!2291463 (=> (not res!979965) (not e!1468339))))

(declare-fun lt!850118 () Option!5357)

(assert (=> b!2291463 (= res!979965 (= (++!6667 (list!10688 (charsOf!2755 (_1!16061 (get!8230 lt!850118)))) (_2!16061 (get!8230 lt!850118))) input!1722))))

(declare-fun b!2291465 () Bool)

(declare-fun res!979964 () Bool)

(assert (=> b!2291465 (=> (not res!979964) (not e!1468339))))

(assert (=> b!2291465 (= res!979964 (= (value!138279 (_1!16061 (get!8230 lt!850118))) (apply!6639 (transformation!4367 (rule!6703 (_1!16061 (get!8230 lt!850118)))) (seqFromList!3071 (originalCharacters!5137 (_1!16061 (get!8230 lt!850118)))))))))

(declare-fun b!2291466 () Bool)

(declare-fun res!979967 () Bool)

(assert (=> b!2291466 (=> (not res!979967) (not e!1468339))))

(assert (=> b!2291466 (= res!979967 (= (list!10688 (charsOf!2755 (_1!16061 (get!8230 lt!850118)))) (originalCharacters!5137 (_1!16061 (get!8230 lt!850118)))))))

(declare-fun b!2291467 () Bool)

(declare-fun res!979962 () Bool)

(assert (=> b!2291467 (=> (not res!979962) (not e!1468339))))

(assert (=> b!2291467 (= res!979962 (matchR!2972 (regex!4367 (rule!6703 (_1!16061 (get!8230 lt!850118)))) (list!10688 (charsOf!2755 (_1!16061 (get!8230 lt!850118))))))))

(declare-fun b!2291468 () Bool)

(declare-fun res!979966 () Bool)

(assert (=> b!2291468 (=> (not res!979966) (not e!1468339))))

(assert (=> b!2291468 (= res!979966 (< (size!21481 (_2!16061 (get!8230 lt!850118))) (size!21481 input!1722)))))

(declare-fun b!2291469 () Bool)

(declare-fun e!1468337 () Option!5357)

(declare-fun lt!850117 () Option!5357)

(declare-fun lt!850114 () Option!5357)

(assert (=> b!2291469 (= e!1468337 (ite (and ((_ is None!5356) lt!850117) ((_ is None!5356) lt!850114)) None!5356 (ite ((_ is None!5356) lt!850114) lt!850117 (ite ((_ is None!5356) lt!850117) lt!850114 (ite (>= (size!21480 (_1!16061 (v!30438 lt!850117))) (size!21480 (_1!16061 (v!30438 lt!850114)))) lt!850117 lt!850114)))))))

(declare-fun call!136657 () Option!5357)

(assert (=> b!2291469 (= lt!850117 call!136657)))

(assert (=> b!2291469 (= lt!850114 (maxPrefix!2228 thiss!16613 (t!204673 rules!1750) input!1722))))

(declare-fun bm!136652 () Bool)

(assert (=> bm!136652 (= call!136657 (maxPrefixOneRule!1398 thiss!16613 (h!32688 rules!1750) input!1722))))

(declare-fun b!2291470 () Bool)

(declare-fun e!1468338 () Bool)

(assert (=> b!2291470 (= e!1468338 e!1468339)))

(declare-fun res!979963 () Bool)

(assert (=> b!2291470 (=> (not res!979963) (not e!1468339))))

(declare-fun isDefined!4234 (Option!5357) Bool)

(assert (=> b!2291470 (= res!979963 (isDefined!4234 lt!850118))))

(declare-fun b!2291471 () Bool)

(assert (=> b!2291471 (= e!1468337 call!136657)))

(declare-fun b!2291464 () Bool)

(assert (=> b!2291464 (= e!1468339 (contains!4743 rules!1750 (rule!6703 (_1!16061 (get!8230 lt!850118)))))))

(declare-fun d!677709 () Bool)

(assert (=> d!677709 e!1468338))

(declare-fun res!979968 () Bool)

(assert (=> d!677709 (=> res!979968 e!1468338)))

(declare-fun isEmpty!15545 (Option!5357) Bool)

(assert (=> d!677709 (= res!979968 (isEmpty!15545 lt!850118))))

(assert (=> d!677709 (= lt!850118 e!1468337)))

(declare-fun c!363305 () Bool)

(assert (=> d!677709 (= c!363305 (and ((_ is Cons!27287) rules!1750) ((_ is Nil!27287) (t!204673 rules!1750))))))

(declare-fun lt!850115 () Unit!40164)

(declare-fun lt!850116 () Unit!40164)

(assert (=> d!677709 (= lt!850115 lt!850116)))

(assert (=> d!677709 (isPrefix!2357 input!1722 input!1722)))

(assert (=> d!677709 (= lt!850116 (lemmaIsPrefixRefl!1499 input!1722 input!1722))))

(declare-fun rulesValidInductive!1539 (LexerInterface!3964 List!27381) Bool)

(assert (=> d!677709 (rulesValidInductive!1539 thiss!16613 rules!1750)))

(assert (=> d!677709 (= (maxPrefix!2228 thiss!16613 rules!1750 input!1722) lt!850118)))

(assert (= (and d!677709 c!363305) b!2291471))

(assert (= (and d!677709 (not c!363305)) b!2291469))

(assert (= (or b!2291471 b!2291469) bm!136652))

(assert (= (and d!677709 (not res!979968)) b!2291470))

(assert (= (and b!2291470 res!979963) b!2291466))

(assert (= (and b!2291466 res!979967) b!2291468))

(assert (= (and b!2291468 res!979966) b!2291463))

(assert (= (and b!2291463 res!979965) b!2291465))

(assert (= (and b!2291465 res!979964) b!2291467))

(assert (= (and b!2291467 res!979962) b!2291464))

(declare-fun m!2719033 () Bool)

(assert (=> b!2291466 m!2719033))

(declare-fun m!2719035 () Bool)

(assert (=> b!2291466 m!2719035))

(assert (=> b!2291466 m!2719035))

(declare-fun m!2719037 () Bool)

(assert (=> b!2291466 m!2719037))

(declare-fun m!2719039 () Bool)

(assert (=> d!677709 m!2719039))

(assert (=> d!677709 m!2718863))

(assert (=> d!677709 m!2718865))

(declare-fun m!2719041 () Bool)

(assert (=> d!677709 m!2719041))

(assert (=> b!2291468 m!2719033))

(declare-fun m!2719043 () Bool)

(assert (=> b!2291468 m!2719043))

(declare-fun m!2719045 () Bool)

(assert (=> b!2291468 m!2719045))

(assert (=> b!2291464 m!2719033))

(declare-fun m!2719047 () Bool)

(assert (=> b!2291464 m!2719047))

(declare-fun m!2719049 () Bool)

(assert (=> bm!136652 m!2719049))

(assert (=> b!2291465 m!2719033))

(declare-fun m!2719051 () Bool)

(assert (=> b!2291465 m!2719051))

(assert (=> b!2291465 m!2719051))

(declare-fun m!2719053 () Bool)

(assert (=> b!2291465 m!2719053))

(declare-fun m!2719055 () Bool)

(assert (=> b!2291470 m!2719055))

(assert (=> b!2291463 m!2719033))

(assert (=> b!2291463 m!2719035))

(assert (=> b!2291463 m!2719035))

(assert (=> b!2291463 m!2719037))

(assert (=> b!2291463 m!2719037))

(declare-fun m!2719057 () Bool)

(assert (=> b!2291463 m!2719057))

(assert (=> b!2291467 m!2719033))

(assert (=> b!2291467 m!2719035))

(assert (=> b!2291467 m!2719035))

(assert (=> b!2291467 m!2719037))

(assert (=> b!2291467 m!2719037))

(declare-fun m!2719059 () Bool)

(assert (=> b!2291467 m!2719059))

(declare-fun m!2719061 () Bool)

(assert (=> b!2291469 m!2719061))

(assert (=> b!2291250 d!677709))

(declare-fun d!677729 () Bool)

(assert (=> d!677729 (= (inv!36882 (tag!4857 otherR!12)) (= (mod (str.len (value!138278 (tag!4857 otherR!12))) 2) 0))))

(assert (=> b!2291249 d!677729))

(declare-fun d!677731 () Bool)

(declare-fun res!979969 () Bool)

(declare-fun e!1468340 () Bool)

(assert (=> d!677731 (=> (not res!979969) (not e!1468340))))

(assert (=> d!677731 (= res!979969 (semiInverseModEq!1770 (toChars!6016 (transformation!4367 otherR!12)) (toValue!6157 (transformation!4367 otherR!12))))))

(assert (=> d!677731 (= (inv!36885 (transformation!4367 otherR!12)) e!1468340)))

(declare-fun b!2291472 () Bool)

(assert (=> b!2291472 (= e!1468340 (equivClasses!1689 (toChars!6016 (transformation!4367 otherR!12)) (toValue!6157 (transformation!4367 otherR!12))))))

(assert (= (and d!677731 res!979969) b!2291472))

(declare-fun m!2719063 () Bool)

(assert (=> d!677731 m!2719063))

(declare-fun m!2719065 () Bool)

(assert (=> b!2291472 m!2719065))

(assert (=> b!2291249 d!677731))

(declare-fun d!677733 () Bool)

(declare-fun lt!850121 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!3665 (List!27381) (InoxSet Rule!8534))

(assert (=> d!677733 (= lt!850121 (select (content!3665 rules!1750) r!2363))))

(declare-fun e!1468346 () Bool)

(assert (=> d!677733 (= lt!850121 e!1468346)))

(declare-fun res!979975 () Bool)

(assert (=> d!677733 (=> (not res!979975) (not e!1468346))))

(assert (=> d!677733 (= res!979975 ((_ is Cons!27287) rules!1750))))

(assert (=> d!677733 (= (contains!4743 rules!1750 r!2363) lt!850121)))

(declare-fun b!2291477 () Bool)

(declare-fun e!1468345 () Bool)

(assert (=> b!2291477 (= e!1468346 e!1468345)))

(declare-fun res!979974 () Bool)

(assert (=> b!2291477 (=> res!979974 e!1468345)))

(assert (=> b!2291477 (= res!979974 (= (h!32688 rules!1750) r!2363))))

(declare-fun b!2291478 () Bool)

(assert (=> b!2291478 (= e!1468345 (contains!4743 (t!204673 rules!1750) r!2363))))

(assert (= (and d!677733 res!979975) b!2291477))

(assert (= (and b!2291477 (not res!979974)) b!2291478))

(declare-fun m!2719067 () Bool)

(assert (=> d!677733 m!2719067))

(declare-fun m!2719069 () Bool)

(assert (=> d!677733 m!2719069))

(declare-fun m!2719071 () Bool)

(assert (=> b!2291478 m!2719071))

(assert (=> b!2291248 d!677733))

(declare-fun d!677735 () Bool)

(assert (=> d!677735 (= (inv!36882 (tag!4857 (h!32688 rules!1750))) (= (mod (str.len (value!138278 (tag!4857 (h!32688 rules!1750)))) 2) 0))))

(assert (=> b!2291269 d!677735))

(declare-fun d!677737 () Bool)

(declare-fun res!979976 () Bool)

(declare-fun e!1468347 () Bool)

(assert (=> d!677737 (=> (not res!979976) (not e!1468347))))

(assert (=> d!677737 (= res!979976 (semiInverseModEq!1770 (toChars!6016 (transformation!4367 (h!32688 rules!1750))) (toValue!6157 (transformation!4367 (h!32688 rules!1750)))))))

(assert (=> d!677737 (= (inv!36885 (transformation!4367 (h!32688 rules!1750))) e!1468347)))

(declare-fun b!2291479 () Bool)

(assert (=> b!2291479 (= e!1468347 (equivClasses!1689 (toChars!6016 (transformation!4367 (h!32688 rules!1750))) (toValue!6157 (transformation!4367 (h!32688 rules!1750)))))))

(assert (= (and d!677737 res!979976) b!2291479))

(declare-fun m!2719073 () Bool)

(assert (=> d!677737 m!2719073))

(declare-fun m!2719075 () Bool)

(assert (=> b!2291479 m!2719075))

(assert (=> b!2291269 d!677737))

(declare-fun d!677739 () Bool)

(declare-fun res!979993 () Bool)

(declare-fun e!1468356 () Bool)

(assert (=> d!677739 (=> (not res!979993) (not e!1468356))))

(declare-fun rulesValid!1614 (LexerInterface!3964 List!27381) Bool)

(assert (=> d!677739 (= res!979993 (rulesValid!1614 thiss!16613 rules!1750))))

(assert (=> d!677739 (= (rulesInvariant!3466 thiss!16613 rules!1750) e!1468356)))

(declare-fun b!2291500 () Bool)

(declare-datatypes ((List!27384 0))(
  ( (Nil!27290) (Cons!27290 (h!32691 String!29749) (t!204772 List!27384)) )
))
(declare-fun noDuplicateTag!1612 (LexerInterface!3964 List!27381 List!27384) Bool)

(assert (=> b!2291500 (= e!1468356 (noDuplicateTag!1612 thiss!16613 rules!1750 Nil!27290))))

(assert (= (and d!677739 res!979993) b!2291500))

(declare-fun m!2719077 () Bool)

(assert (=> d!677739 m!2719077))

(declare-fun m!2719079 () Bool)

(assert (=> b!2291500 m!2719079))

(assert (=> b!2291268 d!677739))

(declare-fun b!2291501 () Bool)

(declare-fun res!979999 () Bool)

(declare-fun e!1468357 () Bool)

(assert (=> b!2291501 (=> (not res!979999) (not e!1468357))))

(assert (=> b!2291501 (= res!979999 (isEmpty!15543 (tail!3311 (list!10688 (charsOf!2755 (head!4996 tokens!456))))))))

(declare-fun b!2291502 () Bool)

(declare-fun res!979997 () Bool)

(declare-fun e!1468363 () Bool)

(assert (=> b!2291502 (=> res!979997 e!1468363)))

(assert (=> b!2291502 (= res!979997 (not (isEmpty!15543 (tail!3311 (list!10688 (charsOf!2755 (head!4996 tokens!456)))))))))

(declare-fun b!2291503 () Bool)

(assert (=> b!2291503 (= e!1468363 (not (= (head!4998 (list!10688 (charsOf!2755 (head!4996 tokens!456)))) (c!363263 (regex!4367 r!2363)))))))

(declare-fun b!2291504 () Bool)

(declare-fun e!1468359 () Bool)

(assert (=> b!2291504 (= e!1468359 (nullable!1868 (regex!4367 r!2363)))))

(declare-fun b!2291505 () Bool)

(assert (=> b!2291505 (= e!1468357 (= (head!4998 (list!10688 (charsOf!2755 (head!4996 tokens!456)))) (c!363263 (regex!4367 r!2363))))))

(declare-fun d!677741 () Bool)

(declare-fun e!1468358 () Bool)

(assert (=> d!677741 e!1468358))

(declare-fun c!363309 () Bool)

(assert (=> d!677741 (= c!363309 ((_ is EmptyExpr!6715) (regex!4367 r!2363)))))

(declare-fun lt!850132 () Bool)

(assert (=> d!677741 (= lt!850132 e!1468359)))

(declare-fun c!363308 () Bool)

(assert (=> d!677741 (= c!363308 (isEmpty!15543 (list!10688 (charsOf!2755 (head!4996 tokens!456)))))))

(assert (=> d!677741 (validRegex!2530 (regex!4367 r!2363))))

(assert (=> d!677741 (= (matchR!2972 (regex!4367 r!2363) (list!10688 (charsOf!2755 (head!4996 tokens!456)))) lt!850132)))

(declare-fun b!2291506 () Bool)

(declare-fun call!136660 () Bool)

(assert (=> b!2291506 (= e!1468358 (= lt!850132 call!136660))))

(declare-fun b!2291507 () Bool)

(declare-fun res!979994 () Bool)

(declare-fun e!1468361 () Bool)

(assert (=> b!2291507 (=> res!979994 e!1468361)))

(assert (=> b!2291507 (= res!979994 e!1468357)))

(declare-fun res!980001 () Bool)

(assert (=> b!2291507 (=> (not res!980001) (not e!1468357))))

(assert (=> b!2291507 (= res!980001 lt!850132)))

(declare-fun b!2291508 () Bool)

(declare-fun e!1468362 () Bool)

(assert (=> b!2291508 (= e!1468362 (not lt!850132))))

(declare-fun b!2291509 () Bool)

(declare-fun res!979998 () Bool)

(assert (=> b!2291509 (=> (not res!979998) (not e!1468357))))

(assert (=> b!2291509 (= res!979998 (not call!136660))))

(declare-fun b!2291510 () Bool)

(declare-fun e!1468360 () Bool)

(assert (=> b!2291510 (= e!1468361 e!1468360)))

(declare-fun res!979996 () Bool)

(assert (=> b!2291510 (=> (not res!979996) (not e!1468360))))

(assert (=> b!2291510 (= res!979996 (not lt!850132))))

(declare-fun b!2291511 () Bool)

(assert (=> b!2291511 (= e!1468358 e!1468362)))

(declare-fun c!363310 () Bool)

(assert (=> b!2291511 (= c!363310 ((_ is EmptyLang!6715) (regex!4367 r!2363)))))

(declare-fun b!2291512 () Bool)

(assert (=> b!2291512 (= e!1468360 e!1468363)))

(declare-fun res!979995 () Bool)

(assert (=> b!2291512 (=> res!979995 e!1468363)))

(assert (=> b!2291512 (= res!979995 call!136660)))

(declare-fun b!2291513 () Bool)

(declare-fun res!980000 () Bool)

(assert (=> b!2291513 (=> res!980000 e!1468361)))

(assert (=> b!2291513 (= res!980000 (not ((_ is ElementMatch!6715) (regex!4367 r!2363))))))

(assert (=> b!2291513 (= e!1468362 e!1468361)))

(declare-fun bm!136655 () Bool)

(assert (=> bm!136655 (= call!136660 (isEmpty!15543 (list!10688 (charsOf!2755 (head!4996 tokens!456)))))))

(declare-fun b!2291514 () Bool)

(assert (=> b!2291514 (= e!1468359 (matchR!2972 (derivativeStep!1528 (regex!4367 r!2363) (head!4998 (list!10688 (charsOf!2755 (head!4996 tokens!456))))) (tail!3311 (list!10688 (charsOf!2755 (head!4996 tokens!456))))))))

(assert (= (and d!677741 c!363308) b!2291504))

(assert (= (and d!677741 (not c!363308)) b!2291514))

(assert (= (and d!677741 c!363309) b!2291506))

(assert (= (and d!677741 (not c!363309)) b!2291511))

(assert (= (and b!2291511 c!363310) b!2291508))

(assert (= (and b!2291511 (not c!363310)) b!2291513))

(assert (= (and b!2291513 (not res!980000)) b!2291507))

(assert (= (and b!2291507 res!980001) b!2291509))

(assert (= (and b!2291509 res!979998) b!2291501))

(assert (= (and b!2291501 res!979999) b!2291505))

(assert (= (and b!2291507 (not res!979994)) b!2291510))

(assert (= (and b!2291510 res!979996) b!2291512))

(assert (= (and b!2291512 (not res!979995)) b!2291502))

(assert (= (and b!2291502 (not res!979997)) b!2291503))

(assert (= (or b!2291506 b!2291509 b!2291512) bm!136655))

(assert (=> b!2291502 m!2718815))

(declare-fun m!2719081 () Bool)

(assert (=> b!2291502 m!2719081))

(assert (=> b!2291502 m!2719081))

(declare-fun m!2719083 () Bool)

(assert (=> b!2291502 m!2719083))

(assert (=> b!2291503 m!2718815))

(declare-fun m!2719085 () Bool)

(assert (=> b!2291503 m!2719085))

(assert (=> b!2291501 m!2718815))

(assert (=> b!2291501 m!2719081))

(assert (=> b!2291501 m!2719081))

(assert (=> b!2291501 m!2719083))

(assert (=> d!677741 m!2718815))

(declare-fun m!2719087 () Bool)

(assert (=> d!677741 m!2719087))

(assert (=> d!677741 m!2718957))

(assert (=> b!2291504 m!2718959))

(assert (=> b!2291514 m!2718815))

(assert (=> b!2291514 m!2719085))

(assert (=> b!2291514 m!2719085))

(declare-fun m!2719089 () Bool)

(assert (=> b!2291514 m!2719089))

(assert (=> b!2291514 m!2718815))

(assert (=> b!2291514 m!2719081))

(assert (=> b!2291514 m!2719089))

(assert (=> b!2291514 m!2719081))

(declare-fun m!2719091 () Bool)

(assert (=> b!2291514 m!2719091))

(assert (=> b!2291505 m!2718815))

(assert (=> b!2291505 m!2719085))

(assert (=> bm!136655 m!2718815))

(assert (=> bm!136655 m!2719087))

(assert (=> b!2291247 d!677741))

(declare-fun d!677743 () Bool)

(declare-fun list!10692 (Conc!8882) List!27379)

(assert (=> d!677743 (= (list!10688 (charsOf!2755 (head!4996 tokens!456))) (list!10692 (c!363262 (charsOf!2755 (head!4996 tokens!456)))))))

(declare-fun bs!457048 () Bool)

(assert (= bs!457048 d!677743))

(declare-fun m!2719093 () Bool)

(assert (=> bs!457048 m!2719093))

(assert (=> b!2291247 d!677743))

(assert (=> b!2291247 d!677699))

(assert (=> b!2291247 d!677683))

(declare-fun b!2291554 () Bool)

(declare-fun e!1468385 () Bool)

(declare-fun e!1468384 () Bool)

(assert (=> b!2291554 (= e!1468385 e!1468384)))

(declare-fun c!363319 () Bool)

(assert (=> b!2291554 (= c!363319 ((_ is IntegerValue!13588) (value!138279 (h!32689 tokens!456))))))

(declare-fun d!677745 () Bool)

(declare-fun c!363320 () Bool)

(assert (=> d!677745 (= c!363320 ((_ is IntegerValue!13587) (value!138279 (h!32689 tokens!456))))))

(assert (=> d!677745 (= (inv!21 (value!138279 (h!32689 tokens!456))) e!1468385)))

(declare-fun b!2291555 () Bool)

(declare-fun inv!17 (TokenValue!4529) Bool)

(assert (=> b!2291555 (= e!1468384 (inv!17 (value!138279 (h!32689 tokens!456))))))

(declare-fun b!2291556 () Bool)

(declare-fun res!980025 () Bool)

(declare-fun e!1468386 () Bool)

(assert (=> b!2291556 (=> res!980025 e!1468386)))

(assert (=> b!2291556 (= res!980025 (not ((_ is IntegerValue!13589) (value!138279 (h!32689 tokens!456)))))))

(assert (=> b!2291556 (= e!1468384 e!1468386)))

(declare-fun b!2291557 () Bool)

(declare-fun inv!15 (TokenValue!4529) Bool)

(assert (=> b!2291557 (= e!1468386 (inv!15 (value!138279 (h!32689 tokens!456))))))

(declare-fun b!2291558 () Bool)

(declare-fun inv!16 (TokenValue!4529) Bool)

(assert (=> b!2291558 (= e!1468385 (inv!16 (value!138279 (h!32689 tokens!456))))))

(assert (= (and d!677745 c!363320) b!2291558))

(assert (= (and d!677745 (not c!363320)) b!2291554))

(assert (= (and b!2291554 c!363319) b!2291555))

(assert (= (and b!2291554 (not c!363319)) b!2291556))

(assert (= (and b!2291556 (not res!980025)) b!2291557))

(declare-fun m!2719141 () Bool)

(assert (=> b!2291555 m!2719141))

(declare-fun m!2719143 () Bool)

(assert (=> b!2291557 m!2719143))

(declare-fun m!2719145 () Bool)

(assert (=> b!2291558 m!2719145))

(assert (=> b!2291246 d!677745))

(declare-fun b!2291576 () Bool)

(declare-fun e!1468397 () Int)

(assert (=> b!2291576 (= e!1468397 0)))

(declare-fun d!677753 () Bool)

(declare-fun lt!850145 () Int)

(assert (=> d!677753 (>= lt!850145 0)))

(assert (=> d!677753 (= lt!850145 e!1468397)))

(declare-fun c!363329 () Bool)

(assert (=> d!677753 (= c!363329 (and ((_ is Cons!27287) rules!1750) (= (h!32688 rules!1750) r!2363)))))

(assert (=> d!677753 (contains!4743 rules!1750 r!2363)))

(assert (=> d!677753 (= (getIndex!380 rules!1750 r!2363) lt!850145)))

(declare-fun b!2291579 () Bool)

(declare-fun e!1468398 () Int)

(assert (=> b!2291579 (= e!1468398 (- 1))))

(declare-fun b!2291578 () Bool)

(assert (=> b!2291578 (= e!1468398 (+ 1 (getIndex!380 (t!204673 rules!1750) r!2363)))))

(declare-fun b!2291577 () Bool)

(assert (=> b!2291577 (= e!1468397 e!1468398)))

(declare-fun c!363328 () Bool)

(assert (=> b!2291577 (= c!363328 (and ((_ is Cons!27287) rules!1750) (not (= (h!32688 rules!1750) r!2363))))))

(assert (= (and d!677753 c!363329) b!2291576))

(assert (= (and d!677753 (not c!363329)) b!2291577))

(assert (= (and b!2291577 c!363328) b!2291578))

(assert (= (and b!2291577 (not c!363328)) b!2291579))

(assert (=> d!677753 m!2718825))

(declare-fun m!2719163 () Bool)

(assert (=> b!2291578 m!2719163))

(assert (=> b!2291267 d!677753))

(declare-fun b!2291580 () Bool)

(declare-fun e!1468399 () Int)

(assert (=> b!2291580 (= e!1468399 0)))

(declare-fun d!677761 () Bool)

(declare-fun lt!850146 () Int)

(assert (=> d!677761 (>= lt!850146 0)))

(assert (=> d!677761 (= lt!850146 e!1468399)))

(declare-fun c!363331 () Bool)

(assert (=> d!677761 (= c!363331 (and ((_ is Cons!27287) rules!1750) (= (h!32688 rules!1750) otherR!12)))))

(assert (=> d!677761 (contains!4743 rules!1750 otherR!12)))

(assert (=> d!677761 (= (getIndex!380 rules!1750 otherR!12) lt!850146)))

(declare-fun b!2291583 () Bool)

(declare-fun e!1468400 () Int)

(assert (=> b!2291583 (= e!1468400 (- 1))))

(declare-fun b!2291582 () Bool)

(assert (=> b!2291582 (= e!1468400 (+ 1 (getIndex!380 (t!204673 rules!1750) otherR!12)))))

(declare-fun b!2291581 () Bool)

(assert (=> b!2291581 (= e!1468399 e!1468400)))

(declare-fun c!363330 () Bool)

(assert (=> b!2291581 (= c!363330 (and ((_ is Cons!27287) rules!1750) (not (= (h!32688 rules!1750) otherR!12))))))

(assert (= (and d!677761 c!363331) b!2291580))

(assert (= (and d!677761 (not c!363331)) b!2291581))

(assert (= (and b!2291581 c!363330) b!2291582))

(assert (= (and b!2291581 (not c!363330)) b!2291583))

(assert (=> d!677761 m!2718905))

(declare-fun m!2719165 () Bool)

(assert (=> b!2291582 m!2719165))

(assert (=> b!2291267 d!677761))

(declare-fun d!677763 () Bool)

(declare-fun res!980032 () Bool)

(declare-fun e!1468406 () Bool)

(assert (=> d!677763 (=> (not res!980032) (not e!1468406))))

(assert (=> d!677763 (= res!980032 (validRegex!2530 (regex!4367 otherR!12)))))

(assert (=> d!677763 (= (ruleValid!1457 thiss!16613 otherR!12) e!1468406)))

(declare-fun b!2291594 () Bool)

(declare-fun res!980033 () Bool)

(assert (=> b!2291594 (=> (not res!980033) (not e!1468406))))

(assert (=> b!2291594 (= res!980033 (not (nullable!1868 (regex!4367 otherR!12))))))

(declare-fun b!2291595 () Bool)

(assert (=> b!2291595 (= e!1468406 (not (= (tag!4857 otherR!12) (String!29750 ""))))))

(assert (= (and d!677763 res!980032) b!2291594))

(assert (= (and b!2291594 res!980033) b!2291595))

(declare-fun m!2719173 () Bool)

(assert (=> d!677763 m!2719173))

(declare-fun m!2719175 () Bool)

(assert (=> b!2291594 m!2719175))

(assert (=> b!2291267 d!677763))

(declare-fun d!677767 () Bool)

(assert (=> d!677767 (ruleValid!1457 thiss!16613 otherR!12)))

(declare-fun lt!850155 () Unit!40164)

(declare-fun choose!13383 (LexerInterface!3964 Rule!8534 List!27381) Unit!40164)

(assert (=> d!677767 (= lt!850155 (choose!13383 thiss!16613 otherR!12 rules!1750))))

(assert (=> d!677767 (contains!4743 rules!1750 otherR!12)))

(assert (=> d!677767 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!862 thiss!16613 otherR!12 rules!1750) lt!850155)))

(declare-fun bs!457051 () Bool)

(assert (= bs!457051 d!677767))

(assert (=> bs!457051 m!2718887))

(declare-fun m!2719179 () Bool)

(assert (=> bs!457051 m!2719179))

(assert (=> bs!457051 m!2718905))

(assert (=> b!2291267 d!677767))

(declare-fun d!677771 () Bool)

(assert (=> d!677771 (= (inv!36882 (tag!4857 (rule!6703 (h!32689 tokens!456)))) (= (mod (str.len (value!138278 (tag!4857 (rule!6703 (h!32689 tokens!456))))) 2) 0))))

(assert (=> b!2291266 d!677771))

(declare-fun d!677773 () Bool)

(declare-fun res!980034 () Bool)

(declare-fun e!1468407 () Bool)

(assert (=> d!677773 (=> (not res!980034) (not e!1468407))))

(assert (=> d!677773 (= res!980034 (semiInverseModEq!1770 (toChars!6016 (transformation!4367 (rule!6703 (h!32689 tokens!456)))) (toValue!6157 (transformation!4367 (rule!6703 (h!32689 tokens!456))))))))

(assert (=> d!677773 (= (inv!36885 (transformation!4367 (rule!6703 (h!32689 tokens!456)))) e!1468407)))

(declare-fun b!2291596 () Bool)

(assert (=> b!2291596 (= e!1468407 (equivClasses!1689 (toChars!6016 (transformation!4367 (rule!6703 (h!32689 tokens!456)))) (toValue!6157 (transformation!4367 (rule!6703 (h!32689 tokens!456))))))))

(assert (= (and d!677773 res!980034) b!2291596))

(declare-fun m!2719181 () Bool)

(assert (=> d!677773 m!2719181))

(declare-fun m!2719183 () Bool)

(assert (=> b!2291596 m!2719183))

(assert (=> b!2291266 d!677773))

(declare-fun d!677775 () Bool)

(assert (=> d!677775 (= (isEmpty!15539 tokens!456) ((_ is Nil!27288) tokens!456))))

(assert (=> b!2291245 d!677775))

(declare-fun d!677779 () Bool)

(declare-fun list!10693 (Conc!8883) List!27382)

(assert (=> d!677779 (= (list!10689 (_1!16062 lt!850063)) (list!10693 (c!363264 (_1!16062 lt!850063))))))

(declare-fun bs!457053 () Bool)

(assert (= bs!457053 d!677779))

(declare-fun m!2719187 () Bool)

(assert (=> bs!457053 m!2719187))

(assert (=> b!2291263 d!677779))

(declare-fun d!677781 () Bool)

(assert (=> d!677781 (= (list!10688 (_2!16062 lt!850063)) (list!10692 (c!363262 (_2!16062 lt!850063))))))

(declare-fun bs!457054 () Bool)

(assert (= bs!457054 d!677781))

(declare-fun m!2719189 () Bool)

(assert (=> bs!457054 m!2719189))

(assert (=> b!2291263 d!677781))

(declare-fun e!1468439 () Bool)

(declare-fun b!2291641 () Bool)

(declare-fun lt!850181 () tuple2!27104)

(declare-fun lexList!1114 (LexerInterface!3964 List!27381 List!27379) tuple2!27106)

(assert (=> b!2291641 (= e!1468439 (= (list!10688 (_2!16062 lt!850181)) (_2!16063 (lexList!1114 thiss!16613 rules!1750 (list!10688 (seqFromList!3071 input!1722))))))))

(declare-fun b!2291642 () Bool)

(declare-fun res!980066 () Bool)

(assert (=> b!2291642 (=> (not res!980066) (not e!1468439))))

(assert (=> b!2291642 (= res!980066 (= (list!10689 (_1!16062 lt!850181)) (_1!16063 (lexList!1114 thiss!16613 rules!1750 (list!10688 (seqFromList!3071 input!1722))))))))

(declare-fun d!677783 () Bool)

(assert (=> d!677783 e!1468439))

(declare-fun res!980067 () Bool)

(assert (=> d!677783 (=> (not res!980067) (not e!1468439))))

(declare-fun e!1468437 () Bool)

(assert (=> d!677783 (= res!980067 e!1468437)))

(declare-fun c!363341 () Bool)

(declare-fun size!21486 (BalanceConc!17494) Int)

(assert (=> d!677783 (= c!363341 (> (size!21486 (_1!16062 lt!850181)) 0))))

(declare-fun lexTailRecV2!789 (LexerInterface!3964 List!27381 BalanceConc!17492 BalanceConc!17492 BalanceConc!17492 BalanceConc!17494) tuple2!27104)

(assert (=> d!677783 (= lt!850181 (lexTailRecV2!789 thiss!16613 rules!1750 (seqFromList!3071 input!1722) (BalanceConc!17493 Empty!8882) (seqFromList!3071 input!1722) (BalanceConc!17495 Empty!8883)))))

(assert (=> d!677783 (= (lex!1803 thiss!16613 rules!1750 (seqFromList!3071 input!1722)) lt!850181)))

(declare-fun b!2291643 () Bool)

(assert (=> b!2291643 (= e!1468437 (= (_2!16062 lt!850181) (seqFromList!3071 input!1722)))))

(declare-fun b!2291644 () Bool)

(declare-fun e!1468438 () Bool)

(declare-fun isEmpty!15546 (BalanceConc!17494) Bool)

(assert (=> b!2291644 (= e!1468438 (not (isEmpty!15546 (_1!16062 lt!850181))))))

(declare-fun b!2291645 () Bool)

(assert (=> b!2291645 (= e!1468437 e!1468438)))

(declare-fun res!980065 () Bool)

(assert (=> b!2291645 (= res!980065 (< (size!21482 (_2!16062 lt!850181)) (size!21482 (seqFromList!3071 input!1722))))))

(assert (=> b!2291645 (=> (not res!980065) (not e!1468438))))

(assert (= (and d!677783 c!363341) b!2291645))

(assert (= (and d!677783 (not c!363341)) b!2291643))

(assert (= (and b!2291645 res!980065) b!2291644))

(assert (= (and d!677783 res!980067) b!2291642))

(assert (= (and b!2291642 res!980066) b!2291641))

(declare-fun m!2719235 () Bool)

(assert (=> b!2291645 m!2719235))

(assert (=> b!2291645 m!2718879))

(declare-fun m!2719237 () Bool)

(assert (=> b!2291645 m!2719237))

(declare-fun m!2719239 () Bool)

(assert (=> d!677783 m!2719239))

(assert (=> d!677783 m!2718879))

(assert (=> d!677783 m!2718879))

(declare-fun m!2719241 () Bool)

(assert (=> d!677783 m!2719241))

(declare-fun m!2719243 () Bool)

(assert (=> b!2291644 m!2719243))

(declare-fun m!2719245 () Bool)

(assert (=> b!2291641 m!2719245))

(assert (=> b!2291641 m!2718879))

(declare-fun m!2719247 () Bool)

(assert (=> b!2291641 m!2719247))

(assert (=> b!2291641 m!2719247))

(declare-fun m!2719249 () Bool)

(assert (=> b!2291641 m!2719249))

(declare-fun m!2719251 () Bool)

(assert (=> b!2291642 m!2719251))

(assert (=> b!2291642 m!2718879))

(assert (=> b!2291642 m!2719247))

(assert (=> b!2291642 m!2719247))

(assert (=> b!2291642 m!2719249))

(assert (=> b!2291263 d!677783))

(declare-fun d!677807 () Bool)

(declare-fun fromListB!1380 (List!27379) BalanceConc!17492)

(assert (=> d!677807 (= (seqFromList!3071 input!1722) (fromListB!1380 input!1722))))

(declare-fun bs!457059 () Bool)

(assert (= bs!457059 d!677807))

(declare-fun m!2719253 () Bool)

(assert (=> bs!457059 m!2719253))

(assert (=> b!2291263 d!677807))

(declare-fun d!677809 () Bool)

(declare-fun lt!850190 () List!27379)

(assert (=> d!677809 (= (++!6667 lt!850069 lt!850190) input!1722)))

(declare-fun e!1468450 () List!27379)

(assert (=> d!677809 (= lt!850190 e!1468450)))

(declare-fun c!363346 () Bool)

(assert (=> d!677809 (= c!363346 ((_ is Cons!27285) lt!850069))))

(assert (=> d!677809 (>= (size!21481 input!1722) (size!21481 lt!850069))))

(assert (=> d!677809 (= (getSuffix!1148 input!1722 lt!850069) lt!850190)))

(declare-fun b!2291668 () Bool)

(assert (=> b!2291668 (= e!1468450 (getSuffix!1148 (tail!3311 input!1722) (t!204671 lt!850069)))))

(declare-fun b!2291669 () Bool)

(assert (=> b!2291669 (= e!1468450 input!1722)))

(assert (= (and d!677809 c!363346) b!2291668))

(assert (= (and d!677809 (not c!363346)) b!2291669))

(declare-fun m!2719255 () Bool)

(assert (=> d!677809 m!2719255))

(assert (=> d!677809 m!2719045))

(assert (=> d!677809 m!2718845))

(declare-fun m!2719257 () Bool)

(assert (=> b!2291668 m!2719257))

(assert (=> b!2291668 m!2719257))

(declare-fun m!2719259 () Bool)

(assert (=> b!2291668 m!2719259))

(assert (=> b!2291262 d!677809))

(declare-fun b!2291688 () Bool)

(declare-fun res!980098 () Bool)

(declare-fun e!1468463 () Bool)

(assert (=> b!2291688 (=> (not res!980098) (not e!1468463))))

(assert (=> b!2291688 (= res!980098 (= (head!4998 lt!850069) (head!4998 (++!6667 lt!850069 (_2!16061 lt!850065)))))))

(declare-fun d!677811 () Bool)

(declare-fun e!1468462 () Bool)

(assert (=> d!677811 e!1468462))

(declare-fun res!980100 () Bool)

(assert (=> d!677811 (=> res!980100 e!1468462)))

(declare-fun lt!850198 () Bool)

(assert (=> d!677811 (= res!980100 (not lt!850198))))

(declare-fun e!1468461 () Bool)

(assert (=> d!677811 (= lt!850198 e!1468461)))

(declare-fun res!980097 () Bool)

(assert (=> d!677811 (=> res!980097 e!1468461)))

(assert (=> d!677811 (= res!980097 ((_ is Nil!27285) lt!850069))))

(assert (=> d!677811 (= (isPrefix!2357 lt!850069 (++!6667 lt!850069 (_2!16061 lt!850065))) lt!850198)))

(declare-fun b!2291687 () Bool)

(assert (=> b!2291687 (= e!1468461 e!1468463)))

(declare-fun res!980099 () Bool)

(assert (=> b!2291687 (=> (not res!980099) (not e!1468463))))

(assert (=> b!2291687 (= res!980099 (not ((_ is Nil!27285) (++!6667 lt!850069 (_2!16061 lt!850065)))))))

(declare-fun b!2291689 () Bool)

(assert (=> b!2291689 (= e!1468463 (isPrefix!2357 (tail!3311 lt!850069) (tail!3311 (++!6667 lt!850069 (_2!16061 lt!850065)))))))

(declare-fun b!2291690 () Bool)

(assert (=> b!2291690 (= e!1468462 (>= (size!21481 (++!6667 lt!850069 (_2!16061 lt!850065))) (size!21481 lt!850069)))))

(assert (= (and d!677811 (not res!980097)) b!2291687))

(assert (= (and b!2291687 res!980099) b!2291688))

(assert (= (and b!2291688 res!980098) b!2291689))

(assert (= (and d!677811 (not res!980100)) b!2291690))

(assert (=> b!2291688 m!2718953))

(assert (=> b!2291688 m!2718847))

(declare-fun m!2719293 () Bool)

(assert (=> b!2291688 m!2719293))

(assert (=> b!2291689 m!2718949))

(assert (=> b!2291689 m!2718847))

(declare-fun m!2719297 () Bool)

(assert (=> b!2291689 m!2719297))

(assert (=> b!2291689 m!2718949))

(assert (=> b!2291689 m!2719297))

(declare-fun m!2719301 () Bool)

(assert (=> b!2291689 m!2719301))

(assert (=> b!2291690 m!2718847))

(declare-fun m!2719305 () Bool)

(assert (=> b!2291690 m!2719305))

(assert (=> b!2291690 m!2718845))

(assert (=> b!2291262 d!677811))

(declare-fun d!677813 () Bool)

(declare-fun lt!850199 () Int)

(assert (=> d!677813 (>= lt!850199 0)))

(declare-fun e!1468464 () Int)

(assert (=> d!677813 (= lt!850199 e!1468464)))

(declare-fun c!363348 () Bool)

(assert (=> d!677813 (= c!363348 ((_ is Nil!27285) lt!850069))))

(assert (=> d!677813 (= (size!21481 lt!850069) lt!850199)))

(declare-fun b!2291691 () Bool)

(assert (=> b!2291691 (= e!1468464 0)))

(declare-fun b!2291692 () Bool)

(assert (=> b!2291692 (= e!1468464 (+ 1 (size!21481 (t!204671 lt!850069))))))

(assert (= (and d!677813 c!363348) b!2291691))

(assert (= (and d!677813 (not c!363348)) b!2291692))

(declare-fun m!2719309 () Bool)

(assert (=> b!2291692 m!2719309))

(assert (=> b!2291262 d!677813))

(assert (=> b!2291262 d!677701))

(declare-fun d!677815 () Bool)

(assert (=> d!677815 (= (list!10688 (charsOf!2755 (h!32689 tokens!456))) (list!10692 (c!363262 (charsOf!2755 (h!32689 tokens!456)))))))

(declare-fun bs!457060 () Bool)

(assert (= bs!457060 d!677815))

(declare-fun m!2719313 () Bool)

(assert (=> bs!457060 m!2719313))

(assert (=> b!2291262 d!677815))

(declare-fun d!677819 () Bool)

(assert (=> d!677819 (isPrefix!2357 lt!850069 (++!6667 lt!850069 (_2!16061 lt!850065)))))

(declare-fun lt!850205 () Unit!40164)

(declare-fun choose!13385 (List!27379 List!27379) Unit!40164)

(assert (=> d!677819 (= lt!850205 (choose!13385 lt!850069 (_2!16061 lt!850065)))))

(assert (=> d!677819 (= (lemmaConcatTwoListThenFirstIsPrefix!1562 lt!850069 (_2!16061 lt!850065)) lt!850205)))

(declare-fun bs!457061 () Bool)

(assert (= bs!457061 d!677819))

(assert (=> bs!457061 m!2718847))

(assert (=> bs!457061 m!2718847))

(assert (=> bs!457061 m!2718859))

(declare-fun m!2719317 () Bool)

(assert (=> bs!457061 m!2719317))

(assert (=> b!2291262 d!677819))

(declare-fun d!677823 () Bool)

(declare-fun e!1468473 () Bool)

(assert (=> d!677823 e!1468473))

(declare-fun res!980110 () Bool)

(assert (=> d!677823 (=> (not res!980110) (not e!1468473))))

(declare-fun lt!850211 () List!27379)

(declare-fun content!3667 (List!27379) (InoxSet C!13576))

(assert (=> d!677823 (= res!980110 (= (content!3667 lt!850211) ((_ map or) (content!3667 lt!850069) (content!3667 (_2!16061 lt!850065)))))))

(declare-fun e!1468472 () List!27379)

(assert (=> d!677823 (= lt!850211 e!1468472)))

(declare-fun c!363352 () Bool)

(assert (=> d!677823 (= c!363352 ((_ is Nil!27285) lt!850069))))

(assert (=> d!677823 (= (++!6667 lt!850069 (_2!16061 lt!850065)) lt!850211)))

(declare-fun b!2291707 () Bool)

(declare-fun res!980109 () Bool)

(assert (=> b!2291707 (=> (not res!980109) (not e!1468473))))

(assert (=> b!2291707 (= res!980109 (= (size!21481 lt!850211) (+ (size!21481 lt!850069) (size!21481 (_2!16061 lt!850065)))))))

(declare-fun b!2291706 () Bool)

(assert (=> b!2291706 (= e!1468472 (Cons!27285 (h!32686 lt!850069) (++!6667 (t!204671 lt!850069) (_2!16061 lt!850065))))))

(declare-fun b!2291708 () Bool)

(assert (=> b!2291708 (= e!1468473 (or (not (= (_2!16061 lt!850065) Nil!27285)) (= lt!850211 lt!850069)))))

(declare-fun b!2291705 () Bool)

(assert (=> b!2291705 (= e!1468472 (_2!16061 lt!850065))))

(assert (= (and d!677823 c!363352) b!2291705))

(assert (= (and d!677823 (not c!363352)) b!2291706))

(assert (= (and d!677823 res!980110) b!2291707))

(assert (= (and b!2291707 res!980109) b!2291708))

(declare-fun m!2719321 () Bool)

(assert (=> d!677823 m!2719321))

(declare-fun m!2719323 () Bool)

(assert (=> d!677823 m!2719323))

(declare-fun m!2719325 () Bool)

(assert (=> d!677823 m!2719325))

(declare-fun m!2719327 () Bool)

(assert (=> b!2291707 m!2719327))

(assert (=> b!2291707 m!2718845))

(declare-fun m!2719329 () Bool)

(assert (=> b!2291707 m!2719329))

(declare-fun m!2719331 () Bool)

(assert (=> b!2291706 m!2719331))

(assert (=> b!2291262 d!677823))

(declare-fun d!677827 () Bool)

(assert (=> d!677827 (= (_2!16061 lt!850065) lt!850071)))

(declare-fun lt!850214 () Unit!40164)

(declare-fun choose!13386 (List!27379 List!27379 List!27379 List!27379 List!27379) Unit!40164)

(assert (=> d!677827 (= lt!850214 (choose!13386 lt!850069 (_2!16061 lt!850065) lt!850069 lt!850071 input!1722))))

(assert (=> d!677827 (isPrefix!2357 lt!850069 input!1722)))

(assert (=> d!677827 (= (lemmaSamePrefixThenSameSuffix!1058 lt!850069 (_2!16061 lt!850065) lt!850069 lt!850071 input!1722) lt!850214)))

(declare-fun bs!457063 () Bool)

(assert (= bs!457063 d!677827))

(declare-fun m!2719333 () Bool)

(assert (=> bs!457063 m!2719333))

(assert (=> bs!457063 m!2718897))

(assert (=> b!2291262 d!677827))

(declare-fun d!677829 () Bool)

(declare-fun lt!850215 () BalanceConc!17492)

(assert (=> d!677829 (= (list!10688 lt!850215) (originalCharacters!5137 (h!32689 tokens!456)))))

(assert (=> d!677829 (= lt!850215 (dynLambda!11843 (toChars!6016 (transformation!4367 (rule!6703 (h!32689 tokens!456)))) (value!138279 (h!32689 tokens!456))))))

(assert (=> d!677829 (= (charsOf!2755 (h!32689 tokens!456)) lt!850215)))

(declare-fun b_lambda!72999 () Bool)

(assert (=> (not b_lambda!72999) (not d!677829)))

(declare-fun t!204708 () Bool)

(declare-fun tb!136575 () Bool)

(assert (=> (and b!2291253 (= (toChars!6016 (transformation!4367 r!2363)) (toChars!6016 (transformation!4367 (rule!6703 (h!32689 tokens!456))))) t!204708) tb!136575))

(declare-fun b!2291709 () Bool)

(declare-fun e!1468474 () Bool)

(declare-fun tp!726509 () Bool)

(assert (=> b!2291709 (= e!1468474 (and (inv!36889 (c!363262 (dynLambda!11843 (toChars!6016 (transformation!4367 (rule!6703 (h!32689 tokens!456)))) (value!138279 (h!32689 tokens!456))))) tp!726509))))

(declare-fun result!166540 () Bool)

(assert (=> tb!136575 (= result!166540 (and (inv!36890 (dynLambda!11843 (toChars!6016 (transformation!4367 (rule!6703 (h!32689 tokens!456)))) (value!138279 (h!32689 tokens!456)))) e!1468474))))

(assert (= tb!136575 b!2291709))

(declare-fun m!2719335 () Bool)

(assert (=> b!2291709 m!2719335))

(declare-fun m!2719337 () Bool)

(assert (=> tb!136575 m!2719337))

(assert (=> d!677829 t!204708))

(declare-fun b_and!181929 () Bool)

(assert (= b_and!181897 (and (=> t!204708 result!166540) b_and!181929)))

(declare-fun t!204710 () Bool)

(declare-fun tb!136577 () Bool)

(assert (=> (and b!2291260 (= (toChars!6016 (transformation!4367 (rule!6703 (h!32689 tokens!456)))) (toChars!6016 (transformation!4367 (rule!6703 (h!32689 tokens!456))))) t!204710) tb!136577))

(declare-fun result!166542 () Bool)

(assert (= result!166542 result!166540))

(assert (=> d!677829 t!204710))

(declare-fun b_and!181931 () Bool)

(assert (= b_and!181899 (and (=> t!204710 result!166542) b_and!181931)))

(declare-fun t!204712 () Bool)

(declare-fun tb!136579 () Bool)

(assert (=> (and b!2291255 (= (toChars!6016 (transformation!4367 (h!32688 rules!1750))) (toChars!6016 (transformation!4367 (rule!6703 (h!32689 tokens!456))))) t!204712) tb!136579))

(declare-fun result!166544 () Bool)

(assert (= result!166544 result!166540))

(assert (=> d!677829 t!204712))

(declare-fun b_and!181933 () Bool)

(assert (= b_and!181901 (and (=> t!204712 result!166544) b_and!181933)))

(declare-fun t!204714 () Bool)

(declare-fun tb!136581 () Bool)

(assert (=> (and b!2291243 (= (toChars!6016 (transformation!4367 otherR!12)) (toChars!6016 (transformation!4367 (rule!6703 (h!32689 tokens!456))))) t!204714) tb!136581))

(declare-fun result!166546 () Bool)

(assert (= result!166546 result!166540))

(assert (=> d!677829 t!204714))

(declare-fun b_and!181935 () Bool)

(assert (= b_and!181903 (and (=> t!204714 result!166546) b_and!181935)))

(declare-fun m!2719339 () Bool)

(assert (=> d!677829 m!2719339))

(declare-fun m!2719341 () Bool)

(assert (=> d!677829 m!2719341))

(assert (=> b!2291262 d!677829))

(declare-fun b!2291711 () Bool)

(declare-fun res!980112 () Bool)

(declare-fun e!1468477 () Bool)

(assert (=> b!2291711 (=> (not res!980112) (not e!1468477))))

(assert (=> b!2291711 (= res!980112 (= (head!4998 lt!850069) (head!4998 input!1722)))))

(declare-fun d!677831 () Bool)

(declare-fun e!1468476 () Bool)

(assert (=> d!677831 e!1468476))

(declare-fun res!980114 () Bool)

(assert (=> d!677831 (=> res!980114 e!1468476)))

(declare-fun lt!850216 () Bool)

(assert (=> d!677831 (= res!980114 (not lt!850216))))

(declare-fun e!1468475 () Bool)

(assert (=> d!677831 (= lt!850216 e!1468475)))

(declare-fun res!980111 () Bool)

(assert (=> d!677831 (=> res!980111 e!1468475)))

(assert (=> d!677831 (= res!980111 ((_ is Nil!27285) lt!850069))))

(assert (=> d!677831 (= (isPrefix!2357 lt!850069 input!1722) lt!850216)))

(declare-fun b!2291710 () Bool)

(assert (=> b!2291710 (= e!1468475 e!1468477)))

(declare-fun res!980113 () Bool)

(assert (=> b!2291710 (=> (not res!980113) (not e!1468477))))

(assert (=> b!2291710 (= res!980113 (not ((_ is Nil!27285) input!1722)))))

(declare-fun b!2291712 () Bool)

(assert (=> b!2291712 (= e!1468477 (isPrefix!2357 (tail!3311 lt!850069) (tail!3311 input!1722)))))

(declare-fun b!2291713 () Bool)

(assert (=> b!2291713 (= e!1468476 (>= (size!21481 input!1722) (size!21481 lt!850069)))))

(assert (= (and d!677831 (not res!980111)) b!2291710))

(assert (= (and b!2291710 res!980113) b!2291711))

(assert (= (and b!2291711 res!980112) b!2291712))

(assert (= (and d!677831 (not res!980114)) b!2291713))

(assert (=> b!2291711 m!2718953))

(declare-fun m!2719343 () Bool)

(assert (=> b!2291711 m!2719343))

(assert (=> b!2291712 m!2718949))

(assert (=> b!2291712 m!2719257))

(assert (=> b!2291712 m!2718949))

(assert (=> b!2291712 m!2719257))

(declare-fun m!2719345 () Bool)

(assert (=> b!2291712 m!2719345))

(assert (=> b!2291713 m!2719045))

(assert (=> b!2291713 m!2718845))

(assert (=> b!2291241 d!677831))

(declare-fun d!677833 () Bool)

(declare-fun dynLambda!11848 (Int BalanceConc!17492) TokenValue!4529)

(assert (=> d!677833 (= (apply!6639 (transformation!4367 r!2363) lt!850059) (dynLambda!11848 (toValue!6157 (transformation!4367 r!2363)) lt!850059))))

(declare-fun b_lambda!73001 () Bool)

(assert (=> (not b_lambda!73001) (not d!677833)))

(declare-fun t!204716 () Bool)

(declare-fun tb!136583 () Bool)

(assert (=> (and b!2291253 (= (toValue!6157 (transformation!4367 r!2363)) (toValue!6157 (transformation!4367 r!2363))) t!204716) tb!136583))

(declare-fun result!166548 () Bool)

(assert (=> tb!136583 (= result!166548 (inv!21 (dynLambda!11848 (toValue!6157 (transformation!4367 r!2363)) lt!850059)))))

(declare-fun m!2719347 () Bool)

(assert (=> tb!136583 m!2719347))

(assert (=> d!677833 t!204716))

(declare-fun b_and!181937 () Bool)

(assert (= b_and!181873 (and (=> t!204716 result!166548) b_and!181937)))

(declare-fun t!204718 () Bool)

(declare-fun tb!136585 () Bool)

(assert (=> (and b!2291260 (= (toValue!6157 (transformation!4367 (rule!6703 (h!32689 tokens!456)))) (toValue!6157 (transformation!4367 r!2363))) t!204718) tb!136585))

(declare-fun result!166552 () Bool)

(assert (= result!166552 result!166548))

(assert (=> d!677833 t!204718))

(declare-fun b_and!181939 () Bool)

(assert (= b_and!181877 (and (=> t!204718 result!166552) b_and!181939)))

(declare-fun t!204720 () Bool)

(declare-fun tb!136587 () Bool)

(assert (=> (and b!2291255 (= (toValue!6157 (transformation!4367 (h!32688 rules!1750))) (toValue!6157 (transformation!4367 r!2363))) t!204720) tb!136587))

(declare-fun result!166554 () Bool)

(assert (= result!166554 result!166548))

(assert (=> d!677833 t!204720))

(declare-fun b_and!181941 () Bool)

(assert (= b_and!181881 (and (=> t!204720 result!166554) b_and!181941)))

(declare-fun t!204722 () Bool)

(declare-fun tb!136589 () Bool)

(assert (=> (and b!2291243 (= (toValue!6157 (transformation!4367 otherR!12)) (toValue!6157 (transformation!4367 r!2363))) t!204722) tb!136589))

(declare-fun result!166556 () Bool)

(assert (= result!166556 result!166548))

(assert (=> d!677833 t!204722))

(declare-fun b_and!181943 () Bool)

(assert (= b_and!181885 (and (=> t!204722 result!166556) b_and!181943)))

(declare-fun m!2719349 () Bool)

(assert (=> d!677833 m!2719349))

(assert (=> b!2291241 d!677833))

(declare-fun d!677835 () Bool)

(assert (=> d!677835 (= (seqFromList!3071 lt!850069) (fromListB!1380 lt!850069))))

(declare-fun bs!457064 () Bool)

(assert (= bs!457064 d!677835))

(declare-fun m!2719351 () Bool)

(assert (=> bs!457064 m!2719351))

(assert (=> b!2291241 d!677835))

(declare-fun b!2291734 () Bool)

(declare-fun e!1468489 () Bool)

(declare-fun e!1468492 () Bool)

(assert (=> b!2291734 (= e!1468489 e!1468492)))

(declare-fun res!980134 () Bool)

(assert (=> b!2291734 (=> (not res!980134) (not e!1468492))))

(declare-fun lt!850231 () Option!5357)

(assert (=> b!2291734 (= res!980134 (matchR!2972 (regex!4367 r!2363) (list!10688 (charsOf!2755 (_1!16061 (get!8230 lt!850231))))))))

(declare-fun b!2291735 () Bool)

(declare-fun e!1468491 () Option!5357)

(assert (=> b!2291735 (= e!1468491 None!5356)))

(declare-fun b!2291736 () Bool)

(declare-fun e!1468490 () Bool)

(declare-datatypes ((tuple2!27110 0))(
  ( (tuple2!27111 (_1!16065 List!27379) (_2!16065 List!27379)) )
))
(declare-fun findLongestMatchInner!723 (Regex!6715 List!27379 Int List!27379 List!27379 Int) tuple2!27110)

(assert (=> b!2291736 (= e!1468490 (matchR!2972 (regex!4367 r!2363) (_1!16065 (findLongestMatchInner!723 (regex!4367 r!2363) Nil!27285 (size!21481 Nil!27285) input!1722 input!1722 (size!21481 input!1722)))))))

(declare-fun b!2291737 () Bool)

(assert (=> b!2291737 (= e!1468492 (= (size!21480 (_1!16061 (get!8230 lt!850231))) (size!21481 (originalCharacters!5137 (_1!16061 (get!8230 lt!850231))))))))

(declare-fun b!2291739 () Bool)

(declare-fun res!980133 () Bool)

(assert (=> b!2291739 (=> (not res!980133) (not e!1468492))))

(assert (=> b!2291739 (= res!980133 (= (value!138279 (_1!16061 (get!8230 lt!850231))) (apply!6639 (transformation!4367 (rule!6703 (_1!16061 (get!8230 lt!850231)))) (seqFromList!3071 (originalCharacters!5137 (_1!16061 (get!8230 lt!850231)))))))))

(declare-fun b!2291740 () Bool)

(declare-fun res!980129 () Bool)

(assert (=> b!2291740 (=> (not res!980129) (not e!1468492))))

(assert (=> b!2291740 (= res!980129 (= (rule!6703 (_1!16061 (get!8230 lt!850231))) r!2363))))

(declare-fun b!2291741 () Bool)

(declare-fun lt!850228 () tuple2!27110)

(assert (=> b!2291741 (= e!1468491 (Some!5356 (tuple2!27103 (Token!8213 (apply!6639 (transformation!4367 r!2363) (seqFromList!3071 (_1!16065 lt!850228))) r!2363 (size!21482 (seqFromList!3071 (_1!16065 lt!850228))) (_1!16065 lt!850228)) (_2!16065 lt!850228))))))

(declare-fun lt!850229 () Unit!40164)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!696 (Regex!6715 List!27379) Unit!40164)

(assert (=> b!2291741 (= lt!850229 (longestMatchIsAcceptedByMatchOrIsEmpty!696 (regex!4367 r!2363) input!1722))))

(declare-fun res!980132 () Bool)

(assert (=> b!2291741 (= res!980132 (isEmpty!15543 (_1!16065 (findLongestMatchInner!723 (regex!4367 r!2363) Nil!27285 (size!21481 Nil!27285) input!1722 input!1722 (size!21481 input!1722)))))))

(assert (=> b!2291741 (=> res!980132 e!1468490)))

(assert (=> b!2291741 e!1468490))

(declare-fun lt!850227 () Unit!40164)

(assert (=> b!2291741 (= lt!850227 lt!850229)))

(declare-fun lt!850230 () Unit!40164)

(assert (=> b!2291741 (= lt!850230 (lemmaSemiInverse!1066 (transformation!4367 r!2363) (seqFromList!3071 (_1!16065 lt!850228))))))

(declare-fun b!2291742 () Bool)

(declare-fun res!980130 () Bool)

(assert (=> b!2291742 (=> (not res!980130) (not e!1468492))))

(assert (=> b!2291742 (= res!980130 (< (size!21481 (_2!16061 (get!8230 lt!850231))) (size!21481 input!1722)))))

(declare-fun d!677837 () Bool)

(assert (=> d!677837 e!1468489))

(declare-fun res!980135 () Bool)

(assert (=> d!677837 (=> res!980135 e!1468489)))

(assert (=> d!677837 (= res!980135 (isEmpty!15545 lt!850231))))

(assert (=> d!677837 (= lt!850231 e!1468491)))

(declare-fun c!363355 () Bool)

(assert (=> d!677837 (= c!363355 (isEmpty!15543 (_1!16065 lt!850228)))))

(declare-fun findLongestMatch!652 (Regex!6715 List!27379) tuple2!27110)

(assert (=> d!677837 (= lt!850228 (findLongestMatch!652 (regex!4367 r!2363) input!1722))))

(assert (=> d!677837 (ruleValid!1457 thiss!16613 r!2363)))

(assert (=> d!677837 (= (maxPrefixOneRule!1398 thiss!16613 r!2363 input!1722) lt!850231)))

(declare-fun b!2291738 () Bool)

(declare-fun res!980131 () Bool)

(assert (=> b!2291738 (=> (not res!980131) (not e!1468492))))

(assert (=> b!2291738 (= res!980131 (= (++!6667 (list!10688 (charsOf!2755 (_1!16061 (get!8230 lt!850231)))) (_2!16061 (get!8230 lt!850231))) input!1722))))

(assert (= (and d!677837 c!363355) b!2291735))

(assert (= (and d!677837 (not c!363355)) b!2291741))

(assert (= (and b!2291741 (not res!980132)) b!2291736))

(assert (= (and d!677837 (not res!980135)) b!2291734))

(assert (= (and b!2291734 res!980134) b!2291738))

(assert (= (and b!2291738 res!980131) b!2291742))

(assert (= (and b!2291742 res!980130) b!2291740))

(assert (= (and b!2291740 res!980129) b!2291739))

(assert (= (and b!2291739 res!980133) b!2291737))

(declare-fun m!2719353 () Bool)

(assert (=> b!2291742 m!2719353))

(declare-fun m!2719355 () Bool)

(assert (=> b!2291742 m!2719355))

(assert (=> b!2291742 m!2719045))

(assert (=> b!2291737 m!2719353))

(declare-fun m!2719357 () Bool)

(assert (=> b!2291737 m!2719357))

(declare-fun m!2719359 () Bool)

(assert (=> d!677837 m!2719359))

(declare-fun m!2719361 () Bool)

(assert (=> d!677837 m!2719361))

(declare-fun m!2719363 () Bool)

(assert (=> d!677837 m!2719363))

(assert (=> d!677837 m!2718827))

(assert (=> b!2291734 m!2719353))

(declare-fun m!2719365 () Bool)

(assert (=> b!2291734 m!2719365))

(assert (=> b!2291734 m!2719365))

(declare-fun m!2719367 () Bool)

(assert (=> b!2291734 m!2719367))

(assert (=> b!2291734 m!2719367))

(declare-fun m!2719369 () Bool)

(assert (=> b!2291734 m!2719369))

(declare-fun m!2719371 () Bool)

(assert (=> b!2291741 m!2719371))

(declare-fun m!2719373 () Bool)

(assert (=> b!2291741 m!2719373))

(assert (=> b!2291741 m!2719045))

(declare-fun m!2719375 () Bool)

(assert (=> b!2291741 m!2719375))

(declare-fun m!2719377 () Bool)

(assert (=> b!2291741 m!2719377))

(assert (=> b!2291741 m!2719375))

(declare-fun m!2719379 () Bool)

(assert (=> b!2291741 m!2719379))

(assert (=> b!2291741 m!2719371))

(assert (=> b!2291741 m!2719045))

(declare-fun m!2719381 () Bool)

(assert (=> b!2291741 m!2719381))

(assert (=> b!2291741 m!2719375))

(declare-fun m!2719383 () Bool)

(assert (=> b!2291741 m!2719383))

(assert (=> b!2291741 m!2719375))

(declare-fun m!2719385 () Bool)

(assert (=> b!2291741 m!2719385))

(assert (=> b!2291736 m!2719371))

(assert (=> b!2291736 m!2719045))

(assert (=> b!2291736 m!2719371))

(assert (=> b!2291736 m!2719045))

(assert (=> b!2291736 m!2719381))

(declare-fun m!2719387 () Bool)

(assert (=> b!2291736 m!2719387))

(assert (=> b!2291739 m!2719353))

(declare-fun m!2719389 () Bool)

(assert (=> b!2291739 m!2719389))

(assert (=> b!2291739 m!2719389))

(declare-fun m!2719391 () Bool)

(assert (=> b!2291739 m!2719391))

(assert (=> b!2291738 m!2719353))

(assert (=> b!2291738 m!2719365))

(assert (=> b!2291738 m!2719365))

(assert (=> b!2291738 m!2719367))

(assert (=> b!2291738 m!2719367))

(declare-fun m!2719393 () Bool)

(assert (=> b!2291738 m!2719393))

(assert (=> b!2291740 m!2719353))

(assert (=> b!2291241 d!677837))

(declare-fun d!677839 () Bool)

(assert (=> d!677839 (= (maxPrefixOneRule!1398 thiss!16613 r!2363 input!1722) (Some!5356 (tuple2!27103 (Token!8213 (apply!6639 (transformation!4367 r!2363) (seqFromList!3071 lt!850069)) r!2363 (size!21481 lt!850069) lt!850069) (_2!16061 lt!850065))))))

(declare-fun lt!850234 () Unit!40164)

(declare-fun choose!13388 (LexerInterface!3964 List!27381 List!27379 List!27379 List!27379 Rule!8534) Unit!40164)

(assert (=> d!677839 (= lt!850234 (choose!13388 thiss!16613 rules!1750 lt!850069 input!1722 (_2!16061 lt!850065) r!2363))))

(assert (=> d!677839 (not (isEmpty!15540 rules!1750))))

(assert (=> d!677839 (= (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!591 thiss!16613 rules!1750 lt!850069 input!1722 (_2!16061 lt!850065) r!2363) lt!850234)))

(declare-fun bs!457065 () Bool)

(assert (= bs!457065 d!677839))

(assert (=> bs!457065 m!2718861))

(assert (=> bs!457065 m!2718899))

(declare-fun m!2719395 () Bool)

(assert (=> bs!457065 m!2719395))

(assert (=> bs!457065 m!2718899))

(declare-fun m!2719397 () Bool)

(assert (=> bs!457065 m!2719397))

(assert (=> bs!457065 m!2718845))

(assert (=> bs!457065 m!2718901))

(assert (=> b!2291241 d!677839))

(declare-fun b!2291744 () Bool)

(declare-fun res!980137 () Bool)

(declare-fun e!1468495 () Bool)

(assert (=> b!2291744 (=> (not res!980137) (not e!1468495))))

(assert (=> b!2291744 (= res!980137 (= (head!4998 otherP!12) (head!4998 input!1722)))))

(declare-fun d!677841 () Bool)

(declare-fun e!1468494 () Bool)

(assert (=> d!677841 e!1468494))

(declare-fun res!980139 () Bool)

(assert (=> d!677841 (=> res!980139 e!1468494)))

(declare-fun lt!850235 () Bool)

(assert (=> d!677841 (= res!980139 (not lt!850235))))

(declare-fun e!1468493 () Bool)

(assert (=> d!677841 (= lt!850235 e!1468493)))

(declare-fun res!980136 () Bool)

(assert (=> d!677841 (=> res!980136 e!1468493)))

(assert (=> d!677841 (= res!980136 ((_ is Nil!27285) otherP!12))))

(assert (=> d!677841 (= (isPrefix!2357 otherP!12 input!1722) lt!850235)))

(declare-fun b!2291743 () Bool)

(assert (=> b!2291743 (= e!1468493 e!1468495)))

(declare-fun res!980138 () Bool)

(assert (=> b!2291743 (=> (not res!980138) (not e!1468495))))

(assert (=> b!2291743 (= res!980138 (not ((_ is Nil!27285) input!1722)))))

(declare-fun b!2291745 () Bool)

(assert (=> b!2291745 (= e!1468495 (isPrefix!2357 (tail!3311 otherP!12) (tail!3311 input!1722)))))

(declare-fun b!2291746 () Bool)

(assert (=> b!2291746 (= e!1468494 (>= (size!21481 input!1722) (size!21481 otherP!12)))))

(assert (= (and d!677841 (not res!980136)) b!2291743))

(assert (= (and b!2291743 res!980138) b!2291744))

(assert (= (and b!2291744 res!980137) b!2291745))

(assert (= (and d!677841 (not res!980139)) b!2291746))

(declare-fun m!2719399 () Bool)

(assert (=> b!2291744 m!2719399))

(assert (=> b!2291744 m!2719343))

(declare-fun m!2719401 () Bool)

(assert (=> b!2291745 m!2719401))

(assert (=> b!2291745 m!2719257))

(assert (=> b!2291745 m!2719401))

(assert (=> b!2291745 m!2719257))

(declare-fun m!2719403 () Bool)

(assert (=> b!2291745 m!2719403))

(assert (=> b!2291746 m!2719045))

(assert (=> b!2291746 m!2718823))

(assert (=> b!2291261 d!677841))

(declare-fun d!677843 () Bool)

(assert (=> d!677843 (= (isEmpty!15540 rules!1750) ((_ is Nil!27287) rules!1750))))

(assert (=> b!2291259 d!677843))

(declare-fun b!2291748 () Bool)

(declare-fun res!980141 () Bool)

(declare-fun e!1468498 () Bool)

(assert (=> b!2291748 (=> (not res!980141) (not e!1468498))))

(assert (=> b!2291748 (= res!980141 (= (head!4998 input!1722) (head!4998 input!1722)))))

(declare-fun d!677845 () Bool)

(declare-fun e!1468497 () Bool)

(assert (=> d!677845 e!1468497))

(declare-fun res!980143 () Bool)

(assert (=> d!677845 (=> res!980143 e!1468497)))

(declare-fun lt!850236 () Bool)

(assert (=> d!677845 (= res!980143 (not lt!850236))))

(declare-fun e!1468496 () Bool)

(assert (=> d!677845 (= lt!850236 e!1468496)))

(declare-fun res!980140 () Bool)

(assert (=> d!677845 (=> res!980140 e!1468496)))

(assert (=> d!677845 (= res!980140 ((_ is Nil!27285) input!1722))))

(assert (=> d!677845 (= (isPrefix!2357 input!1722 input!1722) lt!850236)))

(declare-fun b!2291747 () Bool)

(assert (=> b!2291747 (= e!1468496 e!1468498)))

(declare-fun res!980142 () Bool)

(assert (=> b!2291747 (=> (not res!980142) (not e!1468498))))

(assert (=> b!2291747 (= res!980142 (not ((_ is Nil!27285) input!1722)))))

(declare-fun b!2291749 () Bool)

(assert (=> b!2291749 (= e!1468498 (isPrefix!2357 (tail!3311 input!1722) (tail!3311 input!1722)))))

(declare-fun b!2291750 () Bool)

(assert (=> b!2291750 (= e!1468497 (>= (size!21481 input!1722) (size!21481 input!1722)))))

(assert (= (and d!677845 (not res!980140)) b!2291747))

(assert (= (and b!2291747 res!980142) b!2291748))

(assert (= (and b!2291748 res!980141) b!2291749))

(assert (= (and d!677845 (not res!980143)) b!2291750))

(assert (=> b!2291748 m!2719343))

(assert (=> b!2291748 m!2719343))

(assert (=> b!2291749 m!2719257))

(assert (=> b!2291749 m!2719257))

(assert (=> b!2291749 m!2719257))

(assert (=> b!2291749 m!2719257))

(declare-fun m!2719405 () Bool)

(assert (=> b!2291749 m!2719405))

(assert (=> b!2291750 m!2719045))

(assert (=> b!2291750 m!2719045))

(assert (=> b!2291258 d!677845))

(declare-fun d!677847 () Bool)

(assert (=> d!677847 (isPrefix!2357 input!1722 input!1722)))

(declare-fun lt!850239 () Unit!40164)

(declare-fun choose!13389 (List!27379 List!27379) Unit!40164)

(assert (=> d!677847 (= lt!850239 (choose!13389 input!1722 input!1722))))

(assert (=> d!677847 (= (lemmaIsPrefixRefl!1499 input!1722 input!1722) lt!850239)))

(declare-fun bs!457066 () Bool)

(assert (= bs!457066 d!677847))

(assert (=> bs!457066 m!2718863))

(declare-fun m!2719407 () Bool)

(assert (=> bs!457066 m!2719407))

(assert (=> b!2291258 d!677847))

(declare-fun b!2291824 () Bool)

(declare-fun e!1468550 () Bool)

(assert (=> b!2291824 (= e!1468550 true)))

(declare-fun d!677849 () Bool)

(assert (=> d!677849 e!1468550))

(assert (= d!677849 b!2291824))

(declare-fun lambda!85757 () Int)

(declare-fun order!15205 () Int)

(declare-fun order!15203 () Int)

(declare-fun dynLambda!11849 (Int Int) Int)

(declare-fun dynLambda!11850 (Int Int) Int)

(assert (=> b!2291824 (< (dynLambda!11849 order!15203 (toValue!6157 (transformation!4367 r!2363))) (dynLambda!11850 order!15205 lambda!85757))))

(declare-fun order!15207 () Int)

(declare-fun dynLambda!11851 (Int Int) Int)

(assert (=> b!2291824 (< (dynLambda!11851 order!15207 (toChars!6016 (transformation!4367 r!2363))) (dynLambda!11850 order!15205 lambda!85757))))

(assert (=> d!677849 (= (list!10688 (dynLambda!11843 (toChars!6016 (transformation!4367 r!2363)) (dynLambda!11848 (toValue!6157 (transformation!4367 r!2363)) lt!850059))) (list!10688 lt!850059))))

(declare-fun lt!850244 () Unit!40164)

(declare-fun ForallOf!497 (Int BalanceConc!17492) Unit!40164)

(assert (=> d!677849 (= lt!850244 (ForallOf!497 lambda!85757 lt!850059))))

(assert (=> d!677849 (= (lemmaSemiInverse!1066 (transformation!4367 r!2363) lt!850059) lt!850244)))

(declare-fun b_lambda!73017 () Bool)

(assert (=> (not b_lambda!73017) (not d!677849)))

(declare-fun t!204749 () Bool)

(declare-fun tb!136615 () Bool)

(assert (=> (and b!2291253 (= (toChars!6016 (transformation!4367 r!2363)) (toChars!6016 (transformation!4367 r!2363))) t!204749) tb!136615))

(declare-fun tp!726574 () Bool)

(declare-fun b!2291825 () Bool)

(declare-fun e!1468551 () Bool)

(assert (=> b!2291825 (= e!1468551 (and (inv!36889 (c!363262 (dynLambda!11843 (toChars!6016 (transformation!4367 r!2363)) (dynLambda!11848 (toValue!6157 (transformation!4367 r!2363)) lt!850059)))) tp!726574))))

(declare-fun result!166590 () Bool)

(assert (=> tb!136615 (= result!166590 (and (inv!36890 (dynLambda!11843 (toChars!6016 (transformation!4367 r!2363)) (dynLambda!11848 (toValue!6157 (transformation!4367 r!2363)) lt!850059))) e!1468551))))

(assert (= tb!136615 b!2291825))

(declare-fun m!2719439 () Bool)

(assert (=> b!2291825 m!2719439))

(declare-fun m!2719441 () Bool)

(assert (=> tb!136615 m!2719441))

(assert (=> d!677849 t!204749))

(declare-fun b_and!181969 () Bool)

(assert (= b_and!181929 (and (=> t!204749 result!166590) b_and!181969)))

(declare-fun t!204751 () Bool)

(declare-fun tb!136617 () Bool)

(assert (=> (and b!2291260 (= (toChars!6016 (transformation!4367 (rule!6703 (h!32689 tokens!456)))) (toChars!6016 (transformation!4367 r!2363))) t!204751) tb!136617))

(declare-fun result!166592 () Bool)

(assert (= result!166592 result!166590))

(assert (=> d!677849 t!204751))

(declare-fun b_and!181971 () Bool)

(assert (= b_and!181931 (and (=> t!204751 result!166592) b_and!181971)))

(declare-fun t!204753 () Bool)

(declare-fun tb!136619 () Bool)

(assert (=> (and b!2291255 (= (toChars!6016 (transformation!4367 (h!32688 rules!1750))) (toChars!6016 (transformation!4367 r!2363))) t!204753) tb!136619))

(declare-fun result!166594 () Bool)

(assert (= result!166594 result!166590))

(assert (=> d!677849 t!204753))

(declare-fun b_and!181973 () Bool)

(assert (= b_and!181933 (and (=> t!204753 result!166594) b_and!181973)))

(declare-fun tb!136621 () Bool)

(declare-fun t!204755 () Bool)

(assert (=> (and b!2291243 (= (toChars!6016 (transformation!4367 otherR!12)) (toChars!6016 (transformation!4367 r!2363))) t!204755) tb!136621))

(declare-fun result!166596 () Bool)

(assert (= result!166596 result!166590))

(assert (=> d!677849 t!204755))

(declare-fun b_and!181975 () Bool)

(assert (= b_and!181935 (and (=> t!204755 result!166596) b_and!181975)))

(declare-fun b_lambda!73019 () Bool)

(assert (=> (not b_lambda!73019) (not d!677849)))

(assert (=> d!677849 t!204716))

(declare-fun b_and!181977 () Bool)

(assert (= b_and!181937 (and (=> t!204716 result!166548) b_and!181977)))

(assert (=> d!677849 t!204718))

(declare-fun b_and!181979 () Bool)

(assert (= b_and!181939 (and (=> t!204718 result!166552) b_and!181979)))

(assert (=> d!677849 t!204720))

(declare-fun b_and!181981 () Bool)

(assert (= b_and!181941 (and (=> t!204720 result!166554) b_and!181981)))

(assert (=> d!677849 t!204722))

(declare-fun b_and!181983 () Bool)

(assert (= b_and!181943 (and (=> t!204722 result!166556) b_and!181983)))

(assert (=> d!677849 m!2719349))

(declare-fun m!2719443 () Bool)

(assert (=> d!677849 m!2719443))

(declare-fun m!2719445 () Bool)

(assert (=> d!677849 m!2719445))

(declare-fun m!2719447 () Bool)

(assert (=> d!677849 m!2719447))

(assert (=> d!677849 m!2719349))

(assert (=> d!677849 m!2719443))

(declare-fun m!2719449 () Bool)

(assert (=> d!677849 m!2719449))

(assert (=> b!2291258 d!677849))

(declare-fun d!677853 () Bool)

(declare-fun res!980152 () Bool)

(declare-fun e!1468554 () Bool)

(assert (=> d!677853 (=> (not res!980152) (not e!1468554))))

(assert (=> d!677853 (= res!980152 (not (isEmpty!15543 (originalCharacters!5137 (h!32689 tokens!456)))))))

(assert (=> d!677853 (= (inv!36886 (h!32689 tokens!456)) e!1468554)))

(declare-fun b!2291830 () Bool)

(declare-fun res!980153 () Bool)

(assert (=> b!2291830 (=> (not res!980153) (not e!1468554))))

(assert (=> b!2291830 (= res!980153 (= (originalCharacters!5137 (h!32689 tokens!456)) (list!10688 (dynLambda!11843 (toChars!6016 (transformation!4367 (rule!6703 (h!32689 tokens!456)))) (value!138279 (h!32689 tokens!456))))))))

(declare-fun b!2291831 () Bool)

(assert (=> b!2291831 (= e!1468554 (= (size!21480 (h!32689 tokens!456)) (size!21481 (originalCharacters!5137 (h!32689 tokens!456)))))))

(assert (= (and d!677853 res!980152) b!2291830))

(assert (= (and b!2291830 res!980153) b!2291831))

(declare-fun b_lambda!73021 () Bool)

(assert (=> (not b_lambda!73021) (not b!2291830)))

(assert (=> b!2291830 t!204708))

(declare-fun b_and!181985 () Bool)

(assert (= b_and!181969 (and (=> t!204708 result!166540) b_and!181985)))

(assert (=> b!2291830 t!204710))

(declare-fun b_and!181987 () Bool)

(assert (= b_and!181971 (and (=> t!204710 result!166542) b_and!181987)))

(assert (=> b!2291830 t!204712))

(declare-fun b_and!181989 () Bool)

(assert (= b_and!181973 (and (=> t!204712 result!166544) b_and!181989)))

(assert (=> b!2291830 t!204714))

(declare-fun b_and!181991 () Bool)

(assert (= b_and!181975 (and (=> t!204714 result!166546) b_and!181991)))

(declare-fun m!2719451 () Bool)

(assert (=> d!677853 m!2719451))

(assert (=> b!2291830 m!2719341))

(assert (=> b!2291830 m!2719341))

(declare-fun m!2719453 () Bool)

(assert (=> b!2291830 m!2719453))

(declare-fun m!2719455 () Bool)

(assert (=> b!2291831 m!2719455))

(assert (=> b!2291257 d!677853))

(declare-fun d!677855 () Bool)

(declare-fun res!980154 () Bool)

(declare-fun e!1468555 () Bool)

(assert (=> d!677855 (=> (not res!980154) (not e!1468555))))

(assert (=> d!677855 (= res!980154 (validRegex!2530 (regex!4367 r!2363)))))

(assert (=> d!677855 (= (ruleValid!1457 thiss!16613 r!2363) e!1468555)))

(declare-fun b!2291832 () Bool)

(declare-fun res!980155 () Bool)

(assert (=> b!2291832 (=> (not res!980155) (not e!1468555))))

(assert (=> b!2291832 (= res!980155 (not (nullable!1868 (regex!4367 r!2363))))))

(declare-fun b!2291833 () Bool)

(assert (=> b!2291833 (= e!1468555 (not (= (tag!4857 r!2363) (String!29750 ""))))))

(assert (= (and d!677855 res!980154) b!2291832))

(assert (= (and b!2291832 res!980155) b!2291833))

(assert (=> d!677855 m!2718957))

(assert (=> b!2291832 m!2718959))

(assert (=> b!2291256 d!677855))

(declare-fun d!677857 () Bool)

(assert (=> d!677857 (ruleValid!1457 thiss!16613 r!2363)))

(declare-fun lt!850245 () Unit!40164)

(assert (=> d!677857 (= lt!850245 (choose!13383 thiss!16613 r!2363 rules!1750))))

(assert (=> d!677857 (contains!4743 rules!1750 r!2363)))

(assert (=> d!677857 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!862 thiss!16613 r!2363 rules!1750) lt!850245)))

(declare-fun bs!457067 () Bool)

(assert (= bs!457067 d!677857))

(assert (=> bs!457067 m!2718827))

(declare-fun m!2719457 () Bool)

(assert (=> bs!457067 m!2719457))

(assert (=> bs!457067 m!2718825))

(assert (=> b!2291256 d!677857))

(declare-fun d!677859 () Bool)

(declare-fun lt!850246 () Bool)

(assert (=> d!677859 (= lt!850246 (select (content!3665 rules!1750) otherR!12))))

(declare-fun e!1468557 () Bool)

(assert (=> d!677859 (= lt!850246 e!1468557)))

(declare-fun res!980157 () Bool)

(assert (=> d!677859 (=> (not res!980157) (not e!1468557))))

(assert (=> d!677859 (= res!980157 ((_ is Cons!27287) rules!1750))))

(assert (=> d!677859 (= (contains!4743 rules!1750 otherR!12) lt!850246)))

(declare-fun b!2291834 () Bool)

(declare-fun e!1468556 () Bool)

(assert (=> b!2291834 (= e!1468557 e!1468556)))

(declare-fun res!980156 () Bool)

(assert (=> b!2291834 (=> res!980156 e!1468556)))

(assert (=> b!2291834 (= res!980156 (= (h!32688 rules!1750) otherR!12))))

(declare-fun b!2291835 () Bool)

(assert (=> b!2291835 (= e!1468556 (contains!4743 (t!204673 rules!1750) otherR!12))))

(assert (= (and d!677859 res!980157) b!2291834))

(assert (= (and b!2291834 (not res!980156)) b!2291835))

(assert (=> d!677859 m!2719067))

(declare-fun m!2719459 () Bool)

(assert (=> d!677859 m!2719459))

(declare-fun m!2719461 () Bool)

(assert (=> b!2291835 m!2719461))

(assert (=> b!2291254 d!677859))

(declare-fun b!2291847 () Bool)

(declare-fun e!1468560 () Bool)

(declare-fun tp!726585 () Bool)

(declare-fun tp!726586 () Bool)

(assert (=> b!2291847 (= e!1468560 (and tp!726585 tp!726586))))

(declare-fun b!2291849 () Bool)

(declare-fun tp!726588 () Bool)

(declare-fun tp!726589 () Bool)

(assert (=> b!2291849 (= e!1468560 (and tp!726588 tp!726589))))

(declare-fun b!2291846 () Bool)

(assert (=> b!2291846 (= e!1468560 tp_is_empty!10651)))

(declare-fun b!2291848 () Bool)

(declare-fun tp!726587 () Bool)

(assert (=> b!2291848 (= e!1468560 tp!726587)))

(assert (=> b!2291251 (= tp!726489 e!1468560)))

(assert (= (and b!2291251 ((_ is ElementMatch!6715) (regex!4367 r!2363))) b!2291846))

(assert (= (and b!2291251 ((_ is Concat!11245) (regex!4367 r!2363))) b!2291847))

(assert (= (and b!2291251 ((_ is Star!6715) (regex!4367 r!2363))) b!2291848))

(assert (= (and b!2291251 ((_ is Union!6715) (regex!4367 r!2363))) b!2291849))

(declare-fun b!2291860 () Bool)

(declare-fun b_free!68901 () Bool)

(declare-fun b_next!69605 () Bool)

(assert (=> b!2291860 (= b_free!68901 (not b_next!69605))))

(declare-fun t!204757 () Bool)

(declare-fun tb!136623 () Bool)

(assert (=> (and b!2291860 (= (toValue!6157 (transformation!4367 (h!32688 (t!204673 rules!1750)))) (toValue!6157 (transformation!4367 r!2363))) t!204757) tb!136623))

(declare-fun result!166602 () Bool)

(assert (= result!166602 result!166548))

(assert (=> d!677833 t!204757))

(assert (=> d!677849 t!204757))

(declare-fun b_and!181993 () Bool)

(declare-fun tp!726600 () Bool)

(assert (=> b!2291860 (= tp!726600 (and (=> t!204757 result!166602) b_and!181993))))

(declare-fun b_free!68903 () Bool)

(declare-fun b_next!69607 () Bool)

(assert (=> b!2291860 (= b_free!68903 (not b_next!69607))))

(declare-fun t!204759 () Bool)

(declare-fun tb!136625 () Bool)

(assert (=> (and b!2291860 (= (toChars!6016 (transformation!4367 (h!32688 (t!204673 rules!1750)))) (toChars!6016 (transformation!4367 (rule!6703 (head!4996 tokens!456))))) t!204759) tb!136625))

(declare-fun result!166604 () Bool)

(assert (= result!166604 result!166512))

(assert (=> d!677699 t!204759))

(declare-fun t!204761 () Bool)

(declare-fun tb!136627 () Bool)

(assert (=> (and b!2291860 (= (toChars!6016 (transformation!4367 (h!32688 (t!204673 rules!1750)))) (toChars!6016 (transformation!4367 (rule!6703 (h!32689 tokens!456))))) t!204761) tb!136627))

(declare-fun result!166606 () Bool)

(assert (= result!166606 result!166540))

(assert (=> d!677829 t!204761))

(declare-fun tb!136629 () Bool)

(declare-fun t!204763 () Bool)

(assert (=> (and b!2291860 (= (toChars!6016 (transformation!4367 (h!32688 (t!204673 rules!1750)))) (toChars!6016 (transformation!4367 r!2363))) t!204763) tb!136629))

(declare-fun result!166608 () Bool)

(assert (= result!166608 result!166590))

(assert (=> d!677849 t!204763))

(assert (=> b!2291830 t!204761))

(declare-fun b_and!181995 () Bool)

(declare-fun tp!726598 () Bool)

(assert (=> b!2291860 (= tp!726598 (and (=> t!204759 result!166604) (=> t!204761 result!166606) (=> t!204763 result!166608) b_and!181995))))

(declare-fun e!1468572 () Bool)

(assert (=> b!2291860 (= e!1468572 (and tp!726600 tp!726598))))

(declare-fun e!1468570 () Bool)

(declare-fun b!2291859 () Bool)

(declare-fun tp!726601 () Bool)

(assert (=> b!2291859 (= e!1468570 (and tp!726601 (inv!36882 (tag!4857 (h!32688 (t!204673 rules!1750)))) (inv!36885 (transformation!4367 (h!32688 (t!204673 rules!1750)))) e!1468572))))

(declare-fun b!2291858 () Bool)

(declare-fun e!1468569 () Bool)

(declare-fun tp!726599 () Bool)

(assert (=> b!2291858 (= e!1468569 (and e!1468570 tp!726599))))

(assert (=> b!2291271 (= tp!726487 e!1468569)))

(assert (= b!2291859 b!2291860))

(assert (= b!2291858 b!2291859))

(assert (= (and b!2291271 ((_ is Cons!27287) (t!204673 rules!1750))) b!2291858))

(declare-fun m!2719463 () Bool)

(assert (=> b!2291859 m!2719463))

(declare-fun m!2719465 () Bool)

(assert (=> b!2291859 m!2719465))

(declare-fun b!2291862 () Bool)

(declare-fun e!1468573 () Bool)

(declare-fun tp!726602 () Bool)

(declare-fun tp!726603 () Bool)

(assert (=> b!2291862 (= e!1468573 (and tp!726602 tp!726603))))

(declare-fun b!2291864 () Bool)

(declare-fun tp!726605 () Bool)

(declare-fun tp!726606 () Bool)

(assert (=> b!2291864 (= e!1468573 (and tp!726605 tp!726606))))

(declare-fun b!2291861 () Bool)

(assert (=> b!2291861 (= e!1468573 tp_is_empty!10651)))

(declare-fun b!2291863 () Bool)

(declare-fun tp!726604 () Bool)

(assert (=> b!2291863 (= e!1468573 tp!726604)))

(assert (=> b!2291249 (= tp!726500 e!1468573)))

(assert (= (and b!2291249 ((_ is ElementMatch!6715) (regex!4367 otherR!12))) b!2291861))

(assert (= (and b!2291249 ((_ is Concat!11245) (regex!4367 otherR!12))) b!2291862))

(assert (= (and b!2291249 ((_ is Star!6715) (regex!4367 otherR!12))) b!2291863))

(assert (= (and b!2291249 ((_ is Union!6715) (regex!4367 otherR!12))) b!2291864))

(declare-fun b!2291866 () Bool)

(declare-fun e!1468574 () Bool)

(declare-fun tp!726607 () Bool)

(declare-fun tp!726608 () Bool)

(assert (=> b!2291866 (= e!1468574 (and tp!726607 tp!726608))))

(declare-fun b!2291868 () Bool)

(declare-fun tp!726610 () Bool)

(declare-fun tp!726611 () Bool)

(assert (=> b!2291868 (= e!1468574 (and tp!726610 tp!726611))))

(declare-fun b!2291865 () Bool)

(assert (=> b!2291865 (= e!1468574 tp_is_empty!10651)))

(declare-fun b!2291867 () Bool)

(declare-fun tp!726609 () Bool)

(assert (=> b!2291867 (= e!1468574 tp!726609)))

(assert (=> b!2291269 (= tp!726484 e!1468574)))

(assert (= (and b!2291269 ((_ is ElementMatch!6715) (regex!4367 (h!32688 rules!1750)))) b!2291865))

(assert (= (and b!2291269 ((_ is Concat!11245) (regex!4367 (h!32688 rules!1750)))) b!2291866))

(assert (= (and b!2291269 ((_ is Star!6715) (regex!4367 (h!32688 rules!1750)))) b!2291867))

(assert (= (and b!2291269 ((_ is Union!6715) (regex!4367 (h!32688 rules!1750)))) b!2291868))

(declare-fun b!2291873 () Bool)

(declare-fun e!1468577 () Bool)

(declare-fun tp!726614 () Bool)

(assert (=> b!2291873 (= e!1468577 (and tp_is_empty!10651 tp!726614))))

(assert (=> b!2291246 (= tp!726501 e!1468577)))

(assert (= (and b!2291246 ((_ is Cons!27285) (originalCharacters!5137 (h!32689 tokens!456)))) b!2291873))

(declare-fun b!2291887 () Bool)

(declare-fun b_free!68905 () Bool)

(declare-fun b_next!69609 () Bool)

(assert (=> b!2291887 (= b_free!68905 (not b_next!69609))))

(declare-fun tb!136631 () Bool)

(declare-fun t!204765 () Bool)

(assert (=> (and b!2291887 (= (toValue!6157 (transformation!4367 (rule!6703 (h!32689 (t!204674 tokens!456))))) (toValue!6157 (transformation!4367 r!2363))) t!204765) tb!136631))

(declare-fun result!166614 () Bool)

(assert (= result!166614 result!166548))

(assert (=> d!677833 t!204765))

(assert (=> d!677849 t!204765))

(declare-fun b_and!181997 () Bool)

(declare-fun tp!726628 () Bool)

(assert (=> b!2291887 (= tp!726628 (and (=> t!204765 result!166614) b_and!181997))))

(declare-fun b_free!68907 () Bool)

(declare-fun b_next!69611 () Bool)

(assert (=> b!2291887 (= b_free!68907 (not b_next!69611))))

(declare-fun t!204767 () Bool)

(declare-fun tb!136633 () Bool)

(assert (=> (and b!2291887 (= (toChars!6016 (transformation!4367 (rule!6703 (h!32689 (t!204674 tokens!456))))) (toChars!6016 (transformation!4367 (rule!6703 (head!4996 tokens!456))))) t!204767) tb!136633))

(declare-fun result!166616 () Bool)

(assert (= result!166616 result!166512))

(assert (=> d!677699 t!204767))

(declare-fun t!204769 () Bool)

(declare-fun tb!136635 () Bool)

(assert (=> (and b!2291887 (= (toChars!6016 (transformation!4367 (rule!6703 (h!32689 (t!204674 tokens!456))))) (toChars!6016 (transformation!4367 (rule!6703 (h!32689 tokens!456))))) t!204769) tb!136635))

(declare-fun result!166618 () Bool)

(assert (= result!166618 result!166540))

(assert (=> d!677829 t!204769))

(declare-fun t!204771 () Bool)

(declare-fun tb!136637 () Bool)

(assert (=> (and b!2291887 (= (toChars!6016 (transformation!4367 (rule!6703 (h!32689 (t!204674 tokens!456))))) (toChars!6016 (transformation!4367 r!2363))) t!204771) tb!136637))

(declare-fun result!166620 () Bool)

(assert (= result!166620 result!166590))

(assert (=> d!677849 t!204771))

(assert (=> b!2291830 t!204769))

(declare-fun tp!726629 () Bool)

(declare-fun b_and!181999 () Bool)

(assert (=> b!2291887 (= tp!726629 (and (=> t!204767 result!166616) (=> t!204769 result!166618) (=> t!204771 result!166620) b_and!181999))))

(declare-fun b!2291886 () Bool)

(declare-fun tp!726627 () Bool)

(declare-fun e!1468592 () Bool)

(declare-fun e!1468590 () Bool)

(assert (=> b!2291886 (= e!1468590 (and tp!726627 (inv!36882 (tag!4857 (rule!6703 (h!32689 (t!204674 tokens!456))))) (inv!36885 (transformation!4367 (rule!6703 (h!32689 (t!204674 tokens!456))))) e!1468592))))

(declare-fun tp!726626 () Bool)

(declare-fun e!1468593 () Bool)

(declare-fun b!2291884 () Bool)

(declare-fun e!1468595 () Bool)

(assert (=> b!2291884 (= e!1468593 (and (inv!36886 (h!32689 (t!204674 tokens!456))) e!1468595 tp!726626))))

(assert (=> b!2291887 (= e!1468592 (and tp!726628 tp!726629))))

(declare-fun b!2291885 () Bool)

(declare-fun tp!726625 () Bool)

(assert (=> b!2291885 (= e!1468595 (and (inv!21 (value!138279 (h!32689 (t!204674 tokens!456)))) e!1468590 tp!726625))))

(assert (=> b!2291257 (= tp!726490 e!1468593)))

(assert (= b!2291886 b!2291887))

(assert (= b!2291885 b!2291886))

(assert (= b!2291884 b!2291885))

(assert (= (and b!2291257 ((_ is Cons!27288) (t!204674 tokens!456))) b!2291884))

(declare-fun m!2719467 () Bool)

(assert (=> b!2291886 m!2719467))

(declare-fun m!2719469 () Bool)

(assert (=> b!2291886 m!2719469))

(declare-fun m!2719471 () Bool)

(assert (=> b!2291884 m!2719471))

(declare-fun m!2719473 () Bool)

(assert (=> b!2291885 m!2719473))

(declare-fun b!2291889 () Bool)

(declare-fun e!1468596 () Bool)

(declare-fun tp!726630 () Bool)

(declare-fun tp!726631 () Bool)

(assert (=> b!2291889 (= e!1468596 (and tp!726630 tp!726631))))

(declare-fun b!2291891 () Bool)

(declare-fun tp!726633 () Bool)

(declare-fun tp!726634 () Bool)

(assert (=> b!2291891 (= e!1468596 (and tp!726633 tp!726634))))

(declare-fun b!2291888 () Bool)

(assert (=> b!2291888 (= e!1468596 tp_is_empty!10651)))

(declare-fun b!2291890 () Bool)

(declare-fun tp!726632 () Bool)

(assert (=> b!2291890 (= e!1468596 tp!726632)))

(assert (=> b!2291266 (= tp!726491 e!1468596)))

(assert (= (and b!2291266 ((_ is ElementMatch!6715) (regex!4367 (rule!6703 (h!32689 tokens!456))))) b!2291888))

(assert (= (and b!2291266 ((_ is Concat!11245) (regex!4367 (rule!6703 (h!32689 tokens!456))))) b!2291889))

(assert (= (and b!2291266 ((_ is Star!6715) (regex!4367 (rule!6703 (h!32689 tokens!456))))) b!2291890))

(assert (= (and b!2291266 ((_ is Union!6715) (regex!4367 (rule!6703 (h!32689 tokens!456))))) b!2291891))

(declare-fun b!2291892 () Bool)

(declare-fun e!1468597 () Bool)

(declare-fun tp!726635 () Bool)

(assert (=> b!2291892 (= e!1468597 (and tp_is_empty!10651 tp!726635))))

(assert (=> b!2291265 (= tp!726498 e!1468597)))

(assert (= (and b!2291265 ((_ is Cons!27285) (t!204671 input!1722))) b!2291892))

(declare-fun b!2291893 () Bool)

(declare-fun e!1468598 () Bool)

(declare-fun tp!726636 () Bool)

(assert (=> b!2291893 (= e!1468598 (and tp_is_empty!10651 tp!726636))))

(assert (=> b!2291264 (= tp!726493 e!1468598)))

(assert (= (and b!2291264 ((_ is Cons!27285) (t!204671 suffix!886))) b!2291893))

(declare-fun b!2291894 () Bool)

(declare-fun e!1468599 () Bool)

(declare-fun tp!726637 () Bool)

(assert (=> b!2291894 (= e!1468599 (and tp_is_empty!10651 tp!726637))))

(assert (=> b!2291242 (= tp!726495 e!1468599)))

(assert (= (and b!2291242 ((_ is Cons!27285) (t!204671 otherP!12))) b!2291894))

(declare-fun b_lambda!73023 () Bool)

(assert (= b_lambda!73021 (or (and b!2291255 b_free!68887 (= (toChars!6016 (transformation!4367 (h!32688 rules!1750))) (toChars!6016 (transformation!4367 (rule!6703 (h!32689 tokens!456)))))) (and b!2291260 b_free!68883) (and b!2291860 b_free!68903 (= (toChars!6016 (transformation!4367 (h!32688 (t!204673 rules!1750)))) (toChars!6016 (transformation!4367 (rule!6703 (h!32689 tokens!456)))))) (and b!2291887 b_free!68907 (= (toChars!6016 (transformation!4367 (rule!6703 (h!32689 (t!204674 tokens!456))))) (toChars!6016 (transformation!4367 (rule!6703 (h!32689 tokens!456)))))) (and b!2291253 b_free!68879 (= (toChars!6016 (transformation!4367 r!2363)) (toChars!6016 (transformation!4367 (rule!6703 (h!32689 tokens!456)))))) (and b!2291243 b_free!68891 (= (toChars!6016 (transformation!4367 otherR!12)) (toChars!6016 (transformation!4367 (rule!6703 (h!32689 tokens!456)))))) b_lambda!73023)))

(declare-fun b_lambda!73025 () Bool)

(assert (= b_lambda!73019 (or (and b!2291243 b_free!68889 (= (toValue!6157 (transformation!4367 otherR!12)) (toValue!6157 (transformation!4367 r!2363)))) (and b!2291260 b_free!68881 (= (toValue!6157 (transformation!4367 (rule!6703 (h!32689 tokens!456)))) (toValue!6157 (transformation!4367 r!2363)))) (and b!2291887 b_free!68905 (= (toValue!6157 (transformation!4367 (rule!6703 (h!32689 (t!204674 tokens!456))))) (toValue!6157 (transformation!4367 r!2363)))) (and b!2291255 b_free!68885 (= (toValue!6157 (transformation!4367 (h!32688 rules!1750))) (toValue!6157 (transformation!4367 r!2363)))) (and b!2291860 b_free!68901 (= (toValue!6157 (transformation!4367 (h!32688 (t!204673 rules!1750)))) (toValue!6157 (transformation!4367 r!2363)))) (and b!2291253 b_free!68877) b_lambda!73025)))

(declare-fun b_lambda!73027 () Bool)

(assert (= b_lambda!72999 (or (and b!2291255 b_free!68887 (= (toChars!6016 (transformation!4367 (h!32688 rules!1750))) (toChars!6016 (transformation!4367 (rule!6703 (h!32689 tokens!456)))))) (and b!2291260 b_free!68883) (and b!2291860 b_free!68903 (= (toChars!6016 (transformation!4367 (h!32688 (t!204673 rules!1750)))) (toChars!6016 (transformation!4367 (rule!6703 (h!32689 tokens!456)))))) (and b!2291887 b_free!68907 (= (toChars!6016 (transformation!4367 (rule!6703 (h!32689 (t!204674 tokens!456))))) (toChars!6016 (transformation!4367 (rule!6703 (h!32689 tokens!456)))))) (and b!2291253 b_free!68879 (= (toChars!6016 (transformation!4367 r!2363)) (toChars!6016 (transformation!4367 (rule!6703 (h!32689 tokens!456)))))) (and b!2291243 b_free!68891 (= (toChars!6016 (transformation!4367 otherR!12)) (toChars!6016 (transformation!4367 (rule!6703 (h!32689 tokens!456)))))) b_lambda!73027)))

(declare-fun b_lambda!73029 () Bool)

(assert (= b_lambda!73001 (or (and b!2291243 b_free!68889 (= (toValue!6157 (transformation!4367 otherR!12)) (toValue!6157 (transformation!4367 r!2363)))) (and b!2291260 b_free!68881 (= (toValue!6157 (transformation!4367 (rule!6703 (h!32689 tokens!456)))) (toValue!6157 (transformation!4367 r!2363)))) (and b!2291887 b_free!68905 (= (toValue!6157 (transformation!4367 (rule!6703 (h!32689 (t!204674 tokens!456))))) (toValue!6157 (transformation!4367 r!2363)))) (and b!2291255 b_free!68885 (= (toValue!6157 (transformation!4367 (h!32688 rules!1750))) (toValue!6157 (transformation!4367 r!2363)))) (and b!2291860 b_free!68901 (= (toValue!6157 (transformation!4367 (h!32688 (t!204673 rules!1750)))) (toValue!6157 (transformation!4367 r!2363)))) (and b!2291253 b_free!68877) b_lambda!73029)))

(declare-fun b_lambda!73031 () Bool)

(assert (= b_lambda!73017 (or (and b!2291887 b_free!68907 (= (toChars!6016 (transformation!4367 (rule!6703 (h!32689 (t!204674 tokens!456))))) (toChars!6016 (transformation!4367 r!2363)))) (and b!2291243 b_free!68891 (= (toChars!6016 (transformation!4367 otherR!12)) (toChars!6016 (transformation!4367 r!2363)))) (and b!2291253 b_free!68879) (and b!2291860 b_free!68903 (= (toChars!6016 (transformation!4367 (h!32688 (t!204673 rules!1750)))) (toChars!6016 (transformation!4367 r!2363)))) (and b!2291260 b_free!68883 (= (toChars!6016 (transformation!4367 (rule!6703 (h!32689 tokens!456)))) (toChars!6016 (transformation!4367 r!2363)))) (and b!2291255 b_free!68887 (= (toChars!6016 (transformation!4367 (h!32688 rules!1750))) (toChars!6016 (transformation!4367 r!2363)))) b_lambda!73031)))

(check-sat (not b!2291642) b_and!181987 (not d!677753) (not b_next!69587) (not b!2291504) (not b!2291465) (not b!2291893) (not b!2291890) (not b!2291707) (not b!2291832) (not b!2291501) (not d!677779) (not d!677763) (not b!2291690) b_and!181979 (not d!677815) (not d!677855) b_and!181983 (not d!677737) (not d!677827) (not b!2291503) (not b!2291688) (not b!2291464) (not b!2291366) (not b_lambda!73031) (not b!2291500) (not b!2291835) (not d!677859) (not b!2291378) (not b!2291864) (not b!2291867) (not b!2291641) (not b_next!69593) (not d!677783) (not b!2291862) (not b!2291868) (not b_next!69595) (not b_lambda!73025) (not b!2291866) (not b!2291479) (not b!2291831) (not b!2291709) b_and!181993 (not tb!136615) (not d!677773) b_and!181995 (not b_next!69591) (not b!2291557) (not b!2291397) (not b!2291736) (not b!2291712) (not d!677709) (not b!2291365) (not b!2291469) b_and!181991 (not b!2291740) (not d!677837) (not b!2291578) (not b!2291711) (not b!2291367) (not d!677705) (not b!2291858) (not b!2291478) (not d!677823) (not b_next!69609) (not b!2291886) (not b!2291505) (not b!2291368) (not b!2291744) (not d!677687) (not b!2291558) b_and!181989 (not d!677819) (not tb!136551) (not b!2291885) (not b!2291645) (not b!2291463) (not b_next!69581) (not b!2291742) (not tb!136575) (not b!2291466) (not b!2291403) (not b!2291737) (not b!2291706) (not d!677847) (not d!677839) b_and!181999 (not b!2291644) (not d!677781) (not d!677699) (not b!2291750) (not d!677739) (not b!2291738) (not d!677857) (not d!677731) (not b!2291849) (not b_next!69607) (not d!677741) (not b!2291467) (not b!2291847) (not d!677767) (not b_next!69585) (not b_lambda!73029) (not b!2291596) (not b!2291713) (not b!2291470) (not bm!136652) (not d!677835) (not tb!136583) (not b!2291739) (not b!2291873) (not b!2291369) (not b_lambda!72991) b_and!181985 (not b!2291472) (not b!2291502) (not b!2291746) (not b!2291863) (not b!2291745) (not b_lambda!73023) (not b!2291668) (not b!2291748) (not b!2291582) (not b!2291741) (not d!677761) (not b_next!69589) (not d!677853) (not d!677743) (not b!2291734) (not b!2291689) (not b!2291749) (not b!2291406) (not d!677657) (not b!2291825) (not b!2291859) (not d!677807) b_and!181977 (not d!677849) (not b!2291892) (not b!2291891) (not b!2291889) (not b!2291555) (not b!2291594) b_and!181997 (not b_next!69583) (not d!677733) (not b!2291468) (not b!2291692) (not b_next!69605) (not b!2291830) (not b!2291848) (not b_next!69611) (not b!2291894) tp_is_empty!10651 b_and!181981 (not d!677829) (not d!677809) (not bm!136655) (not bm!136649) (not b!2291514) (not b!2291884) (not b_lambda!73027))
(check-sat b_and!181979 b_and!181983 (not b_next!69593) (not b_next!69595) b_and!181993 b_and!181991 (not b_next!69609) b_and!181989 (not b_next!69581) b_and!181999 (not b_next!69607) (not b_next!69585) b_and!181985 (not b_next!69589) b_and!181977 (not b_next!69611) b_and!181981 b_and!181987 (not b_next!69587) b_and!181995 (not b_next!69591) b_and!181997 (not b_next!69583) (not b_next!69605))
(get-model)

(declare-fun d!677885 () Bool)

(assert (=> d!677885 (= (get!8230 lt!850231) (v!30438 lt!850231))))

(assert (=> b!2291740 d!677885))

(declare-fun d!677887 () Bool)

(declare-fun lt!850253 () Bool)

(assert (=> d!677887 (= lt!850253 (isEmpty!15539 (list!10689 (_1!16062 lt!850181))))))

(declare-fun isEmpty!15547 (Conc!8883) Bool)

(assert (=> d!677887 (= lt!850253 (isEmpty!15547 (c!363264 (_1!16062 lt!850181))))))

(assert (=> d!677887 (= (isEmpty!15546 (_1!16062 lt!850181)) lt!850253)))

(declare-fun bs!457072 () Bool)

(assert (= bs!457072 d!677887))

(assert (=> bs!457072 m!2719251))

(assert (=> bs!457072 m!2719251))

(declare-fun m!2719519 () Bool)

(assert (=> bs!457072 m!2719519))

(declare-fun m!2719521 () Bool)

(assert (=> bs!457072 m!2719521))

(assert (=> b!2291644 d!677887))

(declare-fun d!677889 () Bool)

(declare-fun lt!850254 () Int)

(assert (=> d!677889 (>= lt!850254 0)))

(declare-fun e!1468611 () Int)

(assert (=> d!677889 (= lt!850254 e!1468611)))

(declare-fun c!363359 () Bool)

(assert (=> d!677889 (= c!363359 ((_ is Nil!27285) lt!850211))))

(assert (=> d!677889 (= (size!21481 lt!850211) lt!850254)))

(declare-fun b!2291914 () Bool)

(assert (=> b!2291914 (= e!1468611 0)))

(declare-fun b!2291915 () Bool)

(assert (=> b!2291915 (= e!1468611 (+ 1 (size!21481 (t!204671 lt!850211))))))

(assert (= (and d!677889 c!363359) b!2291914))

(assert (= (and d!677889 (not c!363359)) b!2291915))

(declare-fun m!2719523 () Bool)

(assert (=> b!2291915 m!2719523))

(assert (=> b!2291707 d!677889))

(assert (=> b!2291707 d!677813))

(declare-fun d!677891 () Bool)

(declare-fun lt!850255 () Int)

(assert (=> d!677891 (>= lt!850255 0)))

(declare-fun e!1468616 () Int)

(assert (=> d!677891 (= lt!850255 e!1468616)))

(declare-fun c!363362 () Bool)

(assert (=> d!677891 (= c!363362 ((_ is Nil!27285) (_2!16061 lt!850065)))))

(assert (=> d!677891 (= (size!21481 (_2!16061 lt!850065)) lt!850255)))

(declare-fun b!2291922 () Bool)

(assert (=> b!2291922 (= e!1468616 0)))

(declare-fun b!2291923 () Bool)

(assert (=> b!2291923 (= e!1468616 (+ 1 (size!21481 (t!204671 (_2!16061 lt!850065)))))))

(assert (= (and d!677891 c!363362) b!2291922))

(assert (= (and d!677891 (not c!363362)) b!2291923))

(declare-fun m!2719525 () Bool)

(assert (=> b!2291923 m!2719525))

(assert (=> b!2291707 d!677891))

(declare-fun d!677893 () Bool)

(declare-fun lt!850258 () Int)

(declare-fun size!21487 (List!27382) Int)

(assert (=> d!677893 (= lt!850258 (size!21487 (list!10689 (_1!16062 lt!850181))))))

(declare-fun size!21488 (Conc!8883) Int)

(assert (=> d!677893 (= lt!850258 (size!21488 (c!363264 (_1!16062 lt!850181))))))

(assert (=> d!677893 (= (size!21486 (_1!16062 lt!850181)) lt!850258)))

(declare-fun bs!457073 () Bool)

(assert (= bs!457073 d!677893))

(assert (=> bs!457073 m!2719251))

(assert (=> bs!457073 m!2719251))

(declare-fun m!2719527 () Bool)

(assert (=> bs!457073 m!2719527))

(declare-fun m!2719529 () Bool)

(assert (=> bs!457073 m!2719529))

(assert (=> d!677783 d!677893))

(declare-fun lt!850343 () tuple2!27104)

(declare-fun b!2291983 () Bool)

(declare-datatypes ((tuple2!27112 0))(
  ( (tuple2!27113 (_1!16066 Token!8212) (_2!16066 BalanceConc!17492)) )
))
(declare-datatypes ((Option!5358 0))(
  ( (None!5357) (Some!5357 (v!30441 tuple2!27112)) )
))
(declare-fun lt!850362 () Option!5358)

(declare-fun lexRec!540 (LexerInterface!3964 List!27381 BalanceConc!17492) tuple2!27104)

(assert (=> b!2291983 (= lt!850343 (lexRec!540 thiss!16613 rules!1750 (_2!16066 (v!30441 lt!850362))))))

(declare-fun e!1468660 () tuple2!27104)

(declare-fun prepend!1010 (BalanceConc!17494 Token!8212) BalanceConc!17494)

(assert (=> b!2291983 (= e!1468660 (tuple2!27105 (prepend!1010 (_1!16062 lt!850343) (_1!16066 (v!30441 lt!850362))) (_2!16062 lt!850343)))))

(declare-fun d!677895 () Bool)

(declare-fun e!1468661 () Bool)

(assert (=> d!677895 e!1468661))

(declare-fun res!980201 () Bool)

(assert (=> d!677895 (=> (not res!980201) (not e!1468661))))

(declare-fun lt!850354 () tuple2!27104)

(assert (=> d!677895 (= res!980201 (= (list!10689 (_1!16062 lt!850354)) (list!10689 (_1!16062 (lexRec!540 thiss!16613 rules!1750 (seqFromList!3071 input!1722))))))))

(declare-fun e!1468662 () tuple2!27104)

(assert (=> d!677895 (= lt!850354 e!1468662)))

(declare-fun c!363379 () Bool)

(declare-fun lt!850369 () Option!5358)

(assert (=> d!677895 (= c!363379 ((_ is Some!5357) lt!850369))))

(declare-fun maxPrefixZipperSequenceV2!410 (LexerInterface!3964 List!27381 BalanceConc!17492 BalanceConc!17492) Option!5358)

(assert (=> d!677895 (= lt!850369 (maxPrefixZipperSequenceV2!410 thiss!16613 rules!1750 (seqFromList!3071 input!1722) (seqFromList!3071 input!1722)))))

(declare-fun lt!850356 () Unit!40164)

(declare-fun lt!850340 () Unit!40164)

(assert (=> d!677895 (= lt!850356 lt!850340)))

(declare-fun lt!850344 () List!27379)

(declare-fun lt!850347 () List!27379)

(declare-fun isSuffix!776 (List!27379 List!27379) Bool)

(assert (=> d!677895 (isSuffix!776 lt!850344 (++!6667 lt!850347 lt!850344))))

(declare-fun lemmaConcatTwoListThenFSndIsSuffix!470 (List!27379 List!27379) Unit!40164)

(assert (=> d!677895 (= lt!850340 (lemmaConcatTwoListThenFSndIsSuffix!470 lt!850347 lt!850344))))

(assert (=> d!677895 (= lt!850344 (list!10688 (seqFromList!3071 input!1722)))))

(assert (=> d!677895 (= lt!850347 (list!10688 (BalanceConc!17493 Empty!8882)))))

(assert (=> d!677895 (= (lexTailRecV2!789 thiss!16613 rules!1750 (seqFromList!3071 input!1722) (BalanceConc!17493 Empty!8882) (seqFromList!3071 input!1722) (BalanceConc!17495 Empty!8883)) lt!850354)))

(declare-fun b!2291984 () Bool)

(assert (=> b!2291984 (= e!1468660 (tuple2!27105 (BalanceConc!17495 Empty!8883) (seqFromList!3071 input!1722)))))

(declare-fun b!2291985 () Bool)

(declare-fun lt!850353 () BalanceConc!17492)

(declare-fun append!703 (BalanceConc!17494 Token!8212) BalanceConc!17494)

(assert (=> b!2291985 (= e!1468662 (lexTailRecV2!789 thiss!16613 rules!1750 (seqFromList!3071 input!1722) lt!850353 (_2!16066 (v!30441 lt!850369)) (append!703 (BalanceConc!17495 Empty!8883) (_1!16066 (v!30441 lt!850369)))))))

(declare-fun lt!850366 () tuple2!27104)

(assert (=> b!2291985 (= lt!850366 (lexRec!540 thiss!16613 rules!1750 (_2!16066 (v!30441 lt!850369))))))

(declare-fun lt!850349 () List!27379)

(assert (=> b!2291985 (= lt!850349 (list!10688 (BalanceConc!17493 Empty!8882)))))

(declare-fun lt!850361 () List!27379)

(assert (=> b!2291985 (= lt!850361 (list!10688 (charsOf!2755 (_1!16066 (v!30441 lt!850369)))))))

(declare-fun lt!850342 () List!27379)

(assert (=> b!2291985 (= lt!850342 (list!10688 (_2!16066 (v!30441 lt!850369))))))

(declare-fun lt!850365 () Unit!40164)

(declare-fun lemmaConcatAssociativity!1392 (List!27379 List!27379 List!27379) Unit!40164)

(assert (=> b!2291985 (= lt!850365 (lemmaConcatAssociativity!1392 lt!850349 lt!850361 lt!850342))))

(assert (=> b!2291985 (= (++!6667 (++!6667 lt!850349 lt!850361) lt!850342) (++!6667 lt!850349 (++!6667 lt!850361 lt!850342)))))

(declare-fun lt!850368 () Unit!40164)

(assert (=> b!2291985 (= lt!850368 lt!850365)))

(declare-fun maxPrefixZipperSequence!875 (LexerInterface!3964 List!27381 BalanceConc!17492) Option!5358)

(assert (=> b!2291985 (= lt!850362 (maxPrefixZipperSequence!875 thiss!16613 rules!1750 (seqFromList!3071 input!1722)))))

(declare-fun c!363378 () Bool)

(assert (=> b!2291985 (= c!363378 ((_ is Some!5357) lt!850362))))

(assert (=> b!2291985 (= (lexRec!540 thiss!16613 rules!1750 (seqFromList!3071 input!1722)) e!1468660)))

(declare-fun lt!850348 () Unit!40164)

(declare-fun Unit!40166 () Unit!40164)

(assert (=> b!2291985 (= lt!850348 Unit!40166)))

(declare-fun lt!850360 () List!27382)

(assert (=> b!2291985 (= lt!850360 (list!10689 (BalanceConc!17495 Empty!8883)))))

(declare-fun lt!850337 () List!27382)

(assert (=> b!2291985 (= lt!850337 (Cons!27288 (_1!16066 (v!30441 lt!850369)) Nil!27288))))

(declare-fun lt!850367 () List!27382)

(assert (=> b!2291985 (= lt!850367 (list!10689 (_1!16062 lt!850366)))))

(declare-fun lt!850358 () Unit!40164)

(declare-fun lemmaConcatAssociativity!1393 (List!27382 List!27382 List!27382) Unit!40164)

(assert (=> b!2291985 (= lt!850358 (lemmaConcatAssociativity!1393 lt!850360 lt!850337 lt!850367))))

(declare-fun ++!6668 (List!27382 List!27382) List!27382)

(assert (=> b!2291985 (= (++!6668 (++!6668 lt!850360 lt!850337) lt!850367) (++!6668 lt!850360 (++!6668 lt!850337 lt!850367)))))

(declare-fun lt!850357 () Unit!40164)

(assert (=> b!2291985 (= lt!850357 lt!850358)))

(declare-fun lt!850359 () List!27379)

(assert (=> b!2291985 (= lt!850359 (++!6667 (list!10688 (BalanceConc!17493 Empty!8882)) (list!10688 (charsOf!2755 (_1!16066 (v!30441 lt!850369))))))))

(declare-fun lt!850339 () List!27379)

(assert (=> b!2291985 (= lt!850339 (list!10688 (_2!16066 (v!30441 lt!850369))))))

(declare-fun lt!850355 () List!27382)

(assert (=> b!2291985 (= lt!850355 (list!10689 (append!703 (BalanceConc!17495 Empty!8883) (_1!16066 (v!30441 lt!850369)))))))

(declare-fun lt!850336 () Unit!40164)

(declare-fun lemmaLexThenLexPrefix!354 (LexerInterface!3964 List!27381 List!27379 List!27379 List!27382 List!27382 List!27379) Unit!40164)

(assert (=> b!2291985 (= lt!850336 (lemmaLexThenLexPrefix!354 thiss!16613 rules!1750 lt!850359 lt!850339 lt!850355 (list!10689 (_1!16062 lt!850366)) (list!10688 (_2!16062 lt!850366))))))

(assert (=> b!2291985 (= (lexList!1114 thiss!16613 rules!1750 lt!850359) (tuple2!27107 lt!850355 Nil!27285))))

(declare-fun lt!850364 () Unit!40164)

(assert (=> b!2291985 (= lt!850364 lt!850336)))

(declare-fun lt!850363 () BalanceConc!17492)

(declare-fun ++!6669 (BalanceConc!17492 BalanceConc!17492) BalanceConc!17492)

(assert (=> b!2291985 (= lt!850363 (++!6669 (BalanceConc!17493 Empty!8882) (charsOf!2755 (_1!16066 (v!30441 lt!850369)))))))

(declare-fun lt!850341 () Option!5358)

(assert (=> b!2291985 (= lt!850341 (maxPrefixZipperSequence!875 thiss!16613 rules!1750 lt!850363))))

(declare-fun c!363377 () Bool)

(assert (=> b!2291985 (= c!363377 ((_ is Some!5357) lt!850341))))

(declare-fun e!1468659 () tuple2!27104)

(assert (=> b!2291985 (= (lexRec!540 thiss!16613 rules!1750 (++!6669 (BalanceConc!17493 Empty!8882) (charsOf!2755 (_1!16066 (v!30441 lt!850369))))) e!1468659)))

(declare-fun lt!850351 () Unit!40164)

(declare-fun Unit!40167 () Unit!40164)

(assert (=> b!2291985 (= lt!850351 Unit!40167)))

(assert (=> b!2291985 (= lt!850353 (++!6669 (BalanceConc!17493 Empty!8882) (charsOf!2755 (_1!16066 (v!30441 lt!850369)))))))

(declare-fun lt!850338 () List!27379)

(assert (=> b!2291985 (= lt!850338 (list!10688 lt!850353))))

(declare-fun lt!850350 () List!27379)

(assert (=> b!2291985 (= lt!850350 (list!10688 (_2!16066 (v!30441 lt!850369))))))

(declare-fun lt!850346 () Unit!40164)

(assert (=> b!2291985 (= lt!850346 (lemmaConcatTwoListThenFSndIsSuffix!470 lt!850338 lt!850350))))

(assert (=> b!2291985 (isSuffix!776 lt!850350 (++!6667 lt!850338 lt!850350))))

(declare-fun lt!850352 () Unit!40164)

(assert (=> b!2291985 (= lt!850352 lt!850346)))

(declare-fun lt!850345 () tuple2!27104)

(declare-fun b!2291986 () Bool)

(assert (=> b!2291986 (= lt!850345 (lexRec!540 thiss!16613 rules!1750 (_2!16066 (v!30441 lt!850341))))))

(assert (=> b!2291986 (= e!1468659 (tuple2!27105 (prepend!1010 (_1!16062 lt!850345) (_1!16066 (v!30441 lt!850341))) (_2!16062 lt!850345)))))

(declare-fun b!2291987 () Bool)

(assert (=> b!2291987 (= e!1468661 (= (list!10688 (_2!16062 lt!850354)) (list!10688 (_2!16062 (lexRec!540 thiss!16613 rules!1750 (seqFromList!3071 input!1722))))))))

(declare-fun b!2291988 () Bool)

(assert (=> b!2291988 (= e!1468659 (tuple2!27105 (BalanceConc!17495 Empty!8883) lt!850363))))

(declare-fun b!2291989 () Bool)

(assert (=> b!2291989 (= e!1468662 (tuple2!27105 (BalanceConc!17495 Empty!8883) (seqFromList!3071 input!1722)))))

(assert (= (and d!677895 c!363379) b!2291985))

(assert (= (and d!677895 (not c!363379)) b!2291989))

(assert (= (and b!2291985 c!363378) b!2291983))

(assert (= (and b!2291985 (not c!363378)) b!2291984))

(assert (= (and b!2291985 c!363377) b!2291986))

(assert (= (and b!2291985 (not c!363377)) b!2291988))

(assert (= (and d!677895 res!980201) b!2291987))

(declare-fun m!2719611 () Bool)

(assert (=> d!677895 m!2719611))

(declare-fun m!2719613 () Bool)

(assert (=> d!677895 m!2719613))

(assert (=> d!677895 m!2718879))

(assert (=> d!677895 m!2719247))

(declare-fun m!2719615 () Bool)

(assert (=> d!677895 m!2719615))

(declare-fun m!2719617 () Bool)

(assert (=> d!677895 m!2719617))

(assert (=> d!677895 m!2719615))

(assert (=> d!677895 m!2718879))

(assert (=> d!677895 m!2718879))

(declare-fun m!2719619 () Bool)

(assert (=> d!677895 m!2719619))

(declare-fun m!2719621 () Bool)

(assert (=> d!677895 m!2719621))

(declare-fun m!2719623 () Bool)

(assert (=> d!677895 m!2719623))

(assert (=> d!677895 m!2718879))

(declare-fun m!2719625 () Bool)

(assert (=> d!677895 m!2719625))

(declare-fun m!2719627 () Bool)

(assert (=> b!2291986 m!2719627))

(declare-fun m!2719629 () Bool)

(assert (=> b!2291986 m!2719629))

(declare-fun m!2719631 () Bool)

(assert (=> b!2291985 m!2719631))

(declare-fun m!2719633 () Bool)

(assert (=> b!2291985 m!2719633))

(declare-fun m!2719635 () Bool)

(assert (=> b!2291985 m!2719635))

(declare-fun m!2719637 () Bool)

(assert (=> b!2291985 m!2719637))

(assert (=> b!2291985 m!2719613))

(declare-fun m!2719639 () Bool)

(assert (=> b!2291985 m!2719639))

(declare-fun m!2719641 () Bool)

(assert (=> b!2291985 m!2719641))

(declare-fun m!2719643 () Bool)

(assert (=> b!2291985 m!2719643))

(assert (=> b!2291985 m!2719633))

(declare-fun m!2719645 () Bool)

(assert (=> b!2291985 m!2719645))

(declare-fun m!2719647 () Bool)

(assert (=> b!2291985 m!2719647))

(declare-fun m!2719649 () Bool)

(assert (=> b!2291985 m!2719649))

(declare-fun m!2719651 () Bool)

(assert (=> b!2291985 m!2719651))

(assert (=> b!2291985 m!2719635))

(declare-fun m!2719653 () Bool)

(assert (=> b!2291985 m!2719653))

(declare-fun m!2719655 () Bool)

(assert (=> b!2291985 m!2719655))

(declare-fun m!2719657 () Bool)

(assert (=> b!2291985 m!2719657))

(declare-fun m!2719659 () Bool)

(assert (=> b!2291985 m!2719659))

(declare-fun m!2719661 () Bool)

(assert (=> b!2291985 m!2719661))

(declare-fun m!2719663 () Bool)

(assert (=> b!2291985 m!2719663))

(assert (=> b!2291985 m!2719663))

(declare-fun m!2719665 () Bool)

(assert (=> b!2291985 m!2719665))

(assert (=> b!2291985 m!2719635))

(declare-fun m!2719667 () Bool)

(assert (=> b!2291985 m!2719667))

(declare-fun m!2719669 () Bool)

(assert (=> b!2291985 m!2719669))

(assert (=> b!2291985 m!2718879))

(assert (=> b!2291985 m!2719651))

(declare-fun m!2719671 () Bool)

(assert (=> b!2291985 m!2719671))

(assert (=> b!2291985 m!2719655))

(declare-fun m!2719673 () Bool)

(assert (=> b!2291985 m!2719673))

(declare-fun m!2719675 () Bool)

(assert (=> b!2291985 m!2719675))

(declare-fun m!2719677 () Bool)

(assert (=> b!2291985 m!2719677))

(assert (=> b!2291985 m!2719673))

(assert (=> b!2291985 m!2719639))

(declare-fun m!2719679 () Bool)

(assert (=> b!2291985 m!2719679))

(assert (=> b!2291985 m!2719651))

(declare-fun m!2719681 () Bool)

(assert (=> b!2291985 m!2719681))

(assert (=> b!2291985 m!2719647))

(assert (=> b!2291985 m!2718879))

(declare-fun m!2719683 () Bool)

(assert (=> b!2291985 m!2719683))

(assert (=> b!2291985 m!2718879))

(assert (=> b!2291985 m!2719625))

(assert (=> b!2291985 m!2719675))

(assert (=> b!2291985 m!2719637))

(declare-fun m!2719685 () Bool)

(assert (=> b!2291985 m!2719685))

(declare-fun m!2719687 () Bool)

(assert (=> b!2291985 m!2719687))

(declare-fun m!2719689 () Bool)

(assert (=> b!2291985 m!2719689))

(assert (=> b!2291985 m!2719613))

(assert (=> b!2291985 m!2719653))

(declare-fun m!2719691 () Bool)

(assert (=> b!2291985 m!2719691))

(declare-fun m!2719693 () Bool)

(assert (=> b!2291987 m!2719693))

(assert (=> b!2291987 m!2718879))

(assert (=> b!2291987 m!2719625))

(declare-fun m!2719695 () Bool)

(assert (=> b!2291987 m!2719695))

(declare-fun m!2719697 () Bool)

(assert (=> b!2291983 m!2719697))

(declare-fun m!2719699 () Bool)

(assert (=> b!2291983 m!2719699))

(assert (=> d!677783 d!677895))

(declare-fun d!677937 () Bool)

(declare-fun c!363382 () Bool)

(assert (=> d!677937 (= c!363382 ((_ is Node!8882) (c!363262 (dynLambda!11843 (toChars!6016 (transformation!4367 (rule!6703 (h!32689 tokens!456)))) (value!138279 (h!32689 tokens!456))))))))

(declare-fun e!1468667 () Bool)

(assert (=> d!677937 (= (inv!36889 (c!363262 (dynLambda!11843 (toChars!6016 (transformation!4367 (rule!6703 (h!32689 tokens!456)))) (value!138279 (h!32689 tokens!456))))) e!1468667)))

(declare-fun b!2291996 () Bool)

(declare-fun inv!36891 (Conc!8882) Bool)

(assert (=> b!2291996 (= e!1468667 (inv!36891 (c!363262 (dynLambda!11843 (toChars!6016 (transformation!4367 (rule!6703 (h!32689 tokens!456)))) (value!138279 (h!32689 tokens!456))))))))

(declare-fun b!2291997 () Bool)

(declare-fun e!1468668 () Bool)

(assert (=> b!2291997 (= e!1468667 e!1468668)))

(declare-fun res!980204 () Bool)

(assert (=> b!2291997 (= res!980204 (not ((_ is Leaf!13051) (c!363262 (dynLambda!11843 (toChars!6016 (transformation!4367 (rule!6703 (h!32689 tokens!456)))) (value!138279 (h!32689 tokens!456)))))))))

(assert (=> b!2291997 (=> res!980204 e!1468668)))

(declare-fun b!2291998 () Bool)

(declare-fun inv!36892 (Conc!8882) Bool)

(assert (=> b!2291998 (= e!1468668 (inv!36892 (c!363262 (dynLambda!11843 (toChars!6016 (transformation!4367 (rule!6703 (h!32689 tokens!456)))) (value!138279 (h!32689 tokens!456))))))))

(assert (= (and d!677937 c!363382) b!2291996))

(assert (= (and d!677937 (not c!363382)) b!2291997))

(assert (= (and b!2291997 (not res!980204)) b!2291998))

(declare-fun m!2719701 () Bool)

(assert (=> b!2291996 m!2719701))

(declare-fun m!2719703 () Bool)

(assert (=> b!2291998 m!2719703))

(assert (=> b!2291709 d!677937))

(declare-fun d!677939 () Bool)

(declare-fun nullableFct!451 (Regex!6715) Bool)

(assert (=> d!677939 (= (nullable!1868 (regex!4367 r!2363)) (nullableFct!451 (regex!4367 r!2363)))))

(declare-fun bs!457079 () Bool)

(assert (= bs!457079 d!677939))

(declare-fun m!2719705 () Bool)

(assert (=> bs!457079 m!2719705))

(assert (=> b!2291832 d!677939))

(declare-fun d!677941 () Bool)

(assert (=> d!677941 (= (isEmpty!15543 (list!10688 (charsOf!2755 (head!4996 tokens!456)))) ((_ is Nil!27285) (list!10688 (charsOf!2755 (head!4996 tokens!456)))))))

(assert (=> bm!136655 d!677941))

(assert (=> d!677847 d!677845))

(declare-fun d!677943 () Bool)

(assert (=> d!677943 (isPrefix!2357 input!1722 input!1722)))

(assert (=> d!677943 true))

(declare-fun _$45!1565 () Unit!40164)

(assert (=> d!677943 (= (choose!13389 input!1722 input!1722) _$45!1565)))

(declare-fun bs!457080 () Bool)

(assert (= bs!457080 d!677943))

(assert (=> bs!457080 m!2718863))

(assert (=> d!677847 d!677943))

(declare-fun d!677945 () Bool)

(declare-fun charsToInt!0 (List!27380) (_ BitVec 32))

(assert (=> d!677945 (= (inv!16 (value!138279 (h!32689 tokens!456))) (= (charsToInt!0 (text!32150 (value!138279 (h!32689 tokens!456)))) (value!138270 (value!138279 (h!32689 tokens!456)))))))

(declare-fun bs!457081 () Bool)

(assert (= bs!457081 d!677945))

(declare-fun m!2719707 () Bool)

(assert (=> bs!457081 m!2719707))

(assert (=> b!2291558 d!677945))

(declare-fun d!677947 () Bool)

(assert (=> d!677947 (= (isEmpty!15543 (originalCharacters!5137 (h!32689 tokens!456))) ((_ is Nil!27285) (originalCharacters!5137 (h!32689 tokens!456))))))

(assert (=> d!677853 d!677947))

(assert (=> d!677761 d!677859))

(declare-fun d!677949 () Bool)

(declare-fun lt!850370 () Int)

(assert (=> d!677949 (>= lt!850370 0)))

(declare-fun e!1468669 () Int)

(assert (=> d!677949 (= lt!850370 e!1468669)))

(declare-fun c!363383 () Bool)

(assert (=> d!677949 (= c!363383 ((_ is Nil!27285) input!1722))))

(assert (=> d!677949 (= (size!21481 input!1722) lt!850370)))

(declare-fun b!2291999 () Bool)

(assert (=> b!2291999 (= e!1468669 0)))

(declare-fun b!2292000 () Bool)

(assert (=> b!2292000 (= e!1468669 (+ 1 (size!21481 (t!204671 input!1722))))))

(assert (= (and d!677949 c!363383) b!2291999))

(assert (= (and d!677949 (not c!363383)) b!2292000))

(declare-fun m!2719709 () Bool)

(assert (=> b!2292000 m!2719709))

(assert (=> b!2291750 d!677949))

(declare-fun b!2292001 () Bool)

(declare-fun res!980210 () Bool)

(declare-fun e!1468670 () Bool)

(assert (=> b!2292001 (=> (not res!980210) (not e!1468670))))

(assert (=> b!2292001 (= res!980210 (isEmpty!15543 (tail!3311 (_1!16065 (findLongestMatchInner!723 (regex!4367 r!2363) Nil!27285 (size!21481 Nil!27285) input!1722 input!1722 (size!21481 input!1722))))))))

(declare-fun b!2292002 () Bool)

(declare-fun res!980208 () Bool)

(declare-fun e!1468676 () Bool)

(assert (=> b!2292002 (=> res!980208 e!1468676)))

(assert (=> b!2292002 (= res!980208 (not (isEmpty!15543 (tail!3311 (_1!16065 (findLongestMatchInner!723 (regex!4367 r!2363) Nil!27285 (size!21481 Nil!27285) input!1722 input!1722 (size!21481 input!1722)))))))))

(declare-fun b!2292003 () Bool)

(assert (=> b!2292003 (= e!1468676 (not (= (head!4998 (_1!16065 (findLongestMatchInner!723 (regex!4367 r!2363) Nil!27285 (size!21481 Nil!27285) input!1722 input!1722 (size!21481 input!1722)))) (c!363263 (regex!4367 r!2363)))))))

(declare-fun b!2292004 () Bool)

(declare-fun e!1468672 () Bool)

(assert (=> b!2292004 (= e!1468672 (nullable!1868 (regex!4367 r!2363)))))

(declare-fun b!2292005 () Bool)

(assert (=> b!2292005 (= e!1468670 (= (head!4998 (_1!16065 (findLongestMatchInner!723 (regex!4367 r!2363) Nil!27285 (size!21481 Nil!27285) input!1722 input!1722 (size!21481 input!1722)))) (c!363263 (regex!4367 r!2363))))))

(declare-fun d!677951 () Bool)

(declare-fun e!1468671 () Bool)

(assert (=> d!677951 e!1468671))

(declare-fun c!363385 () Bool)

(assert (=> d!677951 (= c!363385 ((_ is EmptyExpr!6715) (regex!4367 r!2363)))))

(declare-fun lt!850371 () Bool)

(assert (=> d!677951 (= lt!850371 e!1468672)))

(declare-fun c!363384 () Bool)

(assert (=> d!677951 (= c!363384 (isEmpty!15543 (_1!16065 (findLongestMatchInner!723 (regex!4367 r!2363) Nil!27285 (size!21481 Nil!27285) input!1722 input!1722 (size!21481 input!1722)))))))

(assert (=> d!677951 (validRegex!2530 (regex!4367 r!2363))))

(assert (=> d!677951 (= (matchR!2972 (regex!4367 r!2363) (_1!16065 (findLongestMatchInner!723 (regex!4367 r!2363) Nil!27285 (size!21481 Nil!27285) input!1722 input!1722 (size!21481 input!1722)))) lt!850371)))

(declare-fun b!2292006 () Bool)

(declare-fun call!136673 () Bool)

(assert (=> b!2292006 (= e!1468671 (= lt!850371 call!136673))))

(declare-fun b!2292007 () Bool)

(declare-fun res!980205 () Bool)

(declare-fun e!1468674 () Bool)

(assert (=> b!2292007 (=> res!980205 e!1468674)))

(assert (=> b!2292007 (= res!980205 e!1468670)))

(declare-fun res!980212 () Bool)

(assert (=> b!2292007 (=> (not res!980212) (not e!1468670))))

(assert (=> b!2292007 (= res!980212 lt!850371)))

(declare-fun b!2292008 () Bool)

(declare-fun e!1468675 () Bool)

(assert (=> b!2292008 (= e!1468675 (not lt!850371))))

(declare-fun b!2292009 () Bool)

(declare-fun res!980209 () Bool)

(assert (=> b!2292009 (=> (not res!980209) (not e!1468670))))

(assert (=> b!2292009 (= res!980209 (not call!136673))))

(declare-fun b!2292010 () Bool)

(declare-fun e!1468673 () Bool)

(assert (=> b!2292010 (= e!1468674 e!1468673)))

(declare-fun res!980207 () Bool)

(assert (=> b!2292010 (=> (not res!980207) (not e!1468673))))

(assert (=> b!2292010 (= res!980207 (not lt!850371))))

(declare-fun b!2292011 () Bool)

(assert (=> b!2292011 (= e!1468671 e!1468675)))

(declare-fun c!363386 () Bool)

(assert (=> b!2292011 (= c!363386 ((_ is EmptyLang!6715) (regex!4367 r!2363)))))

(declare-fun b!2292012 () Bool)

(assert (=> b!2292012 (= e!1468673 e!1468676)))

(declare-fun res!980206 () Bool)

(assert (=> b!2292012 (=> res!980206 e!1468676)))

(assert (=> b!2292012 (= res!980206 call!136673)))

(declare-fun b!2292013 () Bool)

(declare-fun res!980211 () Bool)

(assert (=> b!2292013 (=> res!980211 e!1468674)))

(assert (=> b!2292013 (= res!980211 (not ((_ is ElementMatch!6715) (regex!4367 r!2363))))))

(assert (=> b!2292013 (= e!1468675 e!1468674)))

(declare-fun bm!136668 () Bool)

(assert (=> bm!136668 (= call!136673 (isEmpty!15543 (_1!16065 (findLongestMatchInner!723 (regex!4367 r!2363) Nil!27285 (size!21481 Nil!27285) input!1722 input!1722 (size!21481 input!1722)))))))

(declare-fun b!2292014 () Bool)

(assert (=> b!2292014 (= e!1468672 (matchR!2972 (derivativeStep!1528 (regex!4367 r!2363) (head!4998 (_1!16065 (findLongestMatchInner!723 (regex!4367 r!2363) Nil!27285 (size!21481 Nil!27285) input!1722 input!1722 (size!21481 input!1722))))) (tail!3311 (_1!16065 (findLongestMatchInner!723 (regex!4367 r!2363) Nil!27285 (size!21481 Nil!27285) input!1722 input!1722 (size!21481 input!1722))))))))

(assert (= (and d!677951 c!363384) b!2292004))

(assert (= (and d!677951 (not c!363384)) b!2292014))

(assert (= (and d!677951 c!363385) b!2292006))

(assert (= (and d!677951 (not c!363385)) b!2292011))

(assert (= (and b!2292011 c!363386) b!2292008))

(assert (= (and b!2292011 (not c!363386)) b!2292013))

(assert (= (and b!2292013 (not res!980211)) b!2292007))

(assert (= (and b!2292007 res!980212) b!2292009))

(assert (= (and b!2292009 res!980209) b!2292001))

(assert (= (and b!2292001 res!980210) b!2292005))

(assert (= (and b!2292007 (not res!980205)) b!2292010))

(assert (= (and b!2292010 res!980207) b!2292012))

(assert (= (and b!2292012 (not res!980206)) b!2292002))

(assert (= (and b!2292002 (not res!980208)) b!2292003))

(assert (= (or b!2292006 b!2292009 b!2292012) bm!136668))

(declare-fun m!2719711 () Bool)

(assert (=> b!2292002 m!2719711))

(assert (=> b!2292002 m!2719711))

(declare-fun m!2719713 () Bool)

(assert (=> b!2292002 m!2719713))

(declare-fun m!2719715 () Bool)

(assert (=> b!2292003 m!2719715))

(assert (=> b!2292001 m!2719711))

(assert (=> b!2292001 m!2719711))

(assert (=> b!2292001 m!2719713))

(assert (=> d!677951 m!2719373))

(assert (=> d!677951 m!2718957))

(assert (=> b!2292004 m!2718959))

(assert (=> b!2292014 m!2719715))

(assert (=> b!2292014 m!2719715))

(declare-fun m!2719717 () Bool)

(assert (=> b!2292014 m!2719717))

(assert (=> b!2292014 m!2719711))

(assert (=> b!2292014 m!2719717))

(assert (=> b!2292014 m!2719711))

(declare-fun m!2719719 () Bool)

(assert (=> b!2292014 m!2719719))

(assert (=> b!2292005 m!2719715))

(assert (=> bm!136668 m!2719373))

(assert (=> b!2291736 d!677951))

(declare-fun b!2292129 () Bool)

(declare-fun e!1468745 () tuple2!27110)

(assert (=> b!2292129 (= e!1468745 (tuple2!27111 Nil!27285 input!1722))))

(declare-fun b!2292130 () Bool)

(declare-fun e!1468747 () Bool)

(declare-fun lt!850553 () tuple2!27110)

(assert (=> b!2292130 (= e!1468747 (>= (size!21481 (_1!16065 lt!850553)) (size!21481 Nil!27285)))))

(declare-fun b!2292131 () Bool)

(declare-fun e!1468740 () tuple2!27110)

(declare-fun e!1468742 () tuple2!27110)

(assert (=> b!2292131 (= e!1468740 e!1468742)))

(declare-fun c!363432 () Bool)

(assert (=> b!2292131 (= c!363432 (= (size!21481 Nil!27285) (size!21481 input!1722)))))

(declare-fun bm!136699 () Bool)

(declare-fun call!136706 () List!27379)

(assert (=> bm!136699 (= call!136706 (tail!3311 input!1722))))

(declare-fun b!2292132 () Bool)

(assert (=> b!2292132 (= e!1468740 (tuple2!27111 Nil!27285 input!1722))))

(declare-fun b!2292133 () Bool)

(declare-fun lt!850540 () tuple2!27110)

(assert (=> b!2292133 (= e!1468745 lt!850540)))

(declare-fun bm!136700 () Bool)

(declare-fun call!136710 () C!13576)

(assert (=> bm!136700 (= call!136710 (head!4998 input!1722))))

(declare-fun b!2292134 () Bool)

(declare-fun c!363433 () Bool)

(declare-fun call!136707 () Bool)

(assert (=> b!2292134 (= c!363433 call!136707)))

(declare-fun lt!850541 () Unit!40164)

(declare-fun lt!850562 () Unit!40164)

(assert (=> b!2292134 (= lt!850541 lt!850562)))

(declare-fun lt!850560 () C!13576)

(declare-fun lt!850548 () List!27379)

(assert (=> b!2292134 (= (++!6667 (++!6667 Nil!27285 (Cons!27285 lt!850560 Nil!27285)) lt!850548) input!1722)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!526 (List!27379 C!13576 List!27379 List!27379) Unit!40164)

(assert (=> b!2292134 (= lt!850562 (lemmaMoveElementToOtherListKeepsConcatEq!526 Nil!27285 lt!850560 lt!850548 input!1722))))

(assert (=> b!2292134 (= lt!850548 (tail!3311 input!1722))))

(assert (=> b!2292134 (= lt!850560 (head!4998 input!1722))))

(declare-fun lt!850535 () Unit!40164)

(declare-fun lt!850537 () Unit!40164)

(assert (=> b!2292134 (= lt!850535 lt!850537)))

(assert (=> b!2292134 (isPrefix!2357 (++!6667 Nil!27285 (Cons!27285 (head!4998 (getSuffix!1148 input!1722 Nil!27285)) Nil!27285)) input!1722)))

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!398 (List!27379 List!27379) Unit!40164)

(assert (=> b!2292134 (= lt!850537 (lemmaAddHeadSuffixToPrefixStillPrefix!398 Nil!27285 input!1722))))

(declare-fun lt!850559 () Unit!40164)

(declare-fun lt!850546 () Unit!40164)

(assert (=> b!2292134 (= lt!850559 lt!850546)))

(assert (=> b!2292134 (= lt!850546 (lemmaAddHeadSuffixToPrefixStillPrefix!398 Nil!27285 input!1722))))

(declare-fun lt!850555 () List!27379)

(assert (=> b!2292134 (= lt!850555 (++!6667 Nil!27285 (Cons!27285 (head!4998 input!1722) Nil!27285)))))

(declare-fun lt!850538 () Unit!40164)

(declare-fun e!1468741 () Unit!40164)

(assert (=> b!2292134 (= lt!850538 e!1468741)))

(declare-fun c!363434 () Bool)

(assert (=> b!2292134 (= c!363434 (= (size!21481 Nil!27285) (size!21481 input!1722)))))

(declare-fun lt!850543 () Unit!40164)

(declare-fun lt!850547 () Unit!40164)

(assert (=> b!2292134 (= lt!850543 lt!850547)))

(assert (=> b!2292134 (<= (size!21481 Nil!27285) (size!21481 input!1722))))

(declare-fun lemmaIsPrefixThenSmallerEqSize!201 (List!27379 List!27379) Unit!40164)

(assert (=> b!2292134 (= lt!850547 (lemmaIsPrefixThenSmallerEqSize!201 Nil!27285 input!1722))))

(declare-fun e!1468743 () tuple2!27110)

(assert (=> b!2292134 (= e!1468742 e!1468743)))

(declare-fun b!2292135 () Bool)

(declare-fun Unit!40168 () Unit!40164)

(assert (=> b!2292135 (= e!1468741 Unit!40168)))

(declare-fun bm!136701 () Bool)

(declare-fun call!136705 () Unit!40164)

(assert (=> bm!136701 (= call!136705 (lemmaIsPrefixRefl!1499 input!1722 input!1722))))

(declare-fun bm!136702 () Bool)

(assert (=> bm!136702 (= call!136707 (nullable!1868 (regex!4367 r!2363)))))

(declare-fun b!2292136 () Bool)

(declare-fun e!1468744 () tuple2!27110)

(assert (=> b!2292136 (= e!1468744 (tuple2!27111 Nil!27285 Nil!27285))))

(declare-fun b!2292128 () Bool)

(declare-fun Unit!40169 () Unit!40164)

(assert (=> b!2292128 (= e!1468741 Unit!40169)))

(declare-fun lt!850539 () Unit!40164)

(assert (=> b!2292128 (= lt!850539 call!136705)))

(declare-fun call!136708 () Bool)

(assert (=> b!2292128 call!136708))

(declare-fun lt!850556 () Unit!40164)

(assert (=> b!2292128 (= lt!850556 lt!850539)))

(declare-fun lt!850561 () Unit!40164)

(declare-fun call!136709 () Unit!40164)

(assert (=> b!2292128 (= lt!850561 call!136709)))

(assert (=> b!2292128 (= input!1722 Nil!27285)))

(declare-fun lt!850551 () Unit!40164)

(assert (=> b!2292128 (= lt!850551 lt!850561)))

(assert (=> b!2292128 false))

(declare-fun d!677953 () Bool)

(declare-fun e!1468746 () Bool)

(assert (=> d!677953 e!1468746))

(declare-fun res!980242 () Bool)

(assert (=> d!677953 (=> (not res!980242) (not e!1468746))))

(assert (=> d!677953 (= res!980242 (= (++!6667 (_1!16065 lt!850553) (_2!16065 lt!850553)) input!1722))))

(assert (=> d!677953 (= lt!850553 e!1468740)))

(declare-fun c!363429 () Bool)

(declare-fun lostCause!689 (Regex!6715) Bool)

(assert (=> d!677953 (= c!363429 (lostCause!689 (regex!4367 r!2363)))))

(declare-fun lt!850544 () Unit!40164)

(declare-fun Unit!40170 () Unit!40164)

(assert (=> d!677953 (= lt!850544 Unit!40170)))

(assert (=> d!677953 (= (getSuffix!1148 input!1722 Nil!27285) input!1722)))

(declare-fun lt!850545 () Unit!40164)

(declare-fun lt!850558 () Unit!40164)

(assert (=> d!677953 (= lt!850545 lt!850558)))

(declare-fun lt!850552 () List!27379)

(assert (=> d!677953 (= input!1722 lt!850552)))

(assert (=> d!677953 (= lt!850558 (lemmaSamePrefixThenSameSuffix!1058 Nil!27285 input!1722 Nil!27285 lt!850552 input!1722))))

(assert (=> d!677953 (= lt!850552 (getSuffix!1148 input!1722 Nil!27285))))

(declare-fun lt!850554 () Unit!40164)

(declare-fun lt!850549 () Unit!40164)

(assert (=> d!677953 (= lt!850554 lt!850549)))

(assert (=> d!677953 (isPrefix!2357 Nil!27285 (++!6667 Nil!27285 input!1722))))

(assert (=> d!677953 (= lt!850549 (lemmaConcatTwoListThenFirstIsPrefix!1562 Nil!27285 input!1722))))

(assert (=> d!677953 (validRegex!2530 (regex!4367 r!2363))))

(assert (=> d!677953 (= (findLongestMatchInner!723 (regex!4367 r!2363) Nil!27285 (size!21481 Nil!27285) input!1722 input!1722 (size!21481 input!1722)) lt!850553)))

(declare-fun b!2292137 () Bool)

(declare-fun call!136711 () tuple2!27110)

(assert (=> b!2292137 (= e!1468743 call!136711)))

(declare-fun bm!136703 () Bool)

(declare-fun lemmaIsPrefixSameLengthThenSameList!400 (List!27379 List!27379 List!27379) Unit!40164)

(assert (=> bm!136703 (= call!136709 (lemmaIsPrefixSameLengthThenSameList!400 input!1722 Nil!27285 input!1722))))

(declare-fun bm!136704 () Bool)

(declare-fun call!136704 () Regex!6715)

(assert (=> bm!136704 (= call!136704 (derivativeStep!1528 (regex!4367 r!2363) call!136710))))

(declare-fun bm!136705 () Bool)

(assert (=> bm!136705 (= call!136708 (isPrefix!2357 input!1722 input!1722))))

(declare-fun b!2292138 () Bool)

(assert (=> b!2292138 (= e!1468743 e!1468745)))

(assert (=> b!2292138 (= lt!850540 call!136711)))

(declare-fun c!363430 () Bool)

(assert (=> b!2292138 (= c!363430 (isEmpty!15543 (_1!16065 lt!850540)))))

(declare-fun b!2292139 () Bool)

(assert (=> b!2292139 (= e!1468746 e!1468747)))

(declare-fun res!980243 () Bool)

(assert (=> b!2292139 (=> res!980243 e!1468747)))

(assert (=> b!2292139 (= res!980243 (isEmpty!15543 (_1!16065 lt!850553)))))

(declare-fun b!2292140 () Bool)

(declare-fun c!363431 () Bool)

(assert (=> b!2292140 (= c!363431 call!136707)))

(declare-fun lt!850557 () Unit!40164)

(declare-fun lt!850536 () Unit!40164)

(assert (=> b!2292140 (= lt!850557 lt!850536)))

(assert (=> b!2292140 (= input!1722 Nil!27285)))

(assert (=> b!2292140 (= lt!850536 call!136709)))

(declare-fun lt!850550 () Unit!40164)

(declare-fun lt!850542 () Unit!40164)

(assert (=> b!2292140 (= lt!850550 lt!850542)))

(assert (=> b!2292140 call!136708))

(assert (=> b!2292140 (= lt!850542 call!136705)))

(assert (=> b!2292140 (= e!1468742 e!1468744)))

(declare-fun bm!136706 () Bool)

(assert (=> bm!136706 (= call!136711 (findLongestMatchInner!723 call!136704 lt!850555 (+ (size!21481 Nil!27285) 1) call!136706 input!1722 (size!21481 input!1722)))))

(declare-fun b!2292141 () Bool)

(assert (=> b!2292141 (= e!1468744 (tuple2!27111 Nil!27285 input!1722))))

(assert (= (and d!677953 c!363429) b!2292132))

(assert (= (and d!677953 (not c!363429)) b!2292131))

(assert (= (and b!2292131 c!363432) b!2292140))

(assert (= (and b!2292131 (not c!363432)) b!2292134))

(assert (= (and b!2292140 c!363431) b!2292136))

(assert (= (and b!2292140 (not c!363431)) b!2292141))

(assert (= (and b!2292134 c!363434) b!2292128))

(assert (= (and b!2292134 (not c!363434)) b!2292135))

(assert (= (and b!2292134 c!363433) b!2292138))

(assert (= (and b!2292134 (not c!363433)) b!2292137))

(assert (= (and b!2292138 c!363430) b!2292129))

(assert (= (and b!2292138 (not c!363430)) b!2292133))

(assert (= (or b!2292138 b!2292137) bm!136700))

(assert (= (or b!2292138 b!2292137) bm!136699))

(assert (= (or b!2292138 b!2292137) bm!136704))

(assert (= (or b!2292138 b!2292137) bm!136706))

(assert (= (or b!2292140 b!2292134) bm!136702))

(assert (= (or b!2292140 b!2292128) bm!136705))

(assert (= (or b!2292140 b!2292128) bm!136703))

(assert (= (or b!2292140 b!2292128) bm!136701))

(assert (= (and d!677953 res!980242) b!2292139))

(assert (= (and b!2292139 (not res!980243)) b!2292130))

(assert (=> bm!136702 m!2718959))

(declare-fun m!2719843 () Bool)

(assert (=> b!2292130 m!2719843))

(assert (=> b!2292130 m!2719371))

(assert (=> bm!136706 m!2719045))

(declare-fun m!2719845 () Bool)

(assert (=> bm!136706 m!2719845))

(assert (=> bm!136699 m!2719257))

(assert (=> bm!136705 m!2718863))

(assert (=> bm!136700 m!2719343))

(declare-fun m!2719847 () Bool)

(assert (=> bm!136704 m!2719847))

(declare-fun m!2719849 () Bool)

(assert (=> bm!136703 m!2719849))

(declare-fun m!2719851 () Bool)

(assert (=> b!2292139 m!2719851))

(declare-fun m!2719853 () Bool)

(assert (=> b!2292138 m!2719853))

(declare-fun m!2719855 () Bool)

(assert (=> b!2292134 m!2719855))

(declare-fun m!2719857 () Bool)

(assert (=> b!2292134 m!2719857))

(assert (=> b!2292134 m!2719371))

(declare-fun m!2719859 () Bool)

(assert (=> b!2292134 m!2719859))

(declare-fun m!2719861 () Bool)

(assert (=> b!2292134 m!2719861))

(declare-fun m!2719863 () Bool)

(assert (=> b!2292134 m!2719863))

(assert (=> b!2292134 m!2719257))

(assert (=> b!2292134 m!2719343))

(assert (=> b!2292134 m!2719045))

(declare-fun m!2719865 () Bool)

(assert (=> b!2292134 m!2719865))

(declare-fun m!2719867 () Bool)

(assert (=> b!2292134 m!2719867))

(declare-fun m!2719869 () Bool)

(assert (=> b!2292134 m!2719869))

(declare-fun m!2719871 () Bool)

(assert (=> b!2292134 m!2719871))

(assert (=> b!2292134 m!2719865))

(assert (=> b!2292134 m!2719869))

(declare-fun m!2719873 () Bool)

(assert (=> b!2292134 m!2719873))

(assert (=> b!2292134 m!2719859))

(declare-fun m!2719875 () Bool)

(assert (=> d!677953 m!2719875))

(declare-fun m!2719877 () Bool)

(assert (=> d!677953 m!2719877))

(declare-fun m!2719879 () Bool)

(assert (=> d!677953 m!2719879))

(assert (=> d!677953 m!2719859))

(declare-fun m!2719881 () Bool)

(assert (=> d!677953 m!2719881))

(declare-fun m!2719883 () Bool)

(assert (=> d!677953 m!2719883))

(assert (=> d!677953 m!2719883))

(declare-fun m!2719885 () Bool)

(assert (=> d!677953 m!2719885))

(assert (=> d!677953 m!2718957))

(assert (=> bm!136701 m!2718865))

(assert (=> b!2291736 d!677953))

(declare-fun d!677967 () Bool)

(declare-fun lt!850563 () Int)

(assert (=> d!677967 (>= lt!850563 0)))

(declare-fun e!1468748 () Int)

(assert (=> d!677967 (= lt!850563 e!1468748)))

(declare-fun c!363435 () Bool)

(assert (=> d!677967 (= c!363435 ((_ is Nil!27285) Nil!27285))))

(assert (=> d!677967 (= (size!21481 Nil!27285) lt!850563)))

(declare-fun b!2292142 () Bool)

(assert (=> b!2292142 (= e!1468748 0)))

(declare-fun b!2292143 () Bool)

(assert (=> b!2292143 (= e!1468748 (+ 1 (size!21481 (t!204671 Nil!27285))))))

(assert (= (and d!677967 c!363435) b!2292142))

(assert (= (and d!677967 (not c!363435)) b!2292143))

(declare-fun m!2719887 () Bool)

(assert (=> b!2292143 m!2719887))

(assert (=> b!2291736 d!677967))

(assert (=> b!2291736 d!677949))

(declare-fun b!2292162 () Bool)

(declare-fun e!1468767 () Bool)

(declare-fun e!1468765 () Bool)

(assert (=> b!2292162 (= e!1468767 e!1468765)))

(declare-fun c!363440 () Bool)

(assert (=> b!2292162 (= c!363440 ((_ is Star!6715) (regex!4367 r!2363)))))

(declare-fun d!677969 () Bool)

(declare-fun res!980258 () Bool)

(assert (=> d!677969 (=> res!980258 e!1468767)))

(assert (=> d!677969 (= res!980258 ((_ is ElementMatch!6715) (regex!4367 r!2363)))))

(assert (=> d!677969 (= (validRegex!2530 (regex!4367 r!2363)) e!1468767)))

(declare-fun bm!136713 () Bool)

(declare-fun call!136718 () Bool)

(declare-fun call!136719 () Bool)

(assert (=> bm!136713 (= call!136718 call!136719)))

(declare-fun b!2292163 () Bool)

(declare-fun res!980256 () Bool)

(declare-fun e!1468769 () Bool)

(assert (=> b!2292163 (=> (not res!980256) (not e!1468769))))

(assert (=> b!2292163 (= res!980256 call!136718)))

(declare-fun e!1468763 () Bool)

(assert (=> b!2292163 (= e!1468763 e!1468769)))

(declare-fun b!2292164 () Bool)

(declare-fun call!136720 () Bool)

(assert (=> b!2292164 (= e!1468769 call!136720)))

(declare-fun b!2292165 () Bool)

(declare-fun e!1468768 () Bool)

(assert (=> b!2292165 (= e!1468768 call!136719)))

(declare-fun b!2292166 () Bool)

(declare-fun e!1468766 () Bool)

(assert (=> b!2292166 (= e!1468766 call!136718)))

(declare-fun bm!136714 () Bool)

(declare-fun c!363441 () Bool)

(assert (=> bm!136714 (= call!136720 (validRegex!2530 (ite c!363441 (regTwo!13943 (regex!4367 r!2363)) (regOne!13942 (regex!4367 r!2363)))))))

(declare-fun b!2292167 () Bool)

(declare-fun e!1468764 () Bool)

(assert (=> b!2292167 (= e!1468764 e!1468766)))

(declare-fun res!980255 () Bool)

(assert (=> b!2292167 (=> (not res!980255) (not e!1468766))))

(assert (=> b!2292167 (= res!980255 call!136720)))

(declare-fun bm!136715 () Bool)

(assert (=> bm!136715 (= call!136719 (validRegex!2530 (ite c!363440 (reg!7044 (regex!4367 r!2363)) (ite c!363441 (regOne!13943 (regex!4367 r!2363)) (regTwo!13942 (regex!4367 r!2363))))))))

(declare-fun b!2292168 () Bool)

(assert (=> b!2292168 (= e!1468765 e!1468768)))

(declare-fun res!980257 () Bool)

(assert (=> b!2292168 (= res!980257 (not (nullable!1868 (reg!7044 (regex!4367 r!2363)))))))

(assert (=> b!2292168 (=> (not res!980257) (not e!1468768))))

(declare-fun b!2292169 () Bool)

(declare-fun res!980254 () Bool)

(assert (=> b!2292169 (=> res!980254 e!1468764)))

(assert (=> b!2292169 (= res!980254 (not ((_ is Concat!11245) (regex!4367 r!2363))))))

(assert (=> b!2292169 (= e!1468763 e!1468764)))

(declare-fun b!2292170 () Bool)

(assert (=> b!2292170 (= e!1468765 e!1468763)))

(assert (=> b!2292170 (= c!363441 ((_ is Union!6715) (regex!4367 r!2363)))))

(assert (= (and d!677969 (not res!980258)) b!2292162))

(assert (= (and b!2292162 c!363440) b!2292168))

(assert (= (and b!2292162 (not c!363440)) b!2292170))

(assert (= (and b!2292168 res!980257) b!2292165))

(assert (= (and b!2292170 c!363441) b!2292163))

(assert (= (and b!2292170 (not c!363441)) b!2292169))

(assert (= (and b!2292163 res!980256) b!2292164))

(assert (= (and b!2292169 (not res!980254)) b!2292167))

(assert (= (and b!2292167 res!980255) b!2292166))

(assert (= (or b!2292163 b!2292166) bm!136713))

(assert (= (or b!2292164 b!2292167) bm!136714))

(assert (= (or b!2292165 bm!136713) bm!136715))

(declare-fun m!2719889 () Bool)

(assert (=> bm!136714 m!2719889))

(declare-fun m!2719891 () Bool)

(assert (=> bm!136715 m!2719891))

(declare-fun m!2719893 () Bool)

(assert (=> b!2292168 m!2719893))

(assert (=> d!677855 d!677969))

(assert (=> d!677819 d!677811))

(assert (=> d!677819 d!677823))

(declare-fun d!677971 () Bool)

(assert (=> d!677971 (isPrefix!2357 lt!850069 (++!6667 lt!850069 (_2!16061 lt!850065)))))

(assert (=> d!677971 true))

(declare-fun _$46!1329 () Unit!40164)

(assert (=> d!677971 (= (choose!13385 lt!850069 (_2!16061 lt!850065)) _$46!1329)))

(declare-fun bs!457083 () Bool)

(assert (= bs!457083 d!677971))

(assert (=> bs!457083 m!2718847))

(assert (=> bs!457083 m!2718847))

(assert (=> bs!457083 m!2718859))

(assert (=> d!677819 d!677971))

(declare-fun d!677973 () Bool)

(declare-fun c!363444 () Bool)

(assert (=> d!677973 (= c!363444 ((_ is Nil!27287) rules!1750))))

(declare-fun e!1468772 () (InoxSet Rule!8534))

(assert (=> d!677973 (= (content!3665 rules!1750) e!1468772)))

(declare-fun b!2292175 () Bool)

(assert (=> b!2292175 (= e!1468772 ((as const (Array Rule!8534 Bool)) false))))

(declare-fun b!2292176 () Bool)

(assert (=> b!2292176 (= e!1468772 ((_ map or) (store ((as const (Array Rule!8534 Bool)) false) (h!32688 rules!1750) true) (content!3665 (t!204673 rules!1750))))))

(assert (= (and d!677973 c!363444) b!2292175))

(assert (= (and d!677973 (not c!363444)) b!2292176))

(declare-fun m!2719895 () Bool)

(assert (=> b!2292176 m!2719895))

(declare-fun m!2719897 () Bool)

(assert (=> b!2292176 m!2719897))

(assert (=> d!677733 d!677973))

(declare-fun d!677975 () Bool)

(assert (=> d!677975 (= (list!10688 (dynLambda!11843 (toChars!6016 (transformation!4367 r!2363)) (dynLambda!11848 (toValue!6157 (transformation!4367 r!2363)) lt!850059))) (list!10692 (c!363262 (dynLambda!11843 (toChars!6016 (transformation!4367 r!2363)) (dynLambda!11848 (toValue!6157 (transformation!4367 r!2363)) lt!850059)))))))

(declare-fun bs!457084 () Bool)

(assert (= bs!457084 d!677975))

(declare-fun m!2719899 () Bool)

(assert (=> bs!457084 m!2719899))

(assert (=> d!677849 d!677975))

(declare-fun d!677977 () Bool)

(assert (=> d!677977 (= (list!10688 lt!850059) (list!10692 (c!363262 lt!850059)))))

(declare-fun bs!457085 () Bool)

(assert (= bs!457085 d!677977))

(declare-fun m!2719901 () Bool)

(assert (=> bs!457085 m!2719901))

(assert (=> d!677849 d!677977))

(declare-fun d!677979 () Bool)

(declare-fun dynLambda!11853 (Int BalanceConc!17492) Bool)

(assert (=> d!677979 (dynLambda!11853 lambda!85757 lt!850059)))

(declare-fun lt!850566 () Unit!40164)

(declare-fun choose!13390 (Int BalanceConc!17492) Unit!40164)

(assert (=> d!677979 (= lt!850566 (choose!13390 lambda!85757 lt!850059))))

(declare-fun Forall!1090 (Int) Bool)

(assert (=> d!677979 (Forall!1090 lambda!85757)))

(assert (=> d!677979 (= (ForallOf!497 lambda!85757 lt!850059) lt!850566)))

(declare-fun b_lambda!73041 () Bool)

(assert (=> (not b_lambda!73041) (not d!677979)))

(declare-fun bs!457086 () Bool)

(assert (= bs!457086 d!677979))

(declare-fun m!2719903 () Bool)

(assert (=> bs!457086 m!2719903))

(declare-fun m!2719905 () Bool)

(assert (=> bs!457086 m!2719905))

(declare-fun m!2719907 () Bool)

(assert (=> bs!457086 m!2719907))

(assert (=> d!677849 d!677979))

(declare-fun b!2292177 () Bool)

(declare-fun e!1468773 () Int)

(assert (=> b!2292177 (= e!1468773 0)))

(declare-fun d!677981 () Bool)

(declare-fun lt!850567 () Int)

(assert (=> d!677981 (>= lt!850567 0)))

(assert (=> d!677981 (= lt!850567 e!1468773)))

(declare-fun c!363446 () Bool)

(assert (=> d!677981 (= c!363446 (and ((_ is Cons!27287) (t!204673 rules!1750)) (= (h!32688 (t!204673 rules!1750)) r!2363)))))

(assert (=> d!677981 (contains!4743 (t!204673 rules!1750) r!2363)))

(assert (=> d!677981 (= (getIndex!380 (t!204673 rules!1750) r!2363) lt!850567)))

(declare-fun b!2292180 () Bool)

(declare-fun e!1468774 () Int)

(assert (=> b!2292180 (= e!1468774 (- 1))))

(declare-fun b!2292179 () Bool)

(assert (=> b!2292179 (= e!1468774 (+ 1 (getIndex!380 (t!204673 (t!204673 rules!1750)) r!2363)))))

(declare-fun b!2292178 () Bool)

(assert (=> b!2292178 (= e!1468773 e!1468774)))

(declare-fun c!363445 () Bool)

(assert (=> b!2292178 (= c!363445 (and ((_ is Cons!27287) (t!204673 rules!1750)) (not (= (h!32688 (t!204673 rules!1750)) r!2363))))))

(assert (= (and d!677981 c!363446) b!2292177))

(assert (= (and d!677981 (not c!363446)) b!2292178))

(assert (= (and b!2292178 c!363445) b!2292179))

(assert (= (and b!2292178 (not c!363445)) b!2292180))

(assert (=> d!677981 m!2719071))

(declare-fun m!2719909 () Bool)

(assert (=> b!2292179 m!2719909))

(assert (=> b!2291578 d!677981))

(declare-fun d!677983 () Bool)

(assert (=> d!677983 (= (head!4998 lt!850069) (h!32686 lt!850069))))

(assert (=> b!2291688 d!677983))

(declare-fun d!677985 () Bool)

(assert (=> d!677985 (= (head!4998 (++!6667 lt!850069 (_2!16061 lt!850065))) (h!32686 (++!6667 lt!850069 (_2!16061 lt!850065))))))

(assert (=> b!2291688 d!677985))

(declare-fun b!2292192 () Bool)

(declare-fun e!1468780 () List!27382)

(assert (=> b!2292192 (= e!1468780 (++!6668 (list!10693 (left!20683 (c!363264 (_1!16062 lt!850063)))) (list!10693 (right!21013 (c!363264 (_1!16062 lt!850063))))))))

(declare-fun b!2292190 () Bool)

(declare-fun e!1468779 () List!27382)

(assert (=> b!2292190 (= e!1468779 e!1468780)))

(declare-fun c!363452 () Bool)

(assert (=> b!2292190 (= c!363452 ((_ is Leaf!13052) (c!363264 (_1!16062 lt!850063))))))

(declare-fun b!2292189 () Bool)

(assert (=> b!2292189 (= e!1468779 Nil!27288)))

(declare-fun d!677987 () Bool)

(declare-fun c!363451 () Bool)

(assert (=> d!677987 (= c!363451 ((_ is Empty!8883) (c!363264 (_1!16062 lt!850063))))))

(assert (=> d!677987 (= (list!10693 (c!363264 (_1!16062 lt!850063))) e!1468779)))

(declare-fun b!2292191 () Bool)

(declare-fun list!10694 (IArray!17771) List!27382)

(assert (=> b!2292191 (= e!1468780 (list!10694 (xs!11825 (c!363264 (_1!16062 lt!850063)))))))

(assert (= (and d!677987 c!363451) b!2292189))

(assert (= (and d!677987 (not c!363451)) b!2292190))

(assert (= (and b!2292190 c!363452) b!2292191))

(assert (= (and b!2292190 (not c!363452)) b!2292192))

(declare-fun m!2719911 () Bool)

(assert (=> b!2292192 m!2719911))

(declare-fun m!2719913 () Bool)

(assert (=> b!2292192 m!2719913))

(assert (=> b!2292192 m!2719911))

(assert (=> b!2292192 m!2719913))

(declare-fun m!2719915 () Bool)

(assert (=> b!2292192 m!2719915))

(declare-fun m!2719917 () Bool)

(assert (=> b!2292191 m!2719917))

(assert (=> d!677779 d!677987))

(declare-fun d!677989 () Bool)

(assert (=> d!677989 (= (nullable!1868 (regex!4367 otherR!12)) (nullableFct!451 (regex!4367 otherR!12)))))

(declare-fun bs!457087 () Bool)

(assert (= bs!457087 d!677989))

(declare-fun m!2719919 () Bool)

(assert (=> bs!457087 m!2719919))

(assert (=> b!2291594 d!677989))

(declare-fun b!2292194 () Bool)

(declare-fun res!980260 () Bool)

(declare-fun e!1468783 () Bool)

(assert (=> b!2292194 (=> (not res!980260) (not e!1468783))))

(assert (=> b!2292194 (= res!980260 (= (head!4998 (tail!3311 otherP!12)) (head!4998 (tail!3311 input!1722))))))

(declare-fun d!677991 () Bool)

(declare-fun e!1468782 () Bool)

(assert (=> d!677991 e!1468782))

(declare-fun res!980262 () Bool)

(assert (=> d!677991 (=> res!980262 e!1468782)))

(declare-fun lt!850568 () Bool)

(assert (=> d!677991 (= res!980262 (not lt!850568))))

(declare-fun e!1468781 () Bool)

(assert (=> d!677991 (= lt!850568 e!1468781)))

(declare-fun res!980259 () Bool)

(assert (=> d!677991 (=> res!980259 e!1468781)))

(assert (=> d!677991 (= res!980259 ((_ is Nil!27285) (tail!3311 otherP!12)))))

(assert (=> d!677991 (= (isPrefix!2357 (tail!3311 otherP!12) (tail!3311 input!1722)) lt!850568)))

(declare-fun b!2292193 () Bool)

(assert (=> b!2292193 (= e!1468781 e!1468783)))

(declare-fun res!980261 () Bool)

(assert (=> b!2292193 (=> (not res!980261) (not e!1468783))))

(assert (=> b!2292193 (= res!980261 (not ((_ is Nil!27285) (tail!3311 input!1722))))))

(declare-fun b!2292195 () Bool)

(assert (=> b!2292195 (= e!1468783 (isPrefix!2357 (tail!3311 (tail!3311 otherP!12)) (tail!3311 (tail!3311 input!1722))))))

(declare-fun b!2292196 () Bool)

(assert (=> b!2292196 (= e!1468782 (>= (size!21481 (tail!3311 input!1722)) (size!21481 (tail!3311 otherP!12))))))

(assert (= (and d!677991 (not res!980259)) b!2292193))

(assert (= (and b!2292193 res!980261) b!2292194))

(assert (= (and b!2292194 res!980260) b!2292195))

(assert (= (and d!677991 (not res!980262)) b!2292196))

(assert (=> b!2292194 m!2719401))

(declare-fun m!2719921 () Bool)

(assert (=> b!2292194 m!2719921))

(assert (=> b!2292194 m!2719257))

(declare-fun m!2719923 () Bool)

(assert (=> b!2292194 m!2719923))

(assert (=> b!2292195 m!2719401))

(declare-fun m!2719925 () Bool)

(assert (=> b!2292195 m!2719925))

(assert (=> b!2292195 m!2719257))

(declare-fun m!2719927 () Bool)

(assert (=> b!2292195 m!2719927))

(assert (=> b!2292195 m!2719925))

(assert (=> b!2292195 m!2719927))

(declare-fun m!2719929 () Bool)

(assert (=> b!2292195 m!2719929))

(assert (=> b!2292196 m!2719257))

(declare-fun m!2719931 () Bool)

(assert (=> b!2292196 m!2719931))

(assert (=> b!2292196 m!2719401))

(declare-fun m!2719933 () Bool)

(assert (=> b!2292196 m!2719933))

(assert (=> b!2291745 d!677991))

(declare-fun d!677993 () Bool)

(assert (=> d!677993 (= (tail!3311 otherP!12) (t!204671 otherP!12))))

(assert (=> b!2291745 d!677993))

(declare-fun d!677995 () Bool)

(assert (=> d!677995 (= (tail!3311 input!1722) (t!204671 input!1722))))

(assert (=> b!2291745 d!677995))

(declare-fun d!677997 () Bool)

(assert (=> d!677997 (= (head!4998 (list!10688 (charsOf!2755 (head!4996 tokens!456)))) (h!32686 (list!10688 (charsOf!2755 (head!4996 tokens!456)))))))

(assert (=> b!2291505 d!677997))

(declare-fun d!677999 () Bool)

(declare-fun isBalanced!2680 (Conc!8882) Bool)

(assert (=> d!677999 (= (inv!36890 (dynLambda!11843 (toChars!6016 (transformation!4367 r!2363)) (dynLambda!11848 (toValue!6157 (transformation!4367 r!2363)) lt!850059))) (isBalanced!2680 (c!363262 (dynLambda!11843 (toChars!6016 (transformation!4367 r!2363)) (dynLambda!11848 (toValue!6157 (transformation!4367 r!2363)) lt!850059)))))))

(declare-fun bs!457088 () Bool)

(assert (= bs!457088 d!677999))

(declare-fun m!2719935 () Bool)

(assert (=> bs!457088 m!2719935))

(assert (=> tb!136615 d!677999))

(declare-fun b!2292197 () Bool)

(declare-fun res!980266 () Bool)

(declare-fun e!1468786 () Bool)

(assert (=> b!2292197 (=> (not res!980266) (not e!1468786))))

(declare-fun lt!850573 () Option!5357)

(assert (=> b!2292197 (= res!980266 (= (++!6667 (list!10688 (charsOf!2755 (_1!16061 (get!8230 lt!850573)))) (_2!16061 (get!8230 lt!850573))) input!1722))))

(declare-fun b!2292199 () Bool)

(declare-fun res!980265 () Bool)

(assert (=> b!2292199 (=> (not res!980265) (not e!1468786))))

(assert (=> b!2292199 (= res!980265 (= (value!138279 (_1!16061 (get!8230 lt!850573))) (apply!6639 (transformation!4367 (rule!6703 (_1!16061 (get!8230 lt!850573)))) (seqFromList!3071 (originalCharacters!5137 (_1!16061 (get!8230 lt!850573)))))))))

(declare-fun b!2292200 () Bool)

(declare-fun res!980268 () Bool)

(assert (=> b!2292200 (=> (not res!980268) (not e!1468786))))

(assert (=> b!2292200 (= res!980268 (= (list!10688 (charsOf!2755 (_1!16061 (get!8230 lt!850573)))) (originalCharacters!5137 (_1!16061 (get!8230 lt!850573)))))))

(declare-fun b!2292201 () Bool)

(declare-fun res!980263 () Bool)

(assert (=> b!2292201 (=> (not res!980263) (not e!1468786))))

(assert (=> b!2292201 (= res!980263 (matchR!2972 (regex!4367 (rule!6703 (_1!16061 (get!8230 lt!850573)))) (list!10688 (charsOf!2755 (_1!16061 (get!8230 lt!850573))))))))

(declare-fun b!2292202 () Bool)

(declare-fun res!980267 () Bool)

(assert (=> b!2292202 (=> (not res!980267) (not e!1468786))))

(assert (=> b!2292202 (= res!980267 (< (size!21481 (_2!16061 (get!8230 lt!850573))) (size!21481 input!1722)))))

(declare-fun b!2292203 () Bool)

(declare-fun e!1468784 () Option!5357)

(declare-fun lt!850572 () Option!5357)

(declare-fun lt!850569 () Option!5357)

(assert (=> b!2292203 (= e!1468784 (ite (and ((_ is None!5356) lt!850572) ((_ is None!5356) lt!850569)) None!5356 (ite ((_ is None!5356) lt!850569) lt!850572 (ite ((_ is None!5356) lt!850572) lt!850569 (ite (>= (size!21480 (_1!16061 (v!30438 lt!850572))) (size!21480 (_1!16061 (v!30438 lt!850569)))) lt!850572 lt!850569)))))))

(declare-fun call!136721 () Option!5357)

(assert (=> b!2292203 (= lt!850572 call!136721)))

(assert (=> b!2292203 (= lt!850569 (maxPrefix!2228 thiss!16613 (t!204673 (t!204673 rules!1750)) input!1722))))

(declare-fun bm!136716 () Bool)

(assert (=> bm!136716 (= call!136721 (maxPrefixOneRule!1398 thiss!16613 (h!32688 (t!204673 rules!1750)) input!1722))))

(declare-fun b!2292204 () Bool)

(declare-fun e!1468785 () Bool)

(assert (=> b!2292204 (= e!1468785 e!1468786)))

(declare-fun res!980264 () Bool)

(assert (=> b!2292204 (=> (not res!980264) (not e!1468786))))

(assert (=> b!2292204 (= res!980264 (isDefined!4234 lt!850573))))

(declare-fun b!2292205 () Bool)

(assert (=> b!2292205 (= e!1468784 call!136721)))

(declare-fun b!2292198 () Bool)

(assert (=> b!2292198 (= e!1468786 (contains!4743 (t!204673 rules!1750) (rule!6703 (_1!16061 (get!8230 lt!850573)))))))

(declare-fun d!678001 () Bool)

(assert (=> d!678001 e!1468785))

(declare-fun res!980269 () Bool)

(assert (=> d!678001 (=> res!980269 e!1468785)))

(assert (=> d!678001 (= res!980269 (isEmpty!15545 lt!850573))))

(assert (=> d!678001 (= lt!850573 e!1468784)))

(declare-fun c!363453 () Bool)

(assert (=> d!678001 (= c!363453 (and ((_ is Cons!27287) (t!204673 rules!1750)) ((_ is Nil!27287) (t!204673 (t!204673 rules!1750)))))))

(declare-fun lt!850570 () Unit!40164)

(declare-fun lt!850571 () Unit!40164)

(assert (=> d!678001 (= lt!850570 lt!850571)))

(assert (=> d!678001 (isPrefix!2357 input!1722 input!1722)))

(assert (=> d!678001 (= lt!850571 (lemmaIsPrefixRefl!1499 input!1722 input!1722))))

(assert (=> d!678001 (rulesValidInductive!1539 thiss!16613 (t!204673 rules!1750))))

(assert (=> d!678001 (= (maxPrefix!2228 thiss!16613 (t!204673 rules!1750) input!1722) lt!850573)))

(assert (= (and d!678001 c!363453) b!2292205))

(assert (= (and d!678001 (not c!363453)) b!2292203))

(assert (= (or b!2292205 b!2292203) bm!136716))

(assert (= (and d!678001 (not res!980269)) b!2292204))

(assert (= (and b!2292204 res!980264) b!2292200))

(assert (= (and b!2292200 res!980268) b!2292202))

(assert (= (and b!2292202 res!980267) b!2292197))

(assert (= (and b!2292197 res!980266) b!2292199))

(assert (= (and b!2292199 res!980265) b!2292201))

(assert (= (and b!2292201 res!980263) b!2292198))

(declare-fun m!2719937 () Bool)

(assert (=> b!2292200 m!2719937))

(declare-fun m!2719939 () Bool)

(assert (=> b!2292200 m!2719939))

(assert (=> b!2292200 m!2719939))

(declare-fun m!2719941 () Bool)

(assert (=> b!2292200 m!2719941))

(declare-fun m!2719943 () Bool)

(assert (=> d!678001 m!2719943))

(assert (=> d!678001 m!2718863))

(assert (=> d!678001 m!2718865))

(declare-fun m!2719945 () Bool)

(assert (=> d!678001 m!2719945))

(assert (=> b!2292202 m!2719937))

(declare-fun m!2719947 () Bool)

(assert (=> b!2292202 m!2719947))

(assert (=> b!2292202 m!2719045))

(assert (=> b!2292198 m!2719937))

(declare-fun m!2719949 () Bool)

(assert (=> b!2292198 m!2719949))

(declare-fun m!2719951 () Bool)

(assert (=> bm!136716 m!2719951))

(assert (=> b!2292199 m!2719937))

(declare-fun m!2719953 () Bool)

(assert (=> b!2292199 m!2719953))

(assert (=> b!2292199 m!2719953))

(declare-fun m!2719955 () Bool)

(assert (=> b!2292199 m!2719955))

(declare-fun m!2719957 () Bool)

(assert (=> b!2292204 m!2719957))

(assert (=> b!2292197 m!2719937))

(assert (=> b!2292197 m!2719939))

(assert (=> b!2292197 m!2719939))

(assert (=> b!2292197 m!2719941))

(assert (=> b!2292197 m!2719941))

(declare-fun m!2719959 () Bool)

(assert (=> b!2292197 m!2719959))

(assert (=> b!2292201 m!2719937))

(assert (=> b!2292201 m!2719939))

(assert (=> b!2292201 m!2719939))

(assert (=> b!2292201 m!2719941))

(assert (=> b!2292201 m!2719941))

(declare-fun m!2719961 () Bool)

(assert (=> b!2292201 m!2719961))

(declare-fun m!2719963 () Bool)

(assert (=> b!2292203 m!2719963))

(assert (=> b!2291469 d!678001))

(assert (=> b!2291368 d!677939))

(declare-fun d!678003 () Bool)

(assert (=> d!678003 true))

(declare-fun lambda!85763 () Int)

(declare-fun order!15211 () Int)

(declare-fun dynLambda!11854 (Int Int) Int)

(assert (=> d!678003 (< (dynLambda!11849 order!15203 (toValue!6157 (transformation!4367 (h!32688 rules!1750)))) (dynLambda!11854 order!15211 lambda!85763))))

(declare-fun Forall2!708 (Int) Bool)

(assert (=> d!678003 (= (equivClasses!1689 (toChars!6016 (transformation!4367 (h!32688 rules!1750))) (toValue!6157 (transformation!4367 (h!32688 rules!1750)))) (Forall2!708 lambda!85763))))

(declare-fun bs!457089 () Bool)

(assert (= bs!457089 d!678003))

(declare-fun m!2719965 () Bool)

(assert (=> bs!457089 m!2719965))

(assert (=> b!2291479 d!678003))

(declare-fun d!678005 () Bool)

(assert (=> d!678005 (= (isEmpty!15543 (tail!3311 (list!10688 (charsOf!2755 (head!4996 tokens!456))))) ((_ is Nil!27285) (tail!3311 (list!10688 (charsOf!2755 (head!4996 tokens!456))))))))

(assert (=> b!2291501 d!678005))

(declare-fun d!678007 () Bool)

(assert (=> d!678007 (= (tail!3311 (list!10688 (charsOf!2755 (head!4996 tokens!456)))) (t!204671 (list!10688 (charsOf!2755 (head!4996 tokens!456)))))))

(assert (=> b!2291501 d!678007))

(assert (=> d!677741 d!677941))

(assert (=> d!677741 d!677969))

(assert (=> d!677753 d!677733))

(declare-fun d!678009 () Bool)

(assert (=> d!678009 (= (inv!36882 (tag!4857 (rule!6703 (h!32689 (t!204674 tokens!456))))) (= (mod (str.len (value!138278 (tag!4857 (rule!6703 (h!32689 (t!204674 tokens!456)))))) 2) 0))))

(assert (=> b!2291886 d!678009))

(declare-fun d!678011 () Bool)

(declare-fun res!980272 () Bool)

(declare-fun e!1468789 () Bool)

(assert (=> d!678011 (=> (not res!980272) (not e!1468789))))

(assert (=> d!678011 (= res!980272 (semiInverseModEq!1770 (toChars!6016 (transformation!4367 (rule!6703 (h!32689 (t!204674 tokens!456))))) (toValue!6157 (transformation!4367 (rule!6703 (h!32689 (t!204674 tokens!456)))))))))

(assert (=> d!678011 (= (inv!36885 (transformation!4367 (rule!6703 (h!32689 (t!204674 tokens!456))))) e!1468789)))

(declare-fun b!2292210 () Bool)

(assert (=> b!2292210 (= e!1468789 (equivClasses!1689 (toChars!6016 (transformation!4367 (rule!6703 (h!32689 (t!204674 tokens!456))))) (toValue!6157 (transformation!4367 (rule!6703 (h!32689 (t!204674 tokens!456)))))))))

(assert (= (and d!678011 res!980272) b!2292210))

(declare-fun m!2719967 () Bool)

(assert (=> d!678011 m!2719967))

(declare-fun m!2719969 () Bool)

(assert (=> b!2292210 m!2719969))

(assert (=> b!2291886 d!678011))

(declare-fun b!2292211 () Bool)

(declare-fun e!1468790 () Int)

(assert (=> b!2292211 (= e!1468790 0)))

(declare-fun d!678013 () Bool)

(declare-fun lt!850574 () Int)

(assert (=> d!678013 (>= lt!850574 0)))

(assert (=> d!678013 (= lt!850574 e!1468790)))

(declare-fun c!363455 () Bool)

(assert (=> d!678013 (= c!363455 (and ((_ is Cons!27287) (t!204673 rules!1750)) (= (h!32688 (t!204673 rules!1750)) otherR!12)))))

(assert (=> d!678013 (contains!4743 (t!204673 rules!1750) otherR!12)))

(assert (=> d!678013 (= (getIndex!380 (t!204673 rules!1750) otherR!12) lt!850574)))

(declare-fun b!2292214 () Bool)

(declare-fun e!1468791 () Int)

(assert (=> b!2292214 (= e!1468791 (- 1))))

(declare-fun b!2292213 () Bool)

(assert (=> b!2292213 (= e!1468791 (+ 1 (getIndex!380 (t!204673 (t!204673 rules!1750)) otherR!12)))))

(declare-fun b!2292212 () Bool)

(assert (=> b!2292212 (= e!1468790 e!1468791)))

(declare-fun c!363454 () Bool)

(assert (=> b!2292212 (= c!363454 (and ((_ is Cons!27287) (t!204673 rules!1750)) (not (= (h!32688 (t!204673 rules!1750)) otherR!12))))))

(assert (= (and d!678013 c!363455) b!2292211))

(assert (= (and d!678013 (not c!363455)) b!2292212))

(assert (= (and b!2292212 c!363454) b!2292213))

(assert (= (and b!2292212 (not c!363454)) b!2292214))

(assert (=> d!678013 m!2719461))

(declare-fun m!2719971 () Bool)

(assert (=> b!2292213 m!2719971))

(assert (=> b!2291582 d!678013))

(assert (=> b!2291711 d!677983))

(declare-fun d!678015 () Bool)

(assert (=> d!678015 (= (head!4998 input!1722) (h!32686 input!1722))))

(assert (=> b!2291711 d!678015))

(declare-fun d!678017 () Bool)

(assert (=> d!678017 (= (get!8230 lt!850118) (v!30438 lt!850118))))

(assert (=> b!2291465 d!678017))

(declare-fun d!678019 () Bool)

(assert (=> d!678019 (= (apply!6639 (transformation!4367 (rule!6703 (_1!16061 (get!8230 lt!850118)))) (seqFromList!3071 (originalCharacters!5137 (_1!16061 (get!8230 lt!850118))))) (dynLambda!11848 (toValue!6157 (transformation!4367 (rule!6703 (_1!16061 (get!8230 lt!850118))))) (seqFromList!3071 (originalCharacters!5137 (_1!16061 (get!8230 lt!850118))))))))

(declare-fun b_lambda!73043 () Bool)

(assert (=> (not b_lambda!73043) (not d!678019)))

(declare-fun tb!136687 () Bool)

(declare-fun t!204823 () Bool)

(assert (=> (and b!2291260 (= (toValue!6157 (transformation!4367 (rule!6703 (h!32689 tokens!456)))) (toValue!6157 (transformation!4367 (rule!6703 (_1!16061 (get!8230 lt!850118)))))) t!204823) tb!136687))

(declare-fun result!166670 () Bool)

(assert (=> tb!136687 (= result!166670 (inv!21 (dynLambda!11848 (toValue!6157 (transformation!4367 (rule!6703 (_1!16061 (get!8230 lt!850118))))) (seqFromList!3071 (originalCharacters!5137 (_1!16061 (get!8230 lt!850118)))))))))

(declare-fun m!2719973 () Bool)

(assert (=> tb!136687 m!2719973))

(assert (=> d!678019 t!204823))

(declare-fun b_and!182049 () Bool)

(assert (= b_and!181979 (and (=> t!204823 result!166670) b_and!182049)))

(declare-fun tb!136689 () Bool)

(declare-fun t!204825 () Bool)

(assert (=> (and b!2291255 (= (toValue!6157 (transformation!4367 (h!32688 rules!1750))) (toValue!6157 (transformation!4367 (rule!6703 (_1!16061 (get!8230 lt!850118)))))) t!204825) tb!136689))

(declare-fun result!166672 () Bool)

(assert (= result!166672 result!166670))

(assert (=> d!678019 t!204825))

(declare-fun b_and!182051 () Bool)

(assert (= b_and!181981 (and (=> t!204825 result!166672) b_and!182051)))

(declare-fun t!204827 () Bool)

(declare-fun tb!136691 () Bool)

(assert (=> (and b!2291243 (= (toValue!6157 (transformation!4367 otherR!12)) (toValue!6157 (transformation!4367 (rule!6703 (_1!16061 (get!8230 lt!850118)))))) t!204827) tb!136691))

(declare-fun result!166674 () Bool)

(assert (= result!166674 result!166670))

(assert (=> d!678019 t!204827))

(declare-fun b_and!182053 () Bool)

(assert (= b_and!181983 (and (=> t!204827 result!166674) b_and!182053)))

(declare-fun t!204829 () Bool)

(declare-fun tb!136693 () Bool)

(assert (=> (and b!2291887 (= (toValue!6157 (transformation!4367 (rule!6703 (h!32689 (t!204674 tokens!456))))) (toValue!6157 (transformation!4367 (rule!6703 (_1!16061 (get!8230 lt!850118)))))) t!204829) tb!136693))

(declare-fun result!166676 () Bool)

(assert (= result!166676 result!166670))

(assert (=> d!678019 t!204829))

(declare-fun b_and!182055 () Bool)

(assert (= b_and!181997 (and (=> t!204829 result!166676) b_and!182055)))

(declare-fun tb!136695 () Bool)

(declare-fun t!204831 () Bool)

(assert (=> (and b!2291860 (= (toValue!6157 (transformation!4367 (h!32688 (t!204673 rules!1750)))) (toValue!6157 (transformation!4367 (rule!6703 (_1!16061 (get!8230 lt!850118)))))) t!204831) tb!136695))

(declare-fun result!166678 () Bool)

(assert (= result!166678 result!166670))

(assert (=> d!678019 t!204831))

(declare-fun b_and!182057 () Bool)

(assert (= b_and!181993 (and (=> t!204831 result!166678) b_and!182057)))

(declare-fun t!204833 () Bool)

(declare-fun tb!136697 () Bool)

(assert (=> (and b!2291253 (= (toValue!6157 (transformation!4367 r!2363)) (toValue!6157 (transformation!4367 (rule!6703 (_1!16061 (get!8230 lt!850118)))))) t!204833) tb!136697))

(declare-fun result!166680 () Bool)

(assert (= result!166680 result!166670))

(assert (=> d!678019 t!204833))

(declare-fun b_and!182059 () Bool)

(assert (= b_and!181977 (and (=> t!204833 result!166680) b_and!182059)))

(assert (=> d!678019 m!2719051))

(declare-fun m!2719975 () Bool)

(assert (=> d!678019 m!2719975))

(assert (=> b!2291465 d!678019))

(declare-fun d!678021 () Bool)

(assert (=> d!678021 (= (seqFromList!3071 (originalCharacters!5137 (_1!16061 (get!8230 lt!850118)))) (fromListB!1380 (originalCharacters!5137 (_1!16061 (get!8230 lt!850118)))))))

(declare-fun bs!457090 () Bool)

(assert (= bs!457090 d!678021))

(declare-fun m!2719977 () Bool)

(assert (=> bs!457090 m!2719977))

(assert (=> b!2291465 d!678021))

(declare-fun bs!457091 () Bool)

(declare-fun d!678023 () Bool)

(assert (= bs!457091 (and d!678023 d!677849)))

(declare-fun lambda!85766 () Int)

(assert (=> bs!457091 (= (and (= (toChars!6016 (transformation!4367 (rule!6703 (h!32689 tokens!456)))) (toChars!6016 (transformation!4367 r!2363))) (= (toValue!6157 (transformation!4367 (rule!6703 (h!32689 tokens!456)))) (toValue!6157 (transformation!4367 r!2363)))) (= lambda!85766 lambda!85757))))

(assert (=> d!678023 true))

(assert (=> d!678023 (< (dynLambda!11851 order!15207 (toChars!6016 (transformation!4367 (rule!6703 (h!32689 tokens!456))))) (dynLambda!11850 order!15205 lambda!85766))))

(assert (=> d!678023 true))

(assert (=> d!678023 (< (dynLambda!11849 order!15203 (toValue!6157 (transformation!4367 (rule!6703 (h!32689 tokens!456))))) (dynLambda!11850 order!15205 lambda!85766))))

(assert (=> d!678023 (= (semiInverseModEq!1770 (toChars!6016 (transformation!4367 (rule!6703 (h!32689 tokens!456)))) (toValue!6157 (transformation!4367 (rule!6703 (h!32689 tokens!456))))) (Forall!1090 lambda!85766))))

(declare-fun bs!457092 () Bool)

(assert (= bs!457092 d!678023))

(declare-fun m!2719979 () Bool)

(assert (=> bs!457092 m!2719979))

(assert (=> d!677773 d!678023))

(assert (=> d!677839 d!677813))

(assert (=> d!677839 d!677835))

(declare-fun d!678025 () Bool)

(assert (=> d!678025 (= (maxPrefixOneRule!1398 thiss!16613 r!2363 input!1722) (Some!5356 (tuple2!27103 (Token!8213 (apply!6639 (transformation!4367 r!2363) (seqFromList!3071 lt!850069)) r!2363 (size!21481 lt!850069) lt!850069) (_2!16061 lt!850065))))))

(assert (=> d!678025 true))

(declare-fun _$59!329 () Unit!40164)

(assert (=> d!678025 (= (choose!13388 thiss!16613 rules!1750 lt!850069 input!1722 (_2!16061 lt!850065) r!2363) _$59!329)))

(declare-fun bs!457093 () Bool)

(assert (= bs!457093 d!678025))

(assert (=> bs!457093 m!2718901))

(assert (=> bs!457093 m!2718899))

(assert (=> bs!457093 m!2718899))

(assert (=> bs!457093 m!2719397))

(assert (=> bs!457093 m!2718845))

(assert (=> d!677839 d!678025))

(assert (=> d!677839 d!677837))

(declare-fun d!678027 () Bool)

(assert (=> d!678027 (= (apply!6639 (transformation!4367 r!2363) (seqFromList!3071 lt!850069)) (dynLambda!11848 (toValue!6157 (transformation!4367 r!2363)) (seqFromList!3071 lt!850069)))))

(declare-fun b_lambda!73045 () Bool)

(assert (=> (not b_lambda!73045) (not d!678027)))

(declare-fun tb!136699 () Bool)

(declare-fun t!204835 () Bool)

(assert (=> (and b!2291255 (= (toValue!6157 (transformation!4367 (h!32688 rules!1750))) (toValue!6157 (transformation!4367 r!2363))) t!204835) tb!136699))

(declare-fun result!166682 () Bool)

(assert (=> tb!136699 (= result!166682 (inv!21 (dynLambda!11848 (toValue!6157 (transformation!4367 r!2363)) (seqFromList!3071 lt!850069))))))

(declare-fun m!2719981 () Bool)

(assert (=> tb!136699 m!2719981))

(assert (=> d!678027 t!204835))

(declare-fun b_and!182061 () Bool)

(assert (= b_and!182051 (and (=> t!204835 result!166682) b_and!182061)))

(declare-fun t!204837 () Bool)

(declare-fun tb!136701 () Bool)

(assert (=> (and b!2291887 (= (toValue!6157 (transformation!4367 (rule!6703 (h!32689 (t!204674 tokens!456))))) (toValue!6157 (transformation!4367 r!2363))) t!204837) tb!136701))

(declare-fun result!166684 () Bool)

(assert (= result!166684 result!166682))

(assert (=> d!678027 t!204837))

(declare-fun b_and!182063 () Bool)

(assert (= b_and!182055 (and (=> t!204837 result!166684) b_and!182063)))

(declare-fun tb!136703 () Bool)

(declare-fun t!204839 () Bool)

(assert (=> (and b!2291260 (= (toValue!6157 (transformation!4367 (rule!6703 (h!32689 tokens!456)))) (toValue!6157 (transformation!4367 r!2363))) t!204839) tb!136703))

(declare-fun result!166686 () Bool)

(assert (= result!166686 result!166682))

(assert (=> d!678027 t!204839))

(declare-fun b_and!182065 () Bool)

(assert (= b_and!182049 (and (=> t!204839 result!166686) b_and!182065)))

(declare-fun tb!136705 () Bool)

(declare-fun t!204841 () Bool)

(assert (=> (and b!2291243 (= (toValue!6157 (transformation!4367 otherR!12)) (toValue!6157 (transformation!4367 r!2363))) t!204841) tb!136705))

(declare-fun result!166688 () Bool)

(assert (= result!166688 result!166682))

(assert (=> d!678027 t!204841))

(declare-fun b_and!182067 () Bool)

(assert (= b_and!182053 (and (=> t!204841 result!166688) b_and!182067)))

(declare-fun tb!136707 () Bool)

(declare-fun t!204843 () Bool)

(assert (=> (and b!2291860 (= (toValue!6157 (transformation!4367 (h!32688 (t!204673 rules!1750)))) (toValue!6157 (transformation!4367 r!2363))) t!204843) tb!136707))

(declare-fun result!166690 () Bool)

(assert (= result!166690 result!166682))

(assert (=> d!678027 t!204843))

(declare-fun b_and!182069 () Bool)

(assert (= b_and!182057 (and (=> t!204843 result!166690) b_and!182069)))

(declare-fun t!204845 () Bool)

(declare-fun tb!136709 () Bool)

(assert (=> (and b!2291253 (= (toValue!6157 (transformation!4367 r!2363)) (toValue!6157 (transformation!4367 r!2363))) t!204845) tb!136709))

(declare-fun result!166692 () Bool)

(assert (= result!166692 result!166682))

(assert (=> d!678027 t!204845))

(declare-fun b_and!182071 () Bool)

(assert (= b_and!182059 (and (=> t!204845 result!166692) b_and!182071)))

(assert (=> d!678027 m!2718899))

(declare-fun m!2719983 () Bool)

(assert (=> d!678027 m!2719983))

(assert (=> d!677839 d!678027))

(assert (=> d!677839 d!677843))

(assert (=> b!2291739 d!677885))

(declare-fun d!678029 () Bool)

(assert (=> d!678029 (= (apply!6639 (transformation!4367 (rule!6703 (_1!16061 (get!8230 lt!850231)))) (seqFromList!3071 (originalCharacters!5137 (_1!16061 (get!8230 lt!850231))))) (dynLambda!11848 (toValue!6157 (transformation!4367 (rule!6703 (_1!16061 (get!8230 lt!850231))))) (seqFromList!3071 (originalCharacters!5137 (_1!16061 (get!8230 lt!850231))))))))

(declare-fun b_lambda!73047 () Bool)

(assert (=> (not b_lambda!73047) (not d!678029)))

(declare-fun tb!136711 () Bool)

(declare-fun t!204847 () Bool)

(assert (=> (and b!2291253 (= (toValue!6157 (transformation!4367 r!2363)) (toValue!6157 (transformation!4367 (rule!6703 (_1!16061 (get!8230 lt!850231)))))) t!204847) tb!136711))

(declare-fun result!166694 () Bool)

(assert (=> tb!136711 (= result!166694 (inv!21 (dynLambda!11848 (toValue!6157 (transformation!4367 (rule!6703 (_1!16061 (get!8230 lt!850231))))) (seqFromList!3071 (originalCharacters!5137 (_1!16061 (get!8230 lt!850231)))))))))

(declare-fun m!2719985 () Bool)

(assert (=> tb!136711 m!2719985))

(assert (=> d!678029 t!204847))

(declare-fun b_and!182073 () Bool)

(assert (= b_and!182071 (and (=> t!204847 result!166694) b_and!182073)))

(declare-fun t!204849 () Bool)

(declare-fun tb!136713 () Bool)

(assert (=> (and b!2291860 (= (toValue!6157 (transformation!4367 (h!32688 (t!204673 rules!1750)))) (toValue!6157 (transformation!4367 (rule!6703 (_1!16061 (get!8230 lt!850231)))))) t!204849) tb!136713))

(declare-fun result!166696 () Bool)

(assert (= result!166696 result!166694))

(assert (=> d!678029 t!204849))

(declare-fun b_and!182075 () Bool)

(assert (= b_and!182069 (and (=> t!204849 result!166696) b_and!182075)))

(declare-fun t!204851 () Bool)

(declare-fun tb!136715 () Bool)

(assert (=> (and b!2291260 (= (toValue!6157 (transformation!4367 (rule!6703 (h!32689 tokens!456)))) (toValue!6157 (transformation!4367 (rule!6703 (_1!16061 (get!8230 lt!850231)))))) t!204851) tb!136715))

(declare-fun result!166698 () Bool)

(assert (= result!166698 result!166694))

(assert (=> d!678029 t!204851))

(declare-fun b_and!182077 () Bool)

(assert (= b_and!182065 (and (=> t!204851 result!166698) b_and!182077)))

(declare-fun t!204853 () Bool)

(declare-fun tb!136717 () Bool)

(assert (=> (and b!2291255 (= (toValue!6157 (transformation!4367 (h!32688 rules!1750))) (toValue!6157 (transformation!4367 (rule!6703 (_1!16061 (get!8230 lt!850231)))))) t!204853) tb!136717))

(declare-fun result!166700 () Bool)

(assert (= result!166700 result!166694))

(assert (=> d!678029 t!204853))

(declare-fun b_and!182079 () Bool)

(assert (= b_and!182061 (and (=> t!204853 result!166700) b_and!182079)))

(declare-fun t!204855 () Bool)

(declare-fun tb!136719 () Bool)

(assert (=> (and b!2291887 (= (toValue!6157 (transformation!4367 (rule!6703 (h!32689 (t!204674 tokens!456))))) (toValue!6157 (transformation!4367 (rule!6703 (_1!16061 (get!8230 lt!850231)))))) t!204855) tb!136719))

(declare-fun result!166702 () Bool)

(assert (= result!166702 result!166694))

(assert (=> d!678029 t!204855))

(declare-fun b_and!182081 () Bool)

(assert (= b_and!182063 (and (=> t!204855 result!166702) b_and!182081)))

(declare-fun tb!136721 () Bool)

(declare-fun t!204857 () Bool)

(assert (=> (and b!2291243 (= (toValue!6157 (transformation!4367 otherR!12)) (toValue!6157 (transformation!4367 (rule!6703 (_1!16061 (get!8230 lt!850231)))))) t!204857) tb!136721))

(declare-fun result!166704 () Bool)

(assert (= result!166704 result!166694))

(assert (=> d!678029 t!204857))

(declare-fun b_and!182083 () Bool)

(assert (= b_and!182067 (and (=> t!204857 result!166704) b_and!182083)))

(assert (=> d!678029 m!2719389))

(declare-fun m!2719987 () Bool)

(assert (=> d!678029 m!2719987))

(assert (=> b!2291739 d!678029))

(declare-fun d!678031 () Bool)

(assert (=> d!678031 (= (seqFromList!3071 (originalCharacters!5137 (_1!16061 (get!8230 lt!850231)))) (fromListB!1380 (originalCharacters!5137 (_1!16061 (get!8230 lt!850231)))))))

(declare-fun bs!457094 () Bool)

(assert (= bs!457094 d!678031))

(declare-fun m!2719989 () Bool)

(assert (=> bs!457094 m!2719989))

(assert (=> b!2291739 d!678031))

(declare-fun d!678033 () Bool)

(declare-fun e!1468797 () Bool)

(assert (=> d!678033 e!1468797))

(declare-fun res!980275 () Bool)

(assert (=> d!678033 (=> (not res!980275) (not e!1468797))))

(declare-fun lt!850577 () BalanceConc!17492)

(assert (=> d!678033 (= res!980275 (= (list!10688 lt!850577) input!1722))))

(declare-fun fromList!537 (List!27379) Conc!8882)

(assert (=> d!678033 (= lt!850577 (BalanceConc!17493 (fromList!537 input!1722)))))

(assert (=> d!678033 (= (fromListB!1380 input!1722) lt!850577)))

(declare-fun b!2292221 () Bool)

(assert (=> b!2292221 (= e!1468797 (isBalanced!2680 (fromList!537 input!1722)))))

(assert (= (and d!678033 res!980275) b!2292221))

(declare-fun m!2719991 () Bool)

(assert (=> d!678033 m!2719991))

(declare-fun m!2719993 () Bool)

(assert (=> d!678033 m!2719993))

(assert (=> b!2292221 m!2719993))

(assert (=> b!2292221 m!2719993))

(declare-fun m!2719995 () Bool)

(assert (=> b!2292221 m!2719995))

(assert (=> d!677807 d!678033))

(declare-fun bs!457095 () Bool)

(declare-fun d!678035 () Bool)

(assert (= bs!457095 (and d!678035 d!677849)))

(declare-fun lambda!85767 () Int)

(assert (=> bs!457095 (= lambda!85767 lambda!85757)))

(declare-fun bs!457096 () Bool)

(assert (= bs!457096 (and d!678035 d!678023)))

(assert (=> bs!457096 (= (and (= (toChars!6016 (transformation!4367 r!2363)) (toChars!6016 (transformation!4367 (rule!6703 (h!32689 tokens!456))))) (= (toValue!6157 (transformation!4367 r!2363)) (toValue!6157 (transformation!4367 (rule!6703 (h!32689 tokens!456)))))) (= lambda!85767 lambda!85766))))

(assert (=> d!678035 true))

(assert (=> d!678035 (< (dynLambda!11851 order!15207 (toChars!6016 (transformation!4367 r!2363))) (dynLambda!11850 order!15205 lambda!85767))))

(assert (=> d!678035 true))

(assert (=> d!678035 (< (dynLambda!11849 order!15203 (toValue!6157 (transformation!4367 r!2363))) (dynLambda!11850 order!15205 lambda!85767))))

(assert (=> d!678035 (= (semiInverseModEq!1770 (toChars!6016 (transformation!4367 r!2363)) (toValue!6157 (transformation!4367 r!2363))) (Forall!1090 lambda!85767))))

(declare-fun bs!457097 () Bool)

(assert (= bs!457097 d!678035))

(declare-fun m!2719997 () Bool)

(assert (=> bs!457097 m!2719997))

(assert (=> d!677705 d!678035))

(declare-fun d!678037 () Bool)

(declare-fun c!363457 () Bool)

(assert (=> d!678037 (= c!363457 ((_ is Node!8882) (c!363262 (dynLambda!11843 (toChars!6016 (transformation!4367 (rule!6703 (head!4996 tokens!456)))) (value!138279 (head!4996 tokens!456))))))))

(declare-fun e!1468798 () Bool)

(assert (=> d!678037 (= (inv!36889 (c!363262 (dynLambda!11843 (toChars!6016 (transformation!4367 (rule!6703 (head!4996 tokens!456)))) (value!138279 (head!4996 tokens!456))))) e!1468798)))

(declare-fun b!2292222 () Bool)

(assert (=> b!2292222 (= e!1468798 (inv!36891 (c!363262 (dynLambda!11843 (toChars!6016 (transformation!4367 (rule!6703 (head!4996 tokens!456)))) (value!138279 (head!4996 tokens!456))))))))

(declare-fun b!2292223 () Bool)

(declare-fun e!1468799 () Bool)

(assert (=> b!2292223 (= e!1468798 e!1468799)))

(declare-fun res!980276 () Bool)

(assert (=> b!2292223 (= res!980276 (not ((_ is Leaf!13051) (c!363262 (dynLambda!11843 (toChars!6016 (transformation!4367 (rule!6703 (head!4996 tokens!456)))) (value!138279 (head!4996 tokens!456)))))))))

(assert (=> b!2292223 (=> res!980276 e!1468799)))

(declare-fun b!2292224 () Bool)

(assert (=> b!2292224 (= e!1468799 (inv!36892 (c!363262 (dynLambda!11843 (toChars!6016 (transformation!4367 (rule!6703 (head!4996 tokens!456)))) (value!138279 (head!4996 tokens!456))))))))

(assert (= (and d!678037 c!363457) b!2292222))

(assert (= (and d!678037 (not c!363457)) b!2292223))

(assert (= (and b!2292223 (not res!980276)) b!2292224))

(declare-fun m!2719999 () Bool)

(assert (=> b!2292222 m!2719999))

(declare-fun m!2720001 () Bool)

(assert (=> b!2292224 m!2720001))

(assert (=> b!2291397 d!678037))

(assert (=> d!677857 d!677855))

(declare-fun d!678039 () Bool)

(assert (=> d!678039 (ruleValid!1457 thiss!16613 r!2363)))

(assert (=> d!678039 true))

(declare-fun _$65!1138 () Unit!40164)

(assert (=> d!678039 (= (choose!13383 thiss!16613 r!2363 rules!1750) _$65!1138)))

(declare-fun bs!457098 () Bool)

(assert (= bs!457098 d!678039))

(assert (=> bs!457098 m!2718827))

(assert (=> d!677857 d!678039))

(assert (=> d!677857 d!677733))

(declare-fun d!678041 () Bool)

(declare-fun lt!850614 () Int)

(assert (=> d!678041 (>= lt!850614 0)))

(declare-fun e!1468808 () Int)

(assert (=> d!678041 (= lt!850614 e!1468808)))

(declare-fun c!363466 () Bool)

(assert (=> d!678041 (= c!363466 ((_ is Nil!27285) (originalCharacters!5137 (h!32689 tokens!456))))))

(assert (=> d!678041 (= (size!21481 (originalCharacters!5137 (h!32689 tokens!456))) lt!850614)))

(declare-fun b!2292241 () Bool)

(assert (=> b!2292241 (= e!1468808 0)))

(declare-fun b!2292242 () Bool)

(assert (=> b!2292242 (= e!1468808 (+ 1 (size!21481 (t!204671 (originalCharacters!5137 (h!32689 tokens!456))))))))

(assert (= (and d!678041 c!363466) b!2292241))

(assert (= (and d!678041 (not c!363466)) b!2292242))

(declare-fun m!2720003 () Bool)

(assert (=> b!2292242 m!2720003))

(assert (=> b!2291831 d!678041))

(declare-fun d!678043 () Bool)

(declare-fun charsToBigInt!0 (List!27380 Int) Int)

(assert (=> d!678043 (= (inv!15 (value!138279 (h!32689 tokens!456))) (= (charsToBigInt!0 (text!32152 (value!138279 (h!32689 tokens!456))) 0) (value!138274 (value!138279 (h!32689 tokens!456)))))))

(declare-fun bs!457099 () Bool)

(assert (= bs!457099 d!678043))

(declare-fun m!2720005 () Bool)

(assert (=> bs!457099 m!2720005))

(assert (=> b!2291557 d!678043))

(declare-fun b!2292259 () Bool)

(declare-fun e!1468817 () List!27379)

(assert (=> b!2292259 (= e!1468817 Nil!27285)))

(declare-fun b!2292262 () Bool)

(declare-fun e!1468818 () List!27379)

(assert (=> b!2292262 (= e!1468818 (++!6667 (list!10692 (left!20682 (c!363262 (_2!16062 lt!850063)))) (list!10692 (right!21012 (c!363262 (_2!16062 lt!850063))))))))

(declare-fun b!2292261 () Bool)

(declare-fun list!10695 (IArray!17769) List!27379)

(assert (=> b!2292261 (= e!1468818 (list!10695 (xs!11824 (c!363262 (_2!16062 lt!850063)))))))

(declare-fun b!2292260 () Bool)

(assert (=> b!2292260 (= e!1468817 e!1468818)))

(declare-fun c!363476 () Bool)

(assert (=> b!2292260 (= c!363476 ((_ is Leaf!13051) (c!363262 (_2!16062 lt!850063))))))

(declare-fun d!678045 () Bool)

(declare-fun c!363475 () Bool)

(assert (=> d!678045 (= c!363475 ((_ is Empty!8882) (c!363262 (_2!16062 lt!850063))))))

(assert (=> d!678045 (= (list!10692 (c!363262 (_2!16062 lt!850063))) e!1468817)))

(assert (= (and d!678045 c!363475) b!2292259))

(assert (= (and d!678045 (not c!363475)) b!2292260))

(assert (= (and b!2292260 c!363476) b!2292261))

(assert (= (and b!2292260 (not c!363476)) b!2292262))

(declare-fun m!2720007 () Bool)

(assert (=> b!2292262 m!2720007))

(declare-fun m!2720009 () Bool)

(assert (=> b!2292262 m!2720009))

(assert (=> b!2292262 m!2720007))

(assert (=> b!2292262 m!2720009))

(declare-fun m!2720011 () Bool)

(assert (=> b!2292262 m!2720011))

(declare-fun m!2720013 () Bool)

(assert (=> b!2292261 m!2720013))

(assert (=> d!677781 d!678045))

(declare-fun d!678047 () Bool)

(declare-fun e!1468820 () Bool)

(assert (=> d!678047 e!1468820))

(declare-fun res!980278 () Bool)

(assert (=> d!678047 (=> (not res!980278) (not e!1468820))))

(declare-fun lt!850635 () List!27379)

(assert (=> d!678047 (= res!980278 (= (content!3667 lt!850635) ((_ map or) (content!3667 (t!204671 lt!850069)) (content!3667 (_2!16061 lt!850065)))))))

(declare-fun e!1468819 () List!27379)

(assert (=> d!678047 (= lt!850635 e!1468819)))

(declare-fun c!363477 () Bool)

(assert (=> d!678047 (= c!363477 ((_ is Nil!27285) (t!204671 lt!850069)))))

(assert (=> d!678047 (= (++!6667 (t!204671 lt!850069) (_2!16061 lt!850065)) lt!850635)))

(declare-fun b!2292265 () Bool)

(declare-fun res!980277 () Bool)

(assert (=> b!2292265 (=> (not res!980277) (not e!1468820))))

(assert (=> b!2292265 (= res!980277 (= (size!21481 lt!850635) (+ (size!21481 (t!204671 lt!850069)) (size!21481 (_2!16061 lt!850065)))))))

(declare-fun b!2292264 () Bool)

(assert (=> b!2292264 (= e!1468819 (Cons!27285 (h!32686 (t!204671 lt!850069)) (++!6667 (t!204671 (t!204671 lt!850069)) (_2!16061 lt!850065))))))

(declare-fun b!2292266 () Bool)

(assert (=> b!2292266 (= e!1468820 (or (not (= (_2!16061 lt!850065) Nil!27285)) (= lt!850635 (t!204671 lt!850069))))))

(declare-fun b!2292263 () Bool)

(assert (=> b!2292263 (= e!1468819 (_2!16061 lt!850065))))

(assert (= (and d!678047 c!363477) b!2292263))

(assert (= (and d!678047 (not c!363477)) b!2292264))

(assert (= (and d!678047 res!980278) b!2292265))

(assert (= (and b!2292265 res!980277) b!2292266))

(declare-fun m!2720015 () Bool)

(assert (=> d!678047 m!2720015))

(declare-fun m!2720017 () Bool)

(assert (=> d!678047 m!2720017))

(assert (=> d!678047 m!2719325))

(declare-fun m!2720019 () Bool)

(assert (=> b!2292265 m!2720019))

(assert (=> b!2292265 m!2719309))

(assert (=> b!2292265 m!2719329))

(declare-fun m!2720021 () Bool)

(assert (=> b!2292264 m!2720021))

(assert (=> b!2291706 d!678047))

(declare-fun d!678049 () Bool)

(assert (=> d!678049 (= (inv!36890 (dynLambda!11843 (toChars!6016 (transformation!4367 (rule!6703 (h!32689 tokens!456)))) (value!138279 (h!32689 tokens!456)))) (isBalanced!2680 (c!363262 (dynLambda!11843 (toChars!6016 (transformation!4367 (rule!6703 (h!32689 tokens!456)))) (value!138279 (h!32689 tokens!456))))))))

(declare-fun bs!457100 () Bool)

(assert (= bs!457100 d!678049))

(declare-fun m!2720023 () Bool)

(assert (=> bs!457100 m!2720023))

(assert (=> tb!136575 d!678049))

(declare-fun d!678051 () Bool)

(declare-fun c!363480 () Bool)

(assert (=> d!678051 (= c!363480 ((_ is Nil!27285) lt!850211))))

(declare-fun e!1468827 () (InoxSet C!13576))

(assert (=> d!678051 (= (content!3667 lt!850211) e!1468827)))

(declare-fun b!2292275 () Bool)

(assert (=> b!2292275 (= e!1468827 ((as const (Array C!13576 Bool)) false))))

(declare-fun b!2292276 () Bool)

(assert (=> b!2292276 (= e!1468827 ((_ map or) (store ((as const (Array C!13576 Bool)) false) (h!32686 lt!850211) true) (content!3667 (t!204671 lt!850211))))))

(assert (= (and d!678051 c!363480) b!2292275))

(assert (= (and d!678051 (not c!363480)) b!2292276))

(declare-fun m!2720025 () Bool)

(assert (=> b!2292276 m!2720025))

(declare-fun m!2720027 () Bool)

(assert (=> b!2292276 m!2720027))

(assert (=> d!677823 d!678051))

(declare-fun d!678053 () Bool)

(declare-fun c!363481 () Bool)

(assert (=> d!678053 (= c!363481 ((_ is Nil!27285) lt!850069))))

(declare-fun e!1468828 () (InoxSet C!13576))

(assert (=> d!678053 (= (content!3667 lt!850069) e!1468828)))

(declare-fun b!2292277 () Bool)

(assert (=> b!2292277 (= e!1468828 ((as const (Array C!13576 Bool)) false))))

(declare-fun b!2292278 () Bool)

(assert (=> b!2292278 (= e!1468828 ((_ map or) (store ((as const (Array C!13576 Bool)) false) (h!32686 lt!850069) true) (content!3667 (t!204671 lt!850069))))))

(assert (= (and d!678053 c!363481) b!2292277))

(assert (= (and d!678053 (not c!363481)) b!2292278))

(declare-fun m!2720029 () Bool)

(assert (=> b!2292278 m!2720029))

(assert (=> b!2292278 m!2720017))

(assert (=> d!677823 d!678053))

(declare-fun d!678055 () Bool)

(declare-fun c!363482 () Bool)

(assert (=> d!678055 (= c!363482 ((_ is Nil!27285) (_2!16061 lt!850065)))))

(declare-fun e!1468829 () (InoxSet C!13576))

(assert (=> d!678055 (= (content!3667 (_2!16061 lt!850065)) e!1468829)))

(declare-fun b!2292279 () Bool)

(assert (=> b!2292279 (= e!1468829 ((as const (Array C!13576 Bool)) false))))

(declare-fun b!2292280 () Bool)

(assert (=> b!2292280 (= e!1468829 ((_ map or) (store ((as const (Array C!13576 Bool)) false) (h!32686 (_2!16061 lt!850065)) true) (content!3667 (t!204671 (_2!16061 lt!850065)))))))

(assert (= (and d!678055 c!363482) b!2292279))

(assert (= (and d!678055 (not c!363482)) b!2292280))

(declare-fun m!2720031 () Bool)

(assert (=> b!2292280 m!2720031))

(declare-fun m!2720033 () Bool)

(assert (=> b!2292280 m!2720033))

(assert (=> d!677823 d!678055))

(declare-fun d!678057 () Bool)

(assert (=> d!678057 (= (list!10688 lt!850094) (list!10692 (c!363262 lt!850094)))))

(declare-fun bs!457101 () Bool)

(assert (= bs!457101 d!678057))

(declare-fun m!2720035 () Bool)

(assert (=> bs!457101 m!2720035))

(assert (=> d!677699 d!678057))

(declare-fun d!678059 () Bool)

(declare-fun lt!850636 () Bool)

(assert (=> d!678059 (= lt!850636 (select (content!3665 (t!204673 rules!1750)) otherR!12))))

(declare-fun e!1468831 () Bool)

(assert (=> d!678059 (= lt!850636 e!1468831)))

(declare-fun res!980284 () Bool)

(assert (=> d!678059 (=> (not res!980284) (not e!1468831))))

(assert (=> d!678059 (= res!980284 ((_ is Cons!27287) (t!204673 rules!1750)))))

(assert (=> d!678059 (= (contains!4743 (t!204673 rules!1750) otherR!12) lt!850636)))

(declare-fun b!2292281 () Bool)

(declare-fun e!1468830 () Bool)

(assert (=> b!2292281 (= e!1468831 e!1468830)))

(declare-fun res!980283 () Bool)

(assert (=> b!2292281 (=> res!980283 e!1468830)))

(assert (=> b!2292281 (= res!980283 (= (h!32688 (t!204673 rules!1750)) otherR!12))))

(declare-fun b!2292282 () Bool)

(assert (=> b!2292282 (= e!1468830 (contains!4743 (t!204673 (t!204673 rules!1750)) otherR!12))))

(assert (= (and d!678059 res!980284) b!2292281))

(assert (= (and b!2292281 (not res!980283)) b!2292282))

(assert (=> d!678059 m!2719897))

(declare-fun m!2720037 () Bool)

(assert (=> d!678059 m!2720037))

(declare-fun m!2720039 () Bool)

(assert (=> b!2292282 m!2720039))

(assert (=> b!2291835 d!678059))

(declare-fun d!678061 () Bool)

(declare-fun lt!850637 () Bool)

(assert (=> d!678061 (= lt!850637 (select (content!3665 (t!204673 rules!1750)) r!2363))))

(declare-fun e!1468833 () Bool)

(assert (=> d!678061 (= lt!850637 e!1468833)))

(declare-fun res!980286 () Bool)

(assert (=> d!678061 (=> (not res!980286) (not e!1468833))))

(assert (=> d!678061 (= res!980286 ((_ is Cons!27287) (t!204673 rules!1750)))))

(assert (=> d!678061 (= (contains!4743 (t!204673 rules!1750) r!2363) lt!850637)))

(declare-fun b!2292283 () Bool)

(declare-fun e!1468832 () Bool)

(assert (=> b!2292283 (= e!1468833 e!1468832)))

(declare-fun res!980285 () Bool)

(assert (=> b!2292283 (=> res!980285 e!1468832)))

(assert (=> b!2292283 (= res!980285 (= (h!32688 (t!204673 rules!1750)) r!2363))))

(declare-fun b!2292284 () Bool)

(assert (=> b!2292284 (= e!1468832 (contains!4743 (t!204673 (t!204673 rules!1750)) r!2363))))

(assert (= (and d!678061 res!980286) b!2292283))

(assert (= (and b!2292283 (not res!980285)) b!2292284))

(assert (=> d!678061 m!2719897))

(declare-fun m!2720041 () Bool)

(assert (=> d!678061 m!2720041))

(declare-fun m!2720043 () Bool)

(assert (=> b!2292284 m!2720043))

(assert (=> b!2291478 d!678061))

(declare-fun b!2292286 () Bool)

(declare-fun res!980288 () Bool)

(declare-fun e!1468836 () Bool)

(assert (=> b!2292286 (=> (not res!980288) (not e!1468836))))

(assert (=> b!2292286 (= res!980288 (= (head!4998 (tail!3311 input!1722)) (head!4998 (tail!3311 input!1722))))))

(declare-fun d!678063 () Bool)

(declare-fun e!1468835 () Bool)

(assert (=> d!678063 e!1468835))

(declare-fun res!980290 () Bool)

(assert (=> d!678063 (=> res!980290 e!1468835)))

(declare-fun lt!850638 () Bool)

(assert (=> d!678063 (= res!980290 (not lt!850638))))

(declare-fun e!1468834 () Bool)

(assert (=> d!678063 (= lt!850638 e!1468834)))

(declare-fun res!980287 () Bool)

(assert (=> d!678063 (=> res!980287 e!1468834)))

(assert (=> d!678063 (= res!980287 ((_ is Nil!27285) (tail!3311 input!1722)))))

(assert (=> d!678063 (= (isPrefix!2357 (tail!3311 input!1722) (tail!3311 input!1722)) lt!850638)))

(declare-fun b!2292285 () Bool)

(assert (=> b!2292285 (= e!1468834 e!1468836)))

(declare-fun res!980289 () Bool)

(assert (=> b!2292285 (=> (not res!980289) (not e!1468836))))

(assert (=> b!2292285 (= res!980289 (not ((_ is Nil!27285) (tail!3311 input!1722))))))

(declare-fun b!2292287 () Bool)

(assert (=> b!2292287 (= e!1468836 (isPrefix!2357 (tail!3311 (tail!3311 input!1722)) (tail!3311 (tail!3311 input!1722))))))

(declare-fun b!2292288 () Bool)

(assert (=> b!2292288 (= e!1468835 (>= (size!21481 (tail!3311 input!1722)) (size!21481 (tail!3311 input!1722))))))

(assert (= (and d!678063 (not res!980287)) b!2292285))

(assert (= (and b!2292285 res!980289) b!2292286))

(assert (= (and b!2292286 res!980288) b!2292287))

(assert (= (and d!678063 (not res!980290)) b!2292288))

(assert (=> b!2292286 m!2719257))

(assert (=> b!2292286 m!2719923))

(assert (=> b!2292286 m!2719257))

(assert (=> b!2292286 m!2719923))

(assert (=> b!2292287 m!2719257))

(assert (=> b!2292287 m!2719927))

(assert (=> b!2292287 m!2719257))

(assert (=> b!2292287 m!2719927))

(assert (=> b!2292287 m!2719927))

(assert (=> b!2292287 m!2719927))

(declare-fun m!2720045 () Bool)

(assert (=> b!2292287 m!2720045))

(assert (=> b!2292288 m!2719257))

(assert (=> b!2292288 m!2719931))

(assert (=> b!2292288 m!2719257))

(assert (=> b!2292288 m!2719931))

(assert (=> b!2291749 d!678063))

(assert (=> b!2291749 d!677995))

(declare-fun d!678065 () Bool)

(declare-fun lt!850639 () Int)

(assert (=> d!678065 (>= lt!850639 0)))

(declare-fun e!1468837 () Int)

(assert (=> d!678065 (= lt!850639 e!1468837)))

(declare-fun c!363483 () Bool)

(assert (=> d!678065 (= c!363483 ((_ is Nil!27285) (t!204671 otherP!12)))))

(assert (=> d!678065 (= (size!21481 (t!204671 otherP!12)) lt!850639)))

(declare-fun b!2292289 () Bool)

(assert (=> b!2292289 (= e!1468837 0)))

(declare-fun b!2292290 () Bool)

(assert (=> b!2292290 (= e!1468837 (+ 1 (size!21481 (t!204671 (t!204671 otherP!12)))))))

(assert (= (and d!678065 c!363483) b!2292289))

(assert (= (and d!678065 (not c!363483)) b!2292290))

(declare-fun m!2720047 () Bool)

(assert (=> b!2292290 m!2720047))

(assert (=> b!2291403 d!678065))

(declare-fun bs!457102 () Bool)

(declare-fun d!678067 () Bool)

(assert (= bs!457102 (and d!678067 d!678003)))

(declare-fun lambda!85768 () Int)

(assert (=> bs!457102 (= (= (toValue!6157 (transformation!4367 r!2363)) (toValue!6157 (transformation!4367 (h!32688 rules!1750)))) (= lambda!85768 lambda!85763))))

(assert (=> d!678067 true))

(assert (=> d!678067 (< (dynLambda!11849 order!15203 (toValue!6157 (transformation!4367 r!2363))) (dynLambda!11854 order!15211 lambda!85768))))

(assert (=> d!678067 (= (equivClasses!1689 (toChars!6016 (transformation!4367 r!2363)) (toValue!6157 (transformation!4367 r!2363))) (Forall2!708 lambda!85768))))

(declare-fun bs!457103 () Bool)

(assert (= bs!457103 d!678067))

(declare-fun m!2720049 () Bool)

(assert (=> bs!457103 m!2720049))

(assert (=> b!2291406 d!678067))

(declare-fun b!2292291 () Bool)

(declare-fun e!1468838 () List!27379)

(assert (=> b!2292291 (= e!1468838 Nil!27285)))

(declare-fun b!2292294 () Bool)

(declare-fun e!1468839 () List!27379)

(assert (=> b!2292294 (= e!1468839 (++!6667 (list!10692 (left!20682 (c!363262 (charsOf!2755 (head!4996 tokens!456))))) (list!10692 (right!21012 (c!363262 (charsOf!2755 (head!4996 tokens!456)))))))))

(declare-fun b!2292293 () Bool)

(assert (=> b!2292293 (= e!1468839 (list!10695 (xs!11824 (c!363262 (charsOf!2755 (head!4996 tokens!456))))))))

(declare-fun b!2292292 () Bool)

(assert (=> b!2292292 (= e!1468838 e!1468839)))

(declare-fun c!363485 () Bool)

(assert (=> b!2292292 (= c!363485 ((_ is Leaf!13051) (c!363262 (charsOf!2755 (head!4996 tokens!456)))))))

(declare-fun d!678069 () Bool)

(declare-fun c!363484 () Bool)

(assert (=> d!678069 (= c!363484 ((_ is Empty!8882) (c!363262 (charsOf!2755 (head!4996 tokens!456)))))))

(assert (=> d!678069 (= (list!10692 (c!363262 (charsOf!2755 (head!4996 tokens!456)))) e!1468838)))

(assert (= (and d!678069 c!363484) b!2292291))

(assert (= (and d!678069 (not c!363484)) b!2292292))

(assert (= (and b!2292292 c!363485) b!2292293))

(assert (= (and b!2292292 (not c!363485)) b!2292294))

(declare-fun m!2720051 () Bool)

(assert (=> b!2292294 m!2720051))

(declare-fun m!2720053 () Bool)

(assert (=> b!2292294 m!2720053))

(assert (=> b!2292294 m!2720051))

(assert (=> b!2292294 m!2720053))

(declare-fun m!2720055 () Bool)

(assert (=> b!2292294 m!2720055))

(declare-fun m!2720057 () Bool)

(assert (=> b!2292293 m!2720057))

(assert (=> d!677743 d!678069))

(declare-fun d!678071 () Bool)

(assert (=> d!678071 (= (head!4998 otherP!12) (h!32686 otherP!12))))

(assert (=> b!2291744 d!678071))

(assert (=> b!2291744 d!678015))

(declare-fun d!678073 () Bool)

(declare-fun lt!850640 () List!27379)

(assert (=> d!678073 (= (++!6667 (t!204671 lt!850069) lt!850640) (tail!3311 input!1722))))

(declare-fun e!1468840 () List!27379)

(assert (=> d!678073 (= lt!850640 e!1468840)))

(declare-fun c!363486 () Bool)

(assert (=> d!678073 (= c!363486 ((_ is Cons!27285) (t!204671 lt!850069)))))

(assert (=> d!678073 (>= (size!21481 (tail!3311 input!1722)) (size!21481 (t!204671 lt!850069)))))

(assert (=> d!678073 (= (getSuffix!1148 (tail!3311 input!1722) (t!204671 lt!850069)) lt!850640)))

(declare-fun b!2292295 () Bool)

(assert (=> b!2292295 (= e!1468840 (getSuffix!1148 (tail!3311 (tail!3311 input!1722)) (t!204671 (t!204671 lt!850069))))))

(declare-fun b!2292296 () Bool)

(assert (=> b!2292296 (= e!1468840 (tail!3311 input!1722))))

(assert (= (and d!678073 c!363486) b!2292295))

(assert (= (and d!678073 (not c!363486)) b!2292296))

(declare-fun m!2720059 () Bool)

(assert (=> d!678073 m!2720059))

(assert (=> d!678073 m!2719257))

(assert (=> d!678073 m!2719931))

(assert (=> d!678073 m!2719309))

(assert (=> b!2292295 m!2719257))

(assert (=> b!2292295 m!2719927))

(assert (=> b!2292295 m!2719927))

(declare-fun m!2720061 () Bool)

(assert (=> b!2292295 m!2720061))

(assert (=> b!2291668 d!678073))

(assert (=> b!2291668 d!677995))

(declare-fun d!678075 () Bool)

(assert (=> d!678075 (= (inv!36882 (tag!4857 (h!32688 (t!204673 rules!1750)))) (= (mod (str.len (value!138278 (tag!4857 (h!32688 (t!204673 rules!1750))))) 2) 0))))

(assert (=> b!2291859 d!678075))

(declare-fun d!678077 () Bool)

(declare-fun res!980291 () Bool)

(declare-fun e!1468841 () Bool)

(assert (=> d!678077 (=> (not res!980291) (not e!1468841))))

(assert (=> d!678077 (= res!980291 (semiInverseModEq!1770 (toChars!6016 (transformation!4367 (h!32688 (t!204673 rules!1750)))) (toValue!6157 (transformation!4367 (h!32688 (t!204673 rules!1750))))))))

(assert (=> d!678077 (= (inv!36885 (transformation!4367 (h!32688 (t!204673 rules!1750)))) e!1468841)))

(declare-fun b!2292297 () Bool)

(assert (=> b!2292297 (= e!1468841 (equivClasses!1689 (toChars!6016 (transformation!4367 (h!32688 (t!204673 rules!1750)))) (toValue!6157 (transformation!4367 (h!32688 (t!204673 rules!1750))))))))

(assert (= (and d!678077 res!980291) b!2292297))

(declare-fun m!2720063 () Bool)

(assert (=> d!678077 m!2720063))

(declare-fun m!2720065 () Bool)

(assert (=> b!2292297 m!2720065))

(assert (=> b!2291859 d!678077))

(assert (=> b!2291504 d!677939))

(declare-fun b!2292298 () Bool)

(declare-fun e!1468843 () Bool)

(declare-fun e!1468842 () Bool)

(assert (=> b!2292298 (= e!1468843 e!1468842)))

(declare-fun c!363487 () Bool)

(assert (=> b!2292298 (= c!363487 ((_ is IntegerValue!13588) (value!138279 (h!32689 (t!204674 tokens!456)))))))

(declare-fun d!678079 () Bool)

(declare-fun c!363488 () Bool)

(assert (=> d!678079 (= c!363488 ((_ is IntegerValue!13587) (value!138279 (h!32689 (t!204674 tokens!456)))))))

(assert (=> d!678079 (= (inv!21 (value!138279 (h!32689 (t!204674 tokens!456)))) e!1468843)))

(declare-fun b!2292299 () Bool)

(assert (=> b!2292299 (= e!1468842 (inv!17 (value!138279 (h!32689 (t!204674 tokens!456)))))))

(declare-fun b!2292300 () Bool)

(declare-fun res!980292 () Bool)

(declare-fun e!1468844 () Bool)

(assert (=> b!2292300 (=> res!980292 e!1468844)))

(assert (=> b!2292300 (= res!980292 (not ((_ is IntegerValue!13589) (value!138279 (h!32689 (t!204674 tokens!456))))))))

(assert (=> b!2292300 (= e!1468842 e!1468844)))

(declare-fun b!2292301 () Bool)

(assert (=> b!2292301 (= e!1468844 (inv!15 (value!138279 (h!32689 (t!204674 tokens!456)))))))

(declare-fun b!2292302 () Bool)

(assert (=> b!2292302 (= e!1468843 (inv!16 (value!138279 (h!32689 (t!204674 tokens!456)))))))

(assert (= (and d!678079 c!363488) b!2292302))

(assert (= (and d!678079 (not c!363488)) b!2292298))

(assert (= (and b!2292298 c!363487) b!2292299))

(assert (= (and b!2292298 (not c!363487)) b!2292300))

(assert (= (and b!2292300 (not res!980292)) b!2292301))

(declare-fun m!2720067 () Bool)

(assert (=> b!2292299 m!2720067))

(declare-fun m!2720069 () Bool)

(assert (=> b!2292301 m!2720069))

(declare-fun m!2720071 () Bool)

(assert (=> b!2292302 m!2720071))

(assert (=> b!2291885 d!678079))

(assert (=> b!2291367 d!677983))

(declare-fun d!678081 () Bool)

(declare-fun lt!850641 () Int)

(assert (=> d!678081 (>= lt!850641 0)))

(declare-fun e!1468845 () Int)

(assert (=> d!678081 (= lt!850641 e!1468845)))

(declare-fun c!363489 () Bool)

(assert (=> d!678081 (= c!363489 ((_ is Nil!27285) (_2!16061 (get!8230 lt!850118))))))

(assert (=> d!678081 (= (size!21481 (_2!16061 (get!8230 lt!850118))) lt!850641)))

(declare-fun b!2292303 () Bool)

(assert (=> b!2292303 (= e!1468845 0)))

(declare-fun b!2292304 () Bool)

(assert (=> b!2292304 (= e!1468845 (+ 1 (size!21481 (t!204671 (_2!16061 (get!8230 lt!850118))))))))

(assert (= (and d!678081 c!363489) b!2292303))

(assert (= (and d!678081 (not c!363489)) b!2292304))

(declare-fun m!2720073 () Bool)

(assert (=> b!2292304 m!2720073))

(assert (=> b!2291468 d!678081))

(assert (=> b!2291468 d!678017))

(assert (=> b!2291468 d!677949))

(declare-fun d!678083 () Bool)

(assert (=> d!678083 (= (isEmpty!15545 lt!850231) (not ((_ is Some!5356) lt!850231)))))

(assert (=> d!677837 d!678083))

(declare-fun d!678085 () Bool)

(assert (=> d!678085 (= (isEmpty!15543 (_1!16065 lt!850228)) ((_ is Nil!27285) (_1!16065 lt!850228)))))

(assert (=> d!677837 d!678085))

(declare-fun d!678087 () Bool)

(declare-fun lt!850689 () tuple2!27110)

(assert (=> d!678087 (= (++!6667 (_1!16065 lt!850689) (_2!16065 lt!850689)) input!1722)))

(declare-fun sizeTr!133 (List!27379 Int) Int)

(assert (=> d!678087 (= lt!850689 (findLongestMatchInner!723 (regex!4367 r!2363) Nil!27285 0 input!1722 input!1722 (sizeTr!133 input!1722 0)))))

(declare-fun lt!850695 () Unit!40164)

(declare-fun lt!850693 () Unit!40164)

(assert (=> d!678087 (= lt!850695 lt!850693)))

(declare-fun lt!850690 () List!27379)

(declare-fun lt!850691 () Int)

(assert (=> d!678087 (= (sizeTr!133 lt!850690 lt!850691) (+ (size!21481 lt!850690) lt!850691))))

(declare-fun lemmaSizeTrEqualsSize!132 (List!27379 Int) Unit!40164)

(assert (=> d!678087 (= lt!850693 (lemmaSizeTrEqualsSize!132 lt!850690 lt!850691))))

(assert (=> d!678087 (= lt!850691 0)))

(assert (=> d!678087 (= lt!850690 Nil!27285)))

(declare-fun lt!850692 () Unit!40164)

(declare-fun lt!850694 () Unit!40164)

(assert (=> d!678087 (= lt!850692 lt!850694)))

(declare-fun lt!850688 () Int)

(assert (=> d!678087 (= (sizeTr!133 input!1722 lt!850688) (+ (size!21481 input!1722) lt!850688))))

(assert (=> d!678087 (= lt!850694 (lemmaSizeTrEqualsSize!132 input!1722 lt!850688))))

(assert (=> d!678087 (= lt!850688 0)))

(assert (=> d!678087 (validRegex!2530 (regex!4367 r!2363))))

(assert (=> d!678087 (= (findLongestMatch!652 (regex!4367 r!2363) input!1722) lt!850689)))

(declare-fun bs!457105 () Bool)

(assert (= bs!457105 d!678087))

(declare-fun m!2720125 () Bool)

(assert (=> bs!457105 m!2720125))

(declare-fun m!2720127 () Bool)

(assert (=> bs!457105 m!2720127))

(assert (=> bs!457105 m!2720127))

(declare-fun m!2720129 () Bool)

(assert (=> bs!457105 m!2720129))

(declare-fun m!2720131 () Bool)

(assert (=> bs!457105 m!2720131))

(declare-fun m!2720133 () Bool)

(assert (=> bs!457105 m!2720133))

(declare-fun m!2720135 () Bool)

(assert (=> bs!457105 m!2720135))

(assert (=> bs!457105 m!2719045))

(declare-fun m!2720137 () Bool)

(assert (=> bs!457105 m!2720137))

(declare-fun m!2720139 () Bool)

(assert (=> bs!457105 m!2720139))

(assert (=> bs!457105 m!2718957))

(assert (=> d!677837 d!678087))

(assert (=> d!677837 d!677855))

(declare-fun d!678097 () Bool)

(assert (=> d!678097 (= (inv!36890 (dynLambda!11843 (toChars!6016 (transformation!4367 (rule!6703 (head!4996 tokens!456)))) (value!138279 (head!4996 tokens!456)))) (isBalanced!2680 (c!363262 (dynLambda!11843 (toChars!6016 (transformation!4367 (rule!6703 (head!4996 tokens!456)))) (value!138279 (head!4996 tokens!456))))))))

(declare-fun bs!457106 () Bool)

(assert (= bs!457106 d!678097))

(declare-fun m!2720141 () Bool)

(assert (=> bs!457106 m!2720141))

(assert (=> tb!136551 d!678097))

(declare-fun bs!457107 () Bool)

(declare-fun d!678099 () Bool)

(assert (= bs!457107 (and d!678099 d!677849)))

(declare-fun lambda!85769 () Int)

(assert (=> bs!457107 (= (and (= (toChars!6016 (transformation!4367 otherR!12)) (toChars!6016 (transformation!4367 r!2363))) (= (toValue!6157 (transformation!4367 otherR!12)) (toValue!6157 (transformation!4367 r!2363)))) (= lambda!85769 lambda!85757))))

(declare-fun bs!457108 () Bool)

(assert (= bs!457108 (and d!678099 d!678023)))

(assert (=> bs!457108 (= (and (= (toChars!6016 (transformation!4367 otherR!12)) (toChars!6016 (transformation!4367 (rule!6703 (h!32689 tokens!456))))) (= (toValue!6157 (transformation!4367 otherR!12)) (toValue!6157 (transformation!4367 (rule!6703 (h!32689 tokens!456)))))) (= lambda!85769 lambda!85766))))

(declare-fun bs!457109 () Bool)

(assert (= bs!457109 (and d!678099 d!678035)))

(assert (=> bs!457109 (= (and (= (toChars!6016 (transformation!4367 otherR!12)) (toChars!6016 (transformation!4367 r!2363))) (= (toValue!6157 (transformation!4367 otherR!12)) (toValue!6157 (transformation!4367 r!2363)))) (= lambda!85769 lambda!85767))))

(assert (=> d!678099 true))

(assert (=> d!678099 (< (dynLambda!11851 order!15207 (toChars!6016 (transformation!4367 otherR!12))) (dynLambda!11850 order!15205 lambda!85769))))

(assert (=> d!678099 true))

(assert (=> d!678099 (< (dynLambda!11849 order!15203 (toValue!6157 (transformation!4367 otherR!12))) (dynLambda!11850 order!15205 lambda!85769))))

(assert (=> d!678099 (= (semiInverseModEq!1770 (toChars!6016 (transformation!4367 otherR!12)) (toValue!6157 (transformation!4367 otherR!12))) (Forall!1090 lambda!85769))))

(declare-fun bs!457110 () Bool)

(assert (= bs!457110 d!678099))

(declare-fun m!2720143 () Bool)

(assert (=> bs!457110 m!2720143))

(assert (=> d!677731 d!678099))

(declare-fun d!678101 () Bool)

(declare-fun lt!850696 () Bool)

(assert (=> d!678101 (= lt!850696 (select (content!3665 rules!1750) (rule!6703 (_1!16061 (get!8230 lt!850118)))))))

(declare-fun e!1468857 () Bool)

(assert (=> d!678101 (= lt!850696 e!1468857)))

(declare-fun res!980296 () Bool)

(assert (=> d!678101 (=> (not res!980296) (not e!1468857))))

(assert (=> d!678101 (= res!980296 ((_ is Cons!27287) rules!1750))))

(assert (=> d!678101 (= (contains!4743 rules!1750 (rule!6703 (_1!16061 (get!8230 lt!850118)))) lt!850696)))

(declare-fun b!2292323 () Bool)

(declare-fun e!1468856 () Bool)

(assert (=> b!2292323 (= e!1468857 e!1468856)))

(declare-fun res!980295 () Bool)

(assert (=> b!2292323 (=> res!980295 e!1468856)))

(assert (=> b!2292323 (= res!980295 (= (h!32688 rules!1750) (rule!6703 (_1!16061 (get!8230 lt!850118)))))))

(declare-fun b!2292324 () Bool)

(assert (=> b!2292324 (= e!1468856 (contains!4743 (t!204673 rules!1750) (rule!6703 (_1!16061 (get!8230 lt!850118)))))))

(assert (= (and d!678101 res!980296) b!2292323))

(assert (= (and b!2292323 (not res!980295)) b!2292324))

(assert (=> d!678101 m!2719067))

(declare-fun m!2720145 () Bool)

(assert (=> d!678101 m!2720145))

(declare-fun m!2720147 () Bool)

(assert (=> b!2292324 m!2720147))

(assert (=> b!2291464 d!678101))

(assert (=> b!2291464 d!678017))

(declare-fun b!2292325 () Bool)

(declare-fun e!1468862 () Bool)

(declare-fun e!1468860 () Bool)

(assert (=> b!2292325 (= e!1468862 e!1468860)))

(declare-fun c!363498 () Bool)

(assert (=> b!2292325 (= c!363498 ((_ is Star!6715) (regex!4367 otherR!12)))))

(declare-fun d!678103 () Bool)

(declare-fun res!980301 () Bool)

(assert (=> d!678103 (=> res!980301 e!1468862)))

(assert (=> d!678103 (= res!980301 ((_ is ElementMatch!6715) (regex!4367 otherR!12)))))

(assert (=> d!678103 (= (validRegex!2530 (regex!4367 otherR!12)) e!1468862)))

(declare-fun bm!136741 () Bool)

(declare-fun call!136746 () Bool)

(declare-fun call!136747 () Bool)

(assert (=> bm!136741 (= call!136746 call!136747)))

(declare-fun b!2292326 () Bool)

(declare-fun res!980299 () Bool)

(declare-fun e!1468864 () Bool)

(assert (=> b!2292326 (=> (not res!980299) (not e!1468864))))

(assert (=> b!2292326 (= res!980299 call!136746)))

(declare-fun e!1468858 () Bool)

(assert (=> b!2292326 (= e!1468858 e!1468864)))

(declare-fun b!2292327 () Bool)

(declare-fun call!136748 () Bool)

(assert (=> b!2292327 (= e!1468864 call!136748)))

(declare-fun b!2292328 () Bool)

(declare-fun e!1468863 () Bool)

(assert (=> b!2292328 (= e!1468863 call!136747)))

(declare-fun b!2292329 () Bool)

(declare-fun e!1468861 () Bool)

(assert (=> b!2292329 (= e!1468861 call!136746)))

(declare-fun bm!136742 () Bool)

(declare-fun c!363499 () Bool)

(assert (=> bm!136742 (= call!136748 (validRegex!2530 (ite c!363499 (regTwo!13943 (regex!4367 otherR!12)) (regOne!13942 (regex!4367 otherR!12)))))))

(declare-fun b!2292330 () Bool)

(declare-fun e!1468859 () Bool)

(assert (=> b!2292330 (= e!1468859 e!1468861)))

(declare-fun res!980298 () Bool)

(assert (=> b!2292330 (=> (not res!980298) (not e!1468861))))

(assert (=> b!2292330 (= res!980298 call!136748)))

(declare-fun bm!136743 () Bool)

(assert (=> bm!136743 (= call!136747 (validRegex!2530 (ite c!363498 (reg!7044 (regex!4367 otherR!12)) (ite c!363499 (regOne!13943 (regex!4367 otherR!12)) (regTwo!13942 (regex!4367 otherR!12))))))))

(declare-fun b!2292331 () Bool)

(assert (=> b!2292331 (= e!1468860 e!1468863)))

(declare-fun res!980300 () Bool)

(assert (=> b!2292331 (= res!980300 (not (nullable!1868 (reg!7044 (regex!4367 otherR!12)))))))

(assert (=> b!2292331 (=> (not res!980300) (not e!1468863))))

(declare-fun b!2292332 () Bool)

(declare-fun res!980297 () Bool)

(assert (=> b!2292332 (=> res!980297 e!1468859)))

(assert (=> b!2292332 (= res!980297 (not ((_ is Concat!11245) (regex!4367 otherR!12))))))

(assert (=> b!2292332 (= e!1468858 e!1468859)))

(declare-fun b!2292333 () Bool)

(assert (=> b!2292333 (= e!1468860 e!1468858)))

(assert (=> b!2292333 (= c!363499 ((_ is Union!6715) (regex!4367 otherR!12)))))

(assert (= (and d!678103 (not res!980301)) b!2292325))

(assert (= (and b!2292325 c!363498) b!2292331))

(assert (= (and b!2292325 (not c!363498)) b!2292333))

(assert (= (and b!2292331 res!980300) b!2292328))

(assert (= (and b!2292333 c!363499) b!2292326))

(assert (= (and b!2292333 (not c!363499)) b!2292332))

(assert (= (and b!2292326 res!980299) b!2292327))

(assert (= (and b!2292332 (not res!980297)) b!2292330))

(assert (= (and b!2292330 res!980298) b!2292329))

(assert (= (or b!2292326 b!2292329) bm!136741))

(assert (= (or b!2292327 b!2292330) bm!136742))

(assert (= (or b!2292328 bm!136741) bm!136743))

(declare-fun m!2720149 () Bool)

(assert (=> bm!136742 m!2720149))

(declare-fun m!2720151 () Bool)

(assert (=> bm!136743 m!2720151))

(declare-fun m!2720153 () Bool)

(assert (=> b!2292331 m!2720153))

(assert (=> d!677763 d!678103))

(declare-fun d!678105 () Bool)

(declare-fun e!1468865 () Bool)

(assert (=> d!678105 e!1468865))

(declare-fun res!980302 () Bool)

(assert (=> d!678105 (=> (not res!980302) (not e!1468865))))

(declare-fun lt!850697 () BalanceConc!17492)

(assert (=> d!678105 (= res!980302 (= (list!10688 lt!850697) lt!850069))))

(assert (=> d!678105 (= lt!850697 (BalanceConc!17493 (fromList!537 lt!850069)))))

(assert (=> d!678105 (= (fromListB!1380 lt!850069) lt!850697)))

(declare-fun b!2292334 () Bool)

(assert (=> b!2292334 (= e!1468865 (isBalanced!2680 (fromList!537 lt!850069)))))

(assert (= (and d!678105 res!980302) b!2292334))

(declare-fun m!2720155 () Bool)

(assert (=> d!678105 m!2720155))

(declare-fun m!2720157 () Bool)

(assert (=> d!678105 m!2720157))

(assert (=> b!2292334 m!2720157))

(assert (=> b!2292334 m!2720157))

(declare-fun m!2720159 () Bool)

(assert (=> b!2292334 m!2720159))

(assert (=> d!677835 d!678105))

(declare-fun d!678107 () Bool)

(declare-fun res!980307 () Bool)

(declare-fun e!1468870 () Bool)

(assert (=> d!678107 (=> res!980307 e!1468870)))

(assert (=> d!678107 (= res!980307 ((_ is Nil!27287) rules!1750))))

(assert (=> d!678107 (= (noDuplicateTag!1612 thiss!16613 rules!1750 Nil!27290) e!1468870)))

(declare-fun b!2292339 () Bool)

(declare-fun e!1468871 () Bool)

(assert (=> b!2292339 (= e!1468870 e!1468871)))

(declare-fun res!980308 () Bool)

(assert (=> b!2292339 (=> (not res!980308) (not e!1468871))))

(declare-fun contains!4745 (List!27384 String!29749) Bool)

(assert (=> b!2292339 (= res!980308 (not (contains!4745 Nil!27290 (tag!4857 (h!32688 rules!1750)))))))

(declare-fun b!2292340 () Bool)

(assert (=> b!2292340 (= e!1468871 (noDuplicateTag!1612 thiss!16613 (t!204673 rules!1750) (Cons!27290 (tag!4857 (h!32688 rules!1750)) Nil!27290)))))

(assert (= (and d!678107 (not res!980307)) b!2292339))

(assert (= (and b!2292339 res!980308) b!2292340))

(declare-fun m!2720161 () Bool)

(assert (=> b!2292339 m!2720161))

(declare-fun m!2720163 () Bool)

(assert (=> b!2292340 m!2720163))

(assert (=> b!2291500 d!678107))

(declare-fun d!678109 () Bool)

(assert (=> d!678109 (= (list!10689 (_1!16062 lt!850181)) (list!10693 (c!363264 (_1!16062 lt!850181))))))

(declare-fun bs!457111 () Bool)

(assert (= bs!457111 d!678109))

(declare-fun m!2720165 () Bool)

(assert (=> bs!457111 m!2720165))

(assert (=> b!2291642 d!678109))

(declare-fun b!2292416 () Bool)

(declare-fun e!1468914 () Bool)

(declare-fun lt!850718 () tuple2!27106)

(assert (=> b!2292416 (= e!1468914 (= (_2!16063 lt!850718) (list!10688 (seqFromList!3071 input!1722))))))

(declare-fun b!2292417 () Bool)

(declare-fun e!1468913 () tuple2!27106)

(assert (=> b!2292417 (= e!1468913 (tuple2!27107 Nil!27288 (list!10688 (seqFromList!3071 input!1722))))))

(declare-fun b!2292418 () Bool)

(declare-fun lt!850719 () Option!5357)

(declare-fun lt!850717 () tuple2!27106)

(assert (=> b!2292418 (= e!1468913 (tuple2!27107 (Cons!27288 (_1!16061 (v!30438 lt!850719)) (_1!16063 lt!850717)) (_2!16063 lt!850717)))))

(assert (=> b!2292418 (= lt!850717 (lexList!1114 thiss!16613 rules!1750 (_2!16061 (v!30438 lt!850719))))))

(declare-fun b!2292419 () Bool)

(declare-fun e!1468915 () Bool)

(assert (=> b!2292419 (= e!1468915 (not (isEmpty!15539 (_1!16063 lt!850718))))))

(declare-fun d!678111 () Bool)

(assert (=> d!678111 e!1468914))

(declare-fun c!363529 () Bool)

(assert (=> d!678111 (= c!363529 (> (size!21487 (_1!16063 lt!850718)) 0))))

(assert (=> d!678111 (= lt!850718 e!1468913)))

(declare-fun c!363528 () Bool)

(assert (=> d!678111 (= c!363528 ((_ is Some!5356) lt!850719))))

(assert (=> d!678111 (= lt!850719 (maxPrefix!2228 thiss!16613 rules!1750 (list!10688 (seqFromList!3071 input!1722))))))

(assert (=> d!678111 (= (lexList!1114 thiss!16613 rules!1750 (list!10688 (seqFromList!3071 input!1722))) lt!850718)))

(declare-fun b!2292420 () Bool)

(assert (=> b!2292420 (= e!1468914 e!1468915)))

(declare-fun res!980328 () Bool)

(assert (=> b!2292420 (= res!980328 (< (size!21481 (_2!16063 lt!850718)) (size!21481 (list!10688 (seqFromList!3071 input!1722)))))))

(assert (=> b!2292420 (=> (not res!980328) (not e!1468915))))

(assert (= (and d!678111 c!363528) b!2292418))

(assert (= (and d!678111 (not c!363528)) b!2292417))

(assert (= (and d!678111 c!363529) b!2292420))

(assert (= (and d!678111 (not c!363529)) b!2292416))

(assert (= (and b!2292420 res!980328) b!2292419))

(declare-fun m!2720223 () Bool)

(assert (=> b!2292418 m!2720223))

(declare-fun m!2720225 () Bool)

(assert (=> b!2292419 m!2720225))

(declare-fun m!2720227 () Bool)

(assert (=> d!678111 m!2720227))

(assert (=> d!678111 m!2719247))

(declare-fun m!2720229 () Bool)

(assert (=> d!678111 m!2720229))

(declare-fun m!2720231 () Bool)

(assert (=> b!2292420 m!2720231))

(assert (=> b!2292420 m!2719247))

(declare-fun m!2720233 () Bool)

(assert (=> b!2292420 m!2720233))

(assert (=> b!2291642 d!678111))

(declare-fun d!678135 () Bool)

(assert (=> d!678135 (= (list!10688 (seqFromList!3071 input!1722)) (list!10692 (c!363262 (seqFromList!3071 input!1722))))))

(declare-fun bs!457113 () Bool)

(assert (= bs!457113 d!678135))

(declare-fun m!2720235 () Bool)

(assert (=> bs!457113 m!2720235))

(assert (=> b!2291642 d!678135))

(assert (=> d!677767 d!677763))

(declare-fun d!678137 () Bool)

(assert (=> d!678137 (ruleValid!1457 thiss!16613 otherR!12)))

(assert (=> d!678137 true))

(declare-fun _$65!1139 () Unit!40164)

(assert (=> d!678137 (= (choose!13383 thiss!16613 otherR!12 rules!1750) _$65!1139)))

(declare-fun bs!457114 () Bool)

(assert (= bs!457114 d!678137))

(assert (=> bs!457114 m!2718887))

(assert (=> d!677767 d!678137))

(assert (=> d!677767 d!677859))

(declare-fun b!2292427 () Bool)

(declare-fun res!980336 () Bool)

(declare-fun e!1468920 () Bool)

(assert (=> b!2292427 (=> (not res!980336) (not e!1468920))))

(assert (=> b!2292427 (= res!980336 (isEmpty!15543 (tail!3311 (tail!3311 lt!850069))))))

(declare-fun b!2292428 () Bool)

(declare-fun res!980334 () Bool)

(declare-fun e!1468926 () Bool)

(assert (=> b!2292428 (=> res!980334 e!1468926)))

(assert (=> b!2292428 (= res!980334 (not (isEmpty!15543 (tail!3311 (tail!3311 lt!850069)))))))

(declare-fun b!2292429 () Bool)

(assert (=> b!2292429 (= e!1468926 (not (= (head!4998 (tail!3311 lt!850069)) (c!363263 (derivativeStep!1528 (regex!4367 r!2363) (head!4998 lt!850069))))))))

(declare-fun b!2292430 () Bool)

(declare-fun e!1468922 () Bool)

(assert (=> b!2292430 (= e!1468922 (nullable!1868 (derivativeStep!1528 (regex!4367 r!2363) (head!4998 lt!850069))))))

(declare-fun b!2292431 () Bool)

(assert (=> b!2292431 (= e!1468920 (= (head!4998 (tail!3311 lt!850069)) (c!363263 (derivativeStep!1528 (regex!4367 r!2363) (head!4998 lt!850069)))))))

(declare-fun d!678139 () Bool)

(declare-fun e!1468921 () Bool)

(assert (=> d!678139 e!1468921))

(declare-fun c!363533 () Bool)

(assert (=> d!678139 (= c!363533 ((_ is EmptyExpr!6715) (derivativeStep!1528 (regex!4367 r!2363) (head!4998 lt!850069))))))

(declare-fun lt!850720 () Bool)

(assert (=> d!678139 (= lt!850720 e!1468922)))

(declare-fun c!363532 () Bool)

(assert (=> d!678139 (= c!363532 (isEmpty!15543 (tail!3311 lt!850069)))))

(assert (=> d!678139 (validRegex!2530 (derivativeStep!1528 (regex!4367 r!2363) (head!4998 lt!850069)))))

(assert (=> d!678139 (= (matchR!2972 (derivativeStep!1528 (regex!4367 r!2363) (head!4998 lt!850069)) (tail!3311 lt!850069)) lt!850720)))

(declare-fun b!2292432 () Bool)

(declare-fun call!136754 () Bool)

(assert (=> b!2292432 (= e!1468921 (= lt!850720 call!136754))))

(declare-fun b!2292433 () Bool)

(declare-fun res!980331 () Bool)

(declare-fun e!1468924 () Bool)

(assert (=> b!2292433 (=> res!980331 e!1468924)))

(assert (=> b!2292433 (= res!980331 e!1468920)))

(declare-fun res!980338 () Bool)

(assert (=> b!2292433 (=> (not res!980338) (not e!1468920))))

(assert (=> b!2292433 (= res!980338 lt!850720)))

(declare-fun b!2292434 () Bool)

(declare-fun e!1468925 () Bool)

(assert (=> b!2292434 (= e!1468925 (not lt!850720))))

(declare-fun b!2292435 () Bool)

(declare-fun res!980335 () Bool)

(assert (=> b!2292435 (=> (not res!980335) (not e!1468920))))

(assert (=> b!2292435 (= res!980335 (not call!136754))))

(declare-fun b!2292436 () Bool)

(declare-fun e!1468923 () Bool)

(assert (=> b!2292436 (= e!1468924 e!1468923)))

(declare-fun res!980333 () Bool)

(assert (=> b!2292436 (=> (not res!980333) (not e!1468923))))

(assert (=> b!2292436 (= res!980333 (not lt!850720))))

(declare-fun b!2292437 () Bool)

(assert (=> b!2292437 (= e!1468921 e!1468925)))

(declare-fun c!363534 () Bool)

(assert (=> b!2292437 (= c!363534 ((_ is EmptyLang!6715) (derivativeStep!1528 (regex!4367 r!2363) (head!4998 lt!850069))))))

(declare-fun b!2292438 () Bool)

(assert (=> b!2292438 (= e!1468923 e!1468926)))

(declare-fun res!980332 () Bool)

(assert (=> b!2292438 (=> res!980332 e!1468926)))

(assert (=> b!2292438 (= res!980332 call!136754)))

(declare-fun b!2292439 () Bool)

(declare-fun res!980337 () Bool)

(assert (=> b!2292439 (=> res!980337 e!1468924)))

(assert (=> b!2292439 (= res!980337 (not ((_ is ElementMatch!6715) (derivativeStep!1528 (regex!4367 r!2363) (head!4998 lt!850069)))))))

(assert (=> b!2292439 (= e!1468925 e!1468924)))

(declare-fun bm!136749 () Bool)

(assert (=> bm!136749 (= call!136754 (isEmpty!15543 (tail!3311 lt!850069)))))

(declare-fun b!2292440 () Bool)

(assert (=> b!2292440 (= e!1468922 (matchR!2972 (derivativeStep!1528 (derivativeStep!1528 (regex!4367 r!2363) (head!4998 lt!850069)) (head!4998 (tail!3311 lt!850069))) (tail!3311 (tail!3311 lt!850069))))))

(assert (= (and d!678139 c!363532) b!2292430))

(assert (= (and d!678139 (not c!363532)) b!2292440))

(assert (= (and d!678139 c!363533) b!2292432))

(assert (= (and d!678139 (not c!363533)) b!2292437))

(assert (= (and b!2292437 c!363534) b!2292434))

(assert (= (and b!2292437 (not c!363534)) b!2292439))

(assert (= (and b!2292439 (not res!980337)) b!2292433))

(assert (= (and b!2292433 res!980338) b!2292435))

(assert (= (and b!2292435 res!980335) b!2292427))

(assert (= (and b!2292427 res!980336) b!2292431))

(assert (= (and b!2292433 (not res!980331)) b!2292436))

(assert (= (and b!2292436 res!980333) b!2292438))

(assert (= (and b!2292438 (not res!980332)) b!2292428))

(assert (= (and b!2292428 (not res!980334)) b!2292429))

(assert (= (or b!2292432 b!2292435 b!2292438) bm!136749))

(assert (=> b!2292428 m!2718949))

(declare-fun m!2720245 () Bool)

(assert (=> b!2292428 m!2720245))

(assert (=> b!2292428 m!2720245))

(declare-fun m!2720247 () Bool)

(assert (=> b!2292428 m!2720247))

(assert (=> b!2292429 m!2718949))

(declare-fun m!2720249 () Bool)

(assert (=> b!2292429 m!2720249))

(assert (=> b!2292427 m!2718949))

(assert (=> b!2292427 m!2720245))

(assert (=> b!2292427 m!2720245))

(assert (=> b!2292427 m!2720247))

(assert (=> d!678139 m!2718949))

(assert (=> d!678139 m!2718951))

(assert (=> d!678139 m!2718961))

(declare-fun m!2720251 () Bool)

(assert (=> d!678139 m!2720251))

(assert (=> b!2292430 m!2718961))

(declare-fun m!2720253 () Bool)

(assert (=> b!2292430 m!2720253))

(assert (=> b!2292440 m!2718949))

(assert (=> b!2292440 m!2720249))

(assert (=> b!2292440 m!2718961))

(assert (=> b!2292440 m!2720249))

(declare-fun m!2720255 () Bool)

(assert (=> b!2292440 m!2720255))

(assert (=> b!2292440 m!2718949))

(assert (=> b!2292440 m!2720245))

(assert (=> b!2292440 m!2720255))

(assert (=> b!2292440 m!2720245))

(declare-fun m!2720257 () Bool)

(assert (=> b!2292440 m!2720257))

(assert (=> b!2292431 m!2718949))

(assert (=> b!2292431 m!2720249))

(assert (=> bm!136749 m!2718949))

(assert (=> bm!136749 m!2718951))

(assert (=> b!2291378 d!678139))

(declare-fun b!2292479 () Bool)

(declare-fun e!1468947 () Regex!6715)

(assert (=> b!2292479 (= e!1468947 EmptyLang!6715)))

(declare-fun d!678145 () Bool)

(declare-fun lt!850732 () Regex!6715)

(assert (=> d!678145 (validRegex!2530 lt!850732)))

(assert (=> d!678145 (= lt!850732 e!1468947)))

(declare-fun c!363548 () Bool)

(assert (=> d!678145 (= c!363548 (or ((_ is EmptyExpr!6715) (regex!4367 r!2363)) ((_ is EmptyLang!6715) (regex!4367 r!2363))))))

(assert (=> d!678145 (validRegex!2530 (regex!4367 r!2363))))

(assert (=> d!678145 (= (derivativeStep!1528 (regex!4367 r!2363) (head!4998 lt!850069)) lt!850732)))

(declare-fun bm!136758 () Bool)

(declare-fun call!136763 () Regex!6715)

(declare-fun call!136764 () Regex!6715)

(assert (=> bm!136758 (= call!136763 call!136764)))

(declare-fun c!363552 () Bool)

(declare-fun c!363549 () Bool)

(declare-fun bm!136759 () Bool)

(assert (=> bm!136759 (= call!136764 (derivativeStep!1528 (ite c!363549 (regTwo!13943 (regex!4367 r!2363)) (ite c!363552 (reg!7044 (regex!4367 r!2363)) (regOne!13942 (regex!4367 r!2363)))) (head!4998 lt!850069)))))

(declare-fun b!2292480 () Bool)

(declare-fun e!1468948 () Regex!6715)

(assert (=> b!2292480 (= e!1468947 e!1468948)))

(declare-fun c!363551 () Bool)

(assert (=> b!2292480 (= c!363551 ((_ is ElementMatch!6715) (regex!4367 r!2363)))))

(declare-fun bm!136760 () Bool)

(declare-fun call!136765 () Regex!6715)

(assert (=> bm!136760 (= call!136765 call!136763)))

(declare-fun b!2292481 () Bool)

(assert (=> b!2292481 (= e!1468948 (ite (= (head!4998 lt!850069) (c!363263 (regex!4367 r!2363))) EmptyExpr!6715 EmptyLang!6715))))

(declare-fun b!2292482 () Bool)

(declare-fun e!1468945 () Regex!6715)

(assert (=> b!2292482 (= e!1468945 (Union!6715 (Concat!11245 call!136765 (regTwo!13942 (regex!4367 r!2363))) EmptyLang!6715))))

(declare-fun b!2292483 () Bool)

(declare-fun e!1468946 () Regex!6715)

(declare-fun call!136766 () Regex!6715)

(assert (=> b!2292483 (= e!1468946 (Union!6715 call!136766 call!136764))))

(declare-fun bm!136761 () Bool)

(assert (=> bm!136761 (= call!136766 (derivativeStep!1528 (ite c!363549 (regOne!13943 (regex!4367 r!2363)) (regTwo!13942 (regex!4367 r!2363))) (head!4998 lt!850069)))))

(declare-fun b!2292484 () Bool)

(assert (=> b!2292484 (= c!363549 ((_ is Union!6715) (regex!4367 r!2363)))))

(assert (=> b!2292484 (= e!1468948 e!1468946)))

(declare-fun b!2292485 () Bool)

(declare-fun e!1468944 () Regex!6715)

(assert (=> b!2292485 (= e!1468944 (Concat!11245 call!136763 (regex!4367 r!2363)))))

(declare-fun b!2292486 () Bool)

(assert (=> b!2292486 (= e!1468945 (Union!6715 (Concat!11245 call!136765 (regTwo!13942 (regex!4367 r!2363))) call!136766))))

(declare-fun b!2292487 () Bool)

(assert (=> b!2292487 (= e!1468946 e!1468944)))

(assert (=> b!2292487 (= c!363552 ((_ is Star!6715) (regex!4367 r!2363)))))

(declare-fun b!2292488 () Bool)

(declare-fun c!363550 () Bool)

(assert (=> b!2292488 (= c!363550 (nullable!1868 (regOne!13942 (regex!4367 r!2363))))))

(assert (=> b!2292488 (= e!1468944 e!1468945)))

(assert (= (and d!678145 c!363548) b!2292479))

(assert (= (and d!678145 (not c!363548)) b!2292480))

(assert (= (and b!2292480 c!363551) b!2292481))

(assert (= (and b!2292480 (not c!363551)) b!2292484))

(assert (= (and b!2292484 c!363549) b!2292483))

(assert (= (and b!2292484 (not c!363549)) b!2292487))

(assert (= (and b!2292487 c!363552) b!2292485))

(assert (= (and b!2292487 (not c!363552)) b!2292488))

(assert (= (and b!2292488 c!363550) b!2292486))

(assert (= (and b!2292488 (not c!363550)) b!2292482))

(assert (= (or b!2292486 b!2292482) bm!136760))

(assert (= (or b!2292485 bm!136760) bm!136758))

(assert (= (or b!2292483 b!2292486) bm!136761))

(assert (= (or b!2292483 bm!136758) bm!136759))

(declare-fun m!2720307 () Bool)

(assert (=> d!678145 m!2720307))

(assert (=> d!678145 m!2718957))

(assert (=> bm!136759 m!2718953))

(declare-fun m!2720311 () Bool)

(assert (=> bm!136759 m!2720311))

(assert (=> bm!136761 m!2718953))

(declare-fun m!2720313 () Bool)

(assert (=> bm!136761 m!2720313))

(declare-fun m!2720315 () Bool)

(assert (=> b!2292488 m!2720315))

(assert (=> b!2291378 d!678145))

(assert (=> b!2291378 d!677983))

(declare-fun d!678161 () Bool)

(assert (=> d!678161 (= (tail!3311 lt!850069) (t!204671 lt!850069))))

(assert (=> b!2291378 d!678161))

(declare-fun d!678165 () Bool)

(declare-fun e!1468955 () Bool)

(assert (=> d!678165 e!1468955))

(declare-fun res!980355 () Bool)

(assert (=> d!678165 (=> (not res!980355) (not e!1468955))))

(declare-fun lt!850740 () List!27379)

(assert (=> d!678165 (= res!980355 (= (content!3667 lt!850740) ((_ map or) (content!3667 (list!10688 (charsOf!2755 (_1!16061 (get!8230 lt!850231))))) (content!3667 (_2!16061 (get!8230 lt!850231))))))))

(declare-fun e!1468954 () List!27379)

(assert (=> d!678165 (= lt!850740 e!1468954)))

(declare-fun c!363556 () Bool)

(assert (=> d!678165 (= c!363556 ((_ is Nil!27285) (list!10688 (charsOf!2755 (_1!16061 (get!8230 lt!850231))))))))

(assert (=> d!678165 (= (++!6667 (list!10688 (charsOf!2755 (_1!16061 (get!8230 lt!850231)))) (_2!16061 (get!8230 lt!850231))) lt!850740)))

(declare-fun b!2292506 () Bool)

(declare-fun res!980354 () Bool)

(assert (=> b!2292506 (=> (not res!980354) (not e!1468955))))

(assert (=> b!2292506 (= res!980354 (= (size!21481 lt!850740) (+ (size!21481 (list!10688 (charsOf!2755 (_1!16061 (get!8230 lt!850231))))) (size!21481 (_2!16061 (get!8230 lt!850231))))))))

(declare-fun b!2292505 () Bool)

(assert (=> b!2292505 (= e!1468954 (Cons!27285 (h!32686 (list!10688 (charsOf!2755 (_1!16061 (get!8230 lt!850231))))) (++!6667 (t!204671 (list!10688 (charsOf!2755 (_1!16061 (get!8230 lt!850231))))) (_2!16061 (get!8230 lt!850231)))))))

(declare-fun b!2292507 () Bool)

(assert (=> b!2292507 (= e!1468955 (or (not (= (_2!16061 (get!8230 lt!850231)) Nil!27285)) (= lt!850740 (list!10688 (charsOf!2755 (_1!16061 (get!8230 lt!850231)))))))))

(declare-fun b!2292504 () Bool)

(assert (=> b!2292504 (= e!1468954 (_2!16061 (get!8230 lt!850231)))))

(assert (= (and d!678165 c!363556) b!2292504))

(assert (= (and d!678165 (not c!363556)) b!2292505))

(assert (= (and d!678165 res!980355) b!2292506))

(assert (= (and b!2292506 res!980354) b!2292507))

(declare-fun m!2720319 () Bool)

(assert (=> d!678165 m!2720319))

(assert (=> d!678165 m!2719367))

(declare-fun m!2720321 () Bool)

(assert (=> d!678165 m!2720321))

(declare-fun m!2720323 () Bool)

(assert (=> d!678165 m!2720323))

(declare-fun m!2720325 () Bool)

(assert (=> b!2292506 m!2720325))

(assert (=> b!2292506 m!2719367))

(declare-fun m!2720327 () Bool)

(assert (=> b!2292506 m!2720327))

(assert (=> b!2292506 m!2719355))

(declare-fun m!2720329 () Bool)

(assert (=> b!2292505 m!2720329))

(assert (=> b!2291738 d!678165))

(declare-fun d!678167 () Bool)

(assert (=> d!678167 (= (list!10688 (charsOf!2755 (_1!16061 (get!8230 lt!850231)))) (list!10692 (c!363262 (charsOf!2755 (_1!16061 (get!8230 lt!850231))))))))

(declare-fun bs!457120 () Bool)

(assert (= bs!457120 d!678167))

(declare-fun m!2720331 () Bool)

(assert (=> bs!457120 m!2720331))

(assert (=> b!2291738 d!678167))

(declare-fun d!678169 () Bool)

(declare-fun lt!850741 () BalanceConc!17492)

(assert (=> d!678169 (= (list!10688 lt!850741) (originalCharacters!5137 (_1!16061 (get!8230 lt!850231))))))

(assert (=> d!678169 (= lt!850741 (dynLambda!11843 (toChars!6016 (transformation!4367 (rule!6703 (_1!16061 (get!8230 lt!850231))))) (value!138279 (_1!16061 (get!8230 lt!850231)))))))

(assert (=> d!678169 (= (charsOf!2755 (_1!16061 (get!8230 lt!850231))) lt!850741)))

(declare-fun b_lambda!73049 () Bool)

(assert (=> (not b_lambda!73049) (not d!678169)))

(declare-fun tb!136723 () Bool)

(declare-fun t!204861 () Bool)

(assert (=> (and b!2291260 (= (toChars!6016 (transformation!4367 (rule!6703 (h!32689 tokens!456)))) (toChars!6016 (transformation!4367 (rule!6703 (_1!16061 (get!8230 lt!850231)))))) t!204861) tb!136723))

(declare-fun b!2292508 () Bool)

(declare-fun e!1468956 () Bool)

(declare-fun tp!726641 () Bool)

(assert (=> b!2292508 (= e!1468956 (and (inv!36889 (c!363262 (dynLambda!11843 (toChars!6016 (transformation!4367 (rule!6703 (_1!16061 (get!8230 lt!850231))))) (value!138279 (_1!16061 (get!8230 lt!850231)))))) tp!726641))))

(declare-fun result!166706 () Bool)

(assert (=> tb!136723 (= result!166706 (and (inv!36890 (dynLambda!11843 (toChars!6016 (transformation!4367 (rule!6703 (_1!16061 (get!8230 lt!850231))))) (value!138279 (_1!16061 (get!8230 lt!850231))))) e!1468956))))

(assert (= tb!136723 b!2292508))

(declare-fun m!2720335 () Bool)

(assert (=> b!2292508 m!2720335))

(declare-fun m!2720337 () Bool)

(assert (=> tb!136723 m!2720337))

(assert (=> d!678169 t!204861))

(declare-fun b_and!182085 () Bool)

(assert (= b_and!181987 (and (=> t!204861 result!166706) b_and!182085)))

(declare-fun t!204863 () Bool)

(declare-fun tb!136725 () Bool)

(assert (=> (and b!2291253 (= (toChars!6016 (transformation!4367 r!2363)) (toChars!6016 (transformation!4367 (rule!6703 (_1!16061 (get!8230 lt!850231)))))) t!204863) tb!136725))

(declare-fun result!166708 () Bool)

(assert (= result!166708 result!166706))

(assert (=> d!678169 t!204863))

(declare-fun b_and!182087 () Bool)

(assert (= b_and!181985 (and (=> t!204863 result!166708) b_and!182087)))

(declare-fun tb!136727 () Bool)

(declare-fun t!204865 () Bool)

(assert (=> (and b!2291860 (= (toChars!6016 (transformation!4367 (h!32688 (t!204673 rules!1750)))) (toChars!6016 (transformation!4367 (rule!6703 (_1!16061 (get!8230 lt!850231)))))) t!204865) tb!136727))

(declare-fun result!166710 () Bool)

(assert (= result!166710 result!166706))

(assert (=> d!678169 t!204865))

(declare-fun b_and!182089 () Bool)

(assert (= b_and!181995 (and (=> t!204865 result!166710) b_and!182089)))

(declare-fun t!204867 () Bool)

(declare-fun tb!136729 () Bool)

(assert (=> (and b!2291887 (= (toChars!6016 (transformation!4367 (rule!6703 (h!32689 (t!204674 tokens!456))))) (toChars!6016 (transformation!4367 (rule!6703 (_1!16061 (get!8230 lt!850231)))))) t!204867) tb!136729))

(declare-fun result!166712 () Bool)

(assert (= result!166712 result!166706))

(assert (=> d!678169 t!204867))

(declare-fun b_and!182091 () Bool)

(assert (= b_and!181999 (and (=> t!204867 result!166712) b_and!182091)))

(declare-fun t!204869 () Bool)

(declare-fun tb!136731 () Bool)

(assert (=> (and b!2291255 (= (toChars!6016 (transformation!4367 (h!32688 rules!1750))) (toChars!6016 (transformation!4367 (rule!6703 (_1!16061 (get!8230 lt!850231)))))) t!204869) tb!136731))

(declare-fun result!166714 () Bool)

(assert (= result!166714 result!166706))

(assert (=> d!678169 t!204869))

(declare-fun b_and!182093 () Bool)

(assert (= b_and!181989 (and (=> t!204869 result!166714) b_and!182093)))

(declare-fun t!204871 () Bool)

(declare-fun tb!136733 () Bool)

(assert (=> (and b!2291243 (= (toChars!6016 (transformation!4367 otherR!12)) (toChars!6016 (transformation!4367 (rule!6703 (_1!16061 (get!8230 lt!850231)))))) t!204871) tb!136733))

(declare-fun result!166716 () Bool)

(assert (= result!166716 result!166706))

(assert (=> d!678169 t!204871))

(declare-fun b_and!182095 () Bool)

(assert (= b_and!181991 (and (=> t!204871 result!166716) b_and!182095)))

(declare-fun m!2720353 () Bool)

(assert (=> d!678169 m!2720353))

(declare-fun m!2720357 () Bool)

(assert (=> d!678169 m!2720357))

(assert (=> b!2291738 d!678169))

(assert (=> b!2291738 d!677885))

(declare-fun b!2292509 () Bool)

(declare-fun res!980361 () Bool)

(declare-fun e!1468957 () Bool)

(assert (=> b!2292509 (=> (not res!980361) (not e!1468957))))

(assert (=> b!2292509 (= res!980361 (isEmpty!15543 (tail!3311 (list!10688 (charsOf!2755 (_1!16061 (get!8230 lt!850231)))))))))

(declare-fun b!2292510 () Bool)

(declare-fun res!980359 () Bool)

(declare-fun e!1468963 () Bool)

(assert (=> b!2292510 (=> res!980359 e!1468963)))

(assert (=> b!2292510 (= res!980359 (not (isEmpty!15543 (tail!3311 (list!10688 (charsOf!2755 (_1!16061 (get!8230 lt!850231))))))))))

(declare-fun b!2292511 () Bool)

(assert (=> b!2292511 (= e!1468963 (not (= (head!4998 (list!10688 (charsOf!2755 (_1!16061 (get!8230 lt!850231))))) (c!363263 (regex!4367 r!2363)))))))

(declare-fun b!2292512 () Bool)

(declare-fun e!1468959 () Bool)

(assert (=> b!2292512 (= e!1468959 (nullable!1868 (regex!4367 r!2363)))))

(declare-fun b!2292513 () Bool)

(assert (=> b!2292513 (= e!1468957 (= (head!4998 (list!10688 (charsOf!2755 (_1!16061 (get!8230 lt!850231))))) (c!363263 (regex!4367 r!2363))))))

(declare-fun d!678171 () Bool)

(declare-fun e!1468958 () Bool)

(assert (=> d!678171 e!1468958))

(declare-fun c!363558 () Bool)

(assert (=> d!678171 (= c!363558 ((_ is EmptyExpr!6715) (regex!4367 r!2363)))))

(declare-fun lt!850742 () Bool)

(assert (=> d!678171 (= lt!850742 e!1468959)))

(declare-fun c!363557 () Bool)

(assert (=> d!678171 (= c!363557 (isEmpty!15543 (list!10688 (charsOf!2755 (_1!16061 (get!8230 lt!850231))))))))

(assert (=> d!678171 (validRegex!2530 (regex!4367 r!2363))))

(assert (=> d!678171 (= (matchR!2972 (regex!4367 r!2363) (list!10688 (charsOf!2755 (_1!16061 (get!8230 lt!850231))))) lt!850742)))

(declare-fun b!2292514 () Bool)

(declare-fun call!136768 () Bool)

(assert (=> b!2292514 (= e!1468958 (= lt!850742 call!136768))))

(declare-fun b!2292515 () Bool)

(declare-fun res!980356 () Bool)

(declare-fun e!1468961 () Bool)

(assert (=> b!2292515 (=> res!980356 e!1468961)))

(assert (=> b!2292515 (= res!980356 e!1468957)))

(declare-fun res!980363 () Bool)

(assert (=> b!2292515 (=> (not res!980363) (not e!1468957))))

(assert (=> b!2292515 (= res!980363 lt!850742)))

(declare-fun b!2292516 () Bool)

(declare-fun e!1468962 () Bool)

(assert (=> b!2292516 (= e!1468962 (not lt!850742))))

(declare-fun b!2292517 () Bool)

(declare-fun res!980360 () Bool)

(assert (=> b!2292517 (=> (not res!980360) (not e!1468957))))

(assert (=> b!2292517 (= res!980360 (not call!136768))))

(declare-fun b!2292518 () Bool)

(declare-fun e!1468960 () Bool)

(assert (=> b!2292518 (= e!1468961 e!1468960)))

(declare-fun res!980358 () Bool)

(assert (=> b!2292518 (=> (not res!980358) (not e!1468960))))

(assert (=> b!2292518 (= res!980358 (not lt!850742))))

(declare-fun b!2292519 () Bool)

(assert (=> b!2292519 (= e!1468958 e!1468962)))

(declare-fun c!363559 () Bool)

(assert (=> b!2292519 (= c!363559 ((_ is EmptyLang!6715) (regex!4367 r!2363)))))

(declare-fun b!2292520 () Bool)

(assert (=> b!2292520 (= e!1468960 e!1468963)))

(declare-fun res!980357 () Bool)

(assert (=> b!2292520 (=> res!980357 e!1468963)))

(assert (=> b!2292520 (= res!980357 call!136768)))

(declare-fun b!2292521 () Bool)

(declare-fun res!980362 () Bool)

(assert (=> b!2292521 (=> res!980362 e!1468961)))

(assert (=> b!2292521 (= res!980362 (not ((_ is ElementMatch!6715) (regex!4367 r!2363))))))

(assert (=> b!2292521 (= e!1468962 e!1468961)))

(declare-fun bm!136763 () Bool)

(assert (=> bm!136763 (= call!136768 (isEmpty!15543 (list!10688 (charsOf!2755 (_1!16061 (get!8230 lt!850231))))))))

(declare-fun b!2292522 () Bool)

(assert (=> b!2292522 (= e!1468959 (matchR!2972 (derivativeStep!1528 (regex!4367 r!2363) (head!4998 (list!10688 (charsOf!2755 (_1!16061 (get!8230 lt!850231)))))) (tail!3311 (list!10688 (charsOf!2755 (_1!16061 (get!8230 lt!850231)))))))))

(assert (= (and d!678171 c!363557) b!2292512))

(assert (= (and d!678171 (not c!363557)) b!2292522))

(assert (= (and d!678171 c!363558) b!2292514))

(assert (= (and d!678171 (not c!363558)) b!2292519))

(assert (= (and b!2292519 c!363559) b!2292516))

(assert (= (and b!2292519 (not c!363559)) b!2292521))

(assert (= (and b!2292521 (not res!980362)) b!2292515))

(assert (= (and b!2292515 res!980363) b!2292517))

(assert (= (and b!2292517 res!980360) b!2292509))

(assert (= (and b!2292509 res!980361) b!2292513))

(assert (= (and b!2292515 (not res!980356)) b!2292518))

(assert (= (and b!2292518 res!980358) b!2292520))

(assert (= (and b!2292520 (not res!980357)) b!2292510))

(assert (= (and b!2292510 (not res!980359)) b!2292511))

(assert (= (or b!2292514 b!2292517 b!2292520) bm!136763))

(assert (=> b!2292510 m!2719367))

(declare-fun m!2720369 () Bool)

(assert (=> b!2292510 m!2720369))

(assert (=> b!2292510 m!2720369))

(declare-fun m!2720371 () Bool)

(assert (=> b!2292510 m!2720371))

(assert (=> b!2292511 m!2719367))

(declare-fun m!2720373 () Bool)

(assert (=> b!2292511 m!2720373))

(assert (=> b!2292509 m!2719367))

(assert (=> b!2292509 m!2720369))

(assert (=> b!2292509 m!2720369))

(assert (=> b!2292509 m!2720371))

(assert (=> d!678171 m!2719367))

(declare-fun m!2720375 () Bool)

(assert (=> d!678171 m!2720375))

(assert (=> d!678171 m!2718957))

(assert (=> b!2292512 m!2718959))

(assert (=> b!2292522 m!2719367))

(assert (=> b!2292522 m!2720373))

(assert (=> b!2292522 m!2720373))

(declare-fun m!2720377 () Bool)

(assert (=> b!2292522 m!2720377))

(assert (=> b!2292522 m!2719367))

(assert (=> b!2292522 m!2720369))

(assert (=> b!2292522 m!2720377))

(assert (=> b!2292522 m!2720369))

(declare-fun m!2720379 () Bool)

(assert (=> b!2292522 m!2720379))

(assert (=> b!2292513 m!2719367))

(assert (=> b!2292513 m!2720373))

(assert (=> bm!136763 m!2719367))

(assert (=> bm!136763 m!2720375))

(assert (=> b!2291734 d!678171))

(assert (=> b!2291734 d!678167))

(assert (=> b!2291734 d!678169))

(assert (=> b!2291734 d!677885))

(declare-fun d!678179 () Bool)

(assert (=> d!678179 (= (list!10688 (dynLambda!11843 (toChars!6016 (transformation!4367 (rule!6703 (h!32689 tokens!456)))) (value!138279 (h!32689 tokens!456)))) (list!10692 (c!363262 (dynLambda!11843 (toChars!6016 (transformation!4367 (rule!6703 (h!32689 tokens!456)))) (value!138279 (h!32689 tokens!456))))))))

(declare-fun bs!457122 () Bool)

(assert (= bs!457122 d!678179))

(declare-fun m!2720385 () Bool)

(assert (=> bs!457122 m!2720385))

(assert (=> b!2291830 d!678179))

(declare-fun b!2292525 () Bool)

(declare-fun e!1468965 () List!27379)

(assert (=> b!2292525 (= e!1468965 Nil!27285)))

(declare-fun b!2292528 () Bool)

(declare-fun e!1468966 () List!27379)

(assert (=> b!2292528 (= e!1468966 (++!6667 (list!10692 (left!20682 (c!363262 (charsOf!2755 (h!32689 tokens!456))))) (list!10692 (right!21012 (c!363262 (charsOf!2755 (h!32689 tokens!456)))))))))

(declare-fun b!2292527 () Bool)

(assert (=> b!2292527 (= e!1468966 (list!10695 (xs!11824 (c!363262 (charsOf!2755 (h!32689 tokens!456))))))))

(declare-fun b!2292526 () Bool)

(assert (=> b!2292526 (= e!1468965 e!1468966)))

(declare-fun c!363562 () Bool)

(assert (=> b!2292526 (= c!363562 ((_ is Leaf!13051) (c!363262 (charsOf!2755 (h!32689 tokens!456)))))))

(declare-fun d!678183 () Bool)

(declare-fun c!363561 () Bool)

(assert (=> d!678183 (= c!363561 ((_ is Empty!8882) (c!363262 (charsOf!2755 (h!32689 tokens!456)))))))

(assert (=> d!678183 (= (list!10692 (c!363262 (charsOf!2755 (h!32689 tokens!456)))) e!1468965)))

(assert (= (and d!678183 c!363561) b!2292525))

(assert (= (and d!678183 (not c!363561)) b!2292526))

(assert (= (and b!2292526 c!363562) b!2292527))

(assert (= (and b!2292526 (not c!363562)) b!2292528))

(declare-fun m!2720387 () Bool)

(assert (=> b!2292528 m!2720387))

(declare-fun m!2720389 () Bool)

(assert (=> b!2292528 m!2720389))

(assert (=> b!2292528 m!2720387))

(assert (=> b!2292528 m!2720389))

(declare-fun m!2720391 () Bool)

(assert (=> b!2292528 m!2720391))

(declare-fun m!2720393 () Bool)

(assert (=> b!2292527 m!2720393))

(assert (=> d!677815 d!678183))

(declare-fun d!678185 () Bool)

(assert (=> d!678185 (= (_2!16061 lt!850065) lt!850071)))

(assert (=> d!678185 true))

(declare-fun _$63!826 () Unit!40164)

(assert (=> d!678185 (= (choose!13386 lt!850069 (_2!16061 lt!850065) lt!850069 lt!850071 input!1722) _$63!826)))

(assert (=> d!677827 d!678185))

(assert (=> d!677827 d!677831))

(assert (=> b!2291748 d!678015))

(declare-fun d!678189 () Bool)

(assert (=> d!678189 (= (isEmpty!15543 lt!850069) ((_ is Nil!27285) lt!850069))))

(assert (=> d!677657 d!678189))

(assert (=> d!677657 d!677969))

(declare-fun bs!457126 () Bool)

(declare-fun d!678191 () Bool)

(assert (= bs!457126 (and d!678191 d!678003)))

(declare-fun lambda!85778 () Int)

(assert (=> bs!457126 (= (= (toValue!6157 (transformation!4367 (rule!6703 (h!32689 tokens!456)))) (toValue!6157 (transformation!4367 (h!32688 rules!1750)))) (= lambda!85778 lambda!85763))))

(declare-fun bs!457127 () Bool)

(assert (= bs!457127 (and d!678191 d!678067)))

(assert (=> bs!457127 (= (= (toValue!6157 (transformation!4367 (rule!6703 (h!32689 tokens!456)))) (toValue!6157 (transformation!4367 r!2363))) (= lambda!85778 lambda!85768))))

(assert (=> d!678191 true))

(assert (=> d!678191 (< (dynLambda!11849 order!15203 (toValue!6157 (transformation!4367 (rule!6703 (h!32689 tokens!456))))) (dynLambda!11854 order!15211 lambda!85778))))

(assert (=> d!678191 (= (equivClasses!1689 (toChars!6016 (transformation!4367 (rule!6703 (h!32689 tokens!456)))) (toValue!6157 (transformation!4367 (rule!6703 (h!32689 tokens!456))))) (Forall2!708 lambda!85778))))

(declare-fun bs!457128 () Bool)

(assert (= bs!457128 d!678191))

(declare-fun m!2720411 () Bool)

(assert (=> bs!457128 m!2720411))

(assert (=> b!2291596 d!678191))

(declare-fun d!678197 () Bool)

(assert (=> d!678197 (= (isDefined!4234 lt!850118) (not (isEmpty!15545 lt!850118)))))

(declare-fun bs!457129 () Bool)

(assert (= bs!457129 d!678197))

(assert (=> bs!457129 m!2719039))

(assert (=> b!2291470 d!678197))

(declare-fun d!678203 () Bool)

(declare-fun lt!850745 () Int)

(assert (=> d!678203 (>= lt!850745 0)))

(declare-fun e!1468972 () Int)

(assert (=> d!678203 (= lt!850745 e!1468972)))

(declare-fun c!363566 () Bool)

(assert (=> d!678203 (= c!363566 ((_ is Nil!27285) (++!6667 lt!850069 (_2!16061 lt!850065))))))

(assert (=> d!678203 (= (size!21481 (++!6667 lt!850069 (_2!16061 lt!850065))) lt!850745)))

(declare-fun b!2292538 () Bool)

(assert (=> b!2292538 (= e!1468972 0)))

(declare-fun b!2292539 () Bool)

(assert (=> b!2292539 (= e!1468972 (+ 1 (size!21481 (t!204671 (++!6667 lt!850069 (_2!16061 lt!850065))))))))

(assert (= (and d!678203 c!363566) b!2292538))

(assert (= (and d!678203 (not c!363566)) b!2292539))

(declare-fun m!2720413 () Bool)

(assert (=> b!2292539 m!2720413))

(assert (=> b!2291690 d!678203))

(assert (=> b!2291690 d!677813))

(declare-fun b!2292540 () Bool)

(declare-fun res!980372 () Bool)

(declare-fun e!1468973 () Bool)

(assert (=> b!2292540 (=> (not res!980372) (not e!1468973))))

(assert (=> b!2292540 (= res!980372 (isEmpty!15543 (tail!3311 (list!10688 (charsOf!2755 (_1!16061 (get!8230 lt!850118)))))))))

(declare-fun b!2292541 () Bool)

(declare-fun res!980370 () Bool)

(declare-fun e!1468979 () Bool)

(assert (=> b!2292541 (=> res!980370 e!1468979)))

(assert (=> b!2292541 (= res!980370 (not (isEmpty!15543 (tail!3311 (list!10688 (charsOf!2755 (_1!16061 (get!8230 lt!850118))))))))))

(declare-fun b!2292542 () Bool)

(assert (=> b!2292542 (= e!1468979 (not (= (head!4998 (list!10688 (charsOf!2755 (_1!16061 (get!8230 lt!850118))))) (c!363263 (regex!4367 (rule!6703 (_1!16061 (get!8230 lt!850118))))))))))

(declare-fun b!2292543 () Bool)

(declare-fun e!1468975 () Bool)

(assert (=> b!2292543 (= e!1468975 (nullable!1868 (regex!4367 (rule!6703 (_1!16061 (get!8230 lt!850118))))))))

(declare-fun b!2292544 () Bool)

(assert (=> b!2292544 (= e!1468973 (= (head!4998 (list!10688 (charsOf!2755 (_1!16061 (get!8230 lt!850118))))) (c!363263 (regex!4367 (rule!6703 (_1!16061 (get!8230 lt!850118)))))))))

(declare-fun d!678205 () Bool)

(declare-fun e!1468974 () Bool)

(assert (=> d!678205 e!1468974))

(declare-fun c!363568 () Bool)

(assert (=> d!678205 (= c!363568 ((_ is EmptyExpr!6715) (regex!4367 (rule!6703 (_1!16061 (get!8230 lt!850118))))))))

(declare-fun lt!850746 () Bool)

(assert (=> d!678205 (= lt!850746 e!1468975)))

(declare-fun c!363567 () Bool)

(assert (=> d!678205 (= c!363567 (isEmpty!15543 (list!10688 (charsOf!2755 (_1!16061 (get!8230 lt!850118))))))))

(assert (=> d!678205 (validRegex!2530 (regex!4367 (rule!6703 (_1!16061 (get!8230 lt!850118)))))))

(assert (=> d!678205 (= (matchR!2972 (regex!4367 (rule!6703 (_1!16061 (get!8230 lt!850118)))) (list!10688 (charsOf!2755 (_1!16061 (get!8230 lt!850118))))) lt!850746)))

(declare-fun b!2292545 () Bool)

(declare-fun call!136769 () Bool)

(assert (=> b!2292545 (= e!1468974 (= lt!850746 call!136769))))

(declare-fun b!2292546 () Bool)

(declare-fun res!980367 () Bool)

(declare-fun e!1468977 () Bool)

(assert (=> b!2292546 (=> res!980367 e!1468977)))

(assert (=> b!2292546 (= res!980367 e!1468973)))

(declare-fun res!980374 () Bool)

(assert (=> b!2292546 (=> (not res!980374) (not e!1468973))))

(assert (=> b!2292546 (= res!980374 lt!850746)))

(declare-fun b!2292547 () Bool)

(declare-fun e!1468978 () Bool)

(assert (=> b!2292547 (= e!1468978 (not lt!850746))))

(declare-fun b!2292548 () Bool)

(declare-fun res!980371 () Bool)

(assert (=> b!2292548 (=> (not res!980371) (not e!1468973))))

(assert (=> b!2292548 (= res!980371 (not call!136769))))

(declare-fun b!2292549 () Bool)

(declare-fun e!1468976 () Bool)

(assert (=> b!2292549 (= e!1468977 e!1468976)))

(declare-fun res!980369 () Bool)

(assert (=> b!2292549 (=> (not res!980369) (not e!1468976))))

(assert (=> b!2292549 (= res!980369 (not lt!850746))))

(declare-fun b!2292550 () Bool)

(assert (=> b!2292550 (= e!1468974 e!1468978)))

(declare-fun c!363569 () Bool)

(assert (=> b!2292550 (= c!363569 ((_ is EmptyLang!6715) (regex!4367 (rule!6703 (_1!16061 (get!8230 lt!850118))))))))

(declare-fun b!2292551 () Bool)

(assert (=> b!2292551 (= e!1468976 e!1468979)))

(declare-fun res!980368 () Bool)

(assert (=> b!2292551 (=> res!980368 e!1468979)))

(assert (=> b!2292551 (= res!980368 call!136769)))

(declare-fun b!2292552 () Bool)

(declare-fun res!980373 () Bool)

(assert (=> b!2292552 (=> res!980373 e!1468977)))

(assert (=> b!2292552 (= res!980373 (not ((_ is ElementMatch!6715) (regex!4367 (rule!6703 (_1!16061 (get!8230 lt!850118)))))))))

(assert (=> b!2292552 (= e!1468978 e!1468977)))

(declare-fun bm!136764 () Bool)

(assert (=> bm!136764 (= call!136769 (isEmpty!15543 (list!10688 (charsOf!2755 (_1!16061 (get!8230 lt!850118))))))))

(declare-fun b!2292553 () Bool)

(assert (=> b!2292553 (= e!1468975 (matchR!2972 (derivativeStep!1528 (regex!4367 (rule!6703 (_1!16061 (get!8230 lt!850118)))) (head!4998 (list!10688 (charsOf!2755 (_1!16061 (get!8230 lt!850118)))))) (tail!3311 (list!10688 (charsOf!2755 (_1!16061 (get!8230 lt!850118)))))))))

(assert (= (and d!678205 c!363567) b!2292543))

(assert (= (and d!678205 (not c!363567)) b!2292553))

(assert (= (and d!678205 c!363568) b!2292545))

(assert (= (and d!678205 (not c!363568)) b!2292550))

(assert (= (and b!2292550 c!363569) b!2292547))

(assert (= (and b!2292550 (not c!363569)) b!2292552))

(assert (= (and b!2292552 (not res!980373)) b!2292546))

(assert (= (and b!2292546 res!980374) b!2292548))

(assert (= (and b!2292548 res!980371) b!2292540))

(assert (= (and b!2292540 res!980372) b!2292544))

(assert (= (and b!2292546 (not res!980367)) b!2292549))

(assert (= (and b!2292549 res!980369) b!2292551))

(assert (= (and b!2292551 (not res!980368)) b!2292541))

(assert (= (and b!2292541 (not res!980370)) b!2292542))

(assert (= (or b!2292545 b!2292548 b!2292551) bm!136764))

(assert (=> b!2292541 m!2719037))

(declare-fun m!2720415 () Bool)

(assert (=> b!2292541 m!2720415))

(assert (=> b!2292541 m!2720415))

(declare-fun m!2720417 () Bool)

(assert (=> b!2292541 m!2720417))

(assert (=> b!2292542 m!2719037))

(declare-fun m!2720419 () Bool)

(assert (=> b!2292542 m!2720419))

(assert (=> b!2292540 m!2719037))

(assert (=> b!2292540 m!2720415))

(assert (=> b!2292540 m!2720415))

(assert (=> b!2292540 m!2720417))

(assert (=> d!678205 m!2719037))

(declare-fun m!2720421 () Bool)

(assert (=> d!678205 m!2720421))

(declare-fun m!2720423 () Bool)

(assert (=> d!678205 m!2720423))

(declare-fun m!2720425 () Bool)

(assert (=> b!2292543 m!2720425))

(assert (=> b!2292553 m!2719037))

(assert (=> b!2292553 m!2720419))

(assert (=> b!2292553 m!2720419))

(declare-fun m!2720427 () Bool)

(assert (=> b!2292553 m!2720427))

(assert (=> b!2292553 m!2719037))

(assert (=> b!2292553 m!2720415))

(assert (=> b!2292553 m!2720427))

(assert (=> b!2292553 m!2720415))

(declare-fun m!2720429 () Bool)

(assert (=> b!2292553 m!2720429))

(assert (=> b!2292544 m!2719037))

(assert (=> b!2292544 m!2720419))

(assert (=> bm!136764 m!2719037))

(assert (=> bm!136764 m!2720421))

(assert (=> b!2291467 d!678205))

(assert (=> b!2291467 d!678017))

(declare-fun d!678207 () Bool)

(assert (=> d!678207 (= (list!10688 (charsOf!2755 (_1!16061 (get!8230 lt!850118)))) (list!10692 (c!363262 (charsOf!2755 (_1!16061 (get!8230 lt!850118))))))))

(declare-fun bs!457130 () Bool)

(assert (= bs!457130 d!678207))

(declare-fun m!2720431 () Bool)

(assert (=> bs!457130 m!2720431))

(assert (=> b!2291467 d!678207))

(declare-fun d!678209 () Bool)

(declare-fun lt!850747 () BalanceConc!17492)

(assert (=> d!678209 (= (list!10688 lt!850747) (originalCharacters!5137 (_1!16061 (get!8230 lt!850118))))))

(assert (=> d!678209 (= lt!850747 (dynLambda!11843 (toChars!6016 (transformation!4367 (rule!6703 (_1!16061 (get!8230 lt!850118))))) (value!138279 (_1!16061 (get!8230 lt!850118)))))))

(assert (=> d!678209 (= (charsOf!2755 (_1!16061 (get!8230 lt!850118))) lt!850747)))

(declare-fun b_lambda!73051 () Bool)

(assert (=> (not b_lambda!73051) (not d!678209)))

(declare-fun tb!136735 () Bool)

(declare-fun t!204873 () Bool)

(assert (=> (and b!2291260 (= (toChars!6016 (transformation!4367 (rule!6703 (h!32689 tokens!456)))) (toChars!6016 (transformation!4367 (rule!6703 (_1!16061 (get!8230 lt!850118)))))) t!204873) tb!136735))

(declare-fun b!2292554 () Bool)

(declare-fun e!1468980 () Bool)

(declare-fun tp!726642 () Bool)

(assert (=> b!2292554 (= e!1468980 (and (inv!36889 (c!363262 (dynLambda!11843 (toChars!6016 (transformation!4367 (rule!6703 (_1!16061 (get!8230 lt!850118))))) (value!138279 (_1!16061 (get!8230 lt!850118)))))) tp!726642))))

(declare-fun result!166718 () Bool)

(assert (=> tb!136735 (= result!166718 (and (inv!36890 (dynLambda!11843 (toChars!6016 (transformation!4367 (rule!6703 (_1!16061 (get!8230 lt!850118))))) (value!138279 (_1!16061 (get!8230 lt!850118))))) e!1468980))))

(assert (= tb!136735 b!2292554))

(declare-fun m!2720433 () Bool)

(assert (=> b!2292554 m!2720433))

(declare-fun m!2720435 () Bool)

(assert (=> tb!136735 m!2720435))

(assert (=> d!678209 t!204873))

(declare-fun b_and!182097 () Bool)

(assert (= b_and!182085 (and (=> t!204873 result!166718) b_and!182097)))

(declare-fun tb!136737 () Bool)

(declare-fun t!204875 () Bool)

(assert (=> (and b!2291860 (= (toChars!6016 (transformation!4367 (h!32688 (t!204673 rules!1750)))) (toChars!6016 (transformation!4367 (rule!6703 (_1!16061 (get!8230 lt!850118)))))) t!204875) tb!136737))

(declare-fun result!166720 () Bool)

(assert (= result!166720 result!166718))

(assert (=> d!678209 t!204875))

(declare-fun b_and!182099 () Bool)

(assert (= b_and!182089 (and (=> t!204875 result!166720) b_and!182099)))

(declare-fun tb!136739 () Bool)

(declare-fun t!204877 () Bool)

(assert (=> (and b!2291253 (= (toChars!6016 (transformation!4367 r!2363)) (toChars!6016 (transformation!4367 (rule!6703 (_1!16061 (get!8230 lt!850118)))))) t!204877) tb!136739))

(declare-fun result!166722 () Bool)

(assert (= result!166722 result!166718))

(assert (=> d!678209 t!204877))

(declare-fun b_and!182101 () Bool)

(assert (= b_and!182087 (and (=> t!204877 result!166722) b_and!182101)))

(declare-fun t!204879 () Bool)

(declare-fun tb!136741 () Bool)

(assert (=> (and b!2291243 (= (toChars!6016 (transformation!4367 otherR!12)) (toChars!6016 (transformation!4367 (rule!6703 (_1!16061 (get!8230 lt!850118)))))) t!204879) tb!136741))

(declare-fun result!166724 () Bool)

(assert (= result!166724 result!166718))

(assert (=> d!678209 t!204879))

(declare-fun b_and!182103 () Bool)

(assert (= b_and!182095 (and (=> t!204879 result!166724) b_and!182103)))

(declare-fun tb!136743 () Bool)

(declare-fun t!204881 () Bool)

(assert (=> (and b!2291255 (= (toChars!6016 (transformation!4367 (h!32688 rules!1750))) (toChars!6016 (transformation!4367 (rule!6703 (_1!16061 (get!8230 lt!850118)))))) t!204881) tb!136743))

(declare-fun result!166726 () Bool)

(assert (= result!166726 result!166718))

(assert (=> d!678209 t!204881))

(declare-fun b_and!182105 () Bool)

(assert (= b_and!182093 (and (=> t!204881 result!166726) b_and!182105)))

(declare-fun tb!136745 () Bool)

(declare-fun t!204883 () Bool)

(assert (=> (and b!2291887 (= (toChars!6016 (transformation!4367 (rule!6703 (h!32689 (t!204674 tokens!456))))) (toChars!6016 (transformation!4367 (rule!6703 (_1!16061 (get!8230 lt!850118)))))) t!204883) tb!136745))

(declare-fun result!166728 () Bool)

(assert (= result!166728 result!166718))

(assert (=> d!678209 t!204883))

(declare-fun b_and!182107 () Bool)

(assert (= b_and!182091 (and (=> t!204883 result!166728) b_and!182107)))

(declare-fun m!2720437 () Bool)

(assert (=> d!678209 m!2720437))

(declare-fun m!2720439 () Bool)

(assert (=> d!678209 m!2720439))

(assert (=> b!2291467 d!678209))

(declare-fun d!678211 () Bool)

(assert (=> d!678211 (= (isEmpty!15543 (tail!3311 lt!850069)) ((_ is Nil!27285) (tail!3311 lt!850069)))))

(assert (=> b!2291366 d!678211))

(assert (=> b!2291366 d!678161))

(assert (=> b!2291503 d!677997))

(assert (=> b!2291713 d!677949))

(assert (=> b!2291713 d!677813))

(declare-fun bs!457131 () Bool)

(declare-fun d!678213 () Bool)

(assert (= bs!457131 (and d!678213 d!678003)))

(declare-fun lambda!85779 () Int)

(assert (=> bs!457131 (= (= (toValue!6157 (transformation!4367 otherR!12)) (toValue!6157 (transformation!4367 (h!32688 rules!1750)))) (= lambda!85779 lambda!85763))))

(declare-fun bs!457132 () Bool)

(assert (= bs!457132 (and d!678213 d!678067)))

(assert (=> bs!457132 (= (= (toValue!6157 (transformation!4367 otherR!12)) (toValue!6157 (transformation!4367 r!2363))) (= lambda!85779 lambda!85768))))

(declare-fun bs!457133 () Bool)

(assert (= bs!457133 (and d!678213 d!678191)))

(assert (=> bs!457133 (= (= (toValue!6157 (transformation!4367 otherR!12)) (toValue!6157 (transformation!4367 (rule!6703 (h!32689 tokens!456))))) (= lambda!85779 lambda!85778))))

(assert (=> d!678213 true))

(assert (=> d!678213 (< (dynLambda!11849 order!15203 (toValue!6157 (transformation!4367 otherR!12))) (dynLambda!11854 order!15211 lambda!85779))))

(assert (=> d!678213 (= (equivClasses!1689 (toChars!6016 (transformation!4367 otherR!12)) (toValue!6157 (transformation!4367 otherR!12))) (Forall2!708 lambda!85779))))

(declare-fun bs!457134 () Bool)

(assert (= bs!457134 d!678213))

(declare-fun m!2720441 () Bool)

(assert (=> bs!457134 m!2720441))

(assert (=> b!2291472 d!678213))

(declare-fun d!678215 () Bool)

(declare-fun lt!850748 () Int)

(assert (=> d!678215 (>= lt!850748 0)))

(declare-fun e!1468981 () Int)

(assert (=> d!678215 (= lt!850748 e!1468981)))

(declare-fun c!363570 () Bool)

(assert (=> d!678215 (= c!363570 ((_ is Nil!27285) (_2!16061 (get!8230 lt!850231))))))

(assert (=> d!678215 (= (size!21481 (_2!16061 (get!8230 lt!850231))) lt!850748)))

(declare-fun b!2292555 () Bool)

(assert (=> b!2292555 (= e!1468981 0)))

(declare-fun b!2292556 () Bool)

(assert (=> b!2292556 (= e!1468981 (+ 1 (size!21481 (t!204671 (_2!16061 (get!8230 lt!850231))))))))

(assert (= (and d!678215 c!363570) b!2292555))

(assert (= (and d!678215 (not c!363570)) b!2292556))

(declare-fun m!2720443 () Bool)

(assert (=> b!2292556 m!2720443))

(assert (=> b!2291742 d!678215))

(assert (=> b!2291742 d!677885))

(assert (=> b!2291742 d!677949))

(declare-fun d!678217 () Bool)

(declare-fun e!1468983 () Bool)

(assert (=> d!678217 e!1468983))

(declare-fun res!980376 () Bool)

(assert (=> d!678217 (=> (not res!980376) (not e!1468983))))

(declare-fun lt!850749 () List!27379)

(assert (=> d!678217 (= res!980376 (= (content!3667 lt!850749) ((_ map or) (content!3667 (list!10688 (charsOf!2755 (_1!16061 (get!8230 lt!850118))))) (content!3667 (_2!16061 (get!8230 lt!850118))))))))

(declare-fun e!1468982 () List!27379)

(assert (=> d!678217 (= lt!850749 e!1468982)))

(declare-fun c!363571 () Bool)

(assert (=> d!678217 (= c!363571 ((_ is Nil!27285) (list!10688 (charsOf!2755 (_1!16061 (get!8230 lt!850118))))))))

(assert (=> d!678217 (= (++!6667 (list!10688 (charsOf!2755 (_1!16061 (get!8230 lt!850118)))) (_2!16061 (get!8230 lt!850118))) lt!850749)))

(declare-fun b!2292559 () Bool)

(declare-fun res!980375 () Bool)

(assert (=> b!2292559 (=> (not res!980375) (not e!1468983))))

(assert (=> b!2292559 (= res!980375 (= (size!21481 lt!850749) (+ (size!21481 (list!10688 (charsOf!2755 (_1!16061 (get!8230 lt!850118))))) (size!21481 (_2!16061 (get!8230 lt!850118))))))))

(declare-fun b!2292558 () Bool)

(assert (=> b!2292558 (= e!1468982 (Cons!27285 (h!32686 (list!10688 (charsOf!2755 (_1!16061 (get!8230 lt!850118))))) (++!6667 (t!204671 (list!10688 (charsOf!2755 (_1!16061 (get!8230 lt!850118))))) (_2!16061 (get!8230 lt!850118)))))))

(declare-fun b!2292560 () Bool)

(assert (=> b!2292560 (= e!1468983 (or (not (= (_2!16061 (get!8230 lt!850118)) Nil!27285)) (= lt!850749 (list!10688 (charsOf!2755 (_1!16061 (get!8230 lt!850118)))))))))

(declare-fun b!2292557 () Bool)

(assert (=> b!2292557 (= e!1468982 (_2!16061 (get!8230 lt!850118)))))

(assert (= (and d!678217 c!363571) b!2292557))

(assert (= (and d!678217 (not c!363571)) b!2292558))

(assert (= (and d!678217 res!980376) b!2292559))

(assert (= (and b!2292559 res!980375) b!2292560))

(declare-fun m!2720445 () Bool)

(assert (=> d!678217 m!2720445))

(assert (=> d!678217 m!2719037))

(declare-fun m!2720447 () Bool)

(assert (=> d!678217 m!2720447))

(declare-fun m!2720449 () Bool)

(assert (=> d!678217 m!2720449))

(declare-fun m!2720451 () Bool)

(assert (=> b!2292559 m!2720451))

(assert (=> b!2292559 m!2719037))

(declare-fun m!2720453 () Bool)

(assert (=> b!2292559 m!2720453))

(assert (=> b!2292559 m!2719043))

(declare-fun m!2720455 () Bool)

(assert (=> b!2292558 m!2720455))

(assert (=> b!2291463 d!678217))

(assert (=> b!2291463 d!678207))

(assert (=> b!2291463 d!678209))

(assert (=> b!2291463 d!678017))

(declare-fun d!678219 () Bool)

(declare-fun res!980377 () Bool)

(declare-fun e!1468984 () Bool)

(assert (=> d!678219 (=> (not res!980377) (not e!1468984))))

(assert (=> d!678219 (= res!980377 (not (isEmpty!15543 (originalCharacters!5137 (h!32689 (t!204674 tokens!456))))))))

(assert (=> d!678219 (= (inv!36886 (h!32689 (t!204674 tokens!456))) e!1468984)))

(declare-fun b!2292561 () Bool)

(declare-fun res!980378 () Bool)

(assert (=> b!2292561 (=> (not res!980378) (not e!1468984))))

(assert (=> b!2292561 (= res!980378 (= (originalCharacters!5137 (h!32689 (t!204674 tokens!456))) (list!10688 (dynLambda!11843 (toChars!6016 (transformation!4367 (rule!6703 (h!32689 (t!204674 tokens!456))))) (value!138279 (h!32689 (t!204674 tokens!456)))))))))

(declare-fun b!2292562 () Bool)

(assert (=> b!2292562 (= e!1468984 (= (size!21480 (h!32689 (t!204674 tokens!456))) (size!21481 (originalCharacters!5137 (h!32689 (t!204674 tokens!456))))))))

(assert (= (and d!678219 res!980377) b!2292561))

(assert (= (and b!2292561 res!980378) b!2292562))

(declare-fun b_lambda!73053 () Bool)

(assert (=> (not b_lambda!73053) (not b!2292561)))

(declare-fun t!204885 () Bool)

(declare-fun tb!136747 () Bool)

(assert (=> (and b!2291253 (= (toChars!6016 (transformation!4367 r!2363)) (toChars!6016 (transformation!4367 (rule!6703 (h!32689 (t!204674 tokens!456)))))) t!204885) tb!136747))

(declare-fun b!2292563 () Bool)

(declare-fun e!1468985 () Bool)

(declare-fun tp!726643 () Bool)

(assert (=> b!2292563 (= e!1468985 (and (inv!36889 (c!363262 (dynLambda!11843 (toChars!6016 (transformation!4367 (rule!6703 (h!32689 (t!204674 tokens!456))))) (value!138279 (h!32689 (t!204674 tokens!456)))))) tp!726643))))

(declare-fun result!166730 () Bool)

(assert (=> tb!136747 (= result!166730 (and (inv!36890 (dynLambda!11843 (toChars!6016 (transformation!4367 (rule!6703 (h!32689 (t!204674 tokens!456))))) (value!138279 (h!32689 (t!204674 tokens!456))))) e!1468985))))

(assert (= tb!136747 b!2292563))

(declare-fun m!2720457 () Bool)

(assert (=> b!2292563 m!2720457))

(declare-fun m!2720459 () Bool)

(assert (=> tb!136747 m!2720459))

(assert (=> b!2292561 t!204885))

(declare-fun b_and!182109 () Bool)

(assert (= b_and!182101 (and (=> t!204885 result!166730) b_and!182109)))

(declare-fun tb!136749 () Bool)

(declare-fun t!204887 () Bool)

(assert (=> (and b!2291255 (= (toChars!6016 (transformation!4367 (h!32688 rules!1750))) (toChars!6016 (transformation!4367 (rule!6703 (h!32689 (t!204674 tokens!456)))))) t!204887) tb!136749))

(declare-fun result!166732 () Bool)

(assert (= result!166732 result!166730))

(assert (=> b!2292561 t!204887))

(declare-fun b_and!182111 () Bool)

(assert (= b_and!182105 (and (=> t!204887 result!166732) b_and!182111)))

(declare-fun t!204889 () Bool)

(declare-fun tb!136751 () Bool)

(assert (=> (and b!2291887 (= (toChars!6016 (transformation!4367 (rule!6703 (h!32689 (t!204674 tokens!456))))) (toChars!6016 (transformation!4367 (rule!6703 (h!32689 (t!204674 tokens!456)))))) t!204889) tb!136751))

(declare-fun result!166734 () Bool)

(assert (= result!166734 result!166730))

(assert (=> b!2292561 t!204889))

(declare-fun b_and!182113 () Bool)

(assert (= b_and!182107 (and (=> t!204889 result!166734) b_and!182113)))

(declare-fun t!204891 () Bool)

(declare-fun tb!136753 () Bool)

(assert (=> (and b!2291260 (= (toChars!6016 (transformation!4367 (rule!6703 (h!32689 tokens!456)))) (toChars!6016 (transformation!4367 (rule!6703 (h!32689 (t!204674 tokens!456)))))) t!204891) tb!136753))

(declare-fun result!166736 () Bool)

(assert (= result!166736 result!166730))

(assert (=> b!2292561 t!204891))

(declare-fun b_and!182115 () Bool)

(assert (= b_and!182097 (and (=> t!204891 result!166736) b_and!182115)))

(declare-fun t!204893 () Bool)

(declare-fun tb!136755 () Bool)

(assert (=> (and b!2291860 (= (toChars!6016 (transformation!4367 (h!32688 (t!204673 rules!1750)))) (toChars!6016 (transformation!4367 (rule!6703 (h!32689 (t!204674 tokens!456)))))) t!204893) tb!136755))

(declare-fun result!166738 () Bool)

(assert (= result!166738 result!166730))

(assert (=> b!2292561 t!204893))

(declare-fun b_and!182117 () Bool)

(assert (= b_and!182099 (and (=> t!204893 result!166738) b_and!182117)))

(declare-fun t!204895 () Bool)

(declare-fun tb!136757 () Bool)

(assert (=> (and b!2291243 (= (toChars!6016 (transformation!4367 otherR!12)) (toChars!6016 (transformation!4367 (rule!6703 (h!32689 (t!204674 tokens!456)))))) t!204895) tb!136757))

(declare-fun result!166740 () Bool)

(assert (= result!166740 result!166730))

(assert (=> b!2292561 t!204895))

(declare-fun b_and!182119 () Bool)

(assert (= b_and!182103 (and (=> t!204895 result!166740) b_and!182119)))

(declare-fun m!2720461 () Bool)

(assert (=> d!678219 m!2720461))

(declare-fun m!2720463 () Bool)

(assert (=> b!2292561 m!2720463))

(assert (=> b!2292561 m!2720463))

(declare-fun m!2720465 () Bool)

(assert (=> b!2292561 m!2720465))

(declare-fun m!2720467 () Bool)

(assert (=> b!2292562 m!2720467))

(assert (=> b!2291884 d!678219))

(declare-fun d!678221 () Bool)

(assert (=> d!678221 (= (isEmpty!15545 lt!850118) (not ((_ is Some!5356) lt!850118)))))

(assert (=> d!677709 d!678221))

(assert (=> d!677709 d!677845))

(assert (=> d!677709 d!677847))

(declare-fun d!678223 () Bool)

(assert (=> d!678223 true))

(declare-fun lt!850776 () Bool)

(declare-fun lambda!85782 () Int)

(declare-fun forall!5494 (List!27381 Int) Bool)

(assert (=> d!678223 (= lt!850776 (forall!5494 rules!1750 lambda!85782))))

(declare-fun e!1468991 () Bool)

(assert (=> d!678223 (= lt!850776 e!1468991)))

(declare-fun res!980383 () Bool)

(assert (=> d!678223 (=> res!980383 e!1468991)))

(assert (=> d!678223 (= res!980383 (not ((_ is Cons!27287) rules!1750)))))

(assert (=> d!678223 (= (rulesValidInductive!1539 thiss!16613 rules!1750) lt!850776)))

(declare-fun b!2292568 () Bool)

(declare-fun e!1468990 () Bool)

(assert (=> b!2292568 (= e!1468991 e!1468990)))

(declare-fun res!980384 () Bool)

(assert (=> b!2292568 (=> (not res!980384) (not e!1468990))))

(assert (=> b!2292568 (= res!980384 (ruleValid!1457 thiss!16613 (h!32688 rules!1750)))))

(declare-fun b!2292569 () Bool)

(assert (=> b!2292569 (= e!1468990 (rulesValidInductive!1539 thiss!16613 (t!204673 rules!1750)))))

(assert (= (and d!678223 (not res!980383)) b!2292568))

(assert (= (and b!2292568 res!980384) b!2292569))

(declare-fun m!2720485 () Bool)

(assert (=> d!678223 m!2720485))

(declare-fun m!2720487 () Bool)

(assert (=> b!2292568 m!2720487))

(assert (=> b!2292569 m!2719945))

(assert (=> d!677709 d!678223))

(declare-fun b!2292572 () Bool)

(declare-fun e!1468993 () Bool)

(declare-fun e!1468992 () Bool)

(assert (=> b!2292572 (= e!1468993 e!1468992)))

(declare-fun c!363572 () Bool)

(assert (=> b!2292572 (= c!363572 ((_ is IntegerValue!13588) (dynLambda!11848 (toValue!6157 (transformation!4367 r!2363)) lt!850059)))))

(declare-fun d!678227 () Bool)

(declare-fun c!363573 () Bool)

(assert (=> d!678227 (= c!363573 ((_ is IntegerValue!13587) (dynLambda!11848 (toValue!6157 (transformation!4367 r!2363)) lt!850059)))))

(assert (=> d!678227 (= (inv!21 (dynLambda!11848 (toValue!6157 (transformation!4367 r!2363)) lt!850059)) e!1468993)))

(declare-fun b!2292573 () Bool)

(assert (=> b!2292573 (= e!1468992 (inv!17 (dynLambda!11848 (toValue!6157 (transformation!4367 r!2363)) lt!850059)))))

(declare-fun b!2292574 () Bool)

(declare-fun res!980385 () Bool)

(declare-fun e!1468994 () Bool)

(assert (=> b!2292574 (=> res!980385 e!1468994)))

(assert (=> b!2292574 (= res!980385 (not ((_ is IntegerValue!13589) (dynLambda!11848 (toValue!6157 (transformation!4367 r!2363)) lt!850059))))))

(assert (=> b!2292574 (= e!1468992 e!1468994)))

(declare-fun b!2292575 () Bool)

(assert (=> b!2292575 (= e!1468994 (inv!15 (dynLambda!11848 (toValue!6157 (transformation!4367 r!2363)) lt!850059)))))

(declare-fun b!2292576 () Bool)

(assert (=> b!2292576 (= e!1468993 (inv!16 (dynLambda!11848 (toValue!6157 (transformation!4367 r!2363)) lt!850059)))))

(assert (= (and d!678227 c!363573) b!2292576))

(assert (= (and d!678227 (not c!363573)) b!2292572))

(assert (= (and b!2292572 c!363572) b!2292573))

(assert (= (and b!2292572 (not c!363572)) b!2292574))

(assert (= (and b!2292574 (not res!980385)) b!2292575))

(declare-fun m!2720489 () Bool)

(assert (=> b!2292573 m!2720489))

(declare-fun m!2720491 () Bool)

(assert (=> b!2292575 m!2720491))

(declare-fun m!2720493 () Bool)

(assert (=> b!2292576 m!2720493))

(assert (=> tb!136583 d!678227))

(declare-fun d!678229 () Bool)

(assert (=> d!678229 (= (isEmpty!15543 (_1!16065 (findLongestMatchInner!723 (regex!4367 r!2363) Nil!27285 (size!21481 Nil!27285) input!1722 input!1722 (size!21481 input!1722)))) ((_ is Nil!27285) (_1!16065 (findLongestMatchInner!723 (regex!4367 r!2363) Nil!27285 (size!21481 Nil!27285) input!1722 input!1722 (size!21481 input!1722)))))))

(assert (=> b!2291741 d!678229))

(declare-fun d!678231 () Bool)

(declare-fun lt!850777 () Int)

(assert (=> d!678231 (= lt!850777 (size!21481 (list!10688 (seqFromList!3071 (_1!16065 lt!850228)))))))

(assert (=> d!678231 (= lt!850777 (size!21484 (c!363262 (seqFromList!3071 (_1!16065 lt!850228)))))))

(assert (=> d!678231 (= (size!21482 (seqFromList!3071 (_1!16065 lt!850228))) lt!850777)))

(declare-fun bs!457136 () Bool)

(assert (= bs!457136 d!678231))

(assert (=> bs!457136 m!2719375))

(declare-fun m!2720495 () Bool)

(assert (=> bs!457136 m!2720495))

(assert (=> bs!457136 m!2720495))

(declare-fun m!2720497 () Bool)

(assert (=> bs!457136 m!2720497))

(declare-fun m!2720499 () Bool)

(assert (=> bs!457136 m!2720499))

(assert (=> b!2291741 d!678231))

(declare-fun d!678233 () Bool)

(assert (=> d!678233 (= (seqFromList!3071 (_1!16065 lt!850228)) (fromListB!1380 (_1!16065 lt!850228)))))

(declare-fun bs!457137 () Bool)

(assert (= bs!457137 d!678233))

(declare-fun m!2720501 () Bool)

(assert (=> bs!457137 m!2720501))

(assert (=> b!2291741 d!678233))

(declare-fun bs!457138 () Bool)

(declare-fun d!678235 () Bool)

(assert (= bs!457138 (and d!678235 d!677849)))

(declare-fun lambda!85783 () Int)

(assert (=> bs!457138 (= lambda!85783 lambda!85757)))

(declare-fun bs!457139 () Bool)

(assert (= bs!457139 (and d!678235 d!678023)))

(assert (=> bs!457139 (= (and (= (toChars!6016 (transformation!4367 r!2363)) (toChars!6016 (transformation!4367 (rule!6703 (h!32689 tokens!456))))) (= (toValue!6157 (transformation!4367 r!2363)) (toValue!6157 (transformation!4367 (rule!6703 (h!32689 tokens!456)))))) (= lambda!85783 lambda!85766))))

(declare-fun bs!457140 () Bool)

(assert (= bs!457140 (and d!678235 d!678035)))

(assert (=> bs!457140 (= lambda!85783 lambda!85767)))

(declare-fun bs!457141 () Bool)

(assert (= bs!457141 (and d!678235 d!678099)))

(assert (=> bs!457141 (= (and (= (toChars!6016 (transformation!4367 r!2363)) (toChars!6016 (transformation!4367 otherR!12))) (= (toValue!6157 (transformation!4367 r!2363)) (toValue!6157 (transformation!4367 otherR!12)))) (= lambda!85783 lambda!85769))))

(declare-fun b!2292585 () Bool)

(declare-fun e!1468999 () Bool)

(assert (=> b!2292585 (= e!1468999 true)))

(assert (=> d!678235 e!1468999))

(assert (= d!678235 b!2292585))

(assert (=> b!2292585 (< (dynLambda!11849 order!15203 (toValue!6157 (transformation!4367 r!2363))) (dynLambda!11850 order!15205 lambda!85783))))

(assert (=> b!2292585 (< (dynLambda!11851 order!15207 (toChars!6016 (transformation!4367 r!2363))) (dynLambda!11850 order!15205 lambda!85783))))

(assert (=> d!678235 (= (list!10688 (dynLambda!11843 (toChars!6016 (transformation!4367 r!2363)) (dynLambda!11848 (toValue!6157 (transformation!4367 r!2363)) (seqFromList!3071 (_1!16065 lt!850228))))) (list!10688 (seqFromList!3071 (_1!16065 lt!850228))))))

(declare-fun lt!850778 () Unit!40164)

(assert (=> d!678235 (= lt!850778 (ForallOf!497 lambda!85783 (seqFromList!3071 (_1!16065 lt!850228))))))

(assert (=> d!678235 (= (lemmaSemiInverse!1066 (transformation!4367 r!2363) (seqFromList!3071 (_1!16065 lt!850228))) lt!850778)))

(declare-fun b_lambda!73055 () Bool)

(assert (=> (not b_lambda!73055) (not d!678235)))

(declare-fun t!204898 () Bool)

(declare-fun tb!136759 () Bool)

(assert (=> (and b!2291860 (= (toChars!6016 (transformation!4367 (h!32688 (t!204673 rules!1750)))) (toChars!6016 (transformation!4367 r!2363))) t!204898) tb!136759))

(declare-fun e!1469002 () Bool)

(declare-fun tp!726644 () Bool)

(declare-fun b!2292590 () Bool)

(assert (=> b!2292590 (= e!1469002 (and (inv!36889 (c!363262 (dynLambda!11843 (toChars!6016 (transformation!4367 r!2363)) (dynLambda!11848 (toValue!6157 (transformation!4367 r!2363)) (seqFromList!3071 (_1!16065 lt!850228)))))) tp!726644))))

(declare-fun result!166742 () Bool)

(assert (=> tb!136759 (= result!166742 (and (inv!36890 (dynLambda!11843 (toChars!6016 (transformation!4367 r!2363)) (dynLambda!11848 (toValue!6157 (transformation!4367 r!2363)) (seqFromList!3071 (_1!16065 lt!850228))))) e!1469002))))

(assert (= tb!136759 b!2292590))

(declare-fun m!2720511 () Bool)

(assert (=> b!2292590 m!2720511))

(declare-fun m!2720513 () Bool)

(assert (=> tb!136759 m!2720513))

(assert (=> d!678235 t!204898))

(declare-fun b_and!182121 () Bool)

(assert (= b_and!182117 (and (=> t!204898 result!166742) b_and!182121)))

(declare-fun t!204900 () Bool)

(declare-fun tb!136761 () Bool)

(assert (=> (and b!2291887 (= (toChars!6016 (transformation!4367 (rule!6703 (h!32689 (t!204674 tokens!456))))) (toChars!6016 (transformation!4367 r!2363))) t!204900) tb!136761))

(declare-fun result!166744 () Bool)

(assert (= result!166744 result!166742))

(assert (=> d!678235 t!204900))

(declare-fun b_and!182123 () Bool)

(assert (= b_and!182113 (and (=> t!204900 result!166744) b_and!182123)))

(declare-fun t!204902 () Bool)

(declare-fun tb!136763 () Bool)

(assert (=> (and b!2291260 (= (toChars!6016 (transformation!4367 (rule!6703 (h!32689 tokens!456)))) (toChars!6016 (transformation!4367 r!2363))) t!204902) tb!136763))

(declare-fun result!166746 () Bool)

(assert (= result!166746 result!166742))

(assert (=> d!678235 t!204902))

(declare-fun b_and!182125 () Bool)

(assert (= b_and!182115 (and (=> t!204902 result!166746) b_and!182125)))

(declare-fun t!204904 () Bool)

(declare-fun tb!136765 () Bool)

(assert (=> (and b!2291255 (= (toChars!6016 (transformation!4367 (h!32688 rules!1750))) (toChars!6016 (transformation!4367 r!2363))) t!204904) tb!136765))

(declare-fun result!166748 () Bool)

(assert (= result!166748 result!166742))

(assert (=> d!678235 t!204904))

(declare-fun b_and!182127 () Bool)

(assert (= b_and!182111 (and (=> t!204904 result!166748) b_and!182127)))

(declare-fun t!204906 () Bool)

(declare-fun tb!136767 () Bool)

(assert (=> (and b!2291243 (= (toChars!6016 (transformation!4367 otherR!12)) (toChars!6016 (transformation!4367 r!2363))) t!204906) tb!136767))

(declare-fun result!166750 () Bool)

(assert (= result!166750 result!166742))

(assert (=> d!678235 t!204906))

(declare-fun b_and!182129 () Bool)

(assert (= b_and!182119 (and (=> t!204906 result!166750) b_and!182129)))

(declare-fun t!204908 () Bool)

(declare-fun tb!136769 () Bool)

(assert (=> (and b!2291253 (= (toChars!6016 (transformation!4367 r!2363)) (toChars!6016 (transformation!4367 r!2363))) t!204908) tb!136769))

(declare-fun result!166752 () Bool)

(assert (= result!166752 result!166742))

(assert (=> d!678235 t!204908))

(declare-fun b_and!182131 () Bool)

(assert (= b_and!182109 (and (=> t!204908 result!166752) b_and!182131)))

(declare-fun b_lambda!73057 () Bool)

(assert (=> (not b_lambda!73057) (not d!678235)))

(declare-fun tb!136771 () Bool)

(declare-fun t!204910 () Bool)

(assert (=> (and b!2291887 (= (toValue!6157 (transformation!4367 (rule!6703 (h!32689 (t!204674 tokens!456))))) (toValue!6157 (transformation!4367 r!2363))) t!204910) tb!136771))

(declare-fun result!166754 () Bool)

(assert (=> tb!136771 (= result!166754 (inv!21 (dynLambda!11848 (toValue!6157 (transformation!4367 r!2363)) (seqFromList!3071 (_1!16065 lt!850228)))))))

(declare-fun m!2720515 () Bool)

(assert (=> tb!136771 m!2720515))

(assert (=> d!678235 t!204910))

(declare-fun b_and!182133 () Bool)

(assert (= b_and!182081 (and (=> t!204910 result!166754) b_and!182133)))

(declare-fun t!204912 () Bool)

(declare-fun tb!136773 () Bool)

(assert (=> (and b!2291253 (= (toValue!6157 (transformation!4367 r!2363)) (toValue!6157 (transformation!4367 r!2363))) t!204912) tb!136773))

(declare-fun result!166756 () Bool)

(assert (= result!166756 result!166754))

(assert (=> d!678235 t!204912))

(declare-fun b_and!182135 () Bool)

(assert (= b_and!182073 (and (=> t!204912 result!166756) b_and!182135)))

(declare-fun tb!136775 () Bool)

(declare-fun t!204914 () Bool)

(assert (=> (and b!2291243 (= (toValue!6157 (transformation!4367 otherR!12)) (toValue!6157 (transformation!4367 r!2363))) t!204914) tb!136775))

(declare-fun result!166758 () Bool)

(assert (= result!166758 result!166754))

(assert (=> d!678235 t!204914))

(declare-fun b_and!182137 () Bool)

(assert (= b_and!182083 (and (=> t!204914 result!166758) b_and!182137)))

(declare-fun t!204916 () Bool)

(declare-fun tb!136777 () Bool)

(assert (=> (and b!2291260 (= (toValue!6157 (transformation!4367 (rule!6703 (h!32689 tokens!456)))) (toValue!6157 (transformation!4367 r!2363))) t!204916) tb!136777))

(declare-fun result!166760 () Bool)

(assert (= result!166760 result!166754))

(assert (=> d!678235 t!204916))

(declare-fun b_and!182139 () Bool)

(assert (= b_and!182077 (and (=> t!204916 result!166760) b_and!182139)))

(declare-fun t!204918 () Bool)

(declare-fun tb!136779 () Bool)

(assert (=> (and b!2291255 (= (toValue!6157 (transformation!4367 (h!32688 rules!1750))) (toValue!6157 (transformation!4367 r!2363))) t!204918) tb!136779))

(declare-fun result!166762 () Bool)

(assert (= result!166762 result!166754))

(assert (=> d!678235 t!204918))

(declare-fun b_and!182141 () Bool)

(assert (= b_and!182079 (and (=> t!204918 result!166762) b_and!182141)))

(declare-fun t!204920 () Bool)

(declare-fun tb!136781 () Bool)

(assert (=> (and b!2291860 (= (toValue!6157 (transformation!4367 (h!32688 (t!204673 rules!1750)))) (toValue!6157 (transformation!4367 r!2363))) t!204920) tb!136781))

(declare-fun result!166764 () Bool)

(assert (= result!166764 result!166754))

(assert (=> d!678235 t!204920))

(declare-fun b_and!182143 () Bool)

(assert (= b_and!182075 (and (=> t!204920 result!166764) b_and!182143)))

(assert (=> d!678235 m!2719375))

(declare-fun m!2720519 () Bool)

(assert (=> d!678235 m!2720519))

(declare-fun m!2720521 () Bool)

(assert (=> d!678235 m!2720521))

(declare-fun m!2720523 () Bool)

(assert (=> d!678235 m!2720523))

(assert (=> d!678235 m!2719375))

(assert (=> d!678235 m!2720495))

(assert (=> d!678235 m!2720519))

(assert (=> d!678235 m!2720521))

(assert (=> d!678235 m!2719375))

(declare-fun m!2720527 () Bool)

(assert (=> d!678235 m!2720527))

(assert (=> b!2291741 d!678235))

(assert (=> b!2291741 d!677967))

(assert (=> b!2291741 d!677953))

(declare-fun d!678243 () Bool)

(declare-fun e!1469014 () Bool)

(assert (=> d!678243 e!1469014))

(declare-fun res!980393 () Bool)

(assert (=> d!678243 (=> res!980393 e!1469014)))

(assert (=> d!678243 (= res!980393 (isEmpty!15543 (_1!16065 (findLongestMatchInner!723 (regex!4367 r!2363) Nil!27285 (size!21481 Nil!27285) input!1722 input!1722 (size!21481 input!1722)))))))

(declare-fun lt!850785 () Unit!40164)

(declare-fun choose!13393 (Regex!6715 List!27379) Unit!40164)

(assert (=> d!678243 (= lt!850785 (choose!13393 (regex!4367 r!2363) input!1722))))

(assert (=> d!678243 (validRegex!2530 (regex!4367 r!2363))))

(assert (=> d!678243 (= (longestMatchIsAcceptedByMatchOrIsEmpty!696 (regex!4367 r!2363) input!1722) lt!850785)))

(declare-fun b!2292604 () Bool)

(assert (=> b!2292604 (= e!1469014 (matchR!2972 (regex!4367 r!2363) (_1!16065 (findLongestMatchInner!723 (regex!4367 r!2363) Nil!27285 (size!21481 Nil!27285) input!1722 input!1722 (size!21481 input!1722)))))))

(assert (= (and d!678243 (not res!980393)) b!2292604))

(assert (=> d!678243 m!2719371))

(assert (=> d!678243 m!2719373))

(assert (=> d!678243 m!2718957))

(assert (=> d!678243 m!2719371))

(assert (=> d!678243 m!2719045))

(assert (=> d!678243 m!2719381))

(assert (=> d!678243 m!2719045))

(declare-fun m!2720537 () Bool)

(assert (=> d!678243 m!2720537))

(assert (=> b!2292604 m!2719371))

(assert (=> b!2292604 m!2719045))

(assert (=> b!2292604 m!2719371))

(assert (=> b!2292604 m!2719045))

(assert (=> b!2292604 m!2719381))

(assert (=> b!2292604 m!2719387))

(assert (=> b!2291741 d!678243))

(assert (=> b!2291741 d!677949))

(declare-fun d!678253 () Bool)

(assert (=> d!678253 (= (apply!6639 (transformation!4367 r!2363) (seqFromList!3071 (_1!16065 lt!850228))) (dynLambda!11848 (toValue!6157 (transformation!4367 r!2363)) (seqFromList!3071 (_1!16065 lt!850228))))))

(declare-fun b_lambda!73059 () Bool)

(assert (=> (not b_lambda!73059) (not d!678253)))

(assert (=> d!678253 t!204914))

(declare-fun b_and!182145 () Bool)

(assert (= b_and!182137 (and (=> t!204914 result!166758) b_and!182145)))

(assert (=> d!678253 t!204910))

(declare-fun b_and!182147 () Bool)

(assert (= b_and!182133 (and (=> t!204910 result!166754) b_and!182147)))

(assert (=> d!678253 t!204912))

(declare-fun b_and!182149 () Bool)

(assert (= b_and!182135 (and (=> t!204912 result!166756) b_and!182149)))

(assert (=> d!678253 t!204918))

(declare-fun b_and!182151 () Bool)

(assert (= b_and!182141 (and (=> t!204918 result!166762) b_and!182151)))

(assert (=> d!678253 t!204920))

(declare-fun b_and!182153 () Bool)

(assert (= b_and!182143 (and (=> t!204920 result!166764) b_and!182153)))

(assert (=> d!678253 t!204916))

(declare-fun b_and!182155 () Bool)

(assert (= b_and!182139 (and (=> t!204916 result!166760) b_and!182155)))

(assert (=> d!678253 m!2719375))

(assert (=> d!678253 m!2720519))

(assert (=> b!2291741 d!678253))

(declare-fun d!678255 () Bool)

(assert (=> d!678255 (= (list!10688 (_2!16062 lt!850181)) (list!10692 (c!363262 (_2!16062 lt!850181))))))

(declare-fun bs!457145 () Bool)

(assert (= bs!457145 d!678255))

(declare-fun m!2720539 () Bool)

(assert (=> bs!457145 m!2720539))

(assert (=> b!2291641 d!678255))

(assert (=> b!2291641 d!678111))

(assert (=> b!2291641 d!678135))

(assert (=> b!2291737 d!677885))

(declare-fun d!678257 () Bool)

(declare-fun lt!850788 () Int)

(assert (=> d!678257 (>= lt!850788 0)))

(declare-fun e!1469017 () Int)

(assert (=> d!678257 (= lt!850788 e!1469017)))

(declare-fun c!363583 () Bool)

(assert (=> d!678257 (= c!363583 ((_ is Nil!27285) (originalCharacters!5137 (_1!16061 (get!8230 lt!850231)))))))

(assert (=> d!678257 (= (size!21481 (originalCharacters!5137 (_1!16061 (get!8230 lt!850231)))) lt!850788)))

(declare-fun b!2292607 () Bool)

(assert (=> b!2292607 (= e!1469017 0)))

(declare-fun b!2292608 () Bool)

(assert (=> b!2292608 (= e!1469017 (+ 1 (size!21481 (t!204671 (originalCharacters!5137 (_1!16061 (get!8230 lt!850231)))))))))

(assert (= (and d!678257 c!363583) b!2292607))

(assert (= (and d!678257 (not c!363583)) b!2292608))

(declare-fun m!2720541 () Bool)

(assert (=> b!2292608 m!2720541))

(assert (=> b!2291737 d!678257))

(assert (=> bm!136649 d!678189))

(declare-fun b!2292609 () Bool)

(declare-fun res!980401 () Bool)

(declare-fun e!1469018 () Bool)

(assert (=> b!2292609 (=> (not res!980401) (not e!1469018))))

(assert (=> b!2292609 (= res!980401 (isEmpty!15543 (tail!3311 (tail!3311 (list!10688 (charsOf!2755 (head!4996 tokens!456)))))))))

(declare-fun b!2292610 () Bool)

(declare-fun res!980399 () Bool)

(declare-fun e!1469024 () Bool)

(assert (=> b!2292610 (=> res!980399 e!1469024)))

(assert (=> b!2292610 (= res!980399 (not (isEmpty!15543 (tail!3311 (tail!3311 (list!10688 (charsOf!2755 (head!4996 tokens!456))))))))))

(declare-fun b!2292611 () Bool)

(assert (=> b!2292611 (= e!1469024 (not (= (head!4998 (tail!3311 (list!10688 (charsOf!2755 (head!4996 tokens!456))))) (c!363263 (derivativeStep!1528 (regex!4367 r!2363) (head!4998 (list!10688 (charsOf!2755 (head!4996 tokens!456)))))))))))

(declare-fun b!2292612 () Bool)

(declare-fun e!1469020 () Bool)

(assert (=> b!2292612 (= e!1469020 (nullable!1868 (derivativeStep!1528 (regex!4367 r!2363) (head!4998 (list!10688 (charsOf!2755 (head!4996 tokens!456)))))))))

(declare-fun b!2292613 () Bool)

(assert (=> b!2292613 (= e!1469018 (= (head!4998 (tail!3311 (list!10688 (charsOf!2755 (head!4996 tokens!456))))) (c!363263 (derivativeStep!1528 (regex!4367 r!2363) (head!4998 (list!10688 (charsOf!2755 (head!4996 tokens!456))))))))))

(declare-fun d!678259 () Bool)

(declare-fun e!1469019 () Bool)

(assert (=> d!678259 e!1469019))

(declare-fun c!363585 () Bool)

(assert (=> d!678259 (= c!363585 ((_ is EmptyExpr!6715) (derivativeStep!1528 (regex!4367 r!2363) (head!4998 (list!10688 (charsOf!2755 (head!4996 tokens!456)))))))))

(declare-fun lt!850789 () Bool)

(assert (=> d!678259 (= lt!850789 e!1469020)))

(declare-fun c!363584 () Bool)

(assert (=> d!678259 (= c!363584 (isEmpty!15543 (tail!3311 (list!10688 (charsOf!2755 (head!4996 tokens!456))))))))

(assert (=> d!678259 (validRegex!2530 (derivativeStep!1528 (regex!4367 r!2363) (head!4998 (list!10688 (charsOf!2755 (head!4996 tokens!456))))))))

(assert (=> d!678259 (= (matchR!2972 (derivativeStep!1528 (regex!4367 r!2363) (head!4998 (list!10688 (charsOf!2755 (head!4996 tokens!456))))) (tail!3311 (list!10688 (charsOf!2755 (head!4996 tokens!456))))) lt!850789)))

(declare-fun b!2292614 () Bool)

(declare-fun call!136773 () Bool)

(assert (=> b!2292614 (= e!1469019 (= lt!850789 call!136773))))

(declare-fun b!2292615 () Bool)

(declare-fun res!980396 () Bool)

(declare-fun e!1469022 () Bool)

(assert (=> b!2292615 (=> res!980396 e!1469022)))

(assert (=> b!2292615 (= res!980396 e!1469018)))

(declare-fun res!980403 () Bool)

(assert (=> b!2292615 (=> (not res!980403) (not e!1469018))))

(assert (=> b!2292615 (= res!980403 lt!850789)))

(declare-fun b!2292616 () Bool)

(declare-fun e!1469023 () Bool)

(assert (=> b!2292616 (= e!1469023 (not lt!850789))))

(declare-fun b!2292617 () Bool)

(declare-fun res!980400 () Bool)

(assert (=> b!2292617 (=> (not res!980400) (not e!1469018))))

(assert (=> b!2292617 (= res!980400 (not call!136773))))

(declare-fun b!2292618 () Bool)

(declare-fun e!1469021 () Bool)

(assert (=> b!2292618 (= e!1469022 e!1469021)))

(declare-fun res!980398 () Bool)

(assert (=> b!2292618 (=> (not res!980398) (not e!1469021))))

(assert (=> b!2292618 (= res!980398 (not lt!850789))))

(declare-fun b!2292619 () Bool)

(assert (=> b!2292619 (= e!1469019 e!1469023)))

(declare-fun c!363586 () Bool)

(assert (=> b!2292619 (= c!363586 ((_ is EmptyLang!6715) (derivativeStep!1528 (regex!4367 r!2363) (head!4998 (list!10688 (charsOf!2755 (head!4996 tokens!456)))))))))

(declare-fun b!2292620 () Bool)

(assert (=> b!2292620 (= e!1469021 e!1469024)))

(declare-fun res!980397 () Bool)

(assert (=> b!2292620 (=> res!980397 e!1469024)))

(assert (=> b!2292620 (= res!980397 call!136773)))

(declare-fun b!2292621 () Bool)

(declare-fun res!980402 () Bool)

(assert (=> b!2292621 (=> res!980402 e!1469022)))

(assert (=> b!2292621 (= res!980402 (not ((_ is ElementMatch!6715) (derivativeStep!1528 (regex!4367 r!2363) (head!4998 (list!10688 (charsOf!2755 (head!4996 tokens!456))))))))))

(assert (=> b!2292621 (= e!1469023 e!1469022)))

(declare-fun bm!136768 () Bool)

(assert (=> bm!136768 (= call!136773 (isEmpty!15543 (tail!3311 (list!10688 (charsOf!2755 (head!4996 tokens!456))))))))

(declare-fun b!2292622 () Bool)

(assert (=> b!2292622 (= e!1469020 (matchR!2972 (derivativeStep!1528 (derivativeStep!1528 (regex!4367 r!2363) (head!4998 (list!10688 (charsOf!2755 (head!4996 tokens!456))))) (head!4998 (tail!3311 (list!10688 (charsOf!2755 (head!4996 tokens!456)))))) (tail!3311 (tail!3311 (list!10688 (charsOf!2755 (head!4996 tokens!456)))))))))

(assert (= (and d!678259 c!363584) b!2292612))

(assert (= (and d!678259 (not c!363584)) b!2292622))

(assert (= (and d!678259 c!363585) b!2292614))

(assert (= (and d!678259 (not c!363585)) b!2292619))

(assert (= (and b!2292619 c!363586) b!2292616))

(assert (= (and b!2292619 (not c!363586)) b!2292621))

(assert (= (and b!2292621 (not res!980402)) b!2292615))

(assert (= (and b!2292615 res!980403) b!2292617))

(assert (= (and b!2292617 res!980400) b!2292609))

(assert (= (and b!2292609 res!980401) b!2292613))

(assert (= (and b!2292615 (not res!980396)) b!2292618))

(assert (= (and b!2292618 res!980398) b!2292620))

(assert (= (and b!2292620 (not res!980397)) b!2292610))

(assert (= (and b!2292610 (not res!980399)) b!2292611))

(assert (= (or b!2292614 b!2292617 b!2292620) bm!136768))

(assert (=> b!2292610 m!2719081))

(declare-fun m!2720545 () Bool)

(assert (=> b!2292610 m!2720545))

(assert (=> b!2292610 m!2720545))

(declare-fun m!2720547 () Bool)

(assert (=> b!2292610 m!2720547))

(assert (=> b!2292611 m!2719081))

(declare-fun m!2720549 () Bool)

(assert (=> b!2292611 m!2720549))

(assert (=> b!2292609 m!2719081))

(assert (=> b!2292609 m!2720545))

(assert (=> b!2292609 m!2720545))

(assert (=> b!2292609 m!2720547))

(assert (=> d!678259 m!2719081))

(assert (=> d!678259 m!2719083))

(assert (=> d!678259 m!2719089))

(declare-fun m!2720551 () Bool)

(assert (=> d!678259 m!2720551))

(assert (=> b!2292612 m!2719089))

(declare-fun m!2720553 () Bool)

(assert (=> b!2292612 m!2720553))

(assert (=> b!2292622 m!2719081))

(assert (=> b!2292622 m!2720549))

(assert (=> b!2292622 m!2719089))

(assert (=> b!2292622 m!2720549))

(declare-fun m!2720555 () Bool)

(assert (=> b!2292622 m!2720555))

(assert (=> b!2292622 m!2719081))

(assert (=> b!2292622 m!2720545))

(assert (=> b!2292622 m!2720555))

(assert (=> b!2292622 m!2720545))

(declare-fun m!2720557 () Bool)

(assert (=> b!2292622 m!2720557))

(assert (=> b!2292613 m!2719081))

(assert (=> b!2292613 m!2720549))

(assert (=> bm!136768 m!2719081))

(assert (=> bm!136768 m!2719083))

(assert (=> b!2291514 d!678259))

(declare-fun b!2292625 () Bool)

(declare-fun e!1469030 () Regex!6715)

(assert (=> b!2292625 (= e!1469030 EmptyLang!6715)))

(declare-fun d!678263 () Bool)

(declare-fun lt!850792 () Regex!6715)

(assert (=> d!678263 (validRegex!2530 lt!850792)))

(assert (=> d!678263 (= lt!850792 e!1469030)))

(declare-fun c!363587 () Bool)

(assert (=> d!678263 (= c!363587 (or ((_ is EmptyExpr!6715) (regex!4367 r!2363)) ((_ is EmptyLang!6715) (regex!4367 r!2363))))))

(assert (=> d!678263 (validRegex!2530 (regex!4367 r!2363))))

(assert (=> d!678263 (= (derivativeStep!1528 (regex!4367 r!2363) (head!4998 (list!10688 (charsOf!2755 (head!4996 tokens!456))))) lt!850792)))

(declare-fun bm!136769 () Bool)

(declare-fun call!136774 () Regex!6715)

(declare-fun call!136775 () Regex!6715)

(assert (=> bm!136769 (= call!136774 call!136775)))

(declare-fun c!363591 () Bool)

(declare-fun bm!136770 () Bool)

(declare-fun c!363588 () Bool)

(assert (=> bm!136770 (= call!136775 (derivativeStep!1528 (ite c!363588 (regTwo!13943 (regex!4367 r!2363)) (ite c!363591 (reg!7044 (regex!4367 r!2363)) (regOne!13942 (regex!4367 r!2363)))) (head!4998 (list!10688 (charsOf!2755 (head!4996 tokens!456))))))))

(declare-fun b!2292626 () Bool)

(declare-fun e!1469031 () Regex!6715)

(assert (=> b!2292626 (= e!1469030 e!1469031)))

(declare-fun c!363590 () Bool)

(assert (=> b!2292626 (= c!363590 ((_ is ElementMatch!6715) (regex!4367 r!2363)))))

(declare-fun bm!136771 () Bool)

(declare-fun call!136776 () Regex!6715)

(assert (=> bm!136771 (= call!136776 call!136774)))

(declare-fun b!2292627 () Bool)

(assert (=> b!2292627 (= e!1469031 (ite (= (head!4998 (list!10688 (charsOf!2755 (head!4996 tokens!456)))) (c!363263 (regex!4367 r!2363))) EmptyExpr!6715 EmptyLang!6715))))

(declare-fun b!2292628 () Bool)

(declare-fun e!1469028 () Regex!6715)

(assert (=> b!2292628 (= e!1469028 (Union!6715 (Concat!11245 call!136776 (regTwo!13942 (regex!4367 r!2363))) EmptyLang!6715))))

(declare-fun b!2292629 () Bool)

(declare-fun e!1469029 () Regex!6715)

(declare-fun call!136777 () Regex!6715)

(assert (=> b!2292629 (= e!1469029 (Union!6715 call!136777 call!136775))))

(declare-fun bm!136772 () Bool)

(assert (=> bm!136772 (= call!136777 (derivativeStep!1528 (ite c!363588 (regOne!13943 (regex!4367 r!2363)) (regTwo!13942 (regex!4367 r!2363))) (head!4998 (list!10688 (charsOf!2755 (head!4996 tokens!456))))))))

(declare-fun b!2292630 () Bool)

(assert (=> b!2292630 (= c!363588 ((_ is Union!6715) (regex!4367 r!2363)))))

(assert (=> b!2292630 (= e!1469031 e!1469029)))

(declare-fun b!2292631 () Bool)

(declare-fun e!1469027 () Regex!6715)

(assert (=> b!2292631 (= e!1469027 (Concat!11245 call!136774 (regex!4367 r!2363)))))

(declare-fun b!2292632 () Bool)

(assert (=> b!2292632 (= e!1469028 (Union!6715 (Concat!11245 call!136776 (regTwo!13942 (regex!4367 r!2363))) call!136777))))

(declare-fun b!2292633 () Bool)

(assert (=> b!2292633 (= e!1469029 e!1469027)))

(assert (=> b!2292633 (= c!363591 ((_ is Star!6715) (regex!4367 r!2363)))))

(declare-fun b!2292634 () Bool)

(declare-fun c!363589 () Bool)

(assert (=> b!2292634 (= c!363589 (nullable!1868 (regOne!13942 (regex!4367 r!2363))))))

(assert (=> b!2292634 (= e!1469027 e!1469028)))

(assert (= (and d!678263 c!363587) b!2292625))

(assert (= (and d!678263 (not c!363587)) b!2292626))

(assert (= (and b!2292626 c!363590) b!2292627))

(assert (= (and b!2292626 (not c!363590)) b!2292630))

(assert (= (and b!2292630 c!363588) b!2292629))

(assert (= (and b!2292630 (not c!363588)) b!2292633))

(assert (= (and b!2292633 c!363591) b!2292631))

(assert (= (and b!2292633 (not c!363591)) b!2292634))

(assert (= (and b!2292634 c!363589) b!2292632))

(assert (= (and b!2292634 (not c!363589)) b!2292628))

(assert (= (or b!2292632 b!2292628) bm!136771))

(assert (= (or b!2292631 bm!136771) bm!136769))

(assert (= (or b!2292629 b!2292632) bm!136772))

(assert (= (or b!2292629 bm!136769) bm!136770))

(declare-fun m!2720559 () Bool)

(assert (=> d!678263 m!2720559))

(assert (=> d!678263 m!2718957))

(assert (=> bm!136770 m!2719085))

(declare-fun m!2720561 () Bool)

(assert (=> bm!136770 m!2720561))

(assert (=> bm!136772 m!2719085))

(declare-fun m!2720563 () Bool)

(assert (=> bm!136772 m!2720563))

(assert (=> b!2292634 m!2720315))

(assert (=> b!2291514 d!678263))

(assert (=> b!2291514 d!677997))

(assert (=> b!2291514 d!678007))

(declare-fun d!678265 () Bool)

(declare-fun charsToBigInt!1 (List!27380) Int)

(assert (=> d!678265 (= (inv!17 (value!138279 (h!32689 tokens!456))) (= (charsToBigInt!1 (text!32151 (value!138279 (h!32689 tokens!456)))) (value!138271 (value!138279 (h!32689 tokens!456)))))))

(declare-fun bs!457149 () Bool)

(assert (= bs!457149 d!678265))

(declare-fun m!2720571 () Bool)

(assert (=> bs!457149 m!2720571))

(assert (=> b!2291555 d!678265))

(declare-fun d!678267 () Bool)

(declare-fun e!1469035 () Bool)

(assert (=> d!678267 e!1469035))

(declare-fun res!980406 () Bool)

(assert (=> d!678267 (=> (not res!980406) (not e!1469035))))

(declare-fun lt!850793 () List!27379)

(assert (=> d!678267 (= res!980406 (= (content!3667 lt!850793) ((_ map or) (content!3667 lt!850069) (content!3667 lt!850190))))))

(declare-fun e!1469034 () List!27379)

(assert (=> d!678267 (= lt!850793 e!1469034)))

(declare-fun c!363592 () Bool)

(assert (=> d!678267 (= c!363592 ((_ is Nil!27285) lt!850069))))

(assert (=> d!678267 (= (++!6667 lt!850069 lt!850190) lt!850793)))

(declare-fun b!2292638 () Bool)

(declare-fun res!980405 () Bool)

(assert (=> b!2292638 (=> (not res!980405) (not e!1469035))))

(assert (=> b!2292638 (= res!980405 (= (size!21481 lt!850793) (+ (size!21481 lt!850069) (size!21481 lt!850190))))))

(declare-fun b!2292637 () Bool)

(assert (=> b!2292637 (= e!1469034 (Cons!27285 (h!32686 lt!850069) (++!6667 (t!204671 lt!850069) lt!850190)))))

(declare-fun b!2292639 () Bool)

(assert (=> b!2292639 (= e!1469035 (or (not (= lt!850190 Nil!27285)) (= lt!850793 lt!850069)))))

(declare-fun b!2292636 () Bool)

(assert (=> b!2292636 (= e!1469034 lt!850190)))

(assert (= (and d!678267 c!363592) b!2292636))

(assert (= (and d!678267 (not c!363592)) b!2292637))

(assert (= (and d!678267 res!980406) b!2292638))

(assert (= (and b!2292638 res!980405) b!2292639))

(declare-fun m!2720573 () Bool)

(assert (=> d!678267 m!2720573))

(assert (=> d!678267 m!2719323))

(declare-fun m!2720575 () Bool)

(assert (=> d!678267 m!2720575))

(declare-fun m!2720577 () Bool)

(assert (=> b!2292638 m!2720577))

(assert (=> b!2292638 m!2718845))

(declare-fun m!2720579 () Bool)

(assert (=> b!2292638 m!2720579))

(declare-fun m!2720581 () Bool)

(assert (=> b!2292637 m!2720581))

(assert (=> d!677809 d!678267))

(assert (=> d!677809 d!677949))

(assert (=> d!677809 d!677813))

(declare-fun bs!457152 () Bool)

(declare-fun d!678269 () Bool)

(assert (= bs!457152 (and d!678269 d!678223)))

(declare-fun lambda!85787 () Int)

(assert (=> bs!457152 (= lambda!85787 lambda!85782)))

(assert (=> d!678269 true))

(declare-fun lt!850798 () Bool)

(assert (=> d!678269 (= lt!850798 (rulesValidInductive!1539 thiss!16613 rules!1750))))

(assert (=> d!678269 (= lt!850798 (forall!5494 rules!1750 lambda!85787))))

(assert (=> d!678269 (= (rulesValid!1614 thiss!16613 rules!1750) lt!850798)))

(declare-fun bs!457153 () Bool)

(assert (= bs!457153 d!678269))

(assert (=> bs!457153 m!2719041))

(declare-fun m!2720607 () Bool)

(assert (=> bs!457153 m!2720607))

(assert (=> d!677739 d!678269))

(declare-fun d!678279 () Bool)

(declare-fun lt!850799 () Int)

(assert (=> d!678279 (>= lt!850799 0)))

(declare-fun e!1469043 () Int)

(assert (=> d!678279 (= lt!850799 e!1469043)))

(declare-fun c!363596 () Bool)

(assert (=> d!678279 (= c!363596 ((_ is Nil!27285) (t!204671 lt!850069)))))

(assert (=> d!678279 (= (size!21481 (t!204671 lt!850069)) lt!850799)))

(declare-fun b!2292654 () Bool)

(assert (=> b!2292654 (= e!1469043 0)))

(declare-fun b!2292655 () Bool)

(assert (=> b!2292655 (= e!1469043 (+ 1 (size!21481 (t!204671 (t!204671 lt!850069)))))))

(assert (= (and d!678279 c!363596) b!2292654))

(assert (= (and d!678279 (not c!363596)) b!2292655))

(declare-fun m!2720613 () Bool)

(assert (=> b!2292655 m!2720613))

(assert (=> b!2291692 d!678279))

(assert (=> b!2291746 d!677949))

(assert (=> b!2291746 d!677701))

(declare-fun d!678281 () Bool)

(declare-fun c!363597 () Bool)

(assert (=> d!678281 (= c!363597 ((_ is Node!8882) (c!363262 (dynLambda!11843 (toChars!6016 (transformation!4367 r!2363)) (dynLambda!11848 (toValue!6157 (transformation!4367 r!2363)) lt!850059)))))))

(declare-fun e!1469044 () Bool)

(assert (=> d!678281 (= (inv!36889 (c!363262 (dynLambda!11843 (toChars!6016 (transformation!4367 r!2363)) (dynLambda!11848 (toValue!6157 (transformation!4367 r!2363)) lt!850059)))) e!1469044)))

(declare-fun b!2292656 () Bool)

(assert (=> b!2292656 (= e!1469044 (inv!36891 (c!363262 (dynLambda!11843 (toChars!6016 (transformation!4367 r!2363)) (dynLambda!11848 (toValue!6157 (transformation!4367 r!2363)) lt!850059)))))))

(declare-fun b!2292657 () Bool)

(declare-fun e!1469045 () Bool)

(assert (=> b!2292657 (= e!1469044 e!1469045)))

(declare-fun res!980415 () Bool)

(assert (=> b!2292657 (= res!980415 (not ((_ is Leaf!13051) (c!363262 (dynLambda!11843 (toChars!6016 (transformation!4367 r!2363)) (dynLambda!11848 (toValue!6157 (transformation!4367 r!2363)) lt!850059))))))))

(assert (=> b!2292657 (=> res!980415 e!1469045)))

(declare-fun b!2292658 () Bool)

(assert (=> b!2292658 (= e!1469045 (inv!36892 (c!363262 (dynLambda!11843 (toChars!6016 (transformation!4367 r!2363)) (dynLambda!11848 (toValue!6157 (transformation!4367 r!2363)) lt!850059)))))))

(assert (= (and d!678281 c!363597) b!2292656))

(assert (= (and d!678281 (not c!363597)) b!2292657))

(assert (= (and b!2292657 (not res!980415)) b!2292658))

(declare-fun m!2720615 () Bool)

(assert (=> b!2292656 m!2720615))

(declare-fun m!2720617 () Bool)

(assert (=> b!2292658 m!2720617))

(assert (=> b!2291825 d!678281))

(declare-fun b!2292660 () Bool)

(declare-fun res!980417 () Bool)

(declare-fun e!1469048 () Bool)

(assert (=> b!2292660 (=> (not res!980417) (not e!1469048))))

(assert (=> b!2292660 (= res!980417 (= (head!4998 (tail!3311 lt!850069)) (head!4998 (tail!3311 (++!6667 lt!850069 (_2!16061 lt!850065))))))))

(declare-fun d!678285 () Bool)

(declare-fun e!1469047 () Bool)

(assert (=> d!678285 e!1469047))

(declare-fun res!980419 () Bool)

(assert (=> d!678285 (=> res!980419 e!1469047)))

(declare-fun lt!850800 () Bool)

(assert (=> d!678285 (= res!980419 (not lt!850800))))

(declare-fun e!1469046 () Bool)

(assert (=> d!678285 (= lt!850800 e!1469046)))

(declare-fun res!980416 () Bool)

(assert (=> d!678285 (=> res!980416 e!1469046)))

(assert (=> d!678285 (= res!980416 ((_ is Nil!27285) (tail!3311 lt!850069)))))

(assert (=> d!678285 (= (isPrefix!2357 (tail!3311 lt!850069) (tail!3311 (++!6667 lt!850069 (_2!16061 lt!850065)))) lt!850800)))

(declare-fun b!2292659 () Bool)

(assert (=> b!2292659 (= e!1469046 e!1469048)))

(declare-fun res!980418 () Bool)

(assert (=> b!2292659 (=> (not res!980418) (not e!1469048))))

(assert (=> b!2292659 (= res!980418 (not ((_ is Nil!27285) (tail!3311 (++!6667 lt!850069 (_2!16061 lt!850065))))))))

(declare-fun b!2292661 () Bool)

(assert (=> b!2292661 (= e!1469048 (isPrefix!2357 (tail!3311 (tail!3311 lt!850069)) (tail!3311 (tail!3311 (++!6667 lt!850069 (_2!16061 lt!850065))))))))

(declare-fun b!2292662 () Bool)

(assert (=> b!2292662 (= e!1469047 (>= (size!21481 (tail!3311 (++!6667 lt!850069 (_2!16061 lt!850065)))) (size!21481 (tail!3311 lt!850069))))))

(assert (= (and d!678285 (not res!980416)) b!2292659))

(assert (= (and b!2292659 res!980418) b!2292660))

(assert (= (and b!2292660 res!980417) b!2292661))

(assert (= (and d!678285 (not res!980419)) b!2292662))

(assert (=> b!2292660 m!2718949))

(assert (=> b!2292660 m!2720249))

(assert (=> b!2292660 m!2719297))

(declare-fun m!2720619 () Bool)

(assert (=> b!2292660 m!2720619))

(assert (=> b!2292661 m!2718949))

(assert (=> b!2292661 m!2720245))

(assert (=> b!2292661 m!2719297))

(declare-fun m!2720621 () Bool)

(assert (=> b!2292661 m!2720621))

(assert (=> b!2292661 m!2720245))

(assert (=> b!2292661 m!2720621))

(declare-fun m!2720623 () Bool)

(assert (=> b!2292661 m!2720623))

(assert (=> b!2292662 m!2719297))

(declare-fun m!2720625 () Bool)

(assert (=> b!2292662 m!2720625))

(assert (=> b!2292662 m!2718949))

(declare-fun m!2720627 () Bool)

(assert (=> b!2292662 m!2720627))

(assert (=> b!2291689 d!678285))

(assert (=> b!2291689 d!678161))

(declare-fun d!678287 () Bool)

(assert (=> d!678287 (= (tail!3311 (++!6667 lt!850069 (_2!16061 lt!850065))) (t!204671 (++!6667 lt!850069 (_2!16061 lt!850065))))))

(assert (=> b!2291689 d!678287))

(assert (=> b!2291369 d!677983))

(declare-fun b!2292663 () Bool)

(declare-fun e!1469049 () Bool)

(declare-fun e!1469052 () Bool)

(assert (=> b!2292663 (= e!1469049 e!1469052)))

(declare-fun res!980425 () Bool)

(assert (=> b!2292663 (=> (not res!980425) (not e!1469052))))

(declare-fun lt!850805 () Option!5357)

(assert (=> b!2292663 (= res!980425 (matchR!2972 (regex!4367 (h!32688 rules!1750)) (list!10688 (charsOf!2755 (_1!16061 (get!8230 lt!850805))))))))

(declare-fun b!2292664 () Bool)

(declare-fun e!1469051 () Option!5357)

(assert (=> b!2292664 (= e!1469051 None!5356)))

(declare-fun b!2292665 () Bool)

(declare-fun e!1469050 () Bool)

(assert (=> b!2292665 (= e!1469050 (matchR!2972 (regex!4367 (h!32688 rules!1750)) (_1!16065 (findLongestMatchInner!723 (regex!4367 (h!32688 rules!1750)) Nil!27285 (size!21481 Nil!27285) input!1722 input!1722 (size!21481 input!1722)))))))

(declare-fun b!2292666 () Bool)

(assert (=> b!2292666 (= e!1469052 (= (size!21480 (_1!16061 (get!8230 lt!850805))) (size!21481 (originalCharacters!5137 (_1!16061 (get!8230 lt!850805))))))))

(declare-fun b!2292668 () Bool)

(declare-fun res!980424 () Bool)

(assert (=> b!2292668 (=> (not res!980424) (not e!1469052))))

(assert (=> b!2292668 (= res!980424 (= (value!138279 (_1!16061 (get!8230 lt!850805))) (apply!6639 (transformation!4367 (rule!6703 (_1!16061 (get!8230 lt!850805)))) (seqFromList!3071 (originalCharacters!5137 (_1!16061 (get!8230 lt!850805)))))))))

(declare-fun b!2292669 () Bool)

(declare-fun res!980420 () Bool)

(assert (=> b!2292669 (=> (not res!980420) (not e!1469052))))

(assert (=> b!2292669 (= res!980420 (= (rule!6703 (_1!16061 (get!8230 lt!850805))) (h!32688 rules!1750)))))

(declare-fun b!2292670 () Bool)

(declare-fun lt!850802 () tuple2!27110)

(assert (=> b!2292670 (= e!1469051 (Some!5356 (tuple2!27103 (Token!8213 (apply!6639 (transformation!4367 (h!32688 rules!1750)) (seqFromList!3071 (_1!16065 lt!850802))) (h!32688 rules!1750) (size!21482 (seqFromList!3071 (_1!16065 lt!850802))) (_1!16065 lt!850802)) (_2!16065 lt!850802))))))

(declare-fun lt!850803 () Unit!40164)

(assert (=> b!2292670 (= lt!850803 (longestMatchIsAcceptedByMatchOrIsEmpty!696 (regex!4367 (h!32688 rules!1750)) input!1722))))

(declare-fun res!980423 () Bool)

(assert (=> b!2292670 (= res!980423 (isEmpty!15543 (_1!16065 (findLongestMatchInner!723 (regex!4367 (h!32688 rules!1750)) Nil!27285 (size!21481 Nil!27285) input!1722 input!1722 (size!21481 input!1722)))))))

(assert (=> b!2292670 (=> res!980423 e!1469050)))

(assert (=> b!2292670 e!1469050))

(declare-fun lt!850801 () Unit!40164)

(assert (=> b!2292670 (= lt!850801 lt!850803)))

(declare-fun lt!850804 () Unit!40164)

(assert (=> b!2292670 (= lt!850804 (lemmaSemiInverse!1066 (transformation!4367 (h!32688 rules!1750)) (seqFromList!3071 (_1!16065 lt!850802))))))

(declare-fun b!2292671 () Bool)

(declare-fun res!980421 () Bool)

(assert (=> b!2292671 (=> (not res!980421) (not e!1469052))))

(assert (=> b!2292671 (= res!980421 (< (size!21481 (_2!16061 (get!8230 lt!850805))) (size!21481 input!1722)))))

(declare-fun d!678289 () Bool)

(assert (=> d!678289 e!1469049))

(declare-fun res!980426 () Bool)

(assert (=> d!678289 (=> res!980426 e!1469049)))

(assert (=> d!678289 (= res!980426 (isEmpty!15545 lt!850805))))

(assert (=> d!678289 (= lt!850805 e!1469051)))

(declare-fun c!363598 () Bool)

(assert (=> d!678289 (= c!363598 (isEmpty!15543 (_1!16065 lt!850802)))))

(assert (=> d!678289 (= lt!850802 (findLongestMatch!652 (regex!4367 (h!32688 rules!1750)) input!1722))))

(assert (=> d!678289 (ruleValid!1457 thiss!16613 (h!32688 rules!1750))))

(assert (=> d!678289 (= (maxPrefixOneRule!1398 thiss!16613 (h!32688 rules!1750) input!1722) lt!850805)))

(declare-fun b!2292667 () Bool)

(declare-fun res!980422 () Bool)

(assert (=> b!2292667 (=> (not res!980422) (not e!1469052))))

(assert (=> b!2292667 (= res!980422 (= (++!6667 (list!10688 (charsOf!2755 (_1!16061 (get!8230 lt!850805)))) (_2!16061 (get!8230 lt!850805))) input!1722))))

(assert (= (and d!678289 c!363598) b!2292664))

(assert (= (and d!678289 (not c!363598)) b!2292670))

(assert (= (and b!2292670 (not res!980423)) b!2292665))

(assert (= (and d!678289 (not res!980426)) b!2292663))

(assert (= (and b!2292663 res!980425) b!2292667))

(assert (= (and b!2292667 res!980422) b!2292671))

(assert (= (and b!2292671 res!980421) b!2292669))

(assert (= (and b!2292669 res!980420) b!2292668))

(assert (= (and b!2292668 res!980424) b!2292666))

(declare-fun m!2720633 () Bool)

(assert (=> b!2292671 m!2720633))

(declare-fun m!2720635 () Bool)

(assert (=> b!2292671 m!2720635))

(assert (=> b!2292671 m!2719045))

(assert (=> b!2292666 m!2720633))

(declare-fun m!2720637 () Bool)

(assert (=> b!2292666 m!2720637))

(declare-fun m!2720639 () Bool)

(assert (=> d!678289 m!2720639))

(declare-fun m!2720641 () Bool)

(assert (=> d!678289 m!2720641))

(declare-fun m!2720643 () Bool)

(assert (=> d!678289 m!2720643))

(assert (=> d!678289 m!2720487))

(assert (=> b!2292663 m!2720633))

(declare-fun m!2720645 () Bool)

(assert (=> b!2292663 m!2720645))

(assert (=> b!2292663 m!2720645))

(declare-fun m!2720647 () Bool)

(assert (=> b!2292663 m!2720647))

(assert (=> b!2292663 m!2720647))

(declare-fun m!2720649 () Bool)

(assert (=> b!2292663 m!2720649))

(assert (=> b!2292670 m!2719371))

(declare-fun m!2720651 () Bool)

(assert (=> b!2292670 m!2720651))

(assert (=> b!2292670 m!2719045))

(declare-fun m!2720653 () Bool)

(assert (=> b!2292670 m!2720653))

(declare-fun m!2720655 () Bool)

(assert (=> b!2292670 m!2720655))

(assert (=> b!2292670 m!2720653))

(declare-fun m!2720657 () Bool)

(assert (=> b!2292670 m!2720657))

(assert (=> b!2292670 m!2719371))

(assert (=> b!2292670 m!2719045))

(declare-fun m!2720659 () Bool)

(assert (=> b!2292670 m!2720659))

(assert (=> b!2292670 m!2720653))

(declare-fun m!2720661 () Bool)

(assert (=> b!2292670 m!2720661))

(assert (=> b!2292670 m!2720653))

(declare-fun m!2720663 () Bool)

(assert (=> b!2292670 m!2720663))

(assert (=> b!2292665 m!2719371))

(assert (=> b!2292665 m!2719045))

(assert (=> b!2292665 m!2719371))

(assert (=> b!2292665 m!2719045))

(assert (=> b!2292665 m!2720659))

(declare-fun m!2720667 () Bool)

(assert (=> b!2292665 m!2720667))

(assert (=> b!2292668 m!2720633))

(declare-fun m!2720669 () Bool)

(assert (=> b!2292668 m!2720669))

(assert (=> b!2292668 m!2720669))

(declare-fun m!2720671 () Bool)

(assert (=> b!2292668 m!2720671))

(assert (=> b!2292667 m!2720633))

(assert (=> b!2292667 m!2720645))

(assert (=> b!2292667 m!2720645))

(assert (=> b!2292667 m!2720647))

(assert (=> b!2292667 m!2720647))

(declare-fun m!2720673 () Bool)

(assert (=> b!2292667 m!2720673))

(assert (=> b!2292669 m!2720633))

(assert (=> bm!136652 d!678289))

(declare-fun d!678299 () Bool)

(declare-fun lt!850807 () Int)

(assert (=> d!678299 (>= lt!850807 0)))

(declare-fun e!1469055 () Int)

(assert (=> d!678299 (= lt!850807 e!1469055)))

(declare-fun c!363601 () Bool)

(assert (=> d!678299 (= c!363601 ((_ is Nil!27285) (list!10688 (charsOf!2755 (head!4996 tokens!456)))))))

(assert (=> d!678299 (= (size!21481 (list!10688 (charsOf!2755 (head!4996 tokens!456)))) lt!850807)))

(declare-fun b!2292676 () Bool)

(assert (=> b!2292676 (= e!1469055 0)))

(declare-fun b!2292677 () Bool)

(assert (=> b!2292677 (= e!1469055 (+ 1 (size!21481 (t!204671 (list!10688 (charsOf!2755 (head!4996 tokens!456)))))))))

(assert (= (and d!678299 c!363601) b!2292676))

(assert (= (and d!678299 (not c!363601)) b!2292677))

(declare-fun m!2720675 () Bool)

(assert (=> b!2292677 m!2720675))

(assert (=> d!677687 d!678299))

(assert (=> d!677687 d!677743))

(declare-fun d!678301 () Bool)

(declare-fun lt!850810 () Int)

(assert (=> d!678301 (= lt!850810 (size!21481 (list!10692 (c!363262 (charsOf!2755 (head!4996 tokens!456))))))))

(assert (=> d!678301 (= lt!850810 (ite ((_ is Empty!8882) (c!363262 (charsOf!2755 (head!4996 tokens!456)))) 0 (ite ((_ is Leaf!13051) (c!363262 (charsOf!2755 (head!4996 tokens!456)))) (csize!17995 (c!363262 (charsOf!2755 (head!4996 tokens!456)))) (csize!17994 (c!363262 (charsOf!2755 (head!4996 tokens!456)))))))))

(assert (=> d!678301 (= (size!21484 (c!363262 (charsOf!2755 (head!4996 tokens!456)))) lt!850810)))

(declare-fun bs!457164 () Bool)

(assert (= bs!457164 d!678301))

(assert (=> bs!457164 m!2719093))

(assert (=> bs!457164 m!2719093))

(declare-fun m!2720681 () Bool)

(assert (=> bs!457164 m!2720681))

(assert (=> d!677687 d!678301))

(declare-fun d!678305 () Bool)

(assert (=> d!678305 (= (list!10688 lt!850215) (list!10692 (c!363262 lt!850215)))))

(declare-fun bs!457165 () Bool)

(assert (= bs!457165 d!678305))

(declare-fun m!2720685 () Bool)

(assert (=> bs!457165 m!2720685))

(assert (=> d!677829 d!678305))

(assert (=> b!2291502 d!678005))

(assert (=> b!2291502 d!678007))

(assert (=> b!2291365 d!678211))

(assert (=> b!2291365 d!678161))

(assert (=> d!677859 d!677973))

(assert (=> b!2291466 d!678207))

(assert (=> b!2291466 d!678209))

(assert (=> b!2291466 d!678017))

(declare-fun bs!457167 () Bool)

(declare-fun d!678311 () Bool)

(assert (= bs!457167 (and d!678311 d!677849)))

(declare-fun lambda!85790 () Int)

(assert (=> bs!457167 (= (and (= (toChars!6016 (transformation!4367 (h!32688 rules!1750))) (toChars!6016 (transformation!4367 r!2363))) (= (toValue!6157 (transformation!4367 (h!32688 rules!1750))) (toValue!6157 (transformation!4367 r!2363)))) (= lambda!85790 lambda!85757))))

(declare-fun bs!457168 () Bool)

(assert (= bs!457168 (and d!678311 d!678235)))

(assert (=> bs!457168 (= (and (= (toChars!6016 (transformation!4367 (h!32688 rules!1750))) (toChars!6016 (transformation!4367 r!2363))) (= (toValue!6157 (transformation!4367 (h!32688 rules!1750))) (toValue!6157 (transformation!4367 r!2363)))) (= lambda!85790 lambda!85783))))

(declare-fun bs!457169 () Bool)

(assert (= bs!457169 (and d!678311 d!678023)))

(assert (=> bs!457169 (= (and (= (toChars!6016 (transformation!4367 (h!32688 rules!1750))) (toChars!6016 (transformation!4367 (rule!6703 (h!32689 tokens!456))))) (= (toValue!6157 (transformation!4367 (h!32688 rules!1750))) (toValue!6157 (transformation!4367 (rule!6703 (h!32689 tokens!456)))))) (= lambda!85790 lambda!85766))))

(declare-fun bs!457170 () Bool)

(assert (= bs!457170 (and d!678311 d!678035)))

(assert (=> bs!457170 (= (and (= (toChars!6016 (transformation!4367 (h!32688 rules!1750))) (toChars!6016 (transformation!4367 r!2363))) (= (toValue!6157 (transformation!4367 (h!32688 rules!1750))) (toValue!6157 (transformation!4367 r!2363)))) (= lambda!85790 lambda!85767))))

(declare-fun bs!457171 () Bool)

(assert (= bs!457171 (and d!678311 d!678099)))

(assert (=> bs!457171 (= (and (= (toChars!6016 (transformation!4367 (h!32688 rules!1750))) (toChars!6016 (transformation!4367 otherR!12))) (= (toValue!6157 (transformation!4367 (h!32688 rules!1750))) (toValue!6157 (transformation!4367 otherR!12)))) (= lambda!85790 lambda!85769))))

(assert (=> d!678311 true))

(assert (=> d!678311 (< (dynLambda!11851 order!15207 (toChars!6016 (transformation!4367 (h!32688 rules!1750)))) (dynLambda!11850 order!15205 lambda!85790))))

(assert (=> d!678311 true))

(assert (=> d!678311 (< (dynLambda!11849 order!15203 (toValue!6157 (transformation!4367 (h!32688 rules!1750)))) (dynLambda!11850 order!15205 lambda!85790))))

(assert (=> d!678311 (= (semiInverseModEq!1770 (toChars!6016 (transformation!4367 (h!32688 rules!1750))) (toValue!6157 (transformation!4367 (h!32688 rules!1750)))) (Forall!1090 lambda!85790))))

(declare-fun bs!457173 () Bool)

(assert (= bs!457173 d!678311))

(declare-fun m!2720691 () Bool)

(assert (=> bs!457173 m!2720691))

(assert (=> d!677737 d!678311))

(declare-fun d!678315 () Bool)

(declare-fun lt!850811 () Int)

(assert (=> d!678315 (= lt!850811 (size!21481 (list!10688 (_2!16062 lt!850181))))))

(assert (=> d!678315 (= lt!850811 (size!21484 (c!363262 (_2!16062 lt!850181))))))

(assert (=> d!678315 (= (size!21482 (_2!16062 lt!850181)) lt!850811)))

(declare-fun bs!457174 () Bool)

(assert (= bs!457174 d!678315))

(assert (=> bs!457174 m!2719245))

(assert (=> bs!457174 m!2719245))

(declare-fun m!2720693 () Bool)

(assert (=> bs!457174 m!2720693))

(declare-fun m!2720695 () Bool)

(assert (=> bs!457174 m!2720695))

(assert (=> b!2291645 d!678315))

(declare-fun d!678317 () Bool)

(declare-fun lt!850812 () Int)

(assert (=> d!678317 (= lt!850812 (size!21481 (list!10688 (seqFromList!3071 input!1722))))))

(assert (=> d!678317 (= lt!850812 (size!21484 (c!363262 (seqFromList!3071 input!1722))))))

(assert (=> d!678317 (= (size!21482 (seqFromList!3071 input!1722)) lt!850812)))

(declare-fun bs!457175 () Bool)

(assert (= bs!457175 d!678317))

(assert (=> bs!457175 m!2718879))

(assert (=> bs!457175 m!2719247))

(assert (=> bs!457175 m!2719247))

(assert (=> bs!457175 m!2720233))

(declare-fun m!2720703 () Bool)

(assert (=> bs!457175 m!2720703))

(assert (=> b!2291645 d!678317))

(declare-fun b!2292683 () Bool)

(declare-fun res!980428 () Bool)

(declare-fun e!1469061 () Bool)

(assert (=> b!2292683 (=> (not res!980428) (not e!1469061))))

(assert (=> b!2292683 (= res!980428 (= (head!4998 (tail!3311 lt!850069)) (head!4998 (tail!3311 input!1722))))))

(declare-fun d!678319 () Bool)

(declare-fun e!1469060 () Bool)

(assert (=> d!678319 e!1469060))

(declare-fun res!980430 () Bool)

(assert (=> d!678319 (=> res!980430 e!1469060)))

(declare-fun lt!850813 () Bool)

(assert (=> d!678319 (= res!980430 (not lt!850813))))

(declare-fun e!1469059 () Bool)

(assert (=> d!678319 (= lt!850813 e!1469059)))

(declare-fun res!980427 () Bool)

(assert (=> d!678319 (=> res!980427 e!1469059)))

(assert (=> d!678319 (= res!980427 ((_ is Nil!27285) (tail!3311 lt!850069)))))

(assert (=> d!678319 (= (isPrefix!2357 (tail!3311 lt!850069) (tail!3311 input!1722)) lt!850813)))

(declare-fun b!2292682 () Bool)

(assert (=> b!2292682 (= e!1469059 e!1469061)))

(declare-fun res!980429 () Bool)

(assert (=> b!2292682 (=> (not res!980429) (not e!1469061))))

(assert (=> b!2292682 (= res!980429 (not ((_ is Nil!27285) (tail!3311 input!1722))))))

(declare-fun b!2292684 () Bool)

(assert (=> b!2292684 (= e!1469061 (isPrefix!2357 (tail!3311 (tail!3311 lt!850069)) (tail!3311 (tail!3311 input!1722))))))

(declare-fun b!2292685 () Bool)

(assert (=> b!2292685 (= e!1469060 (>= (size!21481 (tail!3311 input!1722)) (size!21481 (tail!3311 lt!850069))))))

(assert (= (and d!678319 (not res!980427)) b!2292682))

(assert (= (and b!2292682 res!980429) b!2292683))

(assert (= (and b!2292683 res!980428) b!2292684))

(assert (= (and d!678319 (not res!980430)) b!2292685))

(assert (=> b!2292683 m!2718949))

(assert (=> b!2292683 m!2720249))

(assert (=> b!2292683 m!2719257))

(assert (=> b!2292683 m!2719923))

(assert (=> b!2292684 m!2718949))

(assert (=> b!2292684 m!2720245))

(assert (=> b!2292684 m!2719257))

(assert (=> b!2292684 m!2719927))

(assert (=> b!2292684 m!2720245))

(assert (=> b!2292684 m!2719927))

(declare-fun m!2720711 () Bool)

(assert (=> b!2292684 m!2720711))

(assert (=> b!2292685 m!2719257))

(assert (=> b!2292685 m!2719931))

(assert (=> b!2292685 m!2718949))

(assert (=> b!2292685 m!2720627))

(assert (=> b!2291712 d!678319))

(assert (=> b!2291712 d!678161))

(assert (=> b!2291712 d!677995))

(declare-fun b!2292687 () Bool)

(declare-fun e!1469063 () Bool)

(declare-fun tp!726646 () Bool)

(assert (=> b!2292687 (= e!1469063 (and tp_is_empty!10651 tp!726646))))

(assert (=> b!2291892 (= tp!726635 e!1469063)))

(assert (= (and b!2291892 ((_ is Cons!27285) (t!204671 (t!204671 input!1722)))) b!2292687))

(declare-fun tp!726654 () Bool)

(declare-fun tp!726655 () Bool)

(declare-fun e!1469068 () Bool)

(declare-fun b!2292696 () Bool)

(assert (=> b!2292696 (= e!1469068 (and (inv!36889 (left!20682 (c!363262 (dynLambda!11843 (toChars!6016 (transformation!4367 (rule!6703 (h!32689 tokens!456)))) (value!138279 (h!32689 tokens!456)))))) tp!726655 (inv!36889 (right!21012 (c!363262 (dynLambda!11843 (toChars!6016 (transformation!4367 (rule!6703 (h!32689 tokens!456)))) (value!138279 (h!32689 tokens!456)))))) tp!726654))))

(declare-fun b!2292698 () Bool)

(declare-fun e!1469069 () Bool)

(declare-fun tp!726653 () Bool)

(assert (=> b!2292698 (= e!1469069 tp!726653)))

(declare-fun b!2292697 () Bool)

(declare-fun inv!36896 (IArray!17769) Bool)

(assert (=> b!2292697 (= e!1469068 (and (inv!36896 (xs!11824 (c!363262 (dynLambda!11843 (toChars!6016 (transformation!4367 (rule!6703 (h!32689 tokens!456)))) (value!138279 (h!32689 tokens!456)))))) e!1469069))))

(assert (=> b!2291709 (= tp!726509 (and (inv!36889 (c!363262 (dynLambda!11843 (toChars!6016 (transformation!4367 (rule!6703 (h!32689 tokens!456)))) (value!138279 (h!32689 tokens!456))))) e!1469068))))

(assert (= (and b!2291709 ((_ is Node!8882) (c!363262 (dynLambda!11843 (toChars!6016 (transformation!4367 (rule!6703 (h!32689 tokens!456)))) (value!138279 (h!32689 tokens!456)))))) b!2292696))

(assert (= b!2292697 b!2292698))

(assert (= (and b!2291709 ((_ is Leaf!13051) (c!363262 (dynLambda!11843 (toChars!6016 (transformation!4367 (rule!6703 (h!32689 tokens!456)))) (value!138279 (h!32689 tokens!456)))))) b!2292697))

(declare-fun m!2720715 () Bool)

(assert (=> b!2292696 m!2720715))

(declare-fun m!2720717 () Bool)

(assert (=> b!2292696 m!2720717))

(declare-fun m!2720719 () Bool)

(assert (=> b!2292697 m!2720719))

(assert (=> b!2291709 m!2719335))

(declare-fun tp!726657 () Bool)

(declare-fun tp!726658 () Bool)

(declare-fun e!1469072 () Bool)

(declare-fun b!2292703 () Bool)

(assert (=> b!2292703 (= e!1469072 (and (inv!36889 (left!20682 (c!363262 (dynLambda!11843 (toChars!6016 (transformation!4367 (rule!6703 (head!4996 tokens!456)))) (value!138279 (head!4996 tokens!456)))))) tp!726658 (inv!36889 (right!21012 (c!363262 (dynLambda!11843 (toChars!6016 (transformation!4367 (rule!6703 (head!4996 tokens!456)))) (value!138279 (head!4996 tokens!456)))))) tp!726657))))

(declare-fun b!2292705 () Bool)

(declare-fun e!1469073 () Bool)

(declare-fun tp!726656 () Bool)

(assert (=> b!2292705 (= e!1469073 tp!726656)))

(declare-fun b!2292704 () Bool)

(assert (=> b!2292704 (= e!1469072 (and (inv!36896 (xs!11824 (c!363262 (dynLambda!11843 (toChars!6016 (transformation!4367 (rule!6703 (head!4996 tokens!456)))) (value!138279 (head!4996 tokens!456)))))) e!1469073))))

(assert (=> b!2291397 (= tp!726507 (and (inv!36889 (c!363262 (dynLambda!11843 (toChars!6016 (transformation!4367 (rule!6703 (head!4996 tokens!456)))) (value!138279 (head!4996 tokens!456))))) e!1469072))))

(assert (= (and b!2291397 ((_ is Node!8882) (c!363262 (dynLambda!11843 (toChars!6016 (transformation!4367 (rule!6703 (head!4996 tokens!456)))) (value!138279 (head!4996 tokens!456)))))) b!2292703))

(assert (= b!2292704 b!2292705))

(assert (= (and b!2291397 ((_ is Leaf!13051) (c!363262 (dynLambda!11843 (toChars!6016 (transformation!4367 (rule!6703 (head!4996 tokens!456)))) (value!138279 (head!4996 tokens!456)))))) b!2292704))

(declare-fun m!2720721 () Bool)

(assert (=> b!2292703 m!2720721))

(declare-fun m!2720723 () Bool)

(assert (=> b!2292703 m!2720723))

(declare-fun m!2720725 () Bool)

(assert (=> b!2292704 m!2720725))

(assert (=> b!2291397 m!2718979))

(declare-fun b!2292707 () Bool)

(declare-fun e!1469074 () Bool)

(declare-fun tp!726659 () Bool)

(declare-fun tp!726660 () Bool)

(assert (=> b!2292707 (= e!1469074 (and tp!726659 tp!726660))))

(declare-fun b!2292709 () Bool)

(declare-fun tp!726662 () Bool)

(declare-fun tp!726663 () Bool)

(assert (=> b!2292709 (= e!1469074 (and tp!726662 tp!726663))))

(declare-fun b!2292706 () Bool)

(assert (=> b!2292706 (= e!1469074 tp_is_empty!10651)))

(declare-fun b!2292708 () Bool)

(declare-fun tp!726661 () Bool)

(assert (=> b!2292708 (= e!1469074 tp!726661)))

(assert (=> b!2291891 (= tp!726633 e!1469074)))

(assert (= (and b!2291891 ((_ is ElementMatch!6715) (regOne!13943 (regex!4367 (rule!6703 (h!32689 tokens!456)))))) b!2292706))

(assert (= (and b!2291891 ((_ is Concat!11245) (regOne!13943 (regex!4367 (rule!6703 (h!32689 tokens!456)))))) b!2292707))

(assert (= (and b!2291891 ((_ is Star!6715) (regOne!13943 (regex!4367 (rule!6703 (h!32689 tokens!456)))))) b!2292708))

(assert (= (and b!2291891 ((_ is Union!6715) (regOne!13943 (regex!4367 (rule!6703 (h!32689 tokens!456)))))) b!2292709))

(declare-fun b!2292711 () Bool)

(declare-fun e!1469075 () Bool)

(declare-fun tp!726664 () Bool)

(declare-fun tp!726665 () Bool)

(assert (=> b!2292711 (= e!1469075 (and tp!726664 tp!726665))))

(declare-fun b!2292713 () Bool)

(declare-fun tp!726667 () Bool)

(declare-fun tp!726668 () Bool)

(assert (=> b!2292713 (= e!1469075 (and tp!726667 tp!726668))))

(declare-fun b!2292710 () Bool)

(assert (=> b!2292710 (= e!1469075 tp_is_empty!10651)))

(declare-fun b!2292712 () Bool)

(declare-fun tp!726666 () Bool)

(assert (=> b!2292712 (= e!1469075 tp!726666)))

(assert (=> b!2291891 (= tp!726634 e!1469075)))

(assert (= (and b!2291891 ((_ is ElementMatch!6715) (regTwo!13943 (regex!4367 (rule!6703 (h!32689 tokens!456)))))) b!2292710))

(assert (= (and b!2291891 ((_ is Concat!11245) (regTwo!13943 (regex!4367 (rule!6703 (h!32689 tokens!456)))))) b!2292711))

(assert (= (and b!2291891 ((_ is Star!6715) (regTwo!13943 (regex!4367 (rule!6703 (h!32689 tokens!456)))))) b!2292712))

(assert (= (and b!2291891 ((_ is Union!6715) (regTwo!13943 (regex!4367 (rule!6703 (h!32689 tokens!456)))))) b!2292713))

(declare-fun b!2292716 () Bool)

(declare-fun e!1469077 () Bool)

(declare-fun tp!726669 () Bool)

(assert (=> b!2292716 (= e!1469077 (and tp_is_empty!10651 tp!726669))))

(assert (=> b!2291873 (= tp!726614 e!1469077)))

(assert (= (and b!2291873 ((_ is Cons!27285) (t!204671 (originalCharacters!5137 (h!32689 tokens!456))))) b!2292716))

(declare-fun b!2292718 () Bool)

(declare-fun e!1469078 () Bool)

(declare-fun tp!726670 () Bool)

(declare-fun tp!726671 () Bool)

(assert (=> b!2292718 (= e!1469078 (and tp!726670 tp!726671))))

(declare-fun b!2292720 () Bool)

(declare-fun tp!726673 () Bool)

(declare-fun tp!726674 () Bool)

(assert (=> b!2292720 (= e!1469078 (and tp!726673 tp!726674))))

(declare-fun b!2292717 () Bool)

(assert (=> b!2292717 (= e!1469078 tp_is_empty!10651)))

(declare-fun b!2292719 () Bool)

(declare-fun tp!726672 () Bool)

(assert (=> b!2292719 (= e!1469078 tp!726672)))

(assert (=> b!2291864 (= tp!726605 e!1469078)))

(assert (= (and b!2291864 ((_ is ElementMatch!6715) (regOne!13943 (regex!4367 otherR!12)))) b!2292717))

(assert (= (and b!2291864 ((_ is Concat!11245) (regOne!13943 (regex!4367 otherR!12)))) b!2292718))

(assert (= (and b!2291864 ((_ is Star!6715) (regOne!13943 (regex!4367 otherR!12)))) b!2292719))

(assert (= (and b!2291864 ((_ is Union!6715) (regOne!13943 (regex!4367 otherR!12)))) b!2292720))

(declare-fun b!2292724 () Bool)

(declare-fun e!1469080 () Bool)

(declare-fun tp!726675 () Bool)

(declare-fun tp!726676 () Bool)

(assert (=> b!2292724 (= e!1469080 (and tp!726675 tp!726676))))

(declare-fun b!2292726 () Bool)

(declare-fun tp!726678 () Bool)

(declare-fun tp!726679 () Bool)

(assert (=> b!2292726 (= e!1469080 (and tp!726678 tp!726679))))

(declare-fun b!2292723 () Bool)

(assert (=> b!2292723 (= e!1469080 tp_is_empty!10651)))

(declare-fun b!2292725 () Bool)

(declare-fun tp!726677 () Bool)

(assert (=> b!2292725 (= e!1469080 tp!726677)))

(assert (=> b!2291864 (= tp!726606 e!1469080)))

(assert (= (and b!2291864 ((_ is ElementMatch!6715) (regTwo!13943 (regex!4367 otherR!12)))) b!2292723))

(assert (= (and b!2291864 ((_ is Concat!11245) (regTwo!13943 (regex!4367 otherR!12)))) b!2292724))

(assert (= (and b!2291864 ((_ is Star!6715) (regTwo!13943 (regex!4367 otherR!12)))) b!2292725))

(assert (= (and b!2291864 ((_ is Union!6715) (regTwo!13943 (regex!4367 otherR!12)))) b!2292726))

(declare-fun b!2292730 () Bool)

(declare-fun e!1469082 () Bool)

(declare-fun tp!726680 () Bool)

(declare-fun tp!726681 () Bool)

(assert (=> b!2292730 (= e!1469082 (and tp!726680 tp!726681))))

(declare-fun b!2292732 () Bool)

(declare-fun tp!726683 () Bool)

(declare-fun tp!726684 () Bool)

(assert (=> b!2292732 (= e!1469082 (and tp!726683 tp!726684))))

(declare-fun b!2292729 () Bool)

(assert (=> b!2292729 (= e!1469082 tp_is_empty!10651)))

(declare-fun b!2292731 () Bool)

(declare-fun tp!726682 () Bool)

(assert (=> b!2292731 (= e!1469082 tp!726682)))

(assert (=> b!2291890 (= tp!726632 e!1469082)))

(assert (= (and b!2291890 ((_ is ElementMatch!6715) (reg!7044 (regex!4367 (rule!6703 (h!32689 tokens!456)))))) b!2292729))

(assert (= (and b!2291890 ((_ is Concat!11245) (reg!7044 (regex!4367 (rule!6703 (h!32689 tokens!456)))))) b!2292730))

(assert (= (and b!2291890 ((_ is Star!6715) (reg!7044 (regex!4367 (rule!6703 (h!32689 tokens!456)))))) b!2292731))

(assert (= (and b!2291890 ((_ is Union!6715) (reg!7044 (regex!4367 (rule!6703 (h!32689 tokens!456)))))) b!2292732))

(declare-fun b!2292734 () Bool)

(declare-fun e!1469083 () Bool)

(declare-fun tp!726685 () Bool)

(declare-fun tp!726686 () Bool)

(assert (=> b!2292734 (= e!1469083 (and tp!726685 tp!726686))))

(declare-fun b!2292736 () Bool)

(declare-fun tp!726688 () Bool)

(declare-fun tp!726689 () Bool)

(assert (=> b!2292736 (= e!1469083 (and tp!726688 tp!726689))))

(declare-fun b!2292733 () Bool)

(assert (=> b!2292733 (= e!1469083 tp_is_empty!10651)))

(declare-fun b!2292735 () Bool)

(declare-fun tp!726687 () Bool)

(assert (=> b!2292735 (= e!1469083 tp!726687)))

(assert (=> b!2291889 (= tp!726630 e!1469083)))

(assert (= (and b!2291889 ((_ is ElementMatch!6715) (regOne!13942 (regex!4367 (rule!6703 (h!32689 tokens!456)))))) b!2292733))

(assert (= (and b!2291889 ((_ is Concat!11245) (regOne!13942 (regex!4367 (rule!6703 (h!32689 tokens!456)))))) b!2292734))

(assert (= (and b!2291889 ((_ is Star!6715) (regOne!13942 (regex!4367 (rule!6703 (h!32689 tokens!456)))))) b!2292735))

(assert (= (and b!2291889 ((_ is Union!6715) (regOne!13942 (regex!4367 (rule!6703 (h!32689 tokens!456)))))) b!2292736))

(declare-fun b!2292738 () Bool)

(declare-fun e!1469084 () Bool)

(declare-fun tp!726690 () Bool)

(declare-fun tp!726691 () Bool)

(assert (=> b!2292738 (= e!1469084 (and tp!726690 tp!726691))))

(declare-fun b!2292740 () Bool)

(declare-fun tp!726693 () Bool)

(declare-fun tp!726694 () Bool)

(assert (=> b!2292740 (= e!1469084 (and tp!726693 tp!726694))))

(declare-fun b!2292737 () Bool)

(assert (=> b!2292737 (= e!1469084 tp_is_empty!10651)))

(declare-fun b!2292739 () Bool)

(declare-fun tp!726692 () Bool)

(assert (=> b!2292739 (= e!1469084 tp!726692)))

(assert (=> b!2291889 (= tp!726631 e!1469084)))

(assert (= (and b!2291889 ((_ is ElementMatch!6715) (regTwo!13942 (regex!4367 (rule!6703 (h!32689 tokens!456)))))) b!2292737))

(assert (= (and b!2291889 ((_ is Concat!11245) (regTwo!13942 (regex!4367 (rule!6703 (h!32689 tokens!456)))))) b!2292738))

(assert (= (and b!2291889 ((_ is Star!6715) (regTwo!13942 (regex!4367 (rule!6703 (h!32689 tokens!456)))))) b!2292739))

(assert (= (and b!2291889 ((_ is Union!6715) (regTwo!13942 (regex!4367 (rule!6703 (h!32689 tokens!456)))))) b!2292740))

(declare-fun b!2292742 () Bool)

(declare-fun e!1469085 () Bool)

(declare-fun tp!726695 () Bool)

(declare-fun tp!726696 () Bool)

(assert (=> b!2292742 (= e!1469085 (and tp!726695 tp!726696))))

(declare-fun b!2292744 () Bool)

(declare-fun tp!726698 () Bool)

(declare-fun tp!726699 () Bool)

(assert (=> b!2292744 (= e!1469085 (and tp!726698 tp!726699))))

(declare-fun b!2292741 () Bool)

(assert (=> b!2292741 (= e!1469085 tp_is_empty!10651)))

(declare-fun b!2292743 () Bool)

(declare-fun tp!726697 () Bool)

(assert (=> b!2292743 (= e!1469085 tp!726697)))

(assert (=> b!2291862 (= tp!726602 e!1469085)))

(assert (= (and b!2291862 ((_ is ElementMatch!6715) (regOne!13942 (regex!4367 otherR!12)))) b!2292741))

(assert (= (and b!2291862 ((_ is Concat!11245) (regOne!13942 (regex!4367 otherR!12)))) b!2292742))

(assert (= (and b!2291862 ((_ is Star!6715) (regOne!13942 (regex!4367 otherR!12)))) b!2292743))

(assert (= (and b!2291862 ((_ is Union!6715) (regOne!13942 (regex!4367 otherR!12)))) b!2292744))

(declare-fun b!2292746 () Bool)

(declare-fun e!1469086 () Bool)

(declare-fun tp!726700 () Bool)

(declare-fun tp!726701 () Bool)

(assert (=> b!2292746 (= e!1469086 (and tp!726700 tp!726701))))

(declare-fun b!2292748 () Bool)

(declare-fun tp!726703 () Bool)

(declare-fun tp!726704 () Bool)

(assert (=> b!2292748 (= e!1469086 (and tp!726703 tp!726704))))

(declare-fun b!2292745 () Bool)

(assert (=> b!2292745 (= e!1469086 tp_is_empty!10651)))

(declare-fun b!2292747 () Bool)

(declare-fun tp!726702 () Bool)

(assert (=> b!2292747 (= e!1469086 tp!726702)))

(assert (=> b!2291862 (= tp!726603 e!1469086)))

(assert (= (and b!2291862 ((_ is ElementMatch!6715) (regTwo!13942 (regex!4367 otherR!12)))) b!2292745))

(assert (= (and b!2291862 ((_ is Concat!11245) (regTwo!13942 (regex!4367 otherR!12)))) b!2292746))

(assert (= (and b!2291862 ((_ is Star!6715) (regTwo!13942 (regex!4367 otherR!12)))) b!2292747))

(assert (= (and b!2291862 ((_ is Union!6715) (regTwo!13942 (regex!4367 otherR!12)))) b!2292748))

(declare-fun b!2292750 () Bool)

(declare-fun e!1469087 () Bool)

(declare-fun tp!726705 () Bool)

(declare-fun tp!726706 () Bool)

(assert (=> b!2292750 (= e!1469087 (and tp!726705 tp!726706))))

(declare-fun b!2292752 () Bool)

(declare-fun tp!726708 () Bool)

(declare-fun tp!726709 () Bool)

(assert (=> b!2292752 (= e!1469087 (and tp!726708 tp!726709))))

(declare-fun b!2292749 () Bool)

(assert (=> b!2292749 (= e!1469087 tp_is_empty!10651)))

(declare-fun b!2292751 () Bool)

(declare-fun tp!726707 () Bool)

(assert (=> b!2292751 (= e!1469087 tp!726707)))

(assert (=> b!2291863 (= tp!726604 e!1469087)))

(assert (= (and b!2291863 ((_ is ElementMatch!6715) (reg!7044 (regex!4367 otherR!12)))) b!2292749))

(assert (= (and b!2291863 ((_ is Concat!11245) (reg!7044 (regex!4367 otherR!12)))) b!2292750))

(assert (= (and b!2291863 ((_ is Star!6715) (reg!7044 (regex!4367 otherR!12)))) b!2292751))

(assert (= (and b!2291863 ((_ is Union!6715) (reg!7044 (regex!4367 otherR!12)))) b!2292752))

(declare-fun b!2292754 () Bool)

(declare-fun e!1469088 () Bool)

(declare-fun tp!726710 () Bool)

(declare-fun tp!726711 () Bool)

(assert (=> b!2292754 (= e!1469088 (and tp!726710 tp!726711))))

(declare-fun b!2292756 () Bool)

(declare-fun tp!726713 () Bool)

(declare-fun tp!726714 () Bool)

(assert (=> b!2292756 (= e!1469088 (and tp!726713 tp!726714))))

(declare-fun b!2292753 () Bool)

(assert (=> b!2292753 (= e!1469088 tp_is_empty!10651)))

(declare-fun b!2292755 () Bool)

(declare-fun tp!726712 () Bool)

(assert (=> b!2292755 (= e!1469088 tp!726712)))

(assert (=> b!2291849 (= tp!726588 e!1469088)))

(assert (= (and b!2291849 ((_ is ElementMatch!6715) (regOne!13943 (regex!4367 r!2363)))) b!2292753))

(assert (= (and b!2291849 ((_ is Concat!11245) (regOne!13943 (regex!4367 r!2363)))) b!2292754))

(assert (= (and b!2291849 ((_ is Star!6715) (regOne!13943 (regex!4367 r!2363)))) b!2292755))

(assert (= (and b!2291849 ((_ is Union!6715) (regOne!13943 (regex!4367 r!2363)))) b!2292756))

(declare-fun b!2292758 () Bool)

(declare-fun e!1469089 () Bool)

(declare-fun tp!726715 () Bool)

(declare-fun tp!726716 () Bool)

(assert (=> b!2292758 (= e!1469089 (and tp!726715 tp!726716))))

(declare-fun b!2292760 () Bool)

(declare-fun tp!726718 () Bool)

(declare-fun tp!726719 () Bool)

(assert (=> b!2292760 (= e!1469089 (and tp!726718 tp!726719))))

(declare-fun b!2292757 () Bool)

(assert (=> b!2292757 (= e!1469089 tp_is_empty!10651)))

(declare-fun b!2292759 () Bool)

(declare-fun tp!726717 () Bool)

(assert (=> b!2292759 (= e!1469089 tp!726717)))

(assert (=> b!2291849 (= tp!726589 e!1469089)))

(assert (= (and b!2291849 ((_ is ElementMatch!6715) (regTwo!13943 (regex!4367 r!2363)))) b!2292757))

(assert (= (and b!2291849 ((_ is Concat!11245) (regTwo!13943 (regex!4367 r!2363)))) b!2292758))

(assert (= (and b!2291849 ((_ is Star!6715) (regTwo!13943 (regex!4367 r!2363)))) b!2292759))

(assert (= (and b!2291849 ((_ is Union!6715) (regTwo!13943 (regex!4367 r!2363)))) b!2292760))

(declare-fun b!2292762 () Bool)

(declare-fun e!1469090 () Bool)

(declare-fun tp!726720 () Bool)

(declare-fun tp!726721 () Bool)

(assert (=> b!2292762 (= e!1469090 (and tp!726720 tp!726721))))

(declare-fun b!2292764 () Bool)

(declare-fun tp!726723 () Bool)

(declare-fun tp!726724 () Bool)

(assert (=> b!2292764 (= e!1469090 (and tp!726723 tp!726724))))

(declare-fun b!2292761 () Bool)

(assert (=> b!2292761 (= e!1469090 tp_is_empty!10651)))

(declare-fun b!2292763 () Bool)

(declare-fun tp!726722 () Bool)

(assert (=> b!2292763 (= e!1469090 tp!726722)))

(assert (=> b!2291848 (= tp!726587 e!1469090)))

(assert (= (and b!2291848 ((_ is ElementMatch!6715) (reg!7044 (regex!4367 r!2363)))) b!2292761))

(assert (= (and b!2291848 ((_ is Concat!11245) (reg!7044 (regex!4367 r!2363)))) b!2292762))

(assert (= (and b!2291848 ((_ is Star!6715) (reg!7044 (regex!4367 r!2363)))) b!2292763))

(assert (= (and b!2291848 ((_ is Union!6715) (reg!7044 (regex!4367 r!2363)))) b!2292764))

(declare-fun b!2292765 () Bool)

(declare-fun e!1469091 () Bool)

(declare-fun tp!726726 () Bool)

(declare-fun tp!726727 () Bool)

(assert (=> b!2292765 (= e!1469091 (and (inv!36889 (left!20682 (c!363262 (dynLambda!11843 (toChars!6016 (transformation!4367 r!2363)) (dynLambda!11848 (toValue!6157 (transformation!4367 r!2363)) lt!850059))))) tp!726727 (inv!36889 (right!21012 (c!363262 (dynLambda!11843 (toChars!6016 (transformation!4367 r!2363)) (dynLambda!11848 (toValue!6157 (transformation!4367 r!2363)) lt!850059))))) tp!726726))))

(declare-fun b!2292767 () Bool)

(declare-fun e!1469092 () Bool)

(declare-fun tp!726725 () Bool)

(assert (=> b!2292767 (= e!1469092 tp!726725)))

(declare-fun b!2292766 () Bool)

(assert (=> b!2292766 (= e!1469091 (and (inv!36896 (xs!11824 (c!363262 (dynLambda!11843 (toChars!6016 (transformation!4367 r!2363)) (dynLambda!11848 (toValue!6157 (transformation!4367 r!2363)) lt!850059))))) e!1469092))))

(assert (=> b!2291825 (= tp!726574 (and (inv!36889 (c!363262 (dynLambda!11843 (toChars!6016 (transformation!4367 r!2363)) (dynLambda!11848 (toValue!6157 (transformation!4367 r!2363)) lt!850059)))) e!1469091))))

(assert (= (and b!2291825 ((_ is Node!8882) (c!363262 (dynLambda!11843 (toChars!6016 (transformation!4367 r!2363)) (dynLambda!11848 (toValue!6157 (transformation!4367 r!2363)) lt!850059))))) b!2292765))

(assert (= b!2292766 b!2292767))

(assert (= (and b!2291825 ((_ is Leaf!13051) (c!363262 (dynLambda!11843 (toChars!6016 (transformation!4367 r!2363)) (dynLambda!11848 (toValue!6157 (transformation!4367 r!2363)) lt!850059))))) b!2292766))

(declare-fun m!2720737 () Bool)

(assert (=> b!2292765 m!2720737))

(declare-fun m!2720739 () Bool)

(assert (=> b!2292765 m!2720739))

(declare-fun m!2720741 () Bool)

(assert (=> b!2292766 m!2720741))

(assert (=> b!2291825 m!2719439))

(declare-fun b!2292769 () Bool)

(declare-fun e!1469093 () Bool)

(declare-fun tp!726728 () Bool)

(declare-fun tp!726729 () Bool)

(assert (=> b!2292769 (= e!1469093 (and tp!726728 tp!726729))))

(declare-fun b!2292771 () Bool)

(declare-fun tp!726731 () Bool)

(declare-fun tp!726732 () Bool)

(assert (=> b!2292771 (= e!1469093 (and tp!726731 tp!726732))))

(declare-fun b!2292768 () Bool)

(assert (=> b!2292768 (= e!1469093 tp_is_empty!10651)))

(declare-fun b!2292770 () Bool)

(declare-fun tp!726730 () Bool)

(assert (=> b!2292770 (= e!1469093 tp!726730)))

(assert (=> b!2291859 (= tp!726601 e!1469093)))

(assert (= (and b!2291859 ((_ is ElementMatch!6715) (regex!4367 (h!32688 (t!204673 rules!1750))))) b!2292768))

(assert (= (and b!2291859 ((_ is Concat!11245) (regex!4367 (h!32688 (t!204673 rules!1750))))) b!2292769))

(assert (= (and b!2291859 ((_ is Star!6715) (regex!4367 (h!32688 (t!204673 rules!1750))))) b!2292770))

(assert (= (and b!2291859 ((_ is Union!6715) (regex!4367 (h!32688 (t!204673 rules!1750))))) b!2292771))

(declare-fun b!2292773 () Bool)

(declare-fun e!1469094 () Bool)

(declare-fun tp!726733 () Bool)

(declare-fun tp!726734 () Bool)

(assert (=> b!2292773 (= e!1469094 (and tp!726733 tp!726734))))

(declare-fun b!2292775 () Bool)

(declare-fun tp!726736 () Bool)

(declare-fun tp!726737 () Bool)

(assert (=> b!2292775 (= e!1469094 (and tp!726736 tp!726737))))

(declare-fun b!2292772 () Bool)

(assert (=> b!2292772 (= e!1469094 tp_is_empty!10651)))

(declare-fun b!2292774 () Bool)

(declare-fun tp!726735 () Bool)

(assert (=> b!2292774 (= e!1469094 tp!726735)))

(assert (=> b!2291847 (= tp!726585 e!1469094)))

(assert (= (and b!2291847 ((_ is ElementMatch!6715) (regOne!13942 (regex!4367 r!2363)))) b!2292772))

(assert (= (and b!2291847 ((_ is Concat!11245) (regOne!13942 (regex!4367 r!2363)))) b!2292773))

(assert (= (and b!2291847 ((_ is Star!6715) (regOne!13942 (regex!4367 r!2363)))) b!2292774))

(assert (= (and b!2291847 ((_ is Union!6715) (regOne!13942 (regex!4367 r!2363)))) b!2292775))

(declare-fun b!2292779 () Bool)

(declare-fun e!1469097 () Bool)

(declare-fun tp!726738 () Bool)

(declare-fun tp!726739 () Bool)

(assert (=> b!2292779 (= e!1469097 (and tp!726738 tp!726739))))

(declare-fun b!2292781 () Bool)

(declare-fun tp!726741 () Bool)

(declare-fun tp!726742 () Bool)

(assert (=> b!2292781 (= e!1469097 (and tp!726741 tp!726742))))

(declare-fun b!2292778 () Bool)

(assert (=> b!2292778 (= e!1469097 tp_is_empty!10651)))

(declare-fun b!2292780 () Bool)

(declare-fun tp!726740 () Bool)

(assert (=> b!2292780 (= e!1469097 tp!726740)))

(assert (=> b!2291847 (= tp!726586 e!1469097)))

(assert (= (and b!2291847 ((_ is ElementMatch!6715) (regTwo!13942 (regex!4367 r!2363)))) b!2292778))

(assert (= (and b!2291847 ((_ is Concat!11245) (regTwo!13942 (regex!4367 r!2363)))) b!2292779))

(assert (= (and b!2291847 ((_ is Star!6715) (regTwo!13942 (regex!4367 r!2363)))) b!2292780))

(assert (= (and b!2291847 ((_ is Union!6715) (regTwo!13942 (regex!4367 r!2363)))) b!2292781))

(declare-fun b!2292782 () Bool)

(declare-fun e!1469098 () Bool)

(declare-fun tp!726743 () Bool)

(assert (=> b!2292782 (= e!1469098 (and tp_is_empty!10651 tp!726743))))

(assert (=> b!2291885 (= tp!726625 e!1469098)))

(assert (= (and b!2291885 ((_ is Cons!27285) (originalCharacters!5137 (h!32689 (t!204674 tokens!456))))) b!2292782))

(declare-fun b!2292785 () Bool)

(declare-fun b_free!68909 () Bool)

(declare-fun b_next!69613 () Bool)

(assert (=> b!2292785 (= b_free!68909 (not b_next!69613))))

(declare-fun t!204959 () Bool)

(declare-fun tb!136819 () Bool)

(assert (=> (and b!2292785 (= (toValue!6157 (transformation!4367 (h!32688 (t!204673 (t!204673 rules!1750))))) (toValue!6157 (transformation!4367 r!2363))) t!204959) tb!136819))

(declare-fun result!166804 () Bool)

(assert (= result!166804 result!166548))

(assert (=> d!677849 t!204959))

(declare-fun t!204961 () Bool)

(declare-fun tb!136821 () Bool)

(assert (=> (and b!2292785 (= (toValue!6157 (transformation!4367 (h!32688 (t!204673 (t!204673 rules!1750))))) (toValue!6157 (transformation!4367 (rule!6703 (_1!16061 (get!8230 lt!850118)))))) t!204961) tb!136821))

(declare-fun result!166806 () Bool)

(assert (= result!166806 result!166670))

(assert (=> d!678019 t!204961))

(assert (=> d!677833 t!204959))

(declare-fun t!204963 () Bool)

(declare-fun tb!136823 () Bool)

(assert (=> (and b!2292785 (= (toValue!6157 (transformation!4367 (h!32688 (t!204673 (t!204673 rules!1750))))) (toValue!6157 (transformation!4367 r!2363))) t!204963) tb!136823))

(declare-fun result!166808 () Bool)

(assert (= result!166808 result!166754))

(assert (=> d!678253 t!204963))

(declare-fun tb!136825 () Bool)

(declare-fun t!204965 () Bool)

(assert (=> (and b!2292785 (= (toValue!6157 (transformation!4367 (h!32688 (t!204673 (t!204673 rules!1750))))) (toValue!6157 (transformation!4367 (rule!6703 (_1!16061 (get!8230 lt!850231)))))) t!204965) tb!136825))

(declare-fun result!166810 () Bool)

(assert (= result!166810 result!166694))

(assert (=> d!678029 t!204965))

(assert (=> d!678235 t!204963))

(declare-fun t!204967 () Bool)

(declare-fun tb!136827 () Bool)

(assert (=> (and b!2292785 (= (toValue!6157 (transformation!4367 (h!32688 (t!204673 (t!204673 rules!1750))))) (toValue!6157 (transformation!4367 r!2363))) t!204967) tb!136827))

(declare-fun result!166812 () Bool)

(assert (= result!166812 result!166682))

(assert (=> d!678027 t!204967))

(declare-fun b_and!182205 () Bool)

(declare-fun tp!726746 () Bool)

(assert (=> b!2292785 (= tp!726746 (and (=> t!204967 result!166812) (=> t!204961 result!166806) (=> t!204959 result!166804) (=> t!204963 result!166808) (=> t!204965 result!166810) b_and!182205))))

(declare-fun b_free!68911 () Bool)

(declare-fun b_next!69615 () Bool)

(assert (=> b!2292785 (= b_free!68911 (not b_next!69615))))

(declare-fun tb!136829 () Bool)

(declare-fun t!204969 () Bool)

(assert (=> (and b!2292785 (= (toChars!6016 (transformation!4367 (h!32688 (t!204673 (t!204673 rules!1750))))) (toChars!6016 (transformation!4367 (rule!6703 (h!32689 (t!204674 tokens!456)))))) t!204969) tb!136829))

(declare-fun result!166814 () Bool)

(assert (= result!166814 result!166730))

(assert (=> b!2292561 t!204969))

(declare-fun tb!136831 () Bool)

(declare-fun t!204971 () Bool)

(assert (=> (and b!2292785 (= (toChars!6016 (transformation!4367 (h!32688 (t!204673 (t!204673 rules!1750))))) (toChars!6016 (transformation!4367 (rule!6703 (_1!16061 (get!8230 lt!850231)))))) t!204971) tb!136831))

(declare-fun result!166816 () Bool)

(assert (= result!166816 result!166706))

(assert (=> d!678169 t!204971))

(declare-fun t!204973 () Bool)

(declare-fun tb!136833 () Bool)

(assert (=> (and b!2292785 (= (toChars!6016 (transformation!4367 (h!32688 (t!204673 (t!204673 rules!1750))))) (toChars!6016 (transformation!4367 (rule!6703 (_1!16061 (get!8230 lt!850118)))))) t!204973) tb!136833))

(declare-fun result!166818 () Bool)

(assert (= result!166818 result!166718))

(assert (=> d!678209 t!204973))

(declare-fun tb!136835 () Bool)

(declare-fun t!204975 () Bool)

(assert (=> (and b!2292785 (= (toChars!6016 (transformation!4367 (h!32688 (t!204673 (t!204673 rules!1750))))) (toChars!6016 (transformation!4367 (rule!6703 (head!4996 tokens!456))))) t!204975) tb!136835))

(declare-fun result!166820 () Bool)

(assert (= result!166820 result!166512))

(assert (=> d!677699 t!204975))

(declare-fun t!204977 () Bool)

(declare-fun tb!136837 () Bool)

(assert (=> (and b!2292785 (= (toChars!6016 (transformation!4367 (h!32688 (t!204673 (t!204673 rules!1750))))) (toChars!6016 (transformation!4367 (rule!6703 (h!32689 tokens!456))))) t!204977) tb!136837))

(declare-fun result!166822 () Bool)

(assert (= result!166822 result!166540))

(assert (=> b!2291830 t!204977))

(declare-fun t!204979 () Bool)

(declare-fun tb!136839 () Bool)

(assert (=> (and b!2292785 (= (toChars!6016 (transformation!4367 (h!32688 (t!204673 (t!204673 rules!1750))))) (toChars!6016 (transformation!4367 r!2363))) t!204979) tb!136839))

(declare-fun result!166824 () Bool)

(assert (= result!166824 result!166742))

(assert (=> d!678235 t!204979))

(assert (=> d!677829 t!204977))

(declare-fun t!204981 () Bool)

(declare-fun tb!136841 () Bool)

(assert (=> (and b!2292785 (= (toChars!6016 (transformation!4367 (h!32688 (t!204673 (t!204673 rules!1750))))) (toChars!6016 (transformation!4367 r!2363))) t!204981) tb!136841))

(declare-fun result!166826 () Bool)

(assert (= result!166826 result!166590))

(assert (=> d!677849 t!204981))

(declare-fun b_and!182207 () Bool)

(declare-fun tp!726744 () Bool)

(assert (=> b!2292785 (= tp!726744 (and (=> t!204979 result!166824) (=> t!204973 result!166818) (=> t!204977 result!166822) (=> t!204981 result!166826) (=> t!204971 result!166816) (=> t!204975 result!166820) (=> t!204969 result!166814) b_and!182207))))

(declare-fun e!1469102 () Bool)

(assert (=> b!2292785 (= e!1469102 (and tp!726746 tp!726744))))

(declare-fun b!2292784 () Bool)

(declare-fun e!1469100 () Bool)

(declare-fun tp!726747 () Bool)

(assert (=> b!2292784 (= e!1469100 (and tp!726747 (inv!36882 (tag!4857 (h!32688 (t!204673 (t!204673 rules!1750))))) (inv!36885 (transformation!4367 (h!32688 (t!204673 (t!204673 rules!1750))))) e!1469102))))

(declare-fun b!2292783 () Bool)

(declare-fun e!1469099 () Bool)

(declare-fun tp!726745 () Bool)

(assert (=> b!2292783 (= e!1469099 (and e!1469100 tp!726745))))

(assert (=> b!2291858 (= tp!726599 e!1469099)))

(assert (= b!2292784 b!2292785))

(assert (= b!2292783 b!2292784))

(assert (= (and b!2291858 ((_ is Cons!27287) (t!204673 (t!204673 rules!1750)))) b!2292783))

(declare-fun m!2720759 () Bool)

(assert (=> b!2292784 m!2720759))

(declare-fun m!2720761 () Bool)

(assert (=> b!2292784 m!2720761))

(declare-fun b!2292795 () Bool)

(declare-fun e!1469108 () Bool)

(declare-fun tp!726748 () Bool)

(declare-fun tp!726749 () Bool)

(assert (=> b!2292795 (= e!1469108 (and tp!726748 tp!726749))))

(declare-fun b!2292798 () Bool)

(declare-fun tp!726751 () Bool)

(declare-fun tp!726752 () Bool)

(assert (=> b!2292798 (= e!1469108 (and tp!726751 tp!726752))))

(declare-fun b!2292794 () Bool)

(assert (=> b!2292794 (= e!1469108 tp_is_empty!10651)))

(declare-fun b!2292796 () Bool)

(declare-fun tp!726750 () Bool)

(assert (=> b!2292796 (= e!1469108 tp!726750)))

(assert (=> b!2291886 (= tp!726627 e!1469108)))

(assert (= (and b!2291886 ((_ is ElementMatch!6715) (regex!4367 (rule!6703 (h!32689 (t!204674 tokens!456)))))) b!2292794))

(assert (= (and b!2291886 ((_ is Concat!11245) (regex!4367 (rule!6703 (h!32689 (t!204674 tokens!456)))))) b!2292795))

(assert (= (and b!2291886 ((_ is Star!6715) (regex!4367 (rule!6703 (h!32689 (t!204674 tokens!456)))))) b!2292796))

(assert (= (and b!2291886 ((_ is Union!6715) (regex!4367 (rule!6703 (h!32689 (t!204674 tokens!456)))))) b!2292798))

(declare-fun b!2292800 () Bool)

(declare-fun e!1469110 () Bool)

(declare-fun tp!726753 () Bool)

(assert (=> b!2292800 (= e!1469110 (and tp_is_empty!10651 tp!726753))))

(assert (=> b!2291894 (= tp!726637 e!1469110)))

(assert (= (and b!2291894 ((_ is Cons!27285) (t!204671 (t!204671 otherP!12)))) b!2292800))

(declare-fun b!2292802 () Bool)

(declare-fun e!1469111 () Bool)

(declare-fun tp!726754 () Bool)

(declare-fun tp!726755 () Bool)

(assert (=> b!2292802 (= e!1469111 (and tp!726754 tp!726755))))

(declare-fun b!2292804 () Bool)

(declare-fun tp!726757 () Bool)

(declare-fun tp!726758 () Bool)

(assert (=> b!2292804 (= e!1469111 (and tp!726757 tp!726758))))

(declare-fun b!2292801 () Bool)

(assert (=> b!2292801 (= e!1469111 tp_is_empty!10651)))

(declare-fun b!2292803 () Bool)

(declare-fun tp!726756 () Bool)

(assert (=> b!2292803 (= e!1469111 tp!726756)))

(assert (=> b!2291866 (= tp!726607 e!1469111)))

(assert (= (and b!2291866 ((_ is ElementMatch!6715) (regOne!13942 (regex!4367 (h!32688 rules!1750))))) b!2292801))

(assert (= (and b!2291866 ((_ is Concat!11245) (regOne!13942 (regex!4367 (h!32688 rules!1750))))) b!2292802))

(assert (= (and b!2291866 ((_ is Star!6715) (regOne!13942 (regex!4367 (h!32688 rules!1750))))) b!2292803))

(assert (= (and b!2291866 ((_ is Union!6715) (regOne!13942 (regex!4367 (h!32688 rules!1750))))) b!2292804))

(declare-fun b!2292806 () Bool)

(declare-fun e!1469112 () Bool)

(declare-fun tp!726759 () Bool)

(declare-fun tp!726760 () Bool)

(assert (=> b!2292806 (= e!1469112 (and tp!726759 tp!726760))))

(declare-fun b!2292808 () Bool)

(declare-fun tp!726762 () Bool)

(declare-fun tp!726763 () Bool)

(assert (=> b!2292808 (= e!1469112 (and tp!726762 tp!726763))))

(declare-fun b!2292805 () Bool)

(assert (=> b!2292805 (= e!1469112 tp_is_empty!10651)))

(declare-fun b!2292807 () Bool)

(declare-fun tp!726761 () Bool)

(assert (=> b!2292807 (= e!1469112 tp!726761)))

(assert (=> b!2291866 (= tp!726608 e!1469112)))

(assert (= (and b!2291866 ((_ is ElementMatch!6715) (regTwo!13942 (regex!4367 (h!32688 rules!1750))))) b!2292805))

(assert (= (and b!2291866 ((_ is Concat!11245) (regTwo!13942 (regex!4367 (h!32688 rules!1750))))) b!2292806))

(assert (= (and b!2291866 ((_ is Star!6715) (regTwo!13942 (regex!4367 (h!32688 rules!1750))))) b!2292807))

(assert (= (and b!2291866 ((_ is Union!6715) (regTwo!13942 (regex!4367 (h!32688 rules!1750))))) b!2292808))

(declare-fun b!2292810 () Bool)

(declare-fun e!1469113 () Bool)

(declare-fun tp!726764 () Bool)

(declare-fun tp!726765 () Bool)

(assert (=> b!2292810 (= e!1469113 (and tp!726764 tp!726765))))

(declare-fun b!2292812 () Bool)

(declare-fun tp!726767 () Bool)

(declare-fun tp!726768 () Bool)

(assert (=> b!2292812 (= e!1469113 (and tp!726767 tp!726768))))

(declare-fun b!2292809 () Bool)

(assert (=> b!2292809 (= e!1469113 tp_is_empty!10651)))

(declare-fun b!2292811 () Bool)

(declare-fun tp!726766 () Bool)

(assert (=> b!2292811 (= e!1469113 tp!726766)))

(assert (=> b!2291868 (= tp!726610 e!1469113)))

(assert (= (and b!2291868 ((_ is ElementMatch!6715) (regOne!13943 (regex!4367 (h!32688 rules!1750))))) b!2292809))

(assert (= (and b!2291868 ((_ is Concat!11245) (regOne!13943 (regex!4367 (h!32688 rules!1750))))) b!2292810))

(assert (= (and b!2291868 ((_ is Star!6715) (regOne!13943 (regex!4367 (h!32688 rules!1750))))) b!2292811))

(assert (= (and b!2291868 ((_ is Union!6715) (regOne!13943 (regex!4367 (h!32688 rules!1750))))) b!2292812))

(declare-fun b!2292814 () Bool)

(declare-fun e!1469114 () Bool)

(declare-fun tp!726769 () Bool)

(declare-fun tp!726770 () Bool)

(assert (=> b!2292814 (= e!1469114 (and tp!726769 tp!726770))))

(declare-fun b!2292816 () Bool)

(declare-fun tp!726772 () Bool)

(declare-fun tp!726773 () Bool)

(assert (=> b!2292816 (= e!1469114 (and tp!726772 tp!726773))))

(declare-fun b!2292813 () Bool)

(assert (=> b!2292813 (= e!1469114 tp_is_empty!10651)))

(declare-fun b!2292815 () Bool)

(declare-fun tp!726771 () Bool)

(assert (=> b!2292815 (= e!1469114 tp!726771)))

(assert (=> b!2291868 (= tp!726611 e!1469114)))

(assert (= (and b!2291868 ((_ is ElementMatch!6715) (regTwo!13943 (regex!4367 (h!32688 rules!1750))))) b!2292813))

(assert (= (and b!2291868 ((_ is Concat!11245) (regTwo!13943 (regex!4367 (h!32688 rules!1750))))) b!2292814))

(assert (= (and b!2291868 ((_ is Star!6715) (regTwo!13943 (regex!4367 (h!32688 rules!1750))))) b!2292815))

(assert (= (and b!2291868 ((_ is Union!6715) (regTwo!13943 (regex!4367 (h!32688 rules!1750))))) b!2292816))

(declare-fun b!2292820 () Bool)

(declare-fun b_free!68913 () Bool)

(declare-fun b_next!69617 () Bool)

(assert (=> b!2292820 (= b_free!68913 (not b_next!69617))))

(declare-fun tb!136843 () Bool)

(declare-fun t!204983 () Bool)

(assert (=> (and b!2292820 (= (toValue!6157 (transformation!4367 (rule!6703 (h!32689 (t!204674 (t!204674 tokens!456)))))) (toValue!6157 (transformation!4367 r!2363))) t!204983) tb!136843))

(declare-fun result!166828 () Bool)

(assert (= result!166828 result!166548))

(assert (=> d!677849 t!204983))

(declare-fun tb!136845 () Bool)

(declare-fun t!204985 () Bool)

(assert (=> (and b!2292820 (= (toValue!6157 (transformation!4367 (rule!6703 (h!32689 (t!204674 (t!204674 tokens!456)))))) (toValue!6157 (transformation!4367 (rule!6703 (_1!16061 (get!8230 lt!850118)))))) t!204985) tb!136845))

(declare-fun result!166830 () Bool)

(assert (= result!166830 result!166670))

(assert (=> d!678019 t!204985))

(assert (=> d!677833 t!204983))

(declare-fun tb!136847 () Bool)

(declare-fun t!204987 () Bool)

(assert (=> (and b!2292820 (= (toValue!6157 (transformation!4367 (rule!6703 (h!32689 (t!204674 (t!204674 tokens!456)))))) (toValue!6157 (transformation!4367 r!2363))) t!204987) tb!136847))

(declare-fun result!166832 () Bool)

(assert (= result!166832 result!166754))

(assert (=> d!678253 t!204987))

(declare-fun t!204989 () Bool)

(declare-fun tb!136849 () Bool)

(assert (=> (and b!2292820 (= (toValue!6157 (transformation!4367 (rule!6703 (h!32689 (t!204674 (t!204674 tokens!456)))))) (toValue!6157 (transformation!4367 (rule!6703 (_1!16061 (get!8230 lt!850231)))))) t!204989) tb!136849))

(declare-fun result!166834 () Bool)

(assert (= result!166834 result!166694))

(assert (=> d!678029 t!204989))

(assert (=> d!678235 t!204987))

(declare-fun tb!136851 () Bool)

(declare-fun t!204991 () Bool)

(assert (=> (and b!2292820 (= (toValue!6157 (transformation!4367 (rule!6703 (h!32689 (t!204674 (t!204674 tokens!456)))))) (toValue!6157 (transformation!4367 r!2363))) t!204991) tb!136851))

(declare-fun result!166836 () Bool)

(assert (= result!166836 result!166682))

(assert (=> d!678027 t!204991))

(declare-fun b_and!182209 () Bool)

(declare-fun tp!726777 () Bool)

(assert (=> b!2292820 (= tp!726777 (and (=> t!204985 result!166830) (=> t!204987 result!166832) (=> t!204989 result!166834) (=> t!204983 result!166828) (=> t!204991 result!166836) b_and!182209))))

(declare-fun b_free!68915 () Bool)

(declare-fun b_next!69619 () Bool)

(assert (=> b!2292820 (= b_free!68915 (not b_next!69619))))

(declare-fun t!204993 () Bool)

(declare-fun tb!136853 () Bool)

(assert (=> (and b!2292820 (= (toChars!6016 (transformation!4367 (rule!6703 (h!32689 (t!204674 (t!204674 tokens!456)))))) (toChars!6016 (transformation!4367 (rule!6703 (h!32689 (t!204674 tokens!456)))))) t!204993) tb!136853))

(declare-fun result!166838 () Bool)

(assert (= result!166838 result!166730))

(assert (=> b!2292561 t!204993))

(declare-fun tb!136855 () Bool)

(declare-fun t!204995 () Bool)

(assert (=> (and b!2292820 (= (toChars!6016 (transformation!4367 (rule!6703 (h!32689 (t!204674 (t!204674 tokens!456)))))) (toChars!6016 (transformation!4367 (rule!6703 (_1!16061 (get!8230 lt!850231)))))) t!204995) tb!136855))

(declare-fun result!166840 () Bool)

(assert (= result!166840 result!166706))

(assert (=> d!678169 t!204995))

(declare-fun tb!136857 () Bool)

(declare-fun t!204997 () Bool)

(assert (=> (and b!2292820 (= (toChars!6016 (transformation!4367 (rule!6703 (h!32689 (t!204674 (t!204674 tokens!456)))))) (toChars!6016 (transformation!4367 (rule!6703 (_1!16061 (get!8230 lt!850118)))))) t!204997) tb!136857))

(declare-fun result!166842 () Bool)

(assert (= result!166842 result!166718))

(assert (=> d!678209 t!204997))

(declare-fun t!204999 () Bool)

(declare-fun tb!136859 () Bool)

(assert (=> (and b!2292820 (= (toChars!6016 (transformation!4367 (rule!6703 (h!32689 (t!204674 (t!204674 tokens!456)))))) (toChars!6016 (transformation!4367 (rule!6703 (head!4996 tokens!456))))) t!204999) tb!136859))

(declare-fun result!166844 () Bool)

(assert (= result!166844 result!166512))

(assert (=> d!677699 t!204999))

(declare-fun t!205001 () Bool)

(declare-fun tb!136861 () Bool)

(assert (=> (and b!2292820 (= (toChars!6016 (transformation!4367 (rule!6703 (h!32689 (t!204674 (t!204674 tokens!456)))))) (toChars!6016 (transformation!4367 (rule!6703 (h!32689 tokens!456))))) t!205001) tb!136861))

(declare-fun result!166846 () Bool)

(assert (= result!166846 result!166540))

(assert (=> b!2291830 t!205001))

(declare-fun tb!136863 () Bool)

(declare-fun t!205003 () Bool)

(assert (=> (and b!2292820 (= (toChars!6016 (transformation!4367 (rule!6703 (h!32689 (t!204674 (t!204674 tokens!456)))))) (toChars!6016 (transformation!4367 r!2363))) t!205003) tb!136863))

(declare-fun result!166848 () Bool)

(assert (= result!166848 result!166742))

(assert (=> d!678235 t!205003))

(assert (=> d!677829 t!205001))

(declare-fun tb!136865 () Bool)

(declare-fun t!205005 () Bool)

(assert (=> (and b!2292820 (= (toChars!6016 (transformation!4367 (rule!6703 (h!32689 (t!204674 (t!204674 tokens!456)))))) (toChars!6016 (transformation!4367 r!2363))) t!205005) tb!136865))

(declare-fun result!166850 () Bool)

(assert (= result!166850 result!166590))

(assert (=> d!677849 t!205005))

(declare-fun b_and!182211 () Bool)

(declare-fun tp!726778 () Bool)

(assert (=> b!2292820 (= tp!726778 (and (=> t!204995 result!166840) (=> t!204999 result!166844) (=> t!205005 result!166850) (=> t!205003 result!166848) (=> t!205001 result!166846) (=> t!204993 result!166838) (=> t!204997 result!166842) b_and!182211))))

(declare-fun e!1469117 () Bool)

(declare-fun tp!726776 () Bool)

(declare-fun e!1469115 () Bool)

(declare-fun b!2292819 () Bool)

(assert (=> b!2292819 (= e!1469115 (and tp!726776 (inv!36882 (tag!4857 (rule!6703 (h!32689 (t!204674 (t!204674 tokens!456)))))) (inv!36885 (transformation!4367 (rule!6703 (h!32689 (t!204674 (t!204674 tokens!456)))))) e!1469117))))

(declare-fun b!2292817 () Bool)

(declare-fun tp!726775 () Bool)

(declare-fun e!1469118 () Bool)

(declare-fun e!1469120 () Bool)

(assert (=> b!2292817 (= e!1469118 (and (inv!36886 (h!32689 (t!204674 (t!204674 tokens!456)))) e!1469120 tp!726775))))

(assert (=> b!2292820 (= e!1469117 (and tp!726777 tp!726778))))

(declare-fun tp!726774 () Bool)

(declare-fun b!2292818 () Bool)

(assert (=> b!2292818 (= e!1469120 (and (inv!21 (value!138279 (h!32689 (t!204674 (t!204674 tokens!456))))) e!1469115 tp!726774))))

(assert (=> b!2291884 (= tp!726626 e!1469118)))

(assert (= b!2292819 b!2292820))

(assert (= b!2292818 b!2292819))

(assert (= b!2292817 b!2292818))

(assert (= (and b!2291884 ((_ is Cons!27288) (t!204674 (t!204674 tokens!456)))) b!2292817))

(declare-fun m!2720781 () Bool)

(assert (=> b!2292819 m!2720781))

(declare-fun m!2720783 () Bool)

(assert (=> b!2292819 m!2720783))

(declare-fun m!2720785 () Bool)

(assert (=> b!2292817 m!2720785))

(declare-fun m!2720789 () Bool)

(assert (=> b!2292818 m!2720789))

(declare-fun b!2292826 () Bool)

(declare-fun e!1469124 () Bool)

(declare-fun tp!726779 () Bool)

(declare-fun tp!726780 () Bool)

(assert (=> b!2292826 (= e!1469124 (and tp!726779 tp!726780))))

(declare-fun b!2292828 () Bool)

(declare-fun tp!726782 () Bool)

(declare-fun tp!726783 () Bool)

(assert (=> b!2292828 (= e!1469124 (and tp!726782 tp!726783))))

(declare-fun b!2292825 () Bool)

(assert (=> b!2292825 (= e!1469124 tp_is_empty!10651)))

(declare-fun b!2292827 () Bool)

(declare-fun tp!726781 () Bool)

(assert (=> b!2292827 (= e!1469124 tp!726781)))

(assert (=> b!2291867 (= tp!726609 e!1469124)))

(assert (= (and b!2291867 ((_ is ElementMatch!6715) (reg!7044 (regex!4367 (h!32688 rules!1750))))) b!2292825))

(assert (= (and b!2291867 ((_ is Concat!11245) (reg!7044 (regex!4367 (h!32688 rules!1750))))) b!2292826))

(assert (= (and b!2291867 ((_ is Star!6715) (reg!7044 (regex!4367 (h!32688 rules!1750))))) b!2292827))

(assert (= (and b!2291867 ((_ is Union!6715) (reg!7044 (regex!4367 (h!32688 rules!1750))))) b!2292828))

(declare-fun b!2292833 () Bool)

(declare-fun e!1469127 () Bool)

(declare-fun tp!726784 () Bool)

(assert (=> b!2292833 (= e!1469127 (and tp_is_empty!10651 tp!726784))))

(assert (=> b!2291893 (= tp!726636 e!1469127)))

(assert (= (and b!2291893 ((_ is Cons!27285) (t!204671 (t!204671 suffix!886)))) b!2292833))

(declare-fun b_lambda!73071 () Bool)

(assert (= b_lambda!72991 (or (and b!2292820 b_free!68915 (= (toChars!6016 (transformation!4367 (rule!6703 (h!32689 (t!204674 (t!204674 tokens!456)))))) (toChars!6016 (transformation!4367 (rule!6703 (head!4996 tokens!456)))))) (and b!2291253 b_free!68879 (= (toChars!6016 (transformation!4367 r!2363)) (toChars!6016 (transformation!4367 (rule!6703 (head!4996 tokens!456)))))) (and b!2291887 b_free!68907 (= (toChars!6016 (transformation!4367 (rule!6703 (h!32689 (t!204674 tokens!456))))) (toChars!6016 (transformation!4367 (rule!6703 (head!4996 tokens!456)))))) (and b!2291260 b_free!68883 (= (toChars!6016 (transformation!4367 (rule!6703 (h!32689 tokens!456)))) (toChars!6016 (transformation!4367 (rule!6703 (head!4996 tokens!456)))))) (and b!2291243 b_free!68891 (= (toChars!6016 (transformation!4367 otherR!12)) (toChars!6016 (transformation!4367 (rule!6703 (head!4996 tokens!456)))))) (and b!2292785 b_free!68911 (= (toChars!6016 (transformation!4367 (h!32688 (t!204673 (t!204673 rules!1750))))) (toChars!6016 (transformation!4367 (rule!6703 (head!4996 tokens!456)))))) (and b!2291255 b_free!68887 (= (toChars!6016 (transformation!4367 (h!32688 rules!1750))) (toChars!6016 (transformation!4367 (rule!6703 (head!4996 tokens!456)))))) (and b!2291860 b_free!68903 (= (toChars!6016 (transformation!4367 (h!32688 (t!204673 rules!1750)))) (toChars!6016 (transformation!4367 (rule!6703 (head!4996 tokens!456)))))) b_lambda!73071)))

(declare-fun b_lambda!73073 () Bool)

(assert (= b_lambda!73057 (or (and b!2291243 b_free!68889 (= (toValue!6157 (transformation!4367 otherR!12)) (toValue!6157 (transformation!4367 r!2363)))) (and b!2291260 b_free!68881 (= (toValue!6157 (transformation!4367 (rule!6703 (h!32689 tokens!456)))) (toValue!6157 (transformation!4367 r!2363)))) (and b!2292785 b_free!68909 (= (toValue!6157 (transformation!4367 (h!32688 (t!204673 (t!204673 rules!1750))))) (toValue!6157 (transformation!4367 r!2363)))) (and b!2292820 b_free!68913 (= (toValue!6157 (transformation!4367 (rule!6703 (h!32689 (t!204674 (t!204674 tokens!456)))))) (toValue!6157 (transformation!4367 r!2363)))) (and b!2291887 b_free!68905 (= (toValue!6157 (transformation!4367 (rule!6703 (h!32689 (t!204674 tokens!456))))) (toValue!6157 (transformation!4367 r!2363)))) (and b!2291255 b_free!68885 (= (toValue!6157 (transformation!4367 (h!32688 rules!1750))) (toValue!6157 (transformation!4367 r!2363)))) (and b!2291860 b_free!68901 (= (toValue!6157 (transformation!4367 (h!32688 (t!204673 rules!1750)))) (toValue!6157 (transformation!4367 r!2363)))) (and b!2291253 b_free!68877) b_lambda!73073)))

(declare-fun b_lambda!73075 () Bool)

(assert (= b_lambda!73055 (or (and b!2291887 b_free!68907 (= (toChars!6016 (transformation!4367 (rule!6703 (h!32689 (t!204674 tokens!456))))) (toChars!6016 (transformation!4367 r!2363)))) (and b!2291243 b_free!68891 (= (toChars!6016 (transformation!4367 otherR!12)) (toChars!6016 (transformation!4367 r!2363)))) (and b!2291253 b_free!68879) (and b!2291860 b_free!68903 (= (toChars!6016 (transformation!4367 (h!32688 (t!204673 rules!1750)))) (toChars!6016 (transformation!4367 r!2363)))) (and b!2292785 b_free!68911 (= (toChars!6016 (transformation!4367 (h!32688 (t!204673 (t!204673 rules!1750))))) (toChars!6016 (transformation!4367 r!2363)))) (and b!2291260 b_free!68883 (= (toChars!6016 (transformation!4367 (rule!6703 (h!32689 tokens!456)))) (toChars!6016 (transformation!4367 r!2363)))) (and b!2291255 b_free!68887 (= (toChars!6016 (transformation!4367 (h!32688 rules!1750))) (toChars!6016 (transformation!4367 r!2363)))) (and b!2292820 b_free!68915 (= (toChars!6016 (transformation!4367 (rule!6703 (h!32689 (t!204674 (t!204674 tokens!456)))))) (toChars!6016 (transformation!4367 r!2363)))) b_lambda!73075)))

(declare-fun b_lambda!73077 () Bool)

(assert (= b_lambda!73041 (or d!677849 b_lambda!73077)))

(declare-fun bs!457187 () Bool)

(declare-fun d!678365 () Bool)

(assert (= bs!457187 (and d!678365 d!677849)))

(assert (=> bs!457187 (= (dynLambda!11853 lambda!85757 lt!850059) (= (list!10688 (dynLambda!11843 (toChars!6016 (transformation!4367 r!2363)) (dynLambda!11848 (toValue!6157 (transformation!4367 r!2363)) lt!850059))) (list!10688 lt!850059)))))

(declare-fun b_lambda!73085 () Bool)

(assert (=> (not b_lambda!73085) (not bs!457187)))

(assert (=> bs!457187 t!204981))

(declare-fun b_and!182213 () Bool)

(assert (= b_and!182207 (and (=> t!204981 result!166826) b_and!182213)))

(assert (=> bs!457187 t!204751))

(declare-fun b_and!182215 () Bool)

(assert (= b_and!182125 (and (=> t!204751 result!166592) b_and!182215)))

(assert (=> bs!457187 t!204771))

(declare-fun b_and!182217 () Bool)

(assert (= b_and!182123 (and (=> t!204771 result!166620) b_and!182217)))

(assert (=> bs!457187 t!204753))

(declare-fun b_and!182219 () Bool)

(assert (= b_and!182127 (and (=> t!204753 result!166594) b_and!182219)))

(assert (=> bs!457187 t!204763))

(declare-fun b_and!182221 () Bool)

(assert (= b_and!182121 (and (=> t!204763 result!166608) b_and!182221)))

(assert (=> bs!457187 t!204749))

(declare-fun b_and!182223 () Bool)

(assert (= b_and!182131 (and (=> t!204749 result!166590) b_and!182223)))

(assert (=> bs!457187 t!204755))

(declare-fun b_and!182225 () Bool)

(assert (= b_and!182129 (and (=> t!204755 result!166596) b_and!182225)))

(assert (=> bs!457187 t!205005))

(declare-fun b_and!182227 () Bool)

(assert (= b_and!182211 (and (=> t!205005 result!166850) b_and!182227)))

(declare-fun b_lambda!73087 () Bool)

(assert (=> (not b_lambda!73087) (not bs!457187)))

(assert (=> bs!457187 t!204722))

(declare-fun b_and!182229 () Bool)

(assert (= b_and!182145 (and (=> t!204722 result!166556) b_and!182229)))

(assert (=> bs!457187 t!204765))

(declare-fun b_and!182231 () Bool)

(assert (= b_and!182147 (and (=> t!204765 result!166614) b_and!182231)))

(assert (=> bs!457187 t!204959))

(declare-fun b_and!182233 () Bool)

(assert (= b_and!182205 (and (=> t!204959 result!166804) b_and!182233)))

(assert (=> bs!457187 t!204720))

(declare-fun b_and!182235 () Bool)

(assert (= b_and!182151 (and (=> t!204720 result!166554) b_and!182235)))

(assert (=> bs!457187 t!204718))

(declare-fun b_and!182237 () Bool)

(assert (= b_and!182155 (and (=> t!204718 result!166552) b_and!182237)))

(assert (=> bs!457187 t!204983))

(declare-fun b_and!182239 () Bool)

(assert (= b_and!182209 (and (=> t!204983 result!166828) b_and!182239)))

(assert (=> bs!457187 t!204716))

(declare-fun b_and!182241 () Bool)

(assert (= b_and!182149 (and (=> t!204716 result!166548) b_and!182241)))

(assert (=> bs!457187 t!204757))

(declare-fun b_and!182243 () Bool)

(assert (= b_and!182153 (and (=> t!204757 result!166602) b_and!182243)))

(assert (=> bs!457187 m!2719447))

(assert (=> bs!457187 m!2719443))

(assert (=> bs!457187 m!2719445))

(assert (=> bs!457187 m!2719349))

(assert (=> bs!457187 m!2719349))

(assert (=> bs!457187 m!2719443))

(assert (=> d!677979 d!678365))

(declare-fun b_lambda!73079 () Bool)

(assert (= b_lambda!73053 (or (and b!2292820 b_free!68915 (= (toChars!6016 (transformation!4367 (rule!6703 (h!32689 (t!204674 (t!204674 tokens!456)))))) (toChars!6016 (transformation!4367 (rule!6703 (h!32689 (t!204674 tokens!456))))))) (and b!2291260 b_free!68883 (= (toChars!6016 (transformation!4367 (rule!6703 (h!32689 tokens!456)))) (toChars!6016 (transformation!4367 (rule!6703 (h!32689 (t!204674 tokens!456))))))) (and b!2291243 b_free!68891 (= (toChars!6016 (transformation!4367 otherR!12)) (toChars!6016 (transformation!4367 (rule!6703 (h!32689 (t!204674 tokens!456))))))) (and b!2291887 b_free!68907) (and b!2291860 b_free!68903 (= (toChars!6016 (transformation!4367 (h!32688 (t!204673 rules!1750)))) (toChars!6016 (transformation!4367 (rule!6703 (h!32689 (t!204674 tokens!456))))))) (and b!2291253 b_free!68879 (= (toChars!6016 (transformation!4367 r!2363)) (toChars!6016 (transformation!4367 (rule!6703 (h!32689 (t!204674 tokens!456))))))) (and b!2291255 b_free!68887 (= (toChars!6016 (transformation!4367 (h!32688 rules!1750))) (toChars!6016 (transformation!4367 (rule!6703 (h!32689 (t!204674 tokens!456))))))) (and b!2292785 b_free!68911 (= (toChars!6016 (transformation!4367 (h!32688 (t!204673 (t!204673 rules!1750))))) (toChars!6016 (transformation!4367 (rule!6703 (h!32689 (t!204674 tokens!456))))))) b_lambda!73079)))

(declare-fun b_lambda!73081 () Bool)

(assert (= b_lambda!73059 (or (and b!2291243 b_free!68889 (= (toValue!6157 (transformation!4367 otherR!12)) (toValue!6157 (transformation!4367 r!2363)))) (and b!2291260 b_free!68881 (= (toValue!6157 (transformation!4367 (rule!6703 (h!32689 tokens!456)))) (toValue!6157 (transformation!4367 r!2363)))) (and b!2292785 b_free!68909 (= (toValue!6157 (transformation!4367 (h!32688 (t!204673 (t!204673 rules!1750))))) (toValue!6157 (transformation!4367 r!2363)))) (and b!2292820 b_free!68913 (= (toValue!6157 (transformation!4367 (rule!6703 (h!32689 (t!204674 (t!204674 tokens!456)))))) (toValue!6157 (transformation!4367 r!2363)))) (and b!2291887 b_free!68905 (= (toValue!6157 (transformation!4367 (rule!6703 (h!32689 (t!204674 tokens!456))))) (toValue!6157 (transformation!4367 r!2363)))) (and b!2291255 b_free!68885 (= (toValue!6157 (transformation!4367 (h!32688 rules!1750))) (toValue!6157 (transformation!4367 r!2363)))) (and b!2291860 b_free!68901 (= (toValue!6157 (transformation!4367 (h!32688 (t!204673 rules!1750)))) (toValue!6157 (transformation!4367 r!2363)))) (and b!2291253 b_free!68877) b_lambda!73081)))

(declare-fun b_lambda!73083 () Bool)

(assert (= b_lambda!73045 (or (and b!2291243 b_free!68889 (= (toValue!6157 (transformation!4367 otherR!12)) (toValue!6157 (transformation!4367 r!2363)))) (and b!2291260 b_free!68881 (= (toValue!6157 (transformation!4367 (rule!6703 (h!32689 tokens!456)))) (toValue!6157 (transformation!4367 r!2363)))) (and b!2292785 b_free!68909 (= (toValue!6157 (transformation!4367 (h!32688 (t!204673 (t!204673 rules!1750))))) (toValue!6157 (transformation!4367 r!2363)))) (and b!2292820 b_free!68913 (= (toValue!6157 (transformation!4367 (rule!6703 (h!32689 (t!204674 (t!204674 tokens!456)))))) (toValue!6157 (transformation!4367 r!2363)))) (and b!2291887 b_free!68905 (= (toValue!6157 (transformation!4367 (rule!6703 (h!32689 (t!204674 tokens!456))))) (toValue!6157 (transformation!4367 r!2363)))) (and b!2291255 b_free!68885 (= (toValue!6157 (transformation!4367 (h!32688 rules!1750))) (toValue!6157 (transformation!4367 r!2363)))) (and b!2291860 b_free!68901 (= (toValue!6157 (transformation!4367 (h!32688 (t!204673 rules!1750)))) (toValue!6157 (transformation!4367 r!2363)))) (and b!2291253 b_free!68877) b_lambda!73083)))

(check-sat (not b!2292221) (not b!2292540) (not b_next!69587) (not b!2292278) (not b!2292242) (not b_lambda!73073) (not b!2292430) (not b!2292508) (not b!2292576) (not b!2292774) (not b!2292795) (not b!2292262) (not b!2292666) (not b!2291987) (not b!2292671) (not b!2292428) (not b!2292568) (not b_next!69613) (not b!2292429) (not d!678289) (not b!2292815) b_and!182225 (not b!2292668) (not b!2292200) (not b!2292756) (not b!2292440) (not b!2292196) (not b!2292488) (not d!678105) (not b!2292608) (not b!2292662) (not b!2292192) (not d!678205) (not b_lambda!73043) (not b!2292811) (not d!678109) (not b!2292334) (not b!2292803) (not bm!136772) (not d!678223) (not tb!136711) (not b!2292176) (not b_lambda!73071) (not b!2292808) (not d!677951) b_and!182233 (not b_lambda!73031) (not b!2292139) (not b!2292297) (not b!2292767) (not bm!136704) (not b!2292746) (not d!678097) (not d!677999) (not b!2292203) (not b_next!69617) (not bm!136715) (not b!2292754) (not b!2292711) (not d!678207) (not b!2292003) (not b!2292660) (not b!2292731) (not d!677989) (not d!678021) (not d!677977) (not b_next!69593) (not b!2292609) (not tb!136699) (not bm!136668) (not b!2292130) (not bm!136705) (not d!678059) (not b!2292707) (not b!2292287) (not b_next!69595) (not b!2292198) (not b!2292744) (not tb!136687) (not bs!457187) (not b!2291709) (not b_lambda!73025) (not b!2292224) (not b!2292302) (not b!2292719) (not d!678101) (not b!2292301) (not b!2292638) (not b!2292687) (not b!2292684) (not b!2292134) (not d!678317) (not d!678265) b_and!182229 (not b!2292331) (not b!2292512) (not bm!136703) (not b!2292665) (not b!2292683) (not d!678213) (not d!678061) (not b!2292752) (not b!2292718) (not b_lambda!73075) (not b_next!69591) (not b!2292191) (not b!2292554) (not b!2292667) (not b!2291397) (not d!678145) (not b!2292553) b_and!182237 b_and!182241 (not bm!136706) (not bm!136763) (not b!2291996) (not b!2292735) (not d!677895) (not b!2292264) (not b!2292730) (not b!2292265) (not d!678001) (not b!2292784) (not b!2292661) (not d!678035) (not d!678171) (not d!677945) (not b!2292622) (not d!678011) (not b!2292001) (not b!2291985) (not d!677887) (not b!2292755) (not b!2292736) (not b!2292290) (not b!2292758) (not b!2292610) (not d!678233) (not b!2292698) (not b!2292179) (not tb!136771) (not tb!136735) (not b!2292420) (not b!2292765) (not b_next!69609) (not bm!136700) (not b!2292816) (not tb!136723) (not d!678073) (not b!2292168) (not b!2292709) (not b!2292770) (not b!2292573) (not b!2292527) (not b!2292828) (not b!2292286) (not d!678243) (not b_lambda!73085) (not b!2292796) (not b!2292528) (not b!2292804) (not b!2292569) (not d!678311) (not b!2292663) (not b!2292779) b_and!182217 (not b!2292738) (not b!2292800) (not b!2292781) (not b!2292764) (not d!678209) (not b!2292513) (not b!2292299) (not b!2292590) (not b!2292506) (not b!2292604) (not b!2292431) (not b_lambda!73077) (not b_next!69581) (not b!2292810) (not b!2292655) (not b!2292725) (not d!677893) (not d!677975) (not b!2292720) (not d!678099) (not b!2292204) (not bm!136699) (not b!2292833) b_and!182213 (not d!678023) (not d!678231) (not d!678013) (not b!2292748) (not b!2292541) (not b!2292210) (not b!2292775) (not b!2292304) (not bm!136768) (not tb!136759) (not d!678219) (not b!2292712) (not d!678033) (not b!2292670) (not b!2291998) (not b!2292295) (not bm!136742) (not d!678025) (not b_next!69607) (not b!2292427) (not d!678077) b_and!182235 (not d!678301) (not d!678179) (not d!677971) (not bm!136702) (not d!677943) b_and!182219 b_and!182231 (not b!2292324) (not b!2292802) (not d!678217) (not b_lambda!73079) (not b!2292611) (not b!2292340) (not b!2292418) (not b!2292732) (not b!2291923) (not b!2292747) (not b_next!69585) (not b!2292669) (not b!2292827) (not b!2292760) (not b!2292282) (not b!2292143) (not b_lambda!73029) (not b!2291915) (not d!678259) (not b!2292288) b_and!182239 (not b!2292751) (not b!2292276) b_and!182227 (not b!2292766) (not b!2292138) (not b!2292194) (not d!678087) (not bm!136770) (not b!2292677) (not b!2292280) (not b!2292743) (not tb!136747) (not b!2292199) (not b!2292780) (not d!678031) b_and!182243 (not b!2292613) (not b!2292284) (not b!2292294) b_and!182223 (not b_lambda!73087) (not b!2292505) (not d!678263) (not b!2292759) (not b!2292637) (not d!678235) (not b!2292771) (not d!678043) (not b!2292783) (not b!2292762) (not b!2292812) (not b!2292724) (not b!2292703) (not b_lambda!73023) (not d!678165) (not b!2292716) (not bm!136759) (not b!2292696) (not d!678111) (not d!678039) (not d!678049) (not b!2292763) (not d!678167) (not b!2292739) (not b!2292522) (not d!678139) (not d!678135) (not b!2292511) (not b!2292742) (not b_lambda!73051) (not b!2292562) (not b!2292575) (not b_next!69589) (not b!2292509) b_and!182215 (not b_lambda!73083) (not b!2292705) (not b!2292563) (not bm!136743) (not d!678003) (not b!2292002) (not b_lambda!73081) (not b!2291825) (not d!677981) (not b!2292561) (not b!2292817) (not b!2292543) (not d!677979) (not b!2292222) (not b!2292558) (not b!2292814) (not b!2292293) (not d!678137) (not b!2292782) (not b!2291986) (not bm!136764) (not b!2292807) (not b!2292769) (not d!678057) (not b!2292195) (not b!2292261) (not b!2292819) (not b!2292740) (not b!2292656) (not b!2292734) (not d!678191) b_and!182221 (not b!2292510) (not b!2292201) (not b_lambda!73049) (not d!678047) (not b!2292634) (not b_next!69619) (not bm!136714) (not d!677953) (not d!678269) (not d!678267) (not b!2292556) (not b!2292798) (not b!2292708) (not b!2292658) (not b!2292197) (not b!2292704) (not b!2292685) (not b_next!69583) (not bm!136701) (not b_next!69605) (not b!2292726) (not b!2291983) (not b!2292213) (not b!2292544) (not b!2292697) (not b!2292612) (not b!2292826) (not d!678067) (not b!2292542) (not b!2292559) (not d!678169) (not bm!136716) (not b!2292000) (not b!2292750) (not b_next!69611) (not b!2292806) (not bm!136749) (not d!678255) (not b!2292818) tp_is_empty!10651 (not b!2292539) (not b!2292773) (not d!678305) (not b_lambda!73047) (not b_next!69615) (not b!2292005) (not d!678197) (not d!678315) (not b_lambda!73027) (not b!2292713) (not d!677939) (not bm!136761) (not b!2292419) (not b!2292339) (not b!2292202) (not b!2292014) (not b!2292004))
(check-sat (not b_next!69587) (not b_next!69593) (not b_next!69595) b_and!182229 (not b_next!69591) (not b_next!69609) b_and!182217 (not b_next!69581) b_and!182213 (not b_next!69585) (not b_next!69611) (not b_next!69615) (not b_next!69613) b_and!182225 b_and!182233 (not b_next!69617) b_and!182237 b_and!182241 (not b_next!69607) b_and!182235 b_and!182219 b_and!182231 b_and!182239 b_and!182227 b_and!182223 b_and!182243 (not b_next!69589) b_and!182215 b_and!182221 (not b_next!69619) (not b_next!69583) (not b_next!69605))
