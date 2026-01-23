; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!118282 () Bool)

(assert start!118282)

(declare-fun b!1329978 () Bool)

(declare-fun b_free!32179 () Bool)

(declare-fun b_next!32883 () Bool)

(assert (=> b!1329978 (= b_free!32179 (not b_next!32883))))

(declare-fun tp!385079 () Bool)

(declare-fun b_and!88847 () Bool)

(assert (=> b!1329978 (= tp!385079 b_and!88847)))

(declare-fun b_free!32181 () Bool)

(declare-fun b_next!32885 () Bool)

(assert (=> b!1329978 (= b_free!32181 (not b_next!32885))))

(declare-fun tp!385085 () Bool)

(declare-fun b_and!88849 () Bool)

(assert (=> b!1329978 (= tp!385085 b_and!88849)))

(declare-fun b!1330011 () Bool)

(declare-fun b_free!32183 () Bool)

(declare-fun b_next!32887 () Bool)

(assert (=> b!1330011 (= b_free!32183 (not b_next!32887))))

(declare-fun tp!385083 () Bool)

(declare-fun b_and!88851 () Bool)

(assert (=> b!1330011 (= tp!385083 b_and!88851)))

(declare-fun b_free!32185 () Bool)

(declare-fun b_next!32889 () Bool)

(assert (=> b!1330011 (= b_free!32185 (not b_next!32889))))

(declare-fun tp!385082 () Bool)

(declare-fun b_and!88853 () Bool)

(assert (=> b!1330011 (= tp!385082 b_and!88853)))

(declare-fun b!1330000 () Bool)

(declare-fun b_free!32187 () Bool)

(declare-fun b_next!32891 () Bool)

(assert (=> b!1330000 (= b_free!32187 (not b_next!32891))))

(declare-fun tp!385084 () Bool)

(declare-fun b_and!88855 () Bool)

(assert (=> b!1330000 (= tp!385084 b_and!88855)))

(declare-fun b_free!32189 () Bool)

(declare-fun b_next!32893 () Bool)

(assert (=> b!1330000 (= b_free!32189 (not b_next!32893))))

(declare-fun tp!385078 () Bool)

(declare-fun b_and!88857 () Bool)

(assert (=> b!1330000 (= tp!385078 b_and!88857)))

(declare-fun b!1329976 () Bool)

(assert (=> b!1329976 true))

(assert (=> b!1329976 true))

(declare-fun b!1329990 () Bool)

(assert (=> b!1329990 true))

(declare-fun b!1329987 () Bool)

(assert (=> b!1329987 true))

(declare-fun bs!331602 () Bool)

(declare-fun b!1329996 () Bool)

(assert (= bs!331602 (and b!1329996 b!1329987)))

(declare-fun lambda!55273 () Int)

(declare-fun lambda!55272 () Int)

(assert (=> bs!331602 (not (= lambda!55273 lambda!55272))))

(assert (=> b!1329996 true))

(declare-fun b!1329966 () Bool)

(declare-fun e!852052 () Bool)

(declare-fun e!852047 () Bool)

(assert (=> b!1329966 (= e!852052 e!852047)))

(declare-fun res!599130 () Bool)

(assert (=> b!1329966 (=> res!599130 e!852047)))

(declare-datatypes ((C!7600 0))(
  ( (C!7601 (val!4360 Int)) )
))
(declare-datatypes ((List!13586 0))(
  ( (Nil!13520) (Cons!13520 (h!18921 C!7600) (t!118959 List!13586)) )
))
(declare-fun lt!439955 () List!13586)

(declare-fun lt!439968 () List!13586)

(declare-fun ++!3454 (List!13586 List!13586) List!13586)

(declare-fun getSuffix!511 (List!13586 List!13586) List!13586)

(assert (=> b!1329966 (= res!599130 (not (= lt!439955 (++!3454 lt!439968 (getSuffix!511 lt!439955 lt!439968)))))))

(declare-fun lambda!55269 () Int)

(declare-fun pickWitness!118 (Int) List!13586)

(assert (=> b!1329966 (= lt!439955 (pickWitness!118 lambda!55269))))

(declare-fun b!1329967 () Bool)

(declare-fun res!599129 () Bool)

(declare-fun e!852065 () Bool)

(assert (=> b!1329967 (=> res!599129 e!852065)))

(declare-datatypes ((List!13587 0))(
  ( (Nil!13521) (Cons!13521 (h!18922 (_ BitVec 16)) (t!118960 List!13587)) )
))
(declare-datatypes ((TokenValue!2431 0))(
  ( (FloatLiteralValue!4862 (text!17462 List!13587)) (TokenValueExt!2430 (__x!8691 Int)) (Broken!12155 (value!76325 List!13587)) (Object!2496) (End!2431) (Def!2431) (Underscore!2431) (Match!2431) (Else!2431) (Error!2431) (Case!2431) (If!2431) (Extends!2431) (Abstract!2431) (Class!2431) (Val!2431) (DelimiterValue!4862 (del!2491 List!13587)) (KeywordValue!2437 (value!76326 List!13587)) (CommentValue!4862 (value!76327 List!13587)) (WhitespaceValue!4862 (value!76328 List!13587)) (IndentationValue!2431 (value!76329 List!13587)) (String!16390) (Int32!2431) (Broken!12156 (value!76330 List!13587)) (Boolean!2432) (Unit!19630) (OperatorValue!2434 (op!2491 List!13587)) (IdentifierValue!4862 (value!76331 List!13587)) (IdentifierValue!4863 (value!76332 List!13587)) (WhitespaceValue!4863 (value!76333 List!13587)) (True!4862) (False!4862) (Broken!12157 (value!76334 List!13587)) (Broken!12158 (value!76335 List!13587)) (True!4863) (RightBrace!2431) (RightBracket!2431) (Colon!2431) (Null!2431) (Comma!2431) (LeftBracket!2431) (False!4863) (LeftBrace!2431) (ImaginaryLiteralValue!2431 (text!17463 List!13587)) (StringLiteralValue!7293 (value!76336 List!13587)) (EOFValue!2431 (value!76337 List!13587)) (IdentValue!2431 (value!76338 List!13587)) (DelimiterValue!4863 (value!76339 List!13587)) (DedentValue!2431 (value!76340 List!13587)) (NewLineValue!2431 (value!76341 List!13587)) (IntegerValue!7293 (value!76342 (_ BitVec 32)) (text!17464 List!13587)) (IntegerValue!7294 (value!76343 Int) (text!17465 List!13587)) (Times!2431) (Or!2431) (Equal!2431) (Minus!2431) (Broken!12159 (value!76344 List!13587)) (And!2431) (Div!2431) (LessEqual!2431) (Mod!2431) (Concat!6086) (Not!2431) (Plus!2431) (SpaceValue!2431 (value!76345 List!13587)) (IntegerValue!7295 (value!76346 Int) (text!17466 List!13587)) (StringLiteralValue!7294 (text!17467 List!13587)) (FloatLiteralValue!4863 (text!17468 List!13587)) (BytesLiteralValue!2431 (value!76347 List!13587)) (CommentValue!4863 (value!76348 List!13587)) (StringLiteralValue!7295 (value!76349 List!13587)) (ErrorTokenValue!2431 (msg!2492 List!13587)) )
))
(declare-datatypes ((IArray!8909 0))(
  ( (IArray!8910 (innerList!4512 List!13586)) )
))
(declare-datatypes ((Conc!4452 0))(
  ( (Node!4452 (left!11612 Conc!4452) (right!11942 Conc!4452) (csize!9134 Int) (cheight!4663 Int)) (Leaf!6819 (xs!7167 IArray!8909) (csize!9135 Int)) (Empty!4452) )
))
(declare-datatypes ((BalanceConc!8844 0))(
  ( (BalanceConc!8845 (c!218000 Conc!4452)) )
))
(declare-datatypes ((Regex!3655 0))(
  ( (ElementMatch!3655 (c!218001 C!7600)) (Concat!6087 (regOne!7822 Regex!3655) (regTwo!7822 Regex!3655)) (EmptyExpr!3655) (Star!3655 (reg!3984 Regex!3655)) (EmptyLang!3655) (Union!3655 (regOne!7823 Regex!3655) (regTwo!7823 Regex!3655)) )
))
(declare-datatypes ((String!16391 0))(
  ( (String!16392 (value!76350 String)) )
))
(declare-datatypes ((TokenValueInjection!4522 0))(
  ( (TokenValueInjection!4523 (toValue!3572 Int) (toChars!3431 Int)) )
))
(declare-datatypes ((Rule!4482 0))(
  ( (Rule!4483 (regex!2341 Regex!3655) (tag!2603 String!16391) (isSeparator!2341 Bool) (transformation!2341 TokenValueInjection!4522)) )
))
(declare-datatypes ((Token!4344 0))(
  ( (Token!4345 (value!76351 TokenValue!2431) (rule!4086 Rule!4482) (size!11012 Int) (originalCharacters!3203 List!13586)) )
))
(declare-datatypes ((List!13588 0))(
  ( (Nil!13522) (Cons!13522 (h!18923 Token!4344) (t!118961 List!13588)) )
))
(declare-datatypes ((IArray!8911 0))(
  ( (IArray!8912 (innerList!4513 List!13588)) )
))
(declare-datatypes ((Conc!4453 0))(
  ( (Node!4453 (left!11613 Conc!4453) (right!11943 Conc!4453) (csize!9136 Int) (cheight!4664 Int)) (Leaf!6820 (xs!7168 IArray!8911) (csize!9137 Int)) (Empty!4453) )
))
(declare-datatypes ((BalanceConc!8846 0))(
  ( (BalanceConc!8847 (c!218002 Conc!4453)) )
))
(declare-datatypes ((tuple2!13166 0))(
  ( (tuple2!13167 (_1!7469 BalanceConc!8846) (_2!7469 BalanceConc!8844)) )
))
(declare-fun lt!439942 () tuple2!13166)

(declare-fun isEmpty!8058 (BalanceConc!8844) Bool)

(assert (=> b!1329967 (= res!599129 (not (isEmpty!8058 (_2!7469 lt!439942))))))

(declare-fun b!1329968 () Bool)

(declare-fun res!599128 () Bool)

(declare-fun e!852070 () Bool)

(assert (=> b!1329968 (=> res!599128 e!852070)))

(declare-fun lt!439949 () C!7600)

(declare-fun contains!2439 (List!13586 C!7600) Bool)

(assert (=> b!1329968 (= res!599128 (not (contains!2439 lt!439955 lt!439949)))))

(declare-fun b!1329969 () Bool)

(declare-fun e!852066 () Bool)

(assert (=> b!1329969 (= e!852065 e!852066)))

(declare-fun res!599146 () Bool)

(assert (=> b!1329969 (=> res!599146 e!852066)))

(declare-fun lt!439958 () tuple2!13166)

(declare-fun lt!439966 () List!13588)

(declare-fun list!5126 (BalanceConc!8846) List!13588)

(assert (=> b!1329969 (= res!599146 (not (= (list!5126 (_1!7469 lt!439958)) lt!439966)))))

(declare-fun t2!34 () Token!4344)

(assert (=> b!1329969 (= lt!439966 (Cons!13522 t2!34 Nil!13522))))

(declare-datatypes ((LexerInterface!2036 0))(
  ( (LexerInterfaceExt!2033 (__x!8692 Int)) (Lexer!2034) )
))
(declare-fun thiss!19762 () LexerInterface!2036)

(declare-datatypes ((List!13589 0))(
  ( (Nil!13523) (Cons!13523 (h!18924 Rule!4482) (t!118962 List!13589)) )
))
(declare-fun rules!2550 () List!13589)

(declare-fun lt!439941 () BalanceConc!8844)

(declare-fun lex!871 (LexerInterface!2036 List!13589 BalanceConc!8844) tuple2!13166)

(assert (=> b!1329969 (= lt!439958 (lex!871 thiss!19762 rules!2550 lt!439941))))

(declare-fun print!810 (LexerInterface!2036 BalanceConc!8846) BalanceConc!8844)

(declare-fun singletonSeq!936 (Token!4344) BalanceConc!8846)

(assert (=> b!1329969 (= lt!439941 (print!810 thiss!19762 (singletonSeq!936 t2!34)))))

(declare-fun b!1329970 () Bool)

(declare-fun e!852041 () Bool)

(declare-fun e!852061 () Bool)

(assert (=> b!1329970 (= e!852041 e!852061)))

(declare-fun res!599159 () Bool)

(assert (=> b!1329970 (=> res!599159 e!852061)))

(declare-fun lt!439954 () Bool)

(assert (=> b!1329970 (= res!599159 lt!439954)))

(declare-datatypes ((Unit!19631 0))(
  ( (Unit!19632) )
))
(declare-fun lt!439962 () Unit!19631)

(declare-fun e!852072 () Unit!19631)

(assert (=> b!1329970 (= lt!439962 e!852072)))

(declare-fun c!217999 () Bool)

(assert (=> b!1329970 (= c!217999 lt!439954)))

(declare-fun t1!34 () Token!4344)

(declare-fun usedCharacters!206 (Regex!3655) List!13586)

(assert (=> b!1329970 (= lt!439954 (not (contains!2439 (usedCharacters!206 (regex!2341 (rule!4086 t1!34))) lt!439949)))))

(declare-fun b!1329971 () Bool)

(declare-fun res!599156 () Bool)

(assert (=> b!1329971 (=> res!599156 e!852065)))

(declare-fun contains!2440 (List!13589 Rule!4482) Bool)

(assert (=> b!1329971 (= res!599156 (not (contains!2440 rules!2550 (rule!4086 t1!34))))))

(declare-fun b!1329972 () Bool)

(declare-fun res!599134 () Bool)

(declare-fun e!852063 () Bool)

(assert (=> b!1329972 (=> (not res!599134) (not e!852063))))

(declare-fun isEmpty!8059 (List!13589) Bool)

(assert (=> b!1329972 (= res!599134 (not (isEmpty!8059 rules!2550)))))

(declare-fun b!1329973 () Bool)

(declare-fun e!852040 () Bool)

(declare-fun e!852055 () Bool)

(assert (=> b!1329973 (= e!852040 e!852055)))

(declare-fun res!599123 () Bool)

(assert (=> b!1329973 (=> res!599123 e!852055)))

(declare-fun lt!439964 () Rule!4482)

(assert (=> b!1329973 (= res!599123 (or (not (isSeparator!2341 lt!439964)) (isSeparator!2341 (rule!4086 t1!34))))))

(declare-fun lt!439952 () Regex!3655)

(assert (=> b!1329973 (= (regex!2341 lt!439964) lt!439952)))

(declare-fun b!1329974 () Bool)

(declare-fun res!599142 () Bool)

(assert (=> b!1329974 (=> res!599142 e!852041)))

(declare-fun lt!439957 () List!13586)

(declare-fun matchR!1657 (Regex!3655 List!13586) Bool)

(assert (=> b!1329974 (= res!599142 (not (matchR!1657 (regex!2341 (rule!4086 t2!34)) lt!439957)))))

(declare-fun b!1329975 () Bool)

(declare-fun res!599132 () Bool)

(assert (=> b!1329975 (=> res!599132 e!852070)))

(declare-fun lt!439951 () C!7600)

(assert (=> b!1329975 (= res!599132 (not (contains!2439 lt!439968 lt!439951)))))

(declare-fun e!852045 () Bool)

(assert (=> b!1329976 (= e!852045 (not e!852052))))

(declare-fun res!599140 () Bool)

(assert (=> b!1329976 (=> res!599140 e!852052)))

(declare-fun Exists!813 (Int) Bool)

(assert (=> b!1329976 (= res!599140 (not (Exists!813 lambda!55269)))))

(assert (=> b!1329976 (Exists!813 lambda!55269)))

(declare-fun lt!439944 () Unit!19631)

(declare-fun lt!439956 () Regex!3655)

(declare-fun lemmaPrefixMatchThenExistsStringThatMatches!131 (Regex!3655 List!13586) Unit!19631)

(assert (=> b!1329976 (= lt!439944 (lemmaPrefixMatchThenExistsStringThatMatches!131 lt!439956 lt!439968))))

(declare-fun b!1329977 () Bool)

(declare-fun e!852050 () Bool)

(declare-fun tp!385088 () Bool)

(declare-fun e!852057 () Bool)

(declare-fun inv!17867 (String!16391) Bool)

(declare-fun inv!17870 (TokenValueInjection!4522) Bool)

(assert (=> b!1329977 (= e!852057 (and tp!385088 (inv!17867 (tag!2603 (h!18924 rules!2550))) (inv!17870 (transformation!2341 (h!18924 rules!2550))) e!852050))))

(declare-fun e!852054 () Bool)

(assert (=> b!1329978 (= e!852054 (and tp!385079 tp!385085))))

(declare-fun b!1329979 () Bool)

(declare-fun e!852062 () Bool)

(assert (=> b!1329979 (= e!852062 true)))

(declare-fun lt!439972 () Bool)

(assert (=> b!1329979 (= lt!439972 (contains!2439 (usedCharacters!206 lt!439952) lt!439949))))

(declare-fun e!852069 () Bool)

(declare-fun tp!385086 () Bool)

(declare-fun b!1329980 () Bool)

(assert (=> b!1329980 (= e!852069 (and tp!385086 (inv!17867 (tag!2603 (rule!4086 t2!34))) (inv!17870 (transformation!2341 (rule!4086 t2!34))) e!852054))))

(declare-fun res!599143 () Bool)

(assert (=> start!118282 (=> (not res!599143) (not e!852063))))

(get-info :version)

(assert (=> start!118282 (= res!599143 ((_ is Lexer!2034) thiss!19762))))

(assert (=> start!118282 e!852063))

(assert (=> start!118282 true))

(declare-fun e!852051 () Bool)

(assert (=> start!118282 e!852051))

(declare-fun e!852044 () Bool)

(declare-fun inv!17871 (Token!4344) Bool)

(assert (=> start!118282 (and (inv!17871 t1!34) e!852044)))

(declare-fun e!852053 () Bool)

(assert (=> start!118282 (and (inv!17871 t2!34) e!852053)))

(declare-fun b!1329981 () Bool)

(declare-fun e!852046 () Bool)

(assert (=> b!1329981 (= e!852066 e!852046)))

(declare-fun res!599141 () Bool)

(assert (=> b!1329981 (=> res!599141 e!852046)))

(declare-datatypes ((tuple2!13168 0))(
  ( (tuple2!13169 (_1!7470 Token!4344) (_2!7470 List!13586)) )
))
(declare-datatypes ((Option!2612 0))(
  ( (None!2611) (Some!2611 (v!21232 tuple2!13168)) )
))
(declare-fun maxPrefix!1046 (LexerInterface!2036 List!13589 List!13586) Option!2612)

(assert (=> b!1329981 (= res!599141 (not (= (maxPrefix!1046 thiss!19762 rules!2550 lt!439957) (Some!2611 (tuple2!13169 t2!34 Nil!13520)))))))

(declare-fun lt!439946 () BalanceConc!8844)

(declare-fun list!5127 (BalanceConc!8844) List!13586)

(assert (=> b!1329981 (= lt!439957 (list!5127 lt!439946))))

(declare-fun b!1329982 () Bool)

(declare-fun e!852049 () Unit!19631)

(declare-fun Unit!19633 () Unit!19631)

(assert (=> b!1329982 (= e!852049 Unit!19633)))

(declare-fun lt!439943 () Unit!19631)

(declare-fun lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!152 (Regex!3655 List!13586 C!7600) Unit!19631)

(declare-fun head!2339 (List!13586) C!7600)

(assert (=> b!1329982 (= lt!439943 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!152 (regex!2341 (rule!4086 t2!34)) lt!439957 (head!2339 lt!439957)))))

(assert (=> b!1329982 false))

(declare-fun b!1329983 () Bool)

(declare-fun e!852068 () Bool)

(assert (=> b!1329983 (= e!852068 e!852065)))

(declare-fun res!599147 () Bool)

(assert (=> b!1329983 (=> res!599147 e!852065)))

(declare-fun lt!439969 () List!13588)

(assert (=> b!1329983 (= res!599147 (not (= (list!5126 (_1!7469 lt!439942)) lt!439969)))))

(assert (=> b!1329983 (= lt!439969 (Cons!13522 t1!34 Nil!13522))))

(declare-fun lt!439948 () BalanceConc!8844)

(assert (=> b!1329983 (= lt!439942 (lex!871 thiss!19762 rules!2550 lt!439948))))

(assert (=> b!1329983 (= lt!439948 (print!810 thiss!19762 (singletonSeq!936 t1!34)))))

(declare-fun getWitness!276 (List!13589 Int) Rule!4482)

(assert (=> b!1329983 (= lt!439964 (getWitness!276 rules!2550 lambda!55272))))

(declare-fun b!1329984 () Bool)

(declare-fun tp!385081 () Bool)

(assert (=> b!1329984 (= e!852051 (and e!852057 tp!385081))))

(declare-fun b!1329985 () Bool)

(declare-fun res!599149 () Bool)

(assert (=> b!1329985 (=> res!599149 e!852070)))

(assert (=> b!1329985 (= res!599149 (not (matchR!1657 lt!439956 lt!439955)))))

(declare-fun b!1329986 () Bool)

(declare-fun res!599151 () Bool)

(assert (=> b!1329986 (=> res!599151 e!852046)))

(assert (=> b!1329986 (= res!599151 (not (contains!2440 rules!2550 lt!439964)))))

(declare-fun e!852060 () Bool)

(assert (=> b!1329987 (= e!852060 e!852068)))

(declare-fun res!599148 () Bool)

(assert (=> b!1329987 (=> res!599148 e!852068)))

(declare-fun exists!384 (List!13589 Int) Bool)

(assert (=> b!1329987 (= res!599148 (not (exists!384 rules!2550 lambda!55272)))))

(assert (=> b!1329987 (exists!384 rules!2550 lambda!55272)))

(declare-fun lambda!55270 () Int)

(declare-fun lt!439967 () Unit!19631)

(declare-fun lemmaMapContains!84 (List!13589 Int Regex!3655) Unit!19631)

(assert (=> b!1329987 (= lt!439967 (lemmaMapContains!84 rules!2550 lambda!55270 lt!439952))))

(declare-fun b!1329988 () Bool)

(declare-fun res!599144 () Bool)

(assert (=> b!1329988 (=> (not res!599144) (not e!852063))))

(declare-fun rulesInvariant!1906 (LexerInterface!2036 List!13589) Bool)

(assert (=> b!1329988 (= res!599144 (rulesInvariant!1906 thiss!19762 rules!2550))))

(declare-fun b!1329989 () Bool)

(declare-fun tp!385087 () Bool)

(declare-fun inv!21 (TokenValue!2431) Bool)

(assert (=> b!1329989 (= e!852053 (and (inv!21 (value!76351 t2!34)) e!852069 tp!385087))))

(declare-fun e!852064 () Bool)

(assert (=> b!1329990 (= e!852070 e!852064)))

(declare-fun res!599152 () Bool)

(assert (=> b!1329990 (=> res!599152 e!852064)))

(declare-fun lambda!55271 () Int)

(declare-datatypes ((List!13590 0))(
  ( (Nil!13524) (Cons!13524 (h!18925 Regex!3655) (t!118963 List!13590)) )
))
(declare-fun exists!385 (List!13590 Int) Bool)

(declare-fun map!2978 (List!13589 Int) List!13590)

(assert (=> b!1329990 (= res!599152 (not (exists!385 (map!2978 rules!2550 lambda!55270) lambda!55271)))))

(declare-fun lt!439947 () List!13590)

(assert (=> b!1329990 (exists!385 lt!439947 lambda!55271)))

(declare-fun lt!439953 () Unit!19631)

(declare-fun matchRGenUnionSpec!92 (Regex!3655 List!13590 List!13586) Unit!19631)

(assert (=> b!1329990 (= lt!439953 (matchRGenUnionSpec!92 lt!439956 lt!439947 lt!439955))))

(assert (=> b!1329990 (= lt!439947 (map!2978 rules!2550 lambda!55270))))

(declare-fun b!1329991 () Bool)

(declare-fun res!599126 () Bool)

(assert (=> b!1329991 (=> (not res!599126) (not e!852063))))

(declare-fun rulesProduceIndividualToken!1005 (LexerInterface!2036 List!13589 Token!4344) Bool)

(assert (=> b!1329991 (= res!599126 (rulesProduceIndividualToken!1005 thiss!19762 rules!2550 t1!34))))

(declare-fun b!1329992 () Bool)

(declare-fun res!599125 () Bool)

(assert (=> b!1329992 (=> (not res!599125) (not e!852063))))

(assert (=> b!1329992 (= res!599125 (not (= (isSeparator!2341 (rule!4086 t1!34)) (isSeparator!2341 (rule!4086 t2!34)))))))

(declare-fun b!1329993 () Bool)

(declare-fun Unit!19634 () Unit!19631)

(assert (=> b!1329993 (= e!852072 Unit!19634)))

(declare-fun b!1329994 () Bool)

(declare-fun res!599154 () Bool)

(assert (=> b!1329994 (=> res!599154 e!852046)))

(assert (=> b!1329994 (= res!599154 (not (contains!2440 rules!2550 (rule!4086 t2!34))))))

(declare-fun b!1329995 () Bool)

(declare-fun Unit!19635 () Unit!19631)

(assert (=> b!1329995 (= e!852072 Unit!19635)))

(declare-fun lt!439970 () Unit!19631)

(declare-fun lt!439959 () List!13586)

(assert (=> b!1329995 (= lt!439970 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!152 (regex!2341 (rule!4086 t1!34)) lt!439959 (head!2339 lt!439959)))))

(assert (=> b!1329995 false))

(assert (=> b!1329996 (= e!852046 e!852041)))

(declare-fun res!599158 () Bool)

(assert (=> b!1329996 (=> res!599158 e!852041)))

(assert (=> b!1329996 (= res!599158 (not (matchR!1657 (regex!2341 (rule!4086 t1!34)) lt!439959)))))

(declare-fun lt!439961 () Unit!19631)

(declare-fun forallContained!592 (List!13589 Int Rule!4482) Unit!19631)

(assert (=> b!1329996 (= lt!439961 (forallContained!592 rules!2550 lambda!55273 (rule!4086 t2!34)))))

(declare-fun lt!439945 () Unit!19631)

(assert (=> b!1329996 (= lt!439945 (forallContained!592 rules!2550 lambda!55273 (rule!4086 t1!34)))))

(declare-fun lt!439963 () Unit!19631)

(assert (=> b!1329996 (= lt!439963 (forallContained!592 rules!2550 lambda!55273 lt!439964))))

(declare-fun b!1329997 () Bool)

(assert (=> b!1329997 (= e!852064 e!852060)))

(declare-fun res!599127 () Bool)

(assert (=> b!1329997 (=> res!599127 e!852060)))

(declare-fun contains!2441 (List!13590 Regex!3655) Bool)

(assert (=> b!1329997 (= res!599127 (not (contains!2441 (map!2978 rules!2550 lambda!55270) lt!439952)))))

(declare-fun getWitness!277 (List!13590 Int) Regex!3655)

(assert (=> b!1329997 (= lt!439952 (getWitness!277 (map!2978 rules!2550 lambda!55270) lambda!55271))))

(declare-fun b!1329998 () Bool)

(declare-fun res!599131 () Bool)

(assert (=> b!1329998 (=> (not res!599131) (not e!852063))))

(assert (=> b!1329998 (= res!599131 (rulesProduceIndividualToken!1005 thiss!19762 rules!2550 t2!34))))

(declare-fun b!1329999 () Bool)

(declare-fun e!852059 () Bool)

(assert (=> b!1329999 (= e!852063 e!852059)))

(declare-fun res!599133 () Bool)

(assert (=> b!1329999 (=> (not res!599133) (not e!852059))))

(declare-fun size!11013 (BalanceConc!8844) Int)

(assert (=> b!1329999 (= res!599133 (> (size!11013 lt!439946) 0))))

(declare-fun charsOf!1313 (Token!4344) BalanceConc!8844)

(assert (=> b!1329999 (= lt!439946 (charsOf!1313 t2!34))))

(assert (=> b!1330000 (= e!852050 (and tp!385084 tp!385078))))

(declare-fun b!1330001 () Bool)

(assert (=> b!1330001 (= e!852059 e!852045)))

(declare-fun res!599157 () Bool)

(assert (=> b!1330001 (=> (not res!599157) (not e!852045))))

(declare-fun prefixMatch!168 (Regex!3655 List!13586) Bool)

(assert (=> b!1330001 (= res!599157 (prefixMatch!168 lt!439956 lt!439968))))

(declare-fun rulesRegex!226 (LexerInterface!2036 List!13589) Regex!3655)

(assert (=> b!1330001 (= lt!439956 (rulesRegex!226 thiss!19762 rules!2550))))

(assert (=> b!1330001 (= lt!439968 (++!3454 lt!439959 (Cons!13520 lt!439951 Nil!13520)))))

(declare-fun apply!3135 (BalanceConc!8844 Int) C!7600)

(assert (=> b!1330001 (= lt!439951 (apply!3135 lt!439946 0))))

(declare-fun lt!439950 () BalanceConc!8844)

(assert (=> b!1330001 (= lt!439959 (list!5127 lt!439950))))

(assert (=> b!1330001 (= lt!439950 (charsOf!1313 t1!34))))

(declare-fun b!1330002 () Bool)

(declare-fun res!599136 () Bool)

(assert (=> b!1330002 (=> res!599136 e!852070)))

(assert (=> b!1330002 (= res!599136 (not (contains!2439 lt!439955 lt!439951)))))

(declare-fun b!1330003 () Bool)

(declare-fun res!599138 () Bool)

(assert (=> b!1330003 (=> (not res!599138) (not e!852059))))

(declare-fun separableTokensPredicate!319 (LexerInterface!2036 Token!4344 Token!4344 List!13589) Bool)

(assert (=> b!1330003 (= res!599138 (not (separableTokensPredicate!319 thiss!19762 t1!34 t2!34 rules!2550)))))

(declare-fun b!1330004 () Bool)

(assert (=> b!1330004 (= e!852047 e!852070)))

(declare-fun res!599135 () Bool)

(assert (=> b!1330004 (=> res!599135 e!852070)))

(assert (=> b!1330004 (= res!599135 (not (contains!2439 lt!439968 lt!439949)))))

(assert (=> b!1330004 (= lt!439949 (apply!3135 lt!439950 0))))

(declare-fun b!1330005 () Bool)

(declare-fun res!599153 () Bool)

(assert (=> b!1330005 (=> res!599153 e!852066)))

(assert (=> b!1330005 (= res!599153 (not (isEmpty!8058 (_2!7469 lt!439958))))))

(declare-fun b!1330006 () Bool)

(assert (=> b!1330006 (= e!852055 e!852062)))

(declare-fun res!599139 () Bool)

(assert (=> b!1330006 (=> res!599139 e!852062)))

(declare-fun validRegex!1571 (Regex!3655) Bool)

(assert (=> b!1330006 (= res!599139 (not (validRegex!1571 lt!439952)))))

(assert (=> b!1330006 (not (contains!2439 (usedCharacters!206 (regex!2341 lt!439964)) lt!439949))))

(declare-fun lt!439971 () Unit!19631)

(declare-fun lemmaSepRuleNotContainsCharContainedInANonSepRule!116 (LexerInterface!2036 List!13589 List!13589 Rule!4482 Rule!4482 C!7600) Unit!19631)

(assert (=> b!1330006 (= lt!439971 (lemmaSepRuleNotContainsCharContainedInANonSepRule!116 thiss!19762 rules!2550 rules!2550 (rule!4086 t1!34) lt!439964 lt!439949))))

(declare-fun b!1330007 () Bool)

(declare-fun res!599145 () Bool)

(assert (=> b!1330007 (=> res!599145 e!852065)))

(declare-datatypes ((tuple2!13170 0))(
  ( (tuple2!13171 (_1!7471 List!13588) (_2!7471 List!13586)) )
))
(declare-fun lexList!574 (LexerInterface!2036 List!13589 List!13586) tuple2!13170)

(assert (=> b!1330007 (= res!599145 (not (= (lexList!574 thiss!19762 rules!2550 (list!5127 lt!439948)) (tuple2!13171 lt!439969 Nil!13520))))))

(declare-fun b!1330008 () Bool)

(declare-fun res!599124 () Bool)

(assert (=> b!1330008 (=> (not res!599124) (not e!852059))))

(declare-fun sepAndNonSepRulesDisjointChars!714 (List!13589 List!13589) Bool)

(assert (=> b!1330008 (= res!599124 (sepAndNonSepRulesDisjointChars!714 rules!2550 rules!2550))))

(declare-fun b!1330009 () Bool)

(declare-fun Unit!19636 () Unit!19631)

(assert (=> b!1330009 (= e!852049 Unit!19636)))

(declare-fun e!852056 () Bool)

(declare-fun tp!385080 () Bool)

(declare-fun b!1330010 () Bool)

(declare-fun e!852042 () Bool)

(assert (=> b!1330010 (= e!852056 (and tp!385080 (inv!17867 (tag!2603 (rule!4086 t1!34))) (inv!17870 (transformation!2341 (rule!4086 t1!34))) e!852042))))

(assert (=> b!1330011 (= e!852042 (and tp!385083 tp!385082))))

(declare-fun b!1330012 () Bool)

(assert (=> b!1330012 (= e!852061 e!852040)))

(declare-fun res!599137 () Bool)

(assert (=> b!1330012 (=> res!599137 e!852040)))

(declare-fun lt!439960 () Bool)

(assert (=> b!1330012 (= res!599137 lt!439960)))

(declare-fun lt!439965 () Unit!19631)

(assert (=> b!1330012 (= lt!439965 e!852049)))

(declare-fun c!217998 () Bool)

(assert (=> b!1330012 (= c!217998 lt!439960)))

(assert (=> b!1330012 (= lt!439960 (not (contains!2439 (usedCharacters!206 (regex!2341 (rule!4086 t2!34))) lt!439951)))))

(declare-fun b!1330013 () Bool)

(declare-fun res!599155 () Bool)

(assert (=> b!1330013 (=> res!599155 e!852066)))

(assert (=> b!1330013 (= res!599155 (not (= (lexList!574 thiss!19762 rules!2550 (list!5127 lt!439941)) (tuple2!13171 lt!439966 Nil!13520))))))

(declare-fun tp!385077 () Bool)

(declare-fun b!1330014 () Bool)

(assert (=> b!1330014 (= e!852044 (and (inv!21 (value!76351 t1!34)) e!852056 tp!385077))))

(declare-fun b!1330015 () Bool)

(declare-fun res!599150 () Bool)

(assert (=> b!1330015 (=> res!599150 e!852065)))

(assert (=> b!1330015 (= res!599150 (not (= (maxPrefix!1046 thiss!19762 rules!2550 lt!439959) (Some!2611 (tuple2!13169 t1!34 Nil!13520)))))))

(assert (= (and start!118282 res!599143) b!1329972))

(assert (= (and b!1329972 res!599134) b!1329988))

(assert (= (and b!1329988 res!599144) b!1329991))

(assert (= (and b!1329991 res!599126) b!1329998))

(assert (= (and b!1329998 res!599131) b!1329992))

(assert (= (and b!1329992 res!599125) b!1329999))

(assert (= (and b!1329999 res!599133) b!1330008))

(assert (= (and b!1330008 res!599124) b!1330003))

(assert (= (and b!1330003 res!599138) b!1330001))

(assert (= (and b!1330001 res!599157) b!1329976))

(assert (= (and b!1329976 (not res!599140)) b!1329966))

(assert (= (and b!1329966 (not res!599130)) b!1330004))

(assert (= (and b!1330004 (not res!599135)) b!1329968))

(assert (= (and b!1329968 (not res!599128)) b!1329975))

(assert (= (and b!1329975 (not res!599132)) b!1330002))

(assert (= (and b!1330002 (not res!599136)) b!1329985))

(assert (= (and b!1329985 (not res!599149)) b!1329990))

(assert (= (and b!1329990 (not res!599152)) b!1329997))

(assert (= (and b!1329997 (not res!599127)) b!1329987))

(assert (= (and b!1329987 (not res!599148)) b!1329983))

(assert (= (and b!1329983 (not res!599147)) b!1329967))

(assert (= (and b!1329967 (not res!599129)) b!1330007))

(assert (= (and b!1330007 (not res!599145)) b!1330015))

(assert (= (and b!1330015 (not res!599150)) b!1329971))

(assert (= (and b!1329971 (not res!599156)) b!1329969))

(assert (= (and b!1329969 (not res!599146)) b!1330005))

(assert (= (and b!1330005 (not res!599153)) b!1330013))

(assert (= (and b!1330013 (not res!599155)) b!1329981))

(assert (= (and b!1329981 (not res!599141)) b!1329994))

(assert (= (and b!1329994 (not res!599154)) b!1329986))

(assert (= (and b!1329986 (not res!599151)) b!1329996))

(assert (= (and b!1329996 (not res!599158)) b!1329974))

(assert (= (and b!1329974 (not res!599142)) b!1329970))

(assert (= (and b!1329970 c!217999) b!1329995))

(assert (= (and b!1329970 (not c!217999)) b!1329993))

(assert (= (and b!1329970 (not res!599159)) b!1330012))

(assert (= (and b!1330012 c!217998) b!1329982))

(assert (= (and b!1330012 (not c!217998)) b!1330009))

(assert (= (and b!1330012 (not res!599137)) b!1329973))

(assert (= (and b!1329973 (not res!599123)) b!1330006))

(assert (= (and b!1330006 (not res!599139)) b!1329979))

(assert (= b!1329977 b!1330000))

(assert (= b!1329984 b!1329977))

(assert (= (and start!118282 ((_ is Cons!13523) rules!2550)) b!1329984))

(assert (= b!1330010 b!1330011))

(assert (= b!1330014 b!1330010))

(assert (= start!118282 b!1330014))

(assert (= b!1329980 b!1329978))

(assert (= b!1329989 b!1329980))

(assert (= start!118282 b!1329989))

(declare-fun m!1486929 () Bool)

(assert (=> b!1329985 m!1486929))

(declare-fun m!1486931 () Bool)

(assert (=> b!1330014 m!1486931))

(declare-fun m!1486933 () Bool)

(assert (=> b!1329981 m!1486933))

(declare-fun m!1486935 () Bool)

(assert (=> b!1329981 m!1486935))

(declare-fun m!1486937 () Bool)

(assert (=> b!1329975 m!1486937))

(declare-fun m!1486939 () Bool)

(assert (=> b!1330015 m!1486939))

(declare-fun m!1486941 () Bool)

(assert (=> b!1329967 m!1486941))

(declare-fun m!1486943 () Bool)

(assert (=> b!1329969 m!1486943))

(declare-fun m!1486945 () Bool)

(assert (=> b!1329969 m!1486945))

(declare-fun m!1486947 () Bool)

(assert (=> b!1329969 m!1486947))

(assert (=> b!1329969 m!1486947))

(declare-fun m!1486949 () Bool)

(assert (=> b!1329969 m!1486949))

(declare-fun m!1486951 () Bool)

(assert (=> b!1329994 m!1486951))

(declare-fun m!1486953 () Bool)

(assert (=> b!1330008 m!1486953))

(declare-fun m!1486955 () Bool)

(assert (=> b!1329990 m!1486955))

(declare-fun m!1486957 () Bool)

(assert (=> b!1329990 m!1486957))

(declare-fun m!1486959 () Bool)

(assert (=> b!1329990 m!1486959))

(assert (=> b!1329990 m!1486955))

(declare-fun m!1486961 () Bool)

(assert (=> b!1329990 m!1486961))

(assert (=> b!1329990 m!1486955))

(declare-fun m!1486963 () Bool)

(assert (=> b!1329966 m!1486963))

(assert (=> b!1329966 m!1486963))

(declare-fun m!1486965 () Bool)

(assert (=> b!1329966 m!1486965))

(declare-fun m!1486967 () Bool)

(assert (=> b!1329966 m!1486967))

(declare-fun m!1486969 () Bool)

(assert (=> b!1330001 m!1486969))

(declare-fun m!1486971 () Bool)

(assert (=> b!1330001 m!1486971))

(declare-fun m!1486973 () Bool)

(assert (=> b!1330001 m!1486973))

(declare-fun m!1486975 () Bool)

(assert (=> b!1330001 m!1486975))

(declare-fun m!1486977 () Bool)

(assert (=> b!1330001 m!1486977))

(declare-fun m!1486979 () Bool)

(assert (=> b!1330001 m!1486979))

(declare-fun m!1486981 () Bool)

(assert (=> b!1329968 m!1486981))

(declare-fun m!1486983 () Bool)

(assert (=> b!1330012 m!1486983))

(assert (=> b!1330012 m!1486983))

(declare-fun m!1486985 () Bool)

(assert (=> b!1330012 m!1486985))

(declare-fun m!1486987 () Bool)

(assert (=> b!1329972 m!1486987))

(declare-fun m!1486989 () Bool)

(assert (=> b!1329995 m!1486989))

(assert (=> b!1329995 m!1486989))

(declare-fun m!1486991 () Bool)

(assert (=> b!1329995 m!1486991))

(declare-fun m!1486993 () Bool)

(assert (=> b!1329991 m!1486993))

(declare-fun m!1486995 () Bool)

(assert (=> b!1329983 m!1486995))

(declare-fun m!1486997 () Bool)

(assert (=> b!1329983 m!1486997))

(declare-fun m!1486999 () Bool)

(assert (=> b!1329983 m!1486999))

(declare-fun m!1487001 () Bool)

(assert (=> b!1329983 m!1487001))

(assert (=> b!1329983 m!1486999))

(declare-fun m!1487003 () Bool)

(assert (=> b!1329983 m!1487003))

(declare-fun m!1487005 () Bool)

(assert (=> b!1329971 m!1487005))

(declare-fun m!1487007 () Bool)

(assert (=> b!1329970 m!1487007))

(assert (=> b!1329970 m!1487007))

(declare-fun m!1487009 () Bool)

(assert (=> b!1329970 m!1487009))

(declare-fun m!1487011 () Bool)

(assert (=> b!1329987 m!1487011))

(assert (=> b!1329987 m!1487011))

(declare-fun m!1487013 () Bool)

(assert (=> b!1329987 m!1487013))

(declare-fun m!1487015 () Bool)

(assert (=> start!118282 m!1487015))

(declare-fun m!1487017 () Bool)

(assert (=> start!118282 m!1487017))

(declare-fun m!1487019 () Bool)

(assert (=> b!1329999 m!1487019))

(declare-fun m!1487021 () Bool)

(assert (=> b!1329999 m!1487021))

(declare-fun m!1487023 () Bool)

(assert (=> b!1329977 m!1487023))

(declare-fun m!1487025 () Bool)

(assert (=> b!1329977 m!1487025))

(declare-fun m!1487027 () Bool)

(assert (=> b!1330004 m!1487027))

(declare-fun m!1487029 () Bool)

(assert (=> b!1330004 m!1487029))

(declare-fun m!1487031 () Bool)

(assert (=> b!1330010 m!1487031))

(declare-fun m!1487033 () Bool)

(assert (=> b!1330010 m!1487033))

(declare-fun m!1487035 () Bool)

(assert (=> b!1329988 m!1487035))

(declare-fun m!1487037 () Bool)

(assert (=> b!1329976 m!1487037))

(assert (=> b!1329976 m!1487037))

(declare-fun m!1487039 () Bool)

(assert (=> b!1329976 m!1487039))

(declare-fun m!1487041 () Bool)

(assert (=> b!1329998 m!1487041))

(declare-fun m!1487043 () Bool)

(assert (=> b!1330013 m!1487043))

(assert (=> b!1330013 m!1487043))

(declare-fun m!1487045 () Bool)

(assert (=> b!1330013 m!1487045))

(declare-fun m!1487047 () Bool)

(assert (=> b!1329986 m!1487047))

(declare-fun m!1487049 () Bool)

(assert (=> b!1330003 m!1487049))

(declare-fun m!1487051 () Bool)

(assert (=> b!1329979 m!1487051))

(assert (=> b!1329979 m!1487051))

(declare-fun m!1487053 () Bool)

(assert (=> b!1329979 m!1487053))

(assert (=> b!1329997 m!1486955))

(assert (=> b!1329997 m!1486955))

(declare-fun m!1487055 () Bool)

(assert (=> b!1329997 m!1487055))

(assert (=> b!1329997 m!1486955))

(assert (=> b!1329997 m!1486955))

(declare-fun m!1487057 () Bool)

(assert (=> b!1329997 m!1487057))

(declare-fun m!1487059 () Bool)

(assert (=> b!1329974 m!1487059))

(declare-fun m!1487061 () Bool)

(assert (=> b!1329996 m!1487061))

(declare-fun m!1487063 () Bool)

(assert (=> b!1329996 m!1487063))

(declare-fun m!1487065 () Bool)

(assert (=> b!1329996 m!1487065))

(declare-fun m!1487067 () Bool)

(assert (=> b!1329996 m!1487067))

(declare-fun m!1487069 () Bool)

(assert (=> b!1330006 m!1487069))

(declare-fun m!1487071 () Bool)

(assert (=> b!1330006 m!1487071))

(assert (=> b!1330006 m!1487071))

(declare-fun m!1487073 () Bool)

(assert (=> b!1330006 m!1487073))

(declare-fun m!1487075 () Bool)

(assert (=> b!1330006 m!1487075))

(declare-fun m!1487077 () Bool)

(assert (=> b!1329980 m!1487077))

(declare-fun m!1487079 () Bool)

(assert (=> b!1329980 m!1487079))

(declare-fun m!1487081 () Bool)

(assert (=> b!1329989 m!1487081))

(declare-fun m!1487083 () Bool)

(assert (=> b!1330007 m!1487083))

(assert (=> b!1330007 m!1487083))

(declare-fun m!1487085 () Bool)

(assert (=> b!1330007 m!1487085))

(declare-fun m!1487087 () Bool)

(assert (=> b!1329982 m!1487087))

(assert (=> b!1329982 m!1487087))

(declare-fun m!1487089 () Bool)

(assert (=> b!1329982 m!1487089))

(declare-fun m!1487091 () Bool)

(assert (=> b!1330005 m!1487091))

(declare-fun m!1487093 () Bool)

(assert (=> b!1330002 m!1487093))

(check-sat (not b!1329977) (not b!1329994) (not b!1329999) (not b!1329997) b_and!88851 (not b!1329991) (not b!1329968) (not b!1329983) (not b!1329972) (not b!1330004) (not b_next!32883) (not b_next!32887) (not b!1330007) (not b!1329979) (not b!1329967) (not b_next!32891) (not b!1329996) (not b!1329980) (not b!1329998) b_and!88857 (not b_next!32885) (not b!1330012) (not b!1329990) (not b!1329981) (not b!1329966) (not b!1329995) (not b!1330015) b_and!88853 (not b!1329970) (not b!1329984) (not b!1330006) (not b!1329988) (not b!1329982) (not b!1330001) (not b!1329976) (not b!1329974) (not b!1329986) (not b!1330003) b_and!88849 (not b!1329971) (not b!1330002) (not b!1329975) (not b!1329985) (not start!118282) (not b!1329969) (not b!1330010) (not b_next!32889) (not b!1330013) (not b!1329987) (not b_next!32893) (not b!1330005) b_and!88847 b_and!88855 (not b!1329989) (not b!1330008) (not b!1330014))
(check-sat (not b_next!32891) b_and!88857 (not b_next!32885) b_and!88853 b_and!88851 b_and!88849 (not b_next!32889) (not b_next!32893) b_and!88847 b_and!88855 (not b_next!32883) (not b_next!32887))
