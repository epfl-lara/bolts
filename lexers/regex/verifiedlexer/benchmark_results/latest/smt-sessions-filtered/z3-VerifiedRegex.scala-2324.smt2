; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!115026 () Bool)

(assert start!115026)

(declare-fun b!1302295 () Bool)

(declare-fun b_free!31035 () Bool)

(declare-fun b_next!31739 () Bool)

(assert (=> b!1302295 (= b_free!31035 (not b_next!31739))))

(declare-fun tp!380064 () Bool)

(declare-fun b_and!86887 () Bool)

(assert (=> b!1302295 (= tp!380064 b_and!86887)))

(declare-fun b_free!31037 () Bool)

(declare-fun b_next!31741 () Bool)

(assert (=> b!1302295 (= b_free!31037 (not b_next!31741))))

(declare-fun tp!380065 () Bool)

(declare-fun b_and!86889 () Bool)

(assert (=> b!1302295 (= tp!380065 b_and!86889)))

(declare-fun b!1302294 () Bool)

(declare-fun b_free!31039 () Bool)

(declare-fun b_next!31743 () Bool)

(assert (=> b!1302294 (= b_free!31039 (not b_next!31743))))

(declare-fun tp!380066 () Bool)

(declare-fun b_and!86891 () Bool)

(assert (=> b!1302294 (= tp!380066 b_and!86891)))

(declare-fun b_free!31041 () Bool)

(declare-fun b_next!31745 () Bool)

(assert (=> b!1302294 (= b_free!31041 (not b_next!31745))))

(declare-fun tp!380074 () Bool)

(declare-fun b_and!86893 () Bool)

(assert (=> b!1302294 (= tp!380074 b_and!86893)))

(declare-fun b!1302277 () Bool)

(declare-fun b_free!31043 () Bool)

(declare-fun b_next!31747 () Bool)

(assert (=> b!1302277 (= b_free!31043 (not b_next!31747))))

(declare-fun tp!380073 () Bool)

(declare-fun b_and!86895 () Bool)

(assert (=> b!1302277 (= tp!380073 b_and!86895)))

(declare-fun b_free!31045 () Bool)

(declare-fun b_next!31749 () Bool)

(assert (=> b!1302277 (= b_free!31045 (not b_next!31749))))

(declare-fun tp!380072 () Bool)

(declare-fun b_and!86897 () Bool)

(assert (=> b!1302277 (= tp!380072 b_and!86897)))

(declare-fun b!1302284 () Bool)

(assert (=> b!1302284 true))

(assert (=> b!1302284 true))

(declare-fun b!1302285 () Bool)

(assert (=> b!1302285 true))

(declare-fun b!1302270 () Bool)

(declare-fun e!834995 () Bool)

(assert (=> b!1302270 (= e!834995 true)))

(declare-datatypes ((C!7432 0))(
  ( (C!7433 (val!4276 Int)) )
))
(declare-datatypes ((Regex!3571 0))(
  ( (ElementMatch!3571 (c!214239 C!7432)) (Concat!5918 (regOne!7654 Regex!3571) (regTwo!7654 Regex!3571)) (EmptyExpr!3571) (Star!3571 (reg!3900 Regex!3571)) (EmptyLang!3571) (Union!3571 (regOne!7655 Regex!3571) (regTwo!7655 Regex!3571)) )
))
(declare-fun lt!428181 () Regex!3571)

(declare-fun lambda!51432 () Int)

(declare-fun lt!428188 () Bool)

(declare-datatypes ((List!13137 0))(
  ( (Nil!13071) (Cons!13071 (h!18472 (_ BitVec 16)) (t!117698 List!13137)) )
))
(declare-datatypes ((TokenValue!2347 0))(
  ( (FloatLiteralValue!4694 (text!16874 List!13137)) (TokenValueExt!2346 (__x!8523 Int)) (Broken!11735 (value!73931 List!13137)) (Object!2412) (End!2347) (Def!2347) (Underscore!2347) (Match!2347) (Else!2347) (Error!2347) (Case!2347) (If!2347) (Extends!2347) (Abstract!2347) (Class!2347) (Val!2347) (DelimiterValue!4694 (del!2407 List!13137)) (KeywordValue!2353 (value!73932 List!13137)) (CommentValue!4694 (value!73933 List!13137)) (WhitespaceValue!4694 (value!73934 List!13137)) (IndentationValue!2347 (value!73935 List!13137)) (String!15970) (Int32!2347) (Broken!11736 (value!73936 List!13137)) (Boolean!2348) (Unit!19191) (OperatorValue!2350 (op!2407 List!13137)) (IdentifierValue!4694 (value!73937 List!13137)) (IdentifierValue!4695 (value!73938 List!13137)) (WhitespaceValue!4695 (value!73939 List!13137)) (True!4694) (False!4694) (Broken!11737 (value!73940 List!13137)) (Broken!11738 (value!73941 List!13137)) (True!4695) (RightBrace!2347) (RightBracket!2347) (Colon!2347) (Null!2347) (Comma!2347) (LeftBracket!2347) (False!4695) (LeftBrace!2347) (ImaginaryLiteralValue!2347 (text!16875 List!13137)) (StringLiteralValue!7041 (value!73942 List!13137)) (EOFValue!2347 (value!73943 List!13137)) (IdentValue!2347 (value!73944 List!13137)) (DelimiterValue!4695 (value!73945 List!13137)) (DedentValue!2347 (value!73946 List!13137)) (NewLineValue!2347 (value!73947 List!13137)) (IntegerValue!7041 (value!73948 (_ BitVec 32)) (text!16876 List!13137)) (IntegerValue!7042 (value!73949 Int) (text!16877 List!13137)) (Times!2347) (Or!2347) (Equal!2347) (Minus!2347) (Broken!11739 (value!73950 List!13137)) (And!2347) (Div!2347) (LessEqual!2347) (Mod!2347) (Concat!5919) (Not!2347) (Plus!2347) (SpaceValue!2347 (value!73951 List!13137)) (IntegerValue!7043 (value!73952 Int) (text!16878 List!13137)) (StringLiteralValue!7042 (text!16879 List!13137)) (FloatLiteralValue!4695 (text!16880 List!13137)) (BytesLiteralValue!2347 (value!73953 List!13137)) (CommentValue!4695 (value!73954 List!13137)) (StringLiteralValue!7043 (value!73955 List!13137)) (ErrorTokenValue!2347 (msg!2408 List!13137)) )
))
(declare-datatypes ((List!13138 0))(
  ( (Nil!13072) (Cons!13072 (h!18473 C!7432) (t!117699 List!13138)) )
))
(declare-datatypes ((IArray!8583 0))(
  ( (IArray!8584 (innerList!4349 List!13138)) )
))
(declare-datatypes ((Conc!4289 0))(
  ( (Node!4289 (left!11239 Conc!4289) (right!11569 Conc!4289) (csize!8808 Int) (cheight!4500 Int)) (Leaf!6614 (xs!7004 IArray!8583) (csize!8809 Int)) (Empty!4289) )
))
(declare-datatypes ((BalanceConc!8518 0))(
  ( (BalanceConc!8519 (c!214240 Conc!4289)) )
))
(declare-datatypes ((String!15971 0))(
  ( (String!15972 (value!73956 String)) )
))
(declare-datatypes ((TokenValueInjection!4354 0))(
  ( (TokenValueInjection!4355 (toValue!3472 Int) (toChars!3331 Int)) )
))
(declare-datatypes ((Rule!4314 0))(
  ( (Rule!4315 (regex!2257 Regex!3571) (tag!2519 String!15971) (isSeparator!2257 Bool) (transformation!2257 TokenValueInjection!4354)) )
))
(declare-datatypes ((List!13139 0))(
  ( (Nil!13073) (Cons!13073 (h!18474 Rule!4314) (t!117700 List!13139)) )
))
(declare-fun rules!2550 () List!13139)

(declare-datatypes ((List!13140 0))(
  ( (Nil!13074) (Cons!13074 (h!18475 Regex!3571) (t!117701 List!13140)) )
))
(declare-fun contains!2198 (List!13140 Regex!3571) Bool)

(declare-fun map!2852 (List!13139 Int) List!13140)

(assert (=> b!1302270 (= lt!428188 (contains!2198 (map!2852 rules!2550 lambda!51432) lt!428181))))

(declare-fun b!1302271 () Bool)

(declare-fun res!583398 () Bool)

(declare-fun e!834993 () Bool)

(assert (=> b!1302271 (=> (not res!583398) (not e!834993))))

(declare-datatypes ((Token!4176 0))(
  ( (Token!4177 (value!73957 TokenValue!2347) (rule!3996 Rule!4314) (size!10680 Int) (originalCharacters!3119 List!13138)) )
))
(declare-fun t1!34 () Token!4176)

(declare-fun t2!34 () Token!4176)

(assert (=> b!1302271 (= res!583398 (not (= (isSeparator!2257 (rule!3996 t1!34)) (isSeparator!2257 (rule!3996 t2!34)))))))

(declare-fun b!1302272 () Bool)

(declare-fun res!583400 () Bool)

(declare-fun e!834990 () Bool)

(assert (=> b!1302272 (=> res!583400 e!834990)))

(declare-fun lt!428184 () List!13138)

(declare-fun lt!428187 () C!7432)

(declare-fun contains!2199 (List!13138 C!7432) Bool)

(assert (=> b!1302272 (= res!583400 (not (contains!2199 lt!428184 lt!428187)))))

(declare-fun b!1302273 () Bool)

(declare-fun e!834994 () Bool)

(declare-fun e!834981 () Bool)

(assert (=> b!1302273 (= e!834994 e!834981)))

(declare-fun res!583403 () Bool)

(assert (=> b!1302273 (=> (not res!583403) (not e!834981))))

(declare-fun lt!428182 () Regex!3571)

(declare-fun lt!428179 () List!13138)

(declare-fun prefixMatch!84 (Regex!3571 List!13138) Bool)

(assert (=> b!1302273 (= res!583403 (prefixMatch!84 lt!428182 lt!428179))))

(declare-datatypes ((LexerInterface!1952 0))(
  ( (LexerInterfaceExt!1949 (__x!8524 Int)) (Lexer!1950) )
))
(declare-fun thiss!19762 () LexerInterface!1952)

(declare-fun rulesRegex!142 (LexerInterface!1952 List!13139) Regex!3571)

(assert (=> b!1302273 (= lt!428182 (rulesRegex!142 thiss!19762 rules!2550))))

(declare-fun lt!428177 () List!13138)

(declare-fun ++!3328 (List!13138 List!13138) List!13138)

(assert (=> b!1302273 (= lt!428179 (++!3328 lt!428177 (Cons!13072 lt!428187 Nil!13072)))))

(declare-fun lt!428176 () BalanceConc!8518)

(declare-fun apply!2923 (BalanceConc!8518 Int) C!7432)

(assert (=> b!1302273 (= lt!428187 (apply!2923 lt!428176 0))))

(declare-fun lt!428178 () BalanceConc!8518)

(declare-fun list!4899 (BalanceConc!8518) List!13138)

(assert (=> b!1302273 (= lt!428177 (list!4899 lt!428178))))

(declare-fun charsOf!1229 (Token!4176) BalanceConc!8518)

(assert (=> b!1302273 (= lt!428178 (charsOf!1229 t1!34))))

(declare-fun b!1302274 () Bool)

(declare-fun res!583405 () Bool)

(assert (=> b!1302274 (=> (not res!583405) (not e!834994))))

(declare-fun sepAndNonSepRulesDisjointChars!630 (List!13139 List!13139) Bool)

(assert (=> b!1302274 (= res!583405 (sepAndNonSepRulesDisjointChars!630 rules!2550 rules!2550))))

(declare-fun b!1302275 () Bool)

(declare-fun e!834996 () Bool)

(assert (=> b!1302275 (= e!834996 e!834990)))

(declare-fun res!583409 () Bool)

(assert (=> b!1302275 (=> res!583409 e!834990)))

(declare-fun lt!428183 () C!7432)

(assert (=> b!1302275 (= res!583409 (not (contains!2199 lt!428179 lt!428183)))))

(assert (=> b!1302275 (= lt!428183 (apply!2923 lt!428178 0))))

(declare-fun b!1302276 () Bool)

(assert (=> b!1302276 (= e!834993 e!834994)))

(declare-fun res!583408 () Bool)

(assert (=> b!1302276 (=> (not res!583408) (not e!834994))))

(declare-fun size!10681 (BalanceConc!8518) Int)

(assert (=> b!1302276 (= res!583408 (> (size!10681 lt!428176) 0))))

(assert (=> b!1302276 (= lt!428176 (charsOf!1229 t2!34))))

(declare-fun res!583394 () Bool)

(assert (=> start!115026 (=> (not res!583394) (not e!834993))))

(get-info :version)

(assert (=> start!115026 (= res!583394 ((_ is Lexer!1950) thiss!19762))))

(assert (=> start!115026 e!834993))

(assert (=> start!115026 true))

(declare-fun e!834997 () Bool)

(assert (=> start!115026 e!834997))

(declare-fun e!834987 () Bool)

(declare-fun inv!17500 (Token!4176) Bool)

(assert (=> start!115026 (and (inv!17500 t1!34) e!834987)))

(declare-fun e!835001 () Bool)

(assert (=> start!115026 (and (inv!17500 t2!34) e!835001)))

(declare-fun e!834991 () Bool)

(assert (=> b!1302277 (= e!834991 (and tp!380073 tp!380072))))

(declare-fun b!1302278 () Bool)

(declare-fun res!583401 () Bool)

(assert (=> b!1302278 (=> (not res!583401) (not e!834993))))

(declare-fun rulesProduceIndividualToken!921 (LexerInterface!1952 List!13139 Token!4176) Bool)

(assert (=> b!1302278 (= res!583401 (rulesProduceIndividualToken!921 thiss!19762 rules!2550 t2!34))))

(declare-fun e!834999 () Bool)

(declare-fun b!1302279 () Bool)

(declare-fun e!834992 () Bool)

(declare-fun tp!380071 () Bool)

(declare-fun inv!17497 (String!15971) Bool)

(declare-fun inv!17501 (TokenValueInjection!4354) Bool)

(assert (=> b!1302279 (= e!834992 (and tp!380071 (inv!17497 (tag!2519 (h!18474 rules!2550))) (inv!17501 (transformation!2257 (h!18474 rules!2550))) e!834999))))

(declare-fun b!1302280 () Bool)

(declare-fun tp!380068 () Bool)

(assert (=> b!1302280 (= e!834997 (and e!834992 tp!380068))))

(declare-fun b!1302281 () Bool)

(declare-fun res!583404 () Bool)

(assert (=> b!1302281 (=> (not res!583404) (not e!834994))))

(declare-fun separableTokensPredicate!235 (LexerInterface!1952 Token!4176 Token!4176 List!13139) Bool)

(assert (=> b!1302281 (= res!583404 (not (separableTokensPredicate!235 thiss!19762 t1!34 t2!34 rules!2550)))))

(declare-fun b!1302282 () Bool)

(declare-fun e!834984 () Bool)

(assert (=> b!1302282 (= e!834984 e!834996)))

(declare-fun res!583411 () Bool)

(assert (=> b!1302282 (=> res!583411 e!834996)))

(declare-fun getSuffix!427 (List!13138 List!13138) List!13138)

(assert (=> b!1302282 (= res!583411 (not (= lt!428184 (++!3328 lt!428179 (getSuffix!427 lt!428184 lt!428179)))))))

(declare-fun lambda!51431 () Int)

(declare-fun pickWitness!34 (Int) List!13138)

(assert (=> b!1302282 (= lt!428184 (pickWitness!34 lambda!51431))))

(declare-fun b!1302283 () Bool)

(declare-fun res!583406 () Bool)

(assert (=> b!1302283 (=> res!583406 e!834990)))

(declare-fun matchR!1573 (Regex!3571 List!13138) Bool)

(assert (=> b!1302283 (= res!583406 (not (matchR!1573 lt!428182 lt!428184)))))

(assert (=> b!1302284 (= e!834981 (not e!834984))))

(declare-fun res!583410 () Bool)

(assert (=> b!1302284 (=> res!583410 e!834984)))

(declare-fun Exists!729 (Int) Bool)

(assert (=> b!1302284 (= res!583410 (not (Exists!729 lambda!51431)))))

(assert (=> b!1302284 (Exists!729 lambda!51431)))

(declare-datatypes ((Unit!19192 0))(
  ( (Unit!19193) )
))
(declare-fun lt!428186 () Unit!19192)

(declare-fun lemmaPrefixMatchThenExistsStringThatMatches!47 (Regex!3571 List!13138) Unit!19192)

(assert (=> b!1302284 (= lt!428186 (lemmaPrefixMatchThenExistsStringThatMatches!47 lt!428182 lt!428179))))

(declare-fun e!834985 () Bool)

(assert (=> b!1302285 (= e!834990 e!834985)))

(declare-fun res!583395 () Bool)

(assert (=> b!1302285 (=> res!583395 e!834985)))

(declare-fun lambda!51433 () Int)

(declare-fun exists!217 (List!13140 Int) Bool)

(assert (=> b!1302285 (= res!583395 (not (exists!217 (map!2852 rules!2550 lambda!51432) lambda!51433)))))

(declare-fun lt!428180 () List!13140)

(assert (=> b!1302285 (exists!217 lt!428180 lambda!51433)))

(declare-fun lt!428185 () Unit!19192)

(declare-fun matchRGenUnionSpec!8 (Regex!3571 List!13140 List!13138) Unit!19192)

(assert (=> b!1302285 (= lt!428185 (matchRGenUnionSpec!8 lt!428182 lt!428180 lt!428184))))

(assert (=> b!1302285 (= lt!428180 (map!2852 rules!2550 lambda!51432))))

(declare-fun e!834988 () Bool)

(declare-fun tp!380070 () Bool)

(declare-fun b!1302286 () Bool)

(declare-fun e!834989 () Bool)

(assert (=> b!1302286 (= e!834988 (and tp!380070 (inv!17497 (tag!2519 (rule!3996 t2!34))) (inv!17501 (transformation!2257 (rule!3996 t2!34))) e!834989))))

(declare-fun b!1302287 () Bool)

(declare-fun tp!380069 () Bool)

(declare-fun inv!21 (TokenValue!2347) Bool)

(assert (=> b!1302287 (= e!835001 (and (inv!21 (value!73957 t2!34)) e!834988 tp!380069))))

(declare-fun b!1302288 () Bool)

(declare-fun res!583407 () Bool)

(assert (=> b!1302288 (=> (not res!583407) (not e!834993))))

(assert (=> b!1302288 (= res!583407 (rulesProduceIndividualToken!921 thiss!19762 rules!2550 t1!34))))

(declare-fun b!1302289 () Bool)

(declare-fun res!583402 () Bool)

(assert (=> b!1302289 (=> (not res!583402) (not e!834993))))

(declare-fun isEmpty!7755 (List!13139) Bool)

(assert (=> b!1302289 (= res!583402 (not (isEmpty!7755 rules!2550)))))

(declare-fun b!1302290 () Bool)

(assert (=> b!1302290 (= e!834985 e!834995)))

(declare-fun res!583397 () Bool)

(assert (=> b!1302290 (=> res!583397 e!834995)))

(assert (=> b!1302290 (= res!583397 (not (contains!2198 (map!2852 rules!2550 lambda!51432) lt!428181)))))

(declare-fun getWitness!111 (List!13140 Int) Regex!3571)

(assert (=> b!1302290 (= lt!428181 (getWitness!111 (map!2852 rules!2550 lambda!51432) lambda!51433))))

(declare-fun e!834986 () Bool)

(declare-fun tp!380067 () Bool)

(declare-fun b!1302291 () Bool)

(assert (=> b!1302291 (= e!834987 (and (inv!21 (value!73957 t1!34)) e!834986 tp!380067))))

(declare-fun b!1302292 () Bool)

(declare-fun tp!380063 () Bool)

(assert (=> b!1302292 (= e!834986 (and tp!380063 (inv!17497 (tag!2519 (rule!3996 t1!34))) (inv!17501 (transformation!2257 (rule!3996 t1!34))) e!834991))))

(declare-fun b!1302293 () Bool)

(declare-fun res!583399 () Bool)

(assert (=> b!1302293 (=> res!583399 e!834990)))

(assert (=> b!1302293 (= res!583399 (not (contains!2199 lt!428184 lt!428183)))))

(assert (=> b!1302294 (= e!834989 (and tp!380066 tp!380074))))

(assert (=> b!1302295 (= e!834999 (and tp!380064 tp!380065))))

(declare-fun b!1302296 () Bool)

(declare-fun res!583396 () Bool)

(assert (=> b!1302296 (=> (not res!583396) (not e!834993))))

(declare-fun rulesInvariant!1822 (LexerInterface!1952 List!13139) Bool)

(assert (=> b!1302296 (= res!583396 (rulesInvariant!1822 thiss!19762 rules!2550))))

(declare-fun b!1302297 () Bool)

(declare-fun res!583412 () Bool)

(assert (=> b!1302297 (=> res!583412 e!834990)))

(assert (=> b!1302297 (= res!583412 (not (contains!2199 lt!428179 lt!428187)))))

(assert (= (and start!115026 res!583394) b!1302289))

(assert (= (and b!1302289 res!583402) b!1302296))

(assert (= (and b!1302296 res!583396) b!1302288))

(assert (= (and b!1302288 res!583407) b!1302278))

(assert (= (and b!1302278 res!583401) b!1302271))

(assert (= (and b!1302271 res!583398) b!1302276))

(assert (= (and b!1302276 res!583408) b!1302274))

(assert (= (and b!1302274 res!583405) b!1302281))

(assert (= (and b!1302281 res!583404) b!1302273))

(assert (= (and b!1302273 res!583403) b!1302284))

(assert (= (and b!1302284 (not res!583410)) b!1302282))

(assert (= (and b!1302282 (not res!583411)) b!1302275))

(assert (= (and b!1302275 (not res!583409)) b!1302293))

(assert (= (and b!1302293 (not res!583399)) b!1302297))

(assert (= (and b!1302297 (not res!583412)) b!1302272))

(assert (= (and b!1302272 (not res!583400)) b!1302283))

(assert (= (and b!1302283 (not res!583406)) b!1302285))

(assert (= (and b!1302285 (not res!583395)) b!1302290))

(assert (= (and b!1302290 (not res!583397)) b!1302270))

(assert (= b!1302279 b!1302295))

(assert (= b!1302280 b!1302279))

(assert (= (and start!115026 ((_ is Cons!13073) rules!2550)) b!1302280))

(assert (= b!1302292 b!1302277))

(assert (= b!1302291 b!1302292))

(assert (= start!115026 b!1302291))

(assert (= b!1302286 b!1302294))

(assert (= b!1302287 b!1302286))

(assert (= start!115026 b!1302287))

(declare-fun m!1453793 () Bool)

(assert (=> b!1302272 m!1453793))

(declare-fun m!1453795 () Bool)

(assert (=> b!1302274 m!1453795))

(declare-fun m!1453797 () Bool)

(assert (=> b!1302297 m!1453797))

(declare-fun m!1453799 () Bool)

(assert (=> b!1302270 m!1453799))

(assert (=> b!1302270 m!1453799))

(declare-fun m!1453801 () Bool)

(assert (=> b!1302270 m!1453801))

(declare-fun m!1453803 () Bool)

(assert (=> b!1302296 m!1453803))

(declare-fun m!1453805 () Bool)

(assert (=> b!1302278 m!1453805))

(declare-fun m!1453807 () Bool)

(assert (=> b!1302275 m!1453807))

(declare-fun m!1453809 () Bool)

(assert (=> b!1302275 m!1453809))

(declare-fun m!1453811 () Bool)

(assert (=> b!1302284 m!1453811))

(assert (=> b!1302284 m!1453811))

(declare-fun m!1453813 () Bool)

(assert (=> b!1302284 m!1453813))

(declare-fun m!1453815 () Bool)

(assert (=> b!1302283 m!1453815))

(declare-fun m!1453817 () Bool)

(assert (=> b!1302281 m!1453817))

(declare-fun m!1453819 () Bool)

(assert (=> b!1302286 m!1453819))

(declare-fun m!1453821 () Bool)

(assert (=> b!1302286 m!1453821))

(declare-fun m!1453823 () Bool)

(assert (=> b!1302287 m!1453823))

(declare-fun m!1453825 () Bool)

(assert (=> b!1302288 m!1453825))

(declare-fun m!1453827 () Bool)

(assert (=> start!115026 m!1453827))

(declare-fun m!1453829 () Bool)

(assert (=> start!115026 m!1453829))

(declare-fun m!1453831 () Bool)

(assert (=> b!1302291 m!1453831))

(declare-fun m!1453833 () Bool)

(assert (=> b!1302276 m!1453833))

(declare-fun m!1453835 () Bool)

(assert (=> b!1302276 m!1453835))

(assert (=> b!1302290 m!1453799))

(assert (=> b!1302290 m!1453799))

(assert (=> b!1302290 m!1453801))

(assert (=> b!1302290 m!1453799))

(assert (=> b!1302290 m!1453799))

(declare-fun m!1453837 () Bool)

(assert (=> b!1302290 m!1453837))

(declare-fun m!1453839 () Bool)

(assert (=> b!1302279 m!1453839))

(declare-fun m!1453841 () Bool)

(assert (=> b!1302279 m!1453841))

(declare-fun m!1453843 () Bool)

(assert (=> b!1302282 m!1453843))

(assert (=> b!1302282 m!1453843))

(declare-fun m!1453845 () Bool)

(assert (=> b!1302282 m!1453845))

(declare-fun m!1453847 () Bool)

(assert (=> b!1302282 m!1453847))

(declare-fun m!1453849 () Bool)

(assert (=> b!1302289 m!1453849))

(assert (=> b!1302285 m!1453799))

(assert (=> b!1302285 m!1453799))

(assert (=> b!1302285 m!1453799))

(declare-fun m!1453851 () Bool)

(assert (=> b!1302285 m!1453851))

(declare-fun m!1453853 () Bool)

(assert (=> b!1302285 m!1453853))

(declare-fun m!1453855 () Bool)

(assert (=> b!1302285 m!1453855))

(declare-fun m!1453857 () Bool)

(assert (=> b!1302273 m!1453857))

(declare-fun m!1453859 () Bool)

(assert (=> b!1302273 m!1453859))

(declare-fun m!1453861 () Bool)

(assert (=> b!1302273 m!1453861))

(declare-fun m!1453863 () Bool)

(assert (=> b!1302273 m!1453863))

(declare-fun m!1453865 () Bool)

(assert (=> b!1302273 m!1453865))

(declare-fun m!1453867 () Bool)

(assert (=> b!1302273 m!1453867))

(declare-fun m!1453869 () Bool)

(assert (=> b!1302292 m!1453869))

(declare-fun m!1453871 () Bool)

(assert (=> b!1302292 m!1453871))

(declare-fun m!1453873 () Bool)

(assert (=> b!1302293 m!1453873))

(check-sat (not b!1302286) (not b!1302284) (not b!1302287) (not b!1302282) (not b!1302270) (not b_next!31739) b_and!86893 (not b!1302291) (not b!1302274) (not b!1302273) (not b!1302297) b_and!86897 (not b!1302290) (not b_next!31741) b_and!86891 b_and!86889 (not b!1302285) (not b!1302272) (not b!1302276) (not start!115026) (not b!1302281) (not b!1302283) (not b!1302289) (not b!1302288) (not b!1302292) (not b!1302280) (not b_next!31749) (not b_next!31745) (not b!1302279) (not b!1302275) b_and!86887 (not b_next!31743) b_and!86895 (not b!1302278) (not b_next!31747) (not b!1302293) (not b!1302296))
(check-sat b_and!86889 (not b_next!31739) b_and!86893 b_and!86897 (not b_next!31741) b_and!86891 (not b_next!31749) (not b_next!31745) b_and!86887 (not b_next!31743) (not b_next!31747) b_and!86895)
