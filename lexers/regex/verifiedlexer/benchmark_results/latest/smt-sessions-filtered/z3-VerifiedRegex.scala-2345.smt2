; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!115642 () Bool)

(assert start!115642)

(declare-fun b!1309934 () Bool)

(declare-fun b_free!31563 () Bool)

(declare-fun b_next!32267 () Bool)

(assert (=> b!1309934 (= b_free!31563 (not b_next!32267))))

(declare-fun tp!381960 () Bool)

(declare-fun b_and!87511 () Bool)

(assert (=> b!1309934 (= tp!381960 b_and!87511)))

(declare-fun b_free!31565 () Bool)

(declare-fun b_next!32269 () Bool)

(assert (=> b!1309934 (= b_free!31565 (not b_next!32269))))

(declare-fun tp!381958 () Bool)

(declare-fun b_and!87513 () Bool)

(assert (=> b!1309934 (= tp!381958 b_and!87513)))

(declare-fun b!1309933 () Bool)

(declare-fun b_free!31567 () Bool)

(declare-fun b_next!32271 () Bool)

(assert (=> b!1309933 (= b_free!31567 (not b_next!32271))))

(declare-fun tp!381964 () Bool)

(declare-fun b_and!87515 () Bool)

(assert (=> b!1309933 (= tp!381964 b_and!87515)))

(declare-fun b_free!31569 () Bool)

(declare-fun b_next!32273 () Bool)

(assert (=> b!1309933 (= b_free!31569 (not b_next!32273))))

(declare-fun tp!381961 () Bool)

(declare-fun b_and!87517 () Bool)

(assert (=> b!1309933 (= tp!381961 b_and!87517)))

(declare-fun b!1309954 () Bool)

(declare-fun b_free!31571 () Bool)

(declare-fun b_next!32275 () Bool)

(assert (=> b!1309954 (= b_free!31571 (not b_next!32275))))

(declare-fun tp!381959 () Bool)

(declare-fun b_and!87519 () Bool)

(assert (=> b!1309954 (= tp!381959 b_and!87519)))

(declare-fun b_free!31573 () Bool)

(declare-fun b_next!32277 () Bool)

(assert (=> b!1309954 (= b_free!31573 (not b_next!32277))))

(declare-fun tp!381962 () Bool)

(declare-fun b_and!87521 () Bool)

(assert (=> b!1309954 (= tp!381962 b_and!87521)))

(declare-fun b!1309939 () Bool)

(assert (=> b!1309939 true))

(assert (=> b!1309939 true))

(declare-fun b!1309930 () Bool)

(assert (=> b!1309930 true))

(declare-fun b!1309937 () Bool)

(assert (=> b!1309937 true))

(declare-fun bs!329740 () Bool)

(declare-fun b!1309935 () Bool)

(assert (= bs!329740 (and b!1309935 b!1309937)))

(declare-fun lambda!52951 () Int)

(declare-fun lambda!52950 () Int)

(assert (=> bs!329740 (not (= lambda!52951 lambda!52950))))

(assert (=> b!1309935 true))

(declare-fun b!1309926 () Bool)

(declare-fun res!588054 () Bool)

(declare-fun e!840045 () Bool)

(assert (=> b!1309926 (=> res!588054 e!840045)))

(declare-datatypes ((LexerInterface!1994 0))(
  ( (LexerInterfaceExt!1991 (__x!8607 Int)) (Lexer!1992) )
))
(declare-fun thiss!19762 () LexerInterface!1994)

(declare-datatypes ((List!13348 0))(
  ( (Nil!13282) (Cons!13282 (h!18683 (_ BitVec 16)) (t!118007 List!13348)) )
))
(declare-datatypes ((TokenValue!2389 0))(
  ( (FloatLiteralValue!4778 (text!17168 List!13348)) (TokenValueExt!2388 (__x!8608 Int)) (Broken!11945 (value!75128 List!13348)) (Object!2454) (End!2389) (Def!2389) (Underscore!2389) (Match!2389) (Else!2389) (Error!2389) (Case!2389) (If!2389) (Extends!2389) (Abstract!2389) (Class!2389) (Val!2389) (DelimiterValue!4778 (del!2449 List!13348)) (KeywordValue!2395 (value!75129 List!13348)) (CommentValue!4778 (value!75130 List!13348)) (WhitespaceValue!4778 (value!75131 List!13348)) (IndentationValue!2389 (value!75132 List!13348)) (String!16180) (Int32!2389) (Broken!11946 (value!75133 List!13348)) (Boolean!2390) (Unit!19337) (OperatorValue!2392 (op!2449 List!13348)) (IdentifierValue!4778 (value!75134 List!13348)) (IdentifierValue!4779 (value!75135 List!13348)) (WhitespaceValue!4779 (value!75136 List!13348)) (True!4778) (False!4778) (Broken!11947 (value!75137 List!13348)) (Broken!11948 (value!75138 List!13348)) (True!4779) (RightBrace!2389) (RightBracket!2389) (Colon!2389) (Null!2389) (Comma!2389) (LeftBracket!2389) (False!4779) (LeftBrace!2389) (ImaginaryLiteralValue!2389 (text!17169 List!13348)) (StringLiteralValue!7167 (value!75139 List!13348)) (EOFValue!2389 (value!75140 List!13348)) (IdentValue!2389 (value!75141 List!13348)) (DelimiterValue!4779 (value!75142 List!13348)) (DedentValue!2389 (value!75143 List!13348)) (NewLineValue!2389 (value!75144 List!13348)) (IntegerValue!7167 (value!75145 (_ BitVec 32)) (text!17170 List!13348)) (IntegerValue!7168 (value!75146 Int) (text!17171 List!13348)) (Times!2389) (Or!2389) (Equal!2389) (Minus!2389) (Broken!11949 (value!75147 List!13348)) (And!2389) (Div!2389) (LessEqual!2389) (Mod!2389) (Concat!6002) (Not!2389) (Plus!2389) (SpaceValue!2389 (value!75148 List!13348)) (IntegerValue!7169 (value!75149 Int) (text!17172 List!13348)) (StringLiteralValue!7168 (text!17173 List!13348)) (FloatLiteralValue!4779 (text!17174 List!13348)) (BytesLiteralValue!2389 (value!75150 List!13348)) (CommentValue!4779 (value!75151 List!13348)) (StringLiteralValue!7169 (value!75152 List!13348)) (ErrorTokenValue!2389 (msg!2450 List!13348)) )
))
(declare-datatypes ((C!7516 0))(
  ( (C!7517 (val!4318 Int)) )
))
(declare-datatypes ((List!13349 0))(
  ( (Nil!13283) (Cons!13283 (h!18684 C!7516) (t!118008 List!13349)) )
))
(declare-datatypes ((IArray!8741 0))(
  ( (IArray!8742 (innerList!4428 List!13349)) )
))
(declare-datatypes ((String!16181 0))(
  ( (String!16182 (value!75153 String)) )
))
(declare-datatypes ((Conc!4368 0))(
  ( (Node!4368 (left!11423 Conc!4368) (right!11753 Conc!4368) (csize!8966 Int) (cheight!4579 Int)) (Leaf!6714 (xs!7083 IArray!8741) (csize!8967 Int)) (Empty!4368) )
))
(declare-datatypes ((BalanceConc!8676 0))(
  ( (BalanceConc!8677 (c!214934 Conc!4368)) )
))
(declare-datatypes ((Regex!3613 0))(
  ( (ElementMatch!3613 (c!214935 C!7516)) (Concat!6003 (regOne!7738 Regex!3613) (regTwo!7738 Regex!3613)) (EmptyExpr!3613) (Star!3613 (reg!3942 Regex!3613)) (EmptyLang!3613) (Union!3613 (regOne!7739 Regex!3613) (regTwo!7739 Regex!3613)) )
))
(declare-datatypes ((TokenValueInjection!4438 0))(
  ( (TokenValueInjection!4439 (toValue!3518 Int) (toChars!3377 Int)) )
))
(declare-datatypes ((Rule!4398 0))(
  ( (Rule!4399 (regex!2299 Regex!3613) (tag!2561 String!16181) (isSeparator!2299 Bool) (transformation!2299 TokenValueInjection!4438)) )
))
(declare-datatypes ((Token!4260 0))(
  ( (Token!4261 (value!75154 TokenValue!2389) (rule!4038 Rule!4398) (size!10790 Int) (originalCharacters!3161 List!13349)) )
))
(declare-datatypes ((List!13350 0))(
  ( (Nil!13284) (Cons!13284 (h!18685 Token!4260) (t!118009 List!13350)) )
))
(declare-fun lt!431408 () List!13350)

(declare-fun lt!431415 () BalanceConc!8676)

(declare-datatypes ((List!13351 0))(
  ( (Nil!13285) (Cons!13285 (h!18686 Rule!4398) (t!118010 List!13351)) )
))
(declare-fun rules!2550 () List!13351)

(declare-datatypes ((tuple2!12890 0))(
  ( (tuple2!12891 (_1!7331 List!13350) (_2!7331 List!13349)) )
))
(declare-fun lexList!532 (LexerInterface!1994 List!13351 List!13349) tuple2!12890)

(declare-fun list!4986 (BalanceConc!8676) List!13349)

(assert (=> b!1309926 (= res!588054 (not (= (lexList!532 thiss!19762 rules!2550 (list!4986 lt!431415)) (tuple2!12891 lt!431408 Nil!13283))))))

(declare-fun b!1309927 () Bool)

(declare-fun e!840048 () Bool)

(declare-fun e!840051 () Bool)

(assert (=> b!1309927 (= e!840048 e!840051)))

(declare-fun res!588049 () Bool)

(assert (=> b!1309927 (=> res!588049 e!840051)))

(declare-fun lt!431413 () Regex!3613)

(declare-fun lambda!52948 () Int)

(declare-datatypes ((List!13352 0))(
  ( (Nil!13286) (Cons!13286 (h!18687 Regex!3613) (t!118011 List!13352)) )
))
(declare-fun contains!2307 (List!13352 Regex!3613) Bool)

(declare-fun map!2915 (List!13351 Int) List!13352)

(assert (=> b!1309927 (= res!588049 (not (contains!2307 (map!2915 rules!2550 lambda!52948) lt!431413)))))

(declare-fun lambda!52949 () Int)

(declare-fun getWitness!192 (List!13352 Int) Regex!3613)

(assert (=> b!1309927 (= lt!431413 (getWitness!192 (map!2915 rules!2550 lambda!52948) lambda!52949))))

(declare-fun b!1309928 () Bool)

(declare-fun res!588064 () Bool)

(declare-fun e!840032 () Bool)

(assert (=> b!1309928 (=> (not res!588064) (not e!840032))))

(declare-fun sepAndNonSepRulesDisjointChars!672 (List!13351 List!13351) Bool)

(assert (=> b!1309928 (= res!588064 (sepAndNonSepRulesDisjointChars!672 rules!2550 rules!2550))))

(declare-fun b!1309929 () Bool)

(declare-fun res!588046 () Bool)

(declare-fun e!840040 () Bool)

(assert (=> b!1309929 (=> (not res!588046) (not e!840040))))

(declare-fun rulesInvariant!1864 (LexerInterface!1994 List!13351) Bool)

(assert (=> b!1309929 (= res!588046 (rulesInvariant!1864 thiss!19762 rules!2550))))

(declare-fun e!840050 () Bool)

(assert (=> b!1309930 (= e!840050 e!840048)))

(declare-fun res!588073 () Bool)

(assert (=> b!1309930 (=> res!588073 e!840048)))

(declare-fun exists!300 (List!13352 Int) Bool)

(assert (=> b!1309930 (= res!588073 (not (exists!300 (map!2915 rules!2550 lambda!52948) lambda!52949)))))

(declare-fun lt!431420 () List!13352)

(assert (=> b!1309930 (exists!300 lt!431420 lambda!52949)))

(declare-datatypes ((Unit!19338 0))(
  ( (Unit!19339) )
))
(declare-fun lt!431416 () Unit!19338)

(declare-fun lt!431419 () Regex!3613)

(declare-fun lt!431412 () List!13349)

(declare-fun matchRGenUnionSpec!50 (Regex!3613 List!13352 List!13349) Unit!19338)

(assert (=> b!1309930 (= lt!431416 (matchRGenUnionSpec!50 lt!431419 lt!431420 lt!431412))))

(assert (=> b!1309930 (= lt!431420 (map!2915 rules!2550 lambda!52948))))

(declare-fun b!1309931 () Bool)

(declare-fun res!588060 () Bool)

(declare-fun e!840047 () Bool)

(assert (=> b!1309931 (=> res!588060 e!840047)))

(declare-fun lt!431405 () BalanceConc!8676)

(declare-fun t2!34 () Token!4260)

(declare-datatypes ((tuple2!12892 0))(
  ( (tuple2!12893 (_1!7332 Token!4260) (_2!7332 List!13349)) )
))
(declare-datatypes ((Option!2564 0))(
  ( (None!2563) (Some!2563 (v!21077 tuple2!12892)) )
))
(declare-fun maxPrefix!1004 (LexerInterface!1994 List!13351 List!13349) Option!2564)

(assert (=> b!1309931 (= res!588060 (not (= (maxPrefix!1004 thiss!19762 rules!2550 (list!4986 lt!431405)) (Some!2563 (tuple2!12893 t2!34 Nil!13283)))))))

(declare-fun b!1309932 () Bool)

(declare-fun e!840049 () Bool)

(assert (=> b!1309932 (= e!840049 e!840050)))

(declare-fun res!588058 () Bool)

(assert (=> b!1309932 (=> res!588058 e!840050)))

(declare-fun lt!431414 () List!13349)

(declare-fun lt!431418 () C!7516)

(declare-fun contains!2308 (List!13349 C!7516) Bool)

(assert (=> b!1309932 (= res!588058 (not (contains!2308 lt!431414 lt!431418)))))

(declare-fun lt!431411 () BalanceConc!8676)

(declare-fun apply!2987 (BalanceConc!8676 Int) C!7516)

(assert (=> b!1309932 (= lt!431418 (apply!2987 lt!431411 0))))

(declare-fun e!840033 () Bool)

(assert (=> b!1309933 (= e!840033 (and tp!381964 tp!381961))))

(declare-fun e!840041 () Bool)

(assert (=> b!1309934 (= e!840041 (and tp!381960 tp!381958))))

(declare-fun res!588055 () Bool)

(assert (=> start!115642 (=> (not res!588055) (not e!840040))))

(get-info :version)

(assert (=> start!115642 (= res!588055 ((_ is Lexer!1992) thiss!19762))))

(assert (=> start!115642 e!840040))

(assert (=> start!115642 true))

(declare-fun e!840036 () Bool)

(assert (=> start!115642 e!840036))

(declare-fun t1!34 () Token!4260)

(declare-fun e!840042 () Bool)

(declare-fun inv!17661 (Token!4260) Bool)

(assert (=> start!115642 (and (inv!17661 t1!34) e!840042)))

(declare-fun e!840046 () Bool)

(assert (=> start!115642 (and (inv!17661 t2!34) e!840046)))

(declare-fun forall!3280 (List!13351 Int) Bool)

(assert (=> b!1309935 (= e!840047 (forall!3280 rules!2550 lambda!52951))))

(declare-fun b!1309936 () Bool)

(declare-fun e!840034 () Bool)

(assert (=> b!1309936 (= e!840032 e!840034)))

(declare-fun res!588066 () Bool)

(assert (=> b!1309936 (=> (not res!588066) (not e!840034))))

(declare-fun prefixMatch!126 (Regex!3613 List!13349) Bool)

(assert (=> b!1309936 (= res!588066 (prefixMatch!126 lt!431419 lt!431414))))

(declare-fun rulesRegex!184 (LexerInterface!1994 List!13351) Regex!3613)

(assert (=> b!1309936 (= lt!431419 (rulesRegex!184 thiss!19762 rules!2550))))

(declare-fun lt!431402 () List!13349)

(declare-fun lt!431407 () C!7516)

(declare-fun ++!3378 (List!13349 List!13349) List!13349)

(assert (=> b!1309936 (= lt!431414 (++!3378 lt!431402 (Cons!13283 lt!431407 Nil!13283)))))

(assert (=> b!1309936 (= lt!431407 (apply!2987 lt!431405 0))))

(assert (=> b!1309936 (= lt!431402 (list!4986 lt!431411))))

(declare-fun charsOf!1271 (Token!4260) BalanceConc!8676)

(assert (=> b!1309936 (= lt!431411 (charsOf!1271 t1!34))))

(declare-fun e!840039 () Bool)

(assert (=> b!1309937 (= e!840051 e!840039)))

(declare-fun res!588057 () Bool)

(assert (=> b!1309937 (=> res!588057 e!840039)))

(declare-fun exists!301 (List!13351 Int) Bool)

(assert (=> b!1309937 (= res!588057 (not (exists!301 rules!2550 lambda!52950)))))

(assert (=> b!1309937 (exists!301 rules!2550 lambda!52950)))

(declare-fun lt!431406 () Unit!19338)

(declare-fun lemmaMapContains!42 (List!13351 Int Regex!3613) Unit!19338)

(assert (=> b!1309937 (= lt!431406 (lemmaMapContains!42 rules!2550 lambda!52948 lt!431413))))

(declare-fun b!1309938 () Bool)

(declare-fun res!588062 () Bool)

(assert (=> b!1309938 (=> res!588062 e!840050)))

(declare-fun matchR!1615 (Regex!3613 List!13349) Bool)

(assert (=> b!1309938 (= res!588062 (not (matchR!1615 lt!431419 lt!431412)))))

(declare-fun e!840037 () Bool)

(assert (=> b!1309939 (= e!840034 (not e!840037))))

(declare-fun res!588071 () Bool)

(assert (=> b!1309939 (=> res!588071 e!840037)))

(declare-fun lambda!52947 () Int)

(declare-fun Exists!771 (Int) Bool)

(assert (=> b!1309939 (= res!588071 (not (Exists!771 lambda!52947)))))

(assert (=> b!1309939 (Exists!771 lambda!52947)))

(declare-fun lt!431417 () Unit!19338)

(declare-fun lemmaPrefixMatchThenExistsStringThatMatches!89 (Regex!3613 List!13349) Unit!19338)

(assert (=> b!1309939 (= lt!431417 (lemmaPrefixMatchThenExistsStringThatMatches!89 lt!431419 lt!431414))))

(declare-fun b!1309940 () Bool)

(declare-fun res!588074 () Bool)

(assert (=> b!1309940 (=> (not res!588074) (not e!840040))))

(declare-fun isEmpty!7852 (List!13351) Bool)

(assert (=> b!1309940 (= res!588074 (not (isEmpty!7852 rules!2550)))))

(declare-fun b!1309941 () Bool)

(assert (=> b!1309941 (= e!840039 e!840045)))

(declare-fun res!588061 () Bool)

(assert (=> b!1309941 (=> res!588061 e!840045)))

(declare-datatypes ((IArray!8743 0))(
  ( (IArray!8744 (innerList!4429 List!13350)) )
))
(declare-datatypes ((Conc!4369 0))(
  ( (Node!4369 (left!11424 Conc!4369) (right!11754 Conc!4369) (csize!8968 Int) (cheight!4580 Int)) (Leaf!6715 (xs!7084 IArray!8743) (csize!8969 Int)) (Empty!4369) )
))
(declare-datatypes ((BalanceConc!8678 0))(
  ( (BalanceConc!8679 (c!214936 Conc!4369)) )
))
(declare-datatypes ((tuple2!12894 0))(
  ( (tuple2!12895 (_1!7333 BalanceConc!8678) (_2!7333 BalanceConc!8676)) )
))
(declare-fun lt!431403 () tuple2!12894)

(declare-fun list!4987 (BalanceConc!8678) List!13350)

(assert (=> b!1309941 (= res!588061 (not (= (list!4987 (_1!7333 lt!431403)) lt!431408)))))

(assert (=> b!1309941 (= lt!431408 (Cons!13284 t1!34 Nil!13284))))

(declare-fun lex!829 (LexerInterface!1994 List!13351 BalanceConc!8676) tuple2!12894)

(assert (=> b!1309941 (= lt!431403 (lex!829 thiss!19762 rules!2550 lt!431415))))

(declare-fun print!768 (LexerInterface!1994 BalanceConc!8678) BalanceConc!8676)

(declare-fun singletonSeq!872 (Token!4260) BalanceConc!8678)

(assert (=> b!1309941 (= lt!431415 (print!768 thiss!19762 (singletonSeq!872 t1!34)))))

(declare-fun lt!431410 () Rule!4398)

(declare-fun getWitness!193 (List!13351 Int) Rule!4398)

(assert (=> b!1309941 (= lt!431410 (getWitness!193 rules!2550 lambda!52950))))

(declare-fun b!1309942 () Bool)

(declare-fun res!588050 () Bool)

(assert (=> b!1309942 (=> res!588050 e!840047)))

(declare-fun lt!431401 () List!13350)

(declare-fun lt!431409 () BalanceConc!8676)

(assert (=> b!1309942 (= res!588050 (not (= (lexList!532 thiss!19762 rules!2550 (list!4986 lt!431409)) (tuple2!12891 lt!431401 Nil!13283))))))

(declare-fun b!1309943 () Bool)

(declare-fun tp!381957 () Bool)

(declare-fun e!840055 () Bool)

(declare-fun inv!21 (TokenValue!2389) Bool)

(assert (=> b!1309943 (= e!840042 (and (inv!21 (value!75154 t1!34)) e!840055 tp!381957))))

(declare-fun b!1309944 () Bool)

(declare-fun e!840044 () Bool)

(declare-fun tp!381966 () Bool)

(assert (=> b!1309944 (= e!840036 (and e!840044 tp!381966))))

(declare-fun b!1309945 () Bool)

(declare-fun res!588065 () Bool)

(assert (=> b!1309945 (=> res!588065 e!840045)))

(declare-fun isEmpty!7853 (BalanceConc!8676) Bool)

(assert (=> b!1309945 (= res!588065 (not (isEmpty!7853 (_2!7333 lt!431403))))))

(declare-fun b!1309946 () Bool)

(assert (=> b!1309946 (= e!840040 e!840032)))

(declare-fun res!588076 () Bool)

(assert (=> b!1309946 (=> (not res!588076) (not e!840032))))

(declare-fun size!10791 (BalanceConc!8676) Int)

(assert (=> b!1309946 (= res!588076 (> (size!10791 lt!431405) 0))))

(assert (=> b!1309946 (= lt!431405 (charsOf!1271 t2!34))))

(declare-fun b!1309947 () Bool)

(declare-fun res!588056 () Bool)

(assert (=> b!1309947 (=> (not res!588056) (not e!840040))))

(declare-fun rulesProduceIndividualToken!963 (LexerInterface!1994 List!13351 Token!4260) Bool)

(assert (=> b!1309947 (= res!588056 (rulesProduceIndividualToken!963 thiss!19762 rules!2550 t1!34))))

(declare-fun b!1309948 () Bool)

(declare-fun res!588068 () Bool)

(assert (=> b!1309948 (=> (not res!588068) (not e!840040))))

(assert (=> b!1309948 (= res!588068 (rulesProduceIndividualToken!963 thiss!19762 rules!2550 t2!34))))

(declare-fun e!840056 () Bool)

(declare-fun b!1309949 () Bool)

(declare-fun tp!381967 () Bool)

(assert (=> b!1309949 (= e!840046 (and (inv!21 (value!75154 t2!34)) e!840056 tp!381967))))

(declare-fun b!1309950 () Bool)

(declare-fun res!588047 () Bool)

(assert (=> b!1309950 (=> res!588047 e!840050)))

(assert (=> b!1309950 (= res!588047 (not (contains!2308 lt!431412 lt!431407)))))

(declare-fun tp!381965 () Bool)

(declare-fun b!1309951 () Bool)

(declare-fun inv!17658 (String!16181) Bool)

(declare-fun inv!17662 (TokenValueInjection!4438) Bool)

(assert (=> b!1309951 (= e!840044 (and tp!381965 (inv!17658 (tag!2561 (h!18686 rules!2550))) (inv!17662 (transformation!2299 (h!18686 rules!2550))) e!840041))))

(declare-fun tp!381968 () Bool)

(declare-fun b!1309952 () Bool)

(declare-fun e!840054 () Bool)

(assert (=> b!1309952 (= e!840056 (and tp!381968 (inv!17658 (tag!2561 (rule!4038 t2!34))) (inv!17662 (transformation!2299 (rule!4038 t2!34))) e!840054))))

(declare-fun b!1309953 () Bool)

(declare-fun res!588048 () Bool)

(assert (=> b!1309953 (=> res!588048 e!840047)))

(declare-fun contains!2309 (List!13351 Rule!4398) Bool)

(assert (=> b!1309953 (= res!588048 (not (contains!2309 rules!2550 (rule!4038 t2!34))))))

(assert (=> b!1309954 (= e!840054 (and tp!381959 tp!381962))))

(declare-fun b!1309955 () Bool)

(declare-fun res!588059 () Bool)

(assert (=> b!1309955 (=> res!588059 e!840047)))

(declare-fun lt!431404 () tuple2!12894)

(assert (=> b!1309955 (= res!588059 (not (isEmpty!7853 (_2!7333 lt!431404))))))

(declare-fun b!1309956 () Bool)

(declare-fun res!588051 () Bool)

(assert (=> b!1309956 (=> res!588051 e!840050)))

(assert (=> b!1309956 (= res!588051 (not (contains!2308 lt!431412 lt!431418)))))

(declare-fun b!1309957 () Bool)

(declare-fun tp!381963 () Bool)

(assert (=> b!1309957 (= e!840055 (and tp!381963 (inv!17658 (tag!2561 (rule!4038 t1!34))) (inv!17662 (transformation!2299 (rule!4038 t1!34))) e!840033))))

(declare-fun b!1309958 () Bool)

(declare-fun res!588053 () Bool)

(assert (=> b!1309958 (=> res!588053 e!840045)))

(assert (=> b!1309958 (= res!588053 (not (= (maxPrefix!1004 thiss!19762 rules!2550 lt!431402) (Some!2563 (tuple2!12893 t1!34 Nil!13283)))))))

(declare-fun b!1309959 () Bool)

(assert (=> b!1309959 (= e!840037 e!840049)))

(declare-fun res!588072 () Bool)

(assert (=> b!1309959 (=> res!588072 e!840049)))

(declare-fun getSuffix!469 (List!13349 List!13349) List!13349)

(assert (=> b!1309959 (= res!588072 (not (= lt!431412 (++!3378 lt!431414 (getSuffix!469 lt!431412 lt!431414)))))))

(declare-fun pickWitness!76 (Int) List!13349)

(assert (=> b!1309959 (= lt!431412 (pickWitness!76 lambda!52947))))

(declare-fun b!1309960 () Bool)

(declare-fun res!588070 () Bool)

(assert (=> b!1309960 (=> res!588070 e!840047)))

(assert (=> b!1309960 (= res!588070 (not (contains!2309 rules!2550 lt!431410)))))

(declare-fun b!1309961 () Bool)

(declare-fun res!588069 () Bool)

(assert (=> b!1309961 (=> res!588069 e!840050)))

(assert (=> b!1309961 (= res!588069 (not (contains!2308 lt!431414 lt!431407)))))

(declare-fun b!1309962 () Bool)

(declare-fun res!588067 () Bool)

(assert (=> b!1309962 (=> (not res!588067) (not e!840040))))

(assert (=> b!1309962 (= res!588067 (not (= (isSeparator!2299 (rule!4038 t1!34)) (isSeparator!2299 (rule!4038 t2!34)))))))

(declare-fun b!1309963 () Bool)

(declare-fun res!588075 () Bool)

(assert (=> b!1309963 (=> (not res!588075) (not e!840032))))

(declare-fun separableTokensPredicate!277 (LexerInterface!1994 Token!4260 Token!4260 List!13351) Bool)

(assert (=> b!1309963 (= res!588075 (not (separableTokensPredicate!277 thiss!19762 t1!34 t2!34 rules!2550)))))

(declare-fun b!1309964 () Bool)

(assert (=> b!1309964 (= e!840045 e!840047)))

(declare-fun res!588052 () Bool)

(assert (=> b!1309964 (=> res!588052 e!840047)))

(assert (=> b!1309964 (= res!588052 (not (= (list!4987 (_1!7333 lt!431404)) lt!431401)))))

(assert (=> b!1309964 (= lt!431401 (Cons!13284 t2!34 Nil!13284))))

(assert (=> b!1309964 (= lt!431404 (lex!829 thiss!19762 rules!2550 lt!431409))))

(assert (=> b!1309964 (= lt!431409 (print!768 thiss!19762 (singletonSeq!872 t2!34)))))

(declare-fun b!1309965 () Bool)

(declare-fun res!588063 () Bool)

(assert (=> b!1309965 (=> res!588063 e!840045)))

(assert (=> b!1309965 (= res!588063 (not (contains!2309 rules!2550 (rule!4038 t1!34))))))

(assert (= (and start!115642 res!588055) b!1309940))

(assert (= (and b!1309940 res!588074) b!1309929))

(assert (= (and b!1309929 res!588046) b!1309947))

(assert (= (and b!1309947 res!588056) b!1309948))

(assert (= (and b!1309948 res!588068) b!1309962))

(assert (= (and b!1309962 res!588067) b!1309946))

(assert (= (and b!1309946 res!588076) b!1309928))

(assert (= (and b!1309928 res!588064) b!1309963))

(assert (= (and b!1309963 res!588075) b!1309936))

(assert (= (and b!1309936 res!588066) b!1309939))

(assert (= (and b!1309939 (not res!588071)) b!1309959))

(assert (= (and b!1309959 (not res!588072)) b!1309932))

(assert (= (and b!1309932 (not res!588058)) b!1309956))

(assert (= (and b!1309956 (not res!588051)) b!1309961))

(assert (= (and b!1309961 (not res!588069)) b!1309950))

(assert (= (and b!1309950 (not res!588047)) b!1309938))

(assert (= (and b!1309938 (not res!588062)) b!1309930))

(assert (= (and b!1309930 (not res!588073)) b!1309927))

(assert (= (and b!1309927 (not res!588049)) b!1309937))

(assert (= (and b!1309937 (not res!588057)) b!1309941))

(assert (= (and b!1309941 (not res!588061)) b!1309945))

(assert (= (and b!1309945 (not res!588065)) b!1309926))

(assert (= (and b!1309926 (not res!588054)) b!1309958))

(assert (= (and b!1309958 (not res!588053)) b!1309965))

(assert (= (and b!1309965 (not res!588063)) b!1309964))

(assert (= (and b!1309964 (not res!588052)) b!1309955))

(assert (= (and b!1309955 (not res!588059)) b!1309942))

(assert (= (and b!1309942 (not res!588050)) b!1309931))

(assert (= (and b!1309931 (not res!588060)) b!1309953))

(assert (= (and b!1309953 (not res!588048)) b!1309960))

(assert (= (and b!1309960 (not res!588070)) b!1309935))

(assert (= b!1309951 b!1309934))

(assert (= b!1309944 b!1309951))

(assert (= (and start!115642 ((_ is Cons!13285) rules!2550)) b!1309944))

(assert (= b!1309957 b!1309933))

(assert (= b!1309943 b!1309957))

(assert (= start!115642 b!1309943))

(assert (= b!1309952 b!1309954))

(assert (= b!1309949 b!1309952))

(assert (= start!115642 b!1309949))

(declare-fun m!1461501 () Bool)

(assert (=> b!1309948 m!1461501))

(declare-fun m!1461503 () Bool)

(assert (=> b!1309951 m!1461503))

(declare-fun m!1461505 () Bool)

(assert (=> b!1309951 m!1461505))

(declare-fun m!1461507 () Bool)

(assert (=> b!1309955 m!1461507))

(declare-fun m!1461509 () Bool)

(assert (=> b!1309929 m!1461509))

(declare-fun m!1461511 () Bool)

(assert (=> b!1309939 m!1461511))

(assert (=> b!1309939 m!1461511))

(declare-fun m!1461513 () Bool)

(assert (=> b!1309939 m!1461513))

(declare-fun m!1461515 () Bool)

(assert (=> b!1309926 m!1461515))

(assert (=> b!1309926 m!1461515))

(declare-fun m!1461517 () Bool)

(assert (=> b!1309926 m!1461517))

(declare-fun m!1461519 () Bool)

(assert (=> b!1309940 m!1461519))

(declare-fun m!1461521 () Bool)

(assert (=> b!1309953 m!1461521))

(declare-fun m!1461523 () Bool)

(assert (=> b!1309928 m!1461523))

(declare-fun m!1461525 () Bool)

(assert (=> b!1309958 m!1461525))

(declare-fun m!1461527 () Bool)

(assert (=> b!1309943 m!1461527))

(declare-fun m!1461529 () Bool)

(assert (=> b!1309935 m!1461529))

(declare-fun m!1461531 () Bool)

(assert (=> b!1309952 m!1461531))

(declare-fun m!1461533 () Bool)

(assert (=> b!1309952 m!1461533))

(declare-fun m!1461535 () Bool)

(assert (=> b!1309938 m!1461535))

(declare-fun m!1461537 () Bool)

(assert (=> b!1309931 m!1461537))

(assert (=> b!1309931 m!1461537))

(declare-fun m!1461539 () Bool)

(assert (=> b!1309931 m!1461539))

(declare-fun m!1461541 () Bool)

(assert (=> b!1309963 m!1461541))

(declare-fun m!1461543 () Bool)

(assert (=> b!1309950 m!1461543))

(declare-fun m!1461545 () Bool)

(assert (=> b!1309941 m!1461545))

(declare-fun m!1461547 () Bool)

(assert (=> b!1309941 m!1461547))

(declare-fun m!1461549 () Bool)

(assert (=> b!1309941 m!1461549))

(declare-fun m!1461551 () Bool)

(assert (=> b!1309941 m!1461551))

(assert (=> b!1309941 m!1461549))

(declare-fun m!1461553 () Bool)

(assert (=> b!1309941 m!1461553))

(declare-fun m!1461555 () Bool)

(assert (=> b!1309932 m!1461555))

(declare-fun m!1461557 () Bool)

(assert (=> b!1309932 m!1461557))

(declare-fun m!1461559 () Bool)

(assert (=> b!1309959 m!1461559))

(assert (=> b!1309959 m!1461559))

(declare-fun m!1461561 () Bool)

(assert (=> b!1309959 m!1461561))

(declare-fun m!1461563 () Bool)

(assert (=> b!1309959 m!1461563))

(declare-fun m!1461565 () Bool)

(assert (=> b!1309964 m!1461565))

(declare-fun m!1461567 () Bool)

(assert (=> b!1309964 m!1461567))

(declare-fun m!1461569 () Bool)

(assert (=> b!1309964 m!1461569))

(assert (=> b!1309964 m!1461569))

(declare-fun m!1461571 () Bool)

(assert (=> b!1309964 m!1461571))

(declare-fun m!1461573 () Bool)

(assert (=> b!1309949 m!1461573))

(declare-fun m!1461575 () Bool)

(assert (=> b!1309947 m!1461575))

(declare-fun m!1461577 () Bool)

(assert (=> b!1309956 m!1461577))

(declare-fun m!1461579 () Bool)

(assert (=> b!1309960 m!1461579))

(declare-fun m!1461581 () Bool)

(assert (=> b!1309930 m!1461581))

(assert (=> b!1309930 m!1461581))

(assert (=> b!1309930 m!1461581))

(declare-fun m!1461583 () Bool)

(assert (=> b!1309930 m!1461583))

(declare-fun m!1461585 () Bool)

(assert (=> b!1309930 m!1461585))

(declare-fun m!1461587 () Bool)

(assert (=> b!1309930 m!1461587))

(declare-fun m!1461589 () Bool)

(assert (=> b!1309961 m!1461589))

(declare-fun m!1461591 () Bool)

(assert (=> b!1309946 m!1461591))

(declare-fun m!1461593 () Bool)

(assert (=> b!1309946 m!1461593))

(assert (=> b!1309927 m!1461581))

(assert (=> b!1309927 m!1461581))

(declare-fun m!1461595 () Bool)

(assert (=> b!1309927 m!1461595))

(assert (=> b!1309927 m!1461581))

(assert (=> b!1309927 m!1461581))

(declare-fun m!1461597 () Bool)

(assert (=> b!1309927 m!1461597))

(declare-fun m!1461599 () Bool)

(assert (=> start!115642 m!1461599))

(declare-fun m!1461601 () Bool)

(assert (=> start!115642 m!1461601))

(declare-fun m!1461603 () Bool)

(assert (=> b!1309965 m!1461603))

(declare-fun m!1461605 () Bool)

(assert (=> b!1309957 m!1461605))

(declare-fun m!1461607 () Bool)

(assert (=> b!1309957 m!1461607))

(declare-fun m!1461609 () Bool)

(assert (=> b!1309945 m!1461609))

(declare-fun m!1461611 () Bool)

(assert (=> b!1309936 m!1461611))

(declare-fun m!1461613 () Bool)

(assert (=> b!1309936 m!1461613))

(declare-fun m!1461615 () Bool)

(assert (=> b!1309936 m!1461615))

(declare-fun m!1461617 () Bool)

(assert (=> b!1309936 m!1461617))

(declare-fun m!1461619 () Bool)

(assert (=> b!1309936 m!1461619))

(declare-fun m!1461621 () Bool)

(assert (=> b!1309936 m!1461621))

(declare-fun m!1461623 () Bool)

(assert (=> b!1309942 m!1461623))

(assert (=> b!1309942 m!1461623))

(declare-fun m!1461625 () Bool)

(assert (=> b!1309942 m!1461625))

(declare-fun m!1461627 () Bool)

(assert (=> b!1309937 m!1461627))

(assert (=> b!1309937 m!1461627))

(declare-fun m!1461629 () Bool)

(assert (=> b!1309937 m!1461629))

(check-sat (not b!1309950) (not b!1309938) (not b!1309964) b_and!87513 (not b!1309930) (not b_next!32277) (not b!1309955) (not b_next!32267) (not b!1309932) (not b!1309963) b_and!87519 (not b!1309956) (not b!1309945) (not b!1309926) (not b!1309936) (not b_next!32271) (not b_next!32275) (not b!1309935) (not start!115642) (not b!1309942) (not b!1309943) (not b!1309929) b_and!87511 (not b!1309928) (not b_next!32269) (not b!1309952) (not b!1309960) (not b!1309944) (not b!1309959) (not b!1309947) (not b!1309941) (not b!1309949) (not b!1309946) (not b!1309931) b_and!87515 (not b!1309953) (not b!1309940) (not b!1309961) (not b!1309951) (not b!1309957) (not b!1309965) b_and!87521 (not b_next!32273) (not b!1309948) (not b!1309937) (not b!1309958) (not b!1309927) b_and!87517 (not b!1309939))
(check-sat (not b_next!32271) (not b_next!32275) b_and!87513 (not b_next!32277) (not b_next!32267) b_and!87515 b_and!87519 b_and!87517 b_and!87511 (not b_next!32269) b_and!87521 (not b_next!32273))
(get-model)

(declare-fun b!1310067 () Bool)

(declare-fun e!840115 () tuple2!12890)

(declare-fun lt!431456 () Option!2564)

(declare-fun lt!431454 () tuple2!12890)

(assert (=> b!1310067 (= e!840115 (tuple2!12891 (Cons!13284 (_1!7332 (v!21077 lt!431456)) (_1!7331 lt!431454)) (_2!7331 lt!431454)))))

(assert (=> b!1310067 (= lt!431454 (lexList!532 thiss!19762 rules!2550 (_2!7332 (v!21077 lt!431456))))))

(declare-fun b!1310068 () Bool)

(declare-fun e!840117 () Bool)

(declare-fun lt!431455 () tuple2!12890)

(assert (=> b!1310068 (= e!840117 (= (_2!7331 lt!431455) (list!4986 lt!431415)))))

(declare-fun d!368760 () Bool)

(assert (=> d!368760 e!840117))

(declare-fun c!214957 () Bool)

(declare-fun size!10796 (List!13350) Int)

(assert (=> d!368760 (= c!214957 (> (size!10796 (_1!7331 lt!431455)) 0))))

(assert (=> d!368760 (= lt!431455 e!840115)))

(declare-fun c!214956 () Bool)

(assert (=> d!368760 (= c!214956 ((_ is Some!2563) lt!431456))))

(assert (=> d!368760 (= lt!431456 (maxPrefix!1004 thiss!19762 rules!2550 (list!4986 lt!431415)))))

(assert (=> d!368760 (= (lexList!532 thiss!19762 rules!2550 (list!4986 lt!431415)) lt!431455)))

(declare-fun b!1310069 () Bool)

(declare-fun e!840116 () Bool)

(assert (=> b!1310069 (= e!840117 e!840116)))

(declare-fun res!588126 () Bool)

(declare-fun size!10797 (List!13349) Int)

(assert (=> b!1310069 (= res!588126 (< (size!10797 (_2!7331 lt!431455)) (size!10797 (list!4986 lt!431415))))))

(assert (=> b!1310069 (=> (not res!588126) (not e!840116))))

(declare-fun b!1310070 () Bool)

(declare-fun isEmpty!7858 (List!13350) Bool)

(assert (=> b!1310070 (= e!840116 (not (isEmpty!7858 (_1!7331 lt!431455))))))

(declare-fun b!1310071 () Bool)

(assert (=> b!1310071 (= e!840115 (tuple2!12891 Nil!13284 (list!4986 lt!431415)))))

(assert (= (and d!368760 c!214956) b!1310067))

(assert (= (and d!368760 (not c!214956)) b!1310071))

(assert (= (and d!368760 c!214957) b!1310069))

(assert (= (and d!368760 (not c!214957)) b!1310068))

(assert (= (and b!1310069 res!588126) b!1310070))

(declare-fun m!1461733 () Bool)

(assert (=> b!1310067 m!1461733))

(declare-fun m!1461735 () Bool)

(assert (=> d!368760 m!1461735))

(assert (=> d!368760 m!1461515))

(declare-fun m!1461737 () Bool)

(assert (=> d!368760 m!1461737))

(declare-fun m!1461739 () Bool)

(assert (=> b!1310069 m!1461739))

(assert (=> b!1310069 m!1461515))

(declare-fun m!1461741 () Bool)

(assert (=> b!1310069 m!1461741))

(declare-fun m!1461743 () Bool)

(assert (=> b!1310070 m!1461743))

(assert (=> b!1309926 d!368760))

(declare-fun d!368776 () Bool)

(declare-fun list!4990 (Conc!4368) List!13349)

(assert (=> d!368776 (= (list!4986 lt!431415) (list!4990 (c!214934 lt!431415)))))

(declare-fun bs!329760 () Bool)

(assert (= bs!329760 d!368776))

(declare-fun m!1461745 () Bool)

(assert (=> bs!329760 m!1461745))

(assert (=> b!1309926 d!368776))

(declare-fun d!368778 () Bool)

(declare-fun lt!431499 () Bool)

(declare-fun e!840188 () Bool)

(assert (=> d!368778 (= lt!431499 e!840188)))

(declare-fun res!588209 () Bool)

(assert (=> d!368778 (=> (not res!588209) (not e!840188))))

(assert (=> d!368778 (= res!588209 (= (list!4987 (_1!7333 (lex!829 thiss!19762 rules!2550 (print!768 thiss!19762 (singletonSeq!872 t1!34))))) (list!4987 (singletonSeq!872 t1!34))))))

(declare-fun e!840187 () Bool)

(assert (=> d!368778 (= lt!431499 e!840187)))

(declare-fun res!588208 () Bool)

(assert (=> d!368778 (=> (not res!588208) (not e!840187))))

(declare-fun lt!431498 () tuple2!12894)

(declare-fun size!10798 (BalanceConc!8678) Int)

(assert (=> d!368778 (= res!588208 (= (size!10798 (_1!7333 lt!431498)) 1))))

(assert (=> d!368778 (= lt!431498 (lex!829 thiss!19762 rules!2550 (print!768 thiss!19762 (singletonSeq!872 t1!34))))))

(assert (=> d!368778 (not (isEmpty!7852 rules!2550))))

(assert (=> d!368778 (= (rulesProduceIndividualToken!963 thiss!19762 rules!2550 t1!34) lt!431499)))

(declare-fun b!1310194 () Bool)

(declare-fun res!588207 () Bool)

(assert (=> b!1310194 (=> (not res!588207) (not e!840187))))

(declare-fun apply!2989 (BalanceConc!8678 Int) Token!4260)

(assert (=> b!1310194 (= res!588207 (= (apply!2989 (_1!7333 lt!431498) 0) t1!34))))

(declare-fun b!1310195 () Bool)

(assert (=> b!1310195 (= e!840187 (isEmpty!7853 (_2!7333 lt!431498)))))

(declare-fun b!1310196 () Bool)

(assert (=> b!1310196 (= e!840188 (isEmpty!7853 (_2!7333 (lex!829 thiss!19762 rules!2550 (print!768 thiss!19762 (singletonSeq!872 t1!34))))))))

(assert (= (and d!368778 res!588208) b!1310194))

(assert (= (and b!1310194 res!588207) b!1310195))

(assert (= (and d!368778 res!588209) b!1310196))

(assert (=> d!368778 m!1461549))

(assert (=> d!368778 m!1461551))

(assert (=> d!368778 m!1461549))

(declare-fun m!1461851 () Bool)

(assert (=> d!368778 m!1461851))

(assert (=> d!368778 m!1461519))

(declare-fun m!1461853 () Bool)

(assert (=> d!368778 m!1461853))

(assert (=> d!368778 m!1461551))

(declare-fun m!1461855 () Bool)

(assert (=> d!368778 m!1461855))

(assert (=> d!368778 m!1461549))

(declare-fun m!1461857 () Bool)

(assert (=> d!368778 m!1461857))

(declare-fun m!1461859 () Bool)

(assert (=> b!1310194 m!1461859))

(declare-fun m!1461861 () Bool)

(assert (=> b!1310195 m!1461861))

(assert (=> b!1310196 m!1461549))

(assert (=> b!1310196 m!1461549))

(assert (=> b!1310196 m!1461551))

(assert (=> b!1310196 m!1461551))

(assert (=> b!1310196 m!1461855))

(declare-fun m!1461863 () Bool)

(assert (=> b!1310196 m!1461863))

(assert (=> b!1309947 d!368778))

(declare-fun d!368804 () Bool)

(declare-fun lt!431501 () Bool)

(declare-fun e!840190 () Bool)

(assert (=> d!368804 (= lt!431501 e!840190)))

(declare-fun res!588212 () Bool)

(assert (=> d!368804 (=> (not res!588212) (not e!840190))))

(assert (=> d!368804 (= res!588212 (= (list!4987 (_1!7333 (lex!829 thiss!19762 rules!2550 (print!768 thiss!19762 (singletonSeq!872 t2!34))))) (list!4987 (singletonSeq!872 t2!34))))))

(declare-fun e!840189 () Bool)

(assert (=> d!368804 (= lt!431501 e!840189)))

(declare-fun res!588211 () Bool)

(assert (=> d!368804 (=> (not res!588211) (not e!840189))))

(declare-fun lt!431500 () tuple2!12894)

(assert (=> d!368804 (= res!588211 (= (size!10798 (_1!7333 lt!431500)) 1))))

(assert (=> d!368804 (= lt!431500 (lex!829 thiss!19762 rules!2550 (print!768 thiss!19762 (singletonSeq!872 t2!34))))))

(assert (=> d!368804 (not (isEmpty!7852 rules!2550))))

(assert (=> d!368804 (= (rulesProduceIndividualToken!963 thiss!19762 rules!2550 t2!34) lt!431501)))

(declare-fun b!1310197 () Bool)

(declare-fun res!588210 () Bool)

(assert (=> b!1310197 (=> (not res!588210) (not e!840189))))

(assert (=> b!1310197 (= res!588210 (= (apply!2989 (_1!7333 lt!431500) 0) t2!34))))

(declare-fun b!1310198 () Bool)

(assert (=> b!1310198 (= e!840189 (isEmpty!7853 (_2!7333 lt!431500)))))

(declare-fun b!1310199 () Bool)

(assert (=> b!1310199 (= e!840190 (isEmpty!7853 (_2!7333 (lex!829 thiss!19762 rules!2550 (print!768 thiss!19762 (singletonSeq!872 t2!34))))))))

(assert (= (and d!368804 res!588211) b!1310197))

(assert (= (and b!1310197 res!588210) b!1310198))

(assert (= (and d!368804 res!588212) b!1310199))

(assert (=> d!368804 m!1461569))

(assert (=> d!368804 m!1461571))

(assert (=> d!368804 m!1461569))

(declare-fun m!1461865 () Bool)

(assert (=> d!368804 m!1461865))

(assert (=> d!368804 m!1461519))

(declare-fun m!1461867 () Bool)

(assert (=> d!368804 m!1461867))

(assert (=> d!368804 m!1461571))

(declare-fun m!1461869 () Bool)

(assert (=> d!368804 m!1461869))

(assert (=> d!368804 m!1461569))

(declare-fun m!1461871 () Bool)

(assert (=> d!368804 m!1461871))

(declare-fun m!1461873 () Bool)

(assert (=> b!1310197 m!1461873))

(declare-fun m!1461875 () Bool)

(assert (=> b!1310198 m!1461875))

(assert (=> b!1310199 m!1461569))

(assert (=> b!1310199 m!1461569))

(assert (=> b!1310199 m!1461571))

(assert (=> b!1310199 m!1461571))

(assert (=> b!1310199 m!1461869))

(declare-fun m!1461877 () Bool)

(assert (=> b!1310199 m!1461877))

(assert (=> b!1309948 d!368804))

(declare-fun d!368806 () Bool)

(declare-fun lt!431504 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!1857 (List!13352) (InoxSet Regex!3613))

(assert (=> d!368806 (= lt!431504 (select (content!1857 (map!2915 rules!2550 lambda!52948)) lt!431413))))

(declare-fun e!840196 () Bool)

(assert (=> d!368806 (= lt!431504 e!840196)))

(declare-fun res!588217 () Bool)

(assert (=> d!368806 (=> (not res!588217) (not e!840196))))

(assert (=> d!368806 (= res!588217 ((_ is Cons!13286) (map!2915 rules!2550 lambda!52948)))))

(assert (=> d!368806 (= (contains!2307 (map!2915 rules!2550 lambda!52948) lt!431413) lt!431504)))

(declare-fun b!1310204 () Bool)

(declare-fun e!840195 () Bool)

(assert (=> b!1310204 (= e!840196 e!840195)))

(declare-fun res!588218 () Bool)

(assert (=> b!1310204 (=> res!588218 e!840195)))

(assert (=> b!1310204 (= res!588218 (= (h!18687 (map!2915 rules!2550 lambda!52948)) lt!431413))))

(declare-fun b!1310205 () Bool)

(assert (=> b!1310205 (= e!840195 (contains!2307 (t!118011 (map!2915 rules!2550 lambda!52948)) lt!431413))))

(assert (= (and d!368806 res!588217) b!1310204))

(assert (= (and b!1310204 (not res!588218)) b!1310205))

(assert (=> d!368806 m!1461581))

(declare-fun m!1461887 () Bool)

(assert (=> d!368806 m!1461887))

(declare-fun m!1461889 () Bool)

(assert (=> d!368806 m!1461889))

(declare-fun m!1461891 () Bool)

(assert (=> b!1310205 m!1461891))

(assert (=> b!1309927 d!368806))

(declare-fun d!368810 () Bool)

(declare-fun lt!431507 () List!13352)

(declare-fun size!10799 (List!13352) Int)

(declare-fun size!10800 (List!13351) Int)

(assert (=> d!368810 (= (size!10799 lt!431507) (size!10800 rules!2550))))

(declare-fun e!840199 () List!13352)

(assert (=> d!368810 (= lt!431507 e!840199)))

(declare-fun c!214981 () Bool)

(assert (=> d!368810 (= c!214981 ((_ is Nil!13285) rules!2550))))

(assert (=> d!368810 (= (map!2915 rules!2550 lambda!52948) lt!431507)))

(declare-fun b!1310210 () Bool)

(assert (=> b!1310210 (= e!840199 Nil!13286)))

(declare-fun b!1310211 () Bool)

(declare-fun $colon$colon!145 (List!13352 Regex!3613) List!13352)

(declare-fun dynLambda!5760 (Int Rule!4398) Regex!3613)

(assert (=> b!1310211 (= e!840199 ($colon$colon!145 (map!2915 (t!118010 rules!2550) lambda!52948) (dynLambda!5760 lambda!52948 (h!18686 rules!2550))))))

(assert (= (and d!368810 c!214981) b!1310210))

(assert (= (and d!368810 (not c!214981)) b!1310211))

(declare-fun b_lambda!37593 () Bool)

(assert (=> (not b_lambda!37593) (not b!1310211)))

(declare-fun m!1461893 () Bool)

(assert (=> d!368810 m!1461893))

(declare-fun m!1461895 () Bool)

(assert (=> d!368810 m!1461895))

(declare-fun m!1461897 () Bool)

(assert (=> b!1310211 m!1461897))

(declare-fun m!1461899 () Bool)

(assert (=> b!1310211 m!1461899))

(assert (=> b!1310211 m!1461897))

(assert (=> b!1310211 m!1461899))

(declare-fun m!1461901 () Bool)

(assert (=> b!1310211 m!1461901))

(assert (=> b!1309927 d!368810))

(declare-fun b!1310224 () Bool)

(declare-fun e!840209 () Regex!3613)

(declare-fun e!840210 () Regex!3613)

(assert (=> b!1310224 (= e!840209 e!840210)))

(declare-fun c!214987 () Bool)

(assert (=> b!1310224 (= c!214987 ((_ is Cons!13286) (map!2915 rules!2550 lambda!52948)))))

(declare-fun b!1310225 () Bool)

(assert (=> b!1310225 (= e!840210 (getWitness!192 (t!118011 (map!2915 rules!2550 lambda!52948)) lambda!52949))))

(declare-fun e!840211 () Bool)

(declare-fun b!1310226 () Bool)

(declare-fun dynLambda!5761 (Int Regex!3613) Bool)

(assert (=> b!1310226 (= e!840211 (dynLambda!5761 lambda!52949 (h!18687 (map!2915 rules!2550 lambda!52948))))))

(declare-fun b!1310227 () Bool)

(declare-fun lt!431512 () Unit!19338)

(declare-fun Unit!19342 () Unit!19338)

(assert (=> b!1310227 (= lt!431512 Unit!19342)))

(assert (=> b!1310227 false))

(declare-fun head!2254 (List!13352) Regex!3613)

(assert (=> b!1310227 (= e!840210 (head!2254 (map!2915 rules!2550 lambda!52948)))))

(declare-fun b!1310228 () Bool)

(assert (=> b!1310228 (= e!840209 (h!18687 (map!2915 rules!2550 lambda!52948)))))

(declare-fun b!1310229 () Bool)

(declare-fun e!840208 () Bool)

(declare-fun lt!431513 () Regex!3613)

(assert (=> b!1310229 (= e!840208 (contains!2307 (map!2915 rules!2550 lambda!52948) lt!431513))))

(declare-fun d!368812 () Bool)

(assert (=> d!368812 e!840208))

(declare-fun res!588223 () Bool)

(assert (=> d!368812 (=> (not res!588223) (not e!840208))))

(assert (=> d!368812 (= res!588223 (dynLambda!5761 lambda!52949 lt!431513))))

(assert (=> d!368812 (= lt!431513 e!840209)))

(declare-fun c!214986 () Bool)

(assert (=> d!368812 (= c!214986 e!840211)))

(declare-fun res!588224 () Bool)

(assert (=> d!368812 (=> (not res!588224) (not e!840211))))

(assert (=> d!368812 (= res!588224 ((_ is Cons!13286) (map!2915 rules!2550 lambda!52948)))))

(assert (=> d!368812 (exists!300 (map!2915 rules!2550 lambda!52948) lambda!52949)))

(assert (=> d!368812 (= (getWitness!192 (map!2915 rules!2550 lambda!52948) lambda!52949) lt!431513)))

(assert (= (and d!368812 res!588224) b!1310226))

(assert (= (and d!368812 c!214986) b!1310228))

(assert (= (and d!368812 (not c!214986)) b!1310224))

(assert (= (and b!1310224 c!214987) b!1310225))

(assert (= (and b!1310224 (not c!214987)) b!1310227))

(assert (= (and d!368812 res!588223) b!1310229))

(declare-fun b_lambda!37595 () Bool)

(assert (=> (not b_lambda!37595) (not b!1310226)))

(declare-fun b_lambda!37597 () Bool)

(assert (=> (not b_lambda!37597) (not d!368812)))

(assert (=> b!1310227 m!1461581))

(declare-fun m!1461903 () Bool)

(assert (=> b!1310227 m!1461903))

(declare-fun m!1461905 () Bool)

(assert (=> b!1310226 m!1461905))

(declare-fun m!1461907 () Bool)

(assert (=> b!1310225 m!1461907))

(declare-fun m!1461909 () Bool)

(assert (=> d!368812 m!1461909))

(assert (=> d!368812 m!1461581))

(assert (=> d!368812 m!1461583))

(assert (=> b!1310229 m!1461581))

(declare-fun m!1461911 () Bool)

(assert (=> b!1310229 m!1461911))

(assert (=> b!1309927 d!368812))

(declare-fun d!368814 () Bool)

(declare-fun res!588229 () Bool)

(declare-fun e!840220 () Bool)

(assert (=> d!368814 (=> res!588229 e!840220)))

(assert (=> d!368814 (= res!588229 (not ((_ is Cons!13285) rules!2550)))))

(assert (=> d!368814 (= (sepAndNonSepRulesDisjointChars!672 rules!2550 rules!2550) e!840220)))

(declare-fun b!1310242 () Bool)

(declare-fun e!840223 () Bool)

(assert (=> b!1310242 (= e!840220 e!840223)))

(declare-fun res!588232 () Bool)

(assert (=> b!1310242 (=> (not res!588232) (not e!840223))))

(declare-fun ruleDisjointCharsFromAllFromOtherType!305 (Rule!4398 List!13351) Bool)

(assert (=> b!1310242 (= res!588232 (ruleDisjointCharsFromAllFromOtherType!305 (h!18686 rules!2550) rules!2550))))

(declare-fun b!1310243 () Bool)

(assert (=> b!1310243 (= e!840223 (sepAndNonSepRulesDisjointChars!672 rules!2550 (t!118010 rules!2550)))))

(assert (= (and d!368814 (not res!588229)) b!1310242))

(assert (= (and b!1310242 res!588232) b!1310243))

(declare-fun m!1461913 () Bool)

(assert (=> b!1310242 m!1461913))

(declare-fun m!1461915 () Bool)

(assert (=> b!1310243 m!1461915))

(assert (=> b!1309928 d!368814))

(declare-fun b!1310266 () Bool)

(declare-fun res!588237 () Bool)

(declare-fun e!840236 () Bool)

(assert (=> b!1310266 (=> res!588237 e!840236)))

(assert (=> b!1310266 (= res!588237 (not ((_ is IntegerValue!7169) (value!75154 t2!34))))))

(declare-fun e!840238 () Bool)

(assert (=> b!1310266 (= e!840238 e!840236)))

(declare-fun b!1310267 () Bool)

(declare-fun e!840237 () Bool)

(declare-fun inv!16 (TokenValue!2389) Bool)

(assert (=> b!1310267 (= e!840237 (inv!16 (value!75154 t2!34)))))

(declare-fun b!1310268 () Bool)

(declare-fun inv!15 (TokenValue!2389) Bool)

(assert (=> b!1310268 (= e!840236 (inv!15 (value!75154 t2!34)))))

(declare-fun d!368816 () Bool)

(declare-fun c!215000 () Bool)

(assert (=> d!368816 (= c!215000 ((_ is IntegerValue!7167) (value!75154 t2!34)))))

(assert (=> d!368816 (= (inv!21 (value!75154 t2!34)) e!840237)))

(declare-fun b!1310269 () Bool)

(declare-fun inv!17 (TokenValue!2389) Bool)

(assert (=> b!1310269 (= e!840238 (inv!17 (value!75154 t2!34)))))

(declare-fun b!1310270 () Bool)

(assert (=> b!1310270 (= e!840237 e!840238)))

(declare-fun c!215001 () Bool)

(assert (=> b!1310270 (= c!215001 ((_ is IntegerValue!7168) (value!75154 t2!34)))))

(assert (= (and d!368816 c!215000) b!1310267))

(assert (= (and d!368816 (not c!215000)) b!1310270))

(assert (= (and b!1310270 c!215001) b!1310269))

(assert (= (and b!1310270 (not c!215001)) b!1310266))

(assert (= (and b!1310266 (not res!588237)) b!1310268))

(declare-fun m!1461937 () Bool)

(assert (=> b!1310267 m!1461937))

(declare-fun m!1461939 () Bool)

(assert (=> b!1310268 m!1461939))

(declare-fun m!1461941 () Bool)

(assert (=> b!1310269 m!1461941))

(assert (=> b!1309949 d!368816))

(declare-fun d!368824 () Bool)

(declare-fun lt!431528 () Bool)

(declare-fun content!1858 (List!13349) (InoxSet C!7516))

(assert (=> d!368824 (= lt!431528 (select (content!1858 lt!431412) lt!431407))))

(declare-fun e!840247 () Bool)

(assert (=> d!368824 (= lt!431528 e!840247)))

(declare-fun res!588244 () Bool)

(assert (=> d!368824 (=> (not res!588244) (not e!840247))))

(assert (=> d!368824 (= res!588244 ((_ is Cons!13283) lt!431412))))

(assert (=> d!368824 (= (contains!2308 lt!431412 lt!431407) lt!431528)))

(declare-fun b!1310280 () Bool)

(declare-fun e!840246 () Bool)

(assert (=> b!1310280 (= e!840247 e!840246)))

(declare-fun res!588243 () Bool)

(assert (=> b!1310280 (=> res!588243 e!840246)))

(assert (=> b!1310280 (= res!588243 (= (h!18684 lt!431412) lt!431407))))

(declare-fun b!1310281 () Bool)

(assert (=> b!1310281 (= e!840246 (contains!2308 (t!118008 lt!431412) lt!431407))))

(assert (= (and d!368824 res!588244) b!1310280))

(assert (= (and b!1310280 (not res!588243)) b!1310281))

(declare-fun m!1461957 () Bool)

(assert (=> d!368824 m!1461957))

(declare-fun m!1461959 () Bool)

(assert (=> d!368824 m!1461959))

(declare-fun m!1461961 () Bool)

(assert (=> b!1310281 m!1461961))

(assert (=> b!1309950 d!368824))

(declare-fun d!368830 () Bool)

(declare-fun res!588253 () Bool)

(declare-fun e!840256 () Bool)

(assert (=> d!368830 (=> (not res!588253) (not e!840256))))

(declare-fun rulesValid!831 (LexerInterface!1994 List!13351) Bool)

(assert (=> d!368830 (= res!588253 (rulesValid!831 thiss!19762 rules!2550))))

(assert (=> d!368830 (= (rulesInvariant!1864 thiss!19762 rules!2550) e!840256)))

(declare-fun b!1310296 () Bool)

(declare-datatypes ((List!13354 0))(
  ( (Nil!13288) (Cons!13288 (h!18689 String!16181) (t!118049 List!13354)) )
))
(declare-fun noDuplicateTag!831 (LexerInterface!1994 List!13351 List!13354) Bool)

(assert (=> b!1310296 (= e!840256 (noDuplicateTag!831 thiss!19762 rules!2550 Nil!13288))))

(assert (= (and d!368830 res!588253) b!1310296))

(declare-fun m!1461963 () Bool)

(assert (=> d!368830 m!1461963))

(declare-fun m!1461965 () Bool)

(assert (=> b!1310296 m!1461965))

(assert (=> b!1309929 d!368830))

(assert (=> b!1309930 d!368810))

(declare-fun bs!329768 () Bool)

(declare-fun d!368832 () Bool)

(assert (= bs!329768 (and d!368832 b!1309930)))

(declare-fun lambda!52973 () Int)

(assert (=> bs!329768 (not (= lambda!52973 lambda!52949))))

(assert (=> d!368832 true))

(declare-fun order!7973 () Int)

(declare-fun dynLambda!5762 (Int Int) Int)

(assert (=> d!368832 (< (dynLambda!5762 order!7973 lambda!52949) (dynLambda!5762 order!7973 lambda!52973))))

(declare-fun forall!3282 (List!13352 Int) Bool)

(assert (=> d!368832 (= (exists!300 lt!431420 lambda!52949) (not (forall!3282 lt!431420 lambda!52973)))))

(declare-fun bs!329769 () Bool)

(assert (= bs!329769 d!368832))

(declare-fun m!1461979 () Bool)

(assert (=> bs!329769 m!1461979))

(assert (=> b!1309930 d!368832))

(declare-fun bs!329773 () Bool)

(declare-fun d!368836 () Bool)

(assert (= bs!329773 (and d!368836 b!1309930)))

(declare-fun lambda!52978 () Int)

(assert (=> bs!329773 (not (= lambda!52978 lambda!52949))))

(declare-fun bs!329774 () Bool)

(assert (= bs!329774 (and d!368836 d!368832)))

(assert (=> bs!329774 (not (= lambda!52978 lambda!52973))))

(declare-fun lambda!52979 () Int)

(assert (=> bs!329773 (= lambda!52979 lambda!52949)))

(assert (=> bs!329774 (not (= lambda!52979 lambda!52973))))

(declare-fun bs!329775 () Bool)

(assert (= bs!329775 d!368836))

(assert (=> bs!329775 (not (= lambda!52979 lambda!52978))))

(assert (=> d!368836 true))

(assert (=> d!368836 (= (matchR!1615 lt!431419 lt!431412) (exists!300 lt!431420 lambda!52979))))

(declare-fun lt!431543 () Unit!19338)

(declare-fun choose!8009 (Regex!3613 List!13352 List!13349) Unit!19338)

(assert (=> d!368836 (= lt!431543 (choose!8009 lt!431419 lt!431420 lt!431412))))

(assert (=> d!368836 (forall!3282 lt!431420 lambda!52978)))

(assert (=> d!368836 (= (matchRGenUnionSpec!50 lt!431419 lt!431420 lt!431412) lt!431543)))

(assert (=> bs!329775 m!1461535))

(declare-fun m!1462021 () Bool)

(assert (=> bs!329775 m!1462021))

(declare-fun m!1462023 () Bool)

(assert (=> bs!329775 m!1462023))

(declare-fun m!1462025 () Bool)

(assert (=> bs!329775 m!1462025))

(assert (=> b!1309930 d!368836))

(declare-fun bs!329776 () Bool)

(declare-fun d!368850 () Bool)

(assert (= bs!329776 (and d!368850 b!1309930)))

(declare-fun lambda!52980 () Int)

(assert (=> bs!329776 (not (= lambda!52980 lambda!52949))))

(declare-fun bs!329777 () Bool)

(assert (= bs!329777 (and d!368850 d!368832)))

(assert (=> bs!329777 (= lambda!52980 lambda!52973)))

(declare-fun bs!329778 () Bool)

(assert (= bs!329778 (and d!368850 d!368836)))

(assert (=> bs!329778 (not (= lambda!52980 lambda!52978))))

(assert (=> bs!329778 (not (= lambda!52980 lambda!52979))))

(assert (=> d!368850 true))

(assert (=> d!368850 (< (dynLambda!5762 order!7973 lambda!52949) (dynLambda!5762 order!7973 lambda!52980))))

(assert (=> d!368850 (= (exists!300 (map!2915 rules!2550 lambda!52948) lambda!52949) (not (forall!3282 (map!2915 rules!2550 lambda!52948) lambda!52980)))))

(declare-fun bs!329779 () Bool)

(assert (= bs!329779 d!368850))

(assert (=> bs!329779 m!1461581))

(declare-fun m!1462027 () Bool)

(assert (=> bs!329779 m!1462027))

(assert (=> b!1309930 d!368850))

(declare-fun d!368852 () Bool)

(assert (=> d!368852 (= (inv!17658 (tag!2561 (h!18686 rules!2550))) (= (mod (str.len (value!75153 (tag!2561 (h!18686 rules!2550)))) 2) 0))))

(assert (=> b!1309951 d!368852))

(declare-fun d!368854 () Bool)

(declare-fun res!588262 () Bool)

(declare-fun e!840268 () Bool)

(assert (=> d!368854 (=> (not res!588262) (not e!840268))))

(declare-fun semiInverseModEq!862 (Int Int) Bool)

(assert (=> d!368854 (= res!588262 (semiInverseModEq!862 (toChars!3377 (transformation!2299 (h!18686 rules!2550))) (toValue!3518 (transformation!2299 (h!18686 rules!2550)))))))

(assert (=> d!368854 (= (inv!17662 (transformation!2299 (h!18686 rules!2550))) e!840268)))

(declare-fun b!1310315 () Bool)

(declare-fun equivClasses!821 (Int Int) Bool)

(assert (=> b!1310315 (= e!840268 (equivClasses!821 (toChars!3377 (transformation!2299 (h!18686 rules!2550))) (toValue!3518 (transformation!2299 (h!18686 rules!2550)))))))

(assert (= (and d!368854 res!588262) b!1310315))

(declare-fun m!1462029 () Bool)

(assert (=> d!368854 m!1462029))

(declare-fun m!1462031 () Bool)

(assert (=> b!1310315 m!1462031))

(assert (=> b!1309951 d!368854))

(declare-fun d!368856 () Bool)

(assert (=> d!368856 (= (inv!17658 (tag!2561 (rule!4038 t2!34))) (= (mod (str.len (value!75153 (tag!2561 (rule!4038 t2!34)))) 2) 0))))

(assert (=> b!1309952 d!368856))

(declare-fun d!368858 () Bool)

(declare-fun res!588263 () Bool)

(declare-fun e!840269 () Bool)

(assert (=> d!368858 (=> (not res!588263) (not e!840269))))

(assert (=> d!368858 (= res!588263 (semiInverseModEq!862 (toChars!3377 (transformation!2299 (rule!4038 t2!34))) (toValue!3518 (transformation!2299 (rule!4038 t2!34)))))))

(assert (=> d!368858 (= (inv!17662 (transformation!2299 (rule!4038 t2!34))) e!840269)))

(declare-fun b!1310316 () Bool)

(assert (=> b!1310316 (= e!840269 (equivClasses!821 (toChars!3377 (transformation!2299 (rule!4038 t2!34))) (toValue!3518 (transformation!2299 (rule!4038 t2!34)))))))

(assert (= (and d!368858 res!588263) b!1310316))

(declare-fun m!1462033 () Bool)

(assert (=> d!368858 m!1462033))

(declare-fun m!1462035 () Bool)

(assert (=> b!1310316 m!1462035))

(assert (=> b!1309952 d!368858))

(declare-fun b!1310335 () Bool)

(declare-fun e!840277 () Bool)

(declare-fun lt!431554 () Option!2564)

(declare-fun get!4246 (Option!2564) tuple2!12892)

(assert (=> b!1310335 (= e!840277 (contains!2309 rules!2550 (rule!4038 (_1!7332 (get!4246 lt!431554)))))))

(declare-fun b!1310336 () Bool)

(declare-fun res!588281 () Bool)

(assert (=> b!1310336 (=> (not res!588281) (not e!840277))))

(assert (=> b!1310336 (= res!588281 (< (size!10797 (_2!7332 (get!4246 lt!431554))) (size!10797 (list!4986 lt!431405))))))

(declare-fun b!1310338 () Bool)

(declare-fun res!588280 () Bool)

(assert (=> b!1310338 (=> (not res!588280) (not e!840277))))

(assert (=> b!1310338 (= res!588280 (= (++!3378 (list!4986 (charsOf!1271 (_1!7332 (get!4246 lt!431554)))) (_2!7332 (get!4246 lt!431554))) (list!4986 lt!431405)))))

(declare-fun call!89254 () Option!2564)

(declare-fun bm!89249 () Bool)

(declare-fun maxPrefixOneRule!573 (LexerInterface!1994 Rule!4398 List!13349) Option!2564)

(assert (=> bm!89249 (= call!89254 (maxPrefixOneRule!573 thiss!19762 (h!18686 rules!2550) (list!4986 lt!431405)))))

(declare-fun b!1310339 () Bool)

(declare-fun res!588284 () Bool)

(assert (=> b!1310339 (=> (not res!588284) (not e!840277))))

(assert (=> b!1310339 (= res!588284 (matchR!1615 (regex!2299 (rule!4038 (_1!7332 (get!4246 lt!431554)))) (list!4986 (charsOf!1271 (_1!7332 (get!4246 lt!431554))))))))

(declare-fun b!1310340 () Bool)

(declare-fun e!840276 () Option!2564)

(declare-fun lt!431556 () Option!2564)

(declare-fun lt!431558 () Option!2564)

(assert (=> b!1310340 (= e!840276 (ite (and ((_ is None!2563) lt!431556) ((_ is None!2563) lt!431558)) None!2563 (ite ((_ is None!2563) lt!431558) lt!431556 (ite ((_ is None!2563) lt!431556) lt!431558 (ite (>= (size!10790 (_1!7332 (v!21077 lt!431556))) (size!10790 (_1!7332 (v!21077 lt!431558)))) lt!431556 lt!431558)))))))

(assert (=> b!1310340 (= lt!431556 call!89254)))

(assert (=> b!1310340 (= lt!431558 (maxPrefix!1004 thiss!19762 (t!118010 rules!2550) (list!4986 lt!431405)))))

(declare-fun b!1310341 () Bool)

(declare-fun res!588282 () Bool)

(assert (=> b!1310341 (=> (not res!588282) (not e!840277))))

(assert (=> b!1310341 (= res!588282 (= (list!4986 (charsOf!1271 (_1!7332 (get!4246 lt!431554)))) (originalCharacters!3161 (_1!7332 (get!4246 lt!431554)))))))

(declare-fun b!1310342 () Bool)

(assert (=> b!1310342 (= e!840276 call!89254)))

(declare-fun b!1310343 () Bool)

(declare-fun e!840278 () Bool)

(assert (=> b!1310343 (= e!840278 e!840277)))

(declare-fun res!588278 () Bool)

(assert (=> b!1310343 (=> (not res!588278) (not e!840277))))

(declare-fun isDefined!2171 (Option!2564) Bool)

(assert (=> b!1310343 (= res!588278 (isDefined!2171 lt!431554))))

(declare-fun b!1310337 () Bool)

(declare-fun res!588279 () Bool)

(assert (=> b!1310337 (=> (not res!588279) (not e!840277))))

(declare-fun apply!2990 (TokenValueInjection!4438 BalanceConc!8676) TokenValue!2389)

(declare-fun seqFromList!1591 (List!13349) BalanceConc!8676)

(assert (=> b!1310337 (= res!588279 (= (value!75154 (_1!7332 (get!4246 lt!431554))) (apply!2990 (transformation!2299 (rule!4038 (_1!7332 (get!4246 lt!431554)))) (seqFromList!1591 (originalCharacters!3161 (_1!7332 (get!4246 lt!431554)))))))))

(declare-fun d!368860 () Bool)

(assert (=> d!368860 e!840278))

(declare-fun res!588283 () Bool)

(assert (=> d!368860 (=> res!588283 e!840278)))

(declare-fun isEmpty!7860 (Option!2564) Bool)

(assert (=> d!368860 (= res!588283 (isEmpty!7860 lt!431554))))

(assert (=> d!368860 (= lt!431554 e!840276)))

(declare-fun c!215013 () Bool)

(assert (=> d!368860 (= c!215013 (and ((_ is Cons!13285) rules!2550) ((_ is Nil!13285) (t!118010 rules!2550))))))

(declare-fun lt!431555 () Unit!19338)

(declare-fun lt!431557 () Unit!19338)

(assert (=> d!368860 (= lt!431555 lt!431557)))

(declare-fun isPrefix!1068 (List!13349 List!13349) Bool)

(assert (=> d!368860 (isPrefix!1068 (list!4986 lt!431405) (list!4986 lt!431405))))

(declare-fun lemmaIsPrefixRefl!747 (List!13349 List!13349) Unit!19338)

(assert (=> d!368860 (= lt!431557 (lemmaIsPrefixRefl!747 (list!4986 lt!431405) (list!4986 lt!431405)))))

(declare-fun rulesValidInductive!720 (LexerInterface!1994 List!13351) Bool)

(assert (=> d!368860 (rulesValidInductive!720 thiss!19762 rules!2550)))

(assert (=> d!368860 (= (maxPrefix!1004 thiss!19762 rules!2550 (list!4986 lt!431405)) lt!431554)))

(assert (= (and d!368860 c!215013) b!1310342))

(assert (= (and d!368860 (not c!215013)) b!1310340))

(assert (= (or b!1310342 b!1310340) bm!89249))

(assert (= (and d!368860 (not res!588283)) b!1310343))

(assert (= (and b!1310343 res!588278) b!1310341))

(assert (= (and b!1310341 res!588282) b!1310336))

(assert (= (and b!1310336 res!588281) b!1310338))

(assert (= (and b!1310338 res!588280) b!1310337))

(assert (= (and b!1310337 res!588279) b!1310339))

(assert (= (and b!1310339 res!588284) b!1310335))

(assert (=> b!1310340 m!1461537))

(declare-fun m!1462037 () Bool)

(assert (=> b!1310340 m!1462037))

(declare-fun m!1462039 () Bool)

(assert (=> b!1310335 m!1462039))

(declare-fun m!1462041 () Bool)

(assert (=> b!1310335 m!1462041))

(assert (=> b!1310339 m!1462039))

(declare-fun m!1462043 () Bool)

(assert (=> b!1310339 m!1462043))

(assert (=> b!1310339 m!1462043))

(declare-fun m!1462045 () Bool)

(assert (=> b!1310339 m!1462045))

(assert (=> b!1310339 m!1462045))

(declare-fun m!1462047 () Bool)

(assert (=> b!1310339 m!1462047))

(assert (=> b!1310336 m!1462039))

(declare-fun m!1462049 () Bool)

(assert (=> b!1310336 m!1462049))

(assert (=> b!1310336 m!1461537))

(declare-fun m!1462051 () Bool)

(assert (=> b!1310336 m!1462051))

(assert (=> b!1310337 m!1462039))

(declare-fun m!1462053 () Bool)

(assert (=> b!1310337 m!1462053))

(assert (=> b!1310337 m!1462053))

(declare-fun m!1462055 () Bool)

(assert (=> b!1310337 m!1462055))

(assert (=> b!1310341 m!1462039))

(assert (=> b!1310341 m!1462043))

(assert (=> b!1310341 m!1462043))

(assert (=> b!1310341 m!1462045))

(declare-fun m!1462057 () Bool)

(assert (=> b!1310343 m!1462057))

(assert (=> bm!89249 m!1461537))

(declare-fun m!1462059 () Bool)

(assert (=> bm!89249 m!1462059))

(declare-fun m!1462061 () Bool)

(assert (=> d!368860 m!1462061))

(assert (=> d!368860 m!1461537))

(assert (=> d!368860 m!1461537))

(declare-fun m!1462063 () Bool)

(assert (=> d!368860 m!1462063))

(assert (=> d!368860 m!1461537))

(assert (=> d!368860 m!1461537))

(declare-fun m!1462065 () Bool)

(assert (=> d!368860 m!1462065))

(declare-fun m!1462067 () Bool)

(assert (=> d!368860 m!1462067))

(assert (=> b!1310338 m!1462039))

(assert (=> b!1310338 m!1462043))

(assert (=> b!1310338 m!1462043))

(assert (=> b!1310338 m!1462045))

(assert (=> b!1310338 m!1462045))

(declare-fun m!1462069 () Bool)

(assert (=> b!1310338 m!1462069))

(assert (=> b!1309931 d!368860))

(declare-fun d!368862 () Bool)

(assert (=> d!368862 (= (list!4986 lt!431405) (list!4990 (c!214934 lt!431405)))))

(declare-fun bs!329780 () Bool)

(assert (= bs!329780 d!368862))

(declare-fun m!1462071 () Bool)

(assert (=> bs!329780 m!1462071))

(assert (=> b!1309931 d!368862))

(declare-fun d!368864 () Bool)

(declare-fun lt!431559 () Bool)

(assert (=> d!368864 (= lt!431559 (select (content!1858 lt!431414) lt!431418))))

(declare-fun e!840280 () Bool)

(assert (=> d!368864 (= lt!431559 e!840280)))

(declare-fun res!588286 () Bool)

(assert (=> d!368864 (=> (not res!588286) (not e!840280))))

(assert (=> d!368864 (= res!588286 ((_ is Cons!13283) lt!431414))))

(assert (=> d!368864 (= (contains!2308 lt!431414 lt!431418) lt!431559)))

(declare-fun b!1310344 () Bool)

(declare-fun e!840279 () Bool)

(assert (=> b!1310344 (= e!840280 e!840279)))

(declare-fun res!588285 () Bool)

(assert (=> b!1310344 (=> res!588285 e!840279)))

(assert (=> b!1310344 (= res!588285 (= (h!18684 lt!431414) lt!431418))))

(declare-fun b!1310345 () Bool)

(assert (=> b!1310345 (= e!840279 (contains!2308 (t!118008 lt!431414) lt!431418))))

(assert (= (and d!368864 res!588286) b!1310344))

(assert (= (and b!1310344 (not res!588285)) b!1310345))

(declare-fun m!1462073 () Bool)

(assert (=> d!368864 m!1462073))

(declare-fun m!1462075 () Bool)

(assert (=> d!368864 m!1462075))

(declare-fun m!1462077 () Bool)

(assert (=> b!1310345 m!1462077))

(assert (=> b!1309932 d!368864))

(declare-fun d!368866 () Bool)

(declare-fun lt!431562 () C!7516)

(declare-fun apply!2992 (List!13349 Int) C!7516)

(assert (=> d!368866 (= lt!431562 (apply!2992 (list!4986 lt!431411) 0))))

(declare-fun apply!2993 (Conc!4368 Int) C!7516)

(assert (=> d!368866 (= lt!431562 (apply!2993 (c!214934 lt!431411) 0))))

(declare-fun e!840283 () Bool)

(assert (=> d!368866 e!840283))

(declare-fun res!588289 () Bool)

(assert (=> d!368866 (=> (not res!588289) (not e!840283))))

(assert (=> d!368866 (= res!588289 (<= 0 0))))

(assert (=> d!368866 (= (apply!2987 lt!431411 0) lt!431562)))

(declare-fun b!1310348 () Bool)

(assert (=> b!1310348 (= e!840283 (< 0 (size!10791 lt!431411)))))

(assert (= (and d!368866 res!588289) b!1310348))

(assert (=> d!368866 m!1461619))

(assert (=> d!368866 m!1461619))

(declare-fun m!1462079 () Bool)

(assert (=> d!368866 m!1462079))

(declare-fun m!1462081 () Bool)

(assert (=> d!368866 m!1462081))

(declare-fun m!1462083 () Bool)

(assert (=> b!1310348 m!1462083))

(assert (=> b!1309932 d!368866))

(declare-fun d!368868 () Bool)

(declare-fun lt!431565 () Bool)

(declare-fun content!1859 (List!13351) (InoxSet Rule!4398))

(assert (=> d!368868 (= lt!431565 (select (content!1859 rules!2550) (rule!4038 t2!34)))))

(declare-fun e!840288 () Bool)

(assert (=> d!368868 (= lt!431565 e!840288)))

(declare-fun res!588294 () Bool)

(assert (=> d!368868 (=> (not res!588294) (not e!840288))))

(assert (=> d!368868 (= res!588294 ((_ is Cons!13285) rules!2550))))

(assert (=> d!368868 (= (contains!2309 rules!2550 (rule!4038 t2!34)) lt!431565)))

(declare-fun b!1310353 () Bool)

(declare-fun e!840289 () Bool)

(assert (=> b!1310353 (= e!840288 e!840289)))

(declare-fun res!588295 () Bool)

(assert (=> b!1310353 (=> res!588295 e!840289)))

(assert (=> b!1310353 (= res!588295 (= (h!18686 rules!2550) (rule!4038 t2!34)))))

(declare-fun b!1310354 () Bool)

(assert (=> b!1310354 (= e!840289 (contains!2309 (t!118010 rules!2550) (rule!4038 t2!34)))))

(assert (= (and d!368868 res!588294) b!1310353))

(assert (= (and b!1310353 (not res!588295)) b!1310354))

(declare-fun m!1462085 () Bool)

(assert (=> d!368868 m!1462085))

(declare-fun m!1462087 () Bool)

(assert (=> d!368868 m!1462087))

(declare-fun m!1462089 () Bool)

(assert (=> b!1310354 m!1462089))

(assert (=> b!1309953 d!368868))

(declare-fun d!368870 () Bool)

(declare-fun lt!431568 () Bool)

(declare-fun isEmpty!7861 (List!13349) Bool)

(assert (=> d!368870 (= lt!431568 (isEmpty!7861 (list!4986 (_2!7333 lt!431404))))))

(declare-fun isEmpty!7862 (Conc!4368) Bool)

(assert (=> d!368870 (= lt!431568 (isEmpty!7862 (c!214934 (_2!7333 lt!431404))))))

(assert (=> d!368870 (= (isEmpty!7853 (_2!7333 lt!431404)) lt!431568)))

(declare-fun bs!329781 () Bool)

(assert (= bs!329781 d!368870))

(declare-fun m!1462091 () Bool)

(assert (=> bs!329781 m!1462091))

(assert (=> bs!329781 m!1462091))

(declare-fun m!1462093 () Bool)

(assert (=> bs!329781 m!1462093))

(declare-fun m!1462095 () Bool)

(assert (=> bs!329781 m!1462095))

(assert (=> b!1309955 d!368870))

(declare-fun d!368872 () Bool)

(declare-fun lt!431569 () Bool)

(assert (=> d!368872 (= lt!431569 (select (content!1858 lt!431412) lt!431418))))

(declare-fun e!840291 () Bool)

(assert (=> d!368872 (= lt!431569 e!840291)))

(declare-fun res!588297 () Bool)

(assert (=> d!368872 (=> (not res!588297) (not e!840291))))

(assert (=> d!368872 (= res!588297 ((_ is Cons!13283) lt!431412))))

(assert (=> d!368872 (= (contains!2308 lt!431412 lt!431418) lt!431569)))

(declare-fun b!1310355 () Bool)

(declare-fun e!840290 () Bool)

(assert (=> b!1310355 (= e!840291 e!840290)))

(declare-fun res!588296 () Bool)

(assert (=> b!1310355 (=> res!588296 e!840290)))

(assert (=> b!1310355 (= res!588296 (= (h!18684 lt!431412) lt!431418))))

(declare-fun b!1310356 () Bool)

(assert (=> b!1310356 (= e!840290 (contains!2308 (t!118008 lt!431412) lt!431418))))

(assert (= (and d!368872 res!588297) b!1310355))

(assert (= (and b!1310355 (not res!588296)) b!1310356))

(assert (=> d!368872 m!1461957))

(declare-fun m!1462097 () Bool)

(assert (=> d!368872 m!1462097))

(declare-fun m!1462099 () Bool)

(assert (=> b!1310356 m!1462099))

(assert (=> b!1309956 d!368872))

(declare-fun d!368874 () Bool)

(declare-fun res!588302 () Bool)

(declare-fun e!840296 () Bool)

(assert (=> d!368874 (=> res!588302 e!840296)))

(assert (=> d!368874 (= res!588302 ((_ is Nil!13285) rules!2550))))

(assert (=> d!368874 (= (forall!3280 rules!2550 lambda!52951) e!840296)))

(declare-fun b!1310361 () Bool)

(declare-fun e!840297 () Bool)

(assert (=> b!1310361 (= e!840296 e!840297)))

(declare-fun res!588303 () Bool)

(assert (=> b!1310361 (=> (not res!588303) (not e!840297))))

(declare-fun dynLambda!5764 (Int Rule!4398) Bool)

(assert (=> b!1310361 (= res!588303 (dynLambda!5764 lambda!52951 (h!18686 rules!2550)))))

(declare-fun b!1310362 () Bool)

(assert (=> b!1310362 (= e!840297 (forall!3280 (t!118010 rules!2550) lambda!52951))))

(assert (= (and d!368874 (not res!588302)) b!1310361))

(assert (= (and b!1310361 res!588303) b!1310362))

(declare-fun b_lambda!37601 () Bool)

(assert (=> (not b_lambda!37601) (not b!1310361)))

(declare-fun m!1462101 () Bool)

(assert (=> b!1310361 m!1462101))

(declare-fun m!1462103 () Bool)

(assert (=> b!1310362 m!1462103))

(assert (=> b!1309935 d!368874))

(declare-fun d!368876 () Bool)

(declare-fun lt!431570 () C!7516)

(assert (=> d!368876 (= lt!431570 (apply!2992 (list!4986 lt!431405) 0))))

(assert (=> d!368876 (= lt!431570 (apply!2993 (c!214934 lt!431405) 0))))

(declare-fun e!840298 () Bool)

(assert (=> d!368876 e!840298))

(declare-fun res!588304 () Bool)

(assert (=> d!368876 (=> (not res!588304) (not e!840298))))

(assert (=> d!368876 (= res!588304 (<= 0 0))))

(assert (=> d!368876 (= (apply!2987 lt!431405 0) lt!431570)))

(declare-fun b!1310363 () Bool)

(assert (=> b!1310363 (= e!840298 (< 0 (size!10791 lt!431405)))))

(assert (= (and d!368876 res!588304) b!1310363))

(assert (=> d!368876 m!1461537))

(assert (=> d!368876 m!1461537))

(declare-fun m!1462105 () Bool)

(assert (=> d!368876 m!1462105))

(declare-fun m!1462107 () Bool)

(assert (=> d!368876 m!1462107))

(assert (=> b!1310363 m!1461591))

(assert (=> b!1309936 d!368876))

(declare-fun d!368878 () Bool)

(declare-fun c!215016 () Bool)

(assert (=> d!368878 (= c!215016 (isEmpty!7861 lt!431414))))

(declare-fun e!840301 () Bool)

(assert (=> d!368878 (= (prefixMatch!126 lt!431419 lt!431414) e!840301)))

(declare-fun b!1310368 () Bool)

(declare-fun lostCause!269 (Regex!3613) Bool)

(assert (=> b!1310368 (= e!840301 (not (lostCause!269 lt!431419)))))

(declare-fun b!1310369 () Bool)

(declare-fun derivativeStep!893 (Regex!3613 C!7516) Regex!3613)

(declare-fun head!2255 (List!13349) C!7516)

(declare-fun tail!1874 (List!13349) List!13349)

(assert (=> b!1310369 (= e!840301 (prefixMatch!126 (derivativeStep!893 lt!431419 (head!2255 lt!431414)) (tail!1874 lt!431414)))))

(assert (= (and d!368878 c!215016) b!1310368))

(assert (= (and d!368878 (not c!215016)) b!1310369))

(declare-fun m!1462109 () Bool)

(assert (=> d!368878 m!1462109))

(declare-fun m!1462111 () Bool)

(assert (=> b!1310368 m!1462111))

(declare-fun m!1462113 () Bool)

(assert (=> b!1310369 m!1462113))

(assert (=> b!1310369 m!1462113))

(declare-fun m!1462115 () Bool)

(assert (=> b!1310369 m!1462115))

(declare-fun m!1462117 () Bool)

(assert (=> b!1310369 m!1462117))

(assert (=> b!1310369 m!1462115))

(assert (=> b!1310369 m!1462117))

(declare-fun m!1462119 () Bool)

(assert (=> b!1310369 m!1462119))

(assert (=> b!1309936 d!368878))

(declare-fun lt!431573 () List!13349)

(declare-fun b!1310381 () Bool)

(declare-fun e!840307 () Bool)

(assert (=> b!1310381 (= e!840307 (or (not (= (Cons!13283 lt!431407 Nil!13283) Nil!13283)) (= lt!431573 lt!431402)))))

(declare-fun b!1310380 () Bool)

(declare-fun res!588309 () Bool)

(assert (=> b!1310380 (=> (not res!588309) (not e!840307))))

(assert (=> b!1310380 (= res!588309 (= (size!10797 lt!431573) (+ (size!10797 lt!431402) (size!10797 (Cons!13283 lt!431407 Nil!13283)))))))

(declare-fun b!1310378 () Bool)

(declare-fun e!840306 () List!13349)

(assert (=> b!1310378 (= e!840306 (Cons!13283 lt!431407 Nil!13283))))

(declare-fun d!368880 () Bool)

(assert (=> d!368880 e!840307))

(declare-fun res!588310 () Bool)

(assert (=> d!368880 (=> (not res!588310) (not e!840307))))

(assert (=> d!368880 (= res!588310 (= (content!1858 lt!431573) ((_ map or) (content!1858 lt!431402) (content!1858 (Cons!13283 lt!431407 Nil!13283)))))))

(assert (=> d!368880 (= lt!431573 e!840306)))

(declare-fun c!215019 () Bool)

(assert (=> d!368880 (= c!215019 ((_ is Nil!13283) lt!431402))))

(assert (=> d!368880 (= (++!3378 lt!431402 (Cons!13283 lt!431407 Nil!13283)) lt!431573)))

(declare-fun b!1310379 () Bool)

(assert (=> b!1310379 (= e!840306 (Cons!13283 (h!18684 lt!431402) (++!3378 (t!118008 lt!431402) (Cons!13283 lt!431407 Nil!13283))))))

(assert (= (and d!368880 c!215019) b!1310378))

(assert (= (and d!368880 (not c!215019)) b!1310379))

(assert (= (and d!368880 res!588310) b!1310380))

(assert (= (and b!1310380 res!588309) b!1310381))

(declare-fun m!1462121 () Bool)

(assert (=> b!1310380 m!1462121))

(declare-fun m!1462123 () Bool)

(assert (=> b!1310380 m!1462123))

(declare-fun m!1462125 () Bool)

(assert (=> b!1310380 m!1462125))

(declare-fun m!1462127 () Bool)

(assert (=> d!368880 m!1462127))

(declare-fun m!1462129 () Bool)

(assert (=> d!368880 m!1462129))

(declare-fun m!1462131 () Bool)

(assert (=> d!368880 m!1462131))

(declare-fun m!1462133 () Bool)

(assert (=> b!1310379 m!1462133))

(assert (=> b!1309936 d!368880))

(declare-fun d!368882 () Bool)

(assert (=> d!368882 (= (list!4986 lt!431411) (list!4990 (c!214934 lt!431411)))))

(declare-fun bs!329782 () Bool)

(assert (= bs!329782 d!368882))

(declare-fun m!1462135 () Bool)

(assert (=> bs!329782 m!1462135))

(assert (=> b!1309936 d!368882))

(declare-fun d!368884 () Bool)

(declare-fun lt!431576 () BalanceConc!8676)

(assert (=> d!368884 (= (list!4986 lt!431576) (originalCharacters!3161 t1!34))))

(declare-fun dynLambda!5765 (Int TokenValue!2389) BalanceConc!8676)

(assert (=> d!368884 (= lt!431576 (dynLambda!5765 (toChars!3377 (transformation!2299 (rule!4038 t1!34))) (value!75154 t1!34)))))

(assert (=> d!368884 (= (charsOf!1271 t1!34) lt!431576)))

(declare-fun b_lambda!37603 () Bool)

(assert (=> (not b_lambda!37603) (not d!368884)))

(declare-fun t!118027 () Bool)

(declare-fun tb!69701 () Bool)

(assert (=> (and b!1309934 (= (toChars!3377 (transformation!2299 (h!18686 rules!2550))) (toChars!3377 (transformation!2299 (rule!4038 t1!34)))) t!118027) tb!69701))

(declare-fun b!1310386 () Bool)

(declare-fun e!840310 () Bool)

(declare-fun tp!381975 () Bool)

(declare-fun inv!17665 (Conc!4368) Bool)

(assert (=> b!1310386 (= e!840310 (and (inv!17665 (c!214934 (dynLambda!5765 (toChars!3377 (transformation!2299 (rule!4038 t1!34))) (value!75154 t1!34)))) tp!381975))))

(declare-fun result!84564 () Bool)

(declare-fun inv!17666 (BalanceConc!8676) Bool)

(assert (=> tb!69701 (= result!84564 (and (inv!17666 (dynLambda!5765 (toChars!3377 (transformation!2299 (rule!4038 t1!34))) (value!75154 t1!34))) e!840310))))

(assert (= tb!69701 b!1310386))

(declare-fun m!1462137 () Bool)

(assert (=> b!1310386 m!1462137))

(declare-fun m!1462139 () Bool)

(assert (=> tb!69701 m!1462139))

(assert (=> d!368884 t!118027))

(declare-fun b_and!87535 () Bool)

(assert (= b_and!87513 (and (=> t!118027 result!84564) b_and!87535)))

(declare-fun t!118029 () Bool)

(declare-fun tb!69703 () Bool)

(assert (=> (and b!1309933 (= (toChars!3377 (transformation!2299 (rule!4038 t1!34))) (toChars!3377 (transformation!2299 (rule!4038 t1!34)))) t!118029) tb!69703))

(declare-fun result!84568 () Bool)

(assert (= result!84568 result!84564))

(assert (=> d!368884 t!118029))

(declare-fun b_and!87537 () Bool)

(assert (= b_and!87517 (and (=> t!118029 result!84568) b_and!87537)))

(declare-fun t!118031 () Bool)

(declare-fun tb!69705 () Bool)

(assert (=> (and b!1309954 (= (toChars!3377 (transformation!2299 (rule!4038 t2!34))) (toChars!3377 (transformation!2299 (rule!4038 t1!34)))) t!118031) tb!69705))

(declare-fun result!84570 () Bool)

(assert (= result!84570 result!84564))

(assert (=> d!368884 t!118031))

(declare-fun b_and!87539 () Bool)

(assert (= b_and!87521 (and (=> t!118031 result!84570) b_and!87539)))

(declare-fun m!1462141 () Bool)

(assert (=> d!368884 m!1462141))

(declare-fun m!1462143 () Bool)

(assert (=> d!368884 m!1462143))

(assert (=> b!1309936 d!368884))

(declare-fun bs!329783 () Bool)

(declare-fun d!368886 () Bool)

(assert (= bs!329783 (and d!368886 b!1309930)))

(declare-fun lambda!52983 () Int)

(assert (=> bs!329783 (= lambda!52983 lambda!52948)))

(declare-fun lt!431579 () Unit!19338)

(declare-fun lemma!63 (List!13351 LexerInterface!1994 List!13351) Unit!19338)

(assert (=> d!368886 (= lt!431579 (lemma!63 rules!2550 thiss!19762 rules!2550))))

(declare-fun generalisedUnion!71 (List!13352) Regex!3613)

(assert (=> d!368886 (= (rulesRegex!184 thiss!19762 rules!2550) (generalisedUnion!71 (map!2915 rules!2550 lambda!52983)))))

(declare-fun bs!329784 () Bool)

(assert (= bs!329784 d!368886))

(declare-fun m!1462145 () Bool)

(assert (=> bs!329784 m!1462145))

(declare-fun m!1462147 () Bool)

(assert (=> bs!329784 m!1462147))

(assert (=> bs!329784 m!1462147))

(declare-fun m!1462149 () Bool)

(assert (=> bs!329784 m!1462149))

(assert (=> b!1309936 d!368886))

(declare-fun d!368888 () Bool)

(assert (=> d!368888 (= (inv!17658 (tag!2561 (rule!4038 t1!34))) (= (mod (str.len (value!75153 (tag!2561 (rule!4038 t1!34)))) 2) 0))))

(assert (=> b!1309957 d!368888))

(declare-fun d!368890 () Bool)

(declare-fun res!588311 () Bool)

(declare-fun e!840311 () Bool)

(assert (=> d!368890 (=> (not res!588311) (not e!840311))))

(assert (=> d!368890 (= res!588311 (semiInverseModEq!862 (toChars!3377 (transformation!2299 (rule!4038 t1!34))) (toValue!3518 (transformation!2299 (rule!4038 t1!34)))))))

(assert (=> d!368890 (= (inv!17662 (transformation!2299 (rule!4038 t1!34))) e!840311)))

(declare-fun b!1310387 () Bool)

(assert (=> b!1310387 (= e!840311 (equivClasses!821 (toChars!3377 (transformation!2299 (rule!4038 t1!34))) (toValue!3518 (transformation!2299 (rule!4038 t1!34)))))))

(assert (= (and d!368890 res!588311) b!1310387))

(declare-fun m!1462151 () Bool)

(assert (=> d!368890 m!1462151))

(declare-fun m!1462153 () Bool)

(assert (=> b!1310387 m!1462153))

(assert (=> b!1309957 d!368890))

(declare-fun b!1310388 () Bool)

(declare-fun e!840313 () Bool)

(declare-fun lt!431580 () Option!2564)

(assert (=> b!1310388 (= e!840313 (contains!2309 rules!2550 (rule!4038 (_1!7332 (get!4246 lt!431580)))))))

(declare-fun b!1310389 () Bool)

(declare-fun res!588315 () Bool)

(assert (=> b!1310389 (=> (not res!588315) (not e!840313))))

(assert (=> b!1310389 (= res!588315 (< (size!10797 (_2!7332 (get!4246 lt!431580))) (size!10797 lt!431402)))))

(declare-fun b!1310391 () Bool)

(declare-fun res!588314 () Bool)

(assert (=> b!1310391 (=> (not res!588314) (not e!840313))))

(assert (=> b!1310391 (= res!588314 (= (++!3378 (list!4986 (charsOf!1271 (_1!7332 (get!4246 lt!431580)))) (_2!7332 (get!4246 lt!431580))) lt!431402))))

(declare-fun call!89255 () Option!2564)

(declare-fun bm!89250 () Bool)

(assert (=> bm!89250 (= call!89255 (maxPrefixOneRule!573 thiss!19762 (h!18686 rules!2550) lt!431402))))

(declare-fun b!1310392 () Bool)

(declare-fun res!588318 () Bool)

(assert (=> b!1310392 (=> (not res!588318) (not e!840313))))

(assert (=> b!1310392 (= res!588318 (matchR!1615 (regex!2299 (rule!4038 (_1!7332 (get!4246 lt!431580)))) (list!4986 (charsOf!1271 (_1!7332 (get!4246 lt!431580))))))))

(declare-fun b!1310393 () Bool)

(declare-fun e!840312 () Option!2564)

(declare-fun lt!431582 () Option!2564)

(declare-fun lt!431584 () Option!2564)

(assert (=> b!1310393 (= e!840312 (ite (and ((_ is None!2563) lt!431582) ((_ is None!2563) lt!431584)) None!2563 (ite ((_ is None!2563) lt!431584) lt!431582 (ite ((_ is None!2563) lt!431582) lt!431584 (ite (>= (size!10790 (_1!7332 (v!21077 lt!431582))) (size!10790 (_1!7332 (v!21077 lt!431584)))) lt!431582 lt!431584)))))))

(assert (=> b!1310393 (= lt!431582 call!89255)))

(assert (=> b!1310393 (= lt!431584 (maxPrefix!1004 thiss!19762 (t!118010 rules!2550) lt!431402))))

(declare-fun b!1310394 () Bool)

(declare-fun res!588316 () Bool)

(assert (=> b!1310394 (=> (not res!588316) (not e!840313))))

(assert (=> b!1310394 (= res!588316 (= (list!4986 (charsOf!1271 (_1!7332 (get!4246 lt!431580)))) (originalCharacters!3161 (_1!7332 (get!4246 lt!431580)))))))

(declare-fun b!1310395 () Bool)

(assert (=> b!1310395 (= e!840312 call!89255)))

(declare-fun b!1310396 () Bool)

(declare-fun e!840314 () Bool)

(assert (=> b!1310396 (= e!840314 e!840313)))

(declare-fun res!588312 () Bool)

(assert (=> b!1310396 (=> (not res!588312) (not e!840313))))

(assert (=> b!1310396 (= res!588312 (isDefined!2171 lt!431580))))

(declare-fun b!1310390 () Bool)

(declare-fun res!588313 () Bool)

(assert (=> b!1310390 (=> (not res!588313) (not e!840313))))

(assert (=> b!1310390 (= res!588313 (= (value!75154 (_1!7332 (get!4246 lt!431580))) (apply!2990 (transformation!2299 (rule!4038 (_1!7332 (get!4246 lt!431580)))) (seqFromList!1591 (originalCharacters!3161 (_1!7332 (get!4246 lt!431580)))))))))

(declare-fun d!368892 () Bool)

(assert (=> d!368892 e!840314))

(declare-fun res!588317 () Bool)

(assert (=> d!368892 (=> res!588317 e!840314)))

(assert (=> d!368892 (= res!588317 (isEmpty!7860 lt!431580))))

(assert (=> d!368892 (= lt!431580 e!840312)))

(declare-fun c!215020 () Bool)

(assert (=> d!368892 (= c!215020 (and ((_ is Cons!13285) rules!2550) ((_ is Nil!13285) (t!118010 rules!2550))))))

(declare-fun lt!431581 () Unit!19338)

(declare-fun lt!431583 () Unit!19338)

(assert (=> d!368892 (= lt!431581 lt!431583)))

(assert (=> d!368892 (isPrefix!1068 lt!431402 lt!431402)))

(assert (=> d!368892 (= lt!431583 (lemmaIsPrefixRefl!747 lt!431402 lt!431402))))

(assert (=> d!368892 (rulesValidInductive!720 thiss!19762 rules!2550)))

(assert (=> d!368892 (= (maxPrefix!1004 thiss!19762 rules!2550 lt!431402) lt!431580)))

(assert (= (and d!368892 c!215020) b!1310395))

(assert (= (and d!368892 (not c!215020)) b!1310393))

(assert (= (or b!1310395 b!1310393) bm!89250))

(assert (= (and d!368892 (not res!588317)) b!1310396))

(assert (= (and b!1310396 res!588312) b!1310394))

(assert (= (and b!1310394 res!588316) b!1310389))

(assert (= (and b!1310389 res!588315) b!1310391))

(assert (= (and b!1310391 res!588314) b!1310390))

(assert (= (and b!1310390 res!588313) b!1310392))

(assert (= (and b!1310392 res!588318) b!1310388))

(declare-fun m!1462155 () Bool)

(assert (=> b!1310393 m!1462155))

(declare-fun m!1462157 () Bool)

(assert (=> b!1310388 m!1462157))

(declare-fun m!1462159 () Bool)

(assert (=> b!1310388 m!1462159))

(assert (=> b!1310392 m!1462157))

(declare-fun m!1462161 () Bool)

(assert (=> b!1310392 m!1462161))

(assert (=> b!1310392 m!1462161))

(declare-fun m!1462163 () Bool)

(assert (=> b!1310392 m!1462163))

(assert (=> b!1310392 m!1462163))

(declare-fun m!1462165 () Bool)

(assert (=> b!1310392 m!1462165))

(assert (=> b!1310389 m!1462157))

(declare-fun m!1462167 () Bool)

(assert (=> b!1310389 m!1462167))

(assert (=> b!1310389 m!1462123))

(assert (=> b!1310390 m!1462157))

(declare-fun m!1462169 () Bool)

(assert (=> b!1310390 m!1462169))

(assert (=> b!1310390 m!1462169))

(declare-fun m!1462171 () Bool)

(assert (=> b!1310390 m!1462171))

(assert (=> b!1310394 m!1462157))

(assert (=> b!1310394 m!1462161))

(assert (=> b!1310394 m!1462161))

(assert (=> b!1310394 m!1462163))

(declare-fun m!1462173 () Bool)

(assert (=> b!1310396 m!1462173))

(declare-fun m!1462175 () Bool)

(assert (=> bm!89250 m!1462175))

(declare-fun m!1462177 () Bool)

(assert (=> d!368892 m!1462177))

(declare-fun m!1462179 () Bool)

(assert (=> d!368892 m!1462179))

(declare-fun m!1462181 () Bool)

(assert (=> d!368892 m!1462181))

(assert (=> d!368892 m!1462067))

(assert (=> b!1310391 m!1462157))

(assert (=> b!1310391 m!1462161))

(assert (=> b!1310391 m!1462161))

(assert (=> b!1310391 m!1462163))

(assert (=> b!1310391 m!1462163))

(declare-fun m!1462183 () Bool)

(assert (=> b!1310391 m!1462183))

(assert (=> b!1309958 d!368892))

(declare-fun bs!329785 () Bool)

(declare-fun d!368894 () Bool)

(assert (= bs!329785 (and d!368894 b!1309937)))

(declare-fun lambda!52986 () Int)

(assert (=> bs!329785 (not (= lambda!52986 lambda!52950))))

(declare-fun bs!329786 () Bool)

(assert (= bs!329786 (and d!368894 b!1309935)))

(assert (=> bs!329786 (not (= lambda!52986 lambda!52951))))

(assert (=> d!368894 true))

(declare-fun order!7975 () Int)

(declare-fun dynLambda!5766 (Int Int) Int)

(assert (=> d!368894 (< (dynLambda!5766 order!7975 lambda!52950) (dynLambda!5766 order!7975 lambda!52986))))

(assert (=> d!368894 (= (exists!301 rules!2550 lambda!52950) (not (forall!3280 rules!2550 lambda!52986)))))

(declare-fun bs!329787 () Bool)

(assert (= bs!329787 d!368894))

(declare-fun m!1462185 () Bool)

(assert (=> bs!329787 m!1462185))

(assert (=> b!1309937 d!368894))

(declare-fun bs!329788 () Bool)

(declare-fun d!368896 () Bool)

(assert (= bs!329788 (and d!368896 b!1309937)))

(declare-fun lambda!52989 () Int)

(assert (=> bs!329788 (not (= lambda!52989 lambda!52950))))

(declare-fun bs!329789 () Bool)

(assert (= bs!329789 (and d!368896 b!1309935)))

(assert (=> bs!329789 (not (= lambda!52989 lambda!52951))))

(declare-fun bs!329790 () Bool)

(assert (= bs!329790 (and d!368896 d!368894)))

(assert (=> bs!329790 (not (= lambda!52989 lambda!52986))))

(assert (=> d!368896 true))

(assert (=> d!368896 true))

(declare-fun order!7977 () Int)

(declare-fun dynLambda!5767 (Int Int) Int)

(assert (=> d!368896 (< (dynLambda!5767 order!7977 lambda!52948) (dynLambda!5766 order!7975 lambda!52989))))

(assert (=> d!368896 (exists!301 rules!2550 lambda!52989)))

(declare-fun lt!431598 () Unit!19338)

(declare-fun choose!8011 (List!13351 Int Regex!3613) Unit!19338)

(assert (=> d!368896 (= lt!431598 (choose!8011 rules!2550 lambda!52948 lt!431413))))

(assert (=> d!368896 (contains!2307 (map!2915 rules!2550 lambda!52948) lt!431413)))

(assert (=> d!368896 (= (lemmaMapContains!42 rules!2550 lambda!52948 lt!431413) lt!431598)))

(declare-fun bs!329791 () Bool)

(assert (= bs!329791 d!368896))

(declare-fun m!1462227 () Bool)

(assert (=> bs!329791 m!1462227))

(declare-fun m!1462229 () Bool)

(assert (=> bs!329791 m!1462229))

(assert (=> bs!329791 m!1461581))

(assert (=> bs!329791 m!1461581))

(assert (=> bs!329791 m!1461595))

(assert (=> b!1309937 d!368896))

(declare-fun b!1310471 () Bool)

(declare-fun e!840363 () Bool)

(declare-fun e!840359 () Bool)

(assert (=> b!1310471 (= e!840363 e!840359)))

(declare-fun c!215030 () Bool)

(assert (=> b!1310471 (= c!215030 ((_ is EmptyLang!3613) lt!431419))))

(declare-fun b!1310472 () Bool)

(declare-fun res!588375 () Bool)

(declare-fun e!840362 () Bool)

(assert (=> b!1310472 (=> (not res!588375) (not e!840362))))

(declare-fun call!89259 () Bool)

(assert (=> b!1310472 (= res!588375 (not call!89259))))

(declare-fun b!1310473 () Bool)

(declare-fun res!588377 () Bool)

(assert (=> b!1310473 (=> (not res!588377) (not e!840362))))

(assert (=> b!1310473 (= res!588377 (isEmpty!7861 (tail!1874 lt!431412)))))

(declare-fun b!1310474 () Bool)

(declare-fun res!588380 () Bool)

(declare-fun e!840360 () Bool)

(assert (=> b!1310474 (=> res!588380 e!840360)))

(assert (=> b!1310474 (= res!588380 (not ((_ is ElementMatch!3613) lt!431419)))))

(assert (=> b!1310474 (= e!840359 e!840360)))

(declare-fun b!1310475 () Bool)

(declare-fun res!588378 () Bool)

(declare-fun e!840364 () Bool)

(assert (=> b!1310475 (=> res!588378 e!840364)))

(assert (=> b!1310475 (= res!588378 (not (isEmpty!7861 (tail!1874 lt!431412))))))

(declare-fun b!1310476 () Bool)

(declare-fun res!588374 () Bool)

(assert (=> b!1310476 (=> res!588374 e!840360)))

(assert (=> b!1310476 (= res!588374 e!840362)))

(declare-fun res!588379 () Bool)

(assert (=> b!1310476 (=> (not res!588379) (not e!840362))))

(declare-fun lt!431612 () Bool)

(assert (=> b!1310476 (= res!588379 lt!431612)))

(declare-fun b!1310477 () Bool)

(declare-fun e!840365 () Bool)

(assert (=> b!1310477 (= e!840365 (matchR!1615 (derivativeStep!893 lt!431419 (head!2255 lt!431412)) (tail!1874 lt!431412)))))

(declare-fun b!1310478 () Bool)

(declare-fun e!840361 () Bool)

(assert (=> b!1310478 (= e!840361 e!840364)))

(declare-fun res!588376 () Bool)

(assert (=> b!1310478 (=> res!588376 e!840364)))

(assert (=> b!1310478 (= res!588376 call!89259)))

(declare-fun b!1310479 () Bool)

(assert (=> b!1310479 (= e!840363 (= lt!431612 call!89259))))

(declare-fun b!1310480 () Bool)

(declare-fun nullable!1141 (Regex!3613) Bool)

(assert (=> b!1310480 (= e!840365 (nullable!1141 lt!431419))))

(declare-fun b!1310481 () Bool)

(assert (=> b!1310481 (= e!840359 (not lt!431612))))

(declare-fun d!368912 () Bool)

(assert (=> d!368912 e!840363))

(declare-fun c!215028 () Bool)

(assert (=> d!368912 (= c!215028 ((_ is EmptyExpr!3613) lt!431419))))

(assert (=> d!368912 (= lt!431612 e!840365)))

(declare-fun c!215029 () Bool)

(assert (=> d!368912 (= c!215029 (isEmpty!7861 lt!431412))))

(declare-fun validRegex!1543 (Regex!3613) Bool)

(assert (=> d!368912 (validRegex!1543 lt!431419)))

(assert (=> d!368912 (= (matchR!1615 lt!431419 lt!431412) lt!431612)))

(declare-fun b!1310482 () Bool)

(assert (=> b!1310482 (= e!840362 (= (head!2255 lt!431412) (c!214935 lt!431419)))))

(declare-fun bm!89254 () Bool)

(assert (=> bm!89254 (= call!89259 (isEmpty!7861 lt!431412))))

(declare-fun b!1310483 () Bool)

(assert (=> b!1310483 (= e!840360 e!840361)))

(declare-fun res!588373 () Bool)

(assert (=> b!1310483 (=> (not res!588373) (not e!840361))))

(assert (=> b!1310483 (= res!588373 (not lt!431612))))

(declare-fun b!1310484 () Bool)

(assert (=> b!1310484 (= e!840364 (not (= (head!2255 lt!431412) (c!214935 lt!431419))))))

(assert (= (and d!368912 c!215029) b!1310480))

(assert (= (and d!368912 (not c!215029)) b!1310477))

(assert (= (and d!368912 c!215028) b!1310479))

(assert (= (and d!368912 (not c!215028)) b!1310471))

(assert (= (and b!1310471 c!215030) b!1310481))

(assert (= (and b!1310471 (not c!215030)) b!1310474))

(assert (= (and b!1310474 (not res!588380)) b!1310476))

(assert (= (and b!1310476 res!588379) b!1310472))

(assert (= (and b!1310472 res!588375) b!1310473))

(assert (= (and b!1310473 res!588377) b!1310482))

(assert (= (and b!1310476 (not res!588374)) b!1310483))

(assert (= (and b!1310483 res!588373) b!1310478))

(assert (= (and b!1310478 (not res!588376)) b!1310475))

(assert (= (and b!1310475 (not res!588378)) b!1310484))

(assert (= (or b!1310479 b!1310472 b!1310478) bm!89254))

(declare-fun m!1462275 () Bool)

(assert (=> b!1310484 m!1462275))

(declare-fun m!1462277 () Bool)

(assert (=> b!1310480 m!1462277))

(declare-fun m!1462279 () Bool)

(assert (=> bm!89254 m!1462279))

(declare-fun m!1462281 () Bool)

(assert (=> b!1310475 m!1462281))

(assert (=> b!1310475 m!1462281))

(declare-fun m!1462283 () Bool)

(assert (=> b!1310475 m!1462283))

(assert (=> b!1310473 m!1462281))

(assert (=> b!1310473 m!1462281))

(assert (=> b!1310473 m!1462283))

(assert (=> d!368912 m!1462279))

(declare-fun m!1462285 () Bool)

(assert (=> d!368912 m!1462285))

(assert (=> b!1310477 m!1462275))

(assert (=> b!1310477 m!1462275))

(declare-fun m!1462287 () Bool)

(assert (=> b!1310477 m!1462287))

(assert (=> b!1310477 m!1462281))

(assert (=> b!1310477 m!1462287))

(assert (=> b!1310477 m!1462281))

(declare-fun m!1462289 () Bool)

(assert (=> b!1310477 m!1462289))

(assert (=> b!1310482 m!1462275))

(assert (=> b!1309938 d!368912))

(declare-fun b!1310488 () Bool)

(declare-fun e!840367 () Bool)

(declare-fun lt!431613 () List!13349)

(assert (=> b!1310488 (= e!840367 (or (not (= (getSuffix!469 lt!431412 lt!431414) Nil!13283)) (= lt!431613 lt!431414)))))

(declare-fun b!1310487 () Bool)

(declare-fun res!588381 () Bool)

(assert (=> b!1310487 (=> (not res!588381) (not e!840367))))

(assert (=> b!1310487 (= res!588381 (= (size!10797 lt!431613) (+ (size!10797 lt!431414) (size!10797 (getSuffix!469 lt!431412 lt!431414)))))))

(declare-fun b!1310485 () Bool)

(declare-fun e!840366 () List!13349)

(assert (=> b!1310485 (= e!840366 (getSuffix!469 lt!431412 lt!431414))))

(declare-fun d!368924 () Bool)

(assert (=> d!368924 e!840367))

(declare-fun res!588382 () Bool)

(assert (=> d!368924 (=> (not res!588382) (not e!840367))))

(assert (=> d!368924 (= res!588382 (= (content!1858 lt!431613) ((_ map or) (content!1858 lt!431414) (content!1858 (getSuffix!469 lt!431412 lt!431414)))))))

(assert (=> d!368924 (= lt!431613 e!840366)))

(declare-fun c!215031 () Bool)

(assert (=> d!368924 (= c!215031 ((_ is Nil!13283) lt!431414))))

(assert (=> d!368924 (= (++!3378 lt!431414 (getSuffix!469 lt!431412 lt!431414)) lt!431613)))

(declare-fun b!1310486 () Bool)

(assert (=> b!1310486 (= e!840366 (Cons!13283 (h!18684 lt!431414) (++!3378 (t!118008 lt!431414) (getSuffix!469 lt!431412 lt!431414))))))

(assert (= (and d!368924 c!215031) b!1310485))

(assert (= (and d!368924 (not c!215031)) b!1310486))

(assert (= (and d!368924 res!588382) b!1310487))

(assert (= (and b!1310487 res!588381) b!1310488))

(declare-fun m!1462291 () Bool)

(assert (=> b!1310487 m!1462291))

(declare-fun m!1462293 () Bool)

(assert (=> b!1310487 m!1462293))

(assert (=> b!1310487 m!1461559))

(declare-fun m!1462295 () Bool)

(assert (=> b!1310487 m!1462295))

(declare-fun m!1462297 () Bool)

(assert (=> d!368924 m!1462297))

(assert (=> d!368924 m!1462073))

(assert (=> d!368924 m!1461559))

(declare-fun m!1462299 () Bool)

(assert (=> d!368924 m!1462299))

(assert (=> b!1310486 m!1461559))

(declare-fun m!1462301 () Bool)

(assert (=> b!1310486 m!1462301))

(assert (=> b!1309959 d!368924))

(declare-fun d!368926 () Bool)

(declare-fun lt!431616 () List!13349)

(assert (=> d!368926 (= (++!3378 lt!431414 lt!431616) lt!431412)))

(declare-fun e!840373 () List!13349)

(assert (=> d!368926 (= lt!431616 e!840373)))

(declare-fun c!215037 () Bool)

(assert (=> d!368926 (= c!215037 ((_ is Cons!13283) lt!431414))))

(assert (=> d!368926 (>= (size!10797 lt!431412) (size!10797 lt!431414))))

(assert (=> d!368926 (= (getSuffix!469 lt!431412 lt!431414) lt!431616)))

(declare-fun b!1310499 () Bool)

(assert (=> b!1310499 (= e!840373 (getSuffix!469 (tail!1874 lt!431412) (t!118008 lt!431414)))))

(declare-fun b!1310500 () Bool)

(assert (=> b!1310500 (= e!840373 lt!431412)))

(assert (= (and d!368926 c!215037) b!1310499))

(assert (= (and d!368926 (not c!215037)) b!1310500))

(declare-fun m!1462317 () Bool)

(assert (=> d!368926 m!1462317))

(declare-fun m!1462319 () Bool)

(assert (=> d!368926 m!1462319))

(assert (=> d!368926 m!1462293))

(assert (=> b!1310499 m!1462281))

(assert (=> b!1310499 m!1462281))

(declare-fun m!1462321 () Bool)

(assert (=> b!1310499 m!1462321))

(assert (=> b!1309959 d!368926))

(declare-fun d!368932 () Bool)

(declare-fun lt!431619 () List!13349)

(declare-fun dynLambda!5768 (Int List!13349) Bool)

(assert (=> d!368932 (dynLambda!5768 lambda!52947 lt!431619)))

(declare-fun choose!8012 (Int) List!13349)

(assert (=> d!368932 (= lt!431619 (choose!8012 lambda!52947))))

(assert (=> d!368932 (Exists!771 lambda!52947)))

(assert (=> d!368932 (= (pickWitness!76 lambda!52947) lt!431619)))

(declare-fun b_lambda!37609 () Bool)

(assert (=> (not b_lambda!37609) (not d!368932)))

(declare-fun bs!329794 () Bool)

(assert (= bs!329794 d!368932))

(declare-fun m!1462323 () Bool)

(assert (=> bs!329794 m!1462323))

(declare-fun m!1462325 () Bool)

(assert (=> bs!329794 m!1462325))

(assert (=> bs!329794 m!1461511))

(assert (=> b!1309959 d!368932))

(declare-fun d!368934 () Bool)

(declare-fun lt!431620 () Bool)

(assert (=> d!368934 (= lt!431620 (select (content!1859 rules!2550) lt!431410))))

(declare-fun e!840374 () Bool)

(assert (=> d!368934 (= lt!431620 e!840374)))

(declare-fun res!588383 () Bool)

(assert (=> d!368934 (=> (not res!588383) (not e!840374))))

(assert (=> d!368934 (= res!588383 ((_ is Cons!13285) rules!2550))))

(assert (=> d!368934 (= (contains!2309 rules!2550 lt!431410) lt!431620)))

(declare-fun b!1310501 () Bool)

(declare-fun e!840375 () Bool)

(assert (=> b!1310501 (= e!840374 e!840375)))

(declare-fun res!588384 () Bool)

(assert (=> b!1310501 (=> res!588384 e!840375)))

(assert (=> b!1310501 (= res!588384 (= (h!18686 rules!2550) lt!431410))))

(declare-fun b!1310502 () Bool)

(assert (=> b!1310502 (= e!840375 (contains!2309 (t!118010 rules!2550) lt!431410))))

(assert (= (and d!368934 res!588383) b!1310501))

(assert (= (and b!1310501 (not res!588384)) b!1310502))

(assert (=> d!368934 m!1462085))

(declare-fun m!1462327 () Bool)

(assert (=> d!368934 m!1462327))

(declare-fun m!1462329 () Bool)

(assert (=> b!1310502 m!1462329))

(assert (=> b!1309960 d!368934))

(declare-fun d!368936 () Bool)

(declare-fun choose!8013 (Int) Bool)

(assert (=> d!368936 (= (Exists!771 lambda!52947) (choose!8013 lambda!52947))))

(declare-fun bs!329795 () Bool)

(assert (= bs!329795 d!368936))

(declare-fun m!1462331 () Bool)

(assert (=> bs!329795 m!1462331))

(assert (=> b!1309939 d!368936))

(declare-fun bs!329796 () Bool)

(declare-fun d!368938 () Bool)

(assert (= bs!329796 (and d!368938 b!1309939)))

(declare-fun lambda!52992 () Int)

(assert (=> bs!329796 (= lambda!52992 lambda!52947)))

(assert (=> d!368938 true))

(assert (=> d!368938 true))

(assert (=> d!368938 (Exists!771 lambda!52992)))

(declare-fun lt!431628 () Unit!19338)

(declare-fun choose!8014 (Regex!3613 List!13349) Unit!19338)

(assert (=> d!368938 (= lt!431628 (choose!8014 lt!431419 lt!431414))))

(assert (=> d!368938 (validRegex!1543 lt!431419)))

(assert (=> d!368938 (= (lemmaPrefixMatchThenExistsStringThatMatches!89 lt!431419 lt!431414) lt!431628)))

(declare-fun bs!329797 () Bool)

(assert (= bs!329797 d!368938))

(declare-fun m!1462351 () Bool)

(assert (=> bs!329797 m!1462351))

(declare-fun m!1462353 () Bool)

(assert (=> bs!329797 m!1462353))

(assert (=> bs!329797 m!1462285))

(assert (=> b!1309939 d!368938))

(declare-fun d!368946 () Bool)

(assert (=> d!368946 (= (isEmpty!7852 rules!2550) ((_ is Nil!13285) rules!2550))))

(assert (=> b!1309940 d!368946))

(declare-fun d!368948 () Bool)

(declare-fun lt!431632 () Bool)

(assert (=> d!368948 (= lt!431632 (select (content!1858 lt!431414) lt!431407))))

(declare-fun e!840384 () Bool)

(assert (=> d!368948 (= lt!431632 e!840384)))

(declare-fun res!588393 () Bool)

(assert (=> d!368948 (=> (not res!588393) (not e!840384))))

(assert (=> d!368948 (= res!588393 ((_ is Cons!13283) lt!431414))))

(assert (=> d!368948 (= (contains!2308 lt!431414 lt!431407) lt!431632)))

(declare-fun b!1310512 () Bool)

(declare-fun e!840383 () Bool)

(assert (=> b!1310512 (= e!840384 e!840383)))

(declare-fun res!588392 () Bool)

(assert (=> b!1310512 (=> res!588392 e!840383)))

(assert (=> b!1310512 (= res!588392 (= (h!18684 lt!431414) lt!431407))))

(declare-fun b!1310513 () Bool)

(assert (=> b!1310513 (= e!840383 (contains!2308 (t!118008 lt!431414) lt!431407))))

(assert (= (and d!368948 res!588393) b!1310512))

(assert (= (and b!1310512 (not res!588392)) b!1310513))

(assert (=> d!368948 m!1462073))

(declare-fun m!1462355 () Bool)

(assert (=> d!368948 m!1462355))

(declare-fun m!1462357 () Bool)

(assert (=> b!1310513 m!1462357))

(assert (=> b!1309961 d!368948))

(declare-fun b!1310564 () Bool)

(declare-fun e!840419 () Rule!4398)

(declare-fun e!840417 () Rule!4398)

(assert (=> b!1310564 (= e!840419 e!840417)))

(declare-fun c!215044 () Bool)

(assert (=> b!1310564 (= c!215044 ((_ is Cons!13285) rules!2550))))

(declare-fun b!1310565 () Bool)

(assert (=> b!1310565 (= e!840417 (getWitness!193 (t!118010 rules!2550) lambda!52950))))

(declare-fun d!368950 () Bool)

(declare-fun e!840416 () Bool)

(assert (=> d!368950 e!840416))

(declare-fun res!588401 () Bool)

(assert (=> d!368950 (=> (not res!588401) (not e!840416))))

(declare-fun lt!431641 () Rule!4398)

(assert (=> d!368950 (= res!588401 (dynLambda!5764 lambda!52950 lt!431641))))

(assert (=> d!368950 (= lt!431641 e!840419)))

(declare-fun c!215043 () Bool)

(declare-fun e!840418 () Bool)

(assert (=> d!368950 (= c!215043 e!840418)))

(declare-fun res!588402 () Bool)

(assert (=> d!368950 (=> (not res!588402) (not e!840418))))

(assert (=> d!368950 (= res!588402 ((_ is Cons!13285) rules!2550))))

(assert (=> d!368950 (exists!301 rules!2550 lambda!52950)))

(assert (=> d!368950 (= (getWitness!193 rules!2550 lambda!52950) lt!431641)))

(declare-fun b!1310566 () Bool)

(assert (=> b!1310566 (= e!840419 (h!18686 rules!2550))))

(declare-fun b!1310567 () Bool)

(declare-fun lt!431640 () Unit!19338)

(declare-fun Unit!19343 () Unit!19338)

(assert (=> b!1310567 (= lt!431640 Unit!19343)))

(assert (=> b!1310567 false))

(declare-fun head!2256 (List!13351) Rule!4398)

(assert (=> b!1310567 (= e!840417 (head!2256 rules!2550))))

(declare-fun b!1310568 () Bool)

(assert (=> b!1310568 (= e!840416 (contains!2309 rules!2550 lt!431641))))

(declare-fun b!1310569 () Bool)

(assert (=> b!1310569 (= e!840418 (dynLambda!5764 lambda!52950 (h!18686 rules!2550)))))

(assert (= (and d!368950 res!588402) b!1310569))

(assert (= (and d!368950 c!215043) b!1310566))

(assert (= (and d!368950 (not c!215043)) b!1310564))

(assert (= (and b!1310564 c!215044) b!1310565))

(assert (= (and b!1310564 (not c!215044)) b!1310567))

(assert (= (and d!368950 res!588401) b!1310568))

(declare-fun b_lambda!37613 () Bool)

(assert (=> (not b_lambda!37613) (not d!368950)))

(declare-fun b_lambda!37615 () Bool)

(assert (=> (not b_lambda!37615) (not b!1310569)))

(declare-fun m!1462385 () Bool)

(assert (=> d!368950 m!1462385))

(assert (=> d!368950 m!1461627))

(declare-fun m!1462387 () Bool)

(assert (=> b!1310565 m!1462387))

(declare-fun m!1462389 () Bool)

(assert (=> b!1310568 m!1462389))

(declare-fun m!1462391 () Bool)

(assert (=> b!1310569 m!1462391))

(declare-fun m!1462393 () Bool)

(assert (=> b!1310567 m!1462393))

(assert (=> b!1309941 d!368950))

(declare-fun d!368958 () Bool)

(declare-fun lt!431644 () BalanceConc!8676)

(declare-fun printList!554 (LexerInterface!1994 List!13350) List!13349)

(assert (=> d!368958 (= (list!4986 lt!431644) (printList!554 thiss!19762 (list!4987 (singletonSeq!872 t1!34))))))

(declare-fun printTailRec!536 (LexerInterface!1994 BalanceConc!8678 Int BalanceConc!8676) BalanceConc!8676)

(assert (=> d!368958 (= lt!431644 (printTailRec!536 thiss!19762 (singletonSeq!872 t1!34) 0 (BalanceConc!8677 Empty!4368)))))

(assert (=> d!368958 (= (print!768 thiss!19762 (singletonSeq!872 t1!34)) lt!431644)))

(declare-fun bs!329808 () Bool)

(assert (= bs!329808 d!368958))

(declare-fun m!1462409 () Bool)

(assert (=> bs!329808 m!1462409))

(assert (=> bs!329808 m!1461549))

(assert (=> bs!329808 m!1461851))

(assert (=> bs!329808 m!1461851))

(declare-fun m!1462411 () Bool)

(assert (=> bs!329808 m!1462411))

(assert (=> bs!329808 m!1461549))

(declare-fun m!1462413 () Bool)

(assert (=> bs!329808 m!1462413))

(assert (=> b!1309941 d!368958))

(declare-fun b!1310587 () Bool)

(declare-fun res!588412 () Bool)

(declare-fun e!840430 () Bool)

(assert (=> b!1310587 (=> (not res!588412) (not e!840430))))

(declare-fun lt!431647 () tuple2!12894)

(assert (=> b!1310587 (= res!588412 (= (list!4987 (_1!7333 lt!431647)) (_1!7331 (lexList!532 thiss!19762 rules!2550 (list!4986 lt!431415)))))))

(declare-fun b!1310588 () Bool)

(declare-fun e!840431 () Bool)

(assert (=> b!1310588 (= e!840431 (= (_2!7333 lt!431647) lt!431415))))

(declare-fun b!1310589 () Bool)

(assert (=> b!1310589 (= e!840430 (= (list!4986 (_2!7333 lt!431647)) (_2!7331 (lexList!532 thiss!19762 rules!2550 (list!4986 lt!431415)))))))

(declare-fun d!368974 () Bool)

(assert (=> d!368974 e!840430))

(declare-fun res!588413 () Bool)

(assert (=> d!368974 (=> (not res!588413) (not e!840430))))

(assert (=> d!368974 (= res!588413 e!840431)))

(declare-fun c!215047 () Bool)

(assert (=> d!368974 (= c!215047 (> (size!10798 (_1!7333 lt!431647)) 0))))

(declare-fun lexTailRecV2!359 (LexerInterface!1994 List!13351 BalanceConc!8676 BalanceConc!8676 BalanceConc!8676 BalanceConc!8678) tuple2!12894)

(assert (=> d!368974 (= lt!431647 (lexTailRecV2!359 thiss!19762 rules!2550 lt!431415 (BalanceConc!8677 Empty!4368) lt!431415 (BalanceConc!8679 Empty!4369)))))

(assert (=> d!368974 (= (lex!829 thiss!19762 rules!2550 lt!431415) lt!431647)))

(declare-fun b!1310590 () Bool)

(declare-fun e!840432 () Bool)

(declare-fun isEmpty!7863 (BalanceConc!8678) Bool)

(assert (=> b!1310590 (= e!840432 (not (isEmpty!7863 (_1!7333 lt!431647))))))

(declare-fun b!1310591 () Bool)

(assert (=> b!1310591 (= e!840431 e!840432)))

(declare-fun res!588414 () Bool)

(assert (=> b!1310591 (= res!588414 (< (size!10791 (_2!7333 lt!431647)) (size!10791 lt!431415)))))

(assert (=> b!1310591 (=> (not res!588414) (not e!840432))))

(assert (= (and d!368974 c!215047) b!1310591))

(assert (= (and d!368974 (not c!215047)) b!1310588))

(assert (= (and b!1310591 res!588414) b!1310590))

(assert (= (and d!368974 res!588413) b!1310587))

(assert (= (and b!1310587 res!588412) b!1310589))

(declare-fun m!1462415 () Bool)

(assert (=> b!1310591 m!1462415))

(declare-fun m!1462417 () Bool)

(assert (=> b!1310591 m!1462417))

(declare-fun m!1462419 () Bool)

(assert (=> d!368974 m!1462419))

(declare-fun m!1462421 () Bool)

(assert (=> d!368974 m!1462421))

(declare-fun m!1462423 () Bool)

(assert (=> b!1310589 m!1462423))

(assert (=> b!1310589 m!1461515))

(assert (=> b!1310589 m!1461515))

(assert (=> b!1310589 m!1461517))

(declare-fun m!1462425 () Bool)

(assert (=> b!1310590 m!1462425))

(declare-fun m!1462427 () Bool)

(assert (=> b!1310587 m!1462427))

(assert (=> b!1310587 m!1461515))

(assert (=> b!1310587 m!1461515))

(assert (=> b!1310587 m!1461517))

(assert (=> b!1309941 d!368974))

(declare-fun d!368976 () Bool)

(declare-fun e!840435 () Bool)

(assert (=> d!368976 e!840435))

(declare-fun res!588417 () Bool)

(assert (=> d!368976 (=> (not res!588417) (not e!840435))))

(declare-fun lt!431650 () BalanceConc!8678)

(assert (=> d!368976 (= res!588417 (= (list!4987 lt!431650) (Cons!13284 t1!34 Nil!13284)))))

(declare-fun singleton!374 (Token!4260) BalanceConc!8678)

(assert (=> d!368976 (= lt!431650 (singleton!374 t1!34))))

(assert (=> d!368976 (= (singletonSeq!872 t1!34) lt!431650)))

(declare-fun b!1310594 () Bool)

(declare-fun isBalanced!1268 (Conc!4369) Bool)

(assert (=> b!1310594 (= e!840435 (isBalanced!1268 (c!214936 lt!431650)))))

(assert (= (and d!368976 res!588417) b!1310594))

(declare-fun m!1462429 () Bool)

(assert (=> d!368976 m!1462429))

(declare-fun m!1462431 () Bool)

(assert (=> d!368976 m!1462431))

(declare-fun m!1462433 () Bool)

(assert (=> b!1310594 m!1462433))

(assert (=> b!1309941 d!368976))

(declare-fun d!368978 () Bool)

(declare-fun list!4991 (Conc!4369) List!13350)

(assert (=> d!368978 (= (list!4987 (_1!7333 lt!431403)) (list!4991 (c!214936 (_1!7333 lt!431403))))))

(declare-fun bs!329809 () Bool)

(assert (= bs!329809 d!368978))

(declare-fun m!1462435 () Bool)

(assert (=> bs!329809 m!1462435))

(assert (=> b!1309941 d!368978))

(declare-fun b!1310595 () Bool)

(declare-fun e!840436 () tuple2!12890)

(declare-fun lt!431653 () Option!2564)

(declare-fun lt!431651 () tuple2!12890)

(assert (=> b!1310595 (= e!840436 (tuple2!12891 (Cons!13284 (_1!7332 (v!21077 lt!431653)) (_1!7331 lt!431651)) (_2!7331 lt!431651)))))

(assert (=> b!1310595 (= lt!431651 (lexList!532 thiss!19762 rules!2550 (_2!7332 (v!21077 lt!431653))))))

(declare-fun b!1310596 () Bool)

(declare-fun e!840438 () Bool)

(declare-fun lt!431652 () tuple2!12890)

(assert (=> b!1310596 (= e!840438 (= (_2!7331 lt!431652) (list!4986 lt!431409)))))

(declare-fun d!368980 () Bool)

(assert (=> d!368980 e!840438))

(declare-fun c!215049 () Bool)

(assert (=> d!368980 (= c!215049 (> (size!10796 (_1!7331 lt!431652)) 0))))

(assert (=> d!368980 (= lt!431652 e!840436)))

(declare-fun c!215048 () Bool)

(assert (=> d!368980 (= c!215048 ((_ is Some!2563) lt!431653))))

(assert (=> d!368980 (= lt!431653 (maxPrefix!1004 thiss!19762 rules!2550 (list!4986 lt!431409)))))

(assert (=> d!368980 (= (lexList!532 thiss!19762 rules!2550 (list!4986 lt!431409)) lt!431652)))

(declare-fun b!1310597 () Bool)

(declare-fun e!840437 () Bool)

(assert (=> b!1310597 (= e!840438 e!840437)))

(declare-fun res!588418 () Bool)

(assert (=> b!1310597 (= res!588418 (< (size!10797 (_2!7331 lt!431652)) (size!10797 (list!4986 lt!431409))))))

(assert (=> b!1310597 (=> (not res!588418) (not e!840437))))

(declare-fun b!1310598 () Bool)

(assert (=> b!1310598 (= e!840437 (not (isEmpty!7858 (_1!7331 lt!431652))))))

(declare-fun b!1310599 () Bool)

(assert (=> b!1310599 (= e!840436 (tuple2!12891 Nil!13284 (list!4986 lt!431409)))))

(assert (= (and d!368980 c!215048) b!1310595))

(assert (= (and d!368980 (not c!215048)) b!1310599))

(assert (= (and d!368980 c!215049) b!1310597))

(assert (= (and d!368980 (not c!215049)) b!1310596))

(assert (= (and b!1310597 res!588418) b!1310598))

(declare-fun m!1462437 () Bool)

(assert (=> b!1310595 m!1462437))

(declare-fun m!1462439 () Bool)

(assert (=> d!368980 m!1462439))

(assert (=> d!368980 m!1461623))

(declare-fun m!1462441 () Bool)

(assert (=> d!368980 m!1462441))

(declare-fun m!1462443 () Bool)

(assert (=> b!1310597 m!1462443))

(assert (=> b!1310597 m!1461623))

(declare-fun m!1462445 () Bool)

(assert (=> b!1310597 m!1462445))

(declare-fun m!1462447 () Bool)

(assert (=> b!1310598 m!1462447))

(assert (=> b!1309942 d!368980))

(declare-fun d!368982 () Bool)

(assert (=> d!368982 (= (list!4986 lt!431409) (list!4990 (c!214934 lt!431409)))))

(declare-fun bs!329810 () Bool)

(assert (= bs!329810 d!368982))

(declare-fun m!1462449 () Bool)

(assert (=> bs!329810 m!1462449))

(assert (=> b!1309942 d!368982))

(declare-fun d!368984 () Bool)

(declare-fun prefixMatchZipperSequence!168 (Regex!3613 BalanceConc!8676) Bool)

(declare-fun ++!3380 (BalanceConc!8676 BalanceConc!8676) BalanceConc!8676)

(declare-fun singletonSeq!874 (C!7516) BalanceConc!8676)

(assert (=> d!368984 (= (separableTokensPredicate!277 thiss!19762 t1!34 t2!34 rules!2550) (not (prefixMatchZipperSequence!168 (rulesRegex!184 thiss!19762 rules!2550) (++!3380 (charsOf!1271 t1!34) (singletonSeq!874 (apply!2987 (charsOf!1271 t2!34) 0))))))))

(declare-fun bs!329811 () Bool)

(assert (= bs!329811 d!368984))

(assert (=> bs!329811 m!1461617))

(declare-fun m!1462451 () Bool)

(assert (=> bs!329811 m!1462451))

(declare-fun m!1462453 () Bool)

(assert (=> bs!329811 m!1462453))

(assert (=> bs!329811 m!1461613))

(declare-fun m!1462455 () Bool)

(assert (=> bs!329811 m!1462455))

(assert (=> bs!329811 m!1462451))

(assert (=> bs!329811 m!1461613))

(assert (=> bs!329811 m!1461617))

(assert (=> bs!329811 m!1461593))

(declare-fun m!1462457 () Bool)

(assert (=> bs!329811 m!1462457))

(assert (=> bs!329811 m!1462457))

(assert (=> bs!329811 m!1462455))

(assert (=> bs!329811 m!1461593))

(assert (=> b!1309963 d!368984))

(declare-fun d!368986 () Bool)

(assert (=> d!368986 (= (list!4987 (_1!7333 lt!431404)) (list!4991 (c!214936 (_1!7333 lt!431404))))))

(declare-fun bs!329812 () Bool)

(assert (= bs!329812 d!368986))

(declare-fun m!1462459 () Bool)

(assert (=> bs!329812 m!1462459))

(assert (=> b!1309964 d!368986))

(declare-fun b!1310600 () Bool)

(declare-fun res!588419 () Bool)

(declare-fun e!840439 () Bool)

(assert (=> b!1310600 (=> (not res!588419) (not e!840439))))

(declare-fun lt!431654 () tuple2!12894)

(assert (=> b!1310600 (= res!588419 (= (list!4987 (_1!7333 lt!431654)) (_1!7331 (lexList!532 thiss!19762 rules!2550 (list!4986 lt!431409)))))))

(declare-fun b!1310601 () Bool)

(declare-fun e!840440 () Bool)

(assert (=> b!1310601 (= e!840440 (= (_2!7333 lt!431654) lt!431409))))

(declare-fun b!1310602 () Bool)

(assert (=> b!1310602 (= e!840439 (= (list!4986 (_2!7333 lt!431654)) (_2!7331 (lexList!532 thiss!19762 rules!2550 (list!4986 lt!431409)))))))

(declare-fun d!368988 () Bool)

(assert (=> d!368988 e!840439))

(declare-fun res!588420 () Bool)

(assert (=> d!368988 (=> (not res!588420) (not e!840439))))

(assert (=> d!368988 (= res!588420 e!840440)))

(declare-fun c!215050 () Bool)

(assert (=> d!368988 (= c!215050 (> (size!10798 (_1!7333 lt!431654)) 0))))

(assert (=> d!368988 (= lt!431654 (lexTailRecV2!359 thiss!19762 rules!2550 lt!431409 (BalanceConc!8677 Empty!4368) lt!431409 (BalanceConc!8679 Empty!4369)))))

(assert (=> d!368988 (= (lex!829 thiss!19762 rules!2550 lt!431409) lt!431654)))

(declare-fun b!1310603 () Bool)

(declare-fun e!840441 () Bool)

(assert (=> b!1310603 (= e!840441 (not (isEmpty!7863 (_1!7333 lt!431654))))))

(declare-fun b!1310604 () Bool)

(assert (=> b!1310604 (= e!840440 e!840441)))

(declare-fun res!588421 () Bool)

(assert (=> b!1310604 (= res!588421 (< (size!10791 (_2!7333 lt!431654)) (size!10791 lt!431409)))))

(assert (=> b!1310604 (=> (not res!588421) (not e!840441))))

(assert (= (and d!368988 c!215050) b!1310604))

(assert (= (and d!368988 (not c!215050)) b!1310601))

(assert (= (and b!1310604 res!588421) b!1310603))

(assert (= (and d!368988 res!588420) b!1310600))

(assert (= (and b!1310600 res!588419) b!1310602))

(declare-fun m!1462461 () Bool)

(assert (=> b!1310604 m!1462461))

(declare-fun m!1462463 () Bool)

(assert (=> b!1310604 m!1462463))

(declare-fun m!1462465 () Bool)

(assert (=> d!368988 m!1462465))

(declare-fun m!1462467 () Bool)

(assert (=> d!368988 m!1462467))

(declare-fun m!1462469 () Bool)

(assert (=> b!1310602 m!1462469))

(assert (=> b!1310602 m!1461623))

(assert (=> b!1310602 m!1461623))

(assert (=> b!1310602 m!1461625))

(declare-fun m!1462471 () Bool)

(assert (=> b!1310603 m!1462471))

(declare-fun m!1462473 () Bool)

(assert (=> b!1310600 m!1462473))

(assert (=> b!1310600 m!1461623))

(assert (=> b!1310600 m!1461623))

(assert (=> b!1310600 m!1461625))

(assert (=> b!1309964 d!368988))

(declare-fun d!368990 () Bool)

(declare-fun lt!431655 () BalanceConc!8676)

(assert (=> d!368990 (= (list!4986 lt!431655) (printList!554 thiss!19762 (list!4987 (singletonSeq!872 t2!34))))))

(assert (=> d!368990 (= lt!431655 (printTailRec!536 thiss!19762 (singletonSeq!872 t2!34) 0 (BalanceConc!8677 Empty!4368)))))

(assert (=> d!368990 (= (print!768 thiss!19762 (singletonSeq!872 t2!34)) lt!431655)))

(declare-fun bs!329813 () Bool)

(assert (= bs!329813 d!368990))

(declare-fun m!1462475 () Bool)

(assert (=> bs!329813 m!1462475))

(assert (=> bs!329813 m!1461569))

(assert (=> bs!329813 m!1461865))

(assert (=> bs!329813 m!1461865))

(declare-fun m!1462477 () Bool)

(assert (=> bs!329813 m!1462477))

(assert (=> bs!329813 m!1461569))

(declare-fun m!1462479 () Bool)

(assert (=> bs!329813 m!1462479))

(assert (=> b!1309964 d!368990))

(declare-fun d!368992 () Bool)

(declare-fun e!840442 () Bool)

(assert (=> d!368992 e!840442))

(declare-fun res!588422 () Bool)

(assert (=> d!368992 (=> (not res!588422) (not e!840442))))

(declare-fun lt!431656 () BalanceConc!8678)

(assert (=> d!368992 (= res!588422 (= (list!4987 lt!431656) (Cons!13284 t2!34 Nil!13284)))))

(assert (=> d!368992 (= lt!431656 (singleton!374 t2!34))))

(assert (=> d!368992 (= (singletonSeq!872 t2!34) lt!431656)))

(declare-fun b!1310605 () Bool)

(assert (=> b!1310605 (= e!840442 (isBalanced!1268 (c!214936 lt!431656)))))

(assert (= (and d!368992 res!588422) b!1310605))

(declare-fun m!1462481 () Bool)

(assert (=> d!368992 m!1462481))

(declare-fun m!1462483 () Bool)

(assert (=> d!368992 m!1462483))

(declare-fun m!1462485 () Bool)

(assert (=> b!1310605 m!1462485))

(assert (=> b!1309964 d!368992))

(declare-fun b!1310606 () Bool)

(declare-fun res!588423 () Bool)

(declare-fun e!840443 () Bool)

(assert (=> b!1310606 (=> res!588423 e!840443)))

(assert (=> b!1310606 (= res!588423 (not ((_ is IntegerValue!7169) (value!75154 t1!34))))))

(declare-fun e!840445 () Bool)

(assert (=> b!1310606 (= e!840445 e!840443)))

(declare-fun b!1310607 () Bool)

(declare-fun e!840444 () Bool)

(assert (=> b!1310607 (= e!840444 (inv!16 (value!75154 t1!34)))))

(declare-fun b!1310608 () Bool)

(assert (=> b!1310608 (= e!840443 (inv!15 (value!75154 t1!34)))))

(declare-fun d!368994 () Bool)

(declare-fun c!215051 () Bool)

(assert (=> d!368994 (= c!215051 ((_ is IntegerValue!7167) (value!75154 t1!34)))))

(assert (=> d!368994 (= (inv!21 (value!75154 t1!34)) e!840444)))

(declare-fun b!1310609 () Bool)

(assert (=> b!1310609 (= e!840445 (inv!17 (value!75154 t1!34)))))

(declare-fun b!1310610 () Bool)

(assert (=> b!1310610 (= e!840444 e!840445)))

(declare-fun c!215052 () Bool)

(assert (=> b!1310610 (= c!215052 ((_ is IntegerValue!7168) (value!75154 t1!34)))))

(assert (= (and d!368994 c!215051) b!1310607))

(assert (= (and d!368994 (not c!215051)) b!1310610))

(assert (= (and b!1310610 c!215052) b!1310609))

(assert (= (and b!1310610 (not c!215052)) b!1310606))

(assert (= (and b!1310606 (not res!588423)) b!1310608))

(declare-fun m!1462487 () Bool)

(assert (=> b!1310607 m!1462487))

(declare-fun m!1462489 () Bool)

(assert (=> b!1310608 m!1462489))

(declare-fun m!1462491 () Bool)

(assert (=> b!1310609 m!1462491))

(assert (=> b!1309943 d!368994))

(declare-fun d!368996 () Bool)

(declare-fun lt!431657 () Bool)

(assert (=> d!368996 (= lt!431657 (select (content!1859 rules!2550) (rule!4038 t1!34)))))

(declare-fun e!840446 () Bool)

(assert (=> d!368996 (= lt!431657 e!840446)))

(declare-fun res!588424 () Bool)

(assert (=> d!368996 (=> (not res!588424) (not e!840446))))

(assert (=> d!368996 (= res!588424 ((_ is Cons!13285) rules!2550))))

(assert (=> d!368996 (= (contains!2309 rules!2550 (rule!4038 t1!34)) lt!431657)))

(declare-fun b!1310611 () Bool)

(declare-fun e!840447 () Bool)

(assert (=> b!1310611 (= e!840446 e!840447)))

(declare-fun res!588425 () Bool)

(assert (=> b!1310611 (=> res!588425 e!840447)))

(assert (=> b!1310611 (= res!588425 (= (h!18686 rules!2550) (rule!4038 t1!34)))))

(declare-fun b!1310612 () Bool)

(assert (=> b!1310612 (= e!840447 (contains!2309 (t!118010 rules!2550) (rule!4038 t1!34)))))

(assert (= (and d!368996 res!588424) b!1310611))

(assert (= (and b!1310611 (not res!588425)) b!1310612))

(assert (=> d!368996 m!1462085))

(declare-fun m!1462493 () Bool)

(assert (=> d!368996 m!1462493))

(declare-fun m!1462495 () Bool)

(assert (=> b!1310612 m!1462495))

(assert (=> b!1309965 d!368996))

(declare-fun d!368998 () Bool)

(declare-fun res!588430 () Bool)

(declare-fun e!840450 () Bool)

(assert (=> d!368998 (=> (not res!588430) (not e!840450))))

(assert (=> d!368998 (= res!588430 (not (isEmpty!7861 (originalCharacters!3161 t1!34))))))

(assert (=> d!368998 (= (inv!17661 t1!34) e!840450)))

(declare-fun b!1310617 () Bool)

(declare-fun res!588431 () Bool)

(assert (=> b!1310617 (=> (not res!588431) (not e!840450))))

(assert (=> b!1310617 (= res!588431 (= (originalCharacters!3161 t1!34) (list!4986 (dynLambda!5765 (toChars!3377 (transformation!2299 (rule!4038 t1!34))) (value!75154 t1!34)))))))

(declare-fun b!1310618 () Bool)

(assert (=> b!1310618 (= e!840450 (= (size!10790 t1!34) (size!10797 (originalCharacters!3161 t1!34))))))

(assert (= (and d!368998 res!588430) b!1310617))

(assert (= (and b!1310617 res!588431) b!1310618))

(declare-fun b_lambda!37639 () Bool)

(assert (=> (not b_lambda!37639) (not b!1310617)))

(assert (=> b!1310617 t!118027))

(declare-fun b_and!87557 () Bool)

(assert (= b_and!87535 (and (=> t!118027 result!84564) b_and!87557)))

(assert (=> b!1310617 t!118029))

(declare-fun b_and!87559 () Bool)

(assert (= b_and!87537 (and (=> t!118029 result!84568) b_and!87559)))

(assert (=> b!1310617 t!118031))

(declare-fun b_and!87561 () Bool)

(assert (= b_and!87539 (and (=> t!118031 result!84570) b_and!87561)))

(declare-fun m!1462497 () Bool)

(assert (=> d!368998 m!1462497))

(assert (=> b!1310617 m!1462143))

(assert (=> b!1310617 m!1462143))

(declare-fun m!1462499 () Bool)

(assert (=> b!1310617 m!1462499))

(declare-fun m!1462501 () Bool)

(assert (=> b!1310618 m!1462501))

(assert (=> start!115642 d!368998))

(declare-fun d!369000 () Bool)

(declare-fun res!588432 () Bool)

(declare-fun e!840451 () Bool)

(assert (=> d!369000 (=> (not res!588432) (not e!840451))))

(assert (=> d!369000 (= res!588432 (not (isEmpty!7861 (originalCharacters!3161 t2!34))))))

(assert (=> d!369000 (= (inv!17661 t2!34) e!840451)))

(declare-fun b!1310619 () Bool)

(declare-fun res!588433 () Bool)

(assert (=> b!1310619 (=> (not res!588433) (not e!840451))))

(assert (=> b!1310619 (= res!588433 (= (originalCharacters!3161 t2!34) (list!4986 (dynLambda!5765 (toChars!3377 (transformation!2299 (rule!4038 t2!34))) (value!75154 t2!34)))))))

(declare-fun b!1310620 () Bool)

(assert (=> b!1310620 (= e!840451 (= (size!10790 t2!34) (size!10797 (originalCharacters!3161 t2!34))))))

(assert (= (and d!369000 res!588432) b!1310619))

(assert (= (and b!1310619 res!588433) b!1310620))

(declare-fun b_lambda!37641 () Bool)

(assert (=> (not b_lambda!37641) (not b!1310619)))

(declare-fun t!118040 () Bool)

(declare-fun tb!69711 () Bool)

(assert (=> (and b!1309934 (= (toChars!3377 (transformation!2299 (h!18686 rules!2550))) (toChars!3377 (transformation!2299 (rule!4038 t2!34)))) t!118040) tb!69711))

(declare-fun b!1310621 () Bool)

(declare-fun e!840452 () Bool)

(declare-fun tp!382017 () Bool)

(assert (=> b!1310621 (= e!840452 (and (inv!17665 (c!214934 (dynLambda!5765 (toChars!3377 (transformation!2299 (rule!4038 t2!34))) (value!75154 t2!34)))) tp!382017))))

(declare-fun result!84582 () Bool)

(assert (=> tb!69711 (= result!84582 (and (inv!17666 (dynLambda!5765 (toChars!3377 (transformation!2299 (rule!4038 t2!34))) (value!75154 t2!34))) e!840452))))

(assert (= tb!69711 b!1310621))

(declare-fun m!1462503 () Bool)

(assert (=> b!1310621 m!1462503))

(declare-fun m!1462505 () Bool)

(assert (=> tb!69711 m!1462505))

(assert (=> b!1310619 t!118040))

(declare-fun b_and!87563 () Bool)

(assert (= b_and!87557 (and (=> t!118040 result!84582) b_and!87563)))

(declare-fun t!118042 () Bool)

(declare-fun tb!69713 () Bool)

(assert (=> (and b!1309933 (= (toChars!3377 (transformation!2299 (rule!4038 t1!34))) (toChars!3377 (transformation!2299 (rule!4038 t2!34)))) t!118042) tb!69713))

(declare-fun result!84584 () Bool)

(assert (= result!84584 result!84582))

(assert (=> b!1310619 t!118042))

(declare-fun b_and!87565 () Bool)

(assert (= b_and!87559 (and (=> t!118042 result!84584) b_and!87565)))

(declare-fun t!118044 () Bool)

(declare-fun tb!69715 () Bool)

(assert (=> (and b!1309954 (= (toChars!3377 (transformation!2299 (rule!4038 t2!34))) (toChars!3377 (transformation!2299 (rule!4038 t2!34)))) t!118044) tb!69715))

(declare-fun result!84586 () Bool)

(assert (= result!84586 result!84582))

(assert (=> b!1310619 t!118044))

(declare-fun b_and!87567 () Bool)

(assert (= b_and!87561 (and (=> t!118044 result!84586) b_and!87567)))

(declare-fun m!1462507 () Bool)

(assert (=> d!369000 m!1462507))

(declare-fun m!1462509 () Bool)

(assert (=> b!1310619 m!1462509))

(assert (=> b!1310619 m!1462509))

(declare-fun m!1462511 () Bool)

(assert (=> b!1310619 m!1462511))

(declare-fun m!1462513 () Bool)

(assert (=> b!1310620 m!1462513))

(assert (=> start!115642 d!369000))

(declare-fun d!369002 () Bool)

(declare-fun lt!431658 () Bool)

(assert (=> d!369002 (= lt!431658 (isEmpty!7861 (list!4986 (_2!7333 lt!431403))))))

(assert (=> d!369002 (= lt!431658 (isEmpty!7862 (c!214934 (_2!7333 lt!431403))))))

(assert (=> d!369002 (= (isEmpty!7853 (_2!7333 lt!431403)) lt!431658)))

(declare-fun bs!329814 () Bool)

(assert (= bs!329814 d!369002))

(declare-fun m!1462515 () Bool)

(assert (=> bs!329814 m!1462515))

(assert (=> bs!329814 m!1462515))

(declare-fun m!1462517 () Bool)

(assert (=> bs!329814 m!1462517))

(declare-fun m!1462519 () Bool)

(assert (=> bs!329814 m!1462519))

(assert (=> b!1309945 d!369002))

(declare-fun d!369004 () Bool)

(declare-fun lt!431661 () Int)

(assert (=> d!369004 (= lt!431661 (size!10797 (list!4986 lt!431405)))))

(declare-fun size!10803 (Conc!4368) Int)

(assert (=> d!369004 (= lt!431661 (size!10803 (c!214934 lt!431405)))))

(assert (=> d!369004 (= (size!10791 lt!431405) lt!431661)))

(declare-fun bs!329815 () Bool)

(assert (= bs!329815 d!369004))

(assert (=> bs!329815 m!1461537))

(assert (=> bs!329815 m!1461537))

(assert (=> bs!329815 m!1462051))

(declare-fun m!1462521 () Bool)

(assert (=> bs!329815 m!1462521))

(assert (=> b!1309946 d!369004))

(declare-fun d!369006 () Bool)

(declare-fun lt!431662 () BalanceConc!8676)

(assert (=> d!369006 (= (list!4986 lt!431662) (originalCharacters!3161 t2!34))))

(assert (=> d!369006 (= lt!431662 (dynLambda!5765 (toChars!3377 (transformation!2299 (rule!4038 t2!34))) (value!75154 t2!34)))))

(assert (=> d!369006 (= (charsOf!1271 t2!34) lt!431662)))

(declare-fun b_lambda!37643 () Bool)

(assert (=> (not b_lambda!37643) (not d!369006)))

(assert (=> d!369006 t!118040))

(declare-fun b_and!87569 () Bool)

(assert (= b_and!87563 (and (=> t!118040 result!84582) b_and!87569)))

(assert (=> d!369006 t!118042))

(declare-fun b_and!87571 () Bool)

(assert (= b_and!87565 (and (=> t!118042 result!84584) b_and!87571)))

(assert (=> d!369006 t!118044))

(declare-fun b_and!87573 () Bool)

(assert (= b_and!87567 (and (=> t!118044 result!84586) b_and!87573)))

(declare-fun m!1462523 () Bool)

(assert (=> d!369006 m!1462523))

(assert (=> d!369006 m!1462509))

(assert (=> b!1309946 d!369006))

(declare-fun b!1310632 () Bool)

(declare-fun e!840455 () Bool)

(declare-fun tp_is_empty!6615 () Bool)

(assert (=> b!1310632 (= e!840455 tp_is_empty!6615)))

(declare-fun b!1310633 () Bool)

(declare-fun tp!382029 () Bool)

(declare-fun tp!382030 () Bool)

(assert (=> b!1310633 (= e!840455 (and tp!382029 tp!382030))))

(assert (=> b!1309952 (= tp!381968 e!840455)))

(declare-fun b!1310634 () Bool)

(declare-fun tp!382028 () Bool)

(assert (=> b!1310634 (= e!840455 tp!382028)))

(declare-fun b!1310635 () Bool)

(declare-fun tp!382031 () Bool)

(declare-fun tp!382032 () Bool)

(assert (=> b!1310635 (= e!840455 (and tp!382031 tp!382032))))

(assert (= (and b!1309952 ((_ is ElementMatch!3613) (regex!2299 (rule!4038 t2!34)))) b!1310632))

(assert (= (and b!1309952 ((_ is Concat!6003) (regex!2299 (rule!4038 t2!34)))) b!1310633))

(assert (= (and b!1309952 ((_ is Star!3613) (regex!2299 (rule!4038 t2!34)))) b!1310634))

(assert (= (and b!1309952 ((_ is Union!3613) (regex!2299 (rule!4038 t2!34)))) b!1310635))

(declare-fun b!1310636 () Bool)

(declare-fun e!840456 () Bool)

(assert (=> b!1310636 (= e!840456 tp_is_empty!6615)))

(declare-fun b!1310637 () Bool)

(declare-fun tp!382034 () Bool)

(declare-fun tp!382035 () Bool)

(assert (=> b!1310637 (= e!840456 (and tp!382034 tp!382035))))

(assert (=> b!1309957 (= tp!381963 e!840456)))

(declare-fun b!1310638 () Bool)

(declare-fun tp!382033 () Bool)

(assert (=> b!1310638 (= e!840456 tp!382033)))

(declare-fun b!1310639 () Bool)

(declare-fun tp!382036 () Bool)

(declare-fun tp!382037 () Bool)

(assert (=> b!1310639 (= e!840456 (and tp!382036 tp!382037))))

(assert (= (and b!1309957 ((_ is ElementMatch!3613) (regex!2299 (rule!4038 t1!34)))) b!1310636))

(assert (= (and b!1309957 ((_ is Concat!6003) (regex!2299 (rule!4038 t1!34)))) b!1310637))

(assert (= (and b!1309957 ((_ is Star!3613) (regex!2299 (rule!4038 t1!34)))) b!1310638))

(assert (= (and b!1309957 ((_ is Union!3613) (regex!2299 (rule!4038 t1!34)))) b!1310639))

(declare-fun b!1310644 () Bool)

(declare-fun e!840459 () Bool)

(declare-fun tp!382040 () Bool)

(assert (=> b!1310644 (= e!840459 (and tp_is_empty!6615 tp!382040))))

(assert (=> b!1309943 (= tp!381957 e!840459)))

(assert (= (and b!1309943 ((_ is Cons!13283) (originalCharacters!3161 t1!34))) b!1310644))

(declare-fun b!1310655 () Bool)

(declare-fun b_free!31579 () Bool)

(declare-fun b_next!32283 () Bool)

(assert (=> b!1310655 (= b_free!31579 (not b_next!32283))))

(declare-fun tp!382051 () Bool)

(declare-fun b_and!87575 () Bool)

(assert (=> b!1310655 (= tp!382051 b_and!87575)))

(declare-fun b_free!31581 () Bool)

(declare-fun b_next!32285 () Bool)

(assert (=> b!1310655 (= b_free!31581 (not b_next!32285))))

(declare-fun t!118046 () Bool)

(declare-fun tb!69717 () Bool)

(assert (=> (and b!1310655 (= (toChars!3377 (transformation!2299 (h!18686 (t!118010 rules!2550)))) (toChars!3377 (transformation!2299 (rule!4038 t1!34)))) t!118046) tb!69717))

(declare-fun result!84594 () Bool)

(assert (= result!84594 result!84564))

(assert (=> d!368884 t!118046))

(assert (=> b!1310617 t!118046))

(declare-fun tb!69719 () Bool)

(declare-fun t!118048 () Bool)

(assert (=> (and b!1310655 (= (toChars!3377 (transformation!2299 (h!18686 (t!118010 rules!2550)))) (toChars!3377 (transformation!2299 (rule!4038 t2!34)))) t!118048) tb!69719))

(declare-fun result!84596 () Bool)

(assert (= result!84596 result!84582))

(assert (=> b!1310619 t!118048))

(assert (=> d!369006 t!118048))

(declare-fun tp!382049 () Bool)

(declare-fun b_and!87577 () Bool)

(assert (=> b!1310655 (= tp!382049 (and (=> t!118046 result!84594) (=> t!118048 result!84596) b_and!87577))))

(declare-fun e!840468 () Bool)

(assert (=> b!1310655 (= e!840468 (and tp!382051 tp!382049))))

(declare-fun b!1310654 () Bool)

(declare-fun e!840469 () Bool)

(declare-fun tp!382050 () Bool)

(assert (=> b!1310654 (= e!840469 (and tp!382050 (inv!17658 (tag!2561 (h!18686 (t!118010 rules!2550)))) (inv!17662 (transformation!2299 (h!18686 (t!118010 rules!2550)))) e!840468))))

(declare-fun b!1310653 () Bool)

(declare-fun e!840470 () Bool)

(declare-fun tp!382052 () Bool)

(assert (=> b!1310653 (= e!840470 (and e!840469 tp!382052))))

(assert (=> b!1309944 (= tp!381966 e!840470)))

(assert (= b!1310654 b!1310655))

(assert (= b!1310653 b!1310654))

(assert (= (and b!1309944 ((_ is Cons!13285) (t!118010 rules!2550))) b!1310653))

(declare-fun m!1462525 () Bool)

(assert (=> b!1310654 m!1462525))

(declare-fun m!1462527 () Bool)

(assert (=> b!1310654 m!1462527))

(declare-fun b!1310656 () Bool)

(declare-fun e!840472 () Bool)

(declare-fun tp!382053 () Bool)

(assert (=> b!1310656 (= e!840472 (and tp_is_empty!6615 tp!382053))))

(assert (=> b!1309949 (= tp!381967 e!840472)))

(assert (= (and b!1309949 ((_ is Cons!13283) (originalCharacters!3161 t2!34))) b!1310656))

(declare-fun b!1310657 () Bool)

(declare-fun e!840473 () Bool)

(assert (=> b!1310657 (= e!840473 tp_is_empty!6615)))

(declare-fun b!1310658 () Bool)

(declare-fun tp!382055 () Bool)

(declare-fun tp!382056 () Bool)

(assert (=> b!1310658 (= e!840473 (and tp!382055 tp!382056))))

(assert (=> b!1309951 (= tp!381965 e!840473)))

(declare-fun b!1310659 () Bool)

(declare-fun tp!382054 () Bool)

(assert (=> b!1310659 (= e!840473 tp!382054)))

(declare-fun b!1310660 () Bool)

(declare-fun tp!382057 () Bool)

(declare-fun tp!382058 () Bool)

(assert (=> b!1310660 (= e!840473 (and tp!382057 tp!382058))))

(assert (= (and b!1309951 ((_ is ElementMatch!3613) (regex!2299 (h!18686 rules!2550)))) b!1310657))

(assert (= (and b!1309951 ((_ is Concat!6003) (regex!2299 (h!18686 rules!2550)))) b!1310658))

(assert (= (and b!1309951 ((_ is Star!3613) (regex!2299 (h!18686 rules!2550)))) b!1310659))

(assert (= (and b!1309951 ((_ is Union!3613) (regex!2299 (h!18686 rules!2550)))) b!1310660))

(declare-fun b_lambda!37645 () Bool)

(assert (= b_lambda!37641 (or (and b!1309934 b_free!31565 (= (toChars!3377 (transformation!2299 (h!18686 rules!2550))) (toChars!3377 (transformation!2299 (rule!4038 t2!34))))) (and b!1309933 b_free!31569 (= (toChars!3377 (transformation!2299 (rule!4038 t1!34))) (toChars!3377 (transformation!2299 (rule!4038 t2!34))))) (and b!1309954 b_free!31573) (and b!1310655 b_free!31581 (= (toChars!3377 (transformation!2299 (h!18686 (t!118010 rules!2550)))) (toChars!3377 (transformation!2299 (rule!4038 t2!34))))) b_lambda!37645)))

(declare-fun b_lambda!37647 () Bool)

(assert (= b_lambda!37601 (or b!1309935 b_lambda!37647)))

(declare-fun bs!329816 () Bool)

(declare-fun d!369008 () Bool)

(assert (= bs!329816 (and d!369008 b!1309935)))

(declare-fun ruleValid!557 (LexerInterface!1994 Rule!4398) Bool)

(assert (=> bs!329816 (= (dynLambda!5764 lambda!52951 (h!18686 rules!2550)) (ruleValid!557 thiss!19762 (h!18686 rules!2550)))))

(declare-fun m!1462529 () Bool)

(assert (=> bs!329816 m!1462529))

(assert (=> b!1310361 d!369008))

(declare-fun b_lambda!37649 () Bool)

(assert (= b_lambda!37597 (or b!1309930 b_lambda!37649)))

(declare-fun bs!329817 () Bool)

(declare-fun d!369010 () Bool)

(assert (= bs!329817 (and d!369010 b!1309930)))

(declare-fun res!588434 () Bool)

(declare-fun e!840474 () Bool)

(assert (=> bs!329817 (=> (not res!588434) (not e!840474))))

(assert (=> bs!329817 (= res!588434 (validRegex!1543 lt!431513))))

(assert (=> bs!329817 (= (dynLambda!5761 lambda!52949 lt!431513) e!840474)))

(declare-fun b!1310661 () Bool)

(assert (=> b!1310661 (= e!840474 (matchR!1615 lt!431513 lt!431412))))

(assert (= (and bs!329817 res!588434) b!1310661))

(declare-fun m!1462531 () Bool)

(assert (=> bs!329817 m!1462531))

(declare-fun m!1462533 () Bool)

(assert (=> b!1310661 m!1462533))

(assert (=> d!368812 d!369010))

(declare-fun b_lambda!37651 () Bool)

(assert (= b_lambda!37593 (or b!1309930 b_lambda!37651)))

(declare-fun bs!329818 () Bool)

(declare-fun d!369012 () Bool)

(assert (= bs!329818 (and d!369012 b!1309930)))

(assert (=> bs!329818 (= (dynLambda!5760 lambda!52948 (h!18686 rules!2550)) (regex!2299 (h!18686 rules!2550)))))

(assert (=> b!1310211 d!369012))

(declare-fun b_lambda!37653 () Bool)

(assert (= b_lambda!37639 (or (and b!1309934 b_free!31565 (= (toChars!3377 (transformation!2299 (h!18686 rules!2550))) (toChars!3377 (transformation!2299 (rule!4038 t1!34))))) (and b!1309933 b_free!31569) (and b!1309954 b_free!31573 (= (toChars!3377 (transformation!2299 (rule!4038 t2!34))) (toChars!3377 (transformation!2299 (rule!4038 t1!34))))) (and b!1310655 b_free!31581 (= (toChars!3377 (transformation!2299 (h!18686 (t!118010 rules!2550)))) (toChars!3377 (transformation!2299 (rule!4038 t1!34))))) b_lambda!37653)))

(declare-fun b_lambda!37655 () Bool)

(assert (= b_lambda!37643 (or (and b!1309934 b_free!31565 (= (toChars!3377 (transformation!2299 (h!18686 rules!2550))) (toChars!3377 (transformation!2299 (rule!4038 t2!34))))) (and b!1309933 b_free!31569 (= (toChars!3377 (transformation!2299 (rule!4038 t1!34))) (toChars!3377 (transformation!2299 (rule!4038 t2!34))))) (and b!1309954 b_free!31573) (and b!1310655 b_free!31581 (= (toChars!3377 (transformation!2299 (h!18686 (t!118010 rules!2550)))) (toChars!3377 (transformation!2299 (rule!4038 t2!34))))) b_lambda!37655)))

(declare-fun b_lambda!37657 () Bool)

(assert (= b_lambda!37613 (or b!1309937 b_lambda!37657)))

(declare-fun bs!329819 () Bool)

(declare-fun d!369014 () Bool)

(assert (= bs!329819 (and d!369014 b!1309937)))

(assert (=> bs!329819 (= (dynLambda!5764 lambda!52950 lt!431641) (= (regex!2299 lt!431641) lt!431413))))

(assert (=> d!368950 d!369014))

(declare-fun b_lambda!37659 () Bool)

(assert (= b_lambda!37595 (or b!1309930 b_lambda!37659)))

(declare-fun bs!329820 () Bool)

(declare-fun d!369016 () Bool)

(assert (= bs!329820 (and d!369016 b!1309930)))

(declare-fun res!588435 () Bool)

(declare-fun e!840475 () Bool)

(assert (=> bs!329820 (=> (not res!588435) (not e!840475))))

(assert (=> bs!329820 (= res!588435 (validRegex!1543 (h!18687 (map!2915 rules!2550 lambda!52948))))))

(assert (=> bs!329820 (= (dynLambda!5761 lambda!52949 (h!18687 (map!2915 rules!2550 lambda!52948))) e!840475)))

(declare-fun b!1310662 () Bool)

(assert (=> b!1310662 (= e!840475 (matchR!1615 (h!18687 (map!2915 rules!2550 lambda!52948)) lt!431412))))

(assert (= (and bs!329820 res!588435) b!1310662))

(declare-fun m!1462535 () Bool)

(assert (=> bs!329820 m!1462535))

(declare-fun m!1462537 () Bool)

(assert (=> b!1310662 m!1462537))

(assert (=> b!1310226 d!369016))

(declare-fun b_lambda!37661 () Bool)

(assert (= b_lambda!37603 (or (and b!1309934 b_free!31565 (= (toChars!3377 (transformation!2299 (h!18686 rules!2550))) (toChars!3377 (transformation!2299 (rule!4038 t1!34))))) (and b!1309933 b_free!31569) (and b!1309954 b_free!31573 (= (toChars!3377 (transformation!2299 (rule!4038 t2!34))) (toChars!3377 (transformation!2299 (rule!4038 t1!34))))) (and b!1310655 b_free!31581 (= (toChars!3377 (transformation!2299 (h!18686 (t!118010 rules!2550)))) (toChars!3377 (transformation!2299 (rule!4038 t1!34))))) b_lambda!37661)))

(declare-fun b_lambda!37663 () Bool)

(assert (= b_lambda!37609 (or b!1309939 b_lambda!37663)))

(declare-fun bs!329821 () Bool)

(declare-fun d!369018 () Bool)

(assert (= bs!329821 (and d!369018 b!1309939)))

(declare-fun res!588436 () Bool)

(declare-fun e!840476 () Bool)

(assert (=> bs!329821 (=> (not res!588436) (not e!840476))))

(assert (=> bs!329821 (= res!588436 (matchR!1615 lt!431419 lt!431619))))

(assert (=> bs!329821 (= (dynLambda!5768 lambda!52947 lt!431619) e!840476)))

(declare-fun b!1310663 () Bool)

(assert (=> b!1310663 (= e!840476 (isPrefix!1068 lt!431414 lt!431619))))

(assert (= (and bs!329821 res!588436) b!1310663))

(declare-fun m!1462539 () Bool)

(assert (=> bs!329821 m!1462539))

(declare-fun m!1462541 () Bool)

(assert (=> b!1310663 m!1462541))

(assert (=> d!368932 d!369018))

(declare-fun b_lambda!37665 () Bool)

(assert (= b_lambda!37615 (or b!1309937 b_lambda!37665)))

(declare-fun bs!329822 () Bool)

(declare-fun d!369020 () Bool)

(assert (= bs!329822 (and d!369020 b!1309937)))

(assert (=> bs!329822 (= (dynLambda!5764 lambda!52950 (h!18686 rules!2550)) (= (regex!2299 (h!18686 rules!2550)) lt!431413))))

(assert (=> b!1310569 d!369020))

(check-sat (not d!369002) (not b!1310603) (not b!1310618) (not d!368980) (not b!1310663) (not b!1310513) (not d!368938) (not d!368992) (not b!1310343) (not b!1310341) (not b!1310653) (not d!368832) (not d!368978) (not b!1310602) (not b!1310609) (not b_next!32271) (not b_next!32275) (not d!368810) (not b!1310242) (not b!1310661) (not b!1310390) (not bs!329817) (not b!1310386) (not b!1310392) (not b!1310369) (not d!368892) (not b!1310229) (not bm!89249) (not b!1310345) (not b!1310499) (not b!1310198) b_and!87575 (not bs!329816) b_and!87571 (not b!1310389) (not b!1310475) (not tb!69711) (not b!1310368) (not d!368934) (not d!368850) (not b!1310391) (not b!1310480) (not b!1310587) (not b!1310486) (not b!1310296) (not b_lambda!37659) (not b!1310502) (not d!368896) (not b!1310639) (not b!1310594) (not d!368986) (not b!1310608) (not b!1310337) (not b!1310380) (not b!1310619) (not d!368958) (not b!1310591) (not d!368984) (not b!1310388) (not bm!89254) (not d!368950) (not d!368864) (not b!1310635) (not b_lambda!37663) (not b!1310634) (not b_lambda!37655) (not b!1310637) (not b!1310617) (not bm!89250) (not b!1310656) (not b_lambda!37657) (not d!368862) (not d!368974) (not d!368988) b_and!87511 (not b!1310589) (not b_next!32269) (not d!368812) (not b!1310336) (not d!368870) (not b!1310396) (not b_next!32277) (not b!1310473) (not b!1310197) (not d!368982) (not d!368868) (not b!1310394) (not b!1310600) (not d!368886) (not b!1310315) (not b!1310638) (not b!1310387) (not b!1310660) (not b!1310482) (not b!1310243) (not d!368890) (not b!1310565) (not d!368836) (not b!1310195) (not b_lambda!37665) (not b!1310338) (not b_next!32285) (not b!1310205) (not b!1310070) (not d!369004) (not b_next!32267) (not d!368990) (not b!1310362) (not b_lambda!37645) (not b!1310393) (not d!368948) (not b_next!32283) (not b!1310484) b_and!87577 (not b!1310659) (not b!1310590) (not d!368894) (not b_lambda!37651) (not b!1310598) (not b!1310335) (not b!1310340) (not d!368872) (not b_lambda!37649) (not b!1310654) (not b!1310269) (not d!368878) (not b!1310644) (not b!1310211) b_and!87569 (not b!1310568) (not b!1310567) (not b!1310199) (not d!368976) b_and!87573 b_and!87515 (not d!368778) (not b!1310268) (not b!1310487) (not d!369006) (not b!1310604) (not d!368880) (not b_lambda!37661) (not d!368860) (not b!1310069) (not b!1310597) (not b!1310225) (not d!368806) (not d!368924) (not b!1310348) (not b!1310339) (not b!1310267) (not b!1310194) (not d!368760) (not d!368926) (not d!368912) (not b!1310227) (not d!368830) (not b!1310379) (not b!1310477) (not tb!69701) (not b!1310281) (not b!1310662) (not b!1310316) (not b!1310612) (not b_next!32273) (not b_lambda!37647) (not b!1310605) (not d!368866) (not d!368996) (not b!1310595) (not b!1310354) (not b!1310620) (not b!1310356) (not b_lambda!37653) (not b!1310658) (not d!368884) (not b!1310196) (not d!368854) (not b!1310067) b_and!87519 (not d!368882) (not bs!329820) (not d!368936) (not d!368776) (not d!368932) (not d!368824) (not d!368876) (not b!1310621) tp_is_empty!6615 (not b!1310607) (not bs!329821) (not d!368858) (not d!368804) (not b!1310363) (not d!369000) (not b!1310633) (not d!368998))
(check-sat (not b_next!32271) (not b_next!32275) (not b_next!32277) b_and!87569 (not b_next!32273) b_and!87519 b_and!87571 b_and!87575 b_and!87511 (not b_next!32269) (not b_next!32285) (not b_next!32267) (not b_next!32283) b_and!87577 b_and!87573 b_and!87515)
(get-model)

(declare-fun d!369062 () Bool)

(declare-fun lt!431692 () Int)

(assert (=> d!369062 (>= lt!431692 0)))

(declare-fun e!840508 () Int)

(assert (=> d!369062 (= lt!431692 e!840508)))

(declare-fun c!215065 () Bool)

(assert (=> d!369062 (= c!215065 ((_ is Nil!13283) (_2!7332 (get!4246 lt!431554))))))

(assert (=> d!369062 (= (size!10797 (_2!7332 (get!4246 lt!431554))) lt!431692)))

(declare-fun b!1310725 () Bool)

(assert (=> b!1310725 (= e!840508 0)))

(declare-fun b!1310726 () Bool)

(assert (=> b!1310726 (= e!840508 (+ 1 (size!10797 (t!118008 (_2!7332 (get!4246 lt!431554))))))))

(assert (= (and d!369062 c!215065) b!1310725))

(assert (= (and d!369062 (not c!215065)) b!1310726))

(declare-fun m!1462633 () Bool)

(assert (=> b!1310726 m!1462633))

(assert (=> b!1310336 d!369062))

(declare-fun d!369064 () Bool)

(assert (=> d!369064 (= (get!4246 lt!431554) (v!21077 lt!431554))))

(assert (=> b!1310336 d!369064))

(declare-fun d!369066 () Bool)

(declare-fun lt!431693 () Int)

(assert (=> d!369066 (>= lt!431693 0)))

(declare-fun e!840509 () Int)

(assert (=> d!369066 (= lt!431693 e!840509)))

(declare-fun c!215066 () Bool)

(assert (=> d!369066 (= c!215066 ((_ is Nil!13283) (list!4986 lt!431405)))))

(assert (=> d!369066 (= (size!10797 (list!4986 lt!431405)) lt!431693)))

(declare-fun b!1310727 () Bool)

(assert (=> b!1310727 (= e!840509 0)))

(declare-fun b!1310728 () Bool)

(assert (=> b!1310728 (= e!840509 (+ 1 (size!10797 (t!118008 (list!4986 lt!431405)))))))

(assert (= (and d!369066 c!215066) b!1310727))

(assert (= (and d!369066 (not c!215066)) b!1310728))

(declare-fun m!1462635 () Bool)

(assert (=> b!1310728 m!1462635))

(assert (=> b!1310336 d!369066))

(declare-fun d!369068 () Bool)

(declare-fun lt!431694 () Int)

(assert (=> d!369068 (= lt!431694 (size!10797 (list!4986 (_2!7333 lt!431647))))))

(assert (=> d!369068 (= lt!431694 (size!10803 (c!214934 (_2!7333 lt!431647))))))

(assert (=> d!369068 (= (size!10791 (_2!7333 lt!431647)) lt!431694)))

(declare-fun bs!329833 () Bool)

(assert (= bs!329833 d!369068))

(assert (=> bs!329833 m!1462423))

(assert (=> bs!329833 m!1462423))

(declare-fun m!1462637 () Bool)

(assert (=> bs!329833 m!1462637))

(declare-fun m!1462639 () Bool)

(assert (=> bs!329833 m!1462639))

(assert (=> b!1310591 d!369068))

(declare-fun d!369070 () Bool)

(declare-fun lt!431695 () Int)

(assert (=> d!369070 (= lt!431695 (size!10797 (list!4986 lt!431415)))))

(assert (=> d!369070 (= lt!431695 (size!10803 (c!214934 lt!431415)))))

(assert (=> d!369070 (= (size!10791 lt!431415) lt!431695)))

(declare-fun bs!329834 () Bool)

(assert (= bs!329834 d!369070))

(assert (=> bs!329834 m!1461515))

(assert (=> bs!329834 m!1461515))

(assert (=> bs!329834 m!1461741))

(declare-fun m!1462641 () Bool)

(assert (=> bs!329834 m!1462641))

(assert (=> b!1310591 d!369070))

(declare-fun d!369072 () Bool)

(assert (=> d!369072 (= (head!2255 lt!431412) (h!18684 lt!431412))))

(assert (=> b!1310482 d!369072))

(declare-fun d!369074 () Bool)

(declare-fun c!215069 () Bool)

(assert (=> d!369074 (= c!215069 ((_ is Nil!13283) lt!431414))))

(declare-fun e!840512 () (InoxSet C!7516))

(assert (=> d!369074 (= (content!1858 lt!431414) e!840512)))

(declare-fun b!1310735 () Bool)

(assert (=> b!1310735 (= e!840512 ((as const (Array C!7516 Bool)) false))))

(declare-fun b!1310736 () Bool)

(assert (=> b!1310736 (= e!840512 ((_ map or) (store ((as const (Array C!7516 Bool)) false) (h!18684 lt!431414) true) (content!1858 (t!118008 lt!431414))))))

(assert (= (and d!369074 c!215069) b!1310735))

(assert (= (and d!369074 (not c!215069)) b!1310736))

(declare-fun m!1462643 () Bool)

(assert (=> b!1310736 m!1462643))

(declare-fun m!1462645 () Bool)

(assert (=> b!1310736 m!1462645))

(assert (=> d!368948 d!369074))

(declare-fun d!369076 () Bool)

(assert (=> d!369076 (= (list!4986 (_2!7333 lt!431654)) (list!4990 (c!214934 (_2!7333 lt!431654))))))

(declare-fun bs!329835 () Bool)

(assert (= bs!329835 d!369076))

(declare-fun m!1462647 () Bool)

(assert (=> bs!329835 m!1462647))

(assert (=> b!1310602 d!369076))

(assert (=> b!1310602 d!368980))

(assert (=> b!1310602 d!368982))

(declare-fun d!369078 () Bool)

(declare-fun lt!431710 () Bool)

(assert (=> d!369078 (= lt!431710 (select (content!1859 rules!2550) (rule!4038 (_1!7332 (get!4246 lt!431580)))))))

(declare-fun e!840515 () Bool)

(assert (=> d!369078 (= lt!431710 e!840515)))

(declare-fun res!588480 () Bool)

(assert (=> d!369078 (=> (not res!588480) (not e!840515))))

(assert (=> d!369078 (= res!588480 ((_ is Cons!13285) rules!2550))))

(assert (=> d!369078 (= (contains!2309 rules!2550 (rule!4038 (_1!7332 (get!4246 lt!431580)))) lt!431710)))

(declare-fun b!1310739 () Bool)

(declare-fun e!840516 () Bool)

(assert (=> b!1310739 (= e!840515 e!840516)))

(declare-fun res!588481 () Bool)

(assert (=> b!1310739 (=> res!588481 e!840516)))

(assert (=> b!1310739 (= res!588481 (= (h!18686 rules!2550) (rule!4038 (_1!7332 (get!4246 lt!431580)))))))

(declare-fun b!1310740 () Bool)

(assert (=> b!1310740 (= e!840516 (contains!2309 (t!118010 rules!2550) (rule!4038 (_1!7332 (get!4246 lt!431580)))))))

(assert (= (and d!369078 res!588480) b!1310739))

(assert (= (and b!1310739 (not res!588481)) b!1310740))

(assert (=> d!369078 m!1462085))

(declare-fun m!1462649 () Bool)

(assert (=> d!369078 m!1462649))

(declare-fun m!1462651 () Bool)

(assert (=> b!1310740 m!1462651))

(assert (=> b!1310388 d!369078))

(declare-fun d!369080 () Bool)

(assert (=> d!369080 (= (get!4246 lt!431580) (v!21077 lt!431580))))

(assert (=> b!1310388 d!369080))

(declare-fun d!369082 () Bool)

(assert (=> d!369082 (= (isEmpty!7861 lt!431414) ((_ is Nil!13283) lt!431414))))

(assert (=> d!368878 d!369082))

(declare-fun d!369084 () Bool)

(declare-fun lt!431727 () Int)

(assert (=> d!369084 (>= lt!431727 0)))

(declare-fun e!840519 () Int)

(assert (=> d!369084 (= lt!431727 e!840519)))

(declare-fun c!215074 () Bool)

(assert (=> d!369084 (= c!215074 ((_ is Nil!13283) lt!431573))))

(assert (=> d!369084 (= (size!10797 lt!431573) lt!431727)))

(declare-fun b!1310745 () Bool)

(assert (=> b!1310745 (= e!840519 0)))

(declare-fun b!1310746 () Bool)

(assert (=> b!1310746 (= e!840519 (+ 1 (size!10797 (t!118008 lt!431573))))))

(assert (= (and d!369084 c!215074) b!1310745))

(assert (= (and d!369084 (not c!215074)) b!1310746))

(declare-fun m!1462653 () Bool)

(assert (=> b!1310746 m!1462653))

(assert (=> b!1310380 d!369084))

(declare-fun d!369086 () Bool)

(declare-fun lt!431728 () Int)

(assert (=> d!369086 (>= lt!431728 0)))

(declare-fun e!840520 () Int)

(assert (=> d!369086 (= lt!431728 e!840520)))

(declare-fun c!215075 () Bool)

(assert (=> d!369086 (= c!215075 ((_ is Nil!13283) lt!431402))))

(assert (=> d!369086 (= (size!10797 lt!431402) lt!431728)))

(declare-fun b!1310747 () Bool)

(assert (=> b!1310747 (= e!840520 0)))

(declare-fun b!1310748 () Bool)

(assert (=> b!1310748 (= e!840520 (+ 1 (size!10797 (t!118008 lt!431402))))))

(assert (= (and d!369086 c!215075) b!1310747))

(assert (= (and d!369086 (not c!215075)) b!1310748))

(declare-fun m!1462655 () Bool)

(assert (=> b!1310748 m!1462655))

(assert (=> b!1310380 d!369086))

(declare-fun d!369088 () Bool)

(declare-fun lt!431735 () Int)

(assert (=> d!369088 (>= lt!431735 0)))

(declare-fun e!840521 () Int)

(assert (=> d!369088 (= lt!431735 e!840521)))

(declare-fun c!215076 () Bool)

(assert (=> d!369088 (= c!215076 ((_ is Nil!13283) (Cons!13283 lt!431407 Nil!13283)))))

(assert (=> d!369088 (= (size!10797 (Cons!13283 lt!431407 Nil!13283)) lt!431735)))

(declare-fun b!1310749 () Bool)

(assert (=> b!1310749 (= e!840521 0)))

(declare-fun b!1310750 () Bool)

(assert (=> b!1310750 (= e!840521 (+ 1 (size!10797 (t!118008 (Cons!13283 lt!431407 Nil!13283)))))))

(assert (= (and d!369088 c!215076) b!1310749))

(assert (= (and d!369088 (not c!215076)) b!1310750))

(declare-fun m!1462657 () Bool)

(assert (=> b!1310750 m!1462657))

(assert (=> b!1310380 d!369088))

(assert (=> d!369004 d!369066))

(assert (=> d!369004 d!368862))

(declare-fun d!369090 () Bool)

(declare-fun lt!431770 () Int)

(assert (=> d!369090 (= lt!431770 (size!10797 (list!4990 (c!214934 lt!431405))))))

(assert (=> d!369090 (= lt!431770 (ite ((_ is Empty!4368) (c!214934 lt!431405)) 0 (ite ((_ is Leaf!6714) (c!214934 lt!431405)) (csize!8967 (c!214934 lt!431405)) (csize!8966 (c!214934 lt!431405)))))))

(assert (=> d!369090 (= (size!10803 (c!214934 lt!431405)) lt!431770)))

(declare-fun bs!329836 () Bool)

(assert (= bs!329836 d!369090))

(assert (=> bs!329836 m!1462071))

(assert (=> bs!329836 m!1462071))

(declare-fun m!1462659 () Bool)

(assert (=> bs!329836 m!1462659))

(assert (=> d!369004 d!369090))

(declare-fun d!369092 () Bool)

(assert (=> d!369092 (= (list!4987 (_1!7333 lt!431647)) (list!4991 (c!214936 (_1!7333 lt!431647))))))

(declare-fun bs!329837 () Bool)

(assert (= bs!329837 d!369092))

(declare-fun m!1462661 () Bool)

(assert (=> bs!329837 m!1462661))

(assert (=> b!1310587 d!369092))

(assert (=> b!1310587 d!368760))

(assert (=> b!1310587 d!368776))

(declare-fun d!369094 () Bool)

(declare-fun c!215081 () Bool)

(assert (=> d!369094 (= c!215081 ((_ is Node!4368) (c!214934 (dynLambda!5765 (toChars!3377 (transformation!2299 (rule!4038 t2!34))) (value!75154 t2!34)))))))

(declare-fun e!840530 () Bool)

(assert (=> d!369094 (= (inv!17665 (c!214934 (dynLambda!5765 (toChars!3377 (transformation!2299 (rule!4038 t2!34))) (value!75154 t2!34)))) e!840530)))

(declare-fun b!1310763 () Bool)

(declare-fun inv!17669 (Conc!4368) Bool)

(assert (=> b!1310763 (= e!840530 (inv!17669 (c!214934 (dynLambda!5765 (toChars!3377 (transformation!2299 (rule!4038 t2!34))) (value!75154 t2!34)))))))

(declare-fun b!1310764 () Bool)

(declare-fun e!840531 () Bool)

(assert (=> b!1310764 (= e!840530 e!840531)))

(declare-fun res!588486 () Bool)

(assert (=> b!1310764 (= res!588486 (not ((_ is Leaf!6714) (c!214934 (dynLambda!5765 (toChars!3377 (transformation!2299 (rule!4038 t2!34))) (value!75154 t2!34))))))))

(assert (=> b!1310764 (=> res!588486 e!840531)))

(declare-fun b!1310765 () Bool)

(declare-fun inv!17670 (Conc!4368) Bool)

(assert (=> b!1310765 (= e!840531 (inv!17670 (c!214934 (dynLambda!5765 (toChars!3377 (transformation!2299 (rule!4038 t2!34))) (value!75154 t2!34)))))))

(assert (= (and d!369094 c!215081) b!1310763))

(assert (= (and d!369094 (not c!215081)) b!1310764))

(assert (= (and b!1310764 (not res!588486)) b!1310765))

(declare-fun m!1462663 () Bool)

(assert (=> b!1310763 m!1462663))

(declare-fun m!1462665 () Bool)

(assert (=> b!1310765 m!1462665))

(assert (=> b!1310621 d!369094))

(declare-fun d!369096 () Bool)

(declare-fun lt!431771 () Int)

(assert (=> d!369096 (= lt!431771 (size!10797 (list!4986 lt!431411)))))

(assert (=> d!369096 (= lt!431771 (size!10803 (c!214934 lt!431411)))))

(assert (=> d!369096 (= (size!10791 lt!431411) lt!431771)))

(declare-fun bs!329838 () Bool)

(assert (= bs!329838 d!369096))

(assert (=> bs!329838 m!1461619))

(assert (=> bs!329838 m!1461619))

(declare-fun m!1462667 () Bool)

(assert (=> bs!329838 m!1462667))

(declare-fun m!1462669 () Bool)

(assert (=> bs!329838 m!1462669))

(assert (=> b!1310348 d!369096))

(declare-fun b!1310774 () Bool)

(declare-fun e!840536 () List!13349)

(assert (=> b!1310774 (= e!840536 Nil!13283)))

(declare-fun d!369098 () Bool)

(declare-fun c!215086 () Bool)

(assert (=> d!369098 (= c!215086 ((_ is Empty!4368) (c!214934 lt!431409)))))

(assert (=> d!369098 (= (list!4990 (c!214934 lt!431409)) e!840536)))

(declare-fun b!1310777 () Bool)

(declare-fun e!840537 () List!13349)

(assert (=> b!1310777 (= e!840537 (++!3378 (list!4990 (left!11423 (c!214934 lt!431409))) (list!4990 (right!11753 (c!214934 lt!431409)))))))

(declare-fun b!1310775 () Bool)

(assert (=> b!1310775 (= e!840536 e!840537)))

(declare-fun c!215087 () Bool)

(assert (=> b!1310775 (= c!215087 ((_ is Leaf!6714) (c!214934 lt!431409)))))

(declare-fun b!1310776 () Bool)

(declare-fun list!4992 (IArray!8741) List!13349)

(assert (=> b!1310776 (= e!840537 (list!4992 (xs!7083 (c!214934 lt!431409))))))

(assert (= (and d!369098 c!215086) b!1310774))

(assert (= (and d!369098 (not c!215086)) b!1310775))

(assert (= (and b!1310775 c!215087) b!1310776))

(assert (= (and b!1310775 (not c!215087)) b!1310777))

(declare-fun m!1462671 () Bool)

(assert (=> b!1310777 m!1462671))

(declare-fun m!1462673 () Bool)

(assert (=> b!1310777 m!1462673))

(assert (=> b!1310777 m!1462671))

(assert (=> b!1310777 m!1462673))

(declare-fun m!1462675 () Bool)

(assert (=> b!1310777 m!1462675))

(declare-fun m!1462677 () Bool)

(assert (=> b!1310776 m!1462677))

(assert (=> d!368982 d!369098))

(declare-fun d!369100 () Bool)

(declare-fun lt!431772 () Bool)

(assert (=> d!369100 (= lt!431772 (select (content!1858 (t!118008 lt!431412)) lt!431418))))

(declare-fun e!840539 () Bool)

(assert (=> d!369100 (= lt!431772 e!840539)))

(declare-fun res!588488 () Bool)

(assert (=> d!369100 (=> (not res!588488) (not e!840539))))

(assert (=> d!369100 (= res!588488 ((_ is Cons!13283) (t!118008 lt!431412)))))

(assert (=> d!369100 (= (contains!2308 (t!118008 lt!431412) lt!431418) lt!431772)))

(declare-fun b!1310778 () Bool)

(declare-fun e!840538 () Bool)

(assert (=> b!1310778 (= e!840539 e!840538)))

(declare-fun res!588487 () Bool)

(assert (=> b!1310778 (=> res!588487 e!840538)))

(assert (=> b!1310778 (= res!588487 (= (h!18684 (t!118008 lt!431412)) lt!431418))))

(declare-fun b!1310779 () Bool)

(assert (=> b!1310779 (= e!840538 (contains!2308 (t!118008 (t!118008 lt!431412)) lt!431418))))

(assert (= (and d!369100 res!588488) b!1310778))

(assert (= (and b!1310778 (not res!588487)) b!1310779))

(declare-fun m!1462679 () Bool)

(assert (=> d!369100 m!1462679))

(declare-fun m!1462681 () Bool)

(assert (=> d!369100 m!1462681))

(declare-fun m!1462683 () Bool)

(assert (=> b!1310779 m!1462683))

(assert (=> b!1310356 d!369100))

(declare-fun d!369102 () Bool)

(declare-fun c!215090 () Bool)

(assert (=> d!369102 (= c!215090 ((_ is Nil!13285) rules!2550))))

(declare-fun e!840542 () (InoxSet Rule!4398))

(assert (=> d!369102 (= (content!1859 rules!2550) e!840542)))

(declare-fun b!1310784 () Bool)

(assert (=> b!1310784 (= e!840542 ((as const (Array Rule!4398 Bool)) false))))

(declare-fun b!1310785 () Bool)

(assert (=> b!1310785 (= e!840542 ((_ map or) (store ((as const (Array Rule!4398 Bool)) false) (h!18686 rules!2550) true) (content!1859 (t!118010 rules!2550))))))

(assert (= (and d!369102 c!215090) b!1310784))

(assert (= (and d!369102 (not c!215090)) b!1310785))

(declare-fun m!1462685 () Bool)

(assert (=> b!1310785 m!1462685))

(declare-fun m!1462687 () Bool)

(assert (=> b!1310785 m!1462687))

(assert (=> d!368996 d!369102))

(declare-fun d!369104 () Bool)

(declare-fun res!588489 () Bool)

(declare-fun e!840543 () Bool)

(assert (=> d!369104 (=> res!588489 e!840543)))

(assert (=> d!369104 (= res!588489 (not ((_ is Cons!13285) (t!118010 rules!2550))))))

(assert (=> d!369104 (= (sepAndNonSepRulesDisjointChars!672 rules!2550 (t!118010 rules!2550)) e!840543)))

(declare-fun b!1310786 () Bool)

(declare-fun e!840544 () Bool)

(assert (=> b!1310786 (= e!840543 e!840544)))

(declare-fun res!588490 () Bool)

(assert (=> b!1310786 (=> (not res!588490) (not e!840544))))

(assert (=> b!1310786 (= res!588490 (ruleDisjointCharsFromAllFromOtherType!305 (h!18686 (t!118010 rules!2550)) rules!2550))))

(declare-fun b!1310787 () Bool)

(assert (=> b!1310787 (= e!840544 (sepAndNonSepRulesDisjointChars!672 rules!2550 (t!118010 (t!118010 rules!2550))))))

(assert (= (and d!369104 (not res!588489)) b!1310786))

(assert (= (and b!1310786 res!588490) b!1310787))

(declare-fun m!1462689 () Bool)

(assert (=> b!1310786 m!1462689))

(declare-fun m!1462691 () Bool)

(assert (=> b!1310787 m!1462691))

(assert (=> b!1310243 d!369104))

(assert (=> d!368836 d!368912))

(declare-fun bs!329839 () Bool)

(declare-fun d!369106 () Bool)

(assert (= bs!329839 (and d!369106 d!368850)))

(declare-fun lambda!53004 () Int)

(assert (=> bs!329839 (= (= lambda!52979 lambda!52949) (= lambda!53004 lambda!52980))))

(declare-fun bs!329840 () Bool)

(assert (= bs!329840 (and d!369106 d!368836)))

(assert (=> bs!329840 (not (= lambda!53004 lambda!52979))))

(declare-fun bs!329841 () Bool)

(assert (= bs!329841 (and d!369106 d!368832)))

(assert (=> bs!329841 (= (= lambda!52979 lambda!52949) (= lambda!53004 lambda!52973))))

(assert (=> bs!329840 (not (= lambda!53004 lambda!52978))))

(declare-fun bs!329842 () Bool)

(assert (= bs!329842 (and d!369106 b!1309930)))

(assert (=> bs!329842 (not (= lambda!53004 lambda!52949))))

(assert (=> d!369106 true))

(assert (=> d!369106 (< (dynLambda!5762 order!7973 lambda!52979) (dynLambda!5762 order!7973 lambda!53004))))

(assert (=> d!369106 (= (exists!300 lt!431420 lambda!52979) (not (forall!3282 lt!431420 lambda!53004)))))

(declare-fun bs!329843 () Bool)

(assert (= bs!329843 d!369106))

(declare-fun m!1462693 () Bool)

(assert (=> bs!329843 m!1462693))

(assert (=> d!368836 d!369106))

(declare-fun bs!329844 () Bool)

(declare-fun d!369108 () Bool)

(assert (= bs!329844 (and d!369108 d!368850)))

(declare-fun lambda!53007 () Int)

(assert (=> bs!329844 (not (= lambda!53007 lambda!52980))))

(declare-fun bs!329845 () Bool)

(assert (= bs!329845 (and d!369108 d!368836)))

(assert (=> bs!329845 (= lambda!53007 lambda!52979)))

(declare-fun bs!329846 () Bool)

(assert (= bs!329846 (and d!369108 d!368832)))

(assert (=> bs!329846 (not (= lambda!53007 lambda!52973))))

(declare-fun bs!329847 () Bool)

(assert (= bs!329847 (and d!369108 d!369106)))

(assert (=> bs!329847 (not (= lambda!53007 lambda!53004))))

(assert (=> bs!329845 (not (= lambda!53007 lambda!52978))))

(declare-fun bs!329848 () Bool)

(assert (= bs!329848 (and d!369108 b!1309930)))

(assert (=> bs!329848 (= lambda!53007 lambda!52949)))

(assert (=> d!369108 true))

(assert (=> d!369108 (= (matchR!1615 lt!431419 lt!431412) (exists!300 lt!431420 lambda!53007))))

(assert (=> d!369108 true))

(declare-fun _$85!98 () Unit!19338)

(assert (=> d!369108 (= (choose!8009 lt!431419 lt!431420 lt!431412) _$85!98)))

(declare-fun bs!329850 () Bool)

(assert (= bs!329850 d!369108))

(assert (=> bs!329850 m!1461535))

(declare-fun m!1462787 () Bool)

(assert (=> bs!329850 m!1462787))

(assert (=> d!368836 d!369108))

(declare-fun d!369112 () Bool)

(declare-fun res!588499 () Bool)

(declare-fun e!840559 () Bool)

(assert (=> d!369112 (=> res!588499 e!840559)))

(assert (=> d!369112 (= res!588499 ((_ is Nil!13286) lt!431420))))

(assert (=> d!369112 (= (forall!3282 lt!431420 lambda!52978) e!840559)))

(declare-fun b!1310808 () Bool)

(declare-fun e!840560 () Bool)

(assert (=> b!1310808 (= e!840559 e!840560)))

(declare-fun res!588500 () Bool)

(assert (=> b!1310808 (=> (not res!588500) (not e!840560))))

(assert (=> b!1310808 (= res!588500 (dynLambda!5761 lambda!52978 (h!18687 lt!431420)))))

(declare-fun b!1310809 () Bool)

(assert (=> b!1310809 (= e!840560 (forall!3282 (t!118011 lt!431420) lambda!52978))))

(assert (= (and d!369112 (not res!588499)) b!1310808))

(assert (= (and b!1310808 res!588500) b!1310809))

(declare-fun b_lambda!37669 () Bool)

(assert (=> (not b_lambda!37669) (not b!1310808)))

(declare-fun m!1462791 () Bool)

(assert (=> b!1310808 m!1462791))

(declare-fun m!1462793 () Bool)

(assert (=> b!1310809 m!1462793))

(assert (=> d!368836 d!369112))

(declare-fun b!1310810 () Bool)

(declare-fun e!840561 () List!13349)

(assert (=> b!1310810 (= e!840561 Nil!13283)))

(declare-fun d!369116 () Bool)

(declare-fun c!215097 () Bool)

(assert (=> d!369116 (= c!215097 ((_ is Empty!4368) (c!214934 lt!431411)))))

(assert (=> d!369116 (= (list!4990 (c!214934 lt!431411)) e!840561)))

(declare-fun b!1310813 () Bool)

(declare-fun e!840562 () List!13349)

(assert (=> b!1310813 (= e!840562 (++!3378 (list!4990 (left!11423 (c!214934 lt!431411))) (list!4990 (right!11753 (c!214934 lt!431411)))))))

(declare-fun b!1310811 () Bool)

(assert (=> b!1310811 (= e!840561 e!840562)))

(declare-fun c!215098 () Bool)

(assert (=> b!1310811 (= c!215098 ((_ is Leaf!6714) (c!214934 lt!431411)))))

(declare-fun b!1310812 () Bool)

(assert (=> b!1310812 (= e!840562 (list!4992 (xs!7083 (c!214934 lt!431411))))))

(assert (= (and d!369116 c!215097) b!1310810))

(assert (= (and d!369116 (not c!215097)) b!1310811))

(assert (= (and b!1310811 c!215098) b!1310812))

(assert (= (and b!1310811 (not c!215098)) b!1310813))

(declare-fun m!1462795 () Bool)

(assert (=> b!1310813 m!1462795))

(declare-fun m!1462797 () Bool)

(assert (=> b!1310813 m!1462797))

(assert (=> b!1310813 m!1462795))

(assert (=> b!1310813 m!1462797))

(declare-fun m!1462803 () Bool)

(assert (=> b!1310813 m!1462803))

(declare-fun m!1462807 () Bool)

(assert (=> b!1310812 m!1462807))

(assert (=> d!368882 d!369116))

(declare-fun d!369118 () Bool)

(assert (=> d!369118 (= (list!4986 lt!431644) (list!4990 (c!214934 lt!431644)))))

(declare-fun bs!329851 () Bool)

(assert (= bs!329851 d!369118))

(declare-fun m!1462813 () Bool)

(assert (=> bs!329851 m!1462813))

(assert (=> d!368958 d!369118))

(declare-fun d!369120 () Bool)

(declare-fun c!215101 () Bool)

(assert (=> d!369120 (= c!215101 ((_ is Cons!13284) (list!4987 (singletonSeq!872 t1!34))))))

(declare-fun e!840567 () List!13349)

(assert (=> d!369120 (= (printList!554 thiss!19762 (list!4987 (singletonSeq!872 t1!34))) e!840567)))

(declare-fun b!1310820 () Bool)

(assert (=> b!1310820 (= e!840567 (++!3378 (list!4986 (charsOf!1271 (h!18685 (list!4987 (singletonSeq!872 t1!34))))) (printList!554 thiss!19762 (t!118009 (list!4987 (singletonSeq!872 t1!34))))))))

(declare-fun b!1310821 () Bool)

(assert (=> b!1310821 (= e!840567 Nil!13283)))

(assert (= (and d!369120 c!215101) b!1310820))

(assert (= (and d!369120 (not c!215101)) b!1310821))

(declare-fun m!1462897 () Bool)

(assert (=> b!1310820 m!1462897))

(assert (=> b!1310820 m!1462897))

(declare-fun m!1462899 () Bool)

(assert (=> b!1310820 m!1462899))

(declare-fun m!1462901 () Bool)

(assert (=> b!1310820 m!1462901))

(assert (=> b!1310820 m!1462899))

(assert (=> b!1310820 m!1462901))

(declare-fun m!1462903 () Bool)

(assert (=> b!1310820 m!1462903))

(assert (=> d!368958 d!369120))

(declare-fun d!369126 () Bool)

(assert (=> d!369126 (= (list!4987 (singletonSeq!872 t1!34)) (list!4991 (c!214936 (singletonSeq!872 t1!34))))))

(declare-fun bs!329852 () Bool)

(assert (= bs!329852 d!369126))

(declare-fun m!1462905 () Bool)

(assert (=> bs!329852 m!1462905))

(assert (=> d!368958 d!369126))

(declare-fun d!369128 () Bool)

(declare-fun lt!431874 () BalanceConc!8676)

(declare-fun printListTailRec!231 (LexerInterface!1994 List!13350 List!13349) List!13349)

(declare-fun dropList!364 (BalanceConc!8678 Int) List!13350)

(assert (=> d!369128 (= (list!4986 lt!431874) (printListTailRec!231 thiss!19762 (dropList!364 (singletonSeq!872 t1!34) 0) (list!4986 (BalanceConc!8677 Empty!4368))))))

(declare-fun e!840580 () BalanceConc!8676)

(assert (=> d!369128 (= lt!431874 e!840580)))

(declare-fun c!215109 () Bool)

(assert (=> d!369128 (= c!215109 (>= 0 (size!10798 (singletonSeq!872 t1!34))))))

(declare-fun e!840579 () Bool)

(assert (=> d!369128 e!840579))

(declare-fun res!588507 () Bool)

(assert (=> d!369128 (=> (not res!588507) (not e!840579))))

(assert (=> d!369128 (= res!588507 (>= 0 0))))

(assert (=> d!369128 (= (printTailRec!536 thiss!19762 (singletonSeq!872 t1!34) 0 (BalanceConc!8677 Empty!4368)) lt!431874)))

(declare-fun b!1310840 () Bool)

(assert (=> b!1310840 (= e!840579 (<= 0 (size!10798 (singletonSeq!872 t1!34))))))

(declare-fun b!1310841 () Bool)

(assert (=> b!1310841 (= e!840580 (BalanceConc!8677 Empty!4368))))

(declare-fun b!1310842 () Bool)

(assert (=> b!1310842 (= e!840580 (printTailRec!536 thiss!19762 (singletonSeq!872 t1!34) (+ 0 1) (++!3380 (BalanceConc!8677 Empty!4368) (charsOf!1271 (apply!2989 (singletonSeq!872 t1!34) 0)))))))

(declare-fun lt!431876 () List!13350)

(assert (=> b!1310842 (= lt!431876 (list!4987 (singletonSeq!872 t1!34)))))

(declare-fun lt!431872 () Unit!19338)

(declare-fun lemmaDropApply!422 (List!13350 Int) Unit!19338)

(assert (=> b!1310842 (= lt!431872 (lemmaDropApply!422 lt!431876 0))))

(declare-fun head!2258 (List!13350) Token!4260)

(declare-fun drop!661 (List!13350 Int) List!13350)

(declare-fun apply!2998 (List!13350 Int) Token!4260)

(assert (=> b!1310842 (= (head!2258 (drop!661 lt!431876 0)) (apply!2998 lt!431876 0))))

(declare-fun lt!431871 () Unit!19338)

(assert (=> b!1310842 (= lt!431871 lt!431872)))

(declare-fun lt!431873 () List!13350)

(assert (=> b!1310842 (= lt!431873 (list!4987 (singletonSeq!872 t1!34)))))

(declare-fun lt!431877 () Unit!19338)

(declare-fun lemmaDropTail!402 (List!13350 Int) Unit!19338)

(assert (=> b!1310842 (= lt!431877 (lemmaDropTail!402 lt!431873 0))))

(declare-fun tail!1876 (List!13350) List!13350)

(assert (=> b!1310842 (= (tail!1876 (drop!661 lt!431873 0)) (drop!661 lt!431873 (+ 0 1)))))

(declare-fun lt!431875 () Unit!19338)

(assert (=> b!1310842 (= lt!431875 lt!431877)))

(assert (= (and d!369128 res!588507) b!1310840))

(assert (= (and d!369128 c!215109) b!1310841))

(assert (= (and d!369128 (not c!215109)) b!1310842))

(assert (=> d!369128 m!1461549))

(declare-fun m!1462921 () Bool)

(assert (=> d!369128 m!1462921))

(declare-fun m!1462923 () Bool)

(assert (=> d!369128 m!1462923))

(assert (=> d!369128 m!1461549))

(declare-fun m!1462925 () Bool)

(assert (=> d!369128 m!1462925))

(declare-fun m!1462927 () Bool)

(assert (=> d!369128 m!1462927))

(assert (=> d!369128 m!1462925))

(assert (=> d!369128 m!1462927))

(declare-fun m!1462929 () Bool)

(assert (=> d!369128 m!1462929))

(assert (=> b!1310840 m!1461549))

(assert (=> b!1310840 m!1462921))

(declare-fun m!1462931 () Bool)

(assert (=> b!1310842 m!1462931))

(declare-fun m!1462933 () Bool)

(assert (=> b!1310842 m!1462933))

(declare-fun m!1462935 () Bool)

(assert (=> b!1310842 m!1462935))

(declare-fun m!1462937 () Bool)

(assert (=> b!1310842 m!1462937))

(declare-fun m!1462939 () Bool)

(assert (=> b!1310842 m!1462939))

(declare-fun m!1462941 () Bool)

(assert (=> b!1310842 m!1462941))

(declare-fun m!1462943 () Bool)

(assert (=> b!1310842 m!1462943))

(declare-fun m!1462945 () Bool)

(assert (=> b!1310842 m!1462945))

(assert (=> b!1310842 m!1461549))

(declare-fun m!1462947 () Bool)

(assert (=> b!1310842 m!1462947))

(declare-fun m!1462949 () Bool)

(assert (=> b!1310842 m!1462949))

(declare-fun m!1462951 () Bool)

(assert (=> b!1310842 m!1462951))

(assert (=> b!1310842 m!1461549))

(assert (=> b!1310842 m!1461851))

(assert (=> b!1310842 m!1462939))

(assert (=> b!1310842 m!1462935))

(assert (=> b!1310842 m!1462933))

(assert (=> b!1310842 m!1462947))

(assert (=> b!1310842 m!1461549))

(assert (=> b!1310842 m!1462931))

(declare-fun m!1462953 () Bool)

(assert (=> b!1310842 m!1462953))

(assert (=> d!368958 d!369128))

(declare-fun b!1310846 () Bool)

(declare-fun e!840582 () Bool)

(declare-fun lt!431878 () List!13349)

(assert (=> b!1310846 (= e!840582 (or (not (= lt!431616 Nil!13283)) (= lt!431878 lt!431414)))))

(declare-fun b!1310845 () Bool)

(declare-fun res!588508 () Bool)

(assert (=> b!1310845 (=> (not res!588508) (not e!840582))))

(assert (=> b!1310845 (= res!588508 (= (size!10797 lt!431878) (+ (size!10797 lt!431414) (size!10797 lt!431616))))))

(declare-fun b!1310843 () Bool)

(declare-fun e!840581 () List!13349)

(assert (=> b!1310843 (= e!840581 lt!431616)))

(declare-fun d!369138 () Bool)

(assert (=> d!369138 e!840582))

(declare-fun res!588509 () Bool)

(assert (=> d!369138 (=> (not res!588509) (not e!840582))))

(assert (=> d!369138 (= res!588509 (= (content!1858 lt!431878) ((_ map or) (content!1858 lt!431414) (content!1858 lt!431616))))))

(assert (=> d!369138 (= lt!431878 e!840581)))

(declare-fun c!215110 () Bool)

(assert (=> d!369138 (= c!215110 ((_ is Nil!13283) lt!431414))))

(assert (=> d!369138 (= (++!3378 lt!431414 lt!431616) lt!431878)))

(declare-fun b!1310844 () Bool)

(assert (=> b!1310844 (= e!840581 (Cons!13283 (h!18684 lt!431414) (++!3378 (t!118008 lt!431414) lt!431616)))))

(assert (= (and d!369138 c!215110) b!1310843))

(assert (= (and d!369138 (not c!215110)) b!1310844))

(assert (= (and d!369138 res!588509) b!1310845))

(assert (= (and b!1310845 res!588508) b!1310846))

(declare-fun m!1462955 () Bool)

(assert (=> b!1310845 m!1462955))

(assert (=> b!1310845 m!1462293))

(declare-fun m!1462957 () Bool)

(assert (=> b!1310845 m!1462957))

(declare-fun m!1462959 () Bool)

(assert (=> d!369138 m!1462959))

(assert (=> d!369138 m!1462073))

(declare-fun m!1462961 () Bool)

(assert (=> d!369138 m!1462961))

(declare-fun m!1462963 () Bool)

(assert (=> b!1310844 m!1462963))

(assert (=> d!368926 d!369138))

(declare-fun d!369140 () Bool)

(declare-fun lt!431879 () Int)

(assert (=> d!369140 (>= lt!431879 0)))

(declare-fun e!840583 () Int)

(assert (=> d!369140 (= lt!431879 e!840583)))

(declare-fun c!215111 () Bool)

(assert (=> d!369140 (= c!215111 ((_ is Nil!13283) lt!431412))))

(assert (=> d!369140 (= (size!10797 lt!431412) lt!431879)))

(declare-fun b!1310847 () Bool)

(assert (=> b!1310847 (= e!840583 0)))

(declare-fun b!1310848 () Bool)

(assert (=> b!1310848 (= e!840583 (+ 1 (size!10797 (t!118008 lt!431412))))))

(assert (= (and d!369140 c!215111) b!1310847))

(assert (= (and d!369140 (not c!215111)) b!1310848))

(declare-fun m!1462965 () Bool)

(assert (=> b!1310848 m!1462965))

(assert (=> d!368926 d!369140))

(declare-fun d!369142 () Bool)

(declare-fun lt!431887 () Int)

(assert (=> d!369142 (>= lt!431887 0)))

(declare-fun e!840586 () Int)

(assert (=> d!369142 (= lt!431887 e!840586)))

(declare-fun c!215113 () Bool)

(assert (=> d!369142 (= c!215113 ((_ is Nil!13283) lt!431414))))

(assert (=> d!369142 (= (size!10797 lt!431414) lt!431887)))

(declare-fun b!1310852 () Bool)

(assert (=> b!1310852 (= e!840586 0)))

(declare-fun b!1310853 () Bool)

(assert (=> b!1310853 (= e!840586 (+ 1 (size!10797 (t!118008 lt!431414))))))

(assert (= (and d!369142 c!215113) b!1310852))

(assert (= (and d!369142 (not c!215113)) b!1310853))

(declare-fun m!1462967 () Bool)

(assert (=> b!1310853 m!1462967))

(assert (=> d!368926 d!369142))

(declare-fun d!369144 () Bool)

(assert (=> d!369144 (= (isEmpty!7858 (_1!7331 lt!431455)) ((_ is Nil!13284) (_1!7331 lt!431455)))))

(assert (=> b!1310070 d!369144))

(declare-fun d!369146 () Bool)

(declare-fun lt!431888 () Bool)

(assert (=> d!369146 (= lt!431888 (select (content!1859 (t!118010 rules!2550)) lt!431410))))

(declare-fun e!840587 () Bool)

(assert (=> d!369146 (= lt!431888 e!840587)))

(declare-fun res!588511 () Bool)

(assert (=> d!369146 (=> (not res!588511) (not e!840587))))

(assert (=> d!369146 (= res!588511 ((_ is Cons!13285) (t!118010 rules!2550)))))

(assert (=> d!369146 (= (contains!2309 (t!118010 rules!2550) lt!431410) lt!431888)))

(declare-fun b!1310854 () Bool)

(declare-fun e!840588 () Bool)

(assert (=> b!1310854 (= e!840587 e!840588)))

(declare-fun res!588512 () Bool)

(assert (=> b!1310854 (=> res!588512 e!840588)))

(assert (=> b!1310854 (= res!588512 (= (h!18686 (t!118010 rules!2550)) lt!431410))))

(declare-fun b!1310855 () Bool)

(assert (=> b!1310855 (= e!840588 (contains!2309 (t!118010 (t!118010 rules!2550)) lt!431410))))

(assert (= (and d!369146 res!588511) b!1310854))

(assert (= (and b!1310854 (not res!588512)) b!1310855))

(assert (=> d!369146 m!1462687))

(declare-fun m!1462981 () Bool)

(assert (=> d!369146 m!1462981))

(declare-fun m!1462983 () Bool)

(assert (=> b!1310855 m!1462983))

(assert (=> b!1310502 d!369146))

(declare-fun d!369148 () Bool)

(declare-fun isBalanced!1270 (Conc!4368) Bool)

(assert (=> d!369148 (= (inv!17666 (dynLambda!5765 (toChars!3377 (transformation!2299 (rule!4038 t1!34))) (value!75154 t1!34))) (isBalanced!1270 (c!214934 (dynLambda!5765 (toChars!3377 (transformation!2299 (rule!4038 t1!34))) (value!75154 t1!34)))))))

(declare-fun bs!329856 () Bool)

(assert (= bs!329856 d!369148))

(declare-fun m!1463009 () Bool)

(assert (=> bs!329856 m!1463009))

(assert (=> tb!69701 d!369148))

(declare-fun d!369154 () Bool)

(declare-fun res!588515 () Bool)

(declare-fun e!840591 () Bool)

(assert (=> d!369154 (=> res!588515 e!840591)))

(assert (=> d!369154 (= res!588515 ((_ is Nil!13286) (map!2915 rules!2550 lambda!52948)))))

(assert (=> d!369154 (= (forall!3282 (map!2915 rules!2550 lambda!52948) lambda!52980) e!840591)))

(declare-fun b!1310860 () Bool)

(declare-fun e!840592 () Bool)

(assert (=> b!1310860 (= e!840591 e!840592)))

(declare-fun res!588516 () Bool)

(assert (=> b!1310860 (=> (not res!588516) (not e!840592))))

(assert (=> b!1310860 (= res!588516 (dynLambda!5761 lambda!52980 (h!18687 (map!2915 rules!2550 lambda!52948))))))

(declare-fun b!1310861 () Bool)

(assert (=> b!1310861 (= e!840592 (forall!3282 (t!118011 (map!2915 rules!2550 lambda!52948)) lambda!52980))))

(assert (= (and d!369154 (not res!588515)) b!1310860))

(assert (= (and b!1310860 res!588516) b!1310861))

(declare-fun b_lambda!37671 () Bool)

(assert (=> (not b_lambda!37671) (not b!1310860)))

(declare-fun m!1463011 () Bool)

(assert (=> b!1310860 m!1463011))

(declare-fun m!1463013 () Bool)

(assert (=> b!1310861 m!1463013))

(assert (=> d!368850 d!369154))

(declare-fun d!369156 () Bool)

(assert (=> d!369156 (= (isDefined!2171 lt!431580) (not (isEmpty!7860 lt!431580)))))

(declare-fun bs!329857 () Bool)

(assert (= bs!329857 d!369156))

(assert (=> bs!329857 m!1462177))

(assert (=> b!1310396 d!369156))

(declare-fun d!369158 () Bool)

(assert (=> d!369158 (= (isEmpty!7861 (originalCharacters!3161 t1!34)) ((_ is Nil!13283) (originalCharacters!3161 t1!34)))))

(assert (=> d!368998 d!369158))

(declare-fun d!369160 () Bool)

(assert (=> d!369160 (= (head!2254 (map!2915 rules!2550 lambda!52948)) (h!18687 (map!2915 rules!2550 lambda!52948)))))

(assert (=> b!1310227 d!369160))

(declare-fun d!369168 () Bool)

(declare-fun c!215118 () Bool)

(assert (=> d!369168 (= c!215118 ((_ is Nil!13283) lt!431573))))

(declare-fun e!840599 () (InoxSet C!7516))

(assert (=> d!369168 (= (content!1858 lt!431573) e!840599)))

(declare-fun b!1310870 () Bool)

(assert (=> b!1310870 (= e!840599 ((as const (Array C!7516 Bool)) false))))

(declare-fun b!1310871 () Bool)

(assert (=> b!1310871 (= e!840599 ((_ map or) (store ((as const (Array C!7516 Bool)) false) (h!18684 lt!431573) true) (content!1858 (t!118008 lt!431573))))))

(assert (= (and d!369168 c!215118) b!1310870))

(assert (= (and d!369168 (not c!215118)) b!1310871))

(declare-fun m!1463019 () Bool)

(assert (=> b!1310871 m!1463019))

(declare-fun m!1463021 () Bool)

(assert (=> b!1310871 m!1463021))

(assert (=> d!368880 d!369168))

(declare-fun d!369170 () Bool)

(declare-fun c!215119 () Bool)

(assert (=> d!369170 (= c!215119 ((_ is Nil!13283) lt!431402))))

(declare-fun e!840600 () (InoxSet C!7516))

(assert (=> d!369170 (= (content!1858 lt!431402) e!840600)))

(declare-fun b!1310872 () Bool)

(assert (=> b!1310872 (= e!840600 ((as const (Array C!7516 Bool)) false))))

(declare-fun b!1310873 () Bool)

(assert (=> b!1310873 (= e!840600 ((_ map or) (store ((as const (Array C!7516 Bool)) false) (h!18684 lt!431402) true) (content!1858 (t!118008 lt!431402))))))

(assert (= (and d!369170 c!215119) b!1310872))

(assert (= (and d!369170 (not c!215119)) b!1310873))

(declare-fun m!1463027 () Bool)

(assert (=> b!1310873 m!1463027))

(declare-fun m!1463029 () Bool)

(assert (=> b!1310873 m!1463029))

(assert (=> d!368880 d!369170))

(declare-fun d!369174 () Bool)

(declare-fun c!215120 () Bool)

(assert (=> d!369174 (= c!215120 ((_ is Nil!13283) (Cons!13283 lt!431407 Nil!13283)))))

(declare-fun e!840601 () (InoxSet C!7516))

(assert (=> d!369174 (= (content!1858 (Cons!13283 lt!431407 Nil!13283)) e!840601)))

(declare-fun b!1310874 () Bool)

(assert (=> b!1310874 (= e!840601 ((as const (Array C!7516 Bool)) false))))

(declare-fun b!1310875 () Bool)

(assert (=> b!1310875 (= e!840601 ((_ map or) (store ((as const (Array C!7516 Bool)) false) (h!18684 (Cons!13283 lt!431407 Nil!13283)) true) (content!1858 (t!118008 (Cons!13283 lt!431407 Nil!13283)))))))

(assert (= (and d!369174 c!215120) b!1310874))

(assert (= (and d!369174 (not c!215120)) b!1310875))

(declare-fun m!1463031 () Bool)

(assert (=> b!1310875 m!1463031))

(declare-fun m!1463033 () Bool)

(assert (=> b!1310875 m!1463033))

(assert (=> d!368880 d!369174))

(declare-fun b!1310876 () Bool)

(declare-fun e!840603 () Bool)

(declare-fun lt!431891 () Option!2564)

(assert (=> b!1310876 (= e!840603 (contains!2309 (t!118010 rules!2550) (rule!4038 (_1!7332 (get!4246 lt!431891)))))))

(declare-fun b!1310877 () Bool)

(declare-fun res!588522 () Bool)

(assert (=> b!1310877 (=> (not res!588522) (not e!840603))))

(assert (=> b!1310877 (= res!588522 (< (size!10797 (_2!7332 (get!4246 lt!431891))) (size!10797 (list!4986 lt!431405))))))

(declare-fun b!1310879 () Bool)

(declare-fun res!588521 () Bool)

(assert (=> b!1310879 (=> (not res!588521) (not e!840603))))

(assert (=> b!1310879 (= res!588521 (= (++!3378 (list!4986 (charsOf!1271 (_1!7332 (get!4246 lt!431891)))) (_2!7332 (get!4246 lt!431891))) (list!4986 lt!431405)))))

(declare-fun call!89260 () Option!2564)

(declare-fun bm!89255 () Bool)

(assert (=> bm!89255 (= call!89260 (maxPrefixOneRule!573 thiss!19762 (h!18686 (t!118010 rules!2550)) (list!4986 lt!431405)))))

(declare-fun b!1310880 () Bool)

(declare-fun res!588525 () Bool)

(assert (=> b!1310880 (=> (not res!588525) (not e!840603))))

(assert (=> b!1310880 (= res!588525 (matchR!1615 (regex!2299 (rule!4038 (_1!7332 (get!4246 lt!431891)))) (list!4986 (charsOf!1271 (_1!7332 (get!4246 lt!431891))))))))

(declare-fun b!1310881 () Bool)

(declare-fun e!840602 () Option!2564)

(declare-fun lt!431893 () Option!2564)

(declare-fun lt!431895 () Option!2564)

(assert (=> b!1310881 (= e!840602 (ite (and ((_ is None!2563) lt!431893) ((_ is None!2563) lt!431895)) None!2563 (ite ((_ is None!2563) lt!431895) lt!431893 (ite ((_ is None!2563) lt!431893) lt!431895 (ite (>= (size!10790 (_1!7332 (v!21077 lt!431893))) (size!10790 (_1!7332 (v!21077 lt!431895)))) lt!431893 lt!431895)))))))

(assert (=> b!1310881 (= lt!431893 call!89260)))

(assert (=> b!1310881 (= lt!431895 (maxPrefix!1004 thiss!19762 (t!118010 (t!118010 rules!2550)) (list!4986 lt!431405)))))

(declare-fun b!1310882 () Bool)

(declare-fun res!588523 () Bool)

(assert (=> b!1310882 (=> (not res!588523) (not e!840603))))

(assert (=> b!1310882 (= res!588523 (= (list!4986 (charsOf!1271 (_1!7332 (get!4246 lt!431891)))) (originalCharacters!3161 (_1!7332 (get!4246 lt!431891)))))))

(declare-fun b!1310883 () Bool)

(assert (=> b!1310883 (= e!840602 call!89260)))

(declare-fun b!1310884 () Bool)

(declare-fun e!840604 () Bool)

(assert (=> b!1310884 (= e!840604 e!840603)))

(declare-fun res!588519 () Bool)

(assert (=> b!1310884 (=> (not res!588519) (not e!840603))))

(assert (=> b!1310884 (= res!588519 (isDefined!2171 lt!431891))))

(declare-fun b!1310878 () Bool)

(declare-fun res!588520 () Bool)

(assert (=> b!1310878 (=> (not res!588520) (not e!840603))))

(assert (=> b!1310878 (= res!588520 (= (value!75154 (_1!7332 (get!4246 lt!431891))) (apply!2990 (transformation!2299 (rule!4038 (_1!7332 (get!4246 lt!431891)))) (seqFromList!1591 (originalCharacters!3161 (_1!7332 (get!4246 lt!431891)))))))))

(declare-fun d!369176 () Bool)

(assert (=> d!369176 e!840604))

(declare-fun res!588524 () Bool)

(assert (=> d!369176 (=> res!588524 e!840604)))

(assert (=> d!369176 (= res!588524 (isEmpty!7860 lt!431891))))

(assert (=> d!369176 (= lt!431891 e!840602)))

(declare-fun c!215121 () Bool)

(assert (=> d!369176 (= c!215121 (and ((_ is Cons!13285) (t!118010 rules!2550)) ((_ is Nil!13285) (t!118010 (t!118010 rules!2550)))))))

(declare-fun lt!431892 () Unit!19338)

(declare-fun lt!431894 () Unit!19338)

(assert (=> d!369176 (= lt!431892 lt!431894)))

(assert (=> d!369176 (isPrefix!1068 (list!4986 lt!431405) (list!4986 lt!431405))))

(assert (=> d!369176 (= lt!431894 (lemmaIsPrefixRefl!747 (list!4986 lt!431405) (list!4986 lt!431405)))))

(assert (=> d!369176 (rulesValidInductive!720 thiss!19762 (t!118010 rules!2550))))

(assert (=> d!369176 (= (maxPrefix!1004 thiss!19762 (t!118010 rules!2550) (list!4986 lt!431405)) lt!431891)))

(assert (= (and d!369176 c!215121) b!1310883))

(assert (= (and d!369176 (not c!215121)) b!1310881))

(assert (= (or b!1310883 b!1310881) bm!89255))

(assert (= (and d!369176 (not res!588524)) b!1310884))

(assert (= (and b!1310884 res!588519) b!1310882))

(assert (= (and b!1310882 res!588523) b!1310877))

(assert (= (and b!1310877 res!588522) b!1310879))

(assert (= (and b!1310879 res!588521) b!1310878))

(assert (= (and b!1310878 res!588520) b!1310880))

(assert (= (and b!1310880 res!588525) b!1310876))

(assert (=> b!1310881 m!1461537))

(declare-fun m!1463037 () Bool)

(assert (=> b!1310881 m!1463037))

(declare-fun m!1463039 () Bool)

(assert (=> b!1310876 m!1463039))

(declare-fun m!1463041 () Bool)

(assert (=> b!1310876 m!1463041))

(assert (=> b!1310880 m!1463039))

(declare-fun m!1463043 () Bool)

(assert (=> b!1310880 m!1463043))

(assert (=> b!1310880 m!1463043))

(declare-fun m!1463045 () Bool)

(assert (=> b!1310880 m!1463045))

(assert (=> b!1310880 m!1463045))

(declare-fun m!1463047 () Bool)

(assert (=> b!1310880 m!1463047))

(assert (=> b!1310877 m!1463039))

(declare-fun m!1463051 () Bool)

(assert (=> b!1310877 m!1463051))

(assert (=> b!1310877 m!1461537))

(assert (=> b!1310877 m!1462051))

(assert (=> b!1310878 m!1463039))

(declare-fun m!1463053 () Bool)

(assert (=> b!1310878 m!1463053))

(assert (=> b!1310878 m!1463053))

(declare-fun m!1463055 () Bool)

(assert (=> b!1310878 m!1463055))

(assert (=> b!1310882 m!1463039))

(assert (=> b!1310882 m!1463043))

(assert (=> b!1310882 m!1463043))

(assert (=> b!1310882 m!1463045))

(declare-fun m!1463057 () Bool)

(assert (=> b!1310884 m!1463057))

(assert (=> bm!89255 m!1461537))

(declare-fun m!1463059 () Bool)

(assert (=> bm!89255 m!1463059))

(declare-fun m!1463061 () Bool)

(assert (=> d!369176 m!1463061))

(assert (=> d!369176 m!1461537))

(assert (=> d!369176 m!1461537))

(assert (=> d!369176 m!1462063))

(assert (=> d!369176 m!1461537))

(assert (=> d!369176 m!1461537))

(assert (=> d!369176 m!1462065))

(declare-fun m!1463063 () Bool)

(assert (=> d!369176 m!1463063))

(assert (=> b!1310879 m!1463039))

(assert (=> b!1310879 m!1463043))

(assert (=> b!1310879 m!1463043))

(assert (=> b!1310879 m!1463045))

(assert (=> b!1310879 m!1463045))

(declare-fun m!1463065 () Bool)

(assert (=> b!1310879 m!1463065))

(assert (=> b!1310340 d!369176))

(declare-fun d!369182 () Bool)

(assert (=> d!369182 (= (list!4986 (dynLambda!5765 (toChars!3377 (transformation!2299 (rule!4038 t1!34))) (value!75154 t1!34))) (list!4990 (c!214934 (dynLambda!5765 (toChars!3377 (transformation!2299 (rule!4038 t1!34))) (value!75154 t1!34)))))))

(declare-fun bs!329858 () Bool)

(assert (= bs!329858 d!369182))

(declare-fun m!1463067 () Bool)

(assert (=> bs!329858 m!1463067))

(assert (=> b!1310617 d!369182))

(declare-fun d!369184 () Bool)

(declare-fun lt!431898 () Token!4260)

(assert (=> d!369184 (= lt!431898 (apply!2998 (list!4987 (_1!7333 lt!431500)) 0))))

(declare-fun apply!2999 (Conc!4369 Int) Token!4260)

(assert (=> d!369184 (= lt!431898 (apply!2999 (c!214936 (_1!7333 lt!431500)) 0))))

(declare-fun e!840612 () Bool)

(assert (=> d!369184 e!840612))

(declare-fun res!588530 () Bool)

(assert (=> d!369184 (=> (not res!588530) (not e!840612))))

(assert (=> d!369184 (= res!588530 (<= 0 0))))

(assert (=> d!369184 (= (apply!2989 (_1!7333 lt!431500) 0) lt!431898)))

(declare-fun b!1310891 () Bool)

(assert (=> b!1310891 (= e!840612 (< 0 (size!10798 (_1!7333 lt!431500))))))

(assert (= (and d!369184 res!588530) b!1310891))

(declare-fun m!1463075 () Bool)

(assert (=> d!369184 m!1463075))

(assert (=> d!369184 m!1463075))

(declare-fun m!1463077 () Bool)

(assert (=> d!369184 m!1463077))

(declare-fun m!1463079 () Bool)

(assert (=> d!369184 m!1463079))

(assert (=> b!1310891 m!1461871))

(assert (=> b!1310197 d!369184))

(declare-fun d!369192 () Bool)

(assert (=> d!369192 (= (list!4986 (dynLambda!5765 (toChars!3377 (transformation!2299 (rule!4038 t2!34))) (value!75154 t2!34))) (list!4990 (c!214934 (dynLambda!5765 (toChars!3377 (transformation!2299 (rule!4038 t2!34))) (value!75154 t2!34)))))))

(declare-fun bs!329864 () Bool)

(assert (= bs!329864 d!369192))

(declare-fun m!1463081 () Bool)

(assert (=> bs!329864 m!1463081))

(assert (=> b!1310619 d!369192))

(declare-fun d!369194 () Bool)

(declare-fun c!215122 () Bool)

(assert (=> d!369194 (= c!215122 ((_ is Node!4368) (c!214934 (dynLambda!5765 (toChars!3377 (transformation!2299 (rule!4038 t1!34))) (value!75154 t1!34)))))))

(declare-fun e!840613 () Bool)

(assert (=> d!369194 (= (inv!17665 (c!214934 (dynLambda!5765 (toChars!3377 (transformation!2299 (rule!4038 t1!34))) (value!75154 t1!34)))) e!840613)))

(declare-fun b!1310892 () Bool)

(assert (=> b!1310892 (= e!840613 (inv!17669 (c!214934 (dynLambda!5765 (toChars!3377 (transformation!2299 (rule!4038 t1!34))) (value!75154 t1!34)))))))

(declare-fun b!1310893 () Bool)

(declare-fun e!840614 () Bool)

(assert (=> b!1310893 (= e!840613 e!840614)))

(declare-fun res!588531 () Bool)

(assert (=> b!1310893 (= res!588531 (not ((_ is Leaf!6714) (c!214934 (dynLambda!5765 (toChars!3377 (transformation!2299 (rule!4038 t1!34))) (value!75154 t1!34))))))))

(assert (=> b!1310893 (=> res!588531 e!840614)))

(declare-fun b!1310894 () Bool)

(assert (=> b!1310894 (= e!840614 (inv!17670 (c!214934 (dynLambda!5765 (toChars!3377 (transformation!2299 (rule!4038 t1!34))) (value!75154 t1!34)))))))

(assert (= (and d!369194 c!215122) b!1310892))

(assert (= (and d!369194 (not c!215122)) b!1310893))

(assert (= (and b!1310893 (not res!588531)) b!1310894))

(declare-fun m!1463083 () Bool)

(assert (=> b!1310892 m!1463083))

(declare-fun m!1463085 () Bool)

(assert (=> b!1310894 m!1463085))

(assert (=> b!1310386 d!369194))

(declare-fun d!369196 () Bool)

(assert (=> d!369196 (= (head!2256 rules!2550) (h!18686 rules!2550))))

(assert (=> b!1310567 d!369196))

(declare-fun b!1310921 () Bool)

(declare-fun e!840633 () List!13350)

(assert (=> b!1310921 (= e!840633 Nil!13284)))

(declare-fun d!369198 () Bool)

(declare-fun c!215131 () Bool)

(assert (=> d!369198 (= c!215131 ((_ is Empty!4369) (c!214936 (_1!7333 lt!431404))))))

(assert (=> d!369198 (= (list!4991 (c!214936 (_1!7333 lt!431404))) e!840633)))

(declare-fun b!1310922 () Bool)

(declare-fun e!840634 () List!13350)

(assert (=> b!1310922 (= e!840633 e!840634)))

(declare-fun c!215132 () Bool)

(assert (=> b!1310922 (= c!215132 ((_ is Leaf!6715) (c!214936 (_1!7333 lt!431404))))))

(declare-fun b!1310924 () Bool)

(declare-fun ++!3382 (List!13350 List!13350) List!13350)

(assert (=> b!1310924 (= e!840634 (++!3382 (list!4991 (left!11424 (c!214936 (_1!7333 lt!431404)))) (list!4991 (right!11754 (c!214936 (_1!7333 lt!431404))))))))

(declare-fun b!1310923 () Bool)

(declare-fun list!4993 (IArray!8743) List!13350)

(assert (=> b!1310923 (= e!840634 (list!4993 (xs!7084 (c!214936 (_1!7333 lt!431404)))))))

(assert (= (and d!369198 c!215131) b!1310921))

(assert (= (and d!369198 (not c!215131)) b!1310922))

(assert (= (and b!1310922 c!215132) b!1310923))

(assert (= (and b!1310922 (not c!215132)) b!1310924))

(declare-fun m!1463087 () Bool)

(assert (=> b!1310924 m!1463087))

(declare-fun m!1463089 () Bool)

(assert (=> b!1310924 m!1463089))

(assert (=> b!1310924 m!1463087))

(assert (=> b!1310924 m!1463089))

(declare-fun m!1463091 () Bool)

(assert (=> b!1310924 m!1463091))

(declare-fun m!1463093 () Bool)

(assert (=> b!1310923 m!1463093))

(assert (=> d!368986 d!369198))

(declare-fun d!369200 () Bool)

(declare-fun c!215133 () Bool)

(assert (=> d!369200 (= c!215133 ((_ is Nil!13283) lt!431412))))

(declare-fun e!840635 () (InoxSet C!7516))

(assert (=> d!369200 (= (content!1858 lt!431412) e!840635)))

(declare-fun b!1310925 () Bool)

(assert (=> b!1310925 (= e!840635 ((as const (Array C!7516 Bool)) false))))

(declare-fun b!1310926 () Bool)

(assert (=> b!1310926 (= e!840635 ((_ map or) (store ((as const (Array C!7516 Bool)) false) (h!18684 lt!431412) true) (content!1858 (t!118008 lt!431412))))))

(assert (= (and d!369200 c!215133) b!1310925))

(assert (= (and d!369200 (not c!215133)) b!1310926))

(declare-fun m!1463095 () Bool)

(assert (=> b!1310926 m!1463095))

(assert (=> b!1310926 m!1462679))

(assert (=> d!368824 d!369200))

(declare-fun d!369202 () Bool)

(declare-fun lt!431901 () Int)

(assert (=> d!369202 (>= lt!431901 0)))

(declare-fun e!840645 () Int)

(assert (=> d!369202 (= lt!431901 e!840645)))

(declare-fun c!215138 () Bool)

(assert (=> d!369202 (= c!215138 ((_ is Nil!13284) (_1!7331 lt!431455)))))

(assert (=> d!369202 (= (size!10796 (_1!7331 lt!431455)) lt!431901)))

(declare-fun b!1310940 () Bool)

(assert (=> b!1310940 (= e!840645 0)))

(declare-fun b!1310941 () Bool)

(assert (=> b!1310941 (= e!840645 (+ 1 (size!10796 (t!118009 (_1!7331 lt!431455)))))))

(assert (= (and d!369202 c!215138) b!1310940))

(assert (= (and d!369202 (not c!215138)) b!1310941))

(declare-fun m!1463101 () Bool)

(assert (=> b!1310941 m!1463101))

(assert (=> d!368760 d!369202))

(declare-fun b!1310942 () Bool)

(declare-fun e!840647 () Bool)

(declare-fun lt!431902 () Option!2564)

(assert (=> b!1310942 (= e!840647 (contains!2309 rules!2550 (rule!4038 (_1!7332 (get!4246 lt!431902)))))))

(declare-fun b!1310943 () Bool)

(declare-fun res!588550 () Bool)

(assert (=> b!1310943 (=> (not res!588550) (not e!840647))))

(assert (=> b!1310943 (= res!588550 (< (size!10797 (_2!7332 (get!4246 lt!431902))) (size!10797 (list!4986 lt!431415))))))

(declare-fun b!1310945 () Bool)

(declare-fun res!588549 () Bool)

(assert (=> b!1310945 (=> (not res!588549) (not e!840647))))

(assert (=> b!1310945 (= res!588549 (= (++!3378 (list!4986 (charsOf!1271 (_1!7332 (get!4246 lt!431902)))) (_2!7332 (get!4246 lt!431902))) (list!4986 lt!431415)))))

(declare-fun bm!89265 () Bool)

(declare-fun call!89270 () Option!2564)

(assert (=> bm!89265 (= call!89270 (maxPrefixOneRule!573 thiss!19762 (h!18686 rules!2550) (list!4986 lt!431415)))))

(declare-fun b!1310946 () Bool)

(declare-fun res!588553 () Bool)

(assert (=> b!1310946 (=> (not res!588553) (not e!840647))))

(assert (=> b!1310946 (= res!588553 (matchR!1615 (regex!2299 (rule!4038 (_1!7332 (get!4246 lt!431902)))) (list!4986 (charsOf!1271 (_1!7332 (get!4246 lt!431902))))))))

(declare-fun b!1310947 () Bool)

(declare-fun e!840646 () Option!2564)

(declare-fun lt!431904 () Option!2564)

(declare-fun lt!431906 () Option!2564)

(assert (=> b!1310947 (= e!840646 (ite (and ((_ is None!2563) lt!431904) ((_ is None!2563) lt!431906)) None!2563 (ite ((_ is None!2563) lt!431906) lt!431904 (ite ((_ is None!2563) lt!431904) lt!431906 (ite (>= (size!10790 (_1!7332 (v!21077 lt!431904))) (size!10790 (_1!7332 (v!21077 lt!431906)))) lt!431904 lt!431906)))))))

(assert (=> b!1310947 (= lt!431904 call!89270)))

(assert (=> b!1310947 (= lt!431906 (maxPrefix!1004 thiss!19762 (t!118010 rules!2550) (list!4986 lt!431415)))))

(declare-fun b!1310948 () Bool)

(declare-fun res!588551 () Bool)

(assert (=> b!1310948 (=> (not res!588551) (not e!840647))))

(assert (=> b!1310948 (= res!588551 (= (list!4986 (charsOf!1271 (_1!7332 (get!4246 lt!431902)))) (originalCharacters!3161 (_1!7332 (get!4246 lt!431902)))))))

(declare-fun b!1310949 () Bool)

(assert (=> b!1310949 (= e!840646 call!89270)))

(declare-fun b!1310950 () Bool)

(declare-fun e!840648 () Bool)

(assert (=> b!1310950 (= e!840648 e!840647)))

(declare-fun res!588547 () Bool)

(assert (=> b!1310950 (=> (not res!588547) (not e!840647))))

(assert (=> b!1310950 (= res!588547 (isDefined!2171 lt!431902))))

(declare-fun b!1310944 () Bool)

(declare-fun res!588548 () Bool)

(assert (=> b!1310944 (=> (not res!588548) (not e!840647))))

(assert (=> b!1310944 (= res!588548 (= (value!75154 (_1!7332 (get!4246 lt!431902))) (apply!2990 (transformation!2299 (rule!4038 (_1!7332 (get!4246 lt!431902)))) (seqFromList!1591 (originalCharacters!3161 (_1!7332 (get!4246 lt!431902)))))))))

(declare-fun d!369204 () Bool)

(assert (=> d!369204 e!840648))

(declare-fun res!588552 () Bool)

(assert (=> d!369204 (=> res!588552 e!840648)))

(assert (=> d!369204 (= res!588552 (isEmpty!7860 lt!431902))))

(assert (=> d!369204 (= lt!431902 e!840646)))

(declare-fun c!215139 () Bool)

(assert (=> d!369204 (= c!215139 (and ((_ is Cons!13285) rules!2550) ((_ is Nil!13285) (t!118010 rules!2550))))))

(declare-fun lt!431903 () Unit!19338)

(declare-fun lt!431905 () Unit!19338)

(assert (=> d!369204 (= lt!431903 lt!431905)))

(assert (=> d!369204 (isPrefix!1068 (list!4986 lt!431415) (list!4986 lt!431415))))

(assert (=> d!369204 (= lt!431905 (lemmaIsPrefixRefl!747 (list!4986 lt!431415) (list!4986 lt!431415)))))

(assert (=> d!369204 (rulesValidInductive!720 thiss!19762 rules!2550)))

(assert (=> d!369204 (= (maxPrefix!1004 thiss!19762 rules!2550 (list!4986 lt!431415)) lt!431902)))

(assert (= (and d!369204 c!215139) b!1310949))

(assert (= (and d!369204 (not c!215139)) b!1310947))

(assert (= (or b!1310949 b!1310947) bm!89265))

(assert (= (and d!369204 (not res!588552)) b!1310950))

(assert (= (and b!1310950 res!588547) b!1310948))

(assert (= (and b!1310948 res!588551) b!1310943))

(assert (= (and b!1310943 res!588550) b!1310945))

(assert (= (and b!1310945 res!588549) b!1310944))

(assert (= (and b!1310944 res!588548) b!1310946))

(assert (= (and b!1310946 res!588553) b!1310942))

(assert (=> b!1310947 m!1461515))

(declare-fun m!1463105 () Bool)

(assert (=> b!1310947 m!1463105))

(declare-fun m!1463107 () Bool)

(assert (=> b!1310942 m!1463107))

(declare-fun m!1463109 () Bool)

(assert (=> b!1310942 m!1463109))

(assert (=> b!1310946 m!1463107))

(declare-fun m!1463111 () Bool)

(assert (=> b!1310946 m!1463111))

(assert (=> b!1310946 m!1463111))

(declare-fun m!1463113 () Bool)

(assert (=> b!1310946 m!1463113))

(assert (=> b!1310946 m!1463113))

(declare-fun m!1463115 () Bool)

(assert (=> b!1310946 m!1463115))

(assert (=> b!1310943 m!1463107))

(declare-fun m!1463117 () Bool)

(assert (=> b!1310943 m!1463117))

(assert (=> b!1310943 m!1461515))

(assert (=> b!1310943 m!1461741))

(assert (=> b!1310944 m!1463107))

(declare-fun m!1463119 () Bool)

(assert (=> b!1310944 m!1463119))

(assert (=> b!1310944 m!1463119))

(declare-fun m!1463121 () Bool)

(assert (=> b!1310944 m!1463121))

(assert (=> b!1310948 m!1463107))

(assert (=> b!1310948 m!1463111))

(assert (=> b!1310948 m!1463111))

(assert (=> b!1310948 m!1463113))

(declare-fun m!1463123 () Bool)

(assert (=> b!1310950 m!1463123))

(assert (=> bm!89265 m!1461515))

(declare-fun m!1463125 () Bool)

(assert (=> bm!89265 m!1463125))

(declare-fun m!1463127 () Bool)

(assert (=> d!369204 m!1463127))

(assert (=> d!369204 m!1461515))

(assert (=> d!369204 m!1461515))

(declare-fun m!1463129 () Bool)

(assert (=> d!369204 m!1463129))

(assert (=> d!369204 m!1461515))

(assert (=> d!369204 m!1461515))

(declare-fun m!1463131 () Bool)

(assert (=> d!369204 m!1463131))

(assert (=> d!369204 m!1462067))

(assert (=> b!1310945 m!1463107))

(assert (=> b!1310945 m!1463111))

(assert (=> b!1310945 m!1463111))

(assert (=> b!1310945 m!1463113))

(assert (=> b!1310945 m!1463113))

(declare-fun m!1463133 () Bool)

(assert (=> b!1310945 m!1463133))

(assert (=> d!368760 d!369204))

(declare-fun b!1310957 () Bool)

(declare-fun e!840657 () Bool)

(declare-fun e!840653 () Bool)

(assert (=> b!1310957 (= e!840657 e!840653)))

(declare-fun c!215144 () Bool)

(assert (=> b!1310957 (= c!215144 ((_ is EmptyLang!3613) (regex!2299 (rule!4038 (_1!7332 (get!4246 lt!431580))))))))

(declare-fun b!1310958 () Bool)

(declare-fun res!588558 () Bool)

(declare-fun e!840656 () Bool)

(assert (=> b!1310958 (=> (not res!588558) (not e!840656))))

(declare-fun call!89271 () Bool)

(assert (=> b!1310958 (= res!588558 (not call!89271))))

(declare-fun b!1310959 () Bool)

(declare-fun res!588560 () Bool)

(assert (=> b!1310959 (=> (not res!588560) (not e!840656))))

(assert (=> b!1310959 (= res!588560 (isEmpty!7861 (tail!1874 (list!4986 (charsOf!1271 (_1!7332 (get!4246 lt!431580)))))))))

(declare-fun b!1310960 () Bool)

(declare-fun res!588563 () Bool)

(declare-fun e!840654 () Bool)

(assert (=> b!1310960 (=> res!588563 e!840654)))

(assert (=> b!1310960 (= res!588563 (not ((_ is ElementMatch!3613) (regex!2299 (rule!4038 (_1!7332 (get!4246 lt!431580)))))))))

(assert (=> b!1310960 (= e!840653 e!840654)))

(declare-fun b!1310961 () Bool)

(declare-fun res!588561 () Bool)

(declare-fun e!840658 () Bool)

(assert (=> b!1310961 (=> res!588561 e!840658)))

(assert (=> b!1310961 (= res!588561 (not (isEmpty!7861 (tail!1874 (list!4986 (charsOf!1271 (_1!7332 (get!4246 lt!431580))))))))))

(declare-fun b!1310962 () Bool)

(declare-fun res!588557 () Bool)

(assert (=> b!1310962 (=> res!588557 e!840654)))

(assert (=> b!1310962 (= res!588557 e!840656)))

(declare-fun res!588562 () Bool)

(assert (=> b!1310962 (=> (not res!588562) (not e!840656))))

(declare-fun lt!431907 () Bool)

(assert (=> b!1310962 (= res!588562 lt!431907)))

(declare-fun b!1310963 () Bool)

(declare-fun e!840659 () Bool)

(assert (=> b!1310963 (= e!840659 (matchR!1615 (derivativeStep!893 (regex!2299 (rule!4038 (_1!7332 (get!4246 lt!431580)))) (head!2255 (list!4986 (charsOf!1271 (_1!7332 (get!4246 lt!431580)))))) (tail!1874 (list!4986 (charsOf!1271 (_1!7332 (get!4246 lt!431580)))))))))

(declare-fun b!1310964 () Bool)

(declare-fun e!840655 () Bool)

(assert (=> b!1310964 (= e!840655 e!840658)))

(declare-fun res!588559 () Bool)

(assert (=> b!1310964 (=> res!588559 e!840658)))

(assert (=> b!1310964 (= res!588559 call!89271)))

(declare-fun b!1310965 () Bool)

(assert (=> b!1310965 (= e!840657 (= lt!431907 call!89271))))

(declare-fun b!1310966 () Bool)

(assert (=> b!1310966 (= e!840659 (nullable!1141 (regex!2299 (rule!4038 (_1!7332 (get!4246 lt!431580))))))))

(declare-fun b!1310967 () Bool)

(assert (=> b!1310967 (= e!840653 (not lt!431907))))

(declare-fun d!369208 () Bool)

(assert (=> d!369208 e!840657))

(declare-fun c!215142 () Bool)

(assert (=> d!369208 (= c!215142 ((_ is EmptyExpr!3613) (regex!2299 (rule!4038 (_1!7332 (get!4246 lt!431580))))))))

(assert (=> d!369208 (= lt!431907 e!840659)))

(declare-fun c!215143 () Bool)

(assert (=> d!369208 (= c!215143 (isEmpty!7861 (list!4986 (charsOf!1271 (_1!7332 (get!4246 lt!431580))))))))

(assert (=> d!369208 (validRegex!1543 (regex!2299 (rule!4038 (_1!7332 (get!4246 lt!431580)))))))

(assert (=> d!369208 (= (matchR!1615 (regex!2299 (rule!4038 (_1!7332 (get!4246 lt!431580)))) (list!4986 (charsOf!1271 (_1!7332 (get!4246 lt!431580))))) lt!431907)))

(declare-fun b!1310968 () Bool)

(assert (=> b!1310968 (= e!840656 (= (head!2255 (list!4986 (charsOf!1271 (_1!7332 (get!4246 lt!431580))))) (c!214935 (regex!2299 (rule!4038 (_1!7332 (get!4246 lt!431580)))))))))

(declare-fun bm!89266 () Bool)

(assert (=> bm!89266 (= call!89271 (isEmpty!7861 (list!4986 (charsOf!1271 (_1!7332 (get!4246 lt!431580))))))))

(declare-fun b!1310969 () Bool)

(assert (=> b!1310969 (= e!840654 e!840655)))

(declare-fun res!588556 () Bool)

(assert (=> b!1310969 (=> (not res!588556) (not e!840655))))

(assert (=> b!1310969 (= res!588556 (not lt!431907))))

(declare-fun b!1310970 () Bool)

(assert (=> b!1310970 (= e!840658 (not (= (head!2255 (list!4986 (charsOf!1271 (_1!7332 (get!4246 lt!431580))))) (c!214935 (regex!2299 (rule!4038 (_1!7332 (get!4246 lt!431580))))))))))

(assert (= (and d!369208 c!215143) b!1310966))

(assert (= (and d!369208 (not c!215143)) b!1310963))

(assert (= (and d!369208 c!215142) b!1310965))

(assert (= (and d!369208 (not c!215142)) b!1310957))

(assert (= (and b!1310957 c!215144) b!1310967))

(assert (= (and b!1310957 (not c!215144)) b!1310960))

(assert (= (and b!1310960 (not res!588563)) b!1310962))

(assert (= (and b!1310962 res!588562) b!1310958))

(assert (= (and b!1310958 res!588558) b!1310959))

(assert (= (and b!1310959 res!588560) b!1310968))

(assert (= (and b!1310962 (not res!588557)) b!1310969))

(assert (= (and b!1310969 res!588556) b!1310964))

(assert (= (and b!1310964 (not res!588559)) b!1310961))

(assert (= (and b!1310961 (not res!588561)) b!1310970))

(assert (= (or b!1310965 b!1310958 b!1310964) bm!89266))

(assert (=> b!1310970 m!1462163))

(declare-fun m!1463143 () Bool)

(assert (=> b!1310970 m!1463143))

(declare-fun m!1463145 () Bool)

(assert (=> b!1310966 m!1463145))

(assert (=> bm!89266 m!1462163))

(declare-fun m!1463147 () Bool)

(assert (=> bm!89266 m!1463147))

(assert (=> b!1310961 m!1462163))

(declare-fun m!1463149 () Bool)

(assert (=> b!1310961 m!1463149))

(assert (=> b!1310961 m!1463149))

(declare-fun m!1463151 () Bool)

(assert (=> b!1310961 m!1463151))

(assert (=> b!1310959 m!1462163))

(assert (=> b!1310959 m!1463149))

(assert (=> b!1310959 m!1463149))

(assert (=> b!1310959 m!1463151))

(assert (=> d!369208 m!1462163))

(assert (=> d!369208 m!1463147))

(declare-fun m!1463153 () Bool)

(assert (=> d!369208 m!1463153))

(assert (=> b!1310963 m!1462163))

(assert (=> b!1310963 m!1463143))

(assert (=> b!1310963 m!1463143))

(declare-fun m!1463155 () Bool)

(assert (=> b!1310963 m!1463155))

(assert (=> b!1310963 m!1462163))

(assert (=> b!1310963 m!1463149))

(assert (=> b!1310963 m!1463155))

(assert (=> b!1310963 m!1463149))

(declare-fun m!1463157 () Bool)

(assert (=> b!1310963 m!1463157))

(assert (=> b!1310968 m!1462163))

(assert (=> b!1310968 m!1463143))

(assert (=> b!1310392 d!369208))

(assert (=> b!1310392 d!369080))

(declare-fun d!369214 () Bool)

(assert (=> d!369214 (= (list!4986 (charsOf!1271 (_1!7332 (get!4246 lt!431580)))) (list!4990 (c!214934 (charsOf!1271 (_1!7332 (get!4246 lt!431580))))))))

(declare-fun bs!329866 () Bool)

(assert (= bs!329866 d!369214))

(declare-fun m!1463159 () Bool)

(assert (=> bs!329866 m!1463159))

(assert (=> b!1310392 d!369214))

(declare-fun d!369216 () Bool)

(declare-fun lt!431909 () BalanceConc!8676)

(assert (=> d!369216 (= (list!4986 lt!431909) (originalCharacters!3161 (_1!7332 (get!4246 lt!431580))))))

(assert (=> d!369216 (= lt!431909 (dynLambda!5765 (toChars!3377 (transformation!2299 (rule!4038 (_1!7332 (get!4246 lt!431580))))) (value!75154 (_1!7332 (get!4246 lt!431580)))))))

(assert (=> d!369216 (= (charsOf!1271 (_1!7332 (get!4246 lt!431580))) lt!431909)))

(declare-fun b_lambda!37675 () Bool)

(assert (=> (not b_lambda!37675) (not d!369216)))

(declare-fun tb!69729 () Bool)

(declare-fun t!118062 () Bool)

(assert (=> (and b!1309934 (= (toChars!3377 (transformation!2299 (h!18686 rules!2550))) (toChars!3377 (transformation!2299 (rule!4038 (_1!7332 (get!4246 lt!431580)))))) t!118062) tb!69729))

(declare-fun b!1310974 () Bool)

(declare-fun e!840662 () Bool)

(declare-fun tp!382059 () Bool)

(assert (=> b!1310974 (= e!840662 (and (inv!17665 (c!214934 (dynLambda!5765 (toChars!3377 (transformation!2299 (rule!4038 (_1!7332 (get!4246 lt!431580))))) (value!75154 (_1!7332 (get!4246 lt!431580)))))) tp!382059))))

(declare-fun result!84608 () Bool)

(assert (=> tb!69729 (= result!84608 (and (inv!17666 (dynLambda!5765 (toChars!3377 (transformation!2299 (rule!4038 (_1!7332 (get!4246 lt!431580))))) (value!75154 (_1!7332 (get!4246 lt!431580))))) e!840662))))

(assert (= tb!69729 b!1310974))

(declare-fun m!1463163 () Bool)

(assert (=> b!1310974 m!1463163))

(declare-fun m!1463167 () Bool)

(assert (=> tb!69729 m!1463167))

(assert (=> d!369216 t!118062))

(declare-fun b_and!87587 () Bool)

(assert (= b_and!87569 (and (=> t!118062 result!84608) b_and!87587)))

(declare-fun tb!69731 () Bool)

(declare-fun t!118064 () Bool)

(assert (=> (and b!1309933 (= (toChars!3377 (transformation!2299 (rule!4038 t1!34))) (toChars!3377 (transformation!2299 (rule!4038 (_1!7332 (get!4246 lt!431580)))))) t!118064) tb!69731))

(declare-fun result!84610 () Bool)

(assert (= result!84610 result!84608))

(assert (=> d!369216 t!118064))

(declare-fun b_and!87589 () Bool)

(assert (= b_and!87571 (and (=> t!118064 result!84610) b_and!87589)))

(declare-fun tb!69733 () Bool)

(declare-fun t!118066 () Bool)

(assert (=> (and b!1309954 (= (toChars!3377 (transformation!2299 (rule!4038 t2!34))) (toChars!3377 (transformation!2299 (rule!4038 (_1!7332 (get!4246 lt!431580)))))) t!118066) tb!69733))

(declare-fun result!84612 () Bool)

(assert (= result!84612 result!84608))

(assert (=> d!369216 t!118066))

(declare-fun b_and!87591 () Bool)

(assert (= b_and!87573 (and (=> t!118066 result!84612) b_and!87591)))

(declare-fun t!118068 () Bool)

(declare-fun tb!69735 () Bool)

(assert (=> (and b!1310655 (= (toChars!3377 (transformation!2299 (h!18686 (t!118010 rules!2550)))) (toChars!3377 (transformation!2299 (rule!4038 (_1!7332 (get!4246 lt!431580)))))) t!118068) tb!69735))

(declare-fun result!84614 () Bool)

(assert (= result!84614 result!84608))

(assert (=> d!369216 t!118068))

(declare-fun b_and!87593 () Bool)

(assert (= b_and!87577 (and (=> t!118068 result!84614) b_and!87593)))

(declare-fun m!1463169 () Bool)

(assert (=> d!369216 m!1463169))

(declare-fun m!1463171 () Bool)

(assert (=> d!369216 m!1463171))

(assert (=> b!1310392 d!369216))

(declare-fun d!369220 () Bool)

(declare-fun res!588565 () Bool)

(declare-fun e!840663 () Bool)

(assert (=> d!369220 (=> res!588565 e!840663)))

(assert (=> d!369220 (= res!588565 ((_ is Nil!13286) lt!431420))))

(assert (=> d!369220 (= (forall!3282 lt!431420 lambda!52973) e!840663)))

(declare-fun b!1310975 () Bool)

(declare-fun e!840664 () Bool)

(assert (=> b!1310975 (= e!840663 e!840664)))

(declare-fun res!588566 () Bool)

(assert (=> b!1310975 (=> (not res!588566) (not e!840664))))

(assert (=> b!1310975 (= res!588566 (dynLambda!5761 lambda!52973 (h!18687 lt!431420)))))

(declare-fun b!1310976 () Bool)

(assert (=> b!1310976 (= e!840664 (forall!3282 (t!118011 lt!431420) lambda!52973))))

(assert (= (and d!369220 (not res!588565)) b!1310975))

(assert (= (and b!1310975 res!588566) b!1310976))

(declare-fun b_lambda!37677 () Bool)

(assert (=> (not b_lambda!37677) (not b!1310975)))

(declare-fun m!1463173 () Bool)

(assert (=> b!1310975 m!1463173))

(declare-fun m!1463175 () Bool)

(assert (=> b!1310976 m!1463175))

(assert (=> d!368832 d!369220))

(declare-fun b!1310981 () Bool)

(declare-fun e!840671 () Bool)

(declare-fun e!840667 () Bool)

(assert (=> b!1310981 (= e!840671 e!840667)))

(declare-fun c!215150 () Bool)

(assert (=> b!1310981 (= c!215150 ((_ is EmptyLang!3613) (h!18687 (map!2915 rules!2550 lambda!52948))))))

(declare-fun b!1310982 () Bool)

(declare-fun res!588569 () Bool)

(declare-fun e!840670 () Bool)

(assert (=> b!1310982 (=> (not res!588569) (not e!840670))))

(declare-fun call!89272 () Bool)

(assert (=> b!1310982 (= res!588569 (not call!89272))))

(declare-fun b!1310983 () Bool)

(declare-fun res!588571 () Bool)

(assert (=> b!1310983 (=> (not res!588571) (not e!840670))))

(assert (=> b!1310983 (= res!588571 (isEmpty!7861 (tail!1874 lt!431412)))))

(declare-fun b!1310984 () Bool)

(declare-fun res!588574 () Bool)

(declare-fun e!840668 () Bool)

(assert (=> b!1310984 (=> res!588574 e!840668)))

(assert (=> b!1310984 (= res!588574 (not ((_ is ElementMatch!3613) (h!18687 (map!2915 rules!2550 lambda!52948)))))))

(assert (=> b!1310984 (= e!840667 e!840668)))

(declare-fun b!1310985 () Bool)

(declare-fun res!588572 () Bool)

(declare-fun e!840672 () Bool)

(assert (=> b!1310985 (=> res!588572 e!840672)))

(assert (=> b!1310985 (= res!588572 (not (isEmpty!7861 (tail!1874 lt!431412))))))

(declare-fun b!1310986 () Bool)

(declare-fun res!588568 () Bool)

(assert (=> b!1310986 (=> res!588568 e!840668)))

(assert (=> b!1310986 (= res!588568 e!840670)))

(declare-fun res!588573 () Bool)

(assert (=> b!1310986 (=> (not res!588573) (not e!840670))))

(declare-fun lt!431913 () Bool)

(assert (=> b!1310986 (= res!588573 lt!431913)))

(declare-fun b!1310987 () Bool)

(declare-fun e!840673 () Bool)

(assert (=> b!1310987 (= e!840673 (matchR!1615 (derivativeStep!893 (h!18687 (map!2915 rules!2550 lambda!52948)) (head!2255 lt!431412)) (tail!1874 lt!431412)))))

(declare-fun b!1310988 () Bool)

(declare-fun e!840669 () Bool)

(assert (=> b!1310988 (= e!840669 e!840672)))

(declare-fun res!588570 () Bool)

(assert (=> b!1310988 (=> res!588570 e!840672)))

(assert (=> b!1310988 (= res!588570 call!89272)))

(declare-fun b!1310989 () Bool)

(assert (=> b!1310989 (= e!840671 (= lt!431913 call!89272))))

(declare-fun b!1310990 () Bool)

(assert (=> b!1310990 (= e!840673 (nullable!1141 (h!18687 (map!2915 rules!2550 lambda!52948))))))

(declare-fun b!1310991 () Bool)

(assert (=> b!1310991 (= e!840667 (not lt!431913))))

(declare-fun d!369222 () Bool)

(assert (=> d!369222 e!840671))

(declare-fun c!215148 () Bool)

(assert (=> d!369222 (= c!215148 ((_ is EmptyExpr!3613) (h!18687 (map!2915 rules!2550 lambda!52948))))))

(assert (=> d!369222 (= lt!431913 e!840673)))

(declare-fun c!215149 () Bool)

(assert (=> d!369222 (= c!215149 (isEmpty!7861 lt!431412))))

(assert (=> d!369222 (validRegex!1543 (h!18687 (map!2915 rules!2550 lambda!52948)))))

(assert (=> d!369222 (= (matchR!1615 (h!18687 (map!2915 rules!2550 lambda!52948)) lt!431412) lt!431913)))

(declare-fun b!1310992 () Bool)

(assert (=> b!1310992 (= e!840670 (= (head!2255 lt!431412) (c!214935 (h!18687 (map!2915 rules!2550 lambda!52948)))))))

(declare-fun bm!89267 () Bool)

(assert (=> bm!89267 (= call!89272 (isEmpty!7861 lt!431412))))

(declare-fun b!1310993 () Bool)

(assert (=> b!1310993 (= e!840668 e!840669)))

(declare-fun res!588567 () Bool)

(assert (=> b!1310993 (=> (not res!588567) (not e!840669))))

(assert (=> b!1310993 (= res!588567 (not lt!431913))))

(declare-fun b!1310994 () Bool)

(assert (=> b!1310994 (= e!840672 (not (= (head!2255 lt!431412) (c!214935 (h!18687 (map!2915 rules!2550 lambda!52948))))))))

(assert (= (and d!369222 c!215149) b!1310990))

(assert (= (and d!369222 (not c!215149)) b!1310987))

(assert (= (and d!369222 c!215148) b!1310989))

(assert (= (and d!369222 (not c!215148)) b!1310981))

(assert (= (and b!1310981 c!215150) b!1310991))

(assert (= (and b!1310981 (not c!215150)) b!1310984))

(assert (= (and b!1310984 (not res!588574)) b!1310986))

(assert (= (and b!1310986 res!588573) b!1310982))

(assert (= (and b!1310982 res!588569) b!1310983))

(assert (= (and b!1310983 res!588571) b!1310992))

(assert (= (and b!1310986 (not res!588568)) b!1310993))

(assert (= (and b!1310993 res!588567) b!1310988))

(assert (= (and b!1310988 (not res!588570)) b!1310985))

(assert (= (and b!1310985 (not res!588572)) b!1310994))

(assert (= (or b!1310989 b!1310982 b!1310988) bm!89267))

(assert (=> b!1310994 m!1462275))

(declare-fun m!1463177 () Bool)

(assert (=> b!1310990 m!1463177))

(assert (=> bm!89267 m!1462279))

(assert (=> b!1310985 m!1462281))

(assert (=> b!1310985 m!1462281))

(assert (=> b!1310985 m!1462283))

(assert (=> b!1310983 m!1462281))

(assert (=> b!1310983 m!1462281))

(assert (=> b!1310983 m!1462283))

(assert (=> d!369222 m!1462279))

(assert (=> d!369222 m!1462535))

(assert (=> b!1310987 m!1462275))

(assert (=> b!1310987 m!1462275))

(declare-fun m!1463181 () Bool)

(assert (=> b!1310987 m!1463181))

(assert (=> b!1310987 m!1462281))

(assert (=> b!1310987 m!1463181))

(assert (=> b!1310987 m!1462281))

(declare-fun m!1463183 () Bool)

(assert (=> b!1310987 m!1463183))

(assert (=> b!1310992 m!1462275))

(assert (=> b!1310662 d!369222))

(assert (=> b!1310337 d!369064))

(declare-fun d!369226 () Bool)

(declare-fun dynLambda!5774 (Int BalanceConc!8676) TokenValue!2389)

(assert (=> d!369226 (= (apply!2990 (transformation!2299 (rule!4038 (_1!7332 (get!4246 lt!431554)))) (seqFromList!1591 (originalCharacters!3161 (_1!7332 (get!4246 lt!431554))))) (dynLambda!5774 (toValue!3518 (transformation!2299 (rule!4038 (_1!7332 (get!4246 lt!431554))))) (seqFromList!1591 (originalCharacters!3161 (_1!7332 (get!4246 lt!431554))))))))

(declare-fun b_lambda!37679 () Bool)

(assert (=> (not b_lambda!37679) (not d!369226)))

(declare-fun t!118070 () Bool)

(declare-fun tb!69737 () Bool)

(assert (=> (and b!1309934 (= (toValue!3518 (transformation!2299 (h!18686 rules!2550))) (toValue!3518 (transformation!2299 (rule!4038 (_1!7332 (get!4246 lt!431554)))))) t!118070) tb!69737))

(declare-fun result!84616 () Bool)

(assert (=> tb!69737 (= result!84616 (inv!21 (dynLambda!5774 (toValue!3518 (transformation!2299 (rule!4038 (_1!7332 (get!4246 lt!431554))))) (seqFromList!1591 (originalCharacters!3161 (_1!7332 (get!4246 lt!431554)))))))))

(declare-fun m!1463185 () Bool)

(assert (=> tb!69737 m!1463185))

(assert (=> d!369226 t!118070))

(declare-fun b_and!87595 () Bool)

(assert (= b_and!87511 (and (=> t!118070 result!84616) b_and!87595)))

(declare-fun t!118072 () Bool)

(declare-fun tb!69739 () Bool)

(assert (=> (and b!1309933 (= (toValue!3518 (transformation!2299 (rule!4038 t1!34))) (toValue!3518 (transformation!2299 (rule!4038 (_1!7332 (get!4246 lt!431554)))))) t!118072) tb!69739))

(declare-fun result!84620 () Bool)

(assert (= result!84620 result!84616))

(assert (=> d!369226 t!118072))

(declare-fun b_and!87597 () Bool)

(assert (= b_and!87515 (and (=> t!118072 result!84620) b_and!87597)))

(declare-fun t!118074 () Bool)

(declare-fun tb!69741 () Bool)

(assert (=> (and b!1309954 (= (toValue!3518 (transformation!2299 (rule!4038 t2!34))) (toValue!3518 (transformation!2299 (rule!4038 (_1!7332 (get!4246 lt!431554)))))) t!118074) tb!69741))

(declare-fun result!84622 () Bool)

(assert (= result!84622 result!84616))

(assert (=> d!369226 t!118074))

(declare-fun b_and!87599 () Bool)

(assert (= b_and!87519 (and (=> t!118074 result!84622) b_and!87599)))

(declare-fun tb!69743 () Bool)

(declare-fun t!118076 () Bool)

(assert (=> (and b!1310655 (= (toValue!3518 (transformation!2299 (h!18686 (t!118010 rules!2550)))) (toValue!3518 (transformation!2299 (rule!4038 (_1!7332 (get!4246 lt!431554)))))) t!118076) tb!69743))

(declare-fun result!84624 () Bool)

(assert (= result!84624 result!84616))

(assert (=> d!369226 t!118076))

(declare-fun b_and!87601 () Bool)

(assert (= b_and!87575 (and (=> t!118076 result!84624) b_and!87601)))

(assert (=> d!369226 m!1462053))

(declare-fun m!1463187 () Bool)

(assert (=> d!369226 m!1463187))

(assert (=> b!1310337 d!369226))

(declare-fun d!369228 () Bool)

(declare-fun fromListB!704 (List!13349) BalanceConc!8676)

(assert (=> d!369228 (= (seqFromList!1591 (originalCharacters!3161 (_1!7332 (get!4246 lt!431554)))) (fromListB!704 (originalCharacters!3161 (_1!7332 (get!4246 lt!431554)))))))

(declare-fun bs!329868 () Bool)

(assert (= bs!329868 d!369228))

(declare-fun m!1463195 () Bool)

(assert (=> bs!329868 m!1463195))

(assert (=> b!1310337 d!369228))

(declare-fun d!369232 () Bool)

(assert (=> d!369232 (= (isEmpty!7861 (originalCharacters!3161 t2!34)) ((_ is Nil!13283) (originalCharacters!3161 t2!34)))))

(assert (=> d!369000 d!369232))

(declare-fun b!1311041 () Bool)

(declare-fun res!588607 () Bool)

(declare-fun e!840704 () Bool)

(assert (=> b!1311041 (=> (not res!588607) (not e!840704))))

(declare-fun height!620 (Conc!4368) Int)

(declare-fun ++!3383 (Conc!4368 Conc!4368) Conc!4368)

(declare-fun max!0 (Int Int) Int)

(assert (=> b!1311041 (= res!588607 (>= (height!620 (++!3383 (c!214934 (charsOf!1271 t1!34)) (c!214934 (singletonSeq!874 (apply!2987 (charsOf!1271 t2!34) 0))))) (max!0 (height!620 (c!214934 (charsOf!1271 t1!34))) (height!620 (c!214934 (singletonSeq!874 (apply!2987 (charsOf!1271 t2!34) 0)))))))))

(declare-fun b!1311039 () Bool)

(declare-fun res!588605 () Bool)

(assert (=> b!1311039 (=> (not res!588605) (not e!840704))))

(assert (=> b!1311039 (= res!588605 (isBalanced!1270 (++!3383 (c!214934 (charsOf!1271 t1!34)) (c!214934 (singletonSeq!874 (apply!2987 (charsOf!1271 t2!34) 0))))))))

(declare-fun lt!431926 () BalanceConc!8676)

(declare-fun b!1311042 () Bool)

(assert (=> b!1311042 (= e!840704 (= (list!4986 lt!431926) (++!3378 (list!4986 (charsOf!1271 t1!34)) (list!4986 (singletonSeq!874 (apply!2987 (charsOf!1271 t2!34) 0))))))))

(declare-fun b!1311040 () Bool)

(declare-fun res!588606 () Bool)

(assert (=> b!1311040 (=> (not res!588606) (not e!840704))))

(assert (=> b!1311040 (= res!588606 (<= (height!620 (++!3383 (c!214934 (charsOf!1271 t1!34)) (c!214934 (singletonSeq!874 (apply!2987 (charsOf!1271 t2!34) 0))))) (+ (max!0 (height!620 (c!214934 (charsOf!1271 t1!34))) (height!620 (c!214934 (singletonSeq!874 (apply!2987 (charsOf!1271 t2!34) 0))))) 1)))))

(declare-fun d!369234 () Bool)

(assert (=> d!369234 e!840704))

(declare-fun res!588608 () Bool)

(assert (=> d!369234 (=> (not res!588608) (not e!840704))))

(declare-fun appendAssocInst!256 (Conc!4368 Conc!4368) Bool)

(assert (=> d!369234 (= res!588608 (appendAssocInst!256 (c!214934 (charsOf!1271 t1!34)) (c!214934 (singletonSeq!874 (apply!2987 (charsOf!1271 t2!34) 0)))))))

(assert (=> d!369234 (= lt!431926 (BalanceConc!8677 (++!3383 (c!214934 (charsOf!1271 t1!34)) (c!214934 (singletonSeq!874 (apply!2987 (charsOf!1271 t2!34) 0))))))))

(assert (=> d!369234 (= (++!3380 (charsOf!1271 t1!34) (singletonSeq!874 (apply!2987 (charsOf!1271 t2!34) 0))) lt!431926)))

(assert (= (and d!369234 res!588608) b!1311039))

(assert (= (and b!1311039 res!588605) b!1311040))

(assert (= (and b!1311040 res!588606) b!1311041))

(assert (= (and b!1311041 res!588607) b!1311042))

(declare-fun m!1463227 () Bool)

(assert (=> d!369234 m!1463227))

(declare-fun m!1463229 () Bool)

(assert (=> d!369234 m!1463229))

(assert (=> b!1311041 m!1463229))

(declare-fun m!1463231 () Bool)

(assert (=> b!1311041 m!1463231))

(declare-fun m!1463233 () Bool)

(assert (=> b!1311041 m!1463233))

(assert (=> b!1311041 m!1463229))

(declare-fun m!1463235 () Bool)

(assert (=> b!1311041 m!1463235))

(assert (=> b!1311041 m!1463233))

(assert (=> b!1311041 m!1463235))

(declare-fun m!1463237 () Bool)

(assert (=> b!1311041 m!1463237))

(declare-fun m!1463239 () Bool)

(assert (=> b!1311042 m!1463239))

(assert (=> b!1311042 m!1461613))

(declare-fun m!1463241 () Bool)

(assert (=> b!1311042 m!1463241))

(assert (=> b!1311042 m!1462455))

(declare-fun m!1463243 () Bool)

(assert (=> b!1311042 m!1463243))

(assert (=> b!1311042 m!1463241))

(assert (=> b!1311042 m!1463243))

(declare-fun m!1463245 () Bool)

(assert (=> b!1311042 m!1463245))

(assert (=> b!1311040 m!1463229))

(assert (=> b!1311040 m!1463231))

(assert (=> b!1311040 m!1463233))

(assert (=> b!1311040 m!1463229))

(assert (=> b!1311040 m!1463235))

(assert (=> b!1311040 m!1463233))

(assert (=> b!1311040 m!1463235))

(assert (=> b!1311040 m!1463237))

(assert (=> b!1311039 m!1463229))

(assert (=> b!1311039 m!1463229))

(declare-fun m!1463247 () Bool)

(assert (=> b!1311039 m!1463247))

(assert (=> d!368984 d!369234))

(declare-fun lt!431977 () Bool)

(declare-fun d!369256 () Bool)

(assert (=> d!369256 (= lt!431977 (prefixMatch!126 (rulesRegex!184 thiss!19762 rules!2550) (list!4986 (++!3380 (charsOf!1271 t1!34) (singletonSeq!874 (apply!2987 (charsOf!1271 t2!34) 0))))))))

(declare-datatypes ((Context!1156 0))(
  ( (Context!1157 (exprs!1078 List!13352)) )
))
(declare-fun prefixMatchZipperSequence!169 ((InoxSet Context!1156) BalanceConc!8676 Int) Bool)

(declare-fun focus!69 (Regex!3613) (InoxSet Context!1156))

(assert (=> d!369256 (= lt!431977 (prefixMatchZipperSequence!169 (focus!69 (rulesRegex!184 thiss!19762 rules!2550)) (++!3380 (charsOf!1271 t1!34) (singletonSeq!874 (apply!2987 (charsOf!1271 t2!34) 0))) 0))))

(declare-fun lt!431974 () Unit!19338)

(declare-fun lt!431979 () Unit!19338)

(assert (=> d!369256 (= lt!431974 lt!431979)))

(declare-fun lt!431973 () List!13349)

(declare-fun lt!431975 () (InoxSet Context!1156))

(declare-fun prefixMatchZipper!49 ((InoxSet Context!1156) List!13349) Bool)

(assert (=> d!369256 (= (prefixMatch!126 (rulesRegex!184 thiss!19762 rules!2550) lt!431973) (prefixMatchZipper!49 lt!431975 lt!431973))))

(declare-datatypes ((List!13355 0))(
  ( (Nil!13289) (Cons!13289 (h!18690 Context!1156) (t!118156 List!13355)) )
))
(declare-fun lt!431976 () List!13355)

(declare-fun prefixMatchZipperRegexEquiv!49 ((InoxSet Context!1156) List!13355 Regex!3613 List!13349) Unit!19338)

(assert (=> d!369256 (= lt!431979 (prefixMatchZipperRegexEquiv!49 lt!431975 lt!431976 (rulesRegex!184 thiss!19762 rules!2550) lt!431973))))

(assert (=> d!369256 (= lt!431973 (list!4986 (++!3380 (charsOf!1271 t1!34) (singletonSeq!874 (apply!2987 (charsOf!1271 t2!34) 0)))))))

(declare-fun toList!733 ((InoxSet Context!1156)) List!13355)

(assert (=> d!369256 (= lt!431976 (toList!733 (focus!69 (rulesRegex!184 thiss!19762 rules!2550))))))

(assert (=> d!369256 (= lt!431975 (focus!69 (rulesRegex!184 thiss!19762 rules!2550)))))

(declare-fun lt!431971 () Unit!19338)

(declare-fun lt!431978 () Unit!19338)

(assert (=> d!369256 (= lt!431971 lt!431978)))

(declare-fun lt!431972 () (InoxSet Context!1156))

(declare-fun lt!431980 () Int)

(declare-fun dropList!365 (BalanceConc!8676 Int) List!13349)

(assert (=> d!369256 (= (prefixMatchZipper!49 lt!431972 (dropList!365 (++!3380 (charsOf!1271 t1!34) (singletonSeq!874 (apply!2987 (charsOf!1271 t2!34) 0))) lt!431980)) (prefixMatchZipperSequence!169 lt!431972 (++!3380 (charsOf!1271 t1!34) (singletonSeq!874 (apply!2987 (charsOf!1271 t2!34) 0))) lt!431980))))

(declare-fun lemmaprefixMatchZipperSequenceEquivalent!49 ((InoxSet Context!1156) BalanceConc!8676 Int) Unit!19338)

(assert (=> d!369256 (= lt!431978 (lemmaprefixMatchZipperSequenceEquivalent!49 lt!431972 (++!3380 (charsOf!1271 t1!34) (singletonSeq!874 (apply!2987 (charsOf!1271 t2!34) 0))) lt!431980))))

(assert (=> d!369256 (= lt!431980 0)))

(assert (=> d!369256 (= lt!431972 (focus!69 (rulesRegex!184 thiss!19762 rules!2550)))))

(assert (=> d!369256 (validRegex!1543 (rulesRegex!184 thiss!19762 rules!2550))))

(assert (=> d!369256 (= (prefixMatchZipperSequence!168 (rulesRegex!184 thiss!19762 rules!2550) (++!3380 (charsOf!1271 t1!34) (singletonSeq!874 (apply!2987 (charsOf!1271 t2!34) 0)))) lt!431977)))

(declare-fun bs!329886 () Bool)

(assert (= bs!329886 d!369256))

(declare-fun m!1463371 () Bool)

(assert (=> bs!329886 m!1463371))

(declare-fun m!1463373 () Bool)

(assert (=> bs!329886 m!1463373))

(assert (=> bs!329886 m!1462451))

(declare-fun m!1463375 () Bool)

(assert (=> bs!329886 m!1463375))

(assert (=> bs!329886 m!1463371))

(assert (=> bs!329886 m!1462451))

(declare-fun m!1463377 () Bool)

(assert (=> bs!329886 m!1463377))

(assert (=> bs!329886 m!1462451))

(declare-fun m!1463379 () Bool)

(assert (=> bs!329886 m!1463379))

(assert (=> bs!329886 m!1461617))

(assert (=> bs!329886 m!1463371))

(assert (=> bs!329886 m!1462451))

(declare-fun m!1463381 () Bool)

(assert (=> bs!329886 m!1463381))

(assert (=> bs!329886 m!1462451))

(declare-fun m!1463383 () Bool)

(assert (=> bs!329886 m!1463383))

(assert (=> bs!329886 m!1461617))

(declare-fun m!1463385 () Bool)

(assert (=> bs!329886 m!1463385))

(assert (=> bs!329886 m!1461617))

(declare-fun m!1463387 () Bool)

(assert (=> bs!329886 m!1463387))

(assert (=> bs!329886 m!1463383))

(declare-fun m!1463389 () Bool)

(assert (=> bs!329886 m!1463389))

(declare-fun m!1463391 () Bool)

(assert (=> bs!329886 m!1463391))

(assert (=> bs!329886 m!1461617))

(declare-fun m!1463393 () Bool)

(assert (=> bs!329886 m!1463393))

(assert (=> bs!329886 m!1461617))

(assert (=> bs!329886 m!1463381))

(declare-fun m!1463395 () Bool)

(assert (=> bs!329886 m!1463395))

(assert (=> d!368984 d!369256))

(declare-fun d!369296 () Bool)

(declare-fun e!840760 () Bool)

(assert (=> d!369296 e!840760))

(declare-fun res!588651 () Bool)

(assert (=> d!369296 (=> (not res!588651) (not e!840760))))

(declare-fun lt!431987 () BalanceConc!8676)

(assert (=> d!369296 (= res!588651 (= (list!4986 lt!431987) (Cons!13283 (apply!2987 (charsOf!1271 t2!34) 0) Nil!13283)))))

(declare-fun singleton!375 (C!7516) BalanceConc!8676)

(assert (=> d!369296 (= lt!431987 (singleton!375 (apply!2987 (charsOf!1271 t2!34) 0)))))

(assert (=> d!369296 (= (singletonSeq!874 (apply!2987 (charsOf!1271 t2!34) 0)) lt!431987)))

(declare-fun b!1311125 () Bool)

(assert (=> b!1311125 (= e!840760 (isBalanced!1270 (c!214934 lt!431987)))))

(assert (= (and d!369296 res!588651) b!1311125))

(declare-fun m!1463415 () Bool)

(assert (=> d!369296 m!1463415))

(assert (=> d!369296 m!1462457))

(declare-fun m!1463417 () Bool)

(assert (=> d!369296 m!1463417))

(declare-fun m!1463419 () Bool)

(assert (=> b!1311125 m!1463419))

(assert (=> d!368984 d!369296))

(assert (=> d!368984 d!368886))

(declare-fun d!369304 () Bool)

(declare-fun lt!431991 () C!7516)

(assert (=> d!369304 (= lt!431991 (apply!2992 (list!4986 (charsOf!1271 t2!34)) 0))))

(assert (=> d!369304 (= lt!431991 (apply!2993 (c!214934 (charsOf!1271 t2!34)) 0))))

(declare-fun e!840764 () Bool)

(assert (=> d!369304 e!840764))

(declare-fun res!588653 () Bool)

(assert (=> d!369304 (=> (not res!588653) (not e!840764))))

(assert (=> d!369304 (= res!588653 (<= 0 0))))

(assert (=> d!369304 (= (apply!2987 (charsOf!1271 t2!34) 0) lt!431991)))

(declare-fun b!1311131 () Bool)

(assert (=> b!1311131 (= e!840764 (< 0 (size!10791 (charsOf!1271 t2!34))))))

(assert (= (and d!369304 res!588653) b!1311131))

(assert (=> d!369304 m!1461593))

(declare-fun m!1463425 () Bool)

(assert (=> d!369304 m!1463425))

(assert (=> d!369304 m!1463425))

(declare-fun m!1463431 () Bool)

(assert (=> d!369304 m!1463431))

(declare-fun m!1463435 () Bool)

(assert (=> d!369304 m!1463435))

(assert (=> b!1311131 m!1461593))

(declare-fun m!1463439 () Bool)

(assert (=> b!1311131 m!1463439))

(assert (=> d!368984 d!369304))

(assert (=> d!368984 d!368884))

(assert (=> d!368984 d!369006))

(declare-fun d!369308 () Bool)

(declare-fun lt!431997 () C!7516)

(assert (=> d!369308 (contains!2308 (list!4986 lt!431411) lt!431997)))

(declare-fun e!840769 () C!7516)

(assert (=> d!369308 (= lt!431997 e!840769)))

(declare-fun c!215184 () Bool)

(assert (=> d!369308 (= c!215184 (= 0 0))))

(declare-fun e!840770 () Bool)

(assert (=> d!369308 e!840770))

(declare-fun res!588656 () Bool)

(assert (=> d!369308 (=> (not res!588656) (not e!840770))))

(assert (=> d!369308 (= res!588656 (<= 0 0))))

(assert (=> d!369308 (= (apply!2992 (list!4986 lt!431411) 0) lt!431997)))

(declare-fun b!1311138 () Bool)

(assert (=> b!1311138 (= e!840770 (< 0 (size!10797 (list!4986 lt!431411))))))

(declare-fun b!1311139 () Bool)

(assert (=> b!1311139 (= e!840769 (head!2255 (list!4986 lt!431411)))))

(declare-fun b!1311140 () Bool)

(assert (=> b!1311140 (= e!840769 (apply!2992 (tail!1874 (list!4986 lt!431411)) (- 0 1)))))

(assert (= (and d!369308 res!588656) b!1311138))

(assert (= (and d!369308 c!215184) b!1311139))

(assert (= (and d!369308 (not c!215184)) b!1311140))

(assert (=> d!369308 m!1461619))

(declare-fun m!1463445 () Bool)

(assert (=> d!369308 m!1463445))

(assert (=> b!1311138 m!1461619))

(assert (=> b!1311138 m!1462667))

(assert (=> b!1311139 m!1461619))

(declare-fun m!1463447 () Bool)

(assert (=> b!1311139 m!1463447))

(assert (=> b!1311140 m!1461619))

(declare-fun m!1463451 () Bool)

(assert (=> b!1311140 m!1463451))

(assert (=> b!1311140 m!1463451))

(declare-fun m!1463455 () Bool)

(assert (=> b!1311140 m!1463455))

(assert (=> d!368866 d!369308))

(assert (=> d!368866 d!368882))

(declare-fun b!1311166 () Bool)

(declare-fun e!840791 () C!7516)

(declare-fun call!89282 () C!7516)

(assert (=> b!1311166 (= e!840791 call!89282)))

(declare-fun bm!89277 () Bool)

(declare-fun c!215194 () Bool)

(declare-fun c!215193 () Bool)

(assert (=> bm!89277 (= c!215194 c!215193)))

(declare-fun e!840790 () Int)

(assert (=> bm!89277 (= call!89282 (apply!2993 (ite c!215193 (left!11423 (c!214934 lt!431411)) (right!11753 (c!214934 lt!431411))) e!840790))))

(declare-fun b!1311167 () Bool)

(declare-fun e!840792 () C!7516)

(assert (=> b!1311167 (= e!840792 e!840791)))

(declare-fun lt!432011 () Bool)

(declare-fun appendIndex!139 (List!13349 List!13349 Int) Bool)

(assert (=> b!1311167 (= lt!432011 (appendIndex!139 (list!4990 (left!11423 (c!214934 lt!431411))) (list!4990 (right!11753 (c!214934 lt!431411))) 0))))

(assert (=> b!1311167 (= c!215193 (< 0 (size!10803 (left!11423 (c!214934 lt!431411)))))))

(declare-fun b!1311168 () Bool)

(assert (=> b!1311168 (= e!840790 (- 0 (size!10803 (left!11423 (c!214934 lt!431411)))))))

(declare-fun d!369318 () Bool)

(declare-fun lt!432010 () C!7516)

(assert (=> d!369318 (= lt!432010 (apply!2992 (list!4990 (c!214934 lt!431411)) 0))))

(assert (=> d!369318 (= lt!432010 e!840792)))

(declare-fun c!215192 () Bool)

(assert (=> d!369318 (= c!215192 ((_ is Leaf!6714) (c!214934 lt!431411)))))

(declare-fun e!840789 () Bool)

(assert (=> d!369318 e!840789))

(declare-fun res!588667 () Bool)

(assert (=> d!369318 (=> (not res!588667) (not e!840789))))

(assert (=> d!369318 (= res!588667 (<= 0 0))))

(assert (=> d!369318 (= (apply!2993 (c!214934 lt!431411) 0) lt!432010)))

(declare-fun b!1311169 () Bool)

(assert (=> b!1311169 (= e!840789 (< 0 (size!10803 (c!214934 lt!431411))))))

(declare-fun b!1311170 () Bool)

(declare-fun apply!3001 (IArray!8741 Int) C!7516)

(assert (=> b!1311170 (= e!840792 (apply!3001 (xs!7083 (c!214934 lt!431411)) 0))))

(declare-fun b!1311171 () Bool)

(assert (=> b!1311171 (= e!840791 call!89282)))

(declare-fun b!1311172 () Bool)

(assert (=> b!1311172 (= e!840790 0)))

(assert (= (and d!369318 res!588667) b!1311169))

(assert (= (and d!369318 c!215192) b!1311170))

(assert (= (and d!369318 (not c!215192)) b!1311167))

(assert (= (and b!1311167 c!215193) b!1311171))

(assert (= (and b!1311167 (not c!215193)) b!1311166))

(assert (= (or b!1311171 b!1311166) bm!89277))

(assert (= (and bm!89277 c!215194) b!1311172))

(assert (= (and bm!89277 (not c!215194)) b!1311168))

(declare-fun m!1463487 () Bool)

(assert (=> bm!89277 m!1463487))

(assert (=> b!1311167 m!1462795))

(assert (=> b!1311167 m!1462797))

(assert (=> b!1311167 m!1462795))

(assert (=> b!1311167 m!1462797))

(declare-fun m!1463489 () Bool)

(assert (=> b!1311167 m!1463489))

(declare-fun m!1463491 () Bool)

(assert (=> b!1311167 m!1463491))

(assert (=> b!1311169 m!1462669))

(assert (=> b!1311168 m!1463491))

(declare-fun m!1463493 () Bool)

(assert (=> b!1311170 m!1463493))

(assert (=> d!369318 m!1462135))

(assert (=> d!369318 m!1462135))

(declare-fun m!1463495 () Bool)

(assert (=> d!369318 m!1463495))

(assert (=> d!368866 d!369318))

(declare-fun d!369336 () Bool)

(declare-fun charsToInt!0 (List!13348) (_ BitVec 32))

(assert (=> d!369336 (= (inv!16 (value!75154 t2!34)) (= (charsToInt!0 (text!17170 (value!75154 t2!34))) (value!75145 (value!75154 t2!34))))))

(declare-fun bs!329898 () Bool)

(assert (= bs!329898 d!369336))

(declare-fun m!1463501 () Bool)

(assert (=> bs!329898 m!1463501))

(assert (=> b!1310267 d!369336))

(declare-fun d!369340 () Bool)

(assert (=> d!369340 (= (isEmpty!7861 lt!431412) ((_ is Nil!13283) lt!431412))))

(assert (=> bm!89254 d!369340))

(declare-fun d!369342 () Bool)

(declare-fun lt!432016 () Int)

(assert (=> d!369342 (>= lt!432016 0)))

(declare-fun e!840800 () Int)

(assert (=> d!369342 (= lt!432016 e!840800)))

(declare-fun c!215198 () Bool)

(assert (=> d!369342 (= c!215198 ((_ is Nil!13283) (_2!7331 lt!431652)))))

(assert (=> d!369342 (= (size!10797 (_2!7331 lt!431652)) lt!432016)))

(declare-fun b!1311187 () Bool)

(assert (=> b!1311187 (= e!840800 0)))

(declare-fun b!1311188 () Bool)

(assert (=> b!1311188 (= e!840800 (+ 1 (size!10797 (t!118008 (_2!7331 lt!431652)))))))

(assert (= (and d!369342 c!215198) b!1311187))

(assert (= (and d!369342 (not c!215198)) b!1311188))

(declare-fun m!1463503 () Bool)

(assert (=> b!1311188 m!1463503))

(assert (=> b!1310597 d!369342))

(declare-fun d!369344 () Bool)

(declare-fun lt!432017 () Int)

(assert (=> d!369344 (>= lt!432017 0)))

(declare-fun e!840801 () Int)

(assert (=> d!369344 (= lt!432017 e!840801)))

(declare-fun c!215199 () Bool)

(assert (=> d!369344 (= c!215199 ((_ is Nil!13283) (list!4986 lt!431409)))))

(assert (=> d!369344 (= (size!10797 (list!4986 lt!431409)) lt!432017)))

(declare-fun b!1311189 () Bool)

(assert (=> b!1311189 (= e!840801 0)))

(declare-fun b!1311190 () Bool)

(assert (=> b!1311190 (= e!840801 (+ 1 (size!10797 (t!118008 (list!4986 lt!431409)))))))

(assert (= (and d!369344 c!215199) b!1311189))

(assert (= (and d!369344 (not c!215199)) b!1311190))

(declare-fun m!1463505 () Bool)

(assert (=> b!1311190 m!1463505))

(assert (=> b!1310597 d!369344))

(assert (=> d!368812 d!368850))

(declare-fun d!369346 () Bool)

(declare-fun lt!432018 () Int)

(assert (=> d!369346 (>= lt!432018 0)))

(declare-fun e!840802 () Int)

(assert (=> d!369346 (= lt!432018 e!840802)))

(declare-fun c!215200 () Bool)

(assert (=> d!369346 (= c!215200 ((_ is Nil!13283) (_2!7332 (get!4246 lt!431580))))))

(assert (=> d!369346 (= (size!10797 (_2!7332 (get!4246 lt!431580))) lt!432018)))

(declare-fun b!1311191 () Bool)

(assert (=> b!1311191 (= e!840802 0)))

(declare-fun b!1311192 () Bool)

(assert (=> b!1311192 (= e!840802 (+ 1 (size!10797 (t!118008 (_2!7332 (get!4246 lt!431580))))))))

(assert (= (and d!369346 c!215200) b!1311191))

(assert (= (and d!369346 (not c!215200)) b!1311192))

(declare-fun m!1463507 () Bool)

(assert (=> b!1311192 m!1463507))

(assert (=> b!1310389 d!369346))

(assert (=> b!1310389 d!369080))

(assert (=> b!1310389 d!369086))

(declare-fun d!369348 () Bool)

(assert (=> d!369348 true))

(declare-fun order!7987 () Int)

(declare-fun order!7989 () Int)

(declare-fun lambda!53021 () Int)

(declare-fun dynLambda!5775 (Int Int) Int)

(declare-fun dynLambda!5776 (Int Int) Int)

(assert (=> d!369348 (< (dynLambda!5775 order!7987 (toChars!3377 (transformation!2299 (rule!4038 t2!34)))) (dynLambda!5776 order!7989 lambda!53021))))

(assert (=> d!369348 true))

(declare-fun order!7991 () Int)

(declare-fun dynLambda!5777 (Int Int) Int)

(assert (=> d!369348 (< (dynLambda!5777 order!7991 (toValue!3518 (transformation!2299 (rule!4038 t2!34)))) (dynLambda!5776 order!7989 lambda!53021))))

(declare-fun Forall!515 (Int) Bool)

(assert (=> d!369348 (= (semiInverseModEq!862 (toChars!3377 (transformation!2299 (rule!4038 t2!34))) (toValue!3518 (transformation!2299 (rule!4038 t2!34)))) (Forall!515 lambda!53021))))

(declare-fun bs!329901 () Bool)

(assert (= bs!329901 d!369348))

(declare-fun m!1463545 () Bool)

(assert (=> bs!329901 m!1463545))

(assert (=> d!368858 d!369348))

(declare-fun d!369362 () Bool)

(declare-fun lt!432024 () Bool)

(assert (=> d!369362 (= lt!432024 (isEmpty!7858 (list!4987 (_1!7333 lt!431654))))))

(declare-fun isEmpty!7866 (Conc!4369) Bool)

(assert (=> d!369362 (= lt!432024 (isEmpty!7866 (c!214936 (_1!7333 lt!431654))))))

(assert (=> d!369362 (= (isEmpty!7863 (_1!7333 lt!431654)) lt!432024)))

(declare-fun bs!329903 () Bool)

(assert (= bs!329903 d!369362))

(assert (=> bs!329903 m!1462473))

(assert (=> bs!329903 m!1462473))

(declare-fun m!1463565 () Bool)

(assert (=> bs!329903 m!1463565))

(declare-fun m!1463567 () Bool)

(assert (=> bs!329903 m!1463567))

(assert (=> b!1310603 d!369362))

(declare-fun d!369368 () Bool)

(assert (=> d!369368 (= (list!4987 lt!431650) (list!4991 (c!214936 lt!431650)))))

(declare-fun bs!329905 () Bool)

(assert (= bs!329905 d!369368))

(declare-fun m!1463573 () Bool)

(assert (=> bs!329905 m!1463573))

(assert (=> d!368976 d!369368))

(declare-fun d!369372 () Bool)

(declare-fun e!840820 () Bool)

(assert (=> d!369372 e!840820))

(declare-fun res!588694 () Bool)

(assert (=> d!369372 (=> (not res!588694) (not e!840820))))

(declare-fun lt!432031 () BalanceConc!8678)

(assert (=> d!369372 (= res!588694 (= (list!4987 lt!432031) (Cons!13284 t1!34 Nil!13284)))))

(declare-fun choose!8017 (Token!4260) BalanceConc!8678)

(assert (=> d!369372 (= lt!432031 (choose!8017 t1!34))))

(assert (=> d!369372 (= (singleton!374 t1!34) lt!432031)))

(declare-fun b!1311230 () Bool)

(assert (=> b!1311230 (= e!840820 (isBalanced!1268 (c!214936 lt!432031)))))

(assert (= (and d!369372 res!588694) b!1311230))

(declare-fun m!1463577 () Bool)

(assert (=> d!369372 m!1463577))

(declare-fun m!1463579 () Bool)

(assert (=> d!369372 m!1463579))

(declare-fun m!1463581 () Bool)

(assert (=> b!1311230 m!1463581))

(assert (=> d!368976 d!369372))

(declare-fun d!369376 () Bool)

(assert (=> d!369376 (= (list!4987 (_1!7333 (lex!829 thiss!19762 rules!2550 (print!768 thiss!19762 (singletonSeq!872 t2!34))))) (list!4991 (c!214936 (_1!7333 (lex!829 thiss!19762 rules!2550 (print!768 thiss!19762 (singletonSeq!872 t2!34)))))))))

(declare-fun bs!329907 () Bool)

(assert (= bs!329907 d!369376))

(declare-fun m!1463583 () Bool)

(assert (=> bs!329907 m!1463583))

(assert (=> d!368804 d!369376))

(declare-fun d!369378 () Bool)

(declare-fun lt!432037 () Int)

(assert (=> d!369378 (= lt!432037 (size!10796 (list!4987 (_1!7333 lt!431500))))))

(declare-fun size!10805 (Conc!4369) Int)

(assert (=> d!369378 (= lt!432037 (size!10805 (c!214936 (_1!7333 lt!431500))))))

(assert (=> d!369378 (= (size!10798 (_1!7333 lt!431500)) lt!432037)))

(declare-fun bs!329908 () Bool)

(assert (= bs!329908 d!369378))

(assert (=> bs!329908 m!1463075))

(assert (=> bs!329908 m!1463075))

(declare-fun m!1463585 () Bool)

(assert (=> bs!329908 m!1463585))

(declare-fun m!1463587 () Bool)

(assert (=> bs!329908 m!1463587))

(assert (=> d!368804 d!369378))

(assert (=> d!368804 d!368990))

(assert (=> d!368804 d!368992))

(assert (=> d!368804 d!368946))

(declare-fun b!1311235 () Bool)

(declare-fun res!588695 () Bool)

(declare-fun e!840824 () Bool)

(assert (=> b!1311235 (=> (not res!588695) (not e!840824))))

(declare-fun lt!432039 () tuple2!12894)

(assert (=> b!1311235 (= res!588695 (= (list!4987 (_1!7333 lt!432039)) (_1!7331 (lexList!532 thiss!19762 rules!2550 (list!4986 (print!768 thiss!19762 (singletonSeq!872 t2!34)))))))))

(declare-fun e!840825 () Bool)

(declare-fun b!1311236 () Bool)

(assert (=> b!1311236 (= e!840825 (= (_2!7333 lt!432039) (print!768 thiss!19762 (singletonSeq!872 t2!34))))))

(declare-fun b!1311237 () Bool)

(assert (=> b!1311237 (= e!840824 (= (list!4986 (_2!7333 lt!432039)) (_2!7331 (lexList!532 thiss!19762 rules!2550 (list!4986 (print!768 thiss!19762 (singletonSeq!872 t2!34)))))))))

(declare-fun d!369380 () Bool)

(assert (=> d!369380 e!840824))

(declare-fun res!588696 () Bool)

(assert (=> d!369380 (=> (not res!588696) (not e!840824))))

(assert (=> d!369380 (= res!588696 e!840825)))

(declare-fun c!215210 () Bool)

(assert (=> d!369380 (= c!215210 (> (size!10798 (_1!7333 lt!432039)) 0))))

(assert (=> d!369380 (= lt!432039 (lexTailRecV2!359 thiss!19762 rules!2550 (print!768 thiss!19762 (singletonSeq!872 t2!34)) (BalanceConc!8677 Empty!4368) (print!768 thiss!19762 (singletonSeq!872 t2!34)) (BalanceConc!8679 Empty!4369)))))

(assert (=> d!369380 (= (lex!829 thiss!19762 rules!2550 (print!768 thiss!19762 (singletonSeq!872 t2!34))) lt!432039)))

(declare-fun b!1311238 () Bool)

(declare-fun e!840826 () Bool)

(assert (=> b!1311238 (= e!840826 (not (isEmpty!7863 (_1!7333 lt!432039))))))

(declare-fun b!1311239 () Bool)

(assert (=> b!1311239 (= e!840825 e!840826)))

(declare-fun res!588697 () Bool)

(assert (=> b!1311239 (= res!588697 (< (size!10791 (_2!7333 lt!432039)) (size!10791 (print!768 thiss!19762 (singletonSeq!872 t2!34)))))))

(assert (=> b!1311239 (=> (not res!588697) (not e!840826))))

(assert (= (and d!369380 c!215210) b!1311239))

(assert (= (and d!369380 (not c!215210)) b!1311236))

(assert (= (and b!1311239 res!588697) b!1311238))

(assert (= (and d!369380 res!588696) b!1311235))

(assert (= (and b!1311235 res!588695) b!1311237))

(declare-fun m!1463589 () Bool)

(assert (=> b!1311239 m!1463589))

(assert (=> b!1311239 m!1461571))

(declare-fun m!1463593 () Bool)

(assert (=> b!1311239 m!1463593))

(declare-fun m!1463595 () Bool)

(assert (=> d!369380 m!1463595))

(assert (=> d!369380 m!1461571))

(assert (=> d!369380 m!1461571))

(declare-fun m!1463601 () Bool)

(assert (=> d!369380 m!1463601))

(declare-fun m!1463603 () Bool)

(assert (=> b!1311237 m!1463603))

(assert (=> b!1311237 m!1461571))

(declare-fun m!1463605 () Bool)

(assert (=> b!1311237 m!1463605))

(assert (=> b!1311237 m!1463605))

(declare-fun m!1463607 () Bool)

(assert (=> b!1311237 m!1463607))

(declare-fun m!1463609 () Bool)

(assert (=> b!1311238 m!1463609))

(declare-fun m!1463611 () Bool)

(assert (=> b!1311235 m!1463611))

(assert (=> b!1311235 m!1461571))

(assert (=> b!1311235 m!1463605))

(assert (=> b!1311235 m!1463605))

(assert (=> b!1311235 m!1463607))

(assert (=> d!368804 d!369380))

(declare-fun d!369384 () Bool)

(assert (=> d!369384 (= (list!4987 (singletonSeq!872 t2!34)) (list!4991 (c!214936 (singletonSeq!872 t2!34))))))

(declare-fun bs!329914 () Bool)

(assert (= bs!329914 d!369384))

(declare-fun m!1463613 () Bool)

(assert (=> bs!329914 m!1463613))

(assert (=> d!368804 d!369384))

(declare-fun d!369386 () Bool)

(assert (=> d!369386 (= (list!4986 lt!431576) (list!4990 (c!214934 lt!431576)))))

(declare-fun bs!329915 () Bool)

(assert (= bs!329915 d!369386))

(declare-fun m!1463615 () Bool)

(assert (=> bs!329915 m!1463615))

(assert (=> d!368884 d!369386))

(declare-fun d!369388 () Bool)

(assert (=> d!369388 true))

(declare-fun lambda!53030 () Int)

(declare-fun order!7993 () Int)

(declare-fun dynLambda!5778 (Int Int) Int)

(assert (=> d!369388 (< (dynLambda!5777 order!7991 (toValue!3518 (transformation!2299 (rule!4038 t1!34)))) (dynLambda!5778 order!7993 lambda!53030))))

(declare-fun Forall2!417 (Int) Bool)

(assert (=> d!369388 (= (equivClasses!821 (toChars!3377 (transformation!2299 (rule!4038 t1!34))) (toValue!3518 (transformation!2299 (rule!4038 t1!34)))) (Forall2!417 lambda!53030))))

(declare-fun bs!329916 () Bool)

(assert (= bs!329916 d!369388))

(declare-fun m!1463617 () Bool)

(assert (=> bs!329916 m!1463617))

(assert (=> b!1310387 d!369388))

(declare-fun lt!432042 () List!13349)

(declare-fun e!840836 () Bool)

(declare-fun b!1311257 () Bool)

(assert (=> b!1311257 (= e!840836 (or (not (= (getSuffix!469 lt!431412 lt!431414) Nil!13283)) (= lt!432042 (t!118008 lt!431414))))))

(declare-fun b!1311256 () Bool)

(declare-fun res!588702 () Bool)

(assert (=> b!1311256 (=> (not res!588702) (not e!840836))))

(assert (=> b!1311256 (= res!588702 (= (size!10797 lt!432042) (+ (size!10797 (t!118008 lt!431414)) (size!10797 (getSuffix!469 lt!431412 lt!431414)))))))

(declare-fun b!1311254 () Bool)

(declare-fun e!840835 () List!13349)

(assert (=> b!1311254 (= e!840835 (getSuffix!469 lt!431412 lt!431414))))

(declare-fun d!369390 () Bool)

(assert (=> d!369390 e!840836))

(declare-fun res!588703 () Bool)

(assert (=> d!369390 (=> (not res!588703) (not e!840836))))

(assert (=> d!369390 (= res!588703 (= (content!1858 lt!432042) ((_ map or) (content!1858 (t!118008 lt!431414)) (content!1858 (getSuffix!469 lt!431412 lt!431414)))))))

(assert (=> d!369390 (= lt!432042 e!840835)))

(declare-fun c!215215 () Bool)

(assert (=> d!369390 (= c!215215 ((_ is Nil!13283) (t!118008 lt!431414)))))

(assert (=> d!369390 (= (++!3378 (t!118008 lt!431414) (getSuffix!469 lt!431412 lt!431414)) lt!432042)))

(declare-fun b!1311255 () Bool)

(assert (=> b!1311255 (= e!840835 (Cons!13283 (h!18684 (t!118008 lt!431414)) (++!3378 (t!118008 (t!118008 lt!431414)) (getSuffix!469 lt!431412 lt!431414))))))

(assert (= (and d!369390 c!215215) b!1311254))

(assert (= (and d!369390 (not c!215215)) b!1311255))

(assert (= (and d!369390 res!588703) b!1311256))

(assert (= (and b!1311256 res!588702) b!1311257))

(declare-fun m!1463619 () Bool)

(assert (=> b!1311256 m!1463619))

(assert (=> b!1311256 m!1462967))

(assert (=> b!1311256 m!1461559))

(assert (=> b!1311256 m!1462295))

(declare-fun m!1463621 () Bool)

(assert (=> d!369390 m!1463621))

(assert (=> d!369390 m!1462645))

(assert (=> d!369390 m!1461559))

(assert (=> d!369390 m!1462299))

(assert (=> b!1311255 m!1461559))

(declare-fun m!1463623 () Bool)

(assert (=> b!1311255 m!1463623))

(assert (=> b!1310486 d!369390))

(declare-fun d!369392 () Bool)

(assert (=> d!369392 (= (list!4986 lt!431655) (list!4990 (c!214934 lt!431655)))))

(declare-fun bs!329917 () Bool)

(assert (= bs!329917 d!369392))

(declare-fun m!1463625 () Bool)

(assert (=> bs!329917 m!1463625))

(assert (=> d!368990 d!369392))

(declare-fun d!369394 () Bool)

(declare-fun c!215220 () Bool)

(assert (=> d!369394 (= c!215220 ((_ is Cons!13284) (list!4987 (singletonSeq!872 t2!34))))))

(declare-fun e!840843 () List!13349)

(assert (=> d!369394 (= (printList!554 thiss!19762 (list!4987 (singletonSeq!872 t2!34))) e!840843)))

(declare-fun b!1311268 () Bool)

(assert (=> b!1311268 (= e!840843 (++!3378 (list!4986 (charsOf!1271 (h!18685 (list!4987 (singletonSeq!872 t2!34))))) (printList!554 thiss!19762 (t!118009 (list!4987 (singletonSeq!872 t2!34))))))))

(declare-fun b!1311269 () Bool)

(assert (=> b!1311269 (= e!840843 Nil!13283)))

(assert (= (and d!369394 c!215220) b!1311268))

(assert (= (and d!369394 (not c!215220)) b!1311269))

(declare-fun m!1463627 () Bool)

(assert (=> b!1311268 m!1463627))

(assert (=> b!1311268 m!1463627))

(declare-fun m!1463629 () Bool)

(assert (=> b!1311268 m!1463629))

(declare-fun m!1463631 () Bool)

(assert (=> b!1311268 m!1463631))

(assert (=> b!1311268 m!1463629))

(assert (=> b!1311268 m!1463631))

(declare-fun m!1463633 () Bool)

(assert (=> b!1311268 m!1463633))

(assert (=> d!368990 d!369394))

(assert (=> d!368990 d!369384))

(declare-fun d!369396 () Bool)

(declare-fun lt!432046 () BalanceConc!8676)

(assert (=> d!369396 (= (list!4986 lt!432046) (printListTailRec!231 thiss!19762 (dropList!364 (singletonSeq!872 t2!34) 0) (list!4986 (BalanceConc!8677 Empty!4368))))))

(declare-fun e!840845 () BalanceConc!8676)

(assert (=> d!369396 (= lt!432046 e!840845)))

(declare-fun c!215221 () Bool)

(assert (=> d!369396 (= c!215221 (>= 0 (size!10798 (singletonSeq!872 t2!34))))))

(declare-fun e!840844 () Bool)

(assert (=> d!369396 e!840844))

(declare-fun res!588706 () Bool)

(assert (=> d!369396 (=> (not res!588706) (not e!840844))))

(assert (=> d!369396 (= res!588706 (>= 0 0))))

(assert (=> d!369396 (= (printTailRec!536 thiss!19762 (singletonSeq!872 t2!34) 0 (BalanceConc!8677 Empty!4368)) lt!432046)))

(declare-fun b!1311270 () Bool)

(assert (=> b!1311270 (= e!840844 (<= 0 (size!10798 (singletonSeq!872 t2!34))))))

(declare-fun b!1311271 () Bool)

(assert (=> b!1311271 (= e!840845 (BalanceConc!8677 Empty!4368))))

(declare-fun b!1311272 () Bool)

(assert (=> b!1311272 (= e!840845 (printTailRec!536 thiss!19762 (singletonSeq!872 t2!34) (+ 0 1) (++!3380 (BalanceConc!8677 Empty!4368) (charsOf!1271 (apply!2989 (singletonSeq!872 t2!34) 0)))))))

(declare-fun lt!432048 () List!13350)

(assert (=> b!1311272 (= lt!432048 (list!4987 (singletonSeq!872 t2!34)))))

(declare-fun lt!432044 () Unit!19338)

(assert (=> b!1311272 (= lt!432044 (lemmaDropApply!422 lt!432048 0))))

(assert (=> b!1311272 (= (head!2258 (drop!661 lt!432048 0)) (apply!2998 lt!432048 0))))

(declare-fun lt!432043 () Unit!19338)

(assert (=> b!1311272 (= lt!432043 lt!432044)))

(declare-fun lt!432045 () List!13350)

(assert (=> b!1311272 (= lt!432045 (list!4987 (singletonSeq!872 t2!34)))))

(declare-fun lt!432049 () Unit!19338)

(assert (=> b!1311272 (= lt!432049 (lemmaDropTail!402 lt!432045 0))))

(assert (=> b!1311272 (= (tail!1876 (drop!661 lt!432045 0)) (drop!661 lt!432045 (+ 0 1)))))

(declare-fun lt!432047 () Unit!19338)

(assert (=> b!1311272 (= lt!432047 lt!432049)))

(assert (= (and d!369396 res!588706) b!1311270))

(assert (= (and d!369396 c!215221) b!1311271))

(assert (= (and d!369396 (not c!215221)) b!1311272))

(assert (=> d!369396 m!1461569))

(declare-fun m!1463635 () Bool)

(assert (=> d!369396 m!1463635))

(declare-fun m!1463637 () Bool)

(assert (=> d!369396 m!1463637))

(assert (=> d!369396 m!1461569))

(declare-fun m!1463639 () Bool)

(assert (=> d!369396 m!1463639))

(assert (=> d!369396 m!1462927))

(assert (=> d!369396 m!1463639))

(assert (=> d!369396 m!1462927))

(declare-fun m!1463641 () Bool)

(assert (=> d!369396 m!1463641))

(assert (=> b!1311270 m!1461569))

(assert (=> b!1311270 m!1463635))

(declare-fun m!1463643 () Bool)

(assert (=> b!1311272 m!1463643))

(declare-fun m!1463645 () Bool)

(assert (=> b!1311272 m!1463645))

(declare-fun m!1463647 () Bool)

(assert (=> b!1311272 m!1463647))

(declare-fun m!1463649 () Bool)

(assert (=> b!1311272 m!1463649))

(declare-fun m!1463651 () Bool)

(assert (=> b!1311272 m!1463651))

(declare-fun m!1463653 () Bool)

(assert (=> b!1311272 m!1463653))

(declare-fun m!1463655 () Bool)

(assert (=> b!1311272 m!1463655))

(declare-fun m!1463657 () Bool)

(assert (=> b!1311272 m!1463657))

(assert (=> b!1311272 m!1461569))

(declare-fun m!1463659 () Bool)

(assert (=> b!1311272 m!1463659))

(declare-fun m!1463661 () Bool)

(assert (=> b!1311272 m!1463661))

(declare-fun m!1463663 () Bool)

(assert (=> b!1311272 m!1463663))

(assert (=> b!1311272 m!1461569))

(assert (=> b!1311272 m!1461865))

(assert (=> b!1311272 m!1463651))

(assert (=> b!1311272 m!1463647))

(assert (=> b!1311272 m!1463645))

(assert (=> b!1311272 m!1463659))

(assert (=> b!1311272 m!1461569))

(assert (=> b!1311272 m!1463643))

(declare-fun m!1463665 () Bool)

(assert (=> b!1311272 m!1463665))

(assert (=> d!368990 d!369396))

(declare-fun d!369398 () Bool)

(declare-fun lt!432050 () Bool)

(assert (=> d!369398 (= lt!432050 (select (content!1858 (t!118008 lt!431414)) lt!431418))))

(declare-fun e!840847 () Bool)

(assert (=> d!369398 (= lt!432050 e!840847)))

(declare-fun res!588708 () Bool)

(assert (=> d!369398 (=> (not res!588708) (not e!840847))))

(assert (=> d!369398 (= res!588708 ((_ is Cons!13283) (t!118008 lt!431414)))))

(assert (=> d!369398 (= (contains!2308 (t!118008 lt!431414) lt!431418) lt!432050)))

(declare-fun b!1311273 () Bool)

(declare-fun e!840846 () Bool)

(assert (=> b!1311273 (= e!840847 e!840846)))

(declare-fun res!588707 () Bool)

(assert (=> b!1311273 (=> res!588707 e!840846)))

(assert (=> b!1311273 (= res!588707 (= (h!18684 (t!118008 lt!431414)) lt!431418))))

(declare-fun b!1311274 () Bool)

(assert (=> b!1311274 (= e!840846 (contains!2308 (t!118008 (t!118008 lt!431414)) lt!431418))))

(assert (= (and d!369398 res!588708) b!1311273))

(assert (= (and b!1311273 (not res!588707)) b!1311274))

(assert (=> d!369398 m!1462645))

(declare-fun m!1463667 () Bool)

(assert (=> d!369398 m!1463667))

(declare-fun m!1463669 () Bool)

(assert (=> b!1311274 m!1463669))

(assert (=> b!1310345 d!369398))

(declare-fun d!369400 () Bool)

(assert (=> d!369400 (= (isEmpty!7861 (tail!1874 lt!431412)) ((_ is Nil!13283) (tail!1874 lt!431412)))))

(assert (=> b!1310475 d!369400))

(declare-fun d!369402 () Bool)

(assert (=> d!369402 (= (tail!1874 lt!431412) (t!118008 lt!431412))))

(assert (=> b!1310475 d!369402))

(declare-fun bs!329923 () Bool)

(declare-fun d!369404 () Bool)

(assert (= bs!329923 (and d!369404 d!369388)))

(declare-fun lambda!53034 () Int)

(assert (=> bs!329923 (= (= (toValue!3518 (transformation!2299 (h!18686 rules!2550))) (toValue!3518 (transformation!2299 (rule!4038 t1!34)))) (= lambda!53034 lambda!53030))))

(assert (=> d!369404 true))

(assert (=> d!369404 (< (dynLambda!5777 order!7991 (toValue!3518 (transformation!2299 (h!18686 rules!2550)))) (dynLambda!5778 order!7993 lambda!53034))))

(assert (=> d!369404 (= (equivClasses!821 (toChars!3377 (transformation!2299 (h!18686 rules!2550))) (toValue!3518 (transformation!2299 (h!18686 rules!2550)))) (Forall2!417 lambda!53034))))

(declare-fun bs!329924 () Bool)

(assert (= bs!329924 d!369404))

(declare-fun m!1463671 () Bool)

(assert (=> bs!329924 m!1463671))

(assert (=> b!1310315 d!369404))

(declare-fun d!369406 () Bool)

(declare-fun lt!432052 () Int)

(assert (=> d!369406 (>= lt!432052 0)))

(declare-fun e!840854 () Int)

(assert (=> d!369406 (= lt!432052 e!840854)))

(declare-fun c!215226 () Bool)

(assert (=> d!369406 (= c!215226 ((_ is Nil!13283) (_2!7331 lt!431455)))))

(assert (=> d!369406 (= (size!10797 (_2!7331 lt!431455)) lt!432052)))

(declare-fun b!1311285 () Bool)

(assert (=> b!1311285 (= e!840854 0)))

(declare-fun b!1311286 () Bool)

(assert (=> b!1311286 (= e!840854 (+ 1 (size!10797 (t!118008 (_2!7331 lt!431455)))))))

(assert (= (and d!369406 c!215226) b!1311285))

(assert (= (and d!369406 (not c!215226)) b!1311286))

(declare-fun m!1463677 () Bool)

(assert (=> b!1311286 m!1463677))

(assert (=> b!1310069 d!369406))

(declare-fun d!369408 () Bool)

(declare-fun lt!432053 () Int)

(assert (=> d!369408 (>= lt!432053 0)))

(declare-fun e!840855 () Int)

(assert (=> d!369408 (= lt!432053 e!840855)))

(declare-fun c!215227 () Bool)

(assert (=> d!369408 (= c!215227 ((_ is Nil!13283) (list!4986 lt!431415)))))

(assert (=> d!369408 (= (size!10797 (list!4986 lt!431415)) lt!432053)))

(declare-fun b!1311287 () Bool)

(assert (=> b!1311287 (= e!840855 0)))

(declare-fun b!1311288 () Bool)

(assert (=> b!1311288 (= e!840855 (+ 1 (size!10797 (t!118008 (list!4986 lt!431415)))))))

(assert (= (and d!369408 c!215227) b!1311287))

(assert (= (and d!369408 (not c!215227)) b!1311288))

(declare-fun m!1463691 () Bool)

(assert (=> b!1311288 m!1463691))

(assert (=> b!1310069 d!369408))

(declare-fun d!369410 () Bool)

(declare-fun lt!432058 () Int)

(assert (=> d!369410 (>= lt!432058 0)))

(declare-fun e!840861 () Int)

(assert (=> d!369410 (= lt!432058 e!840861)))

(declare-fun c!215231 () Bool)

(assert (=> d!369410 (= c!215231 ((_ is Nil!13286) lt!431507))))

(assert (=> d!369410 (= (size!10799 lt!431507) lt!432058)))

(declare-fun b!1311297 () Bool)

(assert (=> b!1311297 (= e!840861 0)))

(declare-fun b!1311298 () Bool)

(assert (=> b!1311298 (= e!840861 (+ 1 (size!10799 (t!118011 lt!431507))))))

(assert (= (and d!369410 c!215231) b!1311297))

(assert (= (and d!369410 (not c!215231)) b!1311298))

(declare-fun m!1463709 () Bool)

(assert (=> b!1311298 m!1463709))

(assert (=> d!368810 d!369410))

(declare-fun d!369420 () Bool)

(declare-fun lt!432069 () Int)

(assert (=> d!369420 (>= lt!432069 0)))

(declare-fun e!840870 () Int)

(assert (=> d!369420 (= lt!432069 e!840870)))

(declare-fun c!215238 () Bool)

(assert (=> d!369420 (= c!215238 ((_ is Nil!13285) rules!2550))))

(assert (=> d!369420 (= (size!10800 rules!2550) lt!432069)))

(declare-fun b!1311318 () Bool)

(assert (=> b!1311318 (= e!840870 0)))

(declare-fun b!1311319 () Bool)

(assert (=> b!1311319 (= e!840870 (+ 1 (size!10800 (t!118010 rules!2550))))))

(assert (= (and d!369420 c!215238) b!1311318))

(assert (= (and d!369420 (not c!215238)) b!1311319))

(declare-fun m!1463713 () Bool)

(assert (=> b!1311319 m!1463713))

(assert (=> d!368810 d!369420))

(declare-fun d!369424 () Bool)

(declare-fun lt!432070 () Int)

(assert (=> d!369424 (>= lt!432070 0)))

(declare-fun e!840871 () Int)

(assert (=> d!369424 (= lt!432070 e!840871)))

(declare-fun c!215239 () Bool)

(assert (=> d!369424 (= c!215239 ((_ is Nil!13284) (_1!7331 lt!431652)))))

(assert (=> d!369424 (= (size!10796 (_1!7331 lt!431652)) lt!432070)))

(declare-fun b!1311320 () Bool)

(assert (=> b!1311320 (= e!840871 0)))

(declare-fun b!1311321 () Bool)

(assert (=> b!1311321 (= e!840871 (+ 1 (size!10796 (t!118009 (_1!7331 lt!431652)))))))

(assert (= (and d!369424 c!215239) b!1311320))

(assert (= (and d!369424 (not c!215239)) b!1311321))

(declare-fun m!1463715 () Bool)

(assert (=> b!1311321 m!1463715))

(assert (=> d!368980 d!369424))

(declare-fun b!1311322 () Bool)

(declare-fun e!840873 () Bool)

(declare-fun lt!432071 () Option!2564)

(assert (=> b!1311322 (= e!840873 (contains!2309 rules!2550 (rule!4038 (_1!7332 (get!4246 lt!432071)))))))

(declare-fun b!1311323 () Bool)

(declare-fun res!588723 () Bool)

(assert (=> b!1311323 (=> (not res!588723) (not e!840873))))

(assert (=> b!1311323 (= res!588723 (< (size!10797 (_2!7332 (get!4246 lt!432071))) (size!10797 (list!4986 lt!431409))))))

(declare-fun b!1311325 () Bool)

(declare-fun res!588722 () Bool)

(assert (=> b!1311325 (=> (not res!588722) (not e!840873))))

(assert (=> b!1311325 (= res!588722 (= (++!3378 (list!4986 (charsOf!1271 (_1!7332 (get!4246 lt!432071)))) (_2!7332 (get!4246 lt!432071))) (list!4986 lt!431409)))))

(declare-fun bm!89282 () Bool)

(declare-fun call!89287 () Option!2564)

(assert (=> bm!89282 (= call!89287 (maxPrefixOneRule!573 thiss!19762 (h!18686 rules!2550) (list!4986 lt!431409)))))

(declare-fun b!1311326 () Bool)

(declare-fun res!588726 () Bool)

(assert (=> b!1311326 (=> (not res!588726) (not e!840873))))

(assert (=> b!1311326 (= res!588726 (matchR!1615 (regex!2299 (rule!4038 (_1!7332 (get!4246 lt!432071)))) (list!4986 (charsOf!1271 (_1!7332 (get!4246 lt!432071))))))))

(declare-fun b!1311327 () Bool)

(declare-fun e!840872 () Option!2564)

(declare-fun lt!432073 () Option!2564)

(declare-fun lt!432075 () Option!2564)

(assert (=> b!1311327 (= e!840872 (ite (and ((_ is None!2563) lt!432073) ((_ is None!2563) lt!432075)) None!2563 (ite ((_ is None!2563) lt!432075) lt!432073 (ite ((_ is None!2563) lt!432073) lt!432075 (ite (>= (size!10790 (_1!7332 (v!21077 lt!432073))) (size!10790 (_1!7332 (v!21077 lt!432075)))) lt!432073 lt!432075)))))))

(assert (=> b!1311327 (= lt!432073 call!89287)))

(assert (=> b!1311327 (= lt!432075 (maxPrefix!1004 thiss!19762 (t!118010 rules!2550) (list!4986 lt!431409)))))

(declare-fun b!1311328 () Bool)

(declare-fun res!588724 () Bool)

(assert (=> b!1311328 (=> (not res!588724) (not e!840873))))

(assert (=> b!1311328 (= res!588724 (= (list!4986 (charsOf!1271 (_1!7332 (get!4246 lt!432071)))) (originalCharacters!3161 (_1!7332 (get!4246 lt!432071)))))))

(declare-fun b!1311329 () Bool)

(assert (=> b!1311329 (= e!840872 call!89287)))

(declare-fun b!1311330 () Bool)

(declare-fun e!840874 () Bool)

(assert (=> b!1311330 (= e!840874 e!840873)))

(declare-fun res!588720 () Bool)

(assert (=> b!1311330 (=> (not res!588720) (not e!840873))))

(assert (=> b!1311330 (= res!588720 (isDefined!2171 lt!432071))))

(declare-fun b!1311324 () Bool)

(declare-fun res!588721 () Bool)

(assert (=> b!1311324 (=> (not res!588721) (not e!840873))))

(assert (=> b!1311324 (= res!588721 (= (value!75154 (_1!7332 (get!4246 lt!432071))) (apply!2990 (transformation!2299 (rule!4038 (_1!7332 (get!4246 lt!432071)))) (seqFromList!1591 (originalCharacters!3161 (_1!7332 (get!4246 lt!432071)))))))))

(declare-fun d!369426 () Bool)

(assert (=> d!369426 e!840874))

(declare-fun res!588725 () Bool)

(assert (=> d!369426 (=> res!588725 e!840874)))

(assert (=> d!369426 (= res!588725 (isEmpty!7860 lt!432071))))

(assert (=> d!369426 (= lt!432071 e!840872)))

(declare-fun c!215240 () Bool)

(assert (=> d!369426 (= c!215240 (and ((_ is Cons!13285) rules!2550) ((_ is Nil!13285) (t!118010 rules!2550))))))

(declare-fun lt!432072 () Unit!19338)

(declare-fun lt!432074 () Unit!19338)

(assert (=> d!369426 (= lt!432072 lt!432074)))

(assert (=> d!369426 (isPrefix!1068 (list!4986 lt!431409) (list!4986 lt!431409))))

(assert (=> d!369426 (= lt!432074 (lemmaIsPrefixRefl!747 (list!4986 lt!431409) (list!4986 lt!431409)))))

(assert (=> d!369426 (rulesValidInductive!720 thiss!19762 rules!2550)))

(assert (=> d!369426 (= (maxPrefix!1004 thiss!19762 rules!2550 (list!4986 lt!431409)) lt!432071)))

(assert (= (and d!369426 c!215240) b!1311329))

(assert (= (and d!369426 (not c!215240)) b!1311327))

(assert (= (or b!1311329 b!1311327) bm!89282))

(assert (= (and d!369426 (not res!588725)) b!1311330))

(assert (= (and b!1311330 res!588720) b!1311328))

(assert (= (and b!1311328 res!588724) b!1311323))

(assert (= (and b!1311323 res!588723) b!1311325))

(assert (= (and b!1311325 res!588722) b!1311324))

(assert (= (and b!1311324 res!588721) b!1311326))

(assert (= (and b!1311326 res!588726) b!1311322))

(assert (=> b!1311327 m!1461623))

(declare-fun m!1463745 () Bool)

(assert (=> b!1311327 m!1463745))

(declare-fun m!1463749 () Bool)

(assert (=> b!1311322 m!1463749))

(declare-fun m!1463751 () Bool)

(assert (=> b!1311322 m!1463751))

(assert (=> b!1311326 m!1463749))

(declare-fun m!1463753 () Bool)

(assert (=> b!1311326 m!1463753))

(assert (=> b!1311326 m!1463753))

(declare-fun m!1463755 () Bool)

(assert (=> b!1311326 m!1463755))

(assert (=> b!1311326 m!1463755))

(declare-fun m!1463757 () Bool)

(assert (=> b!1311326 m!1463757))

(assert (=> b!1311323 m!1463749))

(declare-fun m!1463759 () Bool)

(assert (=> b!1311323 m!1463759))

(assert (=> b!1311323 m!1461623))

(assert (=> b!1311323 m!1462445))

(assert (=> b!1311324 m!1463749))

(declare-fun m!1463761 () Bool)

(assert (=> b!1311324 m!1463761))

(assert (=> b!1311324 m!1463761))

(declare-fun m!1463763 () Bool)

(assert (=> b!1311324 m!1463763))

(assert (=> b!1311328 m!1463749))

(assert (=> b!1311328 m!1463753))

(assert (=> b!1311328 m!1463753))

(assert (=> b!1311328 m!1463755))

(declare-fun m!1463765 () Bool)

(assert (=> b!1311330 m!1463765))

(assert (=> bm!89282 m!1461623))

(declare-fun m!1463767 () Bool)

(assert (=> bm!89282 m!1463767))

(declare-fun m!1463769 () Bool)

(assert (=> d!369426 m!1463769))

(assert (=> d!369426 m!1461623))

(assert (=> d!369426 m!1461623))

(declare-fun m!1463771 () Bool)

(assert (=> d!369426 m!1463771))

(assert (=> d!369426 m!1461623))

(assert (=> d!369426 m!1461623))

(declare-fun m!1463773 () Bool)

(assert (=> d!369426 m!1463773))

(assert (=> d!369426 m!1462067))

(assert (=> b!1311325 m!1463749))

(assert (=> b!1311325 m!1463753))

(assert (=> b!1311325 m!1463753))

(assert (=> b!1311325 m!1463755))

(assert (=> b!1311325 m!1463755))

(declare-fun m!1463775 () Bool)

(assert (=> b!1311325 m!1463775))

(assert (=> d!368980 d!369426))

(declare-fun d!369432 () Bool)

(assert (=> d!369432 (= (list!4986 lt!431662) (list!4990 (c!214934 lt!431662)))))

(declare-fun bs!329925 () Bool)

(assert (= bs!329925 d!369432))

(declare-fun m!1463777 () Bool)

(assert (=> bs!329925 m!1463777))

(assert (=> d!369006 d!369432))

(assert (=> d!368872 d!369200))

(declare-fun d!369434 () Bool)

(declare-fun c!215244 () Bool)

(assert (=> d!369434 (= c!215244 ((_ is Nil!13283) lt!431613))))

(declare-fun e!840882 () (InoxSet C!7516))

(assert (=> d!369434 (= (content!1858 lt!431613) e!840882)))

(declare-fun b!1311345 () Bool)

(assert (=> b!1311345 (= e!840882 ((as const (Array C!7516 Bool)) false))))

(declare-fun b!1311346 () Bool)

(assert (=> b!1311346 (= e!840882 ((_ map or) (store ((as const (Array C!7516 Bool)) false) (h!18684 lt!431613) true) (content!1858 (t!118008 lt!431613))))))

(assert (= (and d!369434 c!215244) b!1311345))

(assert (= (and d!369434 (not c!215244)) b!1311346))

(declare-fun m!1463779 () Bool)

(assert (=> b!1311346 m!1463779))

(declare-fun m!1463781 () Bool)

(assert (=> b!1311346 m!1463781))

(assert (=> d!368924 d!369434))

(assert (=> d!368924 d!369074))

(declare-fun d!369436 () Bool)

(declare-fun c!215245 () Bool)

(assert (=> d!369436 (= c!215245 ((_ is Nil!13283) (getSuffix!469 lt!431412 lt!431414)))))

(declare-fun e!840883 () (InoxSet C!7516))

(assert (=> d!369436 (= (content!1858 (getSuffix!469 lt!431412 lt!431414)) e!840883)))

(declare-fun b!1311347 () Bool)

(assert (=> b!1311347 (= e!840883 ((as const (Array C!7516 Bool)) false))))

(declare-fun b!1311348 () Bool)

(assert (=> b!1311348 (= e!840883 ((_ map or) (store ((as const (Array C!7516 Bool)) false) (h!18684 (getSuffix!469 lt!431412 lt!431414)) true) (content!1858 (t!118008 (getSuffix!469 lt!431412 lt!431414)))))))

(assert (= (and d!369436 c!215245) b!1311347))

(assert (= (and d!369436 (not c!215245)) b!1311348))

(declare-fun m!1463787 () Bool)

(assert (=> b!1311348 m!1463787))

(declare-fun m!1463791 () Bool)

(assert (=> b!1311348 m!1463791))

(assert (=> d!368924 d!369436))

(declare-fun d!369438 () Bool)

(declare-fun lt!432077 () Int)

(assert (=> d!369438 (= lt!432077 (size!10796 (list!4987 (_1!7333 lt!431654))))))

(assert (=> d!369438 (= lt!432077 (size!10805 (c!214936 (_1!7333 lt!431654))))))

(assert (=> d!369438 (= (size!10798 (_1!7333 lt!431654)) lt!432077)))

(declare-fun bs!329926 () Bool)

(assert (= bs!329926 d!369438))

(assert (=> bs!329926 m!1462473))

(assert (=> bs!329926 m!1462473))

(declare-fun m!1463793 () Bool)

(assert (=> bs!329926 m!1463793))

(declare-fun m!1463795 () Bool)

(assert (=> bs!329926 m!1463795))

(assert (=> d!368988 d!369438))

(declare-datatypes ((tuple2!12900 0))(
  ( (tuple2!12901 (_1!7336 Token!4260) (_2!7336 BalanceConc!8676)) )
))
(declare-datatypes ((Option!2566 0))(
  ( (None!2565) (Some!2565 (v!21092 tuple2!12900)) )
))
(declare-fun lt!432247 () Option!2566)

(declare-fun b!1311637 () Bool)

(declare-fun lt!432279 () tuple2!12894)

(declare-fun lexRec!261 (LexerInterface!1994 List!13351 BalanceConc!8676) tuple2!12894)

(assert (=> b!1311637 (= lt!432279 (lexRec!261 thiss!19762 rules!2550 (_2!7336 (v!21092 lt!432247))))))

(declare-fun e!841041 () tuple2!12894)

(declare-fun prepend!346 (BalanceConc!8678 Token!4260) BalanceConc!8678)

(assert (=> b!1311637 (= e!841041 (tuple2!12895 (prepend!346 (_1!7333 lt!432279) (_1!7336 (v!21092 lt!432247))) (_2!7333 lt!432279)))))

(declare-fun e!841042 () tuple2!12894)

(declare-fun lt!432252 () Option!2566)

(declare-fun lt!432262 () BalanceConc!8676)

(declare-fun b!1311638 () Bool)

(declare-fun append!382 (BalanceConc!8678 Token!4260) BalanceConc!8678)

(assert (=> b!1311638 (= e!841042 (lexTailRecV2!359 thiss!19762 rules!2550 lt!431409 lt!432262 (_2!7336 (v!21092 lt!432252)) (append!382 (BalanceConc!8679 Empty!4369) (_1!7336 (v!21092 lt!432252)))))))

(declare-fun lt!432255 () tuple2!12894)

(assert (=> b!1311638 (= lt!432255 (lexRec!261 thiss!19762 rules!2550 (_2!7336 (v!21092 lt!432252))))))

(declare-fun lt!432270 () List!13349)

(assert (=> b!1311638 (= lt!432270 (list!4986 (BalanceConc!8677 Empty!4368)))))

(declare-fun lt!432249 () List!13349)

(assert (=> b!1311638 (= lt!432249 (list!4986 (charsOf!1271 (_1!7336 (v!21092 lt!432252)))))))

(declare-fun lt!432254 () List!13349)

(assert (=> b!1311638 (= lt!432254 (list!4986 (_2!7336 (v!21092 lt!432252))))))

(declare-fun lt!432250 () Unit!19338)

(declare-fun lemmaConcatAssociativity!821 (List!13349 List!13349 List!13349) Unit!19338)

(assert (=> b!1311638 (= lt!432250 (lemmaConcatAssociativity!821 lt!432270 lt!432249 lt!432254))))

(assert (=> b!1311638 (= (++!3378 (++!3378 lt!432270 lt!432249) lt!432254) (++!3378 lt!432270 (++!3378 lt!432249 lt!432254)))))

(declare-fun lt!432266 () Unit!19338)

(assert (=> b!1311638 (= lt!432266 lt!432250)))

(declare-fun lt!432265 () Option!2566)

(declare-fun maxPrefixZipperSequence!534 (LexerInterface!1994 List!13351 BalanceConc!8676) Option!2566)

(assert (=> b!1311638 (= lt!432265 (maxPrefixZipperSequence!534 thiss!19762 rules!2550 lt!431409))))

(declare-fun c!215334 () Bool)

(assert (=> b!1311638 (= c!215334 ((_ is Some!2565) lt!432265))))

(declare-fun e!841039 () tuple2!12894)

(assert (=> b!1311638 (= (lexRec!261 thiss!19762 rules!2550 lt!431409) e!841039)))

(declare-fun lt!432277 () Unit!19338)

(declare-fun Unit!19352 () Unit!19338)

(assert (=> b!1311638 (= lt!432277 Unit!19352)))

(declare-fun lt!432268 () List!13350)

(assert (=> b!1311638 (= lt!432268 (list!4987 (BalanceConc!8679 Empty!4369)))))

(declare-fun lt!432269 () List!13350)

(assert (=> b!1311638 (= lt!432269 (Cons!13284 (_1!7336 (v!21092 lt!432252)) Nil!13284))))

(declare-fun lt!432271 () List!13350)

(assert (=> b!1311638 (= lt!432271 (list!4987 (_1!7333 lt!432255)))))

(declare-fun lt!432256 () Unit!19338)

(declare-fun lemmaConcatAssociativity!822 (List!13350 List!13350 List!13350) Unit!19338)

(assert (=> b!1311638 (= lt!432256 (lemmaConcatAssociativity!822 lt!432268 lt!432269 lt!432271))))

(assert (=> b!1311638 (= (++!3382 (++!3382 lt!432268 lt!432269) lt!432271) (++!3382 lt!432268 (++!3382 lt!432269 lt!432271)))))

(declare-fun lt!432264 () Unit!19338)

(assert (=> b!1311638 (= lt!432264 lt!432256)))

(declare-fun lt!432260 () List!13349)

(assert (=> b!1311638 (= lt!432260 (++!3378 (list!4986 (BalanceConc!8677 Empty!4368)) (list!4986 (charsOf!1271 (_1!7336 (v!21092 lt!432252))))))))

(declare-fun lt!432275 () List!13349)

(assert (=> b!1311638 (= lt!432275 (list!4986 (_2!7336 (v!21092 lt!432252))))))

(declare-fun lt!432278 () List!13350)

(assert (=> b!1311638 (= lt!432278 (list!4987 (append!382 (BalanceConc!8679 Empty!4369) (_1!7336 (v!21092 lt!432252)))))))

(declare-fun lt!432251 () Unit!19338)

(declare-fun lemmaLexThenLexPrefix!176 (LexerInterface!1994 List!13351 List!13349 List!13349 List!13350 List!13350 List!13349) Unit!19338)

(assert (=> b!1311638 (= lt!432251 (lemmaLexThenLexPrefix!176 thiss!19762 rules!2550 lt!432260 lt!432275 lt!432278 (list!4987 (_1!7333 lt!432255)) (list!4986 (_2!7333 lt!432255))))))

(assert (=> b!1311638 (= (lexList!532 thiss!19762 rules!2550 lt!432260) (tuple2!12891 lt!432278 Nil!13283))))

(declare-fun lt!432263 () Unit!19338)

(assert (=> b!1311638 (= lt!432263 lt!432251)))

(declare-fun lt!432253 () BalanceConc!8676)

(assert (=> b!1311638 (= lt!432253 (++!3380 (BalanceConc!8677 Empty!4368) (charsOf!1271 (_1!7336 (v!21092 lt!432252)))))))

(assert (=> b!1311638 (= lt!432247 (maxPrefixZipperSequence!534 thiss!19762 rules!2550 lt!432253))))

(declare-fun c!215336 () Bool)

(assert (=> b!1311638 (= c!215336 ((_ is Some!2565) lt!432247))))

(assert (=> b!1311638 (= (lexRec!261 thiss!19762 rules!2550 (++!3380 (BalanceConc!8677 Empty!4368) (charsOf!1271 (_1!7336 (v!21092 lt!432252))))) e!841041)))

(declare-fun lt!432274 () Unit!19338)

(declare-fun Unit!19353 () Unit!19338)

(assert (=> b!1311638 (= lt!432274 Unit!19353)))

(assert (=> b!1311638 (= lt!432262 (++!3380 (BalanceConc!8677 Empty!4368) (charsOf!1271 (_1!7336 (v!21092 lt!432252)))))))

(declare-fun lt!432280 () List!13349)

(assert (=> b!1311638 (= lt!432280 (list!4986 lt!432262))))

(declare-fun lt!432272 () List!13349)

(assert (=> b!1311638 (= lt!432272 (list!4986 (_2!7336 (v!21092 lt!432252))))))

(declare-fun lt!432276 () Unit!19338)

(declare-fun lemmaConcatTwoListThenFSndIsSuffix!217 (List!13349 List!13349) Unit!19338)

(assert (=> b!1311638 (= lt!432276 (lemmaConcatTwoListThenFSndIsSuffix!217 lt!432280 lt!432272))))

(declare-fun isSuffix!239 (List!13349 List!13349) Bool)

(assert (=> b!1311638 (isSuffix!239 lt!432272 (++!3378 lt!432280 lt!432272))))

(declare-fun lt!432261 () Unit!19338)

(assert (=> b!1311638 (= lt!432261 lt!432276)))

(declare-fun b!1311639 () Bool)

(assert (=> b!1311639 (= e!841042 (tuple2!12895 (BalanceConc!8679 Empty!4369) lt!431409))))

(declare-fun b!1311640 () Bool)

(assert (=> b!1311640 (= e!841041 (tuple2!12895 (BalanceConc!8679 Empty!4369) lt!432253))))

(declare-fun b!1311641 () Bool)

(assert (=> b!1311641 (= e!841039 (tuple2!12895 (BalanceConc!8679 Empty!4369) lt!431409))))

(declare-fun b!1311642 () Bool)

(declare-fun lt!432248 () tuple2!12894)

(assert (=> b!1311642 (= lt!432248 (lexRec!261 thiss!19762 rules!2550 (_2!7336 (v!21092 lt!432265))))))

(assert (=> b!1311642 (= e!841039 (tuple2!12895 (prepend!346 (_1!7333 lt!432248) (_1!7336 (v!21092 lt!432265))) (_2!7333 lt!432248)))))

(declare-fun d!369442 () Bool)

(declare-fun e!841040 () Bool)

(assert (=> d!369442 e!841040))

(declare-fun res!588851 () Bool)

(assert (=> d!369442 (=> (not res!588851) (not e!841040))))

(declare-fun lt!432257 () tuple2!12894)

(assert (=> d!369442 (= res!588851 (= (list!4987 (_1!7333 lt!432257)) (list!4987 (_1!7333 (lexRec!261 thiss!19762 rules!2550 lt!431409)))))))

(assert (=> d!369442 (= lt!432257 e!841042)))

(declare-fun c!215335 () Bool)

(assert (=> d!369442 (= c!215335 ((_ is Some!2565) lt!432252))))

(declare-fun maxPrefixZipperSequenceV2!206 (LexerInterface!1994 List!13351 BalanceConc!8676 BalanceConc!8676) Option!2566)

(assert (=> d!369442 (= lt!432252 (maxPrefixZipperSequenceV2!206 thiss!19762 rules!2550 lt!431409 lt!431409))))

(declare-fun lt!432258 () Unit!19338)

(declare-fun lt!432273 () Unit!19338)

(assert (=> d!369442 (= lt!432258 lt!432273)))

(declare-fun lt!432259 () List!13349)

(declare-fun lt!432267 () List!13349)

(assert (=> d!369442 (isSuffix!239 lt!432259 (++!3378 lt!432267 lt!432259))))

(assert (=> d!369442 (= lt!432273 (lemmaConcatTwoListThenFSndIsSuffix!217 lt!432267 lt!432259))))

(assert (=> d!369442 (= lt!432259 (list!4986 lt!431409))))

(assert (=> d!369442 (= lt!432267 (list!4986 (BalanceConc!8677 Empty!4368)))))

(assert (=> d!369442 (= (lexTailRecV2!359 thiss!19762 rules!2550 lt!431409 (BalanceConc!8677 Empty!4368) lt!431409 (BalanceConc!8679 Empty!4369)) lt!432257)))

(declare-fun b!1311643 () Bool)

(assert (=> b!1311643 (= e!841040 (= (list!4986 (_2!7333 lt!432257)) (list!4986 (_2!7333 (lexRec!261 thiss!19762 rules!2550 lt!431409)))))))

(assert (= (and d!369442 c!215335) b!1311638))

(assert (= (and d!369442 (not c!215335)) b!1311639))

(assert (= (and b!1311638 c!215334) b!1311642))

(assert (= (and b!1311638 (not c!215334)) b!1311641))

(assert (= (and b!1311638 c!215336) b!1311637))

(assert (= (and b!1311638 (not c!215336)) b!1311640))

(assert (= (and d!369442 res!588851) b!1311643))

(declare-fun m!1464331 () Bool)

(assert (=> b!1311642 m!1464331))

(declare-fun m!1464333 () Bool)

(assert (=> b!1311642 m!1464333))

(declare-fun m!1464335 () Bool)

(assert (=> d!369442 m!1464335))

(declare-fun m!1464337 () Bool)

(assert (=> d!369442 m!1464337))

(assert (=> d!369442 m!1462927))

(declare-fun m!1464339 () Bool)

(assert (=> d!369442 m!1464339))

(declare-fun m!1464341 () Bool)

(assert (=> d!369442 m!1464341))

(assert (=> d!369442 m!1464335))

(assert (=> d!369442 m!1461623))

(declare-fun m!1464343 () Bool)

(assert (=> d!369442 m!1464343))

(declare-fun m!1464345 () Bool)

(assert (=> d!369442 m!1464345))

(declare-fun m!1464347 () Bool)

(assert (=> d!369442 m!1464347))

(declare-fun m!1464349 () Bool)

(assert (=> b!1311637 m!1464349))

(declare-fun m!1464351 () Bool)

(assert (=> b!1311637 m!1464351))

(declare-fun m!1464353 () Bool)

(assert (=> b!1311638 m!1464353))

(declare-fun m!1464355 () Bool)

(assert (=> b!1311638 m!1464355))

(declare-fun m!1464357 () Bool)

(assert (=> b!1311638 m!1464357))

(declare-fun m!1464359 () Bool)

(assert (=> b!1311638 m!1464359))

(declare-fun m!1464361 () Bool)

(assert (=> b!1311638 m!1464361))

(declare-fun m!1464365 () Bool)

(assert (=> b!1311638 m!1464365))

(declare-fun m!1464367 () Bool)

(assert (=> b!1311638 m!1464367))

(assert (=> b!1311638 m!1464355))

(declare-fun m!1464371 () Bool)

(assert (=> b!1311638 m!1464371))

(assert (=> b!1311638 m!1464361))

(declare-fun m!1464375 () Bool)

(assert (=> b!1311638 m!1464375))

(declare-fun m!1464377 () Bool)

(assert (=> b!1311638 m!1464377))

(declare-fun m!1464379 () Bool)

(assert (=> b!1311638 m!1464379))

(declare-fun m!1464381 () Bool)

(assert (=> b!1311638 m!1464381))

(declare-fun m!1464383 () Bool)

(assert (=> b!1311638 m!1464383))

(declare-fun m!1464385 () Bool)

(assert (=> b!1311638 m!1464385))

(declare-fun m!1464387 () Bool)

(assert (=> b!1311638 m!1464387))

(declare-fun m!1464389 () Bool)

(assert (=> b!1311638 m!1464389))

(declare-fun m!1464391 () Bool)

(assert (=> b!1311638 m!1464391))

(declare-fun m!1464393 () Bool)

(assert (=> b!1311638 m!1464393))

(assert (=> b!1311638 m!1462927))

(assert (=> b!1311638 m!1464341))

(declare-fun m!1464395 () Bool)

(assert (=> b!1311638 m!1464395))

(declare-fun m!1464397 () Bool)

(assert (=> b!1311638 m!1464397))

(assert (=> b!1311638 m!1464367))

(declare-fun m!1464399 () Bool)

(assert (=> b!1311638 m!1464399))

(assert (=> b!1311638 m!1464353))

(assert (=> b!1311638 m!1462927))

(declare-fun m!1464401 () Bool)

(assert (=> b!1311638 m!1464401))

(declare-fun m!1464403 () Bool)

(assert (=> b!1311638 m!1464403))

(declare-fun m!1464405 () Bool)

(assert (=> b!1311638 m!1464405))

(declare-fun m!1464407 () Bool)

(assert (=> b!1311638 m!1464407))

(declare-fun m!1464409 () Bool)

(assert (=> b!1311638 m!1464409))

(assert (=> b!1311638 m!1464379))

(assert (=> b!1311638 m!1464379))

(assert (=> b!1311638 m!1464401))

(assert (=> b!1311638 m!1464385))

(declare-fun m!1464411 () Bool)

(assert (=> b!1311638 m!1464411))

(assert (=> b!1311638 m!1464405))

(declare-fun m!1464413 () Bool)

(assert (=> b!1311638 m!1464413))

(declare-fun m!1464415 () Bool)

(assert (=> b!1311638 m!1464415))

(assert (=> b!1311638 m!1464395))

(assert (=> b!1311638 m!1464385))

(assert (=> b!1311638 m!1464391))

(assert (=> b!1311638 m!1464381))

(declare-fun m!1464417 () Bool)

(assert (=> b!1311638 m!1464417))

(declare-fun m!1464421 () Bool)

(assert (=> b!1311638 m!1464421))

(declare-fun m!1464423 () Bool)

(assert (=> b!1311643 m!1464423))

(assert (=> b!1311643 m!1464341))

(declare-fun m!1464427 () Bool)

(assert (=> b!1311643 m!1464427))

(assert (=> d!368988 d!369442))

(declare-fun d!369632 () Bool)

(assert (=> d!369632 (= (isEmpty!7860 lt!431554) (not ((_ is Some!2563) lt!431554)))))

(assert (=> d!368860 d!369632))

(declare-fun b!1311711 () Bool)

(declare-fun e!841079 () Bool)

(assert (=> b!1311711 (= e!841079 (isPrefix!1068 (tail!1874 (list!4986 lt!431405)) (tail!1874 (list!4986 lt!431405))))))

(declare-fun b!1311710 () Bool)

(declare-fun res!588883 () Bool)

(assert (=> b!1311710 (=> (not res!588883) (not e!841079))))

(assert (=> b!1311710 (= res!588883 (= (head!2255 (list!4986 lt!431405)) (head!2255 (list!4986 lt!431405))))))

(declare-fun b!1311712 () Bool)

(declare-fun e!841081 () Bool)

(assert (=> b!1311712 (= e!841081 (>= (size!10797 (list!4986 lt!431405)) (size!10797 (list!4986 lt!431405))))))

(declare-fun d!369638 () Bool)

(assert (=> d!369638 e!841081))

(declare-fun res!588885 () Bool)

(assert (=> d!369638 (=> res!588885 e!841081)))

(declare-fun lt!432292 () Bool)

(assert (=> d!369638 (= res!588885 (not lt!432292))))

(declare-fun e!841080 () Bool)

(assert (=> d!369638 (= lt!432292 e!841080)))

(declare-fun res!588886 () Bool)

(assert (=> d!369638 (=> res!588886 e!841080)))

(assert (=> d!369638 (= res!588886 ((_ is Nil!13283) (list!4986 lt!431405)))))

(assert (=> d!369638 (= (isPrefix!1068 (list!4986 lt!431405) (list!4986 lt!431405)) lt!432292)))

(declare-fun b!1311709 () Bool)

(assert (=> b!1311709 (= e!841080 e!841079)))

(declare-fun res!588884 () Bool)

(assert (=> b!1311709 (=> (not res!588884) (not e!841079))))

(assert (=> b!1311709 (= res!588884 (not ((_ is Nil!13283) (list!4986 lt!431405))))))

(assert (= (and d!369638 (not res!588886)) b!1311709))

(assert (= (and b!1311709 res!588884) b!1311710))

(assert (= (and b!1311710 res!588883) b!1311711))

(assert (= (and d!369638 (not res!588885)) b!1311712))

(assert (=> b!1311711 m!1461537))

(declare-fun m!1464479 () Bool)

(assert (=> b!1311711 m!1464479))

(assert (=> b!1311711 m!1461537))

(assert (=> b!1311711 m!1464479))

(assert (=> b!1311711 m!1464479))

(assert (=> b!1311711 m!1464479))

(declare-fun m!1464481 () Bool)

(assert (=> b!1311711 m!1464481))

(assert (=> b!1311710 m!1461537))

(declare-fun m!1464483 () Bool)

(assert (=> b!1311710 m!1464483))

(assert (=> b!1311710 m!1461537))

(assert (=> b!1311710 m!1464483))

(assert (=> b!1311712 m!1461537))

(assert (=> b!1311712 m!1462051))

(assert (=> b!1311712 m!1461537))

(assert (=> b!1311712 m!1462051))

(assert (=> d!368860 d!369638))

(declare-fun d!369650 () Bool)

(assert (=> d!369650 (isPrefix!1068 (list!4986 lt!431405) (list!4986 lt!431405))))

(declare-fun lt!432295 () Unit!19338)

(declare-fun choose!8018 (List!13349 List!13349) Unit!19338)

(assert (=> d!369650 (= lt!432295 (choose!8018 (list!4986 lt!431405) (list!4986 lt!431405)))))

(assert (=> d!369650 (= (lemmaIsPrefixRefl!747 (list!4986 lt!431405) (list!4986 lt!431405)) lt!432295)))

(declare-fun bs!329984 () Bool)

(assert (= bs!329984 d!369650))

(assert (=> bs!329984 m!1461537))

(assert (=> bs!329984 m!1461537))

(assert (=> bs!329984 m!1462063))

(assert (=> bs!329984 m!1461537))

(assert (=> bs!329984 m!1461537))

(declare-fun m!1464491 () Bool)

(assert (=> bs!329984 m!1464491))

(assert (=> d!368860 d!369650))

(declare-fun bs!329985 () Bool)

(declare-fun d!369652 () Bool)

(assert (= bs!329985 (and d!369652 b!1309937)))

(declare-fun lambda!53045 () Int)

(assert (=> bs!329985 (not (= lambda!53045 lambda!52950))))

(declare-fun bs!329986 () Bool)

(assert (= bs!329986 (and d!369652 b!1309935)))

(assert (=> bs!329986 (= lambda!53045 lambda!52951)))

(declare-fun bs!329987 () Bool)

(assert (= bs!329987 (and d!369652 d!368894)))

(assert (=> bs!329987 (not (= lambda!53045 lambda!52986))))

(declare-fun bs!329988 () Bool)

(assert (= bs!329988 (and d!369652 d!368896)))

(assert (=> bs!329988 (not (= lambda!53045 lambda!52989))))

(assert (=> d!369652 true))

(declare-fun lt!432298 () Bool)

(assert (=> d!369652 (= lt!432298 (forall!3280 rules!2550 lambda!53045))))

(declare-fun e!841113 () Bool)

(assert (=> d!369652 (= lt!432298 e!841113)))

(declare-fun res!588891 () Bool)

(assert (=> d!369652 (=> res!588891 e!841113)))

(assert (=> d!369652 (= res!588891 (not ((_ is Cons!13285) rules!2550)))))

(assert (=> d!369652 (= (rulesValidInductive!720 thiss!19762 rules!2550) lt!432298)))

(declare-fun b!1311792 () Bool)

(declare-fun e!841112 () Bool)

(assert (=> b!1311792 (= e!841113 e!841112)))

(declare-fun res!588892 () Bool)

(assert (=> b!1311792 (=> (not res!588892) (not e!841112))))

(assert (=> b!1311792 (= res!588892 (ruleValid!557 thiss!19762 (h!18686 rules!2550)))))

(declare-fun b!1311793 () Bool)

(assert (=> b!1311793 (= e!841112 (rulesValidInductive!720 thiss!19762 (t!118010 rules!2550)))))

(assert (= (and d!369652 (not res!588891)) b!1311792))

(assert (= (and b!1311792 res!588892) b!1311793))

(declare-fun m!1464497 () Bool)

(assert (=> d!369652 m!1464497))

(assert (=> b!1311792 m!1462529))

(assert (=> b!1311793 m!1463063))

(assert (=> d!368860 d!369652))

(declare-fun d!369660 () Bool)

(declare-fun lt!432299 () Int)

(assert (=> d!369660 (>= lt!432299 0)))

(declare-fun e!841114 () Int)

(assert (=> d!369660 (= lt!432299 e!841114)))

(declare-fun c!215350 () Bool)

(assert (=> d!369660 (= c!215350 ((_ is Nil!13283) (originalCharacters!3161 t2!34)))))

(assert (=> d!369660 (= (size!10797 (originalCharacters!3161 t2!34)) lt!432299)))

(declare-fun b!1311794 () Bool)

(assert (=> b!1311794 (= e!841114 0)))

(declare-fun b!1311795 () Bool)

(assert (=> b!1311795 (= e!841114 (+ 1 (size!10797 (t!118008 (originalCharacters!3161 t2!34)))))))

(assert (= (and d!369660 c!215350) b!1311794))

(assert (= (and d!369660 (not c!215350)) b!1311795))

(declare-fun m!1464503 () Bool)

(assert (=> b!1311795 m!1464503))

(assert (=> b!1310620 d!369660))

(declare-fun b!1311797 () Bool)

(declare-fun e!841120 () Bool)

(declare-fun e!841116 () Bool)

(assert (=> b!1311797 (= e!841120 e!841116)))

(declare-fun c!215353 () Bool)

(assert (=> b!1311797 (= c!215353 ((_ is EmptyLang!3613) lt!431513))))

(declare-fun b!1311798 () Bool)

(declare-fun res!588896 () Bool)

(declare-fun e!841119 () Bool)

(assert (=> b!1311798 (=> (not res!588896) (not e!841119))))

(declare-fun call!89316 () Bool)

(assert (=> b!1311798 (= res!588896 (not call!89316))))

(declare-fun b!1311799 () Bool)

(declare-fun res!588898 () Bool)

(assert (=> b!1311799 (=> (not res!588898) (not e!841119))))

(assert (=> b!1311799 (= res!588898 (isEmpty!7861 (tail!1874 lt!431412)))))

(declare-fun b!1311800 () Bool)

(declare-fun res!588901 () Bool)

(declare-fun e!841117 () Bool)

(assert (=> b!1311800 (=> res!588901 e!841117)))

(assert (=> b!1311800 (= res!588901 (not ((_ is ElementMatch!3613) lt!431513)))))

(assert (=> b!1311800 (= e!841116 e!841117)))

(declare-fun b!1311801 () Bool)

(declare-fun res!588899 () Bool)

(declare-fun e!841121 () Bool)

(assert (=> b!1311801 (=> res!588899 e!841121)))

(assert (=> b!1311801 (= res!588899 (not (isEmpty!7861 (tail!1874 lt!431412))))))

(declare-fun b!1311802 () Bool)

(declare-fun res!588895 () Bool)

(assert (=> b!1311802 (=> res!588895 e!841117)))

(assert (=> b!1311802 (= res!588895 e!841119)))

(declare-fun res!588900 () Bool)

(assert (=> b!1311802 (=> (not res!588900) (not e!841119))))

(declare-fun lt!432300 () Bool)

(assert (=> b!1311802 (= res!588900 lt!432300)))

(declare-fun b!1311803 () Bool)

(declare-fun e!841122 () Bool)

(assert (=> b!1311803 (= e!841122 (matchR!1615 (derivativeStep!893 lt!431513 (head!2255 lt!431412)) (tail!1874 lt!431412)))))

(declare-fun b!1311804 () Bool)

(declare-fun e!841118 () Bool)

(assert (=> b!1311804 (= e!841118 e!841121)))

(declare-fun res!588897 () Bool)

(assert (=> b!1311804 (=> res!588897 e!841121)))

(assert (=> b!1311804 (= res!588897 call!89316)))

(declare-fun b!1311805 () Bool)

(assert (=> b!1311805 (= e!841120 (= lt!432300 call!89316))))

(declare-fun b!1311806 () Bool)

(assert (=> b!1311806 (= e!841122 (nullable!1141 lt!431513))))

(declare-fun b!1311807 () Bool)

(assert (=> b!1311807 (= e!841116 (not lt!432300))))

(declare-fun d!369668 () Bool)

(assert (=> d!369668 e!841120))

(declare-fun c!215351 () Bool)

(assert (=> d!369668 (= c!215351 ((_ is EmptyExpr!3613) lt!431513))))

(assert (=> d!369668 (= lt!432300 e!841122)))

(declare-fun c!215352 () Bool)

(assert (=> d!369668 (= c!215352 (isEmpty!7861 lt!431412))))

(assert (=> d!369668 (validRegex!1543 lt!431513)))

(assert (=> d!369668 (= (matchR!1615 lt!431513 lt!431412) lt!432300)))

(declare-fun b!1311808 () Bool)

(assert (=> b!1311808 (= e!841119 (= (head!2255 lt!431412) (c!214935 lt!431513)))))

(declare-fun bm!89311 () Bool)

(assert (=> bm!89311 (= call!89316 (isEmpty!7861 lt!431412))))

(declare-fun b!1311809 () Bool)

(assert (=> b!1311809 (= e!841117 e!841118)))

(declare-fun res!588894 () Bool)

(assert (=> b!1311809 (=> (not res!588894) (not e!841118))))

(assert (=> b!1311809 (= res!588894 (not lt!432300))))

(declare-fun b!1311810 () Bool)

(assert (=> b!1311810 (= e!841121 (not (= (head!2255 lt!431412) (c!214935 lt!431513))))))

(assert (= (and d!369668 c!215352) b!1311806))

(assert (= (and d!369668 (not c!215352)) b!1311803))

(assert (= (and d!369668 c!215351) b!1311805))

(assert (= (and d!369668 (not c!215351)) b!1311797))

(assert (= (and b!1311797 c!215353) b!1311807))

(assert (= (and b!1311797 (not c!215353)) b!1311800))

(assert (= (and b!1311800 (not res!588901)) b!1311802))

(assert (= (and b!1311802 res!588900) b!1311798))

(assert (= (and b!1311798 res!588896) b!1311799))

(assert (= (and b!1311799 res!588898) b!1311808))

(assert (= (and b!1311802 (not res!588895)) b!1311809))

(assert (= (and b!1311809 res!588894) b!1311804))

(assert (= (and b!1311804 (not res!588897)) b!1311801))

(assert (= (and b!1311801 (not res!588899)) b!1311810))

(assert (= (or b!1311805 b!1311798 b!1311804) bm!89311))

(assert (=> b!1311810 m!1462275))

(declare-fun m!1464517 () Bool)

(assert (=> b!1311806 m!1464517))

(assert (=> bm!89311 m!1462279))

(assert (=> b!1311801 m!1462281))

(assert (=> b!1311801 m!1462281))

(assert (=> b!1311801 m!1462283))

(assert (=> b!1311799 m!1462281))

(assert (=> b!1311799 m!1462281))

(assert (=> b!1311799 m!1462283))

(assert (=> d!369668 m!1462279))

(assert (=> d!369668 m!1462531))

(assert (=> b!1311803 m!1462275))

(assert (=> b!1311803 m!1462275))

(declare-fun m!1464521 () Bool)

(assert (=> b!1311803 m!1464521))

(assert (=> b!1311803 m!1462281))

(assert (=> b!1311803 m!1464521))

(assert (=> b!1311803 m!1462281))

(declare-fun m!1464523 () Bool)

(assert (=> b!1311803 m!1464523))

(assert (=> b!1311808 m!1462275))

(assert (=> b!1310661 d!369668))

(declare-fun d!369682 () Bool)

(assert (=> d!369682 (= (list!4986 (charsOf!1271 (_1!7332 (get!4246 lt!431554)))) (list!4990 (c!214934 (charsOf!1271 (_1!7332 (get!4246 lt!431554))))))))

(declare-fun bs!330001 () Bool)

(assert (= bs!330001 d!369682))

(declare-fun m!1464525 () Bool)

(assert (=> bs!330001 m!1464525))

(assert (=> b!1310341 d!369682))

(declare-fun d!369684 () Bool)

(declare-fun lt!432301 () BalanceConc!8676)

(assert (=> d!369684 (= (list!4986 lt!432301) (originalCharacters!3161 (_1!7332 (get!4246 lt!431554))))))

(assert (=> d!369684 (= lt!432301 (dynLambda!5765 (toChars!3377 (transformation!2299 (rule!4038 (_1!7332 (get!4246 lt!431554))))) (value!75154 (_1!7332 (get!4246 lt!431554)))))))

(assert (=> d!369684 (= (charsOf!1271 (_1!7332 (get!4246 lt!431554))) lt!432301)))

(declare-fun b_lambda!37739 () Bool)

(assert (=> (not b_lambda!37739) (not d!369684)))

(declare-fun t!118126 () Bool)

(declare-fun tb!69781 () Bool)

(assert (=> (and b!1309934 (= (toChars!3377 (transformation!2299 (h!18686 rules!2550))) (toChars!3377 (transformation!2299 (rule!4038 (_1!7332 (get!4246 lt!431554)))))) t!118126) tb!69781))

(declare-fun b!1311813 () Bool)

(declare-fun e!841125 () Bool)

(declare-fun tp!382163 () Bool)

(assert (=> b!1311813 (= e!841125 (and (inv!17665 (c!214934 (dynLambda!5765 (toChars!3377 (transformation!2299 (rule!4038 (_1!7332 (get!4246 lt!431554))))) (value!75154 (_1!7332 (get!4246 lt!431554)))))) tp!382163))))

(declare-fun result!84664 () Bool)

(assert (=> tb!69781 (= result!84664 (and (inv!17666 (dynLambda!5765 (toChars!3377 (transformation!2299 (rule!4038 (_1!7332 (get!4246 lt!431554))))) (value!75154 (_1!7332 (get!4246 lt!431554))))) e!841125))))

(assert (= tb!69781 b!1311813))

(declare-fun m!1464527 () Bool)

(assert (=> b!1311813 m!1464527))

(declare-fun m!1464529 () Bool)

(assert (=> tb!69781 m!1464529))

(assert (=> d!369684 t!118126))

(declare-fun b_and!87631 () Bool)

(assert (= b_and!87587 (and (=> t!118126 result!84664) b_and!87631)))

(declare-fun tb!69783 () Bool)

(declare-fun t!118128 () Bool)

(assert (=> (and b!1309933 (= (toChars!3377 (transformation!2299 (rule!4038 t1!34))) (toChars!3377 (transformation!2299 (rule!4038 (_1!7332 (get!4246 lt!431554)))))) t!118128) tb!69783))

(declare-fun result!84666 () Bool)

(assert (= result!84666 result!84664))

(assert (=> d!369684 t!118128))

(declare-fun b_and!87633 () Bool)

(assert (= b_and!87589 (and (=> t!118128 result!84666) b_and!87633)))

(declare-fun tb!69785 () Bool)

(declare-fun t!118130 () Bool)

(assert (=> (and b!1309954 (= (toChars!3377 (transformation!2299 (rule!4038 t2!34))) (toChars!3377 (transformation!2299 (rule!4038 (_1!7332 (get!4246 lt!431554)))))) t!118130) tb!69785))

(declare-fun result!84668 () Bool)

(assert (= result!84668 result!84664))

(assert (=> d!369684 t!118130))

(declare-fun b_and!87635 () Bool)

(assert (= b_and!87591 (and (=> t!118130 result!84668) b_and!87635)))

(declare-fun tb!69787 () Bool)

(declare-fun t!118132 () Bool)

(assert (=> (and b!1310655 (= (toChars!3377 (transformation!2299 (h!18686 (t!118010 rules!2550)))) (toChars!3377 (transformation!2299 (rule!4038 (_1!7332 (get!4246 lt!431554)))))) t!118132) tb!69787))

(declare-fun result!84670 () Bool)

(assert (= result!84670 result!84664))

(assert (=> d!369684 t!118132))

(declare-fun b_and!87637 () Bool)

(assert (= b_and!87593 (and (=> t!118132 result!84670) b_and!87637)))

(declare-fun m!1464531 () Bool)

(assert (=> d!369684 m!1464531))

(declare-fun m!1464533 () Bool)

(assert (=> d!369684 m!1464533))

(assert (=> b!1310341 d!369684))

(assert (=> b!1310341 d!369064))

(declare-fun d!369686 () Bool)

(assert (=> d!369686 (= (Exists!771 lambda!52992) (choose!8013 lambda!52992))))

(declare-fun bs!330002 () Bool)

(assert (= bs!330002 d!369686))

(declare-fun m!1464535 () Bool)

(assert (=> bs!330002 m!1464535))

(assert (=> d!368938 d!369686))

(declare-fun bs!330003 () Bool)

(declare-fun d!369688 () Bool)

(assert (= bs!330003 (and d!369688 b!1309939)))

(declare-fun lambda!53048 () Int)

(assert (=> bs!330003 (= lambda!53048 lambda!52947)))

(declare-fun bs!330004 () Bool)

(assert (= bs!330004 (and d!369688 d!368938)))

(assert (=> bs!330004 (= lambda!53048 lambda!52992)))

(assert (=> d!369688 true))

(assert (=> d!369688 true))

(assert (=> d!369688 (Exists!771 lambda!53048)))

(assert (=> d!369688 true))

(declare-fun _$103!71 () Unit!19338)

(assert (=> d!369688 (= (choose!8014 lt!431419 lt!431414) _$103!71)))

(declare-fun bs!330005 () Bool)

(assert (= bs!330005 d!369688))

(declare-fun m!1464537 () Bool)

(assert (=> bs!330005 m!1464537))

(assert (=> d!368938 d!369688))

(declare-fun b!1311834 () Bool)

(declare-fun e!841142 () Bool)

(declare-fun e!841147 () Bool)

(assert (=> b!1311834 (= e!841142 e!841147)))

(declare-fun res!588919 () Bool)

(assert (=> b!1311834 (= res!588919 (not (nullable!1141 (reg!3942 lt!431419))))))

(assert (=> b!1311834 (=> (not res!588919) (not e!841147))))

(declare-fun b!1311835 () Bool)

(declare-fun e!841145 () Bool)

(declare-fun e!841144 () Bool)

(assert (=> b!1311835 (= e!841145 e!841144)))

(declare-fun res!588918 () Bool)

(assert (=> b!1311835 (=> (not res!588918) (not e!841144))))

(declare-fun call!89324 () Bool)

(assert (=> b!1311835 (= res!588918 call!89324)))

(declare-fun b!1311836 () Bool)

(declare-fun call!89323 () Bool)

(assert (=> b!1311836 (= e!841144 call!89323)))

(declare-fun bm!89318 () Bool)

(declare-fun call!89325 () Bool)

(assert (=> bm!89318 (= call!89323 call!89325)))

(declare-fun b!1311837 () Bool)

(declare-fun res!588920 () Bool)

(assert (=> b!1311837 (=> res!588920 e!841145)))

(assert (=> b!1311837 (= res!588920 (not ((_ is Concat!6003) lt!431419)))))

(declare-fun e!841148 () Bool)

(assert (=> b!1311837 (= e!841148 e!841145)))

(declare-fun b!1311838 () Bool)

(assert (=> b!1311838 (= e!841147 call!89325)))

(declare-fun b!1311839 () Bool)

(assert (=> b!1311839 (= e!841142 e!841148)))

(declare-fun c!215358 () Bool)

(assert (=> b!1311839 (= c!215358 ((_ is Union!3613) lt!431419))))

(declare-fun bm!89319 () Bool)

(declare-fun c!215359 () Bool)

(assert (=> bm!89319 (= call!89325 (validRegex!1543 (ite c!215359 (reg!3942 lt!431419) (ite c!215358 (regTwo!7739 lt!431419) (regTwo!7738 lt!431419)))))))

(declare-fun d!369690 () Bool)

(declare-fun res!588917 () Bool)

(declare-fun e!841146 () Bool)

(assert (=> d!369690 (=> res!588917 e!841146)))

(assert (=> d!369690 (= res!588917 ((_ is ElementMatch!3613) lt!431419))))

(assert (=> d!369690 (= (validRegex!1543 lt!431419) e!841146)))

(declare-fun bm!89320 () Bool)

(assert (=> bm!89320 (= call!89324 (validRegex!1543 (ite c!215358 (regOne!7739 lt!431419) (regOne!7738 lt!431419))))))

(declare-fun b!1311840 () Bool)

(declare-fun e!841143 () Bool)

(assert (=> b!1311840 (= e!841143 call!89323)))

(declare-fun b!1311841 () Bool)

(assert (=> b!1311841 (= e!841146 e!841142)))

(assert (=> b!1311841 (= c!215359 ((_ is Star!3613) lt!431419))))

(declare-fun b!1311842 () Bool)

(declare-fun res!588916 () Bool)

(assert (=> b!1311842 (=> (not res!588916) (not e!841143))))

(assert (=> b!1311842 (= res!588916 call!89324)))

(assert (=> b!1311842 (= e!841148 e!841143)))

(assert (= (and d!369690 (not res!588917)) b!1311841))

(assert (= (and b!1311841 c!215359) b!1311834))

(assert (= (and b!1311841 (not c!215359)) b!1311839))

(assert (= (and b!1311834 res!588919) b!1311838))

(assert (= (and b!1311839 c!215358) b!1311842))

(assert (= (and b!1311839 (not c!215358)) b!1311837))

(assert (= (and b!1311842 res!588916) b!1311840))

(assert (= (and b!1311837 (not res!588920)) b!1311835))

(assert (= (and b!1311835 res!588918) b!1311836))

(assert (= (or b!1311842 b!1311835) bm!89320))

(assert (= (or b!1311840 b!1311836) bm!89318))

(assert (= (or b!1311838 bm!89318) bm!89319))

(declare-fun m!1464539 () Bool)

(assert (=> b!1311834 m!1464539))

(declare-fun m!1464541 () Bool)

(assert (=> bm!89319 m!1464541))

(declare-fun m!1464543 () Bool)

(assert (=> bm!89320 m!1464543))

(assert (=> d!368938 d!369690))

(declare-fun d!369692 () Bool)

(declare-fun lt!432302 () Int)

(assert (=> d!369692 (>= lt!432302 0)))

(declare-fun e!841149 () Int)

(assert (=> d!369692 (= lt!432302 e!841149)))

(declare-fun c!215360 () Bool)

(assert (=> d!369692 (= c!215360 ((_ is Nil!13283) (originalCharacters!3161 t1!34)))))

(assert (=> d!369692 (= (size!10797 (originalCharacters!3161 t1!34)) lt!432302)))

(declare-fun b!1311843 () Bool)

(assert (=> b!1311843 (= e!841149 0)))

(declare-fun b!1311844 () Bool)

(assert (=> b!1311844 (= e!841149 (+ 1 (size!10797 (t!118008 (originalCharacters!3161 t1!34)))))))

(assert (= (and d!369692 c!215360) b!1311843))

(assert (= (and d!369692 (not c!215360)) b!1311844))

(declare-fun m!1464545 () Bool)

(assert (=> b!1311844 m!1464545))

(assert (=> b!1310618 d!369692))

(declare-fun d!369694 () Bool)

(declare-fun lt!432303 () Bool)

(assert (=> d!369694 (= lt!432303 (isEmpty!7861 (list!4986 (_2!7333 lt!431500))))))

(assert (=> d!369694 (= lt!432303 (isEmpty!7862 (c!214934 (_2!7333 lt!431500))))))

(assert (=> d!369694 (= (isEmpty!7853 (_2!7333 lt!431500)) lt!432303)))

(declare-fun bs!330006 () Bool)

(assert (= bs!330006 d!369694))

(declare-fun m!1464547 () Bool)

(assert (=> bs!330006 m!1464547))

(assert (=> bs!330006 m!1464547))

(declare-fun m!1464549 () Bool)

(assert (=> bs!330006 m!1464549))

(declare-fun m!1464551 () Bool)

(assert (=> bs!330006 m!1464551))

(assert (=> b!1310198 d!369694))

(declare-fun d!369696 () Bool)

(declare-fun lt!432304 () Bool)

(assert (=> d!369696 (= lt!432304 (select (content!1859 rules!2550) lt!431641))))

(declare-fun e!841150 () Bool)

(assert (=> d!369696 (= lt!432304 e!841150)))

(declare-fun res!588921 () Bool)

(assert (=> d!369696 (=> (not res!588921) (not e!841150))))

(assert (=> d!369696 (= res!588921 ((_ is Cons!13285) rules!2550))))

(assert (=> d!369696 (= (contains!2309 rules!2550 lt!431641) lt!432304)))

(declare-fun b!1311845 () Bool)

(declare-fun e!841151 () Bool)

(assert (=> b!1311845 (= e!841150 e!841151)))

(declare-fun res!588922 () Bool)

(assert (=> b!1311845 (=> res!588922 e!841151)))

(assert (=> b!1311845 (= res!588922 (= (h!18686 rules!2550) lt!431641))))

(declare-fun b!1311846 () Bool)

(assert (=> b!1311846 (= e!841151 (contains!2309 (t!118010 rules!2550) lt!431641))))

(assert (= (and d!369696 res!588921) b!1311845))

(assert (= (and b!1311845 (not res!588922)) b!1311846))

(assert (=> d!369696 m!1462085))

(declare-fun m!1464553 () Bool)

(assert (=> d!369696 m!1464553))

(declare-fun m!1464555 () Bool)

(assert (=> b!1311846 m!1464555))

(assert (=> b!1310568 d!369696))

(declare-fun b!1311847 () Bool)

(declare-fun e!841153 () Bool)

(declare-fun lt!432305 () Option!2564)

(assert (=> b!1311847 (= e!841153 (contains!2309 (t!118010 rules!2550) (rule!4038 (_1!7332 (get!4246 lt!432305)))))))

(declare-fun b!1311848 () Bool)

(declare-fun res!588926 () Bool)

(assert (=> b!1311848 (=> (not res!588926) (not e!841153))))

(assert (=> b!1311848 (= res!588926 (< (size!10797 (_2!7332 (get!4246 lt!432305))) (size!10797 lt!431402)))))

(declare-fun b!1311850 () Bool)

(declare-fun res!588925 () Bool)

(assert (=> b!1311850 (=> (not res!588925) (not e!841153))))

(assert (=> b!1311850 (= res!588925 (= (++!3378 (list!4986 (charsOf!1271 (_1!7332 (get!4246 lt!432305)))) (_2!7332 (get!4246 lt!432305))) lt!431402))))

(declare-fun call!89326 () Option!2564)

(declare-fun bm!89321 () Bool)

(assert (=> bm!89321 (= call!89326 (maxPrefixOneRule!573 thiss!19762 (h!18686 (t!118010 rules!2550)) lt!431402))))

(declare-fun b!1311851 () Bool)

(declare-fun res!588929 () Bool)

(assert (=> b!1311851 (=> (not res!588929) (not e!841153))))

(assert (=> b!1311851 (= res!588929 (matchR!1615 (regex!2299 (rule!4038 (_1!7332 (get!4246 lt!432305)))) (list!4986 (charsOf!1271 (_1!7332 (get!4246 lt!432305))))))))

(declare-fun b!1311852 () Bool)

(declare-fun e!841152 () Option!2564)

(declare-fun lt!432307 () Option!2564)

(declare-fun lt!432309 () Option!2564)

(assert (=> b!1311852 (= e!841152 (ite (and ((_ is None!2563) lt!432307) ((_ is None!2563) lt!432309)) None!2563 (ite ((_ is None!2563) lt!432309) lt!432307 (ite ((_ is None!2563) lt!432307) lt!432309 (ite (>= (size!10790 (_1!7332 (v!21077 lt!432307))) (size!10790 (_1!7332 (v!21077 lt!432309)))) lt!432307 lt!432309)))))))

(assert (=> b!1311852 (= lt!432307 call!89326)))

(assert (=> b!1311852 (= lt!432309 (maxPrefix!1004 thiss!19762 (t!118010 (t!118010 rules!2550)) lt!431402))))

(declare-fun b!1311853 () Bool)

(declare-fun res!588927 () Bool)

(assert (=> b!1311853 (=> (not res!588927) (not e!841153))))

(assert (=> b!1311853 (= res!588927 (= (list!4986 (charsOf!1271 (_1!7332 (get!4246 lt!432305)))) (originalCharacters!3161 (_1!7332 (get!4246 lt!432305)))))))

(declare-fun b!1311854 () Bool)

(assert (=> b!1311854 (= e!841152 call!89326)))

(declare-fun b!1311855 () Bool)

(declare-fun e!841154 () Bool)

(assert (=> b!1311855 (= e!841154 e!841153)))

(declare-fun res!588923 () Bool)

(assert (=> b!1311855 (=> (not res!588923) (not e!841153))))

(assert (=> b!1311855 (= res!588923 (isDefined!2171 lt!432305))))

(declare-fun b!1311849 () Bool)

(declare-fun res!588924 () Bool)

(assert (=> b!1311849 (=> (not res!588924) (not e!841153))))

(assert (=> b!1311849 (= res!588924 (= (value!75154 (_1!7332 (get!4246 lt!432305))) (apply!2990 (transformation!2299 (rule!4038 (_1!7332 (get!4246 lt!432305)))) (seqFromList!1591 (originalCharacters!3161 (_1!7332 (get!4246 lt!432305)))))))))

(declare-fun d!369698 () Bool)

(assert (=> d!369698 e!841154))

(declare-fun res!588928 () Bool)

(assert (=> d!369698 (=> res!588928 e!841154)))

(assert (=> d!369698 (= res!588928 (isEmpty!7860 lt!432305))))

(assert (=> d!369698 (= lt!432305 e!841152)))

(declare-fun c!215361 () Bool)

(assert (=> d!369698 (= c!215361 (and ((_ is Cons!13285) (t!118010 rules!2550)) ((_ is Nil!13285) (t!118010 (t!118010 rules!2550)))))))

(declare-fun lt!432306 () Unit!19338)

(declare-fun lt!432308 () Unit!19338)

(assert (=> d!369698 (= lt!432306 lt!432308)))

(assert (=> d!369698 (isPrefix!1068 lt!431402 lt!431402)))

(assert (=> d!369698 (= lt!432308 (lemmaIsPrefixRefl!747 lt!431402 lt!431402))))

(assert (=> d!369698 (rulesValidInductive!720 thiss!19762 (t!118010 rules!2550))))

(assert (=> d!369698 (= (maxPrefix!1004 thiss!19762 (t!118010 rules!2550) lt!431402) lt!432305)))

(assert (= (and d!369698 c!215361) b!1311854))

(assert (= (and d!369698 (not c!215361)) b!1311852))

(assert (= (or b!1311854 b!1311852) bm!89321))

(assert (= (and d!369698 (not res!588928)) b!1311855))

(assert (= (and b!1311855 res!588923) b!1311853))

(assert (= (and b!1311853 res!588927) b!1311848))

(assert (= (and b!1311848 res!588926) b!1311850))

(assert (= (and b!1311850 res!588925) b!1311849))

(assert (= (and b!1311849 res!588924) b!1311851))

(assert (= (and b!1311851 res!588929) b!1311847))

(declare-fun m!1464557 () Bool)

(assert (=> b!1311852 m!1464557))

(declare-fun m!1464559 () Bool)

(assert (=> b!1311847 m!1464559))

(declare-fun m!1464561 () Bool)

(assert (=> b!1311847 m!1464561))

(assert (=> b!1311851 m!1464559))

(declare-fun m!1464563 () Bool)

(assert (=> b!1311851 m!1464563))

(assert (=> b!1311851 m!1464563))

(declare-fun m!1464565 () Bool)

(assert (=> b!1311851 m!1464565))

(assert (=> b!1311851 m!1464565))

(declare-fun m!1464567 () Bool)

(assert (=> b!1311851 m!1464567))

(assert (=> b!1311848 m!1464559))

(declare-fun m!1464569 () Bool)

(assert (=> b!1311848 m!1464569))

(assert (=> b!1311848 m!1462123))

(assert (=> b!1311849 m!1464559))

(declare-fun m!1464571 () Bool)

(assert (=> b!1311849 m!1464571))

(assert (=> b!1311849 m!1464571))

(declare-fun m!1464573 () Bool)

(assert (=> b!1311849 m!1464573))

(assert (=> b!1311853 m!1464559))

(assert (=> b!1311853 m!1464563))

(assert (=> b!1311853 m!1464563))

(assert (=> b!1311853 m!1464565))

(declare-fun m!1464575 () Bool)

(assert (=> b!1311855 m!1464575))

(declare-fun m!1464577 () Bool)

(assert (=> bm!89321 m!1464577))

(declare-fun m!1464579 () Bool)

(assert (=> d!369698 m!1464579))

(assert (=> d!369698 m!1462179))

(assert (=> d!369698 m!1462181))

(assert (=> d!369698 m!1463063))

(assert (=> b!1311850 m!1464559))

(assert (=> b!1311850 m!1464563))

(assert (=> b!1311850 m!1464563))

(assert (=> b!1311850 m!1464565))

(assert (=> b!1311850 m!1464565))

(declare-fun m!1464581 () Bool)

(assert (=> b!1311850 m!1464581))

(assert (=> b!1310393 d!369698))

(declare-fun d!369700 () Bool)

(assert (=> d!369700 (= (inv!16 (value!75154 t1!34)) (= (charsToInt!0 (text!17170 (value!75154 t1!34))) (value!75145 (value!75154 t1!34))))))

(declare-fun bs!330007 () Bool)

(assert (= bs!330007 d!369700))

(declare-fun m!1464583 () Bool)

(assert (=> bs!330007 m!1464583))

(assert (=> b!1310607 d!369700))

(assert (=> d!368934 d!369102))

(declare-fun b!1311859 () Bool)

(declare-fun e!841156 () Bool)

(declare-fun lt!432310 () List!13349)

(assert (=> b!1311859 (= e!841156 (or (not (= (_2!7332 (get!4246 lt!431554)) Nil!13283)) (= lt!432310 (list!4986 (charsOf!1271 (_1!7332 (get!4246 lt!431554)))))))))

(declare-fun b!1311858 () Bool)

(declare-fun res!588930 () Bool)

(assert (=> b!1311858 (=> (not res!588930) (not e!841156))))

(assert (=> b!1311858 (= res!588930 (= (size!10797 lt!432310) (+ (size!10797 (list!4986 (charsOf!1271 (_1!7332 (get!4246 lt!431554))))) (size!10797 (_2!7332 (get!4246 lt!431554))))))))

(declare-fun b!1311856 () Bool)

(declare-fun e!841155 () List!13349)

(assert (=> b!1311856 (= e!841155 (_2!7332 (get!4246 lt!431554)))))

(declare-fun d!369702 () Bool)

(assert (=> d!369702 e!841156))

(declare-fun res!588931 () Bool)

(assert (=> d!369702 (=> (not res!588931) (not e!841156))))

(assert (=> d!369702 (= res!588931 (= (content!1858 lt!432310) ((_ map or) (content!1858 (list!4986 (charsOf!1271 (_1!7332 (get!4246 lt!431554))))) (content!1858 (_2!7332 (get!4246 lt!431554))))))))

(assert (=> d!369702 (= lt!432310 e!841155)))

(declare-fun c!215362 () Bool)

(assert (=> d!369702 (= c!215362 ((_ is Nil!13283) (list!4986 (charsOf!1271 (_1!7332 (get!4246 lt!431554))))))))

(assert (=> d!369702 (= (++!3378 (list!4986 (charsOf!1271 (_1!7332 (get!4246 lt!431554)))) (_2!7332 (get!4246 lt!431554))) lt!432310)))

(declare-fun b!1311857 () Bool)

(assert (=> b!1311857 (= e!841155 (Cons!13283 (h!18684 (list!4986 (charsOf!1271 (_1!7332 (get!4246 lt!431554))))) (++!3378 (t!118008 (list!4986 (charsOf!1271 (_1!7332 (get!4246 lt!431554))))) (_2!7332 (get!4246 lt!431554)))))))

(assert (= (and d!369702 c!215362) b!1311856))

(assert (= (and d!369702 (not c!215362)) b!1311857))

(assert (= (and d!369702 res!588931) b!1311858))

(assert (= (and b!1311858 res!588930) b!1311859))

(declare-fun m!1464585 () Bool)

(assert (=> b!1311858 m!1464585))

(assert (=> b!1311858 m!1462045))

(declare-fun m!1464587 () Bool)

(assert (=> b!1311858 m!1464587))

(assert (=> b!1311858 m!1462049))

(declare-fun m!1464589 () Bool)

(assert (=> d!369702 m!1464589))

(assert (=> d!369702 m!1462045))

(declare-fun m!1464591 () Bool)

(assert (=> d!369702 m!1464591))

(declare-fun m!1464593 () Bool)

(assert (=> d!369702 m!1464593))

(declare-fun m!1464595 () Bool)

(assert (=> b!1311857 m!1464595))

(assert (=> b!1310338 d!369702))

(assert (=> b!1310338 d!369682))

(assert (=> b!1310338 d!369684))

(assert (=> b!1310338 d!369064))

(declare-fun d!369704 () Bool)

(assert (=> d!369704 (= (isEmpty!7858 (_1!7331 lt!431652)) ((_ is Nil!13284) (_1!7331 lt!431652)))))

(assert (=> b!1310598 d!369704))

(declare-fun b!1311860 () Bool)

(declare-fun e!841157 () List!13349)

(assert (=> b!1311860 (= e!841157 Nil!13283)))

(declare-fun d!369706 () Bool)

(declare-fun c!215363 () Bool)

(assert (=> d!369706 (= c!215363 ((_ is Empty!4368) (c!214934 lt!431405)))))

(assert (=> d!369706 (= (list!4990 (c!214934 lt!431405)) e!841157)))

(declare-fun b!1311863 () Bool)

(declare-fun e!841158 () List!13349)

(assert (=> b!1311863 (= e!841158 (++!3378 (list!4990 (left!11423 (c!214934 lt!431405))) (list!4990 (right!11753 (c!214934 lt!431405)))))))

(declare-fun b!1311861 () Bool)

(assert (=> b!1311861 (= e!841157 e!841158)))

(declare-fun c!215364 () Bool)

(assert (=> b!1311861 (= c!215364 ((_ is Leaf!6714) (c!214934 lt!431405)))))

(declare-fun b!1311862 () Bool)

(assert (=> b!1311862 (= e!841158 (list!4992 (xs!7083 (c!214934 lt!431405))))))

(assert (= (and d!369706 c!215363) b!1311860))

(assert (= (and d!369706 (not c!215363)) b!1311861))

(assert (= (and b!1311861 c!215364) b!1311862))

(assert (= (and b!1311861 (not c!215364)) b!1311863))

(declare-fun m!1464597 () Bool)

(assert (=> b!1311863 m!1464597))

(declare-fun m!1464599 () Bool)

(assert (=> b!1311863 m!1464599))

(assert (=> b!1311863 m!1464597))

(assert (=> b!1311863 m!1464599))

(declare-fun m!1464601 () Bool)

(assert (=> b!1311863 m!1464601))

(declare-fun m!1464603 () Bool)

(assert (=> b!1311862 m!1464603))

(assert (=> d!368862 d!369706))

(declare-fun d!369708 () Bool)

(declare-fun lt!432311 () Bool)

(assert (=> d!369708 (= lt!432311 (select (content!1857 (t!118011 (map!2915 rules!2550 lambda!52948))) lt!431413))))

(declare-fun e!841160 () Bool)

(assert (=> d!369708 (= lt!432311 e!841160)))

(declare-fun res!588932 () Bool)

(assert (=> d!369708 (=> (not res!588932) (not e!841160))))

(assert (=> d!369708 (= res!588932 ((_ is Cons!13286) (t!118011 (map!2915 rules!2550 lambda!52948))))))

(assert (=> d!369708 (= (contains!2307 (t!118011 (map!2915 rules!2550 lambda!52948)) lt!431413) lt!432311)))

(declare-fun b!1311864 () Bool)

(declare-fun e!841159 () Bool)

(assert (=> b!1311864 (= e!841160 e!841159)))

(declare-fun res!588933 () Bool)

(assert (=> b!1311864 (=> res!588933 e!841159)))

(assert (=> b!1311864 (= res!588933 (= (h!18687 (t!118011 (map!2915 rules!2550 lambda!52948))) lt!431413))))

(declare-fun b!1311865 () Bool)

(assert (=> b!1311865 (= e!841159 (contains!2307 (t!118011 (t!118011 (map!2915 rules!2550 lambda!52948))) lt!431413))))

(assert (= (and d!369708 res!588932) b!1311864))

(assert (= (and b!1311864 (not res!588933)) b!1311865))

(declare-fun m!1464605 () Bool)

(assert (=> d!369708 m!1464605))

(declare-fun m!1464607 () Bool)

(assert (=> d!369708 m!1464607))

(declare-fun m!1464609 () Bool)

(assert (=> b!1311865 m!1464609))

(assert (=> b!1310205 d!369708))

(declare-fun d!369710 () Bool)

(declare-fun charsToBigInt!0 (List!13348 Int) Int)

(assert (=> d!369710 (= (inv!15 (value!75154 t2!34)) (= (charsToBigInt!0 (text!17172 (value!75154 t2!34)) 0) (value!75149 (value!75154 t2!34))))))

(declare-fun bs!330008 () Bool)

(assert (= bs!330008 d!369710))

(declare-fun m!1464611 () Bool)

(assert (=> bs!330008 m!1464611))

(assert (=> b!1310268 d!369710))

(declare-fun b!1311866 () Bool)

(declare-fun e!841161 () List!13350)

(assert (=> b!1311866 (= e!841161 Nil!13284)))

(declare-fun d!369712 () Bool)

(declare-fun c!215365 () Bool)

(assert (=> d!369712 (= c!215365 ((_ is Empty!4369) (c!214936 (_1!7333 lt!431403))))))

(assert (=> d!369712 (= (list!4991 (c!214936 (_1!7333 lt!431403))) e!841161)))

(declare-fun b!1311867 () Bool)

(declare-fun e!841162 () List!13350)

(assert (=> b!1311867 (= e!841161 e!841162)))

(declare-fun c!215366 () Bool)

(assert (=> b!1311867 (= c!215366 ((_ is Leaf!6715) (c!214936 (_1!7333 lt!431403))))))

(declare-fun b!1311869 () Bool)

(assert (=> b!1311869 (= e!841162 (++!3382 (list!4991 (left!11424 (c!214936 (_1!7333 lt!431403)))) (list!4991 (right!11754 (c!214936 (_1!7333 lt!431403))))))))

(declare-fun b!1311868 () Bool)

(assert (=> b!1311868 (= e!841162 (list!4993 (xs!7084 (c!214936 (_1!7333 lt!431403)))))))

(assert (= (and d!369712 c!215365) b!1311866))

(assert (= (and d!369712 (not c!215365)) b!1311867))

(assert (= (and b!1311867 c!215366) b!1311868))

(assert (= (and b!1311867 (not c!215366)) b!1311869))

(declare-fun m!1464613 () Bool)

(assert (=> b!1311869 m!1464613))

(declare-fun m!1464615 () Bool)

(assert (=> b!1311869 m!1464615))

(assert (=> b!1311869 m!1464613))

(assert (=> b!1311869 m!1464615))

(declare-fun m!1464617 () Bool)

(assert (=> b!1311869 m!1464617))

(declare-fun m!1464619 () Bool)

(assert (=> b!1311868 m!1464619))

(assert (=> d!368978 d!369712))

(assert (=> b!1310390 d!369080))

(declare-fun d!369714 () Bool)

(assert (=> d!369714 (= (apply!2990 (transformation!2299 (rule!4038 (_1!7332 (get!4246 lt!431580)))) (seqFromList!1591 (originalCharacters!3161 (_1!7332 (get!4246 lt!431580))))) (dynLambda!5774 (toValue!3518 (transformation!2299 (rule!4038 (_1!7332 (get!4246 lt!431580))))) (seqFromList!1591 (originalCharacters!3161 (_1!7332 (get!4246 lt!431580))))))))

(declare-fun b_lambda!37741 () Bool)

(assert (=> (not b_lambda!37741) (not d!369714)))

(declare-fun tb!69789 () Bool)

(declare-fun t!118134 () Bool)

(assert (=> (and b!1309934 (= (toValue!3518 (transformation!2299 (h!18686 rules!2550))) (toValue!3518 (transformation!2299 (rule!4038 (_1!7332 (get!4246 lt!431580)))))) t!118134) tb!69789))

(declare-fun result!84672 () Bool)

(assert (=> tb!69789 (= result!84672 (inv!21 (dynLambda!5774 (toValue!3518 (transformation!2299 (rule!4038 (_1!7332 (get!4246 lt!431580))))) (seqFromList!1591 (originalCharacters!3161 (_1!7332 (get!4246 lt!431580)))))))))

(declare-fun m!1464621 () Bool)

(assert (=> tb!69789 m!1464621))

(assert (=> d!369714 t!118134))

(declare-fun b_and!87639 () Bool)

(assert (= b_and!87595 (and (=> t!118134 result!84672) b_and!87639)))

(declare-fun tb!69791 () Bool)

(declare-fun t!118136 () Bool)

(assert (=> (and b!1309933 (= (toValue!3518 (transformation!2299 (rule!4038 t1!34))) (toValue!3518 (transformation!2299 (rule!4038 (_1!7332 (get!4246 lt!431580)))))) t!118136) tb!69791))

(declare-fun result!84674 () Bool)

(assert (= result!84674 result!84672))

(assert (=> d!369714 t!118136))

(declare-fun b_and!87641 () Bool)

(assert (= b_and!87597 (and (=> t!118136 result!84674) b_and!87641)))

(declare-fun tb!69793 () Bool)

(declare-fun t!118138 () Bool)

(assert (=> (and b!1309954 (= (toValue!3518 (transformation!2299 (rule!4038 t2!34))) (toValue!3518 (transformation!2299 (rule!4038 (_1!7332 (get!4246 lt!431580)))))) t!118138) tb!69793))

(declare-fun result!84676 () Bool)

(assert (= result!84676 result!84672))

(assert (=> d!369714 t!118138))

(declare-fun b_and!87643 () Bool)

(assert (= b_and!87599 (and (=> t!118138 result!84676) b_and!87643)))

(declare-fun tb!69795 () Bool)

(declare-fun t!118140 () Bool)

(assert (=> (and b!1310655 (= (toValue!3518 (transformation!2299 (h!18686 (t!118010 rules!2550)))) (toValue!3518 (transformation!2299 (rule!4038 (_1!7332 (get!4246 lt!431580)))))) t!118140) tb!69795))

(declare-fun result!84678 () Bool)

(assert (= result!84678 result!84672))

(assert (=> d!369714 t!118140))

(declare-fun b_and!87645 () Bool)

(assert (= b_and!87601 (and (=> t!118140 result!84678) b_and!87645)))

(assert (=> d!369714 m!1462169))

(declare-fun m!1464623 () Bool)

(assert (=> d!369714 m!1464623))

(assert (=> b!1310390 d!369714))

(declare-fun d!369716 () Bool)

(assert (=> d!369716 (= (seqFromList!1591 (originalCharacters!3161 (_1!7332 (get!4246 lt!431580)))) (fromListB!704 (originalCharacters!3161 (_1!7332 (get!4246 lt!431580)))))))

(declare-fun bs!330009 () Bool)

(assert (= bs!330009 d!369716))

(declare-fun m!1464625 () Bool)

(assert (=> bs!330009 m!1464625))

(assert (=> b!1310390 d!369716))

(declare-fun bs!330010 () Bool)

(declare-fun d!369718 () Bool)

(assert (= bs!330010 (and d!369718 d!369348)))

(declare-fun lambda!53049 () Int)

(assert (=> bs!330010 (= (and (= (toChars!3377 (transformation!2299 (h!18686 rules!2550))) (toChars!3377 (transformation!2299 (rule!4038 t2!34)))) (= (toValue!3518 (transformation!2299 (h!18686 rules!2550))) (toValue!3518 (transformation!2299 (rule!4038 t2!34))))) (= lambda!53049 lambda!53021))))

(assert (=> d!369718 true))

(assert (=> d!369718 (< (dynLambda!5775 order!7987 (toChars!3377 (transformation!2299 (h!18686 rules!2550)))) (dynLambda!5776 order!7989 lambda!53049))))

(assert (=> d!369718 true))

(assert (=> d!369718 (< (dynLambda!5777 order!7991 (toValue!3518 (transformation!2299 (h!18686 rules!2550)))) (dynLambda!5776 order!7989 lambda!53049))))

(assert (=> d!369718 (= (semiInverseModEq!862 (toChars!3377 (transformation!2299 (h!18686 rules!2550))) (toValue!3518 (transformation!2299 (h!18686 rules!2550)))) (Forall!515 lambda!53049))))

(declare-fun bs!330011 () Bool)

(assert (= bs!330011 d!369718))

(declare-fun m!1464627 () Bool)

(assert (=> bs!330011 m!1464627))

(assert (=> d!368854 d!369718))

(declare-fun d!369720 () Bool)

(declare-fun lt!432312 () Int)

(assert (=> d!369720 (= lt!432312 (size!10797 (list!4986 (_2!7333 lt!431654))))))

(assert (=> d!369720 (= lt!432312 (size!10803 (c!214934 (_2!7333 lt!431654))))))

(assert (=> d!369720 (= (size!10791 (_2!7333 lt!431654)) lt!432312)))

(declare-fun bs!330012 () Bool)

(assert (= bs!330012 d!369720))

(assert (=> bs!330012 m!1462469))

(assert (=> bs!330012 m!1462469))

(declare-fun m!1464629 () Bool)

(assert (=> bs!330012 m!1464629))

(declare-fun m!1464631 () Bool)

(assert (=> bs!330012 m!1464631))

(assert (=> b!1310604 d!369720))

(declare-fun d!369722 () Bool)

(declare-fun lt!432313 () Int)

(assert (=> d!369722 (= lt!432313 (size!10797 (list!4986 lt!431409)))))

(assert (=> d!369722 (= lt!432313 (size!10803 (c!214934 lt!431409)))))

(assert (=> d!369722 (= (size!10791 lt!431409) lt!432313)))

(declare-fun bs!330013 () Bool)

(assert (= bs!330013 d!369722))

(assert (=> bs!330013 m!1461623))

(assert (=> bs!330013 m!1461623))

(assert (=> bs!330013 m!1462445))

(declare-fun m!1464633 () Bool)

(assert (=> bs!330013 m!1464633))

(assert (=> b!1310604 d!369722))

(declare-fun d!369724 () Bool)

(declare-fun lt!432314 () Bool)

(assert (=> d!369724 (= lt!432314 (isEmpty!7861 (list!4986 (_2!7333 (lex!829 thiss!19762 rules!2550 (print!768 thiss!19762 (singletonSeq!872 t1!34)))))))))

(assert (=> d!369724 (= lt!432314 (isEmpty!7862 (c!214934 (_2!7333 (lex!829 thiss!19762 rules!2550 (print!768 thiss!19762 (singletonSeq!872 t1!34)))))))))

(assert (=> d!369724 (= (isEmpty!7853 (_2!7333 (lex!829 thiss!19762 rules!2550 (print!768 thiss!19762 (singletonSeq!872 t1!34))))) lt!432314)))

(declare-fun bs!330014 () Bool)

(assert (= bs!330014 d!369724))

(declare-fun m!1464635 () Bool)

(assert (=> bs!330014 m!1464635))

(assert (=> bs!330014 m!1464635))

(declare-fun m!1464637 () Bool)

(assert (=> bs!330014 m!1464637))

(declare-fun m!1464639 () Bool)

(assert (=> bs!330014 m!1464639))

(assert (=> b!1310196 d!369724))

(declare-fun b!1311870 () Bool)

(declare-fun res!588934 () Bool)

(declare-fun e!841164 () Bool)

(assert (=> b!1311870 (=> (not res!588934) (not e!841164))))

(declare-fun lt!432315 () tuple2!12894)

(assert (=> b!1311870 (= res!588934 (= (list!4987 (_1!7333 lt!432315)) (_1!7331 (lexList!532 thiss!19762 rules!2550 (list!4986 (print!768 thiss!19762 (singletonSeq!872 t1!34)))))))))

(declare-fun e!841165 () Bool)

(declare-fun b!1311871 () Bool)

(assert (=> b!1311871 (= e!841165 (= (_2!7333 lt!432315) (print!768 thiss!19762 (singletonSeq!872 t1!34))))))

(declare-fun b!1311872 () Bool)

(assert (=> b!1311872 (= e!841164 (= (list!4986 (_2!7333 lt!432315)) (_2!7331 (lexList!532 thiss!19762 rules!2550 (list!4986 (print!768 thiss!19762 (singletonSeq!872 t1!34)))))))))

(declare-fun d!369726 () Bool)

(assert (=> d!369726 e!841164))

(declare-fun res!588935 () Bool)

(assert (=> d!369726 (=> (not res!588935) (not e!841164))))

(assert (=> d!369726 (= res!588935 e!841165)))

(declare-fun c!215367 () Bool)

(assert (=> d!369726 (= c!215367 (> (size!10798 (_1!7333 lt!432315)) 0))))

(assert (=> d!369726 (= lt!432315 (lexTailRecV2!359 thiss!19762 rules!2550 (print!768 thiss!19762 (singletonSeq!872 t1!34)) (BalanceConc!8677 Empty!4368) (print!768 thiss!19762 (singletonSeq!872 t1!34)) (BalanceConc!8679 Empty!4369)))))

(assert (=> d!369726 (= (lex!829 thiss!19762 rules!2550 (print!768 thiss!19762 (singletonSeq!872 t1!34))) lt!432315)))

(declare-fun b!1311873 () Bool)

(declare-fun e!841166 () Bool)

(assert (=> b!1311873 (= e!841166 (not (isEmpty!7863 (_1!7333 lt!432315))))))

(declare-fun b!1311874 () Bool)

(assert (=> b!1311874 (= e!841165 e!841166)))

(declare-fun res!588936 () Bool)

(assert (=> b!1311874 (= res!588936 (< (size!10791 (_2!7333 lt!432315)) (size!10791 (print!768 thiss!19762 (singletonSeq!872 t1!34)))))))

(assert (=> b!1311874 (=> (not res!588936) (not e!841166))))

(assert (= (and d!369726 c!215367) b!1311874))

(assert (= (and d!369726 (not c!215367)) b!1311871))

(assert (= (and b!1311874 res!588936) b!1311873))

(assert (= (and d!369726 res!588935) b!1311870))

(assert (= (and b!1311870 res!588934) b!1311872))

(declare-fun m!1464641 () Bool)

(assert (=> b!1311874 m!1464641))

(assert (=> b!1311874 m!1461551))

(declare-fun m!1464643 () Bool)

(assert (=> b!1311874 m!1464643))

(declare-fun m!1464645 () Bool)

(assert (=> d!369726 m!1464645))

(assert (=> d!369726 m!1461551))

(assert (=> d!369726 m!1461551))

(declare-fun m!1464647 () Bool)

(assert (=> d!369726 m!1464647))

(declare-fun m!1464649 () Bool)

(assert (=> b!1311872 m!1464649))

(assert (=> b!1311872 m!1461551))

(declare-fun m!1464651 () Bool)

(assert (=> b!1311872 m!1464651))

(assert (=> b!1311872 m!1464651))

(declare-fun m!1464653 () Bool)

(assert (=> b!1311872 m!1464653))

(declare-fun m!1464655 () Bool)

(assert (=> b!1311873 m!1464655))

(declare-fun m!1464657 () Bool)

(assert (=> b!1311870 m!1464657))

(assert (=> b!1311870 m!1461551))

(assert (=> b!1311870 m!1464651))

(assert (=> b!1311870 m!1464651))

(assert (=> b!1311870 m!1464653))

(assert (=> b!1310196 d!369726))

(assert (=> b!1310196 d!368958))

(assert (=> b!1310196 d!368976))

(declare-fun d!369728 () Bool)

(declare-fun res!588941 () Bool)

(declare-fun e!841169 () Bool)

(assert (=> d!369728 (=> (not res!588941) (not e!841169))))

(assert (=> d!369728 (= res!588941 (validRegex!1543 (regex!2299 (h!18686 rules!2550))))))

(assert (=> d!369728 (= (ruleValid!557 thiss!19762 (h!18686 rules!2550)) e!841169)))

(declare-fun b!1311879 () Bool)

(declare-fun res!588942 () Bool)

(assert (=> b!1311879 (=> (not res!588942) (not e!841169))))

(assert (=> b!1311879 (= res!588942 (not (nullable!1141 (regex!2299 (h!18686 rules!2550)))))))

(declare-fun b!1311880 () Bool)

(assert (=> b!1311880 (= e!841169 (not (= (tag!2561 (h!18686 rules!2550)) (String!16182 ""))))))

(assert (= (and d!369728 res!588941) b!1311879))

(assert (= (and b!1311879 res!588942) b!1311880))

(declare-fun m!1464659 () Bool)

(assert (=> d!369728 m!1464659))

(declare-fun m!1464661 () Bool)

(assert (=> b!1311879 m!1464661))

(assert (=> bs!329816 d!369728))

(declare-fun d!369730 () Bool)

(assert (=> d!369730 (= (list!4986 (_2!7333 lt!431647)) (list!4990 (c!214934 (_2!7333 lt!431647))))))

(declare-fun bs!330015 () Bool)

(assert (= bs!330015 d!369730))

(declare-fun m!1464663 () Bool)

(assert (=> bs!330015 m!1464663))

(assert (=> b!1310589 d!369730))

(assert (=> b!1310589 d!368760))

(assert (=> b!1310589 d!368776))

(declare-fun b!1311881 () Bool)

(declare-fun e!841170 () Bool)

(declare-fun e!841175 () Bool)

(assert (=> b!1311881 (= e!841170 e!841175)))

(declare-fun res!588946 () Bool)

(assert (=> b!1311881 (= res!588946 (not (nullable!1141 (reg!3942 (h!18687 (map!2915 rules!2550 lambda!52948))))))))

(assert (=> b!1311881 (=> (not res!588946) (not e!841175))))

(declare-fun b!1311882 () Bool)

(declare-fun e!841173 () Bool)

(declare-fun e!841172 () Bool)

(assert (=> b!1311882 (= e!841173 e!841172)))

(declare-fun res!588945 () Bool)

(assert (=> b!1311882 (=> (not res!588945) (not e!841172))))

(declare-fun call!89328 () Bool)

(assert (=> b!1311882 (= res!588945 call!89328)))

(declare-fun b!1311883 () Bool)

(declare-fun call!89327 () Bool)

(assert (=> b!1311883 (= e!841172 call!89327)))

(declare-fun bm!89322 () Bool)

(declare-fun call!89329 () Bool)

(assert (=> bm!89322 (= call!89327 call!89329)))

(declare-fun b!1311884 () Bool)

(declare-fun res!588947 () Bool)

(assert (=> b!1311884 (=> res!588947 e!841173)))

(assert (=> b!1311884 (= res!588947 (not ((_ is Concat!6003) (h!18687 (map!2915 rules!2550 lambda!52948)))))))

(declare-fun e!841176 () Bool)

(assert (=> b!1311884 (= e!841176 e!841173)))

(declare-fun b!1311885 () Bool)

(assert (=> b!1311885 (= e!841175 call!89329)))

(declare-fun b!1311886 () Bool)

(assert (=> b!1311886 (= e!841170 e!841176)))

(declare-fun c!215368 () Bool)

(assert (=> b!1311886 (= c!215368 ((_ is Union!3613) (h!18687 (map!2915 rules!2550 lambda!52948))))))

(declare-fun c!215369 () Bool)

(declare-fun bm!89323 () Bool)

(assert (=> bm!89323 (= call!89329 (validRegex!1543 (ite c!215369 (reg!3942 (h!18687 (map!2915 rules!2550 lambda!52948))) (ite c!215368 (regTwo!7739 (h!18687 (map!2915 rules!2550 lambda!52948))) (regTwo!7738 (h!18687 (map!2915 rules!2550 lambda!52948)))))))))

(declare-fun d!369732 () Bool)

(declare-fun res!588944 () Bool)

(declare-fun e!841174 () Bool)

(assert (=> d!369732 (=> res!588944 e!841174)))

(assert (=> d!369732 (= res!588944 ((_ is ElementMatch!3613) (h!18687 (map!2915 rules!2550 lambda!52948))))))

(assert (=> d!369732 (= (validRegex!1543 (h!18687 (map!2915 rules!2550 lambda!52948))) e!841174)))

(declare-fun bm!89324 () Bool)

(assert (=> bm!89324 (= call!89328 (validRegex!1543 (ite c!215368 (regOne!7739 (h!18687 (map!2915 rules!2550 lambda!52948))) (regOne!7738 (h!18687 (map!2915 rules!2550 lambda!52948))))))))

(declare-fun b!1311887 () Bool)

(declare-fun e!841171 () Bool)

(assert (=> b!1311887 (= e!841171 call!89327)))

(declare-fun b!1311888 () Bool)

(assert (=> b!1311888 (= e!841174 e!841170)))

(assert (=> b!1311888 (= c!215369 ((_ is Star!3613) (h!18687 (map!2915 rules!2550 lambda!52948))))))

(declare-fun b!1311889 () Bool)

(declare-fun res!588943 () Bool)

(assert (=> b!1311889 (=> (not res!588943) (not e!841171))))

(assert (=> b!1311889 (= res!588943 call!89328)))

(assert (=> b!1311889 (= e!841176 e!841171)))

(assert (= (and d!369732 (not res!588944)) b!1311888))

(assert (= (and b!1311888 c!215369) b!1311881))

(assert (= (and b!1311888 (not c!215369)) b!1311886))

(assert (= (and b!1311881 res!588946) b!1311885))

(assert (= (and b!1311886 c!215368) b!1311889))

(assert (= (and b!1311886 (not c!215368)) b!1311884))

(assert (= (and b!1311889 res!588943) b!1311887))

(assert (= (and b!1311884 (not res!588947)) b!1311882))

(assert (= (and b!1311882 res!588945) b!1311883))

(assert (= (or b!1311889 b!1311882) bm!89324))

(assert (= (or b!1311887 b!1311883) bm!89322))

(assert (= (or b!1311885 bm!89322) bm!89323))

(declare-fun m!1464665 () Bool)

(assert (=> b!1311881 m!1464665))

(declare-fun m!1464667 () Bool)

(assert (=> bm!89323 m!1464667))

(declare-fun m!1464669 () Bool)

(assert (=> bm!89324 m!1464669))

(assert (=> bs!329820 d!369732))

(declare-fun d!369734 () Bool)

(declare-fun nullableFct!261 (Regex!3613) Bool)

(assert (=> d!369734 (= (nullable!1141 lt!431419) (nullableFct!261 lt!431419))))

(declare-fun bs!330016 () Bool)

(assert (= bs!330016 d!369734))

(declare-fun m!1464671 () Bool)

(assert (=> bs!330016 m!1464671))

(assert (=> b!1310480 d!369734))

(declare-fun d!369736 () Bool)

(declare-fun lt!432316 () Int)

(assert (=> d!369736 (>= lt!432316 0)))

(declare-fun e!841177 () Int)

(assert (=> d!369736 (= lt!432316 e!841177)))

(declare-fun c!215370 () Bool)

(assert (=> d!369736 (= c!215370 ((_ is Nil!13283) lt!431613))))

(assert (=> d!369736 (= (size!10797 lt!431613) lt!432316)))

(declare-fun b!1311890 () Bool)

(assert (=> b!1311890 (= e!841177 0)))

(declare-fun b!1311891 () Bool)

(assert (=> b!1311891 (= e!841177 (+ 1 (size!10797 (t!118008 lt!431613))))))

(assert (= (and d!369736 c!215370) b!1311890))

(assert (= (and d!369736 (not c!215370)) b!1311891))

(declare-fun m!1464673 () Bool)

(assert (=> b!1311891 m!1464673))

(assert (=> b!1310487 d!369736))

(assert (=> b!1310487 d!369142))

(declare-fun d!369738 () Bool)

(declare-fun lt!432317 () Int)

(assert (=> d!369738 (>= lt!432317 0)))

(declare-fun e!841178 () Int)

(assert (=> d!369738 (= lt!432317 e!841178)))

(declare-fun c!215371 () Bool)

(assert (=> d!369738 (= c!215371 ((_ is Nil!13283) (getSuffix!469 lt!431412 lt!431414)))))

(assert (=> d!369738 (= (size!10797 (getSuffix!469 lt!431412 lt!431414)) lt!432317)))

(declare-fun b!1311892 () Bool)

(assert (=> b!1311892 (= e!841178 0)))

(declare-fun b!1311893 () Bool)

(assert (=> b!1311893 (= e!841178 (+ 1 (size!10797 (t!118008 (getSuffix!469 lt!431412 lt!431414)))))))

(assert (= (and d!369738 c!215371) b!1311892))

(assert (= (and d!369738 (not c!215371)) b!1311893))

(declare-fun m!1464675 () Bool)

(assert (=> b!1311893 m!1464675))

(assert (=> b!1310487 d!369738))

(declare-fun d!369740 () Bool)

(assert (=> d!369740 (= (inv!17658 (tag!2561 (h!18686 (t!118010 rules!2550)))) (= (mod (str.len (value!75153 (tag!2561 (h!18686 (t!118010 rules!2550))))) 2) 0))))

(assert (=> b!1310654 d!369740))

(declare-fun d!369742 () Bool)

(declare-fun res!588948 () Bool)

(declare-fun e!841179 () Bool)

(assert (=> d!369742 (=> (not res!588948) (not e!841179))))

(assert (=> d!369742 (= res!588948 (semiInverseModEq!862 (toChars!3377 (transformation!2299 (h!18686 (t!118010 rules!2550)))) (toValue!3518 (transformation!2299 (h!18686 (t!118010 rules!2550))))))))

(assert (=> d!369742 (= (inv!17662 (transformation!2299 (h!18686 (t!118010 rules!2550)))) e!841179)))

(declare-fun b!1311894 () Bool)

(assert (=> b!1311894 (= e!841179 (equivClasses!821 (toChars!3377 (transformation!2299 (h!18686 (t!118010 rules!2550)))) (toValue!3518 (transformation!2299 (h!18686 (t!118010 rules!2550))))))))

(assert (= (and d!369742 res!588948) b!1311894))

(declare-fun m!1464677 () Bool)

(assert (=> d!369742 m!1464677))

(declare-fun m!1464679 () Bool)

(assert (=> b!1311894 m!1464679))

(assert (=> b!1310654 d!369742))

(declare-fun d!369744 () Bool)

(assert (=> d!369744 (= (list!4987 (_1!7333 lt!431654)) (list!4991 (c!214936 (_1!7333 lt!431654))))))

(declare-fun bs!330017 () Bool)

(assert (= bs!330017 d!369744))

(declare-fun m!1464681 () Bool)

(assert (=> bs!330017 m!1464681))

(assert (=> b!1310600 d!369744))

(assert (=> b!1310600 d!368980))

(assert (=> b!1310600 d!368982))

(declare-fun b!1311895 () Bool)

(declare-fun e!841180 () List!13349)

(assert (=> b!1311895 (= e!841180 Nil!13283)))

(declare-fun d!369746 () Bool)

(declare-fun c!215372 () Bool)

(assert (=> d!369746 (= c!215372 ((_ is Empty!4368) (c!214934 lt!431415)))))

(assert (=> d!369746 (= (list!4990 (c!214934 lt!431415)) e!841180)))

(declare-fun b!1311898 () Bool)

(declare-fun e!841181 () List!13349)

(assert (=> b!1311898 (= e!841181 (++!3378 (list!4990 (left!11423 (c!214934 lt!431415))) (list!4990 (right!11753 (c!214934 lt!431415)))))))

(declare-fun b!1311896 () Bool)

(assert (=> b!1311896 (= e!841180 e!841181)))

(declare-fun c!215373 () Bool)

(assert (=> b!1311896 (= c!215373 ((_ is Leaf!6714) (c!214934 lt!431415)))))

(declare-fun b!1311897 () Bool)

(assert (=> b!1311897 (= e!841181 (list!4992 (xs!7083 (c!214934 lt!431415))))))

(assert (= (and d!369746 c!215372) b!1311895))

(assert (= (and d!369746 (not c!215372)) b!1311896))

(assert (= (and b!1311896 c!215373) b!1311897))

(assert (= (and b!1311896 (not c!215373)) b!1311898))

(declare-fun m!1464683 () Bool)

(assert (=> b!1311898 m!1464683))

(declare-fun m!1464685 () Bool)

(assert (=> b!1311898 m!1464685))

(assert (=> b!1311898 m!1464683))

(assert (=> b!1311898 m!1464685))

(declare-fun m!1464687 () Bool)

(assert (=> b!1311898 m!1464687))

(declare-fun m!1464689 () Bool)

(assert (=> b!1311897 m!1464689))

(assert (=> d!368776 d!369746))

(declare-fun bs!330018 () Bool)

(declare-fun d!369748 () Bool)

(assert (= bs!330018 (and d!369748 d!368894)))

(declare-fun lambda!53050 () Int)

(assert (=> bs!330018 (= (= lambda!52989 lambda!52950) (= lambda!53050 lambda!52986))))

(declare-fun bs!330019 () Bool)

(assert (= bs!330019 (and d!369748 b!1309937)))

(assert (=> bs!330019 (not (= lambda!53050 lambda!52950))))

(declare-fun bs!330020 () Bool)

(assert (= bs!330020 (and d!369748 d!368896)))

(assert (=> bs!330020 (not (= lambda!53050 lambda!52989))))

(declare-fun bs!330021 () Bool)

(assert (= bs!330021 (and d!369748 d!369652)))

(assert (=> bs!330021 (not (= lambda!53050 lambda!53045))))

(declare-fun bs!330022 () Bool)

(assert (= bs!330022 (and d!369748 b!1309935)))

(assert (=> bs!330022 (not (= lambda!53050 lambda!52951))))

(assert (=> d!369748 true))

(assert (=> d!369748 (< (dynLambda!5766 order!7975 lambda!52989) (dynLambda!5766 order!7975 lambda!53050))))

(assert (=> d!369748 (= (exists!301 rules!2550 lambda!52989) (not (forall!3280 rules!2550 lambda!53050)))))

(declare-fun bs!330023 () Bool)

(assert (= bs!330023 d!369748))

(declare-fun m!1464691 () Bool)

(assert (=> bs!330023 m!1464691))

(assert (=> d!368896 d!369748))

(declare-fun bs!330024 () Bool)

(declare-fun d!369750 () Bool)

(assert (= bs!330024 (and d!369750 d!368894)))

(declare-fun lambda!53053 () Int)

(assert (=> bs!330024 (not (= lambda!53053 lambda!52986))))

(declare-fun bs!330025 () Bool)

(assert (= bs!330025 (and d!369750 b!1309937)))

(assert (=> bs!330025 (not (= lambda!53053 lambda!52950))))

(declare-fun bs!330026 () Bool)

(assert (= bs!330026 (and d!369750 d!368896)))

(assert (=> bs!330026 (= lambda!53053 lambda!52989)))

(declare-fun bs!330027 () Bool)

(assert (= bs!330027 (and d!369750 d!369748)))

(assert (=> bs!330027 (not (= lambda!53053 lambda!53050))))

(declare-fun bs!330028 () Bool)

(assert (= bs!330028 (and d!369750 d!369652)))

(assert (=> bs!330028 (not (= lambda!53053 lambda!53045))))

(declare-fun bs!330029 () Bool)

(assert (= bs!330029 (and d!369750 b!1309935)))

(assert (=> bs!330029 (not (= lambda!53053 lambda!52951))))

(assert (=> d!369750 true))

(assert (=> d!369750 true))

(assert (=> d!369750 (< (dynLambda!5767 order!7977 lambda!52948) (dynLambda!5766 order!7975 lambda!53053))))

(assert (=> d!369750 (exists!301 rules!2550 lambda!53053)))

(assert (=> d!369750 true))

(declare-fun _$24!58 () Unit!19338)

(assert (=> d!369750 (= (choose!8011 rules!2550 lambda!52948 lt!431413) _$24!58)))

(declare-fun bs!330030 () Bool)

(assert (= bs!330030 d!369750))

(declare-fun m!1464693 () Bool)

(assert (=> bs!330030 m!1464693))

(assert (=> d!368896 d!369750))

(assert (=> d!368896 d!368806))

(assert (=> d!368896 d!368810))

(declare-fun d!369752 () Bool)

(assert (=> d!369752 true))

(assert (=> d!369752 true))

(declare-fun res!588951 () Bool)

(assert (=> d!369752 (= (choose!8013 lambda!52947) res!588951)))

(assert (=> d!368936 d!369752))

(declare-fun b!1311913 () Bool)

(declare-fun res!588968 () Bool)

(declare-fun e!841187 () Bool)

(assert (=> b!1311913 (=> (not res!588968) (not e!841187))))

(declare-fun height!623 (Conc!4369) Int)

(assert (=> b!1311913 (= res!588968 (<= (- (height!623 (left!11424 (c!214936 lt!431650))) (height!623 (right!11754 (c!214936 lt!431650)))) 1))))

(declare-fun b!1311914 () Bool)

(declare-fun res!588964 () Bool)

(assert (=> b!1311914 (=> (not res!588964) (not e!841187))))

(assert (=> b!1311914 (= res!588964 (isBalanced!1268 (left!11424 (c!214936 lt!431650))))))

(declare-fun b!1311915 () Bool)

(declare-fun e!841186 () Bool)

(assert (=> b!1311915 (= e!841186 e!841187)))

(declare-fun res!588969 () Bool)

(assert (=> b!1311915 (=> (not res!588969) (not e!841187))))

(assert (=> b!1311915 (= res!588969 (<= (- 1) (- (height!623 (left!11424 (c!214936 lt!431650))) (height!623 (right!11754 (c!214936 lt!431650))))))))

(declare-fun d!369754 () Bool)

(declare-fun res!588965 () Bool)

(assert (=> d!369754 (=> res!588965 e!841186)))

(assert (=> d!369754 (= res!588965 (not ((_ is Node!4369) (c!214936 lt!431650))))))

(assert (=> d!369754 (= (isBalanced!1268 (c!214936 lt!431650)) e!841186)))

(declare-fun b!1311916 () Bool)

(declare-fun res!588966 () Bool)

(assert (=> b!1311916 (=> (not res!588966) (not e!841187))))

(assert (=> b!1311916 (= res!588966 (isBalanced!1268 (right!11754 (c!214936 lt!431650))))))

(declare-fun b!1311917 () Bool)

(declare-fun res!588967 () Bool)

(assert (=> b!1311917 (=> (not res!588967) (not e!841187))))

(assert (=> b!1311917 (= res!588967 (not (isEmpty!7866 (left!11424 (c!214936 lt!431650)))))))

(declare-fun b!1311918 () Bool)

(assert (=> b!1311918 (= e!841187 (not (isEmpty!7866 (right!11754 (c!214936 lt!431650)))))))

(assert (= (and d!369754 (not res!588965)) b!1311915))

(assert (= (and b!1311915 res!588969) b!1311913))

(assert (= (and b!1311913 res!588968) b!1311914))

(assert (= (and b!1311914 res!588964) b!1311916))

(assert (= (and b!1311916 res!588966) b!1311917))

(assert (= (and b!1311917 res!588967) b!1311918))

(declare-fun m!1464695 () Bool)

(assert (=> b!1311918 m!1464695))

(declare-fun m!1464697 () Bool)

(assert (=> b!1311914 m!1464697))

(declare-fun m!1464699 () Bool)

(assert (=> b!1311917 m!1464699))

(declare-fun m!1464701 () Bool)

(assert (=> b!1311915 m!1464701))

(declare-fun m!1464703 () Bool)

(assert (=> b!1311915 m!1464703))

(declare-fun m!1464705 () Bool)

(assert (=> b!1311916 m!1464705))

(assert (=> b!1311913 m!1464701))

(assert (=> b!1311913 m!1464703))

(assert (=> b!1310594 d!369754))

(declare-fun bs!330031 () Bool)

(declare-fun d!369756 () Bool)

(assert (= bs!330031 (and d!369756 d!369348)))

(declare-fun lambda!53054 () Int)

(assert (=> bs!330031 (= (and (= (toChars!3377 (transformation!2299 (rule!4038 t1!34))) (toChars!3377 (transformation!2299 (rule!4038 t2!34)))) (= (toValue!3518 (transformation!2299 (rule!4038 t1!34))) (toValue!3518 (transformation!2299 (rule!4038 t2!34))))) (= lambda!53054 lambda!53021))))

(declare-fun bs!330032 () Bool)

(assert (= bs!330032 (and d!369756 d!369718)))

(assert (=> bs!330032 (= (and (= (toChars!3377 (transformation!2299 (rule!4038 t1!34))) (toChars!3377 (transformation!2299 (h!18686 rules!2550)))) (= (toValue!3518 (transformation!2299 (rule!4038 t1!34))) (toValue!3518 (transformation!2299 (h!18686 rules!2550))))) (= lambda!53054 lambda!53049))))

(assert (=> d!369756 true))

(assert (=> d!369756 (< (dynLambda!5775 order!7987 (toChars!3377 (transformation!2299 (rule!4038 t1!34)))) (dynLambda!5776 order!7989 lambda!53054))))

(assert (=> d!369756 true))

(assert (=> d!369756 (< (dynLambda!5777 order!7991 (toValue!3518 (transformation!2299 (rule!4038 t1!34)))) (dynLambda!5776 order!7989 lambda!53054))))

(assert (=> d!369756 (= (semiInverseModEq!862 (toChars!3377 (transformation!2299 (rule!4038 t1!34))) (toValue!3518 (transformation!2299 (rule!4038 t1!34)))) (Forall!515 lambda!53054))))

(declare-fun bs!330033 () Bool)

(assert (= bs!330033 d!369756))

(declare-fun m!1464707 () Bool)

(assert (=> bs!330033 m!1464707))

(assert (=> d!368890 d!369756))

(assert (=> d!368950 d!368894))

(declare-fun bs!330034 () Bool)

(declare-fun d!369758 () Bool)

(assert (= bs!330034 (and d!369758 d!368894)))

(declare-fun lambda!53057 () Int)

(assert (=> bs!330034 (not (= lambda!53057 lambda!52986))))

(declare-fun bs!330035 () Bool)

(assert (= bs!330035 (and d!369758 b!1309937)))

(assert (=> bs!330035 (not (= lambda!53057 lambda!52950))))

(declare-fun bs!330036 () Bool)

(assert (= bs!330036 (and d!369758 d!368896)))

(assert (=> bs!330036 (not (= lambda!53057 lambda!52989))))

(declare-fun bs!330037 () Bool)

(assert (= bs!330037 (and d!369758 d!369748)))

(assert (=> bs!330037 (not (= lambda!53057 lambda!53050))))

(declare-fun bs!330038 () Bool)

(assert (= bs!330038 (and d!369758 b!1309935)))

(assert (=> bs!330038 (= lambda!53057 lambda!52951)))

(declare-fun bs!330039 () Bool)

(assert (= bs!330039 (and d!369758 d!369750)))

(assert (=> bs!330039 (not (= lambda!53057 lambda!53053))))

(declare-fun bs!330040 () Bool)

(assert (= bs!330040 (and d!369758 d!369652)))

(assert (=> bs!330040 (= lambda!53057 lambda!53045)))

(assert (=> d!369758 true))

(declare-fun lt!432320 () Bool)

(assert (=> d!369758 (= lt!432320 (rulesValidInductive!720 thiss!19762 rules!2550))))

(assert (=> d!369758 (= lt!432320 (forall!3280 rules!2550 lambda!53057))))

(assert (=> d!369758 (= (rulesValid!831 thiss!19762 rules!2550) lt!432320)))

(declare-fun bs!330041 () Bool)

(assert (= bs!330041 d!369758))

(assert (=> bs!330041 m!1462067))

(declare-fun m!1464709 () Bool)

(assert (=> bs!330041 m!1464709))

(assert (=> d!368830 d!369758))

(assert (=> b!1310363 d!369004))

(declare-fun d!369760 () Bool)

(declare-fun lostCauseFct!110 (Regex!3613) Bool)

(assert (=> d!369760 (= (lostCause!269 lt!431419) (lostCauseFct!110 lt!431419))))

(declare-fun bs!330042 () Bool)

(assert (= bs!330042 d!369760))

(declare-fun m!1464711 () Bool)

(assert (=> bs!330042 m!1464711))

(assert (=> b!1310368 d!369760))

(declare-fun d!369762 () Bool)

(declare-fun lt!432321 () Int)

(assert (=> d!369762 (= lt!432321 (size!10796 (list!4987 (_1!7333 lt!431647))))))

(assert (=> d!369762 (= lt!432321 (size!10805 (c!214936 (_1!7333 lt!431647))))))

(assert (=> d!369762 (= (size!10798 (_1!7333 lt!431647)) lt!432321)))

(declare-fun bs!330043 () Bool)

(assert (= bs!330043 d!369762))

(assert (=> bs!330043 m!1462427))

(assert (=> bs!330043 m!1462427))

(declare-fun m!1464713 () Bool)

(assert (=> bs!330043 m!1464713))

(declare-fun m!1464715 () Bool)

(assert (=> bs!330043 m!1464715))

(assert (=> d!368974 d!369762))

(declare-fun lt!432322 () Option!2566)

(declare-fun b!1311919 () Bool)

(declare-fun lt!432354 () tuple2!12894)

(assert (=> b!1311919 (= lt!432354 (lexRec!261 thiss!19762 rules!2550 (_2!7336 (v!21092 lt!432322))))))

(declare-fun e!841190 () tuple2!12894)

(assert (=> b!1311919 (= e!841190 (tuple2!12895 (prepend!346 (_1!7333 lt!432354) (_1!7336 (v!21092 lt!432322))) (_2!7333 lt!432354)))))

(declare-fun e!841191 () tuple2!12894)

(declare-fun lt!432327 () Option!2566)

(declare-fun lt!432337 () BalanceConc!8676)

(declare-fun b!1311920 () Bool)

(assert (=> b!1311920 (= e!841191 (lexTailRecV2!359 thiss!19762 rules!2550 lt!431415 lt!432337 (_2!7336 (v!21092 lt!432327)) (append!382 (BalanceConc!8679 Empty!4369) (_1!7336 (v!21092 lt!432327)))))))

(declare-fun lt!432330 () tuple2!12894)

(assert (=> b!1311920 (= lt!432330 (lexRec!261 thiss!19762 rules!2550 (_2!7336 (v!21092 lt!432327))))))

(declare-fun lt!432345 () List!13349)

(assert (=> b!1311920 (= lt!432345 (list!4986 (BalanceConc!8677 Empty!4368)))))

(declare-fun lt!432324 () List!13349)

(assert (=> b!1311920 (= lt!432324 (list!4986 (charsOf!1271 (_1!7336 (v!21092 lt!432327)))))))

(declare-fun lt!432329 () List!13349)

(assert (=> b!1311920 (= lt!432329 (list!4986 (_2!7336 (v!21092 lt!432327))))))

(declare-fun lt!432325 () Unit!19338)

(assert (=> b!1311920 (= lt!432325 (lemmaConcatAssociativity!821 lt!432345 lt!432324 lt!432329))))

(assert (=> b!1311920 (= (++!3378 (++!3378 lt!432345 lt!432324) lt!432329) (++!3378 lt!432345 (++!3378 lt!432324 lt!432329)))))

(declare-fun lt!432341 () Unit!19338)

(assert (=> b!1311920 (= lt!432341 lt!432325)))

(declare-fun lt!432340 () Option!2566)

(assert (=> b!1311920 (= lt!432340 (maxPrefixZipperSequence!534 thiss!19762 rules!2550 lt!431415))))

(declare-fun c!215374 () Bool)

(assert (=> b!1311920 (= c!215374 ((_ is Some!2565) lt!432340))))

(declare-fun e!841188 () tuple2!12894)

(assert (=> b!1311920 (= (lexRec!261 thiss!19762 rules!2550 lt!431415) e!841188)))

(declare-fun lt!432352 () Unit!19338)

(declare-fun Unit!19354 () Unit!19338)

(assert (=> b!1311920 (= lt!432352 Unit!19354)))

(declare-fun lt!432343 () List!13350)

(assert (=> b!1311920 (= lt!432343 (list!4987 (BalanceConc!8679 Empty!4369)))))

(declare-fun lt!432344 () List!13350)

(assert (=> b!1311920 (= lt!432344 (Cons!13284 (_1!7336 (v!21092 lt!432327)) Nil!13284))))

(declare-fun lt!432346 () List!13350)

(assert (=> b!1311920 (= lt!432346 (list!4987 (_1!7333 lt!432330)))))

(declare-fun lt!432331 () Unit!19338)

(assert (=> b!1311920 (= lt!432331 (lemmaConcatAssociativity!822 lt!432343 lt!432344 lt!432346))))

(assert (=> b!1311920 (= (++!3382 (++!3382 lt!432343 lt!432344) lt!432346) (++!3382 lt!432343 (++!3382 lt!432344 lt!432346)))))

(declare-fun lt!432339 () Unit!19338)

(assert (=> b!1311920 (= lt!432339 lt!432331)))

(declare-fun lt!432335 () List!13349)

(assert (=> b!1311920 (= lt!432335 (++!3378 (list!4986 (BalanceConc!8677 Empty!4368)) (list!4986 (charsOf!1271 (_1!7336 (v!21092 lt!432327))))))))

(declare-fun lt!432350 () List!13349)

(assert (=> b!1311920 (= lt!432350 (list!4986 (_2!7336 (v!21092 lt!432327))))))

(declare-fun lt!432353 () List!13350)

(assert (=> b!1311920 (= lt!432353 (list!4987 (append!382 (BalanceConc!8679 Empty!4369) (_1!7336 (v!21092 lt!432327)))))))

(declare-fun lt!432326 () Unit!19338)

(assert (=> b!1311920 (= lt!432326 (lemmaLexThenLexPrefix!176 thiss!19762 rules!2550 lt!432335 lt!432350 lt!432353 (list!4987 (_1!7333 lt!432330)) (list!4986 (_2!7333 lt!432330))))))

(assert (=> b!1311920 (= (lexList!532 thiss!19762 rules!2550 lt!432335) (tuple2!12891 lt!432353 Nil!13283))))

(declare-fun lt!432338 () Unit!19338)

(assert (=> b!1311920 (= lt!432338 lt!432326)))

(declare-fun lt!432328 () BalanceConc!8676)

(assert (=> b!1311920 (= lt!432328 (++!3380 (BalanceConc!8677 Empty!4368) (charsOf!1271 (_1!7336 (v!21092 lt!432327)))))))

(assert (=> b!1311920 (= lt!432322 (maxPrefixZipperSequence!534 thiss!19762 rules!2550 lt!432328))))

(declare-fun c!215376 () Bool)

(assert (=> b!1311920 (= c!215376 ((_ is Some!2565) lt!432322))))

(assert (=> b!1311920 (= (lexRec!261 thiss!19762 rules!2550 (++!3380 (BalanceConc!8677 Empty!4368) (charsOf!1271 (_1!7336 (v!21092 lt!432327))))) e!841190)))

(declare-fun lt!432349 () Unit!19338)

(declare-fun Unit!19355 () Unit!19338)

(assert (=> b!1311920 (= lt!432349 Unit!19355)))

(assert (=> b!1311920 (= lt!432337 (++!3380 (BalanceConc!8677 Empty!4368) (charsOf!1271 (_1!7336 (v!21092 lt!432327)))))))

(declare-fun lt!432355 () List!13349)

(assert (=> b!1311920 (= lt!432355 (list!4986 lt!432337))))

(declare-fun lt!432347 () List!13349)

(assert (=> b!1311920 (= lt!432347 (list!4986 (_2!7336 (v!21092 lt!432327))))))

(declare-fun lt!432351 () Unit!19338)

(assert (=> b!1311920 (= lt!432351 (lemmaConcatTwoListThenFSndIsSuffix!217 lt!432355 lt!432347))))

(assert (=> b!1311920 (isSuffix!239 lt!432347 (++!3378 lt!432355 lt!432347))))

(declare-fun lt!432336 () Unit!19338)

(assert (=> b!1311920 (= lt!432336 lt!432351)))

(declare-fun b!1311921 () Bool)

(assert (=> b!1311921 (= e!841191 (tuple2!12895 (BalanceConc!8679 Empty!4369) lt!431415))))

(declare-fun b!1311922 () Bool)

(assert (=> b!1311922 (= e!841190 (tuple2!12895 (BalanceConc!8679 Empty!4369) lt!432328))))

(declare-fun b!1311923 () Bool)

(assert (=> b!1311923 (= e!841188 (tuple2!12895 (BalanceConc!8679 Empty!4369) lt!431415))))

(declare-fun b!1311924 () Bool)

(declare-fun lt!432323 () tuple2!12894)

(assert (=> b!1311924 (= lt!432323 (lexRec!261 thiss!19762 rules!2550 (_2!7336 (v!21092 lt!432340))))))

(assert (=> b!1311924 (= e!841188 (tuple2!12895 (prepend!346 (_1!7333 lt!432323) (_1!7336 (v!21092 lt!432340))) (_2!7333 lt!432323)))))

(declare-fun d!369764 () Bool)

(declare-fun e!841189 () Bool)

(assert (=> d!369764 e!841189))

(declare-fun res!588970 () Bool)

(assert (=> d!369764 (=> (not res!588970) (not e!841189))))

(declare-fun lt!432332 () tuple2!12894)

(assert (=> d!369764 (= res!588970 (= (list!4987 (_1!7333 lt!432332)) (list!4987 (_1!7333 (lexRec!261 thiss!19762 rules!2550 lt!431415)))))))

(assert (=> d!369764 (= lt!432332 e!841191)))

(declare-fun c!215375 () Bool)

(assert (=> d!369764 (= c!215375 ((_ is Some!2565) lt!432327))))

(assert (=> d!369764 (= lt!432327 (maxPrefixZipperSequenceV2!206 thiss!19762 rules!2550 lt!431415 lt!431415))))

(declare-fun lt!432333 () Unit!19338)

(declare-fun lt!432348 () Unit!19338)

(assert (=> d!369764 (= lt!432333 lt!432348)))

(declare-fun lt!432334 () List!13349)

(declare-fun lt!432342 () List!13349)

(assert (=> d!369764 (isSuffix!239 lt!432334 (++!3378 lt!432342 lt!432334))))

(assert (=> d!369764 (= lt!432348 (lemmaConcatTwoListThenFSndIsSuffix!217 lt!432342 lt!432334))))

(assert (=> d!369764 (= lt!432334 (list!4986 lt!431415))))

(assert (=> d!369764 (= lt!432342 (list!4986 (BalanceConc!8677 Empty!4368)))))

(assert (=> d!369764 (= (lexTailRecV2!359 thiss!19762 rules!2550 lt!431415 (BalanceConc!8677 Empty!4368) lt!431415 (BalanceConc!8679 Empty!4369)) lt!432332)))

(declare-fun b!1311925 () Bool)

(assert (=> b!1311925 (= e!841189 (= (list!4986 (_2!7333 lt!432332)) (list!4986 (_2!7333 (lexRec!261 thiss!19762 rules!2550 lt!431415)))))))

(assert (= (and d!369764 c!215375) b!1311920))

(assert (= (and d!369764 (not c!215375)) b!1311921))

(assert (= (and b!1311920 c!215374) b!1311924))

(assert (= (and b!1311920 (not c!215374)) b!1311923))

(assert (= (and b!1311920 c!215376) b!1311919))

(assert (= (and b!1311920 (not c!215376)) b!1311922))

(assert (= (and d!369764 res!588970) b!1311925))

(declare-fun m!1464717 () Bool)

(assert (=> b!1311924 m!1464717))

(declare-fun m!1464719 () Bool)

(assert (=> b!1311924 m!1464719))

(declare-fun m!1464721 () Bool)

(assert (=> d!369764 m!1464721))

(declare-fun m!1464723 () Bool)

(assert (=> d!369764 m!1464723))

(assert (=> d!369764 m!1462927))

(declare-fun m!1464725 () Bool)

(assert (=> d!369764 m!1464725))

(declare-fun m!1464727 () Bool)

(assert (=> d!369764 m!1464727))

(assert (=> d!369764 m!1464721))

(assert (=> d!369764 m!1461515))

(declare-fun m!1464729 () Bool)

(assert (=> d!369764 m!1464729))

(declare-fun m!1464731 () Bool)

(assert (=> d!369764 m!1464731))

(declare-fun m!1464733 () Bool)

(assert (=> d!369764 m!1464733))

(declare-fun m!1464735 () Bool)

(assert (=> b!1311919 m!1464735))

(declare-fun m!1464737 () Bool)

(assert (=> b!1311919 m!1464737))

(declare-fun m!1464739 () Bool)

(assert (=> b!1311920 m!1464739))

(declare-fun m!1464741 () Bool)

(assert (=> b!1311920 m!1464741))

(declare-fun m!1464743 () Bool)

(assert (=> b!1311920 m!1464743))

(declare-fun m!1464745 () Bool)

(assert (=> b!1311920 m!1464745))

(declare-fun m!1464747 () Bool)

(assert (=> b!1311920 m!1464747))

(declare-fun m!1464749 () Bool)

(assert (=> b!1311920 m!1464749))

(declare-fun m!1464751 () Bool)

(assert (=> b!1311920 m!1464751))

(assert (=> b!1311920 m!1464741))

(assert (=> b!1311920 m!1464371))

(assert (=> b!1311920 m!1464747))

(declare-fun m!1464753 () Bool)

(assert (=> b!1311920 m!1464753))

(declare-fun m!1464755 () Bool)

(assert (=> b!1311920 m!1464755))

(declare-fun m!1464757 () Bool)

(assert (=> b!1311920 m!1464757))

(declare-fun m!1464759 () Bool)

(assert (=> b!1311920 m!1464759))

(declare-fun m!1464761 () Bool)

(assert (=> b!1311920 m!1464761))

(declare-fun m!1464763 () Bool)

(assert (=> b!1311920 m!1464763))

(declare-fun m!1464765 () Bool)

(assert (=> b!1311920 m!1464765))

(declare-fun m!1464767 () Bool)

(assert (=> b!1311920 m!1464767))

(declare-fun m!1464769 () Bool)

(assert (=> b!1311920 m!1464769))

(declare-fun m!1464771 () Bool)

(assert (=> b!1311920 m!1464771))

(assert (=> b!1311920 m!1462927))

(assert (=> b!1311920 m!1464727))

(declare-fun m!1464773 () Bool)

(assert (=> b!1311920 m!1464773))

(declare-fun m!1464775 () Bool)

(assert (=> b!1311920 m!1464775))

(assert (=> b!1311920 m!1464751))

(declare-fun m!1464777 () Bool)

(assert (=> b!1311920 m!1464777))

(assert (=> b!1311920 m!1464739))

(assert (=> b!1311920 m!1462927))

(declare-fun m!1464779 () Bool)

(assert (=> b!1311920 m!1464779))

(declare-fun m!1464781 () Bool)

(assert (=> b!1311920 m!1464781))

(declare-fun m!1464783 () Bool)

(assert (=> b!1311920 m!1464783))

(declare-fun m!1464785 () Bool)

(assert (=> b!1311920 m!1464785))

(declare-fun m!1464787 () Bool)

(assert (=> b!1311920 m!1464787))

(assert (=> b!1311920 m!1464757))

(assert (=> b!1311920 m!1464757))

(assert (=> b!1311920 m!1464779))

(assert (=> b!1311920 m!1464763))

(declare-fun m!1464789 () Bool)

(assert (=> b!1311920 m!1464789))

(assert (=> b!1311920 m!1464783))

(declare-fun m!1464791 () Bool)

(assert (=> b!1311920 m!1464791))

(declare-fun m!1464793 () Bool)

(assert (=> b!1311920 m!1464793))

(assert (=> b!1311920 m!1464773))

(assert (=> b!1311920 m!1464763))

(assert (=> b!1311920 m!1464769))

(assert (=> b!1311920 m!1464759))

(declare-fun m!1464795 () Bool)

(assert (=> b!1311920 m!1464795))

(declare-fun m!1464797 () Bool)

(assert (=> b!1311920 m!1464797))

(declare-fun m!1464799 () Bool)

(assert (=> b!1311925 m!1464799))

(assert (=> b!1311925 m!1464727))

(declare-fun m!1464801 () Bool)

(assert (=> b!1311925 m!1464801))

(assert (=> d!368974 d!369764))

(declare-fun b!1311928 () Bool)

(declare-fun e!841192 () Bool)

(assert (=> b!1311928 (= e!841192 (isPrefix!1068 (tail!1874 lt!431414) (tail!1874 lt!431619)))))

(declare-fun b!1311927 () Bool)

(declare-fun res!588971 () Bool)

(assert (=> b!1311927 (=> (not res!588971) (not e!841192))))

(assert (=> b!1311927 (= res!588971 (= (head!2255 lt!431414) (head!2255 lt!431619)))))

(declare-fun b!1311929 () Bool)

(declare-fun e!841194 () Bool)

(assert (=> b!1311929 (= e!841194 (>= (size!10797 lt!431619) (size!10797 lt!431414)))))

(declare-fun d!369766 () Bool)

(assert (=> d!369766 e!841194))

(declare-fun res!588973 () Bool)

(assert (=> d!369766 (=> res!588973 e!841194)))

(declare-fun lt!432356 () Bool)

(assert (=> d!369766 (= res!588973 (not lt!432356))))

(declare-fun e!841193 () Bool)

(assert (=> d!369766 (= lt!432356 e!841193)))

(declare-fun res!588974 () Bool)

(assert (=> d!369766 (=> res!588974 e!841193)))

(assert (=> d!369766 (= res!588974 ((_ is Nil!13283) lt!431414))))

(assert (=> d!369766 (= (isPrefix!1068 lt!431414 lt!431619) lt!432356)))

(declare-fun b!1311926 () Bool)

(assert (=> b!1311926 (= e!841193 e!841192)))

(declare-fun res!588972 () Bool)

(assert (=> b!1311926 (=> (not res!588972) (not e!841192))))

(assert (=> b!1311926 (= res!588972 (not ((_ is Nil!13283) lt!431619)))))

(assert (= (and d!369766 (not res!588974)) b!1311926))

(assert (= (and b!1311926 res!588972) b!1311927))

(assert (= (and b!1311927 res!588971) b!1311928))

(assert (= (and d!369766 (not res!588973)) b!1311929))

(assert (=> b!1311928 m!1462117))

(declare-fun m!1464803 () Bool)

(assert (=> b!1311928 m!1464803))

(assert (=> b!1311928 m!1462117))

(assert (=> b!1311928 m!1464803))

(declare-fun m!1464805 () Bool)

(assert (=> b!1311928 m!1464805))

(assert (=> b!1311927 m!1462113))

(declare-fun m!1464807 () Bool)

(assert (=> b!1311927 m!1464807))

(declare-fun m!1464809 () Bool)

(assert (=> b!1311929 m!1464809))

(assert (=> b!1311929 m!1462293))

(assert (=> b!1310663 d!369766))

(declare-fun b!1311930 () Bool)

(declare-fun res!588979 () Bool)

(declare-fun e!841196 () Bool)

(assert (=> b!1311930 (=> (not res!588979) (not e!841196))))

(assert (=> b!1311930 (= res!588979 (<= (- (height!623 (left!11424 (c!214936 lt!431656))) (height!623 (right!11754 (c!214936 lt!431656)))) 1))))

(declare-fun b!1311931 () Bool)

(declare-fun res!588975 () Bool)

(assert (=> b!1311931 (=> (not res!588975) (not e!841196))))

(assert (=> b!1311931 (= res!588975 (isBalanced!1268 (left!11424 (c!214936 lt!431656))))))

(declare-fun b!1311932 () Bool)

(declare-fun e!841195 () Bool)

(assert (=> b!1311932 (= e!841195 e!841196)))

(declare-fun res!588980 () Bool)

(assert (=> b!1311932 (=> (not res!588980) (not e!841196))))

(assert (=> b!1311932 (= res!588980 (<= (- 1) (- (height!623 (left!11424 (c!214936 lt!431656))) (height!623 (right!11754 (c!214936 lt!431656))))))))

(declare-fun d!369768 () Bool)

(declare-fun res!588976 () Bool)

(assert (=> d!369768 (=> res!588976 e!841195)))

(assert (=> d!369768 (= res!588976 (not ((_ is Node!4369) (c!214936 lt!431656))))))

(assert (=> d!369768 (= (isBalanced!1268 (c!214936 lt!431656)) e!841195)))

(declare-fun b!1311933 () Bool)

(declare-fun res!588977 () Bool)

(assert (=> b!1311933 (=> (not res!588977) (not e!841196))))

(assert (=> b!1311933 (= res!588977 (isBalanced!1268 (right!11754 (c!214936 lt!431656))))))

(declare-fun b!1311934 () Bool)

(declare-fun res!588978 () Bool)

(assert (=> b!1311934 (=> (not res!588978) (not e!841196))))

(assert (=> b!1311934 (= res!588978 (not (isEmpty!7866 (left!11424 (c!214936 lt!431656)))))))

(declare-fun b!1311935 () Bool)

(assert (=> b!1311935 (= e!841196 (not (isEmpty!7866 (right!11754 (c!214936 lt!431656)))))))

(assert (= (and d!369768 (not res!588976)) b!1311932))

(assert (= (and b!1311932 res!588980) b!1311930))

(assert (= (and b!1311930 res!588979) b!1311931))

(assert (= (and b!1311931 res!588975) b!1311933))

(assert (= (and b!1311933 res!588977) b!1311934))

(assert (= (and b!1311934 res!588978) b!1311935))

(declare-fun m!1464811 () Bool)

(assert (=> b!1311935 m!1464811))

(declare-fun m!1464813 () Bool)

(assert (=> b!1311931 m!1464813))

(declare-fun m!1464815 () Bool)

(assert (=> b!1311934 m!1464815))

(declare-fun m!1464817 () Bool)

(assert (=> b!1311932 m!1464817))

(declare-fun m!1464819 () Bool)

(assert (=> b!1311932 m!1464819))

(declare-fun m!1464821 () Bool)

(assert (=> b!1311933 m!1464821))

(assert (=> b!1311930 m!1464817))

(assert (=> b!1311930 m!1464819))

(assert (=> b!1310605 d!369768))

(declare-fun lt!432357 () Bool)

(declare-fun d!369770 () Bool)

(assert (=> d!369770 (= lt!432357 (select (content!1857 (map!2915 rules!2550 lambda!52948)) lt!431513))))

(declare-fun e!841198 () Bool)

(assert (=> d!369770 (= lt!432357 e!841198)))

(declare-fun res!588981 () Bool)

(assert (=> d!369770 (=> (not res!588981) (not e!841198))))

(assert (=> d!369770 (= res!588981 ((_ is Cons!13286) (map!2915 rules!2550 lambda!52948)))))

(assert (=> d!369770 (= (contains!2307 (map!2915 rules!2550 lambda!52948) lt!431513) lt!432357)))

(declare-fun b!1311936 () Bool)

(declare-fun e!841197 () Bool)

(assert (=> b!1311936 (= e!841198 e!841197)))

(declare-fun res!588982 () Bool)

(assert (=> b!1311936 (=> res!588982 e!841197)))

(assert (=> b!1311936 (= res!588982 (= (h!18687 (map!2915 rules!2550 lambda!52948)) lt!431513))))

(declare-fun b!1311937 () Bool)

(assert (=> b!1311937 (= e!841197 (contains!2307 (t!118011 (map!2915 rules!2550 lambda!52948)) lt!431513))))

(assert (= (and d!369770 res!588981) b!1311936))

(assert (= (and b!1311936 (not res!588982)) b!1311937))

(assert (=> d!369770 m!1461581))

(assert (=> d!369770 m!1461887))

(declare-fun m!1464823 () Bool)

(assert (=> d!369770 m!1464823))

(declare-fun m!1464825 () Bool)

(assert (=> b!1311937 m!1464825))

(assert (=> b!1310229 d!369770))

(declare-fun d!369772 () Bool)

(declare-fun lt!432358 () C!7516)

(assert (=> d!369772 (contains!2308 (list!4986 lt!431405) lt!432358)))

(declare-fun e!841199 () C!7516)

(assert (=> d!369772 (= lt!432358 e!841199)))

(declare-fun c!215377 () Bool)

(assert (=> d!369772 (= c!215377 (= 0 0))))

(declare-fun e!841200 () Bool)

(assert (=> d!369772 e!841200))

(declare-fun res!588983 () Bool)

(assert (=> d!369772 (=> (not res!588983) (not e!841200))))

(assert (=> d!369772 (= res!588983 (<= 0 0))))

(assert (=> d!369772 (= (apply!2992 (list!4986 lt!431405) 0) lt!432358)))

(declare-fun b!1311938 () Bool)

(assert (=> b!1311938 (= e!841200 (< 0 (size!10797 (list!4986 lt!431405))))))

(declare-fun b!1311939 () Bool)

(assert (=> b!1311939 (= e!841199 (head!2255 (list!4986 lt!431405)))))

(declare-fun b!1311940 () Bool)

(assert (=> b!1311940 (= e!841199 (apply!2992 (tail!1874 (list!4986 lt!431405)) (- 0 1)))))

(assert (= (and d!369772 res!588983) b!1311938))

(assert (= (and d!369772 c!215377) b!1311939))

(assert (= (and d!369772 (not c!215377)) b!1311940))

(assert (=> d!369772 m!1461537))

(declare-fun m!1464827 () Bool)

(assert (=> d!369772 m!1464827))

(assert (=> b!1311938 m!1461537))

(assert (=> b!1311938 m!1462051))

(assert (=> b!1311939 m!1461537))

(assert (=> b!1311939 m!1464483))

(assert (=> b!1311940 m!1461537))

(assert (=> b!1311940 m!1464479))

(assert (=> b!1311940 m!1464479))

(declare-fun m!1464829 () Bool)

(assert (=> b!1311940 m!1464829))

(assert (=> d!368876 d!369772))

(assert (=> d!368876 d!368862))

(declare-fun b!1311941 () Bool)

(declare-fun e!841203 () C!7516)

(declare-fun call!89330 () C!7516)

(assert (=> b!1311941 (= e!841203 call!89330)))

(declare-fun bm!89325 () Bool)

(declare-fun c!215380 () Bool)

(declare-fun c!215379 () Bool)

(assert (=> bm!89325 (= c!215380 c!215379)))

(declare-fun e!841202 () Int)

(assert (=> bm!89325 (= call!89330 (apply!2993 (ite c!215379 (left!11423 (c!214934 lt!431405)) (right!11753 (c!214934 lt!431405))) e!841202))))

(declare-fun b!1311942 () Bool)

(declare-fun e!841204 () C!7516)

(assert (=> b!1311942 (= e!841204 e!841203)))

(declare-fun lt!432360 () Bool)

(assert (=> b!1311942 (= lt!432360 (appendIndex!139 (list!4990 (left!11423 (c!214934 lt!431405))) (list!4990 (right!11753 (c!214934 lt!431405))) 0))))

(assert (=> b!1311942 (= c!215379 (< 0 (size!10803 (left!11423 (c!214934 lt!431405)))))))

(declare-fun b!1311943 () Bool)

(assert (=> b!1311943 (= e!841202 (- 0 (size!10803 (left!11423 (c!214934 lt!431405)))))))

(declare-fun d!369774 () Bool)

(declare-fun lt!432359 () C!7516)

(assert (=> d!369774 (= lt!432359 (apply!2992 (list!4990 (c!214934 lt!431405)) 0))))

(assert (=> d!369774 (= lt!432359 e!841204)))

(declare-fun c!215378 () Bool)

(assert (=> d!369774 (= c!215378 ((_ is Leaf!6714) (c!214934 lt!431405)))))

(declare-fun e!841201 () Bool)

(assert (=> d!369774 e!841201))

(declare-fun res!588984 () Bool)

(assert (=> d!369774 (=> (not res!588984) (not e!841201))))

(assert (=> d!369774 (= res!588984 (<= 0 0))))

(assert (=> d!369774 (= (apply!2993 (c!214934 lt!431405) 0) lt!432359)))

(declare-fun b!1311944 () Bool)

(assert (=> b!1311944 (= e!841201 (< 0 (size!10803 (c!214934 lt!431405))))))

(declare-fun b!1311945 () Bool)

(assert (=> b!1311945 (= e!841204 (apply!3001 (xs!7083 (c!214934 lt!431405)) 0))))

(declare-fun b!1311946 () Bool)

(assert (=> b!1311946 (= e!841203 call!89330)))

(declare-fun b!1311947 () Bool)

(assert (=> b!1311947 (= e!841202 0)))

(assert (= (and d!369774 res!588984) b!1311944))

(assert (= (and d!369774 c!215378) b!1311945))

(assert (= (and d!369774 (not c!215378)) b!1311942))

(assert (= (and b!1311942 c!215379) b!1311946))

(assert (= (and b!1311942 (not c!215379)) b!1311941))

(assert (= (or b!1311946 b!1311941) bm!89325))

(assert (= (and bm!89325 c!215380) b!1311947))

(assert (= (and bm!89325 (not c!215380)) b!1311943))

(declare-fun m!1464831 () Bool)

(assert (=> bm!89325 m!1464831))

(assert (=> b!1311942 m!1464597))

(assert (=> b!1311942 m!1464599))

(assert (=> b!1311942 m!1464597))

(assert (=> b!1311942 m!1464599))

(declare-fun m!1464833 () Bool)

(assert (=> b!1311942 m!1464833))

(declare-fun m!1464835 () Bool)

(assert (=> b!1311942 m!1464835))

(assert (=> b!1311944 m!1462521))

(assert (=> b!1311943 m!1464835))

(declare-fun m!1464837 () Bool)

(assert (=> b!1311945 m!1464837))

(assert (=> d!369774 m!1462071))

(assert (=> d!369774 m!1462071))

(declare-fun m!1464839 () Bool)

(assert (=> d!369774 m!1464839))

(assert (=> d!368876 d!369774))

(assert (=> d!368778 d!368958))

(assert (=> d!368778 d!368976))

(declare-fun d!369776 () Bool)

(assert (=> d!369776 (= (list!4987 (_1!7333 (lex!829 thiss!19762 rules!2550 (print!768 thiss!19762 (singletonSeq!872 t1!34))))) (list!4991 (c!214936 (_1!7333 (lex!829 thiss!19762 rules!2550 (print!768 thiss!19762 (singletonSeq!872 t1!34)))))))))

(declare-fun bs!330044 () Bool)

(assert (= bs!330044 d!369776))

(declare-fun m!1464841 () Bool)

(assert (=> bs!330044 m!1464841))

(assert (=> d!368778 d!369776))

(assert (=> d!368778 d!369726))

(declare-fun d!369778 () Bool)

(declare-fun lt!432361 () Int)

(assert (=> d!369778 (= lt!432361 (size!10796 (list!4987 (_1!7333 lt!431498))))))

(assert (=> d!369778 (= lt!432361 (size!10805 (c!214936 (_1!7333 lt!431498))))))

(assert (=> d!369778 (= (size!10798 (_1!7333 lt!431498)) lt!432361)))

(declare-fun bs!330045 () Bool)

(assert (= bs!330045 d!369778))

(declare-fun m!1464843 () Bool)

(assert (=> bs!330045 m!1464843))

(assert (=> bs!330045 m!1464843))

(declare-fun m!1464845 () Bool)

(assert (=> bs!330045 m!1464845))

(declare-fun m!1464847 () Bool)

(assert (=> bs!330045 m!1464847))

(assert (=> d!368778 d!369778))

(assert (=> d!368778 d!369126))

(assert (=> d!368778 d!368946))

(declare-fun d!369780 () Bool)

(declare-fun lt!432362 () Bool)

(assert (=> d!369780 (= lt!432362 (isEmpty!7861 (list!4986 (_2!7333 (lex!829 thiss!19762 rules!2550 (print!768 thiss!19762 (singletonSeq!872 t2!34)))))))))

(assert (=> d!369780 (= lt!432362 (isEmpty!7862 (c!214934 (_2!7333 (lex!829 thiss!19762 rules!2550 (print!768 thiss!19762 (singletonSeq!872 t2!34)))))))))

(assert (=> d!369780 (= (isEmpty!7853 (_2!7333 (lex!829 thiss!19762 rules!2550 (print!768 thiss!19762 (singletonSeq!872 t2!34))))) lt!432362)))

(declare-fun bs!330046 () Bool)

(assert (= bs!330046 d!369780))

(declare-fun m!1464849 () Bool)

(assert (=> bs!330046 m!1464849))

(assert (=> bs!330046 m!1464849))

(declare-fun m!1464851 () Bool)

(assert (=> bs!330046 m!1464851))

(declare-fun m!1464853 () Bool)

(assert (=> bs!330046 m!1464853))

(assert (=> b!1310199 d!369780))

(assert (=> b!1310199 d!369380))

(assert (=> b!1310199 d!368990))

(assert (=> b!1310199 d!368992))

(assert (=> d!368864 d!369074))

(declare-fun d!369782 () Bool)

(assert (=> d!369782 (= (isEmpty!7861 (list!4986 (_2!7333 lt!431403))) ((_ is Nil!13283) (list!4986 (_2!7333 lt!431403))))))

(assert (=> d!369002 d!369782))

(declare-fun d!369784 () Bool)

(assert (=> d!369784 (= (list!4986 (_2!7333 lt!431403)) (list!4990 (c!214934 (_2!7333 lt!431403))))))

(declare-fun bs!330047 () Bool)

(assert (= bs!330047 d!369784))

(declare-fun m!1464855 () Bool)

(assert (=> bs!330047 m!1464855))

(assert (=> d!369002 d!369784))

(declare-fun d!369786 () Bool)

(declare-fun lt!432365 () Bool)

(assert (=> d!369786 (= lt!432365 (isEmpty!7861 (list!4990 (c!214934 (_2!7333 lt!431403)))))))

(assert (=> d!369786 (= lt!432365 (= (size!10803 (c!214934 (_2!7333 lt!431403))) 0))))

(assert (=> d!369786 (= (isEmpty!7862 (c!214934 (_2!7333 lt!431403))) lt!432365)))

(declare-fun bs!330048 () Bool)

(assert (= bs!330048 d!369786))

(assert (=> bs!330048 m!1464855))

(assert (=> bs!330048 m!1464855))

(declare-fun m!1464857 () Bool)

(assert (=> bs!330048 m!1464857))

(declare-fun m!1464859 () Bool)

(assert (=> bs!330048 m!1464859))

(assert (=> d!369002 d!369786))

(declare-fun d!369788 () Bool)

(assert (=> d!369788 (= (list!4987 lt!431656) (list!4991 (c!214936 lt!431656)))))

(declare-fun bs!330049 () Bool)

(assert (= bs!330049 d!369788))

(declare-fun m!1464861 () Bool)

(assert (=> bs!330049 m!1464861))

(assert (=> d!368992 d!369788))

(declare-fun d!369790 () Bool)

(declare-fun e!841205 () Bool)

(assert (=> d!369790 e!841205))

(declare-fun res!588985 () Bool)

(assert (=> d!369790 (=> (not res!588985) (not e!841205))))

(declare-fun lt!432366 () BalanceConc!8678)

(assert (=> d!369790 (= res!588985 (= (list!4987 lt!432366) (Cons!13284 t2!34 Nil!13284)))))

(assert (=> d!369790 (= lt!432366 (choose!8017 t2!34))))

(assert (=> d!369790 (= (singleton!374 t2!34) lt!432366)))

(declare-fun b!1311948 () Bool)

(assert (=> b!1311948 (= e!841205 (isBalanced!1268 (c!214936 lt!432366)))))

(assert (= (and d!369790 res!588985) b!1311948))

(declare-fun m!1464863 () Bool)

(assert (=> d!369790 m!1464863))

(declare-fun m!1464865 () Bool)

(assert (=> d!369790 m!1464865))

(declare-fun m!1464867 () Bool)

(assert (=> b!1311948 m!1464867))

(assert (=> d!368992 d!369790))

(declare-fun d!369792 () Bool)

(declare-fun lt!432367 () Bool)

(assert (=> d!369792 (= lt!432367 (select (content!1858 (t!118008 lt!431412)) lt!431407))))

(declare-fun e!841207 () Bool)

(assert (=> d!369792 (= lt!432367 e!841207)))

(declare-fun res!588987 () Bool)

(assert (=> d!369792 (=> (not res!588987) (not e!841207))))

(assert (=> d!369792 (= res!588987 ((_ is Cons!13283) (t!118008 lt!431412)))))

(assert (=> d!369792 (= (contains!2308 (t!118008 lt!431412) lt!431407) lt!432367)))

(declare-fun b!1311949 () Bool)

(declare-fun e!841206 () Bool)

(assert (=> b!1311949 (= e!841207 e!841206)))

(declare-fun res!588986 () Bool)

(assert (=> b!1311949 (=> res!588986 e!841206)))

(assert (=> b!1311949 (= res!588986 (= (h!18684 (t!118008 lt!431412)) lt!431407))))

(declare-fun b!1311950 () Bool)

(assert (=> b!1311950 (= e!841206 (contains!2308 (t!118008 (t!118008 lt!431412)) lt!431407))))

(assert (= (and d!369792 res!588987) b!1311949))

(assert (= (and b!1311949 (not res!588986)) b!1311950))

(assert (=> d!369792 m!1462679))

(declare-fun m!1464869 () Bool)

(assert (=> d!369792 m!1464869))

(declare-fun m!1464871 () Bool)

(assert (=> b!1311950 m!1464871))

(assert (=> b!1310281 d!369792))

(assert (=> b!1310394 d!369214))

(assert (=> b!1310394 d!369216))

(assert (=> b!1310394 d!369080))

(declare-fun b!1311951 () Bool)

(declare-fun e!841209 () Regex!3613)

(declare-fun e!841210 () Regex!3613)

(assert (=> b!1311951 (= e!841209 e!841210)))

(declare-fun c!215382 () Bool)

(assert (=> b!1311951 (= c!215382 ((_ is Cons!13286) (t!118011 (map!2915 rules!2550 lambda!52948))))))

(declare-fun b!1311952 () Bool)

(assert (=> b!1311952 (= e!841210 (getWitness!192 (t!118011 (t!118011 (map!2915 rules!2550 lambda!52948))) lambda!52949))))

(declare-fun e!841211 () Bool)

(declare-fun b!1311953 () Bool)

(assert (=> b!1311953 (= e!841211 (dynLambda!5761 lambda!52949 (h!18687 (t!118011 (map!2915 rules!2550 lambda!52948)))))))

(declare-fun b!1311954 () Bool)

(declare-fun lt!432368 () Unit!19338)

(declare-fun Unit!19356 () Unit!19338)

(assert (=> b!1311954 (= lt!432368 Unit!19356)))

(assert (=> b!1311954 false))

(assert (=> b!1311954 (= e!841210 (head!2254 (t!118011 (map!2915 rules!2550 lambda!52948))))))

(declare-fun b!1311955 () Bool)

(assert (=> b!1311955 (= e!841209 (h!18687 (t!118011 (map!2915 rules!2550 lambda!52948))))))

(declare-fun b!1311956 () Bool)

(declare-fun lt!432369 () Regex!3613)

(declare-fun e!841208 () Bool)

(assert (=> b!1311956 (= e!841208 (contains!2307 (t!118011 (map!2915 rules!2550 lambda!52948)) lt!432369))))

(declare-fun d!369794 () Bool)

(assert (=> d!369794 e!841208))

(declare-fun res!588988 () Bool)

(assert (=> d!369794 (=> (not res!588988) (not e!841208))))

(assert (=> d!369794 (= res!588988 (dynLambda!5761 lambda!52949 lt!432369))))

(assert (=> d!369794 (= lt!432369 e!841209)))

(declare-fun c!215381 () Bool)

(assert (=> d!369794 (= c!215381 e!841211)))

(declare-fun res!588989 () Bool)

(assert (=> d!369794 (=> (not res!588989) (not e!841211))))

(assert (=> d!369794 (= res!588989 ((_ is Cons!13286) (t!118011 (map!2915 rules!2550 lambda!52948))))))

(assert (=> d!369794 (exists!300 (t!118011 (map!2915 rules!2550 lambda!52948)) lambda!52949)))

(assert (=> d!369794 (= (getWitness!192 (t!118011 (map!2915 rules!2550 lambda!52948)) lambda!52949) lt!432369)))

(assert (= (and d!369794 res!588989) b!1311953))

(assert (= (and d!369794 c!215381) b!1311955))

(assert (= (and d!369794 (not c!215381)) b!1311951))

(assert (= (and b!1311951 c!215382) b!1311952))

(assert (= (and b!1311951 (not c!215382)) b!1311954))

(assert (= (and d!369794 res!588988) b!1311956))

(declare-fun b_lambda!37743 () Bool)

(assert (=> (not b_lambda!37743) (not b!1311953)))

(declare-fun b_lambda!37745 () Bool)

(assert (=> (not b_lambda!37745) (not d!369794)))

(declare-fun m!1464873 () Bool)

(assert (=> b!1311954 m!1464873))

(declare-fun m!1464875 () Bool)

(assert (=> b!1311953 m!1464875))

(declare-fun m!1464877 () Bool)

(assert (=> b!1311952 m!1464877))

(declare-fun m!1464879 () Bool)

(assert (=> d!369794 m!1464879))

(declare-fun m!1464881 () Bool)

(assert (=> d!369794 m!1464881))

(declare-fun m!1464883 () Bool)

(assert (=> b!1311956 m!1464883))

(assert (=> b!1310225 d!369794))

(declare-fun b!1311957 () Bool)

(declare-fun e!841212 () Bool)

(declare-fun e!841217 () Bool)

(assert (=> b!1311957 (= e!841212 e!841217)))

(declare-fun res!588993 () Bool)

(assert (=> b!1311957 (= res!588993 (not (nullable!1141 (reg!3942 lt!431513))))))

(assert (=> b!1311957 (=> (not res!588993) (not e!841217))))

(declare-fun b!1311958 () Bool)

(declare-fun e!841215 () Bool)

(declare-fun e!841214 () Bool)

(assert (=> b!1311958 (= e!841215 e!841214)))

(declare-fun res!588992 () Bool)

(assert (=> b!1311958 (=> (not res!588992) (not e!841214))))

(declare-fun call!89332 () Bool)

(assert (=> b!1311958 (= res!588992 call!89332)))

(declare-fun b!1311959 () Bool)

(declare-fun call!89331 () Bool)

(assert (=> b!1311959 (= e!841214 call!89331)))

(declare-fun bm!89326 () Bool)

(declare-fun call!89333 () Bool)

(assert (=> bm!89326 (= call!89331 call!89333)))

(declare-fun b!1311960 () Bool)

(declare-fun res!588994 () Bool)

(assert (=> b!1311960 (=> res!588994 e!841215)))

(assert (=> b!1311960 (= res!588994 (not ((_ is Concat!6003) lt!431513)))))

(declare-fun e!841218 () Bool)

(assert (=> b!1311960 (= e!841218 e!841215)))

(declare-fun b!1311961 () Bool)

(assert (=> b!1311961 (= e!841217 call!89333)))

(declare-fun b!1311962 () Bool)

(assert (=> b!1311962 (= e!841212 e!841218)))

(declare-fun c!215383 () Bool)

(assert (=> b!1311962 (= c!215383 ((_ is Union!3613) lt!431513))))

(declare-fun c!215384 () Bool)

(declare-fun bm!89327 () Bool)

(assert (=> bm!89327 (= call!89333 (validRegex!1543 (ite c!215384 (reg!3942 lt!431513) (ite c!215383 (regTwo!7739 lt!431513) (regTwo!7738 lt!431513)))))))

(declare-fun d!369796 () Bool)

(declare-fun res!588991 () Bool)

(declare-fun e!841216 () Bool)

(assert (=> d!369796 (=> res!588991 e!841216)))

(assert (=> d!369796 (= res!588991 ((_ is ElementMatch!3613) lt!431513))))

(assert (=> d!369796 (= (validRegex!1543 lt!431513) e!841216)))

(declare-fun bm!89328 () Bool)

(assert (=> bm!89328 (= call!89332 (validRegex!1543 (ite c!215383 (regOne!7739 lt!431513) (regOne!7738 lt!431513))))))

(declare-fun b!1311963 () Bool)

(declare-fun e!841213 () Bool)

(assert (=> b!1311963 (= e!841213 call!89331)))

(declare-fun b!1311964 () Bool)

(assert (=> b!1311964 (= e!841216 e!841212)))

(assert (=> b!1311964 (= c!215384 ((_ is Star!3613) lt!431513))))

(declare-fun b!1311965 () Bool)

(declare-fun res!588990 () Bool)

(assert (=> b!1311965 (=> (not res!588990) (not e!841213))))

(assert (=> b!1311965 (= res!588990 call!89332)))

(assert (=> b!1311965 (= e!841218 e!841213)))

(assert (= (and d!369796 (not res!588991)) b!1311964))

(assert (= (and b!1311964 c!215384) b!1311957))

(assert (= (and b!1311964 (not c!215384)) b!1311962))

(assert (= (and b!1311957 res!588993) b!1311961))

(assert (= (and b!1311962 c!215383) b!1311965))

(assert (= (and b!1311962 (not c!215383)) b!1311960))

(assert (= (and b!1311965 res!588990) b!1311963))

(assert (= (and b!1311960 (not res!588994)) b!1311958))

(assert (= (and b!1311958 res!588992) b!1311959))

(assert (= (or b!1311965 b!1311958) bm!89328))

(assert (= (or b!1311963 b!1311959) bm!89326))

(assert (= (or b!1311961 bm!89326) bm!89327))

(declare-fun m!1464885 () Bool)

(assert (=> b!1311957 m!1464885))

(declare-fun m!1464887 () Bool)

(assert (=> bm!89327 m!1464887))

(declare-fun m!1464889 () Bool)

(assert (=> bm!89328 m!1464889))

(assert (=> bs!329817 d!369796))

(declare-fun d!369798 () Bool)

(assert (=> d!369798 (= (inv!15 (value!75154 t1!34)) (= (charsToBigInt!0 (text!17172 (value!75154 t1!34)) 0) (value!75149 (value!75154 t1!34))))))

(declare-fun bs!330050 () Bool)

(assert (= bs!330050 d!369798))

(declare-fun m!1464891 () Bool)

(assert (=> bs!330050 m!1464891))

(assert (=> b!1310608 d!369798))

(declare-fun b!1311984 () Bool)

(declare-fun res!589013 () Bool)

(declare-fun e!841229 () Bool)

(assert (=> b!1311984 (=> (not res!589013) (not e!841229))))

(declare-fun lt!432380 () Option!2564)

(assert (=> b!1311984 (= res!589013 (= (value!75154 (_1!7332 (get!4246 lt!432380))) (apply!2990 (transformation!2299 (rule!4038 (_1!7332 (get!4246 lt!432380)))) (seqFromList!1591 (originalCharacters!3161 (_1!7332 (get!4246 lt!432380)))))))))

(declare-fun b!1311985 () Bool)

(declare-fun res!589009 () Bool)

(assert (=> b!1311985 (=> (not res!589009) (not e!841229))))

(assert (=> b!1311985 (= res!589009 (= (rule!4038 (_1!7332 (get!4246 lt!432380))) (h!18686 rules!2550)))))

(declare-fun b!1311986 () Bool)

(declare-fun res!589010 () Bool)

(assert (=> b!1311986 (=> (not res!589010) (not e!841229))))

(assert (=> b!1311986 (= res!589010 (< (size!10797 (_2!7332 (get!4246 lt!432380))) (size!10797 (list!4986 lt!431405))))))

(declare-fun b!1311987 () Bool)

(declare-fun e!841230 () Bool)

(declare-datatypes ((tuple2!12902 0))(
  ( (tuple2!12903 (_1!7337 List!13349) (_2!7337 List!13349)) )
))
(declare-fun findLongestMatchInner!266 (Regex!3613 List!13349 Int List!13349 List!13349 Int) tuple2!12902)

(assert (=> b!1311987 (= e!841230 (matchR!1615 (regex!2299 (h!18686 rules!2550)) (_1!7337 (findLongestMatchInner!266 (regex!2299 (h!18686 rules!2550)) Nil!13283 (size!10797 Nil!13283) (list!4986 lt!431405) (list!4986 lt!431405) (size!10797 (list!4986 lt!431405))))))))

(declare-fun b!1311988 () Bool)

(declare-fun res!589014 () Bool)

(assert (=> b!1311988 (=> (not res!589014) (not e!841229))))

(assert (=> b!1311988 (= res!589014 (= (++!3378 (list!4986 (charsOf!1271 (_1!7332 (get!4246 lt!432380)))) (_2!7332 (get!4246 lt!432380))) (list!4986 lt!431405)))))

(declare-fun d!369800 () Bool)

(declare-fun e!841228 () Bool)

(assert (=> d!369800 e!841228))

(declare-fun res!589015 () Bool)

(assert (=> d!369800 (=> res!589015 e!841228)))

(assert (=> d!369800 (= res!589015 (isEmpty!7860 lt!432380))))

(declare-fun e!841227 () Option!2564)

(assert (=> d!369800 (= lt!432380 e!841227)))

(declare-fun c!215387 () Bool)

(declare-fun lt!432384 () tuple2!12902)

(assert (=> d!369800 (= c!215387 (isEmpty!7861 (_1!7337 lt!432384)))))

(declare-fun findLongestMatch!222 (Regex!3613 List!13349) tuple2!12902)

(assert (=> d!369800 (= lt!432384 (findLongestMatch!222 (regex!2299 (h!18686 rules!2550)) (list!4986 lt!431405)))))

(assert (=> d!369800 (ruleValid!557 thiss!19762 (h!18686 rules!2550))))

(assert (=> d!369800 (= (maxPrefixOneRule!573 thiss!19762 (h!18686 rules!2550) (list!4986 lt!431405)) lt!432380)))

(declare-fun b!1311989 () Bool)

(assert (=> b!1311989 (= e!841229 (= (size!10790 (_1!7332 (get!4246 lt!432380))) (size!10797 (originalCharacters!3161 (_1!7332 (get!4246 lt!432380))))))))

(declare-fun b!1311990 () Bool)

(assert (=> b!1311990 (= e!841227 None!2563)))

(declare-fun b!1311991 () Bool)

(assert (=> b!1311991 (= e!841227 (Some!2563 (tuple2!12893 (Token!4261 (apply!2990 (transformation!2299 (h!18686 rules!2550)) (seqFromList!1591 (_1!7337 lt!432384))) (h!18686 rules!2550) (size!10791 (seqFromList!1591 (_1!7337 lt!432384))) (_1!7337 lt!432384)) (_2!7337 lt!432384))))))

(declare-fun lt!432382 () Unit!19338)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!250 (Regex!3613 List!13349) Unit!19338)

(assert (=> b!1311991 (= lt!432382 (longestMatchIsAcceptedByMatchOrIsEmpty!250 (regex!2299 (h!18686 rules!2550)) (list!4986 lt!431405)))))

(declare-fun res!589012 () Bool)

(assert (=> b!1311991 (= res!589012 (isEmpty!7861 (_1!7337 (findLongestMatchInner!266 (regex!2299 (h!18686 rules!2550)) Nil!13283 (size!10797 Nil!13283) (list!4986 lt!431405) (list!4986 lt!431405) (size!10797 (list!4986 lt!431405))))))))

(assert (=> b!1311991 (=> res!589012 e!841230)))

(assert (=> b!1311991 e!841230))

(declare-fun lt!432383 () Unit!19338)

(assert (=> b!1311991 (= lt!432383 lt!432382)))

(declare-fun lt!432381 () Unit!19338)

(declare-fun lemmaSemiInverse!320 (TokenValueInjection!4438 BalanceConc!8676) Unit!19338)

(assert (=> b!1311991 (= lt!432381 (lemmaSemiInverse!320 (transformation!2299 (h!18686 rules!2550)) (seqFromList!1591 (_1!7337 lt!432384))))))

(declare-fun b!1311992 () Bool)

(assert (=> b!1311992 (= e!841228 e!841229)))

(declare-fun res!589011 () Bool)

(assert (=> b!1311992 (=> (not res!589011) (not e!841229))))

(assert (=> b!1311992 (= res!589011 (matchR!1615 (regex!2299 (h!18686 rules!2550)) (list!4986 (charsOf!1271 (_1!7332 (get!4246 lt!432380))))))))

(assert (= (and d!369800 c!215387) b!1311990))

(assert (= (and d!369800 (not c!215387)) b!1311991))

(assert (= (and b!1311991 (not res!589012)) b!1311987))

(assert (= (and d!369800 (not res!589015)) b!1311992))

(assert (= (and b!1311992 res!589011) b!1311988))

(assert (= (and b!1311988 res!589014) b!1311986))

(assert (= (and b!1311986 res!589010) b!1311985))

(assert (= (and b!1311985 res!589009) b!1311984))

(assert (= (and b!1311984 res!589013) b!1311989))

(declare-fun m!1464893 () Bool)

(assert (=> d!369800 m!1464893))

(declare-fun m!1464895 () Bool)

(assert (=> d!369800 m!1464895))

(assert (=> d!369800 m!1461537))

(declare-fun m!1464897 () Bool)

(assert (=> d!369800 m!1464897))

(assert (=> d!369800 m!1462529))

(declare-fun m!1464899 () Bool)

(assert (=> b!1311986 m!1464899))

(declare-fun m!1464901 () Bool)

(assert (=> b!1311986 m!1464901))

(assert (=> b!1311986 m!1461537))

(assert (=> b!1311986 m!1462051))

(assert (=> b!1311988 m!1464899))

(declare-fun m!1464903 () Bool)

(assert (=> b!1311988 m!1464903))

(assert (=> b!1311988 m!1464903))

(declare-fun m!1464905 () Bool)

(assert (=> b!1311988 m!1464905))

(assert (=> b!1311988 m!1464905))

(declare-fun m!1464907 () Bool)

(assert (=> b!1311988 m!1464907))

(assert (=> b!1311992 m!1464899))

(assert (=> b!1311992 m!1464903))

(assert (=> b!1311992 m!1464903))

(assert (=> b!1311992 m!1464905))

(assert (=> b!1311992 m!1464905))

(declare-fun m!1464909 () Bool)

(assert (=> b!1311992 m!1464909))

(declare-fun m!1464911 () Bool)

(assert (=> b!1311987 m!1464911))

(assert (=> b!1311987 m!1461537))

(assert (=> b!1311987 m!1462051))

(assert (=> b!1311987 m!1464911))

(assert (=> b!1311987 m!1461537))

(assert (=> b!1311987 m!1461537))

(assert (=> b!1311987 m!1462051))

(declare-fun m!1464913 () Bool)

(assert (=> b!1311987 m!1464913))

(declare-fun m!1464915 () Bool)

(assert (=> b!1311987 m!1464915))

(assert (=> b!1311985 m!1464899))

(assert (=> b!1311989 m!1464899))

(declare-fun m!1464917 () Bool)

(assert (=> b!1311989 m!1464917))

(assert (=> b!1311991 m!1461537))

(declare-fun m!1464919 () Bool)

(assert (=> b!1311991 m!1464919))

(declare-fun m!1464921 () Bool)

(assert (=> b!1311991 m!1464921))

(declare-fun m!1464923 () Bool)

(assert (=> b!1311991 m!1464923))

(assert (=> b!1311991 m!1464921))

(declare-fun m!1464925 () Bool)

(assert (=> b!1311991 m!1464925))

(assert (=> b!1311991 m!1461537))

(assert (=> b!1311991 m!1462051))

(assert (=> b!1311991 m!1464921))

(declare-fun m!1464927 () Bool)

(assert (=> b!1311991 m!1464927))

(assert (=> b!1311991 m!1464911))

(assert (=> b!1311991 m!1461537))

(assert (=> b!1311991 m!1461537))

(assert (=> b!1311991 m!1462051))

(assert (=> b!1311991 m!1464913))

(assert (=> b!1311991 m!1464921))

(declare-fun m!1464929 () Bool)

(assert (=> b!1311991 m!1464929))

(assert (=> b!1311991 m!1464911))

(assert (=> b!1311984 m!1464899))

(declare-fun m!1464931 () Bool)

(assert (=> b!1311984 m!1464931))

(assert (=> b!1311984 m!1464931))

(declare-fun m!1464933 () Bool)

(assert (=> b!1311984 m!1464933))

(assert (=> bm!89249 d!369800))

(declare-fun b!1311993 () Bool)

(declare-fun e!841234 () Rule!4398)

(declare-fun e!841232 () Rule!4398)

(assert (=> b!1311993 (= e!841234 e!841232)))

(declare-fun c!215389 () Bool)

(assert (=> b!1311993 (= c!215389 ((_ is Cons!13285) (t!118010 rules!2550)))))

(declare-fun b!1311994 () Bool)

(assert (=> b!1311994 (= e!841232 (getWitness!193 (t!118010 (t!118010 rules!2550)) lambda!52950))))

(declare-fun d!369802 () Bool)

(declare-fun e!841231 () Bool)

(assert (=> d!369802 e!841231))

(declare-fun res!589016 () Bool)

(assert (=> d!369802 (=> (not res!589016) (not e!841231))))

(declare-fun lt!432386 () Rule!4398)

(assert (=> d!369802 (= res!589016 (dynLambda!5764 lambda!52950 lt!432386))))

(assert (=> d!369802 (= lt!432386 e!841234)))

(declare-fun c!215388 () Bool)

(declare-fun e!841233 () Bool)

(assert (=> d!369802 (= c!215388 e!841233)))

(declare-fun res!589017 () Bool)

(assert (=> d!369802 (=> (not res!589017) (not e!841233))))

(assert (=> d!369802 (= res!589017 ((_ is Cons!13285) (t!118010 rules!2550)))))

(assert (=> d!369802 (exists!301 (t!118010 rules!2550) lambda!52950)))

(assert (=> d!369802 (= (getWitness!193 (t!118010 rules!2550) lambda!52950) lt!432386)))

(declare-fun b!1311995 () Bool)

(assert (=> b!1311995 (= e!841234 (h!18686 (t!118010 rules!2550)))))

(declare-fun b!1311996 () Bool)

(declare-fun lt!432385 () Unit!19338)

(declare-fun Unit!19357 () Unit!19338)

(assert (=> b!1311996 (= lt!432385 Unit!19357)))

(assert (=> b!1311996 false))

(assert (=> b!1311996 (= e!841232 (head!2256 (t!118010 rules!2550)))))

(declare-fun b!1311997 () Bool)

(assert (=> b!1311997 (= e!841231 (contains!2309 (t!118010 rules!2550) lt!432386))))

(declare-fun b!1311998 () Bool)

(assert (=> b!1311998 (= e!841233 (dynLambda!5764 lambda!52950 (h!18686 (t!118010 rules!2550))))))

(assert (= (and d!369802 res!589017) b!1311998))

(assert (= (and d!369802 c!215388) b!1311995))

(assert (= (and d!369802 (not c!215388)) b!1311993))

(assert (= (and b!1311993 c!215389) b!1311994))

(assert (= (and b!1311993 (not c!215389)) b!1311996))

(assert (= (and d!369802 res!589016) b!1311997))

(declare-fun b_lambda!37747 () Bool)

(assert (=> (not b_lambda!37747) (not d!369802)))

(declare-fun b_lambda!37749 () Bool)

(assert (=> (not b_lambda!37749) (not b!1311998)))

(declare-fun m!1464935 () Bool)

(assert (=> d!369802 m!1464935))

(declare-fun m!1464937 () Bool)

(assert (=> d!369802 m!1464937))

(declare-fun m!1464939 () Bool)

(assert (=> b!1311994 m!1464939))

(declare-fun m!1464941 () Bool)

(assert (=> b!1311997 m!1464941))

(declare-fun m!1464943 () Bool)

(assert (=> b!1311998 m!1464943))

(declare-fun m!1464945 () Bool)

(assert (=> b!1311996 m!1464945))

(assert (=> b!1310565 d!369802))

(declare-fun d!369804 () Bool)

(declare-fun charsToBigInt!1 (List!13348) Int)

(assert (=> d!369804 (= (inv!17 (value!75154 t2!34)) (= (charsToBigInt!1 (text!17171 (value!75154 t2!34))) (value!75146 (value!75154 t2!34))))))

(declare-fun bs!330051 () Bool)

(assert (= bs!330051 d!369804))

(declare-fun m!1464947 () Bool)

(assert (=> bs!330051 m!1464947))

(assert (=> b!1310269 d!369804))

(declare-fun d!369806 () Bool)

(assert (=> d!369806 (= (isEmpty!7860 lt!431580) (not ((_ is Some!2563) lt!431580)))))

(assert (=> d!368892 d!369806))

(declare-fun b!1312001 () Bool)

(declare-fun e!841235 () Bool)

(assert (=> b!1312001 (= e!841235 (isPrefix!1068 (tail!1874 lt!431402) (tail!1874 lt!431402)))))

(declare-fun b!1312000 () Bool)

(declare-fun res!589018 () Bool)

(assert (=> b!1312000 (=> (not res!589018) (not e!841235))))

(assert (=> b!1312000 (= res!589018 (= (head!2255 lt!431402) (head!2255 lt!431402)))))

(declare-fun b!1312002 () Bool)

(declare-fun e!841237 () Bool)

(assert (=> b!1312002 (= e!841237 (>= (size!10797 lt!431402) (size!10797 lt!431402)))))

(declare-fun d!369808 () Bool)

(assert (=> d!369808 e!841237))

(declare-fun res!589020 () Bool)

(assert (=> d!369808 (=> res!589020 e!841237)))

(declare-fun lt!432387 () Bool)

(assert (=> d!369808 (= res!589020 (not lt!432387))))

(declare-fun e!841236 () Bool)

(assert (=> d!369808 (= lt!432387 e!841236)))

(declare-fun res!589021 () Bool)

(assert (=> d!369808 (=> res!589021 e!841236)))

(assert (=> d!369808 (= res!589021 ((_ is Nil!13283) lt!431402))))

(assert (=> d!369808 (= (isPrefix!1068 lt!431402 lt!431402) lt!432387)))

(declare-fun b!1311999 () Bool)

(assert (=> b!1311999 (= e!841236 e!841235)))

(declare-fun res!589019 () Bool)

(assert (=> b!1311999 (=> (not res!589019) (not e!841235))))

(assert (=> b!1311999 (= res!589019 (not ((_ is Nil!13283) lt!431402)))))

(assert (= (and d!369808 (not res!589021)) b!1311999))

(assert (= (and b!1311999 res!589019) b!1312000))

(assert (= (and b!1312000 res!589018) b!1312001))

(assert (= (and d!369808 (not res!589020)) b!1312002))

(declare-fun m!1464949 () Bool)

(assert (=> b!1312001 m!1464949))

(assert (=> b!1312001 m!1464949))

(assert (=> b!1312001 m!1464949))

(assert (=> b!1312001 m!1464949))

(declare-fun m!1464951 () Bool)

(assert (=> b!1312001 m!1464951))

(declare-fun m!1464953 () Bool)

(assert (=> b!1312000 m!1464953))

(assert (=> b!1312000 m!1464953))

(assert (=> b!1312002 m!1462123))

(assert (=> b!1312002 m!1462123))

(assert (=> d!368892 d!369808))

(declare-fun d!369810 () Bool)

(assert (=> d!369810 (isPrefix!1068 lt!431402 lt!431402)))

(declare-fun lt!432388 () Unit!19338)

(assert (=> d!369810 (= lt!432388 (choose!8018 lt!431402 lt!431402))))

(assert (=> d!369810 (= (lemmaIsPrefixRefl!747 lt!431402 lt!431402) lt!432388)))

(declare-fun bs!330052 () Bool)

(assert (= bs!330052 d!369810))

(assert (=> bs!330052 m!1462179))

(declare-fun m!1464955 () Bool)

(assert (=> bs!330052 m!1464955))

(assert (=> d!368892 d!369810))

(assert (=> d!368892 d!369652))

(assert (=> b!1310484 d!369072))

(declare-fun b!1312006 () Bool)

(declare-fun e!841239 () Bool)

(declare-fun lt!432389 () List!13349)

(assert (=> b!1312006 (= e!841239 (or (not (= (_2!7332 (get!4246 lt!431580)) Nil!13283)) (= lt!432389 (list!4986 (charsOf!1271 (_1!7332 (get!4246 lt!431580)))))))))

(declare-fun b!1312005 () Bool)

(declare-fun res!589022 () Bool)

(assert (=> b!1312005 (=> (not res!589022) (not e!841239))))

(assert (=> b!1312005 (= res!589022 (= (size!10797 lt!432389) (+ (size!10797 (list!4986 (charsOf!1271 (_1!7332 (get!4246 lt!431580))))) (size!10797 (_2!7332 (get!4246 lt!431580))))))))

(declare-fun b!1312003 () Bool)

(declare-fun e!841238 () List!13349)

(assert (=> b!1312003 (= e!841238 (_2!7332 (get!4246 lt!431580)))))

(declare-fun d!369812 () Bool)

(assert (=> d!369812 e!841239))

(declare-fun res!589023 () Bool)

(assert (=> d!369812 (=> (not res!589023) (not e!841239))))

(assert (=> d!369812 (= res!589023 (= (content!1858 lt!432389) ((_ map or) (content!1858 (list!4986 (charsOf!1271 (_1!7332 (get!4246 lt!431580))))) (content!1858 (_2!7332 (get!4246 lt!431580))))))))

(assert (=> d!369812 (= lt!432389 e!841238)))

(declare-fun c!215390 () Bool)

(assert (=> d!369812 (= c!215390 ((_ is Nil!13283) (list!4986 (charsOf!1271 (_1!7332 (get!4246 lt!431580))))))))

(assert (=> d!369812 (= (++!3378 (list!4986 (charsOf!1271 (_1!7332 (get!4246 lt!431580)))) (_2!7332 (get!4246 lt!431580))) lt!432389)))

(declare-fun b!1312004 () Bool)

(assert (=> b!1312004 (= e!841238 (Cons!13283 (h!18684 (list!4986 (charsOf!1271 (_1!7332 (get!4246 lt!431580))))) (++!3378 (t!118008 (list!4986 (charsOf!1271 (_1!7332 (get!4246 lt!431580))))) (_2!7332 (get!4246 lt!431580)))))))

(assert (= (and d!369812 c!215390) b!1312003))

(assert (= (and d!369812 (not c!215390)) b!1312004))

(assert (= (and d!369812 res!589023) b!1312005))

(assert (= (and b!1312005 res!589022) b!1312006))

(declare-fun m!1464957 () Bool)

(assert (=> b!1312005 m!1464957))

(assert (=> b!1312005 m!1462163))

(declare-fun m!1464959 () Bool)

(assert (=> b!1312005 m!1464959))

(assert (=> b!1312005 m!1462167))

(declare-fun m!1464961 () Bool)

(assert (=> d!369812 m!1464961))

(assert (=> d!369812 m!1462163))

(declare-fun m!1464963 () Bool)

(assert (=> d!369812 m!1464963))

(declare-fun m!1464965 () Bool)

(assert (=> d!369812 m!1464965))

(declare-fun m!1464967 () Bool)

(assert (=> b!1312004 m!1464967))

(assert (=> b!1310391 d!369812))

(assert (=> b!1310391 d!369214))

(assert (=> b!1310391 d!369216))

(assert (=> b!1310391 d!369080))

(declare-fun d!369814 () Bool)

(declare-fun res!589024 () Bool)

(declare-fun e!841240 () Bool)

(assert (=> d!369814 (=> res!589024 e!841240)))

(assert (=> d!369814 (= res!589024 ((_ is Nil!13285) (t!118010 rules!2550)))))

(assert (=> d!369814 (= (forall!3280 (t!118010 rules!2550) lambda!52951) e!841240)))

(declare-fun b!1312007 () Bool)

(declare-fun e!841241 () Bool)

(assert (=> b!1312007 (= e!841240 e!841241)))

(declare-fun res!589025 () Bool)

(assert (=> b!1312007 (=> (not res!589025) (not e!841241))))

(assert (=> b!1312007 (= res!589025 (dynLambda!5764 lambda!52951 (h!18686 (t!118010 rules!2550))))))

(declare-fun b!1312008 () Bool)

(assert (=> b!1312008 (= e!841241 (forall!3280 (t!118010 (t!118010 rules!2550)) lambda!52951))))

(assert (= (and d!369814 (not res!589024)) b!1312007))

(assert (= (and b!1312007 res!589025) b!1312008))

(declare-fun b_lambda!37751 () Bool)

(assert (=> (not b_lambda!37751) (not b!1312007)))

(declare-fun m!1464969 () Bool)

(assert (=> b!1312007 m!1464969))

(declare-fun m!1464971 () Bool)

(assert (=> b!1312008 m!1464971))

(assert (=> b!1310362 d!369814))

(declare-fun d!369816 () Bool)

(declare-fun res!589026 () Bool)

(declare-fun e!841242 () Bool)

(assert (=> d!369816 (=> res!589026 e!841242)))

(assert (=> d!369816 (= res!589026 ((_ is Nil!13285) rules!2550))))

(assert (=> d!369816 (= (forall!3280 rules!2550 lambda!52986) e!841242)))

(declare-fun b!1312009 () Bool)

(declare-fun e!841243 () Bool)

(assert (=> b!1312009 (= e!841242 e!841243)))

(declare-fun res!589027 () Bool)

(assert (=> b!1312009 (=> (not res!589027) (not e!841243))))

(assert (=> b!1312009 (= res!589027 (dynLambda!5764 lambda!52986 (h!18686 rules!2550)))))

(declare-fun b!1312010 () Bool)

(assert (=> b!1312010 (= e!841243 (forall!3280 (t!118010 rules!2550) lambda!52986))))

(assert (= (and d!369816 (not res!589026)) b!1312009))

(assert (= (and b!1312009 res!589027) b!1312010))

(declare-fun b_lambda!37753 () Bool)

(assert (=> (not b_lambda!37753) (not b!1312009)))

(declare-fun m!1464973 () Bool)

(assert (=> b!1312009 m!1464973))

(declare-fun m!1464975 () Bool)

(assert (=> b!1312010 m!1464975))

(assert (=> d!368894 d!369816))

(declare-fun d!369818 () Bool)

(declare-fun lt!432390 () List!13349)

(assert (=> d!369818 (= (++!3378 (t!118008 lt!431414) lt!432390) (tail!1874 lt!431412))))

(declare-fun e!841244 () List!13349)

(assert (=> d!369818 (= lt!432390 e!841244)))

(declare-fun c!215391 () Bool)

(assert (=> d!369818 (= c!215391 ((_ is Cons!13283) (t!118008 lt!431414)))))

(assert (=> d!369818 (>= (size!10797 (tail!1874 lt!431412)) (size!10797 (t!118008 lt!431414)))))

(assert (=> d!369818 (= (getSuffix!469 (tail!1874 lt!431412) (t!118008 lt!431414)) lt!432390)))

(declare-fun b!1312011 () Bool)

(assert (=> b!1312011 (= e!841244 (getSuffix!469 (tail!1874 (tail!1874 lt!431412)) (t!118008 (t!118008 lt!431414))))))

(declare-fun b!1312012 () Bool)

(assert (=> b!1312012 (= e!841244 (tail!1874 lt!431412))))

(assert (= (and d!369818 c!215391) b!1312011))

(assert (= (and d!369818 (not c!215391)) b!1312012))

(declare-fun m!1464977 () Bool)

(assert (=> d!369818 m!1464977))

(assert (=> d!369818 m!1462281))

(declare-fun m!1464979 () Bool)

(assert (=> d!369818 m!1464979))

(assert (=> d!369818 m!1462967))

(assert (=> b!1312011 m!1462281))

(declare-fun m!1464981 () Bool)

(assert (=> b!1312011 m!1464981))

(assert (=> b!1312011 m!1464981))

(declare-fun m!1464983 () Bool)

(assert (=> b!1312011 m!1464983))

(assert (=> b!1310499 d!369818))

(assert (=> b!1310499 d!369402))

(declare-fun d!369820 () Bool)

(declare-fun lt!432391 () Bool)

(assert (=> d!369820 (= lt!432391 (isEmpty!7861 (list!4986 (_2!7333 lt!431498))))))

(assert (=> d!369820 (= lt!432391 (isEmpty!7862 (c!214934 (_2!7333 lt!431498))))))

(assert (=> d!369820 (= (isEmpty!7853 (_2!7333 lt!431498)) lt!432391)))

(declare-fun bs!330053 () Bool)

(assert (= bs!330053 d!369820))

(declare-fun m!1464985 () Bool)

(assert (=> bs!330053 m!1464985))

(assert (=> bs!330053 m!1464985))

(declare-fun m!1464987 () Bool)

(assert (=> bs!330053 m!1464987))

(declare-fun m!1464989 () Bool)

(assert (=> bs!330053 m!1464989))

(assert (=> b!1310195 d!369820))

(declare-fun d!369822 () Bool)

(declare-fun lt!432392 () Bool)

(assert (=> d!369822 (= lt!432392 (select (content!1859 (t!118010 rules!2550)) (rule!4038 t1!34)))))

(declare-fun e!841245 () Bool)

(assert (=> d!369822 (= lt!432392 e!841245)))

(declare-fun res!589028 () Bool)

(assert (=> d!369822 (=> (not res!589028) (not e!841245))))

(assert (=> d!369822 (= res!589028 ((_ is Cons!13285) (t!118010 rules!2550)))))

(assert (=> d!369822 (= (contains!2309 (t!118010 rules!2550) (rule!4038 t1!34)) lt!432392)))

(declare-fun b!1312013 () Bool)

(declare-fun e!841246 () Bool)

(assert (=> b!1312013 (= e!841245 e!841246)))

(declare-fun res!589029 () Bool)

(assert (=> b!1312013 (=> res!589029 e!841246)))

(assert (=> b!1312013 (= res!589029 (= (h!18686 (t!118010 rules!2550)) (rule!4038 t1!34)))))

(declare-fun b!1312014 () Bool)

(assert (=> b!1312014 (= e!841246 (contains!2309 (t!118010 (t!118010 rules!2550)) (rule!4038 t1!34)))))

(assert (= (and d!369822 res!589028) b!1312013))

(assert (= (and b!1312013 (not res!589029)) b!1312014))

(assert (=> d!369822 m!1462687))

(declare-fun m!1464991 () Bool)

(assert (=> d!369822 m!1464991))

(declare-fun m!1464993 () Bool)

(assert (=> b!1312014 m!1464993))

(assert (=> b!1310612 d!369822))

(declare-fun d!369824 () Bool)

(declare-fun lt!432393 () Bool)

(assert (=> d!369824 (= lt!432393 (select (content!1859 rules!2550) (rule!4038 (_1!7332 (get!4246 lt!431554)))))))

(declare-fun e!841247 () Bool)

(assert (=> d!369824 (= lt!432393 e!841247)))

(declare-fun res!589030 () Bool)

(assert (=> d!369824 (=> (not res!589030) (not e!841247))))

(assert (=> d!369824 (= res!589030 ((_ is Cons!13285) rules!2550))))

(assert (=> d!369824 (= (contains!2309 rules!2550 (rule!4038 (_1!7332 (get!4246 lt!431554)))) lt!432393)))

(declare-fun b!1312015 () Bool)

(declare-fun e!841248 () Bool)

(assert (=> b!1312015 (= e!841247 e!841248)))

(declare-fun res!589031 () Bool)

(assert (=> b!1312015 (=> res!589031 e!841248)))

(assert (=> b!1312015 (= res!589031 (= (h!18686 rules!2550) (rule!4038 (_1!7332 (get!4246 lt!431554)))))))

(declare-fun b!1312016 () Bool)

(assert (=> b!1312016 (= e!841248 (contains!2309 (t!118010 rules!2550) (rule!4038 (_1!7332 (get!4246 lt!431554)))))))

(assert (= (and d!369824 res!589030) b!1312015))

(assert (= (and b!1312015 (not res!589031)) b!1312016))

(assert (=> d!369824 m!1462085))

(declare-fun m!1464995 () Bool)

(assert (=> d!369824 m!1464995))

(declare-fun m!1464997 () Bool)

(assert (=> b!1312016 m!1464997))

(assert (=> b!1310335 d!369824))

(assert (=> b!1310335 d!369064))

(declare-fun b!1312017 () Bool)

(declare-fun e!841249 () tuple2!12890)

(declare-fun lt!432396 () Option!2564)

(declare-fun lt!432394 () tuple2!12890)

(assert (=> b!1312017 (= e!841249 (tuple2!12891 (Cons!13284 (_1!7332 (v!21077 lt!432396)) (_1!7331 lt!432394)) (_2!7331 lt!432394)))))

(assert (=> b!1312017 (= lt!432394 (lexList!532 thiss!19762 rules!2550 (_2!7332 (v!21077 lt!432396))))))

(declare-fun b!1312018 () Bool)

(declare-fun e!841251 () Bool)

(declare-fun lt!432395 () tuple2!12890)

(assert (=> b!1312018 (= e!841251 (= (_2!7331 lt!432395) (_2!7332 (v!21077 lt!431653))))))

(declare-fun d!369826 () Bool)

(assert (=> d!369826 e!841251))

(declare-fun c!215393 () Bool)

(assert (=> d!369826 (= c!215393 (> (size!10796 (_1!7331 lt!432395)) 0))))

(assert (=> d!369826 (= lt!432395 e!841249)))

(declare-fun c!215392 () Bool)

(assert (=> d!369826 (= c!215392 ((_ is Some!2563) lt!432396))))

(assert (=> d!369826 (= lt!432396 (maxPrefix!1004 thiss!19762 rules!2550 (_2!7332 (v!21077 lt!431653))))))

(assert (=> d!369826 (= (lexList!532 thiss!19762 rules!2550 (_2!7332 (v!21077 lt!431653))) lt!432395)))

(declare-fun b!1312019 () Bool)

(declare-fun e!841250 () Bool)

(assert (=> b!1312019 (= e!841251 e!841250)))

(declare-fun res!589032 () Bool)

(assert (=> b!1312019 (= res!589032 (< (size!10797 (_2!7331 lt!432395)) (size!10797 (_2!7332 (v!21077 lt!431653)))))))

(assert (=> b!1312019 (=> (not res!589032) (not e!841250))))

(declare-fun b!1312020 () Bool)

(assert (=> b!1312020 (= e!841250 (not (isEmpty!7858 (_1!7331 lt!432395))))))

(declare-fun b!1312021 () Bool)

(assert (=> b!1312021 (= e!841249 (tuple2!12891 Nil!13284 (_2!7332 (v!21077 lt!431653))))))

(assert (= (and d!369826 c!215392) b!1312017))

(assert (= (and d!369826 (not c!215392)) b!1312021))

(assert (= (and d!369826 c!215393) b!1312019))

(assert (= (and d!369826 (not c!215393)) b!1312018))

(assert (= (and b!1312019 res!589032) b!1312020))

(declare-fun m!1464999 () Bool)

(assert (=> b!1312017 m!1464999))

(declare-fun m!1465001 () Bool)

(assert (=> d!369826 m!1465001))

(declare-fun m!1465003 () Bool)

(assert (=> d!369826 m!1465003))

(declare-fun m!1465005 () Bool)

(assert (=> b!1312019 m!1465005))

(declare-fun m!1465007 () Bool)

(assert (=> b!1312019 m!1465007))

(declare-fun m!1465009 () Bool)

(assert (=> b!1312020 m!1465009))

(assert (=> b!1310595 d!369826))

(declare-fun d!369828 () Bool)

(declare-fun lt!432397 () Bool)

(assert (=> d!369828 (= lt!432397 (isEmpty!7858 (list!4987 (_1!7333 lt!431647))))))

(assert (=> d!369828 (= lt!432397 (isEmpty!7866 (c!214936 (_1!7333 lt!431647))))))

(assert (=> d!369828 (= (isEmpty!7863 (_1!7333 lt!431647)) lt!432397)))

(declare-fun bs!330054 () Bool)

(assert (= bs!330054 d!369828))

(assert (=> bs!330054 m!1462427))

(assert (=> bs!330054 m!1462427))

(declare-fun m!1465011 () Bool)

(assert (=> bs!330054 m!1465011))

(declare-fun m!1465013 () Bool)

(assert (=> bs!330054 m!1465013))

(assert (=> b!1310590 d!369828))

(declare-fun d!369830 () Bool)

(declare-fun res!589037 () Bool)

(declare-fun e!841256 () Bool)

(assert (=> d!369830 (=> res!589037 e!841256)))

(assert (=> d!369830 (= res!589037 ((_ is Nil!13285) rules!2550))))

(assert (=> d!369830 (= (noDuplicateTag!831 thiss!19762 rules!2550 Nil!13288) e!841256)))

(declare-fun b!1312026 () Bool)

(declare-fun e!841257 () Bool)

(assert (=> b!1312026 (= e!841256 e!841257)))

(declare-fun res!589038 () Bool)

(assert (=> b!1312026 (=> (not res!589038) (not e!841257))))

(declare-fun contains!2311 (List!13354 String!16181) Bool)

(assert (=> b!1312026 (= res!589038 (not (contains!2311 Nil!13288 (tag!2561 (h!18686 rules!2550)))))))

(declare-fun b!1312027 () Bool)

(assert (=> b!1312027 (= e!841257 (noDuplicateTag!831 thiss!19762 (t!118010 rules!2550) (Cons!13288 (tag!2561 (h!18686 rules!2550)) Nil!13288)))))

(assert (= (and d!369830 (not res!589037)) b!1312026))

(assert (= (and b!1312026 res!589038) b!1312027))

(declare-fun m!1465015 () Bool)

(assert (=> b!1312026 m!1465015))

(declare-fun m!1465017 () Bool)

(assert (=> b!1312027 m!1465017))

(assert (=> b!1310296 d!369830))

(declare-fun b!1312031 () Bool)

(declare-fun lt!432398 () List!13349)

(declare-fun e!841259 () Bool)

(assert (=> b!1312031 (= e!841259 (or (not (= (Cons!13283 lt!431407 Nil!13283) Nil!13283)) (= lt!432398 (t!118008 lt!431402))))))

(declare-fun b!1312030 () Bool)

(declare-fun res!589039 () Bool)

(assert (=> b!1312030 (=> (not res!589039) (not e!841259))))

(assert (=> b!1312030 (= res!589039 (= (size!10797 lt!432398) (+ (size!10797 (t!118008 lt!431402)) (size!10797 (Cons!13283 lt!431407 Nil!13283)))))))

(declare-fun b!1312028 () Bool)

(declare-fun e!841258 () List!13349)

(assert (=> b!1312028 (= e!841258 (Cons!13283 lt!431407 Nil!13283))))

(declare-fun d!369832 () Bool)

(assert (=> d!369832 e!841259))

(declare-fun res!589040 () Bool)

(assert (=> d!369832 (=> (not res!589040) (not e!841259))))

(assert (=> d!369832 (= res!589040 (= (content!1858 lt!432398) ((_ map or) (content!1858 (t!118008 lt!431402)) (content!1858 (Cons!13283 lt!431407 Nil!13283)))))))

(assert (=> d!369832 (= lt!432398 e!841258)))

(declare-fun c!215394 () Bool)

(assert (=> d!369832 (= c!215394 ((_ is Nil!13283) (t!118008 lt!431402)))))

(assert (=> d!369832 (= (++!3378 (t!118008 lt!431402) (Cons!13283 lt!431407 Nil!13283)) lt!432398)))

(declare-fun b!1312029 () Bool)

(assert (=> b!1312029 (= e!841258 (Cons!13283 (h!18684 (t!118008 lt!431402)) (++!3378 (t!118008 (t!118008 lt!431402)) (Cons!13283 lt!431407 Nil!13283))))))

(assert (= (and d!369832 c!215394) b!1312028))

(assert (= (and d!369832 (not c!215394)) b!1312029))

(assert (= (and d!369832 res!589040) b!1312030))

(assert (= (and b!1312030 res!589039) b!1312031))

(declare-fun m!1465019 () Bool)

(assert (=> b!1312030 m!1465019))

(assert (=> b!1312030 m!1462655))

(assert (=> b!1312030 m!1462125))

(declare-fun m!1465021 () Bool)

(assert (=> d!369832 m!1465021))

(assert (=> d!369832 m!1463029))

(assert (=> d!369832 m!1462131))

(declare-fun m!1465023 () Bool)

(assert (=> b!1312029 m!1465023))

(assert (=> b!1310379 d!369832))

(declare-fun b!1312032 () Bool)

(declare-fun e!841264 () Bool)

(declare-fun e!841260 () Bool)

(assert (=> b!1312032 (= e!841264 e!841260)))

(declare-fun c!215397 () Bool)

(assert (=> b!1312032 (= c!215397 ((_ is EmptyLang!3613) (derivativeStep!893 lt!431419 (head!2255 lt!431412))))))

(declare-fun b!1312033 () Bool)

(declare-fun res!589043 () Bool)

(declare-fun e!841263 () Bool)

(assert (=> b!1312033 (=> (not res!589043) (not e!841263))))

(declare-fun call!89334 () Bool)

(assert (=> b!1312033 (= res!589043 (not call!89334))))

(declare-fun b!1312034 () Bool)

(declare-fun res!589045 () Bool)

(assert (=> b!1312034 (=> (not res!589045) (not e!841263))))

(assert (=> b!1312034 (= res!589045 (isEmpty!7861 (tail!1874 (tail!1874 lt!431412))))))

(declare-fun b!1312035 () Bool)

(declare-fun res!589048 () Bool)

(declare-fun e!841261 () Bool)

(assert (=> b!1312035 (=> res!589048 e!841261)))

(assert (=> b!1312035 (= res!589048 (not ((_ is ElementMatch!3613) (derivativeStep!893 lt!431419 (head!2255 lt!431412)))))))

(assert (=> b!1312035 (= e!841260 e!841261)))

(declare-fun b!1312036 () Bool)

(declare-fun res!589046 () Bool)

(declare-fun e!841265 () Bool)

(assert (=> b!1312036 (=> res!589046 e!841265)))

(assert (=> b!1312036 (= res!589046 (not (isEmpty!7861 (tail!1874 (tail!1874 lt!431412)))))))

(declare-fun b!1312037 () Bool)

(declare-fun res!589042 () Bool)

(assert (=> b!1312037 (=> res!589042 e!841261)))

(assert (=> b!1312037 (= res!589042 e!841263)))

(declare-fun res!589047 () Bool)

(assert (=> b!1312037 (=> (not res!589047) (not e!841263))))

(declare-fun lt!432399 () Bool)

(assert (=> b!1312037 (= res!589047 lt!432399)))

(declare-fun b!1312038 () Bool)

(declare-fun e!841266 () Bool)

(assert (=> b!1312038 (= e!841266 (matchR!1615 (derivativeStep!893 (derivativeStep!893 lt!431419 (head!2255 lt!431412)) (head!2255 (tail!1874 lt!431412))) (tail!1874 (tail!1874 lt!431412))))))

(declare-fun b!1312039 () Bool)

(declare-fun e!841262 () Bool)

(assert (=> b!1312039 (= e!841262 e!841265)))

(declare-fun res!589044 () Bool)

(assert (=> b!1312039 (=> res!589044 e!841265)))

(assert (=> b!1312039 (= res!589044 call!89334)))

(declare-fun b!1312040 () Bool)

(assert (=> b!1312040 (= e!841264 (= lt!432399 call!89334))))

(declare-fun b!1312041 () Bool)

(assert (=> b!1312041 (= e!841266 (nullable!1141 (derivativeStep!893 lt!431419 (head!2255 lt!431412))))))

(declare-fun b!1312042 () Bool)

(assert (=> b!1312042 (= e!841260 (not lt!432399))))

(declare-fun d!369834 () Bool)

(assert (=> d!369834 e!841264))

(declare-fun c!215395 () Bool)

(assert (=> d!369834 (= c!215395 ((_ is EmptyExpr!3613) (derivativeStep!893 lt!431419 (head!2255 lt!431412))))))

(assert (=> d!369834 (= lt!432399 e!841266)))

(declare-fun c!215396 () Bool)

(assert (=> d!369834 (= c!215396 (isEmpty!7861 (tail!1874 lt!431412)))))

(assert (=> d!369834 (validRegex!1543 (derivativeStep!893 lt!431419 (head!2255 lt!431412)))))

(assert (=> d!369834 (= (matchR!1615 (derivativeStep!893 lt!431419 (head!2255 lt!431412)) (tail!1874 lt!431412)) lt!432399)))

(declare-fun b!1312043 () Bool)

(assert (=> b!1312043 (= e!841263 (= (head!2255 (tail!1874 lt!431412)) (c!214935 (derivativeStep!893 lt!431419 (head!2255 lt!431412)))))))

(declare-fun bm!89329 () Bool)

(assert (=> bm!89329 (= call!89334 (isEmpty!7861 (tail!1874 lt!431412)))))

(declare-fun b!1312044 () Bool)

(assert (=> b!1312044 (= e!841261 e!841262)))

(declare-fun res!589041 () Bool)

(assert (=> b!1312044 (=> (not res!589041) (not e!841262))))

(assert (=> b!1312044 (= res!589041 (not lt!432399))))

(declare-fun b!1312045 () Bool)

(assert (=> b!1312045 (= e!841265 (not (= (head!2255 (tail!1874 lt!431412)) (c!214935 (derivativeStep!893 lt!431419 (head!2255 lt!431412))))))))

(assert (= (and d!369834 c!215396) b!1312041))

(assert (= (and d!369834 (not c!215396)) b!1312038))

(assert (= (and d!369834 c!215395) b!1312040))

(assert (= (and d!369834 (not c!215395)) b!1312032))

(assert (= (and b!1312032 c!215397) b!1312042))

(assert (= (and b!1312032 (not c!215397)) b!1312035))

(assert (= (and b!1312035 (not res!589048)) b!1312037))

(assert (= (and b!1312037 res!589047) b!1312033))

(assert (= (and b!1312033 res!589043) b!1312034))

(assert (= (and b!1312034 res!589045) b!1312043))

(assert (= (and b!1312037 (not res!589042)) b!1312044))

(assert (= (and b!1312044 res!589041) b!1312039))

(assert (= (and b!1312039 (not res!589044)) b!1312036))

(assert (= (and b!1312036 (not res!589046)) b!1312045))

(assert (= (or b!1312040 b!1312033 b!1312039) bm!89329))

(assert (=> b!1312045 m!1462281))

(declare-fun m!1465025 () Bool)

(assert (=> b!1312045 m!1465025))

(assert (=> b!1312041 m!1462287))

(declare-fun m!1465027 () Bool)

(assert (=> b!1312041 m!1465027))

(assert (=> bm!89329 m!1462281))

(assert (=> bm!89329 m!1462283))

(assert (=> b!1312036 m!1462281))

(assert (=> b!1312036 m!1464981))

(assert (=> b!1312036 m!1464981))

(declare-fun m!1465029 () Bool)

(assert (=> b!1312036 m!1465029))

(assert (=> b!1312034 m!1462281))

(assert (=> b!1312034 m!1464981))

(assert (=> b!1312034 m!1464981))

(assert (=> b!1312034 m!1465029))

(assert (=> d!369834 m!1462281))

(assert (=> d!369834 m!1462283))

(assert (=> d!369834 m!1462287))

(declare-fun m!1465031 () Bool)

(assert (=> d!369834 m!1465031))

(assert (=> b!1312038 m!1462281))

(assert (=> b!1312038 m!1465025))

(assert (=> b!1312038 m!1462287))

(assert (=> b!1312038 m!1465025))

(declare-fun m!1465033 () Bool)

(assert (=> b!1312038 m!1465033))

(assert (=> b!1312038 m!1462281))

(assert (=> b!1312038 m!1464981))

(assert (=> b!1312038 m!1465033))

(assert (=> b!1312038 m!1464981))

(declare-fun m!1465035 () Bool)

(assert (=> b!1312038 m!1465035))

(assert (=> b!1312043 m!1462281))

(assert (=> b!1312043 m!1465025))

(assert (=> b!1310477 d!369834))

(declare-fun b!1312066 () Bool)

(declare-fun e!841280 () Regex!3613)

(assert (=> b!1312066 (= e!841280 (ite (= (head!2255 lt!431412) (c!214935 lt!431419)) EmptyExpr!3613 EmptyLang!3613))))

(declare-fun b!1312067 () Bool)

(declare-fun e!841281 () Regex!3613)

(declare-fun call!89345 () Regex!3613)

(assert (=> b!1312067 (= e!841281 (Union!3613 (Concat!6003 call!89345 (regTwo!7738 lt!431419)) EmptyLang!3613))))

(declare-fun b!1312069 () Bool)

(declare-fun e!841277 () Regex!3613)

(declare-fun e!841278 () Regex!3613)

(assert (=> b!1312069 (= e!841277 e!841278)))

(declare-fun c!215410 () Bool)

(assert (=> b!1312069 (= c!215410 ((_ is Star!3613) lt!431419))))

(declare-fun b!1312070 () Bool)

(declare-fun call!89346 () Regex!3613)

(declare-fun call!89343 () Regex!3613)

(assert (=> b!1312070 (= e!841277 (Union!3613 call!89346 call!89343))))

(declare-fun b!1312071 () Bool)

(declare-fun c!215408 () Bool)

(assert (=> b!1312071 (= c!215408 (nullable!1141 (regOne!7738 lt!431419)))))

(assert (=> b!1312071 (= e!841278 e!841281)))

(declare-fun bm!89338 () Bool)

(declare-fun c!215412 () Bool)

(assert (=> bm!89338 (= call!89343 (derivativeStep!893 (ite c!215412 (regTwo!7739 lt!431419) (ite c!215410 (reg!3942 lt!431419) (regOne!7738 lt!431419))) (head!2255 lt!431412)))))

(declare-fun b!1312072 () Bool)

(declare-fun call!89344 () Regex!3613)

(assert (=> b!1312072 (= e!841281 (Union!3613 (Concat!6003 call!89344 (regTwo!7738 lt!431419)) call!89345))))

(declare-fun bm!89339 () Bool)

(assert (=> bm!89339 (= call!89344 call!89343)))

(declare-fun bm!89340 () Bool)

(assert (=> bm!89340 (= call!89346 (derivativeStep!893 (ite c!215412 (regOne!7739 lt!431419) (ite c!215408 (regTwo!7738 lt!431419) (regOne!7738 lt!431419))) (head!2255 lt!431412)))))

(declare-fun bm!89341 () Bool)

(assert (=> bm!89341 (= call!89345 call!89346)))

(declare-fun b!1312073 () Bool)

(assert (=> b!1312073 (= c!215412 ((_ is Union!3613) lt!431419))))

(assert (=> b!1312073 (= e!841280 e!841277)))

(declare-fun b!1312068 () Bool)

(declare-fun e!841279 () Regex!3613)

(assert (=> b!1312068 (= e!841279 EmptyLang!3613)))

(declare-fun d!369836 () Bool)

(declare-fun lt!432402 () Regex!3613)

(assert (=> d!369836 (validRegex!1543 lt!432402)))

(assert (=> d!369836 (= lt!432402 e!841279)))

(declare-fun c!215411 () Bool)

(assert (=> d!369836 (= c!215411 (or ((_ is EmptyExpr!3613) lt!431419) ((_ is EmptyLang!3613) lt!431419)))))

(assert (=> d!369836 (validRegex!1543 lt!431419)))

(assert (=> d!369836 (= (derivativeStep!893 lt!431419 (head!2255 lt!431412)) lt!432402)))

(declare-fun b!1312074 () Bool)

(assert (=> b!1312074 (= e!841279 e!841280)))

(declare-fun c!215409 () Bool)

(assert (=> b!1312074 (= c!215409 ((_ is ElementMatch!3613) lt!431419))))

(declare-fun b!1312075 () Bool)

(assert (=> b!1312075 (= e!841278 (Concat!6003 call!89344 lt!431419))))

(assert (= (and d!369836 c!215411) b!1312068))

(assert (= (and d!369836 (not c!215411)) b!1312074))

(assert (= (and b!1312074 c!215409) b!1312066))

(assert (= (and b!1312074 (not c!215409)) b!1312073))

(assert (= (and b!1312073 c!215412) b!1312070))

(assert (= (and b!1312073 (not c!215412)) b!1312069))

(assert (= (and b!1312069 c!215410) b!1312075))

(assert (= (and b!1312069 (not c!215410)) b!1312071))

(assert (= (and b!1312071 c!215408) b!1312072))

(assert (= (and b!1312071 (not c!215408)) b!1312067))

(assert (= (or b!1312072 b!1312067) bm!89341))

(assert (= (or b!1312075 b!1312072) bm!89339))

(assert (= (or b!1312070 bm!89341) bm!89340))

(assert (= (or b!1312070 bm!89339) bm!89338))

(declare-fun m!1465037 () Bool)

(assert (=> b!1312071 m!1465037))

(assert (=> bm!89338 m!1462275))

(declare-fun m!1465039 () Bool)

(assert (=> bm!89338 m!1465039))

(assert (=> bm!89340 m!1462275))

(declare-fun m!1465041 () Bool)

(assert (=> bm!89340 m!1465041))

(declare-fun m!1465043 () Bool)

(assert (=> d!369836 m!1465043))

(assert (=> d!369836 m!1462285))

(assert (=> b!1310477 d!369836))

(assert (=> b!1310477 d!369072))

(assert (=> b!1310477 d!369402))

(declare-fun d!369838 () Bool)

(assert (=> d!369838 (= (isEmpty!7861 (list!4986 (_2!7333 lt!431404))) ((_ is Nil!13283) (list!4986 (_2!7333 lt!431404))))))

(assert (=> d!368870 d!369838))

(declare-fun d!369840 () Bool)

(assert (=> d!369840 (= (list!4986 (_2!7333 lt!431404)) (list!4990 (c!214934 (_2!7333 lt!431404))))))

(declare-fun bs!330055 () Bool)

(assert (= bs!330055 d!369840))

(declare-fun m!1465045 () Bool)

(assert (=> bs!330055 m!1465045))

(assert (=> d!368870 d!369840))

(declare-fun d!369842 () Bool)

(declare-fun lt!432403 () Bool)

(assert (=> d!369842 (= lt!432403 (isEmpty!7861 (list!4990 (c!214934 (_2!7333 lt!431404)))))))

(assert (=> d!369842 (= lt!432403 (= (size!10803 (c!214934 (_2!7333 lt!431404))) 0))))

(assert (=> d!369842 (= (isEmpty!7862 (c!214934 (_2!7333 lt!431404))) lt!432403)))

(declare-fun bs!330056 () Bool)

(assert (= bs!330056 d!369842))

(assert (=> bs!330056 m!1465045))

(assert (=> bs!330056 m!1465045))

(declare-fun m!1465047 () Bool)

(assert (=> bs!330056 m!1465047))

(declare-fun m!1465049 () Bool)

(assert (=> bs!330056 m!1465049))

(assert (=> d!368870 d!369842))

(declare-fun d!369844 () Bool)

(declare-fun c!215413 () Bool)

(assert (=> d!369844 (= c!215413 (isEmpty!7861 (tail!1874 lt!431414)))))

(declare-fun e!841282 () Bool)

(assert (=> d!369844 (= (prefixMatch!126 (derivativeStep!893 lt!431419 (head!2255 lt!431414)) (tail!1874 lt!431414)) e!841282)))

(declare-fun b!1312076 () Bool)

(assert (=> b!1312076 (= e!841282 (not (lostCause!269 (derivativeStep!893 lt!431419 (head!2255 lt!431414)))))))

(declare-fun b!1312077 () Bool)

(assert (=> b!1312077 (= e!841282 (prefixMatch!126 (derivativeStep!893 (derivativeStep!893 lt!431419 (head!2255 lt!431414)) (head!2255 (tail!1874 lt!431414))) (tail!1874 (tail!1874 lt!431414))))))

(assert (= (and d!369844 c!215413) b!1312076))

(assert (= (and d!369844 (not c!215413)) b!1312077))

(assert (=> d!369844 m!1462117))

(declare-fun m!1465051 () Bool)

(assert (=> d!369844 m!1465051))

(assert (=> b!1312076 m!1462115))

(declare-fun m!1465053 () Bool)

(assert (=> b!1312076 m!1465053))

(assert (=> b!1312077 m!1462117))

(declare-fun m!1465055 () Bool)

(assert (=> b!1312077 m!1465055))

(assert (=> b!1312077 m!1462115))

(assert (=> b!1312077 m!1465055))

(declare-fun m!1465057 () Bool)

(assert (=> b!1312077 m!1465057))

(assert (=> b!1312077 m!1462117))

(declare-fun m!1465059 () Bool)

(assert (=> b!1312077 m!1465059))

(assert (=> b!1312077 m!1465057))

(assert (=> b!1312077 m!1465059))

(declare-fun m!1465061 () Bool)

(assert (=> b!1312077 m!1465061))

(assert (=> b!1310369 d!369844))

(declare-fun b!1312078 () Bool)

(declare-fun e!841286 () Regex!3613)

(assert (=> b!1312078 (= e!841286 (ite (= (head!2255 lt!431414) (c!214935 lt!431419)) EmptyExpr!3613 EmptyLang!3613))))

(declare-fun b!1312079 () Bool)

(declare-fun e!841287 () Regex!3613)

(declare-fun call!89349 () Regex!3613)

(assert (=> b!1312079 (= e!841287 (Union!3613 (Concat!6003 call!89349 (regTwo!7738 lt!431419)) EmptyLang!3613))))

(declare-fun b!1312081 () Bool)

(declare-fun e!841283 () Regex!3613)

(declare-fun e!841284 () Regex!3613)

(assert (=> b!1312081 (= e!841283 e!841284)))

(declare-fun c!215416 () Bool)

(assert (=> b!1312081 (= c!215416 ((_ is Star!3613) lt!431419))))

(declare-fun b!1312082 () Bool)

(declare-fun call!89350 () Regex!3613)

(declare-fun call!89347 () Regex!3613)

(assert (=> b!1312082 (= e!841283 (Union!3613 call!89350 call!89347))))

(declare-fun b!1312083 () Bool)

(declare-fun c!215414 () Bool)

(assert (=> b!1312083 (= c!215414 (nullable!1141 (regOne!7738 lt!431419)))))

(assert (=> b!1312083 (= e!841284 e!841287)))

(declare-fun c!215418 () Bool)

(declare-fun bm!89342 () Bool)

(assert (=> bm!89342 (= call!89347 (derivativeStep!893 (ite c!215418 (regTwo!7739 lt!431419) (ite c!215416 (reg!3942 lt!431419) (regOne!7738 lt!431419))) (head!2255 lt!431414)))))

(declare-fun call!89348 () Regex!3613)

(declare-fun b!1312084 () Bool)

(assert (=> b!1312084 (= e!841287 (Union!3613 (Concat!6003 call!89348 (regTwo!7738 lt!431419)) call!89349))))

(declare-fun bm!89343 () Bool)

(assert (=> bm!89343 (= call!89348 call!89347)))

(declare-fun bm!89344 () Bool)

(assert (=> bm!89344 (= call!89350 (derivativeStep!893 (ite c!215418 (regOne!7739 lt!431419) (ite c!215414 (regTwo!7738 lt!431419) (regOne!7738 lt!431419))) (head!2255 lt!431414)))))

(declare-fun bm!89345 () Bool)

(assert (=> bm!89345 (= call!89349 call!89350)))

(declare-fun b!1312085 () Bool)

(assert (=> b!1312085 (= c!215418 ((_ is Union!3613) lt!431419))))

(assert (=> b!1312085 (= e!841286 e!841283)))

(declare-fun b!1312080 () Bool)

(declare-fun e!841285 () Regex!3613)

(assert (=> b!1312080 (= e!841285 EmptyLang!3613)))

(declare-fun d!369846 () Bool)

(declare-fun lt!432404 () Regex!3613)

(assert (=> d!369846 (validRegex!1543 lt!432404)))

(assert (=> d!369846 (= lt!432404 e!841285)))

(declare-fun c!215417 () Bool)

(assert (=> d!369846 (= c!215417 (or ((_ is EmptyExpr!3613) lt!431419) ((_ is EmptyLang!3613) lt!431419)))))

(assert (=> d!369846 (validRegex!1543 lt!431419)))

(assert (=> d!369846 (= (derivativeStep!893 lt!431419 (head!2255 lt!431414)) lt!432404)))

(declare-fun b!1312086 () Bool)

(assert (=> b!1312086 (= e!841285 e!841286)))

(declare-fun c!215415 () Bool)

(assert (=> b!1312086 (= c!215415 ((_ is ElementMatch!3613) lt!431419))))

(declare-fun b!1312087 () Bool)

(assert (=> b!1312087 (= e!841284 (Concat!6003 call!89348 lt!431419))))

(assert (= (and d!369846 c!215417) b!1312080))

(assert (= (and d!369846 (not c!215417)) b!1312086))

(assert (= (and b!1312086 c!215415) b!1312078))

(assert (= (and b!1312086 (not c!215415)) b!1312085))

(assert (= (and b!1312085 c!215418) b!1312082))

(assert (= (and b!1312085 (not c!215418)) b!1312081))

(assert (= (and b!1312081 c!215416) b!1312087))

(assert (= (and b!1312081 (not c!215416)) b!1312083))

(assert (= (and b!1312083 c!215414) b!1312084))

(assert (= (and b!1312083 (not c!215414)) b!1312079))

(assert (= (or b!1312084 b!1312079) bm!89345))

(assert (= (or b!1312087 b!1312084) bm!89343))

(assert (= (or b!1312082 bm!89345) bm!89344))

(assert (= (or b!1312082 bm!89343) bm!89342))

(assert (=> b!1312083 m!1465037))

(assert (=> bm!89342 m!1462113))

(declare-fun m!1465063 () Bool)

(assert (=> bm!89342 m!1465063))

(assert (=> bm!89344 m!1462113))

(declare-fun m!1465065 () Bool)

(assert (=> bm!89344 m!1465065))

(declare-fun m!1465067 () Bool)

(assert (=> d!369846 m!1465067))

(assert (=> d!369846 m!1462285))

(assert (=> b!1310369 d!369846))

(declare-fun d!369848 () Bool)

(assert (=> d!369848 (= (head!2255 lt!431414) (h!18684 lt!431414))))

(assert (=> b!1310369 d!369848))

(declare-fun d!369850 () Bool)

(assert (=> d!369850 (= (tail!1874 lt!431414) (t!118008 lt!431414))))

(assert (=> b!1310369 d!369850))

(declare-fun b!1312088 () Bool)

(declare-fun e!841288 () tuple2!12890)

(declare-fun lt!432407 () Option!2564)

(declare-fun lt!432405 () tuple2!12890)

(assert (=> b!1312088 (= e!841288 (tuple2!12891 (Cons!13284 (_1!7332 (v!21077 lt!432407)) (_1!7331 lt!432405)) (_2!7331 lt!432405)))))

(assert (=> b!1312088 (= lt!432405 (lexList!532 thiss!19762 rules!2550 (_2!7332 (v!21077 lt!432407))))))

(declare-fun b!1312089 () Bool)

(declare-fun e!841290 () Bool)

(declare-fun lt!432406 () tuple2!12890)

(assert (=> b!1312089 (= e!841290 (= (_2!7331 lt!432406) (_2!7332 (v!21077 lt!431456))))))

(declare-fun d!369852 () Bool)

(assert (=> d!369852 e!841290))

(declare-fun c!215420 () Bool)

(assert (=> d!369852 (= c!215420 (> (size!10796 (_1!7331 lt!432406)) 0))))

(assert (=> d!369852 (= lt!432406 e!841288)))

(declare-fun c!215419 () Bool)

(assert (=> d!369852 (= c!215419 ((_ is Some!2563) lt!432407))))

(assert (=> d!369852 (= lt!432407 (maxPrefix!1004 thiss!19762 rules!2550 (_2!7332 (v!21077 lt!431456))))))

(assert (=> d!369852 (= (lexList!532 thiss!19762 rules!2550 (_2!7332 (v!21077 lt!431456))) lt!432406)))

(declare-fun b!1312090 () Bool)

(declare-fun e!841289 () Bool)

(assert (=> b!1312090 (= e!841290 e!841289)))

(declare-fun res!589049 () Bool)

(assert (=> b!1312090 (= res!589049 (< (size!10797 (_2!7331 lt!432406)) (size!10797 (_2!7332 (v!21077 lt!431456)))))))

(assert (=> b!1312090 (=> (not res!589049) (not e!841289))))

(declare-fun b!1312091 () Bool)

(assert (=> b!1312091 (= e!841289 (not (isEmpty!7858 (_1!7331 lt!432406))))))

(declare-fun b!1312092 () Bool)

(assert (=> b!1312092 (= e!841288 (tuple2!12891 Nil!13284 (_2!7332 (v!21077 lt!431456))))))

(assert (= (and d!369852 c!215419) b!1312088))

(assert (= (and d!369852 (not c!215419)) b!1312092))

(assert (= (and d!369852 c!215420) b!1312090))

(assert (= (and d!369852 (not c!215420)) b!1312089))

(assert (= (and b!1312090 res!589049) b!1312091))

(declare-fun m!1465069 () Bool)

(assert (=> b!1312088 m!1465069))

(declare-fun m!1465071 () Bool)

(assert (=> d!369852 m!1465071))

(declare-fun m!1465073 () Bool)

(assert (=> d!369852 m!1465073))

(declare-fun m!1465075 () Bool)

(assert (=> b!1312090 m!1465075))

(declare-fun m!1465077 () Bool)

(assert (=> b!1312090 m!1465077))

(declare-fun m!1465079 () Bool)

(assert (=> b!1312091 m!1465079))

(assert (=> b!1310067 d!369852))

(declare-fun b!1312101 () Bool)

(declare-fun e!841297 () Bool)

(declare-fun call!89353 () Bool)

(assert (=> b!1312101 (= e!841297 call!89353)))

(declare-fun bm!89348 () Bool)

(assert (=> bm!89348 (= call!89353 (ruleDisjointCharsFromAllFromOtherType!305 (h!18686 rules!2550) (t!118010 rules!2550)))))

(declare-fun b!1312102 () Bool)

(declare-fun e!841299 () Bool)

(assert (=> b!1312102 (= e!841299 call!89353)))

(declare-fun d!369854 () Bool)

(declare-fun c!215423 () Bool)

(assert (=> d!369854 (= c!215423 (and ((_ is Cons!13285) rules!2550) (not (= (isSeparator!2299 (h!18686 rules!2550)) (isSeparator!2299 (h!18686 rules!2550))))))))

(declare-fun e!841298 () Bool)

(assert (=> d!369854 (= (ruleDisjointCharsFromAllFromOtherType!305 (h!18686 rules!2550) rules!2550) e!841298)))

(declare-fun b!1312103 () Bool)

(assert (=> b!1312103 (= e!841298 e!841299)))

(declare-fun res!589055 () Bool)

(assert (=> b!1312103 (= res!589055 (not ((_ is Cons!13285) rules!2550)))))

(assert (=> b!1312103 (=> res!589055 e!841299)))

(declare-fun b!1312104 () Bool)

(assert (=> b!1312104 (= e!841298 e!841297)))

(declare-fun res!589054 () Bool)

(declare-fun rulesUseDisjointChars!158 (Rule!4398 Rule!4398) Bool)

(assert (=> b!1312104 (= res!589054 (rulesUseDisjointChars!158 (h!18686 rules!2550) (h!18686 rules!2550)))))

(assert (=> b!1312104 (=> (not res!589054) (not e!841297))))

(assert (= (and d!369854 c!215423) b!1312104))

(assert (= (and d!369854 (not c!215423)) b!1312103))

(assert (= (and b!1312104 res!589054) b!1312101))

(assert (= (and b!1312103 (not res!589055)) b!1312102))

(assert (= (or b!1312101 b!1312102) bm!89348))

(declare-fun m!1465081 () Bool)

(assert (=> bm!89348 m!1465081))

(declare-fun m!1465083 () Bool)

(assert (=> b!1312104 m!1465083))

(assert (=> b!1310242 d!369854))

(declare-fun d!369856 () Bool)

(assert (=> d!369856 (= (inv!17666 (dynLambda!5765 (toChars!3377 (transformation!2299 (rule!4038 t2!34))) (value!75154 t2!34))) (isBalanced!1270 (c!214934 (dynLambda!5765 (toChars!3377 (transformation!2299 (rule!4038 t2!34))) (value!75154 t2!34)))))))

(declare-fun bs!330057 () Bool)

(assert (= bs!330057 d!369856))

(declare-fun m!1465085 () Bool)

(assert (=> bs!330057 m!1465085))

(assert (=> tb!69711 d!369856))

(assert (=> d!368912 d!369340))

(assert (=> d!368912 d!369690))

(declare-fun bs!330058 () Bool)

(declare-fun d!369858 () Bool)

(assert (= bs!330058 (and d!369858 b!1309930)))

(declare-fun lambda!53062 () Int)

(assert (=> bs!330058 (= lambda!53062 lambda!52948)))

(declare-fun bs!330059 () Bool)

(assert (= bs!330059 (and d!369858 d!368886)))

(assert (=> bs!330059 (= lambda!53062 lambda!52983)))

(declare-fun bs!330060 () Bool)

(assert (= bs!330060 (and d!369858 d!368850)))

(declare-fun lambda!53063 () Int)

(assert (=> bs!330060 (not (= lambda!53063 lambda!52980))))

(declare-fun bs!330061 () Bool)

(assert (= bs!330061 (and d!369858 d!368836)))

(assert (=> bs!330061 (not (= lambda!53063 lambda!52979))))

(declare-fun bs!330062 () Bool)

(assert (= bs!330062 (and d!369858 d!368832)))

(assert (=> bs!330062 (not (= lambda!53063 lambda!52973))))

(assert (=> bs!330061 (= lambda!53063 lambda!52978)))

(assert (=> bs!330058 (not (= lambda!53063 lambda!52949))))

(declare-fun bs!330063 () Bool)

(assert (= bs!330063 (and d!369858 d!369108)))

(assert (=> bs!330063 (not (= lambda!53063 lambda!53007))))

(declare-fun bs!330064 () Bool)

(assert (= bs!330064 (and d!369858 d!369106)))

(assert (=> bs!330064 (not (= lambda!53063 lambda!53004))))

(assert (=> d!369858 (forall!3282 (map!2915 rules!2550 lambda!53062) lambda!53063)))

(declare-fun lt!432412 () Unit!19338)

(declare-fun e!841302 () Unit!19338)

(assert (=> d!369858 (= lt!432412 e!841302)))

(declare-fun c!215426 () Bool)

(assert (=> d!369858 (= c!215426 ((_ is Nil!13285) rules!2550))))

(assert (=> d!369858 (rulesValidInductive!720 thiss!19762 rules!2550)))

(assert (=> d!369858 (= (lemma!63 rules!2550 thiss!19762 rules!2550) lt!432412)))

(declare-fun b!1312109 () Bool)

(declare-fun Unit!19358 () Unit!19338)

(assert (=> b!1312109 (= e!841302 Unit!19358)))

(declare-fun b!1312110 () Bool)

(declare-fun Unit!19359 () Unit!19338)

(assert (=> b!1312110 (= e!841302 Unit!19359)))

(declare-fun lt!432413 () Unit!19338)

(assert (=> b!1312110 (= lt!432413 (lemma!63 rules!2550 thiss!19762 (t!118010 rules!2550)))))

(assert (= (and d!369858 c!215426) b!1312109))

(assert (= (and d!369858 (not c!215426)) b!1312110))

(declare-fun m!1465087 () Bool)

(assert (=> d!369858 m!1465087))

(assert (=> d!369858 m!1465087))

(declare-fun m!1465089 () Bool)

(assert (=> d!369858 m!1465089))

(assert (=> d!369858 m!1462067))

(declare-fun m!1465091 () Bool)

(assert (=> b!1312110 m!1465091))

(assert (=> d!368886 d!369858))

(declare-fun bs!330065 () Bool)

(declare-fun d!369860 () Bool)

(assert (= bs!330065 (and d!369860 d!368850)))

(declare-fun lambda!53066 () Int)

(assert (=> bs!330065 (not (= lambda!53066 lambda!52980))))

(declare-fun bs!330066 () Bool)

(assert (= bs!330066 (and d!369860 d!368836)))

(assert (=> bs!330066 (not (= lambda!53066 lambda!52979))))

(declare-fun bs!330067 () Bool)

(assert (= bs!330067 (and d!369860 d!368832)))

(assert (=> bs!330067 (not (= lambda!53066 lambda!52973))))

(declare-fun bs!330068 () Bool)

(assert (= bs!330068 (and d!369860 d!369858)))

(assert (=> bs!330068 (= lambda!53066 lambda!53063)))

(assert (=> bs!330066 (= lambda!53066 lambda!52978)))

(declare-fun bs!330069 () Bool)

(assert (= bs!330069 (and d!369860 b!1309930)))

(assert (=> bs!330069 (not (= lambda!53066 lambda!52949))))

(declare-fun bs!330070 () Bool)

(assert (= bs!330070 (and d!369860 d!369108)))

(assert (=> bs!330070 (not (= lambda!53066 lambda!53007))))

(declare-fun bs!330071 () Bool)

(assert (= bs!330071 (and d!369860 d!369106)))

(assert (=> bs!330071 (not (= lambda!53066 lambda!53004))))

(declare-fun e!841315 () Bool)

(declare-fun lt!432416 () Regex!3613)

(declare-fun b!1312131 () Bool)

(assert (=> b!1312131 (= e!841315 (= lt!432416 (head!2254 (map!2915 rules!2550 lambda!52983))))))

(declare-fun b!1312132 () Bool)

(declare-fun e!841319 () Bool)

(assert (=> b!1312132 (= e!841319 e!841315)))

(declare-fun c!215437 () Bool)

(declare-fun isEmpty!7867 (List!13352) Bool)

(declare-fun tail!1878 (List!13352) List!13352)

(assert (=> b!1312132 (= c!215437 (isEmpty!7867 (tail!1878 (map!2915 rules!2550 lambda!52983))))))

(declare-fun b!1312133 () Bool)

(declare-fun e!841320 () Regex!3613)

(assert (=> b!1312133 (= e!841320 (Union!3613 (h!18687 (map!2915 rules!2550 lambda!52983)) (generalisedUnion!71 (t!118011 (map!2915 rules!2550 lambda!52983)))))))

(declare-fun b!1312134 () Bool)

(declare-fun isEmptyLang!21 (Regex!3613) Bool)

(assert (=> b!1312134 (= e!841319 (isEmptyLang!21 lt!432416))))

(declare-fun b!1312135 () Bool)

(declare-fun e!841316 () Regex!3613)

(assert (=> b!1312135 (= e!841316 e!841320)))

(declare-fun c!215438 () Bool)

(assert (=> b!1312135 (= c!215438 ((_ is Cons!13286) (map!2915 rules!2550 lambda!52983)))))

(declare-fun b!1312136 () Bool)

(assert (=> b!1312136 (= e!841316 (h!18687 (map!2915 rules!2550 lambda!52983)))))

(declare-fun b!1312138 () Bool)

(declare-fun e!841318 () Bool)

(assert (=> b!1312138 (= e!841318 e!841319)))

(declare-fun c!215436 () Bool)

(assert (=> b!1312138 (= c!215436 (isEmpty!7867 (map!2915 rules!2550 lambda!52983)))))

(declare-fun b!1312139 () Bool)

(assert (=> b!1312139 (= e!841320 EmptyLang!3613)))

(declare-fun b!1312140 () Bool)

(declare-fun e!841317 () Bool)

(assert (=> b!1312140 (= e!841317 (isEmpty!7867 (t!118011 (map!2915 rules!2550 lambda!52983))))))

(declare-fun b!1312137 () Bool)

(declare-fun isUnion!21 (Regex!3613) Bool)

(assert (=> b!1312137 (= e!841315 (isUnion!21 lt!432416))))

(assert (=> d!369860 e!841318))

(declare-fun res!589061 () Bool)

(assert (=> d!369860 (=> (not res!589061) (not e!841318))))

(assert (=> d!369860 (= res!589061 (validRegex!1543 lt!432416))))

(assert (=> d!369860 (= lt!432416 e!841316)))

(declare-fun c!215435 () Bool)

(assert (=> d!369860 (= c!215435 e!841317)))

(declare-fun res!589060 () Bool)

(assert (=> d!369860 (=> (not res!589060) (not e!841317))))

(assert (=> d!369860 (= res!589060 ((_ is Cons!13286) (map!2915 rules!2550 lambda!52983)))))

(assert (=> d!369860 (forall!3282 (map!2915 rules!2550 lambda!52983) lambda!53066)))

(assert (=> d!369860 (= (generalisedUnion!71 (map!2915 rules!2550 lambda!52983)) lt!432416)))

(assert (= (and d!369860 res!589060) b!1312140))

(assert (= (and d!369860 c!215435) b!1312136))

(assert (= (and d!369860 (not c!215435)) b!1312135))

(assert (= (and b!1312135 c!215438) b!1312133))

(assert (= (and b!1312135 (not c!215438)) b!1312139))

(assert (= (and d!369860 res!589061) b!1312138))

(assert (= (and b!1312138 c!215436) b!1312134))

(assert (= (and b!1312138 (not c!215436)) b!1312132))

(assert (= (and b!1312132 c!215437) b!1312131))

(assert (= (and b!1312132 (not c!215437)) b!1312137))

(declare-fun m!1465093 () Bool)

(assert (=> b!1312134 m!1465093))

(assert (=> b!1312131 m!1462147))

(declare-fun m!1465095 () Bool)

(assert (=> b!1312131 m!1465095))

(declare-fun m!1465097 () Bool)

(assert (=> b!1312133 m!1465097))

(assert (=> b!1312138 m!1462147))

(declare-fun m!1465099 () Bool)

(assert (=> b!1312138 m!1465099))

(declare-fun m!1465101 () Bool)

(assert (=> b!1312137 m!1465101))

(declare-fun m!1465103 () Bool)

(assert (=> d!369860 m!1465103))

(assert (=> d!369860 m!1462147))

(declare-fun m!1465105 () Bool)

(assert (=> d!369860 m!1465105))

(assert (=> b!1312132 m!1462147))

(declare-fun m!1465107 () Bool)

(assert (=> b!1312132 m!1465107))

(assert (=> b!1312132 m!1465107))

(declare-fun m!1465109 () Bool)

(assert (=> b!1312132 m!1465109))

(declare-fun m!1465111 () Bool)

(assert (=> b!1312140 m!1465111))

(assert (=> d!368886 d!369860))

(declare-fun d!369862 () Bool)

(declare-fun lt!432417 () List!13352)

(assert (=> d!369862 (= (size!10799 lt!432417) (size!10800 rules!2550))))

(declare-fun e!841321 () List!13352)

(assert (=> d!369862 (= lt!432417 e!841321)))

(declare-fun c!215439 () Bool)

(assert (=> d!369862 (= c!215439 ((_ is Nil!13285) rules!2550))))

(assert (=> d!369862 (= (map!2915 rules!2550 lambda!52983) lt!432417)))

(declare-fun b!1312141 () Bool)

(assert (=> b!1312141 (= e!841321 Nil!13286)))

(declare-fun b!1312142 () Bool)

(assert (=> b!1312142 (= e!841321 ($colon$colon!145 (map!2915 (t!118010 rules!2550) lambda!52983) (dynLambda!5760 lambda!52983 (h!18686 rules!2550))))))

(assert (= (and d!369862 c!215439) b!1312141))

(assert (= (and d!369862 (not c!215439)) b!1312142))

(declare-fun b_lambda!37755 () Bool)

(assert (=> (not b_lambda!37755) (not b!1312142)))

(declare-fun m!1465113 () Bool)

(assert (=> d!369862 m!1465113))

(assert (=> d!369862 m!1461895))

(declare-fun m!1465115 () Bool)

(assert (=> b!1312142 m!1465115))

(declare-fun m!1465117 () Bool)

(assert (=> b!1312142 m!1465117))

(assert (=> b!1312142 m!1465115))

(assert (=> b!1312142 m!1465117))

(declare-fun m!1465119 () Bool)

(assert (=> b!1312142 m!1465119))

(assert (=> d!368886 d!369862))

(assert (=> b!1310473 d!369400))

(assert (=> b!1310473 d!369402))

(declare-fun d!369864 () Bool)

(declare-fun res!589064 () List!13349)

(assert (=> d!369864 (dynLambda!5768 lambda!52947 res!589064)))

(declare-fun e!841324 () Bool)

(assert (=> d!369864 e!841324))

(assert (=> d!369864 (= (choose!8012 lambda!52947) res!589064)))

(declare-fun b!1312145 () Bool)

(declare-fun tp!382166 () Bool)

(assert (=> b!1312145 (= e!841324 (and tp_is_empty!6615 tp!382166))))

(assert (= (and d!369864 ((_ is Cons!13283) res!589064)) b!1312145))

(declare-fun b_lambda!37757 () Bool)

(assert (=> (not b_lambda!37757) (not d!369864)))

(declare-fun m!1465121 () Bool)

(assert (=> d!369864 m!1465121))

(assert (=> d!368932 d!369864))

(assert (=> d!368932 d!368936))

(declare-fun d!369866 () Bool)

(assert (=> d!369866 (= (isDefined!2171 lt!431554) (not (isEmpty!7860 lt!431554)))))

(declare-fun bs!330072 () Bool)

(assert (= bs!330072 d!369866))

(assert (=> bs!330072 m!1462061))

(assert (=> b!1310343 d!369866))

(declare-fun d!369868 () Bool)

(declare-fun c!215442 () Bool)

(assert (=> d!369868 (= c!215442 ((_ is Nil!13286) (map!2915 rules!2550 lambda!52948)))))

(declare-fun e!841327 () (InoxSet Regex!3613))

(assert (=> d!369868 (= (content!1857 (map!2915 rules!2550 lambda!52948)) e!841327)))

(declare-fun b!1312150 () Bool)

(assert (=> b!1312150 (= e!841327 ((as const (Array Regex!3613 Bool)) false))))

(declare-fun b!1312151 () Bool)

(assert (=> b!1312151 (= e!841327 ((_ map or) (store ((as const (Array Regex!3613 Bool)) false) (h!18687 (map!2915 rules!2550 lambda!52948)) true) (content!1857 (t!118011 (map!2915 rules!2550 lambda!52948)))))))

(assert (= (and d!369868 c!215442) b!1312150))

(assert (= (and d!369868 (not c!215442)) b!1312151))

(declare-fun m!1465123 () Bool)

(assert (=> b!1312151 m!1465123))

(assert (=> b!1312151 m!1464605))

(assert (=> d!368806 d!369868))

(declare-fun b!1312152 () Bool)

(declare-fun e!841332 () Bool)

(declare-fun e!841328 () Bool)

(assert (=> b!1312152 (= e!841332 e!841328)))

(declare-fun c!215445 () Bool)

(assert (=> b!1312152 (= c!215445 ((_ is EmptyLang!3613) lt!431419))))

(declare-fun b!1312153 () Bool)

(declare-fun res!589067 () Bool)

(declare-fun e!841331 () Bool)

(assert (=> b!1312153 (=> (not res!589067) (not e!841331))))

(declare-fun call!89354 () Bool)

(assert (=> b!1312153 (= res!589067 (not call!89354))))

(declare-fun b!1312154 () Bool)

(declare-fun res!589069 () Bool)

(assert (=> b!1312154 (=> (not res!589069) (not e!841331))))

(assert (=> b!1312154 (= res!589069 (isEmpty!7861 (tail!1874 lt!431619)))))

(declare-fun b!1312155 () Bool)

(declare-fun res!589072 () Bool)

(declare-fun e!841329 () Bool)

(assert (=> b!1312155 (=> res!589072 e!841329)))

(assert (=> b!1312155 (= res!589072 (not ((_ is ElementMatch!3613) lt!431419)))))

(assert (=> b!1312155 (= e!841328 e!841329)))

(declare-fun b!1312156 () Bool)

(declare-fun res!589070 () Bool)

(declare-fun e!841333 () Bool)

(assert (=> b!1312156 (=> res!589070 e!841333)))

(assert (=> b!1312156 (= res!589070 (not (isEmpty!7861 (tail!1874 lt!431619))))))

(declare-fun b!1312157 () Bool)

(declare-fun res!589066 () Bool)

(assert (=> b!1312157 (=> res!589066 e!841329)))

(assert (=> b!1312157 (= res!589066 e!841331)))

(declare-fun res!589071 () Bool)

(assert (=> b!1312157 (=> (not res!589071) (not e!841331))))

(declare-fun lt!432418 () Bool)

(assert (=> b!1312157 (= res!589071 lt!432418)))

(declare-fun b!1312158 () Bool)

(declare-fun e!841334 () Bool)

(assert (=> b!1312158 (= e!841334 (matchR!1615 (derivativeStep!893 lt!431419 (head!2255 lt!431619)) (tail!1874 lt!431619)))))

(declare-fun b!1312159 () Bool)

(declare-fun e!841330 () Bool)

(assert (=> b!1312159 (= e!841330 e!841333)))

(declare-fun res!589068 () Bool)

(assert (=> b!1312159 (=> res!589068 e!841333)))

(assert (=> b!1312159 (= res!589068 call!89354)))

(declare-fun b!1312160 () Bool)

(assert (=> b!1312160 (= e!841332 (= lt!432418 call!89354))))

(declare-fun b!1312161 () Bool)

(assert (=> b!1312161 (= e!841334 (nullable!1141 lt!431419))))

(declare-fun b!1312162 () Bool)

(assert (=> b!1312162 (= e!841328 (not lt!432418))))

(declare-fun d!369870 () Bool)

(assert (=> d!369870 e!841332))

(declare-fun c!215443 () Bool)

(assert (=> d!369870 (= c!215443 ((_ is EmptyExpr!3613) lt!431419))))

(assert (=> d!369870 (= lt!432418 e!841334)))

(declare-fun c!215444 () Bool)

(assert (=> d!369870 (= c!215444 (isEmpty!7861 lt!431619))))

(assert (=> d!369870 (validRegex!1543 lt!431419)))

(assert (=> d!369870 (= (matchR!1615 lt!431419 lt!431619) lt!432418)))

(declare-fun b!1312163 () Bool)

(assert (=> b!1312163 (= e!841331 (= (head!2255 lt!431619) (c!214935 lt!431419)))))

(declare-fun bm!89349 () Bool)

(assert (=> bm!89349 (= call!89354 (isEmpty!7861 lt!431619))))

(declare-fun b!1312164 () Bool)

(assert (=> b!1312164 (= e!841329 e!841330)))

(declare-fun res!589065 () Bool)

(assert (=> b!1312164 (=> (not res!589065) (not e!841330))))

(assert (=> b!1312164 (= res!589065 (not lt!432418))))

(declare-fun b!1312165 () Bool)

(assert (=> b!1312165 (= e!841333 (not (= (head!2255 lt!431619) (c!214935 lt!431419))))))

(assert (= (and d!369870 c!215444) b!1312161))

(assert (= (and d!369870 (not c!215444)) b!1312158))

(assert (= (and d!369870 c!215443) b!1312160))

(assert (= (and d!369870 (not c!215443)) b!1312152))

(assert (= (and b!1312152 c!215445) b!1312162))

(assert (= (and b!1312152 (not c!215445)) b!1312155))

(assert (= (and b!1312155 (not res!589072)) b!1312157))

(assert (= (and b!1312157 res!589071) b!1312153))

(assert (= (and b!1312153 res!589067) b!1312154))

(assert (= (and b!1312154 res!589069) b!1312163))

(assert (= (and b!1312157 (not res!589066)) b!1312164))

(assert (= (and b!1312164 res!589065) b!1312159))

(assert (= (and b!1312159 (not res!589068)) b!1312156))

(assert (= (and b!1312156 (not res!589070)) b!1312165))

(assert (= (or b!1312160 b!1312153 b!1312159) bm!89349))

(assert (=> b!1312165 m!1464807))

(assert (=> b!1312161 m!1462277))

(declare-fun m!1465125 () Bool)

(assert (=> bm!89349 m!1465125))

(assert (=> b!1312156 m!1464803))

(assert (=> b!1312156 m!1464803))

(declare-fun m!1465127 () Bool)

(assert (=> b!1312156 m!1465127))

(assert (=> b!1312154 m!1464803))

(assert (=> b!1312154 m!1464803))

(assert (=> b!1312154 m!1465127))

(assert (=> d!369870 m!1465125))

(assert (=> d!369870 m!1462285))

(assert (=> b!1312158 m!1464807))

(assert (=> b!1312158 m!1464807))

(declare-fun m!1465129 () Bool)

(assert (=> b!1312158 m!1465129))

(assert (=> b!1312158 m!1464803))

(assert (=> b!1312158 m!1465129))

(assert (=> b!1312158 m!1464803))

(declare-fun m!1465131 () Bool)

(assert (=> b!1312158 m!1465131))

(assert (=> b!1312163 m!1464807))

(assert (=> bs!329821 d!369870))

(declare-fun d!369872 () Bool)

(declare-fun lt!432419 () Bool)

(assert (=> d!369872 (= lt!432419 (select (content!1858 (t!118008 lt!431414)) lt!431407))))

(declare-fun e!841336 () Bool)

(assert (=> d!369872 (= lt!432419 e!841336)))

(declare-fun res!589074 () Bool)

(assert (=> d!369872 (=> (not res!589074) (not e!841336))))

(assert (=> d!369872 (= res!589074 ((_ is Cons!13283) (t!118008 lt!431414)))))

(assert (=> d!369872 (= (contains!2308 (t!118008 lt!431414) lt!431407) lt!432419)))

(declare-fun b!1312166 () Bool)

(declare-fun e!841335 () Bool)

(assert (=> b!1312166 (= e!841336 e!841335)))

(declare-fun res!589073 () Bool)

(assert (=> b!1312166 (=> res!589073 e!841335)))

(assert (=> b!1312166 (= res!589073 (= (h!18684 (t!118008 lt!431414)) lt!431407))))

(declare-fun b!1312167 () Bool)

(assert (=> b!1312167 (= e!841335 (contains!2308 (t!118008 (t!118008 lt!431414)) lt!431407))))

(assert (= (and d!369872 res!589074) b!1312166))

(assert (= (and b!1312166 (not res!589073)) b!1312167))

(assert (=> d!369872 m!1462645))

(declare-fun m!1465133 () Bool)

(assert (=> d!369872 m!1465133))

(declare-fun m!1465135 () Bool)

(assert (=> b!1312167 m!1465135))

(assert (=> b!1310513 d!369872))

(declare-fun d!369874 () Bool)

(assert (=> d!369874 (= ($colon$colon!145 (map!2915 (t!118010 rules!2550) lambda!52948) (dynLambda!5760 lambda!52948 (h!18686 rules!2550))) (Cons!13286 (dynLambda!5760 lambda!52948 (h!18686 rules!2550)) (map!2915 (t!118010 rules!2550) lambda!52948)))))

(assert (=> b!1310211 d!369874))

(declare-fun d!369876 () Bool)

(declare-fun lt!432420 () List!13352)

(assert (=> d!369876 (= (size!10799 lt!432420) (size!10800 (t!118010 rules!2550)))))

(declare-fun e!841337 () List!13352)

(assert (=> d!369876 (= lt!432420 e!841337)))

(declare-fun c!215446 () Bool)

(assert (=> d!369876 (= c!215446 ((_ is Nil!13285) (t!118010 rules!2550)))))

(assert (=> d!369876 (= (map!2915 (t!118010 rules!2550) lambda!52948) lt!432420)))

(declare-fun b!1312168 () Bool)

(assert (=> b!1312168 (= e!841337 Nil!13286)))

(declare-fun b!1312169 () Bool)

(assert (=> b!1312169 (= e!841337 ($colon$colon!145 (map!2915 (t!118010 (t!118010 rules!2550)) lambda!52948) (dynLambda!5760 lambda!52948 (h!18686 (t!118010 rules!2550)))))))

(assert (= (and d!369876 c!215446) b!1312168))

(assert (= (and d!369876 (not c!215446)) b!1312169))

(declare-fun b_lambda!37759 () Bool)

(assert (=> (not b_lambda!37759) (not b!1312169)))

(declare-fun m!1465137 () Bool)

(assert (=> d!369876 m!1465137))

(assert (=> d!369876 m!1463713))

(declare-fun m!1465139 () Bool)

(assert (=> b!1312169 m!1465139))

(declare-fun m!1465141 () Bool)

(assert (=> b!1312169 m!1465141))

(assert (=> b!1312169 m!1465139))

(assert (=> b!1312169 m!1465141))

(declare-fun m!1465143 () Bool)

(assert (=> b!1312169 m!1465143))

(assert (=> b!1310211 d!369876))

(declare-fun d!369878 () Bool)

(declare-fun lt!432421 () Bool)

(assert (=> d!369878 (= lt!432421 (select (content!1859 (t!118010 rules!2550)) (rule!4038 t2!34)))))

(declare-fun e!841338 () Bool)

(assert (=> d!369878 (= lt!432421 e!841338)))

(declare-fun res!589075 () Bool)

(assert (=> d!369878 (=> (not res!589075) (not e!841338))))

(assert (=> d!369878 (= res!589075 ((_ is Cons!13285) (t!118010 rules!2550)))))

(assert (=> d!369878 (= (contains!2309 (t!118010 rules!2550) (rule!4038 t2!34)) lt!432421)))

(declare-fun b!1312170 () Bool)

(declare-fun e!841339 () Bool)

(assert (=> b!1312170 (= e!841338 e!841339)))

(declare-fun res!589076 () Bool)

(assert (=> b!1312170 (=> res!589076 e!841339)))

(assert (=> b!1312170 (= res!589076 (= (h!18686 (t!118010 rules!2550)) (rule!4038 t2!34)))))

(declare-fun b!1312171 () Bool)

(assert (=> b!1312171 (= e!841339 (contains!2309 (t!118010 (t!118010 rules!2550)) (rule!4038 t2!34)))))

(assert (= (and d!369878 res!589075) b!1312170))

(assert (= (and b!1312170 (not res!589076)) b!1312171))

(assert (=> d!369878 m!1462687))

(declare-fun m!1465145 () Bool)

(assert (=> d!369878 m!1465145))

(declare-fun m!1465147 () Bool)

(assert (=> b!1312171 m!1465147))

(assert (=> b!1310354 d!369878))

(declare-fun d!369880 () Bool)

(assert (=> d!369880 (= (inv!17 (value!75154 t1!34)) (= (charsToBigInt!1 (text!17171 (value!75154 t1!34))) (value!75146 (value!75154 t1!34))))))

(declare-fun bs!330073 () Bool)

(assert (= bs!330073 d!369880))

(declare-fun m!1465149 () Bool)

(assert (=> bs!330073 m!1465149))

(assert (=> b!1310609 d!369880))

(declare-fun b!1312172 () Bool)

(declare-fun e!841344 () Bool)

(declare-fun e!841340 () Bool)

(assert (=> b!1312172 (= e!841344 e!841340)))

(declare-fun c!215449 () Bool)

(assert (=> b!1312172 (= c!215449 ((_ is EmptyLang!3613) (regex!2299 (rule!4038 (_1!7332 (get!4246 lt!431554))))))))

(declare-fun b!1312173 () Bool)

(declare-fun res!589079 () Bool)

(declare-fun e!841343 () Bool)

(assert (=> b!1312173 (=> (not res!589079) (not e!841343))))

(declare-fun call!89355 () Bool)

(assert (=> b!1312173 (= res!589079 (not call!89355))))

(declare-fun b!1312174 () Bool)

(declare-fun res!589081 () Bool)

(assert (=> b!1312174 (=> (not res!589081) (not e!841343))))

(assert (=> b!1312174 (= res!589081 (isEmpty!7861 (tail!1874 (list!4986 (charsOf!1271 (_1!7332 (get!4246 lt!431554)))))))))

(declare-fun b!1312175 () Bool)

(declare-fun res!589084 () Bool)

(declare-fun e!841341 () Bool)

(assert (=> b!1312175 (=> res!589084 e!841341)))

(assert (=> b!1312175 (= res!589084 (not ((_ is ElementMatch!3613) (regex!2299 (rule!4038 (_1!7332 (get!4246 lt!431554)))))))))

(assert (=> b!1312175 (= e!841340 e!841341)))

(declare-fun b!1312176 () Bool)

(declare-fun res!589082 () Bool)

(declare-fun e!841345 () Bool)

(assert (=> b!1312176 (=> res!589082 e!841345)))

(assert (=> b!1312176 (= res!589082 (not (isEmpty!7861 (tail!1874 (list!4986 (charsOf!1271 (_1!7332 (get!4246 lt!431554))))))))))

(declare-fun b!1312177 () Bool)

(declare-fun res!589078 () Bool)

(assert (=> b!1312177 (=> res!589078 e!841341)))

(assert (=> b!1312177 (= res!589078 e!841343)))

(declare-fun res!589083 () Bool)

(assert (=> b!1312177 (=> (not res!589083) (not e!841343))))

(declare-fun lt!432422 () Bool)

(assert (=> b!1312177 (= res!589083 lt!432422)))

(declare-fun b!1312178 () Bool)

(declare-fun e!841346 () Bool)

(assert (=> b!1312178 (= e!841346 (matchR!1615 (derivativeStep!893 (regex!2299 (rule!4038 (_1!7332 (get!4246 lt!431554)))) (head!2255 (list!4986 (charsOf!1271 (_1!7332 (get!4246 lt!431554)))))) (tail!1874 (list!4986 (charsOf!1271 (_1!7332 (get!4246 lt!431554)))))))))

(declare-fun b!1312179 () Bool)

(declare-fun e!841342 () Bool)

(assert (=> b!1312179 (= e!841342 e!841345)))

(declare-fun res!589080 () Bool)

(assert (=> b!1312179 (=> res!589080 e!841345)))

(assert (=> b!1312179 (= res!589080 call!89355)))

(declare-fun b!1312180 () Bool)

(assert (=> b!1312180 (= e!841344 (= lt!432422 call!89355))))

(declare-fun b!1312181 () Bool)

(assert (=> b!1312181 (= e!841346 (nullable!1141 (regex!2299 (rule!4038 (_1!7332 (get!4246 lt!431554))))))))

(declare-fun b!1312182 () Bool)

(assert (=> b!1312182 (= e!841340 (not lt!432422))))

(declare-fun d!369882 () Bool)

(assert (=> d!369882 e!841344))

(declare-fun c!215447 () Bool)

(assert (=> d!369882 (= c!215447 ((_ is EmptyExpr!3613) (regex!2299 (rule!4038 (_1!7332 (get!4246 lt!431554))))))))

(assert (=> d!369882 (= lt!432422 e!841346)))

(declare-fun c!215448 () Bool)

(assert (=> d!369882 (= c!215448 (isEmpty!7861 (list!4986 (charsOf!1271 (_1!7332 (get!4246 lt!431554))))))))

(assert (=> d!369882 (validRegex!1543 (regex!2299 (rule!4038 (_1!7332 (get!4246 lt!431554)))))))

(assert (=> d!369882 (= (matchR!1615 (regex!2299 (rule!4038 (_1!7332 (get!4246 lt!431554)))) (list!4986 (charsOf!1271 (_1!7332 (get!4246 lt!431554))))) lt!432422)))

(declare-fun b!1312183 () Bool)

(assert (=> b!1312183 (= e!841343 (= (head!2255 (list!4986 (charsOf!1271 (_1!7332 (get!4246 lt!431554))))) (c!214935 (regex!2299 (rule!4038 (_1!7332 (get!4246 lt!431554)))))))))

(declare-fun bm!89350 () Bool)

(assert (=> bm!89350 (= call!89355 (isEmpty!7861 (list!4986 (charsOf!1271 (_1!7332 (get!4246 lt!431554))))))))

(declare-fun b!1312184 () Bool)

(assert (=> b!1312184 (= e!841341 e!841342)))

(declare-fun res!589077 () Bool)

(assert (=> b!1312184 (=> (not res!589077) (not e!841342))))

(assert (=> b!1312184 (= res!589077 (not lt!432422))))

(declare-fun b!1312185 () Bool)

(assert (=> b!1312185 (= e!841345 (not (= (head!2255 (list!4986 (charsOf!1271 (_1!7332 (get!4246 lt!431554))))) (c!214935 (regex!2299 (rule!4038 (_1!7332 (get!4246 lt!431554))))))))))

(assert (= (and d!369882 c!215448) b!1312181))

(assert (= (and d!369882 (not c!215448)) b!1312178))

(assert (= (and d!369882 c!215447) b!1312180))

(assert (= (and d!369882 (not c!215447)) b!1312172))

(assert (= (and b!1312172 c!215449) b!1312182))

(assert (= (and b!1312172 (not c!215449)) b!1312175))

(assert (= (and b!1312175 (not res!589084)) b!1312177))

(assert (= (and b!1312177 res!589083) b!1312173))

(assert (= (and b!1312173 res!589079) b!1312174))

(assert (= (and b!1312174 res!589081) b!1312183))

(assert (= (and b!1312177 (not res!589078)) b!1312184))

(assert (= (and b!1312184 res!589077) b!1312179))

(assert (= (and b!1312179 (not res!589080)) b!1312176))

(assert (= (and b!1312176 (not res!589082)) b!1312185))

(assert (= (or b!1312180 b!1312173 b!1312179) bm!89350))

(assert (=> b!1312185 m!1462045))

(declare-fun m!1465151 () Bool)

(assert (=> b!1312185 m!1465151))

(declare-fun m!1465153 () Bool)

(assert (=> b!1312181 m!1465153))

(assert (=> bm!89350 m!1462045))

(declare-fun m!1465155 () Bool)

(assert (=> bm!89350 m!1465155))

(assert (=> b!1312176 m!1462045))

(declare-fun m!1465157 () Bool)

(assert (=> b!1312176 m!1465157))

(assert (=> b!1312176 m!1465157))

(declare-fun m!1465159 () Bool)

(assert (=> b!1312176 m!1465159))

(assert (=> b!1312174 m!1462045))

(assert (=> b!1312174 m!1465157))

(assert (=> b!1312174 m!1465157))

(assert (=> b!1312174 m!1465159))

(assert (=> d!369882 m!1462045))

(assert (=> d!369882 m!1465155))

(declare-fun m!1465161 () Bool)

(assert (=> d!369882 m!1465161))

(assert (=> b!1312178 m!1462045))

(assert (=> b!1312178 m!1465151))

(assert (=> b!1312178 m!1465151))

(declare-fun m!1465163 () Bool)

(assert (=> b!1312178 m!1465163))

(assert (=> b!1312178 m!1462045))

(assert (=> b!1312178 m!1465157))

(assert (=> b!1312178 m!1465163))

(assert (=> b!1312178 m!1465157))

(declare-fun m!1465165 () Bool)

(assert (=> b!1312178 m!1465165))

(assert (=> b!1312183 m!1462045))

(assert (=> b!1312183 m!1465151))

(assert (=> b!1310339 d!369882))

(assert (=> b!1310339 d!369064))

(assert (=> b!1310339 d!369682))

(assert (=> b!1310339 d!369684))

(assert (=> d!368868 d!369102))

(declare-fun b!1312186 () Bool)

(declare-fun res!589089 () Bool)

(declare-fun e!841349 () Bool)

(assert (=> b!1312186 (=> (not res!589089) (not e!841349))))

(declare-fun lt!432423 () Option!2564)

(assert (=> b!1312186 (= res!589089 (= (value!75154 (_1!7332 (get!4246 lt!432423))) (apply!2990 (transformation!2299 (rule!4038 (_1!7332 (get!4246 lt!432423)))) (seqFromList!1591 (originalCharacters!3161 (_1!7332 (get!4246 lt!432423)))))))))

(declare-fun b!1312187 () Bool)

(declare-fun res!589085 () Bool)

(assert (=> b!1312187 (=> (not res!589085) (not e!841349))))

(assert (=> b!1312187 (= res!589085 (= (rule!4038 (_1!7332 (get!4246 lt!432423))) (h!18686 rules!2550)))))

(declare-fun b!1312188 () Bool)

(declare-fun res!589086 () Bool)

(assert (=> b!1312188 (=> (not res!589086) (not e!841349))))

(assert (=> b!1312188 (= res!589086 (< (size!10797 (_2!7332 (get!4246 lt!432423))) (size!10797 lt!431402)))))

(declare-fun b!1312189 () Bool)

(declare-fun e!841350 () Bool)

(assert (=> b!1312189 (= e!841350 (matchR!1615 (regex!2299 (h!18686 rules!2550)) (_1!7337 (findLongestMatchInner!266 (regex!2299 (h!18686 rules!2550)) Nil!13283 (size!10797 Nil!13283) lt!431402 lt!431402 (size!10797 lt!431402)))))))

(declare-fun b!1312190 () Bool)

(declare-fun res!589090 () Bool)

(assert (=> b!1312190 (=> (not res!589090) (not e!841349))))

(assert (=> b!1312190 (= res!589090 (= (++!3378 (list!4986 (charsOf!1271 (_1!7332 (get!4246 lt!432423)))) (_2!7332 (get!4246 lt!432423))) lt!431402))))

(declare-fun d!369884 () Bool)

(declare-fun e!841348 () Bool)

(assert (=> d!369884 e!841348))

(declare-fun res!589091 () Bool)

(assert (=> d!369884 (=> res!589091 e!841348)))

(assert (=> d!369884 (= res!589091 (isEmpty!7860 lt!432423))))

(declare-fun e!841347 () Option!2564)

(assert (=> d!369884 (= lt!432423 e!841347)))

(declare-fun c!215450 () Bool)

(declare-fun lt!432427 () tuple2!12902)

(assert (=> d!369884 (= c!215450 (isEmpty!7861 (_1!7337 lt!432427)))))

(assert (=> d!369884 (= lt!432427 (findLongestMatch!222 (regex!2299 (h!18686 rules!2550)) lt!431402))))

(assert (=> d!369884 (ruleValid!557 thiss!19762 (h!18686 rules!2550))))

(assert (=> d!369884 (= (maxPrefixOneRule!573 thiss!19762 (h!18686 rules!2550) lt!431402) lt!432423)))

(declare-fun b!1312191 () Bool)

(assert (=> b!1312191 (= e!841349 (= (size!10790 (_1!7332 (get!4246 lt!432423))) (size!10797 (originalCharacters!3161 (_1!7332 (get!4246 lt!432423))))))))

(declare-fun b!1312192 () Bool)

(assert (=> b!1312192 (= e!841347 None!2563)))

(declare-fun b!1312193 () Bool)

(assert (=> b!1312193 (= e!841347 (Some!2563 (tuple2!12893 (Token!4261 (apply!2990 (transformation!2299 (h!18686 rules!2550)) (seqFromList!1591 (_1!7337 lt!432427))) (h!18686 rules!2550) (size!10791 (seqFromList!1591 (_1!7337 lt!432427))) (_1!7337 lt!432427)) (_2!7337 lt!432427))))))

(declare-fun lt!432425 () Unit!19338)

(assert (=> b!1312193 (= lt!432425 (longestMatchIsAcceptedByMatchOrIsEmpty!250 (regex!2299 (h!18686 rules!2550)) lt!431402))))

(declare-fun res!589088 () Bool)

(assert (=> b!1312193 (= res!589088 (isEmpty!7861 (_1!7337 (findLongestMatchInner!266 (regex!2299 (h!18686 rules!2550)) Nil!13283 (size!10797 Nil!13283) lt!431402 lt!431402 (size!10797 lt!431402)))))))

(assert (=> b!1312193 (=> res!589088 e!841350)))

(assert (=> b!1312193 e!841350))

(declare-fun lt!432426 () Unit!19338)

(assert (=> b!1312193 (= lt!432426 lt!432425)))

(declare-fun lt!432424 () Unit!19338)

(assert (=> b!1312193 (= lt!432424 (lemmaSemiInverse!320 (transformation!2299 (h!18686 rules!2550)) (seqFromList!1591 (_1!7337 lt!432427))))))

(declare-fun b!1312194 () Bool)

(assert (=> b!1312194 (= e!841348 e!841349)))

(declare-fun res!589087 () Bool)

(assert (=> b!1312194 (=> (not res!589087) (not e!841349))))

(assert (=> b!1312194 (= res!589087 (matchR!1615 (regex!2299 (h!18686 rules!2550)) (list!4986 (charsOf!1271 (_1!7332 (get!4246 lt!432423))))))))

(assert (= (and d!369884 c!215450) b!1312192))

(assert (= (and d!369884 (not c!215450)) b!1312193))

(assert (= (and b!1312193 (not res!589088)) b!1312189))

(assert (= (and d!369884 (not res!589091)) b!1312194))

(assert (= (and b!1312194 res!589087) b!1312190))

(assert (= (and b!1312190 res!589090) b!1312188))

(assert (= (and b!1312188 res!589086) b!1312187))

(assert (= (and b!1312187 res!589085) b!1312186))

(assert (= (and b!1312186 res!589089) b!1312191))

(declare-fun m!1465167 () Bool)

(assert (=> d!369884 m!1465167))

(declare-fun m!1465169 () Bool)

(assert (=> d!369884 m!1465169))

(declare-fun m!1465171 () Bool)

(assert (=> d!369884 m!1465171))

(assert (=> d!369884 m!1462529))

(declare-fun m!1465173 () Bool)

(assert (=> b!1312188 m!1465173))

(declare-fun m!1465175 () Bool)

(assert (=> b!1312188 m!1465175))

(assert (=> b!1312188 m!1462123))

(assert (=> b!1312190 m!1465173))

(declare-fun m!1465177 () Bool)

(assert (=> b!1312190 m!1465177))

(assert (=> b!1312190 m!1465177))

(declare-fun m!1465179 () Bool)

(assert (=> b!1312190 m!1465179))

(assert (=> b!1312190 m!1465179))

(declare-fun m!1465181 () Bool)

(assert (=> b!1312190 m!1465181))

(assert (=> b!1312194 m!1465173))

(assert (=> b!1312194 m!1465177))

(assert (=> b!1312194 m!1465177))

(assert (=> b!1312194 m!1465179))

(assert (=> b!1312194 m!1465179))

(declare-fun m!1465183 () Bool)

(assert (=> b!1312194 m!1465183))

(assert (=> b!1312189 m!1464911))

(assert (=> b!1312189 m!1462123))

(assert (=> b!1312189 m!1464911))

(assert (=> b!1312189 m!1462123))

(declare-fun m!1465185 () Bool)

(assert (=> b!1312189 m!1465185))

(declare-fun m!1465187 () Bool)

(assert (=> b!1312189 m!1465187))

(assert (=> b!1312187 m!1465173))

(assert (=> b!1312191 m!1465173))

(declare-fun m!1465189 () Bool)

(assert (=> b!1312191 m!1465189))

(declare-fun m!1465191 () Bool)

(assert (=> b!1312193 m!1465191))

(declare-fun m!1465193 () Bool)

(assert (=> b!1312193 m!1465193))

(declare-fun m!1465195 () Bool)

(assert (=> b!1312193 m!1465195))

(assert (=> b!1312193 m!1465193))

(declare-fun m!1465197 () Bool)

(assert (=> b!1312193 m!1465197))

(assert (=> b!1312193 m!1462123))

(assert (=> b!1312193 m!1465193))

(declare-fun m!1465199 () Bool)

(assert (=> b!1312193 m!1465199))

(assert (=> b!1312193 m!1464911))

(assert (=> b!1312193 m!1462123))

(assert (=> b!1312193 m!1465185))

(assert (=> b!1312193 m!1465193))

(declare-fun m!1465201 () Bool)

(assert (=> b!1312193 m!1465201))

(assert (=> b!1312193 m!1464911))

(assert (=> b!1312186 m!1465173))

(declare-fun m!1465203 () Bool)

(assert (=> b!1312186 m!1465203))

(assert (=> b!1312186 m!1465203))

(declare-fun m!1465205 () Bool)

(assert (=> b!1312186 m!1465205))

(assert (=> bm!89250 d!369884))

(declare-fun bs!330074 () Bool)

(declare-fun d!369886 () Bool)

(assert (= bs!330074 (and d!369886 d!369388)))

(declare-fun lambda!53067 () Int)

(assert (=> bs!330074 (= (= (toValue!3518 (transformation!2299 (rule!4038 t2!34))) (toValue!3518 (transformation!2299 (rule!4038 t1!34)))) (= lambda!53067 lambda!53030))))

(declare-fun bs!330075 () Bool)

(assert (= bs!330075 (and d!369886 d!369404)))

(assert (=> bs!330075 (= (= (toValue!3518 (transformation!2299 (rule!4038 t2!34))) (toValue!3518 (transformation!2299 (h!18686 rules!2550)))) (= lambda!53067 lambda!53034))))

(assert (=> d!369886 true))

(assert (=> d!369886 (< (dynLambda!5777 order!7991 (toValue!3518 (transformation!2299 (rule!4038 t2!34)))) (dynLambda!5778 order!7993 lambda!53067))))

(assert (=> d!369886 (= (equivClasses!821 (toChars!3377 (transformation!2299 (rule!4038 t2!34))) (toValue!3518 (transformation!2299 (rule!4038 t2!34)))) (Forall2!417 lambda!53067))))

(declare-fun bs!330076 () Bool)

(assert (= bs!330076 d!369886))

(declare-fun m!1465207 () Bool)

(assert (=> bs!330076 m!1465207))

(assert (=> b!1310316 d!369886))

(declare-fun d!369888 () Bool)

(declare-fun lt!432428 () Token!4260)

(assert (=> d!369888 (= lt!432428 (apply!2998 (list!4987 (_1!7333 lt!431498)) 0))))

(assert (=> d!369888 (= lt!432428 (apply!2999 (c!214936 (_1!7333 lt!431498)) 0))))

(declare-fun e!841351 () Bool)

(assert (=> d!369888 e!841351))

(declare-fun res!589092 () Bool)

(assert (=> d!369888 (=> (not res!589092) (not e!841351))))

(assert (=> d!369888 (= res!589092 (<= 0 0))))

(assert (=> d!369888 (= (apply!2989 (_1!7333 lt!431498) 0) lt!432428)))

(declare-fun b!1312195 () Bool)

(assert (=> b!1312195 (= e!841351 (< 0 (size!10798 (_1!7333 lt!431498))))))

(assert (= (and d!369888 res!589092) b!1312195))

(assert (=> d!369888 m!1464843))

(assert (=> d!369888 m!1464843))

(declare-fun m!1465209 () Bool)

(assert (=> d!369888 m!1465209))

(declare-fun m!1465211 () Bool)

(assert (=> d!369888 m!1465211))

(assert (=> b!1312195 m!1461857))

(assert (=> b!1310194 d!369888))

(declare-fun b!1312196 () Bool)

(declare-fun e!841352 () Bool)

(declare-fun tp!382167 () Bool)

(assert (=> b!1312196 (= e!841352 (and tp_is_empty!6615 tp!382167))))

(assert (=> b!1310644 (= tp!382040 e!841352)))

(assert (= (and b!1310644 ((_ is Cons!13283) (t!118008 (originalCharacters!3161 t1!34)))) b!1312196))

(declare-fun b!1312197 () Bool)

(declare-fun e!841353 () Bool)

(assert (=> b!1312197 (= e!841353 tp_is_empty!6615)))

(declare-fun b!1312198 () Bool)

(declare-fun tp!382169 () Bool)

(declare-fun tp!382170 () Bool)

(assert (=> b!1312198 (= e!841353 (and tp!382169 tp!382170))))

(assert (=> b!1310635 (= tp!382031 e!841353)))

(declare-fun b!1312199 () Bool)

(declare-fun tp!382168 () Bool)

(assert (=> b!1312199 (= e!841353 tp!382168)))

(declare-fun b!1312200 () Bool)

(declare-fun tp!382171 () Bool)

(declare-fun tp!382172 () Bool)

(assert (=> b!1312200 (= e!841353 (and tp!382171 tp!382172))))

(assert (= (and b!1310635 ((_ is ElementMatch!3613) (regOne!7739 (regex!2299 (rule!4038 t2!34))))) b!1312197))

(assert (= (and b!1310635 ((_ is Concat!6003) (regOne!7739 (regex!2299 (rule!4038 t2!34))))) b!1312198))

(assert (= (and b!1310635 ((_ is Star!3613) (regOne!7739 (regex!2299 (rule!4038 t2!34))))) b!1312199))

(assert (= (and b!1310635 ((_ is Union!3613) (regOne!7739 (regex!2299 (rule!4038 t2!34))))) b!1312200))

(declare-fun b!1312201 () Bool)

(declare-fun e!841354 () Bool)

(assert (=> b!1312201 (= e!841354 tp_is_empty!6615)))

(declare-fun b!1312202 () Bool)

(declare-fun tp!382174 () Bool)

(declare-fun tp!382175 () Bool)

(assert (=> b!1312202 (= e!841354 (and tp!382174 tp!382175))))

(assert (=> b!1310635 (= tp!382032 e!841354)))

(declare-fun b!1312203 () Bool)

(declare-fun tp!382173 () Bool)

(assert (=> b!1312203 (= e!841354 tp!382173)))

(declare-fun b!1312204 () Bool)

(declare-fun tp!382176 () Bool)

(declare-fun tp!382177 () Bool)

(assert (=> b!1312204 (= e!841354 (and tp!382176 tp!382177))))

(assert (= (and b!1310635 ((_ is ElementMatch!3613) (regTwo!7739 (regex!2299 (rule!4038 t2!34))))) b!1312201))

(assert (= (and b!1310635 ((_ is Concat!6003) (regTwo!7739 (regex!2299 (rule!4038 t2!34))))) b!1312202))

(assert (= (and b!1310635 ((_ is Star!3613) (regTwo!7739 (regex!2299 (rule!4038 t2!34))))) b!1312203))

(assert (= (and b!1310635 ((_ is Union!3613) (regTwo!7739 (regex!2299 (rule!4038 t2!34))))) b!1312204))

(declare-fun b!1312205 () Bool)

(declare-fun e!841355 () Bool)

(assert (=> b!1312205 (= e!841355 tp_is_empty!6615)))

(declare-fun b!1312206 () Bool)

(declare-fun tp!382179 () Bool)

(declare-fun tp!382180 () Bool)

(assert (=> b!1312206 (= e!841355 (and tp!382179 tp!382180))))

(assert (=> b!1310654 (= tp!382050 e!841355)))

(declare-fun b!1312207 () Bool)

(declare-fun tp!382178 () Bool)

(assert (=> b!1312207 (= e!841355 tp!382178)))

(declare-fun b!1312208 () Bool)

(declare-fun tp!382181 () Bool)

(declare-fun tp!382182 () Bool)

(assert (=> b!1312208 (= e!841355 (and tp!382181 tp!382182))))

(assert (= (and b!1310654 ((_ is ElementMatch!3613) (regex!2299 (h!18686 (t!118010 rules!2550))))) b!1312205))

(assert (= (and b!1310654 ((_ is Concat!6003) (regex!2299 (h!18686 (t!118010 rules!2550))))) b!1312206))

(assert (= (and b!1310654 ((_ is Star!3613) (regex!2299 (h!18686 (t!118010 rules!2550))))) b!1312207))

(assert (= (and b!1310654 ((_ is Union!3613) (regex!2299 (h!18686 (t!118010 rules!2550))))) b!1312208))

(declare-fun b!1312209 () Bool)

(declare-fun e!841356 () Bool)

(declare-fun tp!382183 () Bool)

(assert (=> b!1312209 (= e!841356 (and tp_is_empty!6615 tp!382183))))

(assert (=> b!1310656 (= tp!382053 e!841356)))

(assert (= (and b!1310656 ((_ is Cons!13283) (t!118008 (originalCharacters!3161 t2!34)))) b!1312209))

(declare-fun b!1312218 () Bool)

(declare-fun tp!382190 () Bool)

(declare-fun e!841362 () Bool)

(declare-fun tp!382192 () Bool)

(assert (=> b!1312218 (= e!841362 (and (inv!17665 (left!11423 (c!214934 (dynLambda!5765 (toChars!3377 (transformation!2299 (rule!4038 t2!34))) (value!75154 t2!34))))) tp!382190 (inv!17665 (right!11753 (c!214934 (dynLambda!5765 (toChars!3377 (transformation!2299 (rule!4038 t2!34))) (value!75154 t2!34))))) tp!382192))))

(declare-fun b!1312220 () Bool)

(declare-fun e!841361 () Bool)

(declare-fun tp!382191 () Bool)

(assert (=> b!1312220 (= e!841361 tp!382191)))

(declare-fun b!1312219 () Bool)

(declare-fun inv!17672 (IArray!8741) Bool)

(assert (=> b!1312219 (= e!841362 (and (inv!17672 (xs!7083 (c!214934 (dynLambda!5765 (toChars!3377 (transformation!2299 (rule!4038 t2!34))) (value!75154 t2!34))))) e!841361))))

(assert (=> b!1310621 (= tp!382017 (and (inv!17665 (c!214934 (dynLambda!5765 (toChars!3377 (transformation!2299 (rule!4038 t2!34))) (value!75154 t2!34)))) e!841362))))

(assert (= (and b!1310621 ((_ is Node!4368) (c!214934 (dynLambda!5765 (toChars!3377 (transformation!2299 (rule!4038 t2!34))) (value!75154 t2!34))))) b!1312218))

(assert (= b!1312219 b!1312220))

(assert (= (and b!1310621 ((_ is Leaf!6714) (c!214934 (dynLambda!5765 (toChars!3377 (transformation!2299 (rule!4038 t2!34))) (value!75154 t2!34))))) b!1312219))

(declare-fun m!1465213 () Bool)

(assert (=> b!1312218 m!1465213))

(declare-fun m!1465215 () Bool)

(assert (=> b!1312218 m!1465215))

(declare-fun m!1465217 () Bool)

(assert (=> b!1312219 m!1465217))

(assert (=> b!1310621 m!1462503))

(declare-fun b!1312221 () Bool)

(declare-fun e!841363 () Bool)

(assert (=> b!1312221 (= e!841363 tp_is_empty!6615)))

(declare-fun b!1312222 () Bool)

(declare-fun tp!382194 () Bool)

(declare-fun tp!382195 () Bool)

(assert (=> b!1312222 (= e!841363 (and tp!382194 tp!382195))))

(assert (=> b!1310634 (= tp!382028 e!841363)))

(declare-fun b!1312223 () Bool)

(declare-fun tp!382193 () Bool)

(assert (=> b!1312223 (= e!841363 tp!382193)))

(declare-fun b!1312224 () Bool)

(declare-fun tp!382196 () Bool)

(declare-fun tp!382197 () Bool)

(assert (=> b!1312224 (= e!841363 (and tp!382196 tp!382197))))

(assert (= (and b!1310634 ((_ is ElementMatch!3613) (reg!3942 (regex!2299 (rule!4038 t2!34))))) b!1312221))

(assert (= (and b!1310634 ((_ is Concat!6003) (reg!3942 (regex!2299 (rule!4038 t2!34))))) b!1312222))

(assert (= (and b!1310634 ((_ is Star!3613) (reg!3942 (regex!2299 (rule!4038 t2!34))))) b!1312223))

(assert (= (and b!1310634 ((_ is Union!3613) (reg!3942 (regex!2299 (rule!4038 t2!34))))) b!1312224))

(declare-fun b!1312227 () Bool)

(declare-fun b_free!31587 () Bool)

(declare-fun b_next!32291 () Bool)

(assert (=> b!1312227 (= b_free!31587 (not b_next!32291))))

(declare-fun t!118145 () Bool)

(declare-fun tb!69797 () Bool)

(assert (=> (and b!1312227 (= (toValue!3518 (transformation!2299 (h!18686 (t!118010 (t!118010 rules!2550))))) (toValue!3518 (transformation!2299 (rule!4038 (_1!7332 (get!4246 lt!431554)))))) t!118145) tb!69797))

(declare-fun result!84682 () Bool)

(assert (= result!84682 result!84616))

(assert (=> d!369226 t!118145))

(declare-fun tb!69799 () Bool)

(declare-fun t!118147 () Bool)

(assert (=> (and b!1312227 (= (toValue!3518 (transformation!2299 (h!18686 (t!118010 (t!118010 rules!2550))))) (toValue!3518 (transformation!2299 (rule!4038 (_1!7332 (get!4246 lt!431580)))))) t!118147) tb!69799))

(declare-fun result!84684 () Bool)

(assert (= result!84684 result!84672))

(assert (=> d!369714 t!118147))

(declare-fun tp!382200 () Bool)

(declare-fun b_and!87647 () Bool)

(assert (=> b!1312227 (= tp!382200 (and (=> t!118145 result!84682) (=> t!118147 result!84684) b_and!87647))))

(declare-fun b_free!31589 () Bool)

(declare-fun b_next!32293 () Bool)

(assert (=> b!1312227 (= b_free!31589 (not b_next!32293))))

(declare-fun tb!69801 () Bool)

(declare-fun t!118149 () Bool)

(assert (=> (and b!1312227 (= (toChars!3377 (transformation!2299 (h!18686 (t!118010 (t!118010 rules!2550))))) (toChars!3377 (transformation!2299 (rule!4038 (_1!7332 (get!4246 lt!431580)))))) t!118149) tb!69801))

(declare-fun result!84686 () Bool)

(assert (= result!84686 result!84608))

(assert (=> d!369216 t!118149))

(declare-fun t!118151 () Bool)

(declare-fun tb!69803 () Bool)

(assert (=> (and b!1312227 (= (toChars!3377 (transformation!2299 (h!18686 (t!118010 (t!118010 rules!2550))))) (toChars!3377 (transformation!2299 (rule!4038 t1!34)))) t!118151) tb!69803))

(declare-fun result!84688 () Bool)

(assert (= result!84688 result!84564))

(assert (=> b!1310617 t!118151))

(declare-fun tb!69805 () Bool)

(declare-fun t!118153 () Bool)

(assert (=> (and b!1312227 (= (toChars!3377 (transformation!2299 (h!18686 (t!118010 (t!118010 rules!2550))))) (toChars!3377 (transformation!2299 (rule!4038 (_1!7332 (get!4246 lt!431554)))))) t!118153) tb!69805))

(declare-fun result!84690 () Bool)

(assert (= result!84690 result!84664))

(assert (=> d!369684 t!118153))

(declare-fun tb!69807 () Bool)

(declare-fun t!118155 () Bool)

(assert (=> (and b!1312227 (= (toChars!3377 (transformation!2299 (h!18686 (t!118010 (t!118010 rules!2550))))) (toChars!3377 (transformation!2299 (rule!4038 t2!34)))) t!118155) tb!69807))

(declare-fun result!84692 () Bool)

(assert (= result!84692 result!84582))

(assert (=> b!1310619 t!118155))

(assert (=> d!368884 t!118151))

(assert (=> d!369006 t!118155))

(declare-fun tp!382198 () Bool)

(declare-fun b_and!87649 () Bool)

(assert (=> b!1312227 (= tp!382198 (and (=> t!118149 result!84686) (=> t!118151 result!84688) (=> t!118153 result!84690) (=> t!118155 result!84692) b_and!87649))))

(declare-fun e!841364 () Bool)

(assert (=> b!1312227 (= e!841364 (and tp!382200 tp!382198))))

(declare-fun b!1312226 () Bool)

(declare-fun tp!382199 () Bool)

(declare-fun e!841365 () Bool)

(assert (=> b!1312226 (= e!841365 (and tp!382199 (inv!17658 (tag!2561 (h!18686 (t!118010 (t!118010 rules!2550))))) (inv!17662 (transformation!2299 (h!18686 (t!118010 (t!118010 rules!2550))))) e!841364))))

(declare-fun b!1312225 () Bool)

(declare-fun e!841366 () Bool)

(declare-fun tp!382201 () Bool)

(assert (=> b!1312225 (= e!841366 (and e!841365 tp!382201))))

(assert (=> b!1310653 (= tp!382052 e!841366)))

(assert (= b!1312226 b!1312227))

(assert (= b!1312225 b!1312226))

(assert (= (and b!1310653 ((_ is Cons!13285) (t!118010 (t!118010 rules!2550)))) b!1312225))

(declare-fun m!1465219 () Bool)

(assert (=> b!1312226 m!1465219))

(declare-fun m!1465221 () Bool)

(assert (=> b!1312226 m!1465221))

(declare-fun b!1312228 () Bool)

(declare-fun e!841368 () Bool)

(assert (=> b!1312228 (= e!841368 tp_is_empty!6615)))

(declare-fun b!1312229 () Bool)

(declare-fun tp!382203 () Bool)

(declare-fun tp!382204 () Bool)

(assert (=> b!1312229 (= e!841368 (and tp!382203 tp!382204))))

(assert (=> b!1310639 (= tp!382036 e!841368)))

(declare-fun b!1312230 () Bool)

(declare-fun tp!382202 () Bool)

(assert (=> b!1312230 (= e!841368 tp!382202)))

(declare-fun b!1312231 () Bool)

(declare-fun tp!382205 () Bool)

(declare-fun tp!382206 () Bool)

(assert (=> b!1312231 (= e!841368 (and tp!382205 tp!382206))))

(assert (= (and b!1310639 ((_ is ElementMatch!3613) (regOne!7739 (regex!2299 (rule!4038 t1!34))))) b!1312228))

(assert (= (and b!1310639 ((_ is Concat!6003) (regOne!7739 (regex!2299 (rule!4038 t1!34))))) b!1312229))

(assert (= (and b!1310639 ((_ is Star!3613) (regOne!7739 (regex!2299 (rule!4038 t1!34))))) b!1312230))

(assert (= (and b!1310639 ((_ is Union!3613) (regOne!7739 (regex!2299 (rule!4038 t1!34))))) b!1312231))

(declare-fun b!1312232 () Bool)

(declare-fun e!841369 () Bool)

(assert (=> b!1312232 (= e!841369 tp_is_empty!6615)))

(declare-fun b!1312233 () Bool)

(declare-fun tp!382208 () Bool)

(declare-fun tp!382209 () Bool)

(assert (=> b!1312233 (= e!841369 (and tp!382208 tp!382209))))

(assert (=> b!1310639 (= tp!382037 e!841369)))

(declare-fun b!1312234 () Bool)

(declare-fun tp!382207 () Bool)

(assert (=> b!1312234 (= e!841369 tp!382207)))

(declare-fun b!1312235 () Bool)

(declare-fun tp!382210 () Bool)

(declare-fun tp!382211 () Bool)

(assert (=> b!1312235 (= e!841369 (and tp!382210 tp!382211))))

(assert (= (and b!1310639 ((_ is ElementMatch!3613) (regTwo!7739 (regex!2299 (rule!4038 t1!34))))) b!1312232))

(assert (= (and b!1310639 ((_ is Concat!6003) (regTwo!7739 (regex!2299 (rule!4038 t1!34))))) b!1312233))

(assert (= (and b!1310639 ((_ is Star!3613) (regTwo!7739 (regex!2299 (rule!4038 t1!34))))) b!1312234))

(assert (= (and b!1310639 ((_ is Union!3613) (regTwo!7739 (regex!2299 (rule!4038 t1!34))))) b!1312235))

(declare-fun b!1312236 () Bool)

(declare-fun e!841370 () Bool)

(assert (=> b!1312236 (= e!841370 tp_is_empty!6615)))

(declare-fun b!1312237 () Bool)

(declare-fun tp!382213 () Bool)

(declare-fun tp!382214 () Bool)

(assert (=> b!1312237 (= e!841370 (and tp!382213 tp!382214))))

(assert (=> b!1310660 (= tp!382057 e!841370)))

(declare-fun b!1312238 () Bool)

(declare-fun tp!382212 () Bool)

(assert (=> b!1312238 (= e!841370 tp!382212)))

(declare-fun b!1312239 () Bool)

(declare-fun tp!382215 () Bool)

(declare-fun tp!382216 () Bool)

(assert (=> b!1312239 (= e!841370 (and tp!382215 tp!382216))))

(assert (= (and b!1310660 ((_ is ElementMatch!3613) (regOne!7739 (regex!2299 (h!18686 rules!2550))))) b!1312236))

(assert (= (and b!1310660 ((_ is Concat!6003) (regOne!7739 (regex!2299 (h!18686 rules!2550))))) b!1312237))

(assert (= (and b!1310660 ((_ is Star!3613) (regOne!7739 (regex!2299 (h!18686 rules!2550))))) b!1312238))

(assert (= (and b!1310660 ((_ is Union!3613) (regOne!7739 (regex!2299 (h!18686 rules!2550))))) b!1312239))

(declare-fun b!1312240 () Bool)

(declare-fun e!841371 () Bool)

(assert (=> b!1312240 (= e!841371 tp_is_empty!6615)))

(declare-fun b!1312241 () Bool)

(declare-fun tp!382218 () Bool)

(declare-fun tp!382219 () Bool)

(assert (=> b!1312241 (= e!841371 (and tp!382218 tp!382219))))

(assert (=> b!1310660 (= tp!382058 e!841371)))

(declare-fun b!1312242 () Bool)

(declare-fun tp!382217 () Bool)

(assert (=> b!1312242 (= e!841371 tp!382217)))

(declare-fun b!1312243 () Bool)

(declare-fun tp!382220 () Bool)

(declare-fun tp!382221 () Bool)

(assert (=> b!1312243 (= e!841371 (and tp!382220 tp!382221))))

(assert (= (and b!1310660 ((_ is ElementMatch!3613) (regTwo!7739 (regex!2299 (h!18686 rules!2550))))) b!1312240))

(assert (= (and b!1310660 ((_ is Concat!6003) (regTwo!7739 (regex!2299 (h!18686 rules!2550))))) b!1312241))

(assert (= (and b!1310660 ((_ is Star!3613) (regTwo!7739 (regex!2299 (h!18686 rules!2550))))) b!1312242))

(assert (= (and b!1310660 ((_ is Union!3613) (regTwo!7739 (regex!2299 (h!18686 rules!2550))))) b!1312243))

(declare-fun tp!382222 () Bool)

(declare-fun e!841373 () Bool)

(declare-fun b!1312244 () Bool)

(declare-fun tp!382224 () Bool)

(assert (=> b!1312244 (= e!841373 (and (inv!17665 (left!11423 (c!214934 (dynLambda!5765 (toChars!3377 (transformation!2299 (rule!4038 t1!34))) (value!75154 t1!34))))) tp!382222 (inv!17665 (right!11753 (c!214934 (dynLambda!5765 (toChars!3377 (transformation!2299 (rule!4038 t1!34))) (value!75154 t1!34))))) tp!382224))))

(declare-fun b!1312246 () Bool)

(declare-fun e!841372 () Bool)

(declare-fun tp!382223 () Bool)

(assert (=> b!1312246 (= e!841372 tp!382223)))

(declare-fun b!1312245 () Bool)

(assert (=> b!1312245 (= e!841373 (and (inv!17672 (xs!7083 (c!214934 (dynLambda!5765 (toChars!3377 (transformation!2299 (rule!4038 t1!34))) (value!75154 t1!34))))) e!841372))))

(assert (=> b!1310386 (= tp!381975 (and (inv!17665 (c!214934 (dynLambda!5765 (toChars!3377 (transformation!2299 (rule!4038 t1!34))) (value!75154 t1!34)))) e!841373))))

(assert (= (and b!1310386 ((_ is Node!4368) (c!214934 (dynLambda!5765 (toChars!3377 (transformation!2299 (rule!4038 t1!34))) (value!75154 t1!34))))) b!1312244))

(assert (= b!1312245 b!1312246))

(assert (= (and b!1310386 ((_ is Leaf!6714) (c!214934 (dynLambda!5765 (toChars!3377 (transformation!2299 (rule!4038 t1!34))) (value!75154 t1!34))))) b!1312245))

(declare-fun m!1465223 () Bool)

(assert (=> b!1312244 m!1465223))

(declare-fun m!1465225 () Bool)

(assert (=> b!1312244 m!1465225))

(declare-fun m!1465227 () Bool)

(assert (=> b!1312245 m!1465227))

(assert (=> b!1310386 m!1462137))

(declare-fun b!1312247 () Bool)

(declare-fun e!841374 () Bool)

(assert (=> b!1312247 (= e!841374 tp_is_empty!6615)))

(declare-fun b!1312248 () Bool)

(declare-fun tp!382226 () Bool)

(declare-fun tp!382227 () Bool)

(assert (=> b!1312248 (= e!841374 (and tp!382226 tp!382227))))

(assert (=> b!1310637 (= tp!382034 e!841374)))

(declare-fun b!1312249 () Bool)

(declare-fun tp!382225 () Bool)

(assert (=> b!1312249 (= e!841374 tp!382225)))

(declare-fun b!1312250 () Bool)

(declare-fun tp!382228 () Bool)

(declare-fun tp!382229 () Bool)

(assert (=> b!1312250 (= e!841374 (and tp!382228 tp!382229))))

(assert (= (and b!1310637 ((_ is ElementMatch!3613) (regOne!7738 (regex!2299 (rule!4038 t1!34))))) b!1312247))

(assert (= (and b!1310637 ((_ is Concat!6003) (regOne!7738 (regex!2299 (rule!4038 t1!34))))) b!1312248))

(assert (= (and b!1310637 ((_ is Star!3613) (regOne!7738 (regex!2299 (rule!4038 t1!34))))) b!1312249))

(assert (= (and b!1310637 ((_ is Union!3613) (regOne!7738 (regex!2299 (rule!4038 t1!34))))) b!1312250))

(declare-fun b!1312251 () Bool)

(declare-fun e!841375 () Bool)

(assert (=> b!1312251 (= e!841375 tp_is_empty!6615)))

(declare-fun b!1312252 () Bool)

(declare-fun tp!382231 () Bool)

(declare-fun tp!382232 () Bool)

(assert (=> b!1312252 (= e!841375 (and tp!382231 tp!382232))))

(assert (=> b!1310637 (= tp!382035 e!841375)))

(declare-fun b!1312253 () Bool)

(declare-fun tp!382230 () Bool)

(assert (=> b!1312253 (= e!841375 tp!382230)))

(declare-fun b!1312254 () Bool)

(declare-fun tp!382233 () Bool)

(declare-fun tp!382234 () Bool)

(assert (=> b!1312254 (= e!841375 (and tp!382233 tp!382234))))

(assert (= (and b!1310637 ((_ is ElementMatch!3613) (regTwo!7738 (regex!2299 (rule!4038 t1!34))))) b!1312251))

(assert (= (and b!1310637 ((_ is Concat!6003) (regTwo!7738 (regex!2299 (rule!4038 t1!34))))) b!1312252))

(assert (= (and b!1310637 ((_ is Star!3613) (regTwo!7738 (regex!2299 (rule!4038 t1!34))))) b!1312253))

(assert (= (and b!1310637 ((_ is Union!3613) (regTwo!7738 (regex!2299 (rule!4038 t1!34))))) b!1312254))

(declare-fun b!1312255 () Bool)

(declare-fun e!841376 () Bool)

(assert (=> b!1312255 (= e!841376 tp_is_empty!6615)))

(declare-fun b!1312256 () Bool)

(declare-fun tp!382236 () Bool)

(declare-fun tp!382237 () Bool)

(assert (=> b!1312256 (= e!841376 (and tp!382236 tp!382237))))

(assert (=> b!1310658 (= tp!382055 e!841376)))

(declare-fun b!1312257 () Bool)

(declare-fun tp!382235 () Bool)

(assert (=> b!1312257 (= e!841376 tp!382235)))

(declare-fun b!1312258 () Bool)

(declare-fun tp!382238 () Bool)

(declare-fun tp!382239 () Bool)

(assert (=> b!1312258 (= e!841376 (and tp!382238 tp!382239))))

(assert (= (and b!1310658 ((_ is ElementMatch!3613) (regOne!7738 (regex!2299 (h!18686 rules!2550))))) b!1312255))

(assert (= (and b!1310658 ((_ is Concat!6003) (regOne!7738 (regex!2299 (h!18686 rules!2550))))) b!1312256))

(assert (= (and b!1310658 ((_ is Star!3613) (regOne!7738 (regex!2299 (h!18686 rules!2550))))) b!1312257))

(assert (= (and b!1310658 ((_ is Union!3613) (regOne!7738 (regex!2299 (h!18686 rules!2550))))) b!1312258))

(declare-fun b!1312259 () Bool)

(declare-fun e!841377 () Bool)

(assert (=> b!1312259 (= e!841377 tp_is_empty!6615)))

(declare-fun b!1312260 () Bool)

(declare-fun tp!382241 () Bool)

(declare-fun tp!382242 () Bool)

(assert (=> b!1312260 (= e!841377 (and tp!382241 tp!382242))))

(assert (=> b!1310658 (= tp!382056 e!841377)))

(declare-fun b!1312261 () Bool)

(declare-fun tp!382240 () Bool)

(assert (=> b!1312261 (= e!841377 tp!382240)))

(declare-fun b!1312262 () Bool)

(declare-fun tp!382243 () Bool)

(declare-fun tp!382244 () Bool)

(assert (=> b!1312262 (= e!841377 (and tp!382243 tp!382244))))

(assert (= (and b!1310658 ((_ is ElementMatch!3613) (regTwo!7738 (regex!2299 (h!18686 rules!2550))))) b!1312259))

(assert (= (and b!1310658 ((_ is Concat!6003) (regTwo!7738 (regex!2299 (h!18686 rules!2550))))) b!1312260))

(assert (= (and b!1310658 ((_ is Star!3613) (regTwo!7738 (regex!2299 (h!18686 rules!2550))))) b!1312261))

(assert (= (and b!1310658 ((_ is Union!3613) (regTwo!7738 (regex!2299 (h!18686 rules!2550))))) b!1312262))

(declare-fun b!1312263 () Bool)

(declare-fun e!841378 () Bool)

(assert (=> b!1312263 (= e!841378 tp_is_empty!6615)))

(declare-fun b!1312264 () Bool)

(declare-fun tp!382246 () Bool)

(declare-fun tp!382247 () Bool)

(assert (=> b!1312264 (= e!841378 (and tp!382246 tp!382247))))

(assert (=> b!1310638 (= tp!382033 e!841378)))

(declare-fun b!1312265 () Bool)

(declare-fun tp!382245 () Bool)

(assert (=> b!1312265 (= e!841378 tp!382245)))

(declare-fun b!1312266 () Bool)

(declare-fun tp!382248 () Bool)

(declare-fun tp!382249 () Bool)

(assert (=> b!1312266 (= e!841378 (and tp!382248 tp!382249))))

(assert (= (and b!1310638 ((_ is ElementMatch!3613) (reg!3942 (regex!2299 (rule!4038 t1!34))))) b!1312263))

(assert (= (and b!1310638 ((_ is Concat!6003) (reg!3942 (regex!2299 (rule!4038 t1!34))))) b!1312264))

(assert (= (and b!1310638 ((_ is Star!3613) (reg!3942 (regex!2299 (rule!4038 t1!34))))) b!1312265))

(assert (= (and b!1310638 ((_ is Union!3613) (reg!3942 (regex!2299 (rule!4038 t1!34))))) b!1312266))

(declare-fun b!1312267 () Bool)

(declare-fun e!841379 () Bool)

(assert (=> b!1312267 (= e!841379 tp_is_empty!6615)))

(declare-fun b!1312268 () Bool)

(declare-fun tp!382251 () Bool)

(declare-fun tp!382252 () Bool)

(assert (=> b!1312268 (= e!841379 (and tp!382251 tp!382252))))

(assert (=> b!1310659 (= tp!382054 e!841379)))

(declare-fun b!1312269 () Bool)

(declare-fun tp!382250 () Bool)

(assert (=> b!1312269 (= e!841379 tp!382250)))

(declare-fun b!1312270 () Bool)

(declare-fun tp!382253 () Bool)

(declare-fun tp!382254 () Bool)

(assert (=> b!1312270 (= e!841379 (and tp!382253 tp!382254))))

(assert (= (and b!1310659 ((_ is ElementMatch!3613) (reg!3942 (regex!2299 (h!18686 rules!2550))))) b!1312267))

(assert (= (and b!1310659 ((_ is Concat!6003) (reg!3942 (regex!2299 (h!18686 rules!2550))))) b!1312268))

(assert (= (and b!1310659 ((_ is Star!3613) (reg!3942 (regex!2299 (h!18686 rules!2550))))) b!1312269))

(assert (= (and b!1310659 ((_ is Union!3613) (reg!3942 (regex!2299 (h!18686 rules!2550))))) b!1312270))

(declare-fun b!1312271 () Bool)

(declare-fun e!841380 () Bool)

(assert (=> b!1312271 (= e!841380 tp_is_empty!6615)))

(declare-fun b!1312272 () Bool)

(declare-fun tp!382256 () Bool)

(declare-fun tp!382257 () Bool)

(assert (=> b!1312272 (= e!841380 (and tp!382256 tp!382257))))

(assert (=> b!1310633 (= tp!382029 e!841380)))

(declare-fun b!1312273 () Bool)

(declare-fun tp!382255 () Bool)

(assert (=> b!1312273 (= e!841380 tp!382255)))

(declare-fun b!1312274 () Bool)

(declare-fun tp!382258 () Bool)

(declare-fun tp!382259 () Bool)

(assert (=> b!1312274 (= e!841380 (and tp!382258 tp!382259))))

(assert (= (and b!1310633 ((_ is ElementMatch!3613) (regOne!7738 (regex!2299 (rule!4038 t2!34))))) b!1312271))

(assert (= (and b!1310633 ((_ is Concat!6003) (regOne!7738 (regex!2299 (rule!4038 t2!34))))) b!1312272))

(assert (= (and b!1310633 ((_ is Star!3613) (regOne!7738 (regex!2299 (rule!4038 t2!34))))) b!1312273))

(assert (= (and b!1310633 ((_ is Union!3613) (regOne!7738 (regex!2299 (rule!4038 t2!34))))) b!1312274))

(declare-fun b!1312275 () Bool)

(declare-fun e!841381 () Bool)

(assert (=> b!1312275 (= e!841381 tp_is_empty!6615)))

(declare-fun b!1312276 () Bool)

(declare-fun tp!382261 () Bool)

(declare-fun tp!382262 () Bool)

(assert (=> b!1312276 (= e!841381 (and tp!382261 tp!382262))))

(assert (=> b!1310633 (= tp!382030 e!841381)))

(declare-fun b!1312277 () Bool)

(declare-fun tp!382260 () Bool)

(assert (=> b!1312277 (= e!841381 tp!382260)))

(declare-fun b!1312278 () Bool)

(declare-fun tp!382263 () Bool)

(declare-fun tp!382264 () Bool)

(assert (=> b!1312278 (= e!841381 (and tp!382263 tp!382264))))

(assert (= (and b!1310633 ((_ is ElementMatch!3613) (regTwo!7738 (regex!2299 (rule!4038 t2!34))))) b!1312275))

(assert (= (and b!1310633 ((_ is Concat!6003) (regTwo!7738 (regex!2299 (rule!4038 t2!34))))) b!1312276))

(assert (= (and b!1310633 ((_ is Star!3613) (regTwo!7738 (regex!2299 (rule!4038 t2!34))))) b!1312277))

(assert (= (and b!1310633 ((_ is Union!3613) (regTwo!7738 (regex!2299 (rule!4038 t2!34))))) b!1312278))

(declare-fun b_lambda!37761 () Bool)

(assert (= b_lambda!37669 (or d!368836 b_lambda!37761)))

(declare-fun bs!330077 () Bool)

(declare-fun d!369890 () Bool)

(assert (= bs!330077 (and d!369890 d!368836)))

(assert (=> bs!330077 (= (dynLambda!5761 lambda!52978 (h!18687 lt!431420)) (validRegex!1543 (h!18687 lt!431420)))))

(declare-fun m!1465229 () Bool)

(assert (=> bs!330077 m!1465229))

(assert (=> b!1310808 d!369890))

(declare-fun b_lambda!37763 () Bool)

(assert (= b_lambda!37677 (or d!368832 b_lambda!37763)))

(declare-fun bs!330078 () Bool)

(declare-fun d!369892 () Bool)

(assert (= bs!330078 (and d!369892 d!368832)))

(assert (=> bs!330078 (= (dynLambda!5761 lambda!52973 (h!18687 lt!431420)) (not (dynLambda!5761 lambda!52949 (h!18687 lt!431420))))))

(declare-fun b_lambda!37785 () Bool)

(assert (=> (not b_lambda!37785) (not bs!330078)))

(declare-fun m!1465231 () Bool)

(assert (=> bs!330078 m!1465231))

(assert (=> b!1310975 d!369892))

(declare-fun b_lambda!37765 () Bool)

(assert (= b_lambda!37747 (or b!1309937 b_lambda!37765)))

(declare-fun bs!330079 () Bool)

(declare-fun d!369894 () Bool)

(assert (= bs!330079 (and d!369894 b!1309937)))

(assert (=> bs!330079 (= (dynLambda!5764 lambda!52950 lt!432386) (= (regex!2299 lt!432386) lt!431413))))

(assert (=> d!369802 d!369894))

(declare-fun b_lambda!37767 () Bool)

(assert (= b_lambda!37671 (or d!368850 b_lambda!37767)))

(declare-fun bs!330080 () Bool)

(declare-fun d!369896 () Bool)

(assert (= bs!330080 (and d!369896 d!368850)))

(assert (=> bs!330080 (= (dynLambda!5761 lambda!52980 (h!18687 (map!2915 rules!2550 lambda!52948))) (not (dynLambda!5761 lambda!52949 (h!18687 (map!2915 rules!2550 lambda!52948)))))))

(declare-fun b_lambda!37787 () Bool)

(assert (=> (not b_lambda!37787) (not bs!330080)))

(assert (=> bs!330080 m!1461905))

(assert (=> b!1310860 d!369896))

(declare-fun b_lambda!37769 () Bool)

(assert (= b_lambda!37753 (or d!368894 b_lambda!37769)))

(declare-fun bs!330081 () Bool)

(declare-fun d!369898 () Bool)

(assert (= bs!330081 (and d!369898 d!368894)))

(assert (=> bs!330081 (= (dynLambda!5764 lambda!52986 (h!18686 rules!2550)) (not (dynLambda!5764 lambda!52950 (h!18686 rules!2550))))))

(declare-fun b_lambda!37789 () Bool)

(assert (=> (not b_lambda!37789) (not bs!330081)))

(assert (=> bs!330081 m!1462391))

(assert (=> b!1312009 d!369898))

(declare-fun b_lambda!37771 () Bool)

(assert (= b_lambda!37749 (or b!1309937 b_lambda!37771)))

(declare-fun bs!330082 () Bool)

(declare-fun d!369900 () Bool)

(assert (= bs!330082 (and d!369900 b!1309937)))

(assert (=> bs!330082 (= (dynLambda!5764 lambda!52950 (h!18686 (t!118010 rules!2550))) (= (regex!2299 (h!18686 (t!118010 rules!2550))) lt!431413))))

(assert (=> b!1311998 d!369900))

(declare-fun b_lambda!37773 () Bool)

(assert (= b_lambda!37755 (or d!368886 b_lambda!37773)))

(declare-fun bs!330083 () Bool)

(declare-fun d!369902 () Bool)

(assert (= bs!330083 (and d!369902 d!368886)))

(assert (=> bs!330083 (= (dynLambda!5760 lambda!52983 (h!18686 rules!2550)) (regex!2299 (h!18686 rules!2550)))))

(assert (=> b!1312142 d!369902))

(declare-fun b_lambda!37775 () Bool)

(assert (= b_lambda!37751 (or b!1309935 b_lambda!37775)))

(declare-fun bs!330084 () Bool)

(declare-fun d!369904 () Bool)

(assert (= bs!330084 (and d!369904 b!1309935)))

(assert (=> bs!330084 (= (dynLambda!5764 lambda!52951 (h!18686 (t!118010 rules!2550))) (ruleValid!557 thiss!19762 (h!18686 (t!118010 rules!2550))))))

(declare-fun m!1465233 () Bool)

(assert (=> bs!330084 m!1465233))

(assert (=> b!1312007 d!369904))

(declare-fun b_lambda!37777 () Bool)

(assert (= b_lambda!37745 (or b!1309930 b_lambda!37777)))

(declare-fun bs!330085 () Bool)

(declare-fun d!369906 () Bool)

(assert (= bs!330085 (and d!369906 b!1309930)))

(declare-fun res!589093 () Bool)

(declare-fun e!841382 () Bool)

(assert (=> bs!330085 (=> (not res!589093) (not e!841382))))

(assert (=> bs!330085 (= res!589093 (validRegex!1543 lt!432369))))

(assert (=> bs!330085 (= (dynLambda!5761 lambda!52949 lt!432369) e!841382)))

(declare-fun b!1312279 () Bool)

(assert (=> b!1312279 (= e!841382 (matchR!1615 lt!432369 lt!431412))))

(assert (= (and bs!330085 res!589093) b!1312279))

(declare-fun m!1465235 () Bool)

(assert (=> bs!330085 m!1465235))

(declare-fun m!1465237 () Bool)

(assert (=> b!1312279 m!1465237))

(assert (=> d!369794 d!369906))

(declare-fun b_lambda!37779 () Bool)

(assert (= b_lambda!37743 (or b!1309930 b_lambda!37779)))

(declare-fun bs!330086 () Bool)

(declare-fun d!369908 () Bool)

(assert (= bs!330086 (and d!369908 b!1309930)))

(declare-fun res!589094 () Bool)

(declare-fun e!841383 () Bool)

(assert (=> bs!330086 (=> (not res!589094) (not e!841383))))

(assert (=> bs!330086 (= res!589094 (validRegex!1543 (h!18687 (t!118011 (map!2915 rules!2550 lambda!52948)))))))

(assert (=> bs!330086 (= (dynLambda!5761 lambda!52949 (h!18687 (t!118011 (map!2915 rules!2550 lambda!52948)))) e!841383)))

(declare-fun b!1312280 () Bool)

(assert (=> b!1312280 (= e!841383 (matchR!1615 (h!18687 (t!118011 (map!2915 rules!2550 lambda!52948))) lt!431412))))

(assert (= (and bs!330086 res!589094) b!1312280))

(declare-fun m!1465239 () Bool)

(assert (=> bs!330086 m!1465239))

(declare-fun m!1465241 () Bool)

(assert (=> b!1312280 m!1465241))

(assert (=> b!1311953 d!369908))

(declare-fun b_lambda!37781 () Bool)

(assert (= b_lambda!37757 (or b!1309939 b_lambda!37781)))

(declare-fun bs!330087 () Bool)

(declare-fun d!369910 () Bool)

(assert (= bs!330087 (and d!369910 b!1309939)))

(declare-fun res!589095 () Bool)

(declare-fun e!841384 () Bool)

(assert (=> bs!330087 (=> (not res!589095) (not e!841384))))

(assert (=> bs!330087 (= res!589095 (matchR!1615 lt!431419 res!589064))))

(assert (=> bs!330087 (= (dynLambda!5768 lambda!52947 res!589064) e!841384)))

(declare-fun b!1312281 () Bool)

(assert (=> b!1312281 (= e!841384 (isPrefix!1068 lt!431414 res!589064))))

(assert (= (and bs!330087 res!589095) b!1312281))

(declare-fun m!1465243 () Bool)

(assert (=> bs!330087 m!1465243))

(declare-fun m!1465245 () Bool)

(assert (=> b!1312281 m!1465245))

(assert (=> d!369864 d!369910))

(declare-fun b_lambda!37783 () Bool)

(assert (= b_lambda!37759 (or b!1309930 b_lambda!37783)))

(declare-fun bs!330088 () Bool)

(declare-fun d!369912 () Bool)

(assert (= bs!330088 (and d!369912 b!1309930)))

(assert (=> bs!330088 (= (dynLambda!5760 lambda!52948 (h!18686 (t!118010 rules!2550))) (regex!2299 (h!18686 (t!118010 rules!2550))))))

(assert (=> b!1312169 d!369912))

(check-sat (not b!1312134) (not b!1310950) (not d!369886) (not b!1310990) (not d!369214) (not d!369820) (not b!1311874) (not b!1311040) (not b!1311873) (not b!1312224) (not b!1311298) (not b!1311327) (not d!369096) (not d!369442) (not d!369384) (not b!1312281) (not b!1310941) (not d!369872) (not b!1312036) (not b!1311987) (not d!369686) (not d!369372) (not b!1312038) (not b!1312163) (not d!369758) (not b!1310959) (not b_lambda!37779) (not b!1311929) (not b!1311170) (not b!1310924) (not d!369076) (not b!1310943) (not b!1312195) (not d!369724) (not b!1310845) (not b_next!32271) (not b!1311793) b_and!87637 (not b_next!32275) (not b!1311872) (not b!1312167) (not tb!69737) (not b!1311274) (not d!369376) (not b!1311235) (not b!1311346) (not b!1312110) (not b!1312248) (not b!1312030) (not b!1310736) (not d!369750) (not b!1311188) (not b!1311139) (not b!1311879) (not b!1310876) (not bm!89282) (not b_lambda!37763) (not b!1310386) (not b!1312222) (not b!1310740) (not b!1312002) (not d!369208) (not d!369846) (not bm!89265) (not b!1311813) (not b!1311857) (not b!1311190) (not b!1311957) (not b!1311932) (not b!1310809) (not b!1312020) (not b!1311940) (not b!1312225) (not d!369688) (not b!1310861) b_and!87641 (not b_lambda!37771) (not b!1312253) (not bs!330085) (not b!1311286) (not b!1311948) (not d!369822) (not bm!89338) (not d!369842) (not d!369784) (not d!369878) (not b!1312272) (not b!1311255) (not b!1312242) (not b!1312171) (not b!1310820) (not d!369156) (not d!369432) (not b!1312244) (not d!369256) (not b!1312250) (not b!1310974) (not b!1310777) (not d!369836) (not b!1312181) (not d!369888) (not b_lambda!37741) (not b!1312196) (not b!1311847) (not b!1310844) (not b!1312200) (not d!369804) (not b!1311169) (not b!1311192) (not b!1311803) (not b!1310970) (not b!1312233) (not b_lambda!37659) (not b!1312077) (not b!1311931) (not bm!89323) (not d!369876) (not d!369862) (not b!1310966) (not b!1312198) (not b!1311915) (not d!369694) (not b!1311898) (not d!369832) (not d!369090) (not b!1312104) (not b!1310842) (not b!1310765) (not d!369176) (not b!1311985) (not b!1312261) (not b!1312268) (not b!1311881) (not b!1312208) (not b!1311348) (not b!1311230) (not b!1312001) (not d!369856) (not d!369126) (not b!1312161) (not b!1311868) (not b!1312264) (not bm!89267) (not b!1311168) (not b!1311237) (not d!369296) (not b_lambda!37663) (not d!369106) (not b!1311858) (not b_lambda!37655) (not b!1310926) (not b!1310947) (not b!1312154) (not b!1310879) (not b!1312199) (not b!1310944) (not b!1310884) (not b!1312045) (not b!1311986) (not b!1312226) (not b!1311125) (not b!1311140) (not d!369388) (not d!369426) (not b!1310880) (not b!1310968) (not b_lambda!37657) (not d!369652) (not b!1311852) (not b!1310945) (not b_lambda!37773) (not d!369760) (not b!1312088) (not b!1312266) (not b!1311920) (not b!1312280) (not b_lambda!37789) (not b!1312151) (not b!1311919) (not b!1312246) (not d!369716) (not d!369728) (not b!1311917) (not d!369840) (not b_next!32269) (not d!369182) (not b!1312176) (not b!1310726) (not b!1311238) (not b!1311808) (not b!1310786) (not b!1312257) (not d!369730) (not b!1312029) (not b!1310894) (not b!1312017) (not b_next!32291) (not b!1312241) (not b_next!32277) (not d!369826) (not b!1312138) (not d!369756) (not b!1311862) (not d!369722) (not b!1311270) (not b!1312156) (not d!369204) (not b_lambda!37675) (not b!1311925) (not d!369708) (not d!369398) (not b!1312132) (not b!1312174) (not b!1311942) (not b!1310840) (not b!1312277) (not bm!89329) (not b!1312137) (not d!369780) (not d!369362) (not b!1312203) (not d!369718) (not d!369884) (not b!1312178) (not b!1311328) (not d!369192) (not b!1311994) (not bm!89350) (not b!1311997) (not b!1312229) (not d!369696) (not bm!89255) (not b!1310871) (not b!1311918) (not b!1311992) (not b!1312223) (not b_lambda!37739) (not d!369684) (not b!1312189) (not d!369858) (not d!369368) (not bm!89340) (not b!1312140) (not b!1310961) (not b!1311945) (not b!1311322) (not b!1311131) (not b!1311138) (not d!369702) (not b!1312043) (not b!1311167) (not b!1311996) (not d!369668) (not b!1311991) (not b!1310855) (not d!369698) (not d!369682) (not bm!89311) (not d!369336) (not b!1311810) (not bm!89328) (not b!1311844) (not b!1312142) (not b!1311937) (not b!1311930) (not d!369882) (not b!1310923) (not d!369720) (not d!369184) (not d!369348) b_and!87639 (not b!1311799) (not b!1311039) (not d!369438) (not b!1311795) (not b!1312209) (not b!1311869) (not b_lambda!37665) (not b!1311850) (not b!1310785) (not b!1311939) (not b!1312245) (not b!1311319) (not b_next!32267) (not b!1312169) (not b!1312252) (not b!1310992) (not d!369404) (not b!1312256) (not b!1311870) (not b!1311041) (not b_next!32285) (not b!1311806) (not d!369788) (not d!369318) b_and!87649 (not bs!330077) (not b!1311330) (not b!1312265) (not b!1311956) (not b!1312239) (not d!369304) (not b!1311849) (not d!369866) (not b!1311637) (not b!1311891) (not b!1312019) (not b_next!32283) (not b!1312234) (not b!1312133) (not b_lambda!37645) (not d!369392) (not b!1310875) (not d!369068) (not b!1312191) (not b!1312158) (not tb!69729) (not d!369108) (not b!1311239) (not b_lambda!37679) (not b!1312076) (not b!1312230) (not b!1311711) (not b_lambda!37651) (not b!1310985) (not b!1310812) b_and!87645 (not d!369308) (not bm!89277) (not b!1311952) (not b!1312258) (not b!1311272) (not b!1311984) (not b!1312190) b_and!87635 (not b_lambda!37649) (not b_lambda!37785) (not b!1310776) (not d!369880) (not b!1310892) (not b!1312260) (not b!1310746) (not b!1310848) (not bs!330084) (not b!1310878) (not d!369100) (not d!369794) (not b_lambda!37781) (not b!1311988) (not b!1312027) (not b!1312235) (not b!1311325) (not b!1311848) (not b!1312269) (not b!1311710) (not b!1310976) (not b!1312008) (not bm!89344) (not b!1312011) (not d!369700) (not b!1312194) (not b!1312026) (not b!1311914) (not d!369128) (not b!1312034) (not b!1312071) (not b_lambda!37661) (not b!1312278) (not b!1312243) (not b!1310763) (not b!1312262) (not b!1311712) (not b!1312014) (not b!1311792) (not d!369744) (not b!1310779) (not b!1310873) (not b!1312004) (not b!1311943) (not d!369812) (not b!1310948) (not b!1311989) (not b!1312041) (not b!1312276) (not b!1312187) (not b!1312207) (not bm!89348) b_and!87631 (not b!1310963) (not b!1310994) (not d!369734) (not b!1311323) (not b!1311642) (not b!1312237) (not d!369118) (not d!369810) (not d!369772) (not d!369792) (not d!369726) (not b!1312183) (not b!1312083) (not b_lambda!37761) (not b!1312188) (not b!1312206) (not bs!330086) (not b!1311893) b_and!87633 (not d!369070) (not d!369748) (not bm!89342) (not bs!330087) (not d!369860) (not b!1311801) (not b!1311851) (not b!1311897) (not b_lambda!37647) (not b!1311894) (not d!369710) (not b!1311924) (not bm!89324) (not b!1312231) (not b!1310946) (not d!369828) (not b!1310787) (not b!1310813) (not b!1311638) (not b!1311042) (not d!369852) (not b_next!32273) (not d!369844) (not d!369778) (not b!1312238) (not b!1310877) (not b_lambda!37783) (not d!369790) (not d!369650) (not b_lambda!37775) (not b!1311288) (not tb!69781) (not d!369228) (not b!1312000) (not b!1312131) (not b_next!32293) (not tb!69789) (not bm!89320) (not d!369378) (not b!1311935) (not b!1311268) (not b!1312270) (not b!1312010) (not b!1311865) (not d!369834) (not b!1311853) (not b!1310728) (not bm!89349) (not b!1312273) (not b!1312204) (not d!369222) (not b!1312218) (not b!1311846) (not d!369092) (not b!1312274) (not b!1312185) (not d!369800) (not b_lambda!37653) (not d!369138) (not b!1311913) (not d!369148) (not b!1311643) (not b!1310748) (not b!1310987) (not d!369078) (not d!369234) (not b!1311321) (not b!1310983) (not b!1311933) (not b!1311928) (not b!1311938) (not d!369824) (not b!1311927) (not b!1312202) (not b!1312219) (not b!1312145) (not d!369870) (not b_lambda!37777) (not b!1312186) b_and!87647 (not b!1311834) (not b!1311916) (not d!369390) (not b_lambda!37769) (not b!1312090) (not b!1310853) (not b!1310881) (not d!369776) (not d!369764) (not bm!89321) (not b!1310750) (not b!1311326) (not b!1310891) (not d!369770) (not b!1312193) (not d!369818) (not d!369786) (not b!1311934) (not d!369146) b_and!87643 (not b!1312254) tp_is_empty!6615 (not b!1311324) (not b!1312165) (not d!369742) (not b_lambda!37765) (not b!1311944) (not b!1311855) (not b!1312249) (not d!369762) (not b_lambda!37787) (not b!1311950) (not d!369774) (not d!369380) (not b!1310621) (not d!369396) (not bm!89319) (not b!1311954) (not b!1310942) (not d!369216) (not b_lambda!37767) (not b!1310882) (not bm!89266) (not b!1312016) (not b!1311863) (not b!1311256) (not b!1312220) (not d!369386) (not d!369802) (not b!1312279) (not d!369798) (not b!1312091) (not b!1312005) (not bm!89325) (not bm!89327))
(check-sat (not b_next!32271) b_and!87641 (not b_next!32269) b_and!87639 (not b_next!32283) b_and!87631 b_and!87633 (not b_next!32273) (not b_next!32293) b_and!87647 b_and!87643 b_and!87637 (not b_next!32275) (not b_next!32291) (not b_next!32277) (not b_next!32285) b_and!87649 (not b_next!32267) b_and!87645 b_and!87635)
