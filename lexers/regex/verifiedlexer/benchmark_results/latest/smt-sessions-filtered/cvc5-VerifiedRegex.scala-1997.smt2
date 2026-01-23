; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!101504 () Bool)

(assert start!101504)

(declare-fun b!1159819 () Bool)

(declare-fun e!742334 () Bool)

(assert (=> b!1159819 (= e!742334 true)))

(declare-fun b!1159818 () Bool)

(declare-fun e!742333 () Bool)

(assert (=> b!1159818 (= e!742333 e!742334)))

(declare-fun b!1159799 () Bool)

(assert (=> b!1159799 e!742333))

(assert (= b!1159818 b!1159819))

(assert (= b!1159799 b!1159818))

(declare-fun e!742318 () Bool)

(declare-fun tp!333666 () Bool)

(declare-datatypes ((C!6806 0))(
  ( (C!6807 (val!3659 Int)) )
))
(declare-datatypes ((List!11395 0))(
  ( (Nil!11371) (Cons!11371 (h!16772 (_ BitVec 16)) (t!109560 List!11395)) )
))
(declare-datatypes ((TokenValue!2040 0))(
  ( (FloatLiteralValue!4080 (text!14725 List!11395)) (TokenValueExt!2039 (__x!7791 Int)) (Broken!10200 (value!64231 List!11395)) (Object!2063) (End!2040) (Def!2040) (Underscore!2040) (Match!2040) (Else!2040) (Error!2040) (Case!2040) (If!2040) (Extends!2040) (Abstract!2040) (Class!2040) (Val!2040) (DelimiterValue!4080 (del!2100 List!11395)) (KeywordValue!2046 (value!64232 List!11395)) (CommentValue!4080 (value!64233 List!11395)) (WhitespaceValue!4080 (value!64234 List!11395)) (IndentationValue!2040 (value!64235 List!11395)) (String!13789) (Int32!2040) (Broken!10201 (value!64236 List!11395)) (Boolean!2041) (Unit!17371) (OperatorValue!2043 (op!2100 List!11395)) (IdentifierValue!4080 (value!64237 List!11395)) (IdentifierValue!4081 (value!64238 List!11395)) (WhitespaceValue!4081 (value!64239 List!11395)) (True!4080) (False!4080) (Broken!10202 (value!64240 List!11395)) (Broken!10203 (value!64241 List!11395)) (True!4081) (RightBrace!2040) (RightBracket!2040) (Colon!2040) (Null!2040) (Comma!2040) (LeftBracket!2040) (False!4081) (LeftBrace!2040) (ImaginaryLiteralValue!2040 (text!14726 List!11395)) (StringLiteralValue!6120 (value!64242 List!11395)) (EOFValue!2040 (value!64243 List!11395)) (IdentValue!2040 (value!64244 List!11395)) (DelimiterValue!4081 (value!64245 List!11395)) (DedentValue!2040 (value!64246 List!11395)) (NewLineValue!2040 (value!64247 List!11395)) (IntegerValue!6120 (value!64248 (_ BitVec 32)) (text!14727 List!11395)) (IntegerValue!6121 (value!64249 Int) (text!14728 List!11395)) (Times!2040) (Or!2040) (Equal!2040) (Minus!2040) (Broken!10204 (value!64250 List!11395)) (And!2040) (Div!2040) (LessEqual!2040) (Mod!2040) (Concat!5284) (Not!2040) (Plus!2040) (SpaceValue!2040 (value!64251 List!11395)) (IntegerValue!6122 (value!64252 Int) (text!14729 List!11395)) (StringLiteralValue!6121 (text!14730 List!11395)) (FloatLiteralValue!4081 (text!14731 List!11395)) (BytesLiteralValue!2040 (value!64253 List!11395)) (CommentValue!4081 (value!64254 List!11395)) (StringLiteralValue!6122 (value!64255 List!11395)) (ErrorTokenValue!2040 (msg!2101 List!11395)) )
))
(declare-datatypes ((Regex!3244 0))(
  ( (ElementMatch!3244 (c!194193 C!6806)) (Concat!5285 (regOne!7000 Regex!3244) (regTwo!7000 Regex!3244)) (EmptyExpr!3244) (Star!3244 (reg!3573 Regex!3244)) (EmptyLang!3244) (Union!3244 (regOne!7001 Regex!3244) (regTwo!7001 Regex!3244)) )
))
(declare-datatypes ((String!13790 0))(
  ( (String!13791 (value!64256 String)) )
))
(declare-datatypes ((List!11396 0))(
  ( (Nil!11372) (Cons!11372 (h!16773 C!6806) (t!109561 List!11396)) )
))
(declare-datatypes ((IArray!7425 0))(
  ( (IArray!7426 (innerList!3770 List!11396)) )
))
(declare-datatypes ((Conc!3710 0))(
  ( (Node!3710 (left!9929 Conc!3710) (right!10259 Conc!3710) (csize!7650 Int) (cheight!3921 Int)) (Leaf!5708 (xs!6415 IArray!7425) (csize!7651 Int)) (Empty!3710) )
))
(declare-datatypes ((BalanceConc!7442 0))(
  ( (BalanceConc!7443 (c!194194 Conc!3710)) )
))
(declare-datatypes ((TokenValueInjection!3780 0))(
  ( (TokenValueInjection!3781 (toValue!3075 Int) (toChars!2934 Int)) )
))
(declare-datatypes ((Rule!3748 0))(
  ( (Rule!3749 (regex!1974 Regex!3244) (tag!2236 String!13790) (isSeparator!1974 Bool) (transformation!1974 TokenValueInjection!3780)) )
))
(declare-datatypes ((Token!3610 0))(
  ( (Token!3611 (value!64257 TokenValue!2040) (rule!3395 Rule!3748) (size!8934 Int) (originalCharacters!2528 List!11396)) )
))
(declare-datatypes ((List!11397 0))(
  ( (Nil!11373) (Cons!11373 (h!16774 Token!3610) (t!109562 List!11397)) )
))
(declare-datatypes ((List!11398 0))(
  ( (Nil!11374) (Cons!11374 (h!16775 Rule!3748) (t!109563 List!11398)) )
))
(declare-datatypes ((IArray!7427 0))(
  ( (IArray!7428 (innerList!3771 List!11397)) )
))
(declare-datatypes ((Conc!3711 0))(
  ( (Node!3711 (left!9930 Conc!3711) (right!10260 Conc!3711) (csize!7652 Int) (cheight!3922 Int)) (Leaf!5709 (xs!6416 IArray!7427) (csize!7653 Int)) (Empty!3711) )
))
(declare-datatypes ((BalanceConc!7444 0))(
  ( (BalanceConc!7445 (c!194195 Conc!3711)) )
))
(declare-datatypes ((PrintableTokens!634 0))(
  ( (PrintableTokens!635 (rules!9465 List!11398) (tokens!1573 BalanceConc!7444)) )
))
(declare-fun thiss!10527 () PrintableTokens!634)

(declare-fun e!742317 () Bool)

(declare-fun b!1159797 () Bool)

(declare-fun inv!14948 (BalanceConc!7444) Bool)

(assert (=> b!1159797 (= e!742317 (and tp!333666 (inv!14948 (tokens!1573 thiss!10527)) e!742318))))

(declare-fun b!1159798 () Bool)

(declare-fun res!522500 () Bool)

(declare-fun e!742324 () Bool)

(assert (=> b!1159798 (=> res!522500 e!742324)))

(declare-fun lt!394083 () BalanceConc!7444)

(declare-fun lambda!47152 () Int)

(declare-fun forall!2950 (BalanceConc!7444 Int) Bool)

(assert (=> b!1159798 (= res!522500 (not (forall!2950 lt!394083 lambda!47152)))))

(declare-fun e!742326 () Bool)

(declare-fun e!742322 () Bool)

(assert (=> b!1159799 (= e!742326 (not e!742322))))

(declare-fun res!522499 () Bool)

(assert (=> b!1159799 (=> res!522499 e!742322)))

(assert (=> b!1159799 (= res!522499 (not (forall!2950 (tokens!1573 thiss!10527) lambda!47152)))))

(declare-fun lt!394084 () List!11397)

(declare-fun e!742320 () Bool)

(declare-datatypes ((LexerInterface!1669 0))(
  ( (LexerInterfaceExt!1666 (__x!7792 Int)) (Lexer!1667) )
))
(declare-fun rulesProduceEachTokenIndividuallyList!537 (LexerInterface!1669 List!11398 List!11397) Bool)

(assert (=> b!1159799 (= (rulesProduceEachTokenIndividuallyList!537 Lexer!1667 (rules!9465 thiss!10527) lt!394084) e!742320)))

(declare-fun res!522493 () Bool)

(assert (=> b!1159799 (=> res!522493 e!742320)))

(assert (=> b!1159799 (= res!522493 (not (is-Cons!11373 lt!394084)))))

(declare-fun list!4187 (BalanceConc!7444) List!11397)

(assert (=> b!1159799 (= lt!394084 (list!4187 (tokens!1573 thiss!10527)))))

(declare-fun rulesProduceEachTokenIndividually!708 (LexerInterface!1669 List!11398 BalanceConc!7444) Bool)

(assert (=> b!1159799 (= (rulesProduceEachTokenIndividually!708 Lexer!1667 (rules!9465 thiss!10527) (tokens!1573 thiss!10527)) (forall!2950 (tokens!1573 thiss!10527) lambda!47152))))

(declare-fun b!1159800 () Bool)

(declare-fun e!742325 () Bool)

(declare-fun e!742321 () Bool)

(assert (=> b!1159800 (= e!742325 e!742321)))

(declare-fun res!522497 () Bool)

(assert (=> b!1159800 (=> (not res!522497) (not e!742321))))

(declare-fun to!267 () Int)

(declare-fun lt!394088 () Int)

(assert (=> b!1159800 (= res!522497 (<= to!267 lt!394088))))

(declare-fun size!8935 (BalanceConc!7444) Int)

(assert (=> b!1159800 (= lt!394088 (size!8935 (tokens!1573 thiss!10527)))))

(declare-fun b!1159801 () Bool)

(assert (=> b!1159801 (= e!742321 e!742326)))

(declare-fun res!522495 () Bool)

(assert (=> b!1159801 (=> (not res!522495) (not e!742326))))

(declare-fun rulesInvariant!1543 (LexerInterface!1669 List!11398) Bool)

(assert (=> b!1159801 (= res!522495 (rulesInvariant!1543 Lexer!1667 (rules!9465 thiss!10527)))))

(declare-datatypes ((Unit!17372 0))(
  ( (Unit!17373) )
))
(declare-fun lt!394087 () Unit!17372)

(declare-fun lemmaInvariant!161 (PrintableTokens!634) Unit!17372)

(assert (=> b!1159801 (= lt!394087 (lemmaInvariant!161 thiss!10527))))

(declare-fun b!1159802 () Bool)

(declare-fun e!742327 () Bool)

(assert (=> b!1159802 (= e!742324 e!742327)))

(declare-fun res!522496 () Bool)

(assert (=> b!1159802 (=> res!522496 e!742327)))

(assert (=> b!1159802 (= res!522496 (> 0 lt!394088))))

(declare-fun separableTokens!111 (LexerInterface!1669 BalanceConc!7444 List!11398) Bool)

(declare-fun tokensListTwoByTwoPredicateSeparable!44 (LexerInterface!1669 BalanceConc!7444 Int List!11398) Bool)

(assert (=> b!1159802 (= (separableTokens!111 Lexer!1667 lt!394083 (rules!9465 thiss!10527)) (tokensListTwoByTwoPredicateSeparable!44 Lexer!1667 lt!394083 0 (rules!9465 thiss!10527)))))

(declare-fun b!1159803 () Bool)

(declare-fun e!742323 () Bool)

(assert (=> b!1159803 (= e!742323 (rulesProduceEachTokenIndividuallyList!537 Lexer!1667 (rules!9465 thiss!10527) (t!109562 lt!394084)))))

(declare-fun b!1159804 () Bool)

(assert (=> b!1159804 (= e!742320 e!742323)))

(declare-fun res!522489 () Bool)

(assert (=> b!1159804 (=> (not res!522489) (not e!742323))))

(declare-fun rulesProduceIndividualToken!706 (LexerInterface!1669 List!11398 Token!3610) Bool)

(assert (=> b!1159804 (= res!522489 (rulesProduceIndividualToken!706 Lexer!1667 (rules!9465 thiss!10527) (h!16774 lt!394084)))))

(declare-fun b!1159805 () Bool)

(declare-fun e!742328 () Bool)

(declare-fun lt!394089 () List!11397)

(assert (=> b!1159805 (= e!742328 (rulesProduceEachTokenIndividuallyList!537 Lexer!1667 (rules!9465 thiss!10527) (t!109562 lt!394089)))))

(declare-fun b!1159806 () Bool)

(declare-fun isEmpty!6966 (List!11398) Bool)

(assert (=> b!1159806 (= e!742327 (not (isEmpty!6966 (rules!9465 thiss!10527))))))

(declare-fun b!1159807 () Bool)

(assert (=> b!1159807 (= e!742322 e!742324)))

(declare-fun res!522492 () Bool)

(assert (=> b!1159807 (=> res!522492 e!742324)))

(declare-fun forall!2951 (List!11397 Int) Bool)

(assert (=> b!1159807 (= res!522492 (not (forall!2951 lt!394089 lambda!47152)))))

(declare-fun e!742319 () Bool)

(assert (=> b!1159807 e!742319))

(declare-fun res!522498 () Bool)

(assert (=> b!1159807 (=> (not res!522498) (not e!742319))))

(assert (=> b!1159807 (= res!522498 (forall!2951 lt!394089 lambda!47152))))

(declare-fun lt!394085 () Unit!17372)

(declare-fun lemmaForallSubseq!122 (List!11397 List!11397 Int) Unit!17372)

(assert (=> b!1159807 (= lt!394085 (lemmaForallSubseq!122 lt!394089 lt!394084 lambda!47152))))

(assert (=> b!1159807 (= lt!394089 (list!4187 lt!394083))))

(declare-fun from!787 () Int)

(declare-fun slice!243 (BalanceConc!7444 Int Int) BalanceConc!7444)

(assert (=> b!1159807 (= lt!394083 (slice!243 (tokens!1573 thiss!10527) from!787 to!267))))

(declare-fun subseq!230 (List!11397 List!11397) Bool)

(declare-fun slice!244 (List!11397 Int Int) List!11397)

(assert (=> b!1159807 (subseq!230 (slice!244 lt!394084 from!787 to!267) lt!394084)))

(declare-fun lt!394086 () Unit!17372)

(declare-fun lemmaSliceSubseq!71 (List!11397 Int Int) Unit!17372)

(assert (=> b!1159807 (= lt!394086 (lemmaSliceSubseq!71 lt!394084 from!787 to!267))))

(declare-fun res!522488 () Bool)

(assert (=> start!101504 (=> (not res!522488) (not e!742325))))

(assert (=> start!101504 (= res!522488 (and (<= 0 from!787) (<= from!787 to!267)))))

(assert (=> start!101504 e!742325))

(assert (=> start!101504 true))

(declare-fun inv!14949 (PrintableTokens!634) Bool)

(assert (=> start!101504 (and (inv!14949 thiss!10527) e!742317)))

(declare-fun e!742316 () Bool)

(declare-fun b!1159808 () Bool)

(assert (=> b!1159808 (= e!742319 (= (rulesProduceEachTokenIndividuallyList!537 Lexer!1667 (rules!9465 thiss!10527) lt!394089) e!742316))))

(declare-fun res!522491 () Bool)

(assert (=> b!1159808 (=> res!522491 e!742316)))

(assert (=> b!1159808 (= res!522491 (not (is-Cons!11373 lt!394089)))))

(declare-fun b!1159809 () Bool)

(assert (=> b!1159809 (= e!742316 e!742328)))

(declare-fun res!522494 () Bool)

(assert (=> b!1159809 (=> (not res!522494) (not e!742328))))

(assert (=> b!1159809 (= res!522494 (rulesProduceIndividualToken!706 Lexer!1667 (rules!9465 thiss!10527) (h!16774 lt!394089)))))

(declare-fun b!1159810 () Bool)

(declare-fun res!522490 () Bool)

(assert (=> b!1159810 (=> (not res!522490) (not e!742319))))

(assert (=> b!1159810 (= res!522490 (= (rulesProduceEachTokenIndividually!708 Lexer!1667 (rules!9465 thiss!10527) lt!394083) (forall!2950 lt!394083 lambda!47152)))))

(declare-fun b!1159811 () Bool)

(declare-fun tp!333665 () Bool)

(declare-fun inv!14950 (Conc!3711) Bool)

(assert (=> b!1159811 (= e!742318 (and (inv!14950 (c!194195 (tokens!1573 thiss!10527))) tp!333665))))

(assert (= (and start!101504 res!522488) b!1159800))

(assert (= (and b!1159800 res!522497) b!1159801))

(assert (= (and b!1159801 res!522495) b!1159799))

(assert (= (and b!1159799 (not res!522493)) b!1159804))

(assert (= (and b!1159804 res!522489) b!1159803))

(assert (= (and b!1159799 (not res!522499)) b!1159807))

(assert (= (and b!1159807 res!522498) b!1159810))

(assert (= (and b!1159810 res!522490) b!1159808))

(assert (= (and b!1159808 (not res!522491)) b!1159809))

(assert (= (and b!1159809 res!522494) b!1159805))

(assert (= (and b!1159807 (not res!522492)) b!1159798))

(assert (= (and b!1159798 (not res!522500)) b!1159802))

(assert (= (and b!1159802 (not res!522496)) b!1159806))

(assert (= b!1159797 b!1159811))

(assert (= start!101504 b!1159797))

(declare-fun m!1326347 () Bool)

(assert (=> b!1159809 m!1326347))

(declare-fun m!1326349 () Bool)

(assert (=> b!1159801 m!1326349))

(declare-fun m!1326351 () Bool)

(assert (=> b!1159801 m!1326351))

(declare-fun m!1326353 () Bool)

(assert (=> b!1159807 m!1326353))

(declare-fun m!1326355 () Bool)

(assert (=> b!1159807 m!1326355))

(declare-fun m!1326357 () Bool)

(assert (=> b!1159807 m!1326357))

(declare-fun m!1326359 () Bool)

(assert (=> b!1159807 m!1326359))

(assert (=> b!1159807 m!1326355))

(declare-fun m!1326361 () Bool)

(assert (=> b!1159807 m!1326361))

(declare-fun m!1326363 () Bool)

(assert (=> b!1159807 m!1326363))

(assert (=> b!1159807 m!1326353))

(declare-fun m!1326365 () Bool)

(assert (=> b!1159807 m!1326365))

(declare-fun m!1326367 () Bool)

(assert (=> b!1159799 m!1326367))

(declare-fun m!1326369 () Bool)

(assert (=> b!1159799 m!1326369))

(assert (=> b!1159799 m!1326367))

(declare-fun m!1326371 () Bool)

(assert (=> b!1159799 m!1326371))

(declare-fun m!1326373 () Bool)

(assert (=> b!1159799 m!1326373))

(declare-fun m!1326375 () Bool)

(assert (=> b!1159804 m!1326375))

(declare-fun m!1326377 () Bool)

(assert (=> b!1159811 m!1326377))

(declare-fun m!1326379 () Bool)

(assert (=> b!1159805 m!1326379))

(declare-fun m!1326381 () Bool)

(assert (=> b!1159800 m!1326381))

(declare-fun m!1326383 () Bool)

(assert (=> b!1159798 m!1326383))

(declare-fun m!1326385 () Bool)

(assert (=> b!1159806 m!1326385))

(declare-fun m!1326387 () Bool)

(assert (=> b!1159810 m!1326387))

(assert (=> b!1159810 m!1326383))

(declare-fun m!1326389 () Bool)

(assert (=> b!1159802 m!1326389))

(declare-fun m!1326391 () Bool)

(assert (=> b!1159802 m!1326391))

(declare-fun m!1326393 () Bool)

(assert (=> b!1159808 m!1326393))

(declare-fun m!1326395 () Bool)

(assert (=> b!1159797 m!1326395))

(declare-fun m!1326397 () Bool)

(assert (=> start!101504 m!1326397))

(declare-fun m!1326399 () Bool)

(assert (=> b!1159803 m!1326399))

(push 1)

(assert (not b!1159808))

(assert (not b!1159819))

(assert (not b!1159801))

(assert (not b!1159818))

(assert (not b!1159809))

(assert (not b!1159804))

(assert (not b!1159805))

(assert (not b!1159802))

(assert (not b!1159797))

(assert (not b!1159810))

(assert (not b!1159799))

(assert (not b!1159811))

(assert (not b!1159803))

(assert (not b!1159798))

(assert (not b!1159800))

(assert (not b!1159806))

(assert (not start!101504))

(assert (not b!1159807))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bs!283349 () Bool)

(declare-fun d!331236 () Bool)

(assert (= bs!283349 (and d!331236 b!1159799)))

(declare-fun lambda!47168 () Int)

(assert (=> bs!283349 (= lambda!47168 lambda!47152)))

(declare-fun b!1159889 () Bool)

(declare-fun e!742394 () Bool)

(assert (=> b!1159889 (= e!742394 true)))

(declare-fun b!1159888 () Bool)

(declare-fun e!742393 () Bool)

(assert (=> b!1159888 (= e!742393 e!742394)))

(declare-fun b!1159887 () Bool)

(declare-fun e!742392 () Bool)

(assert (=> b!1159887 (= e!742392 e!742393)))

(assert (=> d!331236 e!742392))

(assert (= b!1159888 b!1159889))

(assert (= b!1159887 b!1159888))

(assert (= (and d!331236 (is-Cons!11374 (rules!9465 thiss!10527))) b!1159887))

(declare-fun order!6963 () Int)

(declare-fun order!6965 () Int)

(declare-fun dynLambda!5011 (Int Int) Int)

(declare-fun dynLambda!5012 (Int Int) Int)

(assert (=> b!1159889 (< (dynLambda!5011 order!6963 (toValue!3075 (transformation!1974 (h!16775 (rules!9465 thiss!10527))))) (dynLambda!5012 order!6965 lambda!47168))))

(declare-fun order!6967 () Int)

(declare-fun dynLambda!5013 (Int Int) Int)

(assert (=> b!1159889 (< (dynLambda!5013 order!6967 (toChars!2934 (transformation!1974 (h!16775 (rules!9465 thiss!10527))))) (dynLambda!5012 order!6965 lambda!47168))))

(assert (=> d!331236 true))

(declare-fun lt!394113 () Bool)

(assert (=> d!331236 (= lt!394113 (forall!2951 (t!109562 lt!394084) lambda!47168))))

(declare-fun e!742385 () Bool)

(assert (=> d!331236 (= lt!394113 e!742385)))

(declare-fun res!522545 () Bool)

(assert (=> d!331236 (=> res!522545 e!742385)))

(assert (=> d!331236 (= res!522545 (not (is-Cons!11373 (t!109562 lt!394084))))))

(assert (=> d!331236 (not (isEmpty!6966 (rules!9465 thiss!10527)))))

(assert (=> d!331236 (= (rulesProduceEachTokenIndividuallyList!537 Lexer!1667 (rules!9465 thiss!10527) (t!109562 lt!394084)) lt!394113)))

(declare-fun b!1159877 () Bool)

(declare-fun e!742384 () Bool)

(assert (=> b!1159877 (= e!742385 e!742384)))

(declare-fun res!522544 () Bool)

(assert (=> b!1159877 (=> (not res!522544) (not e!742384))))

(assert (=> b!1159877 (= res!522544 (rulesProduceIndividualToken!706 Lexer!1667 (rules!9465 thiss!10527) (h!16774 (t!109562 lt!394084))))))

(declare-fun b!1159878 () Bool)

(assert (=> b!1159878 (= e!742384 (rulesProduceEachTokenIndividuallyList!537 Lexer!1667 (rules!9465 thiss!10527) (t!109562 (t!109562 lt!394084))))))

(assert (= (and d!331236 (not res!522545)) b!1159877))

(assert (= (and b!1159877 res!522544) b!1159878))

(declare-fun m!1326455 () Bool)

(assert (=> d!331236 m!1326455))

(assert (=> d!331236 m!1326385))

(declare-fun m!1326457 () Bool)

(assert (=> b!1159877 m!1326457))

(declare-fun m!1326459 () Bool)

(assert (=> b!1159878 m!1326459))

(assert (=> b!1159803 d!331236))

(declare-fun d!331240 () Bool)

(assert (=> d!331240 (= (separableTokens!111 Lexer!1667 lt!394083 (rules!9465 thiss!10527)) (tokensListTwoByTwoPredicateSeparable!44 Lexer!1667 lt!394083 0 (rules!9465 thiss!10527)))))

(declare-fun bs!283350 () Bool)

(assert (= bs!283350 d!331240))

(assert (=> bs!283350 m!1326391))

(assert (=> b!1159802 d!331240))

(declare-fun b!1159941 () Bool)

(declare-fun e!742433 () Bool)

(declare-fun lt!394217 () List!11397)

(assert (=> b!1159941 (= e!742433 (rulesProduceEachTokenIndividuallyList!537 Lexer!1667 (rules!9465 thiss!10527) lt!394217))))

(declare-fun b!1159942 () Bool)

(declare-fun res!522583 () Bool)

(assert (=> b!1159942 (=> (not res!522583) (not e!742433))))

(assert (=> b!1159942 (= res!522583 (not (isEmpty!6966 (rules!9465 thiss!10527))))))

(declare-fun b!1159943 () Bool)

(declare-fun e!742432 () Bool)

(assert (=> b!1159943 (= e!742432 (tokensListTwoByTwoPredicateSeparable!44 Lexer!1667 lt!394083 (+ 0 1) (rules!9465 thiss!10527)))))

(declare-fun b!1159945 () Bool)

(declare-fun res!522579 () Bool)

(assert (=> b!1159945 (=> (not res!522579) (not e!742433))))

(assert (=> b!1159945 (= res!522579 (rulesInvariant!1543 Lexer!1667 (rules!9465 thiss!10527)))))

(declare-fun b!1159946 () Bool)

(declare-fun e!742431 () Bool)

(assert (=> b!1159946 (= e!742431 e!742432)))

(declare-fun res!522581 () Bool)

(assert (=> b!1159946 (=> (not res!522581) (not e!742432))))

(declare-fun separableTokensPredicate!107 (LexerInterface!1669 Token!3610 Token!3610 List!11398) Bool)

(declare-fun apply!2415 (BalanceConc!7444 Int) Token!3610)

(assert (=> b!1159946 (= res!522581 (separableTokensPredicate!107 Lexer!1667 (apply!2415 lt!394083 0) (apply!2415 lt!394083 (+ 0 1)) (rules!9465 thiss!10527)))))

(declare-fun lt!394196 () Unit!17372)

(declare-fun Unit!17377 () Unit!17372)

(assert (=> b!1159946 (= lt!394196 Unit!17377)))

(declare-fun size!8938 (BalanceConc!7442) Int)

(declare-fun charsOf!1045 (Token!3610) BalanceConc!7442)

(assert (=> b!1159946 (> (size!8938 (charsOf!1045 (apply!2415 lt!394083 (+ 0 1)))) 0)))

(declare-fun lt!394211 () Unit!17372)

(declare-fun Unit!17378 () Unit!17372)

(assert (=> b!1159946 (= lt!394211 Unit!17378)))

(assert (=> b!1159946 (rulesProduceIndividualToken!706 Lexer!1667 (rules!9465 thiss!10527) (apply!2415 lt!394083 (+ 0 1)))))

(declare-fun lt!394199 () Unit!17372)

(declare-fun Unit!17379 () Unit!17372)

(assert (=> b!1159946 (= lt!394199 Unit!17379)))

(assert (=> b!1159946 (rulesProduceIndividualToken!706 Lexer!1667 (rules!9465 thiss!10527) (apply!2415 lt!394083 0))))

(declare-fun lt!394220 () Unit!17372)

(declare-fun lt!394192 () Unit!17372)

(assert (=> b!1159946 (= lt!394220 lt!394192)))

(declare-fun lt!394212 () Token!3610)

(assert (=> b!1159946 (rulesProduceIndividualToken!706 Lexer!1667 (rules!9465 thiss!10527) lt!394212)))

(declare-fun lt!394201 () List!11397)

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!266 (LexerInterface!1669 List!11398 List!11397 Token!3610) Unit!17372)

(assert (=> b!1159946 (= lt!394192 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!266 Lexer!1667 (rules!9465 thiss!10527) lt!394201 lt!394212))))

(assert (=> b!1159946 (= lt!394212 (apply!2415 lt!394083 (+ 0 1)))))

(assert (=> b!1159946 (= lt!394201 (list!4187 lt!394083))))

(declare-fun lt!394207 () Unit!17372)

(declare-fun lt!394208 () Unit!17372)

(assert (=> b!1159946 (= lt!394207 lt!394208)))

(declare-fun lt!394200 () Token!3610)

(assert (=> b!1159946 (rulesProduceIndividualToken!706 Lexer!1667 (rules!9465 thiss!10527) lt!394200)))

(declare-fun lt!394197 () List!11397)

(assert (=> b!1159946 (= lt!394208 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!266 Lexer!1667 (rules!9465 thiss!10527) lt!394197 lt!394200))))

(assert (=> b!1159946 (= lt!394200 (apply!2415 lt!394083 0))))

(assert (=> b!1159946 (= lt!394197 (list!4187 lt!394083))))

(declare-fun lt!394216 () Unit!17372)

(declare-fun lt!394194 () Unit!17372)

(assert (=> b!1159946 (= lt!394216 lt!394194)))

(declare-fun lt!394203 () List!11397)

(declare-fun lt!394198 () Int)

(declare-fun tail!1663 (List!11397) List!11397)

(declare-fun drop!458 (List!11397 Int) List!11397)

(assert (=> b!1159946 (= (tail!1663 (drop!458 lt!394203 lt!394198)) (drop!458 lt!394203 (+ lt!394198 1)))))

(declare-fun lemmaDropTail!336 (List!11397 Int) Unit!17372)

(assert (=> b!1159946 (= lt!394194 (lemmaDropTail!336 lt!394203 lt!394198))))

(assert (=> b!1159946 (= lt!394198 (+ 0 1))))

(assert (=> b!1159946 (= lt!394203 (list!4187 lt!394083))))

(declare-fun lt!394210 () Unit!17372)

(declare-fun lt!394213 () Unit!17372)

(assert (=> b!1159946 (= lt!394210 lt!394213)))

(declare-fun lt!394206 () List!11397)

(assert (=> b!1159946 (= (tail!1663 (drop!458 lt!394206 0)) (drop!458 lt!394206 (+ 0 1)))))

(assert (=> b!1159946 (= lt!394213 (lemmaDropTail!336 lt!394206 0))))

(assert (=> b!1159946 (= lt!394206 (list!4187 lt!394083))))

(declare-fun lt!394204 () Unit!17372)

(declare-fun lt!394202 () Unit!17372)

(assert (=> b!1159946 (= lt!394204 lt!394202)))

(declare-fun lt!394209 () List!11397)

(declare-fun lt!394218 () Int)

(declare-fun head!2079 (List!11397) Token!3610)

(declare-fun apply!2416 (List!11397 Int) Token!3610)

(assert (=> b!1159946 (= (head!2079 (drop!458 lt!394209 lt!394218)) (apply!2416 lt!394209 lt!394218))))

(declare-fun lemmaDropApply!348 (List!11397 Int) Unit!17372)

(assert (=> b!1159946 (= lt!394202 (lemmaDropApply!348 lt!394209 lt!394218))))

(assert (=> b!1159946 (= lt!394218 (+ 0 1))))

(assert (=> b!1159946 (= lt!394209 (list!4187 lt!394083))))

(declare-fun lt!394190 () Unit!17372)

(declare-fun lt!394205 () Unit!17372)

(assert (=> b!1159946 (= lt!394190 lt!394205)))

(declare-fun lt!394219 () List!11397)

(assert (=> b!1159946 (= (head!2079 (drop!458 lt!394219 0)) (apply!2416 lt!394219 0))))

(assert (=> b!1159946 (= lt!394205 (lemmaDropApply!348 lt!394219 0))))

(assert (=> b!1159946 (= lt!394219 (list!4187 lt!394083))))

(declare-fun b!1159947 () Bool)

(declare-fun e!742434 () Bool)

(declare-fun lt!394193 () List!11397)

(declare-fun size!8939 (List!11397) Int)

(assert (=> b!1159947 (= e!742434 (<= 0 (size!8939 lt!394193)))))

(declare-fun b!1159948 () Bool)

(declare-fun res!522584 () Bool)

(assert (=> b!1159948 (=> (not res!522584) (not e!742433))))

(declare-fun lt!394191 () List!11397)

(assert (=> b!1159948 (= res!522584 (subseq!230 lt!394191 lt!394217))))

(declare-fun d!331242 () Bool)

(declare-fun lt!394215 () Bool)

(declare-fun tokensListTwoByTwoPredicateSeparableList!83 (LexerInterface!1669 List!11397 List!11398) Bool)

(declare-fun dropList!307 (BalanceConc!7444 Int) List!11397)

(assert (=> d!331242 (= lt!394215 (tokensListTwoByTwoPredicateSeparableList!83 Lexer!1667 (dropList!307 lt!394083 0) (rules!9465 thiss!10527)))))

(declare-fun lt!394222 () Unit!17372)

(declare-fun lt!394214 () Unit!17372)

(assert (=> d!331242 (= lt!394222 lt!394214)))

(assert (=> d!331242 (rulesProduceEachTokenIndividuallyList!537 Lexer!1667 (rules!9465 thiss!10527) lt!394191)))

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForSubSeq!17 (LexerInterface!1669 List!11398 List!11397 List!11397) Unit!17372)

(assert (=> d!331242 (= lt!394214 (lemmaRulesProduceEachTokenIndividuallyThenForSubSeq!17 Lexer!1667 (rules!9465 thiss!10527) lt!394217 lt!394191))))

(assert (=> d!331242 e!742433))

(declare-fun res!522586 () Bool)

(assert (=> d!331242 (=> (not res!522586) (not e!742433))))

(assert (=> d!331242 (= res!522586 (is-Lexer!1667 Lexer!1667))))

(assert (=> d!331242 (= lt!394191 (dropList!307 lt!394083 0))))

(assert (=> d!331242 (= lt!394217 (list!4187 lt!394083))))

(declare-fun lt!394221 () Unit!17372)

(declare-fun lt!394195 () Unit!17372)

(assert (=> d!331242 (= lt!394221 lt!394195)))

(assert (=> d!331242 (subseq!230 (drop!458 lt!394193 0) lt!394193)))

(declare-fun lemmaDropSubSeq!17 (List!11397 Int) Unit!17372)

(assert (=> d!331242 (= lt!394195 (lemmaDropSubSeq!17 lt!394193 0))))

(assert (=> d!331242 e!742434))

(declare-fun res!522585 () Bool)

(assert (=> d!331242 (=> (not res!522585) (not e!742434))))

(assert (=> d!331242 (= res!522585 (>= 0 0))))

(assert (=> d!331242 (= lt!394193 (list!4187 lt!394083))))

(assert (=> d!331242 (= lt!394215 e!742431)))

(declare-fun res!522582 () Bool)

(assert (=> d!331242 (=> res!522582 e!742431)))

(assert (=> d!331242 (= res!522582 (not (< 0 (- (size!8935 lt!394083) 1))))))

(declare-fun e!742435 () Bool)

(assert (=> d!331242 e!742435))

(declare-fun res!522580 () Bool)

(assert (=> d!331242 (=> (not res!522580) (not e!742435))))

(assert (=> d!331242 (= res!522580 (>= 0 0))))

(assert (=> d!331242 (= (tokensListTwoByTwoPredicateSeparable!44 Lexer!1667 lt!394083 0 (rules!9465 thiss!10527)) lt!394215)))

(declare-fun b!1159944 () Bool)

(assert (=> b!1159944 (= e!742435 (<= 0 (size!8935 lt!394083)))))

(assert (= (and d!331242 res!522580) b!1159944))

(assert (= (and d!331242 (not res!522582)) b!1159946))

(assert (= (and b!1159946 res!522581) b!1159943))

(assert (= (and d!331242 res!522585) b!1159947))

(assert (= (and d!331242 res!522586) b!1159942))

(assert (= (and b!1159942 res!522583) b!1159945))

(assert (= (and b!1159945 res!522579) b!1159948))

(assert (= (and b!1159948 res!522584) b!1159941))

(declare-fun m!1326487 () Bool)

(assert (=> b!1159948 m!1326487))

(declare-fun m!1326489 () Bool)

(assert (=> b!1159941 m!1326489))

(declare-fun m!1326491 () Bool)

(assert (=> b!1159946 m!1326491))

(declare-fun m!1326493 () Bool)

(assert (=> b!1159946 m!1326493))

(assert (=> b!1159946 m!1326493))

(declare-fun m!1326495 () Bool)

(assert (=> b!1159946 m!1326495))

(declare-fun m!1326497 () Bool)

(assert (=> b!1159946 m!1326497))

(declare-fun m!1326499 () Bool)

(assert (=> b!1159946 m!1326499))

(declare-fun m!1326501 () Bool)

(assert (=> b!1159946 m!1326501))

(declare-fun m!1326503 () Bool)

(assert (=> b!1159946 m!1326503))

(declare-fun m!1326505 () Bool)

(assert (=> b!1159946 m!1326505))

(assert (=> b!1159946 m!1326497))

(assert (=> b!1159946 m!1326491))

(declare-fun m!1326507 () Bool)

(assert (=> b!1159946 m!1326507))

(declare-fun m!1326509 () Bool)

(assert (=> b!1159946 m!1326509))

(declare-fun m!1326511 () Bool)

(assert (=> b!1159946 m!1326511))

(declare-fun m!1326513 () Bool)

(assert (=> b!1159946 m!1326513))

(assert (=> b!1159946 m!1326357))

(declare-fun m!1326515 () Bool)

(assert (=> b!1159946 m!1326515))

(declare-fun m!1326517 () Bool)

(assert (=> b!1159946 m!1326517))

(declare-fun m!1326519 () Bool)

(assert (=> b!1159946 m!1326519))

(assert (=> b!1159946 m!1326509))

(declare-fun m!1326521 () Bool)

(assert (=> b!1159946 m!1326521))

(assert (=> b!1159946 m!1326491))

(declare-fun m!1326523 () Bool)

(assert (=> b!1159946 m!1326523))

(assert (=> b!1159946 m!1326497))

(assert (=> b!1159946 m!1326491))

(declare-fun m!1326525 () Bool)

(assert (=> b!1159946 m!1326525))

(declare-fun m!1326527 () Bool)

(assert (=> b!1159946 m!1326527))

(declare-fun m!1326529 () Bool)

(assert (=> b!1159946 m!1326529))

(declare-fun m!1326531 () Bool)

(assert (=> b!1159946 m!1326531))

(declare-fun m!1326533 () Bool)

(assert (=> b!1159946 m!1326533))

(declare-fun m!1326535 () Bool)

(assert (=> b!1159946 m!1326535))

(declare-fun m!1326537 () Bool)

(assert (=> b!1159946 m!1326537))

(assert (=> b!1159946 m!1326515))

(declare-fun m!1326539 () Bool)

(assert (=> b!1159946 m!1326539))

(declare-fun m!1326541 () Bool)

(assert (=> b!1159946 m!1326541))

(declare-fun m!1326543 () Bool)

(assert (=> b!1159946 m!1326543))

(assert (=> b!1159946 m!1326503))

(assert (=> b!1159946 m!1326541))

(declare-fun m!1326545 () Bool)

(assert (=> b!1159947 m!1326545))

(declare-fun m!1326547 () Bool)

(assert (=> d!331242 m!1326547))

(declare-fun m!1326549 () Bool)

(assert (=> d!331242 m!1326549))

(assert (=> d!331242 m!1326357))

(declare-fun m!1326551 () Bool)

(assert (=> d!331242 m!1326551))

(declare-fun m!1326553 () Bool)

(assert (=> d!331242 m!1326553))

(declare-fun m!1326555 () Bool)

(assert (=> d!331242 m!1326555))

(declare-fun m!1326557 () Bool)

(assert (=> d!331242 m!1326557))

(assert (=> d!331242 m!1326547))

(declare-fun m!1326559 () Bool)

(assert (=> d!331242 m!1326559))

(declare-fun m!1326561 () Bool)

(assert (=> d!331242 m!1326561))

(assert (=> d!331242 m!1326555))

(assert (=> b!1159944 m!1326561))

(assert (=> b!1159945 m!1326349))

(assert (=> b!1159942 m!1326385))

(declare-fun m!1326563 () Bool)

(assert (=> b!1159943 m!1326563))

(assert (=> b!1159802 d!331242))

(declare-fun d!331258 () Bool)

(declare-fun res!522589 () Bool)

(declare-fun e!742438 () Bool)

(assert (=> d!331258 (=> (not res!522589) (not e!742438))))

(declare-fun rulesValid!687 (LexerInterface!1669 List!11398) Bool)

(assert (=> d!331258 (= res!522589 (rulesValid!687 Lexer!1667 (rules!9465 thiss!10527)))))

(assert (=> d!331258 (= (rulesInvariant!1543 Lexer!1667 (rules!9465 thiss!10527)) e!742438)))

(declare-fun b!1159951 () Bool)

(declare-datatypes ((List!11403 0))(
  ( (Nil!11379) (Cons!11379 (h!16780 String!13790) (t!109595 List!11403)) )
))
(declare-fun noDuplicateTag!687 (LexerInterface!1669 List!11398 List!11403) Bool)

(assert (=> b!1159951 (= e!742438 (noDuplicateTag!687 Lexer!1667 (rules!9465 thiss!10527) Nil!11379))))

(assert (= (and d!331258 res!522589) b!1159951))

(declare-fun m!1326565 () Bool)

(assert (=> d!331258 m!1326565))

(declare-fun m!1326567 () Bool)

(assert (=> b!1159951 m!1326567))

(assert (=> b!1159801 d!331258))

(declare-fun d!331260 () Bool)

(declare-fun e!742447 () Bool)

(assert (=> d!331260 e!742447))

(declare-fun res!522603 () Bool)

(assert (=> d!331260 (=> (not res!522603) (not e!742447))))

(assert (=> d!331260 (= res!522603 (rulesInvariant!1543 Lexer!1667 (rules!9465 thiss!10527)))))

(declare-fun Unit!17380 () Unit!17372)

(assert (=> d!331260 (= (lemmaInvariant!161 thiss!10527) Unit!17380)))

(declare-fun b!1159965 () Bool)

(declare-fun res!522604 () Bool)

(assert (=> b!1159965 (=> (not res!522604) (not e!742447))))

(assert (=> b!1159965 (= res!522604 (rulesProduceEachTokenIndividually!708 Lexer!1667 (rules!9465 thiss!10527) (tokens!1573 thiss!10527)))))

(declare-fun b!1159966 () Bool)

(assert (=> b!1159966 (= e!742447 (separableTokens!111 Lexer!1667 (tokens!1573 thiss!10527) (rules!9465 thiss!10527)))))

(assert (= (and d!331260 res!522603) b!1159965))

(assert (= (and b!1159965 res!522604) b!1159966))

(assert (=> d!331260 m!1326349))

(assert (=> b!1159965 m!1326369))

(declare-fun m!1326587 () Bool)

(assert (=> b!1159966 m!1326587))

(assert (=> b!1159801 d!331260))

(declare-fun bs!283356 () Bool)

(declare-fun d!331264 () Bool)

(assert (= bs!283356 (and d!331264 b!1159799)))

(declare-fun lambda!47173 () Int)

(assert (=> bs!283356 (= lambda!47173 lambda!47152)))

(declare-fun bs!283357 () Bool)

(assert (= bs!283357 (and d!331264 d!331236)))

(assert (=> bs!283357 (= lambda!47173 lambda!47168)))

(declare-fun b!1159971 () Bool)

(declare-fun e!742452 () Bool)

(assert (=> b!1159971 (= e!742452 true)))

(declare-fun b!1159970 () Bool)

(declare-fun e!742451 () Bool)

(assert (=> b!1159970 (= e!742451 e!742452)))

(declare-fun b!1159969 () Bool)

(declare-fun e!742450 () Bool)

(assert (=> b!1159969 (= e!742450 e!742451)))

(assert (=> d!331264 e!742450))

(assert (= b!1159970 b!1159971))

(assert (= b!1159969 b!1159970))

(assert (= (and d!331264 (is-Cons!11374 (rules!9465 thiss!10527))) b!1159969))

(assert (=> b!1159971 (< (dynLambda!5011 order!6963 (toValue!3075 (transformation!1974 (h!16775 (rules!9465 thiss!10527))))) (dynLambda!5012 order!6965 lambda!47173))))

(assert (=> b!1159971 (< (dynLambda!5013 order!6967 (toChars!2934 (transformation!1974 (h!16775 (rules!9465 thiss!10527))))) (dynLambda!5012 order!6965 lambda!47173))))

(assert (=> d!331264 true))

(declare-fun lt!394229 () Bool)

(assert (=> d!331264 (= lt!394229 (forall!2951 (t!109562 lt!394089) lambda!47173))))

(declare-fun e!742449 () Bool)

(assert (=> d!331264 (= lt!394229 e!742449)))

(declare-fun res!522606 () Bool)

(assert (=> d!331264 (=> res!522606 e!742449)))

(assert (=> d!331264 (= res!522606 (not (is-Cons!11373 (t!109562 lt!394089))))))

(assert (=> d!331264 (not (isEmpty!6966 (rules!9465 thiss!10527)))))

(assert (=> d!331264 (= (rulesProduceEachTokenIndividuallyList!537 Lexer!1667 (rules!9465 thiss!10527) (t!109562 lt!394089)) lt!394229)))

(declare-fun b!1159967 () Bool)

(declare-fun e!742448 () Bool)

(assert (=> b!1159967 (= e!742449 e!742448)))

(declare-fun res!522605 () Bool)

(assert (=> b!1159967 (=> (not res!522605) (not e!742448))))

(assert (=> b!1159967 (= res!522605 (rulesProduceIndividualToken!706 Lexer!1667 (rules!9465 thiss!10527) (h!16774 (t!109562 lt!394089))))))

(declare-fun b!1159968 () Bool)

(assert (=> b!1159968 (= e!742448 (rulesProduceEachTokenIndividuallyList!537 Lexer!1667 (rules!9465 thiss!10527) (t!109562 (t!109562 lt!394089))))))

(assert (= (and d!331264 (not res!522606)) b!1159967))

(assert (= (and b!1159967 res!522605) b!1159968))

(declare-fun m!1326589 () Bool)

(assert (=> d!331264 m!1326589))

(assert (=> d!331264 m!1326385))

(declare-fun m!1326591 () Bool)

(assert (=> b!1159967 m!1326591))

(declare-fun m!1326593 () Bool)

(assert (=> b!1159968 m!1326593))

(assert (=> b!1159805 d!331264))

(declare-fun d!331266 () Bool)

(declare-fun lt!394253 () Bool)

(declare-fun e!742512 () Bool)

(assert (=> d!331266 (= lt!394253 e!742512)))

(declare-fun res!522658 () Bool)

(assert (=> d!331266 (=> (not res!522658) (not e!742512))))

(declare-datatypes ((tuple2!11996 0))(
  ( (tuple2!11997 (_1!6845 BalanceConc!7444) (_2!6845 BalanceConc!7442)) )
))
(declare-fun lex!691 (LexerInterface!1669 List!11398 BalanceConc!7442) tuple2!11996)

(declare-fun print!628 (LexerInterface!1669 BalanceConc!7444) BalanceConc!7442)

(declare-fun singletonSeq!646 (Token!3610) BalanceConc!7444)

(assert (=> d!331266 (= res!522658 (= (list!4187 (_1!6845 (lex!691 Lexer!1667 (rules!9465 thiss!10527) (print!628 Lexer!1667 (singletonSeq!646 (h!16774 lt!394084)))))) (list!4187 (singletonSeq!646 (h!16774 lt!394084)))))))

(declare-fun e!742513 () Bool)

(assert (=> d!331266 (= lt!394253 e!742513)))

(declare-fun res!522657 () Bool)

(assert (=> d!331266 (=> (not res!522657) (not e!742513))))

(declare-fun lt!394252 () tuple2!11996)

(assert (=> d!331266 (= res!522657 (= (size!8935 (_1!6845 lt!394252)) 1))))

(assert (=> d!331266 (= lt!394252 (lex!691 Lexer!1667 (rules!9465 thiss!10527) (print!628 Lexer!1667 (singletonSeq!646 (h!16774 lt!394084)))))))

(assert (=> d!331266 (not (isEmpty!6966 (rules!9465 thiss!10527)))))

(assert (=> d!331266 (= (rulesProduceIndividualToken!706 Lexer!1667 (rules!9465 thiss!10527) (h!16774 lt!394084)) lt!394253)))

(declare-fun b!1160040 () Bool)

(declare-fun res!522659 () Bool)

(assert (=> b!1160040 (=> (not res!522659) (not e!742513))))

(assert (=> b!1160040 (= res!522659 (= (apply!2415 (_1!6845 lt!394252) 0) (h!16774 lt!394084)))))

(declare-fun b!1160041 () Bool)

(declare-fun isEmpty!6968 (BalanceConc!7442) Bool)

(assert (=> b!1160041 (= e!742513 (isEmpty!6968 (_2!6845 lt!394252)))))

(declare-fun b!1160042 () Bool)

(assert (=> b!1160042 (= e!742512 (isEmpty!6968 (_2!6845 (lex!691 Lexer!1667 (rules!9465 thiss!10527) (print!628 Lexer!1667 (singletonSeq!646 (h!16774 lt!394084)))))))))

(assert (= (and d!331266 res!522657) b!1160040))

(assert (= (and b!1160040 res!522659) b!1160041))

(assert (= (and d!331266 res!522658) b!1160042))

(assert (=> d!331266 m!1326385))

(declare-fun m!1326671 () Bool)

(assert (=> d!331266 m!1326671))

(declare-fun m!1326673 () Bool)

(assert (=> d!331266 m!1326673))

(assert (=> d!331266 m!1326671))

(declare-fun m!1326675 () Bool)

(assert (=> d!331266 m!1326675))

(assert (=> d!331266 m!1326671))

(declare-fun m!1326677 () Bool)

(assert (=> d!331266 m!1326677))

(assert (=> d!331266 m!1326673))

(declare-fun m!1326679 () Bool)

(assert (=> d!331266 m!1326679))

(declare-fun m!1326681 () Bool)

(assert (=> d!331266 m!1326681))

(declare-fun m!1326683 () Bool)

(assert (=> b!1160040 m!1326683))

(declare-fun m!1326685 () Bool)

(assert (=> b!1160041 m!1326685))

(assert (=> b!1160042 m!1326671))

(assert (=> b!1160042 m!1326671))

(assert (=> b!1160042 m!1326673))

(assert (=> b!1160042 m!1326673))

(assert (=> b!1160042 m!1326679))

(declare-fun m!1326687 () Bool)

(assert (=> b!1160042 m!1326687))

(assert (=> b!1159804 d!331266))

(declare-fun bs!283381 () Bool)

(declare-fun d!331298 () Bool)

(assert (= bs!283381 (and d!331298 b!1159799)))

(declare-fun lambda!47182 () Int)

(assert (=> bs!283381 (= lambda!47182 lambda!47152)))

(declare-fun bs!283382 () Bool)

(assert (= bs!283382 (and d!331298 d!331236)))

(assert (=> bs!283382 (= lambda!47182 lambda!47168)))

(declare-fun bs!283383 () Bool)

(assert (= bs!283383 (and d!331298 d!331264)))

(assert (=> bs!283383 (= lambda!47182 lambda!47173)))

(declare-fun b!1160047 () Bool)

(declare-fun e!742518 () Bool)

(assert (=> b!1160047 (= e!742518 true)))

(declare-fun b!1160046 () Bool)

(declare-fun e!742517 () Bool)

(assert (=> b!1160046 (= e!742517 e!742518)))

(declare-fun b!1160045 () Bool)

(declare-fun e!742516 () Bool)

(assert (=> b!1160045 (= e!742516 e!742517)))

(assert (=> d!331298 e!742516))

(assert (= b!1160046 b!1160047))

(assert (= b!1160045 b!1160046))

(assert (= (and d!331298 (is-Cons!11374 (rules!9465 thiss!10527))) b!1160045))

(assert (=> b!1160047 (< (dynLambda!5011 order!6963 (toValue!3075 (transformation!1974 (h!16775 (rules!9465 thiss!10527))))) (dynLambda!5012 order!6965 lambda!47182))))

(assert (=> b!1160047 (< (dynLambda!5013 order!6967 (toChars!2934 (transformation!1974 (h!16775 (rules!9465 thiss!10527))))) (dynLambda!5012 order!6965 lambda!47182))))

(assert (=> d!331298 true))

(declare-fun lt!394254 () Bool)

(assert (=> d!331298 (= lt!394254 (forall!2951 lt!394089 lambda!47182))))

(declare-fun e!742515 () Bool)

(assert (=> d!331298 (= lt!394254 e!742515)))

(declare-fun res!522661 () Bool)

(assert (=> d!331298 (=> res!522661 e!742515)))

(assert (=> d!331298 (= res!522661 (not (is-Cons!11373 lt!394089)))))

(assert (=> d!331298 (not (isEmpty!6966 (rules!9465 thiss!10527)))))

(assert (=> d!331298 (= (rulesProduceEachTokenIndividuallyList!537 Lexer!1667 (rules!9465 thiss!10527) lt!394089) lt!394254)))

(declare-fun b!1160043 () Bool)

(declare-fun e!742514 () Bool)

(assert (=> b!1160043 (= e!742515 e!742514)))

(declare-fun res!522660 () Bool)

(assert (=> b!1160043 (=> (not res!522660) (not e!742514))))

(assert (=> b!1160043 (= res!522660 (rulesProduceIndividualToken!706 Lexer!1667 (rules!9465 thiss!10527) (h!16774 lt!394089)))))

(declare-fun b!1160044 () Bool)

(assert (=> b!1160044 (= e!742514 (rulesProduceEachTokenIndividuallyList!537 Lexer!1667 (rules!9465 thiss!10527) (t!109562 lt!394089)))))

(assert (= (and d!331298 (not res!522661)) b!1160043))

(assert (= (and b!1160043 res!522660) b!1160044))

(declare-fun m!1326689 () Bool)

(assert (=> d!331298 m!1326689))

(assert (=> d!331298 m!1326385))

(assert (=> b!1160043 m!1326347))

(assert (=> b!1160044 m!1326379))

(assert (=> b!1159808 d!331298))

(declare-fun d!331300 () Bool)

(declare-fun isBalanced!1046 (Conc!3711) Bool)

(assert (=> d!331300 (= (inv!14948 (tokens!1573 thiss!10527)) (isBalanced!1046 (c!194195 (tokens!1573 thiss!10527))))))

(declare-fun bs!283384 () Bool)

(assert (= bs!283384 d!331300))

(declare-fun m!1326691 () Bool)

(assert (=> bs!283384 m!1326691))

(assert (=> b!1159797 d!331300))

(declare-fun d!331302 () Bool)

(declare-fun res!522666 () Bool)

(declare-fun e!742523 () Bool)

(assert (=> d!331302 (=> res!522666 e!742523)))

(assert (=> d!331302 (= res!522666 (is-Nil!11373 lt!394089))))

(assert (=> d!331302 (= (forall!2951 lt!394089 lambda!47152) e!742523)))

(declare-fun b!1160052 () Bool)

(declare-fun e!742524 () Bool)

(assert (=> b!1160052 (= e!742523 e!742524)))

(declare-fun res!522667 () Bool)

(assert (=> b!1160052 (=> (not res!522667) (not e!742524))))

(declare-fun dynLambda!5014 (Int Token!3610) Bool)

(assert (=> b!1160052 (= res!522667 (dynLambda!5014 lambda!47152 (h!16774 lt!394089)))))

(declare-fun b!1160053 () Bool)

(assert (=> b!1160053 (= e!742524 (forall!2951 (t!109562 lt!394089) lambda!47152))))

(assert (= (and d!331302 (not res!522666)) b!1160052))

(assert (= (and b!1160052 res!522667) b!1160053))

(declare-fun b_lambda!34609 () Bool)

(assert (=> (not b_lambda!34609) (not b!1160052)))

(declare-fun m!1326693 () Bool)

(assert (=> b!1160052 m!1326693))

(declare-fun m!1326695 () Bool)

(assert (=> b!1160053 m!1326695))

(assert (=> b!1159807 d!331302))

(declare-fun d!331304 () Bool)

(assert (=> d!331304 (subseq!230 (slice!244 lt!394084 from!787 to!267) lt!394084)))

(declare-fun lt!394257 () Unit!17372)

(declare-fun choose!7448 (List!11397 Int Int) Unit!17372)

(assert (=> d!331304 (= lt!394257 (choose!7448 lt!394084 from!787 to!267))))

(declare-fun e!742527 () Bool)

(assert (=> d!331304 e!742527))

(declare-fun res!522670 () Bool)

(assert (=> d!331304 (=> (not res!522670) (not e!742527))))

(assert (=> d!331304 (= res!522670 (and (>= from!787 0) (>= to!267 from!787)))))

(assert (=> d!331304 (= (lemmaSliceSubseq!71 lt!394084 from!787 to!267) lt!394257)))

(declare-fun b!1160056 () Bool)

(assert (=> b!1160056 (= e!742527 (<= to!267 (size!8939 lt!394084)))))

(assert (= (and d!331304 res!522670) b!1160056))

(assert (=> d!331304 m!1326353))

(assert (=> d!331304 m!1326353))

(assert (=> d!331304 m!1326365))

(declare-fun m!1326697 () Bool)

(assert (=> d!331304 m!1326697))

(declare-fun m!1326699 () Bool)

(assert (=> b!1160056 m!1326699))

(assert (=> b!1159807 d!331304))

(declare-fun d!331306 () Bool)

(declare-fun e!742532 () Bool)

(assert (=> d!331306 e!742532))

(declare-fun res!522678 () Bool)

(assert (=> d!331306 (=> (not res!522678) (not e!742532))))

(declare-fun slice!247 (Conc!3711 Int Int) Conc!3711)

(assert (=> d!331306 (= res!522678 (isBalanced!1046 (slice!247 (c!194195 (tokens!1573 thiss!10527)) from!787 to!267)))))

(declare-fun lt!394260 () BalanceConc!7444)

(assert (=> d!331306 (= lt!394260 (BalanceConc!7445 (slice!247 (c!194195 (tokens!1573 thiss!10527)) from!787 to!267)))))

(declare-fun e!742533 () Bool)

(assert (=> d!331306 e!742533))

(declare-fun res!522677 () Bool)

(assert (=> d!331306 (=> (not res!522677) (not e!742533))))

(assert (=> d!331306 (= res!522677 (and (<= 0 from!787) (<= from!787 to!267)))))

(assert (=> d!331306 (= (slice!243 (tokens!1573 thiss!10527) from!787 to!267) lt!394260)))

(declare-fun b!1160063 () Bool)

(declare-fun res!522679 () Bool)

(assert (=> b!1160063 (=> (not res!522679) (not e!742533))))

(assert (=> b!1160063 (= res!522679 (<= to!267 (size!8935 (tokens!1573 thiss!10527))))))

(declare-fun b!1160064 () Bool)

(assert (=> b!1160064 (= e!742533 (isBalanced!1046 (c!194195 (tokens!1573 thiss!10527))))))

(declare-fun b!1160065 () Bool)

(assert (=> b!1160065 (= e!742532 (= (list!4187 lt!394260) (slice!244 (list!4187 (tokens!1573 thiss!10527)) from!787 to!267)))))

(assert (= (and d!331306 res!522677) b!1160063))

(assert (= (and b!1160063 res!522679) b!1160064))

(assert (= (and d!331306 res!522678) b!1160065))

(declare-fun m!1326701 () Bool)

(assert (=> d!331306 m!1326701))

(assert (=> d!331306 m!1326701))

(declare-fun m!1326703 () Bool)

(assert (=> d!331306 m!1326703))

(assert (=> b!1160063 m!1326381))

(assert (=> b!1160064 m!1326691))

(declare-fun m!1326705 () Bool)

(assert (=> b!1160065 m!1326705))

(assert (=> b!1160065 m!1326371))

(assert (=> b!1160065 m!1326371))

(declare-fun m!1326707 () Bool)

(assert (=> b!1160065 m!1326707))

(assert (=> b!1159807 d!331306))

(declare-fun b!1160075 () Bool)

(declare-fun e!742545 () Bool)

(declare-fun e!742542 () Bool)

(assert (=> b!1160075 (= e!742545 e!742542)))

(declare-fun res!522690 () Bool)

(assert (=> b!1160075 (=> res!522690 e!742542)))

(declare-fun e!742543 () Bool)

(assert (=> b!1160075 (= res!522690 e!742543)))

(declare-fun res!522691 () Bool)

(assert (=> b!1160075 (=> (not res!522691) (not e!742543))))

(assert (=> b!1160075 (= res!522691 (= (h!16774 (slice!244 lt!394084 from!787 to!267)) (h!16774 lt!394084)))))

(declare-fun b!1160074 () Bool)

(declare-fun e!742544 () Bool)

(assert (=> b!1160074 (= e!742544 e!742545)))

(declare-fun res!522688 () Bool)

(assert (=> b!1160074 (=> (not res!522688) (not e!742545))))

(assert (=> b!1160074 (= res!522688 (is-Cons!11373 lt!394084))))

(declare-fun b!1160077 () Bool)

(assert (=> b!1160077 (= e!742542 (subseq!230 (slice!244 lt!394084 from!787 to!267) (t!109562 lt!394084)))))

(declare-fun b!1160076 () Bool)

(assert (=> b!1160076 (= e!742543 (subseq!230 (t!109562 (slice!244 lt!394084 from!787 to!267)) (t!109562 lt!394084)))))

(declare-fun d!331308 () Bool)

(declare-fun res!522689 () Bool)

(assert (=> d!331308 (=> res!522689 e!742544)))

(assert (=> d!331308 (= res!522689 (is-Nil!11373 (slice!244 lt!394084 from!787 to!267)))))

(assert (=> d!331308 (= (subseq!230 (slice!244 lt!394084 from!787 to!267) lt!394084) e!742544)))

(assert (= (and d!331308 (not res!522689)) b!1160074))

(assert (= (and b!1160074 res!522688) b!1160075))

(assert (= (and b!1160075 res!522691) b!1160076))

(assert (= (and b!1160075 (not res!522690)) b!1160077))

(assert (=> b!1160077 m!1326353))

(declare-fun m!1326709 () Bool)

(assert (=> b!1160077 m!1326709))

(declare-fun m!1326711 () Bool)

(assert (=> b!1160076 m!1326711))

(assert (=> b!1159807 d!331308))

(declare-fun d!331310 () Bool)

(assert (=> d!331310 (forall!2951 lt!394089 lambda!47152)))

(declare-fun lt!394263 () Unit!17372)

(declare-fun choose!7449 (List!11397 List!11397 Int) Unit!17372)

(assert (=> d!331310 (= lt!394263 (choose!7449 lt!394089 lt!394084 lambda!47152))))

(assert (=> d!331310 (forall!2951 lt!394084 lambda!47152)))

(assert (=> d!331310 (= (lemmaForallSubseq!122 lt!394089 lt!394084 lambda!47152) lt!394263)))

(declare-fun bs!283385 () Bool)

(assert (= bs!283385 d!331310))

(assert (=> bs!283385 m!1326355))

(declare-fun m!1326713 () Bool)

(assert (=> bs!283385 m!1326713))

(declare-fun m!1326715 () Bool)

(assert (=> bs!283385 m!1326715))

(assert (=> b!1159807 d!331310))

(declare-fun d!331312 () Bool)

(declare-fun take!56 (List!11397 Int) List!11397)

(assert (=> d!331312 (= (slice!244 lt!394084 from!787 to!267) (take!56 (drop!458 lt!394084 from!787) (- to!267 from!787)))))

(declare-fun bs!283386 () Bool)

(assert (= bs!283386 d!331312))

(declare-fun m!1326717 () Bool)

(assert (=> bs!283386 m!1326717))

(assert (=> bs!283386 m!1326717))

(declare-fun m!1326719 () Bool)

(assert (=> bs!283386 m!1326719))

(assert (=> b!1159807 d!331312))

(declare-fun d!331314 () Bool)

(declare-fun list!4189 (Conc!3711) List!11397)

(assert (=> d!331314 (= (list!4187 lt!394083) (list!4189 (c!194195 lt!394083)))))

(declare-fun bs!283387 () Bool)

(assert (= bs!283387 d!331314))

(declare-fun m!1326721 () Bool)

(assert (=> bs!283387 m!1326721))

(assert (=> b!1159807 d!331314))

(declare-fun d!331316 () Bool)

(assert (=> d!331316 (= (isEmpty!6966 (rules!9465 thiss!10527)) (is-Nil!11374 (rules!9465 thiss!10527)))))

(assert (=> b!1159806 d!331316))

(declare-fun d!331318 () Bool)

(declare-fun lt!394266 () Int)

(assert (=> d!331318 (= lt!394266 (size!8939 (list!4187 (tokens!1573 thiss!10527))))))

(declare-fun size!8940 (Conc!3711) Int)

(assert (=> d!331318 (= lt!394266 (size!8940 (c!194195 (tokens!1573 thiss!10527))))))

(assert (=> d!331318 (= (size!8935 (tokens!1573 thiss!10527)) lt!394266)))

(declare-fun bs!283388 () Bool)

(assert (= bs!283388 d!331318))

(assert (=> bs!283388 m!1326371))

(assert (=> bs!283388 m!1326371))

(declare-fun m!1326723 () Bool)

(assert (=> bs!283388 m!1326723))

(declare-fun m!1326725 () Bool)

(assert (=> bs!283388 m!1326725))

(assert (=> b!1159800 d!331318))

(declare-fun d!331320 () Bool)

(declare-fun c!194206 () Bool)

(assert (=> d!331320 (= c!194206 (is-Node!3711 (c!194195 (tokens!1573 thiss!10527))))))

(declare-fun e!742550 () Bool)

(assert (=> d!331320 (= (inv!14950 (c!194195 (tokens!1573 thiss!10527))) e!742550)))

(declare-fun b!1160084 () Bool)

(declare-fun inv!14954 (Conc!3711) Bool)

(assert (=> b!1160084 (= e!742550 (inv!14954 (c!194195 (tokens!1573 thiss!10527))))))

(declare-fun b!1160085 () Bool)

(declare-fun e!742551 () Bool)

(assert (=> b!1160085 (= e!742550 e!742551)))

(declare-fun res!522694 () Bool)

(assert (=> b!1160085 (= res!522694 (not (is-Leaf!5709 (c!194195 (tokens!1573 thiss!10527)))))))

(assert (=> b!1160085 (=> res!522694 e!742551)))

(declare-fun b!1160086 () Bool)

(declare-fun inv!14955 (Conc!3711) Bool)

(assert (=> b!1160086 (= e!742551 (inv!14955 (c!194195 (tokens!1573 thiss!10527))))))

(assert (= (and d!331320 c!194206) b!1160084))

(assert (= (and d!331320 (not c!194206)) b!1160085))

(assert (= (and b!1160085 (not res!522694)) b!1160086))

(declare-fun m!1326727 () Bool)

(assert (=> b!1160084 m!1326727))

(declare-fun m!1326729 () Bool)

(assert (=> b!1160086 m!1326729))

(assert (=> b!1159811 d!331320))

(declare-fun d!331322 () Bool)

(declare-fun res!522701 () Bool)

(declare-fun e!742554 () Bool)

(assert (=> d!331322 (=> (not res!522701) (not e!742554))))

(assert (=> d!331322 (= res!522701 (not (isEmpty!6966 (rules!9465 thiss!10527))))))

(assert (=> d!331322 (= (inv!14949 thiss!10527) e!742554)))

(declare-fun b!1160093 () Bool)

(declare-fun res!522702 () Bool)

(assert (=> b!1160093 (=> (not res!522702) (not e!742554))))

(assert (=> b!1160093 (= res!522702 (rulesInvariant!1543 Lexer!1667 (rules!9465 thiss!10527)))))

(declare-fun b!1160094 () Bool)

(declare-fun res!522703 () Bool)

(assert (=> b!1160094 (=> (not res!522703) (not e!742554))))

(assert (=> b!1160094 (= res!522703 (rulesProduceEachTokenIndividually!708 Lexer!1667 (rules!9465 thiss!10527) (tokens!1573 thiss!10527)))))

(declare-fun b!1160095 () Bool)

(assert (=> b!1160095 (= e!742554 (separableTokens!111 Lexer!1667 (tokens!1573 thiss!10527) (rules!9465 thiss!10527)))))

(assert (= (and d!331322 res!522701) b!1160093))

(assert (= (and b!1160093 res!522702) b!1160094))

(assert (= (and b!1160094 res!522703) b!1160095))

(assert (=> d!331322 m!1326385))

(assert (=> b!1160093 m!1326349))

(assert (=> b!1160094 m!1326369))

(assert (=> b!1160095 m!1326587))

(assert (=> start!101504 d!331322))

(declare-fun bs!283390 () Bool)

(declare-fun d!331326 () Bool)

(assert (= bs!283390 (and d!331326 b!1159799)))

(declare-fun lambda!47187 () Int)

(assert (=> bs!283390 (= lambda!47187 lambda!47152)))

(declare-fun bs!283391 () Bool)

(assert (= bs!283391 (and d!331326 d!331236)))

(assert (=> bs!283391 (= lambda!47187 lambda!47168)))

(declare-fun bs!283392 () Bool)

(assert (= bs!283392 (and d!331326 d!331264)))

(assert (=> bs!283392 (= lambda!47187 lambda!47173)))

(declare-fun bs!283393 () Bool)

(assert (= bs!283393 (and d!331326 d!331298)))

(assert (=> bs!283393 (= lambda!47187 lambda!47182)))

(declare-fun b!1160101 () Bool)

(declare-fun e!742560 () Bool)

(assert (=> b!1160101 (= e!742560 true)))

(declare-fun b!1160100 () Bool)

(declare-fun e!742559 () Bool)

(assert (=> b!1160100 (= e!742559 e!742560)))

(declare-fun b!1160099 () Bool)

(declare-fun e!742558 () Bool)

(assert (=> b!1160099 (= e!742558 e!742559)))

(assert (=> d!331326 e!742558))

(assert (= b!1160100 b!1160101))

(assert (= b!1160099 b!1160100))

(assert (= (and d!331326 (is-Cons!11374 (rules!9465 thiss!10527))) b!1160099))

(assert (=> b!1160101 (< (dynLambda!5011 order!6963 (toValue!3075 (transformation!1974 (h!16775 (rules!9465 thiss!10527))))) (dynLambda!5012 order!6965 lambda!47187))))

(assert (=> b!1160101 (< (dynLambda!5013 order!6967 (toChars!2934 (transformation!1974 (h!16775 (rules!9465 thiss!10527))))) (dynLambda!5012 order!6965 lambda!47187))))

(assert (=> d!331326 true))

(declare-fun e!742557 () Bool)

(assert (=> d!331326 e!742557))

(declare-fun res!522706 () Bool)

(assert (=> d!331326 (=> (not res!522706) (not e!742557))))

(declare-fun lt!394269 () Bool)

(assert (=> d!331326 (= res!522706 (= lt!394269 (forall!2951 (list!4187 lt!394083) lambda!47187)))))

(assert (=> d!331326 (= lt!394269 (forall!2950 lt!394083 lambda!47187))))

(assert (=> d!331326 (not (isEmpty!6966 (rules!9465 thiss!10527)))))

(assert (=> d!331326 (= (rulesProduceEachTokenIndividually!708 Lexer!1667 (rules!9465 thiss!10527) lt!394083) lt!394269)))

(declare-fun b!1160098 () Bool)

(assert (=> b!1160098 (= e!742557 (= lt!394269 (rulesProduceEachTokenIndividuallyList!537 Lexer!1667 (rules!9465 thiss!10527) (list!4187 lt!394083))))))

(assert (= (and d!331326 res!522706) b!1160098))

(assert (=> d!331326 m!1326357))

(assert (=> d!331326 m!1326357))

(declare-fun m!1326731 () Bool)

(assert (=> d!331326 m!1326731))

(declare-fun m!1326733 () Bool)

(assert (=> d!331326 m!1326733))

(assert (=> d!331326 m!1326385))

(assert (=> b!1160098 m!1326357))

(assert (=> b!1160098 m!1326357))

(declare-fun m!1326735 () Bool)

(assert (=> b!1160098 m!1326735))

(assert (=> b!1159810 d!331326))

(declare-fun d!331328 () Bool)

(declare-fun lt!394272 () Bool)

(assert (=> d!331328 (= lt!394272 (forall!2951 (list!4187 lt!394083) lambda!47152))))

(declare-fun forall!2954 (Conc!3711 Int) Bool)

(assert (=> d!331328 (= lt!394272 (forall!2954 (c!194195 lt!394083) lambda!47152))))

(assert (=> d!331328 (= (forall!2950 lt!394083 lambda!47152) lt!394272)))

(declare-fun bs!283394 () Bool)

(assert (= bs!283394 d!331328))

(assert (=> bs!283394 m!1326357))

(assert (=> bs!283394 m!1326357))

(declare-fun m!1326737 () Bool)

(assert (=> bs!283394 m!1326737))

(declare-fun m!1326739 () Bool)

(assert (=> bs!283394 m!1326739))

(assert (=> b!1159810 d!331328))

(declare-fun bs!283395 () Bool)

(declare-fun d!331330 () Bool)

(assert (= bs!283395 (and d!331330 d!331264)))

(declare-fun lambda!47188 () Int)

(assert (=> bs!283395 (= lambda!47188 lambda!47173)))

(declare-fun bs!283396 () Bool)

(assert (= bs!283396 (and d!331330 d!331326)))

(assert (=> bs!283396 (= lambda!47188 lambda!47187)))

(declare-fun bs!283397 () Bool)

(assert (= bs!283397 (and d!331330 d!331236)))

(assert (=> bs!283397 (= lambda!47188 lambda!47168)))

(declare-fun bs!283398 () Bool)

(assert (= bs!283398 (and d!331330 b!1159799)))

(assert (=> bs!283398 (= lambda!47188 lambda!47152)))

(declare-fun bs!283399 () Bool)

(assert (= bs!283399 (and d!331330 d!331298)))

(assert (=> bs!283399 (= lambda!47188 lambda!47182)))

(declare-fun b!1160105 () Bool)

(declare-fun e!742564 () Bool)

(assert (=> b!1160105 (= e!742564 true)))

(declare-fun b!1160104 () Bool)

(declare-fun e!742563 () Bool)

(assert (=> b!1160104 (= e!742563 e!742564)))

(declare-fun b!1160103 () Bool)

(declare-fun e!742562 () Bool)

(assert (=> b!1160103 (= e!742562 e!742563)))

(assert (=> d!331330 e!742562))

(assert (= b!1160104 b!1160105))

(assert (= b!1160103 b!1160104))

(assert (= (and d!331330 (is-Cons!11374 (rules!9465 thiss!10527))) b!1160103))

(assert (=> b!1160105 (< (dynLambda!5011 order!6963 (toValue!3075 (transformation!1974 (h!16775 (rules!9465 thiss!10527))))) (dynLambda!5012 order!6965 lambda!47188))))

(assert (=> b!1160105 (< (dynLambda!5013 order!6967 (toChars!2934 (transformation!1974 (h!16775 (rules!9465 thiss!10527))))) (dynLambda!5012 order!6965 lambda!47188))))

(assert (=> d!331330 true))

(declare-fun e!742561 () Bool)

(assert (=> d!331330 e!742561))

(declare-fun res!522707 () Bool)

(assert (=> d!331330 (=> (not res!522707) (not e!742561))))

(declare-fun lt!394273 () Bool)

(assert (=> d!331330 (= res!522707 (= lt!394273 (forall!2951 (list!4187 (tokens!1573 thiss!10527)) lambda!47188)))))

(assert (=> d!331330 (= lt!394273 (forall!2950 (tokens!1573 thiss!10527) lambda!47188))))

(assert (=> d!331330 (not (isEmpty!6966 (rules!9465 thiss!10527)))))

(assert (=> d!331330 (= (rulesProduceEachTokenIndividually!708 Lexer!1667 (rules!9465 thiss!10527) (tokens!1573 thiss!10527)) lt!394273)))

(declare-fun b!1160102 () Bool)

(assert (=> b!1160102 (= e!742561 (= lt!394273 (rulesProduceEachTokenIndividuallyList!537 Lexer!1667 (rules!9465 thiss!10527) (list!4187 (tokens!1573 thiss!10527)))))))

(assert (= (and d!331330 res!522707) b!1160102))

(assert (=> d!331330 m!1326371))

(assert (=> d!331330 m!1326371))

(declare-fun m!1326741 () Bool)

(assert (=> d!331330 m!1326741))

(declare-fun m!1326743 () Bool)

(assert (=> d!331330 m!1326743))

(assert (=> d!331330 m!1326385))

(assert (=> b!1160102 m!1326371))

(assert (=> b!1160102 m!1326371))

(declare-fun m!1326745 () Bool)

(assert (=> b!1160102 m!1326745))

(assert (=> b!1159799 d!331330))

(declare-fun d!331332 () Bool)

(assert (=> d!331332 (= (list!4187 (tokens!1573 thiss!10527)) (list!4189 (c!194195 (tokens!1573 thiss!10527))))))

(declare-fun bs!283400 () Bool)

(assert (= bs!283400 d!331332))

(declare-fun m!1326747 () Bool)

(assert (=> bs!283400 m!1326747))

(assert (=> b!1159799 d!331332))

(declare-fun bs!283401 () Bool)

(declare-fun d!331334 () Bool)

(assert (= bs!283401 (and d!331334 d!331264)))

(declare-fun lambda!47189 () Int)

(assert (=> bs!283401 (= lambda!47189 lambda!47173)))

(declare-fun bs!283402 () Bool)

(assert (= bs!283402 (and d!331334 d!331326)))

(assert (=> bs!283402 (= lambda!47189 lambda!47187)))

(declare-fun bs!283403 () Bool)

(assert (= bs!283403 (and d!331334 d!331330)))

(assert (=> bs!283403 (= lambda!47189 lambda!47188)))

(declare-fun bs!283404 () Bool)

(assert (= bs!283404 (and d!331334 d!331236)))

(assert (=> bs!283404 (= lambda!47189 lambda!47168)))

(declare-fun bs!283405 () Bool)

(assert (= bs!283405 (and d!331334 b!1159799)))

(assert (=> bs!283405 (= lambda!47189 lambda!47152)))

(declare-fun bs!283406 () Bool)

(assert (= bs!283406 (and d!331334 d!331298)))

(assert (=> bs!283406 (= lambda!47189 lambda!47182)))

(declare-fun b!1160110 () Bool)

(declare-fun e!742569 () Bool)

(assert (=> b!1160110 (= e!742569 true)))

(declare-fun b!1160109 () Bool)

(declare-fun e!742568 () Bool)

(assert (=> b!1160109 (= e!742568 e!742569)))

(declare-fun b!1160108 () Bool)

(declare-fun e!742567 () Bool)

(assert (=> b!1160108 (= e!742567 e!742568)))

(assert (=> d!331334 e!742567))

(assert (= b!1160109 b!1160110))

(assert (= b!1160108 b!1160109))

(assert (= (and d!331334 (is-Cons!11374 (rules!9465 thiss!10527))) b!1160108))

(assert (=> b!1160110 (< (dynLambda!5011 order!6963 (toValue!3075 (transformation!1974 (h!16775 (rules!9465 thiss!10527))))) (dynLambda!5012 order!6965 lambda!47189))))

(assert (=> b!1160110 (< (dynLambda!5013 order!6967 (toChars!2934 (transformation!1974 (h!16775 (rules!9465 thiss!10527))))) (dynLambda!5012 order!6965 lambda!47189))))

(assert (=> d!331334 true))

(declare-fun lt!394274 () Bool)

(assert (=> d!331334 (= lt!394274 (forall!2951 lt!394084 lambda!47189))))

(declare-fun e!742566 () Bool)

(assert (=> d!331334 (= lt!394274 e!742566)))

(declare-fun res!522709 () Bool)

(assert (=> d!331334 (=> res!522709 e!742566)))

(assert (=> d!331334 (= res!522709 (not (is-Cons!11373 lt!394084)))))

(assert (=> d!331334 (not (isEmpty!6966 (rules!9465 thiss!10527)))))

(assert (=> d!331334 (= (rulesProduceEachTokenIndividuallyList!537 Lexer!1667 (rules!9465 thiss!10527) lt!394084) lt!394274)))

(declare-fun b!1160106 () Bool)

(declare-fun e!742565 () Bool)

(assert (=> b!1160106 (= e!742566 e!742565)))

(declare-fun res!522708 () Bool)

(assert (=> b!1160106 (=> (not res!522708) (not e!742565))))

(assert (=> b!1160106 (= res!522708 (rulesProduceIndividualToken!706 Lexer!1667 (rules!9465 thiss!10527) (h!16774 lt!394084)))))

(declare-fun b!1160107 () Bool)

(assert (=> b!1160107 (= e!742565 (rulesProduceEachTokenIndividuallyList!537 Lexer!1667 (rules!9465 thiss!10527) (t!109562 lt!394084)))))

(assert (= (and d!331334 (not res!522709)) b!1160106))

(assert (= (and b!1160106 res!522708) b!1160107))

(declare-fun m!1326749 () Bool)

(assert (=> d!331334 m!1326749))

(assert (=> d!331334 m!1326385))

(assert (=> b!1160106 m!1326375))

(assert (=> b!1160107 m!1326399))

(assert (=> b!1159799 d!331334))

(declare-fun d!331336 () Bool)

(declare-fun lt!394275 () Bool)

(assert (=> d!331336 (= lt!394275 (forall!2951 (list!4187 (tokens!1573 thiss!10527)) lambda!47152))))

(assert (=> d!331336 (= lt!394275 (forall!2954 (c!194195 (tokens!1573 thiss!10527)) lambda!47152))))

(assert (=> d!331336 (= (forall!2950 (tokens!1573 thiss!10527) lambda!47152) lt!394275)))

(declare-fun bs!283407 () Bool)

(assert (= bs!283407 d!331336))

(assert (=> bs!283407 m!1326371))

(assert (=> bs!283407 m!1326371))

(declare-fun m!1326751 () Bool)

(assert (=> bs!283407 m!1326751))

(declare-fun m!1326753 () Bool)

(assert (=> bs!283407 m!1326753))

(assert (=> b!1159799 d!331336))

(assert (=> b!1159798 d!331328))

(declare-fun d!331338 () Bool)

(declare-fun lt!394277 () Bool)

(declare-fun e!742570 () Bool)

(assert (=> d!331338 (= lt!394277 e!742570)))

(declare-fun res!522711 () Bool)

(assert (=> d!331338 (=> (not res!522711) (not e!742570))))

(assert (=> d!331338 (= res!522711 (= (list!4187 (_1!6845 (lex!691 Lexer!1667 (rules!9465 thiss!10527) (print!628 Lexer!1667 (singletonSeq!646 (h!16774 lt!394089)))))) (list!4187 (singletonSeq!646 (h!16774 lt!394089)))))))

(declare-fun e!742571 () Bool)

(assert (=> d!331338 (= lt!394277 e!742571)))

(declare-fun res!522710 () Bool)

(assert (=> d!331338 (=> (not res!522710) (not e!742571))))

(declare-fun lt!394276 () tuple2!11996)

(assert (=> d!331338 (= res!522710 (= (size!8935 (_1!6845 lt!394276)) 1))))

(assert (=> d!331338 (= lt!394276 (lex!691 Lexer!1667 (rules!9465 thiss!10527) (print!628 Lexer!1667 (singletonSeq!646 (h!16774 lt!394089)))))))

(assert (=> d!331338 (not (isEmpty!6966 (rules!9465 thiss!10527)))))

(assert (=> d!331338 (= (rulesProduceIndividualToken!706 Lexer!1667 (rules!9465 thiss!10527) (h!16774 lt!394089)) lt!394277)))

(declare-fun b!1160111 () Bool)

(declare-fun res!522712 () Bool)

(assert (=> b!1160111 (=> (not res!522712) (not e!742571))))

(assert (=> b!1160111 (= res!522712 (= (apply!2415 (_1!6845 lt!394276) 0) (h!16774 lt!394089)))))

(declare-fun b!1160112 () Bool)

(assert (=> b!1160112 (= e!742571 (isEmpty!6968 (_2!6845 lt!394276)))))

(declare-fun b!1160113 () Bool)

(assert (=> b!1160113 (= e!742570 (isEmpty!6968 (_2!6845 (lex!691 Lexer!1667 (rules!9465 thiss!10527) (print!628 Lexer!1667 (singletonSeq!646 (h!16774 lt!394089)))))))))

(assert (= (and d!331338 res!522710) b!1160111))

(assert (= (and b!1160111 res!522712) b!1160112))

(assert (= (and d!331338 res!522711) b!1160113))

(assert (=> d!331338 m!1326385))

(declare-fun m!1326755 () Bool)

(assert (=> d!331338 m!1326755))

(declare-fun m!1326757 () Bool)

(assert (=> d!331338 m!1326757))

(assert (=> d!331338 m!1326755))

(declare-fun m!1326759 () Bool)

(assert (=> d!331338 m!1326759))

(assert (=> d!331338 m!1326755))

(declare-fun m!1326761 () Bool)

(assert (=> d!331338 m!1326761))

(assert (=> d!331338 m!1326757))

(declare-fun m!1326763 () Bool)

(assert (=> d!331338 m!1326763))

(declare-fun m!1326765 () Bool)

(assert (=> d!331338 m!1326765))

(declare-fun m!1326767 () Bool)

(assert (=> b!1160111 m!1326767))

(declare-fun m!1326769 () Bool)

(assert (=> b!1160112 m!1326769))

(assert (=> b!1160113 m!1326755))

(assert (=> b!1160113 m!1326755))

(assert (=> b!1160113 m!1326757))

(assert (=> b!1160113 m!1326757))

(assert (=> b!1160113 m!1326763))

(declare-fun m!1326771 () Bool)

(assert (=> b!1160113 m!1326771))

(assert (=> b!1159809 d!331338))

(declare-fun b!1160122 () Bool)

(declare-fun e!742576 () Bool)

(assert (=> b!1160122 (= e!742576 true)))

(declare-fun b!1160124 () Bool)

(declare-fun e!742577 () Bool)

(assert (=> b!1160124 (= e!742577 true)))

(declare-fun b!1160123 () Bool)

(assert (=> b!1160123 (= e!742576 e!742577)))

(assert (=> b!1159819 e!742576))

(assert (= (and b!1159819 (is-Node!3711 (c!194195 (tokens!1573 thiss!10527)))) b!1160122))

(assert (= b!1160123 b!1160124))

(assert (= (and b!1159819 (is-Leaf!5709 (c!194195 (tokens!1573 thiss!10527)))) b!1160123))

(declare-fun b!1160135 () Bool)

(declare-fun b_free!27729 () Bool)

(declare-fun b_next!28433 () Bool)

(assert (=> b!1160135 (= b_free!27729 (not b_next!28433))))

(declare-fun tp!333683 () Bool)

(declare-fun b_and!80605 () Bool)

(assert (=> b!1160135 (= tp!333683 b_and!80605)))

(declare-fun b_free!27731 () Bool)

(declare-fun b_next!28435 () Bool)

(assert (=> b!1160135 (= b_free!27731 (not b_next!28435))))

(declare-fun tp!333684 () Bool)

(declare-fun b_and!80607 () Bool)

(assert (=> b!1160135 (= tp!333684 b_and!80607)))

(declare-fun e!742586 () Bool)

(assert (=> b!1160135 (= e!742586 (and tp!333683 tp!333684))))

(declare-fun b!1160134 () Bool)

(declare-fun e!742588 () Bool)

(declare-fun tp!333682 () Bool)

(declare-fun inv!14945 (String!13790) Bool)

(declare-fun inv!14958 (TokenValueInjection!3780) Bool)

(assert (=> b!1160134 (= e!742588 (and tp!333682 (inv!14945 (tag!2236 (h!16775 (rules!9465 thiss!10527)))) (inv!14958 (transformation!1974 (h!16775 (rules!9465 thiss!10527)))) e!742586))))

(declare-fun b!1160133 () Bool)

(declare-fun e!742587 () Bool)

(declare-fun tp!333681 () Bool)

(assert (=> b!1160133 (= e!742587 (and e!742588 tp!333681))))

(assert (=> b!1159797 (= tp!333666 e!742587)))

(assert (= b!1160134 b!1160135))

(assert (= b!1160133 b!1160134))

(assert (= (and b!1159797 (is-Cons!11374 (rules!9465 thiss!10527))) b!1160133))

(declare-fun m!1326773 () Bool)

(assert (=> b!1160134 m!1326773))

(declare-fun m!1326775 () Bool)

(assert (=> b!1160134 m!1326775))

(declare-fun b!1160138 () Bool)

(declare-fun e!742592 () Bool)

(assert (=> b!1160138 (= e!742592 true)))

(declare-fun b!1160137 () Bool)

(declare-fun e!742591 () Bool)

(assert (=> b!1160137 (= e!742591 e!742592)))

(declare-fun b!1160136 () Bool)

(declare-fun e!742590 () Bool)

(assert (=> b!1160136 (= e!742590 e!742591)))

(assert (=> b!1159818 e!742590))

(assert (= b!1160137 b!1160138))

(assert (= b!1160136 b!1160137))

(assert (= (and b!1159818 (is-Cons!11374 (rules!9465 thiss!10527))) b!1160136))

(assert (=> b!1160138 (< (dynLambda!5011 order!6963 (toValue!3075 (transformation!1974 (h!16775 (rules!9465 thiss!10527))))) (dynLambda!5012 order!6965 lambda!47152))))

(assert (=> b!1160138 (< (dynLambda!5013 order!6967 (toChars!2934 (transformation!1974 (h!16775 (rules!9465 thiss!10527))))) (dynLambda!5012 order!6965 lambda!47152))))

(declare-fun tp!333692 () Bool)

(declare-fun e!742597 () Bool)

(declare-fun tp!333693 () Bool)

(declare-fun b!1160147 () Bool)

(assert (=> b!1160147 (= e!742597 (and (inv!14950 (left!9930 (c!194195 (tokens!1573 thiss!10527)))) tp!333692 (inv!14950 (right!10260 (c!194195 (tokens!1573 thiss!10527)))) tp!333693))))

(declare-fun b!1160149 () Bool)

(declare-fun e!742598 () Bool)

(declare-fun tp!333691 () Bool)

(assert (=> b!1160149 (= e!742598 tp!333691)))

(declare-fun b!1160148 () Bool)

(declare-fun inv!14959 (IArray!7427) Bool)

(assert (=> b!1160148 (= e!742597 (and (inv!14959 (xs!6416 (c!194195 (tokens!1573 thiss!10527)))) e!742598))))

(assert (=> b!1159811 (= tp!333665 (and (inv!14950 (c!194195 (tokens!1573 thiss!10527))) e!742597))))

(assert (= (and b!1159811 (is-Node!3711 (c!194195 (tokens!1573 thiss!10527)))) b!1160147))

(assert (= b!1160148 b!1160149))

(assert (= (and b!1159811 (is-Leaf!5709 (c!194195 (tokens!1573 thiss!10527)))) b!1160148))

(declare-fun m!1326777 () Bool)

(assert (=> b!1160147 m!1326777))

(declare-fun m!1326779 () Bool)

(assert (=> b!1160147 m!1326779))

(declare-fun m!1326781 () Bool)

(assert (=> b!1160148 m!1326781))

(assert (=> b!1159811 m!1326377))

(declare-fun b_lambda!34611 () Bool)

(assert (= b_lambda!34609 (or b!1159799 b_lambda!34611)))

(declare-fun bs!283408 () Bool)

(declare-fun d!331340 () Bool)

(assert (= bs!283408 (and d!331340 b!1159799)))

(assert (=> bs!283408 (= (dynLambda!5014 lambda!47152 (h!16774 lt!394089)) (rulesProduceIndividualToken!706 Lexer!1667 (rules!9465 thiss!10527) (h!16774 lt!394089)))))

(assert (=> bs!283408 m!1326347))

(assert (=> b!1160052 d!331340))

(push 1)

(assert b_and!80605)

(assert (not bs!283408))

(assert (not b!1160043))

(assert (not b!1160149))

(assert (not b!1160136))

(assert (not d!331328))

(assert (not b!1160095))

(assert (not b!1159947))

(assert (not d!331318))

(assert (not d!331266))

(assert (not b!1160133))

(assert (not b!1160111))

(assert (not d!331306))

(assert (not b!1160076))

(assert (not b!1160147))

(assert (not b_next!28435))

(assert (not b!1159948))

(assert (not d!331240))

(assert (not b!1160108))

(assert (not d!331326))

(assert (not b!1159878))

(assert (not b!1160124))

(assert (not d!331314))

(assert (not b!1159942))

(assert (not b!1160042))

(assert (not b!1159969))

(assert (not b!1159944))

(assert (not b!1160134))

(assert (not b!1159965))

(assert (not b!1160148))

(assert (not d!331336))

(assert (not b!1160107))

(assert (not d!331338))

(assert (not d!331334))

(assert (not b!1160112))

(assert (not d!331312))

(assert (not b!1159811))

(assert (not d!331300))

(assert (not b!1160122))

(assert (not b!1160084))

(assert (not b!1160041))

(assert (not b_lambda!34611))

(assert (not b!1159967))

(assert (not b!1159877))

(assert (not b!1159943))

(assert (not d!331236))

(assert (not d!331260))

(assert (not b!1160113))

(assert (not b!1160064))

(assert (not b!1159945))

(assert (not b!1160098))

(assert (not b!1160063))

(assert (not b!1159887))

(assert (not b!1160053))

(assert (not b!1160040))

(assert (not b!1159968))

(assert (not b!1159951))

(assert (not b!1160045))

(assert (not d!331258))

(assert (not d!331304))

(assert (not b_next!28433))

(assert (not d!331242))

(assert (not d!331264))

(assert (not b!1160056))

(assert (not b!1160106))

(assert (not b!1160099))

(assert (not d!331330))

(assert (not b!1160102))

(assert (not b!1159946))

(assert (not b!1160094))

(assert b_and!80607)

(assert (not d!331298))

(assert (not d!331322))

(assert (not b!1160103))

(assert (not b!1160044))

(assert (not b!1159941))

(assert (not b!1160086))

(assert (not b!1160093))

(assert (not d!331310))

(assert (not b!1160077))

(assert (not b!1160065))

(assert (not d!331332))

(assert (not b!1159966))

(check-sat)

(pop 1)

(push 1)

(assert b_and!80605)

(assert b_and!80607)

(assert (not b_next!28433))

(assert (not b_next!28435))

(check-sat)

(pop 1)

