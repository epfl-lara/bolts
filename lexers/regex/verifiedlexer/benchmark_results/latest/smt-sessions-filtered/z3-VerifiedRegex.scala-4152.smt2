; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!223372 () Bool)

(assert start!223372)

(declare-fun b!2280777 () Bool)

(declare-fun b_free!68173 () Bool)

(declare-fun b_next!68877 () Bool)

(assert (=> b!2280777 (= b_free!68173 (not b_next!68877))))

(declare-fun tp!722847 () Bool)

(declare-fun b_and!180145 () Bool)

(assert (=> b!2280777 (= tp!722847 b_and!180145)))

(declare-fun b_free!68175 () Bool)

(declare-fun b_next!68879 () Bool)

(assert (=> b!2280777 (= b_free!68175 (not b_next!68879))))

(declare-fun tp!722851 () Bool)

(declare-fun b_and!180147 () Bool)

(assert (=> b!2280777 (= tp!722851 b_and!180147)))

(declare-fun b!2280764 () Bool)

(declare-fun b_free!68177 () Bool)

(declare-fun b_next!68881 () Bool)

(assert (=> b!2280764 (= b_free!68177 (not b_next!68881))))

(declare-fun tp!722859 () Bool)

(declare-fun b_and!180149 () Bool)

(assert (=> b!2280764 (= tp!722859 b_and!180149)))

(declare-fun b_free!68179 () Bool)

(declare-fun b_next!68883 () Bool)

(assert (=> b!2280764 (= b_free!68179 (not b_next!68883))))

(declare-fun tp!722843 () Bool)

(declare-fun b_and!180151 () Bool)

(assert (=> b!2280764 (= tp!722843 b_and!180151)))

(declare-fun b!2280770 () Bool)

(declare-fun b_free!68181 () Bool)

(declare-fun b_next!68885 () Bool)

(assert (=> b!2280770 (= b_free!68181 (not b_next!68885))))

(declare-fun tp!722857 () Bool)

(declare-fun b_and!180153 () Bool)

(assert (=> b!2280770 (= tp!722857 b_and!180153)))

(declare-fun b_free!68183 () Bool)

(declare-fun b_next!68887 () Bool)

(assert (=> b!2280770 (= b_free!68183 (not b_next!68887))))

(declare-fun tp!722846 () Bool)

(declare-fun b_and!180155 () Bool)

(assert (=> b!2280770 (= tp!722846 b_and!180155)))

(declare-fun b!2280754 () Bool)

(declare-fun b_free!68185 () Bool)

(declare-fun b_next!68889 () Bool)

(assert (=> b!2280754 (= b_free!68185 (not b_next!68889))))

(declare-fun tp!722845 () Bool)

(declare-fun b_and!180157 () Bool)

(assert (=> b!2280754 (= tp!722845 b_and!180157)))

(declare-fun b_free!68187 () Bool)

(declare-fun b_next!68891 () Bool)

(assert (=> b!2280754 (= b_free!68187 (not b_next!68891))))

(declare-fun tp!722855 () Bool)

(declare-fun b_and!180159 () Bool)

(assert (=> b!2280754 (= tp!722855 b_and!180159)))

(declare-fun e!1461110 () Bool)

(declare-fun b!2280753 () Bool)

(declare-fun e!1461095 () Bool)

(declare-fun tp!722858 () Bool)

(declare-datatypes ((List!27231 0))(
  ( (Nil!27137) (Cons!27137 (h!32538 (_ BitVec 16)) (t!203487 List!27231)) )
))
(declare-datatypes ((TokenValue!4497 0))(
  ( (FloatLiteralValue!8994 (text!31924 List!27231)) (TokenValueExt!4496 (__x!18054 Int)) (Broken!22485 (value!137341 List!27231)) (Object!4590) (End!4497) (Def!4497) (Underscore!4497) (Match!4497) (Else!4497) (Error!4497) (Case!4497) (If!4497) (Extends!4497) (Abstract!4497) (Class!4497) (Val!4497) (DelimiterValue!8994 (del!4557 List!27231)) (KeywordValue!4503 (value!137342 List!27231)) (CommentValue!8994 (value!137343 List!27231)) (WhitespaceValue!8994 (value!137344 List!27231)) (IndentationValue!4497 (value!137345 List!27231)) (String!29588) (Int32!4497) (Broken!22486 (value!137346 List!27231)) (Boolean!4498) (Unit!40059) (OperatorValue!4500 (op!4557 List!27231)) (IdentifierValue!8994 (value!137347 List!27231)) (IdentifierValue!8995 (value!137348 List!27231)) (WhitespaceValue!8995 (value!137349 List!27231)) (True!8994) (False!8994) (Broken!22487 (value!137350 List!27231)) (Broken!22488 (value!137351 List!27231)) (True!8995) (RightBrace!4497) (RightBracket!4497) (Colon!4497) (Null!4497) (Comma!4497) (LeftBracket!4497) (False!8995) (LeftBrace!4497) (ImaginaryLiteralValue!4497 (text!31925 List!27231)) (StringLiteralValue!13491 (value!137352 List!27231)) (EOFValue!4497 (value!137353 List!27231)) (IdentValue!4497 (value!137354 List!27231)) (DelimiterValue!8995 (value!137355 List!27231)) (DedentValue!4497 (value!137356 List!27231)) (NewLineValue!4497 (value!137357 List!27231)) (IntegerValue!13491 (value!137358 (_ BitVec 32)) (text!31926 List!27231)) (IntegerValue!13492 (value!137359 Int) (text!31927 List!27231)) (Times!4497) (Or!4497) (Equal!4497) (Minus!4497) (Broken!22489 (value!137360 List!27231)) (And!4497) (Div!4497) (LessEqual!4497) (Mod!4497) (Concat!11180) (Not!4497) (Plus!4497) (SpaceValue!4497 (value!137361 List!27231)) (IntegerValue!13493 (value!137362 Int) (text!31928 List!27231)) (StringLiteralValue!13492 (text!31929 List!27231)) (FloatLiteralValue!8995 (text!31930 List!27231)) (BytesLiteralValue!4497 (value!137363 List!27231)) (CommentValue!8995 (value!137364 List!27231)) (StringLiteralValue!13493 (value!137365 List!27231)) (ErrorTokenValue!4497 (msg!4558 List!27231)) )
))
(declare-datatypes ((C!13512 0))(
  ( (C!13513 (val!7804 Int)) )
))
(declare-datatypes ((List!27232 0))(
  ( (Nil!27138) (Cons!27138 (h!32539 C!13512) (t!203488 List!27232)) )
))
(declare-datatypes ((IArray!17641 0))(
  ( (IArray!17642 (innerList!8878 List!27232)) )
))
(declare-datatypes ((Conc!8818 0))(
  ( (Node!8818 (left!20582 Conc!8818) (right!20912 Conc!8818) (csize!17866 Int) (cheight!9029 Int)) (Leaf!12971 (xs!11760 IArray!17641) (csize!17867 Int)) (Empty!8818) )
))
(declare-datatypes ((BalanceConc!17364 0))(
  ( (BalanceConc!17365 (c!361906 Conc!8818)) )
))
(declare-datatypes ((Regex!6683 0))(
  ( (ElementMatch!6683 (c!361907 C!13512)) (Concat!11181 (regOne!13878 Regex!6683) (regTwo!13878 Regex!6683)) (EmptyExpr!6683) (Star!6683 (reg!7012 Regex!6683)) (EmptyLang!6683) (Union!6683 (regOne!13879 Regex!6683) (regTwo!13879 Regex!6683)) )
))
(declare-datatypes ((String!29589 0))(
  ( (String!29590 (value!137366 String)) )
))
(declare-datatypes ((TokenValueInjection!8534 0))(
  ( (TokenValueInjection!8535 (toValue!6117 Int) (toChars!5976 Int)) )
))
(declare-datatypes ((Rule!8470 0))(
  ( (Rule!8471 (regex!4335 Regex!6683) (tag!4825 String!29589) (isSeparator!4335 Bool) (transformation!4335 TokenValueInjection!8534)) )
))
(declare-fun otherR!12 () Rule!8470)

(declare-fun inv!36718 (String!29589) Bool)

(declare-fun inv!36721 (TokenValueInjection!8534) Bool)

(assert (=> b!2280753 (= e!1461095 (and tp!722858 (inv!36718 (tag!4825 otherR!12)) (inv!36721 (transformation!4335 otherR!12)) e!1461110))))

(declare-fun e!1461111 () Bool)

(assert (=> b!2280754 (= e!1461111 (and tp!722845 tp!722855))))

(declare-fun e!1461090 () Bool)

(declare-fun tp!722850 () Bool)

(declare-fun b!2280755 () Bool)

(declare-fun e!1461104 () Bool)

(declare-datatypes ((Token!8148 0))(
  ( (Token!8149 (value!137367 TokenValue!4497) (rule!6661 Rule!8470) (size!21336 Int) (originalCharacters!5105 List!27232)) )
))
(declare-datatypes ((List!27233 0))(
  ( (Nil!27139) (Cons!27139 (h!32540 Token!8148) (t!203489 List!27233)) )
))
(declare-fun tokens!456 () List!27233)

(declare-fun inv!36722 (Token!8148) Bool)

(assert (=> b!2280755 (= e!1461090 (and (inv!36722 (h!32540 tokens!456)) e!1461104 tp!722850))))

(declare-fun b!2280756 () Bool)

(declare-fun res!974907 () Bool)

(declare-fun e!1461115 () Bool)

(assert (=> b!2280756 (=> (not res!974907) (not e!1461115))))

(declare-datatypes ((List!27234 0))(
  ( (Nil!27140) (Cons!27140 (h!32541 Rule!8470) (t!203490 List!27234)) )
))
(declare-fun rules!1750 () List!27234)

(declare-fun contains!4707 (List!27234 Rule!8470) Bool)

(assert (=> b!2280756 (= res!974907 (contains!4707 rules!1750 otherR!12))))

(declare-fun b!2280757 () Bool)

(declare-fun res!974906 () Bool)

(declare-fun e!1461103 () Bool)

(assert (=> b!2280757 (=> res!974906 e!1461103)))

(get-info :version)

(assert (=> b!2280757 (= res!974906 ((_ is Nil!27139) tokens!456))))

(declare-fun b!2280758 () Bool)

(declare-fun res!974912 () Bool)

(assert (=> b!2280758 (=> (not res!974912) (not e!1461115))))

(declare-datatypes ((LexerInterface!3932 0))(
  ( (LexerInterfaceExt!3929 (__x!18055 Int)) (Lexer!3930) )
))
(declare-fun thiss!16613 () LexerInterface!3932)

(declare-fun rulesInvariant!3434 (LexerInterface!3932 List!27234) Bool)

(assert (=> b!2280758 (= res!974912 (rulesInvariant!3434 thiss!16613 rules!1750))))

(declare-fun b!2280759 () Bool)

(declare-fun e!1461101 () Bool)

(declare-fun r!2363 () Rule!8470)

(declare-fun head!4944 (List!27233) Token!8148)

(assert (=> b!2280759 (= e!1461101 (= (rule!6661 (head!4944 tokens!456)) r!2363))))

(declare-fun b!2280760 () Bool)

(declare-fun e!1461089 () Bool)

(assert (=> b!2280760 (= e!1461103 e!1461089)))

(declare-fun res!974918 () Bool)

(assert (=> b!2280760 (=> res!974918 e!1461089)))

(declare-datatypes ((tuple2!26882 0))(
  ( (tuple2!26883 (_1!15951 Token!8148) (_2!15951 List!27232)) )
))
(declare-fun lt!846566 () tuple2!26882)

(assert (=> b!2280760 (= res!974918 (not (= (h!32540 tokens!456) (_1!15951 lt!846566))))))

(declare-fun input!1722 () List!27232)

(declare-datatypes ((Option!5321 0))(
  ( (None!5320) (Some!5320 (v!30382 tuple2!26882)) )
))
(declare-fun get!8182 (Option!5321) tuple2!26882)

(declare-fun maxPrefix!2196 (LexerInterface!3932 List!27234 List!27232) Option!5321)

(assert (=> b!2280760 (= lt!846566 (get!8182 (maxPrefix!2196 thiss!16613 rules!1750 input!1722)))))

(declare-fun b!2280761 () Bool)

(declare-fun res!974913 () Bool)

(assert (=> b!2280761 (=> (not res!974913) (not e!1461115))))

(assert (=> b!2280761 (= res!974913 (contains!4707 rules!1750 r!2363))))

(declare-fun b!2280762 () Bool)

(declare-fun e!1461096 () Bool)

(assert (=> b!2280762 (= e!1461096 e!1461103)))

(declare-fun res!974915 () Bool)

(assert (=> b!2280762 (=> res!974915 e!1461103)))

(declare-fun getIndex!348 (List!27234 Rule!8470) Int)

(assert (=> b!2280762 (= res!974915 (<= (getIndex!348 rules!1750 r!2363) (getIndex!348 rules!1750 otherR!12)))))

(declare-fun ruleValid!1425 (LexerInterface!3932 Rule!8470) Bool)

(assert (=> b!2280762 (ruleValid!1425 thiss!16613 otherR!12)))

(declare-datatypes ((Unit!40060 0))(
  ( (Unit!40061) )
))
(declare-fun lt!846573 () Unit!40060)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!830 (LexerInterface!3932 Rule!8470 List!27234) Unit!40060)

(assert (=> b!2280762 (= lt!846573 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!830 thiss!16613 otherR!12 rules!1750))))

(declare-fun b!2280763 () Bool)

(declare-fun e!1461087 () Bool)

(declare-fun tp_is_empty!10587 () Bool)

(declare-fun tp!722856 () Bool)

(assert (=> b!2280763 (= e!1461087 (and tp_is_empty!10587 tp!722856))))

(declare-fun e!1461112 () Bool)

(assert (=> b!2280764 (= e!1461112 (and tp!722859 tp!722843))))

(declare-fun b!2280765 () Bool)

(declare-fun e!1461106 () Bool)

(declare-fun e!1461102 () Bool)

(declare-fun tp!722853 () Bool)

(assert (=> b!2280765 (= e!1461106 (and e!1461102 tp!722853))))

(declare-fun b!2280766 () Bool)

(declare-fun e!1461108 () Bool)

(declare-fun e!1461088 () Bool)

(assert (=> b!2280766 (= e!1461108 e!1461088)))

(declare-fun res!974905 () Bool)

(assert (=> b!2280766 (=> (not res!974905) (not e!1461088))))

(declare-fun e!1461098 () Bool)

(assert (=> b!2280766 (= res!974905 e!1461098)))

(declare-fun res!974914 () Bool)

(assert (=> b!2280766 (=> res!974914 e!1461098)))

(declare-fun lt!846574 () Bool)

(assert (=> b!2280766 (= res!974914 lt!846574)))

(declare-fun isEmpty!15408 (List!27233) Bool)

(assert (=> b!2280766 (= lt!846574 (isEmpty!15408 tokens!456))))

(declare-fun b!2280767 () Bool)

(declare-fun e!1461092 () Bool)

(declare-fun e!1461109 () Bool)

(assert (=> b!2280767 (= e!1461092 e!1461109)))

(declare-fun res!974916 () Bool)

(assert (=> b!2280767 (=> res!974916 e!1461109)))

(declare-fun lt!846569 () List!27232)

(declare-fun isPrefix!2325 (List!27232 List!27232) Bool)

(assert (=> b!2280767 (= res!974916 (not (isPrefix!2325 lt!846569 input!1722)))))

(declare-fun otherP!12 () List!27232)

(assert (=> b!2280767 (= lt!846569 otherP!12)))

(declare-fun lt!846570 () Unit!40060)

(declare-fun lemmaIsPrefixSameLengthThenSameList!391 (List!27232 List!27232 List!27232) Unit!40060)

(assert (=> b!2280767 (= lt!846570 (lemmaIsPrefixSameLengthThenSameList!391 lt!846569 otherP!12 input!1722))))

(declare-fun tp!722844 () Bool)

(declare-fun b!2280768 () Bool)

(declare-fun e!1461105 () Bool)

(declare-fun inv!21 (TokenValue!4497) Bool)

(assert (=> b!2280768 (= e!1461104 (and (inv!21 (value!137367 (h!32540 tokens!456))) e!1461105 tp!722844))))

(declare-fun b!2280769 () Bool)

(assert (=> b!2280769 (= e!1461089 e!1461092)))

(declare-fun res!974902 () Bool)

(assert (=> b!2280769 (=> res!974902 e!1461092)))

(declare-fun size!21337 (List!27232) Int)

(assert (=> b!2280769 (= res!974902 (not (= (size!21337 otherP!12) (size!21337 lt!846569))))))

(declare-fun lt!846571 () List!27232)

(assert (=> b!2280769 (= (_2!15951 lt!846566) lt!846571)))

(declare-fun lt!846572 () Unit!40060)

(declare-fun lemmaSamePrefixThenSameSuffix!1026 (List!27232 List!27232 List!27232 List!27232 List!27232) Unit!40060)

(assert (=> b!2280769 (= lt!846572 (lemmaSamePrefixThenSameSuffix!1026 lt!846569 (_2!15951 lt!846566) lt!846569 lt!846571 input!1722))))

(declare-fun getSuffix!1116 (List!27232 List!27232) List!27232)

(assert (=> b!2280769 (= lt!846571 (getSuffix!1116 input!1722 lt!846569))))

(declare-fun ++!6627 (List!27232 List!27232) List!27232)

(assert (=> b!2280769 (isPrefix!2325 lt!846569 (++!6627 lt!846569 (_2!15951 lt!846566)))))

(declare-fun lt!846567 () Unit!40060)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1530 (List!27232 List!27232) Unit!40060)

(assert (=> b!2280769 (= lt!846567 (lemmaConcatTwoListThenFirstIsPrefix!1530 lt!846569 (_2!15951 lt!846566)))))

(declare-fun list!10576 (BalanceConc!17364) List!27232)

(declare-fun charsOf!2723 (Token!8148) BalanceConc!17364)

(assert (=> b!2280769 (= lt!846569 (list!10576 (charsOf!2723 (h!32540 tokens!456))))))

(assert (=> b!2280770 (= e!1461110 (and tp!722857 tp!722846))))

(declare-fun b!2280771 () Bool)

(declare-fun res!974920 () Bool)

(assert (=> b!2280771 (=> (not res!974920) (not e!1461088))))

(assert (=> b!2280771 (= res!974920 (isPrefix!2325 otherP!12 input!1722))))

(declare-fun b!2280752 () Bool)

(assert (=> b!2280752 (= e!1461115 e!1461108)))

(declare-fun res!974910 () Bool)

(assert (=> b!2280752 (=> (not res!974910) (not e!1461108))))

(declare-fun suffix!886 () List!27232)

(declare-datatypes ((IArray!17643 0))(
  ( (IArray!17644 (innerList!8879 List!27233)) )
))
(declare-datatypes ((Conc!8819 0))(
  ( (Node!8819 (left!20583 Conc!8819) (right!20913 Conc!8819) (csize!17868 Int) (cheight!9030 Int)) (Leaf!12972 (xs!11761 IArray!17643) (csize!17869 Int)) (Empty!8819) )
))
(declare-datatypes ((BalanceConc!17366 0))(
  ( (BalanceConc!17367 (c!361908 Conc!8819)) )
))
(declare-datatypes ((tuple2!26884 0))(
  ( (tuple2!26885 (_1!15952 BalanceConc!17366) (_2!15952 BalanceConc!17364)) )
))
(declare-fun lt!846565 () tuple2!26884)

(declare-datatypes ((tuple2!26886 0))(
  ( (tuple2!26887 (_1!15953 List!27233) (_2!15953 List!27232)) )
))
(declare-fun list!10577 (BalanceConc!17366) List!27233)

(assert (=> b!2280752 (= res!974910 (= (tuple2!26887 (list!10577 (_1!15952 lt!846565)) (list!10576 (_2!15952 lt!846565))) (tuple2!26887 tokens!456 suffix!886)))))

(declare-fun lex!1771 (LexerInterface!3932 List!27234 BalanceConc!17364) tuple2!26884)

(declare-fun seqFromList!3039 (List!27232) BalanceConc!17364)

(assert (=> b!2280752 (= lt!846565 (lex!1771 thiss!16613 rules!1750 (seqFromList!3039 input!1722)))))

(declare-fun res!974903 () Bool)

(assert (=> start!223372 (=> (not res!974903) (not e!1461115))))

(assert (=> start!223372 (= res!974903 ((_ is Lexer!3930) thiss!16613))))

(assert (=> start!223372 e!1461115))

(assert (=> start!223372 true))

(declare-fun e!1461097 () Bool)

(assert (=> start!223372 e!1461097))

(assert (=> start!223372 e!1461095))

(declare-fun e!1461094 () Bool)

(assert (=> start!223372 e!1461094))

(assert (=> start!223372 e!1461087))

(assert (=> start!223372 e!1461106))

(declare-fun e!1461114 () Bool)

(assert (=> start!223372 e!1461114))

(assert (=> start!223372 e!1461090))

(declare-fun b!2280772 () Bool)

(assert (=> b!2280772 (= e!1461088 (not e!1461096))))

(declare-fun res!974917 () Bool)

(assert (=> b!2280772 (=> res!974917 e!1461096)))

(declare-fun e!1461099 () Bool)

(assert (=> b!2280772 (= res!974917 e!1461099)))

(declare-fun res!974909 () Bool)

(assert (=> b!2280772 (=> (not res!974909) (not e!1461099))))

(assert (=> b!2280772 (= res!974909 (not lt!846574))))

(assert (=> b!2280772 (ruleValid!1425 thiss!16613 r!2363)))

(declare-fun lt!846568 () Unit!40060)

(assert (=> b!2280772 (= lt!846568 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!830 thiss!16613 r!2363 rules!1750))))

(declare-fun b!2280773 () Bool)

(declare-fun isEmpty!15409 (List!27232) Bool)

(assert (=> b!2280773 (= e!1461109 (not (isEmpty!15409 lt!846569)))))

(declare-fun b!2280774 () Bool)

(declare-fun res!974919 () Bool)

(assert (=> b!2280774 (=> (not res!974919) (not e!1461088))))

(assert (=> b!2280774 (= res!974919 e!1461101)))

(declare-fun res!974911 () Bool)

(assert (=> b!2280774 (=> res!974911 e!1461101)))

(assert (=> b!2280774 (= res!974911 lt!846574)))

(declare-fun b!2280775 () Bool)

(declare-fun res!974908 () Bool)

(assert (=> b!2280775 (=> (not res!974908) (not e!1461115))))

(declare-fun isEmpty!15410 (List!27234) Bool)

(assert (=> b!2280775 (= res!974908 (not (isEmpty!15410 rules!1750)))))

(declare-fun b!2280776 () Bool)

(declare-fun res!974904 () Bool)

(assert (=> b!2280776 (=> (not res!974904) (not e!1461088))))

(assert (=> b!2280776 (= res!974904 (not (= r!2363 otherR!12)))))

(declare-fun e!1461091 () Bool)

(assert (=> b!2280777 (= e!1461091 (and tp!722847 tp!722851))))

(declare-fun b!2280778 () Bool)

(declare-fun tp!722854 () Bool)

(assert (=> b!2280778 (= e!1461094 (and tp_is_empty!10587 tp!722854))))

(declare-fun b!2280779 () Bool)

(declare-fun size!21338 (BalanceConc!17364) Int)

(assert (=> b!2280779 (= e!1461098 (<= (size!21338 (charsOf!2723 (head!4944 tokens!456))) (size!21337 otherP!12)))))

(declare-fun tp!722852 () Bool)

(declare-fun b!2280780 () Bool)

(assert (=> b!2280780 (= e!1461105 (and tp!722852 (inv!36718 (tag!4825 (rule!6661 (h!32540 tokens!456)))) (inv!36721 (transformation!4335 (rule!6661 (h!32540 tokens!456)))) e!1461111))))

(declare-fun tp!722842 () Bool)

(declare-fun b!2280781 () Bool)

(assert (=> b!2280781 (= e!1461102 (and tp!722842 (inv!36718 (tag!4825 (h!32541 rules!1750))) (inv!36721 (transformation!4335 (h!32541 rules!1750))) e!1461112))))

(declare-fun b!2280782 () Bool)

(declare-fun matchR!2940 (Regex!6683 List!27232) Bool)

(assert (=> b!2280782 (= e!1461099 (not (matchR!2940 (regex!4335 r!2363) (list!10576 (charsOf!2723 (head!4944 tokens!456))))))))

(declare-fun tp!722849 () Bool)

(declare-fun b!2280783 () Bool)

(assert (=> b!2280783 (= e!1461114 (and tp!722849 (inv!36718 (tag!4825 r!2363)) (inv!36721 (transformation!4335 r!2363)) e!1461091))))

(declare-fun b!2280784 () Bool)

(declare-fun tp!722848 () Bool)

(assert (=> b!2280784 (= e!1461097 (and tp_is_empty!10587 tp!722848))))

(assert (= (and start!223372 res!974903) b!2280775))

(assert (= (and b!2280775 res!974908) b!2280758))

(assert (= (and b!2280758 res!974912) b!2280761))

(assert (= (and b!2280761 res!974913) b!2280756))

(assert (= (and b!2280756 res!974907) b!2280752))

(assert (= (and b!2280752 res!974910) b!2280766))

(assert (= (and b!2280766 (not res!974914)) b!2280779))

(assert (= (and b!2280766 res!974905) b!2280774))

(assert (= (and b!2280774 (not res!974911)) b!2280759))

(assert (= (and b!2280774 res!974919) b!2280771))

(assert (= (and b!2280771 res!974920) b!2280776))

(assert (= (and b!2280776 res!974904) b!2280772))

(assert (= (and b!2280772 res!974909) b!2280782))

(assert (= (and b!2280772 (not res!974917)) b!2280762))

(assert (= (and b!2280762 (not res!974915)) b!2280757))

(assert (= (and b!2280757 (not res!974906)) b!2280760))

(assert (= (and b!2280760 (not res!974918)) b!2280769))

(assert (= (and b!2280769 (not res!974902)) b!2280767))

(assert (= (and b!2280767 (not res!974916)) b!2280773))

(assert (= (and start!223372 ((_ is Cons!27138) input!1722)) b!2280784))

(assert (= b!2280753 b!2280770))

(assert (= start!223372 b!2280753))

(assert (= (and start!223372 ((_ is Cons!27138) suffix!886)) b!2280778))

(assert (= (and start!223372 ((_ is Cons!27138) otherP!12)) b!2280763))

(assert (= b!2280781 b!2280764))

(assert (= b!2280765 b!2280781))

(assert (= (and start!223372 ((_ is Cons!27140) rules!1750)) b!2280765))

(assert (= b!2280783 b!2280777))

(assert (= start!223372 b!2280783))

(assert (= b!2280780 b!2280754))

(assert (= b!2280768 b!2280780))

(assert (= b!2280755 b!2280768))

(assert (= (and start!223372 ((_ is Cons!27139) tokens!456)) b!2280755))

(declare-fun m!2708761 () Bool)

(assert (=> b!2280781 m!2708761))

(declare-fun m!2708763 () Bool)

(assert (=> b!2280781 m!2708763))

(declare-fun m!2708765 () Bool)

(assert (=> b!2280759 m!2708765))

(declare-fun m!2708767 () Bool)

(assert (=> b!2280760 m!2708767))

(assert (=> b!2280760 m!2708767))

(declare-fun m!2708769 () Bool)

(assert (=> b!2280760 m!2708769))

(declare-fun m!2708771 () Bool)

(assert (=> b!2280761 m!2708771))

(declare-fun m!2708773 () Bool)

(assert (=> b!2280762 m!2708773))

(declare-fun m!2708775 () Bool)

(assert (=> b!2280762 m!2708775))

(declare-fun m!2708777 () Bool)

(assert (=> b!2280762 m!2708777))

(declare-fun m!2708779 () Bool)

(assert (=> b!2280762 m!2708779))

(declare-fun m!2708781 () Bool)

(assert (=> b!2280773 m!2708781))

(declare-fun m!2708783 () Bool)

(assert (=> b!2280783 m!2708783))

(declare-fun m!2708785 () Bool)

(assert (=> b!2280783 m!2708785))

(declare-fun m!2708787 () Bool)

(assert (=> b!2280752 m!2708787))

(declare-fun m!2708789 () Bool)

(assert (=> b!2280752 m!2708789))

(declare-fun m!2708791 () Bool)

(assert (=> b!2280752 m!2708791))

(assert (=> b!2280752 m!2708791))

(declare-fun m!2708793 () Bool)

(assert (=> b!2280752 m!2708793))

(declare-fun m!2708795 () Bool)

(assert (=> b!2280756 m!2708795))

(declare-fun m!2708797 () Bool)

(assert (=> b!2280769 m!2708797))

(declare-fun m!2708799 () Bool)

(assert (=> b!2280769 m!2708799))

(declare-fun m!2708801 () Bool)

(assert (=> b!2280769 m!2708801))

(declare-fun m!2708803 () Bool)

(assert (=> b!2280769 m!2708803))

(assert (=> b!2280769 m!2708801))

(declare-fun m!2708805 () Bool)

(assert (=> b!2280769 m!2708805))

(declare-fun m!2708807 () Bool)

(assert (=> b!2280769 m!2708807))

(declare-fun m!2708809 () Bool)

(assert (=> b!2280769 m!2708809))

(declare-fun m!2708811 () Bool)

(assert (=> b!2280769 m!2708811))

(assert (=> b!2280769 m!2708809))

(declare-fun m!2708813 () Bool)

(assert (=> b!2280769 m!2708813))

(declare-fun m!2708815 () Bool)

(assert (=> b!2280780 m!2708815))

(declare-fun m!2708817 () Bool)

(assert (=> b!2280780 m!2708817))

(declare-fun m!2708819 () Bool)

(assert (=> b!2280768 m!2708819))

(assert (=> b!2280779 m!2708765))

(assert (=> b!2280779 m!2708765))

(declare-fun m!2708821 () Bool)

(assert (=> b!2280779 m!2708821))

(assert (=> b!2280779 m!2708821))

(declare-fun m!2708823 () Bool)

(assert (=> b!2280779 m!2708823))

(assert (=> b!2280779 m!2708813))

(declare-fun m!2708825 () Bool)

(assert (=> b!2280755 m!2708825))

(declare-fun m!2708827 () Bool)

(assert (=> b!2280772 m!2708827))

(declare-fun m!2708829 () Bool)

(assert (=> b!2280772 m!2708829))

(declare-fun m!2708831 () Bool)

(assert (=> b!2280771 m!2708831))

(declare-fun m!2708833 () Bool)

(assert (=> b!2280753 m!2708833))

(declare-fun m!2708835 () Bool)

(assert (=> b!2280753 m!2708835))

(declare-fun m!2708837 () Bool)

(assert (=> b!2280766 m!2708837))

(declare-fun m!2708839 () Bool)

(assert (=> b!2280775 m!2708839))

(declare-fun m!2708841 () Bool)

(assert (=> b!2280758 m!2708841))

(declare-fun m!2708843 () Bool)

(assert (=> b!2280767 m!2708843))

(declare-fun m!2708845 () Bool)

(assert (=> b!2280767 m!2708845))

(assert (=> b!2280782 m!2708765))

(assert (=> b!2280782 m!2708765))

(assert (=> b!2280782 m!2708821))

(assert (=> b!2280782 m!2708821))

(declare-fun m!2708847 () Bool)

(assert (=> b!2280782 m!2708847))

(assert (=> b!2280782 m!2708847))

(declare-fun m!2708849 () Bool)

(assert (=> b!2280782 m!2708849))

(check-sat (not b!2280771) (not b_next!68883) (not b!2280782) (not b!2280756) tp_is_empty!10587 (not b_next!68877) (not b_next!68879) b_and!180145 (not b_next!68889) (not b!2280779) (not b!2280784) (not b!2280781) b_and!180157 b_and!180147 (not b!2280765) (not b!2280767) (not b_next!68891) b_and!180151 b_and!180159 (not b!2280753) (not b_next!68887) (not b!2280773) (not b!2280761) (not b!2280783) (not b!2280755) (not b!2280769) (not b!2280760) (not b!2280766) (not b!2280752) (not b_next!68881) (not b!2280758) (not b!2280759) (not b!2280768) b_and!180153 b_and!180155 (not b!2280775) (not b!2280778) (not b!2280772) (not b_next!68885) b_and!180149 (not b!2280780) (not b!2280762) (not b!2280763))
(check-sat (not b_next!68887) (not b_next!68883) (not b_next!68881) b_and!180153 (not b_next!68877) (not b_next!68879) b_and!180155 (not b_next!68885) b_and!180145 b_and!180149 (not b_next!68889) b_and!180157 b_and!180147 (not b_next!68891) b_and!180151 b_and!180159)
(get-model)

(declare-fun d!674889 () Bool)

(declare-fun res!974936 () Bool)

(declare-fun e!1461118 () Bool)

(assert (=> d!674889 (=> (not res!974936) (not e!1461118))))

(assert (=> d!674889 (= res!974936 (not (isEmpty!15409 (originalCharacters!5105 (h!32540 tokens!456)))))))

(assert (=> d!674889 (= (inv!36722 (h!32540 tokens!456)) e!1461118)))

(declare-fun b!2280789 () Bool)

(declare-fun res!974937 () Bool)

(assert (=> b!2280789 (=> (not res!974937) (not e!1461118))))

(declare-fun dynLambda!11771 (Int TokenValue!4497) BalanceConc!17364)

(assert (=> b!2280789 (= res!974937 (= (originalCharacters!5105 (h!32540 tokens!456)) (list!10576 (dynLambda!11771 (toChars!5976 (transformation!4335 (rule!6661 (h!32540 tokens!456)))) (value!137367 (h!32540 tokens!456))))))))

(declare-fun b!2280790 () Bool)

(assert (=> b!2280790 (= e!1461118 (= (size!21336 (h!32540 tokens!456)) (size!21337 (originalCharacters!5105 (h!32540 tokens!456)))))))

(assert (= (and d!674889 res!974936) b!2280789))

(assert (= (and b!2280789 res!974937) b!2280790))

(declare-fun b_lambda!72581 () Bool)

(assert (=> (not b_lambda!72581) (not b!2280789)))

(declare-fun t!203492 () Bool)

(declare-fun tb!135519 () Bool)

(assert (=> (and b!2280777 (= (toChars!5976 (transformation!4335 r!2363)) (toChars!5976 (transformation!4335 (rule!6661 (h!32540 tokens!456))))) t!203492) tb!135519))

(declare-fun b!2280795 () Bool)

(declare-fun e!1461121 () Bool)

(declare-fun tp!722862 () Bool)

(declare-fun inv!36725 (Conc!8818) Bool)

(assert (=> b!2280795 (= e!1461121 (and (inv!36725 (c!361906 (dynLambda!11771 (toChars!5976 (transformation!4335 (rule!6661 (h!32540 tokens!456)))) (value!137367 (h!32540 tokens!456))))) tp!722862))))

(declare-fun result!165242 () Bool)

(declare-fun inv!36726 (BalanceConc!17364) Bool)

(assert (=> tb!135519 (= result!165242 (and (inv!36726 (dynLambda!11771 (toChars!5976 (transformation!4335 (rule!6661 (h!32540 tokens!456)))) (value!137367 (h!32540 tokens!456)))) e!1461121))))

(assert (= tb!135519 b!2280795))

(declare-fun m!2708851 () Bool)

(assert (=> b!2280795 m!2708851))

(declare-fun m!2708853 () Bool)

(assert (=> tb!135519 m!2708853))

(assert (=> b!2280789 t!203492))

(declare-fun b_and!180161 () Bool)

(assert (= b_and!180147 (and (=> t!203492 result!165242) b_and!180161)))

(declare-fun t!203494 () Bool)

(declare-fun tb!135521 () Bool)

(assert (=> (and b!2280764 (= (toChars!5976 (transformation!4335 (h!32541 rules!1750))) (toChars!5976 (transformation!4335 (rule!6661 (h!32540 tokens!456))))) t!203494) tb!135521))

(declare-fun result!165246 () Bool)

(assert (= result!165246 result!165242))

(assert (=> b!2280789 t!203494))

(declare-fun b_and!180163 () Bool)

(assert (= b_and!180151 (and (=> t!203494 result!165246) b_and!180163)))

(declare-fun tb!135523 () Bool)

(declare-fun t!203496 () Bool)

(assert (=> (and b!2280770 (= (toChars!5976 (transformation!4335 otherR!12)) (toChars!5976 (transformation!4335 (rule!6661 (h!32540 tokens!456))))) t!203496) tb!135523))

(declare-fun result!165248 () Bool)

(assert (= result!165248 result!165242))

(assert (=> b!2280789 t!203496))

(declare-fun b_and!180165 () Bool)

(assert (= b_and!180155 (and (=> t!203496 result!165248) b_and!180165)))

(declare-fun t!203498 () Bool)

(declare-fun tb!135525 () Bool)

(assert (=> (and b!2280754 (= (toChars!5976 (transformation!4335 (rule!6661 (h!32540 tokens!456)))) (toChars!5976 (transformation!4335 (rule!6661 (h!32540 tokens!456))))) t!203498) tb!135525))

(declare-fun result!165250 () Bool)

(assert (= result!165250 result!165242))

(assert (=> b!2280789 t!203498))

(declare-fun b_and!180167 () Bool)

(assert (= b_and!180159 (and (=> t!203498 result!165250) b_and!180167)))

(declare-fun m!2708855 () Bool)

(assert (=> d!674889 m!2708855))

(declare-fun m!2708857 () Bool)

(assert (=> b!2280789 m!2708857))

(assert (=> b!2280789 m!2708857))

(declare-fun m!2708859 () Bool)

(assert (=> b!2280789 m!2708859))

(declare-fun m!2708861 () Bool)

(assert (=> b!2280790 m!2708861))

(assert (=> b!2280755 d!674889))

(declare-fun d!674893 () Bool)

(assert (=> d!674893 (= (isEmpty!15408 tokens!456) ((_ is Nil!27139) tokens!456))))

(assert (=> b!2280766 d!674893))

(declare-fun d!674897 () Bool)

(assert (=> d!674897 (= (isEmpty!15410 rules!1750) ((_ is Nil!27140) rules!1750))))

(assert (=> b!2280775 d!674897))

(declare-fun d!674901 () Bool)

(declare-fun list!10580 (Conc!8819) List!27233)

(assert (=> d!674901 (= (list!10577 (_1!15952 lt!846565)) (list!10580 (c!361908 (_1!15952 lt!846565))))))

(declare-fun bs!456560 () Bool)

(assert (= bs!456560 d!674901))

(declare-fun m!2708867 () Bool)

(assert (=> bs!456560 m!2708867))

(assert (=> b!2280752 d!674901))

(declare-fun d!674905 () Bool)

(declare-fun list!10581 (Conc!8818) List!27232)

(assert (=> d!674905 (= (list!10576 (_2!15952 lt!846565)) (list!10581 (c!361906 (_2!15952 lt!846565))))))

(declare-fun bs!456561 () Bool)

(assert (= bs!456561 d!674905))

(declare-fun m!2708869 () Bool)

(assert (=> bs!456561 m!2708869))

(assert (=> b!2280752 d!674905))

(declare-fun b!2280975 () Bool)

(declare-fun e!1461231 () Bool)

(declare-fun e!1461233 () Bool)

(assert (=> b!2280975 (= e!1461231 e!1461233)))

(declare-fun res!975037 () Bool)

(declare-fun lt!846625 () tuple2!26884)

(assert (=> b!2280975 (= res!975037 (< (size!21338 (_2!15952 lt!846625)) (size!21338 (seqFromList!3039 input!1722))))))

(assert (=> b!2280975 (=> (not res!975037) (not e!1461233))))

(declare-fun b!2280976 () Bool)

(declare-fun res!975036 () Bool)

(declare-fun e!1461232 () Bool)

(assert (=> b!2280976 (=> (not res!975036) (not e!1461232))))

(declare-fun lexList!1094 (LexerInterface!3932 List!27234 List!27232) tuple2!26886)

(assert (=> b!2280976 (= res!975036 (= (list!10577 (_1!15952 lt!846625)) (_1!15953 (lexList!1094 thiss!16613 rules!1750 (list!10576 (seqFromList!3039 input!1722))))))))

(declare-fun b!2280977 () Bool)

(declare-fun isEmpty!15412 (BalanceConc!17366) Bool)

(assert (=> b!2280977 (= e!1461233 (not (isEmpty!15412 (_1!15952 lt!846625))))))

(declare-fun b!2280978 () Bool)

(assert (=> b!2280978 (= e!1461231 (= (_2!15952 lt!846625) (seqFromList!3039 input!1722)))))

(declare-fun d!674907 () Bool)

(assert (=> d!674907 e!1461232))

(declare-fun res!975035 () Bool)

(assert (=> d!674907 (=> (not res!975035) (not e!1461232))))

(assert (=> d!674907 (= res!975035 e!1461231)))

(declare-fun c!361947 () Bool)

(declare-fun size!21341 (BalanceConc!17366) Int)

(assert (=> d!674907 (= c!361947 (> (size!21341 (_1!15952 lt!846625)) 0))))

(declare-fun lexTailRecV2!769 (LexerInterface!3932 List!27234 BalanceConc!17364 BalanceConc!17364 BalanceConc!17364 BalanceConc!17366) tuple2!26884)

(assert (=> d!674907 (= lt!846625 (lexTailRecV2!769 thiss!16613 rules!1750 (seqFromList!3039 input!1722) (BalanceConc!17365 Empty!8818) (seqFromList!3039 input!1722) (BalanceConc!17367 Empty!8819)))))

(assert (=> d!674907 (= (lex!1771 thiss!16613 rules!1750 (seqFromList!3039 input!1722)) lt!846625)))

(declare-fun b!2280979 () Bool)

(assert (=> b!2280979 (= e!1461232 (= (list!10576 (_2!15952 lt!846625)) (_2!15953 (lexList!1094 thiss!16613 rules!1750 (list!10576 (seqFromList!3039 input!1722))))))))

(assert (= (and d!674907 c!361947) b!2280975))

(assert (= (and d!674907 (not c!361947)) b!2280978))

(assert (= (and b!2280975 res!975037) b!2280977))

(assert (= (and d!674907 res!975035) b!2280976))

(assert (= (and b!2280976 res!975036) b!2280979))

(declare-fun m!2709035 () Bool)

(assert (=> b!2280977 m!2709035))

(declare-fun m!2709037 () Bool)

(assert (=> b!2280979 m!2709037))

(assert (=> b!2280979 m!2708791))

(declare-fun m!2709039 () Bool)

(assert (=> b!2280979 m!2709039))

(assert (=> b!2280979 m!2709039))

(declare-fun m!2709041 () Bool)

(assert (=> b!2280979 m!2709041))

(declare-fun m!2709043 () Bool)

(assert (=> d!674907 m!2709043))

(assert (=> d!674907 m!2708791))

(assert (=> d!674907 m!2708791))

(declare-fun m!2709045 () Bool)

(assert (=> d!674907 m!2709045))

(declare-fun m!2709047 () Bool)

(assert (=> b!2280976 m!2709047))

(assert (=> b!2280976 m!2708791))

(assert (=> b!2280976 m!2709039))

(assert (=> b!2280976 m!2709039))

(assert (=> b!2280976 m!2709041))

(declare-fun m!2709049 () Bool)

(assert (=> b!2280975 m!2709049))

(assert (=> b!2280975 m!2708791))

(declare-fun m!2709051 () Bool)

(assert (=> b!2280975 m!2709051))

(assert (=> b!2280752 d!674907))

(declare-fun d!674987 () Bool)

(declare-fun fromListB!1360 (List!27232) BalanceConc!17364)

(assert (=> d!674987 (= (seqFromList!3039 input!1722) (fromListB!1360 input!1722))))

(declare-fun bs!456570 () Bool)

(assert (= bs!456570 d!674987))

(declare-fun m!2709053 () Bool)

(assert (=> bs!456570 m!2709053))

(assert (=> b!2280752 d!674987))

(declare-fun d!674989 () Bool)

(assert (=> d!674989 (= (inv!36718 (tag!4825 otherR!12)) (= (mod (str.len (value!137366 (tag!4825 otherR!12))) 2) 0))))

(assert (=> b!2280753 d!674989))

(declare-fun d!674991 () Bool)

(declare-fun res!975040 () Bool)

(declare-fun e!1461236 () Bool)

(assert (=> d!674991 (=> (not res!975040) (not e!1461236))))

(declare-fun semiInverseModEq!1750 (Int Int) Bool)

(assert (=> d!674991 (= res!975040 (semiInverseModEq!1750 (toChars!5976 (transformation!4335 otherR!12)) (toValue!6117 (transformation!4335 otherR!12))))))

(assert (=> d!674991 (= (inv!36721 (transformation!4335 otherR!12)) e!1461236)))

(declare-fun b!2280982 () Bool)

(declare-fun equivClasses!1669 (Int Int) Bool)

(assert (=> b!2280982 (= e!1461236 (equivClasses!1669 (toChars!5976 (transformation!4335 otherR!12)) (toValue!6117 (transformation!4335 otherR!12))))))

(assert (= (and d!674991 res!975040) b!2280982))

(declare-fun m!2709055 () Bool)

(assert (=> d!674991 m!2709055))

(declare-fun m!2709057 () Bool)

(assert (=> b!2280982 m!2709057))

(assert (=> b!2280753 d!674991))

(declare-fun d!674993 () Bool)

(declare-fun res!975045 () Bool)

(declare-fun e!1461239 () Bool)

(assert (=> d!674993 (=> (not res!975045) (not e!1461239))))

(declare-fun validRegex!2510 (Regex!6683) Bool)

(assert (=> d!674993 (= res!975045 (validRegex!2510 (regex!4335 r!2363)))))

(assert (=> d!674993 (= (ruleValid!1425 thiss!16613 r!2363) e!1461239)))

(declare-fun b!2280987 () Bool)

(declare-fun res!975046 () Bool)

(assert (=> b!2280987 (=> (not res!975046) (not e!1461239))))

(declare-fun nullable!1848 (Regex!6683) Bool)

(assert (=> b!2280987 (= res!975046 (not (nullable!1848 (regex!4335 r!2363))))))

(declare-fun b!2280988 () Bool)

(assert (=> b!2280988 (= e!1461239 (not (= (tag!4825 r!2363) (String!29590 ""))))))

(assert (= (and d!674993 res!975045) b!2280987))

(assert (= (and b!2280987 res!975046) b!2280988))

(declare-fun m!2709059 () Bool)

(assert (=> d!674993 m!2709059))

(declare-fun m!2709061 () Bool)

(assert (=> b!2280987 m!2709061))

(assert (=> b!2280772 d!674993))

(declare-fun d!674995 () Bool)

(assert (=> d!674995 (ruleValid!1425 thiss!16613 r!2363)))

(declare-fun lt!846628 () Unit!40060)

(declare-fun choose!13300 (LexerInterface!3932 Rule!8470 List!27234) Unit!40060)

(assert (=> d!674995 (= lt!846628 (choose!13300 thiss!16613 r!2363 rules!1750))))

(assert (=> d!674995 (contains!4707 rules!1750 r!2363)))

(assert (=> d!674995 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!830 thiss!16613 r!2363 rules!1750) lt!846628)))

(declare-fun bs!456571 () Bool)

(assert (= bs!456571 d!674995))

(assert (=> bs!456571 m!2708827))

(declare-fun m!2709063 () Bool)

(assert (=> bs!456571 m!2709063))

(assert (=> bs!456571 m!2708771))

(assert (=> b!2280772 d!674995))

(declare-fun d!674997 () Bool)

(assert (=> d!674997 (= (inv!36718 (tag!4825 r!2363)) (= (mod (str.len (value!137366 (tag!4825 r!2363))) 2) 0))))

(assert (=> b!2280783 d!674997))

(declare-fun d!674999 () Bool)

(declare-fun res!975047 () Bool)

(declare-fun e!1461240 () Bool)

(assert (=> d!674999 (=> (not res!975047) (not e!1461240))))

(assert (=> d!674999 (= res!975047 (semiInverseModEq!1750 (toChars!5976 (transformation!4335 r!2363)) (toValue!6117 (transformation!4335 r!2363))))))

(assert (=> d!674999 (= (inv!36721 (transformation!4335 r!2363)) e!1461240)))

(declare-fun b!2280989 () Bool)

(assert (=> b!2280989 (= e!1461240 (equivClasses!1669 (toChars!5976 (transformation!4335 r!2363)) (toValue!6117 (transformation!4335 r!2363))))))

(assert (= (and d!674999 res!975047) b!2280989))

(declare-fun m!2709065 () Bool)

(assert (=> d!674999 m!2709065))

(declare-fun m!2709067 () Bool)

(assert (=> b!2280989 m!2709067))

(assert (=> b!2280783 d!674999))

(declare-fun d!675001 () Bool)

(declare-fun lt!846641 () Int)

(assert (=> d!675001 (>= lt!846641 0)))

(declare-fun e!1461249 () Int)

(assert (=> d!675001 (= lt!846641 e!1461249)))

(declare-fun c!361954 () Bool)

(assert (=> d!675001 (= c!361954 (and ((_ is Cons!27140) rules!1750) (= (h!32541 rules!1750) r!2363)))))

(assert (=> d!675001 (contains!4707 rules!1750 r!2363)))

(assert (=> d!675001 (= (getIndex!348 rules!1750 r!2363) lt!846641)))

(declare-fun b!2281003 () Bool)

(declare-fun e!1461248 () Int)

(assert (=> b!2281003 (= e!1461249 e!1461248)))

(declare-fun c!361955 () Bool)

(assert (=> b!2281003 (= c!361955 (and ((_ is Cons!27140) rules!1750) (not (= (h!32541 rules!1750) r!2363))))))

(declare-fun b!2281004 () Bool)

(assert (=> b!2281004 (= e!1461248 (+ 1 (getIndex!348 (t!203490 rules!1750) r!2363)))))

(declare-fun b!2281002 () Bool)

(assert (=> b!2281002 (= e!1461249 0)))

(declare-fun b!2281005 () Bool)

(assert (=> b!2281005 (= e!1461248 (- 1))))

(assert (= (and d!675001 c!361954) b!2281002))

(assert (= (and d!675001 (not c!361954)) b!2281003))

(assert (= (and b!2281003 c!361955) b!2281004))

(assert (= (and b!2281003 (not c!361955)) b!2281005))

(assert (=> d!675001 m!2708771))

(declare-fun m!2709069 () Bool)

(assert (=> b!2281004 m!2709069))

(assert (=> b!2280762 d!675001))

(declare-fun d!675003 () Bool)

(declare-fun lt!846642 () Int)

(assert (=> d!675003 (>= lt!846642 0)))

(declare-fun e!1461253 () Int)

(assert (=> d!675003 (= lt!846642 e!1461253)))

(declare-fun c!361956 () Bool)

(assert (=> d!675003 (= c!361956 (and ((_ is Cons!27140) rules!1750) (= (h!32541 rules!1750) otherR!12)))))

(assert (=> d!675003 (contains!4707 rules!1750 otherR!12)))

(assert (=> d!675003 (= (getIndex!348 rules!1750 otherR!12) lt!846642)))

(declare-fun b!2281009 () Bool)

(declare-fun e!1461252 () Int)

(assert (=> b!2281009 (= e!1461253 e!1461252)))

(declare-fun c!361957 () Bool)

(assert (=> b!2281009 (= c!361957 (and ((_ is Cons!27140) rules!1750) (not (= (h!32541 rules!1750) otherR!12))))))

(declare-fun b!2281010 () Bool)

(assert (=> b!2281010 (= e!1461252 (+ 1 (getIndex!348 (t!203490 rules!1750) otherR!12)))))

(declare-fun b!2281008 () Bool)

(assert (=> b!2281008 (= e!1461253 0)))

(declare-fun b!2281011 () Bool)

(assert (=> b!2281011 (= e!1461252 (- 1))))

(assert (= (and d!675003 c!361956) b!2281008))

(assert (= (and d!675003 (not c!361956)) b!2281009))

(assert (= (and b!2281009 c!361957) b!2281010))

(assert (= (and b!2281009 (not c!361957)) b!2281011))

(assert (=> d!675003 m!2708795))

(declare-fun m!2709071 () Bool)

(assert (=> b!2281010 m!2709071))

(assert (=> b!2280762 d!675003))

(declare-fun d!675005 () Bool)

(declare-fun res!975060 () Bool)

(declare-fun e!1461256 () Bool)

(assert (=> d!675005 (=> (not res!975060) (not e!1461256))))

(assert (=> d!675005 (= res!975060 (validRegex!2510 (regex!4335 otherR!12)))))

(assert (=> d!675005 (= (ruleValid!1425 thiss!16613 otherR!12) e!1461256)))

(declare-fun b!2281022 () Bool)

(declare-fun res!975063 () Bool)

(assert (=> b!2281022 (=> (not res!975063) (not e!1461256))))

(assert (=> b!2281022 (= res!975063 (not (nullable!1848 (regex!4335 otherR!12))))))

(declare-fun b!2281023 () Bool)

(assert (=> b!2281023 (= e!1461256 (not (= (tag!4825 otherR!12) (String!29590 ""))))))

(assert (= (and d!675005 res!975060) b!2281022))

(assert (= (and b!2281022 res!975063) b!2281023))

(declare-fun m!2709073 () Bool)

(assert (=> d!675005 m!2709073))

(declare-fun m!2709075 () Bool)

(assert (=> b!2281022 m!2709075))

(assert (=> b!2280762 d!675005))

(declare-fun d!675007 () Bool)

(assert (=> d!675007 (ruleValid!1425 thiss!16613 otherR!12)))

(declare-fun lt!846643 () Unit!40060)

(assert (=> d!675007 (= lt!846643 (choose!13300 thiss!16613 otherR!12 rules!1750))))

(assert (=> d!675007 (contains!4707 rules!1750 otherR!12)))

(assert (=> d!675007 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!830 thiss!16613 otherR!12 rules!1750) lt!846643)))

(declare-fun bs!456572 () Bool)

(assert (= bs!456572 d!675007))

(assert (=> bs!456572 m!2708777))

(declare-fun m!2709077 () Bool)

(assert (=> bs!456572 m!2709077))

(assert (=> bs!456572 m!2708795))

(assert (=> b!2280762 d!675007))

(declare-fun d!675009 () Bool)

(assert (=> d!675009 (= (isEmpty!15409 lt!846569) ((_ is Nil!27138) lt!846569))))

(assert (=> b!2280773 d!675009))

(declare-fun d!675011 () Bool)

(assert (=> d!675011 (= (get!8182 (maxPrefix!2196 thiss!16613 rules!1750 input!1722)) (v!30382 (maxPrefix!2196 thiss!16613 rules!1750 input!1722)))))

(assert (=> b!2280760 d!675011))

(declare-fun b!2281114 () Bool)

(declare-fun e!1461310 () Bool)

(declare-fun lt!846660 () Option!5321)

(assert (=> b!2281114 (= e!1461310 (contains!4707 rules!1750 (rule!6661 (_1!15951 (get!8182 lt!846660)))))))

(declare-fun b!2281115 () Bool)

(declare-fun res!975088 () Bool)

(assert (=> b!2281115 (=> (not res!975088) (not e!1461310))))

(declare-fun apply!6608 (TokenValueInjection!8534 BalanceConc!17364) TokenValue!4497)

(assert (=> b!2281115 (= res!975088 (= (value!137367 (_1!15951 (get!8182 lt!846660))) (apply!6608 (transformation!4335 (rule!6661 (_1!15951 (get!8182 lt!846660)))) (seqFromList!3039 (originalCharacters!5105 (_1!15951 (get!8182 lt!846660)))))))))

(declare-fun bm!136416 () Bool)

(declare-fun call!136421 () Option!5321)

(declare-fun maxPrefixOneRule!1371 (LexerInterface!3932 Rule!8470 List!27232) Option!5321)

(assert (=> bm!136416 (= call!136421 (maxPrefixOneRule!1371 thiss!16613 (h!32541 rules!1750) input!1722))))

(declare-fun b!2281116 () Bool)

(declare-fun res!975093 () Bool)

(assert (=> b!2281116 (=> (not res!975093) (not e!1461310))))

(assert (=> b!2281116 (= res!975093 (= (++!6627 (list!10576 (charsOf!2723 (_1!15951 (get!8182 lt!846660)))) (_2!15951 (get!8182 lt!846660))) input!1722))))

(declare-fun d!675013 () Bool)

(declare-fun e!1461309 () Bool)

(assert (=> d!675013 e!1461309))

(declare-fun res!975089 () Bool)

(assert (=> d!675013 (=> res!975089 e!1461309)))

(declare-fun isEmpty!15413 (Option!5321) Bool)

(assert (=> d!675013 (= res!975089 (isEmpty!15413 lt!846660))))

(declare-fun e!1461311 () Option!5321)

(assert (=> d!675013 (= lt!846660 e!1461311)))

(declare-fun c!361961 () Bool)

(assert (=> d!675013 (= c!361961 (and ((_ is Cons!27140) rules!1750) ((_ is Nil!27140) (t!203490 rules!1750))))))

(declare-fun lt!846663 () Unit!40060)

(declare-fun lt!846662 () Unit!40060)

(assert (=> d!675013 (= lt!846663 lt!846662)))

(assert (=> d!675013 (isPrefix!2325 input!1722 input!1722)))

(declare-fun lemmaIsPrefixRefl!1476 (List!27232 List!27232) Unit!40060)

(assert (=> d!675013 (= lt!846662 (lemmaIsPrefixRefl!1476 input!1722 input!1722))))

(declare-fun rulesValidInductive!1518 (LexerInterface!3932 List!27234) Bool)

(assert (=> d!675013 (rulesValidInductive!1518 thiss!16613 rules!1750)))

(assert (=> d!675013 (= (maxPrefix!2196 thiss!16613 rules!1750 input!1722) lt!846660)))

(declare-fun b!2281117 () Bool)

(declare-fun lt!846661 () Option!5321)

(declare-fun lt!846664 () Option!5321)

(assert (=> b!2281117 (= e!1461311 (ite (and ((_ is None!5320) lt!846661) ((_ is None!5320) lt!846664)) None!5320 (ite ((_ is None!5320) lt!846664) lt!846661 (ite ((_ is None!5320) lt!846661) lt!846664 (ite (>= (size!21336 (_1!15951 (v!30382 lt!846661))) (size!21336 (_1!15951 (v!30382 lt!846664)))) lt!846661 lt!846664)))))))

(assert (=> b!2281117 (= lt!846661 call!136421)))

(assert (=> b!2281117 (= lt!846664 (maxPrefix!2196 thiss!16613 (t!203490 rules!1750) input!1722))))

(declare-fun b!2281118 () Bool)

(declare-fun res!975087 () Bool)

(assert (=> b!2281118 (=> (not res!975087) (not e!1461310))))

(assert (=> b!2281118 (= res!975087 (matchR!2940 (regex!4335 (rule!6661 (_1!15951 (get!8182 lt!846660)))) (list!10576 (charsOf!2723 (_1!15951 (get!8182 lt!846660))))))))

(declare-fun b!2281119 () Bool)

(declare-fun res!975091 () Bool)

(assert (=> b!2281119 (=> (not res!975091) (not e!1461310))))

(assert (=> b!2281119 (= res!975091 (< (size!21337 (_2!15951 (get!8182 lt!846660))) (size!21337 input!1722)))))

(declare-fun b!2281120 () Bool)

(assert (=> b!2281120 (= e!1461309 e!1461310)))

(declare-fun res!975092 () Bool)

(assert (=> b!2281120 (=> (not res!975092) (not e!1461310))))

(declare-fun isDefined!4213 (Option!5321) Bool)

(assert (=> b!2281120 (= res!975092 (isDefined!4213 lt!846660))))

(declare-fun b!2281121 () Bool)

(declare-fun res!975090 () Bool)

(assert (=> b!2281121 (=> (not res!975090) (not e!1461310))))

(assert (=> b!2281121 (= res!975090 (= (list!10576 (charsOf!2723 (_1!15951 (get!8182 lt!846660)))) (originalCharacters!5105 (_1!15951 (get!8182 lt!846660)))))))

(declare-fun b!2281122 () Bool)

(assert (=> b!2281122 (= e!1461311 call!136421)))

(assert (= (and d!675013 c!361961) b!2281122))

(assert (= (and d!675013 (not c!361961)) b!2281117))

(assert (= (or b!2281122 b!2281117) bm!136416))

(assert (= (and d!675013 (not res!975089)) b!2281120))

(assert (= (and b!2281120 res!975092) b!2281121))

(assert (= (and b!2281121 res!975090) b!2281119))

(assert (= (and b!2281119 res!975091) b!2281116))

(assert (= (and b!2281116 res!975093) b!2281115))

(assert (= (and b!2281115 res!975088) b!2281118))

(assert (= (and b!2281118 res!975087) b!2281114))

(declare-fun m!2709125 () Bool)

(assert (=> b!2281120 m!2709125))

(declare-fun m!2709127 () Bool)

(assert (=> d!675013 m!2709127))

(declare-fun m!2709129 () Bool)

(assert (=> d!675013 m!2709129))

(declare-fun m!2709131 () Bool)

(assert (=> d!675013 m!2709131))

(declare-fun m!2709133 () Bool)

(assert (=> d!675013 m!2709133))

(declare-fun m!2709135 () Bool)

(assert (=> b!2281118 m!2709135))

(declare-fun m!2709137 () Bool)

(assert (=> b!2281118 m!2709137))

(assert (=> b!2281118 m!2709137))

(declare-fun m!2709139 () Bool)

(assert (=> b!2281118 m!2709139))

(assert (=> b!2281118 m!2709139))

(declare-fun m!2709141 () Bool)

(assert (=> b!2281118 m!2709141))

(assert (=> b!2281119 m!2709135))

(declare-fun m!2709143 () Bool)

(assert (=> b!2281119 m!2709143))

(declare-fun m!2709145 () Bool)

(assert (=> b!2281119 m!2709145))

(declare-fun m!2709147 () Bool)

(assert (=> b!2281117 m!2709147))

(assert (=> b!2281121 m!2709135))

(assert (=> b!2281121 m!2709137))

(assert (=> b!2281121 m!2709137))

(assert (=> b!2281121 m!2709139))

(assert (=> b!2281115 m!2709135))

(declare-fun m!2709149 () Bool)

(assert (=> b!2281115 m!2709149))

(assert (=> b!2281115 m!2709149))

(declare-fun m!2709151 () Bool)

(assert (=> b!2281115 m!2709151))

(assert (=> b!2281116 m!2709135))

(assert (=> b!2281116 m!2709137))

(assert (=> b!2281116 m!2709137))

(assert (=> b!2281116 m!2709139))

(assert (=> b!2281116 m!2709139))

(declare-fun m!2709153 () Bool)

(assert (=> b!2281116 m!2709153))

(declare-fun m!2709155 () Bool)

(assert (=> bm!136416 m!2709155))

(assert (=> b!2281114 m!2709135))

(declare-fun m!2709157 () Bool)

(assert (=> b!2281114 m!2709157))

(assert (=> b!2280760 d!675013))

(declare-fun b!2281132 () Bool)

(declare-fun res!975105 () Bool)

(declare-fun e!1461320 () Bool)

(assert (=> b!2281132 (=> (not res!975105) (not e!1461320))))

(declare-fun head!4946 (List!27232) C!13512)

(assert (=> b!2281132 (= res!975105 (= (head!4946 otherP!12) (head!4946 input!1722)))))

(declare-fun b!2281133 () Bool)

(declare-fun tail!3291 (List!27232) List!27232)

(assert (=> b!2281133 (= e!1461320 (isPrefix!2325 (tail!3291 otherP!12) (tail!3291 input!1722)))))

(declare-fun b!2281134 () Bool)

(declare-fun e!1461319 () Bool)

(assert (=> b!2281134 (= e!1461319 (>= (size!21337 input!1722) (size!21337 otherP!12)))))

(declare-fun d!675019 () Bool)

(assert (=> d!675019 e!1461319))

(declare-fun res!975103 () Bool)

(assert (=> d!675019 (=> res!975103 e!1461319)))

(declare-fun lt!846667 () Bool)

(assert (=> d!675019 (= res!975103 (not lt!846667))))

(declare-fun e!1461318 () Bool)

(assert (=> d!675019 (= lt!846667 e!1461318)))

(declare-fun res!975104 () Bool)

(assert (=> d!675019 (=> res!975104 e!1461318)))

(assert (=> d!675019 (= res!975104 ((_ is Nil!27138) otherP!12))))

(assert (=> d!675019 (= (isPrefix!2325 otherP!12 input!1722) lt!846667)))

(declare-fun b!2281131 () Bool)

(assert (=> b!2281131 (= e!1461318 e!1461320)))

(declare-fun res!975102 () Bool)

(assert (=> b!2281131 (=> (not res!975102) (not e!1461320))))

(assert (=> b!2281131 (= res!975102 (not ((_ is Nil!27138) input!1722)))))

(assert (= (and d!675019 (not res!975104)) b!2281131))

(assert (= (and b!2281131 res!975102) b!2281132))

(assert (= (and b!2281132 res!975105) b!2281133))

(assert (= (and d!675019 (not res!975103)) b!2281134))

(declare-fun m!2709159 () Bool)

(assert (=> b!2281132 m!2709159))

(declare-fun m!2709161 () Bool)

(assert (=> b!2281132 m!2709161))

(declare-fun m!2709163 () Bool)

(assert (=> b!2281133 m!2709163))

(declare-fun m!2709165 () Bool)

(assert (=> b!2281133 m!2709165))

(assert (=> b!2281133 m!2709163))

(assert (=> b!2281133 m!2709165))

(declare-fun m!2709167 () Bool)

(assert (=> b!2281133 m!2709167))

(assert (=> b!2281134 m!2709145))

(assert (=> b!2281134 m!2708813))

(assert (=> b!2280771 d!675019))

(declare-fun b!2281163 () Bool)

(declare-fun res!975129 () Bool)

(declare-fun e!1461341 () Bool)

(assert (=> b!2281163 (=> res!975129 e!1461341)))

(declare-fun e!1461339 () Bool)

(assert (=> b!2281163 (= res!975129 e!1461339)))

(declare-fun res!975123 () Bool)

(assert (=> b!2281163 (=> (not res!975123) (not e!1461339))))

(declare-fun lt!846670 () Bool)

(assert (=> b!2281163 (= res!975123 lt!846670)))

(declare-fun b!2281164 () Bool)

(declare-fun res!975126 () Bool)

(assert (=> b!2281164 (=> res!975126 e!1461341)))

(assert (=> b!2281164 (= res!975126 (not ((_ is ElementMatch!6683) (regex!4335 r!2363))))))

(declare-fun e!1461338 () Bool)

(assert (=> b!2281164 (= e!1461338 e!1461341)))

(declare-fun b!2281165 () Bool)

(declare-fun res!975128 () Bool)

(declare-fun e!1461335 () Bool)

(assert (=> b!2281165 (=> res!975128 e!1461335)))

(assert (=> b!2281165 (= res!975128 (not (isEmpty!15409 (tail!3291 (list!10576 (charsOf!2723 (head!4944 tokens!456)))))))))

(declare-fun b!2281166 () Bool)

(assert (=> b!2281166 (= e!1461335 (not (= (head!4946 (list!10576 (charsOf!2723 (head!4944 tokens!456)))) (c!361907 (regex!4335 r!2363)))))))

(declare-fun b!2281167 () Bool)

(declare-fun e!1461340 () Bool)

(assert (=> b!2281167 (= e!1461340 (nullable!1848 (regex!4335 r!2363)))))

(declare-fun b!2281168 () Bool)

(declare-fun e!1461336 () Bool)

(assert (=> b!2281168 (= e!1461336 e!1461335)))

(declare-fun res!975127 () Bool)

(assert (=> b!2281168 (=> res!975127 e!1461335)))

(declare-fun call!136424 () Bool)

(assert (=> b!2281168 (= res!975127 call!136424)))

(declare-fun b!2281169 () Bool)

(declare-fun res!975124 () Bool)

(assert (=> b!2281169 (=> (not res!975124) (not e!1461339))))

(assert (=> b!2281169 (= res!975124 (not call!136424))))

(declare-fun bm!136419 () Bool)

(assert (=> bm!136419 (= call!136424 (isEmpty!15409 (list!10576 (charsOf!2723 (head!4944 tokens!456)))))))

(declare-fun b!2281170 () Bool)

(declare-fun e!1461337 () Bool)

(assert (=> b!2281170 (= e!1461337 (= lt!846670 call!136424))))

(declare-fun b!2281171 () Bool)

(assert (=> b!2281171 (= e!1461338 (not lt!846670))))

(declare-fun d!675021 () Bool)

(assert (=> d!675021 e!1461337))

(declare-fun c!361968 () Bool)

(assert (=> d!675021 (= c!361968 ((_ is EmptyExpr!6683) (regex!4335 r!2363)))))

(assert (=> d!675021 (= lt!846670 e!1461340)))

(declare-fun c!361970 () Bool)

(assert (=> d!675021 (= c!361970 (isEmpty!15409 (list!10576 (charsOf!2723 (head!4944 tokens!456)))))))

(assert (=> d!675021 (validRegex!2510 (regex!4335 r!2363))))

(assert (=> d!675021 (= (matchR!2940 (regex!4335 r!2363) (list!10576 (charsOf!2723 (head!4944 tokens!456)))) lt!846670)))

(declare-fun b!2281172 () Bool)

(assert (=> b!2281172 (= e!1461341 e!1461336)))

(declare-fun res!975122 () Bool)

(assert (=> b!2281172 (=> (not res!975122) (not e!1461336))))

(assert (=> b!2281172 (= res!975122 (not lt!846670))))

(declare-fun b!2281173 () Bool)

(assert (=> b!2281173 (= e!1461339 (= (head!4946 (list!10576 (charsOf!2723 (head!4944 tokens!456)))) (c!361907 (regex!4335 r!2363))))))

(declare-fun b!2281174 () Bool)

(declare-fun res!975125 () Bool)

(assert (=> b!2281174 (=> (not res!975125) (not e!1461339))))

(assert (=> b!2281174 (= res!975125 (isEmpty!15409 (tail!3291 (list!10576 (charsOf!2723 (head!4944 tokens!456))))))))

(declare-fun b!2281175 () Bool)

(assert (=> b!2281175 (= e!1461337 e!1461338)))

(declare-fun c!361969 () Bool)

(assert (=> b!2281175 (= c!361969 ((_ is EmptyLang!6683) (regex!4335 r!2363)))))

(declare-fun b!2281176 () Bool)

(declare-fun derivativeStep!1508 (Regex!6683 C!13512) Regex!6683)

(assert (=> b!2281176 (= e!1461340 (matchR!2940 (derivativeStep!1508 (regex!4335 r!2363) (head!4946 (list!10576 (charsOf!2723 (head!4944 tokens!456))))) (tail!3291 (list!10576 (charsOf!2723 (head!4944 tokens!456))))))))

(assert (= (and d!675021 c!361970) b!2281167))

(assert (= (and d!675021 (not c!361970)) b!2281176))

(assert (= (and d!675021 c!361968) b!2281170))

(assert (= (and d!675021 (not c!361968)) b!2281175))

(assert (= (and b!2281175 c!361969) b!2281171))

(assert (= (and b!2281175 (not c!361969)) b!2281164))

(assert (= (and b!2281164 (not res!975126)) b!2281163))

(assert (= (and b!2281163 res!975123) b!2281169))

(assert (= (and b!2281169 res!975124) b!2281174))

(assert (= (and b!2281174 res!975125) b!2281173))

(assert (= (and b!2281163 (not res!975129)) b!2281172))

(assert (= (and b!2281172 res!975122) b!2281168))

(assert (= (and b!2281168 (not res!975127)) b!2281165))

(assert (= (and b!2281165 (not res!975128)) b!2281166))

(assert (= (or b!2281170 b!2281168 b!2281169) bm!136419))

(assert (=> b!2281173 m!2708847))

(declare-fun m!2709169 () Bool)

(assert (=> b!2281173 m!2709169))

(assert (=> b!2281167 m!2709061))

(assert (=> b!2281165 m!2708847))

(declare-fun m!2709171 () Bool)

(assert (=> b!2281165 m!2709171))

(assert (=> b!2281165 m!2709171))

(declare-fun m!2709173 () Bool)

(assert (=> b!2281165 m!2709173))

(assert (=> b!2281166 m!2708847))

(assert (=> b!2281166 m!2709169))

(assert (=> b!2281176 m!2708847))

(assert (=> b!2281176 m!2709169))

(assert (=> b!2281176 m!2709169))

(declare-fun m!2709175 () Bool)

(assert (=> b!2281176 m!2709175))

(assert (=> b!2281176 m!2708847))

(assert (=> b!2281176 m!2709171))

(assert (=> b!2281176 m!2709175))

(assert (=> b!2281176 m!2709171))

(declare-fun m!2709177 () Bool)

(assert (=> b!2281176 m!2709177))

(assert (=> bm!136419 m!2708847))

(declare-fun m!2709179 () Bool)

(assert (=> bm!136419 m!2709179))

(assert (=> b!2281174 m!2708847))

(assert (=> b!2281174 m!2709171))

(assert (=> b!2281174 m!2709171))

(assert (=> b!2281174 m!2709173))

(assert (=> d!675021 m!2708847))

(assert (=> d!675021 m!2709179))

(assert (=> d!675021 m!2709059))

(assert (=> b!2280782 d!675021))

(declare-fun d!675023 () Bool)

(assert (=> d!675023 (= (list!10576 (charsOf!2723 (head!4944 tokens!456))) (list!10581 (c!361906 (charsOf!2723 (head!4944 tokens!456)))))))

(declare-fun bs!456574 () Bool)

(assert (= bs!456574 d!675023))

(declare-fun m!2709181 () Bool)

(assert (=> bs!456574 m!2709181))

(assert (=> b!2280782 d!675023))

(declare-fun d!675025 () Bool)

(declare-fun lt!846673 () BalanceConc!17364)

(assert (=> d!675025 (= (list!10576 lt!846673) (originalCharacters!5105 (head!4944 tokens!456)))))

(assert (=> d!675025 (= lt!846673 (dynLambda!11771 (toChars!5976 (transformation!4335 (rule!6661 (head!4944 tokens!456)))) (value!137367 (head!4944 tokens!456))))))

(assert (=> d!675025 (= (charsOf!2723 (head!4944 tokens!456)) lt!846673)))

(declare-fun b_lambda!72593 () Bool)

(assert (=> (not b_lambda!72593) (not d!675025)))

(declare-fun tb!135551 () Bool)

(declare-fun t!203524 () Bool)

(assert (=> (and b!2280777 (= (toChars!5976 (transformation!4335 r!2363)) (toChars!5976 (transformation!4335 (rule!6661 (head!4944 tokens!456))))) t!203524) tb!135551))

(declare-fun b!2281177 () Bool)

(declare-fun e!1461342 () Bool)

(declare-fun tp!722930 () Bool)

(assert (=> b!2281177 (= e!1461342 (and (inv!36725 (c!361906 (dynLambda!11771 (toChars!5976 (transformation!4335 (rule!6661 (head!4944 tokens!456)))) (value!137367 (head!4944 tokens!456))))) tp!722930))))

(declare-fun result!165286 () Bool)

(assert (=> tb!135551 (= result!165286 (and (inv!36726 (dynLambda!11771 (toChars!5976 (transformation!4335 (rule!6661 (head!4944 tokens!456)))) (value!137367 (head!4944 tokens!456)))) e!1461342))))

(assert (= tb!135551 b!2281177))

(declare-fun m!2709183 () Bool)

(assert (=> b!2281177 m!2709183))

(declare-fun m!2709185 () Bool)

(assert (=> tb!135551 m!2709185))

(assert (=> d!675025 t!203524))

(declare-fun b_and!180201 () Bool)

(assert (= b_and!180161 (and (=> t!203524 result!165286) b_and!180201)))

(declare-fun t!203526 () Bool)

(declare-fun tb!135553 () Bool)

(assert (=> (and b!2280764 (= (toChars!5976 (transformation!4335 (h!32541 rules!1750))) (toChars!5976 (transformation!4335 (rule!6661 (head!4944 tokens!456))))) t!203526) tb!135553))

(declare-fun result!165288 () Bool)

(assert (= result!165288 result!165286))

(assert (=> d!675025 t!203526))

(declare-fun b_and!180203 () Bool)

(assert (= b_and!180163 (and (=> t!203526 result!165288) b_and!180203)))

(declare-fun t!203528 () Bool)

(declare-fun tb!135555 () Bool)

(assert (=> (and b!2280770 (= (toChars!5976 (transformation!4335 otherR!12)) (toChars!5976 (transformation!4335 (rule!6661 (head!4944 tokens!456))))) t!203528) tb!135555))

(declare-fun result!165290 () Bool)

(assert (= result!165290 result!165286))

(assert (=> d!675025 t!203528))

(declare-fun b_and!180205 () Bool)

(assert (= b_and!180165 (and (=> t!203528 result!165290) b_and!180205)))

(declare-fun t!203530 () Bool)

(declare-fun tb!135557 () Bool)

(assert (=> (and b!2280754 (= (toChars!5976 (transformation!4335 (rule!6661 (h!32540 tokens!456)))) (toChars!5976 (transformation!4335 (rule!6661 (head!4944 tokens!456))))) t!203530) tb!135557))

(declare-fun result!165292 () Bool)

(assert (= result!165292 result!165286))

(assert (=> d!675025 t!203530))

(declare-fun b_and!180207 () Bool)

(assert (= b_and!180167 (and (=> t!203530 result!165292) b_and!180207)))

(declare-fun m!2709187 () Bool)

(assert (=> d!675025 m!2709187))

(declare-fun m!2709189 () Bool)

(assert (=> d!675025 m!2709189))

(assert (=> b!2280782 d!675025))

(declare-fun d!675027 () Bool)

(assert (=> d!675027 (= (head!4944 tokens!456) (h!32540 tokens!456))))

(assert (=> b!2280782 d!675027))

(declare-fun d!675029 () Bool)

(declare-fun lt!846676 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!3626 (List!27234) (InoxSet Rule!8470))

(assert (=> d!675029 (= lt!846676 (select (content!3626 rules!1750) r!2363))))

(declare-fun e!1461347 () Bool)

(assert (=> d!675029 (= lt!846676 e!1461347)))

(declare-fun res!975135 () Bool)

(assert (=> d!675029 (=> (not res!975135) (not e!1461347))))

(assert (=> d!675029 (= res!975135 ((_ is Cons!27140) rules!1750))))

(assert (=> d!675029 (= (contains!4707 rules!1750 r!2363) lt!846676)))

(declare-fun b!2281182 () Bool)

(declare-fun e!1461348 () Bool)

(assert (=> b!2281182 (= e!1461347 e!1461348)))

(declare-fun res!975134 () Bool)

(assert (=> b!2281182 (=> res!975134 e!1461348)))

(assert (=> b!2281182 (= res!975134 (= (h!32541 rules!1750) r!2363))))

(declare-fun b!2281183 () Bool)

(assert (=> b!2281183 (= e!1461348 (contains!4707 (t!203490 rules!1750) r!2363))))

(assert (= (and d!675029 res!975135) b!2281182))

(assert (= (and b!2281182 (not res!975134)) b!2281183))

(declare-fun m!2709191 () Bool)

(assert (=> d!675029 m!2709191))

(declare-fun m!2709193 () Bool)

(assert (=> d!675029 m!2709193))

(declare-fun m!2709195 () Bool)

(assert (=> b!2281183 m!2709195))

(assert (=> b!2280761 d!675029))

(declare-fun d!675031 () Bool)

(assert (=> d!675031 (= (inv!36718 (tag!4825 (rule!6661 (h!32540 tokens!456)))) (= (mod (str.len (value!137366 (tag!4825 (rule!6661 (h!32540 tokens!456))))) 2) 0))))

(assert (=> b!2280780 d!675031))

(declare-fun d!675033 () Bool)

(declare-fun res!975136 () Bool)

(declare-fun e!1461349 () Bool)

(assert (=> d!675033 (=> (not res!975136) (not e!1461349))))

(assert (=> d!675033 (= res!975136 (semiInverseModEq!1750 (toChars!5976 (transformation!4335 (rule!6661 (h!32540 tokens!456)))) (toValue!6117 (transformation!4335 (rule!6661 (h!32540 tokens!456))))))))

(assert (=> d!675033 (= (inv!36721 (transformation!4335 (rule!6661 (h!32540 tokens!456)))) e!1461349)))

(declare-fun b!2281184 () Bool)

(assert (=> b!2281184 (= e!1461349 (equivClasses!1669 (toChars!5976 (transformation!4335 (rule!6661 (h!32540 tokens!456)))) (toValue!6117 (transformation!4335 (rule!6661 (h!32540 tokens!456))))))))

(assert (= (and d!675033 res!975136) b!2281184))

(declare-fun m!2709197 () Bool)

(assert (=> d!675033 m!2709197))

(declare-fun m!2709199 () Bool)

(assert (=> b!2281184 m!2709199))

(assert (=> b!2280780 d!675033))

(assert (=> b!2280759 d!675027))

(declare-fun d!675035 () Bool)

(assert (=> d!675035 (= (inv!36718 (tag!4825 (h!32541 rules!1750))) (= (mod (str.len (value!137366 (tag!4825 (h!32541 rules!1750)))) 2) 0))))

(assert (=> b!2280781 d!675035))

(declare-fun d!675037 () Bool)

(declare-fun res!975137 () Bool)

(declare-fun e!1461350 () Bool)

(assert (=> d!675037 (=> (not res!975137) (not e!1461350))))

(assert (=> d!675037 (= res!975137 (semiInverseModEq!1750 (toChars!5976 (transformation!4335 (h!32541 rules!1750))) (toValue!6117 (transformation!4335 (h!32541 rules!1750)))))))

(assert (=> d!675037 (= (inv!36721 (transformation!4335 (h!32541 rules!1750))) e!1461350)))

(declare-fun b!2281185 () Bool)

(assert (=> b!2281185 (= e!1461350 (equivClasses!1669 (toChars!5976 (transformation!4335 (h!32541 rules!1750))) (toValue!6117 (transformation!4335 (h!32541 rules!1750)))))))

(assert (= (and d!675037 res!975137) b!2281185))

(declare-fun m!2709201 () Bool)

(assert (=> d!675037 m!2709201))

(declare-fun m!2709203 () Bool)

(assert (=> b!2281185 m!2709203))

(assert (=> b!2280781 d!675037))

(declare-fun b!2281196 () Bool)

(declare-fun e!1461359 () Bool)

(declare-fun inv!16 (TokenValue!4497) Bool)

(assert (=> b!2281196 (= e!1461359 (inv!16 (value!137367 (h!32540 tokens!456))))))

(declare-fun d!675039 () Bool)

(declare-fun c!361976 () Bool)

(assert (=> d!675039 (= c!361976 ((_ is IntegerValue!13491) (value!137367 (h!32540 tokens!456))))))

(assert (=> d!675039 (= (inv!21 (value!137367 (h!32540 tokens!456))) e!1461359)))

(declare-fun b!2281197 () Bool)

(declare-fun e!1461358 () Bool)

(assert (=> b!2281197 (= e!1461359 e!1461358)))

(declare-fun c!361975 () Bool)

(assert (=> b!2281197 (= c!361975 ((_ is IntegerValue!13492) (value!137367 (h!32540 tokens!456))))))

(declare-fun b!2281198 () Bool)

(declare-fun res!975140 () Bool)

(declare-fun e!1461357 () Bool)

(assert (=> b!2281198 (=> res!975140 e!1461357)))

(assert (=> b!2281198 (= res!975140 (not ((_ is IntegerValue!13493) (value!137367 (h!32540 tokens!456)))))))

(assert (=> b!2281198 (= e!1461358 e!1461357)))

(declare-fun b!2281199 () Bool)

(declare-fun inv!15 (TokenValue!4497) Bool)

(assert (=> b!2281199 (= e!1461357 (inv!15 (value!137367 (h!32540 tokens!456))))))

(declare-fun b!2281200 () Bool)

(declare-fun inv!17 (TokenValue!4497) Bool)

(assert (=> b!2281200 (= e!1461358 (inv!17 (value!137367 (h!32540 tokens!456))))))

(assert (= (and d!675039 c!361976) b!2281196))

(assert (= (and d!675039 (not c!361976)) b!2281197))

(assert (= (and b!2281197 c!361975) b!2281200))

(assert (= (and b!2281197 (not c!361975)) b!2281198))

(assert (= (and b!2281198 (not res!975140)) b!2281199))

(declare-fun m!2709205 () Bool)

(assert (=> b!2281196 m!2709205))

(declare-fun m!2709207 () Bool)

(assert (=> b!2281199 m!2709207))

(declare-fun m!2709209 () Bool)

(assert (=> b!2281200 m!2709209))

(assert (=> b!2280768 d!675039))

(declare-fun d!675041 () Bool)

(declare-fun lt!846679 () Int)

(assert (=> d!675041 (= lt!846679 (size!21337 (list!10576 (charsOf!2723 (head!4944 tokens!456)))))))

(declare-fun size!21342 (Conc!8818) Int)

(assert (=> d!675041 (= lt!846679 (size!21342 (c!361906 (charsOf!2723 (head!4944 tokens!456)))))))

(assert (=> d!675041 (= (size!21338 (charsOf!2723 (head!4944 tokens!456))) lt!846679)))

(declare-fun bs!456575 () Bool)

(assert (= bs!456575 d!675041))

(assert (=> bs!456575 m!2708821))

(assert (=> bs!456575 m!2708847))

(assert (=> bs!456575 m!2708847))

(declare-fun m!2709211 () Bool)

(assert (=> bs!456575 m!2709211))

(declare-fun m!2709213 () Bool)

(assert (=> bs!456575 m!2709213))

(assert (=> b!2280779 d!675041))

(assert (=> b!2280779 d!675025))

(assert (=> b!2280779 d!675027))

(declare-fun d!675043 () Bool)

(declare-fun lt!846682 () Int)

(assert (=> d!675043 (>= lt!846682 0)))

(declare-fun e!1461362 () Int)

(assert (=> d!675043 (= lt!846682 e!1461362)))

(declare-fun c!361979 () Bool)

(assert (=> d!675043 (= c!361979 ((_ is Nil!27138) otherP!12))))

(assert (=> d!675043 (= (size!21337 otherP!12) lt!846682)))

(declare-fun b!2281205 () Bool)

(assert (=> b!2281205 (= e!1461362 0)))

(declare-fun b!2281206 () Bool)

(assert (=> b!2281206 (= e!1461362 (+ 1 (size!21337 (t!203488 otherP!12))))))

(assert (= (and d!675043 c!361979) b!2281205))

(assert (= (and d!675043 (not c!361979)) b!2281206))

(declare-fun m!2709215 () Bool)

(assert (=> b!2281206 m!2709215))

(assert (=> b!2280779 d!675043))

(declare-fun d!675045 () Bool)

(declare-fun res!975143 () Bool)

(declare-fun e!1461365 () Bool)

(assert (=> d!675045 (=> (not res!975143) (not e!1461365))))

(declare-fun rulesValid!1594 (LexerInterface!3932 List!27234) Bool)

(assert (=> d!675045 (= res!975143 (rulesValid!1594 thiss!16613 rules!1750))))

(assert (=> d!675045 (= (rulesInvariant!3434 thiss!16613 rules!1750) e!1461365)))

(declare-fun b!2281209 () Bool)

(declare-datatypes ((List!27236 0))(
  ( (Nil!27142) (Cons!27142 (h!32543 String!29589) (t!203540 List!27236)) )
))
(declare-fun noDuplicateTag!1592 (LexerInterface!3932 List!27234 List!27236) Bool)

(assert (=> b!2281209 (= e!1461365 (noDuplicateTag!1592 thiss!16613 rules!1750 Nil!27142))))

(assert (= (and d!675045 res!975143) b!2281209))

(declare-fun m!2709217 () Bool)

(assert (=> d!675045 m!2709217))

(declare-fun m!2709219 () Bool)

(assert (=> b!2281209 m!2709219))

(assert (=> b!2280758 d!675045))

(assert (=> b!2280769 d!675043))

(declare-fun d!675047 () Bool)

(assert (=> d!675047 (= (list!10576 (charsOf!2723 (h!32540 tokens!456))) (list!10581 (c!361906 (charsOf!2723 (h!32540 tokens!456)))))))

(declare-fun bs!456576 () Bool)

(assert (= bs!456576 d!675047))

(declare-fun m!2709221 () Bool)

(assert (=> bs!456576 m!2709221))

(assert (=> b!2280769 d!675047))

(declare-fun b!2281211 () Bool)

(declare-fun res!975147 () Bool)

(declare-fun e!1461368 () Bool)

(assert (=> b!2281211 (=> (not res!975147) (not e!1461368))))

(assert (=> b!2281211 (= res!975147 (= (head!4946 lt!846569) (head!4946 (++!6627 lt!846569 (_2!15951 lt!846566)))))))

(declare-fun b!2281212 () Bool)

(assert (=> b!2281212 (= e!1461368 (isPrefix!2325 (tail!3291 lt!846569) (tail!3291 (++!6627 lt!846569 (_2!15951 lt!846566)))))))

(declare-fun b!2281213 () Bool)

(declare-fun e!1461367 () Bool)

(assert (=> b!2281213 (= e!1461367 (>= (size!21337 (++!6627 lt!846569 (_2!15951 lt!846566))) (size!21337 lt!846569)))))

(declare-fun d!675049 () Bool)

(assert (=> d!675049 e!1461367))

(declare-fun res!975145 () Bool)

(assert (=> d!675049 (=> res!975145 e!1461367)))

(declare-fun lt!846683 () Bool)

(assert (=> d!675049 (= res!975145 (not lt!846683))))

(declare-fun e!1461366 () Bool)

(assert (=> d!675049 (= lt!846683 e!1461366)))

(declare-fun res!975146 () Bool)

(assert (=> d!675049 (=> res!975146 e!1461366)))

(assert (=> d!675049 (= res!975146 ((_ is Nil!27138) lt!846569))))

(assert (=> d!675049 (= (isPrefix!2325 lt!846569 (++!6627 lt!846569 (_2!15951 lt!846566))) lt!846683)))

(declare-fun b!2281210 () Bool)

(assert (=> b!2281210 (= e!1461366 e!1461368)))

(declare-fun res!975144 () Bool)

(assert (=> b!2281210 (=> (not res!975144) (not e!1461368))))

(assert (=> b!2281210 (= res!975144 (not ((_ is Nil!27138) (++!6627 lt!846569 (_2!15951 lt!846566)))))))

(assert (= (and d!675049 (not res!975146)) b!2281210))

(assert (= (and b!2281210 res!975144) b!2281211))

(assert (= (and b!2281211 res!975147) b!2281212))

(assert (= (and d!675049 (not res!975145)) b!2281213))

(declare-fun m!2709223 () Bool)

(assert (=> b!2281211 m!2709223))

(assert (=> b!2281211 m!2708809))

(declare-fun m!2709225 () Bool)

(assert (=> b!2281211 m!2709225))

(declare-fun m!2709227 () Bool)

(assert (=> b!2281212 m!2709227))

(assert (=> b!2281212 m!2708809))

(declare-fun m!2709229 () Bool)

(assert (=> b!2281212 m!2709229))

(assert (=> b!2281212 m!2709227))

(assert (=> b!2281212 m!2709229))

(declare-fun m!2709231 () Bool)

(assert (=> b!2281212 m!2709231))

(assert (=> b!2281213 m!2708809))

(declare-fun m!2709233 () Bool)

(assert (=> b!2281213 m!2709233))

(assert (=> b!2281213 m!2708799))

(assert (=> b!2280769 d!675049))

(declare-fun d!675051 () Bool)

(declare-fun lt!846686 () List!27232)

(assert (=> d!675051 (= (++!6627 lt!846569 lt!846686) input!1722)))

(declare-fun e!1461371 () List!27232)

(assert (=> d!675051 (= lt!846686 e!1461371)))

(declare-fun c!361982 () Bool)

(assert (=> d!675051 (= c!361982 ((_ is Cons!27138) lt!846569))))

(assert (=> d!675051 (>= (size!21337 input!1722) (size!21337 lt!846569))))

(assert (=> d!675051 (= (getSuffix!1116 input!1722 lt!846569) lt!846686)))

(declare-fun b!2281218 () Bool)

(assert (=> b!2281218 (= e!1461371 (getSuffix!1116 (tail!3291 input!1722) (t!203488 lt!846569)))))

(declare-fun b!2281219 () Bool)

(assert (=> b!2281219 (= e!1461371 input!1722)))

(assert (= (and d!675051 c!361982) b!2281218))

(assert (= (and d!675051 (not c!361982)) b!2281219))

(declare-fun m!2709235 () Bool)

(assert (=> d!675051 m!2709235))

(assert (=> d!675051 m!2709145))

(assert (=> d!675051 m!2708799))

(assert (=> b!2281218 m!2709165))

(assert (=> b!2281218 m!2709165))

(declare-fun m!2709237 () Bool)

(assert (=> b!2281218 m!2709237))

(assert (=> b!2280769 d!675051))

(declare-fun d!675053 () Bool)

(declare-fun lt!846687 () BalanceConc!17364)

(assert (=> d!675053 (= (list!10576 lt!846687) (originalCharacters!5105 (h!32540 tokens!456)))))

(assert (=> d!675053 (= lt!846687 (dynLambda!11771 (toChars!5976 (transformation!4335 (rule!6661 (h!32540 tokens!456)))) (value!137367 (h!32540 tokens!456))))))

(assert (=> d!675053 (= (charsOf!2723 (h!32540 tokens!456)) lt!846687)))

(declare-fun b_lambda!72595 () Bool)

(assert (=> (not b_lambda!72595) (not d!675053)))

(assert (=> d!675053 t!203492))

(declare-fun b_and!180209 () Bool)

(assert (= b_and!180201 (and (=> t!203492 result!165242) b_and!180209)))

(assert (=> d!675053 t!203494))

(declare-fun b_and!180211 () Bool)

(assert (= b_and!180203 (and (=> t!203494 result!165246) b_and!180211)))

(assert (=> d!675053 t!203496))

(declare-fun b_and!180213 () Bool)

(assert (= b_and!180205 (and (=> t!203496 result!165248) b_and!180213)))

(assert (=> d!675053 t!203498))

(declare-fun b_and!180215 () Bool)

(assert (= b_and!180207 (and (=> t!203498 result!165250) b_and!180215)))

(declare-fun m!2709239 () Bool)

(assert (=> d!675053 m!2709239))

(assert (=> d!675053 m!2708857))

(assert (=> b!2280769 d!675053))

(declare-fun b!2281230 () Bool)

(declare-fun res!975153 () Bool)

(declare-fun e!1461377 () Bool)

(assert (=> b!2281230 (=> (not res!975153) (not e!1461377))))

(declare-fun lt!846690 () List!27232)

(assert (=> b!2281230 (= res!975153 (= (size!21337 lt!846690) (+ (size!21337 lt!846569) (size!21337 (_2!15951 lt!846566)))))))

(declare-fun d!675055 () Bool)

(assert (=> d!675055 e!1461377))

(declare-fun res!975152 () Bool)

(assert (=> d!675055 (=> (not res!975152) (not e!1461377))))

(declare-fun content!3627 (List!27232) (InoxSet C!13512))

(assert (=> d!675055 (= res!975152 (= (content!3627 lt!846690) ((_ map or) (content!3627 lt!846569) (content!3627 (_2!15951 lt!846566)))))))

(declare-fun e!1461376 () List!27232)

(assert (=> d!675055 (= lt!846690 e!1461376)))

(declare-fun c!361985 () Bool)

(assert (=> d!675055 (= c!361985 ((_ is Nil!27138) lt!846569))))

(assert (=> d!675055 (= (++!6627 lt!846569 (_2!15951 lt!846566)) lt!846690)))

(declare-fun b!2281228 () Bool)

(assert (=> b!2281228 (= e!1461376 (_2!15951 lt!846566))))

(declare-fun b!2281231 () Bool)

(assert (=> b!2281231 (= e!1461377 (or (not (= (_2!15951 lt!846566) Nil!27138)) (= lt!846690 lt!846569)))))

(declare-fun b!2281229 () Bool)

(assert (=> b!2281229 (= e!1461376 (Cons!27138 (h!32539 lt!846569) (++!6627 (t!203488 lt!846569) (_2!15951 lt!846566))))))

(assert (= (and d!675055 c!361985) b!2281228))

(assert (= (and d!675055 (not c!361985)) b!2281229))

(assert (= (and d!675055 res!975152) b!2281230))

(assert (= (and b!2281230 res!975153) b!2281231))

(declare-fun m!2709241 () Bool)

(assert (=> b!2281230 m!2709241))

(assert (=> b!2281230 m!2708799))

(declare-fun m!2709243 () Bool)

(assert (=> b!2281230 m!2709243))

(declare-fun m!2709245 () Bool)

(assert (=> d!675055 m!2709245))

(declare-fun m!2709247 () Bool)

(assert (=> d!675055 m!2709247))

(declare-fun m!2709249 () Bool)

(assert (=> d!675055 m!2709249))

(declare-fun m!2709251 () Bool)

(assert (=> b!2281229 m!2709251))

(assert (=> b!2280769 d!675055))

(declare-fun d!675057 () Bool)

(declare-fun lt!846691 () Int)

(assert (=> d!675057 (>= lt!846691 0)))

(declare-fun e!1461378 () Int)

(assert (=> d!675057 (= lt!846691 e!1461378)))

(declare-fun c!361986 () Bool)

(assert (=> d!675057 (= c!361986 ((_ is Nil!27138) lt!846569))))

(assert (=> d!675057 (= (size!21337 lt!846569) lt!846691)))

(declare-fun b!2281232 () Bool)

(assert (=> b!2281232 (= e!1461378 0)))

(declare-fun b!2281233 () Bool)

(assert (=> b!2281233 (= e!1461378 (+ 1 (size!21337 (t!203488 lt!846569))))))

(assert (= (and d!675057 c!361986) b!2281232))

(assert (= (and d!675057 (not c!361986)) b!2281233))

(declare-fun m!2709253 () Bool)

(assert (=> b!2281233 m!2709253))

(assert (=> b!2280769 d!675057))

(declare-fun d!675059 () Bool)

(assert (=> d!675059 (= (_2!15951 lt!846566) lt!846571)))

(declare-fun lt!846694 () Unit!40060)

(declare-fun choose!13303 (List!27232 List!27232 List!27232 List!27232 List!27232) Unit!40060)

(assert (=> d!675059 (= lt!846694 (choose!13303 lt!846569 (_2!15951 lt!846566) lt!846569 lt!846571 input!1722))))

(assert (=> d!675059 (isPrefix!2325 lt!846569 input!1722)))

(assert (=> d!675059 (= (lemmaSamePrefixThenSameSuffix!1026 lt!846569 (_2!15951 lt!846566) lt!846569 lt!846571 input!1722) lt!846694)))

(declare-fun bs!456577 () Bool)

(assert (= bs!456577 d!675059))

(declare-fun m!2709255 () Bool)

(assert (=> bs!456577 m!2709255))

(assert (=> bs!456577 m!2708843))

(assert (=> b!2280769 d!675059))

(declare-fun d!675061 () Bool)

(assert (=> d!675061 (isPrefix!2325 lt!846569 (++!6627 lt!846569 (_2!15951 lt!846566)))))

(declare-fun lt!846697 () Unit!40060)

(declare-fun choose!13304 (List!27232 List!27232) Unit!40060)

(assert (=> d!675061 (= lt!846697 (choose!13304 lt!846569 (_2!15951 lt!846566)))))

(assert (=> d!675061 (= (lemmaConcatTwoListThenFirstIsPrefix!1530 lt!846569 (_2!15951 lt!846566)) lt!846697)))

(declare-fun bs!456578 () Bool)

(assert (= bs!456578 d!675061))

(assert (=> bs!456578 m!2708809))

(assert (=> bs!456578 m!2708809))

(assert (=> bs!456578 m!2708811))

(declare-fun m!2709257 () Bool)

(assert (=> bs!456578 m!2709257))

(assert (=> b!2280769 d!675061))

(declare-fun d!675063 () Bool)

(declare-fun lt!846698 () Bool)

(assert (=> d!675063 (= lt!846698 (select (content!3626 rules!1750) otherR!12))))

(declare-fun e!1461379 () Bool)

(assert (=> d!675063 (= lt!846698 e!1461379)))

(declare-fun res!975155 () Bool)

(assert (=> d!675063 (=> (not res!975155) (not e!1461379))))

(assert (=> d!675063 (= res!975155 ((_ is Cons!27140) rules!1750))))

(assert (=> d!675063 (= (contains!4707 rules!1750 otherR!12) lt!846698)))

(declare-fun b!2281234 () Bool)

(declare-fun e!1461380 () Bool)

(assert (=> b!2281234 (= e!1461379 e!1461380)))

(declare-fun res!975154 () Bool)

(assert (=> b!2281234 (=> res!975154 e!1461380)))

(assert (=> b!2281234 (= res!975154 (= (h!32541 rules!1750) otherR!12))))

(declare-fun b!2281235 () Bool)

(assert (=> b!2281235 (= e!1461380 (contains!4707 (t!203490 rules!1750) otherR!12))))

(assert (= (and d!675063 res!975155) b!2281234))

(assert (= (and b!2281234 (not res!975154)) b!2281235))

(assert (=> d!675063 m!2709191))

(declare-fun m!2709259 () Bool)

(assert (=> d!675063 m!2709259))

(declare-fun m!2709261 () Bool)

(assert (=> b!2281235 m!2709261))

(assert (=> b!2280756 d!675063))

(declare-fun b!2281237 () Bool)

(declare-fun res!975159 () Bool)

(declare-fun e!1461383 () Bool)

(assert (=> b!2281237 (=> (not res!975159) (not e!1461383))))

(assert (=> b!2281237 (= res!975159 (= (head!4946 lt!846569) (head!4946 input!1722)))))

(declare-fun b!2281238 () Bool)

(assert (=> b!2281238 (= e!1461383 (isPrefix!2325 (tail!3291 lt!846569) (tail!3291 input!1722)))))

(declare-fun b!2281239 () Bool)

(declare-fun e!1461382 () Bool)

(assert (=> b!2281239 (= e!1461382 (>= (size!21337 input!1722) (size!21337 lt!846569)))))

(declare-fun d!675065 () Bool)

(assert (=> d!675065 e!1461382))

(declare-fun res!975157 () Bool)

(assert (=> d!675065 (=> res!975157 e!1461382)))

(declare-fun lt!846699 () Bool)

(assert (=> d!675065 (= res!975157 (not lt!846699))))

(declare-fun e!1461381 () Bool)

(assert (=> d!675065 (= lt!846699 e!1461381)))

(declare-fun res!975158 () Bool)

(assert (=> d!675065 (=> res!975158 e!1461381)))

(assert (=> d!675065 (= res!975158 ((_ is Nil!27138) lt!846569))))

(assert (=> d!675065 (= (isPrefix!2325 lt!846569 input!1722) lt!846699)))

(declare-fun b!2281236 () Bool)

(assert (=> b!2281236 (= e!1461381 e!1461383)))

(declare-fun res!975156 () Bool)

(assert (=> b!2281236 (=> (not res!975156) (not e!1461383))))

(assert (=> b!2281236 (= res!975156 (not ((_ is Nil!27138) input!1722)))))

(assert (= (and d!675065 (not res!975158)) b!2281236))

(assert (= (and b!2281236 res!975156) b!2281237))

(assert (= (and b!2281237 res!975159) b!2281238))

(assert (= (and d!675065 (not res!975157)) b!2281239))

(assert (=> b!2281237 m!2709223))

(assert (=> b!2281237 m!2709161))

(assert (=> b!2281238 m!2709227))

(assert (=> b!2281238 m!2709165))

(assert (=> b!2281238 m!2709227))

(assert (=> b!2281238 m!2709165))

(declare-fun m!2709263 () Bool)

(assert (=> b!2281238 m!2709263))

(assert (=> b!2281239 m!2709145))

(assert (=> b!2281239 m!2708799))

(assert (=> b!2280767 d!675065))

(declare-fun d!675067 () Bool)

(assert (=> d!675067 (= lt!846569 otherP!12)))

(declare-fun lt!846702 () Unit!40060)

(declare-fun choose!13305 (List!27232 List!27232 List!27232) Unit!40060)

(assert (=> d!675067 (= lt!846702 (choose!13305 lt!846569 otherP!12 input!1722))))

(assert (=> d!675067 (isPrefix!2325 lt!846569 input!1722)))

(assert (=> d!675067 (= (lemmaIsPrefixSameLengthThenSameList!391 lt!846569 otherP!12 input!1722) lt!846702)))

(declare-fun bs!456579 () Bool)

(assert (= bs!456579 d!675067))

(declare-fun m!2709265 () Bool)

(assert (=> bs!456579 m!2709265))

(assert (=> bs!456579 m!2708843))

(assert (=> b!2280767 d!675067))

(declare-fun b!2281253 () Bool)

(declare-fun b_free!68197 () Bool)

(declare-fun b_next!68901 () Bool)

(assert (=> b!2281253 (= b_free!68197 (not b_next!68901))))

(declare-fun tp!722942 () Bool)

(declare-fun b_and!180217 () Bool)

(assert (=> b!2281253 (= tp!722942 b_and!180217)))

(declare-fun b_free!68199 () Bool)

(declare-fun b_next!68903 () Bool)

(assert (=> b!2281253 (= b_free!68199 (not b_next!68903))))

(declare-fun t!203533 () Bool)

(declare-fun tb!135559 () Bool)

(assert (=> (and b!2281253 (= (toChars!5976 (transformation!4335 (rule!6661 (h!32540 (t!203489 tokens!456))))) (toChars!5976 (transformation!4335 (rule!6661 (h!32540 tokens!456))))) t!203533) tb!135559))

(declare-fun result!165296 () Bool)

(assert (= result!165296 result!165242))

(assert (=> b!2280789 t!203533))

(declare-fun t!203535 () Bool)

(declare-fun tb!135561 () Bool)

(assert (=> (and b!2281253 (= (toChars!5976 (transformation!4335 (rule!6661 (h!32540 (t!203489 tokens!456))))) (toChars!5976 (transformation!4335 (rule!6661 (head!4944 tokens!456))))) t!203535) tb!135561))

(declare-fun result!165298 () Bool)

(assert (= result!165298 result!165286))

(assert (=> d!675025 t!203535))

(assert (=> d!675053 t!203533))

(declare-fun b_and!180219 () Bool)

(declare-fun tp!722943 () Bool)

(assert (=> b!2281253 (= tp!722943 (and (=> t!203533 result!165296) (=> t!203535 result!165298) b_and!180219))))

(declare-fun e!1461398 () Bool)

(assert (=> b!2281253 (= e!1461398 (and tp!722942 tp!722943))))

(declare-fun b!2281252 () Bool)

(declare-fun e!1461397 () Bool)

(declare-fun tp!722941 () Bool)

(assert (=> b!2281252 (= e!1461397 (and tp!722941 (inv!36718 (tag!4825 (rule!6661 (h!32540 (t!203489 tokens!456))))) (inv!36721 (transformation!4335 (rule!6661 (h!32540 (t!203489 tokens!456))))) e!1461398))))

(declare-fun e!1461399 () Bool)

(assert (=> b!2280755 (= tp!722850 e!1461399)))

(declare-fun tp!722945 () Bool)

(declare-fun b!2281250 () Bool)

(declare-fun e!1461401 () Bool)

(assert (=> b!2281250 (= e!1461399 (and (inv!36722 (h!32540 (t!203489 tokens!456))) e!1461401 tp!722945))))

(declare-fun tp!722944 () Bool)

(declare-fun b!2281251 () Bool)

(assert (=> b!2281251 (= e!1461401 (and (inv!21 (value!137367 (h!32540 (t!203489 tokens!456)))) e!1461397 tp!722944))))

(assert (= b!2281252 b!2281253))

(assert (= b!2281251 b!2281252))

(assert (= b!2281250 b!2281251))

(assert (= (and b!2280755 ((_ is Cons!27139) (t!203489 tokens!456))) b!2281250))

(declare-fun m!2709267 () Bool)

(assert (=> b!2281252 m!2709267))

(declare-fun m!2709269 () Bool)

(assert (=> b!2281252 m!2709269))

(declare-fun m!2709271 () Bool)

(assert (=> b!2281250 m!2709271))

(declare-fun m!2709273 () Bool)

(assert (=> b!2281251 m!2709273))

(declare-fun b!2281264 () Bool)

(declare-fun b_free!68201 () Bool)

(declare-fun b_next!68905 () Bool)

(assert (=> b!2281264 (= b_free!68201 (not b_next!68905))))

(declare-fun tp!722957 () Bool)

(declare-fun b_and!180221 () Bool)

(assert (=> b!2281264 (= tp!722957 b_and!180221)))

(declare-fun b_free!68203 () Bool)

(declare-fun b_next!68907 () Bool)

(assert (=> b!2281264 (= b_free!68203 (not b_next!68907))))

(declare-fun tb!135563 () Bool)

(declare-fun t!203537 () Bool)

(assert (=> (and b!2281264 (= (toChars!5976 (transformation!4335 (h!32541 (t!203490 rules!1750)))) (toChars!5976 (transformation!4335 (rule!6661 (h!32540 tokens!456))))) t!203537) tb!135563))

(declare-fun result!165302 () Bool)

(assert (= result!165302 result!165242))

(assert (=> b!2280789 t!203537))

(declare-fun t!203539 () Bool)

(declare-fun tb!135565 () Bool)

(assert (=> (and b!2281264 (= (toChars!5976 (transformation!4335 (h!32541 (t!203490 rules!1750)))) (toChars!5976 (transformation!4335 (rule!6661 (head!4944 tokens!456))))) t!203539) tb!135565))

(declare-fun result!165304 () Bool)

(assert (= result!165304 result!165286))

(assert (=> d!675025 t!203539))

(assert (=> d!675053 t!203537))

(declare-fun tp!722954 () Bool)

(declare-fun b_and!180223 () Bool)

(assert (=> b!2281264 (= tp!722954 (and (=> t!203537 result!165302) (=> t!203539 result!165304) b_and!180223))))

(declare-fun e!1461410 () Bool)

(assert (=> b!2281264 (= e!1461410 (and tp!722957 tp!722954))))

(declare-fun e!1461412 () Bool)

(declare-fun b!2281263 () Bool)

(declare-fun tp!722955 () Bool)

(assert (=> b!2281263 (= e!1461412 (and tp!722955 (inv!36718 (tag!4825 (h!32541 (t!203490 rules!1750)))) (inv!36721 (transformation!4335 (h!32541 (t!203490 rules!1750)))) e!1461410))))

(declare-fun b!2281262 () Bool)

(declare-fun e!1461413 () Bool)

(declare-fun tp!722956 () Bool)

(assert (=> b!2281262 (= e!1461413 (and e!1461412 tp!722956))))

(assert (=> b!2280765 (= tp!722853 e!1461413)))

(assert (= b!2281263 b!2281264))

(assert (= b!2281262 b!2281263))

(assert (= (and b!2280765 ((_ is Cons!27140) (t!203490 rules!1750))) b!2281262))

(declare-fun m!2709275 () Bool)

(assert (=> b!2281263 m!2709275))

(declare-fun m!2709277 () Bool)

(assert (=> b!2281263 m!2709277))

(declare-fun b!2281269 () Bool)

(declare-fun e!1461416 () Bool)

(declare-fun tp!722960 () Bool)

(assert (=> b!2281269 (= e!1461416 (and tp_is_empty!10587 tp!722960))))

(assert (=> b!2280784 (= tp!722848 e!1461416)))

(assert (= (and b!2280784 ((_ is Cons!27138) (t!203488 input!1722))) b!2281269))

(declare-fun b!2281270 () Bool)

(declare-fun e!1461417 () Bool)

(declare-fun tp!722961 () Bool)

(assert (=> b!2281270 (= e!1461417 (and tp_is_empty!10587 tp!722961))))

(assert (=> b!2280763 (= tp!722856 e!1461417)))

(assert (= (and b!2280763 ((_ is Cons!27138) (t!203488 otherP!12))) b!2281270))

(declare-fun e!1461420 () Bool)

(assert (=> b!2280753 (= tp!722858 e!1461420)))

(declare-fun b!2281284 () Bool)

(declare-fun tp!722976 () Bool)

(declare-fun tp!722974 () Bool)

(assert (=> b!2281284 (= e!1461420 (and tp!722976 tp!722974))))

(declare-fun b!2281281 () Bool)

(assert (=> b!2281281 (= e!1461420 tp_is_empty!10587)))

(declare-fun b!2281282 () Bool)

(declare-fun tp!722973 () Bool)

(declare-fun tp!722975 () Bool)

(assert (=> b!2281282 (= e!1461420 (and tp!722973 tp!722975))))

(declare-fun b!2281283 () Bool)

(declare-fun tp!722972 () Bool)

(assert (=> b!2281283 (= e!1461420 tp!722972)))

(assert (= (and b!2280753 ((_ is ElementMatch!6683) (regex!4335 otherR!12))) b!2281281))

(assert (= (and b!2280753 ((_ is Concat!11181) (regex!4335 otherR!12))) b!2281282))

(assert (= (and b!2280753 ((_ is Star!6683) (regex!4335 otherR!12))) b!2281283))

(assert (= (and b!2280753 ((_ is Union!6683) (regex!4335 otherR!12))) b!2281284))

(declare-fun e!1461421 () Bool)

(assert (=> b!2280783 (= tp!722849 e!1461421)))

(declare-fun b!2281288 () Bool)

(declare-fun tp!722981 () Bool)

(declare-fun tp!722979 () Bool)

(assert (=> b!2281288 (= e!1461421 (and tp!722981 tp!722979))))

(declare-fun b!2281285 () Bool)

(assert (=> b!2281285 (= e!1461421 tp_is_empty!10587)))

(declare-fun b!2281286 () Bool)

(declare-fun tp!722978 () Bool)

(declare-fun tp!722980 () Bool)

(assert (=> b!2281286 (= e!1461421 (and tp!722978 tp!722980))))

(declare-fun b!2281287 () Bool)

(declare-fun tp!722977 () Bool)

(assert (=> b!2281287 (= e!1461421 tp!722977)))

(assert (= (and b!2280783 ((_ is ElementMatch!6683) (regex!4335 r!2363))) b!2281285))

(assert (= (and b!2280783 ((_ is Concat!11181) (regex!4335 r!2363))) b!2281286))

(assert (= (and b!2280783 ((_ is Star!6683) (regex!4335 r!2363))) b!2281287))

(assert (= (and b!2280783 ((_ is Union!6683) (regex!4335 r!2363))) b!2281288))

(declare-fun e!1461422 () Bool)

(assert (=> b!2280780 (= tp!722852 e!1461422)))

(declare-fun b!2281292 () Bool)

(declare-fun tp!722986 () Bool)

(declare-fun tp!722984 () Bool)

(assert (=> b!2281292 (= e!1461422 (and tp!722986 tp!722984))))

(declare-fun b!2281289 () Bool)

(assert (=> b!2281289 (= e!1461422 tp_is_empty!10587)))

(declare-fun b!2281290 () Bool)

(declare-fun tp!722983 () Bool)

(declare-fun tp!722985 () Bool)

(assert (=> b!2281290 (= e!1461422 (and tp!722983 tp!722985))))

(declare-fun b!2281291 () Bool)

(declare-fun tp!722982 () Bool)

(assert (=> b!2281291 (= e!1461422 tp!722982)))

(assert (= (and b!2280780 ((_ is ElementMatch!6683) (regex!4335 (rule!6661 (h!32540 tokens!456))))) b!2281289))

(assert (= (and b!2280780 ((_ is Concat!11181) (regex!4335 (rule!6661 (h!32540 tokens!456))))) b!2281290))

(assert (= (and b!2280780 ((_ is Star!6683) (regex!4335 (rule!6661 (h!32540 tokens!456))))) b!2281291))

(assert (= (and b!2280780 ((_ is Union!6683) (regex!4335 (rule!6661 (h!32540 tokens!456))))) b!2281292))

(declare-fun e!1461423 () Bool)

(assert (=> b!2280781 (= tp!722842 e!1461423)))

(declare-fun b!2281296 () Bool)

(declare-fun tp!722991 () Bool)

(declare-fun tp!722989 () Bool)

(assert (=> b!2281296 (= e!1461423 (and tp!722991 tp!722989))))

(declare-fun b!2281293 () Bool)

(assert (=> b!2281293 (= e!1461423 tp_is_empty!10587)))

(declare-fun b!2281294 () Bool)

(declare-fun tp!722988 () Bool)

(declare-fun tp!722990 () Bool)

(assert (=> b!2281294 (= e!1461423 (and tp!722988 tp!722990))))

(declare-fun b!2281295 () Bool)

(declare-fun tp!722987 () Bool)

(assert (=> b!2281295 (= e!1461423 tp!722987)))

(assert (= (and b!2280781 ((_ is ElementMatch!6683) (regex!4335 (h!32541 rules!1750)))) b!2281293))

(assert (= (and b!2280781 ((_ is Concat!11181) (regex!4335 (h!32541 rules!1750)))) b!2281294))

(assert (= (and b!2280781 ((_ is Star!6683) (regex!4335 (h!32541 rules!1750)))) b!2281295))

(assert (= (and b!2280781 ((_ is Union!6683) (regex!4335 (h!32541 rules!1750)))) b!2281296))

(declare-fun b!2281297 () Bool)

(declare-fun e!1461424 () Bool)

(declare-fun tp!722992 () Bool)

(assert (=> b!2281297 (= e!1461424 (and tp_is_empty!10587 tp!722992))))

(assert (=> b!2280768 (= tp!722844 e!1461424)))

(assert (= (and b!2280768 ((_ is Cons!27138) (originalCharacters!5105 (h!32540 tokens!456)))) b!2281297))

(declare-fun b!2281298 () Bool)

(declare-fun e!1461425 () Bool)

(declare-fun tp!722993 () Bool)

(assert (=> b!2281298 (= e!1461425 (and tp_is_empty!10587 tp!722993))))

(assert (=> b!2280778 (= tp!722854 e!1461425)))

(assert (= (and b!2280778 ((_ is Cons!27138) (t!203488 suffix!886))) b!2281298))

(declare-fun b_lambda!72597 () Bool)

(assert (= b_lambda!72581 (or (and b!2281264 b_free!68203 (= (toChars!5976 (transformation!4335 (h!32541 (t!203490 rules!1750)))) (toChars!5976 (transformation!4335 (rule!6661 (h!32540 tokens!456)))))) (and b!2280754 b_free!68187) (and b!2280770 b_free!68183 (= (toChars!5976 (transformation!4335 otherR!12)) (toChars!5976 (transformation!4335 (rule!6661 (h!32540 tokens!456)))))) (and b!2280777 b_free!68175 (= (toChars!5976 (transformation!4335 r!2363)) (toChars!5976 (transformation!4335 (rule!6661 (h!32540 tokens!456)))))) (and b!2281253 b_free!68199 (= (toChars!5976 (transformation!4335 (rule!6661 (h!32540 (t!203489 tokens!456))))) (toChars!5976 (transformation!4335 (rule!6661 (h!32540 tokens!456)))))) (and b!2280764 b_free!68179 (= (toChars!5976 (transformation!4335 (h!32541 rules!1750))) (toChars!5976 (transformation!4335 (rule!6661 (h!32540 tokens!456)))))) b_lambda!72597)))

(declare-fun b_lambda!72599 () Bool)

(assert (= b_lambda!72595 (or (and b!2281264 b_free!68203 (= (toChars!5976 (transformation!4335 (h!32541 (t!203490 rules!1750)))) (toChars!5976 (transformation!4335 (rule!6661 (h!32540 tokens!456)))))) (and b!2280754 b_free!68187) (and b!2280770 b_free!68183 (= (toChars!5976 (transformation!4335 otherR!12)) (toChars!5976 (transformation!4335 (rule!6661 (h!32540 tokens!456)))))) (and b!2280777 b_free!68175 (= (toChars!5976 (transformation!4335 r!2363)) (toChars!5976 (transformation!4335 (rule!6661 (h!32540 tokens!456)))))) (and b!2281253 b_free!68199 (= (toChars!5976 (transformation!4335 (rule!6661 (h!32540 (t!203489 tokens!456))))) (toChars!5976 (transformation!4335 (rule!6661 (h!32540 tokens!456)))))) (and b!2280764 b_free!68179 (= (toChars!5976 (transformation!4335 (h!32541 rules!1750))) (toChars!5976 (transformation!4335 (rule!6661 (h!32540 tokens!456)))))) b_lambda!72599)))

(check-sat (not b!2281134) (not b!2281211) (not d!675055) (not d!675021) (not b!2281010) b_and!180219 (not d!675007) (not d!674991) (not b!2281282) (not tb!135519) (not b!2281218) b_and!180217 b_and!180157 b_and!180213 (not d!675037) (not b!2281165) (not d!675033) (not d!675013) (not b!2281114) b_and!180223 (not d!675005) (not b!2280975) (not b!2281297) (not b!2281022) (not b!2281291) (not b!2281117) (not d!674905) (not b!2281213) (not b_next!68891) b_and!180209 (not d!675045) (not b_next!68887) (not b!2281269) (not b!2281166) (not b!2281174) (not b!2281116) (not b!2281212) (not b_next!68883) (not b!2281251) (not d!675051) (not b!2281230) (not d!675053) (not b!2281292) (not d!675029) (not b!2280977) (not b!2281294) (not b!2281167) (not b!2281183) (not b_next!68907) (not b!2281262) (not b!2281250) (not b!2281118) (not b!2281196) (not b_next!68903) (not b_lambda!72597) (not d!674889) (not b!2281235) (not b!2281233) (not b!2280789) (not d!675001) (not bm!136416) (not b!2280790) (not d!675063) (not d!674987) (not b!2281176) (not b!2281209) (not b!2281206) (not b!2281185) (not d!675023) (not b!2281229) (not b!2281295) (not d!675041) (not b!2281121) (not d!674993) (not b_lambda!72599) (not b!2281237) (not b!2281184) (not b!2280795) (not d!674907) (not b_next!68881) b_and!180221 (not b!2281120) (not b!2280979) (not b!2280982) (not b!2281119) (not b!2281263) (not b_next!68901) (not b!2281284) (not b!2281298) (not b!2281290) tp_is_empty!10587 (not b!2281286) (not b!2281177) (not b!2281287) b_and!180153 (not d!675003) (not b!2281296) (not d!675025) (not b_next!68877) (not bm!136419) (not b_lambda!72593) (not b!2281252) (not b!2281239) (not b_next!68879) (not b!2281133) (not d!674995) b_and!180215 (not b!2281283) (not b!2281004) (not b!2280987) (not b!2280989) b_and!180211 (not d!675059) (not d!674999) (not b_next!68885) (not b!2281132) (not b!2281270) b_and!180145 (not b!2281173) b_and!180149 (not d!674901) (not b!2281200) (not b_next!68905) (not d!675067) (not b!2281238) (not b!2281115) (not b!2281199) (not b!2280976) (not tb!135551) (not b_next!68889) (not d!675047) (not b!2281288) (not d!675061))
(check-sat b_and!180219 b_and!180223 (not b_next!68887) (not b_next!68883) (not b_next!68907) (not b_next!68903) (not b_next!68901) b_and!180153 (not b_next!68877) (not b_next!68879) b_and!180215 b_and!180211 (not b_next!68885) b_and!180145 b_and!180149 (not b_next!68905) (not b_next!68889) b_and!180217 b_and!180157 b_and!180213 (not b_next!68891) b_and!180209 (not b_next!68881) b_and!180221)
