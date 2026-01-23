; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!223884 () Bool)

(assert start!223884)

(declare-fun b!2283895 () Bool)

(declare-fun b_free!68333 () Bool)

(declare-fun b_next!69037 () Bool)

(assert (=> b!2283895 (= b_free!68333 (not b_next!69037))))

(declare-fun tp!723869 () Bool)

(declare-fun b_and!180681 () Bool)

(assert (=> b!2283895 (= tp!723869 b_and!180681)))

(declare-fun b_free!68335 () Bool)

(declare-fun b_next!69039 () Bool)

(assert (=> b!2283895 (= b_free!68335 (not b_next!69039))))

(declare-fun tp!723859 () Bool)

(declare-fun b_and!180683 () Bool)

(assert (=> b!2283895 (= tp!723859 b_and!180683)))

(declare-fun b!2283906 () Bool)

(declare-fun b_free!68337 () Bool)

(declare-fun b_next!69041 () Bool)

(assert (=> b!2283906 (= b_free!68337 (not b_next!69041))))

(declare-fun tp!723866 () Bool)

(declare-fun b_and!180685 () Bool)

(assert (=> b!2283906 (= tp!723866 b_and!180685)))

(declare-fun b_free!68339 () Bool)

(declare-fun b_next!69043 () Bool)

(assert (=> b!2283906 (= b_free!68339 (not b_next!69043))))

(declare-fun tp!723854 () Bool)

(declare-fun b_and!180687 () Bool)

(assert (=> b!2283906 (= tp!723854 b_and!180687)))

(declare-fun b!2283905 () Bool)

(declare-fun b_free!68341 () Bool)

(declare-fun b_next!69045 () Bool)

(assert (=> b!2283905 (= b_free!68341 (not b_next!69045))))

(declare-fun tp!723864 () Bool)

(declare-fun b_and!180689 () Bool)

(assert (=> b!2283905 (= tp!723864 b_and!180689)))

(declare-fun b_free!68343 () Bool)

(declare-fun b_next!69047 () Bool)

(assert (=> b!2283905 (= b_free!68343 (not b_next!69047))))

(declare-fun tp!723862 () Bool)

(declare-fun b_and!180691 () Bool)

(assert (=> b!2283905 (= tp!723862 b_and!180691)))

(declare-fun b!2283887 () Bool)

(declare-fun b_free!68345 () Bool)

(declare-fun b_next!69049 () Bool)

(assert (=> b!2283887 (= b_free!68345 (not b_next!69049))))

(declare-fun tp!723868 () Bool)

(declare-fun b_and!180693 () Bool)

(assert (=> b!2283887 (= tp!723868 b_and!180693)))

(declare-fun b_free!68347 () Bool)

(declare-fun b_next!69051 () Bool)

(assert (=> b!2283887 (= b_free!68347 (not b_next!69051))))

(declare-fun tp!723856 () Bool)

(declare-fun b_and!180695 () Bool)

(assert (=> b!2283887 (= tp!723856 b_and!180695)))

(declare-fun b!2283876 () Bool)

(declare-fun e!1463104 () Bool)

(declare-fun e!1463097 () Bool)

(assert (=> b!2283876 (= e!1463104 e!1463097)))

(declare-fun res!976259 () Bool)

(assert (=> b!2283876 (=> (not res!976259) (not e!1463097))))

(declare-fun e!1463101 () Bool)

(assert (=> b!2283876 (= res!976259 e!1463101)))

(declare-fun res!976273 () Bool)

(assert (=> b!2283876 (=> res!976273 e!1463101)))

(declare-fun lt!847616 () Bool)

(assert (=> b!2283876 (= res!976273 lt!847616)))

(declare-datatypes ((List!27261 0))(
  ( (Nil!27167) (Cons!27167 (h!32568 (_ BitVec 16)) (t!203891 List!27261)) )
))
(declare-datatypes ((TokenValue!4503 0))(
  ( (FloatLiteralValue!9006 (text!31966 List!27261)) (TokenValueExt!4502 (__x!18066 Int)) (Broken!22515 (value!137512 List!27261)) (Object!4596) (End!4503) (Def!4503) (Underscore!4503) (Match!4503) (Else!4503) (Error!4503) (Case!4503) (If!4503) (Extends!4503) (Abstract!4503) (Class!4503) (Val!4503) (DelimiterValue!9006 (del!4563 List!27261)) (KeywordValue!4509 (value!137513 List!27261)) (CommentValue!9006 (value!137514 List!27261)) (WhitespaceValue!9006 (value!137515 List!27261)) (IndentationValue!4503 (value!137516 List!27261)) (String!29618) (Int32!4503) (Broken!22516 (value!137517 List!27261)) (Boolean!4504) (Unit!40081) (OperatorValue!4506 (op!4563 List!27261)) (IdentifierValue!9006 (value!137518 List!27261)) (IdentifierValue!9007 (value!137519 List!27261)) (WhitespaceValue!9007 (value!137520 List!27261)) (True!9006) (False!9006) (Broken!22517 (value!137521 List!27261)) (Broken!22518 (value!137522 List!27261)) (True!9007) (RightBrace!4503) (RightBracket!4503) (Colon!4503) (Null!4503) (Comma!4503) (LeftBracket!4503) (False!9007) (LeftBrace!4503) (ImaginaryLiteralValue!4503 (text!31967 List!27261)) (StringLiteralValue!13509 (value!137523 List!27261)) (EOFValue!4503 (value!137524 List!27261)) (IdentValue!4503 (value!137525 List!27261)) (DelimiterValue!9007 (value!137526 List!27261)) (DedentValue!4503 (value!137527 List!27261)) (NewLineValue!4503 (value!137528 List!27261)) (IntegerValue!13509 (value!137529 (_ BitVec 32)) (text!31968 List!27261)) (IntegerValue!13510 (value!137530 Int) (text!31969 List!27261)) (Times!4503) (Or!4503) (Equal!4503) (Minus!4503) (Broken!22519 (value!137531 List!27261)) (And!4503) (Div!4503) (LessEqual!4503) (Mod!4503) (Concat!11192) (Not!4503) (Plus!4503) (SpaceValue!4503 (value!137532 List!27261)) (IntegerValue!13511 (value!137533 Int) (text!31970 List!27261)) (StringLiteralValue!13510 (text!31971 List!27261)) (FloatLiteralValue!9007 (text!31972 List!27261)) (BytesLiteralValue!4503 (value!137534 List!27261)) (CommentValue!9007 (value!137535 List!27261)) (StringLiteralValue!13511 (value!137536 List!27261)) (ErrorTokenValue!4503 (msg!4564 List!27261)) )
))
(declare-datatypes ((C!13524 0))(
  ( (C!13525 (val!7810 Int)) )
))
(declare-datatypes ((List!27262 0))(
  ( (Nil!27168) (Cons!27168 (h!32569 C!13524) (t!203892 List!27262)) )
))
(declare-datatypes ((IArray!17665 0))(
  ( (IArray!17666 (innerList!8890 List!27262)) )
))
(declare-datatypes ((Conc!8830 0))(
  ( (Node!8830 (left!20605 Conc!8830) (right!20935 Conc!8830) (csize!17890 Int) (cheight!9041 Int)) (Leaf!12986 (xs!11772 IArray!17665) (csize!17891 Int)) (Empty!8830) )
))
(declare-datatypes ((BalanceConc!17388 0))(
  ( (BalanceConc!17389 (c!362372 Conc!8830)) )
))
(declare-datatypes ((Regex!6689 0))(
  ( (ElementMatch!6689 (c!362373 C!13524)) (Concat!11193 (regOne!13890 Regex!6689) (regTwo!13890 Regex!6689)) (EmptyExpr!6689) (Star!6689 (reg!7018 Regex!6689)) (EmptyLang!6689) (Union!6689 (regOne!13891 Regex!6689) (regTwo!13891 Regex!6689)) )
))
(declare-datatypes ((String!29619 0))(
  ( (String!29620 (value!137537 String)) )
))
(declare-datatypes ((TokenValueInjection!8546 0))(
  ( (TokenValueInjection!8547 (toValue!6127 Int) (toChars!5986 Int)) )
))
(declare-datatypes ((Rule!8482 0))(
  ( (Rule!8483 (regex!4341 Regex!6689) (tag!4831 String!29619) (isSeparator!4341 Bool) (transformation!4341 TokenValueInjection!8546)) )
))
(declare-datatypes ((Token!8160 0))(
  ( (Token!8161 (value!137538 TokenValue!4503) (rule!6669 Rule!8482) (size!21370 Int) (originalCharacters!5111 List!27262)) )
))
(declare-datatypes ((List!27263 0))(
  ( (Nil!27169) (Cons!27169 (h!32570 Token!8160) (t!203893 List!27263)) )
))
(declare-fun tokens!456 () List!27263)

(declare-fun isEmpty!15440 (List!27263) Bool)

(assert (=> b!2283876 (= lt!847616 (isEmpty!15440 tokens!456))))

(declare-fun b!2283877 () Bool)

(declare-fun e!1463109 () Bool)

(declare-fun r!2363 () Rule!8482)

(declare-fun matchR!2946 (Regex!6689 List!27262) Bool)

(declare-fun list!10604 (BalanceConc!17388) List!27262)

(declare-fun charsOf!2729 (Token!8160) BalanceConc!17388)

(declare-fun head!4956 (List!27263) Token!8160)

(assert (=> b!2283877 (= e!1463109 (not (matchR!2946 (regex!4341 r!2363) (list!10604 (charsOf!2729 (head!4956 tokens!456))))))))

(declare-fun b!2283879 () Bool)

(declare-fun res!976277 () Bool)

(declare-fun e!1463119 () Bool)

(assert (=> b!2283879 (=> (not res!976277) (not e!1463119))))

(declare-datatypes ((LexerInterface!3938 0))(
  ( (LexerInterfaceExt!3935 (__x!18067 Int)) (Lexer!3936) )
))
(declare-fun thiss!16613 () LexerInterface!3938)

(declare-datatypes ((List!27264 0))(
  ( (Nil!27170) (Cons!27170 (h!32571 Rule!8482) (t!203894 List!27264)) )
))
(declare-fun rules!1750 () List!27264)

(declare-fun rulesInvariant!3440 (LexerInterface!3938 List!27264) Bool)

(assert (=> b!2283879 (= res!976277 (rulesInvariant!3440 thiss!16613 rules!1750))))

(declare-fun e!1463112 () Bool)

(declare-fun b!2283880 () Bool)

(declare-fun tp!723861 () Bool)

(declare-fun e!1463098 () Bool)

(declare-fun inv!36757 (String!29619) Bool)

(declare-fun inv!36760 (TokenValueInjection!8546) Bool)

(assert (=> b!2283880 (= e!1463098 (and tp!723861 (inv!36757 (tag!4831 (h!32571 rules!1750))) (inv!36760 (transformation!4341 (h!32571 rules!1750))) e!1463112))))

(declare-fun b!2283881 () Bool)

(declare-fun e!1463122 () Bool)

(declare-fun tp_is_empty!10599 () Bool)

(declare-fun tp!723867 () Bool)

(assert (=> b!2283881 (= e!1463122 (and tp_is_empty!10599 tp!723867))))

(declare-fun b!2283882 () Bool)

(declare-fun otherP!12 () List!27262)

(declare-fun size!21371 (BalanceConc!17388) Int)

(declare-fun size!21372 (List!27262) Int)

(assert (=> b!2283882 (= e!1463101 (<= (size!21371 (charsOf!2729 (head!4956 tokens!456))) (size!21372 otherP!12)))))

(declare-fun b!2283883 () Bool)

(declare-fun e!1463121 () Bool)

(declare-fun tp!723858 () Bool)

(assert (=> b!2283883 (= e!1463121 (and tp_is_empty!10599 tp!723858))))

(declare-fun tp!723860 () Bool)

(declare-fun e!1463118 () Bool)

(declare-fun e!1463093 () Bool)

(declare-fun b!2283884 () Bool)

(assert (=> b!2283884 (= e!1463093 (and tp!723860 (inv!36757 (tag!4831 (rule!6669 (h!32570 tokens!456)))) (inv!36760 (transformation!4341 (rule!6669 (h!32570 tokens!456)))) e!1463118))))

(declare-fun b!2283885 () Bool)

(declare-fun res!976272 () Bool)

(declare-fun e!1463116 () Bool)

(assert (=> b!2283885 (=> res!976272 e!1463116)))

(declare-fun lt!847617 () List!27262)

(declare-fun isEmpty!15441 (List!27262) Bool)

(assert (=> b!2283885 (= res!976272 (isEmpty!15441 lt!847617))))

(declare-fun b!2283886 () Bool)

(declare-fun e!1463096 () Bool)

(declare-fun tp!723855 () Bool)

(assert (=> b!2283886 (= e!1463096 (and e!1463098 tp!723855))))

(assert (=> b!2283887 (= e!1463112 (and tp!723868 tp!723856))))

(declare-fun e!1463115 () Bool)

(declare-fun b!2283888 () Bool)

(declare-fun tp!723863 () Bool)

(declare-fun e!1463094 () Bool)

(declare-fun inv!36761 (Token!8160) Bool)

(assert (=> b!2283888 (= e!1463115 (and (inv!36761 (h!32570 tokens!456)) e!1463094 tp!723863))))

(declare-fun b!2283878 () Bool)

(declare-fun res!976271 () Bool)

(assert (=> b!2283878 (=> (not res!976271) (not e!1463119))))

(declare-fun contains!4715 (List!27264 Rule!8482) Bool)

(assert (=> b!2283878 (= res!976271 (contains!4715 rules!1750 r!2363))))

(declare-fun res!976267 () Bool)

(assert (=> start!223884 (=> (not res!976267) (not e!1463119))))

(get-info :version)

(assert (=> start!223884 (= res!976267 ((_ is Lexer!3936) thiss!16613))))

(assert (=> start!223884 e!1463119))

(assert (=> start!223884 true))

(assert (=> start!223884 e!1463122))

(declare-fun e!1463095 () Bool)

(assert (=> start!223884 e!1463095))

(assert (=> start!223884 e!1463121))

(declare-fun e!1463113 () Bool)

(assert (=> start!223884 e!1463113))

(assert (=> start!223884 e!1463096))

(declare-fun e!1463111 () Bool)

(assert (=> start!223884 e!1463111))

(assert (=> start!223884 e!1463115))

(declare-fun b!2283889 () Bool)

(declare-fun res!976260 () Bool)

(assert (=> b!2283889 (=> (not res!976260) (not e!1463119))))

(declare-fun isEmpty!15442 (List!27264) Bool)

(assert (=> b!2283889 (= res!976260 (not (isEmpty!15442 rules!1750)))))

(declare-fun e!1463106 () Bool)

(declare-fun tp!723870 () Bool)

(declare-fun b!2283890 () Bool)

(assert (=> b!2283890 (= e!1463111 (and tp!723870 (inv!36757 (tag!4831 r!2363)) (inv!36760 (transformation!4341 r!2363)) e!1463106))))

(declare-fun b!2283891 () Bool)

(declare-fun e!1463110 () Bool)

(assert (=> b!2283891 (= e!1463097 (not e!1463110))))

(declare-fun res!976265 () Bool)

(assert (=> b!2283891 (=> res!976265 e!1463110)))

(assert (=> b!2283891 (= res!976265 e!1463109)))

(declare-fun res!976264 () Bool)

(assert (=> b!2283891 (=> (not res!976264) (not e!1463109))))

(assert (=> b!2283891 (= res!976264 (not lt!847616))))

(declare-fun ruleValid!1431 (LexerInterface!3938 Rule!8482) Bool)

(assert (=> b!2283891 (ruleValid!1431 thiss!16613 r!2363)))

(declare-datatypes ((Unit!40082 0))(
  ( (Unit!40083) )
))
(declare-fun lt!847615 () Unit!40082)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!836 (LexerInterface!3938 Rule!8482 List!27264) Unit!40082)

(assert (=> b!2283891 (= lt!847615 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!836 thiss!16613 r!2363 rules!1750))))

(declare-fun b!2283892 () Bool)

(declare-fun e!1463120 () Bool)

(assert (=> b!2283892 (= e!1463116 e!1463120)))

(declare-fun res!976263 () Bool)

(assert (=> b!2283892 (=> res!976263 e!1463120)))

(declare-datatypes ((tuple2!26926 0))(
  ( (tuple2!26927 (_1!15973 Token!8160) (_2!15973 List!27262)) )
))
(declare-datatypes ((Option!5329 0))(
  ( (None!5328) (Some!5328 (v!30396 tuple2!26926)) )
))
(declare-fun lt!847622 () Option!5329)

(declare-fun lt!847611 () BalanceConc!17388)

(declare-fun lt!847613 () Int)

(declare-fun lt!847620 () List!27262)

(declare-fun apply!6615 (TokenValueInjection!8546 BalanceConc!17388) TokenValue!4503)

(assert (=> b!2283892 (= res!976263 (not (= lt!847622 (Some!5328 (tuple2!26927 (Token!8161 (apply!6615 (transformation!4341 r!2363) lt!847611) r!2363 lt!847613 lt!847617) lt!847620)))))))

(declare-fun lt!847618 () Unit!40082)

(declare-fun lemmaSemiInverse!1050 (TokenValueInjection!8546 BalanceConc!17388) Unit!40082)

(assert (=> b!2283892 (= lt!847618 (lemmaSemiInverse!1050 (transformation!4341 r!2363) lt!847611))))

(declare-fun seqFromList!3045 (List!27262) BalanceConc!17388)

(assert (=> b!2283892 (= lt!847611 (seqFromList!3045 lt!847617))))

(declare-fun b!2283893 () Bool)

(declare-fun res!976268 () Bool)

(assert (=> b!2283893 (=> (not res!976268) (not e!1463097))))

(declare-fun otherR!12 () Rule!8482)

(assert (=> b!2283893 (= res!976268 (not (= r!2363 otherR!12)))))

(declare-fun b!2283894 () Bool)

(declare-fun e!1463117 () Bool)

(declare-fun tp!723865 () Bool)

(assert (=> b!2283894 (= e!1463095 (and tp!723865 (inv!36757 (tag!4831 otherR!12)) (inv!36760 (transformation!4341 otherR!12)) e!1463117))))

(assert (=> b!2283895 (= e!1463117 (and tp!723869 tp!723859))))

(declare-fun b!2283896 () Bool)

(declare-fun e!1463102 () Bool)

(assert (=> b!2283896 (= e!1463102 (= (rule!6669 (head!4956 tokens!456)) r!2363))))

(declare-fun b!2283897 () Bool)

(declare-fun res!976269 () Bool)

(assert (=> b!2283897 (=> (not res!976269) (not e!1463119))))

(assert (=> b!2283897 (= res!976269 (contains!4715 rules!1750 otherR!12))))

(declare-fun b!2283898 () Bool)

(declare-fun e!1463108 () Bool)

(assert (=> b!2283898 (= e!1463110 e!1463108)))

(declare-fun res!976276 () Bool)

(assert (=> b!2283898 (=> res!976276 e!1463108)))

(declare-fun lt!847610 () Int)

(declare-fun lt!847623 () Int)

(assert (=> b!2283898 (= res!976276 (or (<= lt!847610 lt!847623) ((_ is Nil!27169) tokens!456)))))

(declare-fun getIndex!354 (List!27264 Rule!8482) Int)

(assert (=> b!2283898 (= lt!847623 (getIndex!354 rules!1750 otherR!12))))

(assert (=> b!2283898 (= lt!847610 (getIndex!354 rules!1750 r!2363))))

(assert (=> b!2283898 (ruleValid!1431 thiss!16613 otherR!12)))

(declare-fun lt!847621 () Unit!40082)

(assert (=> b!2283898 (= lt!847621 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!836 thiss!16613 otherR!12 rules!1750))))

(declare-fun tp!723857 () Bool)

(declare-fun b!2283899 () Bool)

(declare-fun inv!21 (TokenValue!4503) Bool)

(assert (=> b!2283899 (= e!1463094 (and (inv!21 (value!137538 (h!32570 tokens!456))) e!1463093 tp!723857))))

(declare-fun b!2283900 () Bool)

(declare-fun res!976266 () Bool)

(assert (=> b!2283900 (=> res!976266 e!1463120)))

(assert (=> b!2283900 (= res!976266 (not (matchR!2946 (regex!4341 r!2363) lt!847617)))))

(declare-fun b!2283901 () Bool)

(assert (=> b!2283901 (= e!1463120 (< lt!847623 lt!847610))))

(declare-fun b!2283902 () Bool)

(declare-fun tp!723871 () Bool)

(assert (=> b!2283902 (= e!1463113 (and tp_is_empty!10599 tp!723871))))

(declare-fun b!2283903 () Bool)

(declare-fun e!1463099 () Bool)

(declare-fun e!1463105 () Bool)

(assert (=> b!2283903 (= e!1463099 e!1463105)))

(declare-fun res!976275 () Bool)

(assert (=> b!2283903 (=> res!976275 e!1463105)))

(declare-fun lt!847626 () Int)

(assert (=> b!2283903 (= res!976275 (not (= lt!847626 lt!847613)))))

(assert (=> b!2283903 (= lt!847613 (size!21372 lt!847617))))

(assert (=> b!2283903 (= lt!847626 (size!21372 otherP!12))))

(declare-fun lt!847614 () tuple2!26926)

(assert (=> b!2283903 (= (_2!15973 lt!847614) lt!847620)))

(declare-fun lt!847619 () Unit!40082)

(declare-fun input!1722 () List!27262)

(declare-fun lemmaSamePrefixThenSameSuffix!1032 (List!27262 List!27262 List!27262 List!27262 List!27262) Unit!40082)

(assert (=> b!2283903 (= lt!847619 (lemmaSamePrefixThenSameSuffix!1032 lt!847617 (_2!15973 lt!847614) lt!847617 lt!847620 input!1722))))

(declare-fun getSuffix!1122 (List!27262 List!27262) List!27262)

(assert (=> b!2283903 (= lt!847620 (getSuffix!1122 input!1722 lt!847617))))

(declare-fun isPrefix!2331 (List!27262 List!27262) Bool)

(declare-fun ++!6637 (List!27262 List!27262) List!27262)

(assert (=> b!2283903 (isPrefix!2331 lt!847617 (++!6637 lt!847617 (_2!15973 lt!847614)))))

(declare-fun lt!847625 () Unit!40082)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1536 (List!27262 List!27262) Unit!40082)

(assert (=> b!2283903 (= lt!847625 (lemmaConcatTwoListThenFirstIsPrefix!1536 lt!847617 (_2!15973 lt!847614)))))

(assert (=> b!2283903 (= lt!847617 (list!10604 (charsOf!2729 (h!32570 tokens!456))))))

(declare-fun b!2283904 () Bool)

(assert (=> b!2283904 (= e!1463119 e!1463104)))

(declare-fun res!976274 () Bool)

(assert (=> b!2283904 (=> (not res!976274) (not e!1463104))))

(declare-datatypes ((IArray!17667 0))(
  ( (IArray!17668 (innerList!8891 List!27263)) )
))
(declare-datatypes ((Conc!8831 0))(
  ( (Node!8831 (left!20606 Conc!8831) (right!20936 Conc!8831) (csize!17892 Int) (cheight!9042 Int)) (Leaf!12987 (xs!11773 IArray!17667) (csize!17893 Int)) (Empty!8831) )
))
(declare-datatypes ((BalanceConc!17390 0))(
  ( (BalanceConc!17391 (c!362374 Conc!8831)) )
))
(declare-datatypes ((tuple2!26928 0))(
  ( (tuple2!26929 (_1!15974 BalanceConc!17390) (_2!15974 BalanceConc!17388)) )
))
(declare-fun lt!847612 () tuple2!26928)

(declare-fun suffix!886 () List!27262)

(declare-datatypes ((tuple2!26930 0))(
  ( (tuple2!26931 (_1!15975 List!27263) (_2!15975 List!27262)) )
))
(declare-fun list!10605 (BalanceConc!17390) List!27263)

(assert (=> b!2283904 (= res!976274 (= (tuple2!26931 (list!10605 (_1!15974 lt!847612)) (list!10604 (_2!15974 lt!847612))) (tuple2!26931 tokens!456 suffix!886)))))

(declare-fun lex!1777 (LexerInterface!3938 List!27264 BalanceConc!17388) tuple2!26928)

(assert (=> b!2283904 (= lt!847612 (lex!1777 thiss!16613 rules!1750 (seqFromList!3045 input!1722)))))

(assert (=> b!2283905 (= e!1463118 (and tp!723864 tp!723862))))

(assert (=> b!2283906 (= e!1463106 (and tp!723866 tp!723854))))

(declare-fun b!2283907 () Bool)

(assert (=> b!2283907 (= e!1463108 e!1463099)))

(declare-fun res!976262 () Bool)

(assert (=> b!2283907 (=> res!976262 e!1463099)))

(assert (=> b!2283907 (= res!976262 (not (= (h!32570 tokens!456) (_1!15973 lt!847614))))))

(declare-fun get!8191 (Option!5329) tuple2!26926)

(assert (=> b!2283907 (= lt!847614 (get!8191 lt!847622))))

(declare-fun maxPrefix!2202 (LexerInterface!3938 List!27264 List!27262) Option!5329)

(assert (=> b!2283907 (= lt!847622 (maxPrefix!2202 thiss!16613 rules!1750 input!1722))))

(declare-fun b!2283908 () Bool)

(declare-fun res!976278 () Bool)

(assert (=> b!2283908 (=> (not res!976278) (not e!1463097))))

(assert (=> b!2283908 (= res!976278 e!1463102)))

(declare-fun res!976261 () Bool)

(assert (=> b!2283908 (=> res!976261 e!1463102)))

(assert (=> b!2283908 (= res!976261 lt!847616)))

(declare-fun b!2283909 () Bool)

(declare-fun res!976279 () Bool)

(assert (=> b!2283909 (=> (not res!976279) (not e!1463097))))

(assert (=> b!2283909 (= res!976279 (isPrefix!2331 otherP!12 input!1722))))

(declare-fun b!2283910 () Bool)

(assert (=> b!2283910 (= e!1463105 e!1463116)))

(declare-fun res!976270 () Bool)

(assert (=> b!2283910 (=> res!976270 e!1463116)))

(assert (=> b!2283910 (= res!976270 (not (isPrefix!2331 lt!847617 input!1722)))))

(assert (=> b!2283910 (= lt!847617 otherP!12)))

(declare-fun lt!847624 () Unit!40082)

(declare-fun lemmaIsPrefixSameLengthThenSameList!397 (List!27262 List!27262 List!27262) Unit!40082)

(assert (=> b!2283910 (= lt!847624 (lemmaIsPrefixSameLengthThenSameList!397 lt!847617 otherP!12 input!1722))))

(assert (= (and start!223884 res!976267) b!2283889))

(assert (= (and b!2283889 res!976260) b!2283879))

(assert (= (and b!2283879 res!976277) b!2283878))

(assert (= (and b!2283878 res!976271) b!2283897))

(assert (= (and b!2283897 res!976269) b!2283904))

(assert (= (and b!2283904 res!976274) b!2283876))

(assert (= (and b!2283876 (not res!976273)) b!2283882))

(assert (= (and b!2283876 res!976259) b!2283908))

(assert (= (and b!2283908 (not res!976261)) b!2283896))

(assert (= (and b!2283908 res!976278) b!2283909))

(assert (= (and b!2283909 res!976279) b!2283893))

(assert (= (and b!2283893 res!976268) b!2283891))

(assert (= (and b!2283891 res!976264) b!2283877))

(assert (= (and b!2283891 (not res!976265)) b!2283898))

(assert (= (and b!2283898 (not res!976276)) b!2283907))

(assert (= (and b!2283907 (not res!976262)) b!2283903))

(assert (= (and b!2283903 (not res!976275)) b!2283910))

(assert (= (and b!2283910 (not res!976270)) b!2283885))

(assert (= (and b!2283885 (not res!976272)) b!2283892))

(assert (= (and b!2283892 (not res!976263)) b!2283900))

(assert (= (and b!2283900 (not res!976266)) b!2283901))

(assert (= (and start!223884 ((_ is Cons!27168) input!1722)) b!2283881))

(assert (= b!2283894 b!2283895))

(assert (= start!223884 b!2283894))

(assert (= (and start!223884 ((_ is Cons!27168) suffix!886)) b!2283883))

(assert (= (and start!223884 ((_ is Cons!27168) otherP!12)) b!2283902))

(assert (= b!2283880 b!2283887))

(assert (= b!2283886 b!2283880))

(assert (= (and start!223884 ((_ is Cons!27170) rules!1750)) b!2283886))

(assert (= b!2283890 b!2283906))

(assert (= start!223884 b!2283890))

(assert (= b!2283884 b!2283905))

(assert (= b!2283899 b!2283884))

(assert (= b!2283888 b!2283899))

(assert (= (and start!223884 ((_ is Cons!27169) tokens!456)) b!2283888))

(declare-fun m!2711809 () Bool)

(assert (=> b!2283900 m!2711809))

(declare-fun m!2711811 () Bool)

(assert (=> b!2283909 m!2711811))

(declare-fun m!2711813 () Bool)

(assert (=> b!2283878 m!2711813))

(declare-fun m!2711815 () Bool)

(assert (=> b!2283884 m!2711815))

(declare-fun m!2711817 () Bool)

(assert (=> b!2283884 m!2711817))

(declare-fun m!2711819 () Bool)

(assert (=> b!2283898 m!2711819))

(declare-fun m!2711821 () Bool)

(assert (=> b!2283898 m!2711821))

(declare-fun m!2711823 () Bool)

(assert (=> b!2283898 m!2711823))

(declare-fun m!2711825 () Bool)

(assert (=> b!2283898 m!2711825))

(declare-fun m!2711827 () Bool)

(assert (=> b!2283904 m!2711827))

(declare-fun m!2711829 () Bool)

(assert (=> b!2283904 m!2711829))

(declare-fun m!2711831 () Bool)

(assert (=> b!2283904 m!2711831))

(assert (=> b!2283904 m!2711831))

(declare-fun m!2711833 () Bool)

(assert (=> b!2283904 m!2711833))

(declare-fun m!2711835 () Bool)

(assert (=> b!2283910 m!2711835))

(declare-fun m!2711837 () Bool)

(assert (=> b!2283910 m!2711837))

(declare-fun m!2711839 () Bool)

(assert (=> b!2283888 m!2711839))

(declare-fun m!2711841 () Bool)

(assert (=> b!2283907 m!2711841))

(declare-fun m!2711843 () Bool)

(assert (=> b!2283907 m!2711843))

(declare-fun m!2711845 () Bool)

(assert (=> b!2283894 m!2711845))

(declare-fun m!2711847 () Bool)

(assert (=> b!2283894 m!2711847))

(declare-fun m!2711849 () Bool)

(assert (=> b!2283885 m!2711849))

(declare-fun m!2711851 () Bool)

(assert (=> b!2283897 m!2711851))

(declare-fun m!2711853 () Bool)

(assert (=> b!2283876 m!2711853))

(declare-fun m!2711855 () Bool)

(assert (=> b!2283896 m!2711855))

(declare-fun m!2711857 () Bool)

(assert (=> b!2283879 m!2711857))

(assert (=> b!2283882 m!2711855))

(assert (=> b!2283882 m!2711855))

(declare-fun m!2711859 () Bool)

(assert (=> b!2283882 m!2711859))

(assert (=> b!2283882 m!2711859))

(declare-fun m!2711861 () Bool)

(assert (=> b!2283882 m!2711861))

(declare-fun m!2711863 () Bool)

(assert (=> b!2283882 m!2711863))

(declare-fun m!2711865 () Bool)

(assert (=> b!2283889 m!2711865))

(declare-fun m!2711867 () Bool)

(assert (=> b!2283892 m!2711867))

(declare-fun m!2711869 () Bool)

(assert (=> b!2283892 m!2711869))

(declare-fun m!2711871 () Bool)

(assert (=> b!2283892 m!2711871))

(assert (=> b!2283877 m!2711855))

(assert (=> b!2283877 m!2711855))

(assert (=> b!2283877 m!2711859))

(assert (=> b!2283877 m!2711859))

(declare-fun m!2711873 () Bool)

(assert (=> b!2283877 m!2711873))

(assert (=> b!2283877 m!2711873))

(declare-fun m!2711875 () Bool)

(assert (=> b!2283877 m!2711875))

(declare-fun m!2711877 () Bool)

(assert (=> b!2283891 m!2711877))

(declare-fun m!2711879 () Bool)

(assert (=> b!2283891 m!2711879))

(declare-fun m!2711881 () Bool)

(assert (=> b!2283903 m!2711881))

(declare-fun m!2711883 () Bool)

(assert (=> b!2283903 m!2711883))

(declare-fun m!2711885 () Bool)

(assert (=> b!2283903 m!2711885))

(declare-fun m!2711887 () Bool)

(assert (=> b!2283903 m!2711887))

(declare-fun m!2711889 () Bool)

(assert (=> b!2283903 m!2711889))

(declare-fun m!2711891 () Bool)

(assert (=> b!2283903 m!2711891))

(assert (=> b!2283903 m!2711863))

(assert (=> b!2283903 m!2711885))

(assert (=> b!2283903 m!2711883))

(declare-fun m!2711893 () Bool)

(assert (=> b!2283903 m!2711893))

(declare-fun m!2711895 () Bool)

(assert (=> b!2283903 m!2711895))

(declare-fun m!2711897 () Bool)

(assert (=> b!2283890 m!2711897))

(declare-fun m!2711899 () Bool)

(assert (=> b!2283890 m!2711899))

(declare-fun m!2711901 () Bool)

(assert (=> b!2283899 m!2711901))

(declare-fun m!2711903 () Bool)

(assert (=> b!2283880 m!2711903))

(declare-fun m!2711905 () Bool)

(assert (=> b!2283880 m!2711905))

(check-sat (not b!2283880) (not b!2283885) tp_is_empty!10599 (not b!2283877) (not b!2283879) (not b!2283899) (not b_next!69039) (not b!2283898) (not b!2283883) (not b!2283882) (not b_next!69041) (not b!2283892) (not b!2283897) (not b!2283876) b_and!180687 (not b!2283903) b_and!180689 (not b!2283907) (not b_next!69045) (not b!2283910) (not b!2283896) (not b!2283878) b_and!180691 (not b!2283890) (not b!2283900) (not b!2283886) (not b_next!69043) (not b_next!69047) (not b!2283889) (not b!2283902) (not b!2283884) (not b!2283881) b_and!180685 b_and!180693 (not b!2283894) b_and!180681 b_and!180683 b_and!180695 (not b_next!69037) (not b!2283904) (not b_next!69049) (not b_next!69051) (not b!2283891) (not b!2283888) (not b!2283909))
(check-sat (not b_next!69041) b_and!180687 b_and!180689 (not b_next!69045) b_and!180691 (not b_next!69039) (not b_next!69043) (not b_next!69047) (not b_next!69049) (not b_next!69051) b_and!180693 b_and!180685 b_and!180681 b_and!180683 b_and!180695 (not b_next!69037))
