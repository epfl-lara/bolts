; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!224008 () Bool)

(assert start!224008)

(declare-fun b!2285186 () Bool)

(declare-fun b_free!68477 () Bool)

(declare-fun b_next!69181 () Bool)

(assert (=> b!2285186 (= b_free!68477 (not b_next!69181))))

(declare-fun tp!724425 () Bool)

(declare-fun b_and!180873 () Bool)

(assert (=> b!2285186 (= tp!724425 b_and!180873)))

(declare-fun b_free!68479 () Bool)

(declare-fun b_next!69183 () Bool)

(assert (=> b!2285186 (= b_free!68479 (not b_next!69183))))

(declare-fun tp!724436 () Bool)

(declare-fun b_and!180875 () Bool)

(assert (=> b!2285186 (= tp!724436 b_and!180875)))

(declare-fun b!2285181 () Bool)

(declare-fun b_free!68481 () Bool)

(declare-fun b_next!69185 () Bool)

(assert (=> b!2285181 (= b_free!68481 (not b_next!69185))))

(declare-fun tp!724433 () Bool)

(declare-fun b_and!180877 () Bool)

(assert (=> b!2285181 (= tp!724433 b_and!180877)))

(declare-fun b_free!68483 () Bool)

(declare-fun b_next!69187 () Bool)

(assert (=> b!2285181 (= b_free!68483 (not b_next!69187))))

(declare-fun tp!724437 () Bool)

(declare-fun b_and!180879 () Bool)

(assert (=> b!2285181 (= tp!724437 b_and!180879)))

(declare-fun b!2285189 () Bool)

(declare-fun b_free!68485 () Bool)

(declare-fun b_next!69189 () Bool)

(assert (=> b!2285189 (= b_free!68485 (not b_next!69189))))

(declare-fun tp!724422 () Bool)

(declare-fun b_and!180881 () Bool)

(assert (=> b!2285189 (= tp!724422 b_and!180881)))

(declare-fun b_free!68487 () Bool)

(declare-fun b_next!69191 () Bool)

(assert (=> b!2285189 (= b_free!68487 (not b_next!69191))))

(declare-fun tp!724421 () Bool)

(declare-fun b_and!180883 () Bool)

(assert (=> b!2285189 (= tp!724421 b_and!180883)))

(declare-fun b!2285176 () Bool)

(declare-fun b_free!68489 () Bool)

(declare-fun b_next!69193 () Bool)

(assert (=> b!2285176 (= b_free!68489 (not b_next!69193))))

(declare-fun tp!724429 () Bool)

(declare-fun b_and!180885 () Bool)

(assert (=> b!2285176 (= tp!724429 b_and!180885)))

(declare-fun b_free!68491 () Bool)

(declare-fun b_next!69195 () Bool)

(assert (=> b!2285176 (= b_free!68491 (not b_next!69195))))

(declare-fun tp!724424 () Bool)

(declare-fun b_and!180887 () Bool)

(assert (=> b!2285176 (= tp!724424 b_and!180887)))

(declare-fun e!1464114 () Bool)

(assert (=> b!2285176 (= e!1464114 (and tp!724429 tp!724424))))

(declare-fun b!2285177 () Bool)

(declare-fun res!976950 () Bool)

(declare-fun e!1464102 () Bool)

(assert (=> b!2285177 (=> res!976950 e!1464102)))

(declare-datatypes ((C!13540 0))(
  ( (C!13541 (val!7818 Int)) )
))
(declare-datatypes ((List!27295 0))(
  ( (Nil!27201) (Cons!27201 (h!32602 C!13540) (t!203973 List!27295)) )
))
(declare-fun input!1722 () List!27295)

(declare-fun lt!848032 () List!27295)

(assert (=> b!2285177 (= res!976950 (not (= input!1722 lt!848032)))))

(declare-fun b!2285178 () Bool)

(declare-fun res!976966 () Bool)

(declare-fun e!1464106 () Bool)

(assert (=> b!2285178 (=> (not res!976966) (not e!1464106))))

(declare-fun otherP!12 () List!27295)

(declare-fun isPrefix!2339 (List!27295 List!27295) Bool)

(assert (=> b!2285178 (= res!976966 (isPrefix!2339 otherP!12 input!1722))))

(declare-fun b!2285179 () Bool)

(declare-fun e!1464103 () Bool)

(assert (=> b!2285179 (= e!1464106 (not e!1464103))))

(declare-fun res!976951 () Bool)

(assert (=> b!2285179 (=> res!976951 e!1464103)))

(declare-fun e!1464110 () Bool)

(assert (=> b!2285179 (= res!976951 e!1464110)))

(declare-fun res!976956 () Bool)

(assert (=> b!2285179 (=> (not res!976956) (not e!1464110))))

(declare-fun lt!848035 () Bool)

(assert (=> b!2285179 (= res!976956 (not lt!848035))))

(declare-datatypes ((LexerInterface!3946 0))(
  ( (LexerInterfaceExt!3943 (__x!18082 Int)) (Lexer!3944) )
))
(declare-fun thiss!16613 () LexerInterface!3946)

(declare-datatypes ((List!27296 0))(
  ( (Nil!27202) (Cons!27202 (h!32603 (_ BitVec 16)) (t!203974 List!27296)) )
))
(declare-datatypes ((TokenValue!4511 0))(
  ( (FloatLiteralValue!9022 (text!32022 List!27296)) (TokenValueExt!4510 (__x!18083 Int)) (Broken!22555 (value!137740 List!27296)) (Object!4604) (End!4511) (Def!4511) (Underscore!4511) (Match!4511) (Else!4511) (Error!4511) (Case!4511) (If!4511) (Extends!4511) (Abstract!4511) (Class!4511) (Val!4511) (DelimiterValue!9022 (del!4571 List!27296)) (KeywordValue!4517 (value!137741 List!27296)) (CommentValue!9022 (value!137742 List!27296)) (WhitespaceValue!9022 (value!137743 List!27296)) (IndentationValue!4511 (value!137744 List!27296)) (String!29658) (Int32!4511) (Broken!22556 (value!137745 List!27296)) (Boolean!4512) (Unit!40105) (OperatorValue!4514 (op!4571 List!27296)) (IdentifierValue!9022 (value!137746 List!27296)) (IdentifierValue!9023 (value!137747 List!27296)) (WhitespaceValue!9023 (value!137748 List!27296)) (True!9022) (False!9022) (Broken!22557 (value!137749 List!27296)) (Broken!22558 (value!137750 List!27296)) (True!9023) (RightBrace!4511) (RightBracket!4511) (Colon!4511) (Null!4511) (Comma!4511) (LeftBracket!4511) (False!9023) (LeftBrace!4511) (ImaginaryLiteralValue!4511 (text!32023 List!27296)) (StringLiteralValue!13533 (value!137751 List!27296)) (EOFValue!4511 (value!137752 List!27296)) (IdentValue!4511 (value!137753 List!27296)) (DelimiterValue!9023 (value!137754 List!27296)) (DedentValue!4511 (value!137755 List!27296)) (NewLineValue!4511 (value!137756 List!27296)) (IntegerValue!13533 (value!137757 (_ BitVec 32)) (text!32024 List!27296)) (IntegerValue!13534 (value!137758 Int) (text!32025 List!27296)) (Times!4511) (Or!4511) (Equal!4511) (Minus!4511) (Broken!22559 (value!137759 List!27296)) (And!4511) (Div!4511) (LessEqual!4511) (Mod!4511) (Concat!11208) (Not!4511) (Plus!4511) (SpaceValue!4511 (value!137760 List!27296)) (IntegerValue!13535 (value!137761 Int) (text!32026 List!27296)) (StringLiteralValue!13534 (text!32027 List!27296)) (FloatLiteralValue!9023 (text!32028 List!27296)) (BytesLiteralValue!4511 (value!137762 List!27296)) (CommentValue!9023 (value!137763 List!27296)) (StringLiteralValue!13535 (value!137764 List!27296)) (ErrorTokenValue!4511 (msg!4572 List!27296)) )
))
(declare-datatypes ((IArray!17697 0))(
  ( (IArray!17698 (innerList!8906 List!27295)) )
))
(declare-datatypes ((Conc!8846 0))(
  ( (Node!8846 (left!20625 Conc!8846) (right!20955 Conc!8846) (csize!17922 Int) (cheight!9057 Int)) (Leaf!13006 (xs!11788 IArray!17697) (csize!17923 Int)) (Empty!8846) )
))
(declare-datatypes ((BalanceConc!17420 0))(
  ( (BalanceConc!17421 (c!362482 Conc!8846)) )
))
(declare-datatypes ((Regex!6697 0))(
  ( (ElementMatch!6697 (c!362483 C!13540)) (Concat!11209 (regOne!13906 Regex!6697) (regTwo!13906 Regex!6697)) (EmptyExpr!6697) (Star!6697 (reg!7026 Regex!6697)) (EmptyLang!6697) (Union!6697 (regOne!13907 Regex!6697) (regTwo!13907 Regex!6697)) )
))
(declare-datatypes ((String!29659 0))(
  ( (String!29660 (value!137765 String)) )
))
(declare-datatypes ((TokenValueInjection!8562 0))(
  ( (TokenValueInjection!8563 (toValue!6135 Int) (toChars!5994 Int)) )
))
(declare-datatypes ((Rule!8498 0))(
  ( (Rule!8499 (regex!4349 Regex!6697) (tag!4839 String!29659) (isSeparator!4349 Bool) (transformation!4349 TokenValueInjection!8562)) )
))
(declare-fun r!2363 () Rule!8498)

(declare-fun ruleValid!1439 (LexerInterface!3946 Rule!8498) Bool)

(assert (=> b!2285179 (ruleValid!1439 thiss!16613 r!2363)))

(declare-datatypes ((Unit!40106 0))(
  ( (Unit!40107) )
))
(declare-fun lt!848037 () Unit!40106)

(declare-datatypes ((List!27297 0))(
  ( (Nil!27203) (Cons!27203 (h!32604 Rule!8498) (t!203975 List!27297)) )
))
(declare-fun rules!1750 () List!27297)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!844 (LexerInterface!3946 Rule!8498 List!27297) Unit!40106)

(assert (=> b!2285179 (= lt!848037 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!844 thiss!16613 r!2363 rules!1750))))

(declare-fun b!2285180 () Bool)

(declare-fun res!976957 () Bool)

(declare-fun e!1464126 () Bool)

(assert (=> b!2285180 (=> res!976957 e!1464126)))

(declare-datatypes ((Token!8176 0))(
  ( (Token!8177 (value!137766 TokenValue!4511) (rule!6677 Rule!8498) (size!21398 Int) (originalCharacters!5119 List!27295)) )
))
(declare-datatypes ((List!27298 0))(
  ( (Nil!27204) (Cons!27204 (h!32605 Token!8176) (t!203976 List!27298)) )
))
(declare-fun tokens!456 () List!27298)

(get-info :version)

(assert (=> b!2285180 (= res!976957 ((_ is Nil!27204) tokens!456))))

(declare-fun e!1464109 () Bool)

(assert (=> b!2285181 (= e!1464109 (and tp!724433 tp!724437))))

(declare-fun b!2285182 () Bool)

(declare-fun res!976954 () Bool)

(assert (=> b!2285182 (=> (not res!976954) (not e!1464106))))

(declare-fun e!1464129 () Bool)

(assert (=> b!2285182 (= res!976954 e!1464129)))

(declare-fun res!976965 () Bool)

(assert (=> b!2285182 (=> res!976965 e!1464129)))

(assert (=> b!2285182 (= res!976965 lt!848035)))

(declare-fun tp!724420 () Bool)

(declare-fun e!1464101 () Bool)

(declare-fun e!1464125 () Bool)

(declare-fun b!2285183 () Bool)

(declare-fun inv!21 (TokenValue!4511) Bool)

(assert (=> b!2285183 (= e!1464101 (and (inv!21 (value!137766 (h!32605 tokens!456))) e!1464125 tp!724420))))

(declare-fun b!2285184 () Bool)

(declare-fun e!1464120 () Bool)

(declare-fun tp_is_empty!10615 () Bool)

(declare-fun tp!724428 () Bool)

(assert (=> b!2285184 (= e!1464120 (and tp_is_empty!10615 tp!724428))))

(declare-fun b!2285185 () Bool)

(declare-fun head!4966 (List!27298) Token!8176)

(assert (=> b!2285185 (= e!1464129 (= (rule!6677 (head!4966 tokens!456)) r!2363))))

(declare-fun e!1464107 () Bool)

(assert (=> b!2285186 (= e!1464107 (and tp!724425 tp!724436))))

(declare-fun res!976948 () Bool)

(declare-fun e!1464112 () Bool)

(assert (=> start!224008 (=> (not res!976948) (not e!1464112))))

(assert (=> start!224008 (= res!976948 ((_ is Lexer!3944) thiss!16613))))

(assert (=> start!224008 e!1464112))

(assert (=> start!224008 true))

(declare-fun e!1464115 () Bool)

(assert (=> start!224008 e!1464115))

(declare-fun e!1464119 () Bool)

(assert (=> start!224008 e!1464119))

(assert (=> start!224008 e!1464120))

(declare-fun e!1464121 () Bool)

(assert (=> start!224008 e!1464121))

(declare-fun e!1464124 () Bool)

(assert (=> start!224008 e!1464124))

(declare-fun e!1464122 () Bool)

(assert (=> start!224008 e!1464122))

(declare-fun e!1464113 () Bool)

(assert (=> start!224008 e!1464113))

(declare-fun b!2285187 () Bool)

(declare-fun tp!724426 () Bool)

(declare-fun inv!36792 (Token!8176) Bool)

(assert (=> b!2285187 (= e!1464113 (and (inv!36792 (h!32605 tokens!456)) e!1464101 tp!724426))))

(declare-fun b!2285188 () Bool)

(declare-fun res!976959 () Bool)

(assert (=> b!2285188 (=> (not res!976959) (not e!1464112))))

(declare-fun rulesInvariant!3448 (LexerInterface!3946 List!27297) Bool)

(assert (=> b!2285188 (= res!976959 (rulesInvariant!3448 thiss!16613 rules!1750))))

(declare-fun e!1464104 () Bool)

(assert (=> b!2285189 (= e!1464104 (and tp!724422 tp!724421))))

(declare-fun b!2285190 () Bool)

(declare-fun tp!724423 () Bool)

(declare-fun inv!36789 (String!29659) Bool)

(declare-fun inv!36793 (TokenValueInjection!8562) Bool)

(assert (=> b!2285190 (= e!1464122 (and tp!724423 (inv!36789 (tag!4839 r!2363)) (inv!36793 (transformation!4349 r!2363)) e!1464107))))

(declare-fun b!2285191 () Bool)

(declare-fun matchR!2954 (Regex!6697 List!27295) Bool)

(declare-fun list!10624 (BalanceConc!17420) List!27295)

(declare-fun charsOf!2737 (Token!8176) BalanceConc!17420)

(assert (=> b!2285191 (= e!1464110 (not (matchR!2954 (regex!4349 r!2363) (list!10624 (charsOf!2737 (head!4966 tokens!456))))))))

(declare-fun b!2285192 () Bool)

(declare-fun e!1464123 () Bool)

(assert (=> b!2285192 (= e!1464123 e!1464106)))

(declare-fun res!976958 () Bool)

(assert (=> b!2285192 (=> (not res!976958) (not e!1464106))))

(declare-fun e!1464111 () Bool)

(assert (=> b!2285192 (= res!976958 e!1464111)))

(declare-fun res!976961 () Bool)

(assert (=> b!2285192 (=> res!976961 e!1464111)))

(assert (=> b!2285192 (= res!976961 lt!848035)))

(declare-fun isEmpty!15466 (List!27298) Bool)

(assert (=> b!2285192 (= lt!848035 (isEmpty!15466 tokens!456))))

(declare-fun b!2285193 () Bool)

(assert (=> b!2285193 (= e!1464112 e!1464123)))

(declare-fun res!976953 () Bool)

(assert (=> b!2285193 (=> (not res!976953) (not e!1464123))))

(declare-datatypes ((IArray!17699 0))(
  ( (IArray!17700 (innerList!8907 List!27298)) )
))
(declare-datatypes ((Conc!8847 0))(
  ( (Node!8847 (left!20626 Conc!8847) (right!20956 Conc!8847) (csize!17924 Int) (cheight!9058 Int)) (Leaf!13007 (xs!11789 IArray!17699) (csize!17925 Int)) (Empty!8847) )
))
(declare-datatypes ((BalanceConc!17422 0))(
  ( (BalanceConc!17423 (c!362484 Conc!8847)) )
))
(declare-datatypes ((tuple2!26974 0))(
  ( (tuple2!26975 (_1!15997 BalanceConc!17422) (_2!15997 BalanceConc!17420)) )
))
(declare-fun lt!848034 () tuple2!26974)

(declare-fun suffix!886 () List!27295)

(declare-datatypes ((tuple2!26976 0))(
  ( (tuple2!26977 (_1!15998 List!27298) (_2!15998 List!27295)) )
))
(declare-fun list!10625 (BalanceConc!17422) List!27298)

(assert (=> b!2285193 (= res!976953 (= (tuple2!26977 (list!10625 (_1!15997 lt!848034)) (list!10624 (_2!15997 lt!848034))) (tuple2!26977 tokens!456 suffix!886)))))

(declare-fun lex!1785 (LexerInterface!3946 List!27297 BalanceConc!17420) tuple2!26974)

(declare-fun seqFromList!3053 (List!27295) BalanceConc!17420)

(assert (=> b!2285193 (= lt!848034 (lex!1785 thiss!16613 rules!1750 (seqFromList!3053 input!1722)))))

(declare-fun b!2285194 () Bool)

(declare-fun tp!724431 () Bool)

(assert (=> b!2285194 (= e!1464125 (and tp!724431 (inv!36789 (tag!4839 (rule!6677 (h!32605 tokens!456)))) (inv!36793 (transformation!4349 (rule!6677 (h!32605 tokens!456)))) e!1464109))))

(declare-fun b!2285195 () Bool)

(declare-fun lt!848031 () List!27295)

(declare-fun isEmpty!15467 (List!27295) Bool)

(assert (=> b!2285195 (= e!1464102 (not (isEmpty!15467 lt!848031)))))

(declare-fun b!2285196 () Bool)

(assert (=> b!2285196 (= e!1464103 e!1464126)))

(declare-fun res!976955 () Bool)

(assert (=> b!2285196 (=> res!976955 e!1464126)))

(declare-fun otherR!12 () Rule!8498)

(declare-fun getIndex!362 (List!27297 Rule!8498) Int)

(assert (=> b!2285196 (= res!976955 (<= (getIndex!362 rules!1750 r!2363) (getIndex!362 rules!1750 otherR!12)))))

(assert (=> b!2285196 (ruleValid!1439 thiss!16613 otherR!12)))

(declare-fun lt!848039 () Unit!40106)

(assert (=> b!2285196 (= lt!848039 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!844 thiss!16613 otherR!12 rules!1750))))

(declare-fun b!2285197 () Bool)

(declare-fun res!976962 () Bool)

(assert (=> b!2285197 (=> (not res!976962) (not e!1464112))))

(declare-fun contains!4723 (List!27297 Rule!8498) Bool)

(assert (=> b!2285197 (= res!976962 (contains!4723 rules!1750 r!2363))))

(declare-fun b!2285198 () Bool)

(declare-fun tp!724434 () Bool)

(assert (=> b!2285198 (= e!1464115 (and tp_is_empty!10615 tp!724434))))

(declare-fun b!2285199 () Bool)

(declare-fun tp!724427 () Bool)

(assert (=> b!2285199 (= e!1464121 (and tp_is_empty!10615 tp!724427))))

(declare-fun b!2285200 () Bool)

(declare-fun res!976963 () Bool)

(assert (=> b!2285200 (=> (not res!976963) (not e!1464112))))

(declare-fun isEmpty!15468 (List!27297) Bool)

(assert (=> b!2285200 (= res!976963 (not (isEmpty!15468 rules!1750)))))

(declare-fun b!2285201 () Bool)

(declare-fun res!976964 () Bool)

(assert (=> b!2285201 (=> (not res!976964) (not e!1464112))))

(assert (=> b!2285201 (= res!976964 (contains!4723 rules!1750 otherR!12))))

(declare-fun b!2285202 () Bool)

(declare-fun res!976949 () Bool)

(assert (=> b!2285202 (=> (not res!976949) (not e!1464106))))

(assert (=> b!2285202 (= res!976949 (not (= r!2363 otherR!12)))))

(declare-fun tp!724430 () Bool)

(declare-fun b!2285203 () Bool)

(assert (=> b!2285203 (= e!1464119 (and tp!724430 (inv!36789 (tag!4839 otherR!12)) (inv!36793 (transformation!4349 otherR!12)) e!1464104))))

(declare-fun b!2285204 () Bool)

(declare-fun e!1464108 () Bool)

(assert (=> b!2285204 (= e!1464108 e!1464102)))

(declare-fun res!976952 () Bool)

(assert (=> b!2285204 (=> res!976952 e!1464102)))

(declare-fun size!21399 (List!27295) Int)

(assert (=> b!2285204 (= res!976952 (= (size!21399 otherP!12) (size!21399 lt!848031)))))

(declare-datatypes ((tuple2!26978 0))(
  ( (tuple2!26979 (_1!15999 Token!8176) (_2!15999 List!27295)) )
))
(declare-fun lt!848040 () tuple2!26978)

(declare-fun lt!848033 () List!27295)

(assert (=> b!2285204 (= (_2!15999 lt!848040) lt!848033)))

(declare-fun lt!848038 () Unit!40106)

(declare-fun lemmaSamePrefixThenSameSuffix!1040 (List!27295 List!27295 List!27295 List!27295 List!27295) Unit!40106)

(assert (=> b!2285204 (= lt!848038 (lemmaSamePrefixThenSameSuffix!1040 lt!848031 (_2!15999 lt!848040) lt!848031 lt!848033 input!1722))))

(declare-fun getSuffix!1130 (List!27295 List!27295) List!27295)

(assert (=> b!2285204 (= lt!848033 (getSuffix!1130 input!1722 lt!848031))))

(assert (=> b!2285204 (isPrefix!2339 lt!848031 lt!848032)))

(declare-fun ++!6645 (List!27295 List!27295) List!27295)

(assert (=> b!2285204 (= lt!848032 (++!6645 lt!848031 (_2!15999 lt!848040)))))

(declare-fun lt!848036 () Unit!40106)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1544 (List!27295 List!27295) Unit!40106)

(assert (=> b!2285204 (= lt!848036 (lemmaConcatTwoListThenFirstIsPrefix!1544 lt!848031 (_2!15999 lt!848040)))))

(assert (=> b!2285204 (= lt!848031 (list!10624 (charsOf!2737 (h!32605 tokens!456))))))

(declare-fun b!2285205 () Bool)

(declare-fun e!1464127 () Bool)

(declare-fun tp!724432 () Bool)

(assert (=> b!2285205 (= e!1464124 (and e!1464127 tp!724432))))

(declare-fun b!2285206 () Bool)

(declare-fun tp!724435 () Bool)

(assert (=> b!2285206 (= e!1464127 (and tp!724435 (inv!36789 (tag!4839 (h!32604 rules!1750))) (inv!36793 (transformation!4349 (h!32604 rules!1750))) e!1464114))))

(declare-fun b!2285207 () Bool)

(assert (=> b!2285207 (= e!1464126 e!1464108)))

(declare-fun res!976960 () Bool)

(assert (=> b!2285207 (=> res!976960 e!1464108)))

(assert (=> b!2285207 (= res!976960 (not (= (h!32605 tokens!456) (_1!15999 lt!848040))))))

(declare-datatypes ((Option!5337 0))(
  ( (None!5336) (Some!5336 (v!30406 tuple2!26978)) )
))
(declare-fun get!8203 (Option!5337) tuple2!26978)

(declare-fun maxPrefix!2210 (LexerInterface!3946 List!27297 List!27295) Option!5337)

(assert (=> b!2285207 (= lt!848040 (get!8203 (maxPrefix!2210 thiss!16613 rules!1750 input!1722)))))

(declare-fun b!2285208 () Bool)

(declare-fun size!21400 (BalanceConc!17420) Int)

(assert (=> b!2285208 (= e!1464111 (<= (size!21400 (charsOf!2737 (head!4966 tokens!456))) (size!21399 otherP!12)))))

(assert (= (and start!224008 res!976948) b!2285200))

(assert (= (and b!2285200 res!976963) b!2285188))

(assert (= (and b!2285188 res!976959) b!2285197))

(assert (= (and b!2285197 res!976962) b!2285201))

(assert (= (and b!2285201 res!976964) b!2285193))

(assert (= (and b!2285193 res!976953) b!2285192))

(assert (= (and b!2285192 (not res!976961)) b!2285208))

(assert (= (and b!2285192 res!976958) b!2285182))

(assert (= (and b!2285182 (not res!976965)) b!2285185))

(assert (= (and b!2285182 res!976954) b!2285178))

(assert (= (and b!2285178 res!976966) b!2285202))

(assert (= (and b!2285202 res!976949) b!2285179))

(assert (= (and b!2285179 res!976956) b!2285191))

(assert (= (and b!2285179 (not res!976951)) b!2285196))

(assert (= (and b!2285196 (not res!976955)) b!2285180))

(assert (= (and b!2285180 (not res!976957)) b!2285207))

(assert (= (and b!2285207 (not res!976960)) b!2285204))

(assert (= (and b!2285204 (not res!976952)) b!2285177))

(assert (= (and b!2285177 (not res!976950)) b!2285195))

(assert (= (and start!224008 ((_ is Cons!27201) input!1722)) b!2285198))

(assert (= b!2285203 b!2285189))

(assert (= start!224008 b!2285203))

(assert (= (and start!224008 ((_ is Cons!27201) suffix!886)) b!2285184))

(assert (= (and start!224008 ((_ is Cons!27201) otherP!12)) b!2285199))

(assert (= b!2285206 b!2285176))

(assert (= b!2285205 b!2285206))

(assert (= (and start!224008 ((_ is Cons!27203) rules!1750)) b!2285205))

(assert (= b!2285190 b!2285186))

(assert (= start!224008 b!2285190))

(assert (= b!2285194 b!2285181))

(assert (= b!2285183 b!2285194))

(assert (= b!2285187 b!2285183))

(assert (= (and start!224008 ((_ is Cons!27204) tokens!456)) b!2285187))

(declare-fun m!2712965 () Bool)

(assert (=> b!2285200 m!2712965))

(declare-fun m!2712967 () Bool)

(assert (=> b!2285196 m!2712967))

(declare-fun m!2712969 () Bool)

(assert (=> b!2285196 m!2712969))

(declare-fun m!2712971 () Bool)

(assert (=> b!2285196 m!2712971))

(declare-fun m!2712973 () Bool)

(assert (=> b!2285196 m!2712973))

(declare-fun m!2712975 () Bool)

(assert (=> b!2285179 m!2712975))

(declare-fun m!2712977 () Bool)

(assert (=> b!2285179 m!2712977))

(declare-fun m!2712979 () Bool)

(assert (=> b!2285204 m!2712979))

(declare-fun m!2712981 () Bool)

(assert (=> b!2285204 m!2712981))

(declare-fun m!2712983 () Bool)

(assert (=> b!2285204 m!2712983))

(declare-fun m!2712985 () Bool)

(assert (=> b!2285204 m!2712985))

(declare-fun m!2712987 () Bool)

(assert (=> b!2285204 m!2712987))

(declare-fun m!2712989 () Bool)

(assert (=> b!2285204 m!2712989))

(assert (=> b!2285204 m!2712987))

(declare-fun m!2712991 () Bool)

(assert (=> b!2285204 m!2712991))

(declare-fun m!2712993 () Bool)

(assert (=> b!2285204 m!2712993))

(declare-fun m!2712995 () Bool)

(assert (=> b!2285204 m!2712995))

(declare-fun m!2712997 () Bool)

(assert (=> b!2285197 m!2712997))

(declare-fun m!2712999 () Bool)

(assert (=> b!2285191 m!2712999))

(assert (=> b!2285191 m!2712999))

(declare-fun m!2713001 () Bool)

(assert (=> b!2285191 m!2713001))

(assert (=> b!2285191 m!2713001))

(declare-fun m!2713003 () Bool)

(assert (=> b!2285191 m!2713003))

(assert (=> b!2285191 m!2713003))

(declare-fun m!2713005 () Bool)

(assert (=> b!2285191 m!2713005))

(declare-fun m!2713007 () Bool)

(assert (=> b!2285201 m!2713007))

(declare-fun m!2713009 () Bool)

(assert (=> b!2285188 m!2713009))

(assert (=> b!2285185 m!2712999))

(declare-fun m!2713011 () Bool)

(assert (=> b!2285195 m!2713011))

(declare-fun m!2713013 () Bool)

(assert (=> b!2285192 m!2713013))

(declare-fun m!2713015 () Bool)

(assert (=> b!2285183 m!2713015))

(declare-fun m!2713017 () Bool)

(assert (=> b!2285193 m!2713017))

(declare-fun m!2713019 () Bool)

(assert (=> b!2285193 m!2713019))

(declare-fun m!2713021 () Bool)

(assert (=> b!2285193 m!2713021))

(assert (=> b!2285193 m!2713021))

(declare-fun m!2713023 () Bool)

(assert (=> b!2285193 m!2713023))

(declare-fun m!2713025 () Bool)

(assert (=> b!2285207 m!2713025))

(assert (=> b!2285207 m!2713025))

(declare-fun m!2713027 () Bool)

(assert (=> b!2285207 m!2713027))

(declare-fun m!2713029 () Bool)

(assert (=> b!2285194 m!2713029))

(declare-fun m!2713031 () Bool)

(assert (=> b!2285194 m!2713031))

(assert (=> b!2285208 m!2712999))

(assert (=> b!2285208 m!2712999))

(assert (=> b!2285208 m!2713001))

(assert (=> b!2285208 m!2713001))

(declare-fun m!2713033 () Bool)

(assert (=> b!2285208 m!2713033))

(assert (=> b!2285208 m!2712985))

(declare-fun m!2713035 () Bool)

(assert (=> b!2285190 m!2713035))

(declare-fun m!2713037 () Bool)

(assert (=> b!2285190 m!2713037))

(declare-fun m!2713039 () Bool)

(assert (=> b!2285203 m!2713039))

(declare-fun m!2713041 () Bool)

(assert (=> b!2285203 m!2713041))

(declare-fun m!2713043 () Bool)

(assert (=> b!2285187 m!2713043))

(declare-fun m!2713045 () Bool)

(assert (=> b!2285206 m!2713045))

(declare-fun m!2713047 () Bool)

(assert (=> b!2285206 m!2713047))

(declare-fun m!2713049 () Bool)

(assert (=> b!2285178 m!2713049))

(check-sat (not b!2285198) (not b!2285179) (not b!2285192) (not b!2285203) (not b!2285206) b_and!180875 (not b!2285200) (not b!2285190) (not b_next!69195) (not b!2285191) (not b!2285197) (not b!2285194) (not b_next!69189) (not b_next!69193) (not b!2285184) tp_is_empty!10615 (not b!2285188) (not b!2285201) (not b!2285183) (not b_next!69185) b_and!180881 (not b!2285207) (not b_next!69181) (not b_next!69191) b_and!180877 (not b!2285193) (not b_next!69187) (not b!2285187) (not b!2285208) b_and!180887 (not b!2285178) (not b!2285185) (not b!2285196) (not b!2285205) (not b!2285195) b_and!180873 b_and!180885 (not b_next!69183) b_and!180883 (not b!2285199) (not b!2285204) b_and!180879)
(check-sat (not b_next!69185) b_and!180881 (not b_next!69187) b_and!180887 b_and!180875 (not b_next!69195) b_and!180879 (not b_next!69189) (not b_next!69193) (not b_next!69181) (not b_next!69191) b_and!180877 b_and!180873 b_and!180885 (not b_next!69183) b_and!180883)
(get-model)

(declare-fun b!2285269 () Bool)

(declare-fun e!1464162 () Int)

(assert (=> b!2285269 (= e!1464162 0)))

(declare-fun b!2285271 () Bool)

(declare-fun e!1464163 () Int)

(assert (=> b!2285271 (= e!1464163 (+ 1 (getIndex!362 (t!203975 rules!1750) r!2363)))))

(declare-fun b!2285272 () Bool)

(assert (=> b!2285272 (= e!1464163 (- 1))))

(declare-fun b!2285270 () Bool)

(assert (=> b!2285270 (= e!1464162 e!1464163)))

(declare-fun c!362496 () Bool)

(assert (=> b!2285270 (= c!362496 (and ((_ is Cons!27203) rules!1750) (not (= (h!32604 rules!1750) r!2363))))))

(declare-fun d!676090 () Bool)

(declare-fun lt!848064 () Int)

(assert (=> d!676090 (>= lt!848064 0)))

(assert (=> d!676090 (= lt!848064 e!1464162)))

(declare-fun c!362497 () Bool)

(assert (=> d!676090 (= c!362497 (and ((_ is Cons!27203) rules!1750) (= (h!32604 rules!1750) r!2363)))))

(assert (=> d!676090 (contains!4723 rules!1750 r!2363)))

(assert (=> d!676090 (= (getIndex!362 rules!1750 r!2363) lt!848064)))

(assert (= (and d!676090 c!362497) b!2285269))

(assert (= (and d!676090 (not c!362497)) b!2285270))

(assert (= (and b!2285270 c!362496) b!2285271))

(assert (= (and b!2285270 (not c!362496)) b!2285272))

(declare-fun m!2713101 () Bool)

(assert (=> b!2285271 m!2713101))

(assert (=> d!676090 m!2712997))

(assert (=> b!2285196 d!676090))

(declare-fun b!2285279 () Bool)

(declare-fun e!1464168 () Int)

(assert (=> b!2285279 (= e!1464168 0)))

(declare-fun b!2285281 () Bool)

(declare-fun e!1464169 () Int)

(assert (=> b!2285281 (= e!1464169 (+ 1 (getIndex!362 (t!203975 rules!1750) otherR!12)))))

(declare-fun b!2285282 () Bool)

(assert (=> b!2285282 (= e!1464169 (- 1))))

(declare-fun b!2285280 () Bool)

(assert (=> b!2285280 (= e!1464168 e!1464169)))

(declare-fun c!362500 () Bool)

(assert (=> b!2285280 (= c!362500 (and ((_ is Cons!27203) rules!1750) (not (= (h!32604 rules!1750) otherR!12))))))

(declare-fun d!676096 () Bool)

(declare-fun lt!848065 () Int)

(assert (=> d!676096 (>= lt!848065 0)))

(assert (=> d!676096 (= lt!848065 e!1464168)))

(declare-fun c!362501 () Bool)

(assert (=> d!676096 (= c!362501 (and ((_ is Cons!27203) rules!1750) (= (h!32604 rules!1750) otherR!12)))))

(assert (=> d!676096 (contains!4723 rules!1750 otherR!12)))

(assert (=> d!676096 (= (getIndex!362 rules!1750 otherR!12) lt!848065)))

(assert (= (and d!676096 c!362501) b!2285279))

(assert (= (and d!676096 (not c!362501)) b!2285280))

(assert (= (and b!2285280 c!362500) b!2285281))

(assert (= (and b!2285280 (not c!362500)) b!2285282))

(declare-fun m!2713113 () Bool)

(assert (=> b!2285281 m!2713113))

(assert (=> d!676096 m!2713007))

(assert (=> b!2285196 d!676096))

(declare-fun d!676102 () Bool)

(declare-fun res!977022 () Bool)

(declare-fun e!1464175 () Bool)

(assert (=> d!676102 (=> (not res!977022) (not e!1464175))))

(declare-fun validRegex!2518 (Regex!6697) Bool)

(assert (=> d!676102 (= res!977022 (validRegex!2518 (regex!4349 otherR!12)))))

(assert (=> d!676102 (= (ruleValid!1439 thiss!16613 otherR!12) e!1464175)))

(declare-fun b!2285292 () Bool)

(declare-fun res!977023 () Bool)

(assert (=> b!2285292 (=> (not res!977023) (not e!1464175))))

(declare-fun nullable!1856 (Regex!6697) Bool)

(assert (=> b!2285292 (= res!977023 (not (nullable!1856 (regex!4349 otherR!12))))))

(declare-fun b!2285293 () Bool)

(assert (=> b!2285293 (= e!1464175 (not (= (tag!4839 otherR!12) (String!29660 ""))))))

(assert (= (and d!676102 res!977022) b!2285292))

(assert (= (and b!2285292 res!977023) b!2285293))

(declare-fun m!2713127 () Bool)

(assert (=> d!676102 m!2713127))

(declare-fun m!2713129 () Bool)

(assert (=> b!2285292 m!2713129))

(assert (=> b!2285196 d!676102))

(declare-fun d!676108 () Bool)

(assert (=> d!676108 (ruleValid!1439 thiss!16613 otherR!12)))

(declare-fun lt!848078 () Unit!40106)

(declare-fun choose!13334 (LexerInterface!3946 Rule!8498 List!27297) Unit!40106)

(assert (=> d!676108 (= lt!848078 (choose!13334 thiss!16613 otherR!12 rules!1750))))

(assert (=> d!676108 (contains!4723 rules!1750 otherR!12)))

(assert (=> d!676108 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!844 thiss!16613 otherR!12 rules!1750) lt!848078)))

(declare-fun bs!456776 () Bool)

(assert (= bs!456776 d!676108))

(assert (=> bs!456776 m!2712971))

(declare-fun m!2713141 () Bool)

(assert (=> bs!456776 m!2713141))

(assert (=> bs!456776 m!2713007))

(assert (=> b!2285196 d!676108))

(declare-fun d!676120 () Bool)

(assert (=> d!676120 (= (get!8203 (maxPrefix!2210 thiss!16613 rules!1750 input!1722)) (v!30406 (maxPrefix!2210 thiss!16613 rules!1750 input!1722)))))

(assert (=> b!2285207 d!676120))

(declare-fun b!2285428 () Bool)

(declare-fun res!977100 () Bool)

(declare-fun e!1464249 () Bool)

(assert (=> b!2285428 (=> (not res!977100) (not e!1464249))))

(declare-fun lt!848117 () Option!5337)

(assert (=> b!2285428 (= res!977100 (matchR!2954 (regex!4349 (rule!6677 (_1!15999 (get!8203 lt!848117)))) (list!10624 (charsOf!2737 (_1!15999 (get!8203 lt!848117))))))))

(declare-fun b!2285429 () Bool)

(assert (=> b!2285429 (= e!1464249 (contains!4723 rules!1750 (rule!6677 (_1!15999 (get!8203 lt!848117)))))))

(declare-fun b!2285430 () Bool)

(declare-fun res!977104 () Bool)

(assert (=> b!2285430 (=> (not res!977104) (not e!1464249))))

(assert (=> b!2285430 (= res!977104 (= (++!6645 (list!10624 (charsOf!2737 (_1!15999 (get!8203 lt!848117)))) (_2!15999 (get!8203 lt!848117))) input!1722))))

(declare-fun call!136525 () Option!5337)

(declare-fun bm!136520 () Bool)

(declare-fun maxPrefixOneRule!1380 (LexerInterface!3946 Rule!8498 List!27295) Option!5337)

(assert (=> bm!136520 (= call!136525 (maxPrefixOneRule!1380 thiss!16613 (h!32604 rules!1750) input!1722))))

(declare-fun b!2285431 () Bool)

(declare-fun e!1464250 () Option!5337)

(assert (=> b!2285431 (= e!1464250 call!136525)))

(declare-fun d!676124 () Bool)

(declare-fun e!1464251 () Bool)

(assert (=> d!676124 e!1464251))

(declare-fun res!977102 () Bool)

(assert (=> d!676124 (=> res!977102 e!1464251)))

(declare-fun isEmpty!15470 (Option!5337) Bool)

(assert (=> d!676124 (= res!977102 (isEmpty!15470 lt!848117))))

(assert (=> d!676124 (= lt!848117 e!1464250)))

(declare-fun c!362531 () Bool)

(assert (=> d!676124 (= c!362531 (and ((_ is Cons!27203) rules!1750) ((_ is Nil!27203) (t!203975 rules!1750))))))

(declare-fun lt!848115 () Unit!40106)

(declare-fun lt!848116 () Unit!40106)

(assert (=> d!676124 (= lt!848115 lt!848116)))

(assert (=> d!676124 (isPrefix!2339 input!1722 input!1722)))

(declare-fun lemmaIsPrefixRefl!1485 (List!27295 List!27295) Unit!40106)

(assert (=> d!676124 (= lt!848116 (lemmaIsPrefixRefl!1485 input!1722 input!1722))))

(declare-fun rulesValidInductive!1527 (LexerInterface!3946 List!27297) Bool)

(assert (=> d!676124 (rulesValidInductive!1527 thiss!16613 rules!1750)))

(assert (=> d!676124 (= (maxPrefix!2210 thiss!16613 rules!1750 input!1722) lt!848117)))

(declare-fun b!2285432 () Bool)

(declare-fun res!977103 () Bool)

(assert (=> b!2285432 (=> (not res!977103) (not e!1464249))))

(declare-fun apply!6621 (TokenValueInjection!8562 BalanceConc!17420) TokenValue!4511)

(assert (=> b!2285432 (= res!977103 (= (value!137766 (_1!15999 (get!8203 lt!848117))) (apply!6621 (transformation!4349 (rule!6677 (_1!15999 (get!8203 lt!848117)))) (seqFromList!3053 (originalCharacters!5119 (_1!15999 (get!8203 lt!848117)))))))))

(declare-fun b!2285433 () Bool)

(declare-fun res!977105 () Bool)

(assert (=> b!2285433 (=> (not res!977105) (not e!1464249))))

(assert (=> b!2285433 (= res!977105 (= (list!10624 (charsOf!2737 (_1!15999 (get!8203 lt!848117)))) (originalCharacters!5119 (_1!15999 (get!8203 lt!848117)))))))

(declare-fun b!2285434 () Bool)

(declare-fun res!977101 () Bool)

(assert (=> b!2285434 (=> (not res!977101) (not e!1464249))))

(assert (=> b!2285434 (= res!977101 (< (size!21399 (_2!15999 (get!8203 lt!848117))) (size!21399 input!1722)))))

(declare-fun b!2285435 () Bool)

(declare-fun lt!848119 () Option!5337)

(declare-fun lt!848118 () Option!5337)

(assert (=> b!2285435 (= e!1464250 (ite (and ((_ is None!5336) lt!848119) ((_ is None!5336) lt!848118)) None!5336 (ite ((_ is None!5336) lt!848118) lt!848119 (ite ((_ is None!5336) lt!848119) lt!848118 (ite (>= (size!21398 (_1!15999 (v!30406 lt!848119))) (size!21398 (_1!15999 (v!30406 lt!848118)))) lt!848119 lt!848118)))))))

(assert (=> b!2285435 (= lt!848119 call!136525)))

(assert (=> b!2285435 (= lt!848118 (maxPrefix!2210 thiss!16613 (t!203975 rules!1750) input!1722))))

(declare-fun b!2285436 () Bool)

(assert (=> b!2285436 (= e!1464251 e!1464249)))

(declare-fun res!977099 () Bool)

(assert (=> b!2285436 (=> (not res!977099) (not e!1464249))))

(declare-fun isDefined!4222 (Option!5337) Bool)

(assert (=> b!2285436 (= res!977099 (isDefined!4222 lt!848117))))

(assert (= (and d!676124 c!362531) b!2285431))

(assert (= (and d!676124 (not c!362531)) b!2285435))

(assert (= (or b!2285431 b!2285435) bm!136520))

(assert (= (and d!676124 (not res!977102)) b!2285436))

(assert (= (and b!2285436 res!977099) b!2285433))

(assert (= (and b!2285433 res!977105) b!2285434))

(assert (= (and b!2285434 res!977101) b!2285430))

(assert (= (and b!2285430 res!977104) b!2285432))

(assert (= (and b!2285432 res!977103) b!2285428))

(assert (= (and b!2285428 res!977100) b!2285429))

(declare-fun m!2713243 () Bool)

(assert (=> bm!136520 m!2713243))

(declare-fun m!2713245 () Bool)

(assert (=> b!2285429 m!2713245))

(declare-fun m!2713247 () Bool)

(assert (=> b!2285429 m!2713247))

(declare-fun m!2713249 () Bool)

(assert (=> b!2285436 m!2713249))

(assert (=> b!2285428 m!2713245))

(declare-fun m!2713251 () Bool)

(assert (=> b!2285428 m!2713251))

(assert (=> b!2285428 m!2713251))

(declare-fun m!2713253 () Bool)

(assert (=> b!2285428 m!2713253))

(assert (=> b!2285428 m!2713253))

(declare-fun m!2713255 () Bool)

(assert (=> b!2285428 m!2713255))

(assert (=> b!2285433 m!2713245))

(assert (=> b!2285433 m!2713251))

(assert (=> b!2285433 m!2713251))

(assert (=> b!2285433 m!2713253))

(assert (=> b!2285432 m!2713245))

(declare-fun m!2713257 () Bool)

(assert (=> b!2285432 m!2713257))

(assert (=> b!2285432 m!2713257))

(declare-fun m!2713259 () Bool)

(assert (=> b!2285432 m!2713259))

(assert (=> b!2285434 m!2713245))

(declare-fun m!2713261 () Bool)

(assert (=> b!2285434 m!2713261))

(declare-fun m!2713263 () Bool)

(assert (=> b!2285434 m!2713263))

(declare-fun m!2713265 () Bool)

(assert (=> d!676124 m!2713265))

(declare-fun m!2713267 () Bool)

(assert (=> d!676124 m!2713267))

(declare-fun m!2713269 () Bool)

(assert (=> d!676124 m!2713269))

(declare-fun m!2713271 () Bool)

(assert (=> d!676124 m!2713271))

(declare-fun m!2713273 () Bool)

(assert (=> b!2285435 m!2713273))

(assert (=> b!2285430 m!2713245))

(assert (=> b!2285430 m!2713251))

(assert (=> b!2285430 m!2713251))

(assert (=> b!2285430 m!2713253))

(assert (=> b!2285430 m!2713253))

(declare-fun m!2713275 () Bool)

(assert (=> b!2285430 m!2713275))

(assert (=> b!2285207 d!676124))

(declare-fun d!676172 () Bool)

(assert (=> d!676172 (= (inv!36789 (tag!4839 (h!32604 rules!1750))) (= (mod (str.len (value!137765 (tag!4839 (h!32604 rules!1750)))) 2) 0))))

(assert (=> b!2285206 d!676172))

(declare-fun d!676174 () Bool)

(declare-fun res!977108 () Bool)

(declare-fun e!1464254 () Bool)

(assert (=> d!676174 (=> (not res!977108) (not e!1464254))))

(declare-fun semiInverseModEq!1758 (Int Int) Bool)

(assert (=> d!676174 (= res!977108 (semiInverseModEq!1758 (toChars!5994 (transformation!4349 (h!32604 rules!1750))) (toValue!6135 (transformation!4349 (h!32604 rules!1750)))))))

(assert (=> d!676174 (= (inv!36793 (transformation!4349 (h!32604 rules!1750))) e!1464254)))

(declare-fun b!2285439 () Bool)

(declare-fun equivClasses!1677 (Int Int) Bool)

(assert (=> b!2285439 (= e!1464254 (equivClasses!1677 (toChars!5994 (transformation!4349 (h!32604 rules!1750))) (toValue!6135 (transformation!4349 (h!32604 rules!1750)))))))

(assert (= (and d!676174 res!977108) b!2285439))

(declare-fun m!2713277 () Bool)

(assert (=> d!676174 m!2713277))

(declare-fun m!2713279 () Bool)

(assert (=> b!2285439 m!2713279))

(assert (=> b!2285206 d!676174))

(declare-fun d!676176 () Bool)

(assert (=> d!676176 (= (head!4966 tokens!456) (h!32605 tokens!456))))

(assert (=> b!2285185 d!676176))

(declare-fun d!676178 () Bool)

(declare-fun lt!848122 () Int)

(assert (=> d!676178 (= lt!848122 (size!21399 (list!10624 (charsOf!2737 (head!4966 tokens!456)))))))

(declare-fun size!21403 (Conc!8846) Int)

(assert (=> d!676178 (= lt!848122 (size!21403 (c!362482 (charsOf!2737 (head!4966 tokens!456)))))))

(assert (=> d!676178 (= (size!21400 (charsOf!2737 (head!4966 tokens!456))) lt!848122)))

(declare-fun bs!456784 () Bool)

(assert (= bs!456784 d!676178))

(assert (=> bs!456784 m!2713001))

(assert (=> bs!456784 m!2713003))

(assert (=> bs!456784 m!2713003))

(declare-fun m!2713281 () Bool)

(assert (=> bs!456784 m!2713281))

(declare-fun m!2713283 () Bool)

(assert (=> bs!456784 m!2713283))

(assert (=> b!2285208 d!676178))

(declare-fun d!676180 () Bool)

(declare-fun lt!848125 () BalanceConc!17420)

(assert (=> d!676180 (= (list!10624 lt!848125) (originalCharacters!5119 (head!4966 tokens!456)))))

(declare-fun dynLambda!11799 (Int TokenValue!4511) BalanceConc!17420)

(assert (=> d!676180 (= lt!848125 (dynLambda!11799 (toChars!5994 (transformation!4349 (rule!6677 (head!4966 tokens!456)))) (value!137766 (head!4966 tokens!456))))))

(assert (=> d!676180 (= (charsOf!2737 (head!4966 tokens!456)) lt!848125)))

(declare-fun b_lambda!72751 () Bool)

(assert (=> (not b_lambda!72751) (not d!676180)))

(declare-fun t!203994 () Bool)

(declare-fun tb!135951 () Bool)

(assert (=> (and b!2285186 (= (toChars!5994 (transformation!4349 r!2363)) (toChars!5994 (transformation!4349 (rule!6677 (head!4966 tokens!456))))) t!203994) tb!135951))

(declare-fun b!2285444 () Bool)

(declare-fun e!1464257 () Bool)

(declare-fun tp!724444 () Bool)

(declare-fun inv!36796 (Conc!8846) Bool)

(assert (=> b!2285444 (= e!1464257 (and (inv!36796 (c!362482 (dynLambda!11799 (toChars!5994 (transformation!4349 (rule!6677 (head!4966 tokens!456)))) (value!137766 (head!4966 tokens!456))))) tp!724444))))

(declare-fun result!165768 () Bool)

(declare-fun inv!36797 (BalanceConc!17420) Bool)

(assert (=> tb!135951 (= result!165768 (and (inv!36797 (dynLambda!11799 (toChars!5994 (transformation!4349 (rule!6677 (head!4966 tokens!456)))) (value!137766 (head!4966 tokens!456)))) e!1464257))))

(assert (= tb!135951 b!2285444))

(declare-fun m!2713285 () Bool)

(assert (=> b!2285444 m!2713285))

(declare-fun m!2713287 () Bool)

(assert (=> tb!135951 m!2713287))

(assert (=> d!676180 t!203994))

(declare-fun b_and!180913 () Bool)

(assert (= b_and!180875 (and (=> t!203994 result!165768) b_and!180913)))

(declare-fun t!203996 () Bool)

(declare-fun tb!135953 () Bool)

(assert (=> (and b!2285181 (= (toChars!5994 (transformation!4349 (rule!6677 (h!32605 tokens!456)))) (toChars!5994 (transformation!4349 (rule!6677 (head!4966 tokens!456))))) t!203996) tb!135953))

(declare-fun result!165772 () Bool)

(assert (= result!165772 result!165768))

(assert (=> d!676180 t!203996))

(declare-fun b_and!180915 () Bool)

(assert (= b_and!180879 (and (=> t!203996 result!165772) b_and!180915)))

(declare-fun tb!135955 () Bool)

(declare-fun t!203998 () Bool)

(assert (=> (and b!2285189 (= (toChars!5994 (transformation!4349 otherR!12)) (toChars!5994 (transformation!4349 (rule!6677 (head!4966 tokens!456))))) t!203998) tb!135955))

(declare-fun result!165774 () Bool)

(assert (= result!165774 result!165768))

(assert (=> d!676180 t!203998))

(declare-fun b_and!180917 () Bool)

(assert (= b_and!180883 (and (=> t!203998 result!165774) b_and!180917)))

(declare-fun t!204000 () Bool)

(declare-fun tb!135957 () Bool)

(assert (=> (and b!2285176 (= (toChars!5994 (transformation!4349 (h!32604 rules!1750))) (toChars!5994 (transformation!4349 (rule!6677 (head!4966 tokens!456))))) t!204000) tb!135957))

(declare-fun result!165776 () Bool)

(assert (= result!165776 result!165768))

(assert (=> d!676180 t!204000))

(declare-fun b_and!180919 () Bool)

(assert (= b_and!180887 (and (=> t!204000 result!165776) b_and!180919)))

(declare-fun m!2713289 () Bool)

(assert (=> d!676180 m!2713289))

(declare-fun m!2713291 () Bool)

(assert (=> d!676180 m!2713291))

(assert (=> b!2285208 d!676180))

(assert (=> b!2285208 d!676176))

(declare-fun d!676182 () Bool)

(declare-fun lt!848128 () Int)

(assert (=> d!676182 (>= lt!848128 0)))

(declare-fun e!1464260 () Int)

(assert (=> d!676182 (= lt!848128 e!1464260)))

(declare-fun c!362534 () Bool)

(assert (=> d!676182 (= c!362534 ((_ is Nil!27201) otherP!12))))

(assert (=> d!676182 (= (size!21399 otherP!12) lt!848128)))

(declare-fun b!2285449 () Bool)

(assert (=> b!2285449 (= e!1464260 0)))

(declare-fun b!2285450 () Bool)

(assert (=> b!2285450 (= e!1464260 (+ 1 (size!21399 (t!203973 otherP!12))))))

(assert (= (and d!676182 c!362534) b!2285449))

(assert (= (and d!676182 (not c!362534)) b!2285450))

(declare-fun m!2713293 () Bool)

(assert (=> b!2285450 m!2713293))

(assert (=> b!2285208 d!676182))

(declare-fun d!676184 () Bool)

(declare-fun res!977113 () Bool)

(declare-fun e!1464263 () Bool)

(assert (=> d!676184 (=> (not res!977113) (not e!1464263))))

(assert (=> d!676184 (= res!977113 (not (isEmpty!15467 (originalCharacters!5119 (h!32605 tokens!456)))))))

(assert (=> d!676184 (= (inv!36792 (h!32605 tokens!456)) e!1464263)))

(declare-fun b!2285455 () Bool)

(declare-fun res!977114 () Bool)

(assert (=> b!2285455 (=> (not res!977114) (not e!1464263))))

(assert (=> b!2285455 (= res!977114 (= (originalCharacters!5119 (h!32605 tokens!456)) (list!10624 (dynLambda!11799 (toChars!5994 (transformation!4349 (rule!6677 (h!32605 tokens!456)))) (value!137766 (h!32605 tokens!456))))))))

(declare-fun b!2285456 () Bool)

(assert (=> b!2285456 (= e!1464263 (= (size!21398 (h!32605 tokens!456)) (size!21399 (originalCharacters!5119 (h!32605 tokens!456)))))))

(assert (= (and d!676184 res!977113) b!2285455))

(assert (= (and b!2285455 res!977114) b!2285456))

(declare-fun b_lambda!72753 () Bool)

(assert (=> (not b_lambda!72753) (not b!2285455)))

(declare-fun t!204002 () Bool)

(declare-fun tb!135959 () Bool)

(assert (=> (and b!2285186 (= (toChars!5994 (transformation!4349 r!2363)) (toChars!5994 (transformation!4349 (rule!6677 (h!32605 tokens!456))))) t!204002) tb!135959))

(declare-fun b!2285457 () Bool)

(declare-fun e!1464264 () Bool)

(declare-fun tp!724445 () Bool)

(assert (=> b!2285457 (= e!1464264 (and (inv!36796 (c!362482 (dynLambda!11799 (toChars!5994 (transformation!4349 (rule!6677 (h!32605 tokens!456)))) (value!137766 (h!32605 tokens!456))))) tp!724445))))

(declare-fun result!165778 () Bool)

(assert (=> tb!135959 (= result!165778 (and (inv!36797 (dynLambda!11799 (toChars!5994 (transformation!4349 (rule!6677 (h!32605 tokens!456)))) (value!137766 (h!32605 tokens!456)))) e!1464264))))

(assert (= tb!135959 b!2285457))

(declare-fun m!2713295 () Bool)

(assert (=> b!2285457 m!2713295))

(declare-fun m!2713297 () Bool)

(assert (=> tb!135959 m!2713297))

(assert (=> b!2285455 t!204002))

(declare-fun b_and!180921 () Bool)

(assert (= b_and!180913 (and (=> t!204002 result!165778) b_and!180921)))

(declare-fun t!204004 () Bool)

(declare-fun tb!135961 () Bool)

(assert (=> (and b!2285181 (= (toChars!5994 (transformation!4349 (rule!6677 (h!32605 tokens!456)))) (toChars!5994 (transformation!4349 (rule!6677 (h!32605 tokens!456))))) t!204004) tb!135961))

(declare-fun result!165780 () Bool)

(assert (= result!165780 result!165778))

(assert (=> b!2285455 t!204004))

(declare-fun b_and!180923 () Bool)

(assert (= b_and!180915 (and (=> t!204004 result!165780) b_and!180923)))

(declare-fun t!204006 () Bool)

(declare-fun tb!135963 () Bool)

(assert (=> (and b!2285189 (= (toChars!5994 (transformation!4349 otherR!12)) (toChars!5994 (transformation!4349 (rule!6677 (h!32605 tokens!456))))) t!204006) tb!135963))

(declare-fun result!165782 () Bool)

(assert (= result!165782 result!165778))

(assert (=> b!2285455 t!204006))

(declare-fun b_and!180925 () Bool)

(assert (= b_and!180917 (and (=> t!204006 result!165782) b_and!180925)))

(declare-fun t!204008 () Bool)

(declare-fun tb!135965 () Bool)

(assert (=> (and b!2285176 (= (toChars!5994 (transformation!4349 (h!32604 rules!1750))) (toChars!5994 (transformation!4349 (rule!6677 (h!32605 tokens!456))))) t!204008) tb!135965))

(declare-fun result!165784 () Bool)

(assert (= result!165784 result!165778))

(assert (=> b!2285455 t!204008))

(declare-fun b_and!180927 () Bool)

(assert (= b_and!180919 (and (=> t!204008 result!165784) b_and!180927)))

(declare-fun m!2713299 () Bool)

(assert (=> d!676184 m!2713299))

(declare-fun m!2713301 () Bool)

(assert (=> b!2285455 m!2713301))

(assert (=> b!2285455 m!2713301))

(declare-fun m!2713303 () Bool)

(assert (=> b!2285455 m!2713303))

(declare-fun m!2713305 () Bool)

(assert (=> b!2285456 m!2713305))

(assert (=> b!2285187 d!676184))

(declare-fun d!676186 () Bool)

(declare-fun lt!848131 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!3642 (List!27297) (InoxSet Rule!8498))

(assert (=> d!676186 (= lt!848131 (select (content!3642 rules!1750) r!2363))))

(declare-fun e!1464270 () Bool)

(assert (=> d!676186 (= lt!848131 e!1464270)))

(declare-fun res!977119 () Bool)

(assert (=> d!676186 (=> (not res!977119) (not e!1464270))))

(assert (=> d!676186 (= res!977119 ((_ is Cons!27203) rules!1750))))

(assert (=> d!676186 (= (contains!4723 rules!1750 r!2363) lt!848131)))

(declare-fun b!2285462 () Bool)

(declare-fun e!1464269 () Bool)

(assert (=> b!2285462 (= e!1464270 e!1464269)))

(declare-fun res!977120 () Bool)

(assert (=> b!2285462 (=> res!977120 e!1464269)))

(assert (=> b!2285462 (= res!977120 (= (h!32604 rules!1750) r!2363))))

(declare-fun b!2285463 () Bool)

(assert (=> b!2285463 (= e!1464269 (contains!4723 (t!203975 rules!1750) r!2363))))

(assert (= (and d!676186 res!977119) b!2285462))

(assert (= (and b!2285462 (not res!977120)) b!2285463))

(declare-fun m!2713307 () Bool)

(assert (=> d!676186 m!2713307))

(declare-fun m!2713309 () Bool)

(assert (=> d!676186 m!2713309))

(declare-fun m!2713311 () Bool)

(assert (=> b!2285463 m!2713311))

(assert (=> b!2285197 d!676186))

(declare-fun d!676188 () Bool)

(declare-fun res!977132 () Bool)

(declare-fun e!1464282 () Bool)

(assert (=> d!676188 (=> (not res!977132) (not e!1464282))))

(declare-fun rulesValid!1602 (LexerInterface!3946 List!27297) Bool)

(assert (=> d!676188 (= res!977132 (rulesValid!1602 thiss!16613 rules!1750))))

(assert (=> d!676188 (= (rulesInvariant!3448 thiss!16613 rules!1750) e!1464282)))

(declare-fun b!2285481 () Bool)

(declare-datatypes ((List!27300 0))(
  ( (Nil!27206) (Cons!27206 (h!32607 String!29659) (t!204026 List!27300)) )
))
(declare-fun noDuplicateTag!1600 (LexerInterface!3946 List!27297 List!27300) Bool)

(assert (=> b!2285481 (= e!1464282 (noDuplicateTag!1600 thiss!16613 rules!1750 Nil!27206))))

(assert (= (and d!676188 res!977132) b!2285481))

(declare-fun m!2713331 () Bool)

(assert (=> d!676188 m!2713331))

(declare-fun m!2713333 () Bool)

(assert (=> b!2285481 m!2713333))

(assert (=> b!2285188 d!676188))

(declare-fun d!676192 () Bool)

(assert (=> d!676192 (= (isEmpty!15468 rules!1750) ((_ is Nil!27203) rules!1750))))

(assert (=> b!2285200 d!676192))

(declare-fun d!676194 () Bool)

(declare-fun res!977133 () Bool)

(declare-fun e!1464283 () Bool)

(assert (=> d!676194 (=> (not res!977133) (not e!1464283))))

(assert (=> d!676194 (= res!977133 (validRegex!2518 (regex!4349 r!2363)))))

(assert (=> d!676194 (= (ruleValid!1439 thiss!16613 r!2363) e!1464283)))

(declare-fun b!2285482 () Bool)

(declare-fun res!977134 () Bool)

(assert (=> b!2285482 (=> (not res!977134) (not e!1464283))))

(assert (=> b!2285482 (= res!977134 (not (nullable!1856 (regex!4349 r!2363))))))

(declare-fun b!2285483 () Bool)

(assert (=> b!2285483 (= e!1464283 (not (= (tag!4839 r!2363) (String!29660 ""))))))

(assert (= (and d!676194 res!977133) b!2285482))

(assert (= (and b!2285482 res!977134) b!2285483))

(declare-fun m!2713335 () Bool)

(assert (=> d!676194 m!2713335))

(declare-fun m!2713337 () Bool)

(assert (=> b!2285482 m!2713337))

(assert (=> b!2285179 d!676194))

(declare-fun d!676196 () Bool)

(assert (=> d!676196 (ruleValid!1439 thiss!16613 r!2363)))

(declare-fun lt!848135 () Unit!40106)

(assert (=> d!676196 (= lt!848135 (choose!13334 thiss!16613 r!2363 rules!1750))))

(assert (=> d!676196 (contains!4723 rules!1750 r!2363)))

(assert (=> d!676196 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!844 thiss!16613 r!2363 rules!1750) lt!848135)))

(declare-fun bs!456786 () Bool)

(assert (= bs!456786 d!676196))

(assert (=> bs!456786 m!2712975))

(declare-fun m!2713341 () Bool)

(assert (=> bs!456786 m!2713341))

(assert (=> bs!456786 m!2712997))

(assert (=> b!2285179 d!676196))

(declare-fun b!2285543 () Bool)

(declare-fun res!977145 () Bool)

(declare-fun e!1464325 () Bool)

(assert (=> b!2285543 (=> (not res!977145) (not e!1464325))))

(declare-fun head!4968 (List!27295) C!13540)

(assert (=> b!2285543 (= res!977145 (= (head!4968 otherP!12) (head!4968 input!1722)))))

(declare-fun d!676198 () Bool)

(declare-fun e!1464327 () Bool)

(assert (=> d!676198 e!1464327))

(declare-fun res!977143 () Bool)

(assert (=> d!676198 (=> res!977143 e!1464327)))

(declare-fun lt!848138 () Bool)

(assert (=> d!676198 (= res!977143 (not lt!848138))))

(declare-fun e!1464326 () Bool)

(assert (=> d!676198 (= lt!848138 e!1464326)))

(declare-fun res!977146 () Bool)

(assert (=> d!676198 (=> res!977146 e!1464326)))

(assert (=> d!676198 (= res!977146 ((_ is Nil!27201) otherP!12))))

(assert (=> d!676198 (= (isPrefix!2339 otherP!12 input!1722) lt!848138)))

(declare-fun b!2285544 () Bool)

(declare-fun tail!3299 (List!27295) List!27295)

(assert (=> b!2285544 (= e!1464325 (isPrefix!2339 (tail!3299 otherP!12) (tail!3299 input!1722)))))

(declare-fun b!2285542 () Bool)

(assert (=> b!2285542 (= e!1464326 e!1464325)))

(declare-fun res!977144 () Bool)

(assert (=> b!2285542 (=> (not res!977144) (not e!1464325))))

(assert (=> b!2285542 (= res!977144 (not ((_ is Nil!27201) input!1722)))))

(declare-fun b!2285545 () Bool)

(assert (=> b!2285545 (= e!1464327 (>= (size!21399 input!1722) (size!21399 otherP!12)))))

(assert (= (and d!676198 (not res!977146)) b!2285542))

(assert (= (and b!2285542 res!977144) b!2285543))

(assert (= (and b!2285543 res!977145) b!2285544))

(assert (= (and d!676198 (not res!977143)) b!2285545))

(declare-fun m!2713351 () Bool)

(assert (=> b!2285543 m!2713351))

(declare-fun m!2713357 () Bool)

(assert (=> b!2285543 m!2713357))

(declare-fun m!2713359 () Bool)

(assert (=> b!2285544 m!2713359))

(declare-fun m!2713361 () Bool)

(assert (=> b!2285544 m!2713361))

(assert (=> b!2285544 m!2713359))

(assert (=> b!2285544 m!2713361))

(declare-fun m!2713363 () Bool)

(assert (=> b!2285544 m!2713363))

(assert (=> b!2285545 m!2713263))

(assert (=> b!2285545 m!2712985))

(assert (=> b!2285178 d!676198))

(declare-fun b!2285583 () Bool)

(declare-fun res!977170 () Bool)

(declare-fun e!1464351 () Bool)

(assert (=> b!2285583 (=> (not res!977170) (not e!1464351))))

(declare-fun call!136528 () Bool)

(assert (=> b!2285583 (= res!977170 (not call!136528))))

(declare-fun b!2285584 () Bool)

(declare-fun e!1464352 () Bool)

(assert (=> b!2285584 (= e!1464352 (not (= (head!4968 (list!10624 (charsOf!2737 (head!4966 tokens!456)))) (c!362483 (regex!4349 r!2363)))))))

(declare-fun b!2285585 () Bool)

(declare-fun res!977169 () Bool)

(assert (=> b!2285585 (=> res!977169 e!1464352)))

(assert (=> b!2285585 (= res!977169 (not (isEmpty!15467 (tail!3299 (list!10624 (charsOf!2737 (head!4966 tokens!456)))))))))

(declare-fun b!2285586 () Bool)

(declare-fun e!1464355 () Bool)

(declare-fun e!1464349 () Bool)

(assert (=> b!2285586 (= e!1464355 e!1464349)))

(declare-fun res!977163 () Bool)

(assert (=> b!2285586 (=> (not res!977163) (not e!1464349))))

(declare-fun lt!848141 () Bool)

(assert (=> b!2285586 (= res!977163 (not lt!848141))))

(declare-fun b!2285587 () Bool)

(assert (=> b!2285587 (= e!1464349 e!1464352)))

(declare-fun res!977164 () Bool)

(assert (=> b!2285587 (=> res!977164 e!1464352)))

(assert (=> b!2285587 (= res!977164 call!136528)))

(declare-fun b!2285588 () Bool)

(declare-fun e!1464354 () Bool)

(declare-fun derivativeStep!1516 (Regex!6697 C!13540) Regex!6697)

(assert (=> b!2285588 (= e!1464354 (matchR!2954 (derivativeStep!1516 (regex!4349 r!2363) (head!4968 (list!10624 (charsOf!2737 (head!4966 tokens!456))))) (tail!3299 (list!10624 (charsOf!2737 (head!4966 tokens!456))))))))

(declare-fun d!676200 () Bool)

(declare-fun e!1464350 () Bool)

(assert (=> d!676200 e!1464350))

(declare-fun c!362544 () Bool)

(assert (=> d!676200 (= c!362544 ((_ is EmptyExpr!6697) (regex!4349 r!2363)))))

(assert (=> d!676200 (= lt!848141 e!1464354)))

(declare-fun c!362545 () Bool)

(assert (=> d!676200 (= c!362545 (isEmpty!15467 (list!10624 (charsOf!2737 (head!4966 tokens!456)))))))

(assert (=> d!676200 (validRegex!2518 (regex!4349 r!2363))))

(assert (=> d!676200 (= (matchR!2954 (regex!4349 r!2363) (list!10624 (charsOf!2737 (head!4966 tokens!456)))) lt!848141)))

(declare-fun b!2285589 () Bool)

(assert (=> b!2285589 (= e!1464350 (= lt!848141 call!136528))))

(declare-fun b!2285590 () Bool)

(declare-fun res!977165 () Bool)

(assert (=> b!2285590 (=> res!977165 e!1464355)))

(assert (=> b!2285590 (= res!977165 e!1464351)))

(declare-fun res!977166 () Bool)

(assert (=> b!2285590 (=> (not res!977166) (not e!1464351))))

(assert (=> b!2285590 (= res!977166 lt!848141)))

(declare-fun b!2285591 () Bool)

(declare-fun e!1464353 () Bool)

(assert (=> b!2285591 (= e!1464353 (not lt!848141))))

(declare-fun b!2285592 () Bool)

(assert (=> b!2285592 (= e!1464350 e!1464353)))

(declare-fun c!362546 () Bool)

(assert (=> b!2285592 (= c!362546 ((_ is EmptyLang!6697) (regex!4349 r!2363)))))

(declare-fun b!2285593 () Bool)

(assert (=> b!2285593 (= e!1464351 (= (head!4968 (list!10624 (charsOf!2737 (head!4966 tokens!456)))) (c!362483 (regex!4349 r!2363))))))

(declare-fun bm!136523 () Bool)

(assert (=> bm!136523 (= call!136528 (isEmpty!15467 (list!10624 (charsOf!2737 (head!4966 tokens!456)))))))

(declare-fun b!2285594 () Bool)

(declare-fun res!977167 () Bool)

(assert (=> b!2285594 (=> (not res!977167) (not e!1464351))))

(assert (=> b!2285594 (= res!977167 (isEmpty!15467 (tail!3299 (list!10624 (charsOf!2737 (head!4966 tokens!456))))))))

(declare-fun b!2285595 () Bool)

(assert (=> b!2285595 (= e!1464354 (nullable!1856 (regex!4349 r!2363)))))

(declare-fun b!2285596 () Bool)

(declare-fun res!977168 () Bool)

(assert (=> b!2285596 (=> res!977168 e!1464355)))

(assert (=> b!2285596 (= res!977168 (not ((_ is ElementMatch!6697) (regex!4349 r!2363))))))

(assert (=> b!2285596 (= e!1464353 e!1464355)))

(assert (= (and d!676200 c!362545) b!2285595))

(assert (= (and d!676200 (not c!362545)) b!2285588))

(assert (= (and d!676200 c!362544) b!2285589))

(assert (= (and d!676200 (not c!362544)) b!2285592))

(assert (= (and b!2285592 c!362546) b!2285591))

(assert (= (and b!2285592 (not c!362546)) b!2285596))

(assert (= (and b!2285596 (not res!977168)) b!2285590))

(assert (= (and b!2285590 res!977166) b!2285583))

(assert (= (and b!2285583 res!977170) b!2285594))

(assert (= (and b!2285594 res!977167) b!2285593))

(assert (= (and b!2285590 (not res!977165)) b!2285586))

(assert (= (and b!2285586 res!977163) b!2285587))

(assert (= (and b!2285587 (not res!977164)) b!2285585))

(assert (= (and b!2285585 (not res!977169)) b!2285584))

(assert (= (or b!2285589 b!2285583 b!2285587) bm!136523))

(assert (=> b!2285595 m!2713337))

(assert (=> b!2285588 m!2713003))

(declare-fun m!2713365 () Bool)

(assert (=> b!2285588 m!2713365))

(assert (=> b!2285588 m!2713365))

(declare-fun m!2713367 () Bool)

(assert (=> b!2285588 m!2713367))

(assert (=> b!2285588 m!2713003))

(declare-fun m!2713369 () Bool)

(assert (=> b!2285588 m!2713369))

(assert (=> b!2285588 m!2713367))

(assert (=> b!2285588 m!2713369))

(declare-fun m!2713371 () Bool)

(assert (=> b!2285588 m!2713371))

(assert (=> b!2285585 m!2713003))

(assert (=> b!2285585 m!2713369))

(assert (=> b!2285585 m!2713369))

(declare-fun m!2713373 () Bool)

(assert (=> b!2285585 m!2713373))

(assert (=> d!676200 m!2713003))

(declare-fun m!2713375 () Bool)

(assert (=> d!676200 m!2713375))

(assert (=> d!676200 m!2713335))

(assert (=> b!2285593 m!2713003))

(assert (=> b!2285593 m!2713365))

(assert (=> b!2285594 m!2713003))

(assert (=> b!2285594 m!2713369))

(assert (=> b!2285594 m!2713369))

(assert (=> b!2285594 m!2713373))

(assert (=> b!2285584 m!2713003))

(assert (=> b!2285584 m!2713365))

(assert (=> bm!136523 m!2713003))

(assert (=> bm!136523 m!2713375))

(assert (=> b!2285191 d!676200))

(declare-fun d!676202 () Bool)

(declare-fun list!10628 (Conc!8846) List!27295)

(assert (=> d!676202 (= (list!10624 (charsOf!2737 (head!4966 tokens!456))) (list!10628 (c!362482 (charsOf!2737 (head!4966 tokens!456)))))))

(declare-fun bs!456787 () Bool)

(assert (= bs!456787 d!676202))

(declare-fun m!2713377 () Bool)

(assert (=> bs!456787 m!2713377))

(assert (=> b!2285191 d!676202))

(assert (=> b!2285191 d!676180))

(assert (=> b!2285191 d!676176))

(declare-fun d!676204 () Bool)

(assert (=> d!676204 (= (inv!36789 (tag!4839 r!2363)) (= (mod (str.len (value!137765 (tag!4839 r!2363))) 2) 0))))

(assert (=> b!2285190 d!676204))

(declare-fun d!676206 () Bool)

(declare-fun res!977171 () Bool)

(declare-fun e!1464356 () Bool)

(assert (=> d!676206 (=> (not res!977171) (not e!1464356))))

(assert (=> d!676206 (= res!977171 (semiInverseModEq!1758 (toChars!5994 (transformation!4349 r!2363)) (toValue!6135 (transformation!4349 r!2363))))))

(assert (=> d!676206 (= (inv!36793 (transformation!4349 r!2363)) e!1464356)))

(declare-fun b!2285597 () Bool)

(assert (=> b!2285597 (= e!1464356 (equivClasses!1677 (toChars!5994 (transformation!4349 r!2363)) (toValue!6135 (transformation!4349 r!2363))))))

(assert (= (and d!676206 res!977171) b!2285597))

(declare-fun m!2713379 () Bool)

(assert (=> d!676206 m!2713379))

(declare-fun m!2713381 () Bool)

(assert (=> b!2285597 m!2713381))

(assert (=> b!2285190 d!676206))

(declare-fun d!676208 () Bool)

(declare-fun lt!848142 () Bool)

(assert (=> d!676208 (= lt!848142 (select (content!3642 rules!1750) otherR!12))))

(declare-fun e!1464358 () Bool)

(assert (=> d!676208 (= lt!848142 e!1464358)))

(declare-fun res!977172 () Bool)

(assert (=> d!676208 (=> (not res!977172) (not e!1464358))))

(assert (=> d!676208 (= res!977172 ((_ is Cons!27203) rules!1750))))

(assert (=> d!676208 (= (contains!4723 rules!1750 otherR!12) lt!848142)))

(declare-fun b!2285598 () Bool)

(declare-fun e!1464357 () Bool)

(assert (=> b!2285598 (= e!1464358 e!1464357)))

(declare-fun res!977173 () Bool)

(assert (=> b!2285598 (=> res!977173 e!1464357)))

(assert (=> b!2285598 (= res!977173 (= (h!32604 rules!1750) otherR!12))))

(declare-fun b!2285599 () Bool)

(assert (=> b!2285599 (= e!1464357 (contains!4723 (t!203975 rules!1750) otherR!12))))

(assert (= (and d!676208 res!977172) b!2285598))

(assert (= (and b!2285598 (not res!977173)) b!2285599))

(assert (=> d!676208 m!2713307))

(declare-fun m!2713383 () Bool)

(assert (=> d!676208 m!2713383))

(declare-fun m!2713385 () Bool)

(assert (=> b!2285599 m!2713385))

(assert (=> b!2285201 d!676208))

(declare-fun d!676210 () Bool)

(assert (=> d!676210 (= (isEmpty!15466 tokens!456) ((_ is Nil!27204) tokens!456))))

(assert (=> b!2285192 d!676210))

(declare-fun d!676212 () Bool)

(assert (=> d!676212 (= (inv!36789 (tag!4839 otherR!12)) (= (mod (str.len (value!137765 (tag!4839 otherR!12))) 2) 0))))

(assert (=> b!2285203 d!676212))

(declare-fun d!676214 () Bool)

(declare-fun res!977174 () Bool)

(declare-fun e!1464359 () Bool)

(assert (=> d!676214 (=> (not res!977174) (not e!1464359))))

(assert (=> d!676214 (= res!977174 (semiInverseModEq!1758 (toChars!5994 (transformation!4349 otherR!12)) (toValue!6135 (transformation!4349 otherR!12))))))

(assert (=> d!676214 (= (inv!36793 (transformation!4349 otherR!12)) e!1464359)))

(declare-fun b!2285600 () Bool)

(assert (=> b!2285600 (= e!1464359 (equivClasses!1677 (toChars!5994 (transformation!4349 otherR!12)) (toValue!6135 (transformation!4349 otherR!12))))))

(assert (= (and d!676214 res!977174) b!2285600))

(declare-fun m!2713387 () Bool)

(assert (=> d!676214 m!2713387))

(declare-fun m!2713389 () Bool)

(assert (=> b!2285600 m!2713389))

(assert (=> b!2285203 d!676214))

(assert (=> b!2285204 d!676182))

(declare-fun d!676216 () Bool)

(assert (=> d!676216 (= (_2!15999 lt!848040) lt!848033)))

(declare-fun lt!848145 () Unit!40106)

(declare-fun choose!13336 (List!27295 List!27295 List!27295 List!27295 List!27295) Unit!40106)

(assert (=> d!676216 (= lt!848145 (choose!13336 lt!848031 (_2!15999 lt!848040) lt!848031 lt!848033 input!1722))))

(assert (=> d!676216 (isPrefix!2339 lt!848031 input!1722)))

(assert (=> d!676216 (= (lemmaSamePrefixThenSameSuffix!1040 lt!848031 (_2!15999 lt!848040) lt!848031 lt!848033 input!1722) lt!848145)))

(declare-fun bs!456788 () Bool)

(assert (= bs!456788 d!676216))

(declare-fun m!2713391 () Bool)

(assert (=> bs!456788 m!2713391))

(declare-fun m!2713393 () Bool)

(assert (=> bs!456788 m!2713393))

(assert (=> b!2285204 d!676216))

(declare-fun d!676218 () Bool)

(assert (=> d!676218 (= (list!10624 (charsOf!2737 (h!32605 tokens!456))) (list!10628 (c!362482 (charsOf!2737 (h!32605 tokens!456)))))))

(declare-fun bs!456789 () Bool)

(assert (= bs!456789 d!676218))

(declare-fun m!2713395 () Bool)

(assert (=> bs!456789 m!2713395))

(assert (=> b!2285204 d!676218))

(declare-fun b!2285612 () Bool)

(declare-fun e!1464364 () Bool)

(declare-fun lt!848148 () List!27295)

(assert (=> b!2285612 (= e!1464364 (or (not (= (_2!15999 lt!848040) Nil!27201)) (= lt!848148 lt!848031)))))

(declare-fun d!676220 () Bool)

(assert (=> d!676220 e!1464364))

(declare-fun res!977180 () Bool)

(assert (=> d!676220 (=> (not res!977180) (not e!1464364))))

(declare-fun content!3643 (List!27295) (InoxSet C!13540))

(assert (=> d!676220 (= res!977180 (= (content!3643 lt!848148) ((_ map or) (content!3643 lt!848031) (content!3643 (_2!15999 lt!848040)))))))

(declare-fun e!1464365 () List!27295)

(assert (=> d!676220 (= lt!848148 e!1464365)))

(declare-fun c!362549 () Bool)

(assert (=> d!676220 (= c!362549 ((_ is Nil!27201) lt!848031))))

(assert (=> d!676220 (= (++!6645 lt!848031 (_2!15999 lt!848040)) lt!848148)))

(declare-fun b!2285610 () Bool)

(assert (=> b!2285610 (= e!1464365 (Cons!27201 (h!32602 lt!848031) (++!6645 (t!203973 lt!848031) (_2!15999 lt!848040))))))

(declare-fun b!2285609 () Bool)

(assert (=> b!2285609 (= e!1464365 (_2!15999 lt!848040))))

(declare-fun b!2285611 () Bool)

(declare-fun res!977179 () Bool)

(assert (=> b!2285611 (=> (not res!977179) (not e!1464364))))

(assert (=> b!2285611 (= res!977179 (= (size!21399 lt!848148) (+ (size!21399 lt!848031) (size!21399 (_2!15999 lt!848040)))))))

(assert (= (and d!676220 c!362549) b!2285609))

(assert (= (and d!676220 (not c!362549)) b!2285610))

(assert (= (and d!676220 res!977180) b!2285611))

(assert (= (and b!2285611 res!977179) b!2285612))

(declare-fun m!2713397 () Bool)

(assert (=> d!676220 m!2713397))

(declare-fun m!2713399 () Bool)

(assert (=> d!676220 m!2713399))

(declare-fun m!2713401 () Bool)

(assert (=> d!676220 m!2713401))

(declare-fun m!2713403 () Bool)

(assert (=> b!2285610 m!2713403))

(declare-fun m!2713405 () Bool)

(assert (=> b!2285611 m!2713405))

(assert (=> b!2285611 m!2712993))

(declare-fun m!2713407 () Bool)

(assert (=> b!2285611 m!2713407))

(assert (=> b!2285204 d!676220))

(declare-fun d!676222 () Bool)

(assert (=> d!676222 (isPrefix!2339 lt!848031 (++!6645 lt!848031 (_2!15999 lt!848040)))))

(declare-fun lt!848151 () Unit!40106)

(declare-fun choose!13337 (List!27295 List!27295) Unit!40106)

(assert (=> d!676222 (= lt!848151 (choose!13337 lt!848031 (_2!15999 lt!848040)))))

(assert (=> d!676222 (= (lemmaConcatTwoListThenFirstIsPrefix!1544 lt!848031 (_2!15999 lt!848040)) lt!848151)))

(declare-fun bs!456790 () Bool)

(assert (= bs!456790 d!676222))

(assert (=> bs!456790 m!2712981))

(assert (=> bs!456790 m!2712981))

(declare-fun m!2713409 () Bool)

(assert (=> bs!456790 m!2713409))

(declare-fun m!2713411 () Bool)

(assert (=> bs!456790 m!2713411))

(assert (=> b!2285204 d!676222))

(declare-fun d!676224 () Bool)

(declare-fun lt!848152 () Int)

(assert (=> d!676224 (>= lt!848152 0)))

(declare-fun e!1464366 () Int)

(assert (=> d!676224 (= lt!848152 e!1464366)))

(declare-fun c!362550 () Bool)

(assert (=> d!676224 (= c!362550 ((_ is Nil!27201) lt!848031))))

(assert (=> d!676224 (= (size!21399 lt!848031) lt!848152)))

(declare-fun b!2285613 () Bool)

(assert (=> b!2285613 (= e!1464366 0)))

(declare-fun b!2285614 () Bool)

(assert (=> b!2285614 (= e!1464366 (+ 1 (size!21399 (t!203973 lt!848031))))))

(assert (= (and d!676224 c!362550) b!2285613))

(assert (= (and d!676224 (not c!362550)) b!2285614))

(declare-fun m!2713413 () Bool)

(assert (=> b!2285614 m!2713413))

(assert (=> b!2285204 d!676224))

(declare-fun d!676226 () Bool)

(declare-fun lt!848153 () BalanceConc!17420)

(assert (=> d!676226 (= (list!10624 lt!848153) (originalCharacters!5119 (h!32605 tokens!456)))))

(assert (=> d!676226 (= lt!848153 (dynLambda!11799 (toChars!5994 (transformation!4349 (rule!6677 (h!32605 tokens!456)))) (value!137766 (h!32605 tokens!456))))))

(assert (=> d!676226 (= (charsOf!2737 (h!32605 tokens!456)) lt!848153)))

(declare-fun b_lambda!72759 () Bool)

(assert (=> (not b_lambda!72759) (not d!676226)))

(assert (=> d!676226 t!204002))

(declare-fun b_and!180937 () Bool)

(assert (= b_and!180921 (and (=> t!204002 result!165778) b_and!180937)))

(assert (=> d!676226 t!204004))

(declare-fun b_and!180939 () Bool)

(assert (= b_and!180923 (and (=> t!204004 result!165780) b_and!180939)))

(assert (=> d!676226 t!204006))

(declare-fun b_and!180941 () Bool)

(assert (= b_and!180925 (and (=> t!204006 result!165782) b_and!180941)))

(assert (=> d!676226 t!204008))

(declare-fun b_and!180943 () Bool)

(assert (= b_and!180927 (and (=> t!204008 result!165784) b_and!180943)))

(declare-fun m!2713415 () Bool)

(assert (=> d!676226 m!2713415))

(assert (=> d!676226 m!2713301))

(assert (=> b!2285204 d!676226))

(declare-fun d!676228 () Bool)

(declare-fun lt!848156 () List!27295)

(assert (=> d!676228 (= (++!6645 lt!848031 lt!848156) input!1722)))

(declare-fun e!1464369 () List!27295)

(assert (=> d!676228 (= lt!848156 e!1464369)))

(declare-fun c!362553 () Bool)

(assert (=> d!676228 (= c!362553 ((_ is Cons!27201) lt!848031))))

(assert (=> d!676228 (>= (size!21399 input!1722) (size!21399 lt!848031))))

(assert (=> d!676228 (= (getSuffix!1130 input!1722 lt!848031) lt!848156)))

(declare-fun b!2285619 () Bool)

(assert (=> b!2285619 (= e!1464369 (getSuffix!1130 (tail!3299 input!1722) (t!203973 lt!848031)))))

(declare-fun b!2285620 () Bool)

(assert (=> b!2285620 (= e!1464369 input!1722)))

(assert (= (and d!676228 c!362553) b!2285619))

(assert (= (and d!676228 (not c!362553)) b!2285620))

(declare-fun m!2713417 () Bool)

(assert (=> d!676228 m!2713417))

(assert (=> d!676228 m!2713263))

(assert (=> d!676228 m!2712993))

(assert (=> b!2285619 m!2713361))

(assert (=> b!2285619 m!2713361))

(declare-fun m!2713419 () Bool)

(assert (=> b!2285619 m!2713419))

(assert (=> b!2285204 d!676228))

(declare-fun b!2285622 () Bool)

(declare-fun res!977183 () Bool)

(declare-fun e!1464370 () Bool)

(assert (=> b!2285622 (=> (not res!977183) (not e!1464370))))

(assert (=> b!2285622 (= res!977183 (= (head!4968 lt!848031) (head!4968 lt!848032)))))

(declare-fun d!676230 () Bool)

(declare-fun e!1464372 () Bool)

(assert (=> d!676230 e!1464372))

(declare-fun res!977181 () Bool)

(assert (=> d!676230 (=> res!977181 e!1464372)))

(declare-fun lt!848157 () Bool)

(assert (=> d!676230 (= res!977181 (not lt!848157))))

(declare-fun e!1464371 () Bool)

(assert (=> d!676230 (= lt!848157 e!1464371)))

(declare-fun res!977184 () Bool)

(assert (=> d!676230 (=> res!977184 e!1464371)))

(assert (=> d!676230 (= res!977184 ((_ is Nil!27201) lt!848031))))

(assert (=> d!676230 (= (isPrefix!2339 lt!848031 lt!848032) lt!848157)))

(declare-fun b!2285623 () Bool)

(assert (=> b!2285623 (= e!1464370 (isPrefix!2339 (tail!3299 lt!848031) (tail!3299 lt!848032)))))

(declare-fun b!2285621 () Bool)

(assert (=> b!2285621 (= e!1464371 e!1464370)))

(declare-fun res!977182 () Bool)

(assert (=> b!2285621 (=> (not res!977182) (not e!1464370))))

(assert (=> b!2285621 (= res!977182 (not ((_ is Nil!27201) lt!848032)))))

(declare-fun b!2285624 () Bool)

(assert (=> b!2285624 (= e!1464372 (>= (size!21399 lt!848032) (size!21399 lt!848031)))))

(assert (= (and d!676230 (not res!977184)) b!2285621))

(assert (= (and b!2285621 res!977182) b!2285622))

(assert (= (and b!2285622 res!977183) b!2285623))

(assert (= (and d!676230 (not res!977181)) b!2285624))

(declare-fun m!2713421 () Bool)

(assert (=> b!2285622 m!2713421))

(declare-fun m!2713423 () Bool)

(assert (=> b!2285622 m!2713423))

(declare-fun m!2713425 () Bool)

(assert (=> b!2285623 m!2713425))

(declare-fun m!2713427 () Bool)

(assert (=> b!2285623 m!2713427))

(assert (=> b!2285623 m!2713425))

(assert (=> b!2285623 m!2713427))

(declare-fun m!2713429 () Bool)

(assert (=> b!2285623 m!2713429))

(declare-fun m!2713431 () Bool)

(assert (=> b!2285624 m!2713431))

(assert (=> b!2285624 m!2712993))

(assert (=> b!2285204 d!676230))

(declare-fun b!2285635 () Bool)

(declare-fun e!1464381 () Bool)

(declare-fun inv!17 (TokenValue!4511) Bool)

(assert (=> b!2285635 (= e!1464381 (inv!17 (value!137766 (h!32605 tokens!456))))))

(declare-fun b!2285636 () Bool)

(declare-fun e!1464379 () Bool)

(assert (=> b!2285636 (= e!1464379 e!1464381)))

(declare-fun c!362558 () Bool)

(assert (=> b!2285636 (= c!362558 ((_ is IntegerValue!13534) (value!137766 (h!32605 tokens!456))))))

(declare-fun b!2285637 () Bool)

(declare-fun inv!16 (TokenValue!4511) Bool)

(assert (=> b!2285637 (= e!1464379 (inv!16 (value!137766 (h!32605 tokens!456))))))

(declare-fun b!2285638 () Bool)

(declare-fun e!1464380 () Bool)

(declare-fun inv!15 (TokenValue!4511) Bool)

(assert (=> b!2285638 (= e!1464380 (inv!15 (value!137766 (h!32605 tokens!456))))))

(declare-fun d!676232 () Bool)

(declare-fun c!362559 () Bool)

(assert (=> d!676232 (= c!362559 ((_ is IntegerValue!13533) (value!137766 (h!32605 tokens!456))))))

(assert (=> d!676232 (= (inv!21 (value!137766 (h!32605 tokens!456))) e!1464379)))

(declare-fun b!2285639 () Bool)

(declare-fun res!977187 () Bool)

(assert (=> b!2285639 (=> res!977187 e!1464380)))

(assert (=> b!2285639 (= res!977187 (not ((_ is IntegerValue!13535) (value!137766 (h!32605 tokens!456)))))))

(assert (=> b!2285639 (= e!1464381 e!1464380)))

(assert (= (and d!676232 c!362559) b!2285637))

(assert (= (and d!676232 (not c!362559)) b!2285636))

(assert (= (and b!2285636 c!362558) b!2285635))

(assert (= (and b!2285636 (not c!362558)) b!2285639))

(assert (= (and b!2285639 (not res!977187)) b!2285638))

(declare-fun m!2713433 () Bool)

(assert (=> b!2285635 m!2713433))

(declare-fun m!2713435 () Bool)

(assert (=> b!2285637 m!2713435))

(declare-fun m!2713437 () Bool)

(assert (=> b!2285638 m!2713437))

(assert (=> b!2285183 d!676232))

(declare-fun d!676234 () Bool)

(declare-fun list!10629 (Conc!8847) List!27298)

(assert (=> d!676234 (= (list!10625 (_1!15997 lt!848034)) (list!10629 (c!362484 (_1!15997 lt!848034))))))

(declare-fun bs!456791 () Bool)

(assert (= bs!456791 d!676234))

(declare-fun m!2713439 () Bool)

(assert (=> bs!456791 m!2713439))

(assert (=> b!2285193 d!676234))

(declare-fun d!676236 () Bool)

(assert (=> d!676236 (= (list!10624 (_2!15997 lt!848034)) (list!10628 (c!362482 (_2!15997 lt!848034))))))

(declare-fun bs!456792 () Bool)

(assert (= bs!456792 d!676236))

(declare-fun m!2713441 () Bool)

(assert (=> bs!456792 m!2713441))

(assert (=> b!2285193 d!676236))

(declare-fun b!2285650 () Bool)

(declare-fun e!1464390 () Bool)

(declare-fun e!1464388 () Bool)

(assert (=> b!2285650 (= e!1464390 e!1464388)))

(declare-fun res!977195 () Bool)

(declare-fun lt!848160 () tuple2!26974)

(assert (=> b!2285650 (= res!977195 (< (size!21400 (_2!15997 lt!848160)) (size!21400 (seqFromList!3053 input!1722))))))

(assert (=> b!2285650 (=> (not res!977195) (not e!1464388))))

(declare-fun b!2285651 () Bool)

(declare-fun res!977196 () Bool)

(declare-fun e!1464389 () Bool)

(assert (=> b!2285651 (=> (not res!977196) (not e!1464389))))

(declare-fun lexList!1102 (LexerInterface!3946 List!27297 List!27295) tuple2!26976)

(assert (=> b!2285651 (= res!977196 (= (list!10625 (_1!15997 lt!848160)) (_1!15998 (lexList!1102 thiss!16613 rules!1750 (list!10624 (seqFromList!3053 input!1722))))))))

(declare-fun b!2285652 () Bool)

(declare-fun isEmpty!15472 (BalanceConc!17422) Bool)

(assert (=> b!2285652 (= e!1464388 (not (isEmpty!15472 (_1!15997 lt!848160))))))

(declare-fun d!676238 () Bool)

(assert (=> d!676238 e!1464389))

(declare-fun res!977194 () Bool)

(assert (=> d!676238 (=> (not res!977194) (not e!1464389))))

(assert (=> d!676238 (= res!977194 e!1464390)))

(declare-fun c!362562 () Bool)

(declare-fun size!21404 (BalanceConc!17422) Int)

(assert (=> d!676238 (= c!362562 (> (size!21404 (_1!15997 lt!848160)) 0))))

(declare-fun lexTailRecV2!777 (LexerInterface!3946 List!27297 BalanceConc!17420 BalanceConc!17420 BalanceConc!17420 BalanceConc!17422) tuple2!26974)

(assert (=> d!676238 (= lt!848160 (lexTailRecV2!777 thiss!16613 rules!1750 (seqFromList!3053 input!1722) (BalanceConc!17421 Empty!8846) (seqFromList!3053 input!1722) (BalanceConc!17423 Empty!8847)))))

(assert (=> d!676238 (= (lex!1785 thiss!16613 rules!1750 (seqFromList!3053 input!1722)) lt!848160)))

(declare-fun b!2285653 () Bool)

(assert (=> b!2285653 (= e!1464390 (= (_2!15997 lt!848160) (seqFromList!3053 input!1722)))))

(declare-fun b!2285654 () Bool)

(assert (=> b!2285654 (= e!1464389 (= (list!10624 (_2!15997 lt!848160)) (_2!15998 (lexList!1102 thiss!16613 rules!1750 (list!10624 (seqFromList!3053 input!1722))))))))

(assert (= (and d!676238 c!362562) b!2285650))

(assert (= (and d!676238 (not c!362562)) b!2285653))

(assert (= (and b!2285650 res!977195) b!2285652))

(assert (= (and d!676238 res!977194) b!2285651))

(assert (= (and b!2285651 res!977196) b!2285654))

(declare-fun m!2713443 () Bool)

(assert (=> b!2285652 m!2713443))

(declare-fun m!2713445 () Bool)

(assert (=> d!676238 m!2713445))

(assert (=> d!676238 m!2713021))

(assert (=> d!676238 m!2713021))

(declare-fun m!2713447 () Bool)

(assert (=> d!676238 m!2713447))

(declare-fun m!2713449 () Bool)

(assert (=> b!2285651 m!2713449))

(assert (=> b!2285651 m!2713021))

(declare-fun m!2713451 () Bool)

(assert (=> b!2285651 m!2713451))

(assert (=> b!2285651 m!2713451))

(declare-fun m!2713453 () Bool)

(assert (=> b!2285651 m!2713453))

(declare-fun m!2713455 () Bool)

(assert (=> b!2285650 m!2713455))

(assert (=> b!2285650 m!2713021))

(declare-fun m!2713457 () Bool)

(assert (=> b!2285650 m!2713457))

(declare-fun m!2713459 () Bool)

(assert (=> b!2285654 m!2713459))

(assert (=> b!2285654 m!2713021))

(assert (=> b!2285654 m!2713451))

(assert (=> b!2285654 m!2713451))

(assert (=> b!2285654 m!2713453))

(assert (=> b!2285193 d!676238))

(declare-fun d!676240 () Bool)

(declare-fun fromListB!1368 (List!27295) BalanceConc!17420)

(assert (=> d!676240 (= (seqFromList!3053 input!1722) (fromListB!1368 input!1722))))

(declare-fun bs!456793 () Bool)

(assert (= bs!456793 d!676240))

(declare-fun m!2713461 () Bool)

(assert (=> bs!456793 m!2713461))

(assert (=> b!2285193 d!676240))

(declare-fun d!676242 () Bool)

(assert (=> d!676242 (= (isEmpty!15467 lt!848031) ((_ is Nil!27201) lt!848031))))

(assert (=> b!2285195 d!676242))

(declare-fun d!676244 () Bool)

(assert (=> d!676244 (= (inv!36789 (tag!4839 (rule!6677 (h!32605 tokens!456)))) (= (mod (str.len (value!137765 (tag!4839 (rule!6677 (h!32605 tokens!456))))) 2) 0))))

(assert (=> b!2285194 d!676244))

(declare-fun d!676246 () Bool)

(declare-fun res!977197 () Bool)

(declare-fun e!1464391 () Bool)

(assert (=> d!676246 (=> (not res!977197) (not e!1464391))))

(assert (=> d!676246 (= res!977197 (semiInverseModEq!1758 (toChars!5994 (transformation!4349 (rule!6677 (h!32605 tokens!456)))) (toValue!6135 (transformation!4349 (rule!6677 (h!32605 tokens!456))))))))

(assert (=> d!676246 (= (inv!36793 (transformation!4349 (rule!6677 (h!32605 tokens!456)))) e!1464391)))

(declare-fun b!2285655 () Bool)

(assert (=> b!2285655 (= e!1464391 (equivClasses!1677 (toChars!5994 (transformation!4349 (rule!6677 (h!32605 tokens!456)))) (toValue!6135 (transformation!4349 (rule!6677 (h!32605 tokens!456))))))))

(assert (= (and d!676246 res!977197) b!2285655))

(declare-fun m!2713463 () Bool)

(assert (=> d!676246 m!2713463))

(declare-fun m!2713465 () Bool)

(assert (=> b!2285655 m!2713465))

(assert (=> b!2285194 d!676246))

(declare-fun b!2285666 () Bool)

(declare-fun e!1464394 () Bool)

(assert (=> b!2285666 (= e!1464394 tp_is_empty!10615)))

(declare-fun b!2285669 () Bool)

(declare-fun tp!724520 () Bool)

(declare-fun tp!724521 () Bool)

(assert (=> b!2285669 (= e!1464394 (and tp!724520 tp!724521))))

(assert (=> b!2285206 (= tp!724435 e!1464394)))

(declare-fun b!2285668 () Bool)

(declare-fun tp!724519 () Bool)

(assert (=> b!2285668 (= e!1464394 tp!724519)))

(declare-fun b!2285667 () Bool)

(declare-fun tp!724522 () Bool)

(declare-fun tp!724523 () Bool)

(assert (=> b!2285667 (= e!1464394 (and tp!724522 tp!724523))))

(assert (= (and b!2285206 ((_ is ElementMatch!6697) (regex!4349 (h!32604 rules!1750)))) b!2285666))

(assert (= (and b!2285206 ((_ is Concat!11209) (regex!4349 (h!32604 rules!1750)))) b!2285667))

(assert (= (and b!2285206 ((_ is Star!6697) (regex!4349 (h!32604 rules!1750)))) b!2285668))

(assert (= (and b!2285206 ((_ is Union!6697) (regex!4349 (h!32604 rules!1750)))) b!2285669))

(declare-fun b!2285683 () Bool)

(declare-fun b_free!68501 () Bool)

(declare-fun b_next!69205 () Bool)

(assert (=> b!2285683 (= b_free!68501 (not b_next!69205))))

(declare-fun tp!724537 () Bool)

(declare-fun b_and!180945 () Bool)

(assert (=> b!2285683 (= tp!724537 b_and!180945)))

(declare-fun b_free!68503 () Bool)

(declare-fun b_next!69207 () Bool)

(assert (=> b!2285683 (= b_free!68503 (not b_next!69207))))

(declare-fun t!204019 () Bool)

(declare-fun tb!135975 () Bool)

(assert (=> (and b!2285683 (= (toChars!5994 (transformation!4349 (rule!6677 (h!32605 (t!203976 tokens!456))))) (toChars!5994 (transformation!4349 (rule!6677 (head!4966 tokens!456))))) t!204019) tb!135975))

(declare-fun result!165806 () Bool)

(assert (= result!165806 result!165768))

(assert (=> d!676180 t!204019))

(declare-fun t!204021 () Bool)

(declare-fun tb!135977 () Bool)

(assert (=> (and b!2285683 (= (toChars!5994 (transformation!4349 (rule!6677 (h!32605 (t!203976 tokens!456))))) (toChars!5994 (transformation!4349 (rule!6677 (h!32605 tokens!456))))) t!204021) tb!135977))

(declare-fun result!165808 () Bool)

(assert (= result!165808 result!165778))

(assert (=> b!2285455 t!204021))

(assert (=> d!676226 t!204021))

(declare-fun tp!724535 () Bool)

(declare-fun b_and!180947 () Bool)

(assert (=> b!2285683 (= tp!724535 (and (=> t!204019 result!165806) (=> t!204021 result!165808) b_and!180947))))

(declare-fun e!1464407 () Bool)

(assert (=> b!2285187 (= tp!724426 e!1464407)))

(declare-fun b!2285682 () Bool)

(declare-fun tp!724536 () Bool)

(declare-fun e!1464409 () Bool)

(declare-fun e!1464410 () Bool)

(assert (=> b!2285682 (= e!1464410 (and tp!724536 (inv!36789 (tag!4839 (rule!6677 (h!32605 (t!203976 tokens!456))))) (inv!36793 (transformation!4349 (rule!6677 (h!32605 (t!203976 tokens!456))))) e!1464409))))

(assert (=> b!2285683 (= e!1464409 (and tp!724537 tp!724535))))

(declare-fun e!1464412 () Bool)

(declare-fun b!2285680 () Bool)

(declare-fun tp!724538 () Bool)

(assert (=> b!2285680 (= e!1464407 (and (inv!36792 (h!32605 (t!203976 tokens!456))) e!1464412 tp!724538))))

(declare-fun tp!724534 () Bool)

(declare-fun b!2285681 () Bool)

(assert (=> b!2285681 (= e!1464412 (and (inv!21 (value!137766 (h!32605 (t!203976 tokens!456)))) e!1464410 tp!724534))))

(assert (= b!2285682 b!2285683))

(assert (= b!2285681 b!2285682))

(assert (= b!2285680 b!2285681))

(assert (= (and b!2285187 ((_ is Cons!27204) (t!203976 tokens!456))) b!2285680))

(declare-fun m!2713467 () Bool)

(assert (=> b!2285682 m!2713467))

(declare-fun m!2713469 () Bool)

(assert (=> b!2285682 m!2713469))

(declare-fun m!2713471 () Bool)

(assert (=> b!2285680 m!2713471))

(declare-fun m!2713473 () Bool)

(assert (=> b!2285681 m!2713473))

(declare-fun b!2285688 () Bool)

(declare-fun e!1464415 () Bool)

(declare-fun tp!724541 () Bool)

(assert (=> b!2285688 (= e!1464415 (and tp_is_empty!10615 tp!724541))))

(assert (=> b!2285199 (= tp!724427 e!1464415)))

(assert (= (and b!2285199 ((_ is Cons!27201) (t!203973 otherP!12))) b!2285688))

(declare-fun b!2285689 () Bool)

(declare-fun e!1464416 () Bool)

(declare-fun tp!724542 () Bool)

(assert (=> b!2285689 (= e!1464416 (and tp_is_empty!10615 tp!724542))))

(assert (=> b!2285198 (= tp!724434 e!1464416)))

(assert (= (and b!2285198 ((_ is Cons!27201) (t!203973 input!1722))) b!2285689))

(declare-fun b!2285690 () Bool)

(declare-fun e!1464417 () Bool)

(assert (=> b!2285690 (= e!1464417 tp_is_empty!10615)))

(declare-fun b!2285693 () Bool)

(declare-fun tp!724544 () Bool)

(declare-fun tp!724545 () Bool)

(assert (=> b!2285693 (= e!1464417 (and tp!724544 tp!724545))))

(assert (=> b!2285190 (= tp!724423 e!1464417)))

(declare-fun b!2285692 () Bool)

(declare-fun tp!724543 () Bool)

(assert (=> b!2285692 (= e!1464417 tp!724543)))

(declare-fun b!2285691 () Bool)

(declare-fun tp!724546 () Bool)

(declare-fun tp!724547 () Bool)

(assert (=> b!2285691 (= e!1464417 (and tp!724546 tp!724547))))

(assert (= (and b!2285190 ((_ is ElementMatch!6697) (regex!4349 r!2363))) b!2285690))

(assert (= (and b!2285190 ((_ is Concat!11209) (regex!4349 r!2363))) b!2285691))

(assert (= (and b!2285190 ((_ is Star!6697) (regex!4349 r!2363))) b!2285692))

(assert (= (and b!2285190 ((_ is Union!6697) (regex!4349 r!2363))) b!2285693))

(declare-fun b!2285694 () Bool)

(declare-fun e!1464418 () Bool)

(assert (=> b!2285694 (= e!1464418 tp_is_empty!10615)))

(declare-fun b!2285697 () Bool)

(declare-fun tp!724549 () Bool)

(declare-fun tp!724550 () Bool)

(assert (=> b!2285697 (= e!1464418 (and tp!724549 tp!724550))))

(assert (=> b!2285203 (= tp!724430 e!1464418)))

(declare-fun b!2285696 () Bool)

(declare-fun tp!724548 () Bool)

(assert (=> b!2285696 (= e!1464418 tp!724548)))

(declare-fun b!2285695 () Bool)

(declare-fun tp!724551 () Bool)

(declare-fun tp!724552 () Bool)

(assert (=> b!2285695 (= e!1464418 (and tp!724551 tp!724552))))

(assert (= (and b!2285203 ((_ is ElementMatch!6697) (regex!4349 otherR!12))) b!2285694))

(assert (= (and b!2285203 ((_ is Concat!11209) (regex!4349 otherR!12))) b!2285695))

(assert (= (and b!2285203 ((_ is Star!6697) (regex!4349 otherR!12))) b!2285696))

(assert (= (and b!2285203 ((_ is Union!6697) (regex!4349 otherR!12))) b!2285697))

(declare-fun b!2285698 () Bool)

(declare-fun e!1464419 () Bool)

(declare-fun tp!724553 () Bool)

(assert (=> b!2285698 (= e!1464419 (and tp_is_empty!10615 tp!724553))))

(assert (=> b!2285183 (= tp!724420 e!1464419)))

(assert (= (and b!2285183 ((_ is Cons!27201) (originalCharacters!5119 (h!32605 tokens!456)))) b!2285698))

(declare-fun b!2285699 () Bool)

(declare-fun e!1464420 () Bool)

(declare-fun tp!724554 () Bool)

(assert (=> b!2285699 (= e!1464420 (and tp_is_empty!10615 tp!724554))))

(assert (=> b!2285184 (= tp!724428 e!1464420)))

(assert (= (and b!2285184 ((_ is Cons!27201) (t!203973 suffix!886))) b!2285699))

(declare-fun b!2285700 () Bool)

(declare-fun e!1464421 () Bool)

(assert (=> b!2285700 (= e!1464421 tp_is_empty!10615)))

(declare-fun b!2285703 () Bool)

(declare-fun tp!724556 () Bool)

(declare-fun tp!724557 () Bool)

(assert (=> b!2285703 (= e!1464421 (and tp!724556 tp!724557))))

(assert (=> b!2285194 (= tp!724431 e!1464421)))

(declare-fun b!2285702 () Bool)

(declare-fun tp!724555 () Bool)

(assert (=> b!2285702 (= e!1464421 tp!724555)))

(declare-fun b!2285701 () Bool)

(declare-fun tp!724558 () Bool)

(declare-fun tp!724559 () Bool)

(assert (=> b!2285701 (= e!1464421 (and tp!724558 tp!724559))))

(assert (= (and b!2285194 ((_ is ElementMatch!6697) (regex!4349 (rule!6677 (h!32605 tokens!456))))) b!2285700))

(assert (= (and b!2285194 ((_ is Concat!11209) (regex!4349 (rule!6677 (h!32605 tokens!456))))) b!2285701))

(assert (= (and b!2285194 ((_ is Star!6697) (regex!4349 (rule!6677 (h!32605 tokens!456))))) b!2285702))

(assert (= (and b!2285194 ((_ is Union!6697) (regex!4349 (rule!6677 (h!32605 tokens!456))))) b!2285703))

(declare-fun b!2285714 () Bool)

(declare-fun b_free!68505 () Bool)

(declare-fun b_next!69209 () Bool)

(assert (=> b!2285714 (= b_free!68505 (not b_next!69209))))

(declare-fun tp!724571 () Bool)

(declare-fun b_and!180949 () Bool)

(assert (=> b!2285714 (= tp!724571 b_and!180949)))

(declare-fun b_free!68507 () Bool)

(declare-fun b_next!69211 () Bool)

(assert (=> b!2285714 (= b_free!68507 (not b_next!69211))))

(declare-fun tb!135979 () Bool)

(declare-fun t!204023 () Bool)

(assert (=> (and b!2285714 (= (toChars!5994 (transformation!4349 (h!32604 (t!203975 rules!1750)))) (toChars!5994 (transformation!4349 (rule!6677 (head!4966 tokens!456))))) t!204023) tb!135979))

(declare-fun result!165814 () Bool)

(assert (= result!165814 result!165768))

(assert (=> d!676180 t!204023))

(declare-fun tb!135981 () Bool)

(declare-fun t!204025 () Bool)

(assert (=> (and b!2285714 (= (toChars!5994 (transformation!4349 (h!32604 (t!203975 rules!1750)))) (toChars!5994 (transformation!4349 (rule!6677 (h!32605 tokens!456))))) t!204025) tb!135981))

(declare-fun result!165816 () Bool)

(assert (= result!165816 result!165778))

(assert (=> b!2285455 t!204025))

(assert (=> d!676226 t!204025))

(declare-fun b_and!180951 () Bool)

(declare-fun tp!724568 () Bool)

(assert (=> b!2285714 (= tp!724568 (and (=> t!204023 result!165814) (=> t!204025 result!165816) b_and!180951))))

(declare-fun e!1464433 () Bool)

(assert (=> b!2285714 (= e!1464433 (and tp!724571 tp!724568))))

(declare-fun e!1464430 () Bool)

(declare-fun b!2285713 () Bool)

(declare-fun tp!724570 () Bool)

(assert (=> b!2285713 (= e!1464430 (and tp!724570 (inv!36789 (tag!4839 (h!32604 (t!203975 rules!1750)))) (inv!36793 (transformation!4349 (h!32604 (t!203975 rules!1750)))) e!1464433))))

(declare-fun b!2285712 () Bool)

(declare-fun e!1464432 () Bool)

(declare-fun tp!724569 () Bool)

(assert (=> b!2285712 (= e!1464432 (and e!1464430 tp!724569))))

(assert (=> b!2285205 (= tp!724432 e!1464432)))

(assert (= b!2285713 b!2285714))

(assert (= b!2285712 b!2285713))

(assert (= (and b!2285205 ((_ is Cons!27203) (t!203975 rules!1750))) b!2285712))

(declare-fun m!2713475 () Bool)

(assert (=> b!2285713 m!2713475))

(declare-fun m!2713477 () Bool)

(assert (=> b!2285713 m!2713477))

(declare-fun b_lambda!72761 () Bool)

(assert (= b_lambda!72759 (or (and b!2285683 b_free!68503 (= (toChars!5994 (transformation!4349 (rule!6677 (h!32605 (t!203976 tokens!456))))) (toChars!5994 (transformation!4349 (rule!6677 (h!32605 tokens!456)))))) (and b!2285181 b_free!68483) (and b!2285186 b_free!68479 (= (toChars!5994 (transformation!4349 r!2363)) (toChars!5994 (transformation!4349 (rule!6677 (h!32605 tokens!456)))))) (and b!2285176 b_free!68491 (= (toChars!5994 (transformation!4349 (h!32604 rules!1750))) (toChars!5994 (transformation!4349 (rule!6677 (h!32605 tokens!456)))))) (and b!2285189 b_free!68487 (= (toChars!5994 (transformation!4349 otherR!12)) (toChars!5994 (transformation!4349 (rule!6677 (h!32605 tokens!456)))))) (and b!2285714 b_free!68507 (= (toChars!5994 (transformation!4349 (h!32604 (t!203975 rules!1750)))) (toChars!5994 (transformation!4349 (rule!6677 (h!32605 tokens!456)))))) b_lambda!72761)))

(declare-fun b_lambda!72763 () Bool)

(assert (= b_lambda!72753 (or (and b!2285683 b_free!68503 (= (toChars!5994 (transformation!4349 (rule!6677 (h!32605 (t!203976 tokens!456))))) (toChars!5994 (transformation!4349 (rule!6677 (h!32605 tokens!456)))))) (and b!2285181 b_free!68483) (and b!2285186 b_free!68479 (= (toChars!5994 (transformation!4349 r!2363)) (toChars!5994 (transformation!4349 (rule!6677 (h!32605 tokens!456)))))) (and b!2285176 b_free!68491 (= (toChars!5994 (transformation!4349 (h!32604 rules!1750))) (toChars!5994 (transformation!4349 (rule!6677 (h!32605 tokens!456)))))) (and b!2285189 b_free!68487 (= (toChars!5994 (transformation!4349 otherR!12)) (toChars!5994 (transformation!4349 (rule!6677 (h!32605 tokens!456)))))) (and b!2285714 b_free!68507 (= (toChars!5994 (transformation!4349 (h!32604 (t!203975 rules!1750)))) (toChars!5994 (transformation!4349 (rule!6677 (h!32605 tokens!456)))))) b_lambda!72763)))

(check-sat (not b!2285681) (not d!676180) (not b_next!69189) (not b_next!69193) (not b!2285599) (not d!676246) (not b!2285638) tp_is_empty!10615 (not d!676188) (not b!2285585) (not d!676218) (not bm!136520) (not b!2285637) b_and!180945 (not b!2285444) (not b!2285703) (not b!2285713) (not b_lambda!72763) (not b!2285652) (not b_next!69205) (not d!676108) (not d!676202) (not d!676096) (not b!2285455) (not b!2285428) (not b!2285436) (not d!676240) (not b!2285434) (not b!2285439) (not b!2285697) (not d!676214) (not b!2285696) (not d!676220) (not tb!135959) (not b_next!69185) (not b!2285457) (not b!2285432) (not d!676200) (not b!2285611) b_and!180881 (not b!2285701) (not b!2285435) b_and!180951 (not b!2285463) (not d!676186) (not d!676234) b_and!180941 (not b_next!69181) (not b!2285292) (not b_next!69191) b_and!180877 (not b!2285712) (not b!2285584) (not b!2285544) (not bm!136523) (not b!2285691) (not b_next!69187) (not b!2285271) (not b!2285654) (not d!676236) (not b_next!69211) (not b!2285668) (not b!2285456) (not d!676090) (not b!2285430) (not d!676208) (not d!676228) (not b!2285623) (not b!2285699) (not b!2285481) (not b!2285543) (not b!2285624) b_and!180937 (not d!676178) b_and!180939 (not d!676194) (not d!676206) (not d!676184) (not b!2285689) (not b!2285698) b_and!180947 b_and!180949 b_and!180943 (not b!2285635) (not b_next!69207) (not b!2285450) (not b!2285651) (not b!2285688) (not b!2285597) (not b!2285594) (not b!2285588) (not b!2285281) (not b!2285622) (not b!2285650) (not d!676196) (not d!676124) (not b!2285695) (not tb!135951) (not b!2285702) (not d!676226) (not b!2285655) (not b!2285669) (not b!2285593) (not d!676174) (not b_next!69195) (not b!2285614) (not b_lambda!72761) (not b!2285610) (not b!2285433) (not d!676222) b_and!180873 (not b!2285619) b_and!180885 (not b!2285545) (not d!676216) (not b_next!69183) (not b!2285429) (not b!2285667) (not b_next!69209) (not b!2285482) (not b!2285600) (not d!676238) (not b!2285680) (not b!2285692) (not b!2285682) (not b!2285693) (not b!2285595) (not d!676102) (not b_lambda!72751))
(check-sat b_and!180945 (not b_next!69205) (not b_next!69185) b_and!180881 (not b_next!69187) (not b_next!69211) (not b_next!69195) (not b_next!69183) (not b_next!69209) (not b_next!69189) (not b_next!69193) b_and!180951 b_and!180941 (not b_next!69181) (not b_next!69191) b_and!180877 b_and!180937 b_and!180939 b_and!180947 b_and!180949 b_and!180943 (not b_next!69207) b_and!180873 b_and!180885)
