; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!14934 () Bool)

(assert start!14934)

(declare-fun b!142298 () Bool)

(declare-fun b_free!4793 () Bool)

(declare-fun b_next!4793 () Bool)

(assert (=> b!142298 (= b_free!4793 (not b_next!4793))))

(declare-fun tp!75081 () Bool)

(declare-fun b_and!7389 () Bool)

(assert (=> b!142298 (= tp!75081 b_and!7389)))

(declare-fun b_free!4795 () Bool)

(declare-fun b_next!4795 () Bool)

(assert (=> b!142298 (= b_free!4795 (not b_next!4795))))

(declare-fun tp!75086 () Bool)

(declare-fun b_and!7391 () Bool)

(assert (=> b!142298 (= tp!75086 b_and!7391)))

(declare-fun b!142284 () Bool)

(declare-fun b_free!4797 () Bool)

(declare-fun b_next!4797 () Bool)

(assert (=> b!142284 (= b_free!4797 (not b_next!4797))))

(declare-fun tp!75083 () Bool)

(declare-fun b_and!7393 () Bool)

(assert (=> b!142284 (= tp!75083 b_and!7393)))

(declare-fun b_free!4799 () Bool)

(declare-fun b_next!4799 () Bool)

(assert (=> b!142284 (= b_free!4799 (not b_next!4799))))

(declare-fun tp!75088 () Bool)

(declare-fun b_and!7395 () Bool)

(assert (=> b!142284 (= tp!75088 b_and!7395)))

(declare-fun b!142290 () Bool)

(declare-fun b_free!4801 () Bool)

(declare-fun b_next!4801 () Bool)

(assert (=> b!142290 (= b_free!4801 (not b_next!4801))))

(declare-fun tp!75087 () Bool)

(declare-fun b_and!7397 () Bool)

(assert (=> b!142290 (= tp!75087 b_and!7397)))

(declare-fun b_free!4803 () Bool)

(declare-fun b_next!4803 () Bool)

(assert (=> b!142290 (= b_free!4803 (not b_next!4803))))

(declare-fun tp!75077 () Bool)

(declare-fun b_and!7399 () Bool)

(assert (=> b!142290 (= tp!75077 b_and!7399)))

(declare-fun e!84108 () Bool)

(assert (=> b!142284 (= e!84108 (and tp!75083 tp!75088))))

(declare-datatypes ((List!2449 0))(
  ( (Nil!2439) (Cons!2439 (h!7836 (_ BitVec 16)) (t!23743 List!2449)) )
))
(declare-datatypes ((TokenValue!435 0))(
  ( (FloatLiteralValue!870 (text!3490 List!2449)) (TokenValueExt!434 (__x!2357 Int)) (Broken!2175 (value!16060 List!2449)) (Object!444) (End!435) (Def!435) (Underscore!435) (Match!435) (Else!435) (Error!435) (Case!435) (If!435) (Extends!435) (Abstract!435) (Class!435) (Val!435) (DelimiterValue!870 (del!495 List!2449)) (KeywordValue!441 (value!16061 List!2449)) (CommentValue!870 (value!16062 List!2449)) (WhitespaceValue!870 (value!16063 List!2449)) (IndentationValue!435 (value!16064 List!2449)) (String!3254) (Int32!435) (Broken!2176 (value!16065 List!2449)) (Boolean!436) (Unit!1823) (OperatorValue!438 (op!495 List!2449)) (IdentifierValue!870 (value!16066 List!2449)) (IdentifierValue!871 (value!16067 List!2449)) (WhitespaceValue!871 (value!16068 List!2449)) (True!870) (False!870) (Broken!2177 (value!16069 List!2449)) (Broken!2178 (value!16070 List!2449)) (True!871) (RightBrace!435) (RightBracket!435) (Colon!435) (Null!435) (Comma!435) (LeftBracket!435) (False!871) (LeftBrace!435) (ImaginaryLiteralValue!435 (text!3491 List!2449)) (StringLiteralValue!1305 (value!16071 List!2449)) (EOFValue!435 (value!16072 List!2449)) (IdentValue!435 (value!16073 List!2449)) (DelimiterValue!871 (value!16074 List!2449)) (DedentValue!435 (value!16075 List!2449)) (NewLineValue!435 (value!16076 List!2449)) (IntegerValue!1305 (value!16077 (_ BitVec 32)) (text!3492 List!2449)) (IntegerValue!1306 (value!16078 Int) (text!3493 List!2449)) (Times!435) (Or!435) (Equal!435) (Minus!435) (Broken!2179 (value!16079 List!2449)) (And!435) (Div!435) (LessEqual!435) (Mod!435) (Concat!1072) (Not!435) (Plus!435) (SpaceValue!435 (value!16080 List!2449)) (IntegerValue!1307 (value!16081 Int) (text!3494 List!2449)) (StringLiteralValue!1306 (text!3495 List!2449)) (FloatLiteralValue!871 (text!3496 List!2449)) (BytesLiteralValue!435 (value!16082 List!2449)) (CommentValue!871 (value!16083 List!2449)) (StringLiteralValue!1307 (value!16084 List!2449)) (ErrorTokenValue!435 (msg!496 List!2449)) )
))
(declare-datatypes ((C!2196 0))(
  ( (C!2197 (val!984 Int)) )
))
(declare-datatypes ((List!2450 0))(
  ( (Nil!2440) (Cons!2440 (h!7837 C!2196) (t!23744 List!2450)) )
))
(declare-datatypes ((IArray!1297 0))(
  ( (IArray!1298 (innerList!706 List!2450)) )
))
(declare-datatypes ((Conc!648 0))(
  ( (Node!648 (left!1845 Conc!648) (right!2175 Conc!648) (csize!1526 Int) (cheight!859 Int)) (Leaf!1194 (xs!3243 IArray!1297) (csize!1527 Int)) (Empty!648) )
))
(declare-datatypes ((BalanceConc!1304 0))(
  ( (BalanceConc!1305 (c!29429 Conc!648)) )
))
(declare-datatypes ((Regex!637 0))(
  ( (ElementMatch!637 (c!29430 C!2196)) (Concat!1073 (regOne!1786 Regex!637) (regTwo!1786 Regex!637)) (EmptyExpr!637) (Star!637 (reg!966 Regex!637)) (EmptyLang!637) (Union!637 (regOne!1787 Regex!637) (regTwo!1787 Regex!637)) )
))
(declare-datatypes ((String!3255 0))(
  ( (String!3256 (value!16085 String)) )
))
(declare-datatypes ((TokenValueInjection!642 0))(
  ( (TokenValueInjection!643 (toValue!1028 Int) (toChars!887 Int)) )
))
(declare-datatypes ((Rule!626 0))(
  ( (Rule!627 (regex!413 Regex!637) (tag!591 String!3255) (isSeparator!413 Bool) (transformation!413 TokenValueInjection!642)) )
))
(declare-datatypes ((Token!570 0))(
  ( (Token!571 (value!16086 TokenValue!435) (rule!920 Rule!626) (size!2125 Int) (originalCharacters!456 List!2450)) )
))
(declare-datatypes ((List!2451 0))(
  ( (Nil!2441) (Cons!2441 (h!7838 Token!570) (t!23745 List!2451)) )
))
(declare-fun tokens!465 () List!2451)

(declare-fun e!84106 () Bool)

(declare-fun e!84105 () Bool)

(declare-fun tp!75084 () Bool)

(declare-fun b!142285 () Bool)

(declare-fun inv!21 (TokenValue!435) Bool)

(assert (=> b!142285 (= e!84106 (and (inv!21 (value!16086 (h!7838 tokens!465))) e!84105 tp!75084))))

(declare-fun b!142286 () Bool)

(declare-fun res!65858 () Bool)

(declare-fun e!84112 () Bool)

(assert (=> b!142286 (=> (not res!65858) (not e!84112))))

(declare-datatypes ((LexerInterface!299 0))(
  ( (LexerInterfaceExt!296 (__x!2358 Int)) (Lexer!297) )
))
(declare-fun thiss!17480 () LexerInterface!299)

(declare-datatypes ((List!2452 0))(
  ( (Nil!2442) (Cons!2442 (h!7839 Rule!626) (t!23746 List!2452)) )
))
(declare-fun rules!1920 () List!2452)

(declare-datatypes ((IArray!1299 0))(
  ( (IArray!1300 (innerList!707 List!2451)) )
))
(declare-datatypes ((Conc!649 0))(
  ( (Node!649 (left!1846 Conc!649) (right!2176 Conc!649) (csize!1528 Int) (cheight!860 Int)) (Leaf!1195 (xs!3244 IArray!1299) (csize!1529 Int)) (Empty!649) )
))
(declare-datatypes ((BalanceConc!1306 0))(
  ( (BalanceConc!1307 (c!29431 Conc!649)) )
))
(declare-fun rulesProduceEachTokenIndividually!91 (LexerInterface!299 List!2452 BalanceConc!1306) Bool)

(declare-fun seqFromList!226 (List!2451) BalanceConc!1306)

(assert (=> b!142286 (= res!65858 (rulesProduceEachTokenIndividually!91 thiss!17480 rules!1920 (seqFromList!226 tokens!465)))))

(declare-fun tp!75085 () Bool)

(declare-fun b!142287 () Bool)

(declare-fun e!84110 () Bool)

(declare-fun inv!3207 (String!3255) Bool)

(declare-fun inv!3210 (TokenValueInjection!642) Bool)

(assert (=> b!142287 (= e!84105 (and tp!75085 (inv!3207 (tag!591 (rule!920 (h!7838 tokens!465)))) (inv!3210 (transformation!413 (rule!920 (h!7838 tokens!465)))) e!84110))))

(declare-fun b!142288 () Bool)

(assert (=> b!142288 (= e!84112 false)))

(declare-fun lt!41238 () Bool)

(declare-fun sepAndNonSepRulesDisjointChars!2 (List!2452 List!2452) Bool)

(assert (=> b!142288 (= lt!41238 (sepAndNonSepRulesDisjointChars!2 rules!1920 rules!1920))))

(declare-fun b!142289 () Bool)

(declare-fun res!65859 () Bool)

(assert (=> b!142289 (=> (not res!65859) (not e!84112))))

(declare-fun rulesInvariant!265 (LexerInterface!299 List!2452) Bool)

(assert (=> b!142289 (= res!65859 (rulesInvariant!265 thiss!17480 rules!1920))))

(declare-fun e!84099 () Bool)

(assert (=> b!142290 (= e!84099 (and tp!75087 tp!75077))))

(declare-fun b!142291 () Bool)

(declare-fun res!65862 () Bool)

(assert (=> b!142291 (=> (not res!65862) (not e!84112))))

(declare-fun separatorToken!170 () Token!570)

(assert (=> b!142291 (= res!65862 (isSeparator!413 (rule!920 separatorToken!170)))))

(declare-fun b!142292 () Bool)

(declare-fun tp!75082 () Bool)

(declare-fun e!84100 () Bool)

(assert (=> b!142292 (= e!84100 (and tp!75082 (inv!3207 (tag!591 (rule!920 separatorToken!170))) (inv!3210 (transformation!413 (rule!920 separatorToken!170))) e!84099))))

(declare-fun res!65861 () Bool)

(assert (=> start!14934 (=> (not res!65861) (not e!84112))))

(get-info :version)

(assert (=> start!14934 (= res!65861 ((_ is Lexer!297) thiss!17480))))

(assert (=> start!14934 e!84112))

(assert (=> start!14934 true))

(declare-fun e!84107 () Bool)

(assert (=> start!14934 e!84107))

(declare-fun e!84111 () Bool)

(assert (=> start!14934 e!84111))

(declare-fun e!84113 () Bool)

(declare-fun inv!3211 (Token!570) Bool)

(assert (=> start!14934 (and (inv!3211 separatorToken!170) e!84113)))

(declare-fun b!142293 () Bool)

(declare-fun e!84098 () Bool)

(declare-fun tp!75078 () Bool)

(assert (=> b!142293 (= e!84107 (and e!84098 tp!75078))))

(declare-fun b!142294 () Bool)

(declare-fun res!65860 () Bool)

(assert (=> b!142294 (=> (not res!65860) (not e!84112))))

(declare-fun rulesProduceIndividualToken!48 (LexerInterface!299 List!2452 Token!570) Bool)

(assert (=> b!142294 (= res!65860 (rulesProduceIndividualToken!48 thiss!17480 rules!1920 separatorToken!170))))

(declare-fun b!142295 () Bool)

(declare-fun res!65863 () Bool)

(assert (=> b!142295 (=> (not res!65863) (not e!84112))))

(declare-fun lambda!3364 () Int)

(declare-fun forall!359 (List!2451 Int) Bool)

(assert (=> b!142295 (= res!65863 (forall!359 tokens!465 lambda!3364))))

(declare-fun tp!75089 () Bool)

(declare-fun b!142296 () Bool)

(assert (=> b!142296 (= e!84098 (and tp!75089 (inv!3207 (tag!591 (h!7839 rules!1920))) (inv!3210 (transformation!413 (h!7839 rules!1920))) e!84108))))

(declare-fun b!142297 () Bool)

(declare-fun tp!75079 () Bool)

(assert (=> b!142297 (= e!84111 (and (inv!3211 (h!7838 tokens!465)) e!84106 tp!75079))))

(assert (=> b!142298 (= e!84110 (and tp!75081 tp!75086))))

(declare-fun b!142299 () Bool)

(declare-fun res!65857 () Bool)

(assert (=> b!142299 (=> (not res!65857) (not e!84112))))

(declare-fun isEmpty!934 (List!2452) Bool)

(assert (=> b!142299 (= res!65857 (not (isEmpty!934 rules!1920)))))

(declare-fun tp!75080 () Bool)

(declare-fun b!142300 () Bool)

(assert (=> b!142300 (= e!84113 (and (inv!21 (value!16086 separatorToken!170)) e!84100 tp!75080))))

(assert (= (and start!14934 res!65861) b!142299))

(assert (= (and b!142299 res!65857) b!142289))

(assert (= (and b!142289 res!65859) b!142286))

(assert (= (and b!142286 res!65858) b!142294))

(assert (= (and b!142294 res!65860) b!142291))

(assert (= (and b!142291 res!65862) b!142295))

(assert (= (and b!142295 res!65863) b!142288))

(assert (= b!142296 b!142284))

(assert (= b!142293 b!142296))

(assert (= (and start!14934 ((_ is Cons!2442) rules!1920)) b!142293))

(assert (= b!142287 b!142298))

(assert (= b!142285 b!142287))

(assert (= b!142297 b!142285))

(assert (= (and start!14934 ((_ is Cons!2441) tokens!465)) b!142297))

(assert (= b!142292 b!142290))

(assert (= b!142300 b!142292))

(assert (= start!14934 b!142300))

(declare-fun m!125101 () Bool)

(assert (=> b!142287 m!125101))

(declare-fun m!125103 () Bool)

(assert (=> b!142287 m!125103))

(declare-fun m!125105 () Bool)

(assert (=> start!14934 m!125105))

(declare-fun m!125107 () Bool)

(assert (=> b!142285 m!125107))

(declare-fun m!125109 () Bool)

(assert (=> b!142299 m!125109))

(declare-fun m!125111 () Bool)

(assert (=> b!142294 m!125111))

(declare-fun m!125113 () Bool)

(assert (=> b!142300 m!125113))

(declare-fun m!125115 () Bool)

(assert (=> b!142289 m!125115))

(declare-fun m!125117 () Bool)

(assert (=> b!142295 m!125117))

(declare-fun m!125119 () Bool)

(assert (=> b!142296 m!125119))

(declare-fun m!125121 () Bool)

(assert (=> b!142296 m!125121))

(declare-fun m!125123 () Bool)

(assert (=> b!142297 m!125123))

(declare-fun m!125125 () Bool)

(assert (=> b!142288 m!125125))

(declare-fun m!125127 () Bool)

(assert (=> b!142292 m!125127))

(declare-fun m!125129 () Bool)

(assert (=> b!142292 m!125129))

(declare-fun m!125131 () Bool)

(assert (=> b!142286 m!125131))

(assert (=> b!142286 m!125131))

(declare-fun m!125133 () Bool)

(assert (=> b!142286 m!125133))

(check-sat (not start!14934) (not b!142295) b_and!7389 (not b_next!4803) (not b_next!4799) (not b!142292) (not b!142287) b_and!7399 (not b!142285) (not b_next!4797) (not b!142297) (not b!142289) (not b!142296) b_and!7393 b_and!7395 (not b!142288) (not b_next!4795) (not b!142286) b_and!7397 b_and!7391 (not b!142300) (not b!142293) (not b_next!4801) (not b_next!4793) (not b!142294) (not b!142299))
(check-sat (not b_next!4797) b_and!7389 (not b_next!4803) (not b_next!4799) b_and!7391 b_and!7399 b_and!7393 b_and!7395 (not b_next!4795) b_and!7397 (not b_next!4801) (not b_next!4793))
