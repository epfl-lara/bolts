; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!371584 () Bool)

(assert start!371584)

(declare-fun b!3951892 () Bool)

(declare-fun b_free!108633 () Bool)

(declare-fun b_next!109337 () Bool)

(assert (=> b!3951892 (= b_free!108633 (not b_next!109337))))

(declare-fun tp!1203895 () Bool)

(declare-fun b_and!302875 () Bool)

(assert (=> b!3951892 (= tp!1203895 b_and!302875)))

(declare-fun b_free!108635 () Bool)

(declare-fun b_next!109339 () Bool)

(assert (=> b!3951892 (= b_free!108635 (not b_next!109339))))

(declare-fun tp!1203898 () Bool)

(declare-fun b_and!302877 () Bool)

(assert (=> b!3951892 (= tp!1203898 b_and!302877)))

(declare-fun b!3951893 () Bool)

(declare-fun b_free!108637 () Bool)

(declare-fun b_next!109341 () Bool)

(assert (=> b!3951893 (= b_free!108637 (not b_next!109341))))

(declare-fun tp!1203892 () Bool)

(declare-fun b_and!302879 () Bool)

(assert (=> b!3951893 (= tp!1203892 b_and!302879)))

(declare-fun b_free!108639 () Bool)

(declare-fun b_next!109343 () Bool)

(assert (=> b!3951893 (= b_free!108639 (not b_next!109343))))

(declare-fun tp!1203896 () Bool)

(declare-fun b_and!302881 () Bool)

(assert (=> b!3951893 (= tp!1203896 b_and!302881)))

(declare-fun b!3951912 () Bool)

(declare-fun b_free!108641 () Bool)

(declare-fun b_next!109345 () Bool)

(assert (=> b!3951912 (= b_free!108641 (not b_next!109345))))

(declare-fun tp!1203904 () Bool)

(declare-fun b_and!302883 () Bool)

(assert (=> b!3951912 (= tp!1203904 b_and!302883)))

(declare-fun b_free!108643 () Bool)

(declare-fun b_next!109347 () Bool)

(assert (=> b!3951912 (= b_free!108643 (not b_next!109347))))

(declare-fun tp!1203899 () Bool)

(declare-fun b_and!302885 () Bool)

(assert (=> b!3951912 (= tp!1203899 b_and!302885)))

(declare-fun b!3951890 () Bool)

(declare-fun b_free!108645 () Bool)

(declare-fun b_next!109349 () Bool)

(assert (=> b!3951890 (= b_free!108645 (not b_next!109349))))

(declare-fun tp!1203900 () Bool)

(declare-fun b_and!302887 () Bool)

(assert (=> b!3951890 (= tp!1203900 b_and!302887)))

(declare-fun b_free!108647 () Bool)

(declare-fun b_next!109351 () Bool)

(assert (=> b!3951890 (= b_free!108647 (not b_next!109351))))

(declare-fun tp!1203891 () Bool)

(declare-fun b_and!302889 () Bool)

(assert (=> b!3951890 (= tp!1203891 b_and!302889)))

(declare-fun b!3951878 () Bool)

(declare-fun res!1599016 () Bool)

(declare-fun e!2446082 () Bool)

(assert (=> b!3951878 (=> (not res!1599016) (not e!2446082))))

(declare-datatypes ((C!23152 0))(
  ( (C!23153 (val!13670 Int)) )
))
(declare-datatypes ((List!42147 0))(
  ( (Nil!42023) (Cons!42023 (h!47443 C!23152) (t!328788 List!42147)) )
))
(declare-datatypes ((IArray!25583 0))(
  ( (IArray!25584 (innerList!12849 List!42147)) )
))
(declare-datatypes ((Conc!12789 0))(
  ( (Node!12789 (left!31956 Conc!12789) (right!32286 Conc!12789) (csize!25808 Int) (cheight!13000 Int)) (Leaf!19785 (xs!16095 IArray!25583) (csize!25809 Int)) (Empty!12789) )
))
(declare-datatypes ((BalanceConc!25172 0))(
  ( (BalanceConc!25173 (c!686150 Conc!12789)) )
))
(declare-datatypes ((List!42148 0))(
  ( (Nil!42024) (Cons!42024 (h!47444 (_ BitVec 16)) (t!328789 List!42148)) )
))
(declare-datatypes ((TokenValue!6808 0))(
  ( (FloatLiteralValue!13616 (text!48101 List!42148)) (TokenValueExt!6807 (__x!25833 Int)) (Broken!34040 (value!208081 List!42148)) (Object!6931) (End!6808) (Def!6808) (Underscore!6808) (Match!6808) (Else!6808) (Error!6808) (Case!6808) (If!6808) (Extends!6808) (Abstract!6808) (Class!6808) (Val!6808) (DelimiterValue!13616 (del!6868 List!42148)) (KeywordValue!6814 (value!208082 List!42148)) (CommentValue!13616 (value!208083 List!42148)) (WhitespaceValue!13616 (value!208084 List!42148)) (IndentationValue!6808 (value!208085 List!42148)) (String!47757) (Int32!6808) (Broken!34041 (value!208086 List!42148)) (Boolean!6809) (Unit!60535) (OperatorValue!6811 (op!6868 List!42148)) (IdentifierValue!13616 (value!208087 List!42148)) (IdentifierValue!13617 (value!208088 List!42148)) (WhitespaceValue!13617 (value!208089 List!42148)) (True!13616) (False!13616) (Broken!34042 (value!208090 List!42148)) (Broken!34043 (value!208091 List!42148)) (True!13617) (RightBrace!6808) (RightBracket!6808) (Colon!6808) (Null!6808) (Comma!6808) (LeftBracket!6808) (False!13617) (LeftBrace!6808) (ImaginaryLiteralValue!6808 (text!48102 List!42148)) (StringLiteralValue!20424 (value!208092 List!42148)) (EOFValue!6808 (value!208093 List!42148)) (IdentValue!6808 (value!208094 List!42148)) (DelimiterValue!13617 (value!208095 List!42148)) (DedentValue!6808 (value!208096 List!42148)) (NewLineValue!6808 (value!208097 List!42148)) (IntegerValue!20424 (value!208098 (_ BitVec 32)) (text!48103 List!42148)) (IntegerValue!20425 (value!208099 Int) (text!48104 List!42148)) (Times!6808) (Or!6808) (Equal!6808) (Minus!6808) (Broken!34044 (value!208100 List!42148)) (And!6808) (Div!6808) (LessEqual!6808) (Mod!6808) (Concat!18291) (Not!6808) (Plus!6808) (SpaceValue!6808 (value!208101 List!42148)) (IntegerValue!20426 (value!208102 Int) (text!48105 List!42148)) (StringLiteralValue!20425 (text!48106 List!42148)) (FloatLiteralValue!13617 (text!48107 List!42148)) (BytesLiteralValue!6808 (value!208103 List!42148)) (CommentValue!13617 (value!208104 List!42148)) (StringLiteralValue!20426 (value!208105 List!42148)) (ErrorTokenValue!6808 (msg!6869 List!42148)) )
))
(declare-datatypes ((Regex!11483 0))(
  ( (ElementMatch!11483 (c!686151 C!23152)) (Concat!18292 (regOne!23478 Regex!11483) (regTwo!23478 Regex!11483)) (EmptyExpr!11483) (Star!11483 (reg!11812 Regex!11483)) (EmptyLang!11483) (Union!11483 (regOne!23479 Regex!11483) (regTwo!23479 Regex!11483)) )
))
(declare-datatypes ((String!47758 0))(
  ( (String!47759 (value!208106 String)) )
))
(declare-datatypes ((TokenValueInjection!13044 0))(
  ( (TokenValueInjection!13045 (toValue!9054 Int) (toChars!8913 Int)) )
))
(declare-datatypes ((Rule!12956 0))(
  ( (Rule!12957 (regex!6578 Regex!11483) (tag!7438 String!47758) (isSeparator!6578 Bool) (transformation!6578 TokenValueInjection!13044)) )
))
(declare-datatypes ((List!42149 0))(
  ( (Nil!42025) (Cons!42025 (h!47445 Rule!12956) (t!328790 List!42149)) )
))
(declare-fun rules!2768 () List!42149)

(declare-fun isEmpty!25102 (List!42149) Bool)

(assert (=> b!3951878 (= res!1599016 (not (isEmpty!25102 rules!2768)))))

(declare-fun e!2446109 () Bool)

(declare-fun e!2446094 () Bool)

(declare-fun b!3951879 () Bool)

(declare-datatypes ((Token!12294 0))(
  ( (Token!12295 (value!208107 TokenValue!6808) (rule!9548 Rule!12956) (size!31494 Int) (originalCharacters!7178 List!42147)) )
))
(declare-datatypes ((List!42150 0))(
  ( (Nil!42026) (Cons!42026 (h!47446 Token!12294) (t!328791 List!42150)) )
))
(declare-fun suffixTokens!72 () List!42150)

(declare-fun tp!1203910 () Bool)

(declare-fun inv!21 (TokenValue!6808) Bool)

(assert (=> b!3951879 (= e!2446094 (and (inv!21 (value!208107 (h!47446 suffixTokens!72))) e!2446109 tp!1203910))))

(declare-fun b!3951880 () Bool)

(assert (=> b!3951880 true))

(declare-fun e!2446099 () Bool)

(assert (=> b!3951880 e!2446099))

(declare-datatypes ((tuple2!41310 0))(
  ( (tuple2!41311 (_1!23789 Token!12294) (_2!23789 List!42147)) )
))
(declare-datatypes ((Option!8998 0))(
  ( (None!8997) (Some!8997 (v!39337 tuple2!41310)) )
))
(declare-fun e!2446095 () Option!8998)

(declare-fun err!4441 () Option!8998)

(assert (=> b!3951880 (= e!2446095 err!4441)))

(declare-fun b!3951881 () Bool)

(declare-fun res!1599015 () Bool)

(declare-fun e!2446083 () Bool)

(assert (=> b!3951881 (=> res!1599015 e!2446083)))

(declare-fun suffix!1176 () List!42147)

(declare-fun isPrefix!3667 (List!42147 List!42147) Bool)

(assert (=> b!3951881 (= res!1599015 (not (isPrefix!3667 Nil!42023 suffix!1176)))))

(declare-fun b!3951882 () Bool)

(declare-fun e!2446092 () Bool)

(declare-fun e!2446097 () Bool)

(assert (=> b!3951882 (= e!2446092 e!2446097)))

(declare-fun res!1599013 () Bool)

(assert (=> b!3951882 (=> res!1599013 e!2446097)))

(declare-fun lt!1381487 () Option!8998)

(assert (=> b!3951882 (= res!1599013 (not (= lt!1381487 (Some!8997 (tuple2!41311 (_1!23789 (v!39337 lt!1381487)) (_2!23789 (v!39337 lt!1381487)))))))))

(declare-fun e!2446104 () Bool)

(assert (=> b!3951882 e!2446104))

(declare-fun res!1599019 () Bool)

(assert (=> b!3951882 (=> (not res!1599019) (not e!2446104))))

(declare-fun lt!1381485 () List!42147)

(assert (=> b!3951882 (= res!1599019 (isPrefix!3667 lt!1381485 lt!1381485))))

(declare-datatypes ((Unit!60536 0))(
  ( (Unit!60537) )
))
(declare-fun lt!1381500 () Unit!60536)

(declare-fun lemmaIsPrefixRefl!2318 (List!42147 List!42147) Unit!60536)

(assert (=> b!3951882 (= lt!1381500 (lemmaIsPrefixRefl!2318 lt!1381485 lt!1381485))))

(declare-datatypes ((tuple2!41312 0))(
  ( (tuple2!41313 (_1!23790 List!42150) (_2!23790 List!42147)) )
))
(declare-fun lt!1381489 () tuple2!41312)

(declare-fun lt!1381491 () tuple2!41312)

(assert (=> b!3951882 (= lt!1381489 (tuple2!41313 (Cons!42026 (_1!23789 (v!39337 lt!1381487)) (_1!23790 lt!1381491)) (_2!23790 lt!1381491)))))

(declare-fun b!3951883 () Bool)

(declare-fun tp!1203908 () Bool)

(declare-fun e!2446105 () Bool)

(declare-fun inv!56250 (String!47758) Bool)

(declare-fun inv!56253 (TokenValueInjection!13044) Bool)

(assert (=> b!3951883 (= e!2446109 (and tp!1203908 (inv!56250 (tag!7438 (rule!9548 (h!47446 suffixTokens!72)))) (inv!56253 (transformation!6578 (rule!9548 (h!47446 suffixTokens!72)))) e!2446105))))

(declare-fun e!2446084 () Bool)

(declare-fun tp!1203903 () Bool)

(declare-fun b!3951884 () Bool)

(declare-fun e!2446077 () Bool)

(assert (=> b!3951884 (= e!2446084 (and tp!1203903 (inv!56250 (tag!7438 (h!47445 rules!2768))) (inv!56253 (transformation!6578 (h!47445 rules!2768))) e!2446077))))

(declare-fun b!3951886 () Bool)

(declare-fun e!2446089 () Bool)

(assert (=> b!3951886 (= e!2446089 e!2446092)))

(declare-fun res!1599017 () Bool)

(assert (=> b!3951886 (=> res!1599017 e!2446092)))

(declare-fun lt!1381495 () List!42150)

(assert (=> b!3951886 (= res!1599017 (or (not (= lt!1381489 (tuple2!41313 lt!1381495 (_2!23790 lt!1381491)))) (not (= lt!1381491 (tuple2!41313 (_1!23790 lt!1381491) (_2!23790 lt!1381491)))) (not (= (_2!23789 (v!39337 lt!1381487)) suffix!1176))))))

(declare-fun lt!1381498 () List!42150)

(declare-fun ++!10913 (List!42150 List!42150) List!42150)

(assert (=> b!3951886 (= lt!1381495 (++!10913 lt!1381498 (_1!23790 lt!1381491)))))

(assert (=> b!3951886 (= lt!1381498 (Cons!42026 (_1!23789 (v!39337 lt!1381487)) Nil!42026))))

(declare-fun b!3951887 () Bool)

(declare-fun res!1599025 () Bool)

(declare-fun e!2446096 () Bool)

(assert (=> b!3951887 (=> (not res!1599025) (not e!2446096))))

(declare-fun suffixResult!91 () List!42147)

(declare-datatypes ((LexerInterface!6167 0))(
  ( (LexerInterfaceExt!6164 (__x!25834 Int)) (Lexer!6165) )
))
(declare-fun thiss!20629 () LexerInterface!6167)

(declare-fun lexList!1935 (LexerInterface!6167 List!42149 List!42147) tuple2!41312)

(assert (=> b!3951887 (= res!1599025 (= (lexList!1935 thiss!20629 rules!2768 suffix!1176) (tuple2!41313 suffixTokens!72 suffixResult!91)))))

(declare-fun b!3951888 () Bool)

(declare-fun e!2446091 () Bool)

(assert (=> b!3951888 (= e!2446091 (not e!2446089))))

(declare-fun res!1599012 () Bool)

(assert (=> b!3951888 (=> res!1599012 e!2446089)))

(declare-fun lt!1381502 () List!42147)

(assert (=> b!3951888 (= res!1599012 (not (= lt!1381502 lt!1381485)))))

(assert (=> b!3951888 (= lt!1381491 (lexList!1935 thiss!20629 rules!2768 (_2!23789 (v!39337 lt!1381487))))))

(declare-fun lt!1381490 () List!42147)

(declare-fun lt!1381486 () TokenValue!6808)

(declare-fun lt!1381499 () List!42147)

(declare-fun lt!1381483 () Int)

(assert (=> b!3951888 (and (= (size!31494 (_1!23789 (v!39337 lt!1381487))) lt!1381483) (= (originalCharacters!7178 (_1!23789 (v!39337 lt!1381487))) lt!1381499) (= (tuple2!41311 (_1!23789 (v!39337 lt!1381487)) (_2!23789 (v!39337 lt!1381487))) (tuple2!41311 (Token!12295 lt!1381486 (rule!9548 (_1!23789 (v!39337 lt!1381487))) lt!1381483 lt!1381499) lt!1381490)))))

(declare-fun size!31495 (List!42147) Int)

(assert (=> b!3951888 (= lt!1381483 (size!31495 lt!1381499))))

(declare-fun e!2446101 () Bool)

(assert (=> b!3951888 e!2446101))

(declare-fun res!1599023 () Bool)

(assert (=> b!3951888 (=> (not res!1599023) (not e!2446101))))

(assert (=> b!3951888 (= res!1599023 (= (value!208107 (_1!23789 (v!39337 lt!1381487))) lt!1381486))))

(declare-fun apply!9809 (TokenValueInjection!13044 BalanceConc!25172) TokenValue!6808)

(declare-fun seqFromList!4837 (List!42147) BalanceConc!25172)

(assert (=> b!3951888 (= lt!1381486 (apply!9809 (transformation!6578 (rule!9548 (_1!23789 (v!39337 lt!1381487)))) (seqFromList!4837 lt!1381499)))))

(assert (=> b!3951888 (= (_2!23789 (v!39337 lt!1381487)) lt!1381490)))

(declare-fun lt!1381497 () Unit!60536)

(declare-fun lemmaSamePrefixThenSameSuffix!1876 (List!42147 List!42147 List!42147 List!42147 List!42147) Unit!60536)

(assert (=> b!3951888 (= lt!1381497 (lemmaSamePrefixThenSameSuffix!1876 lt!1381499 (_2!23789 (v!39337 lt!1381487)) lt!1381499 lt!1381490 lt!1381485))))

(declare-fun getSuffix!2118 (List!42147 List!42147) List!42147)

(assert (=> b!3951888 (= lt!1381490 (getSuffix!2118 lt!1381485 lt!1381499))))

(assert (=> b!3951888 (isPrefix!3667 lt!1381499 lt!1381502)))

(declare-fun ++!10914 (List!42147 List!42147) List!42147)

(assert (=> b!3951888 (= lt!1381502 (++!10914 lt!1381499 (_2!23789 (v!39337 lt!1381487))))))

(declare-fun lt!1381494 () Unit!60536)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2526 (List!42147 List!42147) Unit!60536)

(assert (=> b!3951888 (= lt!1381494 (lemmaConcatTwoListThenFirstIsPrefix!2526 lt!1381499 (_2!23789 (v!39337 lt!1381487))))))

(declare-fun list!15608 (BalanceConc!25172) List!42147)

(declare-fun charsOf!4396 (Token!12294) BalanceConc!25172)

(assert (=> b!3951888 (= lt!1381499 (list!15608 (charsOf!4396 (_1!23789 (v!39337 lt!1381487)))))))

(declare-fun ruleValid!2520 (LexerInterface!6167 Rule!12956) Bool)

(assert (=> b!3951888 (ruleValid!2520 thiss!20629 (rule!9548 (_1!23789 (v!39337 lt!1381487))))))

(declare-fun lt!1381484 () Unit!60536)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1596 (LexerInterface!6167 Rule!12956 List!42149) Unit!60536)

(assert (=> b!3951888 (= lt!1381484 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1596 thiss!20629 (rule!9548 (_1!23789 (v!39337 lt!1381487))) rules!2768))))

(declare-fun lt!1381493 () Unit!60536)

(declare-fun lemmaCharactersSize!1231 (Token!12294) Unit!60536)

(assert (=> b!3951888 (= lt!1381493 (lemmaCharactersSize!1231 (_1!23789 (v!39337 lt!1381487))))))

(declare-fun b!3951889 () Bool)

(declare-fun e!2446106 () Bool)

(declare-fun tp_is_empty!19937 () Bool)

(declare-fun tp!1203902 () Bool)

(assert (=> b!3951889 (= e!2446106 (and tp_is_empty!19937 tp!1203902))))

(assert (=> b!3951890 (= e!2446077 (and tp!1203900 tp!1203891))))

(declare-fun b!3951891 () Bool)

(assert (=> b!3951891 (= e!2446101 (= (size!31494 (_1!23789 (v!39337 lt!1381487))) (size!31495 (originalCharacters!7178 (_1!23789 (v!39337 lt!1381487))))))))

(assert (=> b!3951892 (= e!2446105 (and tp!1203895 tp!1203898))))

(declare-fun e!2446088 () Bool)

(assert (=> b!3951893 (= e!2446088 (and tp!1203892 tp!1203896))))

(declare-fun b!3951894 () Bool)

(declare-fun e!2446085 () Bool)

(declare-fun tp!1203905 () Bool)

(declare-fun e!2446111 () Bool)

(assert (=> b!3951894 (= e!2446085 (and tp!1203905 (inv!56250 (tag!7438 (rule!9548 (_1!23789 (v!39337 err!4441))))) (inv!56253 (transformation!6578 (rule!9548 (_1!23789 (v!39337 err!4441))))) e!2446111))))

(declare-fun b!3951895 () Bool)

(declare-fun e!2446098 () Bool)

(declare-fun tp!1203897 () Bool)

(assert (=> b!3951895 (= e!2446098 (and e!2446084 tp!1203897))))

(declare-fun b!3951896 () Bool)

(assert (=> b!3951896 (= e!2446082 e!2446096)))

(declare-fun res!1599020 () Bool)

(assert (=> b!3951896 (=> (not res!1599020) (not e!2446096))))

(declare-fun lt!1381496 () List!42150)

(assert (=> b!3951896 (= res!1599020 (= lt!1381489 (tuple2!41313 lt!1381496 suffixResult!91)))))

(assert (=> b!3951896 (= lt!1381489 (lexList!1935 thiss!20629 rules!2768 lt!1381485))))

(declare-fun prefixTokens!80 () List!42150)

(assert (=> b!3951896 (= lt!1381496 (++!10913 prefixTokens!80 suffixTokens!72))))

(declare-fun prefix!426 () List!42147)

(assert (=> b!3951896 (= lt!1381485 (++!10914 prefix!426 suffix!1176))))

(declare-fun e!2446102 () Bool)

(declare-fun tp!1203893 () Bool)

(declare-fun b!3951897 () Bool)

(assert (=> b!3951897 (= e!2446102 (and tp!1203893 (inv!56250 (tag!7438 (rule!9548 (h!47446 prefixTokens!80)))) (inv!56253 (transformation!6578 (rule!9548 (h!47446 prefixTokens!80)))) e!2446088))))

(declare-fun b!3951898 () Bool)

(declare-fun e!2446112 () Bool)

(declare-fun e!2446108 () Bool)

(declare-fun tp!1203912 () Bool)

(declare-fun inv!56254 (Token!12294) Bool)

(assert (=> b!3951898 (= e!2446108 (and (inv!56254 (h!47446 prefixTokens!80)) e!2446112 tp!1203912))))

(declare-fun b!3951899 () Bool)

(assert (=> b!3951899 (= e!2446083 true)))

(declare-fun lt!1381503 () Int)

(assert (=> b!3951899 (= lt!1381503 (size!31495 Nil!42023))))

(declare-fun lt!1381492 () Int)

(assert (=> b!3951899 (= lt!1381492 (size!31495 suffix!1176))))

(declare-fun b!3951900 () Bool)

(declare-fun e!2446093 () Option!8998)

(assert (=> b!3951900 (= e!2446104 (= lt!1381487 e!2446093))))

(declare-fun c!686149 () Bool)

(get-info :version)

(assert (=> b!3951900 (= c!686149 (and ((_ is Cons!42025) rules!2768) ((_ is Nil!42025) (t!328790 rules!2768))))))

(declare-fun b!3951901 () Bool)

(declare-fun res!1599022 () Bool)

(assert (=> b!3951901 (=> (not res!1599022) (not e!2446082))))

(declare-fun rulesInvariant!5510 (LexerInterface!6167 List!42149) Bool)

(assert (=> b!3951901 (= res!1599022 (rulesInvariant!5510 thiss!20629 rules!2768))))

(declare-fun tp!1203907 () Bool)

(declare-fun e!2446079 () Bool)

(declare-fun b!3951902 () Bool)

(assert (=> b!3951902 (= e!2446099 (and (inv!56254 (_1!23789 (v!39337 err!4441))) e!2446079 tp!1203907))))

(declare-fun res!1599021 () Bool)

(assert (=> start!371584 (=> (not res!1599021) (not e!2446082))))

(assert (=> start!371584 (= res!1599021 ((_ is Lexer!6165) thiss!20629))))

(assert (=> start!371584 e!2446082))

(declare-fun e!2446087 () Bool)

(assert (=> start!371584 e!2446087))

(assert (=> start!371584 true))

(assert (=> start!371584 e!2446106))

(assert (=> start!371584 e!2446098))

(assert (=> start!371584 e!2446108))

(declare-fun e!2446110 () Bool)

(assert (=> start!371584 e!2446110))

(declare-fun e!2446100 () Bool)

(assert (=> start!371584 e!2446100))

(declare-fun b!3951885 () Bool)

(declare-fun tp!1203909 () Bool)

(assert (=> b!3951885 (= e!2446110 (and (inv!56254 (h!47446 suffixTokens!72)) e!2446094 tp!1203909))))

(declare-fun b!3951903 () Bool)

(declare-fun call!285240 () Option!8998)

(assert (=> b!3951903 (= e!2446093 call!285240)))

(declare-fun b!3951904 () Bool)

(declare-fun res!1599024 () Bool)

(assert (=> b!3951904 (=> (not res!1599024) (not e!2446082))))

(declare-fun isEmpty!25103 (List!42150) Bool)

(assert (=> b!3951904 (= res!1599024 (not (isEmpty!25103 prefixTokens!80)))))

(declare-fun tp!1203894 () Bool)

(declare-fun b!3951905 () Bool)

(assert (=> b!3951905 (= e!2446079 (and (inv!21 (value!208107 (_1!23789 (v!39337 err!4441)))) e!2446085 tp!1203894))))

(declare-fun b!3951906 () Bool)

(declare-fun tp!1203906 () Bool)

(assert (=> b!3951906 (= e!2446087 (and tp_is_empty!19937 tp!1203906))))

(declare-fun tp!1203901 () Bool)

(declare-fun b!3951907 () Bool)

(assert (=> b!3951907 (= e!2446112 (and (inv!21 (value!208107 (h!47446 prefixTokens!80))) e!2446102 tp!1203901))))

(declare-fun b!3951908 () Bool)

(declare-fun tp!1203911 () Bool)

(assert (=> b!3951908 (= e!2446100 (and tp_is_empty!19937 tp!1203911))))

(declare-fun lt!1381501 () Option!8998)

(declare-fun b!3951909 () Bool)

(declare-fun maxPrefix!3471 (LexerInterface!6167 List!42149 List!42147) Option!8998)

(assert (=> b!3951909 (= lt!1381501 (maxPrefix!3471 thiss!20629 (t!328790 rules!2768) lt!1381485))))

(declare-fun lt!1381482 () Option!8998)

(assert (=> b!3951909 (= lt!1381482 call!285240)))

(assert (=> b!3951909 (= e!2446095 (ite (and ((_ is None!8997) lt!1381482) ((_ is None!8997) lt!1381501)) None!8997 (ite ((_ is None!8997) lt!1381501) lt!1381482 (ite ((_ is None!8997) lt!1381482) lt!1381501 (ite (>= (size!31494 (_1!23789 (v!39337 lt!1381482))) (size!31494 (_1!23789 (v!39337 lt!1381501)))) (Some!8997 (v!39337 lt!1381482)) lt!1381501)))))))

(declare-fun b!3951910 () Bool)

(assert (=> b!3951910 (= e!2446097 e!2446083)))

(declare-fun res!1599018 () Bool)

(assert (=> b!3951910 (=> res!1599018 e!2446083)))

(assert (=> b!3951910 (= res!1599018 (or (not (= lt!1381496 (_1!23790 lt!1381489))) (not (= lt!1381496 lt!1381495)) (not (= prefixTokens!80 lt!1381498)) (not (= prefix!426 lt!1381499))))))

(assert (=> b!3951910 (= lt!1381499 prefix!426)))

(declare-fun lt!1381488 () Unit!60536)

(declare-fun lemmaConcatSameAndSameSizesThenSameLists!588 (List!42147 List!42147 List!42147 List!42147) Unit!60536)

(assert (=> b!3951910 (= lt!1381488 (lemmaConcatSameAndSameSizesThenSameLists!588 lt!1381499 (_2!23789 (v!39337 lt!1381487)) prefix!426 suffix!1176))))

(declare-fun b!3951911 () Bool)

(declare-fun res!1599026 () Bool)

(assert (=> b!3951911 (=> (not res!1599026) (not e!2446082))))

(declare-fun isEmpty!25104 (List!42147) Bool)

(assert (=> b!3951911 (= res!1599026 (not (isEmpty!25104 prefix!426)))))

(declare-fun bm!285235 () Bool)

(declare-fun maxPrefixOneRule!2525 (LexerInterface!6167 Rule!12956 List!42147) Option!8998)

(assert (=> bm!285235 (= call!285240 (maxPrefixOneRule!2525 thiss!20629 (h!47445 rules!2768) lt!1381485))))

(assert (=> b!3951912 (= e!2446111 (and tp!1203904 tp!1203899))))

(declare-fun b!3951913 () Bool)

(assert (=> b!3951913 (= e!2446096 e!2446091)))

(declare-fun res!1599014 () Bool)

(assert (=> b!3951913 (=> (not res!1599014) (not e!2446091))))

(assert (=> b!3951913 (= res!1599014 ((_ is Some!8997) lt!1381487))))

(assert (=> b!3951913 (= lt!1381487 (maxPrefix!3471 thiss!20629 rules!2768 lt!1381485))))

(declare-fun b!3951914 () Bool)

(assert (=> b!3951914 (= e!2446093 e!2446095)))

(declare-fun c!686148 () Bool)

(assert (=> b!3951914 (= c!686148 ((_ is Cons!42025) rules!2768))))

(assert (= (and start!371584 res!1599021) b!3951878))

(assert (= (and b!3951878 res!1599016) b!3951901))

(assert (= (and b!3951901 res!1599022) b!3951904))

(assert (= (and b!3951904 res!1599024) b!3951911))

(assert (= (and b!3951911 res!1599026) b!3951896))

(assert (= (and b!3951896 res!1599020) b!3951887))

(assert (= (and b!3951887 res!1599025) b!3951913))

(assert (= (and b!3951913 res!1599014) b!3951888))

(assert (= (and b!3951888 res!1599023) b!3951891))

(assert (= (and b!3951888 (not res!1599012)) b!3951886))

(assert (= (and b!3951886 (not res!1599017)) b!3951882))

(assert (= (and b!3951882 res!1599019) b!3951900))

(assert (= (and b!3951900 c!686149) b!3951903))

(assert (= (and b!3951900 (not c!686149)) b!3951914))

(assert (= (and b!3951914 c!686148) b!3951909))

(assert (= (and b!3951914 (not c!686148)) b!3951880))

(assert (= b!3951894 b!3951912))

(assert (= b!3951905 b!3951894))

(assert (= b!3951902 b!3951905))

(assert (= (and b!3951880 ((_ is Some!8997) err!4441)) b!3951902))

(assert (= (or b!3951903 b!3951909) bm!285235))

(assert (= (and b!3951882 (not res!1599013)) b!3951910))

(assert (= (and b!3951910 (not res!1599018)) b!3951881))

(assert (= (and b!3951881 (not res!1599015)) b!3951899))

(assert (= (and start!371584 ((_ is Cons!42023) suffixResult!91)) b!3951906))

(assert (= (and start!371584 ((_ is Cons!42023) suffix!1176)) b!3951889))

(assert (= b!3951884 b!3951890))

(assert (= b!3951895 b!3951884))

(assert (= (and start!371584 ((_ is Cons!42025) rules!2768)) b!3951895))

(assert (= b!3951897 b!3951893))

(assert (= b!3951907 b!3951897))

(assert (= b!3951898 b!3951907))

(assert (= (and start!371584 ((_ is Cons!42026) prefixTokens!80)) b!3951898))

(assert (= b!3951883 b!3951892))

(assert (= b!3951879 b!3951883))

(assert (= b!3951885 b!3951879))

(assert (= (and start!371584 ((_ is Cons!42026) suffixTokens!72)) b!3951885))

(assert (= (and start!371584 ((_ is Cons!42023) prefix!426)) b!3951908))

(declare-fun m!4520791 () Bool)

(assert (=> b!3951891 m!4520791))

(declare-fun m!4520793 () Bool)

(assert (=> b!3951884 m!4520793))

(declare-fun m!4520795 () Bool)

(assert (=> b!3951884 m!4520795))

(declare-fun m!4520797 () Bool)

(assert (=> b!3951881 m!4520797))

(declare-fun m!4520799 () Bool)

(assert (=> b!3951894 m!4520799))

(declare-fun m!4520801 () Bool)

(assert (=> b!3951894 m!4520801))

(declare-fun m!4520803 () Bool)

(assert (=> b!3951886 m!4520803))

(declare-fun m!4520805 () Bool)

(assert (=> b!3951878 m!4520805))

(declare-fun m!4520807 () Bool)

(assert (=> b!3951910 m!4520807))

(declare-fun m!4520809 () Bool)

(assert (=> b!3951896 m!4520809))

(declare-fun m!4520811 () Bool)

(assert (=> b!3951896 m!4520811))

(declare-fun m!4520813 () Bool)

(assert (=> b!3951896 m!4520813))

(declare-fun m!4520815 () Bool)

(assert (=> b!3951879 m!4520815))

(declare-fun m!4520817 () Bool)

(assert (=> b!3951898 m!4520817))

(declare-fun m!4520819 () Bool)

(assert (=> b!3951907 m!4520819))

(declare-fun m!4520821 () Bool)

(assert (=> bm!285235 m!4520821))

(declare-fun m!4520823 () Bool)

(assert (=> b!3951887 m!4520823))

(declare-fun m!4520825 () Bool)

(assert (=> b!3951909 m!4520825))

(declare-fun m!4520827 () Bool)

(assert (=> b!3951885 m!4520827))

(declare-fun m!4520829 () Bool)

(assert (=> b!3951913 m!4520829))

(declare-fun m!4520831 () Bool)

(assert (=> b!3951911 m!4520831))

(declare-fun m!4520833 () Bool)

(assert (=> b!3951905 m!4520833))

(declare-fun m!4520835 () Bool)

(assert (=> b!3951882 m!4520835))

(declare-fun m!4520837 () Bool)

(assert (=> b!3951882 m!4520837))

(declare-fun m!4520839 () Bool)

(assert (=> b!3951897 m!4520839))

(declare-fun m!4520841 () Bool)

(assert (=> b!3951897 m!4520841))

(declare-fun m!4520843 () Bool)

(assert (=> b!3951904 m!4520843))

(declare-fun m!4520845 () Bool)

(assert (=> b!3951901 m!4520845))

(declare-fun m!4520847 () Bool)

(assert (=> b!3951902 m!4520847))

(declare-fun m!4520849 () Bool)

(assert (=> b!3951883 m!4520849))

(declare-fun m!4520851 () Bool)

(assert (=> b!3951883 m!4520851))

(declare-fun m!4520853 () Bool)

(assert (=> b!3951899 m!4520853))

(declare-fun m!4520855 () Bool)

(assert (=> b!3951899 m!4520855))

(declare-fun m!4520857 () Bool)

(assert (=> b!3951888 m!4520857))

(declare-fun m!4520859 () Bool)

(assert (=> b!3951888 m!4520859))

(declare-fun m!4520861 () Bool)

(assert (=> b!3951888 m!4520861))

(declare-fun m!4520863 () Bool)

(assert (=> b!3951888 m!4520863))

(declare-fun m!4520865 () Bool)

(assert (=> b!3951888 m!4520865))

(declare-fun m!4520867 () Bool)

(assert (=> b!3951888 m!4520867))

(declare-fun m!4520869 () Bool)

(assert (=> b!3951888 m!4520869))

(declare-fun m!4520871 () Bool)

(assert (=> b!3951888 m!4520871))

(declare-fun m!4520873 () Bool)

(assert (=> b!3951888 m!4520873))

(declare-fun m!4520875 () Bool)

(assert (=> b!3951888 m!4520875))

(declare-fun m!4520877 () Bool)

(assert (=> b!3951888 m!4520877))

(assert (=> b!3951888 m!4520867))

(declare-fun m!4520879 () Bool)

(assert (=> b!3951888 m!4520879))

(declare-fun m!4520881 () Bool)

(assert (=> b!3951888 m!4520881))

(declare-fun m!4520883 () Bool)

(assert (=> b!3951888 m!4520883))

(assert (=> b!3951888 m!4520871))

(check-sat (not b_next!109337) (not b!3951899) (not b!3951888) (not b!3951906) b_and!302887 (not b!3951909) (not b_next!109343) (not b!3951901) b_and!302877 b_and!302879 b_and!302875 (not b!3951884) (not b!3951891) b_and!302881 (not b!3951896) b_and!302883 (not b!3951889) (not b!3951881) (not b!3951904) (not b_next!109339) (not b!3951902) (not b_next!109347) (not b!3951911) (not b!3951878) (not b!3951885) (not b!3951907) (not b!3951894) (not b!3951883) (not b!3951895) b_and!302889 (not b!3951882) (not b!3951886) (not b_next!109351) (not b_next!109341) (not b!3951910) (not b!3951879) (not b!3951908) (not b!3951898) (not b_next!109345) (not b!3951913) (not b!3951897) (not b_next!109349) (not b!3951905) tp_is_empty!19937 (not bm!285235) b_and!302885 (not b!3951887))
(check-sat (not b_next!109337) (not b_next!109339) (not b_next!109347) b_and!302887 b_and!302889 (not b_next!109343) b_and!302877 b_and!302879 (not b_next!109345) (not b_next!109349) b_and!302875 b_and!302881 b_and!302883 b_and!302885 (not b_next!109351) (not b_next!109341))
