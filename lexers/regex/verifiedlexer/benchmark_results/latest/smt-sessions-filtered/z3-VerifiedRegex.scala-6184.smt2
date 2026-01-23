; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!299250 () Bool)

(assert start!299250)

(declare-fun b!3189954 () Bool)

(declare-fun b_free!84313 () Bool)

(declare-fun b_next!85017 () Bool)

(assert (=> b!3189954 (= b_free!84313 (not b_next!85017))))

(declare-fun tp!1008391 () Bool)

(declare-fun b_and!211323 () Bool)

(assert (=> b!3189954 (= tp!1008391 b_and!211323)))

(declare-fun b_free!84315 () Bool)

(declare-fun b_next!85019 () Bool)

(assert (=> b!3189954 (= b_free!84315 (not b_next!85019))))

(declare-fun tp!1008386 () Bool)

(declare-fun b_and!211325 () Bool)

(assert (=> b!3189954 (= tp!1008386 b_and!211325)))

(declare-fun b!3189965 () Bool)

(declare-fun b_free!84317 () Bool)

(declare-fun b_next!85021 () Bool)

(assert (=> b!3189965 (= b_free!84317 (not b_next!85021))))

(declare-fun tp!1008392 () Bool)

(declare-fun b_and!211327 () Bool)

(assert (=> b!3189965 (= tp!1008392 b_and!211327)))

(declare-fun b_free!84319 () Bool)

(declare-fun b_next!85023 () Bool)

(assert (=> b!3189965 (= b_free!84319 (not b_next!85023))))

(declare-fun tp!1008384 () Bool)

(declare-fun b_and!211329 () Bool)

(assert (=> b!3189965 (= tp!1008384 b_and!211329)))

(declare-fun b!3189963 () Bool)

(declare-fun b_free!84321 () Bool)

(declare-fun b_next!85025 () Bool)

(assert (=> b!3189963 (= b_free!84321 (not b_next!85025))))

(declare-fun tp!1008383 () Bool)

(declare-fun b_and!211331 () Bool)

(assert (=> b!3189963 (= tp!1008383 b_and!211331)))

(declare-fun b_free!84323 () Bool)

(declare-fun b_next!85027 () Bool)

(assert (=> b!3189963 (= b_free!84323 (not b_next!85027))))

(declare-fun tp!1008387 () Bool)

(declare-fun b_and!211333 () Bool)

(assert (=> b!3189963 (= tp!1008387 b_and!211333)))

(declare-fun b!3189937 () Bool)

(declare-fun e!1987966 () Bool)

(declare-fun e!1987958 () Bool)

(assert (=> b!3189937 (= e!1987966 e!1987958)))

(declare-fun res!1297270 () Bool)

(assert (=> b!3189937 (=> res!1297270 e!1987958)))

(declare-fun lt!1073956 () Bool)

(assert (=> b!3189937 (= res!1297270 lt!1073956)))

(declare-datatypes ((Unit!50289 0))(
  ( (Unit!50290) )
))
(declare-fun lt!1073955 () Unit!50289)

(declare-fun e!1987978 () Unit!50289)

(assert (=> b!3189937 (= lt!1073955 e!1987978)))

(declare-fun c!535731 () Bool)

(assert (=> b!3189937 (= c!535731 lt!1073956)))

(declare-datatypes ((C!20000 0))(
  ( (C!20001 (val!12048 Int)) )
))
(declare-datatypes ((Regex!9907 0))(
  ( (ElementMatch!9907 (c!535732 C!20000)) (Concat!15285 (regOne!20326 Regex!9907) (regTwo!20326 Regex!9907)) (EmptyExpr!9907) (Star!9907 (reg!10236 Regex!9907)) (EmptyLang!9907) (Union!9907 (regOne!20327 Regex!9907) (regTwo!20327 Regex!9907)) )
))
(declare-datatypes ((List!35984 0))(
  ( (Nil!35860) (Cons!35860 (h!41280 (_ BitVec 16)) (t!236123 List!35984)) )
))
(declare-datatypes ((TokenValue!5378 0))(
  ( (FloatLiteralValue!10756 (text!38091 List!35984)) (TokenValueExt!5377 (__x!22973 Int)) (Broken!26890 (value!167152 List!35984)) (Object!5501) (End!5378) (Def!5378) (Underscore!5378) (Match!5378) (Else!5378) (Error!5378) (Case!5378) (If!5378) (Extends!5378) (Abstract!5378) (Class!5378) (Val!5378) (DelimiterValue!10756 (del!5438 List!35984)) (KeywordValue!5384 (value!167153 List!35984)) (CommentValue!10756 (value!167154 List!35984)) (WhitespaceValue!10756 (value!167155 List!35984)) (IndentationValue!5378 (value!167156 List!35984)) (String!40223) (Int32!5378) (Broken!26891 (value!167157 List!35984)) (Boolean!5379) (Unit!50291) (OperatorValue!5381 (op!5438 List!35984)) (IdentifierValue!10756 (value!167158 List!35984)) (IdentifierValue!10757 (value!167159 List!35984)) (WhitespaceValue!10757 (value!167160 List!35984)) (True!10756) (False!10756) (Broken!26892 (value!167161 List!35984)) (Broken!26893 (value!167162 List!35984)) (True!10757) (RightBrace!5378) (RightBracket!5378) (Colon!5378) (Null!5378) (Comma!5378) (LeftBracket!5378) (False!10757) (LeftBrace!5378) (ImaginaryLiteralValue!5378 (text!38092 List!35984)) (StringLiteralValue!16134 (value!167163 List!35984)) (EOFValue!5378 (value!167164 List!35984)) (IdentValue!5378 (value!167165 List!35984)) (DelimiterValue!10757 (value!167166 List!35984)) (DedentValue!5378 (value!167167 List!35984)) (NewLineValue!5378 (value!167168 List!35984)) (IntegerValue!16134 (value!167169 (_ BitVec 32)) (text!38093 List!35984)) (IntegerValue!16135 (value!167170 Int) (text!38094 List!35984)) (Times!5378) (Or!5378) (Equal!5378) (Minus!5378) (Broken!26894 (value!167171 List!35984)) (And!5378) (Div!5378) (LessEqual!5378) (Mod!5378) (Concat!15286) (Not!5378) (Plus!5378) (SpaceValue!5378 (value!167172 List!35984)) (IntegerValue!16136 (value!167173 Int) (text!38095 List!35984)) (StringLiteralValue!16135 (text!38096 List!35984)) (FloatLiteralValue!10757 (text!38097 List!35984)) (BytesLiteralValue!5378 (value!167174 List!35984)) (CommentValue!10757 (value!167175 List!35984)) (StringLiteralValue!16136 (value!167176 List!35984)) (ErrorTokenValue!5378 (msg!5439 List!35984)) )
))
(declare-datatypes ((List!35985 0))(
  ( (Nil!35861) (Cons!35861 (h!41281 C!20000) (t!236124 List!35985)) )
))
(declare-datatypes ((IArray!21347 0))(
  ( (IArray!21348 (innerList!10731 List!35985)) )
))
(declare-datatypes ((Conc!10671 0))(
  ( (Node!10671 (left!27887 Conc!10671) (right!28217 Conc!10671) (csize!21572 Int) (cheight!10882 Int)) (Leaf!16856 (xs!13789 IArray!21347) (csize!21573 Int)) (Empty!10671) )
))
(declare-datatypes ((BalanceConc!20956 0))(
  ( (BalanceConc!20957 (c!535733 Conc!10671)) )
))
(declare-datatypes ((String!40224 0))(
  ( (String!40225 (value!167177 String)) )
))
(declare-datatypes ((TokenValueInjection!10184 0))(
  ( (TokenValueInjection!10185 (toValue!7212 Int) (toChars!7071 Int)) )
))
(declare-datatypes ((Rule!10096 0))(
  ( (Rule!10097 (regex!5148 Regex!9907) (tag!5666 String!40224) (isSeparator!5148 Bool) (transformation!5148 TokenValueInjection!10184)) )
))
(declare-datatypes ((Token!9662 0))(
  ( (Token!9663 (value!167178 TokenValue!5378) (rule!7580 Rule!10096) (size!27052 Int) (originalCharacters!5862 List!35985)) )
))
(declare-fun separatorToken!241 () Token!9662)

(declare-fun lt!1073967 () C!20000)

(declare-fun contains!6373 (List!35985 C!20000) Bool)

(declare-fun usedCharacters!492 (Regex!9907) List!35985)

(assert (=> b!3189937 (= lt!1073956 (not (contains!6373 (usedCharacters!492 (regex!5148 (rule!7580 separatorToken!241))) lt!1073967)))))

(declare-fun lt!1073975 () List!35985)

(declare-fun head!6983 (List!35985) C!20000)

(assert (=> b!3189937 (= lt!1073967 (head!6983 lt!1073975))))

(declare-datatypes ((List!35986 0))(
  ( (Nil!35862) (Cons!35862 (h!41282 Token!9662) (t!236125 List!35986)) )
))
(declare-fun tokens!494 () List!35986)

(declare-datatypes ((LexerInterface!4737 0))(
  ( (LexerInterfaceExt!4734 (__x!22974 Int)) (Lexer!4735) )
))
(declare-fun thiss!18206 () LexerInterface!4737)

(declare-fun lt!1073958 () BalanceConc!20956)

(declare-fun lt!1073974 () List!35985)

(declare-datatypes ((tuple2!35244 0))(
  ( (tuple2!35245 (_1!20756 Token!9662) (_2!20756 List!35985)) )
))
(declare-datatypes ((Option!7029 0))(
  ( (None!7028) (Some!7028 (v!35528 tuple2!35244)) )
))
(declare-fun maxPrefixOneRule!1542 (LexerInterface!4737 Rule!10096 List!35985) Option!7029)

(declare-fun apply!8086 (TokenValueInjection!10184 BalanceConc!20956) TokenValue!5378)

(declare-fun size!27053 (List!35985) Int)

(assert (=> b!3189937 (= (maxPrefixOneRule!1542 thiss!18206 (rule!7580 (h!41282 tokens!494)) lt!1073974) (Some!7028 (tuple2!35245 (Token!9663 (apply!8086 (transformation!5148 (rule!7580 (h!41282 tokens!494))) lt!1073958) (rule!7580 (h!41282 tokens!494)) (size!27053 lt!1073974) lt!1073974) Nil!35861)))))

(declare-fun lt!1073980 () Unit!50289)

(declare-datatypes ((List!35987 0))(
  ( (Nil!35863) (Cons!35863 (h!41283 Rule!10096) (t!236126 List!35987)) )
))
(declare-fun rules!2135 () List!35987)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!655 (LexerInterface!4737 List!35987 List!35985 List!35985 List!35985 Rule!10096) Unit!50289)

(assert (=> b!3189937 (= lt!1073980 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!655 thiss!18206 rules!2135 lt!1073974 lt!1073974 Nil!35861 (rule!7580 (h!41282 tokens!494))))))

(declare-fun e!1987957 () Bool)

(assert (=> b!3189937 e!1987957))

(declare-fun res!1297265 () Bool)

(assert (=> b!3189937 (=> (not res!1297265) (not e!1987957))))

(declare-datatypes ((Option!7030 0))(
  ( (None!7029) (Some!7029 (v!35529 Rule!10096)) )
))
(declare-fun lt!1073978 () Option!7030)

(declare-fun isDefined!5500 (Option!7030) Bool)

(assert (=> b!3189937 (= res!1297265 (isDefined!5500 lt!1073978))))

(declare-fun getRuleFromTag!877 (LexerInterface!4737 List!35987 String!40224) Option!7030)

(assert (=> b!3189937 (= lt!1073978 (getRuleFromTag!877 thiss!18206 rules!2135 (tag!5666 (rule!7580 separatorToken!241))))))

(declare-fun lt!1073979 () Unit!50289)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!877 (LexerInterface!4737 List!35987 List!35985 Token!9662) Unit!50289)

(assert (=> b!3189937 (= lt!1073979 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!877 thiss!18206 rules!2135 lt!1073975 separatorToken!241))))

(declare-fun e!1987964 () Bool)

(assert (=> b!3189937 e!1987964))

(declare-fun res!1297252 () Bool)

(assert (=> b!3189937 (=> (not res!1297252) (not e!1987964))))

(declare-fun lt!1073966 () Option!7030)

(assert (=> b!3189937 (= res!1297252 (isDefined!5500 lt!1073966))))

(assert (=> b!3189937 (= lt!1073966 (getRuleFromTag!877 thiss!18206 rules!2135 (tag!5666 (rule!7580 (h!41282 tokens!494)))))))

(declare-fun lt!1073984 () Unit!50289)

(assert (=> b!3189937 (= lt!1073984 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!877 thiss!18206 rules!2135 lt!1073974 (h!41282 tokens!494)))))

(declare-fun lt!1073976 () Unit!50289)

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!798 (LexerInterface!4737 List!35987 List!35986 Token!9662) Unit!50289)

(assert (=> b!3189937 (= lt!1073976 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!798 thiss!18206 rules!2135 tokens!494 (h!41282 tokens!494)))))

(declare-fun isEmpty!19995 (List!35985) Bool)

(declare-fun getSuffix!1364 (List!35985 List!35985) List!35985)

(assert (=> b!3189937 (isEmpty!19995 (getSuffix!1364 lt!1073974 lt!1073974))))

(declare-fun lt!1073959 () Unit!50289)

(declare-fun lemmaGetSuffixOnListWithItSelfIsEmpty!42 (List!35985) Unit!50289)

(assert (=> b!3189937 (= lt!1073959 (lemmaGetSuffixOnListWithItSelfIsEmpty!42 lt!1073974))))

(declare-fun b!3189938 () Bool)

(declare-fun e!1987962 () Bool)

(declare-fun lt!1073981 () Rule!10096)

(assert (=> b!3189938 (= e!1987962 (= (rule!7580 (h!41282 tokens!494)) lt!1073981))))

(declare-fun b!3189939 () Bool)

(declare-fun res!1297250 () Bool)

(declare-fun e!1987961 () Bool)

(assert (=> b!3189939 (=> (not res!1297250) (not e!1987961))))

(assert (=> b!3189939 (= res!1297250 (isSeparator!5148 (rule!7580 separatorToken!241)))))

(declare-fun b!3189940 () Bool)

(declare-fun e!1987971 () Bool)

(declare-fun e!1987974 () Bool)

(assert (=> b!3189940 (= e!1987971 e!1987974)))

(declare-fun res!1297255 () Bool)

(assert (=> b!3189940 (=> res!1297255 e!1987974)))

(declare-fun lt!1073961 () List!35985)

(declare-fun lt!1073977 () List!35985)

(assert (=> b!3189940 (= res!1297255 (or (not (= lt!1073961 lt!1073974)) (not (= lt!1073977 lt!1073974))))))

(declare-fun list!12737 (BalanceConc!20956) List!35985)

(declare-fun charsOf!3170 (Token!9662) BalanceConc!20956)

(assert (=> b!3189940 (= lt!1073974 (list!12737 (charsOf!3170 (h!41282 tokens!494))))))

(declare-fun b!3189941 () Bool)

(declare-fun e!1987983 () Bool)

(assert (=> b!3189941 (= e!1987983 true)))

(declare-fun lt!1073963 () BalanceConc!20956)

(declare-datatypes ((IArray!21349 0))(
  ( (IArray!21350 (innerList!10732 List!35986)) )
))
(declare-datatypes ((Conc!10672 0))(
  ( (Node!10672 (left!27888 Conc!10672) (right!28218 Conc!10672) (csize!21574 Int) (cheight!10883 Int)) (Leaf!16857 (xs!13790 IArray!21349) (csize!21575 Int)) (Empty!10672) )
))
(declare-datatypes ((BalanceConc!20958 0))(
  ( (BalanceConc!20959 (c!535734 Conc!10672)) )
))
(declare-fun printWithSeparatorToken!46 (LexerInterface!4737 BalanceConc!20958 Token!9662) BalanceConc!20956)

(assert (=> b!3189941 (= lt!1073963 (printWithSeparatorToken!46 thiss!18206 (BalanceConc!20959 Empty!10672) separatorToken!241))))

(declare-fun e!1987969 () Bool)

(declare-fun b!3189942 () Bool)

(declare-fun e!1987972 () Bool)

(declare-fun tp!1008382 () Bool)

(declare-fun inv!21 (TokenValue!5378) Bool)

(assert (=> b!3189942 (= e!1987972 (and (inv!21 (value!167178 (h!41282 tokens!494))) e!1987969 tp!1008382))))

(declare-fun b!3189943 () Bool)

(assert (=> b!3189943 (= e!1987964 e!1987962)))

(declare-fun res!1297259 () Bool)

(assert (=> b!3189943 (=> (not res!1297259) (not e!1987962))))

(declare-fun matchR!4565 (Regex!9907 List!35985) Bool)

(assert (=> b!3189943 (= res!1297259 (matchR!4565 (regex!5148 lt!1073981) lt!1073974))))

(declare-fun get!11419 (Option!7030) Rule!10096)

(assert (=> b!3189943 (= lt!1073981 (get!11419 lt!1073966))))

(declare-fun b!3189944 () Bool)

(declare-fun res!1297264 () Bool)

(declare-fun e!1987956 () Bool)

(assert (=> b!3189944 (=> (not res!1297264) (not e!1987956))))

(declare-fun rulesInvariant!4134 (LexerInterface!4737 List!35987) Bool)

(assert (=> b!3189944 (= res!1297264 (rulesInvariant!4134 thiss!18206 rules!2135))))

(declare-fun b!3189945 () Bool)

(declare-fun res!1297254 () Bool)

(assert (=> b!3189945 (=> (not res!1297254) (not e!1987961))))

(declare-fun lambda!116659 () Int)

(declare-fun forall!7280 (List!35986 Int) Bool)

(assert (=> b!3189945 (= res!1297254 (forall!7280 tokens!494 lambda!116659))))

(declare-fun b!3189946 () Bool)

(declare-fun res!1297260 () Bool)

(assert (=> b!3189946 (=> (not res!1297260) (not e!1987961))))

(declare-fun rulesProduceIndividualToken!2229 (LexerInterface!4737 List!35987 Token!9662) Bool)

(assert (=> b!3189946 (= res!1297260 (rulesProduceIndividualToken!2229 thiss!18206 rules!2135 separatorToken!241))))

(declare-fun b!3189947 () Bool)

(declare-fun res!1297253 () Bool)

(assert (=> b!3189947 (=> (not res!1297253) (not e!1987961))))

(get-info :version)

(assert (=> b!3189947 (= res!1297253 (and (not ((_ is Nil!35862) tokens!494)) ((_ is Nil!35862) (t!236125 tokens!494))))))

(declare-fun b!3189948 () Bool)

(declare-fun e!1987959 () Bool)

(assert (=> b!3189948 (= e!1987974 e!1987959)))

(declare-fun res!1297258 () Bool)

(assert (=> b!3189948 (=> res!1297258 e!1987959)))

(declare-fun isEmpty!19996 (BalanceConc!20958) Bool)

(declare-datatypes ((tuple2!35246 0))(
  ( (tuple2!35247 (_1!20757 BalanceConc!20958) (_2!20757 BalanceConc!20956)) )
))
(declare-fun lex!2077 (LexerInterface!4737 List!35987 BalanceConc!20956) tuple2!35246)

(assert (=> b!3189948 (= res!1297258 (isEmpty!19996 (_1!20757 (lex!2077 thiss!18206 rules!2135 lt!1073958))))))

(declare-fun seqFromList!3375 (List!35985) BalanceConc!20956)

(assert (=> b!3189948 (= lt!1073958 (seqFromList!3375 lt!1073974))))

(declare-fun b!3189949 () Bool)

(assert (=> b!3189949 (= e!1987961 (not e!1987971))))

(declare-fun res!1297256 () Bool)

(assert (=> b!3189949 (=> res!1297256 e!1987971)))

(assert (=> b!3189949 (= res!1297256 (not (= lt!1073977 lt!1073961)))))

(declare-fun printList!1291 (LexerInterface!4737 List!35986) List!35985)

(assert (=> b!3189949 (= lt!1073961 (printList!1291 thiss!18206 (Cons!35862 (h!41282 tokens!494) Nil!35862)))))

(declare-fun lt!1073971 () BalanceConc!20956)

(assert (=> b!3189949 (= lt!1073977 (list!12737 lt!1073971))))

(declare-fun lt!1073982 () BalanceConc!20958)

(declare-fun printTailRec!1236 (LexerInterface!4737 BalanceConc!20958 Int BalanceConc!20956) BalanceConc!20956)

(assert (=> b!3189949 (= lt!1073971 (printTailRec!1236 thiss!18206 lt!1073982 0 (BalanceConc!20957 Empty!10671)))))

(declare-fun print!1804 (LexerInterface!4737 BalanceConc!20958) BalanceConc!20956)

(assert (=> b!3189949 (= lt!1073971 (print!1804 thiss!18206 lt!1073982))))

(declare-fun singletonSeq!2244 (Token!9662) BalanceConc!20958)

(assert (=> b!3189949 (= lt!1073982 (singletonSeq!2244 (h!41282 tokens!494)))))

(declare-fun b!3189950 () Bool)

(declare-fun e!1987982 () Bool)

(declare-fun e!1987976 () Bool)

(declare-fun tp!1008380 () Bool)

(declare-fun inv!48712 (String!40224) Bool)

(declare-fun inv!48715 (TokenValueInjection!10184) Bool)

(assert (=> b!3189950 (= e!1987976 (and tp!1008380 (inv!48712 (tag!5666 (h!41283 rules!2135))) (inv!48715 (transformation!5148 (h!41283 rules!2135))) e!1987982))))

(declare-fun b!3189952 () Bool)

(declare-datatypes ((tuple2!35248 0))(
  ( (tuple2!35249 (_1!20758 List!35986) (_2!20758 List!35985)) )
))
(declare-fun e!1987977 () tuple2!35248)

(declare-fun lt!1073972 () Option!7029)

(declare-fun lt!1073968 () tuple2!35248)

(assert (=> b!3189952 (= e!1987977 (tuple2!35249 (Cons!35862 (_1!20756 (v!35528 lt!1073972)) (_1!20758 lt!1073968)) (_2!20758 lt!1073968)))))

(declare-fun lexList!1287 (LexerInterface!4737 List!35987 List!35985) tuple2!35248)

(assert (=> b!3189952 (= lt!1073968 (lexList!1287 thiss!18206 rules!2135 (_2!20756 (v!35528 lt!1073972))))))

(declare-fun b!3189951 () Bool)

(assert (=> b!3189951 (= e!1987958 e!1987983)))

(declare-fun res!1297271 () Bool)

(assert (=> b!3189951 (=> res!1297271 e!1987983)))

(declare-fun lt!1073965 () List!35985)

(assert (=> b!3189951 (= res!1297271 (not (= e!1987977 (lexList!1287 thiss!18206 rules!2135 lt!1073965))))))

(declare-fun c!535730 () Bool)

(assert (=> b!3189951 (= c!535730 ((_ is Some!7028) lt!1073972))))

(declare-fun maxPrefix!2415 (LexerInterface!4737 List!35987 List!35985) Option!7029)

(assert (=> b!3189951 (= lt!1073972 (maxPrefix!2415 thiss!18206 rules!2135 lt!1073965))))

(declare-fun lt!1073957 () List!35985)

(assert (=> b!3189951 (= (maxPrefix!2415 thiss!18206 rules!2135 lt!1073957) (Some!7028 (tuple2!35245 (h!41282 tokens!494) lt!1073975)))))

(declare-fun lt!1073962 () Unit!50289)

(declare-fun lemmaMaxPrefWithOtherTypeUsedCharAtStartOfSuffixReturnSame!126 (LexerInterface!4737 List!35987 Token!9662 Rule!10096 List!35985 Rule!10096) Unit!50289)

(assert (=> b!3189951 (= lt!1073962 (lemmaMaxPrefWithOtherTypeUsedCharAtStartOfSuffixReturnSame!126 thiss!18206 rules!2135 (h!41282 tokens!494) (rule!7580 (h!41282 tokens!494)) lt!1073975 (rule!7580 separatorToken!241)))))

(assert (=> b!3189951 (not (contains!6373 (usedCharacters!492 (regex!5148 (rule!7580 (h!41282 tokens!494)))) lt!1073967))))

(declare-fun lt!1073960 () Unit!50289)

(declare-fun lemmaNonSepRuleNotContainsCharContainedInASepRule!124 (LexerInterface!4737 List!35987 List!35987 Rule!10096 Rule!10096 C!20000) Unit!50289)

(assert (=> b!3189951 (= lt!1073960 (lemmaNonSepRuleNotContainsCharContainedInASepRule!124 thiss!18206 rules!2135 rules!2135 (rule!7580 (h!41282 tokens!494)) (rule!7580 separatorToken!241) lt!1073967))))

(declare-fun res!1297268 () Bool)

(assert (=> start!299250 (=> (not res!1297268) (not e!1987956))))

(assert (=> start!299250 (= res!1297268 ((_ is Lexer!4735) thiss!18206))))

(assert (=> start!299250 e!1987956))

(assert (=> start!299250 true))

(declare-fun e!1987979 () Bool)

(assert (=> start!299250 e!1987979))

(declare-fun e!1987965 () Bool)

(declare-fun inv!48716 (Token!9662) Bool)

(assert (=> start!299250 (and (inv!48716 separatorToken!241) e!1987965)))

(declare-fun e!1987960 () Bool)

(assert (=> start!299250 e!1987960))

(declare-fun b!3189953 () Bool)

(declare-fun e!1987973 () Bool)

(assert (=> b!3189953 (= e!1987973 e!1987966)))

(declare-fun res!1297261 () Bool)

(assert (=> b!3189953 (=> res!1297261 e!1987966)))

(assert (=> b!3189953 (= res!1297261 (not (= lt!1073965 lt!1073957)))))

(declare-fun ++!8586 (List!35985 List!35985) List!35985)

(assert (=> b!3189953 (= lt!1073957 (++!8586 lt!1073974 lt!1073975))))

(declare-fun lt!1073964 () BalanceConc!20956)

(assert (=> b!3189953 (= lt!1073965 (list!12737 lt!1073964))))

(assert (=> b!3189953 (= lt!1073975 (list!12737 (charsOf!3170 separatorToken!241)))))

(declare-fun lt!1073970 () BalanceConc!20958)

(assert (=> b!3189953 (= lt!1073964 (printWithSeparatorToken!46 thiss!18206 lt!1073970 separatorToken!241))))

(assert (=> b!3189954 (= e!1987982 (and tp!1008391 tp!1008386))))

(declare-fun b!3189955 () Bool)

(declare-fun res!1297263 () Bool)

(assert (=> b!3189955 (=> res!1297263 e!1987974)))

(assert (=> b!3189955 (= res!1297263 (not (rulesProduceIndividualToken!2229 thiss!18206 rules!2135 (h!41282 tokens!494))))))

(declare-fun b!3189956 () Bool)

(declare-fun tp!1008381 () Bool)

(assert (=> b!3189956 (= e!1987979 (and e!1987976 tp!1008381))))

(declare-fun b!3189957 () Bool)

(declare-fun res!1297267 () Bool)

(assert (=> b!3189957 (=> (not res!1297267) (not e!1987956))))

(declare-fun isEmpty!19997 (List!35987) Bool)

(assert (=> b!3189957 (= res!1297267 (not (isEmpty!19997 rules!2135)))))

(declare-fun b!3189958 () Bool)

(declare-fun e!1987968 () Bool)

(declare-fun tp!1008390 () Bool)

(assert (=> b!3189958 (= e!1987965 (and (inv!21 (value!167178 separatorToken!241)) e!1987968 tp!1008390))))

(declare-fun b!3189959 () Bool)

(declare-fun e!1987986 () Bool)

(assert (=> b!3189959 (= e!1987986 false)))

(declare-fun b!3189960 () Bool)

(assert (=> b!3189960 (= e!1987956 e!1987961)))

(declare-fun res!1297269 () Bool)

(assert (=> b!3189960 (=> (not res!1297269) (not e!1987961))))

(declare-fun rulesProduceEachTokenIndividually!1188 (LexerInterface!4737 List!35987 BalanceConc!20958) Bool)

(assert (=> b!3189960 (= res!1297269 (rulesProduceEachTokenIndividually!1188 thiss!18206 rules!2135 lt!1073970))))

(declare-fun seqFromList!3376 (List!35986) BalanceConc!20958)

(assert (=> b!3189960 (= lt!1073970 (seqFromList!3376 tokens!494))))

(declare-fun b!3189961 () Bool)

(declare-fun Unit!50292 () Unit!50289)

(assert (=> b!3189961 (= e!1987978 Unit!50292)))

(declare-fun tp!1008389 () Bool)

(declare-fun b!3189962 () Bool)

(assert (=> b!3189962 (= e!1987960 (and (inv!48716 (h!41282 tokens!494)) e!1987972 tp!1008389))))

(declare-fun e!1987980 () Bool)

(assert (=> b!3189963 (= e!1987980 (and tp!1008383 tp!1008387))))

(declare-fun b!3189964 () Bool)

(assert (=> b!3189964 (= e!1987977 (tuple2!35249 Nil!35862 lt!1073965))))

(assert (=> b!3189964 false))

(declare-fun e!1987975 () Bool)

(assert (=> b!3189965 (= e!1987975 (and tp!1008392 tp!1008384))))

(declare-fun b!3189966 () Bool)

(declare-fun e!1987984 () Bool)

(declare-fun lt!1073983 () Rule!10096)

(assert (=> b!3189966 (= e!1987984 (= (rule!7580 separatorToken!241) lt!1073983))))

(declare-fun b!3189967 () Bool)

(declare-fun tp!1008388 () Bool)

(assert (=> b!3189967 (= e!1987968 (and tp!1008388 (inv!48712 (tag!5666 (rule!7580 separatorToken!241))) (inv!48715 (transformation!5148 (rule!7580 separatorToken!241))) e!1987980))))

(declare-fun b!3189968 () Bool)

(assert (=> b!3189968 (= e!1987957 e!1987984)))

(declare-fun res!1297262 () Bool)

(assert (=> b!3189968 (=> (not res!1297262) (not e!1987984))))

(assert (=> b!3189968 (= res!1297262 (matchR!4565 (regex!5148 lt!1073983) lt!1073975))))

(assert (=> b!3189968 (= lt!1073983 (get!11419 lt!1073978))))

(declare-fun b!3189969 () Bool)

(declare-fun res!1297257 () Bool)

(assert (=> b!3189969 (=> (not res!1297257) (not e!1987961))))

(declare-fun sepAndNonSepRulesDisjointChars!1342 (List!35987 List!35987) Bool)

(assert (=> b!3189969 (= res!1297257 (sepAndNonSepRulesDisjointChars!1342 rules!2135 rules!2135))))

(declare-fun tp!1008385 () Bool)

(declare-fun b!3189970 () Bool)

(assert (=> b!3189970 (= e!1987969 (and tp!1008385 (inv!48712 (tag!5666 (rule!7580 (h!41282 tokens!494)))) (inv!48715 (transformation!5148 (rule!7580 (h!41282 tokens!494)))) e!1987975))))

(declare-fun b!3189971 () Bool)

(assert (=> b!3189971 (= e!1987959 e!1987973)))

(declare-fun res!1297251 () Bool)

(assert (=> b!3189971 (=> res!1297251 e!1987973)))

(assert (=> b!3189971 (= res!1297251 (isSeparator!5148 (rule!7580 (h!41282 tokens!494))))))

(declare-fun lt!1073973 () Unit!50289)

(declare-fun forallContained!1131 (List!35986 Int Token!9662) Unit!50289)

(assert (=> b!3189971 (= lt!1073973 (forallContained!1131 tokens!494 lambda!116659 (h!41282 tokens!494)))))

(declare-fun b!3189972 () Bool)

(declare-fun Unit!50293 () Unit!50289)

(assert (=> b!3189972 (= e!1987978 Unit!50293)))

(declare-fun lt!1073969 () Unit!50289)

(declare-fun lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!346 (Regex!9907 List!35985 C!20000) Unit!50289)

(assert (=> b!3189972 (= lt!1073969 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!346 (regex!5148 (rule!7580 separatorToken!241)) lt!1073975 lt!1073967))))

(declare-fun res!1297266 () Bool)

(assert (=> b!3189972 (= res!1297266 (not (matchR!4565 (regex!5148 (rule!7580 separatorToken!241)) lt!1073975)))))

(assert (=> b!3189972 (=> (not res!1297266) (not e!1987986))))

(assert (=> b!3189972 e!1987986))

(assert (= (and start!299250 res!1297268) b!3189957))

(assert (= (and b!3189957 res!1297267) b!3189944))

(assert (= (and b!3189944 res!1297264) b!3189960))

(assert (= (and b!3189960 res!1297269) b!3189946))

(assert (= (and b!3189946 res!1297260) b!3189939))

(assert (= (and b!3189939 res!1297250) b!3189945))

(assert (= (and b!3189945 res!1297254) b!3189969))

(assert (= (and b!3189969 res!1297257) b!3189947))

(assert (= (and b!3189947 res!1297253) b!3189949))

(assert (= (and b!3189949 (not res!1297256)) b!3189940))

(assert (= (and b!3189940 (not res!1297255)) b!3189955))

(assert (= (and b!3189955 (not res!1297263)) b!3189948))

(assert (= (and b!3189948 (not res!1297258)) b!3189971))

(assert (= (and b!3189971 (not res!1297251)) b!3189953))

(assert (= (and b!3189953 (not res!1297261)) b!3189937))

(assert (= (and b!3189937 res!1297252) b!3189943))

(assert (= (and b!3189943 res!1297259) b!3189938))

(assert (= (and b!3189937 res!1297265) b!3189968))

(assert (= (and b!3189968 res!1297262) b!3189966))

(assert (= (and b!3189937 c!535731) b!3189972))

(assert (= (and b!3189937 (not c!535731)) b!3189961))

(assert (= (and b!3189972 res!1297266) b!3189959))

(assert (= (and b!3189937 (not res!1297270)) b!3189951))

(assert (= (and b!3189951 c!535730) b!3189952))

(assert (= (and b!3189951 (not c!535730)) b!3189964))

(assert (= (and b!3189951 (not res!1297271)) b!3189941))

(assert (= b!3189950 b!3189954))

(assert (= b!3189956 b!3189950))

(assert (= (and start!299250 ((_ is Cons!35863) rules!2135)) b!3189956))

(assert (= b!3189967 b!3189963))

(assert (= b!3189958 b!3189967))

(assert (= start!299250 b!3189958))

(assert (= b!3189970 b!3189965))

(assert (= b!3189942 b!3189970))

(assert (= b!3189962 b!3189942))

(assert (= (and start!299250 ((_ is Cons!35862) tokens!494)) b!3189962))

(declare-fun m!3448827 () Bool)

(assert (=> b!3189958 m!3448827))

(declare-fun m!3448829 () Bool)

(assert (=> b!3189968 m!3448829))

(declare-fun m!3448831 () Bool)

(assert (=> b!3189968 m!3448831))

(declare-fun m!3448833 () Bool)

(assert (=> b!3189942 m!3448833))

(declare-fun m!3448835 () Bool)

(assert (=> b!3189941 m!3448835))

(declare-fun m!3448837 () Bool)

(assert (=> b!3189949 m!3448837))

(declare-fun m!3448839 () Bool)

(assert (=> b!3189949 m!3448839))

(declare-fun m!3448841 () Bool)

(assert (=> b!3189949 m!3448841))

(declare-fun m!3448843 () Bool)

(assert (=> b!3189949 m!3448843))

(declare-fun m!3448845 () Bool)

(assert (=> b!3189949 m!3448845))

(declare-fun m!3448847 () Bool)

(assert (=> b!3189940 m!3448847))

(assert (=> b!3189940 m!3448847))

(declare-fun m!3448849 () Bool)

(assert (=> b!3189940 m!3448849))

(declare-fun m!3448851 () Bool)

(assert (=> b!3189957 m!3448851))

(declare-fun m!3448853 () Bool)

(assert (=> b!3189971 m!3448853))

(declare-fun m!3448855 () Bool)

(assert (=> b!3189944 m!3448855))

(declare-fun m!3448857 () Bool)

(assert (=> b!3189946 m!3448857))

(declare-fun m!3448859 () Bool)

(assert (=> b!3189952 m!3448859))

(declare-fun m!3448861 () Bool)

(assert (=> b!3189953 m!3448861))

(declare-fun m!3448863 () Bool)

(assert (=> b!3189953 m!3448863))

(declare-fun m!3448865 () Bool)

(assert (=> b!3189953 m!3448865))

(assert (=> b!3189953 m!3448861))

(declare-fun m!3448867 () Bool)

(assert (=> b!3189953 m!3448867))

(declare-fun m!3448869 () Bool)

(assert (=> b!3189953 m!3448869))

(declare-fun m!3448871 () Bool)

(assert (=> b!3189969 m!3448871))

(declare-fun m!3448873 () Bool)

(assert (=> b!3189970 m!3448873))

(declare-fun m!3448875 () Bool)

(assert (=> b!3189970 m!3448875))

(declare-fun m!3448877 () Bool)

(assert (=> b!3189962 m!3448877))

(declare-fun m!3448879 () Bool)

(assert (=> b!3189937 m!3448879))

(declare-fun m!3448881 () Bool)

(assert (=> b!3189937 m!3448881))

(declare-fun m!3448883 () Bool)

(assert (=> b!3189937 m!3448883))

(assert (=> b!3189937 m!3448883))

(declare-fun m!3448885 () Bool)

(assert (=> b!3189937 m!3448885))

(declare-fun m!3448887 () Bool)

(assert (=> b!3189937 m!3448887))

(declare-fun m!3448889 () Bool)

(assert (=> b!3189937 m!3448889))

(declare-fun m!3448891 () Bool)

(assert (=> b!3189937 m!3448891))

(declare-fun m!3448893 () Bool)

(assert (=> b!3189937 m!3448893))

(declare-fun m!3448895 () Bool)

(assert (=> b!3189937 m!3448895))

(declare-fun m!3448897 () Bool)

(assert (=> b!3189937 m!3448897))

(declare-fun m!3448899 () Bool)

(assert (=> b!3189937 m!3448899))

(declare-fun m!3448901 () Bool)

(assert (=> b!3189937 m!3448901))

(declare-fun m!3448903 () Bool)

(assert (=> b!3189937 m!3448903))

(assert (=> b!3189937 m!3448879))

(declare-fun m!3448905 () Bool)

(assert (=> b!3189937 m!3448905))

(declare-fun m!3448907 () Bool)

(assert (=> b!3189937 m!3448907))

(declare-fun m!3448909 () Bool)

(assert (=> b!3189937 m!3448909))

(declare-fun m!3448911 () Bool)

(assert (=> b!3189937 m!3448911))

(declare-fun m!3448913 () Bool)

(assert (=> b!3189951 m!3448913))

(declare-fun m!3448915 () Bool)

(assert (=> b!3189951 m!3448915))

(declare-fun m!3448917 () Bool)

(assert (=> b!3189951 m!3448917))

(declare-fun m!3448919 () Bool)

(assert (=> b!3189951 m!3448919))

(declare-fun m!3448921 () Bool)

(assert (=> b!3189951 m!3448921))

(declare-fun m!3448923 () Bool)

(assert (=> b!3189951 m!3448923))

(assert (=> b!3189951 m!3448923))

(declare-fun m!3448925 () Bool)

(assert (=> b!3189951 m!3448925))

(declare-fun m!3448927 () Bool)

(assert (=> b!3189960 m!3448927))

(declare-fun m!3448929 () Bool)

(assert (=> b!3189960 m!3448929))

(declare-fun m!3448931 () Bool)

(assert (=> b!3189948 m!3448931))

(declare-fun m!3448933 () Bool)

(assert (=> b!3189948 m!3448933))

(declare-fun m!3448935 () Bool)

(assert (=> b!3189948 m!3448935))

(declare-fun m!3448937 () Bool)

(assert (=> b!3189945 m!3448937))

(declare-fun m!3448939 () Bool)

(assert (=> b!3189955 m!3448939))

(declare-fun m!3448941 () Bool)

(assert (=> b!3189972 m!3448941))

(declare-fun m!3448943 () Bool)

(assert (=> b!3189972 m!3448943))

(declare-fun m!3448945 () Bool)

(assert (=> b!3189950 m!3448945))

(declare-fun m!3448947 () Bool)

(assert (=> b!3189950 m!3448947))

(declare-fun m!3448949 () Bool)

(assert (=> start!299250 m!3448949))

(declare-fun m!3448951 () Bool)

(assert (=> b!3189943 m!3448951))

(declare-fun m!3448953 () Bool)

(assert (=> b!3189943 m!3448953))

(declare-fun m!3448955 () Bool)

(assert (=> b!3189967 m!3448955))

(declare-fun m!3448957 () Bool)

(assert (=> b!3189967 m!3448957))

(check-sat b_and!211323 (not b_next!85019) b_and!211327 (not b!3189970) (not b!3189943) (not b!3189949) (not b!3189952) (not b!3189945) (not b!3189972) (not b!3189953) b_and!211331 (not b_next!85017) (not b!3189944) (not b_next!85023) (not b!3189957) (not b!3189955) (not b!3189956) (not b_next!85021) (not b!3189950) (not b!3189960) (not b!3189971) (not b!3189962) (not b!3189942) (not b!3189969) (not b!3189946) b_and!211333 (not b!3189967) (not b_next!85027) (not b!3189951) (not b!3189941) (not b!3189940) b_and!211325 b_and!211329 (not b!3189948) (not b!3189937) (not b!3189968) (not start!299250) (not b_next!85025) (not b!3189958))
(check-sat (not b_next!85021) b_and!211323 (not b_next!85019) b_and!211327 b_and!211333 (not b_next!85027) b_and!211325 b_and!211329 b_and!211331 (not b_next!85017) (not b_next!85023) (not b_next!85025))
